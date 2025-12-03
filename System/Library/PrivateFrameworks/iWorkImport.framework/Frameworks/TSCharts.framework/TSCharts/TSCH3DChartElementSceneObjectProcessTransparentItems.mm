@interface TSCH3DChartElementSceneObjectProcessTransparentItems
- (void)processElementInfo:(id)info eachValue:(BOOL)value;
@end

@implementation TSCH3DChartElementSceneObjectProcessTransparentItems

- (void)processElementInfo:(id)info eachValue:(BOOL)value
{
  infoCopy = info;
  delayedItems = self->super._delayedItems;
  v25 = infoCopy;
  v11 = objc_msgSend_copy(infoCopy, v7, v8, v9, v10);
  objc_msgSend_addObject_(delayedItems, v12, v13, v14, v15, v11);

  v20 = objc_msgSend_lastObject(self->super._delayedItems, v16, v17, v18, v19);
  objc_msgSend_setTwoPasses_(v20, v21, v22, v23, v24, 1);
}

@end