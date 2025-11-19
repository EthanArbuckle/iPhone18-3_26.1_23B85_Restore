uint64_t sub_21DFBAD38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E141614();
  v3 = sub_21E141584();
  KeyPath = swift_getKeyPath();
  v5 = sub_21E1404B4();
  v6 = sub_21E140964();
  v7 = sub_21E140954();
  sub_21E140954();
  if (sub_21E140954() != v6)
  {
    v7 = sub_21E140954();
  }

  result = sub_21E13F374();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_21DFBAE1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for IdentifiableURL();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for ImageSearchAdsBlockView();
  sub_21DF236C0(v5, v2, &qword_27CEA8668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
  sub_21E141724();
  return sub_21DF23614(v5, &qword_27CEA8668);
}

uint64_t sub_21DFBAF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E13D264();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_21DFBAFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v24[1] = a5;
  v9 = type metadata accessor for ImageSearchAdsBlockView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8CB0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v24 - v15;
  sub_21DFA7E94(a2, v31);
  sub_21DFBB894(a3, v12);
  v17 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_21DF0DBF0(v31, v18 + 16);
  sub_21DFBB8F8(v12, v18 + v17);
  v24[4] = a2;
  v24[5] = a1;
  v25 = a4;
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8CD8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8CE0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8CE8);
  v21 = sub_21DFBBBFC();
  v22 = sub_21DFBBD2C();
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  swift_getOpaqueTypeConformance2();
  sub_21E141764();
  sub_21DF23E5C(&qword_27CEA8CB8, &qword_27CEA8CB0);
  sub_21DFBBB34();
  sub_21E140DD4();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_21DFBB298(void *a1, uint64_t a2)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = sub_21E13FF94();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E13D264();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13EA24();
  v16 = MKBGetDeviceLockState();
  if (v16 && v16 != 3)
  {
    v18 = v23 + *(type metadata accessor for ImageSearchAdsBlockView() + 24);
    v19 = *v18;
    if (*(v18 + 16) == 1)
    {
    }

    else
    {

      sub_21E142574();
      v20 = sub_21E1408C4();
      sub_21E13F184();

      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DF446B8();
      (*(v22 + 8))(v11, v9);
      v19 = v24;
    }

    LOBYTE(v24) = 1;
    v19(v15, &v24);
  }

  else
  {
    (*(v13 + 16))(v8, v15, v12);
    v17 = type metadata accessor for IdentifiableURL();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    type metadata accessor for ImageSearchAdsBlockView();
    sub_21DF236C0(v8, v5, &qword_27CEA8668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
    sub_21E141724();
    sub_21DF23614(v8, &qword_27CEA8668);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_21DFBB640(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8CE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v11 = type metadata accessor for ImageSearchAdCardView(0);
  sub_21DFA7E94(a1, v10 + v11[5]);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  swift_storeEnumTagMultiPayload();
  *(v10 + v11[6]) = a2;
  *(v10 + v11[7]) = a3;
  *(v10 + *(v8 + 36)) = sub_21E1404A4();
  v14 = a4;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8CE8);
  sub_21DFBBBFC();
  sub_21DFBBD2C();
  sub_21E140DE4();
  return sub_21DF23614(v10, &qword_27CEA8CE0);
}

double sub_21DFBB7CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + *(type metadata accessor for ImageSearchAdsBlockView() + 36) + 2) != 1)
  {
    goto LABEL_6;
  }

  if (qword_280F69E50 != -1)
  {
    swift_once();
  }

  if (byte_280F6FD20 == 1)
  {
    sub_21DFA7E94(a2, v7);
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21DFBB894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSearchAdsBlockView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFBB8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSearchAdsBlockView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DFBB974()
{
  result = qword_27CEA8C58;
  if (!qword_27CEA8C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8C60);
    sub_21DF23E5C(&qword_27CEA8C48, &qword_27CEA8C30);
    sub_21DFBBCE4(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8C58);
  }

  return result;
}

uint64_t sub_21DFBBA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ImageSearchAdsBlockView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  v9 = *(v8 + *(v7 + 64));

  return sub_21DFBAFC8(a1, a2, v8, v9, a3);
}

unint64_t sub_21DFBBB34()
{
  result = qword_27CEA8CC0;
  if (!qword_27CEA8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8CC0);
  }

  return result;
}

uint64_t sub_21DFBBB88()
{
  v1 = *(type metadata accessor for ImageSearchAdsBlockView() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_21DFBB298((v0 + 16), v2);
}

unint64_t sub_21DFBBBFC()
{
  result = qword_27CEA8CF0;
  if (!qword_27CEA8CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8CE0);
    sub_21DFBBCE4(&qword_27CEA8CF8, type metadata accessor for ImageSearchAdCardView);
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8CF0);
  }

  return result;
}

uint64_t sub_21DFBBCE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21DFBBD2C()
{
  result = qword_27CEA8D00;
  if (!qword_27CEA8D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8CE8);
    sub_21DFBBDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8D00);
  }

  return result;
}

unint64_t sub_21DFBBDB0()
{
  result = qword_27CEA8D08;
  if (!qword_27CEA8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8D08);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for ImageSearchAdsBlockView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E1401B4();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  sub_21DF446B8();
  v7 = v3 + v1[7];
  v8 = type metadata accessor for IdentifiableURL();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = sub_21E13D264();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);

  v10 = v1[8];
  v11 = sub_21E13E2A4();
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_21DFBC0C0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ImageSearchAdsBlockView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21DFBC134(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DFBC1B8()
{
  result = qword_27CEA8D28;
  if (!qword_27CEA8D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D30);
    sub_21DFBC270();
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8D28);
  }

  return result;
}

unint64_t sub_21DFBC270()
{
  result = qword_27CEA8D38;
  if (!qword_27CEA8D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D40);
    sub_21DF23E5C(&unk_280F68DC0, &qword_27CEA8D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8D38);
  }

  return result;
}

unint64_t sub_21DFBC39C()
{
  result = qword_27CEA8D58;
  if (!qword_27CEA8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8D58);
  }

  return result;
}

uint64_t sub_21DFBC40C()
{
  v6 = 540690472;
  v7 = 0xE400000000000000;
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_21E13E5A4();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_21E13E2C4();
  v1 = sub_21E142464();
  MEMORY[0x223D52A60](v1);

  __swift_destroy_boxed_opaque_existential_0(v4);
  MEMORY[0x223D52A60](0x203A57202CLL, 0xE500000000000000);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_21E13E5A4();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_21E13E2B4();
  v2 = sub_21E142464();
  MEMORY[0x223D52A60](v2);

  __swift_destroy_boxed_opaque_existential_0(v4);
  MEMORY[0x223D52A60](41, 0xE100000000000000);
  return v6;
}

uint64_t sub_21DFBC540@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88A0);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v35 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88B0);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88F8);
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v48 = v1;
  v52 = xmmword_21E149900;
  v53 = 0;
  v14 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8908);
  sub_21DF23E5C(&qword_27CEA8910, &qword_27CEA8908);
  v41 = v13;
  v35 = v15;
  sub_21E141AB4();
  v47 = v1;
  v52 = xmmword_21E14A090;
  v53 = 0;
  v54 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88D0);
  sub_21DF23E5C(&qword_27CEA88D8, &qword_27CEA88D0);
  v16 = v9;
  sub_21E141AB4();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_21E13E554();
  if (v51)
  {
    v17 = sub_21DF0DBF0(&v49, &v52);
    MEMORY[0x28223BE20](v17);
    *(&v35 - 2) = v1;
    *(&v35 - 1) = &v52;
    *&v49 = 0xD000000000000013;
    *(&v49 + 1) = 0x800000021E15C220;
    v50 = 0;
    v51 = MEMORY[0x277D84F90];
    v18 = v46;
    sub_21E141AB4();
    (*(v43 + 56))(v18, 0, 1, v40);
    __swift_destroy_boxed_opaque_existential_0(&v52);
  }

  else
  {
    sub_21DF23614(&v49, &qword_27CEA8D80);
    (*(v43 + 56))(v46, 1, 1, v40);
  }

  v19 = v43;
  v20 = *(v43 + 16);
  v21 = v42;
  v22 = v40;
  v20(v42, v41, v40);
  v23 = v37;
  v24 = *(v37 + 16);
  v25 = v16;
  v36 = v16;
  v26 = v38;
  v24(v44, v25, v38);
  sub_21DFBDF4C(v46, v45);
  v27 = v39;
  v20(v39, v21, v22);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8D88);
  v29 = v44;
  v24(&v27[*(v28 + 48)], v44, v26);
  v30 = &v27[*(v28 + 64)];
  v31 = v45;
  sub_21DFBDF4C(v45, v30);
  sub_21DF23614(v46, &qword_27CEA88A0);
  v32 = *(v23 + 8);
  v32(v36, v26);
  v33 = *(v19 + 8);
  v33(v41, v22);
  sub_21DF23614(v31, &qword_27CEA88A0);
  v32(v29, v26);
  return (v33)(v42, v22);
}

uint64_t sub_21DFBCB74@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918);
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - v9;
  MEMORY[0x28223BE20](v10);
  v52 = &v45 - v11;
  MEMORY[0x28223BE20](v12);
  v47 = &v45 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_21E13E594();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  v57 = v20;
  v58 = v22;
  v59 = 0x746954206D657449;
  v60 = 0xEA0000000000656CLL;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920);
  sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920);
  v51 = v19;
  sub_21E141764();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_21E13E534();
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v26;
  v53 = v24;
  v54 = v26;
  v55 = 0x4E206E69616D6F44;
  v56 = 0xEB00000000656D61;

  v28 = v16;
  sub_21E141764();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13E544();
  v29 = sub_21E13D264();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v5, 1, v29) == 1)
  {
    sub_21DF23614(v5, &qword_27CEA9990);
    v31 = 0xE300000000000000;
    v32 = 7104878;
  }

  else
  {
    v32 = sub_21E13D1B4();
    v31 = v33;
    (*(v30 + 8))(v5, v29);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v31;
  MEMORY[0x28223BE20](v34);
  *(&v45 - 4) = v32;
  *(&v45 - 3) = v31;
  *(&v45 - 2) = 0x2065746973626557;
  *(&v45 - 1) = 0xEB000000004C5255;

  v35 = v47;
  sub_21E141764();

  v36 = *(v6 + 16);
  v37 = v52;
  v38 = v46;
  v36(v52, v51, v46);
  v39 = v48;
  v36(v48, v28, v38);
  v40 = v49;
  v36(v49, v35, v38);
  v41 = v50;
  v36(v50, v37, v38);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8930);
  v36(&v41[*(v42 + 48)], v39, v38);
  v36(&v41[*(v42 + 64)], v40, v38);
  v43 = *(v6 + 8);
  v43(v35, v38);
  v43(v28, v38);
  v43(v51, v38);
  v43(v40, v38);
  v43(v39, v38);
  return (v43)(v52, v38);
}

uint64_t sub_21DFBD1D0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = sub_21E13D264();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v33 - v11;
  MEMORY[0x28223BE20](v12);
  v35 = &v33 - v13;
  MEMORY[0x28223BE20](v14);
  v34 = &v33 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13E5A4();
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_21E13E2D4();
  v16 = sub_21E13D1B4();
  v18 = v17;
  (*(v4 + 8))(v6, v3);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  v43 = v16;
  v44 = v18;
  strcpy(v45, "Thumbnail URL");
  v45[7] = -4864;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920);
  sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920);
  sub_21E141764();

  __swift_destroy_boxed_opaque_existential_0(v46);
  v20 = sub_21DFBC40C();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  v39 = v20;
  v40 = v22;
  v41 = 0xD000000000000010;
  v42 = 0x800000021E15C030;

  v24 = v35;
  sub_21E141764();

  v25 = *(v8 + 16);
  v26 = v36;
  v27 = v34;
  v25(v36, v34, v7);
  v28 = v37;
  v25(v37, v24, v7);
  v29 = v38;
  v25(v38, v26, v7);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8978);
  v25(&v29[*(v30 + 48)], v28, v7);
  v31 = *(v8 + 8);
  v31(v24, v7);
  v31(v27, v7);
  v31(v28, v7);
  return (v31)(v26, v7);
}

uint64_t sub_21DFBD66C@<X0>(void *a1@<X1>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8918);
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - v6;
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - v8;
  MEMORY[0x28223BE20](v9);
  v40 = &v38 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14);
  v39 = &v38 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_21E13E694();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  v53 = v16;
  v54 = v18;
  strcpy(v55, "Currency Code");
  v55[7] = -4864;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8920);
  sub_21DF23E5C(&qword_27CEA8928, &qword_27CEA8920);
  sub_21E141764();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_21E13E6A4();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  v49 = v20;
  v50 = v22;
  v51 = 0x6563697250;
  v52 = 0xE500000000000000;

  sub_21E141764();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = sub_21E13E684();
  v24 = sub_21E142AB4();
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v26;
  v46 = v24;
  v47 = v26;
  strcpy(v48, "Price Micros");
  HIBYTE(v48[6]) = 0;
  v48[7] = -5120;

  v28 = v40;
  sub_21E141764();

  v29 = v45;
  v30 = *(v44 + 16);
  v31 = v39;
  v30(v45, v39, v3);
  v32 = v41;
  v30(v41, v13, v3);
  v33 = v42;
  v30(v42, v28, v3);
  v34 = v43;
  v30(v43, v29, v3);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8930);
  v30(&v34[*(v35 + 48)], v32, v3);
  v30(&v34[*(v35 + 64)], v33, v3);
  v36 = *(v44 + 8);
  v36(v28, v3);
  v36(v13, v3);
  v36(v31, v3);
  v36(v33, v3);
  v36(v32, v3);
  return (v36)(v45, v3);
}

void sub_21DFBDBF0()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_21E1420F4();
  [v0 setString_];
}

uint64_t sub_21DFBDC84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8D60);
  sub_21DF23E5C(&qword_27CEA8D68, &qword_27CEA8D60);
  return sub_21E141684();
}

uint64_t sub_21DFBDD54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8D70);
  sub_21DF23E5C(&qword_27CEA8D78, &qword_27CEA8D70);
  return sub_21E13F394();
}

uint64_t sub_21DFBDE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v9 = MEMORY[0x277D84F90];
  *(a5 + 16) = 0;
  *(a5 + 24) = v9;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = 0;
  *(a5 + 56) = v9;

  sub_21DF42BEC(a1, a2, 0);

  sub_21DF42BEC(a3, a4, 0);

  sub_21DF3DE8C(a3, a4, 0);

  sub_21DF3DE8C(a1, a2, 0);
}

uint64_t sub_21DFBDEF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E141634();
  *a1 = result;
  return result;
}

uint64_t sub_21DFBDF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21DFBE01C()
{
  sub_21DFB48FC();
  if (v0 <= 0x3F)
  {
    sub_21DFBE0B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21DFBE0B8()
{
  result = qword_27CEA8DB8;
  if (!qword_27CEA8DB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CEA8DB8);
  }

  return result;
}

uint64_t sub_21DFBE138(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  return sub_21E141604();
}

uint64_t sub_21DFBE17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8DF0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for ImageSearchCardImageView(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v30 - v16);
  v18 = type metadata accessor for ImageSearchCardView(0);
  sub_21DFA7E94(a1 + v18[5], v17 + v12[7]);
  v19 = v18[7];
  v20 = *(a1 + v18[6]);
  v21 = *(a1 + v19);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  swift_storeEnumTagMultiPayload();
  *(v17 + v12[8]) = v20;
  *(v17 + v12[9]) = v21;
  *(v17 + v12[10]) = 0x4030000000000000;
  *(v17 + v12[11]) = 1;
  *v10 = sub_21E1401C4();
  *(v10 + 1) = 0x4014000000000000;
  v10[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8DF8);
  sub_21DFBE440(a1, &v10[*(v22 + 44)]);
  LOBYTE(v20) = sub_21E140904();
  sub_21E13F374();
  v23 = &v10[*(v5 + 44)];
  *v23 = v20;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_21DFC2F6C(v17, v14, type metadata accessor for ImageSearchCardImageView);
  sub_21DF236C0(v10, v7, &qword_27CEA8DF0);
  sub_21DFC2F6C(v14, a2, type metadata accessor for ImageSearchCardImageView);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E00);
  sub_21DF236C0(v7, a2 + *(v28 + 48), &qword_27CEA8DF0);
  sub_21DF23614(v10, &qword_27CEA8DF0);
  sub_21DFC301C(v17, type metadata accessor for ImageSearchCardImageView);
  sub_21DF23614(v7, &qword_27CEA8DF0);
  return sub_21DFC301C(v14, type metadata accessor for ImageSearchCardImageView);
}

uint64_t sub_21DFBE440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E08);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = (&v52 - v4);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E10) - 8;
  MEMORY[0x28223BE20](v63);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v52 - v7;
  MEMORY[0x28223BE20](v8);
  v62 = &v52 - v9;
  v56 = sub_21E140A64();
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E1401B4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E18);
  MEMORY[0x28223BE20](v17 - 8);
  v59 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v57 = &v52 - v20;
  v21 = *(type metadata accessor for ImageSearchCardView(0) + 20);
  v58 = a1;
  __swift_project_boxed_opaque_existential_1((a1 + v21), *(a1 + v21 + 24));
  *&v78[0] = sub_21E13E594();
  *(&v78[0] + 1) = v22;
  sub_21DF252E0();
  v23 = sub_21E140C94();
  v54 = v24;
  v55 = v23;
  v26 = v25;
  v53 = v27;
  KeyPath = swift_getKeyPath();
  sub_21E021E10(v16);
  v29 = sub_21E1401A4();
  (*(v14 + 8))(v16, v13);
  if (v29)
  {
    v30 = 5;
  }

  else
  {
    v30 = 2;
  }

  v31 = swift_getKeyPath();
  v32 = v26 & 1;
  v81 = v26 & 1;
  v80 = 0;
  sub_21E140994();
  sub_21E140A04();
  sub_21E140A54();

  v33 = v56;
  (*(v10 + 104))(v12, *MEMORY[0x277CE0A10], v56);
  v34 = sub_21E140A94();

  (*(v10 + 8))(v12, v33);
  v35 = swift_getKeyPath();
  sub_21E141CD4();
  sub_21E13FCE4();
  *&v66 = v55;
  *(&v66 + 1) = v54;
  LOBYTE(v67) = v32;
  *(&v67 + 1) = v53;
  *&v68 = KeyPath;
  BYTE8(v68) = 0;
  *&v69 = v31;
  *(&v69 + 1) = v30;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = v35;
  *&v71 = v34;
  WORD4(v77[1]) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E20);
  sub_21DFC2288();
  v36 = v57;
  sub_21E141164();
  v78[10] = v76;
  v79[0] = v77[0];
  *(v79 + 10) = *(v77 + 10);
  v78[6] = v72;
  v78[7] = v73;
  v78[8] = v74;
  v78[9] = v75;
  v78[2] = v68;
  v78[3] = v69;
  v78[4] = v70;
  v78[5] = v71;
  v78[0] = v66;
  v78[1] = v67;
  sub_21DF23614(v78, &qword_27CEA8E20);
  v37 = sub_21E140004();
  v38 = v60;
  *v60 = v37;
  v38[1] = 0x4018000000000000;
  *(v38 + 16) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E60);
  sub_21DFBEB10(v58, v38 + *(v39 + 44));
  sub_21E141CC4();
  sub_21E13FCE4();
  v40 = v38;
  v41 = v61;
  sub_21DF3DE9C(v40, v61, &qword_27CEA8E08);
  v42 = v62;
  v43 = (v41 + *(v63 + 44));
  v44 = v71;
  v43[4] = v70;
  v43[5] = v44;
  v43[6] = v72;
  v45 = v67;
  *v43 = v66;
  v43[1] = v45;
  v46 = v69;
  v43[2] = v68;
  v43[3] = v46;
  sub_21DF3DE9C(v41, v42, &qword_27CEA8E10);
  v47 = v59;
  sub_21DF236C0(v36, v59, &qword_27CEA8E18);
  v48 = v64;
  sub_21DF236C0(v42, v64, &qword_27CEA8E10);
  v49 = v65;
  sub_21DF236C0(v47, v65, &qword_27CEA8E18);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E68);
  sub_21DF236C0(v48, v49 + *(v50 + 48), &qword_27CEA8E10);
  sub_21DF23614(v42, &qword_27CEA8E10);
  sub_21DF23614(v36, &qword_27CEA8E18);
  sub_21DF23614(v48, &qword_27CEA8E10);
  return sub_21DF23614(v47, &qword_27CEA8E18);
}

uint64_t sub_21DFBEB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E70);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v53 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E78);
  MEMORY[0x28223BE20](v54);
  v8 = &v53 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E80);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - v11;
  v13 = sub_21E13D264();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E88);
  MEMORY[0x28223BE20](v17 - 8);
  v58 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v57 = &v53 - v20;
  v21 = (a1 + *(type metadata accessor for ImageSearchCardView(0) + 20));
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_21E13E564();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21DF23614(v12, &qword_27CEA9990);
    v22 = v57;
    (*(v55 + 56))(v57, 1, 1, v56);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_21DFBF314(a1, v16, v8);
    sub_21E141CC4();
    sub_21E13F664();
    v23 = &v8[*(v54 + 36)];
    v24 = v68[3];
    *v23 = v68[2];
    *(v23 + 1) = v24;
    *(v23 + 2) = v68[4];
    sub_21DFC259C();
    v25 = v53;
    sub_21E141164();
    sub_21DF23614(v8, &qword_27CEA8E78);
    v26 = v56;
    *(v25 + *(v56 + 36)) = 1;
    v22 = v57;
    sub_21DF3DE9C(v25, v57, &qword_27CEA8E80);
    (*(v55 + 56))(v22, 0, 1, v26);
    (*(v14 + 8))(v16, v13);
  }

  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  *&v67[0] = sub_21E13E534();
  *(&v67[0] + 1) = v27;
  sub_21DF252E0();
  v28 = sub_21E140C94();
  v30 = v29;
  v32 = v31;
  sub_21E140994();
  v33 = sub_21E140C44();
  v35 = v34;
  v37 = v36;

  sub_21DF3DE8C(v28, v30, v32 & 1);

  LODWORD(v67[0]) = sub_21E1404A4();
  DWORD1(v67[0]) = 1053609165;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8E90);
  sub_21DF23E5C(&qword_27CEA8E98, &qword_27CEA8E90);
  v38 = sub_21E140C24();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_21DF3DE8C(v33, v35, v37 & 1);

  KeyPath = swift_getKeyPath();
  v66 = v42 & 1;
  v65 = 0;
  *&v62 = v38;
  *(&v62 + 1) = v40;
  LOBYTE(v63) = v42 & 1;
  *(&v63 + 1) = v44;
  *v64 = KeyPath;
  *&v64[8] = 1;
  v64[16] = 0;
  *&v64[17] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8EA0);
  sub_21DFC2510();
  v46 = v59;
  sub_21E141164();
  v67[0] = v62;
  v67[1] = v63;
  v68[0] = *v64;
  *(v68 + 15) = *&v64[15];
  sub_21DF23614(v67, &qword_27CEA8EA0);
  v47 = v58;
  sub_21DF236C0(v22, v58, &qword_27CEA8E88);
  v48 = v60;
  sub_21DF236C0(v46, v60, &qword_27CEA8E70);
  v49 = v61;
  sub_21DF236C0(v47, v61, &qword_27CEA8E88);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8EB0);
  sub_21DF236C0(v48, v49 + *(v50 + 48), &qword_27CEA8E70);
  v51 = v49 + *(v50 + 64);
  *v51 = 0;
  *(v51 + 8) = 0;
  sub_21DF23614(v46, &qword_27CEA8E70);
  sub_21DF23614(v22, &qword_27CEA8E88);
  sub_21DF23614(v48, &qword_27CEA8E70);
  return sub_21DF23614(v47, &qword_27CEA8E88);
}

uint64_t sub_21DFBF314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v45 = a3;
  v4 = sub_21E141624();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8EE8);
  MEMORY[0x28223BE20](v44);
  v9 = &v39 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F30);
  MEMORY[0x28223BE20](v42);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F28);
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v19 = &v39 - v18;
  v20 = (a1 + *(type metadata accessor for ImageSearchCardView(0) + 20));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if (sub_21DFBE138(v21, v22, MEMORY[0x277D79518]))
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v23 = sub_21E141664();
    (*(v5 + 8))(v7, v4);
    sub_21E141CC4();
    sub_21E13F664();
    v47 = 1;
    *&v46[6] = v48;
    *&v46[22] = v49;
    *&v46[38] = v50;
    v24 = &v9[*(v44 + 36)];
    v25 = *(sub_21E13FCA4() + 20);
    v26 = *MEMORY[0x277CE0118];
    v27 = sub_21E140144();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #2.0 }

    *v24 = _Q0;
    *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18) + 36)] = 256;
    v33 = *&v46[16];
    *(v9 + 18) = *v46;
    *v9 = v23;
    *(v9 + 1) = 0;
    *(v9 + 8) = 1;
    *(v9 + 34) = v33;
    *(v9 + 50) = *&v46[32];
    *(v9 + 8) = *&v46[46];
    sub_21DF236C0(v9, v11, &qword_27CEA8EE8);
    swift_storeEnumTagMultiPayload();
    sub_21DFC2764();
    sub_21DF23E5C(&qword_27CEA8F20, &qword_27CEA8F28);
    sub_21E1402F4();

    return sub_21DF23614(v9, &qword_27CEA8EE8);
  }

  else
  {
    v35 = sub_21E13D264();
    v36 = *(v35 - 8);
    (*(v36 + 16))(v17, v41, v35);
    (*(v36 + 56))(v17, 0, 1, v35);
    sub_21DF236C0(v17, v14, &qword_27CEA9990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F38);
    sub_21DFC292C();
    sub_21E13F334();
    sub_21DF23614(v17, &qword_27CEA9990);
    v37 = v40;
    v38 = v43;
    (*(v40 + 16))(v11, v19, v43);
    swift_storeEnumTagMultiPayload();
    sub_21DFC2764();
    sub_21DF23E5C(&qword_27CEA8F20, &qword_27CEA8F28);
    sub_21E1402F4();
    return (*(v37 + 8))(v19, v38);
  }
}

uint64_t sub_21DFBF960()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8DD8);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_21E1401C4();
  *(v3 + 1) = 0x4020000000000000;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8DE0);
  sub_21DFBE17C(v0, &v3[*(v4 + 44)]);
  sub_21DF23E5C(&qword_27CEA8DE8, &qword_27CEA8DD8);
  sub_21E141164();
  return sub_21DF23614(v3, &qword_27CEA8DD8);
}

