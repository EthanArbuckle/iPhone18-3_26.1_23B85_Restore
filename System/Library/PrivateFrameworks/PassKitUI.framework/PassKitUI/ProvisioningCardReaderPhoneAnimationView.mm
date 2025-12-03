@interface ProvisioningCardReaderPhoneAnimationView
- (_TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView)initWithCoder:(id)coder;
- (_TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ProvisioningCardReaderPhoneAnimationView

- (_TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state) = 3;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionCompletions) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_phoneView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for ProvisioningCardReaderPhoneAnimationView.CombinedPhoneView()) init];
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1BD84DB94();
}

- (_TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end