@interface SKUIErrorDocumentViewController
- (SKUIErrorDocumentViewController)initWithBackgroundColor:(id)a3 clientContext:(id)a4;
- (void)loadView;
@end

@implementation SKUIErrorDocumentViewController

- (SKUIErrorDocumentViewController)initWithBackgroundColor:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIErrorDocumentViewController initWithBackgroundColor:clientContext:];
  }

  v11.receiver = self;
  v11.super_class = SKUIErrorDocumentViewController;
  v8 = [(SKUIErrorDocumentViewController *)&v11 init];
  if (v8)
  {
    v9 = SKUIColorSchemeStyleForColor(v6);
    if (v9 <= 3)
    {
      v8->_contentUnavailableStyle = qword_215F3EED0[v9];
    }

    objc_storeStrong(&v8->_clientContext, a4);
  }

  return v8;
}

- (void)loadView
{
  v9 = SKUIErrorDocumentTitle(self->_clientContext);
  v3 = objc_alloc(MEMORY[0x277D75E78]);
  v4 = [v3 initWithFrame:v9 title:self->_contentUnavailableStyle style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v5 = [(SKUIErrorDocumentViewController *)self retryActionBlock];

  if (v5)
  {
    [v4 setMessage:&stru_2827FFAC8];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"NETWORK_ERROR_BUTTON_RETRY"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"NETWORK_ERROR_BUTTON_RETRY" inBundles:0];
    }
    v7 = ;
    [v4 setButtonTitle:v7];

    v8 = [(SKUIErrorDocumentViewController *)self retryActionBlock];
    [v4 setButtonAction:v8];
  }

  [(SKUIErrorDocumentViewController *)self setView:v4];
}

- (void)initWithBackgroundColor:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIErrorDocumentViewController initWithBackgroundColor:clientContext:]";
}

@end