uint64_t sub_21DFBFAA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ImageSearchCardImageView(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v4 + 20)), *(v1 + *(v4 + 20) + 24));
  sub_21E13E5A4();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_21E13E2B4();
  v6 = v5;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_21E13E2C4();
  v8 = v6 / v7;
  v9 = 1.6;
  if (v8 <= 1.6)
  {
    v9 = v8;
  }

  if (v8 <= 0.8)
  {
    v9 = 0.8;
  }

  v10 = v8 != v9;
  *a1 = sub_21E141CC4();
  a1[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F98);
  sub_21DFBFBC8(v14, v10, v2, a1 + *(v12 + 44));
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_21DFBFBC8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v154 = a3;
  v159 = a4;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B38);
  MEMORY[0x28223BE20](v142);
  v144 = &v141 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B40);
  MEMORY[0x28223BE20](v143);
  v147 = &v141 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B48);
  v156 = *(v8 - 8);
  v157 = v8;
  MEMORY[0x28223BE20](v8);
  v146 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v145 = &v141 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B50);
  MEMORY[0x28223BE20](v12 - 8);
  v158 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v161 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FA0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v141 - v17;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FA8);
  MEMORY[0x28223BE20](v151);
  v20 = &v141 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FB0);
  MEMORY[0x28223BE20](v21);
  v152 = &v141 - v22;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FB8);
  MEMORY[0x28223BE20](v150);
  v24 = &v141 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FC0);
  MEMORY[0x28223BE20](v148);
  v155 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v149 = &v141 - v27;
  MEMORY[0x28223BE20](v28);
  v160 = &v141 - v29;
  v153 = v18;
  sub_21DFC08BC(a1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13E2B4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13E2C4();
  v31 = v30;
  if (a2)
  {
    *&v32 = 300.0;
  }

  else
  {
    *&v32 = 0.0;
  }

  v33 = sub_21E141CC4();
  v35 = v34;
  v36 = *&v32;
  if ((a2 & 1) == 0)
  {
    v36 = v31;
  }

  if (v31 > v36)
  {
    v141 = v33;
    sub_21E142574();
    v37 = sub_21E1408C4();
    sub_21E13F184();

    v33 = v141;
  }

  v139 = v33;
  v140 = v35;
  v138 = (a2 ^ 1) & 1;
  v137 = v32;
  sub_21E13FCE4();
  sub_21DF3DE9C(v153, v20, &qword_27CEA8FA0);
  v38 = &v20[*(v151 + 36)];
  v39 = v172;
  *(v38 + 4) = v171;
  *(v38 + 5) = v39;
  *(v38 + 6) = v173;
  v40 = v168;
  *v38 = v167;
  *(v38 + 1) = v40;
  v41 = v170;
  *(v38 + 2) = v169;
  *(v38 + 3) = v41;
  v42 = v20;
  v43 = v152;
  sub_21DF3DE9C(v42, v152, &qword_27CEA8FA8);
  v44 = v43 + *(v21 + 36);
  *v44 = 0;
  *(v44 + 8) = 1;
  *(v44 + 9) = a2 & 1;
  sub_21DF3DE9C(v43, v24, &qword_27CEA8FB0);
  v24[*(v150 + 36)] = 1;
  v45 = sub_21E141CC4();
  v47 = v46;
  v48 = v149;
  v49 = &v149[*(v148 + 36)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B70);
  v51 = v154;
  sub_21DFC0ED0(v154, v49 + *(v50 + 36));
  *v49 = v45;
  v49[1] = v47;
  sub_21DF3DE9C(v24, v48, &qword_27CEA8FB8);
  v52 = v160;
  sub_21DF3DE9C(v48, v160, &qword_27CEA8FC0);
  v53 = type metadata accessor for ImageSearchCardImageView(0);
  v54 = v161;
  if ((*(v51 + *(v53 + 36)) & 1) == 0)
  {
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1((v51 + *(v53 + 20)), *(v51 + *(v53 + 20) + 24));
  sub_21E13E554();
  if (!*(&v175 + 1))
  {
    sub_21DF23614(&v174, &qword_27CEA8D80);
LABEL_18:
    (*(v156 + 56))(v54, 1, 1, v157);
    goto LABEL_19;
  }

  sub_21DF0DBF0(&v174, v165);
  __swift_project_boxed_opaque_existential_1(v165, v166);
  v55 = sub_21E13E6B4();
  MEMORY[0x28223BE20](v55);
  v139 = v165;
  v59 = sub_21DFC1ABC(sub_21DFC2F4C, &v137, v57, v58, v56 | ((HIDWORD(v56) & 1) << 32));
  if (!v60)
  {
    __swift_project_boxed_opaque_existential_1(v165, v166);
    v59 = sub_21E13E6A4();
  }

  *&v174 = v59;
  *(&v174 + 1) = v60;
  sub_21DF252E0();
  v61 = sub_21E140C94();
  v63 = v62;
  v65 = v64;
  sub_21E140AA4();
  v66 = sub_21E140C44();
  v68 = v67;
  v70 = v69;

  sub_21DF3DE8C(v61, v63, v65 & 1);

  sub_21E1409E4();
  v71 = sub_21E140BD4();
  v153 = v72;
  v154 = v71;
  v74 = v73;
  v152 = v75;
  sub_21DF3DE8C(v66, v68, v70 & 1);

  v76 = sub_21E140974();
  sub_21E13F374();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v74 & 1;
  v163 = v74 & 1;
  v162 = 0;
  v86 = sub_21E140904();
  sub_21E13F374();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v164 = 0;
  v95 = v144;
  v96 = &v144[*(v142 + 36)];
  sub_21E141BF4();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B80);
  v98 = &v96[*(v97 + 52)];
  v99 = *(sub_21E13FCA4() + 20);
  v100 = *MEMORY[0x277CE0118];
  v101 = sub_21E140144();
  (*(*(v101 - 8) + 104))(&v98[v99], v100, v101);
  __asm { FMOV            V0.2D, #6.0 }

  *v98 = _Q0;
  *&v96[*(v97 + 56)] = 256;
  v107 = v153;
  *v95 = v154;
  *(v95 + 8) = v107;
  *(v95 + 16) = v85;
  *(v95 + 24) = v152;
  *(v95 + 32) = v76;
  *(v95 + 40) = v78;
  *(v95 + 48) = v80;
  *(v95 + 56) = v82;
  *(v95 + 64) = v84;
  *(v95 + 72) = 0;
  *(v95 + 80) = v86;
  *(v95 + 88) = v88;
  *(v95 + 96) = v90;
  *(v95 + 104) = v92;
  *(v95 + 112) = v94;
  *(v95 + 120) = 0;
  v139 = sub_21E141CA4();
  v140 = v108;
  v138 = 0;
  v137 = 0x7FF0000000000000;
  sub_21E13FCE4();
  v109 = v147;
  sub_21DF3DE9C(v95, v147, &qword_27CEA8B38);
  v110 = (v109 + *(v143 + 36));
  v111 = v179;
  v110[4] = v178;
  v110[5] = v111;
  v110[6] = v180;
  v112 = v175;
  *v110 = v174;
  v110[1] = v112;
  v113 = v177;
  v110[2] = v176;
  v110[3] = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E147C80;
  v115 = sub_21E140964();
  *(inited + 32) = v115;
  v116 = sub_21E140934();
  *(inited + 33) = v116;
  v117 = sub_21E140954();
  sub_21E140954();
  if (sub_21E140954() != v115)
  {
    v117 = sub_21E140954();
  }

  sub_21E140954();
  v118 = sub_21E140954();
  v52 = v160;
  v54 = v161;
  if (v118 != v116)
  {
    v117 = sub_21E140954();
  }

  sub_21E13F374();
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v127 = v146;
  sub_21DF3DE9C(v109, v146, &qword_27CEA8B40);
  v128 = v157;
  v129 = v127 + *(v157 + 36);
  *v129 = v117;
  *(v129 + 8) = v120;
  *(v129 + 16) = v122;
  *(v129 + 24) = v124;
  *(v129 + 32) = v126;
  *(v129 + 40) = 0;
  v130 = v127;
  v131 = v145;
  sub_21DF3DE9C(v130, v145, &qword_27CEA8B48);
  sub_21DF3DE9C(v131, v54, &qword_27CEA8B48);
  (*(v156 + 56))(v54, 0, 1, v128);
  __swift_destroy_boxed_opaque_existential_0(v165);
LABEL_19:
  v132 = v155;
  sub_21DF236C0(v52, v155, &qword_27CEA8FC0);
  v133 = v158;
  sub_21DF236C0(v54, v158, &qword_27CEA8B50);
  v134 = v159;
  sub_21DF236C0(v132, v159, &qword_27CEA8FC0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FC8);
  sub_21DF236C0(v133, v134 + *(v135 + 48), &qword_27CEA8B50);
  sub_21DF23614(v54, &qword_27CEA8B50);
  sub_21DF23614(v52, &qword_27CEA8FC0);
  sub_21DF23614(v133, &qword_27CEA8B50);
  return sub_21DF23614(v132, &qword_27CEA8FC0);
}

uint64_t sub_21DFC08BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_21E141624();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FD8);
  MEMORY[0x28223BE20](v26);
  v8 = (&v25 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8FE0);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v16 = &v25 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  if (sub_21DFBE138(v17, v18, MEMORY[0x277D79410]))
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v19 = sub_21E141664();
    (*(v4 + 8))(v6, v3);
    *v8 = v19;
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEA8FE8, &qword_27CEA8FE0);
    swift_retain_n();
    sub_21E1402F4();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21E13E2D4();
    v21 = sub_21E13D264();
    (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
    sub_21DF236C0(v14, v11, &qword_27CEA9990);
    v22 = swift_allocObject();
    v22[2] = sub_21DFC0DBC;
    v22[3] = 0;
    v22[4] = sub_21DFB7CE0;
    v22[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BE8);
    sub_21DFB8FD0();
    sub_21E13F334();
    sub_21DF23614(v14, &qword_27CEA9990);
    v23 = v25;
    v24 = v27;
    (*(v25 + 16))(v8, v16, v27);
    swift_storeEnumTagMultiPayload();
    sub_21DF23E5C(&qword_27CEA8FE8, &qword_27CEA8FE0);
    sub_21E1402F4();
    return (*(v23 + 8))(v16, v24);
  }
}

uint64_t sub_21DFC0DBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21E141624();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2, v4);
  v7 = sub_21E141664();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_21DFC0ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B88);
  MEMORY[0x28223BE20](v55);
  v57 = &v47 - v3;
  v56 = sub_21E13FCA4();
  MEMORY[0x28223BE20](v56);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B90);
  MEMORY[0x28223BE20](v50);
  v52 = &v47 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B98);
  MEMORY[0x28223BE20](v48);
  v8 = &v47 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BA0);
  MEMORY[0x28223BE20](v51);
  v49 = &v47 - v9;
  v10 = sub_21E1404F4();
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8BA8);
  MEMORY[0x28223BE20](v54);
  v53 = &v47 - v13;
  v14 = sub_21E1401B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImageSearchCardImageView(0);
  if (*(a1 + v18[7]) == 1 && (sub_21E021E10(v17), v19 = sub_21E1401A4(), (*(v15 + 8))(v17, v14), (v19 & 1) == 0))
  {
    v26 = *(a1 + v18[8]);
    if (*(a1 + v18[6]) > 1uLL)
    {
      v43 = *(v56 + 20);
      v44 = *MEMORY[0x277CE0118];
      v45 = sub_21E140144();
      (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
      *v5 = v26;
      *(v5 + 1) = v26;
      v46 = MEMORY[0x277CDFC08];
      sub_21DFC2F6C(v5, v52, MEMORY[0x277CDFC08]);
      swift_storeEnumTagMultiPayload();
      sub_21DFB8EC8();
      sub_21DFC2FD4(&qword_27CEA8BC8, MEMORY[0x277CDFC08]);
      v40 = v53;
      sub_21E1402F4();
      v41 = v5;
      v42 = v46;
    }

    else
    {
      sub_21E140344();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = *(v10 + 20);
      v36 = *MEMORY[0x277CE0118];
      v37 = sub_21E140144();
      (*(*(v37 - 8) + 104))(&v12[v35], v36, v37);
      *v12 = v28;
      *(v12 + 1) = v30;
      *(v12 + 2) = v32;
      *(v12 + 3) = v34;
      v38 = MEMORY[0x277CE0550];
      sub_21DFC2F6C(v12, v8, MEMORY[0x277CE0550]);
      swift_storeEnumTagMultiPayload();
      sub_21DFC2FD4(&qword_27CEA8BC0, MEMORY[0x277CE0550]);
      v39 = v49;
      sub_21E1402F4();
      sub_21DF236C0(v39, v52, &qword_27CEA8BA0);
      swift_storeEnumTagMultiPayload();
      sub_21DFB8EC8();
      sub_21DFC2FD4(&qword_27CEA8BC8, MEMORY[0x277CDFC08]);
      v40 = v53;
      sub_21E1402F4();
      sub_21DF23614(v39, &qword_27CEA8BA0);
      v41 = v12;
      v42 = v38;
    }

    sub_21DFC301C(v41, v42);
    sub_21DF236C0(v40, v57, &qword_27CEA8BA8);
    swift_storeEnumTagMultiPayload();
    sub_21DFB8E0C();
    sub_21DFC2FD4(&qword_27CEA8BC8, MEMORY[0x277CDFC08]);
    sub_21E1402F4();
    return sub_21DF23614(v40, &qword_27CEA8BA8);
  }

  else
  {
    v20 = *(a1 + v18[8]);
    v21 = *(v56 + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_21E140144();
    (*(*(v23 - 8) + 104))(&v5[v21], v22, v23);
    *v5 = v20;
    *(v5 + 1) = v20;
    v24 = MEMORY[0x277CDFC08];
    sub_21DFC2F6C(v5, v57, MEMORY[0x277CDFC08]);
    swift_storeEnumTagMultiPayload();
    sub_21DFB8E0C();
    sub_21DFC2FD4(&qword_27CEA8BC8, MEMORY[0x277CDFC08]);
    sub_21E1402F4();
    return sub_21DFC301C(v5, v24);
  }
}

uint64_t sub_21DFC1750@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = sub_21E13D194();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21E142AD4();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21E142704();
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v33 = *(a1 + 4);
  v19 = a2[3];
  v20 = a1[1];
  v31 = *a1;
  v32 = v20;
  __swift_project_boxed_opaque_existential_1(a2, v19);
  v21 = sub_21E13E694();
  MEMORY[0x223D4D7D0](v21);

  v22 = v30;
  (*(v7 + 104))(v9, *MEMORY[0x277D84670], v30);
  sub_21E1426E4();
  (*(v7 + 8))(v9, v22);
  v23 = *(v10 + 8);
  v24 = v12;
  v25 = v29;
  v23(v24, v29);
  v26 = v34;
  sub_21E13D184();
  sub_21E1426F4();
  (*(v35 + 8))(v26, v36);
  v23(v15, v25);
  sub_21DFC2FD4(&qword_27CEA8FD0, MEMORY[0x277CC9E48]);
  sub_21E142714();
  return (v23)(v18, v25);
}

void *sub_21DFC1ABC(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100000000) != 0)
  {
    return 0;
  }

  v7[0] = a3;
  v7[1] = a4;
  v8 = a5;
  result = a1(&v9, v7);
  if (!v5)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DFC1B20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E1405E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8DC0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8DC8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  sub_21E1405F4();
  if (sub_21E140604())
  {
    v14 = 0.7;
  }

  else
  {
    v14 = 1.0;
  }

  (*(v3 + 32))(v9, v5, v2);
  *&v9[*(v7 + 44)] = v14;
  if (sub_21E140604())
  {
    v15 = 0.98;
  }

  else
  {
    v15 = 1.0;
  }

  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v17 = v16;
  v19 = v18;
  v20 = sub_21DF3DE9C(v9, v13, &qword_27CEA8DC0);
  v21 = &v13[*(v11 + 44)];
  *v21 = v15;
  *(v21 + 1) = v15;
  *(v21 + 2) = v17;
  *(v21 + 3) = v19;
  v22 = MEMORY[0x223D52580](v20, 0.3, 0.52, 0.1);
  v23 = sub_21E140604();
  sub_21DF3DE9C(v13, a1, &qword_27CEA8DC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8DD0);
  v25 = a1 + *(result + 36);
  *v25 = v22;
  *(v25 + 8) = v23 & 1;
  return result;
}

uint64_t sub_21DFC1DB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F50);
  MEMORY[0x28223BE20](v0);
  v2 = &v32 - v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F58);
  MEMORY[0x28223BE20](v33);
  v4 = &v32 - v3;
  v5 = sub_21E141624();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8EE8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  if (sub_21E13F9C4())
  {
    (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
    v12 = sub_21E141664();
    (*(v6 + 8))(v8, v5);
    sub_21E141CC4();
    sub_21E13F664();
    v32 = v0;
    v35 = 1;
    *&v34[6] = v36;
    *&v34[22] = v37;
    *&v34[38] = v38;
    v13 = &v11[*(v9 + 36)];
    v14 = *(sub_21E13FCA4() + 20);
    v15 = *MEMORY[0x277CE0118];
    v16 = sub_21E140144();
    (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
    __asm { FMOV            V0.2D, #2.0 }

    *v13 = _Q0;
    *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18) + 36)] = 256;
    v22 = *&v34[16];
    *(v11 + 18) = *v34;
    *v11 = v12;
    *(v11 + 1) = 0;
    *(v11 + 8) = 1;
    *(v11 + 34) = v22;
    *(v11 + 50) = *&v34[32];
    *(v11 + 8) = *&v34[46];
    sub_21DF236C0(v11, v4, &qword_27CEA8EE8);
    swift_storeEnumTagMultiPayload();
    sub_21DFC2764();
    sub_21DF23E5C(&qword_27CEA8F48, &qword_27CEA8F50);
    sub_21E1402F4();

    v23 = v11;
    v24 = &qword_27CEA8EE8;
  }

  else
  {
    v25 = *(sub_21E13FCA4() + 20);
    v26 = *MEMORY[0x277CE0118];
    v27 = sub_21E140144();
    (*(*(v27 - 8) + 104))(&v2[v25], v26, v27);
    __asm { FMOV            V0.2D, #2.0 }

    *v2 = _Q0;
    v29 = sub_21E1404B4();
    v30 = &v2[*(v0 + 52)];
    *v30 = v29;
    *(v30 + 1) = 1053609165;
    *&v2[*(v0 + 56)] = 256;
    sub_21DF236C0(v2, v4, &qword_27CEA8F50);
    swift_storeEnumTagMultiPayload();
    sub_21DFC2764();
    sub_21DF23E5C(&qword_27CEA8F48, &qword_27CEA8F50);
    sub_21E1402F4();
    v23 = v2;
    v24 = &qword_27CEA8F50;
  }

  return sub_21DF23614(v23, v24);
}

unint64_t sub_21DFC2288()
{
  result = qword_27CEA8E28;
  if (!qword_27CEA8E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8E20);
    sub_21DFC2314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8E28);
  }

  return result;
}

unint64_t sub_21DFC2314()
{
  result = qword_27CEA8E30;
  if (!qword_27CEA8E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8E38);
    sub_21DFC23A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8E30);
  }

  return result;
}

unint64_t sub_21DFC23A0()
{
  result = qword_27CEA8E40;
  if (!qword_27CEA8E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8E48);
    sub_21DFC2458();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8E40);
  }

  return result;
}

unint64_t sub_21DFC2458()
{
  result = qword_27CEA8E50;
  if (!qword_27CEA8E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8E58);
    sub_21DFB8A04();
    sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8E50);
  }

  return result;
}

unint64_t sub_21DFC2510()
{
  result = qword_27CEA8EA8;
  if (!qword_27CEA8EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8EA0);
    sub_21DFB8B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8EA8);
  }

  return result;
}

unint64_t sub_21DFC259C()
{
  result = qword_27CEA8EB8;
  if (!qword_27CEA8EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8E78);
    sub_21DFC2628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8EB8);
  }

  return result;
}

unint64_t sub_21DFC2628()
{
  result = qword_27CEA8EC0;
  if (!qword_27CEA8EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8EC8);
    sub_21DFC26AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8EC0);
  }

  return result;
}

unint64_t sub_21DFC26AC()
{
  result = qword_27CEA8ED0;
  if (!qword_27CEA8ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8ED8);
    sub_21DFC2764();
    sub_21DF23E5C(&qword_27CEA8F20, &qword_27CEA8F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8ED0);
  }

  return result;
}

unint64_t sub_21DFC2764()
{
  result = qword_27CEA8EE0;
  if (!qword_27CEA8EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8EE8);
    sub_21DFC281C();
    sub_21DF23E5C(&qword_27CEA8F10, &qword_27CEA8F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8EE0);
  }

  return result;
}

unint64_t sub_21DFC281C()
{
  result = qword_27CEA8EF0;
  if (!qword_27CEA8EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8EF8);
    sub_21DFC28A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8EF0);
  }

  return result;
}

unint64_t sub_21DFC28A8()
{
  result = qword_27CEA8F00;
  if (!qword_27CEA8F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8F00);
  }

  return result;
}

unint64_t sub_21DFC292C()
{
  result = qword_27CEA8F40;
  if (!qword_27CEA8F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8F38);
    sub_21DFC2764();
    sub_21DF23E5C(&qword_27CEA8F48, &qword_27CEA8F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8F40);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_21DFC2BA0()
{
  sub_21DFB48FC();
  if (v0 <= 0x3F)
  {
    sub_21DFBE0B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21DFC2C48()
{
  result = qword_27CEA8F70;
  if (!qword_27CEA8F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8DD0);
    sub_21DFC2D00();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8F70);
  }

  return result;
}

unint64_t sub_21DFC2D00()
{
  result = qword_27CEA8F78;
  if (!qword_27CEA8F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8DC8);
    sub_21DFC2D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8F78);
  }

  return result;
}

unint64_t sub_21DFC2D8C()
{
  result = qword_27CEA8F80;
  if (!qword_27CEA8F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8DC0);
    sub_21DFC2FD4(&qword_280F68E08, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8F80);
  }

  return result;
}

unint64_t sub_21DFC2E48()
{
  result = qword_27CEA8F88;
  if (!qword_27CEA8F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8F90);
    sub_21DF23E5C(&qword_27CEA8DE8, &qword_27CEA8DD8);
    sub_21DFC2FD4(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA8F88);
  }

  return result;
}

uint64_t sub_21DFC2F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFC2FD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DFC301C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ImageSearchRelatedSearchesCardView()
{
  result = qword_27CEA9000;
  if (!qword_27CEA9000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DFC30F0()
{
  sub_21DFC31EC(319, &qword_280F69040, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21DFC31EC(319, &qword_27CEA9010, MEMORY[0x277D79570], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_21DFB9568();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21DFC31EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21DFC326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v68 = a3;
  v4 = sub_21E13FC44();
  v65 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageSearchRelatedSearchesCardView();
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = v7;
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9060);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9078);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v60 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9058);
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = sub_21E13D264();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v23 = a1;
  sub_21E13E8A4();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21DF23614(v15, &qword_27CEA9990);
    v24 = 1;
  }

  else
  {
    v50 = v4;
    v25 = *(v17 + 32);
    v52 = v22;
    v26 = v15;
    v27 = v16;
    v25(v22, v26, v16);
    v49 = v23;
    v28 = v57;
    v29 = v17;
    v30 = v55;
    sub_21DFC5434(v57, v55);
    v31 = v29;
    v51 = v29;
    v32 = *(v29 + 16);
    v33 = v27;
    v32(v19, v22, v27);
    v34 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v35 = (v54 + *(v31 + 80) + v34) & ~*(v31 + 80);
    v36 = swift_allocObject();
    sub_21DFC5498(v30, v36 + v34);
    v37 = (v25)(v36 + v35, v19, v33);
    MEMORY[0x28223BE20](v37);
    *(&v48 - 2) = v49;
    *(&v48 - 1) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9080);
    sub_21DFC58A4();
    v38 = v56;
    sub_21E141764();
    v39 = v64;
    sub_21E13FC34();
    v40 = sub_21DF23E5C(&qword_27CEA9068, &qword_27CEA9060);
    v41 = sub_21DFC577C(&qword_27CEA7000, MEMORY[0x277CDDB18]);
    v43 = v60;
    v42 = v61;
    v44 = v50;
    sub_21E140DC4();
    (*(v65 + 8))(v39, v44);
    (*(v59 + 8))(v38, v42);
    v69 = v42;
    v70 = v44;
    v71 = v40;
    v72 = v41;
    swift_getOpaqueTypeConformance2();
    v45 = v58;
    v46 = v63;
    sub_21E141164();
    (*(v62 + 8))(v43, v46);
    (*(v51 + 8))(v52, v33);
    sub_21DF3DE9C(v45, v68, &qword_27CEA9058);
    v24 = 0;
  }

  return (*(v66 + 56))(v68, v24, 1, v67);
}

uint64_t sub_21DFC3994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_21E13F444();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9098);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  *v13 = sub_21E140004();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90B0);
  sub_21DFC3D44(a1, &v13[*(v18 + 44)]);
  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF3DE9C(v13, v17, &qword_27CEA90A8);
  v19 = &v17[*(v15 + 44)];
  v20 = v46;
  *(v19 + 4) = v45;
  *(v19 + 5) = v20;
  *(v19 + 6) = v47;
  v21 = v42;
  *v19 = v41;
  *(v19 + 1) = v21;
  v22 = v44;
  *(v19 + 2) = v43;
  *(v19 + 3) = v22;
  sub_21E021DE8(v10);
  (*(v5 + 104))(v7, *MEMORY[0x277CDF3D0], v4);
  LOBYTE(v15) = sub_21E13F434();
  v23 = *(v5 + 8);
  v23(v7, v4);
  if (v15)
  {
    sub_21E141484();
  }

  else
  {
    _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  v24 = sub_21E141514();

  v23(v10, v4);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9080);
  v26 = v40;
  v27 = (v40 + *(v25 + 36));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8660);
  v29 = v27 + *(v28 + 52);
  v30 = *(sub_21E13FCA4() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_21E140144();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #16.0 }

  *v29 = _Q0;
  *v27 = v24;
  *(v27 + *(v28 + 56)) = 256;
  return sub_21DF3DE9C(v17, v26, &qword_27CEA9098);
}

