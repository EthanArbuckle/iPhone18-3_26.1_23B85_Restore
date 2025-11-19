@interface IntelligenceUI.PromptEntryView
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5;
- (void)_textView:(id)a3 insertTextSuggestion:(id)a4;
- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4;
- (void)canGenerateTargetedPreviewsWithCompletionHandler:(id)a3;
- (void)dictationAvailabilityDidChange;
- (void)layoutSubviews;
- (void)promptBackgroundViewDidUpdateConfiguration:(id)a3;
- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)a3 visible:(BOOL)a4 completionHandler:(id)a5;
- (void)updatedTargetedPreviewGeometryFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 previous:(CGRect)a4 completionHandler:(id)a5;
@end

@implementation IntelligenceUI.PromptEntryView

- (void)dictationAvailabilityDidChange
{
  v2 = self;
  sub_189156E40();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for IntelligenceUI.PromptEntryView(0);
  v7 = v14.receiver;
  v8 = a4;
  v9 = [(UIView *)&v14 hitTest:v8 withEvent:x, y];
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

- (void)promptBackgroundViewDidUpdateConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18915B594(v4);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(UIView *)v2 bounds];
  [(IntelligenceUI.PromptEntryView *)v2 sizeThatFits:v3, v4];
  v6 = v5;

  v7 = -1.0;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  [(IntelligenceUI.PromptEntryView *)self sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  IntelligenceUI.PromptEntryView.layoutSubviews()();
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = IntelligenceUI.PromptEntryView.textViewShouldBeginEditing(_:)(v4);

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = self + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 40);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  _s5UIKit14IntelligenceUIO15PromptEntryViewC04textF13DidEndEditingyySo06UITextF0CF_0();
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  IntelligenceUI.PromptEntryView.textViewDidChange(_:)(v4);
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_18A4A7288();
  v11 = v10;
  v12 = a3;
  v13 = self;
  v14.location = location;
  v14.length = length;
  v15._countAndFlagsBits = v9;
  v15._object = v11;
  LOBYTE(length) = IntelligenceUI.PromptEntryView.textView(_:shouldChangeTextIn:replacementText:)(v12, v14, v15);

  return length & 1;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  _s5UIKit14IntelligenceUIO15PromptEntryViewC04textF18DidChangeSelectionyySo06UITextF0CF_0();
}

- (id)textView:(id)a3 menuConfigurationForTextItem:(id)a4 defaultMenu:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = _s5UIKit14IntelligenceUIO15PromptEntryViewC04textF0_20menuConfigurationFor11defaultMenuSo010UITextItemlI0CSgSo0mF0C_So0mN0CSo6UIMenuCtF_0(v8, v9);

  return v12;
}

- (void)_textView:(id)a3 insertTextSuggestion:(id)a4
{
  v6 = self + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 88);
    v9 = a4;
    v10 = self;
    v8();
    swift_unknownObjectRelease();
  }
}

- (void)canGenerateTargetedPreviewsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  sub_189162B34(0, 0, v7, &unk_18A66AF98, v12);
}

- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_189162B34(0, 0, v9, &unk_18A66AF78, v14);
}

- (void)updatedTargetedPreviewGeometryFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 previous:(CGRect)a4 completionHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(a5);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
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
  v20 = a3;
  v21 = self;
  sub_189162B34(0, 0, v14, &unk_18A66AF58, v19);
}

- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_189162B34(0, 0, v9, &unk_18A66AF38, v14);
}

- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)a3 visible:(BOOL)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
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
  v17 = a3;
  v18 = self;
  sub_189162B34(0, 0, v11, &unk_18A65EFA0, v16);
}

@end