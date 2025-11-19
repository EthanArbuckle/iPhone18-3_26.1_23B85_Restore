uint64_t PhotosTestableScrollViewReader.init(accessibilityIdentifier:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *(a5 + 24) = a4;
  *(a5 + 32) = result;
  *(a5 + 40) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return result;
}

unint64_t sub_1C11F7898()
{
  result = qword_1EDE76998;
  if (!qword_1EDE76998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97920);
    sub_1C11F8D90(&unk_1EDE769A8, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76998);
  }

  return result;
}

uint64_t sub_1C11F7964(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v3 = type metadata accessor for PhotosTestableScrollView();
  sub_1C11F5834();
  v4 = PhotosSelection.isSelectionBandActive.getter();

  if (v4)
  {
    v5 = *(v3 - 8);
  }

  else
  {
    memcpy(v8, a2, sizeof(v8));
    sub_1C11F5E64();
    memcpy(__src, a2, sizeof(__src));
    v5 = *(v3 - 8);
    (*(v5 + 16))(__dst, a2, v3);
    sub_1C11F5FB0();
    memcpy(__dst, __src, sizeof(__dst));
    (*(v5 + 8))(__dst, v3);
  }

  memcpy(v8, a2, sizeof(v8));
  (*(v5 + 16))(__dst, a2, v3);
  sub_1C1262A50();
  sub_1C1262A40();
  sub_1C11F5E04();
  memcpy(__dst, v8, sizeof(__dst));
  (*(v5 + 8))(__dst, v3);
  memcpy(v8, a2, sizeof(v8));
  return sub_1C11F75D8(v3);
}

uint64_t sub_1C11F7B94(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v3 = type metadata accessor for PhotosTestableScrollView();
  sub_1C11F5834();
  PhotosSelection.isSelectionBandActive.setter(0);

  memcpy(__src, a2, sizeof(__src));
  v7 = 0u;
  v8 = 0u;
  v9 = 1;
  v4 = *(v3 - 8);
  (*(v4 + 16))(__dst, a2, v3);
  sub_1C11F5CE0();
  memcpy(__dst, __src, sizeof(__dst));
  return (*(v4 + 8))(__dst, v3);
}

uint64_t sub_1C11F7CB8()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t PhotosTestableScrollViewReader.body.getter(uint64_t a1)
{
  v3 = v1[1];
  v22 = *v1;
  v23[0] = v3;
  *(v23 + 9) = *(v1 + 25);
  v4 = v1[1];
  v18 = *v1;
  v19[0] = v4;
  *(v19 + 9) = *(v1 + 25);
  sub_1C11F7CB8();
  sub_1C0FF7AA0(v22, *(&v22 + 1), &v20);

  v5 = v20;
  v6 = v21;
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  v9 = v23[0];
  *(v7 + 32) = v22;
  *(v7 + 48) = v9;
  *(v7 + 57) = *(v23 + 9);
  *(v7 + 80) = v5;
  *(v7 + 96) = v6;
  (*(*(a1 - 8) + 16))(&v18, &v22, a1);
  sub_1C1264360();
  OUTLINED_FUNCTION_11_0();
  v10 = sub_1C1263190();
  OUTLINED_FUNCTION_2_60();
  sub_1C11F8D90(v11, v12);
  OUTLINED_FUNCTION_4_0();
  WitnessTable = swift_getWitnessTable();
  *&v18 = v10;
  *(&v18 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  *&v18 = v10;
  *(&v18 + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  *&v20 = sub_1C1263330();
  *(&v20 + 1) = v14;
  v15 = sub_1C1263340();
  OUTLINED_FUNCTION_5_36();
  v16 = swift_getWitnessTable();
  sub_1C0FDBA4C(&v20, v15, v16);

  v20 = v18;
  sub_1C0FDBA4C(&v20, v15, v16);
}

uint64_t sub_1C11F8048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a5;
  v54 = a4;
  v56 = a3;
  v62 = a8;
  v58 = sub_1C1263240();
  v55 = *(v58 - 8);
  v57 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1262AD0();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1264360();
  v19 = sub_1C1263190();
  v53 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v44 - v20;
  v21 = sub_1C11F8D90(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8]);
  v65 = a7;
  v66 = v21;
  WitnessTable = swift_getWitnessTable();
  v63 = v19;
  v64 = WitnessTable;
  v48 = WitnessTable;
  v49 = MEMORY[0x1E697D560];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v46 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v47 = &v44 - v27;
  (*(a2 + 16))(a1, v26);
  sub_1C1264DF0();
  (*(v15 + 8))(v18, a6);
  v28 = v54;

  v29 = v50;
  v30 = v56;
  sub_1C1262AE0();
  v31 = v55;
  v32 = v52;
  v33 = v58;
  (*(v55 + 16))(v52, a1, v58);
  v34 = (*(v31 + 80) + 33) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  *(v35 + 24) = v28;
  *(v35 + 32) = v61;
  (*(v31 + 32))(v35 + v34, v32, v33);

  v36 = v46;
  v37 = v29;
  v38 = v48;
  v39 = v45;
  sub_1C1264F00();

  (*(v59 + 8))(v37, v60);
  (*(v53 + 8))(v39, v19);
  v63 = v19;
  v64 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v47;
  sub_1C0FDBA4C(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v42 = *(v51 + 8);
  v42(v36, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v41, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v42)(v41, OpaqueTypeMetadata2);
}

uint64_t sub_1C11F85A8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v21 = a2;
  v6 = sub_1C1262AB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBE8FD68 != -1)
  {
    swift_once();
  }

  v10 = sub_1C1262720();
  __swift_project_value_buffer(v10, qword_1EBE97908);

  v11 = sub_1C12626F0();
  v12 = sub_1C1266430();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v6;
    v15 = v14;
    v22 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C0FA0E80(v21, a3, &v22);
    _os_log_impl(&dword_1C0F96000, v11, v12, "Performing scroll test %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v6 = v20;
    MEMORY[0x1C68F1630](v15, -1, -1);
    MEMORY[0x1C68F1630](v13, -1, -1);
  }

  switch(a4)
  {
    case 1:
      v17 = swift_allocObject();
      *(v17 + 16) = v21;
      *(v17 + 24) = a3;
      *(v17 + 32) = 1;
      *v9 = sub_1C11F8BD4;
      v9[1] = v17;
      (*(v7 + 104))(v9, *MEMORY[0x1E697BEC0], v6);

      goto LABEL_11;
    case 2:
      v16 = MEMORY[0x1E697BEC8];
      goto LABEL_9;
    case 3:
      v16 = MEMORY[0x1E697BEB8];
      goto LABEL_9;
    default:
      v16 = MEMORY[0x1E697BED0];
LABEL_9:
      (*(v7 + 104))(v9, *v16, v6);
LABEL_11:
      sub_1C1262AC0();
      return (*(v7 + 8))(v9, v6);
  }
}

id sub_1C11F889C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E69C6C40]);

  v7 = sub_1C11F8BE0(a2, a3, a1, 0, 0);
  [v7 setPreventSheetDismissal_];
  return v7;
}

uint64_t sub_1C11F89A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C11F89EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 200);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C11F8A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 232) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C11F8ABC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C11F8AF8(uint64_t a1)
{
  sub_1C1263240();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);

  return sub_1C11F85A8(a1, v3, v4, v5);
}

uint64_t sub_1C11F8B70()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE97908);
  __swift_project_value_buffer(v0, qword_1EBE97908);
  return sub_1C12626E0();
}

id sub_1C11F8BE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_1C1265E70();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1C0FD7FC4;
  v13[3] = &block_descriptor_16;
  v10 = _Block_copy(v13);

LABEL_6:
  v11 = [v5 initWithTestName:v9 scrollView:a3 completionHandler:v10];
  _Block_release(v10);

  return v11;
}

uint64_t sub_1C11F8CE4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_1C1263240() - 8);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1C11F6DC8(v4, v5, v6, v1, v2);
}

uint64_t sub_1C11F8D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_38Tm()
{

  sub_1C1008DBC(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_11_32()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C11F8E88(char a1)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564616F4C746F6ELL;
  switch(a1)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6465646172676564;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x64656C696166;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x6574656C706D6F63;
      break;
    default:
      break;
  }

  MEMORY[0x1C68EF850](v3, v2);
}

uint64_t PhotosItemListLoadingStatus.photosLoadingStatus.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1C12621F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x1E69C4380])
  {
    v9 = 0;
LABEL_7:
    *a1 = v9;
    return result;
  }

  if (result == *MEMORY[0x1E69C4390])
  {
    v9 = 1;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x1E69C4388])
  {
    v9 = 3;
    goto LABEL_7;
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t PhotosLoadingStatus.description.getter()
{
  result = 0x6564616F4C746F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0x6465646172676564;
      break;
    case 2:
      result = 0x64656C696166;
      break;
    case 3:
      result = 0x6574656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PhotosLoadingStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t View.photosLoadingStatus(id:status:requiredChildrenIDs:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  sub_1C0FF4B88(a1, v10);
  v10[40] = v8;
  v11 = a3;
  KeyPath = swift_getKeyPath();
  v13 = 0;
  v14 = swift_getKeyPath();
  v15 = 0;

  MEMORY[0x1C68EE920](v10, a4, &type metadata for PhotosLoadingStateReporter, a5);
  return sub_1C11FA9A8(v10);
}

uint64_t View.photosLoadingStatusDidLoad(requiredStatus:enableDebugHUD:_:)(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;

  sub_1C1265410();
  v17 = 0;
  LOBYTE(v13) = v11;
  BYTE1(v13) = a2;
  *(&v13 + 1) = a3;
  *&v14 = a4;
  BYTE8(v14) = v18[0];
  *&v15 = *(&v18[0] + 1);
  *(&v15 + 1) = swift_getKeyPath();
  v16 = 0;
  MEMORY[0x1C68EE920](&v13, a5, &type metadata for PhotosLoadingStateObserver, a6);
  v18[0] = v13;
  v18[1] = v14;
  v18[2] = v15;
  v19 = v16;
  return sub_1C11FA9D8(v18);
}

uint64_t sub_1C11F939C()
{
  sub_1C1266940();
  MEMORY[0x1C68EF850](979659048, 0xE400000000000000);
  v1 = sub_1C12668A0();
  MEMORY[0x1C68EF850](v1);

  MEMORY[0x1C68EF850](0x737574617473202CLL, 0xE90000000000003ALL);
  sub_1C11F8E88(*(v0 + 40));
  MEMORY[0x1C68EF850](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C11F9524()
{
  sub_1C1266E90();
  sub_1C12668D0();
  MEMORY[0x1C68F07E0](*(v0 + 40));
  return sub_1C1266EE0();
}

uint64_t sub_1C11F9570@<X0>(void *a1@<X8>)
{
  if (qword_1EDE82810 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE82818;
}

uint64_t sub_1C11F95E8()
{
  sub_1C1266E90();
  sub_1C12668D0();
  MEMORY[0x1C68F07E0](*(v0 + 40));
  return sub_1C1266EE0();
}

uint64_t sub_1C11F9638@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *(v1 + 72);
  if (*(v1 + 80) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v8, 0);
    v5 = (*(v4 + 8))(v7, v3);
    LOBYTE(v8) = __src[0];
  }

  MEMORY[0x1EEE9AC00](v5);
  *(&v13 - 2) = v1;
  sub_1C11FFFA0(v8 & 1, sub_1C11FB2F4);
  sub_1C11FB2FC(v1, __src);
  v10 = swift_allocObject();
  memcpy((v10 + 16), __src, 0x51uLL);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97938);
  v12 = (a1 + *(result + 36));
  *v12 = sub_1C11FB334;
  v12[1] = v10;
  return result;
}

uint64_t sub_1C11F9848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C1265940();
  v8 = v7;
  sub_1C11FB2FC(a2, __src);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0x51uLL);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97A90);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97948);
  v12 = (a3 + *(result + 36));
  *v12 = sub_1C11FB57C;
  v12[1] = v9;
  v12[2] = v6;
  v12[3] = v8;
  return result;
}

uint64_t sub_1C11F9944@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97950);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  v9 = sub_1C12637E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a2 + 56);
  if (*(a2 + 64) == 1)
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v60 = *a1;

    sub_1C1266420();
    v15 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v14, 0);
    (*(v10 + 8))(v12, v9);
    v13 = v60;
    if (v66[0] != 1)
    {
LABEL_9:
      v23 = a3;
      v24 = 1;
      return __swift_storeEnumTagSinglePayload(v23, v24, 1, v6);
    }
  }

  if (*(a2 + 40) == 4 && !*(a2 + 48))
  {
    goto LABEL_9;
  }

  v16 = sub_1C11F9E90(v66, v13);
  v18 = v17;
  v67 = v16;
  v68 = v17 & 1;
  sub_1C0FDB800(v66, v64, &qword_1EBE97958);
  v19 = v65;
  sub_1C11FB4F4(v64);
  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  v20 = 0xA400000000000000;
  v21 = 2442895344;
  switch(v19)
  {
    case 1:
      v20 = 0xA600000000000000;
      v22 = 4020280034;
      goto LABEL_11;
    case 2:
      v20 = 0xA600000000000000;
      v22 = 4022108386;
LABEL_11:
      v21 = v22 & 0xFFFF0000FFFFFFFFLL | 0x8FB800000000;
      break;
    case 3:
      v20 = 0xA300000000000000;
      v21 = 8756450;
      break;
    default:
      break;
  }

  MEMORY[0x1C68EF850](v21, v20);

  v59 = a3;
  if (v18)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v61 = 32;
    v62 = 0xE100000000000000;
    v27 = sub_1C1266260();
    MEMORY[0x1C68EF850](v27);

    MEMORY[0x1C68EF850](37, 0xE100000000000000);
    v25 = v61;
    v26 = v62;
  }

  MEMORY[0x1C68EF850](v25, v26);

  v61 = sub_1C1265190();
  v60 = sub_1C1264850();
  v58 = v28;
  v30 = v29;
  v32 = v31;

  v33 = sub_1C1264470();
  sub_1C12628A0();
  v34 = v30 & 1;
  LOBYTE(v61) = v30 & 1;
  v63 = 0;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  switch(v19)
  {
    case 0:
      v43 = sub_1C1265120();
      break;
    case 1:
      v43 = sub_1C12651D0();
      break;
    case 2:
      v43 = sub_1C12651C0();
      break;
    case 3:
      v43 = sub_1C1265180();
      break;
    default:
      JUMPOUT(0);
  }

  v44 = v43;
  v45 = sub_1C1264470();
  sub_1C0FD1A5C(v66, &qword_1EBE97958);
  v46 = &v8[*(v6 + 36)];
  v47 = *(sub_1C1263320() + 20);
  v48 = *MEMORY[0x1E697F468];
  v49 = sub_1C12639D0();
  (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
  __asm { FMOV            V0.2D, #2.0 }

  *v46 = _Q0;
  *&v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40) + 36)] = 256;
  v55 = v58;
  *v8 = v60;
  *(v8 + 1) = v55;
  v8[16] = v34;
  *(v8 + 3) = v32;
  v8[32] = v33;
  *(v8 + 5) = v36;
  *(v8 + 6) = v38;
  *(v8 + 7) = v40;
  *(v8 + 8) = v42;
  v8[72] = 0;
  *(v8 + 10) = v44;
  v8[88] = v45;
  v56 = v59;
  sub_1C0FDB71C(v8, v59, &qword_1EBE97950);
  v23 = v56;
  v24 = 0;
  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v6);
}

uint64_t sub_1C11F9E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v3 + 40) >= 3u)
  {
    v6 = 3;
  }

  else
  {
    v6 = *(v3 + 40);
  }

  v7 = *(v3 + 48);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v30 = v6;
      v31 = v3;
      v32 = a1;

      v9 = sub_1C10FE3C0(v8);
      v10 = 0;
      v11 = *(a2 + 16);
      v12 = a2 + 32;
      v13 = MEMORY[0x1E69E7CC0];
LABEL_7:
      while (v10 != v11)
      {
        v14 = v10 + 1;
        sub_1C11FB4BC(v12 + 48 * v10, &v35);
        if (*(v9 + 16))
        {
          v15 = sub_1C12668B0();
          v16 = ~(-1 << *(v9 + 32));
          while (1)
          {
            v17 = v15 & v16;
            if (((*(v9 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
            {
              break;
            }

            sub_1C0FF4B88(*(v9 + 48) + 40 * v17, &v33);
            v18 = MEMORY[0x1C68F0200](&v33, &v35);
            sub_1C0FD1A08(&v33);
            v15 = v17 + 1;
            if (v18)
            {
              v33 = v35;
              v34[0] = v36[0];
              *(v34 + 9) = *(v36 + 9);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v37 = v13;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C1102450(0, *(v13 + 16) + 1, 1);
                v13 = v37;
              }

              v21 = *(v13 + 16);
              v20 = *(v13 + 24);
              if (v21 >= v20 >> 1)
              {
                sub_1C1102450((v20 > 1), v21 + 1, 1);
                v13 = v37;
              }

              *(v13 + 16) = v21 + 1;
              v22 = (v13 + 48 * v21);
              v23 = v33;
              v24 = v34[0];
              *(v22 + 57) = *(v34 + 9);
              v22[2] = v23;
              v22[3] = v24;
              v10 = v14;
              goto LABEL_7;
            }
          }
        }

        sub_1C11FB4F4(&v35);
        v10 = v14;
      }

      v25 = *(v13 + 16);
      if (v25 >= *(v9 + 16))
      {
        sub_1C11FA85C(v13, &v35);

        v26 = v35;
      }

      else
      {

        v26 = 0;
      }

      v28 = *(v9 + 16);

      v27 = v25 / v28;
      LOBYTE(v6) = v30;
      if (v26 < v30)
      {
        LOBYTE(v6) = v26;
      }

      v3 = v31;
      a1 = v32;
    }

    else
    {
      v27 = 0.0;
    }
  }

  else
  {
    sub_1C11FA85C(a2, &v35);
    v27 = 0.0;
    if (v35 < v6)
    {
      LOBYTE(v6) = v35;
    }
  }

  sub_1C0FF4B88(v3, a1);
  *(a1 + 40) = v6;
  return *&v27;
}