uint64_t sub_21DFC3D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a1;
  v130 = a2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90B8);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v111 = &v108 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v122 = &v108 - v6;
  v125 = sub_21E13D264();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v110 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90C0);
  MEMORY[0x28223BE20](v8 - 8);
  v127 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v126 = &v108 - v11;
  v12 = sub_21E140A64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90C8) - 8;
  MEMORY[0x28223BE20](v114);
  v113 = &v108 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90D0) - 8;
  MEMORY[0x28223BE20](v116);
  v115 = &v108 - v17;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90D8) - 8;
  MEMORY[0x28223BE20](v120);
  v118 = &v108 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90E0) - 8;
  MEMORY[0x28223BE20](v121);
  v123 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v117 = &v108 - v21;
  MEMORY[0x28223BE20](v22);
  v112 = &v108 - v23;
  *&v133 = sub_21E13E8B4();
  *(&v133 + 1) = v24;
  sub_21DF252E0();
  v25 = sub_21E140C94();
  v27 = v26;
  v29 = v28;
  sub_21E140994();
  sub_21E140A04();
  sub_21E140A54();

  (*(v13 + 104))(v15, *MEMORY[0x277CE0A10], v12);
  sub_21E140A94();

  (*(v13 + 8))(v15, v12);
  v30 = sub_21E140C44();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_21DF3DE8C(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  *&v133 = v30;
  *(&v133 + 1) = v32;
  LOBYTE(v134) = v34 & 1;
  *(&v134 + 1) = v36;
  *&v135 = KeyPath;
  BYTE8(v135) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8A98);
  sub_21DFB8A04();
  v38 = v113;
  sub_21E140ED4();
  sub_21DF3DE8C(v30, v32, v34 & 1);

  v39 = v112;

  v40 = [objc_opt_self() labelColor];
  v41 = sub_21E141414();
  v42 = swift_getKeyPath();
  v43 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90E8) + 36));
  *v43 = v42;
  v43[1] = v41;
  v44 = swift_getKeyPath();
  v45 = v38 + *(v114 + 44);
  *v45 = v44;
  *(v45 + 8) = 3;
  *(v45 + 16) = 0;
  sub_21E141CD4();
  sub_21E13FCE4();
  v46 = v115;
  sub_21DF3DE9C(v38, v115, &qword_27CEA90C8);
  v47 = (v46 + *(v116 + 44));
  v48 = v138;
  v47[4] = v137;
  v47[5] = v48;
  v47[6] = v139;
  v49 = v134;
  *v47 = v133;
  v47[1] = v49;
  v50 = v136;
  v47[2] = v135;
  v47[3] = v50;
  LOBYTE(v41) = sub_21E140944();
  sub_21E13F374();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v46;
  v60 = v118;
  sub_21DF3DE9C(v59, v118, &qword_27CEA90D0);
  v61 = v60 + *(v120 + 44);
  *v61 = v41;
  *(v61 + 8) = v52;
  *(v61 + 16) = v54;
  *(v61 + 24) = v56;
  *(v61 + 32) = v58;
  *(v61 + 40) = 0;
  LOBYTE(v41) = sub_21E140974();
  sub_21E13F374();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v60;
  v71 = v117;
  sub_21DF3DE9C(v70, v117, &qword_27CEA90D8);
  v72 = v71 + *(v121 + 44);
  *v72 = v41;
  *(v72 + 8) = v63;
  *(v72 + 16) = v65;
  *(v72 + 24) = v67;
  *(v72 + 32) = v69;
  *(v72 + 40) = 0;
  sub_21DF3DE9C(v71, v39, &qword_27CEA90E0);
  sub_21E13E8C4();
  if (!v132)
  {
    sub_21DF23614(v131, &qword_27CEA90F0);
    v73 = v122;
    (*(v124 + 56))(v122, 1, 1, v125);
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(v131, v132);
  v73 = v122;
  sub_21E13E2D4();
  v74 = v124;
  v75 = *(v124 + 56);
  v76 = v125;
  v75(v73, 0, 1, v125);
  __swift_destroy_boxed_opaque_existential_0(v131);
  if ((*(v74 + 48))(v73, 1, v76) == 1)
  {
LABEL_5:
    sub_21DF23614(v73, &qword_27CEA9990);
    v101 = 1;
    v100 = v129;
    v99 = v126;
    goto LABEL_6;
  }

  v77 = v110;
  (*(v74 + 32))(v110, v73, v76);
  v78 = v109;
  (*(v74 + 16))(v109, v77, v76);
  v75(v78, 0, 1, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9100);
  sub_21DFC5A14();
  v79 = v111;
  sub_21E13F334();
  v80 = (v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9130) + 36));
  v81 = *(sub_21E13FCA4() + 20);
  v82 = *MEMORY[0x277CE0118];
  v83 = sub_21E140144();
  (*(*(v83 - 8) + 104))(&v80[v81], v82, v83);
  __asm { FMOV            V0.2D, #9.0 }

  *v80 = _Q0;
  *&v80[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F18) + 36)] = 256;
  LOBYTE(v82) = sub_21E140914();
  sub_21E13F374();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  (*(v74 + 8))(v77, v76);
  v97 = v129;
  v98 = v79 + *(v129 + 36);
  *v98 = v82;
  *(v98 + 8) = v90;
  *(v98 + 16) = v92;
  *(v98 + 24) = v94;
  *(v98 + 32) = v96;
  *(v98 + 40) = 0;
  v99 = v126;
  sub_21DFC5BE4(v79, v126);
  v100 = v97;
  v101 = 0;
LABEL_6:
  (*(v128 + 56))(v99, v101, 1, v100);
  v102 = v123;
  sub_21DF0F1B0(v39, v123);
  v103 = v127;
  sub_21DF236C0(v99, v127, &qword_27CEA90C0);
  v104 = v130;
  sub_21DF0F1B0(v102, v130);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90F8);
  v106 = v104 + *(v105 + 48);
  *v106 = 0;
  *(v106 + 8) = 1;
  sub_21DF236C0(v103, v104 + *(v105 + 64), &qword_27CEA90C0);
  sub_21DF23614(v99, &qword_27CEA90C0);
  sub_21DF23614(v39, &qword_27CEA90E0);
  sub_21DF23614(v103, &qword_27CEA90C0);
  return sub_21DF23614(v102, &qword_27CEA90E0);
}

void sub_21DFC4980(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_21E13F1B4();
  v46 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9128);
  MEMORY[0x28223BE20](v47);
  v5 = &v44 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9138);
  MEMORY[0x28223BE20](v48);
  v7 = (&v44 - v6);
  v8 = sub_21E141624();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21E13F9C4())
  {
    (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
    v12 = sub_21E141664();
    (*(v9 + 8))(v11, v8);
    sub_21E141CC4();
    sub_21E13F664();
    LOBYTE(v55) = 1;
    *&v59[6] = v60;
    *&v59[22] = v61;
    *&v59[38] = v62;
    v52[0] = v12;
    v52[1] = 0;
    *v53 = 257;
    *&v53[2] = *v59;
    *&v53[18] = *&v59[16];
    *&v53[34] = *&v59[32];
    *&v53[48] = *(&v62 + 1);
    *v59 = v12;
    *&v59[16] = *v53;
    *&v59[32] = *&v53[16];
    *&v59[48] = *&v53[32];
    *&v59[64] = *(&v62 + 1);
    v54 = 0;
    v59[72] = 0;
    sub_21DF236C0(v52, &v55, &qword_27CEA8EF8);
    sub_21DF236C0(v52, &v55, &qword_27CEA8EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8EF8);
    sub_21DFC281C();
    sub_21E1402F4();
    v13 = v58[0];
    *&v59[32] = v57;
    *&v59[48] = v58[0];
    v14 = *(v58 + 9);
    *&v59[57] = *(v58 + 9);
    v16 = v55;
    v15 = v56;
    *v59 = v55;
    *&v59[16] = v56;
    v7[2] = v57;
    v7[3] = v13;
    *(v7 + 57) = v14;
    *v7 = v16;
    v7[1] = v15;
    swift_storeEnumTagMultiPayload();
    sub_21DF236C0(v59, v50, &qword_27CEA9118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9118);
    sub_21DFC5AA0();
    sub_21DFC5B2C();
    sub_21E1402F4();

    sub_21DF23614(v59, &qword_27CEA9118);
    sub_21DF23614(v52, &qword_27CEA8EF8);
    v17 = v52;
    v18 = &qword_27CEA8EF8;
LABEL_3:
    sub_21DF23614(v17, v18);
    return;
  }

  v19 = v7;
  v45 = v3;
  v20 = v47;
  v21 = sub_21E13F9B4();
  if (!v21)
  {
    v32 = *(sub_21E13FCA4() + 20);
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_21E140144();
    (*(*(v34 - 8) + 104))(&v5[v32], v33, v34);
    __asm { FMOV            V0.2D, #9.0 }

    *v5 = _Q0;
    LODWORD(v33) = sub_21E1404B4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F50);
    v41 = &v5[*(v40 + 52)];
    *v41 = v33;
    *(v41 + 1) = 1045220557;
    *&v5[*(v40 + 56)] = 256;
    sub_21E141CC4();
    sub_21E13F664();
    v42 = &v5[*(v20 + 36)];
    v43 = *&v59[16];
    *v42 = *v59;
    *(v42 + 1) = v43;
    *(v42 + 2) = *&v59[32];
    sub_21DF236C0(v5, v7, &qword_27CEA9128);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9118);
    sub_21DFC5AA0();
    sub_21DFC5B2C();
    sub_21E1402F4();
    v17 = v5;
    v18 = &qword_27CEA9128;
    goto LABEL_3;
  }

  v22 = v21;
  *v59 = 0;
  *&v59[8] = 0xE000000000000000;
  sub_21E142884();
  MEMORY[0x223D52A60](0xD00000000000004CLL, 0x800000021E15C340);
  swift_getErrorValue();
  v23 = sub_21E142BC4();
  MEMORY[0x223D52A60](v23);

  v24 = *v59;
  sub_21E13EBE4();

  v25 = sub_21E13F1A4();
  v26 = sub_21E142564();

  v27 = v19;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v59 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_21E0E08C0(v24, *(&v24 + 1), v59);
    _os_log_impl(&dword_21DF05000, v25, v26, "%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223D540B0](v29, -1, -1);
    MEMORY[0x223D540B0](v28, -1, -1);
  }

  (*(v46 + 8))(v45, v1);
  LOBYTE(v52[0]) = 1;
  v57 = v50[2];
  v58[0] = v50[3];
  *&v58[1] = v51;
  v55 = v50[0];
  v56 = v50[1];
  BYTE8(v58[1]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8EF8);
  sub_21DFC281C();
  sub_21E1402F4();
  v30 = *&v59[48];
  v27[2] = *&v59[32];
  v27[3] = v30;
  *(v27 + 57) = *&v59[57];
  v31 = *&v59[16];
  *v27 = *v59;
  v27[1] = v31;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9118);
  sub_21DFC5AA0();
  sub_21DFC5B2C();
  sub_21E1402F4();
}

uint64_t sub_21DFC5150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = a1 - 8;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9018);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  *v8 = sub_21E1401C4();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9020);
  v12[1] = *(v2 + *(v3 + 28));
  swift_getKeyPath();
  sub_21DFC5434(v2, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_21DFC5498(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9030);
  sub_21DF23E5C(&qword_27CEA9038, &qword_27CEA9028);
  sub_21DFC577C(&qword_27CEA9040, MEMORY[0x277D79570]);
  sub_21DFC557C();
  sub_21E141A74();
  sub_21DF23E5C(&qword_27CEA9070, &qword_27CEA9018);
  sub_21E141164();
  return sub_21DF23614(v8, &qword_27CEA9018);
}

uint64_t sub_21DFC5434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSearchRelatedSearchesCardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFC5498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSearchRelatedSearchesCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFC54FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ImageSearchRelatedSearchesCardView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21DFC326C(a1, v6, a2);
}

unint64_t sub_21DFC557C()
{
  result = qword_27CEA9048;
  if (!qword_27CEA9048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9030);
    sub_21DFC5600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9048);
  }

  return result;
}

unint64_t sub_21DFC5600()
{
  result = qword_27CEA9050;
  if (!qword_27CEA9050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9060);
    sub_21E13FC44();
    sub_21DF23E5C(&qword_27CEA9068, &qword_27CEA9060);
    sub_21DFC577C(&qword_27CEA7000, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21DFC577C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9050);
  }

  return result;
}

uint64_t sub_21DFC577C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DFC57C4()
{
  v1 = (type metadata accessor for ImageSearchRelatedSearchesCardView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(sub_21E13D264() - 8);
  return (*(v0 + v1[8] + v2))(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

unint64_t sub_21DFC58A4()
{
  result = qword_27CEA9088;
  if (!qword_27CEA9088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9080);
    sub_21DFC595C();
    sub_21DF23E5C(&qword_27CEA8658, &qword_27CEA8660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9088);
  }

  return result;
}

unint64_t sub_21DFC595C()
{
  result = qword_27CEA9090;
  if (!qword_27CEA9090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9098);
    sub_21DF23E5C(&qword_27CEA90A0, &qword_27CEA90A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9090);
  }

  return result;
}

unint64_t sub_21DFC5A14()
{
  result = qword_27CEA9108;
  if (!qword_27CEA9108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9100);
    sub_21DFC5AA0();
    sub_21DFC5B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9108);
  }

  return result;
}

unint64_t sub_21DFC5AA0()
{
  result = qword_27CEA9110;
  if (!qword_27CEA9110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9118);
    sub_21DFC281C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9110);
  }

  return result;
}

unint64_t sub_21DFC5B2C()
{
  result = qword_27CEA9120;
  if (!qword_27CEA9120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9128);
    sub_21DF23E5C(&qword_27CEA8F48, &qword_27CEA8F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9120);
  }

  return result;
}

uint64_t sub_21DFC5BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DFC5C54()
{
  result = qword_27CEA9140;
  if (!qword_27CEA9140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9148);
    sub_21DF23E5C(&qword_27CEA9070, &qword_27CEA9018);
    sub_21DFC577C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9140);
  }

  return result;
}

uint64_t sub_21DFC5D60(uint64_t a1)
{
  v2 = sub_21E1401B4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21E13FE14();
}

uint64_t sub_21DFC5E28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21DF236C0(v2, &v14 - v9, &qword_27CEA7140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E1401B4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ImageSearchResultView.init(state:model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v89 = a2;
  v87 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v74 - v7;
  v8 = type metadata accessor for PlaceholderItem(0);
  MEMORY[0x28223BE20](v8);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v74 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - v17;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for ImageSearchResultView(0);
  v20 = a3 + *(v19 + 20);
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  sub_21E13E154();
  v21 = type metadata accessor for IdentifiableURL();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_21DF236C0(v18, v15, &qword_27CEA8668);
  sub_21E141704();
  sub_21DF23614(v18, &qword_27CEA8668);
  v22 = a3 + *(v19 + 36);
  LOBYTE(v95) = 0;
  sub_21E141704();
  v23 = v97;
  *v22 = v96;
  *(v22 + 1) = v23;
  v86 = v19;
  v88 = a3;
  sub_21E140524();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9150);
  v24 = *(sub_21E13DD44() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21E147C80;
  v92 = " thumbnail, received error: ";
  v28 = v94;
  sub_21E13D244();
  v29 = sub_21E13D264();
  v30 = *(v29 - 8);
  v90 = *(v30 + 48);
  result = v90(v28, 1, v29);
  if (result == 1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = v30;
  v81 = v27;
  v91 = v27 + v26;
  v33 = objc_allocWithZone(MEMORY[0x277D74218]);
  v80 = "https://www.apple.com";
  v79 = 0xD000000000000010;
  v34 = sub_21E1420F4();
  v35 = [v33 initWithName_];

  v82 = v25;
  v85 = v30 + 48;
  if (v35)
  {
    v36 = [v35 data];

    v83 = sub_21E13D284();
    v38 = v37;
  }

  else
  {
    v83 = 0;
    v38 = 0xF000000000000000;
  }

  v39 = type metadata accessor for PlaceholderThumbnail(0);
  v98 = v39;
  v78 = sub_21DFC6A6C(&qword_27CEA9158, type metadata accessor for PlaceholderThumbnail);
  v99 = v78;
  v40 = __swift_allocate_boxed_opaque_existential_1(&v96);
  v41 = *(v32 + 56);
  v41(v40 + v39[8], 1, 1, v29);
  v42 = *(v32 + 32);
  v43 = v94;
  v94 = (v32 + 32);
  v77 = v42;
  v42(v40, v43, v29);
  v44 = (v40 + v39[5]);
  *v44 = v83;
  v44[1] = v38;
  *(v40 + v39[6]) = 0x4069000000000000;
  *(v40 + v39[7]) = 0x4069000000000000;
  sub_21E13D244();
  v45 = v12 + v8[9];
  v83 = v41;
  v41(v45, 1, 1, v29);
  v46 = v12 + v8[12];
  *(v46 + 4) = 0;
  *v46 = 0u;
  *(v46 + 1) = 0u;
  *v12 = 49;
  v12[1] = 0xE100000000000000;
  v12[2] = 0x6C6F686563616C70;
  v12[3] = 0xEB00000000726564;
  sub_21DF0DBF0(&v96, (v12 + 4));
  v47 = (v12 + v8[8]);
  *v47 = 0;
  v47[1] = 0xE000000000000000;
  v48 = v8[10];
  v76 = xmmword_21E14A830;
  *(v12 + v48) = xmmword_21E14A830;
  v49 = (v12 + v8[11]);
  *v49 = 0x6F632E656C707061;
  v49[1] = 0xE90000000000006DLL;
  v50 = sub_21DFC6A6C(&qword_27CEA9160, type metadata accessor for PlaceholderItem);
  MEMORY[0x223D4E570](v12, v8, v50);
  v51 = v93;
  sub_21E13D244();
  result = v90(v51, 1, v29);
  if (result == 1)
  {
    goto LABEL_11;
  }

  v52 = objc_allocWithZone(MEMORY[0x277D74218]);
  v53 = sub_21E1420F4();
  v54 = [v52 initWithName_];

  v75 = v50;
  if (v54)
  {
    v55 = [v54 data];

    v56 = sub_21E13D284();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0xF000000000000000;
  }

  v59 = v86;
  v60 = v86[14];
  v98 = v39;
  v99 = v78;
  v61 = __swift_allocate_boxed_opaque_existential_1(&v96);
  v62 = v83;
  v83(v61 + v39[8], 1, 1, v29);
  v77(v61, v93, v29);
  v63 = (v61 + v39[5]);
  *v63 = v56;
  v63[1] = v58;
  *(v61 + v39[6]) = 0x4069000000000000;
  *(v61 + v39[7]) = 0x4069000000000000;
  v64 = v84;
  sub_21E13D244();
  v62(&v64[v8[9]], 1, 1, v29);
  v65 = &v64[v8[12]];
  *(v65 + 4) = 0;
  *v65 = 0u;
  *(v65 + 1) = 0u;
  *v64 = 50;
  *(v64 + 1) = 0xE100000000000000;
  *(v64 + 2) = 0x6C6F686563616C70;
  *(v64 + 3) = 0xEB00000000726564;
  sub_21DF0DBF0(&v96, (v64 + 32));
  v66 = &v64[v8[8]];
  *v66 = 0;
  *(v66 + 1) = 0xE000000000000000;
  *&v64[v8[10]] = v76;
  v67 = &v64[v8[11]];
  *v67 = 0x6F632E656C707061;
  *(v67 + 1) = 0xE90000000000006DLL;
  MEMORY[0x223D4E570](v64, v8, v75);
  v68 = v88;
  *(v88 + v60) = v81;
  v69 = v59[6];
  v70 = sub_21E13DDE4();
  v71 = *(v70 - 8);
  v72 = v87;
  (*(v71 + 16))(v68 + v69, v87, v70);
  type metadata accessor for FeedbackController();
  swift_allocObject();
  v95 = FeedbackController.init(saliencyModel:)(0);
  sub_21E141A14();
  (*(v71 + 8))(v72, v70);

  v73 = v68 + v59[11];
  *v73 = v96;
  *(v73 + 8) = v97;
  *(v68 + v59[12]) = 0;
  *(v68 + v59[13]) = v89;
  return result;
}

uint64_t sub_21DFC6A6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ImageSearchResultView.init(result:useInlinePresentation:feedbackController:model:)@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v111 = a6;
  v109 = a5;
  v108 = a4;
  v107 = a3;
  v110 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v9 - 8);
  v118 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v96 - v12;
  v113 = type metadata accessor for PlaceholderItem(0);
  MEMORY[0x28223BE20](v113);
  v105 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v96 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v18);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v96 - v22;
  v24 = a1[3];
  v127 = a1[2];
  v128 = v24;
  v129 = a1[4];
  v130 = *(a1 + 80);
  v25 = a1[1];
  v125 = *a1;
  v126 = v25;
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for ImageSearchResultView(0);
  v27 = a7 + *(v26 + 20);
  *v27 = swift_getKeyPath();
  *(v27 + 1) = 0;
  v27[16] = 0;
  sub_21E13E154();
  v28 = type metadata accessor for IdentifiableURL();
  (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
  sub_21DF236C0(v23, v20, &qword_27CEA8668);
  sub_21E141704();
  sub_21DF23614(v23, &qword_27CEA8668);
  v120 = 0;
  sub_21E141704();
  v29 = *(&v122 + 1);
  v106 = v26;
  v112 = a7;
  sub_21E140524();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9150);
  v30 = *(sub_21E13DD44() - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_21E147C80;
  v117 = " thumbnail, received error: ";
  sub_21E13D244();
  v34 = sub_21E13D264();
  v35 = *(v34 - 8);
  v36 = v35[6];
  v115 = v13;
  v114 = v36;
  result = v36(v13, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v102 = v31;
    v101 = v33;
    v116 = v33 + v32;
    v38 = objc_allocWithZone(MEMORY[0x277D74218]);
    v100 = "https://www.apple.com";
    v99 = 0xD000000000000010;
    v39 = sub_21E1420F4();
    v40 = [v38 initWithName_];

    v103 = v29;
    v104 = v35 + 6;
    if (v40)
    {
      v41 = [v40 data];

      v42 = sub_21E13D284();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0xF000000000000000;
    }

    v45 = v113;
    v46 = type metadata accessor for PlaceholderThumbnail(0);
    v123 = v46;
    v97 = sub_21DFC6A6C(&qword_27CEA9158, type metadata accessor for PlaceholderThumbnail);
    v124 = v97;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v122);
    v48 = v35[7];
    (v48)(boxed_opaque_existential_1 + v46[8], 1, 1, v34);
    v49 = v35[4];
    v50 = v115;
    v115 = (v35 + 4);
    v98 = v49;
    v49(boxed_opaque_existential_1, v50, v34);
    v51 = (boxed_opaque_existential_1 + v46[5]);
    *v51 = v42;
    v51[1] = v44;
    *(boxed_opaque_existential_1 + v46[6]) = 0x4069000000000000;
    *(boxed_opaque_existential_1 + v46[7]) = 0x4069000000000000;
    sub_21E13D244();
    v52 = v17 + v45[9];
    v113 = v48;
    (v48)(v52, 1, 1, v34);
    v53 = v17 + v45[12];
    *(v53 + 4) = 0;
    *v53 = 0u;
    *(v53 + 1) = 0u;
    *v17 = 49;
    v17[1] = 0xE100000000000000;
    v17[2] = 0x6C6F686563616C70;
    v17[3] = 0xEB00000000726564;
    sub_21DF0DBF0(&v122, (v17 + 4));
    v54 = (v17 + v45[8]);
    *v54 = 0;
    v54[1] = 0xE000000000000000;
    v55 = v45[10];
    v96 = xmmword_21E14A830;
    *(v17 + v55) = xmmword_21E14A830;
    v56 = (v17 + v45[11]);
    *v56 = 0x6F632E656C707061;
    v56[1] = 0xE90000000000006DLL;
    v57 = sub_21DFC6A6C(&qword_27CEA9160, type metadata accessor for PlaceholderItem);
    MEMORY[0x223D4E570](v17, v45, v57);
    v58 = v118;
    sub_21E13D244();
    result = v114(v58, 1, v34);
    if (result != 1)
    {
      v114 = v57;
      v59 = objc_allocWithZone(MEMORY[0x277D74218]);
      v60 = sub_21E1420F4();
      v61 = [v59 initWithName_];

      v62 = v45;
      if (v61)
      {
        v63 = [v61 data];

        v64 = sub_21E13D284();
        v66 = v65;
      }

      else
      {
        v64 = 0;
        v66 = 0xF000000000000000;
      }

      v67 = v106;
      v68 = v112;
      v104 = v112 + v106[9];
      v100 = v106[14];
      v123 = v46;
      v124 = v97;
      v69 = __swift_allocate_boxed_opaque_existential_1(&v122);
      v70 = v113;
      (v113)(v69 + v46[8], 1, 1, v34);
      v98(v69, v118, v34);
      v71 = (v69 + v46[5]);
      *v71 = v64;
      v71[1] = v66;
      *(v69 + v46[6]) = 0x4069000000000000;
      *(v69 + v46[7]) = 0x4069000000000000;
      v72 = v62;
      v73 = v105;
      sub_21E13D244();
      (v70)(v73 + v72[9], 1, 1, v34);
      v74 = v73 + v72[12];
      *(v74 + 4) = 0;
      *v74 = 0u;
      *(v74 + 1) = 0u;
      *v73 = 50;
      v73[1] = 0xE100000000000000;
      v73[2] = 0x6C6F686563616C70;
      v73[3] = 0xEB00000000726564;
      sub_21DF0DBF0(&v122, (v73 + 4));
      v75 = (v73 + v72[8]);
      *v75 = 0;
      v75[1] = 0xE000000000000000;
      *(v73 + v72[10]) = v96;
      v76 = (v73 + v72[11]);
      *v76 = 0x6F632E656C707061;
      v76[1] = 0xE90000000000006DLL;
      MEMORY[0x223D4E570](v73, v72, v114);
      *&v100[v68] = v101;
      v77 = (v68 + v67[11]);
      v78 = v108;
      *v77 = v107;
      v77[1] = v78;
      v77[2] = v109;
      *(v68 + v67[12]) = 1;
      v119 = v110 & 1;
      sub_21E141704();

      v79 = v121;
      v80 = v104;
      *v104 = v120;
      *(v80 + 1) = v79;
      *(v68 + v67[13]) = v111;
      if (v130 == 255)
      {
        v86 = 0;
        v87 = 0;
        v83 = 0;
        v88 = 0;
        v89 = MEMORY[0x277D84F90];
        v82 = v68 + v67[6];
        *v82 = MEMORY[0x277D84F90];
        v90 = 0xE000000000000000;
        v91 = v89;
        v85 = 0xE000000000000000;
      }

      else
      {
        v81 = v125;
        if ((v130 & 1) == 0)
        {
          v91 = *(&v126 + 1);
          v89 = v126;
          v90 = *(&v127 + 1);
          v87 = v127;
          v93 = v67;
          v85 = *(&v128 + 1);
          v83 = v128;
          v92 = *(&v129 + 1);
          v88 = v129;
          LODWORD(v118) = BYTE8(v125);
          v82 = v68 + v93[6];

          sub_21DF23614(&v125, &qword_27CEA6D60);
          v86 = v118 & 1;
          *v82 = v81;
          goto LABEL_15;
        }

        v82 = v68 + v67[6];
        swift_getErrorValue();
        v83 = sub_21E142BC4();
        v85 = v84;
        sub_21DF23614(&v125, &qword_27CEA6D60);
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v89 = MEMORY[0x277D84F90];
        *v82 = MEMORY[0x277D84F90];
        v90 = 0xE000000000000000;
        v91 = v89;
      }

      v92 = 0xE000000000000000;
LABEL_15:
      *(v82 + 8) = v86;
      *(v82 + 16) = v89;
      *(v82 + 24) = v91;
      *(v82 + 32) = v87;
      *(v82 + 40) = v90;
      *(v82 + 48) = v83;
      *(v82 + 56) = v85;
      *(v82 + 64) = v88;
      *(v82 + 72) = v92;
      v94 = *MEMORY[0x277D791F8];
      v95 = sub_21E13DDE4();
      return (*(*(v95 - 8) + 104))(v82, v94, v95);
    }
  }

  __break(1u);
  return result;
}

