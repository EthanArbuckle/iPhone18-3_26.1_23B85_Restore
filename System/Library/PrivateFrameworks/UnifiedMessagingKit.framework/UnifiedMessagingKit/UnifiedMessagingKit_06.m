uint64_t OUTLINED_FUNCTION_44_0()
{

  return sub_2705D8024();
}

void OUTLINED_FUNCTION_46_2()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = -2;
}

void OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  sub_2703AFC10(a13, a12, a11, a10);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return sub_2705D8484();
}

void OUTLINED_FUNCTION_50_0()
{
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  sub_2703AFC10(v5, v6, v7, v8);
}

void OUTLINED_FUNCTION_51_0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_2703AFC10(v2, v3, v4, v5);
}

void OUTLINED_FUNCTION_58_0()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
  v4 = *(v0 - 80);
  v5 = *(v0 - 72);

  sub_2703AFC10(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return sub_2705D84C4();
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return sub_2705D7FE4();
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_2705D7FA4();
}

uint64_t OUTLINED_FUNCTION_62_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return type metadata accessor for FlowAction.Destination(0);
}

void OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  sub_2703B4AA0(a1, a2, a17, a14);
}

uint64_t sub_27042CEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2120);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_27042CF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2120);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FlowAuthorityActions()
{
  result = qword_2807D2128;
  if (!qword_2807D2128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27042D074()
{
  sub_27042D0F8();
  if (v0 <= 0x3F)
  {
    sub_2705D6914();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27042D0F8()
{
  if (!qword_2807D2138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2140);
    v0 = sub_2705D5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D2138);
    }
  }
}

uint64_t sub_27042D178()
{
  type metadata accessor for FlowAuthorityActions();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2148);
  sub_2705D6914();
  OUTLINED_FUNCTION_0_25();
  sub_2703AFBC8(v0, &qword_2807D2148);
  return sub_2705D59A4();
}

uint64_t sub_27042D248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v71 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2158);
  v3 = *(v2 - 8);
  v69 = v2;
  v70 = v3;
  MEMORY[0x28223BE20](v2);
  v68 = v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2160);
  v6 = *(v5 - 8);
  v66 = v5;
  v67 = v6;
  MEMORY[0x28223BE20](v5);
  v65 = v56 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2168);
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = v56 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2120);
  MEMORY[0x28223BE20](v75);
  v10 = v56 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2170);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v79 = v56 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v81 = v56 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v56 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v56 - v24;
  sub_2705D5F24();
  v74 = type metadata accessor for FlowAction(0);
  v26 = sub_2705D6914();
  v73 = sub_27042DB8C(&qword_2807D2178);
  v72 = sub_27042DB8C(&qword_2807D2180);
  sub_2705D4854();
  v27 = v26;
  sub_2705D6A14();
  v80 = *(v14 + 16);
  v78 = v14 + 16;
  v61 = v25;
  v80(v25, v23, v13);
  sub_2703AFBC8(&qword_2807D2188, &qword_2807D2170);
  v28 = v57;
  sub_2705D69E4();
  v82 = *(v14 + 8);
  v77 = v14 + 8;
  v82(v23, v13);
  (*(v58 + 8))(v12, v28);
  v56[2] = v10;
  sub_2705D5F24();
  v29 = v60;
  v56[1] = v27;
  sub_2705D48C4();
  v30 = v81;
  sub_2705D6A14();
  v31 = v23;
  v59 = v23;
  v32 = v30;
  v80(v31, v30, v13);
  sub_2703AFBC8(&qword_2807D2190, &qword_2807D2168);
  v33 = v62;
  sub_2705D69E4();
  v34 = v32;
  v35 = v82;
  v82(v34, v13);
  (*(v64 + 8))(v29, v33);
  sub_2705D5F24();
  v36 = v65;
  sub_2705D4874();
  v37 = v79;
  sub_2705D6A14();
  v80(v81, v37, v13);
  sub_2703AFBC8(&qword_2807D2198, &qword_2807D2160);
  v38 = v66;
  sub_2705D69E4();
  v39 = v77;
  v35(v37, v13);
  (*(v67 + 8))(v36, v38);
  sub_2705D5F24();
  v40 = v68;
  sub_2705D48A4();
  v41 = v63;
  sub_2705D6A14();
  v42 = v80;
  v80(v37, v41, v13);
  sub_2703AFBC8(&qword_2807D21A0, &qword_2807D2158);
  v43 = v69;
  sub_2705D69E4();
  v82(v41, v13);
  (*(v70 + 8))(v40, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
  v44 = *(v39 + 64);
  v45 = (*(v39 + 72) + 32) & ~*(v39 + 72);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2705EB880;
  v47 = v46 + v45;
  v48 = v61;
  v42(v47, v61, v13);
  v49 = v59;
  v42(v47 + v44, v59, v13);
  v50 = v81;
  v42(v47 + 2 * v44, v81, v13);
  v51 = v47 + 3 * v44;
  v52 = v79;
  v42(v51, v79, v13);
  sub_2703D3E64(v46);
  swift_setDeallocating();
  sub_2704890E4();
  v53 = v52;
  v54 = v82;
  v82(v53, v13);
  v54(v50, v13);
  v54(v49, v13);
  return (v54)(v48, v13);
}

uint64_t sub_27042DB8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27042DBD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2148);
  sub_2705D6914();
  OUTLINED_FUNCTION_0_25();
  sub_2703AFBC8(v0, &qword_2807D2148);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27042DC80()
{
  sub_2703CCD80();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DCC0()
{
  sub_2703E13D4();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DD00()
{
  sub_2703E6230();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DD40()
{
  sub_2703FA3A8();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DD80()
{
  sub_27041FE40();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DDC0()
{
  sub_2704365B8();

  return sub_2705D4784();
}

uint64_t sub_27042DE04()
{
  sub_2704371EC();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DE44()
{
  sub_270437294();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DE84()
{
  sub_27043709C();

  return sub_2705D4784();
}

uint64_t sub_27042DEE4()
{
  sub_2704370F0();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DF24()
{
  sub_2704372E8();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DF64()
{
  sub_27043733C();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DFA4()
{
  sub_270437198();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042DFE4()
{
  sub_270436710();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042E024()
{
  type metadata accessor for UnifiedButtonComponentView(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_0();
  sub_2704367E8(v0, v3 - v2);
  sub_270435EC4(&qword_2807D2448, type metadata accessor for UnifiedButtonComponentView);
  return sub_2705D4784();
}

uint64_t sub_27042E0F4()
{
  sub_270437144();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

uint64_t sub_27042E134()
{
  sub_270437240();
  OUTLINED_FUNCTION_6_21();

  return sub_2705D4784();
}

void sub_27042E174()
{
  OUTLINED_FUNCTION_26_1();
  v42 = v1;
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21E0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27_5();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21E8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21F0);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v39 = v38 - v16;
  memcpy(v50, v0, 0x330uLL);
  v47 = v0[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21F8);
  sub_2705D5E54();
  v17 = v44;
  v47 = v0[50];
  sub_2705D5E54();

  v18 = swift_allocObject();
  memcpy((v18 + 16), v50, 0x330uLL);
  *&v12[v9[18]] = v17;
  v44 = 0;
  v45 = 0;
  sub_2704358D4(v50, &v47);
  type metadata accessor for CGSize(0);
  sub_2705D5E44();
  v19 = v48;
  *v12 = v47;
  *(v12 + 2) = v19;
  sub_2705D4F94();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_2703CF590(v8, v5, &qword_2807D21E0);
  sub_2705D5E44();
  sub_2703C2EFC(v8, &qword_2807D21E0);
  v24 = &v12[v9[16]];
  v44 = 0;
  v45 = 0;
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13D0);
  sub_2705D5E44();
  v25 = v48;
  v26 = v49;
  *v24 = v47;
  v24[16] = v25;
  *(v24 + 3) = v26;
  v27 = &v12[v9[17]];
  LOBYTE(v44) = 0;
  sub_2705D5E44();
  v28 = *(&v47 + 1);
  *v27 = v47;
  *(v27 + 1) = v28;
  v12[v9[19]] = 0;
  v29 = &v12[v9[20]];
  *v29 = sub_27042E640;
  v29[1] = 0;
  v30 = &v12[v9[21]];
  *v30 = sub_2704358CC;
  v30[1] = v18;
  v43 = v50;
  v31 = sub_2705D6914();
  OUTLINED_FUNCTION_9_18();
  v33 = sub_2703AFBC8(v32, &qword_2807D21E8);
  v34 = v39;
  sub_2705D59A4();
  sub_2703C2EFC(v12, &qword_2807D21E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2208);
  OUTLINED_FUNCTION_21_3();
  sub_2705D5084();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2705DC030;
  sub_2705D5074();
  *&v47 = v9;
  *(&v47 + 1) = v31;
  v48 = v33;
  OUTLINED_FUNCTION_9_11();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v40;
  MEMORY[0x2743A2000](1, v35, v40, OpaqueTypeConformance2);

  (*(v41 + 8))(v34, v37);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27042E640@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2280);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = &v44 - v6;
  v44 = *a1;
  sub_27042EBA0();
  v7 = v56;
  v8 = v57;
  v9 = v58;
  v10 = v59;
  sub_2703C3A18(v56, v57);
  sub_2704360B8(&v55);
  if (v8)
  {
    v54[0] = v9;
    v54[1] = v10;
    sub_2703C2F54();

    v11 = sub_2705D5944();
    v13 = v12;
    v15 = v14;
    sub_2703C3A5C(v7, v8);
    sub_2705D5784();
    v16 = sub_2705D5914();
    v18 = v17;
    v20 = v19;

    sub_2703CEDB0(v11, v13, v15 & 1);

    sub_2705D57C4();
    v21 = sub_2705D58E4();
    v23 = v22;
    LOBYTE(v13) = v24;
    sub_2703CEDB0(v16, v18, v20 & 1);

    v54[0] = sub_2705D5D54();
    v25 = sub_2705D58F4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_2703CEDB0(v21, v23, v13 & 1);

    sub_2705D60A4();
    sub_2705D5094();
    v50 = v29 & 1;
    KeyPath = swift_getKeyPath();
    LOBYTE(v21) = sub_2705D56C4();
    v51[0] = 1;
    v53[0] = v25;
    v53[1] = v27;
    LOBYTE(v53[2]) = v29 & 1;
    v53[3] = v31;
    memcpy(&v53[4], v52, 0x70uLL);
    v53[18] = KeyPath;
    LOBYTE(v53[19]) = 1;
    LOBYTE(v53[20]) = v21;
    memset(&v53[21], 0, 32);
    LOBYTE(v53[25]) = 1;
    CGSizeMake(v53, v33);
    memcpy(v54, v53, 0xC9uLL);
  }

  else
  {
    sub_27043610C(v54);
  }

  v34 = sub_27042EC60();

  v53[0] = v34;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2290);
  sub_2703AFBC8(&qword_2807D2298, &qword_2807D2288);
  sub_2703AFBC8(&qword_2807D22A0, &qword_2807D2290);
  v35 = v45;
  sub_2705D5F74();
  memcpy(v51, v54, sizeof(v51));
  v37 = v48;
  v36 = v49;
  v38 = *(v48 + 16);
  v39 = v46;
  v38(v46, v35, v49);
  memcpy(v52, v51, 0xC9uLL);
  v40 = v47;
  memcpy(v47, v51, 0xC9uLL);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22A8);
  v38(&v40[*(v41 + 48)], v39, v36);
  sub_2703CF590(v52, v53, &qword_2807D22B0);
  v42 = *(v37 + 8);
  v42(v35, v36);
  v42(v39, v36);
  memcpy(v53, v51, 0xC9uLL);
  return sub_2703C2EFC(v53, &qword_2807D22B0);
}

uint64_t sub_27042EBA0()
{
  OUTLINED_FUNCTION_31_4();
  swift_getKeyPath();
  __dst[0] = v0;
  OUTLINED_FUNCTION_1_29();
  sub_270435EC4(v2, v3);
  sub_2705D45F4();

  memcpy(__dst, (v0 + 16), sizeof(__dst));
  memcpy(v1, (v0 + 16), 0x318uLL);
  return sub_270436178(__dst, &v5);
}

uint64_t sub_27042EC60()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_29();
  v3 = sub_270435EC4(v1, v2);
  OUTLINED_FUNCTION_4_9(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_2705D45F4();

  swift_beginAccess();
  v11 = *(v0 + 808);

  return v11;
}

uint64_t sub_27042ED18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2268);
  v4 = MEMORY[0x28223BE20](v3);
  v82 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v72 - v6;
  v7 = sub_2705D47C4();
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2705D47F4();
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2705D47A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v72 - v15);
  v17 = sub_2705D45C4();
  v85 = *(v17 - 8);
  v86 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ComponentShelf();
  MEMORY[0x28223BE20](v89);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22B8);
  MEMORY[0x28223BE20](v77);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22C0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v79 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v88 = &v72 - v27;
  v28 = *(a1 + 16);
  v78 = *(a1 + 24);
  v29 = *(v28 + 16);
  v84 = v3;
  if (v29)
  {
    v30 = v89;
    v31 = *(v89 + 24);
    v32 = sub_2705D6A54();
    v74 = v12;
    __swift_storeEnumTagSinglePayload(&v21[v31], 1, 1, v32);

    sub_2705D45B4();
    v33 = sub_2705D45A4();
    v35 = v34;
    (*(v85 + 8))(v19, v86);
    *v21 = xmmword_2705EB940;
    *(v21 + 1) = 0u;
    *(v21 + 2) = 0u;
    *(v21 + 41) = 0u;
    *(v21 + 57) = v92[0];
    *(v21 + 15) = *(v92 + 3);
    *(v21 + 8) = 0;
    v21[72] = -1;
    *(v21 + 73) = *v91;
    *(v21 + 19) = *&v91[3];
    *(v21 + 10) = 0;
    v21[88] = -1;
    v36 = *v90;
    *(v21 + 23) = *&v90[3];
    *(v21 + 89) = v36;
    *(v21 + 13) = 0;
    *(v21 + 14) = 0;
    *(v21 + 12) = 0;
    v21[120] = -2;
    *(v21 + 16) = v28;
    v37 = &v21[*(v30 + 28)];
    *v37 = v33;
    v37[1] = v35;
    *v16 = 1;
    v38 = *(v74 + 104);
    v76 = *MEMORY[0x277D7EB30];
    v38(v16);
    v73 = v11;
    sub_2705D47D4();
    sub_2705D47B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2258);
    sub_270435EC4(&qword_2807CFF60, type metadata accessor for ComponentShelf);
    sub_2703AFBC8(&qword_2807D2260, &qword_2807D2258);
    v12 = v74;
    v11 = v73;
    sub_2705D48F4();
    LOBYTE(v35) = sub_2705D56D4();
    sub_2705D4D34();
    v39 = &v23[*(v84 + 36)];
    *v39 = v35;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    LOBYTE(v35) = sub_2705D56E4();
    sub_2705D4D34();
    v44 = v77;
    v45 = &v23[*(v77 + 36)];
    *v45 = v35;
    *(v45 + 1) = v46;
    *(v45 + 2) = v47;
    *(v45 + 3) = v48;
    *(v45 + 4) = v49;
    v45[40] = 0;
    v50 = v88;
    sub_2703CF3E8(v23, v88, &qword_2807D22B8);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v44);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v77);
    v76 = *MEMORY[0x277D7EB30];
  }

  v51 = v89;
  v52 = *(v89 + 24);
  v53 = sub_2705D6A54();
  __swift_storeEnumTagSinglePayload(&v21[v52], 1, 1, v53);
  v54 = v78;

  sub_2705D45B4();
  v55 = sub_2705D45A4();
  v57 = v56;
  (*(v85 + 8))(v19, v86);
  *v21 = xmmword_2705EB940;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 41) = 0u;
  *(v21 + 57) = v92[0];
  *(v21 + 15) = *(v92 + 3);
  *(v21 + 8) = 0;
  v21[72] = -1;
  *(v21 + 73) = *v91;
  *(v21 + 19) = *&v91[3];
  *(v21 + 10) = 0;
  v21[88] = -1;
  v58 = *v90;
  *(v21 + 23) = *&v90[3];
  *(v21 + 89) = v58;
  *(v21 + 13) = 0;
  *(v21 + 14) = 0;
  *(v21 + 12) = 0;
  v21[120] = -2;
  *(v21 + 16) = v54;
  v59 = &v21[*(v51 + 28)];
  *v59 = v55;
  v59[1] = v57;
  *v16 = 3;
  (*(v12 + 104))(v16, v76, v11);
  sub_2705D4794();
  (*(v12 + 8))(v16, v11);
  sub_2705D47D4();
  sub_2705D47B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2258);
  sub_270435EC4(&qword_2807CFF60, type metadata accessor for ComponentShelf);
  sub_2703AFBC8(&qword_2807D2260, &qword_2807D2258);
  v60 = v81;
  sub_2705D48F4();
  LOBYTE(v55) = sub_2705D5724();
  sub_2705D4D34();
  v61 = v60 + *(v84 + 36);
  *v61 = v55;
  *(v61 + 8) = v62;
  *(v61 + 16) = v63;
  *(v61 + 24) = v64;
  *(v61 + 32) = v65;
  *(v61 + 40) = 0;
  v66 = v88;
  v67 = v79;
  sub_2703CF590(v88, v79, &qword_2807D22C0);
  v68 = v82;
  sub_2703CF590(v60, v82, &qword_2807D2268);
  v69 = v83;
  sub_2703CF590(v67, v83, &qword_2807D22C0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D22C8);
  sub_2703CF590(v68, v69 + *(v70 + 48), &qword_2807D2268);
  sub_2703C2EFC(v60, &qword_2807D2268);
  sub_2703C2EFC(v66, &qword_2807D22C0);
  sub_2703C2EFC(v68, &qword_2807D2268);
  return sub_2703C2EFC(v67, &qword_2807D22C0);
}

uint64_t sub_27042F710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704D5B94();
  *a1 = result;
  return result;
}

uint64_t sub_27042F758@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704D5C84();
  *a1 = result;
  return result;
}

uint64_t sub_27042F788@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_2705D47C4();
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2705D47F4();
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2705D47A4();
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2705D45C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ComponentShelf();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 + 800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21F8);
  sub_2705D5E54();
  sub_27042FC54();
  v18 = v17;

  v19 = *(v14 + 24);
  v20 = sub_2705D6A54();
  __swift_storeEnumTagSinglePayload(&v16[v19], 1, 1, v20);
  sub_2705D45B4();
  v21 = sub_2705D45A4();
  v23 = v22;
  (*(v11 + 8))(v13, v10);
  *v16 = xmmword_2705EB940;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 41) = 0u;
  *(v16 + 57) = v43;
  *(v16 + 15) = *(&v43 + 3);
  *(v16 + 8) = 0;
  v16[72] = -1;
  *(v16 + 73) = v42;
  *(v16 + 19) = *(&v42 + 3);
  *(v16 + 10) = 0;
  v16[88] = -1;
  v24 = *v44;
  *(v16 + 23) = *&v44[3];
  *(v16 + 89) = v24;
  *(v16 + 13) = 0;
  *(v16 + 14) = 0;
  *(v16 + 12) = 0;
  v16[120] = -2;
  *(v16 + 16) = v18;
  v25 = &v16[*(v14 + 28)];
  *v25 = v21;
  v25[1] = v23;
  *v9 = 1;
  (*(v7 + 104))(v9, *MEMORY[0x277D7EB30], v38);
  sub_2705D47D4();
  sub_2705D47B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2258);
  sub_270435EC4(&qword_2807CFF60, type metadata accessor for ComponentShelf);
  sub_2703AFBC8(&qword_2807D2260, &qword_2807D2258);
  v26 = v41;
  sub_2705D48F4();
  LOBYTE(v18) = sub_2705D56D4();
  sub_2705D4D34();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2268);
  v36 = v26 + *(result + 36);
  *v36 = v18;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  return result;
}

