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

  v3 = [(UIActivityItemProvider *)self activityType];
  v4 = [v3 isEqualToString:*MEMORY[0x277D54720]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SKUIDeferredActivityItemProvider *)self productPageItem];
    v7 = [v6 title];

    v8 = [(SKUIDeferredActivityItemProvider *)self productPageItem];
    v9 = [v8 artistName];

    if ([v7 length] && objc_msgSend(v9, "length"))
    {
      v10 = [(SKUIDeferredActivityItemProvider *)self clientContext];
      v11 = v10;
      if (v10)
      {
        [v10 localizedStringForKey:@"SHARE_SHEET_ITEM_TITLE_FORMAT"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"SHARE_SHEET_ITEM_TITLE_FORMAT" inBundles:0];
      }
      v12 = ;

      v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@%@" error:0, v7, v9];
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