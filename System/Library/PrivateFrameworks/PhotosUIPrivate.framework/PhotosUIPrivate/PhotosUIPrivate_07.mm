void sub_1B37A6AC4()
{
  v13 = *(v0 + 16);
  v14 = *(v0 + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8536F0);
  MEMORY[0x1B8C69360](&v12, v1);
  if (v12)
  {
    v2 = [v12 identifier];
    swift_unknownObjectRelease();
    v3 = sub_1B3C9C5E8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v13 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853740);
  sub_1B3C9BC98();
  if (v12)
  {
    v6 = [v12 identifier];
    swift_unknownObjectRelease();
    v7 = sub_1B3C9C5E8();
    v9 = v8;

    if (v5)
    {
      if (v9)
      {
        if (v3 == v7 && v5 == v9)
        {

          goto LABEL_18;
        }

        v11 = sub_1B3C9D6A8();

        if (v11)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (!v9)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  *&v13 = v3;
  *(&v13 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854010);
  sub_1B37A76EC(&qword_1EB854038);
  sub_1B3C9AB38();
LABEL_18:
}

uint64_t sub_1B37A6CB8(const void *a1, uint64_t a2)
{
  v23 = a2;
  v25 = a1;
  v29 = sub_1B3C9C118();
  v32 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1B3C9C168();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B3C9AB48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_1B3C9C188();
  v27 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1B3739098();
  v24 = sub_1B3C9CC88();
  sub_1B3C9C178();
  sub_1B3C9C1B8();
  v26 = *(v9 + 8);
  v26(v11, v8);
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v5);
  v15 = (*(v6 + 80) + 120) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = v25;
  memcpy((v16 + 16), v25, 0x68uLL);
  (*(v6 + 32))(v16 + v15, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1B37A7864;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_24;
  v18 = _Block_copy(aBlock);
  sub_1B3787B2C(v17, v33);

  sub_1B3C9C138();
  v33[0] = MEMORY[0x1E69E7CC0];
  sub_1B37A781C(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B370ED54(&qword_1EB84FE90, &unk_1EB851AF0);
  v19 = v28;
  v20 = v29;
  sub_1B3C9D278();
  v21 = v24;
  MEMORY[0x1B8C6A1D0](v14, v4, v19, v18);
  _Block_release(v18);

  (*(v32 + 8))(v19, v20);
  (*(v30 + 8))(v4, v31);
  return (v26)(v14, v27);
}

unint64_t sub_1B37A720C()
{
  result = qword_1EB853FC0;
  if (!qword_1EB853FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853F98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853F90);
    sub_1B370ED54(&unk_1EB853FB0, &qword_1EB853F90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853FC0);
  }

  return result;
}

unint64_t sub_1B37A7328()
{
  result = qword_1EB853FF0;
  if (!qword_1EB853FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853FE8);
    sub_1B370ED54(&qword_1EB853FF8, &unk_1EB854000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853FF0);
  }

  return result;
}

uint64_t sub_1B37A73DC()
{
  v1 = *(sub_1B3C9AB48() - 8);
  v2 = v0 + ((*(v1 + 80) + 120) & ~*(v1 + 80));

  return sub_1B37A6CB8((v0 + 16), v2);
}

unint64_t sub_1B37A7440()
{
  result = qword_1EB854028;
  if (!qword_1EB854028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854010);
    sub_1B370ED54(&unk_1EB854018, &qword_1EB853FC8);
    sub_1B37A76EC(&qword_1EB853700);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854028);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = sub_1B3C9AB48();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);

  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
  }

  v7 = (v4 + 120) & ~v4;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1B37A76EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854010);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_6(uint64_t a1)
{

  swift_unknownObjectRelease();
  if (*(v1 + 56))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1B37A781C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B37A7868()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___smartAlbumDataSource;
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___smartAlbumDataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___smartAlbumDataSource];
  }

  else
  {
    v4 = v0;
    v5 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_photoLibrary];
    v6 = &v0[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_maxAssets];
    v7 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_maxAssets];
    v8 = v6[8];
    v9 = *&v4[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_restrictToSmartAlbumTypes];
    v10 = v4[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_restrictToSmartAlbumTypes + 8];
    v11 = *&v4[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_randomSeed];
    objc_allocWithZone(type metadata accessor for AmbientPhotoFrameDataSource());
    v12 = v5;
    v13 = v4;
    v14 = AmbientPhotoFrameDataSource.init(photoLibrary:changeObserver:maxAssets:restrictToSmartAlbumTypes:randomSeed:includePetsWithPeople:)(v12, v4, v7, v8, v9, v10, v11, 0);
    v15 = *&v4[v1];
    *&v4[v1] = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_1B37A7964()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___peoplePickerDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___peoplePickerDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___peoplePickerDataSource);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for AmbientPhotoFramePeoplePickerDataSource()) initWithPhotoLibrary_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B37A79E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___smartAlbumDataSource] = 0;
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___peoplePickerDataSource] = 0;
  v13 = OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_assetsContinuation;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540D0);
  __swift_storeEnumTagSinglePayload(&v6[v13], 1, 1, v14);
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_photoLibrary] = a1;
  v15 = &v6[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_maxAssets];
  *v15 = a2;
  v15[8] = a3 & 1;
  v16 = &v6[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_restrictToSmartAlbumTypes];
  *v16 = a4;
  v16[8] = a5 & 1;
  *&v6[OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_randomSeed] = a6;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for AmbientPhotoFrameCuratedAssetsRequester();
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1B37A7AE8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B37A7B0C, 0, 0);
}

uint64_t sub_1B37A7B0C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540F0);
  *v5 = v0;
  v5[1] = sub_1B37A7C24;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000003CLL, 0x80000001B3D15350, sub_1B37A8A98, v4, v6);
}

uint64_t sub_1B37A7C24()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B37A7D5C;
  }

  else
  {

    v2 = sub_1B37A7D40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B37A7D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1B37A7DC0(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v11 = sub_1B37A7868();
  v12 = [v11 selectedTypes];

  if (v12 == a2)
  {
    v13 = [*(a3 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___smartAlbumDataSource) previewAssets];
    sub_1B37A8A54();
    v14 = sub_1B3C9C788();

    v19[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540D0);
    return sub_1B3C9C868();
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540D0);
    (*(*(v16 - 8) + 16))(v10, a1, v16);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
    v17 = OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_assetsContinuation;
    swift_beginAccess();
    sub_1B37A89E4(v10, a3 + v17);
    swift_endAccess();
    if (a2)
    {
      if (a4 && *(a4 + 16))
      {
        sub_1B37A8544(a4);
      }

      else
      {
        v18 = sub_1B37A7964();
        [v18 addChangeObserver_];

        [*(a3 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___peoplePickerDataSource) startBackgroundFetch];
      }
    }

    return [*(a3 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___smartAlbumDataSource) setSelectedTypes_];
  }
}

uint64_t sub_1B37A7FE8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester_assetsContinuation;
  swift_beginAccess();
  sub_1B37A890C(v2 + v14, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4))
  {
    sub_1B37A897C(v13);
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_1B37A897C(v13);
    v15 = [a1 previewAssets];
    sub_1B37A8A54();
    v16 = sub_1B3C9C788();

    v18[0] = v16;
    sub_1B3C9C868();
    (*(v5 + 8))(v7, v4);
  }

  __swift_storeEnumTagSinglePayload(v10, 1, 1, v4);
  swift_beginAccess();
  sub_1B37A89E4(v10, v2 + v14);
  return swift_endAccess();
}

uint64_t sub_1B37A8290()
{
  v2 = sub_1B37A7964();
  v3 = sub_1B37FA628(v2);
  if (!v3)
  {
    v18 = sub_1B37FA634(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate39AmbientPhotoFrameCuratedAssetsRequester____lazy_storage___peoplePickerDataSource));
    if (!v18)
    {
LABEL_18:
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_19;
    }

    v1 = v18;
    if (sub_1B3711890(v18))
    {
      sub_1B37ED0BC(0, (v1 & 0xC000000000000001) == 0, v1);
      if ((v1 & 0xC000000000000001) == 0)
      {
        v19 = *(v1 + 32);
LABEL_16:
        v20 = v19;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1B3CF6CE0;
        v21 = [v20 localIdentifier];
        v22 = sub_1B3C9C5E8();
        v24 = v23;

        *(v8 + 32) = v22;
        *(v8 + 40) = v24;

        goto LABEL_19;
      }

LABEL_23:
      v19 = MEMORY[0x1B8C6A930](0, v1);
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v4 = v3;
  v5 = sub_1B3711890(v3);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  v26 = MEMORY[0x1E69E7CC0];
  sub_1B37EABC0(0, v5 & ~(v5 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = 0;
  v8 = v26;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8C6A930](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = [v10 localIdentifier];
    v12 = sub_1B3C9C5E8();
    v14 = v13;

    v16 = *(v26 + 16);
    v15 = *(v26 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1B37EABC0((v15 > 1), v16 + 1, 1);
    }

    ++v7;
    *(v26 + 16) = v16 + 1;
    v17 = v26 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
  }

  while (v6 != v7);

LABEL_19:
  sub_1B37A8544(v8);
}

void sub_1B37A8544(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  sub_1B370BBD8(a1);
  v4 = sub_1B3C9C778();

  v5 = PFShuffledArrayWithRandomNumberGenerator();

  v6 = sub_1B3C9C788();
  v7 = sub_1B370BCA4(v6);

  v8 = sub_1B37A7868();
  sub_1B37A88A0(v7, v8);
}

id sub_1B37A8680()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientPhotoFrameCuratedAssetsRequester();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AmbientPhotoFrameCuratedAssetsRequester()
{
  result = qword_1EB8540B8;
  if (!qword_1EB8540B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B37A8778()
{
  sub_1B37A883C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B37A883C()
{
  if (!qword_1EB8540C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB8540D0);
    v0 = sub_1B3C9D198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8540C8);
    }
  }
}

void sub_1B37A88A0(uint64_t a1, void *a2)
{
  v3 = sub_1B3C9C778();

  [a2 setPeopleLocalIdentifiers_];
}

uint64_t sub_1B37A890C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37A897C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B37A89E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8540E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B37A8A54()
{
  result = qword_1EB84F770;
  if (!qword_1EB84F770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84F770);
  }

  return result;
}

uint64_t PhotosUIOneUpChromeEnvironment.__allocating_init(viewModel:actionManager:useSystemBars:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_55_1();
  v6 = swift_allocObject();
  PhotosUIOneUpChromeEnvironment.init(viewModel:actionManager:useSystemBars:)(v4, v3, a3);
  return v6;
}

void PhotosUIOneUpChromeEnvironment.isDeviceLocked.setter(char a1)
{
  v1 = a1 & 1;
  sub_1B37ACD2C();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_11_10();
    sub_1B37A96D8(v1, v3);
  }
}

uint64_t sub_1B37A8B48@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t PhotosUIOneUpChromeEnvironment.presentingViewController.getter()
{
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void PhotosUIOneUpChromeEnvironment.presentingViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*PhotosUIOneUpChromeEnvironment.presentingViewController.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B37B1F78;
}

uint64_t PhotosUIOneUpChromeEnvironment.init(viewModel:actionManager:useSystemBars:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3;
  OUTLINED_FUNCTION_55_1();
  v8 = sub_1B3C99B18();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  swift_unknownObjectWeakInit();
  sub_1B3C99C98();
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_14();
  v15 = sub_1B3C99C88();
  v16 = MEMORY[0x1E69C2E08];
  *(v3 + 96) = v15;
  *(v3 + 104) = v16;
  (*(v10 + 104))(v14, *MEMORY[0x1E69C2CA8], v8);
  sub_1B3C99C08();
  OUTLINED_FUNCTION_36_0();
  v17 = sub_1B3C99BF8();
  v18 = MEMORY[0x1E69C2DB8];
  *(v3 + 112) = v17;
  *(v3 + 120) = v18;
  sub_1B3C99D78();
  OUTLINED_FUNCTION_36_0();
  v19 = sub_1B3C99D68();
  v20 = MEMORY[0x1E69C2E70];
  *(v3 + 128) = v19;
  *(v3 + 136) = v20;
  sub_1B3C99D98();
  OUTLINED_FUNCTION_36_0();
  v21 = sub_1B3C99D68();
  v22 = MEMORY[0x1E69C2E88];
  *(v3 + 144) = v21;
  *(v3 + 152) = v22;
  v23 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___assetCollectionKind;
  v24 = *MEMORY[0x1E69C2CC8];
  sub_1B3C99B38();
  OUTLINED_FUNCTION_0_1();
  (*(v25 + 104))(v6 + v23, v24);
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isChromeVisible) = 0;
  v26 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___contentPrivacyState;
  v27 = *MEMORY[0x1E69C2D00];
  sub_1B3C99B58();
  OUTLINED_FUNCTION_0_1();
  (*(v28 + 104))(v6 + v26, v27);
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isInSelectionMode) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isAccessoryViewVisible) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isPresentedForPreview) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isSharedAlbumAsset) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isSharedCollectionAsset) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isMacSyncedAsset) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isSyndicationLibraryAsset) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isHDRAsset) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isScrubbing) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetNormalizedOffset) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetIsCentered) = 0;
  v29 = (v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment__videoModel);
  *v29 = 0;
  v29[1] = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment__assetDebugInfo) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___assetIsFavorite) = 0;
  v30 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___visualAnalysisState;
  v31 = *MEMORY[0x1E69C2D38];
  sub_1B3C99B68();
  OUTLINED_FUNCTION_0_1();
  (*(v32 + 104))(v6 + v30, v31);
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___assetMediaType) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isInEditMode) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___assetExists) = 0;
  v33 = v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetAspectRatio;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetZoomScale;
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isDeviceLocked) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isAnimatingPresentationSize) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isAssetContentRequiringSensitivityProtection) = 1;
  v35 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_syndicationModel;
  type metadata accessor for OneUpAssetSyndicationModel(0);
  OUTLINED_FUNCTION_36_0();
  *(v6 + v35) = sub_1B38462F4();
  v36 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_titleModel;
  *(v6 + v36) = [objc_allocWithZone(type metadata accessor for OneUpTitleModel()) init];
  v37 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_badgeModel;
  type metadata accessor for OneUpBadgeModel();
  OUTLINED_FUNCTION_36_0();
  *(v6 + v37) = sub_1B3738F74();
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isCurrentAssetZoomedIn) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isPlayingZoomedInOverlay) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_browsingViewModelObservation) = 0;
  *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModelObservation) = 0;
  v38 = (v6 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_selectionManagerObservation);
  *v38 = 0;
  v38[1] = 0;
  sub_1B3C98308();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = a3;
  v39 = v4;
  v40 = v5;
  v41 = OUTLINED_FUNCTION_11_2();
  sub_1B37A9E9C(v41, v42, v4);

  return v6;
}

uint64_t sub_1B37A9150(uint64_t a1)
{
  swift_beginAccess();
  sub_1B373EE18(v1 + 56, v6, &qword_1EB857300);
  v3 = sub_1B37AA620(v6, a1);
  sub_1B371B36C(v6, &qword_1EB857300);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37AA808();
  }

  else
  {
    swift_beginAccess();
    sub_1B37B1C40(a1, v1 + 56);
    swift_endAccess();
  }

  return sub_1B371B36C(a1, &qword_1EB857300);
}

uint64_t sub_1B37A9288(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B3C99B38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___assetCollectionKind;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1B37B1264(&qword_1EB84F908, 255, MEMORY[0x1E69C2CE8]);
  v9 = sub_1B3C9C528();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v13 - 2) = v2;
    *(&v13 - 1) = a1;
    sub_1B37AA808();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1B37A94B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B3C99B58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___contentPrivacyState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1B37B1264(&qword_1EB84F900, 255, MEMORY[0x1E69C2D08]);
  v9 = sub_1B3C9C528();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v13 - 2) = v2;
    *(&v13 - 1) = a1;
    sub_1B37AA808();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1B37A96D8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37AA808();
  }

  return result;
}

void sub_1B37A977C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isAccessoryViewVisible) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isAccessoryViewVisible) = a1 & 1;

    sub_1B37AB804();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37AA808();
  }
}

void sub_1B37A984C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isScrubbing) == (a1 & 1))
  {
    v3 = a1 & 1;

    sub_1B37AC048(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37AA808();
  }
}

void sub_1B37A9928(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetNormalizedOffset) == a1)
  {
    *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetNormalizedOffset) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37AA808();
  }
}

uint64_t sub_1B37A99E0()
{
  swift_getKeyPath();
  sub_1B37AA808();

  return swift_unknownObjectRelease();
}

uint64_t sub_1B37A9A64()
{
  swift_getKeyPath();
  sub_1B37AA808();
}

uint64_t sub_1B37A9AD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B3C99B68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___visualAnalysisState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1B37B1264(&qword_1EB84F8F8, 255, MEMORY[0x1E69C2D40]);
  v9 = sub_1B3C9C528();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v13 - 2) = v2;
    *(&v13 - 1) = a1;
    sub_1B37AA808();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1B37A9D00(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___assetMediaType) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37AA808();
  }

  return result;
}

uint64_t sub_1B37A9DAC(uint64_t result, int a2, void *a3)
{
  v4 = a2;
  v5 = result;
  v6 = v3 + *a3;
  v7 = *(v6 + 8);
  if (v7 & 1) != 0 || (a2)
  {
    if (v7 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*v6 == *&result)
  {
LABEL_4:
    *v6 = *&result;
    *(v6 + 8) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  OUTLINED_FUNCTION_20_6();
  *(v9 - 32) = v3;
  *(v9 - 24) = v5;
  *(v9 - 16) = v4 & 1;
  sub_1B37AA808();
  *&result = COERCE_DOUBLE();
  return result;
}

void sub_1B37A9E9C(uint64_t a1, void *a2, void *a3)
{
  v45 = sub_1B3C99B58();
  v6 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  swift_weakInit();
  objc_allocWithZone(PUBrowsingViewModelObservation);
  v9 = a2;
  v10 = sub_1B37FD9DC();
  v11 = *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_browsingViewModelObservation);
  *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_browsingViewModelObservation) = v10;

  if (a3)
  {
    v12 = [a3 px_selectionManager];
    if (v12)
    {
      v13 = v12;
      swift_allocObject();
      swift_weakInit();

      v14 = sub_1B3C9CA58();
      v16 = v15;

      v17 = (a1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_selectionManagerObservation);
      *v17 = v14;
      v17[1] = v16;
      swift_unknownObjectRelease();
      sub_1B37AF7C0();
    }
  }

  v18 = 0;
  v19 = (v6 + 104);
  v20 = *(a1 + 16);
  v21 = *MEMORY[0x1E69C2D00];
  v43 = *MEMORY[0x1E69C2CF8];
  v44 = v21;
  do
  {
    v22 = byte_1F2AB2B90[v18++ + 32];
    v23 = v20;
    v24 = v23;
    switch(v22)
    {
      case 1:
        v31 = [v23 contentPrivacyState];
        v32 = v44;
        if (v31)
        {
          v32 = v43;
          if (v31 != 1)
          {
            goto LABEL_27;
          }
        }

        (*v19)(v8, v32, v45);
        sub_1B37AB600();
        break;
      case 2:
        v29 = [v23 isInSelectionMode];
        if ((v29 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC17isInSelectionModeSbvg_0()))
        {
          v26 = v29;
          v27 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isInSelectionMode;
          goto LABEL_22;
        }

        break;
      case 3:
        PhotosUIOneUpChromeEnvironment.currentAssetViewModel.setter([v23 assetViewModelForCurrentAssetReference]);
        break;
      case 4:
        v28 = [v23 isPresentedForPreview];
        if ((v28 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC21isPresentedForPreviewSbvg_0()))
        {
          v26 = v28;
          v27 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isPresentedForPreview;
          goto LABEL_22;
        }

        break;
      case 5:
        v33 = [v23 isScrubbing];
        if ((v33 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC11isScrubbingSbvg_0()))
        {
          sub_1B37A984C(v33);
        }

        break;
      case 6:
        v34 = [v23 videoOverlayPlayState];
        if (((v34 == 2) ^ sub_1B37ACFF0()))
        {
          v26 = v34 == 2;
          v27 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isPlayingZoomedInOverlay;
          goto LABEL_22;
        }

        break;
      case 7:
        v30 = [v23 isAnimatingPresentationSize];
        if ((v30 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC27isAnimatingPresentationSizeSbvg_0()))
        {
          v26 = v30;
          v27 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isAnimatingPresentationSize;
          goto LABEL_22;
        }

        break;
      default:
        v25 = [v23 isChromeVisible];
        if ((v25 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC02isE7VisibleSbvg_0()))
        {
          v26 = v25;
          v27 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isChromeVisible;
LABEL_22:
          sub_1B37A96D8(v26, v27);
        }

        break;
    }
  }

  while (v18 != 8);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = type metadata accessor for PhotosUIOneUpChromeEnvironment.SettingsObservation();
  v37 = objc_allocWithZone(v36);
  v38 = &v37[OBJC_IVAR____TtCC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironmentP33_AC95AE35C81CD1A240000623A044C1EE19SettingsObservation_handler];
  *v38 = sub_1B37B1ED8;
  v38[1] = v35;
  v46.receiver = v37;
  v46.super_class = v36;
  v39 = objc_msgSendSuper2(&v46, sel_init);
  sub_1B37AA530(v39);
  sub_1B37B1D10();
  v40 = [swift_getObjCClassFromMetadata() sharedInstance];
  v41 = sub_1B37AA454();
  if (v41)
  {
    v42 = v41;
    [v40 addDeferredKeyObserver_];
  }

  else
  {
    __break(1u);
LABEL_27:
    sub_1B3C9D4C8();
    __break(1u);
  }
}

