@interface MultiPlayerViewController
- (BOOL)isShowingProspectivePlayer;
- (BOOL)isSupportedScreenSize:(CGSize)a3;
- (CGRect)presentationRectForPlayerViewController:(id)a3;
- (VUIImageProxy)backgroundImageProxy;
- (VUIMultiPlayerViewControllerDelegate)delegate;
- (_TtC8VideosUI25MultiPlayerViewController)initWithCoder:(id)a3;
- (_TtC8VideosUI25MultiPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)playerViewController:(id)a3 targetViewForDismissalAnimationWithProposedTargetView:(id)a4;
- (id)presentationCompletion;
- (int64_t)prospectivePlayerIndex;
- (unint64_t)distribution;
- (void)addPlayerViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)captureAndShowPlayerScreenshots;
- (void)enterFullscreenWithPlayerViewController:(id)a3 completion:(id)a4;
- (void)exitFullscreenWithCompletion:(id)a3;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)recordMetricsEventWithIdentifier:(id)a3 impressionsData:(id)a4 locationData:(id)a5 didAddPlayer:(BOOL)a6;
- (void)removePlayerViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)replacePlayerViewController:(id)a3 atIndex:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)setBackgroundImageProxy:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDetailsViewControllerVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setFullscreenGesturesEnabled:(BOOL)a3;
- (void)setPresentationCompletion:(id)a3;
- (void)setProspectivePlayerVisible:(BOOL)a3 atIndex:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MultiPlayerViewController

- (VUIImageProxy)backgroundImageProxy
{
  v2 = self;
  v3 = sub_1E386A230();

  return v3;
}

- (void)setBackgroundImageProxy:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_190();
  sub_1E386A2B8();
}

- (id)presentationCompletion
{
  v2 = sub_1E386A554();
  if (v2)
  {
    v7[4] = v2;
    v7[5] = v3;
    OUTLINED_FUNCTION_3_4();
    v7[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v7[2] = v4;
    v7[3] = &block_descriptor_187;
    v5 = _Block_copy(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPresentationCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1E387F68C;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E386A644(v4, v5);
}

- (VUIMultiPlayerViewControllerDelegate)delegate
{
  v2 = sub_1E386A730();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_190();
  sub_1E386A7C8();
}

- (unint64_t)distribution
{
  v2 = self;
  v3 = sub_1E386A8D0();

  return v3;
}

- (BOOL)isShowingProspectivePlayer
{
  v2 = self;
  v3 = sub_1E386AA4C();

  return v3;
}

- (int64_t)prospectivePlayerIndex
{
  v2 = self;
  v3 = sub_1E386AAB4();

  return v3;
}

- (_TtC8VideosUI25MultiPlayerViewController)initWithCoder:(id)a3
{
  v3 = a3;
  sub_1E386CF88();
  return 0;
}

- (void)viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3877064(&selRef_viewDidLoad);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1E386D284();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E386D370(v4);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E386D478(v4);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E386D650(v4);
}

- (void)addPlayerViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  OUTLINED_FUNCTION_201_0();
  if (OUTLINED_FUNCTION_195(v7, v8, v9, v10, v11))
  {
    OUTLINED_FUNCTION_4_0();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_180_0(v12);
  }

  v13 = v6;
  v14 = v5;
  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_38_11();
  sub_1E3870CE0();
  v15 = OUTLINED_FUNCTION_53();
  sub_1E37FAED8(v15, v16);

  OUTLINED_FUNCTION_200();
}

- (void)removePlayerViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  OUTLINED_FUNCTION_201_0();
  if (OUTLINED_FUNCTION_195(v7, v8, v9, v10, v11))
  {
    OUTLINED_FUNCTION_4_0();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_180_0(v12);
  }

  v13 = v6;
  v14 = v5;
  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_38_11();
  sub_1E3870EF8();
  v15 = OUTLINED_FUNCTION_53();
  sub_1E37FAED8(v15, v16);

  OUTLINED_FUNCTION_200();
}

