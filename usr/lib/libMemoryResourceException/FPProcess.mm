@interface FPProcess
+ (id)_nameForBsdInfo:(proc_bsdinfo *)a3;
+ (id)allProcessesExcludingPids:(id)a3;
+ (id)childPidsForPids:(id)a3;
+ (id)pidsForStringDescriptions:(id)a3 errors:(id *)a4;
+ (id)processWithBsdInfo:(proc_bsdinfo *)a3;
+ (id)processWithPid:(int)a3;
+ (id)removeIdleExitCleanProcessesFrom:(id)a3;
- (FPProcess)init;
- (FPProcess)initWithBsdInfo:(proc_bsdinfo *)a3;
- (id)description;
@end

@implementation FPProcess

- (FPProcess)init
{
  v12.receiver = self;
  v12.super_class = FPProcess;
  v2 = [(FPProcess *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(FPProcess *)v2 setMemoryRegions:0];
    v4 = objc_opt_new();
    errors = v3->_errors;
    v3->_errors = v4;

    v6 = objc_opt_new();
    warnings = v3->_warnings;
    v3->_warnings = v6;

    v8 = objc_opt_new();
    globalErrors = v3->_globalErrors;
    v3->_globalErrors = v8;

    *&v3->_idleExitStatus = 0xFFFFFFFF00000000;
    v10 = v3;
  }

  return v3;
}

- (FPProcess)initWithBsdInfo:(proc_bsdinfo *)a3
{
  v4 = [(FPProcess *)self init];
  v5 = v4;
  if (v4)
  {
    [(FPProcess *)v4 setPid:a3->pbi_pid];
    v5->_is64bit = (a3->pbi_flags & 0x10) != 0;
    if (![(FPProcess *)v5 _populateTask])
    {
      v11 = 0;
      goto LABEL_6;
    }

    v6 = [FPProcess _nameForBsdInfo:a3];
    [(FPProcess *)v5 setName:v6];

    v7 = MEMORY[0x29EDBA0F8];
    v8 = [(FPProcess *)v5 name];
    v9 = [v7 stringWithFormat:@"%@ [%d]", v8, -[FPProcess pid](v5, "pid")];
    displayString = v5->_displayString;
    v5->_displayString = v9;

    v5->_pageSize = [(FPProcess *)v5 _gatherPageSize];
  }

  v11 = v5;
LABEL_6:

  return v11;
}

+ (id)processWithBsdInfo:(proc_bsdinfo *)a3
{
  v3 = [[FPUserProcess alloc] initWithBsdInfo:a3];

  return v3;
}

+ (id)processWithPid:(int)a3
{
  v17 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  if (proc_pidinfo(a3, 3, 0, &v8, 136) != 136)
  {
    if (a3)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v16 = 0;
    v12 = xmmword_297E40790;
    v13 = unk_297E407A0;
    v14 = xmmword_297E407B0;
    v15 = unk_297E407C0;
    v8 = xmmword_297E40750;
    v9 = unk_297E40760;
    v10 = xmmword_297E40770;
    v11 = unk_297E40780;
  }

  v5 = [a1 processWithBsdInfo:&v8];
LABEL_6:
  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

+ (id)_nameForBsdInfo:(proc_bsdinfo *)a3
{
  v21 = *MEMORY[0x29EDCA608];
  *v19 = 0x800000001;
  size = 0;
  v18 = 8;
  if (!sysctl(v19, 2u, &size, &v18, 0, 0))
  {
    *v19 = 0x3100000001;
    pbi_pid = a3->pbi_pid;
    v4 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      if (!sysctl(v19, 3u, v4, &size, 0, 0))
      {
        v6 = 0;
        v5[size - 1] = 0;
        do
        {
          v7 = v6;
          if (v5[v6++])
          {
            v9 = size > v7;
          }

          else
          {
            v9 = 0;
          }
        }

        while (v9);
        if (size > v7)
        {
          do
          {
            v10 = v6 - 1;
            if (v5[v6++ - 1])
            {
              v12 = 0;
            }

            else
            {
              v12 = size > v10;
            }
          }

          while (v12);
          if (size > v10)
          {
            v13 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:&v5[v6 - 2]];
            v14 = [v13 lastPathComponent];

            free(v5);
            goto LABEL_18;
          }
        }
      }

      free(v5);
    }
  }

  v14 = sub_297E2E5B4(FPProcess, a3);
LABEL_18:
  v15 = *MEMORY[0x29EDCA608];

  return v14;
}

