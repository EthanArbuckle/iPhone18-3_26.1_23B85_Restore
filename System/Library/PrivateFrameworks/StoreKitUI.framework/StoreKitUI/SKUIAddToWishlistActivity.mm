@interface SKUIAddToWishlistActivity
- (SKUIAddToWishlistActivity)initWithItem:(id)item clientContext:(id)context;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivity;
@end

@implementation SKUIAddToWishlistActivity

- (SKUIAddToWishlistActivity)initWithItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIAddToWishlistActivity initWithItem:clientContext:];
  }

  v12.receiver = self;
  v12.super_class = SKUIAddToWishlistActivity;
  v9 = [(UIActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_item, item);
  }

  return v10;
}

- (id)activityImage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"ShareSheetWishList" inBundle:v2];

  return v3;
}

- (id)activityTitle
{
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"ADD_TO_WISHLIST"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"ADD_TO_WISHLIST" inBundles:0];
  }
  v3 = ;

  return v3;
}

- (void)performActivity
{
  v3 = +[SKUIWishlist activeWishlist];
  [v3 addItem:self->_item];
  [v3 postChangeNotification];
  [(UIActivity *)self activityDidFinish:1];
}

- (void)initWithItem:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAddToWishlistActivity initWithItem:clientContext:]";
}

@end