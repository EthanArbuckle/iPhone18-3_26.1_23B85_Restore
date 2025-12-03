@interface SXDarkModePolicyHandler
- (BOOL)shouldApplyDarkModeToBackgroundColorsOfComponentTextStyle:(id)style component:(id)component DOM:(id)m;
- (BOOL)shouldApplyDarkModeToBackgroundColorsOfTextStyle:(id)style component:(id)component DOM:(id)m;
- (BOOL)shouldApplyDarkModeToComponent:(id)component DOM:(id)m;
- (BOOL)shouldApplyDarkModeToComponentStyle:(id)style component:(id)component DOM:(id)m;
- (BOOL)shouldApplyDarkModeToComponentStylesForComponent:(id)component DOM:(id)m;
- (BOOL)shouldApplyDarkModeToDOM:(id)m layoutOptions:(id)options;
- (BOOL)shouldApplyDarkModeToDocumentStyle:(id)style DOM:(id)m layoutOptions:(id)options;
- (BOOL)shouldApplyDarkModeToForegroundColorsOfComponentTextStyle:(id)style component:(id)component DOM:(id)m;
- (BOOL)shouldApplyDarkModeToForegroundColorsOfTextStyle:(id)style component:(id)component DOM:(id)m;
- (BOOL)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)component DOM:(id)m;
- (BOOL)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)component DOM:(id)m;
- (SXDarkModePolicyHandler)initWithDocumentProvider:(id)provider darkModeConfiguration:(id)configuration;
- (void)addPolicyException:(id)exception;
@end

@implementation SXDarkModePolicyHandler

- (SXDarkModePolicyHandler)initWithDocumentProvider:(id)provider darkModeConfiguration:(id)configuration
{
  providerCopy = provider;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = SXDarkModePolicyHandler;
  v9 = [(SXDarkModePolicyHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_darkModeConfiguration, configuration);
    objc_storeStrong(&v10->_documentProvider, provider);
    array = [MEMORY[0x1E695DF70] array];
    exceptions = v10->_exceptions;
    v10->_exceptions = array;
  }

  return v10;
}

- (void)addPolicyException:(id)exception
{
  if (exception)
  {
    [(NSMutableArray *)self->_exceptions addObject:?];
  }
}

- (BOOL)shouldApplyDarkModeToDOM:(id)m layoutOptions:(id)options
{
  mCopy = m;
  optionsCopy = options;
  documentStyle = [mCopy documentStyle];
  backgroundColor = [documentStyle backgroundColor];
  if (backgroundColor)
  {
    v10 = backgroundColor;
    documentStyle2 = [mCopy documentStyle];
    backgroundColor2 = [documentStyle2 backgroundColor];
    [backgroundColor2 _luminance];
    v14 = v13;

    if (v14 <= 0.5)
    {
LABEL_10:
      v23 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  traitCollection = [optionsCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != 2 || ![(SXDarkModeConfiguration *)self->_darkModeConfiguration isAutoDarkModeEnabled])
  {
    goto LABEL_10;
  }

  document = [(SXDocumentProviding *)self->_documentProvider document];
  colorScheme = [document colorScheme];

  if (colorScheme && ![colorScheme automaticDarkModeEnabled])
  {
    v23 = 0;
  }

  else
  {
    analysis = [mCopy analysis];
    conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
    documentStyleConditionTypes = [conditionalObjectAnalysis documentStyleConditionTypes];
    v22 = [documentStyleConditionTypes containsObject:SXConditionPreferredColorScheme];

    v23 = v22 ^ 1;
  }

LABEL_11:
  return v23;
}

- (BOOL)shouldApplyDarkModeToDocumentStyle:(id)style DOM:(id)m layoutOptions:(id)options
{
  v28 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  mCopy = m;
  optionsCopy = options;
  if (UIAccessibilityIsInvertColorsEnabled() || ([optionsCopy traitCollection], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "userInterfaceStyle"), v11, v12 == 2))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    analysis = self->_exceptions;
    v14 = [(NSMutableArray *)analysis countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(analysis);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![v18 shouldApplyDarkModeToDocumentStyle:styleCopy DOM:{mCopy, v23}])
          {
            LOBYTE(v21) = 0;
            goto LABEL_14;
          }
        }

        v15 = [(NSMutableArray *)analysis countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    analysis = [mCopy analysis];
    conditionalObjectAnalysis = [(NSMutableArray *)analysis conditionalObjectAnalysis];
    documentStyleConditionTypes = [conditionalObjectAnalysis documentStyleConditionTypes];
    v21 = [documentStyleConditionTypes containsObject:SXConditionPreferredColorScheme] ^ 1;

LABEL_14:
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (BOOL)shouldApplyDarkModeToComponent:(id)component DOM:(id)m
{
  v24 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_exceptions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 shouldApplyDarkModeToComponent:componentCopy DOM:{mCopy, v19}])
        {
          LOBYTE(v17) = 0;
          goto LABEL_12;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  analysis = [mCopy analysis];
  conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
  identifier = [componentCopy identifier];
  v8 = [conditionalObjectAnalysis conditionTypesUsedByComponent:identifier];

  v17 = [(NSMutableArray *)v8 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v17;
}

- (BOOL)shouldApplyDarkModeToComponentStylesForComponent:(id)component DOM:(id)m
{
  v21 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_exceptions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 shouldApplyDarkModeToComponentStylesForComponent:componentCopy DOM:{mCopy, v16}])
        {
          v14 = 0;
          goto LABEL_12;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_12:

  return v14;
}

- (BOOL)shouldApplyDarkModeToComponentStyle:(id)style component:(id)component DOM:(id)m
{
  v27 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  componentCopy = component;
  mCopy = m;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_exceptions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToComponentStyle:styleCopy component:componentCopy DOM:{mCopy, v22}])
        {
          LOBYTE(v20) = 0;
          goto LABEL_12;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  analysis = [mCopy analysis];
  conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
  identifier = [styleCopy identifier];
  v11 = [conditionalObjectAnalysis conditionTypesUsedByComponentStyle:identifier];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

- (BOOL)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)component DOM:(id)m
{
  v21 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_exceptions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:componentCopy DOM:{mCopy, v16}])
        {
          v14 = 0;
          goto LABEL_12;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_12:

  return v14;
}

