@interface SXDataTableTextSourceFactory
- (SXDataTableTextSourceFactory)initWithSmartFieldFactory:(id)a3 documentLanguageProvider:(id)a4 fontAttributesConstructor:(id)a5;
- (id)textSourceWithFormattedText:(id)a3 indexPath:(id)a4 dataSource:(id)a5;
@end

@implementation SXDataTableTextSourceFactory

- (SXDataTableTextSourceFactory)initWithSmartFieldFactory:(id)a3 documentLanguageProvider:(id)a4 fontAttributesConstructor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXDataTableTextSourceFactory;
  v12 = [(SXDataTableTextSourceFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smartFieldFactory, a3);
    objc_storeStrong(&v13->_documentLanguageProvider, a4);
    objc_storeStrong(&v13->_fontAttributesConstructor, a5);
  }

  return v13;
}

- (id)textSourceWithFormattedText:(id)a3 indexPath:(id)a4 dataSource:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a5;
  v10 = a3;
  v11 = [SXDataTableTextSource alloc];
  v12 = [(SXDataTableTextSourceFactory *)self smartFieldFactory];
  v13 = [(SXDataTableTextSourceFactory *)self documentLanguageProvider];
  v14 = [(SXDataTableTextSourceFactory *)self fontAttributesConstructor];
  v15 = [(SXDataTableTextSource *)v11 initWithFormattedText:v10 indexPath:var0 smartFieldFactory:var1 dataSource:v12 documentLangaugeProvider:v9 fontAttributesConstructor:v13, v14];

  return v15;
}

@end