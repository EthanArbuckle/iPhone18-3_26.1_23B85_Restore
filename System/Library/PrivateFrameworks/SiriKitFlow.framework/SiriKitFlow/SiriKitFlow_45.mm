uint64_t sub_1DCF53FE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t *a10, uint64_t (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, char a15, SEL *a16)
{
  if ((a2 & 1) == 0)
  {
    v27 = a15;
    v26 = 29;
    v20 = [a9 *a16];
    v24 = 3;
    v25 = 0;
    sub_1DCFA6EF4((a3 + 104), &v27, a4, a5, a6, a7, a8, &v26, v20, 0, a9, &v24, *a10, a10[1], a13, a14);
  }

  return a11(a1, 1);
}

void sub_1DCF540CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v45 = v25;
  v46 = v26;
  v47 = v27;
  v49 = v28;
  v43 = v30;
  v44 = v29;
  v32 = v31;
  v34 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  (*(a24 + 176))(a23, a24);
  v40 = swift_allocObject();
  *(v40 + 16) = a23;
  *(v40 + 24) = a24;
  *(v40 + 32) = a21;
  *(v40 + 40) = a22;
  *(v40 + 48) = v24;
  *(v40 + 56) = v34;
  *(v40 + 64) = v43;
  *(v40 + 72) = v46;
  *(v40 + 80) = v32;
  *(v40 + 88) = v45;
  *(v40 + 96) = v49;
  *(v40 + 104) = v44;
  *(v40 + 112) = v47;
  v48 = *(swift_getAssociatedConformanceWitness() + 24);
  v41 = v46;

  v42 = v49;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF542F0(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    __src[0] = __dst[0];
    *&__src[1] = *(a1 + 8);
    *&__src[3] = *(a1 + 24);
    *&__src[5] = *(a1 + 40);
    *&__src[7] = *(a1 + 56);
    v21 = swift_allocObject();
    v21[2] = a13;
    v21[3] = a14;
    v21[4] = a2;
    v21[5] = a3;
    memcpy(v21 + 6, __src, 0x48uLL);
    v21[15] = a4;
    v21[16] = a5;
    v21[17] = a6;
    v21[18] = a7;
    v21[19] = a8;
    v21[20] = a9;
    v21[21] = a10;
    v21[22] = a11;
    if (a12)
    {
      v26 = *(a14 + 152);
      sub_1DCB09910(__dst, v32, &unk_1ECCA3260, &unk_1DD0E5AD0);
      v22 = a7;
      v23 = a6;
      swift_unknownObjectRetain();
      sub_1DD0DCF8C();
    }

    sub_1DCB09910(__dst, v32, &unk_1ECCA3260, &unk_1DD0E5AD0);
    v24 = a7;
    v25 = a6;
    swift_unknownObjectRetain();
    sub_1DD0DCF8C();
  }

  return a2(__dst[0], 1);
}

uint64_t sub_1DCF54718(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v42[11] = a7;
  v45 = a4;
  v43 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v23);
  v44 = v42 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v29 = v42 - v28;
  v30 = type metadata accessor for AceOutput();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  if ((a2 & 1) == 0)
  {
    v42[5] = a3;
    v42[6] = v21;
    v42[7] = AssociatedTypeWitness;
    v42[1] = a9;
    memcpy(__dst, a5, sizeof(__dst));
    v38 = *(*(a6 + 16) + 16);
    v42[12] = a5;
    v39 = a5[7];
    v40 = *(a15 + 320);
    v42[4] = a8;
    v40(a8, a14, a15);
    v41 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v41);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v42[2] = a6;
    static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  v33 = v43;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1DD0E07C0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  *&v46 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v35 = __dst[0];
  v36 = __dst[1];
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = sub_1DCB34060();
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  sub_1DD0DD7EC();

  return a3(v33, 1);
}

void sub_1DCF54D8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v43 = a8;
  v41 = a7;
  v36 = a1;
  v35 = a14;
  v39 = a12;
  v44 = a11;
  v45 = a13;
  v42 = a10;
  v37 = a9;
  v19 = type metadata accessor for AceOutput();
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v24 = a3;
  MEMORY[0x1E12A6920]();
  sub_1DCBBF95C(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1DD0DE3AC();
  v25 = *(a2 + 16);
  swift_endAccess();
  LOBYTE(v46[0]) = 59;
  v26 = *(a15 + 312);

  v38 = a5;
  v40 = a6;
  v27 = v26(v46, a5, a6, v35, a15);
  v28 = v27;
  if (v27)
  {
    v29 = type metadata accessor for DefaultFlowActivity();
    v27 = sub_1DCCAE20C();
  }

  else
  {
    v29 = 0;
    v47[1] = 0;
    v47[2] = 0;
  }

  v47[0] = v28;
  v47[3] = v29;
  v47[4] = v27;
  sub_1DCB09910(v36, &v23[v19[7]], &unk_1ECCA3270, &qword_1DD0E0F70);
  v30 = v19[9];
  v31 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(&v23[v30], 1, 1, v31);
  v32 = v19[8];
  v33 = *MEMORY[0x1E69D0678];
  v34 = sub_1DD0DD15C();
  (*(*(v34 - 8) + 104))(&v23[v32], v33, v34);
  *(v23 + 15) = 0;
  *(v23 + 104) = 0u;
  *(v23 + 88) = 0u;
  sub_1DCB6C5E8(v47, (v23 + 88));
  v23[v19[10]] = 0;
  *v23 = v25;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 9) = 0;
  v23[80] = 3;
  sub_1DCB82888();
}

void sub_1DCF5515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = [a5 typeName];
  v18 = sub_1DD0DDFBC();
  v20 = v19;

  LOBYTE(v18) = sub_1DCF5650C(v18, v20);

  v21 = swift_allocObject();
  *(v21 + 16) = a12;
  *(v21 + 24) = a13;
  *(v21 + 32) = v18 & 1;
  *(v21 + 40) = v13;
  *(v21 + 48) = a1;
  *(v21 + 56) = a2;
  *(v21 + 64) = a5;
  *(v21 + 72) = a10;
  *(v21 + 80) = a11;
  *(v21 + 88) = a3;
  *(v21 + 96) = a4;
  *(v21 + 104) = a6;
  *(v21 + 112) = a9;
  v24 = *(a13 + 184);
  v22 = a9;
  sub_1DD0DCF8C();
}

void sub_1DCF55300(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v39 = a7;
  v40 = a8;
  v42 = a5;
  v43 = a6;
  v41 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v20);
  v22 = &v30 - v21;
  if (sub_1DCF9FF44(a2))
  {
    sub_1DCEC9388();
  }

  v31 = a11;
  v32 = a12;
  v33 = a10;
  v36 = v22;
  v37 = a9;
  (*(a14 + 176))(a13, a14);
  v23 = swift_allocObject();
  v38 = v18;
  *(v23 + 16) = a13;
  *(v23 + 24) = a14;
  v24 = v40;
  *(v23 + 32) = v39;
  *(v23 + 40) = v24;
  v34 = a1;
  *(v23 + 48) = v41;
  *(v23 + 56) = a4;
  v25 = v42;
  *(v23 + 64) = v43;
  *(v23 + 72) = v25;
  *(v23 + 80) = a9;
  *(v23 + 88) = a10;
  *(v23 + 96) = a1;
  LODWORD(v39) = a2 & 1;
  *(v23 + 104) = a2 & 1;
  v26 = v31;
  v27 = v32;
  *(v23 + 112) = v32;
  *(v23 + 120) = v26;
  v35 = *(swift_getAssociatedConformanceWitness() + 64);
  v28 = v27;
  v29 = v26;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF555B8(uint64_t *a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  v71 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(*(AssociatedTypeWitness - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v24);
  v28 = &v53 - v27;
  v29 = *a1;
  v30 = *(a1 + 72);
  if ((v30 & 1) == 0)
  {
    v70 = v28;
    v63 = a13;
    v61 = a12;
    v65 = a11;
    v66 = a10;
    v62 = a9;
    v59 = a1[8];
    v68 = a3;
    v35 = a1[7];
    v67 = a4;
    v36 = *(a4 + 16);
    v81 = *(a1 + 1);
    v82 = *(a1 + 3);
    v83 = *(a1 + 5);
    v80 = v29;
    v84 = v35;
    v85 = v59;
    v58 = v35;
    v37 = v29;
    v57 = v29;
    v38 = v35 != 1;
    v56 = a2;
    v69 = a8;
    v39 = *(a15 + 320);
    v73 = v37;
    v74 = *(a1 + 1);
    v75 = *(a1 + 3);
    v76 = *(a1 + 5);
    v77 = v35;
    v78 = v59;
    v79 = v30;
    v60 = v25;
    v64 = v26;
    sub_1DCBBF670(&v73, v72);
    v54 = a6;
    v40 = v39(a6, a14, a15);
    v41 = (*(*v36 + 96))(&v80, v38, v40 & 1);
    v55 = v41;
    (*(a15 + 152))(a14, a15);
    v42 = swift_allocObject();
    *(v42 + 16) = a14;
    *(v42 + 24) = a15;
    v43 = v68;
    *(v42 + 32) = v56;
    *(v42 + 40) = v43;
    v44 = v61;
    *(v42 + 48) = v61;
    *(v42 + 56) = a5;
    v45 = v69;
    *(v42 + 64) = a6;
    *(v42 + 72) = v45;
    v46 = v63;
    *(v42 + 80) = v62;
    *(v42 + 88) = v46;
    v47 = v57;
    *(v42 + 96) = v67;
    *(v42 + 104) = v47;
    v48 = *(a1 + 3);
    *(v42 + 112) = *(a1 + 1);
    *(v42 + 128) = v48;
    *(v42 + 144) = *(a1 + 5);
    v49 = v59;
    *(v42 + 160) = v58;
    *(v42 + 168) = v49;
    *(v42 + 176) = v41;
    *(v42 + 184) = v71;
    v59 = *(swift_getAssociatedConformanceWitness() + 40);
    v50 = v44;
    swift_unknownObjectRetain();
    v51 = v54;

    v52 = v46;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DD0E07C0;
  v73 = 0;
  *&v74 = 0xE000000000000000;
  v80 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v32 = v73;
  v33 = v74;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1DCB34060();
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  sub_1DD0DD7EC();

  return a2(v29, 1);
}

uint64_t sub_1DCF55B38(void *a1, char a2, uint64_t (*a3)(void, void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v55 = a8;
  v53 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(*(AssociatedTypeWitness - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v24);
  v28 = v43 - v27;
  if ((a2 & 1) == 0)
  {
    v48 = v25;
    v49 = v26;
    v50 = a3;
    v54 = a4;
    v52 = a14;
    v45 = a13;
    v44 = a12;
    v46 = a10;
    v47 = a9;
    v33 = swift_allocObject();
    v51 = v33;
    *(v33 + 16) = MEMORY[0x1E69E7CC0];
    v34 = (v33 + 16);
    if (a5)
    {
      sub_1DCED6F5C(a1, 0);
      v35 = a5;
      MEMORY[0x1E12A6920]();
      sub_1DCBBF95C(*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1DD0DE3AC();
    }

    else
    {
    }

    v36 = *(a16 + 192);
    v43[2] = v28;
    v36(a15, a16);
    v37 = swift_allocObject();
    v37[2] = a15;
    v37[3] = a16;
    v37[4] = a11;
    memcpy(v37 + 5, v44, 0x48uLL);
    v37[14] = v45;
    v37[15] = a1;
    v38 = v53;
    v37[16] = a6;
    v37[17] = v38;
    v43[1] = a6;
    v39 = v46;
    v40 = v47;
    v37[18] = v51;
    v37[19] = v39;
    v41 = v55;
    v37[20] = v52;
    v37[21] = v41;
    v42 = v50;
    v37[22] = v40;
    v37[23] = v42;
    v37[24] = v54;
    v50 = *(swift_getAssociatedConformanceWitness() + 32);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DD0E07C0;
  v57 = 0;
  v58 = 0xE000000000000000;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v30 = v57;
  v31 = v58;
  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = sub_1DCB34060();
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  sub_1DD0DD7EC();

  return a3(a1, 1);
}

void sub_1DCF55F8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v51 = a5;
  v49 = a4;
  v55 = a2;
  v52 = a14;
  v47 = a13;
  v50 = a12;
  v46 = a11;
  v48 = a10;
  v54 = a9;
  v45 = type metadata accessor for AceOutput();
  v21 = *(*(v45 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v45, v22);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = (v44 - v27);
  memcpy(__dst, a3, 0x48uLL);
  (*(a16 + 320))(a7, a15, a16);
  v53 = a3;
  v29 = a3[7];
  v30 = a1;
  sub_1DCECC6D0();
  v51 = v28;
  v31 = *v28;
  swift_beginAccess();

  sub_1DCBB920C(v32);
  swift_endAccess();
  LOBYTE(__dst[0]) = 56;
  v33 = *(a16 + 312);
  v49 = a7;
  v44[2] = a6;
  v34 = v33(__dst, a7, v54, a15, a16);
  swift_beginAccess();
  v35 = *(a8 + 16);
  if (v34)
  {
    v36 = type metadata accessor for DefaultFlowActivity();
    v37 = sub_1DCCAE20C();
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v57 = 0;
    v58 = 0;
  }

  v44[1] = v34;
  v56 = v34;
  v59 = v36;
  v60 = v37;
  v38 = v45;
  sub_1DCB09910(v30, &v25[*(v45 + 28)], &unk_1ECCA3270, &qword_1DD0E0F70);
  v39 = *(v38 + 36);
  v40 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(&v25[v39], 1, 1, v40);
  v41 = *(v38 + 32);
  v42 = *MEMORY[0x1E69D0678];
  v43 = sub_1DD0DD15C();
  (*(*(v43 - 8) + 104))(&v25[v41], v42, v43);
  *(v25 + 15) = 0;
  *(v25 + 104) = 0u;
  *(v25 + 88) = 0u;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF5645C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if ((a2 & 1) == 0)
  {
    v19 = a15;
    v18 = 29;
    v16 = 3;
    v17 = 0;
    sub_1DCFA6EF4((a3 + 104), &v19, a4, a5, a6, a7, a8, &v18, 0, 1, a9, &v16, *a10, a10[1], a13, a14);
  }

  return a11(a1, 1);
}

uint64_t sub_1DCF5650C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!a2)
  {
    goto LABEL_6;
  }

  if (qword_1ECCA1248 != -1)
  {
    swift_once();
  }

  if (sub_1DCCE6C7C(a1, a2, qword_1ECCA2828))
  {
    v6 = 6;
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v13 = v6;
  v15 = &type metadata for FeatureFlagDefinitions.Core;
  v16 = &off_1F585CB38;
  v14 = 0;
  v7 = v3[11];
  v8 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v7);
  v9 = 0;
  if (((*(v8 + 248))(&v13, v7, v8) & 1) == 0)
  {
    v10 = v3[11];
    v11 = v3[12];
    __swift_project_boxed_opaque_existential_1(v3 + 8, v10);
    v9 = (*(v11 + 8))(v10, v11) ^ 1;
  }

  sub_1DCC4B20C(&v13);
  return v9 & 1;
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  v8 = *(v0 + 120);

  v9 = *(v0 + 128);

  if (*(v0 + 144) >= 3uLL)
  {
  }

  v10 = *(v0 + 152);

  v11 = *(v0 + 168);

  return swift_deallocObject();
}

uint64_t ResponseBundle.dialogs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t type metadata accessor for ResponseBundle()
{
  result = qword_1ECCAAE78;
  if (!qword_1ECCAAE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ResponseBundle.init(dialogExecutionResult:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ResponseBundle();
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  v5 = *(v4 + 28);
  v6 = type metadata accessor for OutputGenerationManifest();
  __swift_storeEnumTagSinglePayload(a2 + v5, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v7 = swift_allocObject();
  *&result = 1;
  *(v7 + 16) = xmmword_1DD0E15D0;
  *(v7 + 32) = a1;
  *a2 = v7;
  return result;
}

uint64_t ResponseBundle.init(resultModel:conversationModel:dialogs:outputGenerationManifest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ResponseBundle();
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 8) = 0u;
  v11 = *(v10 + 28);
  v12 = type metadata accessor for OutputGenerationManifest();
  __swift_storeEnumTagSinglePayload(a5 + v11, 1, 1, v12);
  *a5 = a3;
  sub_1DCF3A668(a1, a5 + 8, &qword_1ECCA1838, &unk_1DD0FC960);
  sub_1DCF3A668(a2, a5 + 48, &qword_1ECCA1838, &unk_1DD0FC960);
  return sub_1DCF3A668(a4, a5 + v11, &unk_1ECCA8A90, &qword_1DD0FE488);
}

uint64_t dispatch thunk of ResponseBundleProducer.responseBundle.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DCB193FC;

  return v11(a1, a2, a3);
}

uint64_t initializeBufferWithCopyOfBuffer for ResponseBundle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    sub_1DD0DCF8C();
  }

  v7 = *(a2 + 32);

  if (v7)
  {
    v8 = *(a2 + 40);
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    (**(v7 - 8))(a1 + 8, a2 + 8, v7);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    *(a1 + 72) = v9;
    *(a1 + 80) = v10;
    (**(v9 - 8))(a1 + 48, a2 + 48);
  }

  else
  {
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
    *(a1 + 80) = *(a2 + 80);
  }

  v12 = *(a3 + 28);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for OutputGenerationManifest();
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v17 = v14[1];
    *v13 = *v14;
    v13[1] = v17;
    v18 = *(v15 + 20);
    sub_1DD0DCC3C();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v13, v14, *(*(v16 - 8) + 64));
  return a1;
}

uint64_t destroy for ResponseBundle(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  if (a1[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
  }

  v5 = a1 + *(a2 + 28);
  v6 = type metadata accessor for OutputGenerationManifest();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (!result)
  {
    v8 = *(v5 + 8);

    v9 = *(v6 + 20);
    sub_1DD0DCC3C();
  }

  return result;
}

uint64_t initializeWithCopy for ResponseBundle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v7 = *(a2 + 32);

  if (v7)
  {
    v8 = *(a2 + 40);
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    (**(v7 - 8))(a1 + 8, a2 + 8, v7);
  }

  else
  {
    v9 = *(a2 + 24);
    *v6 = *(a2 + 8);
    *(a1 + 24) = v9;
    *(a1 + 40) = *(a2 + 40);
  }

  v10 = *(a2 + 72);
  if (v10)
  {
    v11 = *(a2 + 80);
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    (**(v10 - 8))(a1 + 48, a2 + 48);
  }

  else
  {
    v12 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v12;
    *(a1 + 80) = *(a2 + 80);
  }

  v13 = *(a3 + 28);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for OutputGenerationManifest();
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    v18 = v15[1];
    *v14 = *v15;
    v14[1] = v18;
    v19 = *(v16 + 20);
    sub_1DD0DCC3C();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v14, v15, *(*(v17 - 8) + 64));
  return a1;
}

uint64_t *assignWithCopy for ResponseBundle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a2[4];
  if (a1[4])
  {
    v8 = a1 + 1;
    if (v7)
    {
      __swift_assign_boxed_opaque_existential_1(v8, a2 + 1);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else if (v7)
  {
    a1[4] = v7;
    a1[5] = a2[5];
    (**(v7 - 8))((a1 + 1), (a2 + 1));
    goto LABEL_8;
  }

  v9 = *(a2 + 1);
  v10 = *(a2 + 3);
  a1[5] = a2[5];
  *(a1 + 3) = v10;
  *(a1 + 1) = v9;
LABEL_8:
  v11 = a2[9];
  if (a1[9])
  {
    v12 = a1 + 6;
    if (v11)
    {
      __swift_assign_boxed_opaque_existential_1(v12, a2 + 6);
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else if (v11)
  {
    a1[9] = v11;
    a1[10] = a2[10];
    (**(v11 - 8))((a1 + 6), (a2 + 6));
    goto LABEL_15;
  }

  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  a1[10] = a2[10];
  *(a1 + 3) = v13;
  *(a1 + 4) = v14;
LABEL_15:
  v15 = *(a3 + 28);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = type metadata accessor for OutputGenerationManifest();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v18);
  v20 = __swift_getEnumTagSinglePayload(v17, 1, v18);
  if (EnumTagSinglePayload)
  {
    if (!v20)
    {
      *v16 = *v17;
      v16[1] = v17[1];
      v21 = *(v18 + 20);
      sub_1DD0DCC3C();
    }
  }

  else
  {
    if (!v20)
    {
      *v16 = *v17;
      v23 = v16[1];
      v16[1] = v17[1];

      v24 = *(v18 + 20);
      sub_1DD0DCC3C();
    }

    sub_1DCF598A8(v16, type metadata accessor for OutputGenerationManifest);
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v16, v17, *(*(v22 - 8) + 64));
  return a1;
}

uint64_t sub_1DCF598A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t initializeWithTake for ResponseBundle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a3 + 28);
  v6 = (a2 + v5);
  v7 = (a1 + v5);
  *(a1 + 80) = *(a2 + 80);
  v8 = type metadata accessor for OutputGenerationManifest();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v8))
  {
    *v7 = *v6;
    v10 = *(v8 + 20);
    sub_1DD0DCC3C();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v7, v6, *(*(v9 - 8) + 64));
  return a1;
}

