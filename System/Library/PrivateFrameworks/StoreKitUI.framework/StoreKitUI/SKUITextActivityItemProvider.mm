@interface SKUITextActivityItemProvider
- (id)item;
- (void)item;
@end

@implementation SKUITextActivityItemProvider

- (id)item
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUITextActivityItemProvider item];
  }

  activityType = [(UIActivityItemProvider *)self activityType];
  v4 = [activityType isEqualToString:*MEMORY[0x277D54720]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    productPageItem = [(SKUIDeferredActivityItemProvider *)self productPageItem];
    title = [productPageItem title];

    productPageItem2 = [(SKUIDeferredActivityItemProvider *)self productPageItem];
    artistName = [productPageItem2 artistName];

    if ([title length] && objc_msgSend(artistName, "length"))
    {
      clientContext = [(SKUIDeferredActivityItemProvider *)self clientContext];
      v11 = clientContext;
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"SHARE_SHEET_ITEM_TITLE_FORMAT"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"SHARE_SHEET_ITEM_TITLE_FORMAT" inBundles:0];
      }
      v12 = ;

      v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@%@" error:0, title, artistName];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)item
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITextActivityItemProvider item]";
}

@end