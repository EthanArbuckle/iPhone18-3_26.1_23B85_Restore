@interface MREOutputFormatterInMemory
- (MREOutputFormatterInMemory)init;
- (void)printGlobalAuxData:(id)a3;
- (void)printProcessAuxData:(id)a3 forProcess:(id)a4;
- (void)printProcessCategories:(id)a3 total:(id *)a4 forProcess:(id)a5;
- (void)printProcessHeader:(id)a3;
- (void)printProcessTotal:(id)a3 forProcess:(id)a4;
- (void)printProcessesWithWarnings:(id)a3 processesWithErrors:(id)a4 globalErrors:(id)a5;
- (void)printSharedCategories:(id)a3 sharedWith:(id)a4 forProcess:(id)a5 hasProcessView:(BOOL)a6 total:(id *)a7;
- (void)printSummaryCategories:(id)a3 total:(id *)a4 hadErrors:(BOOL)a5;
@end

@implementation MREOutputFormatterInMemory

- (MREOutputFormatterInMemory)init
{
  v18[10] = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = MREOutputFormatterInMemory;
  v2 = [(MREOutputFormatterInMemory *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    processes = v2->_processes;
    v2->_processes = v3;

    v5 = objc_opt_new();
    addedProcessGroups = v2->_addedProcessGroups;
    v2->_addedProcessGroups = v5;

    v2->_isPageSizeSet = 0;
    v7 = MEMORY[0x29EDB8E00];
    v8 = MEMORY[0x29EDB8EA0];
    v17[0] = @"total footprint";
    v17[1] = @"summary";
    v18[0] = &unk_2A1E95180;
    v18[1] = MEMORY[0x29EDB8EA0];
    v18[2] = v2->_processes;
    v17[2] = @"processes";
    v17[3] = @"shared";
    v9 = [MEMORY[0x29EDB8DE8] array];
    v18[3] = v9;
    v18[4] = v8;
    v17[4] = @"auxiliary";
    v17[5] = @"unit";
    v18[5] = @"byte";
    v18[6] = &unk_2A1E95198;
    v17[6] = @"bytes per unit";
    v17[7] = @"page size";
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:*MEMORY[0x29EDCA6C0]];
    v18[7] = v10;
    v18[8] = MEMORY[0x29EDB8E90];
    v17[8] = @"errors";
    v17[9] = @"warnings";
    v18[9] = MEMORY[0x29EDB8E90];
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:v17 count:10];
    v12 = [v7 dictionaryWithDictionary:v11];
    data = v2->_data;
    v2->_data = v12;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v2;
}

