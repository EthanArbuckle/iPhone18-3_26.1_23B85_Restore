@interface WFContentCollection
@end

@implementation WFContentCollection

void __91__WFContentCollection_QLPreviewControllerDataSource__previewController_previewItemAtIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2 && (v6 = v2, v4 = [v2 conformsToProtocol:&unk_28841D048], v3 = v6, v4))
  {
    [v6 wf_refreshPreviewItemAtIndex:*(a1 + 40)];
  }

  else
  {

    if ([*(a1 + 32) currentPreviewItemIndex] == *(a1 + 40))
    {
      v5 = *(a1 + 32);

      [v5 refreshCurrentPreviewItem];
    }
  }
}

void __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_7(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_setAssociatedObject(v5, &originalCollectionKey, *(a1 + 32), 1);
  v3 = [v5 numberOfItems];
  if (v3 != [*(a1 + 32) numberOfItems])
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"WFContentCollection+Previewing.m" lineNumber:180 description:@"The Quick Look data source should not have a different number of items"];
  }

  (*(*(a1 + 40) + 16))();
}

void __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_2;
  aBlock[3] = &unk_279EF4FF8;
  v6 = v4;
  v38 = v6;
  v7 = v5;
  v39 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [v6 preferredFileType];
  v10 = [MEMORY[0x277D79F68] typeFromFileExtension:@"md"];
  v11 = [v9 conformsToType:v10];

  if (!v11)
  {
    v14 = [v6 preferredFileType];
    if ([v14 conformsToUTType:*MEMORY[0x277CE1E50]] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v17 = [v6 preferredObjectType];
      v18 = [v17 conformsToClass:objc_opt_class()];

      if ((v18 & 1) == 0)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_4;
        v33[3] = &unk_279EF4F60;
        v34 = v8;
        v19 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
        [v6 getFileRepresentation:v33 forType:v19];

        v13 = v34;
        goto LABEL_3;
      }
    }

    else
    {
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 preferredObjectType], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "conformsToClass:", objc_opt_class()), v15, v16))
    {
LABEL_9:
      (*(v8 + 2))(v8, v6, 0);
      goto LABEL_10;
    }

    v20 = [v6 preferredFileType];
    v21 = *MEMORY[0x277CE1DA0];
    v22 = [v20 conformsToUTType:*MEMORY[0x277CE1DA0]];

    if (v22)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_5;
      v30[3] = &unk_279EF5048;
      v31 = v6;
      v32 = v8;
      v23 = [MEMORY[0x277D79F68] typeWithUTType:v21];
      [v31 getFileRepresentation:v30 forType:v23];

      v13 = v31;
      goto LABEL_3;
    }

    v24 = [v6 preferredFileType];
    if ([v24 conformsToUTType:*MEMORY[0x277CE1D78]])
    {
    }

    else
    {
      v25 = [v6 preferredFileType];
      v26 = [v25 conformsToUTType:*MEMORY[0x277CE1ED8]];

      if (!v26)
      {
        goto LABEL_9;
      }
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_6;
    v28[3] = &unk_279EF4F60;
    v29 = v8;
    v27 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E58]];
    [v6 getFileRepresentation:v28 forType:v27];

    v13 = v29;
    goto LABEL_3;
  }

  v12 = objc_opt_class();
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_3;
  v35[3] = &unk_279EF5020;
  v36 = v8;
  [v6 coerceToItemClass:v12 completionHandler:v35];
  v13 = v36;
LABEL_3:

LABEL_10:
}

void __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v7 = a3;
  v8 = v15;
  v9 = v7;
  if (!v15)
  {
    v10 = MEMORY[0x277CFC530];
    v11 = [v7 localizedDescription];
    v12 = v11;
    if (!v11)
    {
      v13 = MEMORY[0x277CCACA8];
      v3 = WFLocalizedString(@"Quick Look failed to preview %@");
      v4 = [*(a1 + 32) name];
      v12 = [v13 localizedStringWithFormat:v3, v4];
    }

    v14 = [v9 localizedFailureReason];
    v16 = [v10 itemWithObject:v12 named:v14];

    if (!v11)
    {
    }

    v8 = v16;
  }

  v17 = v8;
  (*(*(a1 + 40) + 16))();
}

void __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v11 = [a2 firstObject];
  v6 = [v11 name];
  v7 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
  v8 = [v7 fileExtension];
  v9 = [v6 stringByAppendingPathExtension:v8];
  v10 = [v11 copyWithName:v9];

  (*(*(a1 + 32) + 16))();
}

void __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CFC4F8] itemWithFile:a2];
  (*(*(a1 + 32) + 16))();
}

void __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CFC4F8];
  v4 = [a2 data];
  v11 = [v3 normalizedHTMLDocumentFromHTMLData:v4];

  v5 = MEMORY[0x277CFC4F8];
  v6 = MEMORY[0x277CFC3C8];
  v7 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
  v8 = [*(a1 + 32) name];
  v9 = [v6 fileWithData:v11 ofType:v7 proposedFilename:v8];
  v10 = [v5 itemWithFile:v9];

  (*(*(a1 + 40) + 16))();
}

void __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [MEMORY[0x277CFC2F8] itemWithFile:a2];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

@end