void *sub_1B37AA454()
{
  swift_getKeyPath();
  sub_1B37B1264(&qword_1EB84FC58, 255, type metadata accessor for PhotosUIOneUpChromeEnvironment);
  sub_1B3C982D8();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_1B37AA500(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1B37AA530(v1);
}

void sub_1B37AA530(void *a1)
{
  v3 = *(v1 + 48);
  v4 = v3;
  LOBYTE(v3) = sub_1B37AA758(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37AA808();
  }

  else
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = a1;
  }
}

uint64_t sub_1B37AA620(uint64_t a1, uint64_t a2)
{
  sub_1B373EE18(a1, v9, &qword_1EB857300);
  sub_1B373EE18(a2, &v11, &qword_1EB857300);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_1B371B36C(v9, &qword_1EB857300);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_1B371B36C(v9, &qword_1EB8541B8);
    v4 = 1;
    return v4 & 1;
  }

  sub_1B373EE18(v9, v8, &qword_1EB857300);
  if (!*(&v12 + 1))
  {
    sub_1B3720D10(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v3 = MEMORY[0x1B8C6A880](v8, v6);
  sub_1B3720D10(v6);
  sub_1B3720D10(v8);
  sub_1B371B36C(v9, &qword_1EB857300);
  v4 = v3 ^ 1;
  return v4 & 1;
}

BOOL sub_1B37AA758(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for PhotosUIOneUpChromeEnvironment.SettingsObservation();
    v5 = a1;
    v6 = a2;
    v2 = sub_1B3C9CFA8();
  }

  return (v2 & 1) == 0;
}

void sub_1B37AA7D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = a2;
  v3 = a2;
}

uint64_t sub_1B37AA808()
{
  OUTLINED_FUNCTION_0_18();
  sub_1B37B1264(v0, 255, v1);
  return sub_1B3C982C8();
}

id sub_1B37AA9BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosUIOneUpChromeEnvironment.SettingsObservation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B37AAA0C(uint64_t a1)
{
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC21assetObjectIdentifiers11AnyHashableVSgvg_0(v13);
  sub_1B373EE18(v13, v8, &qword_1EB857300);
  sub_1B373EE18(a1, &v10, &qword_1EB857300);
  if (!v9)
  {
    sub_1B371B36C(v13, &qword_1EB857300);
    if (!*(&v11 + 1))
    {
      sub_1B371B36C(v8, &qword_1EB857300);
      goto LABEL_7;
    }

LABEL_9:
    sub_1B371B36C(v8, &qword_1EB8541B8);
LABEL_10:
    sub_1B373EE18(a1, v8, &qword_1EB857300);
    sub_1B37A9150(v8);
    v3 = a1;
    return sub_1B371B36C(v3, &qword_1EB857300);
  }

  sub_1B373EE18(v8, v7, &qword_1EB857300);
  if (!*(&v11 + 1))
  {
    sub_1B371B36C(v13, &qword_1EB857300);
    sub_1B3720D10(v7);
    goto LABEL_9;
  }

  v5[0] = v10;
  v5[1] = v11;
  v6 = v12;
  v2 = MEMORY[0x1B8C6A880](v7, v5);
  sub_1B3720D10(v5);
  sub_1B371B36C(v13, &qword_1EB857300);
  sub_1B3720D10(v7);
  sub_1B371B36C(v8, &qword_1EB857300);
  if ((v2 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v3 = a1;
  return sub_1B371B36C(v3, &qword_1EB857300);
}

uint64_t _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC21assetObjectIdentifiers11AnyHashableVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1B37B1264(&qword_1EB84FC58, 255, type metadata accessor for PhotosUIOneUpChromeEnvironment);
  sub_1B3C982D8();

  swift_beginAccess();
  return sub_1B373EE18(v1 + 56, a1, &qword_1EB857300);
}

uint64_t sub_1B37AAD0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B37B1C40(a2, a1 + 56);
  return swift_endAccess();
}

uint64_t PhotosUIOneUpChromeEnvironment.assetCloudSharedProperties.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_1B37B1264(v0, 255, v1);
  OUTLINED_FUNCTION_17_10();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B37AAE54@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosUIOneUpChromeEnvironment.assetCloudSharedProperties.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37AAEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t PhotosUIOneUpChromeEnvironment.assetCloudLinkProperties.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_1B37B1264(v0, 255, v1);
  OUTLINED_FUNCTION_17_10();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B37AAF68@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosUIOneUpChromeEnvironment.assetCloudLinkProperties.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37AAFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t PhotosUIOneUpChromeEnvironment.duplicateMergingProperties.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_1B37B1264(v0, 255, v1);
  OUTLINED_FUNCTION_17_10();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B37AB07C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosUIOneUpChromeEnvironment.duplicateMergingProperties.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37AB0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B37AB104(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1B37AE844();

  return swift_unknownObjectRelease();
}

uint64_t PhotosUIOneUpChromeEnvironment.performableActionProperties.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_1B37B1264(v0, 255, v1);
  OUTLINED_FUNCTION_17_10();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B37AB1E4@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosUIOneUpChromeEnvironment.performableActionProperties.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37AB230()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_1B37B1E3C();
}

uint64_t sub_1B37AB318()
{
  OUTLINED_FUNCTION_43_2();
  sub_1B3C99B38();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_12();
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC19assetCollectionKind0A11SwiftUICore03Oned5AssethI0Ovg_0(v1);
  sub_1B37B1264(&qword_1EB84F908, 255, MEMORY[0x1E69C2CE8]);
  OUTLINED_FUNCTION_35_4();
  v4 = OUTLINED_FUNCTION_10_3();
  v2(v4);
  if ((v0 & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_34_3();
    v6(v5);
    sub_1B37A9288(v1);
  }

  v7 = OUTLINED_FUNCTION_11_2();
  return (v2)(v7);
}

uint64_t sub_1B37AB458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void PhotosUIOneUpChromeEnvironment.isChromeVisible.setter(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC02isE7VisibleSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_32_2();
    sub_1B37A96D8(v1, v3);
  }
}

uint64_t (*PhotosUIOneUpChromeEnvironment.isChromeVisible.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_53_1(a1);
  v1 = _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC02isE7VisibleSbvg_0();
  OUTLINED_FUNCTION_36_4(v1);
  return sub_1B37AB5C0;
}

uint64_t sub_1B37AB600()
{
  OUTLINED_FUNCTION_43_2();
  sub_1B3C99B58();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_12();
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC19contentPrivacyState0A11SwiftUICore03Oned7ContenthI0Ovg_0(v1);
  sub_1B37B1264(&qword_1EB84F900, 255, MEMORY[0x1E69C2D08]);
  OUTLINED_FUNCTION_35_4();
  v4 = OUTLINED_FUNCTION_10_3();
  v2(v4);
  if ((v0 & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_34_3();
    v6(v5);
    sub_1B37A94B0(v1);
  }

  v7 = OUTLINED_FUNCTION_11_2();
  return (v2)(v7);
}

void sub_1B37AB744(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC17isInSelectionModeSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_30_3();
    sub_1B37A96D8(v1, v3);
  }
}

void sub_1B37AB7A4(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC22isAccessoryViewVisibleSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {

    sub_1B37A977C(v1);
  }
}

void sub_1B37AB804()
{
  v1 = v0;
  v2 = sub_1B3C99B68();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if (v13)
  {
    v14 = [v13 visualImageAnalysis];
    if (v14)
    {
      v15 = [v14 hasVisualSearchResults];
      swift_unknownObjectRelease();
      v16 = *(v1 + v12);
      if (!v16)
      {
        if (!v15)
        {
          goto LABEL_19;
        }

LABEL_11:
        v29 = _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC22isAccessoryViewVisibleSbvg_0();
        v30 = MEMORY[0x1E69C2D20];
        if ((v29 & 1) == 0)
        {
          v30 = MEMORY[0x1E69C2D18];
        }

        (*(v3 + 104))(v9, *v30, v2);
        goto LABEL_22;
      }

LABEL_8:
      v17 = v16;
      v18 = [v17 visualSearchResultInfo];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 filledInfoButtonGlyphName];
        v42 = sub_1B3C9C5E8();
        v22 = v21;

        v23 = [v19 infoButtonGlyphName];
        v24 = sub_1B3C9C5E8();
        v25 = v2;
        v27 = v26;

        v28 = _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC22isAccessoryViewVisibleSbvg_0();
        *v11 = v24;
        *(v11 + 1) = v27;
        *(v11 + 2) = v42;
        *(v11 + 3) = v22;
        v11[32] = v28 & 1;
        (*(v3 + 104))(v11, *MEMORY[0x1E69C2D30], v25);
        sub_1B37AC5B4();
        swift_unknownObjectRelease();

        return;
      }

      if ((v15 & 1) == 0)
      {
        v31 = *(v1 + v12);
        if (v31)
        {
          v32 = v31;
          if ((sub_1B37AF774() & 1) != 0 && [v32 phototypeInfoButtonSupport])
          {
            swift_getObjectType();
            v33 = sub_1B3C9CCE8();
            v35 = v34;
            v36 = sub_1B3C9CCE8();
            v42 = v2;
            v38 = v37;
            v39 = _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC22isAccessoryViewVisibleSbvg_0();
            *v11 = v33;
            *(v11 + 1) = v35;
            *(v11 + 2) = v36;
            *(v11 + 3) = v38;
            v11[32] = v39 & 1;
            (*(v3 + 104))(v11, *MEMORY[0x1E69C2D30], v42);
            sub_1B37AC5B4();
            swift_unknownObjectRelease();

            return;
          }
        }

        goto LABEL_19;
      }

      goto LABEL_11;
    }

    v16 = *(v0 + v12);
    if (v16)
    {
      LOBYTE(v15) = 0;
      goto LABEL_8;
    }
  }

LABEL_19:
  v40 = _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC22isAccessoryViewVisibleSbvg_0();
  v41 = MEMORY[0x1E69C2D28];
  if ((v40 & 1) == 0)
  {
    v41 = MEMORY[0x1E69C2D38];
  }

  (*(v3 + 104))(v6, *v41, v2);
LABEL_22:
  sub_1B37AC5B4();
}

void sub_1B37ABBA0(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC21isPresentedForPreviewSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_28_6();
    sub_1B37A96D8(v1, v3);
  }
}

uint64_t PhotosUIOneUpChromeEnvironment.hasUserZoomedIn.getter()
{
  if (sub_1B37ACFDC())
  {
    return 1;
  }

  return sub_1B37ACFF0();
}

void sub_1B37ABC38(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC18isSharedAlbumAssetSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_6_16();
    sub_1B37A96D8(v1, v3);
  }
}

void sub_1B37ABC98(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC23isSharedCollectionAssetSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_5_15();
    sub_1B37A96D8(v1, v3);
  }
}

void sub_1B37ABCF8(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC16isMacSyncedAssetSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1B37A96D8(v1, v3);
  }
}

void sub_1B37ABD58(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC25isSyndicationLibraryAssetSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_3_20();
    sub_1B37A96D8(v1, v3);
  }
}

void sub_1B37ABDB8(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC10isHDRAssetSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_2_20();
    sub_1B37A96D8(v1, v3);
  }
}

void sub_1B37ABE18(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC11isScrubbingSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {

    sub_1B37A984C(v1);
  }
}

void sub_1B37ABE78()
{
  v1 = *(v0 + 16);
  v2 = [v1 assetViewModelForCurrentAssetReference];
  if (!v2)
  {
LABEL_7:

    sub_1B37A99E0();
    return;
  }

  v3 = v2;
  v4 = [v2 asset];
  if (!v4)
  {

    goto LABEL_7;
  }

  if ([v4 playbackStyle] != 4 || (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC11isScrubbingSbvg_0() & 1) != 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  if (!PhotosUIOneUpChromeEnvironment.videoModel.getter())
  {
    v5 = [objc_allocWithZone(type metadata accessor for BrowsingVideoModel()) init];
    sub_1B37B1264(&unk_1EB84FB40, 255, type metadata accessor for BrowsingVideoModel);
    v6 = v5;
    sub_1B37A99E0();
  }

  type metadata accessor for BrowsingVideoModel();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = v3;
  sub_1B372D290(v3);

  swift_unknownObjectRelease();
  v10 = *(v7 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_browsingViewModel);
  *(v7 + OBJC_IVAR____TtC15PhotosUIPrivate18BrowsingVideoModel_browsingViewModel) = v1;
  v9 = v1;
  swift_unknownObjectRelease();
}

void sub_1B37AC048(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isScrubbing);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isScrubbing) = a1;
  if (v2 != (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC11isScrubbingSbvg_0() & 1))
  {

    sub_1B37ABE78();
  }
}

void PhotosUIOneUpChromeEnvironment.currentAssetNormalizedOffset.setter(double a1)
{
  if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC28currentAssetNormalizedOffset12CoreGraphics7CGFloatVvg_0() != a1)
  {

    sub_1B37A9928(a1);
  }
}

double _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC28currentAssetNormalizedOffset12CoreGraphics7CGFloatVvg_0()
{
  swift_getKeyPath();
  sub_1B37B1264(&qword_1EB84FC58, 255, type metadata accessor for PhotosUIOneUpChromeEnvironment);
  sub_1B3C982D8();

  return *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetNormalizedOffset);
}

void (*PhotosUIOneUpChromeEnvironment.currentAssetNormalizedOffset.modify(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC28currentAssetNormalizedOffset12CoreGraphics7CGFloatVvg_0();
  return sub_1B37AC1E4;
}

void sub_1B37AC1E4(double *a1)
{
  v1 = *a1;
  if (v1 != _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC28currentAssetNormalizedOffset12CoreGraphics7CGFloatVvg_0())
  {
    sub_1B37A9928(v1);
  }
}

void sub_1B37AC228(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC22currentAssetIsCenteredSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_27_6();
    sub_1B37A96D8(v1, v3);
  }
}

uint64_t PhotosUIOneUpChromeEnvironment.videoModel.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_1B37B1264(v0, 255, v1);
  OUTLINED_FUNCTION_17_10();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B37AC31C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosUIOneUpChromeEnvironment.videoModel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37AC384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment__videoModel);
  *v3 = a2;
  v3[1] = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t PhotosUIOneUpChromeEnvironment.assetDebugInfo.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  sub_1B37B1264(v0, 255, v1);
  OUTLINED_FUNCTION_17_10();
}

uint64_t sub_1B37AC4B4@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosUIOneUpChromeEnvironment.assetDebugInfo.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B37AC50C(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment__assetDebugInfo) = a2;
}

void sub_1B37AC554(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC15assetIsFavoriteSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_26_6();
    sub_1B37A96D8(v1, v3);
  }
}

uint64_t sub_1B37AC5B4()
{
  OUTLINED_FUNCTION_43_2();
  sub_1B3C99B68();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_12();
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC19visualAnalysisState0A11SwiftUICore03Oned6VisualhI0Ovg_0(v1);
  sub_1B37B1264(&qword_1EB84F8F8, 255, MEMORY[0x1E69C2D40]);
  OUTLINED_FUNCTION_35_4();
  v4 = OUTLINED_FUNCTION_10_3();
  v2(v4);
  if ((v0 & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_34_3();
    v6(v5);
    sub_1B37A9AD8(v1);
  }

  v7 = OUTLINED_FUNCTION_11_2();
  return (v2)(v7);
}

uint64_t sub_1B37AC6F4@<X0>(uint64_t *a1@<X1>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  v10 = sub_1B37B1264(v8, 255, v9);
  OUTLINED_FUNCTION_44_2(v10, v11, v12, v13, v14, v15, v16, v17, v21, v3);
  sub_1B3C982D8();

  v18 = *a1;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  a2(0);
  OUTLINED_FUNCTION_0_1();
  return (*(v19 + 16))(a3, v6 + v18);
}

uint64_t sub_1B37AC7D4(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  a4(0);
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 24))(a1 + v7, a2);
  return swift_endAccess();
}

uint64_t sub_1B37AC878(uint64_t a1)
{
  result = _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC14assetMediaTypeSo014PXDisplayAssethI0Vvg_0();
  if (result != a1)
  {

    return sub_1B37A9D00(a1);
  }

  return result;
}

uint64_t _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC14assetMediaTypeSo014PXDisplayAssethI0Vvg_0()
{
  swift_getKeyPath();
  sub_1B37B1264(&qword_1EB84FC58, 255, type metadata accessor for PhotosUIOneUpChromeEnvironment);
  sub_1B3C982D8();

  return *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___assetMediaType);
}

void sub_1B37AC974(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC12isInEditModeSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_21_6();
    sub_1B37A96D8(v1, v3);
  }
}

void sub_1B37AC9D4(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC11assetExistsSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_19();
    sub_1B37A96D8(v1, v3);
  }
}

uint64_t sub_1B37ACBAC(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  *&result = COERCE_DOUBLE(a3());
  if (a2)
  {
    if (v6)
    {
      return result;
    }

LABEL_6:
    v7 = OUTLINED_FUNCTION_50_1();
    *&result = COERCE_DOUBLE(sub_1B37A9DAC(v7, v8, v9));
    return result;
  }

  if ((v6 & 1) != 0 || *&a1 != *&result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1B37ACC3C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  v6 = sub_1B37B1264(v4, 255, v5);
  OUTLINED_FUNCTION_44_2(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2);
  sub_1B3C982D8();

  return *(v2 + *a2);
}

uint64_t (*PhotosUIOneUpChromeEnvironment.isDeviceLocked.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_53_1(a1);
  v1 = sub_1B37ACD2C();
  OUTLINED_FUNCTION_36_4(v1);
  return sub_1B37ACD80;
}

void PhotosUIOneUpChromeEnvironment.isAnimatingPresentationSize.setter(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC27isAnimatingPresentationSizeSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_29_6();
    sub_1B37A96D8(v1, v3);
  }
}

uint64_t (*PhotosUIOneUpChromeEnvironment.isAnimatingPresentationSize.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_53_1(a1);
  v1 = _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC27isAnimatingPresentationSizeSbvg_0();
  OUTLINED_FUNCTION_36_4(v1);
  return sub_1B37ACE5C;
}

void PhotosUIOneUpChromeEnvironment.isAssetContentRequiringSensitivityProtection.setter(char a1)
{
  v1 = a1 & 1;
  _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC44isAssetContentRequiringSensitivityProtectionSbvg_0();
  OUTLINED_FUNCTION_18_9();
  if (!v2)
  {
    OUTLINED_FUNCTION_7_20();
    sub_1B37A96D8(v1, v3);
  }
}

uint64_t (*PhotosUIOneUpChromeEnvironment.isAssetContentRequiringSensitivityProtection.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_53_1(a1);
  v1 = _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC44isAssetContentRequiringSensitivityProtectionSbvg_0();
  OUTLINED_FUNCTION_36_4(v1);
  return sub_1B37ACF38;
}