uint64_t *assignWithTake for ResponseBundle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 1;
  v7 = *a1;
  *a1 = *a2;

  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  }

  v8 = *(v6 + 1);
  *(a1 + 1) = *v6;
  *(a1 + 3) = v8;
  a1[5] = v6[4];
  if (a1[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 6);
  }

  v9 = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v9;
  a1[10] = a2[10];
  v10 = *(a3 + 28);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for OutputGenerationManifest();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v13);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload)
  {
    if (!v15)
    {
      *v11 = *v12;
      v16 = *(v13 + 20);
      sub_1DD0DCC3C();
    }
  }

  else
  {
    if (!v15)
    {
      v18 = v12[1];
      v19 = v11[1];
      *v11 = *v12;
      v11[1] = v18;

      v20 = *(v13 + 20);
      sub_1DD0DCC3C();
    }

    sub_1DCF598A8(v11, type metadata accessor for OutputGenerationManifest);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
  memcpy(v11, v12, *(*(v17 - 8) + 64));
  return a1;
}

void sub_1DCF5AC60()
{
  sub_1DCF5AD08();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1DCF5AD08()
{
  if (!qword_1ECCAAE88)
  {
    type metadata accessor for OutputGenerationManifest();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCAAE88);
    }
  }
}

uint64_t ResponseChunk.__allocating_init(views:nlContext:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  sub_1DCBB6C68(a2, v7 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext);
  return v7;
}

uint64_t ResponseChunk.init(views:nlContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  sub_1DCBB6C68(a2, v2 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext);
  return v2;
}

double sub_1DCF5AE20@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    *&v20[0] = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v7 = (v4 + 32);
    do
    {
      v8 = *v7;
      v7 += 2;
      v9 = v8;
      sub_1DD0DECDC();
      v10 = *(*&v20[0] + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      --v5;
    }

    while (v5);
    v6 = *&v20[0];
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v11 = OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext;
  v12 = type metadata accessor for AceOutput();
  a1[3] = v12;
  a1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
  sub_1DCDB1604(v2 + v11, boxed_opaque_existential_1Tm + v12[7]);
  v14 = v12[9];
  v15 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1Tm + v14, 1, 1, v15);
  v16 = v12[8];
  v17 = *MEMORY[0x1E69D0678];
  v18 = sub_1DD0DD15C();
  (*(*(v18 - 8) + 104))(boxed_opaque_existential_1Tm + v16, v17, v18);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v20, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v12[10]) = 0;
  *boxed_opaque_existential_1Tm = v6;
  result = 0.0;
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  return result;
}

uint64_t ResponseChunk.deinit()
{
  v1 = *(v0 + 16);

  sub_1DCC34178(v0 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext);
  return v0;
}

uint64_t ResponseChunk.__deallocating_deinit()
{
  v1 = v0[2];

  sub_1DCC34178(v0 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResponseChunk()
{
  result = qword_1ECCAAE90;
  if (!qword_1ECCAAE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCF5B0F8()
{
  sub_1DCC91108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t ResponseChunkRenderer.__allocating_init(aceServiceInvoker:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DCAFF9E8(a1, v2 + 16);
  return v2;
}

void sub_1DCF5B260(uint64_t a1)
{
  v2 = sub_1DD0DDDAC();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v7 = sub_1DD0DDDFC();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_16();
  v12 = type metadata accessor for AceOutput();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v19 = *(a1 + 16);
  v20 = *(v19 + 16);
  if (v20)
  {
    *&aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v21 = (v19 + 32);
    do
    {
      v22 = *v21;
      v21 += 2;
      v23 = v22;
      sub_1DD0DECDC();
      v24 = *(*&aBlock[0] + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      --v20;
    }

    while (v20);
    v25 = *&aBlock[0];
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v32 = 0;
  memset(aBlock, 0, sizeof(aBlock));
  sub_1DCDB1604(a1 + OBJC_IVAR____TtC11SiriKitFlow13ResponseChunk_nlContext, v17 + v12[7]);
  v26 = v12[9];
  v27 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(v17 + v26, 1, 1, v27);
  v28 = v12[8];
  v29 = *MEMORY[0x1E69D0678];
  v30 = sub_1DD0DD15C();
  (*(*(v30 - 8) + 104))(v17 + v28, v29, v30);
  *(v17 + 120) = 0;
  *(v17 + 104) = 0u;
  *(v17 + 88) = 0u;
  sub_1DCB6C5E8(aBlock, v17 + 88);
  *(v17 + v12[10]) = 0;
  *v17 = v25;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0;
  *(v17 + 80) = 3;
  sub_1DCB82888();
}

void sub_1DCF5B728(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_1DD0DCF8C();
}

uint64_t ResponseChunkRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1DCF5B7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v16 - v11;
  v17[3] = type metadata accessor for AceOutput();
  v17[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
  sub_1DCB6FF74(a1, boxed_opaque_existential_1Tm);
  v14 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  sub_1DCB17CA0(v17, v16);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  sub_1DCAFF9E8(v16, (v15 + 5));
  v15[10] = a2;
  v15[11] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF5B930()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0);
}

unint64_t sub_1DCF5B960()
{
  result = qword_1EDE46320;
  if (!qword_1EDE46320)
  {
    sub_1DD0DDDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46320);
  }

  return result;
}

unint64_t sub_1DCF5B9B8()
{
  result = qword_1EDE46298;
  if (!qword_1EDE46298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4E08, &qword_1DD103B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46298);
  }

  return result;
}

uint64_t ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:systemResponse:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5BAC4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB17CA0(v0[13], (v0 + 2));
  OUTLINED_FUNCTION_7_65(0);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[20] = v1;
  *v1 = v2;
  v1[1] = sub_1DCF5BB78;
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[12];

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5BB78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  v3 = *(v1 + 160);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCF5C000(v2 + 56);
  sub_1DCF5C000(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[17] = a6;
  v7[18] = v6;
  v7[15] = a4;
  v7[16] = a5;
  v7[13] = a2;
  v7[14] = a3;
  v7[12] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5BC88()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_7_65(0);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v1;
  *v1 = v2;
  v1[1] = sub_1DCF5BD4C;
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 96);

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5BD4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  v3 = *(v1 + 152);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCF5C000(v2 + 56);
  sub_1DCF5C000(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCF5BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DCB4AD3C;

  return ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:systemResponse:utterance:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1DCF5BF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AE1C;

  return ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCF5C000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1838, &unk_1DD0FC960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:systemResponse:utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_11_13();
  v15 = (*(a9 + 8) + **(a9 + 8));
  v10 = *(*(a9 + 8) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1DCB4AD3C;
  v13 = OUTLINED_FUNCTION_8_6();

  return v15(v13);
}

uint64_t dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)()
{
  OUTLINED_FUNCTION_11_13();
  v2 = *(v1 + 16);
  v8 = (v2 + *v2);
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_8_6();

  return v8(v6);
}

uint64_t ResponseFactory.__allocating_init()()
{
  v0 = swift_allocObject();
  ResponseFactory.init()();
  return v0;
}

uint64_t sub_1DCF5C300()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)()
{
  return OUTLINED_FUNCTION_0_2();
}

{
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5C39C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C420()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)();
}

uint64_t ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)()
{
  return OUTLINED_FUNCTION_0_2();
}

{
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5C4BC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C540()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)()
{
  return OUTLINED_FUNCTION_0_2();
}

{
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5C5DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C660()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)();
}

uint64_t ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)()
{
  return OUTLINED_FUNCTION_0_2();
}

{
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF5C6FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_21_44();
  MEMORY[0x1E12A6780](0xD000000000000034);
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C798()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5C834()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C8B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5C954()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5C9D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CA74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CAF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CB94()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_21_44();
  MEMORY[0x1E12A6780](0xD000000000000034);
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CC30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:conversationModel:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CCCC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CD50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CDEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_21_44();
  MEMORY[0x1E12A6780](0xD000000000000039);
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CE84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)();
}

