@interface SKUIProxyScrollView
- (void)didMoveToWindow;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SKUIProxyScrollView

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProxyScrollView setContentInset:];
  }

  [(SKUIProxyScrollView *)self contentInset];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24.receiver = self;
  v24.super_class = SKUIProxyScrollView;
  [(SKUIProxyScrollView *)&v24 setContentInset:top, left, bottom, right];
  [(SKUIProxyScrollView *)self contentInset];
  if (v19 != v11 || v16 != v9 || v18 != v15 || v17 != v13)
  {
    v23 = [(SKUIProxyScrollView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v23 scrollViewDidChangeContentInset:self];
    }
  }
}

- (void)didMoveToWindow
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProxyScrollView didMoveToWindow]";
}

- (void)setContentInset:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProxyScrollView setContentInset:]";
}

@end