uint64_t sub_1B37ACF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v5 = *(a1 + 8);
  result = a3();
  if (v5 != (result & 1))
  {
    return sub_1B37A96D8(v5, a4);
  }

  return result;
}

uint64_t sub_1B37AD004(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_18();
  v6 = sub_1B37B1264(v4, 255, v5);
  OUTLINED_FUNCTION_44_2(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2);
  sub_1B3C982D8();

  return *(v2 + *a2);
}

void *PhotosUIOneUpChromeEnvironment.currentAssetViewModel.getter()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id sub_1B37AD0D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1B37AD140(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PhotosUIOneUpChromeEnvironment.currentAssetViewModel.setter(v1);
}

void PhotosUIOneUpChromeEnvironment.currentAssetViewModel.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1B37AD1DC(v4);
}

void sub_1B37AD1DC(void *a1)
{
  v2 = v1;
  v4 = sub_1B3C99B38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9)
  {
    if (v9 == a1)
    {
      return;
    }

    v10 = v2[2];
    v11 = v9;
    v12 = [v10 currentAssetReference];
    if (v12)
    {
      v13 = v12;
      swift_allocObject();
      swift_weakInit();
      objc_allocWithZone(PUAssetViewModelObservation);
      v14 = v11;
      v15 = sub_1B37FDA74();
      v16 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModelObservation);
      *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModelObservation) = v15;

      v17 = [v13 pxAssetReference];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      v19 = [v17 assetCollection];

      if ([v19 px_isRecentlyDeletedSmartAlbum])
      {
        v20 = MEMORY[0x1E69C2CD0];
      }

      else if ([v19 px_isRecoveredSmartAlbum])
      {
        v20 = MEMORY[0x1E69C2CE0];
      }

      else if ([v19 px_isDuplicatesAlbum])
      {
        v20 = MEMORY[0x1E69C2CB8];
      }

      else
      {
        if (![v19 px_isMomentShare])
        {
          v38 = [v19 px_isImportAssetCollection];
          v25 = *(v5 + 104);
          if (v38)
          {
            v39 = MEMORY[0x1E69C2CD8];
          }

          else
          {
            v39 = MEMORY[0x1E69C2CC8];
          }

          v24 = *v39;
          goto LABEL_18;
        }

        v20 = MEMORY[0x1E69C2CC0];
      }

      v24 = *v20;
      v25 = *(v5 + 104);
LABEL_18:
      v25(v7, v24, v4);
      v40 = v14;
      sub_1B37AB318();
      v26 = v2[3];
      if (v26)
      {
        type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpPerformableActionProperties();
        v27 = swift_allocObject();
        v27[3] = v13;
        v27[4] = 0;
        v27[2] = v26;
        v29 = sub_1B37B1264(&qword_1EB84FDC0, v28, type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpPerformableActionProperties);
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v40 - 4) = v2;
        *(&v40 - 3) = v27;
        *(&v40 - 2) = v29;
        v31 = v26;
        v13 = v13;
        sub_1B37AA808();
      }

      else
      {
        sub_1B3C99D98();
        swift_allocObject();
        v32 = sub_1B3C99D68();
        v33 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v33);
        *(&v40 - 4) = v2;
        *(&v40 - 3) = v32;
        *(&v40 - 2) = MEMORY[0x1E69C2E88];
        sub_1B37AA808();
      }

      swift_unknownObjectRelease();

      goto LABEL_22;
    }
  }

  else if (!a1)
  {
    return;
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69C2CC8], v4);
  sub_1B37AB318();
  v21 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModelObservation);
  *(v2 + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModelObservation) = 0;

  sub_1B3C99D98();
  swift_allocObject();
  v22 = sub_1B3C99D68();
  v23 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v23);
  *(&v40 - 4) = v2;
  *(&v40 - 3) = v22;
  *(&v40 - 2) = MEMORY[0x1E69C2E88];
  sub_1B37AA808();
LABEL_22:

  v34 = 0;
  do
  {
    v35 = byte_1F2AB2BB8[v34++ + 32];
    v41 = v35;
    v36 = *(v2 + v8);
    v37 = v36;
    PhotosUIOneUpChromeEnvironment.AssetViewModelProperty.update(_:from:)(v2, v36);
  }

  while (v34 != 15);
}

uint64_t sub_1B37AD738(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = v1;
      sub_1B37AD7A8(v2);
    }
  }

  return result;
}

void sub_1B37AD7A8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (2)
    {
      v8 = byte_1F2AB2BB8[v7++ + 32];
      switch(v8)
      {
        case 1:
          v9 = [a1 isZoomedInChanged];
          goto LABEL_20;
        case 2:
          v9 = [a1 badgeInfoChanged];
          goto LABEL_20;
        case 3:
          v9 = [a1 videoPlayerDidChange];
          goto LABEL_20;
        case 4:
          v9 = [a1 focusValueChanged];
          goto LABEL_20;
        case 5:
          v9 = [a1 assetChanged];
          goto LABEL_20;
        case 6:
          v9 = [a1 infoButtonPropertyChanged];
          goto LABEL_20;
        case 7:
          v9 = [a1 importStateChanged];
          goto LABEL_20;
        case 8:
          v9 = [a1 isInEditModeChanged];
          goto LABEL_20;
        case 9:
          v9 = [a1 visualIntelligenceAnalyzeRequestIDChanged];
          goto LABEL_20;
        case 10:
          v9 = [a1 bestImageChanged];
          goto LABEL_20;
        case 11:
          v9 = [a1 isFavoriteChanged];
          goto LABEL_20;
        case 12:
          v9 = [a1 modelTileTransformChanged];
          goto LABEL_20;
        case 13:
          v9 = [a1 0x1FABB49D3];
          goto LABEL_20;
        case 14:
          if (![a1 0x1FB8967F8])
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        default:
          v9 = [a1 accessoryViewVisibilityChanged];
LABEL_20:
          if (v9)
          {
LABEL_21:
            v10 = v6;
            PhotosUIOneUpChromeEnvironment.AssetViewModelProperty.update(_:from:)(v2, v5);
          }

LABEL_22:
          if (v7 != 15)
          {
            continue;
          }

          break;
      }

      break;
    }
  }
}

void PhotosUIOneUpChromeEnvironment.AssetViewModelProperty.update(_:from:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v103 - v6;
  switch(*v2)
  {
    case 1:
      if (a2)
      {
        v8 = [a2 isZoomedIn];
      }

      else
      {
        v8 = 0;
      }

      sub_1B37ACFDC();
      OUTLINED_FUNCTION_33_2();
      if (!v36)
      {
        v37 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isCurrentAssetZoomedIn;
        goto LABEL_69;
      }

      return;
    case 2:
      sub_1B3737A54([a2 badgeInfoPromise]);
      return;
    case 3:
      sub_1B37ABE78();
      return;
    case 4:
      if (a2)
      {
        [a2 focusValue];
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      if (v10 != _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC28currentAssetNormalizedOffset12CoreGraphics7CGFloatVvg_0())
      {
        sub_1B37A9928(v10);
      }

      return;
    case 5:
      v13 = [a2 asset];
      sub_1B37AEF94();
      v14 = swift_unknownObjectRetain();
      sub_1B3844FE4(v14);
      if (v13)
      {
        v105 = v13;
        sub_1B3C9D318();
        sub_1B37AAA0C(&v106);
        OUTLINED_FUNCTION_20();
        v15 = swift_allocObject();
        *(v15 + 16) = v13;
        OUTLINED_FUNCTION_20();
        v16 = swift_allocObject();
        *(v16 + 16) = v13;
        *&v106 = sub_1B37B1238;
        *(&v106 + 1) = v16;
        *&v107 = sub_1B37B1230;
        *(&v107 + 1) = v15;
        swift_unknownObjectRetain_n();
        sub_1B3806344(&v106);
        objc_opt_self();
        v17 = OUTLINED_FUNCTION_49_1();
        v18 = &selRef_componentsSeparatedByCharactersInSet_;
        if (v17)
        {
          v19 = v17;
          v20 = a1[2];
          swift_unknownObjectRetain();
          v21 = [v20 currentAssetReference];
          if (v21)
          {
            v22 = [v21 assetCollection];

            if (v22)
            {
              objc_opt_self();
              v23 = swift_dynamicCastObjCClass();
              if (v23)
              {
                v24 = v23;
                sub_1B3C9CE48();
                OUTLINED_FUNCTION_14();
                swift_beginAccess();
                Strong = swift_unknownObjectWeakLoadStrong();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v26 = sub_1B37AF9A0(v19, v24, Strong);
                type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpAssetCloudSharedProperties();
                OUTLINED_FUNCTION_7_1();
                v27 = swift_allocObject();
                v27[3] = v26;
                v27[4] = 1;
                v27[2] = v13;
                OUTLINED_FUNCTION_22_4();
                v31 = sub_1B37B1264(v28, v29, v30);
                KeyPath = swift_getKeyPath();
                MEMORY[0x1EEE9AC00](KeyPath);
                *(&v103 - 4) = a1;
                *(&v103 - 3) = v27;
                *(&v103 - 2) = v31;
                v104 = v26;
                v18 = &selRef_componentsSeparatedByCharactersInSet_;
                sub_1B37AA808();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                goto LABEL_74;
              }

              swift_unknownObjectRelease();
            }
          }

          swift_unknownObjectRelease();
        }

        type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpAssetCloudSharedProperties();
        OUTLINED_FUNCTION_7_1();
        v62 = swift_allocObject();
        *(v62 + 16) = v13;
        *(v62 + 24) = xmmword_1B3D01200;
        OUTLINED_FUNCTION_22_4();
        v66 = sub_1B37B1264(v63, v64, v65);
        v67 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v67);
        OUTLINED_FUNCTION_20_6();
        *(v68 - 32) = a1;
        *(v68 - 24) = v62;
        *(v68 - 16) = v66;
        OUTLINED_FUNCTION_51_1();
        sub_1B37AA808();
LABEL_74:

        v69 = a1[3];
        if (v69)
        {
          v104 = 0;
          v70 = a1[2];
          v71 = v69;
          v72 = [v70 v18[431]];
          if (v72)
          {
            v73 = v72;
            type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpPerformableActionProperties();
            OUTLINED_FUNCTION_7_1();
            v74 = swift_allocObject();
            v74[3] = v73;
            v74[4] = 0;
            v74[2] = v71;
            v76 = sub_1B37B1264(&qword_1EB84FDC0, v75, type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpPerformableActionProperties);
            v77 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v77);
            *(&v103 - 4) = a1;
            *(&v103 - 3) = v74;
            *(&v103 - 2) = v76;
            v103 = v71;
            v78 = v73;
            sub_1B37AA808();

LABEL_79:

            if (a2)
            {
              [a2 isHDR];
            }

            _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC10isHDRAssetSbvg_0();
            OUTLINED_FUNCTION_33_2();
            if (!v36)
            {
              OUTLINED_FUNCTION_2_20();
              v82 = OUTLINED_FUNCTION_38_4();
              sub_1B37A96D8(v82, v83);
            }

            v84 = [v13 mediaType];
            sub_1B37AFA08(v84);
            if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC14assetMediaTypeSo014PXDisplayAssethI0Vvg_0() != v84)
            {
              sub_1B37A9D00(v84);
            }

            objc_opt_self();
            v85 = OUTLINED_FUNCTION_49_1();
            if (v85)
            {
              [v85 px_isSharedAlbumAsset];
            }

            _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC18isSharedAlbumAssetSbvg_0();
            OUTLINED_FUNCTION_33_2();
            if (!v36)
            {
              OUTLINED_FUNCTION_6_16();
              v86 = OUTLINED_FUNCTION_38_4();
              sub_1B37A96D8(v86, v87);
            }

            objc_opt_self();
            v88 = OUTLINED_FUNCTION_49_1();
            if (v88)
            {
              [v88 isCollectionShareAsset];
            }

            _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC23isSharedCollectionAssetSbvg_0();
            OUTLINED_FUNCTION_33_2();
            if (!v36)
            {
              OUTLINED_FUNCTION_5_15();
              v89 = OUTLINED_FUNCTION_38_4();
              sub_1B37A96D8(v89, v90);
            }

            objc_opt_self();
            v91 = OUTLINED_FUNCTION_49_1();
            if (v91)
            {
              [v91 sourceType];
            }

            _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC16isMacSyncedAssetSbvg_0();
            OUTLINED_FUNCTION_33_2();
            if (!v36)
            {
              OUTLINED_FUNCTION_4_17();
              v92 = OUTLINED_FUNCTION_38_4();
              sub_1B37A96D8(v92, v93);
            }

            objc_opt_self();
            v94 = OUTLINED_FUNCTION_49_1();
            if (v94)
            {
              [v94 px_isSyndicationPhotoLibraryAsset];
            }

            _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC25isSyndicationLibraryAssetSbvg_0();
            OUTLINED_FUNCTION_33_2();
            if (!v36)
            {
              OUTLINED_FUNCTION_3_20();
              v95 = OUTLINED_FUNCTION_38_4();
              sub_1B37A96D8(v95, v96);
            }

            if ((_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC11assetExistsSbvg_0() & 1) == 0)
            {
              OUTLINED_FUNCTION_1_19();
              sub_1B37A96D8(1, v97);
            }

            [v13 aspectRatio];
            OUTLINED_FUNCTION_40_2();
            sub_1B37ACBAC(v98, 0, v99);
            v100 = [v13 needsSensitivityProtection];
            if ((v100 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC44isAssetContentRequiringSensitivityProtectionSbvg_0()))
            {
              OUTLINED_FUNCTION_7_20();
              v101 = OUTLINED_FUNCTION_38_4();
              sub_1B37A96D8(v101, v102);
            }

            swift_unknownObjectRelease();
            return;
          }
        }

        sub_1B3C99D98();
        OUTLINED_FUNCTION_36_0();
        v79 = sub_1B3C99D68();
        v80 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v80);
        OUTLINED_FUNCTION_20_6();
        *(v81 - 32) = a1;
        *(v81 - 24) = v79;
        *(v81 - 16) = MEMORY[0x1E69C2E88];
        OUTLINED_FUNCTION_51_1();
        sub_1B37AA808();
        goto LABEL_79;
      }

      sub_1B37ACAB8();
      if ((v42 & 1) == 0)
      {
        sub_1B37A9DAC(0, 1, &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetAspectRatio);
      }

      v106 = 1uLL;
      v107 = 0uLL;
      sub_1B3806344(&v106);
      v108 = 0;
      v106 = 0u;
      v107 = 0u;
      sub_1B37AAA0C(&v106);
      if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC10isHDRAssetSbvg_0())
      {
        OUTLINED_FUNCTION_2_20();
        OUTLINED_FUNCTION_47_2(v43, v44);
      }

      if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC14assetMediaTypeSo014PXDisplayAssethI0Vvg_0())
      {
        sub_1B37A9D00(0);
      }

      sub_1B3C99C98();
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_14();
      v45 = sub_1B3C99C88();
      v46 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v46);
      OUTLINED_FUNCTION_20_6();
      *(v47 - 32) = a1;
      *(v47 - 24) = v45;
      *(v47 - 16) = MEMORY[0x1E69C2E08];
      OUTLINED_FUNCTION_51_1();
      sub_1B37AA808();

      sub_1B3C99D98();
      OUTLINED_FUNCTION_36_0();
      v48 = sub_1B3C99D68();
      v49 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v49);
      OUTLINED_FUNCTION_20_6();
      *(v50 - 32) = a1;
      *(v50 - 24) = v48;
      *(v50 - 16) = MEMORY[0x1E69C2E88];
      OUTLINED_FUNCTION_51_1();
      sub_1B37AA808();

      if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC18isSharedAlbumAssetSbvg_0())
      {
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_47_2(v51, v52);
      }

      if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC23isSharedCollectionAssetSbvg_0())
      {
        OUTLINED_FUNCTION_5_15();
        OUTLINED_FUNCTION_47_2(v53, v54);
      }

      if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC16isMacSyncedAssetSbvg_0())
      {
        OUTLINED_FUNCTION_4_17();
        OUTLINED_FUNCTION_47_2(v55, v56);
      }

      if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC25isSyndicationLibraryAssetSbvg_0())
      {
        OUTLINED_FUNCTION_3_20();
        OUTLINED_FUNCTION_47_2(v57, v58);
      }

      if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC11assetExistsSbvg_0())
      {
        OUTLINED_FUNCTION_1_19();
        OUTLINED_FUNCTION_47_2(v59, v60);
      }

      if (_s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC44isAssetContentRequiringSensitivityProtectionSbvg_0())
      {
        OUTLINED_FUNCTION_7_20();
        v61 = 0;
        goto LABEL_70;
      }

      return;
    case 6:
      sub_1B37AB804();
      goto LABEL_25;
    case 7:
      sub_1B37AE844();
      return;
    case 8:
      if (a2)
      {
        v8 = [a2 isInEditMode];
      }

      else
      {
        v8 = 0;
      }

      _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC12isInEditModeSbvg_0();
      OUTLINED_FUNCTION_33_2();
      if (v36)
      {
        return;
      }

      v37 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isInEditMode;
      goto LABEL_69;
    case 9:
    case 0xA:
LABEL_25:
      sub_1B37AEF94();
      return;
    case 0xB:
      if (a2)
      {
        v8 = [a2 isFavorite];
      }

      else
      {
        v8 = 0;
      }

      _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC15assetIsFavoriteSbvg_0();
      OUTLINED_FUNCTION_33_2();
      if (v36)
      {
        return;
      }

      v37 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___assetIsFavorite;
      goto LABEL_69;
    case 0xC:
      if (a2)
      {
        v11 = [a2 modelTileTransform];
        if (v11)
        {
          v12 = v11;
          [v11 scale];
        }
      }

      OUTLINED_FUNCTION_39_3();
      sub_1B37ACBAC(v38, v39, v40);
      return;
    case 0xD:
      if (a2 && (v33 = [a2 assetSyndicationStateOverride]) != 0)
      {
        sub_1B37AFABC(v33, v7);
        v34 = sub_1B3C99C28();
        v35 = 0;
      }

      else
      {
        v34 = sub_1B3C99C28();
        v35 = 1;
      }

      __swift_storeEnumTagSinglePayload(v7, v35, 1, v34);
      sub_1B38452F4(v7);
      return;
    case 0xE:
      if (a2)
      {
        v8 = [a2 isFullyInFocus];
      }

      else
      {
        v8 = 0;
      }

      _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC22currentAssetIsCenteredSbvg_0();
      OUTLINED_FUNCTION_33_2();
      if (v36)
      {
        return;
      }

      v37 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetIsCentered;
LABEL_69:
      v61 = v8;
LABEL_70:
      sub_1B37A96D8(v61, v37);
      return;
    default:
      if (a2)
      {
        [a2 isAccessoryViewVisible];
      }

      _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC22isAccessoryViewVisibleSbvg_0();
      OUTLINED_FUNCTION_33_2();
      if (!v36)
      {
        v41 = OUTLINED_FUNCTION_38_4();
        sub_1B37A977C(v41);
      }

      return;
  }
}

void (*PhotosUIOneUpChromeEnvironment.currentAssetViewModel.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1B37AE7D8;
}

void sub_1B37AE7D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    PhotosUIOneUpChromeEnvironment.currentAssetViewModel.setter(v3);
  }

  else
  {
    PhotosUIOneUpChromeEnvironment.currentAssetViewModel.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1B37AE844()
{
  v1 = v0;
  v2 = sub_1B3C99B18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 importState];
    v10 = PhotosUIOneUpChromeEnvironment.performableActionProperties.getter();
    v12 = v11;
    type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpAssetCloudLinkProperties(0);
    v13 = swift_allocObject();
    sub_1B37AFEB8(v9, v10, v12);
    v14 = sub_1B37B1264(&unk_1EB84FDF0, 255, type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpAssetCloudLinkProperties);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v19 - 4) = v1;
    *(&v19 - 3) = v13;
    *(&v19 - 2) = v14;
    sub_1B37AA808();
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69C2CA8], v2);
    sub_1B3C99C08();
    swift_allocObject();
    v16 = sub_1B3C99BF8();
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    *(&v19 - 4) = v1;
    *(&v19 - 3) = v16;
    *(&v19 - 2) = MEMORY[0x1E69C2DB8];
    sub_1B37AA808();
  }
}

