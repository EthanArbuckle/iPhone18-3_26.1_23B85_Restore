@interface ALCityManagerLoc
+ (id)sharedManager;
- (ALCityManagerLoc)init;
- (void)setLocaleForCityNames:(id)names;
@end

@implementation ALCityManagerLoc

+ (id)sharedManager
{
  v2 = qword_1000114A8;
  if (!qword_1000114A8)
  {
    v3 = objc_alloc_init(ALCityManagerLoc);
    v4 = qword_1000114A8;
    qword_1000114A8 = v3;

    v2 = qword_1000114A8;
  }

  return v2;
}

- (ALCityManagerLoc)init
{
  v6.receiver = self;
  v6.super_class = ALCityManagerLoc;
  v2 = [(ALCityManagerLoc *)&v6 init];
  if (v2)
  {
    v3 = +[NSLocale currentLocale];
    v4 = [v3 objectForKey:NSLocaleIdentifier];
    [(ALCityManagerLoc *)v2 setLocaleForCityNames:v4];
  }

  return v2;
}

- (void)setLocaleForCityNames:(id)names
{
  namesCopy = names;
  v5 = [NSLocale componentsFromLocaleIdentifier:namesCopy];
  v6 = [NSBundle bundleWithIdentifier:@"com.apple.AppSupport"];
  v7 = [v6 pathForResource:@"Localizable_Places" ofType:@"db" inDirectory:0 forLocalization:namesCopy];
  if (![v7 length])
  {
    v8 = [v5 objectForKeyedSubscript:NSLocaleCountryCode];

    v9 = [v6 pathForResource:@"Localizable_Places" ofType:@"db" inDirectory:0 forLocalization:v8];

    if ([v9 length])
    {
      v7 = v9;
      namesCopy = v8;
    }

    else
    {
      namesCopy = [v5 objectForKeyedSubscript:NSLocaleLanguageCode];

      v7 = [v6 pathForResource:@"Localizable_Places" ofType:@"db" inDirectory:0 forLocalization:namesCopy];

      if (![v7 length])
      {
        v10 = [[NSLocale alloc] initWithLocaleIdentifier:@"en"];
        v11 = [v10 displayNameForKey:NSLocaleIdentifier value:namesCopy];

        v12 = [v6 pathForResource:@"Localizable_Places" ofType:@"db" inDirectory:0 forLocalization:v11];

        v7 = v12;
        namesCopy = v11;
      }
    }
  }

  if ([v7 length])
  {
    uTF8String = [v7 UTF8String];
    v14 = OBJC_IVAR___ALCityManager__localizedDb;
    v15 = sqlite3_open_v2(uTF8String, &self->ALCityManager_opaque[OBJC_IVAR___ALCityManager__localizedDb], 1, 0);
    if (!v15)
    {
      sqlite3_create_function(*&self->ALCityManager_opaque[v14], "CDLIKE", 1, 1, self, sub_100005E0C, 0, 0);
      goto LABEL_14;
    }

    v16 = v15;
    v17 = sub_1000010B8(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100005EF4(v16, v17);
    }
  }

  else
  {
    v17 = sub_1000010B8(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100005F6C(v17);
    }
  }

LABEL_14:
}

@end