uint64_t sub_1DCF5CF20()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_17_42();
  OUTLINED_FUNCTION_17_42();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5CFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeSuccessOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5D03C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5D0C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeSuccessOutput(resultModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5D15C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_17_42();
  OUTLINED_FUNCTION_17_42();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5D1DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeSuccessOutput(conversationModel:dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5D278()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_10_71();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

uint64_t sub_1DCF5D2FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResponseGenerating.makeSuccessOutput(dialog:outputGenerationManifest:)();
}

uint64_t sub_1DCF5D398()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_15_59();
  OUTLINED_FUNCTION_41_27();
  OUTLINED_FUNCTION_27_34();
  MEMORY[0x1E12A6780]();
  OUTLINED_FUNCTION_21_44();
  MEMORY[0x1E12A6780](0xD000000000000033);
  OUTLINED_FUNCTION_40_30();
  OUTLINED_FUNCTION_8_72();
  return sub_1DD0DEDFC();
}

void ResponseGenerating.makeResponseUpdateOutput(viewId:update:)()
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000003FLL, 0x80000001DD1256C0);
  MEMORY[0x1E12A6780](0xD000000000000028, 0x80000001DD125A40);
  OUTLINED_FUNCTION_8_72();
  sub_1DD0DEDFC();
  __break(1u);
}

void ResponseFactory.__allocating_init(dialogUsageProvider:)(uint64_t a1)
{
  v2 = sub_1DD0DD39C();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  sub_1DCB17CA0(a1, v13);
  sub_1DD0DD3DC();
  v10 = type metadata accessor for IntentServicesAdapter();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1DCB578A0(v9);
  sub_1DD0DCF8C();
}

uint64_t *ResponseFactory.__allocating_init(intentServicesAdapter:)(uint64_t *a1)
{
  v16 = &type metadata for DialogUsageProvider;
  v17 = &protocol witness table for DialogUsageProvider;
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  v13 = sub_1DCF6185C(&v15, v11, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t sub_1DCF5D704(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  OUTLINED_FUNCTION_0_1();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13);
  v17 = a3(a1, v15, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v17;
}

uint64_t sub_1DCF5D7FC()
{
  OUTLINED_FUNCTION_42();
  sub_1DCBBF7D0(*(v0 + 96), *(v0 + 104));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 128);

  return v1();
}

uint64_t sub_1DCF5D858()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v1[18] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF5D8E4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  OUTLINED_FUNCTION_73_13();
  sub_1DCB17CA0(v3, (v0 + 7));
  v0[19] = sub_1DCC6F2C8(v2);
  v4 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[20] = v5;
  *v5 = v6;
  v5[1] = sub_1DCF5D9BC;
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v10 = v0[12];
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5D9BC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[19];
  v7 = v4[18];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  sub_1DCB0E9D8(v7, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v10, v11, v12);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v13, v14, v15);

  OUTLINED_FUNCTION_29();

  return v16();
}

uint64_t sub_1DCF5DB14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5DB98()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[17];
  v2 = v0[14];
  sub_1DCB17CA0(v0[13], (v0 + 2));
  OUTLINED_FUNCTION_48_22(0);
  v0[18] = sub_1DCC6F2C8(v2);
  v3 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[19] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_44_28(v4);
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5DC6C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[18];
  v7 = v4[17];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  sub_1DCB0E9D8(v7, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v10, v11, v12);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v13, v14, v15);

  OUTLINED_FUNCTION_29();

  return v16();
}

uint64_t sub_1DCF5DDC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5DE48()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  *&v4 = OUTLINED_FUNCTION_22_37();
  *(v0 + 16) = v4;
  sub_1DCB17CA0(v5, v0 + 56);
  *(v0 + 144) = sub_1DCC6F2C8(v3);
  sub_1DD0DD0AC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_44_28(v10);
  OUTLINED_FUNCTION_49_22();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5DF28()
{
  OUTLINED_FUNCTION_42();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5DFB0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  OUTLINED_FUNCTION_48_22(0);
  *(v0 + 136) = sub_1DCC6F2C8(v3);
  v4 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 144) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_45_23(v5);
  OUTLINED_FUNCTION_60_17();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E080()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = v4[18];
  v6 = v4[17];
  v7 = v4[16];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  sub_1DCB0E9D8(v7, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v10, v11, v12);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB0E9D8(v13, v14, v15);

  OUTLINED_FUNCTION_29();

  return v16();
}

uint64_t sub_1DCF5E1D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5E25C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[17];
  v2 = v0[14];
  sub_1DCB17CA0(v0[13], (v0 + 2));
  sub_1DCB17CA0(v2, (v0 + 7));
  v3 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[18] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_44_28(v4);
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E318()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 136);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  sub_1DCB0E9D8(v6, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_66_12();
  OUTLINED_FUNCTION_65_16();

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCF5E444()
{
  OUTLINED_FUNCTION_42();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5E4CC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_73_13();
  sub_1DD0DD0AC();
  OUTLINED_FUNCTION_7_65(0);
  OUTLINED_FUNCTION_38_29(v2, v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_45_23(v6);
  OUTLINED_FUNCTION_59_23();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E580()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *(v4 + 128);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  sub_1DCB0E9D8(v6, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_66_12();
  OUTLINED_FUNCTION_65_16();

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCF5E6AC()
{
  OUTLINED_FUNCTION_42();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5E734()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[16];
  v2 = v0[13];
  OUTLINED_FUNCTION_20_33();
  sub_1DCB17CA0(v3, (v0 + 7));
  v4 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[17] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_45_23(v5);
  OUTLINED_FUNCTION_49_22();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E7EC()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v1[18] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF5E878()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[18];
  v2 = v0[14];
  sub_1DCB17CA0(v0[13], (v0 + 2));
  sub_1DCB17CA0(v2, (v0 + 7));
  v3 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[19] = v4;
  *v4 = v5;
  v4[1] = sub_1DCF5E938;
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[12];
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5E938()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *(v4 + 144);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  sub_1DCB0E9D8(v6, &unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_66_12();
  OUTLINED_FUNCTION_65_16();

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCF5EA64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5EAE8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_73_13();
  sub_1DD0DD0AC();
  OUTLINED_FUNCTION_7_65(0);
  OUTLINED_FUNCTION_38_29(v2, v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 144) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_70_14(v6);
  OUTLINED_FUNCTION_59_23();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5EB94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_51_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  *(v0 + 136) = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5EC18()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[17];
  v2 = v0[13];
  OUTLINED_FUNCTION_20_33();
  sub_1DCB17CA0(v3, (v0 + 7));
  v4 = sub_1DD0DD0AC();
  OUTLINED_FUNCTION_12_7(v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[18] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_70_14(v5);
  OUTLINED_FUNCTION_49_22();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5ECC8()
{
  OUTLINED_FUNCTION_42();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF5ED50()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[16];
  OUTLINED_FUNCTION_20_33();
  sub_1DD0DD0AC();
  OUTLINED_FUNCTION_48_22(0);
  OUTLINED_FUNCTION_38_29(v2, v3, v4, v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[17] = v6;
  *v6 = v7;
  v6[1] = sub_1DCF63950;
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  OUTLINED_FUNCTION_60_17();
  OUTLINED_FUNCTION_42_29();

  return sub_1DCF5F6B8();
}

uint64_t sub_1DCF5EE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCF5EE2C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[14];
  sub_1DCB17CA0(v0[13], (v0 + 2));
  sub_1DCB17CA0(v1, (v0 + 7));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[18] = v2;
  *v2 = v3;
  v2[1] = sub_1DCF5EED8;
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  v7 = v0[12];
  OUTLINED_FUNCTION_46_26();

  sub_1DCF605DC();
}

uint64_t sub_1DCF5EED8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_64_18(v2 + 56);
  OUTLINED_FUNCTION_64_18(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v8();
}

void sub_1DCF5EFFC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_73_13();
  OUTLINED_FUNCTION_7_65(0);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_69_7(v1);
  OUTLINED_FUNCTION_59_23();

  sub_1DCF605DC();
}

uint64_t sub_1DCF5F090()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_64_18(v2 + 56);
  OUTLINED_FUNCTION_64_18(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v8();
}

void sub_1DCF5F1B4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_20_33();
  sub_1DCB17CA0(v2, v0 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_69_7(v3);
  OUTLINED_FUNCTION_49_22();

  sub_1DCF605DC();
}

uint64_t sub_1DCF5F250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCF5F268()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_7_65(0);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 128) = v1;
  *v1 = v2;
  v1[1] = sub_1DCF5F320;
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);

  sub_1DCF605DC();
}

uint64_t sub_1DCF5F320()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  OUTLINED_FUNCTION_64_18(v2 + 56);
  OUTLINED_FUNCTION_64_18(v2 + 16);
  OUTLINED_FUNCTION_29();

  return v8();
}

double sub_1DCF5F420@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = [objc_allocWithZone(MEMORY[0x1E69C7BE8]) init];
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v9 + 8))(v16, v7);
  OUTLINED_FUNCTION_50_21();
  sub_1DCB4D8E8(v18, v19, v20);

  sub_1DCB6B9B8(a1, a2, v17);
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v22 = sub_1DD0DB29C();
  if (v45)
  {
  }

  else
  {
    sub_1DCF617E8(v22, v23, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DD0E15D0;
    *(v25 + 32) = v17;
    v26 = type metadata accessor for AceOutput();
    memset(v43, 0, sizeof(v43));
    v44 = 0;
    a4[3] = v26;
    a4[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
    v28 = v26[7];
    type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    v33 = v26[9];
    sub_1DD0DD10C();
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    v38 = v26[8];
    v39 = *MEMORY[0x1E69D0678];
    v40 = sub_1DD0DD15C();
    OUTLINED_FUNCTION_2(v40);
    (*(v41 + 104))(boxed_opaque_existential_1Tm + v38, v39);
    boxed_opaque_existential_1Tm[15] = 0;
    *(boxed_opaque_existential_1Tm + 13) = 0u;
    *(boxed_opaque_existential_1Tm + 11) = 0u;
    sub_1DCB6C5E8(v43, (boxed_opaque_existential_1Tm + 11));
    *(boxed_opaque_existential_1Tm + v26[10]) = 0;
    *boxed_opaque_existential_1Tm = v25;
    result = 0.0;
    *(boxed_opaque_existential_1Tm + 1) = 0u;
    *(boxed_opaque_existential_1Tm + 3) = 0u;
    *(boxed_opaque_existential_1Tm + 5) = 0u;
    *(boxed_opaque_existential_1Tm + 7) = 0u;
    boxed_opaque_existential_1Tm[9] = 0;
    *(boxed_opaque_existential_1Tm + 80) = 3;
  }

  return result;
}

uint64_t sub_1DCF5F6B8()
{
  OUTLINED_FUNCTION_42();
  v2 = *v0;
  v1[18] = v3;
  v1[19] = v2;
  v1[16] = v4;
  v1[17] = v5;
  v1[14] = v6;
  v1[15] = v7;
  v1[12] = v8;
  v1[13] = v9;
  v1[11] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v11);
  v13 = *(v12 + 64);
  v1[20] = OUTLINED_FUNCTION_38();
  v14 = MEMORY[0x1E69E7CC0];
  v1[9] = MEMORY[0x1E69E7CC0];
  v1[10] = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v1[21] = v15;
  *v15 = v16;
  v15[1] = sub_1DCF5F7C4;

  return sub_1DCB6AA14();
}

uint64_t sub_1DCF5F7C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCF5F8A8()
{
  v21 = v0;
  v1 = v0[20];
  v2 = v0[7];
  v3 = v0[8];
  sub_1DCB09910(v0[16], v1, &unk_1ECCAAEA0, &qword_1DD103C90);
  v4 = sub_1DD0DD0AC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[20];
  if (EnumTagSinglePayload == 1)
  {
    sub_1DCB0E9D8(v0[20], &unk_1ECCAAEA0, &qword_1DD103C90);
    v7 = 0;
  }

  else
  {
    v7 = sub_1DD0073A8();
    (*(*(v4 - 8) + 8))(v6, v4);
  }

  sub_1DCBB92CC(MEMORY[0x1E69E7CC0]);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  v9 = v0[10];

  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v11))
  {
    v12 = OUTLINED_FUNCTION_151();
    *v12 = 134217984;
    *(v12 + 4) = sub_1DCB08B14(v9);

    OUTLINED_FUNCTION_71_16(&dword_1DCAFC000, v13, v14, "Created %ld tappable commands");
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v20[0] = v2;
  v20[1] = v3;

  if (v9 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
    v15 = sub_1DD0DEE0C();
  }

  else
  {
    sub_1DD0DF0CC();
    v15 = v9;
  }

  if (v7)
  {
    v17 = *(v7 + 32);
    v16 = *(v7 + 40);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v18 = v0[17];
  v19 = v0[18];
  sub_1DCF5FE68(v0[12], v0[13], v0[14], v0[15], v20, v15, v17, v16);
}

void sub_1DCF5FE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  sub_1DD0DCC3C();
}

void sub_1DCF605DC()
{
  OUTLINED_FUNCTION_42();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEA0, &qword_1DD103C90);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v1[13] = OUTLINED_FUNCTION_38();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEB0, &qword_1DD103F80);
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_38();
  sub_1DD0DCB5C();
}

uint64_t sub_1DCF609E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[13];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  sub_1DCB0E9D8(v4, &unk_1ECCAAEA0, &qword_1DD103C90);
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF60B0C()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  sub_1DCF638F8((v0 + 2));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t ResponseFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_1DCF60BD8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCB68330();
}

uint64_t sub_1DCF60C8C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5D858();
}

uint64_t sub_1DCF60D58()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5DB14();
}

uint64_t sub_1DCF60E1C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5DDC4();
}

uint64_t sub_1DCF60EE0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5DF28();
}

uint64_t sub_1DCF60F94()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5E7EC();
}

uint64_t sub_1DCF61060()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5EA64();
}

uint64_t sub_1DCF61124()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5EB94();
}

uint64_t sub_1DCF611E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5ECC8();
}

uint64_t sub_1DCF6129C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCF5E1D8();
}

uint64_t sub_1DCF61360()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5E444();
}

uint64_t sub_1DCF61414()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF5E6AC();
}

uint64_t sub_1DCF614C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return sub_1DCF5EE10(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCF61594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCF5EFD8(a1, a2, a3, a4);
}

uint64_t sub_1DCF61658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCF5F190(a1, a2, a3, a4);
}

