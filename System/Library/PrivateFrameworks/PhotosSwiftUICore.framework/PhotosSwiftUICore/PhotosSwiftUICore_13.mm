uint64_t View.photosMemoryCellTextOverlay<A>(_:_:)()
{
  sub_1C1265990();
  type metadata accessor for PhotosMemoryCellTextOverlay();
  OUTLINED_FUNCTION_18_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_3();
  return sub_1C1264F60();
}

uint64_t sub_1C10E7494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosMemoryCellTextOverlay();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  (*(v7 + 16))(v9, a1, a3, v15);

  sub_1C10E76A8(v9, a2, a3, v13);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v13, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_1C0FDBA4C(v17, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t sub_1C10E76A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  *(a4 + *(type metadata accessor for PhotosMemoryCellTextOverlay() + 36)) = a2;
  return sub_1C10F0528();
}

uint64_t sub_1C10E7734()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CE8);
  sub_1C12628E0();
  return v1;
}

uint64_t sub_1C10E7780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for PhotosMemoryCellTextOverlayModel(0);
  v7 = swift_allocObject();
  sub_1C0FCF1B4(a1);
  result = sub_1C10E87A0();
  *a3 = v7;
  return result;
}

uint64_t sub_1C10E7884(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  *(v4 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  *(v4 + 80) = swift_task_alloc();
  v6 = sub_1C1264700();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  *(v4 + 104) = v7;
  *(v4 + 112) = v8;
  *(v4 + 120) = v9;
  *(v4 + 128) = *(a2 + 1);
  *(v4 + 144) = a2[4];
  sub_1C1266200();
  *(v4 + 152) = sub_1C12661F0();
  v11 = sub_1C12661E0();
  *(v4 + 160) = v11;
  *(v4 + 168) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1C10E79D0, v11, v10);
}

uint64_t sub_1C10E79D0()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 112);
    *(v0 + 24) = v3;
    *(v0 + 32) = *(v0 + 128);
    *(v0 + 48) = v2;

    v28 = (v1 + *v1);
    swift_task_alloc();
    OUTLINED_FUNCTION_32_6();
    *(v0 + 176) = v4;
    *v4 = v5;
    v4[1] = sub_1C10E7C6C;
    v6 = *(v0 + 56);

    return v28(v6, v0 + 16);
  }

  else
  {
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = *(v0 + 56);

    (*(v9 + 104))(v8, *MEMORY[0x1E6980F00], v10);
    v13 = *MEMORY[0x1E6980E28];
    v14 = sub_1C1264590();
    OUTLINED_FUNCTION_3();
    (*(v15 + 104))(v11, v13, v14);
    OUTLINED_FUNCTION_29_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
    sub_1C12645E0();
    v19 = sub_1C1264640();
    sub_1C0FD1A5C(v11, &qword_1EBE96550);
    v20 = OUTLINED_FUNCTION_5_5();
    v21(v20);
    v22 = type metadata accessor for PhotosMemoryTitleLook(0);
    sub_1C1264860();
    OUTLINED_FUNCTION_34_5();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    *v12 = v19;
    *(v12 + *(v22 + 24)) = 768;

    OUTLINED_FUNCTION_14();

    return v27();
  }
}

uint64_t sub_1C10E7C6C()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v5 = v4;
  v3[23] = v0;

  v6 = v3[20];
  v7 = v3[21];
  if (v0)
  {
    v8 = sub_1C10E7DEC;
  }

  else
  {
    v8 = sub_1C10E7D70;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1C10E7D70()
{
  OUTLINED_FUNCTION_29_6();

  v0 = OUTLINED_FUNCTION_18();
  sub_1C0FCF004(v0);

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t sub_1C10E7DEC()
{
  sub_1C0FCF004(*(v0 + 64));

  OUTLINED_FUNCTION_14();

  return v1();
}

uint64_t PhotosMemoryTitleLook.init(font:textCase:layout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  *a4 = a1;
  v7 = type metadata accessor for PhotosMemoryTitleLook(0);
  result = sub_1C0FE4040(a2, a4 + *(v7 + 20), &qword_1EBE93AE0);
  *(a4 + *(v7 + 24)) = v6;
  return result;
}

void PhotosMemoryCellTextOverlayView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v45 = v0;
  v53 = v1;
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v51 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v48 = v7;
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v43 = *(v7 + 16);
  v9 = v43;
  type metadata accessor for PhotosMemoryCellTextOverlay();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_43_4();
  swift_getWitnessTable();
  v10 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v50 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  v44 = v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93AE8);
  v20 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v52 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v46 = v23 - v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  v47 = &v42 - v26;
  v54 = v9;
  v55 = v8;
  v27 = v45;
  v56 = v45;
  OUTLINED_FUNCTION_33_3();
  sub_1C10A7F5C();
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  sub_1C12659A0();
  v28 = v44;
  sub_1C1264EA0();
  (*(v12 + 8))(v15, v10);
  v29 = v49;
  v30 = v27;
  v31 = v48;
  (*(v3 + 16))(v49, v30, v48);
  v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v43;
  *(v33 + 24) = v8;
  (*(v3 + 32))(v33 + v32, v29, v31);
  type metadata accessor for CGSize(0);
  v59 = WitnessTable;
  v60 = MEMORY[0x1E697EBF8];
  v34 = swift_getWitnessTable();
  sub_1C10ECE78(&qword_1EDE7B618, type metadata accessor for CGSize);
  v35 = v46;
  sub_1C1264C40();

  (*(v50 + 8))(v28, v16);
  OUTLINED_FUNCTION_20_4();
  v37 = sub_1C0FDB6D4(v36, &qword_1EBE93AE8);
  v57 = v34;
  v58 = v37;
  OUTLINED_FUNCTION_4_4();
  v38 = swift_getWitnessTable();
  v39 = v47;
  sub_1C0FDBA4C(v35, v20, v38);
  v40 = *(v52 + 8);
  v40(v35, v20);
  sub_1C0FDBA4C(v39, v20, v38);
  v40(v39, v20);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10E8428(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotosMemoryCellTextOverlay();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - v13;
  (*(v4 + 16))(v6, a1, a2, v12);
  type metadata accessor for PhotosMemoryCellTextOverlayView();
  v15 = sub_1C10E7734();
  sub_1C10E76A8(v6, v15, a2, v10);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v10, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v10, v7);
  v21 = 0;
  v22 = 1;
  v23[0] = &v21;
  (*(v8 + 16))(v10, v14, v7);
  v23[1] = v10;
  v20[0] = MEMORY[0x1E6981840];
  v20[1] = v7;
  v19[0] = MEMORY[0x1E6981838];
  v19[1] = WitnessTable;
  sub_1C119EE80(v23, 2, v20);
  v17(v14, v7);
  return (v17)(v10, v7);
}

uint64_t sub_1C10E86B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for PhotosMemoryCellTextOverlayView();
  sub_1C10E7734();
  sub_1C10E8878(v1, v2, 0);
}

uint64_t sub_1C10E8718(uint64_t *a1)
{
  v2 = type metadata accessor for PhotosMemoryCellTextOverlayView();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_46_2();

  return sub_1C10E86B0(a1);
}

uint64_t sub_1C10E87A0()
{
  OUTLINED_FUNCTION_18_0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  OUTLINED_FUNCTION_34_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for TextOverlayConfiguration(0);
  OUTLINED_FUNCTION_34_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1C1261F60();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return v1;
}

void sub_1C10E8844(uint64_t a1, uint64_t a2, char a3)
{
  if (*(v3 + 32))
  {
    if (a3)
    {
      return;
    }

LABEL_9:
    sub_1C10E8A38();
    return;
  }

  if (a3)
  {
    goto LABEL_9;
  }

  if (*(v3 + 16) != *&a1 || *(v3 + 24) != *&a2)
  {
    goto LABEL_9;
  }
}

void sub_1C10E8878(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  sub_1C10E8844(v4, v5, v6);
}

uint64_t sub_1C10E889C(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 64);
  if (!v4)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((v5 = result, result = *(v2 + 56), result == v5) ? (v6 = v4 == a2) : (v6 = 0), !v6 && (result = sub_1C1266D50(), (result & 1) == 0)))
  {
LABEL_10:
    sub_1C10E8A38();

    return sub_1C10EBAD8();
  }

  return result;
}

uint64_t sub_1C10E8900(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  sub_1C10E889C(v3, v4);
}

uint64_t sub_1C10E8944(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 80);
  if (!v4)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((v5 = result, result = *(v2 + 72), result == v5) ? (v6 = v4 == a2) : (v6 = 0), !v6 && (result = sub_1C1266D50(), (result & 1) == 0)))
  {
LABEL_10:
    sub_1C10E8A38();

    return sub_1C10EBAD8();
  }

  return result;
}

uint64_t sub_1C10E89A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  sub_1C10E8944(v3, v4);
}

void sub_1C10E89EC(uint64_t a1, char a2)
{
  if (*(v2 + 96))
  {
    if ((a2 & 1) == 0)
    {
LABEL_7:
      sub_1C10E8A38();
    }
  }

  else if ((a2 & 1) != 0 || *(v2 + 88) != *&a1)
  {
    goto LABEL_7;
  }
}

void sub_1C10E8A18(uint64_t a1, char a2)
{
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2 & 1;
  sub_1C10E89EC(v3, v4);
}

void sub_1C10E8A38()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(v0 + 8);
  if (v4 && (v0[4] & 1) == 0 && (v0[12] & 1) == 0)
  {
    v5 = *(v0 + 6);
    v22 = *(v0 + 7);
    v6 = v0[11];
    v8 = v0[2];
    v7 = *(v0 + 3);
    if (v8 / 350.0 <= 1.0)
    {
      v9 = v8 / 350.0;
    }

    else
    {
      v9 = 1.0;
    }

    v11 = *(v0 + 9);
    v10 = *(v0 + 10);
    v21 = *(v0 + 5);
    sub_1C1266230();
    OUTLINED_FUNCTION_34_5();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    sub_1C1266200();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v17 = sub_1C12661F0();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v21;
    *(v18 + 40) = v5;
    *(v18 + 48) = v22;
    *(v18 + 56) = v4;
    *(v18 + 64) = v11;
    *(v18 + 72) = v10;
    *(v18 + 80) = round(v6 * v9);
    *(v18 + 88) = v22;
    *(v18 + 96) = v4;
    *(v18 + 104) = v11;
    *(v18 + 112) = v10;
    *(v18 + 120) = v8;
    *(v18 + 128) = v7;
    *(v18 + 136) = v6;
    *(v18 + 144) = v9;
    *(v18 + 152) = v16;
    *(v18 + 160) = v1;

    sub_1C12180A0();
    sub_1C10EB58C(v20);
  }
}

uint64_t sub_1C10E8C54(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 184) = v19;
  *(v12 + 192) = v20;
  *(v12 + 168) = a3;
  *(v12 + 176) = a4;
  *(v12 + 152) = a1;
  *(v12 + 160) = a2;
  *(v12 + 136) = v17;
  *(v12 + 144) = v18;
  *(v12 + 120) = a11;
  *(v12 + 128) = a12;
  *(v12 + 104) = a9;
  *(v12 + 112) = a10;
  *(v12 + 96) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00);
  *(v12 + 200) = swift_task_alloc();
  *(v12 + 208) = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  *(v12 + 216) = swift_task_alloc();
  *(v12 + 224) = swift_task_alloc();
  *(v12 + 232) = type metadata accessor for PhotosMemoryTitleLook(0);
  *(v12 + 240) = swift_task_alloc();
  *(v12 + 248) = swift_task_alloc();
  *(v12 + 256) = swift_task_alloc();
  sub_1C1266200();
  *(v12 + 264) = sub_1C12661F0();
  v14 = sub_1C12661E0();
  *(v12 + 272) = v14;
  *(v12 + 280) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1C10E8DCC, v14, v13);
}

uint64_t sub_1C10E8DCC()
{
  if (sub_1C1266250())
  {

    OUTLINED_FUNCTION_22_10();

    OUTLINED_FUNCTION_14();

    return v1();
  }

  else
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = *(v3 + 32);
    v6 = *(v3 + 16);
    *(v0 + 16) = *v3;
    *(v0 + 32) = v6;
    *(v0 + 48) = v5;
    v10 = (v4 + *v4);
    swift_task_alloc();
    OUTLINED_FUNCTION_32_6();
    *(v0 + 288) = v7;
    *v7 = v8;
    v7[1] = sub_1C10E8F54;
    v9 = *(v0 + 256);

    return v10(v9, v0 + 16);
  }
}

uint64_t sub_1C10E8F54()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v5 = v4;
  *(v3 + 37) = v0;

  if (v0)
  {
    v6 = *(v3 + 34);
    v7 = *(v3 + 35);

    return MEMORY[0x1EEE6DFA0](sub_1C10E9808, v6, v7);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_32_6();
    *(v3 + 38) = v8;
    *v8 = v9;
    v8[1] = sub_1C10E90C4;
    v10 = *(v3 + 32);
    v11 = *(v3 + 28);
    v12 = v3[21];
    v13 = v3[22];
    v14 = v3[19];
    v15 = v3[20];
    v16 = *(v3 + 17);
    v17 = *(v3 + 18);
    v18 = *(v3 + 15);
    v19 = *(v3 + 16);

    return sub_1C10E99B0(v11, v10, v18, v19, v16, v17, v14, v15, v12, v13);
  }
}

uint64_t sub_1C10E90C4()
{
  OUTLINED_FUNCTION_29_6();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;

  v4 = *(v1 + 280);
  v5 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1C10E91D8, v5, v4);
}

uint64_t sub_1C10E91D8()
{
  v59 = v0;
  if (sub_1C10EA628(*(v0 + 28), *(v0 + 32), *(v0 + 15), *(v0 + 16), *(v0 + 17), *(v0 + 18)))
  {

    OUTLINED_FUNCTION_44();
    Strong = swift_weakLoadStrong();
    v4 = *(v0 + 32);
    v5 = *(v0 + 28);
    if (Strong)
    {
      OUTLINED_FUNCTION_13_18();
      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
      sub_1C10EB954(v2);
    }

    sub_1C10F0DB0(v5, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
    OUTLINED_FUNCTION_0_43();
    sub_1C10F0DB0(v4, v9);
    OUTLINED_FUNCTION_22_10();

    OUTLINED_FUNCTION_14();

    return v10();
  }

  else
  {
    if (qword_1EDE776F8 != -1)
    {
      OUTLINED_FUNCTION_1_33();
    }

    v13 = *(v0 + 31);
    v12 = *(v0 + 32);
    v14 = sub_1C1262720();
    __swift_project_value_buffer(v14, qword_1EDE77700);
    OUTLINED_FUNCTION_2_36();
    sub_1C10F2AE0(v12, v13, v15);

    v16 = sub_1C12626F0();
    v17 = sub_1C1266400();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 31);
    if (v18)
    {
      v56 = *(v0 + 17);
      v57 = *(v0 + 18);
      v20 = *(v0 + 15);
      v55 = *(v0 + 16);
      v21 = OUTLINED_FUNCTION_63();
      v58 = swift_slowAlloc();
      *v21 = 136315650;
      OUTLINED_FUNCTION_2_36();
      v22 = OUTLINED_FUNCTION_33_3();
      sub_1C10F2AE0(v22, v23, v24);
      v25 = sub_1C1265ED0();
      v27 = v26;
      OUTLINED_FUNCTION_0_43();
      sub_1C10F0DB0(v19, v28);
      v29 = sub_1C0FA0E80(v25, v27, &v58);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1C0FA0E80(v20, v55, &v58);
      *(v21 + 22) = 2080;
      *(v0 + 10) = v56;
      *(v0 + 11) = v57;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60);
      v30 = sub_1C1265ED0();
      v32 = sub_1C0FA0E80(v30, v31, &v58);

      *(v21 + 24) = v32;
      _os_log_impl(&dword_1C0F96000, v16, v17, "title attributes for %s are not valid for %s %s, falling back to default layout", v21, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_4_8();
    }

    else
    {

      OUTLINED_FUNCTION_0_43();
      sub_1C10F0DB0(v19, v33);
    }

    v34 = *(v0 + 32);
    v36 = *(v0 + 29);
    v35 = *(v0 + 30);
    OUTLINED_FUNCTION_2_36();
    v37 = OUTLINED_FUNCTION_5_5();
    sub_1C10F2AE0(v37, v38, v39);
    v40 = *(v36 + 24);
    v41 = *(v34 + v40 + 1);
    v42 = (v35 + v40);
    *v42 = 0;
    v42[1] = v41;
    swift_task_alloc();
    OUTLINED_FUNCTION_32_6();
    *(v0 + 39) = v43;
    *v43 = v44;
    v43[1] = sub_1C10E95BC;
    v45 = *(v0 + 30);
    v46 = *(v0 + 27);
    v47 = v0[21];
    v48 = v0[22];
    v49 = v0[19];
    v50 = v0[20];
    v51 = *(v0 + 17);
    v52 = *(v0 + 18);
    v53 = *(v0 + 15);
    v54 = *(v0 + 16);

    return sub_1C10E99B0(v46, v45, v53, v54, v51, v52, v49, v50, v47, v48);
  }
}

uint64_t sub_1C10E95BC()
{
  OUTLINED_FUNCTION_29_6();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;

  v4 = *(v1 + 280);
  v5 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1C10E96D0, v5, v4);
}

uint64_t sub_1C10E96D0()
{
  v3 = v0[30];
  v5 = v0[27];
  v4 = v0[28];

  OUTLINED_FUNCTION_0_43();
  sub_1C10F0DB0(v3, v6);
  OUTLINED_FUNCTION_17_19();
  sub_1C10F0DB0(v4, v7);
  OUTLINED_FUNCTION_16_15();
  sub_1C10F0AD8(v5, v4, v8);
  OUTLINED_FUNCTION_44();
  Strong = swift_weakLoadStrong();
  v10 = v0[32];
  v11 = v0[28];
  if (Strong)
  {
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_29_2();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v1);
    sub_1C10EB954(v2);
  }

  sub_1C10F0DB0(v11, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
  OUTLINED_FUNCTION_0_43();
  sub_1C10F0DB0(v10, v15);
  OUTLINED_FUNCTION_22_10();

  OUTLINED_FUNCTION_14();

  return v16();
}

uint64_t sub_1C10E9808()
{

  if (qword_1EDE776F8 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v1 = *(v0 + 296);
  v2 = sub_1C1262720();
  __swift_project_value_buffer(v2, qword_1EDE77700);
  v3 = v1;
  v4 = sub_1C12626F0();
  v5 = sub_1C1266410();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_60();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C0F96000, v4, v5, "failed to determine combined title attributes: %@", v8, 0xCu);
    sub_1C0FD1A5C(v9, &unk_1EBE97C20);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_4_8();
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_10();

  OUTLINED_FUNCTION_14();

  return v12();
}

uint64_t sub_1C10E99B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  *(v11 + 104) = v10;
  *(v11 + 88) = a9;
  *(v11 + 96) = a10;
  *(v11 + 80) = a7;
  *(v11 + 64) = a5;
  *(v11 + 72) = a6;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 112) = type metadata accessor for TextAttributes(0);
  *(v11 + 120) = swift_task_alloc();
  v12 = sub_1C1262170();
  *(v11 + 128) = v12;
  *(v11 + 136) = *(v12 - 8);
  *(v11 + 144) = swift_task_alloc();
  v13 = sub_1C1263880();
  *(v11 + 152) = v13;
  *(v11 + 160) = *(v13 - 8);
  *(v11 + 168) = swift_task_alloc();
  *(v11 + 176) = swift_task_alloc();
  v14 = sub_1C12647F0();
  *(v11 + 184) = v14;
  *(v11 + 192) = *(v14 - 8);
  *(v11 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C10E9B78, 0, 0);
}

