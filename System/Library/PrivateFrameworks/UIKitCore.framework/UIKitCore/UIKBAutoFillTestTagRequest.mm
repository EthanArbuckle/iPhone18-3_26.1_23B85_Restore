@interface UIKBAutoFillTestTagRequest
- (UIKBAutoFillTestTagRequest)initWithRequestType:(int64_t)a3 view:(id)a4;
@end

@implementation UIKBAutoFillTestTagRequest

- (UIKBAutoFillTestTagRequest)initWithRequestType:(int64_t)a3 view:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = UIKBAutoFillTestTagRequest;
  v8 = [(UIKBAutoFillTestTagRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_requestType = a3;
    objc_storeStrong(&v8->_view, a4);
    v10 = v9;
  }

  return v9;
}

@end