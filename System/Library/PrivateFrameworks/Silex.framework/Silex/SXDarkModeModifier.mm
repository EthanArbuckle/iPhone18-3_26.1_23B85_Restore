@interface SXDarkModeModifier
- (SXDarkModeModifier)initWithPolicyHandler:(id)a3 configuration:(id)a4 namespacedObjectFactory:(id)a5;
- (id)invertColor:(id)a3 defaultColor:(id)a4;
- (id)invertedBorder:(id)a3;
- (id)invertedComponent:(id)a3 context:(id)a4;
- (id)invertedComponentShadow:(id)a3;
- (id)invertedComponentStyle:(id)a3 context:(id)a4;
- (id)invertedComponentTextStyleBackgroundColors:(id)a3 context:(id)a4;
- (id)invertedComponentTextStyleForegroundColors:(id)a3 context:(id)a4;
- (id)invertedDataTableBorder:(id)a3;
- (id)invertedDataTableBorderSides:(id)a3;
- (id)invertedDataTableCellStyle:(id)a3;
- (id)invertedDataTableColumnStyle:(id)a3;
- (id)invertedDataTableRowStyle:(id)a3;
- (id)invertedDataTableStyle:(id)a3;
- (id)invertedDocumentStyle:(id)a3 context:(id)a4;
- (id)invertedDropCapStyle:(id)a3;
- (id)invertedGradientFill:(id)a3;
- (id)invertedLinearGradient:(id)a3;
- (id)invertedStrokeStyle:(id)a3;
- (id)invertedTextDecoration:(id)a3;
- (id)invertedTextShadow:(id)a3;
- (id)invertedTextStroke:(id)a3;
- (id)invertedTextStyleBackgroundColors:(id)a3 context:(id)a4;
- (id)invertedTextStyleForegroundColors:(id)a3 context:(id)a4;
- (void)invertBackgroundColorsOfComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6;
- (void)invertBackgroundColorsOfTextStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6;
- (void)invertComponentStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6;
- (void)invertForegroundColorsOfComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6;
- (void)invertForegroundColorsOfTextStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6;
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXDarkModeModifier

- (SXDarkModeModifier)initWithPolicyHandler:(id)a3 configuration:(id)a4 namespacedObjectFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXDarkModeModifier;
  v12 = [(SXDarkModeModifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_policyHandler, a3);
    objc_storeStrong(&v13->_configuration, a4);
    objc_storeStrong(&v13->_namespacedObjectFactory, a5);
  }

  return v13;
}

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  policyHandler = self->_policyHandler;
  v9 = [v7 layoutOptions];
  LODWORD(policyHandler) = [(SXDarkModePolicyHandler *)policyHandler shouldApplyDarkModeToDOM:v6 layoutOptions:v9];

  if (policyHandler)
  {
    v10 = self->_policyHandler;
    v11 = [v6 documentStyle];
    v12 = [v7 layoutOptions];
    LODWORD(v10) = [(SXDarkModePolicyHandler *)v10 shouldApplyDarkModeToDocumentStyle:v11 DOM:v6 layoutOptions:v12];

    if (v10)
    {
      v13 = [v6 documentStyle];
      v14 = [(SXDarkModeModifier *)self invertedDocumentStyle:v13 context:v7];
      [v6 setDocumentStyle:v14];
    }

    v15 = [v6 components];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__SXDarkModeModifier_modifyDOM_context___block_invoke;
    v16[3] = &unk_1E8500318;
    v17 = v6;
    v18 = self;
    v19 = v7;
    [v15 enumerateComponentsWithBlock:v16];
  }
}

