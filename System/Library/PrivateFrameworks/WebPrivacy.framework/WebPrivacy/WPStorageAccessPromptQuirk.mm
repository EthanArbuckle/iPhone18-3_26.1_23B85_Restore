@interface WPStorageAccessPromptQuirk
- (WPStorageAccessPromptQuirk)initWithName:(id)name withDomainData:(id)data;
- (id)describeQuirkDomains;
- (id)description;
@end

@implementation WPStorageAccessPromptQuirk

- (WPStorageAccessPromptQuirk)initWithName:(id)name withDomainData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v39.receiver = self;
  v39.super_class = WPStorageAccessPromptQuirk;
  v9 = [(WPStorageAccessPromptQuirk *)&v39 init];
  if (v9)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__0;
    v25 = __Block_byref_object_dispose__0;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__WPStorageAccessPromptQuirk_initWithName_withDomainData___block_invoke;
    v14[3] = &unk_279EAF4F8;
    v14[4] = &v35;
    v14[5] = &v31;
    v14[6] = &v21;
    v14[7] = &v27;
    v14[8] = &v15;
    [dataCopy enumerateKeysAndObjectsUsingBlock:v14];
    if ((v28[3] & 1) == 0)
    {
      v10 = v16[5];
      v16[5] = &unk_2882BF580;
    }

    if (v36[3])
    {
      v9->_isValid = 0;
    }

    else
    {
      v11 = *(v32 + 24);
      v9->_isValid = v11;
      if (v11 == 1)
      {
        objc_storeStrong(&v9->_name, name);
        objc_storeStrong(&v9->_quirkDomains, v22[5]);
        objc_storeStrong(&v9->_triggerPages, v16[5]);
      }
    }

    v12 = v9;
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
  }

  return v9;
}

void __58__WPStorageAccessPromptQuirk_initWithName_withDomainData___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  if ([v7 isEqualToString:@"quirkDomains"])
  {
    *(*(a1[5] + 8) + 24) = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a3);
      v9 = *(*(a1[6] + 8) + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __58__WPStorageAccessPromptQuirk_initWithName_withDomainData___block_invoke_2;
      v12[3] = &unk_279EAF4D0;
      v12[4] = a1[4];
      [v9 enumerateKeysAndObjectsUsingBlock:v12];
      goto LABEL_8;
    }

LABEL_10:
    *a4 = 1;
    *(*(a1[4] + 8) + 24) = 1;
    goto LABEL_11;
  }

  if (![v7 isEqualToString:@"triggerPages"])
  {
    goto LABEL_11;
  }

  *(*(a1[7] + 8) + 24) = 1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  objc_storeStrong((*(a1[8] + 8) + 40), a3);
  v10 = *(*(a1[8] + 8) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__WPStorageAccessPromptQuirk_initWithName_withDomainData___block_invoke_4;
  v11[3] = &unk_279EAF4A8;
  v11[4] = a1[4];
  [v10 enumerateObjectsUsingBlock:v11];
LABEL_8:
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    *a4 = 1;
  }

LABEL_11:
}

void __58__WPStorageAccessPromptQuirk_initWithName_withDomainData___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__WPStorageAccessPromptQuirk_initWithName_withDomainData___block_invoke_3;
  v9[3] = &unk_279EAF4A8;
  v9[4] = *(a1 + 32);
  [v8 enumerateObjectsUsingBlock:v9];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

uint64_t __58__WPStorageAccessPromptQuirk_initWithName_withDomainData___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __58__WPStorageAccessPromptQuirk_initWithName_withDomainData___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return MEMORY[0x2821F96F8]();
}

- (id)describeQuirkDomains
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  quirkDomains = self->_quirkDomains;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__WPStorageAccessPromptQuirk_describeQuirkDomains__block_invoke;
  v6[3] = &unk_279EAF4D0;
  v6[4] = &v7;
  [(NSDictionary *)quirkDomains enumerateKeysAndObjectsUsingBlock:v6];
  v4 = [v8[5] componentsJoinedByString:@" "];;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__WPStorageAccessPromptQuirk_describeQuirkDomains__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = MEMORY[0x277CCACA8];
  v7 = [a3 componentsJoinedByString:{@", "}];
  v8 = [v6 stringWithFormat:@"%@: [%@]", v9, v7];
  [v5 addObject:v8];
}

- (id)description
{
  if ([(NSString *)self->_name length])
  {
    v3 = MEMORY[0x277CCACA8];
    name = self->_name;
    describeQuirkDomains = [(WPStorageAccessPromptQuirk *)self describeQuirkDomains];
    v6 = [(NSArray *)self->_triggerPages componentsJoinedByString:@", "];
    describeQuirkDomains2 = [v3 stringWithFormat:@"%@ - %@ - [%@]", name, describeQuirkDomains, v6];
  }

  else
  {
    describeQuirkDomains2 = [(WPStorageAccessPromptQuirk *)self describeQuirkDomains];
  }

  return describeQuirkDomains2;
}

@end