__n128 sub_1C11FA10C(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97940);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v54 - v5;
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  result.n128_u64[0] = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 56);
  v58 = a2;
  if (*(a2 + 64) == 1)
  {
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  else
  {

    sub_1C1266420();
    v13 = v4;
    v14 = v6;
    v15 = a1;
    v16 = sub_1C1264410();
    sub_1C1262620();

    a1 = v15;
    v6 = v14;
    v4 = v13;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v12, 0);
    (*(v8 + 8))(v11, v7);
    if (v67[0] != 1)
    {
      return result;
    }
  }

  v17 = *a1;

  v18 = sub_1C11F9E90(&v70, v17);
  v20 = v19;

  if (qword_1EDE7C180 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v4, qword_1EDE776E0);
  sub_1C0FDB800(v21, v6, &qword_1EBE97940);
  v22 = sub_1C1262720();
  if (__swift_getEnumTagSinglePayload(v6, 1, v22) == 1)
  {

    sub_1C0FD1A5C(v6, &qword_1EBE97940);
  }

  else
  {
    sub_1C11FB4BC(&v70, v69);
    v23 = v58;
    sub_1C11FB2FC(v58, v67);
    sub_1C11FB2FC(v23, v65);

    v24 = sub_1C12626F0();
    v25 = sub_1C1266430();

    if (os_log_type_enabled(v24, v25))
    {
      v54[1] = v18;
      v56 = v25;
      v57 = v24;
      v58 = a1;
      v26 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64 = v55;
      *v26 = 136316162;
      sub_1C11FB4BC(v69, &v61);
      v27 = 0xE000000000000000;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1C1266940();
      MEMORY[0x1C68EF850](979659048, 0xE400000000000000);
      v28 = sub_1C12668A0();
      MEMORY[0x1C68EF850](v28);

      MEMORY[0x1C68EF850](0x737574617473202CLL, 0xE90000000000003ALL);
      sub_1C11F8E88(v63);
      MEMORY[0x1C68EF850](41, 0xE100000000000000);
      v29 = v59;
      v30 = v60;
      sub_1C11FB4F4(&v61);
      sub_1C11FB4F4(v69);
      v31 = sub_1C0FA0E80(v29, v30, &v64);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      if (v20)
      {
        v32 = 0;
      }

      else
      {
        v61 = 32;
        v62 = 0xE100000000000000;
        v33 = sub_1C1266260();
        MEMORY[0x1C68EF850](v33);

        MEMORY[0x1C68EF850](37, 0xE100000000000000);
        v32 = v61;
        v27 = v62;
      }

      v34 = sub_1C0FA0E80(v32, v27, &v64);

      *(v26 + 14) = v34;
      *(v26 + 22) = 2080;
      v35 = v68;
      v36 = 0xE000000000000000;
      if (v68 == 4)
      {
        v37 = 0;
      }

      else
      {
        v61 = 0;
        v62 = 0xE000000000000000;
        MEMORY[0x1C68EF850](0x617453666C657320, 0xEC0000003A737574);
        sub_1C11F8E88(v35);
        v37 = v61;
        v36 = v62;
      }

      sub_1C11FA9A8(v67);
      v38 = sub_1C0FA0E80(v37, v36, &v64);

      *(v26 + 24) = v38;
      *(v26 + 32) = 2080;
      v39 = v66;
      v40 = 0xE000000000000000;
      if (v66)
      {
        v61 = 0;
        v62 = 0xE000000000000000;

        sub_1C1266940();

        v61 = 0xD000000000000015;
        v62 = 0x80000001C126DBB0;
        v41 = MEMORY[0x1C68EFA00](v39, MEMORY[0x1E69E69B8]);
        MEMORY[0x1C68EF850](v41);

        v39 = v61;
        v40 = v62;
      }

      sub_1C11FA9A8(v65);
      v42 = sub_1C0FA0E80(v39, v40, &v64);

      *(v26 + 34) = v42;
      *(v26 + 42) = 2080;
      if (*(v17 + 16))
      {
        v61 = 0x6572646C69686320;
        v62 = 0xEA00000000003A6ELL;
        v43 = MEMORY[0x1C68EFA00](v17, &type metadata for PhotosLoadingState);
        v45 = v44;

        MEMORY[0x1C68EF850](v43, v45);

        v46 = v61;
        v47 = v62;
      }

      else
      {

        v46 = 0;
        v47 = 0xE000000000000000;
      }

      a1 = v58;
      v48 = sub_1C0FA0E80(v46, v47, &v64);

      *(v26 + 44) = v48;
      v49 = v57;
      _os_log_impl(&dword_1C0F96000, v57, v56, "PhotosLoadingStatus %s%s <=%s%s%s", v26, 0x34u);
      v50 = v55;
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v50, -1, -1);
      MEMORY[0x1C68F1630](v26, -1, -1);
    }

    else
    {

      sub_1C11FA9A8(v67);
      sub_1C11FB4F4(v69);
      sub_1C11FA9A8(v65);
    }

    (*(*(v22 - 8) + 8))(v6, v22);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90868);
  v51 = swift_allocObject();
  v52 = v70;
  v53 = v71[0];
  v51[1] = xmmword_1C12A8B40;
  v51[2] = v52;
  v51[3] = v53;
  result = *(v71 + 9);
  *(v51 + 57) = *(v71 + 9);
  *a1 = v51;
  return result;
}

uint64_t sub_1C11FA85C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    sub_1C11FB4BC(result + 32, &v9);
    for (i = v4 + 80; --v3; i += 48)
    {
      sub_1C11FB4BC(i, &v7);
      if (v8[24] >= v10[24])
      {
        sub_1C11FB4F4(&v7);
      }

      else
      {
        sub_1C11FB4F4(&v9);
        v9 = v7;
        *v10 = *v8;
        *&v10[9] = *&v8[9];
      }
    }

    *&v12[9] = *&v10[9];
    v11 = v9;
    *v12 = *v10;
    v6 = v10[24];
    result = sub_1C11FB4F4(&v11);
  }

  else
  {
    v6 = 3;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1C11FA960(void (*a1)(void))
{
  a1();
  sub_1C12637F0();
  return v2;
}

_BYTE *storeEnumTagSinglePayload for PhotosLoadingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C11FAAD4()
{
  result = qword_1EDE80E40;
  if (!qword_1EDE80E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80E40);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06PhotosA6UICore0F20LoadingStateReporter33_AA1FB0B1704421D3018AB20A12EDD1ABLLVGAaBHPxAaBHD1__AhA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1C1263190();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1C11FAB98()
{
  result = qword_1EDE80E48;
  if (!qword_1EDE80E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80E48);
  }

  return result;
}

uint64_t sub_1C11FABEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C11FAC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C11FAC8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C11FACCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C11FAD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97960);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97968);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97970);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = v2[1];
  v45 = *v2;
  *v46 = v16;
  *&v46[16] = v2[2];
  v47 = *(v2 + 48);
  KeyPath = swift_getKeyPath();
  v17 = *(v2 + 5);
  v48 = v17;
  v49 = *(v2 + 48);
  if (v49 == 1)
  {
    if (v17)
    {
LABEL_3:
      v18 = 1;
      goto LABEL_8;
    }
  }

  else
  {

    sub_1C1266420();
    v19 = sub_1C1264410();
    v38 = v9;
    v20 = v15;
    v21 = v10;
    v22 = v12;
    v23 = v7;
    v24 = v13;
    v25 = a1;
    v26 = a2;
    v27 = v19;
    sub_1C1262620();

    a2 = v26;
    a1 = v25;
    v13 = v24;
    v7 = v23;
    v12 = v22;
    v10 = v21;
    v15 = v20;
    v9 = v38;
    v28 = v39;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v48, &qword_1EBE96D30);
    (*(v40 + 8))(v28, v41);
    if (v44[0])
    {
      goto LABEL_3;
    }
  }

  if (v45 == 4)
  {
    v18 = 0;
  }

  else
  {
    v44[0] = *&v46[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    sub_1C1265420();
    v18 = v43 ^ 1;
  }

LABEL_8:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97978);
  (*(*(v29 - 8) + 16))(v9, a1, v29);
  v30 = &v9[*(v7 + 36)];
  *v30 = KeyPath;
  v30[8] = v18 & 1;
  v31 = swift_getKeyPath();
  v32 = BYTE1(v45);
  sub_1C0FDB71C(v9, v12, &qword_1EBE97960);
  v33 = &v12[*(v10 + 36)];
  *v33 = v31;
  v33[8] = v32;
  v34 = swift_allocObject();
  v35 = *v46;
  *(v34 + 16) = v45;
  *(v34 + 32) = v35;
  *(v34 + 48) = *&v46[16];
  *(v34 + 64) = v47;
  sub_1C0FDB71C(v12, v15, &qword_1EBE97968);
  v36 = &v15[*(v13 + 36)];
  *v36 = sub_1C11FB584;
  v36[1] = v34;
  sub_1C0FDB71C(v15, a2, &qword_1EBE97970);
  return sub_1C11FB58C(&v45, v44);
}

uint64_t *sub_1C11FB20C(uint64_t *result, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 != 4)
  {
    v4 = *result;
    v8 = *(a2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    result = sub_1C1265420();
    if ((v7 & 1) == 0)
    {
      result = sub_1C11FA85C(v4, &v8);
      v5 = v8;
      if (v8 >= v2)
      {
        v8 = *(a2 + 24);
        sub_1C1265430();
        v6 = *(a2 + 1);
        LOBYTE(v8) = v5;
        return v6(&v8);
      }
    }
  }

  return result;
}

void sub_1C11FB33C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C1265E70();
  v2 = [v0 BOOLForKey_];

  byte_1EDE78BC8 = v2;
}

uint64_t sub_1C11FB3CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97940);
  __swift_allocate_value_buffer(v0, qword_1EDE776E0);
  v1 = __swift_project_value_buffer(v0, qword_1EDE776E0);
  if (qword_1EDE7E498 != -1)
  {
    swift_once();
  }

  if (byte_1EDE78BC8 == 1)
  {
    sub_1C12626E0();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_1C1262720();

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, v3);
}

uint64_t objectdestroyTm_21()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  sub_1C1008DBC(*(v0 + 72), *(v0 + 80));
  sub_1C1008DBC(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

unint64_t sub_1C11FB5C4()
{
  result = qword_1EDE80E50;
  if (!qword_1EDE80E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80E50);
  }

  return result;
}

unint64_t sub_1C11FB618()
{
  result = qword_1EDE80E58[0];
  if (!qword_1EDE80E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE80E58);
  }

  return result;
}

unint64_t sub_1C11FB6AC()
{
  result = qword_1EDE7BF28;
  if (!qword_1EDE7BF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97938);
    sub_1C11FB764();
    sub_1C0FDB6D4(&qword_1EDE7B9C0, &qword_1EBE97988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF28);
  }

  return result;
}

unint64_t sub_1C11FB764()
{
  result = qword_1EDE7BC10;
  if (!qword_1EDE7BC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97980);
    sub_1C11FB81C();
    sub_1C0FDB6D4(&qword_1EDE7BB20, &unk_1EBE97A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC10);
  }

  return result;
}

unint64_t sub_1C11FB81C()
{
  result = qword_1EDE7BF00;
  if (!qword_1EDE7BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97948);
    sub_1C0FDB6D4(&qword_1EDE7BB20, &unk_1EBE97A90);
    sub_1C0FDB6D4(&qword_1EDE7B9F8, &qword_1EBE97AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF00);
  }

  return result;
}

unint64_t sub_1C11FB900()
{
  result = qword_1EDE7BD50;
  if (!qword_1EDE7BD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97970);
    sub_1C11FB9B8();
    sub_1C0FDB6D4(&qword_1EDE7BA28, &qword_1EBE97990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD50);
  }

  return result;
}

unint64_t sub_1C11FB9B8()
{
  result = qword_1EDE7BDD8;
  if (!qword_1EDE7BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97968);
    sub_1C11FBA70();
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDD8);
  }

  return result;
}

unint64_t sub_1C11FBA70()
{
  result = qword_1EDE7BF08;
  if (!qword_1EDE7BF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97960);
    sub_1C0FDB6D4(&qword_1EDE7BB28, &qword_1EBE97978);
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF08);
  }

  return result;
}

unint64_t sub_1C11FBB58()
{
  result = qword_1EBE97998;
  if (!qword_1EBE97998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97998);
  }

  return result;
}

void sub_1C11FBBB8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C100D318(319, &qword_1EDE77600);
    if (v1 <= 0x3F)
    {
      sub_1C1011E54();
      if (v2 <= 0x3F)
      {
        sub_1C100D318(319, &qword_1EDE77540);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C11FBCA0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_1C12629F0();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  v14 = 8;
  if (v13 > 8)
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if (v7 > 0xFE)
    {

      return __swift_getEnumTagSinglePayload(&a1[v15 + 2] & ~v15, v7, v5);
    }

    else
    {
      v24 = *a1;
      v25 = v24 >= 2;
      v26 = (v24 + 2147483646) & 0x7FFFFFFF;
      if (v25)
      {
        return (v26 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v16 = *(v12 + 80) & 0xF8 | 7;
    v17 = ((v14 + ((v16 + ((*(v6 + 64) + ((v15 + 2) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v17 <= 3)
    {
      v18 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = a1[v17];
        if (!a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 2:
        v21 = *&a1[v17];
        if (!*&a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *&a1[v17];
        if (!v21)
        {
          goto LABEL_31;
        }

LABEL_24:
        v22 = v17 > 3;
        if (v17 <= 3)
        {
          v23 = (v21 - 1) << (8 * v17);
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }

        result = v8 + (v27 | v23) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1C11FBEE4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C12629F0() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((*(v8 + 64) + ((v13 + 2) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v10 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v9 > 0xFE)
          {

            __swift_storeEnumTagSinglePayload(&a1[v13 + 2] & ~v13, a2, v9, v7);
          }

          else
          {
            *a1 = a2 + 1;
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v20 = (v19 >> 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    if (v15 > 3)
    {
      *a1 = v19;
    }

    else
    {
      *a1 = v19;
    }

    switch(v18)
    {
      case 1:
        a1[v15] = v20;
        break;
      case 2:
        *&a1[v15] = v20;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v15] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C11FC1D4@<X0>(char a1@<W0>, char a2@<W1>, void (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PhotosItemsListCellContainer();
  a3();
  v7 = v6[11];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(&a4[v7], __src, 0xD1uLL);
  v8 = v6[12];
  *&a4[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v9 = &a4[v6[13]];
  result = swift_getKeyPath();
  *v9 = result;
  v9[8] = 0;
  return result;
}

uint64_t sub_1C11FC2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE979A0);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v5 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v26 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE979A8);
  v10 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v27 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_1C1265940();
  v18 = *(a1 + 24);
  v32 = v4;
  v33 = v18;
  v34 = v2;
  sub_1C12655B0();
  v29 = v4;
  v30 = v18;
  v31 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979B0);
  OUTLINED_FUNCTION_13_0();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7C058, &qword_1EBE979B0);
  sub_1C10A0734();
  sub_1C1264950();
  (*(v26 + 8))(v9, v5);
  OUTLINED_FUNCTION_6_2();
  v21 = sub_1C0FDB6D4(v20, &qword_1EBE979A8);
  v35 = WitnessTable;
  v36 = v21;
  OUTLINED_FUNCTION_4_0();
  v22 = swift_getWitnessTable();
  sub_1C0FDBA4C(v14, v10, v22);
  v23 = *(v27 + 8);
  v23(v14, v10);
  sub_1C0FDBA4C(v17, v10, v22);
  return (v23)(v17, v10);
}

uint64_t sub_1C11FC604@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979A0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  v24 = type metadata accessor for PhotosItemsListCellContainer();
  sub_1C0FDBA4C(&a1[*(v24 + 40)], a2, a3);
  *v9 = sub_1C1263AA0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979C0);
  sub_1C11FC950(a1, &v9[*(v25 + 44)]);
  if (*a1)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = 1.0;
  }

  sub_1C0FDB71C(v9, v13, &qword_1EBE979B8);
  v27 = v32;
  *&v13[*(v32 + 36)] = v26;
  sub_1C0FDB71C(v13, v16, &qword_1EBE979A0);
  (*(v17 + 16))(v20, v23, a2);
  v38[0] = v20;
  v28 = v33;
  sub_1C0FDB800(v16, v33, &qword_1EBE979A0);
  v38[1] = v28;
  v37[0] = a2;
  v37[1] = v27;
  v35 = a3;
  v36 = sub_1C11FDD54();
  sub_1C119EE80(v38, 2, v37);
  sub_1C0FD1A5C(v16, &qword_1EBE979A0);
  v29 = *(v17 + 8);
  v29(v23, a2);
  sub_1C0FD1A5C(v28, &qword_1EBE979A0);
  return (v29)(v20, a2);
}

uint64_t sub_1C11FC950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1265670();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979C8);
  MEMORY[0x1EEE9AC00](v61);
  v11 = v59 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979D0);
  MEMORY[0x1EEE9AC00](v65);
  v13 = v59 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979D8);
  MEMORY[0x1EEE9AC00](v67);
  v69 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = v59 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v68 = v59 - v18;
  v62 = v9;
  sub_1C1265660();
  v60 = sub_1C12644A0();
  v19 = *(type metadata accessor for PhotosItemsListCellContainer() + 44);
  memcpy(v79, (a1 + v19), 0xD1uLL);
  memcpy(v80, (a1 + v19), 0xD1uLL);
  if (sub_1C100D688(v80) == 1)
  {
    nullsub_1(v80);
    memcpy(v76, v79, 0xD1uLL);
    v20 = nullsub_1(v76);
    memcpy(v78, v20, sizeof(v78));
    memcpy(v77, v79, 0xD1uLL);
    v21 = nullsub_1(v77);
    sub_1C100D690(v21, v73);
  }

  else
  {
    nullsub_1(v80);
    memcpy(v76, v79, 0xD1uLL);
    v59[1] = *nullsub_1(v76);
    memcpy(v77, v79, 0xD1uLL);
    nullsub_1(v77);

    sub_1C1266420();
    v22 = a1;
    v23 = v6;
    v24 = v4;
    v25 = v3;
    v26 = v13;
    v27 = v11;
    v28 = sub_1C1264410();
    sub_1C1262620();

    v11 = v27;
    v13 = v26;
    v3 = v25;
    v4 = v24;
    v6 = v23;
    a1 = v22;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v79, &qword_1EBE91C80);
    (*(v4 + 8))(v6, v3);
  }

  memcpy(v75, v78, sizeof(v75));
  sub_1C100C7D0(v75);
  sub_1C12628A0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  (*(v63 + 32))(v11, v62, v64);
  v37 = &v11[*(v61 + 36)];
  *v37 = v60;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_1C12644C0();
  memcpy(v76, (a1 + v19), 0xD1uLL);
  memcpy(v77, (a1 + v19), 0xD1uLL);
  if (sub_1C100D688(v77) == 1)
  {
    nullsub_1(v77);
    memcpy(v72, v76, 0xD1uLL);
    v39 = nullsub_1(v72);
    memcpy(v74, v39, sizeof(v74));
    memcpy(v73, v76, 0xD1uLL);
    v40 = nullsub_1(v73);
    sub_1C100D690(v40, &v71);
  }

  else
  {
    nullsub_1(v77);
    memcpy(v72, v76, 0xD1uLL);
    nullsub_1(v72);
    memcpy(v73, v76, 0xD1uLL);
    nullsub_1(v73);

    sub_1C1266420();
    v41 = v3;
    v42 = v4;
    v43 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v76, &qword_1EBE91C80);
    (*(v42 + 8))(v6, v41);
  }

  memcpy(v73, v74, 0xD0uLL);
  sub_1C100C7D0(v73);
  sub_1C12628A0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_1C0FDB71C(v11, v13, &qword_1EBE979C8);
  v52 = v66;
  v53 = &v13[*(v65 + 36)];
  *v53 = v38;
  *(v53 + 1) = v45;
  *(v53 + 2) = v47;
  *(v53 + 3) = v49;
  *(v53 + 4) = v51;
  v53[40] = 0;
  sub_1C0FDB71C(v13, v52, &qword_1EBE979D0);
  v54 = v68;
  *(v52 + *(v67 + 36)) = 0x3FE999999999999ALL;
  sub_1C0FDB71C(v52, v54, &qword_1EBE979D8);
  v55 = v69;
  sub_1C0FDB800(v54, v69, &qword_1EBE979D8);
  v56 = v70;
  sub_1C0FDB800(v55, v70, &qword_1EBE979D8);
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979E0) + 48);
  *v57 = 0;
  *(v57 + 8) = 1;
  sub_1C0FD1A5C(v54, &qword_1EBE979D8);
  return sub_1C0FD1A5C(v55, &qword_1EBE979D8);
}

uint64_t sub_1C11FD0AC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = type metadata accessor for PhotosItemsListCellContainer();
  v6 = sub_1C11FD11C(v3, v4, v5);
  result = sub_1C11FD428(v5);
  *a2 = v6;
  *(a2 + 8) = result;
  *(a2 + 16) = 256;
  return result;
}

uint64_t sub_1C11FD11C(char a1, char a2, uint64_t a3)
{
  v6 = sub_1C1263E90();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1C11FDCD0(a3))
  {
    if (a1)
    {
      v12 = sub_1C11FD878(a3);
      if (a2)
      {
        v13 = *(v9 + 20);
        v14 = *MEMORY[0x1E697F468];
        v15 = sub_1C12639D0();
        (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
        *v11 = v12;
        v11[1] = v12;
        sub_1C11FDD0C(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
        return sub_1C1265740();
      }

      sub_1C11FD878(a3);
      v19 = *(v6 + 20);
      v20 = *MEMORY[0x1E697F468];
      v21 = sub_1C12639D0();
      (*(*(v21 - 8) + 104))(&v8[v19], v20, v21);
LABEL_11:
      sub_1C1263D30();
      *v8 = v22;
      *(v8 + 1) = v23;
      *(v8 + 2) = v24;
      *(v8 + 3) = v25;
      sub_1C11FDD0C(&qword_1EDE7BAB8, MEMORY[0x1E697FF20]);
      return sub_1C1265740();
    }

    if (a2)
    {
      sub_1C11FD878(a3);
      sub_1C11FD878(a3);
      v16 = *(v6 + 20);
      v17 = *MEMORY[0x1E697F468];
      v18 = sub_1C12639D0();
      (*(*(v18 - 8) + 104))(&v8[v16], v17, v18);
      goto LABEL_11;
    }
  }

  sub_1C100AE3C();

  return sub_1C1265740();
}

uint64_t sub_1C11FD428(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C12629F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C11FDCD0(a1))
  {
    v12 = *(a1 + 44);
    memcpy(v32, (v2 + v12), 0xD1uLL);
    memcpy(v33, (v2 + v12), 0xD1uLL);
    if (sub_1C100D688(v33) == 1)
    {
      nullsub_1(v33);
      memcpy(v29, v32, 0xD1uLL);
      v13 = nullsub_1(v29);
      memcpy(v31, v13, sizeof(v31));
      memcpy(v30, v32, 0xD1uLL);
      v14 = nullsub_1(v30);
      sub_1C100D690(v14, &v28);
    }

    else
    {
      nullsub_1(v33);
      memcpy(v29, v32, 0xD1uLL);
      v26[1] = *nullsub_1(v29);
      memcpy(v30, v32, 0xD1uLL);
      nullsub_1(v30);

      sub_1C1266420();
      v16 = sub_1C1264410();
      v27 = v7;
      v17 = v8;
      v18 = v9;
      v19 = v5;
      v20 = v16;
      sub_1C1262620();

      v5 = v19;
      v9 = v18;
      v8 = v17;
      v7 = v27;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(v32, &qword_1EBE91C80);
      (*(v9 + 8))(v11, v8);
    }

    memcpy(v30, v31, 0xD0uLL);
    sub_1C0FD7494(v7);
    v21 = v2 + *(a1 + 52);
    v22 = *v21;
    if (*(v21 + 8) != 1)
    {

      sub_1C1266420();
      v23 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C1008DBC(v22, 0);
      (*(v9 + 8))(v11, v8);
      LOBYTE(v22) = v29[0];
    }

    if (v30[20] & 1) != 0 || (v22)
    {
      v29[0] = v30[16];
      v29[1] = v30[17];
      v29[2] = v30[18];
      v29[3] = v30[19];
      sub_1C1012620(v30[16], v30[17], v30[18], v30[19]);
      sub_1C10C37D8();
      v24 = v25;
      (*(v5 + 8))(v7, v4);
      sub_1C1001C84(v29[0], v29[1], v29[2], v29[3]);
    }

    else
    {
      v24 = sub_1C1265170();
      (*(v5 + 8))(v7, v4);
    }

    sub_1C100C7D0(v30);
    return v24;
  }

  else
  {

    return sub_1C1265170();
  }
}

double sub_1C11FD878(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 44);
  memcpy(v16, (v1 + v7), 0xD1uLL);
  memcpy(v17, (v1 + v7), 0xD1uLL);
  if (sub_1C100D688(v17) == 1)
  {
    nullsub_1(v17);
    memcpy(v13, v16, 0xD1uLL);
    v8 = nullsub_1(v13);
    memcpy(v15, v8, sizeof(v15));
    memcpy(v14, v16, 0xD1uLL);
    v9 = nullsub_1(v14);
    sub_1C100D690(v9, v12);
  }

  else
  {
    nullsub_1(v17);
    memcpy(v13, v16, 0xD1uLL);
    nullsub_1(v13);
    memcpy(v14, v16, 0xD1uLL);
    nullsub_1(v14);

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v16, &qword_1EBE91C80);
    (*(v4 + 8))(v6, v3);
  }

  memcpy(v14, v15, 0xD0uLL);
  sub_1C100C7D0(v14);
  return *&v14[21];
}

double sub_1C11FDAA4(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 44);
  memcpy(v16, (v1 + v7), 0xD1uLL);
  memcpy(v17, (v1 + v7), 0xD1uLL);
  if (sub_1C100D688(v17) == 1)
  {
    nullsub_1(v17);
    memcpy(v13, v16, 0xD1uLL);
    v8 = nullsub_1(v13);
    memcpy(v15, v8, sizeof(v15));
    memcpy(v14, v16, 0xD1uLL);
    v9 = nullsub_1(v14);
    sub_1C100D690(v9, v12);
  }

  else
  {
    nullsub_1(v17);
    memcpy(v13, v16, 0xD1uLL);
    nullsub_1(v13);
    memcpy(v14, v16, 0xD1uLL);
    nullsub_1(v14);

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v16, &qword_1EBE91C80);
    (*(v4 + 8))(v6, v3);
  }

  memcpy(v14, v15, 0xD0uLL);
  sub_1C100C7D0(v14);
  return *&v14[14];
}