void sub_1B37AEAD8(id a1)
{
  v3 = 0;
  while (2)
  {
    v4 = byte_1F2AB2B90[v3++ + 32];
    switch(v4)
    {
      case 1:
        v5 = [a1 contentPrivacyStateDidChange];
        goto LABEL_12;
      case 2:
        v5 = [a1 isInSelectionModeDidChange];
        goto LABEL_12;
      case 3:
        v5 = [a1 0x1FB2173A6];
        goto LABEL_12;
      case 4:
        v5 = [a1 0x1FB4F7717];
        goto LABEL_12;
      case 5:
        v5 = [a1 0x1FAEAFBA4];
        goto LABEL_12;
      case 6:
        v5 = [a1 0x1FB410AF8];
        goto LABEL_12;
      case 7:
        if (![a1 0x1FADDB578])
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      default:
        v5 = [a1 chromeVisibilityDidChange];
LABEL_12:
        if (v5)
        {
LABEL_13:
          sub_1B37AEBE0(v1, *(v1 + 16), v4);
        }

LABEL_14:
        if (v3 != 8)
        {
          continue;
        }

        return;
    }
  }
}

void sub_1B37AEBE0(uint64_t a1, void *a2, char a3)
{
  v5 = sub_1B3C99B58();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  if (a2)
  {
    v12 = a2;
    v20 = v12;
    switch(a3)
    {
      case 1:
        v16 = [v12 contentPrivacyState];
        if (!v16)
        {
          v17 = MEMORY[0x1E69C2D00];
LABEL_25:
          (*(v7 + 104))(v11, *v17, v5);
          sub_1B37AB600();

          return;
        }

        if (v16 == 1)
        {
          v17 = MEMORY[0x1E69C2CF8];
          goto LABEL_25;
        }

        sub_1B3C9D4C8();
        __break(1u);
        break;
      case 2:
        v13 = [v12 isInSelectionMode];
        if (((v13 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC17isInSelectionModeSbvg_0()) & 1) == 0)
        {
          goto LABEL_14;
        }

        v14 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isInSelectionMode;
        goto LABEL_12;
      case 3:
        PhotosUIOneUpChromeEnvironment.currentAssetViewModel.setter([v12 assetViewModelForCurrentAssetReference]);
        goto LABEL_14;
      case 4:
        v13 = [v12 isPresentedForPreview];
        if (((v13 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC21isPresentedForPreviewSbvg_0()) & 1) == 0)
        {
          goto LABEL_14;
        }

        v14 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isPresentedForPreview;
        goto LABEL_12;
      case 5:
        v18 = [v12 isScrubbing];
        if ((v18 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC11isScrubbingSbvg_0()))
        {
          sub_1B37A984C(v18);
        }

        goto LABEL_14;
      case 6:
        v19 = [v12 videoOverlayPlayState] == 2;
        if (((v19 ^ sub_1B37ACFF0()) & 1) == 0)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_25_3();
        goto LABEL_13;
      case 7:
        v13 = [v12 isAnimatingPresentationSize];
        if (((v13 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC27isAnimatingPresentationSizeSbvg_0()) & 1) == 0)
        {
          goto LABEL_14;
        }

        v14 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isAnimatingPresentationSize;
        goto LABEL_12;
      default:
        v13 = [v12 isChromeVisible];
        if (((v13 ^ _s15PhotosUIPrivate0A24UIOneUpChromeEnvironmentC02isE7VisibleSbvg_0()) & 1) == 0)
        {
          goto LABEL_14;
        }

        v14 = &OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___isChromeVisible;
LABEL_12:
        v15 = v13;
LABEL_13:
        sub_1B37A96D8(v15, v14);
LABEL_14:

        return;
    }
  }
}

void sub_1B37AEF1C(char a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = [v3 px_selectionManager];
    if (v4)
    {
      if (a1)
      {
        v5 = v4;
        sub_1B37AF7C0();
        v4 = v5;
      }
    }
  }
}

uint64_t sub_1B37AEF94()
{
  v0 = sub_1B3C99B98();
  v68 = *(v0 - 8);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v60 - v4;
  v6 = sub_1B3C99BC8();
  v67 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B3C99BB8();
  v69 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852380);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v60 - v19;
  result = PFOSVariantHasInternalUI();
  if (!result)
  {
    return result;
  }

  v66 = v0;
  sub_1B37B1D10();
  v22 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1B3C9CDD8();

  v23 = sub_1B3C991F8();
  LODWORD(v22) = __swift_getEnumTagSinglePayload(v20, 1, v23);
  sub_1B371B36C(v20, &qword_1EB852380);
  if (v22 == 1)
  {
    return sub_1B37A9A64();
  }

  v24 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment_currentAssetViewModel;
  v25 = v70;
  swift_beginAccess();
  v26 = *(v25 + v24);
  if (!v26)
  {
    return sub_1B37A9A64();
  }

  v27 = v26;
  v28 = [v27 asset];
  if (!v28)
  {

    return sub_1B37A9A64();
  }

  v64 = v3;
  v29 = v28;
  sub_1B3C996E8();
  swift_allocObject();
  v30 = sub_1B3C996D8();
  swift_unknownObjectRetain();
  v65 = v29;
  v63 = v30;
  sub_1B3C996A8();
  v31 = [v27 visualImageAnalysis];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 hasTexts];
    v62 = v27;
    if (v33)
    {
      (*(v69 + 104))(v17, *MEMORY[0x1E69C2D88], v9);
      sub_1B370FB68(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v35 = v34;
      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v61 = v37 + 1;
        sub_1B370FB68(v36 > 1, v37 + 1, 1, v34);
        v38 = v61;
        v35 = v55;
      }

      *(v35 + 16) = v38;
      (*(v69 + 32))(v35 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v37, v17, v9);
      v27 = v62;
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    if ([v32 hasDataDetectors])
    {
      (*(v69 + 104))(v15, *MEMORY[0x1E69C2D80], v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B370FB68(0, *(v35 + 16) + 1, 1, v35);
        v35 = v56;
      }

      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1B370FB68(v42 > 1, v43 + 1, 1, v35);
        v35 = v57;
      }

      *(v35 + 16) = v43 + 1;
      (*(v69 + 32))(v35 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v43, v15, v9);
      v27 = v62;
    }

    if ([v32 hasVisualSearchResults])
    {
      (*(v69 + 104))(v12, *MEMORY[0x1E69C2D78], v9);
      v44 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B370FB68(0, *(v35 + 16) + 1, 1, v35);
        v35 = v58;
      }

      v46 = *(v35 + 16);
      v45 = *(v35 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1B370FB68(v45 > 1, v46 + 1, 1, v35);
        v35 = v59;
      }

      *(v35 + 16) = v46 + 1;
      (*(v69 + 32))(v35 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v46, v12, v9);
      v27 = v44;
    }

    *v8 = v35;
    (*(v67 + 104))(v8, *MEMORY[0x1E69C2DA0], v6);
    sub_1B3C996C8();
    swift_unknownObjectRelease();
    v40 = v64;
  }

  else
  {
    v39 = [v27 visualIntelligenceAnalyzeRequestID];
    v40 = v64;
    if (v39)
    {
      v41 = MEMORY[0x1E69C2DA8];
    }

    else
    {
      v41 = MEMORY[0x1E69C2D98];
    }

    (*(v67 + 104))(v8, *v41, v6);
    sub_1B3C996C8();
  }

  v47 = v27;
  v48 = [v27 bestImage];
  v49 = v66;
  if (v48)
  {
    v50 = v48;
    v51 = [v48 isHighDynamicRange];
    v52 = MEMORY[0x1E69C2D60];
    if (!v51)
    {
      v52 = MEMORY[0x1E69C2D70];
    }

    (*(v68 + 104))(v5, *v52, v49);
    v53 = sub_1B3C996B8();
    sub_1B3C99BA8();
    v53(v71, 0);
  }

  else
  {
    (*(v68 + 104))(v40, *MEMORY[0x1E69C2D68], v66);
    v54 = sub_1B3C996B8();
    sub_1B3C99BA8();
    v54(v71, 0);
  }

  sub_1B37A9A64();

  swift_unknownObjectRelease();
}

uint64_t sub_1B37AF774()
{
  if (![v0 visualImageAnalysis])
  {
    return [v0 hasVisualAnalysisFailed];
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1B37AF7C0()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = [v1 px_selectionManager]) != 0 && (v3 = v2, v4 = objc_msgSend(v2, sel_selectionSnapshot), v3, v4))
  {
    type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpDuplicateMergingProperties();
    v5 = swift_allocObject();
    *(v5 + 32) = 1;
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    sub_1B37B1264(&unk_1EB84FDC8, v6, type metadata accessor for PhotosUIOneUpChromeEnvironment.ConcreteOneUpDuplicateMergingProperties);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v4;
    sub_1B37AA808();
  }

  else
  {
    sub_1B3C99D78();
    swift_allocObject();
    sub_1B3C99D68();
    v9 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v9);
    sub_1B37AA808();
  }
}

id sub_1B37AF9A0(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAsset:a1 sharedAlbum:a2 presentingViewController:a3];

  return v6;
}

unint64_t sub_1B37AFA08(unint64_t result)
{
  if (result >= 4)
  {
    sub_1B3C9D378();
    MEMORY[0x1B8C69C10](0xD000000000000013, 0x80000001B3D15C40);
    type metadata accessor for PUAssetMediaType(0);
    sub_1B3C9D458();
    result = OUTLINED_FUNCTION_56_0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B37AFABC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 integerValue];
  if (v4 >= 5)
  {
    sub_1B3C9D378();
    MEMORY[0x1B8C69C10](0xD000000000000020, 0x80000001B3D15C60);
    type metadata accessor for PUAssetSyndicationState(0);
    sub_1B3C9D458();
    result = sub_1B3C9D4C8();
    __break(1u);
  }

  else
  {
    v5 = qword_1E7B73920[v4];

    v6 = *v5;
    v7 = sub_1B3C99C28();
    v8 = *(*(v7 - 8) + 104);

    return v8(a2, v6, v7);
  }

  return result;
}

uint64_t PhotosUIOneUpChromeEnvironment.AssetViewModelProperty.hashValue.getter()
{
  v1 = *v0;
  sub_1B3C9D7C8();
  MEMORY[0x1B8C6AD50](v1);
  return sub_1B3C9D7F8();
}

id sub_1B37AFCA8()
{
  v1 = [*(v0 + 24) createMenuIfNeeded];

  return v1;
}

id sub_1B37AFCF8(SEL *a1)
{
  result = sub_1B37AFD88();
  if (result)
  {
    v3 = result;
    v4 = [result *a1];

    return v4;
  }

  return result;
}

id sub_1B37AFD40()
{
  v0 = sub_1B37AFD88();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 hasUserLiked];

  return v2;
}

id sub_1B37AFD88()
{
  v1 = *(v0 + 32);
  v2 = v1;
  if (v1 == 1)
  {
    if (*(v0 + 16))
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        swift_unknownObjectRetain();
        [v2 fetchPropertySetsIfNeeded];
        v2 = [v2 commentProperties];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v2 = 0;
    }

    v3 = *(v0 + 32);
    *(v0 + 32) = v2;
    v4 = v2;
    sub_1B37B1A0C(v3);
  }

  sub_1B37B1A1C(v1);
  return v2;
}

uint64_t sub_1B37AFE48()
{
  swift_unknownObjectRelease();

  sub_1B37B1A0C(*(v0 + 32));
  return v0;
}

uint64_t sub_1B37AFE78()
{
  sub_1B37AFE48();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B37AFEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_1();
  v7 = OBJC_IVAR____TtCC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment37ConcreteOneUpAssetCloudLinkProperties____lazy_storage___computedLinkType;
  v8 = sub_1B3C99B18();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  v3[2] = v5;
  v3[3] = v4;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1B37AFF20@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8541B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtCC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment37ConcreteOneUpAssetCloudLinkProperties____lazy_storage___computedLinkType;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  sub_1B373EE18(v1 + v9, v8, &qword_1EB8541B0);
  v10 = sub_1B3C99B18();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  sub_1B371B36C(v8, &qword_1EB8541B0);
  sub_1B37B00F4(v1, a1);
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1B37B199C(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1B37B00F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v3 = sub_1B3C99CA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B3C99AA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v8 + 104))(v10, *MEMORY[0x1E69C2C40], v7);
  v11 = sub_1B3C99CD8();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    v14 = MEMORY[0x1E69C2CA8];
    v13 = v18[0];
    goto LABEL_5;
  }

  v12 = *(a1 + 16);
  if (v12 < 5)
  {
    (*(v4 + 104))(v6, **(&unk_1E7B73948 + v12), v3);
    v13 = v18[0];
    (*(v4 + 32))(v18[0], v6, v3);
    v14 = MEMORY[0x1E69C2CB0];
LABEL_5:
    v15 = *v14;
    v16 = sub_1B3C99B18();
    return (*(*(v16 - 8) + 104))(v13, v15, v16);
  }

  v18[2] = 0;
  v18[3] = 0xE000000000000000;
  sub_1B3C9D378();
  MEMORY[0x1B8C69C10](0xD000000000000019, 0x80000001B3D10730);
  v18[1] = v12;
  type metadata accessor for PXOperationState(0);
  sub_1B3C9D458();
  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

uint64_t sub_1B37B03EC()
{
  swift_unknownObjectRelease();
  sub_1B371B36C(v0 + OBJC_IVAR____TtCC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment37ConcreteOneUpAssetCloudLinkProperties____lazy_storage___computedLinkType, &qword_1EB8541B0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1B37B0470()
{
  if (*(v0 + 32) != 1)
  {
    return *(v0 + 24);
  }

  v1 = PXDeduplicationAssetsThatCanBeMergedInSelection();
  v2 = [v1 selectedIndexPaths];

  v3 = [v2 count];
  *(v0 + 24) = v3;
  *(v0 + 32) = 0;
  return v3;
}

uint64_t sub_1B37B04FC()
{

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

id sub_1B37B0538(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1B3C99AA8();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_12();
  v9 = sub_1B37B0BB4();
  if (*(v9 + 16))
  {
    v10 = sub_1B371EFB8();
    if (v11)
    {
      v12 = *(*(v9 + 56) + v10);
      goto LABEL_21;
    }
  }

  v13 = *(v7 + 104);
  v14 = OUTLINED_FUNCTION_50_1();
  v13(v14);
  v15 = sub_1B3C99A98();
  v16 = *(v7 + 8);
  v16(v2, v5);
  if (v15)
  {
    v35 = v13;
    v17 = *(v3 + 24);
    if ([v17 asset])
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v18 = 0;
    }

    if ([v17 assetCollection])
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (!v23)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v23 = 0;
    }

    v12 = [objc_opt_self() canExpungeAsset:v18 inAssetCollection:v23];

    v13 = v35;
    goto LABEL_19;
  }

  v19 = OUTLINED_FUNCTION_50_1();
  v13(v19);
  v20 = sub_1B3C99A98();
  v16(v2, v5);
  if ((v20 & 1) == 0)
  {
    v34 = *(v3 + 16);
    v35 = v13;
    v12 = [v34 canPerformActionType:sub_1B37B0948() onAsset:objc_msgSend(*(v3 + 24) inAssetCollection:{sel_asset), objc_msgSend(*(v3 + 24), sel_assetCollection)}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_19:
    v24 = OUTLINED_FUNCTION_50_1();
    v13(v24);
    sub_1B37B1264(&qword_1EB84F918, 255, MEMORY[0x1E69C2C90]);
    v25 = sub_1B3C9C528();
    v16(v2, v5);
    if (v25)
    {
      return v12;
    }

    v26 = *(v3 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B371F7D8(v12, a1, isUniquelyReferenced_nonNull_native, v28, v29, v30, v31, v32, v33, v34, v35, v26, v37, v38, v39, v40, v41, v42, v43, v44);
    *(v3 + 32) = v36;
LABEL_21:

    return v12;
  }

  result = [*(v3 + 24) asset];
  if (result)
  {
    v22 = [result mediaType];
    swift_unknownObjectRelease();
    v12 = v22 == 1 && [objc_opt_self() status] != 0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B37B0948()
{
  v1 = v0;
  v2 = sub_1B3C99AA8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E69C2C40])
  {
    return 62;
  }

  if (v9 == *MEMORY[0x1E69C2C48])
  {
    return 65;
  }

  if (v9 == *MEMORY[0x1E69C2C58])
  {
    return 5;
  }

  if (v9 == *MEMORY[0x1E69C2C78])
  {
    return 6;
  }

  if (v9 == *MEMORY[0x1E69C2C70])
  {
    return 4;
  }

  if (v9 == *MEMORY[0x1E69C2C88])
  {
    return 37;
  }

  if (v9 == *MEMORY[0x1E69C2C50])
  {
    return 56;
  }

  if (v9 == *MEMORY[0x1E69C2C80])
  {
    return 8;
  }

  if (v9 == *MEMORY[0x1E69C2C60] || v9 == *MEMORY[0x1E69C2C38] || v9 == *MEMORY[0x1E69C2C68])
  {
    return 0;
  }

  sub_1B3C9D378();
  MEMORY[0x1B8C69C10](0xD00000000000001BLL, 0x80000001B3D15BF0);
  sub_1B3C9D458();
  result = OUTLINED_FUNCTION_56_0();
  __break(1u);
  return result;
}

uint64_t sub_1B37B0BB4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
    *(v0 + 32) = MEMORY[0x1E69E7CC8];
  }

  return v1;
}

uint64_t sub_1B37B0C24()
{
  sub_1B37B0BF4();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id *PhotosUIOneUpChromeEnvironment.deinit()
{
  MEMORY[0x1B8C6EDB0](v0 + 5);

  sub_1B371B36C((v0 + 7), &qword_1EB857300);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___assetCollectionKind;
  sub_1B3C99B38();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___contentPrivacyState;
  sub_1B3C99B58();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(v0 + v3);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___visualAnalysisState;
  sub_1B3C99B68();
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 8))(v0 + v5);

  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___observationRegistrar;
  sub_1B3C98318();
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t PhotosUIOneUpChromeEnvironment.__deallocating_deinit()
{
  PhotosUIOneUpChromeEnvironment.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t (*sub_1B37B0F68(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B37B0FE4;
}

void sub_1B37B0FE8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_1B37B1084(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v2 = a1;
      sub_1B37AEAD8(v2);
    }
  }
}

uint64_t sub_1B37B10F4(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B37AEF1C(a2);
  }

  return result;
}

uint64_t sub_1B37B1154(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = a1 == 0x7261426775626564 && a2 == 0xEC000000646E694BLL;
    if (v5 || (sub_1B3C9D6A8() & 1) != 0)
    {
      sub_1B37AEF94();
    }
  }

  return result;
}

uint64_t sub_1B37B1264(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B37B12D4()
{
  result = qword_1EB854110;
  if (!qword_1EB854110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854110);
  }

  return result;
}

unint64_t sub_1B37B1328(uint64_t a1)
{
  result = sub_1B37B1350();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B37B1350()
{
  result = qword_1EB854118;
  if (!qword_1EB854118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854118);
  }

  return result;
}

unint64_t sub_1B37B13A8()
{
  result = qword_1EB854120;
  if (!qword_1EB854120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB854128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854120);
  }

  return result;
}

