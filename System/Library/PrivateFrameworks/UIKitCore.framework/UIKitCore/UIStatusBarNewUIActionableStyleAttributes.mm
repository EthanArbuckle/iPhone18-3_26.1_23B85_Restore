@interface UIStatusBarNewUIActionableStyleAttributes
- (UIStatusBarNewUIActionableStyleAttributes)initWithRequest:(id)request backgroundColor:(id)color foregroundColor:(id)foregroundColor hasBusyBackground:(BOOL)background;
@end

@implementation UIStatusBarNewUIActionableStyleAttributes

- (UIStatusBarNewUIActionableStyleAttributes)initWithRequest:(id)request backgroundColor:(id)color foregroundColor:(id)foregroundColor hasBusyBackground:(BOOL)background
{
  backgroundCopy = background;
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = UIStatusBarNewUIActionableStyleAttributes;
  v11 = [(UIStatusBarNewUIStyleAttributes *)&v14 initWithRequest:requestCopy backgroundColor:color foregroundColor:foregroundColor hasBusyBackground:backgroundCopy];
  if (v11)
  {
    v12 = [requestCopy style] != 214 && objc_msgSend(requestCopy, "style") != 111;
    [(UIStatusBarStyleAttributes *)v11 setPulsingAnimationEnabled:v12];
  }

  return v11;
}

@end