uint64_t sub_1C11FDD0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C11FDD54()
{
  result = qword_1EDE7BE00;
  if (!qword_1EDE7BE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE979A0);
    sub_1C0FDB6D4(&qword_1EDE7B7D0, &qword_1EBE979B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE00);
  }

  return result;
}

uint64_t PhotosScenePhase.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v2 = *(type metadata accessor for PhotosScenePhase(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE938B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C11FDE8C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_2();
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C11FDFD0()
{
  sub_1C11FED90();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C11FE068@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE938B0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PhotosScenePhase(0);
  sub_1C11FED20(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1262930();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PhotosScenePhase.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  if (sub_1C11FDE8C())
  {
    sub_1C0F9B65C(v4);

    v5 = sub_1C1262930();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  else
  {
    v7 = sub_1C1262930();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    sub_1C11FE068(a1);
    result = __swift_getEnumTagSinglePayload(v4, 1, v7);
    if (result != 1)
    {
      return sub_1C11FE38C(v4);
    }
  }

  return result;
}

uint64_t sub_1C11FE38C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.photosScenePhase(scenePhaseModel:)()
{
  swift_getKeyPath();

  sub_1C1264A30();
}

uint64_t sub_1C11FE47C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1262930();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosScenePhaseModel___phase;
  swift_beginAccess();
  v11 = *(v6 + 16);
  v11(v9, v2 + v10, v4);
  OUTLINED_FUNCTION_1_52();
  sub_1C0F9B7A4(v12, v13);
  v18 = a1;
  LOBYTE(a1) = sub_1C1265DE0();
  v14 = *(v6 + 8);
  v14(v9, v4);
  if (a1)
  {
    v11(v9, v18, v4);
    swift_beginAccess();
    (*(v6 + 40))(v2 + v10, v9, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16 = v18;
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v16;
    sub_1C11FE88C();
  }

  return (v14)(v18, v4);
}

uint64_t sub_1C11FE6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  sub_1C1262930();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t sub_1C11FE770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1262930();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosScenePhaseModel___phase;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t PhotosScenePhaseModel.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosScenePhaseModel___phase;
  sub_1C1262930();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosScenePhaseModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t PhotosScenePhaseModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosScenePhaseModel___phase;
  sub_1C1262930();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosScenePhaseModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void sub_1C11FEAB8()
{
  sub_1C11FEB3C();
  if (v0 <= 0x3F)
  {
    sub_1C11FEBA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C11FEB3C()
{
  if (!qword_1EDE77650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE979F8);
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77650);
    }
  }
}

void sub_1C11FEBA0()
{
  if (!qword_1EDE77598)
  {
    sub_1C1262930();
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77598);
    }
  }
}

unint64_t sub_1C11FEC3C()
{
  result = qword_1EDE7B9B0;
  if (!qword_1EDE7B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B9B0);
  }

  return result;
}

uint64_t sub_1C11FECBC()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EDE9B650);
  __swift_project_value_buffer(v0, qword_1EDE9B650);
  return sub_1C12626E0();
}

uint64_t sub_1C11FED20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE938B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C11FED90()
{
  result = qword_1EDE812F0;
  if (!qword_1EDE812F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE812F0);
  }

  return result;
}

uint64_t PhotosDetailsNavigationTransitionInfoRepository.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

_BYTE *PhotosDetailsNavigationTransitionInfo.init(transitionKind:sourceBackgroundColor:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t PhotosDetailsNavigationTransitionInfoRepository.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

double sub_1C11FEE48@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_1C0FFE15C(a1);
    if (v7)
    {
      v8 = *(v5 + 56) + 16 * v6;
      v9 = *(v8 + 8);
      *a2 = *v8;
      *(a2 + 8) = v9;

      return result;
    }
  }

  result = 0.0;
  *a2 = xmmword_1C12A3E50;
  return result;
}

uint64_t sub_1C11FEEEC(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = *(a1 + 1);
  v5 = *a1;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  sub_1C0FF880C(v5, v4, a2);
  *(v2 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_1C11FEF84()
{
  swift_beginAccess();
  sub_1C1033E4C();
  sub_1C1094F58(v1, v2);
  return swift_endAccess();
}

uint64_t PhotosDetailsNavigationTransitionInfoRepository.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

BOOL static PhotosDetailsNavigationTransitionInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 1))
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_1C1265100();

    return (v5 & 1) != 0;
  }

  return !v4;
}

uint64_t EnvironmentValues.photosActionManager.getter()
{
  sub_1C11FF1E4();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C11FF1E4()
{
  result = qword_1EDE81FD0;
  if (!qword_1EDE81FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81FD0);
  }

  return result;
}

void (*sub_1C11FF2B0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1C10B4638;
}

uint64_t PhotosActionManager.__allocating_init(delegate:)()
{
  OUTLINED_FUNCTION_18_0();
  v0 = swift_allocObject();
  PhotosActionManager.init(delegate:)();
  return v0;
}

uint64_t sub_1C11FF37C()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_0_2();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_getObjectType();
  OUTLINED_FUNCTION_3_50();
  v0 = OUTLINED_FUNCTION_0_80();
  v2 = v1(v0);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C11FF404()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_0_2();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_3_50();
    (*(v4 + 16))(v2, v0, v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C11FF498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_2();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(a1, a2, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PhotosActionManager.__deallocating_deinit()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C11FF580()
{
  type metadata accessor for PhotosActionManager();
  v0 = swift_allocObject();
  result = PhotosActionManager.init(delegate:)();
  qword_1EDE81FE0 = v0;
  return result;
}

uint64_t sub_1C11FF5C4@<X0>(void *a1@<X8>)
{
  if (qword_1EDE81FD8 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE81FE0;
}

uint64_t (*EnvironmentValues.photosActionManager.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C11FF1E4();
  sub_1C12637F0();
  return sub_1C11FF690;
}

uint64_t sub_1C11FF690(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C1263800();
  }

  sub_1C1263800();
}

uint64_t View.photosActionManager(_:)()
{
  swift_getKeyPath();
  sub_1C1264A30();
}

uint64_t sub_1C11FF798()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_3_50();
    v1 = OUTLINED_FUNCTION_0_80();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C11FF824()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_3_50();
    v1 = OUTLINED_FUNCTION_0_80();
    v2(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1C11FFA64()
{
  result = qword_1EBE97A10;
  if (!qword_1EBE97A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97A10);
  }

  return result;
}

uint64_t PhotosAssetView.init(_:imageProvider:imageTargetSize:normalizedCropRect:isNetworkAccessAllowed:wantsPlaceholderSymbol:placeholderSymbolName:placeholderBackgroundColor:placeholderSymbolContainerWidthRatio:cropKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, char a14, __int128 *a15)
{
  v21 = *a12;
  v20 = a12[1];
  v22 = *(a12 + 16);
  v23 = *(a12 + 17);
  v32 = a15[1];
  v33 = *a15;
  v31 = *(a15 + 32);
  v24 = sub_1C1200D04();
  [v24 setNetworkAccessAllowed_];
  if ((*(a6 + 32) & 1) == 0)
  {
    [v24 setNormalizedCropRect_];
    [v24 setResizeMode_];
  }

  *(a9 + 152) = swift_getKeyPath();
  *(a9 + 160) = 0;
  v25 = type metadata accessor for PhotosAssetView();
  v26 = *(v25 + 48);
  *(a9 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v27 = a9 + *(v25 + 52);
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_33(KeyPath);
  *a9 = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5 & 1;
  *(a9 + 8) = a8 & 1;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 52) = v21;
  *(a9 + 60) = v20;
  *(a9 + 68) = v22;
  *(a9 + 69) = v23;
  *(a9 + 72) = a13;
  *(a9 + 80) = a14 & 1;
  *(a9 + 88) = a1;
  *(a9 + 96) = a2;
  *(a9 + 104) = v24;
  *(a9 + 112) = v33;
  *(a9 + 128) = v32;
  *(a9 + 144) = v31;

  return swift_unknownObjectRetain();
}

uint64_t sub_1C11FFCDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C12650F0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  if (a1 && (v11 = [a1 tintColor]) != 0)
  {
    v12 = v11;
    v33 = 0;
    v34[0] = 0;
    v31 = 0x3FF0000000000000;
    v32 = 0;
    [v11 getRed:v34 green:&v33 blue:&v32 alpha:&v31];
    (*(v6 + 104))(v10, *MEMORY[0x1E69814D8], v4);
    sub_1C1265220();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = 0;
    v22 = v14 | (v16 << 32);
    v23 = v18 | (v20 << 32);
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v21 = 1;
  }

  v24 = a1;
  v25 = sub_1C1200D04();
  [v25 setNetworkAccessAllowed_];

  *(a2 + 152) = swift_getKeyPath();
  *(a2 + 160) = 0;
  v26 = type metadata accessor for PhotosAssetView();
  v27 = *(v26 + 48);
  *(a2 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_33(KeyPath);
  v29 = a2 + *(v26 + 56);
  result = swift_getKeyPath();
  *v29 = result;
  *(v29 + 8) = 0;
  *a2 = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 52) = v22;
  *(a2 + 60) = v23;
  *(a2 + 68) = 0;
  *(a2 + 69) = v21;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = a1;
  *(a2 + 96) = 0;
  *(a2 + 104) = v25;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 2;
  return result;
}

uint64_t sub_1C11FFFA0(char a1, void (*a2)(uint64_t, __n128))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97A80);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97948);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if (a1)
  {
    a2(v2, v9);
    sub_1C10D1A1C(v11, v7, &qword_1EBE97948);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97A90);
    sub_1C11FB81C();
    OUTLINED_FUNCTION_2_46();
    sub_1C0FDB6D4(v12, &unk_1EBE97A90);
    OUTLINED_FUNCTION_4_4();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v11, &qword_1EBE97948);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97A90);
    OUTLINED_FUNCTION_3();
    (*(v15 + 16))(v7, v2, v14);
    swift_storeEnumTagMultiPayload();
    sub_1C11FB81C();
    OUTLINED_FUNCTION_2_46();
    sub_1C0FDB6D4(v16, &unk_1EBE97A90);
    OUTLINED_FUNCTION_4_4();
    return sub_1C1263C20();
  }
}

uint64_t sub_1C12001CC(char a1, void (*a2)(uint64_t, __n128))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97AB8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97A68);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  if (a1)
  {
    a2(v2, v9);
    sub_1C10D1A1C(v11, v7, &qword_1EBE97A68);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97A30);
    sub_1C12025D8();
    sub_1C1202690();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v11, &qword_1EBE97A68);
  }

  else
  {
    sub_1C10D1A1C(v2, v7, &unk_1EBE97A30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97A30);
    sub_1C12025D8();
    sub_1C1202690();
    return sub_1C1263C20();
  }
}

uint64_t sub_1C1200408()
{
  sub_1C1058EB8();
  sub_1C1264C70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0);
  OUTLINED_FUNCTION_4_54(&qword_1EDE7B700);
  OUTLINED_FUNCTION_9_36();

  v0 = OUTLINED_FUNCTION_4_4();
  MEMORY[0x1C68EF850](v0);

  MEMORY[0x1C68EF850](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1C12004C8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  a1(0);
  sub_1C120294C(a2, a3);
  sub_1C1264C70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0);
  OUTLINED_FUNCTION_4_54(&qword_1EDE7B700);
  OUTLINED_FUNCTION_9_36();

  v5 = OUTLINED_FUNCTION_4_4();
  MEMORY[0x1C68EF850](v5);

  MEMORY[0x1C68EF850](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1C12005D4(uint64_t a1)
{
  sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_1C12634C0();
}

uint64_t sub_1C1200688()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1263500();
  *v0 = v2;
  return result;
}

uint64_t sub_1C12006D8@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v9[3] = &type metadata for PhotosAsyncAssetImageMedia;
  v9[4] = sub_1C0FDE6F0();
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), a1, 0x70uLL);
  v5 = swift_allocObject();
  memcpy((v5 + 16), a1, 0x70uLL);
  v9[5] = sub_1C1202A20;
  v9[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97A28);
  sub_1C10D1A1C(v9, a2 + *(v6 + 36), &qword_1EBE92890);
  sub_1C10D1A1C(v2, a2, &qword_1EBE97A20);
  sub_1C1202A28(a1, v8);
  sub_1C1202A28(a1, v8);
  return sub_1C0FD1A5C(v9, &qword_1EBE92890);
}

uint64_t sub_1C120080C(uint64_t a1, void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v4 = a2[13];
  sub_1C0FDB0A8(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97AC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__src, 0, 104);
    __src[13] = 1;
  }

  memcpy(v17, __src, sizeof(v17));
  memcpy(v16, __src, sizeof(v16));
  v5 = v17[13];
  if (v17[13] == 1)
  {
    if (v4 == 1)
    {
      memcpy(v13, __src, 0x68uLL);
      v6 = 1;
      v13[13] = 1;
      sub_1C10D1A1C(v17, v12, &qword_1EBE97AC8);
      sub_1C1202A28(a2, v12);
      v7 = v13;
LABEL_11:
      sub_1C0FD1A5C(v7, &qword_1EBE97AC8);
      goto LABEL_12;
    }

    sub_1C10D1A1C(v17, v13, &qword_1EBE97AC8);
    sub_1C1202A28(a2, v13);
  }

  else
  {
    memcpy(v13, __src, 0x68uLL);
    v13[13] = v17[13];
    memcpy(v12, v13, sizeof(v12));
    if (v4 != 1)
    {
      memcpy(v11, __dst, 0x68uLL);
      v11[13] = v4;
      sub_1C10D1A1C(v17, v10, &qword_1EBE97AC8);
      sub_1C1202A28(a2, v10);
      sub_1C10D1A1C(v13, v10, &qword_1EBE97AC8);
      v6 = sub_1C0FDD5A0(v12, v11);
      memcpy(v9, v11, sizeof(v9));
      sub_1C1201F08(v9);
      memcpy(v10, v12, sizeof(v10));
      sub_1C1201F08(v10);
      memcpy(v11, v16, 0x68uLL);
      v11[13] = v5;
      v7 = v11;
      goto LABEL_11;
    }

    memcpy(v11, v13, sizeof(v11));
    sub_1C10D1A1C(v17, v10, &qword_1EBE97AC8);
    sub_1C1202A28(a2, v10);
    sub_1C10D1A1C(v13, v10, &qword_1EBE97AC8);
    sub_1C1201F08(v11);
  }

  memcpy(v13, v16, 0x68uLL);
  v13[13] = v5;
  memcpy(v14, __dst, sizeof(v14));
  v15 = v4;
  sub_1C0FD1A5C(v13, &unk_1EBE97AD0);
  v6 = 0;
LABEL_12:
  memcpy(v13, __src, sizeof(v13));
  sub_1C0FD1A5C(v13, &qword_1EBE97AC8);
  return v6 & 1;
}

uint64_t sub_1C1200B20()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosIsDragPreview.getter();
  *v0 = result & 1;
  return result;
}

uint64_t PhotosAssetView.init(_:imageProvider:imageTargetSize:imageRequestOptions:wantsPlaceholderSymbol:placeholderSymbolName:placeholderBackgroundColor:placeholderSymbolContainerWidthRatio:cropKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12, char a13, uint64_t a14)
{
  v17 = *a11;
  v16 = a11[1];
  v18 = *(a11 + 16);
  v19 = *(a11 + 17);
  v28 = *(a14 + 32);
  *(a9 + 152) = swift_getKeyPath();
  *(a9 + 160) = 0;
  v20 = *(type metadata accessor for PhotosAssetView() + 48);
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_10_33(KeyPath);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_10_33(v22);
  *a9 = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5 & 1;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  *(a9 + 24) = a10;
  *(a9 + 52) = v17;
  *(a9 + 60) = v16;
  *(a9 + 68) = v18;
  *(a9 + 69) = v19;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13 & 1;
  *(a9 + 88) = a1;
  *(a9 + 96) = a2;
  *(a9 + 104) = a6;
  v23 = *(a14 + 16);
  *(a9 + 112) = *a14;
  *(a9 + 128) = v23;
  *(a9 + 144) = v28;

  return swift_unknownObjectRetain();
}