uint64_t keypath_get_74Tm()
{
  OUTLINED_FUNCTION_2_0();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B37B1494()
{
  result = sub_1B3C99B38();
  if (v1 <= 0x3F)
  {
    result = sub_1B3C99B58();
    if (v2 <= 0x3F)
    {
      result = sub_1B3C99B68();
      if (v3 <= 0x3F)
      {
        result = sub_1B3C98318();
        if (v4 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosUIOneUpChromeEnvironment.AssetViewModelProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosUIOneUpChromeEnvironment.AssetViewModelProperty(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

void sub_1B37B1878()
{
  sub_1B37B1920();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B37B1920()
{
  if (!qword_1EB84F910)
  {
    sub_1B3C99B18();
    v0 = sub_1B3C9D198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB84F910);
    }
  }
}

uint64_t sub_1B37B199C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8541B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B37B1A0C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1B37B1A1C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B37B1C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B37B1D10()
{
  result = qword_1EB84FE30;
  if (!qword_1EB84FE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB84FE30);
  }

  return result;
}

uint64_t keypath_get_193Tm()
{
  OUTLINED_FUNCTION_2_0();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

double sub_1B37B1DFC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC15PhotosUIPrivate30PhotosUIOneUpChromeEnvironment___currentAssetNormalizedOffset) = result;
  return result;
}

uint64_t sub_1B37B1E3C()
{
  OUTLINED_FUNCTION_55_1();
  swift_getKeyPath();
  sub_1B37AA808();

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return sub_1B3C982D8();
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return sub_1B3C9C528();
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1, void *a2)
{

  return sub_1B37A96D8(0, a2);
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return sub_1B3C9D4C8();
}

unint64_t sub_1B37B22B4()
{
  result = qword_1EB8541C0;
  if (!qword_1EB8541C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8541C0);
  }

  return result;
}

unint64_t sub_1B37B230C()
{
  result = qword_1EB8541C8;
  if (!qword_1EB8541C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8541C8);
  }

  return result;
}

uint64_t sub_1B37B237C()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878CD0);
  __swift_project_value_buffer(v6, qword_1EB878CD0);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B37B2568()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8541E8);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8541F0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B37B39C4();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8541F8);
  sub_1B3C97C88();

  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854200);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  return sub_1B3C97C78();
}

uint64_t sub_1B37B2758@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37136F8();
  *a1 = result;
  return result;
}

uint64_t sub_1B37B2784()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37B281C, v5, v4);
}

uint64_t sub_1B37B281C()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1B37B39C4();
  *v4 = v0;
  v4[1] = sub_1B37B2928;
  v5 = v0[4];

  return MEMORY[0x1EEE2CA70](v5, 0, 0, 0, 0, 0, 1, &unk_1B3D02368);
}

uint64_t sub_1B37B2928()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1B37B2A2C;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1B374E274;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37B2A2C()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37B2A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1B3C9C888();
  v3[6] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37B2B30, v5, v4);
}

uint64_t sub_1B37B2B30()
{
  sub_1B3C97B28();
  v0[9] = v0[2];
  sub_1B3C97B28();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1B37B2BF0;

  return sub_1B37B2DC4();
}

uint64_t sub_1B37B2BF0()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1B37B2D5C;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1B37B2CF4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37B2CF4()
{
  OUTLINED_FUNCTION_0_0();

  sub_1B3C97B18();
  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37B2D5C()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37B2DC4()
{
  OUTLINED_FUNCTION_0_0();
  *(v0 + 96) = v1;
  *(v0 + 16) = v2;
  v3 = sub_1B3C9A558();
  *(v0 + 24) = v3;
  *(v0 + 32) = *(v3 - 8);
  *(v0 + 40) = swift_task_alloc();
  sub_1B3C9C888();
  *(v0 + 48) = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  *(v0 + 56) = v5;
  *(v0 + 64) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37B2EB8, v5, v4);
}

uint64_t sub_1B37B2EB8()
{
  v19 = v0;
  v1 = MEMORY[0x1B8C66290](*(v0 + 16));
  v3 = v2;
  sub_1B3C987F8();

  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAE8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 24);
  if (v6)
  {
    v17 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    v12 = sub_1B3749364(v1, v3, &v18);

    *(v10 + 4) = v12;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v17;
    _os_log_impl(&dword_1B36F3000, v4, v5, "Parameters: { assets: %{public}s, enabled: %{BOOL}d }", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1B8C6EC70](v11, -1, -1);
    MEMORY[0x1B8C6EC70](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  v13 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v14 = swift_allocObject();
  *(v0 + 72) = v14;
  *(v14 + 16) = xmmword_1B3CF9810;
  *(v14 + 32) = [objc_allocWithZone(MEMORY[0x1E69C41D0]) initWithEnabled_];
  type metadata accessor for PXEditAppDependencyManager();
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_1B37B3108;

  return sub_1B37BDFEC();
}

uint64_t sub_1B37B3108()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1B37B3274;
  }

  else
  {

    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_1B37B320C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37B320C()
{
  OUTLINED_FUNCTION_0_0();

  sub_1B3C98E28();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37B3274()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37B32E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851468);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v40 - v5;
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v45 = v7;
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v44 = v9 - v8;
  v10 = sub_1B3C97C18();
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v43 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  v25 = sub_1B3C98188();
  v26 = OUTLINED_FUNCTION_8_0(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v27 = sub_1B3C9C598();
  v28 = OUTLINED_FUNCTION_8_0(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v41 = sub_1B3C97F48();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852A28);
  sub_1B3C9C538();
  sub_1B3C98178();
  v29 = *MEMORY[0x1E6968DF0];
  v30 = *(v20 + 104);
  v30(v24, v29, v18);
  OUTLINED_FUNCTION_4_18();
  sub_1B3C9C538();
  sub_1B3C98178();
  v30(v24, v29, v18);
  OUTLINED_FUNCTION_4_18();
  v31 = v41;
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v41);
  v50 = 0;
  sub_1B3C97C08();
  v32 = *MEMORY[0x1E695A500];
  v33 = v44;
  v34 = *(v45 + 104);
  v35 = v46;
  v34(v44, v32, v46);
  sub_1B370ED54(&qword_1EB852A30, &qword_1EB852A38);
  sub_1B374FC40();
  v36 = sub_1B3C97BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851470);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v31);
  v49 = 1;
  v37 = sub_1B3C9C828();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v37);
  v38 = sub_1B3C97AE8();
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v38);
  v34(v33, v32, v35);
  sub_1B3C97B88();
  return v36;
}

uint64_t sub_1B37B37F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB84FFE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878CD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B37B38A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B37B2784();
}

uint64_t sub_1B37B3950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37B32E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37B3978(uint64_t a1)
{
  v2 = sub_1B37B39C4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B37B39C4()
{
  result = qword_1EB8541E0;
  if (!qword_1EB8541E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8541E0);
  }

  return result;
}

uint64_t sub_1B37B3A18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B3714CE0;

  return sub_1B37B2A94(a1, v5, v4);
}

uint64_t OneUpChromeAction.requiresDeviceUnlock.getter()
{
  v1 = v0;
  v2 = sub_1B3C995D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C2B68] || v7 == *MEMORY[0x1E69C2B40])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x1E69C2B70])
  {
    return 1;
  }

  v10 = v7 == *MEMORY[0x1E69C2AC0] || v7 == *MEMORY[0x1E69C2AF8];
  v11 = v10 || v7 == *MEMORY[0x1E69C2AF0];
  if (v11 || v7 == *MEMORY[0x1E69C2B78])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x1E69C2B60])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E69C2B30])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x1E69C2AE8] || v7 == *MEMORY[0x1E69C2B80] || v7 == *MEMORY[0x1E69C2B50] || v7 == *MEMORY[0x1E69C2B58] || v7 == *MEMORY[0x1E69C2B88] || v7 == *MEMORY[0x1E69C2B90] || v7 == *MEMORY[0x1E69C2AC8] || v7 == *MEMORY[0x1E69C2B00] || v7 == *MEMORY[0x1E69C2B08])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E69C2B20])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x1E69C2AD8])
  {
    return 1;
  }

  v21 = v7 == *MEMORY[0x1E69C2B28] || v7 == *MEMORY[0x1E69C2AE0];
  if (v21 || v7 == *MEMORY[0x1E69C2AD0])
  {
    return 0;
  }

  if (v7 != *MEMORY[0x1E69C2B38] && v7 != *MEMORY[0x1E69C2AB8] && v7 != *MEMORY[0x1E69C2B10] && v7 != *MEMORY[0x1E69C2B18] && v7 != *MEMORY[0x1E69C2B48])
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1B3C9D378();

    v28 = 0xD000000000000016;
    v29 = 0x80000001B3D15DA0;
    sub_1B37B3E38();
    v27 = sub_1B3C9D678();
    MEMORY[0x1B8C69C10](v27);

    result = sub_1B3C9D4C8();
    __break(1u);
    return result;
  }

  return 1;
}

unint64_t sub_1B37B3E38()
{
  result = qword_1EB8524A8;
  if (!qword_1EB8524A8)
  {
    sub_1B3C995D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8524A8);
  }

  return result;
}

unint64_t sub_1B37B3E94()
{
  result = qword_1EB854208;
  if (!qword_1EB854208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854208);
  }

  return result;
}

unint64_t sub_1B37B3EEC()
{
  result = qword_1EB854210;
  if (!qword_1EB854210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854210);
  }

  return result;
}

uint64_t sub_1B37B3F5C()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878CE8);
  __swift_project_value_buffer(v6, qword_1EB878CE8);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B37B4148()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854230);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854238);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B37B530C();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854240);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  return sub_1B3C97C78();
}

uint64_t sub_1B37B42EC()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[4] = v2;
  sub_1B3C9C888();
  v0[5] = sub_1B3C9C878();
  v4 = sub_1B3C9C848();
  v0[6] = v4;
  v0[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B37B4380, v4, v3);
}

uint64_t sub_1B37B4380()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1B37B530C();
  *v1 = v0;
  v1[1] = sub_1B3713898;
  v2 = v0[3];

  return MEMORY[0x1EEE2CA70](v2, 0, 0, 0, 0, 0, 1, &unk_1B3D02540);
}

uint64_t sub_1B37B4468(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1B3C9C598();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1B3C97F48();
  v2[8] = swift_task_alloc();
  v4 = sub_1B3C97AE8();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  v2[12] = swift_task_alloc();
  sub_1B3C9C888();
  v2[13] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();
  v2[14] = v6;
  v2[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B37B461C, v6, v5);
}

uint64_t sub_1B37B461C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 96);
  v2 = sub_1B3C98638();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  sub_1B3C97B28();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1B3713CCC;

  return sub_1B37B46E8();
}

uint64_t sub_1B37B46E8()
{
  OUTLINED_FUNCTION_0_0();
  v0[3] = v1;
  v0[2] = v2;
  v3 = sub_1B3C9A558();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();
  sub_1B3C9C888();
  v0[7] = sub_1B3C9C878();
  v5 = sub_1B3C9C848();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B37B47DC, v5, v4);
}

uint64_t sub_1B37B47DC()
{
  v17 = v0;
  v1 = sub_1B3C98D08();
  v3 = v2;
  sub_1B3C987F8();

  v4 = sub_1B3C9A538();
  v5 = sub_1B3C9CAE8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  if (v6)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2082;
    v13 = sub_1B3749364(v1, v3, &v16);

    *(v11 + 14) = v13;
    _os_log_impl(&dword_1B36F3000, v4, v5, "Parameters: { value: %f, asset: %{public}s }", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1B8C6EC70](v12, -1, -1);
    MEMORY[0x1B8C6EC70](v11, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  v0[10] = type metadata accessor for PXEditAppDependencyManager();
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1B37B49D0;

  return sub_1B37BD42C();
}

uint64_t sub_1B37B49D0()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1B3714674;
  }

  else
  {
    v7 = sub_1B37B4B00;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B37B4B00()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v2 = swift_allocObject();
  v0[13] = v2;
  *(v2 + 16) = xmmword_1B3CF9810;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69C41C0]);
  *(v2 + 32) = sub_1B37B5260(sub_1B37B523C, v3);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1B371450C;

  return sub_1B37BD81C();
}

uint64_t sub_1B37B4C28()
{
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v38 = v1;
  v39 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v37 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513E8);
  OUTLINED_FUNCTION_0();
  v35 = v5;
  v36 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v34 = v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v33 = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  v32 = v31 - v13;
  v14 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  v21 = sub_1B3C98188();
  v22 = OUTLINED_FUNCTION_8_0(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v23 = sub_1B3C9C598();
  v24 = OUTLINED_FUNCTION_8_0(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v25 = sub_1B3C97F48();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB851400);
  sub_1B3C9C538();
  sub_1B3C98178();
  v26 = *MEMORY[0x1E6968DF0];
  v27 = *(v16 + 104);
  v27(v20, v26, v14);
  OUTLINED_FUNCTION_6_4();
  sub_1B3C9C538();
  sub_1B3C98178();
  v27(v20, v26, v14);
  v28 = v32;
  OUTLINED_FUNCTION_6_4();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
  v40 = 0;
  v41 = 1;
  v29 = sub_1B3C97AE8();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  (*(v35 + 104))(v34, *MEMORY[0x1E695A178], v36);
  (*(v38 + 104))(v37, *MEMORY[0x1E695A500], v39);
  return sub_1B3C97BB8();
}

uint64_t sub_1B37B507C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB84FFF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878CE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B37B5128()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B37B42EC();
}

uint64_t sub_1B37B51C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B37B4C28();
  *a1 = result;
  return result;
}

uint64_t sub_1B37B51F0(uint64_t a1)
{
  v2 = sub_1B37B530C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

double sub_1B37B523C()
{
  result = *(v0 + 16);
  if (result <= 1.4)
  {
    result = 1.4;
  }

  if (result > 16.0)
  {
    return 16.0;
  }

  return result;
}

id sub_1B37B5260(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B37F19D0;
  v6[3] = &block_descriptor_25;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithModifier_];
  _Block_release(v3);

  return v4;
}

unint64_t sub_1B37B530C()
{
  result = qword_1EB854228;
  if (!qword_1EB854228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854228);
  }

  return result;
}

uint64_t sub_1B37B5360()
{
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B3714CE0;

  return sub_1B37B4468(v3, v0);
}

id sub_1B37B53F8()
{
  swift_getKeyPath();
  sub_1B37B7EBC(&qword_1EB8542F8, type metadata accessor for PUPhotoStyleSectionLabel.IntegrationModel);
  sub_1B3C982D8();

  v1 = *(v0 + 16);

  return v1;
}

void sub_1B37B54D0()
{
  sub_1B3C9A9D8();
}

uint64_t sub_1B37B5578(uint64_t a1, void *a2)
{

  sub_1B37B55C4(a2);
}

void sub_1B37B55C4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1B37B6090();

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37B615C();
  }

  else
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }
}

uint64_t sub_1B37B56B0()
{
  swift_getKeyPath();
  sub_1B37B7EBC(&qword_1EB8542F8, type metadata accessor for PUPhotoStyleSectionLabel.IntegrationModel);
  sub_1B3C982D8();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B37B5754(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B37B615C();

    return swift_unknownObjectRelease();
  }
}

id sub_1B37B5828(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for PUPhotoStyleSectionLabel.IntegrationView(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (a2)
  {
    v8 = a2;
LABEL_5:
    type metadata accessor for PUPhotoStyleSectionLabel.IntegrationModel(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    v10 = a1;
    *&v3[OBJC_IVAR____TtC15PhotosUIPrivate24PUPhotoStyleSectionLabel_integrationModel] = sub_1B37B626C(v10, v8);
    OUTLINED_FUNCTION_2_21();
    sub_1B37B7EBC(v11, v12);

    sub_1B3C9BF18();
    v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854308));
    *&v3[OBJC_IVAR____TtC15PhotosUIPrivate24PUPhotoStyleSectionLabel_hostingController] = sub_1B3C9B088();
    v15.receiver = v3;
    v15.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    sub_1B37B5A00();

    swift_unknownObjectRelease();
    return v14;
  }

  result = [objc_opt_self() currentTheme];
  if (result)
  {
    v8 = result;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1B37B5A00()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate24PUPhotoStyleSectionLabel_hostingController;
  v3 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate24PUPhotoStyleSectionLabel_hostingController];
  sub_1B3C9B078();

  v4 = [*&v1[v2] view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [*&v1[v2] view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v1 addSubview_];

  v8 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B3D001A0;
  v11 = [v5 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v5 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v5 leadingAnchor];
  v18 = [v1 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v10 + 48) = v19;
  v20 = [v5 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v10 + 56) = v22;
  sub_1B377E1D0();
  v23 = sub_1B3C9C778();

  [v9 activateConstraints_];
}

uint64_t sub_1B37B5D78@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8542B0);
  sub_1B3C9BEF8();
  v2 = sub_1B37B5F00();
  v4 = v3;

  v5 = [objc_opt_self() secondarySystemBackgroundColor];
  v6 = sub_1B3C9BAF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8542E0);
  sub_1B3C9BC88();
  *(a1 + 24) = v12;
  *(a1 + 40) = swift_getKeyPath();
  *(a1 + 48) = 0;
  v7 = *(type metadata accessor for StyleSectionLabel(0) + 32);
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854D20);
  swift_storeEnumTagMultiPayload();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  KeyPath = swift_getKeyPath();
  sub_1B3C9BEF8();
  v9 = sub_1B37B56B0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8542F0);
  v11 = (a1 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v9;
  return result;
}

