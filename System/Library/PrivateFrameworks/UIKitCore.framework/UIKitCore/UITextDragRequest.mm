@interface UITextDragRequest
- (UITextDragRequest)initWithRange:(id)a3 inSession:(id)a4;
@end

@implementation UITextDragRequest

- (UITextDragRequest)initWithRange:(id)a3 inSession:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UITextDragRequest;
  v9 = [(UITextDragRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dragRange, a3);
    objc_storeStrong(&v10->_dragSession, a4);
    v11 = [v8 items];
    existingItems = v10->_existingItems;
    v10->_existingItems = v11;
  }

  return v10;
}

@end