uint64_t sub_1C10E9B78()
{
  v78 = v0;
  v2 = *(v0 + 40);
  v3 = round(*(v0 + 96) * 24.0);
  *(v0 + 208) = v3;
  v4 = [objc_opt_self() defaultSpecs];
  *(v0 + 216) = v4;
  OUTLINED_FUNCTION_64();
  v6 = v2 + v5;
  v7 = *(v2 + v5);
  if (v7 == 2)
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 80) - (v3 + v3);
    v10 = sub_1C1265E70();
    [v4 maximumWidthForTitle:v10 containerSize:{v9, v9}];
    v12 = v11;

    if (v8)
    {
      v13 = sub_1C1265E70();
    }

    else
    {
      v13 = 0;
    }

    [v4 maximumWidthForSubtitle:v13 titleWidth:v12];
    v27 = v26;

    if (v12 > 0.0 && v27 > 0.0)
    {
      sub_1C1263860();
      v28 = *(v6 + 1);
      if ((v28 - 2) >= 2)
      {
        if (!*(v6 + 1))
        {
          v15 = 1;
LABEL_38:
          v62 = *(v0 + 168);
          v61 = *(v0 + 176);
          v64 = *(v0 + 152);
          v63 = *(v0 + 160);
          v59 = [v4 maximumNumberOfLinesForTitle];
          v60 = [v4 maximumNumberOfLinesForSubtitle];
          sub_1C12647D0();
          sub_1C1263870();
          (*(v63 + 8))(v61, v64);
          (*(v63 + 32))(v61, v62, v64);
          v58 = 0;
          v57 = xmmword_1C12B5C50;
          v56 = *&v27;
          goto LABEL_41;
        }
      }

      else
      {
        if (qword_1EDE776F8 != -1)
        {
          OUTLINED_FUNCTION_1_33();
        }

        v29 = sub_1C1262720();
        __swift_project_value_buffer(v29, qword_1EDE77700);
        v30 = sub_1C12626F0();
        v31 = sub_1C1266410();
        if (OUTLINED_FUNCTION_45_4(v31))
        {
          v32 = OUTLINED_FUNCTION_60();
          v33 = OUTLINED_FUNCTION_63();
          v77 = v33;
          *v32 = 136315138;
          *(v0 + 264) = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CE0);
          v34 = sub_1C1265ED0();
          v36 = sub_1C0FA0E80(v34, v35, &v77);

          *(v32 + 4) = v36;
          _os_log_impl(&dword_1C0F96000, v30, v1, "invalid preferred position %s for kashida layout, falling back gracefully", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          OUTLINED_FUNCTION_4_8();
          OUTLINED_FUNCTION_28_7();
        }
      }

      v15 = 0;
      goto LABEL_38;
    }

    if (qword_1EDE776F8 != -1)
    {
      OUTLINED_FUNCTION_1_33();
    }

    v37 = sub_1C1262720();
    __swift_project_value_buffer(v37, qword_1EDE77700);

    v38 = sub_1C12626F0();
    v39 = sub_1C1266400();

    if (os_log_type_enabled(v38, v39))
    {
      v75 = *(v0 + 64);
      v76 = *(v0 + 72);
      v41 = *(v0 + 48);
      v40 = *(v0 + 56);
      v42 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v42 = 134218754;
      *(v42 + 4) = v12;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_1C0FA0E80(v41, v40, &v77);
      *(v42 + 22) = 2048;
      *(v42 + 24) = v27;
      *(v42 + 32) = 2080;
      *(v0 + 16) = v75;
      *(v0 + 24) = v76;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60);
      v43 = sub_1C1265ED0();
      v45 = sub_1C0FA0E80(v43, v44, &v77);

      *(v42 + 34) = v45;
      _os_log_impl(&dword_1C0F96000, v38, v39, "width %f for %s and %f for %s aren't valid, falling back to default style", v42, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_4_8();
    }

    sub_1C1263860();
    LODWORD(v14) = *(v6 + 1);
LABEL_25:
    if ((v14 - 2) >= 2)
    {
      if (!v14)
      {
        v15 = 1;
LABEL_34:
        sub_1C12647D0();
        v56 = 0;
        v57 = xmmword_1C12B5C50;
        v12 = 0.0;
        v58 = 1;
        v59 = 3;
        v60 = 1;
        goto LABEL_41;
      }
    }

    else
    {
      if (qword_1EDE776F8 != -1)
      {
        OUTLINED_FUNCTION_1_33();
      }

      v46 = sub_1C1262720();
      __swift_project_value_buffer(v46, qword_1EDE77700);
      v47 = sub_1C12626F0();
      v48 = sub_1C1266410();
      if (OUTLINED_FUNCTION_45_4(v48))
      {
        v49 = OUTLINED_FUNCTION_60();
        v50 = OUTLINED_FUNCTION_63();
        v77 = v50;
        *v49 = 136315138;
        *(v0 + 266) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CE0);
        v51 = sub_1C1265ED0();
        v53 = sub_1C0FA0E80(v51, v52, &v77);

        *(v49 + 4) = v53;
        OUTLINED_FUNCTION_58_0(&dword_1C0F96000, v54, v55, "invalid preferred position %s for default text layout, falling back gracefully");
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        OUTLINED_FUNCTION_28_7();
        OUTLINED_FUNCTION_4_8();
      }
    }

    v15 = 0;
    goto LABEL_34;
  }

  sub_1C1263860();
  v14 = *(v6 + 1);
  if (!v7)
  {
    goto LABEL_25;
  }

  sub_1C1262160();
  v15 = 2;
  switch(v14)
  {
    case 1:
    case 3:
      if (qword_1EDE776F8 != -1)
      {
        OUTLINED_FUNCTION_1_33();
      }

      v16 = sub_1C1262720();
      __swift_project_value_buffer(v16, qword_1EDE77700);
      v17 = sub_1C12626F0();
      v18 = sub_1C1266410();
      if (OUTLINED_FUNCTION_45_4(v18))
      {
        v19 = OUTLINED_FUNCTION_60();
        v20 = OUTLINED_FUNCTION_63();
        v77 = v20;
        *v19 = 136315138;
        *(v0 + 265) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CE0);
        v21 = sub_1C1265ED0();
        v23 = sub_1C0FA0E80(v21, v22, &v77);

        *(v19 + 4) = v23;
        OUTLINED_FUNCTION_58_0(&dword_1C0F96000, v24, v25, "invalid preferred position %s for vertical text, falling back gracefully");
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        OUTLINED_FUNCTION_28_7();
        OUTLINED_FUNCTION_4_8();
      }

      break;
    case 2:
      v15 = 3;
      break;
    default:
      break;
  }

  v66 = *(v0 + 136);
  v65 = *(v0 + 144);
  v67 = *(v0 + 128);
  v59 = sub_1C1262140();
  v60 = sub_1C1262150();
  sub_1C12647C0();
  (*(v66 + 8))(v65, v67);
  v56 = 0;
  v57 = xmmword_1C12B5C40;
  v12 = 0.0;
  v58 = 1;
LABEL_41:
  *(v0 + 248) = v59;
  *(v0 + 232) = v57;
  *(v0 + 268) = v15;
  *(v0 + 224) = v12;
  *(v0 + 267) = v58;
  v68 = *(v0 + 96) * (*(v0 + 88) * 0.54);
  swift_task_alloc();
  OUTLINED_FUNCTION_32_6();
  *(v0 + 256) = v69;
  *v69 = v70;
  v69[1] = sub_1C10EA31C;
  v71 = *(v0 + 200);
  v72 = *(v0 + 176);
  v73 = *(v0 + 120);

  return sub_1C10EA8C0(v73, v60, v71, v72, v56, v58, v68);
}

uint64_t sub_1C10EA31C()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C10EA408, 0, 0);
}

uint64_t sub_1C10EA408()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v28 = *(v0 + 268);
  v25 = *(v0 + 267);
  v23 = *(v0 + 248);
  v24 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v26 = v7;
  v27 = *(v0 + 216);
  v8 = *(v0 + 160);
  v9 = *(v0 + 152);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 96);
  v13 = *(v0 + 32);
  OUTLINED_FUNCTION_2_36();
  sub_1C10F2AE0(v14, v13, v15);
  (*(v4 + 16))(v13 + v11[8], v5, v7);
  (*(v8 + 16))(v13 + v11[9], v6, v9);
  v16 = v13 + v11[5];
  *v16 = v23;
  *(v16 + 8) = 0;
  *(v13 + v11[6]) = 0x3FF0000000000000;
  *(v13 + v11[7]) = v2;
  v17 = v13 + v11[10];
  *v17 = v24;
  *(v17 + 8) = v25;
  v18 = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  OUTLINED_FUNCTION_6_21();
  sub_1C10F2AE0(v10, v13 + v19, v20);

  sub_1C10F0DB0(v10, type metadata accessor for TextAttributes);
  (*(v8 + 8))(v6, v9);
  (*(v4 + 8))(v5, v26);
  *(v13 + v18[6]) = round(v1 * v12);
  *(v13 + v18[7]) = v3;
  *(v13 + v18[8]) = v28;

  OUTLINED_FUNCTION_14();

  return v21();
}

uint64_t sub_1C10EA628(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v10 = sub_1C1262170();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1264820();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + *(type metadata accessor for PhotosMemoryTitleLook(0) + 24));
  if (v18)
  {
    sub_1C1264810();
    type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
    if (v18 == 2)
    {
      v19 = [objc_opt_self() defaultSpecs];
      v20 = [v19 maximumNumberOfLinesForTitle];
      v21 = [v19 maximumNumberOfLinesForSubtitle];
      v22 = sub_1C10EAD64(v20, v21, v17, a3, a4, a1, v26, v27);
    }

    else
    {
      sub_1C1262160();
      v23 = sub_1C1262140();
      v24 = sub_1C1262150();
      v22 = sub_1C10EAD64(v23, v24, v17, a3, a4, a1, v26, v27);
      (*(v11 + 8))(v13, v10);
    }

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v22 = 1;
  }

  return v22 & 1;
}

PhotosSwiftUICore::PhotosMemoryTitleLayout __swiftcall PhotosMemoryTitleLayout.init(style:preferredPosition:)(PhotosSwiftUICore::PhotosMemoryTitleLayout::Style style, PhotosSwiftUICore::PhotosMemoryTitleLayout::Position_optional preferredPosition)
{
  v3 = *preferredPosition.value;
  *v2 = *style;
  v2[1] = v3;
  result.style = style;
  return result;
}

uint64_t sub_1C10EA8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  *(v7 + 72) = a6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 24) = a7;
  *(v7 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C10EA96C, 0, 0);
}

uint64_t sub_1C10EA96C()
{
  v31 = *(v0 + 72);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v29 = *(v0 + 32);
  v30 = *(v0 + 56);
  v4 = *(v0 + 16);
  sub_1C12645B0();
  v5 = *MEMORY[0x1E6980E20];
  v6 = sub_1C1264590();
  OUTLINED_FUNCTION_3();
  (*(v7 + 104))(v1, v5, v6);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  v11 = sub_1C1264630();
  sub_1C0FD1A5C(v1, &qword_1EBE96550);
  v12 = type metadata accessor for PhotosMemoryTitleLook(0);
  v13 = *(v12 + 20);
  v14 = *MEMORY[0x1E6980FD8];
  v15 = sub_1C1264860();
  OUTLINED_FUNCTION_3();
  (*(v16 + 104))(v4 + v13, v14, v15);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  *v4 = v11;
  *(v4 + *(v12 + 24)) = 768;
  v20 = type metadata accessor for TextAttributes(0);
  v21 = v20[8];
  sub_1C12647F0();
  OUTLINED_FUNCTION_3();
  (*(v22 + 16))(v4 + v21, v3);
  v23 = v20[9];
  sub_1C1263880();
  OUTLINED_FUNCTION_3();
  (*(v24 + 16))(v4 + v23, v2);
  v25 = v4 + v20[5];
  *v25 = v29;
  v25[8] = 0;
  *(v4 + v20[6]) = 0x3FF3333333333333;
  *(v4 + v20[7]) = 0x3FF0000000000000;
  v26 = v4 + v20[10];
  *v26 = v30;
  v26[8] = v31 & 1;

  OUTLINED_FUNCTION_14();

  return v27();
}

uint64_t sub_1C10EABEC()
{
  sub_1C0FDB9AC();

  v0 = sub_1C12648F0();
  v2 = v1;
  v4 = v3;
  type metadata accessor for TextConfiguration(0);
  v5 = sub_1C1264870();
  v7 = v6;
  v9 = v8;
  sub_1C0FDB8E8(v0, v2, v4 & 1);

  type metadata accessor for TextAttributes(0);
  v10 = sub_1C1264880();
  v12 = v11;
  v14 = v13;
  sub_1C0FDB8E8(v5, v7, v9 & 1);

  v15 = sub_1C1264890();
  sub_1C0FDB8E8(v10, v12, v14 & 1);

  return v15;
}

uint64_t sub_1C10EAD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v89 = a8;
  v82 = a7;
  v95 = a3;
  v83 = a2;
  v91 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = &v82 - v12;
  v13 = type metadata accessor for TextConfiguration(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TextAttributes(0);
  v92 = a6;
  v93 = v16;
  v87 = v13;
  sub_1C10F2AE0(a6, v15 + *(v13 + 20), type metadata accessor for TextAttributes);
  v96 = v15;
  *v15 = a4;
  v15[1] = a5;
  v88 = a4;
  v97 = a4;
  v98 = a5;
  v17 = sub_1C0FDB9AC();
  v90 = a5;
  swift_bridgeObjectRetain_n();
  v86 = v17;
  v18 = sub_1C12648F0();
  v20 = v19;
  LOBYTE(v13) = v21;
  v22 = sub_1C1264870();
  v24 = v23;
  v26 = v25;
  sub_1C0FDB8E8(v18, v20, v13 & 1);

  v27 = v93;
  v28 = sub_1C1264880();
  v30 = v29;
  LOBYTE(v20) = v31;
  sub_1C0FDB8E8(v22, v24, v26 & 1);

  v32 = sub_1C1264890();
  v34 = v33;
  v36 = v35;
  sub_1C0FDB8E8(v28, v30, v20 & 1);

  sub_1C10F0DB0(v96, type metadata accessor for TextConfiguration);
  v37 = *(v27 + 32);
  v38 = sub_1C12647F0();
  v39 = *(v38 - 8);
  v40 = v92 + v37;
  v41 = v92;
  v42 = v94;
  v85 = *(v39 + 16);
  v84 = v39 + 16;
  v85(v94, v40, v38);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v38);
  v43 = sub_1C1264800();
  sub_1C0FDB8E8(v32, v34, v36 & 1);

  sub_1C0FD1A5C(v42, &qword_1EBE93CD8);
  if (v43 < 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_4:
    v44 = sub_1C1262720();
    __swift_project_value_buffer(v44, qword_1EDE77700);
    v45 = v90;

    v46 = sub_1C12626F0();
    v47 = sub_1C1266400();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v97 = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_1C0FA0E80(v88, v45, &v97);
      *(v48 + 12) = 2048;
      *(v48 + 14) = v43;
      v50 = "title “%s” exceeds maximum number of lines %ld";
LABEL_12:
      _os_log_impl(&dword_1C0F96000, v46, v47, v50, v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x1C68F1630](v49, -1, -1);
      MEMORY[0x1C68F1630](v48, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v43 > v91)
  {
    v43 = v91;
    if (qword_1EDE776F8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  if (v89)
  {
    v92 = v41 + *(type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0) + 20);
    v51 = v96;
    v52 = v96 + *(v87 + 20);
    sub_1C10F2AE0(v92, v52, type metadata accessor for TextAttributes);
    v53 = v88;
    v54 = v90;
    *v51 = v88;
    v51[1] = v54;
    v97 = v53;
    v98 = v54;
    swift_bridgeObjectRetain_n();
    v55 = sub_1C12648F0();
    v57 = v56;
    v59 = v58;
    v91 = v52;
    v60 = sub_1C1264870();
    v62 = v61;
    v64 = v63;
    v90 = v65;
    sub_1C0FDB8E8(v55, v57, v59 & 1);

    v66 = v93;
    v67 = sub_1C1264880();
    v69 = v68;
    v71 = v70;
    sub_1C0FDB8E8(v60, v62, v64 & 1);

    v72 = sub_1C1264890();
    v74 = v73;
    LOBYTE(v62) = v75;
    v91 = v76;
    sub_1C0FDB8E8(v67, v69, v71 & 1);

    sub_1C10F0DB0(v96, type metadata accessor for TextConfiguration);
    v77 = v94;
    v85(v94, v92 + *(v66 + 32), v38);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v38);
    v78 = sub_1C1264800();
    sub_1C0FDB8E8(v72, v74, v62 & 1);

    sub_1C0FD1A5C(v77, &qword_1EBE93CD8);
    if (v78 < 0)
    {
      __break(1u);
LABEL_18:
      swift_once();
LABEL_10:
      v79 = sub_1C1262720();
      __swift_project_value_buffer(v79, qword_1EDE77700);
      v80 = v89;

      v46 = sub_1C12626F0();
      v47 = sub_1C1266400();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v97 = v49;
        *v48 = 136315394;
        *(v48 + 4) = sub_1C0FA0E80(v82, v80, &v97);
        *(v48 + 12) = 2048;
        *(v48 + 14) = v69;
        v50 = "subtitle “%s” exceeds maximum number of lines %ld";
        goto LABEL_12;
      }

LABEL_13:

      return 0;
    }

    v69 = v83;
    if (v78 > v83)
    {
      if (qword_1EDE776F8 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  return 1;
}

uint64_t sub_1C10EB58C(uint64_t result)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = result;
  if (v2)
  {

    sub_1C1266240();
  }

  return result;
}

uint64_t sub_1C10EB614(uint64_t a1)
{
  v3 = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CC8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1C0FE5654(v1 + v13, v12, &qword_1EBE93B00);
  sub_1C0FE5654(a1, &v12[v14], &qword_1EBE93B00);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
    {
      return sub_1C0FD1A5C(v12, &qword_1EBE93B00);
    }

    goto LABEL_6;
  }

  sub_1C0FE5654(v12, v8, &qword_1EBE93B00);
  if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
  {
    sub_1C10F0DB0(v8, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
LABEL_6:
    v16 = &qword_1EBE93CC8;
LABEL_14:
    sub_1C0FD1A5C(v12, v16);
    return sub_1C10EBAD8();
  }

  sub_1C10F0AD8(&v12[v14], v5, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
  if ((sub_1C10ED5B0(v8, v5) & 1) == 0 || (sub_1C10ED5B0(&v8[v3[5]], &v5[v3[5]]) & 1) == 0 || *&v8[v3[6]] != *&v5[v3[6]] || *&v8[v3[7]] != *&v5[v3[7]])
  {
    sub_1C10F0DB0(v5, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
    sub_1C10F0DB0(v8, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
    v16 = &qword_1EBE93B00;
    goto LABEL_14;
  }

  v17 = v3[8];
  v18 = v8[v17];
  v19 = v5[v17];
  sub_1C10F0DB0(v5, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
  sub_1C10F0DB0(v8, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes);
  result = sub_1C0FD1A5C(v12, &qword_1EBE93B00);
  if (v18 != v19)
  {
    return sub_1C10EBAD8();
  }

  return result;
}

uint64_t sub_1C10EB954(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38_0();
  v6 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes;
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE5654(v7, v8, v9);
  swift_beginAccess();
  sub_1C10F2B3C(a1, v1 + v6);
  swift_endAccess();
  sub_1C10EB614(v2);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FD1A5C(v10, v11);
  OUTLINED_FUNCTION_23_7();
  return sub_1C0FD1A5C(v12, v13);
}

BOOL sub_1C10EBA3C(uint64_t a1, uint64_t a2)
{
  if (sub_1C10ED5B0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0), (sub_1C10ED5B0(a1 + v4[5], a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C10EBAD8()
{
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CC0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_34();
  v117 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08);
  v4 = OUTLINED_FUNCTION_15(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30();
  v113 = v5 - v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v110 - v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v110 - v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0);
  v14 = OUTLINED_FUNCTION_15(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v110 - v19);
  v21 = type metadata accessor for TextOverlayConfiguration(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v111 = v23 - v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v110 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00);
  OUTLINED_FUNCTION_15(v27);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v110 - v29;
  v31 = type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v35 = v34 - v33;
  v36 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes;
  OUTLINED_FUNCTION_44();
  sub_1C0FE5654(v0 + v36, v30, &qword_1EBE93B00);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    return sub_1C0FD1A5C(v30, &qword_1EBE93B00);
  }

  OUTLINED_FUNCTION_16_15();
  sub_1C10F0AD8(v30, v35, v38);
  v39 = v0[8];
  if (v39)
  {
    v40 = v0[7];
    v41 = type metadata accessor for TextConfiguration(0);
    OUTLINED_FUNCTION_6_21();
    sub_1C10F2AE0(v35, v20 + v42, v43);
    *v20 = v40;
    v20[1] = v39;
    OUTLINED_FUNCTION_29_2();
    v47 = v41;
  }

  else
  {
    type metadata accessor for TextConfiguration(0);
    OUTLINED_FUNCTION_34_5();
  }

  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v110 = v39;
  v48 = v0[10];
  if (v48)
  {
    v49 = v31[5];
    v50 = v35;
    v51 = v0[9];
    v52 = type metadata accessor for TextConfiguration(0);
    OUTLINED_FUNCTION_6_21();
    sub_1C10F2AE0(v50 + v49, v17 + v53, v54);
    *v17 = v51;
    v17[1] = v48;
    v35 = v50;
    OUTLINED_FUNCTION_29_2();
    v58 = v52;
  }

  else
  {
    type metadata accessor for TextConfiguration(0);
    OUTLINED_FUNCTION_34_5();
  }

  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v59 = *(v35 + v31[6]);
  v60 = *(v35 + v31[7]);
  v61 = *(v35 + v31[8]);
  v62 = v116;
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE4040(v63, v64, v65);
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE4040(v66, v67, v68);
  *(v62 + v21[6]) = v59;
  *(v62 + v21[7]) = v60;
  *(v62 + v21[8]) = v61;
  v69 = OUTLINED_FUNCTION_11_17();
  sub_1C10F2AE0(v69, v118, v70);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v21);

  sub_1C10EC0F0(v115);
  v74 = *(v114 + 48);
  v75 = v117;
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE5654(v76, v77, v78);
  OUTLINED_FUNCTION_35_3();
  sub_1C0FE5654(v79, v80, v81);
  OUTLINED_FUNCTION_61(v75);
  if (!v87)
  {
    v86 = v112;
    sub_1C0FE5654(v75, v112, &qword_1EBE93B08);
    OUTLINED_FUNCTION_61(v75 + v74);
    if (!v87)
    {
      v101 = v75 + v74;
      v102 = v111;
      sub_1C10F0AD8(v101, v111, type metadata accessor for TextOverlayConfiguration);
      v103 = sub_1C10ECFE0(v86, v102);
      sub_1C10F0DB0(v102, type metadata accessor for TextOverlayConfiguration);
      OUTLINED_FUNCTION_41_3();
      sub_1C0FD1A5C(v104, v105);
      OUTLINED_FUNCTION_41_3();
      sub_1C0FD1A5C(v106, v107);
      sub_1C10F0DB0(v86, type metadata accessor for TextOverlayConfiguration);
      OUTLINED_FUNCTION_41_3();
      sub_1C0FD1A5C(v108, v109);
      if (v103)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_23_7();
    sub_1C0FD1A5C(v88, v89);
    OUTLINED_FUNCTION_23_7();
    sub_1C0FD1A5C(v90, v91);
    OUTLINED_FUNCTION_15_21();
    sub_1C10F0DB0(v86, v92);
LABEL_17:
    sub_1C0FD1A5C(v75, &qword_1EBE93CC0);
LABEL_18:
    v93 = OUTLINED_FUNCTION_11_17();
    v94 = v113;
    sub_1C10F2AE0(v93, v113, v95);
    OUTLINED_FUNCTION_29_2();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v21);
    sub_1C10EC26C(v94);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_23_7();
  sub_1C0FD1A5C(v82, v83);
  OUTLINED_FUNCTION_23_7();
  sub_1C0FD1A5C(v84, v85);
  OUTLINED_FUNCTION_61(v75 + v74);
  if (!v87)
  {
    goto LABEL_17;
  }

  sub_1C0FD1A5C(v75, &qword_1EBE93B08);
LABEL_19:
  OUTLINED_FUNCTION_15_21();
  sub_1C10F0DB0(v62, v99);
  OUTLINED_FUNCTION_17_19();
  return sub_1C10F0DB0(v35, v100);
}

uint64_t sub_1C10EC0F0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C10ECE78(&qword_1EDE80128, type metadata accessor for PhotosMemoryCellTextOverlayModel);
  sub_1C1261F30();

  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration;
  OUTLINED_FUNCTION_44();
  return sub_1C0FE5654(v5 + v3, a1, &qword_1EBE93B08);
}

uint64_t sub_1C10EC1C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C0FE5654(a1, &v6 - v3, &qword_1EBE93B08);
  return sub_1C10EC26C(v4);
}

uint64_t sub_1C10EC26C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5];
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration;
  OUTLINED_FUNCTION_44();
  sub_1C0FE5654(v1 + v7, v6, &qword_1EBE93B08);
  v8 = sub_1C10EC594(v6, a1);
  v9 = OUTLINED_FUNCTION_4_4();
  sub_1C0FD1A5C(v9, v10);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[-16] = v1;
    *&v13[-8] = a1;
    sub_1C10EC4DC();
  }

  else
  {
    sub_1C0FE5654(a1, v6, &qword_1EBE93B08);
    swift_beginAccess();
    sub_1C10F2A54(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1C0FD1A5C(a1, &qword_1EBE93B08);
}

uint64_t sub_1C10EC400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C0FE5654(a2, &v9 - v5, &qword_1EBE93B08);
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration;
  swift_beginAccess();
  sub_1C10F2A54(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_1C10EC594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextOverlayConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v14 = *(v13 + 56);
  sub_1C0FE5654(a1, &v18 - v11, &qword_1EBE93B08);
  sub_1C0FE5654(a2, &v12[v14], &qword_1EBE93B08);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) != 1)
  {
    sub_1C0FE5654(v12, v9, &qword_1EBE93B08);
    if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v4) != 1)
    {
      sub_1C10F0AD8(&v12[v14], v6, type metadata accessor for TextOverlayConfiguration);
      v16 = sub_1C10ECFE0(v9, v6);
      sub_1C10F0DB0(v6, type metadata accessor for TextOverlayConfiguration);
      sub_1C10F0DB0(v9, type metadata accessor for TextOverlayConfiguration);
      sub_1C0FD1A5C(v12, &qword_1EBE93B08);
      v15 = !v16;
      return v15 & 1;
    }

    sub_1C10F0DB0(v9, type metadata accessor for TextOverlayConfiguration);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FD1A5C(v12, &qword_1EBE93CC0);
    v15 = 1;
    return v15 & 1;
  }

  sub_1C0FD1A5C(v12, &qword_1EBE93B08);
  v15 = 0;
  return v15 & 1;
}

