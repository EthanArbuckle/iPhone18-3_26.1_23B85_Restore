@interface SXDOMAnalyzerModifier
- (void)analyzeButtonComponent:(id)a3 analysis:(id)a4;
- (void)analyzeComponents:(id)a3 parent:(id)a4 DOM:(id)a5;
- (void)analyzeDataTableCellStyle:(id)a3 component:(id)a4 analysis:(id)a5;
- (void)analyzeDataTableComponent:(id)a3 DOM:(id)a4;
- (void)analyzeDataTableStyle:(id)a3 component:(id)a4 analysis:(id)a5;
- (void)analyzeFormattedText:(id)a3 component:(id)a4 analysis:(id)a5;
- (void)analyzeGalleryComponent:(id)a3 analysis:(id)a4;
- (void)analyzeInlineTextStyle:(id)a3 component:(id)a4 analysis:(id)a5;
- (void)analyzeScalableImageComponent:(id)a3 analysis:(id)a4;
- (void)analyzeTextComponent:(id)a3 analysis:(id)a4;
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXDOMAnalyzerModifier

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 components];
  [(SXDOMAnalyzerModifier *)self analyzeComponents:v6 parent:0 DOM:v5];
}

- (void)analyzeComponents:(id)a3 parent:(id)a4 DOM:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v25 = a5;
  v9 = [v25 analysis];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v7;
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
        v13 = [v12 identifier];
        v14 = [v12 type];
        [v9 addComponent:v13 type:v14 role:{objc_msgSend(v12, "role")}];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = [v12 classification];
        v16 = [v15 defaultComponentStyleIdentifiers];

        v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                objc_enumerationMutation(v16);
              }

              [v9 addComponentStyle:*(*(&v29 + 1) + 8 * j) component:v13];
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v18);
        }

        v21 = [v12 style];

        if (v21)
        {
          v22 = [v12 style];
          [v9 addComponentStyle:v22 component:v13];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SXDOMAnalyzerModifier *)self analyzeTextComponent:v12 analysis:v9];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SXDOMAnalyzerModifier *)self analyzeScalableImageComponent:v12 analysis:v9];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(SXDOMAnalyzerModifier *)self analyzeButtonComponent:v12 analysis:v9];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(SXDOMAnalyzerModifier *)self analyzeGalleryComponent:v12 analysis:v9];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(SXDOMAnalyzerModifier *)self analyzeDataTableComponent:v12 DOM:v25];
                }
              }
            }
          }
        }

        v23 = [v10 componentsForContainerComponentWithIdentifier:v13];
        if (v23)
        {
          [(SXDOMAnalyzerModifier *)self analyzeComponents:v23 parent:v12 DOM:v25];
        }

        if (v8)
        {
          v24 = [v8 identifier];
          [v9 addComponent:v13 parent:v24];
        }
      }

      v27 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v27);
  }
}

- (void)analyzeTextComponent:(id)a3 analysis:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v6 classification];
  v10 = [v9 defaultTextStyleIdentifiers];

  v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(v10);
        }

        [v7 addComponentTextStyle:*(*(&v26 + 1) + 8 * v14++) component:v8];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v15 = [v6 textStyle];

  if (v15)
  {
    v16 = [v6 textStyle];
    [v7 addComponentTextStyle:v16 component:v8];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = [v6 inlineTextStyles];
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v17);
        }

        [(SXDOMAnalyzerModifier *)self analyzeInlineTextStyle:*(*(&v22 + 1) + 8 * v21++) component:v6 analysis:v7];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)analyzeButtonComponent:(id)a3 analysis:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v5 classification];
  v9 = [v8 defaultTextStyleIdentifiers];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        [v6 addComponentTextStyle:*(*(&v15 + 1) + 8 * v13++) component:v7];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = [v5 textStyle];
  [v6 addComponentTextStyle:v14 component:v7];
}

- (void)analyzeScalableImageComponent:(id)a3 analysis:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 captionComponent];

  if (v7)
  {
    v8 = [v9 captionComponent];
    [(SXDOMAnalyzerModifier *)self analyzeFormattedText:v8 component:v9 analysis:v6];
  }
}

- (void)analyzeGalleryComponent:(id)a3 analysis:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 items];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) captionComponent];
        [(SXDOMAnalyzerModifier *)self analyzeFormattedText:v13 component:v6 analysis:v7];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)analyzeDataTableComponent:(id)a3 DOM:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [v7 style];
  v8 = [v6 componentStyles];
  v9 = [v8 objectForKey:v12];

  v10 = [v9 tableStyle];
  v11 = [v6 analysis];

  [(SXDOMAnalyzerModifier *)self analyzeDataTableStyle:v10 component:v7 analysis:v11];
}

- (void)analyzeFormattedText:(id)a3 component:(id)a4 analysis:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 identifier];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = [v9 classification];
  v13 = [v12 defaultTextStyleIdentifiers];

  v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(v13);
        }

        [v10 addComponentTextStyle:*(*(&v29 + 1) + 8 * v17++) component:v11];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v15);
  }

  v18 = [v8 textStyle];

  if (v18)
  {
    v19 = [v8 textStyle];
    [v10 addComponentTextStyle:v19 component:v11];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = [v8 inlineTextStyles];
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(v20);
        }

        [(SXDOMAnalyzerModifier *)self analyzeInlineTextStyle:*(*(&v25 + 1) + 8 * v24++) component:v9 analysis:v10];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v22);
  }
}

- (void)analyzeInlineTextStyle:(id)a3 component:(id)a4 analysis:(id)a5
{
  v7 = a5;
  v8 = a4;
  v10 = [a3 textStyle];
  v9 = [v8 identifier];

  [v7 addTextStyle:v10 component:v9];
}

- (void)analyzeDataTableStyle:(id)a3 component:(id)a4 analysis:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v9 classification];
  v12 = [v11 defaultTextStyleIdentifiers];

  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [v9 identifier];
        [v10 addComponentTextStyle:v17 component:v18];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = [v8 cells];
  [(SXDOMAnalyzerModifier *)self analyzeDataTableCellStyle:v19 component:v9 analysis:v10];

  v20 = [v8 headerCells];
  [(SXDOMAnalyzerModifier *)self analyzeDataTableCellStyle:v20 component:v9 analysis:v10];
}

- (void)analyzeDataTableCellStyle:(id)a3 component:(id)a4 analysis:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [a3 textStyles];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v9);
        }

        [v8 addComponentTextStyle:*(*(&v14 + 1) + 8 * v13++) component:v7];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end