uint64_t sub_1DCF6171C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF5F250(a1, a2, a3);
}

void sub_1DCF617E8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1DD0DAEFC();
  sub_1DCB21A14(a1, a2);
  [a3 setStateData_];
}

uint64_t *sub_1DCF6185C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ResponseFactory();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  v14 = sub_1DCF6197C(a1, v12, v13, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v14;
}

uint64_t *sub_1DCF6197C(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[10] = a4;
  a3[11] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3 + 7);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  sub_1DCAFF9E8(a1, (a3 + 2));
  return a3;
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v10 = *(v9 + 8);
  OUTLINED_FUNCTION_25_1();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_2_9(v15);
  OUTLINED_FUNCTION_48();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  v19 = *(OUTLINED_FUNCTION_7_6(v12, v13, v14, v15, v16, v17, v18) + 16);
  OUTLINED_FUNCTION_25_1();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_11_0(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_13_22(v24);
  OUTLINED_FUNCTION_96_0();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, v36, a11, a12);
}

{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  v19 = *(OUTLINED_FUNCTION_7_6(v12, v13, v14, v15, v16, v17, v18) + 48);
  OUTLINED_FUNCTION_25_1();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_11_0(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_13_22(v24);
  OUTLINED_FUNCTION_96_0();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, v36, a11, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v18 = *(OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17) + 24);
  OUTLINED_FUNCTION_8();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_11_0(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_31_2(v23);
  OUTLINED_FUNCTION_88_1();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v18 = *(OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17) + 56);
  OUTLINED_FUNCTION_8();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_11_0(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_31_2(v23);
  OUTLINED_FUNCTION_88_1();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v18 = *(OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17) + 32);
  OUTLINED_FUNCTION_8();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_11_0(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_31_2(v23);
  OUTLINED_FUNCTION_88_1();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v18 = *(OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17) + 64);
  OUTLINED_FUNCTION_8();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_11_0(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_31_2(v23);
  OUTLINED_FUNCTION_88_1();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v10 = *(v9 + 40);
  OUTLINED_FUNCTION_25_1();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_2_9(v15);
  OUTLINED_FUNCTION_48();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_25_1();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_2_9(v15);
  OUTLINED_FUNCTION_48();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:conversationModel:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v18 = *(OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17) + 80);
  OUTLINED_FUNCTION_8();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_11_0(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_31_2(v23);
  OUTLINED_FUNCTION_88_1();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v10 = *(v9 + 88);
  OUTLINED_FUNCTION_25_1();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_2_9(v15);
  OUTLINED_FUNCTION_48();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v10 = *(v9 + 96);
  OUTLINED_FUNCTION_25_1();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_2_9(v15);
  OUTLINED_FUNCTION_48();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of ResponseGenerating.makeSuccessOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  v19 = *(OUTLINED_FUNCTION_7_6(v12, v13, v14, v15, v16, v17, v18) + 104);
  OUTLINED_FUNCTION_25_1();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_11_0(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_13_22(v24);
  OUTLINED_FUNCTION_96_0();

  return v33(v26, v27, v28, v29, v30, v31, v32, v33, a9, v36, a11, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeSuccessOutput(resultModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v18 = *(OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17) + 112);
  OUTLINED_FUNCTION_8();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_11_0(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_31_2(v23);
  OUTLINED_FUNCTION_88_1();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeSuccessOutput(conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v18 = *(OUTLINED_FUNCTION_63(v12, v13, v14, v15, v16, v17) + 120);
  OUTLINED_FUNCTION_8();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_11_0(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_31_2(v23);
  OUTLINED_FUNCTION_88_1();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v35, a12);
}

uint64_t dispatch thunk of ResponseGenerating.makeSuccessOutput(dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v10 = *(v9 + 128);
  OUTLINED_FUNCTION_25_1();
  v26 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_2_9(v15);
  OUTLINED_FUNCTION_48();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 128);
  v15 = v0 + 128;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_9(v4);
  OUTLINED_FUNCTION_48();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 184);
  v15 = v0 + 184;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_9(v4);
  OUTLINED_FUNCTION_48();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v10 = *(v9 + 136);
  v24 = v9 + 136;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_47();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v10 = *(v9 + 192);
  v24 = v9 + 192;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_47();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v10 = *(v9 + 144);
  v24 = v9 + 144;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_47();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v10 = *(v9 + 200);
  v24 = v9 + 200;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_47();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v1 = *(v0 + 152);
  v15 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_29_2(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v1 = *(v0 + 208);
  v15 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_29_2(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:conversationModel:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v10 = *(v9 + 160);
  v24 = v9 + 160;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_47();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v1 = *(v0 + 168);
  v15 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_29_2(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v1 = *(v0 + 176);
  v15 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_29_2(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t dispatch thunk of ResponseFactory.makeSuccessOutput(resultModel:conversationModel:dialog:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 216);
  v15 = v0 + 216;
  v16 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_9(v4);
  OUTLINED_FUNCTION_48();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of ResponseFactory.makeSuccessOutput(resultModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v10 = *(v9 + 224);
  v24 = v9 + 224;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_47();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ResponseFactory.makeSuccessOutput(conversationModel:dialog:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_66();
  v10 = *(v9 + 232);
  v24 = v9 + 232;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_47();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ResponseFactory.makeSuccessOutput(dialog:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_50_1();
  v1 = *(v0 + 240);
  v15 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_29_2(v4);
  OUTLINED_FUNCTION_150();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCF6395C()
{
  OUTLINED_FUNCTION_42();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[27] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v8 = type metadata accessor for ResponseComponents(0);
  v1[30] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF63A50()
{
  v51 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 192);
  v4 = type metadata accessor for OutputElementContainer();
  sub_1DCB09910(v3 + *(v4 + 32), v2, &qword_1ECCA1820, &qword_1DD0E0F88);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 192);
    sub_1DCB0E9D8(*(v0 + 232), &qword_1ECCA1820, &qword_1DD0E0F88);
    sub_1DCB09910(v5 + *(v4 + 36), v0 + 72, &qword_1ECCA1830, &unk_1DD0E0F90);
    if (*(v0 + 80))
    {
      v6 = *(v0 + 88);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 32) = v6;
      *(v0 + 48) = *(v0 + 104);
      *(v0 + 64) = *(v0 + 120);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v7 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v7, qword_1EDE57E00);
      sub_1DCE56CB8(v0 + 16, v0 + 128);
      v8 = sub_1DD0DD8EC();
      v9 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v50[0] = v11;
        *v10 = 136315138;
        v12 = *(v0 + 128);
        v13 = *(v0 + 136);

        sub_1DCBB5C74(v0 + 128);
        v14 = sub_1DCB10E9C(v12, v13, v50);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1DCAFC000, v8, v9, "Generating a Response Framework Update Output command for viewId: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        sub_1DCBB5C74(v0 + 128);
      }

      v39 = *(v0 + 208);
      v40 = *(v0 + 184);
      v41 = v39[5];
      v42 = v39[6];
      __swift_project_boxed_opaque_existential_1(v39 + 2, v41);
      v43 = *(v0 + 16);
      v44 = *(v0 + 24);
      v45 = *(v42 + 136);

      v45(v43, v44, v0 + 32, v41, v42);
      sub_1DCBB5C74(v0 + 16);
    }

    else
    {
      v38 = *(v0 + 184);
      sub_1DCB0E9D8(v0 + 72, &qword_1ECCA1830, &unk_1DD0E0F90);
      *v38 = 0u;
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0;
    }

    v46 = *(v0 + 248);
    v47 = *(v0 + 224);
    v48 = *(v0 + 232);

    OUTLINED_FUNCTION_43();

    return v49();
  }

  else
  {
    sub_1DCE56B8C(*(v0 + 232), *(v0 + 248));
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v15 = *(v0 + 224);
    v16 = *(v0 + 200);
    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    sub_1DCB68600(v16, v15);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 224);
    if (v20)
    {
      v22 = *(v0 + 216);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50[0] = v24;
      *v23 = 136315138;
      v25 = (v21 + *(v22 + 68));
      v26 = *v25;
      v27 = v25[1];

      OUTLINED_FUNCTION_9_71();
      v28 = sub_1DCB10E9C(v26, v27, v50);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Generating a Response Framework Output command with viewId: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      OUTLINED_FUNCTION_9_71();
    }

    v29 = *(v0 + 208);
    v31 = v29[5];
    v30 = v29[6];
    __swift_project_boxed_opaque_existential_1(v29 + 2, v31);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 256) = v32;
    *v32 = v33;
    v32[1] = sub_1DCF63F44;
    v34 = *(v0 + 248);
    v35 = *(v0 + 200);
    v36 = *(v0 + 184);

    return sub_1DCF64138(v36, v34, v35, v31, v30);
  }
}

uint64_t sub_1DCF63F44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 256);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 264) = v0;

  if (v0)
  {
    v7 = sub_1DCF640B8;
  }

  else
  {
    v7 = sub_1DCF64048;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCF64048()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_10_72();
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCF640B8()
{
  OUTLINED_FUNCTION_10_72();
  v1 = v0[33];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCF64138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[73] = v5;
  v6[72] = a5;
  v6[71] = a4;
  v6[70] = a3;
  v6[69] = a2;
  v6[68] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF6416C, 0, 0);
}

void sub_1DCF6416C()
{
  v1 = *(v0 + 552);
  v2 = v1;
  v3 = *v1;
  *(v0 + 592) = *v1;
  sub_1DCB09910((v1 + 1), v0 + 16, &qword_1ECCA1838, &unk_1DD0FC960);
  sub_1DCB09910((v2 + 6), v0 + 56, &qword_1ECCA1838, &unk_1DD0FC960);
  *(v0 + 96) = v3;
  if (*(v0 + 40))
  {
    sub_1DCB09910(v0 + 16, v0 + 224, &qword_1ECCA1838, &unk_1DD0FC960);
    if (*(v0 + 80))
    {
      sub_1DCB09910(v0 + 56, v0 + 264, &qword_1ECCA1838, &unk_1DD0FC960);
      v69 = *(v0 + 576);
      v4 = (v0 + 224);
      if (v3)
      {
        sub_1DCB18FF0(v4, v0 + 304);
        sub_1DCB18FF0((v0 + 264), v0 + 344);
        v5 = *(v69 + 48);
        OUTLINED_FUNCTION_17_43();
        v62 = v5 + *v5;
        v6 = v5[1];
        swift_task_alloc();
        OUTLINED_FUNCTION_45();
        *(v0 + 616) = v7;
        *v7 = v8;
        v7[1] = sub_1DCF64C34;
        v9 = *(v0 + 584);
        v10 = *(v0 + 576);
        v11 = *(v0 + 568);
        v12 = *(v0 + 560);
        v13 = *(v0 + 544);
        OUTLINED_FUNCTION_47();

        __asm { BRAA            X7, X16 }
      }

      sub_1DCB18FF0(v4, v0 + 384);
      sub_1DCB18FF0((v0 + 264), v0 + 424);
      v30 = *(v69 + 80);
      OUTLINED_FUNCTION_8();
      v65 = v31 + *v31;
      v33 = *(v32 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 624) = v34;
      *v34 = v35;
      OUTLINED_FUNCTION_4_103(v34);
      OUTLINED_FUNCTION_47();

      __asm { BRAA            X6, X16 }
    }

    v71 = *(v0 + 576);
    v23 = (v0 + 224);
    if (v3)
    {
      sub_1DCB18FF0(v23, v0 + 464);
      v24 = *(v71 + 56);
      OUTLINED_FUNCTION_17_43();
      v64 = v24 + *v24;
      v25 = v24[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 600) = v26;
      *v26 = v27;
      OUTLINED_FUNCTION_4_103(v26);
      OUTLINED_FUNCTION_47();

      __asm { BRAA            X6, X16 }
    }

    sub_1DCB18FF0(v23, v0 + 504);
    v52 = *(v71 + 88);
    OUTLINED_FUNCTION_8();
    v68 = v53 + *v53;
    v55 = *(v54 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 608) = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_3_109(v56);
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X5, X16 }
  }

  if (*(v0 + 80))
  {
    sub_1DCB09910(v0 + 56, v0 + 104, &qword_1ECCA1838, &unk_1DD0FC960);
    v70 = *(v0 + 576);
    v16 = (v0 + 104);
    if (v3)
    {
      sub_1DCB18FF0(v16, v0 + 144);
      v17 = *(v70 + 64);
      OUTLINED_FUNCTION_17_43();
      v63 = v17 + *v17;
      v18 = v17[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 632) = v19;
      *v19 = v20;
      OUTLINED_FUNCTION_4_103(v19);
      OUTLINED_FUNCTION_47();

      __asm { BRAA            X6, X16 }
    }

    sub_1DCB18FF0(v16, v0 + 184);
    v44 = *(v70 + 96);
    OUTLINED_FUNCTION_8();
    v67 = v45 + *v45;
    v47 = *(v46 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 640) = v48;
    *v48 = v49;
    OUTLINED_FUNCTION_3_109(v48);
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X5, X16 }
  }

  if (v3)
  {
    v38 = *(*(v0 + 576) + 72);
    OUTLINED_FUNCTION_17_43();
    v66 = v38 + *v38;
    v39 = v38[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 648) = v40;
    *v40 = v41;
    OUTLINED_FUNCTION_3_109(v40);
    OUTLINED_FUNCTION_47();

    __asm { BRAA            X5, X16 }
  }

  sub_1DCF65450();
  swift_allocError();
  swift_willThrow();
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCAAED8, &qword_1DD103FF8);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_47();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCF64980()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 600);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF64A64()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 592);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 464));

  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1DCF64AE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 608);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF64BC4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF64C34()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 616);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF64D18()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[74];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 43);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 38);

  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1DCF64D9C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 624);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF64E80()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 424));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF64EF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 632);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF64FDC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 592);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1DCF65058()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 640);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF6513C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF651AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 648);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF65290()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 592);

  OUTLINED_FUNCTION_7_67();
  OUTLINED_FUNCTION_8_73();
  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1DCF65324()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCF6395C();
}

uint64_t sub_1DCF653F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DCF65450()
{
  result = qword_1ECCAAED0;
  if (!qword_1ECCAAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAAED0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseComponentError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCF65558()
{
  result = qword_1ECCAAEE0;
  if (!qword_1ECCAAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAAEE0);
  }

  return result;
}

void sub_1DCF65768()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_7_68(v0, v0, &off_1F58563F0);
  OUTLINED_FUNCTION_27_0(&dword_1DD0EB2A8);
}

