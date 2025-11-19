@interface TPPolicy
+ (id)policyWithModelToCategory:(id)a3 categoriesByView:(id)a4 introducersByCategory:(id)a5 keyViewMapping:(id)a6 unknownRedactions:(BOOL)a7 userControllableViewList:(id)a8 piggybackViews:(id)a9 priorityViews:(id)a10 inheritedExcludedViews:(id)a11 version:(id)a12;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPolicy:(id)a3;
- (BOOL)peerInCategory:(id)a3 canAccessView:(id)a4;
- (BOOL)trustedPeerInCategory:(id)a3 canIntroduceCategory:(id)a4;
- (TPPolicy)initWithCoder:(id)a3;
- (id)categoryForModel:(id)a3;
- (id)description;
- (id)viewsForModel:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPPolicy

- (BOOL)isEqualToPolicy:(id)a3
{
  v4 = a3;
  v5 = [(TPPolicy *)self version];
  v6 = [v5 versionNumber];
  v7 = [v4 version];
  if (v6 == [v7 versionNumber])
  {
    v8 = [(TPPolicy *)self modelToCategory];
    v9 = [v4 modelToCategory];
    if ([v8 isEqual:v9])
    {
      v10 = [(TPPolicy *)self categoriesByView];
      v11 = [v4 categoriesByView];
      if ([v10 isEqualToDictionary:v11])
      {
        v12 = [(TPPolicy *)self introducersByCategory];
        v13 = [v4 introducersByCategory];
        if ([v12 isEqualToDictionary:v13])
        {
          v29 = v13;
          v31 = v12;
          v14 = [(TPPolicy *)self keyViewMapping];
          [v4 keyViewMapping];
          v28 = v30 = v14;
          if ([TPPolicyDocument isEqualKeyViewMapping:v14 other:?])
          {
            v15 = [(TPPolicy *)self userControllableViewList];
            v26 = [v4 userControllableViewList];
            v27 = v15;
            if ([v15 isEqualToSet:?])
            {
              v16 = [(TPPolicy *)self piggybackViews];
              v24 = [v4 piggybackViews];
              v25 = v16;
              if ([v16 isEqualToSet:?])
              {
                v17 = [(TPPolicy *)self priorityViews];
                v22 = [v4 priorityViews];
                v23 = v17;
                if ([v17 isEqualToSet:?])
                {
                  v18 = [(TPPolicy *)self inheritedExcludedViews];
                  v19 = [v4 inheritedExcludedViews];
                  v20 = [v18 isEqualToSet:v19];
                }

                else
                {
                  v20 = 0;
                }

                v12 = v31;
                v13 = v29;
              }

              else
              {
                v20 = 0;
                v12 = v31;
                v13 = v29;
              }
            }

            else
            {
              v20 = 0;
              v12 = v31;
              v13 = v29;
            }
          }

          else
          {
            v20 = 0;
            v13 = v29;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(TPPolicy *)self isEqualToPolicy:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (TPPolicy)initWithCoder:(id)a3
{
  v54[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = TPPolicy;
  v5 = [(TPPolicy *)&v47 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = MEMORY[0x277CBEB98];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v54[2] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
    v10 = [v8 setWithArray:v9];

    v11 = MEMORY[0x277CBEB98];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"modelToCategory"];
    modelToCategory = v5->_modelToCategory;
    v5->_modelToCategory = v14;

    v16 = [v4 decodeObjectOfClasses:v10 forKey:@"categoriesByView"];
    categoriesByView = v5->_categoriesByView;
    v5->_categoriesByView = v16;

    v18 = [v4 decodeObjectOfClasses:v10 forKey:@"introducersByCategory"];
    introducersByCategory = v5->_introducersByCategory;
    v5->_introducersByCategory = v18;

    v5->_unknownRedactions = [v4 decodeBoolForKey:@"unknownRedactions"];
    v20 = MEMORY[0x277CBEB98];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"ucvList"];
    userControllableViewList = v5->_userControllableViewList;
    v5->_userControllableViewList = v23;

    v25 = MEMORY[0x277CBEB98];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    v27 = [v25 setWithArray:v26];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"piggybackingList"];
    piggybackViews = v5->_piggybackViews;
    v5->_piggybackViews = v28;

    v30 = MEMORY[0x277CBEB98];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"priorityViews"];
    priorityViews = v5->_priorityViews;
    v5->_priorityViews = v33;

    v35 = MEMORY[0x277CBEB98];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"inheritedExcludedViews"];
    inheritedExcludedViews = v5->_inheritedExcludedViews;
    v5->_inheritedExcludedViews = v38;

    v40 = MEMORY[0x277CBEB98];
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"keyViewMapping"];
    keyViewMapping = v5->_keyViewMapping;
    v5->_keyViewMapping = v43;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TPPolicy *)self modelToCategory];
  [v4 encodeObject:v5 forKey:@"modelToCategory"];

  v6 = [(TPPolicy *)self categoriesByView];
  [v4 encodeObject:v6 forKey:@"categoriesByView"];

  v7 = [(TPPolicy *)self introducersByCategory];
  [v4 encodeObject:v7 forKey:@"introducersByCategory"];

  v8 = [(TPPolicy *)self keyViewMapping];
  [v4 encodeObject:v8 forKey:@"keyViewMapping"];

  [v4 encodeBool:-[TPPolicy unknownRedactions](self forKey:{"unknownRedactions"), @"unknownRedactions"}];
  v9 = [(TPPolicy *)self userControllableViewList];
  [v4 encodeObject:v9 forKey:@"ucvList"];

  v10 = [(TPPolicy *)self piggybackViews];
  [v4 encodeObject:v10 forKey:@"piggybackingList"];

  v11 = [(TPPolicy *)self priorityViews];
  [v4 encodeObject:v11 forKey:@"priorityViews"];

  v12 = [(TPPolicy *)self inheritedExcludedViews];
  [v4 encodeObject:v12 forKey:@"inheritedExcludedViews"];

  v13 = [(TPPolicy *)self version];
  [v4 encodeObject:v13 forKey:@"version"];
}