- (void)printProcessHeader:(id)a3
{
  v56[5] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDB8E00];
  v55[0] = @"name";
  v6 = [v4 name];
  v56[0] = v6;
  v55[1] = @"pid";
  v7 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v4, "pid")}];
  v56[1] = v7;
  v56[2] = &unk_2A1E95180;
  v55[2] = @"footprint";
  v55[3] = @"categories";
  v55[4] = @"auxiliary";
  v56[3] = MEMORY[0x29EDB8EA0];
  v56[4] = MEMORY[0x29EDB8EA0];
  v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v56 forKeys:v55 count:5];
  v9 = [v5 dictionaryWithDictionary:v8];

  v10 = v9;
  v11 = [v4 errors];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v4 errors];
    [v10 setObject:v13 forKeyedSubscript:@"errors"];
  }

  v14 = [v4 warnings];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [v4 warnings];
    [v10 setObject:v16 forKeyedSubscript:@"warnings"];
  }

  if (self->_verbose)
  {
    v44 = self;
    v17 = MEMORY[0x29EDB8DE8];
    v18 = [v4 memoryRegions];
    v19 = [v17 arrayWithCapacity:{objc_msgSend(v18, "count")}];

    [v10 setObject:v19 forKeyedSubscript:@"regions"];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v20 = [v4 memoryRegions];
    v47 = [v20 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v47)
    {
      v42 = v10;
      v43 = v4;
      v45 = *v49;
      v46 = v20;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v49 != v45)
          {
            objc_enumerationMutation(v20);
          }

          v22 = *(*(&v48 + 1) + 8 * i);
          v23 = objc_alloc(MEMORY[0x29EDB8E00]);
          v52[0] = @"id";
          v24 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "object_id")}];
          v53[0] = v24;
          v52[1] = @"name";
          v25 = [v22 name];
          v53[1] = v25;
          v52[2] = @"addr";
          v26 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "start")}];
          v53[2] = v26;
          v52[3] = @"vsize";
          v27 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "size")}];
          v53[3] = v27;
          v28 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v53 forKeys:v52 count:4];
          v29 = [v23 initWithDictionary:v28];

          if ([v22 offset])
          {
            v30 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "offset")}];
            [v29 setObject:v30 forKeyedSubscript:@"offset"];
          }

          if ([v22 dirtySize])
          {
            v31 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "dirtySize")}];
            [v29 setObject:v31 forKeyedSubscript:@"dirty"];
          }

          if ([v22 swappedSize])
          {
            v32 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "swappedSize")}];
            [v29 setObject:v32 forKeyedSubscript:@"swapped"];
          }

          if ([v22 cleanSize])
          {
            v33 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "cleanSize")}];
            [v29 setObject:v33 forKeyedSubscript:@"clean"];
          }

          if ([v22 reclaimableSize])
          {
            v34 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "reclaimableSize")}];
            [v29 setObject:v34 forKeyedSubscript:@"reclaimable"];
          }

          if ([v22 wiredSize])
          {
            v35 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v22, "wiredSize")}];
            [v29 setObject:v35 forKeyedSubscript:@"wired"];
          }

          v36 = [v29 copy];
          [v19 addObject:v36];

          v20 = v46;
        }

        v47 = [v46 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v47);

      v4 = v43;
      self = v44;
      v10 = v42;
      if (!v44)
      {
        processes = 0;
        v38 = 1;
        goto LABEL_29;
      }
    }

    else
    {

      self = v44;
    }
  }

  v38 = 0;
  processes = self->_processes;
LABEL_29:
  [(NSMutableArray *)processes addObject:v10];
  if (!self->_isPageSizeSet)
  {
    v39 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:{objc_msgSend(v4, "pageSize")}];
    if (v38)
    {
      data = 0;
    }

    else
    {
      data = self->_data;
    }

    [(NSMutableDictionary *)data setObject:v39 forKeyedSubscript:@"page size"];

    self->_isPageSizeSet = 1;
  }

  v41 = *MEMORY[0x29EDCA608];
}

- (void)printProcessTotal:(id)a3 forProcess:(id)a4
{
  if (self)
  {
    processes = self->_processes;
  }

  else
  {
    processes = 0;
  }

  v5 = a3;
  v6 = [(NSMutableArray *)processes lastObject];
  [v6 setObject:v5 forKeyedSubscript:@"footprint"];
}

- (void)printProcessCategories:(id)a3 total:(id *)a4 forProcess:(id)a5
{
  v8 = sub_297E35F18(self, a3);
  if (self)
  {
    processes = self->_processes;
  }

  else
  {
    processes = 0;
  }

  v7 = [(NSMutableArray *)processes lastObject];
  [v7 setObject:v8 forKeyedSubscript:@"categories"];
}

