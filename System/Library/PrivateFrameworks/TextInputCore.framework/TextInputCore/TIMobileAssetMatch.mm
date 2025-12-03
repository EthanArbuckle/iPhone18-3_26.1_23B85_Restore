@interface TIMobileAssetMatch
+ (id)knownAssetRegionAttributes;
+ (id)mobileAssetMatchWithTypes:(id)types inputModeLevels:(id)levels regions:(id)regions;
- (BOOL)isEqual:(id)equal;
- (TIMobileAssetMatch)initWithTypes:(id)types inputModeLevels:(id)levels regions:(id)regions;
- (id)description;
- (unint64_t)hash;
@end

@implementation TIMobileAssetMatch

+ (id)knownAssetRegionAttributes
{
  if (knownAssetRegionAttributes_onceToken != -1)
  {
    dispatch_once(&knownAssetRegionAttributes_onceToken, &__block_literal_global_4136);
  }

  v3 = knownAssetRegionAttributes_assetRegionAttributes;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  types = [(TIMobileAssetMatch *)self types];
  inputModeLevels = [(TIMobileAssetMatch *)self inputModeLevels];
  regions = [(TIMobileAssetMatch *)self regions];
  v9 = [v3 stringWithFormat:@"<%@: types=%@, inputModeLevels=%@, regions=%@>", v5, types, inputModeLevels, regions];

  return v9;
}

- (unint64_t)hash
{
  v3 = 257 * [(NSArray *)self->_types hash];
  v4 = 257 * ([(NSArray *)self->_inputModeLevels hash]+ v3);
  return v4 + [(NSArray *)self->_regions hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    types = self->_types;
    if ((types == v5[1] || [(NSArray *)types isEqual:?]) && ((inputModeLevels = self->_inputModeLevels, inputModeLevels == v5[2]) || [(NSArray *)inputModeLevels isEqual:?]))
    {
      regions = self->_regions;
      if (regions == v5[3])
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSArray *)regions isEqual:?];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TIMobileAssetMatch)initWithTypes:(id)types inputModeLevels:(id)levels regions:(id)regions
{
  v81 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  levelsCopy = levels;
  regionsCopy = regions;
  v76.receiver = self;
  v76.super_class = TIMobileAssetMatch;
  v10 = [(TIMobileAssetMatch *)&v76 init];
  if (!v10)
  {
    goto LABEL_48;
  }

  v55 = typesCopy;
  v11 = [typesCopy copy];
  types = v10->_types;
  v10->_types = v11;

  v54 = levelsCopy;
  v13 = [levelsCopy copy];
  inputModeLevels = v10->_inputModeLevels;
  v10->_inputModeLevels = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  regions = v10->_regions;
  v53 = v10;
  v10->_regions = v15;

  array = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 3; ++i)
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v19 = regionsCopy;
    v20 = [v19 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v73;
LABEL_5:
      v23 = 0;
      while (1)
      {
        if (*v73 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v72 + 1) + 8 * v23);
        if ([array count] > 1)
        {
          break;
        }

        v25 = [array count];
        if (v25 == [v19 count])
        {
          break;
        }

        if (i == 1)
        {
          v29 = [v24 objectForKeyedSubscript:@"ContactLabel"];
          v30 = [v29 length];

          if (v30)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (i)
          {
            goto LABEL_19;
          }

          v26 = [v24 objectForKeyedSubscript:@"ContactLabel"];
          if (v26)
          {
            v27 = v26;
            if (![v26 caseInsensitiveCompare:@"Home"])
            {

LABEL_19:
              if (([array containsObject:v24] & 1) == 0)
              {
                [array addObject:v24];
              }

              goto LABEL_21;
            }

            v28 = [v27 caseInsensitiveCompare:@"Work"];

            if (!v28)
            {
              goto LABEL_19;
            }
          }
        }

LABEL_21:
        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v72 objects:v80 count:16];
          if (v21)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  array2 = [MEMORY[0x277CBEB18] array];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = array;
  v31 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
  if (v31)
  {
    v32 = v31;
    v58 = *v69;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v69 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v34 = [*(*(&v68 + 1) + 8 * j) mutableCopy];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v35 = +[TIMobileAssetMatch knownAssetRegionAttributes];
        v36 = [v35 countByEnumeratingWithState:&v64 objects:v78 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v65;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v65 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v64 + 1) + 8 * k);
              v41 = [v34 objectForKeyedSubscript:v40];

              if (!v41)
              {
                [v34 setObject:&stru_283FDFAF8 forKeyedSubscript:v40];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v64 objects:v78 count:16];
          }

          while (v37);
        }

        [array2 addObject:v34];
      }

      v32 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    }

    while (v32);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v42 = array2;
  v43 = [v42 countByEnumeratingWithState:&v60 objects:v77 count:16];
  v10 = v53;
  if (v43)
  {
    v44 = v43;
    v45 = *v61;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v61 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v60 + 1) + 8 * m);
        v48 = [v47 keysOfEntriesPassingTest:&__block_literal_global_48];
        allObjects = [v48 allObjects];
        v50 = [v47 dictionaryWithValuesForKeys:allObjects];

        [(NSArray *)v53->_regions addObject:v50];
      }

      v44 = [v42 countByEnumeratingWithState:&v60 objects:v77 count:16];
    }

    while (v44);
  }

  levelsCopy = v54;
  typesCopy = v55;
LABEL_48:

  v51 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __60__TIMobileAssetMatch_initWithTypes_inputModeLevels_regions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[TIMobileAssetMatch knownAssetRegionAttributes];
  v4 = [v3 containsObject:v2];

  return v4;
}

+ (id)mobileAssetMatchWithTypes:(id)types inputModeLevels:(id)levels regions:(id)regions
{
  regionsCopy = regions;
  levelsCopy = levels;
  typesCopy = types;
  v11 = [[self alloc] initWithTypes:typesCopy inputModeLevels:levelsCopy regions:regionsCopy];

  return v11;
}

void __48__TIMobileAssetMatch_knownAssetRegionAttributes__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"City";
  v4[1] = @"Province";
  v4[2] = @"Country";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];
  v1 = [v0 copy];
  v2 = knownAssetRegionAttributes_assetRegionAttributes;
  knownAssetRegionAttributes_assetRegionAttributes = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end