@interface SXDebugComponentSizerFactory
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
@end

@implementation SXDebugComponentSizerFactory

- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  optionsCopy = options;
  layoutCopy = layout;
  componentCopy = component;
  v13 = [providerCopy componentStyleForComponent:componentCopy];
  v14 = [(SXComponentSizer *)[SXDebugComponentSizer alloc] initWithComponent:componentCopy componentLayout:layoutCopy componentStyle:v13 DOMObjectProvider:providerCopy layoutOptions:optionsCopy];

  return v14;
}

@end