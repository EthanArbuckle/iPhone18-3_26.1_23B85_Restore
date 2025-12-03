@interface SXTextContrastDarkModePolicyException
- (SXTextContrastDarkModePolicyException)initWithComponentStyleMerger:(id)merger componentTextStyleMerger:(id)styleMerger;
- (id)componentStyleForComponent:(id)component DOM:(id)m;
- (id)componentTextStyleForButtonComponent:(id)component DOM:(id)m;
- (id)componentTextStyleForTextComponent:(id)component DOM:(id)m;
- (id)mergedComponentTextStyleWithIdentifiers:(id)identifiers DOM:(id)m;
- (id)opaqueComponentStyleForComponent:(id)component DOM:(id)m;
- (int64_t)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)component DOM:(id)m;
- (int64_t)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)component DOM:(id)m;
@end

@implementation SXTextContrastDarkModePolicyException

- (SXTextContrastDarkModePolicyException)initWithComponentStyleMerger:(id)merger componentTextStyleMerger:(id)styleMerger
{
  mergerCopy = merger;
  styleMergerCopy = styleMerger;
  v12.receiver = self;
  v12.super_class = SXTextContrastDarkModePolicyException;
  v9 = [(SXTextContrastDarkModePolicyException *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_componentStyleMerger, merger);
    objc_storeStrong(&v10->_componentTextStyleMerger, styleMerger);
  }

  return v10;
}

- (int64_t)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)component DOM:(id)m
{
  componentCopy = component;
  mCopy = m;
  analysis = [mCopy analysis];
  identifier = [componentCopy identifier];
  v10 = [analysis componentTextStylesForComponent:identifier];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(SXTextContrastDarkModePolicyException *)self opaqueComponentStyleForComponent:componentCopy DOM:mCopy];
    fill = [v12 fill];

    if (fill)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

