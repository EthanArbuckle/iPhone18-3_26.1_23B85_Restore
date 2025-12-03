@interface VisualResponseViewController
- (BOOL)containsComponentsWithAction;
- (BOOL)isPresentedWithSmartDialogText;
- (BOOL)requestsKeyWindow;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)aceCommands;
- (NSString)description;
- (VRXInteractionDelegate)interactionDelegate;
- (_TtC9SnippetUI28VisualResponseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)snippetWidth;
- (int64_t)backgroundMaterial;
- (void)postSiriEvent:(int64_t)event;
- (void)postSiriSpeechEvent;
- (void)setAsrText:(id)text;
- (void)setBackgroundMaterial:(int64_t)material;
- (void)setCurrentIdiom:(int64_t)idiom;
- (void)setInitialFocusIndex:(int64_t)index;
- (void)setInteractionDelegate:(id)delegate;
- (void)setIsInAmbient:(BOOL)ambient withScaleFactor:(double)factor;
- (void)setIsPresentedWithSmartDialogText:(BOOL)text;
- (void)setPlayerState:(int64_t)state aceId:(id)id;
- (void)setSnippetWidth:(double)width;
- (void)updateSharedState:(id)state;
- (void)updateSharedStateData:(id)data;
@end

@implementation VisualResponseViewController

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_26A6F18F8(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC9SnippetUI28VisualResponseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_26A8517B8();
  }

  bundleCopy = bundle;
  VisualResponseViewController.init(nibName:bundle:)();
}

- (void)setInitialFocusIndex:(int64_t)index
{
  selfCopy = self;
  VisualResponseViewController.setInitialFocus(_:)(index);
}

- (void)updateSharedState:(id)state
{
  v4 = sub_26A851698();
  selfCopy = self;
  VisualResponseViewController.updateSharedState(_:)(v4);
}

- (void)updateSharedStateData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = sub_26A84ABF8();
  v7 = v6;

  VisualResponseViewController.updateSharedStateData(_:)();
  sub_26A513D40(v5, v7);
}

- (void)setAsrText:(id)text
{
  v4 = sub_26A8517B8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  VisualResponseViewController.setAsrText(_:)(v8);
}

- (void)postSiriSpeechEvent
{
  selfCopy = self;
  VisualResponseViewController.postSiriSpeechEvent()();
}

- (void)setIsInAmbient:(BOOL)ambient withScaleFactor:(double)factor
{
  selfCopy = self;
  VisualResponseViewController.setIsInAmbient(_:withScaleFactor:)(factor);
}

- (void)setPlayerState:(int64_t)state aceId:(id)id
{
  v6 = sub_26A8517B8();
  v8 = v7;
  selfCopy = self;
  VisualResponseViewController.setPlayerState(_:aceId:)(state, v6, v8);
}

- (void)postSiriEvent:(int64_t)event
{
  selfCopy = self;
  VisualResponseViewController.postSiriEvent(_:)();
}

- (void)setCurrentIdiom:(int64_t)idiom
{
  selfCopy = self;
  VisualResponseViewController.currentIdiom.setter(idiom);
}

- (double)snippetWidth
{
  selfCopy = self;
  v3 = VisualResponseViewController.snippetWidth.getter();

  return v3;
}

- (void)setSnippetWidth:(double)width
{
  selfCopy = self;
  v4.n128_f64[0] = width;
  VisualResponseViewController.snippetWidth.setter(v4);
}

- (VRXInteractionDelegate)interactionDelegate
{
  v2 = VisualResponseViewController.interactionDelegate.getter();

  return v2;
}

- (void)setInteractionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  VisualResponseViewController.interactionDelegate.setter();
}

- (int64_t)backgroundMaterial
{
  selfCopy = self;
  v3 = VisualResponseViewController.backgroundMaterial.getter();

  return v3;
}

- (void)setBackgroundMaterial:(int64_t)material
{
  materialCopy = material;
  selfCopy = self;
  VisualResponseViewController.backgroundMaterial.setter(materialCopy);
}

- (NSArray)aceCommands
{
  selfCopy = self;
  VisualResponseViewController.aceCommands.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3630);
  v3 = sub_26A851A88();

  return v3;
}

- (BOOL)containsComponentsWithAction
{
  selfCopy = self;
  v3 = VisualResponseViewController.containsComponentsWithAction.getter();

  return v3 & 1;
}

- (BOOL)requestsKeyWindow
{
  selfCopy = self;
  VisualResponseViewController.requestsKeyWindow.getter();

  return 0;
}

- (BOOL)isPresentedWithSmartDialogText
{
  selfCopy = self;
  v3 = VisualResponseViewController.isPresentedWithSmartDialogText.getter();

  return v3 & 1;
}

- (void)setIsPresentedWithSmartDialogText:(BOOL)text
{
  selfCopy = self;
  VisualResponseViewController.isPresentedWithSmartDialogText.setter();
}

- (NSString)description
{
  selfCopy = self;
  VisualResponseViewController.description.getter();

  v3 = sub_26A851788();

  return v3;
}

@end