- (id)viewsForModel:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TPPolicy *)self categoryForModel:v6];
  if (v7)
  {
    v22 = [MEMORY[0x277CBEB58] set];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [(TPPolicy *)self categoriesByView];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v21 = v6;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [(TPPolicy *)self categoriesByView];
          v15 = [v14 objectForKeyedSubscript:v13];
          v16 = [v15 containsObject:v7];

          if (v16)
          {
            [v22 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
      v6 = v21;
    }

    goto LABEL_14;
  }

  if (a4)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = TPErrorDomain;
    v28 = @"model";
    v29[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    [v17 errorWithDomain:v18 code:9 userInfo:v8];
    *a4 = v22 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v22 = 0;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)peerInCategory:(id)a3 canAccessView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TPPolicy *)self categoriesByView];
  v9 = [v8 objectForKeyedSubscript:v6];

  LOBYTE(v6) = [v9 containsObject:v7];
  return v6;
}

- (BOOL)trustedPeerInCategory:(id)a3 canIntroduceCategory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TPPolicy *)self introducersByCategory];
  v9 = [v8 objectForKeyedSubscript:v6];

  LOBYTE(v6) = [v9 containsObject:v7];
  return v6;
}

- (id)categoryForModel:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (AllowiProdOverrideSet == 1)
  {
    if ((AllowiProdOverrideValue & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  if ([v4 hasPrefix:@"iProd"])
  {
    v5 = @"full";
    goto LABEL_18;
  }

LABEL_7:
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(TPPolicy *)self modelToCategory];
  v5 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 prefix];
        v11 = [v4 hasPrefix:v10];

        if (v11)
        {
          v5 = [v9 category];
          goto LABEL_17;
        }
      }

      v5 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TPPolicy *)self version];
  v4 = [v2 stringWithFormat:@"<TPPolicy: %@>", v3];

  return v4;
}

+ (id)policyWithModelToCategory:(id)a3 categoriesByView:(id)a4 introducersByCategory:(id)a5 keyViewMapping:(id)a6 unknownRedactions:(BOOL)a7 userControllableViewList:(id)a8 piggybackViews:(id)a9 priorityViews:(id)a10 inheritedExcludedViews:(id)a11 version:(id)a12
{
  v27 = a7;
  v28 = a12;
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = objc_alloc_init(TPPolicy);
  [(TPPolicy *)v25 setModelToCategory:v24];

  [(TPPolicy *)v25 setCategoriesByView:v23];
  [(TPPolicy *)v25 setIntroducersByCategory:v22];

  [(TPPolicy *)v25 setKeyViewMapping:v21];
  [(TPPolicy *)v25 setUnknownRedactions:v27];
  [(TPPolicy *)v25 setUserControllableViewList:v20];

  [(TPPolicy *)v25 setPiggybackViews:v19];
  [(TPPolicy *)v25 setPriorityViews:v18];

  [(TPPolicy *)v25 setInheritedExcludedViews:v17];
  [(TPPolicy *)v25 setVersion:v28];

  return v25;
}

@end