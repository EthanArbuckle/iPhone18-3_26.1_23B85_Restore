@interface VUWGalleryRecognitionResult
- (VUWGalleryRecognitionResult)init;
- (VUWGalleryRecognitionResult)initWithEntityIdentifier:(id)identifier tag:(id)tag confidence:(id)confidence;
- (void)setConfidence:(id)confidence;
- (void)setEntityIdentifier:(id)identifier;
@end

@implementation VUWGalleryRecognitionResult

- (void)setEntityIdentifier:(id)identifier
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWGalleryRecognitionResult_entityIdentifier);
  *(&self->super.isa + OBJC_IVAR___VUWGalleryRecognitionResult_entityIdentifier) = identifier;
  identifierCopy = identifier;
}

- (void)setConfidence:(id)confidence
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWGalleryRecognitionResult_confidence);
  *(&self->super.isa + OBJC_IVAR___VUWGalleryRecognitionResult_confidence) = confidence;
  confidenceCopy = confidence;
}

- (VUWGalleryRecognitionResult)initWithEntityIdentifier:(id)identifier tag:(id)tag confidence:(id)confidence
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  if (tag)
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

  identifierCopy = identifier;
  v14 = sub_1D2244C64(identifierCopy, v10, confidence);

  return v14;
}

- (VUWGalleryRecognitionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end