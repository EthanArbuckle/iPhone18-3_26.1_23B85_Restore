@interface UITextInputAssistantItem
- (BOOL)_hasItemsToDisplay;
- (NSString)description;
- (UITextInputAssistantItem)init;
- (void)_itemDidChangeEnabledState:(id)a3;
- (void)_itemStandardViewNeedsUpdate:(id)a3;
- (void)_setCenterBarButtonGroups:(id)a3;
- (void)_setDictationReplacementAction:(id)a3;
- (void)_setIndependentGroupSizes:(BOOL)a3;
- (void)_setMarginOverride:(double)a3;
- (void)setLeadingBarButtonGroups:(NSArray *)leadingBarButtonGroups;
- (void)setTrailingBarButtonGroups:(NSArray *)trailingBarButtonGroups;
@end

@implementation UITextInputAssistantItem

- (UITextInputAssistantItem)init
{
  v9.receiver = self;
  v9.super_class = UITextInputAssistantItem;
  v2 = [(UITextInputAssistantItem *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowsHidingShortcuts = 1;
    v2->_marginOverride = -1.0;
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    leadingBarButtonGroups = v3->_leadingBarButtonGroups;
    v3->_leadingBarButtonGroups = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    trailingBarButtonGroups = v3->_trailingBarButtonGroups;
    v3->_trailingBarButtonGroups = v6;
  }

  return v3;
}

- (BOOL)_hasItemsToDisplay
{
  v3 = [(NSArray *)self->_leadingBarButtonGroups count];
  v4 = [(NSArray *)self->_centerBarButtonGroups count]+ v3;
  return v4 + [(NSArray *)self->_trailingBarButtonGroups count]!= 0;
}

- (void)setLeadingBarButtonGroups:(NSArray *)leadingBarButtonGroups
{
  if (self->_leadingBarButtonGroups != leadingBarButtonGroups)
  {
    v11 = v3;
    if (leadingBarButtonGroups)
    {
      v8 = leadingBarButtonGroups;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [(NSArray *)v8 copy:v4];
    v10 = self->_leadingBarButtonGroups;
    self->_leadingBarButtonGroups = v9;
  }
}

- (void)setTrailingBarButtonGroups:(NSArray *)trailingBarButtonGroups
{
  if (self->_trailingBarButtonGroups != trailingBarButtonGroups)
  {
    v11 = v3;
    if (trailingBarButtonGroups)
    {
      v8 = trailingBarButtonGroups;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [(NSArray *)v8 copy:v4];
    v10 = self->_trailingBarButtonGroups;
    self->_trailingBarButtonGroups = v9;
  }
}

- (void)_setCenterBarButtonGroups:(id)a3
{
  if (self->_centerBarButtonGroups != a3)
  {
    v11 = v3;
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [v8 copy];
    centerBarButtonGroups = self->_centerBarButtonGroups;
    self->_centerBarButtonGroups = v9;
  }
}

- (void)_setIndependentGroupSizes:(BOOL)a3
{
  if (self->_independentGroupSizes != a3)
  {
    self->_independentGroupSizes = a3;
  }
}

- (void)_setDictationReplacementAction:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dictationReplacementAction = self->_dictationReplacementAction;
  p_dictationReplacementAction = &self->_dictationReplacementAction;
  if (dictationReplacementAction != v5)
  {
    objc_storeStrong(p_dictationReplacementAction, a3);
    v8 = [(UIMenuElement *)v5 image];

    if (v8)
    {
      v9 = [(UIMenuElement *)v5 image];
      v10 = [v9 isSymbolImage];

      if ((v10 & 1) == 0)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v12 = __UIFaultDebugAssertLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_9;
          }

          v13 = [(UIMenuElement *)v5 image];
          v14 = 138412290;
          v15 = v13;
          _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "The dictationReplacementAction's image must be a symbol image %@", &v14, 0xCu);
        }

        else
        {
          v11 = *(__UILogGetCategoryCachedImpl("Assert", &_setDictationReplacementAction____s_category) + 8);
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_4;
          }

          v12 = v11;
          v13 = [(UIMenuElement *)v5 image];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "The dictationReplacementAction's image must be a symbol image %@", &v14, 0xCu);
        }

LABEL_9:
      }
    }
  }

LABEL_4:
}

- (void)_setMarginOverride:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (self->_marginOverride != a3)
  {
    self->_marginOverride = a3;
  }
}

- (void)_itemStandardViewNeedsUpdate:(id)a3
{
  v4 = +[UIKeyboardImpl activeInstance];
  v3 = [v4 remoteTextInputPartner];
  [v3 documentTraitsChanged];
}

- (void)_itemDidChangeEnabledState:(id)a3
{
  v4 = +[UIKeyboardImpl activeInstance];
  v3 = [v4 remoteTextInputPartner];
  [v3 documentTraitsChanged];
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = UITextInputAssistantItem;
  v3 = [(UITextInputAssistantItem *)&v9 description];
  v4 = [v3 mutableCopy];

  if (!self->_allowsHidingShortcuts)
  {
    [v4 appendString:@" requiresShortcuts"];
  }

  if ([(NSArray *)self->_leadingBarButtonGroups count])
  {
    v5 = [(NSArray *)self->_leadingBarButtonGroups componentsJoinedByString:@"\n\t"];
    [v4 appendFormat:@"\nleadingBarButtonGroups={\n\t%@\n}", v5];
  }

  if ([(NSArray *)self->_trailingBarButtonGroups count])
  {
    v6 = [(NSArray *)self->_trailingBarButtonGroups componentsJoinedByString:@"\n\t"];
    [v4 appendFormat:@"\ntrailingBarButtonGroups={\n\t%@\n}", v6];
  }

  if ([(NSArray *)self->_centerBarButtonGroups count])
  {
    v7 = [(NSArray *)self->_centerBarButtonGroups componentsJoinedByString:@"\n\t"];
    [v4 appendFormat:@"\ncenterBarButtonGroups={\n\t%@\n}", v7];
  }

  return v4;
}

@end