uint64_t PhotosMemoryCellTextOverlayModel.deinit()
{

  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel_combinedTitlesAttributes, &qword_1EBE93B00);
  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel__configuration, &qword_1EBE93B08);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore32PhotosMemoryCellTextOverlayModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMemoryCellTextOverlayModel.__deallocating_deinit()
{
  PhotosMemoryCellTextOverlayModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

BOOL static PhotosMemoryTitleLookContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1C1266D50() & 1) != 0)
  {
    if (v3)
    {
      if (v5)
      {
        if (v2 == v6 && v3 == v5)
        {
          return v4 == v7;
        }

        OUTLINED_FUNCTION_18();
        if (sub_1C1266D50())
        {
          return v4 == v7;
        }
      }
    }

    else if (!v5)
    {
      return v4 == v7;
    }
  }

  return 0;
}

uint64_t PhotosMemoryTitleLook.layout.getter@<X0>(_WORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_64();
  *a1 = *(v1 + v4);
  return result;
}

uint64_t PhotosMemoryTitleLook.layout.setter(__int16 *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_64();
  *(v1 + v4) = v2;
  return result;
}

void static PhotosMemoryTitleLook.== infix(_:_:)()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_18_0();
  v3 = sub_1C1264860();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AE0);
  OUTLINED_FUNCTION_15(v10);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_38_0();
  if ((sub_1C1264520() & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = v5;
  v24 = type metadata accessor for PhotosMemoryTitleLook(0);
  v16 = *(v24 + 20);
  v17 = *(v14 + 48);
  sub_1C0FE5654(v1 + v16, v2, &qword_1EBE93AE0);
  sub_1C0FE5654(v0 + v16, v2 + v17, &qword_1EBE93AE0);
  OUTLINED_FUNCTION_17_1(v2);
  if (v18)
  {
    OUTLINED_FUNCTION_17_1(v2 + v17);
    if (v18)
    {
      sub_1C0FD1A5C(v2, &qword_1EBE93AE0);
LABEL_13:
      v22 = *(v24 + 24);
      v27 = *(v1 + v22);
      v26 = *(v0 + v22);
      static PhotosMemoryTitleLayout.== infix(_:_:)(&v27, &v26);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_1C0FE5654(v2, v13, &qword_1EBE93AE0);
  OUTLINED_FUNCTION_17_1(v2 + v17);
  if (v18)
  {
    (*(v25 + 8))(v13, v3);
LABEL_10:
    sub_1C0FD1A5C(v2, &qword_1EBE93B10);
    goto LABEL_11;
  }

  v19 = v25;
  (*(v25 + 32))(v9, v2 + v17, v3);
  sub_1C10ECE78(&qword_1EDE7B8B0, MEMORY[0x1E6980FE0]);
  v20 = sub_1C1265DE0();
  v21 = *(v19 + 8);
  v21(v9, v3);
  v21(v13, v3);
  sub_1C0FD1A5C(v2, &qword_1EBE93AE0);
  if (v20)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosMemoryTitleLayout.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v3 == 3 || v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1C10ECE78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PhotosMemoryTitleLayout.Position.description.getter()
{
  v1 = 0x65436D6F74746F62;
  if (*v0 != 1)
  {
    v1 = 0x72546D6F74746F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654C6D6F74746F62;
  }
}

BOOL sub_1C10ECFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v36 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v35 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v35 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CB8);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v20 = *(v19 + 48);
  v39 = a1;
  sub_1C0FE5654(a1, &v35 - v17, &qword_1EBE93BB0);
  v40 = a2;
  sub_1C0FE5654(a2, &v18[v20], &qword_1EBE93BB0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v18[v20], 1, v4) != 1)
    {
LABEL_16:
      v29 = &qword_1EBE93CB8;
LABEL_17:
      sub_1C0FD1A5C(v18, v29);
      return 0;
    }

    sub_1C0FD1A5C(v18, &qword_1EBE93BB0);
  }

  else
  {
    sub_1C0FE5654(v18, v13, &qword_1EBE93BB0);
    if (__swift_getEnumTagSinglePayload(&v18[v20], 1, v4) == 1)
    {
LABEL_15:
      sub_1C10F0DB0(v13, type metadata accessor for TextConfiguration);
      goto LABEL_16;
    }

    sub_1C10F0AD8(&v18[v20], v8, type metadata accessor for TextConfiguration);
    v21 = *v13 == *v8 && v13[1] == v8[1];
    if (!v21 && (sub_1C1266D50() & 1) == 0)
    {
      v34 = v8;
      goto LABEL_30;
    }

    v22 = sub_1C10ED5B0(v13 + *(v4 + 20), v8 + *(v4 + 20));
    sub_1C10F0DB0(v8, type metadata accessor for TextConfiguration);
    sub_1C10F0DB0(v13, type metadata accessor for TextConfiguration);
    sub_1C0FD1A5C(v18, &qword_1EBE93BB0);
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = type metadata accessor for TextOverlayConfiguration(0);
  v24 = v23[5];
  v25 = *(v14 + 48);
  v18 = v38;
  v26 = v39;
  sub_1C0FE5654(v39 + v24, v38, &qword_1EBE93BB0);
  v27 = v40 + v24;
  v28 = v40;
  sub_1C0FE5654(v27, &v18[v25], &qword_1EBE93BB0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v4) != 1)
  {
    v13 = v37;
    sub_1C0FE5654(v18, v37, &qword_1EBE93BB0);
    if (__swift_getEnumTagSinglePayload(&v18[v25], 1, v4) == 1)
    {
      goto LABEL_15;
    }

    v31 = v36;
    sub_1C10F0AD8(&v18[v25], v36, type metadata accessor for TextConfiguration);
    v32 = *v13 == *v31 && v13[1] == v31[1];
    if (v32 || (sub_1C1266D50() & 1) != 0)
    {
      v33 = sub_1C10ED5B0(v13 + *(v4 + 20), v31 + *(v4 + 20));
      sub_1C10F0DB0(v31, type metadata accessor for TextConfiguration);
      sub_1C10F0DB0(v13, type metadata accessor for TextConfiguration);
      sub_1C0FD1A5C(v18, &qword_1EBE93BB0);
      if (v33)
      {
        goto LABEL_25;
      }

      return 0;
    }

    v34 = v31;
LABEL_30:
    sub_1C10F0DB0(v34, type metadata accessor for TextConfiguration);
    sub_1C10F0DB0(v13, type metadata accessor for TextConfiguration);
    v29 = &qword_1EBE93BB0;
    goto LABEL_17;
  }

  if (__swift_getEnumTagSinglePayload(&v18[v25], 1, v4) != 1)
  {
    goto LABEL_16;
  }

  sub_1C0FD1A5C(v18, &qword_1EBE93BB0);
LABEL_25:
  if (*(v26 + v23[6]) != *(v28 + v23[6]) || *(v26 + v23[7]) != *(v28 + v23[7]))
  {
    return 0;
  }

  return *(v26 + v23[8]) == *(v28 + v23[8]);
}

uint64_t sub_1C10ED534(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C1266D50() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for TextConfiguration(0) + 20);

  return sub_1C10ED5B0(a1 + v5, a2 + v5);
}

uint64_t sub_1C10ED5B0(uint64_t a1, uint64_t a2)
{
  static PhotosMemoryTitleLook.== infix(_:_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for TextAttributes(0);
  v6 = v5;
  v7 = v5[5];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (*(a1 + v5[6]) != *(a2 + v5[6]) || *(a1 + v5[7]) != *(a2 + v5[7]) || (sub_1C12647E0() & 1) == 0 || (sub_1C1263850() & 1) == 0)
  {
    return 0;
  }

  v12 = v6[10];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1C10ED6F8()
{
  result = qword_1EBE93B18;
  if (!qword_1EBE93B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93B18);
  }

  return result;
}

unint64_t sub_1C10ED750()
{
  result = qword_1EBE93B20[0];
  if (!qword_1EBE93B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE93B20);
  }

  return result;
}

void sub_1C10ED7AC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C10EDF14(319, &qword_1EBE93BA8, type metadata accessor for PhotosMemoryCellTextOverlayModel, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C10ED864(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AF0);
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = result;
  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = *(v6 + 64) + v14;
  v16 = *(*(result - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v7 >= v11)
    {
      v24 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v24 = (a1 + v15) & ~v14;
      if (v10 < 0x7FFFFFFE)
      {
        v25 = *((v16 + v24) & 0xFFFFFFFFFFFFFFF8);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        if ((v25 + 1) >= 2)
        {
          return v25;
        }

        else
        {
          return 0;
        }
      }
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v13);
  }

  else
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + (v15 & ~v14) + 8;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v12 + 1;
    }

    if (v19 >= 0x10000)
    {
      LODWORD(v20) = 4;
    }

    else
    {
      LODWORD(v20) = 2;
    }

    if (v19 < 0x100)
    {
      LODWORD(v20) = 1;
    }

    if (v19 >= 2)
    {
      v20 = v20;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v17);
        if (!v21)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 2:
        v21 = *(a1 + v17);
        if (!v21)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *(a1 + v17);
        if (!v21)
        {
          goto LABEL_28;
        }

LABEL_25:
        v22 = v21 - 1;
        if (v18)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        result = v12 + (v23 | v22) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_1C10EDA98(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93AF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = *(v8 + 64) + v15;
  v17 = *(*(v10 - 8) + 64) + 7;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = (v16 & ~v15) + v18;
  if (v14 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19)
    {
      v20 = 2;
    }

    else
    {
      v20 = a3 - v14 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v9 >= v13)
        {
          v27 = a1;
          v28 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v25 = ((a1 + v16) & ~v15);
          if (v13 < a2)
          {
            if ((v17 & 0xFFFFFFF8) != 0xFFFFFFF8)
            {
              v26 = ~v13 + a2;
              bzero(v25, v18);
              *v25 = v26;
            }

            return;
          }

          if (v12 < 0x7FFFFFFE)
          {
            v29 = ((v25 + v17) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v29 = 0;
              *v29 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v29 = a2;
            }

            return;
          }

          v27 = v25;
          v28 = a2;
        }

        __swift_storeEnumTagSinglePayload(v27, v28, v12, v10);
        break;
    }
  }

  else
  {
    if (v19)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v14;
    }

    if (v19)
    {
      v24 = ~v14 + a2;
      bzero(a1, (v16 & ~v15) + v18);
      *a1 = v24;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v19) = v23;
        break;
      case 2:
        *(a1 + v19) = v23;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *(a1 + v19) = v23;
        break;
      default:
        return;
    }
  }
}

