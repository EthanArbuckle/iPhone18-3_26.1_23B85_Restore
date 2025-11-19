@interface PUIDSecurePassthroughWindow
- (PUIDSecurePassthroughWindow)initWithWindowScene:(id)a3;
- (id)puid_description;
@end

@implementation PUIDSecurePassthroughWindow

- (PUIDSecurePassthroughWindow)initWithWindowScene:(id)a3
{
  v8.receiver = self;
  v8.super_class = PUIDSecurePassthroughWindow;
  v3 = [(PUIDSecurePassthroughWindow *)&v8 initWithWindowScene:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PUIDSecurePassthroughWindow *)v3 _bindingLayer];
    [v5 setAllowsHitTesting:0];

    v6 = [(PUIDSecurePassthroughWindow *)v4 _bindingLayer];
    [v6 setDisableUpdateMask:32];
  }

  return v4;
}

- (id)puid_description
{
  v3 = objc_opt_class();
  v4 = [(PUIDSecurePassthroughWindow *)self _contextId];
  [(PUIDSecurePassthroughWindow *)self frame];
  v5 = BSStringFromCGRect();
  v6 = [NSString stringWithFormat:@"<%@: %p contextId: %x frame: %@", v3, self, v4, v5];

  return v6;
}

@end