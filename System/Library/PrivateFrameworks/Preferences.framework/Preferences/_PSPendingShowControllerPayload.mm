@interface _PSPendingShowControllerPayload
- (_PSPendingShowControllerPayload)initWithViewControllerToPresent:(id)present animate:(BOOL)animate;
@end

@implementation _PSPendingShowControllerPayload

- (_PSPendingShowControllerPayload)initWithViewControllerToPresent:(id)present animate:(BOOL)animate
{
  presentCopy = present;
  v11.receiver = self;
  v11.super_class = _PSPendingShowControllerPayload;
  v8 = [(_PSPendingShowControllerPayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewControllerToPresent, present);
    v9->_animate = animate;
  }

  return v9;
}

@end