uint64_t sub_1DCF65840()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF65944()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_69();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1DCF659A4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_1DCF65A00(uint64_t a1, char a2)
{
  *(v2 + 304) = a2;
  *(v2 + 264) = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF65A1C);
}

void sub_1DCF65A1C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 264);
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v3 = *(v0 + 304);
  *(v0 + 160) = MEMORY[0x1E69E6370];
  *(v0 + 136) = v3;
  sub_1DCB20B30((v0 + 136), (v0 + 168));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC60044();
  *(v0 + 272) = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = qword_1EDE57D40;
  v5 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 120) = v5;
  *(v0 + 128) = &off_1F58563F0;
  *(v0 + 96) = v4;
  v6 = *__swift_project_boxed_opaque_existential_1((v0 + 96), v5);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF65C2C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 280);
  v8 = *(v6 + 272);
  v9 = *v2;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v4 + 288) = v0;

  if (!v0)
  {
    *(v4 + 296) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF65D54()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_69();
  v2 = *(v0 + 296);

  return v1(v2);
}

uint64_t sub_1DCF65DB4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 288);

  return v1();
}

void sub_1DCF65E24()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_7_68(v0, v0, &off_1F58563F0);
  OUTLINED_FUNCTION_27_0(&dword_1DD0EB2A8);
}

uint64_t sub_1DCF65EFC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF66000()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0) - 8) + 64) + 15;
  v0[16] = swift_task_alloc();
  v3 = sub_1DD0DD23C();
  v0[17] = v3;
  v4 = *(v3 - 8);
  v0[18] = v4;
  v5 = *(v4 + 64) + 15;
  v0[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF660F4, 0, 0);
}

void sub_1DCF660F4()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCB28B08(v3, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCB16D50(*(v0 + 128), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);
    (*(v7 + 32))(v6, *(v0 + 128), v8);
    *(v0 + 56) = sub_1DD0DD21C();
    *(v0 + 80) = v4;
    *(v0 + 64) = v9;
    sub_1DCB20B30((v0 + 56), (v0 + 88));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v7 + 8))(v6, v8);
  }

  *(v0 + 160) = v5;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v10 = qword_1EDE57D40;
  v11 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 40) = v11;
  *(v0 + 48) = &off_1F58563F0;
  *(v0 + 16) = v10;
  v12 = *__swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF66318()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 168);
  v8 = *(v6 + 160);
  v9 = *v2;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF66440()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[19];
  v2 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_69();
  v4 = v0[23];

  return v3(v4);
}

void sub_1DCF664CC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_7_68(v0, v0, &off_1F58563F0);
  OUTLINED_FUNCTION_27_0(&dword_1DD0EB2A8);
}

void sub_1DCF665BC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, (v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF66774()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 216);
  v8 = *(v6 + 208);
  v9 = *v2;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v4 + 224) = v0;

  if (!v0)
  {
    *(v4 + 232) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF6689C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_69();
  v2 = *(v0 + 232);

  return v1(v2);
}

uint64_t sub_1DCF668FC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 224);

  return v1();
}

void sub_1DCF6696C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v0 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_7_68(v0, v0, &off_1F58563F0);
  OUTLINED_FUNCTION_27_0(&dword_1DD0EB2A8);
}

_BYTE *storeEnumTagSinglePayload for ResponsePatterns(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCF66B0C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v11 = *(v0 + 80);
    v12 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v12, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF66CD0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[13];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF66E08(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 144) = a2;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF66E24()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v2 = sub_1DD0DDE9C();
  *(v0 + 128) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v3;
  *v3 = v4;
  v3[1] = sub_1DCF66F38;
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 144);

  return sub_1DCC6FFB0(v7, v9, v8, v5, v2);
}

uint64_t sub_1DCF66F38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

void static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v33 - v22;
  v24 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v23, v25, v26, v24);
  sub_1DCB17C3C(a1, v16, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  sub_1DCB17C3C(a2, v34, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v27 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v28 = (v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_1DCD0506C(v16, v29 + v27);
  v30 = v29 + v28;
  v31 = v34[1];
  *v30 = v34[0];
  *(v30 + 16) = v31;
  *(v30 + 32) = v35;
  v32 = (v29 + ((v28 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v32 = a3;
  v32[1] = a4;
  sub_1DD0DCF8C();
}

void static ResponseTemplates.taskInProgress(appDisplayInfo:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v7 = OUTLINED_FUNCTION_99(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v28 - v20;
  v22 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v21, v23, v24, v22);
  sub_1DCB17C3C(a1, v14, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  sub_1DCD0506C(v14, v26 + v25);
  v27 = (v26 + ((v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = a2;
  v27[1] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCF67450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  v13 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v12, v14, v15, v13);
  sub_1DCB17C3C(a1, v19, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v17 = v19[1];
  *(v16 + 32) = v19[0];
  *(v16 + 48) = v17;
  *(v16 + 64) = v20;
  *(v16 + 72) = a2;
  *(v16 + 80) = a3;
  sub_1DD0DCF8C();
}

uint64_t static ResponseTemplates.continueOnCompanion(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF67570()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = v0[31];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v2;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v4 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v4, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v14 = v0[20];
    v15 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v15, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_14_56(v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v7, v8, v9, v10, v11);
}

uint64_t sub_1DCF6779C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[34];
  v6 = v4[33];
  v7 = v4[32];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 280) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t static ResponseTemplates.unsupportedSecuredRequestSetting(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF678E8()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = v0[31];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v2;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v4 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v4, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v14 = v0[20];
    v15 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v15, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_14_56(v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v7, v8, v9, v10, v11);
}

uint64_t static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)()
{
  OUTLINED_FUNCTION_42();
  v0[47] = v1;
  v0[48] = v2;
  v0[46] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  v0[49] = OUTLINED_FUNCTION_38();
  v7 = sub_1DD0DD23C();
  v0[50] = v7;
  OUTLINED_FUNCTION_99(v7);
  v0[51] = v8;
  v10 = *(v9 + 64);
  v0[52] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF67BEC()
{
  OUTLINED_FUNCTION_41();
  v25 = v0;
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCB17C3C(v3, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCB185D0(*(v0 + 392), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v7 = *(v0 + 408);
    v6 = *(v0 + 416);
    v8 = *(v0 + 400);
    (*(v7 + 32))(v6, *(v0 + 392), v8);
    *(v0 + 240) = sub_1DD0DD22C() & 1;
    *(v0 + 264) = MEMORY[0x1E69E6370];
    sub_1DCB20B30((v0 + 240), (v0 + 272));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    v9 = sub_1DD0DD21C();
    *(v0 + 328) = v4;
    *(v0 + 304) = v9;
    *(v0 + 312) = v10;
    sub_1DCB20B30((v0 + 304), (v0 + 336));
    swift_isUniquelyReferenced_nonNull_native();
    v24 = v5;
    OUTLINED_FUNCTION_44_29();
    v1 = &v24;
    sub_1DCC60044();
    v5 = v24;
    (*(v7 + 8))(v6, v8);
  }

  sub_1DCB17C3C(*(v0 + 384), v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 424) = v5;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 136, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 160))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v11 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v11, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v22 = *(v0 + 160);
    v23 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v23, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  *(v0 + 432) = qword_1ECCAAEE8;
  v12 = *v1;

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 440) = v13;
  *v13 = v14;
  v13[1] = sub_1DCF67FC0;
  v15 = *(v0 + 368);
  OUTLINED_FUNCTION_14();

  return sub_1DCC6FFB0(v16, v17, v18, v19, v20);
}

uint64_t sub_1DCF67FC0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[55];
  v6 = v4[54];
  v7 = v4[53];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 448) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF680F8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[52];
  v2 = v0[49];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF6816C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[52];
  v2 = v0[49];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  OUTLINED_FUNCTION_29();
  v4 = v0[56];

  return v3();
}

double sub_1DCF681E0()
{
  qword_1ECCD2740 = 0;
  result = 0.0;
  xmmword_1ECCD2720 = 0u;
  *algn_1ECCD2730 = 0u;
  return result;
}

uint64_t sub_1DCF681F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1ECCAAEE8 = result;
  return result;
}

uint64_t sub_1DCF68290()
{
  OUTLINED_FUNCTION_42();
  v0[22] = v1;
  v0[23] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[24] = v3;
  *v3 = v4;
  v3[1] = sub_1DCF68320;

  return static ResponseTemplates.taskAborted()((v0 + 12));
}

uint64_t sub_1DCF68320()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF68418()
{
  v6 = v0;
  *(v0 + 168) = 0;
  memcpy((v0 + 16), (v0 + 96), 0x49uLL);
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  memcpy(v5, (v0 + 16), 0x49uLL);
  v1(v5);
  sub_1DCB185D0(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF684C0()
{
  v7 = v0;
  v1 = *(v0 + 200);
  *(v0 + 208) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v3(__dst);
  sub_1DCB185D0(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCF6856C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_35_31();

  return sub_1DCF68290();
}

uint64_t sub_1DCF6861C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v11 = *(v0 + 80);
    v12 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v12, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF687E0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[13];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF68918()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 128);

  return v1();
}

uint64_t sub_1DCF68994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = swift_task_alloc();
  v5[24] = v6;
  *v6 = v5;
  v6[1] = sub_1DCF68A2C;

  return static ResponseTemplates.taskComplete()((v5 + 12));
}

uint64_t sub_1DCF68A2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF68B38()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v11 = *(v0 + 80);
    v12 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v12, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF68CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v7 = swift_task_alloc();
  v6[24] = v7;
  *v7 = v6;
  v7[1] = sub_1DCF68A2C;

  return static ResponseTemplates.taskInProgress(appDisplayInfo:)();
}

uint64_t static ResponseTemplates.taskInProgress(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[20] = v1;
  v0[21] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DD23C();
  v0[23] = v6;
  OUTLINED_FUNCTION_99(v6);
  v0[24] = v7;
  v9 = *(v8 + 64);
  v0[25] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF68E70()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCB17C3C(v3, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCB185D0(*(v0 + 176), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);
    (*(v7 + 32))(v6, *(v0 + 176), v8);
    *(v0 + 96) = sub_1DD0DD21C();
    *(v0 + 120) = v4;
    *(v0 + 104) = v9;
    sub_1DCB20B30((v0 + 96), (v0 + 128));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_44_29();
    sub_1DCC60044();
    (*(v7 + 8))(v6, v8);
  }

  *(v0 + 208) = v5;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v10 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v10, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v22 = *(v0 + 80);
    v23 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v23, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  v11 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  *(v0 + 216) = qword_1ECCAAEE8;
  v12 = *v11;

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 224) = v13;
  *v13 = v14;
  v13[1] = sub_1DCF69144;
  v15 = *(v0 + 160);
  OUTLINED_FUNCTION_14();

  return sub_1DCC6FFB0(v16, v17, v18, v19, v20);
}

uint64_t sub_1DCF69144()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[28];
  v6 = v4[27];
  v7 = v4[26];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 232) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF6927C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[25];
  v2 = v0[22];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF692F0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[25];
  v2 = v0[22];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_29();
  v4 = v0[29];

  return v3();
}

uint64_t sub_1DCF69364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v8 = swift_task_alloc();
  v7[24] = v8;
  *v8 = v7;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.continueInApp(appDisplayInfo:deviceState:)();
}

uint64_t sub_1DCF6940C()
{
  OUTLINED_FUNCTION_41();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v3);
  OUTLINED_FUNCTION_41_28(((*(v5 + 64) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 47);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1DCB4AE1C;
  v7 = OUTLINED_FUNCTION_39_30();

  return sub_1DCF69364(v7, v8, v9, v10, v11, v1, v2);
}

uint64_t sub_1DCF69534()
{
  OUTLINED_FUNCTION_41();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v3);
  OUTLINED_FUNCTION_41_28(*(v5 + 64) + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + 7);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1DCB4AE1C;
  v7 = OUTLINED_FUNCTION_39_30();

  return sub_1DCF68CFC(v7, v8, v9, v10, v1, v2);
}

uint64_t sub_1DCF69650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.continueOnCompanion(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCF696F0()
{
  OUTLINED_FUNCTION_42();
  v0[22] = v1;
  v0[23] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[24] = v3;
  *v3 = v4;
  v3[1] = sub_1DCF68A2C;

  return static ResponseTemplates.appDisabledByScreenTime()((v0 + 12));
}

uint64_t sub_1DCF69780()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF69650(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF69820()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v11 = *(v0 + 80);
    v12 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v12, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF69A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.authenticateOnCompanion(deviceState:)((v6 + 12), a4);
}

uint64_t static ResponseTemplates.authenticateOnCompanion(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF69AB8()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = v0[31];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v2;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v4 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v4, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v14 = v0[20];
    v15 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v15, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_14_56(v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v7, v8, v9, v10, v11);
}

uint64_t sub_1DCF69D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.authorizeOnCompanion(deviceState:)((v6 + 12), a4);
}

uint64_t static ResponseTemplates.authorizeOnCompanion(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF69DB8()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = v0[31];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v2;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v4 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v4, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v14 = v0[20];
    v15 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v15, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_14_56(v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v7, v8, v9, v10, v11);
}

uint64_t sub_1DCF69FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unlockDeviceSegue(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCF6A084()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF69FE4(v3, v4, v5, v6, v7, v8);
}

uint64_t static ResponseTemplates.unlockDeviceSegue(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF6A124()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = v0[31];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v2;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v4 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v4, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v14 = v0[20];
    v15 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v15, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_14_56(v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v7, v8, v9, v10, v11);
}

uint64_t sub_1DCF6A350()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[34];
  v6 = v4[33];
  v7 = v4[32];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 280) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF6A488()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 280);

  return v1();
}

uint64_t sub_1DCF6A504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = swift_task_alloc();
  v5[24] = v6;
  *v6 = v5;
  v6[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedOperation()((v5 + 12));
}

uint64_t sub_1DCF6A5B0()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v11 = *(v0 + 80);
    v12 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v12, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

void sub_1DCF6A794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - v9;
  v11 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v10, v12, v13, v11);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF6A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = swift_task_alloc();
  v5[24] = v6;
  *v6 = v5;
  v6[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedInRegion()((v5 + 12));
}

