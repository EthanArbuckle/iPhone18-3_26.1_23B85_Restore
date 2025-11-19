@interface PUPhotoStyleToolController
- (UIView)centerToolbarView;
- (_TtC15PhotosUIPrivate26PUPhotoStyleToolController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)disabledToolAlertTitle;
- (int64_t)wheelScrubberView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)wheelScrubberViewNumberOfSections:(id)a3;
- (void)castIntensityInteractionDidBegin;
- (void)castIntensityInteractionDidEnd;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)decreaseScrubberValue:(BOOL)a3;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)handleCastIntensitySliderValueChangedTo:(double)a3;
- (void)handlePadDismissalWithGestureRecognizer:(id)a3;
- (void)handlePadValueChangedWithSlider:(id)a3;
- (void)handleToggleOriginalWithGestureRecognizer:(id)a3;
- (void)increaseScrubberValue:(BOOL)a3;
- (void)mediaView:(id)a3 didZoom:(double)a4;
- (void)mediaViewDidScroll:(id)a3;
- (void)mediaViewIsReady;
- (void)ppt_selectWithStyle:(id)a3;
- (void)previewingOriginalDidStart;
- (void)previewingOriginalDidStop;
- (void)reactivate;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wheelScrubberView:(id)a3 didTapOnSelectedCellWithFrame:(CGRect)a4;
- (void)wheelScrubberView:(id)a3 updateCell:(id)a4 forItemAtIndex:(int64_t)a5;
- (void)wheelScrubberViewDidChangeSelectedIndex:(id)a3;
- (void)wheelScrubberViewDidEndDragging:(id)a3;
- (void)wheelScrubberViewDidEndScrolling:(id)a3;
- (void)wheelScrubberViewWillBeginDragging:(id)a3;
- (void)wheelScrubberViewWillBeginScrolling:(id)a3;
- (void)willBecomeActiveTool;
- (void)willBecomeEnabled;
- (void)willResignActiveTool;
@end

@implementation PUPhotoStyleToolController

- (void)viewDidLoad
{
  v2 = self;
  sub_1B382DD30();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1B38309F4(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1B3830BF0(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1B3830E24(a3, a4);
  swift_unknownObjectRelease();
}

- (void)updateViewConstraints
{
  v2 = self;
  sub_1B3830F74();
}

- (void)handlePadValueChangedWithSlider:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B382E400(v4);
}

- (void)handleCastIntensitySliderValueChangedTo:(double)a3
{
  v4 = self;
  sub_1B382EA58(a3);
}

- (void)castIntensityInteractionDidBegin
{
  v2 = self;
  sub_1B382EEC8();
}

- (void)castIntensityInteractionDidEnd
{
  v2 = self;
  sub_1B382EF0C();
}

- (void)handlePadDismissalWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B38382C4(v4);
}

- (void)handleToggleOriginalWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B38383A0(v4);
}

- (_TtC15PhotosUIPrivate26PUPhotoStyleToolController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1B3C9C5E8();
  }

  v5 = a4;
  sub_1B3838664();
}

- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6
{
  swift_unknownObjectRetain();
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_1B383890C(a3, a4, a5, a6);
  swift_unknownObjectRelease();
}

- (UIView)centerToolbarView
{
  v2 = sub_1B3832B38();

  return v2;
}

- (void)increaseScrubberValue:(BOOL)a3
{
  v3 = self;
  sub_1B3838DB8();
}

- (void)decreaseScrubberValue:(BOOL)a3
{
  v3 = self;
  sub_1B3839358();
}

- (void)willBecomeActiveTool
{
  v2 = self;
  sub_1B383943C();
}

- (void)didBecomeActiveTool
{
  v2 = self;
  sub_1B3839594();
}

- (void)willResignActiveTool
{
  v2 = self;
  sub_1B3839674();
}

- (void)didResignActiveTool
{
  v2 = self;
  sub_1B3839784();
}

- (void)willBecomeEnabled
{
  v2 = self;
  sub_1B3839820();
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  if (a3)
  {
    sub_1B3C9C988();
  }

  v4 = self;
  sub_1B3839970();
}

- (id)disabledToolAlertTitle
{
  v2 = self;
  sub_1B3839F08();

  v3 = sub_1B3C9C5A8();

  return v3;
}

- (void)mediaViewIsReady
{
  v2 = self;
  sub_1B3839FD4();
}

- (void)mediaView:(id)a3 didZoom:(double)a4
{
  v5 = a3;
  v6 = self;
  sub_1B383A020();
}

- (void)mediaViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B383A0BC();
}

- (void)previewingOriginalDidStart
{
  v2 = self;
  sub_1B383A1B0();
}

- (void)previewingOriginalDidStop
{
  v2 = self;
  sub_1B383A254();
}

- (void)wheelScrubberView:(id)a3 updateCell:(id)a4 forItemAtIndex:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1B383A2E8(a3, a4, a5);
}

- (void)wheelScrubberViewDidChangeSelectedIndex:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B3838E74(a3);
}

- (void)wheelScrubberView:(id)a3 didTapOnSelectedCellWithFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v11 = self;
  sub_1B383AE00(a3, x, y, width, height);
}

- (void)wheelScrubberViewWillBeginScrolling:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B383AF48();
}

- (void)wheelScrubberViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B383B060();
}

- (void)wheelScrubberViewDidEndScrolling:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B383B0E4();
}

- (void)wheelScrubberViewDidEndDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B383B220();
}

- (int64_t)wheelScrubberViewNumberOfSections:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B383B2A0();

  return v6;
}

- (int64_t)wheelScrubberView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1B383B318(v7, a4);

  return v8;
}

- (void)reactivate
{
  v2 = self;
  sub_1B383B490();
}

- (void)ppt_selectWithStyle:(id)a3
{
  sub_1B3C9C5E8();
  v4 = self;
  sub_1B383B560();
}

@end