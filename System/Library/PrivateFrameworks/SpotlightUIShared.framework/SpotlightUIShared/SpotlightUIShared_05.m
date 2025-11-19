id sub_26B95F158()
{
  v1 = sub_26B9ABF24();
  v23 = *(v1 - 8);
  v24 = v1;
  v2 = *(v23 + 64);
  MEMORY[0x28223BE20](v1);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9ABC94();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue;
  v13 = v5[2];
  v13(&v21 - v10, v0 + OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue, v4);
  sub_26B9ABC74();
  v14 = v5[1];
  v14(v11, v4);
  v13(v9, v0 + v12, v4);
  v15 = sub_26B9ABC84();
  v14(v9, v4);
  v16 = *(v15 + 16);

  v17 = v22;
  sub_26B95F3B8(v16);
  (*(v23 + 8))(v17, v24);
  v18 = sub_26B9AC4C4();

  v19 = [objc_opt_self() textWithString_];

  return v19;
}

uint64_t sub_26B95F3B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26B9ABF24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_26B9ABF04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x277D72D50])
  {
    (*(v5 + 8))(v8, v4);
LABEL_5:
    v19 = [objc_opt_self() bundle];
    sub_26B9AAF14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A30, &unk_26B9B3AD0);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D83B88];
    *(v20 + 16) = xmmword_26B9AF300;
    v22 = MEMORY[0x277D83C10];
    *(v20 + 56) = v21;
    *(v20 + 64) = v22;
    *(v20 + 32) = a1;
    v16 = sub_26B9AC4D4();

    return v16;
  }

  (*(v5 + 96))(v8, v4);
  v14 = *v8;
  v15 = swift_projectBox();
  (*(v10 + 16))(v13, v15, v9);

  v16 = sub_26B95F80C(a1);
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  if (!v18)
  {
    goto LABEL_5;
  }

  return v16;
}

uint64_t sub_26B95F700()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue;
  v2 = sub_26B9ABC94();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_26B95F768()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue;
  v2 = sub_26B9ABC94();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26B95F80C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26B9ABF04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D72CD8] || (v9 != *MEMORY[0x277D72CC0] ? (v10 = v9 == *MEMORY[0x277D72C48]) : (v10 = 1), v10))
  {
    v11 = [objc_opt_self() bundle];
    sub_26B9AAF14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A30, &unk_26B9B3AD0);
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D83B88];
    *(v12 + 16) = xmmword_26B9AF300;
    v14 = MEMORY[0x277D83C10];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    *(v12 + 32) = a1;
    v15 = sub_26B9AC4D4();
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }

  return v15;
}

uint64_t sub_26B95FAC8(uint64_t a1)
{
  v2 = [objc_opt_self() bundle];
  sub_26B9AAF14();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A30, &unk_26B9B3AD0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_26B9AF300;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_26B9AC4D4();

  return v6;
}

uint64_t type metadata accessor for CollectionTypedValueResultBuilder()
{
  result = qword_28042F308;
  if (!qword_28042F308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B95FC40()
{
  result = sub_26B9ABC94();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B95FCD0@<X0>(char *a1@<X8>)
{
  v2 = sub_26B9AB104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = sub_26B9ABDD4();
  v11 = [v10 fileURL];

  if (v11)
  {
    sub_26B9AB0C4();

    v12 = *(v3 + 32);
    v12(v9, v7, v2);
    v12(a1, v9, v2);
    _s18ResolutionStrategyOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    _s18ResolutionStrategyOMa(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_26B95FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v36 = a2;
  v33 = a1;
  v8 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B9ABE84();
  v31 = *(v11 - 8);
  v12 = v31;
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 48);
  v17 = *(v5 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file;
  v32 = sub_26B9ABDE4();
  v20 = *(v32 - 8);
  (*(v20 + 16))(v18 + v19, a1, v32);
  v21 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType;
  v22 = sub_26B9AB414();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v18 + v21, v36, v22);
  v24 = a3;
  v25 = a3;
  v26 = v11;
  (*(v12 + 16))(v15, v25, v11);
  v27 = v34;
  v28 = v35;
  sub_26B9607D0(v35, v34, type metadata accessor for TypedValueResultBuilder.Config);
  v29 = sub_26B965300(v15, v27);
  sub_26B960838(v28, type metadata accessor for TypedValueResultBuilder.Config);
  (*(v31 + 8))(v24, v26);
  (*(v23 + 8))(v36, v22);
  (*(v20 + 8))(v33, v32);
  return v29;
}

id sub_26B960118()
{
  v0 = sub_26B9AB104();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = sub_26B9ABDD4();
  v9 = [v8 fileURL];

  if (v9)
  {
    sub_26B9AB0C4();

    (*(v1 + 32))(v7, v5, v0);
    v10 = [objc_allocWithZone(MEMORY[0x277D4C560]) init];
    v11 = sub_26B9AB0A4();
    [v10 setFilePath_];

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
    sub_26B9AB3C4();
    v12 = sub_26B9AC4C4();

    [v10 setContentType_];
  }

  return v10;
}

id sub_26B960310()
{
  v1 = sub_26B9AB104();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v10 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v9;
  if (sub_26B964A90(*v10, *(v10 + 8)) && (v11 = sub_26B9ABDD4(), v12 = [v11 fileURL], v11, v12))
  {
    sub_26B9AB0C4();

    (*(v2 + 32))(v8, v6, v1);
    v13 = [objc_allocWithZone(MEMORY[0x277D4C4E8]) init];
    v14 = sub_26B9AB0A4();
    v15 = [objc_opt_self() punchoutWithURL_];

    [v13 setPunchout_];
    (*(v2 + 8))(v8, v1);
    return v13;
  }

  else
  {

    return sub_26B96A848();
  }
}

uint64_t sub_26B960530@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A38, &unk_26B9B3B20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for ContextualTypedValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B96B290(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26B960704(v5);
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  else
  {
    sub_26B96076C(v5, v10);
    v12 = &v10[*(v6 + 20)];
    v13 = *(v12 + 3);

    *(v12 + 1) = xmmword_26B9B3B10;
    v12[32] = 1;
    sub_26B9607D0(v10, a1, type metadata accessor for ContextualTypedValue);
    (*(v7 + 56))(a1, 0, 1, v6);
    return sub_26B960838(v10, type metadata accessor for ContextualTypedValue);
  }
}

uint64_t sub_26B960704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A38, &unk_26B9B3B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B96076C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualTypedValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9607D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26B960838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_26B9608C0(Class *a1, SEL *a2)
{
  v4 = sub_26B9AB104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = sub_26B9ABDD4();
  v13 = [v12 fileURL];

  if (!v13)
  {
    return 0;
  }

  sub_26B9AB0C4();

  (*(v5 + 32))(v11, v9, v4);
  v14 = [objc_allocWithZone(*a1) init];
  v15 = sub_26B9AB0A4();
  [v14 *a2];

  (*(v5 + 8))(v11, v4);
  return v14;
}

unint64_t sub_26B960A58()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v3 = (*(*v0 + 224))();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v6 = [objc_allocWithZone(MEMORY[0x277D4C2D8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26B9B1290;
    *(v7 + 32) = v4;
    sub_26B9294B8(0, &qword_280426A48, 0x277D4C2E0);
    v8 = v4;
    v9 = sub_26B9AC6E4();

    [v6 setCopyableItems_];

    [v5 setCommand_];
    v10 = v5;
    MEMORY[0x26D6865A0]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();
    v11 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v12 = [objc_allocWithZone(MEMORY[0x277D65940]) init];
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26B9B1290;
    *(v13 + 32) = v8;
    v14 = v8;
    v15 = sub_26B9AC6E4();

    [v12 setCopyableItems_];

    [v11 setCommand_];
    v16 = v11;
    MEMORY[0x26D6865A0]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v2 = v29;
  }

  v17 = (*(*v1 + 240))();
  if (v17)
  {
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v20 = [objc_allocWithZone(MEMORY[0x277D4C610]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26B9B1290;
    *(v21 + 32) = v18;
    sub_26B9294B8(0, &qword_280426A40, 0x277D4C618);
    v22 = v18;
    v23 = sub_26B9AC6E4();

    [v20 setShareItems_];

    [v19 setCommand_];
    v24 = v19;
    MEMORY[0x26D6865A0]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v2 = v29;
  }

  if (v2 >> 62)
  {
    if (sub_26B9ACB44())
    {
      return v2;
    }

    goto LABEL_13;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    return 0;
  }

  return v2;
}

uint64_t sub_26B960EE4()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file;
  v2 = sub_26B9ABDE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType;
  v4 = sub_26B9AB414();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_26B960F8C()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file;
  v2 = sub_26B9ABDE4();
  v3 = *(*(v2 - 8) + 8);
  sub_26B9AAAE4();
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType;
  v5 = sub_26B9AB414();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26B961094()
{
  _s18ResolutionStrategyOMa(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_26B9610D8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D4C3B0]) init];
  v1 = sub_26B9ABDD4();
  v2 = [v1 data];

  v3 = sub_26B9AB124();
  v5 = v4;

  v6 = sub_26B9AB114();
  sub_26B922394(v3, v5);
  [v0 setImageData_];

  [v0 setSize_];
  return v0;
}

id sub_26B9611B4()
{
  v1 = (*(*v0 + 184))();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D4C6E0]) init];
    [v3 setThumbnail_];
    v4 = *(*v0 + 200);
    v5 = v3;
    v6 = v4();
    [v5 setCommand_];

    if ((*(*v0 + 248))())
    {
      sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
      v7 = sub_26B9AC6E4();
    }

    else
    {
      v7 = 0;
    }

    [v5 setPreviewButtonItems_];

    return v5;
  }

  else
  {

    return sub_26B967DE8();
  }
}

uint64_t sub_26B96132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v50 = a1;
  v6 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v55 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v43 - v10;
  v52 = sub_26B9ABE84();
  v61 = *(v52 - 8);
  v11 = v61;
  v12 = *(v61 + 64);
  v13 = MEMORY[0x28223BE20](v52);
  v53 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = sub_26B9AB414();
  v48 = *(v17 - 8);
  v18 = v48;
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v21;
  v22 = sub_26B9ABDE4();
  v57 = v22;
  v51 = *(v22 - 8);
  v23 = v51;
  v24 = *(v51 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + 48);
  v28 = *(v4 + 52);
  v29 = swift_allocObject();
  v45 = *(v23 + 16);
  v46 = v29;
  v49 = v26;
  v45(v26, a1, v22);
  v44 = *(v18 + 16);
  v44(v21, v58, v17);
  v43 = *(v11 + 16);
  v47 = v16;
  v30 = v52;
  v43(v16, v59, v52);
  v31 = v54;
  sub_26B9607D0(v60, v54, type metadata accessor for TypedValueResultBuilder.Config);
  v32 = v46;
  v45((v46 + OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file), v26, v57);
  v33 = v17;
  v44((v32 + OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType), v56, v17);
  v34 = v53;
  v43(v53, v16, v30);
  v35 = v31;
  v36 = v55;
  sub_26B9607D0(v31, v55, type metadata accessor for TypedValueResultBuilder.Config);
  v55 = sub_26B965300(v34, v36);
  sub_26B960838(v60, type metadata accessor for TypedValueResultBuilder.Config);
  v37 = *(v61 + 8);
  v61 += 8;
  v38 = v30;
  v37(v59, v30);
  v39 = *(v48 + 8);
  v39(v58, v33);
  v40 = *(v51 + 8);
  v41 = v57;
  v40(v50, v57);
  sub_26B960838(v35, type metadata accessor for TypedValueResultBuilder.Config);
  v37(v47, v38);
  v39(v56, v33);
  v40(v49, v41);
  return v55;
}

uint64_t sub_26B961794()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file;
  v2 = sub_26B9ABDE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType;
  v4 = sub_26B9AB414();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26B9618A0()
{
  result = sub_26B9ABDE4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_26B9AB414();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26B9619CC@<X0>(void *a1@<X8>)
{
  v3 = sub_26B9ABE14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person, v3);
  v8 = sub_26B9ABE04();
  (*(v4 + 8))(v7, v3);
  v9 = [v8 contactIdentifier];

  if (v9)
  {
    v10 = sub_26B9AC504();
    v12 = v11;

    *a1 = nullsub_1(0x45746361746E6F43, 0xED0000797469746ELL);
    a1[1] = v13;
    a1[2] = v14;
    a1[3] = v15;
    a1[4] = v10;
    a1[5] = v12;
  }

  _s18ResolutionStrategyOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26B961B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v7 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B9ABE84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 48);
  v17 = *(v4 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person;
  v20 = sub_26B9ABE14();
  v21 = *(v20 - 8);
  v22 = v18 + v19;
  v23 = v27;
  (*(v21 + 16))(v22, v27, v20);
  (*(v12 + 16))(v15, a2, v11);
  sub_26B95C6A0(a3, v10);
  v24 = sub_26B965300(v15, v10);
  sub_26B955164(a3);
  (*(v12 + 8))(a2, v11);
  (*(v21 + 8))(v23, v20);
  return v24;
}

id sub_26B961D74()
{
  v1 = sub_26B9ABE14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D4C2D0]) init];
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person, v1);
  v7 = sub_26B9ABE04();
  (*(v2 + 8))(v5, v1);
  v8 = [v7 contactIdentifier];

  if (v8)
  {
    v9 = sub_26B9AC504();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26B9AF300;
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    v13 = sub_26B9AC6E4();

    [v6 setContactIdentifiers_];
  }

  return v6;
}

id sub_26B961F24()
{
  v1 = sub_26B9ABE14();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v10 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v9;
  if (sub_26B964A90(*v10, *(v10 + 8)))
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D4C688]) init];
    v12 = sub_26B9AC4C4();
    [v11 setSymbolName_];

    v13 = v11;
    [v13 setIsTemplate_];
    v14 = [objc_allocWithZone(MEMORY[0x277D4C508]) init];
    v23 = v2[2];
    v24 = v0;
    v22 = OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person;
    v23(v8, v0 + OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person, v1);
    v15 = sub_26B9ABE04();
    v16 = v2[1];
    v16(v8, v1);
    v17 = [v15 displayName];

    if (!v17)
    {
      sub_26B9AC504();
      v17 = sub_26B9AC4C4();
    }

    [v14 setTokenString_];

    v23(v6, v24 + v22, v1);
    v18 = sub_26B9ABE04();
    v16(v6, v1);
    v19 = [v18 contactIdentifier];

    [v14 setEntityIdentifier_];
    [v14 setEntityType_];
    [v14 setSymbolImage_];
    [v14 setTokenImage_];

    return v14;
  }

  else
  {

    return sub_26B96A848();
  }
}

id sub_26B962250()
{
  v1 = v0;
  v2 = sub_26B9ABE14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person, v2);
  v7 = sub_26B9ABE04();
  (*(v3 + 8))(v6, v2);
  v8 = [v7 displayName];

  sub_26B9AC504();
  v9 = sub_26B9AC4C4();

  v10 = [objc_opt_self() textWithString_];

  result = v10;
  if (!v10)
  {
    return sub_26B968070();
  }

  return result;
}

uint64_t sub_26B9623FC()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person;
  v2 = sub_26B9ABE14();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_26B962464()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person;
  v2 = sub_26B9ABE14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonTypedValueResultBuilder()
{
  result = qword_28042F340;
  if (!qword_28042F340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B96255C()
{
  result = sub_26B9ABE14();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_26B9625EC()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v2 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v1;
  if (sub_26B964A90(*v2, *(v2 + 8)))
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D4C860]) init];
    type metadata accessor for PrimitiveTypedValueResultHostingView(0);
    v4 = v0;
    sub_26B96FC60();
    v5 = sub_26B9AC4C4();

    [v3 setTypeIdentifier_];

    sub_26B9ABD14();
    sub_26B9ACE74();
    v6 = sub_26B9AC4C4();

    [v3 setInstanceIdentifier_];

    v7 = *(*v0 + 200);
    v8 = v3;
    v9 = v7();
    [v8 setCommand_];

    if ((*(*v4 + 248))())
    {
      sub_26B9627F4();
      v10 = sub_26B9AC6E4();
    }

    else
    {
      v10 = 0;
    }

    [v8 setPreviewButtonItems_];

    return v8;
  }

  else
  {

    return sub_26B967DE8();
  }
}

unint64_t sub_26B9627F4()
{
  result = qword_280426720;
  if (!qword_280426720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280426720);
  }

  return result;
}

uint64_t sub_26B962840(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B9ABE84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  (*(v10 + 16))(v13, a1, v9);
  sub_26B95C6A0(a2, v8);
  v16 = sub_26B965300(v13, v8);
  sub_26B955164(a2);
  (*(v10 + 8))(a1, v9);
  return v16;
}

uint64_t sub_26B9629B0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = sub_26B9ABE84();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v22 = *(v4 + 48);
  v23 = *(v4 + 52);
  *(swift_allocObject() + OBJC_IVAR____TtC17SpotlightUIShared27BoolTypedValueResultBuilder_BOOLValue) = a1;
  v24 = v15[2];
  v24(v21, a2, v14);
  sub_26B95C6A0(a3, v13);
  v24(v19, v21, v14);
  v25 = v13;
  v26 = v31;
  sub_26B95C6A0(v13, v31);
  v27 = sub_26B965300(v19, v26);
  sub_26B955164(a3);
  v28 = v15[1];
  v28(a2, v14);
  sub_26B955164(v25);
  v28(v21, v14);
  return v27;
}

id sub_26B962BD0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A50, &qword_26B9B3BA8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_26B9AC094();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v16 = type metadata accessor for TypedValueResultBuilder.Config(0);
  sub_26B962F1C(v1 + *(v16 + 24) + v15, v5);
  v17 = sub_26B9AC0E4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    sub_26B8EACD8(v5, &qword_280426288, &qword_26B9B0980);
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_4:
    sub_26B8EACD8(v9, &qword_280426A50, &qword_26B9B3BA8);
    return sub_26B968070();
  }

  sub_26B9AC0A4();
  (*(v18 + 8))(v5, v17);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  (*(v11 + 32))(v14, v9, v10);
  if (*(v1 + OBJC_IVAR____TtC17SpotlightUIShared27BoolTypedValueResultBuilder_BOOLValue) == 1)
  {
    sub_26B9AC074();
  }

  else
  {
    sub_26B9AC084();
  }

  v20 = sub_26B9AC4C4();

  v21 = [objc_opt_self() textWithString_];

  v22 = (v11 + 8);
  if (v21)
  {
    (*v22)(v14, v10);
    return v21;
  }

  else
  {
    v23 = sub_26B968070();
    (*v22)(v14, v10);
    return v23;
  }
}

