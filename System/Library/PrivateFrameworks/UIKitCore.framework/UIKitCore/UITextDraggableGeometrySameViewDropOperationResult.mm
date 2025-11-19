@interface UITextDraggableGeometrySameViewDropOperationResult
+ (UITextDraggableGeometrySameViewDropOperationResult)resultWithRange:(id)a3 targetedPreviewProvider:(id)a4;
- (UITextDraggableGeometrySameViewDropOperationResult)initWithRange:(id)a3 targetedPreviewProvider:(id)a4;
@end

@implementation UITextDraggableGeometrySameViewDropOperationResult

- (UITextDraggableGeometrySameViewDropOperationResult)initWithRange:(id)a3 targetedPreviewProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UITextDraggableGeometrySameViewDropOperationResult;
  v9 = [(UITextDraggableGeometrySameViewDropOperationResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultRange, a3);
    v11 = _Block_copy(v8);
    targetedPreviewProvider = v10->_targetedPreviewProvider;
    v10->_targetedPreviewProvider = v11;
  }

  return v10;
}

+ (UITextDraggableGeometrySameViewDropOperationResult)resultWithRange:(id)a3 targetedPreviewProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRange:v7 targetedPreviewProvider:v6];

  return v8;
}

@end