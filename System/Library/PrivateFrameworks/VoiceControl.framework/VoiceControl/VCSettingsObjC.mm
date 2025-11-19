@interface VCSettingsObjC
+ (VCSettingsObjC)shared;
+ (id)voiceControlLocaleIdentifierFromString:(id)a3;
- (BOOL)carPlayDebugOverlayUIEnabled;
- (BOOL)enabled;
- (BOOL)showUserHints;
- (NSArray)supportedLocales;
- (NSLocale)activeLocale;
- (NSString)alwaysShowOverlayType;
- (VCSettingsObjC)init;
- (id)bestSupportedLocaleFor:(id)a3;
- (void)setPreferredLocale:(id)a3;
@end

@implementation VCSettingsObjC

+ (VCSettingsObjC)shared
{
  if (qword_280893E10 != -1)
  {
    swift_once();
  }

  v3 = qword_280895EF8;

  return v3;
}

- (VCSettingsObjC)init
{
  v3.receiver = self;
  v3.super_class = VCSettingsObjC;
  return [(VCSettingsObjC *)&v3 init];
}

- (BOOL)enabled
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  return _AXSCommandAndControlEnabled() != 0;
}

- (NSArray)supportedLocales
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v2 = sub_2723FE734();

  return v2;
}

- (id)bestSupportedLocaleFor:(id)a3
{
  v4 = sub_2723FE344();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = sub_2723FE5B4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (qword_280893DC8 != -1)
  {
    v14 = v9;
    swift_once();
    v9 = v14;
  }

  VCSettings.bestSupportedLocale(for:)(v9, v11, v8);

  v12 = sub_2723FE304();
  (*(v5 + 8))(v8, v4);

  return v12;
}

- (void)setPreferredLocale:(id)a3
{
  if (a3)
  {
    v4 = sub_2723FE5B4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  _sSo14VCSettingsObjCC12VoiceControlE18setPreferredLocaleyySSSgF_0(v4, v6);
}

- (NSLocale)activeLocale
{
  v2 = sub_2723FE344();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_2723EC124();
  VCSettings.bestSupportedLocale(for:)(v7, v8, v6);

  v9 = sub_2723FE304();
  (*(v3 + 8))(v6, v2);

  return v9;
}

+ (id)voiceControlLocaleIdentifierFromString:(id)a3
{
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2723FE5B4();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9668], v3);
  v8 = sub_2723FE2C4();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  v13[4] = v8;
  v13[5] = v10;
  v13[2] = 45;
  v13[3] = 0xE100000000000000;
  v13[0] = 95;
  v13[1] = 0xE100000000000000;
  sub_2723CD24C();
  sub_2723FE984();

  v11 = sub_2723FE574();

  return v11;
}

- (NSString)alwaysShowOverlayType
{
  _sSo14VCSettingsObjCC12VoiceControlE21alwaysShowOverlayTypeSSvg_0();
  v2 = sub_2723FE574();

  return v2;
}

- (BOOL)showUserHints
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  return sub_2723EC990() == 3;
}

- (BOOL)carPlayDebugOverlayUIEnabled
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v2 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    v3 = v2;
    v4 = sub_2723E842C(0xAu);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end