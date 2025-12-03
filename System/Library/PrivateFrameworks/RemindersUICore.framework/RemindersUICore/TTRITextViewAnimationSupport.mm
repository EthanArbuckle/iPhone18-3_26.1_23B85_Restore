@interface TTRITextViewAnimationSupport
- (_TtC15RemindersUICore28TTRITextViewAnimationSupport)init;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)chunk completionHandler:(id)handler;
- (void)canGenerateTargetedPreviewsWithCompletionHandler:(id)handler;
- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler;
- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler;
@end

@implementation TTRITextViewAnimationSupport

- (_TtC15RemindersUICore28TTRITextViewAnimationSupport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)canGenerateTargetedPreviewsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_21DBFA89C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_21DC39F70;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21DC39F78;
  v12[5] = v11;
  selfCopy = self;
  sub_21DA902E8(0, 0, v7, &unk_21DC39F80, v12);
}

- (void)canGenerateTargetedPreviewForChunk:(_TtC5UIKit21UITextEffectTextChunk *)chunk completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = chunk;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21DBFA89C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21DC39F48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21DC39F50;
  v14[5] = v13;
  chunkCopy = chunk;
  selfCopy = self;
  sub_21DA902E8(0, 0, v9, &unk_21DC39F58, v14);
}

- (void)targetedPreviewFor:(_TtC5UIKit21UITextEffectTextChunk *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21DBFA89C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21DC39F20;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21DC39F28;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_21DA902E8(0, 0, v9, &unk_21DC39F30, v14);
}

- (void)updateTextChunkVisibilityForAnimation:(_TtC5UIKit21UITextEffectTextChunk *)animation visible:(BOOL)visible completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = animation;
  *(v13 + 24) = visible;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_21DBFA89C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21DC39ED0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21DC39EE0;
  v16[5] = v15;
  animationCopy = animation;
  selfCopy = self;
  sub_21DA902E8(0, 0, v11, &unk_21DC39EF0, v16);
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  viewCopy = view;
  selfCopy = self;
  sub_21DA909E0(view);
}

@end