uint64_t sub_26B962F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_26B962F8C()
{
  result = sub_26B968C74();
  if (!result)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
    if (*(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config + 8))
    {
      v3 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config);
      v4 = v2;
      v5 = sub_26B9AC4C4();
      v2 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v2;
    [v2 setBundleIdentifier_];

    return v6;
  }

  return result;
}

uint64_t sub_26B963050()
{
  v0 = *sub_26B96B8B0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26B9630A4()
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A58, &qword_26B9B3BB0);
  v87 = *(v88 - 8);
  v0 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v80 - v1;
  v85 = sub_26B9AC9F4();
  v84 = *(v85 - 8);
  v2 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v82 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_26B9ABD74();
  v81 = *(v83 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B9AAE94();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  MEMORY[0x28223BE20](v6);
  v94 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B9AB144();
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v9);
  v102 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_26B9AB164();
  v101 = *(v103 - 8);
  v12 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v99 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_26B9AB1B4();
  v98 = *(v100 - 8);
  v14 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_26B9AAEB4();
  v16 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_26B9AAEE4();
  v90 = *(v92 - 8);
  v18 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26B9ACA04();
  v106 = *(v20 - 8);
  v107 = v20;
  v21 = *(v106 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A60, &qword_26B9B3BB8);
  v108 = *(v24 - 8);
  v25 = *(v108 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v80 - v26;
  v28 = sub_26B9AB224();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A68, &unk_26B9B3BC0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v80 - v33;
  v35 = sub_26B9ABE44();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v80 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v39, v109, v35);
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 == *MEMORY[0x277D72988])
  {
    (*(v36 + 96))(v39, v35);
    v41 = *v39;
    v42 = [objc_opt_self() mainBundle];
    v43 = sub_26B9AAF14();

    return v43;
  }

  if (v40 == *MEMORY[0x277D72978])
  {
    (*(v36 + 96))(v39, v35);
    v110 = *v39;
    sub_26B9AB204();
    sub_26B964110();
    sub_26B9AAF54();
    sub_26B8F7938(&qword_280426A98, &qword_280426A68, &unk_26B9B3BC0);
    sub_26B9ACAC4();
    (*(v31 + 8))(v34, v30);
    return v111;
  }

  if (v40 == *MEMORY[0x277D729A8])
  {
    (*(v36 + 96))(v39, v35);
    v110 = *v39;
    sub_26B9AB204();
    sub_26B9640BC();
    sub_26B9AB034();
    sub_26B8F7938(&qword_280426A88, &qword_280426A60, &qword_26B9B3BB8);
    sub_26B9AC3E4();
    (*(v108 + 8))(v27, v24);
    return v111;
  }

  if (v40 == *MEMORY[0x277D729C0])
  {
    v45 = (*(v36 + 96))(v39, v35);
    v46 = *(v39 + 4);
    v48 = *v39;
    v47 = *(v39 + 1);
    MEMORY[0x26D684CF0](v45);
    sub_26B964074(&qword_280426A78, MEMORY[0x277CC9E58]);
    v49 = v107;
    sub_26B9ACA14();
    (*(v106 + 8))(v23, v49);
    return v111;
  }

  if (v40 == *MEMORY[0x277D729B8])
  {
    (*(v36 + 96))(v39, v35);
    result = *v39;
    v50 = *(v39 + 1);
    return result;
  }

  if (v40 == *MEMORY[0x277D72990])
  {
    (*(v36 + 96))(v39, v35);
    v52 = v97;
    v51 = v98;
    v53 = v100;
    (*(v98 + 32))(v97, v39, v100);
    v54 = v99;
    sub_26B9AB154();
    v55 = v102;
    sub_26B9AB134();
    v56 = sub_26B9AB1A4();
    (*(v104 + 8))(v55, v105);
    (*(v101 + 8))(v54, v103);
    (*(v51 + 8))(v52, v53);
    return v56;
  }

  if (v40 == *MEMORY[0x277D72958])
  {
    (*(v36 + 96))(v39, v35);
    v58 = v94;
    v57 = v95;
    v59 = v96;
    (*(v95 + 32))(v94, v39, v96);
    v60 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v60 setUnitsStyle_];
    v61 = sub_26B9AAE84();
    v62 = [v60 stringFromDateComponents_];

    if (v62)
    {
      v63 = sub_26B9AC504();

      (*(v57 + 8))(v58, v59);
      return v63;
    }

    (*(v57 + 8))(v58, v59);
  }

  else
  {
    if (v40 == *MEMORY[0x277D72968])
    {
      (*(v36 + 96))(v39, v35);
      v64 = v90;
      v65 = v89;
      v66 = v92;
      (*(v90 + 32))(v89, v39, v92);
      sub_26B9AAEA4();
      sub_26B964074(&qword_280426B80, MEMORY[0x277CC8B30]);
      v67 = sub_26B9AC614();
      (*(v64 + 8))(v65, v66);
      return v67;
    }

    if (v40 == *MEMORY[0x277D72940])
    {
      (*(v36 + 96))(v39, v35);
      v68 = v87;
      v69 = v86;
      v70 = v88;
      (*(v87 + 32))(v86, v39, v88);
      v71 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
      [v71 setUnitStyle_];
      [v71 setUnitOptions_];
      v72 = sub_26B9AAE34();
      v73 = [v71 stringFromMeasurement_];

      v43 = sub_26B9AC504();
      (*(v68 + 8))(v69, v70);
      return v43;
    }

    if (v40 == *MEMORY[0x277D72950])
    {
      (*(v36 + 96))(v39, v35);
      v74 = v81;
      v75 = v80;
      v76 = v83;
      (*(v81 + 32))(v80, v39, v83);
      sub_26B9ABD64();
      v77 = sub_26B9ABD54();
      v78 = v82;
      MEMORY[0x26D684CE0](v77);

      sub_26B964074(&qword_280426A70, MEMORY[0x277CC9E48]);
      v79 = v85;
      sub_26B9ACA14();
      (*(v84 + 8))(v78, v79);
      (*(v74 + 8))(v75, v76);
      return v111;
    }

    if (v40 != *MEMORY[0x277D729A0])
    {
      (*(v36 + 8))(v39, v35);
    }
  }

  return 0;
}

uint64_t sub_26B964074(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26B9640BC()
{
  result = qword_280426A80;
  if (!qword_280426A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426A80);
  }

  return result;
}

unint64_t sub_26B964110()
{
  result = qword_280426A90;
  if (!qword_280426A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426A90);
  }

  return result;
}

uint64_t sub_26B964234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v7 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B9ABE84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 48);
  v17 = *(v4 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url;
  v20 = sub_26B9AB104();
  v21 = *(v20 - 8);
  v22 = v18 + v19;
  v23 = v27;
  (*(v21 + 16))(v22, v27, v20);
  (*(v12 + 16))(v15, a2, v11);
  sub_26B95C6A0(a3, v10);
  v24 = sub_26B965300(v15, v10);
  sub_26B955164(a3);
  (*(v12 + 8))(a2, v11);
  (*(v21 + 8))(v23, v20);
  return v24;
}

id sub_26B964434()
{
  v1 = v0;
  v2 = sub_26B9AB104();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url;
  v8 = v3[2];
  v8(v6, v1 + OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url, v2);
  v9 = sub_26B9AB044();
  v10 = v3[1];
  v10(v6, v2);
  if (v9)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D4C560]) init];
    v8(v6, v1 + v7, v2);
    v12 = sub_26B9AB0A4();
    v10(v6, v2);
    [v11 setFilePath_];
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
    [v11 setIconType_];
  }

  return v11;
}

id sub_26B9645D8()
{
  v1 = sub_26B9AB104();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url, v1);
  sub_26B9AB074();
  (*(v2 + 8))(v5, v1);
  v6 = sub_26B9AC4C4();

  v7 = [objc_opt_self() textWithString_];

  return v7;
}

id sub_26B964718()
{
  v1 = sub_26B9AB104();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D4C4E8]) init];
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url, v1);
  v7 = sub_26B9AB0A4();
  (*(v2 + 8))(v5, v1);
  v8 = [objc_opt_self() punchoutWithURL_];

  [v6 setPunchout_];
  return v6;
}

uint64_t sub_26B9648A0()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url;
  v2 = sub_26B9AB104();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_26B964908()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url;
  v2 = sub_26B9AB104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for URLTypedValueResultBuilder()
{
  result = qword_28042F380;
  if (!qword_28042F380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B964A00()
{
  result = sub_26B9AB104();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_26B964AA0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_26B964AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AA0, &qword_26B9B3C60);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  if (a2)
  {
    goto LABEL_15;
  }

  v43 = &v42 - v26;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a3;
  sub_26B9236E8(a3, v20, &qword_280426228, &unk_26B9B08A0);
  v27 = sub_26B9AB914();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v20, 1, v27) == 1)
  {
    sub_26B8EACD8(v20, &qword_280426228, &unk_26B9B08A0);
    v30 = sub_26B9AC034();
    (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
    goto LABEL_5;
  }

  sub_26B9AB8D4();
  (*(v28 + 8))(v20, v27);
  v31 = sub_26B9AC034();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v25, 1, v31) == 1)
  {
LABEL_5:
    sub_26B9236E8(v47, v18, &qword_280426228, &unk_26B9B08A0);
    if (v29(v18, 1, v27) == 1)
    {
      sub_26B8EACD8(v18, &qword_280426228, &unk_26B9B08A0);
      v33 = 1;
      a5 = v45;
      v34 = v43;
    }

    else
    {
      v34 = v43;
      sub_26B9AB8C4();
      (*(v28 + 8))(v18, v27);
      v33 = 0;
      a5 = v45;
    }

    v31 = sub_26B9AC034();
    v35 = *(v31 - 8);
    (*(v35 + 56))(v34, v33, 1, v31);
    if ((*(v35 + 48))(v25, 1, v31) != 1)
    {
      sub_26B8EACD8(v25, &qword_280426AA0, &qword_26B9B3C60);
    }

    goto LABEL_11;
  }

  v36 = v43;
  (*(v32 + 32))(v43, v25, v31);
  (*(v32 + 56))(v36, 0, 1, v31);
  v34 = v36;
  a5 = v45;
LABEL_11:
  sub_26B9AC034();
  v37 = *(v31 - 8);
  if ((*(v37 + 48))(v34, 1, v31) == 1)
  {
    sub_26B8EACD8(v34, &qword_280426AA0, &qword_26B9B3C60);
    a1 = 0;
    a2 = 0;
  }

  else
  {
    a1 = sub_26B9AC024();
    a2 = v38;
    (*(v37 + 8))(v34, v31);
  }

  LOBYTE(a6) = v46;
  a4 = v44;
  a3 = v47;
LABEL_15:
  *a7 = a1;
  a7[1] = a2;
  v39 = type metadata accessor for TypedValueResultBuilder.Config(0);
  sub_26B923680(a3, a7 + v39[5], &qword_280426228, &unk_26B9B08A0);
  result = sub_26B923680(a4, a7 + v39[6], &qword_280426288, &qword_26B9B0980);
  v41 = a7 + v39[7];
  *v41 = a5;
  v41[8] = a6;
  return result;
}

BOOL sub_26B96503C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26B9AC4C4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26B9AC4C4();
  v5 = [v3 integerForKey_];

  return v5 == 1;
}

uint64_t sub_26B965110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D8, &qword_26B9B3A50);
  v0 = sub_26B9ABF24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B9AF300;
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000013;
  v5[3] = 0x800000026B9B8030;
  *(v4 + v3) = v5;
  v5[4] = 0xD000000000000010;
  v5[5] = 0x800000026B9B9C80;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x277D72D28], v0);
  qword_28042F398 = v4;
  return result;
}

uint64_t sub_26B965240(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_presentationOverride;
  *(v7 + v8) = sub_26B96503C();
  v9 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
  v10 = sub_26B9ABE84();
  (*(*(v10 - 8) + 32))(v7 + v9, a1, v10);
  sub_26B96CD44(a2, v7 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  return v7;
}

uint64_t sub_26B965300(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_presentationOverride;
  *(v2 + v5) = sub_26B96503C();
  v6 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
  v7 = sub_26B9ABE84();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  sub_26B96CD44(a2, v2 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  return v2;
}

uint64_t sub_26B9653AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26B9653D0, 0, 0);
}

uint64_t sub_26B9653D0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v2 = sub_26B9ABE84();
  *(v0 + 40) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 48) = v3;
  v5 = *(v3 + 72);
  v6 = *(v4 + 80);
  *(v0 + 80) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 56) = v8;
  *(v8 + 16) = xmmword_26B9AF300;
  (*(v4 + 16))(v8 + v7, v1, v2);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_26B96553C;
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);

  return sub_26B965780(v8, v10);
}

uint64_t sub_26B96553C(uint64_t a1)
{
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(v5 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26B9656D8, 0, 0);
  }

  else
  {
    v7 = *(v5 + 48);
    v6 = *(v5 + 56);
    v8 = *(v5 + 40);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    swift_setDeallocating();
    (*(v7 + 8))(v6 + v9, v8);
    swift_deallocClassInstance();
    v10 = *(v5 + 8);

    return v10(a1);
  }
}

uint64_t sub_26B9656D8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();
  v5 = *(v0 + 8);
  v6 = *(v0 + 72);

  return v5();
}

uint64_t sub_26B965780(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_26B965824;

  return sub_26B965EEC(a1, a2);
}

uint64_t sub_26B965824(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_26B965924, 0, 0);
}

uint64_t sub_26B965924()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0[4];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v11 = v0[4];
    }

    result = sub_26B9ACB44();
    v2 = v0[4];
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[5] = v3;
  v0[6] = result;
  v0[7] = v1;
  if (result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D686B00](0);
    }

    else
    {
      if (!*(v3 + 16))
      {
        __break(1u);
        return result;
      }

      v5 = *(v2 + 32);
      sub_26B9AAAE4();
    }

    v0[8] = v5;
    v0[9] = 1;
    v6 = *(*v5 + 120);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_26B965AFC;

    return v12();
  }

  else
  {

    v9 = v0[1];
    v10 = v0[7];

    return v9(v10);
  }
}

uint64_t sub_26B965AFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[4];

    v9 = sub_26B965E88;
  }

  else
  {
    v4[12] = a1;
    v9 = sub_26B965C38;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_26B965C38()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x26D6865A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    v3 = v0[8];
    sub_26B9AC774();

    v4 = v0[9];
    v0[7] = v0[2];
    if (v4 != v0[6])
    {
LABEL_11:
      v11 = v0[4];
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D686B00](v4);
      }

      else
      {
        if (v4 >= *(v0[5] + 16))
        {
          goto LABEL_20;
        }

        v12 = *(v11 + 8 * v4 + 32);
        sub_26B9AAAE4();
      }

      v0[8] = v12;
      v0[9] = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        v13 = *(*v12 + 120);
        v17 = (v13 + *v13);
        v14 = v13[1];
        v15 = swift_task_alloc();
        v0[10] = v15;
        *v15 = v0;
        v15[1] = sub_26B965AFC;

        v17();
        return;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }
  }

  else
  {
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[6];

    if (v6 != v7)
    {
      v4 = v0[9];
      goto LABEL_11;
    }
  }

  v8 = v0[4];

  v9 = v0[1];
  v10 = v0[7];

  v9(v10);
}

uint64_t sub_26B965E88()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_26B965EEC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_26B965F10, 0, 0);
}

uint64_t sub_26B965F10()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = *(sub_26B9ABE84() - 8);
    v4 = *(v3 + 80);
    *(v0 + 120) = v4;
    v5 = (v4 + 32) & ~v4;
    v6 = MEMORY[0x277D84F90];
    v7 = *(v3 + 72);
    *(v0 + 88) = 0;
    *(v0 + 96) = v6;
    *(v0 + 80) = v7;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = sub_26B966064;
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);

    return sub_26B9664D8(v1 + v5, v9);
  }

  else
  {
    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_26B966064(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_26B966164, 0, 0);
}

uint64_t sub_26B966164()
{
  v1 = *(v0 + 112);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v36 = *(v0 + 112);
    }

    v3 = sub_26B9ACB44();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 96);
  v5 = v4 >> 62;
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = result + v3;
    if (!__OFADD__(result, v3))
    {
      goto LABEL_5;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v4 < 0)
  {
    v37 = *(v0 + 96);
  }

  result = sub_26B9ACB44();
  v7 = result + v3;
  if (__OFADD__(result, v3))
  {
    goto LABEL_44;
  }

LABEL_5:
  v8 = *(v0 + 96);
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (result)
  {
    if (!v5)
    {
      v9 = v4 & 0xFFFFFFFFFFFFFF8;
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v10 >= v7)
      {
        v11 = *(v0 + 96);
        v12 = *(v9 + 16);
        if (v2)
        {
          goto LABEL_9;
        }

LABEL_28:
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_12;
        }

        goto LABEL_29;
      }

      goto LABEL_17;
    }
  }

  else if (!v5)
  {
    v9 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v9 + 16);
    goto LABEL_27;
  }

  v26 = *(v0 + 96);
  if (v4 < 0)
  {
    v27 = *(v0 + 96);
  }

  sub_26B9ACB44();
LABEL_27:
  v28 = *(v0 + 96);
  result = sub_26B9ACC44();
  v11 = result;
  v9 = result & 0xFFFFFFFFFFFFFF8;
  v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_28;
  }

LABEL_9:
  v13 = *(v0 + 112);
  if (v1 < 0)
  {
    v14 = *(v0 + 112);
  }

  result = sub_26B9ACB44();
  v15 = result;
  if (result)
  {
LABEL_12:
    if (v10 - v12 >= v3)
    {
      if (v2)
      {
        if (v15 < 1)
        {
LABEL_48:
          __break(1u);
          return result;
        }

        sub_26B8F7938(&qword_280426AB0, &qword_280426AA8, &unk_26B9B3C90);
        for (i = 0; i != v15; ++i)
        {
          v18 = *(v0 + 112);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AA8, &unk_26B9B3C90);
          v19 = sub_26B96C714((v0 + 16), i, v18);
          v21 = *v20;
          sub_26B9AAAE4();
          (v19)(v0 + 16, 0);
          *(v9 + 8 * v12 + 32 + 8 * i) = v21;
        }
      }

      else
      {
        type metadata accessor for TypedValueResultBuilder(0);
        swift_arrayInitWithCopy();
      }

      v22 = *(v0 + 112);

      if (v3 <= 0)
      {
        goto LABEL_30;
      }

      v23 = *(v9 + 16);
      v24 = __OFADD__(v23, v3);
      v25 = v23 + v3;
      if (!v24)
      {
        *(v9 + 16) = v25;
        goto LABEL_30;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_29:
  v29 = *(v0 + 112);

  if (v3 > 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_30:
  v30 = *(v0 + 88) + 1;
  if (v30 == *(v0 + 72))
  {
    v31 = *(v0 + 8);

    return v31(v11);
  }

  else
  {
    *(v0 + 88) = v30;
    *(v0 + 96) = v11;
    v32 = *(v0 + 48) + ((*(v0 + 120) + 32) & ~*(v0 + 120)) + *(v0 + 80) * v30;
    v33 = swift_task_alloc();
    *(v0 + 104) = v33;
    *v33 = v0;
    v33[1] = sub_26B966064;
    v34 = *(v0 + 56);
    v35 = *(v0 + 64);

    return sub_26B9664D8(v32, v34);
  }
}

uint64_t sub_26B9664D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = sub_26B9ABC94();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v9 = sub_26B9ABE84();
  v3[12] = v9;
  v10 = *(v9 - 8);
  v3[13] = v10;
  v11 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B96664C, 0, 0);
}

