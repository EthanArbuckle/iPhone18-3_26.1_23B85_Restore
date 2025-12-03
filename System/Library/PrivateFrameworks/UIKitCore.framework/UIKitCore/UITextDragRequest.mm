@interface UITextDragRequest
- (UITextDragRequest)initWithRange:(id)range inSession:(id)session;
@end

@implementation UITextDragRequest

- (UITextDragRequest)initWithRange:(id)range inSession:(id)session
{
  rangeCopy = range;
  sessionCopy = session;
  v14.receiver = self;
  v14.super_class = UITextDragRequest;
  v9 = [(UITextDragRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dragRange, range);
    objc_storeStrong(&v10->_dragSession, session);
    items = [sessionCopy items];
    existingItems = v10->_existingItems;
    v10->_existingItems = items;
  }

  return v10;
}

@end