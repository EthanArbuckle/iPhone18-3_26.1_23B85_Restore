@interface SXDarkModeModifier
- (SXDarkModeModifier)initWithPolicyHandler:(id)handler configuration:(id)configuration namespacedObjectFactory:(id)factory;
- (id)invertColor:(id)color defaultColor:(id)defaultColor;
- (id)invertedBorder:(id)border;
- (id)invertedComponent:(id)component context:(id)context;
- (id)invertedComponentShadow:(id)shadow;
- (id)invertedComponentStyle:(id)style context:(id)context;
- (id)invertedComponentTextStyleBackgroundColors:(id)colors context:(id)context;
- (id)invertedComponentTextStyleForegroundColors:(id)colors context:(id)context;
- (id)invertedDataTableBorder:(id)border;
- (id)invertedDataTableBorderSides:(id)sides;
- (id)invertedDataTableCellStyle:(id)style;
- (id)invertedDataTableColumnStyle:(id)style;
- (id)invertedDataTableRowStyle:(id)style;
- (id)invertedDataTableStyle:(id)style;
- (id)invertedDocumentStyle:(id)style context:(id)context;
- (id)invertedDropCapStyle:(id)style;
- (id)invertedGradientFill:(id)fill;
- (id)invertedLinearGradient:(id)gradient;
- (id)invertedStrokeStyle:(id)style;
- (id)invertedTextDecoration:(id)decoration;
- (id)invertedTextShadow:(id)shadow;
- (id)invertedTextStroke:(id)stroke;
- (id)invertedTextStyleBackgroundColors:(id)colors context:(id)context;
- (id)invertedTextStyleForegroundColors:(id)colors context:(id)context;
- (void)invertBackgroundColorsOfComponentTextStyle:(id)style component:(id)component DOM:(id)m context:(id)context;
- (void)invertBackgroundColorsOfTextStyle:(id)style component:(id)component DOM:(id)m context:(id)context;
- (void)invertComponentStyle:(id)style component:(id)component DOM:(id)m context:(id)context;
- (void)invertForegroundColorsOfComponentTextStyle:(id)style component:(id)component DOM:(id)m context:(id)context;
- (void)invertForegroundColorsOfTextStyle:(id)style component:(id)component DOM:(id)m context:(id)context;
- (void)modifyDOM:(id)m context:(id)context;
@end

@implementation SXDarkModeModifier

- (SXDarkModeModifier)initWithPolicyHandler:(id)handler configuration:(id)configuration namespacedObjectFactory:(id)factory
{
  handlerCopy = handler;
  configurationCopy = configuration;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = SXDarkModeModifier;
  v12 = [(SXDarkModeModifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_policyHandler, handler);
    objc_storeStrong(&v13->_configuration, configuration);
    objc_storeStrong(&v13->_namespacedObjectFactory, factory);
  }

  return v13;
}