uint64_t sub_26B96664C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[2];
  v5 = *(v3 + 16);
  v0[16] = v5;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277D729E0])
  {
    v6 = v0[15];
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[5];
    v11 = v0[3];
    (*(v0[13] + 96))(v6, v0[12]);
    v0[18] = *v6;
    v12 = swift_projectBox();
    v13 = *(v9 + 16);
    v13(v7, v12, v8);
    v14 = v11 + *(v10 + 28);
    v15 = *(v14 + 8);
    if (*(v14 + 8) || (v16 = v13, v17 = v0[11], v18 = *(sub_26B9ABC84() + 16), , v18 < 2))
    {
      v36 = v0[11];
      sub_26B95C6A0(v0[3], v0[6]);
      v37 = *(sub_26B9ABC84() + 16);

      if (v15 == 1 && v37 >= 2)
      {
        v39 = v0[6] + *(v10 + 28);
        *v39 = 1;
        *(v39 + 8) = 1;
      }

      v40 = v0[11];
      v41 = sub_26B9ABC84();
      v0[19] = v41;
      v42 = swift_task_alloc();
      v0[20] = v42;
      *v42 = v0;
      v42[1] = sub_26B966A40;
      v43 = v0[6];
      v44 = v0[4];

      return sub_26B965EEC(v41, v43);
    }

    else
    {
      v19 = v16;
      v20 = v0[11];
      v49 = v0[14];
      v50 = v0[12];
      v21 = v0[9];
      v22 = v0[10];
      v23 = v0[7];
      v48 = v0[3];
      v46 = v0[8];
      v47 = v0[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_26B9B1290;
      type metadata accessor for CollectionTypedValueResultBuilder();
      v19(v22, v20, v46);
      v5(v49, v47, v50);
      sub_26B95C6A0(v48, v23);
      *(v45 + 32) = sub_26B95EF58(v22, v49, v23);
      (*(v21 + 8))(v20, v46);

      v25 = v0[14];
      v24 = v0[15];
      v27 = v0[10];
      v26 = v0[11];
      v29 = v0[6];
      v28 = v0[7];

      v30 = v0[1];

      return v30(v45);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v32 = swift_allocObject();
    v0[22] = v32;
    *(v32 + 16) = xmmword_26B9B1290;
    v33 = swift_task_alloc();
    v0[23] = v33;
    *v33 = v0;
    v33[1] = sub_26B966C50;
    v35 = v0[2];
    v34 = v0[3];

    return sub_26B966EC0(v34);
  }
}

uint64_t sub_26B966A40(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_26B966B60, 0, 0);
}

uint64_t sub_26B966B60()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  sub_26B960838(v0[6], type metadata accessor for TypedValueResultBuilder.Config);
  (*(v4 + 8))(v2, v3);

  v5 = v0[21];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[10];
  v8 = v0[11];
  v11 = v0[6];
  v10 = v0[7];

  v12 = v0[1];

  return v12(v5);
}

uint64_t sub_26B966C50(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_26B966D50, 0, 0);
}

uint64_t sub_26B966D50()
{
  v1 = *(v0 + 192);
  if (!v1)
  {
    v2 = *(v0 + 136);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    v6 = *(v0 + 56);
    v7 = *(v0 + 24);
    (*(v0 + 128))(v3, *(v0 + 16), v5);
    sub_26B95C6A0(v7, v6);
    v8 = type metadata accessor for TypedValueResultBuilder(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v1 = swift_allocObject();
    v11 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_presentationOverride;
    *(v1 + v11) = sub_26B96503C();
    (*(v4 + 32))(v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue, v3, v5);
    sub_26B96CD44(v6, v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  }

  v12 = *(v0 + 120);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  *(*(v0 + 176) + 32) = v1;
  (*(v14 + 8))(v12, v13);
  v15 = *(v0 + 176);
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);

  v22 = *(v0 + 8);

  return v22(v15);
}

uint64_t sub_26B966EC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for TypedValueResultBuilder.Config(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_26B9ABD44();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_26B9ABE44();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_26B9ABE84();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B96707C, 0, 0);
}

uint64_t sub_26B96707C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v3 + 16);
  v4(v1, v0[3], v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277D72A58])
  {
    v6 = v0[15];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    (*(v0[13] + 96))(v6, v0[12]);
    v0[16] = *v6;
    v10 = swift_projectBox();
    (*(v8 + 16))(v7, v10, v9);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_26B9673B4;
    v12 = v0[11];
    v13 = v0[2];
    v14 = v0[3];

    return sub_26B96B9F4(v12, v13);
  }

  else
  {
    v16 = v0[15];
    if (v5 == *MEMORY[0x277D72A38])
    {
      v38 = v0[14];
      v17 = v0[12];
      v19 = v0[7];
      v18 = v0[8];
      v21 = v0[5];
      v20 = v0[6];
      v22 = v0[3];
      v36 = v0[2];
      v37 = v0[4];
      (*(v0[13] + 96))(v16, v17);
      v0[19] = *v16;
      v23 = swift_projectBox();
      v24 = *(v20 + 16);
      v24(v18, v23, v21);
      type metadata accessor for AppEntityTypedValueResultBuilder();
      v24(v19, v18, v21);
      v4(v38, v22, v17);
      sub_26B95C6A0(v36, v37);
      v25 = swift_task_alloc();
      v0[20] = v25;
      *v25 = v0;
      v25[1] = sub_26B967584;
      v26 = v0[14];
      v27 = v0[7];
      v28 = v0[4];

      return sub_26B95B3B8(v27, v26, v28);
    }

    else
    {
      (*(v0[13] + 8))(v0[15], v0[12]);
      v30 = v0[14];
      v29 = v0[15];
      v31 = v0[11];
      v33 = v0[7];
      v32 = v0[8];
      v34 = v0[4];

      v35 = v0[1];

      return v35(0);
    }
  }
}

uint64_t sub_26B9673B4(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_26B9674B4, 0, 0);
}

uint64_t sub_26B9674B4()
{
  v1 = v0[16];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];

  v9 = v0[1];

  return v9(v2);
}

uint64_t sub_26B967584(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_26B967684, 0, 0);
}

uint64_t sub_26B967684()
{
  v1 = v0[21];
  v2 = v0[19];
  (*(v0[6] + 8))(v0[8], v0[5]);

  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];

  v9 = v0[1];

  return v9(v1);
}

uint64_t sub_26B967754()
{
  v1[2] = v0;
  v2 = sub_26B9AB1F4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B967814, 0, 0);
}

uint64_t sub_26B967814()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  (*(*v3 + 128))();
  sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
  v6 = sub_26B9AC6E4();

  [v5 setCardSections_];

  sub_26B9AA884();
  sub_26B9AB1C4();
  (*(v2 + 8))(v1, v4);
  v7 = [objc_allocWithZone(MEMORY[0x277D65850]) init];
  [v7 setInlineCard_];
  v8 = sub_26B9AC4C4();

  [v7 setIdentifier_];

  [v7 setUsesTopHitDisplay_];

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_26B967A04()
{
  v1 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v2 = *(v1 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + 8);
  if (v2 == 1 && ((*(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_presentationOverride) & 1) != 0 || sub_26B967AFC()))
  {
    goto LABEL_6;
  }

  v3 = (*(*v0 + 144))();
  v4 = v3;
  if (v2 == 1)
  {
    if (v3)
    {
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      result = swift_allocObject();
      *(result + 16) = xmmword_26B9B1290;
      *(result + 32) = v4;
      return result;
    }

LABEL_6:
    v4 = sub_26B96C7BC();
    goto LABEL_8;
  }

  if (v3)
  {
    goto LABEL_8;
  }

  return MEMORY[0x277D84F90];
}

BOOL sub_26B967AFC()
{
  v1 = v0;
  v2 = sub_26B9ABF24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B9ABD44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26B9ABE84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, v1, v12);
  if ((*(v13 + 88))(v16, v12) == *MEMORY[0x277D72A38])
  {
    (*(v13 + 96))(v16, v12);
    v17 = *v16;
    v18 = swift_projectBox();
    (*(v8 + 16))(v11, v18, v7);
    if (qword_28042F390 != -1)
    {
      swift_once();
    }

    v19 = qword_28042F398;
    sub_26B9ABCF4();
    v20 = sub_26B96C608(v6, v19);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    return 0;
  }

  return v20;
}

id sub_26B967DE8()
{
  v1 = (*(*v0 + 160))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277D4C328]) init];
  if ((*(*v0 + 168))([v3 setTitle_]))
  {
    sub_26B9294B8(0, &qword_280426FE0, 0x277D4C598);
    v4 = sub_26B9AC6E4();
  }

  else
  {
    v4 = 0;
  }

  [v3 setDescriptions_];

  v6 = sub_26B968B7C();
  [v3 setThumbnail_];

  v7 = *(*v0 + 200);
  v5 = v3;
  v8 = v7();
  [v5 setCommand_];

  if ((*(*v0 + 208))())
  {
    sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
    v9 = sub_26B9AC6E4();
  }

  else
  {
    v9 = 0;
  }

  [v5 setButtonItems_];

  if ((*(*v0 + 248))([v5 setButtonItemsAreTrailing_]))
  {
    sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
    v10 = sub_26B9AC6E4();
  }

  else
  {
    v10 = 0;
  }

  [v5 setPreviewButtonItems_];

  return v5;
}

id sub_26B968070()
{
  v1 = *v0;
  v2 = sub_26B968190();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    sub_26B95FAC8(1);
  }

  (*(v1 + 280))();

  v6 = sub_26B9AC4C4();

  v7 = [objc_opt_self() textWithString_];

  if (v7)
  {
    [v7 setMaxLines_];
  }

  return v7;
}

uint64_t sub_26B968190()
{
  v1 = sub_26B9ABCC4();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9ABE84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v40 - v10);
  v12 = sub_26B9ABE44();
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - v18;
  v20 = sub_26B9AC1D4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9ABE64();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_26B8EACD8(v19, &qword_2804262A0, &unk_26B9B3640);
    v25 = *(v5 + 16);
    v25(v11, v0, v4);
    v26 = *(v5 + 88);
    if (v26(v11, v4) == *MEMORY[0x277D72A58])
    {
      (*(v5 + 96))(v11, v4);
      v27 = *v11;
      v28 = swift_projectBox();
      v30 = v44;
      v29 = v45;
      (*(v44 + 16))(v15, v28, v45);

      v31 = sub_26B9630A4();
      (*(v30 + 8))(v15, v29);
    }

    else
    {
      v32 = v11;
      v33 = *(v5 + 8);
      v33(v32, v4);
      v25(v9, v0, v4);
      if (v26(v9, v4) == *MEMORY[0x277D729E8])
      {
        (*(v5 + 96))(v9, v4);
        v34 = *v9;
        v35 = swift_projectBox();
        v37 = v41;
        v36 = v42;
        v38 = v43;
        (*(v42 + 16))(v41, v35, v43);

        v31 = sub_26B9ABCA4();
        (*(v36 + 8))(v37, v38);
      }

      else
      {
        v33(v9, v4);
        return 0;
      }
    }
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    v31 = sub_26B9AC174();
    (*(v21 + 8))(v24, v20);
  }

  return v31;
}

uint64_t sub_26B968670()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AB8, &qword_26B9B3CC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_26B9AC1B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v15 = v14 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28);
  if (!*(v15 + 8))
  {
    v19 = [objc_opt_self() localizedStringForParameterSuggestionContext_];
    sub_26B9AC504();

    v20 = sub_26B9AC4C4();

    v21 = [objc_opt_self() textWithString_];

    if (v21)
    {
      [v21 setMaxLines_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      result = swift_allocObject();
      *(result + 16) = xmmword_26B9B1290;
      *(result + 32) = v21;
      return result;
    }

    return 0;
  }

  sub_26B9ABE64();
  v16 = sub_26B9AC1D4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v4, 1, v16) == 1)
  {
    sub_26B8EACD8(v4, &qword_2804262A0, &unk_26B9B3640);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AC0, &qword_26B9B3CC8);
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
LABEL_7:
    sub_26B8EACD8(v8, &qword_280426AB8, &qword_26B9B3CC0);
    return 0;
  }

  sub_26B9AC1C4();
  (*(v17 + 8))(v4, v16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AC0, &qword_26B9B3CC8);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v8, 1, v23) == 1)
  {
    goto LABEL_7;
  }

  if ((*(v24 + 88))(v8, v23) != *MEMORY[0x277D731E0])
  {
    (*(v24 + 8))(v8, v23);
    return 0;
  }

  (*(v24 + 96))(v8, v23);
  (*(v10 + 32))(v13, v8, v9);
  sub_26B9AC1A4();
  v25 = sub_26B9AC4C4();

  v26 = [objc_opt_self() textWithString_];

  if (!v26)
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  [v26 setMaxLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26B9B1290;
  *(v27 + 32) = v26;
  (*(v10 + 8))(v13, v9);
  return v27;
}

void *sub_26B968B7C()
{
  v1 = (*(*v0 + 184))();
  if (v1)
  {
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_26B9294B8(0, &unk_280426B10, 0x277D4C1D0);
    v3 = swift_getObjCClassFromMetadata();
    v4 = v1;
    if (([ObjCClassFromMetadata isSubclassOfClass_] & 1) == 0)
    {
      v5 = (*(*v0 + 192))(v4);
      [v4 setBadgingImage_];

      v4 = v5;
    }
  }

  return v1;
}