uint64_t ImageSearchResultView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v173 = a1;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9168);
  MEMORY[0x28223BE20](v157);
  v133 = (v129 - v1);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9170);
  MEMORY[0x28223BE20](v155);
  v156 = v129 - v2;
  v3 = type metadata accessor for ImageSearchResultView(0);
  v150 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v151 = v4;
  v152 = v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9D90);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = v129 - v6;
  v132 = sub_21E140364();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9178);
  MEMORY[0x28223BE20](v149);
  v148 = (v129 - v8);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9180);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v136 = v129 - v9;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9188);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = v129 - v10;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9190);
  MEMORY[0x28223BE20](v153);
  v134 = v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v141 = v129 - v13;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9198);
  MEMORY[0x28223BE20](v163);
  v154 = v129 - v14;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91A0);
  MEMORY[0x28223BE20](v160);
  v162 = v129 - v15;
  v147 = sub_21E1406A4();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21E13D384();
  MEMORY[0x28223BE20](v17 - 8);
  v129[1] = v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21E1420E4();
  MEMORY[0x28223BE20](v19 - 8);
  v129[0] = v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21E1420C4();
  MEMORY[0x28223BE20](v21 - 8);
  v158 = type metadata accessor for EmptyResultsView();
  MEMORY[0x28223BE20](v158);
  v23 = (v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91A8);
  v144 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v143 = v129 - v24;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91B0);
  MEMORY[0x28223BE20](v168);
  v161 = v129 - v25;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91B8);
  MEMORY[0x28223BE20](v171);
  v172 = v129 - v26;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91C0);
  MEMORY[0x28223BE20](v165);
  v166 = v129 - v27;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91C8);
  MEMORY[0x28223BE20](v170);
  v167 = v129 - v28;
  v29 = sub_21E1400C4();
  MEMORY[0x28223BE20](v29 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D0);
  MEMORY[0x28223BE20](v30);
  v32 = v129 - v31;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA91D8);
  MEMORY[0x28223BE20](v164);
  v34 = v129 - v33;
  v35 = sub_21E13DDE4();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v3;
  (*(v36 + 16))(v39, v174 + *(v3 + 24), v35, v37);
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 == *MEMORY[0x277D791F8])
  {
    (*(v36 + 96))(v39, v35);
    v41 = *v39;
    v43 = *(v39 + 2);
    v42 = *(v39 + 3);
    v44 = *(v39 + 5);
    v45 = *(v39 + 7);
    if (*(*v39 + 16))
    {
      v46 = v39[8];
      v47 = *(v39 + 4);

      v48 = v174;
      v49 = v174 + *(v169 + 36);
      v50 = *v49;
      v51 = *(v49 + 1);
      LOBYTE(v176) = v50;
      v177 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
      sub_21E141714();
      if (v175)
      {
        v52 = sub_21E1401C4();
        v53 = v133;
        *v133 = v52;
        *(v53 + 8) = 0;
        *(v53 + 16) = 1;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9240);
        sub_21DFCBD7C(v46, v42, v48, v41, v43, v47, v44, v53 + *(v54 + 44));

        v55 = v152;
        sub_21DFD13C0(v48, v152, type metadata accessor for ImageSearchResultView);
        v56 = (*(v150 + 80) + 16) & ~*(v150 + 80);
        v57 = swift_allocObject();
        sub_21DFD0B30(v55, v57 + v56, type metadata accessor for ImageSearchResultView);
        v58 = (v53 + *(v157 + 36));
        *v58 = sub_21DFD0370;
        v58[1] = v57;
        v58[2] = 0;
        v58[3] = 0;
        v59 = &qword_27CEA9168;
        sub_21DF236C0(v53, v156, &qword_27CEA9168);
        swift_storeEnumTagMultiPayload();
        sub_21DFCFDB0();
        sub_21DFCFF88();
        v60 = v154;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v88 = v148;
        *v148 = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
        swift_storeEnumTagMultiPayload();
        v89 = v149;
        v90 = v149[13];
        v146 = v149[14];
        v147 = v47;
        v91 = (v88 + v90);
        v92 = v149[15];
        v93 = (v88 + v149[18]);
        v175 = 0;
        sub_21E141704();
        v94 = v177;
        *v93 = v176;
        v93[1] = v94;
        v95 = (v88 + v89[19]);
        v175 = 0;
        sub_21E141704();
        v96 = v177;
        *v95 = v176;
        v95[1] = v96;
        v97 = v88 + v89[20];
        LOBYTE(v175) = 0;
        sub_21E141704();
        v98 = v177;
        *v97 = v176;
        *(v97 + 1) = v98;
        __asm { FMOV            V0.2D, #4.0 }

        *v91 = _Q0;
        v91[1] = _Q0;
        v104 = v174;
        *(v88 + v146) = 1;
        *(v88 + v92) = 1;
        sub_21DFC90E4(v104, v147, v44, (v88 + v89[16]));

        sub_21DFC96C8(v42, v104, v41, v43, v88 + v89[17]);

        v105 = v130;
        sub_21E140354();
        LOBYTE(v97) = sub_21E1408F4();
        sub_21E1408E4();
        sub_21E1408E4();
        if (sub_21E1408E4() != v97)
        {
          sub_21E1408E4();
        }

        v106 = sub_21DF23E5C(&qword_27CEA9218, &qword_27CEA9178);
        v107 = v136;
        v108 = v149;
        v109 = v148;
        sub_21E141104();
        (*(v131 + 8))(v105, v132);
        sub_21DF23614(v109, &qword_27CEA9178);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
        v110 = v142;
        sub_21E141734();
        v111 = v152;
        sub_21DFD13C0(v104, v152, type metadata accessor for ImageSearchResultView);
        v112 = (*(v150 + 80) + 16) & ~*(v150 + 80);
        v113 = swift_allocObject();
        sub_21DFD0B30(v111, v113 + v112, type metadata accessor for ImageSearchResultView);
        type metadata accessor for IdentifiableURL();
        type metadata accessor for InAppWebPresentationView(0);
        v176 = v108;
        v177 = v106;
        swift_getOpaqueTypeConformance2();
        sub_21DFC6A6C(&qword_27CEA8C68, type metadata accessor for IdentifiableURL);
        sub_21DFC6A6C(&qword_27CEA9E70, type metadata accessor for InAppWebPresentationView);
        v114 = v135;
        v115 = v140;
        sub_21E141284();

        sub_21DF23614(v110, &unk_27CEA9D90);
        (*(v139 + 8))(v107, v115);
        v116 = sub_21E140914();
        sub_21E13F374();
        v118 = v117;
        v120 = v119;
        v122 = v121;
        v124 = v123;
        v125 = v134;
        (*(v137 + 32))(v134, v114, v138);
        v126 = v125 + *(v153 + 36);
        *v126 = v116;
        *(v126 + 8) = v118;
        *(v126 + 16) = v120;
        *(v126 + 24) = v122;
        *(v126 + 32) = v124;
        *(v126 + 40) = 0;
        v59 = &qword_27CEA9190;
        v53 = v141;
        sub_21DF3DE9C(v125, v141, &qword_27CEA9190);
        sub_21DF236C0(v53, v156, &qword_27CEA9190);
        swift_storeEnumTagMultiPayload();
        sub_21DFCFDB0();
        sub_21DFCFF88();
        v60 = v154;
      }

      sub_21E1402F4();
      sub_21DF23614(v53, v59);
      sub_21DF236C0(v60, v162, &qword_27CEA9198);
      swift_storeEnumTagMultiPayload();
      v127 = sub_21DFC6A6C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
      v176 = v158;
      v177 = v127;
      swift_getOpaqueTypeConformance2();
      sub_21DFCFD24();
      v86 = v161;
      sub_21E1402F4();
      sub_21DF23614(v60, &qword_27CEA9198);
    }

    else
    {
      v157 = *(v39 + 9);
      v156 = *(v39 + 8);
      v72 = *(v39 + 6);

      v73 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v73 = v72 & 0xFFFFFFFFFFFFLL;
      }

      if (!v73)
      {

        sub_21E1420B4();
        sub_21E1420A4();
        sub_21E13E174();
        sub_21E142094();

        sub_21E1420A4();
        sub_21E1420D4();
        sub_21DF3ED18(0, &qword_280F68C20);
        if (!sub_21E1426B4())
        {
          v74 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v72 = sub_21E142184();
        v45 = v75;
      }

      *v23 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
      swift_storeEnumTagMultiPayload();
      v76 = v158;
      v77 = (v23 + *(v158 + 24));
      *v77 = v72;
      v77[1] = v45;
      v78 = (v23 + v76[7]);
      v79 = v157;
      *v78 = v156;
      v78[1] = v79;
      v80 = (v23 + v76[8]);
      *v80 = 0;
      v80[1] = 0;
      *(v23 + v76[5]) = 0x402C000000000000;
      v81 = v145;
      sub_21E140694();
      v82 = sub_21DFC6A6C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
      v83 = v143;
      sub_21E1410B4();
      (*(v146 + 8))(v81, v147);
      sub_21DFD1428(v23, type metadata accessor for EmptyResultsView);
      v84 = v144;
      v85 = v159;
      (*(v144 + 16))(v162, v83, v159);
      swift_storeEnumTagMultiPayload();
      v176 = v76;
      v177 = v82;
      swift_getOpaqueTypeConformance2();
      sub_21DFCFD24();
      v86 = v161;
      sub_21E1402F4();
      (*(v84 + 8))(v83, v85);
    }

    sub_21DF236C0(v86, v166, &qword_27CEA91B0);
    swift_storeEnumTagMultiPayload();
    sub_21DFCFAC0();
    sub_21DFCFC38();
    v128 = v167;
    sub_21E1402F4();
    sub_21DF236C0(v128, v172, &qword_27CEA91C8);
    swift_storeEnumTagMultiPayload();
    sub_21DFCFA34();
    sub_21E1402F4();
    sub_21DF23614(v128, &qword_27CEA91C8);
    return sub_21DF23614(v86, &qword_27CEA91B0);
  }

  else if (v40 == *MEMORY[0x277D791F0])
  {
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E13E174();
    sub_21E140094();

    sub_21E1400A4();
    sub_21E1400E4();
    sub_21DF3ED18(0, &qword_280F68C20);
    if (!sub_21E1426B4())
    {
      v61 = [objc_opt_self() mainBundle];
    }

    v62 = sub_21E140C64();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = *(v30 + 36);
    *&v32[v69] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    *v32 = v62;
    *(v32 + 1) = v64;
    v32[16] = v66 & 1;
    *(v32 + 3) = v68;
    sub_21DFCFB7C();
    sub_21E141164();
    sub_21DF23614(v32, &qword_27CEA91D0);
    sub_21DF236C0(v34, v166, &qword_27CEA91D8);
    swift_storeEnumTagMultiPayload();
    sub_21DFCFAC0();
    sub_21DFCFC38();
    v70 = v167;
    sub_21E1402F4();
    sub_21DF236C0(v70, v172, &qword_27CEA91C8);
    swift_storeEnumTagMultiPayload();
    sub_21DFCFA34();
    sub_21E1402F4();
    sub_21DF23614(v70, &qword_27CEA91C8);
    return sub_21DF23614(v34, &qword_27CEA91D8);
  }

  else if (v40 == *MEMORY[0x277D791E8])
  {
    swift_storeEnumTagMultiPayload();
    sub_21DFCFA34();
    return sub_21E1402F4();
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21DFC90E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ImageSearchResultView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_21E1400C4();
  MEMORY[0x28223BE20](v11 - 8);
  sub_21E1400B4();
  sub_21E1400A4();
  sub_21E13E174();
  sub_21E140094();

  sub_21E1400A4();
  v12 = sub_21E1400E4();
  v29[1] = v13;
  v29[2] = v12;
  v29[0] = v14;
  v15 = sub_21DFC93F0();
  v17 = v16;
  sub_21DFD13C0(a1, v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageSearchResultView);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_21DFD0B30(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for ImageSearchResultView);
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9468);
  v21 = (a4 + v20[9]);
  *v21 = v15;
  v21[1] = v17;
  v22 = (a4 + v20[10]);
  *v22 = sub_21DFD20C0;
  v22[1] = v19;
  sub_21DF3ED18(0, &qword_280F68C20);

  if (!sub_21E1426B4())
  {
    v23 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  v25 = a4 + v20[11];
  *v25 = result;
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  *(v25 + 3) = v28;
  return result;
}

uint64_t sub_21DFC93F0()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = sub_21E13F1B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultWorkspace];
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  v22[0] = 0;
  v6 = [v4 defaultApplicationForCategory:1 error:v22];

  if (v6)
  {
    v7 = v22[0];
    v8 = [v6 bundleIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_21E142124();
    }

    else
    {
      v10 = 0xD000000000000016;
    }
  }

  else
  {
    v11 = v22[0];
    v12 = sub_21E13D0F4();

    swift_willThrow();
    sub_21E13EBB4();
    v13 = v12;
    v14 = sub_21E13F1A4();
    v15 = sub_21E142564();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_21DF05000, v14, v15, "Failed to get bundle identifier for default web browser: %@", v16, 0xCu);
      sub_21DF23614(v17, &unk_27CEAC540);
      MEMORY[0x223D540B0](v17, -1, -1);
      MEMORY[0x223D540B0](v16, -1, -1);
    }

    else
    {
    }

    v10 = 0xD000000000000016;
    (*(v1 + 8))(v3, v0);
  }

  return v10;
}

uint64_t sub_21DFC96C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v120 = a4;
  v131 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92E8);
  v130 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v112 - v9;
  v11 = *(a1 + 16);
  v133 = a2;
  v132 = v10;
  if (v11)
  {
    v12 = sub_21E13E2A4();
    v13 = *(v12 - 8);
    v14 = *(v13 + 80);
    v129 = a3;
    v15 = (v14 + 32) & ~v14;
    v16 = type metadata accessor for ImageSearchAdsBlockView();
    v128 = &v112;
    v127 = *(v16 - 1);
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (&v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v19 + *(v20 + 32), a1 + v15, v12, v17);
    v21 = type metadata accessor for ImageSearchResultView(0);
    v22 = *(a2 + *(v21 + 52));
    swift_getKeyPath();
    *&v137 = v22;
    sub_21DFC6A6C(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v23 = (v22 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration);
    v24 = swift_beginAccess();
    v126 = &v112;
    LODWORD(v125) = *v23;
    LODWORD(v124) = v23[1];
    LODWORD(v123) = v23[2];
    v25 = *(v23 + 2);
    v122 = *(v23 + 1);
    v121 = v25;
    v26 = *(v21 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v24);
    sub_21DFD13C0(a2, &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageSearchResultView);
    v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v119 = swift_allocObject();
    sub_21DFD0B30(&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v119 + v28, type metadata accessor for ImageSearchResultView);
    *v19 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    v29 = v16[5];
    *(v19 + v29) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
    swift_storeEnumTagMultiPayload();
    v30 = v19 + v16[6];
    *v30 = swift_getKeyPath();
    *(v30 + 1) = 0;
    v30[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
    v118 = &v112;
    v32 = *(*(v31 - 8) + 64);
    MEMORY[0x28223BE20](v31);
    v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = type metadata accessor for IdentifiableURL();
    v35 = (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
    MEMORY[0x28223BE20](v35);
    sub_21DF236C0(v33, v33, &qword_27CEA8668);
    v36 = v121;

    sub_21E141704();
    a3 = v129;
    sub_21DF23614(v33, &qword_27CEA8668);
    v37 = v19 + v16[9];
    *v37 = v125;
    v37[1] = v124;
    v37[2] = v123;
    *(v37 + 1) = v122;
    *(v37 + 2) = v36;
    v38 = (v19 + v16[10]);
    v39 = v119;
    *v38 = sub_21DFD19F8;
    v38[1] = v39;
    v40 = v132;
    sub_21DFD0B30(v19, v132, type metadata accessor for ImageSearchAdsBlockView);
    (*(v127 + 56))(v40, 0, 1, v16);
  }

  else
  {
    v41 = type metadata accessor for ImageSearchAdsBlockView();
    (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9438);
  v129 = &v112;
  v128 = v42;
  v127 = *(v42 - 8);
  v125 = *(v127 + 64);
  MEMORY[0x28223BE20](v42);
  v126 = &v112 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9440);
  v124 = &v112;
  v123 = v44;
  v122 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v112 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA68A0);
  v119 = &v112;
  MEMORY[0x28223BE20](v47);
  v49 = &v112 - v48;
  v50 = *(a3 + 16) == 1;
  v121 = v46;
  if (v50)
  {
    v51 = 1;
    v56 = v133;
  }

  else
  {
    v52 = sub_21E1401B4();
    v53 = *(v52 - 8);
    MEMORY[0x28223BE20](v52);
    v55 = &v112 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = v133;
    sub_21DFC5E28(v55);
    v57 = sub_21E1401A4();
    (*(v53 + 8))(v55, v52);
    if (v57)
    {
      v51 = 1;
    }

    else
    {
      v51 = 2;
    }
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9448);
  MEMORY[0x28223BE20](v58 - 8);
  v60 = &v112 - v59;
  *v60 = 0x4062C00000000000;
  *(v60 + 1) = v51;
  *(v60 + 1) = xmmword_21E14A840;
  v62 = *(v61 + 52);
  sub_21DFA7EF8(a3);
  sub_21DFCA798(v63, v120, &v60[v62]);

  sub_21E141CC4();
  sub_21E13FCE4();
  sub_21DF3DE9C(v60, v49, &qword_27CEA9448);
  v120 = v47;
  v64 = &v49[*(v47 + 36)];
  v65 = v142;
  v66 = v143;
  *(v64 + 4) = v141;
  *(v64 + 5) = v65;
  *(v64 + 6) = v66;
  v67 = v138;
  *v64 = v137;
  *(v64 + 1) = v67;
  v68 = v140;
  *(v64 + 2) = v139;
  *(v64 + 3) = v68;
  v69 = type metadata accessor for ImageSearchResultView(0);
  v118 = &v112;
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v112 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DFD13C0(v56, v72, type metadata accessor for ImageSearchResultView);
  sub_21E1423C4();
  v73 = sub_21E1423B4();
  v74 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v75 = swift_allocObject();
  v76 = MEMORY[0x277D85700];
  *(v75 + 16) = v73;
  *(v75 + 24) = v76;
  sub_21DFD0B30(v72, v75 + v74, type metadata accessor for ImageSearchResultView);
  v77 = sub_21E1423F4();
  v78 = *(v77 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  v81 = &v112 - v80;
  sub_21E1423D4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v115 = sub_21E13F954();
    v116 = &v112;
    v114 = *(v115 - 8);
    MEMORY[0x28223BE20](v115);
    v113 = v49;
    v112 = &v112 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    v134 = 0;
    v135 = 0xE000000000000000;
    v117 = &v112;
    sub_21E142884();

    v134 = 0xD00000000000003DLL;
    v135 = 0x800000021E15C4B0;
    v136 = 111;
    v83 = sub_21E142AB4();
    MEMORY[0x223D52A60](v83);

    v85 = MEMORY[0x28223BE20](v84);
    (*(v78 + 16))(&v112 - v80, &v112 - v80, v77, v85);
    v86 = v112;
    sub_21E13F944();
    (*(v78 + 8))(v81, v77);
    v87 = v121;
    sub_21DF3DE9C(v113, v121, &qword_27CEA68A0);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA68A8);
    (*(v114 + 32))(v87 + *(v88 + 36), v86, v115);
  }

  else
  {
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA68B0);
    v87 = v121;
    v90 = &v121[*(v89 + 36)];
    v91 = sub_21E13F844();
    (*(v78 + 32))(&v90[*(v91 + 20)], &v112 - v80, v77);
    *v90 = &unk_21E14ADD8;
    *(v90 + 1) = v75;
    sub_21DF3DE9C(v49, v87, &qword_27CEA68A0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);
  sub_21E140514();
  v92 = sub_21DFD1B3C();
  v134 = v120;
  v135 = v92;
  swift_getOpaqueTypeConformance2();
  v93 = v126;
  v94 = v123;
  sub_21E1410C4();

  v95 = (*(v122 + 8))(v87, v94);
  v133 = &v112;
  MEMORY[0x28223BE20](v95);
  v97 = &v112 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v132;
  v99 = sub_21DF236C0(v132, v97, &qword_27CEA92E8);
  v130 = &v112;
  v100 = MEMORY[0x28223BE20](v99);
  v102 = &v112 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v127;
  v104 = *(v127 + 16);
  v105 = v93;
  v106 = v93;
  v107 = v128;
  v104(v102, v105, v128, v100);
  v108 = v131;
  sub_21DF236C0(v97, v131, &qword_27CEA92E8);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9460);
  (v104)(v108 + *(v109 + 48), v102, v107);
  v110 = *(v103 + 8);
  v110(v106, v107);
  sub_21DF23614(v98, &qword_27CEA92E8);
  v110(v102, v107);
  return sub_21DF23614(v97, &qword_27CEA92E8);
}

uint64_t sub_21DFCA798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a1;
  v108 = a3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9360);
  MEMORY[0x28223BE20](v109);
  v105 = &v89 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA93B0);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v111 = &v89 - v7;
  v98 = type metadata accessor for ImageSearchRelatedSearchesCardView();
  MEMORY[0x28223BE20](v98);
  v101 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v115 = &v89 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9350);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9338);
  MEMORY[0x28223BE20](v12);
  v95 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86C8);
  v110 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v89 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA93B8);
  MEMORY[0x28223BE20](v17 - 8);
  v99 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v114 = &v89 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA93C0);
  MEMORY[0x28223BE20](v21);
  v23 = &v89 - v22;
  v24 = type metadata accessor for ImageSearchResultView(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9330);
  MEMORY[0x28223BE20](v28);
  v31 = &v89 - v30;
  v100 = a2;
  v32 = *(a2 + 16);
  v107 = v33;
  if (v32)
  {
    v34 = v25;
    v91 = v26;
    v35 = v112;
    v106 = v12;
    v92 = v21;
    v93 = v23;
    v90 = *(v113 + 16);
    if (v90)
    {
      v36 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v37 = *(v113 + v36);
      sub_21DF236C0(v113 + v36, v16, &qword_27CEA86C8);
      v38 = *(v14 + 48);
      v39 = sub_21E13DD44();
      v126 = v39;
      v127 = MEMORY[0x277D79158];
      v40 = __swift_allocate_boxed_opaque_existential_1(&v123);
      (*(*(v39 - 8) + 32))(v40, &v16[v38], v39);
      sub_21DFA7E94(&v123, &v120);
      v41 = v35;
      sub_21DFD13C0(v35, v27, type metadata accessor for ImageSearchResultView);
      v42 = v34;
      v43 = (*(v34 + 80) + 56) & ~*(v34 + 80);
      v44 = swift_allocObject();
      sub_21DF0DBF0(&v120, v44 + 16);
      v45 = sub_21DFD0B30(v27, v44 + v43, type metadata accessor for ImageSearchResultView);
      MEMORY[0x28223BE20](v45);
      *(&v89 - 4) = &v123;
      *(&v89 - 3) = v37;
      LOBYTE(OpaqueTypeConformance2) = 0;
      v88 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA93C8);
      v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA93D0);
      v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA93D8);
      v48 = sub_21DFD11DC();
      v49 = sub_21DFD12C4();
      v116 = v46;
      v117 = v47;
      v118 = v48;
      v119 = v49;
      swift_getOpaqueTypeConformance2();
      v50 = v94;
      sub_21E141764();
      __swift_project_boxed_opaque_existential_1(&v123, v126);
      *&v120 = sub_21E13E574();
      *(&v120 + 1) = v51;
      sub_21DF23E5C(&qword_27CEA9348, &qword_27CEA9350);
      sub_21DF252E0();
      v52 = v95;
      v53 = v97;
      sub_21E141024();

      (*(v96 + 8))(v50, v53);
      sub_21DFD0D34();
      sub_21DFBBB34();
      v54 = v114;
      sub_21E140DD4();
      sub_21DF23614(v52, &qword_27CEA9338);
      __swift_destroy_boxed_opaque_existential_0(&v123);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9400);
      (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    }

    else
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9400);
      (*(*(v64 - 8) + 56))(v114, 1, 1, v64);
      v42 = v34;
    }

    v65 = v112;
    sub_21DFD13C0(v112, v27, type metadata accessor for ImageSearchResultView);
    v66 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v67 = swift_allocObject();
    sub_21DFD0B30(v27, v67 + v66, type metadata accessor for ImageSearchResultView);
    KeyPath = swift_getKeyPath();
    v69 = v115;
    *v115 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    v70 = v98;
    *(v69 + *(v98 + 20)) = v100;
    v71 = (v69 + *(v70 + 24));
    *v71 = sub_21DFD20C8;
    v71[1] = v67;
    v72 = (v113 + ((*(v110 + 80) + 32) & ~*(v110 + 80)));
    v123 = v113;
    v124 = v72;
    v125 = v90 != 0;
    v126 = (2 * v90) | 1;
    v110 = swift_getKeyPath();
    sub_21DFD13C0(v65, v27, type metadata accessor for ImageSearchResultView);
    v73 = swift_allocObject();
    sub_21DFD0B30(v27, v73 + v66, type metadata accessor for ImageSearchResultView);
    v74 = swift_allocObject();
    *(v74 + 16) = sub_21DFD13A4;
    *(v74 + 24) = v73;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9400);
    sub_21DF23E5C(&qword_27CEA9410, &qword_27CEA9408);
    v75 = sub_21DFD0D34();
    v76 = sub_21DFBBB34();
    *&v120 = v106;
    *(&v120 + 1) = &type metadata for ImageSearchCardButtonStyle;
    v121 = v75;
    v122 = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v77 = v111;
    sub_21E141A74();
    v78 = v99;
    sub_21DF236C0(v114, v99, &qword_27CEA93B8);
    v79 = v101;
    sub_21DFD13C0(v115, v101, type metadata accessor for ImageSearchRelatedSearchesCardView);
    v80 = v103;
    v81 = *(v103 + 16);
    v82 = v102;
    v83 = v104;
    v81(v102, v77, v104);
    v84 = v105;
    sub_21DF236C0(v78, v105, &qword_27CEA93B8);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9418);
    sub_21DFD13C0(v79, v84 + *(v85 + 48), type metadata accessor for ImageSearchRelatedSearchesCardView);
    v81((v84 + *(v85 + 64)), v82, v83);
    v86 = *(v80 + 8);
    v86(v82, v83);
    sub_21DFD1428(v79, type metadata accessor for ImageSearchRelatedSearchesCardView);
    sub_21DF23614(v78, &qword_27CEA93B8);
    sub_21DF236C0(v84, v93, &qword_27CEA9360);
    swift_storeEnumTagMultiPayload();
    sub_21DFD0C58();
    sub_21DF23E5C(&qword_27CEA9358, &qword_27CEA9360);
    sub_21E1402F4();
    sub_21DF23614(v84, &qword_27CEA9360);
    v86(v111, v83);
    sub_21DFD1428(v115, type metadata accessor for ImageSearchRelatedSearchesCardView);
    return sub_21DF23614(v114, &qword_27CEA93B8);
  }

  else
  {
    *&v120 = v113;
    v115 = v29;
    v114 = swift_getKeyPath();
    sub_21DFD13C0(v112, &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageSearchResultView);
    v56 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v57 = swift_allocObject();
    sub_21DFD0B30(&v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v57 + v56, type metadata accessor for ImageSearchResultView);
    v58 = swift_allocObject();
    *(v58 + 16) = sub_21DFD1488;
    *(v58 + 24) = v57;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9420);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9400);
    sub_21DF23E5C(&qword_27CEA9428, &qword_27CEA9420);
    v59 = sub_21DFD0D34();
    v60 = sub_21DFBBB34();
    v123 = v12;
    v124 = &type metadata for ImageSearchCardButtonStyle;
    v125 = v59;
    v126 = v60;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_21E141A74();
    v61 = v115;
    v62 = v107;
    (*(v115 + 16))(v23, v31, v107);
    swift_storeEnumTagMultiPayload();
    sub_21DFD0C58();
    sub_21DF23E5C(&qword_27CEA9358, &qword_27CEA9360);
    sub_21E1402F4();
    return (*(v61 + 8))(v31, v62);
  }
}

