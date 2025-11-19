@interface TPPolicyDocument
+ (BOOL)isEqualKeyViewMapping:(id)a3 other:(id)a4;
+ (id)categoriesByViewFromPb:(id)a3;
+ (id)introducersByCategoryFromPb:(id)a3;
+ (id)modelToCategoryFromPb:(id)a3;
+ (id)policyDocWithHash:(id)a3 data:(id)a4;
+ (id)redactionWithEncrypter:(id)a3 redactionName:(id)a4 encryptionKey:(id)a5 modelToCategory:(id)a6 categoriesByView:(id)a7 introducersByCategory:(id)a8 keyViewMapping:(id)a9 error:(id *)a10;
+ (id)redactionsFromPb:(id)a3;
+ (void)addCategoriesByView:(id)a3 toPB:(id)a4;
+ (void)addIntroducersByCategory:(id)a3 toPB:(id)a4;
+ (void)addKeyViewMapping:(id)a3 toPB:(id)a4;
+ (void)addModelToCategory:(id)a3 toPB:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPolicyDocument:(id)a3;
- (NSArray)keyViewMapping;
- (TPPolicyDocument)initWithHash:(id)a3 data:(id)a4;
- (TPPolicyDocument)initWithVersion:(unint64_t)a3 modelToCategory:(id)a4 categoriesByView:(id)a5 introducersByCategory:(id)a6 redactions:(id)a7 keyViewMapping:(id)a8 userControllableViewList:(id)a9 piggybackViews:(id)a10 priorityViews:(id)a11 inheritedExcludedViews:(id)a12 hashAlgo:(int64_t)a13;
- (id)cloneWithVersionNumber:(unint64_t)a3 prependingCategoriesByView:(id)a4 prependingKeyViewMapping:(id)a5 prependingRedactions:(id)a6;
- (id)description;
- (id)encodeProtobuf;
- (id)policyWithSecrets:(id)a3 decrypter:(id)a4 error:(id *)a5;
- (unint64_t)hash;
@end

@implementation TPPolicyDocument

- (unint64_t)hash
{
  v2 = [(TPPolicyDocument *)self version];
  v3 = [v2 policyHash];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPPolicyDocument *)self isEqualToPolicyDocument:v4];
  }

  return v5;
}

- (id)cloneWithVersionNumber:(unint64_t)a3 prependingCategoriesByView:(id)a4 prependingKeyViewMapping:(id)a5 prependingRedactions:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [TPPBPolicyDocument alloc];
  v14 = [(TPPolicyDocument *)self protobuf];
  v15 = [(TPPBPolicyDocument *)v13 initWithData:v14];

  [(TPPBPolicyDocument *)v15 setPolicyVersion:a3];
  v49 = v10;
  if (v10)
  {
    v46 = self;
    v47 = v12;
    v48 = v11;
    v16 = [MEMORY[0x277CBEB18] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v17 = [v10 allKeys];
    v18 = [v17 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v51;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v50 + 1) + 8 * i);
          v23 = objc_alloc_init(TPPBPolicyCategoriesByView);
          [(TPPBPolicyCategoriesByView *)v23 setView:v22];
          v24 = [v49 objectForKeyedSubscript:v22];
          v25 = [v24 allObjects];
          v26 = [v25 mutableCopy];
          [(TPPBPolicyCategoriesByView *)v23 setCategories:v26];

          [v16 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v19);
    }

    v27 = [(TPPBPolicyDocument *)v15 categoriesByViews];
    v28 = [v16 arrayByAddingObjectsFromArray:v27];
    v29 = [v28 mutableCopy];
    [(TPPBPolicyDocument *)v15 setCategoriesByViews:v29];

    v12 = v47;
    v11 = v48;
    self = v46;
  }

  if (v11)
  {
    v30 = [(TPPBPolicyDocument *)v15 keyViewMappings];
    v31 = [v11 arrayByAddingObjectsFromArray:v30];
    v32 = [v31 mutableCopy];
    [(TPPBPolicyDocument *)v15 setKeyViewMappings:v32];
  }

  if (v12)
  {
    v33 = [(TPPBPolicyDocument *)v15 redactions];
    v34 = [v12 arrayByAddingObjectsFromArray:v33];
    v35 = [v34 mutableCopy];
    [(TPPBPolicyDocument *)v15 setRedactions:v35];
  }

  v36 = [(TPPolicyDocument *)self version];
  v37 = [v36 policyHash];
  v38 = [TPHashBuilder algoOfHash:v37];
  v39 = [(TPPBPolicyDocument *)v15 data];
  v40 = [TPHashBuilder hashWithAlgo:v38 ofData:v39];

  v41 = [TPPolicyDocument alloc];
  v42 = [(TPPBPolicyDocument *)v15 data];
  v43 = [(TPPolicyDocument *)v41 initWithHash:v40 data:v42];

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (BOOL)isEqualToPolicyDocument:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(TPPolicyDocument *)self encodeProtobuf];
  v6 = [v4 encodeProtobuf];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TPPolicyDocument *)self version];
  v4 = [v2 stringWithFormat:@"<TPPolicyDocument: %@>", v3];

  return v4;
}

