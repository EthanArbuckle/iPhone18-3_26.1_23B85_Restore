@interface SKUIShareTemplateActivity
- (SKUIShareTemplateActivity)initWithActivityViewElement:(id)element clientContext:(id)context;
- (id)activityImage;
- (id)activityTitle;
- (id)activityType;
- (void)performActivity;
@end

@implementation SKUIShareTemplateActivity

- (SKUIShareTemplateActivity)initWithActivityViewElement:(id)element clientContext:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIShareTemplateActivity initWithActivityViewElement:clientContext:];
  }

  v12.receiver = self;
  v12.super_class = SKUIShareTemplateActivity;
  v9 = [(UIActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_viewElement, element);
  }

  return v10;
}

- (id)activityImage
{
  activityType = [(SKUIShareSheetActivityViewElement *)self->_viewElement activityType];
  if ([activityType isEqualToString:@"gift"])
  {
    v3 = @"ShareSheetGift";
LABEL_5:
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [MEMORY[0x277D755B8] imageNamed:v3 inBundle:v4];

    goto LABEL_7;
  }

  if ([activityType isEqualToString:@"wishlist"])
  {
    v3 = @"ShareSheetWishList";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)activityTitle
{
  activityType = [(SKUIShareSheetActivityViewElement *)self->_viewElement activityType];
  if (![activityType isEqualToString:@"gift"])
  {
    if (![activityType isEqualToString:@"wishlist"])
    {
      v7 = 0;
      goto LABEL_13;
    }

    clientContext = self->_clientContext;
    if (clientContext)
    {
      v5 = @"ADD_TO_WISHLIST";
      goto LABEL_7;
    }

    v8 = @"ADD_TO_WISHLIST";
LABEL_11:
    v6 = [SKUIClientContext localizedStringForKey:v8 inBundles:0];
    goto LABEL_12;
  }

  clientContext = self->_clientContext;
  if (!clientContext)
  {
    v8 = @"SHARE_SHEET_GIFT_TITLE";
    goto LABEL_11;
  }

  v5 = @"SHARE_SHEET_GIFT_TITLE";
LABEL_7:
  v6 = [(SKUIClientContext *)clientContext localizedStringForKey:v5];
LABEL_12:
  v7 = v6;
LABEL_13:

  return v7;
}

- (id)activityType
{
  activityType = [(SKUIShareSheetActivityViewElement *)self->_viewElement activityType];
  if ([activityType isEqualToString:@"gift"])
  {
    v3 = @"SKUIActivityTypeGift";
  }

  else if ([activityType isEqualToString:@"wishlist"])
  {
    v3 = @"SKUIActivityTypeWishlist";
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)performActivity
{
  v3 = self->_viewElement;
  v4 = dispatch_time(0, 500000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SKUIShareTemplateActivity_performActivity__block_invoke;
  v6[3] = &unk_2781F80C8;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_after(v4, MEMORY[0x277D85CD0], v6);
}

uint64_t __44__SKUIShareTemplateActivity_performActivity__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SKUIShareTemplateActivity_performActivity__block_invoke_2;
  v3[3] = &unk_2781FAF50;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v3];
}

- (void)initWithActivityViewElement:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShareTemplateActivity initWithActivityViewElement:clientContext:]";
}

@end