void sub_27042FC54()
{
  OUTLINED_FUNCTION_26_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_23_0(v0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  v44 = v43 - v2;
  v3 = sub_2705D6774();
  v4 = OUTLINED_FUNCTION_23_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v43[2] = v6 - v5;
  sub_27043157C();
  if (*(&v59[1] + 1))
  {
    memcpy(v60, v59, 0x50uLL);
    v7 = sub_2704313C4();
    v8 = sub_2703D5248(&v60[2] + 8, v7);

    sub_270435F0C(v60);
    if (v8)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_2703C2EFC(v59, &qword_2807D2220);
  }

  v9 = sub_27042EC60();

  sub_270431630(v9, v60);

  if (*(&v60[1] + 1))
  {
    sub_2703BD1EC(&v60[2] + 8, &v57);
    sub_270435F0C(v60);
    v59[0] = v57;
    v59[1] = *v58;
    *&v59[2] = *&v58[16];
    v10 = sub_2704313C4();
    v11 = sub_2703D5248(v59, v10);

    if (v11)
    {
      v12 = *(v11 + 16);
      v43[1] = v11;
      v13 = MEMORY[0x277D84F90];
      if (v12)
      {
        v14 = v11 + 32;
        while (1)
        {
          sub_2703B4E54(v14, v60);
          sub_2703B4E54(v60, v51);
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2270);
          if (!swift_dynamicCast())
          {
            break;
          }

          v46 = v12;
          v47 = v13;
          sub_2703B291C(&v48, &v57);
          v45 = *&v58[8];
          v16 = __swift_project_boxed_opaque_existential_1(&v57, *&v58[8]);
          v52 = v45;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v51);
          sub_2703CF590(v16, &v48, &qword_2807CF140);
          v18 = v50;
          v19 = v49;
          *boxed_opaque_existential_1Tm = v48;
          *(boxed_opaque_existential_1Tm + 1) = v19;
          boxed_opaque_existential_1Tm[4] = v18;
          *&v45 = v15;
          sub_2705D6764();
          *(&v49 + 1) = sub_2705D65B4();
          v50 = MEMORY[0x277D21B60];
          __swift_allocate_boxed_opaque_existential_1Tm(&v48);
          sub_2705D65A4();
          v20 = type metadata accessor for ButtonComponentModel();
          v21 = v44;
          sub_2703CF590(v16 + v20[6], v44, &qword_2807CF130);
          sub_2703CF3E8(v21, boxed_opaque_existential_1Tm + v20[6], &qword_2807CF190);
          v22 = (v16 + v20[7]);
          v23 = *(v16 + v20[8]);
          v24 = *(v16 + v20[9]);
          v25 = *v22;
          v26 = v22[1];
          *(boxed_opaque_existential_1Tm + 7) = 0u;
          boxed_opaque_existential_1Tm[9] = 0;
          *(boxed_opaque_existential_1Tm + 5) = 0u;

          sub_2703B4B64(&v48, (boxed_opaque_existential_1Tm + 5));
          v27 = (boxed_opaque_existential_1Tm + v20[7]);
          *v27 = v25;
          v27[1] = v26;
          *(boxed_opaque_existential_1Tm + v20[8]) = v23;
          *(boxed_opaque_existential_1Tm + v20[9]) = v24;
          *(boxed_opaque_existential_1Tm + v20[10]) = 0;
          *(boxed_opaque_existential_1Tm + v20[11]) = 0;
          __swift_destroy_boxed_opaque_existential_1(v60);
          sub_2703B4E54(v51, &v48);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v55 = 0;
            v53 = 0u;
            v54 = 0u;
          }

          __swift_destroy_boxed_opaque_existential_1(v51);
          __swift_destroy_boxed_opaque_existential_1(&v57);
          v12 = v46;
          v13 = v47;
          if (*(&v54 + 1))
          {
            goto LABEL_15;
          }

          sub_2703C2EFC(&v53, &qword_2807D2228);
LABEL_20:
          v14 += 40;
          if (!--v12)
          {
            goto LABEL_21;
          }
        }

        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        sub_2703C2EFC(&v48, &qword_2807D2278);
        sub_2703B291C(v60, &v53);
LABEL_15:
        sub_2703B291C(&v53, &v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = OUTLINED_FUNCTION_21_8();
          sub_270499284(v38, v39, v40, v13);
          v13 = v41;
          v56 = v41;
        }

        v30 = v13[2];
        v29 = v13[3];
        if (v30 >= v29 >> 1)
        {
          sub_270499284(v29 > 1, v30 + 1, 1, v13);
          v13 = v42;
          v56 = v42;
        }

        v31 = *&v58[8];
        v32 = *&v58[16];
        v33 = __swift_mutable_project_boxed_opaque_existential_1(&v57, *&v58[8]);
        MEMORY[0x28223BE20](v33);
        OUTLINED_FUNCTION_4_0();
        v36 = v35 - v34;
        (*(v37 + 16))(v35 - v34);
        sub_2704743B4(v30, v36, &v56, v31, v32);
        __swift_destroy_boxed_opaque_existential_1(&v57);
        goto LABEL_20;
      }

LABEL_21:

      sub_2703D7E30(v59);
    }

    else
    {
      sub_2703D7E30(v59);
    }
  }

  else
  {
    sub_2703C2EFC(v60, &qword_2807D2220);
  }

LABEL_24:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27043021C()
{
  sub_2705D4774();
  sub_2703DF344();
  return sub_2705D4744();
}

uint64_t sub_270430280@<X0>(uint64_t *a1@<X8>)
{
  sub_2704D5B94();
  v2 = sub_2704D5360();

  *a1 = v2;
  return result;
}

uint64_t sub_2704302CC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = swift_allocObject();
  memcpy((v10 + 16), a1, 0x330uLL);
  sub_2704358D4(a1, v18);
  sub_2705D6914();
  sub_2705D6A14();
  v18[0] = sub_270435B00;
  v18[1] = v10;
  v16 = *(v4 + 16);
  v16(v9, v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2210);
  sub_2703AFBC8(&qword_2807D2218, &qword_2807D2210);
  sub_2705D69E4();
  v11 = *(v4 + 8);
  v11(v7, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2705DC030;
  v16((v13 + v12), v9, v3);
  sub_2703D3E64(v13);
  swift_setDeallocating();
  sub_2704890E4();
  return (v11)(v9, v3);
}

uint64_t sub_270430544(uint64_t a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  v7 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_270435B08(a1, v10);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  memcpy(v8 + 4, a2, 0x330uLL);
  memcpy(v8 + 106, v10, 0x50uLL);
  sub_2704358D4(a2, v10);
  sub_270482728();
}

uint64_t sub_27043066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_270430690, 0, 0);
}

uint64_t sub_270430690()
{
  sub_2705D78A4();
  *(v0 + 40) = sub_2705D7894();
  v2 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_270430724, v2, v1);
}

uint64_t sub_270430778()
{
  *(swift_task_alloc() + 16) = v3;
  sub_2705D4F14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27043080C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21F8);
  sub_2705D5E54();
  sub_270430880();
}

void sub_270430880()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  sub_27043157C();
  if (!*(&__src[1] + 1))
  {
    v34 = &qword_2807D2220;
LABEL_14:
    sub_2703C2EFC(__src, v34);
    goto LABEL_15;
  }

  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_27042EC60();
  sub_270432BBC(__dst, v4, v5, &v117);

  v6 = v118;
  if (!v118)
  {
    sub_270435F0C(__dst);
    goto LABEL_15;
  }

  v7 = v117;
  v8 = v119;
  v9 = v120;
  v10 = v121;
  v100 = v120;
  v101 = v121;

  sub_270432C7C(&__dst[2] + 8, v9, v10, &v122);

  if (!v125)
  {

    sub_270435F0C(__dst);
    sub_2703C2EFC(&v122, &qword_2807D2228);
    memset(__src, 0, 40);
LABEL_13:
    v34 = &qword_2807D2230;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2238);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__src, 0, 40);
    goto LABEL_12;
  }

  if (!*(&__src[1] + 1))
  {
LABEL_12:

    sub_270435F0C(__dst);
    goto LABEL_13;
  }

  v80 = v7;
  v90 = v8;
  v95 = v3;
  sub_2703B291C(__src, &v127);
  v12 = *(&v128 + 1);
  v11 = v129;
  __swift_project_boxed_opaque_existential_1(&v127, *(&v128 + 1));
  v85 = *(v11 + 16);
  v125 = v12;
  v126 = v11;
  __swift_allocate_boxed_opaque_existential_1Tm(&v122);
  v85(0, v12, v11);
  sub_2703B4E54(&v122, __src);
  if (swift_dynamicCast())
  {
    sub_2703B291C(&v105, &v108);
    v13 = v111;
    v14 = v112;
    v15 = __swift_project_boxed_opaque_existential_1(&v108, v111);
    sub_270474448(&__dst[2] + 8, v15, &v100, v13, v14);
    *&__src[0] = v80;
    *(&__src[0] + 1) = v6;
    *&__src[1] = v90;
    *(&__src[1] + 1) = v100;
    *&__src[2] = v101;
    swift_getKeyPath();
    *&v105 = v1;
    OUTLINED_FUNCTION_1_29();
    v18 = sub_270435EC4(v16, v17);
    OUTLINED_FUNCTION_28_5(v18, v19, v20, v21, v22, v23, v24, v25, v76, v80, v85, v90, v95, v100, v101, v102, v103, v104, v105);
    sub_2705D45F4();

    *&v105 = v1;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_28_5(KeyPath, v27, v28, v29, v30, v31, v32, v33, v77, v81, v86, v91, v96, v100, v101, v102, v103, v104, v105);
    sub_2705D4614();

    swift_beginAccess();
    sub_270432D84(__dst, __src);
    swift_endAccess();

    *&v105 = v1;
    swift_getKeyPath();
    sub_2705D4604();

    sub_270435F0C(__dst);
    __swift_destroy_boxed_opaque_existential_1(&v108);
  }

  else
  {

    sub_270435F0C(__dst);
    v105 = 0u;
    v106 = 0u;
    v107 = 0;
    sub_2703C2EFC(&v105, &qword_2807D2228);
  }

  v3 = v95;
  __swift_destroy_boxed_opaque_existential_1(&v122);
  __swift_destroy_boxed_opaque_existential_1(&v127);
LABEL_15:
  v35 = sub_27042EC60();
  sub_270432BBC(v3, v35, v36, &v122);

  v37 = v123;
  if (!v123)
  {
    goto LABEL_25;
  }

  v38 = v122;
  v39 = v124;
  v40 = v125;
  v41 = v126;
  v113 = v125;
  v114 = v126;

  sub_270432C7C(v3 + 40, v40, v41, &v127);

  if (!*(&v128 + 1))
  {

    sub_2703C2EFC(&v127, &qword_2807D2228);
    memset(__dst, 0, 40);
LABEL_24:
    sub_2703C2EFC(__dst, &qword_2807D2230);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2238);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__dst, 0, 40);
    goto LABEL_23;
  }

  if (!*(&__dst[1] + 1))
  {
LABEL_23:

    goto LABEL_24;
  }

  v82 = v38;
  v87 = v1;
  v92 = v39;
  v97 = v3;
  sub_2703B291C(__dst, &v108);
  v43 = v111;
  v42 = v112;
  __swift_project_boxed_opaque_existential_1(&v108, v111);
  v44 = *(v42 + 16);
  *(&v106 + 1) = v43;
  v107 = v42;
  __swift_allocate_boxed_opaque_existential_1Tm(&v105);
  v44(1, v43, v42);
  sub_2703B4E54(&v105, __dst);
  if (swift_dynamicCast())
  {
    sub_2703B291C(&v127, &v100);
    v45 = v103;
    v46 = v104;
    v47 = __swift_project_boxed_opaque_existential_1(&v100, v103);
    v48 = v97;
    sub_270474448(v97 + 40, v47, &v113, v45, v46);
    *&v127 = v82;
    *(&v127 + 1) = v37;
    *&v128 = v92;
    *(&v128 + 1) = v113;
    v129 = v114;
    swift_getKeyPath();
    v49 = v87;
    *&__dst[0] = v87;
    OUTLINED_FUNCTION_1_29();
    v52 = sub_270435EC4(v50, v51);
    OUTLINED_FUNCTION_16_8(v52, v53, v54, v55, v56, v57, v58, v59, v76, v82, v87, v92, v97, v100, v101, v102, v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1), v107, v108, v109, v110, v111, v112, v113, v114, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), __dst[0]);
    sub_2705D45F4();

    *&__dst[0] = v49;
    v60 = swift_getKeyPath();
    OUTLINED_FUNCTION_16_8(v60, v61, v62, v63, v64, v65, v66, v67, v78, v83, v88, v93, v98, v100, v101, v102, v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1), v107, v108, v109, v110, v111, v112, v113, v114, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), __dst[0]);
    sub_2705D4614();

    swift_beginAccess();
    sub_270432D84(v48, &v127);
    swift_endAccess();

    *&__dst[0] = v49;
    v68 = swift_getKeyPath();
    OUTLINED_FUNCTION_16_8(v68, v69, v70, v71, v72, v73, v74, v75, v79, v84, v89, v94, v99, v100, v101, v102, v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1), v107, v108, v109, v110, v111, v112, v113, v114, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), __dst[0]);
    sub_2705D4604();

    sub_270435B08(v48, __dst);
    sub_2704318E8(__dst);
    __swift_destroy_boxed_opaque_existential_1(&v100);
  }

  else
  {

    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    sub_2703C2EFC(&v127, &qword_2807D2228);
  }

  __swift_destroy_boxed_opaque_existential_1(&v105);
  __swift_destroy_boxed_opaque_existential_1(&v108);
LABEL_25:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2704310B4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_270436178(__dst, &v3);
  return sub_270431110(__src);
}

uint64_t sub_270431110(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_36_2(KeyPath, sub_2704361D4, v2, &OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar, &qword_2807D2240, type metadata accessor for GridSelectorView.Content, &unk_2705EC4B8, v3, v5);
  sub_2704360B8(__dst);
}

uint64_t sub_2704311C4(uint64_t a1, const void *a2)
{
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  memcpy((a1 + 16), a2, 0x318uLL);
  sub_270436178(a2, &v5);
  return sub_2704360B8(__dst);
}

uint64_t sub_270431234()
{

  return sub_27043127C();
}

uint64_t sub_27043127C()
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_36_2(KeyPath, sub_27043604C, v1, &OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar, &qword_2807D2240, type metadata accessor for GridSelectorView.Content, &unk_2705EC4B8, v2, v4);
}

uint64_t sub_270431338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 808) = a2;
  *(a1 + 816) = a3;
}

uint64_t sub_2704313C4()
{
  swift_getKeyPath();
  sub_270435EC4(&qword_2807D2240, type metadata accessor for GridSelectorView.Content);
  sub_2705D45F4();
}

uint64_t sub_270431494(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_270433B00(KeyPath, sub_27043609C, &v5, &OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar, &qword_2807D2240, type metadata accessor for GridSelectorView.Content);
}

uint64_t sub_270431540(uint64_t a1, uint64_t a2)
{
  *(a1 + 824) = a2;
}

uint64_t sub_27043157C()
{
  OUTLINED_FUNCTION_31_4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_29();
  v4 = sub_270435EC4(v2, v3);
  OUTLINED_FUNCTION_4_9(v4, v5, v6, v7, v8, v9, v10, v11, v13, v0);
  sub_2705D45F4();

  swift_beginAccess();
  return sub_2703CF590(v0 + 832, v1, &qword_2807D2220);
}

uint64_t sub_270431630@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v11 = *(result + 16);
  if (v11)
  {
    v2 = 0;
    v3 = result + 32;
    v10 = result + 32;
    while (2)
    {
      v4 = (v3 + 40 * v2);
      v5 = v4[1];
      v6 = v4[3];
      v12 = *v4;
      v13 = v2 + 1;
      v7 = *(v6 + 16);
      v8 = v6 + 32;
      swift_bridgeObjectRetain_n();
      v15 = v5;

      v9 = 0;
      while (v7 != v9)
      {
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        sub_2703B4E54(v8, v19);
        sub_2703B4E54(v19, v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDB0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2238);
        if (swift_dynamicCast())
        {

          sub_2703C2EFC(v16, &qword_2807D2230);
          v18[0] = v12;
          v18[1] = v15;

          sub_2705D7CF4();
          __swift_project_boxed_opaque_existential_1(v19, v19[3]);
          sub_2705D67D4();

          return __swift_destroy_boxed_opaque_existential_1(v19);
        }

        ++v9;
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        sub_2703C2EFC(v16, &qword_2807D2230);
        result = __swift_destroy_boxed_opaque_existential_1(v19);
        v8 += 40;
      }

      result = swift_bridgeObjectRelease_n();
      v3 = v10;
      v2 = v13;
      if (v13 != v11)
      {
        continue;
      }

      break;
    }
  }

  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_2704318E8(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_36_2(KeyPath, sub_270435F64, v3, &OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar, &qword_2807D2240, type metadata accessor for GridSelectorView.Content, &unk_2705EC4B8, v4, v6);

  return sub_2703C2EFC(a1, &qword_2807D2220);
}

uint64_t sub_27043199C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_270435F80(a2, a1 + 832);
  return swift_endAccess();
}

uint64_t sub_270431A00(const void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_2705D7494();
  *(v2 + 808) = v4;
  *(v2 + 816) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1358);
  *(v2 + 824) = sub_2705D7494();
  *(v2 + 832) = 0u;
  *(v2 + 848) = 0u;
  *(v2 + 864) = 0u;
  *(v2 + 880) = 0u;
  *(v2 + 896) = 0u;
  sub_2705D4624();
  memcpy((v2 + 16), a1, 0x318uLL);
  sub_270431B64();
  v7 = v6;

  OUTLINED_FUNCTION_30_6();
  sub_27043127C();

  sub_270431494(v8);

  sub_2704328D4(v7, v10);

  sub_2704318E8(v10);
  return v2;
}

