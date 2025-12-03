@interface VUWGallery
- (BOOL)mutateAndReturnError:(id *)error handler:(id)handler;
- (BOOL)personalizeEmbeddingLayer:(id *)layer index:(int64_t)index observation:(id)observation type:(int64_t)type options:(id)options error:(id *)error;
- (BOOL)personalizeEmbeddingLayer:(id *)layer index:(int64_t)index tag:(id)tag client:(int64_t)client type:(int64_t)type options:(id)options error:(id *)error;
- (BOOL)ready;
- (BOOL)resetForType:(int64_t)type error:(id *)error;
- (BOOL)similarEntitiesTo:(id)to error:(id *)error body:(id)body;
- (BOOL)updateAndReturnError:(id *)error progressHandler:(id)handler;
- (BOOL)updateForType:(int64_t)type mode:(int64_t)mode progressHandler:(id)handler error:(id *)error;
- (BOOL)updateForType:(int64_t)type withVectorStore:(id)store mode:(int64_t)mode progressHandler:(id)handler error:(id *)error;
- (BOOL)updatePlugin:(int64_t)plugin progressHandler:(id)handler error:(id *)error;
- (NSSet)unassignedObservations;
- (VUWGallery)init;
- (VUWGallery)initWithClient:(int64_t)client path:(id)path error:(id *)error;
- (VUWGallery)initWithPath:(id)path error:(id *)error;
- (id)assetsFor:(int64_t)for;
- (id)changesSince:(id)since error:(id *)error body:(id)body;
- (id)clustersFor:(int64_t)for;
- (id)entities:(id)entities error:(id *)error body:(id)body;
- (id)inferredDeviceOwnerWith:(BOOL)with;
- (id)keyObservationsFor:(id)for limit:(int64_t)limit offset:(int64_t)offset;
- (id)recognize:(id)recognize context:(id)context recognitionPreset:(int64_t)preset error:(id *)error;
- (id)similarityBetween:(id)between and:(id)and error:(id *)error;
- (id)tokenEmbeddingsForObservation:(id)observation type:(int64_t)type error:(id *)error;
- (id)tokenEmbeddingsForTag:(id)tag client:(int64_t)client type:(int64_t)type error:(id *)error;
- (int64_t)assetCountForType:(int64_t)type;
- (void)reportMetrics;
@end

@implementation VUWGallery

- (VUWGallery)initWithClient:(int64_t)client path:(id)path error:(id *)error
{
  v7 = sub_1D22503FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15[-v12];
  if (path)
  {
    sub_1D225038C();
    (*(v8 + 32))(v13, v10, v7);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  return sub_1D2174BCC(client, v13);
}

- (VUWGallery)initWithPath:(id)path error:(id *)error
{
  v4 = sub_1D22503FC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225038C();
  return sub_1D223F880(v6);
}

- (BOOL)ready
{
  selfCopy = self;
  sub_1D2250D5C();

  return v4;
}

- (NSSet)unassignedObservations
{
  selfCopy = self;
  VUWGallery.unassignedObservations.getter();

  type metadata accessor for VUWGalleryObservationIdentifier(v3);
  sub_1D224515C();
  v4 = sub_1D2250BCC();

  return v4;
}

- (id)assetsFor:(int64_t)for
{
  selfCopy = self;
  sub_1D224003C();

  sub_1D225055C();
  v4 = sub_1D2250AEC();

  return v4;
}

- (BOOL)mutateAndReturnError:(id *)error handler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(&self->super.isa + OBJC_IVAR___VUWGallery_gallery);
  v10 = *(v7 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client);
  selfCopy = self;
  sub_1D21A3088(&v10, v7, sub_1D2245120, v6);

  return 1;
}

- (BOOL)updateAndReturnError:(id *)error progressHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 2) = v5;
  selfCopy = self;
  sub_1D224022C(sub_1D22451D4, v6);

  return 1;
}

- (BOOL)updateForType:(int64_t)type mode:(int64_t)mode progressHandler:(id)handler error:(id *)error
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 2) = v9;
  selfCopy = self;
  sub_1D224046C(type, mode, sub_1D22451D4, v10);

  return 1;
}

- (BOOL)updateForType:(int64_t)type withVectorStore:(id)store mode:(int64_t)mode progressHandler:(id)handler error:(id *)error
{
  v11 = sub_1D22503FC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_1D225038C();
  v16 = swift_allocObject();
  *(v16 + 2) = v15;
  selfCopy = self;
  sub_1D224075C(type, v14, mode, sub_1D22451D4, v16);
  (*(v12 + 8))(v14, v11);

  return 1;
}

- (BOOL)updatePlugin:(int64_t)plugin progressHandler:(id)handler error:(id *)error
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  selfCopy = self;
  sub_1D2240B80(plugin, sub_1D22450CC, v8);

  return 1;
}

