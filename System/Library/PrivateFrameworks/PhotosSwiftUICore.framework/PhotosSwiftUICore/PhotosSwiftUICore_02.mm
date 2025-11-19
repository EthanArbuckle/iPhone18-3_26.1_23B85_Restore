uint64_t PhotosPrefetchable.UserDefaultsPersistence.deinit()
{

  v1 = qword_1EDE831C0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PhotosPrefetchable.UserDefaultsPersistence.__deallocating_deinit()
{
  PhotosPrefetchable.UserDefaultsPersistence.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C0FD2414@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosPrefetchable.UserDefaultsPersistence.__allocating_init(key:)();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FD243C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C0FD245C, v3, 0);
}

uint64_t sub_1C0FD245C()
{
  sub_1C0FD2050();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0FD24D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C0FD24EC(a1, a2);
  }

  return a1;
}

uint64_t sub_1C0FD24EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_1C0FD2544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902B0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t dispatch thunk of PhotosPrefetchable.Persistence.load()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (OUTLINED_FUNCTION_3_9(a1, a2, a3) + 40);
  v10 = (*v9 + **v9);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1C0FD277C;

  return v10(v6, v4, v3);
}

uint64_t sub_1C0FD277C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of PhotosPrefetchable.Persistence.save(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (OUTLINED_FUNCTION_3_9(a1, a2, a3) + 48);
  v10 = (*v9 + **v9);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1C0FD2ADC;

  return v10(v6, v4, v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C0FD2A70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C0FD2A84(a1, a2);
  }

  return a1;
}

uint64_t sub_1C0FD2A84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t PhotosModelFactory.init(itemListManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  type metadata accessor for PhotosItemBackedModelFactory();
  return sub_1C12628D0();
}

uint64_t sub_1C0FD2B94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FD2BC8(*(v1 + 48));
  *a1 = result;
  return result;
}

uint64_t sub_1C0FD2BC8(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = type metadata accessor for PhotosItemBackedModelFactory();
  a1(v2, v3, v4, v5);
  return PhotosItemBackedModelFactory.__allocating_init(itemListManager:)();
}

uint64_t _s17PhotosSwiftUICore0A12ModelFactoryV12wrappedValueAA0a10ItemBackeddE0Cyxq_Gvg_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PhotosItemBackedModelFactory();
  sub_1C1262900();
  sub_1C12628E0();
  return v2;
}

void sub_1C0FD2C80(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v4 + 16))(&v5 - v3, a1);
  sub_1C0FA7254();
}

uint64_t sub_1C0FD2D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0FA7D84(&v3);
  *a1 = v3;
  return result;
}

void sub_1C0FD2DF4()
{
  OUTLINED_FUNCTION_23();
  v55 = v1;
  v2 = *v0;
  OUTLINED_FUNCTION_10_8();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_10_8();
  v6 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v54 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v38 - v10;
  OUTLINED_FUNCTION_10_8();
  v12 = *(v11 + 96);
  v49 = *(v2 + 80);
  v50 = v12;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v51 = v14;
  v52 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v38 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v45 = v19;
  OUTLINED_FUNCTION_19();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v48 = &v38 - v22;
  v53 = v17;
  v44 = *(v17 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v38 - v26;
  sub_1C0FA80F4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C1265D00();

  if (!v57[0])
  {
    v39 = v25;
    v40 = AssociatedConformanceWitness;
    v41 = v18;
    v42 = v27;
    v43 = v4;
    v29 = v47;
    sub_1C12620A0();
    v57[3] = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
    v54 = *(v54 + 16);
    (v54)(boxed_opaque_existential_1, v55, AssociatedTypeWitness);
    v31 = v52;
    swift_getAssociatedConformanceWitness();
    v32 = v48;
    sub_1C1262340();
    (*(v51 + 8))(v29, v31);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    v33 = v53;
    if (__swift_getEnumTagSinglePayload(v32, 1, v53) == 1)
    {
      (*(v45 + 8))(v32, v41);
    }

    else
    {
      v34 = v44;
      v35 = v42;
      (*(v44 + 32))(v42, v32, v33);
      v36 = v39;
      (*(v34 + 16))(v39, v35, v33);
      v37 = (*(v43 + 40))(v36, v6);
      (v54)(v46, v55, AssociatedTypeWitness);
      v56 = v37;
      swift_beginAccess();
      sub_1C1265CF0();
      swift_unknownObjectRetain_n();
      OUTLINED_FUNCTION_15_7();
      sub_1C1265D10();
      swift_endAccess();
      swift_unknownObjectRelease();
      (*(v34 + 8))(v35, v33);
    }
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosItemBackedModelFactory.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(*v0 + 152);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 160);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t PhotosItemBackedModelFactory.__deallocating_deinit()
{
  PhotosItemBackedModelFactory.deinit();
  OUTLINED_FUNCTION_16_4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1C0FD3454()
{
  type metadata accessor for PhotosItemBackedModelFactory();
  result = sub_1C1262900();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PhotosCollectionTitleOverlay.init(model:configuration:playButton:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, __n128)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  type metadata accessor for PhotosCollectionTitleOverlay();
  if (qword_1EDE79640 != -1)
  {
    OUTLINED_FUNCTION_7_6();
  }

  v12.n128_f64[0] = OUTLINED_FUNCTION_13_4(&xmmword_1EDE79648);
  *a4 = a1;
  if (!v7)
  {
    if (qword_1EBE8FBF8 != -1)
    {
      OUTLINED_FUNCTION_6_6();
    }

    v7 = qword_1EBE902C0;
    v6 = *algn_1EBE902C8;
    LOBYTE(v9) = byte_1EBE902D0;
    v8 = qword_1EBE902D8;
    v10 = unk_1EBE902E0;

    v11 = sub_1C0FCF1B4(v8);
  }

  *(a4 + 8) = v7;
  *(a4 + 16) = v6;
  *(a4 + 24) = v9 & 1;
  *(a4 + 32) = v8;
  *(a4 + 40) = v10;
  return a3(v11, v12);
}

uint64_t PhotosCollectionTitleOverlay.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v44 = *(a1 + 16);
  v4 = *(v44 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v5 + 24);
  v46 = *(v5 + 32);
  *&v8 = v7;
  *(&v8 + 1) = v48;
  v57 = v8;
  v58 = v46;
  v9 = type metadata accessor for TitleText();
  OUTLINED_FUNCTION_0();
  v49 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v43 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v42 - v20;
  v21 = *(a1 + 56);
  v22 = (v2 + *(a1 + 60));
  v23 = *(v22 + 4);
  v24 = v22[1];
  v57 = *v22;
  v58 = v24;
  v59 = v23;
  v25 = *v2;
  v26 = *(v2 + 16);
  v27 = *(v2 + 24);
  v28 = *(v2 + 32);
  v29 = *(v2 + 40);
  v53[0] = *(v2 + 8);
  v53[1] = v26;
  v54 = v27;
  v55 = v28;
  v56 = v29;
  v30 = *(v4 + 16);
  v31 = v2 + v21;
  v32 = v45;
  v33 = v44;
  v30(v45, v31, v44);
  swift_unknownObjectRetain();

  sub_1C0FCF1B4(v28);
  v34 = *(&v46 + 1);
  v35 = v48;
  sub_1C0FD3ABC(v25, &v57, v53, v32, v33, v13);
  (*(v34 + 16))(v35, v34);
  OUTLINED_FUNCTION_3_10();
  WitnessTable = swift_getWitnessTable();
  v37 = v43;
  sub_1C1264F50();
  (*(v49 + 8))(v13, v9);
  v51 = WitnessTable;
  v52 = MEMORY[0x1E697E5C0];
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  v38 = *(v16 + 16);
  v39 = v47;
  v38(v47, v37, v14);
  v40 = *(v16 + 8);
  v40(v37, v14);
  v38(v50, v39, v14);
  return (v40)(v39, v14);
}

uint64_t sub_1C0FD3ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a2 + 16);
  *(a6 + 8) = *a2;
  v10 = *(a2 + 32);
  v11 = *(a3 + 16);
  *a6 = a1;
  *(a6 + 24) = v9;
  *(a6 + 40) = v10;
  *(a6 + 48) = *a3;
  *(a6 + 64) = v11;
  *(a6 + 72) = *(a3 + 24);
  v12 = type metadata accessor for TitleText();
  (*(*(a5 - 8) + 32))(a6 + v12[15], a4, a5);
  v13 = a6 + v12[16];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v12[17];
  *(a6 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  swift_storeEnumTagMultiPayload();
  v15 = (a6 + v12[18]);
  v16 = sub_1C0FD7B5C();
  *v15 = v17;
  v15[1] = v18;
  v15[2] = v16;
  v19 = (a6 + v12[19]);
  v20 = sub_1C0FD7B5C();
  *v19 = v21;
  v19[1] = v22;
  v19[2] = v20;
  v23 = (a6 + v12[20]);
  result = sub_1C0FD7B5C();
  *v23 = v25;
  v23[1] = v26;
  v23[2] = result;
  return result;
}

uint64_t PhotosCollectionTitleOverlayPosition.description.getter()
{
  if (*v0)
  {
    return 0x706F546C6C616D53;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t PhotosCollectionTitleOverlayPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

double sub_1C0FD3DB0()
{
  result = 0.0;
  xmmword_1EDE79648 = xmmword_1C12A2E10;
  *&qword_1EDE79658 = xmmword_1C12A2E20;
  qword_1EDE79668 = 0x4024000000000000;
  return result;
}

double static PhotosCollectionTitleOverlaySpec.defaultSpec.getter()
{
  if (qword_1EDE79640 != -1)
  {
    OUTLINED_FUNCTION_7_6();
  }

  return OUTLINED_FUNCTION_13_4(&xmmword_1EDE79648);
}

double static PhotosCollectionTitleOverlaySpec.bottomFadingDistance(verticalSizeClass:)(uint64_t a1)
{
  v3 = sub_1C1263EB0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v12 = OUTLINED_FUNCTION_15(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  (*(v5 + 104))(&v23 - v16, *MEMORY[0x1E697FF38], v3);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_1C0FDB800(a1, v10, &qword_1EBE902F0);
  sub_1C0FDB800(v17, &v10[v18], &qword_1EBE902F0);
  OUTLINED_FUNCTION_17_1(v10);
  if (v20)
  {
    sub_1C0FD1A5C(v17, &qword_1EBE902F0);
    OUTLINED_FUNCTION_17_1(&v10[v18]);
    if (v20)
    {
      sub_1C0FD1A5C(v10, &qword_1EBE902F0);
      return 20.0;
    }

    goto LABEL_9;
  }

  sub_1C0FDB800(v10, v15, &qword_1EBE902F0);
  OUTLINED_FUNCTION_17_1(&v10[v18]);
  if (v20)
  {
    sub_1C0FD1A5C(v17, &qword_1EBE902F0);
    (*(v5 + 8))(v15, v3);
LABEL_9:
    sub_1C0FD1A5C(v10, &qword_1EBE902E8);
    return 200.0;
  }

  (*(v5 + 32))(v1, &v10[v18], v3);
  sub_1C0FDBA00(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v21 = sub_1C1265DE0();
  v22 = *(v5 + 8);
  v22(v1, v3);
  sub_1C0FD1A5C(v17, &qword_1EBE902F0);
  v22(v15, v3);
  sub_1C0FD1A5C(v10, &qword_1EBE902F0);
  result = 20.0;
  if ((v21 & 1) == 0)
  {
    return 200.0;
  }

  return result;
}

uint64_t sub_1C0FD4188@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 32);
  v17 = *(a1 + 16);
  v18 = v8;
  *(v7 + 16) = v17;
  *(v7 + 32) = v8;
  (*(v4 + 32))(v7 + v6, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90430);
  sub_1C1263190();
  sub_1C1263190();
  v27 = v18;
  v28 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v26 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  sub_1C12633A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90438);
  sub_1C1263C30();
  v9 = sub_1C0FDAC84();
  v10 = swift_getWitnessTable();
  v23 = v9;
  v24 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1C0FDADF4();
  v21 = v11;
  v22 = v12;
  swift_getWitnessTable();
  v19 = sub_1C1262F10();
  v20 = v13;
  v14 = sub_1C1262F20();
  swift_getWitnessTable();
  v15 = *(*(v14 - 8) + 16);
  v15(v29, &v19, v14);

  v19 = v29[0];
  v20 = v29[1];
  v15(a2, &v19, v14);
}

uint64_t sub_1C0FD44BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v125 = a5;
  v126 = a3;
  v124 = a1;
  v122 = a7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90478);
  MEMORY[0x1EEE9AC00](v103);
  v105 = (&v102 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90438);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v104 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v102 - v15;
  v109 = sub_1C1262130();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90430);
  sub_1C1263190();
  v18 = sub_1C1263190();
  v149[7] = a5;
  v149[8] = MEMORY[0x1E697E5D8];
  v149[5] = swift_getWitnessTable();
  v149[6] = MEMORY[0x1E697E270];
  WitnessTable = swift_getWitnessTable();
  v111 = v18;
  v19 = sub_1C12633A0();
  v112 = v17;
  v117 = v19;
  v20 = sub_1C1263190();
  v115 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v114 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v102 - v23;
  v119 = v24;
  v121 = v12;
  v120 = sub_1C1263C30();
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v102 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v102 - v27;
  (*(a6 + 64))(v149, a4, a6);
  v123 = a2;
  v29 = sub_1C0FD5194(v149, v124, a2, v126, a4, v125, a6);
  if (qword_1EDE7C260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = qword_1EDE7C280;
  v30 = unk_1EDE7C288;
  v32 = __swift_project_boxed_opaque_existential_1(&qword_1EDE7C268, qword_1EDE7C280);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v35);
  (*(v30 + 16))(v31, v30);
  (*(v33 + 8))(v35, v31);
  v36 = *(a6 + 40);
  v37 = v36(a4, a6);
  (*(a6 + 8))(v148 + 1, a4, a6);
  v38 = v36(a4, a6);
  v39 = v125;
  v40 = v126;
  *&v141[0] = v126;
  *(&v141[0] + 1) = a4;
  *&v141[1] = v125;
  *(&v141[1] + 1) = a6;
  type metadata accessor for TitleText();
  v41 = v123;
  sub_1C0FD72CC(v28);
  v42 = static PhotosCollectionTitleOverlaySpec.bottomFadingDistance(verticalSizeClass:)(v28);
  sub_1C0FD1A5C(v28, &qword_1EBE902F0);
  v139[0] = v38 / v42;
  v141[0] = xmmword_1C12A2E30;
  sub_1C0FDAF38();
  sub_1C1265D80();
  v43 = *v129;
  v44 = v124;
  sub_1C1262D40();
  v46 = v45;
  (*(a6 + 32))(v148, a4, a6);
  v47 = a4;
  if (v148[0])
  {
    v48 = v106;
    (*(a6 + 56))(v47, a6);
    v49 = sub_1C1265170();
    v50 = sub_1C1265980();
    v51 = v47;
    v52 = v50;
    v54 = v53;
    v55 = v40;
    v56 = v105;
    v57 = v105 + *(v103 + 36);
    sub_1C0FD6CB0(v41, v148 + 1, v48, v55, v51, v39, a6, v57);
    v58 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90480) + 36)];
    *v58 = v52;
    v58[1] = v54;
    *v56 = v49;
    sub_1C1262120();
    v60 = v59;
    v61 = COERCE_DOUBLE(sub_1C12620E0());
    if (v62)
    {
      v61 = 0.0;
    }

    v63 = v61 - v60;
    sub_1C0FDAE80();
    v64 = v104;
    sub_1C0FDB71C(v56, v104, &qword_1EBE90478);
    v65 = v64 + *(v121 + 36);
    *v65 = 0;
    *(v65 + 8) = v63;
    v66 = v108;
    sub_1C0FDB71C(v64, v108, &qword_1EBE90438);
    v67 = sub_1C0FDAC84();
    v68 = swift_getWitnessTable();
    v146 = v67;
    v147 = v68;
    swift_getWitnessTable();
    sub_1C0FDADF4();
    v69 = v116;
    sub_1C1112E18();
    sub_1C0FD1A5C(v66, &qword_1EBE90438);
    (*(v107 + 8))(v48, v109);
  }

  else
  {
    v70 = v46 * 0.7;
    v71 = v43 * (1.0 - (*(a6 + 48))(a4, a6));
    v109 = sub_1C1265170();
    v72 = sub_1C1265960();
    v73 = a4;
    v74 = v72;
    v76 = v75;
    v77 = v41;
    v78 = v41;
    v79 = v73;
    sub_1C0FD5260(v148 + 1, v78, v44, v149, v40, v73, v39, a6, v130, v70, v37, v71);
    memcpy(v129, v130, 0x49uLL);
    memcpy(v131, v129, 0x50uLL);
    v131[10] = v74;
    v131[11] = v76;
    memcpy(v140, v131, sizeof(v140));
    memcpy(v132, v129, sizeof(v132));
    v133 = v74;
    v134 = v76;
    v80 = v44;
    sub_1C0FDB800(v131, v141, &qword_1EBE90460);
    sub_1C0FD1A5C(v132, &qword_1EBE90460);
    v81 = sub_1C1265990();
    v83 = v82;
    v84 = v77;
    v85 = v126;
    sub_1C0FD5C60(v149, v84, v80, v126, v79, v39, a6, v129, v29, v71);
    memcpy(v135, v129, 0x98uLL);
    v135[19] = v81;
    v135[20] = v83;
    memcpy(v139, v135, sizeof(v139));
    memcpy(v136, v129, sizeof(v136));
    v137 = v81;
    v138 = v83;
    sub_1C0FDB800(v135, v141, &qword_1EBE90470);
    sub_1C0FD1A5C(v136, &qword_1EBE90470);
    v129[0] = v109;
    memcpy(&v129[1], v140, 0x60uLL);
    memcpy(&v129[13], v139, 0xA8uLL);
    v86 = sub_1C1265970();
    MEMORY[0x1EEE9AC00](v86);
    *(&v102 - 8) = v85;
    *(&v102 - 7) = v79;
    *(&v102 - 6) = v39;
    *(&v102 - 5) = a6;
    *(&v102 - 4) = v149;
    *(&v102 - 3) = v123;
    *(&v102 - 2) = v37;
    *(&v102 - 1) = v80;
    v87 = sub_1C0FDAC84();
    v88 = v114;
    sub_1C1264F60();
    memcpy(v141, v129, sizeof(v141));
    sub_1C0FD1A5C(v141, &qword_1EBE90430);
    v89 = swift_getWitnessTable();
    v127 = v87;
    v128 = v89;
    v90 = v119;
    v126 = swift_getWitnessTable();
    v91 = v115;
    v92 = *(v115 + 16);
    v93 = v113;
    v92(v113, v88, v90);
    v94 = *(v91 + 8);
    v94(v88, v90);
    v92(v88, v93, v90);
    sub_1C0FDADF4();
    v69 = v116;
    sub_1C1112D68();
    v94(v88, v90);
    v94(v93, v90);
  }

  v95 = sub_1C0FDAC84();
  v96 = swift_getWitnessTable();
  v144 = v95;
  v145 = v96;
  v97 = swift_getWitnessTable();
  v98 = sub_1C0FDADF4();
  v142 = v97;
  v143 = v98;
  v99 = v120;
  swift_getWitnessTable();
  v100 = v118;
  (*(v118 + 16))(v122, v69, v99);
  (*(v100 + 8))(v69, v99);
  __swift_destroy_boxed_opaque_existential_0Tm(v148 + 1);
  return sub_1C0FD1A5C(v149, &qword_1EBE90488);
}

