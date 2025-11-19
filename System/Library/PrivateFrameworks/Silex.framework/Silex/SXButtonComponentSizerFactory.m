@interface SXButtonComponentSizerFactory
- (SXButtonComponentSizerFactory)initWithTextProvider:(id)a3 textSourceFactory:(id)a4;
- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6;
@end

@implementation SXButtonComponentSizerFactory

- (SXButtonComponentSizerFactory)initWithTextProvider:(id)a3 textSourceFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXButtonComponentSizerFactory;
  v9 = [(SXButtonComponentSizerFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textProvider, a3);
    objc_storeStrong(&v10->_textSourceFactory, a4);
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
  v15 = [SXButtonComponentSizer alloc];
  v16 = [(SXButtonComponentSizerFactory *)self textProvider];
  v17 = [(SXButtonComponentSizerFactory *)self textComponentLayoutHosting];
  v18 = [(SXButtonComponentSizerFactory *)self textSourceFactory];
  v19 = [(SXButtonComponentSizer *)v15 initWithComponent:v13 componentLayout:v12 componentStyle:v14 DOMObjectProvider:v10 layoutOptions:v11 textProvider:v16 textComponentLayoutHosting:v17 textSourceFactory:v18];

  return v19;
}

@end