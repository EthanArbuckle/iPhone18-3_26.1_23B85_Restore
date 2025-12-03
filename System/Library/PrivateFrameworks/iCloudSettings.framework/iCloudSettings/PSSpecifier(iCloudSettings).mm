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
  v8 = [self propertyForKey:@"_ics_overridenTarget"];
  if (!v8)
  {
    target = [self target];
    [self setProperty:target forKey:@"_ics_overridenTarget"];
  }

  v10 = [self propertyForKey:@"_ics_overridenGetter"];
  v11 = MEMORY[0x277D3FCA8];
  if (!v10)
  {
    v12 = NSStringFromSelector(*&self[*MEMORY[0x277D3FCA8]]);
    [self setProperty:v12 forKey:@"_ics_overridenGetter"];
  }

  v13 = [self propertyForKey:@"_ics_overridenSetter"];
  v14 = MEMORY[0x277D3FCB0];
  if (!v13)
  {
    v15 = NSStringFromSelector(*&self[*MEMORY[0x277D3FCB0]]);
    [self setProperty:v15 forKey:@"_ics_overridenSetter"];
  }

  [self setTarget:v16];
  *&self[*v11] = a4;
  *&self[*v14] = a5;
}

- (id)ics_performSuperGetter
{
  v2 = [self propertyForKey:@"_ics_overridenTarget"];
  v3 = [self _ics_selectorForKey:@"_ics_overridenGetter"];
  if (v3 && (v4 = v3, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v5 = ([v2 methodForSelector:v4])(v2, v4, self);
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
  v4 = [self propertyForKey:@"_ics_overridenTarget"];
  v5 = [self _ics_selectorForKey:@"_ics_overridenSetter"];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      ([v4 methodForSelector:v6])(v4, v6, v7, self);
    }
  }
}

- (SEL)_ics_selectorForKey:()iCloudSettings
{
  v1 = [self propertyForKey:?];
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