uint64_t sub_1DCF6A914()
{
  OUTLINED_FUNCTION_39();
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    if (qword_1EDE48CE8 == -1)
    {
      v1 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_23_30(v1, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v11 = *(v0 + 80);
    v12 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_23_30(v12, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_29_31();
  OUTLINED_FUNCTION_26_32();
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_32_28(v2);
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_31_27();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_21_45(v3);
  OUTLINED_FUNCTION_22_4();

  return sub_1DCC6FFB0(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF6AAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedOnDevice(deviceState:)((v6 + 12), a4);
}

uint64_t static ResponseTemplates.unsupportedOnDevice(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF6ABAC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[31];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v2;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v4 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v4, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v10 = v0[20];
    v11 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v11, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  v5 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[33] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_56(v6);

  return sub_1DCF66E08(v8, 76, v2, 0);
}

uint64_t sub_1DCF6ADEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v9 + 272) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF6AF00()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 272);

  return v1();
}

uint64_t sub_1DCF6AF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedSecuredRequestSetting(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCF6B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static ResponseTemplates.unsupportedWhileSharingPolicyIsRestricted(deviceState:)((v6 + 12), a4);
}

uint64_t static ResponseTemplates.unsupportedWhileSharingPolicyIsRestricted(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF6B0F0()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  v1 = v0[31];
  v2 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_36_37(v2, v3, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_5_97();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[32] = v2;
  if (qword_1ECCA1378 != -1)
  {
    OUTLINED_FUNCTION_2_100();
  }

  sub_1DCB17C3C(&xmmword_1ECCD2720, (v0 + 17), qword_1ECCA7608, &unk_1DD0F9448);
  if (!v0[20])
  {
    if (qword_1EDE48CE8 == -1)
    {
      v4 = type metadata accessor for CATTemplateExecutor();
      OUTLINED_FUNCTION_22_38(v4, &off_1F58563F0);
    }

    OUTLINED_FUNCTION_1_7();
    v14 = v0[20];
    v15 = type metadata accessor for CATTemplateExecutor();
    OUTLINED_FUNCTION_22_38(v15, &off_1F58563F0);
  }

  OUTLINED_FUNCTION_34_36();
  OUTLINED_FUNCTION_16_53();
  if (qword_1ECCA1380 != -1)
  {
    OUTLINED_FUNCTION_3_110();
  }

  OUTLINED_FUNCTION_30_36();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[34] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_14_56(v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_150();

  return sub_1DCC6FFB0(v7, v8, v9, v10, v11);
}

uint64_t sub_1DCF6B31C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_35_31();

  return sub_1DCF68994(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF6B3B8()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF69A04(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF6B444()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF69D04(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF6B4D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_35_31();

  return sub_1DCF6A504(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF6B56C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_35_31();

  return sub_1DCF6A868(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF6B608()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF6AAF8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF6B694()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF6AF7C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCF6B720()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_104(v1);
  OUTLINED_FUNCTION_196();

  return sub_1DCF6B03C(v3, v4, v5, v6, v7, v8);
}

_BYTE *storeEnumTagSinglePayload for ResponseTemplates(_BYTE *result, int a2, int a3)
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

uint64_t ResponseType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6769626D61736964;
  }

  else
  {
    result = 0x647261646E617473;
  }

  *v0;
  return result;
}

SiriKitFlow::ResponseType_optional __swiftcall ResponseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1DCF6B924()
{
  result = qword_1ECCAAEF0;
  if (!qword_1ECCAAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAAEF0);
  }

  return result;
}

uint64_t sub_1DCF6B99C@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Result.tapError(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  v15 = *(v14 + 24);
  OUTLINED_FUNCTION_0_1();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  v25 = *(v6 + 16);
  v25(v13, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 32))(v24, v13, v15);
    a1(v24);
    (*(v17 + 8))(v24, v15);
  }

  else
  {
    (*(v6 + 8))(v13, a2);
  }

  return (v25)(a3, v3, a2);
}

uint64_t Result.orElse(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  (*(v7 + 16))(v13 - v12, v15, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 8))(v14, a2);
    OUTLINED_FUNCTION_2_101();
    return (*(v16 + 16))(a3, a1);
  }

  else
  {
    OUTLINED_FUNCTION_2_101();
    return (*(v18 + 32))(a3, v14);
  }
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded()()
{
  OUTLINED_FUNCTION_33();
  v2 = *(OUTLINED_FUNCTION_2_102(v0, v1) + 48);
  OUTLINED_FUNCTION_8();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30_1(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_26(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_33();
  v2 = *(OUTLINED_FUNCTION_2_102(v0, v1) + 56);
  OUTLINED_FUNCTION_8();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30_1(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_26(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeSingleItemFlow()()
{
  OUTLINED_FUNCTION_33();
  v2 = *(OUTLINED_FUNCTION_2_102(v0, v1) + 64);
  OUTLINED_FUNCTION_8();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30_1(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_26(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_33();
  v2 = *(OUTLINED_FUNCTION_2_102(v0, v1) + 72);
  OUTLINED_FUNCTION_8();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30_1(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_26(v7);

  return v10(v9);
}

uint64_t dispatch thunk of ResultSetFlowProvider.makeWindowingConfiguration(promptType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 80);
  OUTLINED_FUNCTION_8();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_30_1(v12);
  *v13 = v14;
  v13[1] = sub_1DCB193FC;

  return v16(a1, a2, a3, a4);
}

void sub_1DCF6C2E4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[2];
  v6 = v2[3];
  v7 = *(v2 + 32);
  v8 = v7 >> 5;
  if (v7 >> 5 == 3)
  {
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7 & 0x1F;
    v18 = OUTLINED_FUNCTION_68();

    sub_1DCBB12F4(v18, v19, v20);
  }

  else if (v8 == 4)
  {
    *a1 = v5;
    *(a1 + 8) = v6 & 1;
    *(a1 + 16) = 1;

    v17 = v5;
  }

  else
  {
    v10 = v8 == 5 && v5 == 1 && v6 == 0;
    if (v10 && v7 == 160)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2;
    }

    else
    {
      v11 = *(v4 + 80);
      v12 = *(v4 + 88);
      type metadata accessor for RouteConfirmIntentResponseFlow.RouteConfirmIntentError();
      OUTLINED_FUNCTION_0_108();
      swift_getWitnessTable();
      v13 = swift_allocError();
      *v14 = v5;
      *(v14 + 8) = v6;
      *(v14 + 16) = v7 | 8;
      *a1 = v13;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      v15 = OUTLINED_FUNCTION_68();

      sub_1DCF6EBE0(v15, v16, v7);
    }
  }
}

void RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v14 - v10;
  v12 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DD104478;
  v13[5] = 0;
  v13[6] = a4;
  v13[7] = a5;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF6C578()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)();
}

uint64_t RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAC3B0();
}

uint64_t ConfirmIntentResponseError.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCF6C744()
{
  result = qword_1ECCAAEF8[0];
  if (!qword_1ECCAAEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAAEF8);
  }

  return result;
}

void dispatch thunk of RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 24);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_88_1();

  __asm { BRAA            X6, X16 }
}

_BYTE *storeEnumTagSinglePayload for ConfirmIntentResponseError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCF6C990(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DCF6CA48()
{
  OUTLINED_FUNCTION_66();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCF6CAD8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF6CB20, 0, 0);
}

void sub_1DCF6CB20()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 64) = v2;
  v3 = *(v1 + 24);
  *(v0 + 72) = v3;
  v4 = *(v1 + 32);
  *(v0 + 33) = v4;
  switch(v4 >> 5)
  {
    case 0u:
      v5 = OUTLINED_FUNCTION_17_44();
      sub_1DCF6EBE0(v5, v6, v7);
      sub_1DD0DCF8C();
    case 1u:
      v16 = OUTLINED_FUNCTION_17_44();
      sub_1DCF6EBE0(v16, v17, v18);
      sub_1DD0DCF8C();
    case 3u:
      sub_1DCBB12F4(v2, v3, v4 & 0x1F);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v8 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
      v9 = sub_1DD0DD8EC();
      v10 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_50_0();
        *v11 = 0;
        _os_log_impl(&dword_1DCAFC000, v9, v10, "RouteConfirmIntentResponseFlow is complete.", v11, 2u);
        MEMORY[0x1E12A8390](v11, -1, -1);
      }

      v12 = *(v0 + 40);
      v13 = OUTLINED_FUNCTION_17_44();
      sub_1DCB3C730(v13, v14, v15);

      goto LABEL_23;
    case 5u:
      v19 = v2 == 1 && v3 == 0;
      if (!v19 || v4 != 160)
      {
        goto LABEL_20;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v20 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v23);
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v24, v25, "RouteConfirmIntentResponseFlow is cancelled.");
        OUTLINED_FUNCTION_62();
        sub_1DCB3C730(1, 0, 0xA0u);
      }

      v26 = *(v0 + 40);

LABEL_23:
      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_117();

      __asm { BRAA            X1, X16 }

      return;
    default:
LABEL_20:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        v30 = *(v0 + 48);
      }

      v27 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v27, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCF6CFEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF6D0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *v3;
  v5 = type metadata accessor for SiriKitEventPayload(0);
  v4[29] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF6D190, 0, 0);
}

uint64_t sub_1DCF6D190()
{
  OUTLINED_FUNCTION_125();
  switch([*(v1 + 208) _intentResponseCode])
  {
    case 0uLL:
    case 5uLL:
    case 7uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v3 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
      v4 = sub_1DD0DD8EC();
      v5 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v5))
      {
        v6 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v6);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v7, v8, "Confirm routing is rendering failure handling intent dialog and exiting.");
        OUTLINED_FUNCTION_62();
      }

      v9 = *(v1 + 216);
      v63 = *(v1 + 200);

      v10 = (v9 + *(*v9 + 112));
      v11 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      v12 = swift_task_alloc();
      *(v1 + 280) = v12;
      *(v12 + 16) = v9;
      *(v12 + 24) = v63;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v1 + 288) = v13;
      *v13 = v14;
      v13[1] = sub_1DCF6D7E4;
      OUTLINED_FUNCTION_88_1();

      return sub_1DCB63BBC(v15, v16, v17, v18, v19);
    case 1uLL:
    case 3uLL:
    case 4uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v22 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6DC();
      if (!OUTLINED_FUNCTION_23(v24))
      {
        goto LABEL_23;
      }

      v25 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v25);
      v28 = "RouteConfirmIntentResponseFlow transitioning to confirmIntent";
      break;
    case 2uLL:
    case 6uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v29 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
      v30 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v31))
      {
        v32 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v32);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v33, v34, "Confirm routing to continue in app");
        OUTLINED_FUNCTION_62();
      }

      v35 = *(v1 + 216);
      v36 = *(v1 + 200);

      sub_1DCF6F074();
      v37 = swift_allocError();
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      *(v35 + 16) = v37;
      *(v35 + 24) = 1;
      v40 = *(v35 + 32);
      *(v35 + 32) = 0x80;
      sub_1DCB3C730(v39, v38, v40);
      v41 = *(v35 + *(*v35 + 120));
      *(v1 + 248) = *(v36 + 16);
      *(v1 + 256) = *(v36 + 24);
      sub_1DD0DCF8C();
    case 8uLL:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v42 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v42, qword_1EDE57E00);
      v23 = sub_1DD0DD8EC();
      v43 = sub_1DD0DE6DC();
      if (!OUTLINED_FUNCTION_23(v43))
      {
        goto LABEL_23;
      }

      v44 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v44);
      v28 = "Confirm routing to confirm intent due to intent response";
      break;
    default:
      v55 = [OUTLINED_FUNCTION_18_46() _intentResponseCode];
      v56 = *(v0 + 80);
      v57 = *(v0 + 88);
      type metadata accessor for RouteConfirmIntentResponseFlow.RouteConfirmIntentError();
      OUTLINED_FUNCTION_0_108();
      swift_getWitnessTable();
      v58 = OUTLINED_FUNCTION_240();
      *v59 = v55;
      *(v59 + 8) = 0;
      *(v59 + 16) = 16;
      v61 = *(v2 + 16);
      v60 = *(v2 + 24);
      *(v2 + 16) = v58;
      *(v2 + 24) = 0;
      v62 = *(v2 + 32);
      *(v2 + 32) = 0x80;
      sub_1DCB3C730(v61, v60, v62);
      static ExecuteResponse.complete()();
      v52 = *(v1 + 240);

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_88_1();

      __asm { BRAA            X1, X16 }

      return result;
  }

  OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v26, v27, v28);
  OUTLINED_FUNCTION_62();
LABEL_23:
  v46 = *(v1 + 208);
  v45 = *(v1 + 216);
  v48 = *(v1 + 192);
  v47 = *(v1 + 200);

  v49 = *(v45 + 16);
  v50 = *(v45 + 24);
  *(v45 + 16) = v47;
  *(v45 + 24) = v46;
  v51 = *(v45 + 32);
  *(v45 + 32) = 32;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF6D658()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = v3[33];
  v5 = v3[32];
  v6 = v3[31];
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v10 + 272) = v9;

  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DCF6D774()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  static ExecuteResponse.complete(next:)();
}

uint64_t sub_1DCF6D7E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 296) = v0;

  if (v0)
  {
    v9 = sub_1DCF6DDF0;
  }

  else
  {
    v10 = *(v3 + 280);

    v9 = sub_1DCF6D8EC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCF6D8EC()
{
  sub_1DCAFF9E8((v1 + 56), v1 + 16);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v2);
  if (sub_1DCB651D0(v2))
  {
    if (qword_1EDE4F6A8 != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 240);
    v4 = *(v1 + 224);
    v6 = *(v1 + 200);
    v5 = *(v1 + 208);
    v15 = *(v1 + 232);
    v7 = [*(v6 + 24) typeName];
    sub_1DD0DDFBC();

    *(v1 + 304) = *(v6 + 16);
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    sub_1DD0DCF8C();
  }

  [OUTLINED_FUNCTION_18_46() _intentResponseCode];
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  type metadata accessor for RouteConfirmIntentResponseFlow.RouteConfirmIntentError();
  OUTLINED_FUNCTION_0_108();
  swift_getWitnessTable();
  v10 = OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_13_68(v10, v11);
  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v12 = *(v1 + 240);

  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1DCF6DBF8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = v4[40];
  v6 = v4[39];
  v7 = v4[38];
  v8 = *v0;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  sub_1DCB16D50(v2 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v2 + 136, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCF6DD48()
{
  OUTLINED_FUNCTION_39();
  [OUTLINED_FUNCTION_18_46() _intentResponseCode];
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  type metadata accessor for RouteConfirmIntentResponseFlow.RouteConfirmIntentError();
  OUTLINED_FUNCTION_0_108();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_13_68(v4, v5);
  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v6 = *(v1 + 240);

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCF6DDF0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[27];
  v4 = v0[24];

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v7 = *(v3 + 32);
  *(v3 + 32) = 0x80;
  sub_1DCB3C730(v5, v6, v7);
  static ExecuteResponse.complete()();
  v8 = v0[30];

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCF6DE84(uint64_t a1, void *a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  v4[10] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCB3D2C0, 0, 0);
}

uint64_t sub_1DCF6DEF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *a2;
  v4[6] = *a2;
  v6 = *(v5 + 80);
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF6DFF4, 0, 0);
}

