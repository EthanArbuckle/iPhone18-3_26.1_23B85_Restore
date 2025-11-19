uint64_t sub_1A43F23F4()
{
  v0 = PXGLayout.referenceBounds.getter();
  Sprite.init(rect:mediaKind:)(0, &v14, v0, v1, v2, v3);
  SpriteConfiguration.alpha(_:)(&type metadata for Sprite, &protocol witness table for Sprite, 0.0);

  v4 = static SpriteBuilder.buildExpression(_:)(v15);
  __swift_destroy_boxed_opaque_existential_0(v15);
  sub_1A4394B00(0, &qword_1EB138D80, sub_1A42A59CC, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F8E10;
  *(v5 + 32) = v4;
  v12 = static SpriteBuilder.buildBlock(_:)(v5, v6, v7, v8, v9, v10, v11);

  return v12;
}

double sub_1A43F2504()
{
  v1 = *(v0 + 16);
  [*(v0 + 24) referenceSize];
  return v1 * v2;
}

uint64_t sub_1A43F2554(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return sub_1A524B284();
}

double sub_1A43F25A0()
{
  v0 = shouldUseNewCollectionsLayout()();
  result = 12.0;
  if (v0)
  {
    return 0.0;
  }

  return result;
}

double sub_1A43F25D8@<D0>(_OWORD *a1@<X8>)
{
  result = 10.0;
  *a1 = xmmword_1A5338260;
  a1[1] = xmmword_1A5338270;
  return result;
}

double sub_1A43F25F0()
{
  sub_1A43F2630();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A43F2630()
{
  result = qword_1EB187210[0];
  if (!qword_1EB187210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB187210);
  }

  return result;
}

uint64_t GenerativeStoryTTRVisualDiagnosticsProvider.__allocating_init(memory:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryTTRVisualDiagnosticsProvider_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v2 + v3, v4, v5);
  *(v2 + OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryTTRVisualDiagnosticsProvider_memory) = a1;
  return v2;
}

uint64_t GenerativeStoryTTRVisualDiagnosticsProvider.init(memory:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryTTRVisualDiagnosticsProvider_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v1 + v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryTTRVisualDiagnosticsProvider_memory) = a1;
  return v1;
}

void sub_1A43F2800(void *a1)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126860);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 uploadVisualDiagnostics];

  if (v7)
  {
    v8 = sub_1A524C634();
    v9 = [a1 beginCollectionOperationWithName:v8 timeout:100.0];

    v10 = sub_1A524CCB4();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v1;
    v11[5] = a1;
    v11[6] = v9;

    swift_unknownObjectRetain();
    sub_1A3D4D930(0, 0, v5, &unk_1A5338328, v11);
  }

  else
  {
    v16 = sub_1A5246F04();
    v12 = sub_1A524D224();
    if (os_log_type_enabled(v16, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A3C1C000, v16, v12, "uploadVisualDiagnostics is false. Skip collecting visual diagnostics", v13, 2u);
      MEMORY[0x1A590EEC0](v13, -1, -1);
    }

    v14 = v16;
  }
}

uint64_t sub_1A43F2A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1A5240E64();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43F2B18, 0, 0);
}

id sub_1A43F2B18()
{
  v1 = v0[2];
  sub_1A5245264();
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryTTRVisualDiagnosticsProvider_memory);
  v3 = sub_1A5245234();
  v0[8] = v3;
  v4 = v3;
  sub_1A5245224();
  result = [v2 photoLibrary];
  v0[9] = result;
  if (result)
  {
    v6 = result;
    type metadata accessor for GenerativeStoryVisualDiagnosticsProvider();
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_1A43F2DB8;
    v8 = v0[7];

    return sub_1A3F6BDB0(v4, v8, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A43F2DB8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {

    v4 = sub_1A43F2FE4;
  }

  else
  {

    v4 = sub_1A43F2F14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A43F2F14()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = sub_1A5240D44();
  [v4 addAttachment_];

  (*(v2 + 8))(v1, v3);
  [*(v0 + 32) endWithSuccess:1 error:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A43F2FE4()
{
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v1 = *(v0 + 88);
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D254();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "Error generating visual diagnostics. %@", v5, 0xCu);
    sub_1A3FBB0C4(v6, sub_1A3D3F118);
    MEMORY[0x1A590EEC0](v6, -1, -1);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  else
  {
  }

  [*(v0 + 32) endWithSuccess:1 error:0];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t GenerativeStoryTTRVisualDiagnosticsProvider.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryTTRVisualDiagnosticsProvider_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GenerativeStoryTTRVisualDiagnosticsProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore43GenerativeStoryTTRVisualDiagnosticsProvider_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A43F3300()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A43F2A54(v5, v6, v7, v2, v3, v4);
}

uint64_t type metadata accessor for GenerativeStoryTTRVisualDiagnosticsProvider()
{
  result = qword_1EB1BF330;
  if (!qword_1EB1BF330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43F33FC()
{
  result = sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A43F34E8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B688);
  __swift_project_value_buffer(v0, qword_1EB15B688);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43F3570()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB170798);
  __swift_project_value_buffer(v4, qword_1EB170798);
  if (qword_1EB15B680 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB15B688);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

id sub_1A43F36AC(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithPhotosDataSource_];

  return v3;
}

char *sub_1A43F36F0(void *a1)
{
  *&v1[OBJC_IVAR___PXPhotosSearchPhotoKitAssetsDataSourceManager_uuidValidator] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PhotosSearchPhotoKitAssetsDataSourceManager();
  v3 = objc_msgSendSuper2(&v9, sel_initWithPhotosDataSource_, a1);
  v4 = [a1 photoLibrary];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(type metadata accessor for SearchAssetUUIDsValidator());

  v6 = sub_1A43F42D0(v4, v5);

  v7 = *&v3[OBJC_IVAR___PXPhotosSearchPhotoKitAssetsDataSourceManager_uuidValidator];
  *&v3[OBJC_IVAR___PXPhotosSearchPhotoKitAssetsDataSourceManager_uuidValidator] = v6;

  return v3;
}

uint64_t sub_1A43F380C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1A43F5C40(0, &qword_1EB12E1C0, sub_1A3ECDA00, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = a3;
    *(inited + 40) = a1;
    v7 = a3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A43F3F8C(uint64_t a1, void (*a2)(void))
{
  if (*(a1 + 16))
  {
    a2(0);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id PhotosSearchPhotoKitAssetsDataSourceManager.__allocating_init(photosDataSourceProvider:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithPhotosDataSourceProvider_];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1A43F42D0(void *a1, uint64_t (*a2)(uint64_t a1, uint64_t a2, void *a3))
{
  v3 = v2;
  v23 = a1;
  v24 = a2;
  v22 = sub_1A524D464();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = &v2[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_updatedUUIDsKey];
  strcpy(&v2[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_updatedUUIDsKey], "UpdatedUUIDs");
  v9[13] = 0;
  *(v9 + 7) = -5120;
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_allowedUUIDs] = MEMORY[0x1E69E7CD0];
  v10 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_manualOrderUUIDs] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_assetCollection] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_fetchQueueFetchResult] = 0;
  v21 = OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_fetchQueue;
  v11 = sub_1A3C52C70(0, &qword_1EB12B180);
  v20[1] = "rchAssetUUIDsValidator";
  v20[2] = v11;
  sub_1A524BF24();
  v26 = v10;
  sub_1A3C29D2C(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v12 = MEMORY[0x1E69E8030];
  sub_1A43F5C40(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AE18(&qword_1EB126E30, &qword_1EB126E40, v12);
  sub_1A524E224();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v22);
  *&v2[v21] = sub_1A524D4B4();
  v13 = v23;
  v14 = v24;
  *&v3[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_photoLibrary] = v23;
  v15 = &v3[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_updateBlock];
  *v15 = sub_1A43F380C;
  v15[1] = v14;
  v16 = type metadata accessor for SearchAssetUUIDsValidator();
  v25.receiver = v3;
  v25.super_class = v16;
  v17 = v13;

  v18 = objc_msgSendSuper2(&v25, sel_init);
  [v17 px:v18 registerChangeObserver:?];

  return v18;
}

unint64_t sub_1A43F465C()
{
  result = qword_1EB120790;
  if (!qword_1EB120790)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120790);
  }

  return result;
}

void sub_1A43F46C0(uint64_t a1)
{
  v3 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4);
  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_allowedUUIDs) = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43F4A18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5246EA4();
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v55 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEE4();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v62 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1A524BF64();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5246E54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v54 - v17;
  if (qword_1EB170790 != -1)
  {
    swift_once();
  }

  v19 = sub_1A5246E94();
  v20 = __swift_project_value_buffer(v19, qword_1EB170798);
  sub_1A5246E44();
  v58 = v20;
  v21 = sub_1A5246E84();
  v22 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v23 = a1;
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v21, v22, v25, "SearchAssetsValidatorFetch", "", v24, 2u);
    v26 = v24;
    a1 = v23;
    MEMORY[0x1A590EEC0](v26, -1, -1);
  }

  (*(v11 + 16))(v15, v18, v10);
  sub_1A5246ED4();
  swift_allocObject();
  v59 = sub_1A5246EC4();
  v27 = *(v11 + 8);
  v67 = v11 + 8;
  v27(v18, v10);
  v28 = *(a1 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v54[1] = v10;
    v30 = sub_1A3C51BF0(v28, 0);
    sub_1A3C423E8(aBlock, v30 + 4, v28, a1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v31 = objc_opt_self();
  v32 = sub_1A524CA14();

  v33 = [objc_opt_self() px:*&v2[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_photoLibrary] searchAssetFetchOptionsForPhotoLibrary:?];
  v34 = [v31 fetchAssetsWithLocalIdentifiers:v32 options:v33];

  v35 = *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_fetchQueueFetchResult];
  *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_fetchQueueFetchResult] = v34;

  sub_1A43F5200();
  v37 = v36;
  sub_1A3C52C70(0, &qword_1EB12B180);
  v38 = sub_1A524D474();
  v39 = swift_allocObject();
  *(v39 + 16) = v2;
  *(v39 + 24) = v37;
  aBlock[4] = sub_1A43F5B50;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_37_2;
  v40 = _Block_copy(aBlock);
  v41 = v2;

  v42 = v60;
  sub_1A524BF14();
  aBlock[0] = v29;
  sub_1A3C29D2C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v43 = MEMORY[0x1E69E7F60];
  sub_1A43F5C40(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AE18(&qword_1EB12B1B0, &qword_1EB12B1C0, v43);
  v44 = v62;
  v45 = v65;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v42, v44, v40);
  _Block_release(v40);

  (*(v64 + 8))(v44, v45);
  (*(v61 + 8))(v42, v63);
  v46 = sub_1A5246E84();
  v47 = v66;
  sub_1A5246EB4();
  v48 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    v49 = v55;
    sub_1A5246EE4();

    if ((*(v57 + 88))(v49, v56) == *MEMORY[0x1E69E93E8])
    {
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v57 + 8))(v49, v56);
      v50 = "";
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v46, v48, v52, "SearchAssetsValidatorFetch", v50, v51, 2u);
    MEMORY[0x1A590EEC0](v51, -1, -1);
  }

  return (v27)(v47, v10);
}

void sub_1A43F5200()
{
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_fetchQueueFetchResult);
  if (!v2)
  {
    return;
  }

  v3 = [v2 fetchedObjects];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_1A3C52C70(0, &qword_1EB126660);
  v5 = sub_1A524CA34();

  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_18:

    v8 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1A3C4467C(v8);

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  v18 = MEMORY[0x1E69E7CC0];
  sub_1A3C57108(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v8 = v18;
    while (1)
    {
      v9 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x1A59097F0](v7, v5) : *(v5 + 8 * v7 + 32);
      v1 = v9;
      v10 = [v1 uuid];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_1A524C674();
      v14 = v13;

      if (!v14)
      {
        goto LABEL_22;
      }

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1A3C57108((v15 > 1), v16 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v16 + 1;
      v17 = v18 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      if (v6 == v7)
      {

        goto LABEL_19;
      }
    }
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1A43F54FC(void *a1)
{
  v20 = 0;
  v3 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_fetchQueue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = &v20;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A43F5A3C;
  *(v5 + 24) = v4;
  v18 = sub_1A3C7146C;
  v19 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A3C71444;
  v17 = &block_descriptor_175;
  v6 = _Block_copy(&aBlock);
  v7 = v3;
  v8 = v1;
  v9 = a1;

  dispatch_sync(v7, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v20)
    {
      sub_1A43F5C40(0, &qword_1EB1261A0, sub_1A3DAF684, MEMORY[0x1E69E6F90]);
      *(swift_initStackObject() + 16) = xmmword_1A52F8E10;
      v12 = *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_updatedUUIDsKey];
      v13 = *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_updatedUUIDsKey + 8];
      aBlock = v12;
      v15 = v13;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return 0;
  }

  return result;
}

id sub_1A43F5904(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A43F5A3C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_fetchQueueFetchResult;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator_fetchQueueFetchResult);
  if (v3)
  {
    v4 = *(v0 + 32);
    sub_1A3C52C70(0, &qword_1EB126660);
    v11 = v3;
    v5 = sub_1A524DC44();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 fetchResultAfterChanges];
      v8 = *(v1 + v2);
      *(v1 + v2) = v7;

      sub_1A43F5200();
      v10 = v9;

      *v4 = v10;
    }

    else
    {
    }
  }
}

void sub_1A43F5C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A43F5CA4(uint64_t a1)
{
  if (a1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  memset(v2, 0, sizeof(v2));
  return sub_1A3C35B00(v2);
}

uint64_t objectdestroy_33Tm()
{

  return swift_deallocObject();
}

void sub_1A43F5E2C()
{
  if (!qword_1EB139EB0)
  {
    sub_1A3C2DF08(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139EB0);
    }
  }
}

void sub_1A43F5EB8()
{
  if (!qword_1EB139EB8)
  {
    sub_1A3ECE164(255, &qword_1EB120B48, MEMORY[0x1E69E64E8]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB139EB8);
    }
  }
}

uint64_t sub_1A43F5F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43F5FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69C2410];
  v3 = sub_1A5243334();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A43F6020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5243334();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void sub_1A43F608C(uint64_t a1@<X8>)
{
  v2 = sub_1A5242274();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5242264();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0x2E6E6F7276656863;
  v10[1] = 0xEF64726177726F66;
  (*(v7 + 104))(v10, *MEMORY[0x1E69C1D40], v6, v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C1D50], v2);
  sub_1A5242B64();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  v11 = sub_1A5243324();
  KeyPath = swift_getKeyPath();
  sub_1A43F62C8();
  v14 = (a1 + *(v13 + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  v15 = sub_1A524B4A4();
  v16 = swift_getKeyPath();
  sub_1A43F6348();
  v18 = (a1 + *(v17 + 36));
  *v18 = v16;
  v18[1] = v15;
}

void sub_1A43F62C8()
{
  if (!qword_1EB124320)
  {
    sub_1A3DF1888();
    sub_1A405D430(255, &qword_1EB127820, &qword_1EB1276A0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124320);
    }
  }
}

void sub_1A43F6348()
{
  if (!qword_1EB123940)
  {
    sub_1A43F62C8();
    sub_1A405D430(255, &qword_1EB1277F0, &qword_1EB127560);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123940);
    }
  }
}

uint64_t type metadata accessor for LemonadeTitleDisclosureImage()
{
  result = qword_1EB1655D0;
  if (!qword_1EB1655D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43F6458()
{
  result = sub_1A5243334();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A43F64C4()
{
  result = qword_1EB123948;
  if (!qword_1EB123948)
  {
    sub_1A43F6348();
    sub_1A43F6564();
    sub_1A405D6B4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123948);
  }

  return result;
}

unint64_t sub_1A43F6564()
{
  result = qword_1EB124328;
  if (!qword_1EB124328)
  {
    sub_1A43F62C8();
    swift_getOpaqueTypeConformance2();
    sub_1A405D6B4(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124328);
  }

  return result;
}

void sub_1A43F6904(void *a1, uint64_t a2, const char **a3, void (*a4)(char *))
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for PhotosDetailsViewHeaderTungstenLayout();
  v6 = *a3;
  v7 = v9.receiver;
  objc_msgSendSuper2(&v9, v6);
  v8 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsViewHeaderTungstenLayout_updateFlags;
  swift_beginAccess();
  a4(&v7[v8]);
  swift_endAccess();
}

void sub_1A43F6A7C(void *a1, uint64_t a2, const char **a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for PhotosDetailsViewHeaderTungstenLayout();
  v4 = *a3;
  v5.receiver;
  objc_msgSendSuper2(&v5, v4);
  swift_beginAccess();
  sub_1A43F78DC();
  PXGLayout.invalidate<A>(updateFlags:with:)();
}

uint64_t sub_1A43F6B24()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_1A3EA52F4(0, 0, v2, &unk_1A53386B0, v7);
}

uint64_t sub_1A43F6C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a4;
  sub_1A524CC54();
  v4[11] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A43F6D30, v6, v5);
}

