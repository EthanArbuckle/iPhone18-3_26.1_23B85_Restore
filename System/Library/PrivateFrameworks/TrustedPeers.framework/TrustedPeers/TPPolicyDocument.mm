@interface TPPolicyDocument
+ (BOOL)isEqualKeyViewMapping:(id)mapping other:(id)other;
+ (id)categoriesByViewFromPb:(id)pb;
+ (id)introducersByCategoryFromPb:(id)pb;
+ (id)modelToCategoryFromPb:(id)pb;
+ (id)policyDocWithHash:(id)hash data:(id)data;
+ (id)redactionWithEncrypter:(id)encrypter redactionName:(id)name encryptionKey:(id)key modelToCategory:(id)category categoriesByView:(id)view introducersByCategory:(id)byCategory keyViewMapping:(id)mapping error:(id *)self0;
+ (id)redactionsFromPb:(id)pb;
+ (void)addCategoriesByView:(id)view toPB:(id)b;
+ (void)addIntroducersByCategory:(id)category toPB:(id)b;
+ (void)addKeyViewMapping:(id)mapping toPB:(id)b;
+ (void)addModelToCategory:(id)category toPB:(id)b;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPolicyDocument:(id)document;
- (NSArray)keyViewMapping;
- (TPPolicyDocument)initWithHash:(id)hash data:(id)data;
- (TPPolicyDocument)initWithVersion:(unint64_t)version modelToCategory:(id)category categoriesByView:(id)view introducersByCategory:(id)byCategory redactions:(id)redactions keyViewMapping:(id)mapping userControllableViewList:(id)list piggybackViews:(id)self0 priorityViews:(id)self1 inheritedExcludedViews:(id)self2 hashAlgo:(int64_t)self3;
- (id)cloneWithVersionNumber:(unint64_t)number prependingCategoriesByView:(id)view prependingKeyViewMapping:(id)mapping prependingRedactions:(id)redactions;
- (id)description;
- (id)encodeProtobuf;
- (id)policyWithSecrets:(id)secrets decrypter:(id)decrypter error:(id *)error;
- (unint64_t)hash;
@end

@implementation TPPolicyDocument

- (unint64_t)hash
{
  version = [(TPPolicyDocument *)self version];
  policyHash = [version policyHash];
  v4 = [policyHash hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPPolicyDocument *)self isEqualToPolicyDocument:equalCopy];
  }

  return v5;
}