- (void)modifyDOM:(id)m context:(id)context
{
  mCopy = m;
  contextCopy = context;
  policyHandler = self->_policyHandler;
  layoutOptions = [contextCopy layoutOptions];
  LODWORD(policyHandler) = [(SXDarkModePolicyHandler *)policyHandler shouldApplyDarkModeToDOM:mCopy layoutOptions:layoutOptions];

  if (policyHandler)
  {
    v10 = self->_policyHandler;
    documentStyle = [mCopy documentStyle];
    layoutOptions2 = [contextCopy layoutOptions];
    LODWORD(v10) = [(SXDarkModePolicyHandler *)v10 shouldApplyDarkModeToDocumentStyle:documentStyle DOM:mCopy layoutOptions:layoutOptions2];

    if (v10)
    {
      documentStyle2 = [mCopy documentStyle];
      v14 = [(SXDarkModeModifier *)self invertedDocumentStyle:documentStyle2 context:contextCopy];
      [mCopy setDocumentStyle:v14];
    }

    components = [mCopy components];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__SXDarkModeModifier_modifyDOM_context___block_invoke;
    v16[3] = &unk_1E8500318;
    v17 = mCopy;
    selfCopy = self;
    v19 = contextCopy;
    [components enumerateComponentsWithBlock:v16];
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

- (void)invertComponentStyle:(id)style component:(id)component DOM:(id)m context:(id)context
{
  mCopy = m;
  contextCopy = context;
  namespacedObjectFactory = self->_namespacedObjectFactory;
  componentCopy = component;
  identifier = [style identifier];
  identifier2 = [componentCopy identifier];

  v15 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForComponentStyle:identifier component:identifier2 DOM:mCopy];

  if (v15)
  {
    componentStyles = [mCopy componentStyles];
    v17 = [componentStyles objectForKeyedSubscript:v15];
    v18 = [(SXDarkModeModifier *)self invertedComponentStyle:v17 context:contextCopy];

    if (v18)
    {
      componentStyles2 = [mCopy componentStyles];
      [componentStyles2 setObject:v18 forKeyedSubscript:v15];
    }
  }
}

- (void)invertBackgroundColorsOfComponentTextStyle:(id)style component:(id)component DOM:(id)m context:(id)context
{
  mCopy = m;
  contextCopy = context;
  componentCopy = component;
  styleCopy = style;
  analysis = [mCopy analysis];
  namespacedObjectReferences = [analysis namespacedObjectReferences];

  namespacedObjectFactory = self->_namespacedObjectFactory;
  identifier = [styleCopy identifier];

  identifier2 = [componentCopy identifier];

  v18 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForComponentTextStyle:identifier component:identifier2 DOM:mCopy];

  if (v18)
  {
    componentTextStyles = [mCopy componentTextStyles];
    v20 = [componentTextStyles objectForKeyedSubscript:v18];
    v21 = [(SXDarkModeModifier *)self invertedComponentTextStyleBackgroundColors:v20 context:contextCopy];

    if (v21)
    {
      componentTextStyles2 = [mCopy componentTextStyles];
      [componentTextStyles2 setObject:v21 forKeyedSubscript:v18];
    }
  }
}

- (void)invertForegroundColorsOfComponentTextStyle:(id)style component:(id)component DOM:(id)m context:(id)context
{
  componentCopy = component;
  mCopy = m;
  contextCopy = context;
  styleCopy = style;
  analysis = [mCopy analysis];
  namespacedObjectReferences = [analysis namespacedObjectReferences];

  identifier = [styleCopy identifier];
  identifier2 = [componentCopy identifier];
  v17 = [namespacedObjectReferences componentTextStyleIdentifierForNamespacedComponentTextStyleIdentifier:identifier component:identifier2];

  identifier3 = [styleCopy identifier];
  LODWORD(identifier2) = [v17 isEqualToString:identifier3];

  if (identifier2)
  {
    namespacedObjectFactory = self->_namespacedObjectFactory;
    identifier4 = [styleCopy identifier];

    styleCopy = [componentCopy identifier];
    identifier5 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForComponentTextStyle:identifier4 component:styleCopy DOM:mCopy];

    v17 = identifier4;
  }

  else
  {
    identifier5 = [styleCopy identifier];
  }

  if (identifier5)
  {
    componentTextStyles = [mCopy componentTextStyles];
    v23 = [componentTextStyles objectForKeyedSubscript:identifier5];
    v24 = [(SXDarkModeModifier *)self invertedComponentTextStyleForegroundColors:v23 context:contextCopy];

    if (v24)
    {
      componentTextStyles2 = [mCopy componentTextStyles];
      [componentTextStyles2 setObject:v24 forKeyedSubscript:identifier5];
    }
  }
}

- (void)invertBackgroundColorsOfTextStyle:(id)style component:(id)component DOM:(id)m context:(id)context
{
  mCopy = m;
  contextCopy = context;
  componentCopy = component;
  styleCopy = style;
  analysis = [mCopy analysis];
  namespacedObjectReferences = [analysis namespacedObjectReferences];

  namespacedObjectFactory = self->_namespacedObjectFactory;
  identifier = [styleCopy identifier];

  identifier2 = [componentCopy identifier];

  v18 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForTextStyle:identifier component:identifier2 DOM:mCopy];

  if (v18)
  {
    textStyles = [mCopy textStyles];
    v20 = [textStyles objectForKeyedSubscript:v18];
    v21 = [(SXDarkModeModifier *)self invertedTextStyleBackgroundColors:v20 context:contextCopy];

    if (v21)
    {
      textStyles2 = [mCopy textStyles];
      [textStyles2 setObject:v21 forKeyedSubscript:v18];
    }
  }
}

