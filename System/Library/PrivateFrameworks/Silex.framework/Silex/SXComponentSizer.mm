@interface SXComponentSizer
- (BOOL)allowComponentIntersection;
- (CGSize)suggestedSize;
- (SXComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options;
- (UIEdgeInsets)bordersInsetsWithUnitConverter:(id)converter;
- (UIEdgeInsets)contentInsetsWithUnitConverter:(id)converter;
- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)range inColumnLayout:(id)layout;
- (int64_t)minimumColumnLength;
- (unint64_t)shouldIgnoreMarginsForColumnLayout:(id)layout;
- (unint64_t)shouldIgnoreViewportPaddingForColumnLayout:(id)layout;
- (void)saveInfo:(id)info forRenderingPhaseWithIdentifier:(id)identifier;
@end

@implementation SXComponentSizer

- (SXComponentSizer)initWithComponent:(id)component componentLayout:(id)layout componentStyle:(id)style DOMObjectProvider:(id)provider layoutOptions:(id)options
{
  componentCopy = component;
  layoutCopy = layout;
  styleCopy = style;
  providerCopy = provider;
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = SXComponentSizer;
  v17 = [(SXComponentSizer *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_component, component);
    objc_storeStrong(&v18->_componentLayout, layout);
    objc_storeStrong(&v18->_componentStyle, style);
    objc_storeStrong(&v18->_DOMObjectProvider, provider);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    infoForRendering = v18->_infoForRendering;
    v18->_infoForRendering = dictionary;

    objc_storeStrong(&v18->_layoutOptions, options);
  }

  return v18;
}

- (BOOL)allowComponentIntersection
{
  component = [(SXComponentSizer *)self component];
  classification = [component classification];
  layoutRules = [classification layoutRules];
  allowsIntersection = [layoutRules allowsIntersection];

  return allowsIntersection;
}

- (unint64_t)shouldIgnoreMarginsForColumnLayout:(id)layout
{
  componentLayout = [(SXComponentSizer *)self componentLayout];
  ignoreDocumentMargin = [componentLayout ignoreDocumentMargin];

  return ignoreDocumentMargin;
}

- (unint64_t)shouldIgnoreViewportPaddingForColumnLayout:(id)layout
{
  componentLayout = [(SXComponentSizer *)self componentLayout];
  ignoreViewportPadding = [componentLayout ignoreViewportPadding];

  return ignoreViewportPadding;
}

- (_NSRange)overrideColumnLayoutForColumnRange:(_NSRange)range inColumnLayout:(id)layout
{
  length = range.length;
  location = range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (int64_t)minimumColumnLength
{
  component = [(SXComponentSizer *)self component];
  classification = [component classification];
  layoutRules = [classification layoutRules];
  minimumColumnSpan = [layoutRules minimumColumnSpan];

  return minimumColumnSpan;
}

- (UIEdgeInsets)contentInsetsWithUnitConverter:(id)converter
{
  converterCopy = converter;
  [converterCopy convertValueToPoints:{0x4049000000000000, 6}];
  v6 = v5;
  componentLayout = [(SXComponentSizer *)self componentLayout];
  contentInset = [componentLayout contentInset];

  v9 = v6;
  v10 = v6;
  v11 = v6;
  if ((contentInset & 1) == 0)
  {
    v11 = *MEMORY[0x1E69DDCE0];
    v10 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
    componentLayout2 = [(SXComponentSizer *)self componentLayout];
    contentInset2 = [componentLayout2 contentInset];

    if ((contentInset2 & 0x100) != 0)
    {
      v10 = v6;
    }

    componentLayout3 = [(SXComponentSizer *)self componentLayout];
    contentInset3 = [componentLayout3 contentInset];

    if ((*&contentInset3 & 0x10000) != 0)
    {
      v11 = v6;
    }

    componentLayout4 = [(SXComponentSizer *)self componentLayout];
    contentInset4 = [componentLayout4 contentInset];

    if ((contentInset4 & 0x1000000) != 0)
    {
      v12 = v6;
    }

    componentLayout5 = [(SXComponentSizer *)self componentLayout];
    contentInset5 = [componentLayout5 contentInset];

    if ((contentInset5 & 0x100000000) != 0)
    {
      v9 = v6;
    }

    v6 = v12;
  }

  componentLayout6 = [(SXComponentSizer *)self componentLayout];
  padding = [componentLayout6 padding];

  left = [padding left];
  [converterCopy convertValueToPoints:{left, v24}];
  if (v10 >= v25)
  {
    v26 = v10;
  }

  else
  {
    v26 = v25;
  }

  v27 = [padding top];
  [converterCopy convertValueToPoints:{v27, v28}];
  if (v11 >= v29)
  {
    v30 = v11;
  }

  else
  {
    v30 = v29;
  }

  right = [padding right];
  [converterCopy convertValueToPoints:{right, v32}];
  if (v6 >= v33)
  {
    v34 = v6;
  }

  else
  {
    v34 = v33;
  }

  bottom = [padding bottom];
  [converterCopy convertValueToPoints:{bottom, v36}];
  if (v9 >= v37)
  {
    v38 = v9;
  }

  else
  {
    v38 = v37;
  }

  [(SXComponentSizer *)self layoutMarginsWithUnitConverter:converterCopy];
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

- (UIEdgeInsets)bordersInsetsWithUnitConverter:(id)converter
{
  converterCopy = converter;
  componentStyle = [(SXComponentSizer *)self componentStyle];
  border = [componentStyle border];

  if (border)
  {
    v7 = [border all];
    width = [v7 width];
    [converterCopy convertValueToPoints:{width, v9}];
    v11 = v10;

    v12 = [border top];

    v13 = v11;
    if (v12)
    {
      v14 = [border top];
      width2 = [v14 width];
      [converterCopy convertValueToPoints:{width2, v16}];
      v13 = v17;
    }

    right = [border right];

    v19 = v11;
    if (right)
    {
      right2 = [border right];
      width3 = [right2 width];
      [converterCopy convertValueToPoints:{width3, v22}];
      v19 = v23;
    }

    bottom = [border bottom];

    v25 = v11;
    if (bottom)
    {
      bottom2 = [border bottom];
      width4 = [bottom2 width];
      [converterCopy convertValueToPoints:{width4, v28}];
      v25 = v29;
    }

    left = [border left];

    if (left)
    {
      left2 = [border left];
      width5 = [left2 width];
      [converterCopy convertValueToPoints:{width5, v33}];
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

- (void)saveInfo:(id)info forRenderingPhaseWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  infoCopy = info;
  infoForRendering = [(SXComponentSizer *)self infoForRendering];
  [infoForRendering setObject:infoCopy forKey:identifierCopy];
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