void sub_1DCF6DFF4()
{
  v1 = v0[6];
  v2 = v0[4];
  (*(v0[8] + 16))(v0[9], v0[3] + *(*v0[3] + 104), v0[7]);
  v0[10] = *(v2 + 16);
  v0[11] = *(v2 + 24);
  v3 = *(*(v1 + 88) + 24);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF6E17C()
{
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = v5[9];
  v10 = v5[8];
  v11 = v5[7];
  v12 = *v1;
  OUTLINED_FUNCTION_27();
  *v13 = v12;
  *(v3 + 104) = v0;

  (*(v10 + 8))(v9, v11);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCF6E35C, 0, 0);
  }

  else
  {
    v14 = *(v3 + 72);

    v15 = *(v12 + 8);

    return v15();
  }
}

uint64_t sub_1DCF6E35C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 104);

  return v2();
}

void sub_1DCF6E3F8(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_1DCF6E438(&v2);
}

void sub_1DCF6E438(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v1 + 32);
  if ((v4 & 0xE0) != 0x40)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = v1[2];
  v9 = v2[3];
  if (!v7)
  {
    sub_1DCF6EBE0(v2[2], v2[3], v4);
    sub_1DCBB12F4(v5, v6, 0);
    sub_1DCB3BBC0(v6);
    sub_1DCB3C730(v8, v9, v4);
    sub_1DCBB1310(v5, v6, 0);
    v8 = v2[2];
    v9 = v2[3];
    v4 = *(v2 + 32);
  }

  v2[2] = v5;
  v2[3] = v6;
  *(v2 + 32) = v7 | 0x60;
  sub_1DCBB12F4(v5, v6, v7);

  sub_1DCB3C730(v8, v9, v4);
}

unint64_t sub_1DCF6E750(uint64_t a1)
{
  v2 = *v1;
  switch((*(v1 + 16) >> 3) & 3)
  {
    case 1:
      v9 = v1[1];
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000054, 0x80000001DD125BD0);
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      type metadata accessor for RouteConfirmIntentResponseFlow.State();
      v12 = sub_1DCF6E98C();
      MEMORY[0x1E12A6780](v12);

      result = 0;
      break;
    case 2:
      v13 = 0;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000037, 0x80000001DD125B90);
      type metadata accessor for INIntentResponseCode(0);
      sub_1DD0DEDBC();
      goto LABEL_12;
    case 3:
      result = 0xD00000000000003DLL;
      break;
    default:
      v3 = 0xEC00000064656966;
      v4 = 0x69636570736E752ELL;
      if (v2 == 5)
      {
        v4 = 0x6572756C6961662ELL;
        v3 = 0xE800000000000000;
      }

      if (v2 == 7)
      {
        v5 = 0x49656C646E61682ELL;
      }

      else
      {
        v5 = v4;
      }

      if (v2 == 7)
      {
        v6 = 0xEC0000007070416ELL;
      }

      else
      {
        v6 = v3;
      }

      sub_1DD0DEC1C();

      v13 = 0xD00000000000002FLL;
      MEMORY[0x1E12A6780](v5, v6);

      MEMORY[0x1E12A6780](46, 0xE100000000000000);
LABEL_12:
      result = v13;
      break;
  }

  return result;
}

unint64_t sub_1DCF6E98C()
{
  v1 = *(v0 + 16);
  result = 0x646574726174732ELL;
  switch(v1 >> 5)
  {
    case 1u:
      result = 0x6D7269666E6F632ELL;
      break;
    case 2u:
      result = 0xD000000000000020;
      break;
    case 3u:
      result = 0x74656C706D6F632ELL;
      break;
    case 4u:
      if (*(v0 + 8))
      {
        result = 0x64656C646E61682ELL;
      }

      else
      {
        result = 0x6C646E61686E752ELL;
      }

      break;
    case 5u:
      if (v1 == 160 && *v0 == 0)
      {
        result = 0x6C616974696E692ELL;
      }

      else
      {
        result = 0x6C6C65636E61632ELL;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t *sub_1DCF6EAD8()
{
  v1 = *v0;
  sub_1DCB3C730(v0[2], v0[3], *(v0 + 32));
  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 104));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();
  v5 = *(v0 + *(v4 + 120));

  return v0;
}

uint64_t sub_1DCF6EB88()
{
  sub_1DCF6EAD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_1DCF6EBE0(id result, uint64_t a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
    case 1:
      sub_1DD0DCF8C();
    case 2:

      sub_1DD0DCF8C();
    case 3:
      v3 = a3 & 0x1F;

      result = sub_1DCBB12F4(result, a2, v3);
      break;
    case 4:

      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCF6ECFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3B && *(a1 + 17))
    {
      v2 = *a1 + 58;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 16) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCF6ED48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 16) = 0;
    *result = a2 - 59;
    *(result + 8) = 0;
    if (a3 >= 0x3B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCF6ED9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DCF6EDC8(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 16) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    v2 = -96;
  }

  *(result + 16) = v2;
  return result;
}

void sub_1DCF6EE08(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCF6EEA4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCF6CAD8(a1);
}

uint64_t sub_1DCF6EF64(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF6EFDC()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_65_0(v5);

  return sub_1DCF6DEF8(v7, v8, v9, v3);
}

unint64_t sub_1DCF6F074()
{
  result = qword_1ECCAAF80[0];
  if (!qword_1ECCAAF80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAAF80);
  }

  return result;
}

id sub_1DCF6F0D0(id result, uint64_t a2, char a3)
{
  if ((a3 & 0x18) == 8)
  {
    return sub_1DCF6EBE0(result, a2, a3 & 0xE7);
  }

  return result;
}

void sub_1DCF6F0F8(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 0x18) == 8)
  {
    sub_1DCB3C730(a1, a2, a3 & 0xE7);
  }
}

uint64_t sub_1DCF6F110(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  v6 = OUTLINED_FUNCTION_68();
  v7(v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t *sub_1DCF6F188(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *sub_1DCF6F20C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCF6F258(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 5 && *(a1 + 17))
    {
      v2 = *a1 + 4;
    }

    else
    {
      v2 = (*(a1 + 16) & 4 | (*(a1 + 16) >> 3) & 3) ^ 7;
      if (v2 >= 4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCF6F2A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 4)
  {
    *(result + 16) = 0;
    *result = a2 - 5;
    *(result + 8) = 0;
    if (a3 >= 5)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 5)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (8 * ((3 * a2) & 3)) | 4;
    }
  }

  return result;
}

uint64_t sub_1DCF6F2F0(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 3) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DCF6F31C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 0xE3 | (8 * a2);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    v2 = 24;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1DCF6F344(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF6F3E4()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = *(v1 + 112);
  if (v7 == 2)
  {
    v19 = OUTLINED_FUNCTION_20_34();
    sub_1DCF349BC(v19, v20, v21, v6);
  }

  else if (v7 == 3)
  {
    v18 = v3;
  }

  else
  {
    v8 = v1[12];
    v9 = v1[13];
    if (v7 != 4 || v3 != 1 || (v5 | v4 | v6 | v8 | v9) != 0)
    {
      v12 = *(v2 + 80);
      v13 = *(v2 + 88);
      type metadata accessor for RouteResolutionResultFlow.ResolutionResultProcessingError();
      OUTLINED_FUNCTION_1_117();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_34();
      *v14 = v3;
      *(v14 + 8) = v4;
      *(v14 + 16) = v5;
      *(v14 + 24) = v6;
      *(v14 + 32) = v8;
      *(v14 + 40) = v9;
      *(v14 + 48) = v7 | 0x80;
      v15 = OUTLINED_FUNCTION_20_34();
      sub_1DCB903F8(v15, v16, v17, v6, v8, v9, v7);
    }
  }

  return OUTLINED_FUNCTION_20_34();
}

void sub_1DCF6F538()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  sub_1DCF6F640();
}

uint64_t sub_1DCF6F680(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB924B0;

  return sub_1DCB8FDD8(a1);
}

uint64_t sub_1DCF6F71C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 392);
  *v2 = *v0;
  *(v1 + 400) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF6F804()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 400);
  OUTLINED_FUNCTION_3_111();
  sub_1DCF6FCFC();
}

uint64_t sub_1DCF6F894()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 408);
  *v2 = *v0;
  *(v1 + 416) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF6F97C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 416);
  OUTLINED_FUNCTION_3_111();
  sub_1DCF7065C();
}

uint64_t sub_1DCF6FA0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 440);
  *v2 = *v0;
  *(v1 + 448) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF6FAF4()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 448);
  OUTLINED_FUNCTION_3_111();
  sub_1DCB9218C();
}

uint64_t sub_1DCF6FB84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 456);
  *v2 = *v0;
  *(v1 + 464) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF6FC6C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 464);
  OUTLINED_FUNCTION_3_111();
  sub_1DCB9218C();
}

void sub_1DCF6FD3C(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_1DCF6FD7C(&v2);
}

void sub_1DCF6FD7C(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v27 = v1[8];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = *(v1 + 112);
  if (v8 == 1)
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = *(a1 + 16);
    sub_1DD0DCF8C();
  }

  v12 = v2[9];
  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  type metadata accessor for RouteResolutionResultFlow.ResolutionResultProcessingError();
  swift_getWitnessTable();
  v15 = swift_allocError();
  *v16 = v27;
  *(v16 + 8) = v12;
  v17 = v12;
  *(v16 + 16) = v4;
  *(v16 + 24) = v5;
  *(v16 + 32) = v6;
  *(v16 + 40) = v7;
  *(v16 + 48) = v8 | 0x80;
  v18 = v2[8];
  v19 = v2[9];
  v26 = v2[10];
  v20 = v5;
  v21 = v2[11];
  v22 = v2[12];
  v23 = v2[13];
  v2[8] = v15;
  *(v2 + 9) = 0u;
  *(v2 + 11) = 0u;
  v2[13] = 0;
  v24 = v4;
  v25 = *(v2 + 112);
  *(v2 + 112) = 3;
  sub_1DCB903F8(v27, v17, v24, v20, v6, v7, v8);

  sub_1DCB17238(v18, v19, v26, v21, v22, v23, v25);
}

void sub_1DCF7069C()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v3, qword_1EDE57E00);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "RouteResolutionResultFlow received a result from a prompting flow", v6, 2u);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }

  v7 = v0 + 8;
  v8 = v0[8];
  v9 = v0[10];
  v29 = v0[11];
  v10 = v0[13];
  v11 = *(v0 + 112);
  if (v11 == 1)
  {
    sub_1DD0DCF8C();
  }

  v12 = v0[9];
  v13 = v0[12];
  v14 = *(v2 + 80);
  v15 = *(v2 + 88);
  type metadata accessor for RouteResolutionResultFlow.ResolutionResultProcessingError();
  swift_getWitnessTable();
  v16 = swift_allocError();
  *v17 = v8;
  *(v17 + 8) = v12;
  v18 = v12;
  *(v17 + 16) = v9;
  *(v17 + 24) = v29;
  v19 = v13;
  *(v17 + 32) = v13;
  *(v17 + 40) = v10;
  *(v17 + 48) = v11 | 0x80;
  v20 = v0[8];
  v21 = v0[9];
  v22 = v8;
  v23 = v0[10];
  v24 = v1[11];
  v25 = v1;
  v26 = v1[12];
  v28 = v25[13];
  v25[8] = v16;
  *(v7 + 1) = 0u;
  *(v7 + 3) = 0u;
  v7[5] = 0;
  v27 = *(v25 + 112);
  *(v25 + 112) = 3;
  sub_1DCB903F8(v22, v18, v9, v29, v19, v10, v11);

  sub_1DCB17238(v20, v21, v23, v24, v26, v28, v27);
}

void sub_1DCF70DB4(void *a1, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
  }

  else if (a4 <= 1u)
  {
  }
}

uint64_t sub_1DCF70E38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 4)
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

uint64_t sub_1DCF70E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF70ECC(uint64_t a1)
{
  if (*(a1 + 48) <= 3u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1DCF70EE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

void sub_1DCF70F24(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCF70FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCF6F3E4();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1DCF70FF4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF71054()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DCB924B0;

  return sub_1DCF6F680(v2);
}

id sub_1DCF710E8(id result, void *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6 == 2)
  {
    return sub_1DCB903F8(result, a2, a3, a4, a5, a6, a7 & 0x3F);
  }

  if (!(a7 >> 6))
  {
  }

  return result;
}

void sub_1DCF71144(void *a1, void *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6 == 2)
  {
    sub_1DCB17238(a1, a2, a3, a4, a5, a6, a7 & 0x3F);
  }

  else if (!(a7 >> 6))
  {
  }
}

uint64_t sub_1DCF71180(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = *(a2 + 48);
  a4(*a2, v6, v7, v8, v9, v10, v11);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  return a1;
}

uint64_t *sub_1DCF71230(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = *(a2 + 48);
  OUTLINED_FUNCTION_27_35();
  v14();
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1[5];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v12;
  v21 = *(a1 + 48);
  *(a1 + 48) = v13;
  a5(v15, v16, v17, v18, v19, v20, v21);
  return a1;
}

uint64_t *sub_1DCF712E4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 48);
  v7 = *a1;
  v9 = a1[1];
  v8 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v13;
  *(a1 + 2) = *(a2 + 32);
  v14 = *(a1 + 48);
  *(a1 + 48) = v6;
  a4(v7, v9, v8, v10, v11, v12, v14);
  return a1;
}

