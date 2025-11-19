@interface PSSpecifier(iCloudSettings)
- (SEL)_ics_selectorForKey:()iCloudSettings;
- (id)ics_performSuperGetter;
- (void)ics_overrideAccessorsWithTarget:()iCloudSettings getter:setter:;
- (void)ics_performSuperSetterWithValue:()iCloudSettings;
@end

@implementation PSSpecifier(iCloudSettings)

- (void)ics_overrideAccessorsWithTarget:()iCloudSettings getter:setter:
{
  v16 = a3;
  v8 = [a1 propertyForKey:@"_ics_overridenTarget"];
  if (!v8)
  {
    v9 = [a1 target];
    [a1 setProperty:v9 forKey:@"_ics_overridenTarget"];
  }

  v10 = [a1 propertyForKey:@"_ics_overridenGetter"];
  v11 = MEMORY[0x277D3FCA8];
  if (!v10)
  {
    v12 = NSStringFromSelector(*&a1[*MEMORY[0x277D3FCA8]]);
    [a1 setProperty:v12 forKey:@"_ics_overridenGetter"];
  }

  v13 = [a1 propertyForKey:@"_ics_overridenSetter"];
  v14 = MEMORY[0x277D3FCB0];
  if (!v13)
  {
    v15 = NSStringFromSelector(*&a1[*MEMORY[0x277D3FCB0]]);
    [a1 setProperty:v15 forKey:@"_ics_overridenSetter"];
  }

  [a1 setTarget:v16];
  *&a1[*v11] = a4;
  *&a1[*v14] = a5;
}

- (id)ics_performSuperGetter
{
  v2 = [a1 propertyForKey:@"_ics_overridenTarget"];
  v3 = [a1 _ics_selectorForKey:@"_ics_overridenGetter"];
  if (v3 && (v4 = v3, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v5 = ([v2 methodForSelector:v4])(v2, v4, a1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)ics_performSuperSetterWithValue:()iCloudSettings
{
  v7 = a3;
  v4 = [a1 propertyForKey:@"_ics_overridenTarget"];
  v5 = [a1 _ics_selectorForKey:@"_ics_overridenSetter"];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      ([v4 methodForSelector:v6])(v4, v6, v7, a1);
    }
  }
}

- (SEL)_ics_selectorForKey:()iCloudSettings
{
  v1 = [a1 propertyForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = NSSelectorFromString(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end