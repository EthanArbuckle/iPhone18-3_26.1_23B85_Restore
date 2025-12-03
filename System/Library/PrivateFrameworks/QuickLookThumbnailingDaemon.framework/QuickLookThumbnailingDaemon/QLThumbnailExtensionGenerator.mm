@interface QLThumbnailExtensionGenerator
- (QLThumbnailExtensionGenerator)init;
- (void)generateThumbnailWithThumbnailRequest:(QLTGeneratorThumbnailRequest *)request item:(QLThumbnailItem *)item flavor:(int)flavor wantsLowQuality:(BOOL)quality generationData:(NSDictionary *)data completionHandler:(id)handler;
@end

@implementation QLThumbnailExtensionGenerator

- (void)generateThumbnailWithThumbnailRequest:(QLTGeneratorThumbnailRequest *)request item:(QLThumbnailItem *)item flavor:(int)flavor wantsLowQuality:(BOOL)quality generationData:(NSDictionary *)data completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = request;
  *(v20 + 24) = item;
  *(v20 + 32) = flavor;
  *(v20 + 36) = quality;
  *(v20 + 40) = data;
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
  requestCopy = request;
  itemCopy = item;
  dataCopy = data;
  selfCopy = self;
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