uint64_t sub_1B37B5F00()
{
  v0 = sub_1B37B53F8();
  v1 = sub_1B3C9CD18();

  if (v1)
  {
    if (qword_1EB84FFF8 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EB854250;
  }

  else
  {
    if (qword_1EB850000 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EB854260;
  }

  v3 = *v2;

  return v3;
}

uint64_t sub_1B37B5FBC()
{
  sub_1B37B7B70();
  sub_1B3C9AE98();
  return v1;
}

uint64_t sub_1B37B6090()
{
  v0 = sub_1B3C9C5E8();
  v2 = v1;
  if (v0 == sub_1B3C9C5E8() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B3C9D6A8();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

void sub_1B37B6128(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

uint64_t sub_1B37B615C()
{
  OUTLINED_FUNCTION_2_21();
  sub_1B37B7EBC(v0, v1);
  return sub_1B3C982C8();
}

uint64_t sub_1B37B6230(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B37B626C(uint64_t a1, uint64_t a2)
{
  sub_1B3C98308();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_1B37B62B0()
{
  v0 = sub_1B3C9C5A8();
  v1 = PELocalizedString();

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB854250 = v2;
  *algn_1EB854258 = v4;
}

void sub_1B37B6328()
{
  v0 = sub_1B3C9C5A8();
  v1 = PELocalizedString();

  v2 = sub_1B3C9C5E8();
  v4 = v3;

  qword_1EB854260 = v2;
  *algn_1EB854268 = v4;
}

uint64_t sub_1B37B63A0()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCC15PhotosUIPrivate24PUPhotoStyleSectionLabelP33_E92F34C22735FE7A9B5C47FE3A20ECED16IntegrationModel___observationRegistrar;
  v2 = sub_1B3C98318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1B37B6410()
{
  v0 = sub_1B37B63A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B37B653C()
{
  result = sub_1B3C98318();
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

void sub_1B37B6620()
{
  sub_1B37B7D70(319, &unk_1EB8542D0, type metadata accessor for PUPhotoStyleSectionLabel.IntegrationModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B37B66F8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for StyleSectionLabel(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1B3C9AFD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854378);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v28 - v10);
  *v11 = sub_1B3C9C008();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854380);
  v14 = sub_1B37B69B0(v1, v11 + *(v13 + 44));
  sub_1B37CA1E8(v14, v15, v16, v17, v18, v19, v20, v21, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  sub_1B37B7F20(v1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = swift_allocObject();
  sub_1B37B7F90(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  OUTLINED_FUNCTION_1_20();
  sub_1B370ED54(v24, &qword_1EB854378);
  OUTLINED_FUNCTION_0_19();
  sub_1B37B7EBC(v25, v26);
  sub_1B3C9BAB8();

  (*(v6 + 8))(v8, v5);
  return sub_1B371B36C(v11, &qword_1EB854378);
}

uint64_t sub_1B37B69B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a1;
  v106 = a2;
  v107 = sub_1B3C9B258();
  v103 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v100 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v92 - v4;
  v5 = sub_1B3C9B278();
  v104 = *(v5 - 8);
  v105 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v101 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v92 - v8;
  v9 = sub_1B3C9AE88();
  v94 = *(v9 - 8);
  v95 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543A0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v92 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543A8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v92 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543B0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543B8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v109 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v92 - v24;
  v26 = MEMORY[0x1B8C6D660](v23);
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_1B3C9AFA8();
  v29 = *(*(v28 - 8) + 104);
  v108 = v25;
  if (v26)
  {
    v29(v19, v27, v28);
    sub_1B37B74CC();
    *&v19[*(v17 + 56)] = 256;
    sub_1B373EE18(v19, v16, &qword_1EB8543B0);
    swift_storeEnumTagMultiPayload();
    sub_1B370ED54(&qword_1EB8543C0, &qword_1EB8543B0);
    sub_1B370ED54(&qword_1EB8543C8, &qword_1EB8543A0);
    sub_1B3C9B168();
    v30 = v19;
    v31 = &qword_1EB8543B0;
  }

  else
  {
    v29(v13, v27, v28);
    *&v13[*(v11 + 52)] = v110[2];
    *&v13[*(v11 + 56)] = 256;
    sub_1B373EE18(v13, v16, &qword_1EB8543A0);
    swift_storeEnumTagMultiPayload();
    sub_1B370ED54(&qword_1EB8543C0, &qword_1EB8543B0);
    sub_1B370ED54(&qword_1EB8543C8, &qword_1EB8543A0);

    sub_1B3C9B168();
    v30 = v13;
    v31 = &qword_1EB8543A0;
  }

  sub_1B371B36C(v30, v31);
  v32 = v110;
  v33 = v110[1];
  v98 = *v110;
  *&v112 = v98;
  *(&v112 + 1) = v33;
  sub_1B371B158();
  v97 = v33;
  swift_bridgeObjectRetain_n();
  v34 = sub_1B3C9B7A8();
  v36 = v35;
  v38 = v37;
  v39 = sub_1B3C9B788();
  v41 = v40;
  v43 = v42;
  sub_1B371B148(v34, v36, v38 & 1);

  v112 = *(v32 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854398);
  sub_1B3C9BC98();
  v44 = sub_1B3C9B778();
  v46 = v45;
  v48 = v47;
  v96 = v49;

  sub_1B371B148(v39, v41, v43 & 1);

  v50 = v32[5];
  if (*(v32 + 48) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1B3C9CAD8();
    v51 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    v52 = v93;
    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B37B7F84(v50, 0);
    (*(v94 + 8))(v52, v95);
    v50 = v112;
  }

  v53 = [v50 photoEditingBadgeViewContentColor];
  result = swift_unknownObjectRelease();
  if (v53)
  {
    *&v112 = sub_1B3C9BAF8();
    v55 = sub_1B3C9B768();
    v94 = v56;
    v95 = v57;
    v59 = v58;
    sub_1B371B148(v44, v46, v48 & 1);

    LODWORD(v96) = sub_1B3C9B4F8();
    sub_1B3C9A738();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v139 = v59 & 1;
    v68 = v59 & 1;
    LODWORD(v93) = v59 & 1;
    v136 = 0;
    LODWORD(v110) = sub_1B3C9B568();
    sub_1B3C9A738();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v140 = 0;
    v77 = v99;
    sub_1B3C9B248();
    v78 = v103;
    v79 = v107;
    (*(v103 + 16))(v100, v77, v107);
    v80 = v102;
    sub_1B3C9B268();
    (*(v78 + 8))(v77, v79);
    v82 = v104;
    v81 = v105;
    (*(v104 + 16))(v101, v80, v105);
    sub_1B37B7EBC(&qword_1EB84F2F8, MEMORY[0x1E697FBD0]);
    v107 = sub_1B3C9A968();
    (*(v82 + 8))(v80, v81);
    v83 = v109;
    sub_1B373EE18(v108, v109, &qword_1EB8543B8);
    v84 = v83;
    v85 = v106;
    sub_1B373EE18(v84, v106, &qword_1EB8543B8);
    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543D0) + 48);
    v88 = v94;
    v87 = v95;
    v111[0] = v55;
    v111[1] = v94;
    LOBYTE(v111[2]) = v68;
    *(&v111[2] + 1) = *v138;
    HIDWORD(v111[2]) = *&v138[3];
    v111[3] = v95;
    v89 = v96;
    LOBYTE(v111[4]) = v96;
    *(&v111[4] + 1) = *v137;
    HIDWORD(v111[4]) = *&v137[3];
    v111[5] = v61;
    v111[6] = v63;
    v111[7] = v65;
    v111[8] = v67;
    LOBYTE(v111[9]) = 0;
    HIDWORD(v111[9]) = *&v142[3];
    *(&v111[9] + 1) = *v142;
    LOBYTE(v111[10]) = v110;
    HIDWORD(v111[10]) = *&v141[3];
    *(&v111[10] + 1) = *v141;
    v111[11] = v70;
    v111[12] = v72;
    v111[13] = v74;
    v111[14] = v76;
    LOBYTE(v111[15]) = 0;
    *(&v111[15] + 1) = v143[0];
    HIDWORD(v111[15]) = *(v143 + 3);
    v91 = v97;
    v90 = v98;
    v111[16] = 0x3FF0000000000000;
    v111[17] = v98;
    v111[18] = v97;
    v111[19] = v107;
    memcpy((v85 + v86), v111, 0xA0uLL);
    sub_1B373EE18(v111, &v112, &qword_1EB8543D8);
    sub_1B371B36C(v108, &qword_1EB8543B8);
    *&v112 = v55;
    *(&v112 + 1) = v88;
    v113 = v93;
    *v114 = *v138;
    *&v114[3] = *&v138[3];
    v115 = v87;
    v116 = v89;
    *v117 = *v137;
    *&v117[3] = *&v137[3];
    v118 = v61;
    v119 = v63;
    v120 = v65;
    v121 = v67;
    v122 = 0;
    *&v123[3] = *&v142[3];
    *v123 = *v142;
    v124 = v110;
    *&v125[3] = *&v141[3];
    *v125 = *v141;
    v126 = v70;
    v127 = v72;
    v128 = v74;
    v129 = v76;
    v130 = 0;
    *&v131[3] = *(v143 + 3);
    *v131 = v143[0];
    v132 = 0x3FF0000000000000;
    v133 = v90;
    v134 = v91;
    v135 = v107;
    sub_1B371B36C(&v112, &qword_1EB8543D8);
    return sub_1B371B36C(v109, &qword_1EB8543B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B37B74CC()
{
  v0 = sub_1B3C9BF68();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C9BF98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1B3C9BF88();
  (*(v1 + 104))(v3, *MEMORY[0x1E697D788], v0);
  sub_1B3C9BF78();
  (*(v1 + 8))(v3, v0);
  v17 = *(v5 + 8);
  v17(v7, v4);
  sub_1B3C9BF58();
  v17(v10, v4);
  sub_1B3C9BF48();
  v17(v13, v4);
  sub_1B3C9BFA8();
  return (v17)(v16, v4);
}

uint64_t sub_1B37B772C(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1B3C9B5A8();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C9AFD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B3C9B6E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B3C9B5D8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x1E6980EF0], v8, v14);
  (*(v5 + 16))(v7, v24, v4);
  sub_1B3C9B5C8();
  v17 = sub_1B3C9B5B8();
  if (MEMORY[0x1B8C6D660](v17))
  {
    sub_1B3C9B598();
    sub_1B3C9B648();
    v18 = sub_1B3C9B668();
    (*(v22 + 8))(v3, v23);
  }

  else
  {
    v19 = CEKFontOfSizeWeightStyle();
    v18 = sub_1B3C9B6F8();
  }

  v27 = *(v25 + 24);
  v26 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854398);
  sub_1B3C9BCA8();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1B37B7A8C(uint64_t a1)
{
  v2 = sub_1B3C9AFD8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1B3C9ACC8();
}

unint64_t sub_1B37B7B70()
{
  result = qword_1EB854300;
  if (!qword_1EB854300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854300);
  }

  return result;
}

void sub_1B37B7C34()
{
  sub_1B371B7F4(319, &qword_1EB854330, &unk_1EB8542E0, &unk_1B3D02680, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1B371B7F4(319, &qword_1EB854338, &qword_1EB854340, &unk_1B3D02798, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1B37B7D70(319, &unk_1EB854348, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B37B7D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B37B7DD4()
{
  result = qword_1EB854358;
  if (!qword_1EB854358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8542F0);
    sub_1B37B7EBC(&unk_1EB854360, type metadata accessor for StyleSectionLabel);
    sub_1B370ED54(&unk_1EB84F2B0, &qword_1EB854370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854358);
  }

  return result;
}

uint64_t sub_1B37B7EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B37B7F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StyleSectionLabel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37B7F84(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1B37B7F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StyleSectionLabel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37B8070(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B37B80B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B37B8124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543E0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v24 - v6);
  v8 = sub_1B37C5C84();
  if (v8)
  {
    v9 = v8;
    *v7 = sub_1B3C9C008();
    v7[1] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543E8);
    sub_1B37B8408(v1, v9, v7 + *(v11 + 44));
    sub_1B3C9C008();
    sub_1B3C9A8D8();
    v12 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543F0) + 36));
    v13 = v24[1];
    *v12 = v24[0];
    v12[1] = v13;
    v12[2] = v24[2];
    v14 = sub_1B3C9C028();
    v15 = *(v2 + 24);
    v16 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543F8) + 36);
    *v16 = v14;
    v16[8] = v15;
    v17 = sub_1B3C9C028();
    v18 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      sub_1B3710718(0, &qword_1EB854400);

      v19 = sub_1B3C9D4D8();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_1B3C9D6B8();
      sub_1B3710718(0, &qword_1EB854400);
      if (swift_dynamicCastMetatype() || (v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_4:

        v19 = v9;
      }

      else
      {
        v23 = v18 + 32;
        while (1)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v23 += 8;
          if (!--v22)
          {
            goto LABEL_4;
          }
        }

        v19 = v18 | 1;
      }
    }

    v20 = (v7 + *(v4 + 36));
    *v20 = v17;
    v20[1] = v19;
    sub_1B37B962C(v7, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }
}

uint64_t sub_1B37B8408@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B3C9AEF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854408);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v35 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v16 = *(a1 + 8);
  v17 = sub_1B3711890(a2);
  v18 = 7;
  if (v17 < 7)
  {
    v18 = v17;
  }

  v19 = v18 + (v18 & 1) - 1;
  if (v17 >= 1)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  result = sub_1B3711890(a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v32 = a3;
    v33 = v9;
    v36 = sub_1B37B96F8(a2, 0, result);
    v31[1] = swift_getKeyPath();
    v22 = swift_allocObject();
    v34 = v10;
    v23 = v15;
    v24 = v22;
    *(v22 + 16) = v20 >> 1;
    v25 = *(a1 + 16);
    *(v22 + 24) = *a1;
    *(v22 + 40) = v25;
    *(v22 + 56) = *(a1 + 32);
    *(v22 + 64) = v16;
    *(v22 + 72) = v20;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1B37B9A74;
    *(v26 + 24) = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854418);
    sub_1B370ED54(&qword_1EB854420, &qword_1EB854410);
    sub_1B37B9AB8();
    sub_1B37B9B34();
    sub_1B3C9BE88();
    v27 = v33;
    sub_1B3C9AEE8();
    sub_1B3C9C028();
    v28 = sub_1B37BA334(&qword_1EB8544A8, MEMORY[0x1E697F260]);
    sub_1B3C9A7B8();

    (*(v7 + 8))(v27, v6);
    v29 = v34;
    (*(v11 + 16))(v35, v23, v34);
    v36 = v6;
    v37 = v28;
    swift_getOpaqueTypeConformance2();
    v30 = sub_1B3C9A968();
    (*(v11 + 8))(v23, v29);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8544B0);
    *(v32 + *(result + 36)) = v30;
  }

  return result;
}

void sub_1B37B8844(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B3C9C5E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void *sub_1B37B88AC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  v8 = result;
  v10 = a2 - a3;
  if (a2 == a3)
  {
    sub_1B37B8BD4(result, __src, *(a4 + 8), *(a4 + 16));
    memcpy(__dst, __src, sizeof(__dst));
    v11 = [v8 uuid];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1B3C9C5E8();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v28 = sub_1B3C9C088();
    v29 = sub_1B3C9B3B8();
    sub_1B3C9C0E8();
    v31 = v30;
    v33 = v32;
    memcpy(v46, __dst, 0x49uLL);
    memcpy(v47, v46, 0x50uLL);
    v47[10] = v13;
    v47[11] = v15;
    v47[12] = v28;
    LODWORD(v47[13]) = v29;
    v47[14] = v31;
    v47[15] = v33;
    LOBYTE(v47[16]) = 1;
    v47[17] = 0x4022000000000000;
    sub_1B37B9F60(v47);
LABEL_24:
    memcpy(v45, v47, sizeof(v45));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854480);
    sub_1B37B9BC0();
    sub_1B37B9D84();
    sub_1B3C9B168();
    return memcpy(a6, v50, 0xC1uLL);
  }

  if (__OFSUB__(a2, a3))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 < 0)
  {
    v16 = __OFSUB__(0, v10);
    v10 = a3 - a2;
    if (v16)
    {
      goto LABEL_31;
    }
  }

  v16 = __OFSUB__(v10, 1);
  v17 = v10 - 1;
  if (v16)
  {
    goto LABEL_26;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = *(*a4 + 32);
  if (v17 >= *(v18 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = *(*a4 + 40);
  if (v17 < *(v19 + 16))
  {
    if (a2 >= a3)
    {
      v20 = *(v19 + 8 * v17 + 32) * a7;
    }

    else
    {
      v20 = -(*(v19 + 8 * v17 + 32) * a7);
    }

    v21 = a5 - (v17 + 1);
    if (!__OFSUB__(a5, v17 + 1))
    {
      v22 = *(v18 + 8 * v17 + 32);
      sub_1B37B8BD4(result, __src, *(a4 + 8), *(a4 + 16));
      memcpy(__dst, __src, sizeof(__dst));
      v23 = [v8 uuid];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1B3C9C5E8();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v34 = sub_1B3C9C088();
      v35 = sub_1B3C9B3B8();
      sub_1B3C9C0E8();
      v37 = v36;
      v39 = v38;
      memcpy(v46, __dst, 0x49uLL);
      if (*(a4 + 24))
      {
        v40 = v20;
      }

      else
      {
        v40 = 0.0;
      }

      sub_1B3C9C0E8();
      v42 = v41;
      v44 = v43;
      memcpy(v47, v46, 0x50uLL);
      v47[10] = v25;
      v47[11] = v27;
      v47[12] = v34;
      LODWORD(v47[13]) = v35;
      v47[14] = v37;
      v47[15] = v39;
      LOBYTE(v47[16]) = 1;
      *&v47[17] = v40;
      v47[18] = 0;
      v47[19] = v22;
      v47[20] = v22;
      v47[21] = v42;
      v47[22] = v44;
      *&v47[23] = v21;
      sub_1B37B9F54(v47);
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

id sub_1B37B8BD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1B37C5BDC();
  v9 = sub_1B37C5DE4();
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v9;
  result = [a1 uuid];
  if (result)
  {
    v12 = result;
    v13 = sub_1B3C9C5E8();
    v15 = v14;

    sub_1B3898EAC(v13, v15, v10, v27);

    if ((v28 & 1) == 0)
    {
      v17 = *&v27[2];
      v16 = *&v27[3];
      v19 = *v27;
      v18 = *&v27[1];
      [v8 copy];
      sub_1B3C9D1E8();

      swift_unknownObjectRelease();
      sub_1B3710718(0, &qword_1EB8544B8);
      swift_dynamicCast();
      v8 = v26;
      [v8 setResizeMode_];
      [v8 setNormalizedCropRect_];
    }

LABEL_5:
    v20 = sub_1B37C5938();
    v22 = v21;
    v23 = sub_1B37C5B44();
    v24 = sub_1B37C5FB8();
    KeyPath = swift_getKeyPath();
    *a2 = a1;
    *(a2 + 8) = a3;
    *(a2 + 16) = a4;
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    *(a2 + 40) = v23;
    *(a2 + 48) = v8;
    *(a2 + 56) = v24;
    *(a2 + 64) = KeyPath;
    *(a2 + 72) = 0;
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

__n128 sub_1B37B8DA4@<Q0>(uint64_t a1@<X8>)
{
  sub_1B3C9AE88();
  OUTLINED_FUNCTION_0();
  v37 = v3;
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = sub_1B3C991A8();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = sub_1B3C991B8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_8();
  sub_1B3C990E8();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  swift_unknownObjectRetain_n();
  sub_1B3C990F8();
  v16 = *(v1 + 48);
  (*(v9 + 104))(v13, *MEMORY[0x1E69C2680], v7);
  swift_unknownObjectRetain();
  v17 = v16;
  sub_1B3C99198();
  v42 = *(v1 + 72);
  v41 = *(v1 + 64);
  if (v42 != 1)
  {

    sub_1B3C9CAD8();
    v18 = sub_1B3C9B4A8();
    sub_1B3C9A438();

    sub_1B3C9AE78();
    swift_getAtKeyPath();
    sub_1B371B36C(&v41, &qword_1EB854520);
    (*(v37 + 8))(v6, v38);
  }

  v19 = swift_allocObject();
  memcpy((v19 + 16), v1, 0x49uLL);
  sub_1B37BA2FC(v1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854528);
  sub_1B37BA334(&qword_1EB854530, MEMORY[0x1E69C2440]);
  sub_1B37BA37C();
  sub_1B3C99068();
  sub_1B3C9C008();
  sub_1B3C9A8D8();
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854560) + 36));
  v21 = v40[1];
  *v20 = v40[0];
  v20[1] = v21;
  v20[2] = v40[2];
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854568) + 36));
  v23 = sub_1B3C9AB78();
  v24 = *(v23 + 20);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_1B3C9AFA8();
  OUTLINED_FUNCTION_0_1();
  v28 = *(v27 + 104);
  v28(&v22[v24], v25, v26);
  __asm { FMOV            V0.2D, #10.0 }

  *v22 = _Q0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854570);
  *&v22[*(v34 + 36)] = 256;
  v35 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854578) + 36));
  v28(v35 + *(v23 + 20), v25, v26);
  __asm { FMOV            V0.2D, #4.0 }

  *v35 = result;
  *(v35->n128_u16 + *(v34 + 36)) = 256;
  return result;
}

void *sub_1B37B9294@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_1B3C9BC48();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x1E6981630];
  v9 = *(v4 + 104);
  v9(v7, v8, v3, v5);
  v28 = sub_1B3C9BC78();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v11 = *(a1 + 56);
  if (v11)
  {
    v26 = v11;
    sub_1B3C9BC18();
    (v9)(v7, v8, v3);
    v27 = sub_1B3C9BC78();

    v10(v7, v3);
    sub_1B3C9C008();
    sub_1B3C9A8D8();

    LOBYTE(v32[0]) = 1;
    v25 = v36;
    v26 = v35;
    v23 = v38;
    v24 = v37;
    v21 = v40;
    v22 = v39;
    v12 = 256;
    v13 = 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v13 = 0;
    v12 = 0;
  }

  v20 = sub_1B3C9C008();
  v15 = v14;
  v31[0] = v27;
  v31[1] = 0;
  v31[2] = v12 | v13;
  v31[3] = v26;
  v31[4] = v25;
  v31[5] = v24;
  v31[6] = v23;
  v31[7] = v22;
  v31[8] = v21;
  v31[9] = v20;
  v31[10] = v14;
  v34 = 1;
  memcpy(&__src[6], v31, 0x58uLL);
  v32[0] = v27;
  v32[1] = 0;
  v32[2] = v12 | v13;
  v32[3] = v26;
  v32[4] = v25;
  v32[5] = v24;
  v32[6] = v23;
  v32[7] = v22;
  v32[8] = v21;
  v32[9] = v20;
  v32[10] = v15;
  sub_1B37BA4B8(v31, &v30);
  sub_1B371B36C(v32, &qword_1EB854558);
  v16 = v34;
  v17 = v29;
  *v29 = v28;
  v17[1] = 0;
  *(v17 + 16) = v16;
  *(v17 + 17) = 1;
  return memcpy(v17 + 18, __src, 0x5EuLL);
}

uint64_t sub_1B37B9564@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() placeholderTextColor];
  result = sub_1B3C9BAF8();
  *a1 = result;
  return result;
}

double sub_1B37B95AC@<D0>(uint64_t a1@<X8>)
{
  memcpy(v4, v1, sizeof(v4));
  *&result = sub_1B37B8DA4(a1).n128_u64[0];
  return result;
}

uint64_t sub_1B37B962C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8543E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37B969C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    result = sub_1B3C9D2C8();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(a3, a2))
  {
    __break(1u);
  }

  else if (a3 - a2 < result)
  {
    return a3 - a2;
  }

  return result;
}