uint64_t __40__SXDarkModeModifier_modifyDOM_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) analysis];
  v8 = [v6 identifier];
  v9 = [*(*(a1 + 40) + 8) shouldApplyDarkModeToComponent:v6 DOM:*(a1 + 32)];
  if (v9)
  {
    v10 = [*(a1 + 40) invertedComponent:v6 context:*(a1 + 48)];
    if (v10 != v6)
    {
      [v5 replaceComponent:v6 withComponent:v10];
    }

    v56 = v7;
    v55 = v9;
    v54 = v10;
    if ([*(*(a1 + 40) + 8) shouldApplyDarkModeToComponentStylesForComponent:v6 DOM:*(a1 + 32)])
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v11 = [v7 componentStylesForComponent:v8];
      v12 = [v11 countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v74;
        do
        {
          v15 = 0;
          do
          {
            if (*v74 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v73 + 1) + 8 * v15);
            v17 = [*(a1 + 32) componentStyles];
            v18 = [v17 objectForKey:v16];

            if (v18 && [*(*(a1 + 40) + 8) shouldApplyDarkModeToComponentStyle:v18 component:v6 DOM:*(a1 + 32)])
            {
              [*(a1 + 40) invertComponentStyle:v18 component:v6 DOM:*(a1 + 32) context:*(a1 + 48)];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v13);
      }

      v7 = v56;
      v9 = v55;
      v10 = v54;
    }

    v52 = v5;
    if ([*(*(a1 + 40) + 8) shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:v6 DOM:*(a1 + 32)])
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v19 = [v7 componentTextStylesForComponent:v8];
      v20 = [v19 countByEnumeratingWithState:&v69 objects:v80 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v70;
        do
        {
          v23 = 0;
          do
          {
            if (*v70 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v69 + 1) + 8 * v23);
            v25 = [*(a1 + 32) componentTextStyles];
            v26 = [v25 objectForKey:v24];

            if (v26 && [*(*(a1 + 40) + 8) shouldApplyDarkModeToBackgroundColorsOfComponentTextStyle:v26 component:v6 DOM:*(a1 + 32)])
            {
              [*(a1 + 40) invertBackgroundColorsOfComponentTextStyle:v26 component:v6 DOM:*(a1 + 32) context:*(a1 + 48)];
            }

            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v69 objects:v80 count:16];
        }

        while (v21);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v27 = [v56 textStylesForComponent:v8];
      v28 = [v27 countByEnumeratingWithState:&v65 objects:v79 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v66;
        do
        {
          v31 = 0;
          do
          {
            if (*v66 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v65 + 1) + 8 * v31);
            v33 = [*(a1 + 32) textStyles];
            v34 = [v33 objectForKey:v32];

            if (v34 && [*(*(a1 + 40) + 8) shouldApplyDarkModeToBackgroundColorsOfTextStyle:v34 component:v6 DOM:*(a1 + 32)])
            {
              [*(a1 + 40) invertBackgroundColorsOfTextStyle:v34 component:v6 DOM:*(a1 + 32) context:*(a1 + 48)];
            }

            ++v31;
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v65 objects:v79 count:16];
        }

        while (v29);
      }

      v5 = v52;
      v10 = v54;
      v7 = v56;
      v9 = v55;
    }

    if ([*(*(a1 + 40) + 8) shouldApplyDarkModeToTextStyleForegroundColorsForComponent:v6 DOM:{*(a1 + 32), v52}])
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v35 = [v7 componentTextStylesForComponent:v8];
      v36 = [v35 countByEnumeratingWithState:&v61 objects:v78 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v62;
        do
        {
          v39 = 0;
          do
          {
            if (*v62 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v61 + 1) + 8 * v39);
            v41 = [*(a1 + 32) componentTextStyles];
            v42 = [v41 objectForKey:v40];

            if (v42 && [*(*(a1 + 40) + 8) shouldApplyDarkModeToForegroundColorsOfComponentTextStyle:v42 component:v6 DOM:*(a1 + 32)])
            {
              [*(a1 + 40) invertForegroundColorsOfComponentTextStyle:v42 component:v6 DOM:*(a1 + 32) context:*(a1 + 48)];
            }

            ++v39;
          }

          while (v37 != v39);
          v37 = [v35 countByEnumeratingWithState:&v61 objects:v78 count:16];
        }

        while (v37);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v43 = [v56 textStylesForComponent:v8];
      v44 = [v43 countByEnumeratingWithState:&v57 objects:v77 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v58;
        do
        {
          v47 = 0;
          do
          {
            if (*v58 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v57 + 1) + 8 * v47);
            v49 = [*(a1 + 32) textStyles];
            v50 = [v49 objectForKey:v48];

            if (v50 && [*(*(a1 + 40) + 8) shouldApplyDarkModeToForegroundColorsOfTextStyle:v50 component:v6 DOM:*(a1 + 32)])
            {
              [*(a1 + 40) invertForegroundColorsOfTextStyle:v50 component:v6 DOM:*(a1 + 32) context:*(a1 + 48)];
            }

            ++v47;
          }

          while (v45 != v47);
          v45 = [v43 countByEnumeratingWithState:&v57 objects:v77 count:16];
        }

        while (v45);
      }

      v5 = v53;
      v10 = v54;
      v7 = v56;
      v9 = v55;
    }
  }

  return v9;
}

