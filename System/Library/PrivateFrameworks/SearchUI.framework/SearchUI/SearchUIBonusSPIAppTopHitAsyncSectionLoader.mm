@interface SearchUIBonusSPIAppTopHitAsyncSectionLoader
+ (BOOL)supportsSectionModel:(id)model;
- (void)fetchCardSectionsWithCompletionHandler:(id)handler;
@end

@implementation SearchUIBonusSPIAppTopHitAsyncSectionLoader

+ (BOOL)supportsSectionModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___SearchUIBonusSPIAppTopHitAsyncSectionLoader;
  if (objc_msgSendSuper2(&v12, sel_supportsSectionModel_, modelCopy))
  {
    v5 = MEMORY[0x1E69D3EA8];
    rowModels = [modelCopy rowModels];
    firstObject = [rowModels firstObject];
    identifyingResult = [firstObject identifyingResult];
    resultBundleId = [identifyingResult resultBundleId];
    v10 = [v5 supportsBonusSPI:resultBundleId];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)fetchCardSectionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(SearchUIAsyncSectionLoader *)self delegate];
  deviceIsAuthenticated = [delegate deviceIsAuthenticated];

  if ((deviceIsAuthenticated & 1) != 0 && ([(SearchUIAppTopHitAsyncSectionLoader *)self bundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = WFTopHitContextualActionTypeForBundleIdentifier(), v7, v8))
  {
    v9 = MEMORY[0x1E69E0DC0];
    maxNumOfTopHitEntities = [objc_opt_class() maxNumOfTopHitEntities];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__SearchUIBonusSPIAppTopHitAsyncSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E85B41D8;
    v12[4] = self;
    v13 = handlerCopy;
    [v9 getTopHitContextualActionsForType:v8 limit:maxNumOfTopHitEntities completion:v12];
  }

  else
  {
    v11 = [(SearchUIAppTopHitAsyncSectionLoader *)self responseForCardSections:MEMORY[0x1E695E0F0] animated:0];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

void __86__SearchUIBonusSPIAppTopHitAsyncSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  *&v51[5] = *MEMORY[0x1E69E9840];
  v49 = a2;
  v5 = a3;
  if (!v5 && v49 && [v49 count])
  {
    v40 = objc_opt_new();
    v8 = [v49 count];
    v9 = [objc_opt_class() maxNumOfTopHitEntities];
    if (v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = 0;
      v12 = 0x1E85B0000uLL;
      v39 = a1;
      do
      {
        v13 = [v49 objectAtIndexedSubscript:v11];
        v14 = *(v12 + 2032);
        v15 = [v13 icon];
        v16 = [v14 imageFromContexualActionIcon:v15];

        v17 = *(v12 + 2032);
        v18 = [v13 accessoryIcon];
        v19 = [v17 imageFromContexualActionIcon:v18];
        [v16 setBadgingImage:v19];

        v20 = objc_opt_new();
        v21 = WFDataFromSpotlightResultRunnable();
        v22 = 0;
        [v20 setIntentMessageData:v21];

        v23 = [*(a1 + 32) bundleIdentifier];
        [v20 setApplicationBundleIdentifier:v23];

        v24 = [v13 identifier];
        [v20 setCommandDetail:v24];

        if (v22)
        {
          v25 = v16;
          v26 = SearchUIAppTopHitSectionLoaderLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            __86__SearchUIBonusSPIAppTopHitAsyncSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke_cold_1(v50, v22, v51, v26);
          }
        }

        else
        {
          [v20 setIsRunnableWorkflow:1];
          [v13 spotlightItem];
          v26 = v48 = v16;
          v45 = objc_alloc(MEMORY[0x1E69D3E70]);
          v43 = [v26 uniqueIdentifier];
          v42 = [*(a1 + 32) bundleIdentifier];
          v47 = [v26 attributeSet];
          v44 = [v47 serializedAttributes];
          v41 = [v44 allKeys];
          v27 = [v26 attributeSet];
          v28 = [v27 serializedAttributes];
          v29 = [v28 allValues];
          v30 = [v13 subtitle];
          v46 = [v45 initWithIdentifier:v43 bundleIdentifier:v42 protectionClass:@"Priority" attributeKeys:v41 attributeValues:v29 type:3 completion:v30];

          v12 = 0x1E85B0000;
          a1 = v39;

          v31 = *(v39 + 32);
          v32 = [v13 subtitle];
          v33 = [v31 buildVerticalLayoutCardSectionFromResult:v48 title:v32 subtitle:0 command:v20];

          v22 = 0;
          [v33 setSpotlightBackingResult:v46];
          [v40 addObject:v33];

          v25 = v48;
        }

        ++v11;
        v34 = [v49 count];
        v35 = [objc_opt_class() maxNumOfTopHitEntities];
        if (v34 >= v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = v34;
        }
      }

      while (v11 < v36);
    }

    v37 = *(a1 + 40);
    v38 = [*(a1 + 32) responseForCardSections:v40 animated:0];
    (*(v37 + 16))(v37, v38);

    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) responseForCardSections:MEMORY[0x1E695E0F0] animated:0];
    (*(v6 + 16))(v6, v7);
  }
}

void __86__SearchUIBonusSPIAppTopHitAsyncSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 localizedDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1DA169000, a4, OS_LOG_TYPE_ERROR, "Unable to encode result runnable: %@", a1, 0xCu);
}

@end