uint64_t sub_21DFCB7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a3;
  v4 = sub_21E141E74();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_21E141E94();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = *(type metadata accessor for ImageSearchResultView(0) - 8);
  v3[16] = v6;
  v3[17] = *(v6 + 64);
  v3[18] = swift_task_alloc();
  v7 = sub_21E141EB4();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  sub_21E1423C4();
  v3[23] = sub_21E1423B4();
  v9 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DFCB9D4, v9, v8);
}

uint64_t sub_21DFCB9D4()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v13 = v0[22];
  v5 = v0[16];
  v12 = v0[15];
  v19 = v0[14];
  v20 = v0[13];
  v18 = v0[11];
  v15 = v0[12];
  v16 = v0[10];
  v6 = v0[9];

  sub_21DF3ED18(0, &qword_280F68C78);
  v14 = sub_21E1425C4();
  sub_21E141EA4();
  sub_21E141EC4();
  v17 = *(v1 + 8);
  v17(v2, v3);
  sub_21DFD13C0(v6, v4, type metadata accessor for ImageSearchResultView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21DFD0B30(v4, v8 + v7, type metadata accessor for ImageSearchResultView);
  v0[6] = sub_21DFD1C80;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21E079CD4;
  v0[5] = &block_descriptor_2;
  v9 = _Block_copy(v0 + 2);

  sub_21E141E84();
  v0[8] = MEMORY[0x277D84F90];
  sub_21DFC6A6C(&qword_280F68CE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E70);
  sub_21DF23E5C(&qword_280F68CA8, &qword_27CEA6E70);
  sub_21E142764();
  MEMORY[0x223D52DF0](v13, v12, v15, v9);
  _Block_release(v9);

  (*(v18 + 8))(v15, v16);
  (*(v19 + 8))(v12, v20);
  v17(v13, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21DFCBD1C()
{
  type metadata accessor for ImageSearchResultView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);
  return sub_21E140504();
}

uint64_t sub_21DFCBD7C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v207 = a7;
  v206 = a6;
  v201 = a5;
  v200 = a4;
  v221 = a3;
  v217 = a8;
  v10 = sub_21E1400C4();
  MEMORY[0x28223BE20](v10 - 8);
  v205 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD360);
  MEMORY[0x28223BE20](v210);
  v13 = (&v178 - v12);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92C0);
  MEMORY[0x28223BE20](v208);
  v216 = &v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v213 = &v178 - v16;
  MEMORY[0x28223BE20](v17);
  v215 = &v178 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9D90);
  MEMORY[0x28223BE20](v19 - 8);
  v204 = &v178 - v20;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92C8);
  MEMORY[0x28223BE20](v198);
  v197 = &v178 - v21;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92D0);
  MEMORY[0x28223BE20](v196);
  v199 = (&v178 - v22);
  v189 = sub_21E1401B4();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v187 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92D8);
  MEMORY[0x28223BE20](v222);
  v202 = &v178 - v24;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92E0);
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v209 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v178 - v27;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v193);
  v192 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v191 = &v178 - v31;
  v226 = type metadata accessor for ImageSearchResultView(0);
  v218 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v203 = &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = v32;
  MEMORY[0x28223BE20](v33);
  v219 = &v178 - v34;
  v35 = type metadata accessor for ImageSearchAdsBlockView();
  v195 = *(v35 - 1);
  MEMORY[0x28223BE20](v35);
  v190 = (&v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92E8);
  MEMORY[0x28223BE20](v37 - 8);
  v224 = &v178 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v227 = &v178 - v40;
  v182 = sub_21E1404E4();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v42 = &v178 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92F0);
  MEMORY[0x28223BE20](v43);
  v45 = &v178 - v44;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA92F8);
  MEMORY[0x28223BE20](v179);
  v47 = &v178 - v46;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9300);
  MEMORY[0x28223BE20](v180);
  v185 = &v178 - v48;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9308);
  MEMORY[0x28223BE20](v183);
  v186 = &v178 - v49;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9310);
  v50 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v184 = &v178 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9318);
  MEMORY[0x28223BE20](v52 - 8);
  v223 = &v178 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v214 = v13;
  v228 = v28;
  v225 = &v178 - v55;
  if (a1)
  {
    sub_21E141684();
    v56 = v35;
    v57 = a2;
    v58 = sub_21E1409A4();
    KeyPath = swift_getKeyPath();
    v60 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9390) + 36)];
    *v60 = KeyPath;
    v60[1] = v58;
    v61 = &v45[*(v43 + 36)];
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8288) + 28);
    v63 = *MEMORY[0x277CE1050];
    v64 = sub_21E141654();
    (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
    *v61 = swift_getKeyPath();
    a2 = v57;
    v35 = v56;
    sub_21E1404D4();
    sub_21DFD102C();
    sub_21DFC6A6C(&qword_27CEA93A8, MEMORY[0x277CDE1B0]);
    v65 = v182;
    sub_21E140DA4();
    (*(v181 + 8))(v42, v65);
    sub_21DF23614(v45, &qword_27CEA92F0);
    v66 = swift_getKeyPath();
    v67 = &v47[*(v179 + 36)];
    *v67 = v66;
    v67[8] = 0;
    sub_21E141CD4();
    sub_21E13FCE4();
    v68 = v185;
    sub_21DF3DE9C(v47, v185, &qword_27CEA92F8);
    v69 = (v68 + *(v180 + 36));
    v70 = v234;
    v69[4] = v233;
    v69[5] = v70;
    v69[6] = v235;
    v71 = v230;
    *v69 = v229;
    v69[1] = v71;
    v72 = v232;
    v69[2] = v231;
    v69[3] = v72;
    v73 = sub_21E140924();
    sub_21E13F374();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v68;
    v83 = v186;
    sub_21DF3DE9C(v82, v186, &qword_27CEA9300);
    v84 = v83 + *(v183 + 36);
    *v84 = v73;
    *(v84 + 8) = v75;
    *(v84 + 16) = v77;
    *(v84 + 24) = v79;
    *(v84 + 32) = v81;
    *(v84 + 40) = 0;
    v85 = sub_21E140934();
    sub_21E13F374();
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v94 = v184;
    sub_21DF3DE9C(v83, v184, &qword_27CEA9308);
    v95 = v194;
    v96 = v94 + *(v194 + 36);
    *v96 = v85;
    *(v96 + 8) = v87;
    *(v96 + 16) = v89;
    *(v96 + 24) = v91;
    *(v96 + 32) = v93;
    *(v96 + 40) = 0;
    v97 = v225;
    sub_21DF3DE9C(v94, v225, &qword_27CEA9310);
    (*(v50 + 56))(v97, 0, 1, v95);
  }

  else
  {
    (*(v50 + 56))(&v178 - v55, 1, 1, v194);
  }

  if (*(a2 + 16))
  {
    v98 = sub_21E13E2A4();
    v99 = v190;
    (*(*(v98 - 8) + 16))(v190 + v35[8], a2 + ((*(*(v98 - 8) + 80) + 32) & ~*(*(v98 - 8) + 80)), v98);
    v100 = v221;
    v101 = *(v221 + *(v226 + 52));
    swift_getKeyPath();
    *&v236 = v101;
    sub_21DFC6A6C(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v102 = (v101 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration);
    swift_beginAccess();
    LODWORD(v194) = *v102;
    LODWORD(v186) = v102[1];
    LODWORD(v185) = v102[2];
    v103 = *(v102 + 1);
    v104 = *(v102 + 2);
    v184 = v103;
    v105 = v100;
    v106 = v219;
    sub_21DFD13C0(v105, v219, type metadata accessor for ImageSearchResultView);
    v107 = (*(v218 + 80) + 16) & ~*(v218 + 80);
    v108 = swift_allocObject();
    sub_21DFD0B30(v106, v108 + v107, type metadata accessor for ImageSearchResultView);
    *v99 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    v109 = v35[5];
    *(v99 + v109) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
    swift_storeEnumTagMultiPayload();
    v110 = v99 + v35[6];
    *v110 = swift_getKeyPath();
    *(v110 + 1) = 0;
    v110[16] = 0;
    v111 = type metadata accessor for IdentifiableURL();
    v112 = v191;
    (*(*(v111 - 8) + 56))(v191, 1, 1, v111);
    sub_21DF236C0(v112, v192, &qword_27CEA8668);

    sub_21E141704();
    sub_21DF23614(v112, &qword_27CEA8668);
    v113 = v99 + v35[9];
    *v113 = v194;
    v113[1] = v186;
    v113[2] = v185;
    *(v113 + 1) = v184;
    *(v113 + 2) = v104;
    v114 = (v99 + v35[10]);
    *v114 = sub_21DFD20C8;
    v114[1] = v108;
    v115 = v227;
    sub_21DFD0B30(v99, v227, type metadata accessor for ImageSearchAdsBlockView);
    v116 = 0;
  }

  else
  {
    v116 = 1;
    v115 = v227;
  }

  (*(v195 + 56))(v115, v116, 1, v35);
  v117 = v200;
  v118 = *(v200 + 16);
  if (v118 == 1)
  {
    v119 = v221;
  }

  else
  {
    v120 = v187;
    v119 = v221;
    sub_21DFC5E28(v187);
    v121 = sub_21E1401A4();
    (*(v188 + 8))(v120, v189);
    v118 = 1;
    if ((v121 & 1) == 0)
    {
      v118 = 2;
    }
  }

  v122 = v199;
  *v199 = 0x4062C00000000000;
  *(v122 + 8) = v118;
  *(v122 + 16) = xmmword_21E14A840;
  sub_21DFA7EF8(v117);
  v123 = v197;
  sub_21DFCA798(v124, v201, v197);

  MEMORY[0x28223BE20](v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8130);
  sub_21DFD0BA0();
  sub_21DF8C5DC();
  sub_21E140DE4();
  sub_21DF23614(v123, &qword_27CEA92C8);
  sub_21E141CC4();
  sub_21E13FCE4();
  v126 = v202;
  sub_21DF3DE9C(v122, v202, &qword_27CEA92D0);
  v127 = (v126 + *(v222 + 36));
  v128 = v241;
  v127[4] = v240;
  v127[5] = v128;
  v127[6] = v242;
  v129 = v237;
  *v127 = v236;
  v127[1] = v129;
  v130 = v239;
  v127[2] = v238;
  v127[3] = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
  v131 = v204;
  sub_21E141734();
  v221 = type metadata accessor for ImageSearchResultView;
  v132 = v219;
  sub_21DFD13C0(v119, v219, type metadata accessor for ImageSearchResultView);
  v133 = *(v218 + 80);
  v134 = swift_allocObject();
  v218 = type metadata accessor for ImageSearchResultView;
  sub_21DFD0B30(v132, v134 + ((v133 + 16) & ~v133), type metadata accessor for ImageSearchResultView);
  type metadata accessor for IdentifiableURL();
  type metadata accessor for InAppWebPresentationView(0);
  sub_21DFD0E74();
  sub_21DFC6A6C(&qword_27CEA8C68, type metadata accessor for IdentifiableURL);
  sub_21DFC6A6C(&qword_27CEA9E70, type metadata accessor for InAppWebPresentationView);
  sub_21E141284();

  sub_21DF23614(v131, &unk_27CEA9D90);
  sub_21DF23614(v126, &qword_27CEA92D8);
  sub_21E1400B4();
  sub_21E1400A4();
  sub_21E13E174();
  sub_21E140094();

  sub_21E1400A4();
  v226 = sub_21E1400E4();
  v222 = v135;
  v136 = sub_21DFC93F0();
  v137 = v119;
  v139 = v138;
  v140 = v203;
  sub_21DFD13C0(v137, v203, v221);
  v141 = swift_allocObject();
  v142 = v207;
  *(v141 + 16) = v206;
  *(v141 + 24) = v142;
  sub_21DFD0B30(v140, v141 + ((v133 + 32) & ~v133), v218);
  v143 = swift_getKeyPath();
  v144 = v214;
  *v214 = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  v145 = v210;
  v146 = (v144 + *(v210 + 36));
  *v146 = v136;
  v146[1] = v139;
  v147 = (v144 + *(v145 + 40));
  *v147 = sub_21DFD1028;
  v147[1] = v141;
  sub_21DF3ED18(0, &qword_280F68C20);

  if (!sub_21E1426B4())
  {
    v148 = [objc_opt_self() mainBundle];
  }

  v149 = sub_21E140C64();
  v150 = v144 + *(v145 + 44);
  *v150 = v149;
  *(v150 + 8) = v151;
  *(v150 + 16) = v152 & 1;
  *(v150 + 24) = v153;
  v154 = v213;
  v155 = &v213[*(v208 + 36)];
  sub_21E141BD4();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B80);
  v157 = &v155[*(v156 + 52)];
  v158 = *(sub_21E13FCA4() + 20);
  v159 = *MEMORY[0x277CE0118];
  v160 = sub_21E140144();
  (*(*(v160 - 8) + 104))(&v157[v158], v159, v160);
  __asm { FMOV            V0.2D, #16.0 }

  *v157 = _Q0;
  *&v155[*(v156 + 56)] = 256;
  sub_21DF3DE9C(v144, v154, &unk_27CEAD360);
  v166 = v215;
  sub_21DF3DE9C(v154, v215, &qword_27CEA92C0);
  v167 = v223;
  sub_21DF236C0(v225, v223, &qword_27CEA9318);
  v168 = v224;
  sub_21DF236C0(v227, v224, &qword_27CEA92E8);
  v169 = v211;
  v170 = *(v211 + 16);
  v171 = v209;
  v172 = v212;
  v170(v209, v228, v212);
  v173 = v216;
  sub_21DF236C0(v166, v216, &qword_27CEA92C0);
  v174 = v217;
  sub_21DF236C0(v167, v217, &qword_27CEA9318);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9388);
  sub_21DF236C0(v168, v174 + v175[12], &qword_27CEA92E8);
  v170((v174 + v175[16]), v171, v172);
  sub_21DF236C0(v173, v174 + v175[20], &qword_27CEA92C0);
  sub_21DF23614(v166, &qword_27CEA92C0);
  v176 = *(v169 + 8);
  v176(v228, v172);
  sub_21DF23614(v227, &qword_27CEA92E8);
  sub_21DF23614(v225, &qword_27CEA9318);
  sub_21DF23614(v173, &qword_27CEA92C0);
  v176(v171, v172);
  sub_21DF23614(v224, &qword_27CEA92E8);
  return sub_21DF23614(v223, &qword_27CEA9318);
}

uint64_t sub_21DFCD7C8@<X0>(uint64_t a1@<X8>)
{
  sub_21E1400D4();
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  result = sub_21E140C64();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21DFCD8BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E141634();
  *a1 = result;
  return result;
}

uint64_t sub_21DFCD8FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = sub_21E13FF94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MKBGetDeviceLockState();
  if (v14 && v14 != 3)
  {
    v18 = a2 + *(type metadata accessor for ImageSearchResultView(0) + 20);
    v19 = *v18;
    if (*(v18 + 16) == 1)
    {
    }

    else
    {

      sub_21E142574();
      v20 = sub_21E1408C4();
      sub_21E13F184();

      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DF446B8();
      (*(v11 + 8))(v13, v10);
      v19 = v21;
    }

    LOBYTE(v21) = 1;
    v19(a1, &v21);
  }

  else
  {
    v15 = sub_21E13D264();
    (*(*(v15 - 8) + 16))(v9, a1, v15);
    v16 = type metadata accessor for IdentifiableURL();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    type metadata accessor for ImageSearchResultView(0);
    sub_21DF236C0(v9, v6, &qword_27CEA8668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
    sub_21E141724();
    return sub_21DF23614(v9, &qword_27CEA8668);
  }
}

double sub_21DFCDBF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E13D994();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D78F28], v4, v6);
  v9 = (a1 + *(type metadata accessor for ImageSearchResultView(0) + 44));
  v19 = *v9;
  v20 = *(v9 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  sub_21E1419F4();
  v10 = v17;
  v11 = type metadata accessor for ReportAConcernButton(0);
  v12 = sub_21E13DF64();
  v16 = v18;
  (*(*(v12 - 8) + 56))(a2 + v11[6], 1, 1, v12);
  (*(v5 + 32))(a2, v8, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
  v13 = (a2 + v11[5]);
  *v13 = 0;
  v13[1] = 0;
  v14 = a2 + v11[7];
  *v14 = v10;
  result = *&v16;
  *(v14 + 8) = v16;
  return result;
}

uint64_t sub_21DFCDDD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for IdentifiableURL();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for ImageSearchResultView(0);
  sub_21DF236C0(v5, v2, &qword_27CEA8668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
  sub_21E141724();
  return sub_21DF23614(v5, &qword_27CEA8668);
}

uint64_t sub_21DFCDF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21E13FF94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_21E13D264();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13D244();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_21DF23614(v10, &qword_27CEA9990);
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = a3 + *(type metadata accessor for ImageSearchResultView(0) + 20);
  v17 = *v16;
  if (*(v16 + 16) == 1)
  {
  }

  else
  {

    sub_21E142574();
    v18 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    sub_21DF446B8();
    (*(v5 + 8))(v7, v4);
    v17 = v19;
  }

  LOBYTE(v19) = 1;
  v17(v14, &v19);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_21DFCE204(uint64_t a1)
{
  v2 = sub_21E13D304();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (a1 + *(type metadata accessor for ImageSearchResultView(0) + 44));
  v11 = *v5;
  v12 = *(v5 + 1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  MEMORY[0x223D52200](&v10, v6);
  v7 = v10;
  swift_getKeyPath();
  v11 = v7;
  sub_21DFC6A6C(&qword_280F6A900, type metadata accessor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  v8 = *(v7 + 16);
  sub_21E141F24();

  sub_21E13D2F4();
  sub_21E11836C(v4);
}

uint64_t sub_21DFCE36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a1;
  v28 = a4;
  v6 = type metadata accessor for ImageSearchResultView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9350);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9338);
  MEMORY[0x28223BE20](v27);
  v14 = &v25 - v13;
  v15 = sub_21E13DD44();
  v39 = v15;
  v40 = MEMORY[0x277D79158];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a2, v15);
  sub_21DFA7E94(v38, v37);
  sub_21DFD13C0(a3, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageSearchResultView);
  v17 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_21DF0DBF0(v37, v18 + 16);
  sub_21DFD0B30(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ImageSearchResultView);
  v29 = v38;
  v30 = v26;
  v31 = 0;
  v32 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA93C8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA93D0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA93D8);
  v21 = sub_21DFD11DC();
  v22 = sub_21DFD12C4();
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  sub_21E141764();
  __swift_project_boxed_opaque_existential_1(v38, v39);
  *&v37[0] = sub_21E13E574();
  *(&v37[0] + 1) = v23;
  sub_21DF23E5C(&qword_27CEA9348, &qword_27CEA9350);
  sub_21DF252E0();
  sub_21E141024();
  (*(v10 + 8))(v12, v9);

  sub_21DFD0D34();
  sub_21DFBBB34();
  sub_21E140DD4();
  sub_21DF23614(v14, &qword_27CEA9338);
  return __swift_destroy_boxed_opaque_existential_0(v38);
}

void sub_21DFCE7AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageSearchResultView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9350);
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9338);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - v17;
  v19 = a1 + 2;
  if (__OFADD__(a1, 2))
  {
    __break(1u);
  }

  else
  {
    v31[1] = v16;
    v20 = sub_21E13DD44();
    v40 = v20;
    v41 = MEMORY[0x277D79158];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, a2, v20);
    sub_21DFA7E94(v39, v38);
    sub_21DFD13C0(a3, v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ImageSearchResultView);
    v22 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v23 = swift_allocObject();
    sub_21DF0DBF0(v38, v23 + 16);
    v24 = sub_21DFD0B30(v11, v23 + v22, type metadata accessor for ImageSearchResultView);
    v31[0] = a4;
    MEMORY[0x28223BE20](v24);
    v31[-4] = v39;
    v31[-3] = v19;
    LOBYTE(v31[-2]) = 0;
    v31[-1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA93C8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA93D0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA93D8);
    v27 = sub_21DFD11DC();
    v28 = sub_21DFD12C4();
    v34 = v25;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    swift_getOpaqueTypeConformance2();
    sub_21E141764();
    __swift_project_boxed_opaque_existential_1(v39, v40);
    *&v38[0] = sub_21E13E574();
    *(&v38[0] + 1) = v29;
    sub_21DF23E5C(&qword_27CEA9348, &qword_27CEA9350);
    sub_21DF252E0();
    v30 = v33;
    sub_21E141024();
    (*(v32 + 8))(v14, v30);

    sub_21DFD0D34();
    sub_21DFBBB34();
    sub_21E140DD4();
    sub_21DF23614(v18, &qword_27CEA9338);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }
}

uint64_t sub_21DFCEC04(void *a1, uint64_t a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8668);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = sub_21E13FF94();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_21E13D264();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E13E544();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_21DF23614(v13, &qword_27CEA9990);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = MKBGetDeviceLockState();
  if (v19 && v19 != 3)
  {
    v29 = v35 + *(type metadata accessor for ImageSearchResultView(0) + 20);
    v30 = *v29;
    if (*(v29 + 16) == 1)
    {
    }

    else
    {

      sub_21E142574();
      v31 = sub_21E1408C4();
      sub_21E13F184();

      sub_21E13FF84();
      swift_getAtKeyPath();
      sub_21DF446B8();
      (*(v32 + 8))(v10, v33);
      v30 = v37;
    }

    LOBYTE(v37) = 1;
    v30(v17, &v37);

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v20 = *(type metadata accessor for ImageSearchResultView(0) + 52);
    v33 = v17;
    v21 = *(v35 + v20);
    swift_getKeyPath();
    v37 = v21;
    sub_21DFC6A6C(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
    swift_beginAccess();
    v23 = *&v21[v22];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    v24 = sub_21E13E584();
    v26 = v25;
    swift_getKeyPath();
    v36 = v23;
    sub_21DFC6A6C(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3C4();

    sub_21E00B878(v24, v26);

    v27 = v33;
    (*(v15 + 16))(v7, v33, v14);
    v28 = type metadata accessor for IdentifiableURL();
    (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
    sub_21DF236C0(v7, v34, &qword_27CEA8668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);
    sub_21E141724();
    sub_21DF23614(v7, &qword_27CEA8668);
    return (*(v15 + 8))(v27, v14);
  }
}

uint64_t sub_21DFCF1DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA93D0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v11 = type metadata accessor for ImageSearchCardView(0);
  sub_21DFA7E94(a1, v10 + v11[5]);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  swift_storeEnumTagMultiPayload();
  *(v10 + v11[6]) = a2;
  *(v10 + v11[7]) = a3;
  *(v10 + *(v8 + 36)) = sub_21E1404A4();
  v14 = a4;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA93D8);
  sub_21DFD11DC();
  sub_21DFD12C4();
  sub_21E140DE4();
  return sub_21DF23614(v10, &qword_27CEA93D0);
}

uint64_t sub_21DFCF368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v22 = a2;
  v25 = a3;
  v4 = sub_21E13D994();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8130);
  MEMORY[0x28223BE20](v24);
  v9 = &v22 - v8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9430);
  MEMORY[0x28223BE20](v23);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ImageSearchResultView(0);
  v13 = *(a1 + *(v12 + 52));
  swift_getKeyPath();
  v26 = v13;
  sub_21DFC6A6C(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v14 = v13 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration;
  swift_beginAccess();
  if (*(v14 + 2) != 1)
  {
    goto LABEL_6;
  }

  if (qword_280F69E50 != -1)
  {
    swift_once();
  }

  if (byte_280F6FD20 == 1)
  {
    sub_21DFA7E94(v22, &v26);
    sub_21DFD1948(&v26, v11);
    swift_storeEnumTagMultiPayload();
    sub_21DFD1350();
    sub_21DF8C5DC();
    sub_21E1402F4();
    return sub_21DFD19A4(&v26);
  }

  else
  {
LABEL_6:
    (*(v5 + 104))(v7, *MEMORY[0x277D78F28], v4);
    v16 = (a1 + *(v12 + 44));
    v26 = *v16;
    v27 = *(v16 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    sub_21E1419F4();
    v17 = v28;
    v18 = type metadata accessor for ReportAConcernButton(0);
    v19 = sub_21E13DF64();
    v22 = v29;
    (*(*(v19 - 8) + 56))(&v9[v18[6]], 1, 1, v19);
    (*(v5 + 32))(v9, v7, v4);
    (*(v5 + 56))(v9, 0, 1, v4);
    v20 = &v9[v18[5]];
    *v20 = 0;
    *(v20 + 1) = 0;
    v21 = &v9[v18[7]];
    *v21 = v17;
    *(v21 + 8) = v22;
    sub_21DF236C0(v9, v11, &qword_27CEA8130);
    swift_storeEnumTagMultiPayload();
    sub_21DFD1350();
    sub_21DF8C5DC();
    sub_21E1402F4();
    return sub_21DF23614(v9, &qword_27CEA8130);
  }
}

uint64_t sub_21DFCF7AC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_21DFCF830(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_21DFCF89C(uint64_t a1)
{
  v2 = v1 + *(a1 + 40);
  v3 = *v2;
  sub_21DFD0B1C(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_21DFCF8D8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_21DFCF944@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E13D264();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21DFCF9AC(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *v2;
  sub_21DFD0B1C(*v2, *(v2 + 8));
  return v3;
}

unint64_t sub_21DFCFA34()
{
  result = qword_27CEA91E0;
  if (!qword_27CEA91E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA91C8);
    sub_21DFCFAC0();
    sub_21DFCFC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA91E0);
  }

  return result;
}

unint64_t sub_21DFCFAC0()
{
  result = qword_27CEA91E8;
  if (!qword_27CEA91E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA91D8);
    sub_21DFCFB7C();
    sub_21DFC6A6C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA91E8);
  }

  return result;
}

