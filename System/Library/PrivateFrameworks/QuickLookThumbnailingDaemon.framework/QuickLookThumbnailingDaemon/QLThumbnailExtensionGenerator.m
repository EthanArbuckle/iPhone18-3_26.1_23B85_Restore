@interface QLThumbnailExtensionGenerator
- (QLThumbnailExtensionGenerator)init;
- (void)generateThumbnailWithThumbnailRequest:(QLTGeneratorThumbnailRequest *)a3 item:(QLThumbnailItem *)a4 flavor:(int)a5 wantsLowQuality:(BOOL)a6 generationData:(NSDictionary *)a7 completionHandler:(id)a8;
@end

@implementation QLThumbnailExtensionGenerator

- (void)generateThumbnailWithThumbnailRequest:(QLTGeneratorThumbnailRequest *)a3 item:(QLThumbnailItem *)a4 flavor:(int)a5 wantsLowQuality:(BOOL)a6 generationData:(NSDictionary *)a7 completionHandler:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 36) = a6;
  *(v20 + 40) = a7;
  *(v20 + 48) = v19;
  *(v20 + 56) = self;
  v21 = sub_26162B9BC();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_261630E10;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_261630E20;
  v23[5] = v22;
  v24 = a3;
  v25 = a4;
  v26 = a7;
  v27 = self;
  sub_261614ED8(0, 0, v18, &unk_261630E30, v23);
}

- (QLThumbnailExtensionGenerator)init
{
  *(&self->super.isa + OBJC_IVAR___QLThumbnailExtensionGenerator_operation) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ThumbnailExtensionGenerator();
  return [(QLThumbnailExtensionGenerator *)&v3 init];
}

@end