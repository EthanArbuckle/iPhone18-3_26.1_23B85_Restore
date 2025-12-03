@interface WFContentCollection(Previewing)
- (void)generatePreviewControllerDataSource:()Previewing;
- (void)previewProxyItemAtIndex:()Previewing refreshBlock:;
@end

@implementation WFContentCollection(Previewing)

- (void)previewProxyItemAtIndex:()Previewing refreshBlock:
{
  v6 = a4;
  strongObjectsPointerArray = objc_getAssociatedObject(self, &proxiesKey);
  if (!strongObjectsPointerArray)
  {
    strongObjectsPointerArray = [MEMORY[0x277CCAC18] strongObjectsPointerArray];
    items = [self items];
    [strongObjectsPointerArray setCount:{objc_msgSend(items, "count")}];

    objc_setAssociatedObject(self, &proxiesKey, strongObjectsPointerArray, 1);
  }

  if ([strongObjectsPointerArray count] > a3 && !objc_msgSend(strongObjectsPointerArray, "pointerAtIndex:", a3))
  {
    v9 = objc_opt_new();
    items2 = [self items];
    v11 = [items2 objectAtIndex:a3];
    [v9 setItem:v11];

    [v9 setRefreshBlock:v6];
    [strongObjectsPointerArray replacePointerAtIndex:a3 withPointer:v9];
    v12 = objc_getAssociatedObject(self, &originalCollectionKey);
    if ([v12 numberOfItems] <= a3)
    {
      v14 = 0;
    }

    else
    {
      items3 = [v12 items];
      v14 = [items3 objectAtIndex:a3];

      if (v14)
      {
        item = [v9 item];
        v16 = [v14 isEqual:item];

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

  if ([strongObjectsPointerArray count] <= a3)
  {
    v17 = 0;
  }

  else
  {
    v17 = [strongObjectsPointerArray pointerAtIndex:a3];
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
    v7[4] = self;
    v9 = a2;
    v8 = v5;
    [self transformItemsUsingBlock:&__block_literal_global_277 completionHandler:v7];
  }
}

@end