- (void)invertComponentStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6
{
  v20 = a5;
  v10 = a6;
  namespacedObjectFactory = self->_namespacedObjectFactory;
  v12 = a4;
  v13 = [a3 identifier];
  v14 = [v12 identifier];

  v15 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForComponentStyle:v13 component:v14 DOM:v20];

  if (v15)
  {
    v16 = [v20 componentStyles];
    v17 = [v16 objectForKeyedSubscript:v15];
    v18 = [(SXDarkModeModifier *)self invertedComponentStyle:v17 context:v10];

    if (v18)
    {
      v19 = [v20 componentStyles];
      [v19 setObject:v18 forKeyedSubscript:v15];
    }
  }
}

- (void)invertBackgroundColorsOfComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6
{
  v23 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v23 analysis];
  v14 = [v13 namespacedObjectReferences];

  namespacedObjectFactory = self->_namespacedObjectFactory;
  v16 = [v12 identifier];

  v17 = [v11 identifier];

  v18 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForComponentTextStyle:v16 component:v17 DOM:v23];

  if (v18)
  {
    v19 = [v23 componentTextStyles];
    v20 = [v19 objectForKeyedSubscript:v18];
    v21 = [(SXDarkModeModifier *)self invertedComponentTextStyleBackgroundColors:v20 context:v10];

    if (v21)
    {
      v22 = [v23 componentTextStyles];
      [v22 setObject:v21 forKeyedSubscript:v18];
    }
  }
}

- (void)invertForegroundColorsOfComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6
{
  v26 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [v10 analysis];
  v14 = [v13 namespacedObjectReferences];

  v15 = [v12 identifier];
  v16 = [v26 identifier];
  v17 = [v14 componentTextStyleIdentifierForNamespacedComponentTextStyleIdentifier:v15 component:v16];

  v18 = [v12 identifier];
  LODWORD(v16) = [v17 isEqualToString:v18];

  if (v16)
  {
    namespacedObjectFactory = self->_namespacedObjectFactory;
    v20 = [v12 identifier];

    v12 = [v26 identifier];
    v21 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForComponentTextStyle:v20 component:v12 DOM:v10];

    v17 = v20;
  }

  else
  {
    v21 = [v12 identifier];
  }

  if (v21)
  {
    v22 = [v10 componentTextStyles];
    v23 = [v22 objectForKeyedSubscript:v21];
    v24 = [(SXDarkModeModifier *)self invertedComponentTextStyleForegroundColors:v23 context:v11];

    if (v24)
    {
      v25 = [v10 componentTextStyles];
      [v25 setObject:v24 forKeyedSubscript:v21];
    }
  }
}

- (void)invertBackgroundColorsOfTextStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6
{
  v23 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v23 analysis];
  v14 = [v13 namespacedObjectReferences];

  namespacedObjectFactory = self->_namespacedObjectFactory;
  v16 = [v12 identifier];

  v17 = [v11 identifier];

  v18 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForTextStyle:v16 component:v17 DOM:v23];

  if (v18)
  {
    v19 = [v23 textStyles];
    v20 = [v19 objectForKeyedSubscript:v18];
    v21 = [(SXDarkModeModifier *)self invertedTextStyleBackgroundColors:v20 context:v10];

    if (v21)
    {
      v22 = [v23 textStyles];
      [v22 setObject:v21 forKeyedSubscript:v18];
    }
  }
}

