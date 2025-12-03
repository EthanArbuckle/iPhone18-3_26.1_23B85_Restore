@interface WLPayload
- (WLPayload)init;
- (id)dictionary;
@end

@implementation WLPayload

- (WLPayload)init
{
  v15.receiver = self;
  v15.super_class = WLPayload;
  v2 = [(WLPayload *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(WLPayload *)v2 setAndroidAPILevel:@"?"];
    [(WLPayload *)v3 setAndroidBrand:@"?"];
    [(WLPayload *)v3 setAndroidLocale:@"?"];
    [(WLPayload *)v3 setAndroidModel:@"?"];
    [(WLPayload *)v3 setAndroidOSVersion:@"?"];
    [(WLPayload *)v3 setAndroidVersion:@"?"];
    [(WLPayload *)v3 setAndroidVersionCode:@"?"];
    [(WLPayload *)v3 setState:@"?"];
    v4 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setMessages:v4];

    v5 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setPhotos:v5];

    v6 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setVideos:v6];

    v7 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setContacts:v7];

    v8 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setCalendars:v8];

    v9 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setBookmarks:v9];

    v10 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setAccounts:v10];

    v11 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setFiles:v11];

    v12 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setAccessibilitySettings:v12];

    v13 = objc_alloc_init(WLFeaturePayload);
    [(WLPayload *)v3 setDisplaySettings:v13];
  }

  return v3;
}

- (id)dictionary
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_androidAPILevel forKey:@"android_api_level"];
  [v3 setObject:self->_androidBrand forKey:@"android_brand"];
  [v3 setObject:self->_androidLocale forKey:@"android_locale"];
  [v3 setObject:self->_androidModel forKey:@"android_model"];
  [v3 setObject:self->_androidOSVersion forKey:@"android_os_version"];
  [v3 setObject:self->_androidVersion forKey:@"android_version"];
  [v3 setObject:self->_androidVersionCode forKey:@"android_version_code"];
  [v3 setObject:self->_state forKey:@"state"];
  messages = self->_messages;
  v37 = *&self->_photos;
  calendars = self->_calendars;
  bookmarks = self->_bookmarks;
  contacts = self->_contacts;
  v39 = calendars;
  v40 = bookmarks;
  v41 = *&self->_accounts;
  displaySettings = self->_displaySettings;
  accessibilitySettings = self->_accessibilitySettings;
  v43 = displaySettings;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&messages count:10];
  v8 = 0x277CCA000uLL;
  if ([v7 count])
  {
    selfCopy = self;
    v33 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [&unk_2882CA310 objectAtIndexedSubscript:v11];
      v13 = [v7 objectAtIndexedSubscript:v11];
      v14 = [v13 count];
      v15 = [v13 size];
      v34 = v15 >> 30;
      v35 = [v13 elapsedTime] / 0x3CuLL;
      v10 += v15;
      v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "enabled")}];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_enabled", v12];
      [v3 setObject:v16 forKey:v17];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v12];
      [v3 setObject:v18 forKey:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v34];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_size", v12];
      [v3 setObject:v20 forKey:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v35];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_elapsed_time", v12];
      [v3 setObject:v22 forKey:v23];

      state = [v13 state];
      v9 += v14;
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_state", v12];
      [v3 setObject:state forKey:v25];

      v7 = v33;
      ++v11;
    }

    while (v11 < [v33 count]);
    v26 = v10 >> 30;
    self = selfCopy;
    v8 = 0x277CCA000;
  }

  else
  {
    v26 = 0;
    v9 = 0;
  }

  v27 = [*(v8 + 2992) numberWithUnsignedLongLong:v9];
  [v3 setObject:v27 forKey:@"data"];

  v28 = [*(v8 + 2992) numberWithUnsignedLongLong:v26];
  [v3 setObject:v28 forKey:@"data_size"];

  0x3C = [*(v8 + 2992) numberWithUnsignedLongLong:self->_elapsedTime / 0x3C];
  [v3 setObject:0x3C forKey:@"elapsed_time"];

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

@end