double sub_1C0FD5194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!*(a1 + 24))
  {
    return 0.0;
  }

  sub_1C1262D40();
  (*(a7 + 40))(a5, a7);
  sub_1C0FDAF38();
  sub_1C1265D80();
  return v10;
}

double sub_1C0FD5260@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v49 = a7;
  v50 = a8;
  v47 = a5;
  v48 = a6;
  *&v51 = a4;
  v45 = a3;
  v46 = a2;
  v44 = a1;
  v21 = sub_1C1262D60();
  v42 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v43 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = a5;
  *(&v55 + 1) = a6;
  v56 = a7;
  v57 = a8;
  v24 = type metadata accessor for TitleText();
  v41 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v41 - v27;
  v52 = sub_1C1263AB0();
  sub_1C0FDB0A8(v44, &v55);
  (*(v25 + 16))(v28, a2, v24);
  (*(v22 + 16))(&v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v21);
  sub_1C0FDB800(v51, v53, &qword_1EBE90488);
  v29 = (*(v25 + 80) + 96) & ~*(v25 + 80);
  v30 = (v26 + *(v22 + 80) + v29) & ~*(v22 + 80);
  v31 = (v23 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 16) = v47;
  *(v33 + 24) = v34;
  v35 = v50;
  *(v33 + 32) = v49;
  *(v33 + 40) = v35;
  sub_1C0F9DDE4(&v55, v33 + 48);
  *(v33 + 88) = a10;
  (*(v25 + 32))(v33 + v29, v28, v41);
  (*(v22 + 32))(v33 + v30, v43, v42);
  *(v33 + v31) = a11;
  v36 = v33 + v32;
  *(v36 + 32) = v54;
  v37 = v53[1];
  *v36 = v53[0];
  *(v36 + 16) = v37;
  *(v33 + ((v32 + 47) & 0xFFFFFFFFFFFFFFF8)) = a12;
  v51 = *(v46 + 16);
  v38 = *(v46 + 32);
  v39 = sub_1C1264470();
  *a9 = a10;
  *(a9 + 8) = v52;
  *(a9 + 16) = sub_1C0FDB10C;
  *(a9 + 24) = v33;
  *(a9 + 32) = v39;
  *(a9 + 40) = 0;
  result = *&v51;
  *(a9 + 48) = v51;
  *(a9 + 64) = v38;
  *(a9 + 72) = 0;
  return result;
}

uint64_t sub_1C0FD55B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D2>)
{
  v32 = a3;
  v33 = a4;
  v37[0] = a5;
  v37[1] = a6;
  v37[2] = a7;
  v37[3] = a8;
  v34 = type metadata accessor for TitleText();
  v20 = *(v34 - 8);
  v31 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v22 = &v29 - v21;
  sub_1C0FDB0A8(a1, v36);
  v23 = sub_1C1263AB0();
  sub_1C0FDB0A8(v36, a9);
  *(a9 + 40) = v23;
  if (qword_1EDE7A398 != -1)
  {
    swift_once();
  }

  memcpy(v37, &qword_1EDE9B5D8, 0x70uLL);
  sub_1C0FDB260(v37, &v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v36);
  memcpy((a9 + 48), v37, 0x70uLL);
  *(a9 + 160) = a10;
  *(a9 + 168) = 0;
  *(a9 + 176) = sub_1C0FD5830(a6, a8);
  v30 = a5;
  sub_1C0FD589C(a2, v32, v33, a5, a6, a7, a8);
  *(a9 + 184) = 0;
  *(a9 + 192) = v24;
  *(a9 + 200) = a11;
  v25 = v34;
  (*(v20 + 16))(v22, a2, v34);
  v26 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v30;
  *(v27 + 3) = a6;
  *(v27 + 4) = a7;
  *(v27 + 5) = a8;
  result = (*(v20 + 32))(&v27[v26], v22, v25);
  *(a9 + 208) = sub_1C0FDBA5C;
  *(a9 + 216) = 0;
  *(a9 + 224) = sub_1C0FDB478;
  *(a9 + 232) = v27;
  return result;
}

uint64_t sub_1C0FD5830(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&var1);
  if (var1 == 1)
  {

    return sub_1C12651F0();
  }

  else
  {

    return sub_1C1265190();
  }
}

uint64_t sub_1C0FD589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1C12637E0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = a4;
  *(&v31 + 1) = a5;
  v32 = a6;
  v33 = a7;
  v17 = type metadata accessor for TitleText();
  v18 = (a1 + v17[18]);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  *&v31 = *v18;
  *(&v31 + 1) = v20;
  v32 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490);
  sub_1C1265420();
  sub_1C1262D40();
  if (PXFloatApproximatelyEqualToFloat())
  {
    sub_1C1262D40();
    *&v31 = v19;
    *(&v31 + 1) = v20;
    v32 = v21;
    return sub_1C1265420();
  }

  else
  {
    v23 = a1 + v17[16];
    v24 = *v23;
    if (*(v23 + 8) != 1)
    {

      sub_1C1266420();
      v25 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FA03F4(v24, 0);
      (*(v14 + 8))(v16, v13);
    }

    sub_1C0FDB800(a3, &v31, &qword_1EBE90488);
    v26 = v33;
    if (v33)
    {
      v27 = v34;
      __swift_project_boxed_opaque_existential_1(&v31, v33);
      v28 = sub_1C121059C(v26, v27);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      if (v28)
      {
        v29 = (a1 + v17[19]);
        v30 = *(v29 + 2);
        v31 = *v29;
        v32 = v30;
        return sub_1C1265420();
      }
    }

    else
    {
      return sub_1C0FD1A5C(&v31, &qword_1EBE90488);
    }
  }

  return result;
}

uint64_t sub_1C0FD5B94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490);
  sub_1C1265420();
  sub_1C1265430();
  return sub_1C0FD7918(a1, v3, v4);
}

void *sub_1C0FD5C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v54 = a3;
  v19 = sub_1C12637E0();
  v53 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FDB800(a1, v59, &qword_1EBE90488);
  if (*&v59[24])
  {
    sub_1C0F9DDE4(v59, v61);
    v22 = *(a2 + 8);
    v23 = *(a2 + 16);
    v25 = *(a2 + 24);
    v24 = *(a2 + 32);
    v26 = *(a2 + 40);
    v49 = a4;
    v50 = a5;
    v65[0] = a4;
    v65[1] = a5;
    v51 = a6;
    v65[2] = a6;
    v65[3] = a7;
    v27 = a2 + *(type metadata accessor for TitleText() + 64);
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = a7;
    v52 = a8;
    if (v29 == 1)
    {
      v31 = v28;
      LOBYTE(v65[0]) = v28;
    }

    else
    {

      sub_1C1266420();
      v32 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FA03F4(v28, 0);
      (*(v53 + 8))(v21, v19);
      v31 = LOBYTE(v65[0]);
    }

    v33 = v62;
    v34 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v35 = sub_1C121059C(v33, v34);
    v36 = 4.0;
    if (v35)
    {
      v36 = v23;
    }

    v37 = 24.0;
    if (v35)
    {
      v38 = v25;
    }

    else
    {
      v38 = 24.0;
    }

    if (v31 != 1)
    {
      v37 = v38;
    }

    v64[0] = v22;
    *&v64[1] = v36;
    *&v64[2] = v37;
    v64[3] = v24;
    v64[4] = v26;
    v39 = *v27;
    if (*(v27 + 8) == 1)
    {
      v40 = *v27;
      v60 = *v27;
    }

    else
    {

      sub_1C1266420();
      v41 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FA03F4(v39, 0);
      (*(v53 + 8))(v21, v19);
      v40 = v60;
    }

    v43 = v50;
    v42 = v51;
    v44 = v49;
    v45 = v40 == 1;
    v46 = sub_1C12638E0();
    v56 = 1;
    sub_1C0FD60B8(v61, a2, v54, v45, v64, v44, v43, v42, v65, a9, a10, v30);
    memcpy(v57, v65, 0x7AuLL);
    memcpy(v58, v65, 0x7AuLL);
    sub_1C0FDB800(v57, v59, &qword_1EBE90498);
    sub_1C0FD1A5C(v58, &qword_1EBE90498);
    memcpy(&v55[7], v57, 0x7AuLL);
    *v59 = v46;
    *&v59[8] = 0;
    v59[16] = v56;
    memcpy(&v59[17], v55, 0x81uLL);
    nullsub_1(v59);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    memcpy(v65, v59, 0x92uLL);
    a8 = v52;
  }

  else
  {
    sub_1C0FD1A5C(v59, &qword_1EBE90488);
    sub_1C0FDAFA4(v65);
  }

  return memcpy(a8, v65, 0x92uLL);
}

uint64_t sub_1C0FD60B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v53 = a6;
  v54 = a8;
  v52 = a7;
  v61 = a5;
  v62 = a9;
  v60 = a4;
  v59 = a3;
  v55 = a2;
  v19 = sub_1C1262130();
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[0] = a6;
  v65[1] = a7;
  v65[2] = a8;
  v65[3] = a12;
  v21 = type metadata accessor for TitleText();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v51 - v23;
  v26 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v25 + 8))(v65, v26, v25);
  v27 = __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  MEMORY[0x1EEE9AC00](v27);
  (*(v29 + 16))(&v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_1C12655D0();
  (*(v22 + 16))(v24, v55, v21);
  v30 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v31 = swift_allocObject();
  v32 = v52;
  *(v31 + 2) = v53;
  *(v31 + 3) = v32;
  *(v31 + 4) = v54;
  *(v31 + 5) = a12;
  (*(v22 + 32))(&v31[v30], v24, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = OUTLINED_FUNCTION_15_6();
  v34 = (*(a12 + 40))(v32, a12);
  sub_1C1262D40();
  v36 = v35;
  v37 = v56;
  (*(a12 + 56))(v32, a12);
  sub_1C1262120();
  v39 = v38;
  (*(v57 + 8))(v37, v58);
  v40 = v36 - v39;
  v41 = v60;
  if (v60)
  {
    v40 = v36 - v39 + -5.0;
  }

  if (v40 >= v34)
  {
    v40 = v34;
  }

  if (v33)
  {
    v42 = a10 * a11;
  }

  else
  {
    v42 = 1.0;
  }

  v43 = -v40;
  v44 = v61[1];
  v58 = v61[2];
  v45 = v58;
  v59 = v44;
  v46 = v61[3];
  v47 = sub_1C1264470();
  v74 = 0;
  v48 = v51;
  v64[0] = v51;
  v64[1] = sub_1C0FDBA5C;
  v64[2] = 0;
  v64[3] = sub_1C0FDAFAC;
  v64[4] = v31;
  *&v64[5] = v42;
  v64[6] = 0;
  *&v64[7] = v43;
  LOBYTE(v64[8]) = v47;
  *(&v64[8] + 1) = v75[0];
  HIDWORD(v64[8]) = *(v75 + 3);
  v64[9] = 0;
  v64[10] = v44;
  v64[11] = v45;
  v64[12] = v46;
  LOBYTE(v64[13]) = 0;
  memcpy(v65, v64, 0x69uLL);
  v63[111] = (v41 & 1) == 0;
  v49 = v62;
  memcpy(v62, v65, 0x70uLL);
  v49[14] = 0;
  *(v49 + 120) = v41;
  *(v49 + 121) = (v41 & 1) == 0;
  v66[0] = v48;
  v66[1] = sub_1C0FDBA5C;
  v66[2] = 0;
  v66[3] = sub_1C0FDAFAC;
  v66[4] = v31;
  *&v66[5] = v42;
  v66[6] = 0;
  *&v66[7] = v43;
  v67 = v47;
  *v68 = v75[0];
  *&v68[3] = *(v75 + 3);
  v69 = 0;
  v70 = v59;
  v71 = v58;
  v72 = v46;
  v73 = 0;
  sub_1C0FDB800(v64, v63, &qword_1EBE904A0);
  return sub_1C0FD1A5C(v66, &qword_1EBE904A0);
}

uint64_t sub_1C0FD65B8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, double, double))
{
  v8 = *a1;
  v9 = a1[1];
  v10 = OUTLINED_FUNCTION_11_6();
  return a7(v10, v8, v9);
}

uint64_t sub_1C0FD660C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490);
  sub_1C1265420();
  sub_1C1265430();
  return sub_1C0FD7AC4(a1, v3, v4);
}