id sub_1C1200D04()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C4518]) init];
  [v0 setAllowSecondaryDegradedImage_];
  [v0 setDeliveryMode_];
  [v0 setUseAsyncForFastOpportunisticResult_];
  return v0;
}

uint64_t PhotosAssetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE913C0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v73 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97A20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v73 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97A28);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v73 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97A30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v73 - v11;
  v12 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  v80 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v79 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v21 = type metadata accessor for PhotosAssetView();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - v28;
  if (qword_1EDE83508 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v26, qword_1EDE82FE0);
  sub_1C10D1A1C(v30, v29, &qword_1EBE919B0);
  v31 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v29, 1, v31) == 1)
  {
    sub_1C0FD1A5C(v29, &qword_1EBE919B0);
  }

  else
  {
    v77 = v21;
    v78 = v18;
    v32 = OUTLINED_FUNCTION_4_4();
    sub_1C0FF74D8(v32, v33);
    sub_1C1262640();
    v34 = sub_1C1262670();
    v76 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v35 = swift_slowAlloc();
      v75 = v12;
      v36 = v35;
      v73 = v35;
      v74 = swift_slowAlloc();
      v92 = v74;
      *v36 = 136446210;
      v37 = sub_1C12004C8(type metadata accessor for PhotosAssetView, qword_1EDE7E9C0, type metadata accessor for PhotosAssetView);
      v38 = v14;
      v40 = v39;
      sub_1C0FF753C(v25);
      v41 = sub_1C0FA0E80(v37, v40, &v92);
      v14 = v38;

      v42 = v73;
      *(v73 + 4) = v41;
      v43 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v34, v76, v43, "PhotosAssetView", "PhotosAssetView %{public}s", v42, 0xCu);
      v44 = v74;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x1C68F1630](v44, -1, -1);
      v12 = v75;
      MEMORY[0x1C68F1630](v42, -1, -1);

      v45 = OUTLINED_FUNCTION_6_38();
      v46(v45);
    }

    else
    {

      v47 = OUTLINED_FUNCTION_6_38();
      v48(v47);
      sub_1C0FF753C(v25);
    }

    v21 = v77;
    (*(*(v31 - 8) + 8))(v29, v31);
    v18 = v78;
  }

  *&v91[9] = *(v2 + 129);
  v49 = *(v2 + 104);
  v89 = *(v2 + 88);
  v50 = *(v2 + 120);
  v90 = v49;
  *v91 = v50;
  v51 = v2 + *(v21 + 56);
  v52 = *v51;
  if (*(v51 + 8) != 1)
  {
    sub_1C0FDE0F8(&v89, &v92);
    sub_1C1058D54(v52, 0);
    sub_1C1266420();
    v53 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v52, 0);
    (*(v14 + 8))(v18, v12);
    if (LOBYTE(v87[0]) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sub_1C0FDE0F8(&v89, &v92);
  if (v52)
  {
LABEL_13:
    [v90 setUseAsyncForFastOpportunisticResult_];
  }

LABEL_14:
  sub_1C12016A8(v87);
  v54 = v90;
  *(v7 + 40) = *v91;
  *(v7 + 49) = *&v91[9];
  *(v7 + 8) = v89;
  v55 = *(v2 + 32);
  v56 = *(v2 + 40);
  v57 = *(v2 + 48);
  if (*(v2 + 69))
  {
    v58 = 0;
  }

  else
  {
    v58 = *(v2 + 52);
  }

  if (*(v2 + 69))
  {
    v59 = 0;
  }

  else
  {
    v59 = *(v2 + 60);
  }

  v60 = *(v2 + 69) | *(v2 + 68);
  *v7 = *&v87[0];
  *(v7 + 24) = v54;
  v61 = v81;
  v62 = *(v81 + 48);
  *&v7[v62] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v63 = &v7[v61[13]];
  *v63 = swift_getKeyPath();
  v63[8] = 0;
  v64 = &v7[v61[14]];
  *v64 = swift_getKeyPath();
  *(v64 + 1) = 0;
  *(v64 + 10) = 0;
  *(v64 + 4) = 0;
  v65 = &v7[v61[15]];
  *v65 = swift_getKeyPath();
  *(v65 + 1) = 0;
  *(v65 + 2) = 0;
  *(v65 + 3) = 0;
  *(v65 + 16) = 0;
  v66 = v61[16];
  sub_1C0FDE0F8(&v89, &v92);
  type metadata accessor for PhotosBasicAsyncImageState();
  sub_1C12628D0();
  *(v7 + 9) = v55;
  *(v7 + 10) = v56;
  v7[88] = v57;
  *(v7 + 92) = v58;
  *(v7 + 100) = v59;
  v7[108] = v60 & 1;
  v67 = v83;
  sub_1C12628D0();
  sub_1C102500C(v67, &v7[v66]);
  v87[0] = v89;
  v87[1] = v90;
  v88[0] = *v91;
  *(v88 + 9) = *&v91[9];
  sub_1C0FDE0F8(&v89, &v92);
  sub_1C0FDD130(v87, &v92);
  v68 = v84;
  sub_1C12006D8(&v92, v84);
  sub_1C1201F08(&v92);
  sub_1C0FD1A5C(v7, &qword_1EBE97A20);
  v69 = v89;
  v70 = v85;
  v71 = sub_1C1201F5C(v68, v85);
  *(v70 + *(v82 + 36)) = v69;
  LOBYTE(v67) = *(v2 + 8);
  MEMORY[0x1EEE9AC00](v71);
  *(&v73 - 2) = &v89;
  *(&v73 - 1) = v2;
  swift_unknownObjectRetain();
  sub_1C12001CC(v67, sub_1C1201FCC);
  sub_1C1201FD4(&v89);
  return sub_1C0FD1A5C(v70, &unk_1EBE97A30);
}

uint64_t sub_1C12016A8@<X0>(void *a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (!*v1)
  {
    v7 = *(v1 + 152);
    if (*(v1 + 160) == 1)
    {
      swift_unknownObjectRetain();
      if (v7)
      {
        goto LABEL_9;
      }
    }

    else
    {

      sub_1C1266420();
      v8 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C1202A84(v7, 0);
      (*(v4 + 8))(v6, v3);
      v7 = v14;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    v9 = *(v1 + 88);
    if (v9)
    {
      v10 = objc_opt_self();
      swift_unknownObjectRetain();
      v11 = [v10 defaultManager];
      v7 = [v11 imageProviderForAsset_];

      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_9:
  *a1 = v7;
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1201894@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C12659A0();
  v10 = v9;
  if (*a2)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v11 = *(a3 + 16);
    v14 = *(a3 + 24);
    v12 = *(a3 + 72);
    v13 = *(a3 + 80);
  }

  sub_1C10D1A1C(a1, a4, &unk_1EBE97A30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97A68);
  v16 = a4 + *(result + 36);
  *v16 = v11;
  *(v16 + 8) = v14;
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  *(v16 + 32) = v8;
  *(v16 + 40) = v10;
  return result;
}

uint64_t sub_1C1201960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *(**a5)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4 & 1;
  *a5 = sub_1C120293C;
  a5[1] = v10;
}

void *sub_1C12019EC@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_1C12659A0();
  v8 = v7;
  sub_1C1201B40(a1, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_1C10D1A1C(__dst, v11, &unk_1EBE97AA8);
  sub_1C0FD1A5C(v13, &unk_1EBE97AA8);
  memcpy(v11, __dst, sizeof(v11));
  sub_1C12659A0();
  sub_1C1263390();
  *a3 = v6;
  a3[1] = v8;
  memcpy(a3 + 2, v11, 0x58uLL);
  return memcpy(a3 + 13, __src, 0x70uLL);
}

uint64_t sub_1C1201B40@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1C1265300();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1262D40();
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0xD000000000000012;
  }

  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0x80000001C12696A0;
  }

  v12 = qword_1EDE833C0;

  if (v12 != -1)
  {
    swift_once();
  }

  *&v20 = v10;
  *(&v20 + 1) = v11;
  LODWORD(v21) = 262912;
  *(&v21 + 1) = 0;
  LODWORD(v22) = 65280;

  sub_1C12192C4(&v20);

  sub_1C12652F0();

  (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
  v13 = sub_1C1265350();

  (*(v7 + 8))(v9, v6);
  sub_1C12659A0();
  sub_1C1262C80();
  v19 = 1;
  *&v18[8] = v20;
  *&v18[24] = v21;
  *&v18[40] = v22;
  if (qword_1EDE7B868 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDE7B870;
  KeyPath = swift_getKeyPath();
  v16 = *&v18[18];
  *(a3 + 18) = *&v18[2];
  *a3 = v13;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 34) = v16;
  *(a3 + 50) = *&v18[34];
  *(a3 + 64) = *&v18[48];
  *(a3 + 72) = KeyPath;
  *(a3 + 80) = v14;
}

uint64_t EnvironmentValues.photosImageProvider.getter()
{
  sub_1C1202158();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1201E68()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.photosImageProvider.getter();
  *v0 = result;
  return result;
}

uint64_t type metadata accessor for PhotosAssetView()
{
  result = qword_1EDE7E9A8;
  if (!qword_1EDE7E9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1201F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97A28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*EnvironmentValues.photosImageProvider.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C1202158();
  sub_1C12637F0();
  return sub_1C12020C4;
}

uint64_t sub_1C12020C4(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C1263800();
  }

  swift_unknownObjectRetain();
  sub_1C1263800();

  return swift_unknownObjectRelease();
}

unint64_t sub_1C1202158()
{
  result = qword_1EDE81E40[0];
  if (!qword_1EDE81E40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE81E40);
  }

  return result;
}

void sub_1C12021F0()
{
  sub_1C103F768(319, &qword_1EDE76A18, &unk_1EBE97A40, &unk_1C12C70F8, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C12024FC(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C1202498(319, &qword_1EDE76990, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C12024FC(319, qword_1EDE7A678, &type metadata for PhotosPlaceholderColor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C12024FC(319, &qword_1EDE7B4C0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C103F768(319, &qword_1EDE77538, &qword_1EBE97A50, &unk_1C12C7100, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1C1202498(319, &qword_1EDE77590, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1C12024FC(319, &qword_1EDE775B0, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1C12024FC(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
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
  }
}

void sub_1C1202498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C12024FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C120254C()
{
  result = qword_1EDE76E80;
  if (!qword_1EDE76E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97A58);
    sub_1C12025D8();
    sub_1C1202690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E80);
  }

  return result;
}

unint64_t sub_1C12025D8()
{
  result = qword_1EDE77160;
  if (!qword_1EDE77160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A68);
    sub_1C1202690();
    sub_1C0FDB6D4(&qword_1EDE7BCD0, &qword_1EBE97A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77160);
  }

  return result;
}

unint64_t sub_1C1202690()
{
  result = qword_1EDE772A0;
  if (!qword_1EDE772A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97A30);
    sub_1C120271C();
    sub_1C1202800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772A0);
  }

  return result;
}

unint64_t sub_1C120271C()
{
  result = qword_1EDE7BF88;
  if (!qword_1EDE7BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97A28);
    sub_1C0FDB6D4(qword_1EDE822D0, &qword_1EBE97A20);
    sub_1C0FDB6D4(&qword_1EDE7B9F0, &qword_1EBE97A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF88);
  }

  return result;
}

unint64_t sub_1C1202800()
{
  result = qword_1EDE790E8[0];
  if (!qword_1EDE790E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE790E8);
  }

  return result;
}

uint64_t sub_1C1202854(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C12028A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C120294C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_33Tm()
{
  sub_1C0FDCFAC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1C1202A84(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t View.photosInlinePlaybackOnHover(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C0FDB0A8(a1, v6);
  KeyPath = swift_getKeyPath();
  v8 = 0;
  MEMORY[0x1C68EE920](v6, a2, &type metadata for PhotosInlinePlaybackHoverModifier, a3);
  return sub_1C1202B08(v6);
}

unint64_t sub_1C1202B38()
{
  result = qword_1EDE7FEB8;
  if (!qword_1EDE7FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7FEB8);
  }

  return result;
}

uint64_t sub_1C1202B98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C1202BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1202C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C1202EC4(v2, v10);
  v5 = swift_allocObject();
  v6 = v10[1];
  *(v5 + 16) = v10[0];
  *(v5 + 32) = v6;
  *(v5 + 48) = v10[2];
  *(v5 + 64) = v11;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97AF0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97AF8);
  v9 = (a2 + *(result + 36));
  *v9 = sub_1C1202EFC;
  v9[1] = v5;
  return result;
}

uint64_t sub_1C1202D40(char a1, uint64_t a2)
{
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);

  if ((v9 & 1) == 0)
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_0();
    result = (*(v5 + 8))(v7, v4);
    v8 = v15[1];
  }

  if (v8)
  {
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    v14 = __swift_project_boxed_opaque_existential_1(a2, v12);
    sub_1C10CF7DC(v14, a1 & 1, v8, v12, v13);
  }

  return result;
}

unint64_t sub_1C1202F04()
{
  result = qword_1EDE7BEF8;
  if (!qword_1EDE7BEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97AF8);
    sub_1C1202F90();
    sub_1C10136B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEF8);
  }

  return result;
}

unint64_t sub_1C1202F90()
{
  result = qword_1EDE7BB10;
  if (!qword_1EDE7BB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BB10);
  }

  return result;
}

uint64_t PhotosScrollView.init(_:showsIndicators:content:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = swift_getKeyPath();
  *(a5 + 32) = 0;
  result = swift_getKeyPath();
  *(a5 + 40) = result;
  *(a5 + 48) = 0;
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  return result;
}

uint64_t View.photosScrollDisabled(_:)()
{
  OUTLINED_FUNCTION_7_41();
  v3 = type metadata accessor for PhotosScrollViewDisabledModifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = v2;
  *(swift_allocObject() + 16) = v2;
  type metadata accessor for PhotosScrollViewDisabledModel(0);
  sub_1C12628D0();
  MEMORY[0x1C68EE920](v5, v1, v3, v0);
  return sub_1C1203C0C(v5);
}

uint64_t View.photosScrollContentBackgroundVisibility(_:)()
{
  OUTLINED_FUNCTION_7_41();
  swift_getKeyPath();
  sub_1C1264A30();
}

uint64_t sub_1C12031C8()
{
  sub_1C12047B8();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1203240()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_2();
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C1203384()
{
  sub_1C120480C();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1203448()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[15];
  }

  return v5;
}

uint64_t PhotosScrollView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v33 = a1;
  v3 = *(a1 + 24);
  v30 = *(a1 + 16);
  v29 = v3;
  type metadata accessor for PhotosScrollView.ScrollContentView();
  OUTLINED_FUNCTION_2_61();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1C1262940();
  OUTLINED_FUNCTION_0();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  OUTLINED_FUNCTION_0_81();
  v9 = swift_getWitnessTable();
  *&v44[0] = v4;
  *(&v44[0] + 1) = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v36 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  *&v44[0] = v4;
  *(&v44[0] + 1) = v9;
  v34 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v44[0] = OpaqueTypeMetadata2;
  *(&v44[0] + 1) = OpaqueTypeConformance2;
  v32 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v35 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v29 - v22;
  v24 = *(v2 + 16);
  v44[0] = *v2;
  v44[1] = v24;
  v44[2] = *(v2 + 32);
  v45 = *(v2 + 48);
  v39 = v30;
  v40 = v29;
  v41 = v44;
  sub_1C1262950();
  OUTLINED_FUNCTION_5_37();
  if (sub_1C1203240())
  {
    sub_1C1204004();
  }

  sub_1C1264B70();
  (*(v37 + 8))(v8, v4);
  OUTLINED_FUNCTION_5_37();
  sub_1C1203448();
  v25 = v32;
  sub_1C1264E00();
  (*(v36 + 8))(v14, OpaqueTypeMetadata2);
  v42 = OpaqueTypeMetadata2;
  v43 = v25;
  OUTLINED_FUNCTION_1_53();
  v26 = swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C(v20, v16, v26);
  v27 = *(v35 + 8);
  v27(v20, v16);
  sub_1C0FDBA4C(v23, v16, v26);
  return (v27)(v23, v16);
}

uint64_t sub_1C120399C(uint64_t a1)
{
  v4[0] = *(a1 + 8);
  v1 = type metadata accessor for PhotosScrollView.ScrollContentView();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v4, v1, WitnessTable);
  v4[0] = v4[1];
  sub_1C0FDBA4C(v4, v1, WitnessTable);
}

uint64_t sub_1C1203A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v10();
  sub_1C0FDBA4C(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  sub_1C0FDBA4C(v12, a3, a4);
  return (v13)(v12, a3);
}

uint64_t sub_1C1203B80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PhotosScrollViewDisabledModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_1C1261F60();
  result = sub_1C1203F44(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1C1203C0C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosScrollViewDisabledModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1203C8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosScrollViewDisabledModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97B18);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-v8];
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97B10);
  sub_1C12628E0();
  v11 = v18;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97B20);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = &v9[*(v7 + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  v17[7] = *v2;
  sub_1C12044CC(v2, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1C1204530(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14);
  sub_1C1204614();
  sub_1C1265000();

  return sub_1C12046F8(v9);
}

uint64_t sub_1C1203ECC(uint64_t a1, char *a2)
{
  v2 = *a2;
  type metadata accessor for PhotosScrollViewDisabledModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97B10);
  sub_1C12628E0();
  sub_1C1203FEC(v2);
}

uint64_t sub_1C1203F44(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C120413C();
  }

  return result;
}

uint64_t sub_1C1203FEC(char a1)
{
  result = a1 & 1;
  if (*(v1 + 16) != result)
  {
    return sub_1C1203F44(result);
  }

  return result;
}

uint64_t sub_1C1204004()
{
  swift_getKeyPath();
  sub_1C1204770(&qword_1EDE807D0, type metadata accessor for PhotosScrollViewDisabledModel);
  sub_1C1261F30();

  return *(v0 + 16);
}

uint64_t sub_1C12040E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C12041F4()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICoreP33_53AAC5C2F7FAE467106F8844BDA042EE29PhotosScrollViewDisabledModel___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C1204298()
{
  result = sub_1C1261F70();
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

uint64_t sub_1C1204334()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C1204398()
{
  sub_1C1204414();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C1204414()
{
  if (!qword_1EDE776A8)
  {
    type metadata accessor for PhotosScrollViewDisabledModel(255);
    v0 = sub_1C1262900();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE776A8);
    }
  }
}

uint64_t sub_1C12044CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosScrollViewDisabledModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1204530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosScrollViewDisabledModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1204594(uint64_t a1, char *a2)
{
  type metadata accessor for PhotosScrollViewDisabledModifier(0);

  return sub_1C1203ECC(a1, a2);
}

unint64_t sub_1C1204614()
{
  result = qword_1EDE7BEE0;
  if (!qword_1EDE7BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97B18);
    sub_1C0FDB6D4(&qword_1EDE7BAE0, &qword_1EBE97B20);
    sub_1C0FDB6D4(&qword_1EDE7B9A8, &qword_1EBE97B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEE0);
  }

  return result;
}

uint64_t sub_1C12046F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1204770(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C12047B8()
{
  result = qword_1EDE78D50[0];
  if (!qword_1EDE78D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE78D50);
  }

  return result;
}

unint64_t sub_1C120480C()
{
  result = qword_1EDE807D8;
  if (!qword_1EDE807D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE807D8);
  }

  return result;
}

uint64_t sub_1C1204880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C12048E4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C12048E4()
{
  result = qword_1EBE97B40;
  if (!qword_1EBE97B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97B40);
  }

  return result;
}

