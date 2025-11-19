@interface PKAddAutoFillCardViewController
- (PKAddAutoFillCardViewController)initWithCoder:(id)a3;
- (PKAddAutoFillCardViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (PKAddAutoFillCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PKAddAutoFillCardViewController)initWithRootViewController:(id)a3;
- (PKAddAutoFillCardViewController)initWithWebService:(id)a3 context:(int64_t)a4 delegate:(id)a5 primaryAccountIdentifier:(id)a6 passUniqueIdentifier:(id)a7 displayablePaymentCredentialType:(id)a8;
- (void)cameraCaptureViewController:(id)a3 didRecognizeObjects:(id)a4;
- (void)cameraCaptureViewControllerDidSelectManualEntry:(id)a3;
- (void)reset;
@end

@implementation PKAddAutoFillCardViewController

- (PKAddAutoFillCardViewController)initWithWebService:(id)a3 context:(int64_t)a4 delegate:(id)a5 primaryAccountIdentifier:(id)a6 passUniqueIdentifier:(id)a7 displayablePaymentCredentialType:(id)a8
{
  v9 = a7;
  if (a6)
  {
    v14 = sub_1BE052434();
    v16 = v15;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  v16 = 0;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_1BE052434();
  v18 = v17;
  if (!a8)
  {
    goto LABEL_7;
  }

LABEL_4:
  a8 = sub_1BE052434();
  v20 = v19;
LABEL_8:
  v21 = a3;
  swift_unknownObjectRetain();
  swift_getObjectType();
  sub_1BD88B048(v21, a4, a5, v14, v16, v9, v18, a8, v20, self);
  return result;
}

- (PKAddAutoFillCardViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___PKAddAutoFillCardViewController_context) = 0;
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR___PKAddAutoFillCardViewController_primaryAccountIdentifier);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR___PKAddAutoFillCardViewController_passUniqueIdentifier);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.super.super.super.isa + OBJC_IVAR___PKAddAutoFillCardViewController_displayablePaymentCredentialType);
  *v6 = 0;
  v6[1] = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)cameraCaptureViewController:(id)a3 didRecognizeObjects:(id)a4
{
  if (a4)
  {
    v5 = sub_1BE052744();
    v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel);
    v8 = self;
    v7 = v6;
    sub_1BD9F46CC(v5, v7);

    sub_1BD88AA80();
  }

  else
  {
    __break(1u);
  }
}

- (void)cameraCaptureViewControllerDidSelectManualEntry:(id)a3
{
  v3 = self;
  sub_1BD88AA80();
}

- (void)reset
{
  v5 = self;
  v2 = [(PKAddAutoFillCardViewController *)v5 topViewController];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for AutofillManualEntryViewController();
    if (swift_dynamicCastClass())
    {
      sub_1BD889BEC();
      v4 = v3;
    }

    else
    {
      v4 = v5;
      v5 = v3;
    }
  }
}

- (PKAddAutoFillCardViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PKAddAutoFillCardViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PKAddAutoFillCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end