@interface _STKImageGlyphRecencyObjCFacade
- (_STKImageGlyphRecencyObjCFacade)init;
- (void)didUseCharacter:(NSString *)character completionHandler:(id)handler;
- (void)didUseEmoji:(NSString *)emoji completionHandler:(id)handler;
- (void)didUseSticker:(STKSticker *)sticker completionHandler:(id)handler;
- (void)resetRecentsWithCompletionHandler:(id)handler;
@end

@implementation _STKImageGlyphRecencyObjCFacade

- (_STKImageGlyphRecencyObjCFacade)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency;
  type metadata accessor for ImageGlyphRecency();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v5 + 14) = v6;
  *(&self->super.isa + v4) = v5;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(_STKImageGlyphRecencyObjCFacade *)&v8 init];
}

- (void)didUseEmoji:(NSString *)emoji completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = emoji;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B8A24184();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8A291F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B8A29200;
  v15[5] = v14;
  emojiCopy = emoji;
  selfCopy = self;
  sub_1B8A12970(0, 0, v10, &unk_1B8A29208, v15);
}

- (void)didUseSticker:(STKSticker *)sticker completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = sticker;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B8A24184();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8A291D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B8A291E0;
  v15[5] = v14;
  stickerCopy = sticker;
  selfCopy = self;
  sub_1B8A12970(0, 0, v10, &unk_1B8A291E8, v15);
}

- (void)didUseCharacter:(NSString *)character completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = character;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B8A24184();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B8A291B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B8A291C0;
  v15[5] = v14;
  characterCopy = character;
  selfCopy = self;
  sub_1B8A12970(0, 0, v10, &unk_1B8A291C8, v15);
}

- (void)resetRecentsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B8A24184();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B8A29170;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B8A29180;
  v13[5] = v12;
  selfCopy = self;
  sub_1B8A12970(0, 0, v8, &unk_1B8A29190, v13);
}

@end