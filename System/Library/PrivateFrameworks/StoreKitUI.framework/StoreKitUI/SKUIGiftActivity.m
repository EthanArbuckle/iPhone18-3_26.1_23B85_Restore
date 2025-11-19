@interface SKUIGiftActivity
- (SKUIGiftActivity)initWithItem:(id)a3 clientContext:(id)a4;
- (id)activityImage;
- (id)activityTitle;
- (id)activityViewController;
@end

@implementation SKUIGiftActivity

- (SKUIGiftActivity)initWithItem:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftActivity initWithItem:clientContext:];
  }

  v12.receiver = self;
  v12.super_class = SKUIGiftActivity;
  v9 = [(UIActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_item, a3);
  }

  return v10;
}

- (id)activityImage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"ShareSheetGift" inBundle:v2];

  return v3;
}

- (id)activityTitle
{
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"SHARE_SHEET_GIFT_TITLE"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"SHARE_SHEET_GIFT_TITLE" inBundles:0];
  }
  v3 = ;

  return v3;
}

- (id)activityViewController
{
  v3 = [[SKUIGift alloc] initWithItem:self->_item];
  v4 = [[SKUIGiftViewController alloc] initWithGift:v3];
  [(SKUIGiftViewController *)v4 setClientContext:self->_clientContext];
  [(SKUIGiftViewController *)v4 setGiftDelegate:self];

  return v4;
}

- (void)initWithItem:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftActivity initWithItem:clientContext:]";
}

@end