- (void)invertForegroundColorsOfTextStyle:(id)a3 component:(id)a4 DOM:(id)a5 context:(id)a6
{
  v27 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v27 analysis];
  v14 = [v13 namespacedObjectReferences];

  v15 = [v11 identifier];

  v16 = [v12 identifier];
  v17 = [v14 textStyleIdentifierForNamespacedTextStyleIdentifier:v16 component:v15];

  v18 = [v12 identifier];
  v19 = [v17 isEqualToString:v18];

  if (v19)
  {
    namespacedObjectFactory = self->_namespacedObjectFactory;
    v21 = [v12 identifier];

    v22 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForTextStyle:v21 component:v15 DOM:v27];
    v12 = v17;
    v17 = v21;
  }

  else
  {
    v22 = [v12 identifier];
  }

  if (v22)
  {
    v23 = [v27 textStyles];
    v24 = [v23 objectForKeyedSubscript:v22];
    v25 = [(SXDarkModeModifier *)self invertedTextStyleForegroundColors:v24 context:v10];

    if (v25)
    {
      v26 = [v27 textStyles];
      [v26 setObject:v25 forKeyedSubscript:v22];
    }
  }
}

- (id)invertedDocumentStyle:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 JSONRepresentation];
  v9 = v8;
  if (!v8)
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v10 = [v8 mutableCopy];

  v11 = [v6 backgroundColor];
  v12 = [MEMORY[0x1E69DC888] blackColor];
  v13 = [(SXDarkModeModifier *)self invertColor:v11 defaultColor:v12];
  [v10 setObject:v13 forKeyedSubscript:@"backgroundColor"];

  v14 = [v6 topBackgroundColor];
  v15 = [MEMORY[0x1E69DC888] blackColor];
  v16 = [(SXDarkModeModifier *)self invertColor:v14 defaultColor:v15];
  [v10 setObject:v16 forKeyedSubscript:@"topBackgroundColor"];

  v17 = [v6 topBackgroundGradient];

  if (v17)
  {
    v18 = [v6 topBackgroundGradient];
    v19 = [(SXDarkModeModifier *)self invertedLinearGradient:v18];
    [v10 setObject:v19 forKeyedSubscript:@"topBackgroundGradient"];
  }

  v20 = [SXDocumentStyle alloc];
  v21 = [v7 specVersion];

  v22 = [(SXJSONObject *)v20 initWithJSONObject:v10 andVersion:v21];

  return v22;
}

