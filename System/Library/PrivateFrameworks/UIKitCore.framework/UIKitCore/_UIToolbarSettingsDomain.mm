@interface _UIToolbarSettingsDomain
+ (Class)rootSettingsClass;
+ (id)domainGroupName;
+ (id)domainName;
+ (id)rootSettings;
@end

@implementation _UIToolbarSettingsDomain

+ (id)rootSettings
{
  swift_getObjCClassMetadata();
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  result = objc_msgSendSuper2(&v4, sel_rootSettings);
  if (result)
  {
    type metadata accessor for _UIToolbarSpec();
    v3 = swift_dynamicCastClassUnconditional();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (id)domainName
{
  v2 = sub_18A4A7258();

  return v2;
}

+ (id)domainGroupName
{
  v2 = sub_18A4A7258();

  return v2;
}

+ (Class)rootSettingsClass
{
  type metadata accessor for _UIToolbarSpec();

  return swift_getObjCClassFromMetadata();
}

@end