- (NSArray)keyViewMapping
{
  v3 = objc_autoreleasePoolPush();
  v4 = [TPPBPolicyDocument alloc];
  v5 = [(TPPolicyDocument *)self protobuf];
  v6 = [(TPPBPolicyDocument *)v4 initWithData:v5];

  v7 = [(TPPBPolicyDocument *)v6 keyViewMappings];

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (id)policyWithSecrets:(id)a3 decrypter:(id)a4 error:(id *)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v56 = a4;
  v9 = [TPPBPolicyDocument alloc];
  v50 = self;
  v10 = [(TPPolicyDocument *)self protobuf];
  v11 = [(TPPBPolicyDocument *)v9 initWithData:v10];

  v52 = v11;
  v12 = [(TPPBPolicyDocument *)v11 redactions];
  v13 = [TPPolicyDocument redactionsFromPb:v12];

  v55 = objc_opt_new();
  v14 = MEMORY[0x277CBEB58];
  v15 = [v13 allKeys];
  v54 = [v14 setWithArray:v15];

  v57 = v8;
  v16 = [v8 allKeys];
  v17 = [v16 sortedArrayUsingSelector:sel_compare_];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v59;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v58 + 1) + 8 * i);
        v23 = [v57 objectForKeyedSubscript:v22];
        v24 = [v13 objectForKeyedSubscript:v22];
        if (v24)
        {
          v25 = v24;
          v26 = [v56 decryptData:v24 withKey:v23 error:a5];
          if (!v26)
          {
            v37 = 0;
            v51 = obj;
            goto LABEL_16;
          }

          v27 = v26;
          v28 = [[TPPBPolicyDocument alloc] initWithData:v26];
          if (!v28)
          {
            v37 = 0;
            v51 = obj;
            goto LABEL_15;
          }

          v29 = v28;
          [v54 removeObject:v22];
          [v55 mergeFrom:v29];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  [v55 mergeFrom:v52];
  v51 = [v55 modelToCategorys];
  v23 = [TPPolicyDocument modelToCategoryFromPb:v51];
  v25 = [v55 categoriesByViews];
  v27 = [TPPolicyDocument categoriesByViewFromPb:v25];
  v48 = [v55 introducersByCategorys];
  v49 = [TPPolicyDocument introducersByCategoryFromPb:v48];
  v45 = [v55 keyViewMappings];
  v44 = [v54 count] != 0;
  v30 = MEMORY[0x277CBEB98];
  v47 = [v55 userControllableViews];
  v42 = [v30 setWithArray:v47];
  v31 = MEMORY[0x277CBEB98];
  v46 = [v55 piggybackViews];
  v41 = [v31 setWithArray:v46];
  v32 = MEMORY[0x277CBEB98];
  v43 = [v55 priorityViews];
  v40 = [v32 setWithArray:v43];
  v33 = MEMORY[0x277CBEB98];
  v34 = [v55 inheritedExcludedViews];
  v35 = [v33 setWithArray:v34];
  v36 = [(TPPolicyDocument *)v50 version];
  v37 = [TPPolicy policyWithModelToCategory:v23 categoriesByView:v27 introducersByCategory:v49 keyViewMapping:v45 unknownRedactions:v44 userControllableViewList:v42 piggybackViews:v41 priorityViews:v40 inheritedExcludedViews:v35 version:v36];

LABEL_15:
LABEL_16:

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)encodeProtobuf
{
  v3 = [TPPBPolicyDocument alloc];
  v4 = [(TPPolicyDocument *)self protobuf];
  v5 = [(TPPBPolicyDocument *)v3 initWithData:v4];

  return v5;
}

