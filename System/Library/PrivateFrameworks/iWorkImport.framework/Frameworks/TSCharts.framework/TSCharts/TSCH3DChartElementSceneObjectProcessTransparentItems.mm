@interface TSCH3DChartElementSceneObjectProcessTransparentItems
- (void)processElementInfo:(id)a3 eachValue:(BOOL)a4;
@end

@implementation TSCH3DChartElementSceneObjectProcessTransparentItems

- (void)processElementInfo:(id)a3 eachValue:(BOOL)a4
{
  v5 = a3;
  delayedItems = self->super._delayedItems;
  v25 = v5;
  v11 = objc_msgSend_copy(v5, v7, v8, v9, v10);
  objc_msgSend_addObject_(delayedItems, v12, v13, v14, v15, v11);

  v20 = objc_msgSend_lastObject(self->super._delayedItems, v16, v17, v18, v19);
  objc_msgSend_setTwoPasses_(v20, v21, v22, v23, v24, 1);
}

@end