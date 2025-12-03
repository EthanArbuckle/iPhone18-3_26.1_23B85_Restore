@interface SXDataTableTextSourceFactory
- (SXDataTableTextSourceFactory)initWithSmartFieldFactory:(id)factory documentLanguageProvider:(id)provider fontAttributesConstructor:(id)constructor;
- (id)textSourceWithFormattedText:(id)text indexPath:(id)path dataSource:(id)source;
@end

@implementation SXDataTableTextSourceFactory

- (SXDataTableTextSourceFactory)initWithSmartFieldFactory:(id)factory documentLanguageProvider:(id)provider fontAttributesConstructor:(id)constructor
{
  factoryCopy = factory;
  providerCopy = provider;
  constructorCopy = constructor;
  v15.receiver = self;
  v15.super_class = SXDataTableTextSourceFactory;
  v12 = [(SXDataTableTextSourceFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smartFieldFactory, factory);
    objc_storeStrong(&v13->_documentLanguageProvider, provider);
    objc_storeStrong(&v13->_fontAttributesConstructor, constructor);
  }

  return v13;
}

- (id)textSourceWithFormattedText:(id)text indexPath:(id)path dataSource:(id)source
{
  var1 = path.var1;
  var0 = path.var0;
  sourceCopy = source;
  textCopy = text;
  v11 = [SXDataTableTextSource alloc];
  smartFieldFactory = [(SXDataTableTextSourceFactory *)self smartFieldFactory];
  documentLanguageProvider = [(SXDataTableTextSourceFactory *)self documentLanguageProvider];
  fontAttributesConstructor = [(SXDataTableTextSourceFactory *)self fontAttributesConstructor];
  v15 = [(SXDataTableTextSource *)v11 initWithFormattedText:textCopy indexPath:var0 smartFieldFactory:var1 dataSource:smartFieldFactory documentLangaugeProvider:sourceCopy fontAttributesConstructor:documentLanguageProvider, fontAttributesConstructor];

  return v15;
}

@end