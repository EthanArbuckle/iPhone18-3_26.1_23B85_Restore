@interface _UITextViewAnimatedPlaceholderSupport
- (UITextView)textView;
- (_UITextViewAnimatedPlaceholderSupport)init;
- (id)insertLoadingPlaceholderAtLocation:(id)location lines:(double)lines completion:(id)completion;
- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)chunk completionHandler:(id)handler;
- (void)canGenerateTargetedPreviewsWithCompletionHandler:(id)handler;
- (void)insertAttributedTextUsingReplacementEffect:(id)effect completion:(id)completion;
- (void)layoutManagedSubviews;
- (void)removePlaceholder:(id)placeholder;
- (void)replacePlaceholder:(id)placeholder withText:(id)text completion:(id)completion;
- (void)replaceRangeUsingReplacementEffect:(id)effect withAttributedText:(id)text completion:(id)completion;
- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler;
- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler;
@end

@implementation _UITextViewAnimatedPlaceholderSupport

- (UITextView)textView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)insertAttributedTextUsingReplacementEffect:(id)effect completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_188EB2CC4;
  }

  else
  {
    v7 = 0;
  }

  effectCopy = effect;
  selfCopy = self;
  sub_188EC4CD8(effectCopy, v6, v7);
  sub_188A55B8C(v6);
}

- (void)replaceRangeUsingReplacementEffect:(id)effect withAttributedText:(id)text completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_188EB2CC4;
  }

  else
  {
    v9 = 0;
  }

  effectCopy = effect;
  textCopy = text;
  selfCopy = self;
  sub_188EC4F6C(effectCopy, textCopy, v8, v9);
  sub_188A55B8C(v8);
}

- (id)insertLoadingPlaceholderAtLocation:(id)location lines:(double)lines completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_188EB2CC4;
  }

  else
  {
    v9 = 0;
  }

  locationCopy = location;
  selfCopy = self;
  v12 = sub_188EC56BC(locationCopy, v8, v9, lines);
  sub_188A55B8C(v8);

  return v12;
}

- (void)replacePlaceholder:(id)placeholder withText:(id)text completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_188A4AA04;
  }

  else
  {
    v9 = 0;
  }

  placeholderCopy = placeholder;
  textCopy = text;
  selfCopy = self;
  sub_188EC5E98(placeholderCopy, textCopy, v8, v9);
  sub_188A55B8C(v8);
}

- (void)removePlaceholder:(id)placeholder
{
  v5 = OBJC_IVAR____UITextViewAnimatedPlaceholderSupport_activePlaceholders;
  swift_beginAccess();
  v6 = *(self + v5);
  placeholderCopy = placeholder;
  selfCopy = self;
  v9 = sub_18903AB08(placeholderCopy, v6);
  if (v9)
  {
    v10 = v9;
    swift_endAccess();
    v11 = sub_188EC4B00();
    sub_18900294C(v10 + OBJC_IVAR____TtCE5UIKitCSo37_UITextViewAnimatedPlaceholderSupportP33_5BBAEA65D78BEF4D602D567ACAD13A4017ActivePlaceholder_effectID);

    swift_beginAccess();
    sub_1891E9A40(placeholderCopy);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }
}

- (void)layoutManagedSubviews
{
  selfCopy = self;
  textView = [(_UITextViewAnimatedPlaceholderSupport *)selfCopy textView];
  if (textView)
  {
    v3 = textView;
    [(UIView *)textView bounds];
    v5 = v4;
    v7 = v6;
    v8 = sub_188EC4A7C();
    [v8 setFrame_];
  }
}

- (_UITextViewAnimatedPlaceholderSupport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  v11[4] = &unk_18A6509A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_18A6509B0;
  v12[5] = v11;
  selfCopy = self;
  sub_189162B34(0, 0, v7, &unk_18A6509B8, v12);
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
  v13[4] = &unk_18A650980;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18A650988;
  v14[5] = v13;
  chunkCopy = chunk;
  selfCopy = self;
  sub_189162B34(0, 0, v9, &unk_18A650990, v14);
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
  v13[4] = &unk_18A650958;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18A650960;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_189162B34(0, 0, v9, &unk_18A650968, v14);
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
  v15[4] = &unk_18A650928;
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