uint64_t PhotosItemsListFeed.init(data:id:cols:draggingDelegate:itemView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v26 = *a3;
  v18 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v19 = *(a3 + 2);
  *&__src[0] = a7;
  *(__src + 8) = v18;
  *(&__src[1] + 1) = a8;
  __src[2] = a10;
  *&__src[3] = a11;
  v20 = type metadata accessor for PhotosItemsListFeed();
  v21 = v20[23];
  *&__src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + v21), __src, 0xD1uLL);
  v22 = a9 + v20[24];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 0;
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  *(a9 + v20[19]) = a2;
  v23 = a9 + v20[20];
  *v23 = v26;
  *(v23 + 16) = v19;
  result = sub_1C0F9DDE4(a4, a9 + v20[21]);
  v25 = (a9 + v20[22]);
  *v25 = a5;
  v25[1] = a6;
  return result;
}

uint64_t sub_1C1204ADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 92);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

double sub_1C1204CF8(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 96);
  v9 = *v7;
  v8 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    return *v7;
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C1001C04(v9, v8, v11, v10, 0);
  (*(v4 + 8))(v6, v3);
  return v14;
}

double sub_1C1204E80(uint64_t a1)
{
  sub_1C1204ADC(a1, v2);
  sub_1C100C7D0(v2);
  return *&v2[14];
}

uint64_t PhotosItemsListFeed.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97B48);
  v4 = a1[6];
  v5 = a1[7];
  v51 = v3;
  v52 = v4;
  v6 = v4;
  v53 = v5;
  v7 = v5;
  v8 = a1[4];
  v49 = a1[2];
  v50 = v8;
  OUTLINED_FUNCTION_12_26();
  sub_1C12656A0();
  v56 = sub_1C12052E4();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C1262920();
  v9 = a1[3];
  *&v10 = v8;
  *(&v10 + 1) = a1[5];
  v37 = v10;
  *&v11 = v49;
  *(&v11 + 1) = v9;
  v38 = v11;
  v36 = a1[8];
  v35 = v7;
  OUTLINED_FUNCTION_12_26();
  type metadata accessor for PhotosItemsListFeed.ItemContainerView();
  OUTLINED_FUNCTION_2_62();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v12 = type metadata accessor for PhotosItemsListCellContainer();
  OUTLINED_FUNCTION_9_37();
  v51 = v8;
  v52 = v12;
  v53 = v6;
  v54 = v7;
  v13 = v6;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_26();
  type metadata accessor for PhotosDraggableForEach();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v14 = sub_1C1262920();
  OUTLINED_FUNCTION_7_42();
  v49 = v14;
  v50 = swift_getWitnessTable();
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_12_26();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_11_0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  v34[1] = swift_getWitnessTable();
  v15 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v34 - v19;
  v21 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v34 - v28;
  sub_1C1265940();
  v42 = v37;
  v41 = v38;
  v43 = v13;
  v44 = v35;
  v45 = v36;
  v46 = v39;
  sub_1C12655B0();
  sub_1C1204CF8(a1);
  OUTLINED_FUNCTION_13_0();
  v30 = swift_getWitnessTable();
  sub_1C1264FA0();
  (*(v17 + 8))(v20, v15);
  v47 = v30;
  v48 = MEMORY[0x1E697E5D8];
  OUTLINED_FUNCTION_4_0();
  v31 = swift_getWitnessTable();
  sub_1C0FDBA4C(v26, v21, v31);
  v32 = *(v23 + 8);
  v32(v26, v21);
  sub_1C0FDBA4C(v29, v21, v31);
  return (v32)(v29, v21);
}

unint64_t sub_1C12052E4()
{
  result = qword_1EBE97B50[0];
  if (!qword_1EBE97B50[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97B48);
    sub_1C1205370();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE97B50);
  }

  return result;
}

unint64_t sub_1C1205370()
{
  result = qword_1EDE7BC58;
  if (!qword_1EDE7BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC58);
  }

  return result;
}

uint64_t sub_1C12053EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v75 = a5;
  v76 = a8;
  v71 = a9;
  type metadata accessor for PhotosItemsListFeed.ItemContainerView();
  swift_getWitnessTable();
  v97 = a2;
  v98 = a3;
  v99 = a4;
  v100 = type metadata accessor for PhotosItemsListCellContainer();
  v101 = a6;
  v102 = a7;
  WitnessTable = swift_getWitnessTable();
  v66 = type metadata accessor for PhotosDraggableForEach();
  v65 = swift_getWitnessTable();
  v15 = sub_1C1262920();
  v63 = v15;
  v70 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v52 - v16;
  v59 = MEMORY[0x1E697DA90];
  v62 = swift_getWitnessTable();
  v97 = v15;
  v98 = v62;
  v67 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  v69 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v60 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v52 - v20;
  v21 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v56 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97B48);
  v97 = a2;
  v98 = a4;
  v99 = v23;
  v100 = a6;
  v24 = a7;
  v101 = a7;
  v25 = sub_1C12656A0();
  v96[2] = sub_1C12052E4();
  v58 = swift_getWitnessTable();
  v26 = sub_1C1262920();
  v27 = *(v26 - 8);
  v73 = v26;
  v74 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v72 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v77 = &v52 - v30;
  v97 = a2;
  v98 = a3;
  v31 = a3;
  v53 = a4;
  v54 = a3;
  v32 = a4;
  v33 = v75;
  v99 = a4;
  v100 = v75;
  v101 = a6;
  v102 = v24;
  v34 = v76;
  WitnessTable = v76;
  v55 = type metadata accessor for PhotosItemsListFeed();
  v57 = sub_1C1204E80(v55);
  v86 = a2;
  v87 = v31;
  v88 = v32;
  v89 = v33;
  v90 = a6;
  v91 = v24;
  v35 = v24;
  v92 = v34;
  v93 = a1;
  sub_1C1263AA0();
  sub_1C10A7F38(v25, v58);
  v36 = v72;
  sub_1C1262910();
  v37 = v73;
  v57 = COERCE_DOUBLE(swift_getWitnessTable());
  sub_1C0FDBA4C(v36, v37, *&v57);
  v38 = *(v74 + 8);
  v58 = v74 + 8;
  v59 = v38;
  v38(v36, v37);
  sub_1C1204E80(v55);
  v78 = a2;
  v79 = v54;
  v80 = v53;
  v81 = v75;
  v82 = a6;
  v83 = v35;
  v84 = v76;
  v85 = a1;
  sub_1C1263AA0();
  sub_1C10A7F38(v66, v65);
  v39 = v64;
  sub_1C1262910();
  v40 = v62;
  v41 = v63;
  OUTLINED_FUNCTION_15_6();
  v42 = v60;
  sub_1C1264CD0();
  (*(v70 + 8))(v39, v41);
  v97 = v41;
  v98 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v61;
  v45 = v69;
  sub_1C0FDBA4C(v42, v69, OpaqueTypeConformance2);
  v46 = v68;
  v47 = *(v68 + 8);
  v47(v42, v45);
  v48 = v73;
  v49 = v72;
  (*(v74 + 16))(v72, v77, v73);
  v97 = v49;
  (*(v46 + 16))(v42, v44, v45);
  v98 = v42;
  v96[0] = v48;
  v96[1] = v45;
  v94 = v57;
  v95 = OpaqueTypeConformance2;
  sub_1C119EE80(&v97, 2, v96);
  v47(v44, v45);
  v50 = v59;
  v59(v77, v48);
  v47(v42, v45);
  return v50(v49, v48);
}

uint64_t sub_1C1205AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v55 = a5;
  v56 = a8;
  v54 = a3;
  v52 = a1;
  v57 = a9;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v47 = a7;
  v48 = a4;
  v63 = a6;
  v64 = a7;
  v46 = a6;
  v65 = a8;
  v13 = type metadata accessor for PhotosItemsListFeed();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v49 = v45 - v15;
  v16 = a2;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[2] = v20;
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97B48);
  v59 = v16;
  v60 = a4;
  v61 = v51;
  v62 = a6;
  v63 = a7;
  v21 = sub_1C12656A0();
  v53 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v50 = v45 - v26;
  v27 = *(v17 + 16);
  v28 = v20;
  v29 = v52;
  v30 = v16;
  v45[1] = v16;
  v27(v28, v52, v16, v25);
  v31 = v13;
  v32 = v29;
  v33 = v49;
  (*(v14 + 16))(v49, v32, v13);
  v34 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v35 = swift_allocObject();
  v36 = v54;
  *(v35 + 2) = v30;
  *(v35 + 3) = v36;
  v37 = v47;
  v39 = v55;
  v38 = v56;
  *(v35 + 4) = v48;
  *(v35 + 5) = v39;
  *(v35 + 6) = v46;
  *(v35 + 7) = v37;
  *(v35 + 8) = v38;
  (*(v14 + 32))(&v35[v34], v33, v31);
  v40 = sub_1C12052E4();

  sub_1C1265680();
  v58 = v40;
  WitnessTable = swift_getWitnessTable();
  v42 = v50;
  sub_1C0FDBA4C(v23, v21, WitnessTable);
  v43 = *(v53 + 8);
  v43(v23, v21);
  sub_1C0FDBA4C(v42, v21, WitnessTable);
  return (v43)(v42, v21);
}

double sub_1C1205E88@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v15 = sub_1C1265170();
  v27[0] = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = a8;
  v16 = type metadata accessor for PhotosItemsListFeed();
  sub_1C1204ADC(v16, v27);
  v17 = v27[22];
  v18 = v27[23];
  v19 = v27[24];
  v20 = v27[25];

  sub_1C100C7D0(v27);
  v21 = sub_1C12659A0();
  *&v28[0] = v17;
  *(&v28[0] + 1) = v18;
  v28[1] = 0uLL;
  *&v29 = v19;
  *(&v29 + 1) = v20;
  *&v30 = v21;
  *(&v30 + 1) = v22;
  v32 = v28[0];
  v33 = 0uLL;
  v34 = v29;
  v35 = v30;
  v31[0] = v17;
  v31[1] = v18;
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v19;
  v31[5] = v20;
  v31[6] = v21;
  v31[7] = v22;
  sub_1C10A7E70(v28, &v26);
  sub_1C0F9E21C(v31, &qword_1EBE924C0);
  *a7 = v15;
  v23 = v33;
  *(a7 + 8) = v32;
  *(a7 + 24) = v23;
  result = *&v34;
  v25 = v35;
  *(a7 + 40) = v34;
  *(a7 + 56) = v25;
  return result;
}

uint64_t sub_1C1205FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a1;
  v57 = a9;
  *&v59 = a2;
  *(&v59 + 1) = a3;
  v60 = a4;
  v61 = a5;
  v51 = a5;
  v52 = a8;
  v62 = a6;
  v63 = a7;
  v64 = a8;
  v16 = type metadata accessor for PhotosItemsListFeed();
  v49 = *(v16 - 8);
  v55 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v43 - v17;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v59 = a2;
  v45 = a4;
  v46 = a3;
  *(&v59 + 1) = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v44 = a7;
  v63 = a7;
  v64 = a8;
  type metadata accessor for PhotosItemsListFeed.ItemContainerView();
  swift_getWitnessTable();
  v21 = type metadata accessor for PhotosItemsListCellContainer();
  v50 = v21;
  WitnessTable = swift_getWitnessTable();
  *&v59 = a2;
  *(&v59 + 1) = a3;
  v60 = a4;
  v61 = v21;
  v62 = a6;
  v63 = a7;
  v22 = a6;
  v64 = WitnessTable;
  v23 = type metadata accessor for PhotosDraggableForEach();
  v53 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v48 = &v43 - v28;
  v29 = v56;
  (*(v18 + 16))(v58, v56, a2, v27);
  v43 = *(v29 + *(v16 + 76));
  sub_1C0FDB0A8(v29 + *(v16 + 84), &v59);
  v30 = v49;
  v31 = v54;
  (*(v49 + 16))(v54, v29, v16);
  v32 = (*(v30 + 80) + 72) & ~*(v30 + 80);
  v33 = swift_allocObject();
  v35 = v45;
  v34 = v46;
  *(v33 + 2) = a2;
  *(v33 + 3) = v34;
  v36 = v51;
  *(v33 + 4) = v35;
  *(v33 + 5) = v36;
  *(v33 + 6) = v22;
  v37 = v52;
  *(v33 + 7) = v44;
  *(v33 + 8) = v37;
  (*(v30 + 32))(&v33[v32], v31, v16);
  v38 = v43;

  sub_1C1039330(v38, 1, &v59, 0, 0, 0, sub_1C1207DD8, v25, v33, a2);
  v39 = swift_getWitnessTable();
  v40 = v48;
  sub_1C0FDBA4C(v25, v23, v39);
  v41 = *(v53 + 8);
  v41(v25, v23);
  sub_1C0FDBA4C(v40, v23, v39);
  return (v41)(v40, v23);
}

uint64_t sub_1C1206484@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v6 = a2[3];
  v25 = a2[2];
  v24 = v6;
  v23 = a2[4];
  v22 = a2[5];
  v21 = a2[6];
  v20 = a2[7];
  v19 = a2[8];
  v36 = v25;
  v37 = v6;
  v38 = v23;
  v39 = v22;
  v40 = v21;
  v41 = v20;
  v42 = v19;
  type metadata accessor for PhotosItemsListFeed.ItemContainerView();
  swift_getWitnessTable();
  v7 = type metadata accessor for PhotosItemsListCellContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = sub_1C120670C(a1, a2);
  v15 = sub_1C1206C80(a1, a2);
  v27 = v25;
  v28 = v24;
  v29 = v23;
  v30 = v22;
  v31 = v21;
  v32 = v20;
  v33 = v19;
  v34 = v3;
  v35 = a1;
  sub_1C11FC1D4(v14 & 1, v15 & 1, sub_1C1207E80, v10);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v10, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_1C0FDBA4C(v13, v7, WitnessTable);
  return v17(v13, v7);
}

uint64_t sub_1C120670C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v39 = *(v3 - 8);
  v40 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v34 - v6;
  v8 = *(a2 + 24);
  v9 = sub_1C1266790();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  swift_getAtKeyPath();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
  v40 = a2;
  sub_1C1266350();
  if (__swift_getEnumTagSinglePayload(v11, 1, v8) == 1)
  {
    (*(v36 + 8))(v11, v37);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v3);
  }

  else
  {
    swift_getAtKeyPath();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
    (*(*(v8 - 8) + 8))(v11, v8);
  }

  v21 = v41;
  v20 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = *(v41 + 16);
  v23(v7, v19, v5);
  v23(&v7[v22], v16, v5);
  if (__swift_getEnumTagSinglePayload(v7, 1, v3) != 1)
  {
    v23(v43, v7, v5);
    if (__swift_getEnumTagSinglePayload(&v7[v22], 1, v3) != 1)
    {
      v27 = v21;
      v28 = v39;
      v29 = v35;
      (*(v39 + 32))(v35, &v7[v22], v3);
      v25 = sub_1C1265DE0();
      v30 = *(v28 + 8);
      v30(v29, v3);
      v31 = v30;
      v32 = *(v27 + 8);
      v32(v16, v5);
      v32(v19, v5);
      v31(v43, v3);
      v32(v7, v5);
      return v25 & 1;
    }

    v26 = *(v21 + 8);
    v26(v16, v5);
    v26(v19, v5);
    (*(v39 + 8))(v43, v3);
    goto LABEL_9;
  }

  v24 = *(v21 + 8);
  v24(v16, v5);
  v24(v19, v5);
  if (__swift_getEnumTagSinglePayload(&v7[v22], 1, v3) != 1)
  {
LABEL_9:
    (*(v38 + 8))(v7, v20);
    v25 = 0;
    return v25 & 1;
  }

  v24(v7, v5);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1C1206C80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v39 = *(v3 - 8);
  v40 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v34 - v6;
  v8 = *(a2 + 24);
  v9 = sub_1C1266790();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  swift_getAtKeyPath();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
  v40 = a2;
  sub_1C1265D60();
  if (__swift_getEnumTagSinglePayload(v11, 1, v8) == 1)
  {
    (*(v36 + 8))(v11, v37);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v3);
  }

  else
  {
    swift_getAtKeyPath();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
    (*(*(v8 - 8) + 8))(v11, v8);
  }

  v21 = v41;
  v20 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = *(v41 + 16);
  v23(v7, v19, v5);
  v23(&v7[v22], v16, v5);
  if (__swift_getEnumTagSinglePayload(v7, 1, v3) != 1)
  {
    v23(v43, v7, v5);
    if (__swift_getEnumTagSinglePayload(&v7[v22], 1, v3) != 1)
    {
      v27 = v21;
      v28 = v39;
      v29 = v35;
      (*(v39 + 32))(v35, &v7[v22], v3);
      v25 = sub_1C1265DE0();
      v30 = *(v28 + 8);
      v30(v29, v3);
      v31 = v30;
      v32 = *(v27 + 8);
      v32(v16, v5);
      v32(v19, v5);
      v31(v43, v3);
      v32(v7, v5);
      return v25 & 1;
    }

    v26 = *(v21 + 8);
    v26(v16, v5);
    v26(v19, v5);
    (*(v39 + 8))(v43, v3);
    goto LABEL_9;
  }

  v24 = *(v21 + 8);
  v24(v16, v5);
  v24(v19, v5);
  if (__swift_getEnumTagSinglePayload(&v7[v22], 1, v3) != 1)
  {
LABEL_9:
    (*(v38 + 8))(v7, v20);
    v25 = 0;
    return v25 & 1;
  }

  v24(v7, v5);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1C12071F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v41 = a1;
  v42 = a2;
  v43 = a8;
  v13 = *(a4 - 8);
  v39 = a7;
  v40 = v13;
  v38 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v16;
  v45 = v17;
  v37[1] = v16;
  v37[2] = v18;
  v46 = v18;
  v47 = v19;
  v37[3] = v19;
  v37[4] = v20;
  v48 = v20;
  v49 = v21;
  v22 = v20;
  v50 = v23;
  v24 = type metadata accessor for PhotosItemsListFeed.ItemContainerView();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v37 - v29;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v48 = v22;
  v49 = v39;
  v50 = v38;
  v31 = (v41 + *(type metadata accessor for PhotosItemsListFeed() + 88));
  v32 = *v31;
  v33 = v31[1];
  (*(v40 + 16))(v15, v42, a4);
  sub_1C1207468(v32, v33, v15, a4, v27);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v27, v24, WitnessTable);
  v35 = *(v25 + 8);

  v35(v27, v24);
  sub_1C0FDBA4C(v30, v24, WitnessTable);
  return (v35)(v30, v24);
}

uint64_t sub_1C1207468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for PhotosItemsListFeed.ItemContainerView();
  return (*(*(a4 - 8) + 32))(&a5[*(v8 + 76)], a3, a4);
}

void sub_1C1207500()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C1266F10();
    if (v1 <= 0x3F)
    {
      swift_getExtendedExistentialTypeMetadata();
      sub_1C1007F88();
      if (v2 <= 0x3F)
      {
        sub_1C100D318(319, &qword_1EDE77600);
        if (v3 <= 0x3F)
        {
          sub_1C100D318(319, &qword_1EDE775A0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C1207628(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 239) & 0xFFFFFFFFFFFFFFF8) + 33;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * (((((((((((v6 + 7) & 0xF8) + 15) & 0xF8) + 31) & 0xF8) + 47) & 0xF8) - 17) & 0xF8) + 33));
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C120779C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 239) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 239) & 0xFFFFFFFFFFFFFFF8) + 33);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C12079A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C1207B28(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C1207DD8()
{
  type metadata accessor for PhotosItemsListFeed();
  v0 = OUTLINED_FUNCTION_7_3();
  return sub_1C120641C(v0, v1);
}

uint64_t objectdestroyTm_22()
{
  v6 = *(v0 + 16);
  v1 = (type metadata accessor for PhotosItemsListFeed() - 8);
  v2 = v0 + ((*(*v1 + 80) + 72) & ~*(*v1 + 80));
  (*(*(v6 - 8) + 8))(v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + v1[23]);

  v3 = v2 + v1[25];
  sub_1C1001C10(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 176), *(v3 + 184), *(v3 + 192), *(v3 + 200), *(v3 + 208));
  v4 = v2 + v1[26];
  sub_1C1001C04(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  return swift_deallocObject();
}

double sub_1C1208034()
{
  type metadata accessor for PhotosItemsListFeed();
  OUTLINED_FUNCTION_7_3();
  return sub_1C1205E88(v0, v1, v2, v3, v4, v5, v6, v8);
}

uint64_t sub_1C120813C()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE97BE0);
  __swift_project_value_buffer(v0, qword_1EBE97BE0);
  return sub_1C1262700();
}