- (id)invertedComponentStyle:(id)a3 context:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = a4;
    v8 = [v6 JSONRepresentation];
    v9 = [v8 mutableCopy];

    v10 = [v6 backgroundColor];

    if (v10)
    {
      v11 = [v6 backgroundColor];
      v12 = [(SXDarkModeModifier *)self invertColor:v11 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"backgroundColor"];
    }

    v13 = [v6 fill];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v6 fill];
      v16 = [(SXDarkModeModifier *)self invertedGradientFill:v15];
      [v9 setObject:v16 forKeyedSubscript:@"fill"];
    }

    v17 = [v6 shadow];

    if (v17)
    {
      v18 = [v6 shadow];
      v19 = [(SXDarkModeModifier *)self invertedComponentShadow:v18];
      [v9 setObject:v19 forKeyedSubscript:@"shadow"];
    }

    v20 = [v6 border];

    if (v20)
    {
      v21 = [v6 border];
      v22 = [(SXDarkModeModifier *)self invertedBorder:v21];
      [v9 setObject:v22 forKeyedSubscript:@"border"];
    }

    v23 = [v6 tableStyle];

    if (v23)
    {
      v24 = [v6 tableStyle];
      v25 = [(SXDarkModeModifier *)self invertedDataTableStyle:v24];
      [v9 setObject:v25 forKeyedSubscript:@"tableStyle"];
    }

    v26 = [SXComponentStyle alloc];
    v27 = [v7 specVersion];

    v28 = [(SXJSONObject *)v26 initWithJSONObject:v9 andVersion:v27];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)invertedComponentTextStyleBackgroundColors:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 JSONRepresentation];
    v9 = [v8 mutableCopy];

    v10 = [v6 backgroundColor];

    if (v10)
    {
      v11 = [v6 backgroundColor];
      v12 = [(SXDarkModeModifier *)self invertColor:v11 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"backgroundColor"];
    }

    v13 = [v6 linkStyle];

    if (v13)
    {
      v14 = [v6 linkStyle];
      v15 = [(SXDarkModeModifier *)self invertedTextStyleBackgroundColors:v14 context:v7];
      v16 = [v15 JSONRepresentation];
      [v9 setObject:v16 forKeyedSubscript:@"linkStyle"];
    }

    v17 = [SXComponentTextStyle alloc];
    v18 = [v7 specVersion];
    v19 = [(SXJSONObject *)v17 initWithJSONObject:v9 andVersion:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)invertedComponentTextStyleForegroundColors:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 JSONRepresentation];
    v9 = [v8 mutableCopy];

    v10 = [v6 textColor];

    if (v10)
    {
      v11 = [v6 textColor];
      v12 = [(SXDarkModeModifier *)self invertColor:v11 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"textColor"];
    }

    v13 = [v6 stroke];

    if (v13)
    {
      v14 = [v6 stroke];
      v15 = [(SXDarkModeModifier *)self invertedTextStroke:v14];
      [v9 setObject:v15 forKeyedSubscript:@"stroke"];
    }

    v16 = [v6 textShadow];

    if (v16)
    {
      v17 = [v6 textShadow];
      v18 = [(SXDarkModeModifier *)self invertedTextStroke:v17];
      [v9 setObject:v18 forKeyedSubscript:@"textShadow"];
    }

    v19 = [v6 dropCapStyle];

    if (v19)
    {
      v20 = [v6 dropCapStyle];
      v21 = [(SXDarkModeModifier *)self invertedDropCapStyle:v20];
      [v9 setObject:v21 forKeyedSubscript:@"dropCapStyle"];
    }

    v22 = [v6 underline];

    if (v22)
    {
      v23 = [v6 underline];
      v24 = [(SXDarkModeModifier *)self invertedTextDecoration:v23];
      [v9 setObject:v24 forKeyedSubscript:@"underline"];
    }

    v25 = [v6 strikethrough];

    if (v25)
    {
      v26 = [v6 strikethrough];
      v27 = [(SXDarkModeModifier *)self invertedTextDecoration:v26];
      [v9 setObject:v27 forKeyedSubscript:@"strikethrough"];
    }

    v28 = [v6 linkStyle];

    if (v28)
    {
      v29 = [v6 linkStyle];
      v30 = [(SXDarkModeModifier *)self invertedTextStyleForegroundColors:v29 context:v7];
      v31 = [v30 JSONRepresentation];
      [v9 setObject:v31 forKeyedSubscript:@"linkStyle"];
    }

    v32 = [SXComponentTextStyle alloc];
    v33 = [v7 specVersion];
    v34 = [(SXJSONObject *)v32 initWithJSONObject:v9 andVersion:v33];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)invertedTextStyleBackgroundColors:(id)a3 context:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = a4;
    v8 = [v6 JSONRepresentation];
    v9 = [v8 mutableCopy];

    v10 = [v6 backgroundColor];

    if (v10)
    {
      v11 = [v6 backgroundColor];
      v12 = [(SXDarkModeModifier *)self invertColor:v11 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"backgroundColor"];
    }

    v13 = [SXTextStyle alloc];
    v14 = [v7 specVersion];

    v15 = [(SXJSONObject *)v13 initWithJSONObject:v9 andVersion:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)invertedTextStyleForegroundColors:(id)a3 context:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = a4;
    v8 = [v6 JSONRepresentation];
    v9 = [v8 mutableCopy];

    v10 = [v6 textColor];

    if (v10)
    {
      v11 = [v6 textColor];
      v12 = [(SXDarkModeModifier *)self invertColor:v11 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"textColor"];
    }

    v13 = [v6 stroke];

    if (v13)
    {
      v14 = [v6 stroke];
      v15 = [(SXDarkModeModifier *)self invertedTextStroke:v14];
      [v9 setObject:v15 forKeyedSubscript:@"stroke"];
    }

    v16 = [v6 textShadow];

    if (v16)
    {
      v17 = [v6 textShadow];
      v18 = [(SXDarkModeModifier *)self invertedTextStroke:v17];
      [v9 setObject:v18 forKeyedSubscript:@"textShadow"];
    }

    v19 = [v6 underline];

    if (v19)
    {
      v20 = [v6 underline];
      v21 = [(SXDarkModeModifier *)self invertedTextDecoration:v20];
      [v9 setObject:v21 forKeyedSubscript:@"underline"];
    }

    v22 = [v6 strikethrough];

    if (v22)
    {
      v23 = [v6 strikethrough];
      v24 = [(SXDarkModeModifier *)self invertedTextDecoration:v23];
      [v9 setObject:v24 forKeyedSubscript:@"strikethrough"];
    }

    v25 = [SXTextStyle alloc];
    v26 = [v7 specVersion];

    v27 = [(SXJSONObject *)v25 initWithJSONObject:v9 andVersion:v26];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)invertedTextStroke:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 color];

  if (v7)
  {
    v8 = [v4 color];
    v9 = [(SXDarkModeModifier *)self invertColor:v8 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"color"];
  }

  return v6;
}