void sub_1C10EDD60()
{
  sub_1C10EDF14(319, &qword_1EDE80190, type metadata accessor for PhotosMemoryCellTextOverlayModel.CombinedTitlesAttributes, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C10EDF14(319, &qword_1EDE7CA38, type metadata accessor for TextOverlayConfiguration, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C1261F70();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C10EDF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C10EDFF0()
{
  sub_1C10EDF14(319, &qword_1EDE7B8A8, MEMORY[0x1E6980FE0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for PhotosMemoryTitleLayout(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosMemoryTitleLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *sub_1C10EE21C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C10EE320()
{
  sub_1C10EDF14(319, &qword_1EDE7D760, type metadata accessor for TextConfiguration, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *storeEnumTagSinglePayload for TextOverlayConfiguration.Layout(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C10EE51C()
{
  result = type metadata accessor for TextAttributes(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C10EE5C0()
{
  type metadata accessor for PhotosMemoryTitleLook(319);
  if (v0 <= 0x3F)
  {
    sub_1C0F99B60(319, &qword_1EDE76A80);
    if (v1 <= 0x3F)
    {
      sub_1C12647F0();
      if (v2 <= 0x3F)
      {
        sub_1C1263880();
        if (v3 <= 0x3F)
        {
          sub_1C0F99B60(319, &qword_1EDE7B4C0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C10EE6E4()
{
  result = type metadata accessor for TextAttributes(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C10EE76C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PhotosMemoryCellTextOverlayModel(319);
    if (v1 <= 0x3F)
    {
      sub_1C10EED68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C10EE80C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  if (a2 <= v12)
  {
    goto LABEL_26;
  }

  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_26;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      return v12 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_18;
    }
  }

LABEL_26:
  if (v7 == v12)
  {
    v22 = a1;
    v10 = v7;
    v15 = v5;
LABEL_33:

    return __swift_getEnumTagSinglePayload(v22, v10, v15);
  }

  v23 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v22 = (v23 + v14 + 8) & ~v14;
    goto LABEL_33;
  }

  v24 = *v23;
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  return (v24 + 1);
}

void sub_1C10EEA70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + *(*(v10 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          v25 = (v27 + v16 + 8) & ~v16;
          v26 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1C10EED68()
{
  if (!qword_1EDE7BFE0)
  {
    sub_1C10D9AFC();
    v0 = sub_1C1262C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE7BFE0);
    }
  }
}

unint64_t sub_1C10EEDD4()
{
  result = qword_1EBE93C40;
  if (!qword_1EBE93C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93C40);
  }

  return result;
}

void sub_1C10EEE6C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v79 = v4;
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v8;
  v10 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C48);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v68 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C50);
  OUTLINED_FUNCTION_0();
  v75 = v14;
  v76 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v82 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C58);
  OUTLINED_FUNCTION_0();
  v77 = v18;
  v78 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v83 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C60);
  sub_1C10F0608();
  *v13 = sub_1C1009330();
  v13[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C78);
  v24 = *(v3 + 16);
  v25 = *(v3 + 24);
  v26 = v13 + *(v23 + 44);
  v27 = v13;
  v71 = v13;
  v85 = v1;
  v28 = v24;
  sub_1C10EF554(v1, v24, v25, v26);
  v29 = *(v6 + 16);
  v87 = v6 + 16;
  v88 = v29;
  v84 = v10;
  v29(v10, v1, v3);
  v86 = *(v6 + 80);
  v30 = (v86 + 32) & ~v86;
  v81 = v9;
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = v25;
  v32 = *(v6 + 32);
  v32(v31 + v30, v10, v3);
  v80 = v32;
  v33 = v6 + 32;
  v34 = (v27 + *(v89 + 36));
  *v34 = sub_1C10F0744;
  v34[1] = v31;
  v34[2] = 0;
  v34[3] = 0;
  v35 = v85;
  v36 = (*(v25 + 40))(v28, v25);
  v68[1] = v37;
  v90 = v36;
  v91 = v37;
  v38 = v84;
  v39 = v3;
  v69 = v3;
  v88(v84, v35, v3);
  v70 = v30;
  v40 = swift_allocObject();
  *(v40 + 16) = v28;
  *(v40 + 24) = v25;
  v41 = v28;
  v74 = v33;
  v32(v40 + v30, v38, v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60);
  v43 = sub_1C10F07D0();
  v44 = sub_1C1073248();
  OUTLINED_FUNCTION_2_1();
  v45 = v71;
  sub_1C1265000();

  sub_1C0FD1A5C(v45, &qword_1EBE93C48);
  v46 = v25;
  v47 = *(v25 + 48);
  v48 = v85;
  v49 = v41;
  v73 = v41;
  v72 = v46;
  v50 = v47(v41, v46);
  v71 = v51;
  v94 = v50;
  v95 = v51;
  v52 = v84;
  v53 = v69;
  v88(v84, v48, v69);
  v54 = v70;
  v55 = swift_allocObject();
  *(v55 + 16) = v49;
  *(v55 + 24) = v46;
  v80(v55 + v54, v52, v53);
  v90 = v89;
  v91 = v42;
  v92 = v43;
  v93 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v75;
  OUTLINED_FUNCTION_2_1();
  sub_1C1265000();

  v58 = OUTLINED_FUNCTION_5_5();
  v59(v58);
  v60 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8);
  v61 = v85;
  sub_1C1262BF0();
  v62 = v84;
  v63 = v60;
  v88(v84, v61, v60);
  v64 = swift_allocObject();
  v65 = v72;
  *(v64 + 16) = v73;
  *(v64 + 24) = v65;
  v80(v64 + v54, v62, v63);
  v90 = v57;
  v91 = v42;
  v92 = OpaqueTypeConformance2;
  v93 = v44;
  swift_getOpaqueTypeConformance2();
  v66 = v77;
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_2_1();
  v67 = v83;
  sub_1C1265000();

  (*(v78 + 8))(v67, v66);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10EF554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C68);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for TextOverlayConfiguration(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosMemoryCellTextOverlay();
  sub_1C10EC0F0(v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C0FD1A5C(v13, &qword_1EBE93B08);
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
  }

  else
  {
    sub_1C10F0AD8(v13, v16, type metadata accessor for TextOverlayConfiguration);
    v18 = *&v16[*(v14 + 24)];
    *v10 = v16[*(v14 + 32)];
    *(v10 + 1) = v18;
    v10[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C70);
    sub_1C10EF808(v16, a1, a3, &v10[*(v19 + 56)]);
    sub_1C10EFE40(v16, a1, a2, a3, &v10[*(v19 + 60)]);
    LOBYTE(v19) = sub_1C1264470();
    sub_1C12628A0();
    v20 = &v10[*(v8 + 36)];
    *v20 = v19;
    *(v20 + 1) = v21;
    *(v20 + 2) = v22;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
    v20[40] = 0;
    sub_1C0FE4040(v10, a4, &qword_1EBE93C68);
    __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    return sub_1C10F0DB0(v16, type metadata accessor for TextOverlayConfiguration);
  }
}

uint64_t sub_1C10EF808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[0] = a3;
  v17[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C88);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v17 - v10;
  v12 = type metadata accessor for TextConfiguration(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FE5654(a1, v11, &qword_1EBE93BB0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C0FD1A5C(v11, &qword_1EBE93BB0);
    v15 = 1;
  }

  else
  {
    sub_1C10F0AD8(v11, v14, type metadata accessor for TextConfiguration);
    type metadata accessor for PhotosMemoryCellTextOverlay();
    sub_1C10EFA2C(v14, v8);
    sub_1C10F0DB0(v14, type metadata accessor for TextConfiguration);
    sub_1C0FE4040(v8, a4, &qword_1EBE93C88);
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v15, 1, v6);
}

void *sub_1C10EFA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CA0);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C98);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CB0);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = sub_1C10EABEC();
  v14 = v13;
  v16 = v15;
  v33 = v17;
  v18 = a1 + *(type metadata accessor for TextConfiguration(0) + 20);
  v19 = *(type metadata accessor for PhotosMemoryTitleLook(0) + 20);
  KeyPath = swift_getKeyPath();
  v21 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CA8) + 36)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B10);
  sub_1C0FE5654(v18 + v19, v21 + *(v22 + 28), &qword_1EBE93AE0);
  *v21 = KeyPath;
  *v4 = v12;
  *(v4 + 1) = v14;
  v4[16] = v16 & 1;
  *(v4 + 3) = v33;
  v23 = (v18 + *(type metadata accessor for TextAttributes(0) + 20));
  v24 = *v23;
  LOBYTE(v21) = *(v23 + 8);
  v25 = swift_getKeyPath();
  v26 = v34;
  v27 = &v4[*(v34 + 36)];
  *v27 = v25;
  *(v27 + 1) = v24;
  v27[16] = v21;
  v28 = sub_1C10F0C40();
  sub_1C1264AB0();
  sub_1C0FD1A5C(v4, &qword_1EBE93CA0);
  __src[0] = v26;
  __src[1] = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_1C1264B10();
  (*(v36 + 8))(v8, v29);
  sub_1C12659A0();
  sub_1C1263390();
  v30 = v39;
  (*(v37 + 32))(v39, v11, v38);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C88);
  return memcpy((v30 + *(v31 + 36)), __src, 0x70uLL);
}

uint64_t sub_1C10EFE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a2;
  v26 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C88);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93C90);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93BB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v25 - v13;
  v15 = type metadata accessor for TextConfiguration(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TextOverlayConfiguration(0);
  sub_1C0FE5654(a1 + *(v18 + 20), v14, &qword_1EBE93BB0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C0FD1A5C(v14, &qword_1EBE93BB0);
    v19 = 1;
    v20 = v26;
  }

  else
  {
    sub_1C10F0AD8(v14, v17, type metadata accessor for TextConfiguration);
    v21 = type metadata accessor for PhotosMemoryCellTextOverlay();
    sub_1C10EFA2C(v17, v8);
    v27 = sub_1C10F0128(v21);
    v28 = v22;
    sub_1C10F0B34();
    sub_1C0FDB9AC();
    sub_1C1264C80();

    sub_1C0FD1A5C(v8, &qword_1EBE93C88);
    sub_1C10F0DB0(v17, type metadata accessor for TextConfiguration);
    v23 = v26;
    sub_1C0FE4040(v11, v26, &qword_1EBE93C90);
    v19 = 0;
    v20 = v23;
  }

  return __swift_storeEnumTagSinglePayload(v20, v19, 1, v9);
}

uint64_t sub_1C10F0128(uint64_t a1)
{
  v3 = sub_1C1265E50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(a1 + 36));
  v8 = *(v7 + 80);
  if (v8)
  {
    v9 = *(v7 + 72);
    v11 = a1 + 16;
    v10 = *(a1 + 16);
    v12 = *(*(v11 + 8) + 8);
    v13 = *(v12 + 8);

    if (v13(v10, v12))
    {
      sub_1C1265DF0();
      v14 = static String.photosSwiftUICoreLocalized(_:)(v6);
      v16 = v15;
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90800);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C12A3440;
    *(v17 + 32) = v9;
    *(v17 + 40) = v8;
    *(v17 + 48) = v14;
    *(v17 + 56) = v16;
    v19[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0);
    sub_1C0FDB6D4(&qword_1EDE7B700, &qword_1EBE906A0);
    v8 = sub_1C1265D70();
  }

  return v8;
}

void sub_1C10F0344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PhotosMemoryCellTextOverlay();
  v5 = (*(a3 + 40))(a2, a3);
  sub_1C10E8900(v5, v6);
  v7 = (*(a3 + 48))(a2, a3);
  sub_1C10E89A8(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8);
  sub_1C1262BF0();
  sub_1C10E8A18(v9, 0);
}

uint64_t sub_1C10F041C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = *(result + 8);
  v9 = *a2;
  v8 = a2[1];
  if (!v8)
  {
    if (!v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v7 || (v9 == *result ? (v10 = v8 == v7) : (v10 = 0), !v10 && (result = sub_1C1266D50(), (result & 1) == 0)))
  {
LABEL_10:
    type metadata accessor for PhotosMemoryCellTextOverlay();

    return a6(v9, v8);
  }

  return result;
}

void sub_1C10F04CC(double *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 != *a1)
  {
    type metadata accessor for PhotosMemoryCellTextOverlay();
    sub_1C10E8A18(v2, 0);
  }
}

uint64_t sub_1C10F0528()
{
  sub_1C1264700();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_13();
  (*(v3 + 104))(v2 - v1, *MEMORY[0x1E6980F00]);
  sub_1C10D9AFC();
  return sub_1C1262BD0();
}

unint64_t sub_1C10F0608()
{
  result = qword_1EDE77470;
  if (!qword_1EDE77470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C60);
    sub_1C10F068C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77470);
  }

  return result;
}

unint64_t sub_1C10F068C()
{
  result = qword_1EDE77478;
  if (!qword_1EDE77478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C68);
    sub_1C0FDB6D4(qword_1EDE78960, &qword_1EBE93C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77478);
  }

  return result;
}

void sub_1C10F0744()
{
  OUTLINED_FUNCTION_23_7();
  v0 = type metadata accessor for PhotosMemoryCellTextOverlay();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_23_7();

  sub_1C10F0344(v1, v2, v3);
}

unint64_t sub_1C10F07D0()
{
  result = qword_1EDE772C8;
  if (!qword_1EDE772C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C48);
    sub_1C0FDB6D4(&qword_1EDE76BD0, &qword_1EBE93C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772C8);
  }

  return result;
}

uint64_t sub_1C10F08A0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = type metadata accessor for PhotosMemoryCellTextOverlay();
  OUTLINED_FUNCTION_15(v9);
  OUTLINED_FUNCTION_46_2();
  return sub_1C10F041C(a1, a2, v3 + v10, v7, v8, a3);
}

uint64_t objectdestroy_108Tm()
{
  v3 = *(v0 + 16);
  type metadata accessor for PhotosMemoryCellTextOverlay();
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_51_2();
  (*(v4 + 8))(v2, v3);

  v5 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93BB8);
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v2 + v5);

  return swift_deallocObject();
}

void sub_1C10F0A48()
{
  OUTLINED_FUNCTION_18_0();
  v2 = type metadata accessor for PhotosMemoryCellTextOverlay();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_46_2();

  sub_1C10F04CC(v1, v0);
}

uint64_t sub_1C10F0AD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

unint64_t sub_1C10F0B34()
{
  result = qword_1EDE77388;
  if (!qword_1EDE77388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93CA0);
    sub_1C10F0C40();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77388);
  }

  return result;
}

unint64_t sub_1C10F0C40()
{
  result = qword_1EDE7BDB0;
  if (!qword_1EDE7BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93CA0);
    sub_1C10F0CF8();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDB0);
  }

  return result;
}

unint64_t sub_1C10F0CF8()
{
  result = qword_1EDE7BE90;
  if (!qword_1EDE7BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93CA8);
    sub_1C0FDB6D4(&qword_1EDE7B918, &qword_1EBE90B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE90);
  }

  return result;
}

uint64_t sub_1C10F0DB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C10F0E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v133 = a1;
  swift_getTupleTypeMetadata3();
  v4 = sub_1C1265B00();
  v117[3] = swift_getWitnessTable();
  v117[4] = v4;
  v5 = sub_1C12654C0();
  v130 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v126 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v125 = v117 - v8;
  swift_getTupleTypeMetadata3();
  v9 = sub_1C1265B00();
  v117[1] = swift_getWitnessTable();
  v117[2] = v9;
  v10 = sub_1C12654C0();
  v142 = v5;
  v11 = sub_1C1263C30();
  v127 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v134 = (v117 - v12);
  v140 = v10;
  v129 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v122 = v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v121 = v117 - v16;
  v132 = v3;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v117[0] = swift_getWitnessTable();
  v17 = sub_1C12655A0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v18 = sub_1C12654C0();
  v128 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v120 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v119 = v117 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DD0);
  v22 = sub_1C1263190();
  v144 = v18;
  v23 = sub_1C1263C30();
  v124 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v123 = v117 - v24;
  v145 = v17;
  v25 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v117 - v27;
  v138 = v22;
  v29 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v118 = v117 - v34;
  v139 = v35;
  v141 = v11;
  v36 = v131;
  v37 = sub_1C1263C30();
  v136 = *(v37 - 8);
  v137 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v135 = v117 - v39;
  switch(*v36)
  {
    case 1:
      MEMORY[0x1EEE9AC00](v38);
      v92 = v132;
      v91 = v133;
      v117[-6] = v2;
      v117[-5] = v92;
      *&v117[-4] = v91[2];
      v117[-2] = v36;
      sub_1C1012734();
      v93 = v120;
      sub_1C12654B0();
      v94 = v144;
      WitnessTable = swift_getWitnessTable();
      v96 = v119;
      sub_1C0FDBA4C(v93, v94, WitnessTable);
      v97 = *(v128 + 8);
      v128 += 8;
      v134 = v97;
      v97(v93, v94);
      sub_1C0FDBA4C(v96, v94, WitnessTable);
      v98 = swift_getWitnessTable();
      v99 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
      v156 = v98;
      v157 = v99;
      v100 = swift_getWitnessTable();
      v101 = v123;
      sub_1C1112E18();
      v154 = v100;
      v155 = WitnessTable;
      v102 = v139;
      swift_getWitnessTable();
      v103 = swift_getWitnessTable();
      v104 = swift_getWitnessTable();
      v152 = v103;
      v153 = v104;
      swift_getWitnessTable();
      v56 = v135;
      sub_1C1112D68();
      (*(v124 + 8))(v101, v102);
      v105 = v134;
      v134(v120, v94);
      v105(v119, v94);
      break;
    case 2:
      v58 = sub_1C12638D0();
      MEMORY[0x1EEE9AC00](v58);
      v60 = v132;
      v59 = v133;
      v117[-6] = v2;
      v117[-5] = v60;
      *&v117[-4] = v59[2];
      v117[-2] = v36;
      v61 = v122;
      sub_1C12654B0();
      v62 = v140;
      v63 = swift_getWitnessTable();
      v64 = v121;
      sub_1C0FDBA4C(v61, v62, v63);
      v65 = *(v129 + 8);
      v129 += 8;
      v133 = v65;
      (v65)(v61, v62);
      sub_1C0FDBA4C(v64, v62, v63);
      v66 = swift_getWitnessTable();
      sub_1C1112D68();
      v67 = swift_getWitnessTable();
      v68 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
      v162 = v67;
      v163 = v68;
      v69 = swift_getWitnessTable();
      v70 = swift_getWitnessTable();
      v160 = v69;
      v161 = v70;
      swift_getWitnessTable();
      v158 = v63;
      v159 = v66;
      v71 = v141;
      swift_getWitnessTable();
      v72 = v134;
      v56 = v135;
      sub_1C1112E18();
      (*(v127 + 8))(v72, v71);
      v73 = v133;
      (v133)(v122, v62);
      v73(v121, v62);
      break;
    case 3:
      v74 = sub_1C12638D0();
      MEMORY[0x1EEE9AC00](v74);
      v76 = v132;
      v75 = v133;
      v117[-6] = v2;
      v117[-5] = v76;
      *&v117[-4] = v75[2];
      v117[-2] = v36;
      v77 = v126;
      sub_1C12654B0();
      v78 = v142;
      v79 = swift_getWitnessTable();
      v80 = v125;
      sub_1C0FDBA4C(v77, v78, v79);
      v81 = *(v130 + 8);
      v130 += 8;
      v133 = v81;
      (v81)(v77, v78);
      sub_1C0FDBA4C(v80, v78, v79);
      v82 = swift_getWitnessTable();
      v83 = v79;
      sub_1C1112E18();
      v84 = swift_getWitnessTable();
      v85 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
      v176 = v84;
      v177 = v85;
      v86 = swift_getWitnessTable();
      v87 = swift_getWitnessTable();
      v174 = v86;
      v175 = v87;
      swift_getWitnessTable();
      v172 = v82;
      v173 = v83;
      v88 = v141;
      swift_getWitnessTable();
      v89 = v134;
      v56 = v135;
      sub_1C1112E18();
      (*(v127 + 8))(v89, v88);
      v90 = v133;
      (v133)(v126, v78);
      v90(v125, v78);
      break;
    default:
      v40 = sub_1C1263AA0();
      MEMORY[0x1EEE9AC00](v40);
      v42 = v132;
      v41 = v133;
      v117[-6] = v2;
      v117[-5] = v42;
      *&v117[-4] = v41[2];
      v117[-2] = v36;
      sub_1C1265590();
      v43 = v29;
      v44 = v145;
      v45 = swift_getWitnessTable();
      sub_1C1264DD0();
      (*(v25 + 8))(v28, v44);
      v46 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
      v150 = v45;
      v151 = v46;
      v47 = v138;
      v48 = swift_getWitnessTable();
      v49 = v118;
      sub_1C0FDBA4C(v32, v47, v48);
      v50 = *(v43 + 8);
      v133 = (v43 + 8);
      v134 = v50;
      v50(v32, v47);
      sub_1C0FDBA4C(v49, v47, v48);
      v51 = swift_getWitnessTable();
      v52 = v123;
      sub_1C1112D68();
      v148 = v48;
      v149 = v51;
      v53 = v139;
      v132 = swift_getWitnessTable();
      v54 = swift_getWitnessTable();
      v55 = swift_getWitnessTable();
      v146 = v54;
      v147 = v55;
      swift_getWitnessTable();
      v56 = v135;
      sub_1C1112D68();
      (*(v124 + 8))(v52, v53);
      v57 = v134;
      v134(v32, v47);
      v57(v118, v47);
      break;
  }

  v106 = swift_getWitnessTable();
  v107 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
  v170 = v106;
  v171 = v107;
  v108 = swift_getWitnessTable();
  v109 = swift_getWitnessTable();
  v168 = v108;
  v169 = v109;
  v110 = swift_getWitnessTable();
  v111 = swift_getWitnessTable();
  v112 = swift_getWitnessTable();
  v166 = v111;
  v167 = v112;
  v113 = swift_getWitnessTable();
  v164 = v110;
  v165 = v113;
  v114 = v137;
  v115 = swift_getWitnessTable();
  sub_1C0FDBA4C(v56, v114, v115);
  return (*(v136 + 8))(v56, v114);
}

uint64_t sub_1C10F1F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a5;
  v20[1] = a6;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v10 = sub_1C12655A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  sub_1C1263AB0();
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = v20[0];
  v20[8] = a1;
  sub_1C1265590();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  (*(v11 + 16))(v13, v16, v10);
  v22 = 0;
  v23 = 0;
  v24[0] = v13;
  v24[1] = &v22;
  v21[0] = v10;
  v21[1] = MEMORY[0x1E6981840];
  v20[10] = WitnessTable;
  v20[11] = MEMORY[0x1E6981838];
  sub_1C119EE80(v24, 2, v21);
  v18(v16, v10);
  return (v18)(v13, v10);
}

