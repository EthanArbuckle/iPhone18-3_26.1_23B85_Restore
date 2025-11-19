@interface CRNeuralTextRecognizer
- (BOOL)unloadResourcesWhenNotInUse;
- (CRNeuralRecognizerConfiguration)configuration;
- (CRNeuralTextRecognizer)init;
- (CRNeuralTextRecognizer)initWithConfiguration:(id)a3 owner:(id)a4;
- (id)thresholdsForTextRegion:(id)a3 withLocale:(id)a4;
- (void)_releaseIntermediateResources;
- (void)_unloadResources;
- (void)setConfiguration:(id)a3;
- (void)setOwner:(id)a3;
- (void)setUnloadResourcesWhenNotInUse:(BOOL)a3;
@end

@implementation CRNeuralTextRecognizer

- (BOOL)unloadResourcesWhenNotInUse
{
  v3 = OBJC_IVAR___CRNeuralTextRecognizer_unloadResourcesWhenNotInUse;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUnloadResourcesWhenNotInUse:(BOOL)a3
{
  v5 = OBJC_IVAR___CRNeuralTextRecognizer_unloadResourcesWhenNotInUse;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (CRNeuralRecognizerConfiguration)configuration
{
  v3 = OBJC_IVAR___CRNeuralTextRecognizer_configuration;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setConfiguration:(id)a3
{
  v5 = OBJC_IVAR___CRNeuralTextRecognizer_configuration;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)setOwner:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CRNeuralTextRecognizer_owner);
  *(&self->super.isa + OBJC_IVAR___CRNeuralTextRecognizer_owner) = a3;
  v3 = a3;
}

- (CRNeuralTextRecognizer)initWithConfiguration:(id)a3 owner:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  if (a4)
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

  v12 = a3;
  v13 = sub_1B416BC54(v12, v9);

  return v13;
}

- (id)thresholdsForTextRegion:(id)a3 withLocale:(id)a4
{
  if (a4)
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
  v8 = self;
  v9 = sub_1B416C5C0(v5, v7);
  swift_unknownObjectRelease();

  return v9;
}

- (void)_unloadResources
{
  v2 = self;
  sub_1B416B3E8();
}

- (void)_releaseIntermediateResources
{
  v2 = self;
  sub_1B416B4F0();
}

- (CRNeuralTextRecognizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end