- (id)invertedTextShadow:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 color];

  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [(SXDarkModeModifier *)self invertColor:v7 defaultColor:v8];
  [v6 setObject:v9 forKeyedSubscript:@"color"];

  return v6;
}

- (id)invertedDropCapStyle:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 textColor];

  if (v7)
  {
    v8 = [v4 textColor];
    v9 = [(SXDarkModeModifier *)self invertColor:v8 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"textColor"];
  }

  v10 = [v4 backgroundColor];

  if (v10)
  {
    v11 = [v4 backgroundColor];
    v12 = [(SXDarkModeModifier *)self invertColor:v11 defaultColor:0];
    [v6 setObject:v12 forKeyedSubscript:@"backgroundColor"];
  }

  return v6;
}

- (id)invertedTextDecoration:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 color];

  if (v7)
  {
    v8 = [v4 color];
    v9 = [(SXDarkModeModifier *)self invertColor:v8 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"color"];
  }

  return v6;
}

- (id)invertedGradientFill:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 colorStops];

  if (v7)
  {
    v21 = v6;
    v8 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v4;
    v9 = [v4 colorStops];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 JSONRepresentation];
          v16 = [v15 mutableCopy];

          v17 = [v14 color];

          if (v17)
          {
            v18 = [v14 color];
            v19 = [(SXDarkModeModifier *)self invertColor:v18 defaultColor:0];
            [v16 setObject:v19 forKeyedSubscript:@"color"];
          }

          [v8 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v6 = v21;
    [v21 setObject:v8 forKeyedSubscript:@"colorStops"];

    v4 = v22;
  }

  return v6;
}

- (id)invertedLinearGradient:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 colorStops];

  if (v7)
  {
    v21 = v6;
    v8 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v4;
    v9 = [v4 colorStops];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 JSONRepresentation];
          v16 = [v15 mutableCopy];

          v17 = [v14 color];

          if (v17)
          {
            v18 = [v14 color];
            v19 = [(SXDarkModeModifier *)self invertColor:v18 defaultColor:0];
            [v16 setObject:v19 forKeyedSubscript:@"color"];
          }

          [v8 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v6 = v21;
    [v21 setObject:v8 forKeyedSubscript:@"colorStops"];

    v4 = v22;
  }

  return v6;
}

- (id)invertedComponentShadow:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 color];

  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [(SXDarkModeModifier *)self invertColor:v7 defaultColor:v8];
  [v6 setObject:v9 forKeyedSubscript:@"color"];

  return v6;
}

- (id)invertedBorder:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 all];

  if (v7)
  {
    v8 = [v4 all];
    v9 = [(SXDarkModeModifier *)self invertedStrokeStyle:v8];
    [v6 setObject:v9 forKeyedSubscript:@"all"];
  }

  v10 = [v4 top];

  if (v10)
  {
    v11 = [v4 top];
    v12 = [(SXDarkModeModifier *)self invertedStrokeStyle:v11];
    [v6 setObject:v12 forKeyedSubscript:@"top"];
  }

  v13 = [v4 right];

  if (v13)
  {
    v14 = [v4 right];
    v15 = [(SXDarkModeModifier *)self invertedStrokeStyle:v14];
    [v6 setObject:v15 forKeyedSubscript:@"right"];
  }

  v16 = [v4 bottom];

  if (v16)
  {
    v17 = [v4 bottom];
    v18 = [(SXDarkModeModifier *)self invertedStrokeStyle:v17];
    [v6 setObject:v18 forKeyedSubscript:@"bottom"];
  }

  v19 = [v4 left];

  if (v19)
  {
    v20 = [v4 left];
    v21 = [(SXDarkModeModifier *)self invertedStrokeStyle:v20];
    [v6 setObject:v21 forKeyedSubscript:@"left"];
  }

  return v6;
}

