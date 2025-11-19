@interface SidecarTransferGroup
- (BOOL)handleMessage:(id)a3 error:(id *)a4;
- (NSArray)items;
- (SidecarTransferGroup)initWithMessage:(id)a3;
@end

@implementation SidecarTransferGroup

- (BOOL)handleMessage:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v8 = [v6 objectForKey:&unk_2877BFC38];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [v8 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    v21 = a4;
    v11 = self;
    if (v10)
    {
      v12 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v7 addIndex:{objc_msgSend(v14, "integerValue")}];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    self = v11;
    a4 = v21;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __44__SidecarTransferGroup_handleMessage_error___block_invoke;
  v22[3] = &unk_279BC2F58;
  v22[4] = self;
  v15 = v6;
  v23 = v15;
  v24 = &v25;
  [v7 enumerateIndexesUsingBlock:v22];
  v16 = v26;
  if (a4)
  {
    v17 = v26[5];
    if (v17)
    {
      *a4 = v17;
      v16 = v26;
    }
  }

  v18 = v16[5] == 0;

  _Block_object_dispose(&v25, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __44__SidecarTransferGroup_handleMessage_error___block_invoke(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 16) count] <= a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:a2];
  }

  v7 = SidecarMessageGetItemData(*(a1 + 40), a2);
  if (v7 && ([v6 appendData:v7] & 1) != 0)
  {
    *(*(a1 + 32) + 8) += [v6 isComplete];
  }

  else
  {
    *a3 = 1;
    v8 = *(a1 + 40);
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SidecarErrorDomain" code:-1010 userInfo:0];
    if (v9)
    {
      v13 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
      if (v13)
      {
        log = v13;
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
        v13 = log;
        if (v14)
        {
          v15 = [v9 domain];
          v16 = [v9 code];
          v17 = [v9 localizedDescription];
          *buf = 138543875;
          v20 = v15;
          v21 = 2048;
          v22 = v16;
          v23 = 2113;
          v24 = v17;
          _os_log_impl(&dword_26604C000, log, OS_LOG_TYPE_ERROR, "%{public}@ (%ld) %{private}@", buf, 0x20u);

          v13 = log;
        }
      }
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)items
{
  if ([(SidecarTransferGroup *)self isComplete])
  {
    v3 = [(NSArray *)self->_mutableItems copy];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (SidecarTransferGroup)initWithMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SidecarTransferGroup;
  v5 = [(SidecarTransferGroup *)&v24 init];
  if (!v5)
  {
LABEL_21:
    v7 = v5;
    goto LABEL_22;
  }

  Type = SidecarMessageGetType(v4);
  v7 = 0;
  if (Type <= 4 && ((1 << Type) & 0x1A) != 0)
  {
    v5->_type = Type;
    v8 = [v4 objectForKey:&unk_2877BFC80];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      objc_opt_class();
      objc_opt_class();
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = v8;
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        v22 = v8;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v25 + 1) + 8 * v13);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_18;
            }

            v15 = [v14 objectForKey:&unk_2877BFC50];
            v16 = [v14 objectForKey:&unk_2877BFC68];
            if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
            {

LABEL_18:
              v18 = MEMORY[0x277CBEBF8];
              v8 = v22;
              goto LABEL_19;
            }

            v17 = -[SidecarMutableItem initWithType:capacity:]([SidecarMutableItem alloc], "initWithType:capacity:", v16, [v15 unsignedIntegerValue]);
            [v9 addObject:v17];

            ++v13;
          }

          while (v11 != v13);
          v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
          v8 = v22;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v18 = v9;
LABEL_19:
    }

    else
    {
      v18 = MEMORY[0x277CBEBF8];
    }

    mutableItems = v5->_mutableItems;
    v5->_mutableItems = v18;

    goto LABEL_21;
  }

LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

@end