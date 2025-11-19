@interface SXEmbedComponentSizer
- (SXEmbedComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 embedDataProvider:(id)a8;
- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)a3 inColumnLayout:(id)a4;
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXEmbedComponentSizer

- (SXEmbedComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7 embedDataProvider:(id)a8
{
  v15 = a8;
  v19.receiver = self;
  v19.super_class = SXEmbedComponentSizer;
  v16 = [(SXComponentSizer *)&v19 initWithComponent:a3 componentLayout:a4 componentStyle:a5 DOMObjectProvider:a6 layoutOptions:a7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_embedDataProvider, a8);
  }

  return v17;
}

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  [(SXComponentSizer *)self suggestedSize:a4];
  if (v5 <= 0.0)
  {
    return 100.0;
  }

  [(SXComponentSizer *)self suggestedSize];
  return v6;
}

- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)a3 inColumnLayout:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = [(SXEmbedComponentSizer *)self embedDataProvider];
  v8 = [(SXComponentSizer *)self component];
  v9 = [v8 embedType];
  v10 = [v7 embedForType:v9];

  [v10 minimumWidth];
  if (v11 <= 0.0)
  {
    v13 = 1;
  }

  else
  {
    v12 = v11;
    v13 = 1;
    while (v13 <= [v6 numberOfColumns])
    {
      v14 = [(SXComponentSizer *)self componentLayout];
      v15 = [v14 ignoreDocumentMargin];
      v16 = [(SXComponentSizer *)self componentLayout];
      v17 = [v16 ignoreDocumentMargin];
      v18 = [(SXComponentSizer *)self componentLayout];
      [v6 widthForColumnRange:location ignoreMargin:v13 ignoreGutter:v15 ignoreViewportPadding:{v17, objc_msgSend(v18, "ignoreViewportPadding")}];
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

  v22 = [v6 numberOfColumns];
  v23 = location - ((v21 - v22) & ~((v21 - v22) >> 63));
  v24 = v23 & ~(v23 >> 63);
  v25 = [v6 numberOfColumns];
  if (v21 >= v25)
  {
    v21 = v25;
  }

  v26 = v24;
  v27 = v21;
  result.length = v27;
  result.location = v26;
  return result;
}

@end