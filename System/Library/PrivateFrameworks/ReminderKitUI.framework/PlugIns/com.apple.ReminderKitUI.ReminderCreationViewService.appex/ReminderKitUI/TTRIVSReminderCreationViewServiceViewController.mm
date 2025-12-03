@interface TTRIVSReminderCreationViewServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (TTRIVSReminderCreationViewServiceViewController)initWithCoder:(id)coder;
- (TTRIVSReminderCreationViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)displayForCreationWithContext:(id)context completion:(id)completion;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
- (void)viewHostDidDismiss;
@end

@implementation TTRIVSReminderCreationViewServiceViewController

- (TTRIVSReminderCreationViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000168BC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000CEEC(v5, v7, bundle);
}

- (TTRIVSReminderCreationViewServiceViewController)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_currentEventHandler);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_contentNavigationController) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_extensionCreateReminderInterface);
  *v4 = 0;
  v4[1] = 0;
  if (qword_100025508 != -1)
  {
    swift_once();
  }

  v5 = sub_10001687C();
  sub_10000C698(v5, qword_100025BB8);
  sub_10000BF40(&_swiftEmptyArrayStorage);
  sub_10000BF40(&_swiftEmptyArrayStorage);
  sub_10000F754("init(coder:) has not been implemented", 37, 2);
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRIVSReminderCreationViewServiceViewController();
  v2 = v9.receiver;
  [(TTRIVSReminderCreationViewServiceViewController *)&v9 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v6 = v5;
    v8 = v7;

    [v2 setPreferredContentSize:{v6, v8}];
  }

  else
  {
    __break(1u);
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIVSReminderCreationViewServiceViewController();
  swift_unknownObjectRetain();
  v4 = v7.receiver;
  [(TTRIVSReminderCreationViewServiceViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:container];
  sub_10000D2E0();
  v6 = v5;
  [container preferredContentSize];
  [v6 viewServicePreferredSizeDidChange:?];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

+ (id)_exportedInterface
{
  rem_reminderCreationViewServiceViewControllerExportedInterface = [objc_opt_self() rem_reminderCreationViewServiceViewControllerExportedInterface];

  return rem_reminderCreationViewServiceViewControllerExportedInterface;
}

+ (id)_remoteViewControllerInterface
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___REMReminderCreationRemoteViewController];

  return v2;
}

- (void)displayForCreationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  sub_10000E74C(contextCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)viewHostDidDismiss
{
  if (qword_100025508 != -1)
  {
    swift_once();
  }

  v0 = sub_10001687C();
  sub_10000C698(v0, qword_100025BB8);
  oslog = sub_10001686C();
  v1 = sub_10001699C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Tearing down TTRIVSReminderCreationViewServiceViewController", v2, 2u);
  }
}

@end