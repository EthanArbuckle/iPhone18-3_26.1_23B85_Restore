@interface SXDataTableComponentSizerFactory
- (SXDataTableComponentSizerFactory)initWithDOMObjectProvider:(id)a3 textComponentLayoutHosting:(id)a4 textSourceFactory:(id)a5 recordValueTransformerFactory:(id)a6;
- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6;
@end

@implementation SXDataTableComponentSizerFactory

- (SXDataTableComponentSizerFactory)initWithDOMObjectProvider:(id)a3 textComponentLayoutHosting:(id)a4 textSourceFactory:(id)a5 recordValueTransformerFactory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SXDataTableComponentSizerFactory;
  v15 = [(SXDataTableComponentSizerFactory *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_DOMObjectProvider, a3);
    objc_storeStrong(&v16->_textComponentLayoutHosting, a4);
    objc_storeStrong(&v16->_textSourceFactory, a5);
    objc_storeStrong(&v16->_recordValueTransformerFactory, a6);
  }

  return v16;
}

- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 componentStyleForComponent:v13];
  v15 = [SXDataTableComponentSizer alloc];
  v16 = [(SXDataTableComponentSizerFactory *)self textComponentLayoutHosting];
  v17 = [(SXDataTableComponentSizerFactory *)self textSourceFactory];
  v18 = [(SXDataTableComponentSizerFactory *)self recordValueTransformerFactory];
  v19 = [(SXDataTableComponentSizer *)v15 initWithComponent:v13 componentLayout:v12 componentStyle:v14 DOMObjectProvider:v10 layoutOptions:v11 textComponentLayoutHosting:v16 textSourceFactory:v17 recordValueTransformerFactory:v18];

  return v19;
}

@end