- (void)invertForegroundColorsOfTextStyle:(id)style component:(id)component DOM:(id)m context:(id)context
{
  mCopy = m;
  contextCopy = context;
  componentCopy = component;
  styleCopy = style;
  analysis = [mCopy analysis];
  namespacedObjectReferences = [analysis namespacedObjectReferences];

  identifier = [componentCopy identifier];

  identifier2 = [styleCopy identifier];
  v17 = [namespacedObjectReferences textStyleIdentifierForNamespacedTextStyleIdentifier:identifier2 component:identifier];

  identifier3 = [styleCopy identifier];
  v19 = [v17 isEqualToString:identifier3];

  if (v19)
  {
    namespacedObjectFactory = self->_namespacedObjectFactory;
    identifier4 = [styleCopy identifier];

    identifier5 = [(SXNamespacedObjectFactory *)namespacedObjectFactory createNamespacedReferenceForTextStyle:identifier4 component:identifier DOM:mCopy];
    styleCopy = v17;
    v17 = identifier4;
  }

  else
  {
    identifier5 = [styleCopy identifier];
  }

  if (identifier5)
  {
    textStyles = [mCopy textStyles];
    v24 = [textStyles objectForKeyedSubscript:identifier5];
    v25 = [(SXDarkModeModifier *)self invertedTextStyleForegroundColors:v24 context:contextCopy];

    if (v25)
    {
      textStyles2 = [mCopy textStyles];
      [textStyles2 setObject:v25 forKeyedSubscript:identifier5];
    }
  }
}

- (id)invertedDocumentStyle:(id)style context:(id)context
{
  styleCopy = style;
  contextCopy = context;
  jSONRepresentation = [styleCopy JSONRepresentation];
  v9 = jSONRepresentation;
  if (!jSONRepresentation)
  {
    jSONRepresentation = MEMORY[0x1E695E0F8];
  }

  v10 = [jSONRepresentation mutableCopy];

  backgroundColor = [styleCopy backgroundColor];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v13 = [(SXDarkModeModifier *)self invertColor:backgroundColor defaultColor:blackColor];
  [v10 setObject:v13 forKeyedSubscript:@"backgroundColor"];

  topBackgroundColor = [styleCopy topBackgroundColor];
  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  v16 = [(SXDarkModeModifier *)self invertColor:topBackgroundColor defaultColor:blackColor2];
  [v10 setObject:v16 forKeyedSubscript:@"topBackgroundColor"];

  topBackgroundGradient = [styleCopy topBackgroundGradient];

  if (topBackgroundGradient)
  {
    topBackgroundGradient2 = [styleCopy topBackgroundGradient];
    v19 = [(SXDarkModeModifier *)self invertedLinearGradient:topBackgroundGradient2];
    [v10 setObject:v19 forKeyedSubscript:@"topBackgroundGradient"];
  }

  v20 = [SXDocumentStyle alloc];
  specVersion = [contextCopy specVersion];

  v22 = [(SXJSONObject *)v20 initWithJSONObject:v10 andVersion:specVersion];

  return v22;
}