uint64_t sub_1A43F6D30()
{

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    *(v0 + 64) = 1;
    swift_beginAccess();
    sub_1A43F78DC();
    PXGLayout.invalidate<A>(updateFlags:with:)();
  }

  **(v0 + 72) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43F6E20()
{
  [v0 referenceSize];
  sub_1A46AB24C(v1, v2, 0);
  [v0 safeAreaInsets];
  [v0 referenceSize];
  v8 = v7;
  [v0 safeAreaInsets];
  v10 = v9 + sub_1A46AB4C4();
  [v0 setContentSize_];
  return (*(**&v0[OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsViewHeaderTungstenLayout_photosViewHeaderAccessoryModel] + 200))(*&v10, 0);
}

uint64_t sub_1A43F6F08()
{
  if ([v0 localNumberOfSprites] != 1)
  {
    [v0 applySpriteChangeDetails:0 countAfterChanges:1 initialState:0 modifyState:0];
  }

  v3[4] = sub_1A43F7018;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A41FBEA8;
  v3[3] = &block_descriptor_176;
  v1 = _Block_copy(v3);

  [v0 modifySpritesInRange:0x100000000 state:v1];
  _Block_release(v1);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1A43F7018(uint64_t a1, uint64_t a2, _OWORD *a3, _WORD *a4)
{
  v4 = *(off_1E7722048 + 7);
  a3[6] = *(off_1E7722048 + 6);
  a3[7] = v4;
  v5 = *(off_1E7722048 + 9);
  a3[8] = *(off_1E7722048 + 8);
  a3[9] = v5;
  v6 = *(off_1E7722048 + 3);
  a3[2] = *(off_1E7722048 + 2);
  a3[3] = v6;
  v7 = *(off_1E7722048 + 5);
  a3[4] = *(off_1E7722048 + 4);
  a3[5] = v7;
  result = *off_1E7722048;
  v9 = *(off_1E7722048 + 1);
  *a3 = *off_1E7722048;
  a3[1] = v9;
  *a4 = 2561;
  return result;
}

uint64_t sub_1A43F7054()
{
  [v0 bounds];
  v2 = v1;
  v15 = v3;
  v16 = v1;
  v17 = v4;
  v18 = v5;
  sub_1A43F7F28();
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 shouldWorkAround152038050];

  if (v7)
  {
    [v0 safeAreaInsets];
    v16 = v2 - v8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = &v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1A43F7F74;
  *(v10 + 24) = v9;
  v14[4] = sub_1A41FF85C;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A41FBEA8;
  v14[3] = &block_descriptor_37_3;
  v11 = _Block_copy(v14);

  [v0 modifySpritesInRange:0x100000000 state:v11];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_1A43F725C(uint64_t a1)
{
  v3 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43F7A80(a1);
  type metadata accessor for PhotosDetailsViewHeaderContainerView.UserData(0);
  sub_1A43F7E60(v1 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsViewHeaderTungstenLayout_containerViewConfiguration, v5, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  return sub_1A4842278(v5);
}

id sub_1A43F756C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsViewHeaderTungstenLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A43F7608(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1A52411C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = v3 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsViewHeaderTungstenLayout_updateFlags;
  type metadata accessor for PhotosDetailsViewHeaderContainerViewModel(0);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  sub_1A3C341C8(a1, v9);
  sub_1A46AA4E4(a2, v9);
}

uint64_t type metadata accessor for PhotosDetailsViewHeaderTungstenLayout()
{
  result = qword_1EB1716F8;
  if (!qword_1EB1716F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A43F78DC()
{
  result = qword_1EB171998;
  if (!qword_1EB171998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB171998);
  }

  return result;
}

uint64_t (*sub_1A43F7954())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A43F7DB8;
}

uint64_t sub_1A43F79B0(int a1)
{
  if (a1)
  {
    sub_1A524E404();

    v3 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v3);

    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {

    return type metadata accessor for PhotosDetailsViewHeaderContainerView(0);
  }

  return result;
}

uint64_t sub_1A43F7A80(uint64_t result)
{
  if (result)
  {
    sub_1A524E404();

    v1 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v1);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

unint64_t sub_1A43F7B40()
{
  result = qword_1EB12AF50;
  if (!qword_1EB12AF50)
  {
    sub_1A52414C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AF50);
  }

  return result;
}

uint64_t sub_1A43F7BA0()
{
  result = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A43F7C5C()
{
  result = qword_1EB1719D0;
  if (!qword_1EB1719D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1719D0);
  }

  return result;
}

unint64_t sub_1A43F7CB4()
{
  result = qword_1EB1719A8;
  if (!qword_1EB1719A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1719A8);
  }

  return result;
}

unint64_t sub_1A43F7D0C()
{
  result = qword_1EB1719C0;
  if (!qword_1EB1719C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1719C0);
  }

  return result;
}

unint64_t sub_1A43F7D64()
{
  result = qword_1EB1719B8;
  if (!qword_1EB1719B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1719B8);
  }

  return result;
}

uint64_t sub_1A43F7DC0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A43F6C98(a1, v5, v6, v4);
}

uint64_t sub_1A43F7E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43F7EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A43F7F28()
{
  result = qword_1EB1208C0;
  if (!qword_1EB1208C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1208C0);
  }

  return result;
}

float32x2_t sub_1A43F7F74(uint64_t a1, float32x2_t *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v15.origin.x = *v4;
  v15.origin.y = v6;
  v15.size.width = v7;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v5;
  v16.origin.y = v6;
  v16.size.width = v7;
  v16.size.height = v8;
  MidY = CGRectGetMidY(v16);
  v17.origin.x = v5;
  v17.origin.y = v6;
  v17.size.width = v7;
  v17.size.height = v8;
  Width = CGRectGetWidth(v17);
  v18.origin.x = v5;
  v18.origin.y = v6;
  v18.size.width = v7;
  v18.size.height = v8;
  Height = CGRectGetHeight(v18);
  v12.f64[0] = Width;
  v12.f64[1] = Height;
  result = vcvt_f32_f64(v12);
  *a2 = MidX;
  *&a2[1] = MidY;
  a2[2] = 0;
  a2[3] = result;
  return result;
}

uint64_t sub_1A43F8034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A43F8098(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A43F8180(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A43F81D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __n128)@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1A52411C4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_1A52411B4();
    a1 = sub_1A5241164();
    a2 = v14;
    v10 = (*(v9 + 8))(v13, v8);
  }

  *a4 = a1;
  a4[1] = a2;
  return a3(v10, v11);
}

uint64_t sub_1A43F82E4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A524EAB4();
  }
}

uint64_t sub_1A43F8314()
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A43F8360()
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

__n128 sub_1A43F83A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

unint64_t sub_1A43F83C0()
{
  result = qword_1EB139F38;
  if (!qword_1EB139F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139F38);
  }

  return result;
}

uint64_t sub_1A43F8430@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_1A524B8E4();
  *a1 = result;
  return result;
}

uint64_t sub_1A43F851C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A43F8568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PhotosPreviewableCollection.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) <= 1u && *(v0 + 8))
  {
    v2 = MEMORY[0x1A590C5A0](v1);
  }

  else
  {
    v2 = [v1 hash];
  }

  return MEMORY[0x1A590A010](v2);
}

uint64_t PhotosPreviewableCollection.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      strcpy(v12, "<Person: ");
      WORD1(v12[1]) = 0;
      HIDWORD(v12[1]) = -385875968;
      v8 = &qword_1EB126B98;
    }

    else
    {
      sub_1A524E404();

      strcpy(v12, "<SocialGroup: ");
      HIBYTE(v12[1]) = -18;
      v8 = &unk_1EB1269E0;
    }

    goto LABEL_9;
  }

  if (*(v0 + 8))
  {
    strcpy(v12, "<Assets: ");
    WORD1(v12[1]) = 0;
    HIDWORD(v12[1]) = -385875968;
    v8 = &qword_1EB120750;
LABEL_9:
    sub_1A3C5D0E8(0, v8);
    swift_unknownObjectRetain();
    v7 = sub_1A524C714();
    goto LABEL_12;
  }

  sub_1A524E404();

  v12[0] = 0xD000000000000012;
  v12[1] = 0x80000001A53D55F0;
  v2 = [v1 localizedTitle];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1A524C674();
    v6 = v5;

    v7 = v4;
  }

  else
  {
    sub_1A3C5D0E8(0, &qword_1EB120790);
    swift_unknownObjectRetain();
    v7 = sub_1A524C714();
    v6 = v10;
  }

  v9 = v6;
LABEL_12:
  MEMORY[0x1A5907B60](v7, v9);

  MEMORY[0x1A5907B60](62, 0xE100000000000000);
  return v12[0];
}

uint64_t PhotosPreviewableCollection.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A524EC94();
  if (v2 <= 1 && v2)
  {
    v3 = MEMORY[0x1A590C5A0](v1);
  }

  else
  {
    v3 = [v1 hash];
  }

  MEMORY[0x1A590A010](v3);
  return sub_1A524ECE4();
}

uint64_t sub_1A43F8898()
{
  sub_1A524EC94();
  PhotosPreviewableCollection.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A43F88F0()
{
  sub_1A524EC94();
  PhotosPreviewableCollection.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t _s12PhotosUICore0A21PreviewableCollectionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (*(a1 + 8))
    {
      if (v4 == 1)
      {
        PXDisplayAssetFetchResultEqualToDisplayAssetFetchResult();
      }
    }

    else if (!*(a2 + 8))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (*(a1 + 8) == 2)
  {
    if (v4 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v4 != 3)
  {
    return 0;
  }

LABEL_11:
  v5 = v2;
  v6 = v3;
  if (v2 == v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

uint64_t sub_1A43F8A50@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1A3C6DD08(v2, v3);
}

void (*sub_1A43F8A64(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v1;
  sub_1A3C6DD08(v3, v4);
  return sub_1A43F8AB4;
}

void sub_1A43F8AB4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = *a1;
    v6 = v2;
    v7 = v4;
    sub_1A3C6DD08(v3, v2);
    sub_1A3C6EE48(&v5);
  }

  v5 = *a1;
  v6 = v2;
  v7 = v4;
  sub_1A3C6EE48(&v5);
}

double sub_1A43F8B4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 336))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1A43F8BB8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = v3;
  v5 = *(*v4 + 344);
  sub_1A3C6DD08(v7[0], v2);
  return v5(v7);
}

void (*sub_1A43F8C34(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1016))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  type metadata accessor for PhotoKitItemListManager();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A43F8A64(v4);
  return sub_1A43F8DDC;
}

void sub_1A43F8DDC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getKeyPath();
  type metadata accessor for PhotoKitItemListManager();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A43F8EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A43F8F68(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  result = swift_beginAccess();
  v8 = *(v2 + 48);
  if (v6)
  {
    if (*(v2 + 48))
    {
      return result;
    }

LABEL_7:
    sub_1A3C6F920();
  }

  if (*(v2 + 40) != v5)
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

void (*sub_1A43F9004(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  v5 = *(v1 + 48);
  *(v4 + 24) = *(v1 + 40);
  *(v4 + 32) = v5;
  return sub_1A43F9098;
}

void sub_1A43F9098(uint64_t a1)
{
  v1 = *a1;
  sub_1A43F8F68(*(*a1 + 24), *(*a1 + 32));

  free(v1);
}

uint64_t sub_1A43F9128(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1A3C341C8(a1, v5);
  }

  else
  {
    v3 = *(a1 + 16);
    v5[0] = *a1;
    v5[1] = v3;
    v6 = *(a1 + 32);
  }

  return (*(**a2 + 392))(v5);
}

uint64_t sub_1A43F91A8()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
    v5 = v0;
    v3 = *(v2 + 40);

    v3(&v5, v1, v2);
  }

  return swift_endAccess();
}

__n128 sub_1A43F9244@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (*(v1 + 80))
  {
    sub_1A3C341C8(v1 + 56, a1);
  }

  else
  {
    result = *(v1 + 56);
    v4 = *(v1 + 72);
    *a1 = result;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(v1 + 88);
  }

  return result;
}

uint64_t sub_1A43F92AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  if (*(v1 + 80))
  {
    v4 = (v1 + 56);
    if (v3)
    {
      __swift_assign_boxed_opaque_existential_1(v4, a1);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else if (v3)
  {
    sub_1A3C341C8(a1, v1 + 56);
    goto LABEL_8;
  }

  v5 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v5;
  *(v1 + 88) = *(a1 + 32);
LABEL_8:
  swift_endAccess();
  result = sub_1A43F91A8();
  if (*(a1 + 24))
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t (*sub_1A43F9350(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A43F93A4;
}

uint64_t (*sub_1A43F93BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t *a1@<X8>)@<X8>))@<X0>(uint64_t *a1@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = (*(**a1 + 408))();
  v8 = v7;
  result = swift_allocObject();
  *(result + 2) = v5;
  *(result + 3) = v6;
  *(result + 4) = v8;
  *a4 = sub_1A3C74678;
  a4[1] = result;
  return result;
}

uint64_t sub_1A43F9454(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v9 = *(**a2 + 416);

  return v9(sub_1A3C74640, v8);
}

void sub_1A43F9510(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;

  sub_1A3C6F920();
}

uint64_t (*sub_1A43F957C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A43F95D0;
}

uint64_t sub_1A43F95E8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t PhotoKitItemListManager.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v4 = *(v1 + 176);
  v10 = *(v1 + 160);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 192);
  v6 = *(v1 + 128);
  v9[0] = *(v1 + 112);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1A3C6DB58(v9, v8);
}

uint64_t PhotoKitItemListManager.changeDetailsRepository.getter()
{
  sub_1A3CAC54C();
}

uint64_t PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = sub_1A524CA14();
  v8 = [v6 transientCollectionListWithCollections:v7 title:0 identifier:0 photoLibrary:a1];

  v9 = *(v3 + 432);
  v10 = v8;
  v11 = v9();

  sub_1A3C6F78C(a3, &qword_1EB120D70, &qword_1EB120D78, MEMORY[0x1E69E6028], sub_1A3C34400);
  return v11;
}

uint64_t sub_1A43F9828@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 58) = 2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = sub_1A3C6C19C(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 57) = 512;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1A43F98F0(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  (*(*v1 + 1024))(KeyPath, sub_1A43FD480, &v5, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A43F9A40(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if ((*(v1 + 272) & 1) == 0)
  {
    *(v1 + 272) = 1;
    sub_1A3C6F920();
  }

  if (sub_1A43FA88C())
  {
    if (qword_1EB17ACA0 != -1)
    {
      swift_once();
    }

    px_dispatch_queue_wait();
  }

  return 1;
}

void sub_1A43F9AEC()
{
  (*(*v0 + 280))();
  PhotoKitItem.id.getter();
  type metadata accessor for PhotoKitItemListImplementation();
  swift_getWitnessTable();
  sub_1A5246424();
}

void sub_1A43F9ED4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 48);
  v26[2] = *(a1 + 32);
  v26[3] = v4;
  v26[4] = *(a1 + 64);
  v27 = *(a1 + 80);
  v5 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v5;
  v6 = v3;
  type metadata accessor for PhotoKitItemListManager();
  v7 = v1[35];
  v8 = v1[44];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v9 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v9;
  v22[4] = *(a1 + 64);
  v23 = *(a1 + 80);
  v10 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v10;
  v11 = *(v6 + 336);
  v12 = v8;
  v13 = v7;
  v14 = sub_1A3C6DB58(v26, &v20);
  v15 = v11(&v20, v14);
  v18 = v20;
  v19 = v21;
  v16 = (*(*v1 + 408))(v15);
  sub_1A3C6C6A4(v13, v8, v24, v22, &v18, v16, v17);
}

void sub_1A43FA078(uint64_t a1)
{
  swift_beginAccess();
  sub_1A3C707DC(v1 + 216, v11);
  swift_beginAccess();
  sub_1A3C6DBB4(a1, v1 + 216);
  swift_endAccess();
  sub_1A3C707DC(v11, &v15);
  v3 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v4 = v17;
    v5 = __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    *(&v19 + 1) = v3;
    v20 = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
    __swift_destroy_boxed_opaque_existential_0(&v15);
  }

  else
  {
    sub_1A3C6F78C(&v15, &qword_1EB120D70, &qword_1EB120D78, MEMORY[0x1E69E6028], sub_1A3C34400);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  swift_beginAccess();
  sub_1A3C707DC(v1 + 216, v12);
  v7 = v13;
  if (v13)
  {
    v8 = v14;
    v9 = __swift_project_boxed_opaque_existential_1(v12, v13);
    *(&v16 + 1) = v7;
    v17 = v8;
    v10 = __swift_allocate_boxed_opaque_existential_1(&v15);
    (*(*(v7 - 8) + 16))(v10, v9, v7);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_1A3C6F78C(v12, &qword_1EB120D70, &qword_1EB120D78, MEMORY[0x1E69E6028], sub_1A3C34400);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_1A5246794();
}

void (*sub_1A43FA344(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  swift_beginAccess();
  sub_1A3C707DC(v1 + 216, v4);
  return sub_1A43FA3D4;
}

void sub_1A43FA3D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A3C707DC(*a1, v2 + 40);
    sub_1A43FA078(v2 + 40);
  }

  sub_1A43FA078(*a1);
}

