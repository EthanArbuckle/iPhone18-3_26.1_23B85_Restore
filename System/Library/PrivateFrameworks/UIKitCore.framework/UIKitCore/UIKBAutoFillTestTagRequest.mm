@interface UIKBAutoFillTestTagRequest
- (UIKBAutoFillTestTagRequest)initWithRequestType:(int64_t)type view:(id)view;
@end

@implementation UIKBAutoFillTestTagRequest

- (UIKBAutoFillTestTagRequest)initWithRequestType:(int64_t)type view:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = UIKBAutoFillTestTagRequest;
  v8 = [(UIKBAutoFillTestTagRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_requestType = type;
    objc_storeStrong(&v8->_view, view);
    v10 = v9;
  }

  return v9;
}

@end