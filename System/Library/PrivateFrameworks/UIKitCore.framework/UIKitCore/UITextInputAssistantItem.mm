@interface UITextInputAssistantItem
- (BOOL)_hasItemsToDisplay;
- (NSString)description;
- (UITextInputAssistantItem)init;
- (void)_itemDidChangeEnabledState:(id)state;
- (void)_itemStandardViewNeedsUpdate:(id)update;
- (void)_setCenterBarButtonGroups:(id)groups;
- (void)_setDictationReplacementAction:(id)action;
- (void)_setIndependentGroupSizes:(BOOL)sizes;
- (void)_setMarginOverride:(double)override;
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

- (void)_setCenterBarButtonGroups:(id)groups
{
  if (self->_centerBarButtonGroups != groups)
  {
    v11 = v3;
    if (groups)
    {
      groupsCopy = groups;
    }

    else
    {
      groupsCopy = MEMORY[0x1E695E0F0];
    }

    v9 = [groupsCopy copy];
    centerBarButtonGroups = self->_centerBarButtonGroups;
    self->_centerBarButtonGroups = v9;
  }
}

- (void)_setIndependentGroupSizes:(BOOL)sizes
{
  if (self->_independentGroupSizes != sizes)
  {
    self->_independentGroupSizes = sizes;
  }
}

- (void)_setDictationReplacementAction:(id)action
{
  v16 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  dictationReplacementAction = self->_dictationReplacementAction;
  p_dictationReplacementAction = &self->_dictationReplacementAction;
  if (dictationReplacementAction != actionCopy)
  {
    objc_storeStrong(p_dictationReplacementAction, action);
    image = [(UIMenuElement *)actionCopy image];

    if (image)
    {
      image2 = [(UIMenuElement *)actionCopy image];
      isSymbolImage = [image2 isSymbolImage];

      if ((isSymbolImage & 1) == 0)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v12 = __UIFaultDebugAssertLog();
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_9;
          }

          image3 = [(UIMenuElement *)actionCopy image];
          v14 = 138412290;
          v15 = image3;
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
          image3 = [(UIMenuElement *)actionCopy image];
          v14 = 138412290;
          v15 = image3;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "The dictationReplacementAction's image must be a symbol image %@", &v14, 0xCu);
        }

LABEL_9:
      }
    }
  }

LABEL_4:
}

- (void)_setMarginOverride:(double)override
{
  if (override < 0.0)
  {
    override = 0.0;
  }

  if (self->_marginOverride != override)
  {
    self->_marginOverride = override;
  }
}

- (void)_itemStandardViewNeedsUpdate:(id)update
{
  v4 = +[UIKeyboardImpl activeInstance];
  remoteTextInputPartner = [v4 remoteTextInputPartner];
  [remoteTextInputPartner documentTraitsChanged];
}

- (void)_itemDidChangeEnabledState:(id)state
{
  v4 = +[UIKeyboardImpl activeInstance];
  remoteTextInputPartner = [v4 remoteTextInputPartner];
  [remoteTextInputPartner documentTraitsChanged];
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