unint64_t sub_21DFCFB7C()
{
  result = qword_27CEA91F0;
  if (!qword_27CEA91F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA91D0);
    sub_21DFC6A6C(&qword_27CEA91F8, type metadata accessor for LatencyTextStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA91F0);
  }

  return result;
}

unint64_t sub_21DFCFC38()
{
  result = qword_27CEA9200;
  if (!qword_27CEA9200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA91B0);
    type metadata accessor for EmptyResultsView();
    sub_21DFC6A6C(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
    swift_getOpaqueTypeConformance2();
    sub_21DFCFD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9200);
  }

  return result;
}

unint64_t sub_21DFCFD24()
{
  result = qword_27CEA9208;
  if (!qword_27CEA9208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9198);
    sub_21DFCFDB0();
    sub_21DFCFF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9208);
  }

  return result;
}

unint64_t sub_21DFCFDB0()
{
  result = qword_27CEA9210;
  if (!qword_27CEA9210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9180);
    type metadata accessor for IdentifiableURL();
    type metadata accessor for InAppWebPresentationView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9178);
    sub_21DF23E5C(&qword_27CEA9218, &qword_27CEA9178);
    swift_getOpaqueTypeConformance2();
    sub_21DFC6A6C(&qword_27CEA8C68, type metadata accessor for IdentifiableURL);
    sub_21DFC6A6C(&qword_27CEA9E70, type metadata accessor for InAppWebPresentationView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9210);
  }

  return result;
}

unint64_t sub_21DFCFF88()
{
  result = qword_27CEA9220;
  if (!qword_27CEA9220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9168);
    sub_21DF23E5C(&qword_27CEA9228, &qword_27CEA9230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9220);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for ImageSearchResultView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E1401B4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_21DF446B8();
  v5 = v1[6];
  v6 = sub_21E13DDE4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v1[7];
  v8 = sub_21E13E1A4();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v3 + v1[8];
  v10 = type metadata accessor for IdentifiableURL();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_21E13D264();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);

  v12 = v3 + v1[10];
  v13 = sub_21E140634();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);

  return swift_deallocObject();
}

void sub_21DFD03CC()
{
  sub_21DFD087C(319, &qword_27CEA7108, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21DFD0AB8(319, &qword_280F69020, &qword_27CEA79E8, &unk_21E14EA10, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_21E13DDE4();
      if (v2 <= 0x3F)
      {
        sub_21E13E1A4();
        if (v3 <= 0x3F)
        {
          sub_21DFD0AB8(319, &qword_27CEA9E20, &qword_27CEA8668, &unk_21E149310, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_21DFD082C(319, &qword_280F68D48, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_21DFD0620();
              if (v6 <= 0x3F)
              {
                sub_21DFD087C(319, &qword_280F68D08, type metadata accessor for FeedbackController, MEMORY[0x277CE11F8]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for NewSaliencyModel();
                  if (v8 <= 0x3F)
                  {
                    sub_21DFD087C(319, &qword_27CEA9260, MEMORY[0x277D79160], MEMORY[0x277D83940]);
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

void sub_21DFD0620()
{
  if (!qword_27CEA9258)
  {
    v0 = sub_21E140534();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEA9258);
    }
  }
}

unint64_t sub_21DFD0678()
{
  result = qword_27CEA9268;
  if (!qword_27CEA9268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9270);
    sub_21DFCFA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9268);
  }

  return result;
}

void sub_21DFD072C()
{
  sub_21E13D264();
  if (v0 <= 0x3F)
  {
    sub_21DFD082C(319, &qword_27CEA9288, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21DFD087C(319, &qword_27CEA9290, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21DFD082C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21DFD087C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21DFD0908()
{
  sub_21DFD0A54();
  if (v0 <= 0x3F)
  {
    sub_21DFD087C(319, &qword_27CEA9290, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21DFD082C(319, &qword_27CEA9288, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21DFD0AB8(319, &qword_27CEA92B0, &qword_27CEA92B8, &unk_21E14AA68, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21DFD0A54()
{
  result = qword_27CEA92A8;
  if (!qword_27CEA92A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CEA92A8);
  }

  return result;
}

void sub_21DFD0AB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21DFD0B1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21DFAD958(a1, a2);
  }

  return a1;
}

uint64_t sub_21DFD0B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21DFD0BA0()
{
  result = qword_27CEA9320;
  if (!qword_27CEA9320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA92C8);
    sub_21DFD0C58();
    sub_21DF23E5C(&qword_27CEA9358, &qword_27CEA9360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9320);
  }

  return result;
}

unint64_t sub_21DFD0C58()
{
  result = qword_27CEA9328;
  if (!qword_27CEA9328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9338);
    sub_21DFD0D34();
    sub_21DFBBB34();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9328);
  }

  return result;
}

unint64_t sub_21DFD0D34()
{
  result = qword_27CEA9340;
  if (!qword_27CEA9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9338);
    sub_21DF23E5C(&qword_27CEA9348, &qword_27CEA9350);
    sub_21DFC6A6C(&qword_27CEA9E80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9340);
  }

  return result;
}

unint64_t sub_21DFD0E74()
{
  result = qword_27CEA9368;
  if (!qword_27CEA9368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA92D8);
    sub_21DFD0F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9368);
  }

  return result;
}

unint64_t sub_21DFD0F00()
{
  result = qword_27CEA9370;
  if (!qword_27CEA9370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA92D0);
    sub_21DF23E5C(&qword_27CEA9378, &qword_27CEA9380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA92C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8130);
    sub_21DFD0BA0();
    sub_21DF8C5DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9370);
  }

  return result;
}

unint64_t sub_21DFD102C()
{
  result = qword_27CEA9398;
  if (!qword_27CEA9398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA92F0);
    sub_21DFD10E4();
    sub_21DF23E5C(&qword_280F68DB8, &qword_27CEA8288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9398);
  }

  return result;
}

unint64_t sub_21DFD10E4()
{
  result = qword_27CEA93A0;
  if (!qword_27CEA93A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9390);
    sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA93A0);
  }

  return result;
}

unint64_t sub_21DFD11DC()
{
  result = qword_27CEA93E0;
  if (!qword_27CEA93E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA93D0);
    sub_21DFC6A6C(&qword_27CEA93E8, type metadata accessor for ImageSearchCardView);
    sub_21DF23E5C(&qword_280F68E00, &qword_27CEA8AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA93E0);
  }

  return result;
}

unint64_t sub_21DFD12C4()
{
  result = qword_27CEA93F0;
  if (!qword_27CEA93F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA93D8);
    sub_21DFD1350();
    sub_21DF8C5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA93F0);
  }

  return result;
}

unint64_t sub_21DFD1350()
{
  result = qword_27CEA93F8;
  if (!qword_27CEA93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA93F8);
  }

  return result;
}

uint64_t sub_21DFD13C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DFD1428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21DFD14A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ImageSearchResultView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_21DFD153C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA86C8);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t objectdestroy_67Tm()
{
  v1 = type metadata accessor for ImageSearchResultView(0);
  v2 = (*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E1401B4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_21DF446B8();
  v5 = v1[6];
  v6 = sub_21E13DDE4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v1[7];
  v8 = sub_21E13E1A4();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v3 + v1[8];
  v10 = type metadata accessor for IdentifiableURL();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_21E13D264();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);

  v12 = v3 + v1[10];
  v13 = sub_21E140634();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);

  return swift_deallocObject();
}

uint64_t sub_21DFD18DC()
{
  v1 = *(type metadata accessor for ImageSearchResultView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_21DFCEC04((v0 + 16), v2);
}

uint64_t sub_21DFD1A60()
{
  v2 = *(type metadata accessor for ImageSearchResultView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21DF4AA04;

  return sub_21DFCB7BC(v4, v5, v0 + v3);
}

unint64_t sub_21DFD1B3C()
{
  result = qword_27CEA9450;
  if (!qword_27CEA9450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA68A0);
    sub_21DFD1BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9450);
  }

  return result;
}

unint64_t sub_21DFD1BC8()
{
  result = qword_27CEA9458;
  if (!qword_27CEA9458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9448);
    sub_21DF23E5C(&qword_27CEA9378, &qword_27CEA9380);
    sub_21DFD0BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9458);
  }

  return result;
}

uint64_t sub_21DFD1C98(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ImageSearchResultView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_52Tm()
{
  v1 = type metadata accessor for ImageSearchResultView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E1401B4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_21DF446B8();
  v5 = v1[6];
  v6 = sub_21E13DDE4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v1[7];
  v8 = sub_21E13E1A4();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v3 + v1[8];
  v10 = type metadata accessor for IdentifiableURL();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_21E13D264();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00);

  v12 = v3 + v1[10];
  v13 = sub_21E140634();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238);

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore26ImageSearchProductAdRating_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21DFD20E8(uint64_t a1, int a2)
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

uint64_t sub_21DFD2130(uint64_t result, int a2, int a3)
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

uint64_t sub_21DFD21A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E140A64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DFD23B4();
  v22 = v7;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  sub_21E140994();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  v13 = sub_21E140A94();

  (*(v3 + 8))(v5, v2);
  v14 = swift_getKeyPath();
  LOBYTE(v3) = v9 & 1;
  v24 = v9 & 1;
  v23 = 0;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9470) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9478) + 28);
  v17 = *MEMORY[0x277CE0B30];
  v18 = sub_21E140BF4();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  result = swift_getKeyPath();
  *v15 = result;
  v20 = v22;
  *a1 = v6;
  *(a1 + 8) = v20;
  *(a1 + 16) = v3;
  *(a1 + 24) = v11;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v14;
  *(a1 + 64) = v13;
  return result;
}

uint64_t sub_21DFD23B4()
{
  v1 = v0;
  v72 = sub_21E13D194();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v3 = v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13D384();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9480);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = v68 - v10;
  v11 = sub_21E1400C4();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v68 - v15;
  MEMORY[0x28223BE20](v17);
  sub_21DFD2FCC((v1 + 2), &v77);
  if (!v78)
  {
    sub_21DFD303C(&v77);
LABEL_9:
    v47 = v1[1];
    v79[0] = *v1;
    v79[1] = v47;
    sub_21DF252E0();

    return sub_21E140C94();
  }

  v69 = v5;
  v70 = v6;
  v68[2] = v16;
  sub_21DFB4814(&v77, v79);
  __swift_project_boxed_opaque_existential_1(v79, v80);
  sub_21E13E874();
  if (v18 <= 0.0)
  {
    __swift_destroy_boxed_opaque_existential_0(v79);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v79, v80);
  v68[1] = sub_21E13E864();
  if (v19)
  {
    v68[0] = v19;
    sub_21E1400B4();
    sub_21E1400A4();
    v20 = v1[1];
    *&v77 = *v1;
    *(&v77 + 1) = v20;

    MEMORY[0x223D52A60](548913696, 0xA400000000000000);
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_21E13E874();
    v74 = v21;
    sub_21E13D364();
    sub_21DFD30A4();
    sub_21E13D154();
    sub_21E13D184();
    v22 = v73;
    v23 = v69;
    MEMORY[0x223D4D9B0](v3, v69);
    (*(v71 + 8))(v3, v72);
    v24 = *(v70 + 8);
    v24(v8, v23);
    sub_21DF23E5C(&qword_27CEA9490, &qword_27CEA9480);
    sub_21E141FE4();
    v24(v22, v23);
    MEMORY[0x223D52A60](v75, v76);

    LODWORD(v77) = sub_21E1404B4();
    v25 = sub_21E140C24();
    v27 = v26;
    LOBYTE(v22) = v28;

    sub_21E140074();
    sub_21DF3DE8C(v25, v27, v22 & 1);

    sub_21E1400A4();
    sub_21E141614();
    v29 = sub_21E140CA4();
    v31 = v30;
    LOBYTE(v25) = v32;
    *&v77 = sub_21E141504();
    v33 = sub_21E140C24();
    v35 = v34;
    v37 = v36;
    sub_21DF3DE8C(v29, v31, v25 & 1);

    sub_21E140074();
    sub_21DF3DE8C(v33, v35, v37 & 1);

    sub_21E1400A4();
    sub_21E1400B4();
    sub_21E1400A4();
    sub_21E140094();

    sub_21E1400A4();
    sub_21E1400E4();
    v38 = sub_21E140C64();
    v40 = v39;
    LOBYTE(v24) = v41;
    LODWORD(v77) = sub_21E1404B4();
    v42 = sub_21E140C24();
    v44 = v43;
    LOBYTE(v22) = v45;
    sub_21DF3DE8C(v38, v40, v24 & 1);

    sub_21E140074();
    sub_21DF3DE8C(v42, v44, v22 & 1);

    sub_21E1400A4();
    sub_21E1400E4();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v46 = [objc_opt_self() mainBundle];
    }
  }

  else
  {
    v68[0] = v13;
    sub_21E1400B4();
    sub_21E1400A4();
    v49 = v1[1];
    *&v77 = *v1;
    *(&v77 + 1) = v49;

    MEMORY[0x223D52A60](548913696, 0xA400000000000000);
    __swift_project_boxed_opaque_existential_1(v79, v80);
    sub_21E13E874();
    v74 = v50;
    sub_21E13D364();
    sub_21DFD30A4();
    sub_21E13D154();
    sub_21E13D184();
    v51 = v73;
    v52 = v69;
    MEMORY[0x223D4D9B0](v3, v69);
    (*(v71 + 8))(v3, v72);
    v53 = *(v70 + 8);
    v53(v8, v52);
    sub_21DF23E5C(&qword_27CEA9490, &qword_27CEA9480);
    sub_21E141FE4();
    v53(v51, v52);
    MEMORY[0x223D52A60](v75, v76);

    LODWORD(v77) = sub_21E1404B4();
    v54 = sub_21E140C24();
    v56 = v55;
    LOBYTE(v53) = v57;

    sub_21E140074();
    sub_21DF3DE8C(v54, v56, v53 & 1);

    sub_21E1400A4();
    sub_21E141614();
    v58 = sub_21E140CA4();
    v60 = v59;
    LOBYTE(v56) = v61;
    *&v77 = sub_21E141504();
    v62 = sub_21E140C24();
    v64 = v63;
    LOBYTE(v51) = v65;
    sub_21DF3DE8C(v58, v60, v56 & 1);

    sub_21E140074();
    sub_21DF3DE8C(v62, v64, v51 & 1);

    sub_21E1400A4();
    sub_21E1400E4();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      v66 = [objc_opt_self() mainBundle];
    }
  }

  v67 = sub_21E140C64();
  __swift_destroy_boxed_opaque_existential_0(v79);
  return v67;
}

uint64_t sub_21DFD2F04(uint64_t a1)
{
  v2 = sub_21E140BF4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21E13FE34();
}

uint64_t sub_21DFD2FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFD303C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA88F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DFD30A4()
{
  result = qword_27CEA9488;
  if (!qword_27CEA9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9488);
  }

  return result;
}

unint64_t sub_21DFD30F8()
{
  result = qword_27CEA9498;
  if (!qword_27CEA9498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9470);
    sub_21DFD31B0();
    sub_21DF23E5C(&qword_27CEA94B0, &qword_27CEA9478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9498);
  }

  return result;
}

unint64_t sub_21DFD31B0()
{
  result = qword_27CEA94A0;
  if (!qword_27CEA94A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA94A8);
    sub_21DFB8B9C();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA94A0);
  }

  return result;
}

int *PlaceholderImageSearchResultView.init(numberOfItems:animating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for VIUIPeriodicOpacityAnimator();
  v10 = swift_allocObject();
  *(v10 + 24) = 0x4008000000000000;
  *(v10 + 32) = 0;
  *(v10 + 40) = xmmword_21E1463B0;
  result = sub_21E13D3F4();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v12 = sub_21E142314();
      *(v12 + 16) = a1;
      v13 = 32;
      v14 = a1;
      do
      {
        v15 = v12 + v13;
        *v15 = 0x3FF921FB54442D18;
        *(v15 + 8) = 0;
        *(v15 + 16) = 1;
        v13 += 24;
        --v14;
      }

      while (v14);
      *(v10 + 16) = v12;
      v16 = sub_21E142314();
      *(v16 + 16) = a1;
      memset_pattern16((v16 + 32), &unk_21E14AFB0, 8 * a1);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      *(v10 + 16) = MEMORY[0x277D84F90];
    }

    *(v10 + 56) = v16;
    result = type metadata accessor for PlaceholderImageSearchResultView();
    *(a5 + result[5]) = v10;
    *(a5 + result[6]) = a1;
    v17 = a5 + result[7];
    *v17 = a2;
    *(v17 + 1) = a3;
    v17[16] = a4 & 1;
  }

  return result;
}

uint64_t type metadata accessor for PlaceholderImageSearchResultView()
{
  result = qword_27CEA94D8;
  if (!qword_27CEA94D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void PlaceholderImageSearchResultView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaceholderImageSearchResultView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA94B8);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  *v9 = 0x4062C00000000000;
  *(v9 + 1) = 2;
  *(v9 + 1) = xmmword_21E14AFA0;
  v10 = *(v1 + *(v4 + 32));
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    *&v17[0] = 0;
    *(&v17[0] + 1) = v10;
    swift_getKeyPath();
    sub_21DFD38D0(v1, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    sub_21DFD3934(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA94C0);
    sub_21DF3D8C8();
    sub_21DF23E5C(&qword_27CEA94C8, &qword_27CEA94C0);
    sub_21E141A74();
    sub_21E141CC4();
    sub_21E13FCE4();
    sub_21DF3DE9C(v9, a1, &qword_27CEA94B8);
    v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA94D0) + 36));
    v14 = v17[5];
    v13[4] = v17[4];
    v13[5] = v14;
    v13[6] = v17[6];
    v15 = v17[1];
    *v13 = v17[0];
    v13[1] = v15;
    v16 = v17[3];
    v13[2] = v17[2];
    v13[3] = v16;
  }
}

void sub_21DFD370C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlaceholderImageSearchResultView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = *a1;
  v11 = *(a2 + *(v10 + 24));
  v12 = __OFSUB__(v11, *a1);
  v13 = v11 - *a1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 * 0.3;
    v15 = a2 + *(v6 + 28);
    v16 = *v15;
    v17 = *(v15 + 8);
    LOBYTE(v15) = *(v15 + 16);
    v28 = v16;
    v29 = v17;
    v30 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8380);
    sub_21E1419F4();
    v18 = v25;
    v19 = v26;
    v24 = v27;
    v20 = *(a2 + *(v6 + 20));
    sub_21DFD38D0(a2, &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v22 = swift_allocObject();
    sub_21DFD3934(&v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v21);
    *(v22 + ((v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
    *a3 = v14;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    *(a3 + 24) = v24;
    *(a3 + 32) = v20;
    *(a3 + 40) = v9;
    *(a3 + 48) = sub_21DFD4AD8;
    *(a3 + 56) = v22;
  }
}

uint64_t sub_21DFD38D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderImageSearchResultView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFD3934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderImageSearchResultView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21DFD3998(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PlaceholderImageSearchResultView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21DFD370C(a1, v6, a2);
}

uint64_t sub_21DFD3A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9508);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  *v6 = sub_21E1401C4();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9510);
  sub_21DFD3B70(a1, a2, &v6[*(v7 + 44)]);
  sub_21DF23E5C(&qword_27CEA9518, &qword_27CEA9508);
  sub_21E141164();
  return sub_21DF23614(v6, &qword_27CEA9508);
}

uint64_t sub_21DFD3B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v44 = a1;
  v46 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9520);
  MEMORY[0x28223BE20](v45);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - v5;
  v48 = sub_21E13FC84();
  v7 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8F50);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9528);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = *(sub_21E13FCA4() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_21E140144();
  (*(*(v21 - 8) + 104))(&v12[v19], v20, v21);
  __asm { FMOV            V0.2D, #20.0 }

  *v12 = _Q0;
  v27 = sub_21E1404B4();
  v28 = &v12[*(v10 + 52)];
  *v28 = v27;
  *(v28 + 1) = 1051931443;
  *&v12[*(v10 + 56)] = 256;
  sub_21E13FC64();
  sub_21DF23E5C(&qword_27CEA8F48, &qword_27CEA8F50);
  sub_21E141344();
  v29 = v9;
  v30 = v49;
  (*(v7 + 8))(v29, v48);
  result = sub_21DF23614(v12, &qword_27CEA8F50);
  if (v30 % 9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21E141CC4();
    sub_21E13F664();
    v32 = &v18[*(v13 + 36)];
    v33 = v51;
    *v32 = v50;
    *(v32 + 1) = v33;
    *(v32 + 2) = v52;
    *v6 = sub_21E1401D4();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9530);
    sub_21DFD4024(v30, &v6[*(v34 + 44)]);
    v35 = sub_21E140904();
    sub_21E13F374();
    v36 = &v6[*(v45 + 36)];
    *v36 = v35;
    *(v36 + 1) = v37;
    *(v36 + 2) = v38;
    *(v36 + 3) = v39;
    *(v36 + 4) = v40;
    v36[40] = 0;
    sub_21DF236C0(v18, v15, &qword_27CEA9528);
    v41 = v47;
    sub_21DF236C0(v6, v47, &qword_27CEA9520);
    v42 = v46;
    sub_21DF236C0(v15, v46, &qword_27CEA9528);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9538);
    sub_21DF236C0(v41, v42 + *(v43 + 48), &qword_27CEA9520);
    sub_21DF23614(v6, &qword_27CEA9520);
    sub_21DF23614(v18, &qword_27CEA9528);
    sub_21DF23614(v41, &qword_27CEA9520);
    return sub_21DF23614(v15, &qword_27CEA9528);
  }

  return result;
}

void sub_21DFD4024(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9540);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v60 - v9;
  v10 = sub_21E140A64();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_21E13FC84();
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9548);
  MEMORY[0x28223BE20](v67);
  v16 = &v60 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9550);
  MEMORY[0x28223BE20](v68);
  v69 = &v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9558);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  MEMORY[0x28223BE20](v22);
  if (a1 % 30 < 0)
  {
    __break(1u);
  }

  else
  {
    v65 = a2;
    v66 = v7;
    v26 = &aAaronMusengo[16 * (a1 % 30)];
    v63 = v25;
    v64 = v4;
    v27 = *v26;
    v28 = *(v26 + 1);
    v72 = &v60 - v24;
    v60 = v23;

    swift_arrayDestroy();
    KeyPath = swift_getKeyPath();
    v62 = v5;
    *&v80 = v27;
    *(&v80 + 1) = v28;
    LOBYTE(v81) = 0;
    *(&v81 + 1) = MEMORY[0x277D84F90];
    *&v82 = KeyPath;
    *(&v82 + 1) = 1;
    LOBYTE(v83) = 0;
    sub_21E13FC64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8B00);
    sub_21DFB8B9C();
    sub_21E141344();
    v30 = *(v75 + 8);
    v75 += 8;
    v61 = v30;
    v30(v14, v73);

    sub_21E140994();
    sub_21E140A04();
    sub_21E140A54();

    v32 = v70;
    v31 = v71;
    (*(v70 + 104))(v12, *MEMORY[0x277CE0A10], v71);
    v33 = sub_21E140A94();

    (*(v32 + 8))(v12, v31);
    v34 = swift_getKeyPath();
    v35 = &v16[*(v67 + 36)];
    *v35 = v34;
    v35[1] = v33;
    sub_21E141CD4();
    sub_21E13FCE4();
    v36 = v69;
    sub_21DF3DE9C(v16, v69, &qword_27CEA9548);
    v37 = (v36 + *(v68 + 36));
    v38 = v98;
    v37[4] = v97;
    v37[5] = v38;
    v37[6] = v99;
    v39 = v94;
    *v37 = v93;
    v37[1] = v39;
    v40 = v96;
    v37[2] = v95;
    v37[3] = v40;
    sub_21DF3DE9C(v36, v21, &qword_27CEA9550);
    *&v21[*(v60 + 36)] = 256;
    v41 = v21;
    v42 = v72;
    sub_21DF3DE9C(v41, v72, &qword_27CEA9558);
    sub_21E140994();
    v43 = sub_21E140C44();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = swift_getKeyPath();
    sub_21E141CD4();
    sub_21E13FCE4();
    *&v90[55] = v103;
    *&v90[71] = v104;
    *&v90[87] = v105;
    *&v90[103] = v106;
    *&v90[7] = v100;
    *&v90[23] = v101;
    *&v90[39] = v102;
    *(&v79[4] + 1) = *&v90[64];
    *(&v79[5] + 1) = *&v90[80];
    *(&v79[6] + 1) = *&v90[96];
    *(v79 + 1) = *v90;
    *(&v79[1] + 1) = *&v90[16];
    *(&v79[2] + 1) = *&v90[32];
    v92 = v47 & 1;
    v91 = 0;
    *&v76 = v43;
    *(&v76 + 1) = v45;
    LOBYTE(v77) = v47 & 1;
    *(&v77 + 1) = v49;
    *&v78 = v50;
    *(&v78 + 1) = 2;
    LOBYTE(v79[0]) = 0;
    *&v79[7] = *(&v106 + 1);
    *(&v79[3] + 1) = *&v90[48];
    WORD4(v79[7]) = 256;
    sub_21E13FC64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9560);
    sub_21DFD4B74();
    v51 = v74;
    sub_21E141344();
    v61(v14, v73);
    v88 = v79[5];
    v89[0] = v79[6];
    *(v89 + 10) = *(&v79[6] + 10);
    v84 = v79[1];
    v85 = v79[2];
    v86 = v79[3];
    v87 = v79[4];
    v80 = v76;
    v81 = v77;
    v82 = v78;
    v83 = v79[0];
    sub_21DF23614(&v80, &qword_27CEA9560);
    v52 = v63;
    sub_21DF236C0(v42, v63, &qword_27CEA9558);
    v53 = v62;
    v54 = *(v62 + 16);
    v55 = v66;
    v56 = v64;
    v54(v66, v51, v64);
    v57 = v65;
    sub_21DF236C0(v52, v65, &qword_27CEA9558);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9580);
    v54((v57 + *(v58 + 48)), v55, v56);
    v59 = *(v53 + 8);
    v59(v74, v56);
    sub_21DF23614(v72, &qword_27CEA9558);
    v59(v55, v56);
    sub_21DF23614(v52, &qword_27CEA9558);
  }
}