uint64_t PhotoKitItemListManager.FetchResultProviderInput.fetchLimit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PhotoKitItemListManager.FetchResultProviderInput.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v10 = *(v1 + 80);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 112);
  v6 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1A3C6DB58(v9, v8);
}

void PhotoKitItemListManager.FetchResultProviderInput.relationship.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

id PhotoKitItemListManager.FetchResultProviderInput.fetcher.getter()
{
  result = [*v0 photoLibrary];
  if (result)
  {
    v2 = result;
    v3 = PHPhotoLibrary.fetcher.getter();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A43FA598()
{
  sub_1A3C708B8();
}

uint64_t sub_1A43FA5C0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A3C708B8();
}

void sub_1A43FA638(uint64_t a1@<X8>)
{
  sub_1A3C701AC(a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_1A43FA668(uint64_t a1, uint64_t a2)
{
  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A43FA6A4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A43FCAE4();
  a1[1] = v2;

  return swift_unknownObjectRetain();
}

uint64_t sub_1A43FA6E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1A3C6F654(v2, v1);
}

uint64_t sub_1A43FA724(uint64_t a1)
{
  v2 = *(v1 + 376);
  *(v1 + 376) = a1;
  result = sub_1A3C70320();
  if (result != v2)
  {

    sub_1A3C6F920();
  }

  return result;
}

uint64_t sub_1A43FA770@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3C70320();
  *a1 = result;
  return result;
}

uint64_t sub_1A43FA7CC(char a1)
{
  v2 = *(v1 + 384);
  *(v1 + 384) = a1;
  result = sub_1A3C7058C();
  if (v2 != (result & 1))
  {

    sub_1A3C6F920();
  }

  return result;
}

uint64_t sub_1A43FA81C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3C7058C();
  *a1 = result & 1;
  return result;
}

void sub_1A43FA874()
{
  if ((*(v0 + 272) & 1) == 0)
  {
    *(v0 + 272) = 1;
    sub_1A3C6F920();
  }
}

uint64_t sub_1A43FA88C()
{
  v1 = *(v0 + 392);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1A41FE650((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));

  return v5;
}

uint64_t sub_1A43FA950()
{
  v1 = [objc_opt_self() emptyFetchResultWithPhotoLibrary_];
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

BOOL static PhotoKitItemListManagerOptions.MetadataImmediateFetchSize.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

uint64_t sub_1A43FAA3C(uint64_t a1)
{
  if (a1)
  {
    if (*(v1 + 8) != 1)
    {
      sub_1A524CB74();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (*v1 >= 2uLL)
    {
      sub_1A524CB74();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  sub_1A524CAB4();
  return sub_1A524E0E4();
}

uint64_t sub_1A43FAB58()
{
  sub_1A3CAAD44();
}

uint64_t sub_1A43FAB80@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A3CAAD44();
}

void sub_1A43FABE8()
{
  v0 = sub_1A3CAAD44();
  v1 = *(*v0 + *MEMORY[0x1E69E6B68] + 16);
  v2 = (*(*v0 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v2));
  sub_1A43FD34C(v0 + v1);
}

uint64_t sub_1A43FACB0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1A3CAABB0(*(v1 + 16), 0, &qword_1EB126258, &type metadata for PhotoKitItemListMetadata);
    sub_1A3CAAC34(&v5, v3 + 32, v2, v1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1A43FB004()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A43FB0B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A43FB170(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  *(v3 + 32) = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t sub_1A43FB298@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_1A43FB2EC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 288);

  return v2(v3);
}

void sub_1A43FB350(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  sub_1A43FB170(v2);
}

id PhotoKitItemListManager.observable.getter()
{
  v0 = sub_1A3CA9778();

  return v0;
}

uint64_t sub_1A43FB3EC(uint64_t a1)
{
  IsFeaturedContentAllowed = PXPreferencesIsFeaturedContentAllowed(a1);

  return sub_1A3C70620(IsFeaturedContentAllowed);
}

uint64_t sub_1A43FB414()
{

  sub_1A43FB3EC(v0);
}

uint64_t PhotoKitItemListManager.deinit()
{
  sub_1A3C6EC48(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 192);

  sub_1A3C6F78C(v0 + 216, &qword_1EB120D70, &qword_1EB120D78, MEMORY[0x1E69E6028], sub_1A3C34400);

  sub_1A3C6F78C(v0 + 288, &unk_1EB129F60, &qword_1EB129F70, &protocol descriptor for PhotoLibraryObservation, sub_1A3C34400);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v3 = qword_1EB1854E0;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PhotoKitItemListManager.__deallocating_deinit()
{
  PhotoKitItemListManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A43FB630@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*v2 + 448))(*a1);
  *a2 = result;
  return result;
}

void (*sub_1A43FB748(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 352))();
  return sub_1A3E658B0;
}

void (*sub_1A43FB858(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 376))();
  return sub_1A3E658B0;
}

void sub_1A43FB8F0()
{
  type metadata accessor for PhotoKitItemListManager();
  swift_getWitnessTable();

  sub_1A5245F44();
}

uint64_t sub_1A43FB968(uint64_t a1)
{
  v2 = sub_1A3C6C19C(a1);

  *(v1 + 24) = v2;
  return result;
}

uint64_t PhotoKitItemListManagerOptions.PromisedSortOrder.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

BOOL sub_1A43FBA38(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_1A43FBAF4()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3CAD980(0, &qword_1EB139F48, MEMORY[0x1E69E6A10]);
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v24 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1A3C6C300();
      result = sub_1A524C4A4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v24;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v23 = 1 << *(v2 + 32);
    if (v23 >= 64)
    {
      bzero((v2 + 56), ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v23;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void *sub_1A43FBD5C()
{
  v1 = v0;
  sub_1A3CAD980(0, &qword_1EB139F48, MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A43FBEAC()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3CAD980(0, &qword_1EB139F48, MEMORY[0x1E69E6A10]);
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v22 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1A3C6C300();
      result = sub_1A524C4A4();
      v15 = -1 << *(v4 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v10 + 8 * v17);
          if (v21 != -1)
          {
            v11 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v22;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

void sub_1A43FC0E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A3CAB9BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A3CABA00(v14, a3 & 1);
      v9 = sub_1A3CAB9BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1A43FC22C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 8 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

id sub_1A43FC22C()
{
  v1 = v0;
  sub_1A3C6D3EC(0, &qword_1EB126450, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1A43FC5B4(uint64_t a1)
{
  PhotoKitItemListManager.FetchResultProviderInput.defaultFetcherOptions.getter(&v30);
  v2 = v32;
  v3 = v33;
  v26 = v30;
  v27 = v31;
  PhotoKitItemListManager.FetchResultProviderInput.fetcher.getter();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v28 = v4;
  v29 = v5;
  v6 = *a1;
  v30 = v26;
  v31 = v27;
  v32 = v2;
  v33 = v3;
  v7 = PhotoKitFetcher.fetch(_:for:options:)(&v28, v6, &v30);

  if (!v7)
  {
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0x676E696863746546, 0xE900000000000020);
    v28 = v4;
    v29 = v5;
    sub_1A524E624();
    MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
    v11 = [v6 description];
    v12 = sub_1A524C674();
    v14 = v13;

    MEMORY[0x1A5907B60](v12, v14);

    MEMORY[0x1A5907B60](0xD00000000000001ALL, 0x80000001A53D57D0);
    goto LABEL_6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    v15 = v7;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0x676E696863746546, 0xE900000000000020);
    v28 = v4;
    v29 = v5;
    sub_1A524E624();
    MEMORY[0x1A5907B60](0x20726F6620, 0xE500000000000000);
    v16 = [v6 description];
    v17 = sub_1A524C674();
    v19 = v18;

    MEMORY[0x1A5907B60](v17, v19);

    MEMORY[0x1A5907B60](0x656E727574657220, 0xEA00000000003A64);
    v20 = [v15 description];
    v21 = sub_1A524C674();
    v23 = v22;

    MEMORY[0x1A5907B60](v21, v23);

    MEMORY[0x1A5907B60](0x6574636570786520, 0xEA00000000003A64);
    v24 = sub_1A524EEF4();
    MEMORY[0x1A5907B60](v24);

LABEL_6:
    if (qword_1EB176A50 != -1)
    {
      swift_once();
    }

    v25 = sub_1A5246F24();
    __swift_project_value_buffer(v25, qword_1EB176A58);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = v8;

  return v9;
}

void sub_1A43FCA3C()
{
  PhotoKitItem.id.getter();
  type metadata accessor for PhotoKitItemListManager.MetadataFetchState();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43FCAE4()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1016))(KeyPath);

  return v0[45];
}

unint64_t sub_1A43FCBC4()
{
  result = qword_1EB139F40;
  if (!qword_1EB139F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139F40);
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1A43FD098(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A43FD0E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A43FD158(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A43FD1A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A43FD34C(uint64_t a1)
{
  v2 = *(type metadata accessor for PhotoKitItemListManager.MetadataFetchState() + 36);

  *(a1 + v2) = MEMORY[0x1E69E7CC8];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43FD480()
{
  *(*(v0 + 16) + 400) = *(v0 + 24);
}

id sub_1A43FD520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  *a2 = v2;
  return v2;
}

uint64_t sub_1A43FD554@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_1A3C708B8();
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1A43FD5F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for PhotoKitItemListImplementation();
    sub_1A5245E94();
  }

  return result;
}

uint64_t sub_1A43FD6D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1A3C703B4([Strong viewMode]);
    }
  }

  return result;
}

void sub_1A43FD768()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if ([Strong hasSharedLibraryOrPreview])
      {
        if (v1)
        {
          v4 = v1;
          sub_1A3C703B4([v4 viewMode]);

          return;
        }
      }

      else
      {
        sub_1A3C703B4(0);
      }
    }
  }
}

void sub_1A43FD8F4(void *a1, void *a2, char a3, char a4, uint64_t a5, char a6, char a7)
{
  swift_allocObject();
  v10 = a1[2];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = sub_1A524CA14();
  v14 = sub_1A524C634();
  v42 = [v11 transientCollectionListWithCollections:v13 title:v14 identifier:0 photoLibrary:v12];

  v15 = a1[3];
  v16 = a1[5];
  v17 = MEMORY[0x1E69E7D40];
  if (v16)
  {
    v18 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x450);
    v19 = v15;
    v20 = v16;
    v21 = v18();
  }

  else
  {
    v22 = v15;
    v21 = 0;
  }

  v59 = &unk_1F170C098;
  if (a3 & 1) != 0 && (a4)
  {
    sub_1A43FDD00(&unk_1F170C0C0);
  }

  v23 = a1[5];
  if (a7)
  {
    v24 = *(**sub_1A44E6630() + 264);

    v24(v50, v25);

    v26 = v50[0];
    v27 = sub_1A43FE604();
    v28 = a1[5];
    v29 = &type metadata for LemonadeAlbumsContentFilter;
  }

  else
  {
    v29 = 0;
    v27 = 0;
    v26 = 0;
    v58[1] = 0;
    v58[2] = 0;
    v28 = v23;
  }

  v58[3] = v29;
  v58[4] = v27;
  v58[0] = v26;
  v30 = v59;
  v57 = 2;
  if (v28)
  {
    v31 = *((*v17 & *v28) + 0x258);
    v32 = v28;
    v33 = v31();
  }

  else
  {
    v33 = 0;
  }

  v34 = v23 != 0;
  sub_1A3C6C180(&v47);
  v55 = v47;
  v56 = v48;
  sub_1A3C6C18C(&v53);
  v51 = v53;
  v52 = v54;
  v35 = sub_1A3C30368();
  v36 = sub_1A3C5A374();
  v37 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v55, 0, v30, a5, a6 & 1, &v51, v21 & 1, &v57, v50, v35, a4 & 1, v36 & 1, v37 & 1, v33);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = a7 & 1;
  *(v38 + 17) = v34;
  *(v38 + 24) = a2;
  *(v38 + 32) = a3 & 1;
  *(v38 + 40) = a1;
  v39 = a2;

  v40 = v42;
  v41 = v15;
  PhotoKitItemListManager.init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v40, v15, v58, v50, &v47, sub_1A43FE528, v38);
}