+ (id)allProcessesExcludingPids:(id)a3
{
  v3 = a3;
  v19 = 0;
  v4 = sub_297E2E948(&v19);
  if (v4)
  {
    v5 = v4;
    v18 = [MEMORY[0x29EDBA028] strongToStrongObjectsMapTable];
    v6 = v19;
    if (v19)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = &v5[136 * v7];
        v10 = *(v9 + 3);
        v11 = [MEMORY[0x29EDBA070] numberWithInt:{v10, v18}];
        v12 = [v3 containsObject:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [FPProcess processWithBsdInfo:v9];
          if (v13)
          {
            v14 = [MEMORY[0x29EDBA070] numberWithInt:v10];
            [v18 setObject:v13 forKey:v14];
          }
        }

        v7 = v8;
      }

      while (v6 > v8++);
    }

    free(v5);
    v16 = v18;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)pidsForStringDescriptions:(id)a3 errors:(id *)a4
{
  v59 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v56 = 0;
  v39 = sub_297E2E948(&v56);
  if (v39)
  {
    v7 = [MEMORY[0x29EDB8E00] dictionary];
    if (a4)
    {
      v36 = objc_opt_new();
    }

    else
    {
      v36 = 0;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v35 = v6;
    obj = v6;
    v42 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v42)
    {
      v8 = v56;
      v40 = v56;
      v41 = *v53;
      v38 = a4;
      do
      {
        v9 = 0;
        do
        {
          if (*v53 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v45 = v9;
          v10 = *(*(&v52 + 1) + 8 * v9);
          v11 = [objc_alloc(MEMORY[0x29EDBA0E0]) initWithString:v10];
          v51 = -1;
          v44 = v11;
          v12 = [v11 scanInt:&v51];
          v46 = [MEMORY[0x29EDB8E00] dictionary];
          context = objc_autoreleasePoolPush();
          if (v8)
          {
            v13 = 0;
            v14 = 0;
            v15 = v39;
            v16 = v8;
            while (1)
            {
              v17 = v15[3];
              v18 = [a1 _nameForBsdInfo:v15];
              if ([v10 isEqualToString:v18])
              {
                v13 = 1;
                v19 = v7;
              }

              else
              {
                if (([v18 containsString:v10] & 1) == 0)
                {
                  if (v17 == v51)
                  {
                    v21 = v12;
                  }

                  else
                  {
                    v21 = 0;
                  }

                  if (v21 == 1)
                  {
                    v31 = [MEMORY[0x29EDB8E28] null];
                    v32 = [MEMORY[0x29EDBA070] numberWithInt:v17];
                    [v7 setObject:v31 forKeyedSubscript:v32];

                    a4 = v38;
                    goto LABEL_41;
                  }

                  goto LABEL_23;
                }

                v19 = v46;
              }

              v20 = [MEMORY[0x29EDBA070] numberWithInt:v17];
              [v19 setObject:v10 forKeyedSubscript:v20];

              v14 = 1;
LABEL_23:

              v15 += 34;
              if (!--v16)
              {
                a4 = v38;
                if (!((v38 == 0) | v14 & 1))
                {
                  v22 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Unable to find pid for process matching '%@'", v10];
                  [v36 addObject:v22];
                }

                if (v13)
                {
                  goto LABEL_42;
                }

                goto LABEL_30;
              }
            }
          }

          if (a4)
          {
            v23 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"Unable to find pid for process matching '%@'", v10];
            [v36 addObject:v23];
          }

LABEL_30:
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v18 = v46;
          v24 = [v18 countByEnumeratingWithState:&v47 objects:v57 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v48;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v48 != v26)
                {
                  objc_enumerationMutation(v18);
                }

                v28 = *(*(&v47 + 1) + 8 * i);
                v29 = [v7 objectForKeyedSubscript:v28];

                if (!v29)
                {
                  v30 = [v18 objectForKeyedSubscript:v28];
                  [v7 setObject:v30 forKeyedSubscript:v28];
                }
              }

              v25 = [v18 countByEnumeratingWithState:&v47 objects:v57 count:16];
            }

            while (v25);
          }

LABEL_41:

LABEL_42:
          objc_autoreleasePoolPop(context);

          v9 = v45 + 1;
          v8 = v40;
        }

        while (v45 + 1 != v42);
        v42 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v42);
    }

    if (a4 && [v36 count])
    {
      *a4 = [v36 copy];
    }

    free(v39);

    v6 = v35;
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      *a4 = &unk_2A1E95150;
    }
  }

  v33 = *MEMORY[0x29EDCA608];

  return v7;
}

+ (id)childPidsForPids:(id)a3
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v25 = 0;
  v4 = sub_297E2E948(&v25);
  if (v4)
  {
    v20 = [MEMORY[0x29EDB8DE8] array];
    v5 = [v3 mutableCopy];
    v19 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    if (v5)
    {
      while (1)
      {
        v6 = v5;
        if (![v5 count])
        {
          break;
        }

        if (v25)
        {
          for (i = 0; i < v25; ++i)
          {
            v8 = &v4[136 * i];
            v9 = *(v8 + 4);
            v10 = *(v8 + 3);
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v11 = v6;
            v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v22;
              while (2)
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v22 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  if (v9 == [*(*(&v21 + 1) + 8 * j) longValue])
                  {
                    v16 = [MEMORY[0x29EDBA070] numberWithLong:v10];
                    if (([v3 containsObject:v16] & 1) == 0 && (objc_msgSend(v20, "containsObject:", v16) & 1) == 0)
                    {
                      [v19 addObject:v16];
                    }

                    goto LABEL_19;
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }
        }

        [v20 addObjectsFromArray:v19];
        [v6 removeAllObjects];
        v5 = v19;

        v19 = v6;
        if (!v5)
        {
          v19 = v6;
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v6 = 0;
    }

    free(v4);
    v4 = v20;
  }

  v17 = *MEMORY[0x29EDCA608];

  return v4;
}

+ (id)removeIdleExitCleanProcessesFrom:(id)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = [v3 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 idleExitStatus] == 2)
        {
          v11 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v10, "pid")}];
          [v4 removeObjectForKey:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = [(FPProcess *)self pid];
  v5 = [(FPProcess *)self name];
  v6 = [v3 stringWithFormat:@"FPProcess[%d] %@", v4, v5];

  return v6;
}

@end