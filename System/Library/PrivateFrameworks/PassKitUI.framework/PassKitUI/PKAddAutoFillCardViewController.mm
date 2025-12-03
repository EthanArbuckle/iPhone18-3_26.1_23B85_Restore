@interface PKAddAutoFillCardViewController
- (PKAddAutoFillCardViewController)initWithCoder:(id)coder;
- (PKAddAutoFillCardViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (PKAddAutoFillCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PKAddAutoFillCardViewController)initWithRootViewController:(id)controller;
- (PKAddAutoFillCardViewController)initWithWebService:(id)service context:(int64_t)context delegate:(id)delegate primaryAccountIdentifier:(id)identifier passUniqueIdentifier:(id)uniqueIdentifier displayablePaymentCredentialType:(id)type;
- (void)cameraCaptureViewController:(id)controller didRecognizeObjects:(id)objects;
- (void)cameraCaptureViewControllerDidSelectManualEntry:(id)entry;
- (void)reset;
@end

@implementation PKAddAutoFillCardViewController

- (PKAddAutoFillCardViewController)initWithWebService:(id)service context:(int64_t)context delegate:(id)delegate primaryAccountIdentifier:(id)identifier passUniqueIdentifier:(id)uniqueIdentifier displayablePaymentCredentialType:(id)type
{
  uniqueIdentifierCopy = uniqueIdentifier;
  if (identifier)
  {
    v14 = sub_1BE052434();
    v16 = v15;
    if (uniqueIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    if (type)
    {
      goto LABEL_4;
    }

LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  v16 = 0;
  if (!uniqueIdentifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  uniqueIdentifierCopy = sub_1BE052434();
  v18 = v17;
  if (!type)
  {
    goto LABEL_7;
  }

LABEL_4:
  type = sub_1BE052434();
  v20 = v19;
LABEL_8:
  serviceCopy = service;
  swift_unknownObjectRetain();
  swift_getObjectType();
  sub_1BD88B048(serviceCopy, context, delegate, v14, v16, uniqueIdentifierCopy, v18, type, v20, self);
  return result;
}

- (PKAddAutoFillCardViewController)initWithCoder:(id)coder
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

- (void)cameraCaptureViewController:(id)controller didRecognizeObjects:(id)objects
{
  if (objects)
  {
    v5 = sub_1BE052744();
    v6 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKAddAutoFillCardViewController_fieldsModel);
    selfCopy = self;
    v7 = v6;
    sub_1BD9F46CC(v5, v7);

    sub_1BD88AA80();
  }

  else
  {
    __break(1u);
  }
}

- (void)cameraCaptureViewControllerDidSelectManualEntry:(id)entry
{
  selfCopy = self;
  sub_1BD88AA80();
}

- (void)reset
{
  selfCopy = self;
  topViewController = [(PKAddAutoFillCardViewController *)selfCopy topViewController];
  if (topViewController)
  {
    v3 = topViewController;
    type metadata accessor for AutofillManualEntryViewController();
    if (swift_dynamicCastClass())
    {
      sub_1BD889BEC();
      v4 = v3;
    }

    else
    {
      v4 = selfCopy;
      selfCopy = v3;
    }
  }
}

- (PKAddAutoFillCardViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PKAddAutoFillCardViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (PKAddAutoFillCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end