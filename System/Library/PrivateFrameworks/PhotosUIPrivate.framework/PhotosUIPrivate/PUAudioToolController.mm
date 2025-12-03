@interface PUAudioToolController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSArray)leadingToolbarViews;
- (UIView)centerToolbarView;
- (_TtC15PhotosUIPrivate21PUAudioToolController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator;
- (void)slider:(id)slider willUpdateValue:(double *)value withVelocity:(double)velocity;
- (void)sliderDidEndScrolling:(id)scrolling;
- (void)sliderDidScroll:(id)scroll;
- (void)sliderWillBeginScrolling:(id)scrolling;
- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PUAudioToolController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1B37E0F78();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1B37E1E64(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1B37E1F40(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1B37E1FE0();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B37E31C8(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15PhotosUIPrivate21PUAudioToolController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1B3C9C5E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1B37E39C8(v5, v7, bundle);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1B3C98298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C98268();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1B37E40DC(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_1B3C98298();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C98268();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v16 = sub_1B37E4374(viewCopy, v15, v11);
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1B3C98298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C98268();
  viewCopy = view;
  selfCopy = self;
  sub_1B37E45AC(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)sliderWillBeginScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  selfCopy = self;
  sub_1B37E4DD4(scrollingCopy);
}

- (void)slider:(id)slider willUpdateValue:(double *)value withVelocity:(double)velocity
{
  sliderCopy = slider;
  selfCopy = self;
  sub_1B37E4F9C(velocity, selfCopy, value);
}

- (void)sliderDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1B37E5044(scrollCopy);
}

- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  scrollingCopy = scrolling;
  selfCopy = self;
  sub_1B37E5390();
}

- (void)sliderDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  selfCopy = self;
  sub_1B37E53F8();
}

- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator
{
  swift_unknownObjectRetain();
  controllerCopy = controller;
  sourceCopy = source;
  calculatorCopy = calculator;
  selfCopy = self;
  sub_1B37E5528(asset, controller, source, calculator);
  swift_unknownObjectRelease();
}

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  if (adjustments)
  {
    v4 = sub_1B3C9C988();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
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