uint64_t sub_1C0FD66D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v59 = a7;
  v60 = a6;
  v55 = a3;
  v58 = a8;
  v12 = sub_1C1262130();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C1263190();
  v54 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v47 - v19;
  v48 = v20;
  v21 = sub_1C1263190();
  v51 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v50 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v52 = &v47 - v24;
  sub_1C0FDB800(a1, &v66, &qword_1EBE90488);
  v25 = v69;
  if (v69)
  {
    v26 = v70;
    __swift_project_boxed_opaque_existential_1(&v66, v69);
    v27 = sub_1C121059C(v25, v26);
    __swift_destroy_boxed_opaque_existential_0Tm(&v66);
    if (v27)
    {
      v66 = a4;
      v67 = a5;
      v68 = v60;
      v69 = v59;
      v28 = a2;
      v29 = (a2 + *(type metadata accessor for TitleText() + 76));
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v66 = *v29;
      v67 = v31;
      v68 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490);
      sub_1C1265420();
      if (v61 <= 370.0)
      {
        v66 = v30;
        v67 = v31;
        v68 = v32;
        sub_1C1265420();
      }
    }

    else
    {
      v28 = a2;
    }
  }

  else
  {
    v28 = a2;
    sub_1C0FD1A5C(&v66, &qword_1EBE90488);
  }

  v66 = a4;
  v67 = a5;
  v33 = v60;
  v34 = a5;
  v35 = v59;
  v68 = v60;
  v69 = v59;
  v36 = type metadata accessor for TitleText();
  (*(v15 + 16))(v17, v28 + *(v36 + 60), a4);
  v37 = v49;
  sub_1C1264FA0();
  (*(v15 + 8))(v17, a4);
  sub_1C1262D40();
  v38 = v53;
  (*(v35 + 56))(v34, v35);
  sub_1C1262120();
  (*(v56 + 8))(v38, v57);
  v64 = v33;
  v65 = MEMORY[0x1E697E5D8];
  v39 = v48;
  WitnessTable = swift_getWitnessTable();
  v41 = v50;
  sub_1C1264ED0();
  (*(v54 + 8))(v37, v39);
  v62 = WitnessTable;
  v63 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  v42 = v51;
  v43 = *(v51 + 16);
  v44 = v52;
  v43(v52, v41, v21);
  v45 = *(v42 + 8);
  v45(v41, v21);
  v43(v58, v44, v21);
  return (v45)(v44, v21);
}

uint64_t sub_1C0FD6CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void)@<X8>)
{
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v12[6] = a2;
  v12[7] = a1;
  v12[8] = a3;
  v12[10] = a4;
  v12[11] = a5;
  v12[12] = a6;
  v12[13] = a7;
  type metadata accessor for TitleText();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904A8);
  v10 = sub_1C0FDB53C();
  return sub_1C0FD6E6C(sub_1C0FDB528, v12, v9, v10, a8);
}

uint64_t sub_1C0FD6D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C0FDB0A8(a1, a3);
  *(a3 + 40) = sub_1C1263AA0();
  *(a3 + 48) = sub_1C1265190();
  v5 = sub_1C0FD6DE0(*(a2 + 8));
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = sub_1C1264470();
  *(a3 + 56) = result;
  *(a3 + 64) = v5;
  *(a3 + 72) = v7;
  *(a3 + 80) = v9;
  *(a3 + 88) = v11;
  *(a3 + 96) = 0;
  return result;
}

double sub_1C0FD6DE0(double a1)
{
  sub_1C1262100();
  sub_1C1262110();
  return a1;
}

uint64_t sub_1C0FD6E6C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(void)@<X8>)
{
  v39 = a1;
  v40 = a2;
  WitnessTable = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = sub_1C12654A0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v36 - v19;
  v20 = sub_1C1263C30();
  v42 = *(v20 - 8);
  v43 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v41 = &v36 - v22;
  v23 = *(v5 + 72);
  if (v23)
  {
    sub_1C0FCF1B4(*(v5 + 72));

    sub_1C1265480();
    WitnessTable = swift_getWitnessTable();
    v39 = a5;
    v24 = *(v15 + 16);
    v25 = v38;
    v24(v38, v18, v14);
    v40 = a4;
    v26 = *(v15 + 8);
    v26(v18, v14);
    v24(v18, v25, v14);
    a5 = v39;
    v27 = v41;
    sub_1C1112D68();
    sub_1C0FCF004(v23);
    v26(v18, v14);
    v26(v25, v14);
    a4 = v40;
  }

  else
  {
    v28 = WitnessTable;
    v39(v21);
    v29 = *(v28 + 16);
    v29(v13, v11, a3);
    v30 = *(v28 + 8);
    v30(v11, a3);
    v29(v11, v13, a3);
    swift_getWitnessTable();
    v31 = v41;
    sub_1C1112E18();
    v30(v11, a3);
    v32 = v13;
    v27 = v31;
    v30(v32, a3);
  }

  v44 = swift_getWitnessTable();
  v45 = a4;
  v33 = v43;
  swift_getWitnessTable();
  v34 = v42;
  (*(v42 + 16))(a5, v27, v33);
  return (*(v34 + 8))(v27, v33);
}

uint64_t sub_1C0FD72CC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FDB800(v3, &v14 - v10, &qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FDB71C(v11, a1, &qword_1EBE902F0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  OUTLINED_FUNCTION_5_10();

  sub_1C12637D0();
  OUTLINED_FUNCTION_18_3();

  return (*(v7 + 8))(v2, v5);
}

uint64_t sub_1C0FD74BC@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v7 = v3;
  v9 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_1C0FDB800(v7, &v19 - v14, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2(0);
    OUTLINED_FUNCTION_3();
    return (*(v16 + 32))(a3, v15);
  }

  else
  {
    sub_1C1266420();
    v18 = sub_1C1264410();
    OUTLINED_FUNCTION_5_10();

    sub_1C12637D0();
    OUTLINED_FUNCTION_18_3();

    return (*(v11 + 8))(v4, v9);
  }
}

uint64_t sub_1C0FD769C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  result = sub_1C0FDB800(v3, v12, &qword_1EBE904C8);
  if (v13 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    a1[1] = v10;
  }

  else
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    OUTLINED_FUNCTION_5_10();

    sub_1C12637D0();
    OUTLINED_FUNCTION_18_3();

    return (*(v7 + 8))(v2, v5);
  }

  return result;
}

uint64_t sub_1C0FD77D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  result = sub_1C0FDB800(v3, v12, &qword_1EBE904C0);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    OUTLINED_FUNCTION_5_10();

    sub_1C12637D0();
    OUTLINED_FUNCTION_18_3();

    return (*(v7 + 8))(v2, v5);
  }

  return result;
}

uint64_t sub_1C0FD7918(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490);
  result = sub_1C1265420();
  if (v8 != a2 || v9 != a3)
  {
    return sub_1C0FD79B0(a1);
  }

  return result;
}

uint64_t sub_1C0FD79B0(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + *(a1 + 72));
  v5 = *(v4 + 2);
  v10 = *v4;
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490);
  sub_1C1265420();
  (*(*(a1 + 40) + 64))(&v10, *(a1 + 24));
  v6 = v12;
  sub_1C0FD1A5C(&v10, &qword_1EBE90488);
  if (v6)
  {
    v7 = (v2 + *(a1 + 76));
    v8 = *(v7 + 2);
    v10 = *v7;
    v11 = v8;
    sub_1C1265420();
  }

  return sub_1C0FD8008(a1);
}

uint64_t sub_1C0FD7AC4(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490);
  result = sub_1C1265420();
  if (v8 != a2 || v9 != a3)
  {
    return sub_1C0FD79B0(a1);
  }

  return result;
}

uint64_t sub_1C0FD7B5C()
{
  type metadata accessor for CGSize(0);
  sub_1C1265410();
  return v1;
}

uint64_t sub_1C0FD7B9C(uint64_t a1)
{
  v3 = sub_1C1265C10();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1265C30();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C0FDAFC4();
  v12 = sub_1C12664C0();
  (*(v10 + 16))(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v13 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v14 = swift_allocObject();
  v15 = *(a1 + 32);
  *(v14 + 16) = *(a1 + 16);
  *(v14 + 32) = v15;
  (*(v10 + 32))(v14 + v13, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  aBlock[4] = sub_1C0FDB008;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0FD7FC4;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  sub_1C1265C20();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C0FDBA00(&qword_1EDE7B768, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
  sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00);
  sub_1C1266870();
  MEMORY[0x1C68EFE10](0, v9, v5, v16);
  _Block_release(v16);

  (*(v21 + 8))(v5, v3);
  return (*(v19 + 8))(v9, v20);
}

uint64_t sub_1C0FD7F34(uint64_t a1)
{
  v1 = *(a1 + 48);
  type metadata accessor for TitleText();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490);
  v2 = sub_1C1265420();
  return v1(v2);
}

uint64_t sub_1C0FD7FC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1C0FD8008(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490);
  sub_1C1265430();
  return sub_1C0FD7B9C(a1);
}

uint64_t PhotosCollectionTitleOverlayConfiguration.init(enableLayoutDebugging:actionHandler:effectiveContentSizeHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = result;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *a6 = a4;
  *(a6 + 8) = a5;
  return result;
}

void sub_1C0FD809C()
{
  byte_1EBE902D0 = 0;
  qword_1EBE902D8 = 0;
  unk_1EBE902E0 = 0;
  qword_1EBE902C0 = nullsub_1;
  *algn_1EBE902C8 = 0;
}

uint64_t static PhotosCollectionTitleOverlayConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE8FBF8 != -1)
  {
    OUTLINED_FUNCTION_6_6();
  }

  v2 = *algn_1EBE902C8;
  v3 = byte_1EBE902D0;
  v4 = qword_1EBE902D8;
  v5 = unk_1EBE902E0;
  *a1 = qword_1EBE902C0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_1C0FCF1B4(v4);
}

uint64_t PhotosCollectionTitleOverlayPreview.init(title:subtitle:subtitleSymbolName:position:topLeadingChromeWidth:topTrailingChromeWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12)
{
  v18 = *a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D0);
  sub_1C1265410();
  v19 = v26;
  v20 = v27;
  *(a9 + 16) = v25;
  *(a9 + 32) = v19;
  *(a9 + 40) = v20;
  type metadata accessor for PhotosMockCollectionTitleOverlayModel();
  LOBYTE(v25) = v18;
  LOBYTE(v22) = a10 & 1;
  result = PhotosMockCollectionTitleOverlayModel.__allocating_init(title:subtitle:subtitleSymbolName:position:topLeadingChromeWidth:topTrailingChromeWidth:)(a1, a2, a3, a4, a5, a6, &v25, a8, v22, a11, a12 & 1);
  *a9 = result;
  *(a9 + 8) = 0;
  return result;
}

uint64_t PhotosCollectionTitleOverlayPreview.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = v1[2];
  *a1 = sub_1C12659A0();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F8);
  return sub_1C0FD82C8(v7, a1 + *(v5 + 44));
}

uint64_t sub_1C0FD82C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1C1262130();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904E0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v29 - v11);
  *v12 = sub_1C12659A0();
  v12[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904E8);
  sub_1C0FD87D0(a1, v12 + *(v14 + 44));
  sub_1C1264480();
  v47[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0);
  sub_1C1265420();
  sub_1C119D808(v6);

  sub_1C1262120();
  (*(v4 + 8))(v6, v3);
  sub_1C12628A0();
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = 0;
  sub_1C1263FB0();
  *&v47[0] = sub_1C1265170();
  sub_1C0FDB76C();
  v19 = sub_1C1265270();
  v20 = sub_1C1265940();
  v22 = v21;
  sub_1C0FD98C0(a1, v46);
  memcpy(v38, v46, 0x68uLL);
  v38[13] = v20;
  v38[14] = v22;
  memcpy(v32, v38, sizeof(v32));
  memcpy(v39, v46, sizeof(v39));
  v40 = v20;
  v41 = v22;
  sub_1C0FDB800(v38, v47, &qword_1EBE904F8);
  sub_1C0FD1A5C(v39, &qword_1EBE904F8);
  v23 = sub_1C1265950();
  v25 = v24;
  sub_1C0FD9B34(a1, v46);
  memcpy(v42, v46, 0x68uLL);
  v42[13] = v23;
  v42[14] = v25;
  memcpy(v31, v42, sizeof(v31));
  memcpy(v43, v46, sizeof(v43));
  v44 = v23;
  v45 = v25;
  sub_1C0FDB800(v42, v47, &qword_1EBE904F8);
  sub_1C0FD1A5C(v43, &qword_1EBE904F8);
  sub_1C0FDB800(v12, v10, &qword_1EBE904E0);
  v26 = v30;
  sub_1C0FDB800(v10, v30, &qword_1EBE904E0);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90500) + 48);
  v46[0] = v19;
  memcpy(&v46[1], v32, 0x78uLL);
  memcpy(&v46[16], v31, 0x78uLL);
  memcpy((v26 + v27), v46, 0xF8uLL);
  sub_1C0FDB800(v46, v47, &qword_1EBE90508);
  sub_1C0FD1A5C(v12, &qword_1EBE904E0);
  *&v47[0] = v19;
  memcpy(v47 + 8, v32, 0x78uLL);
  memcpy(v48, v31, sizeof(v48));
  sub_1C0FD1A5C(v47, &qword_1EBE90508);
  return sub_1C0FD1A5C(v10, &qword_1EBE904E0);
}

unint64_t sub_1C0FD871C()
{
  result = qword_1EBE90300;
  if (!qword_1EBE90300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90300);
  }

  return result;
}

uint64_t sub_1C0FD87D0@<X0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v66 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90510);
  v3 = MEMORY[0x1EEE9AC00](v60);
  v67 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v63 = sub_1C12631E0();
  v62 = sub_1C1264470();
  v84 = *a1;
  v105[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0);
  sub_1C1265420();
  v65 = v92;
  v7 = swift_allocObject();
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  v9 = a1[2];
  v64 = v7;
  v7[3] = v9;
  v61 = a1;
  sub_1C0FDB7C8(a1, v105);
  if (qword_1EDE79640 != -1)
  {
    swift_once();
  }

  v10 = xmmword_1EDE79648;
  v11 = qword_1EDE79658;
  v12 = unk_1EDE79660;
  v13 = qword_1EDE79668;
  v92 = v84;
  sub_1C1265440();
  v14 = v105[0];
  v15 = *&v105[1];
  swift_getKeyPath();
  v105[0] = v14;
  *&v105[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90518);
  sub_1C1265600();

  v58 = *(&v92 + 1);
  v59 = v92;
  v16 = v93;

  v68 = v84;
  sub_1C1265440();
  v17 = v91[0];
  v18 = v91[1];
  v19 = v91[2];
  swift_getKeyPath();
  v91[0] = v17;
  v91[1] = v18;
  v91[2] = v19;
  sub_1C1265600();

  v56 = *(&v68 + 1);
  v57 = v68;
  v20 = v69;

  v78 = 0;
  v79 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690);
  sub_1C1265410();
  v53 = BYTE8(__src[0]);
  v54 = *&__src[1];
  v55 = *&__src[0];
  LOBYTE(__src[0]) = BYTE8(__src[0]);
  v51 = sub_1C1265990();
  v52 = v21;
  v22 = [objc_opt_self() yellowColor];
  v23 = [v22 colorWithAlphaComponent_];

  v24 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  v49 = v24;
  v105[0] = v84;
  sub_1C1265420();
  sub_1C119D364();

  sub_1C12659A0();
  sub_1C1262C80();
  v25 = v78;
  v26 = v80;
  v27 = v82;
  v28 = v83;
  v47 = v83;
  v48 = v82;
  v89 = v79;
  v87 = v81;
  v29 = sub_1C12631E0();
  v50 = sub_1C1264470();
  v91[0] = v24;
  v91[1] = v25;
  LOBYTE(v91[2]) = v89;
  *(&v91[2] + 1) = *v88;
  HIDWORD(v91[2]) = *&v88[3];
  v91[3] = v26;
  LOBYTE(v91[4]) = v87;
  *(&v91[4] + 1) = *v86;
  HIDWORD(v91[4]) = *&v86[3];
  v91[5] = v27;
  v91[6] = v28;
  LOBYTE(v91[7]) = 0;
  HIDWORD(v91[7]) = *&v90[3];
  *(&v91[7] + 1) = *v90;
  v91[8] = v29;
  LOBYTE(v91[9]) = v50;
  v91[10] = v51;
  v91[11] = v52;
  memcpy(v105, v91, sizeof(v105));
  *&v92 = v49;
  *(&v92 + 1) = v25;
  LOBYTE(v93) = v89;
  *(&v93 + 1) = *v88;
  HIDWORD(v93) = *&v88[3];
  v94 = v26;
  v95 = v87;
  *v96 = *v86;
  *&v96[3] = *&v86[3];
  v97 = v48;
  v98 = v47;
  v99 = 0;
  *&v100[3] = *&v90[3];
  *v100 = *v90;
  v101 = v29;
  v102 = v50;
  v103 = v51;
  v104 = v52;
  sub_1C0FDB800(v91, &v68, &qword_1EBE90520);
  sub_1C0FD1A5C(&v92, &qword_1EBE90520);
  v30 = sub_1C12631E0();
  v31 = sub_1C1264470();
  v32 = sub_1C1265990();
  v34 = v33;
  v35 = &v6[*(v60 + 36)];
  *v35 = sub_1C1263AA0();
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90528);
  sub_1C0FD8F30(v61, &v35[*(v36 + 44)]);
  v37 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90530) + 36)];
  *v37 = v32;
  v37[1] = v34;
  v38 = v58;
  *v6 = v59;
  *(v6 + 1) = v38;
  *(v6 + 2) = v16;
  v39 = v56;
  *(v6 + 3) = v57;
  *(v6 + 4) = v39;
  *(v6 + 5) = v20;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 18) = v55;
  v6[152] = v53;
  *(v6 + 20) = v54;
  memcpy(v6 + 168, v105, 0x60uLL);
  *(v6 + 33) = v30;
  v6[272] = v31;
  v40 = v67;
  sub_1C0FDB800(v6, v67, &qword_1EBE90510);
  v41 = v66;
  *v66 = 1;
  v42 = v64;
  *(v41 + 1) = v63;
  v41[16] = v62;
  v43 = v65;
  *&__src[0] = v65;
  *(&__src[0] + 1) = sub_1C0FDB7C0;
  *&__src[1] = v42;
  BYTE8(__src[1]) = 0;
  *(&__src[1] + 9) = *v85;
  HIDWORD(__src[1]) = *&v85[3];
  __src[2] = 0uLL;
  __src[3] = v10;
  *&__src[4] = v11;
  *(&__src[4] + 1) = v12;
  *&__src[5] = v13;
  memcpy(v41 + 24, __src, 0x58uLL);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90538);
  sub_1C0FDB800(v40, &v41[*(v44 + 64)], &qword_1EBE90510);
  sub_1C0FDB800(__src, &v68, &qword_1EBE90540);
  sub_1C0FD1A5C(v6, &qword_1EBE90510);
  sub_1C0FD1A5C(v40, &qword_1EBE90510);
  *&v68 = v43;
  *(&v68 + 1) = sub_1C0FDB7C0;
  v69 = v42;
  v70 = 0;
  *v71 = *v85;
  *&v71[3] = *&v85[3];
  v72 = 0;
  v73 = 0;
  v74 = v10;
  v75 = v11;
  v76 = v12;
  v77 = v13;
  return sub_1C0FD1A5C(&v68, &qword_1EBE90540);
}

