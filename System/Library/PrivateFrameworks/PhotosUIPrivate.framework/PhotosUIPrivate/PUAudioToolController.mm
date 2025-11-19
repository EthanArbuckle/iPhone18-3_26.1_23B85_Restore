@interface PUAudioToolController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSArray)leadingToolbarViews;
- (UIView)centerToolbarView;
- (_TtC15PhotosUIPrivate21PUAudioToolController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6;
- (void)slider:(id)a3 willUpdateValue:(double *)a4 withVelocity:(double)a5;
- (void)sliderDidEndScrolling:(id)a3;
- (void)sliderDidScroll:(id)a3;
- (void)sliderWillBeginScrolling:(id)a3;
- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUAudioToolController

- (void)viewDidLoad
{
  v2 = self;
  sub_1B37E0F78();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1B37E1E64(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1B37E1F40(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1B37E1FE0();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1B37E31C8(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15PhotosUIPrivate21PUAudioToolController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1B3C9C5E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1B37E39C8(v5, v7, a4);
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_1B3C98298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C98268();
  v10 = a3;
  v11 = self;
  v12 = sub_1B37E40DC(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = sub_1B3C98298();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C98268();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v16 = sub_1B37E4374(v12, v15, v11);
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1B3C98298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C98268();
  v10 = a3;
  v11 = self;
  sub_1B37E45AC(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)sliderWillBeginScrolling:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37E4DD4(v4);
}

- (void)slider:(id)a3 willUpdateValue:(double *)a4 withVelocity:(double)a5
{
  v8 = a3;
  v9 = self;
  sub_1B37E4F9C(a5, v9, a4);
}

- (void)sliderDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37E5044(v4);
}

- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v6 = a3;
  v7 = self;
  sub_1B37E5390();
}

- (void)sliderDidEndScrolling:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37E53F8();
}

- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6
{
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_1B37E5528(a3, a4, a5, a6);
  swift_unknownObjectRelease();
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  if (a3)
  {
    v4 = sub_1B3C9C988();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1B37E56BC(v4);
}

- (NSArray)leadingToolbarViews
{
  if (sub_1B37E58D4())
  {
    sub_1B3710718(0, &unk_1EB84F790);
    v2 = sub_1B3C9C778();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (UIView)centerToolbarView
{
  v2 = sub_1B37E5964();

  return v2;
}

@end