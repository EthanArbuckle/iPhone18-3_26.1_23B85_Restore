@interface SKUIErrorDocumentViewController
- (SKUIErrorDocumentViewController)initWithBackgroundColor:(id)color clientContext:(id)context;
- (void)loadView;
@end

@implementation SKUIErrorDocumentViewController

- (SKUIErrorDocumentViewController)initWithBackgroundColor:(id)color clientContext:(id)context
{
  colorCopy = color;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIErrorDocumentViewController initWithBackgroundColor:clientContext:];
  }

  v11.receiver = self;
  v11.super_class = SKUIErrorDocumentViewController;
  v8 = [(SKUIErrorDocumentViewController *)&v11 init];
  if (v8)
  {
    v9 = SKUIColorSchemeStyleForColor(colorCopy);
    if (v9 <= 3)
    {
      v8->_contentUnavailableStyle = qword_215F3EED0[v9];
    }

    objc_storeStrong(&v8->_clientContext, context);
  }

  return v8;
}

- (void)loadView
{
  v9 = SKUIErrorDocumentTitle(self->_clientContext);
  v3 = objc_alloc(MEMORY[0x277D75E78]);
  v4 = [v3 initWithFrame:v9 title:self->_contentUnavailableStyle style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  retryActionBlock = [(SKUIErrorDocumentViewController *)self retryActionBlock];

  if (retryActionBlock)
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

    retryActionBlock2 = [(SKUIErrorDocumentViewController *)self retryActionBlock];
    [v4 setButtonAction:retryActionBlock2];
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