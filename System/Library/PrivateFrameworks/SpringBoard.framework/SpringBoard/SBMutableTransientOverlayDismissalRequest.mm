@interface SBMutableTransientOverlayDismissalRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setCompletionHandler:(id)handler;
@end

@implementation SBMutableTransientOverlayDismissalRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBTransientOverlayDismissalRequest *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBTransientOverlayDismissalRequest *)self _copyWithClass:v4];
}

- (void)setCompletionHandler:(id)handler
{
  v4 = [handler copy];
  completionHandler = self->super._completionHandler;
  self->super._completionHandler = v4;
}

@end