uint64_t sub_1B37B96F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = sub_1B37B969C(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    if (v5 <= 0)
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8544C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v6;
      v7[3] = 2 * ((v8 - 32) / 16);
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7[3];

  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = v7 + 4;
    v11 = v9 >> 1;
    if (!v6)
    {
      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      v39 = v4 & 0xC000000000000001;
      v17 = a2;
LABEL_21:
      v38 = v4 >> 62;
      v18 = v17;
      v36 = v14;
      v37 = v4;
      v35 = v17;
      while (1)
      {
        v19 = v38 ? sub_1B3C9D2C8() : *(v14 + 16);
        if (v6 == v19)
        {
          break;
        }

        if (v39)
        {
          v20 = MEMORY[0x1B8C6A930](v6, v4);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          if (v6 >= *(v14 + 16))
          {
            goto LABEL_62;
          }

          v20 = *(v4 + 8 * v6 + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_61;
        }

        if (a3 == v18)
        {
          swift_unknownObjectRelease();
          break;
        }

        if (a3 < a2)
        {
          goto LABEL_63;
        }

        if (v17 < a2)
        {
          goto LABEL_64;
        }

        if (v18 >= a3)
        {
          goto LABEL_65;
        }

        if (!v11)
        {
          v21 = v7[3];
          if (((v21 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_68;
          }

          v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
          if (v22 <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = v22;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8544C0);
          v24 = swift_allocObject();
          v25 = (_swift_stdlib_malloc_size(v24) - 32) / 16;
          v24[2] = v23;
          v24[3] = 2 * v25;
          v26 = (v24 + 4);
          v27 = v7[3];
          v28 = v27 >> 1;
          if (v7[2])
          {
            if (v24 != v7 || v26 >= &v7[2 * v28 + 4])
            {
              memmove(v24 + 4, v7 + 4, 16 * v28);
            }

            v7[2] = 0;
          }

          v10 = (v26 + 16 * v28);
          v11 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - (v27 >> 1);

          v7 = v24;
          v14 = v36;
          v4 = v37;
          v17 = v35;
        }

        v30 = __OFSUB__(v11--, 1);
        if (v30)
        {
          goto LABEL_66;
        }

        *v10 = v20;
        v10[1] = v18;
        v10 += 2;
        ++v6;
        ++v18;
      }

      v31 = v7[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v11);
        v33 = v32 - v11;
        if (v30)
        {
          goto LABEL_70;
        }

        v7[2] = v33;
      }

      return v7;
    }

    v12 = sub_1B3711890(v4);
    v13 = 0;
    v39 = v4 & 0xC000000000000001;
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    v11 -= v6;
    while (v12 != v13)
    {
      if (v39)
      {
        v15 = MEMORY[0x1B8C6A930](v13, v4);
      }

      else
      {
        if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v15 = swift_unknownObjectRetain();
      }

      if (!(a2 - a3 + v13))
      {
        goto LABEL_71;
      }

      if (a3 < a2)
      {
        goto LABEL_58;
      }

      v16 = a2 + v13;
      if ((a2 + v13) >= a3)
      {
        goto LABEL_59;
      }

      ++v13;
      *v10 = v15;
      v10[1] = v16;
      v10 += 2;
      if (v6 == v13)
      {
        v17 = a2 + v13;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

unint64_t sub_1B37B9AB8()
{
  result = qword_1EB854038;
  if (!qword_1EB854038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854038);
  }

  return result;
}

unint64_t sub_1B37B9B34()
{
  result = qword_1EB854428;
  if (!qword_1EB854428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854418);
    sub_1B37B9BC0();
    sub_1B37B9D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854428);
  }

  return result;
}

unint64_t sub_1B37B9BC0()
{
  result = qword_1EB854430;
  if (!qword_1EB854430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854438);
    sub_1B37B9C78();
    sub_1B370ED54(&qword_1EB854468, &qword_1EB854470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854430);
  }

  return result;
}

unint64_t sub_1B37B9C78()
{
  result = qword_1EB854440;
  if (!qword_1EB854440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854448);
    sub_1B37B9D30();
    sub_1B370ED54(&qword_1EB854458, &qword_1EB854460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854440);
  }

  return result;
}

unint64_t sub_1B37B9D30()
{
  result = qword_1EB854450;
  if (!qword_1EB854450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854450);
  }

  return result;
}

unint64_t sub_1B37B9D84()
{
  result = qword_1EB854478;
  if (!qword_1EB854478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854480);
    sub_1B37B9E3C();
    sub_1B370ED54(&qword_1EB854468, &qword_1EB854470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854478);
  }

  return result;
}

unint64_t sub_1B37B9E3C()
{
  result = qword_1EB854488;
  if (!qword_1EB854488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854490);
    sub_1B37B9EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854488);
  }

  return result;
}

unint64_t sub_1B37B9EC8()
{
  result = qword_1EB854498;
  if (!qword_1EB854498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8544A0);
    sub_1B37B9C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854498);
  }

  return result;
}

uint64_t sub_1B37B9F7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B37B9FBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B37BA020()
{
  result = qword_1EB8544C8;
  if (!qword_1EB8544C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8544D0);
    sub_1B37BA0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8544C8);
  }

  return result;
}

unint64_t sub_1B37BA0A4()
{
  result = qword_1EB8544D8;
  if (!qword_1EB8544D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8543E0);
    sub_1B37BA15C();
    sub_1B370ED54(&qword_1EB854510, &qword_1EB854518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8544D8);
  }

  return result;
}

unint64_t sub_1B37BA15C()
{
  result = qword_1EB8544E0;
  if (!qword_1EB8544E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8543F8);
    sub_1B37BA214();
    sub_1B370ED54(&qword_1EB854500, &qword_1EB854508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8544E0);
  }

  return result;
}

unint64_t sub_1B37BA214()
{
  result = qword_1EB8544E8;
  if (!qword_1EB8544E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8543F0);
    sub_1B370ED54(&qword_1EB8544F0, &qword_1EB8544F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8544E8);
  }

  return result;
}

uint64_t sub_1B37BA2E8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B37BA334(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B37BA37C()
{
  result = qword_1EB854538;
  if (!qword_1EB854538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854528);
    sub_1B37BA434();
    sub_1B370ED54(&qword_1EB854550, &qword_1EB854558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854538);
  }

  return result;
}

unint64_t sub_1B37BA434()
{
  result = qword_1EB854540;
  if (!qword_1EB854540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854540);
  }

  return result;
}

uint64_t sub_1B37BA4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B37BA528()
{
  result = qword_1EB854580;
  if (!qword_1EB854580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854578);
    sub_1B37BA5E0();
    sub_1B370ED54(&qword_1EB8545A8, &qword_1EB854570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854580);
  }

  return result;
}

unint64_t sub_1B37BA5E0()
{
  result = qword_1EB854588;
  if (!qword_1EB854588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854568);
    sub_1B37BA698();
    sub_1B370ED54(&qword_1EB8545A8, &qword_1EB854570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854588);
  }

  return result;
}

unint64_t sub_1B37BA698()
{
  result = qword_1EB854590;
  if (!qword_1EB854590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB854560);
    sub_1B370ED54(&qword_1EB854598, &qword_1EB8545A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB854590);
  }

  return result;
}

unint64_t sub_1B37BA754()
{
  result = qword_1EB8545B0;
  if (!qword_1EB8545B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8545B0);
  }

  return result;
}

unint64_t sub_1B37BA7AC()
{
  result = qword_1EB8545B8;
  if (!qword_1EB8545B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8545B8);
  }

  return result;
}

uint64_t sub_1B37BA81C()
{
  v0 = sub_1B3C97F38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B3C98188();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B3C9C598();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1B3C97F48();
  __swift_allocate_value_buffer(v6, qword_1EB878D00);
  __swift_project_value_buffer(v6, qword_1EB878D00);
  sub_1B3C9C538();
  sub_1B3C98178();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1B3C97F58();
}

uint64_t sub_1B37BAA08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854608);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854610);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B37BD260();
  sub_1B3C97CA8();
  sub_1B3C97C98();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854618);
  sub_1B3C97C88();

  sub_1B3C97C98();
  sub_1B3C97CB8();
  OUTLINED_FUNCTION_18_10();
  return sub_1B3C97C78();
}

uint64_t sub_1B37BABA0()
{
  OUTLINED_FUNCTION_0_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = sub_1B3C98618();
  v0[7] = v4;
  v0[8] = *(v4 - 8);
  v0[9] = swift_task_alloc();
  sub_1B3C9C888();
  v0[10] = sub_1B3C9C878();
  v6 = sub_1B3C9C848();
  v0[11] = v6;
  v0[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B37BAC94, v6, v5);
}

uint64_t sub_1B37BAC94()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v0[2] = v5;
  v0[3] = v4;
  sub_1B3C97B28();
  v6 = sub_1B3C98608();
  v8 = v7;
  v0[13] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v10 = swift_task_alloc();
  v0[15] = v10;
  sub_1B37BD260();
  *v10 = v0;
  v10[1] = sub_1B37BADF4;
  v11 = v0[4];

  return MEMORY[0x1EEE2CA70](v11, 0, 0, v6, v8, 0, 1, &unk_1B3D02D60);
}

uint64_t sub_1B37BADF4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_1B37BAF68;
  }

  else
  {

    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_1B37BAF04;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37BAF04()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37BAF68()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37BAFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1B3C98638();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1B3C98618();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_1B3C9C888();
  v3[11] = sub_1B3C9C878();
  v7 = sub_1B3C9C848();
  v3[12] = v7;
  v3[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B37BB13C, v7, v6);
}

uint64_t sub_1B37BB13C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1B3C97B28();
  sub_1B3C985F8();
  v0[14] = v4;
  (*(v2 + 8))(v1, v3);
  sub_1B3C97B28();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1B37BB23C;

  return sub_1B37BB4E8();
}

uint64_t sub_1B37BB23C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  *v4 = *v1;
  *(v3 + 128) = v0;

  (*(v6 + 8))(v5, v7);

  v8 = v2[13];
  v9 = v2[12];
  if (v0)
  {
    v10 = sub_1B37BB478;
  }

  else
  {
    v10 = sub_1B37BB3F4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1B37BB3F4()
{
  OUTLINED_FUNCTION_9();

  sub_1B3C97B18();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37BB478()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37BB4E8()
{
  OUTLINED_FUNCTION_0_0();
  v0[7] = v1;
  v0[8] = v2;
  v0[6] = v3;
  v4 = sub_1B3C9A558();
  v0[9] = v4;
  v0[10] = *(v4 - 8);
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  OUTLINED_FUNCTION_8_0(v5);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  sub_1B3C9C888();
  v0[15] = sub_1B3C9C878();
  v7 = sub_1B3C9C848();
  v0[16] = v7;
  v0[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B37BB628, v7, v6);
}

uint64_t sub_1B37BB628()
{
  v34 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = sub_1B3C98638();
  *(v0 + 144) = v3;
  v32 = *(v3 - 8);
  v4 = *(v32 + 16);
  *(v0 + 152) = v4;
  *(v0 + 160) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v1, v2, v3);
  v5 = OUTLINED_FUNCTION_13_13();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  v31 = sub_1B3C98D08();
  v9 = v8;
  sub_1B3713154(v1);
  sub_1B3C987F8();

  v10 = sub_1B3C9A538();
  v11 = sub_1B3C9CAE8();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 96);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  if (v12)
  {
    v28 = *(v0 + 72);
    v29 = *(v0 + 96);
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v30 = v4;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_1B3749364(v17, v16, &v33);
    *(v18 + 12) = 2082;
    v19 = sub_1B3749364(v31, v9, &v33);

    *(v18 + 14) = v19;
    _os_log_impl(&dword_1B36F3000, v10, v11, "Parameters: { filter: %{public}s, asset: %{public}s }", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_5();
    v4 = v30;
    OUTLINED_FUNCTION_3_5();

    v20 = *(v14 + 8);
    v20(v29, v28);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
  }

  *(v0 + 168) = v20;
  v21 = *(v0 + 48);
  *(v0 + 176) = type metadata accessor for PXEditAppDependencyManager();
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8545D0);
  *(v0 + 192) = *(v32 + 72);
  v22 = *(v32 + 80);
  *(v0 + 288) = v22;
  v23 = (v22 + 32) & ~v22;
  v24 = swift_allocObject();
  *(v0 + 200) = v24;
  *(v24 + 16) = xmmword_1B3CF6CE0;
  v4(v24 + v23, v21, v3);
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = sub_1B37BB940;
  OUTLINED_FUNCTION_19_8();

  return sub_1B37BE548();
}

uint64_t sub_1B37BB940()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[27] = v0;

  if (v0)
  {
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1B37BBF8C;
  }

  else
  {
    swift_setDeallocating();
    sub_1B389E760();
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1B37BBA5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37BBA5C()
{
  v8 = *(v0 + 152);
  v7 = *(v0 + 144);
  v1 = *(v0 + 48);
  v2 = (*(v0 + 288) + 32) & ~*(v0 + 288);
  *(v0 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v3 = swift_allocObject();
  *(v0 + 232) = v3;
  *(v3 + 16) = xmmword_1B3CF9810;
  sub_1B37BD21C();

  *(v3 + 32) = sub_1B37BC44C(1.0);
  v4 = swift_allocObject();
  *(v0 + 240) = v4;
  *(v4 + 16) = xmmword_1B3CF6CE0;
  v8(v4 + v2, v1, v7);
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = sub_1B37BBBD8;

  return sub_1B37BEDF4();
}

uint64_t sub_1B37BBBD8()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *v3 = *v1;
  v2[32] = v0;

  if (v0)
  {

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1B37BC024;
  }

  else
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1B37BBD14;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1B37BBD14()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_9_11();
  v2(v1);
  OUTLINED_FUNCTION_20_7();
  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_1_21(v3);

  return sub_1B37BD81C();
}

uint64_t sub_1B37BBD98()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  *v4 = *v1;
  v3[35] = v0;

  sub_1B3713154(v2[13]);

  v5 = v2[17];
  v6 = v2[16];
  if (v0)
  {
    v7 = sub_1B37BC3C4;
  }

  else
  {
    v7 = sub_1B37BBF00;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B37BBF00()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37BBF8C()
{
  OUTLINED_FUNCTION_9();

  swift_setDeallocating();
  sub_1B389E760();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37BC024()
{
  v34 = v0;
  v1 = *(v0 + 256);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0);
  type metadata accessor for PXAppIntentsNSError(0);
  if (!swift_dynamicCast())
  {

    swift_willThrow();
    goto LABEL_7;
  }

  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  sub_1B37BD2B4(&qword_1EB850F70, type metadata accessor for PXAppIntentsNSError);
  sub_1B3C97ED8();
  if (*(v0 + 40) != -1001)
  {

    swift_willThrow();

LABEL_7:

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_19_8();

    __asm { BRAA            X1, X16 }
  }

  v4 = sub_1B37BC4D0(*(v0 + 56), *(v0 + 64));
  sub_1B3C987F8();
  v5 = v4;
  v6 = sub_1B3C9A538();
  v7 = sub_1B3C9CAE8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 168);
  v10 = *(v0 + 88);
  v11 = *(v0 + 72);
  if (v8)
  {
    v32 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315906;
    v14 = [v5 cast];
    v30 = v10;
    v31 = v9;
    v15 = sub_1B3C9C5E8();
    v17 = v16;

    v18 = sub_1B3749364(v15, v17, &v33);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    [v5 tone];
    *(v12 + 14) = v19;
    *(v12 + 22) = 2048;
    [v5 color];
    *(v12 + 24) = v20;
    *(v12 + 32) = 2048;
    [v5 intensity];
    *(v12 + 34) = v21;
    _os_log_impl(&dword_1B36F3000, v6, v7, "Unable to apply filter for assets captured captured with Photographic Style, apply a style adjustment as a fallback (cast: %s, tone: %f, color: %f, intensity: %f)", v12, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_3_5();

    v31(v30, v32);
  }

  else
  {

    v9(v10, v11);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B3CF9810;
  *(v24 + 32) = v5;

  v25 = OUTLINED_FUNCTION_9_11();
  v26(v25);
  OUTLINED_FUNCTION_20_7();
  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  *v27 = v0;
  OUTLINED_FUNCTION_1_21(v27);
  OUTLINED_FUNCTION_19_8();

  return sub_1B37BD81C();
}

uint64_t sub_1B37BC3C4()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_1();

  return v0();
}

id sub_1B37BC44C(double a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B3C9C5A8();

  v4 = [v2 initWithFilterIdentifier:v3 intensity:a1];

  return v4;
}

id sub_1B37BC4D0(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 1701736270 && a2 == 0xE400000000000000;
  if (v2 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
    v5 = *MEMORY[0x1E69BE128];
    v6 = objc_allocWithZone(MEMORY[0x1E69C4240]);
    v7 = sel_initWithCast_;
    v8 = v5;

    return [v6 v7];
  }

  v10 = a1 == (OUTLINED_FUNCTION_12_10() & 0xFFFFFFFFFFFFLL | 0x64000000000000) && a2 == 0xE700000000000000;
  if (v10 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
    v11 = *MEMORY[0x1E69BE148];
    v6 = objc_allocWithZone(MEMORY[0x1E69C4240]);
    v7 = sel_initWithCast_tone_color_intensity_;
LABEL_15:
    v8 = v11;
    goto LABEL_16;
  }

  v13 = a1 == (OUTLINED_FUNCTION_12_10() & 0xFFFFFFFFFFFFLL | 0x4364000000000000) && a2 == v12;
  if (v13 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
    v14 = *MEMORY[0x1E69BE148];
    v6 = objc_allocWithZone(MEMORY[0x1E69C4240]);
    v7 = sel_initWithCast_tone_color_intensity_;
    v8 = v14;
    goto LABEL_16;
  }

  v16 = a1 == (OUTLINED_FUNCTION_12_10() & 0xFFFFFFFFFFFFLL | 0x5764000000000000) && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
    goto LABEL_30;
  }

  v17 = a1 == 0x74616D6172444433 && a2 == 0xEA00000000006369;
  if (v17 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
    v11 = *MEMORY[0x1E69BE118];
    v6 = objc_allocWithZone(MEMORY[0x1E69C4240]);
    v7 = sel_initWithCast_tone_color_intensity_;
    goto LABEL_15;
  }

  v18 = a1 == 0x74616D6172444433 && a2 == 0xEE006C6F6F436369;
  if (v18 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
    v11 = *MEMORY[0x1E69BE0E0];
    v6 = objc_allocWithZone(MEMORY[0x1E69C4240]);
    v7 = sel_initWithCast_tone_color_intensity_;
    goto LABEL_15;
  }

  v19 = a1 == 0x74616D6172444433 && a2 == 0xEE006D7261576369;
  if (v19 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
LABEL_30:
    v11 = *MEMORY[0x1E69BE100];
    v6 = objc_allocWithZone(MEMORY[0x1E69C4240]);
    v7 = sel_initWithCast_tone_color_intensity_;
    goto LABEL_15;
  }

  v20 = a1 == 1869508429 && a2 == 0xE400000000000000;
  if (v20 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
    v11 = *MEMORY[0x1E69BE110];
    v6 = objc_allocWithZone(MEMORY[0x1E69C4240]);
    v7 = sel_initWithCast_tone_color_intensity_;
    goto LABEL_15;
  }

  v21 = a1 == 0x72696F4E4433 && a2 == 0xE600000000000000;
  if (v21 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
    v22 = *MEMORY[0x1E69BE138];
    v6 = objc_allocWithZone(MEMORY[0x1E69C4240]);
    v7 = sel_initWithCast_tone_color_intensity_;
LABEL_67:
    v8 = v22;
LABEL_16:

    return [v6 v7];
  }

  v23 = a1 == 0x7265766C69534433 && a2 == 0xED00006574616C70;
  if (v23 || (OUTLINED_FUNCTION_4_19() & 1) != 0)
  {
    v22 = *MEMORY[0x1E69BE110];
    v6 = objc_allocWithZone(MEMORY[0x1E69C4240]);
    v7 = sel_initWithCast_tone_color_intensity_;
    goto LABEL_67;
  }

  sub_1B3C9D378();

  MEMORY[0x1B8C69C10](a1, a2);
  result = sub_1B3C9D4C8();
  __break(1u);
  return result;
}

_BYTE *sub_1B37BC988()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8545E8);
  OUTLINED_FUNCTION_8_0(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  v80 = &v68[-v2];
  sub_1B3C97CC8();
  OUTLINED_FUNCTION_0();
  v85 = v3;
  v86 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v84 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F0);
  v8 = OUTLINED_FUNCTION_8_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v68[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  OUTLINED_FUNCTION_8_0(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v68[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513F8);
  OUTLINED_FUNCTION_8_0(v15);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v68[-v17];
  v18 = sub_1B3C97F38();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v24 = v23 - v22;
  v25 = sub_1B3C98188();
  v26 = OUTLINED_FUNCTION_8_0(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v27 = sub_1B3C9C598();
  v28 = OUTLINED_FUNCTION_8_0(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  v29 = sub_1B3C97F48();
  v76 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v81 = v31 - v30;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852758);
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v33 = v20 + 104;
  v32 = *(v20 + 104);
  v69 = *MEMORY[0x1E6968DF0];
  v34 = v69;
  v70 = v18;
  v32(v24);
  v71 = v33;
  v72 = v32;
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  (v32)(v24, v34, v18);
  OUTLINED_FUNCTION_0_20();
  v35 = OUTLINED_FUNCTION_13_13();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v29);
  sub_1B3C98638();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  v42 = sub_1B3C97AE8();
  v73 = v42;
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
  v75 = *MEMORY[0x1E695A500];
  v74 = *(v86 + 104);
  v86 += 104;
  v74(v84);
  sub_1B37BD2B4(&qword_1EB852760, MEMORY[0x1E69C31E8]);
  v79 = sub_1B3C97B78();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8545F0);
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v49 = v69;
  v50 = v70;
  v51 = v72;
  (v72)(v24, v69, v70);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_15_13();
  sub_1B3C9C538();
  sub_1B3C98178();
  v51(v24, v49, v50);
  OUTLINED_FUNCTION_0_20();
  v52 = OUTLINED_FUNCTION_13_13();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v76);
  v55 = sub_1B3C98618();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
  OUTLINED_FUNCTION_5_2();
  v59 = v73;
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v73);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v59);
  (v74)(v84, v75, v85);
  v66 = MEMORY[0x1E69C31D8];
  sub_1B37BD2B4(&qword_1EB8545F8, MEMORY[0x1E69C31D8]);
  sub_1B3C9D388();
  sub_1B37BD2B4(&qword_1EB854600, v66);
  sub_1B3C97B58();
  return v79;
}