void sub_270431B64()
{
  OUTLINED_FUNCTION_26_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_21_3();
  v2 = type metadata accessor for ButtonComponentModel();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_5();
  v132 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v115 - v7;
  v127 = type metadata accessor for TextComponentModel();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_5();
  v126 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v125 = &v115 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF190);
  OUTLINED_FUNCTION_23_0(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v136 = &v115 - v16;
  v129 = type metadata accessor for ArtworkCaptionGridCellComponentModel(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v135 = v19 - v18;
  v20 = *(v0 + 784);

  v21 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_30_6();
  v22 = sub_2705D7494();
  v172[20] = v21;
  v172[21] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1358);
  OUTLINED_FUNCTION_30_6();
  v133 = sub_2705D7494();
  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  v117 = 0x8000000270613D30;
  v119 = 0;
  v120 = 0x8000000270613D10;
  v172[18] = 0;
  v172[19] = 0;
  v172[17] = v23;
  v118 = v2;
  v128 = v8;
LABEL_5:
  sub_2704CD43C(v151);
  memcpy(v171, v151, 0x81uLL);
  memcpy(v172, v171, 0x81uLL);
  if (sub_2704369B4(v172) == 1)
  {

    OUTLINED_FUNCTION_25_1();
    return;
  }

  strcpy(v151, "section-");
  v151[9] = 0;
  *&v151[10] = 0;
  *&v151[12] = -402653184;
  *&v154 = v172[0];
  v24 = sub_2705D80A4();
  MEMORY[0x2743A3A90](v24);

  v25 = *v151;
  v26 = *&v151[8];
  v27 = MEMORY[0x277D84F90];
  v28 = sub_2705D7494();
  v169 = v27;
  v170 = v28;
  memcpy(v151, &v172[1], 0x79uLL);
  *&v138 = v25;
  *(&v138 + 1) = v26;
  sub_270432EF8();
  v116 = v29;
  v130 = v172[5];

  sub_2703C2EFC(v171, &qword_2807D2398);
  v30 = 0;
  v31 = 32;
  while (1)
  {
    v32 = *(v130 + 16);
    if (v30 == v32)
    {

      v114 = v138;
      v154 = v138;

      OUTLINED_FUNCTION_24_9();
      v173 = v114;
      v174 = v116;
      v175 = v169;
      v176 = v170;
      sub_270432D84(v151, &v173);

      sub_2703D7E30(v151);
      goto LABEL_5;
    }

    if (v30 >= v32)
    {
      break;
    }

    v134 = v31;
    memcpy(v152, (v130 + v31), sizeof(v152));
    memcpy(&v151[8], v152, 0x280uLL);
    sub_2704166B8(&v151[8], v153);
    v144[0] = v138;

    sub_270416714(v152, v151);
    MEMORY[0x2743A3A90](0x2D6D6574692DLL, 0xE600000000000000);
    v139 = v30;
    *v151 = v30;
    v33 = sub_2705D80A4();
    MEMORY[0x2743A3A90](v33);

    v34 = v144[0];
    sub_2704166B8(v153, &v154);
    v140 = v34;
    *v151 = v34;

    OUTLINED_FUNCTION_24_9();
    sub_2705D6A54();
    OUTLINED_FUNCTION_3_14();
    v137 = v35;
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
    v39 = v166;
    v145 = v166;
    v146 = v167;
    v147 = v168;
    memcpy(v151, v157, 0x160uLL);
    if (get_enum_tag_for_layout_string_19UnifiedMessagingKit13BrandingModelVSg_0(v151) == 1)
    {
      sub_2704369CC(v144);
      v40 = v144;
LABEL_14:
      memcpy(v141, v40, 0xB0uLL);
      goto LABEL_15;
    }

    memcpy(v144, v151, sizeof(v144));
    if (!sub_2703BB658(v144))
    {
      v41 = sub_2703BB26C(v144);
      memcpy(v142, v41, sizeof(v142));
      CGSizeMake(v142, v42);
      memcpy(v143, v157, sizeof(v143));
      sub_2703BE7D0(v143, v141);
      v40 = v142;
      goto LABEL_14;
    }

    sub_2704369CC(v141);
LABEL_15:
    memcpy(v144, v141, 0xB0uLL);
    v43 = v165;
    type metadata accessor for ArtworkCaptionGridCellModel(0);
    v44 = swift_allocObject();
    sub_2703C3A18(v39, *(&v39 + 1));
    sub_270433F10(&v145, v144, v43 & 1);
    v46 = v135;
    v45 = v136;
    *(v135 + 32) = v150;
    v47 = v149;
    *v46 = v148;
    *(v46 + 16) = v47;
    *(v46 + 40) = 0u;
    *(v46 + 56) = 0u;
    *(v46 + 72) = 0;
    v48 = v129;
    sub_2703CF3E8(v45, v46 + *(v129 + 24), &qword_2807CF190);
    *(v46 + *(v48 + 28)) = v44;
    *(&v144[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23A0);
    *&v144[2] = sub_2703AFBC8(&qword_2807D23A8, &qword_2807D23A0);
    __swift_allocate_boxed_opaque_existential_1Tm(v144);
    sub_2705D6764();
    *v143 = v138;

    sub_2705D7CF4();
    v49 = v140;
    *v143 = v140;

    OUTLINED_FUNCTION_24_9();
    sub_2703B4B64(v144, v46 + 40);
    *v143 = v49;

    OUTLINED_FUNCTION_24_9();
    v143[3] = v48;
    v143[4] = sub_270435EC4(&qword_2807D2300, type metadata accessor for ArtworkCaptionGridCellComponentModel);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v143);
    OUTLINED_FUNCTION_10_17();
    sub_2704367E8(v46, boxed_opaque_existential_1Tm);
    v51 = v170;
    if (*(v170 + 16) && (v52 = sub_2703D7390(v144), (v53 & 1) != 0))
    {
      v54 = *(*(v51 + 56) + 8 * v52);
      v55 = v169;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_270435E80(v55);
        v55 = v113;
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }
      }

      if (v54 >= v55[2])
      {
        goto LABEL_47;
      }

      __swift_assign_boxed_opaque_existential_1(&v55[5 * v54 + 4], v143);
      v169 = v55;
    }

    else
    {
      sub_2704369D4(v144, boxed_opaque_existential_1Tm, &v169);
    }

    __swift_destroy_boxed_opaque_existential_1(v143);
    sub_2703D7E30(v144);
    v56 = v159;
    v57 = v139;
    if (v159)
    {
      v58 = v160;
      v59 = v161;
      v131 = v158;
      if (v162)
      {
        v60 = v164;
        v61 = v163;
        *&v144[0] = 0xD000000000000017;
        *(&v144[0] + 1) = v117;
        v123 = v160;
        v124 = v159;
        v122 = v161;
        sub_2703C3A18(v158, v159);
        v62 = OUTLINED_FUNCTION_33_4();
        sub_2703C3A18(v62, v63);
        v64 = v125;
        OUTLINED_FUNCTION_24_9();
        v65 = sub_2705D58B4();
        v66 = sub_2705D60A4();
        v121 = v67;
        v68 = v127;
        OUTLINED_FUNCTION_3_14();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v137);
        OUTLINED_FUNCTION_20_7(v64 + *(v68 + 52));

        v72 = sub_2705D5D54();
        v73 = OUTLINED_FUNCTION_33_4();
        sub_2703C3A5C(v73, v74);
        *(v64 + 40) = 0x4020000000000000;
        *(v64 + 48) = 0;
        *(v64 + 56) = v65;
        *(v64 + 64) = 0;
        *(v64 + 72) = 1;
        *(v64 + 80) = v72;
        *(v64 + 88) = v66;
        *(v64 + 96) = v121;
        *(v64 + 104) = 0;
        *(v64 + 112) = 1;
        v75 = (v64 + *(v68 + 56));
        *v75 = v61;
        v75[1] = v60;
        OUTLINED_FUNCTION_0_26();
        sub_2704367E8(v64, v126);
        sub_270499284(0, 1, 1, MEMORY[0x277D84F90]);
        v77 = v76;
        v79 = v76[2];
        v78 = v76[3];
        if (v79 >= v78 >> 1)
        {
          sub_270499284(v78 > 1, v79 + 1, 1, v76);
          v77 = v112;
        }

        v80 = v128;
        sub_270436C28(v125, type metadata accessor for TextComponentModel);
        *(&v144[1] + 1) = v127;
        OUTLINED_FUNCTION_5_24();
        *&v144[2] = sub_270435EC4(&qword_2807D23B0, v81);
        __swift_allocate_boxed_opaque_existential_1Tm(v144);
        OUTLINED_FUNCTION_0_26();
        v82 = v126;
        sub_2704367E8(v126, v83);
        v77[2] = v79 + 1;
        sub_2703B291C(v144, &v77[5 * v79 + 4]);
        sub_270436C28(v82, type metadata accessor for TextComponentModel);
        v2 = v118;
        v58 = v123;
        v56 = v124;
        v59 = v122;
      }

      else
      {

        v77 = MEMORY[0x277D84F90];
        v80 = v128;
      }

      *&v144[0] = 0xD000000000000018;
      *(&v144[0] + 1) = v120;
      OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_29_4();
      OUTLINED_FUNCTION_3_14();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v137);

      v87 = sub_2705D58C4();
      *(v80 + 40) = 0u;
      *(v80 + 56) = 0u;
      *(v80 + 72) = 0;
      sub_2703B4B64(v144, v80 + 40);
      sub_2703C3A5C(v131, v56);
      v88 = (v80 + v2[7]);
      *v88 = v58;
      v88[1] = v59;
      *(v80 + v2[8]) = v87;
      *(v80 + v2[9]) = 0;
      *(v80 + v2[10]) = 1;
      *(v80 + v2[11]) = 0;
      v89 = v156;
      if (v156 == 254)
      {
        OUTLINED_FUNCTION_29_4();
      }

      else
      {
        v90 = *(&v154 + 1);
        v91 = v155;
        *v143 = v154;
        v143[2] = v155;
        LOBYTE(v143[3]) = v156;

        sub_2703AE9E8(v90, v91, v89);
        v92 = v119;
        sub_2703B3B04(v143, v144);
        if (v92)
        {

          memset(v144, 0, 40);
          OUTLINED_FUNCTION_34_4();
          v119 = 0;
        }

        else
        {
          v119 = 0;
          OUTLINED_FUNCTION_34_4();
        }

        v80 = v128;
      }

      sub_2703B4B64(v144, v80 + 40);
      OUTLINED_FUNCTION_8_21();
      sub_2704367E8(v80, v132);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = OUTLINED_FUNCTION_21_8();
        sub_270499284(v104, v105, v106, v77);
        v77 = v107;
      }

      v94 = v77[2];
      v93 = v77[3];
      if (v94 >= v93 >> 1)
      {
        v108 = OUTLINED_FUNCTION_12_14(v93);
        sub_270499284(v108, v109, v110, v77);
        v77 = v111;
      }

      *(&v144[1] + 1) = v2;
      *&v144[2] = sub_270435EC4(&qword_2807D0100, type metadata accessor for ButtonComponentModel);
      __swift_allocate_boxed_opaque_existential_1Tm(v144);
      OUTLINED_FUNCTION_8_21();
      v95 = v132;
      sub_2704367E8(v132, v96);
      v77[2] = v94 + 1;
      sub_2703B291C(v144, &v77[5 * v94 + 4]);
      sub_270436C28(v95, type metadata accessor for ButtonComponentModel);
      *v143 = v140;
      OUTLINED_FUNCTION_24_9();
      v97 = v133;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143[0] = v97;
      sub_2703BC598(v77, v144, isUniquelyReferenced_nonNull_native, v99, v100, v101, v102, v103, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
      sub_2704167C4(v153);
      sub_2703D7E30(v144);
      v133 = v143[0];
      sub_270436C28(v80, type metadata accessor for ButtonComponentModel);
      v57 = v139;
    }

    else
    {

      sub_2704167C4(v153);
    }

    sub_270436C28(v135, type metadata accessor for ArtworkCaptionGridCellComponentModel);
    v31 = v134 + 640;
    v30 = v57 + 1;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_2704328D4@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = &qword_2807CEDB0;
    v6 = &unk_2705DC8B8;
    v7 = &qword_2807D2238;
    v8 = &unk_2705EC5D0;
    v21 = result + 32;
    v22 = *(result + 16);
    while (1)
    {
      v9 = (v4 + 40 * v3);
      v10 = v9[3];
      v26 = *(v10 + 16);
      if (v26)
      {
        break;
      }

LABEL_13:
      ++v3;

      if (v3 == v2)
      {
        goto LABEL_14;
      }
    }

    v11 = v9[1];
    v24 = *v9;
    v25 = v3;
    v12 = v10 + 32;
    swift_bridgeObjectRetain_n();

    v13 = 0;
    while (v13 < *(v10 + 16))
    {
      sub_2703B4E54(v12, v33);
      sub_2703B4E54(v33, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(v7);
      if (swift_dynamicCast())
      {
        v14 = v10;
        v15 = v8;
        v16 = v7;
        v17 = v6;
        v18 = v5;
        sub_2703B291C(v27, v30);
        v19 = v31;
        v20 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        if ((*(v20 + 8))(v19, v20))
        {

          v29[0] = v24;
          v29[1] = v11;

          sub_2705D7CF4();
          __swift_project_boxed_opaque_existential_1(v33, v33[3]);
          sub_2705D67D4();

          __swift_destroy_boxed_opaque_existential_1(v30);
          return __swift_destroy_boxed_opaque_existential_1(v33);
        }

        __swift_destroy_boxed_opaque_existential_1(v30);
        v5 = v18;
        v6 = v17;
        v7 = v16;
        v8 = v15;
        v10 = v14;
      }

      else
      {
        v28 = 0;
        memset(v27, 0, sizeof(v27));
        sub_2703C2EFC(v27, &qword_2807D2230);
      }

      ++v13;
      result = __swift_destroy_boxed_opaque_existential_1(v33);
      v12 += 40;
      if (v26 == v13)
      {

        v4 = v21;
        v2 = v22;
        v3 = v25;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_270432BBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!*(a3 + 16) || (result = sub_2703D7390(result), (v7 & 1) == 0))
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_7;
  }

  v8 = *(*(a3 + 56) + 8 * result);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(a2 + 16))
  {
    v9 = (a2 + 40 * v8);
    v11 = v9[4];
    v10 = v9[5];
    v12 = v9[6];
    v13 = v9[7];
    v14 = v9[8];

LABEL_7:
    *a4 = v11;
    a4[1] = v10;
    a4[2] = v12;
    a4[3] = v13;
    a4[4] = v14;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_270432C7C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_2703D7390(result), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 8 * result);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(a2 + 16))
    {
      return sub_2703B4E54(a2 + 40 * v8 + 32, a4);
    }

    __break(1u);
  }

  else
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

unint64_t sub_270432D00@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a4 + 16) && (result = sub_2703D7318(result, a2), (v8 & 1) != 0))
  {
    v9 = *(*(a4 + 56) + 8 * result);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *(a3 + 16))
    {
      return sub_2703B4E54(a3 + 40 * v9 + 32, a5);
    }

    __break(1u);
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

void sub_270432D84(uint64_t a1, uint64_t a2)
{
  v5 = sub_2703D51F4(a1, v2[1]);
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    v8 = *v2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_270435E6C();
      v8 = v13;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < *(v8 + 16))
        {
          v9 = v8 + 40 * v7;
          v11 = *(a2 + 16);
          v18 = *a2;
          v10 = v18;
          v12 = *(a2 + 16);
          v16 = *(a2 + 24);
          v17 = v12;
          v15 = *(a2 + 32);
          *(v9 + 64) = v15;
          *(v9 + 32) = v10;
          *(v9 + 48) = v11;
          sub_270435FF0(&v18, v14);
          sub_2703CF590(&v17, v14, &qword_2807D1358);
          sub_2703CF590(&v16, v14, &qword_2807D1358);
          sub_2703CF590(&v15, v14, &qword_2807D2248);

          *v2 = v8;
          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  sub_2704356F8(a1, a2);
}

void sub_270432EF8()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_21_3();
  v5 = type metadata accessor for TextComponentModel();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_5();
  v73 = v7 - v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v67 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  v18 = v0[1];
  v19 = v0[10];
  v20 = v0[12];
  v71 = v0[11];
  v72 = v20;
  if (!v18)
  {
    v33 = MEMORY[0x277D84F90];
    if (!v19)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v21 = v0[3];
  v67 = v0[2];
  v68 = v19;
  v69 = v4;
  v70 = v2;
  v74 = v4;
  v75 = v2;

  MEMORY[0x2743A3A90](0x7265646165682DLL, 0xE700000000000000);
  sub_2705D7CF4();
  v22 = sub_2705D58C4();
  v23 = sub_2705D5D54();
  v24 = sub_2705D60A4();
  v26 = v25;
  sub_2705D6A54();
  OUTLINED_FUNCTION_3_14();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_20_7(&v17[*(v5 + 52)]);
  *(v17 + 5) = 0;
  v17[48] = 0;
  *(v17 + 7) = v22;
  *(v17 + 8) = 0;
  v17[72] = 1;
  *(v17 + 10) = v23;
  *(v17 + 11) = v24;
  *(v17 + 12) = v26;
  *(v17 + 13) = 0x4030000000000000;
  *(v17 + 56) = 256;
  v31 = &v17[*(v5 + 56)];
  *v31 = v67;
  *(v31 + 1) = v21;
  OUTLINED_FUNCTION_0_26();
  sub_2704367E8(v17, v15);

  sub_270499284(0, 1, 1, MEMORY[0x277D84F90]);
  v33 = v32;
  v34 = v32[3];
  if (v32[2] >= v34 >> 1)
  {
    v56 = OUTLINED_FUNCTION_12_14(v34);
    sub_270499284(v56, v57, v58, v33);
    v33 = v59;
  }

  OUTLINED_FUNCTION_11_17();
  sub_270436C28(v17, v35);
  v76 = v5;
  OUTLINED_FUNCTION_5_24();
  v77 = sub_270435EC4(v36, v37);
  __swift_allocate_boxed_opaque_existential_1Tm(&v74);
  OUTLINED_FUNCTION_0_26();
  sub_2704367E8(v15, v38);
  OUTLINED_FUNCTION_25_6();
  sub_270436C28(v15, v26);
  v4 = v69;
  v2 = v70;
  if (v68)
  {
LABEL_7:
    v74 = v4;
    v75 = v2;

    MEMORY[0x2743A3A90](0x646165686275732DLL, 0xEA00000000007265);
    sub_2705D7CF4();
    v39 = sub_2705D5894();
    v40 = sub_2705D5C74();
    v41 = sub_2705D60A4();
    v43 = v42;
    sub_2705D6A54();
    OUTLINED_FUNCTION_3_14();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    OUTLINED_FUNCTION_20_7(&v12[*(v5 + 52)]);
    *(v12 + 5) = 0;
    v12[48] = 0;
    *(v12 + 7) = v39;
    *(v12 + 8) = 0;
    v12[72] = 1;
    *(v12 + 10) = v40;
    *(v12 + 11) = v41;
    *(v12 + 12) = v43;
    *(v12 + 13) = 0x4030000000000000;
    *(v12 + 56) = 256;
    v48 = &v12[*(v5 + 56)];
    v49 = v72;
    *v48 = v71;
    *(v48 + 1) = v49;
    OUTLINED_FUNCTION_0_26();
    v50 = v73;
    sub_2704367E8(v12, v73);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = OUTLINED_FUNCTION_21_8();
      sub_270499284(v60, v61, v62, v33);
      v33 = v63;
    }

    v51 = v33[3];
    if (v33[2] >= v51 >> 1)
    {
      v64 = OUTLINED_FUNCTION_12_14(v51);
      sub_270499284(v64, v65, v66, v33);
    }

    OUTLINED_FUNCTION_11_17();
    sub_270436C28(v12, v52);
    v76 = v5;
    OUTLINED_FUNCTION_5_24();
    v77 = sub_270435EC4(v53, v54);
    __swift_allocate_boxed_opaque_existential_1Tm(&v74);
    OUTLINED_FUNCTION_0_26();
    sub_2704367E8(v50, v55);
    OUTLINED_FUNCTION_25_6();
    sub_270436C28(v50, v49);
  }

LABEL_12:
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_27043332C()
{
  memcpy(v4, (v0 + 16), 0x318uLL);
  sub_2704360B8(v4);

  sub_2703C2EFC(v0 + 832, &qword_2807D2220);
  v1 = OBJC_IVAR____TtCV19UnifiedMessagingKit16GridSelectorView7Content___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_270433418()
{
  result = sub_2705D4634();
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

double sub_2704334D4@<D0>(uint64_t a1@<X8>)
{
  sub_2703CF590(v1, v5, &qword_2807CF140);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_27043352C@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_30_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for ArtworkCaptionGridCellComponentModel(0);
  sub_2703CF590(v1 + *(v8 + 24), v7, &qword_2807CF130);
  return sub_2703CF3E8(v7, a1, &qword_2807CF190);
}

uint64_t sub_270433650()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_24();
  v3 = sub_270435EC4(v1, v2);
  OUTLINED_FUNCTION_4_9(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2705D45F4();

  return *(v0 + 224);
}

uint64_t sub_2704336D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ArtworkCaptionGridCellComponentModel(0);
  sub_270433730(a1);
  OUTLINED_FUNCTION_10_17();
  return sub_2704367E8(v2, a2);
}

uint64_t sub_270433730(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 224) == (result & 1))
  {
    *(v1 + 224) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x28223BE20](KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_270433B00(v4, sub_27043466C, v5, &OBJC_IVAR____TtC19UnifiedMessagingKit27ArtworkCaptionGridCellModel___observationRegistrar, &qword_2807D21D8, type metadata accessor for ArtworkCaptionGridCellModel);
  }

  return result;
}

uint64_t sub_270433818()
{
  OUTLINED_FUNCTION_31_4();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_24();
  v4 = sub_270435EC4(v2, v3);
  OUTLINED_FUNCTION_4_9(v4, v5, v6, v7, v8, v9, v10, v11, v17, v0);
  sub_2705D45F4();

  v12 = v0[2];
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[5];
  *v1 = v12;
  v1[1] = v13;
  v1[2] = v14;
  v1[3] = v15;
  return sub_2703C3A18(v12, v13);
}

double sub_2704338B0@<D0>(_OWORD *a1@<X8>)
{
  sub_270433818();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_270433938()
{
  OUTLINED_FUNCTION_26_1();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A18(v6, v7);
  v8 = OUTLINED_FUNCTION_1_11();
  v12 = sub_2703CBC68(v8, v9, v10, v11, v2, v3, v4, v5);
  v13 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A5C(v13, v14);
  if (v12)
  {
    KeyPath = swift_getKeyPath();
    v16 = MEMORY[0x28223BE20](KeyPath);
    v20[2] = v0;
    v20[3] = v2;
    v20[4] = v3;
    v20[5] = v4;
    v20[6] = v5;
    sub_270433B00(v16, sub_270434684, v20, &OBJC_IVAR____TtC19UnifiedMessagingKit27ArtworkCaptionGridCellModel___observationRegistrar, &qword_2807D21D8, type metadata accessor for ArtworkCaptionGridCellModel);
    sub_2703C3A5C(v2, v3);

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_26_6();
    v0[2] = v2;
    v0[3] = v3;
    v0[4] = v4;
    v0[5] = v5;
    OUTLINED_FUNCTION_25_1();

    sub_2703C3A5C(v17, v18);
  }
}

uint64_t sub_270433A94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[2];
  v6 = a1[3];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
  sub_2703C3A18(a2, a3);
  return sub_2703C3A5C(v5, v6);
}

uint64_t sub_270433B90()
{
  OUTLINED_FUNCTION_31_4();
  swift_getKeyPath();
  __dst[0] = v0;
  OUTLINED_FUNCTION_4_24();
  sub_270435EC4(v2, v3);
  sub_2705D45F4();

  memcpy(__dst, (v0 + 48), sizeof(__dst));
  memcpy(v1, (v0 + 48), 0xB0uLL);
  return sub_2703CF590(__dst, &v5, &qword_2807D22D0);
}

uint64_t sub_270433CA4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_2703CF590(__dst, &v3, &qword_2807D22D0);
  return sub_270433D10(__src);
}

uint64_t sub_270433D10(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_36_2(KeyPath, sub_270436854, v2, &OBJC_IVAR____TtC19UnifiedMessagingKit27ArtworkCaptionGridCellModel___observationRegistrar, &qword_2807D21D8, type metadata accessor for ArtworkCaptionGridCellModel, &unk_2705EC49C, v3, v5);
  sub_2703C2EFC(__dst, &qword_2807D22D0);
}

uint64_t sub_270433DD4(uint64_t a1, const void *a2)
{
  memcpy(__dst, (a1 + 48), sizeof(__dst));
  memcpy((a1 + 48), a2, 0xB0uLL);
  sub_2703CF590(a2, &v5, &qword_2807D22D0);
  return sub_2703C2EFC(__dst, &qword_2807D22D0);
}