- (void)printSharedCategories:(id)a3 sharedWith:(id)a4 forProcess:(id)a5 hasProcessView:(BOOL)a6 total:(id *)a7
{
  v7 = a6;
  v38 = *MEMORY[0x29EDCA608];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v7)
  {
    if (([(NSMutableSet *)self->_addedProcessGroups containsObject:v12]& 1) != 0)
    {
      goto LABEL_14;
    }

    [(NSMutableSet *)self->_addedProcessGroups addObject:v12];
  }

  v30 = v13;
  v14 = MEMORY[0x29EDB8DE8];
  v15 = [v12 processes];
  v16 = [v14 arrayWithCapacity:{objc_msgSend(v15, "count")}];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = [v12 processes];
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      v21 = 0;
      do
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v31 + 1) + 8 * v21) asNumber];
        [v16 addObject:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v19);
  }

  v23 = objc_alloc(MEMORY[0x29EDB8E00]);
  v35[0] = @"pids";
  v35[1] = @"categories";
  v36[0] = v16;
  v24 = sub_297E35F18(self, v11);
  v36[1] = v24;
  v25 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v26 = [v23 initWithDictionary:v25];

  v13 = v30;
  if (v7)
  {
    v27 = [v30 asNumber];
    [v26 setObject:v27 forKeyedSubscript:@"specific_to_pid"];
  }

  v28 = [(NSMutableDictionary *)self->_data objectForKeyedSubscript:@"shared"];
  [v28 addObject:v26];

LABEL_14:
  v29 = *MEMORY[0x29EDCA608];
}

- (void)printProcessAuxData:(id)a3 forProcess:(id)a4
{
  v7 = [a3 fp_jsonRepresentation];
  if (self)
  {
    processes = self->_processes;
  }

  else
  {
    processes = 0;
  }

  v6 = [(NSMutableArray *)processes lastObject];
  [v6 setObject:v7 forKeyedSubscript:@"auxiliary"];
}

- (void)printProcessesWithWarnings:(id)a3 processesWithErrors:(id)a4 globalErrors:(id)a5
{
  v36 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x29EDB8DE8] arrayWithArray:a5];
  v11 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v30 + 1) + 8 * v16) warnings];
        [v11 addObjectsFromArray:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * v22) errors];
        [v10 addObjectsFromArray:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  if (self)
  {
    [(NSMutableDictionary *)self->_data setObject:v10 forKeyedSubscript:@"errors"];
    data = self->_data;
  }

  else
  {
    [0 setObject:v10 forKeyedSubscript:@"errors"];
    data = 0;
  }

  [(NSMutableDictionary *)data setObject:v11 forKeyedSubscript:@"warnings", v26];

  v25 = *MEMORY[0x29EDCA608];
}

- (void)printSummaryCategories:(id)a3 total:(id *)a4 hadErrors:(BOOL)a5
{
  v24[6] = *MEMORY[0x29EDCA608];
  v7 = a3;
  if (v7)
  {
    v8 = sub_297E35F18(self, v7);
    if (self)
    {
      data = self->_data;
    }

    else
    {
      data = 0;
    }

    [(NSMutableDictionary *)data setObject:v8 forKeyedSubscript:@"summary"];
  }

  v23[0] = @"dirty";
  v21 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a4->var1 + a4->var0];
  v24[0] = v21;
  v23[1] = @"swapped";
  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a4->var1];
  v24[1] = v10;
  v23[2] = @"clean";
  v11 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a4->var2];
  v24[2] = v11;
  v23[3] = @"reclaimable";
  v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a4->var3];
  v24[3] = v12;
  v23[4] = @"wired";
  v13 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a4->var4];
  v24[4] = v13;
  v23[5] = @"regions";
  v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a4->var5];
  v24[5] = v14;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  v22 = v7;
  if (self)
  {
    v16 = self->_data;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:@"summary"];
  [v17 setObject:v15 forKeyedSubscript:@"total"];

  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a4->var1 + a4->var0];
  if (self)
  {
    v19 = self->_data;
  }

  else
  {
    v19 = 0;
  }

  [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:@"total footprint"];

  v20 = *MEMORY[0x29EDCA608];
}

- (void)printGlobalAuxData:(id)a3
{
  v4 = [a3 fp_jsonRepresentation];
  if (self)
  {
    data = self->_data;
  }

  else
  {
    data = 0;
  }

  v6 = v4;
  [(NSMutableDictionary *)data setObject:v4 forKeyedSubscript:@"auxiliary"];
}

@end