uint64_t *sub_26B968C74()
{
  v1 = v0;
  v2 = sub_26B9AB414();
  v217 = *(v2 - 8);
  v218 = v2;
  v3 = *(v217 + 64);
  MEMORY[0x28223BE20](v2);
  v198 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_26B9ABE44();
  v196 = *(v197 - 8);
  v5 = *(v196 + 64);
  v6 = MEMORY[0x28223BE20](v197);
  v195 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v206 = &v181 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AC8, &qword_26B9B3CD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v207 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v188 = &v181 - v14;
  MEMORY[0x28223BE20](v13);
  v216 = &v181 - v15;
  v187 = sub_26B9AB884();
  v186 = *(v187 - 8);
  v16 = *(v186 + 64);
  MEMORY[0x28223BE20](v187);
  v185 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AD0, &qword_26B9B3CD8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v213 = &v181 - v20;
  v21 = sub_26B9ABBB4();
  v22 = *(v21 - 8);
  v214 = v21;
  v215 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v201 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_26B9ABC94();
  v203 = *(v204 - 8);
  v25 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v202 = &v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_26B9ABD04();
  v193 = *(v194 - 8);
  v27 = *(v193 + 64);
  MEMORY[0x28223BE20](v194);
  v192 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_26B9ABE84();
  v227 = *(v229 - 8);
  v29 = *(v227 + 64);
  v30 = MEMORY[0x28223BE20](v229);
  v210 = &v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v223 = &v181 - v33;
  MEMORY[0x28223BE20](v32);
  v225 = &v181 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262C8, &qword_26B9B3CE0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v219 = &v181 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v222 = (&v181 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v209 = &v181 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v181 - v43;
  v183 = sub_26B9AB104();
  v182 = *(v183 - 8);
  v45 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v184 = &v181 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_26B9AC194();
  v189 = *(v190 - 8);
  v47 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v191 = &v181 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_26B9AC154();
  v199 = *(v200 - 8);
  v49 = *(v199 + 64);
  v50 = MEMORY[0x28223BE20](v200);
  v220 = (&v181 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v50);
  v208 = &v181 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = &v181 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AD8, &qword_26B9B3CE8);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v60 = &v181 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AE0, &unk_26B9B3CF0);
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  v64 = MEMORY[0x28223BE20](v61);
  v66 = &v181 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v211 = &v181 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v69 = *(*(v68 - 8) + 64);
  v70 = MEMORY[0x28223BE20](v68 - 8);
  v212 = &v181 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v73 = &v181 - v72;
  v74 = (v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config);
  v221 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v75 = *(v221 + 28);
  v228 = v74;
  LODWORD(v75) = *(v74 + v75 + 8);
  v224 = v44;
  if (v75 != 1)
  {
    goto LABEL_4;
  }

  sub_26B9236E8(v228 + *(v221 + 20), v73, &qword_280426228, &unk_26B9B08A0);
  v76 = sub_26B9AB914();
  v77 = *(v76 - 8);
  if ((*(v77 + 48))(v73, 1, v76) == 1)
  {
    sub_26B8EACD8(v73, &qword_280426228, &unk_26B9B08A0);
    goto LABEL_4;
  }

  v205 = v1;
  v95 = sub_26B9AB8E4();
  v97 = v96;
  (*(v77 + 8))(v73, v76);
  if (v95 != 0xD00000000000001FLL || 0x800000026B9B7D90 != v97)
  {
    v115 = sub_26B9ACEB4();

    v44 = v224;
    v1 = v205;
    if (v115)
    {
      return 0;
    }

LABEL_4:
    v226 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
    sub_26B9ABE64();
    v78 = sub_26B9AC1D4();
    v79 = *(v78 - 8);
    if ((*(v79 + 48))(v56, 1, v78) == 1)
    {
      sub_26B8EACD8(v56, &qword_2804262A0, &unk_26B9B3640);
      (*(v62 + 56))(v60, 1, 1, v61);
LABEL_7:
      sub_26B8EACD8(v60, &qword_280426AD8, &qword_26B9B3CE8);
LABEL_8:
      v220 = 0;
LABEL_9:
      v80 = v225;
      goto LABEL_10;
    }

    sub_26B9AC164();
    (*(v79 + 8))(v56, v78);
    if ((*(v62 + 48))(v60, 1, v61) == 1)
    {
      goto LABEL_7;
    }

    v99 = v211;
    (*(v62 + 32))(v211, v60, v61);
    (*(v62 + 16))(v66, v99, v61);
    if ((*(v62 + 88))(v66, v61) != *MEMORY[0x277D731E0])
    {
      v116 = *(v62 + 8);
      v116(v99, v61);
      v116(v66, v61);
      goto LABEL_8;
    }

    (*(v62 + 96))(v66, v61);
    v100 = v199;
    v101 = v208;
    v102 = v200;
    (*(v199 + 32))(v208, v66, v200);
    v103 = v220;
    (*(v100 + 16))(v220, v101, v102);
    v104 = (*(v100 + 88))(v103, v102);
    if (v104 == *MEMORY[0x277D73208])
    {
      (*(v100 + 96))(v103, v102);
      v105 = v103;
      v106 = *v103;
      v107 = v105[1];
      v108 = [objc_allocWithZone(MEMORY[0x277D4C3B0]) init];
      v109 = sub_26B9AB114();
      v220 = v108;
      [v108 setImageData_];
      sub_26B922394(v106, v107);

      (*(v100 + 8))(v208, v102);
      (*(v62 + 8))(v211, v61);
      goto LABEL_9;
    }

    v80 = v225;
    if (v104 == *MEMORY[0x277D73218])
    {
      (*(v100 + 96))(v103, v102);
      (*(v189 + 32))(v191, v103, v190);
      v164 = [objc_allocWithZone(MEMORY[0x277D4C688]) init];
      sub_26B9AC184();
      v165 = sub_26B9AC4C4();

      [v164 setSymbolName_];

      v220 = v164;
      [v164 setPunchThroughBackground_];
      (*(v189 + 8))(v191, v190);
    }

    else
    {
      if (v104 != *MEMORY[0x277D73210])
      {
        v180 = *(v100 + 8);
        v180(v101, v102);
        (*(v62 + 8))(v99, v61);
        v180(v220, v102);
        v220 = 0;
LABEL_10:
        v81 = v228[1];
        v211 = *v228;
        v82 = sub_26B9ABF24();
        v83 = *(v82 - 8);
        v84 = *(v83 + 56);
        v84(v44, 1, 1, v82);
        v85 = v229;
        v225 = v81;
        if (v81)
        {
          goto LABEL_26;
        }

        v86 = v227;
        (*(v227 + 16))(v80, v1 + v226, v229);
        v87 = (*(v86 + 88))(v80, v85);
        if (v87 == *MEMORY[0x277D729E0])
        {
          (*(v86 + 96))(v80, v85);
          v88 = *v80;
          v89 = swift_projectBox();
          v90 = v203;
          v91 = v202;
          v92 = v204;
          (*(v203 + 16))(v202, v89, v204);
          v205 = v1;
          v93 = v209;
          sub_26B9ABC74();
          (*(v90 + 8))(v91, v92);
          sub_26B8EACD8(v44, &qword_2804262C8, &qword_26B9B3CE0);
          v84(v93, 0, 1, v82);
          v94 = v93;
          v1 = v205;
          sub_26B923680(v94, v44, &qword_2804262C8, &qword_26B9B3CE0);
        }

        else
        {
          if (v87 != *MEMORY[0x277D729F8])
          {
            (*(v227 + 8))(v80, v85);
LABEL_26:
            v117 = v222;
            sub_26B9236E8(v44, v222, &qword_2804262C8, &qword_26B9B3CE0);
            if ((*(v83 + 48))(v117, 1, v82) == 1)
            {
              v118 = v1;
            }

            else
            {
              v119 = v219;
              sub_26B9236E8(v117, v219, &qword_2804262C8, &qword_26B9B3CE0);
              v118 = v1;
              if ((*(v83 + 88))(v119, v82) == *MEMORY[0x277D72D28])
              {
                (*(v83 + 96))(v119, v82);
                v120 = *(*v119 + 24);
                v211 = *(*v119 + 16);
                v225 = v120;
              }

              else
              {
                v121 = *(v83 + 8);

                v121(v119, v82);
              }

              v85 = v229;
            }

            sub_26B8EACD8(v117, &qword_2804262C8, &qword_26B9B3CE0);
            v122 = v227;
            v123 = *(v227 + 16);
            v124 = v223;
            v123(v223, v118 + v226, v85);
            v125 = *(v122 + 88);
            v126 = v125(v124, v85);
            v127 = v85;
            v128 = *(v122 + 8);
            v128(v124, v127);
            v98 = v220;
            if (v220)
            {

LABEL_34:
              v129 = v224;
LABEL_35:
              sub_26B8EACD8(v129, &qword_2804262C8, &qword_26B9B3CE0);
              return v98;
            }

            v223 = v125;
            v220 = v128;
            v205 = v118;
            v131 = *MEMORY[0x277D72A58];
            v132 = v212;
            sub_26B9236E8(v228 + *(v221 + 20), v212, &qword_280426228, &unk_26B9B08A0);
            v133 = sub_26B9AB914();
            v134 = *(v133 - 8);
            v135 = (*(v134 + 48))(v132, 1, v133);
            v222 = v123;
            if (v135 == 1)
            {
              sub_26B8EACD8(v132, &qword_280426228, &unk_26B9B08A0);
              v136 = v213;
              (*(v215 + 56))(v213, 1, 1, v214);
              v137 = v226;
            }

            else
            {
              v138 = v131;
              v139 = v213;
              sub_26B9AB894();
              v136 = v139;
              v131 = v138;
              v140 = v132;
              v137 = v226;
              (*(v134 + 8))(v140, v133);
              v142 = v214;
              v141 = v215;
              if ((*(v215 + 48))(v136, 1, v214) != 1)
              {
                v162 = v136;
                v163 = v201;
                (*(v141 + 32))(v201, v162, v142);
                if (v126 != v131)
                {
                  v98 = [objc_allocWithZone(MEMORY[0x277D4C620]) init];
                  v170 = v185;
                  (*(v141 + 16))(v185, v163, v142);
                  v171 = v186;
                  v172 = v187;
                  (*(v186 + 104))(v170, *MEMORY[0x277D721E8], v187);
                  v173 = sub_26B9AB874();
                  v175 = v174;
                  (*(v171 + 8))(v170, v172);
                  if (v175 >> 60 == 15)
                  {
                    v176 = 0;
                  }

                  else
                  {
                    v176 = sub_26B9AB114();
                    sub_26B96C918(v173, v175);
                  }

                  v179 = v224;
                  [v98 setImageData_];

                  (*(v215 + 8))(v201, v142);

                  v129 = v179;
                  goto LABEL_35;
                }

                (*(v141 + 8))(v163, v142);
LABEL_41:
                v143 = v229;
                v144 = v210;
                if (v225)
                {
                  v145 = HIBYTE(v225) & 0xF;
                  if ((v225 & 0x2000000000000000) == 0)
                  {
                    v145 = v211 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v145 && v126 != v131)
                  {
                    v98 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
                    v146 = sub_26B9AC4C4();

                    [v98 setBundleIdentifier_];

                    goto LABEL_34;
                  }
                }

                v147 = v131;
                v148 = *(v217 + 56);
                v148(v216, 1, 1, v218);
                v222(v144, v205 + v137, v143);
                if ((v223)(v144, v143) == v147)
                {
                  (*(v227 + 96))(v144, v143);
                  v149 = *v144;
                  v150 = swift_projectBox();
                  v151 = v196;
                  v152 = *(v196 + 16);
                  v153 = v206;
                  v154 = v197;
                  v152(v206, v150, v197);
                  v155 = v195;
                  v152(v195, v153, v154);
                  v156 = (*(v151 + 88))(v155, v154);
                  v157 = *(v151 + 8);
                  v158 = v224;
                  if (v156 == *MEMORY[0x277D729B8] || v156 == *MEMORY[0x277D72968])
                  {
                    v157(v155, v154);
                    v166 = v188;
                    sub_26B9AB404();
                    v157(v206, v154);
                    v161 = v216;
                    sub_26B8EACD8(v216, &qword_280426AC8, &qword_26B9B3CD0);
                    v160 = v218;
                    v148(v166, 0, 1, v218);
                    sub_26B923680(v166, v161, &qword_280426AC8, &qword_26B9B3CD0);

                    v159 = v217;
                  }

                  else
                  {
                    v157(v206, v154);
                    v157(v155, v154);

                    v159 = v217;
                    v160 = v218;
                    v161 = v216;
                  }
                }

                else
                {
                  (v220)(v144, v143);
                  v159 = v217;
                  v160 = v218;
                  v161 = v216;
                  v158 = v224;
                }

                v167 = v207;
                sub_26B9236E8(v161, v207, &qword_280426AC8, &qword_26B9B3CD0);
                if ((*(v159 + 48))(v167, 1, v160) == 1)
                {
                  sub_26B8EACD8(v161, &qword_280426AC8, &qword_26B9B3CD0);
                  sub_26B8EACD8(v158, &qword_2804262C8, &qword_26B9B3CE0);
                  sub_26B8EACD8(v167, &qword_280426AC8, &qword_26B9B3CD0);
                  return 0;
                }

                v168 = v198;
                (*(v159 + 32))(v198, v167, v160);
                v98 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
                sub_26B9AB3C4();
                v169 = sub_26B9AC4C4();

                [v98 setContentType_];

                (*(v159 + 8))(v168, v160);
                sub_26B8EACD8(v161, &qword_280426AC8, &qword_26B9B3CD0);
                v129 = v158;
                goto LABEL_35;
              }
            }

            sub_26B8EACD8(v136, &qword_280426AD0, &qword_26B9B3CD8);
            goto LABEL_41;
          }

          (*(v227 + 96))(v80, v85);
          v208 = *v80;
          v110 = swift_projectBox();
          v111 = v193;
          v112 = v192;
          v113 = v194;
          (*(v193 + 16))(v192, v110, v194);
          v114 = v209;
          sub_26B9ABCF4();
          (*(v111 + 8))(v112, v113);
          sub_26B8EACD8(v44, &qword_2804262C8, &qword_26B9B3CE0);
          v84(v114, 0, 1, v82);
          sub_26B923680(v114, v44, &qword_2804262C8, &qword_26B9B3CE0);
        }

        v85 = v229;

        goto LABEL_26;
      }

      (*(v100 + 96))(v103, v102);
      (*(v182 + 32))(v184, v103, v183);
      v177 = [objc_allocWithZone(MEMORY[0x277D4C560]) init];
      v178 = sub_26B9AB0A4();
      v220 = v177;
      [v177 setFilePath_];

      (*(v182 + 8))(v184, v183);
    }

    (*(v100 + 8))(v208, v102);
    (*(v62 + 8))(v211, v61);
    goto LABEL_10;
  }

  return 0;
}

id sub_26B96A848()
{
  v1 = type metadata accessor for ContextualTypedValue();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  if (*(v5 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + 8) == 1)
  {
    v6 = (*(*v0 + 224))();
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_26B9B1290;
      *(v7 + 32) = v6;
      v6 = [objc_allocWithZone(MEMORY[0x277D65940]) init];
      sub_26B9294B8(0, &qword_280426A48, 0x277D4C2E0);
      v8 = sub_26B9AC6E4();

      [v6 setCopyableItems_];
    }
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D4C380]) init];
    v9 = sub_26B9AAFB4();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_26B9AAFA4();
    sub_26B96B058(v4);
    sub_26B96CDAC(&qword_280426AE8, type metadata accessor for ContextualTypedValue);
    v12 = sub_26B9AAF94();
    v13 = v4;
    v15 = v14;
    sub_26B960838(v13, type metadata accessor for ContextualTypedValue);

    v16 = sub_26B9AB114();
    sub_26B922394(v12, v15);
    [v6 setEncodedTypedValue_];
  }

  return v6;
}

uint64_t sub_26B96AAEC()
{
  v1 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  if (*(v1 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + 8) != 1)
  {
    return 0;
  }

  result = (*(*v0 + 224))();
  if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26B9B1290;
    *(v4 + 32) = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D4C2D8]) init];
    sub_26B9294B8(0, &qword_280426A48, 0x277D4C2E0);
    v6 = sub_26B9AC6E4();

    [v5 setCopyableItems_];

    v7 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    [v7 setCommand_];
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26B9B1290;
    *(v8 + 32) = v7;

    return v8;
  }

  return result;
}

id sub_26B96AC6C()
{
  v1 = v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  if (*(v1 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + 8) != 1)
  {
    return 0;
  }

  sub_26B968190();
  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D4C698]) init];
  v4 = sub_26B9AC4C4();

  [v3 setCopyableString_];

  return v3;
}

unint64_t sub_26B96AD2C()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v3 = (*(*v0 + 224))();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26B9B1290;
    *(v5 + 32) = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v7 = [objc_allocWithZone(MEMORY[0x277D4C2D8]) init];
    sub_26B9294B8(0, &qword_280426A48, 0x277D4C2E0);
    v8 = sub_26B9AC6E4();

    [v7 setCopyableItems_];

    [v6 setCommand_];
    v9 = v6;
    MEMORY[0x26D6865A0]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v2 = v20;
  }

  v10 = (*(*v1 + 240))();
  if (v10)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26B9B1290;
    *(v12 + 32) = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v14 = [objc_allocWithZone(MEMORY[0x277D4C610]) init];
    sub_26B9294B8(0, &qword_280426A40, 0x277D4C618);
    v15 = sub_26B9AC6E4();

    [v14 setShareItems_];

    [v13 setCommand_];
    v16 = v13;
    MEMORY[0x26D6865A0]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v2 = v20;
  }

  if (v2 >> 62)
  {
    if (sub_26B9ACB44())
    {
      return v2;
    }

    goto LABEL_11;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

  return v2;
}

uint64_t sub_26B96B058@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABE84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A38, &unk_26B9B3B20);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v17 - v11;
  (*(*v1 + 264))(v10);
  v13 = type metadata accessor for ContextualTypedValue();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) != 1)
  {
    return sub_26B96CD44(v12, a1, type metadata accessor for ContextualTypedValue);
  }

  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue, v3);
  sub_26B9823D8(v19);
  v17[0] = v19[0];
  v17[1] = v19[1];
  v18 = v20;
  v15 = sub_26B97E43C(v7, v17, a1);
  result = (v14)(v12, 1, v13, v15);
  if (result != 1)
  {
    return sub_26B8EACD8(v12, &qword_280426A38, &unk_26B9B3B20);
  }

  return result;
}

uint64_t sub_26B96B290@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABE84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v12 = (v11 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28));
  if (!*(v12 + 8))
  {
    v16 = *v12;
    (*(v4 + 16))(v8, v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue, v3);
    v17 = [objc_opt_self() localizedStringForParameterSuggestionContext_];
    v18 = sub_26B9AC504();
    v20 = v19;

    v21 = 0xED0000746E656D75;
    v22 = 0x636F642E74786574;
    if (v16 != 1)
    {
      v22 = 0;
      v21 = 0;
    }

    if (v16 == 4)
    {
      v23 = 0xD000000000000014;
    }

    else
    {
      v23 = v22;
    }

    if (v16 == 4)
    {
      v24 = 0x800000026B9B9BF0;
    }

    else
    {
      v24 = v21;
    }

    sub_26B97DC64(v18, v20, v23, v24, &v31);

    v28 = v31;
    v29 = v32;
    v30 = v33;
    v25 = a1;
    v26 = v8;
    goto LABEL_16;
  }

  if (*(v12 + 8) != 1)
  {
    (*(v4 + 16))(v10, v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue, v3);
    sub_26B9823D8(&v31);
    v28 = v31;
    v29 = v32;
    v30 = v33;
    v25 = a1;
    v26 = v10;
LABEL_16:
    sub_26B97E43C(v26, &v28, v25);
    v27 = type metadata accessor for ContextualTypedValue();
    return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
  }

  v13 = type metadata accessor for ContextualTypedValue();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

uint64_t sub_26B96B57C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B9AAE74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v34 = a1;
    v35 = a2;
    sub_26B9AAE64();
    sub_26B92C070();
    v10 = sub_26B9ACA54();
    result = (*(v5 + 8))(v8, v4);
    v12 = 0;
    v13 = *(v10 + 16);
    v14 = MEMORY[0x277D84F90];
