@interface PXGPPTLayoutTester
+ (NSArray)mockPaddingValues;
- (CGRect)generatedLayout:(id)layout bestCropRectForInputItemAtIndex:(unsigned int)index withAspectRatio:(double)ratio;
- (id)generatedLayout:(id)layout inputItemAtIndex:(unsigned int)index;
- (void)_iterateEditorialConfigurationsForItemsCount:(int64_t)count itemsIncrement:(int64_t)increment handler:(id)handler;
- (void)_iterateGridConfigurationsForItemsCount:(int64_t)count itemsIncrement:(int64_t)increment handler:(id)handler;
- (void)runEditorialLayoutTestWithOptions:(id)options completionHandler:(id)handler;
- (void)runGridLayoutTestWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation PXGPPTLayoutTester

- (void)_iterateEditorialConfigurationsForItemsCount:(int64_t)count itemsIncrement:(int64_t)increment handler:(id)handler
{
  handlerCopy = handler;
  allLayoutMetricConfigurationSizes = [off_1E7721798 allLayoutMetricConfigurationSizes];
  v8 = +[PXGPPTLayoutTester mockPaddingValues];
  countCopy = count;
  if (increment < count)
  {
    incrementCopy = increment;
    v33 = allLayoutMetricConfigurationSizes;
    do
    {
      if ([allLayoutMetricConfigurationSizes count])
      {
        v10 = 0;
        do
        {
          v11 = [allLayoutMetricConfigurationSizes objectAtIndexedSubscript:v10];
          [v11 CGSizeValue];
          v13 = v12;
          v15 = v14;

          if ([v8 count])
          {
            v16 = 0;
            do
            {
              v17 = [v8 objectAtIndexedSubscript:v16];
              [v17 PXEdgeInsetsValue];
              v19 = v18;
              v21 = v20;
              v23 = v22;
              v25 = v24;

              v26 = 0;
              v27 = 1;
              do
              {
                v28 = 0;
                v29 = v27;
                v30 = qword_1A5381380[v26];
                do
                {
                  for (i = 1; i != 3; ++i)
                  {
                    handlerCopy[2](handlerCopy, incrementCopy, v30, v28, i, v13, v15, v19, v21, v23, v25);
                  }

                  ++v28;
                }

                while (v28 != 5);
                v27 = 0;
                v26 = 1;
              }

              while ((v29 & 1) != 0);
              ++v16;
            }

            while (v16 < [v8 count]);
          }

          ++v10;
          allLayoutMetricConfigurationSizes = v33;
        }

        while (v10 < [v33 count]);
      }

      incrementCopy += increment;
    }

    while (incrementCopy < countCopy);
  }
}

- (void)_iterateGridConfigurationsForItemsCount:(int64_t)count itemsIncrement:(int64_t)increment handler:(id)handler
{
  handlerCopy = handler;
  allLayoutMetricConfigurationSizes = [off_1E7721798 allLayoutMetricConfigurationSizes];
  v6 = +[PXGPPTLayoutTester mockPaddingValues];
  v7 = 0;
  v8 = 1;
  v34 = allLayoutMetricConfigurationSizes;
  do
  {
    v31 = v8;
    if (increment < count)
    {
      v9 = *(&xmmword_1A5301350 + v7);
      incrementCopy = increment;
      do
      {
        if ([allLayoutMetricConfigurationSizes count])
        {
          v11 = 0;
          do
          {
            v12 = [allLayoutMetricConfigurationSizes objectAtIndexedSubscript:v11];
            [v12 CGSizeValue];
            v14 = v13;
            v16 = v15;

            if ([v6 count])
            {
              v17 = 0;
              do
              {
                v18 = [v6 objectAtIndexedSubscript:v17];
                [v18 PXEdgeInsetsValue];
                v20 = v19;
                v22 = v21;
                v24 = v23;
                v26 = v25;

                for (i = 1; i != 10; ++i)
                {
                  for (j = 0; j != 10; ++j)
                  {
                    for (k = 1; k != 3; ++k)
                    {
                      v30 = objc_autoreleasePoolPush();
                      handlerCopy[2](handlerCopy, v9, incrementCopy, i, j, k, v14, v16, v20, v22, v24, v26);
                      objc_autoreleasePoolPop(v30);
                    }
                  }
                }

                ++v17;
              }

              while (v17 < [v6 count]);
            }

            ++v11;
            allLayoutMetricConfigurationSizes = v34;
          }

          while (v11 < [v34 count]);
        }

        incrementCopy += increment;
      }

      while (incrementCopy < count);
    }

    v8 = 0;
    v7 = 1;
  }

  while ((v31 & 1) != 0);
}

