@interface SXVideoComponentSizerFactory
- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6;
@end

@implementation SXVideoComponentSizerFactory

- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 componentStyleForComponent:v12];
  v14 = [(SXComponentSizer *)[SXVideoComponentSizer alloc] initWithComponent:v12 componentLayout:v11 componentStyle:v13 DOMObjectProvider:v9 layoutOptions:v10];

  return v14;
}

@end