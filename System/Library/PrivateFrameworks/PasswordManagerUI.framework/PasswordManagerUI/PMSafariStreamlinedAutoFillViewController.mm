@interface PMSafariStreamlinedAutoFillViewController
- (PMSafariStreamlinedAutoFillViewController)initWithCoder:(id)a3;
- (PMSafariStreamlinedAutoFillViewController)initWithField:(int64_t)a3 host:(id)a4 matchedHost:(id)a5 username:(id)a6 domainForWebsiteImage:(id)a7 credentialProviderBundleID:(id)a8 creationDate:(id)a9;
- (PMSafariStreamlinedAutoFillViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PMSafariStreamlinedAutoFillViewControllerDelegate)delegate;
- (void)loadView;
- (void)setDelegate:(id)a3;
@end

@implementation PMSafariStreamlinedAutoFillViewController

- (PMSafariStreamlinedAutoFillViewControllerDelegate)delegate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setDelegate:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate);
  *(&self->super.super.super.isa + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (PMSafariStreamlinedAutoFillViewController)initWithField:(int64_t)a3 host:(id)a4 matchedHost:(id)a5 username:(id)a6 domainForWebsiteImage:(id)a7 credentialProviderBundleID:(id)a8 creationDate:(id)a9
{
  v29 = sub_21CB855C4();
  v12 = v11;
  if (a5)
  {
    v13 = sub_21CB855C4();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_21CB855C4();
  v18 = v17;
  v19 = sub_21CB855C4();
  v21 = v20;
  if (!a8)
  {
    v23 = 0;
    if (a9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v24 = 0;
    v25 = 0;
    goto LABEL_9;
  }

  a8 = sub_21CB855C4();
  v23 = v22;
  if (!a9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = sub_21CB855C4();
LABEL_9:
  *(&v28 + 1) = v24;
  *(&v27 + 1) = a8;
  *&v28 = v23;
  *&v27 = v21;
  return sub_21C82DC3C(a3, v29, v12, v13, v15, v16, v18, v19, v27, v28, v25);
}

- (PMSafariStreamlinedAutoFillViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate) = 0;
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  PMSafariStreamlinedAutoFillViewController.loadView()();
}

- (PMSafariStreamlinedAutoFillViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end