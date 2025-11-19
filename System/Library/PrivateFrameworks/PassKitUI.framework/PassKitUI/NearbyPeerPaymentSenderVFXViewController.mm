@interface NearbyPeerPaymentSenderVFXViewController
- (_TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController)init;
@end

@implementation NearbyPeerPaymentSenderVFXViewController

- (_TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_state;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9PassKitUI40NearbyPeerPaymentSenderVFXViewController_animationDelegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v5 = [(NearbyPeerPaymentVFXViewController *)&v9 init];
  v6 = *(&v5->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_unknownAmountEmitter);
  v7 = v5;
  [v6 removeFromParentNode];
  sub_1BD878D88();

  return v7;
}

@end