LABEL_5:
    v15 = (v10 + 40 + 16 * v12);
    while (v13 != v12)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      ++v12;
      v17 = *(v15 - 1);
      v16 = *v15;
      v15 += 2;
      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v34 = v14;
        v33[0] = a1;
        if ((result & 1) == 0)
        {
          result = sub_26B921238(0, *(v14 + 16) + 1, 1);
          v14 = v34;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_26B921238((v19 > 1), v20 + 1, 1);
          v14 = v34;
        }

        *(v14 + 16) = v20 + 1;
        v21 = v14 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v16;
        a1 = v33[0];
        goto LABEL_5;
      }
    }

    sub_26B92B6FC(a1, a2);
    if (v22 && (v23 = sub_26B9AC474(), , (v23 & 1) != 0))
    {
      v24 = 0xE100000000000000;
      v25 = 32;
    }

    else
    {
      v25 = 0;
      v24 = 0xE000000000000000;
    }

    sub_26B92B67C(a1, a2);
    if (v26 && (v27 = sub_26B9AC474(), , (v27 & 1) != 0))
    {
      v28 = 0xE100000000000000;
      v29 = 32;
    }

    else
    {
      v29 = 0;
      v28 = 0xE000000000000000;
    }

    v34 = v25;
    v35 = v24;
    v33[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426788, &qword_26B9B2A70);
    sub_26B8F7938(&qword_280426790, &qword_280426788, &qword_26B9B2A70);
    v30 = sub_26B9AC484();
    v32 = v31;

    MEMORY[0x26D686470](v30, v32);

    MEMORY[0x26D686470](v29, v28);

    return v34;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26B96B8B0()
{
  sub_26B960838(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  v1 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
  v2 = sub_26B9ABE84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_26B96B934()
{
  sub_26B960838(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  v1 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
  v2 = sub_26B9ABE84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26B96B9F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26B9AB104();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_26B9ABE14();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AC8, &qword_26B9B3CD0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = sub_26B9AB414();
  v3[14] = v11;
  v12 = *(v11 - 8);
  v3[15] = v12;
  v13 = *(v12 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v14 = sub_26B9ABDE4();
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v17 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v3[22] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v19 = sub_26B9ABE84();
  v3[24] = v19;
  v20 = *(v19 - 8);
  v3[25] = v20;
  v21 = *(v20 + 64) + 15;
  v3[26] = swift_task_alloc();
  v22 = sub_26B9ABDA4();
  v3[27] = v22;
  v23 = *(v22 - 8);
  v3[28] = v23;
  v24 = *(v23 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v25 = sub_26B9ABE44();
  v3[31] = v25;
  v26 = *(v25 - 8);
  v3[32] = v26;
  v27 = *(v26 + 64) + 15;
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B96BD84, 0, 0);
}

uint64_t sub_26B96BD84()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D72988])
  {
    v5 = v0[33];
    v7 = v0[25];
    v6 = v0[26];
    v9 = v0[23];
    v8 = v0[24];
    v11 = v0[3];
    v10 = v0[4];
    (*(v0[32] + 96))(v5, v0[31]);
    LOBYTE(v5) = *v5;
    type metadata accessor for BoolTypedValueResultBuilder(0);
    (*(v7 + 16))(v6, v10, v8);
    sub_26B95C6A0(v11, v9);
    v113 = sub_26B9629B0(v5, v6, v9);
    goto LABEL_8;
  }

  if (v4 == *MEMORY[0x277D72980])
  {
    v12 = v0[33];
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[23];
    v17 = v0[7];
    v16 = v0[8];
    v19 = v0[5];
    v18 = v0[6];
    v20 = v0[4];
    v109 = v0[3];
    v114 = v0[24];
    (*(v0[32] + 96))(v12, v0[31]);
    (*(v18 + 32))(v16, v12, v19);
    type metadata accessor for URLTypedValueResultBuilder();
    (*(v18 + 16))(v17, v16, v19);
    (*(v14 + 16))(v13, v20, v114);
    sub_26B95C6A0(v109, v15);
    v21 = sub_26B964234(v17, v13, v15);
LABEL_7:
    v113 = v21;
    (*(v18 + 8))(v16, v19);
    goto LABEL_8;
  }

  if (v4 == *MEMORY[0x277D729B0])
  {
    v22 = v0[33];
    v24 = v0[25];
    v23 = v0[26];
    v25 = v0[23];
    v26 = v0[11];
    v16 = v0[12];
    v19 = v0[9];
    v18 = v0[10];
    v27 = v0[4];
    v110 = v0[3];
    v115 = v0[24];
    (*(v0[32] + 96))(v22, v0[31]);
    (*(v18 + 32))(v16, v22, v19);
    type metadata accessor for PersonTypedValueResultBuilder();
    (*(v18 + 16))(v26, v16, v19);
    (*(v24 + 16))(v23, v27, v115);
    sub_26B95C6A0(v110, v25);
    v21 = sub_26B961B74(v26, v23, v25);
    goto LABEL_7;
  }

  if (v4 == *MEMORY[0x277D72998])
  {
    v40 = v0[33];
    v41 = v0[21];
    v42 = v0[18];
    v43 = v0[19];
    v44 = v0[17];
    (*(v0[32] + 96))(v40, v0[31]);
    (*(v43 + 32))(v41, v40, v42);
    sub_26B9AB3E4();
    v45 = sub_26B9ABDD4();
    v46 = [v45 typeIdentifier];

    if (v46)
    {
      v47 = v0[14];
      v48 = v0[15];
      v49 = v0[13];
      sub_26B9AC504();

      sub_26B9AB424();
      if ((*(v48 + 48))(v49, 1, v47) == 1)
      {
        sub_26B8EACD8(v0[13], &qword_280426AC8, &qword_26B9B3CD0);
      }

      else
      {
        v66 = v0[17];
        v67 = v0[14];
        v68 = v0[15];
        v69 = v0[13];
        (*(v68 + 8))(v66, v67);
        (*(v68 + 32))(v66, v69, v67);
      }
    }

    v70 = v0[3];
    v71 = v70 + *(v0[22] + 28);
    if (*(v71 + 8) != 1)
    {
      goto LABEL_23;
    }

    if (*v71)
    {
      goto LABEL_23;
    }

    v72 = v0[16];
    v73 = v0[17];
    v74 = v0[14];
    v75 = v0[15];
    sub_26B9AB3D4();
    v76 = sub_26B9AB3F4();
    v77 = *(v75 + 8);
    v77(v72, v74);
    v70 = v0[3];
    if (v76)
    {
      v78 = v0[25];
      v98 = v0[26];
      v101 = v0[24];
      v80 = v0[20];
      v79 = v0[21];
      v117 = v0[3];
      v82 = v0[18];
      v81 = v0[19];
      v105 = v0[23];
      v83 = v0[16];
      v84 = v0[15];
      v94 = v0[14];
      v95 = v0[17];
      v96 = v0[4];
      type metadata accessor for ImageFileTypedValueResultBuilder(0);
      (*(v81 + 16))(v80, v79, v82);
      (*(v84 + 16))(v83, v95, v94);
      (*(v78 + 16))(v98, v96, v101);
      sub_26B95C6A0(v117, v105);
      v113 = sub_26B96132C(v80, v83, v98, v105);
      v77(v95, v94);
      (*(v81 + 8))(v79, v82);
    }

    else
    {
LABEL_23:
      v85 = v0[25];
      v99 = v0[26];
      v102 = v0[24];
      v86 = v0[20];
      v87 = v0[21];
      v118 = v70;
      v89 = v0[18];
      v88 = v0[19];
      v106 = v0[23];
      v91 = v0[16];
      v90 = v0[17];
      v93 = v0[14];
      v92 = v0[15];
      v97 = v0[4];
      type metadata accessor for FileTypedValueResultBuilder(0);
      (*(v88 + 16))(v86, v87, v89);
      (*(v92 + 16))(v91, v90, v93);
      (*(v85 + 16))(v99, v97, v102);
      sub_26B95C6A0(v118, v106);
      v113 = sub_26B95FE74(v86, v91, v99, v106);
      (*(v92 + 8))(v90, v93);
      (*(v88 + 8))(v87, v89);
    }
  }

  else
  {
    v51 = v0[32];
    v50 = v0[33];
    v52 = v0[31];
    if (v4 == *MEMORY[0x277D72970])
    {
      v53 = v0[29];
      v54 = v0[30];
      v55 = v0[27];
      v56 = v0[28];
      v57 = v0[25];
      v58 = v0[26];
      v59 = v0[23];
      v104 = v53;
      v108 = v0[4];
      v112 = v0[24];
      v116 = v0[3];
      (*(v51 + 96))(v50, v52);
      (*(v56 + 32))(v54, v50, v55);
      type metadata accessor for AppTypedValueResultBuilder();
      (*(v56 + 16))(v104, v54, v55);
      (*(v57 + 16))(v58, v108, v112);
      sub_26B95C6A0(v116, v59);
      v113 = sub_26B95E6BC(v104, v58, v59);
      (*(v56 + 8))(v54, v55);
    }

    else
    {
      v61 = v0[25];
      v60 = v0[26];
      v63 = v0[23];
      v62 = v0[24];
      v65 = v0[3];
      v64 = v0[4];
      type metadata accessor for PrimitiveTypedValueResultBuilder(0);
      (*(v61 + 16))(v60, v64, v62);
      sub_26B95C6A0(v65, v63);
      v113 = sub_26B962840(v60, v63);
      (*(v51 + 8))(v50, v52);
    }
  }

LABEL_8:
  v28 = v0[33];
  v30 = v0[29];
  v29 = v0[30];
  v31 = v0[26];
  v32 = v0[23];
  v34 = v0[20];
  v33 = v0[21];
  v36 = v0[16];
  v35 = v0[17];
  v37 = v0[13];
  v100 = v0[12];
  v103 = v0[11];
  v107 = v0[8];
  v111 = v0[7];

  v38 = v0[1];

  return v38(v113);
}

BOOL sub_26B96C608(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_26B9ABF24() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_26B96CDAC(&qword_2804262F8, MEMORY[0x277D72D58]);
  }

  while ((sub_26B9AC494() & 1) == 0);
  return v4 != v5;
}

uint64_t (*sub_26B96C714(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26D686B00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = sub_26B9AAAE4();
LABEL_5:
    *v3 = v5;
    return sub_26B96C794;
  }

  __break(1u);
  return result;
}

id sub_26B96C7BC()
{
  v0 = sub_26B9AB1F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D4C860]) init];
  v6 = sub_26B9AC4C4();
  [v5 setTypeIdentifier_];

  sub_26B9AA884();
  sub_26B9AB1C4();
  (*(v1 + 8))(v4, v0);
  v7 = sub_26B9AC4C4();

  [v5 setInstanceIdentifier_];

  return v5;
}

uint64_t sub_26B96C918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B922394(a1, a2);
  }

  return a1;
}

unint64_t sub_26B96C930()
{
  result = qword_280426AF0;
  if (!qword_280426AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426AF0);
  }

  return result;
}

uint64_t sub_26B96C98C()
{
  result = type metadata accessor for TypedValueResultBuilder.Config(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_26B9ABE84();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TypedValueResultBuilder.PresentationKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TypedValueResultBuilder.PresentationKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B96CB00(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26B96CB18(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_26B96CB78()
{
  sub_26B96CCF4(319, &qword_2804269D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26B96CC78(319, &qword_280426AF8, MEMORY[0x277D72238]);
    if (v1 <= 0x3F)
    {
      sub_26B96CC78(319, &qword_280426B00, MEMORY[0x277D73148]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26B96CC78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B9ACA34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26B96CCF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26B96CD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26B96CDAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B96CE7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

void (*sub_26B96CF7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x100))(KeyPath);

  v4[5] = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26B96D628(&qword_280426B28, type metadata accessor for PrimitiveTypedValueResultViewModel);
  sub_26B9AB264();

  v4[7] = sub_26B96CE08();
  return sub_26B96D0DC;
}

uint64_t sub_26B96D168@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x100))();

  v3 = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__text;
  swift_beginAccess();
  v4 = sub_26B9AAEE4();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_26B96D298(uint64_t a1, void **a2)
{
  v4 = sub_26B9AAEE4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xC0))(v7);
}

uint64_t sub_26B96D394(char *a1)
{
  v2 = v1;
  v4 = sub_26B9AAEE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__text;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, &v2[v9], v4);
  sub_26B96D628(&qword_280426B30, MEMORY[0x277CC8C40]);
  v16 = a1;
  LOBYTE(a1) = sub_26B9AC494();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16, v4);
    swift_beginAccess();
    (*(v5 + 40))(&v2[v9], v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x28223BE20](KeyPath);
    v14 = v16;
    *(&v16 - 2) = v2;
    *(&v16 - 1) = v14;
    (*((*MEMORY[0x277D85000] & *v2) + 0x108))(v13, sub_26B96D784);
  }

  return (v11)(v16, v4);
}

uint64_t sub_26B96D628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B96D670(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9AAEE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel__text;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void (*sub_26B96D7B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x100))(KeyPath);

  v4[5] = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26B96D628(&qword_280426B28, type metadata accessor for PrimitiveTypedValueResultViewModel);
  sub_26B9AB264();

  v4[7] = sub_26B96D108();
  return sub_26B96D910;
}

uint64_t sub_26B96D990(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v2) + 0x100))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_26B96DA28@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26B96DB08(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 & 1;
  v7 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v7) == v6)
  {
    *(v4 + v7) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    v11 = v4;
    v12 = v6;
    (*((*MEMORY[0x277D85000] & *v4) + 0x108))(v10, a4);
  }

  return result;
}

uint64_t sub_26B96DC34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

void (*sub_26B96DC8C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x100))(KeyPath);

  v4[5] = OBJC_IVAR____TtC17SpotlightUIShared34PrimitiveTypedValueResultViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26B96D628(&qword_280426B28, type metadata accessor for PrimitiveTypedValueResultViewModel);
  sub_26B9AB264();

  v4[7] = sub_26B96D91C();
  return sub_26B96DDEC;
}

void sub_26B96DDF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_26B9AB254();

  free(v1);
}

id _s17SpotlightUIShared36PrimitiveTypedValueResultHostingViewCACycfC_0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26B96E1E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PrimitiveTypedValueResultViewModel(0);
  result = sub_26B9AB594();
  *a1 = result;
  return result;
}

__n128 PrimitiveTypedValueResultView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrimitiveTypedValueResultView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (*((*MEMORY[0x277D85000] & **(v1 + 8)) + 0x88))(v7);
  sub_26B96E44C(v2, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_26B96E4B0(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B48, &qword_26B9B3EE0);
  sub_26B8F7938(&qword_280426B50, &qword_280426B48, &qword_26B9B3EE0);
  ToolResultHighlightContainer.init(isSelected:content:)(v8 & 1, sub_26B96E514, v10, v13);
  result = v14;
  *a1 = v13[0];
  *(a1 + 8) = result;
  *(a1 + 24) = 256;
  return result;
}

uint64_t sub_26B96E3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26B9AB6B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C40, &qword_26B9B4070);
  return sub_26B96E518(a1, a2 + *(v4 + 44));
}

uint64_t sub_26B96E44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimitiveTypedValueResultView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B96E4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimitiveTypedValueResultView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B96E518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C48, &qword_26B9B4078);
  v3 = *(*(v46 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v46);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = v41 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C50, &qword_26B9B4080);
  v8 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = v41 - v9;
  v10 = type metadata accessor for PrimitiveTypedValueResultView(0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_26B9AC3D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C58, &qword_26B9B4088);
  v17 = *(*(v48 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v48);
  v20 = v41 - v19;
  v21 = a1;
  if ((*((*MEMORY[0x277D85000] & **(a1 + 8)) + 0xE8))(v18))
  {
    v22 = *(v13 + 16);
    v23 = a1 + *(v10 + 24);
    v41[1] = v16;
    v22(v16, v23, v12);
    v49 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B40, &qword_26B9B3ED8);
    sub_26B8F7938(&qword_280426C90, &qword_280426B40, &qword_26B9B3ED8);
    v43 = sub_26B9AB5D4();
    sub_26B96E44C(a1, v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v25 = swift_allocObject();
    sub_26B96E4B0(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C98, &qword_26B9B40A8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426CA0, &qword_26B9B40B0);
    v27 = sub_26B9719B8(&qword_280426CA8, &qword_280426CA0, &qword_26B9B40B0, sub_26B971A3C);
    v49 = v26;
    v50 = v27;
    swift_getOpaqueTypeConformance2();
    sub_26B9AC3B4();
    sub_26B96E44C(v21, v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = swift_allocObject();
    sub_26B96E4B0(v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v24);
    v29 = &v20[*(v48 + 36)];
    *v29 = sub_26B971BAC;
    *(v29 + 1) = v28;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = &qword_280426C58;
    v31 = &qword_26B9B4088;
    sub_26B9236E8(v20, v45, &qword_280426C58, &qword_26B9B4088);
    swift_storeEnumTagMultiPayload();
    sub_26B9718FC();
    sub_26B8F7938(&qword_280426C88, &qword_280426C48, &qword_26B9B4078);
    sub_26B9AB6C4();
    v32 = v20;
  }

  else
  {
    v42 = a1;
    v33 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C60, &qword_26B9B4090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B9AF560;
    v35 = sub_26B9AB6D4();
    *(inited + 32) = v35;
    v36 = sub_26B9AB6F4();
    *(inited + 33) = v36;
    v37 = sub_26B9AB6E4();
    sub_26B9AB6E4();
    if (sub_26B9AB6E4() != v35)
    {
      v37 = sub_26B9AB6E4();
    }

    sub_26B9AB6E4();
    if (sub_26B9AB6E4() != v36)
    {
      v37 = sub_26B9AB6E4();
    }

    *v6 = v37;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C68, &qword_26B9B4098);
    sub_26B96EBC4(v42, &v6[*(v38 + 44)]);
    v39 = v43;
    sub_26B8EDE60(v6, v43);
    v30 = &qword_280426C48;
    v31 = &qword_26B9B4078;
    sub_26B9236E8(v39, v33, &qword_280426C48, &qword_26B9B4078);
    swift_storeEnumTagMultiPayload();
    sub_26B9718FC();
    sub_26B8F7938(&qword_280426C88, &qword_280426C48, &qword_26B9B4078);
    sub_26B9AB6C4();
    v32 = v39;
  }

  return sub_26B8EACD8(v32, v30, v31);
}

uint64_t sub_26B96EBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for PrimitiveTypedValueResultView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v39[1] = v7;
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B9AC3D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[2] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C58, &qword_26B9B4088);
  v15 = *(v14 - 8);
  v42 = v14 - 8;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v43 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426CF8, &qword_26B9B4138);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v41 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v40 = v39 - v25;
  v26 = sub_26B96F0CC(v39 - v25);
  (*(v10 + 16))(v13, a1 + *(v4 + 32), v9, v26);
  v45 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B40, &qword_26B9B3ED8);
  sub_26B8F7938(&qword_280426C90, &qword_280426B40, &qword_26B9B3ED8);
  v39[0] = sub_26B9AB5D4();
  sub_26B96E44C(a1, v8);
  v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v28 = swift_allocObject();
  sub_26B96E4B0(v8, v28 + v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426C98, &qword_26B9B40A8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426CA0, &qword_26B9B40B0);
  v30 = sub_26B9719B8(&qword_280426CA8, &qword_280426CA0, &qword_26B9B40B0, sub_26B971A3C);
  v45 = v29;
  v46 = v30;
  swift_getOpaqueTypeConformance2();
  sub_26B9AC3B4();
  sub_26B96E44C(a1, v8);
  v31 = swift_allocObject();
  sub_26B96E4B0(v8, v31 + v27);
  v32 = v41;
  v33 = &v20[*(v42 + 44)];
  *v33 = sub_26B971C90;
  *(v33 + 1) = v31;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v34 = v40;
  sub_26B9236E8(v40, v32, &qword_280426CF8, &qword_26B9B4138);
  v35 = v43;
  sub_26B9236E8(v20, v43, &qword_280426C58, &qword_26B9B4088);
  v36 = v44;
  sub_26B9236E8(v32, v44, &qword_280426CF8, &qword_26B9B4138);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D00, &qword_26B9B4140);
  sub_26B9236E8(v35, v36 + *(v37 + 48), &qword_280426C58, &qword_26B9B4088);
  sub_26B8EACD8(v20, &qword_280426C58, &qword_26B9B4088);
  sub_26B8EACD8(v34, &qword_280426CF8, &qword_26B9B4138);
  sub_26B8EACD8(v35, &qword_280426C58, &qword_26B9B4088);
  return sub_26B8EACD8(v32, &qword_280426CF8, &qword_26B9B4138);
}