- (TPPolicyDocument)initWithVersion:(unint64_t)a3 modelToCategory:(id)a4 categoriesByView:(id)a5 introducersByCategory:(id)a6 redactions:(id)a7 keyViewMapping:(id)a8 userControllableViewList:(id)a9 piggybackViews:(id)a10 priorityViews:(id)a11 inheritedExcludedViews:(id)a12 hashAlgo:(int64_t)a13
{
  v52 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v51 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v53.receiver = self;
  v53.super_class = TPPolicyDocument;
  v26 = [(TPPolicyDocument *)&v53 init];
  if (v26)
  {
    v27 = objc_alloc_init(TPPBPolicyDocument);
    v49 = a3;
    [(TPPBPolicyDocument *)v27 setPolicyVersion:a3];
    v50 = v21;
    v28 = v19;
    v29 = [v52 mutableCopy];
    [(TPPBPolicyDocument *)v27 setModelToCategorys:v29];

    v30 = [v28 mutableCopy];
    [(TPPBPolicyDocument *)v27 setCategoriesByViews:v30];

    v31 = [v20 mutableCopy];
    [(TPPBPolicyDocument *)v27 setIntroducersByCategorys:v31];

    v32 = [v50 mutableCopy];
    [(TPPBPolicyDocument *)v27 setRedactions:v32];

    v33 = [v22 mutableCopy];
    [(TPPBPolicyDocument *)v27 setKeyViewMappings:v33];

    v34 = [v51 mutableCopy];
    [(TPPBPolicyDocument *)v27 setUserControllableViews:v34];

    v35 = [v23 mutableCopy];
    [(TPPBPolicyDocument *)v27 setPiggybackViews:v35];

    v36 = [v24 mutableCopy];
    [(TPPBPolicyDocument *)v27 setPriorityViews:v36];

    v37 = [v25 mutableCopy];
    [(TPPBPolicyDocument *)v27 setInheritedExcludedViews:v37];

    v38 = [(TPPBPolicyDocument *)v27 data];
    protobuf = v26->_protobuf;
    v26->_protobuf = v38;

    v40 = [TPPolicyVersion alloc];
    [TPHashBuilder hashWithAlgo:a13 ofData:v26->_protobuf];
    v41 = v23;
    v42 = v22;
    v44 = v43 = v20;
    v45 = v40;
    v19 = v28;
    v21 = v50;
    v46 = [(TPPolicyVersion *)v45 initWithVersion:v49 hash:v44];
    version = v26->_version;
    v26->_version = v46;

    v20 = v43;
    v22 = v42;
    v23 = v41;
  }

  return v26;
}

- (TPPolicyDocument)initWithHash:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [TPHashBuilder hashWithAlgo:[TPHashBuilder algoOfHash:v6] ofData:v7];
    if ([v6 isEqualToString:v10])
    {
      v18.receiver = self;
      v18.super_class = TPPolicyDocument;
      v11 = [(TPPolicyDocument *)&v18 init];
      v12 = v11;
      if (v11)
      {
        objc_storeStrong(&v11->_protobuf, a4);
        v13 = objc_autoreleasePoolPush();
        v14 = [[TPPBPolicyDocument alloc] initWithData:v8];
        v15 = [[TPPolicyVersion alloc] initWithVersion:[(TPPBPolicyDocument *)v14 policyVersion] hash:v10];
        version = v12->_version;
        v12->_version = v15;

        objc_autoreleasePoolPop(v13);
      }

      self = v12;
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)isEqualKeyViewMapping:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)redactionWithEncrypter:(id)a3 redactionName:(id)a4 encryptionKey:(id)a5 modelToCategory:(id)a6 categoriesByView:(id)a7 introducersByCategory:(id)a8 keyViewMapping:(id)a9 error:(id *)a10
{
  v27 = a4;
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = objc_opt_new();
  [TPPolicyDocument addModelToCategory:v18 toPB:v21];

  [TPPolicyDocument addCategoriesByView:v17 toPB:v21];
  [TPPolicyDocument addIntroducersByCategory:v16 toPB:v21];

  [TPPolicyDocument addKeyViewMapping:v15 toPB:v21];
  v22 = [v21 data];
  v23 = [v20 encryptData:v22 withKey:v19 error:a10];

  if (v23)
  {
    v24 = objc_alloc_init(TPPBPolicyRedaction);
    v25 = v27;
    [(TPPBPolicyRedaction *)v24 setName:v27];
    [(TPPBPolicyRedaction *)v24 setCiphertext:v23];
  }

  else
  {
    v24 = 0;
    v25 = v27;
  }

  return v24;
}

