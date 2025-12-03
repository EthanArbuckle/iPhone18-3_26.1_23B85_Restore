@interface PMSafariStreamlinedAutoFillViewController
- (PMSafariStreamlinedAutoFillViewController)initWithCoder:(id)coder;
- (PMSafariStreamlinedAutoFillViewController)initWithField:(int64_t)field host:(id)host matchedHost:(id)matchedHost username:(id)username domainForWebsiteImage:(id)image credentialProviderBundleID:(id)d creationDate:(id)date;
- (PMSafariStreamlinedAutoFillViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PMSafariStreamlinedAutoFillViewControllerDelegate)delegate;
- (void)loadView;
- (void)setDelegate:(id)delegate;
@end

@implementation PMSafariStreamlinedAutoFillViewController

- (PMSafariStreamlinedAutoFillViewControllerDelegate)delegate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setDelegate:(id)delegate
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate);
  *(&self->super.super.super.isa + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (PMSafariStreamlinedAutoFillViewController)initWithField:(int64_t)field host:(id)host matchedHost:(id)matchedHost username:(id)username domainForWebsiteImage:(id)image credentialProviderBundleID:(id)d creationDate:(id)date
{
  v29 = sub_21CB855C4();
  v12 = v11;
  if (matchedHost)
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
  if (!d)
  {
    v23 = 0;
    if (date)
    {
      goto LABEL_6;
    }

LABEL_8:
    v24 = 0;
    v25 = 0;
    goto LABEL_9;
  }

  d = sub_21CB855C4();
  v23 = v22;
  if (!date)
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = sub_21CB855C4();
LABEL_9:
  *(&v28 + 1) = v24;
  *(&v27 + 1) = d;
  *&v28 = v23;
  *&v27 = v21;
  return sub_21C82DC3C(field, v29, v12, v13, v15, v16, v18, v19, v27, v28, v25);
}

- (PMSafariStreamlinedAutoFillViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___PMSafariStreamlinedAutoFillViewController_delegate) = 0;
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  PMSafariStreamlinedAutoFillViewController.loadView()();
}

- (PMSafariStreamlinedAutoFillViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end