- (id)invertedComponentStyle:(id)style context:(id)context
{
  styleCopy = style;
  if (styleCopy)
  {
    contextCopy = context;
    jSONRepresentation = [styleCopy JSONRepresentation];
    v9 = [jSONRepresentation mutableCopy];

    backgroundColor = [styleCopy backgroundColor];

    if (backgroundColor)
    {
      backgroundColor2 = [styleCopy backgroundColor];
      v12 = [(SXDarkModeModifier *)self invertColor:backgroundColor2 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"backgroundColor"];
    }

    fill = [styleCopy fill];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      fill2 = [styleCopy fill];
      v16 = [(SXDarkModeModifier *)self invertedGradientFill:fill2];
      [v9 setObject:v16 forKeyedSubscript:@"fill"];
    }

    shadow = [styleCopy shadow];

    if (shadow)
    {
      shadow2 = [styleCopy shadow];
      v19 = [(SXDarkModeModifier *)self invertedComponentShadow:shadow2];
      [v9 setObject:v19 forKeyedSubscript:@"shadow"];
    }

    border = [styleCopy border];

    if (border)
    {
      border2 = [styleCopy border];
      v22 = [(SXDarkModeModifier *)self invertedBorder:border2];
      [v9 setObject:v22 forKeyedSubscript:@"border"];
    }

    tableStyle = [styleCopy tableStyle];

    if (tableStyle)
    {
      tableStyle2 = [styleCopy tableStyle];
      v25 = [(SXDarkModeModifier *)self invertedDataTableStyle:tableStyle2];
      [v9 setObject:v25 forKeyedSubscript:@"tableStyle"];
    }

    v26 = [SXComponentStyle alloc];
    specVersion = [contextCopy specVersion];

    v28 = [(SXJSONObject *)v26 initWithJSONObject:v9 andVersion:specVersion];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)invertedComponentTextStyleBackgroundColors:(id)colors context:(id)context
{
  colorsCopy = colors;
  contextCopy = context;
  if (colorsCopy)
  {
    jSONRepresentation = [colorsCopy JSONRepresentation];
    v9 = [jSONRepresentation mutableCopy];

    backgroundColor = [colorsCopy backgroundColor];

    if (backgroundColor)
    {
      backgroundColor2 = [colorsCopy backgroundColor];
      v12 = [(SXDarkModeModifier *)self invertColor:backgroundColor2 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"backgroundColor"];
    }

    linkStyle = [colorsCopy linkStyle];

    if (linkStyle)
    {
      linkStyle2 = [colorsCopy linkStyle];
      v15 = [(SXDarkModeModifier *)self invertedTextStyleBackgroundColors:linkStyle2 context:contextCopy];
      jSONRepresentation2 = [v15 JSONRepresentation];
      [v9 setObject:jSONRepresentation2 forKeyedSubscript:@"linkStyle"];
    }

    v17 = [SXComponentTextStyle alloc];
    specVersion = [contextCopy specVersion];
    v19 = [(SXJSONObject *)v17 initWithJSONObject:v9 andVersion:specVersion];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)invertedComponentTextStyleForegroundColors:(id)colors context:(id)context
{
  colorsCopy = colors;
  contextCopy = context;
  if (colorsCopy)
  {
    jSONRepresentation = [colorsCopy JSONRepresentation];
    v9 = [jSONRepresentation mutableCopy];

    textColor = [colorsCopy textColor];

    if (textColor)
    {
      textColor2 = [colorsCopy textColor];
      v12 = [(SXDarkModeModifier *)self invertColor:textColor2 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"textColor"];
    }

    stroke = [colorsCopy stroke];

    if (stroke)
    {
      stroke2 = [colorsCopy stroke];
      v15 = [(SXDarkModeModifier *)self invertedTextStroke:stroke2];
      [v9 setObject:v15 forKeyedSubscript:@"stroke"];
    }

    textShadow = [colorsCopy textShadow];

    if (textShadow)
    {
      textShadow2 = [colorsCopy textShadow];
      v18 = [(SXDarkModeModifier *)self invertedTextStroke:textShadow2];
      [v9 setObject:v18 forKeyedSubscript:@"textShadow"];
    }

    dropCapStyle = [colorsCopy dropCapStyle];

    if (dropCapStyle)
    {
      dropCapStyle2 = [colorsCopy dropCapStyle];
      v21 = [(SXDarkModeModifier *)self invertedDropCapStyle:dropCapStyle2];
      [v9 setObject:v21 forKeyedSubscript:@"dropCapStyle"];
    }

    underline = [colorsCopy underline];

    if (underline)
    {
      underline2 = [colorsCopy underline];
      v24 = [(SXDarkModeModifier *)self invertedTextDecoration:underline2];
      [v9 setObject:v24 forKeyedSubscript:@"underline"];
    }

    strikethrough = [colorsCopy strikethrough];

    if (strikethrough)
    {
      strikethrough2 = [colorsCopy strikethrough];
      v27 = [(SXDarkModeModifier *)self invertedTextDecoration:strikethrough2];
      [v9 setObject:v27 forKeyedSubscript:@"strikethrough"];
    }

    linkStyle = [colorsCopy linkStyle];

    if (linkStyle)
    {
      linkStyle2 = [colorsCopy linkStyle];
      v30 = [(SXDarkModeModifier *)self invertedTextStyleForegroundColors:linkStyle2 context:contextCopy];
      jSONRepresentation2 = [v30 JSONRepresentation];
      [v9 setObject:jSONRepresentation2 forKeyedSubscript:@"linkStyle"];
    }

    v32 = [SXComponentTextStyle alloc];
    specVersion = [contextCopy specVersion];
    v34 = [(SXJSONObject *)v32 initWithJSONObject:v9 andVersion:specVersion];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)invertedTextStyleBackgroundColors:(id)colors context:(id)context
{
  colorsCopy = colors;
  if (colorsCopy)
  {
    contextCopy = context;
    jSONRepresentation = [colorsCopy JSONRepresentation];
    v9 = [jSONRepresentation mutableCopy];

    backgroundColor = [colorsCopy backgroundColor];

    if (backgroundColor)
    {
      backgroundColor2 = [colorsCopy backgroundColor];
      v12 = [(SXDarkModeModifier *)self invertColor:backgroundColor2 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"backgroundColor"];
    }

    v13 = [SXTextStyle alloc];
    specVersion = [contextCopy specVersion];

    v15 = [(SXJSONObject *)v13 initWithJSONObject:v9 andVersion:specVersion];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)invertedTextStyleForegroundColors:(id)colors context:(id)context
{
  colorsCopy = colors;
  if (colorsCopy)
  {
    contextCopy = context;
    jSONRepresentation = [colorsCopy JSONRepresentation];
    v9 = [jSONRepresentation mutableCopy];

    textColor = [colorsCopy textColor];

    if (textColor)
    {
      textColor2 = [colorsCopy textColor];
      v12 = [(SXDarkModeModifier *)self invertColor:textColor2 defaultColor:0];
      [v9 setObject:v12 forKeyedSubscript:@"textColor"];
    }

    stroke = [colorsCopy stroke];

    if (stroke)
    {
      stroke2 = [colorsCopy stroke];
      v15 = [(SXDarkModeModifier *)self invertedTextStroke:stroke2];
      [v9 setObject:v15 forKeyedSubscript:@"stroke"];
    }

    textShadow = [colorsCopy textShadow];

    if (textShadow)
    {
      textShadow2 = [colorsCopy textShadow];
      v18 = [(SXDarkModeModifier *)self invertedTextStroke:textShadow2];
      [v9 setObject:v18 forKeyedSubscript:@"textShadow"];
    }

    underline = [colorsCopy underline];

    if (underline)
    {
      underline2 = [colorsCopy underline];
      v21 = [(SXDarkModeModifier *)self invertedTextDecoration:underline2];
      [v9 setObject:v21 forKeyedSubscript:@"underline"];
    }

    strikethrough = [colorsCopy strikethrough];

    if (strikethrough)
    {
      strikethrough2 = [colorsCopy strikethrough];
      v24 = [(SXDarkModeModifier *)self invertedTextDecoration:strikethrough2];
      [v9 setObject:v24 forKeyedSubscript:@"strikethrough"];
    }

    v25 = [SXTextStyle alloc];
    specVersion = [contextCopy specVersion];

    v27 = [(SXJSONObject *)v25 initWithJSONObject:v9 andVersion:specVersion];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)invertedTextStroke:(id)stroke
{
  strokeCopy = stroke;
  jSONRepresentation = [strokeCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  color = [strokeCopy color];

  if (color)
  {
    color2 = [strokeCopy color];
    v9 = [(SXDarkModeModifier *)self invertColor:color2 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"color"];
  }

  return v6;
}

- (id)invertedTextShadow:(id)shadow
{
  shadowCopy = shadow;
  jSONRepresentation = [shadowCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  color = [shadowCopy color];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [(SXDarkModeModifier *)self invertColor:color defaultColor:whiteColor];
  [v6 setObject:v9 forKeyedSubscript:@"color"];

  return v6;
}

- (id)invertedDropCapStyle:(id)style
{
  styleCopy = style;
  jSONRepresentation = [styleCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  textColor = [styleCopy textColor];

  if (textColor)
  {
    textColor2 = [styleCopy textColor];
    v9 = [(SXDarkModeModifier *)self invertColor:textColor2 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"textColor"];
  }

  backgroundColor = [styleCopy backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [styleCopy backgroundColor];
    v12 = [(SXDarkModeModifier *)self invertColor:backgroundColor2 defaultColor:0];
    [v6 setObject:v12 forKeyedSubscript:@"backgroundColor"];
  }

  return v6;
}

- (id)invertedTextDecoration:(id)decoration
{
  decorationCopy = decoration;
  jSONRepresentation = [decorationCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  color = [decorationCopy color];

  if (color)
  {
    color2 = [decorationCopy color];
    v9 = [(SXDarkModeModifier *)self invertColor:color2 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"color"];
  }

  return v6;
}

- (id)invertedGradientFill:(id)fill
{
  v28 = *MEMORY[0x1E69E9840];
  fillCopy = fill;
  jSONRepresentation = [fillCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  colorStops = [fillCopy colorStops];

  if (colorStops)
  {
    v21 = v6;
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = fillCopy;
    colorStops2 = [fillCopy colorStops];
    v10 = [colorStops2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(colorStops2);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          jSONRepresentation2 = [v14 JSONRepresentation];
          v16 = [jSONRepresentation2 mutableCopy];

          color = [v14 color];

          if (color)
          {
            color2 = [v14 color];
            v19 = [(SXDarkModeModifier *)self invertColor:color2 defaultColor:0];
            [v16 setObject:v19 forKeyedSubscript:@"color"];
          }

          [array addObject:v16];
        }

        v11 = [colorStops2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v6 = v21;
    [v21 setObject:array forKeyedSubscript:@"colorStops"];

    fillCopy = v22;
  }

  return v6;
}

- (id)invertedLinearGradient:(id)gradient
{
  v28 = *MEMORY[0x1E69E9840];
  gradientCopy = gradient;
  jSONRepresentation = [gradientCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  colorStops = [gradientCopy colorStops];

  if (colorStops)
  {
    v21 = v6;
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = gradientCopy;
    colorStops2 = [gradientCopy colorStops];
    v10 = [colorStops2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(colorStops2);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          jSONRepresentation2 = [v14 JSONRepresentation];
          v16 = [jSONRepresentation2 mutableCopy];

          color = [v14 color];

          if (color)
          {
            color2 = [v14 color];
            v19 = [(SXDarkModeModifier *)self invertColor:color2 defaultColor:0];
            [v16 setObject:v19 forKeyedSubscript:@"color"];
          }

          [array addObject:v16];
        }

        v11 = [colorStops2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v6 = v21;
    [v21 setObject:array forKeyedSubscript:@"colorStops"];

    gradientCopy = v22;
  }

  return v6;
}

- (id)invertedComponentShadow:(id)shadow
{
  shadowCopy = shadow;
  jSONRepresentation = [shadowCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  color = [shadowCopy color];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [(SXDarkModeModifier *)self invertColor:color defaultColor:whiteColor];
  [v6 setObject:v9 forKeyedSubscript:@"color"];

  return v6;
}

- (id)invertedBorder:(id)border
{
  borderCopy = border;
  jSONRepresentation = [borderCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  v7 = [borderCopy all];

  if (v7)
  {
    v8 = [borderCopy all];
    v9 = [(SXDarkModeModifier *)self invertedStrokeStyle:v8];
    [v6 setObject:v9 forKeyedSubscript:@"all"];
  }

  v10 = [borderCopy top];

  if (v10)
  {
    v11 = [borderCopy top];
    v12 = [(SXDarkModeModifier *)self invertedStrokeStyle:v11];
    [v6 setObject:v12 forKeyedSubscript:@"top"];
  }

  right = [borderCopy right];

  if (right)
  {
    right2 = [borderCopy right];
    v15 = [(SXDarkModeModifier *)self invertedStrokeStyle:right2];
    [v6 setObject:v15 forKeyedSubscript:@"right"];
  }

  bottom = [borderCopy bottom];

  if (bottom)
  {
    bottom2 = [borderCopy bottom];
    v18 = [(SXDarkModeModifier *)self invertedStrokeStyle:bottom2];
    [v6 setObject:v18 forKeyedSubscript:@"bottom"];
  }

  left = [borderCopy left];

  if (left)
  {
    left2 = [borderCopy left];
    v21 = [(SXDarkModeModifier *)self invertedStrokeStyle:left2];
    [v6 setObject:v21 forKeyedSubscript:@"left"];
  }

  return v6;
}

- (id)invertedStrokeStyle:(id)style
{
  styleCopy = style;
  jSONRepresentation = [styleCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  color = [styleCopy color];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [(SXDarkModeModifier *)self invertColor:color defaultColor:whiteColor];
  [v6 setObject:v9 forKeyedSubscript:@"color"];

  return v6;
}

- (id)invertedComponent:(id)component context:(id)context
{
  componentCopy = component;
  contextCopy = context;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = componentCopy;
  v10 = v9;
  v11 = v9;
  if (isKindOfClass)
  {
    jSONRepresentation = [(SXJSONObject *)v9 JSONRepresentation];
    v13 = [jSONRepresentation mutableCopy];

    stroke = [(SXLineComponent *)v10 stroke];

    v15 = [(SXDarkModeModifier *)self invertedStrokeStyle:stroke];
    [v13 setObject:v15 forKeyedSubscript:@"stroke"];

    v16 = [SXLineComponent alloc];
    specVersion = [contextCopy specVersion];
    v11 = [(SXJSONObject *)v16 initWithJSONObject:v13 andVersion:specVersion];
  }

  return v11;
}

- (id)invertedDataTableStyle:(id)style
{
  styleCopy = style;
  jSONRepresentation = [styleCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  headerRows = [styleCopy headerRows];

  if (headerRows)
  {
    headerRows2 = [styleCopy headerRows];
    v9 = [(SXDarkModeModifier *)self invertedDataTableRowStyle:headerRows2];
    [v6 setObject:v9 forKeyedSubscript:@"headerRows"];
  }

  headerColumns = [styleCopy headerColumns];

  if (headerColumns)
  {
    headerColumns2 = [styleCopy headerColumns];
    v12 = [(SXDarkModeModifier *)self invertedDataTableColumnStyle:headerColumns2];
    [v6 setObject:v12 forKeyedSubscript:@"headerColumns"];
  }

  headerCells = [styleCopy headerCells];

  if (headerCells)
  {
    headerCells2 = [styleCopy headerCells];
    v15 = [(SXDarkModeModifier *)self invertedDataTableCellStyle:headerCells2];
    [v6 setObject:v15 forKeyedSubscript:@"headerCells"];
  }

  rows = [styleCopy rows];

  if (rows)
  {
    rows2 = [styleCopy rows];
    v18 = [(SXDarkModeModifier *)self invertedDataTableRowStyle:rows2];
    [v6 setObject:v18 forKeyedSubscript:@"rows"];
  }

  columns = [styleCopy columns];

  if (columns)
  {
    columns2 = [styleCopy columns];
    v21 = [(SXDarkModeModifier *)self invertedDataTableColumnStyle:columns2];
    [v6 setObject:v21 forKeyedSubscript:@"columns"];
  }

  cells = [styleCopy cells];

  if (cells)
  {
    cells2 = [styleCopy cells];
    v24 = [(SXDarkModeModifier *)self invertedDataTableCellStyle:cells2];
    [v6 setObject:v24 forKeyedSubscript:@"cells"];
  }

  return v6;
}

- (id)invertedDataTableRowStyle:(id)style
{
  v27 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  jSONRepresentation = [styleCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  backgroundColor = [styleCopy backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [styleCopy backgroundColor];
    v9 = [(SXDarkModeModifier *)self invertColor:backgroundColor2 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"backgroundColor"];
  }

  divider = [styleCopy divider];

  if (divider)
  {
    divider2 = [styleCopy divider];
    v12 = [(SXDarkModeModifier *)self invertedDataTableBorder:divider2];
    [v6 setObject:v12 forKeyedSubscript:@"divider"];
  }

  conditional = [styleCopy conditional];

  if (conditional)
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    conditional2 = [styleCopy conditional];
    v16 = [conditional2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(conditional2);
          }

          v20 = [(SXDarkModeModifier *)self invertedDataTableRowStyle:*(*(&v22 + 1) + 8 * i)];
          [array addObject:v20];
        }

        v17 = [conditional2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v6 setObject:array forKeyedSubscript:@"conditional"];
  }

  return v6;
}

- (id)invertedDataTableColumnStyle:(id)style
{
  v27 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  jSONRepresentation = [styleCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  backgroundColor = [styleCopy backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [styleCopy backgroundColor];
    v9 = [(SXDarkModeModifier *)self invertColor:backgroundColor2 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"backgroundColor"];
  }

  divider = [styleCopy divider];

  if (divider)
  {
    divider2 = [styleCopy divider];
    v12 = [(SXDarkModeModifier *)self invertedDataTableBorder:divider2];
    [v6 setObject:v12 forKeyedSubscript:@"divider"];
  }

  conditional = [styleCopy conditional];

  if (conditional)
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    conditional2 = [styleCopy conditional];
    v16 = [conditional2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(conditional2);
          }

          v20 = [(SXDarkModeModifier *)self invertedDataTableColumnStyle:*(*(&v22 + 1) + 8 * i)];
          [array addObject:v20];
        }

        v17 = [conditional2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v6 setObject:array forKeyedSubscript:@"conditional"];
  }

  return v6;
}

- (id)invertedDataTableCellStyle:(id)style
{
  v27 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  jSONRepresentation = [styleCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  backgroundColor = [styleCopy backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [styleCopy backgroundColor];
    v9 = [(SXDarkModeModifier *)self invertColor:backgroundColor2 defaultColor:0];
    [v6 setObject:v9 forKeyedSubscript:@"backgroundColor"];
  }

  border = [styleCopy border];

  if (border)
  {
    border2 = [styleCopy border];
    v12 = [(SXDarkModeModifier *)self invertedDataTableBorderSides:border2];
    [v6 setObject:v12 forKeyedSubscript:@"border"];
  }

  conditional = [styleCopy conditional];

  if (conditional)
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    conditional2 = [styleCopy conditional];
    v16 = [conditional2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(conditional2);
          }

          v20 = [(SXDarkModeModifier *)self invertedDataTableCellStyle:*(*(&v22 + 1) + 8 * i)];
          [array addObject:v20];
        }

        v17 = [conditional2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v6 setObject:array forKeyedSubscript:@"conditional"];
  }

  return v6;
}

- (id)invertedDataTableBorder:(id)border
{
  borderCopy = border;
  jSONRepresentation = [borderCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  color = [borderCopy color];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v9 = [(SXDarkModeModifier *)self invertColor:color defaultColor:whiteColor];
  [v6 setObject:v9 forKeyedSubscript:@"color"];

  return v6;
}

- (id)invertedDataTableBorderSides:(id)sides
{
  sidesCopy = sides;
  jSONRepresentation = [sidesCopy JSONRepresentation];
  v6 = [jSONRepresentation mutableCopy];

  v7 = [sidesCopy top];

  if (v7)
  {
    v8 = [sidesCopy top];
    v9 = [(SXDarkModeModifier *)self invertedDataTableBorder:v8];
    [v6 setObject:v9 forKeyedSubscript:@"top"];
  }

  right = [sidesCopy right];

  if (right)
  {
    right2 = [sidesCopy right];
    v12 = [(SXDarkModeModifier *)self invertedDataTableBorder:right2];
    [v6 setObject:v12 forKeyedSubscript:@"right"];
  }

  bottom = [sidesCopy bottom];

  if (bottom)
  {
    bottom2 = [sidesCopy bottom];
    v15 = [(SXDarkModeModifier *)self invertedDataTableBorder:bottom2];
    [v6 setObject:v15 forKeyedSubscript:@"bottom"];
  }

  left = [sidesCopy left];

  if (left)
  {
    left2 = [sidesCopy left];
    v18 = [(SXDarkModeModifier *)self invertedDataTableBorder:left2];
    [v6 setObject:v18 forKeyedSubscript:@"left"];
  }

  return v6;
}

- (id)invertColor:(id)color defaultColor:(id)defaultColor
{
  colorCopy = color;
  defaultColorCopy = defaultColor;
  v8 = defaultColorCopy;
  if (!colorCopy)
  {
    v12 = [defaultColorCopy hex];
    goto LABEL_17;
  }

  colors = [(SXDarkModeConfiguration *)self->_configuration colors];

  if (!colors || (-[SXDarkModeConfiguration colors](self->_configuration, "colors"), v10 = objc_claimAutoreleasedReturnValue(), [colorCopy hex], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", v11), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, !v12))
  {
    [(SXDarkModeConfiguration *)self->_configuration saturationThreshold];
    v14 = v13;
    inversionBehavior = [(SXDarkModeConfiguration *)self->_configuration inversionBehavior];
    if (inversionBehavior == 2)
    {
      v20 = 0.0;
      [colorCopy getHue:0 saturation:&v20 lightness:0 alpha:0];
      v16 = v20;
      if (v20 <= v14)
      {
        invertedLightness = [colorCopy invertedLightness];
        goto LABEL_14;
      }
    }

    else
    {
      if (inversionBehavior != 1)
      {
        if (inversionBehavior)
        {
          goto LABEL_15;
        }

        v20 = 0.0;
        [colorCopy getHue:0 saturation:&v20 brightness:0 alpha:0];
        v16 = v20;
        if (v20 > v14)
        {
          goto LABEL_15;
        }

        invertedLightness = [colorCopy invertedRGB];
        goto LABEL_14;
      }

      v20 = 0.0;
      [colorCopy getHue:0 saturation:&v20 brightness:0 alpha:0];
      v16 = v20;
      if (v20 <= v14)
      {
        invertedLightness = [colorCopy invertedBrightness];
LABEL_14:
        v18 = invertedLightness;

        colorCopy = v18;
      }
    }

LABEL_15:
    v12 = [colorCopy hex];
  }

LABEL_17:

  return v12;
}

@end