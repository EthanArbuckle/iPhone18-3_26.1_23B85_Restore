@interface _PSPendingShowControllerPayload
- (_PSPendingShowControllerPayload)initWithViewControllerToPresent:(id)a3 animate:(BOOL)a4;
@end

@implementation _PSPendingShowControllerPayload

- (_PSPendingShowControllerPayload)initWithViewControllerToPresent:(id)a3 animate:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _PSPendingShowControllerPayload;
  v8 = [(_PSPendingShowControllerPayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewControllerToPresent, a3);
    v9->_animate = a4;
  }

  return v9;
}

@end