uint64_t sub_1C0FD8F30@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90548);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  *v9 = sub_1C12638E0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90550);
  sub_1C0FD91D8(a1, &v9[*(v10 + 44)]);
  v11 = a1[2];
  v23 = a1[1];
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE933B0);
  sub_1C1265420();
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  if ((v22 & 1) == 0)
  {
    *&v23 = 0x203A657A6953;
    *(&v23 + 1) = 0xE600000000000000;
    type metadata accessor for CGSize(0);
    v16 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v16);

    v13 = *(&v23 + 1);
    v12 = v23;

    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1C0FDB800(v9, v7, &qword_1EBE90548);
  sub_1C0FDB800(v7, a2, &qword_1EBE90548);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90558);
  v18 = a2 + *(v17 + 48);
  *v18 = 0xD00000000000001BLL;
  *(v18 + 8) = 0x80000001C12694B0;
  *(v18 + 16) = 0;
  *(v18 + 24) = v15;
  v19 = (a2 + *(v17 + 64));
  sub_1C0FDB850(0xD00000000000001BLL, 0x80000001C12694B0, 0);

  sub_1C0FDB860(v12, v13, 0, v14);
  sub_1C0FDB8A4(v12, v13, 0, v14);
  *v19 = v12;
  v19[1] = v13;
  v19[2] = 0;
  v19[3] = v14;
  sub_1C0FD1A5C(v9, &qword_1EBE90548);
  sub_1C0FDB8A4(v12, v13, 0, v14);
  sub_1C0FDB8E8(0xD00000000000001BLL, 0x80000001C12694B0, 0);

  return sub_1C0FD1A5C(v7, &qword_1EBE90548);
}

uint64_t sub_1C0FD91D8@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90560);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  v16 = swift_allocObject();
  v17 = a1[1];
  v16[1] = *a1;
  v16[2] = v17;
  v16[3] = a1[2];
  v27 = a1;
  sub_1C0FDB7C8(a1, v28);
  sub_1C1265480();
  v18 = swift_allocObject();
  v19 = a1[1];
  v18[1] = *a1;
  v18[2] = v19;
  v18[3] = a1[2];
  sub_1C0FDB7C8(a1, v28);
  sub_1C1265480();
  v20 = *(v4 + 16);
  v20(v10, v15, v3);
  v20(v7, v13, v3);
  v21 = v26;
  v20(v26, v10, v3);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90568);
  v20(&v21[*(v22 + 48)], v7, v3);
  v23 = *(v4 + 8);
  v23(v13, v3);
  v23(v15, v3);
  v23(v7, v3);
  return (v23)(v10, v3);
}

uint64_t sub_1C0FD94DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0);
  sub_1C1265420();
  swift_getKeyPath();
  sub_1C0FDBA00(&qword_1EBE90578, type metadata accessor for PhotosMockCollectionTitleOverlayModel);
  sub_1C1261F30();

  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C0FD9630(1);
  swift_getKeyPath();
  sub_1C1261F40();
}

uint64_t sub_1C0FD9630(uint64_t result)
{
  v2 = -2;
  for (i = &byte_1F406CDD8; ; ++i)
  {
    if (v2 == -4)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (*v1 == *i)
    {
      break;
    }

    --v2;
  }

  v4 = -v2;
  v5 = __OFADD__(v4, result);
  v6 = v4 + result;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6 % 2;
  if (v7 >= 0)
  {
    *v1 = *(&unk_1F406CDB8 + v7 + 32);
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C0FD96A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0);
  sub_1C1265420();
  sub_1C119D1A8(&v9);

  v3 = 0x80000001C1269400;
  v4 = 0xD000000000000019;
  if (v9)
  {
    v4 = 0x706F546C6C616D53;
    v3 = 0xE800000000000000;
  }

  *&v10 = v4;
  *(&v10 + 1) = v3;
  sub_1C0FDB9AC();
  result = sub_1C12648F0();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1C0FD976C(__int128 *a1)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0);
  sub_1C1265420();
  sub_1C119DB88(&v5);

  v2 = *(&v6 + 1);
  sub_1C0FD1A5C(&v5, &qword_1EBE90488);
  v5 = *a1;
  sub_1C1265420();
  if (v2)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  else
  {
    *(&v6 + 1) = &type metadata for PhotosMockOverlayBanner;
    v7 = &protocol witness table for PhotosMockOverlayBanner;
    v3 = swift_allocObject();
    *&v5 = v3;
    *(v3 + 40) = &type metadata for PhotosMockBanner;
    *(v3 + 48) = sub_1C0FDB958();
    *(v3 + 56) = 1;
  }

  sub_1C119DC3C(&v5);
}

double sub_1C0FD98A0@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x72656E6E6142;
  *a1 = xmmword_1C12A2E40;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1C0FD98C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1262130();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v30 = *a1;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0);
  sub_1C1265420();
  sub_1C119D808(v10);

  v11 = sub_1C1262100();
  LOBYTE(a1) = v12;
  v13 = *(v5 + 8);
  result = v13(v10, v4);
  if (a1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
  }

  else
  {
    *&v27 = sub_1C1265120();
    sub_1C0FDB76C();
    v15 = sub_1C1265270();
    v23 = sub_1C12659A0();
    v25 = v11;
    v17 = v23;
    v18 = v24;
    v27 = v30;
    sub_1C1265420();
    sub_1C119D808(v8);

    sub_1C1262120();
    v13(v8, v4);
    sub_1C12659A0();
    result = sub_1C1262C80();
    LOBYTE(v26) = 0;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v19 = xmmword_1C12A2E50;
    v16 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v15;
  *(a2 + 8) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 72) = v21;
  *(a2 + 88) = v22;
  return result;
}

uint64_t sub_1C0FD9B34@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1262130();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v30 = *a1;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0);
  sub_1C1265420();
  sub_1C119D808(v10);

  v11 = sub_1C1262110();
  LOBYTE(a1) = v12;
  v13 = *(v5 + 8);
  result = v13(v10, v4);
  if (a1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
  }

  else
  {
    *&v27 = sub_1C1265120();
    sub_1C0FDB76C();
    v15 = sub_1C1265270();
    v23 = sub_1C12659A0();
    v25 = v11;
    v17 = v23;
    v18 = v24;
    v27 = v30;
    sub_1C1265420();
    sub_1C119D808(v8);

    sub_1C1262120();
    v13(v8, v4);
    sub_1C12659A0();
    result = sub_1C1262C80();
    LOBYTE(v26) = 0;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v19 = xmmword_1C12A2E60;
    v16 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v15;
  *(a2 + 8) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 72) = v21;
  *(a2 + 88) = v22;
  return result;
}

uint64_t sub_1C0FD9DAC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0FD9E48(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
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

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((result + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 40) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 48) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C0FD9F98(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
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
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 40) & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for PhotosDetailsNavigationTransitionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionTitleOverlayPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0FDA2F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0FDA310(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C0FDA368(uint64_t *a1, int a2)
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

uint64_t sub_1C0FDA3A8(uint64_t result, int a2, int a3)
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

uint64_t sub_1C0FDA3FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C0FDA43C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1C0FDA49C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C0FDAA88();
      if (v2 <= 0x3F)
      {
        sub_1C0FDAAD8();
        if (v3 <= 0x3F)
        {
          sub_1C0FDAB3C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C0FDA590(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_1C1263EB0();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  v14 = *(v6 + 80);
  if (!*(v11 + 84))
  {
    ++v13;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_30:
    if ((v7 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v14 + 40) & ~v14, v7, v5);
    }

    else
    {
      v23 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }
  }

  else
  {
    v15 = *(v12 + 80) & 0xF8 | 7;
    v16 = ((((((v13 + ((v15 + ((*(v6 + 64) + ((v14 + 88) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 24;
    v17 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 - v8 + 1;
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
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      case 2:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_30;
        }

LABEL_26:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          LODWORD(v17) = *a1;
        }

        result = v8 + (v17 | v22) + 1;
        break;
      default:
        goto LABEL_30;
    }
  }

  return result;
}

void sub_1C0FDA7E0(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C1263EB0() - 8);
  v12 = *(v11 + 64);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (v14 + ((*(v8 + 64) + ((v13 + 88) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v14;
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v16 = ((((((v12 + v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v10 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (((((((v12 + v15 + 8) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v17 = a3 - v10 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (a2)
        {
LABEL_36:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 40) & ~v13, a2, v9, v7);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
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
    if (v16)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v10;
    }

    if (v16)
    {
      bzero(a1, v16);
      *a1 = ~v10 + a2;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v20;
        break;
      case 2:
        *(a1 + v16) = v20;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(a1 + v16) = v20;
        break;
      default:
        return;
    }
  }
}

void sub_1C0FDAA88()
{
  if (!qword_1EDE77640)
  {
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77640);
    }
  }
}

void sub_1C0FDAAD8()
{
  if (!qword_1EDE77560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE902F0);
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77560);
    }
  }
}

void sub_1C0FDAB3C()
{
  if (!qword_1EDE76C80)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_1C1265450();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76C80);
    }
  }
}

uint64_t sub_1C0FDABE0()
{
  v0 = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_14_9();

  return sub_1C0FD44BC(v1, v2, v3, v4, v5, v6, v7);
}

unint64_t sub_1C0FDAC84()
{
  result = qword_1EBE90440;
  if (!qword_1EBE90440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90430);
    sub_1C0FDAD3C();
    sub_1C0FDB6D4(&qword_1EBE90468, &qword_1EBE90470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90440);
  }

  return result;
}

unint64_t sub_1C0FDAD3C()
{
  result = qword_1EBE90448;
  if (!qword_1EBE90448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90450);
    sub_1C0FDB6D4(&qword_1EBE90458, &qword_1EBE90460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90448);
  }

  return result;
}

unint64_t sub_1C0FDADF4()
{
  result = qword_1EDE771D8;
  if (!qword_1EDE771D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90438);
    sub_1C0FDAE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771D8);
  }

  return result;
}

unint64_t sub_1C0FDAE80()
{
  result = qword_1EDE7BE40;
  if (!qword_1EDE7BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90478);
    sub_1C0FDB6D4(&qword_1EDE7BCB0, &qword_1EBE90480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE40);
  }

  return result;
}

unint64_t sub_1C0FDAF38()
{
  result = qword_1EDE82EF8;
  if (!qword_1EDE82EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82EF8);
  }

  return result;
}

unint64_t sub_1C0FDAFC4()
{
  result = qword_1EDE83410;
  if (!qword_1EDE83410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE83410);
  }

  return result;
}

uint64_t sub_1C0FDB008()
{
  v1 = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_15(v1);
  v3 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return sub_1C0FD7F34(v3);
}

uint64_t sub_1C0FDB0A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C0FDB10C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(OUTLINED_FUNCTION_11_6() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1C1262D60() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[11];
  v14 = *(v1 + ((v12 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C0FD55B4((v1 + 6), v1 + v8, v1 + v11, v1 + v12, v4, v3, v5, v6, a1, v13, v14);
}

uint64_t objectdestroyTm()
{
  v18 = *(v1 + 16);
  type metadata accessor for TitleText();
  OUTLINED_FUNCTION_10_4();
  v3 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));
  swift_unknownObjectRelease();

  if (*(v3 + 72))
  {
  }

  v12 = OUTLINED_FUNCTION_8_5(v4, v5, v6, v7, v8, v9, v10, v11, v18);
  (*(v13 + 8))(v3 + v14, v12);
  sub_1C0FA03F4(*(v3 + *(v0 + 64)), *(v3 + *(v0 + 64) + 8));
  v15 = *(v0 + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v3 + v15, 1, v16))
    {
      (*(*(v16 - 8) + 8))(v3 + v15, v16);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C0FDB490(uint64_t a1, uint64_t (*a2)(uint64_t, double, double))
{
  v3 = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_14_9();
  return sub_1C0FD65B8(v4, v5, v6, v7, v8, v9, a2);
}

unint64_t sub_1C0FDB53C()
{
  result = qword_1EDE77298;
  if (!qword_1EDE77298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904A8);
    sub_1C0FDB5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77298);
  }

  return result;
}

unint64_t sub_1C0FDB5C8()
{
  result = qword_1EDE7BF70;
  if (!qword_1EDE7BF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B0);
    sub_1C0FDB680();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF70);
  }

  return result;
}

unint64_t sub_1C0FDB680()
{
  result = qword_1EDE80678;
  if (!qword_1EDE80678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80678);
  }

  return result;
}

uint64_t sub_1C0FDB6D4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0FDB71C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_16(a1, a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(v3, v4);
  return v3;
}

unint64_t sub_1C0FDB76C()
{
  result = qword_1EDE7B808;
  if (!qword_1EDE7B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B808);
  }

  return result;
}

uint64_t sub_1C0FDB800(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_16(a1, a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_1C0FDB850(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C0FDB860(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C0FDB850(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C0FDB8A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C0FDB8E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C0FDB8E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_42Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1C0FDB958()
{
  result = qword_1EBE90570;
  if (!qword_1EBE90570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90570);
  }

  return result;
}

unint64_t sub_1C0FDB9AC()
{
  result = qword_1EDE7B760;
  if (!qword_1EDE7B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B760);
  }

  return result;
}

uint64_t sub_1C0FDBA00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_6()
{

  return type metadata accessor for TitleText();
}

uint64_t PhotosMultiAssetView.init(_:maxItems:backgroundColor:placeholderBackgroundColor:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 17);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = *a4;
  *(a5 + 40) = v8;
  *(a5 + 41) = v9;

  v10 = sub_1C0FDBAFC(a1, a2);

  *(a5 + 48) = v10;
  return result;
}

unint64_t sub_1C0FDBAFC(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (!result)
  {
    v4 = 0;
    if (a2 < 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_6:
      if (!a2)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v7 = 0;
        if (!v3 || v5 >= v4)
        {
          goto LABEL_13;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C68F02D0](v5, v3);
          goto LABEL_13;
        }

        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v7 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C0FE397C();
          v6 = v10;
        }

        v8 = *(v6 + 16);
        if (v8 >= *(v6 + 24) >> 1)
        {
          sub_1C0FE397C();
          v6 = v11;
        }

        *(v6 + 16) = v8 + 1;
        v9 = v6 + 16 * v8;
        *(v9 + 32) = v5;
        *(v9 + 40) = v7;
        if (a2 == ++v5)
        {
          return v6;
        }
      }

      __break(1u);
LABEL_23:
      result = sub_1C1266BB0();
      v4 = result;
      if (a2 < 0)
      {
        goto LABEL_24;
      }
    }
  }

  if (result >> 62)
  {
    goto LABEL_23;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C0FDBC64(uint64_t a1, void *a2)
{
  v3 = 7104878;
  v9 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](45, 0xE100000000000000);
  if (a2 && (v4 = [a2 uuid]) != 0)
  {
    v5 = v4;
    v3 = sub_1C1265EA0();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1C68EF850](v3, v7);

  return v9;
}

uint64_t sub_1C0FDBD24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FDBC64(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C0FDBD50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 41);
  swift_unknownObjectRetain();
  v9 = sub_1C1200D04();
  [v9 setNetworkAccessAllowed_];
  *(a2 + 152) = swift_getKeyPath();
  *(a2 + 160) = 0;
  v10 = type metadata accessor for PhotosAssetView();
  v11 = v10[12];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v10[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a2 + v10[14];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *a2 = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 52) = v5;
  *(a2 + 60) = v6;
  *(a2 + 68) = v7;
  *(a2 + 69) = v8;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = a1;
  *(a2 + 96) = 0;
  *(a2 + 104) = v9;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0);
  v15 = a2 + *(result + 36);
  *v15 = 0;
  *(v15 + 8) = 257;
  return result;
}

uint64_t PhotosMultiAssetView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v3;
  v12[2] = *(v1 + 32);
  v13 = *(v1 + 48);
  v4 = v3;
  KeyPath = swift_getKeyPath();

  v6 = sub_1C12659A0();
  v8 = v7;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90580) + 36);
  sub_1C0FDBF84(v12, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90588);
  v11 = (v9 + *(result + 36));
  *v11 = v6;
  v11[1] = v8;
  *a1 = KeyPath;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C0FDBF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a1;
  v12 = a2;
  v2 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C1265810();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905B8);
  sub_1C1265820();
  *(swift_allocObject() + 16) = xmmword_1C12A3440;
  v10 = xmmword_1C12A3450;
  *v6 = xmmword_1C12A3450;
  v7 = *MEMORY[0x1E697D748];
  v8 = *(v4 + 104);
  v8(v6, v7, v3);
  sub_1C1265830();
  *v6 = v10;
  v8(v6, v7, v3);
  sub_1C1265830();
  sub_1C1263AB0();
  v13 = v11;
  v14 = 0;
  sub_1C0FDC8F0(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0]);
  sub_1C1266FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE905C8);
  sub_1C0FDC7B0();
  return sub_1C1265AE0();
}

