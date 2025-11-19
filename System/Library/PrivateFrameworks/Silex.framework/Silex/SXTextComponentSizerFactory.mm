@interface SXTextComponentSizerFactory
- (SXTextComponentSizerFactory)initWithDOMObjectProvider:(id)a3 textComponentLayoutHosting:(id)a4 textSourceFactory:(id)a5;
- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6;
@end

@implementation SXTextComponentSizerFactory

- (SXTextComponentSizerFactory)initWithDOMObjectProvider:(id)a3 textComponentLayoutHosting:(id)a4 textSourceFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXTextComponentSizerFactory;
  v12 = [(SXTextComponentSizerFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_DOMObjectProvider, a3);
    objc_storeStrong(&v13->_textComponentLayoutHosting, a4);
    objc_storeStrong(&v13->_textSourceFactory, a5);
  }

  return v13;
}

- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 componentStyleForComponent:v13];
  v15 = [SXTextComponentSizer alloc];
  v16 = [(SXTextComponentSizerFactory *)self textComponentLayoutHosting];
  v17 = [(SXTextComponentSizerFactory *)self textSourceFactory];
  v18 = [(SXTextComponentSizer *)v15 initWithComponent:v13 componentLayout:v12 componentStyle:v14 DOMObjectProvider:v10 layoutOptions:v11 textComponentLayoutHosting:v16 textSourceFactory:v17];

  return v18;
}

@end