- (id)cloneWithVersionNumber:(unint64_t)number prependingCategoriesByView:(id)view prependingKeyViewMapping:(id)mapping prependingRedactions:(id)redactions
{
  v55 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  mappingCopy = mapping;
  redactionsCopy = redactions;
  v13 = [TPPBPolicyDocument alloc];
  protobuf = [(TPPolicyDocument *)self protobuf];
  v15 = [(TPPBPolicyDocument *)v13 initWithData:protobuf];

  [(TPPBPolicyDocument *)v15 setPolicyVersion:number];
  v49 = viewCopy;
  if (viewCopy)
  {
    selfCopy = self;
    v47 = redactionsCopy;
    v48 = mappingCopy;
    array = [MEMORY[0x277CBEB18] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    allKeys = [viewCopy allKeys];
    v18 = [allKeys countByEnumeratingWithState:&v50 objects:v54 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v22 = *(*(&v50 + 1) + 8 * i);
          v23 = objc_alloc_init(TPPBPolicyCategoriesByView);
          [(TPPBPolicyCategoriesByView *)v23 setView:v22];
          v24 = [v49 objectForKeyedSubscript:v22];
          allObjects = [v24 allObjects];
          v26 = [allObjects mutableCopy];
          [(TPPBPolicyCategoriesByView *)v23 setCategories:v26];

          [array addObject:v23];
        }

        v19 = [allKeys countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v19);
    }

    categoriesByViews = [(TPPBPolicyDocument *)v15 categoriesByViews];
    v28 = [array arrayByAddingObjectsFromArray:categoriesByViews];
    v29 = [v28 mutableCopy];
    [(TPPBPolicyDocument *)v15 setCategoriesByViews:v29];

    redactionsCopy = v47;
    mappingCopy = v48;
    self = selfCopy;
  }

  if (mappingCopy)
  {
    keyViewMappings = [(TPPBPolicyDocument *)v15 keyViewMappings];
    v31 = [mappingCopy arrayByAddingObjectsFromArray:keyViewMappings];
    v32 = [v31 mutableCopy];
    [(TPPBPolicyDocument *)v15 setKeyViewMappings:v32];
  }

  if (redactionsCopy)
  {
    redactions = [(TPPBPolicyDocument *)v15 redactions];
    v34 = [redactionsCopy arrayByAddingObjectsFromArray:redactions];
    v35 = [v34 mutableCopy];
    [(TPPBPolicyDocument *)v15 setRedactions:v35];
  }

  version = [(TPPolicyDocument *)self version];
  policyHash = [version policyHash];
  v38 = [TPHashBuilder algoOfHash:policyHash];
  data = [(TPPBPolicyDocument *)v15 data];
  v40 = [TPHashBuilder hashWithAlgo:v38 ofData:data];

  v41 = [TPPolicyDocument alloc];
  data2 = [(TPPBPolicyDocument *)v15 data];
  v43 = [(TPPolicyDocument *)v41 initWithHash:v40 data:data2];

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (BOOL)isEqualToPolicyDocument:(id)document
{
  if (document == self)
  {
    return 1;
  }

  documentCopy = document;
  encodeProtobuf = [(TPPolicyDocument *)self encodeProtobuf];
  encodeProtobuf2 = [documentCopy encodeProtobuf];

  LOBYTE(documentCopy) = [encodeProtobuf isEqual:encodeProtobuf2];
  return documentCopy;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  version = [(TPPolicyDocument *)self version];
  v4 = [v2 stringWithFormat:@"<TPPolicyDocument: %@>", version];

  return v4;
}

- (NSArray)keyViewMapping
{
  v3 = objc_autoreleasePoolPush();
  v4 = [TPPBPolicyDocument alloc];
  protobuf = [(TPPolicyDocument *)self protobuf];
  v6 = [(TPPBPolicyDocument *)v4 initWithData:protobuf];

  keyViewMappings = [(TPPBPolicyDocument *)v6 keyViewMappings];

  objc_autoreleasePoolPop(v3);

  return keyViewMappings;
}

- (id)policyWithSecrets:(id)secrets decrypter:(id)decrypter error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  secretsCopy = secrets;
  decrypterCopy = decrypter;
  v9 = [TPPBPolicyDocument alloc];
  selfCopy = self;
  protobuf = [(TPPolicyDocument *)self protobuf];
  v11 = [(TPPBPolicyDocument *)v9 initWithData:protobuf];

  v52 = v11;
  redactions = [(TPPBPolicyDocument *)v11 redactions];
  v13 = [TPPolicyDocument redactionsFromPb:redactions];

  v55 = objc_opt_new();
  v14 = MEMORY[0x277CBEB58];
  allKeys = [v13 allKeys];
  v54 = [v14 setWithArray:allKeys];

  v57 = secretsCopy;
  allKeys2 = [secretsCopy allKeys];
  v17 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

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
          categoriesByViews = v24;
          v26 = [decrypterCopy decryptData:v24 withKey:v23 error:error];
          if (!v26)
          {
            v37 = 0;
            modelToCategorys = obj;
            goto LABEL_16;
          }

          v27 = v26;
          v28 = [[TPPBPolicyDocument alloc] initWithData:v26];
          if (!v28)
          {
            v37 = 0;
            modelToCategorys = obj;
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
  modelToCategorys = [v55 modelToCategorys];
  v23 = [TPPolicyDocument modelToCategoryFromPb:modelToCategorys];
  categoriesByViews = [v55 categoriesByViews];
  v27 = [TPPolicyDocument categoriesByViewFromPb:categoriesByViews];
  introducersByCategorys = [v55 introducersByCategorys];
  v49 = [TPPolicyDocument introducersByCategoryFromPb:introducersByCategorys];
  keyViewMappings = [v55 keyViewMappings];
  v44 = [v54 count] != 0;
  v30 = MEMORY[0x277CBEB98];
  userControllableViews = [v55 userControllableViews];
  v42 = [v30 setWithArray:userControllableViews];
  v31 = MEMORY[0x277CBEB98];
  piggybackViews = [v55 piggybackViews];
  v41 = [v31 setWithArray:piggybackViews];
  v32 = MEMORY[0x277CBEB98];
  priorityViews = [v55 priorityViews];
  v40 = [v32 setWithArray:priorityViews];
  v33 = MEMORY[0x277CBEB98];
  inheritedExcludedViews = [v55 inheritedExcludedViews];
  v35 = [v33 setWithArray:inheritedExcludedViews];
  version = [(TPPolicyDocument *)selfCopy version];
  v37 = [TPPolicy policyWithModelToCategory:v23 categoriesByView:v27 introducersByCategory:v49 keyViewMapping:keyViewMappings unknownRedactions:v44 userControllableViewList:v42 piggybackViews:v41 priorityViews:v40 inheritedExcludedViews:v35 version:version];

LABEL_15:
LABEL_16:

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)encodeProtobuf
{
  v3 = [TPPBPolicyDocument alloc];
  protobuf = [(TPPolicyDocument *)self protobuf];
  v5 = [(TPPBPolicyDocument *)v3 initWithData:protobuf];

  return v5;
}

- (TPPolicyDocument)initWithVersion:(unint64_t)version modelToCategory:(id)category categoriesByView:(id)view introducersByCategory:(id)byCategory redactions:(id)redactions keyViewMapping:(id)mapping userControllableViewList:(id)list piggybackViews:(id)self0 priorityViews:(id)self1 inheritedExcludedViews:(id)self2 hashAlgo:(int64_t)self3
{
  categoryCopy = category;
  viewCopy = view;
  byCategoryCopy = byCategory;
  redactionsCopy = redactions;
  mappingCopy = mapping;
  listCopy = list;
  viewsCopy = views;
  priorityViewsCopy = priorityViews;
  excludedViewsCopy = excludedViews;
  v53.receiver = self;
  v53.super_class = TPPolicyDocument;
  v26 = [(TPPolicyDocument *)&v53 init];
  if (v26)
  {
    v27 = objc_alloc_init(TPPBPolicyDocument);
    versionCopy = version;
    [(TPPBPolicyDocument *)v27 setPolicyVersion:version];
    v50 = redactionsCopy;
    v28 = viewCopy;
    v29 = [categoryCopy mutableCopy];
    [(TPPBPolicyDocument *)v27 setModelToCategorys:v29];

    v30 = [v28 mutableCopy];
    [(TPPBPolicyDocument *)v27 setCategoriesByViews:v30];

    v31 = [byCategoryCopy mutableCopy];
    [(TPPBPolicyDocument *)v27 setIntroducersByCategorys:v31];

    v32 = [v50 mutableCopy];
    [(TPPBPolicyDocument *)v27 setRedactions:v32];

    v33 = [mappingCopy mutableCopy];
    [(TPPBPolicyDocument *)v27 setKeyViewMappings:v33];

    v34 = [listCopy mutableCopy];
    [(TPPBPolicyDocument *)v27 setUserControllableViews:v34];

    v35 = [viewsCopy mutableCopy];
    [(TPPBPolicyDocument *)v27 setPiggybackViews:v35];

    v36 = [priorityViewsCopy mutableCopy];
    [(TPPBPolicyDocument *)v27 setPriorityViews:v36];

    v37 = [excludedViewsCopy mutableCopy];
    [(TPPBPolicyDocument *)v27 setInheritedExcludedViews:v37];

    data = [(TPPBPolicyDocument *)v27 data];
    protobuf = v26->_protobuf;
    v26->_protobuf = data;

    v40 = [TPPolicyVersion alloc];
    [TPHashBuilder hashWithAlgo:algo ofData:v26->_protobuf];
    v41 = viewsCopy;
    v42 = mappingCopy;
    v44 = v43 = byCategoryCopy;
    v45 = v40;
    viewCopy = v28;
    redactionsCopy = v50;
    v46 = [(TPPolicyVersion *)v45 initWithVersion:versionCopy hash:v44];
    version = v26->_version;
    v26->_version = v46;

    byCategoryCopy = v43;
    mappingCopy = v42;
    viewsCopy = v41;
  }

  return v26;
}

- (TPPolicyDocument)initWithHash:(id)hash data:(id)data
{
  hashCopy = hash;
  dataCopy = data;
  v8 = dataCopy;
  selfCopy = 0;
  if (hashCopy && dataCopy)
  {
    v10 = [TPHashBuilder hashWithAlgo:[TPHashBuilder algoOfHash:hashCopy] ofData:dataCopy];
    if ([hashCopy isEqualToString:v10])
    {
      v18.receiver = self;
      v18.super_class = TPPolicyDocument;
      v11 = [(TPPolicyDocument *)&v18 init];
      v12 = v11;
      if (v11)
      {
        objc_storeStrong(&v11->_protobuf, data);
        v13 = objc_autoreleasePoolPush();
        v14 = [[TPPBPolicyDocument alloc] initWithData:v8];
        v15 = [[TPPolicyVersion alloc] initWithVersion:[(TPPBPolicyDocument *)v14 policyVersion] hash:v10];
        version = v12->_version;
        v12->_version = v15;

        objc_autoreleasePoolPop(v13);
      }

      self = v12;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (BOOL)isEqualKeyViewMapping:(id)mapping other:(id)other
{
  mappingCopy = mapping;
  otherCopy = other;
  if ([mappingCopy count] || objc_msgSend(otherCopy, "count"))
  {
    v7 = [mappingCopy isEqual:otherCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)redactionWithEncrypter:(id)encrypter redactionName:(id)name encryptionKey:(id)key modelToCategory:(id)category categoriesByView:(id)view introducersByCategory:(id)byCategory keyViewMapping:(id)mapping error:(id *)self0
{
  nameCopy = name;
  mappingCopy = mapping;
  byCategoryCopy = byCategory;
  viewCopy = view;
  categoryCopy = category;
  keyCopy = key;
  encrypterCopy = encrypter;
  v21 = objc_opt_new();
  [TPPolicyDocument addModelToCategory:categoryCopy toPB:v21];

  [TPPolicyDocument addCategoriesByView:viewCopy toPB:v21];
  [TPPolicyDocument addIntroducersByCategory:byCategoryCopy toPB:v21];

  [TPPolicyDocument addKeyViewMapping:mappingCopy toPB:v21];
  data = [v21 data];
  v23 = [encrypterCopy encryptData:data withKey:keyCopy error:error];

  if (v23)
  {
    v24 = objc_alloc_init(TPPBPolicyRedaction);
    v25 = nameCopy;
    [(TPPBPolicyRedaction *)v24 setName:nameCopy];
    [(TPPBPolicyRedaction *)v24 setCiphertext:v23];
  }

  else
  {
    v24 = 0;
    v25 = nameCopy;
  }

  return v24;
}

+ (id)policyDocWithHash:(id)hash data:(id)data
{
  dataCopy = data;
  hashCopy = hash;
  v7 = [[TPPolicyDocument alloc] initWithHash:hashCopy data:dataCopy];

  return v7;
}

+ (void)addKeyViewMapping:(id)mapping toPB:(id)b
{
  v17 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  bCopy = b;
  if (mappingCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [mappingCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(mappingCopy);
          }

          [bCopy addKeyViewMapping:*(*(&v12 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [mappingCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)addIntroducersByCategory:(id)category toPB:(id)b
{
  v25 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  bCopy = b;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [categoryCopy allKeys];
  v8 = [allKeys sortedArrayUsingSelector:sel_compare_];

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
        v15 = [categoryCopy objectForKeyedSubscript:v13];
        allObjects = [v15 allObjects];
        v17 = [allObjects mutableCopy];
        [(TPPBPolicyIntroducersByCategory *)v14 setIntroducers:v17];

        [bCopy addIntroducersByCategory:v14];
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)addCategoriesByView:(id)view toPB:(id)b
{
  v25 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  bCopy = b;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [viewCopy allKeys];
  v8 = [allKeys sortedArrayUsingSelector:sel_compare_];

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
        v15 = [viewCopy objectForKeyedSubscript:v13];
        allObjects = [v15 allObjects];
        v17 = [allObjects mutableCopy];
        [(TPPBPolicyCategoriesByView *)v14 setCategories:v17];

        [bCopy addCategoriesByView:v14];
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)addModelToCategory:(id)category toPB:(id)b
{
  v25 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  bCopy = b;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"prefix" ascending:{1, 0}];
  v23 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v9 = [categoryCopy sortedArrayUsingDescriptors:v8];

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
        prefix = [v14 prefix];
        [(TPPBPolicyModelToCategory *)v15 setPrefix:prefix];

        category = [v14 category];
        [(TPPBPolicyModelToCategory *)v15 setCategory:category];

        [bCopy addModelToCategory:v15];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)redactionsFromPb:(id)pb
{
  v20 = *MEMORY[0x277D85DE8];
  pbCopy = pb;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(pbCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = pbCopy;
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
        ciphertext = [v10 ciphertext];
        name = [v10 name];
        [v4 setObject:ciphertext forKeyedSubscript:name];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)introducersByCategoryFromPb:(id)pb
{
  v26 = *MEMORY[0x277D85DE8];
  pbCopy = pb;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(pbCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = pbCopy;
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
        category = [v10 category];
        v12 = [v4 objectForKeyedSubscript:category];
        v13 = [v12 mutableCopy];

        if (v13)
        {
          introducers = [v10 introducers];
          [v13 addObjectsFromArray:introducers];

          introducers2 = [v13 copy];
          category2 = [v10 category];
          [v4 setObject:introducers2 forKeyedSubscript:category2];
        }

        else
        {
          v17 = MEMORY[0x277CBEB98];
          introducers2 = [v10 introducers];
          category2 = [v17 setWithArray:introducers2];
          category3 = [v10 category];
          [v4 setObject:category2 forKeyedSubscript:category3];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)categoriesByViewFromPb:(id)pb
{
  v26 = *MEMORY[0x277D85DE8];
  pbCopy = pb;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(pbCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = pbCopy;
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
        view = [v10 view];
        v12 = [v4 objectForKeyedSubscript:view];
        v13 = [v12 mutableCopy];

        if (v13)
        {
          categories = [v10 categories];
          [v13 addObjectsFromArray:categories];

          categories2 = [v13 copy];
          view2 = [v10 view];
          [v4 setObject:categories2 forKeyedSubscript:view2];
        }

        else
        {
          v17 = MEMORY[0x277CBEB98];
          categories2 = [v10 categories];
          view2 = [v17 setWithArray:categories2];
          view3 = [v10 view];
          [v4 setObject:view2 forKeyedSubscript:view3];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)modelToCategoryFromPb:(id)pb
{
  v21 = *MEMORY[0x277D85DE8];
  pbCopy = pb;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pbCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = pbCopy;
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
        prefix = [v10 prefix];
        category = [v10 category];
        v13 = [TPCategoryRule ruleWithPrefix:prefix category:category];
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