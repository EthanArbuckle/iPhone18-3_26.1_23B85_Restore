@interface PKPassActionWidgetViewModel
- (BOOL)hasActionButtons;
- (FKAccount)_bankConnectAccount;
- (PKAccount)_account;
- (PKPassActionWidgetViewModel)init;
- (PKPassActionWidgetViewModel)initWithViewStyle:(int64_t)a3;
- (PKPaymentPass)_paymentPass;
- (PKPaymentPassActionWidgetViewDelegate)_delegate;
- (PKPaymentPassActionWidgetViewDelegate)delegate;
- (double)bottomPadding;
- (void)setAccount:(id)a3;
- (void)setBankConnectAccount:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPaymentPass:(id)a3;
- (void)set_delegate:(id)a3;
@end

@implementation PKPassActionWidgetViewModel

- (PKAccount)_account
{
  v3 = OBJC_IVAR___PKPassActionWidgetViewModel__account;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAccount:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD75FA10(a3);
}

- (FKAccount)_bankConnectAccount
{
  v3 = OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBankConnectAccount:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD75FEC8(a3);
}

- (PKPaymentPass)_paymentPass
{
  v3 = OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPaymentPass:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD760470(a3);
}

- (PKPaymentPassActionWidgetViewDelegate)_delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)set_delegate:(id)a3
{
  v5 = OBJC_IVAR___PKPassActionWidgetViewModel__delegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (PKPaymentPassActionWidgetViewDelegate)delegate
{
  swift_getKeyPath();
  sub_1BD75FBB0();
  v3 = self;
  sub_1BE04B594();

  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__delegate;
  swift_beginAccess();
  v5 = *(&v3->super.isa + v4);
  swift_unknownObjectRetain();

  return v5;
}

- (void)setDelegate:(id)a3
{
  swift_getKeyPath();
  sub_1BD75FBB0();
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BE04B584();

  swift_unknownObjectRelease();
}

- (PKPassActionWidgetViewModel)initWithViewStyle:(int64_t)a3
{
  *(&self->super.isa + OBJC_IVAR___PKPassActionWidgetViewModel__account) = 0;
  *(&self->super.isa + OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount) = 0;
  *(&self->super.isa + OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass) = 0;
  *(&self->super.isa + OBJC_IVAR___PKPassActionWidgetViewModel__delegate) = 0;
  sub_1BE04B5C4();
  *(&self->super.isa + OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PassActionWidgetViewModel();
  return [(PKPassActionWidgetViewModel *)&v6 init];
}

- (BOOL)hasActionButtons
{
  v2 = self;
  v3 = sub_1BD76115C();

  v4 = *(v3 + 2);

  return v4 != 0;
}

- (double)bottomPadding
{
  v2 = *(&self->super.isa + OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle);
  if (v2 < 3)
  {
    return dbl_1BE0F5400[v2];
  }

  sub_1BE053994();
  __break(1u);
  return result;
}

- (PKPassActionWidgetViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end