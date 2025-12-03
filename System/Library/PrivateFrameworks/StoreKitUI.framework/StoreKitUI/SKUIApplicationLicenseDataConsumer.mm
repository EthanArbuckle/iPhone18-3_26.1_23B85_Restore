@interface SKUIApplicationLicenseDataConsumer
- (id)applicationLicenseWithDictionary:(id)dictionary;
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SKUIApplicationLicenseDataConsumer

- (id)applicationLicenseWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIApplicationLicenseDataConsumer applicationLicenseWithDictionary:];
  }

  v4 = objc_alloc_init(SKUIApplicationLicensePage);
  v5 = [dictionaryCopy objectForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SKUIApplicationLicensePage *)v4 setTitle:v5];
  }

  v6 = [dictionaryCopy objectForKey:@"item-metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKey:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 objectForKey:@"type"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v8 = 0;
      }

      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = [MEMORY[0x277D74300] systemFontOfSize:0.0];
      fontName = [v10 fontName];
      v12 = [v9 initWithFormat:@"body { padding: 10px; background: white; font-family: '%@'; font-size: 13px; color: black; line-height: 18px; }p { margin-top: 0; padding-top: 0 }", fontName];

      if ([v8 isEqualToString:@"markup"])
      {
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<html><head><style type=text/css>%@</style></head><body><div>%@</div></body></html>", v12, v7];
      }

      else
      {
        v13 = SUCreateHTMLForPlainText();
      }

      v14 = v13;
      [(SKUIApplicationLicensePage *)v4 setLicenseAgreementHTML:v13];
    }
  }

  return v4;
}

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  responseCopy = response;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIApplicationLicenseDataConsumer objectForData:response:error:];
  }

  v13.receiver = self;
  v13.super_class = SKUIApplicationLicenseDataConsumer;
  v10 = [(SSVURLProtocolConsumer *)&v13 objectForData:dataCopy response:responseCopy error:error];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(SKUIApplicationLicenseDataConsumer *)self applicationLicenseWithDictionary:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)applicationLicenseWithDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIApplicationLicenseDataConsumer applicationLicenseWithDictionary:]";
}

- (void)objectForData:response:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIApplicationLicenseDataConsumer objectForData:response:error:]";
}

@end