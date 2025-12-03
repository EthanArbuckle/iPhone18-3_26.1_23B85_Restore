@interface CRNeuralTextRecognizer
- (BOOL)unloadResourcesWhenNotInUse;
- (CRNeuralRecognizerConfiguration)configuration;
- (CRNeuralTextRecognizer)init;
- (CRNeuralTextRecognizer)initWithConfiguration:(id)configuration owner:(id)owner;
- (id)thresholdsForTextRegion:(id)region withLocale:(id)locale;
- (void)_releaseIntermediateResources;
- (void)_unloadResources;
- (void)setConfiguration:(id)configuration;
- (void)setOwner:(id)owner;
- (void)setUnloadResourcesWhenNotInUse:(BOOL)use;
@end

@implementation CRNeuralTextRecognizer

- (BOOL)unloadResourcesWhenNotInUse
{
  v3 = OBJC_IVAR___CRNeuralTextRecognizer_unloadResourcesWhenNotInUse;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUnloadResourcesWhenNotInUse:(BOOL)use
{
  v5 = OBJC_IVAR___CRNeuralTextRecognizer_unloadResourcesWhenNotInUse;
  swift_beginAccess();
  *(&self->super.isa + v5) = use;
}

- (CRNeuralRecognizerConfiguration)configuration
{
  v3 = OBJC_IVAR___CRNeuralTextRecognizer_configuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setConfiguration:(id)configuration
{
  v5 = OBJC_IVAR___CRNeuralTextRecognizer_configuration;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = configuration;
  configurationCopy = configuration;
}

- (void)setOwner:(id)owner
{
  v4 = *(&self->super.isa + OBJC_IVAR___CRNeuralTextRecognizer_owner);
  *(&self->super.isa + OBJC_IVAR___CRNeuralTextRecognizer_owner) = owner;
  ownerCopy = owner;
}

- (CRNeuralTextRecognizer)initWithConfiguration:(id)configuration owner:(id)owner
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  if (owner)
  {
    sub_1B429F6B8();
    v10 = sub_1B429F6D8();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1B429F6D8();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  configurationCopy = configuration;
  v13 = sub_1B416BC54(configurationCopy, v9);

  return v13;
}

- (id)thresholdsForTextRegion:(id)region withLocale:(id)locale
{
  if (locale)
  {
    v5 = sub_1B429FB98();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  v9 = sub_1B416C5C0(v5, v7);
  swift_unknownObjectRelease();

  return v9;
}

- (void)_unloadResources
{
  selfCopy = self;
  sub_1B416B3E8();
}

- (void)_releaseIntermediateResources
{
  selfCopy = self;
  sub_1B416B4F0();
}

- (CRNeuralTextRecognizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end