void sub_1C10F2180()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v43 = v10;
  OUTLINED_FUNCTION_1();
  v42 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v44 = (v13 - v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v41 - v25;
  v48 = v27;
  v49 = v28;
  v50 = v29;
  v51 = v30;
  v31 = type metadata accessor for TitleSubtitleStack();
  OUTLINED_FUNCTION_23_7();
  sub_1C0FDBA4C(v32, v33, v34);
  v35 = v9 + *(v31 + 60);
  v36 = v1;
  sub_1C0FDBA4C(v35, v5, v1);
  (*(v19 + 16))(v23, v26, v7);
  v48 = v23;
  v37 = v42;
  v38 = v44;
  (*(v42 + 16))(v44, v17, v5);
  v49 = v38;
  v47[0] = v7;
  v47[1] = v5;
  v45 = v3;
  v46 = v36;
  sub_1C119EE80(&v48, 2, v47);
  v39 = *(v37 + 8);
  v39(v17, v5);
  v40 = *(v19 + 8);
  v40(v26, v7);
  v39(v44, v5);
  v40(v23, v7);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10F23D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v37 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v48 = v26;
  v27 = type metadata accessor for TitleSubtitleStack();
  sub_1C0FDBA4C(a1 + *(v27 + 56), a2, a4);
  v28 = a1 + *(v27 + 60);
  v29 = a5;
  sub_1C0FDBA4C(v28, a3, a5);
  (*(v16 + 16))(v19, v22, a2);
  v45 = v19;
  v30 = v36;
  v31 = v37;
  (*(v37 + 16))(v36, v14, a3);
  v43 = 0;
  v44 = 0;
  v46 = v30;
  v47 = &v43;
  v42[0] = a2;
  v42[1] = a3;
  v42[2] = MEMORY[0x1E6981840];
  v39 = a4;
  v40 = v29;
  v41 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v45, 3, v42);
  v32 = *(v31 + 8);
  v32(v14, a3);
  v33 = *(v16 + 8);
  v33(v22, a2);
  v32(v30, a3);
  return (v33)(v19, a2);
}

uint64_t sub_1C10F2684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v48 = v26;
  v27 = type metadata accessor for TitleSubtitleStack();
  sub_1C0FDBA4C(a1 + *(v27 + 60), a3, a5);
  v28 = a1 + *(v27 + 56);
  v29 = a4;
  sub_1C0FDBA4C(v28, a2, a4);
  v43 = 0;
  v44 = 0;
  v45 = &v43;
  (*(v16 + 16))(v19, v22, a3);
  v46 = v19;
  v31 = v36;
  v30 = v37;
  (*(v36 + 16))(v37, v14, a2);
  v47 = v30;
  v42[0] = MEMORY[0x1E6981840];
  v42[1] = a3;
  v42[2] = a2;
  v39 = MEMORY[0x1E6981838];
  v40 = a5;
  v41 = v29;
  sub_1C119EE80(&v45, 3, v42);
  v32 = *(v31 + 8);
  v32(v14, a2);
  v33 = *(v16 + 8);
  v33(v22, a3);
  v32(v30, a2);
  return (v33)(v19, a3);
}

uint64_t sub_1C10F2938()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EDE77700);
  __swift_project_value_buffer(v0, qword_1EDE77700);
  return sub_1C12626E0();
}

uint64_t sub_1C10F29C0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38_0();
  sub_1C0FE5654(a1, v1, &qword_1EBE93AE0);
  return sub_1C1263770();
}

uint64_t sub_1C10F2A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10F2AE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_1C10F2B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93B00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10F2BAC(uint64_t a1)
{
  v4 = *(v1 + 3);
  v16 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 11);
  v8 = *(v1 + 12);
  v9 = v1[15];
  v10 = v1[16];
  v11 = v1[17];
  v12 = v1[18];
  swift_task_alloc();
  OUTLINED_FUNCTION_32_6();
  *(v2 + 16) = v13;
  *v13 = v14;
  v13[1] = sub_1C0FA3CCC;

  return sub_1C10E8C54(v9, v10, v11, v12, a1, v16, v4, v5, v6, (v1 + 6), v7, v8);
}

uint64_t objectdestroyTm_6()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C10F2D10()
{
  OUTLINED_FUNCTION_18_0();
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_32_6();
  *(v3 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1C0FA3CCC;

  return sub_1C10E7884(v2, v0, v5, v4);
}

void sub_1C10F2DBC()
{
  sub_1C0F99B60(319, &qword_1EDE7B4C0);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C10F2E80(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0xFC)
  {
    v14 = 252;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 17) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      if (v10 > 0xFC)
      {
        v25 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11;
        if (v7 != v14)
        {
          v25 = (v25 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return __swift_getEnumTagSinglePayload(v25, v7, v5);
      }

      else
      {
        v24 = *a1;
        if (v24 >= 4)
        {
          return v24 - 3;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_1C10F3098(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFC)
  {
    v14 = 252;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 17) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 >= a2)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v13 > 0xFC)
          {
            v28 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v15 + 17) & ~v15;
            if (v9 != v14)
            {
              v28 = (v28 + v16 + v17) & ~v17;
              v9 = v12;
              v7 = v10;
            }

            __swift_storeEnumTagSinglePayload(v28, a2, v9, v7);
          }

          else
          {
            *a1 = a2 + 3;
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          *(a1 + 2) = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v18) = v24;
        break;
      case 2:
        *(a1 + v18) = v24;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(a1 + v18) = v24;
        break;
      default:
        return;
    }
  }
}

void OUTLINED_FUNCTION_58_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_slowAlloc();
}

uint64_t sub_1C10F3558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10521F0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10F35B0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CF0) + 36)) = a1 & 1;

  return sub_1C10F3638(a1 & 1, a2, a3, a4 & 1, a5);
}

uint64_t sub_1C10F3638@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v68 = a1;
  v71 = a5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CF8);
  MEMORY[0x1EEE9AC00](v70);
  v63 = &v60 - v8;
  v64 = type metadata accessor for OneUpAnimatedInfoButton(0);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D00);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D08);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v60 - v18;
  v19 = sub_1C12637E0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a3;
  if (a4)
  {
    swift_unknownObjectRetain();
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_1C1266420();
    v23 = sub_1C1264410();
    v61 = v20;
    v24 = v19;
    v25 = a4;
    v26 = a3;
    v27 = v23;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v28 = v26;
    a4 = v25;
    v19 = v24;
    v20 = v61;
    sub_1C0FF9034(a2, v28, 0);
    (*(v20 + 8))(v22, v19);
    a3 = v75;
    if (!v74)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      v38 = &v17[v13[11]];
      *v38 = swift_getKeyPath();
      v38[8] = 0;
      v39 = &v17[v13[12]];
      *v39 = swift_getKeyPath();
      v39[8] = 0;
      v40 = &v17[v13[13]];
      *v40 = swift_getKeyPath();
      v40[8] = 0;
      v41 = &v17[v13[14]];
      *v41 = swift_getKeyPath();
      v41[8] = 0;
      *&v17[v13[9]] = 0x4020000000000000;
      v42 = &v17[v13[10]];
      *v42 = 0x4018000000000000;
      v42[8] = 0;
      v43 = swift_getKeyPath();
      *v12 = swift_getKeyPath();
      *(v12 + 1) = 0;
      v12[16] = 0;
      type metadata accessor for Model(0);
      sub_1C12628D0();
      v44 = v65;
      sub_1C10388D4(v12, v65);
      *v17 = v43;
      v17[8] = 0;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D10);
      sub_1C10388D4(v44, &v17[*(v45 + 48)]);
      sub_1C1058D54(v43, 0);
      sub_1C1040D5C(v12);
      sub_1C1040D5C(v44);
      sub_1C0FA03F4(v43, 0);
      v46 = swift_getKeyPath();
      LOBYTE(v44) = v68 & 1;
      v47 = v66;
      sub_1C102EFA0(v17, v66, &qword_1EBE93D00);
      v48 = v63;
      *v63 = v44;
      *(v48 + 8) = 0x4044000000000000;
      *(v48 + 16) = KeyPath;
      *(v48 + 24) = 0;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D18);
      sub_1C102EFA0(v47, v48 + *(v49 + 64), &qword_1EBE93D00);
      v50 = v48 + *(v49 + 80);
      *v50 = v44;
      *(v50 + 8) = 0x4044000000000000;
      *(v50 + 16) = v46;
      *(v50 + 24) = 0;
      v62 = KeyPath;
      swift_retain_n();

      sub_1C0F9E21C(v47, &qword_1EBE93D00);

      sub_1C102EFA0(v48, v67, &qword_1EBE93CF8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E40);
      sub_1C0FDB6D4(&qword_1EBE91E48, &qword_1EBE91E40);
      sub_1C0FDB6D4(&qword_1EBE93D20, &qword_1EBE93CF8);
      sub_1C1263C20();

      sub_1C0F9E21C(v48, &qword_1EBE93CF8);
      return sub_1C0F9E21C(v17, &qword_1EBE93D00);
    }
  }

  ObjectType = swift_getObjectType();
  v30 = (*(a3 + 32))(ObjectType, a3);
  swift_unknownObjectRelease();
  if ((v30 & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((a4 & 1) == 0)
  {

    sub_1C1266420();
    v52 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(a2, v62, 0);
    (*(v20 + 8))(v22, v19);
    v31 = v75;
    if (v74)
    {
      goto LABEL_8;
    }

LABEL_11:
    v36 = 0;
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  v31 = v62;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_8:
  v32 = swift_getObjectType();
  (*(v31 + 232))(v32, v31);
  v34 = v33;
  swift_unknownObjectRelease();
  v35 = swift_getObjectType();
  v36 = (*(v34 + 8))(v35, v34);
  swift_unknownObjectRelease();
LABEL_12:
  v53 = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = v36 < 2;
  v57 = swift_getKeyPath();
  v58 = v68 & 1;
  LOBYTE(v74) = 0;
  v73 = 0;
  v72 = 0;
  swift_retain_n();

  sub_1C1058D54(v54, 0);

  sub_1C0FA03F4(v54, 0);

  v59 = v67;
  *v67 = v58;
  *(v59 + 1) = 0x4044000000000000;
  *(v59 + 2) = v53;
  v59[24] = 0;
  *(v59 + 4) = v36;
  *(v59 + 5) = v54;
  v59[48] = 0;
  *(v59 + 7) = v55;
  *(v59 + 8) = sub_1C1023064;
  *(v59 + 9) = v56;
  v59[80] = v58;
  *(v59 + 11) = 0x4044000000000000;
  *(v59 + 12) = v57;
  v59[104] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E40);
  sub_1C0FDB6D4(&qword_1EBE91E48, &qword_1EBE91E40);
  sub_1C0FDB6D4(&qword_1EBE93D20, &qword_1EBE93CF8);
  sub_1C1263C20();
}

_BYTE *storeEnumTagSinglePayload for OneUpStorageManagementToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C10F40F4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D30) + 36)) = a1 & 1;

  return sub_1C10F414C(a1 & 1, a2);
}

uint64_t sub_1C10F414C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OneUpAnimatedInfoButton(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  KeyPath = swift_getKeyPath();
  *v9 = swift_getKeyPath();
  *(v9 + 1) = 0;
  v9[16] = 0;
  type metadata accessor for Model(0);
  sub_1C12628D0();
  v11 = swift_getKeyPath();
  sub_1C10388D4(v9, v6);
  v12 = a1 & 1;
  *a2 = a1 & 1;
  *(a2 + 8) = 0x4044000000000000;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D38);
  sub_1C10388D4(v6, a2 + *(v13 + 64));
  v14 = a2 + *(v13 + 80);
  *v14 = v12;
  *(v14 + 8) = 0x4044000000000000;
  *(v14 + 16) = v11;
  *(v14 + 24) = 0;

  sub_1C1040D5C(v9);

  sub_1C1040D5C(v6);
}

unint64_t sub_1C10F42EC()
{
  result = qword_1EBE93D40;
  if (!qword_1EBE93D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93D40);
  }

  return result;
}

uint64_t sub_1C10F43DC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return sub_1C12656F0();
}

uint64_t PhotosSection.init(alignment:verticalSpacing:header:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 8) = a7;
  return result;
}

uint64_t PhotosSection.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = sub_1C12641D0();
  OUTLINED_FUNCTION_0();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  sub_1C1265710();
  v28 = *(a1 + 32);
  v40 = v28;
  v41 = MEMORY[0x1E6981E60];
  OUTLINED_FUNCTION_0_44();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  OUTLINED_FUNCTION_1_1();
  v13 = swift_getWitnessTable();
  *&v42[0] = v7;
  *(&v42[0] + 1) = v13;
  v27[1] = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v27 - v21;
  v23 = v31[1];
  v42[0] = *v31;
  v42[1] = v23;
  v42[2] = v31[2];
  v35 = v30;
  v36 = v28;
  v37 = v42;
  sub_1C1265590();
  sub_1C12641C0();
  sub_1C1264D50();
  (*(v32 + 8))(v6, v33);
  (*(v9 + 8))(v12, v7);
  v38 = v7;
  v39 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v25 = *(v16 + 8);
  v25(v19, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v25)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_1C10F4844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1265710();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  sub_1C10F43DC(*(a1 + 32));
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = MEMORY[0x1E6981E60];
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v11, v8, WitnessTable);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_1C0FDBA4C(v14, v8, WitnessTable);
  return (v16)(v14, v8);
}

double sub_1C10F49FC()
{
  qword_1EBE93D68 = 0;
  result = 0.0;
  xmmword_1EBE93D48 = 0u;
  unk_1EBE93D58 = 0u;
  return result;
}

uint64_t sub_1C10F4A14@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7A0C0 != -1)
  {
    swift_once();
  }

  return sub_1C10F4C0C(&xmmword_1EBE93D48, a1);
}

uint64_t sub_1C10F4A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10F4F44();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.photosSectionIdentifier.getter()
{
  sub_1C10F4B2C();

  return sub_1C12637F0();
}

unint64_t sub_1C10F4B2C()
{
  result = qword_1EDE7A0B0;
  if (!qword_1EDE7A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A0B0);
  }

  return result;
}

uint64_t EnvironmentValues.photosSectionIdentifier.setter(uint64_t a1)
{
  sub_1C10F4C0C(a1, v3);
  sub_1C10F4B2C();
  sub_1C1263800();
  return sub_1C10F4C7C(a1);
}

uint64_t sub_1C10F4C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10F4C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE8FE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues.photosSectionIdentifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_1C10F4B2C();
  sub_1C12637F0();
  return sub_1C10F4D60;
}

void sub_1C10F4D60(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1C10F4C0C(*a1, v2 + 40);
    sub_1C10F4C0C(v2 + 40, v2 + 80);
    sub_1C1263800();
    sub_1C10F4C7C(v2 + 40);
  }

  else
  {
    sub_1C10F4C0C(*a1, v2 + 40);
    sub_1C1263800();
  }

  sub_1C10F4C7C(v2);

  free(v2);
}

uint64_t sub_1C10F4E54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10F4E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C10F4ED0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1C10F4F44()
{
  result = qword_1EDE76908;
  if (!qword_1EDE76908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76908);
  }

  return result;
}

uint64_t OneUpChromeBarlessView.init(model:libraryScrubber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = swift_getKeyPath();
  *(a4 + 32) = 0;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = swift_getKeyPath();
  *(a4 + 72) = 0;
  v8 = *(type metadata accessor for OneUpChromeBarlessView() + 52);
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  result = swift_storeEnumTagMultiPayload();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t OneUpChromeBarlessView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v43 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v49 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v39 = *(a1 + 24);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OneUpChromeBarlessView.ChromeBody();
  OUTLINED_FUNCTION_0();
  v42 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D70);
  v13 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v46 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v39 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D78);
  v17 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v47 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v45 = &v39 - v22;
  v24 = *v2;
  v23 = v2[1];
  v25 = v3[2];
  swift_retain_n();

  sub_1C10F5570(v24, v23, v25, v12);
  v26 = a1;
  sub_1C10F562C();
  LOBYTE(v25) = sub_1C1222F4C();

  v27 = v40;
  if (v25)
  {
    v28 = v43;
    (*(v49 + 104))(v40, *MEMORY[0x1E697DBA8], v43);
  }

  else
  {
    sub_1C10F576C(v26, v40);
    v28 = v43;
  }

  WitnessTable = swift_getWitnessTable();
  v30 = v41;
  sub_1C1264A10();
  (*(v49 + 8))(v27, v28);
  (*(v42 + 8))(v12, v8);
  swift_getKeyPath();
  v54 = v24;
  v31 = sub_1C10F8E04(&unk_1EDE7B960);
  v52 = WitnessTable;
  v53 = v31;
  v32 = swift_getWitnessTable();
  v33 = v44;
  sub_1C1264A30();

  (*(v46 + 8))(v30, v13);
  v34 = sub_1C10F8E04(&qword_1EDE7B970);
  v50 = v32;
  v51 = v34;
  v35 = swift_getWitnessTable();
  v36 = v45;
  sub_1C0FDBA4C(v33, v17, v35);
  v37 = *(v47 + 8);
  v37(v33, v17);
  sub_1C0FDBA4C(v36, v17, v35);
  return (v37)(v36, v17);
}

uint64_t sub_1C10F5570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = sub_1C1012790() & 1;
  *(a4 + 32) = v5;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  v6 = *(type metadata accessor for OneUpChromeBarlessView.ChromeBody() + 48);
  *(a4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C10F562C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

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

uint64_t sub_1C10F576C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 52), &v15 - v10, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10F5970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C117024C();
  *a1 = result;
  return result;
}

uint64_t sub_1C10F59F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v2 = *(a1 + 16);
  v25 = *(a1 + 24);
  v35 = type metadata accessor for OneUpChromeBarlessView.ChromeBody.SafeAreaSpacer();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D90);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D98);
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v38 = sub_1C12655A0();
  v39 = v35;
  swift_getTupleTypeMetadata();
  sub_1C1265B00();
  swift_getWitnessTable();
  v3 = sub_1C12655A0();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  v6 = sub_1C1263190();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93D78);
  v9 = sub_1C1263190();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v28 = v2;
  v29 = v25;
  v15 = v26;
  v30 = v26;
  sub_1C10A7F5C();
  sub_1C1265590();
  sub_1C12644D0();
  WitnessTable = swift_getWitnessTable();
  sub_1C12631E0();
  sub_1C1264BF0();
  (*(v22 + 8))(v5, v3);
  swift_getKeyPath();
  v35 = *v15;
  v33 = WitnessTable;
  v34 = MEMORY[0x1E6980A30];

  v17 = swift_getWitnessTable();
  sub_1C1264A30();

  (*(v23 + 8))(v8, v6);
  v18 = sub_1C10F8E04(&qword_1EDE7B970);
  v31 = v17;
  v32 = v18;
  v19 = swift_getWitnessTable();
  sub_1C0FDBA4C(v11, v9, v19);
  v20 = *(v24 + 8);
  v20(v11, v9);
  sub_1C0FDBA4C(v14, v9, v19);
  return (v20)(v14, v9);
}

