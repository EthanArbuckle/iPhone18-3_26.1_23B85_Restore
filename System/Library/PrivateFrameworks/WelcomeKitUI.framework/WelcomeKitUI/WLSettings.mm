@interface WLSettings
- (WLSettings)init;
@end

@implementation WLSettings

- (WLSettings)init
{
  v5.receiver = self;
  v5.super_class = WLSettings;
  v2 = [(WLSettings *)&v5 init];
  if (v2)
  {
    -[WLSettings setEnableDisplayZoom:](v2, "setEnableDisplayZoom:", [MEMORY[0x277D7B8B0] BOOLForKey:@"enable_display_zoom"] == 1);
    enableDisplayZoom = v2->_enableDisplayZoom;
    _WLLog();
    [MEMORY[0x277D7B8B0] removeForKey:{@"enable_display_zoom", enableDisplayZoom}];
  }

  return v2;
}

@end