uint64_t sub_1B37BD050@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB850008 != -1)
  {
    swift_once();
  }

  v2 = sub_1B3C97F48();
  v3 = __swift_project_value_buffer(v2, qword_1EB878D00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B37BD0FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B3714CE0;

  return sub_1B37BABA0();
}

_BYTE *sub_1B37BD1A8@<X0>(void *a1@<X8>)
{
  result = sub_1B37BC988();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B37BD1D0(uint64_t a1)
{
  v2 = sub_1B37BD260();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1B37BD21C()
{
  result = qword_1EB8545D8;
  if (!qword_1EB8545D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8545D8);
  }

  return result;
}

unint64_t sub_1B37BD260()
{
  result = qword_1EB8545E0;
  if (!qword_1EB8545E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8545E0);
  }

  return result;
}

uint64_t sub_1B37BD2B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B37BD2FC()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B3714CE0;

  return sub_1B37BAFE8(v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t sub_1B37BD42C()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  OUTLINED_FUNCTION_8_0(v2);
  v0[3] = OUTLINED_FUNCTION_24_6();
  sub_1B3C9C888();
  v0[4] = OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_13();
  v0[5] = v3;
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B37BD4D4()
{
  OUTLINED_FUNCTION_19_3();
  v2 = v0[2];
  v3 = sub_1B3C98638();
  OUTLINED_FUNCTION_5_16(v2);
  if (v8)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8545D0);
    OUTLINED_FUNCTION_15_0();
    v6 = v5;
    v7 = OUTLINED_FUNCTION_18_11();
    *(v7 + 16) = xmmword_1B3CF6CE0;
    sub_1B37BF920(v2, v4);
    result = OUTLINED_FUNCTION_5_16(v4);
    if (v8)
    {
      __break(1u);
      return result;
    }

    (*(v6 + 32))(v7 + v1, v0[3], v3);
  }

  v0[7] = v7;
  type metadata accessor for PXEditAppDependencyManager();
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_1B37BD640;

  return sub_1B37BE548();
}

uint64_t sub_1B37BD640()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_1B37BD7AC;
  }

  else
  {

    v7 = v3[5];
    v8 = v3[6];
    v9 = sub_1B37BD74C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37BD74C()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_2_22();

  return v0();
}

uint64_t sub_1B37BD7AC()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37BD81C()
{
  OUTLINED_FUNCTION_0_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  OUTLINED_FUNCTION_8_0(v3);
  v0[4] = OUTLINED_FUNCTION_24_6();
  sub_1B3C9C888();
  v0[5] = OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_13();
  v0[6] = v4;
  v0[7] = v5;
  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B37BD8C4()
{
  OUTLINED_FUNCTION_19_3();
  v2 = v0[2];
  v3 = sub_1B3C98638();
  OUTLINED_FUNCTION_5_16(v2);
  if (v8)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8545D0);
    OUTLINED_FUNCTION_15_0();
    v6 = v5;
    v7 = OUTLINED_FUNCTION_18_11();
    *(v7 + 16) = xmmword_1B3CF6CE0;
    sub_1B37BF920(v2, v4);
    result = OUTLINED_FUNCTION_5_16(v4);
    if (v8)
    {
      __break(1u);
      return result;
    }

    (*(v6 + 32))(v7 + v1, v0[4], v3);
  }

  v0[8] = v7;
  type metadata accessor for PXEditAppDependencyManager();
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1B37BDA3C;

  return sub_1B37BDFEC();
}

uint64_t sub_1B37BDA3C()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1B37BDBA8;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1B37BDB48;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B37BDB48()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_2_22();

  return v0();
}

uint64_t sub_1B37BDBA8()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B37BDC18()
{
  OUTLINED_FUNCTION_0_0();
  v1[18] = v2;
  v1[19] = v0;
  sub_1B3C9C888();
  v1[20] = OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_13();
  v1[21] = v3;
  v1[22] = v4;
  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B37BDC94()
{
  OUTLINED_FUNCTION_19_3();
  v0[23] = sub_1B37BF35C();
  sub_1B37A8A54();
  v0[24] = sub_1B3C9C778();
  v0[2] = v0;
  v0[7] = v0 + 26;
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854628);
  OUTLINED_FUNCTION_0_21(v2);
  OUTLINED_FUNCTION_20_8(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_22();
  v0[13] = v3;
  v0[14] = v1;
  v4 = OUTLINED_FUNCTION_21_7();
  [v4 v5];
  OUTLINED_FUNCTION_25_4();

  return MEMORY[0x1EEE6DEC8]();
}

uint64_t sub_1B37BDDE8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_19_9();
  v5 = *(v4 + 176);
  v7 = *(v6 + 168);
  if (v8)
  {
    v9 = sub_1B37BDF70;
  }

  else
  {
    v9 = sub_1B37BDF08;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1B37BDF08()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 192);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_22();

  return v2();
}

uint64_t sub_1B37BDF70()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 192);

  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_1B37BDFEC()
{
  OUTLINED_FUNCTION_0_0();
  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  *(v1 + 225) = v3;
  *(v1 + 144) = v4;
  sub_1B3C9C888();
  *(v1 + 168) = OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_13();
  *(v1 + 176) = v5;
  *(v1 + 184) = v6;
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B37BE070()
{
  sub_1B37BF32C(*(v0 + 144), *(v0 + 225));
  *(v0 + 192) = sub_1B37BF35C();
  OUTLINED_FUNCTION_15_14();
  *(v0 + 200) = sub_1B3C9C778();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854620);
  *(v0 + 208) = sub_1B3C9C778();
  *(v0 + 16) = v0;
  *(v0 + 56) = v1;
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854628);
  OUTLINED_FUNCTION_0_21(v3);
  OUTLINED_FUNCTION_20_8(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_22();
  *(v0 + 104) = v4;
  *(v0 + 112) = v2;
  v5 = OUTLINED_FUNCTION_21_7();
  [v5 v6];
  OUTLINED_FUNCTION_23_3();

  return MEMORY[0x1EEE6DEC8]();
}

uint64_t sub_1B37BE238()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_19_9();
  v5 = *(v4 + 184);
  v7 = *(v6 + 176);
  if (v8)
  {
    v9 = sub_1B37BE4A0;
  }

  else
  {
    v9 = sub_1B37BE358;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1B37BE358()
{
  OUTLINED_FUNCTION_19_3();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);

  v3 = *(v0 + 224);
  swift_unknownObjectRelease();

  if (v3)
  {
    OUTLINED_FUNCTION_2_22();
  }

  else
  {
    v5 = sub_1B3C98728();
    sub_1B37BFB68(&qword_1EB854630, MEMORY[0x1E69C3238]);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69C3228], v5);
    swift_willThrow();
    sub_1B3C98EA8();
    swift_willThrow();

    OUTLINED_FUNCTION_1();
  }

  return v4();
}

uint64_t sub_1B37BE4A0()
{
  OUTLINED_FUNCTION_19_3();
  v1 = v0[26];
  v2 = v0[25];

  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = v0[27];
  sub_1B3C98EA8();
  swift_willThrow();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_1B37BE548()
{
  OUTLINED_FUNCTION_0_0();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  OUTLINED_FUNCTION_8_0(v2);
  v0[5] = OUTLINED_FUNCTION_24_6();
  v3 = sub_1B3C98638();
  v0[6] = v3;
  v0[7] = *(v3 - 8);
  v0[8] = OUTLINED_FUNCTION_24_6();
  sub_1B3C9C888();
  v0[9] = OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_13();
  v0[10] = v4;
  v0[11] = v5;
  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B37BE644()
{
  OUTLINED_FUNCTION_19_3();
  v1 = v0[4];
  if (*(v1 + 16) != 1)
  {

    goto LABEL_5;
  }

  v2 = v0[5];
  sub_1B387CA6C(v1, v2);
  OUTLINED_FUNCTION_5_16(v2);
  if (v12)
  {
    __break(1u);
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    sub_1B3C98C08();
    v3 = sub_1B3C98BF8();
    v0[12] = v3;
    v6 = v3;
    if (v3 && [v3 type] == 7)
    {
      v7 = [v6 asset];
      if (v7 && (v8 = [v7 uuid], swift_unknownObjectRelease(), v8))
      {
        v9 = sub_1B3C9C5E8();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      sub_1B37BFB68(&qword_1EB854638, MEMORY[0x1E69C31E8]);
      sub_1B3C9D398();
      if (v11)
      {
        v12 = v9 == v0[2] && v11 == v0[3];
        if (v12)
        {

LABEL_26:

          (*(v0[7] + 8))(v0[8], v0[6]);
LABEL_5:

          OUTLINED_FUNCTION_2_22();
          OUTLINED_FUNCTION_25_4();

          __asm { BRAA            X1, X16 }
        }

        v13 = sub_1B3C9D6A8();

        if (v13)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_1B37BE934;
    OUTLINED_FUNCTION_25_4();
  }

  return MEMORY[0x1EEE2CC00]();
}

uint64_t sub_1B37BE934()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_1B37BECBC;
  }

  else
  {
    v7 = sub_1B37BEA68;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B37BEA68()
{
  OUTLINED_FUNCTION_0_0();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1B37BEAFC;

  return MEMORY[0x1EEE6DA60](100000000);
}

uint64_t sub_1B37BEAFC()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_1B37BED58;
  }

  else
  {
    v7 = sub_1B37BEC30;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B37BEC30()
{
  OUTLINED_FUNCTION_0_0();
  v1 = v0[12];

  (*(v0[7] + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_2_22();

  return v2();
}

uint64_t sub_1B37BECBC()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];

  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_1B37BED58()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];

  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_1B37BEDF4()
{
  OUTLINED_FUNCTION_0_0();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  sub_1B3C9C888();
  v1[21] = OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_13();
  v1[22] = v4;
  v1[23] = v5;
  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B37BEE74()
{
  sub_1B37BF32C(v0[18], 0);
  v0[24] = sub_1B37BF35C();
  OUTLINED_FUNCTION_15_14();
  v0[25] = sub_1B3C9C778();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854620);
  v0[26] = sub_1B3C9C778();
  v0[2] = v0;
  v0[7] = v1;
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854628);
  OUTLINED_FUNCTION_0_21(v3);
  OUTLINED_FUNCTION_20_8(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_22();
  v0[13] = v4;
  v0[14] = v2;
  v5 = OUTLINED_FUNCTION_21_7();
  [v5 v6];
  OUTLINED_FUNCTION_23_3();

  return MEMORY[0x1EEE6DEC8]();
}

uint64_t sub_1B37BF018()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_19_9();
  v5 = *(v4 + 184);
  v7 = *(v6 + 176);
  if (v8)
  {
    v9 = sub_1B37BF1B0;
  }

  else
  {
    v9 = sub_1B37BF138;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1B37BF138()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_22();

  return v3();
}

uint64_t sub_1B37BF1B0()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);

  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_1B37BF238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854640);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B3CF6CE0;
  v1 = sub_1B3C98808();
  result = sub_1B37BFB68(&qword_1EB854648, MEMORY[0x1E69C3258]);
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  qword_1EB878D18 = v0;
  return result;
}

uint64_t sub_1B37BF2D0()
{
  if (qword_1EB850010 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B37BF32C(uint64_t a1, char a2)
{
  if (*(a1 + 16) || (a2 & 1) == 0)
  {
    return sub_1B3C987E8();
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1B37BF35C()
{
  if (qword_1EB878B30)
  {
    return swift_unknownObjectRetain();
  }

  v1 = sub_1B3C98728();
  sub_1B37BFB68(&qword_1EB854630, MEMORY[0x1E69C3238]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69C3230], v1);
  return swift_willThrow();
}

uint64_t sub_1B37BF42C(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1B37FAA5C(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1B37FAAC4(v9, a2);
  }
}

uint64_t sub_1B37BF4B0()
{
  OUTLINED_FUNCTION_0_0();
  v1[18] = v2;
  v1[19] = v0;
  sub_1B3C9C888();
  v1[20] = OUTLINED_FUNCTION_17_11();
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_10_13();
  v1[21] = v3;
  v1[22] = v4;
  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B37BF52C()
{
  OUTLINED_FUNCTION_19_3();
  v0[23] = sub_1B37BF35C();
  v0[2] = v0;
  v0[7] = v0 + 25;
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854628);
  OUTLINED_FUNCTION_0_21(v2);
  OUTLINED_FUNCTION_20_8(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_22();
  v0[13] = v3;
  v0[14] = v1;
  v4 = OUTLINED_FUNCTION_21_7();
  [v4 v5];
  OUTLINED_FUNCTION_25_4();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1B37BF664()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_19_9();
  v5 = *(v4 + 176);
  v7 = *(v6 + 168);
  if (v8)
  {
    v9 = sub_1B37BF7E8;
  }

  else
  {
    v9 = sub_1B37BF784;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1B37BF784()
{
  OUTLINED_FUNCTION_0_0();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_22();

  return v0();
}

uint64_t sub_1B37BF7E8()
{
  OUTLINED_FUNCTION_9();

  swift_willThrow();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();

  return v0();
}

id sub_1B37BF85C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXEditAppDependencyManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B37BF8B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXEditAppDependencyManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B37BF920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8513A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37BF998(uint64_t a1)
{
  v2 = sub_1B3C98188();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = sub_1B3C97F38();
  OUTLINED_FUNCTION_15_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  sub_1B3C9C598();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  (*(v14 + 16))(v13 - v12, a1);
  *v10 = type metadata accessor for PXEditAppDependencyManager();
  (*(v6 + 104))(v10, *MEMORY[0x1E6968E00], v4);
  sub_1B3C98178();
  return sub_1B3C97F58();
}

uint64_t sub_1B37BFB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_12_11()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

unint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_1B37A8A54();
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_1B3C9C878();
}

uint64_t OUTLINED_FUNCTION_24_6()
{

  return swift_task_alloc();
}

uint64_t static OneUpChromeSpecUtilities.wantsTopLegibilityGradient(for:chromeViewModel:)()
{
  v0 = sub_1B3C995F8();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  swift_getObjectType();
  if ((sub_1B3C99918() & 1) != 0 || (OUTLINED_FUNCTION_1_23(), (sub_1B3C998C8() & 1) == 0))
  {
    v9 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_23();
    v7 = sub_1B3C99948();
    OUTLINED_FUNCTION_1_23();
    v8 = sub_1B3C999E8();
    v9 = v8 | v7;
    if ((v8 & 1) != 0 && (v7 & 1) == 0)
    {
      (*(v2 + 104))(v6, *MEMORY[0x1E69C2BD0], v0);
      v9 = sub_1B3C997F8();
      (*(v2 + 8))(v6, v0);
    }
  }

  return v9 & 1;
}

uint64_t static OneUpChromeSpecUtilities.wantsBottomLegibilityGradient(for:chromeViewModel:bottomLegibilityHeight:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B3C995F8();
  OUTLINED_FUNCTION_0();
  v34 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v33 - v13;
  v15 = sub_1B3C99C78();
  OUTLINED_FUNCTION_0();
  v35 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  swift_getObjectType();
  if (sub_1B3C99918())
  {
LABEL_2:
    v21 = 0;
    return v21 & 1;
  }

  v33[1] = a4;
  OUTLINED_FUNCTION_3_21();
  v21 = 0;
  if ((sub_1B3C998C8() & 1) != 0 && a1 > 0.0)
  {
    OUTLINED_FUNCTION_3_21();
    v21 = sub_1B3C99948();
    sub_1B3C997D8();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1B37C0100(v14);
      return v21 & 1;
    }

    (*(v35 + 32))(v20, v14, v15);
    OUTLINED_FUNCTION_3_21();
    if ((sub_1B3C999E8() & 1) == 0)
    {
      v25 = OUTLINED_FUNCTION_1_23();
      v26(v25);
      return v21 & 1;
    }

    if (v21)
    {
      v23 = OUTLINED_FUNCTION_1_23();
      v24(v23);
      v21 = 1;
      return v21 & 1;
    }

    sub_1B3C99C68();
    v27 = sub_1B3C9B4E8();
    if (v27 == sub_1B3C9B4E8())
    {
      v28 = v34;
      (*(v34 + 104))(v11, *MEMORY[0x1E69C2BC0], v6);
      v21 = sub_1B3C997F8();
      (*(v28 + 8))(v11, v6);
      v29 = OUTLINED_FUNCTION_1_23();
      v30(v29);
      return v21 & 1;
    }

    v31 = OUTLINED_FUNCTION_1_23();
    v32(v31);
    goto LABEL_2;
  }

  return v21 & 1;
}

uint64_t sub_1B37C0100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static OneUpChromeSpecUtilities.edrBoost(forType:assetIsHDR:isZoomedOverChrome:)(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1B37B1D10();
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = v2;
  if (v1 == 2)
  {
    [v2 chromeTitleEDRBoost];
LABEL_7:

    return;
  }

  if (v1 == 3)
  {
    [v2 chromeButtonsEDRBoost];
    switch([v3 chromeEDRBoostBehavior])
    {
      case 0uLL:
      case 1uLL:
      case 2uLL:
      case 3uLL:
        goto LABEL_7;
      default:
        goto LABEL_8;
    }
  }

  [v2 chromeVideoControlsEDRBoost];
  if (v1)
  {
    goto LABEL_7;
  }

  switch([v3 videoControlsEDRBoostBehavior])
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
      goto LABEL_7;
    default:
LABEL_8:
      sub_1B3C9D378();
      MEMORY[0x1B8C69C10](0xD000000000000020, 0x80000001B3D16190);
      type metadata accessor for PXLemonadeOneUpChromeEDRBoostBehavior(0);
      sub_1B3C9D458();
      sub_1B3C9D4C8();
      __break(1u);
      break;
  }
}

unsigned __int8 *getEnumTagSinglePayload for OneUpChromeEDRBoostType(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return ((v7 & 0x7FFFFFFE | v6 & 1u) - 1);
      }
    }

    return 0;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = result[1];
      if (!result[1])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 3);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeEDRBoostType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B37C0508(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B37C0524(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeSpecUtilities(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}