uint64_t sub_1A43FDD00(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A43FEB30(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_1A43FDDEC(uint64_t a1, char a2, char a3, void *a4, char a5, uint64_t a6)
{
  if (a2 & 1) == 0 || (a3)
  {
    goto LABEL_8;
  }

  sub_1A3C707DC(a1 + 128, v40);
  if (!v40[3])
  {
    sub_1A43FED80(v40);
LABEL_8:
    v10 = *sub_1A44E6F70();
    goto LABEL_9;
  }

  sub_1A3C34400(0, &qword_1EB120D78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = v42;
  v40[0] = v42;
  if (!LemonadeAlbumsContentFilter.isFilterApplied.getter())
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_1A43FECC4();
  v11 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  sub_1A3C52C70(0, &qword_1EB126A10);
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = [v12 enableUserSmartAlbums];

  [v11 setIncludeUserSmartAlbums_];
  if (a4)
  {
    v40[0] = MEMORY[0x1E69E7CC0];
    v14 = a4;
    v15 = *sub_1A44E72F8();
    v41 = v10;
    v42 = v15;
    sub_1A43FED2C();
    if (sub_1A524E114())
    {
      sub_1A3C52C70(0, &qword_1EB126D20);
      sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A52F8E10;
      v17 = MEMORY[0x1E69E76D0];
      *(v16 + 56) = MEMORY[0x1E69E7668];
      *(v16 + 64) = v17;
      *(v16 + 32) = 2;
      sub_1A524D134();
      MEMORY[0x1A5907D70]();
      if (*((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
    }

    if (a5)
    {
      v18 = *sub_1A44E7304();
      v41 = v10;
      v42 = v18;
      if (sub_1A524E114())
      {
        sub_1A3C52C70(0, &qword_1EB126D20);
        sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1A52FC9F0;
        v20 = MEMORY[0x1E69E7668];
        v21 = MEMORY[0x1E69E76D0];
        *(v19 + 56) = MEMORY[0x1E69E7668];
        *(v19 + 64) = v21;
        *(v19 + 32) = 4000;
        *(v19 + 96) = v20;
        *(v19 + 104) = v21;
        *(v19 + 72) = 1507;
        sub_1A524D134();
        MEMORY[0x1A5907D70]();
        if (*((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
      }
    }

    sub_1A3C52C70(0, &qword_1EB126D20);
    v22 = sub_1A524CA14();

    v23 = [objc_opt_self() orPredicateWithSubpredicates_];

    [v11 setInternalPredicate_];
    v24 = [objc_opt_self() fetchCollectionsInCollectionList:v14 options:v11];
  }

  else
  {
    if (a3)
    {
      v25 = *(a6 + 40);
      if (v25)
      {
        v26 = MEMORY[0x1E69E7D40];
        v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x5E8);
        v28 = v25;
        v29 = v27();
        if ((*((*v26 & *v28) + 0x640))(1, v29))
        {
          sub_1A3C52C70(0, &qword_1EB126D20);
          sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_1A52F8E10;
          v31 = MEMORY[0x1E69E76D0];
          *(v30 + 56) = MEMORY[0x1E69E7668];
          *(v30 + 64) = v31;
          *(v30 + 32) = 1609;
          v32 = sub_1A524D134();
          [v11 setInternalInclusionPredicate_];
        }
      }
    }

    if (a5 & 1) != 0 && (v40[0] = *sub_1A44E7304(), v42 = v10, sub_1A43FED2C(), (sub_1A524E114()))
    {
      v33 = [objc_opt_self() fetchTopLevelUserCollectionsWithOptions_];
    }

    else
    {
      sub_1A3C4D548(0, &qword_1EB126180);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1A52F9790;
      v35 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v36 = sub_1A524C634();
      v37 = [v35 initWithKey:v36 ascending:1];

      *(v34 + 32) = v37;
      sub_1A3C52C70(0, &qword_1EB126B60);
      v38 = sub_1A524CA14();

      [v11 setSortDescriptors_];

      v33 = [objc_opt_self() fetchAssetCollectionsWithType:1 subtype:2 options:v11];
    }

    v24 = v33;
  }

  return v24;
}

uint64_t sub_1A43FE52C()
{
  v0 = *(**sub_1A44E6630() + 264);

  v0(&v3, v1);
}

uint64_t (*sub_1A43FE5AC())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A43FEC28;
}

unint64_t sub_1A43FE604()
{
  result = qword_1EB125648;
  if (!qword_1EB125648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125648);
  }

  return result;
}

uint64_t objectdestroyTm_50()
{

  return swift_deallocObject();
}

uint64_t sub_1A43FE6B0()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_1A524CCB4();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_allocObject();
    swift_weakInit();
    sub_1A524CC54();

    v6 = sub_1A524CC44();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E85E0];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;

    sub_1A3D4D930(0, 0, v2, &unk_1A5339418, v7);
  }

  return result;
}

uint64_t sub_1A43FE834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A43FE8CC, v6, v5);
}

uint64_t sub_1A43FE8CC()
{
  v6 = v0;

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v1 = *(**sub_1A44E6630() + 264);
    v5[3] = &type metadata for LemonadeAlbumsContentFilter;
    v5[4] = sub_1A43FE604();

    v1(v5, v2);

    sub_1A43FA078(v5);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A43FEA1C()
{
  PhotoKitItemListManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LemonadeAlbumItemListManager()
{
  result = qword_1EB1659B8;
  if (!qword_1EB1659B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A43FEAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C33378(a6);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

char *sub_1A43FEB30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A3C4D548(0, &qword_1EB126258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A43FEC30()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A43FE834(v3, v4, v5, v2);
}

void sub_1A43FECC4()
{
  if (!qword_1EB12A020)
  {
    sub_1A3C52C70(255, &qword_1EB126CD0);
    ResultProviderInput = type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput();
    if (!v1)
    {
      atomic_store(ResultProviderInput, &qword_1EB12A020);
    }
  }
}

unint64_t sub_1A43FED2C()
{
  result = qword_1EB125640;
  if (!qword_1EB125640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125640);
  }

  return result;
}

uint64_t sub_1A43FED80(uint64_t a1)
{
  sub_1A3C6DC44(0, &qword_1EB120D70, &qword_1EB120D78, MEMORY[0x1E69E6028], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A43FEE0C()
{
  result = PLUIGetLog();
  if (result)
  {
    qword_1EB1EBD70 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1A43FEE3C()
{
  if (qword_1EB1BF7D8 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EBD70;
}

uint64_t *sub_1A43FEE8C()
{
  result = sub_1A3F67960();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBD78) = *result;
  HIWORD(dword_1EB1EBD78) = v1;
  dword_1EB1EBD7C = v2;
  return result;
}

uint64_t *sub_1A43FEEC4()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBD80) = *result;
  HIWORD(dword_1EB1EBD80) = v1;
  dword_1EB1EBD84 = v2;
  return result;
}

uint64_t *sub_1A43FEEFC()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBD88) = *result;
  HIWORD(dword_1EB1EBD88) = v1;
  dword_1EB1EBD8C = v2;
  return result;
}

uint64_t sub_1A43FEF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4955557465737361 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A524EAB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A43FEFE0(uint64_t a1)
{
  v2 = sub_1A43FF058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A43FF01C(uint64_t a1)
{
  v2 = sub_1A43FF058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A43FF058()
{
  result = qword_1EB1BF7F8[0];
  if (!qword_1EB1BF7F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BF7F8);
  }

  return result;
}

void sub_1A43FF0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A43FF058();
    v7 = a3(a1, &type metadata for OneUpSharePlayRemoveAssetDataMessagePayload.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A43FF114()
{
  result = qword_1EB139F60;
  if (!qword_1EB139F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139F60);
  }

  return result;
}

uint64_t sub_1A43FF168@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1BF7E0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBD7C;
  *a1 = dword_1EB1EBD78;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A43FF1D0@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1BF7E8 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBD84;
  *a1 = dword_1EB1EBD80;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A43FF238@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1BF7F0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = dword_1EB1EBD8C;
  *a1 = dword_1EB1EBD88;
  a1[1] = v3;
  return result;
}

unint64_t sub_1A43FF2B4(void *a1)
{
  a1[1] = sub_1A43FF2EC();
  a1[2] = sub_1A43FF340();
  result = sub_1A43FF394();
  a1[3] = result;
  return result;
}

unint64_t sub_1A43FF2EC()
{
  result = qword_1EB139F68;
  if (!qword_1EB139F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139F68);
  }

  return result;
}

unint64_t sub_1A43FF340()
{
  result = qword_1EB139F70;
  if (!qword_1EB139F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139F70);
  }

  return result;
}

unint64_t sub_1A43FF394()
{
  result = qword_1EB139F78;
  if (!qword_1EB139F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139F78);
  }

  return result;
}

uint64_t sub_1A43FF3E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1A43FF0AC(0, &qword_1EB139F58, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43FF058();
  sub_1A524ED14();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = sub_1A524E8A4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1A43FF574(void *a1)
{
  sub_1A43FF0AC(0, &qword_1EB139F50, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43FF058();
  sub_1A524ED34();
  sub_1A524E994();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A43FF6F4()
{
  result = qword_1EB1BFB80[0];
  if (!qword_1EB1BFB80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BFB80);
  }

  return result;
}

unint64_t sub_1A43FF74C()
{
  result = qword_1EB1BFC90;
  if (!qword_1EB1BFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BFC90);
  }

  return result;
}

unint64_t sub_1A43FF7A4()
{
  result = qword_1EB1BFC98[0];
  if (!qword_1EB1BFC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BFC98);
  }

  return result;
}

uint64_t static LemonadePickerViewControllerFactory.pickerViewController(_:pickerConfiguration:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC54();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  return sub_1A43FF950(sub_1A43FF920, v9, "PhotosUICore/LemonadePickerViewControllerFactory.swift", 54);
}

void sub_1A43FF880(void *a1, void *a2)
{
  type metadata accessor for PickerRootViewControllerFactory();
  v4 = [objc_opt_self() defaultManager];
  sub_1A46C32A4(a1, a2, v4);
}

uint64_t sub_1A43FF950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C75D98(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id LemonadePickerViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadePickerViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadePickerViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadePickerViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadePickerViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A43FFC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC54();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  return sub_1A43FF950(sub_1A43FFCB8, v9, "PhotosUICore/LemonadePickerViewControllerFactory.swift", 54);
}

id sub_1A43FFCD0(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithContainerView:a1 styleGuideProvider:a2];

  swift_unknownObjectRelease();
  return v4;
}

char *sub_1A43FFD2C(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_isEnabled] = 1;
  *&v2[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_customCenterControl] = 0;
  v5 = [objc_allocWithZone(type metadata accessor for PhotosSecondaryToolbarPageControl()) init];
  v6 = OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_pageControl;
  *&v2[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_pageControl] = v5;
  v7 = [objc_allocWithZone(type metadata accessor for PhotosSecondaryToolbarLensControl()) init];
  v8 = OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_lensControl;
  *&v2[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_lensControl] = v7;
  sub_1A3C7E8B0();
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  v10 = [v9 enableNewDetailsView];

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  v12 = *&v2[v11];
  *&v2[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_defaultCenterControl] = v12;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for PhotosPagingSecondaryToolbarController();
  v13 = objc_msgSendSuper2(&v22, sel_initWithContainerView_styleGuideProvider_, a1, a2);
  v14 = *&v13[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_lensControl];
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x78);
  v17 = v13;
  v18 = v14;
  v16(v13, &off_1F170C320);

  v19 = (*((*v15 & *v17) + 0x140))([*(*&v17[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_pageControl] + OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator) addTarget:v17 action:sel_pageControlValueDidChange forControlEvents:4096]);
  if (!v19)
  {
    v19 = *&v17[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_defaultCenterControl];
  }

  v20 = v19;
  [v17 setContentView_];

  swift_unknownObjectRelease();
  return v17;
}

void (*sub_1A4400040(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A4402AB8;
}

id sub_1A4400104(uint64_t a1)
{
  [*(*&v1[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_pageControl] + OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator) setNumberOfPages_];

  return [v1 invalidateSecondaryToolbarLayout];
}

id (*sub_1A440015C(void *a1))(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_pageControl);
  a1[1] = v1;
  a1[2] = v2;
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator;
  a1[3] = OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator;
  *a1 = [*(v2 + v3) numberOfPages];
  return sub_1A44001C8;
}

id sub_1A44001C8(void *a1)
{
  v1 = a1[1];
  [*(a1[2] + a1[3]) setNumberOfPages_];

  return [v1 invalidateSecondaryToolbarLayout];
}

id (*sub_1A4400264(void *a1))(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_pageControl);
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator;
  a1[1] = v2;
  a1[2] = v3;
  *a1 = [*(v2 + v3) currentPage];
  return sub_1A44002CC;
}

uint64_t (*sub_1A440039C(void *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_lensControl);
  a1[1] = v2;
  *a1 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))();
  return sub_1A4400420;
}

id (*sub_1A44004C0(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_lensControl);
  *a1 = v3;
  *(a1 + 8) = [v3 isHidden];
  return sub_1A440051C;
}

void (*sub_1A44005EC(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_lensControl);
  a1[1] = v2;
  *a1 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))();
  return sub_1A4400670;
}

void sub_1A4400670(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **(a1 + 8)) + 0x90);
  if (a2)
  {
    v5 = v2;
    v4();
  }

  else
  {
    (v4)(v2);
  }
}

uint64_t sub_1A4400714()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A4400758(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_isEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_lensControl)) + 0xC0))(a1);
  return [*(*(v1 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_pageControl) + OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator) setEnabled_];
}

void (*sub_1A4400818(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A44008A0;
}

void sub_1A44008A0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    (*((*MEMORY[0x1E69E7D40] & **(v5 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_lensControl)) + 0xC0))(*(v5 + v4));
    [*(*(v5 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_pageControl) + OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator) setEnabled_];
  }

  free(v3);
}

uint64_t (*sub_1A4400A1C(uint64_t a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_lensControl);
  *a1 = v2;
  *(a1 + 8) = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))() & 1;
  return sub_1A4400AA4;
}

void *sub_1A4400AFC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_customCenterControl;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A4400B48(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_customCenterControl;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))();
  if (!v6)
  {
    v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_defaultCenterControl);
  }

  v7 = v6;
  [v1 setContentView_];
}

void (*sub_1A4400C24(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4400C88;
}

void sub_1A4400C88(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x140))(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = *(a1 + 24);
      v6 = *&v7[OBJC_IVAR____TtC12PhotosUICore38PhotosPagingSecondaryToolbarController_defaultCenterControl];
    }

    v8 = v6;
    [v7 setContentView_];
  }
}

uint64_t sub_1A4400EDC()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1A440105C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init];
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator] = v1;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PhotosSecondaryToolbarPageControl();
  v2 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator;
  v4 = *&v2[OBJC_IVAR____TtC12PhotosUICoreP33_8EFB6D60E7554E18002E58C22439F8D333PhotosSecondaryToolbarPageControl_pageIndicator];
  v5 = objc_opt_self();
  v6 = v2;
  v7 = v4;
  v8 = [v5 labelColor];
  [v7 setCurrentPageIndicatorTintColor_];

  v9 = *&v2[v3];
  v10 = [v5 labelColor];
  v11 = [v10 colorWithAlphaComponent_];

  [v9 setPageIndicatorTintColor_];
  [*&v2[v3] setBackgroundStyle_];
  [*&v2[v3] setHidesForSinglePage_];
  [v6 addSubview_];

  return v6;
}

uint64_t sub_1A440143C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A44014A4(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A42DA4DC;
}

char *sub_1A4401544()
{
  *&v0[OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_gridLensTitle] = 0;
  v0[OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_performsUpdates] = 0;
  v1 = [objc_allocWithZone(off_1E7721820) init];
  *&v0[OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl] = v1;
  sub_1A3C38BD4();
  v2 = objc_allocWithZone(off_1E7721518);
  v3 = sub_1A524C634();
  v4 = sub_1A524C634();

  v5 = [v2 initWithIdentifier:v3 title:v4 symbolName:0];

  sub_1A3C38BD4();
  v6 = objc_allocWithZone(off_1E7721518);
  v7 = sub_1A524C634();
  v8 = sub_1A524C634();

  v9 = [v6 initWithIdentifier:v7 title:v8 symbolName:0];

  v27.receiver = v0;
  v27.super_class = type metadata accessor for PhotosSecondaryToolbarLensControl();
  v10 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl;
  v12 = *&v10[OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl];
  v13 = v10;
  [v12 setDelegate_];
  v14 = *&v10[v11];
  sub_1A3CB8F68();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A52F9DE0;
  *(v15 + 32) = v5;
  *(v15 + 40) = v9;
  sub_1A4401870();
  v16 = v14;
  v17 = v5;
  v18 = v9;
  v19 = sub_1A524CA14();

  [v16 setItems_];

  v20 = *&v10[v11];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A52F9DE0;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  v22 = v17;
  v23 = v18;
  v24 = v20;
  v25 = sub_1A524CA14();

  [v24 setEnabledItems_];

  [*&v10[v11] setSelectedItem_];
  [v13 addSubview_];

  return v13;
}

unint64_t sub_1A4401870()
{
  result = qword_1EB1268C0;
  if (!qword_1EB1268C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1268C0);
  }

  return result;
}

id sub_1A4401A74()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl) defaultTextColor];

  return v1;
}

void sub_1A4401AB4(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl) setDefaultTextColor_];
}

void (*sub_1A4401B04(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl);
  a1[1] = v3;
  *a1 = [v3 defaultTextColor];
  return sub_1A4401B68;
}

void sub_1A4401B68(id *a1)
{
  v1 = *a1;
  [a1[1] setDefaultTextColor_];
}

void sub_1A4401BB0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl) items];
  sub_1A4401870();
  v2 = sub_1A524CA34();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1A59097F0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
    swift_unknownObjectRetain();
  }

  if ([v3 respondsToSelector_])
  {
    swift_beginAccess();
    sub_1A3C38BD4();
    v4 = sub_1A524C634();

    [v3 setCustomTitle_];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A4401D24()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_gridLensTitle;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4401D68(char a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_gridLensTitle;
  swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  sub_1A4401BB0();
}

void (*sub_1A4401DC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4401E24;
}

void sub_1A4401E24(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A4401BB0();
  }
}

BOOL sub_1A4401E58()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl);
  v2 = [v1 enabledItems];
  sub_1A4401870();
  v3 = sub_1A524CA34();

  if (v3 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = [v1 items];
  v6 = sub_1A524CA34();

  if (v6 >> 62)
  {
    v7 = sub_1A524E2B4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 == v7;
}

void sub_1A4401F58(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl);
  if ((a1 & 1) == 0)
  {
    v4 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl) items];
    sub_1A4401870();
    v5 = sub_1A524CA34();

    if (v5 >> 62)
    {
      if (sub_1A524E2B4())
      {
LABEL_5:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1A59097F0](0, v5);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v6 = *(v5 + 32);
          swift_unknownObjectRetain();
        }

        v10 = v6;
        v9 = MEMORY[0x1E69E7CC0];
        if (!v6)
        {
LABEL_13:
          sub_1A4402140(&v10);
          goto LABEL_14;
        }

        v7 = swift_unknownObjectRetain();
        MEMORY[0x1A5907D70](v7);
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_10:
          sub_1A524CAE4();
          goto LABEL_13;
        }

LABEL_17:
        sub_1A524CA74();
        goto LABEL_10;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v10 = 0;
    goto LABEL_13;
  }

  v3 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl) items];
  sub_1A4401870();
  sub_1A524CA34();

LABEL_14:
  sub_1A4401870();
  v8 = sub_1A524CA14();

  [v2 setEnabledItems_];
}

uint64_t sub_1A4402140(uint64_t a1)
{
  sub_1A440219C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A440219C()
{
  if (!qword_1EB1207B0)
  {
    sub_1A4401870();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1207B0);
    }
  }
}

void (*sub_1A44021F4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl);
  v4 = [v3 enabledItems];
  sub_1A4401870();
  v5 = sub_1A524CA34();

  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = [v3 items];
  v8 = sub_1A524CA34();

  if (v8 >> 62)
  {
    v9 = sub_1A524E2B4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(a1 + 8) = v6 == v9;
  return sub_1A4402340;
}

unint64_t sub_1A4402368()
{
  v18 = *(v0 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl);
  v1 = [v18 items];
  sub_1A4401870();
  v2 = sub_1A524CA34();

  if (v2 >> 62)
  {
LABEL_22:
    v17 = v2 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_1A524E2B4();
  }

  else
  {
    v17 = v2 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v19 == v3)
    {
      v3 = 0;
      goto LABEL_19;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1A59097F0](v3, v2);
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(v2 + 8 * v3 + 32);
      swift_unknownObjectRetain();
    }

    v5 = [v4 identifier];
    v6 = sub_1A524C674();
    v8 = v7;

    v9 = [objc_msgSend(v18 selectedItem)];
    swift_unknownObjectRelease();
    v10 = sub_1A524C674();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      break;
    }

    v14 = sub_1A524EAB4();
    swift_unknownObjectRelease();

    if (v14)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  swift_unknownObjectRelease();

LABEL_19:

  return v3;
}

void sub_1A4402574(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_performsUpdates;
  *(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_performsUpdates) = 1;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl);
  v5 = [v4 items];
  sub_1A4401870();
  v6 = sub_1A524CA34();

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1A59097F0](a1, v6);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v7 = *(v6 + 8 * a1 + 32);
    swift_unknownObjectRetain();
