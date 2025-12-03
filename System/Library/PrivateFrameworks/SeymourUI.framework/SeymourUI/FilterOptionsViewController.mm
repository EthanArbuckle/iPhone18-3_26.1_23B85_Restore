@interface FilterOptionsViewController
- (_TtC9SeymourUI27FilterOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)onCancel;
- (void)onDone;
- (void)textSizeChanged:(id)changed;
- (void)updateTitleView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FilterOptionsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20B99E7D8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FilterOptionsViewController();
  v13.receiver = self;
  v13.super_class = v9;
  selfCopy = self;
  [(FilterOptionsViewController *)&v13 viewDidAppear:appearCopy];
  sub_20B9804B0();
  v12[1] = selfCopy;
  sub_20B98019C(v8);
  sub_20B526824(&qword_27C7685C8, v11, type metadata accessor for FilterOptionsViewController);
  sub_20C138C54();
  (*(v6 + 8))(v8, v5);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20B99EFB0(disappear);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FilterOptionsViewController();
  v2 = v3.receiver;
  [(FilterOptionsViewController *)&v3 viewDidLayoutSubviews];
  sub_20B99F394();
}

- (void)updateTitleView
{
  selfCopy = self;
  sub_20B99F150();
}

- (void)onDone
{
  selfCopy = self;
  sub_20B99F554();
}

- (void)onCancel
{
  selfCopy = self;
  sub_20B9A00F4();
}

- (void)textSizeChanged:(id)changed
{
  v4 = sub_20C132614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();
  selfCopy = self;
  sub_20B99F394();

  (*(v5 + 8))(v7, v4);
}

- (_TtC9SeymourUI27FilterOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end