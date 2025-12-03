@interface PPCoreMLUtils
+ (id)_multiArrayForNumberArray:(uint64_t)array;
+ (id)flattenFeatureProviderArray:(id)array;
+ (id)flattenMultiArray:(id)array;
+ (id)multiArrayFeatureValueForNumber:(id)number;
+ (id)multiArrayForArray:(id)array;
+ (id)scoringContextWithError:(id *)error;
@end

@implementation PPCoreMLUtils

+ (id)scoringContextWithError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CCABB0];
  v6 = objc_opt_new();
  [v6 timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  v16[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [PPCoreMLUtils multiArrayForArray:v8];

  objc_autoreleasePoolPop(v4);
  v10 = objc_autoreleasePoolPush();
  v11 = objc_opt_new();
  objc_autoreleasePoolPop(v10);
  if (v9)
  {
    v12 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v9];
    [v11 setObject:v12 forKeyedSubscript:@"scoringDate"];
  }

  v13 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v11 error:error];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)multiArrayFeatureValueForNumber:(id)number
{
  v11[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = objc_autoreleasePoolPush();
  v11[0] = numberCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  objc_autoreleasePoolPop(v5);
  v7 = [self multiArrayForArray:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)multiArrayForArray:(id)array
{
  v18[1] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = objc_alloc(MEMORY[0x277CBFF48]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(arrayCopy, "count")}];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15 = 0;
  v7 = [v4 initWithShape:v6 dataType:65600 error:&v15];
  v8 = v15;

  if (v7)
  {
    if ([arrayCopy count])
    {
      v9 = 0;
      do
      {
        v10 = [arrayCopy objectAtIndexedSubscript:v9];
        [v7 setObject:v10 atIndexedSubscript:v9];

        ++v9;
      }

      while ([arrayCopy count] > v9);
    }

    v11 = v7;
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPCoreMLUtils: Unable to load array to MLMultiArray: %@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)flattenMultiArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    if ([arrayCopy count])
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = [arrayCopy objectAtIndexedSubscript:v5];
        [v7 floatValue];
        v8 = [v6 numberWithFloat:?];
        [v4 addObject:v8];

        ++v5;
      }

      while (v5 < [arrayCopy count]);
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

+ (id)flattenFeatureProviderArray:(id)array
{
  v88 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v59 = a2;
    firstObject = [arrayCopy firstObject];
    featureNames = [firstObject featureNames];

    v7 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = featureNames;
    v8 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
    if (!v8)
    {
      goto LABEL_45;
    }

    v9 = v8;
    v10 = *v77;
    v61 = *v77;
    v62 = v7;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v77 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v76 + 1) + 8 * v11);
        firstObject2 = [arrayCopy firstObject];
        v14 = [firstObject2 featureValueForName:v12];
        type = [v14 type];

        if (type > 2)
        {
          if (type == 3)
          {
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __45__PPCoreMLUtils_flattenFeatureProviderArray___block_invoke_2;
            v74[3] = &unk_278979350;
            v74[4] = v12;
            v42 = [arrayCopy _pas_mappedArrayWithTransform:v74];
            v46 = MEMORY[0x277CBFEF8];
            v44 = [MEMORY[0x277CBFF78] sequenceWithStringArray:v42];
            v45 = [v46 featureValueWithSequence:v44];
            goto LABEL_32;
          }

          if (type == 7)
          {
            firstObject3 = [arrayCopy firstObject];
            v27 = [firstObject3 featureValueForName:v12];
            sequenceValue = [v27 sequenceValue];
            int64Values = [sequenceValue int64Values];
            v30 = [int64Values count];

            if (v30)
            {
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __45__PPCoreMLUtils_flattenFeatureProviderArray___block_invoke_3;
              v73[3] = &unk_278979350;
              v73[4] = v12;
              v31 = [arrayCopy _pas_mappedArrayWithTransform:v73];
              v32 = objc_opt_new();
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v33 = v31;
              v34 = [v33 countByEnumeratingWithState:&v69 objects:v85 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v70;
                do
                {
                  for (i = 0; i != v35; ++i)
                  {
                    if (*v70 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    [v32 addObjectsFromArray:*(*(&v69 + 1) + 8 * i)];
                  }

                  v35 = [v33 countByEnumeratingWithState:&v69 objects:v85 count:16];
                }

                while (v35);
              }

              v38 = MEMORY[0x277CBFEF8];
              v39 = [PPCoreMLUtils _multiArrayForNumberArray:v32];
              v40 = [v38 featureValueWithMultiArray:v39];
            }

            else
            {
              v68[0] = MEMORY[0x277D85DD0];
              v68[1] = 3221225472;
              v68[2] = __45__PPCoreMLUtils_flattenFeatureProviderArray___block_invoke_4;
              v68[3] = &unk_278979350;
              v68[4] = v12;
              v48 = [arrayCopy _pas_mappedArrayWithTransform:v68];
              v32 = objc_opt_new();
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v33 = v48;
              v49 = [v33 countByEnumeratingWithState:&v64 objects:v84 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v65;
                do
                {
                  for (j = 0; j != v50; ++j)
                  {
                    if (*v65 != v51)
                    {
                      objc_enumerationMutation(v33);
                    }

                    [v32 addObjectsFromArray:*(*(&v64 + 1) + 8 * j)];
                  }

                  v50 = [v33 countByEnumeratingWithState:&v64 objects:v84 count:16];
                }

                while (v50);
              }

              v53 = MEMORY[0x277CBFEF8];
              v39 = [MEMORY[0x277CBFF78] sequenceWithStringArray:v32];
              v40 = [v53 featureValueWithSequence:v39];
            }

            v54 = v40;
            v7 = v62;
            [v62 setObject:v40 forKeyedSubscript:v12];

            goto LABEL_42;
          }
        }

        else
        {
          if (type == 1)
          {
            v75[0] = MEMORY[0x277D85DD0];
            v75[1] = 3221225472;
            v75[2] = __45__PPCoreMLUtils_flattenFeatureProviderArray___block_invoke;
            v75[3] = &unk_278979350;
            v75[4] = v12;
            v42 = [arrayCopy _pas_mappedArrayWithTransform:v75];
            v43 = MEMORY[0x277CBFEF8];
            v44 = [(PPCoreMLUtils *)self _multiArrayForNumberArray:v42];
            v45 = [v43 featureValueWithMultiArray:v44];
LABEL_32:
            v47 = v45;
            [v7 setObject:v45 forKeyedSubscript:v12];

            goto LABEL_43;
          }

          if (type == 2)
          {
            v16 = objc_alloc(MEMORY[0x277CBFF48]);
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(arrayCopy, "count")}];
            v86 = v17;
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
            v19 = [v16 initWithShape:v18 dataType:65568 error:0];

            if ([arrayCopy count])
            {
              v20 = 0;
              do
              {
                v21 = MEMORY[0x277CCABB0];
                v22 = [arrayCopy objectAtIndexedSubscript:v20];
                v23 = [v22 featureValueForName:v12];
                [v23 doubleValue];
                v24 = [v21 numberWithDouble:?];
                [v19 setObject:v24 atIndexedSubscript:v20];

                ++v20;
              }

              while (v20 < [arrayCopy count]);
            }

            if (!v19)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:v59 object:self file:@"PPCoreMLUtils.m" lineNumber:85 description:@"PPCoreMLUtils: was unable to allocate feature array"];
            }

            v25 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v19];
            v7 = v62;
            [v62 setObject:v25 forKeyedSubscript:v12];

