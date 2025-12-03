@interface SXComponentTraitsProvider
- (SXComponentTraitsProvider)initWithDOMObjectProvider:(id)provider;
- (unint64_t)traitsForComponent:(id)component;
@end

@implementation SXComponentTraitsProvider

- (SXComponentTraitsProvider)initWithDOMObjectProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SXComponentTraitsProvider;
  v6 = [(SXComponentTraitsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_DOMObjectProvider, provider);
  }

  return v7;
}

- (unint64_t)traitsForComponent:(id)component
{
  componentCopy = component;
  traits = [componentCopy traits];
  style = [componentCopy style];

  if (style)
  {
    dOMObjectProvider = [(SXComponentTraitsProvider *)self DOMObjectProvider];
    v8 = [dOMObjectProvider componentStyleForComponent:componentCopy];

    if (([v8 traits] & 6) != 0)
    {
      traits |= 0x2AuLL;
    }
  }

  return traits;
}

@end