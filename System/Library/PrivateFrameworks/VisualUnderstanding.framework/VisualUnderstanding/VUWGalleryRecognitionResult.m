@interface VUWGalleryRecognitionResult
- (VUWGalleryRecognitionResult)init;
- (VUWGalleryRecognitionResult)initWithEntityIdentifier:(id)a3 tag:(id)a4 confidence:(id)a5;
- (void)setConfidence:(id)a3;
- (void)setEntityIdentifier:(id)a3;
@end

@implementation VUWGalleryRecognitionResult

- (void)setEntityIdentifier:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWGalleryRecognitionResult_entityIdentifier);
  *(&self->super.isa + OBJC_IVAR___VUWGalleryRecognitionResult_entityIdentifier) = a3;
  v3 = a3;
}

- (void)setConfidence:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWGalleryRecognitionResult_confidence);
  *(&self->super.isa + OBJC_IVAR___VUWGalleryRecognitionResult_confidence) = a3;
  v3 = a3;
}

- (VUWGalleryRecognitionResult)initWithEntityIdentifier:(id)a3 tag:(id)a4 confidence:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    sub_1D225054C();
    v11 = sub_1D225055C();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1D225055C();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = a3;
  v14 = sub_1D2244C64(v13, v10, a5);

  return v14;
}

- (VUWGalleryRecognitionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end