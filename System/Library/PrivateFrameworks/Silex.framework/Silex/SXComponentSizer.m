@interface SXComponentSizer
- (BOOL)allowComponentIntersection;
- (CGSize)suggestedSize;
- (SXComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7;
- (UIEdgeInsets)bordersInsetsWithUnitConverter:(id)a3;
- (UIEdgeInsets)contentInsetsWithUnitConverter:(id)a3;
- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)a3 inColumnLayout:(id)a4;
- (int64_t)minimumColumnLength;
- (unint64_t)shouldIgnoreMarginsForColumnLayout:(id)a3;
- (unint64_t)shouldIgnoreViewportPaddingForColumnLayout:(id)a3;
- (void)saveInfo:(id)a3 forRenderingPhaseWithIdentifier:(id)a4;
@end

@implementation SXComponentSizer

- (SXComponentSizer)initWithComponent:(id)a3 componentLayout:(id)a4 componentStyle:(id)a5 DOMObjectProvider:(id)a6 layoutOptions:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = SXComponentSizer;
  v17 = [(SXComponentSizer *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_component, a3);
    objc_storeStrong(&v18->_componentLayout, a4);
    objc_storeStrong(&v18->_componentStyle, a5);
    objc_storeStrong(&v18->_DOMObjectProvider, a6);
    v19 = [MEMORY[0x1E695DF90] dictionary];
    infoForRendering = v18->_infoForRendering;
    v18->_infoForRendering = v19;

    objc_storeStrong(&v18->_layoutOptions, a7);
  }

  return v18;
}

- (BOOL)allowComponentIntersection
{
  v2 = [(SXComponentSizer *)self component];
  v3 = [v2 classification];
  v4 = [v3 layoutRules];
  v5 = [v4 allowsIntersection];

  return v5;
}

- (unint64_t)shouldIgnoreMarginsForColumnLayout:(id)a3
{
  v3 = [(SXComponentSizer *)self componentLayout];
  v4 = [v3 ignoreDocumentMargin];

  return v4;
}

- (unint64_t)shouldIgnoreViewportPaddingForColumnLayout:(id)a3
{
  v3 = [(SXComponentSizer *)self componentLayout];
  v4 = [v3 ignoreViewportPadding];

  return v4;
}

- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)a3 inColumnLayout:(id)a4
{
  length = a3.length;
  location = a3.location;
  result.length = length;
  result.location = location;
  return result;
}

- (int64_t)minimumColumnLength
{
  v2 = [(SXComponentSizer *)self component];
  v3 = [v2 classification];
  v4 = [v3 layoutRules];
  v5 = [v4 minimumColumnSpan];

  return v5;
}

- (UIEdgeInsets)contentInsetsWithUnitConverter:(id)a3
{
  v4 = a3;
  [v4 convertValueToPoints:{0x4049000000000000, 6}];
  v6 = v5;
  v7 = [(SXComponentSizer *)self componentLayout];
  v8 = [v7 contentInset];

  v9 = v6;
  v10 = v6;
  v11 = v6;
  if ((v8 & 1) == 0)
  {
    v11 = *MEMORY[0x1E69DDCE0];
    v10 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
    v13 = [(SXComponentSizer *)self componentLayout];
    v14 = [v13 contentInset];

    if ((v14 & 0x100) != 0)
    {
      v10 = v6;
    }

    v15 = [(SXComponentSizer *)self componentLayout];
    v16 = [v15 contentInset];

    if ((*&v16 & 0x10000) != 0)
    {
      v11 = v6;
    }

    v17 = [(SXComponentSizer *)self componentLayout];
    v18 = [v17 contentInset];

    if ((v18 & 0x1000000) != 0)
    {
      v12 = v6;
    }

    v19 = [(SXComponentSizer *)self componentLayout];
    v20 = [v19 contentInset];

    if ((v20 & 0x100000000) != 0)
    {
      v9 = v6;
    }

    v6 = v12;
  }

  v21 = [(SXComponentSizer *)self componentLayout];
  v22 = [v21 padding];

  v23 = [v22 left];
  [v4 convertValueToPoints:{v23, v24}];
  if (v10 >= v25)
  {
    v26 = v10;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v22 top];
  [v4 convertValueToPoints:{v27, v28}];
  if (v11 >= v29)
  {
    v30 = v11;
  }

  else
  {
    v30 = v29;
  }

  v31 = [v22 right];
  [v4 convertValueToPoints:{v31, v32}];
  if (v6 >= v33)
  {
    v34 = v6;
  }

  else
  {
    v34 = v33;
  }

  v35 = [v22 bottom];
  [v4 convertValueToPoints:{v35, v36}];
  if (v9 >= v37)
  {
    v38 = v9;
  }

  else
  {
    v38 = v37;
  }

  [(SXComponentSizer *)self layoutMarginsWithUnitConverter:v4];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = v30 + v40;
  v48 = v26 + v42;
  v49 = v38 + v44;
  v50 = v34 + v46;
  result.right = v50;
  result.bottom = v49;
  result.left = v48;
  result.top = v47;
  return result;
}

- (UIEdgeInsets)bordersInsetsWithUnitConverter:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentSizer *)self componentStyle];
  v6 = [v5 border];

  if (v6)
  {
    v7 = [v6 all];
    v8 = [v7 width];
    [v4 convertValueToPoints:{v8, v9}];
    v11 = v10;

    v12 = [v6 top];

    v13 = v11;
    if (v12)
    {
      v14 = [v6 top];
      v15 = [v14 width];
      [v4 convertValueToPoints:{v15, v16}];
      v13 = v17;
    }

    v18 = [v6 right];

    v19 = v11;
    if (v18)
    {
      v20 = [v6 right];
      v21 = [v20 width];
      [v4 convertValueToPoints:{v21, v22}];
      v19 = v23;
    }

    v24 = [v6 bottom];

    v25 = v11;
    if (v24)
    {
      v26 = [v6 bottom];
      v27 = [v26 width];
      [v4 convertValueToPoints:{v27, v28}];
      v25 = v29;
    }

    v30 = [v6 left];

    if (v30)
    {
      v31 = [v6 left];
      v32 = [v31 width];
      [v4 convertValueToPoints:{v32, v33}];
      v11 = v34;
    }
  }

  else
  {
    v13 = *MEMORY[0x1E69DDCE0];
    v11 = *(MEMORY[0x1E69DDCE0] + 8);
    v25 = *(MEMORY[0x1E69DDCE0] + 16);
    v19 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v35 = v13;
  v36 = v11;
  v37 = v25;
  v38 = v19;
  result.right = v38;
  result.bottom = v37;
  result.left = v36;
  result.top = v35;
  return result;
}

- (void)saveInfo:(id)a3 forRenderingPhaseWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SXComponentSizer *)self infoForRendering];
  [v8 setObject:v7 forKey:v6];
}

- (CGSize)suggestedSize
{
  width = self->_suggestedSize.width;
  height = self->_suggestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end