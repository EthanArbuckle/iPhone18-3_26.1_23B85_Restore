@interface HUDGetGlobalConfig
@end

@implementation HUDGetGlobalConfig

void __HUDGetGlobalConfig_block_invoke(id a1)
{
  HUDGetGlobalConfig_config = 0;
  byte_76C8E = 0;
  *&byte_76C8A = 0x1000000;
  byte_76C99 = 0;
  byte_76C9B = 1;
  unk_76C9F = 0;
  byte_76CA1 = 0;
  qword_76CC0 = 0;
  xmmword_76CC8 = xmmword_54FF0;
  *&qword_76CD8 = xmmword_55010;
  byte_76CA5 = 0;
  byte_76C91 = 0;
  word_76C96 = 0;
  dword_76D08 = 1077936128;
  dword_76D0C = 60;
  qword_76D10 = 0x3C3F800000;
  unk_76D18 = 100;
  byte_76C9C = 0;
  word_76CA2 = 0;
  byte_76C9A = 0;
  xmmword_76CE8 = xmmword_55020;
  *&dword_76CF8 = xmmword_55000;
  *&dword_76CB0 = xmmword_55030;
  byte_76C98 = 0;
  byte_76C92 = 0;
  byte_76C8F = 0;
  dword_76D28 = 0;
  *&byte_76CA6 = 0;
  confstr(65538, v20, 0x400uLL);
  qword_76D20 = HUDCurrentTimeInNs();
  v1 = getenv("MTL_HUD_CONFIG_FILE");
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"MTL_HUD_CONFIG"];
  v4 = [v3 mutableCopy];

  if (v4)
  {
    _MTLHUDCheckForConfigVersion(&HUDGetGlobalConfig_config, v4);
    if (!v1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = objc_opt_new();
    if (!v1)
    {
      goto LABEL_11;
    }
  }

  v5 = [NSString stringWithUTF8String:v1];
  v6 = [NSURL fileURLWithPath:v5];
  v7 = [v6 URLByStandardizingPath];
  v8 = [v7 URLByResolvingSymlinksInPath];

  v9 = +[NSFileManager defaultManager];
  v10 = [v8 path];
  LODWORD(v7) = [v9 fileExistsAtPath:v10];

  if (v7)
  {
    v19 = 0;
    v11 = [NSDictionary dictionaryWithContentsOfURL:v8 error:&v19];
    v12 = v19;
    if (v11)
    {
      [v4 addEntriesFromDictionary:v11];
    }

    else
    {
      v13 = [v8 path];
      v14 = [v12 localizedDescription];
      NSLog(@"[libMTLHud] Failed to load config at %@ due to %@", v13, v14);
    }
  }

LABEL_11:
  v15 = objc_opt_new();
  v16 = qword_76D30;
  qword_76D30 = v15;

  HUDUpdateConfig(&HUDGetGlobalConfig_config, v4, 1, 1);
  v17 = getenv("MTL_HUD_SCALE");
  if (v17 || !v4)
  {
    byte_76C9E = v17 != 0;
  }

  else
  {
    v18 = [v4 objectForKeyedSubscript:@"MTL_HUD_SCALE"];
    byte_76C9E = v18 != 0;
  }
}

@end