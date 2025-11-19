@interface SXDOMFactory
- (SXDOMFactory)initWithDocumentProvider:(id)a3;
- (id)createDOM;
@end

@implementation SXDOMFactory

- (SXDOMFactory)initWithDocumentProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXDOMFactory;
  v6 = [(SXDOMFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentProvider, a3);
  }

  return v7;
}

- (id)createDOM
{
  v2 = [(SXDOMFactory *)self documentProvider];
  v3 = [v2 document];

  v4 = [SXComponents alloc];
  v5 = [v3 components];
  v6 = [v5 NSArray];
  v24 = [(SXComponents *)v4 initWithArray:v6];

  v23 = objc_alloc_init(SXDOMAnalysis);
  v18 = [SXDOM alloc];
  v22 = [v3 componentLayouts];
  v7 = [v22 NSDictionary];
  v21 = [v3 componentStyles];
  v8 = [v21 NSDictionary];
  v20 = [v3 componentTextStyles];
  v9 = [v20 NSDictionary];
  v17 = [v3 textStyles];
  v10 = [v17 NSDictionary];
  v11 = [v3 resources];
  v12 = [v11 NSDictionary];
  v13 = [v3 autoplacement];
  v14 = [v3 documentStyle];
  v15 = [v3 metadata];
  v19 = [(SXDOM *)v18 initWithComponents:v24 componentLayouts:v7 componentStyles:v8 componentTextStyles:v9 textStyles:v10 resources:v12 autoPlacement:v13 documentStyle:v14 analysis:v23 metadata:v15];

  return v19;
}

@end