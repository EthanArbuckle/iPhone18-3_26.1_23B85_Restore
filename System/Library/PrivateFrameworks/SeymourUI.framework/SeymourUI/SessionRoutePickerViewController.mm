@interface SessionRoutePickerViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (_TtC9SeymourUI32SessionRoutePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)onTapBackground;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SessionRoutePickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_20B961AA8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = type metadata accessor for SessionRoutePickerViewController();
  v4 = v11.receiver;
  [(SessionRoutePickerViewController *)&v11 viewDidAppear:v3];
  if (v3)
  {
    v5 = 0.18;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v10[4] = sub_20B963E40;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20B7B548C;
  v10[3] = &block_descriptor_56;
  v8 = _Block_copy(v10);
  v9 = v4;

  [v6 animateWithDuration:v8 animations:v5];

  _Block_release(v8);
}

- (unint64_t)supportedInterfaceOrientations
{
  if (sub_20C1380F4() == 1)
  {
    return 30;
  }

  else
  {
    return 24;
  }
}

- (void)onTapBackground
{
  v2 = self;
  sub_20B962BA4();
}

- (_TtC9SeymourUI32SessionRoutePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v10 = a3;
  v11 = self;
  sub_20B963AB0();

  (*(v7 + 8))(v9, v6);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v10 = a3;
  [v10 bounds];
  Width = CGRectGetWidth(v16);

  (*(v7 + 8))(v9, v6);
  v12 = 50.0;
  v13 = Width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_20B963C78(v8, a5);
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end