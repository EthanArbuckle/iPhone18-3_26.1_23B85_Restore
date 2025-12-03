@interface PUPhotoStyleToolController
- (UIView)centerToolbarView;
- (_TtC15PhotosUIPrivate26PUPhotoStyleToolController)initWithNibName:(id)name bundle:(id)bundle;
- (id)disabledToolAlertTitle;
- (int64_t)wheelScrubberView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)wheelScrubberViewNumberOfSections:(id)sections;
- (void)castIntensityInteractionDidBegin;
- (void)castIntensityInteractionDidEnd;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)decreaseScrubberValue:(BOOL)value;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)handleCastIntensitySliderValueChangedTo:(double)to;
- (void)handlePadDismissalWithGestureRecognizer:(id)recognizer;
- (void)handlePadValueChangedWithSlider:(id)slider;
- (void)handleToggleOriginalWithGestureRecognizer:(id)recognizer;
- (void)increaseScrubberValue:(BOOL)value;
- (void)mediaView:(id)view didZoom:(double)zoom;
- (void)mediaViewDidScroll:(id)scroll;
- (void)mediaViewIsReady;
- (void)ppt_selectWithStyle:(id)style;
- (void)previewingOriginalDidStart;
- (void)previewingOriginalDidStop;
- (void)reactivate;
- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wheelScrubberView:(id)view didTapOnSelectedCellWithFrame:(CGRect)frame;
- (void)wheelScrubberView:(id)view updateCell:(id)cell forItemAtIndex:(int64_t)index;
- (void)wheelScrubberViewDidChangeSelectedIndex:(id)index;
- (void)wheelScrubberViewDidEndDragging:(id)dragging;
- (void)wheelScrubberViewDidEndScrolling:(id)scrolling;
- (void)wheelScrubberViewWillBeginDragging:(id)dragging;
- (void)wheelScrubberViewWillBeginScrolling:(id)scrolling;
- (void)willBecomeActiveTool;
- (void)willBecomeEnabled;
- (void)willResignActiveTool;
@end

@implementation PUPhotoStyleToolController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1B382DD30();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1B38309F4(appear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3830BF0(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B3830E24(orientation, coordinator);
  swift_unknownObjectRelease();
}

- (void)updateViewConstraints
{
  selfCopy = self;
  sub_1B3830F74();
}

- (void)handlePadValueChangedWithSlider:(id)slider
{
  sliderCopy = slider;
  selfCopy = self;
  sub_1B382E400(sliderCopy);
}

- (void)handleCastIntensitySliderValueChangedTo:(double)to
{
  selfCopy = self;
  sub_1B382EA58(to);
}

- (void)castIntensityInteractionDidBegin
{
  selfCopy = self;
  sub_1B382EEC8();
}

- (void)castIntensityInteractionDidEnd
{
  selfCopy = self;
  sub_1B382EF0C();
}

- (void)handlePadDismissalWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1B38382C4(recognizerCopy);
}

- (void)handleToggleOriginalWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1B38383A0(recognizerCopy);
}

- (_TtC15PhotosUIPrivate26PUPhotoStyleToolController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1B3C9C5E8();
  }

  bundleCopy = bundle;
  sub_1B3838664();
}

- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator
{
  swift_unknownObjectRetain();
  controllerCopy = controller;
  sourceCopy = source;
  calculatorCopy = calculator;
  selfCopy = self;
  sub_1B383890C(asset, controller, source, calculator);
  swift_unknownObjectRelease();
}

- (UIView)centerToolbarView
{
  v2 = sub_1B3832B38();

  return v2;
}

- (void)increaseScrubberValue:(BOOL)value
{
  selfCopy = self;
  sub_1B3838DB8();
}

- (void)decreaseScrubberValue:(BOOL)value
{
  selfCopy = self;
  sub_1B3839358();
}

- (void)willBecomeActiveTool
{
  selfCopy = self;
  sub_1B383943C();
}

- (void)didBecomeActiveTool
{
  selfCopy = self;
  sub_1B3839594();
}

- (void)willResignActiveTool
{
  selfCopy = self;
  sub_1B3839674();
}

- (void)didResignActiveTool
{
  selfCopy = self;
  sub_1B3839784();
}

- (void)willBecomeEnabled
{
  selfCopy = self;
  sub_1B3839820();
}

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  if (adjustments)
  {
    sub_1B3C9C988();
  }

  selfCopy = self;
  sub_1B3839970();
}

- (id)disabledToolAlertTitle
{
  selfCopy = self;
  sub_1B3839F08();

  v3 = sub_1B3C9C5A8();

  return v3;
}

- (void)mediaViewIsReady
{
  selfCopy = self;
  sub_1B3839FD4();
}

- (void)mediaView:(id)view didZoom:(double)zoom
{
  viewCopy = view;
  selfCopy = self;
  sub_1B383A020();
}

- (void)mediaViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1B383A0BC();
}

- (void)previewingOriginalDidStart
{
  selfCopy = self;
  sub_1B383A1B0();
}

- (void)previewingOriginalDidStop
{
  selfCopy = self;
  sub_1B383A254();
}

- (void)wheelScrubberView:(id)view updateCell:(id)cell forItemAtIndex:(int64_t)index
{
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1B383A2E8(view, cell, index);
}

- (void)wheelScrubberViewDidChangeSelectedIndex:(id)index
{
  indexCopy = index;
  selfCopy = self;
  sub_1B3838E74(index);
}

- (void)wheelScrubberView:(id)view didTapOnSelectedCellWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  selfCopy = self;
  sub_1B383AE00(view, x, y, width, height);
}

- (void)wheelScrubberViewWillBeginScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  selfCopy = self;
  sub_1B383AF48();
}

- (void)wheelScrubberViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_1B383B060();
}

- (void)wheelScrubberViewDidEndScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  selfCopy = self;
  sub_1B383B0E4();
}

- (void)wheelScrubberViewDidEndDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_1B383B220();
}

- (int64_t)wheelScrubberViewNumberOfSections:(id)sections
{
  sectionsCopy = sections;
  selfCopy = self;
  v6 = sub_1B383B2A0();

  return v6;
}

- (int64_t)wheelScrubberView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1B383B318(selfCopy, section);

  return v8;
}

- (void)reactivate
{
  selfCopy = self;
  sub_1B383B490();
}

- (void)ppt_selectWithStyle:(id)style
{
  sub_1B3C9C5E8();
  selfCopy = self;
  sub_1B383B560();
}

@end