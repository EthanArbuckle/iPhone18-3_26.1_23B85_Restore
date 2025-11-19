@interface WindowControlsPrototypeSettingsDomain
+ (Class)rootSettingsClass;
+ (id)domainGroupName;
+ (id)domainName;
+ (id)rootSettings;
@end

@implementation WindowControlsPrototypeSettingsDomain

+ (id)rootSettings
{
  swift_getObjCClassMetadata();
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS____TtC20SystemUIWindowingKit37WindowControlsPrototypeSettingsDomain;
  result = objc_msgSendSuper2(&v4, sel_rootSettings);
  if (result)
  {
    type metadata accessor for WindowControlsPrototypeSettings();
    v3 = swift_dynamicCastClassUnconditional();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (Class)rootSettingsClass
{
  type metadata accessor for WindowControlsPrototypeSettings();

  return swift_getObjCClassFromMetadata();
}

+ (id)domainGroupName
{
  v2 = sub_21ED358EC();

  return v2;
}

+ (id)domainName
{
  v2 = sub_21ED358EC();

  return v2;
}

@end