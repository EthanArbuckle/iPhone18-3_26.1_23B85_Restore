@interface PlayerTipKitManagerObjC
+ (void)addMultiviewTipFor:(id)for;
+ (void)addTipsToConfiguration:(id)configuration isRadioBroadcastEnabled:(BOOL)enabled;
+ (void)scheduleTips:(id)tips;
@end

@implementation PlayerTipKitManagerObjC

+ (void)addMultiviewTipFor:(id)for
{
  swift_unknownObjectRetain();
  sub_1E4207264();
  swift_unknownObjectRelease();
  static PlayerTipKitManagerObjC.addMultiviewTip(for:)(v3);
  __swift_destroy_boxed_opaque_existential_1(v3);
}

+ (void)addTipsToConfiguration:(id)configuration isRadioBroadcastEnabled:(BOOL)enabled
{
  if (configuration)
  {
    swift_unknownObjectRetain();
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  static PlayerTipKitManagerObjC.addTipsToConfiguration(_:isRadioBroadcastEnabled:)(v5, enabled);
  sub_1E329505C(v5);
}

+ (void)scheduleTips:(id)tips
{
  tipsCopy = tips;
  static PlayerTipKitManagerObjC.scheduleTips(_:)(tips);
}

@end