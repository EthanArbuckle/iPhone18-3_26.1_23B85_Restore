@interface SXTextSourceFactory
- (SXTextSourceFactory)initWithSmartFieldFactory:(id)factory documentLanguageProvider:(id)provider fontAttributesConstructor:(id)constructor;
- (id)createTextSourceWithString:(id)string dataSource:(id)source;
@end

@implementation SXTextSourceFactory

- (SXTextSourceFactory)initWithSmartFieldFactory:(id)factory documentLanguageProvider:(id)provider fontAttributesConstructor:(id)constructor
{
  factoryCopy = factory;
  providerCopy = provider;
  constructorCopy = constructor;
  v15.receiver = self;
  v15.super_class = SXTextSourceFactory;
  v12 = [(SXTextSourceFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smartFieldFactory, factory);
    objc_storeStrong(&v13->_documentLanguageProvider, provider);
    objc_storeStrong(&v13->_fontAttributesConstructor, constructor);
  }

  return v13;
}

- (id)createTextSourceWithString:(id)string dataSource:(id)source
{
  sourceCopy = source;
  stringCopy = string;
  v8 = [SXTextSource alloc];
  smartFieldFactory = [(SXTextSourceFactory *)self smartFieldFactory];
  documentLanguageProvider = [(SXTextSourceFactory *)self documentLanguageProvider];
  fontAttributesConstructor = [(SXTextSourceFactory *)self fontAttributesConstructor];
  v12 = [(SXTextSource *)v8 initWithString:stringCopy smartFieldFactory:smartFieldFactory dataSource:sourceCopy documentLanguageProvider:documentLanguageProvider fontAttributesConstructor:fontAttributesConstructor];

  return v12;
}

@end