- (int64_t)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)component DOM:(id)m
{
  v135 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  analysis = [mCopy analysis];
  identifier = [componentCopy identifier];
  v10 = [analysis componentTextStylesForComponent:identifier];
  v11 = [v10 count];

  if (v11)
  {
    v115 = [(SXTextContrastDarkModePolicyException *)self opaqueComponentStyleForComponent:componentCopy DOM:mCopy];
    fill = [v115 fill];

    if (fill)
    {
      v13 = 0;
LABEL_58:

      goto LABEL_59;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      text = [componentCopy text];
      v15 = [text length];

      v16 = [(SXTextContrastDarkModePolicyException *)self componentTextStyleForTextComponent:componentCopy DOM:mCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = -1;
        goto LABEL_58;
      }

      text2 = [componentCopy text];
      v15 = [text2 length];

      v16 = [(SXTextContrastDarkModePolicyException *)self componentTextStyleForButtonComponent:componentCopy DOM:mCopy];
    }

    v114 = v16;
    array = [MEMORY[0x1E695DF70] array];
    documentStyle = [mCopy documentStyle];
    backgroundColor = [documentStyle backgroundColor];
    [backgroundColor relativeLuminance];
    v22 = v21;

    backgroundColor2 = [v115 backgroundColor];
    [backgroundColor2 relativeLuminance];
    v25 = v24;

    v124 = array;
    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        [array addObject:&unk_1F538A238];
        backgroundColor3 = [v115 backgroundColor];

        v28 = v25;
        if (backgroundColor3 || ([mCopy documentStyle], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "backgroundColor"), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v28 = v22, v30))
        {
          v31 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
          [v124 setObject:v31 atIndexedSubscript:i];
        }

        array = v124;
      }
    }

    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    textColor = [v114 textColor];
    [textColor relativeLuminance];
    v36 = v35;

    backgroundColor4 = [v114 backgroundColor];
    [backgroundColor4 relativeLuminance];
    v39 = v38;

    textColor2 = [v114 textColor];
    invertedLightness = [textColor2 invertedLightness];
    [invertedLightness relativeLuminance];
    v43 = v42;

    if (v15)
    {
      for (j = 0; j != v15; ++j)
      {
        v45 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
        [array2 setObject:v45 atIndexedSubscript:j];

        v46 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
        [array3 setObject:v46 atIndexedSubscript:j];

        backgroundColor5 = [v114 backgroundColor];

        if (backgroundColor5)
        {
          v48 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
          [array setObject:v48 atIndexedSubscript:j];
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v120 = mCopy;
      v113 = componentCopy;
      v49 = componentCopy;
      linkStyle = [v114 linkStyle];

      v119 = v49;
      if (linkStyle)
      {
        linkStyle2 = [v114 linkStyle];
        textColor3 = [linkStyle2 textColor];
        [textColor3 relativeLuminance];
        v54 = v53;

        textColor4 = [linkStyle2 textColor];
        invertedLightness2 = [textColor4 invertedLightness];
        [invertedLightness2 relativeLuminance];
        v58 = v57;

        backgroundColor6 = [linkStyle2 backgroundColor];
        [backgroundColor6 relativeLuminance];
        v61 = v60;

        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        obj = [v49 additions];
        v62 = [obj countByEnumeratingWithState:&v129 objects:v134 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v130;
          do
          {
            for (k = 0; k != v63; ++k)
            {
              if (*v130 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v66 = *(*(&v129 + 1) + 8 * k);
              for (m = [v66 range]; ; ++m)
              {
                range = [v66 range];
                if (m >= range + v69)
                {
                  break;
                }

                textColor5 = [linkStyle2 textColor];

                if (textColor5)
                {
                  v71 = [MEMORY[0x1E696AD98] numberWithDouble:v54];
                  [array2 setObject:v71 atIndexedSubscript:m];

                  v72 = [MEMORY[0x1E696AD98] numberWithDouble:v58];
                  [array3 setObject:v72 atIndexedSubscript:m];
                }

                backgroundColor7 = [linkStyle2 backgroundColor];

                if (backgroundColor7)
                {
                  v74 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
                  [v124 setObject:v74 atIndexedSubscript:m];
                }
              }
            }

            v63 = [obj countByEnumeratingWithState:&v129 objects:v134 count:16];
          }

          while (v63);
        }

        array = v124;
        v49 = v119;
      }

      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      inlineTextStyles = [v49 inlineTextStyles];
      v121 = [inlineTextStyles countByEnumeratingWithState:&v125 objects:v133 count:16];
      if (v121)
      {
        v117 = array2;
        v118 = *v126;
        do
        {
          for (n = 0; n != v121; ++n)
          {
            if (*v126 != v118)
            {
              objc_enumerationMutation(inlineTextStyles);
            }

            v76 = *(*(&v125 + 1) + 8 * n);
            analysis2 = [v120 analysis];
            namespacedObjectReferences = [analysis2 namespacedObjectReferences];
            textStyle = [v76 textStyle];
            identifier2 = [v49 identifier];
            v81 = [namespacedObjectReferences namespacedTextStyleIdentifierForIdentifier:textStyle component:identifier2];

            textStyles = [v120 textStyles];
            obja = v81;
            v83 = [textStyles objectForKey:v81];

            textColor6 = [v83 textColor];
            [textColor6 relativeLuminance];
            v86 = v85;

            textColor7 = [v83 textColor];
            invertedLightness3 = [textColor7 invertedLightness];
            [invertedLightness3 relativeLuminance];
            v90 = v89;

            backgroundColor8 = [v83 backgroundColor];
            [backgroundColor8 relativeLuminance];
            v93 = v92;

            range2 = [v76 range];
            range3 = [v76 range];
            array = v124;
            array2 = v117;
            if (range2 < range3 + v96)
            {
              do
              {
                textColor8 = [v83 textColor];

                if (textColor8)
                {
                  v98 = [MEMORY[0x1E696AD98] numberWithDouble:v86];
                  [v117 setObject:v98 atIndexedSubscript:range2];

                  v99 = [MEMORY[0x1E696AD98] numberWithDouble:v90];
                  [array3 setObject:v99 atIndexedSubscript:range2];
                }

                backgroundColor9 = [v83 backgroundColor];

                if (backgroundColor9)
                {
                  v101 = [MEMORY[0x1E696AD98] numberWithDouble:v93];
                  [v124 setObject:v101 atIndexedSubscript:range2];
                }

                ++range2;
                range4 = [v76 range];
              }

              while (range2 < range4 + v103);
            }

            v49 = v119;
          }

          v121 = [inlineTextStyles countByEnumeratingWithState:&v125 objects:v133 count:16];
        }

        while (v121);
      }

      componentCopy = v113;
      mCopy = v120;
    }

    v104 = [array2 valueForKeyPath:@"@avg.self"];
    [v104 floatValue];

    v105 = [array3 valueForKeyPath:@"@avg.self"];
    [v105 floatValue];
    v107 = v106;

    v108 = [array valueForKeyPath:@"@avg.self"];
    [v108 floatValue];
    v110 = v109;

    v111 = (v110 + 0.05) / (v107 + 0.05);
    if (v111 < 1.0)
    {
      v111 = 1.0 / v111;
    }

    if (v111 < 4.5)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    goto LABEL_58;
  }

  v13 = -1;
LABEL_59:

  return v13;
}

- (id)opaqueComponentStyleForComponent:(id)component DOM:(id)m
{
  v35 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  v9 = [(SXTextContrastDarkModePolicyException *)self componentStyleForComponent:componentCopy DOM:mCopy];
  backgroundColor = [v9 backgroundColor];
  if (backgroundColor)
  {
  }

  else
  {
    fill = [v9 fill];

    if (!fill)
    {
      analysis = [mCopy analysis];
      identifier = [componentCopy identifier];
      v14 = [analysis containerPathForComponentWithIdentifier:identifier];
      v15 = [v14 mutableCopy];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = [v15 reverseObjectEnumerator];
      v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v29)
      {
        v25 = v9;
        v26 = componentCopy;
        v28 = *v31;
        while (2)
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v31 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            [v15 removeObject:v17];
            components = [mCopy components];
            v19 = [components componentsForContainerComponentWithPath:v15];

            v20 = [v19 componentForIdentifier:v17];
            v9 = [(SXTextContrastDarkModePolicyException *)self componentStyleForComponent:v20 DOM:mCopy];
            backgroundColor2 = [v9 backgroundColor];
            if (backgroundColor2)
            {
              backgroundColor3 = [v9 backgroundColor];
              [backgroundColor3 alphaComponent];
              if (v22 > 0.0)
              {

LABEL_18:
                goto LABEL_19;
              }
            }

            fill2 = [v9 fill];

            if (backgroundColor2)
            {
            }

            if (fill2)
            {
              goto LABEL_18;
            }
          }

          v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }

        v9 = v25;
LABEL_19:
        componentCopy = v26;
      }
    }
  }

  return v9;
}

