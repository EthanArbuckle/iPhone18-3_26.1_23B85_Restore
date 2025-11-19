@interface SBMutableTransientOverlayPresentationRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setCompletionHandler:(id)a3;
@end

@implementation SBMutableTransientOverlayPresentationRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SBTransientOverlayPresentationRequest *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SBTransientOverlayPresentationRequest *)self _copyWithClass:v4];
}

- (void)setCompletionHandler:(id)a3
{
  v4 = [a3 copy];
  completionHandler = self->super._completionHandler;
  self->super._completionHandler = v4;
}

@end