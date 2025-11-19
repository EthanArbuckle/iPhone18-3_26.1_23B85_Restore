@interface SKUISuggestedHandlesSettingsHeaderFooterDescription
- (SKUISuggestedHandlesSettingsHeaderFooterDescription)initWithSuggestedHandles:(id)a3 clientContext:(id)a4 delegate:(id)a5;
- (SKUISuggestedHandlesSettingsHeaderFooterDescriptionDelegate)delegate;
- (id)helpText;
- (id)suggestedHandles;
- (void)selectedHandleAtIndex:(unint64_t)a3;
@end

@implementation SKUISuggestedHandlesSettingsHeaderFooterDescription

- (SKUISuggestedHandlesSettingsHeaderFooterDescription)initWithSuggestedHandles:(id)a3 clientContext:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISuggestedHandlesSettingsHeaderFooterDescription initWithSuggestedHandles:clientContext:delegate:];
  }

  v11 = [(SKUISuggestedHandlesSettingsHeaderFooterDescription *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientContext, a4);
    objc_storeWeak(&v12->_delegate, v10);
    v13 = [v8 copy];
    suggestedHandles = v12->_suggestedHandles;
    v12->_suggestedHandles = v13;
  }

  return v12;
}

- (id)helpText
{
  v3 = [(NSArray *)self->_suggestedHandles count];
  clientContext = self->_clientContext;
  if (v3)
  {
    if (clientContext)
    {
      v5 = @"SETTINGS_PROFILE_EDIT_HANDLE_TAKEN_WITH_SUGGESTIONS";
LABEL_6:
      v6 = [(SKUIClientContext *)clientContext localizedStringForKey:v5 inTable:@"Settings"];
      goto LABEL_10;
    }

    v7 = @"SETTINGS_PROFILE_EDIT_HANDLE_TAKEN_WITH_SUGGESTIONS";
  }

  else
  {
    if (clientContext)
    {
      v5 = @"SETTINGS_PROFILE_EDIT_HANDLE_TAKEN";
      goto LABEL_6;
    }

    v7 = @"SETTINGS_PROFILE_EDIT_HANDLE_TAKEN";
  }

  v6 = [SKUIClientContext localizedStringForKey:v7 inBundles:0 inTable:@"Settings"];
LABEL_10:

  return v6;
}

- (void)selectedHandleAtIndex:(unint64_t)a3
{
  v9 = [(NSArray *)self->_suggestedHandles objectAtIndex:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 suggestedHandlesSettingsHeaderFooterDescription:self didSelectSuggestedHandle:v9];
    }
  }
}

- (id)suggestedHandles
{
  v2 = [(NSArray *)self->_suggestedHandles copy];

  return v2;
}

- (SKUISuggestedHandlesSettingsHeaderFooterDescriptionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithSuggestedHandles:clientContext:delegate:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISuggestedHandlesSettingsHeaderFooterDescription initWithSuggestedHandles:clientContext:delegate:]";
}

@end