LABEL_5:

    [v4 setSelectedItem_];
    swift_unknownObjectRelease();
    *(v1 + v3) = 0;
    return;
  }

  __break(1u);
}

void (*sub_1A4402668(unint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4402368();
  return sub_1A44026B0;
}

void sub_1A44026B0(unint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_performsUpdates;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_performsUpdates) = 1;
  v6 = *(v4 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_lensControl);
  v7 = [v6 items];
  sub_1A4401870();
  v8 = sub_1A524CA34();

  v9 = v8 & 0xC000000000000001;
  if (a2)
  {
    if (v9)
    {
LABEL_11:
      v10 = MEMORY[0x1A59097F0](v3, v8);
      goto LABEL_10;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < v9)
    {
LABEL_9:
      v10 = *(v8 + 8 * v3 + 32);
      swift_unknownObjectRetain();
LABEL_10:

      [v6 setSelectedItem_];
      swift_unknownObjectRelease();
      *(v4 + v5) = 0;
      return;
    }

    __break(1u);
  }

  if (v9)
  {
    goto LABEL_11;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
}

void sub_1A44027D8()
{
  if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_performsUpdates) & 1) == 0 && (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

void sub_1A440289C(void *a1)
{
  if ((*(a1 + OBJC_IVAR____TtC12PhotosUICore33PhotosSecondaryToolbarLensControl_performsUpdates) & 1) == 0)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
    v6 = a1;
    if (v2())
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v6, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

id sub_1A44029B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1A4402A38()
{
  result = qword_1EB139FE8;
  if (!qword_1EB139FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139FE8);
  }

  return result;
}

uint64_t sub_1A4402AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4402B60, v7, v6);
}

void *sub_1A4402B60()
{
  result = (*(v0[5] + 8))(v0[4]);
  v0[10] = result;
  v2 = result[2];
  v0[11] = v2;
  v0[12] = 0;
  if (v2)
  {
    if (result[2])
    {
      v0[13] = result[4];
      v3 = result[5];
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 40);
      swift_unknownObjectRetain();
      v10 = (v5 + *v5);
      v6 = swift_task_alloc();
      v0[14] = v6;
      *v6 = v0;
      v6[1] = sub_1A4402D2C;
      v8 = v0[2];
      v7 = v0[3];

      return v10(v8, v7, ObjectType, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v9 = v0[1];

    return v9(1);
  }

  return result;
}

uint64_t sub_1A4402D2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1A440303C;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1A4402E58;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A4402E58()
{
  v1 = v0[16];
  result = swift_unknownObjectRelease();
  if (v1 != 1)
  {
    v5 = v0[16];
    goto LABEL_5;
  }

  v3 = v0[11];
  v4 = v0[12] + 1;
  v0[12] = v4;
  if (v4 == v3)
  {
    v5 = 1;
LABEL_5:

    v6 = v0[1];

    return v6(v5);
  }

  v7 = v0[10];
  if (v4 >= *(v7 + 16))
  {
    __break(1u);
  }

  else
  {
    v8 = v7 + 16 * v4;
    v0[13] = *(v8 + 32);
    v9 = *(v8 + 40);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 40);
    swift_unknownObjectRetain();
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_1A4402D2C;
    v14 = v0[2];
    v13 = v0[3];

    return v15(v14, v13, ObjectType, v9);
  }

  return result;
}

uint64_t sub_1A440303C()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A44030D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3FBB594;

  return sub_1A4402AC0(a1, a2, a3, a4);
}

uint64_t sub_1A440318C(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3FBBB04;

  return v8(a1, a2);
}

unint64_t sub_1A44032F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A44043A0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1A4403368()
{
  v0._countAndFlagsBits = 0xD000000000000016;
  v0._object = 0x80000001A53D5C30;
  v1.value._countAndFlagsBits = 0xD000000000000021;
  v1.value._object = 0x80000001A53D5C50;
  TTRWorkflowStep.init(title:description:)(&v4, v0, v1);
  v2 = v4;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v7 = 4;
  TTRWorkflowStep.add(action:)(v5, &v3);
}

uint64_t sub_1A4403964(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(5, 0);
  (*((*v2 & *a1) + 0xB8))(0, 0xE000000000000000);
  v4 = 1;
  return (*((*v2 & *a1) + 0x1D0))(&v4);
}

void static TTRWorkflowFactory.presentDefaultWorkflow(in:context:attachmentImageURLs:attachmentFileURLs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TTRWorkflow.init(stepsBuilder:)(sub_1A4404648, &v7);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4403B24(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = sub_1A5240E64();
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  if (a2)
  {
    v12 = *(a2 + 16);
    if (v12)
    {
      v13 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1E0);
      v26 = (*MEMORY[0x1E69E7D40] & *a1) + 480;
      v27 = v13;
      v14 = *(v25 + 16);
      v15 = a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v16 = *(v25 + 72);
      v17 = (v25 + 8);
      do
      {
        v14(v11, v15, v5, v9);
        v27(v11);
        (*v17)(v11, v5);
        v15 += v16;
        --v12;
      }

      while (v12);
    }
  }

  if (v24)
  {
    v18 = *(v24 + 16);
    if (v18)
    {
      v27 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1E8);
      v19 = *(v25 + 16);
      v20 = v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v21 = *(v25 + 72);
      v22 = (v25 + 8);
      do
      {
        v19(v7, v20, v5, v9);
        v27(v7);
        (*v22)(v7, v5);
        v20 += v21;
        --v18;
      }

      while (v18);
    }
  }

  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0x200))(0, v9);
}

void static TTRWorkflowFactory.presentDefaultWorkflow(in:context:attachmentImageURLs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TTRWorkflow.init(stepsBuilder:)(sub_1A4404648, &v5);
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  *(v4 + 24) = 0;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static TTRWorkflowFactory.presentDefaultWorkflow(in:context:attachmentFileURLs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TTRWorkflow.init(stepsBuilder:)(sub_1A4404648, &v5);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id TTRWorkflowFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRWorkflowFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRWorkflowFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTRWorkflowFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRWorkflowFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A44043A0(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A44043E8()
{
  result = qword_1EB13A060;
  if (!qword_1EB13A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A060);
  }

  return result;
}

uint64_t objectdestroyTm_51()
{

  return swift_deallocObject();
}

uint64_t sub_1A44044E0(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(7, 0);
  if ((v4 - 1) > 5)
  {
    v6 = 2;
  }

  else
  {
    v6 = qword_1A5339A20[v4 - 1];
  }

  (*((*v5 & *a1) + 0x100))(v6, 0);
  v8 = 4;
  return (*((*v5 & *a1) + 0x1D0))(&v8);
}

void sub_1A44045F8()
{
  if (!qword_1EB13A068)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A068);
    }
  }
}

uint64_t sub_1A4404650()
{
  v0 = PHShortDescriptionForPhotosHighlightType();
  v1 = sub_1A524C674();

  return v1;
}

uint64_t sub_1A44046A0(unsigned __int16 a1)
{
  result = 9215458;
  if (a1 <= 1u)
  {
    if (a1)
    {
      return 0xA383E28FB8EF31;
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        return 0xA383E28FB8EF32;
      case 3u:
        return 0xA383E28FB8EF33;
      case 4u:
        return 8756450;
      default:
        return 9674210;
    }
  }

  return result;
}

void __swiftcall CMTimeRange.init(from:to:)(__C::CMTimeRange *__return_ptr retstr, Swift::Double from, Swift::Double to)
{
  CMTimeMakeWithSeconds(v6, from, 600);
  CMTimeMakeWithSeconds(v6, to, 600);
  sub_1A524D124();
  v5 = v6[1];
  *&retstr->start.value = v6[0];
  *&retstr->start.epoch = v5;
  *&retstr->duration.timescale = v6[2];
}

uint64_t sub_1A44047F8()
{
  result = sub_1A3C8B330();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_subtitleModel);

    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))();
  }

  return result;
}

void sub_1A44048AC()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1A524CCB4();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A524CC54();

    v7 = sub_1A524CC44();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;

    sub_1A3D4D930(0, 0, v2, &unk_1A5339AF8, v8);
  }
}

uint64_t sub_1A4404A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4404AC4, v6, v5);
}

uint64_t sub_1A4404AC4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong _updateSubtitle];
    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    sub_1A52415B4();
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_1A4404BD0(uint64_t a1, uint64_t a2, id (*a3)(void *a1), uint64_t a4)
{
  v8 = [v4 viewController];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = sub_1A3C8B330();
  if (!v10 || (v11 = v10, v12 = *(v10 + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_searchHomeCoordinator), , v11, !v12))
  {

LABEL_11:
    sub_1A524E6E4();
    __break(1u);
    return;
  }

  if (a2)
  {
    (*(*v12 + 232))();
    v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v14 = sub_1A524C634();
    v15 = [v13 initWithString_];

    LemonadeActiveSearchViewModel.searchText.setter(v15);
  }

  sub_1A3C52C70(0, &qword_1EB13A0B8);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:swift_getObjCClassFromMetadata() toolbarClass:0];
  sub_1A3C69A2C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A52F9790;
  *(v17 + 32) = (*(*v12 + 184))();
  sub_1A3C52C70(0, &qword_1EB126B10);
  v18 = sub_1A524CA14();

  [v16 setViewControllers_];

  v19 = [v16 navigationBar];
  [v19 setPrefersLargeTitles_];

  v20 = v16;
  [v20 setModalPresentationStyle_];
  sub_1A3C52C70(0, &qword_1EB13A0C0);
  v21 = sub_1A524D8D4();
  [v20 setPreferredTransition_];

  v22 = [v9 px_barAppearance];
  v29 = sub_1A4405014;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1A421179C;
  v28 = &block_descriptor_178;
  v23 = _Block_copy(&aBlock);
  [v22 performChangesWithAnimationOptions:0 changes:v23];
  _Block_release(v23);

  if (a3)
  {
    v29 = a3;
    v30 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1A3C2E0D0;
    v28 = &block_descriptor_13_6;
    v24 = _Block_copy(&aBlock);
  }

  else
  {
    v24 = 0;
  }

  [v9 presentViewController:v20 animated:1 completion:v24];
  _Block_release(v24);
}

id sub_1A4405180(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A4405244()
{
  result = [v0 viewController];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1A4405284()
{
  if (!qword_1EB125EE0)
  {
    v0 = type metadata accessor for PhotosSearchHomeCoordinator();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125EE0);
    }
  }
}

void sub_1A44052DC()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v1 + OBJC_IVAR____TtCE12PhotosUICoreCSo30PXCuratedLibraryBarsControllerP33_04793EA4CCDB9CADD5EFC766B5CE4AAD14AssociatedData_subtitleModel);
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x288);
    v6 = v4;
    v5();

    [v3 _updateSubtitle];
  }
}

uint64_t sub_1A4405398()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for PXZoomablePhotosViewModelChanged(0);
    sub_1A4405460(&qword_1EB120660, type metadata accessor for PXZoomablePhotosViewModelChanged);
    sub_1A524EE54();
  }

  return result;
}

uint64_t sub_1A4405460(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A44054B0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A4404A2C(v3, v4, v5, v2);
}

void (*sub_1A4405544())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A44054A8;
}

uint64_t sub_1A44055B0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);

  return sub_1A44055EC(v3, a2);
}

uint64_t sub_1A44055EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = a1;
  v6 = shouldUseNewCollectionsLayout()();
  v7 = 13;
  if (v6)
  {
    v7 = 41;
  }

  v26 = v7;
  v8 = shouldUseNewCollectionsLayout()();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x3FF8000000000000;
  }

  v27 = *(type metadata accessor for LemonadeICloudLinksFeedProvider() + 20);
  v10 = sub_1A3C47918();
  v12 = v11;
  v13 = sub_1A3C47918();
  v15 = v14;
  v16 = sub_1A3C52D68();
  v18 = v17;
  v20 = v19;
  v21 = sub_1A3C4ED50();
  v30 = v8;
  *v5 = v26;
  *(v5 + 1) = 1;
  v5[16] = 1;
  *(v5 + 3) = v9;
  v5[32] = v8;
  *(v5 + 5) = v10;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 8) = v15;
  *(v5 + 9) = v16;
  *(v5 + 10) = v18;
  v5[88] = v20;
  v5[89] = v21;
  swift_storeEnumTagMultiPayload();
  v22 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v5, 0, v22, v23 & 1, v28 + v27);
}

uint64_t type metadata accessor for LemonadeICloudLinksFeedProvider()
{
  result = qword_1EB17C4E0;
  if (!qword_1EB17C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A440579C()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A4405D04(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A4405830()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A4405D04(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  return sub_1A524C4B4();
}

uint64_t sub_1A44058BC()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A4405D04(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

unint64_t sub_1A44059A4()
{
  result = qword_1EB13A0D0;
  if (!qword_1EB13A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A0D0);
  }

  return result;
}

unint64_t sub_1A4405B0C()
{
  result = qword_1EB13A0D8;
  if (!qword_1EB13A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A0D8);
  }

  return result;
}

uint64_t sub_1A4405B8C(uint64_t a1)
{
  result = sub_1A4405D04(&qword_1EB1296F8, type metadata accessor for LemonadeICloudLinksFeedProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4405D04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4405D80(void **a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for iCloudLinkItemListManager(0);
  v4 = *(a2 + 24);
  v5 = objc_opt_self();
  v6 = v3;
  v7 = v4;
  v8 = [v5 specForLayoutVariant_];
  sub_1A3E4D48C();
}

uint64_t sub_1A4405E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 128))(v5);

  return sub_1A460B348(v5, a1, a2);
}

uint64_t sub_1A4405E7C@<X0>(void *a1@<X8>)
{
  v2 = swift_unknownObjectRetain();
  sub_1A3D96070(v2, &v4);
  *a1 = v4;
  type metadata accessor for LemonadeNavigationDestination();

  return swift_storeEnumTagMultiPayload();
}

id sub_1A4406010()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result momentShare];
  }

  return result;
}

uint64_t sub_1A4406060()
{
  sub_1A4405D04(&qword_1EB1296F0, type metadata accessor for LemonadeICloudLinksFeedProvider);

  return sub_1A3C47918();
}

BOOL static LemonadeAssetCollectionCurationKind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 6)
  {
    return v5 == 6;
  }

  if (v5 == 6)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v8 = v4;
  v7 = v5;
  return static LemonadeCurationKind.== infix(_:_:)(&v8, &v7);
}

uint64_t LemonadeAssetCollectionCurationKind.hash(into:)()
{
  if (*v0 == 6)
  {
    return MEMORY[0x1A590A010](1);
  }

  MEMORY[0x1A590A010](0);
  sub_1A44062C0();
  return sub_1A524C4B4();
}

unint64_t sub_1A44062C0()
{
  result = qword_1EB13A0E8;
  if (!qword_1EB13A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A0E8);
  }

  return result;
}