uint64_t sub_1C10F5F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D98);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D90);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v58[0] = sub_1C1214694();
  LOBYTE(v58[1]) = 0;
  v15 = type metadata accessor for OneUpChromeBarlessView.ChromeBody.SafeAreaSpacer();
  WitnessTable = swift_getWitnessTable();
  v26 = v15;
  sub_1C0FDBA4C(v58, v15, WitnessTable);
  *v14 = sub_1C1263AA0();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v16 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DA0) + 44)];
  v27 = v14;
  sub_1C10F64B0(a1, a2, a3, v16);
  *v10 = sub_1C1263AA0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DA8);
  sub_1C10F6E58(a1, a2, a3, &v10[*(v17 + 44)]);
  v36 = a2;
  v37 = a3;
  v38 = a1;
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C10A7F5C();
  sub_1C1265590();
  memcpy(v57, v58, 0xD1uLL);
  v18 = sub_1C12655A0();
  v28 = swift_getWitnessTable();
  sub_1C0FDBA4C(v57, v18, v28);
  memcpy(v55, v57, 0xD1uLL);
  v19 = *(v18 - 8);
  v29 = *(v19 + 8);
  v29(v55, v18);
  v58[0] = sub_1C1214804();
  LOBYTE(v58[1]) = 0;
  v20 = v15;
  v21 = WitnessTable;
  sub_1C0FDBA4C(v58, v20, WitnessTable);
  v48 = v53;
  v49 = v54;
  v50[0] = &v48;
  v22 = v34;
  sub_1C0FE5654(v14, v34, &qword_1EBE93D90);
  v50[1] = v22;
  v23 = v35;
  sub_1C0FE5654(v10, v35, &qword_1EBE93D98);
  v50[2] = v23;
  memcpy(v56, v52, 0xD1uLL);
  memcpy(v47, v52, 0xD1uLL);
  v45 = v50[5];
  v46 = v51;
  v50[3] = v47;
  v50[4] = &v45;
  (*(v19 + 16))(v58, v56, v18);
  v44[0] = v26;
  v44[1] = v31;
  v44[2] = v32;
  v44[3] = v18;
  v44[4] = v26;
  v39 = v21;
  v40 = sub_1C10F8E04(&unk_1EDE76C08);
  v41 = sub_1C10F8E04(&unk_1EBE93DB0);
  v42 = v28;
  v43 = v21;
  sub_1C119EE80(v50, 5, v44);
  memcpy(v57, v52, 0xD1uLL);
  v24 = v29;
  v29(v57, v18);
  sub_1C0F9E27C(v10, &qword_1EBE93D98);
  sub_1C0F9E27C(v27, &qword_1EBE93D90);
  memcpy(v58, v47, 0xD1uLL);
  v24(v58, v18);
  sub_1C0F9E27C(v35, &qword_1EBE93D98);
  return sub_1C0F9E27C(v34, &qword_1EBE93D90);
}

double sub_1C10F64B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  *&v54 = a3;
  *&v47 = a2;
  v48 = a1;
  v4 = sub_1C12637E0();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E30);
  v50 = *(v6 - 8);
  *&v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E38);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v42 - v9;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  type metadata accessor for OneUpSpatialPhotoBadgeStateModel();
  sub_1C10F9014(&qword_1EDE7C6C8);
  v12 = sub_1C1262A80();
  v14 = v13;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v60 = 0;
  v59 = 0;
  v58 = v14 & 1;
  v57 = 0;
  v56 = 0;
  v55[0] = KeyPath;
  v55[1] = 0;
  LOBYTE(v55[2]) = 0;
  v55[3] = v11;
  LOBYTE(v55[4]) = 0;
  v55[5] = v12;
  LOBYTE(v55[6]) = v14 & 1;
  LOBYTE(v55[7]) = 0;
  v55[8] = 0;
  v55[9] = 0;
  v55[10] = v15;
  LOBYTE(v55[11]) = 0;
  v55[12] = v16;
  LOBYTE(v55[13]) = 0;
  if (qword_1EDE82FD8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E40);
  sub_1C10F9054();
  sub_1C1264A20();
  memcpy(__dst, v55, 0x69uLL);
  sub_1C0F9E27C(__dst, &qword_1EBE93E40);
  v17 = sub_1C12644A0();
  type metadata accessor for OneUpChromeBarlessView.ChromeBody();
  v18 = v48;
  v19 = sub_1C10F6A34();
  v20 = 0uLL;
  v54 = 0u;
  v21 = 0uLL;
  v22 = v52;
  if (v19)
  {
    v23 = *(v18 + 48);

    if ((v23 & 1) == 0)
    {
      sub_1C1266420();
      v24 = sub_1C1264410();
      sub_1C1262620();

      v25 = v43;
      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v44 + 8))(v25, v45);
    }

    sub_1C122336C();

    sub_1C12628A0();
    *(&v21 + 1) = v26;
    *(&v20 + 1) = v27;
  }

  v46 = v21;
  v47 = v20;
  (*(v50 + 32))(v22, v8, v51);
  v28 = v22 + *(v49 + 36);
  *v28 = v17;
  v29 = v47;
  *(v28 + 24) = v46;
  *(v28 + 8) = v29;
  *(v28 + 40) = (v19 & 1) == 0;
  v30 = sub_1C12644C0();
  v31 = sub_1C10F6A34();
  v32 = 0uLL;
  if (v31)
  {
    v33 = *(v18 + 48);

    if ((v33 & 1) == 0)
    {
      sub_1C1266420();
      v34 = sub_1C1264410();
      sub_1C1262620();

      v35 = v43;
      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v44 + 8))(v35, v45);
    }

    sub_1C122336C();

    sub_1C12628A0();
    *(&v32 + 1) = v36;
    *(&v38 + 1) = v37;
    v54 = v38;
  }

  v51 = v32;
  v39 = v53;
  sub_1C0FB9C00(v22, v53);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E48) + 36);
  *v40 = v30;
  *(v40 + 24) = v51;
  result = *&v54;
  *(v40 + 8) = v54;
  *(v40 + 40) = (v31 & 1) == 0;
  return result;
}

uint64_t sub_1C10F6A34()
{
  v0 = sub_1C1263EB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  sub_1C0FD72CC(&v22 - v13);
  (*(v1 + 104))(v11, *MEMORY[0x1E697FF38], v0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_1C0FE5654(v14, v6, &qword_1EBE902F0);
  sub_1C0FE5654(v11, &v6[v15], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    v17 = v23;
    sub_1C0FE5654(v6, v23, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v6[v15], v0);
      sub_1C10F9014(&qword_1EDE7BAB0);
      v19 = sub_1C1265DE0();
      v20 = *(v1 + 8);
      v20(v18, v0);
      sub_1C0F9E27C(v11, &qword_1EBE902F0);
      sub_1C0F9E27C(v14, &qword_1EBE902F0);
      v20(v17, v0);
      sub_1C0F9E27C(v6, &qword_1EBE902F0);
      v16 = v19 ^ 1;
      return v16 & 1;
    }

    sub_1C0F9E27C(v11, &qword_1EBE902F0);
    sub_1C0F9E27C(v14, &qword_1EBE902F0);
    (*(v1 + 8))(v17, v0);
    goto LABEL_6;
  }

  sub_1C0F9E27C(v11, &qword_1EBE902F0);
  sub_1C0F9E27C(v14, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_1C0F9E27C(v6, &qword_1EBE902E8);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0F9E27C(v6, &qword_1EBE902F0);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1C10F6E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v91 = a4;
  v101 = a3;
  v102 = a2;
  v5 = type metadata accessor for OneUpChromeBarlessView.ChromeBody();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DB8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v79 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DC0);
  MEMORY[0x1EEE9AC00](v99);
  v14 = &v79 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DC8);
  MEMORY[0x1EEE9AC00](v95);
  v83 = &v79 - v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DD0);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v79 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DD8);
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DE0);
  v89 = *(v18 - 8);
  v90 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v79 - v21;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  *(v12 + 2) = swift_getKeyPath();
  v12[24] = 0;
  *(v12 + 4) = swift_getKeyPath();
  *(v12 + 5) = 0;
  v12[48] = 0;
  v22 = type metadata accessor for OneUpChromeVideoControls();
  v23 = *(v22 + 28);
  *&v12[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  swift_storeEnumTagMultiPayload();
  v24 = *(v22 + 32);
  *&v12[v24] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v25 = sub_1C10F77E0();
  v26 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DE8) + 36)];
  *v26 = 0.0;
  v26[1] = v25;
  v27 = sub_1C1265A30();
  v28 = sub_1C10F77E0();
  v29 = &v12[*(v10 + 44)];
  *v29 = v27;
  *(v29 + 1) = v28;
  v93 = v5;
  v100 = a1;
  v30 = 0;
  if (sub_1C10F7984())
  {
    v30 = sub_1C1265A30();
  }

  v31 = v100;
  v32 = sub_1C1214804();
  sub_1C0FE4040(v12, v14, &qword_1EBE93DB8);
  v33 = v98;
  v34 = &v14[*(v99 + 36)];
  *v34 = v30;
  *(v34 + 1) = v32;
  v35 = v6;
  v36 = v6 + 16;
  v99 = *(v6 + 16);
  v37 = v93;
  (v99)(v33, v31, v93);
  v38 = *(v6 + 80);
  v39 = (v38 + 32) & ~v38;
  v40 = swift_allocObject();
  v41 = v101;
  *(v40 + 16) = v102;
  *(v40 + 24) = v41;
  v42 = *(v35 + 32);
  v42(v40 + v39, v33, v37);
  v43 = v14;
  v44 = v83;
  sub_1C0FE4040(v43, v83, &qword_1EBE93DC0);
  v45 = (v44 + *(v95 + 36));
  *v45 = sub_1C10F9284;
  v45[1] = v40;
  v45[2] = 0;
  v45[3] = 0;
  v82 = v36;
  (v99)(v33, v100, v37);
  v92 = v38;
  v46 = v39 + v7;
  v47 = swift_allocObject();
  v48 = v101;
  *(v47 + 16) = v102;
  *(v47 + 24) = v48;
  v94 = v39;
  v95 = v35 + 32;
  v49 = v47 + v39;
  v50 = v42;
  v42(v49, v33, v37);
  v51 = v96;
  sub_1C0FE4040(v44, v96, &qword_1EBE93DC8);
  v52 = (v51 + *(v97 + 36));
  *v52 = 0;
  v52[1] = 0;
  v52[2] = sub_1C10F8AEC;
  v52[3] = v47;
  if (sub_1C1213F08())
  {
    v54 = v53;
    ObjectType = swift_getObjectType();
    LOBYTE(v54) = (*(v54 + 56))(ObjectType, v54);
    swift_unknownObjectRelease();
    v56 = v54 & 1;
  }

  else
  {
    v56 = 2;
  }

  LOBYTE(v103) = v56;
  v57 = v98;
  v58 = v100;
  v59 = v93;
  (v99)(v98, v100, v93);
  v81 = v46;
  v60 = swift_allocObject();
  v61 = v101;
  *(v60 + 16) = v102;
  *(v60 + 24) = v61;
  v80 = v50;
  v50(v60 + v94, v57, v59);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DF0);
  v83 = sub_1C10F8BFC(&unk_1EBE93DF8);
  v63 = sub_1C10F8E40();
  v64 = v85;
  v65 = v97;
  v66 = v96;
  sub_1C1265000();

  sub_1C0F9E27C(v66, &qword_1EBE93DD0);
  v107 = sub_1C1214804();
  (v99)(v57, v58, v59);
  v67 = swift_allocObject();
  v68 = v101;
  *(v67 + 16) = v102;
  *(v67 + 24) = v68;
  v80(v67 + v94, v57, v59);
  v103 = v65;
  v104 = v62;
  v105 = v83;
  v106 = v63;
  swift_getOpaqueTypeConformance2();
  sub_1C0FF9EE4();
  v69 = v84;
  v70 = v88;
  sub_1C1265000();

  (*(v86 + 8))(v64, v70);
  v72 = v89;
  v71 = v90;
  v73 = *(v89 + 16);
  v74 = v87;
  v73(v87, v69, v90);
  v75 = v91;
  *v91 = 0;
  *(v75 + 8) = 1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93E28);
  v73(v75 + *(v76 + 48), v74, v71);
  v77 = *(v72 + 8);
  v77(v69, v71);
  return (v77)(v74, v71);
}

double sub_1C10F77E0()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);

  if ((v5 & 1) == 0)
  {
    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  if (sub_1C1214C90())
  {

    return 0.0;
  }

  else
  {
    v8 = sub_1C1222D88();

    result = 32.0;
    if ((v8 & 1) == 0)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_1C10F7984()
{
  if (sub_1C1214570())
  {
    v0 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    sub_1C1265420();
    v0 = v2 ^ 1;
  }

  return v0 & 1;
}

uint64_t sub_1C10F7AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1C12637E0();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[0] = sub_1C10CA974(*(a1 + 8));
  v52[1] = v5;
  v52[2] = v6;
  LOBYTE(v52[3]) = v7 & 1;

  sub_1C1264490();
  type metadata accessor for OneUpChromeMaskedLibraryScrubber();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264FB0();

  j__swift_release_1();
  memcpy(v48, v49, sizeof(v48));
  sub_1C12644A0();
  type metadata accessor for OneUpChromeBarlessView.ChromeBody();
  if (sub_1C10F80FC())
  {
    v9 = *(a1 + 48);

    if ((v9 & 1) == 0)
    {
      sub_1C1266420();
      v10 = sub_1C1264410();
      sub_1C1262620();

      v11 = v28;
      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v29 + 8))(v11, v30);
    }

    sub_1C122336C();
  }

  v12 = sub_1C1263190();
  v13 = MEMORY[0x1E697E5D8];
  v45 = WitnessTable;
  v46 = MEMORY[0x1E697E5D8];
  v14 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v47, v48, 0x49uLL);
  (*(*(v12 - 8) + 8))(v47, v12);
  memcpy(v44, v50, sizeof(v44));
  sub_1C12644C0();
  if (sub_1C10F80FC())
  {
    v15 = *(a1 + 48);

    if ((v15 & 1) == 0)
    {
      sub_1C1266420();
      v16 = v13;
      v17 = sub_1C1264410();
      sub_1C1262620();

      v13 = v16;
      v18 = v28;
      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v29 + 8))(v18, v30);
    }

    sub_1C122336C();
  }

  v19 = sub_1C1263190();
  v38[4] = v14;
  v38[5] = v13;
  v20 = swift_getWitnessTable();
  sub_1C1264FB0();
  memcpy(v39, v44, 0x79uLL);
  (*(*(v19 - 8) + 8))(v39, v19);
  memcpy(v43, v51, 0xA9uLL);
  v21 = sub_1C1263190();
  v38[2] = v20;
  v38[3] = v13;
  v22 = swift_getWitnessTable();
  sub_1C0FDBA4C(v43, v21, v22);
  memcpy(v40, v43, 0xA9uLL);
  v23 = *(v21 - 8);
  v24 = *(v23 + 8);
  v24(v40, v21);
  KeyPath = swift_getKeyPath();
  memcpy(v41, v52, 0xA9uLL);
  memcpy(v37, v52, 0xA9uLL);
  v35 = KeyPath;
  v36 = 0;
  v38[0] = v37;
  v38[1] = &v35;
  (*(v23 + 16))(v43, v41, v21);

  v34[0] = v21;
  v34[1] = &type metadata for OneUpChromeDebugBar;
  v32 = v22;
  v33 = sub_1C10F8A98();
  sub_1C119EE80(v38, 2, v34);

  memcpy(v42, v52, 0xA9uLL);
  v24(v42, v21);
  j__swift_release_1();
  memcpy(v43, v37, 0xA9uLL);
  return (v24)(v43, v21);
}

uint64_t sub_1C10F80FC()
{
  v0 = sub_1C1263EB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_1C0FD72CC(&v21 - v13);
  (*(v1 + 104))(v11, *MEMORY[0x1E697FF38], v0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_1C0FE5654(v14, v6, &qword_1EBE902F0);
  sub_1C0FE5654(v11, &v6[v15], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    v17 = v22;
    sub_1C0FE5654(v6, v22, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
    {
      v18 = v21;
      (*(v1 + 32))(v21, &v6[v15], v0);
      sub_1C10F9014(&qword_1EDE7BAB0);
      v16 = sub_1C1265DE0();
      v19 = *(v1 + 8);
      v19(v18, v0);
      sub_1C0F9E27C(v11, &qword_1EBE902F0);
      sub_1C0F9E27C(v14, &qword_1EBE902F0);
      v19(v17, v0);
      sub_1C0F9E27C(v6, &qword_1EBE902F0);
      return v16 & 1;
    }

    sub_1C0F9E27C(v11, &qword_1EBE902F0);
    sub_1C0F9E27C(v14, &qword_1EBE902F0);
    (*(v1 + 8))(v17, v0);
    goto LABEL_6;
  }

  sub_1C0F9E27C(v11, &qword_1EBE902F0);
  sub_1C0F9E27C(v14, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_1C0F9E27C(v6, &qword_1EBE902E8);
    v16 = 0;
    return v16 & 1;
  }

  sub_1C0F9E27C(v6, &qword_1EBE902F0);
  v16 = 1;
  return v16 & 1;
}

double sub_1C10F851C@<D0>(uint64_t a1@<X8>)
{
  sub_1C12659A0();
  sub_1C1262C80();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t OneUpChromeBarlessView<>.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = 0;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D80) + 52);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = nullsub_1;
  *(a2 + 16) = 0;
  return result;
}