- (void)replacePlayerViewController:(id)a3 atIndex:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  OUTLINED_FUNCTION_201_0();
  v7 = v6;
  v9 = v8;
  v11 = _Block_copy(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v11;
  }

  v12 = v7;
  v9;
  OUTLINED_FUNCTION_150_1();
  sub_1E387130C();
  v13 = OUTLINED_FUNCTION_124();
  sub_1E37FAED8(v13, v14);

  OUTLINED_FUNCTION_200();
}

- (void)enterFullscreenWithPlayerViewController:(id)a3 completion:(id)a4
{
  OUTLINED_FUNCTION_201_0();
  v5 = v4;
  v7 = v6;
  v9 = _Block_copy(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v9;
  }

  v10 = v5;
  v7;
  OUTLINED_FUNCTION_53();
  sub_1E387172C();
  v11 = OUTLINED_FUNCTION_74();
  sub_1E37FAED8(v11, v12);

  OUTLINED_FUNCTION_200();
}

- (void)exitFullscreenWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v5;
  }

  v6 = self;
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_74();
  sub_1E3871ADC();
  v7 = OUTLINED_FUNCTION_74();
  sub_1E37FAED8(v7, v8);
}

- (void)setProspectivePlayerVisible:(BOOL)a3 atIndex:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  OUTLINED_FUNCTION_201_0();
  v7 = v6;
  v9 = _Block_copy(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v9;
  }

  v7;
  OUTLINED_FUNCTION_150_1();
  sub_1E3871F44(v10, v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_124();
  sub_1E37FAED8(v15, v16);
  OUTLINED_FUNCTION_200();
}

- (void)setDetailsViewControllerVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  OUTLINED_FUNCTION_201_0();
  if (OUTLINED_FUNCTION_196(v6, v7, v8, v9, v10))
  {
    OUTLINED_FUNCTION_4_0();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_180_0(v11);
  }

  v12 = v5;
  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_38_11();
  sub_1E387237C(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_53();
  sub_1E37FAED8(v17, v18);
  OUTLINED_FUNCTION_200();
}

- (CGRect)presentationRectForPlayerViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  OUTLINED_FUNCTION_38();
  sub_1E38734BC();
  OUTLINED_FUNCTION_3();

  v7 = OUTLINED_FUNCTION_6();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (BOOL)isSupportedScreenSize:(CGSize)a3
{
  OUTLINED_FUNCTION_5_16();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_6_12();
  v7 = sub_1E3873860(v5, v6);

  return v7 & 1;
}

- (void)captureAndShowPlayerScreenshots
{
  v2 = self;
  sub_1E3873A5C();
}

- (void)recordMetricsEventWithIdentifier:(id)a3 impressionsData:(id)a4 locationData:(id)a5 didAddPlayer:(BOOL)a6
{
  OUTLINED_FUNCTION_82_2();
  v7 = v6;
  sub_1E4205F14();
  sub_1E42062B4();
  sub_1E42062B4();
  v8 = v7;
  sub_1E3873B40();

  OUTLINED_FUNCTION_95();
}

- (void)setFullscreenGesturesEnabled:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3873DE0(v4);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  OUTLINED_FUNCTION_5_16();
  v5 = v4;
  swift_unknownObjectRetain();
  v6 = v5;
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_6_12();
  v7 = OUTLINED_FUNCTION_190();
  sub_1E38759B0(v7);
  swift_unknownObjectRelease();
}

- (_TtC8VideosUI25MultiPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3877000();
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_13_8();
  sub_1E38779B8();

  swift_unknownObjectRelease();
}

- (id)playerViewController:(id)a3 targetViewForDismissalAnimationWithProposedTargetView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = OUTLINED_FUNCTION_13_8();
  sub_1E3877BB8(v9, v10);

  return v7;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v7 = a3;
  OUTLINED_FUNCTION_87_0();
  swift_unknownObjectRetain();
  v8 = self;
  v9 = sub_1E3C805D8(v8, a4);

  swift_unknownObjectRelease();

  return v9;
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v13 = sub_1E3C81FF8(v11, v12, v10);

  return v13;
}

@end