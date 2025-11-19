@interface HKSPDictionaryDiff
- (HKSPDictionaryDiff)initWithOriginalDictionary:(id)a3 updatedDictionary:(id)a4 keysToDiff:(id)a5;
@end

@implementation HKSPDictionaryDiff

- (HKSPDictionaryDiff)initWithOriginalDictionary:(id)a3 updatedDictionary:(id)a4 keysToDiff:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = HKSPDictionaryDiff;
  v11 = [(HKSPDictionaryDiff *)&v35 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __78__HKSPDictionaryDiff_initWithOriginalDictionary_updatedDictionary_keysToDiff___block_invoke;
    v31[3] = &unk_279C759F0;
    v14 = v10;
    v32 = v14;
    v15 = v8;
    v33 = v15;
    v34 = v12;
    v16 = v12;
    [v9 na_each:v31];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __78__HKSPDictionaryDiff_initWithOriginalDictionary_updatedDictionary_keysToDiff___block_invoke_2;
    v27 = &unk_279C759F0;
    v28 = v14;
    v29 = v9;
    v30 = v13;
    v17 = v13;
    [v15 na_each:&v24];
    v18 = [v16 copy];
    updatedProperties = v11->_updatedProperties;
    v11->_updatedProperties = v18;

    v20 = [v17 copy];
    removedKeys = v11->_removedKeys;
    v11->_removedKeys = v20;

    v22 = v11;
  }

  return v11;
}

void __78__HKSPDictionaryDiff_initWithOriginalDictionary_updatedDictionary_keysToDiff___block_invoke(id *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([a1[4] containsObject:v8])
  {
    v6 = [a1[5] objectForKeyedSubscript:v8];
    v7 = NAEqualObjects();

    if ((v7 & 1) == 0)
    {
      [a1[6] setObject:v5 forKeyedSubscript:v8];
    }
  }
}

void __78__HKSPDictionaryDiff_initWithOriginalDictionary_updatedDictionary_keysToDiff___block_invoke_2(id *a1, void *a2)
{
  v4 = a2;
  if ([a1[4] containsObject:?])
  {
    v3 = [a1[5] objectForKeyedSubscript:v4];

    if (!v3)
    {
      [a1[6] addObject:v4];
    }
  }
}

@end