- (id)invertedStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 color];

  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [(SXDarkModeModifier *)self invertColor:v7 defaultColor:v8];
  [v6 setObject:v9 forKeyedSubscript:@"color"];

  return v6;
}

- (id)invertedComponent:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v6;
  v10 = v9;
  v11 = v9;
  if (isKindOfClass)
  {
    v12 = [(SXJSONObject *)v9 JSONRepresentation];
    v13 = [v12 mutableCopy];

    v14 = [(SXLineComponent *)v10 stroke];

    v15 = [(SXDarkModeModifier *)self invertedStrokeStyle:v14];
    [v13 setObject:v15 forKeyedSubscript:@"stroke"];

    v16 = [SXLineComponent alloc];
    v17 = [v7 specVersion];
    v11 = [(SXJSONObject *)v16 initWithJSONObject:v13 andVersion:v17];
  }

  return v11;
}

- (id)invertedDataTableStyle:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 headerRows];

  if (v7)
  {
    v8 = [v4 headerRows];
    v9 = [(SXDarkModeModifier *)self invertedDataTableRowStyle:v8];
    [v6 setObject:v9 forKeyedSubscript:@"headerRows"];
  }

  v10 = [v4 headerColumns];

  if (v10)
  {
    v11 = [v4 headerColumns];
    v12 = [(SXDarkModeModifier *)self invertedDataTableColumnStyle:v11];
    [v6 setObject:v12 forKeyedSubscript:@"headerColumns"];
  }

  v13 = [v4 headerCells];

  if (v13)
  {
    v14 = [v4 headerCells];
    v15 = [(SXDarkModeModifier *)self invertedDataTableCellStyle:v14];
    [v6 setObject:v15 forKeyedSubscript:@"headerCells"];
  }

  v16 = [v4 rows];

  if (v16)
  {
    v17 = [v4 rows];
    v18 = [(SXDarkModeModifier *)self invertedDataTableRowStyle:v17];
    [v6 setObject:v18 forKeyedSubscript:@"rows"];
  }

  v19 = [v4 columns];

  if (v19)
  {
    v20 = [v4 columns];
    v21 = [(SXDarkModeModifier *)self invertedDataTableColumnStyle:v20];
    [v6 setObject:v21 forKeyedSubscript:@"columns"];
  }

  v22 = [v4 cells];

  if (v22)
  {
    v23 = [v4 cells];
    v24 = [(SXDarkModeModifier *)self invertedDataTableCellStyle:v23];
    [v6 setObject:v24 forKeyedSubscript:@"cells"];
  }

  return v6;
}

- (id)invertedDataTableRowStyle:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 backgroundColor];

  if (v7)
  {
    v8 = [v4 backgroundColor];
    v9 = [(SXDarkModeModifier *)self invertColor:v8 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"backgroundColor"];
  }

  v10 = [v4 divider];

  if (v10)
  {
    v11 = [v4 divider];
    v12 = [(SXDarkModeModifier *)self invertedDataTableBorder:v11];
    [v6 setObject:v12 forKeyedSubscript:@"divider"];
  }

  v13 = [v4 conditional];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = [v4 conditional];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [(SXDarkModeModifier *)self invertedDataTableRowStyle:*(*(&v22 + 1) + 8 * i)];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v6 setObject:v14 forKeyedSubscript:@"conditional"];
  }

  return v6;
}

- (id)invertedDataTableColumnStyle:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 backgroundColor];

  if (v7)
  {
    v8 = [v4 backgroundColor];
    v9 = [(SXDarkModeModifier *)self invertColor:v8 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"backgroundColor"];
  }

  v10 = [v4 divider];

  if (v10)
  {
    v11 = [v4 divider];
    v12 = [(SXDarkModeModifier *)self invertedDataTableBorder:v11];
    [v6 setObject:v12 forKeyedSubscript:@"divider"];
  }

  v13 = [v4 conditional];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = [v4 conditional];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [(SXDarkModeModifier *)self invertedDataTableColumnStyle:*(*(&v22 + 1) + 8 * i)];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v6 setObject:v14 forKeyedSubscript:@"conditional"];
  }

  return v6;
}

