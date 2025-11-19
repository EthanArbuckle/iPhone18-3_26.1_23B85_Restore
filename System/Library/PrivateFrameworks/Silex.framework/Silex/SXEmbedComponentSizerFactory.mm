@interface SXEmbedComponentSizerFactory
- (SXEmbedComponentSizerFactory)initWithDOMObjectProvider:(id)a3 embedDataProvider:(id)a4;
- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6;
@end

@implementation SXEmbedComponentSizerFactory

- (SXEmbedComponentSizerFactory)initWithDOMObjectProvider:(id)a3 embedDataProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXEmbedComponentSizerFactory;
  v9 = [(SXEmbedComponentSizerFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, a3);
    objc_storeStrong(&v10->_embedDataProvider, a4);
  }

  return v10;
}

- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 componentStyleForComponent:v13];
  v15 = [SXEmbedComponentSizer alloc];
  v16 = [(SXEmbedComponentSizerFactory *)self embedDataProvider];
  v17 = [(SXEmbedComponentSizer *)v15 initWithComponent:v13 componentLayout:v12 componentStyle:v14 DOMObjectProvider:v10 layoutOptions:v11 embedDataProvider:v16];

  return v17;
}

@end