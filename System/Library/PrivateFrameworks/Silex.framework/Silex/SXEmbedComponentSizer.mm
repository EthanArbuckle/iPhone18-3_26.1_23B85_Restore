@interface SXEmbedComponentSizer
- (SXEmbedComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options embedDataProvider:(id)dataProvider;
- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)range inColumnLayout:(id)layout;
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXEmbedComponentSizer

- (SXEmbedComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options embedDataProvider:(id)dataProvider
{
  dataProviderCopy = dataProvider;
  v19.receiver = self;
  v19.super_class = SXEmbedComponentSizer;
  v16 = [(SXComponentSizer *)&v19 initWithComponent:component componentLayout:layout componentStyle:style DOMObjectProvider:provider layoutOptions:options];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_embedDataProvider, dataProvider);
  }

  return v17;
}

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  [(SXComponentSizer *)self suggestedSize:context];
  if (v5 <= 0.0)
  {
    return 100.0;
  }

  [(SXComponentSizer *)self suggestedSize];
  return v6;
}

- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)range inColumnLayout:(id)layout
{
  length = range.length;
  location = range.location;
  layoutCopy = layout;
  embedDataProvider = [(SXEmbedComponentSizer *)self embedDataProvider];
  component = [(SXComponentSizer *)self component];
  embedType = [component embedType];
  v10 = [embedDataProvider embedForType:embedType];

  [v10 minimumWidth];
  if (v11 <= 0.0)
  {
    v13 = 1;
  }

  else
  {
    v12 = v11;
    v13 = 1;
    while (v13 <= [layoutCopy numberOfColumns])
    {
      componentLayout = [(SXComponentSizer *)self componentLayout];
      ignoreDocumentMargin = [componentLayout ignoreDocumentMargin];
      componentLayout2 = [(SXComponentSizer *)self componentLayout];
      ignoreDocumentMargin2 = [componentLayout2 ignoreDocumentMargin];
      componentLayout3 = [(SXComponentSizer *)self componentLayout];
      [layoutCopy widthForColumnRange:location ignoreMargin:v13 ignoreGutter:ignoreDocumentMargin ignoreViewportPadding:{ignoreDocumentMargin2, objc_msgSend(componentLayout3, "ignoreViewportPadding")}];
      v20 = v19;

      ++v13;
      if (v20 >= v12)
      {
        --v13;
        break;
      }
    }
  }

  if (v13 <= length)
  {
    v21 = length;
  }

  else
  {
    v21 = v13;
  }

  numberOfColumns = [layoutCopy numberOfColumns];
  v23 = location - ((v21 - numberOfColumns) & ~((v21 - numberOfColumns) >> 63));
  v24 = v23 & ~(v23 >> 63);
  numberOfColumns2 = [layoutCopy numberOfColumns];
  if (v21 >= numberOfColumns2)
  {
    v21 = numberOfColumns2;
  }

  v26 = v24;
  v27 = v21;
  result.length = v27;
  result.location = v26;
  return result;
}

@end