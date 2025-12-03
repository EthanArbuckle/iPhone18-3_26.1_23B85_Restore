@interface SKUIRedeem
- (SKUIRedeem)init;
- (SKUIRedeem)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)init;
@end

@implementation SKUIRedeem

- (SKUIRedeem)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeem init];
  }

  v6.receiver = self;
  v6.super_class = SKUIRedeem;
  v3 = [(SKUIRedeem *)&v6 init];
  v4 = v3;
  if (v3)
  {
    [(SKUIRedeem *)v3 setITunesPassLearnMoreAlertInterval:-1.0];
  }

  return v4;
}

- (SKUIRedeem)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeem initWithCoder:];
  }

  v35.receiver = self;
  v35.super_class = SKUIRedeem;
  v5 = [(SKUIRedeem *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"items"];
    items = v5->_items;
    v5->_items = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloads"];
    downloads = v5->_downloads;
    v5->_downloads = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inAppPurchase"];
    inAppPurchase = v5->_inAppPurchase;
    v5->_inAppPurchase = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credit"];
    credit = v5->_credit;
    v5->_credit = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creditDisplay"];
    creditDisplay = v5->_creditDisplay;
    v5->_creditDisplay = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thankYouDictionary"];
    thankYouDictionary = v5->_thankYouDictionary;
    v5->_thankYouDictionary = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"redirectURL"];
    redirectURL = v5->_redirectURL;
    v5->_redirectURL = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customizedThankyouURL"];
    customizedThankyouURL = v5->_customizedThankyouURL;
    v5->_customizedThankyouURL = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"headerImage"];
    headerImage = v5->_headerImage;
    v5->_headerImage = v24;

    v26 = [coderCopy decodeObjectForKey:@"headerArtworkProvider"];
    headerArtworkProvider = v5->_headerArtworkProvider;
    v5->_headerArtworkProvider = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"links"];
    links = v5->_links;
    v5->_links = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  items = self->_items;
  coderCopy = coder;
  [coderCopy encodeObject:items forKey:@"items"];
  [coderCopy encodeObject:self->_downloads forKey:@"downloads"];
  [coderCopy encodeObject:self->_inAppPurchase forKey:@"inAppPurchase"];
  [coderCopy encodeObject:self->_credit forKey:@"credit"];
  [coderCopy encodeObject:self->_creditDisplay forKey:@"creditDisplay"];
  [coderCopy encodeObject:self->_balance forKey:@"balance"];
  [coderCopy encodeObject:self->_thankYouDictionary forKey:@"thankYouDictionary"];
  [coderCopy encodeObject:self->_redirectURL forKey:@"redirectURL"];
  [coderCopy encodeObject:self->_customizedThankyouURL forKey:@"customizedThankyouURL"];
  [coderCopy encodeObject:self->_headerImage forKey:@"headerImage"];
  [coderCopy encodeObject:self->_headerArtworkProvider forKey:@"headerArtworkProvider"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
  [coderCopy encodeObject:self->_links forKey:@"links"];
  [coderCopy encodeBool:self->_hideItemView forKey:@"hideItemView"];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeem init]";
}

- (void)initWithCoder:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeem initWithCoder:]";
}

@end