uint64_t sub_1C0FDC270(uint64_t a1)
{
  v7 = *(a1 + 48);
  v6 = v7;
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_1C0FDC940(&v7, v5);
  sub_1C0FDC9B0(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE905F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0);
  sub_1C0FDB6D4(&qword_1EBE905F8, &qword_1EBE905F0);
  sub_1C0FDC834();
  sub_1C0FDC9E8();
  return sub_1C1265690();
}

uint64_t sub_1C0FDC404@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1263590();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C0FDC494(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C0FDC4D4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1C0FDC530()
{
  result = qword_1EBE90590;
  if (!qword_1EBE90590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90580);
    sub_1C0FDC5E8();
    sub_1C0FDB6D4(&qword_1EBE905B0, &qword_1EBE90588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90590);
  }

  return result;
}

unint64_t sub_1C0FDC5E8()
{
  result = qword_1EBE90598;
  if (!qword_1EBE90598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE905A0);
    sub_1C0FDC6A0();
    sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90598);
  }

  return result;
}

unint64_t sub_1C0FDC6A0()
{
  result = qword_1EDE7B788;
  if (!qword_1EDE7B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B788);
  }

  return result;
}

uint64_t sub_1C0FDC6F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1C0FDC748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0FDC7B0()
{
  result = qword_1EBE905D0;
  if (!qword_1EBE905D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE905C8);
    sub_1C0FDC834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE905D0);
  }

  return result;
}

unint64_t sub_1C0FDC834()
{
  result = qword_1EDE77498;
  if (!qword_1EDE77498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE905E0);
    sub_1C0FDC8F0(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77498);
  }

  return result;
}

uint64_t sub_1C0FDC8F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C0FDC940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE905F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C0FDC9E8()
{
  result = qword_1EBE90600;
  if (!qword_1EBE90600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90600);
  }

  return result;
}

__n128 PhotosAsyncAssetImageConfiguration.init(asset:imageProvider:requestOptions:cropKind:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  result = *a4;
  v7 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v7;
  *(a5 + 56) = v5;
  return result;
}

BOOL static PhotosAsyncAssetImageConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v48 = *(a1 + 32);
  v49 = *(a1 + 24);
  v46 = *(a1 + 48);
  v47 = *(a1 + 40);
  v45 = *(a1 + 56);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v43 = *(a2 + 32);
  v44 = *(a2 + 24);
  v42 = *(a2 + 40);
  v8 = *(a2 + 48);
  v41 = *(a2 + 56);
  v9 = *a1;
  v10 = v6;
  if (v3 == v6)
  {
  }

  else
  {
    v11 = [v9 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v9;
  v13 = v10;
  if (v3 == v6)
  {

    if (v5 != v2)
    {
      return 0;
    }
  }

  else
  {
    if (!v3 || !v6)
    {

      return 0;
    }

    v14 = [v12 isContentEqualTo:v13];
    if (!v14)
    {
      v14 = [v13 isContentEqualTo:v12];
    }

    if (v14 != 2 || v5 != v2)
    {
      return 0;
    }
  }

  v16 = v4;
  v17 = v7;
  v18 = static PhotosAsyncAssetImageConfiguration.requestOptionsAreEquivelant(_:_:)(v4, v7);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v52[0] = v49;
  v52[1] = v48;
  v52[2] = v47;
  v52[3] = v46;
  v53 = v45;
  v50[0] = v44;
  v50[1] = v43;
  v50[2] = v42;
  v50[3] = v8;
  v51 = v41;
  OUTLINED_FUNCTION_9_7();
  sub_1C0FDCF60(v19, v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_7_7();
  sub_1C0FDCF60(v24, v25, v26, v27, v28);
  v29 = static PhotosAsyncAssetImageConfiguration.CropKind.== infix(_:_:)(v52, v50);
  v30 = OUTLINED_FUNCTION_7_7();
  sub_1C0FDCFAC(v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_9_7();
  sub_1C0FDCFAC(v35, v36, v37, v38, v39);
  return v29;
}

uint64_t static PhotosAsyncAssetImageConfiguration.requestOptionsAreEquivelant(_:_:)(void *a1, void *a2)
{
  if (a1)
  {
    if (a1 != a2)
    {
      if (a2)
      {
        v3 = a1;
        v4 = a2;
        v5 = [v3 deliveryMode];
        if (v5 == [v4 deliveryMode])
        {
          v6 = [v3 resizeMode];
          if (v6 == [v4 resizeMode])
          {
            [v3 normalizedCropRect];
            [v4 normalizedCropRect];
            v10.origin.x = OUTLINED_FUNCTION_8_0();
            if (CGRectEqualToRect(v10, v11))
            {
              v7 = [v3 isNetworkAccessAllowed];
              v8 = [v4 isNetworkAccessAllowed];

              return v7 ^ v8 ^ 1;
            }
          }
        }
      }

      return 0;
    }

    return 1;
  }

  return !a2;
}

BOOL static PhotosAsyncAssetImageConfiguration.CropKind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v4 == 1)
    {
      if (v9 == 1)
      {
        if (v2 != v5 || v3 != v6)
        {
          OUTLINED_FUNCTION_4_4();
          v11 = sub_1C1266D50();
          v12 = OUTLINED_FUNCTION_1_5();
          sub_1C0FDCF60(v12, v13, v14, v15, 1);
          v16 = OUTLINED_FUNCTION_0_4();
          sub_1C0FDCF60(v16, v17, v18, v19, 1);
          v20 = OUTLINED_FUNCTION_0_4();
          sub_1C0FDCFAC(v20, v21, v22, v23, 1);
          v24 = OUTLINED_FUNCTION_1_5();
          sub_1C0FDCFAC(v24, v25, v26, v27, 1);
          return v11 & 1;
        }

        v37 = 1;
        v63 = OUTLINED_FUNCTION_4_4();
        sub_1C0FDCF60(v63, v64, v8, v7, 1);
        v65 = OUTLINED_FUNCTION_0_4();
        sub_1C0FDCF60(v65, v66, v67, v68, 1);
        v69 = OUTLINED_FUNCTION_0_4();
        sub_1C0FDCFAC(v69, v70, v71, v72, 1);
        v45 = OUTLINED_FUNCTION_4_4();
        v47 = v8;
        v48 = v7;
        v49 = 1;
        goto LABEL_29;
      }
    }

    else if (a1[2] | v3 | v2 | a1[3])
    {
      if (v9 == 2 && v5 == 1 && (v8 | v6 | v7) == 0)
      {
        v37 = 1;
        OUTLINED_FUNCTION_2_2();
        sub_1C0FDCFAC(v40, v41, v42, v43, v44);
        OUTLINED_FUNCTION_2_2();
LABEL_29:
        sub_1C0FDCFAC(v45, v46, v47, v48, v49);
        return v37;
      }
    }

    else if (v9 == 2 && (v8 | v6 | v5 | v7) == 0)
    {
      OUTLINED_FUNCTION_2_2();
      sub_1C0FDCFAC(v73, v74, v75, v76, v77);
      OUTLINED_FUNCTION_2_2();
      sub_1C0FDCFAC(v78, v79, v80, v81, v82);
      return 1;
    }

    goto LABEL_26;
  }

  if (*(a2 + 32))
  {
LABEL_26:
    v51 = OUTLINED_FUNCTION_1_5();
    sub_1C0FDCF60(v51, v52, v53, v54, v9);
    v55 = OUTLINED_FUNCTION_0_4();
    sub_1C0FDCFAC(v55, v56, v57, v58, v4);
    v59 = OUTLINED_FUNCTION_1_5();
    sub_1C0FDCFAC(v59, v60, v61, v62, v9);
    return 0;
  }

  v29 = OUTLINED_FUNCTION_0_4();
  sub_1C0FDCFAC(v29, v30, v31, v32, 0);
  v33 = OUTLINED_FUNCTION_1_5();
  sub_1C0FDCFAC(v33, v34, v35, v36, 0);
  return v2 == v5;
}

uint64_t sub_1C0FDCF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  return result;
}

uint64_t sub_1C0FDCFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  return result;
}

uint64_t PhotosAsyncAssetImageConfiguration.cropKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 56);
  *(a1 + 32) = v6;
  return sub_1C0FDCF60(v2, v3, v4, v5, v6);
}

uint64_t PhotosAsyncAssetImageConfiguration.sourceDebugIdentifier.getter()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0)
  {
    v2 = [*v0 uuid];
    if (v2)
    {
      v3 = v2;
      v1 = sub_1C1265EA0();
    }
  }

  return v1;
}

uint64_t PhotosAsyncAssetImageConfiguration.media.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v5 = *v1;
  v4 = v1[1];
  v11[0] = v1[2];
  *(v11 + 9) = *(v1 + 41);
  v8[0] = v5;
  v8[1] = v4;
  v9[0] = v1[2];
  *(v9 + 9) = *(v1 + 41);
  sub_1C0FDE0F8(v10, &v7);
  return sub_1C0FDD130(v8, a1);
}

uint64_t sub_1C0FDD130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  if (*a1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C1266460();
    v11 = v10;
    v13 = v12;
    v32 = 0;
    v14 = [v3 uuid];
    if (v14)
    {
      v15 = v14;
      v31 = sub_1C1265EA0();
      v17 = v16;
    }

    else
    {
      v31 = 0;
      v17 = 0;
    }
  }

  else
  {
    v31 = 0;
    v17 = 0;
    v32 = 1;
    v11 = 0;
    v13 = 0;
  }

  v18 = OUTLINED_FUNCTION_4_4();
  sub_1C0FDCF60(v18, v19, v7, v8, v9);
  [v5 normalizedCropRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v28 = OUTLINED_FUNCTION_4_4();
  sub_1C0FDCFAC(v28, v29, v7, v8, v9);
  result = swift_unknownObjectRelease();
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v32;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v21;
  *(a2 + 72) = v23;
  *(a2 + 80) = v25;
  *(a2 + 88) = v27;
  *(a2 + 96) = v31;
  *(a2 + 104) = v17;
  return result;
}