void sub_21DFD48CC()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    type metadata accessor for VIUIPeriodicOpacityAnimator();
    if (v1 <= 0x3F)
    {
      sub_21DFA0C9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21DFD4970()
{
  result = qword_27CEA94F0;
  if (!qword_27CEA94F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA94B8);
    sub_21DF23E5C(&qword_27CEA9378, &qword_27CEA9380);
    sub_21DFD4A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA94F0);
  }

  return result;
}

unint64_t sub_21DFD4A28()
{
  result = qword_27CEA94F8;
  if (!qword_27CEA94F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9500);
    sub_21DF23E5C(&qword_27CEA94C8, &qword_27CEA94C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA94F8);
  }

  return result;
}

uint64_t sub_21DFD4AD8()
{
  v1 = *(type metadata accessor for PlaceholderImageSearchResultView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21DFD3A34(v0 + v2, v3);
}

unint64_t sub_21DFD4B74()
{
  result = qword_27CEA9568;
  if (!qword_27CEA9568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9560);
    sub_21DFD4C2C(&qword_27CEA9570, &qword_27CEA9578, &unk_21E14B1B0, sub_21DFB8B9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9568);
  }

  return result;
}

uint64_t sub_21DFD4C2C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21DFD4CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_21DFD4D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21DFD4D98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DFD89F4(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21DFD4E8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9588);
  MEMORY[0x28223BE20](v91);
  v94 = (v89 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9590);
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v96 = v89 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40);
  v92 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v7;
  MEMORY[0x28223BE20](v8);
  v101 = v89 - v9;
  v10 = *(v1 + 8);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *&v104 = v10;
  v12 = sub_21DFD89F4(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v14 = *(v10 + v13);
  swift_getKeyPath();
  *&v104 = v14;
  v15 = sub_21DFD89F4(&qword_280F69240, type metadata accessor for CardModel);

  v100 = v15;
  sub_21E13D3C4();

  v16 = *(v14 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
  v109 = *(v14 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
  v110 = v16;
  v18 = *(v14 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
  v17 = *(v14 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
  v19 = *(v14 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
  v114 = *(v14 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
  v112 = v18;
  v113 = v17;
  v111 = v19;
  sub_21DF236C0(&v109, &v104, &qword_27CEA6D60);

  sub_21DFD5A54();
  if (!v20)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
    v39 = v101;
    (*(*(v38 - 8) + 56))(v101, 1, 1, v38);
    v26 = v13;
    v37 = v39;
    goto LABEL_9;
  }

  swift_getKeyPath();
  *&v104 = v10;
  v89[1] = v12;
  v90 = v11;
  sub_21E13D3C4();

  v21 = *(v10 + v13);

  result = sub_21DFD5A54();
  if (!v23)
  {
    __break(1u);
    goto LABEL_20;
  }

  v24 = result;
  v25 = v23;
  v26 = v13;
  swift_getKeyPath();
  *&v104 = v21;
  sub_21E13D3C4();

  v27 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch;
  swift_beginAccess();
  v28 = *(v21 + v27);

  if (!*(v28 + 16))
  {

    goto LABEL_8;
  }

  v29 = sub_21E0E0F20(v24, v25);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_8:

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
    v37 = v101;
    (*(*(v40 - 8) + 56))(v101, 1, 1, v40);
    goto LABEL_9;
  }

  v32 = *(v28 + 56);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
  v34 = *(v33 - 8);
  v35 = v32 + *(v34 + 72) * v29;
  v36 = v101;
  sub_21DF236C0(v35, v101, &qword_27CEA6C58);

  (*(v34 + 56))(v36, 0, 1, v33);
  v37 = v36;
LABEL_9:
  sub_21DFD5A54();
  if (!v41)
  {
    v57 = v91;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = -1;
LABEL_18:
    v115[0] = v52;
    v115[1] = v53;
    v115[2] = v54;
    v115[3] = v55;
    v116 = v56;
    v58 = sub_21E1401C4();
    v59 = v94;
    *v94 = v58;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9598);
    sub_21DFD5C88(v2, &v109, v37, v115, (v59 + *(v60 + 44)));
    sub_21DF354DC(v52, v53, v54, v55, v56);
    v61 = sub_21E141D64();
    v107 = *(v2 + 72);
    v108 = *(v2 + 88);
    v104 = *(v2 + 72);
    v105 = *(v2 + 88);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
    MEMORY[0x223D52200](v103);
    v62 = v103[0];
    v63 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA95A0) + 36));
    *v63 = v61;
    v63[1] = v62;
    v64 = swift_allocObject();
    v65 = *(v2 + 48);
    *(v64 + 48) = *(v2 + 32);
    *(v64 + 64) = v65;
    v66 = *(v2 + 80);
    *(v64 + 80) = *(v2 + 64);
    *(v64 + 96) = v66;
    v67 = *(v2 + 16);
    *(v64 + 16) = *v2;
    *(v64 + 32) = v67;
    v68 = v112;
    *(v64 + 144) = v111;
    *(v64 + 160) = v68;
    *(v64 + 176) = v113;
    *(v64 + 192) = v114;
    v69 = v110;
    *(v64 + 112) = v109;
    *(v64 + 128) = v69;
    v70 = v57;
    v71 = (v59 + *(v57 + 36));
    *v71 = sub_21DFD8188;
    v71[1] = v64;
    v71[2] = 0;
    v71[3] = 0;
    v72 = *v2;
    swift_getKeyPath();
    v103[0] = v72;
    sub_21DF236C0(&v109, &v104, &qword_27CEA6D60);
    sub_21DFD8194(v2, &v104);
    sub_21DFD89F4(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v73 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__inflightActions;
    swift_beginAccess();
    v102 = *(v72 + v73);
    v74 = swift_allocObject();
    v75 = *(v2 + 48);
    v74[3] = *(v2 + 32);
    v74[4] = v75;
    v76 = *(v2 + 80);
    v74[5] = *(v2 + 64);
    v74[6] = v76;
    v77 = *(v2 + 16);
    v74[1] = *v2;
    v74[2] = v77;
    sub_21DFD8194(v2, &v104);

    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA95A8);
    v78 = sub_21DFD81D4();
    v90 = sub_21DFD8344();
    v79 = v96;
    sub_21E141334();

    sub_21DF23614(v59, &qword_27CEA9588);
    v104 = v107;
    v105 = v108;
    MEMORY[0x223D52200](&v102, v100);
    v80 = v95;
    sub_21DF236C0(v37, v95, &qword_27CEA6D40);
    v81 = (*(v92 + 80) + 200) & ~*(v92 + 80);
    v82 = swift_allocObject();
    v83 = v112;
    *(v82 + 48) = v111;
    *(v82 + 64) = v83;
    *(v82 + 80) = v113;
    v84 = v110;
    *(v82 + 16) = v109;
    *(v82 + 32) = v84;
    v85 = *(v2 + 48);
    *(v82 + 136) = *(v2 + 32);
    *(v82 + 152) = v85;
    v86 = *(v2 + 80);
    *(v82 + 168) = *(v2 + 64);
    *(v82 + 184) = v86;
    v87 = *(v2 + 16);
    *(v82 + 104) = *v2;
    *(v82 + 96) = v114;
    *(v82 + 120) = v87;
    sub_21DF3DE9C(v80, v82 + v81, &qword_27CEA6D40);
    sub_21DF236C0(&v109, &v104, &qword_27CEA6D60);
    sub_21DFD8194(v2, &v104);
    *&v104 = v70;
    *(&v104 + 1) = v91;
    v105 = v78;
    v106 = v90;
    swift_getOpaqueTypeConformance2();
    v88 = v98;
    sub_21E141324();

    sub_21DF23614(&v109, &qword_27CEA6D60);
    (*(v97 + 8))(v79, v88);
    return sub_21DF23614(v101, &qword_27CEA6D40);
  }

  swift_getKeyPath();
  *&v104 = v10;
  sub_21E13D3C4();

  v42 = *(v10 + v26);

  result = sub_21DFD5A54();
  if (v43)
  {
    v44 = result;
    v45 = v43;
    swift_getKeyPath();
    *&v104 = v42;
    sub_21E13D3C4();

    v46 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures;
    swift_beginAccess();
    v47 = *(v42 + v46);

    if (*(v47 + 16))
    {
      v48 = sub_21E0E0F20(v44, v45);
      v50 = v49;

      if (v50)
      {
        v51 = *(v47 + 56) + 40 * v48;
        v52 = *v51;
        v53 = *(v51 + 8);
        v54 = *(v51 + 16);
        v55 = *(v51 + 24);
        v56 = *(v51 + 32);
        sub_21DF27ADC(*v51, v53, v54, v55, v56);
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = -1;
      }
    }

    else
    {

      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = -1;
    }

    v57 = v91;

    v37 = v101;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21DFD5A54()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  v15 = v1;
  v2 = sub_21DFD89F4(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v7 = sub_21E1427B4();
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v11 = MEMORY[0x223D530F0](v7, v2);

    v9 = *(v11 + 16);

    swift_unknownObjectRelease();
  }

  else
  {
    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v7)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 88);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
      MEMORY[0x223D52200](&v12);
      if (v12 >= i)
      {
        break;
      }

      swift_getKeyPath();
      *&v13 = v1;
      sub_21E13D3C4();

      v2 = *(v1 + v3);
      v13 = *(v0 + 72);
      v14 = *(v0 + 88);

      MEMORY[0x223D52200](&v12, v6);
      v7 = v12;
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_12;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v12 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(v2 + 8 * v12 + 32);

        v9 = *(v8 + 16);

        return v9;
      }

      __break(1u);
LABEL_15:
      ;
    }

    return 0;
  }

  return v9;
}

uint64_t sub_21DFD5C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v142 = a4;
  v154 = a3;
  v164 = a5;
  v7 = *a2;
  v144 = *(a2 + 8);
  v145 = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v139 = *(a2 + 32);
  v140 = v9;
  v138 = v10;
  v11 = *(a2 + 56);
  v137 = *(a2 + 48);
  v135 = v8;
  v136 = v11;
  v12 = *(a2 + 64);
  v133 = *(a2 + 72);
  v134 = v12;
  v143 = *(a2 + 80);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA95F8);
  MEMORY[0x28223BE20](v151);
  v141 = (&v133 - v13);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9600);
  MEMORY[0x28223BE20](v148);
  v150 = &v133 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v133 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
  v152 = *(v18 - 8);
  v153 = v18;
  MEMORY[0x28223BE20](v18);
  v155 = &v133 - v19;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9608);
  MEMORY[0x28223BE20](v163);
  v149 = &v133 - v20;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9610);
  MEMORY[0x28223BE20](v160);
  v162 = &v133 - v21;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9618);
  MEMORY[0x28223BE20](v146);
  v23 = (&v133 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9620);
  MEMORY[0x28223BE20](v24);
  v26 = &v133 - v25;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9628);
  MEMORY[0x28223BE20](v156);
  v147 = (&v133 - v27);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9630);
  MEMORY[0x28223BE20](v157);
  v29 = &v133 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9638);
  MEMORY[0x28223BE20](v30 - 8);
  v161 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v158 = &v133 - v33;
  v159 = sub_21E1414A4();
  sub_21E141CC4();
  sub_21E13F664();
  *&v170[3] = *&v170[27];
  *&v170[11] = *&v170[35];
  *&v170[19] = *&v170[43];
  v171 = *(a1 + 72);
  v172 = *(a1 + 88);
  v166[0] = *(a1 + 72);
  *&v166[1] = *(a1 + 88);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
  MEMORY[0x223D52200](v165);
  if (!*v165)
  {
    v57 = v143;
    v59 = v144;
    v58 = v145;
    v153 = v24;
    v154 = v26;
    v155 = v29;
    if (*(a2 + 80) == 255)
    {
      *v165 = *(a1 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
      sub_21E141734();
      v114 = v166[0];
      v115 = v166[1];
      KeyPath = swift_getKeyPath();
      v117 = v147;
      *v147 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for VIUIPeriodicOpacityAnimator();
      v118 = swift_allocObject();
      *(v118 + 24) = 0x4008000000000000;
      *(v118 + 32) = 0;
      *(v118 + 40) = xmmword_21E1463B0;
      sub_21E13D3F4();
      v119 = sub_21E142314();
      *(v119 + 16) = 6;
      *(v119 + 32) = 0x3FF921FB54442D18;
      *(v119 + 40) = 0;
      *(v119 + 48) = 1;
      *(v119 + 56) = 0x3FF921FB54442D18;
      *(v119 + 64) = 0;
      *(v119 + 72) = 1;
      *(v119 + 80) = 0x3FF921FB54442D18;
      *(v119 + 88) = 0;
      *(v119 + 96) = 1;
      *(v119 + 104) = 0x3FF921FB54442D18;
      *(v119 + 112) = 0;
      *(v119 + 120) = 1;
      *(v119 + 128) = 0x3FF921FB54442D18;
      *(v119 + 136) = 0;
      *(v119 + 144) = 1;
      *(v119 + 152) = 0x3FF921FB54442D18;
      *(v119 + 160) = 0;
      *(v119 + 168) = 1;
      *(v118 + 16) = v119;
      v120 = sub_21E142314();
      *(v120 + 16) = 6;
      __asm { FMOV            V0.2D, #1.0 }

      *(v120 + 32) = _Q0;
      *(v120 + 48) = _Q0;
      *(v120 + 64) = _Q0;
      *(v118 + 56) = v120;
      v122 = type metadata accessor for PlaceholderImageSearchResultView();
      *(v117 + v122[5]) = v118;
      *(v117 + v122[6]) = 6;
      v123 = v117 + v122[7];
      *v123 = v114;
      *(v123 + 16) = v115;
      LOBYTE(v118) = sub_21E140904();
      v124 = v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9640) + 36);
      *v124 = v118;
      *(v124 + 8) = 0u;
      *(v124 + 24) = 0u;
      *(v124 + 40) = 1;
      sub_21E13F6B4();
      sub_21E13F694();
      sub_21E13F6C4();

      MEMORY[0x223D52580](v125, 0.35, 0.8, 0.0);
      v126 = sub_21E13F6F4();

      *(v117 + *(v156 + 36)) = v126;
      sub_21DF236C0(v117, v154, &qword_27CEA9628);
      swift_storeEnumTagMultiPayload();
      sub_21DFD8548(&qword_27CEA9688, &qword_27CEA9618, &unk_21E14B488, sub_21DFD8854);
      sub_21DFD8548(&qword_27CEA9668, &qword_27CEA9628, &unk_21E14B498, sub_21DFD86B4);
      v70 = v155;
      sub_21E1402F4();
      v71 = v117;
      v72 = &qword_27CEA9628;
    }

    else
    {
      v60 = *(a2 + 48);
      v166[2] = *(a2 + 32);
      v166[3] = v60;
      v166[4] = *(a2 + 64);
      v167 = *(a2 + 80);
      v61 = *(a2 + 16);
      v166[0] = *a2;
      v166[1] = v61;
      v168 = *(a1 + 48);
      v169 = *(a1 + 64);
      sub_21DF236C0(a2, v165, &qword_27CEA6D60);
      sub_21DFD8ABC(v58, v59, v135, v140, v139, v138, v137, v136, v134, v133, v57 & 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
      sub_21E1419F4();
      v62 = *v165;
      v63 = *&v165[8];
      v64 = *&v165[16];
      v65 = *a1;

      v66 = v23;
      ImageSearchResultView.init(result:useInlinePresentation:feedbackController:model:)(v166, 1, v62, v63, v64, v65, v23);
      LOBYTE(v62) = sub_21E140904();
      v67 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9698) + 36);
      *v67 = v62;
      *(v67 + 8) = 0u;
      *(v67 + 24) = 0u;
      v67[40] = 1;
      sub_21E13F6B4();
      sub_21E13F694();
      sub_21E13F6C4();

      MEMORY[0x223D52580](v68, 0.7, 0.4, 0.0);
      v69 = sub_21E13F6F4();

      *(v23 + *(v146 + 36)) = v69;
      sub_21DF236C0(v23, v154, &qword_27CEA9618);
      swift_storeEnumTagMultiPayload();
      sub_21DFD8548(&qword_27CEA9688, &qword_27CEA9618, &unk_21E14B488, sub_21DFD8854);
      sub_21DFD8548(&qword_27CEA9668, &qword_27CEA9628, &unk_21E14B498, sub_21DFD86B4);
      v70 = v155;
      sub_21E1402F4();
      sub_21DF23614(a2, &qword_27CEA6D60);
      v71 = v66;
      v72 = &qword_27CEA9618;
    }

    sub_21DF23614(v71, v72);
    v112 = &qword_27CEA9630;
    sub_21DF236C0(v70, v162, &qword_27CEA9630);
    swift_storeEnumTagMultiPayload();
    sub_21DFD8770();
    sub_21DFD8910();
    v111 = v158;
    sub_21E1402F4();
    v113 = v70;
    goto LABEL_14;
  }

  sub_21DF236C0(v154, v17, &qword_27CEA6D40);
  v36 = v152;
  v35 = v153;
  if ((*(v152 + 48))(v17, 1, v153) == 1)
  {
    sub_21DF23614(v17, &qword_27CEA6D40);
    *v165 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    sub_21E141734();
    v37 = v166[0];
    v38 = v166[1];
    v39 = swift_getKeyPath();
    v40 = v147;
    *v147 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for VIUIPeriodicOpacityAnimator();
    v41 = swift_allocObject();
    *(v41 + 24) = 0x4008000000000000;
    *(v41 + 32) = 0;
    *(v41 + 40) = xmmword_21E1463B0;
    sub_21E13D3F4();
    v42 = sub_21E142314();
    *(v42 + 16) = 6;
    *(v42 + 32) = 0x3FF921FB54442D18;
    *(v42 + 40) = 0;
    *(v42 + 48) = 1;
    *(v42 + 56) = 0x3FF921FB54442D18;
    *(v42 + 64) = 0;
    *(v42 + 72) = 1;
    *(v42 + 80) = 0x3FF921FB54442D18;
    *(v42 + 88) = 0;
    *(v42 + 96) = 1;
    *(v42 + 104) = 0x3FF921FB54442D18;
    *(v42 + 112) = 0;
    *(v42 + 120) = 1;
    *(v42 + 128) = 0x3FF921FB54442D18;
    *(v42 + 136) = 0;
    *(v42 + 144) = 1;
    *(v42 + 152) = 0x3FF921FB54442D18;
    *(v42 + 160) = 0;
    *(v42 + 168) = 1;
    *(v41 + 16) = v42;
    v43 = sub_21E142314();
    *(v43 + 16) = 6;
    __asm { FMOV            V0.2D, #1.0 }

    *(v43 + 32) = _Q0;
    *(v43 + 48) = _Q0;
    *(v43 + 64) = _Q0;
    *(v41 + 56) = v43;
    v49 = type metadata accessor for PlaceholderImageSearchResultView();
    *(v40 + v49[5]) = v41;
    *(v40 + v49[6]) = 6;
    v50 = v40 + v49[7];
    *v50 = v37;
    *(v50 + 16) = v38;
    LOBYTE(v41) = sub_21E140904();
    v51 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9640) + 36);
    *v51 = v41;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 1;
    sub_21E13F6B4();
    sub_21E13F694();
    sub_21E13F6C4();

    MEMORY[0x223D52580](v52, 0.35, 0.8, 0.0);
    v53 = sub_21E13F6F4();

    *(v40 + *(v156 + 36)) = v53;
    sub_21DF236C0(v40, v150, &qword_27CEA9628);
    swift_storeEnumTagMultiPayload();
    sub_21DFD8548(&qword_27CEA9648, &qword_27CEA95F8, &unk_21E14B468, sub_21DFD85F8);
    sub_21DFD8548(&qword_27CEA9668, &qword_27CEA9628, &unk_21E14B498, sub_21DFD86B4);
    v54 = v149;
    sub_21E1402F4();
    v55 = v40;
    v56 = &qword_27CEA9628;
LABEL_11:
    sub_21DF23614(v55, v56);
    v111 = v158;
    v112 = &qword_27CEA9608;
    sub_21DF236C0(v54, v162, &qword_27CEA9608);
    swift_storeEnumTagMultiPayload();
    sub_21DFD8770();
    sub_21DFD8910();
    sub_21E1402F4();
    v113 = v54;
LABEL_14:
    sub_21DF23614(v113, v112);
    v127 = v161;
    sub_21DF236C0(v111, v161, &qword_27CEA9638);
    v128 = v159;
    *v165 = v159;
    *&v165[8] = 256;
    *&v165[10] = *v170;
    *&v165[26] = *&v170[8];
    *&v165[42] = *&v170[16];
    *&v165[56] = *&v170[23];
    v129 = *&v165[16];
    v130 = v164;
    *v164 = *v165;
    v130[1] = v129;
    v131 = *&v165[48];
    v130[2] = *&v165[32];
    v130[3] = v131;
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96B0);
    sub_21DF236C0(v127, v130 + *(v132 + 48), &qword_27CEA9638);
    sub_21DF236C0(v165, v166, &qword_27CEA96B8);
    sub_21DF23614(v111, &qword_27CEA9638);
    sub_21DF23614(v127, &qword_27CEA9638);
    *&v166[0] = v128;
    WORD4(v166[0]) = 256;
    *(v166 + 10) = *v170;
    *(&v166[1] + 10) = *&v170[8];
    *(&v166[2] + 10) = *&v170[16];
    *(&v166[3] + 1) = *&v170[23];
    return sub_21DF23614(v166, &qword_27CEA96B8);
  }

  sub_21DF3DE9C(v17, v155, &qword_27CEA6C58);
  v73 = *(a1 + 8);
  swift_getKeyPath();
  *&v166[0] = v73;
  sub_21DFD89F4(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v74 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v75 = *(v73 + v74);
  v166[0] = v171;
  *&v166[1] = v172;

  MEMORY[0x223D52200](v165, v34);
  result = *v165;
  if ((v75 & 0xC000000000000001) != 0)
  {
    v77 = MEMORY[0x223D530F0](*v165, v75);
    goto LABEL_10;
  }

  if ((*v165 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*v165 < *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v77 = *(v75 + 8 * *v165 + 32);

LABEL_10:

    swift_getKeyPath();
    *&v166[0] = v77;
    sub_21DFD89F4(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3C4();

    swift_beginAccess();
    v78 = *(v77 + 64);
    v154 = *(v77 + 56);
    v147 = v78;

    v79 = type metadata accessor for VisualSearchGridView();
    v80 = v79[7];
    v81 = v141;
    sub_21DF236C0(v155, v141 + v80, &qword_27CEA6C58);
    (*(v36 + 56))(v81 + v80, 0, 1, v35);
    v82 = v142;
    sub_21DF236C0(v142, v166, &qword_27CEA96C0);
    v83 = sub_21DFD5A54();
    v152 = v84;
    v153 = v83;
    v85 = swift_allocObject();
    v86 = *(a1 + 48);
    v87 = *(a1 + 64);
    v88 = *(a1 + 16);
    *(v85 + 3) = *(a1 + 32);
    *(v85 + 4) = v86;
    v89 = *(a1 + 80);
    *(v85 + 5) = v87;
    *(v85 + 6) = v89;
    *(v85 + 1) = *a1;
    *(v85 + 2) = v88;
    v90 = *a1;
    swift_getKeyPath();
    *v165 = v90;
    sub_21DFD8194(a1, v166);
    sub_21DFD89F4(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v91 = v90 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration;
    swift_beginAccess();
    v92 = *v91;
    v93 = *(v91 + 1);
    LOBYTE(v90) = *(v91 + 2);
    v94 = *(v91 + 8);
    v95 = *(v91 + 16);
    v146 = v94;
    *v81 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140);
    swift_storeEnumTagMultiPayload();
    v96 = v81 + v79[5];
    *v96 = swift_getKeyPath();
    *(v96 + 1) = 0;
    v96[16] = 0;
    v97 = v81 + v79[12];
    v165[0] = 0;

    sub_21E141704();
    v98 = *(&v166[0] + 1);
    *v97 = v166[0];
    *(v97 + 1) = v98;
    v99 = (v81 + v79[6]);
    v100 = v147;
    *v99 = v154;
    v99[1] = v100;
    v101 = v81 + v79[8];
    v102 = *(v82 + 16);
    *v101 = *v82;
    *(v101 + 1) = v102;
    v101[32] = *(v82 + 32);
    v103 = (v81 + v79[9]);
    v104 = v152;
    *v103 = v153;
    v103[1] = v104;
    v105 = (v81 + v79[10]);
    *v105 = sub_21DFD8AB4;
    v105[1] = v85;
    v106 = v81 + v79[11];
    *v106 = v92;
    v106[1] = v93;
    v106[2] = v90;
    *(v106 + 1) = v146;
    *(v106 + 2) = v95;
    LOBYTE(v95) = sub_21E140904();
    v107 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9658) + 36);
    *v107 = v95;
    *(v107 + 8) = 0u;
    *(v107 + 24) = 0u;
    v107[40] = 1;
    sub_21E13F6B4();
    sub_21E13F694();
    sub_21E13F6C4();

    MEMORY[0x223D52580](v108, 0.7, 0.4, 0.0);
    v109 = sub_21E13F6F4();

    v110 = v150;
    *(v81 + *(v151 + 36)) = v109;
    sub_21DF236C0(v81, v110, &qword_27CEA95F8);
    swift_storeEnumTagMultiPayload();
    sub_21DFD8548(&qword_27CEA9648, &qword_27CEA95F8, &unk_21E14B468, sub_21DFD85F8);
    sub_21DFD8548(&qword_27CEA9668, &qword_27CEA9628, &unk_21E14B498, sub_21DFD86B4);
    v54 = v149;
    sub_21E1402F4();
    sub_21DF23614(v81, &qword_27CEA95F8);
    v55 = v155;
    v56 = &qword_27CEA6C58;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DFD71B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  swift_getKeyPath();
  v9[0] = v5;
  sub_21DFD89F4(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v7 = *(v5 + v6);
  swift_getKeyPath();
  sub_21DFD89F4(&qword_280F69240, type metadata accessor for CardModel);

  sub_21E13D3C4();

  v9[0] = v7;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  sub_21DFD8B60(a1, a2, v9);

  sub_21DF354DC(v9[0], v9[1], v9[2], v9[3], v10);
  swift_endAccess();
  v9[0] = v7;
  swift_getKeyPath();
  sub_21E13D3D4();
}

uint64_t sub_21DFD73B8(uint64_t a1, unsigned __int8 *a2)
{
  v37 = sub_21E13DD44();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13D304();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a1 + 48);
  v41 = *(a1 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  MEMORY[0x223D52200](v39, v10);
  v11 = v39[0];
  swift_getKeyPath();
  *&v40 = v11;
  sub_21DFD89F4(&qword_280F6A900, type metadata accessor for FeedbackController);
  sub_21E13D3C4();

  swift_beginAccess();
  v12 = *(v11 + 16);
  sub_21E141F24();

  sub_21E13D2F4();
  sub_21E11836C(v9);

  v14 = a2[80];
  if (v14 != 255 && (v14 & 1) == 0)
  {
    v15 = *a2;
    v16 = *(*a2 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v33 = a1;
      v39[0] = MEMORY[0x277D84F90];
      sub_21DF5BFAC(0, v16, 0);
      v17 = v39[0];
      v19 = *(v4 + 16);
      v18 = v4 + 16;
      v20 = v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v34 = *(v18 + 56);
      v35 = v19;
      v36 = v18;
      v21 = (v18 - 8);
      do
      {
        v22 = v37;
        v35(v6, v20, v37);
        v23 = sub_21E13DD24();
        v25 = v24;
        (*v21)(v6, v22);
        v39[0] = v17;
        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_21DF5BFAC((v26 > 1), v27 + 1, 1);
          v17 = v39[0];
        }

        *(v17 + 16) = v27 + 1;
        v28 = v17 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v20 += v34;
        --v16;
      }

      while (v16);
      a1 = v33;
    }

    v29 = *a1;
    swift_getKeyPath();
    v39[0] = v29;
    sub_21DFD89F4(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v30 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
    swift_beginAccess();
    v31 = *(v29 + v30);
    swift_getKeyPath();
    v38 = v31;
    sub_21DFD89F4(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);

    sub_21E13D3C4();

    sub_21E00B2EC(v17);
  }

  return result;
}

uint64_t sub_21DFD77E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  v12 = v2;
  sub_21DFD89F4(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58);
  MEMORY[0x223D52200](&v9, v5);
  result = v9;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223D530F0](v9, v4);
    goto LABEL_5;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 8 * v9 + 32);

