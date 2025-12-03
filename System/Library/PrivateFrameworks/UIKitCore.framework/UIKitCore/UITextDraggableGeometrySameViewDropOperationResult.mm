@interface UITextDraggableGeometrySameViewDropOperationResult
+ (UITextDraggableGeometrySameViewDropOperationResult)resultWithRange:(id)range targetedPreviewProvider:(id)provider;
- (UITextDraggableGeometrySameViewDropOperationResult)initWithRange:(id)range targetedPreviewProvider:(id)provider;
@end

@implementation UITextDraggableGeometrySameViewDropOperationResult

- (UITextDraggableGeometrySameViewDropOperationResult)initWithRange:(id)range targetedPreviewProvider:(id)provider
{
  rangeCopy = range;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = UITextDraggableGeometrySameViewDropOperationResult;
  v9 = [(UITextDraggableGeometrySameViewDropOperationResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultRange, range);
    v11 = _Block_copy(providerCopy);
    targetedPreviewProvider = v10->_targetedPreviewProvider;
    v10->_targetedPreviewProvider = v11;
  }

  return v10;
}

+ (UITextDraggableGeometrySameViewDropOperationResult)resultWithRange:(id)range targetedPreviewProvider:(id)provider
{
  providerCopy = provider;
  rangeCopy = range;
  v8 = [[self alloc] initWithRange:rangeCopy targetedPreviewProvider:providerCopy];

  return v8;
}

@end