id sub_1C12081BC(id result)
{
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      v2 = [v1 compactSCSensitivityAnalysis];
      v3 = objc_allocWithZone(MEMORY[0x1E697B670]);
      return sub_1C12086A0(v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C120836C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C00);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C08);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v18 - v10;
  if (a2 && ([a2 respondsToSelector_] & 1) != 0 && (objc_msgSend(a2, sel_isContentAnalyzedAsPreviewable) & 1) == 0)
  {
    v15 = sub_1C12081BC(a2);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97C10);
    v17 = sub_1C120863C();
    sub_1C1264910();

    (*(v8 + 16))(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    v18 = v16;
    v19 = v17;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97C10);
    (*(*(v12 - 8) + 16))(v6, a1, v12);
    swift_storeEnumTagMultiPayload();
    v13 = sub_1C120863C();
    v18 = v12;
    v19 = v13;
    swift_getOpaqueTypeConformance2();
    return sub_1C1263C20();
  }
}

unint64_t sub_1C120863C()
{
  result = qword_1EDE76DC8;
  if (!qword_1EDE76DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76DC8);
  }

  return result;
}

id sub_1C12086A0(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 initFromCompactAnalysis:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1C1261BD0();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1C1208754()
{
  result = qword_1EDE76E58;
  if (!qword_1EDE76E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97C10);
    sub_1C120863C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E58);
  }

  return result;
}

uint64_t sub_1C1208820(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C120886C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

double sub_1C12088C0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6, int a7)
{
  if ((a7 & 0x100) != 0)
  {
    result = *&a1;
    if (a2)
    {
      return 10.0;
    }
  }

  else
  {
    sub_1C120892C(a1, a2 & 1, a3, a4 & 1, a5, a6, a7 & 0x100FF);
  }

  return result;
}

uint64_t sub_1C120892C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int a7)
{
  v45 = a4;
  v48 = a3;
  v49 = a1;
  v50 = a2;
  v47 = sub_1C1262E10();
  v9 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1262F40();
  v13 = sub_1C11A3D88();
  v14 = sub_1C12662E0();
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = v14;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1C1102430(0, v14 & ~(v14 >> 63), 0);
    v15 = v53;
    result = sub_1C12662D0();
    if (v16 < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v43 = a6;
    v44 = a7;
    v46 = (v9 + 16);
    v18 = (v9 + 8);
    v45 &= 1u;
    do
    {
      v19 = sub_1C12663A0();
      v20 = v12;
      v21 = v47;
      (*v46)(v11);
      v19(v52, 0);
      LOBYTE(v52[0]) = v50 & 1;
      v51 = v45;
      sub_1C1262DF0();
      v23 = v22;
      v25 = v24;
      (*v18)(v11, v21);
      v53 = v15;
      v26 = v13;
      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C1102430((v27 > 1), v28 + 1, 1);
        v15 = v53;
      }

      *(v15 + 16) = v28 + 1;
      v29 = v15 + 16 * v28;
      *(v29 + 32) = v23;
      *(v29 + 40) = v25;
      sub_1C1266320();
      --v16;
      v12 = v20;
      v13 = v26;
    }

    while (v16);
    a7 = v44;
    a6 = v43;
  }

  v30 = *(v15 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v52[0] = MEMORY[0x1E69E7CC0];
    sub_1C1102470(0, v30, 0);
    v31 = v52[0];
    v32 = *(v52[0] + 16);
    v33 = (v15 + 40);
    do
    {
      v34 = *v33;
      v52[0] = v31;
      v35 = *(v31 + 24);
      if (v32 >= v35 >> 1)
      {
        sub_1C1102470((v35 > 1), v32 + 1, 1);
        v31 = v52[0];
      }

      *(v31 + 16) = v32 + 1;
      *(v31 + 8 * v32 + 32) = v34;
      v33 += 2;
      ++v32;
      --v30;
    }

    while (v30);
  }

  v36 = sub_1C120983C(v31);
  v38 = v37;

  if (v38)
  {
    goto LABEL_22;
  }

  *a6 = v36;
  if ((a7 & 0x10000) != 0)
  {
    v39 = *(v15 + 16);
    if (v39)
    {
      v40 = (v15 + 32);
      v41 = 0.0;
      do
      {
        v42 = *v40;
        v40 += 2;
        v41 = v41 + v42;
        --v39;
      }

      while (v39);
    }
  }
}

uint64_t sub_1C1208CD8(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, unsigned __int8 a14)
{
  v170 = *&a13;
  v173 = a12;
  v175 = a5;
  v171 = a11;
  v169 = a14;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C40);
  MEMORY[0x1EEE9AC00](v182);
  v188 = &v168[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v181 = &v168[-v19];
  v20 = sub_1C1262E10();
  v185 = *(v20 - 8);
  v21 = v185;
  MEMORY[0x1EEE9AC00](v20);
  v176 = &v168[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v168[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v168[-v27];
  sub_1C1262F50();
  v174 = v25;
  sub_1C1262F50();
  sub_1C1262F50();
  v187 = COERCE_DOUBLE(sub_1C1209A58());
  v29 = COERCE_DOUBLE(sub_1C1265CE0());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C48);
  v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C50) - 8);
  v31 = *(*v30 + 72);
  v32 = (*(*v30 + 80) + 32) & ~*(*v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C12A3440;
  v34 = (v33 + v32);
  v35 = v30[14];
  sub_1C1265BA0();
  *v34 = v36;
  *(v34 + 1) = v37;
  v38 = v21 + 16;
  v39 = *(v21 + 16);
  v172 = v28;
  v39(&v34[v35], v28, v20);
  v40 = &v34[v31];
  v41 = v30[14];
  sub_1C1265BB0();
  *v40 = v42;
  *(v40 + 1) = v43;
  v179 = v39;
  v180 = v38;
  v39(&v40[v41], v176, v20);
  v183 = v20;
  v44 = sub_1C1265CE0();
  v178 = a4;
  v191 = 0;
  v45 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v44 + 64);
  v49 = (v46 + 63) >> 6;
  v177 = v185 + 32;
  v184 = v44;

  v50 = 0;
  v51 = a3;
  if (v48)
  {
    while (1)
    {
      v187 = v29;
      v52 = v50;
LABEL_9:
      v186 = v51;
      v53 = __clz(__rbit64(v48)) | (v52 << 6);
      v54 = v185;
      v55 = (*(v184 + 48) + 16 * v53);
      v56 = *v55;
      v57 = v55[1];
      v58 = v181;
      v59 = v182;
      v60 = *(v182 + 48);
      v61 = v183;
      v179(&v181[v60], *(v184 + 56) + *(v185 + 72) * v53, v183);
      v62 = *(v59 + 48);
      v63 = v188;
      *v188 = v56;
      *(v63 + 8) = v57;
      (*(v54 + 32))(v63 + v62, &v58[v60], v61);
      v64 = v191;
      LOBYTE(v189) = v191;
      v190 = 0;
      sub_1C1262DF0();
      v66 = v65;
      v67 = v187;
      swift_isUniquelyReferenced_nonNull_native();
      v189 = v67;
      v68 = sub_1C0FFE230(v56, v57);
      if (__OFADD__(*(*&v67 + 16), (v69 & 1) == 0))
      {
        break;
      }

      v70 = v68;
      v71 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909D8);
      if (sub_1C1266B30())
      {
        sub_1C0FFE230(v56, v57);
        OUTLINED_FUNCTION_5_38();
        if (!v73)
        {
          goto LABEL_82;
        }

        v70 = v72;
      }

      v29 = v189;
      if (v71)
      {
        *(*(*&v189 + 56) + 8 * v70) = v66;
      }

      else
      {
        *(*&v189 + 8 * (v70 >> 6) + 64) |= 1 << v70;
        v74 = (*(*&v29 + 48) + 16 * v70);
        *v74 = v56;
        v74[1] = v57;
        *(*(*&v29 + 56) + 8 * v70) = v66;
        v75 = *(*&v29 + 16);
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_66;
        }

        *(*&v29 + 16) = v77;
      }

      if (v64)
      {
        goto LABEL_71;
      }

      v48 &= v48 - 1;
      sub_1C1209C30(v188);
      v51 = v51 - v66;
      v50 = v52;
      if (!v48)
      {
        goto LABEL_5;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  while (1)
  {
LABEL_5:
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v52 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v52);
    ++v50;
    if (v48)
    {
      v187 = v29;
      goto LABEL_9;
    }
  }

  v192.origin.x = OUTLINED_FUNCTION_19_2();
  Width = CGRectGetWidth(v192);
  sub_1C1265BA0();
  *&v81 = COERCE_DOUBLE(sub_1C1040248(*&v29, v79, v80));
  if (v82)
  {
    goto LABEL_72;
  }

  v83 = *&v81;
  sub_1C1265BB0();
  v86 = COERCE_DOUBLE(sub_1C1040248(*&v29, v84, v85));
  v87 = v174;
  if (v88)
  {
    goto LABEL_73;
  }

  v89 = v83;
  if (v83 <= v86)
  {
    v89 = v86;
  }

  v90 = Width - (v89 + v89);
  v91 = v173;
  if (v173 == 1)
  {
    LOBYTE(v189) = 0;
    v190 = 0;
    sub_1C1262DF0();
    if (v92 < v90)
    {
      v90 = v92;
    }
  }

  sub_1C1265B90();
  v94 = v93;
  v96 = v95;
  swift_isUniquelyReferenced_nonNull_native();
  v189 = v29;
  sub_1C0FF892C(v90, v94, v96);
  v97 = *&v189;
  sub_1C1265B90();
  *&v100 = COERCE_DOUBLE(sub_1C1040248(v97, v98, v99));
  if (v101)
  {
    goto LABEL_74;
  }

  if (v91 == 2)
  {
    v193.origin.x = OUTLINED_FUNCTION_19_2();
    MidX = CGRectGetMidX(v193);
  }

  else
  {
    v103 = a2;
    v104 = *&v100;
    OUTLINED_FUNCTION_3_51();
    v105 = CGRectGetMidX(v194);
    v106 = v104 * -0.5;
    a2 = v103;
    MidX = v105 + v106;
  }

  sub_1C1265BA0();
  *&v109 = COERCE_DOUBLE(sub_1C1040248(v97, v107, v108));
  if (v110)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v111 = *&v109;
  v195.origin.x = OUTLINED_FUNCTION_19_2();
  MinX = CGRectGetMinX(v195);
  v188 = *&a2;
  OUTLINED_FUNCTION_3_51();
  MaxX = CGRectGetMaxX(v196);
  sub_1C1265BB0();
  v116 = COERCE_DOUBLE(sub_1C1040248(v97, v114, v115));
  if (v117)
  {
    goto LABEL_76;
  }

  v118 = MinX + v111;
  v119 = MaxX - v116;
  if (v91 == 2)
  {
    v187 = MaxX - v116;
    v120 = v119 - v118 - (v175 + v175);
    OUTLINED_FUNCTION_3_51();
    CGRectGetHeight(v197);
    LOBYTE(v189) = 0;
    v190 = 0;
    sub_1C1262DF0();
    v122 = INFINITY;
    if ((v169 & 1) == 0)
    {
      v122 = v170;
    }

    sub_1C1209808(MEMORY[0x1E69E7CC0], v120, v121, v122);
    v124 = v123;
    sub_1C1265B90();
    v126 = v125;
    v128 = v127;
    swift_isUniquelyReferenced_nonNull_native();
    v189 = *&v97;
    sub_1C0FFE230(v126, v128);
    OUTLINED_FUNCTION_8_40();
    if (v76)
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v131 = v129;
    v132 = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909D8);
    if (OUTLINED_FUNCTION_9_38())
    {
      sub_1C0FFE230(v126, v128);
      OUTLINED_FUNCTION_5_38();
      if (!v73)
      {
        goto LABEL_82;
      }

      v131 = v133;
    }

    if ((v132 & 1) == 0)
    {
      goto LABEL_69;
    }

    v134 = *&v189;
    *(*(*&v189 + 56) + 8 * v131) = v124;
  }

  else
  {
    sub_1C1265B90();
    v137 = COERCE_DOUBLE(sub_1C1040248(v97, v135, v136));
    if (v138)
    {
      goto LABEL_80;
    }

    if (MidX - v175 >= v118)
    {
      v140 = MidX + v137 + v175;
      v139 = 0.0;
      if (v119 < v140)
      {
        v139 = v140 - v119;
      }
    }

    else
    {
      v139 = v118 - (MidX - v175);
    }

    sub_1C1265B90();
    v142 = v141;
    v144 = v143;
    swift_isUniquelyReferenced_nonNull_native();
    v189 = *&v97;
    sub_1C0FFE230(v142, v144);
    OUTLINED_FUNCTION_8_40();
    if (v76)
    {
      goto LABEL_68;
    }

    v147 = v145;
    v148 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909D8);
    if (OUTLINED_FUNCTION_9_38())
    {
      sub_1C0FFE230(v142, v144);
      OUTLINED_FUNCTION_5_38();
      if (!v73)
      {
        goto LABEL_82;
      }

      v147 = v149;
    }

    if ((v148 & 1) == 0)
    {
      goto LABEL_70;
    }

    v134 = *&v189;
    *(*(*&v189 + 56) + 8 * v147) = *(*(*&v189 + 56) + 8 * v147) - v139;
    sub_1C1265B90();
    sub_1C1040248(v134, v150, v151);
    if (v152)
    {
      goto LABEL_81;
    }

    OUTLINED_FUNCTION_3_51();
    CGRectGetMidX(v198);
  }

  v153 = v172;
  OUTLINED_FUNCTION_3_51();
  CGRectGetMidY(v199);
  if (v91 == 2)
  {
    sub_1C1265B90();
  }

  else
  {
    sub_1C1265BA0();
  }

  sub_1C1265B90();
  sub_1C1040248(v134, v154, v155);
  if (v156)
  {
    goto LABEL_77;
  }

  v200.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetHeight(v200);
  OUTLINED_FUNCTION_1_54();
  sub_1C1262E00();
  v201.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetMinX(v201);
  v202.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetMidY(v202);
  sub_1C1265BA0();
  sub_1C1265BA0();
  sub_1C1040248(v134, v157, v158);
  if (v159)
  {
    goto LABEL_78;
  }

  v203.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetHeight(v203);
  OUTLINED_FUNCTION_1_54();
  sub_1C1262E00();
  v204.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetMaxX(v204);
  v205.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetMidY(v205);
  sub_1C1265BB0();
  sub_1C1265BB0();
  sub_1C1040248(v134, v160, v161);
  if ((v162 & 1) == 0)
  {

    v206.origin.x = OUTLINED_FUNCTION_19_2();
    CGRectGetHeight(v206);
    OUTLINED_FUNCTION_1_54();
    v163 = v176;
    sub_1C1262E00();
    v164 = *(v185 + 8);
    v165 = v163;
    v166 = v183;
    v164(v165, v183);
    v164(v87, v166);
    v164(v153, v166);
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  result = sub_1C1266DA0();
  __break(1u);
  return result;
}

uint64_t sub_1C1209808(uint64_t result, double a2, double a3, double a4)
{
  if (a3 < a2)
  {
    a2 = a3;
  }

  if (a2 > a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 < a2)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C120983C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double sub_1C1209880(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6)
{
  v7 = a2 & 1;
  v8 = a4 & 1;
  if (v6[9])
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | v6[8];
  if (v6[10])
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  return sub_1C12088C0(a1, v7, a3, v8, a5, a6, v10 | v11);
}

uint64_t sub_1C12098EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  if (*(v10 + 9))
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | *(v10 + 8);
  if (*(v10 + 10))
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  return sub_1C1208CD8(a7, a8, a9, a10, *v10, a1, a2, a3, a4, a5, a6, v12 | v13, *(v10 + 16), *(v10 + 24));
}

uint64_t sub_1C1209948()
{
  if (v0[9])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | v0[8];
  if (v0[10])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return nullsub_1(v2 | v3);
}

void (*sub_1C120998C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

unint64_t sub_1C1209A04()
{
  result = qword_1EDE7C7C8;
  if (!qword_1EDE7C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C7C8);
  }

  return result;
}

unint64_t sub_1C1209A58()
{
  result = qword_1EDE76B18;
  if (!qword_1EDE76B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76B18);
  }

  return result;
}

uint64_t sub_1C1209AAC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_4_55(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 24 * result;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

void sub_1C1209B00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_63(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * v5);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  *(v8 + 25) = *(v9 + 25);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_39(v6, v13);
  }
}

void *sub_1C1209B40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_2_63(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 112 * v6), v8, 0x70uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_1C1209B8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_4_55(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 48 * v5);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v7[2] = v8[2];
  v10 = v6[7] + 16 * v5;
  *v10 = v11;
  *(v10 + 8) = v12;
  v13 = v6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_39(v6, v15);
  }
}

uint64_t sub_1C1209BE8(unint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_4_55(a1, a2 + 8 * (a1 >> 6));
  v4 = (v3[6] + 16 * result);
  *v4 = v5;
  v4[1] = v6;
  *(v3[7] + 8 * result) = v7;
  v8 = v3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v3[2] = v10;
  }

  return result;
}

uint64_t sub_1C1209C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1209C98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_63(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_39(v6, v11);
  }
}

uint64_t sub_1C1209CC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_4_55(a1, a3 + 8 * (a1 >> 6));
  v5 = (v4[6] + 16 * result);
  *v5 = v6;
  v5[1] = v7;
  *(v4[7] + 8 * result) = v8;
  v9 = v4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v11;
  }

  return result;
}

_BYTE *sub_1C1209D18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C1209DF4()
{
  result = qword_1EBE97C58[0];
  if (!qword_1EBE97C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE97C58);
  }

  return result;
}

uint64_t sub_1C1209E48()
{
  sub_1C1263DC0();
  sub_1C120AF8C(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0]);
  return sub_1C1266FE0();
}

uint64_t PhotosMiniGridAssetView.init(itemListManager:columns:rows:reverseItems:interitemSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  return result;
}

uint64_t PhotosMiniGridAssetView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[3] = a2;
  v4 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24[1] = a1;
  v24[2] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v24[0] = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_3_5();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_3_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1C12661A0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE905E0);
  OUTLINED_FUNCTION_1_55();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = v8;
  *(&v29 + 1) = AssociatedTypeWitness;
  *&v30 = v9;
  *(&v30 + 1) = WitnessTable;
  v31 = AssociatedConformanceWitness;
  sub_1C12656A0();
  v28 = sub_1C0FDC834();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  v12 = sub_1C1265AF0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  v19 = v2[1];
  v29 = *v2;
  v30 = v19;
  v31 = *(v2 + 4);
  v20 = v2[1];
  v25 = *v2;
  v26 = v20;
  v27 = *(v2 + 4);
  sub_1C120A25C();
  v24[6] = v6;
  v24[7] = v24[0];
  v24[8] = &v29;
  sub_1C1263AA0();
  sub_1C1209E48();
  sub_1C1265AE0();
  OUTLINED_FUNCTION_2_64();
  v21 = swift_getWitnessTable();
  sub_1C0FDBA4C(v15, v12, v21);
  v22 = *(v13 + 8);
  v22(v15, v12);
  sub_1C0FDBA4C(v18, v12, v21);
  return (v22)(v18, v12);
}

uint64_t sub_1C120A25C()
{
  v1 = sub_1C1265810();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 8);
  *v4 = xmmword_1C12C7C50;
  (*(v2 + 104))(v4, *MEMORY[0x1E697D748], v1);
  sub_1C1265830();
  return sub_1C12478D4(v7, v8);
}

uint64_t sub_1C120A3AC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = sub_1C12661A0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE905E0);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v35 = v28;
  *(&v35 + 1) = AssociatedTypeWitness;
  *&v36 = v27;
  *(&v36 + 1) = WitnessTable;
  v37 = AssociatedConformanceWitness;
  v8 = sub_1C12656A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = a1[1];
  v35 = *a1;
  v36 = v15;
  v37 = *(a1 + 4);
  v16 = type metadata accessor for PhotosMiniGridAssetView();
  sub_1C120A788();
  v34 = v17;
  v30 = a2;
  v31 = a3;
  swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = a1[1];
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a1 + 4);
  (*(*(v16 - 8) + 16))(v33, a1, v16);
  v23 = sub_1C0FDC834();
  sub_1C1265680();
  v32 = v23;
  v20 = swift_getWitnessTable();
  sub_1C0FDBA4C(v11, v8, v20);
  v21 = *(v9 + 8);
  v21(v11, v8);
  sub_1C0FDBA4C(v14, v8, v20);
  return (v21)(v14, v8);
}

