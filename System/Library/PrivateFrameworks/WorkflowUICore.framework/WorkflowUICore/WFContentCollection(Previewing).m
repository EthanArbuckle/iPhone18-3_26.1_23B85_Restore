@interface WFContentCollection(Previewing)
- (void)generatePreviewControllerDataSource:()Previewing;
- (void)previewProxyItemAtIndex:()Previewing refreshBlock:;
@end

@implementation WFContentCollection(Previewing)

- (void)previewProxyItemAtIndex:()Previewing refreshBlock:
{
  v6 = a4;
  v7 = objc_getAssociatedObject(a1, &proxiesKey);
  if (!v7)
  {
    v7 = [MEMORY[0x277CCAC18] strongObjectsPointerArray];
    v8 = [a1 items];
    [v7 setCount:{objc_msgSend(v8, "count")}];

    objc_setAssociatedObject(a1, &proxiesKey, v7, 1);
  }

  if ([v7 count] > a3 && !objc_msgSend(v7, "pointerAtIndex:", a3))
  {
    v9 = objc_opt_new();
    v10 = [a1 items];
    v11 = [v10 objectAtIndex:a3];
    [v9 setItem:v11];

    [v9 setRefreshBlock:v6];
    [v7 replacePointerAtIndex:a3 withPointer:v9];
    v12 = objc_getAssociatedObject(a1, &originalCollectionKey);
    if ([v12 numberOfItems] <= a3)
    {
      v14 = 0;
    }

    else
    {
      v13 = [v12 items];
      v14 = [v13 objectAtIndex:a3];

      if (v14)
      {
        v15 = [v9 item];
        v16 = [v14 isEqual:v15];

        if ((v16 & 1) == 0)
        {
          v20 = MEMORY[0x277D85DD0];
          v21 = 3221225472;
          v22 = __72__WFContentCollection_Previewing__previewProxyItemAtIndex_refreshBlock___block_invoke;
          v23 = &unk_279EF51A0;
          v24 = v9;
          v14 = v14;
          v25 = v14;
          [v14 prepareForPresentationWithCompletionHandler:&v20];
        }
      }
    }
  }

  if ([v7 count] <= a3)
  {
    v17 = 0;
  }

  else
  {
    v17 = [v7 pointerAtIndex:a3];
  }

  v18 = v17;

  return v17;
}

- (void)generatePreviewControllerDataSource:()Previewing
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__WFContentCollection_Previewing__generatePreviewControllerDataSource___block_invoke_7;
    v7[3] = &unk_279EF5070;
    v7[4] = a1;
    v9 = a2;
    v8 = v5;
    [a1 transformItemsUsingBlock:&__block_literal_global_277 completionHandler:v7];
  }
}

@end