uint64_t sub_270433E6C()
{
  if ((sub_270433650() & 1) == 0)
  {
    if (qword_2807CE7A8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_2807CE790 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
}

uint64_t sub_270433F10(_OWORD *a1, const void *a2, char a3)
{
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  sub_2704369CC(__src);
  memcpy((v3 + 48), __src, 0xB0uLL);
  sub_2705D4624();
  v7 = OUTLINED_FUNCTION_26_6();
  sub_2703C3A5C(v7, v8);
  v9 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v9;
  memcpy(__dst, (v3 + 48), 0xB0uLL);
  sub_2703C2EFC(__dst, &qword_2807D22D0);
  memcpy((v3 + 48), a2, 0xB0uLL);
  *(v3 + 224) = a3;
  return v3;
}

uint64_t sub_270433FC8()
{
  v1 = OUTLINED_FUNCTION_26_6();
  sub_2703C3A5C(v1, v2);
  memcpy(v6, (v0 + 48), sizeof(v6));
  sub_2703C2EFC(v6, &qword_2807D22D0);
  v3 = OBJC_IVAR____TtC19UnifiedMessagingKit27ArtworkCaptionGridCellModel___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_270434070(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2704340F4()
{
  result = sub_2705D4634();
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

uint64_t sub_2704341A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2704341E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270434250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 816))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 792);
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

uint64_t sub_270434290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 808) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 816) = 1;
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
      *(result + 792) = (a2 - 1);
      return result;
    }

    *(result + 816) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2704343B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2704343F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_27043446C()
{
  sub_2705D7D04();

  strcpy(v5, "{\n  caption: ");
  HIWORD(v5[1]) = -4864;
  sub_270433818();

  sub_2703C3A5C(0, 0xE000000000000000);
  MEMORY[0x2743A3A90]();

  MEMORY[0x2743A3A90](0x6C6553736920200ALL, 0xEF203A6465746365);
  v0 = sub_270433650();
  v1 = (v0 & 1) == 0;
  if (v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x2743A3A90](v2, v3);

  MEMORY[0x2743A3A90](32010, 0xE200000000000000);
  return v5[0];
}

uint64_t sub_270434614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270433650();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2704346A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ArtworkCaptionGridCellComponentModel(0) + 28));
}

uint64_t sub_2704346F4@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, 0xB0uLL);
  v3 = sub_2705D5CD4();
  v4 = sub_2705D60A4();
  v6 = v5;
  v7 = swift_allocObject();
  memcpy((v7 + 16), v1, 0xB0uLL);
  *a1 = v3;
  a1[1] = sub_270436F34;
  a1[2] = v7;
  a1[3] = v4;
  a1[4] = v6;
  return sub_270436F3C(__dst, v9);
}

void *sub_2704347A0@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2705D6734();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  *v10 = sub_2705D53C4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  memcpy(v23, a1, 0xB0uLL);
  if (sub_270436F74(v23) == 1)
  {
    sub_2705D6724();
  }

  else
  {
    v11 = *&v23[7];
    v12 = *&v23[8];
    v20 = v23[9];
    v21 = a2;
    v13 = v23[10];
    type metadata accessor for AMSMediaArtworkColorKind(0);
    type metadata accessor for CGColor(0);
    sub_270435EC4(&qword_2807CEB80, type metadata accessor for AMSMediaArtworkColorKind);

    v14 = sub_2705D7494();
    v15 = v13;
    a2 = v21;
    v16 = sub_27047D104(v20, v15, v14, v12, v11);
    v22[3] = &type metadata for CoreMediaArtworkSource;
    v22[4] = sub_270436F8C();
    v22[0] = v16;
    sub_2705D6744();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23C8);
  sub_2705D4EB4();
  sub_2705D6714();
  (*(v5 + 8))(v7, v4);
  sub_2705D4EB4();
  sub_2705D4EB4();
  sub_2705D60A4();
  sub_2705D5094();
  sub_2703CF3E8(v10, a2, &qword_2807D23C0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D23D0);
  return memcpy((a2 + *(v17 + 36)), v22, 0x70uLL);
}

void *sub_270434B10@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2705D53C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2318);
  return sub_270434B68(a1 + *(v2 + 44));
}

void *sub_270434B68@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v52 = sub_2705D6024();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2320) - 8;
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2328);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2330);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v53 = sub_2705D5CD4();
  v11 = sub_2705D60A4();
  v13 = v12;
  sub_270435140(v57);
  memcpy(v59, v57, 0x2B8uLL);
  v59[87] = v11;
  v59[88] = v13;
  memcpy(v55, v59, sizeof(v55));
  memcpy(v60, v57, sizeof(v60));
  v61 = v11;
  v62 = v13;
  sub_2703CF590(v59, v56, &qword_2807D2338);
  sub_2703C2EFC(v60, &qword_2807D2338);
  sub_2705D60A4();
  sub_2705D5094();
  v58 = 0;
  v14 = *(sub_2705D5064() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_2705D5344();
  (*(*(v16 - 8) + 104))(&v4[v14], v15, v16);
  __asm { FMOV            V0.2D, #10.0 }

  *v4 = _Q0;
  v49 = v2;
  sub_2705D6004();
  *&v4[*(v2 + 64)] = 256;
  v22 = sub_270433E6C();
  sub_270433650();
  sub_2705D4DC4();
  sub_2704367E8(v4, v7);
  v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C0) + 36)];
  v24 = *&v57[16];
  *v23 = *v57;
  *(v23 + 1) = v24;
  *(v23 + 4) = *&v57[32];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C8);
  *&v7[*(v25 + 52)] = v22;
  *&v7[*(v25 + 56)] = 256;
  v26 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2340) + 36)];
  sub_2703CF590(v4, v26, &qword_2807D2320);
  v27 = sub_2705D60A4();
  v29 = v28;
  sub_2703C2EFC(v4, &qword_2807D2320);
  v30 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2348) + 36));
  *v30 = v27;
  v30[1] = v29;
  v31 = v51;
  sub_2705D6004();
  sub_2704367E8(v7, v10);
  v32 = v49;
  v33 = v50;
  v34 = v52;
  (*(v50 + 16))(&v10[*(v49 + 60)], v31, v52);
  *&v10[*(v32 + 64)] = 256;
  v48 = v10;
  v35 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2350) + 36)];
  sub_2703CF590(v7, v35, &qword_2807D2328);
  v36 = sub_2705D60A4();
  v38 = v37;
  (*(v33 + 8))(v31, v34);
  sub_2703C2EFC(v7, &qword_2807D2328);
  v39 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2358) + 36));
  *v39 = v36;
  v39[1] = v38;
  v40 = sub_2705D60A4();
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2360);
  v44 = v54;
  v45 = v54 + *(v43 + 36);
  sub_2703CF3E8(v48, v45, &qword_2807D2330);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2368) + 36));
  *v46 = v40;
  v46[1] = v42;
  *v44 = v53;
  memcpy((v44 + 8), v55, 0x2C8uLL);
  result = memcpy((v44 + 720), v56, 0x70uLL);
  *(v44 + 832) = 0x3FF0000000000000;
  *(v44 + 840) = 0;
  return result;
}

double sub_270435140@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2705D53C4();
  v35 = 1;
  sub_270435348(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v39, __src, sizeof(v39));
  sub_2703CF590(__dst, v32, &qword_2807D2370);
  sub_2703C2EFC(v39, &qword_2807D2370);
  memcpy(&v34[7], __dst, 0x1A0uLL);
  v3 = v35;
  sub_2705D60A4();
  sub_2705D5094();
  v4 = sub_2705D56B4();
  sub_2705D4D34();
  v30 = v6;
  v31 = v5;
  v28 = v8;
  v29 = v7;
  v36 = 0;
  v9 = sub_2705D56D4();
  sub_2705D4D34();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v37 = 0;
  v18 = sub_2705D56E4();
  sub_2705D4D34();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  memcpy((a1 + 17), v34, 0x1A7uLL);
  memcpy((a1 + 440), __src, 0x70uLL);
  *(a1 + 552) = v4;
  *(a1 + 560) = v31;
  *(a1 + 568) = v30;
  result = v28;
  *(a1 + 576) = v29;
  *(a1 + 584) = v28;
  *(a1 + 592) = 0;
  *(a1 + 600) = v9;
  *(a1 + 608) = v11;
  *(a1 + 616) = v13;
  *(a1 + 624) = v15;
  *(a1 + 632) = v17;
  *(a1 + 640) = 0;
  *(a1 + 648) = v18;
  *(a1 + 656) = v20;
  *(a1 + 664) = v22;
  *(a1 + 672) = v24;
  *(a1 + 680) = v26;
  *(a1 + 688) = 0;
  return result;
}

uint64_t sub_270435348@<X0>(void *a1@<X8>)
{
  sub_270433B90();
  sub_2705D60A4();
  sub_2705D5094();
  __src[288] = 0;
  sub_270433818();
  if (v39[1])
  {
    __dst[1] = v39[3];
    sub_2703C2F54();

    v1 = sub_2705D5944();
    v3 = v2;
    v5 = v4;
    sub_2703C3A5C(v39[0], v39[1]);
    sub_2705D5894();
    v6 = sub_2705D5914();
    v8 = v7;
    v10 = v9;

    sub_2703CEDB0(v1, v3, v5 & 1);

    __dst[0] = sub_2705D5D54();
    v11 = sub_2705D58F4();
    v32 = v12;
    v33 = v11;
    v14 = v13;
    v31 = v15;
    sub_2703CEDB0(v6, v8, v10 & 1);

    KeyPath = swift_getKeyPath();
    v16 = sub_2705D56D4();
    sub_2705D4D34();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LOBYTE(__dst[0]) = v14 & 1;
    LOBYTE(v38[0]) = 0;
    LOBYTE(v37[0]) = 0;
    v25 = v14 & 1;
    v26 = v16;
    v29 = 0x3FF0000000000000;
    v27 = 2;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    KeyPath = 0;
    v31 = 0;
    v27 = 0;
    v29 = 0;
    v26 = 0;
    v25 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
  }

  memcpy(__dst, __src, 0x120uLL);
  __dst[36] = 0x3FF0000000000000;
  LOWORD(__dst[37]) = 0;
  memcpy(v35, __dst, 0x12AuLL);
  v37[0] = v33;
  v37[1] = v32;
  v37[2] = v25;
  v37[3] = v31;
  v37[4] = KeyPath;
  v37[5] = v27;
  v37[6] = 0;
  v37[7] = v26;
  v37[8] = v18;
  v37[9] = v20;
  v37[10] = v22;
  v37[11] = v24;
  v37[12] = 0;
  v37[13] = v29;
  memcpy(&v35[304], v37, 0x70uLL);
  memcpy(a1, v35, 0x1A0uLL);
  v38[0] = v33;
  v38[1] = v32;
  v38[2] = v25;
  v38[3] = v31;
  v38[4] = KeyPath;
  v38[5] = v27;
  v38[6] = 0;
  v38[7] = v26;
  v38[8] = v18;
  v38[9] = v20;
  v38[10] = v22;
  v38[11] = v24;
  v38[12] = 0;
  v38[13] = v29;
  sub_2703CF590(__dst, v39, &qword_2807D2378);
  sub_2703CF590(v37, v39, &qword_2807D2380);
  sub_2703C2EFC(v38, &qword_2807D2380);
  memcpy(v39, __src, 0x120uLL);
  v39[36] = 0x3FF0000000000000;
  v40 = 0;
  return sub_2703C2EFC(v39, &qword_2807D2378);
}

uint64_t sub_2704356F8(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  sub_2703BD1EC(a1, v27);
  v5 = a2[1];
  v34 = *a2;
  v6 = *(a2 + 2);
  v32 = *(a2 + 3);
  v33 = v6;
  v31 = *(a2 + 4);
  v28 = v34;
  v29 = v5;
  v30 = v31;
  sub_2703CF590(v27, v23, &qword_2807D2250);
  v7 = v24;
  v19 = v26;
  v20 = v25;
  sub_270435FF0(&v34, v22);
  sub_2703CF590(&v33, v22, &qword_2807D1358);
  sub_2703CF590(&v32, v22, &qword_2807D1358);
  sub_2703CF590(&v31, v22, &qword_2807D2248);
  sub_2704E8CCC();
  v8 = *(*v3 + 16);
  sub_2704E8D70(v8);
  v9 = *v3;
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 40 * v8;
  *(v10 + 32) = v7;
  *(v10 + 40) = v20;
  *(v10 + 56) = v19;
  *v3 = v9;
  sub_2703D7E30(v23);
  sub_2703CF590(v27, v23, &qword_2807D2250);
  v11 = *(v9 + 16) - 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2703BC4CC(v11, v23, isUniquelyReferenced_nonNull_native, v13, v14, v15, v16, v17, v19, SBYTE8(v19), v20, *(&v20 + 1), v21, v3[1], v22[1], v23[0], v23[1], v23[2], v23[3], v23[4], v24, v25, *(&v25 + 1), v26);
  v3[1] = v22[0];
  sub_2703C2EFC(v27, &qword_2807D2250);
  sub_2703D7E30(v23);
}

uint64_t objectdestroyTm_2()
{

  if (v0[9] >> 8 != 0xFFFFFFFFLL || v0[20] >= 0x100uLL)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4940(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  if (v0[53] >> 8 != 0xFFFFFFFFLL || (v0[64] & 0x1FFFFFFFFFFFFF00) != 0)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4D28(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  if (v0[93])
  {
  }

  if (v0[97])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_270435B40()
{
  swift_unknownObjectRelease();

  if (v0[11] >> 8 != 0xFFFFFFFFLL || v0[22] >= 0x100uLL)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4940(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  if (v0[55] >> 8 != 0xFFFFFFFFLL || (v0[66] & 0x1FFFFFFFFFFFFF00) != 0)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4D28(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  if (v0[95])
  {
  }

  if (v0[99])
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 106));
  __swift_destroy_boxed_opaque_existential_1((v0 + 111));

  return swift_deallocObject();
}

uint64_t sub_270435D48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2703F6C98;

  return sub_27043066C(a1, v4, v5, v1 + 32, v1 + 848);
}

uint64_t sub_270435E18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2705D51B4();
  *a1 = result;
  return result;
}

uint64_t sub_270435E94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27042EC60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_270435EC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_270435F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2220);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27043606C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704313C4();
  *a1 = result;
  return result;
}

uint64_t sub_27043611C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2705D51B4();
  *a1 = result;
  return result;
}

uint64_t sub_270436214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2704362BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_270436348()
{
  sub_2703C1B58();
  if (v0 <= 0x3F)
  {
    sub_2703D0264(319, &qword_2807CF198, &qword_2807D65D0, &unk_2705DC050, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2703D0264(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ArtworkCaptionGridCellModel(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_270436454()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D21F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D21E8);
  sub_2705D6914();
  OUTLINED_FUNCTION_9_18();
  sub_2703AFBC8(v0, &qword_2807D21E8);
  OUTLINED_FUNCTION_9_11();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2704365B8()
{
  result = qword_2807D22F0;
  if (!qword_2807D22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D22F0);
  }

  return result;
}

unint64_t sub_270436610()
{
  result = qword_2807D22F8;
  if (!qword_2807D22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D22F8);
  }

  return result;
}

unint64_t sub_270436710()
{
  result = qword_2807D2308;
  if (!qword_2807D2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2308);
  }

  return result;
}

unint64_t sub_270436778()
{
  result = qword_2807D2310;
  if (!qword_2807D2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2310);
  }

  return result;
}

uint64_t sub_2704367E8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_3();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_270436870(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 176))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 80);
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

uint64_t sub_2704368C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

uint64_t sub_2704369B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2704369D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v34[3] = type metadata accessor for ArtworkCaptionGridCellComponentModel(0);
  v34[4] = sub_270435EC4(&qword_2807D2300, type metadata accessor for ArtworkCaptionGridCellComponentModel);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v34);
  sub_2704367E8(a2, boxed_opaque_existential_1Tm);
  sub_2703BD1EC(a1, v32);
  sub_2703B4E54(v34, &v33);
  sub_2703CF590(v32, v24, &qword_2807D23B8);
  sub_2704E8CB4();
  v7 = *(*a3 + 16);
  sub_2704E8D58(v7);
  v8 = v30;
  v9 = v31;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v13 + 16))(v12);
  sub_2704743B4(v7, v12, a3, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v14 = *a3;
  sub_2703D7E30(v24);
  sub_2703CF590(v32, v24, &qword_2807D23B8);
  v15 = *(v14 + 16) - 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2703BC4CC(v15, v24, isUniquelyReferenced_nonNull_native, v17, v18, v19, v20, v21, a3[1], v24[0], v25, v26, v27, v28, v29[0], v29[1], v29[2], v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4]);
  a3[1] = v23;
  sub_2703C2EFC(v32, &qword_2807D23B8);
  sub_2703D7E30(v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_270436C28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

uint64_t sub_270436EA4()
{
  if (*(v0 + 96))
  {

    v1 = *(v0 + 64);
    if (v1 != 255)
    {
      sub_2703B8738(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1 & 1);
    }

    v2 = *(v0 + 152);
    if (v2 != 255)
    {
      sub_2703B8738(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v2 & 1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_270436F74(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_270436F8C()
{
  result = qword_2807D23D8;
  if (!qword_2807D23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D23D8);
  }

  return result;
}

unint64_t sub_270436FE4()
{
  result = qword_2807D23E0;
  if (!qword_2807D23E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D23E8);
    sub_2703AFBC8(&qword_2807D23F0, &qword_2807D23F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D23E0);
  }

  return result;
}

unint64_t sub_27043709C()
{
  result = qword_2807D2400;
  if (!qword_2807D2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2400);
  }

  return result;
}

unint64_t sub_2704370F0()
{
  result = qword_2807D2408;
  if (!qword_2807D2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2408);
  }

  return result;
}

unint64_t sub_270437144()
{
  result = qword_2807D2410;
  if (!qword_2807D2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2410);
  }

  return result;
}

unint64_t sub_270437198()
{
  result = qword_2807D2418;
  if (!qword_2807D2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2418);
  }

  return result;
}

unint64_t sub_2704371EC()
{
  result = qword_2807D2420;
  if (!qword_2807D2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2420);
  }

  return result;
}

unint64_t sub_270437240()
{
  result = qword_2807D2428;
  if (!qword_2807D2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2428);
  }

  return result;
}

unint64_t sub_270437294()
{
  result = qword_2807D2430;
  if (!qword_2807D2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2430);
  }

  return result;
}

unint64_t sub_2704372E8()
{
  result = qword_2807D2438;
  if (!qword_2807D2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2438);
  }

  return result;
}

unint64_t sub_27043733C()
{
  result = qword_2807D2440;
  if (!qword_2807D2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2440);
  }

  return result;
}

double OUTLINED_FUNCTION_20_7@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return sub_2705D7CF4();
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  *(v2 + 16) = v0;

  return sub_2703B291C((v3 - 120), v2 + 40 * v1 + 32);
}

double OUTLINED_FUNCTION_29_4()
{
  *(v0 + 1136) = 0;
  result = 0.0;
  *(v0 + 1120) = 0u;
  *(v0 + 1104) = 0u;
  return result;
}

void OUTLINED_FUNCTION_34_4()
{

  sub_2703AFC10(v2, v3, v1, v0);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_270433B00(a1, a2, &a9, a4, a5, a6);
}

void *HalfImageModel.init(additionalActionElements:asset:branding:subtitle:title:primaryActionElement:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, const void *a3@<X1>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, const void *a6@<X5>, void *a7@<X8>)
{
  v13 = a7 + 45;
  memcpy(a7 + 53, __src, 0x160uLL);
  *a7 = a2;
  memcpy(a7 + 1, a3, 0x160uLL);
  v14 = a5[1];
  v13[2] = *a5;
  v13[3] = v14;
  v15 = a4[1];
  *v13 = *a4;
  v13[1] = v15;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  sub_2703B2934(v17, &qword_2807D2450);
  return memcpy(a7 + 97, a6, 0x78uLL);
}

