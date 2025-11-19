@interface WLContext
- (BOOL)isEnabled;
- (WLContext)init;
- (WLContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLContext

- (WLContext)init
{
  v22.receiver = self;
  v22.super_class = WLContext;
  v2 = [(WLContext *)&v22 init];
  v3 = v2;
  if (v2)
  {
    [(WLContext *)v2 setIsEnabled:1];
    v4 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setApplication:v4];

    v5 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setAccount:v5];

    v6 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setMessage:v6];

    v7 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setContact:v7];

    v8 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setCallHistory:v8];

    v9 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setCalendar:v9];

    v10 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setBookmark:v10];

    v11 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setFile:v11];

    v12 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setImage:v12];

    v13 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setVideo:v13];

    v14 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setAlbum:v14];

    v15 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setVoiceMemo:v15];

    v16 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setContainer:v16];

    v17 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setAccessibilitySetting:v17];

    v18 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setDisplaySetting:v18];

    v19 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setPlaceholder:v19];

    v20 = objc_alloc_init(WLImportContext);
    [(WLContext *)v3 setSim:v20];
  }

  return v3;
}

- (WLContext)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WLContext;
  v5 = [(WLContext *)&v24 init];
  if (v5)
  {
    -[WLContext setIsEnabled:](v5, "setIsEnabled:", [v4 decodeBoolForKey:@"is_enabled"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
    [(WLContext *)v5 setApplication:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    [(WLContext *)v5 setAccount:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    [(WLContext *)v5 setMessage:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    [(WLContext *)v5 setContact:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"call_history"];
    [(WLContext *)v5 setCallHistory:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendar"];
    [(WLContext *)v5 setCalendar:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookmark"];
    [(WLContext *)v5 setBookmark:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    [(WLContext *)v5 setFile:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    [(WLContext *)v5 setImage:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"video"];
    [(WLContext *)v5 setVideo:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"album"];
    [(WLContext *)v5 setAlbum:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voice_memo"];
    [(WLContext *)v5 setVoiceMemo:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    [(WLContext *)v5 setContainer:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibility_setting"];
    [(WLContext *)v5 setAccessibilitySetting:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"display_setting"];
    [(WLContext *)v5 setDisplaySetting:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholder"];
    [(WLContext *)v5 setPlaceholder:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sim"];
    [(WLContext *)v5 setSim:v22];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  isEnabled = self->_isEnabled;
  v5 = a3;
  [v5 encodeBool:isEnabled forKey:@"is_enabled"];
  [v5 encodeObject:self->_application forKey:@"application"];
  [v5 encodeObject:self->_account forKey:@"account"];
  [v5 encodeObject:self->_message forKey:@"message"];
  [v5 encodeObject:self->_contact forKey:@"contact"];
  [v5 encodeObject:self->_callHistory forKey:@"call_history"];
  [v5 encodeObject:self->_calendar forKey:@"calendar"];
  [v5 encodeObject:self->_bookmark forKey:@"bookmark"];
  [v5 encodeObject:self->_file forKey:@"file"];
  [v5 encodeObject:self->_image forKey:@"image"];
  [v5 encodeObject:self->_video forKey:@"video"];
  [v5 encodeObject:self->_album forKey:@"album"];
  [v5 encodeObject:self->_voiceMemo forKey:@"voice_memo"];
  [v5 encodeObject:self->_container forKey:@"container"];
  [v5 encodeObject:self->_accessibilitySetting forKey:@"accessibility_setting"];
  [v5 encodeObject:self->_displaySetting forKey:@"display_setting"];
  [v5 encodeObject:self->_placeholder forKey:@"placeholder"];
  [v5 encodeObject:self->_sim forKey:@"sim"];
}

- (BOOL)isEnabled
{
  v33 = *MEMORY[0x277D85DE8];
  v21 = *&self->_application;
  message = self->_message;
  v23 = *&self->_contact;
  calendar = self->_calendar;
  v3 = *&self->_image;
  v25 = *&self->_bookmark;
  v26 = v3;
  voiceMemo = self->_voiceMemo;
  album = self->_album;
  v28 = voiceMemo;
  accessibilitySetting = self->_accessibilitySetting;
  container = self->_container;
  v30 = accessibilitySetting;
  v31 = *&self->_displaySetting;
  sim = self->_sim;
  [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:17];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 importCount] || objc_msgSend(v11, "importErrorCount"))
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v12 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  isEnabled = self->_isEnabled;
  v14 = *MEMORY[0x277D85DE8];
  return v12 & isEnabled;
}

@end