+ (id)policyDocWithHash:(id)a3 data:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TPPolicyDocument alloc] initWithHash:v6 data:v5];

  return v7;
}

+ (void)addKeyViewMapping:(id)a3 toPB:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [v6 addKeyViewMapping:*(*(&v12 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)addIntroducersByCategory:(id)a3 toPB:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = objc_alloc_init(TPPBPolicyIntroducersByCategory);
        [(TPPBPolicyIntroducersByCategory *)v14 setCategory:v13];
        v15 = [v5 objectForKeyedSubscript:v13];
        v16 = [v15 allObjects];
        v17 = [v16 mutableCopy];
        [(TPPBPolicyIntroducersByCategory *)v14 setIntroducers:v17];

        [v6 addIntroducersByCategory:v14];
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)addCategoriesByView:(id)a3 toPB:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = objc_alloc_init(TPPBPolicyCategoriesByView);
        [(TPPBPolicyCategoriesByView *)v14 setView:v13];
        v15 = [v5 objectForKeyedSubscript:v13];
        v16 = [v15 allObjects];
        v17 = [v16 mutableCopy];
        [(TPPBPolicyCategoriesByView *)v14 setCategories:v17];

        [v6 addCategoriesByView:v14];
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)addModelToCategory:(id)a3 toPB:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"prefix" ascending:{1, 0}];
  v23 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v9 = [v5 sortedArrayUsingDescriptors:v8];

  v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = objc_alloc_init(TPPBPolicyModelToCategory);
        v16 = [v14 prefix];
        [(TPPBPolicyModelToCategory *)v15 setPrefix:v16];

        v17 = [v14 category];
        [(TPPBPolicyModelToCategory *)v15 setCategory:v17];

        [v6 addModelToCategory:v15];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)redactionsFromPb:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 ciphertext];
        v12 = [v10 name];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)introducersByCategoryFromPb:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 category];
        v12 = [v4 objectForKeyedSubscript:v11];
        v13 = [v12 mutableCopy];

        if (v13)
        {
          v14 = [v10 introducers];
          [v13 addObjectsFromArray:v14];

          v15 = [v13 copy];
          v16 = [v10 category];
          [v4 setObject:v15 forKeyedSubscript:v16];
        }

        else
        {
          v17 = MEMORY[0x277CBEB98];
          v15 = [v10 introducers];
          v16 = [v17 setWithArray:v15];
          v18 = [v10 category];
          [v4 setObject:v16 forKeyedSubscript:v18];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)categoriesByViewFromPb:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 view];
        v12 = [v4 objectForKeyedSubscript:v11];
        v13 = [v12 mutableCopy];

        if (v13)
        {
          v14 = [v10 categories];
          [v13 addObjectsFromArray:v14];

          v15 = [v13 copy];
          v16 = [v10 view];
          [v4 setObject:v15 forKeyedSubscript:v16];
        }

        else
        {
          v17 = MEMORY[0x277CBEB98];
          v15 = [v10 categories];
          v16 = [v17 setWithArray:v15];
          v18 = [v10 view];
          [v4 setObject:v16 forKeyedSubscript:v18];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)modelToCategoryFromPb:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 prefix];
        v12 = [v10 category];
        v13 = [TPCategoryRule ruleWithPrefix:v11 category:v12];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end