uint64_t LemonadeAssetCollectionCurationKind.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  if (v1 == 6)
  {
    MEMORY[0x1A590A010](1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A44062C0();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A4406390()
{
  v1 = *v0;
  sub_1A524EC94();
  if (v1 == 6)
  {
    MEMORY[0x1A590A010](1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A44062C0();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A440640C()
{
  if (*v0 == 6)
  {
    return MEMORY[0x1A590A010](1);
  }

  MEMORY[0x1A590A010](0);
  sub_1A44062C0();
  return sub_1A524C4B4();
}

uint64_t sub_1A4406484()
{
  v1 = *v0;
  sub_1A524EC94();
  if (v1 == 6)
  {
    MEMORY[0x1A590A010](1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A44062C0();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

BOOL sub_1A4406500(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = v5 == 6 && v4 == 6;
  if (v4 != 6 && v5 != 6)
  {
    v11 = v2;
    v12 = v3;
    v10 = v4;
    v9 = v5;
    return static LemonadeCurationKind.== infix(_:_:)(&v10, &v9);
  }

  return v6;
}

uint64_t dispatch thunk of LemonadeAssetCollectionCurationContext.assets(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D43A98;

  return v9(a1, a2, a3);
}

uint64_t sub_1A44066C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A4406734@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A44067B4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1A52479F4();
}

char *sub_1A4406828(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1A3C71204(0, &qword_1EB128B00, sub_1A4102970, MEMORY[0x1E695C070]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v13 = objc_allocWithZone(v4);
  v14 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSavedFromAppsWidgetViewModel__attributionAppIcon;
  v17[1] = 0;
  sub_1A4102970();
  sub_1A52479A4();
  (*(v10 + 32))(&v13[v14], v12, v9);
  v15 = [objc_allocWithZone(PXContentSyndicationAttributionInfo) initWithAsset_];
  *&v13[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSavedFromAppsWidgetViewModel_attributionInfo] = v15;
  return sub_1A4467460(a1, a2, a3);
}

uint64_t sub_1A44069A0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C71204(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_1A52404F4();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSavedFromAppsWidgetViewModel_attributionInfo) senderAppName];
  if (!v11)
  {
    sub_1A524D244();
    v25 = sub_1A475874C();
    swift_beginAccess();
    v26 = *v25;
    sub_1A5246DF4();

    goto LABEL_6;
  }

  v12 = v11;
  v13 = sub_1A524C674();
  v15 = v14;

  v29 = v13;
  v30 = v15;
  sub_1A52404A4();
  sub_1A3D5F9DC();
  v16 = sub_1A524DFE4();
  v18 = v17;
  (*(v7 + 8))(v10, v6);

  if (!v18)
  {
LABEL_6:
    v27 = sub_1A5240E64();
    return (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000026, 0x80000001A53C0430);
  MEMORY[0x1A5907B60](v16, v18);

  MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53C0460);
  v28 = 2200;
  v19 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v19);

  sub_1A5240E34();

  v20 = sub_1A5240E64();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    sub_1A3C6891C(v5, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    sub_1A524D244();
    v22 = sub_1A475874C();
    swift_beginAccess();
    v23 = *v22;
    sub_1A5246DF4();

    return (*(v21 + 56))(a1, 1, 1, v20);
  }

  else
  {
    (*(v21 + 32))(a1, v5, v20);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }
}

uint64_t sub_1A4406DDC@<X0>(uint64_t a1@<X8>)
{
  v13[0] = a1;
  v2 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3C71204(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_1A52407E4();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSavedFromAppsWidgetViewModel_attributionInfo) savedFromTitle];
  swift_getKeyPath();
  sub_1A52406B4();
  sub_1A418DEB4();
  sub_1A5240804();
  (*(v7 + 56))(v5, 0, 1, v6);
  (*(v7 + 32))(v10, v5, v6);
  transformSupportedAttributes(for:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1A44070D4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSavedFromAppsWidgetViewModel_attributionInfo) senderAppName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A524C674();
  v5 = v4;

  v6 = sub_1A524C634();
  v7 = PXLocalizedString(v6);

  sub_1A524C674();
  sub_1A3C71204(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A52F8E10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1A3D710E8();
  *(v8 + 32) = v3;
  *(v8 + 40) = v5;
  v9 = sub_1A524C644();

  return v9;
}

void sub_1A4407228()
{
  v1 = *&v0[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSavedFromAppsWidgetViewModel_attributionInfo];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1A4407308;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A3F287DC;
  v5[3] = &block_descriptor_179;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 fetchAppIconThumbnailImageWithCompletion_];
  _Block_release(v3);
}

uint64_t sub_1A4407308(void *a1)
{
  v3 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v5 = v3;
  return sub_1A52479F4();
}

id sub_1A440737C(void *a1)
{
  v1 = [a1 firstAsset];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A3C52C70(0, &qword_1EB1268C8);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 showAppAttributionWidget];

  if (v4)
  {
    v5 = [v2 px_wasSavedThroughExternalApp];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1A4407434()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSavedFromAppsWidgetViewModel__attributionAppIcon;
  sub_1A3C71204(0, &qword_1EB128B00, sub_1A4102970, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel()
{
  result = qword_1EB18EC98;
  if (!qword_1EB18EC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A44075DC()
{
  sub_1A3C71204(319, &qword_1EB128B00, sub_1A4102970, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t LemonadeCollectionCustomizationViewModel.CustomizationType.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4407744()
{
  sub_1A524EC94();
  LemonadeCollectionCustomizationViewModel.CustomizationType.hash(into:)();
  return sub_1A524ECE4();
}

uint64_t sub_1A4407780@<X0>(_BYTE *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  swift_getKeyPath();
  sub_1A4407A50();

  v4 = *((*v3 & *v1) + 0x60);
  result = swift_beginAccess();
  *a1 = *(v1 + v4);
  return result;
}

uint64_t sub_1A4407844@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4407780(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1A44078B8(char *a1)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  type metadata accessor for LemonadeCollectionCustomizationViewModel.CustomizationType();
  swift_getWitnessTable();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4407AE0();
  }

  return result;
}

uint64_t sub_1A4407A50()
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_1A52415D4();
}

uint64_t sub_1A4407AE0()
{
  swift_getObjectType();
  swift_getWitnessTable();
  return sub_1A52415C4();
}

uint64_t sub_1A4407BA8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  swift_getKeyPath();
  sub_1A4407A50();

  v4 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a1, &v1[v4]);
}

uint64_t sub_1A4407CE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  sub_1A440833C();
  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);

  return v5(a1);
}

id sub_1A4407D6C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = sub_1A44083F4(a1, a2, a3, a4);
  (*(*(*(v5 + 10) - 8) + 8))(a1);
  return v11;
}

Swift::Void __swiftcall LemonadeCollectionCustomizationViewModel.didComplete(undoManager:)(NSUndoManager_optional undoManager)
{
  isa = undoManager.value.super.isa;
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](undoManager.value.super.isa);
  v9 = &v11[-v8];
  sub_1A4407BA8(&v11[-v8]);
  sub_1A4407780(&v12);
  v10 = (v1 + *((*v4 & *v1) + 0x68));
  (*(*((v5 & v3) + 0x58) + 824))((v12 & 1) == 0, isa, *v10, v10[1], v6);
  (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall LemonadeCollectionCustomizationViewModel.didCancel()()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v5 = *(v4 - 8);
  (MEMORY[0x1EEE9AC00])();
  v7 = &v9[-v6];
  sub_1A4407BA8(&v9[-v6]);
  sub_1A4407780(&v10);
  v8 = (v0 + *((*v2 & *v0) + 0x68));
  (*(*((v3 & v1) + 0x58) + 832))((v10 & 1) == 0, *v8, v8[1], v4);
  (*(v5 + 8))(v7, v4);
}

id LemonadeCollectionCustomizationViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeCollectionCustomizationViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4408198(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  sub_1A3C33378(*&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x70)]);
  v5 = *((*v3 & *a1) + 0x78);
  v6 = sub_1A5241614();
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

uint64_t sub_1A44082C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A440833C()
{
  swift_getKeyPath();
  sub_1A4407AE0();
}

id sub_1A44083F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  ObjectType = swift_getObjectType();
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v13 = &v20 - v12;
  v14 = *a2;
  v15 = swift_getObjectType();
  v16 = *((v9 & v7) + 0x60);
  *(v4 + v16) = 0;
  sub_1A5241604();
  *(v4 + v16) = v14;
  (*(v11 + 16))(v13, a1, v10);
  (*(*(*(v15 + 80) - 8) + 32))(v4 + *((*v8 & *v4) + 0x70), v13);
  v17 = (v4 + *((*v8 & *v4) + 0x68));
  v18 = v23;
  *v17 = v22;
  v17[1] = v18;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_1A4408624()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4408738()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 24))(&v2[v5], v1);
  return swift_endAccess();
}

void sub_1A44087FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  sub_1A4409980();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v61[1] = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44094A8(0, &qword_1EB13A170, sub_1A4409980, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v61 - v10;
  sub_1A4409898(0, &qword_1EB13A160, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v61 - v15;
  v69 = sub_1A5249574();
  v132 = 1;
  v76 = a1;
  v17 = *(a1 + 8);
  sub_1A4A2FE80(v17);
  v73 = v11;
  v70 = v5;
  v71 = v4;
  v68 = v16;
  if (v18)
  {
    v81 = sub_1A524B574();
    v80 = sub_1A524A134();
    KeyPath = swift_getKeyPath();
    v78 = sub_1A524B434();
    v19 = sub_1A524A084();
    sub_1A5247BC4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    LOBYTE(v96) = 0;
    v77 = v19;
  }

  else
  {
    v80 = 0;
    v81 = 0;
    v78 = 0;
    KeyPath = 0;
    v77 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
  }

  v96 = sub_1A4A30034(v17);
  v97 = v28;
  v63 = sub_1A3D5F9DC();
  v29 = sub_1A524A464();
  v62 = v17;
  v31 = v30;
  v33 = v32;
  v96 = sub_1A524B454();
  v34 = sub_1A524A374();
  v36 = v35;
  v38 = v37;
  sub_1A3E04DF4(v29, v31, v33 & 1);

  sub_1A524A164();
  v39 = sub_1A524A344();
  v41 = v40;
  v43 = v42;
  sub_1A3E04DF4(v34, v36, v38 & 1);

  sub_1A524A0F4();
  v44 = sub_1A524A3C4();
  v65 = v45;
  v66 = v44;
  v64 = v46;
  v67 = v47;

  sub_1A3E04DF4(v39, v41, v43 & 1);

  v96 = sub_1A4A30F20(v62);
  v97 = v48;
  v49 = sub_1A524A464();
  v51 = v50;
  LOBYTE(v34) = v52;
  v54 = v53;
  sub_1A524BC74();
  sub_1A5248AD4();
  LOBYTE(v36) = v34 & 1;
  v145 = v34 & 1;
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v146 = 1;
  v57 = sub_1A524B434();
  v58 = sub_1A524A0F4();
  v59 = swift_getKeyPath();
  *&v141 = v81;
  *(&v141 + 1) = KeyPath;
  *&v142 = v80;
  *(&v142 + 1) = v78;
  *&v143 = v77;
  *(&v143 + 1) = v21;
  *v144 = v23;
  *&v144[8] = v25;
  *&v144[16] = v27;
  v144[24] = 0;
  v130 = v143;
  v131[0] = *v144;
  *(v131 + 9) = *&v144[9];
  v129 = v142;
  v128 = v141;
  *&v82 = v49;
  *(&v82 + 1) = v51;
  LOBYTE(v83) = v36;
  v60 = v54;
  *(&v83 + 1) = v54;
  v84 = v133;
  v85 = v134;
  v89 = v138;
  v90 = v139;
  v88 = v137;
  v86 = v135;
  v87 = v136;
  *&v91 = v55;
  BYTE8(v91) = 1;
  v92 = v56;
  v93 = 0;
  LOBYTE(v94) = 1;
  *(&v94 + 1) = v57;
  *&v95 = v59;
  *(&v95 + 1) = v58;
  v127 = v95;
  v126 = v94;
  v125 = v56;
  v117 = v133;
  v118 = v134;
  v115 = v82;
  v116 = v83;
  v123 = v139;
  v124 = v91;
  v121 = v137;
  v122 = v138;
  v119 = v135;
  v120 = v136;
  v104 = v137;
  v105 = v138;
  v106 = v139;
  LOBYTE(v54) = v64 & 1;
  v140[320] = v64 & 1;
  v64 &= 1u;
  v96 = v49;
  v97 = v51;
  v98 = v36;
  v100 = v133;
  v101 = v134;
  v102 = v135;
  v103 = v136;
  v99 = v60;
  v107 = v55;
  v108 = 1;
  v109 = v56;
  v110 = 0;
  v111 = 1;
  v112 = v57;
  v113 = v59;
  v114 = v58;
  sub_1A440AF70(&v141, v140, sub_1A4409584);
  sub_1A3E75E68(v66, v65, v54);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4409270()
{
  if (!qword_1EB13A0F0)
  {
    sub_1A44092D8(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A0F0);
    }
  }
}

void sub_1A440930C()
{
  if (!qword_1EB13A100)
  {
    sub_1A44093E0();
    sub_1A4409898(255, &qword_1EB13A160, MEMORY[0x1E697F960]);
    sub_1A44094A8(255, &qword_1EB13A170, sub_1A4409980, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13A100);
    }
  }
}

void sub_1A44093E0()
{
  if (!qword_1EB13A108)
  {
    sub_1A4409474(255);
    sub_1A4409DCC(&qword_1EB13A158, sub_1A4409474);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A108);
    }
  }
}

void sub_1A44094A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A440950C()
{
  if (!qword_1EB13A118)
  {
    sub_1A4409584(255);
    sub_1A44096A0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13A118);
    }
  }
}

void sub_1A44095B8()
{
  if (!qword_1EB13A128)
  {
    sub_1A44096C8(255, &qword_1EB13A130, sub_1A3E352FC);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A128);
    }
  }
}

void sub_1A4409634(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A440B0B8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A44096C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A440992C(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4409760()
{
  if (!qword_1EB13A148)
  {
    sub_1A44097E0();
    sub_1A4409634(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A148);
    }
  }
}

void sub_1A44097E0()
{
  if (!qword_1EB13A150)
  {
    sub_1A440992C(255, &unk_1EB124040, MEMORY[0x1E6981148], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A440B0B8(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A150);
    }
  }
}

void sub_1A4409898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A440992C(255, &qword_1EB13A168, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for GenerativeStoryInlineActionButton);
    v7 = a3(a1, v6, MEMORY[0x1E6981E70]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A440992C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4409980()
{
  if (!qword_1EB13A178)
  {
    sub_1A4409A54();
    sub_1A4409AF8(255);
    sub_1A5248A44();
    sub_1A4409E48();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A178);
    }
  }
}

void sub_1A4409A54()
{
  if (!qword_1EB13A180)
  {
    sub_1A4409AF8(255);
    sub_1A5248A44();
    sub_1A4409E48();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A180);
    }
  }
}

void sub_1A4409B20(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A44096C8(255, a3, a4);
    sub_1A4409634(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4409BA8()
{
  if (!qword_1EB13A198)
  {
    sub_1A4409C58(255);
    sub_1A4409DCC(&qword_1EB13A1C8, sub_1A4409C58);
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A198);
    }
  }
}

void sub_1A4409C8C()
{
  if (!qword_1EB13A1A8)
  {
    sub_1A4409CFC();
    sub_1A4409E14(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13A1A8);
    }
  }
}

void sub_1A4409CFC()
{
  if (!qword_1EB13A1B0)
  {
    sub_1A4409D64();
    sub_1A3F33AEC();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A1B0);
    }
  }
}

void sub_1A4409D64()
{
  if (!qword_1EB13A1B8)
  {
    sub_1A3DF14C0();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A1B8);
    }
  }
}

uint64_t sub_1A4409DCC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4409E48()
{
  result = qword_1EB13A1D0;
  if (!qword_1EB13A1D0)
  {
    sub_1A4409AF8(255);
    sub_1A4409EE8();
    sub_1A440B190(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A1D0);
  }

  return result;
}

unint64_t sub_1A4409EE8()
{
  result = qword_1EB13A1D8;
  if (!qword_1EB13A1D8)
  {
    sub_1A44096C8(255, &qword_1EB13A190, sub_1A4409BA8);
    sub_1A4409DCC(&qword_1EB13A1E0, sub_1A4409BA8);
    sub_1A3F33024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A1D8);
  }

  return result;
}

void sub_1A4409FB4()
{
  if (!qword_1EB13A1E8)
  {
    sub_1A440A014();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A1E8);
    }
  }
}

void sub_1A440A014()
{
  if (!qword_1EB13A1F0)
  {
    sub_1A44092D8(255);
    sub_1A4409DCC(&qword_1EB13A1F8, sub_1A44092D8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A1F0);
    }
  }
}

