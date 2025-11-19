@interface SXDOMModificationContextFactory
- (SXDOMModificationContextFactory)initWithDocumentProvider:(id)a3;
- (id)createModificationContextWithLayoutOptions:(id)a3;
@end

@implementation SXDOMModificationContextFactory

- (SXDOMModificationContextFactory)initWithDocumentProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXDOMModificationContextFactory;
  v6 = [(SXDOMModificationContextFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentProvider, a3);
  }

  return v7;
}

- (id)createModificationContextWithLayoutOptions:(id)a3
{
  v4 = a3;
  v5 = [SXDOMModificationContext alloc];
  v6 = [(SXDOMModificationContextFactory *)self documentProvider];
  v7 = [v6 document];
  v8 = [v7 specVersion];
  v9 = [(SXDOMModificationContextFactory *)self documentProvider];
  v10 = [v9 document];
  v11 = [v10 metadata];
  v12 = [v11 experiment];
  v13 = [(SXDOMModificationContext *)v5 initWithLayoutOptions:v4 specVersion:v8 experiment:v12];

  return v13;
}

@end