uint64_t sub_27043764C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000270613D50 == a2;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E69646E617262 && a2 == 0xE800000000000000;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000014 && 0x8000000270613D70 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_2705D8134();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_270437838(char a1)
{
  result = 0x7465737361;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x676E69646E617262;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_27043790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043764C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270437934(uint64_t a1)
{
  v2 = sub_270437E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270437970(uint64_t a1)
{
  v2 = sub_270437E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HalfImageModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2458);
  OUTLINED_FUNCTION_5_25();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = *v1;
  memcpy(v34, v1 + 1, sizeof(v34));
  v10 = v1[45];
  v25 = v1[46];
  v26 = v10;
  v11 = v1[47];
  v23 = v1[48];
  v24 = v11;
  v12 = v1[50];
  v19 = v1[49];
  v20 = v12;
  v13 = v1[51];
  v21 = v1[52];
  v22 = v13;
  memcpy(v35, v1 + 53, sizeof(v35));
  memcpy(__dst, v1 + 97, 0x78uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270437E18();

  sub_2705D84C4();
  v33[0] = v9;
  v32[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2468);
  sub_27043852C(&qword_2807D2470, sub_2703B15B8);
  v14 = v27;
  sub_2705D8024();
  if (v14)
  {
  }

  else
  {
    v16 = v25;
    v15 = v26;

    memcpy(v33, v34, sizeof(v33));
    __dst[143] = 1;
    sub_2703CAAEC(v34, v32, &qword_2807D2478);
    sub_2703BAED8();
    OUTLINED_FUNCTION_6_22();
    memcpy(v32, v33, sizeof(v32));
    sub_2703B2934(v32, &qword_2807D2478);
    v31[0] = v15;
    v31[1] = v16;
    v31[2] = v24;
    v31[3] = v23;
    v30[0] = 2;
    sub_2703C3A18(v15, v16);
    sub_2703C3970();
    OUTLINED_FUNCTION_4_25();
    OUTLINED_FUNCTION_1_30();
    v31[0] = v19;
    v31[1] = v20;
    v31[2] = v22;
    v31[3] = v21;
    v30[0] = 3;
    sub_2703C3A18(v19, v20);
    OUTLINED_FUNCTION_4_25();
    OUTLINED_FUNCTION_1_30();
    memcpy(v31, v35, sizeof(v31));
    __dst[142] = 4;
    sub_2703CAAEC(v35, v30, &qword_2807D2480);
    sub_2703BE9D4();
    OUTLINED_FUNCTION_6_22();
    memcpy(v30, v31, sizeof(v30));
    sub_2703B2934(v30, &qword_2807D2480);
    memcpy(v29, __dst, sizeof(v29));
    __dst[141] = 5;
    sub_2703CAAEC(__dst, v28, &qword_2807D2450);
    sub_2703B15B8();
    OUTLINED_FUNCTION_6_22();
    memcpy(v28, v29, sizeof(v28));
    sub_2703B2934(v28, &qword_2807D2450);
  }

  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_270437E18()
{
  result = qword_2807D2460;
  if (!qword_2807D2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2460);
  }

  return result;
}

uint64_t HalfImageModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2488);
  OUTLINED_FUNCTION_5_25();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270437E18();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    memset(v36, 0, 120);
    return sub_2703B2934(v36, &qword_2807D2450);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2468);
    sub_27043852C(&qword_2807D2490, sub_2703B1564);
    sub_2705D7F44();
    v6 = v36[0];
    v71[375] = 1;
    sub_2703BAE84();
    OUTLINED_FUNCTION_2_25();
    memcpy(v71, v69, 0x160uLL);
    sub_2703C3F58();
    OUTLINED_FUNCTION_3_27();
    v30 = v36[0];
    v31 = v36[1];
    v32 = v36[2];
    v26 = v36[3];
    LOBYTE(v35[0]) = 3;
    OUTLINED_FUNCTION_3_27();
    v7 = v36[0];
    v28 = v36[1];
    v29 = v36[2];
    v27 = v36[3];
    v71[374] = 4;
    sub_2703BE980();
    OUTLINED_FUNCTION_2_25();
    memcpy(v70, v68, sizeof(v70));
    v71[373] = 5;
    sub_2703B1564();
    OUTLINED_FUNCTION_2_25();
    v8 = OUTLINED_FUNCTION_0_27();
    v9(v8);
    v11 = v53;
    v24 = v55;
    v25 = v54;
    v22 = v57;
    v23 = v56;
    v20 = v59;
    v21 = v58;
    v18 = v61;
    v19 = v60;
    v16 = v63;
    v17 = v62;
    v14 = v65;
    v15 = v64;
    v12 = v67;
    v13 = v66;
    memset(v33, 0, sizeof(v33));
    v34 = 0;
    sub_2703B2934(v33, &qword_2807D2450);
    v35[0] = v6;
    memcpy(&v35[1], v71, 0x160uLL);
    v35[45] = v30;
    v35[46] = v31;
    v35[47] = v32;
    v35[48] = v26;
    v35[49] = v7;
    v35[50] = v28;
    v35[51] = v29;
    v35[52] = v27;
    memcpy(&v35[53], v70, 0x160uLL);
    v35[97] = v11;
    v35[98] = v25;
    v35[99] = v24;
    v35[100] = v23;
    v35[101] = v22;
    v35[102] = v21;
    v35[103] = v20;
    v35[104] = v19;
    v35[105] = v18;
    v35[106] = v17;
    v35[107] = v16;
    v35[108] = v15;
    v35[109] = v14;
    v35[110] = v13;
    v35[111] = v12;
    memcpy(a2, v35, 0x380uLL);
    sub_2704385A4(v35, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36[0] = v6;
    memcpy(&v36[1], v71, 0x160uLL);
    v36[45] = v30;
    v36[46] = v31;
    v36[47] = v32;
    v36[48] = v26;
    v36[49] = v7;
    v36[50] = v28;
    v36[51] = v29;
    v36[52] = v27;
    memcpy(v37, v70, sizeof(v37));
    v38 = v11;
    v39 = v25;
    v40 = v24;
    v41 = v23;
    v42 = v22;
    v43 = v21;
    v44 = v20;
    v45 = v19;
    v46 = v18;
    v47 = v17;
    v48 = v16;
    v49 = v15;
    v50 = v14;
    v51 = v13;
    v52 = v12;
    return sub_2704385DC(v36);
  }
}

uint64_t sub_27043852C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2468);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit17ActionableElementVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27043865C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 896))
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

uint64_t sub_2704386B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 888) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 896) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 896) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HalfImageModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x2704388CCLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270438908()
{
  result = qword_2807D2498;
  if (!qword_2807D2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2498);
  }

  return result;
}

unint64_t sub_270438960()
{
  result = qword_2807D24A0;
  if (!qword_2807D24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D24A0);
  }

  return result;
}

unint64_t sub_2704389B8()
{
  result = qword_2807D24A8;
  if (!qword_2807D24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D24A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_30()
{
  v2 = *(v0 + 672);
  v3 = *(v0 + 680);

  return sub_2703C3A5C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_2_25()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_3_27()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return sub_2705D8024();
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return sub_2705D8024();
}

uint64_t sub_270438AF8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B0);
  OUTLINED_FUNCTION_46_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D47F0);
  OUTLINED_FUNCTION_46_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8);
  OUTLINED_FUNCTION_46_0();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_270438C68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B0);
  OUTLINED_FUNCTION_46_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D47F0);
    OUTLINED_FUNCTION_46_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24B8);
      OUTLINED_FUNCTION_46_0();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for HalfImageView()
{
  result = qword_2807D24C0;
  if (!qword_2807D24C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270438E00()
{
  sub_270438EF8(319, &qword_2807D24D0, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_270438EF8(319, &qword_2807D4810, MEMORY[0x277CDD848]);
    if (v1 <= 0x3F)
    {
      sub_270438EF8(319, &qword_2807D24D8, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_270438EF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2705D4D94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_270438F68@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_2703CF590(v3, &v15 - v10, &qword_2807D24E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4D84();
    OUTLINED_FUNCTION_14();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    sub_2705D7A84();
    v14 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v2, v5);
  }
}

uint64_t sub_27043913C@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_2705D5254();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for HalfImageView();
  sub_2703CF590(v1 + *(v11 + 24), v10, &qword_2807D24F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_14();
    return (*(v12 + 32))(a1, v10);
  }

  else
  {
    sub_2705D7A84();
    v14 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v2, v4);
  }
}

uint64_t sub_270439318@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = type metadata accessor for HalfImageView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_27043C664(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_27043C6CC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_27043C730;
  a1[1] = v7;
  return result;
}

uint64_t sub_27043940C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D21E0);
  v5 = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v38 - v7;
  v8 = type metadata accessor for HalfImageView();
  v9 = v8 - 8;
  v40 = *(v8 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_2705D4ED4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = *(v9 + 36);
  v39 = a2;
  memcpy(v51, (a2 + v14), 0x380uLL);
  (*(v12 + 16))(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  sub_27043C664(a2, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = *(v40 + 80);
  v17 = (v13 + v16 + v15) & ~v16;
  v18 = swift_allocObject();
  v19 = *(v12 + 32);
  v20 = v18 + v15;
  v21 = v18;
  v40 = v18;
  v19(v20, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_27043C6CC(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v17);
  sub_27043C664(v39, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (v16 + 16) & ~v16;
  v23 = swift_allocObject();
  sub_27043C6CC(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F8);
  v25 = v41;
  memcpy((v41 + v24[18]), v51, 0x380uLL);
  v45 = 0;
  v46 = 0;
  sub_2704385A4(v51, &v48);
  type metadata accessor for CGSize(0);
  sub_2705D5E44();
  v26 = v49;
  *v25 = v48;
  *(v25 + 16) = v26;
  v27 = sub_2705D4F94();
  v28 = v42;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v27);
  sub_2703CF590(v28, v43, &qword_2807D21E0);
  sub_2705D5E44();
  sub_2703C1634(v28, &qword_2807D21E0);
  v29 = v25 + v24[16];
  v45 = 0;
  v46 = 0;
  v47 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D13D0);
  sub_2705D5E44();
  v30 = v49;
  v31 = v50;
  *v29 = v48;
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  v32 = v25 + v24[17];
  LOBYTE(v45) = 0;
  result = sub_2705D5E44();
  v34 = *(&v48 + 1);
  *v32 = v48;
  *(v32 + 8) = v34;
  *(v25 + v24[19]) = 0;
  v35 = (v25 + v24[20]);
  v36 = v40;
  *v35 = sub_27043CBB4;
  v35[1] = v36;
  v37 = (v25 + v24[21]);
  *v37 = sub_27043D034;
  v37[1] = v23;
  return result;
}

uint64_t sub_27043984C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v147 = a2;
  v148 = a3;
  v142 = a4;
  v5 = sub_2705D5004();
  v144 = *(v5 - 8);
  v145 = v5;
  MEMORY[0x28223BE20](v5);
  v143 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0F0);
  MEMORY[0x28223BE20](v7 - 8);
  v134 = &v119 - v8;
  v135 = sub_2705D58D4();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v132 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2705D4D84();
  v122 = *(v10 - 8);
  v123 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v121 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v119 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4280);
  MEMORY[0x28223BE20](v14 - 8);
  v124 = &v119 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2588);
  v129 = *(v16 - 8);
  v130 = v16;
  MEMORY[0x28223BE20](v16);
  v128 = &v119 - v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2590);
  v18 = MEMORY[0x28223BE20](v139);
  v127 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v119 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2598);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v141 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v119 - v24;
  memcpy(v158, a1, sizeof(v158));
  v26 = a1[46];
  v27 = a1[47];
  v28 = a1[48];
  v29 = a1[49];
  v30 = a1[50];
  v31 = a1[51];
  v32 = a1[52];
  memcpy(v166, a1 + 53, sizeof(v166));
  sub_2705D4EB4();
  v140 = v26;
  v159 = v26;
  v136 = v28;
  v137 = v27;
  v160 = v27;
  v161 = v28;
  v162 = v29;
  v138 = v30;
  v163 = v30;
  v131 = v31;
  v164 = v31;
  v125 = v32;
  v165 = v32;
  v33 = sub_27043A530(v158);
  v146 = v25;
  if (v34)
  {
    v119 = v33;
    v35 = v120;
    sub_270438F68(v120);
    v37 = v121;
    v36 = v122;
    v38 = v123;
    (*(v122 + 104))(v121, *MEMORY[0x277CDF3C0], v123);
    sub_2705D4D74();
    v39 = *(v36 + 8);
    v39(v37, v38);
    v39(v35, v38);

    v25 = v146;
    sub_2705D4454();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25B0);
    sub_27043D558();
    v40 = v128;
    sub_2705D4CE4();
    sub_2705D4EB4();
    sub_2705D4EB4();
    sub_2705D6084();
    sub_2705D4E64();
    v41 = v127;
    (*(v129 + 32))(v127, v40, v130);
    v42 = v139;
    v43 = &v41[*(v139 + 36)];
    v44 = v168;
    *v43 = v167;
    *(v43 + 1) = v44;
    *(v43 + 2) = v169;
    v45 = v41;
    v46 = v126;
    sub_2703CF3E8(v45, v126, &qword_2807D2590);
    sub_2703CF3E8(v46, v25, &qword_2807D2590);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v42 = v139;
  }

  __swift_storeEnumTagSinglePayload(v25, v47, 1, v42);
  sub_2705D4EB4();
  sub_27043B3D8(v48);
  v49 = MEMORY[0x277D84F90];
  if (v138)
  {
    v50 = v125;

    LODWORD(v147) = sub_2705D56D4();
    sub_2705D4D34();
    v138 = v52;
    v139 = v51;
    v129 = v54;
    v130 = v53;
    v158[0] = 0;
    LOBYTE(v156[0]) = 0;
    LODWORD(v128) = sub_2705D56B4();
    sub_2705D4D34();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v127 = v61;
    LOBYTE(v157[0]) = 0;
    LODWORD(v126) = sub_2705D56E4();
    sub_2705D4D34();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v158[0] = 0;
    v70 = v132;
    v71 = v133;
    v72 = v135;
    (*(v133 + 104))(v132, *MEMORY[0x277CE0A50], v135);
    v73 = sub_2705D5794();
    v74 = v134;
    __swift_storeEnumTagSinglePayload(v134, 1, 1, v73);
    sub_2705D57C4();
    v75 = sub_2705D5854();
    sub_2703C1634(v74, &qword_2807CF0F0);
    (*(v71 + 8))(v70, v72);
    KeyPath = swift_getKeyPath();
    v77 = swift_getKeyPath();
    v158[0] = 1;
    v78 = v143;
    sub_27043913C(v143);
    v79 = sub_2705D4FE4();
    (*(v144 + 8))(v78, v145);
    LOBYTE(v78) = (v79 & 1) == 0;
    v80 = swift_getKeyPath();
    sub_2705D60A4();
    sub_2705D5094();
    memcpy(&v149[7], v170, 0x70uLL);
    v157[0] = v131;
    v157[1] = v50;
    LOBYTE(v157[2]) = 0;
    v157[3] = v49;
    LOBYTE(v157[4]) = v147;
    v157[5] = v139;
    v157[6] = v138;
    v157[7] = v130;
    v157[8] = v129;
    LOBYTE(v157[9]) = 0;
    LOBYTE(v157[10]) = v128;
    v157[11] = v56;
    v157[12] = v58;
    v157[13] = v60;
    v157[14] = v127;
    LOBYTE(v157[15]) = 0;
    LOBYTE(v157[16]) = v126;
    v157[17] = v63;
    v157[18] = v65;
    v157[19] = v67;
    v157[20] = v69;
    LOBYTE(v157[21]) = 0;
    v157[22] = KeyPath;
    v157[23] = v75;
    v157[24] = v77;
    v157[25] = 0;
    LOBYTE(v157[26]) = 1;
    *(&v157[26] + 1) = 256;
    v157[27] = v80;
    LOBYTE(v157[28]) = v78;
    memcpy(&v157[28] + 1, v149, 0x77uLL);
    CGSizeMake(v157, v81);
    memcpy(v158, v157, 0x158uLL);
  }

  else
  {
    sub_27043D538(v158);
  }

  if (v140)
  {
    v82 = v136;

    LODWORD(v147) = sub_2705D56D4();
    sub_2705D4D34();
    v139 = v84;
    v140 = v83;
    v138 = v85;
    v135 = v86;
    LOBYTE(v157[0]) = 0;
    v155[0] = 0;
    v87 = sub_2705D56B4();
    sub_2705D4D34();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    LOBYTE(v156[0]) = 0;
    v96 = sub_2705D56E4();
    sub_2705D4D34();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    LOBYTE(v157[0]) = 0;
    v105 = sub_2705D5774();
    v106 = swift_getKeyPath();
    v107 = swift_getKeyPath();
    LOBYTE(v157[0]) = 1;
    v108 = v143;
    sub_27043913C(v143);
    v109 = sub_2705D4FE4();
    (*(v144 + 8))(v108, v145);
    LOBYTE(v108) = (v109 & 1) == 0;
    v110 = swift_getKeyPath();
    sub_2705D60A4();
    sub_2705D5094();
    memcpy(&v150[7], v171, 0x70uLL);
    v156[0] = v137;
    v156[1] = v82;
    LOBYTE(v156[2]) = 0;
    v156[3] = MEMORY[0x277D84F90];
    LOBYTE(v156[4]) = v147;
    v156[5] = v140;
    v156[6] = v139;
    v156[7] = v138;
    v156[8] = v135;
    LOBYTE(v156[9]) = 0;
    LOBYTE(v156[10]) = v87;
    v156[11] = v89;
    v156[12] = v91;
    v156[13] = v93;
    v156[14] = v95;
    LOBYTE(v156[15]) = 0;
    LOBYTE(v156[16]) = v96;
    v156[17] = v98;
    v156[18] = v100;
    v156[19] = v102;
    v156[20] = v104;
    LOBYTE(v156[21]) = 0;
    v156[22] = v106;
    v156[23] = v105;
    v156[24] = v107;
    v156[25] = 0;
    LOBYTE(v156[26]) = 1;
    *(&v156[26] + 1) = 256;
    v156[27] = v110;
    LOBYTE(v156[28]) = v108;
    memcpy(&v156[28] + 1, v150, 0x77uLL);
    CGSizeMake(v156, v111);
    memcpy(v157, v156, sizeof(v157));
  }

  else
  {
    sub_27043D538(v157);
  }

  v112 = v146;
  v113 = v141;
  sub_2703CF590(v146, v141, &qword_2807D2598);
  memcpy(v152, v158, sizeof(v152));
  memcpy(v151, v157, sizeof(v151));
  v114 = v142;
  sub_2703CF590(v113, v142, &qword_2807D2598);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25A0);
  v116 = *(v115 + 48);
  memcpy(v153, v152, sizeof(v153));
  memcpy((v114 + v116), v152, 0x158uLL);
  v117 = *(v115 + 64);
  memcpy(v154, v151, sizeof(v154));
  memcpy((v114 + v117), v151, 0x158uLL);
  sub_2703CF590(v153, v156, &qword_2807D25A8);
  sub_2703CF590(v154, v156, &qword_2807D25A8);
  sub_2703C1634(v112, &qword_2807D2598);
  memcpy(v155, v151, sizeof(v155));
  sub_2703C1634(v155, &qword_2807D25A8);
  memcpy(v156, v152, sizeof(v156));
  sub_2703C1634(v156, &qword_2807D25A8);
  return sub_2703C1634(v113, &qword_2807D2598);
}