void sub_1A440A0A8()
{
  sub_1A4409898(0, &qword_1EB13A210, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13[-v2 - 8];
  sub_1A440992C(0, &qword_1EB13A168, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for GenerativeStoryInlineActionButton);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5 - 8];
  v16 = *(v0 + 8);
  v7 = v16;
  sub_1A3DBD9A0();
  if (swift_dynamicCast() && (v8 = v15, sub_1A440B338(v14, v15), v8 >= 4))
  {
    v9 = swift_allocObject();
    v10 = *(v0 + 48);
    v9[3] = *(v0 + 32);
    v9[4] = v10;
    v9[5] = *(v0 + 64);
    v11 = *(v0 + 16);
    v9[1] = *v0;
    v9[2] = v11;
    sub_1A3DBA100(v0, v13);
    sub_1A4A4E6EC(sub_1A440B34C, v9, sub_1A440A72C, 0, v6);
    sub_1A440B398(v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_1A440B2B4();
    sub_1A5249744();
    sub_1A440B428(v6);
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    sub_1A440B2B4();
    sub_1A5249744();
  }
}

uint64_t sub_1A440A324@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_1A5248A44();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4409AF8(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4409A54();
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1;
  sub_1A4409C58(0);
  sub_1A4409DCC(&qword_1EB13A1C8, sub_1A4409C58);
  sub_1A524A2C4();
  v16 = sub_1A524B434();
  sub_1A44096C8(0, &qword_1EB13A190, sub_1A4409BA8);
  *&v11[*(v17 + 36)] = v16;
  sub_1A524A184();
  v18 = *MEMORY[0x1E6980E08];
  v19 = sub_1A524A154();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v7, v18, v19);
  (*(v20 + 56))(v7, 0, 1, v19);
  v21 = sub_1A524A1B4();
  sub_1A440B050(v7, sub_1A3E75D84);
  KeyPath = swift_getKeyPath();
  v23 = &v11[*(v9 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_1A5248A34();
  v24 = sub_1A4409E48();
  v25 = MEMORY[0x1E697C270];
  sub_1A524B1E4();
  (*(v30 + 8))(v4, v2);
  sub_1A440B050(v11, sub_1A4409AF8);
  v33 = v9;
  v34 = v2;
  v35 = v24;
  v36 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v28;
  sub_1A524AEB4();
  return (*(v29 + 8))(v15, v26);
}

uint64_t sub_1A440A72C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXMemoryCreationLocalizedString(v2);

  sub_1A524C674();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1A440A7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1A4409E14(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  sub_1A4409CFC();
  v9 = v8;
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v32 = *(a1 + 32);
  sub_1A440B0B8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v25 = a1;
  v30 = a1;
  sub_1A3DF14C0();
  v16 = v15;
  sub_1A405D614();
  v26 = v16;
  sub_1A524BA24();
  v31 = sub_1A524B414();
  *&v14[*(v9 + 36)] = sub_1A524B8E4();
  sub_1A3C52C70(0, &qword_1EB126860);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 showDebugUIGenerationProgress];

  if (v18)
  {
    v32 = *(v25 + 48);
    sub_1A524B6C4();
    MEMORY[0x1EEE9AC00](v31);
    sub_1A524BA24();
    v31 = sub_1A524B414();
    *&v11[*(v9 + 36)] = sub_1A524B8E4();
    sub_1A440B250(v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v27 + 56))(v7, v19, 1, v9);
  sub_1A440AF70(v14, v11, sub_1A4409CFC);
  v20 = v29;
  sub_1A440AF70(v7, v29, sub_1A4409E14);
  v21 = v28;
  sub_1A440AF70(v11, v28, sub_1A4409CFC);
  sub_1A4409C8C();
  sub_1A440AF70(v20, v21 + *(v22 + 48), sub_1A4409E14);
  sub_1A440B050(v7, sub_1A4409E14);
  sub_1A440B050(v14, sub_1A4409CFC);
  sub_1A440B050(v20, sub_1A4409E14);
  return sub_1A440B050(v11, sub_1A4409CFC);
}

void sub_1A440AC40(uint64_t a1@<X8>)
{
  *a1 = 0x1000000000000021;
  *(a1 + 8) = 0x80000001A53D6380;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

void sub_1A440AC70(uint64_t a1@<X8>)
{
  *a1 = 0x100000000000001ELL;
  *(a1 + 8) = 0x80000001A53D6360;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A440ACA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A524B694();
  sub_1A524B694();
  result = sub_1A524B694();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  *(a5 + 64) = v11;
  *(a5 + 72) = v12;
  return result;
}

void sub_1A440AD98(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v6[2] = v1[2];
  v6[3] = v3;
  v6[4] = v1[4];
  v4 = v1[1];
  v6[0] = *v1;
  v6[1] = v4;
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  sub_1A4409270();
  sub_1A44087FC(v6, a1 + *(v5 + 44));
}

unint64_t sub_1A440AE40()
{
  result = qword_1EB13A200;
  if (!qword_1EB13A200)
  {
    sub_1A4409FB4();
    sub_1A4409DCC(&qword_1EB13A208, sub_1A440A014);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A200);
  }

  return result;
}

uint64_t sub_1A440AEF0(uint64_t a1, uint64_t a2)
{
  sub_1A4409898(0, &qword_1EB13A160, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A440AF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A440AFD8(uint64_t a1)
{
  sub_1A4409898(0, &qword_1EB13A160, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A440B050(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A440B0B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A440B108@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + 8);
  sub_1A3DBD9A0();
  v4 = sub_1A524C714();
  v6 = v5;
  result = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1A440B190(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4409634(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A440B1E0(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A440B250(uint64_t a1, uint64_t a2)
{
  sub_1A4409CFC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A440B2B4()
{
  result = qword_1EB13A218;
  if (!qword_1EB13A218)
  {
    sub_1A440992C(255, &qword_1EB13A168, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for GenerativeStoryInlineActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A218);
  }

  return result;
}

uint64_t sub_1A440B338(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1A440B398(uint64_t a1, uint64_t a2)
{
  sub_1A440992C(0, &qword_1EB13A168, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for GenerativeStoryInlineActionButton);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A440B428(uint64_t a1)
{
  sub_1A440992C(0, &qword_1EB13A168, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for GenerativeStoryInlineActionButton);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static PHFetchOptions.px_placesFetchOptions(with:)(void *a1)
{
  [a1 setIncludeAssetSourceTypes_];
  [a1 setIncludeHiddenAssets_];
  [a1 setIncludeGuestAssets_];

  return a1;
}

void sub_1A440B550()
{
  if (!qword_1EB13A228)
  {
    sub_1A440B5AC();
    v0 = sub_1A5248614();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A228);
    }
  }
}

unint64_t sub_1A440B5AC()
{
  result = qword_1EB13A230;
  if (!qword_1EB13A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A230);
  }

  return result;
}

uint64_t sub_1A440B600@<X0>(uint64_t *a1@<X8>)
{
  sub_1A440B640();
  swift_allocObject();
  result = sub_1A5242844();
  *a1 = result;
  return result;
}

void sub_1A440B640()
{
  if (!qword_1EB1291D8)
  {
    v0 = sub_1A5242854();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1291D8);
    }
  }
}

void sub_1A440B698(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A440B51C(0);
  sub_1A524B694();
  *(a4 + 40) = v17;
  type metadata accessor for LemonadeSocialGroupFeedView();
  sub_1A440B640();
  sub_1A5247C74();
  v8 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  *a4 = a1;
  *(a4 + 8) = v8;
  v9 = *(v8 + 16);
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  v10 = *(v8 + 40);
  *(a4 + 32) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  type metadata accessor for LemonadeSocialGroupSectionProvider(0);
  v12 = v10;
  v13 = v9;
  v14 = v12;
  v15 = v13;

  sub_1A5247C74();
  *(swift_allocObject() + 16) = v15;
  type metadata accessor for LemonadePeopleProgressStatus();
  v16 = v15;
  sub_1A5247C74();
}

uint64_t type metadata accessor for LemonadeSocialGroupFeedView()
{
  result = qword_1EB1660C0;
  if (!qword_1EB1660C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A440B8A8(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2A0))();
  }

  else
  {
    v5 = 0;
  }

  v6 = v3;
  v7 = v4;

  sub_1A4965B64(v7, v3, 0, v5 & 1, 0, a1);
}

uint64_t sub_1A440B94C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LemonadePeopleProgressStatus();
  result = sub_1A3F53C40(v3);
  *a1 = result;
  return result;
}

void sub_1A440B98C(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for LemonadeSocialGroupFeedView();
  v20 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v21 = v2;
  v22 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeSocialGroupSectionProvider(0);
  MEMORY[0x1EEE9AC00](v12);
  sub_1A440C244();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A440C2F4();
  v13 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1A440C380();
  v14 = *(v5 - 8);
  v15 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1A440C594();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v16 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A440C664();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v23 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E697DA80];
  sub_1A440CEAC(0, &qword_1EB13A280, type metadata accessor for LemonadeSocialGroupSectionProvider, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v17 = v1;
  sub_1A440CEAC(0, &qword_1EB13A288, sub_1A440B640, v10);

  sub_1A5247C84();
  sub_1A440C4D0(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A440C244()
{
  if (!qword_1EB13A238)
  {
    type metadata accessor for LemonadeSocialGroupSectionProvider(255);
    sub_1A440C4D0(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A238);
    }
  }
}

void sub_1A440C2F4()
{
  if (!qword_1EB13A248)
  {
    sub_1A440C244();
    sub_1A440C7B4(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A248);
    }
  }
}

void sub_1A440C380()
{
  if (!qword_1EB13A250)
  {
    sub_1A440C2F4();
    sub_1A440C420();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A250);
    }
  }
}

unint64_t sub_1A440C420()
{
  result = qword_1EB13A258;
  if (!qword_1EB13A258)
  {
    sub_1A440C2F4();
    sub_1A440C4D0(&qword_1EB13A260, sub_1A440C244);
    sub_1A440C518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A258);
  }

  return result;
}

uint64_t sub_1A440C4D0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A440C518()
{
  result = qword_1EB1277D0;
  if (!qword_1EB1277D0)
  {
    sub_1A440C7B4(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1277D0);
  }

  return result;
}

void sub_1A440C594()
{
  if (!qword_1EB13A268)
  {
    sub_1A440C380();
    sub_1A440C2F4();
    sub_1A440C420();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A268);
    }
  }
}

void sub_1A440C664()
{
  if (!qword_1EB13A270)
  {
    sub_1A440C594();
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A440C380();
    sub_1A440C2F4();
    sub_1A440C420();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A440C4D0(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A270);
    }
  }
}

void sub_1A440C7B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A440C804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSocialGroupFeedView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A440C868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A440C8D0()
{
  v1 = type metadata accessor for LemonadeSocialGroupFeedView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1A440CEAC(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v3 = sub_1A49AAA74();

  if (v3)
  {
    LOBYTE(v8[0]) = 3;
    sub_1A3F5CDFC(v8, *(*(v2 + 8) + 16), &v9);
    LOBYTE(v8[0]) = v9;
    v8[1] = *(&v9 + 1);
    sub_1A440B550();
    v5 = objc_allocWithZone(v4);
    v6 = sub_1A52485F4();
    v9 = *(v2 + 40);
    v8[0] = v6;
  }

  else
  {
    v9 = *(v2 + 40);
    v8[0] = 0;
  }

  sub_1A440CEAC(0, &qword_1EB13A290, sub_1A440B51C, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A440CA4C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeSocialGroupFeedToolbar();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 8);
  type metadata accessor for LemonadeSocialGroupFeedView();
  sub_1A440CEAC(0, &qword_1EB13A288, sub_1A440B640, MEMORY[0x1E697DA80]);

  sub_1A5247C84();
  sub_1A4486B44(v5, v8[1], v4);
  v6 = sub_1A440C4D0(&qword_1EB125490, type metadata accessor for LemonadeSocialGroupFeedToolbar);
  MEMORY[0x1A5904CD0](v4, v2, v6);
  return sub_1A440CF10(v4, type metadata accessor for LemonadeSocialGroupFeedToolbar);
}

void sub_1A440CBBC()
{
  if (!qword_1EB122338)
  {
    type metadata accessor for LemonadeSocialGroupFeedToolbar();
    sub_1A440C4D0(&qword_1EB125490, type metadata accessor for LemonadeSocialGroupFeedToolbar);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122338);
    }
  }
}

void sub_1A440CCB8()
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadePhotoLibraryContext();
    if (v1 <= 0x3F)
    {
      sub_1A440CEAC(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A440CEAC(319, &qword_1EB13A290, sub_1A440B51C, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A440CEAC(319, &qword_1EB13A280, type metadata accessor for LemonadeSocialGroupSectionProvider, MEMORY[0x1E697DA80]);
          if (v4 <= 0x3F)
          {
            sub_1A440CEAC(319, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
            if (v5 <= 0x3F)
            {
              sub_1A440CEAC(319, &qword_1EB13A288, sub_1A440B640, MEMORY[0x1E697DA80]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A440CEAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A440CF10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PXSharedAlbumActionNavigationController.actionControllerDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_1A440D0D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionControllerDelegate];
  *a2 = result;
  return result;
}

uint64_t _s22SharedAlbumsActionViewVMa()
{
  result = qword_1EB157B30;
  if (!qword_1EB157B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A440D1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_1A440D8E8();
  v45 = v3;
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4411584(0, &qword_1EB13A318, MEMORY[0x1E697F948]);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  sub_1A440D834();
  v43 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v47 = v12;
  v48 = v13;
  sub_1A4411520(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v14 = sub_1A524B6A4();
  v15 = v46;
  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v46) + 0x1D8))(v14);

  if (v17 >> 62)
  {
    v18 = sub_1A524E2B4();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 >= 1)
  {
    v47 = v12;
    v48 = v13;
    v19 = sub_1A524B6A4();
    v20 = v46;
    v21 = (*((*v16 & *v46) + 0x370))(v19);
    v23 = v22;

    v24 = sub_1A44B8260();
    if (v21 == *v24 && v23 == v24[1])
    {
    }

    else
    {
      v25 = sub_1A524EAB4();

      if ((v25 & 1) == 0)
      {
        _s22SharedAlbumsActionViewVMa();
        v32 = type metadata accessor for SharedAlbumAddToView(0);
        v33 = sub_1A4410FFC(&qword_1EB13A2D0, type metadata accessor for SharedAlbumAddToView);
        v34 = v40;
        sub_1A524AD74();
        v35 = v41;
        v36 = v45;
        (*(v41 + 16))(v7, v34, v45);
        swift_storeEnumTagMultiPayload();
        v37 = type metadata accessor for SharedAlbumCreationView();
        v38 = sub_1A4410FFC(&qword_1EB136188, type metadata accessor for SharedAlbumCreationView);
        v47 = v37;
        v48 = v38;
        swift_getOpaqueTypeConformance2();
        v47 = v32;
        v48 = v33;
        swift_getOpaqueTypeConformance2();
        sub_1A5249744();
        return (*(v35 + 8))(v34, v36);
      }
    }
  }

  _s22SharedAlbumsActionViewVMa();
  v26 = type metadata accessor for SharedAlbumCreationView();
  v27 = sub_1A4410FFC(&qword_1EB136188, type metadata accessor for SharedAlbumCreationView);
  sub_1A524AD74();
  v28 = v43;
  (*(v9 + 16))(v7, v11, v43);
  swift_storeEnumTagMultiPayload();
  v47 = v26;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = type metadata accessor for SharedAlbumAddToView(255);
  v30 = sub_1A4410FFC(&qword_1EB13A2D0, type metadata accessor for SharedAlbumAddToView);
  v47 = v29;
  v48 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1A5249744();
  return (*(v9 + 8))(v11, v28);
}

void sub_1A440D7B0()
{
  if (!qword_1EB13A2B0)
  {
    sub_1A4411584(255, &qword_1EB13A2B8, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A2B0);
    }
  }
}

void sub_1A440D834()
{
  if (!qword_1EB13A2C0)
  {
    type metadata accessor for SharedAlbumCreationView();
    sub_1A4410FFC(&qword_1EB136188, type metadata accessor for SharedAlbumCreationView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A2C0);
    }
  }
}

void sub_1A440D8E8()
{
  if (!qword_1EB13A2C8)
  {
    type metadata accessor for SharedAlbumAddToView(255);
    sub_1A4410FFC(&qword_1EB13A2D0, type metadata accessor for SharedAlbumAddToView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A2C8);
    }
  }
}

uint64_t sub_1A440D99C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
    swift_beginAccess();
    sub_1A3CB6AA8(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    if (!(*(*(v3 - 8) + 48))(v1 + v2, 1, v3))
    {

      sub_1A5245C94();
    }

    return swift_endAccess();
  }

  else
  {
    type metadata accessor for HostingViewControllerProvider();
    sub_1A4410FFC(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider);
    result = sub_1A5248BA4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A440DBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A440DC18()
{
  result = qword_1EB136180;
  if (!qword_1EB136180)
  {
    sub_1A3CB6AA8(255, &qword_1EB12E7A8, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136180);
  }

  return result;
}

uint64_t sub_1A440DC9C(uint64_t a1, uint64_t a2)
{
  v4 = _s22SharedAlbumsActionViewVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A440DD04()
{
  if (!qword_1EB13A2D8)
  {
    sub_1A440DD64();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A2D8);
    }
  }
}

void sub_1A440DD64()
{
  if (!qword_1EB13A2E0)
  {
    sub_1A4411584(255, &qword_1EB13A2B8, MEMORY[0x1E697F960]);
    sub_1A440DDE4();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13A2E0);
    }
  }
}

unint64_t sub_1A440DDE4()
{
  result = qword_1EB13A2E8;
  if (!qword_1EB13A2E8)
  {
    sub_1A4411584(255, &qword_1EB13A2B8, MEMORY[0x1E697F960]);
    type metadata accessor for SharedAlbumCreationView();
    sub_1A4410FFC(&qword_1EB136188, type metadata accessor for SharedAlbumCreationView);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for SharedAlbumAddToView(255);
    sub_1A4410FFC(&qword_1EB13A2D0, type metadata accessor for SharedAlbumAddToView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A2E8);
  }

  return result;
}

void sub_1A440DF3C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  *a2 = sub_1A524BC74();
  a2[1] = v6;
  sub_1A440D7B0();
  sub_1A440D1E4(v2, a2 + *(v7 + 44));
  sub_1A440DBB0(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s22SharedAlbumsActionViewVMa);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1A440DC9C(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_1A440DD04();
  v11 = (a2 + *(v10 + 36));
  *v11 = sub_1A4411600;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
}