void sub_1C10F86E4()
{
  type metadata accessor for OneUpChromeViewModel();
  if (v0 <= 0x3F)
  {
    sub_1C1007F88();
    if (v1 <= 0x3F)
    {
      sub_1C10F89D0(319, &qword_1EDE775D0, &qword_1EBE93D88);
      if (v2 <= 0x3F)
      {
        sub_1C10F89D0(319, &qword_1EDE77668, &qword_1EBE91478);
        if (v3 <= 0x3F)
        {
          sub_1C10F8858(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
          if (v4 <= 0x3F)
          {
            sub_1C10F8858(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C10F8858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_15_22();
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C10F88A8()
{
  type metadata accessor for OneUpChromeViewModel();
  if (v0 <= 0x3F)
  {
    sub_1C1007F88();
    if (v1 <= 0x3F)
    {
      sub_1C106B1CC();
      if (v2 <= 0x3F)
      {
        sub_1C10F8858(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
        if (v3 <= 0x3F)
        {
          sub_1C10F89D0(319, &qword_1EDE77560, &qword_1EBE902F0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C10F89D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_15_22();
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C10F8A98()
{
  result = qword_1EDE788A8[0];
  if (!qword_1EDE788A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE788A8);
  }

  return result;
}

uint64_t sub_1C10F8B68()
{
  OUTLINED_FUNCTION_9_21();
  OUTLINED_FUNCTION_4_34();

  return sub_1C10F7A5C();
}

unint64_t sub_1C10F8BFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = OUTLINED_FUNCTION_3_31();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C10F8CBC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_1C10F8E04(&qword_1EDE7BC88);
    result = OUTLINED_FUNCTION_3_31();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C10F8D48()
{
  result = qword_1EBE93E18;
  if (!qword_1EBE93E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93DE8);
    sub_1C10F9014(&unk_1EBE93E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93E18);
  }

  return result;
}

unint64_t sub_1C10F8E04(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_41(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_15_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C10F8E40()
{
  result = qword_1EDE7B6E8;
  if (!qword_1EDE7B6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B6E8);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for OneUpChromeBarlessView.ChromeBody() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  v3 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1C10F9014(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_15_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C10F9054()
{
  result = qword_1EDE77468;
  if (!qword_1EDE77468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93E40);
    sub_1C10F90E0();
    sub_1C10CAB10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77468);
  }

  return result;
}

unint64_t sub_1C10F90E0()
{
  result = qword_1EDE786F0;
  if (!qword_1EDE786F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE786F0);
  }

  return result;
}

uint64_t sub_1C10F9134()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OneUpChromeDismissalState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C10F9190(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1C10F9200()
{
  result = qword_1EDE77308;
  if (!qword_1EDE77308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77308);
  }

  return result;
}

uint64_t PhotosPreviewSlider.init(label:showValue:value:in:step:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  v11 = type metadata accessor for PhotosPreviewSlider();
  v12 = v11[12];
  sub_1C1265640();
  OUTLINED_FUNCTION_0_10();
  (*(v13 + 32))(a7 + v12, a4);
  v14 = v11[13];
  sub_1C1265DC0();
  OUTLINED_FUNCTION_0_10();
  (*(v15 + 32))(a7 + v14, a5);
  v16 = v11[14];
  swift_getAssociatedTypeWitness();
  sub_1C1266790();
  OUTLINED_FUNCTION_0_10();
  v18 = *(v17 + 32);

  return v18(a7 + v16, a6);
}

uint64_t PhotosPreviewSlider.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1C12638E0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE93E58);
  return sub_1C10F9458(v2, a1[2], a1[3], a1[4], (a2 + *(v5 + 44)));
}

uint64_t sub_1C10F9458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v53 = a1;
  v69 = a5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93EF0);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v46 - v8;
  v56 = sub_1C1265DC0();
  v52 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v46 - v9;
  v54 = sub_1C1265640();
  v49 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93EF8);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v46 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1C1266790();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v50 = &v46 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F00);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v61 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v59 = &v46 - v25;
  v60 = sub_1C1263AA0();
  LOBYTE(v71[0]) = 1;
  v26 = v53;
  sub_1C10F9CF0(v53, a3, a4, v75);
  *&__src[7] = v75[0];
  *&__src[23] = v75[1];
  *&__src[39] = v75[2];
  *&__src[55] = v75[3];
  v58 = LOBYTE(v71[0]);
  v51 = a2;
  v65 = a3;
  v66 = a4;
  v27 = type metadata accessor for PhotosPreviewSlider();
  (*(v15 + 16))(v17, v26 + v27[14], v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness);
  v29 = (v49 + 16);
  v30 = (v52 + 16);
  if (EnumTagSinglePayload == 1)
  {
    (*(v15 + 8))(v17, v14);
    (*v29)(v55, v26 + v27[12], v54);
    (*v30)(v57, v26 + v27[13], v56);
    v31 = v62;
    sub_1C1265520();
    v33 = v63;
    v32 = v64;
    (*(v63 + 16))(v68, v31, v64);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE93F08, &qword_1EBE93EF8);
    v34 = v59;
    sub_1C1263C20();
    (*(v33 + 8))(v31, v32);
  }

  else
  {
    v35 = v48;
    (*(v48 + 32))(v50, v17, AssociatedTypeWitness);
    (*v29)(v55, v26 + v27[12], v54);
    (*v30)(v57, v26 + v27[13], v56);
    v36 = v50;
    (*(v35 + 16))(v47, v50, AssociatedTypeWitness);
    v37 = v62;
    sub_1C1265530();
    v39 = v63;
    v38 = v64;
    (*(v63 + 16))(v68, v37, v64);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EBE93F08, &qword_1EBE93EF8);
    v34 = v59;
    sub_1C1263C20();
    (*(v39 + 8))(v37, v38);
    (*(v35 + 8))(v36, AssociatedTypeWitness);
  }

  v40 = v61;
  sub_1C10FA9D4(v34, v61, &qword_1EBE93F00);
  v41 = v60;
  v70[0] = v60;
  v70[1] = 0;
  v42 = v58;
  LOBYTE(v70[2]) = v58;
  memcpy(&v70[2] + 1, __src, 0x47uLL);
  v43 = v69;
  memcpy(v69, v70, 0x58uLL);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F10);
  sub_1C10FA9D4(v40, v43 + *(v44 + 48), &qword_1EBE93F00);
  sub_1C10FA9D4(v70, v71, &qword_1EBE93F18);
  sub_1C0F9E21C(v34, &qword_1EBE93F00);
  sub_1C0F9E21C(v40, &qword_1EBE93F00);
  v71[0] = v41;
  v71[1] = 0;
  v72 = v42;
  memcpy(v73, __src, sizeof(v73));
  return sub_1C0F9E21C(v71, &qword_1EBE93F18);
}

uint64_t sub_1C10F9CF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a3;
  v45 = a2;
  v6 = sub_1C1261C40();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C1261E50();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F20);
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v40[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v14 = a1[1];
  v54 = *a1;
  v55 = v14;
  sub_1C0FDB9AC();

  v15 = sub_1C12648F0();
  v50 = v17;
  v51 = v15;
  v52 = v18;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (*(a1 + 16) == 1)
  {
    v41 = v16;
    type metadata accessor for PhotosPreviewSlider();
    v23 = sub_1C1265640();
    MEMORY[0x1C68EEF20](v23);
    sub_1C10FAA30();
    sub_1C1265CB0();
    v53 = v54;
    sub_1C1261E30();
    sub_1C1261BF0();
    v24 = v46;
    sub_1C1261C30();
    v25 = v47;
    MEMORY[0x1C68EB540](v24, v47);
    (*(v48 + 8))(v24, v49);
    (*(v43 + 8))(v10, v25);
    sub_1C0FDB6D4(&qword_1EBE93F30, &qword_1EBE93F20);
    v26 = sub_1C12648C0();
    v28 = v27;
    v30 = v29;
    sub_1C12646A0();
    v19 = sub_1C1264870();
    v20 = v31;
    v33 = v32;
    v22 = v34;

    sub_1C0FDB8E8(v26, v28, v30 & 1);

    v21 = v33 & 1;
    sub_1C0FDB850(v19, v20, v21);

    LOBYTE(v16) = v41;
  }

  v35 = v16 & 1;
  LOBYTE(v54) = v16 & 1;
  v37 = v50;
  v36 = v51;
  sub_1C0FDB850(v51, v50, v16 & 1);
  v38 = v52;

  sub_1C0FDB860(v19, v20, v21, v22);
  sub_1C0FDB8A4(v19, v20, v21, v22);
  *a4 = v36;
  *(a4 + 8) = v37;
  *(a4 + 16) = v35;
  *(a4 + 24) = v38;
  *(a4 + 32) = v19;
  *(a4 + 40) = v20;
  *(a4 + 48) = v21;
  *(a4 + 56) = v22;
  sub_1C0FDB8A4(v19, v20, v21, v22);
  sub_1C0FDB8E8(v36, v37, v35);
}

uint64_t sub_1C10FA180()
{
  result = sub_1C1265640();
  if (v1 <= 0x3F)
  {
    result = sub_1C1265DC0();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_1C1266790();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C10FA27C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v13 = v9;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v11 + 80);
  if (v12)
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = AssociatedTypeWitness;
  v19 = v14 | 7;
  v20 = v15 + v14 + ((v14 + 16) & ~v14);
  v21 = ((v15 + v14) & ~v14) + v15 + v16;
  if (a2 <= v13)
  {
    goto LABEL_34;
  }

  v22 = v17 + ((v21 + ((v20 + ((v19 + 17) & ~v19)) & ~v14)) & ~v16);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_17;
  }

  v25 = ((a2 - v13 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v25))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_34:
    if (v13 == 0x7FFFFFFF)
    {
      v29 = *(a1 + 1);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }

    v31 = ~v14;
    v32 = (a1 + v19 + 17) & ~v19;
    if (v8 == v13)
    {
      v33 = (v14 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v31;
LABEL_41:

      return __swift_getEnumTagSinglePayload(v33, v7, v5);
    }

    v33 = (v20 + v32) & v31;
    if (v7 == v13)
    {
      goto LABEL_41;
    }

    if (v12 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v21 + v33) & ~v16, v12, v18);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (v25 < 2)
  {
    goto LABEL_34;
  }

LABEL_17:
  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_24:
  v26 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v26 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    switch(v27)
    {
      case 2:
        v28 = *a1;
        break;
      case 3:
        v28 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v28 = *a1;
        break;
      default:
        v28 = *a1;
        break;
    }
  }

  else
  {
    v28 = 0;
  }

  return v13 + (v28 | v26) + 1;
}

void sub_1C10FA5A0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  v41 = v10;
  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = 0;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  v20 = v19 + v18 + ((v18 + 16) & ~v18);
  v21 = *(v14 + 80);
  v22 = ((v19 + v18) & ~v18) + v19 + v21;
  v23 = (v22 + ((v20 + (((v18 | 7) + 17) & ~(v18 | 7))) & ~v18)) & ~v21;
  if (v15)
  {
    v24 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v24 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v25 = v23 + v24;
  v26 = 8 * (v23 + v24);
  if (a3 > v17)
  {
    if (v25 <= 3)
    {
      v27 = ((a3 - v17 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v27))
      {
        v13 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v13 = v28;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    if (v25 < 4)
    {
      v30 = (v29 >> v26) + 1;
      if (v25)
      {
        v33 = v29 & ~(-1 << v26);
        bzero(a1, v23 + v24);
        if (v25 == 3)
        {
          *a1 = v33;
          *(a1 + 2) = BYTE2(v33);
        }

        else if (v25 == 2)
        {
          *a1 = v33;
        }

        else
        {
          *a1 = v29;
        }
      }
    }

    else
    {
      bzero(a1, v23 + v24);
      *a1 = v29;
      v30 = 1;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v25) = v30;
        break;
      case 2:
        *(a1 + v25) = v30;
        break;
      case 3:
        goto LABEL_73;
      case 4:
        *(a1 + v25) = v30;
        break;
      default:
        return;
    }

    return;
  }

  v31 = ~v18;
  v32 = ~v21;
  switch(v13)
  {
    case 1:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_73:
      __break(1u);
      return;
    case 4:
      *(a1 + v25) = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v17 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }

        return;
      }

      v34 = (a1 + (v18 | 7) + 17) & ~(v18 | 7);
      if (v41 == v17)
      {
        v35 = (v18 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v31;
LABEL_46:
        v36 = a2;
        v15 = v9;
        AssociatedTypeWitness = v7;
LABEL_47:

        __swift_storeEnumTagSinglePayload(v35, v36, v15, AssociatedTypeWitness);
        return;
      }

      v35 = (v20 + v34) & v31;
      if (v9 == v17)
      {
        goto LABEL_46;
      }

      v37 = ((v22 + v35) & v32);
      if (v16 >= a2)
      {
        if (v15 < 2)
        {
          return;
        }

        v36 = (a2 + 1);
        v35 = (v22 + v35) & v32;
        goto LABEL_47;
      }

      if (v24 <= 3)
      {
        v38 = ~(-1 << (8 * v24));
      }

      else
      {
        v38 = -1;
      }

      if (v24)
      {
        v39 = v38 & (~v16 + a2);
        if (v24 <= 3)
        {
          v40 = v24;
        }

        else
        {
          v40 = 4;
        }

        bzero(v37, v24);
        switch(v40)
        {
          case 2:
            *v37 = v39;
            break;
          case 3:
            *v37 = v39;
            v37[2] = BYTE2(v39);
            break;
          case 4:
            *v37 = v39;
            break;
          default:
            *v37 = v39;
            break;
        }
      }

      return;
  }
}

uint64_t sub_1C10FA9D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_10();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C10FAA30()
{
  result = qword_1EBE93F28;
  if (!qword_1EBE93F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93F28);
  }

  return result;
}

BOOL static OneUpChromeToolbarPosition.axis(for:)()
{
  if (_UIUserInterfaceSizeClassForHeight() == 2)
  {
    return 0;
  }

  sub_1C12665B0();
  return v1 > 1.0;
}

uint64_t static OneUpChromeToolbarPosition.for (viewSize:interfaceOrientation:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v112 = a1;
  v7 = sub_1C1263CD0();
  v113 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v97[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F38);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  v104 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_8();
  v111 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_8();
  v110 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F40);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_1_3();
  v99 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_8();
  v105 = v21;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3_8();
  v103 = v23;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3_8();
  v101 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3_8();
  v108 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3_8();
  v106 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_8();
  v102 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v97[-v33];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v97[-v36];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v97[-v39];
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v97[-v42];
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v97[-v45];
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v97[-v48];
  result = _UIUserInterfaceSizeClassForHeight();
  if (result != 2)
  {
    v109 = a2;
    v52 = a3 / a4;
    sub_1C10FB618(v112, v49);
    v100 = v49;
    sub_1C10FB618(v49, v46);
    sub_1C1263C90();
    OUTLINED_FUNCTION_4_35(v43);
    v112 = v9;
    v53 = *(v9 + 48);
    sub_1C10FB618(v43, v17);
    sub_1C10FB618(v46, &v17[v53]);
    OUTLINED_FUNCTION_17_1(v17);
    if (v55)
    {
      sub_1C0F9E21C(v43, &qword_1EBE93F40);
      sub_1C0F9E21C(v46, &qword_1EBE93F40);
      OUTLINED_FUNCTION_17_1(&v17[v53]);
      if (v55)
      {
        sub_1C0F9E21C(v17, &qword_1EBE93F40);
        a2 = v109;
        v54 = v100;
LABEL_27:
        v51 = v52 > 1.0;
LABEL_50:
        result = sub_1C0F9E21C(v54, &qword_1EBE93F40);
        goto LABEL_51;
      }
    }

    else
    {
      sub_1C10FB618(v17, v40);
      OUTLINED_FUNCTION_17_1(&v17[v53]);
      if (!v55)
      {
        v69 = v113;
        v70 = OUTLINED_FUNCTION_2_37();
        v71(v70);
        sub_1C10FB688();
        v98 = OUTLINED_FUNCTION_10_21();
        v72 = *(v69 + 8);
        v73 = OUTLINED_FUNCTION_8_27();
        v72(v73);
        sub_1C0F9E21C(v43, &qword_1EBE93F40);
        sub_1C0F9E21C(v46, &qword_1EBE93F40);
        (v72)(v40, v7);
        sub_1C0F9E21C(v17, &qword_1EBE93F40);
        a2 = v109;
        v54 = v100;
        if (v98)
        {
          goto LABEL_27;
        }

LABEL_12:
        sub_1C10FB618(v54, v37);
        sub_1C1263CA0();
        OUTLINED_FUNCTION_4_35(v34);
        v56 = v112;
        v57 = *(v112 + 48);
        v58 = v110;
        sub_1C10FB618(v34, v110);
        sub_1C10FB618(v37, v58 + v57);
        OUTLINED_FUNCTION_17_1(v58);
        if (v55)
        {
          OUTLINED_FUNCTION_11_18(v34);
          OUTLINED_FUNCTION_11_18(v37);
          OUTLINED_FUNCTION_17_1(v58 + v57);
          if (v55)
          {
            sub_1C0F9E21C(v58, &qword_1EBE93F40);
LABEL_39:
            v51 = 2 * (v52 > 1.0);
            goto LABEL_50;
          }
        }

        else
        {
          v59 = v102;
          sub_1C10FB618(v58, v102);
          OUTLINED_FUNCTION_17_1(v58 + v57);
          if (!v60)
          {
            v77 = v58;
            v78 = v113;
            v79 = OUTLINED_FUNCTION_2_37();
            v80(v79);
            sub_1C10FB688();
            v98 = OUTLINED_FUNCTION_10_21();
            v81 = *(v78 + 8);
            v82 = OUTLINED_FUNCTION_8_27();
            v81(v82);
            sub_1C0F9E21C(v34, &qword_1EBE93F40);
            sub_1C0F9E21C(v37, &qword_1EBE93F40);
            (v81)(v59, v7);
            v56 = v112;
            a2 = v109;
            v83 = v77;
            v54 = v100;
            sub_1C0F9E21C(v83, &qword_1EBE93F40);
            if (v98)
            {
              goto LABEL_39;
            }

LABEL_21:
            v61 = v106;
            sub_1C10FB618(v54, v106);
            v62 = v108;
            sub_1C1263CC0();
            OUTLINED_FUNCTION_4_35(v62);
            v63 = *(v56 + 48);
            v64 = v111;
            sub_1C10FB618(v62, v111);
            sub_1C10FB618(v61, v64 + v63);
            OUTLINED_FUNCTION_17_1(v64);
            if (v55)
            {
              OUTLINED_FUNCTION_6_22(v62);
              OUTLINED_FUNCTION_9_22();
              OUTLINED_FUNCTION_17_1(&qword_1EBE93F40 + v63);
              v65 = v103;
              v66 = v104;
              v67 = v105;
              if (v55)
              {
                v68 = &qword_1EBE93F40;
                goto LABEL_37;
              }
            }

            else
            {
              v74 = v101;
              sub_1C10FB618(v64, v101);
              OUTLINED_FUNCTION_17_1(v64 + v63);
              v67 = v105;
              if (!v75)
              {
                v86 = v113;
                v87 = OUTLINED_FUNCTION_2_37();
                v88(v87);
                sub_1C10FB688();
                LODWORD(v112) = OUTLINED_FUNCTION_10_21();
                v89 = *(v86 + 8);
                v90 = OUTLINED_FUNCTION_8_27();
                v89(v90);
                OUTLINED_FUNCTION_5_24(v108);
                OUTLINED_FUNCTION_5_24(v106);
                (v89)(v74, v7);
                OUTLINED_FUNCTION_5_24(v64);
                v65 = v103;
                v66 = v104;
                a2 = v109;
                if (v112)
                {
                  goto LABEL_49;
                }

                goto LABEL_32;
              }

              OUTLINED_FUNCTION_6_22(v108);
              OUTLINED_FUNCTION_9_22();
              (*(v113 + 8))(v74, v7);
              v65 = v103;
              v66 = v104;
            }

            sub_1C0F9E21C(&qword_1EBE93F40, &qword_1EBE93F38);
LABEL_32:
            sub_1C10FB618(v54, v65);
            sub_1C1263CB0();
            OUTLINED_FUNCTION_4_35(v67);
            v76 = *(v56 + 48);
            sub_1C10FB618(v67, v66);
            sub_1C10FB618(v65, v66 + v76);
            OUTLINED_FUNCTION_17_1(v66);
            if (!v55)
            {
              v84 = v99;
              sub_1C10FB618(v66, v99);
              OUTLINED_FUNCTION_17_1(v66 + v76);
              if (!v85)
              {
                v91 = v113;
                v92 = OUTLINED_FUNCTION_2_37();
                v93(v92);
                sub_1C10FB688();
                v94 = OUTLINED_FUNCTION_10_21();
                v95 = *(v91 + 8);
                v96 = OUTLINED_FUNCTION_8_27();
                v95(v96);
                OUTLINED_FUNCTION_5_24(v105);
                OUTLINED_FUNCTION_5_24(v65);
                (v95)(v84, v7);
                OUTLINED_FUNCTION_5_24(v66);
                a2 = v109;
                if (v94)
                {
LABEL_49:
                  v51 = 0;
                  goto LABEL_50;
                }

LABEL_44:
                result = __swift_getEnumTagSinglePayload(v54, 1, v7);
                v51 = 0;
                if (result == 1)
                {
                  goto LABEL_51;
                }

                goto LABEL_50;
              }

              OUTLINED_FUNCTION_6_22(v67);
              OUTLINED_FUNCTION_6_22(v65);
              (*(v113 + 8))(v84, v7);
LABEL_43:
              sub_1C0F9E21C(v66, &qword_1EBE93F38);
              a2 = v109;
              goto LABEL_44;
            }

            OUTLINED_FUNCTION_6_22(v67);
            OUTLINED_FUNCTION_6_22(v65);
            OUTLINED_FUNCTION_17_1(v66 + v76);
            if (!v55)
            {
              goto LABEL_43;
            }

            v68 = v66;
LABEL_37:
            sub_1C0F9E21C(v68, &qword_1EBE93F40);
            v51 = 0;
            a2 = v109;
            goto LABEL_50;
          }

          OUTLINED_FUNCTION_11_18(v34);
          OUTLINED_FUNCTION_11_18(v37);
          (*(v113 + 8))(v59, v7);
        }

        sub_1C0F9E21C(v58, &qword_1EBE93F38);
        goto LABEL_21;
      }

      sub_1C0F9E21C(v43, &qword_1EBE93F40);
      sub_1C0F9E21C(v46, &qword_1EBE93F40);
      (*(v113 + 8))(v40, v7);
    }

    sub_1C0F9E21C(v17, &qword_1EBE93F38);
    a2 = v109;
    v54 = v100;
    goto LABEL_12;
  }

  v51 = 0;
LABEL_51:
  *a2 = v51;
  return result;
}

uint64_t OneUpChromeToolbarPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C10FB618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10FB688()
{
  result = qword_1EBE93F48;
  if (!qword_1EBE93F48)
  {
    sub_1C1263CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93F48);
  }

  return result;
}

unint64_t sub_1C10FB6E4()
{
  result = qword_1EBE93F50;
  if (!qword_1EBE93F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93F50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeToolbarPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1)
{

  return sub_1C0F9E21C(a1, v1);
}

uint64_t static PhotosLegibilityGradient.strong(abovePlaceholder:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EDE7A4C8 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EDE7A4D0;
    goto LABEL_7;
  }

  if (qword_1EDE7A498 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v4 = &qword_1EDE7A4A0;
LABEL_7:
    v5 = *v4;
    result = sub_1C1265B80();
    v8 = v7;
    v10 = v9;
    if (a1)
    {
      if (qword_1EDE7A480 != -1)
      {
        result = swift_once();
      }

      v11 = &qword_1EDE7A488;
    }

    else
    {
      if (qword_1EDE7A4B0 != -1)
      {
        result = swift_once();
      }

      v11 = &qword_1EDE7A4B8;
    }

    v12 = *v11;
    if (qword_1EDE7A4E0 != -1)
    {
      result = swift_once();
    }

    v13 = qword_1EBE93FA0;
    if (qword_1EBE93FA0 <= 1)
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  *a2 = 0x3FE0000000000000;
  *(a2 + 8) = v5;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  return result;
}

double PhotosLegibilityBlurAlternativeTextShadow.body(content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C1265160();
  v4 = sub_1C12651E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FA8);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FB0) + 36);
  *v6 = v4;
  result = 8.0;
  *(v6 + 8) = xmmword_1C12B5C50;
  *(v6 + 24) = 0x4000000000000000;
  return result;
}