- (BOOL)shouldApplyDarkModeToBackgroundColorsOfComponentTextStyle:(id)style component:(id)component DOM:(id)m
{
  v27 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  componentCopy = component;
  mCopy = m;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_exceptions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToBackgroundColorsOfComponentTextStyle:styleCopy component:componentCopy DOM:{mCopy, v22}])
        {
          LOBYTE(v20) = 0;
          goto LABEL_12;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  analysis = [mCopy analysis];
  conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
  identifier = [styleCopy identifier];
  v11 = [conditionalObjectAnalysis conditionTypesUsedByComponentTextStyle:identifier];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

- (BOOL)shouldApplyDarkModeToBackgroundColorsOfTextStyle:(id)style component:(id)component DOM:(id)m
{
  v27 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  componentCopy = component;
  mCopy = m;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_exceptions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToBackgroundColorsOfTextStyle:styleCopy component:componentCopy DOM:{mCopy, v22}])
        {
          LOBYTE(v20) = 0;
          goto LABEL_12;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  analysis = [mCopy analysis];
  conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
  identifier = [styleCopy identifier];
  v11 = [conditionalObjectAnalysis conditionTypesUsedByTextStyle:identifier];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

- (BOOL)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)component DOM:(id)m
{
  v21 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_exceptions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 shouldApplyDarkModeToTextStyleForegroundColorsForComponent:componentCopy DOM:{mCopy, v16}])
        {
          v14 = 0;
          goto LABEL_12;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_12:

  return v14;
}

- (BOOL)shouldApplyDarkModeToForegroundColorsOfComponentTextStyle:(id)style component:(id)component DOM:(id)m
{
  v27 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  componentCopy = component;
  mCopy = m;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_exceptions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToForegroundColorsOfComponentTextStyle:styleCopy component:componentCopy DOM:{mCopy, v22}])
        {
          LOBYTE(v20) = 0;
          goto LABEL_12;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  analysis = [mCopy analysis];
  conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
  identifier = [styleCopy identifier];
  v11 = [conditionalObjectAnalysis conditionTypesUsedByComponentTextStyle:identifier];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

- (BOOL)shouldApplyDarkModeToForegroundColorsOfTextStyle:(id)style component:(id)component DOM:(id)m
{
  v27 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  componentCopy = component;
  mCopy = m;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_exceptions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToForegroundColorsOfTextStyle:styleCopy component:componentCopy DOM:{mCopy, v22}])
        {
          LOBYTE(v20) = 0;
          goto LABEL_12;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  analysis = [mCopy analysis];
  conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
  identifier = [styleCopy identifier];
  v11 = [conditionalObjectAnalysis conditionTypesUsedByTextStyle:identifier];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

@end