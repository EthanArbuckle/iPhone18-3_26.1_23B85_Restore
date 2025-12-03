@interface SXDOMAnalyzerModifier
- (void)analyzeButtonComponent:(id)component analysis:(id)analysis;
- (void)analyzeComponents:(id)components parent:(id)parent DOM:(id)m;
- (void)analyzeDataTableCellStyle:(id)style component:(id)component analysis:(id)analysis;
- (void)analyzeDataTableComponent:(id)component DOM:(id)m;
- (void)analyzeDataTableStyle:(id)style component:(id)component analysis:(id)analysis;
- (void)analyzeFormattedText:(id)text component:(id)component analysis:(id)analysis;
- (void)analyzeGalleryComponent:(id)component analysis:(id)analysis;
- (void)analyzeInlineTextStyle:(id)style component:(id)component analysis:(id)analysis;
- (void)analyzeScalableImageComponent:(id)component analysis:(id)analysis;
- (void)analyzeTextComponent:(id)component analysis:(id)analysis;
- (void)modifyDOM:(id)m context:(id)context;
@end

@implementation SXDOMAnalyzerModifier

- (void)modifyDOM:(id)m context:(id)context
{
  mCopy = m;
  components = [mCopy components];
  [(SXDOMAnalyzerModifier *)self analyzeComponents:components parent:0 DOM:mCopy];
}

- (void)analyzeComponents:(id)components parent:(id)parent DOM:(id)m
{
  v39 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  parentCopy = parent;
  mCopy = m;
  analysis = [mCopy analysis];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = componentsCopy;
  v27 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v27)
  {
    v26 = *v34;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        identifier = [v12 identifier];
        type = [v12 type];
        [analysis addComponent:identifier type:type role:{objc_msgSend(v12, "role")}];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        classification = [v12 classification];
        defaultComponentStyleIdentifiers = [classification defaultComponentStyleIdentifiers];

        v17 = [defaultComponentStyleIdentifiers countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(defaultComponentStyleIdentifiers);
              }

              [analysis addComponentStyle:*(*(&v29 + 1) + 8 * j) component:identifier];
            }

            v18 = [defaultComponentStyleIdentifiers countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v18);
        }

        style = [v12 style];

        if (style)
        {
          style2 = [v12 style];
          [analysis addComponentStyle:style2 component:identifier];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SXDOMAnalyzerModifier *)self analyzeTextComponent:v12 analysis:analysis];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SXDOMAnalyzerModifier *)self analyzeScalableImageComponent:v12 analysis:analysis];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(SXDOMAnalyzerModifier *)self analyzeButtonComponent:v12 analysis:analysis];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(SXDOMAnalyzerModifier *)self analyzeGalleryComponent:v12 analysis:analysis];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(SXDOMAnalyzerModifier *)self analyzeDataTableComponent:v12 DOM:mCopy];
                }
              }
            }
          }
        }

        v23 = [v10 componentsForContainerComponentWithIdentifier:identifier];
        if (v23)
        {
          [(SXDOMAnalyzerModifier *)self analyzeComponents:v23 parent:v12 DOM:mCopy];
        }

        if (parentCopy)
        {
          identifier2 = [parentCopy identifier];
          [analysis addComponent:identifier parent:identifier2];
        }
      }

      v27 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v27);
  }
}

- (void)analyzeTextComponent:(id)component analysis:(id)analysis
{
  v32 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  analysisCopy = analysis;
  identifier = [componentCopy identifier];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  classification = [componentCopy classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];

  v11 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(defaultTextStyleIdentifiers);
        }

        [analysisCopy addComponentTextStyle:*(*(&v26 + 1) + 8 * v14++) component:identifier];
      }

      while (v12 != v14);
      v12 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  textStyle = [componentCopy textStyle];

  if (textStyle)
  {
    textStyle2 = [componentCopy textStyle];
    [analysisCopy addComponentTextStyle:textStyle2 component:identifier];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  inlineTextStyles = [componentCopy inlineTextStyles];
  v18 = [inlineTextStyles countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(inlineTextStyles);
        }

        [(SXDOMAnalyzerModifier *)self analyzeInlineTextStyle:*(*(&v22 + 1) + 8 * v21++) component:componentCopy analysis:analysisCopy];
      }

      while (v19 != v21);
      v19 = [inlineTextStyles countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)analyzeButtonComponent:(id)component analysis:(id)analysis
{
  v20 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  analysisCopy = analysis;
  identifier = [componentCopy identifier];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  classification = [componentCopy classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];

  v10 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(defaultTextStyleIdentifiers);
        }

        [analysisCopy addComponentTextStyle:*(*(&v15 + 1) + 8 * v13++) component:identifier];
      }

      while (v11 != v13);
      v11 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  textStyle = [componentCopy textStyle];
  [analysisCopy addComponentTextStyle:textStyle component:identifier];
}