uint64_t sub_1C0FDD2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *(v4 + 24);
  v8 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = *(v4 + 56);
  v13 = *(v4 + 64);
  sub_1C0FDE89C(a1 + 16, &v21);
  sub_1C0FD09FC(&v21, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92300);
  result = swift_dynamicCast();
  if (result)
  {
    v15 = v21;
    *&v21 = v9;
    *(&v21 + 1) = v8;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    sub_1C0FDCF60(v9, v8, v10, v11, v12);
    sub_1C0FDD41C(v15, &v21, v25, v13, a3, a4);
    v19 = v25[0];
    v20 = v25[1];
    v16 = v26;
    swift_unknownObjectRelease();
    result = sub_1C0FDCFAC(v21, *(&v21 + 1), v22, v23, v24);
    v17 = v19;
    v18 = v20;
  }

  else
  {
    v17 = 0uLL;
    v16 = 1;
    v18 = 0uLL;
  }

  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_1C0FDD41C@<X0>(id a1@<X1>, uint64_t result@<X0>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D4>, double a6@<D5>)
{
  v11 = *result;
  if (!*(result + 32))
  {
    result = [a1 respondsToSelector_];
    if (result)
    {
      sub_1C12665B0();
      result = [a1 bestCropRectForAspectRatioV2:0 verticalContentMode:v11 cropMode:?];
LABEL_10:
      *&v14 = v16;
      v15 = 0;
      *(&v14 + 1) = v17;
      *(&v13 + 1) = v18;
      goto LABEL_16;
    }

    v14 = 0uLL;
LABEL_12:
    v15 = 1;
    v13 = 0uLL;
    goto LABEL_16;
  }

  v12 = *(result + 16);
  if (*(result + 32) != 1)
  {
    v14 = 0uLL;
    if (*(result + 24) | v12 | v11 | *(result + 8))
    {
      result = CGRectIsEmpty(*&a4);
      if (result)
      {
        if ([a1 respondsToSelector_])
        {
          sub_1C12665B0();
          result = [a1 bestCropRectForAspectRatioV2:0 verticalContentMode:3 cropMode:?];
          goto LABEL_10;
        }

        result = [a1 respondsToSelector_];
        if (result)
        {
          sub_1C12665B0();
          result = [a1 bestCropRectForAspectRatio_];
          goto LABEL_10;
        }
      }

      v15 = 1;
      v13 = 0uLL;
      v14 = 0uLL;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  result = (v12)(v19, a1, a5, a6);
  v14 = v19[0];
  v13 = v19[1];
  v15 = v20;
LABEL_16:
  *a3 = v14;
  *(a3 + 16) = v13;
  *(a3 + 32) = v15;
  return result;
}

uint64_t sub_1C0FDD5A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  v38 = *(a2 + 96);
  v39 = *(a1 + 96);
  v40 = *(a2 + 104);
  v41 = *(a1 + 104);
  v45[0] = *(a1 + 24);
  v45[1] = v2;
  v45[2] = v3;
  v45[3] = v4;
  v46 = v5;
  v43[0] = v7;
  v43[1] = v6;
  v43[2] = v9;
  v43[3] = v8;
  v44 = v10;
  v16 = OUTLINED_FUNCTION_5_11();
  sub_1C0FDCF60(v16, v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_6_7();
  sub_1C0FDCF60(v21, v22, v23, v24, v25);
  v42 = static PhotosAsyncAssetImageConfiguration.CropKind.== infix(_:_:)(v45, v43);
  v26 = OUTLINED_FUNCTION_6_7();
  sub_1C0FDCFAC(v26, v27, v28, v29, v30);
  v31 = OUTLINED_FUNCTION_5_11();
  sub_1C0FDCFAC(v31, v32, v33, v34, v35);
  if (v42)
  {
    v47.origin.x = OUTLINED_FUNCTION_8_0();
    v48.origin.x = v11;
    v48.origin.y = v12;
    v48.size.width = v13;
    v48.size.height = v14;
    result = CGRectEqualToRect(v47, v48);
    if (!result)
    {
      return result;
    }

    if (v41)
    {
      if (!v40)
      {
        return 0;
      }

      v37 = v39 == v38 && v41 == v40;
      return v37 || (sub_1C1266D50() & 1) != 0;
    }

    if (!v40)
    {
      return 1;
    }
  }

  return 0;
}

double sub_1C0FDD720@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_1C0FDD2C4(a1, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t PhotosAsyncAssetImageProvider.Error.hashValue.getter()
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t sub_1C0FDD80C()
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t static PhotosAsyncAssetImageProvider.forAsset(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultManager];
    v6 = [v5 imageProviderForAsset_];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

id PhotosAsyncAssetImageProvider.requestImage(configuration:targetPixelSize:resultHandler:)(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, double a4, double a5)
{
  v8 = *v5;
  if (!*v5)
  {
    sub_1C0FDE130();
    v17 = swift_allocError();
    LOBYTE(v28) = 1;
    *aBlock = v17;
    v35 = 1;
    a2(aBlock);

    return 0;
  }

  v9 = *a1;
  if (!*a1)
  {
    sub_1C0FDE184();
    v18 = swift_allocError();
    *v19 = 0;
    *&aBlock[8] = v28;
    *&aBlock[24] = v29;
    v33 = v30;
    *aBlock = v18;
    v34 = v31;
    v35 = 1;
    swift_unknownObjectRetain();
    a2(aBlock);

    swift_unknownObjectRelease();
    return 0;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  *aBlock = *(a1 + 24);
  *&aBlock[16] = v13;
  aBlock[32] = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  [v12 normalizedCropRect];
  sub_1C0FDD41C(v9, aBlock, &v28, v15, a4, a5);
  if (v30)
  {
    v16 = v12;
  }

  else
  {
    v21 = v29;
    v22 = v28;
    [v12 copy];
    sub_1C12667F0();
    swift_unknownObjectRelease();
    sub_1C0FDE8F8(0, &qword_1EDE7B640);
    swift_dynamicCast();
    v16 = v27;
    [v27 setNormalizedCropRect_];
    [v27 setResizeMode_];
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  *&aBlock[32] = sub_1C0FDE1D8;
  *&v33 = v23;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_1C0FDDFE8;
  *&aBlock[24] = &block_descriptor_0;
  v24 = _Block_copy(aBlock);
  v25 = v16;

  v20 = [v8 requestImageForAsset:v9 targetSize:0 contentMode:v25 options:v24 resultHandler:{a4, a5}];
  _Block_release(v24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v20;
}

void sub_1C0FDDC24(void *a1, uint64_t a2, void (*a3)(id *))
{
  if (!a1)
  {
    if (a2)
    {
      v30 = sub_1C1265EA0();
      v31 = v10;
      sub_1C12668E0();
      sub_1C104018C(__dst, a2, v29);
      sub_1C0FD1A08(__dst);
      if (*(&v29[1] + 1))
      {
        if (swift_dynamicCast())
        {
          sub_1C0FDE130();
          v11 = swift_allocError();
LABEL_20:
          LOBYTE(v29[0]) = 1;
          __dst[0] = v11;
          v33 = 1;
          a3(__dst);

          return;
        }

LABEL_19:
        sub_1C0FDE184();
        v11 = swift_allocError();
        *v26 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      memset(v29, 0, 32);
    }

    sub_1C0F9E21C(v29, &qword_1EBE90620);
    goto LABEL_19;
  }

  if (!a2)
  {
    memset(v29, 0, 32);
    v12 = a1;
    goto LABEL_12;
  }

  v30 = sub_1C1265EA0();
  v31 = v6;
  v7 = a1;
  sub_1C12668E0();
  sub_1C104018C(__dst, a2, v29);
  sub_1C0FD1A08(__dst);
  if (!*(&v29[1] + 1))
  {
LABEL_12:
    sub_1C0F9E21C(v29, &qword_1EBE90620);
    goto LABEL_13;
  }

  sub_1C0FDE8F8(0, &unk_1EDE7B5D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v9 = 2;
    goto LABEL_14;
  }

  v8 = __dst[0];
  if (![__dst[0] BOOLValue])
  {
    v30 = sub_1C1265EA0();
    v31 = v27;
    sub_1C12668E0();
    sub_1C104018C(__dst, a2, v29);
    sub_1C0FD1A08(__dst);
    if (*(&v29[1] + 1))
    {
      if (swift_dynamicCast())
      {
        v28 = __dst[0];
        v9 = [__dst[0] BOOLValue];

        goto LABEL_14;
      }
    }

    else
    {

      sub_1C0F9E21C(v29, &qword_1EBE90620);
    }

    v9 = 0;
    goto LABEL_14;
  }

  v9 = 1;
LABEL_14:
  [a1 px_pixelSize];
  v14 = v13;
  v16 = v15;
  sub_1C1266560();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = a2;
  if (!a2)
  {
    v25 = sub_1C1265CE0();
  }

  *&v29[0] = a1;
  *(&v29[0] + 1) = v14;
  *&v29[1] = v16;
  *(&v29[1] + 1) = v18;
  *&v29[2] = v20;
  *(&v29[2] + 1) = v22;
  *&v29[3] = v24;
  BYTE8(v29[3]) = v9;
  *&v29[4] = v25;
  memcpy(__dst, v29, sizeof(__dst));
  LOBYTE(v30) = 0;
  v33 = 0;

  a3(__dst);
  sub_1C0F9E21C(v29, &qword_1EBE90628);
}

uint64_t sub_1C0FDDFE8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1C1265CD0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

Swift::Void __swiftcall PhotosAsyncAssetImageProvider.cancelImageRequest(_:)(Swift::Int a1)
{
  if (*v1)
  {
    [*v1 cancelImageRequest_];
  }
}

id sub_1C0FDE0C4@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  result = PhotosAsyncAssetImageProvider.requestImage(configuration:targetPixelSize:resultHandler:)(a1, a2, a3, a5, a6);
  *a4 = result;
  return result;
}

unint64_t sub_1C0FDE130()
{
  result = qword_1EDE79D10;
  if (!qword_1EDE79D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79D10);
  }

  return result;
}

unint64_t sub_1C0FDE184()
{
  result = qword_1EDE82358;
  if (!qword_1EDE82358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82358);
  }

  return result;
}

unint64_t sub_1C0FDE1E8(uint64_t a1)
{
  result = sub_1C0FDE210();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0FDE210()
{
  result = qword_1EDE7FE08;
  if (!qword_1EDE7FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7FE08);
  }

  return result;
}

unint64_t sub_1C0FDE268()
{
  result = qword_1EBE90610;
  if (!qword_1EBE90610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90610);
  }

  return result;
}

unint64_t sub_1C0FDE2C0()
{
  result = qword_1EDE7FDF8;
  if (!qword_1EDE7FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7FDF8);
  }

  return result;
}

unint64_t sub_1C0FDE314(uint64_t a1)
{
  result = sub_1C0FDE33C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0FDE33C()
{
  result = qword_1EDE80900;
  if (!qword_1EDE80900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80900);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A28AsyncAssetImageConfigurationV8CropKindO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C0FDE3C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C0FDE408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0FDE47C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FDE4BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C0FDE504(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1C0FDE53C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C0FDE590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosAsyncAssetImageProvider.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PhotosAsyncAssetImageProvider.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C0FDE6F0()
{
  result = qword_1EDE81100;
  if (!qword_1EDE81100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81100);
  }

  return result;
}

uint64_t sub_1C0FDE74C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 104);
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

uint64_t sub_1C0FDE7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0FDE820(uint64_t a1)
{
  result = sub_1C0FDE848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0FDE848()
{
  result = qword_1EDE81110[0];
  if (!qword_1EDE81110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE81110);
  }

  return result;
}

uint64_t sub_1C0FDE8F8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void PhotosMockSocialGroup.__allocating_init(title:selectionIdentifier:keyAsset:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_7();
  swift_allocObject();
  PhotosMockSocialGroup.init(title:selectionIdentifier:keyAsset:isContentPrivacyEnabled:)();
  OUTLINED_FUNCTION_18_4();
}

void PhotosMockSocialGroup.init(title:selectionIdentifier:keyAsset:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_7();
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 80) = 1;
  sub_1C1261F60();

  *(v1 + 32) = v6;
  *(v1 + 40) = v5;
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  v7 = *(v1 + 48);
  v8 = v2;

  *(v1 + 48) = v2;

  *(v1 + 56) = 0xD000000000000016;
  *(v1 + 64) = 0x80000001C1269500;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 81) = v0;
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDEA4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v5, v6, v7, v8))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_5_6();
    *(v10 - 16) = a2;
    OUTLINED_FUNCTION_16_6();
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }
}

uint64_t sub_1C0FDEB00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = a2;
    OUTLINED_FUNCTION_16_6();
  }
}

void sub_1C0FDEBC4(void *a1)
{
  OUTLINED_FUNCTION_9_5();
  v3 = *(v1 + 48);
  v4 = v3;
  LOBYTE(v3) = sub_1C0FDFE74(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_16_6();
  }

  else
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = a1;
  }
}

uint64_t sub_1C0FDEC94(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v5, v6, v7, v8))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_5_6();
    *(v10 - 16) = a2;
    OUTLINED_FUNCTION_16_6();
  }

  else
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }
}

uint64_t sub_1C0FDED48(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_5();
  if ((*(v2 + 80) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 72) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 72) = a1;
    *(v2 + 80) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_16_6();
}

uint64_t sub_1C0FDEE10(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 81) == v2)
  {
    *(v1 + 81) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_16_6();
  }

  return result;
}

uint64_t sub_1C0FDEF0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FDEF78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FDEF38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C0FDEB00(v1, v2);
}

uint64_t sub_1C0FDEF78()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  sub_1C0FE01A0(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1C0FDEFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void sub_1C0FDF068()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v4 = sub_1C0FE01A0(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDEEC4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDF164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FDF1A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FDF1A8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  sub_1C0FE01A0(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_1C0FDF22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void sub_1C0FDF298()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v4 = sub_1C0FE01A0(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

void *sub_1C0FDF394@<X0>(void *a1@<X8>)
{
  result = sub_1C0FDF3F0();
  *a1 = result;
  return result;
}

void sub_1C0FDF3C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C0FDEBC4(v1);
}

void *sub_1C0FDF3F0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  sub_1C0FE01A0(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v2 = *(v0 + 48);
  v3 = v2;
  return v2;
}

void sub_1C0FDF46C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

void sub_1C0FDF4CC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v4 = sub_1C0FE01A0(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDF584()
{
  v0 = sub_1C0FDF3F0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C12A3AB0;
  *(result + 32) = v1;
  return result;
}

uint64_t sub_1C0FDF62C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FDF6B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FDF670(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C0FDF6B8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  sub_1C0FE01A0(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_1C0FDF73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
}

void sub_1C0FDF7A8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v4 = sub_1C0FE01A0(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF5E8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDF8A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C0FDF90C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C0FDF90C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  sub_1C0FE01A0(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 72);
}

uint64_t sub_1C0FDF984(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3 & 1;
  return result;
}

void sub_1C0FDF9E4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v4 = sub_1C0FE01A0(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF860();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDFAE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0FDFB38();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FDFB38()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  sub_1C0FE01A0(v1);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 81);
}

uint64_t sub_1C0FDFBAC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 81) = a2;
  return result;
}

void sub_1C0FDFC00()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v4 = sub_1C0FE01A0(v3);
  OUTLINED_FUNCTION_1_6(v4);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDFA9C();
  OUTLINED_FUNCTION_18_4();
}

void sub_1C0FDFCB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C1261F40();

  free(v1);
}

uint64_t sub_1C0FDFD4C()
{
  OUTLINED_FUNCTION_0_5();
  sub_1C0FE01A0(v0);
  return sub_1C1261F20();
}

BOOL sub_1C0FDFDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1C1266D50();
    }
  }

  return (v5 & 1) == 0;
}

BOOL sub_1C0FDFE74(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1C0FE0644();
    v5 = a1;
    v6 = a2;
    v2 = sub_1C12666B0();
  }

  return (v2 & 1) == 0;
}