PhotosSwiftUICore::PhotosLegibilityGradient::Style_optional __swiftcall PhotosLegibilityGradient.Style.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C10FBB2C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosLegibilityGradient.Style.rawValue.getter();
  *a1 = result;
  return result;
}

char *PhotosLegibilityGradient.init(startPoint:endPoint:strength:style:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v7 = *result;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = v7;
  return result;
}

uint64_t PhotosLegibilityGradient.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FB8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12[-1] - v4;
  v6 = v1[1];
  v11 = *v1;
  v12[0] = v6;
  *(v12 + 9) = *(v1 + 25);
  sub_1C10FBC74(&v11);
  sub_1C10FCD64();
  sub_1C1264CE0();
  sub_1C0FD1A5C(v5, &qword_1EBE93FB8);
  v7 = sub_1C12631E0();
  v8 = sub_1C1264470();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FD0);
  v10 = a1 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return result;
}

uint64_t sub_1C10FBC74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94018);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93FC8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-v6];
  if (*(a1 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C12A3440;
    *(v8 + 32) = sub_1C1265170();
    sub_1C1265160();
    v9 = sub_1C12651E0();

    *(v8 + 40) = v9;
    MEMORY[0x1C68EF140](v8);
    sub_1C1262F60();
    v10 = v15;
    *v4 = *&v14[8];
    *(v4 + 1) = v10;
    *(v4 + 4) = v16;
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EDE7B7C8, &qword_1EBE93FC8);
    sub_1C10CABA8();
    return sub_1C1263C20();
  }

  else
  {
    *v7 = sub_1C12659A0();
    v7[1] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94020);
    sub_1C10FBF44(v7 + *(v13 + 44));
    sub_1C10D1A1C(v7, v4, &qword_1EBE93FC8);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EDE7B7C8, &qword_1EBE93FC8);
    sub_1C10CABA8();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v7, &qword_1EBE93FC8);
  }
}

uint64_t sub_1C10FBF44@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94008);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
  v9 = swift_allocObject();
  v21[0] = xmmword_1C12A3440;
  *(v9 + 16) = xmmword_1C12A3440;
  *(v9 + 32) = sub_1C1265170();
  sub_1C1265160();
  v10 = sub_1C12651E0();

  *(v9 + 40) = v10;
  MEMORY[0x1C68EF140](v9);
  sub_1C1262F60();
  v11 = *(v3 + 44);
  v12 = *MEMORY[0x1E6981DE8];
  v13 = sub_1C1265A90();
  (*(*(v13 - 8) + 104))(&v8[v11], v12, v13);
  v14 = v21[2];
  *v8 = v21[1];
  *(v8 + 1) = v14;
  *(v8 + 4) = v22;
  v15 = swift_allocObject();
  *(v15 + 16) = v21[0];
  *(v15 + 32) = sub_1C1265170();
  sub_1C1265160();
  v16 = sub_1C12651E0();

  *(v15 + 40) = v16;
  MEMORY[0x1C68EF140](v15);
  sub_1C1262F60();
  sub_1C10D1A1C(v8, v5, &qword_1EBE94008);
  v17 = v23;
  sub_1C10D1A1C(v5, a1, &qword_1EBE94008);
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94028) + 48);
  *v18 = v17;
  v19 = v24;
  *(v18 + 24) = v25;
  *(v18 + 8) = v19;

  sub_1C0FD1A5C(v8, &qword_1EBE94008);

  return sub_1C0FD1A5C(v5, &qword_1EBE94008);
}

uint64_t sub_1C10FC208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F68);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v10 - v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0);
  __swift_allocate_value_buffer(v3, qword_1EBE93F58);
  v4 = __swift_project_value_buffer(v3, qword_1EBE93F58);
  *v2 = sub_1C12659A0();
  v2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94000);
  sub_1C10FC334(v2 + *(v6 + 44));
  sub_1C10B9120();
  sub_1C1264CE0();
  sub_1C0FD1A5C(v2, &qword_1EBE92F68);
  v7 = sub_1C12631E0();
  result = sub_1C1264470();
  v9 = v4 + *(v3 + 36);
  *v9 = v7;
  *(v9 + 8) = result;
  return result;
}

uint64_t sub_1C10FC334@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94008);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v26 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
  v12 = swift_allocObject();
  v26 = xmmword_1C12A3440;
  *(v12 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  if (qword_1EBE8FCB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C12651E0();

  *(v12 + 32) = v13;
  *(v12 + 40) = sub_1C1265170();
  MEMORY[0x1C68EF140](v12);
  sub_1C1262F60();
  v27 = v1;
  v14 = *(v1 + 36);
  v15 = *MEMORY[0x1E6981DE8];
  v16 = sub_1C1265A90();
  v17 = *(*(v16 - 8) + 104);
  v17(&v11[v14], v15, v16);
  v18 = v31;
  *v11 = v30;
  *(v11 + 1) = v18;
  *(v11 + 4) = v32;
  v19 = swift_allocObject();
  *(v19 + 16) = v26;
  sub_1C1265160();
  if (qword_1EBE8FCB8 != -1)
  {
    swift_once();
  }

  v20 = sub_1C12651E0();

  *(v19 + 32) = v20;
  *(v19 + 40) = sub_1C1265170();
  if (qword_1EBE8FCC0 != -1)
  {
    swift_once();
  }

  MEMORY[0x1C68EF140](v19);
  sub_1C1262F60();
  v17(&v9[*(v27 + 36)], v15, v16);
  v21 = v34;
  *v9 = v33;
  *(v9 + 1) = v21;
  *(v9 + 4) = v35;
  sub_1C10D1A1C(v11, v6, &qword_1EBE94008);
  v22 = v28;
  sub_1C10D1A1C(v9, v28, &qword_1EBE94008);
  v23 = v29;
  sub_1C10D1A1C(v6, v29, &qword_1EBE94008);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94010);
  sub_1C10D1A1C(v22, v23 + *(v24 + 48), &qword_1EBE94008);
  sub_1C0FD1A5C(v9, &qword_1EBE94008);
  sub_1C0FD1A5C(v11, &qword_1EBE94008);
  sub_1C0FD1A5C(v22, &qword_1EBE94008);
  return sub_1C0FD1A5C(v6, &qword_1EBE94008);
}

uint64_t static PhotosLegibilityGradient.blurAlternative.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE8FCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0);
  v3 = __swift_project_value_buffer(v2, qword_1EBE93F58);
  return sub_1C10D1A1C(v3, a1, &qword_1EBE91CC0);
}

double sub_1C10FC7B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EBE93F70 = v2;
  return result;
}

double sub_1C10FC834()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EBE93F78 = v2;
  return result;
}

double sub_1C10FC8B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EBE93F80 = v2;
  return result;
}

uint64_t sub_1C10FC934()
{
  __swift_allocate_value_buffer(&type metadata for PhotosLegibilityGradient, qword_1EBE93F88);
  v0 = __swift_project_value_buffer(&type metadata for PhotosLegibilityGradient, qword_1EBE93F88);
  return sub_1C10FC980(v0);
}

uint64_t sub_1C10FC980@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7A4C8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE7A4D0;
  result = sub_1C1265B80();
  v5 = v4;
  v7 = v6;
  if (qword_1EDE7A4B0 != -1)
  {
    result = swift_once();
  }

  v8 = qword_1EDE7A4B8;
  if (qword_1EDE7A4E0 != -1)
  {
    result = swift_once();
  }

  v9 = qword_1EBE93FA0;
  if (qword_1EBE93FA0 > 1)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0x3FE0000000000000;
    *(a1 + 8) = v2;
    *(a1 + 16) = v5;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
  }

  return result;
}

double static PhotosLegibilityGradient.strong.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EDE812F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(&type metadata for PhotosLegibilityGradient, qword_1EBE93F88);
  result = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = v4;
  return result;
}

void sub_1C10FCB00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C1266450();

  qword_1EBE93FA0 = v1;
}

double sub_1C10FCB70()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE7A4D0 = v2;
  return result;
}

double sub_1C10FCBEC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE7A4B8 = v2;
  return result;
}

double sub_1C10FCC6C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE7A4A0 = v2;
  return result;
}

double sub_1C10FCCE8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE7A488 = v2;
  return result;
}

unint64_t sub_1C10FCD64()
{
  result = qword_1EDE7B800;
  if (!qword_1EDE7B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93FB8);
    sub_1C10FCDE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B800);
  }

  return result;
}

unint64_t sub_1C10FCDE8()
{
  result = qword_1EDE7BBF0;
  if (!qword_1EDE7BBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93FC0);
    sub_1C0FDB6D4(&qword_1EDE7B7C8, &qword_1EBE93FC8);
    sub_1C10CABA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBF0);
  }

  return result;
}

unint64_t sub_1C10FCEC0()
{
  result = qword_1EBE93FD8;
  if (!qword_1EBE93FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93FD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosLegibilityBlurAlternativeTextShadow(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C10FCFDC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t sub_1C10FD018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosLegibilityGradient.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C10FD14C()
{
  result = qword_1EBE93FE0;
  if (!qword_1EBE93FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93FB0);
    sub_1C0FDB6D4(&qword_1EBE93FE8, &qword_1EBE93FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93FE0);
  }

  return result;
}

unint64_t sub_1C10FD204()
{
  result = qword_1EBE93FF0;
  if (!qword_1EBE93FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93FF0);
  }

  return result;
}

unint64_t sub_1C10FD258()
{
  result = qword_1EDE771D0;
  if (!qword_1EDE771D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93FD0);
    sub_1C10FD310(&qword_1EDE7BE30, &qword_1EBE93FF8, &unk_1C12B7078, sub_1C10FCD64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771D0);
  }

  return result;
}

uint64_t sub_1C10FD310(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C10FD37C();
    OUTLINED_FUNCTION_1_34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10FD37C()
{
  result = qword_1EDE7B8E0;
  if (!qword_1EDE7B8E0)
  {
    sub_1C1264360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B8E0);
  }

  return result;
}

uint64_t sub_1C10FD400(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = (a3 + 40); ; i += 2)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t sub_1C10FD4BC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

void *sub_1C10FD53C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1C0FE4B60(*(a1 + 16), 0);
  sub_1C112FA6C();
  v4 = v3;
  sub_1C0FA812C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void *sub_1C10FD5CC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94030);
  swift_initStackObject();
  v4 = sub_1C11090C0(a1, a2);
  v5 = v4[6];
  v6 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94038);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = 0;

  return v7;
}

uint64_t sub_1C10FD6A8(uint64_t a1)
{
  result = sub_1C1109584();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1C11095C4(result, v3, 0, a1);
  }
}

uint64_t sub_1C10FD70C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C1265F50();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C10FD754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  v6 = v5;
  if (v4)
  {
    sub_1C1109AF8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

_OWORD *PhotosSelection.firstIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C10FEB40();
  v3 = sub_1C10FD6A8(v2);

  if (v3)
  {
    v10 = MEMORY[0x1E69E5FE0];
    *&v9 = v3;
    return sub_1C0FD09FC(&v9, a1);
  }

  else
  {
    v5 = PhotosSelection.orderedIdentifiers.getter();
    if (v5[2])
    {
      v7 = v5[4];
      v6 = v5[5];

      v8 = MEMORY[0x1E69E6158];
    }

    else
    {

      v7 = 0;
      v6 = 0;
      v8 = 0;
      *(a1 + 16) = 0;
    }

    *a1 = v7;
    *(a1 + 8) = v6;
    *(a1 + 24) = v8;
  }

  return result;
}

uint64_t PhotosSelection.set(item:)(uint64_t a1)
{
  sub_1C0FDB0A8(a1, v7);
  PhotosSelection.isItemSelected(_:)();
  v3 = v2;
  sub_1C0FD1A5C(v7, &qword_1EBE91420);
  if ((v3 & 1) == 0 || (PhotosSelection.selectedItemsSet.getter(v7), v4 = *(v7[1] + 16), , result = , v4 >= 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C12A8B40;
    sub_1C0FDB0A8(a1, inited + 32);
    PhotosSelection.set(items:)(inited);
    swift_setDeallocating();
    return sub_1C1102090();
  }

  return result;
}

uint64_t PhotosSelection.selectionIdentifiers.getter()
{
  PhotosSelection.selectedItemsSet.getter(v19);
  v0 = v19[1];
  v18 = MEMORY[0x1E69E7CC0];
  sub_1C1102370(0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94030);
  swift_initStackObject();
  v1 = OUTLINED_FUNCTION_40();
  v2 = sub_1C11090C0(v1, v0);
  v3 = v2[6];
  v4 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94038);
  inited = swift_initStackObject();
  inited[2] = v3;
  inited[3] = v4;
  inited[4] = 0;

  while (1)
  {
    v6 = sub_1C1109178();
    if (!v6)
    {
      break;
    }

    v7 = v6;
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item), *(v6 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24));
    v8 = OUTLINED_FUNCTION_26_8();
    v10 = v9(v8);
    v12 = v11;

    v14 = *(v18 + 16);
    v13 = *(v18 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = OUTLINED_FUNCTION_18_20(v13);
      sub_1C1102370(v16, v14 + 1, 1);
    }

    *(v18 + 16) = v14 + 1;
    v15 = v18 + 16 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
  }

  swift_setDeallocating();
  sub_1C11091C4();
  return sub_1C10FE154(v18);
}

uint64_t sub_1C10FE0C0(uint64_t a1)
{
  v2 = MEMORY[0x1C68EFBB0](*(a1 + 16), MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1C1102FF4(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_1C10FE154(uint64_t a1)
{
  result = MEMORY[0x1C68EFBB0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1C11030CC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_1C10FE214()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v2 = sub_1C1262DD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = *(v1 + 16);
  v10 = sub_1C1109B5C(&qword_1EDE7BFD8, MEMORY[0x1E697BFB8]);
  v18[1] = MEMORY[0x1C68EFBB0](v9, v2, v10);
  v11 = *(v1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v18[0] = v1;
    v16 = v1 + v15;
    v17 = *(v12 + 56);
    do
    {
      v13(v5, v16, v2);
      sub_1C110320C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
  }

  else
  {
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C10FE3C0(uint64_t a1)
{
  v8 = MEMORY[0x1C68EFBB0](*(a1 + 16), MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_1C0FF4B88(v4, v6);
      sub_1C11034D4(v7, v6);
      sub_1C0FD1A08(v7);
      v4 += 40;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_40();
  }

  return v1;
}

void PhotosSelection.isItemSelected(_:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  sub_1C10D1A1C(v2, &v37, &qword_1EBE91420);
  if (!v38)
  {
    sub_1C0FD1A5C(&v37, &qword_1EBE91420);
LABEL_13:
    OUTLINED_FUNCTION_22_0();
    return;
  }

  sub_1C0F9DDE4(&v37, v39);
  v3 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v4 = OUTLINED_FUNCTION_40();
  v6._countAndFlagsBits = v5(v4, v3);
  v7 = PhotosSelection.isIdentifierSelected(_:)(v6);

  v8 = v40;
  v9 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v10._countAndFlagsBits = (*(v9 + 16))(v8, v9);
  v11 = PhotosSelection.isPreselectedIdentifierSelected(_:)(v10);

  if (!v11)
  {
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    goto LABEL_13;
  }

  sub_1C0FDB0A8(v39, &v37);
  v12 = type metadata accessor for PhotosConcreteSelectableItem();
  v13 = objc_allocWithZone(v12);
  sub_1C0FDB0A8(&v37, v13 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v36.receiver = v13;
  v36.super_class = v12;
  v14 = objc_msgSendSuper2(&v36, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  v15 = PhotosSelection.selectedItemsSet.getter(&v37);
  v16 = v37;
  v35[0] = v14;
  MEMORY[0x1EEE9AC00](v15);
  v30 = v16;
  v31 = v35;
  sub_1C11078D4(sub_1C11096F0, &v29, *(&v16 + 1));
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v32 = 0;
  v33 = v11;
  v34 = v7;
  swift_getKeyPath();
  *&v37 = v1;
  OUTLINED_FUNCTION_0_45();
  sub_1C1109B5C(v19, v20);
  OUTLINED_FUNCTION_38_6();
  sub_1C1261F30();

  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_38_6();
  sub_1C1261F50();

  OUTLINED_FUNCTION_16_16();
  sub_1C1107720(v14);
  swift_endAccess();
  OUTLINED_FUNCTION_32_7();
  sub_1C1261F40();

  __swift_project_boxed_opaque_existential_1(v39, v40);
  OUTLINED_FUNCTION_41_4();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C1266950();
  if (swift_dynamicCast())
  {
    v22 = v37;
    swift_getKeyPath();
    *&v37 = v1;
    OUTLINED_FUNCTION_3_32();
    sub_1C1261F30();

    OUTLINED_FUNCTION_32_7();
    OUTLINED_FUNCTION_3_32();
    sub_1C1261F50();

    OUTLINED_FUNCTION_16_16();
    sub_1C1102FF4(v35, v22);
    swift_endAccess();
    OUTLINED_FUNCTION_32_7();
    OUTLINED_FUNCTION_3_32();
    sub_1C1261F40();
  }

  swift_getKeyPath();
  *&v37 = v1;
  OUTLINED_FUNCTION_3_32();
  sub_1C1261F30();

  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_3_32();
  sub_1C1261F50();

  OUTLINED_FUNCTION_28_8();
  *(v1 + 64) = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_3_32();
  sub_1C1261F40();

  PhotosSelection.preselectedIdentifiers.modify();
  v25 = v23;
  if (!*v24)
  {
    v23(&v37, 0);
    goto LABEL_11;
  }

  v26 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v31 = v39;
  v27 = sub_1C11068D4(sub_1C1109714, &v30);
  v28 = *(*v26 + 16);
  if (v28 >= v27)
  {
    sub_1C1106628(v27, v28);
    v25(&v37, 0);
    goto LABEL_11;
  }

  __break(1u);
}

Swift::Void __swiftcall PhotosSelection.deselectEverything()()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  sub_1C1109B5C(v1, v2);
  sub_1C1261F30();

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_7();
  sub_1C1261F50();

  OUTLINED_FUNCTION_28_8();
  v3 = MEMORY[0x1E69E7CC0];
  v0[2] = 0;
  v0[3] = v3;

  swift_getKeyPath();
  OUTLINED_FUNCTION_15_7();
  sub_1C1261F40();

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_7();
  sub_1C1261F30();

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_7();
  sub_1C1261F50();

  OUTLINED_FUNCTION_28_8();
  v0[9] = MEMORY[0x1E69E7CD0];

  swift_getKeyPath();
  OUTLINED_FUNCTION_15_7();
  sub_1C1261F40();

  sub_1C10FFF78();
}

uint64_t sub_1C10FEB40()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v3 = sub_1C1109B5C(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
}

uint64_t PhotosSelection.selectedItemsSet.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_45();
  v5 = sub_1C1109B5C(v3, v4);
  OUTLINED_FUNCTION_0_1(v5, v6, v7, v8, v9, v10, v11, v12, v15, v1);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  v13 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v13;
}

uint64_t sub_1C10FEC78@<X0>(void *a1@<X8>)
{
  result = PhotosSelection.selectedItemsSet.getter(v4);
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10FECB4(uint64_t *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;

  return PhotosSelection.selectedItemsSet.setter(v3);
}

uint64_t PhotosSelection.selectedItemsSet.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  OUTLINED_FUNCTION_28_8();

  v5 = sub_1C110920C(v4, v3);

  if (v5)
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_48_3();
  }
}

BOOL sub_1C10FEDF8(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v3 = sub_1C0FEACC4(a1, a2);
  }

  return (v3 & 1) == 0;
}

uint64_t sub_1C10FEE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}