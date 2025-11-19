@interface _UIFluidNavigationTransitionsDomain
+ (Class)rootSettingsClass;
+ (_TtC5UIKit34_UIFluidParallaxTransitionSettings)parallaxSettings;
+ (id)domainGroupName;
+ (id)domainName;
+ (id)rootSettings;
@end

@implementation _UIFluidNavigationTransitionsDomain

+ (id)rootSettings
{
  swift_getObjCClassMetadata();
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  result = objc_msgSendSuper2(&v4, sel_rootSettings);
  if (result)
  {
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
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
  type metadata accessor for _UIFluidNavigationTransitionsSpec();

  return swift_getObjCClassFromMetadata();
}

+ (_TtC5UIKit34_UIFluidParallaxTransitionSettings)parallaxSettings
{
  swift_getObjCClassMetadata();
  v6.receiver = swift_getObjCClassFromMetadata();
  v6.super_class = &OBJC_METACLASS____UIFluidNavigationTransitionsDomain;
  result = objc_msgSendSuper2(&v6, sel_rootSettings);
  if (result)
  {
    v3 = result;
    type metadata accessor for _UIFluidNavigationTransitionsSpec();
    v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);
    v5 = v4;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end