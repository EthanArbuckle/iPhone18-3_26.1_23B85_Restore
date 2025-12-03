@interface SXDataTableTextSource
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPath;
- (SXDataTableTextSource)initWithFormattedText:(id)text indexPath:(id)path smartFieldFactory:(id)factory dataSource:(id)source documentLangaugeProvider:(id)provider fontAttributesConstructor:(id)constructor;
- (void)applyStylingOnTextTangierStorage:(id)storage;
@end

@implementation SXDataTableTextSource

- (SXDataTableTextSource)initWithFormattedText:(id)text indexPath:(id)path smartFieldFactory:(id)factory dataSource:(id)source documentLangaugeProvider:(id)provider fontAttributesConstructor:(id)constructor
{
  var1 = path.var1;
  var0 = path.var0;
  textCopy = text;
  constructorCopy = constructor;
  providerCopy = provider;
  sourceCopy = source;
  factoryCopy = factory;
  text = [textCopy text];
  v23.receiver = self;
  v23.super_class = SXDataTableTextSource;
  v20 = [(SXTextSource *)&v23 initWithString:text smartFieldFactory:factoryCopy dataSource:sourceCopy documentLanguageProvider:providerCopy fontAttributesConstructor:constructorCopy];

  if (v20)
  {
    objc_storeStrong(&v20->_formattedText, text);
    v20->_indexPath.rowIndex = var0;
    v20->_indexPath.columnIndex = var1;
  }

  return v20;
}

- (void)applyStylingOnTextTangierStorage:(id)storage
{
  storageCopy = storage;
  v10.receiver = self;
  v10.super_class = SXDataTableTextSource;
  [(SXTextSource *)&v10 applyStylingOnTextTangierStorage:storageCopy];
  dataSource = [(SXTextSource *)self dataSource];
  v6 = [dataSource componentTextStyleForTextSource:self inheritingFromDefaultStyles:1];

  if (-[SXDataTableTextSource defaultTextAlignment](self, "defaultTextAlignment") && ![v6 textAlignment])
  {
    defaultTextAlignment = [(SXDataTableTextSource *)self defaultTextAlignment];
    if (defaultTextAlignment == 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (defaultTextAlignment == 2);
    }

    v9 = [storageCopy paragraphStyleAtParIndex:0 effectiveRange:0];
    [v9 setIntValue:v8 forProperty:86];
  }
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPath
{
  p_indexPath = &self->_indexPath;
  rowIndex = self->_indexPath.rowIndex;
  columnIndex = p_indexPath->columnIndex;
  result.var1 = columnIndex;
  result.var0 = rowIndex;
  return result;
}

@end