LABEL_42:
            v10 = v61;
            goto LABEL_43;
          }
        }

        v41 = pp_default_log_handle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          *buf = 134218242;
          v81 = type;
          v82 = 2112;
          v83 = v12;
          _os_log_fault_impl(&dword_23224A000, v41, OS_LOG_TYPE_FAULT, "PPCoreMLUtilities: Tried to flatten a feature of type %ld, which is not supported. Feature: %@", buf, 0x16u);
        }

LABEL_43:
        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
      if (!v9)
      {
LABEL_45:

        v56 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v7 error:0];
        goto LABEL_47;
      }
    }
  }

  v56 = 0;
LABEL_47:

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

id __45__PPCoreMLUtils_flattenFeatureProviderArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 featureValueForName:*(a1 + 32)];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "int64Value")}];

  return v4;
}

+ (id)_multiArrayForNumberArray:(uint64_t)array
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_alloc(MEMORY[0x277CBFF48]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
  v13[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v7 = [v4 initWithShape:v6 dataType:65568 error:0];

  if ([v2 count])
  {
    v8 = 0;
    do
    {
      v9 = [v2 objectAtIndexedSubscript:v8];
      [v7 setObject:v9 atIndexedSubscript:v8];

      ++v8;
    }

    while (v8 < [v2 count]);
  }

  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__multiArrayForNumberArray_ object:v3 file:@"PPCoreMLUtils.m" lineNumber:53 description:@"PPCoreMLUtils: Unable to construct multiarray"];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

id __45__PPCoreMLUtils_flattenFeatureProviderArray___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 featureValueForName:*(a1 + 32)];
  v3 = [v2 stringValue];

  return v3;
}

id __45__PPCoreMLUtils_flattenFeatureProviderArray___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 featureValueForName:*(a1 + 32)];
  v3 = [v2 sequenceValue];
  v4 = [v3 int64Values];

  return v4;
}

id __45__PPCoreMLUtils_flattenFeatureProviderArray___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 featureValueForName:*(a1 + 32)];
  v3 = [v2 sequenceValue];
  v4 = [v3 stringValues];

  return v4;
}

@end