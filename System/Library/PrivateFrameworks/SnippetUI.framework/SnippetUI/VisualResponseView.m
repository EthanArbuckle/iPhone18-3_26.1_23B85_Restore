@interface VisualResponseView
- (BOOL)containsComponentsWithAction;
- (BOOL)isPresentedWithSmartDialogText;
- (BOOL)requestsKeyWindow;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (VRXInteractionDelegate)interactionDelegate;
- (double)snippetWidth;
- (int64_t)backgroundMaterial;
- (void)layoutSubviews;
- (void)postSiriEvent:(int64_t)a3;
- (void)postSiriSpeechEvent;
- (void)setAsrText:(id)a3;
- (void)setBackgroundMaterial:(int64_t)a3;
- (void)setCurrentIdiom:(int64_t)a3;
- (void)setInitialFocusIndex:(int64_t)a3;
- (void)setInteractionDelegate:(id)a3;
- (void)setIsInAmbient:(BOOL)a3 withScaleFactor:(double)a4;
- (void)setIsPresentedWithSmartDialogText:(BOOL)a3;
- (void)setPlayerState:(int64_t)a3 aceId:(id)a4;
- (void)setSnippetWidth:(double)a3;
- (void)updateSharedState:(id)a3;
- (void)updateSharedStateData:(id)a3;
@end

@implementation VisualResponseView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  sub_26A589950();
}

- (void)setInitialFocusIndex:(int64_t)a3
{
  v4 = self;
  VisualResponseView.setInitialFocus(_:)(a3);
}

- (void)updateSharedState:(id)a3
{
  v4 = sub_26A851698();
  v5 = self;
  VisualResponseView.updateSharedState(_:)(v4);
}

- (void)updateSharedStateData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_26A84ABF8();
  v7 = v6;

  VisualResponseView.updateSharedStateData(_:)();
  sub_26A513D40(v5, v7);
}

- (void)setAsrText:(id)a3
{
  v4 = sub_26A8517B8();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  VisualResponseView.setAsrText(_:)(v8);
}

- (void)postSiriSpeechEvent
{
  v2 = self;
  VisualResponseView.postSiriSpeechEvent()();
}

- (void)setIsInAmbient:(BOOL)a3 withScaleFactor:(double)a4
{
  v5 = self;
  VisualResponseView.setIsInAmbient(_:withScaleFactor:)(a4);
}

- (void)setPlayerState:(int64_t)a3 aceId:(id)a4
{
  v6 = sub_26A8517B8();
  v8 = v7;
  v9 = self;
  VisualResponseView.setPlayerState(_:aceId:)(a3, v6, v8);
}

- (void)postSiriEvent:(int64_t)a3
{
  v3 = self;
  VisualResponseView.postSiriEvent(_:)();
}

- (void)setCurrentIdiom:(int64_t)a3
{
  v4 = self;
  VisualResponseView.currentIdiom.setter(a3);
}

- (double)snippetWidth
{
  v2 = self;
  v3 = VisualResponseView.snippetWidth.getter();

  return v3;
}

- (void)setSnippetWidth:(double)a3
{
  v5 = self;
  v4.n128_f64[0] = a3;
  VisualResponseView.snippetWidth.setter(v4);
}

- (VRXInteractionDelegate)interactionDelegate
{
  v2 = VisualResponseView.interactionDelegate.getter();

  return v2;
}

- (void)setInteractionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  VisualResponseView.interactionDelegate.setter();
}

- (int64_t)backgroundMaterial
{
  v2 = self;
  v3 = VisualResponseView.backgroundMaterial.getter();

  return v3;
}

- (void)setBackgroundMaterial:(int64_t)a3
{
  v3 = a3;
  v4 = self;
  VisualResponseView.backgroundMaterial.setter(v3);
}

- (BOOL)containsComponentsWithAction
{
  v2 = self;
  v3 = VisualResponseView.containsComponentsWithAction.getter();

  return v3 & 1;
}

- (BOOL)requestsKeyWindow
{
  v2 = self;
  VisualResponseView.requestsKeyWindow.getter();

  return 0;
}

- (BOOL)isPresentedWithSmartDialogText
{
  v2 = self;
  v3 = VisualResponseView.isPresentedWithSmartDialogText.getter();

  return v3 & 1;
}

- (void)setIsPresentedWithSmartDialogText:(BOOL)a3
{
  v3 = self;
  VisualResponseView.isPresentedWithSmartDialogText.setter();
}

- (NSString)description
{
  v2 = self;
  VisualResponseView.description.getter();

  v3 = sub_26A851788();

  return v3;
}

@end