void sub_1C120A788()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = v11 - v3;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if ((v6 * v5) >> 64 == (v6 * v5) >> 63)
  {
    v7 = *(v0 + 32);
    v8 = *(v0 + 24);
    *&v12 = *v0;
    *(&v12 + 1) = v5;
    *&v13 = v6;
    BYTE8(v13) = v8;
    v14 = v7;
    sub_1C120AF08();
    swift_getAssociatedConformanceWitness();
    v9 = sub_1C1262310();
    (*(v2 + 8))(v4, AssociatedTypeWitness);
    v11[1] = v9;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_1C12661A0();
    swift_getWitnessTable();
    sub_1C1266360();
    v12 = v15;
    v13 = v16;
    sub_1C1266800();
    swift_getWitnessTable();
    v10 = sub_1C12661C0();
    if (v8 == 1)
    {
      *&v12 = v10;
      swift_getWitnessTable();
      sub_1C1266010();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C120AA24@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v34 = type metadata accessor for PhotosAssetView();
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v30 - v7;
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v31 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = a2[1];
  v37 = *a2;
  v38 = v15;
  v39 = *(a2 + 4);
  v17 = v16;
  type metadata accessor for PhotosMiniGridAssetView();
  sub_1C120AF08();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v36[3] = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v33, v18);
  v20 = v31;
  sub_1C1262340();
  (*(v32 + 8))(v8, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  (*(v17 + 16))(v11, v14, v20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v9) == 1)
  {
    (*(v17 + 8))(v11, v20);
    v21 = 0;
  }

  else
  {
    sub_1C12622B0();
    v21 = v37;
    (*(*(v9 - 8) + 8))(v11, v9);
  }

  v22 = sub_1C1200D04();
  [v22 setNetworkAccessAllowed_];
  (*(v17 + 8))(v14, v20);
  *(v5 + 19) = swift_getKeyPath();
  v5[160] = 0;
  v23 = v34;
  v24 = *(v34 + 48);
  *&v5[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v25 = &v5[*(v23 + 52)];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = &v5[*(v23 + 56)];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  *v5 = 0;
  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  v5[48] = 1;
  v5[8] = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 34) = 256;
  *(v5 + 52) = 0;
  *(v5 + 60) = 0;
  *(v5 + 9) = 0;
  v5[80] = 1;
  *(v5 + 11) = v21;
  *(v5 + 12) = 0;
  *(v5 + 13) = v22;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  v5[144] = 2;
  v27 = v35;
  sub_1C0FF7598(v5, v35);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0);
  v29 = v27 + *(result + 36);
  *v29 = 0x3FF0000000000000;
  *(v29 + 8) = 0;
  return result;
}

uint64_t sub_1C120AF38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C120AF8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C120AFE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1C120B020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C120B098@<X0>(uint64_t a1@<X8>)
{
  *a1 = v1[5];
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97CE8);
  return sub_1C120B0EC(v1, a1 + *(v3 + 44));
}

uint64_t sub_1C120B0EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97CF0);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97CF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D00);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D08);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1C12621B0();
  if (v19)
  {
    *&__dst[0] = v18;
    *(&__dst[0] + 1) = v19;
    sub_1C0FDB9AC();
    v20 = sub_1C12648F0();
    v22 = v21;
    v24 = v23;
    v57 = v12;
    *&v60 = a2;
    sub_1C120B7FC();
    sub_1C1264710();
    v25 = sub_1C1264870();
    *&v59 = v9;
    v26 = v25;
    v56 = v27;
    v58 = v10;
    v29 = v28;
    v55 = v30;

    sub_1C0FDB8E8(v20, v22, v24 & 1);

    a2 = v60;
    LOBYTE(v20) = sub_1C124DC5C();
    KeyPath = swift_getKeyPath();
    v32 = swift_getKeyPath();
    v67 = v29 & 1;
    v65 = 0;
    *&__src[0] = v26;
    v9 = v59;
    *(&__src[0] + 1) = v56;
    LOBYTE(__src[1]) = v29 & 1;
    *(&__src[1] + 1) = v55;
    *&__src[2] = KeyPath;
    BYTE8(__src[2]) = v20;
    *&__src[3] = v32;
    *(&__src[3] + 1) = 2;
    LOBYTE(__src[4]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936A8);
    sub_1C120BC3C(&qword_1EDE7BDB8, &qword_1EBE936A8, &unk_1C12C7F80, sub_1C10D8034);
    v33 = v57;
    sub_1C1264DF0();
    memcpy(__dst, __src, 0x41uLL);
    sub_1C0FD1A5C(__dst, &qword_1EBE936A8);
    sub_1C0FDB71C(v33, v17, &qword_1EBE97D00);
    v34 = v17;
    v35 = 0;
    v36 = v58;
  }

  else
  {
    v34 = v17;
    v35 = 1;
    v36 = v10;
  }

  __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
  v37 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = sub_1C12621C0();
  if (!v39)
  {
    goto LABEL_10;
  }

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

LABEL_10:
    v49 = v9;
    v50 = 1;
    goto LABEL_11;
  }

  sub_1C120B870(a1, v38, v39, __dst);

  v41 = __dst[2];
  v60 = __dst[0];
  v59 = __dst[1];
  v42 = PXFontWithTextStyleSymbolicTraitsAndWeight();
  v43 = sub_1C1264710();
  v44 = swift_getKeyPath();
  v45 = sub_1C124DC5C();
  v46 = swift_getKeyPath();
  LOBYTE(__dst[0]) = v41;
  v47 = swift_getKeyPath();
  v67 = 0;
  __src[1] = v59;
  __src[0] = v60;
  LOBYTE(__src[2]) = v41;
  *(&__src[2] + 1) = v44;
  *&__src[3] = v43;
  *(&__src[3] + 1) = v46;
  LOBYTE(__src[4]) = v45;
  *(&__src[4] + 1) = v47;
  *&__src[5] = 2;
  BYTE8(__src[5]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D18);
  sub_1C120BC3C(&qword_1EBE97D20, &qword_1EBE97D18, &unk_1C12C7F60, sub_1C120BA48);
  v48 = v61;
  sub_1C1264DF0();
  memcpy(__dst, __src, 0x59uLL);
  sub_1C0FD1A5C(__dst, &qword_1EBE97D18);
  sub_1C0FDB71C(v48, v9, &qword_1EBE97CF0);
  v49 = v9;
  v50 = 0;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v49, v50, 1, v63);
  v51 = v62;
  sub_1C0FDB800(v17, v62, &qword_1EBE97D08);
  v52 = v64;
  sub_1C0FDB800(v9, v64, &qword_1EBE97CF8);
  sub_1C0FDB800(v51, a2, &qword_1EBE97D08);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D10);
  sub_1C0FDB800(v52, a2 + *(v53 + 48), &qword_1EBE97CF8);
  sub_1C0FD1A5C(v9, &qword_1EBE97CF8);
  sub_1C0FD1A5C(v37, &qword_1EBE97D08);
  sub_1C0FD1A5C(v52, &qword_1EBE97CF8);
  return sub_1C0FD1A5C(v51, &qword_1EBE97D08);
}

id sub_1C120B7FC()
{
  sub_1C1263AB0();
  sub_1C1263A90();
  v0 = PXFontWithTextStyleSymbolicTraitsAndWeight();

  return v0;
}

double sub_1C120B870@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v8 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C1262190();
  if (v9)
  {
    sub_1C1263980();
    sub_1C1263970();
    sub_1C1265320();
    sub_1C1263950();

    sub_1C1263970();
    sub_1C1263960();
    sub_1C1263970();
    sub_1C12639B0();
    sub_1C12648D0();
  }

  else
  {
    *&v11 = a2;
    *(&v11 + 1) = a3;
    sub_1C0FDB9AC();

    sub_1C12648F0();
  }

  sub_1C1263C20();
  result = *&v11;
  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 32) = v13;
  return result;
}

unint64_t sub_1C120BA48()
{
  result = qword_1EBE97D28;
  if (!qword_1EBE97D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97D30);
    sub_1C120BB00();
    sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97D28);
  }

  return result;
}

unint64_t sub_1C120BB00()
{
  result = qword_1EBE97D38;
  if (!qword_1EBE97D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97D40);
    sub_1C120BBB8();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97D38);
  }

  return result;
}

unint64_t sub_1C120BBB8()
{
  result = qword_1EBE97D48;
  if (!qword_1EBE97D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97D50);
    sub_1C1089CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97D48);
  }

  return result;
}

uint64_t sub_1C120BC3C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PhotosObservableFeaturedPhoto.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableFeaturedPhoto.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableFeaturedPhoto.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  OUTLINED_FUNCTION_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C1266790();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_7();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_15();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_22_1();
  sub_1C120BF40(v14, v15);
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  (*(v6 + 16))(v9, a1, v5);
  OUTLINED_FUNCTION_10_2();
  sub_1C10342F0(v9, v13, v1 + *(v16 + 112));
  sub_1C120D930();
  (*(v6 + 8))(a1, v5);
  return v1;
}

uint64_t sub_1C120BF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t sub_1C120BFC0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_15();
  v4 = v3;
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16[-v12];
  sub_1C120D0D0(&v16[-v12]);
  v14 = *(v10 + 8);
  v14(v13, v8);
  v19 = v7;
  v20 = v6;
  v21 = *(v4 + 96);
  swift_getKeyPath();
  v17 = v1;
  v18 = a1;
  sub_1C120DBF4();

  return v14(a1, v8);
}

uint64_t sub_1C120C174(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_7();
  sub_1C120C570(v2);
  v8 = *(v6 + 8);
  v8(v2, v4);
  OUTLINED_FUNCTION_20();
  swift_getKeyPath();
  sub_1C120DBF4();

  return (v8)(a1, v4);
}

uint64_t sub_1C120C2F0(uint64_t a1)
{
  v24 = a1;
  v2 = *(*v1 + 80);
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v21 - v3;
  v23 = v1;
  v5 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1C1266790();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = *(v5 + 56);
  v15(v2, v5, v12);
  v24 = AssociatedTypeWitness;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness);
  v17 = *(v8 + 8);
  result = v17(v14, v7);
  if (EnumTagSinglePayload == 1)
  {
    v19 = v21;
    sub_1C120CA18();
    (v15)(v2, v5);
    (*(v22 + 8))(v19, v2);
    v20 = __swift_getEnumTagSinglePayload(v10, 1, v24);
    result = v17(v10, v7);
    if (v20 != 1)
    {
      return sub_1C120D930();
    }
  }

  return result;
}

uint64_t sub_1C120C570@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_19_21();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C120C5F4(_BYTE *a1)
{
  OUTLINED_FUNCTION_2_15();
  v4 = *(v3 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  OUTLINED_FUNCTION_5();
  v10 = *(v9 + 112);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v10, v4);
  swift_beginAccess();
  (*(v5 + 24))(v1 + v10, a1, v4);
  swift_endAccess();
  sub_1C120C2F0(v8);
  v11 = *(v5 + 8);
  v11(a1, v4);
  return v11(v8, v4);
}

void (*sub_1C120C758(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 80);
  *(v6 + 32) = v5;
  OUTLINED_FUNCTION_1();
  v8 = v7;
  *(v9 + 40) = v7;
  v11 = *(v10 + 64);
  v3[6] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[7] = v12;
  OUTLINED_FUNCTION_10_2();
  v14 = *(v13 + 112);
  swift_beginAccess();
  v15 = *(v8 + 16);
  v3[8] = v15;
  v3[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v12, v1 + v14, v5);
  return sub_1C120C888;
}

void sub_1C120C888(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1C120C5F4(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1C120C5F4(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1C120C958(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C120C174(v3);
}

uint64_t sub_1C120CA38(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C120C5F4(v3);
}

void (*sub_1C120CB04(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  swift_getKeyPath();
  sub_1C120DB58();

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_29();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableFeaturedPhoto();
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_1();
  sub_1C1261F50();

  v3[6] = sub_1C120C758(v3);
  return sub_1C120CC54;
}

uint64_t sub_1C120CC60()
{
  OUTLINED_FUNCTION_2_16();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  sub_1C120CA18();
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1C120CD40()
{
  OUTLINED_FUNCTION_3_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C120CA18();
  OUTLINED_FUNCTION_7_0();
  (*(*(v3 + 88) + 40))(v1);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C120CE20()
{
  OUTLINED_FUNCTION_3_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C120CA18();
  OUTLINED_FUNCTION_7_0();
  (*(*(v3 + 88) + 48))(v1);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C120CF00()
{
  OUTLINED_FUNCTION_2_16();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_1C120CA18();
  OUTLINED_FUNCTION_20();
  (*(*(v7 + 88) + 56))(v1);
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1C120CFF0()
{
  OUTLINED_FUNCTION_3_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C120CA18();
  OUTLINED_FUNCTION_7_0();
  (*(*(v3 + 96) + 16))(v1);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C120D0D0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_19_21();
  OUTLINED_FUNCTION_20();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1C120D180(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1C120D248())()
{
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C120D2D4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_1C1266790();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_1C120BFC0(v5);
}

uint64_t sub_1C120D3E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath();
  sub_1C120DB58();

  return a2(v3);
}

uint64_t sub_1C120D464(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1C1266790();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2, v4);
  return sub_1C120D180(v6);
}

void (*sub_1C120D578(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  swift_getKeyPath();
  sub_1C120DB58();

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_29();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableFeaturedPhoto();
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_1();
  sub_1C1261F50();

  v3[6] = sub_1C120D248();
  return sub_1C120D6C8;
}

void sub_1C120D6D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1C120D738();

  free(v1);
}

uint64_t sub_1C120D738()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_39_0();
  swift_getKeyPath();
  type metadata accessor for PhotosObservableFeaturedPhoto();
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t sub_1C120D830(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_7();
  sub_1C120CA18();
  (*(*(v5 + 88) + 72))(a1, a2, v6);
  v8 = OUTLINED_FUNCTION_22_1();
  return v9(v8);
}

uint64_t sub_1C120D930()
{
  OUTLINED_FUNCTION_3_6();
  v2 = v1;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_7_0();
  *(v6 + 16) = *(v5 + 80);
  *(v6 + 24) = *(v2 + 88);
  *(v6 + 40) = *(v0 + 104);
  *(v6 + 48) = v3;

  sub_1C120D830(sub_1C120E3A8, v4);
}

uint64_t sub_1C120DA30(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_1C1266790();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v5, a1, v2);
    sub_1C120BFC0(v5);
  }

  return result;
}

uint64_t sub_1C120DB58()
{
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C120DBF4()
{
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableFeaturedPhoto.deinit()
{
  OUTLINED_FUNCTION_3_6();
  (*(*(*(v0 + 80) - 8) + 8))(v1 + *(v2 + 112), *(v0 + 80));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v1 + v4);
  OUTLINED_FUNCTION_10_2();
  v7 = *(v6 + 128);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v8 + 8))(v1 + v7);
  return v1;
}

uint64_t PhotosObservableFeaturedPhoto.__deallocating_deinit()
{
  PhotosObservableFeaturedPhoto.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C120DF74(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C120CB04(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C120DFD0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C120E070()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = sub_1C1266790();
    if (v2 <= 0x3F)
    {
      v0 = sub_1C1261F70();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return v0;
}

uint64_t PhotosOffsetReaderContainer.init(coordinateSpace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for PhotosOffsetReaderContainer(0) + 20)) = 0;
  sub_1C1263D00();
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_7_43();

  return v4(v3, a1);
}

uint64_t View.photosOnLeadingOffsetChange(container:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_56();
  sub_1C120FC98(a1, v14, v15);
  v16 = (v14 + *(v10 + 20));
  *v16 = a2;
  v16[1] = a3;

  sub_1C1265410();
  OUTLINED_FUNCTION_8_41();
  sub_1C1265410();
  OUTLINED_FUNCTION_8_41();
  v17 = *(v10 + 32);
  *(v14 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x1C68EE920](v14, a4, v10, a5);
  return sub_1C120E734(v14, type metadata accessor for PhotosLeadingOffsetReaderModifier);
}

uint64_t View.photosOffsetReaderContainer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosOffsetReaderContainerModifier(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  sub_1C120E6C4(a1, v9 - v8);
  MEMORY[0x1C68EE920](v10, a2, v6, a3);
  return sub_1C120E734(v10, type metadata accessor for PhotosOffsetReaderContainerModifier);
}

uint64_t sub_1C120E6C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C120E734(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C120E7B4()
{
  result = sub_1C1263D00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06PhotosA6UICore0F29OffsetReaderContainerModifier33_F4FA72AEEE432DD93D9D5FE77791B8ECLLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_1C1263190();
  sub_1C120E8C0(a3, a4);
  return swift_getWitnessTable();
}

uint64_t sub_1C120E8C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C120E930()
{
  sub_1C120EB28(319, &qword_1EBE97D90, type metadata accessor for PhotosOffsetReaderContainer, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C120E9F4()
{
  type metadata accessor for PhotosOffsetReaderContainer(319);
  if (v0 <= 0x3F)
  {
    sub_1C1007F88();
    if (v1 <= 0x3F)
    {
      sub_1C120EAD8();
      if (v2 <= 0x3F)
      {
        sub_1C120EB28(319, &qword_1EDE77570, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C120EAD8()
{
  if (!qword_1EDE76CB0)
  {
    v0 = sub_1C1265450();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76CB0);
    }
  }
}

void sub_1C120EB28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C120EBA8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhotosOffsetReaderContainerModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = type metadata accessor for PhotosOffsetReaderContainer(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D60);
  MEMORY[0x1C68EEF20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DA8);
  sub_1C0FDB6D4(&qword_1EBE97DB0, &qword_1EBE97DA8);
  sub_1C1264BA0();
  v10 = sub_1C1263D00();
  (*(*(v10 - 8) + 8))(v8, v10);
  sub_1C120FC98(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosOffsetReaderContainerModifier);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1C120FD24(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PhotosOffsetReaderContainerModifier);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DB8);
  v14 = (a1 + *(result + 36));
  *v14 = sub_1C0FBFBE4;
  v14[1] = 0;
  v14[2] = sub_1C120FCF8;
  v14[3] = v12;
  return result;
}

uint64_t sub_1C120EE04(uint64_t *a1)
{
  v2 = type metadata accessor for PhotosOffsetReaderContainer(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D60);
  MEMORY[0x1C68EEF20]();
  *&v5[*(v3 + 28)] = v6;
  return sub_1C12655F0();
}

uint64_t sub_1C120EEC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a1;
  v67 = a2;
  v59 = sub_1C1263150();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  v6 = *(v5 - 8);
  v77 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v7;
  v9 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DC0);
  MEMORY[0x1EEE9AC00](v71);
  v76 = &v56 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DC8);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v73 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DD0);
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DD8);
  v16 = *(v15 - 8);
  v65 = v15;
  v66 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v56 - v17;
  sub_1C120FC98(v2, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v18 = *(v6 + 80);
  v19 = (v18 + 16) & ~v18;
  v20 = swift_allocObject();
  sub_1C120FD24(v9, v20 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  sub_1C120FC98(v2, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v21 = swift_allocObject();
  sub_1C120FD24(v9, v21 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DE0);
  v23 = v76;
  (*(*(v22 - 8) + 16))(v76, v57, v22);
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DE8) + 36)];
  *v24 = sub_1C120FD84;
  v24[1] = v20;
  v24[2] = sub_1C120FF08;
  v24[3] = v21;
  v75 = v2;
  v69 = type metadata accessor for PhotosLeadingOffsetReaderModifier;
  sub_1C120FC98(v2, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v25 = swift_allocObject();
  v70 = type metadata accessor for PhotosLeadingOffsetReaderModifier;
  sub_1C120FD24(v9, v25 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  sub_1C120FC98(v2, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v68 = v18;
  v26 = swift_allocObject();
  sub_1C120FD24(v9, v26 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v27 = &v76[*(v71 + 36)];
  *v27 = sub_1C120FFB8;
  v27[1] = v25;
  v27[2] = sub_1C1210048;
  v27[3] = v26;
  v28 = v58;
  sub_1C0FD7674(v58);
  sub_1C120FC98(v3, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v29 = swift_allocObject();
  sub_1C120FD24(v9, v29 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v57 = sub_1C1210078();
  v30 = sub_1C120E8C0(&qword_1EBE97E08, MEMORY[0x1E697E7E0]);
  v31 = v59;
  v32 = v76;
  sub_1C1265010();

  (*(v60 + 8))(v28, v31);
  sub_1C1210214(v32);
  v33 = v75;
  v34 = (v75 + *(v77 + 32));
  v35 = *v34;
  v36 = v34[1];
  v78 = v35;
  v79 = v36;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  v37 = v69;
  sub_1C120FC98(v33, v9, v69);
  v56 = v8;
  v38 = swift_allocObject();
  sub_1C120FD24(v9, v38 + v19, v70);
  v78 = v71;
  v79 = v31;
  v80 = v57;
  v81 = v30;
  v71 = MEMORY[0x1E6981448];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_1C0FF9EE4();
  v41 = v73;
  v42 = v61;
  sub_1C1265010();

  (*(v62 + 8))(v41, v42);
  v43 = v75;
  v44 = (v75 + *(v77 + 36));
  v45 = *v44;
  v46 = v44[1];
  v78 = v45;
  v79 = v46;
  sub_1C1265420();
  sub_1C120FC98(v43, v9, v37);
  v47 = swift_allocObject();
  v48 = v70;
  sub_1C120FD24(v9, v47 + v19, v70);
  v78 = v42;
  v79 = MEMORY[0x1E69E7DE0];
  v80 = OpaqueTypeConformance2;
  v81 = v40;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v63;
  v51 = v72;
  sub_1C1265010();

  (*(v64 + 8))(v51, v50);
  v82 = *(v75 + *(type metadata accessor for PhotosOffsetReaderContainer(0) + 20));
  sub_1C120FC98(v75, v9, v69);
  v52 = swift_allocObject();
  sub_1C120FD24(v9, v52 + v19, v48);
  v78 = v50;
  v79 = MEMORY[0x1E69E7DE0];
  v80 = v49;
  v81 = v40;
  swift_getOpaqueTypeConformance2();
  v53 = v65;
  v54 = v74;
  sub_1C1265010();

  return (*(v66 + 8))(v54, v53);
}

uint64_t sub_1C120F820()
{
  type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  return sub_1C1265430();
}

void sub_1C120F898(uint64_t a1@<X1>, double (*a2)(double, double, double, double)@<X2>, double *a3@<X8>)
{
  v6 = type metadata accessor for PhotosOffsetReaderContainer(0);
  v7 = OUTLINED_FUNCTION_15(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_1_56();
  sub_1C120FC98(a1, v10, v11);
  v12 = sub_1C1263D00();
  sub_1C1262D50();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(*(v12 - 8) + 8))(v10, v12);
  *a3 = a2(v14, v16, v18, v20);
}

uint64_t sub_1C120F9B0()
{
  type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  return sub_1C1265430();
}

double sub_1C120FA28()
{
  v1 = sub_1C1263150();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  sub_1C0FD7674(v4);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == *MEMORY[0x1E697E7D0])
  {
    v7 = (v0 + *(v5 + 24));
    v8 = *v7;
    v9 = v7[1];
    v21 = v8;
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
    sub_1C1265420();
    return v20;
  }

  else if (v6 == *MEMORY[0x1E697E7D8])
  {
    v11 = *(v0 + *(type metadata accessor for PhotosOffsetReaderContainer(0) + 20));
    v12 = (v0 + *(v5 + 28));
    v13 = *v12;
    v14 = v12[1];
    v21 = v13;
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
    sub_1C1265420();
    return v11 - v20;
  }

  else
  {
    v15 = (v0 + *(v5 + 24));
    v16 = *v15;
    v17 = v15[1];
    v21 = v16;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
    sub_1C1265420();
    v10 = v20;
    (*(v2 + 8))(v4, v1);
  }

  return v10;
}

uint64_t sub_1C120FC2C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PhotosLeadingOffsetReaderModifier(0) + 20));
  v2 = sub_1C120FA28();
  return v1(v2);
}

uint64_t sub_1C120FC98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C120FD24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t objectdestroy_23Tm()
{
  v1 = (type metadata accessor for PhotosLeadingOffsetReaderModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1C1263D00();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v2);

  v4 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_3();
    (*(v5 + 8))(v2 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C120FF34(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a2(0);
  OUTLINED_FUNCTION_15(v5);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, v7);
}

void sub_1C120FFD0(double (*a1)(double, double, double, double)@<X1>, double *a2@<X8>)
{
  v5 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  OUTLINED_FUNCTION_15(v5);
  sub_1C120F898(v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)), a1, a2);
}

unint64_t sub_1C1210078()
{
  result = qword_1EBE97DF0;
  if (!qword_1EBE97DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DC0);
    sub_1C1210130();
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97DF0);
  }

  return result;
}

unint64_t sub_1C1210130()
{
  result = qword_1EBE97DF8;
  if (!qword_1EBE97DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DE8);
    sub_1C0FDB6D4(&qword_1EBE97E00, &qword_1EBE97DE0);
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97DF8);
  }

  return result;
}

uint64_t sub_1C1210214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C121027C()
{
  v1 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  OUTLINED_FUNCTION_15(v1);
  return sub_1C120FC2C(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

unint64_t sub_1C12102CC()
{
  result = qword_1EBE97E10;
  if (!qword_1EBE97E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DA8);
    sub_1C0FDB6D4(&qword_1EBE97DB0, &qword_1EBE97DA8);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E10);
  }

  return result;
}

uint64_t OneUpRecentlyDeletedAlbumToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = 0x4044000000000000;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpRecentlyDeletedAlbumToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C1210538()
{
  result = qword_1EBE97E18;
  if (!qword_1EBE97E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E18);
  }

  return result;
}

