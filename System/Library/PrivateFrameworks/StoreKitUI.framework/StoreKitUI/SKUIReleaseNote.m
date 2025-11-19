@interface SKUIReleaseNote
+ (id)dateFormatter;
- (SKUIReleaseNote)initWithReleaseNoteDictionary:(id)a3 dateFormatter:(id)a4;
@end

@implementation SKUIReleaseNote

- (SKUIReleaseNote)initWithReleaseNoteDictionary:(id)a3 dateFormatter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReleaseNote initWithReleaseNoteDictionary:dateFormatter:];
  }

  v19.receiver = self;
  v19.super_class = SKUIReleaseNote;
  v8 = [(SKUIReleaseNote *)&v19 init];
  if (v8)
  {
    v9 = [v6 objectForKey:@"releaseNotes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      changeNotes = v8->_changeNotes;
      v8->_changeNotes = v10;
    }

    v12 = [v6 objectForKey:@"versionString"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      versionString = v8->_versionString;
      v8->_versionString = v13;
    }

    v15 = [v6 objectForKey:@"releaseDate"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v7 dateFromString:v15];
      date = v8->_date;
      v8->_date = v16;
    }
  }

  return v8;
}

+ (id)dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];

  return v2;
}

- (void)initWithReleaseNoteDictionary:dateFormatter:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReleaseNote initWithReleaseNoteDictionary:dateFormatter:]";
}

@end