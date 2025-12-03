@interface IntelligenceUI.PromptEntryView
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu;
- (void)_textView:(id)view insertTextSuggestion:(id)suggestion;
- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)chunk completionHandler:(id)handler;
- (void)canGenerateTargetedPreviewsWithCompletionHandler:(id)handler;
- (void)dictationAvailabilityDidChange;
- (void)layoutSubviews;
- (void)promptBackgroundViewDidUpdateConfiguration:(id)configuration;
- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler;
- (void)updatedTargetedPreviewGeometryFor:(_TtC5UIKit21UITextEffectTextChunk *)for previous:(CGRect)previous completionHandler:(id)handler;
@end

@implementation IntelligenceUI.PromptEntryView

- (void)dictationAvailabilityDidChange
{
  selfCopy = self;
  sub_189156E40();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for IntelligenceUI.PromptEntryView(0);
  v7 = v14.receiver;
  eventCopy = event;
  v9 = [(UIView *)&v14 hitTest:eventCopy withEvent:x, y];
  if (v9)
  {
    v10 = v9;
    sub_188A34624(0, &qword_1ED48F680);
    v11 = v7;
    v12 = v10;
    LOBYTE(v10) = sub_18A4A7C88();

    if (v10)
    {

      v12 = *&v11[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)promptBackgroundViewDidUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_18915B594(configurationCopy);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(UIView *)selfCopy bounds];
  [(IntelligenceUI.PromptEntryView *)selfCopy sizeThatFits:v3, v4];
  v6 = v5;

  v7 = -1.0;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_18915AE10();
  sub_1891591C8(v6, v8, v7 & 1, width, height);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  [(IntelligenceUI.PromptEntryView *)self sizeThatFits:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  IntelligenceUI.PromptEntryView.layoutSubviews()();
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = IntelligenceUI.PromptEntryView.textViewShouldBeginEditing(_:)(editingCopy);

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  v4 = self + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 40);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  _s5UIKit14IntelligenceUIO15PromptEntryViewC04textF13DidEndEditingyySo06UITextF0CF_0();
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  IntelligenceUI.PromptEntryView.textViewDidChange(_:)(changeCopy);
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = sub_18A4A7288();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  v14.location = location;
  v14.length = length;
  v15._countAndFlagsBits = v9;
  v15._object = v11;
  LOBYTE(length) = IntelligenceUI.PromptEntryView.textView(_:shouldChangeTextIn:replacementText:)(viewCopy, v14, v15);

  return length & 1;
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  _s5UIKit14IntelligenceUIO15PromptEntryViewC04textF18DidChangeSelectionyySo06UITextF0CF_0();
}

- (id)textView:(id)view menuConfigurationForTextItem:(id)item defaultMenu:(id)menu
{
  viewCopy = view;
  itemCopy = item;
  menuCopy = menu;
  selfCopy = self;
  v12 = _s5UIKit14IntelligenceUIO15PromptEntryViewC04textF0_20menuConfigurationFor11defaultMenuSo010UITextItemlI0CSgSo0mF0C_So0mN0CSo6UIMenuCtF_0(viewCopy, itemCopy);

  return v12;
}

- (void)_textView:(id)view insertTextSuggestion:(id)suggestion
{
  v6 = self + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 88);
    suggestionCopy = suggestion;
    selfCopy = self;
    v8();
    swift_unknownObjectRelease();
  }
}

- (void)canGenerateTargetedPreviewsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_18A4A76C8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_18A66AF88;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_18A66AF90;
  v12[5] = v11;
  selfCopy = self;
  sub_189162B34(0, 0, v7, &unk_18A66AF98, v12);
}

- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)chunk completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = chunk;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18A4A76C8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18A66AF68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18A66AF70;
  v14[5] = v13;
  chunkCopy = chunk;
  selfCopy = self;
  sub_189162B34(0, 0, v9, &unk_18A66AF78, v14);
}

- (void)updatedTargetedPreviewGeometryFor:(_TtC5UIKit21UITextEffectTextChunk *)for previous:(CGRect)previous completionHandler:(id)handler
{
  height = previous.size.height;
  width = previous.size.width;
  y = previous.origin.y;
  x = previous.origin.x;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 2) = for;
  v16[3] = x;
  v16[4] = y;
  v16[5] = width;
  v16[6] = height;
  *(v16 + 7) = v15;
  *(v16 + 8) = self;
  v17 = sub_18A4A76C8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_18A66AF48;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_18A66AF50;
  v19[5] = v18;
  forCopy = for;
  selfCopy = self;
  sub_189162B34(0, 0, v14, &unk_18A66AF58, v19);
}

- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18A4A76C8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18A66AF28;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18A66AF30;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_189162B34(0, 0, v9, &unk_18A66AF38, v14);
}

- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = animation;
  *(v13 + 24) = visible;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_18A4A76C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18A66AEE0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_18A650930;
  v16[5] = v15;
  animationCopy = animation;
  selfCopy = self;
  sub_189162B34(0, 0, v11, &unk_18A65EFA0, v16);
}

@end