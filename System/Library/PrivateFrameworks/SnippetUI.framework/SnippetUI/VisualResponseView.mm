@interface VisualResponseView
- (BOOL)containsComponentsWithAction;
- (BOOL)isPresentedWithSmartDialogText;
- (BOOL)requestsKeyWindow;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (VRXInteractionDelegate)interactionDelegate;
- (double)snippetWidth;
- (int64_t)backgroundMaterial;
- (void)layoutSubviews;
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

@implementation VisualResponseView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_26A58987C(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_26A589950();
}

- (void)setInitialFocusIndex:(int64_t)index
{
  selfCopy = self;
  VisualResponseView.setInitialFocus(_:)(index);
}

- (void)updateSharedState:(id)state
{
  v4 = sub_26A851698();
  selfCopy = self;
  VisualResponseView.updateSharedState(_:)(v4);
}

- (void)updateSharedStateData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = sub_26A84ABF8();
  v7 = v6;

  VisualResponseView.updateSharedStateData(_:)();
  sub_26A513D40(v5, v7);
}

- (void)setAsrText:(id)text
{
  v4 = sub_26A8517B8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  VisualResponseView.setAsrText(_:)(v8);
}

- (void)postSiriSpeechEvent
{
  selfCopy = self;
  VisualResponseView.postSiriSpeechEvent()();
}

- (void)setIsInAmbient:(BOOL)ambient withScaleFactor:(double)factor
{
  selfCopy = self;
  VisualResponseView.setIsInAmbient(_:withScaleFactor:)(factor);
}

- (void)setPlayerState:(int64_t)state aceId:(id)id
{
  v6 = sub_26A8517B8();
  v8 = v7;
  selfCopy = self;
  VisualResponseView.setPlayerState(_:aceId:)(state, v6, v8);
}

- (void)postSiriEvent:(int64_t)event
{
  selfCopy = self;
  VisualResponseView.postSiriEvent(_:)();
}

- (void)setCurrentIdiom:(int64_t)idiom
{
  selfCopy = self;
  VisualResponseView.currentIdiom.setter(idiom);
}

- (double)snippetWidth
{
  selfCopy = self;
  v3 = VisualResponseView.snippetWidth.getter();

  return v3;
}

- (void)setSnippetWidth:(double)width
{
  selfCopy = self;
  v4.n128_f64[0] = width;
  VisualResponseView.snippetWidth.setter(v4);
}

- (VRXInteractionDelegate)interactionDelegate
{
  v2 = VisualResponseView.interactionDelegate.getter();

  return v2;
}

- (void)setInteractionDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  VisualResponseView.interactionDelegate.setter();
}

- (int64_t)backgroundMaterial
{
  selfCopy = self;
  v3 = VisualResponseView.backgroundMaterial.getter();

  return v3;
}

- (void)setBackgroundMaterial:(int64_t)material
{
  materialCopy = material;
  selfCopy = self;
  VisualResponseView.backgroundMaterial.setter(materialCopy);
}

- (BOOL)containsComponentsWithAction
{
  selfCopy = self;
  v3 = VisualResponseView.containsComponentsWithAction.getter();

  return v3 & 1;
}

- (BOOL)requestsKeyWindow
{
  selfCopy = self;
  VisualResponseView.requestsKeyWindow.getter();

  return 0;
}

- (BOOL)isPresentedWithSmartDialogText
{
  selfCopy = self;
  v3 = VisualResponseView.isPresentedWithSmartDialogText.getter();

  return v3 & 1;
}

- (void)setIsPresentedWithSmartDialogText:(BOOL)text
{
  selfCopy = self;
  VisualResponseView.isPresentedWithSmartDialogText.setter();
}

- (NSString)description
{
  selfCopy = self;
  VisualResponseView.description.getter();

  v3 = sub_26A851788();

  return v3;
}

@end