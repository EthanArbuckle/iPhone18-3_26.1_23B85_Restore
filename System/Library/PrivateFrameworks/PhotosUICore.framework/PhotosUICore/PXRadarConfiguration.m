@interface PXRadarConfiguration
- (PXRadarConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addAttachment:(id)a3;
- (void)addDiagnosticProvider:(id)a3;
- (void)addLegacyTapToRadar:(id)a3;
- (void)addScreenshot:(id)a3;
- (void)collectDiagnosticsWithCompletionHandler:(id)a3;
@end

@implementation PXRadarConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXRadarConfiguration *)self title];
  [v4 setTitle:v5];

  [v4 setComponent:{-[PXRadarConfiguration component](self, "component")}];
  [v4 setClassification:{-[PXRadarConfiguration classification](self, "classification")}];
  v6 = [(PXRadarConfiguration *)self description];
  [v4 setDescription:v6];

  v7 = [(PXRadarConfiguration *)self keywordIDs];
  [v4 setKeywordIDs:v7];

  v8 = [(PXRadarConfiguration *)self additionalExtensionIdentifiers];
  [v4 setAdditionalExtensionIdentifiers:v8];

  [v4 setAttachmentsIncludeAnyUserAsset:{-[PXRadarConfiguration attachmentsIncludeAnyUserAsset](self, "attachmentsIncludeAnyUserAsset")}];
  [v4 setWantsSystemDiagnostics:{-[PXRadarConfiguration wantsSystemDiagnostics](self, "wantsSystemDiagnostics")}];
  [v4 setWantsPhotosDiagnostics:{-[PXRadarConfiguration wantsPhotosDiagnostics](self, "wantsPhotosDiagnostics")}];
  [v4 setIsProgressUIAllowed:{-[PXRadarConfiguration isProgressUIAllowed](self, "isProgressUIAllowed")}];
  v9 = [(PXRadarConfiguration *)self completionHandler];
  [v4 setCompletionHandler:v9];

  v10 = [v4 diagnosticProviders];
  v11 = [(PXRadarConfiguration *)self diagnosticProviders];
  [v10 setArray:v11];

  v12 = [v4 screenshots];
  v13 = [(PXRadarConfiguration *)self screenshots];
  [v12 setArray:v13];

  v14 = [v4 attachments];
  v15 = [(PXRadarConfiguration *)self attachments];
  [v14 setArray:v15];

  v16 = [v4 diagnosticContainers];
  v17 = [(PXRadarConfiguration *)self diagnosticContainers];
  [v16 setArray:v17];

  return v4;
}

- (void)collectDiagnosticsWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXRadarConfiguration *)self diagnosticContainers];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(PXRadarConfiguration *)self legacyTapToRadars];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v21 + 1) + 8 * i) diagnosticDictionary];
        if (v11)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v12 = [PXFeedbackTapToRadarUtilities attachmentURLForDiagnosticDictionaries:v6 descriptionName:@"UI-Diagnostics"];
    if (v12)
    {
      v13 = [[PXTapToRadarConcreteDiagnosticContainer alloc] initWithName:@"Legacy"];
      [(PXTapToRadarConcreteDiagnosticContainer *)v13 addAttachment:v12];
      [v5 addObject:v13];
    }
  }

  v14 = [(PXRadarConfiguration *)self diagnosticProviders];
  v15 = [v14 mutableCopy];

  v16 = [(PXRadarConfiguration *)self diagnosticProviders];
  [v16 removeAllObjects];

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__36874;
  v20[4] = __Block_byref_object_dispose__36875;
  v20[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PXRadarConfiguration_collectDiagnosticsWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7730CA8;
  aBlock[5] = v20;
  v17 = v5;
  aBlock[4] = v17;
  v18 = _Block_copy(aBlock);
  v15;
  v18;
  v17;
  v4;
  PXIterateAsynchronously();
}

id __64__PXRadarConfiguration_collectDiagnosticsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = [[PXTapToRadarConcreteDiagnosticContainer alloc] initWithName:@"Errors"];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(a1 + 32) addObject:*(*(*(a1 + 40) + 8) + 40)];
    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

void __64__PXRadarConfiguration_collectDiagnosticsWithCompletionHandler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] px_popFirst];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 initWithFormat:@"%@-%p", v7, v4];

    v9 = [[PXTapToRadarConcreteDiagnosticContainer alloc] initWithName:v8];
    [v4 collectTapToRadarDiagnosticsIntoContainer:v9];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PXRadarConfiguration_collectDiagnosticsWithCompletionHandler___block_invoke_3;
    v11[3] = &unk_1E7730CD0;
    v16 = a1[6];
    v12 = a1[4];
    v10 = v9;
    v13 = v10;
    v14 = a1[5];
    v15 = v3;
    [(PXTapToRadarConcreteDiagnosticContainer *)v10 finalizeWithCompletionHandler:v11];
  }

  else
  {
    [v3 stop];
  }
}

uint64_t __64__PXRadarConfiguration_collectDiagnosticsWithCompletionHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 64);
    v5 = *(v4 + 16);
    v6 = a3;
    v7 = v5(v4);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"diagnostic collection failed with error %@", v6];

    [v7 addAttachmentWithText:v8 name:@"DiagnosticCollectionError"];
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) subproviders];
  [v9 px_insertObjects:v10 atIndex:0];

  [*(a1 + 48) addObject:*(a1 + 40)];
  v11 = *(a1 + 56);

  return [v11 next];
}

- (void)addAttachment:(id)a3
{
  v4 = a3;
  v5 = [(PXRadarConfiguration *)self attachments];
  [v5 addObject:v4];
}

- (void)addScreenshot:(id)a3
{
  v4 = a3;
  v5 = [(PXRadarConfiguration *)self screenshots];
  [v5 addObject:v4];
}

- (void)addLegacyTapToRadar:(id)a3
{
  v4 = a3;
  v5 = [(PXRadarConfiguration *)self legacyTapToRadars];
  [v5 addObject:v4];
}

- (void)addDiagnosticProvider:(id)a3
{
  v4 = a3;
  v5 = [(PXRadarConfiguration *)self diagnosticProviders];
  [v5 addObject:v4];
}

- (PXRadarConfiguration)init
{
  v15.receiver = self;
  v15.super_class = PXRadarConfiguration;
  v2 = [(PXRadarConfiguration *)&v15 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_attachmentsIncludeAnyUserAsset = 16777473;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    diagnosticProviders = v3->_diagnosticProviders;
    v3->_diagnosticProviders = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    legacyTapToRadars = v3->_legacyTapToRadars;
    v3->_legacyTapToRadars = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    screenshots = v3->_screenshots;
    v3->_screenshots = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    attachments = v3->_attachments;
    v3->_attachments = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    diagnosticContainers = v3->_diagnosticContainers;
    v3->_diagnosticContainers = v12;
  }

  return v3;
}

@end