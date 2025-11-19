@interface SXTextSourceFactory
- (SXTextSourceFactory)initWithSmartFieldFactory:(id)a3 documentLanguageProvider:(id)a4 fontAttributesConstructor:(id)a5;
- (id)createTextSourceWithString:(id)a3 dataSource:(id)a4;
@end

@implementation SXTextSourceFactory

- (SXTextSourceFactory)initWithSmartFieldFactory:(id)a3 documentLanguageProvider:(id)a4 fontAttributesConstructor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXTextSourceFactory;
  v12 = [(SXTextSourceFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smartFieldFactory, a3);
    objc_storeStrong(&v13->_documentLanguageProvider, a4);
    objc_storeStrong(&v13->_fontAttributesConstructor, a5);
  }

  return v13;
}

- (id)createTextSourceWithString:(id)a3 dataSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SXTextSource alloc];
  v9 = [(SXTextSourceFactory *)self smartFieldFactory];
  v10 = [(SXTextSourceFactory *)self documentLanguageProvider];
  v11 = [(SXTextSourceFactory *)self fontAttributesConstructor];
  v12 = [(SXTextSource *)v8 initWithString:v7 smartFieldFactory:v9 dataSource:v6 documentLanguageProvider:v10 fontAttributesConstructor:v11];

  return v12;
}

@end