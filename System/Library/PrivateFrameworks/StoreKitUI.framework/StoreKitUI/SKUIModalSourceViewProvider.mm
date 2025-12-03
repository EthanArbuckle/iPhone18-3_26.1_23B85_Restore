@interface SKUIModalSourceViewProvider
- (SKUIModalSourceViewProviderDelegate)delegate;
- (id)animationView;
- (void)hideOriginalSourceView;
- (void)setOriginalSourceView:(id)view;
- (void)showOriginalSourceView;
@end

@implementation SKUIModalSourceViewProvider

- (id)animationView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIModalSourceViewProvider *)v3 animationView:v4];
      }
    }
  }

  delegate = [(SKUIModalSourceViewProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [delegate animationViewForModalSourceViewProvider:self];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)hideOriginalSourceView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIModalSourceViewProvider *)v3 hideOriginalSourceView:v4];
      }
    }
  }

  self->_hideOriginalSourceView = 1;
  [(UIView *)self->_originalSourceView setHidden:1];
}

- (void)setOriginalSourceView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIModalSourceViewProvider *)v6 setOriginalSourceView:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_originalSourceView != viewCopy)
  {
    objc_storeStrong(&self->_originalSourceView, view);
    [(UIView *)self->_originalSourceView setHidden:self->_hideOriginalSourceView];
  }
}

- (void)showOriginalSourceView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIModalSourceViewProvider *)v3 showOriginalSourceView:v4];
      }
    }
  }

  self->_hideOriginalSourceView = 0;
  [(UIView *)self->_originalSourceView setHidden:0];
}

- (SKUIModalSourceViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end