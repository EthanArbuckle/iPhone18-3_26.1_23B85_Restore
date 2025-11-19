@interface VUWGallery
- (BOOL)mutateAndReturnError:(id *)a3 handler:(id)a4;
- (BOOL)personalizeEmbeddingLayer:(id *)a3 index:(int64_t)a4 observation:(id)a5 type:(int64_t)a6 options:(id)a7 error:(id *)a8;
- (BOOL)personalizeEmbeddingLayer:(id *)a3 index:(int64_t)a4 tag:(id)a5 client:(int64_t)a6 type:(int64_t)a7 options:(id)a8 error:(id *)a9;
- (BOOL)ready;
- (BOOL)resetForType:(int64_t)a3 error:(id *)a4;
- (BOOL)similarEntitiesTo:(id)a3 error:(id *)a4 body:(id)a5;
- (BOOL)updateAndReturnError:(id *)a3 progressHandler:(id)a4;
- (BOOL)updateForType:(int64_t)a3 mode:(int64_t)a4 progressHandler:(id)a5 error:(id *)a6;
- (BOOL)updateForType:(int64_t)a3 withVectorStore:(id)a4 mode:(int64_t)a5 progressHandler:(id)a6 error:(id *)a7;
- (BOOL)updatePlugin:(int64_t)a3 progressHandler:(id)a4 error:(id *)a5;
- (NSSet)unassignedObservations;
- (VUWGallery)init;
- (VUWGallery)initWithClient:(int64_t)a3 path:(id)a4 error:(id *)a5;
- (VUWGallery)initWithPath:(id)a3 error:(id *)a4;
- (id)assetsFor:(int64_t)a3;
- (id)changesSince:(id)a3 error:(id *)a4 body:(id)a5;
- (id)clustersFor:(int64_t)a3;
- (id)entities:(id)a3 error:(id *)a4 body:(id)a5;
- (id)inferredDeviceOwnerWith:(BOOL)a3;
- (id)keyObservationsFor:(id)a3 limit:(int64_t)a4 offset:(int64_t)a5;
- (id)recognize:(id)a3 context:(id)a4 recognitionPreset:(int64_t)a5 error:(id *)a6;
- (id)similarityBetween:(id)a3 and:(id)a4 error:(id *)a5;
- (id)tokenEmbeddingsForObservation:(id)a3 type:(int64_t)a4 error:(id *)a5;
- (id)tokenEmbeddingsForTag:(id)a3 client:(int64_t)a4 type:(int64_t)a5 error:(id *)a6;
- (int64_t)assetCountForType:(int64_t)a3;
- (void)reportMetrics;
@end

@implementation VUWGallery

- (VUWGallery)initWithClient:(int64_t)a3 path:(id)a4 error:(id *)a5
{
  v7 = sub_1D22503FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15[-v12];
  if (a4)
  {
    sub_1D225038C();
    (*(v8 + 32))(v13, v10, v7);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  return sub_1D2174BCC(a3, v13);
}

- (VUWGallery)initWithPath:(id)a3 error:(id *)a4
{
  v4 = sub_1D22503FC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225038C();
  return sub_1D223F880(v6);
}

- (BOOL)ready
{
  v2 = self;
  sub_1D2250D5C();

  return v4;
}

- (NSSet)unassignedObservations
{
  v2 = self;
  VUWGallery.unassignedObservations.getter();

  type metadata accessor for VUWGalleryObservationIdentifier(v3);
  sub_1D224515C();
  v4 = sub_1D2250BCC();

  return v4;
}

- (id)assetsFor:(int64_t)a3
{
  v3 = self;
  sub_1D224003C();

  sub_1D225055C();
  v4 = sub_1D2250AEC();

  return v4;
}

- (BOOL)mutateAndReturnError:(id *)a3 handler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(&self->super.isa + OBJC_IVAR___VUWGallery_gallery);
  v10 = *(v7 + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client);
  v8 = self;
  sub_1D21A3088(&v10, v7, sub_1D2245120, v6);

  return 1;
}

- (BOOL)updateAndReturnError:(id *)a3 progressHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 2) = v5;
  v7 = self;
  sub_1D224022C(sub_1D22451D4, v6);

  return 1;
}

- (BOOL)updateForType:(int64_t)a3 mode:(int64_t)a4 progressHandler:(id)a5 error:(id *)a6
{
  v9 = _Block_copy(a5);
  v10 = swift_allocObject();
  *(v10 + 2) = v9;
  v11 = self;
  sub_1D224046C(a3, a4, sub_1D22451D4, v10);

  return 1;
}

