@interface SAOnBehalfOfMultiple
- (SAOnBehalfOfMultiple)init;
- (id)displayStringWithPids:(_DWORD *)pids;
- (void)addProximateName:(uint64_t)name proximatePid:(void *)pid originName:(uint64_t)originName originPid:(int)originPid count:;
@end

@implementation SAOnBehalfOfMultiple

- (SAOnBehalfOfMultiple)init
{
  v6.receiver = self;
  v6.super_class = SAOnBehalfOfMultiple;
  v2 = [(SAOnBehalfOfMultiple *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    proximateProcesses = v2->_proximateProcesses;
    v2->_proximateProcesses = v3;
  }

  return v2;
}

- (id)displayStringWithPids:(_DWORD *)pids
{
  v80 = *MEMORY[0x1E69E9840];
  if (pids[2])
  {
    pidsCopy = pids;
    context = objc_autoreleasePoolPush();
    v5 = [objc_getProperty(pidsCopy v4];
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    v62 = [v6 initWithCapacity:{objc_msgSend(objc_getProperty(pidsCopy, v7, 16, 1), "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v5;
    v65 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (v65)
    {
      v63 = pidsCopy;
      v64 = *v71;
      do
      {
        v9 = 0;
        do
        {
          if (*v71 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [objc_getProperty(pidsCopy v8];
          if (v10)
          {
            v12 = v10;
            v66 = v9;
            [objc_getProperty(v10 v11];
            v13 = self = v12;
            v14 = objc_alloc(MEMORY[0x1E695DF70]);
            v69 = [v14 initWithCapacity:{objc_msgSend(objc_getProperty(self, v15, 32, 1), "count")}];
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v16 = v13;
            v17 = self;
            v68 = v16;
            v18 = [v16 countByEnumeratingWithState:&v74 objects:v79 count:16];
            if (v18)
            {
              v20 = v18;
              v21 = *v75;
              do
              {
                v22 = 0;
                do
                {
                  if (*v75 != v21)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v23 = [objc_getProperty(v17 v19];
                  if (v23)
                  {
                    v25 = v23;
                    if (a2)
                    {
                      [objc_getProperty(v23 v24];
                      v27 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v28 = v25[2];
                      if (v28 == 1)
                      {
                        v29 = "";
                      }

                      else
                      {
                        v29 = "s";
                      }

                      v30 = objc_getProperty(v25, v26, 16, 1);
                      [objc_getProperty(v25 v31];
                      v33 = v32 = a2;
                      v34 = [v27 initWithFormat:@"%u sample%s originated by %@ [%@]", v28, v29, v30, v33];

                      a2 = v32;
                      v17 = self;
                    }

                    else
                    {
                      v36 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v37 = v25[2];
                      if (v37 == 1)
                      {
                        v38 = "";
                      }

                      else
                      {
                        v38 = "s";
                      }

                      v34 = [v36 initWithFormat:@"%u sample%s originated by %@", v37, v38, objc_getProperty(v25, v35, 16, 1)];
                    }

                    if (v34)
                    {
                      [v69 addObject:v34];
                    }
                  }

                  else
                  {
                    v34 = 0;
                  }

                  ++v22;
                }

                while (v20 != v22);
                v39 = [v68 countByEnumeratingWithState:&v74 objects:v79 count:16];
                v20 = v39;
              }

              while (v39);
            }

            if (a2)
            {
              [objc_getProperty(v17 v40];
              v42 = objc_alloc(MEMORY[0x1E696AEC0]);
              v43 = v17[2];
              if (v43 == 1)
              {
                v44 = "";
              }

              else
              {
                v44 = "s";
              }

              v45 = objc_getProperty(v17, v41, 16, 1);
              [objc_getProperty(v17 v46];
              v48 = v47 = v17;
              v49 = v69;
              v50 = [v69 componentsJoinedByString:{@", "}];
              v51 = [v42 initWithFormat:@"%u sample%s %@ [%@] (%@)", v43, v44, v45, v48, v50];
            }

            else
            {
              v53 = objc_alloc(MEMORY[0x1E696AEC0]);
              v54 = v17[2];
              if (v54 == 1)
              {
                v55 = "";
              }

              else
              {
                v55 = "s";
              }

              v50 = objc_getProperty(v17, v52, 16, 1);
              v49 = v69;
              [v69 componentsJoinedByString:{@", "}];
              v48 = v47 = v17;
              v51 = [v53 initWithFormat:@"%u sample%s %@ (%@)", v54, v55, v50, v48];
            }

            pidsCopy = v63;
            if (v51)
            {
              [v62 addObject:v51];
            }

            v9 = v66;
          }

          else
          {
            v51 = 0;
          }

          ++v9;
        }

        while (v9 != v65);
        v56 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
        v65 = v56;
      }

      while (v56);
    }

    v57 = [v62 componentsJoinedByString:{@", "}];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v57 = 0;
  }

  v58 = *MEMORY[0x1E69E9840];

  return v57;
}

uint64_t __46__SAOnBehalfOfMultiple_displayStringWithPids___block_invoke(int a1, _DWORD *self, _DWORD *a3)
{
  if (self)
  {
    v4 = self[2];
    if (a3)
    {
LABEL_3:
      v5 = a3[2];
      goto LABEL_4;
    }
  }

  else
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_4:
  if (v4 < v5)
  {
    return 1;
  }

  if (self)
  {
    v7 = self[2];
    if (a3)
    {
LABEL_8:
      v8 = a3[2];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_9:
  if (v7 > v8)
  {
    return -1;
  }

  if (self)
  {
    Property = objc_getProperty(self, self, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  if (a3)
  {
    v12 = objc_getProperty(a3, v10, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 compare:v12 options:577];

  return v13;
}

- (void)addProximateName:(uint64_t)name proximatePid:(void *)pid originName:(uint64_t)originName originPid:(int)originPid count:
{
  if (self)
  {
    Property = [objc_getProperty(self a2];
    if (Property)
    {
      goto LABEL_8;
    }

    v14 = [SAProximateProcess alloc];
    if (v14 && (v56.receiver = v14, v56.super_class = SAProximateProcess, (v16 = objc_msgSendSuper2(&v56, sel_init)) != 0))
    {
      self = v16;
      v17 = [a2 copy];
      v18 = self[2];
      self[2] = v17;

      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = self[3];
      self[3] = v19;

      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v22 = self[4];
      self[4] = v21;
    }

    else
    {
      self = 0;
    }

    v23 = 1;
    [objc_getProperty(self v15];
    Property = self;
    if (self)
    {
LABEL_8:
      selfa = Property;
      Property = objc_getProperty(Property, v13, 24, 1);
      v23 = 0;
    }

    else
    {
      selfa = 0;
    }

    v24 = MEMORY[0x1E696AD98];
    v25 = Property;
    v26 = [v24 numberWithInt:name];
    v27 = [v25 containsObject:v26];

    if ((v27 & 1) == 0)
    {
      if (v23)
      {
        v29 = 0;
      }

      else
      {
        v29 = objc_getProperty(selfa, v28, 24, 1);
      }

      v30 = MEMORY[0x1E696AD98];
      v31 = v29;
      v32 = [v30 numberWithInt:name];
      [v31 addObject:v32];
    }

    if (v23)
    {
      v33 = 0;
    }

    else
    {
      v33 = objc_getProperty(selfa, v28, 32, 1);
    }

    v35 = [v33 objectForKeyedSubscript:pid];
    if (v35)
    {
      goto LABEL_22;
    }

    v36 = [SAOriginProcess alloc];
    if (v36)
    {
      v56.receiver = v36;
      v56.super_class = SAOriginProcess;
      v35 = objc_msgSendSuper2(&v56, sel_init);
      if (v35)
      {
        v38 = [pid copy];
        v39 = *(v35 + 16);
        *(v35 + 16) = v38;

        v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v41 = *(v35 + 24);
        *(v35 + 24) = v40;
      }
    }

    else
    {
      v35 = 0;
    }

    v42 = (v23 & 1) != 0 ? 0 : objc_getProperty(selfa, v37, 32, 1);
    [v42 setObject:v35 forKeyedSubscript:pid];
    if (v35)
    {
LABEL_22:
      v43 = objc_getProperty(v35, v34, 24, 1);
      v44 = 0;
    }

    else
    {
      v43 = 0;
      v44 = 1;
    }

    v45 = MEMORY[0x1E696AD98];
    v46 = v43;
    v47 = [v45 numberWithInt:originName];
    v48 = [v46 containsObject:v47];

    if ((v48 & 1) == 0)
    {
      if (v44)
      {
        v50 = 0;
      }

      else
      {
        v50 = objc_getProperty(v35, v49, 24, 1);
      }

      v51 = MEMORY[0x1E696AD98];
      v52 = v50;
      v53 = [v51 numberWithInt:originName];
      [v52 addObject:v53];
    }

    self[2] += originPid;
    if ((v23 & 1) == 0)
    {
      selfa[2] += originPid;
    }

    if ((v44 & 1) == 0)
    {
      *(v35 + 8) += originPid;
    }
  }
}

@end