__n128 sub_26B96F0CC@<Q0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_26B9AAEE4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D08, &qword_26B9B4148);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v28 - v7;
  (*((*MEMORY[0x277D85000] & **(v1 + 8)) + 0xB8))(v6);
  v8 = sub_26B9AB764();
  v10 = v9;
  v12 = v11;
  sub_26B9AB744();
  v13 = sub_26B9AB754();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_26B971BB0(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v21 = sub_26B9AB714();
  v34 = v17 & 1;
  v33 = 0;
  v32 = 1;
  *&v35 = v13;
  *(&v35 + 1) = v15;
  LOBYTE(v36) = v17 & 1;
  *(&v36 + 1) = v19;
  *&v37 = KeyPath;
  *(&v37 + 1) = 1;
  v38.n128_u8[0] = 0;
  v38.n128_u8[8] = v21;
  v39 = 0u;
  v40 = 0u;
  LOBYTE(v41) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D10, &unk_26B9B4150);
  sub_26B9719B8(&qword_280426D18, &qword_280426D10, &unk_26B9B4150, sub_26B971AF4);
  v22 = v28;
  sub_26B9AB774();
  v42[4] = v39;
  v42[5] = v40;
  v43 = v41;
  v42[0] = v35;
  v42[1] = v36;
  v42[2] = v37;
  v42[3] = v38;
  sub_26B8EACD8(v42, &qword_280426D10, &unk_26B9B4150);
  sub_26B9AB844();
  sub_26B9AB654();
  v23 = v31;
  (*(v29 + 32))(v31, v22, v30);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426CF8, &qword_26B9B4138) + 36);
  v25 = v40;
  *(v24 + 64) = v39;
  *(v24 + 80) = v25;
  *(v24 + 96) = v41;
  v26 = v36;
  *v24 = v35;
  *(v24 + 16) = v26;
  result = v38;
  *(v24 + 32) = v37;
  *(v24 + 48) = result;
  return result;
}

uint64_t sub_26B96F400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_26B9AAEE4();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  (*((*MEMORY[0x277D85000] & **(a1 + 8)) + 0xB8))(v5);
  v6 = sub_26B9AB764();
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + *(type metadata accessor for PrimitiveTypedValueResultView(0) + 28));
  v12 = sub_26B9AB754();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_26B971BB0(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  LOBYTE(v33[0]) = v16 & 1;
  LOBYTE(v24) = 1;
  v21 = sub_26B9AB714();
  v32 = 1;
  *&v24 = v12;
  *(&v24 + 1) = v14;
  LOBYTE(v25) = v16 & 1;
  *(&v25 + 1) = v18;
  v26 = KeyPath;
  LOBYTE(v27) = 1;
  *(&v27 + 1) = v20;
  LOBYTE(v28) = 0;
  BYTE8(v28) = v21;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426CA0, &qword_26B9B40B0);
  sub_26B9719B8(&qword_280426CA8, &qword_280426CA0, &qword_26B9B40B0, sub_26B971A3C);
  sub_26B9AB774();
  v33[4] = v28;
  v33[5] = v29;
  v33[6] = v30;
  v34 = v31;
  v33[0] = v24;
  v33[1] = v25;
  v33[2] = v26;
  v33[3] = v27;
  return sub_26B8EACD8(v33, &qword_280426CA0, &qword_26B9B40B0);
}

uint64_t sub_26B96F644(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B40, &qword_26B9B3ED8);
  sub_26B8F7938(&qword_280426CF0, &qword_280426B40, &qword_26B9B3ED8);
  return sub_26B9AB5C4();
}

__n128 sub_26B96F6E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1 - 8);
  v8 = (*((*MEMORY[0x277D85000] & **(v2 + 8)) + 0x88))(v7);
  sub_26B96E44C(v3, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_26B96E4B0(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B48, &qword_26B9B3EE0);
  sub_26B8F7938(&qword_280426B50, &qword_280426B48, &qword_26B9B3EE0);
  ToolResultHighlightContainer.init(isSelected:content:)(v8 & 1, sub_26B971C98, v10, v13);
  result = v14;
  *a2 = v13[0];
  *(a2 + 8) = result;
  *(a2 + 24) = 256;
  return result;
}

uint64_t sub_26B96F8D4()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_26B96F9D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel);
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  v6 = v4;
  v5(a1);
}

uint64_t sub_26B96FA70@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result & 1;
  return result;
}

void (*sub_26B96FB28(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_26B96FBB0;
}

void sub_26B96FBB0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel);
    v6 = *(v4 + v3[4]);
    v7 = *((*MEMORY[0x277D85000] & *v5) + 0x90);
    v8 = v5;
    v7(v6);
  }

  free(v3);
}

id PrimitiveTypedValueResultHostingView.init()()
{
  v0[OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected] = 0;
  *&v0[OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_hostingView] = 0;
  v1 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_currentTypedValue;
  v2 = sub_26B9ABE44();
  v3 = swift_allocBox();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D729A0], v2);
  *&v0[v1] = v3;
  v5 = *MEMORY[0x277D72A58];
  v6 = sub_26B9ABE84();
  (*(*(v6 - 8) + 104))(&v0[v1], v5, v6);
  v7 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for PrimitiveTypedValueResultViewModel(0)) init];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PrimitiveTypedValueResultHostingView(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 setHorizontalAlignment_];
  [v8 setVerticalAlignment_];

  return v8;
}

unint64_t sub_26B96FE78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26B9AB824();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v108 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PrimitiveTypedValueResultView(0);
  v7 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v109 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_26B9AAED4();
  v114 = *(v125 - 8);
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v125);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B70, &qword_26B9B3EF0);
  v12 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v14 = &v98 - v13;
  v15 = sub_26B9AAEB4();
  v116 = *(v15 - 8);
  v16 = *(v116 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v112 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v115 = &v98 - v19;
  v20 = sub_26B9AAF44();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v104 = (&v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = sub_26B9ABE44();
  v102 = *(v103 - 8);
  v23 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26B9AAEE4();
  v122 = *(v25 - 8);
  v123 = v25;
  v26 = *(v122 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v111 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v121 = &v98 - v29;
  v30 = sub_26B9ABE84();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x28223BE20](v30);
  v35 = (&v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v37 = &v98 - v36;
  v38 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_currentTypedValue;
  swift_beginAccess();
  v39 = v31[2];
  v105 = v38;
  v117 = v39;
  v118 = v31 + 2;
  v39(v37, v2 + v38, v30);
  sub_26B96D628(&qword_280426B78, MEMORY[0x277D72A78]);
  v124 = a1;
  LOBYTE(a1) = sub_26B9AC494();
  v119 = v31;
  v40 = v31[1];
  v106 = v37;
  v120 = v30;
  result = v40(v37, v30);
  if (a1)
  {
    return result;
  }

  v42 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_hostingView;
  v110 = v2;
  v43 = *(v2 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_hostingView);
  if (v43)
  {
    [v43 removeFromSuperview];
  }

  v44 = v120;
  v117(v35, v124, v120);
  v45 = v119;
  v46 = (v119[11])(v35, v44) == *MEMORY[0x277D72A58];
  v47 = v121;
  v99 = v42;
  v100 = v11;
  if (v46)
  {
    (v45[12])(v35, v44);
    v48 = *v35;
    v49 = swift_projectBox();
    v50 = v102;
    v51 = v101;
    v52 = v103;
    (*(v102 + 16))(v101, v49, v103);
    if ((*(v50 + 88))(v51, v52) == *MEMORY[0x277D72968])
    {
      (*(v50 + 96))(v51, v52);
      (*(v122 + 32))(v47, v51, v123);

      goto LABEL_10;
    }

    (*(v50 + 8))(v51, v52);
  }

  else
  {
    v40(v35, v44);
  }

  sub_26B968190();
  sub_26B9AAF34();
  sub_26B9AAEF4();
LABEL_10:
  v53 = v110;
  v54 = v47;
  v55 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel;
  v56 = *(v110 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel);
  v57 = v111;
  (*(v122 + 16))(v111, v54, v123);
  v58 = *((*MEMORY[0x277D85000] & *v56) + 0xC0);
  v59 = v56;
  v58(v57);

  v111 = v55;
  v104 = *(v53 + v55);
  v60 = v115;
  sub_26B9AAEA4();
  (*(v116 + 16))(v112, v60, v15);
  v61 = MEMORY[0x277CC8B30];
  sub_26B96D628(&qword_280426B80, MEMORY[0x277CC8B30]);
  sub_26B9AC644();
  v62 = *(v113 + 36);
  sub_26B96D628(&qword_280426B88, v61);
  v63 = (v114 + 8);
  v64 = v100;
  while (1)
  {
    sub_26B9AC8E4();
    sub_26B96D628(&qword_280426B90, MEMORY[0x277CC8C20]);
    v65 = v125;
    v66 = sub_26B9AC494();
    (*v63)(v64, v65);
    if (v66)
    {
LABEL_19:
      sub_26B8EACD8(v14, &qword_280426B70, &qword_26B9B3EF0);
      (*(v116 + 8))(v115, v15);
      v73 = v104;
      v74 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v104) + 0xF0))((v66 & 1) == 0);

      v75 = v110;
      v76 = v111;
      v77 = *((*v74 & *v110) + 0x70);
      v78 = *&v111[v110];
      v79 = v77();
      (*((*v74 & *v78) + 0x90))(v79 & 1);

      v80 = *&v76[v75];
      type metadata accessor for PrimitiveTypedValueResultViewModel(0);
      sub_26B96D628(&qword_280426B38, type metadata accessor for PrimitiveTypedValueResultViewModel);
      v81 = v80;
      v82 = sub_26B9AB5F4();
      v83 = v109;
      *v109 = v82;
      v83[1] = v84;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B40, &qword_26B9B3ED8);
      v86 = *(v85 + 48);
      v87 = *(v85 + 52);
      swift_allocObject();
      v83[2] = sub_26B9AB5A4();
      v88 = v107;
      v89 = *(v107 + 24);
      sub_26B9AB814();
      sub_26B9AC3C4();
      v90 = *(v88 + 28);
      *(v83 + v90) = sub_26B9AB734();
      v91 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426B98, &qword_26B9B3EF8));
      v92 = sub_26B9AB614();
      [v75 addArrangedSubview_];
      v93 = *(v75 + v99);
      *(v75 + v99) = v92;
      v94 = v92;

      v95 = v106;
      v96 = v120;
      v117(v106, v124, v120);
      v97 = v105;
      swift_beginAccess();
      (v119[5])(v75 + v97, v95, v96);
      swift_endAccess();
      [v75 invalidateIntrinsicContentSize];

      return (*(v122 + 8))(v121, v123);
    }

    v67 = sub_26B9AC904();
    v70 = *v68;
    v69 = v68[1];

    v67(v126, 0);
    sub_26B9AC8F4();
    result = sub_26B970DDC(v70, v69);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    v71 = result;

    v72 = (v71 - 14) <= 0xFFFFFFFB && (v71 - 8232) >= 2;
    if (!v72 || v71 == 133)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id PrimitiveTypedValueResultHostingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PrimitiveTypedValueResultHostingView.__allocating_init(arrangedSubviews:)(uint64_t a1)
{
  if (a1)
  {
    sub_26B97131C();
    v2 = sub_26B9AC6E4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

id sub_26B970C58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26B970D24@<X0>(uint64_t a1@<X8>)
{
  result = sub_26B9AB684();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26B970D58(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_26B9AB694();
}

uint64_t sub_26B970D88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B9AB664();
  *a1 = result;
  return result;
}

unint64_t sub_26B970DDC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_26B970F2C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_26B9ACBE4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_26B9ACC54() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_26B970F2C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_26B970FC4(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_26B971038(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_26B970FC4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_26B97115C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26B971038(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_26B9ACC54();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_26B97115C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26B9AC5D4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D686490](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_26B9711D8()
{
  *(v0 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_hostingView) = 0;
  v1 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_currentTypedValue;
  v2 = sub_26B9ABE44();
  v3 = swift_allocBox();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D729A0], v2);
  *(v0 + v1) = v3;
  v5 = *MEMORY[0x277D72A58];
  v6 = sub_26B9ABE84();
  (*(*(v6 - 8) + 104))(v0 + v1, v5, v6);
  v7 = OBJC_IVAR____TtC17SpotlightUIShared36PrimitiveTypedValueResultHostingView_viewModel;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for PrimitiveTypedValueResultViewModel(0)) init];
  sub_26B9ACD24();
  __break(1u);
}

unint64_t sub_26B97131C()
{
  result = qword_280426BA0;
  if (!qword_280426BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280426BA0);
  }

  return result;
}

uint64_t sub_26B971398()
{
  result = sub_26B9AAEE4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_26B9AB284();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_26B971498()
{
  sub_26B97153C();
  if (v0 <= 0x3F)
  {
    sub_26B9715D0();
    if (v1 <= 0x3F)
    {
      sub_26B9AC3D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26B97153C()
{
  if (!qword_280426BA8)
  {
    type metadata accessor for PrimitiveTypedValueResultViewModel(255);
    sub_26B96D628(&qword_280426B38, type metadata accessor for PrimitiveTypedValueResultViewModel);
    v0 = sub_26B9AB604();
    if (!v1)
    {
      atomic_store(v0, &qword_280426BA8);
    }
  }
}

void sub_26B9715D0()
{
  if (!qword_280426BB0)
  {
    v0 = sub_26B9AB5B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280426BB0);
    }
  }
}

uint64_t sub_26B97163C()
{
  result = sub_26B9ABE84();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_26B9717D4()
{
  result = qword_280426C20;
  if (!qword_280426C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426C28, &qword_26B9B4060);
    sub_26B8F7938(&qword_280426C30, &qword_280426C38, &qword_26B9B4068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426C20);
  }

  return result;
}

uint64_t sub_26B97188C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrimitiveTypedValueResultView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26B96E3F4(v4, a1);
}

unint64_t sub_26B9718FC()
{
  result = qword_280426C70;
  if (!qword_280426C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426C58, &qword_26B9B4088);
    sub_26B8F7938(&qword_280426C78, &qword_280426C80, &qword_26B9B40A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426C70);
  }

  return result;
}

uint64_t sub_26B9719B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B971A3C()
{
  result = qword_280426CB0;
  if (!qword_280426CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426CB8, &qword_26B9B40B8);
    sub_26B971AF4();
    sub_26B8F7938(&qword_280426CE0, &qword_280426CE8, &qword_26B9B40D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426CB0);
  }

  return result;
}

unint64_t sub_26B971AF4()
{
  result = qword_280426CC0;
  if (!qword_280426CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426CC8, &qword_26B9B40C0);
    sub_26B8F7938(&qword_280426CD0, &qword_280426CD8, &qword_26B9B40C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426CC0);
  }

  return result;
}

uint64_t sub_26B971BB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26B971BC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrimitiveTypedValueResultView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26B96F400(v4, a1);
}

uint64_t sub_26B971C30()
{
  v1 = *(type metadata accessor for PrimitiveTypedValueResultView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26B96F644(v2);
}

uint64_t ToolResultHighlightContainer.init(isSelected:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ToolResultHighlightContainer.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v4 = sub_26B9AB634();
  v5 = *(v4 - 8);
  v91 = v4 - 8;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D20, &qword_26B9B4160);
  v8 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v86 - v9;
  v88 = sub_26B9AB644();
  v10 = *(*(v88 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v88);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v11);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D28, &qword_26B9B4168);
  v19 = sub_26B9AB624();
  v89 = *(v19 - 8);
  v20 = *(v89 + 64);
  MEMORY[0x28223BE20](v19);
  v86 = &v86 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D30, &qword_26B9B4170);
  v22 = sub_26B9AB624();
  v93 = *(v22 - 8);
  v23 = *(v93 + 64);
  MEMORY[0x28223BE20](v22);
  v107 = &v86 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426D38, &qword_26B9B4178);
  v97 = v22;
  v25 = sub_26B9AB624();
  v98 = *(v25 - 8);
  v26 = *(v98 + 64);
  MEMORY[0x28223BE20](v25);
  v92 = &v86 - v27;
  v100 = v28;
  v29 = sub_26B9AB624();
  v99 = *(v29 - 8);
  v30 = *(v99 + 64);
  MEMORY[0x28223BE20](v29);
  v95 = &v86 - v31;
  v101 = v32;
  v103 = sub_26B9AB624();
  v102 = *(v103 - 8);
  v33 = *(v102 + 64);
  v34 = MEMORY[0x28223BE20](v103);
  v94 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v96 = &v86 - v37;
  v87 = *v2;
  v38 = *(v2 + 1);
  v39 = *(v2 + 2);
  v38(v36);
  sub_26B9AB714();
  v40 = *(a1 + 24);
  sub_26B9AB7A4();
  (*(v15 + 8))(v18, v14);
  v41 = objc_opt_self();
  [v41 roundedItemCornerRadius];
  v43 = v42;
  v44 = v88;
  v45 = *(v88 + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_26B9AB6A4();
  v48 = *(*(v47 - 8) + 104);
  v48(&v13[v45], v46, v47);
  *v13 = v43;
  *(v13 + 1) = v43;
  v49 = sub_26B8F7938(&qword_280426D40, &qword_280426D28, &qword_26B9B4168);
  v116 = v40;
  v117 = v49;
  WitnessTable = swift_getWitnessTable();
  sub_26B97272C();
  v51 = v86;
  sub_26B9AB7E4();
  sub_26B9727E8(v13, MEMORY[0x277CDFC08]);
  v52 = v19;
  v53 = v90;
  (*(v89 + 8))(v51, v52);
  [v41 roundedItemCornerRadius];
  v55 = v54;
  v48(&v53[*(v44 + 20)], v46, v47);
  *v53 = v55;
  *(v53 + 1) = v55;
  [v41 selectionBorderWidth];
  *&v53[*(v91 + 28)] = -v56;
  if (v87 == 1)
  {
    v57 = sub_26B9AB7F4();
  }

  else
  {
    v57 = sub_26B9AB804();
  }

  v58 = v57;
  [v41 selectionBorderWidth];
  sub_26B9AB5E4();
  v59 = v104;
  sub_26B972784(v53, v104);
  v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D50, &qword_26B9B4180) + 36);
  v61 = v119;
  *v60 = v118;
  *(v60 + 16) = v61;
  *(v60 + 32) = v120;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D58, &qword_26B9B4188);
  *(v59 + *(v62 + 52)) = v58;
  *(v59 + *(v62 + 56)) = 256;
  v63 = sub_26B9AB834();
  v65 = v64;
  sub_26B9727E8(v53, MEMORY[0x277CDFBC8]);
  v66 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D60, &qword_26B9B4190) + 36));
  *v66 = v63;
  v66[1] = v65;
  sub_26B9AB834();
  v67 = sub_26B8F7938(&qword_280426D68, &qword_280426D30, &qword_26B9B4170);
  v114 = WitnessTable;
  v115 = v67;
  v68 = v97;
  v69 = swift_getWitnessTable();
  sub_26B8F7938(&qword_280426D70, &qword_280426D20, &qword_26B9B4160);
  v70 = v92;
  v71 = v107;
  sub_26B9AB7C4();
  sub_26B972848(v59);
  (*(v93 + 8))(v71, v68);
  sub_26B9AB704();
  v72 = sub_26B8F7938(&qword_280426D78, &qword_280426D38, &qword_26B9B4178);
  v112 = v69;
  v113 = v72;
  v73 = v100;
  v74 = swift_getWitnessTable();
  v75 = v95;
  sub_26B9AB7D4();
  (*(v98 + 8))(v70, v73);
  sub_26B9AB724();
  v76 = MEMORY[0x277CDF918];
  v110 = v74;
  v111 = MEMORY[0x277CDF918];
  v77 = v101;
  v78 = swift_getWitnessTable();
  v79 = v94;
  sub_26B9AB7D4();
  (*(v99 + 8))(v75, v77);
  v108 = v78;
  v109 = v76;
  v80 = v103;
  swift_getWitnessTable();
  v81 = v102;
  v82 = *(v102 + 16);
  v83 = v96;
  v82(v96, v79, v80);
  v84 = *(v81 + 8);
  v84(v79, v80);
  v82(v106, v83, v80);
  return (v84)(v83, v80);
}

