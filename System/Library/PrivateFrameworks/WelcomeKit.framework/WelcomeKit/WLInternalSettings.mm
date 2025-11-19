@interface WLInternalSettings
+ (id)settingsWithData:(id)a3;
- (WLInternalSettings)initWithJSONDictionary:(id)a3;
@end

@implementation WLInternalSettings

- (WLInternalSettings)initWithJSONDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = WLInternalSettings;
  v5 = [(WLInternalSettings *)&v7 init];
  if (v5)
  {
    -[WLInternalSettings setEnableAccessibilityDisplayInversion:](v5, "setEnableAccessibilityDisplayInversion:", [v4 wl_BOOLForKey:@"accessibility_display_inversion_enabled"]);
    -[WLInternalSettings setEnableDisplayDarkMode:](v5, "setEnableDisplayDarkMode:", [v4 wl_BOOLForKey:@"display_dark_mode_enabled"]);
    -[WLInternalSettings setEnableDisplayZoom:](v5, "setEnableDisplayZoom:", [v4 wl_BOOLForKey:@"display_zoom_enabled"]);
    [v4 wl_floatForKey:@"accessibility_font_scale"];
    [(WLInternalSettings *)v5 setAccessibilityFontScale:?];
  }

  return v5;
}

+ (id)settingsWithData:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    _WLLog(v3, 0, @"data was nil and did skip", v4, v5, v6, v7, v8, v28);
    v20 = 0;
    goto LABEL_14;
  }

  v29 = 0;
  v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v29];
  v11 = v29;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    v14 = [v11 description];
    _WLLog(v3, 0, @"did fail to convert json to object %@\n%@", v15, v16, v17, v18, v19, v14);

LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    _WLLog(v3, 0, @"expected a dictionary but got a wrong type", v22, v23, v24, v25, v26, v28);
    goto LABEL_12;
  }

  v20 = [[WLInternalSettings alloc] initWithJSONDictionary:v10];
LABEL_13:

LABEL_14:

  return v20;
}

@end