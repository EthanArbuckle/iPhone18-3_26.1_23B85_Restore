@interface PUIDSecurePassthroughWindow
- (PUIDSecurePassthroughWindow)initWithWindowScene:(id)scene;
- (id)puid_description;
@end

@implementation PUIDSecurePassthroughWindow

- (PUIDSecurePassthroughWindow)initWithWindowScene:(id)scene
{
  v8.receiver = self;
  v8.super_class = PUIDSecurePassthroughWindow;
  v3 = [(PUIDSecurePassthroughWindow *)&v8 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    _bindingLayer = [(PUIDSecurePassthroughWindow *)v3 _bindingLayer];
    [_bindingLayer setAllowsHitTesting:0];

    _bindingLayer2 = [(PUIDSecurePassthroughWindow *)v4 _bindingLayer];
    [_bindingLayer2 setDisableUpdateMask:32];
  }

  return v4;
}

- (id)puid_description
{
  v3 = objc_opt_class();
  _contextId = [(PUIDSecurePassthroughWindow *)self _contextId];
  [(PUIDSecurePassthroughWindow *)self frame];
  v5 = BSStringFromCGRect();
  v6 = [NSString stringWithFormat:@"<%@: %p contextId: %x frame: %@", v3, self, _contextId, v5];

  return v6;
}

@end