- (void)analyzeScalableImageComponent:(id)component analysis:(id)analysis
{
  componentCopy = component;
  analysisCopy = analysis;
  captionComponent = [componentCopy captionComponent];

  if (captionComponent)
  {
    captionComponent2 = [componentCopy captionComponent];
    [(SXDOMAnalyzerModifier *)self analyzeFormattedText:captionComponent2 component:componentCopy analysis:analysisCopy];
  }
}

- (void)analyzeGalleryComponent:(id)component analysis:(id)analysis
{
  v19 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  analysisCopy = analysis;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  items = [componentCopy items];
  v9 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(items);
        }

        captionComponent = [*(*(&v14 + 1) + 8 * v12) captionComponent];
        [(SXDOMAnalyzerModifier *)self analyzeFormattedText:captionComponent component:componentCopy analysis:analysisCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)analyzeDataTableComponent:(id)component DOM:(id)m
{
  mCopy = m;
  componentCopy = component;
  style = [componentCopy style];
  componentStyles = [mCopy componentStyles];
  v9 = [componentStyles objectForKey:style];

  tableStyle = [v9 tableStyle];
  analysis = [mCopy analysis];

  [(SXDOMAnalyzerModifier *)self analyzeDataTableStyle:tableStyle component:componentCopy analysis:analysis];
}

- (void)analyzeFormattedText:(id)text component:(id)component analysis:(id)analysis
{
  v35 = *MEMORY[0x1E69E9840];
  textCopy = text;
  componentCopy = component;
  analysisCopy = analysis;
  identifier = [componentCopy identifier];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  classification = [componentCopy classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];

  v14 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(defaultTextStyleIdentifiers);
        }

        [analysisCopy addComponentTextStyle:*(*(&v29 + 1) + 8 * v17++) component:identifier];
      }

      while (v15 != v17);
      v15 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v15);
  }

  textStyle = [textCopy textStyle];

  if (textStyle)
  {
    textStyle2 = [textCopy textStyle];
    [analysisCopy addComponentTextStyle:textStyle2 component:identifier];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  inlineTextStyles = [textCopy inlineTextStyles];
  v21 = [inlineTextStyles countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(inlineTextStyles);
        }

        [(SXDOMAnalyzerModifier *)self analyzeInlineTextStyle:*(*(&v25 + 1) + 8 * v24++) component:componentCopy analysis:analysisCopy];
      }

      while (v22 != v24);
      v22 = [inlineTextStyles countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v22);
  }
}

- (void)analyzeInlineTextStyle:(id)style component:(id)component analysis:(id)analysis
{
  analysisCopy = analysis;
  componentCopy = component;
  textStyle = [style textStyle];
  identifier = [componentCopy identifier];

  [analysisCopy addTextStyle:textStyle component:identifier];
}

- (void)analyzeDataTableStyle:(id)style component:(id)component analysis:(id)analysis
{
  v26 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  componentCopy = component;
  analysisCopy = analysis;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  classification = [componentCopy classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];

  v13 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(defaultTextStyleIdentifiers);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        identifier = [componentCopy identifier];
        [analysisCopy addComponentTextStyle:v17 component:identifier];

        ++v16;
      }

      while (v14 != v16);
      v14 = [defaultTextStyleIdentifiers countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  cells = [styleCopy cells];
  [(SXDOMAnalyzerModifier *)self analyzeDataTableCellStyle:cells component:componentCopy analysis:analysisCopy];

  headerCells = [styleCopy headerCells];
  [(SXDOMAnalyzerModifier *)self analyzeDataTableCellStyle:headerCells component:componentCopy analysis:analysisCopy];
}

- (void)analyzeDataTableCellStyle:(id)style component:(id)component analysis:(id)analysis
{
  v19 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  analysisCopy = analysis;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  textStyles = [style textStyles];
  v10 = [textStyles countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(textStyles);
        }

        [analysisCopy addComponentTextStyle:*(*(&v14 + 1) + 8 * v13++) component:componentCopy];
      }

      while (v11 != v13);
      v11 = [textStyles countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end