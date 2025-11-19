@interface SXDataTableTextSource
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)indexPath;
- (SXDataTableTextSource)initWithFormattedText:(id)a3 indexPath:(id)a4 smartFieldFactory:(id)a5 dataSource:(id)a6 documentLangaugeProvider:(id)a7 fontAttributesConstructor:(id)a8;
- (void)applyStylingOnTextTangierStorage:(id)a3;
@end

@implementation SXDataTableTextSource

- (SXDataTableTextSource)initWithFormattedText:(id)a3 indexPath:(id)a4 smartFieldFactory:(id)a5 dataSource:(id)a6 documentLangaugeProvider:(id)a7 fontAttributesConstructor:(id)a8
{
  var1 = a4.var1;
  var0 = a4.var0;
  v14 = a3;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = [v14 text];
  v23.receiver = self;
  v23.super_class = SXDataTableTextSource;
  v20 = [(SXTextSource *)&v23 initWithString:v19 smartFieldFactory:v18 dataSource:v17 documentLanguageProvider:v16 fontAttributesConstructor:v15];

  if (v20)
  {
    objc_storeStrong(&v20->_formattedText, a3);
    v20->_indexPath.rowIndex = var0;
    v20->_indexPath.columnIndex = var1;
  }

  return v20;
}

- (void)applyStylingOnTextTangierStorage:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SXDataTableTextSource;
  [(SXTextSource *)&v10 applyStylingOnTextTangierStorage:v4];
  v5 = [(SXTextSource *)self dataSource];
  v6 = [v5 componentTextStyleForTextSource:self inheritingFromDefaultStyles:1];

  if (-[SXDataTableTextSource defaultTextAlignment](self, "defaultTextAlignment") && ![v6 textAlignment])
  {
    v7 = [(SXDataTableTextSource *)self defaultTextAlignment];
    if (v7 == 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (v7 == 2);
    }

    v9 = [v4 paragraphStyleAtParIndex:0 effectiveRange:0];
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