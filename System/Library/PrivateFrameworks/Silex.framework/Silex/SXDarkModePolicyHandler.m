@interface SXDarkModePolicyHandler
- (BOOL)shouldApplyDarkModeToBackgroundColorsOfComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5;
- (BOOL)shouldApplyDarkModeToBackgroundColorsOfTextStyle:(id)a3 component:(id)a4 DOM:(id)a5;
- (BOOL)shouldApplyDarkModeToComponent:(id)a3 DOM:(id)a4;
- (BOOL)shouldApplyDarkModeToComponentStyle:(id)a3 component:(id)a4 DOM:(id)a5;
- (BOOL)shouldApplyDarkModeToComponentStylesForComponent:(id)a3 DOM:(id)a4;
- (BOOL)shouldApplyDarkModeToDOM:(id)a3 layoutOptions:(id)a4;
- (BOOL)shouldApplyDarkModeToDocumentStyle:(id)a3 DOM:(id)a4 layoutOptions:(id)a5;
- (BOOL)shouldApplyDarkModeToForegroundColorsOfComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5;
- (BOOL)shouldApplyDarkModeToForegroundColorsOfTextStyle:(id)a3 component:(id)a4 DOM:(id)a5;
- (BOOL)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)a3 DOM:(id)a4;
- (BOOL)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)a3 DOM:(id)a4;
- (SXDarkModePolicyHandler)initWithDocumentProvider:(id)a3 darkModeConfiguration:(id)a4;
- (void)addPolicyException:(id)a3;
@end

@implementation SXDarkModePolicyHandler

- (SXDarkModePolicyHandler)initWithDocumentProvider:(id)a3 darkModeConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SXDarkModePolicyHandler;
  v9 = [(SXDarkModePolicyHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_darkModeConfiguration, a4);
    objc_storeStrong(&v10->_documentProvider, a3);
    v11 = [MEMORY[0x1E695DF70] array];
    exceptions = v10->_exceptions;
    v10->_exceptions = v11;
  }

  return v10;
}

- (void)addPolicyException:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_exceptions addObject:?];
  }
}

- (BOOL)shouldApplyDarkModeToDOM:(id)a3 layoutOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 documentStyle];
  v9 = [v8 backgroundColor];
  if (v9)
  {
    v10 = v9;
    v11 = [v6 documentStyle];
    v12 = [v11 backgroundColor];
    [v12 _luminance];
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

  v15 = [v7 traitCollection];
  v16 = [v15 userInterfaceStyle];

  if (v16 != 2 || ![(SXDarkModeConfiguration *)self->_darkModeConfiguration isAutoDarkModeEnabled])
  {
    goto LABEL_10;
  }

  v17 = [(SXDocumentProviding *)self->_documentProvider document];
  v18 = [v17 colorScheme];

  if (v18 && ![v18 automaticDarkModeEnabled])
  {
    v23 = 0;
  }

  else
  {
    v19 = [v6 analysis];
    v20 = [v19 conditionalObjectAnalysis];
    v21 = [v20 documentStyleConditionTypes];
    v22 = [v21 containsObject:SXConditionPreferredColorScheme];

    v23 = v22 ^ 1;
  }

LABEL_11:
  return v23;
}

- (BOOL)shouldApplyDarkModeToDocumentStyle:(id)a3 DOM:(id)a4 layoutOptions:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (UIAccessibilityIsInvertColorsEnabled() || ([v10 traitCollection], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "userInterfaceStyle"), v11, v12 == 2))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_exceptions;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![v18 shouldApplyDarkModeToDocumentStyle:v8 DOM:{v9, v23}])
          {
            LOBYTE(v21) = 0;
            goto LABEL_14;
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v13 = [v9 analysis];
    v19 = [(NSMutableArray *)v13 conditionalObjectAnalysis];
    v20 = [v19 documentStyleConditionTypes];
    v21 = [v20 containsObject:SXConditionPreferredColorScheme] ^ 1;

LABEL_14:
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (BOOL)shouldApplyDarkModeToComponent:(id)a3 DOM:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 shouldApplyDarkModeToComponent:v6 DOM:{v7, v19}])
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

  v14 = [v7 analysis];
  v15 = [v14 conditionalObjectAnalysis];
  v16 = [v6 identifier];
  v8 = [v15 conditionTypesUsedByComponent:v16];

  v17 = [(NSMutableArray *)v8 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v17;
}

- (BOOL)shouldApplyDarkModeToComponentStylesForComponent:(id)a3 DOM:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 shouldApplyDarkModeToComponentStylesForComponent:v6 DOM:{v7, v16}])
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

- (BOOL)shouldApplyDarkModeToComponentStyle:(id)a3 component:(id)a4 DOM:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToComponentStyle:v8 component:v9 DOM:{v10, v22}])
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

  v17 = [v10 analysis];
  v18 = [v17 conditionalObjectAnalysis];
  v19 = [v8 identifier];
  v11 = [v18 conditionTypesUsedByComponentStyle:v19];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

- (BOOL)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)a3 DOM:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:v6 DOM:{v7, v16}])
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

- (BOOL)shouldApplyDarkModeToBackgroundColorsOfComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToBackgroundColorsOfComponentTextStyle:v8 component:v9 DOM:{v10, v22}])
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

  v17 = [v10 analysis];
  v18 = [v17 conditionalObjectAnalysis];
  v19 = [v8 identifier];
  v11 = [v18 conditionTypesUsedByComponentTextStyle:v19];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

- (BOOL)shouldApplyDarkModeToBackgroundColorsOfTextStyle:(id)a3 component:(id)a4 DOM:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToBackgroundColorsOfTextStyle:v8 component:v9 DOM:{v10, v22}])
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

  v17 = [v10 analysis];
  v18 = [v17 conditionalObjectAnalysis];
  v19 = [v8 identifier];
  v11 = [v18 conditionTypesUsedByTextStyle:v19];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

- (BOOL)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)a3 DOM:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v13 shouldApplyDarkModeToTextStyleForegroundColorsForComponent:v6 DOM:{v7, v16}])
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

- (BOOL)shouldApplyDarkModeToForegroundColorsOfComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToForegroundColorsOfComponentTextStyle:v8 component:v9 DOM:{v10, v22}])
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

  v17 = [v10 analysis];
  v18 = [v17 conditionalObjectAnalysis];
  v19 = [v8 identifier];
  v11 = [v18 conditionTypesUsedByComponentTextStyle:v19];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

- (BOOL)shouldApplyDarkModeToForegroundColorsOfTextStyle:(id)a3 component:(id)a4 DOM:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v16 shouldApplyDarkModeToForegroundColorsOfTextStyle:v8 component:v9 DOM:{v10, v22}])
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

  v17 = [v10 analysis];
  v18 = [v17 conditionalObjectAnalysis];
  v19 = [v8 identifier];
  v11 = [v18 conditionTypesUsedByTextStyle:v19];

  v20 = [(NSMutableArray *)v11 containsObject:SXConditionPreferredColorScheme]^ 1;
LABEL_12:

  return v20;
}

@end