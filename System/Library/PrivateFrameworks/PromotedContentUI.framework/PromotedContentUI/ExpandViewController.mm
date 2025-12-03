@interface ExpandViewController
- (_TtC17PromotedContentUI20ExpandViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)closeButtonTappedWithSender:(id)sender;
- (void)dealloc;
- (void)tapRecognized:(id)recognized;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)webProcessMRAIDJSODidCallClose;
- (void)webProcessMRAIDJSODidCallExpand:(id)expand withMaximumWidth:(double)width andHeight:(double)height;
- (void)webProcessMRAIDJSODidCallOpen:(id)open;
- (void)webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame;
@end

@implementation ExpandViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView);
  selfCopy = self;
  v6 = v4;
  sub_1C1A65B5C();

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(ExpandViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1C19B2B18();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1C19B30B4(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1C19B3294();
}

- (void)closeButtonTappedWithSender:(id)sender
{
  selfCopy = self;
  sub_1C1A6F65C();
  sub_1C199E4CC();
  v3 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  sub_1C19B35B0();
}

- (void)tapRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  sub_1C19B4254();
}

- (_TtC17PromotedContentUI20ExpandViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame
{
  selfCopy = self;
  sub_1C19B3A78();
}

- (void)webProcessMRAIDJSODidCallOpen:(id)open
{
  v4 = sub_1C1A6D48C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ([Strong respondsToSelector_])
    {
      selfCopy = self;
      v11 = sub_1C1A6D41C();
      [v9 webProcessMRAIDJSODidCallOpen_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  (*(v5 + 8))(v7, v4);
}

- (void)webProcessMRAIDJSODidCallClose
{
  selfCopy = self;
  sub_1C19B3D30();
}

- (void)webProcessMRAIDJSODidCallExpand:(id)expand withMaximumWidth:(double)width andHeight:(double)height
{
  v5 = sub_1C1A6D48C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D43C();
  sub_1C19B43C4();
  (*(v6 + 8))(v8, v5);
}

@end