- (id)componentStyleForComponent:(id)component DOM:(id)m
{
  v33 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  v8 = MEMORY[0x1E695DF70];
  classification = [componentCopy classification];
  defaultComponentStyleIdentifiers = [classification defaultComponentStyleIdentifiers];
  v11 = [v8 arrayWithArray:defaultComponentStyleIdentifiers];

  style = [componentCopy style];

  if (style)
  {
    style2 = [componentCopy style];
    [v11 addObject:style2];
  }

  analysis = [mCopy analysis];
  namespacedObjectReferences = [analysis namespacedObjectReferences];
  identifier = [componentCopy identifier];
  v17 = [namespacedObjectReferences namespacedComponentStyleIdentifiersForIdentifiers:v11 component:identifier];

  array = [MEMORY[0x1E695DF70] array];
  componentStyles = [mCopy componentStyles];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [componentStyles objectForKey:{*(*(&v28 + 1) + 8 * i), v28}];
        if (v25)
        {
          [array addObject:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v22);
  }

  if ([array count])
  {
    v26 = [(SXJSONObjectMerger *)self->_componentStyleMerger mergeObjects:array];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)componentTextStyleForTextComponent:(id)component DOM:(id)m
{
  componentCopy = component;
  v7 = MEMORY[0x1E695DF70];
  mCopy = m;
  classification = [componentCopy classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];
  v11 = [v7 arrayWithArray:defaultTextStyleIdentifiers];

  textStyle = [componentCopy textStyle];

  if (textStyle)
  {
    textStyle2 = [componentCopy textStyle];
    [v11 addObject:textStyle2];
  }

  analysis = [mCopy analysis];
  namespacedObjectReferences = [analysis namespacedObjectReferences];
  identifier = [componentCopy identifier];
  v17 = [namespacedObjectReferences namespacedComponentTextStyleIdentifiersForIdentifiers:v11 component:identifier];

  v18 = [(SXTextContrastDarkModePolicyException *)self mergedComponentTextStyleWithIdentifiers:v17 DOM:mCopy];

  return v18;
}

- (id)componentTextStyleForButtonComponent:(id)component DOM:(id)m
{
  componentCopy = component;
  v7 = MEMORY[0x1E695DF70];
  mCopy = m;
  classification = [componentCopy classification];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];
  v11 = [v7 arrayWithArray:defaultTextStyleIdentifiers];

  textStyle = [componentCopy textStyle];

  if (textStyle)
  {
    textStyle2 = [componentCopy textStyle];
    [v11 addObject:textStyle2];
  }

  analysis = [mCopy analysis];
  namespacedObjectReferences = [analysis namespacedObjectReferences];
  identifier = [componentCopy identifier];
  v17 = [namespacedObjectReferences namespacedComponentTextStyleIdentifiersForIdentifiers:v11 component:identifier];

  v18 = [(SXTextContrastDarkModePolicyException *)self mergedComponentTextStyleWithIdentifiers:v17 DOM:mCopy];

  return v18;
}

- (id)mergedComponentTextStyleWithIdentifiers:(id)identifiers DOM:(id)m
{
  v23 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  mCopy = m;
  array = [MEMORY[0x1E695DF70] array];
  componentTextStyles = [mCopy componentTextStyles];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = identifiersCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [componentTextStyles objectForKey:{*(*(&v18 + 1) + 8 * i), v18}];
        if (v15)
        {
          [array addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if ([array count])
  {
    v16 = [(SXJSONObjectMerger *)self->_componentTextStyleMerger mergeObjects:array];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end