void sub_1A440E070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1A4411520(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32[2] = v32 - v8;
  v33 = _s22SharedAlbumsActionViewVMa();
  MEMORY[0x1EEE9AC00](v33);
  sub_1A4411520(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = v32 - v10;
  v11 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5240E64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel] = 0;
  v4[OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView] = 0;
  if (a2)
  {
    v18 = sub_1A524C634();
  }

  else
  {
    v18 = 0;
  }

  v36.receiver = v4;
  v36.super_class = PXSharedAlbumActionNavigationController;
  v19 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, v18, a3);

  v32[1] = a3;
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 systemPhotoLibraryURL];
  sub_1A5240DE4();

  v23 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v24 = sub_1A5240D44();
  v25 = [v23 initWithPhotoLibraryURL_];

  (*(v15 + 8))(v17, v14);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for LemonadeDetailsContext();
  v27 = v34;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  type metadata accessor for LemonadePhotoLibraryContext();
  v28 = v25;
  v29 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v28, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&aBlock);
  v30 = v21;
  sub_1A3C799F0(v13, 0, 0, v21, v27, &aBlock, v29, 2);
  sub_1A44109A0(v28);
  type metadata accessor for SharedAlbumActionViewModel();
  *(swift_allocObject() + 16) = v30;
  v31 = v30;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A440E7BC(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    v7 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v7, v2);
    v8 = a1;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "Error prefetching sensitive content analyis policy. Error: %@", v11, 0xCu);
      sub_1A3CB65E4(v12);
      MEMORY[0x1A590EEC0](v12, -1, -1);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

id PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v5 = sub_1A524CA14();

  v6 = sub_1A524C634();

  if (a4)
  {
    sub_1A3C52C70(0, &qword_1EB12B618);
    v7 = sub_1A524C3D4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAssets:v5 batchComment:v6 perAssetCreationOptions:v7];

  return v8;
}

void PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v33 = a1;
  sub_1A4411520(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v29 = &v29 - v7;
  v30 = _s22SharedAlbumsActionViewVMa();
  MEMORY[0x1EEE9AC00](v30);
  sub_1A4411520(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v29 - v9;
  v10 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5240E64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel] = 0;
  v5[OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView] = 0;
  v35.receiver = v5;
  v35.super_class = PXSharedAlbumActionNavigationController;
  v17 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 systemPhotoLibraryURL];
  sub_1A5240DE4();

  v21 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v22 = sub_1A5240D44();
  v23 = [v21 initWithPhotoLibraryURL_];

  (*(v14 + 8))(v16, v13);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for LemonadeDetailsContext();
  v25 = v31;
  (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  type metadata accessor for LemonadePhotoLibraryContext();
  v26 = v23;
  v27 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v26, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v34);
  v28 = v19;
  sub_1A3C799F0(v12, 0, 0, v19, v25, &v34, v27, 2);
  sub_1A44109A0(v26);
  type metadata accessor for SharedAlbumActionViewModel();
  *(swift_allocObject() + 16) = v28;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v8 = sub_1A524CA14();

  v9 = sub_1A524C634();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB12B618);
  v10 = sub_1A524C3D4();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1A524C634();

LABEL_6:
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAssets:v8 batchComment:v9 perAssetCreationOptions:v10 selectedPostToAlbumUUID:v11];

  return v12;
}

void PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a6;
  v35 = a4;
  v36 = a5;
  v33 = a1;
  sub_1A4411520(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31[1] = v31 - v9;
  v32 = _s22SharedAlbumsActionViewVMa();
  MEMORY[0x1EEE9AC00](v32);
  sub_1A4411520(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v31 - v11;
  v13 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5240E64();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel] = 0;
  v7[OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView] = 0;
  v38.receiver = v7;
  v38.super_class = PXSharedAlbumActionNavigationController;
  v20 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemPhotoLibraryURL];
  sub_1A5240DE4();

  v24 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v25 = sub_1A5240D44();
  v26 = [v24 initWithPhotoLibraryURL_];

  (*(v17 + 8))(v19, v16);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  type metadata accessor for LemonadePhotoLibraryContext();
  v28 = v26;
  v29 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v28, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v37);
  v30 = v22;
  sub_1A3C799F0(v15, 0, 0, v22, v12, &v37, v29, 2);
  sub_1A44109A0(v28);
  type metadata accessor for SharedAlbumActionViewModel();
  *(swift_allocObject() + 16) = v30;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id PXSharedAlbumActionNavigationController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void PXSharedAlbumActionNavigationController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel) = 0;
  *(v0 + OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView) = 0;
  sub_1A524E6E4();
  __break(1u);
}

Swift::Void __swiftcall PXSharedAlbumActionNavigationController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v2;
  v43.super_class = PXSharedAlbumActionNavigationController;
  objc_msgSendSuper2(&v43, sel_viewWillAppear_, a1, v6);
  v9 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v10 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v11 = sub_1A5240D44();
  v12 = [v10 initWithPhotoLibraryURL_];

  (*(v5 + 8))(v8, v4);
  if (([v12 isSharedAlbumsEnabled] & 1) == 0)
  {
    v13 = sub_1A524C634();
    v14 = PXLocalizedSharedAlbumsString(v13);

    sub_1A524C674();
    v15 = sub_1A524C634();
    v16 = PXLocalizedSharedAlbumsString(v15);

    sub_1A524C674();
    v17 = sub_1A524C634();
    v18 = PXLocalizedString(v17);

    sub_1A524C674();
    v19 = sub_1A524C634();
    v20 = PXLocalizedString(v19);

    v36[1] = sub_1A524C674();
    v21 = sub_1A524C634();

    v22 = sub_1A524C634();

    v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    v25 = v2;
    v26 = sub_1A524C634();

    v41 = sub_1A4410C78;
    v42 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1A3D7692C;
    v40 = &block_descriptor_180;
    v27 = _Block_copy(&aBlock);

    v28 = objc_opt_self();
    v29 = [v28 actionWithTitle:v26 style:0 handler:v27];
    _Block_release(v27);

    [v23 addAction_];
    v30 = swift_allocObject();
    *(v30 + 16) = v25;
    v31 = v25;
    v32 = sub_1A524C634();

    v41 = sub_1A4410D50;
    v42 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1A3D7692C;
    v40 = &block_descriptor_16_7;
    v33 = _Block_copy(&aBlock);

    v34 = [v28 actionWithTitle:v32 style:1 handler:v33];
    _Block_release(v33);

    [v23 addAction_];
    v41 = PXDisplayCollectionDetailedCountsMake;
    v42 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1A3C2E0D0;
    v40 = &block_descriptor_19_3;
    v35 = _Block_copy(&aBlock);
    [v31 presentViewController:v23 animated:1 completion:v35];

    _Block_release(v35);
    v12 = v23;
  }
}

Swift::Void __swiftcall PXSharedAlbumActionNavigationController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1);
  if (([v1 didDismissSharedAlbumsActionView] & 1) == 0)
  {
    v3 = [v1 viewModel];
    if (v3)
    {
      v4 = v3;
      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x6E0))(0, 0);
    }

    [v2 setViewModel_];
  }
}

Swift::Void __swiftcall PXSharedAlbumActionNavigationController.setAssets(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 viewModel];
  if (v8)
  {
    v13[1] = v8;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = sub_1A3C56D80();
  (*(v4 + 16))(v7, v9, v3);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Trying to set assets in SharedAlbumActionNavigationController before viewModel is set", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

id sub_1A44106BC(char a1, void *a2, id a3)
{
  v6 = [a3 actionControllerDelegate];
  if (v6)
  {
    if (a1)
    {
      if (a2)
      {
        v7 = v6;
        a2 = sub_1A5240B74();
        v6 = v7;
      }

      [v6 sharedAlbumActionControllerDidFinish:a3 error:a2];
    }

    else
    {
      if (a2)
      {
        v8 = v6;
        v9 = a2;
        v10 = sub_1A5240B74();
        [v8 sharedAlbumActionControllerDidFinish:a3 error:v10];
        swift_unknownObjectRelease();

        goto LABEL_10;
      }

      [v6 sharedAlbumActionControllerDidCancel_];
    }

    swift_unknownObjectRelease();
  }

LABEL_10:

  return [a3 setDidDismissSharedAlbumsActionView_];
}

id PXSharedAlbumActionNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v2 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v2];
}

id PXSharedAlbumActionNavigationController.init(rootViewController:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRootViewController_];

  return v2;
}

id sub_1A44109A0(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A4411520(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A531D3E0;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1A3D710E8();
  *(v2 + 64) = v4;
  v5 = MEMORY[0x1E69E75F8];
  *(v2 + 32) = 0x737574617473;
  *(v2 + 40) = 0xE600000000000000;
  v6 = MEMORY[0x1E69E7660];
  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 72) = 1;
  *(v2 + 136) = v3;
  *(v2 + 144) = v4;
  *(v2 + 112) = 0xD000000000000010;
  *(v2 + 120) = 0x80000001A53D67A0;
  v7 = MEMORY[0x1E69E65A8];
  *(v2 + 176) = MEMORY[0x1E69E6530];
  *(v2 + 184) = v7;
  *(v2 + 152) = 3;
  v8 = sub_1A524D134();
  [v1 setPredicate_];

  sub_1A3C52C70(0, &unk_1EB120A20);
  v9 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:12 subtype:102 options:v1];
  v10 = [v9 fetchedObjects];
  if (!v10)
  {
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      sub_1A3C52C70(0, &qword_1EB126AC0);
      v13 = sub_1A524E6F4();
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1A524E7D4();
    }

    goto LABEL_6;
  }

  result = [v9 fetchedObjects];
  if (result)
  {
    v12 = result;
    sub_1A3C52C70(0, &qword_1EB126AC0);
    v13 = sub_1A524CA34();

    v1 = v12;
LABEL_6:

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4410C1C(uint64_t a1)
{
  v2 = _s22SharedAlbumsActionViewVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4410C78()
{
  v1 = *(v0 + 16);
  [objc_opt_self() navigateToDestination:4 completion:0];
  v2 = [v1 viewModel];
  if (v2)
  {
    v3 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6E0))(0, 0);
  }
}

void sub_1A4410D50()
{
  v1 = [*(v0 + 16) viewModel];
  if (v1)
  {
    v2 = v1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6E0))(0, 0);
  }
}

void sub_1A4410E54()
{
  sub_1A4128338();
  if (v0 <= 0x3F)
  {
    sub_1A4411520(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SharedAlbumCreationView();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SharedAlbumAddToView(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A4410F4C()
{
  result = qword_1EB13A308;
  if (!qword_1EB13A308)
  {
    sub_1A440DD04();
    sub_1A4410FFC(&qword_1EB13A310, sub_1A440DD64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A308);
  }

  return result;
}

uint64_t sub_1A4410FFC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_52()
{
  v1 = _s22SharedAlbumsActionViewVMa();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = (v2 + *(v1 + 24));

  v4 = v3 + *(type metadata accessor for SharedAlbumCreationView() + 28);
  sub_1A4411520(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5248284();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  else
  {
  }

  sub_1A424D274();
  v7 = v6;
  sub_1A3D35BAC(*&v4[v6[9]], v4[v6[9] + 8]);
  v8 = v7[10];
  sub_1A4411520(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5248714();
    (*(*(v9 - 8) + 8))(&v4[v8], v9);
  }

  else
  {
  }

  v10 = v7[11];
  sub_1A4411520(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
  }

  v12 = &v4[v7[13]];

  v13 = v2 + *(v1 + 28);
  sub_1A4411520(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3CB6AA8(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v15 = v14;
    v16 = *(v14 - 8);
    if (!(*(v16 + 48))(v13, 1, v14))
    {
      (*(v16 + 8))(v13, v15);
    }
  }

  else
  {
  }

  v17 = type metadata accessor for SharedAlbumAddToView(0);

  return swift_deallocObject();
}

uint64_t sub_1A44114C0()
{
  v1 = *(_s22SharedAlbumsActionViewVMa() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1A440D99C(v2);
}

void sub_1A4411520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4411584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A440D834();
    v7 = v6;
    sub_1A440D8E8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4411614(uint64_t a1)
{
  if (a1 == 5)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A4411658(char a1)
{
  v2 = objc_opt_self();
  v3 = &selRef_separatorColor;
  if ((a1 & 0xFE) != 0)
  {
    v3 = &selRef_secondaryLabelColor;
  }

  v4 = [v2 *v3];

  return sub_1A524B284();
}

uint64_t sub_1A44116C8()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  sub_1A524B284();
  v1 = sub_1A524B474();

  return v1;
}

uint64_t sub_1A4411734(uint64_t a1, SEL *a2)
{
  v2 = [objc_opt_self() *a2];

  return sub_1A524B284();
}

double sub_1A4411780()
{
  v0 = sub_1A3D41FBC();

  return static EdgeInsets.symmetric(horizontal:vertical:)(16.0, v0);
}

double sub_1A44117C8(unsigned __int8 a1, double a2)
{
  if (a1 > 1u)
  {
    return static EdgeInsets.symmetric(horizontal:vertical:)(16.0, a2);
  }

  static EdgeInsets.all(_:)();
  return result;
}

uint64_t sub_1A441183C(uint64_t a1)
{
  sub_1A3E75D84(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4411904(unsigned __int8 a1)
{
  v1 = a1;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 > 1)
  {
    sub_1A524A164();
    v7 = sub_1A524A154();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v6 = sub_1A524A1B4();
    sub_1A441183C(v4);
  }

  else
  {
    sub_1A524A184();
    v5 = sub_1A3FE1A88();
    v6 = sub_1A3FE1A98(v5);
  }

  return v6;
}

uint64_t sub_1A4411A38(unsigned __int8 a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v5 = a1;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524A274();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 > 1)
  {
    (*(v10 + 104))(v13, *a2, v9, v11);
    v17 = sub_1A524A154();
    v18 = (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    a3(v18);
    v19 = sub_1A524A1C4();
    sub_1A441183C(v8);
    (*(v10 + 8))(v13, v9);
    return v19;
  }

  else
  {
    v14 = sub_1A3FE1A88();
    sub_1A3FE1A94();
    v15 = sub_1A3FE1A98(v14);

    return v15;
  }
}

uint64_t sub_1A4411C1C()
{
  sub_1A4411C58();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A4411C58()
{
  result = qword_1EB171110[0];
  if (!qword_1EB171110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB171110);
  }

  return result;
}

unint64_t sub_1A4411CEC()
{
  result = qword_1EB13A320;
  if (!qword_1EB13A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A320);
  }

  return result;
}

unint64_t sub_1A4411D44()
{
  result = qword_1EB13A328;
  if (!qword_1EB13A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A328);
  }

  return result;
}

uint64_t sub_1A4411DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4411D44();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1A4411E24(PXCuratedLibraryViewConfiguration *self, SEL a2)
{
  swift_getKeyPath();
  sub_1A3C52C70(0, &qword_1EB126750);
  sub_1A3C35DC4(&unk_1EB126760);
  v3 = self;
  sub_1A52457F4();
}

void sub_1A4411ED4(PXCuratedLibraryViewConfiguration *self, SEL a2, unint64_t a3)
{
  swift_getKeyPath();
  sub_1A3C52C70(0, &qword_1EB126750);
  sub_1A3C35DC4(&qword_1EB126758);
  v4 = self;
  sub_1A5245C74();
}

void PXCuratedLibraryViewConfiguration.environmentValues.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  sub_1A5245BA4();
}

void sub_1A44124B8(uint64_t a1, char a2)
{
  if (a2)
  {
    (*(*a1 + 112))(*(*a1 + 96), *(*a1 + 104), *(*a1 + 80));
    sub_1A3C35940();
  }

  sub_1A3C35940();
}

id sub_1A4412630()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_6();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4412704(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  PXCuratedLibraryViewConfiguration.environmentValues.modify(v2);
}

id sub_1A441277C()
{
  v0 = sub_1A524C634();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    return v1;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  return [v3 init];
}

id sub_1A441282C()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

__n128 sub_1A441286C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(a7 + 32) = result;
  *(a7 + 48) = v9;
  *(a7 + 64) = a2;
  *(a7 + 72) = a3;
  *(a7 + 80) = a4 & 1;
  *(a7 + 88) = a5;
  *(a7 + 96) = a6;
  return result;
}

id sub_1A4412898()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v1 setContentHuggingPriority:1 forAxis:v3];
  v4 = v1;
  if ((*(v0 + 80) & 1) == 0)
  {
    v5 = *(v0 + 72);
    v6 = objc_opt_self();
    sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A52F9790;
    v8 = [v1 widthAnchor];

    v9 = [v8 constraintEqualToConstant_];
    *(v7 + 32) = v9;
    sub_1A3C52C70(0, &qword_1EB126A30);
    v4 = sub_1A524CA14();

    [v6 activateConstraints_];
  }

  return v1;
}

void sub_1A4412A60(void *a1)
{
  v3 = *(v1 + 32);
  v4 = sub_1A4412CB4();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

  v6 = [objc_opt_self() configurationWithFont_];
  v7 = [*(v1 + 88) imageWithConfiguration_];
  v8 = [v7 imageWithRenderingMode_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  [v9 setImage_];
  v10 = [v9 image];
  if (v10)
  {
    v11 = v10;
    [v10 size];
    v13 = v12;
    v15 = v14;
    [v3 descender];
    [v9 setBounds_];
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  [v17 setBounds_];
  v18 = objc_opt_self();
  v19 = [v18 attributedStringWithAttachment_];

  [v5 appendAttributedString_];
  v20 = [v18 attributedStringWithAttachment_];
  [v5 appendAttributedString_];
  [a1 setAttributedText_];
}