uint64_t sub_27043A530(uint64_t a1)
{
  memcpy(__dst, (a1 + 8), sizeof(__dst));
  memcpy(v104, (a1 + 8), 0x160uLL);
  if (get_enum_tag_for_layout_string_19UnifiedMessagingKit13BrandingModelVSg_0(v104) == 1)
  {
    return 0;
  }

  memcpy(v95, __dst, sizeof(v95));
  v2 = objc_opt_self();
  sub_2703BE7D0(v95, v94);
  v3 = [v2 mainScreen];
  [v3 scale];

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  sub_2704369CC(__src);
  memcpy(v93, __src, sizeof(v93));
  v6 = v97;
  v7 = v98;
  memcpy(v92, v99, sizeof(v92));
  v8 = v100;
  v9 = v101;
  memcpy(v102, v104, sizeof(v102));
  switch(sub_2703BB658(v102))
  {
    case 1u:
    case 2u:
    case 4u:
      sub_2703BB26C(v102);
      sub_2703C1634(__dst, &qword_2807D2478);
      OUTLINED_FUNCTION_6_23();
      v94[9] = v6;
      v94[10] = v7;
      OUTLINED_FUNCTION_3_28();
      v94[20] = v8;
      v94[21] = v9;
      v10 = v94;
      goto LABEL_14;
    case 3u:
      v11 = sub_2703BB26C(v102);
      v12 = v11;
      if (v5 == 1)
      {
        sub_2703B6DF4(v11, v94);
        sub_2703C1634(__dst, &qword_2807D2478);
        memcpy(v94, v12, 0xB0uLL);
        CGSizeMake(v94, v13);
        memcpy(v89, v94, 0x48uLL);
        v14 = v94[9];
        v15 = v94[10];
        memcpy(v88, &v94[11], 0x48uLL);
        v16 = v94[20];
        v17 = v94[21];
      }

      else
      {
        sub_2703CF590(v11 + 176, v94, &qword_2807D22D0);
        sub_2703C1634(__dst, &qword_2807D2478);
        memcpy(v89, v12 + 22, 0x48uLL);
        v14 = v12[31];
        v22 = v12[32];
        memcpy(v88, v12 + 33, 0x48uLL);
        v16 = v12[42];
        v17 = v12[43];
        v15 = v22;
      }

      OUTLINED_FUNCTION_6_23();
      v94[9] = v6;
      v94[10] = v7;
      OUTLINED_FUNCTION_3_28();
      v94[20] = v8;
      v94[21] = v9;
      sub_2703C1634(v94, &qword_2807D22D0);
      memcpy(v93, v89, sizeof(v93));
      memcpy(v92, v88, sizeof(v92));
      v20 = v16;
      v21 = v17;
      goto LABEL_9;
    default:
      v18 = sub_2703BB26C(v102);
      memcpy(v89, v18, sizeof(v89));
      CGSizeMake(v89, v19);
      OUTLINED_FUNCTION_14_17(v94);
      v94[9] = v6;
      v94[10] = v7;
      memcpy(&v94[11], v92, 0x48uLL);
      v94[20] = v8;
      v94[21] = v9;
      sub_2703C1634(v94, &qword_2807D22D0);
      memcpy(v93, v89, sizeof(v93));
      v14 = v89[9];
      v15 = v89[10];
      memcpy(v92, &v89[11], sizeof(v92));
      v20 = v89[20];
      v21 = v89[21];
LABEL_9:
      if (v5 == 1)
      {
        v23 = 0x3057464D552E4642;
      }

      else
      {
        v23 = 0x3054464D552E5442;
      }

      OUTLINED_FUNCTION_6_23();
      OUTLINED_FUNCTION_3_28();
      v94[9] = v14;
      v94[10] = v15;
      v94[20] = v20;
      v94[21] = v21;
      if (sub_270436F74(v94) == 1)
      {

        OUTLINED_FUNCTION_14_17(v89);
        v89[9] = v14;
        v89[10] = v15;
        OUTLINED_FUNCTION_3_28();
        v89[20] = v20;
        v89[21] = v21;
        v10 = v89;
LABEL_14:
        sub_2703C1634(v10, &qword_2807D22D0);
        return 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25E0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2705EB880;
      *(v25 + 32) = 8222587;
      *(v25 + 40) = 0xE300000000000000;
      OUTLINED_FUNCTION_15_13();
      if (!(v30 ^ v31 | v29))
      {
        goto LABEL_45;
      }

      if (v27 <= -9.22337204e18)
      {
        goto LABEL_46;
      }

      *v83 = v28;
      if (v27 >= 9.22337204e18)
      {
        goto LABEL_47;
      }

      v32 = v26;
      v82 = v27;
      v89[0] = v27;

      v32[6] = sub_2705D80A4();
      v32[7] = v33;
      v32[8] = 8218747;
      v32[9] = 0xE300000000000000;
      OUTLINED_FUNCTION_15_13();
      if (!(v30 ^ v31 | v29))
      {
        goto LABEL_48;
      }

      if (v34 <= -9.22337204e18)
      {
        goto LABEL_49;
      }

      v84 = v21;
      v85 = v20;
      v87 = v14;
      if (v34 >= 9.22337204e18)
      {
        goto LABEL_50;
      }

      v80 = v34;
      v89[0] = v34;
      v32[10] = sub_2705D80A4();
      v32[11] = v35;
      v32[12] = 8217467;
      v32[13] = 0xE300000000000000;
      v81 = v23;
      v32[14] = v23;
      v32[15] = 0xE900000000000031;
      v32[16] = 8218235;
      v32[17] = 0xE300000000000000;
      v32[18] = 1667851624;
      v32[19] = 0xE400000000000000;

      v36 = sub_2705D7494();
      OUTLINED_FUNCTION_5_26();
      v39 = v38 & v37;
      v41 = (v40 + 63) >> 6;

      v42 = v15;
      v43 = 0;
      v44 = v14;
      v86 = v42;
      if (!v39)
      {
        goto LABEL_26;
      }

      while (2)
      {
        v45 = v43;
LABEL_30:
        v46 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v47 = (v45 << 10) | (16 * v46);
        v48 = (*(v36 + 48) + v47);
        v49 = *v48;
        v50 = v48[1];
        v51 = (*(v36 + 56) + v47);
        v52 = *v51;
        v53 = v51[1];
        v89[0] = v44;
        v89[1] = v42;
        v88[0] = v49;
        v88[1] = v50;
        v90 = v52;
        v91 = v53;
        sub_2703C2F54();

        v44 = OUTLINED_FUNCTION_9_19();
        v55 = v54;

        v42 = v55;
        if (v39)
        {
          continue;
        }

        break;
      }

      while (1)
      {
LABEL_26:
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          JUMPOUT(0x27043AE98);
        }

        if (v45 >= v41)
        {
          break;
        }

        v39 = *(v36 + 64 + 8 * v45);
        ++v43;
        if (v39)
        {
          v43 = v45;
          goto LABEL_30;
        }
      }

      v79 = v44;

      OUTLINED_FUNCTION_14_17(v89);
      OUTLINED_FUNCTION_3_28();
      v56 = v14;
      v89[9] = v14;
      v89[10] = v86;
      v89[20] = v85;
      v89[21] = v84;
      v57 = v86;
      if (sub_270436F74(v89) != 1)
      {

        v56 = v85;
        v57 = v84;
      }

      v58 = swift_allocObject();
      *(v58 + 16) = *v83;
      *(v58 + 32) = 8222587;
      *(v58 + 40) = 0xE300000000000000;
      v88[0] = v82;
      *(v58 + 48) = sub_2705D80A4();
      *(v58 + 56) = v59;
      *(v58 + 64) = 8218747;
      *(v58 + 72) = 0xE300000000000000;
      v88[0] = v80;
      *(v58 + 80) = sub_2705D80A4();
      *(v58 + 88) = v60;
      *(v58 + 96) = 8217467;
      *(v58 + 104) = 0xE300000000000000;
      *(v58 + 112) = v81;
      *(v58 + 120) = 0xE900000000000031;
      *(v58 + 128) = 8218235;
      *(v58 + 136) = 0xE300000000000000;
      *(v58 + 144) = 1667851624;
      *(v58 + 152) = 0xE400000000000000;
      v61 = sub_2705D7494();
      OUTLINED_FUNCTION_5_26();
      v64 = v63 & v62;
      v66 = (v65 + 63) >> 6;

      v67 = 0;
      if (v64)
      {
        while (1)
        {
          v68 = v67;
LABEL_40:
          v69 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
          v70 = (v68 << 10) | (16 * v69);
          v71 = (*(v61 + 48) + v70);
          v72 = *v71;
          v73 = v71[1];
          v74 = (*(v61 + 56) + v70);
          v75 = *v74;
          v76 = v74[1];
          v88[0] = v56;
          v88[1] = v57;
          v90 = v72;
          v91 = v73;
          v88[22] = v75;
          v88[23] = v76;
          sub_2703C2F54();

          v56 = OUTLINED_FUNCTION_9_19();
          v78 = v77;

          v57 = v78;
          if (!v64)
          {
            goto LABEL_36;
          }
        }
      }

      while (1)
      {
LABEL_36:
        v68 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_44;
        }

        if (v68 >= v66)
        {
          break;
        }

        v64 = *(v61 + 64 + 8 * v68);
        ++v67;
        if (v64)
        {
          v67 = v68;
          goto LABEL_40;
        }
      }

      OUTLINED_FUNCTION_14_17(v88);
      v88[9] = v87;
      v88[10] = v86;
      OUTLINED_FUNCTION_3_28();
      v88[20] = v85;
      v88[21] = v84;
      sub_2703C1634(v88, &qword_2807D22D0);
      return v79;
  }
}

uint64_t sub_27043AEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D5E04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2705D4FC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277CDD9C8])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v13 = sub_2705D5E24();
    (*(v5 + 8))(v7, v4);
    v18 = v13;
    LOBYTE(v19) = 1;
    swift_retain_n();
    sub_2705D5434();
    v18 = v20;
    v19 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25D8);
    sub_27043D5E4();
    sub_27043D668();
    sub_2705D5434();
  }

  else
  {
    if (v12 == *MEMORY[0x277CDD9C0])
    {
      (*(v9 + 8))(v11, v8);
      LOBYTE(v18) = 0;
      sub_2705D5434();
      v18 = v20;
      v19 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25D8);
      sub_27043D5E4();
      sub_27043D668();
      result = sub_2705D5434();
      goto LABEL_6;
    }

    if (v12 != *MEMORY[0x277CDD9B8])
    {
      LOBYTE(v18) = 1;
      sub_2705D5434();
      v18 = v20;
      v19 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25D8);
      sub_27043D5E4();
      sub_27043D668();
      sub_2705D5434();
      v15 = v20;
      v16 = v21;
      v17 = v22;
      result = (*(v9 + 8))(v11, v8);
      goto LABEL_7;
    }

    v18 = sub_2705D5C74();
    LOBYTE(v19) = 0;

    sub_2705D5434();
    v18 = v20;
    v19 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D25D8);
    sub_27043D5E4();
    sub_27043D668();
    sub_2705D5434();
  }

LABEL_6:
  v15 = v20;
  v16 = v21;
  v17 = v22;
LABEL_7:
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 9) = v17;
  return result;
}

double sub_27043B3D8(double a1)
{
  if (a1 < 0.0 || (v1 = 16.0, a1 > 374.0))
  {
    if (a1 < 375.0 || (v1 = 24.0, a1 > 413.0))
    {
      v2 = a1 > 727.0 || a1 < 414.0;
      v1 = 16.0;
      if (!v2)
      {
        return 44.0;
      }
    }
  }

  return v1;
}

uint64_t sub_27043B448@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2500);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  v7 = a1 + *(type metadata accessor for HalfImageView() + 28);
  memcpy(v14, (v7 + 776), sizeof(v14));
  memcpy(__dst, (v7 + 776), sizeof(__dst));
  if (__dst[5])
  {
    sub_2703B1414(__dst, v12);
    memcpy(v13, v12, sizeof(v13));
    memcpy(v11, v14, sizeof(v11));
    sub_270416AC0(v11, v10);
    *v6 = sub_2705D53C4();
    *(v6 + 1) = 0x4014000000000000;
    v6[16] = 0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2508);
    sub_27043B610(v13, a1, &v6[*(v8 + 44)]);
    sub_2703C1634(v14, &qword_2807D2450);
    sub_2703CF3E8(v6, a2, &qword_2807D2500);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_27043B610@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v45 = a2;
  v49 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2510);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6600);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2518);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v43 = &v42 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v21 = sub_2705D4D24();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
  *v55 = *a1;
  *&v55[9] = *(a1 + 9);
  *__dst = *a1;
  *(&__dst[1] + 1) = *(a1 + 9);
  sub_27043D09C(v55, v54);
  sub_2703B3B04(__dst, v54);
  sub_27043D0F8(v55);
  v22 = swift_allocObject();
  memcpy((v22 + 16), a1, 0x78uLL);
  sub_2703B1428(a1, __dst);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2520);
  sub_27043D154();
  sub_2705D4724();
  v24 = *(v45 + *(type metadata accessor for HalfImageView() + 28));
  if (v24 && *(v24 + 16))
  {
    v45 = v23;
    memcpy(v53, (v24 + 32), sizeof(v53));
    sub_2703B1414(v53, v54);
    memcpy(__dst, v54, 0x78uLL);
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v21);
    v25 = v54[1];
    v26 = v54[2];
    v27 = v54[3];
    v51[0] = v54[0];
    v51[1] = v54[1];
    v51[2] = v54[2];
    v52 = v54[3];
    sub_270416AC0(v53, v50);

    sub_2703AE9E8(v25, v26, v27);
    sub_2703B3B04(v51, v50);

    sub_2703AE980(v25, v26, v27);
    v28 = swift_allocObject();
    memcpy((v28 + 16), __dst, 0x78uLL);
    v29 = v43;
    sub_2705D4724();
    v30 = v47;
    v31 = v29;
    v32 = v13;
    (*(v14 + 32))(v47, v31, v13);
    v33 = v30;
    v34 = 0;
  }

  else
  {
    v30 = v47;
    v33 = v47;
    v34 = 1;
    v32 = v13;
  }

  __swift_storeEnumTagSinglePayload(v33, v34, 1, v13);
  v35 = *(v14 + 16);
  v36 = v46;
  v35(v46, v20, v32);
  v37 = v48;
  sub_2703CF590(v30, v48, &qword_2807D2510);
  v38 = v49;
  v35(v49, v36, v32);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2560);
  sub_2703CF590(v37, &v38[*(v39 + 48)], &qword_2807D2510);
  sub_2703C1634(v30, &qword_2807D2510);
  v40 = *(v14 + 8);
  v40(v20, v32);
  sub_2703C1634(v37, &qword_2807D2510);
  return (v40)(v36, v32);
}

uint64_t sub_27043BB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2558);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2548);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2538);
  MEMORY[0x28223BE20](v12);
  v14 = &v28[-v13];
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2568);
  sub_27043D418();
  sub_2705D5E94();
  sub_2705D60A4();
  sub_2705D5094();
  (*(v5 + 32))(v11, v7, v4);
  memcpy(&v11[*(v9 + 44)], __src, 0x70uLL);
  if (qword_2807CE790 != -1)
  {
    swift_once();
  }

  v15 = qword_2807CFC70;
  v16 = sub_2705D56C4();
  sub_2703CF3E8(v11, v14, &qword_2807D2548);
  v17 = &v14[*(v12 + 36)];
  *v17 = v15;
  v17[8] = v16;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2520) + 36));
  v19 = *(sub_2705D5064() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_2705D5344();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #14.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620) + 36)] = 256;
  sub_2703CF3E8(v14, a2, &qword_2807D2538);
}

__n128 sub_27043BF14@<Q0>(uint64_t a1@<X8>)
{

  sub_2705D58C4();
  v2 = sub_2705D5914();
  v4 = v3;
  v6 = v5;

  *&v32 = sub_2705D5CF4();
  v7 = sub_2705D58F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2703CEDB0(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_2705D56B4();
  sub_2705D4D34();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v32) = v11 & 1;
  LOBYTE(v4) = sub_2705D5724();
  sub_2705D4D34();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_2705D60A4();
  sub_2705D4E64();
  *&v31[7] = v32;
  *&v31[23] = v33;
  *&v31[39] = v34;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 80) = v4;
  *(a1 + 88) = v23;
  *(a1 + 96) = v25;
  *(a1 + 104) = v27;
  *(a1 + 112) = v29;
  *(a1 + 120) = 0;
  result = *v31;
  *(a1 + 168) = *(&v34 + 1);
  *(a1 + 153) = *&v31[32];
  *(a1 + 137) = *&v31[16];
  *(a1 + 121) = *v31;
  return result;
}

uint64_t sub_27043C100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2558);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2548);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2538);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v28[-v14];
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2568);
  sub_27043D418();
  sub_2705D5E94();
  sub_2705D60A4();
  sub_2705D5094();
  (*(v5 + 32))(v11, v7, v4);
  memcpy(&v11[*(v9 + 44)], __src, 0x70uLL);
  v16 = sub_2705D5CD4();
  LOBYTE(a1) = sub_2705D56C4();
  sub_2703CF3E8(v11, v15, &qword_2807D2548);
  v17 = &v15[*(v13 + 44)];
  *v17 = v16;
  v17[8] = a1;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2520) + 36));
  v19 = *(sub_2705D5064() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_2705D5344();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #14.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620) + 36)] = 256;
  return sub_2703CF3E8(v15, a2, &qword_2807D2538);
}

__n128 sub_27043C43C@<Q0>(uint64_t a1@<X8>)
{

  sub_2705D58C4();
  v2 = sub_2705D5914();
  v4 = v3;
  v6 = v5;

  if (qword_2807CE790 != -1)
  {
    swift_once();
  }

  *&v34 = qword_2807CFC70;

  v7 = sub_2705D58F4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_2703CEDB0(v2, v4, v6 & 1);

  v14 = sub_2705D56B4();
  sub_2705D4D34();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v34) = v11 & 1;
  v23 = sub_2705D5724();
  sub_2705D4D34();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_2705D60A4();
  sub_2705D4E64();
  *&v33[7] = v34;
  *&v33[23] = v35;
  *&v33[39] = v36;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 64) = v22;
  *(a1 + 72) = 0;
  *(a1 + 80) = v23;
  *(a1 + 88) = v25;
  *(a1 + 96) = v27;
  *(a1 + 104) = v29;
  *(a1 + 112) = v31;
  *(a1 + 120) = 0;
  result = *v33;
  *(a1 + 168) = *(&v36 + 1);
  *(a1 + 153) = *&v33[32];
  *(a1 + 137) = *&v33[16];
  *(a1 + 121) = *v33;
  return result;
}

uint64_t sub_27043C664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HalfImageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27043C6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HalfImageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27043C730()
{
  OUTLINED_FUNCTION_8_22();
  type metadata accessor for HalfImageView();
  v0 = OUTLINED_FUNCTION_10_18();

  return sub_27043940C(v0, v1, v2);
}

uint64_t sub_27043C798()
{
  v2 = sub_2705D4ED4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for HalfImageView();
  OUTLINED_FUNCTION_34_0();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4D84();
    OUTLINED_FUNCTION_11_1();
    (*(v11 + 8))(v1 + v9);
  }

  else
  {
  }

  v12 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4E94();
    OUTLINED_FUNCTION_11_1();
    (*(v13 + 8))(v10 + v12);
  }

  else
  {
  }

  v14 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_11_1();
    (*(v15 + 8))(v10 + v14);
  }

  else
  {
  }

  v16 = v10 + v0[7];

  OUTLINED_FUNCTION_16_9();
  if (!v27 || v17 >= 0x100)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4940(v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  }

  if (*(v16 + 368))
  {
  }

  if (*(v16 + 400))
  {
  }

  OUTLINED_FUNCTION_12_15();
  v27 = v27 && v26 == 0;
  if (!v27)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4D28(v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  }

  if (*(v16 + 816))
  {

    v36 = *(v16 + 800);
    if (v36 != 255)
    {
      sub_2703AE630(*(v16 + 784), *(v16 + 792), v36);
    }

    v37 = *(v16 + 856);
    if (v37 != 255)
    {
      sub_2703AE630(*(v16 + 840), *(v16 + 848), v37);
    }

    if (*(v16 + 872))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_27043CBB4()
{
  OUTLINED_FUNCTION_8_22();
  v3 = *(sub_2705D4ED4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for HalfImageView() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_27043984C(v0, v1 + v4, v7, v2);
}

uint64_t objectdestroyTm_3()
{
  type metadata accessor for HalfImageView();
  OUTLINED_FUNCTION_34_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4D84();
    OUTLINED_FUNCTION_11_1();
    (*(v5 + 8))(v1 + v3);
  }

  else
  {
  }

  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D4E94();
    OUTLINED_FUNCTION_11_1();
    (*(v7 + 8))(v4 + v6);
  }

  else
  {
  }

  v8 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D24F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2705D5004();
    OUTLINED_FUNCTION_11_1();
    (*(v9 + 8))(v4 + v8);
  }

  else
  {
  }

  v10 = v4 + v0[7];

  OUTLINED_FUNCTION_16_9();
  if (!v21 || v11 >= 0x100)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4940(v12, v13, v14, v15, v16, v17, v18, v19, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  }

  if (*(v10 + 368))
  {
  }

  if (*(v10 + 400))
  {
  }

  OUTLINED_FUNCTION_12_15();
  v21 = v21 && v20 == 0;
  if (!v21)
  {
    OUTLINED_FUNCTION_0_20();
    sub_2703F4D28(v22, v23, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  }

  if (*(v10 + 816))
  {

    v30 = *(v10 + 800);
    if (v30 != 255)
    {
      sub_2703AE630(*(v10 + 784), *(v10 + 792), v30);
    }

    v31 = *(v10 + 856);
    if (v31 != 255)
    {
      sub_2703AE630(*(v10 + 840), *(v10 + 848), v31);
    }

    if (*(v10 + 872))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_27043D034()
{
  OUTLINED_FUNCTION_8_22();
  type metadata accessor for HalfImageView();
  OUTLINED_FUNCTION_10_18();

  return sub_27043B448(v0, v1);
}

unint64_t sub_27043D154()
{
  result = qword_2807D2528;
  if (!qword_2807D2528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2520);
    sub_27043D20C();
    sub_2703AFBC8(&qword_2807D0080, &qword_2807CF620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2528);
  }

  return result;
}

unint64_t sub_27043D20C()
{
  result = qword_2807D2530;
  if (!qword_2807D2530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2538);
    sub_27043D2C4();
    sub_2703AFBC8(&qword_2807D0B60, &qword_2807D0B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2530);
  }

  return result;
}

unint64_t sub_27043D2C4()
{
  result = qword_2807D2540;
  if (!qword_2807D2540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2548);
    sub_2703AFBC8(&qword_2807D2550, &qword_2807D2558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2540);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{

  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_2703AE630(*(v0 + 24), *(v0 + 32), v1);
  }

  v2 = *(v0 + 96);
  if (v2 != 255)
  {
    sub_2703AE630(*(v0 + 80), *(v0 + 88), v2);
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_27043D418()
{
  result = qword_2807D2570;
  if (!qword_2807D2570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2568);
    sub_27043D4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2570);
  }

  return result;
}

unint64_t sub_27043D4A4()
{
  result = qword_2807D2578;
  if (!qword_2807D2578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D2580);
    sub_2703CF2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2578);
  }

  return result;
}

unint64_t sub_27043D558()
{
  result = qword_2807D25B8;
  if (!qword_2807D25B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D25B0);
    sub_27043D5E4();
    sub_27043D668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D25B8);
  }

  return result;
}

unint64_t sub_27043D5E4()
{
  result = qword_2807D25C0;
  if (!qword_2807D25C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D25C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D25C0);
  }

  return result;
}

unint64_t sub_27043D668()
{
  result = qword_2807D25D0;
  if (!qword_2807D25D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D25D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D25D0);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_28()
{

  return memcpy((v0 + 88), &STACK[0x208], 0x48uLL);
}

void *OUTLINED_FUNCTION_6_23()
{

  return memcpy(&STACK[0x298], &STACK[0x250], 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return sub_2705D7C64();
}

void *OUTLINED_FUNCTION_14_17(void *a1)
{

  return memcpy(a1, &STACK[0x250], 0x48uLL);
}

uint64_t sub_27043D84C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v18 = **a1;
  v17 = *(*a1 + 8);
  v24 = *(*a1 + 9);
  v5 = *v4;
  v6 = *(v4 + 8);
  v23 = *(v4 + 9);
  v7 = a1[2];
  memcpy(__dst, v7, 0xA8uLL);
  memcpy(&__src[6], v7, 0xA8uLL);
  v8 = a1[3];
  v9 = a1[4];
  v10 = *v8;
  LOWORD(v7) = *(v8 + 4);
  v11 = *(v8 + 10);
  v21 = *(v8 + 11);
  v12 = v21;
  v13 = *v9;
  v14 = *(v9 + 8);
  v20 = *(v9 + 9);
  v15 = v20;
  LOBYTE(v8) = v24;
  LOBYTE(v9) = v23;
  *a2 = v18;
  *(a2 + 8) = v17;
  *(a2 + 9) = v8;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 25) = v9;
  memcpy((a2 + 26), __src, 0xAEuLL);
  *(a2 + 200) = v10;
  *(a2 + 210) = v11;
  *(a2 + 208) = v7;
  *(a2 + 211) = v12;
  *(a2 + 216) = v13;
  *(a2 + 224) = v14;
  *(a2 + 225) = v15;
  return sub_2703FC5C0(__dst, v19, &qword_2807D28A0);
}