- (id)invertedDataTableCellStyle:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 backgroundColor];

  if (v7)
  {
    v8 = [v4 backgroundColor];
    v9 = [(SXDarkModeModifier *)self invertColor:v8 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"backgroundColor"];
  }

  v10 = [v4 border];

  if (v10)
  {
    v11 = [v4 border];
    v12 = [(SXDarkModeModifier *)self invertedDataTableBorderSides:v11];
    [v6 setObject:v12 forKeyedSubscript:@"border"];
  }

  v13 = [v4 conditional];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = [v4 conditional];
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [(SXDarkModeModifier *)self invertedDataTableCellStyle:*(*(&v22 + 1) + 8 * i)];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v6 setObject:v14 forKeyedSubscript:@"conditional"];
  }

  return v6;
}

- (id)invertedDataTableBorder:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 color];

  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [(SXDarkModeModifier *)self invertColor:v7 defaultColor:v8];
  [v6 setObject:v9 forKeyedSubscript:@"color"];

  return v6;
}

- (id)invertedDataTableBorderSides:(id)a3
{
  v4 = a3;
  v5 = [v4 JSONRepresentation];
  v6 = [v5 mutableCopy];

  v7 = [v4 top];

  if (v7)
  {
    v8 = [v4 top];
    v9 = [(SXDarkModeModifier *)self invertedDataTableBorder:v8];
    [v6 setObject:v9 forKeyedSubscript:@"top"];
  }

  v10 = [v4 right];

  if (v10)
  {
    v11 = [v4 right];
    v12 = [(SXDarkModeModifier *)self invertedDataTableBorder:v11];
    [v6 setObject:v12 forKeyedSubscript:@"right"];
  }

  v13 = [v4 bottom];

  if (v13)
  {
    v14 = [v4 bottom];
    v15 = [(SXDarkModeModifier *)self invertedDataTableBorder:v14];
    [v6 setObject:v15 forKeyedSubscript:@"bottom"];
  }

  v16 = [v4 left];

  if (v16)
  {
    v17 = [v4 left];
    v18 = [(SXDarkModeModifier *)self invertedDataTableBorder:v17];
    [v6 setObject:v18 forKeyedSubscript:@"left"];
  }

  return v6;
}

- (id)invertColor:(id)a3 defaultColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v12 = [v7 hex];
    goto LABEL_17;
  }

  v9 = [(SXDarkModeConfiguration *)self->_configuration colors];

  if (!v9 || (-[SXDarkModeConfiguration colors](self->_configuration, "colors"), v10 = objc_claimAutoreleasedReturnValue(), [v6 hex], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", v11), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, !v12))
  {
    [(SXDarkModeConfiguration *)self->_configuration saturationThreshold];
    v14 = v13;
    v15 = [(SXDarkModeConfiguration *)self->_configuration inversionBehavior];
    if (v15 == 2)
    {
      v20 = 0.0;
      [v6 getHue:0 saturation:&v20 lightness:0 alpha:0];
      v16 = v20;
      if (v20 <= v14)
      {
        v17 = [v6 invertedLightness];
        goto LABEL_14;
      }
    }

    else
    {
      if (v15 != 1)
      {
        if (v15)
        {
          goto LABEL_15;
        }

        v20 = 0.0;
        [v6 getHue:0 saturation:&v20 brightness:0 alpha:0];
        v16 = v20;
        if (v20 > v14)
        {
          goto LABEL_15;
        }

        v17 = [v6 invertedRGB];
        goto LABEL_14;
      }

      v20 = 0.0;
      [v6 getHue:0 saturation:&v20 brightness:0 alpha:0];
      v16 = v20;
      if (v20 <= v14)
      {
        v17 = [v6 invertedBrightness];
LABEL_14:
        v18 = v17;

        v6 = v18;
      }
    }

LABEL_15:
    v12 = [v6 hex];
  }

LABEL_17:

  return v12;
}

@end