unint64_t sub_26B97272C()
{
  result = qword_280426D48;
  if (!qword_280426D48)
  {
    sub_26B9AB644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426D48);
  }

  return result;
}

uint64_t sub_26B972784(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B9AB634();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9727E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26B972848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D20, &qword_26B9B4160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9728F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B97294C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B9B1290;
  *(inited + 32) = swift_getKeyPath();
  v11 = sub_26B977774(inited);
  swift_setDeallocating();
  v12 = *(inited + 16);
  swift_arrayDestroy();
  v13 = sub_26B972AD0(a1, v11, a2, a3, a4, a5);

  return v13;
}

uint64_t sub_26B972A3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26B968190();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B972A68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_26B972AA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    *a2 = *a1;
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_26B972AD0(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v79 = *(v13 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v67 - v15;
  v16 = sub_26B9ABE84();
  v78 = *(v16 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (sub_26B9ACB44())
    {
      v68 = a5;
      v73 = a3;
      v74 = a4;
      v69 = v6;
      v70 = a6;
      v71 = v19;
      v20 = sub_26B9ACB44();
      v21 = sub_26B9779C0(MEMORY[0x277D84F90]);
      swift_unknownObjectRetain();
      sub_26B9ACB34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
      sub_26B9AC8B4();
      v22 = v81[2];
      v23 = v81[3];
      v24 = v81[4];
      v25 = v81[5];
      v26 = v81[6];
      goto LABEL_9;
    }

LABEL_41:
    v58 = a1;

    return v58;
  }

  v27 = *(a2 + 16);
  if (!v27)
  {
    goto LABEL_41;
  }

  v68 = a5;
  v73 = a3;
  v74 = a4;
  v69 = v6;
  v70 = a6;
  v71 = v19;
  v20 = v27;
  v21 = sub_26B9779C0(MEMORY[0x277D84F90]);
  v28 = -1 << *(a2 + 32);
  v23 = (a2 + 56);
  v24 = ~v28;
  v29 = -v28;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v26 = (v30 & *(a2 + 56));

  v25 = 0;
  v22 = a2;
LABEL_9:
  v72 = v24;
  v31 = (v24 + 64) >> 6;
  v32 = 1.0 / v20;
  v75 = v25;
  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v33 = sub_26B9ACB54();
  if (v33)
  {
    v80 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
    swift_dynamicCast();
    v34 = v81[0];
    v76 = v26;
    if (v81[0])
    {
      while (1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v21;
        v38 = sub_26B97577C(v34);
        v40 = v21[2];
        v41 = (v39 & 1) == 0;
        v42 = __OFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
          goto LABEL_47;
        }

        v44 = v39;
        if (v21[3] < v43)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_23;
        }

        v46 = v38;
        sub_26B975D70();
        v38 = v46;
        v21 = v81[0];
        if (v44)
        {
LABEL_24:
          *(v21[7] + 8 * v38) = v32;

          goto LABEL_28;
        }

LABEL_26:
        v21[(v38 >> 6) + 8] |= 1 << v38;
        *(v21[6] + 8 * v38) = v34;
        *(v21[7] + 8 * v38) = v32;
        v47 = v21[2];
        v42 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v42)
        {
          goto LABEL_48;
        }

        v21[2] = v48;
LABEL_28:
        v26 = v76;
        v75 = v25;
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_10;
        }

LABEL_13:
        v35 = v25;
        v36 = v26;
        if (!v26)
        {
          while (1)
          {
            v25 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (v25 >= v31)
            {
              goto LABEL_30;
            }

            v36 = v23[v25];
            ++v35;
            if (v36)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_46;
        }

LABEL_17:
        v76 = (v36 - 1) & v36;
        v34 = *(*(v22 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v36)))));
        sub_26B9AAAE4();
        if (!v34)
        {
          goto LABEL_30;
        }
      }

      sub_26B975854(v43, isUniquelyReferenced_nonNull_native);
      v38 = sub_26B97577C(v34);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_49;
      }

LABEL_23:
      v21 = v81[0];
      if (v44)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }
  }