uint64_t type metadata accessor for PhotosMockSocialGroup()
{
  result = qword_1EBE90658;
  if (!qword_1EBE90658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockSocialGroup.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockSocialGroup___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosMockSocialGroup.__deallocating_deinit()
{
  PhotosMockSocialGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C0FE0090(uint64_t a1)
{
  result = sub_1C0FE01A0(&qword_1EBE90640);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FE01A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosMockSocialGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0FE01F8()
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

unint64_t sub_1C0FE0644()
{
  result = qword_1EBE90668;
  if (!qword_1EBE90668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE90668);
  }

  return result;
}

uint64_t PhotosMockErrorLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C0FDB9AC();

  sub_1C1265390();
  v2 = sub_1C1265120();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90670);
  *(a1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_1C0FE0774(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

unint64_t sub_1C0FE07C4()
{
  result = qword_1EBE90678;
  if (!qword_1EBE90678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90670);
    sub_1C0FDB6D4(&qword_1EDE7B7F8, &qword_1EBE90680);
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90678);
  }

  return result;
}

uint64_t PhotosCollectionTitleText.init(model:alignment:spec:containerWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v23 = a3[3];
  v24 = *a3;
  v25 = a3[2];
  v26 = a3[1];
  v11 = *(a3 + 8);
  v12 = *(a3 + 72);
  v13 = *(a3 + 10);
  v14 = *(a3 + 11);
  v15 = *(a3 + 96);
  v16 = *(a3 + 13);
  sub_1C0FDB0A8(a1, a6);
  *(a6 + 40) = a2;
  if (v26 >> 1 != 0xFFFFFFFF || *(&v25 + 1) >= 2uLL)
  {
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v20 = v25;
    v19 = v26;
    v22 = v23;
    v21 = v24;
  }

  else
  {
    if (qword_1EDE7A398 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1EDE9B5D8, sizeof(__dst));
    sub_1C0FDB260(__dst, v27);
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v11 = *&__dst[4];
    v12 = BYTE8(__dst[4]);
    v14 = *(&__dst[5] + 1);
    v13 = *&__dst[5];
    v15 = __dst[6];
    v16 = *(&__dst[6] + 1);
    v19 = __dst[1];
    v21 = __dst[0];
    v22 = __dst[3];
    v20 = __dst[2];
  }

  *(a6 + 48) = v21;
  *(a6 + 64) = v19;
  *(a6 + 80) = v20;
  *(a6 + 96) = v22;
  *(a6 + 112) = v11;
  *(a6 + 120) = v12 & 1;
  *(a6 + 128) = v13;
  *(a6 + 136) = v14;
  *(a6 + 144) = v15 & 1;
  *(a6 + 152) = v16;
  *(a6 + 160) = a4;
  *(a6 + 168) = a5 & 1;
  return result;
}

uint64_t static PhotosCollectionTitleText.textualRepresentation(model:)(void *a1)
{
  v2 = sub_1C1265E50();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1265E30();
  MEMORY[0x1EEE9AC00](v5 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = sub_1C12621B0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1C12621C0();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    OUTLINED_FUNCTION_0_6();
    sub_1C0FA2700();
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12 >= *(v10 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_6();
      sub_1C0FA2700();
      v11 = v27;
    }

    *(v11 + 16) = v12 + 1;
    v13 = v11 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1C1262180();
  if ((v15 & 1) == 0)
  {
    v16 = v14;
    v17 = (v32 + 8);
    sub_1C1265E20();
    OUTLINED_FUNCTION_28_0();
    v33 = v16;
    OUTLINED_FUNCTION_27();
    sub_1C1265E10();
    sub_1C1265E40();
    v18 = static String.photosSwiftUICoreLocalized(_:)(v4);
    v20 = v19;
    (*v17)(v4, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_6();
      sub_1C0FA2700();
      v11 = v28;
    }

    v21 = *(v11 + 16);
    if (v21 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_6();
      sub_1C0FA2700();
      v11 = v29;
    }

    *(v11 + 16) = v21 + 1;
    v22 = v11 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    goto LABEL_14;
  }

  if (*(v11 + 16))
  {
LABEL_14:
    v33 = 32;
    v34 = 0xE100000000000000;
    v35 = v11;
    sub_1C1265DF0();
    v23 = static String.photosSwiftUICoreLocalized(_:)(v4);
    v25 = v24;
    (*(v32 + 8))(v4, v2);
    MEMORY[0x1C68EF850](v23, v25);

    MEMORY[0x1C68EF850](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0);
    sub_1C0FDB6D4(&qword_1EDE7B700, &qword_1EBE906A0);
    sub_1C1265D70();

    return v31;
  }

  return v31;
}

uint64_t PhotosCollectionTitleText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  *v5 = *(v1 + 40);
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906B0);
  sub_1C0FE100C(v1, &v5[*(v6 + 44)]);
  v7 = sub_1C1264480();
  MEMORY[0x1C68F0CE0]();
  sub_1C12628A0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1C0FE4040(v5, a1, &qword_1EBE906A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906B8);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_1C0FE100C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90828);
  v3 = MEMORY[0x1EEE9AC00](v30);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90830);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v13 = sub_1C12621B0();
  v15 = v13;
  if (v14)
  {
    v15 = sub_1C0FE2768(v13, v14);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  memcpy(v34, (a1 + 48), sizeof(v34));
  v18 = *(a1 + 40);
  v19 = *(a1 + 160);
  v20 = *(a1 + 168);
  memcpy(&v33[2], (a1 + 48), 0x70uLL);
  __dst[152] = v20;
  v33[0] = v15;
  v33[1] = v17;
  v33[16] = v18;
  v33[17] = v19;
  LOBYTE(v33[18]) = v20;
  sub_1C0FDB260(v34, __dst);
  sub_1C0FE56A0();
  sub_1C1264DF0();
  memcpy(__dst, v33, 0x91uLL);
  sub_1C0FE56F4(__dst);
  *v6 = sub_1C12638E0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_1C0FE139C(a1, (v6 + 24));
  v21 = &v6[*(v30 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v23 = *MEMORY[0x1E69816C8];
  v24 = sub_1C1265340();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  sub_1C0FE5654(v12, v10, &qword_1EBE90830);
  v25 = v31;
  sub_1C0FE5654(v6, v31, &qword_1EBE90828);
  v26 = v32;
  sub_1C0FE5654(v10, v32, &qword_1EBE90830);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90838);
  sub_1C0FE5654(v25, v26 + *(v27 + 48), &qword_1EBE90828);
  sub_1C0FD1A5C(v6, &qword_1EBE90828);
  sub_1C0FD1A5C(v12, &qword_1EBE90830);
  sub_1C0FD1A5C(v25, &qword_1EBE90828);
  return sub_1C0FD1A5C(v10, &qword_1EBE90830);
}

uint64_t sub_1C0FE139C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C0FDB0A8(a1, v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1C12621B0();
  v6 = v4;
  if (v5)
  {
    v6 = sub_1C0FE2768(v4, v5);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1C12621C0();
  v11 = v9;
  if (v10)
  {
    v11 = sub_1C0FE2768(v9, v10);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  memcpy(__dst, a1 + 6, sizeof(__dst));
  sub_1C0FDBA58(v20, __src);
  __src[5] = v6;
  __src[6] = v8;
  __src[7] = v11;
  __src[8] = v13;
  memcpy(&__src[9], __dst, 0x70uLL);
  memcpy(v22, __src, sizeof(v22));
  sub_1C0FDB0A8(a1, v18);
  sub_1C0FE5724(v22, v17);
  sub_1C0FE575C(v18, v16);
  sub_1C0FE5724(v17, a2);
  sub_1C0FE575C(v16, a2 + 184);
  sub_1C0FDB260(__dst, &v15);
  sub_1C0FE5794(v18);
  sub_1C0FE57C4(v22);
  sub_1C0FE5794(v16);
  return sub_1C0FE57C4(v17);
}

uint64_t sub_1C0FE1538@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90720);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v68 - v3;
  v5 = type metadata accessor for PhotosDynamicText();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90728);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90730);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90738);
  v82 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90740);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90748);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v68 - v18;
  v19 = *(v1 + 8);
  if (v19)
  {
    v75 = v12;
    v71 = v4;
    v72 = v2;
    v73 = v5;
    v74 = v10;
    v80 = v17;
    v81 = v8;
    v20 = *v1;
    v22 = *(v1 + 16);
    v21 = *(v1 + 24);
    v23 = *(v1 + 32);
    v24 = *(v1 + 40);
    v25 = *(v1 + 48);
    v26 = *(v1 + 56);
    v27 = *(v1 + 64);
    v28 = *(v1 + 128);
    v78 = v26;
    v79 = v27;
    v76 = v28;
    v77 = v25;
    if (v26 < 0)
    {
      v83 = v20;
      v49 = *(v1 + 136);
      v50 = *(v1 + 144);
      sub_1C0FE4F88(v22, v21, v23, v24, v25, v26);
      v69 = v23;
      v68 = v24;
      if (v50)
      {
        if (qword_1EBE8FC00 != -1)
        {
          swift_once();
        }

        v51 = sub_1C1262720();
        __swift_project_value_buffer(v51, qword_1EBE90688);
        v52 = sub_1C12626F0();
        v53 = sub_1C1266410();
        v54 = os_log_type_enabled(v52, v53);
        v55 = v74;
        if (v54)
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v89 = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_1C0FA0E80(0xD00000000000003CLL, 0x80000001C1269660, &v89);
          _os_log_impl(&dword_1C0F96000, v52, v53, "%s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v57);
          MEMORY[0x1C68F1630](v57, -1, -1);
          MEMORY[0x1C68F1630](v56, -1, -1);
        }

        swift_storeEnumTagMultiPayload();
        sub_1C0FE4FCC();
        sub_1C1263C20();
        v58 = v21;
      }

      else
      {
        v62 = v24;

        v58 = v21;
        sub_1C0FE4F88(v22, v21, v23, v62, v25, v26);
        sub_1C1263AB0();
        if (sub_1C1263A90())
        {
          v63 = 0;
          v55 = v74;
          v64 = v71;
        }

        else
        {
          sub_1C1263AA0();
          v65 = sub_1C1263A90();
          v63 = 1;
          v55 = v74;
          v64 = v71;
          if ((v65 & 1) == 0)
          {
            sub_1C1263AC0();
            if (sub_1C1263A90())
            {
              v63 = 2;
            }

            else
            {
              v63 = 1;
            }
          }
        }

        v66 = *(v73 + 32);
        *&v7[v66] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
        swift_storeEnumTagMultiPayload();
        *v7 = v83;
        *(v7 + 1) = v19;
        *(v7 + 2) = v49;
        *(v7 + 3) = v22;
        *(v7 + 4) = v58;
        v7[40] = v63;
        sub_1C0FE5594(v7, v64);
        swift_storeEnumTagMultiPayload();
        sub_1C0FE4FCC();
        sub_1C1263C20();
        sub_1C0FE55F8(v7);
      }

      sub_1C0FE5654(v55, v87, &qword_1EBE90728);
      swift_storeEnumTagMultiPayload();
      sub_1C0FE5024();
      sub_1C0FE54C8();
      v46 = v85;
      sub_1C1263C20();
      sub_1C0FE5554(v22, v58, v69, v68, v77, v78);
      sub_1C0FD1A5C(v55, &qword_1EBE90728);
    }

    else
    {
      v89 = v20;
      v90 = v19;
      v70 = v21;

      sub_1C0FE4F88(v22, v21, v23, v24, v25, v26);
      sub_1C0FDB9AC();
      v29 = sub_1C12648F0();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v73 = v34;
      KeyPath = swift_getKeyPath();
      v89 = v29;
      v90 = v31;
      v91 = v33 & 1;
      v92 = v35;
      v93 = KeyPath;
      v94 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90770);
      sub_1C0FE5410();
      sub_1C1264990();
      v74 = v22;

      v37 = v83;
      sub_1C0FE2B68(v24);
      sub_1C0FDB8E8(v29, v31, v33 & 1);

      (*(v82 + 8))(v14, v75);
      v38 = swift_getKeyPath();
      v39 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90758) + 36);
      v41 = v77;
      v40 = v78;
      *v39 = v38;
      *(v39 + 8) = v41;
      *(v39 + 16) = v40 & 1;
      v42 = swift_getKeyPath();
      v43 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90750) + 36));
      v44 = v79;
      *v43 = v42;
      v43[1] = v44;
      sub_1C1263AB0();
      if (sub_1C1263A90())
      {
        v45 = 0;
        v46 = v85;
      }

      else
      {
        sub_1C1263AA0();
        v59 = sub_1C1263A90();
        v45 = 1;
        v46 = v85;
        if ((v59 & 1) == 0)
        {
          sub_1C1263AC0();
          if (sub_1C1263A90())
          {
            v45 = 2;
          }

          else
          {
            v45 = 1;
          }
        }
      }

      v60 = swift_getKeyPath();
      v61 = v37 + *(v84 + 36);
      *v61 = v60;
      *(v61 + 8) = v45;
      sub_1C0FE5654(v37, v87, &qword_1EBE90740);
      swift_storeEnumTagMultiPayload();
      sub_1C0FE5024();
      sub_1C0FE54C8();
      sub_1C1263C20();

      sub_1C0FD1A5C(v37, &qword_1EBE90740);
    }

    v67 = v88;
    sub_1C0FA8E08(v46, v88);
    return __swift_storeEnumTagSinglePayload(v67, 0, 1, v80);
  }

  else
  {
    v47 = v88;

    return __swift_storeEnumTagSinglePayload(v47, 1, 1, v17);
  }
}

uint64_t sub_1C0FE1EEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906D0);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v46[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906D8);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v46[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906E8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46[-v11];
  v13 = sub_1C0FE2344();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_1C0FE23E8(v13, v14);
  v21 = v20;
  v48 = v23;
  v49 = v22;
  v47 = v24;
  if (v15 == 1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906F0);
    v26 = v9;
    v27 = 1;
  }

  else
  {
    v55 = v13;
    v56 = v15;
    v57 = v17;
    v58 = v19;
    v28 = v20;
    sub_1C0FE4E40();
    sub_1C1264DF0();
    v21 = v28;

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906F0);
    v26 = v9;
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
  v29 = &v12[*(v10 + 52)];
  v30 = v48;
  v31 = v49;
  *v29 = v21;
  *(v29 + 1) = v31;
  *(v29 + 2) = v30;
  v29[24] = v47;
  v32 = *(v10 + 56);
  *&v12[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  swift_storeEnumTagMultiPayload();
  sub_1C0FE4040(v9, v12, &qword_1EBE906E0);
  v33 = *(v2 + 128);
  v34 = *(v2 + 152);
  v49 = *(v2 + 160);
  LODWORD(v48) = *(v2 + 168);
  v35 = *(v2 + 176);
  KeyPath = swift_getKeyPath();
  sub_1C0FE5654(v12, v4, &qword_1EBE906E8);
  v37 = &v4[*(v53 + 36)];
  *v37 = KeyPath;
  v37[1] = v33;
  sub_1C0FE4D5C();

  v38 = v50;
  sub_1C1264990();
  sub_1C0FD1A5C(v4, &qword_1EBE906D0);
  v39 = v54;
  sub_1C0FE2E1C(v34);
  (*(v51 + 8))(v38, v52);
  sub_1C0FD1A5C(v12, &qword_1EBE906E8);
  v40 = swift_getKeyPath();
  v41 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906F8) + 36);
  v42 = v49;
  *v41 = v40;
  *(v41 + 8) = v42;
  *(v41 + 16) = v48;
  v43 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90700);
  v45 = (v39 + *(result + 36));
  *v45 = v43;
  v45[1] = v35;
  return result;
}

uint64_t sub_1C0FE2344()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  sub_1C1262190();
  if (!v2 && (sub_1C0FE24A4() & 1) == 0)
  {

    return 0;
  }

  return v1;
}

uint64_t sub_1C0FE23E8(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = sub_1C1262180();
  if (v5)
  {
    return 0;
  }

  v6 = v4;
  if (a2 == 1)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_1C1262190();
  }

  return v6;
}

uint64_t sub_1C0FE24A4()
{
  if (v0[6] || v0[8])
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0, v0[3]);
    sub_1C1262190();
    if (v1)
    {

      __swift_project_boxed_opaque_existential_1(v0, v0[3]);
      sub_1C1262180();
    }
  }

  return v1 & 1;
}

uint64_t sub_1C0FE2538@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906C0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1C1262260();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C12621A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C0FD1A5C(v8, &qword_1EBE906C8);
    v13 = 1;
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v12, v8, v9);
    v14(v5, v12, v9);
    v15 = &v5[*(v3 + 36)];
    *v15 = 0;
    *(v15 + 1) = 0;
    sub_1C0FE4040(v5, a1, &qword_1EBE906C0);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v3);
}

uint64_t sub_1C0FE2768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261970();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 == 41154 && a2 == 0xA200000000000000;
  if (v8 || (sub_1C1266D50() & 1) != 0)
  {
  }

  else
  {
    v13[0] = a1;
    v13[1] = a2;
    sub_1C1261960();
    sub_1C0FDB9AC();
    v9 = sub_1C12667B0();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    a1 = sub_1C0FE3760(v9, v11);
  }

  return a1;
}

uint64_t sub_1C0FE28C8()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE90688);
  __swift_project_value_buffer(v0, qword_1EBE90688);
  return sub_1C12626E0();
}

double sub_1C0FE292C()
{
  v0 = sub_1C1264510();
  sub_1C1264620();
  qword_1EDE9B5D8 = sub_1C12595B8;
  unk_1EDE9B5E0 = 0u;
  unk_1EDE9B5F0 = 0u;
  unk_1EDE9B600 = xmmword_1C12A3E40;
  qword_1EDE9B610 = v0;
  qword_1EDE9B618 = v1;
  byte_1EDE9B620 = 0;
  result = 0.0;
  xmmword_1EDE9B628 = xmmword_1C12A3E50;
  byte_1EDE9B638 = 0;
  qword_1EDE9B640 = 0x3FF0000000000000;
  return result;
}

__n128 sub_1C0FE29AC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1C12638E0();
  sub_1C0FE2A38(a1, a2, v10);
  v7 = v11;
  result = v10[0];
  v9 = v10[1];
  *a3 = v6;
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = result;
  *(a3 + 40) = v9;
  *(a3 + 56) = v7;
  return result;
}

uint64_t sub_1C0FE2A38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v3 = a2;
  if (a2)
  {

    v3 = sub_1C12652F0();
  }

  if (a1)
  {
    sub_1C0FDB9AC();

    a1 = sub_1C12648F0();
    v7 = v6;
    v9 = v8;
    v11 = v10 & 1;
    sub_1C0FDB850(a1, v6, v10 & 1);
  }

  else
  {
    v7 = 0;
    v11 = 0;
    v9 = 0;
  }

  sub_1C0FDB860(a1, v7, v11, v9);

  sub_1C0FDB8A4(a1, v7, v11, v9);
  *a3 = v3;
  a3[1] = a1;
  a3[2] = v7;
  a3[3] = v11;
  a3[4] = v9;
  sub_1C0FDB8A4(a1, v7, v11, v9);
}

uint64_t sub_1C0FE2B68(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90780);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90768);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90738);
  if (a1)
  {
    (*(*(v10 - 8) + 16))(v9, v2, v10);
    *&v9[*(v7 + 36)] = a1;
    sub_1C0FE5654(v9, v6, &qword_1EBE90768);
    swift_storeEnumTagMultiPayload();
    sub_1C0FE531C();

    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770);
    v12 = sub_1C0FE5410();
    v16 = v11;
    v17 = v12;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v9, &qword_1EBE90768);
  }

  else
  {
    (*(*(v10 - 8) + 16))(v6, v2, v10);
    swift_storeEnumTagMultiPayload();
    sub_1C0FE531C();
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770);
    v15 = sub_1C0FE5410();
    v16 = v14;
    v17 = v15;
    swift_getOpaqueTypeConformance2();
    return sub_1C1263C20();
  }
}

