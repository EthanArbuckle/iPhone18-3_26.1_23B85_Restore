@interface PlayerTipKitManagerObjC
+ (void)addMultiviewTipFor:(id)a3;
+ (void)addTipsToConfiguration:(id)a3 isRadioBroadcastEnabled:(BOOL)a4;
+ (void)scheduleTips:(id)a3;
@end

@implementation PlayerTipKitManagerObjC

+ (void)addMultiviewTipFor:(id)a3
{
  swift_unknownObjectRetain();
  sub_1E4207264();
  swift_unknownObjectRelease();
  static PlayerTipKitManagerObjC.addMultiviewTip(for:)(v3);
  __swift_destroy_boxed_opaque_existential_1(v3);
}

+ (void)addTipsToConfiguration:(id)a3 isRadioBroadcastEnabled:(BOOL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  static PlayerTipKitManagerObjC.addTipsToConfiguration(_:isRadioBroadcastEnabled:)(v5, a4);
  sub_1E329505C(v5);
}

+ (void)scheduleTips:(id)a3
{
  v4 = a3;
  static PlayerTipKitManagerObjC.scheduleTips(_:)(a3);
}

@end