uint64_t sub_27043D984(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  sub_2704ADCDC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v21;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v19 = a3 + v9;
      a1(v20, &v19);
      if (v4)
      {
        goto LABEL_20;
      }

      v21 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2704ADCDC(v11 > 1, v12 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v12 + 1;
      v13 = (v6 + (v12 << 6));
      v14 = v20[0];
      v15 = v20[1];
      v16 = v20[3];
      v13[4] = v20[2];
      v13[5] = v16;
      v13[2] = v14;
      v13[3] = v15;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

double sub_27043DAF0(unsigned __int8 a1, uint64_t a2, char a3, double a4, double a5)
{
  if (!a3)
  {
    return *&a2;
  }

  if (a3 == 1)
  {
    return *&a2 * a4;
  }

  if (a2 < 1)
  {
    return 0.0;
  }

  if (a1 < 3u)
  {
    return (a4 - (a2 + -1.0) * a5) / a2;
  }

  return a4 / a2;
}

uint64_t sub_27043DB5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465786966 && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E656D676573 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_27043DC70(char a1)
{
  if (!a1)
  {
    return 0x6465786966;
  }

  if (a1 == 1)
  {
    return 0x61746E6563726570;
  }

  return 0x746E656D676573;
}

uint64_t sub_27043DCC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_27043DD50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_27043DDEC()
{
  OUTLINED_FUNCTION_10_1();
  v36 = v2;
  v37 = v0;
  v35 = v3;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2758);
  OUTLINED_FUNCTION_0();
  v33 = v7;
  v34 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_0();
  v32 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2760);
  OUTLINED_FUNCTION_0();
  v30 = v11;
  v31 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2768);
  OUTLINED_FUNCTION_0();
  v29 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2770);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_30_1();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_270441A9C();
  sub_2705D84C4();
  if (v35)
  {
    if (v35 == 1)
    {
      sub_2704437F0();
      OUTLINED_FUNCTION_25_7();
      sub_2703EC7A4();
      v24 = v31;
      sub_2705D8084();
      v25 = *(v30 + 8);
      v26 = v14;
    }

    else
    {
      sub_27044379C();
      v27 = v32;
      OUTLINED_FUNCTION_25_7();
      v24 = v34;
      sub_2705D8064();
      v25 = *(v33 + 8);
      v26 = v27;
    }

    v25(v26, v24);
  }

  else
  {
    sub_270443844();
    OUTLINED_FUNCTION_25_7();
    sub_2703EC7A4();
    sub_2705D8084();
    (*(v29 + 8))(v19, v15);
  }

  (*(v22 + 8))(v1, v20);
  OUTLINED_FUNCTION_11_3();
}

void sub_27043E168()
{
  OUTLINED_FUNCTION_10_1();
  v64 = v0;
  v3 = v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2718);
  OUTLINED_FUNCTION_0();
  v60 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v61 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2720);
  OUTLINED_FUNCTION_0();
  v58 = v7;
  v59 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2728);
  OUTLINED_FUNCTION_0();
  v57 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2730);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30_1();
  v19 = v3[3];
  v63 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v19);
  sub_270441A9C();
  v20 = v64;
  sub_2705D8484();
  v64 = v20;
  if (v20)
  {
    v21 = v63;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_11_3();
    return;
  }

  v53 = v10;
  v54 = v14;
  v55 = v17;
  v56 = v1;
  v22 = sub_2705D7FB4();
  sub_27042C9F0(v22, 0);
  if (v24 == v25 >> 1)
  {
LABEL_10:
    v34 = sub_2705D7D84();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA60);
    *v36 = &type metadata for HorizontalStackComponentModel.SizingConstraints.Constraint;
    v37 = v56;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v37, v15);
    v21 = v63;
    goto LABEL_11;
  }

  v52 = v15;
  if (v24 < (v25 >> 1))
  {
    v26 = *(v23 + v24);
    v27 = sub_27042C9E4(v24 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v51 = v27;
    if (v29 == v31 >> 1)
    {
      v32 = v26;
      if (v26)
      {
        v33 = v52;
        if (v32 == 1)
        {
          sub_2704437F0();
          OUTLINED_FUNCTION_26_7();
          sub_2703EC654();
          OUTLINED_FUNCTION_36_3();
          swift_unknownObjectRelease();
          v43 = OUTLINED_FUNCTION_11_19();
          v44(v43);
          v45 = OUTLINED_FUNCTION_12_16();
          v46(v45, v33);
          v21 = v63;
        }

        else
        {
          sub_27044379C();
          v39 = v56;
          v40 = v64;
          sub_2705D7ED4();
          v21 = v63;
          if (v40)
          {
            (*(v55 + 8))(v39, v33);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_2705D7F84();
            v42 = v55;
            swift_unknownObjectRelease();
            v49 = OUTLINED_FUNCTION_33_5();
            v50(v49);
            (*(v42 + 8))(v56, v33);
          }
        }
      }

      else
      {
        sub_270443844();
        v38 = v52;
        OUTLINED_FUNCTION_26_7();
        sub_2703EC654();
        OUTLINED_FUNCTION_36_3();
        v21 = v63;
        v41 = v55;
        swift_unknownObjectRelease();
        v47 = OUTLINED_FUNCTION_11_19();
        v48(v47);
        (*(v41 + 8))(v1, v38);
      }

      goto LABEL_11;
    }

    v15 = v52;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_27043E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043DB5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27043E828(uint64_t a1)
{
  v2 = sub_270441A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043E864(uint64_t a1)
{
  v2 = sub_270441A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27043E8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043DCC8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27043E8D0(uint64_t a1)
{
  v2 = sub_270443844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043E90C(uint64_t a1)
{
  v2 = sub_270443844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27043E94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043DD50(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27043E978(uint64_t a1)
{
  v2 = sub_2704437F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043E9B4(uint64_t a1)
{
  v2 = sub_2704437F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27043E9F0(uint64_t a1)
{
  v2 = sub_27044379C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043EA2C(uint64_t a1)
{
  v2 = sub_27044379C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_27043EA68(uint64_t a1@<X8>)
{
  sub_27043E168();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
  }
}

uint64_t sub_27043EAB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68746469576E696DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x687464695778616DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6469576C61656469 && a2 == 0xEA00000000006874;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x68676965486E696DLL && a2 == 0xE900000000000074;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x686769654878616DLL && a2 == 0xE900000000000074;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6965486C61656469 && a2 == 0xEB00000000746867)
          {

            return 5;
          }

          else
          {
            v11 = sub_2705D8134();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_27043ECBC(char a1)
{
  result = 0x68746469576E696DLL;
  switch(a1)
  {
    case 1:
      result = 0x687464695778616DLL;
      break;
    case 2:
      result = 0x6469576C61656469;
      break;
    case 3:
      v3 = 1215195501;
      goto LABEL_6;
    case 4:
      v3 = 1215848813;
LABEL_6:
      result = v3 | 0x6867696500000000;
      break;
    case 5:
      result = 0x6965486C61656469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27043ED88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D26D8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704414F0();
  sub_2705D84C4();
  v14 = *v3;
  v15 = *(v3 + 8);
  v13 = 0;
  sub_270441598();
  OUTLINED_FUNCTION_3_20();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v13 = 1;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[4];
    v15 = *(v3 + 40);
    v13 = 2;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[6];
    v15 = *(v3 + 56);
    v13 = 3;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[8];
    v15 = *(v3 + 72);
    v13 = 4;
    OUTLINED_FUNCTION_3_20();
    v14 = v3[10];
    v15 = *(v3 + 88);
    v13 = 5;
    OUTLINED_FUNCTION_3_20();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_27043EF9C()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D26C0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704414F0();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_270441544();
    OUTLINED_FUNCTION_2_26();
    v22 = v4;
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_26();
    v21 = v4;
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_26();
    v19 = v11;
    v20 = v4;
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_26();
    v17 = v11;
    v18 = v4;
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_26();
    v16 = v23;
    HIDWORD(v15) = v24;
    OUTLINED_FUNCTION_2_26();
    (*(v7 + 8))(v10, v5);
    v12 = v23;
    v13 = v24;
    __swift_destroy_boxed_opaque_existential_1(v2);
    v14 = v22;
    *v22 = v21;
    *(v14 + 8) = v11;
    v14[2] = v20;
    *(v14 + 24) = v19;
    v14[4] = v18;
    *(v14 + 40) = v17;
    v14[6] = v4;
    *(v14 + 56) = v11;
    v14[8] = v16;
    *(v14 + 72) = BYTE4(v15);
    v14[10] = v12;
    *(v14 + 88) = v13;
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_27043F218()
{
  v0 = sub_2705D7EB4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27043F264(char a1)
{
  result = 0x676E696461656CLL;
  switch(a1)
  {
    case 1:
      result = 0x676E696C69617274;
      break;
    case 2:
      result = 0x7265746E6563;
      break;
    case 3:
      result = 0x6576456563617073;
      break;
    case 4:
      result = 0x6F72416563617073;
      break;
    case 5:
      result = 0x7465426563617073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27043F34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043EAB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27043F374(uint64_t a1)
{
  v2 = sub_2704414F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27043F3B0(uint64_t a1)
{
  v2 = sub_2704414F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_27043F3EC(void *a1@<X8>)
{
  sub_27043EF9C();
  if (!v1)
  {
    memcpy(a1, v3, 0x59uLL);
  }
}

uint64_t sub_27043F474@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27043F218();
  *a1 = result;
  return result;
}

uint64_t sub_27043F4A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27043F264(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_27043F580()
{
  v1 = sub_2703FC5C0(v0 + 304, &v12, &qword_2807CF2D8);
  *&result = OUTLINED_FUNCTION_11_9(v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13).n128_u64[0];
  return result;
}

uint64_t sub_27043F5C8@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_23_0(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  v6 = type metadata accessor for HorizontalStackComponentModel(0);
  sub_2703FC5C0(v1 + *(v6 + 52), v2, &qword_2807CF130);
  return sub_2703FC3D4(v2, a1, &qword_2807CF190);
}

uint64_t sub_27043F67C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x8000000270613DD0 == a2;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7562697274736964 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000270613DF0 == a2;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000270613E10 == a2;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x79616C7265646E75 && a2 == 0xE800000000000000;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6575676573 && a2 == 0xE500000000000000;
                  if (v13 || (sub_2705D8134() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000011 && 0x80000002706137E0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_2705D8134();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

unint64_t sub_27043F994(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E656E6F706D6F63;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x7562697274736964;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x676E6964646170;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x79616C7265646E75;
      break;
    case 8:
      result = 0x6575676573;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_27043FADC()
{
  OUTLINED_FUNCTION_10_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2688);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21_2();
  v7 = OUTLINED_FUNCTION_17_10();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_27044129C();
  sub_2705D84C4();
  LOBYTE(v27[0]) = 0;
  v9 = OUTLINED_FUNCTION_17_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_14_18(&unk_2807CFE90);
  OUTLINED_FUNCTION_10_19();
  sub_2705D8084();
  if (!v1)
  {
    v29 = *(v0 + 40);
    v28 = 1;
    v10 = OUTLINED_FUNCTION_17_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10);
    OUTLINED_FUNCTION_14_18(&unk_2807D2690);
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    memcpy(v27, (v0 + 48), 0x59uLL);
    LOBYTE(v20[0]) = 2;
    sub_2704413F4();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    LOBYTE(v27[0]) = *(v0 + 137);
    LOBYTE(v20[0]) = 3;
    sub_270441448();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    v11 = *(v0 + 152);
    v25 = *(v0 + 144);
    v26 = v11;
    v24 = 4;
    sub_2703E9140();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    v12 = *(v0 + 176);
    v27[0] = *(v0 + 160);
    v27[1] = v12;
    v27[2] = *(v0 + 192);
    *(&v27[2] + 9) = *(v0 + 201);
    LOBYTE(v20[0]) = 5;
    sub_2703E10C0();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    v13 = *(v0 + 232);
    v22 = *(v0 + 224);
    v23 = v13;
    v21 = 6;
    v14 = OUTLINED_FUNCTION_17_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14);
    OUTLINED_FUNCTION_14_18(&unk_2807D26B0);
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    v15 = *(v0 + 256);
    v27[0] = *(v0 + 240);
    v27[1] = v15;
    v16 = *(v0 + 288);
    v18 = *(v0 + 240);
    v17 = *(v0 + 256);
    v27[2] = *(v0 + 272);
    v27[3] = v16;
    v20[0] = v18;
    v20[1] = v17;
    v20[2] = v27[2];
    v20[3] = *(v0 + 288);
    v19[79] = 7;
    sub_2703FC5C0(v27, v19, &qword_2807CFE38);
    sub_2703E1114();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8024();
    OUTLINED_FUNCTION_24_10(v20);
    sub_2703C2EFC(v19, &qword_2807CFE38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_2703E0F80(&qword_2807CFE98);
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
    type metadata accessor for HorizontalStackComponentModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    sub_2703E1004();
    OUTLINED_FUNCTION_10_19();
    sub_2705D8084();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_11_3();
}

void sub_27043FFBC()
{
  OUTLINED_FUNCTION_10_1();
  v36 = v0;
  v3 = v2;
  v34[0] = v4;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2660);
  OUTLINED_FUNCTION_0();
  v35 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_2();
  v9 = type metadata accessor for HorizontalStackComponentModel(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 28) = 0;
  v12[232] = 1;
  *(v12 + 15) = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 17) = 0u;
  memset(v53, 0, 40);
  *(v12 + 18) = 0u;
  *(v12 + 19) = 0u;
  *(v12 + 20) = 0u;
  *(v12 + 42) = 0;
  sub_2703F92B0(v53, (v12 + 304), &unk_2807CF480);
  v13 = *(v10 + 60);
  v14 = sub_2705D6A54();
  v38 = v13;
  __swift_storeEnumTagSinglePayload(&v12[v13], 1, 1, v14);
  v15 = v3[3];
  v37 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v15);
  sub_27044129C();
  v16 = v36;
  sub_2705D8484();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    v18 = *(v12 + 16);
    v53[0] = *(v12 + 15);
    v53[1] = v18;
    v19 = *(v12 + 18);
    v53[2] = *(v12 + 17);
    v53[3] = v19;
    sub_2703C2EFC(v53, &qword_2807CFE38);
    sub_2703C2EFC((v12 + 304), &qword_2807CF2D8);
    sub_2703C2EFC(&v12[v38], &qword_2807CF130);
  }

  else
  {
    v36 = v1;
    v17 = OUTLINED_FUNCTION_17_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17);
    LOBYTE(v47[0]) = 0;
    OUTLINED_FUNCTION_14_18(&unk_2807CFE40);
    OUTLINED_FUNCTION_15_14();
    v20 = v53[1];
    *v12 = v53[0];
    *(v12 + 1) = v20;
    *(v12 + 4) = *&v53[2];
    v21 = OUTLINED_FUNCTION_17_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21);
    LOBYTE(v47[0]) = 1;
    OUTLINED_FUNCTION_14_18(&unk_2807D2670);
    OUTLINED_FUNCTION_15_14();
    v22 = v12 + 240;
    *(v12 + 5) = *&v53[0];
    v52 = 2;
    sub_2704412F0();
    OUTLINED_FUNCTION_5_27();
    sub_2705D7F44();
    v23 = v35;
    memcpy(v12 + 48, v53, 0x59uLL);
    LOBYTE(v45[0]) = 3;
    sub_270441344();
    OUTLINED_FUNCTION_5_27();
    sub_2705D7F44();
    v12[137] = v47[0];
    LOBYTE(v45[0]) = 4;
    sub_2703E9098();
    OUTLINED_FUNCTION_5_27();
    sub_2705D7F44();
    v24 = BYTE8(v47[0]);
    *(v12 + 18) = *&v47[0];
    v12[152] = v24;
    v48 = 5;
    sub_2703E0E1C();
    OUTLINED_FUNCTION_5_27();
    sub_2705D7F44();
    v25 = v50;
    *(v12 + 10) = v49;
    *(v12 + 11) = v25;
    *(v12 + 12) = *v51;
    *(v12 + 201) = *&v51[9];
    LOBYTE(v41) = 6;
    if ((sub_2705D7FC4() & 1) != 0 && (sub_2705D7FD4() & 1) == 0)
    {
      sub_2705D7EF4();
      sub_27044AE4C(v47);
      v26 = *&v45[0];
      v27 = BYTE8(v45[0]);
      v23 = v35;
      v22 = v12 + 240;
    }

    else
    {
      v26 = 0;
      v27 = 1;
    }

    *(v12 + 28) = v26;
    v12[232] = v27;
    v46 = 7;
    sub_2703E0ED4();
    v35 = &qword_2807D02C8;
    sub_2705D7F44();
    v41 = v47[0];
    v42 = v47[1];
    v43 = v47[2];
    v44 = v47[3];
    v28 = v22[1];
    v45[0] = *v22;
    v45[1] = v28;
    v29 = v22[3];
    v45[2] = v22[2];
    v45[3] = v29;
    sub_2703C2EFC(v45, &qword_2807CFE38);
    v30 = v42;
    *v22 = v41;
    v22[1] = v30;
    v31 = v44;
    v22[2] = v43;
    v22[3] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    v39 = 8;
    sub_2703E0F80(&qword_2807CFE48);
    sub_2705D7FA4();
    sub_2703F92B0(v40, (v12 + 304), &qword_2807CF2D8);
    v40[0] = 9;
    sub_2703E0C88();
    v32 = v36;
    OUTLINED_FUNCTION_5_27();
    sub_2705D7FA4();
    (v23[1])(v35, v6);
    sub_2703F92B0(v32, &v12[v38], &qword_2807CF130);
    OUTLINED_FUNCTION_7_17();
    sub_270444368(v12, v34[0], v33);
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_270441398(v12);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_270440730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27043F67C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270440758@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27043F98C();
  *a1 = result;
  return result;
}

uint64_t sub_270440780(uint64_t a1)
{
  v2 = sub_27044129C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704407BC(uint64_t a1)
{
  v2 = sub_27044129C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270440830@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_17();
  sub_270444368(v2, v4, v3);
  type metadata accessor for HorizontalStackState(0);
  *(swift_allocObject() + 16) = 0;
  sub_2705D4624();
  v5 = (a1 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
  result = sub_2705D5E44();
  *v5 = v7;
  v5[1] = v8;
  return result;
}

double sub_2704408D0()
{
  swift_getKeyPath();
  sub_270441040(&unk_2807D2610);
  sub_2705D45F4();

  return *(v0 + 16);
}

void sub_270440970(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_270440A20();
  }
}

uint64_t sub_270440AD8()
{
  v1 = OBJC_IVAR____TtC19UnifiedMessagingKit20HorizontalStackState___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_270440B94()
{
  result = sub_2705D4634();
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

double sub_270440C88()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_270440CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_87(*(a1 + 24));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  v8 = a1 + *(a3 + 52);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_270440D48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_270440DF4()
{
  sub_2703C1B58();
  if (v0 <= 0x3F)
  {
    sub_270441084();
    if (v1 <= 0x3F)
    {
      sub_2704410E0(319, &qword_2807D2630, &type metadata for HorizontalStackComponentModel.SizingConstraints, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2704410E0(319, &qword_2807D2638, &type metadata for HorizontalDistribution, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2704410E0(319, &qword_2807D2640, &unk_2880520D0, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2704410E0(319, &qword_2807CFE10, &unk_288052148, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2704410E0(319, &qword_2807D2648, MEMORY[0x277CE00B0], type metadata accessor for CodableOptionalByProxy);
              if (v6 <= 0x3F)
              {
                sub_2704410E0(319, &qword_2807CFE18, &unk_28805D3D0, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_2703DFCDC(319, &qword_2807CF320, &qword_2807CF328);
                  if (v8 <= 0x3F)
                  {
                    sub_2703DFCDC(319, &qword_2807CF188, &qword_2807CF190);
                    if (v9 <= 0x3F)
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
}

unint64_t sub_270441040(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_7(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_270441084()
{
  if (!qword_2807D2628)
  {
    sub_2703E346C();
    v0 = sub_2705D6A24();
    if (!v1)
    {
      atomic_store(v0, &qword_2807D2628);
    }
  }
}

void sub_2704410E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_27044114C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 89))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_270441190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

unint64_t sub_270441200()
{
  result = qword_2807D2650;
  if (!qword_2807D2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2650);
  }

  return result;
}

unint64_t sub_27044129C()
{
  result = qword_2807D2668;
  if (!qword_2807D2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2668);
  }

  return result;
}

unint64_t sub_2704412F0()
{
  result = qword_2807D2678;
  if (!qword_2807D2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2678);
  }

  return result;
}

unint64_t sub_270441344()
{
  result = qword_2807D2680;
  if (!qword_2807D2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2680);
  }

  return result;
}

uint64_t sub_270441398(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalStackComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2704413F4()
{
  result = qword_2807D2698;
  if (!qword_2807D2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2698);
  }

  return result;
}

unint64_t sub_270441448()
{
  result = qword_2807D26A0;
  if (!qword_2807D26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26A0);
  }

  return result;
}

unint64_t sub_27044149C()
{
  result = qword_2807D26B8;
  if (!qword_2807D26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26B8);
  }

  return result;
}

unint64_t sub_2704414F0()
{
  result = qword_2807D26C8;
  if (!qword_2807D26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26C8);
  }

  return result;
}

unint64_t sub_270441544()
{
  result = qword_2807D26D0;
  if (!qword_2807D26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26D0);
  }

  return result;
}

unint64_t sub_270441598()
{
  result = qword_2807D26E0;
  if (!qword_2807D26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26E0);
  }

  return result;
}

_BYTE *sub_2704415EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x2704416B8);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HorizontalStackComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HorizontalStackComponentModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x270441844);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_270441890()
{
  result = qword_2807D26E8;
  if (!qword_2807D26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26E8);
  }

  return result;
}

unint64_t sub_2704418E8()
{
  result = qword_2807D26F0;
  if (!qword_2807D26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26F0);
  }

  return result;
}

unint64_t sub_270441940()
{
  result = qword_2807D26F8;
  if (!qword_2807D26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D26F8);
  }

  return result;
}

unint64_t sub_270441998()
{
  result = qword_2807D2700;
  if (!qword_2807D2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2700);
  }

  return result;
}

unint64_t sub_2704419F0()
{
  result = qword_2807D2708;
  if (!qword_2807D2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2708);
  }

  return result;
}

unint64_t sub_270441A48()
{
  result = qword_2807D2710;
  if (!qword_2807D2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2710);
  }

  return result;
}

unint64_t sub_270441A9C()
{
  result = qword_2807D2738;
  if (!qword_2807D2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2738);
  }

  return result;
}

uint64_t sub_270441AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v133 = a1;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2800);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_0();
  v132 = v5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2808);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_0();
  v118 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2810);
  OUTLINED_FUNCTION_23_0(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v130 = v10;
  v11 = type metadata accessor for HorizontalStackComponentModelView(0);
  v126 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v127 = v12;
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2818);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1760);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v110 - v16;
  v115.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1750);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v110 - v19;
  *&v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1740);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_0();
  v117 = v22;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1730);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21_2();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1770);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  v26 = &v110 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1720);
  v28 = OUTLINED_FUNCTION_23_0(v27);
  v29 = MEMORY[0x28223BE20](v28);
  v120 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v123 = &v110 - v31;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D1710);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  v34 = &v110 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D16C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v110 - v37;
  LODWORD(v37) = *(v3 + 232);
  v125 = v36;
  if (v37 == 1)
  {
    v39 = sub_2705D52D4();
  }

  else
  {
    v39 = *(v3 + 224);
  }

  v40 = *(v3 + 152);
  if (v40 == 255)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v3 + 144);
    if (v40)
    {
      v41 = qword_2705EE9A8[v41];
    }
  }

  v128 = v38;
  *v26 = v39;
  *(v26 + 1) = v41;
  v26[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2820);
  sub_2704425C8(v3, &v26[*(v42 + 44)]);
  v43 = *(v3 + 168);
  if (v43 == 254)
  {
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v44, v45, v46);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_20();
    sub_2704442E8(v47);
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_33_2();
    sub_2703E2A50(v48);
    sub_2705D5434();
  }

  else
  {
    v112 = v13;
    v49 = *(v3 + 160);
    v50 = *(v3 + 192);
    v145 = *(v3 + 176);
    v146[0] = v50;
    *(v146 + 9) = *(v3 + 201);
    v143 = v49;
    v144 = v43;
    v51 = sub_2705D56F4();
    sub_270416214();
    v52 = 0uLL;
    v113 = 0u;
    v53 = 0uLL;
    if ((v54 & 1) == 0)
    {
      sub_2705D4D34();
      OUTLINED_FUNCTION_29_5();
    }

    v110 = v53;
    v111 = v52;
    sub_2703FC5C0(v26, v17, &qword_2807D1770);
    v55 = &v17[*(v114 + 36)];
    *v55 = v51;
    v56 = v111;
    *(v55 + 24) = v110;
    OUTLINED_FUNCTION_13_13(v55, v56);
    v57 = sub_2705D5714();
    sub_27041624C();
    v58 = 0uLL;
    if ((v59 & 1) == 0)
    {
      sub_2705D4D34();
      OUTLINED_FUNCTION_29_5();
      v113 = v60;
    }

    v111 = v58;
    v114 = v34;
    sub_2703FC3D4(v17, v20, &qword_2807D1760);
    v61 = &v20[*(v115.n128_u64[0] + 36)];
    *v61 = v57;
    *(v61 + 24) = v111;
    OUTLINED_FUNCTION_13_13(v61, v113);
    v62 = sub_2705D56D4();
    sub_270417938();
    v63 = 0uLL;
    v115 = 0u;
    v64 = 0uLL;
    if ((v65 & 1) == 0)
    {
      sub_2705D4D34();
      OUTLINED_FUNCTION_29_5();
    }

    v111 = v64;
    v113 = v63;
    v66 = v20;
    v67 = v117;
    sub_2703FC3D4(v66, v117, &qword_2807D1750);
    v68 = v67 + *(v116 + 36);
    *v68 = v62;
    *(v68 + 24) = v111;
    OUTLINED_FUNCTION_13_13(v68, v113);
    v69 = sub_2705D56E4();
    sub_270417900();
    v70 = 0uLL;
    v13 = v112;
    if ((v71 & 1) == 0)
    {
      sub_2705D4D34();
      OUTLINED_FUNCTION_29_5();
      v115 = v72;
    }

    v116 = v70;
    sub_2703FC3D4(v67, v2, &qword_2807D1740);
    v73 = v2 + *(v121 + 36);
    *v73 = v69;
    v74 = v115;
    *(v73 + 24) = v116;
    OUTLINED_FUNCTION_13_13(v73, v74);
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v75, v76, v77);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_33_2();
    sub_2704442E8(v78);
    OUTLINED_FUNCTION_8_23();
    sub_2703E2A50(v79);
    sub_2705D5434();
    OUTLINED_FUNCTION_33_2();
    sub_2703C2EFC(v80, v81);
    v34 = v114;
  }

  sub_2703C2EFC(v26, &qword_2807D1770);
  OUTLINED_FUNCTION_28_4();
  sub_2703FC3D4(v82, v83, v84);
  sub_2705D60A4();
  sub_2705D5094();
  OUTLINED_FUNCTION_28_4();
  sub_2703FC3D4(v85, v86, v87);
  memcpy(&v34[*(v122 + 36)], v141, 0x70uLL);
  sub_270444368(v3, v13, type metadata accessor for HorizontalStackComponentModelView);
  v88 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v89 = swift_allocObject();
  sub_2704443C8(v13, v89 + v88);
  v90 = sub_2705D60A4();
  v92 = v91;
  v93 = sub_2705D5CD4();
  v94 = sub_2705D60A4();
  v96 = v95;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_27044442C;
  *(v97 + 24) = v89;
  v98 = v128;
  sub_2703FC3D4(v34, v128, &qword_2807D1710);
  v99 = (v98 + *(v125 + 36));
  *v99 = v93;
  v99[1] = sub_270412C5C;
  v99[2] = v97;
  v99[3] = v94;
  v99[4] = v96;
  v99[5] = v90;
  v99[6] = v92;
  v100 = *(v3 + 288);
  v138 = *(v3 + 272);
  v139 = v100;
  v101 = *(v3 + 256);
  v136 = *(v3 + 240);
  v137 = v101;
  v140[2] = v138;
  v140[3] = v100;
  v140[0] = v136;
  v140[1] = v101;
  if (v136)
  {
    sub_2703E2A94(v140, v142);
    v135[0] = v136;
    v135[1] = v137;
    v135[2] = v138;
    v135[3] = v139;
    sub_270444564(v135, &v134);
    v102 = v98;
    sub_270406288();
    OUTLINED_FUNCTION_28_4();
    sub_2703FC5C0(v103, v104, v105);
    swift_storeEnumTagMultiPayload();
    sub_2704444D8();
    sub_2704148A8();
    v106 = v130;
    sub_2705D5434();
    sub_2703C2EFC(&v136, &qword_2807CFE38);
    OUTLINED_FUNCTION_33_2();
    sub_2703C2EFC(v107, v108);
  }

  else
  {
    sub_2703FC5C0(v98, v132, &qword_2807D16C0);
    swift_storeEnumTagMultiPayload();
    sub_2704444D8();
    v102 = v98;
    sub_2704148A8();
    v106 = v130;
    sub_2705D5434();
  }

  sub_2703FC3D4(v106, v133, &qword_2807D2810);
  return sub_2703C2EFC(v102, &qword_2807D16C0);
}