uint64_t PhotosCollectionTitleOverlayBannerPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

unint64_t sub_1C121066C()
{
  result = qword_1EBE97E28;
  if (!qword_1EBE97E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionTitleOverlayBannerPlacement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OneUpChromeViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  OneUpChromeViewModel.init()();
  return v0;
}

__n128 sub_1C1210800@<Q0>(char a1@<W0>, __n128 *a2@<X8>)
{
  switch(*v2)
  {
    case 1:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v522) = 256;
      sub_1C117952C();
      sub_1C1179580();
      v164 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_18_31(v164, &type metadata for OneUpPhotoLibraryToolbar, &type metadata for OneUpSharedAlbumToolbar, v165, v166, v167, v168, v169, v343, v379, v409, v439, v469);
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_10_34();
      goto LABEL_12;
    case 2:
      swift_getKeyPath();
      OUTLINED_FUNCTION_52_4();
      LOWORD(v541) = 0;
      sub_1C1179660();
      sub_1C11796B4();
      v100 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_37_7(v100, &type metadata for OneUpSharedLibraryMoveToolbar, &type metadata for OneUpRecentlyDeletedAlbumToolbar, v101, v102, v103, v104, v105, v343, v379, v409, v439, v469, v502, v512, v522, v532.n128_i8[0]);
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_38_10(v106, v107, v108, v109, v110, v111, v112, v113, v358);
      OUTLINED_FUNCTION_7_44();
      BYTE2(v541) = 1;
      goto LABEL_13;
    case 3:
      v532.n128_u64[1] = 0;
      v540 = 0;
      v532.n128_u8[0] = a1 & 1;
      v541 = 65792;
      sub_1C1179660();
      v114 = sub_1C11796B4();
      OUTLINED_FUNCTION_37_7(v114, &type metadata for OneUpSharedLibraryMoveToolbar, &type metadata for OneUpRecentlyDeletedAlbumToolbar, v115, v114, v116, v117, v118, v343, v379, v409, v439, v469, v502, v512, v522, v532.n128_i8[0]);
      sub_1C1263C20();
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_38_10(v119, v120, v121, v122, v123, v124, v125, v126, v359);
      OUTLINED_FUNCTION_7_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95808);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95810);
      sub_1C11794A0();
      v127 = sub_1C11795D4();
      OUTLINED_FUNCTION_21_14(v127, v128, v129, v130, v131, v132, v133, v134, v360, v393, v423, v453, v484, v507, v517, v527, v532.n128_i8[0]);
      OUTLINED_FUNCTION_26_14();
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v135, v136, v137, v138, v139, v140, v141, v142, v361, v394, v424, v454, v485);
      goto LABEL_9;
    case 4:
      v535 = a1 & 1;
      sub_1C1179820();
      v53 = sub_1C1179874();
      v532.n128_u64[1] = 0;
      v540 = 0;
      v541 = 0x1000000;
      OUTLINED_FUNCTION_37_7(v53, &type metadata for OneUpRecoveredAlbumToolbar, &type metadata for OneUpDuplicatesAlbumToolbar, v54, v53, v55, v56, v57, v343, v379, v409, v439, v469, v502, v512, v522, v535);
      sub_1C1263C20();
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_38_10(v58, v59, v60, v61, v62, v63, v64, v65, v351);
      OUTLINED_FUNCTION_7_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95820);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95828);
      sub_1C1179794();
      v66 = sub_1C11798C8();
      OUTLINED_FUNCTION_21_14(v66, v67, v68, v69, v70, v71, v72, v73, v352, v387, v417, v447, v477, v505, v515, v525, v532.n128_i8[0]);
      OUTLINED_FUNCTION_26_14();
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v74, v75, v76, v77, v78, v79, v80, v81, v353, v388, v418, v448, v478);
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95800);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95818);
      sub_1C1179414();
      v143 = sub_1C1179708();
      OUTLINED_FUNCTION_37_7(v143, v144, v145, v146, v143, v147, v148, v149, v354, v389, v419, v449, v479, v506, v516, v526, v532.n128_i8[0]);
      OUTLINED_FUNCTION_26_14();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_38_10(v150, v151, v152, v153, v154, v155, v156, v157, v362);
      OUTLINED_FUNCTION_48_7();
      goto LABEL_22;
    case 5:
      swift_getKeyPath();
      OUTLINED_FUNCTION_52_4();
      v541 = 16777472;
      sub_1C1179820();
      sub_1C1179874();
      v186 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_37_7(v186, &type metadata for OneUpRecoveredAlbumToolbar, &type metadata for OneUpDuplicatesAlbumToolbar, v187, v188, v189, v190, v191, v343, v379, v409, v439, v469, v502, v512, v522, v532.n128_i8[0]);
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_38_10(v192, v193, v194, v195, v196, v197, v198, v199, v366);
      OUTLINED_FUNCTION_7_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95820);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95828);
      sub_1C1179794();
      v200 = sub_1C11798C8();
      OUTLINED_FUNCTION_21_14(v200, v201, v202, v203, v204, v205, v206, v207, v367, v398, v428, v458, v489, v509, v519, v529, v537);
      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v208, v209, v210, v211, v212, v213, v214, v215, v368, v399, v429, v459, v490);
      goto LABEL_17;
    case 6:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v522) = 0;
      sub_1C1179954();
      sub_1C11799A8();
      v216 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_18_31(v216, &type metadata for OneUpSharedWithYouToolbar, &type metadata for OneUpCloudLinkToolbar, v217, v218, v219, v220, v221, v343, v379, v409, v439, v469);
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_10_34();
      goto LABEL_16;
    case 7:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v522) = 256;
      sub_1C1179954();
      sub_1C11799A8();
      v158 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_18_31(v158, &type metadata for OneUpSharedWithYouToolbar, &type metadata for OneUpCloudLinkToolbar, v159, v160, v161, v162, v163, v343, v379, v409, v439, v469);
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_10_34();
LABEL_16:
      OUTLINED_FUNCTION_7_44();
      BYTE2(v541) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95820);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95828);
      sub_1C1179794();
      v222 = sub_1C11798C8();
      OUTLINED_FUNCTION_21_14(v222, v223, v224, v225, v226, v227, v228, v229, v363, v395, v425, v455, v486, v502, v512, v522, v532.n128_i8[0]);
      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v230, v231, v232, v233, v234, v235, v236, v237, v369, v400, v430, v460, v491);
      HIBYTE(v541) = 1;
      goto LABEL_17;
    case 8:
      v497 = a1 & 1;
      sub_1C1179BA0();
      v302 = sub_1C1179BF4();
      OUTLINED_FUNCTION_18_31(v302, &type metadata for OneUpImportToolbar, &type metadata for OneUpMacSyncedToolbar, v303, v302, v304, v305, v306, v343, v379, v409, v439, v497);
      sub_1C1263C20();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_51_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95848);
      sub_1C1179B14();
      v307 = sub_1C1179C48();
      OUTLINED_FUNCTION_14_26(v307, v308, v309, v310, v307, v311, v312, v313, v375, v405, v435, v465, v498);
      OUTLINED_FUNCTION_31_2();
      sub_1C1263C20();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_12_27(v314, v315, v316, v317, v318, v319, v320, v321, v376, v406, v436, v466, v499, v502, v512, v522, *&v532);
      OUTLINED_FUNCTION_28_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95838);
      v322 = sub_1C1179A88();
      OUTLINED_FUNCTION_14_26(v322, v323, MEMORY[0x1E6981E70], v322, MEMORY[0x1E6981E60], v324, v325, v326, v377, v407, v437, v467, v500);
      sub_1C1263C20();
      OUTLINED_FUNCTION_5_39();
      OUTLINED_FUNCTION_9_39(v327, v328, v329, v330, v331, v332, v333, v334, v378, v408, v438, v468, v501, v511, v521, v531, v539);
      goto LABEL_22;
    case 9:
      v482 = a1 & 1;
      sub_1C1179BA0();
      v95 = sub_1C1179BF4();
      OUTLINED_FUNCTION_18_31(v95, &type metadata for OneUpImportToolbar, &type metadata for OneUpMacSyncedToolbar, v96, v95, v97, v98, v99, v343, v379, v409, v439, v482);
      sub_1C1263C20();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_51_7();
      goto LABEL_20;
    case 0xA:
      v492 = a1 & 1;
      sub_1C1179CD4();
      v260 = sub_1C1179D28();
      LOWORD(v522) = 0;
      OUTLINED_FUNCTION_18_31(v260, &type metadata for OneUpStorageManagementToolbar, &type metadata for OneUpStorageManagementDuplicatesToolbar, v261, v260, v262, v263, v264, v343, v379, v409, v439, v492);
      sub_1C1263C20();
      OUTLINED_FUNCTION_10_34();
      OUTLINED_FUNCTION_9_39(v265, v266, v267, v268, v269, v270, v271, v272, v371, v401, v431, v461, v493, 0, 0, v522, *&v532);
      LOWORD(v522) = v273;
      BYTE2(v522) = 1;
LABEL_20:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95848);
      sub_1C1179B14();
      v274 = sub_1C1179C48();
      OUTLINED_FUNCTION_14_26(v274, v275, v276, v277, v274, v278, v279, v280, v357, v392, v422, v452, v483);
      OUTLINED_FUNCTION_31_2();
      sub_1C1263C20();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_12_27(v281, v282, v283, v284, v285, v286, v287, v288, v372, v402, v432, v462, v494, v502, v512, v522, *&v532);
      OUTLINED_FUNCTION_28_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95838);
      v289 = sub_1C1179A88();
      OUTLINED_FUNCTION_14_26(v289, v290, MEMORY[0x1E6981E70], v289, MEMORY[0x1E6981E60], v291, v292, v293, v373, v403, v433, v463, v495);
      sub_1C1263C20();
      OUTLINED_FUNCTION_5_39();
      OUTLINED_FUNCTION_9_39(v294, v295, v296, v297, v298, v299, v300, v301, v374, v404, v434, v464, v496, v510, v520, v530, v538);
      goto LABEL_22;
    case 0xB:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v522) = 256;
      sub_1C1179CD4();
      sub_1C1179D28();
      v10 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_18_31(v10, &type metadata for OneUpStorageManagementToolbar, &type metadata for OneUpStorageManagementDuplicatesToolbar, v11, v12, v13, v14, v15, v343, v379, v409, v439, v469);
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_10_34();
      OUTLINED_FUNCTION_9_39(v16, v17, v18, v19, v20, v21, v22, v23, v345, v381, v411, v441, v471, v502, v512, v522, *&v532);
      LOWORD(v523) = v24;
      BYTE2(v523) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95848);
      sub_1C1179B14();
      v25 = sub_1C1179C48();
      OUTLINED_FUNCTION_18_31(v25, v26, v27, v28, v25, v29, v30, v31, v346, v382, v412, v442, v472);
      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_12_27(v32, v33, v34, v35, v36, v37, v38, v39, v347, v383, v413, v443, v473, v503, v513, v523, v533);
      OUTLINED_FUNCTION_28_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95838);
      v40 = sub_1C1179A88();
      OUTLINED_FUNCTION_18_31(v40, v41, MEMORY[0x1E6981E70], v40, MEMORY[0x1E6981E60], v42, v43, v44, v348, v384, v414, v444, v474);
      sub_1C1263C20();
      OUTLINED_FUNCTION_5_39();
      OUTLINED_FUNCTION_9_39(v45, v46, v47, v48, v49, v50, v51, v52, v349, v385, v415, v445, v475, v504, v514, v524, v534);
      goto LABEL_18;
    case 0xC:
      *(&v522 - 1) = 0;
      BYTE3(v522) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95838);
      v82 = sub_1C1179A88();
      OUTLINED_FUNCTION_14_26(v82, v83, MEMORY[0x1E6981E70], v82, MEMORY[0x1E6981E60], v84, v85, v86, v343, v379, v409, v439, 0);
      sub_1C1263C20();
      OUTLINED_FUNCTION_5_39();
      OUTLINED_FUNCTION_9_39(v87, v88, v89, v90, v91, v92, v93, v94, v355, v390, v420, v450, v480, 0, 0, v522, *&v532);
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE957F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95830);
      sub_1C1179388();
      v335 = sub_1C11799FC();
      OUTLINED_FUNCTION_14_26(v335, v336, v337, v338, v335, v339, v340, v341, v356, v391, v421, v451, v481);
      OUTLINED_FUNCTION_31_2();
      sub_1C1263C20();
      break;
    default:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v522) = 0;
      sub_1C117952C();
      sub_1C1179580();
      v4 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_18_31(v4, &type metadata for OneUpPhotoLibraryToolbar, &type metadata for OneUpSharedAlbumToolbar, v5, v6, v7, v8, v9, v343, v379, v409, v439, v469);
      OUTLINED_FUNCTION_43_9();
      OUTLINED_FUNCTION_10_34();
LABEL_12:
      OUTLINED_FUNCTION_7_44();
      BYTE2(v541) = 0;
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95808);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95810);
      sub_1C11794A0();
      v170 = sub_1C11795D4();
      OUTLINED_FUNCTION_21_14(v170, v171, v172, v173, v174, v175, v176, v177, v344, v380, v410, v440, v470, v502, v512, v522, v532.n128_i8[0]);
      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v178, v179, v180, v181, v182, v183, v184, v185, v364, v396, v426, v456, v487);
      HIBYTE(v541) = 0;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95800);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95818);
      sub_1C1179414();
      v238 = sub_1C1179708();
      OUTLINED_FUNCTION_37_7(v238, v239, v240, v241, v238, v242, v243, v244, v365, v397, v427, v457, v488, v508, v518, v528, v536);
      OUTLINED_FUNCTION_29_11();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_38_10(v245, v246, v247, v248, v249, v250, v251, v252, v370);
      OUTLINED_FUNCTION_48_7();
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE957F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95830);
      sub_1C1179388();
      v253 = sub_1C11799FC();
      OUTLINED_FUNCTION_18_31(v253, v254, v255, v256, v253, v257, v258, v259, v350, v386, v416, v446, v476);
      OUTLINED_FUNCTION_29_11();

      break;
  }

  result = v532;
  *a2 = v532;
  a2[1].n128_u64[0] = v540;
  a2[1].n128_u32[2] = v541;
  a2[1].n128_u8[12] = v542;
  return result;
}