uint64_t sub_1C0FE2E1C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90710);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90718);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906D8);
  if (a1)
  {
    (*(*(v10 - 8) + 16))(v9, v2, v10);
    *&v9[*(v7 + 36)] = a1;
    sub_1C0FE5654(v9, v6, &qword_1EBE90718);
    swift_storeEnumTagMultiPayload();
    sub_1C0FE4E94();

    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0);
    v12 = sub_1C0FE4D5C();
    v16 = v11;
    v17 = v12;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v9, &qword_1EBE90718);
  }

  else
  {
    (*(*(v10 - 8) + 16))(v6, v2, v10);
    swift_storeEnumTagMultiPayload();
    sub_1C0FE4E94();
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0);
    v15 = sub_1C0FE4D5C();
    v16 = v14;
    v17 = v15;
    swift_getOpaqueTypeConformance2();
    return sub_1C1263C20();
  }
}

uint64_t sub_1C0FE30D0@<X0>(void *a1@<X8>)
{
  result = sub_1C1263680();
  *a1 = v3;
  return result;
}

uint64_t sub_1C0FE3124(char a1)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](a1 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C0FE3174()
{
  v1 = *v0;
  sub_1C1266E90();
  sub_1C0FCF0B8(v3, v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C0FE31B8@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X8>)
{
  *a3 = sub_1C12638E0();
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90870);
  return sub_1C0FE3238(a1, a2 & 1, a3 + *(v6 + 44));
}

uint64_t sub_1C0FE3238@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v25[1] = a2;
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90878);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90880);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - v14;

  v27 = sub_1C1265320();
  sub_1C1264DF0();

  v27 = sub_1C0FE3558(a1);
  v28 = v16;
  sub_1C0FDB9AC();
  v17 = sub_1C12648F0();
  v19 = v18;
  v27 = v17;
  v28 = v18;
  LOBYTE(a1) = v20 & 1;
  v29 = v20 & 1;
  v30 = v21;
  sub_1C1264DF0();
  sub_1C0FDB8E8(v17, v19, a1);

  sub_1C0FE5654(v15, v13, &qword_1EBE90880);
  sub_1C0FE5654(v9, v7, &qword_1EBE90878);
  v22 = v26;
  sub_1C0FE5654(v13, v26, &qword_1EBE90880);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90888);
  sub_1C0FE5654(v7, v22 + *(v23 + 48), &qword_1EBE90878);
  sub_1C0FD1A5C(v9, &qword_1EBE90878);
  sub_1C0FD1A5C(v15, &qword_1EBE90880);
  sub_1C0FD1A5C(v7, &qword_1EBE90878);
  return sub_1C0FD1A5C(v13, &qword_1EBE90880);
}

uint64_t sub_1C0FE3558(uint64_t a1)
{
  v2 = sub_1C1265E50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1265E30();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C1265E20();
  sub_1C1265E10();
  v9[1] = a1;
  sub_1C1265E00();
  sub_1C1265E10();
  sub_1C1265E40();
  v7 = static String.photosSwiftUICoreLocalized(_:)(v5);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1C0FE3760(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

void sub_1C0FE37B4()
{
  v2 = OUTLINED_FUNCTION_30_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_15_8();
    sub_1C0FE4404();
    *v1 = v3;
  }
}

void sub_1C0FE37F0()
{
  v2 = OUTLINED_FUNCTION_30_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_15_8();
    sub_1C0FE48B0();
    *v1 = v3;
  }
}

void sub_1C0FE3848()
{
  v2 = OUTLINED_FUNCTION_30_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_15_8();
    sub_1C0FE49B0(v3, v4, v5, v6, v7, v8, v9);
    *v1 = v10;
  }
}

void sub_1C0FE3898()
{
  OUTLINED_FUNCTION_8_7();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C0FE4404();
    *v0 = v4;
  }
}

void sub_1C0FE38CC()
{
  OUTLINED_FUNCTION_8_7();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_9_8();
    sub_1C0FE48B0();
    *v0 = v4;
  }
}

void sub_1C0FE391C()
{
  OUTLINED_FUNCTION_8_7();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_4_9();
    sub_1C0FE49B0(v4, v5, 1, v6, v7, v8, v9);
    *v0 = v10;
  }
}

uint64_t sub_1C0FE3964(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = result + 1;
  v5 = v4 + 16 * result;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

uint64_t sub_1C0FE39DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_1C0FE3A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FE3A94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C0FE3ADC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C0FE3B58()
{
  result = qword_1EDE772F8;
  if (!qword_1EDE772F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906B8);
    sub_1C0FDB6D4(&qword_1EDE76BF8, &qword_1EBE906A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772F8);
  }

  return result;
}

uint64_t sub_1C0FE3C10(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C0FE3C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C0FE3CD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C0FE3D18(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FE3D88(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) & 1 | (a2 << 63);
  *(result + 16) &= 1uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_1C0FE3DB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C0FE3DF4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C0FE3E54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1C0FE3E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FE3F18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 145))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C0FE3F60(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 144) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 145) = 1;
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
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 2 * -a2;
      result = 0.0;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FE4040(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_16(a1, a2, a3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return v3;
}

void sub_1C0FE40BC()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907B8);
      v6 = OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_1_7(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_7_8();
        sub_1C1109EC4(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0);
    OUTLINED_FUNCTION_11_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE41A4()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907F0);
      v6 = OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_1_7(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_7_8();
        sub_1C110215C(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE4264()
{
  OUTLINED_FUNCTION_22_3();
  if (v3)
  {
    OUTLINED_FUNCTION_21_0();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_6();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C0FE4C60(*(v0 + 16), v4, &qword_1EBE907C8, &unk_1C12A4570, MEMORY[0x1E69E8450]);
  v7 = *(sub_1C1262610() - 8);
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_23_0((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_1C1102184(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
  }
}

void sub_1C0FE4344()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90808);
      v6 = OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_1_7(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_7_8();
        sub_1C1109EC4(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90810);
    OUTLINED_FUNCTION_11_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE4404()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907E8);
      v6 = OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_1_7(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_7_8();
        sub_1C1109EC4(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078);
    OUTLINED_FUNCTION_11_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE44C4()
{
  OUTLINED_FUNCTION_22_3();
  if (v3)
  {
    OUTLINED_FUNCTION_21_0();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_6();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C0FE4C60(*(v0 + 16), v4, &qword_1EBE90790, &unk_1C12A4530, type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem);
  v7 = *(type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem(0) - 8);
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_23_0((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_1C110219C(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
  }
}

void sub_1C0FE45D4()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907A0);
      v6 = OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_1_7(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_7_8();
        sub_1C11021B4(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907A8);
    OUTLINED_FUNCTION_11_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE46E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_31_1(a1, a2, a3, a4, a5);
      v15 = OUTLINED_FUNCTION_24_2();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C0FE47C0()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90868);
      v6 = OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_1_7(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_7_8();
        sub_1C11021DC(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE48B0()
{
  OUTLINED_FUNCTION_25();
  if ((v5 & 1) == 0)
  {
    v8 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v9 == v10)
  {
LABEL_7:
    v11 = *(v0 + 16);
    if (v8 <= v11)
    {
      v12 = *(v0 + 16);
    }

    else
    {
      v12 = v8;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_31_1(v3, v4, v5, v6, v7);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v13[2] = v11;
      v13[3] = 2 * ((v14 - 32) / 40);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v11, v13 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_29();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v9)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C0FE49B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_31_1(a1, a2, a3, a4, a5);
      v15 = OUTLINED_FUNCTION_24_2();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_14_10();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C0FE4A80()
{
  OUTLINED_FUNCTION_22_3();
  if (v3)
  {
    OUTLINED_FUNCTION_21_0();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_6();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C0FE4C60(*(v0 + 16), v4, &qword_1EBE907D8, &unk_1C12A4580, MEMORY[0x1E6980908]);
  v7 = *(sub_1C12642B0() - 8);
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_23_0((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_1C1102224(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
  }
}

void *sub_1C0FE4B88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = OUTLINED_FUNCTION_24_2();
  _swift_stdlib_malloc_size(v5);
  OUTLINED_FUNCTION_14_10();
  v5[2] = a1;
  v5[3] = v6;
  return v5;
}

void *sub_1C0FE4BE8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360);
  v4 = OUTLINED_FUNCTION_24_2();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_1C0FE4C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0FE4D5C()
{
  result = qword_1EDE774A0;
  if (!qword_1EDE774A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0);
    sub_1C0FDB6D4(qword_1EDE79BF8, &qword_1EBE906E8);
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774A0);
  }

  return result;
}

unint64_t sub_1C0FE4E40()
{
  result = qword_1EBE90708;
  if (!qword_1EBE90708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90708);
  }

  return result;
}

unint64_t sub_1C0FE4E94()
{
  result = qword_1EDE773A8;
  if (!qword_1EDE773A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0);
    sub_1C0FE4D5C();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773A8);
  }

  return result;
}

uint64_t sub_1C0FE4F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {

    v6 = vars8;
  }
}

unint64_t sub_1C0FE4FCC()
{
  result = qword_1EDE7B2D0[0];
  if (!qword_1EDE7B2D0[0])
  {
    type metadata accessor for PhotosDynamicText();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7B2D0);
  }

  return result;
}

unint64_t sub_1C0FE5024()
{
  result = qword_1EDE77150;
  if (!qword_1EDE77150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90740);
    sub_1C0FE50DC();
    sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77150);
  }

  return result;
}

unint64_t sub_1C0FE50DC()
{
  result = qword_1EDE77268;
  if (!qword_1EDE77268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90750);
    sub_1C0FE5194();
    sub_1C0FDB6D4(&qword_1EDE7B968, &qword_1EBE90778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77268);
  }

  return result;
}

unint64_t sub_1C0FE5194()
{
  result = qword_1EDE77450;
  if (!qword_1EDE77450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90758);
    sub_1C0FE524C();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77450);
  }

  return result;
}

unint64_t sub_1C0FE524C()
{
  result = qword_1EDE76EC0;
  if (!qword_1EDE76EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90760);
    sub_1C0FE531C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770);
    sub_1C0FE5410();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EC0);
  }

  return result;
}

unint64_t sub_1C0FE531C()
{
  result = qword_1EDE773A0;
  if (!qword_1EDE773A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770);
    sub_1C0FE5410();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773A0);
  }

  return result;
}

unint64_t sub_1C0FE5410()
{
  result = qword_1EDE773B8;
  if (!qword_1EDE773B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770);
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773B8);
  }

  return result;
}

unint64_t sub_1C0FE54C8()
{
  result = qword_1EDE76F10;
  if (!qword_1EDE76F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90728);
    sub_1C0FE4FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F10);
  }

  return result;
}

uint64_t sub_1C0FE5554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {

    v6 = vars8;
  }
}

uint64_t sub_1C0FE5594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDynamicText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0FE55F8(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDynamicText();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0FE5654(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_16(a1, a2, a3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return v3;
}

unint64_t sub_1C0FE56A0()
{
  result = qword_1EDE7A3A0[0];
  if (!qword_1EDE7A3A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7A3A0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C0FE5808(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C0FE585C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C0FE58C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1C0FE5918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0FE597C()
{
  result = qword_1EDE79248;
  if (!qword_1EDE79248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90848);
    sub_1C0FDB6D4(qword_1EDE79250, &qword_1EBE906C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79248);
  }

  return result;
}

unint64_t sub_1C0FE5A2C()
{
  result = qword_1EDE77270;
  if (!qword_1EDE77270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90700);
    sub_1C0FE5AE4();
    sub_1C0FDB6D4(&qword_1EDE7B968, &qword_1EBE90778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77270);
  }

  return result;
}

unint64_t sub_1C0FE5AE4()
{
  result = qword_1EDE77458;
  if (!qword_1EDE77458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906F8);
    sub_1C0FE5B9C();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77458);
  }

  return result;
}

unint64_t sub_1C0FE5B9C()
{
  result = qword_1EDE76EC8;
  if (!qword_1EDE76EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90850);
    sub_1C0FE4E94();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0);
    sub_1C0FE4D5C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EC8);
  }

  return result;
}

unint64_t sub_1C0FE5C6C()
{
  result = qword_1EDE76E68;
  if (!qword_1EDE76E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90858);
    sub_1C0FE5CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E68);
  }

  return result;
}

unint64_t sub_1C0FE5CF0()
{
  result = qword_1EDE76E70;
  if (!qword_1EDE76E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90748);
    sub_1C0FE5024();
    sub_1C0FE54C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetCountView.Variant(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0FE5E94()
{
  result = qword_1EBE908A0;
  if (!qword_1EBE908A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE908A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5);
}

uint64_t sub_1C0FE5F3C()
{
  v1 = v0;
  v2 = sub_1C0FE6A3C();
  if (v2)
  {
    v3 = v2;
    v2();
    sub_1C0FCF004(v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  sub_1C0FCF004(*(v0 + 64));
  sub_1C0FCF004(*(v0 + 80));
  sub_1C0FCF004(*(v0 + 96));
  swift_unknownObjectRelease();
  sub_1C0FCF004(*(v0 + 144));
  swift_weakDestroy();
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosInlinePlayerModel___observationRegistrar;
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t sub_1C0FE600C()
{
  sub_1C0FE5F3C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for PhotosInlinePlayerModel()
{
  result = qword_1EDE81AB8;
  if (!qword_1EDE81AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0FE60B8()
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

uint64_t sub_1C0FE619C(unsigned __int8 *a1)
{
  v1 = *a1;
  result = sub_1C0FE71FC(&v4);
  if (v1 != v4)
  {
    sub_1C0FE62A4(0);
    v3 = v1;
    sub_1C0FE6DC4(&v3);

    return sub_1C0FE7758();
  }

  return result;
}

void sub_1C0FE620C(id a1)
{
  v3 = *(v1 + 56);
  if (a1)
  {
    if (v3)
    {
      sub_1C0FE7B20();
      v4 = v3;
      v5 = a1;
      v6 = sub_1C12666B0();

      if (v6)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  [a1 invalidate];
}

void sub_1C0FE62A4(void *a1)
{
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
  v2 = a1;
  sub_1C0FE620C(v3);
}

void sub_1C0FE62FC(double a1)
{
  LOBYTE(v6[0]) = 3;
  sub_1C0FE619C(v6);
  if (a1 != INFINITY)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_1C0FE7B10;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1C10CB7AC;
    v6[3] = &block_descriptor_1;
    v4 = _Block_copy(v6);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:a1];
    _Block_release(v4);
    sub_1C0FE62A4(v5);
  }
}

uint64_t sub_1C0FE642C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C0FE6484();
  }

  return result;
}

uint64_t sub_1C0FE6484()
{
  sub_1C0FE62A4(0);
  result = sub_1C0FE71FC(&v4);
  if (v4 == 3)
  {
    v3 = 2;
    result = sub_1C0FE619C(&v3);
    v2 = *(v0 + 80);
    if (v2)
    {

      v2(v0);

      return sub_1C0FCF004(v2);
    }
  }

  return result;
}

uint64_t sub_1C0FE652C(uint64_t a1)
{
  v2 = v1;
  result = sub_1C0FE76C0();
  v5 = result;
  if (a1)
  {
    if (result)
    {

      if (v5 == a1)
      {
LABEL_11:
      }
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }
  }

  if (sub_1C0FE76C0())
  {
    sub_1C10CD7F0(v2);
  }

  result = sub_1C0FE7114(v6);
  if (a1)
  {

    sub_1C10CD7D8(v2);

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1C0FE65FC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_1C0FE72E0();
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v5 == a1)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_7:
  swift_unknownObjectRetain();
  v6 = sub_1C0FE6E44();
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = *(a2 + 40);
    swift_unknownObjectRetain();

    v9(sub_1C0FE7B08, v8, ObjectType, a2);
    swift_unknownObjectRelease();
  }

  sub_1C0FE7758(v6);
LABEL_10:

  return swift_unknownObjectRelease();
}

uint64_t sub_1C0FE673C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 80);
    if (v2)
    {

      v2(v1);
      sub_1C0FCF004(v2);
    }
  }

  return result;
}