- (CGRect)generatedLayout:(id)layout bestCropRectForInputItemAtIndex:(unsigned int)index withAspectRatio:(double)ratio
{
  v6 = [(PXGPPTLayoutTester *)self inputItems:layout];
  v7 = [v6 objectAtIndexedSubscript:index];
  [v7 preferredCropRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)generatedLayout:(id)layout inputItemAtIndex:(unsigned int)index
{
  inputItems = [(PXGPPTLayoutTester *)self inputItems];
  v6 = [inputItems objectAtIndexedSubscript:index];

  return v6;
}

- (void)runEditorialLayoutTestWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v9 = [optionsCopy objectForKeyedSubscript:@"itemsCount"];

  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPPTLayoutTester.m" lineNumber:71 description:@"itemsCount option is required to run test"];
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"itemsIncrement"];

  if (!v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGPPTLayoutTester.m" lineNumber:72 description:@"itemsIncrement option is required to run test"];
  }

  v11 = [optionsCopy objectForKeyedSubscript:@"itemsCount"];
  integerValue = [v11 integerValue];

  v13 = [optionsCopy objectForKeyedSubscript:@"itemsIncrement"];
  integerValue2 = [v13 integerValue];

  v15 = [PXGPPTLayoutTesterItemInput createItemInputsForCount:integerValue];
  [(PXGPPTLayoutTester *)self setInputItems:v15];

  v16 = objc_alloc_init(PXEditorialTungstenLayout);
  [(PXGItemsLayout *)v16 setDelegate:self];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3599;
  v37 = __Block_byref_object_dispose__3600;
  v38 = &stru_1F1741150;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3599;
  v31 = __Block_byref_object_dispose__3600;
  v32 = &stru_1F1741150;
  v17 = objc_alloc_init(PXStatsCalculator);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__PXGPPTLayoutTester_runEditorialLayoutTestWithOptions_completionHandler___block_invoke;
  v22[3] = &unk_1E772D9C8;
  v18 = v16;
  v23 = v18;
  v19 = v17;
  v24 = v19;
  v25 = &v33;
  v26 = &v27;
  [(PXGPPTLayoutTester *)self _iterateEditorialConfigurationsForItemsCount:integerValue itemsIncrement:integerValue2 handler:v22];
  handlerCopy[2](handlerCopy, v19, v34[5], v28[5]);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

void __74__PXGPPTLayoutTester_runEditorialLayoutTestWithOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  [*(a1 + 32) setReferenceSize:?];
  [*(a1 + 32) setPadding:{a8, a9, a10, a11}];
  [*(a1 + 32) setNumberOfColumns:a3];
  [*(a1 + 32) setNumberOfItems:a2];
  [*(a1 + 32) setInteritemSpacing:a4];
  [*(a1 + 32) setDisplayScale:a5];
  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) updateIfNeeded];
  v21 = CFAbsoluteTimeGetCurrent() - Current;
  [*(a1 + 40) addValue:v21];
  obj = [*(a1 + 32) diagnosticDescription];
  [*(a1 + 40) min];
  if (v21 == v22)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  }

  [*(a1 + 40) max];
  if (v21 == v23)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  }
}

- (void)runGridLayoutTestWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v9 = [optionsCopy objectForKeyedSubscript:@"itemsCount"];

  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPPTLayoutTester.m" lineNumber:34 description:@"itemsCount option is required to run test"];
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"itemsIncrement"];

  if (!v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGPPTLayoutTester.m" lineNumber:35 description:@"itemsIncrement option is required to run test"];
  }

  v11 = [optionsCopy objectForKeyedSubscript:@"itemsCount"];
  integerValue = [v11 integerValue];

  v13 = [optionsCopy objectForKeyedSubscript:@"itemsIncrement"];
  integerValue2 = [v13 integerValue];

  v15 = objc_alloc_init(off_1E7721600);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3599;
  v36 = __Block_byref_object_dispose__3600;
  v37 = &stru_1F1741150;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3599;
  v30 = __Block_byref_object_dispose__3600;
  v31 = &stru_1F1741150;
  v16 = objc_alloc_init(PXStatsCalculator);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__PXGPPTLayoutTester_runGridLayoutTestWithOptions_completionHandler___block_invoke;
  v21[3] = &unk_1E772D9A0;
  v17 = v15;
  v22 = v17;
  v18 = v16;
  v23 = v18;
  v24 = &v32;
  v25 = &v26;
  [(PXGPPTLayoutTester *)self _iterateGridConfigurationsForItemsCount:integerValue itemsIncrement:integerValue2 handler:v21];
  handlerCopy[2](handlerCopy, v18, v33[5], v27[5]);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

void __69__PXGPPTLayoutTester_runGridLayoutTestWithOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  [*(a1 + 32) setStyle:a2];
  [*(a1 + 32) setReferenceSize:{a7, a8}];
  [*(a1 + 32) setPadding:{a9, a10, a11, a12}];
  [*(a1 + 32) setNumberOfColumns:a4];
  [*(a1 + 32) setNumberOfItems:a3];
  [*(a1 + 32) setInterItemSpacing:{a5, a5}];
  [*(a1 + 32) setDisplayScale:a6];
  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) updateIfNeeded];
  v24 = CFAbsoluteTimeGetCurrent() - Current;
  [*(a1 + 40) addValue:v24];
  obj = [*(a1 + 32) diagnosticDescription];
  [*(a1 + 40) min];
  if (v24 == v25)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  }

  [*(a1 + 40) max];
  if (v24 == v26)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), obj);
  }
}

+ (NSArray)mockPaddingValues
{
  if (mockPaddingValues_onceToken != -1)
  {
    dispatch_once(&mockPaddingValues_onceToken, &__block_literal_global_3622);
  }

  v3 = mockPaddingValues_paddingValues;

  return v3;
}

void __39__PXGPPTLayoutTester_mockPaddingValues__block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B098] valueWithPXEdgeInsets:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];
  PXEdgeInsetsMake();
}

@end