- (BOOL)updateForType:(int64_t)a3 withVectorStore:(id)a4 mode:(int64_t)a5 progressHandler:(id)a6 error:(id *)a7
{
  v11 = sub_1D22503FC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  sub_1D225038C();
  v16 = swift_allocObject();
  *(v16 + 2) = v15;
  v17 = self;
  sub_1D224075C(a3, v14, a5, sub_1D22451D4, v16);
  (*(v12 + 8))(v14, v11);

  return 1;
}

- (BOOL)updatePlugin:(int64_t)a3 progressHandler:(id)a4 error:(id *)a5
{
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = self;
  sub_1D2240B80(a3, sub_1D22450CC, v8);

  return 1;
}

- (BOOL)resetForType:(int64_t)a3 error:(id *)a4
{
  if (!a3)
  {
    v4 = &unk_1F4DAE868;
LABEL_5:
    v5 = self;
    sub_1D21881B8(v4);

    return 1;
  }

  if (a3 == 1)
  {
    v4 = &unk_1F4DAE890;
    goto LABEL_5;
  }

  result = sub_1D22510FC();
  __break(1u);
  return result;
}

- (int64_t)assetCountForType:(int64_t)a3
{
  v4 = self;
  v5 = sub_1D2240E50(a3);

  return v5;
}

- (id)recognize:(id)a3 context:(id)a4 recognitionPreset:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1D2240FF0(v9, a4, a5);

  type metadata accessor for VUWGalleryRecognitionResult(v12);
  v13 = sub_1D2250AEC();

  return v13;
}

- (id)clustersFor:(int64_t)a3
{
  v3 = self;
  sub_1D224152C();

  sub_1D2174E10(0, &qword_1EDC876F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D3098);
  sub_1D2244FFC();
  v4 = sub_1D225088C();

  return v4;
}

- (id)similarityBetween:(id)a3 and:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1D2241700(v7, v8);

  return v10;
}

- (BOOL)similarEntitiesTo:(id)a3 error:(id *)a4 body:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  v8 = a3;
  v9 = self;
  sub_1D224452C(v8, v9, v7);
  _Block_release(v7);

  _Block_release(v7);
  return 1;
}

- (id)keyObservationsFor:(id)a3 limit:(int64_t)a4 offset:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  sub_1D2241980(v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2910);
  v8 = sub_1D2250AEC();

  return v8;
}

- (id)tokenEmbeddingsForTag:(id)a3 client:(int64_t)a4 type:(int64_t)a5 error:(id *)a6
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
  if (a6)
  {
    v13 = sub_1D22502EC();

    v14 = v13;
    *a6 = v13;
  }

  else
  {
  }

  return 0;
}

- (id)tokenEmbeddingsForObservation:(id)a3 type:(int64_t)a4 error:(id *)a5
{
  sub_1D217EE2C();
  v6 = swift_allocError();
  *v7 = 9;
  swift_willThrow();
  if (a5)
  {
    v8 = sub_1D22502EC();

    v9 = v8;
    *a5 = v8;
  }

  else
  {
  }

  return 0;
}

- (BOOL)personalizeEmbeddingLayer:(id *)a3 index:(int64_t)a4 tag:(id)a5 client:(int64_t)a6 type:(int64_t)a7 options:(id)a8 error:(id *)a9
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
  if (a9)
  {
    v15 = sub_1D22502EC();

    v16 = v15;
    *a9 = v15;
  }

  else
  {
  }

  return 0;
}

- (BOOL)personalizeEmbeddingLayer:(id *)a3 index:(int64_t)a4 observation:(id)a5 type:(int64_t)a6 options:(id)a7 error:(id *)a8
{
  sub_1D217EE2C();
  v9 = swift_allocError();
  *v10 = 9;
  swift_willThrow();
  if (a8)
  {
    v11 = sub_1D22502EC();

    v12 = v11;
    *a8 = v11;
  }

  else
  {
  }

  return 0;
}

- (id)inferredDeviceOwnerWith:(BOOL)a3
{
  v4 = self;
  v5 = sub_1D2242014(a3);

  return v5;
}

- (void)reportMetrics
{
  v2 = self;
  sub_1D21919B0();
}

- (id)changesSince:(id)a3 error:(id *)a4 body:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  v8 = a3;
  v9 = self;
  v10 = sub_1D224243C(v8, v9, v7);

  _Block_release(v7);

  return v10;
}

- (id)entities:(id)a3 error:(id *)a4 body:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = v7;
  if (a3)
  {
    type metadata accessor for VUWGalleryEntityIdentifier(v7);
    a3 = sub_1D2250AFC();
  }

  _Block_copy(v8);
  v9 = self;
  v10 = sub_1D2244638(a3, v9, v8);
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