- (BOOL)resetForType:(int64_t)type error:(id *)error
{
  if (!type)
  {
    v4 = &unk_1F4DAE868;
LABEL_5:
    selfCopy = self;
    sub_1D21881B8(v4);

    return 1;
  }

  if (type == 1)
  {
    v4 = &unk_1F4DAE890;
    goto LABEL_5;
  }

  result = sub_1D22510FC();
  __break(1u);
  return result;
}

- (int64_t)assetCountForType:(int64_t)type
{
  selfCopy = self;
  v5 = sub_1D2240E50(type);

  return v5;
}

- (id)recognize:(id)recognize context:(id)context recognitionPreset:(int64_t)preset error:(id *)error
{
  recognizeCopy = recognize;
  contextCopy = context;
  selfCopy = self;
  sub_1D2240FF0(recognizeCopy, context, preset);

  type metadata accessor for VUWGalleryRecognitionResult(v12);
  v13 = sub_1D2250AEC();

  return v13;
}

- (id)clustersFor:(int64_t)for
{
  selfCopy = self;
  sub_1D224152C();

  sub_1D2174E10(0, &qword_1EDC876F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D3098);
  sub_1D2244FFC();
  v4 = sub_1D225088C();

  return v4;
}

- (id)similarityBetween:(id)between and:(id)and error:(id *)error
{
  betweenCopy = between;
  andCopy = and;
  selfCopy = self;
  v10 = sub_1D2241700(betweenCopy, andCopy);

  return v10;
}

- (BOOL)similarEntitiesTo:(id)to error:(id *)error body:(id)body
{
  v7 = _Block_copy(body);
  _Block_copy(v7);
  toCopy = to;
  selfCopy = self;
  sub_1D224452C(toCopy, selfCopy, v7);
  _Block_release(v7);

  _Block_release(v7);
  return 1;
}

- (id)keyObservationsFor:(id)for limit:(int64_t)limit offset:(int64_t)offset
{
  forCopy = for;
  selfCopy = self;
  sub_1D2241980(forCopy);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2910);
  v8 = sub_1D2250AEC();

  return v8;
}

- (id)tokenEmbeddingsForTag:(id)tag client:(int64_t)client type:(int64_t)type error:(id *)error
{
  v7 = sub_1D225055C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225054C();
  sub_1D217EE2C();
  v11 = swift_allocError();
  *v12 = 9;
  swift_willThrow();
  (*(v8 + 8))(v10, v7);
  if (error)
  {
    v13 = sub_1D22502EC();

    v14 = v13;
    *error = v13;
  }

  else
  {
  }

  return 0;
}

- (id)tokenEmbeddingsForObservation:(id)observation type:(int64_t)type error:(id *)error
{
  sub_1D217EE2C();
  v6 = swift_allocError();
  *v7 = 9;
  swift_willThrow();
  if (error)
  {
    v8 = sub_1D22502EC();

    v9 = v8;
    *error = v8;
  }

  else
  {
  }

  return 0;
}

- (BOOL)personalizeEmbeddingLayer:(id *)layer index:(int64_t)index tag:(id)tag client:(int64_t)client type:(int64_t)type options:(id)options error:(id *)error
{
  v9 = sub_1D225055C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225054C();
  sub_1D217EE2C();
  v13 = swift_allocError();
  *v14 = 9;
  swift_willThrow();
  (*(v10 + 8))(v12, v9);
  if (error)
  {
    v15 = sub_1D22502EC();

    v16 = v15;
    *error = v15;
  }

  else
  {
  }

  return 0;
}

- (BOOL)personalizeEmbeddingLayer:(id *)layer index:(int64_t)index observation:(id)observation type:(int64_t)type options:(id)options error:(id *)error
{
  sub_1D217EE2C();
  v9 = swift_allocError();
  *v10 = 9;
  swift_willThrow();
  if (error)
  {
    v11 = sub_1D22502EC();

    v12 = v11;
    *error = v11;
  }

  else
  {
  }

  return 0;
}

- (id)inferredDeviceOwnerWith:(BOOL)with
{
  selfCopy = self;
  v5 = sub_1D2242014(with);

  return v5;
}

- (void)reportMetrics
{
  selfCopy = self;
  sub_1D21919B0();
}

- (id)changesSince:(id)since error:(id *)error body:(id)body
{
  v7 = _Block_copy(body);
  _Block_copy(v7);
  sinceCopy = since;
  selfCopy = self;
  v10 = sub_1D224243C(sinceCopy, selfCopy, v7);

  _Block_release(v7);

  return v10;
}

- (id)entities:(id)entities error:(id *)error body:(id)body
{
  v7 = _Block_copy(body);
  v8 = v7;
  if (entities)
  {
    type metadata accessor for VUWGalleryEntityIdentifier(v7);
    entities = sub_1D2250AFC();
  }

  _Block_copy(v8);
  selfCopy = self;
  v10 = sub_1D2244638(entities, selfCopy, v8);
  _Block_release(v8);

  _Block_release(v8);

  return v10;
}

- (VUWGallery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end