LABEL_5:

    v8 = NewSaliencyModel.isPerformingAction(_:for:)(v7, v2);

    v10 = *(a1 + 32);
    LOBYTE(v9) = v8 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E78);
    return sub_21E141724();
  }

  __break(1u);
  return result;
}

void sub_21DFD7988(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5)
{
  v67 = a4;
  v8 = sub_21E13F064();
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Result = type metadata accessor for PillQueryResult(0);
  MEMORY[0x28223BE20](Result);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  v21 = sub_21E13DD44();
  MEMORY[0x28223BE20](v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    sub_21DF236C0(a5, v20, &qword_27CEA6D40);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
    if ((*(*(v25 - 8) + 48))(v20, 1, v25) != 1)
    {
      sub_21DF236C0(v20, v17, &qword_27CEA6D40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21DF23614(v17, &qword_27CEA6C58);
      }

      else
      {
        sub_21DFD8488(v17, v14);
        v43 = sub_21E13F074();
        v44 = *(v43 + 16);
        if (v44)
        {
          v65 = v20;
          v66 = v14;
          v73 = MEMORY[0x277D84F90];
          sub_21DF5BFAC(0, v44, 0);
          v45 = v73;
          v46 = *(v71 + 16);
          v47 = *(v71 + 80);
          v64 = v43;
          v48 = v43 + ((v47 + 32) & ~v47);
          v68 = *(v71 + 72);
          v69 = v46;
          v71 += 16;
          v49 = (v71 - 8);
          do
          {
            v50 = v70;
            (v69)(v11, v48, v70);
            v51 = sub_21E13F014();
            v53 = v52;
            (*v49)(v11, v50);
            v73 = v45;
            v55 = *(v45 + 16);
            v54 = *(v45 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_21DF5BFAC((v54 > 1), v55 + 1, 1);
              v45 = v73;
            }

            *(v45 + 16) = v55 + 1;
            v56 = v45 + 16 * v55;
            *(v56 + 32) = v51;
            *(v56 + 40) = v53;
            v48 += v68;
            --v44;
          }

          while (v44);

          v14 = v66;
          v60 = v67;
          v20 = v65;
        }

        else
        {

          v45 = MEMORY[0x277D84F90];
          v60 = v67;
        }

        v61 = *v60;
        swift_getKeyPath();
        v73 = v61;
        sub_21DFD89F4(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
        sub_21E13D3C4();

        v62 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
        swift_beginAccess();
        v63 = *(v61 + v62);
        swift_getKeyPath();
        v72 = v63;
        sub_21DFD89F4(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);

        sub_21E13D3C4();

        sub_21E00B2EC(v45);

        sub_21DFD84EC(v14);
      }
    }

    sub_21DF23614(v20, &qword_27CEA6D40);
  }

  else
  {
    v26 = a3[80];
    if (v26 != 255 && (v26 & 1) == 0)
    {
      v27 = *a3;
      v28 = *(*a3 + 16);
      v29 = MEMORY[0x277D84F90];
      if (v28)
      {
        v73 = MEMORY[0x277D84F90];
        v30 = v22;
        sub_21DF5BFAC(0, v28, 0);
        v29 = v73;
        v31 = v30 + 16;
        v32 = *(v30 + 16);
        v33 = v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v70 = *(v30 + 72);
        v71 = v32;
        v69 = (v30 + 8);
        do
        {
          v34 = v31;
          (v71)(v24, v33, v21);
          v35 = sub_21E13DD24();
          v37 = v36;
          v38 = v21;
          (*v69)(v24, v21);
          v73 = v29;
          v40 = *(v29 + 16);
          v39 = *(v29 + 24);
          v41 = v29;
          if (v40 >= v39 >> 1)
          {
            sub_21DF5BFAC((v39 > 1), v40 + 1, 1);
            v41 = v73;
          }

          *(v41 + 16) = v40 + 1;
          v42 = v41 + 16 * v40;
          *(v42 + 32) = v35;
          *(v42 + 40) = v37;
          v33 += v70;
          --v28;
          v21 = v38;
          v31 = v34;
          v29 = v41;
        }

        while (v28);
      }

      v57 = *v67;
      swift_getKeyPath();
      v73 = v57;
      sub_21DFD89F4(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
      sub_21E13D3C4();

      v58 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
      swift_beginAccess();
      v59 = *(v57 + v58);
      swift_getKeyPath();
      v72 = v59;
      sub_21DFD89F4(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);

      sub_21E13D3C4();

      sub_21E00B2EC(v29);
    }
  }
}

unint64_t sub_21DFD81D4()
{
  result = qword_27CEA95B0;
  if (!qword_27CEA95B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9588);
    sub_21DFD8260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA95B0);
  }

  return result;
}

unint64_t sub_21DFD8260()
{
  result = qword_27CEA95B8;
  if (!qword_27CEA95B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA95A0);
    sub_21DF23E5C(&qword_27CEA95C0, &qword_27CEA95C8);
    sub_21DF23E5C(&qword_27CEA95D0, &qword_27CEA95D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA95B8);
  }

  return result;
}

unint64_t sub_21DFD8344()
{
  result = qword_27CEA95E0;
  if (!qword_27CEA95E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA95A8);
    sub_21DF23E5C(&qword_27CEA95E8, &qword_27CEA95F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA95E0);
  }

  return result;
}

void sub_21DFD83F4(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40) - 8);
  v6 = v2 + ((*(v5 + 80) + 200) & ~*(v5 + 80));

  sub_21DFD7988(a1, a2, (v2 + 16), (v2 + 104), v6);
}

uint64_t sub_21DFD8488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PillQueryResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DFD84EC(uint64_t a1)
{
  v2 = type metadata accessor for PillQueryResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DFD8548(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DFD85F8()
{
  result = qword_27CEA9650;
  if (!qword_27CEA9650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9658);
    sub_21DFD89F4(&qword_27CEA9660, type metadata accessor for VisualSearchGridView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9650);
  }

  return result;
}

unint64_t sub_21DFD86B4()
{
  result = qword_27CEA9670;
  if (!qword_27CEA9670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9640);
    sub_21DFD89F4(&qword_27CEA9678, type metadata accessor for PlaceholderImageSearchResultView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9670);
  }

  return result;
}

unint64_t sub_21DFD8770()
{
  result = qword_27CEA9680;
  if (!qword_27CEA9680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9630);
    sub_21DFD8548(&qword_27CEA9688, &qword_27CEA9618, &unk_21E14B488, sub_21DFD8854);
    sub_21DFD8548(&qword_27CEA9668, &qword_27CEA9628, &unk_21E14B498, sub_21DFD86B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9680);
  }

  return result;
}

unint64_t sub_21DFD8854()
{
  result = qword_27CEA9690;
  if (!qword_27CEA9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9698);
    sub_21DFD89F4(&qword_27CEA96A0, type metadata accessor for ImageSearchResultView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA9690);
  }

  return result;
}

unint64_t sub_21DFD8910()
{
  result = qword_27CEA96A8;
  if (!qword_27CEA96A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9608);
    sub_21DFD8548(&qword_27CEA9648, &qword_27CEA95F8, &unk_21E14B468, sub_21DFD85F8);
    sub_21DFD8548(&qword_27CEA9668, &qword_27CEA9628, &unk_21E14B498, sub_21DFD86B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA96A8);
  }

  return result;
}

uint64_t sub_21DFD89F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

id sub_21DFD8ABC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {

    return a1;
  }

  else
  {
  }
}

double sub_21DFD8B60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_21E0E0F20(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21E1000F4();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    *(a3 + 32) = v12;
    sub_21DFD8E54(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -1;
  }

  return result;
}

uint64_t sub_21DFD8C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_21E0E0F20(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21E1002B8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
    v19 = *(v12 - 8);
    sub_21DF3DE9C(v11 + *(v19 + 72) * v8, a3, &qword_27CEA6C58);
    sub_21DFD9024(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_21DFD8DA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_21E0E0F20(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21E100A38();
      v10 = v12;
    }

    sub_21DF27A80(*(v10 + 56) + 104 * v8, a3);
    sub_21DFD93D8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 96) = 0;
    result = 0.0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21DFD8E54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E142784() + 1) & ~v5;
    do
    {
      sub_21E142C14();

      sub_21E142204();
      v11 = sub_21E142C44();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (40 * v3 < (40 * v6) || v17 >= v18 + 40 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21DFD9024(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E142784() + 1) & ~v5;
    while (1)
    {
      sub_21E142C14();

      sub_21E142204();
      v9 = sub_21E142C44();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21DFD9228(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E142784() + 1) & ~v5;
    do
    {
      sub_21E142C14();

      sub_21E142204();
      v9 = sub_21E142C44();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21DFD93D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21E142784() + 1) & ~v5;
    while (1)
    {
      sub_21E142C14();

      sub_21E142204();
      v9 = sub_21E142C44();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      result = v14 + 104 * v3;
      if (v3 < v6 || result >= v14 + 104 * v6 + 104)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_21DFD97CC()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NewBarModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21DFD9884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = sub_21E140144();
  v111 = *(v3 - 8);
  v112 = v3;
  MEMORY[0x28223BE20](v3);
  v110 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_21E141A34();
  MEMORY[0x28223BE20](v108);
  v109 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21E140A64();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v89 - v9;
  v89 = sub_21E140AD4();
  v11 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9708);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v89 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9750);
  MEMORY[0x28223BE20](v92);
  v19 = &v89 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9758);
  MEMORY[0x28223BE20](v93);
  v95 = &v89 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9760);
  MEMORY[0x28223BE20](v94);
  v96 = &v89 - v21;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9768);
  MEMORY[0x28223BE20](v101);
  v100 = &v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9770);
  v103 = *(v23 - 8);
  v104 = v23;
  MEMORY[0x28223BE20](v23);
  v102 = &v89 - v24;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9778);
  MEMORY[0x28223BE20](v99);
  v105 = &v89 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9780);
  MEMORY[0x28223BE20](v98);
  v106 = &v89 - v26;
  v107 = a1;
  sub_21E1405F4();
  v27 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9700) + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8288) + 28);
  v29 = *MEMORY[0x277CE1050];
  v30 = sub_21E141654();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  v31 = v89;
  (*(v11 + 104))(v13, *MEMORY[0x277CE0AB0], v89);
  v32 = sub_21E1409D4();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  sub_21E140A34();
  sub_21DF23614(v10, &unk_27CEAD410);
  (*(v11 + 8))(v13, v31);
  v33 = v90;
  v34 = v91;
  (*(v90 + 104))(v7, *MEMORY[0x277CE0A10], v91);
  v35 = sub_21E140A94();

  v36 = v7;
  v37 = v97;
  (*(v33 + 8))(v36, v34);
  KeyPath = swift_getKeyPath();
  v39 = &v17[*(v15 + 44)];
  *v39 = KeyPath;
  v39[1] = v35;
  v91 = type metadata accessor for SuggestedActionButtonStyle(0);
  if (sub_21E13D7F4())
  {
    sub_21E141484();
    v40 = sub_21E141514();
  }

  else
  {
    v40 = sub_21E1414A4();
  }

  sub_21DF3DE9C(v17, v19, &qword_27CEA9708);
  v41 = &v19[*(v92 + 36)];
  *v41 = v40;
  v41[1] = 0x4008000000000000;
  v41[2] = 0;
  v41[3] = 0;
  v42 = sub_21E140974();
  sub_21E13F374();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v95;
  sub_21DF3DE9C(v19, v95, &qword_27CEA9750);
  v52 = v51 + *(v93 + 36);
  *v52 = v42;
  *(v52 + 8) = v44;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  *(v52 + 40) = 0;
  v53 = sub_21E140904();
  sub_21E13F374();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v51;
  v63 = v96;
  sub_21DF3DE9C(v62, v96, &qword_27CEA9758);
  v64 = v63 + *(v94 + 36);
  *v64 = v53;
  *(v64 + 8) = v55;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61;
  *(v64 + 40) = 0;
  if (sub_21E140604())
  {
    v65 = 0.7;
  }

  else
  {
    v65 = 1.0;
  }

  v66 = v100;
  sub_21DF3DE9C(v63, v100, &qword_27CEA9760);
  v67 = v101;
  *(v66 + *(v101 + 36)) = v65;
  v68 = sub_21E141C84();
  MEMORY[0x28223BE20](v68);
  MEMORY[0x28223BE20](v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9790);
  v70 = sub_21DFDDBF0();
  v71 = sub_21DFDDE20(&qword_27CEA6F30, MEMORY[0x277CE1260]);
  v114 = v67;
  v115 = v108;
  v116 = v70;
  v117 = v71;
  swift_getOpaqueTypeConformance2();
  sub_21DFDDE68();
  v72 = v102;
  sub_21E141354();
  sub_21DF23614(v66, &qword_27CEA9768);
  if (*(v37 + *(v91 + 24)) == 1)
  {
    v73 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  else
  {
    v73 = sub_21E141524();
  }

  v74 = v73;
  v75 = v105;
  (*(v103 + 32))(v105, v72, v104);
  *(v75 + *(v99 + 36)) = v74;
  v76 = v106;
  v77 = &v106[*(v98 + 36)];
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730) + 28);
  v79 = *MEMORY[0x277CDF3C0];
  v80 = sub_21E13F444();
  (*(*(v80 - 8) + 104))(v77 + v78, v79, v80);
  *v77 = swift_getKeyPath();
  sub_21DF3DE9C(v75, v76, &qword_27CEA9778);
  v82 = v111;
  v81 = v112;
  v83 = *(v111 + 104);
  v84 = v109;
  v83(v109, *MEMORY[0x277CE0118], v112);
  v85 = v110;
  v83(v110, *MEMORY[0x277CE0128], v81);
  LOBYTE(v79) = sub_21E140134();
  (*(v82 + 8))(v85, v81);
  sub_21DF3DBB0(v84);
  v86 = v113;
  sub_21DF3DE9C(v76, v113, &qword_27CEA9780);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA97D0);
  v88 = v86 + *(result + 36);
  *v88 = ((v79 & 1) == 0) | 0xC024000000000000;
  *(v88 + 8) = 0;
  return result;
}

uint64_t sub_21DFDA4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v56 = a1;
  v54 = sub_21E141A34();
  MEMORY[0x28223BE20](v54);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E1419A4();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v41 - v8;
  MEMORY[0x28223BE20](v9);
  v50 = &v41 - v10;
  v11 = sub_21E13F444();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E141BB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  v24 = sub_21E141C64();
  v47 = *(v24 - 8);
  v48 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SuggestedActionButtonStyle(0);
  v27 = a2;
  if (sub_21E13D7F4())
  {
    sub_21E141B84();
    sub_21E141BE4();
    (*(v15 + 8))(v23, v14);
  }

  else
  {
    sub_21E141B94();
    sub_21E021DE8(v13);
    sub_21E141BA4();
    (*(v42 + 8))(v13, v43);
    v28 = *(v15 + 8);
    v28(v17, v14);
    sub_21E141B54();
    v28(v20, v14);
    sub_21E141BE4();
    v28(v23, v14);
  }

  v29 = sub_21E13D7F4();
  v31 = v51;
  v30 = v52;
  v32 = v49;
  if (v29)
  {
    sub_21E141484();
    sub_21E141514();
  }

  v33 = v45;
  sub_21E141984();
  sub_21E141954();
  v34 = *(v31 + 8);
  v34(v33, v30);
  v35 = *(v27 + *(v44 + 24));
  v46 = v26;
  if (v35 == 1)
  {
    sub_21E141444();
  }

  else
  {
  }

  v36 = v50;
  sub_21E141994();

  v34(v32, v30);
  v37 = *MEMORY[0x277CE0118];
  v38 = sub_21E140144();
  v39 = v53;
  (*(*(v38 - 8) + 104))(v53, v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9768);
  sub_21DFDDBF0();
  sub_21DFDDE20(&qword_27CEA6F30, MEMORY[0x277CE1260]);
  sub_21E140E54();

  sub_21DF3DBB0(v39);
  v34(v36, v30);
  return (*(v47 + 8))(v46, v48);
}

uint64_t sub_21DFDAA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA97C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v10 = &v19 + *(v9 + 44) - v7;
  sub_21E141C04();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9728);
  v12 = *(v11 + 52);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_21E140144();
  (*(*(v14 - 8) + 104))(&v10[v12], v13, v14);
  *&v10[*(v11 + 56)] = 256;
  sub_21DF236C0(a1, v8, &qword_27CEA9768);
  v15 = 0;
  if (*(a2 + *(type metadata accessor for SuggestedActionButtonStyle(0) + 24)) == 1)
  {
    v15 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  KeyPath = swift_getKeyPath();
  sub_21DF3DE9C(v8, a3, &qword_27CEA97C8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9790);
  v18 = (a3 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  return result;
}

uint64_t sub_21DFDABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v80 = type metadata accessor for AskButtonStyle(0);
  v76 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = v3;
  v78 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96C8);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96D0);
  MEMORY[0x28223BE20](v63);
  v15 = &v62 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96D8);
  MEMORY[0x28223BE20](v68);
  v65 = &v62 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96E0);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v62 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96E8);
  MEMORY[0x28223BE20](v67);
  v73 = &v62 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96F0);
  MEMORY[0x28223BE20](v66);
  v71 = &v62 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96F8);
  MEMORY[0x28223BE20](v74);
  v75 = &v62 - v20;
  v81 = a1;
  sub_21E1405F4();
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9700) + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8288) + 28);
  v23 = *MEMORY[0x277CE1048];
  v24 = sub_21E141654();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  sub_21E1409E4();
  v25 = sub_21E1409D4();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  v26 = sub_21E140A24();
  sub_21DF23614(v10, &unk_27CEAD410);
  KeyPath = swift_getKeyPath();
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9708) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  if (qword_280F6B900 != -1)
  {
    swift_once();
  }

  sub_21E13FCE4();
  v29 = &v13[*(v11 + 36)];
  v30 = v91;
  v31 = v92;
  *(v29 + 4) = v90;
  *(v29 + 5) = v30;
  *(v29 + 6) = v31;
  v32 = v87;
  *v29 = v86;
  *(v29 + 1) = v32;
  v33 = v89;
  *(v29 + 2) = v88;
  *(v29 + 3) = v33;
  v34 = v64;
  v35 = *(v64 + *(v80 + 20));
  swift_getKeyPath();
  v82 = v35;
  sub_21DFDDE20(&qword_280F6BEE0, type metadata accessor for NewBarModel);
  sub_21E13D3C4();

  v36 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  (*(v5 + 16))(v7, v35 + v36, v4);
  LOBYTE(v36) = sub_21E13D7F4();
  (*(v5 + 8))(v7, v4);
  if (v36)
  {
    sub_21E141484();
    v37 = sub_21E141514();
  }

  else
  {
    v37 = sub_21E1414A4();
  }

  sub_21DF3DE9C(v13, v15, &qword_27CEA96C8);
  v38 = &v15[*(v63 + 9)];
  *v38 = v37;
  v38[1] = 0x4008000000000000;
  v38[2] = 0;
  v38[3] = 0;
  if (sub_21E140604())
  {
    v39 = 0.7;
  }

  else
  {
    v39 = 1.0;
  }

  v40 = v65;
  sub_21DF3DE9C(v15, v65, &qword_27CEA96D0);
  v41 = v68;
  *(v40 + *(v68 + 36)) = v39;
  v42 = sub_21E141C84();
  v63 = &v62;
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9718);
  v43 = sub_21DFDCFF0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9720);
  v45 = sub_21DF23E5C(&qword_280F69018, &qword_27CEA9720);
  v82 = v41;
  v83 = v44;
  v84 = v43;
  v85 = v45;
  swift_getOpaqueTypeConformance2();
  sub_21DFDD334();
  v46 = v69;
  sub_21E141354();
  sub_21DF23614(v40, &qword_27CEA96D8);
  if (*(v34 + *(v80 + 24)) == 1)
  {
    v47 = sub_21E1404A4();
  }

  else
  {
    v47 = sub_21E1404B4();
  }

  v48 = v47;
  v49 = v73;
  (*(v70 + 32))(v73, v46, v72);
  *(v49 + *(v67 + 36)) = v48;
  v50 = v71;
  v51 = &v71[*(v66 + 36)];
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730) + 28);
  v53 = *MEMORY[0x277CDF3C0];
  v54 = sub_21E13F444();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  sub_21DF3DE9C(v49, v50, &qword_27CEA96E8);
  v55 = v50;
  v56 = v75;
  sub_21DF3DE9C(v55, v75, &qword_27CEA96F0);
  v57 = v56 + *(v74 + 36);
  *v57 = 0xC024000000000000;
  *(v57 + 8) = 0;
  LOBYTE(v82) = sub_21E140604() & 1;
  v58 = v78;
  sub_21DFDD82C(v34, v78, type metadata accessor for AskButtonStyle);
  v59 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v60 = swift_allocObject();
  sub_21DFDD9BC(v58, v60 + v59, type metadata accessor for AskButtonStyle);
  sub_21DFDD498();
  sub_21E141324();

  return sub_21DF107B8(v56);
}

uint64_t sub_21DFDB7C0()
{
  v0 = sub_21E1401C4();
  result = sub_21E13FFF4();
  qword_280F6FD70 = v0;
  *algn_280F6FD78 = result;
  return result;
}

uint64_t sub_21DFDB814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v80 = type metadata accessor for SearchButtonStyle(0);
  v76 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = v3;
  v78 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96C8);
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96D0);
  MEMORY[0x28223BE20](v63);
  v15 = &v62 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96D8);
  MEMORY[0x28223BE20](v68);
  v65 = &v62 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96E0);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v62 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96E8);
  MEMORY[0x28223BE20](v67);
  v73 = &v62 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96F0);
  MEMORY[0x28223BE20](v66);
  v71 = &v62 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96F8);
  MEMORY[0x28223BE20](v74);
  v75 = &v62 - v20;
  v81 = a1;
  sub_21E1405F4();
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9700) + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8288) + 28);
  v23 = *MEMORY[0x277CE1048];
  v24 = sub_21E141654();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  sub_21E1409E4();
  v25 = sub_21E1409D4();
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  v26 = sub_21E140A24();
  sub_21DF23614(v10, &unk_27CEAD410);
  KeyPath = swift_getKeyPath();
  v28 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9708) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  if (qword_280F6AA58 != -1)
  {
    swift_once();
  }

  sub_21E13FCE4();
  v29 = &v13[*(v11 + 36)];
  v30 = v91;
  v31 = v92;
  *(v29 + 4) = v90;
  *(v29 + 5) = v30;
  *(v29 + 6) = v31;
  v32 = v87;
  *v29 = v86;
  *(v29 + 1) = v32;
  v33 = v89;
  *(v29 + 2) = v88;
  *(v29 + 3) = v33;
  v34 = v64;
  v35 = *(v64 + *(v80 + 20));
  swift_getKeyPath();
  v82 = v35;
  sub_21DFDDE20(&qword_280F6BEE0, type metadata accessor for NewBarModel);
  sub_21E13D3C4();

  v36 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__entryPoint;
  swift_beginAccess();
  (*(v5 + 16))(v7, v35 + v36, v4);
  LOBYTE(v36) = sub_21E13D7F4();
  (*(v5 + 8))(v7, v4);
  if (v36)
  {
    sub_21E141484();
    v37 = sub_21E141514();
  }

  else
  {
    v37 = sub_21E1414A4();
  }

  sub_21DF3DE9C(v13, v15, &qword_27CEA96C8);
  v38 = &v15[*(v63 + 9)];
  *v38 = v37;
  v38[1] = 0x4008000000000000;
  v38[2] = 0;
  v38[3] = 0;
  if (sub_21E140604())
  {
    v39 = 0.7;
  }

  else
  {
    v39 = 1.0;
  }

  v40 = v65;
  sub_21DF3DE9C(v15, v65, &qword_27CEA96D0);
  v41 = v68;
  *(v40 + *(v68 + 36)) = v39;
  v42 = sub_21E141C84();
  v63 = &v62;
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9718);
  v43 = sub_21DFDCFF0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9720);
  v45 = sub_21DF23E5C(&qword_280F69018, &qword_27CEA9720);
  v82 = v41;
  v83 = v44;
  v84 = v43;
  v85 = v45;
  swift_getOpaqueTypeConformance2();
  sub_21DFDD334();
  v46 = v69;
  sub_21E141354();
  sub_21DF23614(v40, &qword_27CEA96D8);
  if (*(v34 + *(v80 + 24)) == 1)
  {
    v47 = sub_21E1404A4();
  }

  else
  {
    v47 = sub_21E1404B4();
  }

  v48 = v47;
  v49 = v73;
  (*(v70 + 32))(v73, v46, v72);
  *(v49 + *(v67 + 36)) = v48;
  v50 = v71;
  v51 = &v71[*(v66 + 36)];
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9730) + 28);
  v53 = *MEMORY[0x277CDF3C0];
  v54 = sub_21E13F444();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  sub_21DF3DE9C(v49, v50, &qword_27CEA96E8);
  v55 = v50;
  v56 = v75;
  sub_21DF3DE9C(v55, v75, &qword_27CEA96F0);
  v57 = v56 + *(v74 + 36);
  *v57 = 0xC024000000000000;
  *(v57 + 8) = 0;
  LOBYTE(v82) = sub_21E140604() & 1;
  v58 = v78;
  sub_21DFDD82C(v34, v78, type metadata accessor for SearchButtonStyle);
  v59 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v60 = swift_allocObject();
  sub_21DFDD9BC(v58, v60 + v59, type metadata accessor for SearchButtonStyle);
  sub_21DFDD498();
  sub_21E141324();

  return sub_21DF107B8(v56);
}