uint64_t sub_1DCF71344(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1E && *(a1 + 49))
    {
      v2 = *a1 + 29;
    }

    else
    {
      v2 = ((*(a1 + 48) >> 1) & 0x1C | (*(a1 + 48) >> 6)) ^ 0x1F;
      if (v2 >= 0x1D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCF71390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t initializeWithCopy for ResolutionProcessingOutcome(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DCF349BC(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for ResolutionProcessingOutcome(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DCF349BC(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_1DCF70DB4(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for ResolutionProcessingOutcome(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_1DCF70DB4(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolutionProcessingOutcome(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for ResolutionProcessingOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF715E8(uint64_t a1)
{
  if (*(a1 + 24) <= 2u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DCF71600(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DCF71630(uint64_t result, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v6 = *(result + 16);
  v7 = (result + 32);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;

      a3(&v8, a2);
      if (v3)
      {
        break;
      }

      ++v7;
      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1DCF716C8(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  for (i = (result + 40); v3; --v3)
  {
    v6 = *(i - 1);
    v5 = *i;
    v7 = *a2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v7 + 16);
      sub_1DCB34108();
      v7 = v12;
      *a2 = v12;
    }

    v9 = *(v7 + 16);
    if (v9 >= *(v7 + 24) >> 1)
    {
      sub_1DCB34108();
      v7 = v13;
      *a2 = v13;
    }

    *(v7 + 16) = v9 + 1;
    v10 = v7 + 16 * v9;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;

    i += 2;
  }

  return result;
}

id sub_1DCF717D0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EDE49288 = result;
  return result;
}

id sub_1DCF71804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1DD0DDF8C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() applicationProxyForIdentifier_];

  return v3;
}

id sub_1DCF71874()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C7710]) init];
  sub_1DCB2C534(0, 0xE000000000000000, v0, &selRef_setAppName_);
  sub_1DCB2C534(0, 0xE000000000000000, v0, &selRef_setDisplayAppName_);
  v1 = sub_1DD0DDE9C();
  sub_1DCF7323C(v1, v0);
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7AB8]) init];
  v3 = OUTLINED_FUNCTION_86();
  sub_1DCF731E4(v3, v4, v2);
  [v0 setAppIdentifyingInfo_];

  return v0;
}

id sub_1DCF71954(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD0DAE6C();
  v4 = [v2 initWithURL_];

  v5 = sub_1DD0DAECC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1DCF719F0(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = sub_1DD0DD85C();
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD0DD88C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1EDE57DD0);
  (*(v9 + 16))(v13, v14, v8);
  sub_1DD0DD84C();
  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = sub_1DD0DD87C();
  v17 = sub_1DD0DE7FC();
  v18 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v16, v17, v18, "AppNameMapCreate", "", v15, 2u);
  sub_1DCF72F50(a1, v24, &v27);
  v19 = sub_1DD0DE7EC();
  v20 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v16, v19, v20, "AppNameMapCreate", "", v15, 2u);

  v21 = v27;
  MEMORY[0x1E12A8390](v15, -1, -1);
  (*(v25 + 8))(v7, v26);
  (*(v9 + 8))(v13, v8);
  return v21;
}

uint64_t sub_1DCF71C8C(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  if (*(a1 + 24))
  {
    sub_1DCB192E4(a1, v8);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB80, &qword_1DD0E7AE8);
      if (swift_dynamicCast())
      {
        sub_1DCF71630(v7, &v10, sub_1DCF72D7C);

        return v10;
      }
    }

    else
    {
      sub_1DCC8BC14(v8);
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DCAFC000, v4, v5, "App alternativeAppNamesParser input not a map", v6, 2u);
      MEMORY[0x1E12A8390](v6, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DCF71E18(uint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1DCB192E4(a1, v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB80, &qword_1DD0E7AE8);
    if (swift_dynamicCast())
    {
      sub_1DCF71630(v6, &v9, sub_1DCF72A5C);

      return v9;
    }
  }

  else
  {
    sub_1DCC8BC14(v7);
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "App urlTypesSchemesParser <NIL> input", v5, 2u);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1DCF71F94(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69C7A90]) init];
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (sub_1DCF73178(0xD000000000000016, 0x80000001DD125DD0, ObjCClassFromMetadata, a2))
  {
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    sub_1DCB0DF6C(v41, v39);
    if (!swift_dynamicCast())
    {
      if (qword_1EDE4F900 == -1)
      {
LABEL_28:
        v25 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v25, qword_1EDE57E00);
        v26 = sub_1DD0DD8EC();
        v27 = sub_1DD0DE6CC();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1DCAFC000, v26, v27, "App siriSupportParser entitlement not a number", v28, 2u);
          MEMORY[0x1E12A8390](v28, -1, -1);
        }

        goto LABEL_44;
      }

LABEL_49:
      swift_once();
      goto LABEL_28;
    }

    if ([v38 BOOLValue])
    {
      sub_1DCB192E4(a1, v39);
      if (v40)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
        if (swift_dynamicCast())
        {
          sub_1DCB90D40(0x73746E65746E49, 0xE700000000000000, v38);

          if (v40)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
            if (swift_dynamicCast())
            {
              v6 = 0;
              v7 = v38[2];
              v8 = MEMORY[0x1E69E7CC0];
LABEL_9:
              v9 = &v38[2 * v6 + 5];
              while (1)
              {
                if (v7 == v6)
                {

                  v36 = sub_1DD0DE2DC();
                  [v4 setUseCases_];

                  __swift_destroy_boxed_opaque_existential_1Tm(v41);

                  return v4;
                }

                if (v6 >= v7)
                {
                  break;
                }

                v10 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
                  goto LABEL_48;
                }

                v12 = *(v9 - 1);
                v11 = *v9;
                v13 = HIBYTE(*v9) & 0xF;
                if ((*v9 & 0x2000000000000000) == 0)
                {
                  v13 = v12 & 0xFFFFFFFFFFFFLL;
                }

                ++v6;
                v9 += 2;
                if (v13)
                {
                  swift_bridgeObjectRetain_n();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v17 = *(v8 + 16);
                    sub_1DCB34108();
                    v8 = v18;
                  }

                  v14 = *(v8 + 16);
                  v15 = v14 + 1;
                  if (v14 >= *(v8 + 24) >> 1)
                  {
                    v37 = v14 + 1;
                    v19 = *(v8 + 16);
                    sub_1DCB34108();
                    v14 = v19;
                    v15 = v37;
                    v8 = v20;
                  }

                  *(v8 + 16) = v15;
                  v16 = v8 + 16 * v14;
                  *(v16 + 32) = v12;
                  *(v16 + 40) = v11;

                  v6 = v10;
                  goto LABEL_9;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }
          }

          else
          {
            sub_1DCC8BC14(v39);
          }

          if (qword_1EDE4F900 != -1)
          {
            swift_once();
          }

          v34 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v34, qword_1EDE57E00);
          v30 = sub_1DD0DD8EC();
          v31 = sub_1DD0DE6CC();
          if (!os_log_type_enabled(v30, v31))
          {
LABEL_43:

LABEL_44:
            __swift_destroy_boxed_opaque_existential_1Tm(v41);
            return v4;
          }

          v32 = swift_slowAlloc();
          *v32 = 0;
          v33 = "App siriSupportParser Intents is not an Array";
LABEL_42:
          _os_log_impl(&dword_1DCAFC000, v30, v31, v33, v32, 2u);
          MEMORY[0x1E12A8390](v32, -1, -1);
          goto LABEL_43;
        }
      }

      else
      {
        sub_1DCC8BC14(v39);
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v29 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v29, qword_1EDE57E00);
      v30 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6CC();
      if (!os_log_type_enabled(v30, v31))
      {
        goto LABEL_43;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "App siriSupportParser <NIL> input";
      goto LABEL_42;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else if (*(a1 + 24))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);
    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DCAFC000, v22, v23, "App siriSupportParser intents declared without an entitlement", v24, 2u);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }
  }

  return v4;
}

void sub_1DCF72570(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7AB8]) init];
  if (!*MEMORY[0x1E695E4F0])
  {
    __break(1u);
    goto LABEL_33;
  }

  v3 = v2;
  if ([a1 objectForInfoDictionaryKey_])
  {
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1DCF731E4(v10, v11, v3);
      if (*MEMORY[0x1E695E148])
      {
        if ([a1 objectForInfoDictionaryKey_])
        {
          sub_1DD0DEA6C();
          swift_unknownObjectRelease();
        }

        else
        {
          v12 = 0u;
          v13 = 0u;
        }

        v14 = v12;
        v15 = v13;
        if (*(&v13 + 1))
        {
          if (swift_dynamicCast())
          {
            v8 = sub_1DD0DDF8C();

            goto LABEL_22;
          }
        }

        else
        {
          sub_1DCC8BC14(&v14);
        }

        v8 = 0;
LABEL_22:
        [v3 setVersion_];

        if (*MEMORY[0x1E695E500])
        {
          if ([a1 objectForInfoDictionaryKey_])
          {
            sub_1DD0DEA6C();
            swift_unknownObjectRelease();
          }

          else
          {
            v12 = 0u;
            v13 = 0u;
          }

          v14 = v12;
          v15 = v13;
          if (*(&v13 + 1))
          {
            if (swift_dynamicCast())
            {
              v9 = sub_1DD0DDF8C();

LABEL_31:
              [v3 setBuildNumber_];

              sub_1DCB2C534(v10, v11, v3, &selRef_setClientIdentifier_);
              return;
            }
          }

          else
          {
            sub_1DCC8BC14(&v14);
          }

          v9 = 0;
          goto LABEL_31;
        }

        goto LABEL_34;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }
  }

  else
  {
    sub_1DCC8BC14(&v14);
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "App appIdentifyingInfoParser cannot parse BundleId", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }
}

id sub_1DCF728BC(void *a1)
{
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1DCF73178(0xD000000000000023, 0x80000001DD125DA0, ObjCClassFromMetadata, a1);
  if (v3)
  {
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    sub_1DCB0DF6C(v11, v10);
    if (swift_dynamicCast())
    {
      v4 = v9;
      v3 = [v9 BOOLValue];
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v5 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v5, qword_1EDE57E00);
      v4 = sub_1DD0DD8EC();
      v6 = sub_1DD0DE6CC();
      if (os_log_type_enabled(v4, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1DCAFC000, v4, v6, "App universalSearchParser entitlement not a number", v7, 2u);
        MEMORY[0x1E12A8390](v7, -1, -1);
      }

      v3 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return v3;
}

void sub_1DCF72A5C(uint64_t *a1, uint64_t *a2)
{
  if (*MEMORY[0x1E695E190])
  {
    v3 = *a1;
    v4 = sub_1DD0DDFBC();
    sub_1DCB90D40(v4, v5, v3);

    if (v19[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
      if (swift_dynamicCast())
      {
        if (*(v20 + 16))
        {
          sub_1DCF716C8(v20, a2);

          return;
        }

        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v15 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v15, qword_1EDE57E00);

        v7 = sub_1DD0DD8EC();
        v8 = sub_1DD0DE6CC();

        if (!os_log_type_enabled(v7, v8))
        {
          goto LABEL_12;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19[0] = v10;
        *v9 = 136315138;
        v16 = sub_1DD0DDE7C();
        v18 = sub_1DCB10E9C(v16, v17, v19);

        *(v9 + 4) = v18;
        v14 = "App urlTypesSchemesParser empty urlTypeSchemes %s";
        goto LABEL_11;
      }
    }

    else
    {
      sub_1DCC8BC14(v19);
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);

    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6CC();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136315138;
    v11 = sub_1DD0DDE7C();
    v13 = sub_1DCB10E9C(v11, v12, v19);

    *(v9 + 4) = v13;
    v14 = "App urlTypesSchemesParser invalid urlTypeSchemes %s";
LABEL_11:
    _os_log_impl(&dword_1DCAFC000, v7, v8, v14, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A8390](v10, -1, -1);
    MEMORY[0x1E12A8390](v9, -1, -1);
LABEL_12:

    return;
  }

  __break(1u);
}

uint64_t sub_1DCF72D7C(uint64_t result, void *a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    result = sub_1DCB21038(0xD000000000000015, 0x80000001DD125D60);
    if (v4)
    {
      sub_1DCB0DF6C(*(v2 + 56) + 32 * result, v11);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v5 = *v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v5)
        {
        }

        v6 = [objc_allocWithZone(MEMORY[0x1E69C7AA0]) init];
        v7 = sub_1DD0DDF8C();

        [v6 setPhrase_];

        sub_1DCB90D40(0xD000000000000025, 0x80000001DD125DF0, v2);
        if (v12)
        {
          if (swift_dynamicCast())
          {
            v8 = sub_1DD0DDF8C();

LABEL_13:
            [v6 setPronunciation_];

            MEMORY[0x1E12A6920]();
            sub_1DCBBF95C(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
            return sub_1DD0DE3AC();
          }
        }

        else
        {
          sub_1DCC8BC14(v11);
        }

        v8 = 0;
        goto LABEL_13;
      }
    }
  }

  return result;
}

unint64_t sub_1DCF72F50@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_1DD0DDE9C();
  v5 = result;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_14:
    *a3 = v5;
    return result;
  }

  v7 = (a1 + 40);
  while (1)
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1DD0E07C0;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    swift_bridgeObjectRetain_n();
    v11 = sub_1DCF735F8(v10, 0, a2);
    if (!v12)
    {
      goto LABEL_10;
    }

    v27 = v11;
    v28 = v12;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_1DCB21038(v8, v9);
    if (__OFADD__(v5[2], (v14 & 1) == 0))
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2810, &qword_1DD0F4B30);
    result = sub_1DD0DEDCC();
    if (result)
    {
      result = sub_1DCB21038(v8, v9);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_17;
      }

      v15 = result;
    }

    if (v16)
    {

      v18 = (v5[7] + 16 * v15);
      v19 = v18[1];
      *v18 = v27;
      v18[1] = v28;
LABEL_10:

      goto LABEL_13;
    }

    v5[(v15 >> 6) + 8] |= 1 << v15;
    v20 = (v5[6] + 16 * v15);
    *v20 = v8;
    v20[1] = v9;
    v21 = (v5[7] + 16 * v15);
    *v21 = v27;
    v21[1] = v28;
    v22 = v5[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_16;
    }

    v5[2] = v24;
LABEL_13:
    v7 += 2;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1DD0DF12C();
  __break(1u);
  return result;
}

id sub_1DCF73178(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DD0DDF8C();

  v7 = [a4 entitlementValueForKey:v6 ofClass:a3];

  return v7;
}

void sub_1DCF731E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setBundleId_];
}

void sub_1DCF7323C(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DDE4C();

  [a2 setAppNameMap_];
}

uint64_t sub_1DCF732B4(void *a1)
{
  v1 = [a1 localizedInfoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDE6C();

  return v3;
}

void sub_1DCF73320(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1EDE461A8, 0x1E69C7AA0);
  v3 = sub_1DD0DE2DC();

  [a2 setAppNameSynonyms_];
}

void sub_1DCF733A4(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DE2DC();

  [a2 setSupportedSchemes_];
}

uint64_t sub_1DCF73410(void *a1)
{
  v2 = [a1 localizedName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCF73480(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1DCB10E5C(0, a3, a4);
  v8 = sub_1DD0DE2EC();

  return v8;
}

uint64_t sub_1DCF734F4(void *a1)
{
  v1 = [a1 supportedSchemes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DE2EC();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for SAAppInfoFactory(_BYTE *result, int a2, int a3)
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