LABEL_30:
  v49 = sub_26B9471BC();
  v50 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v50 = v73 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

    goto LABEL_41;
  }

  MEMORY[0x28223BE20](v49);
  v51 = v69;
  *(&v67 - 6) = v68;
  *(&v67 - 5) = v51;
  v72 = v52;
  *(&v67 - 4) = v52;
  *(&v67 - 3) = v53;
  *(&v67 - 2) = v54;
  *(&v67 - 8) = v70 & 1;
  v81[0] = sub_26B97454C(sub_26B97823C, (&v67 - 8), a1);

  sub_26B975ECC(v81);

  a1 = v81[0];
  v55 = v81[0][2];
  v56 = v71;
  if (!v55)
  {

    return MEMORY[0x277D84F90];
  }

  v81[0] = MEMORY[0x277D84F90];
  v76 = v55;
  sub_26B956858(0, v55, 0);
  v57 = 0;
  v58 = v81[0];
  v75 = a1 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
  v59 = (v78 + 16);
  v74 = v78 + 32;
  while (v57 < a1[2])
  {
    v60 = v58;
    v61 = v77;
    sub_26B9236E8(&v75[*(v79 + 72) * v57], v77, &qword_280426D88, &qword_26B9B42F0);
    (*v59)(v56, v61, v16);
    v62 = v61;
    v58 = v60;
    sub_26B8EACD8(v62, &qword_280426D88, &qword_26B9B42F0);
    v81[0] = v60;
    v63 = v16;
    v65 = v60[2];
    v64 = v60[3];
    if (v65 >= v64 >> 1)
    {
      sub_26B956858(v64 > 1, v65 + 1, 1);
      v58 = v81[0];
    }

    ++v57;
    v58[2] = v65 + 1;
    (*(v78 + 32))(v58 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v65, v56, v63);
    v16 = v63;
    if (v76 == v57)
    {

      return v58;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
  sub_26B9ACF24();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_26B9731BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = sub_26B9AD024();
  if (sub_26B9AC8A4())
  {

    return a1;
  }

  else
  {
    v34 = a6;
    v35 = a3;
    v37 = a5;
    v38 = a7;
    v39 = a1;
    v15 = MEMORY[0x277D83F88];
    v16 = sub_26B9AC894();
    v17 = MEMORY[0x277D85048];
    swift_getTupleTypeMetadata2();
    v18 = sub_26B9AC744();
    v19 = sub_26B977AB0(v18, v14, v17, v15);

    v41 = v19;
    v36 = a4;
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_26B9ACB34();
      result = sub_26B9AC8B4();
      a2 = v42;
      v21 = v43;
      v23 = v44;
      v22 = v45;
      v24 = v46;
    }

    else
    {
      v25 = -1 << *(a2 + 32);
      v21 = a2 + 56;
      v23 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v24 = v27 & *(a2 + 56);

      v22 = 0;
    }

    v28 = 1.0 / v16;
    if (a2 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v29 = v24;
      v30 = v22;
      if (!v24)
      {
        break;
      }

LABEL_15:
      v32 = (v29 - 1) & v29;
      v33 = *(*(a2 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!sub_26B9AAAE4())
      {
LABEL_21:
        sub_26B9471BC();
        a1 = sub_26B9734AC(v39, v41, v35, v36, v37, v34 & 1, v38);

        return a1;
      }

      while (1)
      {
        v40 = v28;
        sub_26B9AC424();
        result = sub_26B9AC444();
        v22 = v30;
        v24 = v32;
        if ((a2 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (sub_26B9ACB54())
        {
          sub_26B9ACE94();
          swift_unknownObjectRelease();
          v30 = v22;
          v32 = v24;
          if (v40 != 0.0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    v31 = v22;
    while (1)
    {
      v30 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v30 >= ((v23 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v29 = *(v21 + 8 * v30);
      ++v31;
      if (v29)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B9734AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1;
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    MEMORY[0x28223BE20](a1);
    v22[0] = v10;
    v22[1] = v11;
    v13 = v12;
    sub_26B9AC7B4();
    type metadata accessor for FuzzyRanker.RankedValue();
    swift_getWitnessTable();
    v14 = sub_26B9AC654();
    MEMORY[0x28223BE20](v14);
    v15 = sub_26B9AC7B4();
    swift_getWitnessTable();
    v16 = sub_26B9AC664();

    v22[5] = v16;
    MEMORY[0x28223BE20](v17);
    KeyPath = swift_getKeyPath();
    v22[2] = v13;
    v22[3] = MEMORY[0x28223BE20](KeyPath);
    WitnessTable = swift_getWitnessTable();
    v7 = sub_26B974A6C(sub_26B977E44, v22, v15, a7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);
  }

  else
  {
  }

  return v7;
}

uint64_t sub_26B97372C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v32 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27[-v11];
  v13 = sub_26B9ABE84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v27[-v21];
  sub_26B9236E8(a2, v12, &qword_2804260C8, &qword_26B9B0050);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26B8EACD8(v12, &qword_2804260C8, &qword_26B9B0050);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_26B9782E4();
    v23 = sub_26B9AC494();
    (*(v14 + 8))(v17, v13);
    if (v23)
    {
      (*(v14 + 16))(v22, a1, v13);
      *&v22[*(v18 + 28)] = 0x7FEFFFFFFFFFFFFFLL;
LABEL_8:
      v25 = v32;
      sub_26B978274(v22, v32);
      v24 = 0;
      return (*(v19 + 56))(v25, v24, 1, v18);
    }
  }

  sub_26B973DB8(a1, v29, v30, v31, v22);
  if (*&v22[*(v18 + 28)] >= 0.0 || (v28 & 1) != 0)
  {
    goto LABEL_8;
  }

  sub_26B8EACD8(v22, &qword_280426D88, &qword_26B9B42F0);
  v24 = 1;
  v25 = v32;
  return (*(v19 + 56))(v25, v24, 1, v18);
}

uint64_t sub_26B973A34@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a8;
  v35 = a3;
  v38 = a6;
  v36 = a4;
  v37 = a5;
  v39 = a2;
  v40 = a1;
  v41 = a9;
  v10 = sub_26B9ACA34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - v21;
  v23 = type metadata accessor for FuzzyRanker.RankedValue();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v34 - v26;
  (*(v11 + 16))(v15, v39, v10);
  if ((*(v16 + 48))(v15, 1, a7) == 1)
  {
    (*(v11 + 8))(v15, v10);
    v28 = v40;
LABEL_5:
    sub_26B97411C(v28, v35, v36, v37, a7, v27);
    goto LABEL_6;
  }

  v39 = *(v16 + 32);
  v39(v22, v15, a7);
  v29 = *(v34 + 8);
  v28 = v40;
  v30 = sub_26B9AC494();
  (*(v16 + 8))(v22, a7);
  if ((v30 & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v16 + 16))(v20, v28, a7);
  v39(v27, v20, a7);
  *&v27[*(v23 + 28)] = 0x7FEFFFFFFFFFFFFFLL;
LABEL_6:
  v31 = v41;
  if (*&v27[*(v23 + 28)] >= 0.0 || (v38 & 1) != 0)
  {
    (*(v24 + 32))(v41, v27, v23);
    v32 = 0;
  }

  else
  {
    (*(v24 + 8))(v27, v23);
    v32 = 1;
  }

  return (*(v24 + 56))(v31, v32, 1, v23);
}

uint64_t sub_26B973DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = sub_26B9ABE84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26B97483C(a2);
  v18 = *(v17 + 16);
  v50 = v12;
  v51 = a5;
  v48 = v16;
  v49 = v13;
  if (v18)
  {
    if (v18 > 3)
    {
      v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      v21 = v17 + 48;
      v20 = 0.0;
      v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v23 = *v21;
        v20 = v20 + *(v21 - 16) + *(v21 - 8) + *v21 + *(v21 + 8);
        v21 += 32;
        v22 -= 4;
      }

      while (v22);
      if (v18 == v19)
      {
LABEL_10:

        if (v20 < 0.0)
        {
          v20 = 1.0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0.0;
    }

    v24 = v18 - v19;
    v25 = (v17 + 8 * v19 + 32);
    do
    {
      v26 = *v25++;
      v20 = v20 + v26;
      --v24;
    }

    while (v24);
    goto LABEL_10;
  }

  v20 = 0.0;
LABEL_12:
  v27 = 1;
  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a2 + 64);
  v31 = (v28 + 63) >> 6;

  v33 = 0;
  v34 = 0.0;
  while (v30)
  {
LABEL_21:
    v36 = (v33 << 9) | (8 * __clz(__rbit64(v30)));
    v37 = *(*(a2 + 48) + v36);
    v38 = *(*(a2 + 56) + v36);
    sub_26B9AAAE4();
    sub_26B974F20(a1, v52, v53, v11);

    v39 = *&v11[*(v8 + 28)];
    result = sub_26B8EACD8(v11, &qword_280426D88, &qword_26B9B42F0);
    if (v27)
    {
      v27 = v39 < 0.0;
      v40 = v38 / v20;
      v41 = 1.0;
      if (v38 / v20 > 1.0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v40 = v38 / v20;
      v41 = 1.0;
      v27 = 0;
      if (v38 / v20 > 1.0)
      {
        goto LABEL_15;
      }
    }

    if (v40 < 0.0)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = v40;
    }

LABEL_15:
    v30 &= v30 - 1;
    v34 = v34 + v39 * v41;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      return result;
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(a2 + 64 + 8 * v35);
    ++v33;
    if (v30)
    {
      v33 = v35;
      goto LABEL_21;
    }
  }

  v43 = v48;
  v42 = v49;
  v44 = v50;
  (*(v49 + 16))(v48, a1, v50);
  if (v27)
  {
    v45 = -1.0;
  }

  else
  {
    v45 = v34;
  }

  v46 = v51;
  result = (*(v42 + 32))(v51, v43, v44);
  *(v46 + *(v8 + 28)) = v45;
  return result;
}

uint64_t sub_26B97411C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a3;
  v61 = a4;
  v62 = a1;
  v58 = a6;
  v8 = type metadata accessor for FuzzyRanker.RankedValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9AD024();
  v63 = a2;
  v18 = MEMORY[0x277D85048];
  v19 = sub_26B9AC414();

  WitnessTable = swift_getWitnessTable();
  v22 = sub_26B974A6C(sub_26B974E8C, 0, v19, v18, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);

  v23 = v22;
  v24 = *(v22 + 16);
  v59 = a5;
  v56 = v17;
  v57 = v14;
  if (v24)
  {
    v25 = v9;
    if (v24 > 3)
    {
      v26 = v24 & 0x7FFFFFFFFFFFFFFCLL;
      v28 = v23 + 48;
      v27 = 0.0;
      v29 = v24 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v30 = *v28;
        v27 = v27 + *(v28 - 16) + *(v28 - 8) + *v28 + *(v28 + 8);
        v28 += 32;
        v29 -= 4;
      }

      while (v29);
      if (v24 == v26)
      {
LABEL_10:

        if (v27 < 0.0)
        {
          v27 = 1.0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0.0;
    }

    v31 = v24 - v26;
    v32 = (v23 + 8 * v26 + 32);
    do
    {
      v33 = *v32++;
      v27 = v27 + v33;
      --v31;
    }

    while (v31);
    goto LABEL_10;
  }

  v27 = 0.0;
  v25 = v9;
LABEL_12:
  v34 = 1;
  v35 = 1 << *(a2 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(a2 + 64);
  v38 = (v35 + 63) >> 6;
  v39 = (v25 + 8);

  v41 = 0;
  v42 = 0.0;
  while (v37)
  {
LABEL_21:
    v44 = (v41 << 9) | (8 * __clz(__rbit64(v37)));
    v45 = *(*(a2 + 48) + v44);
    v46 = *(*(a2 + 56) + v44);
    sub_26B9AAAE4();
    sub_26B97530C(v62, v45, v60, v61, v13);

    v47 = *&v13[*(v8 + 28)];
    result = (*v39)(v13, v8);
    if (v34)
    {
      v34 = v47 < 0.0;
      v48 = v46 / v27;
      v49 = 1.0;
      if (v46 / v27 > 1.0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v48 = v46 / v27;
      v49 = 1.0;
      v34 = 0;
      if (v46 / v27 > 1.0)
      {
        goto LABEL_15;
      }
    }

    if (v48 < 0.0)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = v48;
    }

LABEL_15:
    v37 &= v37 - 1;
    v42 = v42 + v47 * v49;
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      return result;
    }

    if (v43 >= v38)
    {
      break;
    }

    v37 = *(a2 + 64 + 8 * v43);
    ++v41;
    if (v37)
    {
      v41 = v43;
      goto LABEL_21;
    }
  }

  v51 = v56;
  v50 = v57;
  v52 = v59;
  (*(v57 + 16))(v56, v62, v59);
  if (v34)
  {
    v53 = -1.0;
  }

  else
  {
    v53 = v42;
  }

  v54 = v58;
  result = (*(v50 + 32))(v58, v51, v52);
  *(v54 + *(v8 + 28)) = v53;
  return result;
}

void *sub_26B97454C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DA8, &unk_26B9B4310);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v31 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v29 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(sub_26B9ABE84() - 8);
  v26 = v11;
  v18 = (v11 + 48);
  v19 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v30 = *(v17 + 72);
  v20 = MEMORY[0x277D84F90];
  v27 = v10;
  v28 = a1;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_26B8EACD8(v9, &qword_280426DA8, &unk_26B9B4310);
    }

    else
    {
      v21 = v29;
      sub_26B978274(v9, v29);
      sub_26B978274(v21, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_26B97725C(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_26B97725C(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_26B978274(v31, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23);
      v10 = v27;
      a1 = v28;
    }

    v19 += v30;
    if (!--v16)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_26B97483C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  sub_26B97744C(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_26B9ACB14();
  v7 = v26;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_26;
    }

    v12 = *(a1 + 36);
    v13 = *(*(a1 + 56) + 8 * result);
    if (v13 > 1.0)
    {
      v13 = 1.0;
    }

    if (v13 < 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v13;
    }

    v16 = *(v27 + 16);
    v15 = *(v27 + 24);
    if (v16 >= v15 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_26B97744C((v15 > 1), v16 + 1, 1);
      v7 = v26;
      v12 = v24;
      result = v25;
    }

    *(v27 + 16) = v16 + 1;
    *(v27 + 8 * v16 + 32) = v14;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_27;
    }

    v17 = *(v4 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_28;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_26B97833C(result, v12, 0);
          v7 = v26;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_26B97833C(result, v12, 0);
      v7 = v26;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26B974A6C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_26B9AC8D4();
  if (!v26)
  {
    return sub_26B9AC744();
  }

  v48 = v26;
  v52 = sub_26B9ACCD4();
  v39 = sub_26B9ACCE4();
  sub_26B9ACC84();
  result = sub_26B9AC8C4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_26B9AC904();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_26B9ACCC4();
      result = sub_26B9AC8F4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B974E8C(uint64_t *a1)
{
  v2 = *a1;
  sub_26B9781E8();
  sub_26B9ACF04();
  return sub_26B9ACEF4();
}

uint64_t sub_26B974F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_26B9ABE84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v13 = sub_26B9AC534();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    (*(v9 + 16))(a4, a1, v8);
LABEL_10:
    v23 = -1.0;
    goto LABEL_11;
  }

  v41 = v12;
  v42 = v8;
  v43 = a4;
  v40[1] = a2;
  v40[2] = a3;
  sub_26B9AC534();
  v17 = [objc_allocWithZone(MEMORY[0x277D659C0]) init];
  v18 = objc_opt_self();
  v19 = sub_26B9AC4C4();
  v20 = sub_26B9AC4C4();
  v21 = [v18 fuzzymatch:v19 pattern:v20];

  if (!v21)
  {

    goto LABEL_9;
  }

  [v17 addTermMatch_];
  [v17 score];
  if (v22 < 0.0)
  {

LABEL_9:
    a4 = v43;
    (*(v9 + 16))(v43, a1, v42);
    goto LABEL_10;
  }

  v25 = v22;
  v26 = sub_26B9AC5E4();

  if (v26)
  {
    v27 = v25 * 1.1;
  }

  else
  {
    v27 = v25;
  }

  v28 = [v17 matchPositions];
  v23 = 0.0;
  v29 = 0.0;
  v30 = v41;
  if (v28)
  {
    v31 = v28;
    sub_26B97819C();
    v32 = sub_26B9AC6F4();

    if (v32 >> 62)
    {
      v33 = sub_26B9ACB44();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v33;
  }

  v34 = sub_26B9AC584();

  v35 = v27 * 0.7 + v27 * 0.3 * (v29 / v34);
  v36 = sub_26B9AC584();

  if (v35 / (v36 * 25.0) <= 1.0)
  {
    v37 = v35 / (v36 * 25.0);
  }

  else
  {
    v37 = 1.0;
  }

  v38 = a1;
  v39 = v42;
  (*(v9 + 16))(v30, v38, v42);
  if (v37 >= 0.0)
  {
    v23 = v37;
  }

  a4 = v43;
  (*(v9 + 32))(v43, v30, v39);
LABEL_11:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  *(a4 + *(result + 28)) = v23;
  return result;
}

uint64_t sub_26B97530C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*a2 + *MEMORY[0x277D84DE8]);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = v41 - v15;
  swift_getAtKeyPath();
  v16 = sub_26B9AC534();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v43 = v10;
    v44 = a1;
    v45 = v9;
    v46 = a5;
    v41[1] = a3;
    v41[2] = a4;
    sub_26B9AC534();
    v20 = [objc_allocWithZone(MEMORY[0x277D659C0]) init];
    v21 = objc_opt_self();
    v22 = sub_26B9AC4C4();
    v23 = sub_26B9AC4C4();
    v24 = [v21 fuzzymatch:v22 pattern:v23];

    if (v24)
    {
      [v20 addTermMatch_];
      [v20 score];
      if (v25 >= 0.0)
      {
        v27 = v25;
        v28 = sub_26B9AC5E4();

        if (v28)
        {
          v29 = v27 * 1.1;
        }

        else
        {
          v29 = v27;
        }

        v30 = [v20 matchPositions];
        v26 = 0.0;
        v31 = 0.0;
        v32 = v44;
        v14 = v42;
        if (v30)
        {
          v33 = v30;
          sub_26B97819C();
          v34 = sub_26B9AC6F4();

          if (v34 >> 62)
          {
            v35 = sub_26B9ACB44();
          }

          else
          {
            v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v31 = v35;
        }

        v36 = sub_26B9AC584();

        v37 = v29 * 0.7 + v29 * 0.3 * (v31 / v36);
        v38 = sub_26B9AC584();

        if (v37 / (v38 * 25.0) <= 1.0)
        {
          v39 = v37 / (v38 * 25.0);
        }

        else
        {
          v39 = 1.0;
        }

        v10 = v43;
        v9 = v45;
        (*(v43 + 16))(v14, v32, v45);
        if (v39 >= 0.0)
        {
          v26 = v39;
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    v10 = v43;
    v9 = v45;
    (*(v43 + 16))(v14, v44, v45);
    v26 = -1.0;
LABEL_22:
    a5 = v46;
    goto LABEL_23;
  }

  (*(v10 + 16))(v14, a1, v9);
  v26 = -1.0;
LABEL_23:
  (*(v10 + 32))(a5, v14, v9);
  result = type metadata accessor for FuzzyRanker.RankedValue();
  *(a5 + *(result + 28)) = v26;
  return result;
}

unint64_t sub_26B97577C(uint64_t a1)
{
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
  v4 = sub_26B9AC454();
  return sub_26B975B00(a1, v4);
}

unint64_t sub_26B9757F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_26B9AC454();

  return sub_26B975BE8(a1, v9, a2, a3);
}

uint64_t sub_26B975854(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D98, &qword_26B9B4300);
  v33 = a2;
  result = sub_26B9ACD74();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        sub_26B9AAAE4();
      }

      v23 = *(v8 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
      result = sub_26B9AC454();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_26B975B00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_26B9AC494())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26B975BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_26B9AC494();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void *sub_26B975D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D98, &qword_26B9B4300);
  v2 = *v0;
  v3 = sub_26B9ACD64();
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
        result = sub_26B9AAAE4();
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

uint64_t sub_26B975ECC(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26B977760(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26B975F80(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26B975F80(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B9ACE64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
        v6 = sub_26B9AC754();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26B97631C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B9760C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B9760C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v8 = *(*(v40 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    v23 = v21;
    v24 = v40;
    while (1)
    {
      sub_26B9236E8(v22, v17, &qword_280426D88, &qword_26B9B42F0);
      sub_26B9236E8(v20, v13, &qword_280426D88, &qword_26B9B42F0);
      v25 = *(v24 + 28);
      v26 = *&v17[v25];
      v27 = *&v13[v25];
      sub_26B8EACD8(v13, &qword_280426D88, &qword_26B9B42F0);
      result = sub_26B8EACD8(v17, &qword_280426D88, &qword_26B9B42F0);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = v35 + v31;
        v21 = v34 - 1;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_26B978274(v22, v39);
      v24 = v40;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_26B978274(v28, v20);
      v20 += v37;
      v22 += v37;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B97631C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v5;
  v110 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v119 = *(v9 - 8);
  v10 = *(v119 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v115 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v123 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v125 = &v108 - v16;
  result = MEMORY[0x28223BE20](v15);
  v124 = &v108 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v110;
    if (!*v110)
    {
      goto LABEL_136;
    }

    v4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_26B932B28(v4);
    }

    v127 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v104 = *(result + 16 * v4);
        v105 = result;
        v106 = *(result + 16 * (v4 - 1) + 40);
        sub_26B976C6C(*a3 + *(v119 + 72) * v104, *a3 + *(v119 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v119 + 72) * v106, a4);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_26B932B28(v105);
        }

        if (v4 - 2 >= *(v105 + 2))
        {
          goto LABEL_124;
        }

        v107 = &v105[16 * v4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v127 = v105;
        sub_26B932A9C(v4 - 1);
        result = v127;
        v4 = *(v127 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v109 = a4;
  v126 = v9;
  while (1)
  {
    v22 = v20;
    v116 = v21;
    if (v20 + 1 >= v19)
    {
      v34 = v20 + 1;
    }

    else
    {
      v111 = v20;
      v23 = *a3;
      v121 = v19;
      v122 = v23;
      v24 = *(v119 + 72);
      v25 = v23 + v24 * (v20 + 1);
      v26 = v124;
      sub_26B9236E8(v25, v124, &qword_280426D88, &qword_26B9B42F0);
      v27 = v111;
      v28 = v23 + v24 * v111;
      v29 = v125;
      sub_26B9236E8(v28, v125, &qword_280426D88, &qword_26B9B42F0);
      v30 = *(v9 + 28);
      v31 = *(v26 + v30);
      v32 = *(v29 + v30);
      sub_26B8EACD8(v29, &qword_280426D88, &qword_26B9B42F0);
      result = sub_26B8EACD8(v26, &qword_280426D88, &qword_26B9B42F0);
      v4 = v27 + 2;
      v120 = v24;
      v33 = v122 + v24 * v4;
      while (1)
      {
        v34 = v121;
        if (v121 == v4)
        {
          break;
        }

        LODWORD(v122) = v32 < v31;
        v35 = v124;
        sub_26B9236E8(v33, v124, &qword_280426D88, &qword_26B9B42F0);
        v36 = v125;
        sub_26B9236E8(v25, v125, &qword_280426D88, &qword_26B9B42F0);
        v37 = *(v126 + 28);
        v38 = *(v35 + v37);
        v39 = *(v36 + v37);
        sub_26B8EACD8(v36, &qword_280426D88, &qword_26B9B42F0);
        result = sub_26B8EACD8(v35, &qword_280426D88, &qword_26B9B42F0);
        ++v4;
        v33 += v120;
        v25 += v120;
        if (((v122 ^ (v39 >= v38)) & 1) == 0)
        {
          v34 = v4 - 1;
          break;
        }
      }

      a4 = v109;
      v9 = v126;
      v22 = v111;
      if (v32 < v31)
      {
        if (v34 < v111)
        {
          goto LABEL_127;
        }

        if (v111 < v34)
        {
          v108 = v6;
          v4 = v120 * (v34 - 1);
          v40 = v34 * v120;
          v41 = v34;
          v42 = v111;
          v43 = v111 * v120;
          v112 = a3;
          do
          {
            if (v42 != --v34)
            {
              v44 = *a3;
              if (!v44)
              {
                goto LABEL_133;
              }

              sub_26B978274(v44 + v43, v115);
              if (v43 < v4 || v44 + v43 >= (v44 + v40))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_26B978274(v115, v44 + v4);
              a3 = v112;
            }

            ++v42;
            v4 -= v120;
            v40 -= v120;
            v43 += v120;
          }

          while (v42 < v34);
          v6 = v108;
          a4 = v109;
          v9 = v126;
          v22 = v111;
          v34 = v41;
        }
      }
    }

    v45 = a3[1];
    if (v34 < v45)
    {
      if (__OFSUB__(v34, v22))
      {
        goto LABEL_126;
      }

      if (v34 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v34 != v46)
        {
          break;
        }
      }
    }

    v20 = v34;
    if (v34 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v116;
    }

    else
    {
      result = sub_26B93088C(0, *(v116 + 2) + 1, 1, v116);
      v21 = result;
    }

    v4 = *(v21 + 2);
    v47 = *(v21 + 3);
    a4 = v4 + 1;
    if (v4 >= v47 >> 1)
    {
      result = sub_26B93088C((v47 > 1), v4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = a4;
    v48 = &v21[16 * v4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    if (!*v110)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      v49 = *v110;
      while (1)
      {
        v50 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_53:
          if (v54)
          {
            goto LABEL_114;
          }

          v67 = &v21[16 * a4];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_117;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_121;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = a4 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v77 = &v21[16 * a4];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_67:
        if (v72)
        {
          goto LABEL_116;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_119;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_74:
        v4 = v50 - 1;
        if (v50 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v88 = v21;
        a4 = *&v21[16 * v4 + 32];
        v89 = *&v21[16 * v50 + 40];
        sub_26B976C6C(*a3 + *(v119 + 72) * a4, *a3 + *(v119 + 72) * *&v21[16 * v50 + 32], *a3 + *(v119 + 72) * v89, v49);
        if (v6)
        {
        }

        if (v89 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_26B932B28(v88);
        }

        v9 = v126;
        if (v4 >= *(v90 + 2))
        {
          goto LABEL_111;
        }

        v91 = &v90[16 * v4];
        *(v91 + 4) = a4;
        *(v91 + 5) = v89;
        v127 = v90;
        v4 = &v127;
        result = sub_26B932A9C(v50);
        v21 = v127;
        a4 = *(v127 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * a4 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_112;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_113;
      }

      v62 = &v21[16 * a4];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_115;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_118;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_122;
        }

        if (v53 < v87)
        {
          v50 = a4 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v19 = a3[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_97;
    }
  }

  v108 = v6;
  v111 = v22;
  v112 = a3;
  v92 = *(v119 + 72);
  v93 = *a3 + v92 * (v34 - 1);
  v94 = -v92;
  v95 = v22 - v34;
  v122 = *a3;
  v113 = v92;
  v114 = v46;
  a4 = v122 + v34 * v92;
LABEL_87:
  v120 = v93;
  v121 = v34;
  v117 = a4;
  v118 = v95;
  v96 = v93;
  v97 = v126;
  while (1)
  {
    v4 = v124;
    sub_26B9236E8(a4, v124, &qword_280426D88, &qword_26B9B42F0);
    v98 = v125;
    sub_26B9236E8(v96, v125, &qword_280426D88, &qword_26B9B42F0);
    v99 = *(v97 + 28);
    v100 = *(v4 + v99);
    v101 = *(v98 + v99);
    sub_26B8EACD8(v98, &qword_280426D88, &qword_26B9B42F0);
    result = sub_26B8EACD8(v4, &qword_280426D88, &qword_26B9B42F0);
    if (v101 >= v100)
    {
LABEL_86:
      v34 = v121 + 1;
      v20 = v114;
      v93 = v120 + v113;
      v95 = v118 - 1;
      a4 = v117 + v113;
      if (v121 + 1 != v114)
      {
        goto LABEL_87;
      }

      v6 = v108;
      v22 = v111;
      a3 = v112;
      v9 = v126;
      if (v114 < v111)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v122)
    {
      break;
    }

    v102 = v123;
    sub_26B978274(a4, v123);
    v97 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_26B978274(v102, v96);
    v96 += v94;
    a4 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_26B976C6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v7 = *(*(v48 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v44 = v26;
      v45 = a4;
      do
      {
        v42 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v46 = v28;
        while (1)
        {
          v31 = v49;
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v42;
            goto LABEL_58;
          }

          v43 = v25;
          v49 += v26;
          v32 = v27 + v26;
          sub_26B9236E8(v32, v12, &qword_280426D88, &qword_26B9B42F0);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v47;
          sub_26B9236E8(v34, v47, &qword_280426D88, &qword_26B9B42F0);
          v37 = *(v48 + 28);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v12 = v35;
          sub_26B8EACD8(v40, &qword_280426D88, &qword_26B9B42F0);
          sub_26B8EACD8(v35, &qword_280426D88, &qword_26B9B42F0);
          if (v39 < v38)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || v49 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v32;
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v32;
            }
          }

          v27 = v25;
          v28 = v46;
          v30 = v32 > v45;
          v26 = v44;
          if (!v30)
          {
            a2 = v46;
            goto LABEL_57;
          }
        }

        if (v31 < v46 || v49 >= v46)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v44;
        }

        else
        {
          v26 = v44;
          a2 = v33;
          if (v31 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v43;
      }

      while (v27 > v45);
    }

LABEL_57:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < v49)
    {
      do
      {
        sub_26B9236E8(a2, v12, &qword_280426D88, &qword_26B9B42F0);
        v21 = v47;
        sub_26B9236E8(a4, v47, &qword_280426D88, &qword_26B9B42F0);
        v22 = *(v48 + 28);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_26B8EACD8(v21, &qword_280426D88, &qword_26B9B42F0);
        sub_26B8EACD8(v12, &qword_280426D88, &qword_26B9B42F0);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v19 && a2 < v49);
    }
  }

LABEL_58:
  sub_26B97716C(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_26B97716C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_26B97725C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DA0, &qword_26B9B4308);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26B97744C(char *a1, int64_t a2, char a3)
{
  result = sub_26B97765C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26B97746C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DA0, &qword_26B9B4308);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D88, &qword_26B9B42F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26B97765C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DB0, &qword_26B9B4320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_26B977774(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26B9ACB44();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426DB8, &qword_26B9B4328);
      result = sub_26B9ACBA4();
      v3 = result;
      v19 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_26B9ACB44();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v19 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v18 = v4;
  while ((v19 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x26D686B00](v5, v19);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    v9 = *(v3 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D90, &qword_26B9B42F8);
    result = sub_26B9AC454();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v6 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      while (1)
      {
        v20 = *(*(v3 + 48) + 8 * v11);
        result = sub_26B9AC494();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v6 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          v4 = v18;
          goto LABEL_22;
        }
      }

      v4 = v18;
      if (v5 == v18)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v7;
      v16 = *(v3 + 16);
      v8 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v17;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v19 + 32 + 8 * v5);
  result = sub_26B9AAAE4();
  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_26B9779C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426D98, &qword_26B9B4300);
    v3 = sub_26B9ACD84();
    sub_26B9AAAE4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = sub_26B9AAAE4();
      result = sub_26B97577C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26B977AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_26B9AC784())
  {
    sub_26B9ACD94();
    v13 = sub_26B9ACD84();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  sub_26B9AAAE4();
  result = sub_26B9AC784();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_26B9AC764())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_26B9ACC24();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_26B9757F8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

BOOL sub_26B977DF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for FuzzyRanker.RankedValue();
  return *(a2 + *(v6 + 28)) < *(a1 + *(v6 + 28));
}

uint64_t sub_26B977E9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B977F14(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}