uint64_t sub_2704425C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for HorizontalStackComponentModelView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2838);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v31 - v10;
  v11 = *(a1 + 137);
  v39 = 0;
  if (v11 - 1 > 3)
  {
    v12 = 256;
  }

  else
  {
    v12 = 1;
  }

  v40 = v12;
  v13 = sub_2705D5434();
  v35 = v41;
  v33 = v43;
  v34 = v42;
  MEMORY[0x28223BE20](v13);
  v30 = a1;
  v41 = sub_27043D984(sub_2704445C0, (&v31 - 4), 0, v14);
  sub_270444368(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HorizontalStackComponentModelView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_2704443C8(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2848);
  sub_2703E2A50(&unk_2807D2850);
  sub_2703E2A50(&unk_2807D2858);
  v30 = sub_2703E2A50(&unk_2807D2860);
  sub_2705D5F84();
  v17 = v11 > 4 || v11 == 1;
  v39 = 0;
  if (v17)
  {
    v18 = 256;
  }

  else
  {
    v18 = 1;
  }

  v40 = v18;
  sub_2705D5434();
  v32 = v41;
  v19 = v42;
  v20 = v43;
  v21 = *(v7 + 16);
  v22 = v36;
  v23 = v38;
  v21(v36, v38, v6);
  v24 = v37;
  *v37 = v35;
  v25 = v33;
  *(v24 + 8) = v34;
  *(v24 + 9) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2870);
  v21(v24 + *(v26 + 48), v22, v6);
  v27 = v24 + *(v26 + 64);
  *v27 = v32;
  v27[8] = v19;
  v27[9] = v20;
  v28 = *(v7 + 8);
  v28(v23, v6);
  return (v28)(v22, v6);
}

unint64_t *sub_270442A64@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  v12 = 759386952;
  v13 = 0xE400000000000000;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(a2 + 40);
  if (v4 >= *(v5 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5 + 40 * v4;
  sub_2703B4E54(v6 + 32, v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_2705D67D4();
  v7 = sub_2705D7CC4();
  MEMORY[0x2743A3A90](v7);

  sub_2703D7E30(&v10);
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  if (v4 < *(v5 + 16))
  {
    v8 = v12;
    v9 = v13;
    result = sub_2703B4E54(v6 + 32, (a3 + 2));
    a3[7] = v4;
    *a3 = v8;
    a3[1] = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_270442B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v5) = *(a2 + 137);
  v80 = v5 - 3;
  if ((v5 - 3) >= 2u)
  {
    *v104 = 0;
    *&v104[8] = 256;
    sub_2705D5434();
    v88 = __dst[0];
    v86 = BYTE1(__dst[1]);
    v87 = __dst[1];
  }

  else
  {
    *v104 = 0;
    *&v104[8] = 1;
    sub_2705D5434();
    v88 = __dst[0];
    v86 = BYTE1(__dst[1]);
    v87 = __dst[1];
    if (v5 == 4)
    {
      *v104 = 0;
      *&v104[8] = 1;
      goto LABEL_6;
    }
  }

  *v104 = 0;
  *&v104[8] = 256;
LABEL_6:
  sub_2705D5434();
  v85 = __dst[0];
  v83 = BYTE1(__dst[1]);
  v84 = __dst[1];
  sub_2703FC5C0(a1 + 16, __dst, &qword_2807D2878);
  sub_2703B4E54(__dst, v104);
  KeyPath = swift_getKeyPath();
  v81 = swift_allocObject();
  sub_2703B291C(v104, v81 + 16);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v6 = *(a2 + 56);
  v89 = v5;
  if (v6 == 254)
  {
    v7 = 0.0;
    v90 = 0.0;
    v94 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 1;
    v92 = 1;
    v96 = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
  }

  else
  {
    v97 = *(a2 + 64);
    v15 = *(a2 + 72);
    v16 = *(a2 + 88);
    v75 = *(a2 + 96);
    v76 = *(a2 + 112);
    v77 = *(a2 + 80);
    v17 = *(a2 + 120);
    v91 = *(a2 + 128);
    v93 = *(a2 + 136);
    v95 = *(a2 + 104);
    v14 = v6 == 255;
    if (v6 == 255)
    {
      v10 = 0.0;
    }

    else
    {
      v5 = *(a2 + 48);
      v18 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v20 = *v18;
      v19 = v18[1];
      __dst[0] = v20;
      __dst[1] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830);
      sub_2705D5E54();
      v21 = sub_2704408D0();

      v22 = *(a2 + 152);
      if (v22 == 255)
      {
        v23 = 0.0;
      }

      else if (v22)
      {
        v23 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v23 = *(a2 + 144);
      }

      v24 = v5;
      LOBYTE(v5) = v89;
      v10 = sub_27043DAF0(v89, v24, v6, v21, v23);
    }

    v13 = v16 == 255;
    if (v16 == 255)
    {
      v9 = 0.0;
    }

    else
    {
      v25 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v27 = *v25;
      v26 = v25[1];
      __dst[0] = v27;
      __dst[1] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830);
      sub_2705D5E54();
      v28 = sub_2704408D0();

      v29 = *(a2 + 152);
      if (v29 == 255)
      {
        v30 = 0.0;
      }

      else if (v29)
      {
        v30 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v30 = *(a2 + 144);
      }

      v9 = sub_27043DAF0(v5, v77, v16, v28, v30);
    }

    v78 = v17;
    if (v15 == 255)
    {
      v37 = 0.0;
    }

    else
    {
      v31 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v33 = *v31;
      v32 = v31[1];
      __dst[0] = v33;
      __dst[1] = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830);
      sub_2705D5E54();
      v34 = sub_2704408D0();

      v35 = *(a2 + 152);
      if (v35 == 255)
      {
        v36 = 0.0;
      }

      else if (v35)
      {
        v36 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v36 = *(a2 + 144);
      }

      v37 = sub_27043DAF0(v5, v97, v15, v34, v36);
    }

    v96 = v95 == 255;
    v12 = v15 == 255;
    if (v95 == 255)
    {
      v94 = 0.0;
      v43 = v93;
    }

    else
    {
      v38 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v40 = *v38;
      v39 = v38[1];
      __dst[0] = v40;
      __dst[1] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830);
      sub_2705D5E54();
      v41 = sub_2704408D0();

      v42 = *(a2 + 152);
      v43 = v93;
      if (v42 == 255)
      {
        v44 = 0.0;
      }

      else if (v42)
      {
        v44 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v44 = *(a2 + 144);
      }

      v94 = sub_27043DAF0(v5, v75, v95, v41, v44);
    }

    v92 = v43 == 255;
    if (v43 == 255)
    {
      v90 = 0.0;
    }

    else
    {
      v45 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v47 = *v45;
      v46 = v45[1];
      __dst[0] = v47;
      __dst[1] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830);
      sub_2705D5E54();
      v48 = sub_2704408D0();

      v49 = *(a2 + 152);
      if (v49 == 255)
      {
        v50 = 0.0;
      }

      else if (v49)
      {
        v50 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v50 = *(a2 + 144);
      }

      v90 = sub_27043DAF0(v5, v91, v43, v48, v50);
    }

    v8 = v37;
    if (v78 == 255)
    {
      v7 = 0.0;
      v11 = 1;
    }

    else
    {
      v51 = (a2 + *(type metadata accessor for HorizontalStackComponentModelView(0) + 20));
      v53 = *v51;
      v52 = v51[1];
      __dst[0] = v53;
      __dst[1] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830);
      sub_2705D5E54();
      v54 = sub_2704408D0();

      v55 = *(a2 + 152);
      if (v55 == 255)
      {
        v56 = 0.0;
      }

      else if (v55)
      {
        v56 = dbl_2705EE9D0[*(a2 + 144)];
      }

      else
      {
        v56 = *(a2 + 144);
      }

      v57 = sub_27043DAF0(v5, v76, v78, v54, v56);
      v11 = 0;
      v7 = v57;
    }
  }

  sub_2705D60A4();
  v58 = v10;
  if (v14)
  {
    v58 = -INFINITY;
  }

  v59 = v9;
  if (v13)
  {
    v59 = v58;
  }

  v60 = v8;
  if (v12)
  {
    v60 = v59;
  }

  if (v58 > v59 || v59 > v60)
  {
    goto LABEL_77;
  }

  v62 = v94;
  if (v96)
  {
    v62 = -INFINITY;
  }

  v63 = v90;
  if (v92)
  {
    v63 = v62;
  }

  v64 = v7;
  if (v11)
  {
    v64 = v63;
  }

  if (v62 > v63 || v63 > v64)
  {
LABEL_77:
    sub_2705D7A84();
    v66 = sub_2705D56A4();
    sub_2705D4C04();
  }

  sub_2705D5094();
  v117 = 0;
  v116 = 0;
  if (v80 >= 2)
  {
    if (v89 == 5)
    {
      sub_2703FC5C0(a1 + 16, __dst, &qword_2807D2878);
      v70 = *(*(a2 + 40) + 16) - 1;
      v71 = __dst[5];
      __swift_destroy_boxed_opaque_existential_1(__dst);
      *v104 = 0;
      if (v71 >= v70)
      {
        v72 = 256;
      }

      else
      {
        v72 = 1;
      }

      *&v104[8] = v72;
      sub_2705D5434();
      if (BYTE1(__dst[1]))
      {
        v73 = 256;
      }

      else
      {
        v73 = 0;
      }

      *v104 = __dst[0];
      *&v104[8] = v73 | LOBYTE(__dst[1]);
      v104[10] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2898);
      sub_270444888();
      sub_2705D5434();
      *v104 = __dst[0];
      *&v104[10] = BYTE2(__dst[1]) != 0;
      *&v104[8] = __dst[1];
    }

    else
    {
      *v104 = 0;
      *&v104[8] = 0x1000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2880);
    sub_2704447FC();
    sub_2705D5434();
    v67 = __dst[0];
    v68 = LOWORD(__dst[1]) | (BYTE2(__dst[1]) << 16);
    v69 = BYTE3(__dst[1]);
    goto LABEL_91;
  }

  *v104 = 0;
  *&v104[8] = 1;
  v104[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2898);
  sub_270444888();
  sub_2705D5434();
  *v104 = __dst[0];
  *&v104[10] = BYTE2(__dst[1]) != 0;
  *&v104[8] = __dst[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2880);
  sub_2704447FC();
  sub_2705D5434();
  v67 = __dst[0];
  v68 = LOWORD(__dst[1]) | (BYTE2(__dst[1]) << 16);
  v69 = BYTE3(__dst[1]);
  if (v89 != 4)
  {
LABEL_91:
    *v104 = 0;
    *&v104[8] = 256;
    goto LABEL_92;
  }

  *v104 = 0;
  *&v104[8] = 1;
LABEL_92:
  sub_2705D5434();
  v108 = v88;
  v109 = v87;
  v110 = v86;
  v105 = v85;
  v106 = v84;
  v107 = v83;
  v111[0] = &v108;
  v111[1] = &v105;
  *v104 = KeyPath;
  v104[8] = 0;
  *&v104[9] = *v115;
  *&v104[12] = *&v115[3];
  *&v104[16] = sub_2703E2B30;
  *&v104[24] = v81;
  v104[32] = 0;
  *&v104[33] = *v114;
  *&v104[36] = *&v114[3];
  *&v104[40] = sub_2703DF000;
  *&v104[48] = 0;
  memcpy(&v104[56], __src, 0x70uLL);
  v100 = v67;
  v102 = BYTE2(v68);
  v101 = v68;
  v103 = v69;
  v111[2] = v104;
  v111[3] = &v100;
  v98 = __dst[0];
  v99 = __dst[1];
  v111[4] = &v98;
  sub_27043D84C(v111, a3);
  memcpy(__dst, v104, sizeof(__dst));
  return sub_2703C2EFC(__dst, &qword_2807D28A0);
}

uint64_t sub_270443718(double a1)
{
  type metadata accessor for HorizontalStackComponentModelView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2830);
  sub_2705D5E54();
  sub_270440970(a1);
}

unint64_t sub_27044379C()
{
  result = qword_2807D2740;
  if (!qword_2807D2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2740);
  }

  return result;
}

unint64_t sub_2704437F0()
{
  result = qword_2807D2748;
  if (!qword_2807D2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2748);
  }

  return result;
}

unint64_t sub_270443844()
{
  result = qword_2807D2750;
  if (!qword_2807D2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HorizontalStackComponentModel.SizingConstraints.Constraint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x270443964);
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

_BYTE *sub_2704439C0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x270443A5CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_270443A98()
{
  result = qword_2807D2778;
  if (!qword_2807D2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2778);
  }

  return result;
}

unint64_t sub_270443AF0()
{
  result = qword_2807D2780;
  if (!qword_2807D2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2780);
  }

  return result;
}

unint64_t sub_270443B48()
{
  result = qword_2807D2788;
  if (!qword_2807D2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D2788);
  }

  return result;
}