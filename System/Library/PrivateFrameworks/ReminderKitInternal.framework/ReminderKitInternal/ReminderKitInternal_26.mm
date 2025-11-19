uint64_t _s19ReminderKitInternal24REMRemindersListDataViewO011CustomSmartE13SectionsModelV08sectionsK0AC0jK0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 25) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t sub_23025D2A8()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 0x736E6F6974636573;
  }
}

uint64_t sub_23025D2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974636573 && a2 == 0xED00006C65646F4DLL;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953720684 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23025D3CC(uint64_t a1)
{
  v2 = sub_230272C28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025D408(uint64_t a1)
{
  v2 = sub_230272C28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ListSectionsModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18458);
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v7 = *v1;
  v6 = v1[1];
  v14 = v1[2];
  v15 = v6;
  v25 = *(v1 + 24);
  v13 = *(v1 + 25);
  v8 = v1[4];
  v9 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272C28();

  sub_230311448();
  v18 = v7;
  v19 = v15;
  v20 = v14;
  v21 = v25;
  v22 = v13;
  v23 = v8;
  v24 = v9;
  v26 = 0;
  sub_230272C7C();
  v10 = v16;
  sub_230310DF8();

  if (!v10)
  {
    v18 = v12;
    v26 = 1;
    type metadata accessor for REMList_Codable();
    sub_230271420(&qword_280C9C348, type metadata accessor for REMList_Codable);
    sub_230310DF8();
  }

  return (*(v17 + 8))(v5, v3);
}

uint64_t REMRemindersListDataView.ListSectionsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272C28();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  sub_230272CD0();
  sub_230310CE8();
  v9 = v27;
  v21 = v29;
  v22 = v28;
  v20 = v31;
  v10 = v34;
  v42 = v35;
  v41 = v30;
  type metadata accessor for REMList_Codable();
  v37 = 1;
  sub_230271420(&qword_280C9C340, type metadata accessor for REMList_Codable);
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v11 = v38;
  v12 = v21;
  *&v23 = v9;
  *(&v23 + 1) = v22;
  *&v24 = v21;
  v19 = v41;
  BYTE8(v24) = v41;
  v13 = v20;
  BYTE9(v24) = v20;
  *(&v24 + 10) = v39;
  HIWORD(v24) = v40;
  v14 = v42;
  *&v25 = v10;
  *(&v25 + 1) = v42;
  v26 = v38;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  *(a2 + 48) = v38;
  *(a2 + 16) = v16;
  *(a2 + 32) = v17;
  *a2 = v15;
  sub_2301A7C3C(&v23, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v9;
  v28 = v22;
  v29 = v12;
  v30 = v19;
  v31 = v13;
  v32 = v39;
  v33 = v40;
  v34 = v10;
  v35 = v14;
  v36 = v11;
  return sub_2301A7C98(&v27);
}

uint64_t sub_23025D9E0()
{
  v1 = 0x73694C7472616D73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F6974636573;
  }
}

uint64_t sub_23025DA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230282C30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23025DA78(uint64_t a1)
{
  v2 = sub_230272D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025DAB4(uint64_t a1)
{
  v2 = sub_230272D24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CustomSmartListSectionsModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18468);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v26 = *(v1 + 16);
  v27 = v6;
  v36 = *(v1 + 24);
  v25 = *(v1 + 25);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v23 = *(v1 + 56);
  v24 = v10;
  v11 = *(v1 + 64);
  v21 = *(v1 + 72);
  v22 = v11;
  v20 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272D24();

  sub_230311448();
  v30 = v7;
  v31 = v27;
  v32 = v26;
  LOBYTE(v33) = v36;
  BYTE1(v33) = v25;
  v34 = v8;
  v35 = v9;
  v12 = v5;
  v37 = 0;
  sub_230272C7C();
  v13 = v28;
  sub_230310DF8();

  if (v13)
  {
    return (*(v29 + 8))(v5, v3);
  }

  v16 = v20;
  v15 = v21;
  v18 = v22;
  v17 = v23;
  v19 = v29;
  v30 = v24;
  v37 = 1;
  type metadata accessor for REMSmartList_Codable();
  sub_230271420(qword_280C9AC10, type metadata accessor for REMSmartList_Codable);
  sub_230310DF8();
  v30 = v17;
  v31 = v18;
  v32 = v15;
  v33 = v16;
  v37 = 2;
  sub_2300E0488(v17);
  sub_230272280();
  sub_230310D98();
  sub_2300E04C8(v30);
  return (*(v19 + 8))(v12, v3);
}

void REMRemindersListDataView.CustomSmartListSectionsModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18478);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272D24();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_230272CD0();
    sub_230310CE8();
    v56 = v35;
    v25 = v36;
    v26 = v37;
    v9 = v39;
    v28 = v42;
    v27 = v43;
    v55 = v38;
    type metadata accessor for REMSmartList_Codable();
    LOBYTE(v29) = 1;
    sub_230271420(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
    sub_230310CE8();
    v24 = v9;
    v10 = v35;
    v49 = 2;
    sub_2302722D4();
    sub_230310C88();
    (*(v6 + 8))(v8, v5);
    v22 = v50;
    v21 = v51;
    v11 = v52;
    v20 = *(&v51 + 1);
    *&v29 = v56;
    v12 = v25;
    *(&v29 + 1) = v25;
    *&v30 = v26;
    v23 = v55;
    BYTE8(v30) = v55;
    v13 = v24;
    BYTE9(v30) = v24;
    HIWORD(v30) = v54;
    *(&v30 + 10) = v53;
    v14 = v28;
    *&v31 = v28;
    v15 = v27;
    *(&v31 + 1) = v27;
    *&v32 = v10;
    *(&v32 + 1) = v50;
    v33 = v51;
    v34 = v52;
    v16 = v30;
    *a2 = v29;
    *(a2 + 16) = v16;
    v17 = v31;
    v18 = v32;
    v19 = v33;
    *(a2 + 80) = v11;
    *(a2 + 48) = v18;
    *(a2 + 64) = v19;
    *(a2 + 32) = v17;
    sub_2301A7B8C(&v29, &v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v35 = v56;
    v36 = v12;
    v37 = v26;
    v38 = v23;
    v39 = v13;
    v40 = v53;
    v41 = v54;
    v42 = v14;
    v43 = v15;
    v44 = v10;
    v45 = v22;
    v46 = v21;
    v47 = v20;
    v48 = v11;
    sub_2301A7BE8(&v35);
  }
}

void *_s19ReminderKitInternal24REMRemindersListDataViewO011CustomSmartE13SectionsModelV16manualOrderingIDSo09REMManualM0CAAE06ManualmN0VSgvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2300E0488(v2);
}

__n128 _s19ReminderKitInternal24REMRemindersListDataViewO011CustomSmartE13SectionsModelV08sectionsK005smartE016manualOrderingIDAeC0jK0V_AA08REMSmartE8_CodableCSo09REMManualO0CAAE06ManualoP0VSgtcfC_0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = *(a1 + 8);
  *(a4 + 32) = *(a1 + 32);
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 56) = *a3;
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  *a4 = *a1;
  *(a4 + 24) = v6;
  *(a4 + 25) = v7;
  *(a4 + 48) = a2;
  *(a4 + 72) = v5;
  return result;
}

uint64_t sub_23025E2B8()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F6974636573;
  }
}

uint64_t sub_23025E32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230282D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23025E354(uint64_t a1)
{
  v2 = sub_230272D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025E390(uint64_t a1)
{
  v2 = sub_230272D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TemplateSectionsModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18480);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v26 = *(v1 + 16);
  v27 = v6;
  v36 = *(v1 + 24);
  v25 = *(v1 + 25);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v23 = *(v1 + 56);
  v24 = v10;
  v11 = *(v1 + 64);
  v21 = *(v1 + 72);
  v22 = v11;
  v20 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272D78();

  sub_230311448();
  v30 = v7;
  v31 = v27;
  v32 = v26;
  LOBYTE(v33) = v36;
  BYTE1(v33) = v25;
  v34 = v8;
  v35 = v9;
  v12 = v5;
  v37 = 0;
  sub_230272C7C();
  v13 = v28;
  sub_230310DF8();

  if (v13)
  {
    return (*(v29 + 8))(v5, v3);
  }

  v16 = v20;
  v15 = v21;
  v18 = v22;
  v17 = v23;
  v19 = v29;
  v30 = v24;
  v37 = 1;
  type metadata accessor for REMList_Codable();
  sub_230271420(&qword_280C9C348, type metadata accessor for REMList_Codable);
  sub_230310DF8();
  v30 = v17;
  v31 = v18;
  v32 = v15;
  v33 = v16;
  v37 = 2;
  sub_2300E0488(v17);
  sub_230272280();
  sub_230310D98();
  sub_2300E04C8(v30);
  return (*(v19 + 8))(v12, v3);
}

void REMRemindersListDataView.TemplateSectionsModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272D78();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_230272CD0();
    sub_230310CE8();
    v56 = v35;
    v25 = v36;
    v26 = v37;
    v9 = v39;
    v28 = v42;
    v27 = v43;
    v55 = v38;
    type metadata accessor for REMList_Codable();
    LOBYTE(v29) = 1;
    sub_230271420(&qword_280C9C340, type metadata accessor for REMList_Codable);
    sub_230310CE8();
    v24 = v9;
    v10 = v35;
    v49 = 2;
    sub_2302722D4();
    sub_230310C88();
    (*(v6 + 8))(v8, v5);
    v22 = v50;
    v21 = v51;
    v11 = v52;
    v20 = *(&v51 + 1);
    *&v29 = v56;
    v12 = v25;
    *(&v29 + 1) = v25;
    *&v30 = v26;
    v23 = v55;
    BYTE8(v30) = v55;
    v13 = v24;
    BYTE9(v30) = v24;
    HIWORD(v30) = v54;
    *(&v30 + 10) = v53;
    v14 = v28;
    *&v31 = v28;
    v15 = v27;
    *(&v31 + 1) = v27;
    *&v32 = v10;
    *(&v32 + 1) = v50;
    v33 = v51;
    v34 = v52;
    v16 = v30;
    *a2 = v29;
    *(a2 + 16) = v16;
    v17 = v31;
    v18 = v32;
    v19 = v33;
    *(a2 + 80) = v11;
    *(a2 + 48) = v18;
    *(a2 + 64) = v19;
    *(a2 + 32) = v17;
    sub_23019E8E0(&v29, &v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v35 = v56;
    v36 = v12;
    v37 = v26;
    v38 = v23;
    v39 = v13;
    v40 = v53;
    v41 = v54;
    v42 = v14;
    v43 = v15;
    v44 = v10;
    v45 = v22;
    v46 = v21;
    v47 = v20;
    v48 = v11;
    sub_23019E93C(&v35);
  }
}

uint64_t sub_23025EB44()
{
  v1 = 0x6D536D6F74737563;
  if (*v0 != 1)
  {
    v1 = 0x797265636F7267;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_23025EBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230282E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23025EBD4(uint64_t a1)
{
  v2 = sub_230272DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025EC10(uint64_t a1)
{
  v2 = sub_230272DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23025EC4C(uint64_t a1)
{
  v2 = sub_230272E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025EC88(uint64_t a1)
{
  v2 = sub_230272E74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23025ECC4(uint64_t a1)
{
  v2 = sub_230272E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025ED00(uint64_t a1)
{
  v2 = sub_230272E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23025ED3C(uint64_t a1)
{
  v2 = sub_230272EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025ED78(uint64_t a1)
{
  v2 = sub_230272EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ListsSectionsModel.List.ListType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18498);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184A0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184A8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272DCC();
  sub_230311448();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_230272E74();
      v9 = v21;
      sub_230310D48();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_230272E20();
      v9 = v24;
      sub_230310D48();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_230272EC8();
    sub_230310D48();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t REMRemindersListDataView.ListsSectionsModel.List.ListType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184C8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184D0);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184D8);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184E0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_230272DCC();
  v15 = v36;
  sub_230311428();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_230310D08();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_2300DB8E0();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_230310918();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v24 = &type metadata for REMRemindersListDataView.ListsSectionsModel.List.ListType;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_230272E74();
          sub_230310C28();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_230272E20();
          v26 = v17;
          sub_230310C28();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_230272EC8();
        sub_230310C28();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t REMRemindersListDataView.ListsSectionsModel.List.listName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *REMRemindersListDataView.ListsSectionsModel.List.listColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t REMRemindersListDataView.ListsSectionsModel.List.init(listID:listName:listColor:listType:sections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_23025F744()
{
  v1 = *v0;
  v2 = 0x44497473696CLL;
  v3 = 0x6F6C6F437473696CLL;
  v4 = 0x657079547473696CLL;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974636573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E7473696CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23025F7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230282FB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23025F808(uint64_t a1)
{
  v2 = sub_230272F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23025F844(uint64_t a1)
{
  v2 = sub_230272F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ListsSectionsModel.List.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 24);
  v20 = *(v1 + 16);
  v21 = v7;
  v19 = v9;
  v18 = *(v1 + 32);
  v17 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272F1C();
  v10 = v8;
  sub_230311448();
  v24 = v10;
  v23 = 0;
  type metadata accessor for REMObjectID_Codable();
  sub_230271420(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
  v11 = v22;
  sub_230310DF8();
  if (v11)
  {
  }

  else
  {
    v12 = v19;
    v13 = v18;
    v14 = v17;

    LOBYTE(v24) = 1;
    sub_230310DA8();
    v24 = v12;
    v23 = 2;
    type metadata accessor for REMColor_Codable();
    sub_230271420(&qword_280C9AFF0, type metadata accessor for REMColor_Codable);
    sub_230310D98();
    LOBYTE(v24) = v13;
    v23 = 3;
    sub_230272F70();
    sub_230310DF8();
    v24 = v14;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18448);
    sub_230272A78();
    sub_230310DF8();
  }

  return (*(v4 + 8))(v6, v3);
}

void REMRemindersListDataView.ListsSectionsModel.List.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230272F1C();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for REMObjectID_Codable();
    v22 = 0;
    sub_230271420(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    sub_230310CE8();
    v9 = v23;
    LOBYTE(v23) = 1;
    v20 = sub_230310C98();
    v21 = v10;
    type metadata accessor for REMColor_Codable();
    v22 = 2;
    sub_230271420(&qword_280C9AFE8, type metadata accessor for REMColor_Codable);
    sub_230310C88();
    v19 = v23;
    v22 = 3;
    sub_230272FC4();
    sub_230310CE8();
    v18 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18448);
    v22 = 4;
    sub_230272B50();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    v11 = v23;
    v12 = v20;
    v13 = v21;
    *a2 = v9;
    *(a2 + 8) = v12;
    v14 = v19;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v18;
    *(a2 + 40) = v11;
    v15 = v14;

    v16 = v9;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_23025FF90()
{
  v1 = *v0;
  v2 = 0x737473696CLL;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000016;
  if (v1 == 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230260034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230283164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23026005C(uint64_t a1)
{
  v2 = sub_230273018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230260098(uint64_t a1)
{
  v2 = sub_230273018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ListsSectionsModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB184F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v19 = v1[1];
  v9 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v9;
  v10 = v1[3];
  v15 = v1[4];
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273018();

  sub_230311448();
  v21 = v8;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18500);
  sub_23027306C();
  sub_230310DF8();
  if (v2)
  {
  }

  else
  {
    v12 = v15;
    v11 = v16;

    LOBYTE(v21) = 1;
    sub_230310D88();
    LOBYTE(v21) = 2;
    sub_230310D68();
    v21 = v11;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
    sub_2300E0EE4();
    sub_230310DF8();
    v21 = v12;
    v20 = 4;
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.ListsSectionsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18508);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273018();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18500);
  v21 = 0;
  sub_230273144();
  sub_230310CE8();
  v9 = v22;
  LOBYTE(v22) = 1;
  v10 = sub_230310C78();
  v20 = v11;
  v19 = v10;
  LOBYTE(v22) = 2;
  v17 = sub_230310C58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
  v21 = 3;
  v18 = sub_2300DB820();
  sub_230310CE8();
  v16 = v22;
  v21 = 4;
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v13 = v22;
  v14 = v19;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20 & 1;
  *(a2 + 17) = v17;
  *(a2 + 24) = v16;
  *(a2 + 32) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s19ReminderKitInternal24REMRemindersListDataViewO10GroupModelV05listsI0AC05ListsI0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = v1[3];
  v7 = v1[4];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

__n128 _s19ReminderKitInternal24REMRemindersListDataViewO10GroupModelV05listsI005groupE0AeC05ListsI0V_So7REMListCtcfC_0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  result = *(a1 + 24);
  *(a3 + 24) = result;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_23026073C()
{
  if (*v0)
  {
    return 0x70756F7267;
  }

  else
  {
    return 0x746365537473696CLL;
  }
}

uint64_t sub_23026077C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746365537473696CLL && a2 == 0xEC000000736E6F69;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230260858(uint64_t a1)
{
  v2 = sub_23027321C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230260894(uint64_t a1)
{
  v2 = sub_23027321C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.GroupSectionsModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18510);
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = *v1;
  v13 = v1[1];
  v22 = *(v1 + 16);
  v12 = *(v1 + 17);
  v7 = v1[3];
  v8 = v1[4];
  v11 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23027321C();

  sub_230311448();
  v16 = v6;
  v17 = v13;
  v18 = v22;
  v19 = v12;
  v20 = v7;
  v21 = v8;
  v23 = 0;
  sub_230273270();
  v9 = v14;
  sub_230310DF8();

  if (!v9)
  {
    v16 = v11;
    v23 = 1;
    type metadata accessor for REMList_Codable();
    sub_230271420(&qword_280C9C348, type metadata accessor for REMList_Codable);
    sub_230310DF8();
  }

  return (*(v15 + 8))(v5, v3);
}

uint64_t REMRemindersListDataView.GroupSectionsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18528);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23027321C();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_2302732C4();
  sub_230310CE8();
  v17 = v20;
  v18 = v19;
  HIDWORD(v16) = v22;
  v10 = v23;
  v9 = v24;
  v25 = v21;
  type metadata accessor for REMList_Codable();
  v26 = 1;
  sub_230271420(&qword_280C9C340, type metadata accessor for REMList_Codable);
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v11 = v19;
  v12 = v25;
  v13 = v17;
  *a2 = v18;
  *(a2 + 8) = v13;
  *(a2 + 16) = v12;
  *(a2 + 17) = BYTE4(v16);
  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;

  v14 = v11;
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void static REMRemindersListDataView.fetchAll_Sections(store:configuration:diffingAgainst:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for REMRemindersListDataView.AllSectionsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2302706F4(a1, v9, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v10 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AllSectionsInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300D2A38(v10, v9, &v27);
  sub_230270804(v9, type metadata accessor for REMRemindersListDataView.AllSectionsInvocation.Parameters);

  if (!v3)
  {
    v25[0] = v27;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;
    v25[4] = v31;
    v26 = v32;
    v22 = 0;
    v21 = v32;
    v33 = *(&v27 + 1);
    v11 = v27;
    v24 = v28;
    v23 = BYTE1(v28);
    v12 = *(&v28 + 1);
    v13 = v29;
    v14 = v30;
    v20 = *(&v31 + 1);
    v15 = v31;
    v16 = v32;

    v17 = v20;

    sub_230061918(v25, &qword_27DB18538);
    v18 = v33;
    *a3 = v11;
    *(a3 + 8) = v18;
    *(a3 + 16) = v24;
    *(a3 + 17) = v23;
    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
    *(a3 + 48) = v14;
    *(a3 + 64) = v15;
    v19 = v21;
    *(a3 + 72) = v17;
    *(a3 + 80) = v19;
  }
}

void static REMRemindersListDataView.fetchGroup_Sections(store:group:includePinnedSublists:configuration:diffingAgainst:)(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v33 = a4;
  v34 = a3;
  v36 = a1;
  v8 = type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMList_Codable();
  v13 = objc_allocWithZone(v12);
  v14 = [a2 store];
  v15 = [a2 account];
  v16 = [a2 storage];
  v44.receiver = v13;
  v44.super_class = v12;
  v17 = objc_msgSendSuper2(&v44, sel_initWithStore_account_storage_, v14, v15, v16);

  v18 = v17;
  v19 = [a2 parentList];
  [v18 setParentList_];

  sub_2302706F4(v33, &v11[*(v9 + 32)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  *v11 = v18;
  v11[8] = v34;
  v20 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation());
  v21 = [v20 initWithFetchResultTokenToDiffAgainst_];
  v22 = v45;
  sub_2300D3508(v21, v11, &v38);
  sub_230270804(v11, type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters);

  if (!v22)
  {
    v37[0] = v38;
    v37[1] = v39;
    v37[2] = v40;
    v37[3] = v41;
    v37[4] = v42;
    v37[5] = v43;
    v36 = *(&v38 + 1);
    v45 = v38;
    LODWORD(v35) = v39;
    v34 = BYTE1(v39);
    v23 = *(&v39 + 1);
    v24 = v40;
    v25 = v41;
    v32 = *(&v42 + 1);
    v26 = v42;
    v33 = *(&v43 + 1);
    v27 = v43;
    v28 = *(&v43 + 1);

    v31 = *(&v24 + 1);

    v29 = v32;

    sub_230061918(v37, &qword_27DB18540);
    v30 = v36;
    *a6 = v45;
    *(a6 + 8) = v30;
    *(a6 + 16) = v35;
    *(a6 + 17) = v34;
    *(a6 + 24) = v23;
    *(a6 + 32) = v24;
    *(a6 + 40) = v31;
    *(a6 + 48) = v25;
    *(a6 + 64) = v26;
    *(a6 + 72) = v29;
    *(a6 + 80) = v27;
    *(a6 + 88) = v33;
  }
}

uint64_t static REMRemindersListDataView.fetchAppIntents_Sections(store:diffingAgainst:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v9 = Configuration - 8;
  MEMORY[0x28223BE20](Configuration);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  swift_storeEnumTagMultiPayload();
  *v11 = 0x80;
  v11[*(v9 + 32)] = 0;
  v11[*(v9 + 40)] = 0;
  sub_2302706F4(v11, v7, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v12 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300D3F64(v12, v7, &v30);

  sub_230270804(v7, type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters);
  if (v2)
  {
    return sub_230270804(v11, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  }

  sub_230270804(v11, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v28[0] = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  v28[4] = v34;
  v29 = v35;
  v25 = 0;
  v24 = v35;
  v36 = *(&v30 + 1);
  v14 = v30;
  v27 = v31;
  v26 = BYTE1(v31);
  v15 = *(&v31 + 1);
  v16 = v32;
  v17 = v33;
  v23 = *(&v34 + 1);
  v18 = v34;
  v19 = v35;

  v20 = v23;

  result = sub_230061918(v28, &qword_27DB18538);
  v21 = v36;
  *a2 = v14;
  *(a2 + 8) = v21;
  *(a2 + 16) = v27;
  *(a2 + 17) = v26;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  *(a2 + 64) = v18;
  v22 = v24;
  *(a2 + 72) = v20;
  *(a2 + 80) = v22;
  return result;
}

uint64_t sub_230261748(uint64_t a1)
{
  v2 = sub_230273468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230261784(uint64_t a1)
{
  v2 = sub_230273468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302617C0(uint64_t a1)
{
  v2 = sub_230273564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302617FC(uint64_t a1)
{
  v2 = sub_230273564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230261838()
{
  v1 = *v0;
  v2 = 0x7961646F74;
  v3 = 0x79627261656ELL;
  if (v1 != 6)
  {
    v3 = 0x7974706D65;
  }

  v4 = 0x6F6F6E7265746661;
  if (v1 != 4)
  {
    v4 = 0x746867696E6F74;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C6C417961646F74;
  if (v1 != 2)
  {
    v5 = 0x676E696E726F6DLL;
  }

  if (*v0)
  {
    v2 = 0x6F5465726F666562;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230261930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230283318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230261958(uint64_t a1)
{
  v2 = sub_230273318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230261994(uint64_t a1)
{
  v2 = sub_230273318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302619D0(uint64_t a1)
{
  v2 = sub_23027336C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230261A0C(uint64_t a1)
{
  v2 = sub_23027336C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230261A48(uint64_t a1)
{
  v2 = sub_2302734BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230261A84(uint64_t a1)
{
  v2 = sub_2302734BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230261AC0(uint64_t a1)
{
  v2 = sub_2302733C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230261AFC(uint64_t a1)
{
  v2 = sub_2302733C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230261B38(uint64_t a1)
{
  v2 = sub_230273510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230261B74(uint64_t a1)
{
  v2 = sub_230273510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230261BB0(uint64_t a1)
{
  v2 = sub_2302735B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230261BEC(uint64_t a1)
{
  v2 = sub_2302735B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230261C28(uint64_t a1)
{
  v2 = sub_230273414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230261C64(uint64_t a1)
{
  v2 = sub_230273414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TodayGroupModel.Group.GroupType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18548);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18550);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18558);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18560);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18568);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v39 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18570);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v36 = &v33 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18578);
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18580);
  v33 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18588);
  v20 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v21 = *v1;
  v22 = a1[3];
  v23 = a1;
  v25 = &v33 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_230273318();
  sub_230311448();
  v26 = (v20 + 8);
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v61 = 6;
        sub_2302733C0();
        v28 = v48;
        v27 = v54;
        sub_230310D48();
        v30 = v49;
        v29 = v50;
      }

      else
      {
        v62 = 7;
        sub_23027336C();
        v28 = v51;
        v27 = v54;
        sub_230310D48();
        v30 = v52;
        v29 = v53;
      }
    }

    else if (v21 == 4)
    {
      v59 = 4;
      sub_230273468();
      v28 = v42;
      v27 = v54;
      sub_230310D48();
      v30 = v43;
      v29 = v44;
    }

    else
    {
      v60 = 5;
      sub_230273414();
      v28 = v45;
      v27 = v54;
      sub_230310D48();
      v30 = v46;
      v29 = v47;
    }

    goto LABEL_16;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v57 = 2;
      sub_230273510();
      v28 = v36;
      v27 = v54;
      sub_230310D48();
      v30 = v37;
      v29 = v38;
    }

    else
    {
      v58 = 3;
      sub_2302734BC();
      v28 = v39;
      v27 = v54;
      sub_230310D48();
      v30 = v40;
      v29 = v41;
    }

LABEL_16:
    (*(v30 + 8))(v28, v29);
    return (*v26)(v25, v27);
  }

  if (v21)
  {
    v56 = 1;
    sub_230273564();
    v31 = v54;
    sub_230310D48();
    (*(v34 + 8))(v16, v35);
    return (*v26)(v25, v31);
  }

  v55 = 0;
  sub_2302735B8();
  v27 = v54;
  sub_230310D48();
  (*(v33 + 8))(v19, v17);
  return (*v26)(v25, v27);
}

uint64_t REMRemindersListDataView.TodayGroupModel.Group.GroupType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18598);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185A0);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185A8);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185B0);
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  MEMORY[0x28223BE20](v9);
  v80 = &v57 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185B8);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v79 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185C0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v77 = &v57 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185C8);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185D0);
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185D8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v23 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_230273318();
  v24 = v84;
  sub_230311428();
  if (!v24)
  {
    v58 = v18;
    v57 = v16;
    v59 = v15;
    v26 = v79;
    v25 = v80;
    v28 = v81;
    v27 = v82;
    v84 = v20;
    v29 = v83;
    v61 = v19;
    v60 = v22;
    v30 = sub_230310D08();
    v31 = (2 * *(v30 + 16)) | 1;
    v86 = v30;
    v87 = v30 + 32;
    v88 = 0;
    v89 = v31;
    v32 = sub_2300BBF68();
    if (v32 != 8 && v88 == v89 >> 1)
    {
      v90 = v32;
      if (v32 > 3u)
      {
        v43 = v61;
        v44 = v60;
        if (v32 > 5u)
        {
          v52 = v84;
          if (v32 == 6)
          {
            v91 = 6;
            sub_2302733C0();
            sub_230310C28();
            (*(v73 + 8))(v27, v74);
          }

          else
          {
            v91 = 7;
            sub_23027336C();
            v56 = v78;
            sub_230310C28();
            (*(v75 + 8))(v56, v76);
          }

          (*(v52 + 8))(v44, v43);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        v45 = v84;
        if (v32 == 4)
        {
          v91 = 4;
          sub_230273468();
          sub_230310C28();
          v46 = v69;
          v47 = v70;
        }

        else
        {
          v91 = 5;
          sub_230273414();
          v25 = v28;
          sub_230310C28();
          v47 = v71;
          v46 = v72;
        }

        (*(v47 + 8))(v25, v46);
        (*(v45 + 8))(v44, v43);
      }

      else
      {
        if (v32 > 1u)
        {
          v48 = v84;
          if (v32 == 2)
          {
            v91 = 2;
            sub_230273510();
            v49 = v77;
            v50 = v61;
            v51 = v60;
            sub_230310C28();
            (*(v65 + 8))(v49, v66);
          }

          else
          {
            v91 = 3;
            sub_2302734BC();
            v50 = v61;
            v51 = v60;
            sub_230310C28();
            (*(v67 + 8))(v26, v68);
          }

          (*(v48 + 8))(v51, v50);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        if (v32)
        {
          v91 = 1;
          sub_230273564();
          v53 = v59;
          v54 = v61;
          v55 = v60;
          sub_230310C28();
          (*(v63 + 8))(v53, v64);
          (*(v84 + 8))(v55, v54);
        }

        else
        {
          v91 = 0;
          sub_2302735B8();
          v34 = v58;
          v35 = v61;
          v36 = v60;
          sub_230310C28();
          (*(v62 + 8))(v34, v57);
          (*(v84 + 8))(v36, v35);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v33 = v90;
      return __swift_destroy_boxed_opaque_existential_1(v85);
    }

    v37 = sub_230310918();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
    *v39 = &type metadata for REMRemindersListDataView.TodayGroupModel.Group.GroupType;
    v40 = v61;
    v41 = v60;
    sub_230310C38();
    sub_2303108F8();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v84 + 8))(v41, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

ReminderKitInternal::REMRemindersListDataView::TodayGroupModel::Group __swiftcall REMRemindersListDataView.TodayGroupModel.Group.init(groupType:reminders:)(ReminderKitInternal::REMRemindersListDataView::TodayGroupModel::Group::GroupType groupType, Swift::OpaquePointer reminders)
{
  *v2 = *groupType;
  *(v2 + 8) = reminders;
  result.reminders = reminders;
  result.groupType = groupType;
  return result;
}

uint64_t sub_230262FDC()
{
  if (*v0)
  {
    return 0x7265646E696D6572;
  }

  else
  {
    return 0x70795470756F7267;
  }
}

uint64_t sub_23026301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70795470756F7267 && a2 == 0xE900000000000065;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2302630FC(uint64_t a1)
{
  v2 = sub_23027360C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230263138(uint64_t a1)
{
  v2 = sub_23027360C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TodayGroupModel.Group.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23027360C();
  sub_230311448();
  v13 = v8;
  v12 = 0;
  sub_230273660();
  sub_230310DF8();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    sub_230271A74();
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.TodayGroupModel.Group.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23027360C();
  sub_230311428();
  if (!v2)
  {
    v14 = 0;
    sub_2302736B4();
    sub_230310CE8();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    v13 = 1;
    sub_230271B4C();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 REMRemindersListDataView.TodayGroupModel.remindersCount.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

void *REMRemindersListDataView.TodayGroupModel.currentLocation.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *REMRemindersListDataView.TodayGroupModel.todaySmartList.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

__n128 REMRemindersListDataView.TodayGroupModel.init(groups:remindersCount:currentLocation:prefetchedReminders:prefetchedDueReminders:todaySmartList:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a2[1].n128_u8[0];
  *a7 = a1;
  result = *a2;
  *(a7 + 8) = *a2;
  *(a7 + 24) = v7;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t REMRemindersListDataView.TodayGroupModel.todayReminders.getter()
{
  v1 = (*v0 + 32);
  v2 = *(*v0 + 16) + 1;
  result = MEMORY[0x277D84F90];
  while (--v2)
  {
    v4 = *v1;
    v1 += 16;
    if (!v4)
    {
    }
  }

  return result;
}

uint64_t REMRemindersListDataView.TodayGroupModel.nearbyReminders.getter()
{
  v1 = (*v0 + 32);
  v2 = *(*v0 + 16) + 1;
  result = MEMORY[0x277D84F90];
  while (--v2)
  {
    v4 = *v1;
    v1 += 16;
    if (v4 == 6)
    {
    }
  }

  return result;
}

unint64_t sub_23026367C()
{
  v1 = *v0;
  v2 = 0x7370756F7267;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x616D537961646F74;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7265646E696D6572;
  if (v1 != 1)
  {
    v5 = 0x4C746E6572727563;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23026375C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302835B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230263784(uint64_t a1)
{
  v2 = sub_230273708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302637C0(uint64_t a1)
{
  v2 = sub_230273708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TodayGroupModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v22 = v1[2];
  v23 = v8;
  v27 = *(v1 + 24);
  v10 = v1[4];
  v20 = v1[5];
  v21 = v10;
  v11 = v1[7];
  v19 = v1[6];
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_230273708();

  sub_230311448();
  v24 = v9;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185F8);
  sub_23027375C();
  sub_230310DF8();
  if (v2)
  {
  }

  else
  {
    v17 = v20;
    v16 = v21;

    v24 = v23;
    v25 = v22;
    v26 = v27;
    v28 = 1;
    sub_230271CCC();
    sub_230310D98();
    v24 = v16;
    v28 = 2;
    type metadata accessor for REMStructuredLocation_Codable();
    sub_230271420(&qword_280C9C308, type metadata accessor for REMStructuredLocation_Codable);
    sub_230310D98();
    v24 = v17;
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
    sub_2300E0EE4();
    sub_230310DF8();
    v24 = v19;
    v28 = 4;
    sub_230310DF8();
    v24 = v11;
    v28 = 5;
    type metadata accessor for REMSmartList_Codable();
    sub_230271420(qword_280C9AC10, type metadata accessor for REMSmartList_Codable);
    sub_230310D98();
  }

  return (*(v5 + 8))(v7, v15);
}

void REMRemindersListDataView.TodayGroupModel.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18600);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273708();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB185F8);
    LOBYTE(v29) = 0;
    sub_230273834();
    sub_230310CE8();
    v9 = v33;
    LOBYTE(v29) = 1;
    sub_230271D20();
    sub_230310C88();
    v46 = v9;
    v11 = v33;
    v10 = v34;
    v45 = v35;
    type metadata accessor for REMStructuredLocation_Codable();
    LOBYTE(v29) = 2;
    sub_230271420(&qword_280C9C300, type metadata accessor for REMStructuredLocation_Codable);
    sub_230310C88();
    v26 = v10;
    v27 = v11;
    v28 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
    LOBYTE(v29) = 3;
    sub_2300DB820();
    sub_230310CE8();
    v25 = v33;
    LOBYTE(v29) = 4;
    sub_230310CE8();
    v12 = v46;
    v24 = v33;
    type metadata accessor for REMSmartList_Codable();
    v42 = 5;
    sub_230271420(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
    sub_230310C88();
    (*(v6 + 8))(v8, v5);
    v23 = v43;
    v13 = v27;
    *&v29 = v12;
    *(&v29 + 1) = v27;
    v14 = v26;
    *&v30 = v26;
    v15 = v45;
    BYTE8(v30) = v45;
    *(&v30 + 9) = *v44;
    HIDWORD(v30) = *&v44[3];
    v16 = v28;
    v17 = v25;
    *&v31 = v28;
    *(&v31 + 1) = v25;
    v18 = v24;
    *&v32 = v24;
    *(&v32 + 1) = v43;
    v19 = v29;
    v20 = v30;
    v21 = v32;
    a2[2] = v31;
    a2[3] = v21;
    *a2 = v19;
    a2[1] = v20;
    sub_23027390C(&v29, &v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33 = v46;
    v34 = v13;
    v35 = v14;
    v36 = v15;
    *v37 = *v44;
    *&v37[3] = *&v44[3];
    v38 = v16;
    v39 = v17;
    v40 = v18;
    v41 = v23;
    sub_230273944(&v33);
  }
}

uint64_t sub_23026414C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4F6E6F6974636573 && a2 == 0xEF676E6972656472)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2302641DC(uint64_t a1)
{
  v2 = sub_230273974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230264218(uint64_t a1)
{
  v2 = sub_230273974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TodaySectionOrderingModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18608);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273974();

  sub_230311448();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15210);
  sub_2302739C8();
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMRemindersListDataView.TodaySectionOrderingModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18628);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273974();
  sub_230311428();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15210);
    sub_230273AA0();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double static REMRemindersListDataView.fetchToday_Groups(store:grouped:currentLocation:today:configuration:diffingAgainst:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, id a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v27[0] = a6;
  v27[1] = a1;
  v12 = type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters(0);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    objc_allocWithZone(type metadata accessor for REMStructuredLocation_Codable());
    a3 = REMStructuredLocation_Codable.init(_:)(a3);
  }

  v15 = *(v12 + 24);
  v16 = sub_23030EB58();
  (*(*(v16 - 8) + 16))(&v14[v15], a4, v16);
  sub_2302706F4(a5, &v14[*(v12 + 28)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  *v14 = a2 & 1;
  *(v14 + 1) = a3;
  v17 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.TodayGroupInvocation());
  v18 = [v17 initWithFetchResultTokenToDiffAgainst_];
  v19 = v40;
  sub_2300D4000(v18, v14, v36);
  sub_230270804(v14, type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters);

  if (!v19)
  {
    v33 = v37;
    v34 = v38;
    v35 = v39;
    v29 = v36[0];
    v30 = v36[1];
    v31 = v36[2];
    v32 = v36[3];
    v21 = v37;
    v22 = v38;
    v23 = v39;
    sub_23027390C(&v29, &v28);
    v24 = *(&v23 + 1);

    sub_230061918(&v29, &qword_27DB18640);
    v25 = v30;
    *a7 = v29;
    a7[1] = v25;
    result = *&v31;
    v26 = v32;
    a7[2] = v31;
    a7[3] = v26;
    a7[4] = v21;
    a7[5] = v22;
    a7[6] = v23;
  }

  return result;
}

void static REMRemindersListDataView.fetchTodaySectionOrdering(store:)(uint64_t *a1@<X8>)
{
  v3 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.TodaySectionOrderingInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300D4A5C(v3, v5);

  if (!v1)
  {
    v4 = v5[0];

    *a1 = v4;
  }
}

uint64_t REMRemindersListDataView.DatesModel.Group.init(date:reminders:isToday:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_23030EB58();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for REMRemindersListDataView.DatesModel.Group(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_230264938()
{
  v1 = 0x7265646E696D6572;
  if (*v0 != 1)
  {
    v1 = 0x7961646F547369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_230264990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302837D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302649B8(uint64_t a1)
{
  v2 = sub_230273B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302649F4(uint64_t a1)
{
  v2 = sub_230273B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.DatesModel.Group.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273B98();
  sub_230311448();
  v12 = 0;
  sub_23030EB58();
  sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
  sub_230310DF8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for REMRemindersListDataView.DatesModel.Group(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    sub_230271A74();
    sub_230310DF8();
    v10[14] = 2;
    sub_230310DB8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMRemindersListDataView.DatesModel.Group.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_23030EB58();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18658);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v20 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.DatesModel.Group(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273B98();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v23;
  v11 = v24;
  v20 = v8;
  v21 = v10;
  v30 = 0;
  sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
  v14 = v25;
  v13 = v26;
  sub_230310CE8();
  (*(v11 + 32))(v21, v14, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
  v29 = 1;
  sub_230271B4C();
  sub_230310CE8();
  *&v21[*(v20 + 20)] = v27;
  v28 = 2;
  v15 = sub_230310CA8();
  (*(v12 + 8))(v7, v13);
  v16 = v15 & 1;
  v18 = v21;
  v17 = v22;
  v21[*(v20 + 24)] = v16;
  sub_2302706F4(v18, v17, type metadata accessor for REMRemindersListDataView.DatesModel.Group);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_230270804(v18, type metadata accessor for REMRemindersListDataView.DatesModel.Group);
}

void __swiftcall REMRemindersListDataView.DatesModel.init(groups:completedRemindersCount:prefetchedReminders:prefetchedDueReminders:)(ReminderKitInternal::REMRemindersListDataView::DatesModel *__return_ptr retstr, Swift::OpaquePointer groups, Swift::Int_optional completedRemindersCount, Swift::OpaquePointer prefetchedReminders, Swift::OpaquePointer prefetchedDueReminders)
{
  retstr->groups = groups;
  retstr->completedRemindersCount.value = completedRemindersCount.value;
  retstr->completedRemindersCount.is_nil = completedRemindersCount.is_nil;
  retstr->prefetchedReminders = prefetchedReminders;
  retstr->prefetchedDueReminders = prefetchedDueReminders;
}

unint64_t sub_2302650A8()
{
  v1 = 0x7370756F7267;
  v2 = 0xD000000000000016;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230265124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302838F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23026514C(uint64_t a1)
{
  v2 = sub_230273BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230265188(uint64_t a1)
{
  v2 = sub_230273BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.DatesModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18660);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v17 = v1[1];
  v16 = *(v1 + 16);
  v9 = v1[3];
  v14 = v1[4];
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273BEC();

  sub_230311448();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18668);
  sub_230273C40();
  sub_230310DF8();

  if (!v2)
  {
    v11 = v14;
    v10 = v15;
    LOBYTE(v19) = 1;
    sub_230310D88();
    v19 = v10;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
    sub_2300E0EE4();
    sub_230310DF8();
    v19 = v11;
    v18 = 3;
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.DatesModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18670);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273BEC();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18668);
  v21 = 0;
  sub_230273CF4();
  sub_230310CE8();
  v9 = v22;
  LOBYTE(v22) = 1;
  v10 = sub_230310C78();
  v20 = v9;
  v19 = v11;
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
  v21 = 2;
  sub_2300DB820();
  sub_230310CE8();
  v17 = v22;
  v21 = 3;
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v13 = v22;
  v15 = v17;
  v14 = v18;
  *a2 = v20;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230265780(void (*a1)(void))
{
  a1(0);
}

uint64_t sub_2302657D4(uint64_t a1)
{
  v2 = sub_230273DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230265810(uint64_t a1)
{
  v2 = sub_230273DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ScheduledDateBucketsModel.Day.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273DC8();
  sub_230311448();
  v12 = 0;
  sub_23030EB58();
  sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
  sub_230310DF8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    sub_230271A74();
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMRemindersListDataView.ScheduledDateBucketsModel.Day.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_23030EB58();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18680);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273DC8();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
  v15 = v26;
  v16 = v24;
  sub_230310CE8();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
  v28 = 1;
  sub_230271B4C();
  sub_230310CE8();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_2302706F4(v18, v22, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_230270804(v18, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day);
}

uint64_t sub_230265DFC()
{
  v1 = *v0;
  v2 = 0x65754474736170;
  v3 = 7954788;
  v4 = 0x68746E6F6DLL;
  if (v1 != 3)
  {
    v4 = 1918985593;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657669467478656ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230265E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230283A60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230265EB4(uint64_t a1)
{
  v2 = sub_230273E3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230265EF0(uint64_t a1)
{
  v2 = sub_230273E3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230265F2C(uint64_t a1)
{
  v2 = sub_230273FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230265F68(uint64_t a1)
{
  v2 = sub_230273FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230265FA4(uint64_t a1)
{
  v2 = sub_230273F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230265FE0(uint64_t a1)
{
  v2 = sub_230273F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23026601C(uint64_t a1)
{
  v2 = sub_230274040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230266058(uint64_t a1)
{
  v2 = sub_230274040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302660A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937334628 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23026612C(uint64_t a1)
{
  v2 = sub_230274094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230266168(uint64_t a1)
{
  v2 = sub_230274094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302661A4(uint64_t a1)
{
  v2 = sub_230273E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302661E0(uint64_t a1)
{
  v2 = sub_230273E90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18688);
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  v69 = &v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18690);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18698);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v60 - v7;
  v61 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0);
  MEMORY[0x28223BE20](v61);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186A0);
  v60 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v60 - v9;
  v10 = sub_23030EB58();
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v72 = &v60 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186A8);
  v74 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v21 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B0);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v25 = &v60 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230273E3C();
  v82 = v25;
  sub_230311448();
  sub_2302706F4(v79, v23, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v42 = v62;
      sub_23027079C(v23, v62, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day);
      LOBYTE(v85) = 2;
      sub_230273FEC();
      v43 = v63;
      v45 = v82;
      v44 = v83;
      sub_230310D48();
      sub_230271420(&qword_280C97788, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day);
      v46 = v65;
      sub_230310DF8();
      (*(v64 + 8))(v43, v46);
      sub_230270804(v42, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day);
      return (*(v81 + 8))(v45, v44);
    }

    v27 = v83;
    if (EnumCaseMultiPayload == 3)
    {
      v79 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8) + 48));
      v29 = v77;
      v28 = v78;
      v30 = v72;
      (*(v78 + 32))(v72, v23, v77);
      LOBYTE(v85) = 3;
      sub_230273F98();
      v31 = v66;
      v32 = v82;
      sub_230310D48();
      LOBYTE(v85) = 0;
      sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
      v33 = v68;
      v34 = v80;
      sub_230310DF8();
      if (v34)
      {

        (*(v67 + 8))(v31, v33);
        (*(v28 + 8))(v30, v29);
        return (*(v81 + 8))(v32, v27);
      }

      v85 = v79;
      v84 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186C8);
      sub_230273EE4();
      sub_230310DF8();
      (*(v67 + 8))(v31, v33);
      (*(v28 + 8))(v72, v29);
      (*(v81 + 8))(v32, v83);
    }

    else
    {
      v79 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8) + 48));
      v48 = v77;
      v47 = v78;
      v49 = v73;
      (*(v78 + 32))(v73, v23, v77);
      LOBYTE(v85) = 4;
      sub_230273E90();
      v50 = v69;
      v51 = v82;
      sub_230310D48();
      LOBYTE(v85) = 0;
      sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
      v52 = v71;
      v53 = v80;
      sub_230310DF8();
      if (v53)
      {

        (*(v70 + 8))(v50, v52);
        (*(v47 + 8))(v49, v48);
        return (*(v81 + 8))(v51, v27);
      }

      v85 = v79;
      v84 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186C8);
      sub_230273EE4();
      sub_230310DF8();
      (*(v70 + 8))(v50, v52);
      (*(v47 + 8))(v73, v48);
      (*(v81 + 8))(v82, v83);
    }
  }

  v79 = v17;
  v37 = v74;
  v36 = v75;
  v38 = v76;
  if (!EnumCaseMultiPayload)
  {
    v39 = *v23;
    LOBYTE(v85) = 0;
    sub_230274094();
    v41 = v82;
    v40 = v83;
    sub_230310D48();
    v85 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186C8);
    sub_230273EE4();
    sub_230310DF8();
    (*(v37 + 8))(v20, v18);
    (*(v81 + 8))(v41, v40);
  }

  v54 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8) + 48));
  v56 = v78;
  v55 = v79;
  v57 = v77;
  (*(v78 + 32))(v79, v23, v77);
  LOBYTE(v85) = 1;
  sub_230274040();
  v58 = v82;
  sub_230310D48();
  LOBYTE(v85) = 0;
  sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
  v59 = v80;
  sub_230310DF8();
  if (!v59)
  {
    v85 = v54;
    v84 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186C8);
    sub_230273EE4();
    sub_230310DF8();
    (*(v60 + 8))(v36, v38);
    (*(v56 + 8))(v79, v57);
    (*(v81 + 8))(v82, v83);
  }

  (*(v60 + 8))(v36, v38);
  (*(v56 + 8))(v55, v57);
  return (*(v81 + 8))(v58, v83);
}

uint64_t REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186D8);
  v73 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v76 = &v61 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186E0);
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v75 = &v61 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186E8);
  v70 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v61 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186F0);
  v71 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v74 = &v61 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186F8);
  v67 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v61 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18700);
  v79 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v9 = &v61 - v8;
  v78 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket(0);
  v10 = MEMORY[0x28223BE20](v78);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v61 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v61 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  v26 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_230273E3C();
  v27 = v87;
  sub_230311428();
  if (!v27)
  {
    v62 = v23;
    v63 = v17;
    v29 = v80;
    v28 = v81;
    v64 = v20;
    v65 = v14;
    v30 = v83;
    v31 = v84;
    v32 = v82;
    v87 = v25;
    v33 = v85;
    v34 = sub_230310D08();
    v35 = (2 * *(v34 + 16)) | 1;
    v88 = v34;
    v89 = v34 + 32;
    v90 = 0;
    v91 = v35;
    v36 = sub_2300DB8E8();
    v37 = v33;
    if (v36 != 5 && v90 == v91 >> 1)
    {
      if (v36 <= 1u)
      {
        if (v36)
        {
          LOBYTE(v92) = 1;
          sub_230274040();
          sub_230310C28();
          sub_23030EB58();
          LOBYTE(v92) = 0;
          sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
          v52 = v64;
          v53 = v32;
          sub_230310CE8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186C8);
          LOBYTE(v92) = 1;
          sub_2302740E8();
          v60 = v74;
          sub_230310CE8();
          (*(v71 + 8))(v60, v53);
          (*(v79 + 8))(v9, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v48 = v52;
        }

        else
        {
          LOBYTE(v92) = 0;
          sub_230274094();
          sub_230310C28();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186C8);
          sub_2302740E8();
          sub_230310CE8();
          (*(v67 + 8))(v29, v28);
          (*(v79 + 8))(v9, v33);
          swift_unknownObjectRelease();
          v47 = v62;
          *v62 = v92;
          swift_storeEnumTagMultiPayload();
          v48 = v47;
        }
      }

      else
      {
        if (v36 == 2)
        {
          LOBYTE(v92) = 2;
          sub_230273FEC();
          sub_230310C28();
          v49 = v77;
          v50 = v79;
          type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day(0);
          sub_230271420(&qword_280C97780, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day);
          v54 = v63;
          sub_230310CE8();
          (*(v70 + 8))(v30, v31);
          (*(v50 + 8))(v9, v85);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v55 = v54;
          v56 = v87;
          sub_23027079C(v55, v87, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket);
          v57 = v86;
LABEL_18:
          sub_23027079C(v56, v49, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket);
          v45 = v57;
          return __swift_destroy_boxed_opaque_existential_1(v45);
        }

        v38 = v79;
        if (v36 == 3)
        {
          LOBYTE(v92) = 3;
          sub_230273F98();
          v39 = v33;
          sub_230310C28();
          sub_23030EB58();
          LOBYTE(v92) = 0;
          sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
          v40 = v65;
          v41 = v66;
          sub_230310CE8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186C8);
          LOBYTE(v92) = 1;
          sub_2302740E8();
          v58 = v75;
          sub_230310CE8();
          (*(v72 + 8))(v58, v41);
        }

        else
        {
          LOBYTE(v92) = 4;
          sub_230273E90();
          v39 = v33;
          sub_230310C28();
          sub_23030EB58();
          LOBYTE(v92) = 0;
          sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
          v40 = v68;
          v51 = v69;
          sub_230310CE8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB186C8);
          LOBYTE(v92) = 1;
          sub_2302740E8();
          v59 = v76;
          sub_230310CE8();
          (*(v73 + 8))(v59, v51);
        }

        (*(v38 + 8))(v9, v39);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v40;
      }

      v56 = v87;
      sub_23027079C(v48, v87, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket);
      v57 = v86;
      v49 = v77;
      goto LABEL_18;
    }

    v42 = sub_230310918();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
    *v44 = v78;
    sub_230310C38();
    sub_2303108F8();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    (*(v79 + 8))(v9, v37);
    swift_unknownObjectRelease();
  }

  v45 = v86;
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_230267DA8(uint64_t a1)
{
  v2 = sub_23027419C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230267DE4(uint64_t a1)
{
  v2 = sub_23027419C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ScheduledDateBucketsModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18708);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v17 = v1[2];
  v18 = v8;
  v22 = *(v1 + 24);
  v10 = v1[4];
  v15 = v1[5];
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23027419C();

  sub_230311448();
  v19 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18710);
  sub_2302741F0();
  sub_230310DF8();

  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v19 = v18;
    v20 = v17;
    v21 = v22;
    v23 = 1;
    sub_230271CCC();
    sub_230310D98();
    v19 = v11;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
    sub_2300E0EE4();
    sub_230310DF8();
    v19 = v12;
    v23 = 3;
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.ScheduledDateBucketsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18718);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23027419C();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18710);
  v23 = 0;
  sub_2302742A4();
  sub_230310CE8();
  v9 = v19;
  v23 = 1;
  sub_230271D20();
  sub_230310C88();
  v17 = v19;
  v18 = v9;
  v16 = v20;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
  v23 = 2;
  sub_2300DB820();
  sub_230310CE8();
  v15 = v19;
  v23 = 3;
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v11 = v19;
  v12 = v16;
  v13 = v17;
  *a2 = v18;
  *(a2 + 8) = v13;
  *(a2 + 16) = v12;
  *(a2 + 24) = v22;
  *(a2 + 32) = v15;
  *(a2 + 40) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void static REMRemindersListDataView.fetchScheduled_Flat(store:configuration:diffingAgainst:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation.Parameters(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2302706F4(a1, v9, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v10 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300D5538(v10, v9, &v27);
  sub_230270804(v9, type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation.Parameters);

  if (!v3)
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    v26[3] = v30;
    v26[4] = v31;
    v26[5] = v32;
    v25 = *(&v27 + 1);
    v33 = v27;
    v24 = v28;
    v23 = BYTE8(v28);
    v22 = BYTE9(v28);
    v11 = v29;
    v12 = v30;
    v20 = *(&v31 + 1);
    v13 = v31;
    v21 = *(&v32 + 1);
    v14 = v32;
    v15 = *(&v32 + 1);

    v16 = v20;

    sub_230061918(v26, &qword_27DB183E8);
    v17 = v25;
    *a3 = v33;
    *(a3 + 8) = v17;
    *(a3 + 16) = v24;
    *(a3 + 24) = v23;
    *(a3 + 25) = v22;
    *(a3 + 32) = v11;
    *(a3 + 48) = v12;
    *(a3 + 64) = v13;
    *(a3 + 72) = v16;
    v18 = v21;
    *(a3 + 80) = v14;
    *(a3 + 88) = v18;
  }
}

uint64_t sub_2302686A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7961646F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230268728(uint64_t a1)
{
  v2 = sub_2302743CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230268764(uint64_t a1)
{
  v2 = sub_2302743CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302687A0(uint64_t a1)
{
  v2 = sub_230274420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302687DC(uint64_t a1)
{
  v2 = sub_230274420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230268818()
{
  if (*v0)
  {
    return 0x737961776C61;
  }

  else
  {
    return 0x64656465654E7361;
  }
}

uint64_t sub_230268850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656465654E7361 && a2 == 0xE800000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737961776C61 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230268928(uint64_t a1)
{
  v2 = sub_230274378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230268964(uint64_t a1)
{
  v2 = sub_230274378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ScheduledTodayGroup.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18720);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v22 - v3;
  v4 = sub_23030EB58();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18728);
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18730);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230274378();
  sub_230311448();
  sub_2302706F4(v29, v11, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    v31 = 0;
    sub_230274420();
    sub_230310D48();
    (*(v6 + 8))(v8, v23);
  }

  else
  {
    v19 = v25;
    v18 = v26;
    (*(v25 + 32))(v30, v11, v26);
    v32 = 1;
    sub_2302743CC();
    v20 = v24;
    sub_230310D48();
    sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
    v21 = v28;
    sub_230310DF8();
    (*(v27 + 8))(v20, v21);
    (*(v19 + 8))(v30, v18);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t REMRemindersListDataView.ScheduledTodayGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18748);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x28223BE20](v3);
  v47 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18750);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18758);
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_230274378();
  v20 = v50;
  sub_230311428();
  if (!v20)
  {
    v50 = v13;
    v41 = v16;
    v42 = v18;
    v22 = v47;
    v21 = v48;
    v23 = sub_230310D08();
    v24 = (2 * *(v23 + 16)) | 1;
    v52 = v23;
    v53 = v23 + 32;
    v54 = 0;
    v55 = v24;
    v25 = sub_2300DB8E4();
    v26 = v10;
    if (v25 == 2 || v54 != v55 >> 1)
    {
      v34 = sub_230310918();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v36 = v50;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v49 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25)
      {
        v56 = 1;
        sub_2302743CC();
        v27 = v22;
        sub_230310C28();
        v28 = v49;
        v29 = v21;
        sub_23030EB58();
        sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
        v30 = v41;
        v31 = v45;
        sub_230310CE8();
        (*(v46 + 8))(v27, v31);
        (*(v28 + 8))(v12, v26);
        swift_unknownObjectRelease();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
        (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
        v33 = v42;
        sub_23027079C(v30, v42, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
      }

      else
      {
        v56 = 0;
        sub_230274420();
        sub_230310C28();
        v38 = v49;
        v29 = v21;
        (*(v44 + 8))(v9, v43);
        (*(v38 + 8))(v12, v26);
        swift_unknownObjectRelease();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
        v33 = v42;
        (*(*(v39 - 8) + 56))(v42, 1, 1, v39);
      }

      sub_23027079C(v33, v29, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v51);
}

void static REMRemindersListDataView.fetchScheduled_ByDay(store:includeTodayGroup:configuration:diffingAgainst:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2302706F4(a1, v12, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
  sub_2302706F4(a2, v12 + *(v10 + 28), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v13 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300D55D4(v13, v12, &v29);
  sub_230270804(v12, type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters);

  if (!v4)
  {
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v28 = v34;
    v25 = v34;
    v35 = *(&v29 + 1);
    v24 = v29;
    v26 = v30;
    v14 = *(&v30 + 1);
    v15 = v31;
    v16 = v32;
    v23 = v33;
    v17 = v34;

    v18 = v23;

    v19 = *(&v23 + 1);

    sub_230061918(v27, &qword_27DB18760);
    v20 = v35;
    *a4 = v24;
    *(a4 + 8) = v20;
    *(a4 + 16) = v26;
    *(a4 + 24) = v14;
    *(a4 + 32) = v15;
    *(a4 + 48) = v16;
    *(a4 + 64) = v18;
    v21 = v25;
    *(a4 + 72) = v19;
    *(a4 + 80) = v21;
  }
}

uint64_t sub_230269738()
{
  if (*v0)
  {
    return 0x746361706D6F63;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_23026976C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72616C75676572 && a2 == 0xE700000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746361706D6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230269848(uint64_t a1)
{
  v2 = sub_230274474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230269884(uint64_t a1)
{
  v2 = sub_230274474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302698C0(uint64_t a1)
{
  v2 = sub_2302744C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302698FC(uint64_t a1)
{
  v2 = sub_2302744C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230269938(uint64_t a1)
{
  v2 = sub_23027451C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230269974(uint64_t a1)
{
  v2 = sub_23027451C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ScheduledByDateBucketsStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18768);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18770);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18778);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230274474();
  sub_230311448();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2302744C8();
    v14 = v18;
    sub_230310D48();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23027451C();
    sub_230310D48();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t REMRemindersListDataView.ScheduledByDateBucketsStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18788);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18790);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18798);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230274474();
  v12 = v31;
  sub_230311428();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_230310D08();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_2300DB8E4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_230310918();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v22 = &type metadata for REMRemindersListDataView.ScheduledByDateBucketsStyle;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_2302744C8();
        sub_230310C28();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23027451C();
        sub_230310C28();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void static REMRemindersListDataView.fetchScheduled_ByDateBuckets(store:style:today:configuration:diffingAgainst:)(_BYTE *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v14 = *(v11 + 28);
  v15 = sub_23030EB58();
  (*(*(v15 - 8) + 16))(&v13[v14], a2, v15);
  sub_2302706F4(a3, &v13[*(v11 + 32)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  *v13 = a1;
  v16 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation()) initWithFetchResultTokenToDiffAgainst_];
  v17 = v39;
  sub_2300D6020(v16, v13, &v33);
  sub_230270804(v13, type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters);

  if (!v17)
  {
    v32[0] = v33;
    v32[1] = v34;
    v32[2] = v35;
    v32[3] = v36;
    v32[4] = v37;
    v32[5] = v38;
    v31 = *(&v33 + 1);
    v39 = v33;
    v30 = v34;
    v29 = BYTE8(v34);
    v18 = v35;
    v19 = v36;
    v27 = *(&v37 + 1);
    v20 = v37;
    v28 = *(&v38 + 1);
    v21 = v38;
    v22 = *(&v38 + 1);

    v23 = v27;

    sub_230061918(v32, &qword_27DB187A0);
    v24 = v31;
    *a5 = v39;
    *(a5 + 8) = v24;
    *(a5 + 16) = v30;
    *(a5 + 24) = v29;
    *(a5 + 32) = v18;
    *(a5 + 48) = v19;
    *(a5 + 64) = v20;
    *(a5 + 72) = v23;
    v25 = v28;
    *(a5 + 80) = v21;
    *(a5 + 88) = v25;
  }
}

uint64_t static REMRemindersListDataView.fetchScheduled(store:sortingStyle:showCompleted:countCompleted:remindersPrefetch:alwaysIncludeTodayGroup:diffingAgainst:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v39 = a7;
  v38 = a6;
  v40 = a1;
  v37 = a8;
  v12 = type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v19 = (Configuration - 8);
  MEMORY[0x28223BE20](Configuration);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  sub_2302706F4(a3, &v21[v19[7]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(a5, &v21[v19[9]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *v21 = a2;
  v21[v19[8]] = a4;
  v21[v19[10]] = 2;
  if (v38)
  {
    sub_23030EB48();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
  (*(*(v23 - 8) + 56))(v17, v22, 1, v23);
  sub_2302706F4(v17, v14, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
  sub_2302706F4(v21, v14 + *(v12 + 20), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v24 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation());
  v25 = [v24 initWithFetchResultTokenToDiffAgainst_];
  v26 = v49;
  sub_2300D55D4(v25, v14, &v43);

  sub_230270804(v14, type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters);
  sub_230270804(v17, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
  if (v26)
  {
    return sub_230270804(v21, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  }

  sub_230270804(v21, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v41[0] = v43;
  v41[1] = v44;
  v41[2] = v45;
  v41[3] = v46;
  v41[4] = v47;
  v42 = v48;
  v39 = 0;
  v28 = v48;
  v49 = *(&v43 + 1);
  v29 = v43;
  LODWORD(v40) = v44;
  v30 = *(&v44 + 1);
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;

  result = sub_230061918(v41, &qword_27DB18760);
  v35 = v37;
  v36 = v49;
  *v37 = v29;
  v35[1] = v36;
  *(v35 + 16) = v40;
  v35[3] = v30;
  *(v35 + 2) = v31;
  *(v35 + 3) = v32;
  *(v35 + 4) = v33;
  v35[10] = v28;
  return result;
}

uint64_t _s19ReminderKitInternal24REMRemindersListDataViewO10DatesModelV5GroupV4date10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23030EB58();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23026A900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23030EB58();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = a3(0);
  *(a4 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_23026A984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23026AA68(uint64_t a1)
{
  v2 = sub_230274590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026AAA4(uint64_t a1)
{
  v2 = sub_230274590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CompletedDateBucketsModel.Day.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230274590();
  sub_230311448();
  v12 = 0;
  sub_23030EB58();
  sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
  sub_230310DF8();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
    sub_230271A74();
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMRemindersListDataView.CompletedDateBucketsModel.Day.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_23030EB58();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187B8);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230274590();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
  v15 = v26;
  v16 = v24;
  sub_230310CE8();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18270);
  v28 = 1;
  sub_230271B4C();
  sub_230310CE8();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_2302706F4(v18, v22, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_230270804(v18, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day);
}

uint64_t sub_23026B090()
{
  v1 = *v0;
  v2 = 7954788;
  v3 = 0x7269685474736170;
  v4 = 0x68746E6F6DLL;
  if (v1 != 3)
  {
    v4 = 1918985593;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6576655374736170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23026B130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230283C10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23026B158(uint64_t a1)
{
  v2 = sub_230274604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026B194(uint64_t a1)
{
  v2 = sub_230274604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23026B1D0(uint64_t a1)
{
  v2 = sub_23027485C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026B20C(uint64_t a1)
{
  v2 = sub_23027485C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23026B248(uint64_t a1)
{
  v2 = sub_230274760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026B284(uint64_t a1)
{
  v2 = sub_230274760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23026B2C0(uint64_t a1)
{
  v2 = sub_230274808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026B2FC(uint64_t a1)
{
  v2 = sub_230274808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23026B338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1937334628 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23026B41C(uint64_t a1)
{
  v2 = sub_2302747B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026B458(uint64_t a1)
{
  v2 = sub_2302747B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23026B494()
{
  if (*v0)
  {
    return 1937334628;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_23026B4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000230345A70 == a2 || (sub_230311048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1937334628 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_230311048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_23026B5B4(uint64_t a1)
{
  v2 = sub_230274658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026B5F0(uint64_t a1)
{
  v2 = sub_230274658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CompletedDateBucketsModel.Bucket.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187C0);
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v69 = &v60 - v3;
  v63 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
  MEMORY[0x28223BE20](v63);
  v70 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187C8);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5);
  v66 = &v60 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187D0);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v60 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187D8);
  v61 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v60 - v8;
  v9 = sub_23030EB58();
  v10 = *(v9 - 8);
  v79 = v9;
  v80 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v73 = &v60 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187E0);
  v60 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v17 = &v60 - v16;
  v18 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187E8);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v25 = &v60 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230274604();
  v84 = v25;
  sub_230311448();
  sub_2302706F4(v81, v23, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v81 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18828) + 48)];
      v42 = v79;
      v41 = v80;
      v43 = v74;
      (*(v80 + 32))(v74, v23, v79);
      LOBYTE(v87) = 2;
      sub_2302747B4();
      v44 = v62;
      v45 = v84;
      v46 = v85;
      sub_230310D48();
      LOBYTE(v87) = 0;
      sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
      v47 = v65;
      v48 = v82;
      sub_230310DF8();
      if (v48)
      {

        (*(v64 + 8))(v44, v47);
        (*(v41 + 8))(v43, v42);
        return (*(v83 + 8))(v45, v46);
      }

      v87 = v81;
      v86 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18810);
      sub_2302746AC();
      sub_230310DF8();
      (*(v64 + 8))(v44, v47);
      (*(v41 + 8))(v74, v42);
    }

    else
    {
      v28 = v84;
      v27 = v85;
      v30 = v79;
      v29 = v80;
      if (EnumCaseMultiPayload != 3)
      {
        v49 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187F8) + 48)];
        v50 = v70;
        sub_23027079C(v23, v70, type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate);
        LOBYTE(v87) = 4;
        sub_230274658();
        v51 = v69;
        sub_230310D48();
        LOBYTE(v87) = 0;
        sub_230271420(&qword_27DB18808, type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate);
        v52 = v72;
        v53 = v82;
        sub_230310DF8();
        if (v53)
        {

          (*(v71 + 8))(v51, v52);
          sub_230270804(v50, type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate);
          return (*(v83 + 8))(v28, v27);
        }

        v87 = v49;
        v86 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18810);
        sub_2302746AC();
        sub_230310DF8();
        (*(v71 + 8))(v51, v52);
        sub_230270804(v50, type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate);
        (*(v83 + 8))(v28, v27);
      }

      v81 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18828) + 48)];
      v31 = v75;
      (*(v29 + 32))(v75, v23, v30);
      LOBYTE(v87) = 3;
      sub_230274760();
      v32 = v66;
      sub_230310D48();
      LOBYTE(v87) = 0;
      sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
      v33 = v68;
      v34 = v82;
      sub_230310DF8();
      if (v34)
      {

        (*(v67 + 8))(v32, v33);
        (*(v29 + 8))(v31, v30);
        return (*(v83 + 8))(v28, v27);
      }

      v87 = v81;
      v86 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18810);
      sub_2302746AC();
      sub_230310DF8();
      (*(v67 + 8))(v32, v33);
      (*(v29 + 8))(v75, v30);
    }

    (*(v83 + 8))(v84, v85);
  }

  v36 = v76;
  v35 = v77;
  v37 = v78;
  if (!EnumCaseMultiPayload)
  {
    sub_23027079C(v23, v20, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day);
    LOBYTE(v87) = 0;
    sub_23027485C();
    v38 = v84;
    v39 = v85;
    sub_230310D48();
    sub_230271420(&qword_27DB18820, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day);
    sub_230310DF8();
    (*(v60 + 8))(v17, v36);
    sub_230270804(v20, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day);
    return (*(v83 + 8))(v38, v39);
  }

  v54 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18828) + 48)];
  v56 = v79;
  v55 = v80;
  v57 = v73;
  (*(v80 + 32))(v73, v23, v79);
  LOBYTE(v87) = 1;
  sub_230274808();
  v58 = v84;
  sub_230310D48();
  LOBYTE(v87) = 0;
  sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
  v59 = v82;
  sub_230310DF8();
  if (!v59)
  {
    v87 = v54;
    v86 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18810);
    sub_2302746AC();
    sub_230310DF8();
    (*(v61 + 8))(v35, v37);
    (*(v55 + 8))(v73, v56);
    (*(v83 + 8))(v84, v85);
  }

  (*(v61 + 8))(v35, v37);
  (*(v55 + 8))(v57, v56);
  return (*(v83 + 8))(v58, v85);
}

uint64_t REMRemindersListDataView.CompletedDateBucketsModel.Bucket.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18850);
  v81 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v83 = &v67 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18858);
  v5 = *(v4 - 8);
  v79 = v4;
  v80 = v5;
  MEMORY[0x28223BE20](v4);
  v90 = &v67 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18860);
  v77 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v67 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18868);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v82 = &v67 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18870);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v86 = &v67 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18878);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v11 = &v67 - v10;
  v84 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket(0);
  v12 = MEMORY[0x28223BE20](v84);
  v74 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v67 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v67 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v67 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v67 - v26;
  v28 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_230274604();
  v29 = v93;
  sub_230311428();
  if (v29)
  {
    goto LABEL_12;
  }

  v68 = v25;
  v93 = 0;
  v30 = v86;
  v71 = v22;
  v69 = v19;
  v70 = v16;
  v32 = v88;
  v31 = v89;
  v33 = v90;
  v67 = v27;
  v34 = v91;
  v35 = v87;
  v36 = sub_230310D08();
  v37 = (2 * *(v36 + 16)) | 1;
  v94 = v36;
  v95 = v36 + 32;
  v96 = 0;
  v97 = v37;
  v38 = sub_2300DB8E8();
  if (v38 == 5 || v96 != v97 >> 1)
  {
    v45 = sub_230310918();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
    *v47 = v84;
    sub_230310C38();
    sub_2303108F8();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
  }

  else
  {
    if (v38 <= 1u)
    {
      if (v38)
      {
        v98 = 1;
        sub_230274808();
        v62 = v93;
        sub_230310C28();
        v40 = v85;
        if (v62)
        {
LABEL_24:
          (*(v40 + 8))(v11, v35);
          goto LABEL_11;
        }

        sub_23030EB58();
        v98 = 0;
        sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
        v63 = v76;
        sub_230310CE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18828);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18810);
        v98 = 1;
        sub_2302748B0();
        v65 = v82;
        sub_230310CE8();
        (*(v75 + 8))(v65, v63);
        (*(v40 + 8))(v11, v35);
        swift_unknownObjectRelease();
        v66 = v71;
        swift_storeEnumTagMultiPayload();
        v57 = v66;
        v54 = v92;
        v55 = v34;
LABEL_26:
        v56 = v67;
        goto LABEL_27;
      }

      v98 = 0;
      sub_23027485C();
      v50 = v93;
      sub_230310C28();
      v51 = v85;
      if (!v50)
      {
        type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day(0);
        sub_230271420(&qword_27DB18890, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day);
        v52 = v68;
        v53 = v73;
        sub_230310CE8();
        (*(v72 + 8))(v30, v53);
        (*(v51 + 8))(v11, v35);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v54 = v92;
        v55 = v34;
        v56 = v67;
        v57 = v52;
LABEL_27:
        sub_23027079C(v57, v56, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket);
        sub_23027079C(v56, v55, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket);
        v48 = v54;
        return __swift_destroy_boxed_opaque_existential_1(v48);
      }

      goto LABEL_21;
    }

    if (v38 != 2)
    {
      v39 = v93;
      if (v38 == 3)
      {
        v98 = 3;
        sub_230274760();
        sub_230310C28();
        v40 = v85;
        if (!v39)
        {
          v41 = v33;
          v42 = sub_23030EB58();
          v98 = 0;
          sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
          v43 = v70;
          v44 = v79;
          sub_230310CE8();
          v93 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18828);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18810);
          v98 = 1;
          sub_2302748B0();
          sub_230310CE8();
          (*(v80 + 8))(v41, v44);
          (*(v40 + 8))(v11, v35);
          swift_unknownObjectRelease();
LABEL_25:
          swift_storeEnumTagMultiPayload();
          v57 = v43;
          v55 = v91;
          v54 = v92;
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      v98 = 4;
      sub_230274658();
      v59 = v39;
      sub_230310C28();
      v51 = v85;
      if (!v59)
      {
        type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate(0);
        v98 = 0;
        sub_230271420(&qword_27DB18880, type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate);
        v60 = v74;
        v61 = v78;
        sub_230310CE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB187F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18810);
        v98 = 1;
        sub_2302748B0();
        v64 = v83;
        sub_230310CE8();
        (*(v81 + 8))(v64, v61);
        (*(v51 + 8))(v11, v35);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v57 = v60;
        v55 = v91;
        v54 = v92;
        goto LABEL_26;
      }

LABEL_21:
      (*(v51 + 8))(v11, v35);
      goto LABEL_11;
    }

    v98 = 2;
    sub_2302747B4();
    v58 = v93;
    sub_230310C28();
    if (!v58)
    {
      sub_23030EB58();
      v98 = 0;
      sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
      v43 = v69;
      sub_230310CE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18828);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18810);
      v98 = 1;
      sub_2302748B0();
      sub_230310CE8();
      (*(v77 + 8))(v32, v31);
      (*(v85 + 8))(v11, v35);
      swift_unknownObjectRelease();
      goto LABEL_25;
    }
  }

  (*(v85 + 8))(v11, v35);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v48 = v92;
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

void __swiftcall REMRemindersListDataView.CompletedDateBucketsModel.init(buckets:remindersCount:prefetchedReminders:prefetchedDueReminders:)(ReminderKitInternal::REMRemindersListDataView::CompletedDateBucketsModel *__return_ptr retstr, Swift::OpaquePointer buckets, ReminderKitInternal::REMRemindersListDataView::CountByCompleted_optional remindersCount, Swift::OpaquePointer prefetchedReminders, Swift::OpaquePointer prefetchedDueReminders)
{
  v5 = *(remindersCount.value.completed + 16);
  retstr->buckets = buckets;
  retstr->remindersCount.value = *remindersCount.value.completed;
  retstr->remindersCount.is_nil = v5;
  retstr->prefetchedReminders._rawValue = remindersCount.value.incomplete;
  retstr->prefetchedDueReminders._rawValue = *&remindersCount.is_nil;
}

unint64_t sub_23026D41C()
{
  v1 = 0x7374656B637562;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x7265646E696D6572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23026D4A8(uint64_t a1)
{
  v2 = sub_230274964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026D4E4(uint64_t a1)
{
  v2 = sub_230274964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CompletedDateBucketsModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18898);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v17 = v1[2];
  v18 = v8;
  v22 = *(v1 + 24);
  v10 = v1[4];
  v15 = v1[5];
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230274964();

  sub_230311448();
  v19 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188A8);
  sub_2302749B8();
  sub_230310DF8();

  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v19 = v18;
    v20 = v17;
    v21 = v22;
    v23 = 1;
    sub_230271CCC();
    sub_230310D98();
    v19 = v11;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
    sub_2300E0EE4();
    sub_230310DF8();
    v19 = v12;
    v23 = 3;
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMRemindersListDataView.CompletedDateBucketsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230274964();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188A8);
  v23 = 0;
  sub_230274A6C();
  sub_230310CE8();
  v9 = v19;
  v23 = 1;
  sub_230271D20();
  sub_230310C88();
  v17 = v19;
  v18 = v9;
  v16 = v20;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14F78);
  v23 = 2;
  sub_2300DB820();
  sub_230310CE8();
  v15 = v19;
  v23 = 3;
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v11 = v19;
  v12 = v16;
  v13 = v17;
  *a2 = v18;
  *(a2 + 8) = v13;
  *(a2 + 16) = v12;
  *(a2 + 24) = v22;
  *(a2 + 32) = v15;
  *(a2 + 40) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void static REMRemindersListDataView.fetchCompleted_ByDateBuckets(store:today:calendar:configuration:diffingAgainst:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030EB58();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = *(v12 + 28);
  v17 = sub_23030EE08();
  (*(*(v17 - 8) + 16))(&v14[v16], a2, v17);
  sub_2302706F4(a3, &v14[*(v12 + 32)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v18 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300D6A7C(v18, v14, &v34);
  sub_230270804(v14, type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters);

  if (!v5)
  {
    v33[0] = v34;
    v33[1] = v35;
    v33[2] = v36;
    v33[3] = v37;
    v33[4] = v38;
    v33[5] = v39;
    v32 = *(&v34 + 1);
    v40 = v34;
    v31 = v35;
    v30 = BYTE8(v35);
    v19 = v36;
    v20 = v37;
    v28 = *(&v38 + 1);
    v21 = v38;
    v29 = *(&v39 + 1);
    v22 = v39;
    v23 = *(&v39 + 1);

    v24 = v28;

    sub_230061918(v33, &qword_27DB188D8);
    v25 = v32;
    *a5 = v40;
    *(a5 + 8) = v25;
    *(a5 + 16) = v31;
    *(a5 + 24) = v30;
    *(a5 + 32) = v19;
    *(a5 + 48) = v20;
    *(a5 + 64) = v21;
    *(a5 + 72) = v24;
    v26 = v29;
    *(a5 + 80) = v22;
    *(a5 + 88) = v26;
  }
}

uint64_t static REMRemindersListDataView.fetchRecentlyDeleted(store:accountID:deletedDaysFromNow:countCompleted:remindersPrefetch:diffingAgainst:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v57 = a6;
  v55 = a5;
  LODWORD(v56) = a4;
  v60 = a3;
  v49 = a2;
  v58 = a1;
  v48 = a7;
  v51 = sub_23030EBB8();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters(0);
  MEMORY[0x28223BE20](v53);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_23030EDE8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030EE08();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v19 - 8);
  v69 = &v47 - v20;
  v54 = sub_23030EB58();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030EB48();
  sub_23030EDC8();
  result = (*(v12 + 104))(v14, *MEMORY[0x277CC9968], v11);
  if ((v60 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v60 = v22;
    sub_23030EDA8();
    (*(v12 + 8))(v14, v11);
    (*(v16 + 8))(v18, v15);
    v24 = type metadata accessor for REMObjectID_Codable();
    v25 = objc_allocWithZone(v24);
    v26 = v49;
    v27 = [v26 uuid];
    sub_23030EBA8();

    v28 = sub_23030EB88();
    (*(v50 + 8))(v8, v51);
    v29 = [v26 entityName];
    if (!v29)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v29 = sub_23030F8B8();
    }

    v68.receiver = v25;
    v68.super_class = v24;
    v30 = objc_msgSendSuper2(&v68, sel_initWithUUID_entityName_, v28, v29);

    v31 = v53;
    v32 = v69;
    sub_230055F74(v69, v10 + *(v53 + 20), &unk_27DB15AA0);
    sub_2302706F4(v55, v10 + *(v31 + 24), type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    *v10 = v30;
    *(v10 + *(v31 + 28)) = v56 & 1;
    v33 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation());
    v34 = [v33 initWithFetchResultTokenToDiffAgainst_];
    v35 = v59;
    sub_2300D74D8(v34, v10, &v62);
    v36 = (v52 + 8);
    if (v35)
    {

      sub_230270804(v10, type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters);
      sub_230061918(v32, &unk_27DB15AA0);
      return (*v36)(v60, v54);
    }

    else
    {

      sub_230270804(v10, type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters);
      sub_230061918(v32, &unk_27DB15AA0);
      (*v36)(v60, v54);
      v61[0] = v62;
      v61[1] = v63;
      v61[2] = v64;
      v61[3] = v65;
      v61[4] = v66;
      v61[5] = v67;
      v69 = *(&v62 + 1);
      v37 = v62;
      v60 = v63;
      LODWORD(v59) = BYTE8(v63);
      LODWORD(v58) = BYTE9(v63);
      v38 = v64;
      v39 = v65;
      v56 = *(&v66 + 1);
      v40 = v66;
      v57 = *(&v67 + 1);
      v41 = v67;
      v42 = *(&v67 + 1);

      v43 = v56;

      result = sub_230061918(v61, &qword_27DB183E8);
      v44 = v48;
      v45 = v69;
      *v48 = v37;
      v44[1] = v45;
      v44[2] = v60;
      *(v44 + 24) = v59;
      *(v44 + 25) = v58;
      *(v44 + 2) = v38;
      *(v44 + 3) = v39;
      v44[8] = v40;
      v44[9] = v43;
      v46 = v57;
      v44[10] = v41;
      v44[11] = v46;
    }
  }

  return result;
}

uint64_t sub_23026E554(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461447265746661;
  v4 = 0xE900000000000065;
  v5 = 0x800000023033F990;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000023033F990;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1702060386;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x7461447265746661;
  if (*a2 == 1)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1702060386;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230311048();
  }

  return v11 & 1;
}

uint64_t sub_23026E650()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026E6F4()
{
  sub_23030F9C8();
}

uint64_t sub_23026E784()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026E824@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230283F44();
  *a1 = result;
  return result;
}

void sub_23026E854(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x7461447265746661;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000023033F990;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702060386;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23026E8B4()
{
  v1 = 0x7461447265746661;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_23026E910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230283F44();
  *a1 = result;
  return result;
}

uint64_t sub_23026E938(uint64_t a1)
{
  v2 = sub_230271378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026E974(uint64_t a1)
{
  v2 = sub_230271378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23026E9BC()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026EA6C()
{
  sub_23030F9C8();
}

uint64_t sub_23026EB08()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026EBB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230283FE4();
  *a1 = result;
  return result;
}

void sub_23026EBE4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6710895;
  v4 = 0xE500000000000000;
  v5 = 0x7265746661;
  if (*v1 != 2)
  {
    v5 = 0x73696C776F6C6C61;
    v4 = 0xE900000000000074;
  }

  if (*v1)
  {
    v3 = 28271;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23026ED00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6572694474726F73;
  }

  else
  {
    v3 = 1702060386;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED00006E6F697463;
  }

  if (*a2)
  {
    v5 = 0x6572694474726F73;
  }

  else
  {
    v5 = 1702060386;
  }

  if (*a2)
  {
    v6 = 0xED00006E6F697463;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_23026EDAC()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026EE34()
{
  sub_23030F9C8();
}

uint64_t sub_23026EEA8()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026EF2C@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_23026EF8C(uint64_t *a1@<X8>)
{
  v2 = 1702060386;
  if (*v1)
  {
    v2 = 0x6572694474726F73;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED00006E6F697463;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23026EFD0()
{
  if (*v0)
  {
    return 0x6572694474726F73;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_23026F010@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_23026F074(uint64_t a1)
{
  v2 = sub_230270E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026F0B0(uint64_t a1)
{
  v2 = sub_230270E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23026F100()
{
  sub_23030F9C8();
}

uint64_t sub_23026F200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230284030();
  *a1 = result;
  return result;
}

void sub_23026F230(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE800000000000000;
  v6 = 0x797469726F697270;
  v7 = 0xEC00000065746144;
  v8 = 0x6E6F697461657263;
  if (v2 != 4)
  {
    v8 = 0x656C746974;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C61756E616DLL;
  if (v2 != 1)
  {
    v10 = 0x4479616C70736964;
    v9 = 0xEB00000000657461;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_23026F3B4()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026F470()
{
  sub_23030F9C8();
}

uint64_t sub_23026F518()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026F5D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23028407C();
  *a1 = result;
  return result;
}

void sub_23026F600(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1702060386;
  v4 = 0xE900000000000065;
  v5 = 0x7461446E69676562;
  if (*v1 != 2)
  {
    v5 = 0x65746144646E65;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x746E756F63;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23026F678()
{
  v1 = 1702060386;
  v2 = 0x7461446E69676562;
  if (*v0 != 2)
  {
    v2 = 0x65746144646E65;
  }

  if (*v0)
  {
    v1 = 0x746E756F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23026F6EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23028407C();
  *a1 = result;
  return result;
}

uint64_t sub_23026F714(uint64_t a1)
{
  v2 = sub_230274B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23026F750(uint64_t a1)
{
  v2 = sub_230274B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23026F798()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026F864()
{
  sub_23030F9C8();
}

uint64_t sub_23026F91C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23026F9E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23028411C();
  *a1 = result;
  return result;
}

void sub_23026FA14(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xEF6465747265736ELL;
  v5 = 0x4964657461647075;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000023033FA00;
  }

  if (*v1)
  {
    v3 = 0x6C616974696E69;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t REMRemindersListDataView.RemindersPrefetch.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15AB0);
  v3 = MEMORY[0x28223BE20](v47);
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - v5;
  v52 = sub_23030EB58();
  v48 = *(v52 - 8);
  v6 = MEMORY[0x28223BE20](v52);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E0);
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_230274B20();
  v18 = v54;
  sub_230311428();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v54 = v10;
  v45 = v8;
  v19 = v50;
  v20 = v51;
  v60 = 0;
  sub_230274B74();
  sub_230310CE8();
  if (v61 <= 1u)
  {
    if (v61)
    {
      v55 = 1;
      v23 = sub_230310CC8();
      v19[1](v13, v11);
      *v16 = v23;
    }

    else
    {
      v19[1](v13, v11);
    }

    goto LABEL_10;
  }

  if (v61 == 2)
  {
    v56 = 1;
    v22 = sub_230310CC8();
    v19[1](v13, v11);
    *v16 = v22;
LABEL_10:
    v24 = v49;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_23027079C(v16, v24, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v59 = 1;
  v44 = v11;
  v25 = v13;
  v43 = sub_230310CC8();
  v58 = 2;
  sub_230271420(&qword_280C9B738, MEMORY[0x277CC9578]);
  sub_230310CE8();
  v57 = 3;
  sub_230310CE8();
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
  v26 = v16;
  *v16 = v43;
  sub_230271420(&qword_280C9C418, MEMORY[0x277CC9578]);
  v27 = v54;
  v28 = v45;
  v29 = sub_23030F7F8();
  result = (v19[1])(v25, v44);
  if (v29)
  {
    v30 = v28;
    v41 = v26;
    v50 = (v26 + v42);
    v31 = v48;
    v32 = *(v48 + 32);
    v33 = v46;
    v34 = v27;
    v35 = v52;
    v32(v46, v34, v52);
    v32((v33 + *(v47 + 48)), v30, v35);
    v36 = v32;
    v44 = v32;
    v37 = v20;
    sub_230055F74(v33, v20, &qword_27DB15AB0);
    v38 = v47;
    v45 = *(v47 + 48);
    v36(v50, v37, v35);
    v54 = *(v31 + 8);
    v54(&v45[v37], v35);
    sub_230112AF4(v33, v37, &qword_27DB15AB0);
    v39 = *(v38 + 48);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v44(v50 + *(v40 + 36), v37 + v39, v35);
    v54(v37, v35);
    v24 = v49;
    v16 = v41;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t REMRemindersListDataView.RemindersPrefetch.encode(to:)(void *a1)
{
  v2 = v1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188F0);
  v20 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230274B20();
  sub_230311448();
  sub_2302706F4(v2, v8, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8);
      sub_230112AF4(&v8[*(v14 + 48)], v5, &qword_27DB15A78);
      v32 = 3;
      v31 = 0;
      sub_230274BC8();
      v15 = v19;
      sub_230310DF8();
      if (!v15)
      {
        v30 = 1;
        sub_230310DD8();
        v29 = 2;
        sub_23030EB58();
        sub_230271420(&qword_280C9B760, MEMORY[0x277CC9578]);
        sub_230310DF8();
        v28 = 3;
        sub_230310DF8();
      }

      sub_230061918(v5, &qword_27DB15A78);
    }

    else
    {
      v21 = 0;
      sub_230274BC8();
      sub_230310DF8();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v27 = 2;
      v26 = 0;
      sub_230274BC8();
      v16 = v19;
      sub_230310DF8();
      if (v16)
      {
        return (*(v20 + 8))(v11, v9);
      }

      v25 = 1;
    }

    else
    {
      v24 = 1;
      v23 = 0;
      sub_230274BC8();
      v13 = v19;
      sub_230310DF8();
      if (v13)
      {
        return (*(v20 + 8))(v11, v9);
      }

      v22 = 1;
    }

    sub_230310DD8();
  }

  return (*(v20 + 8))(v11, v9);
}

uint64_t sub_2302706F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23027079C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_230270804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_230270864(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x231912470](a1, a2, v7);
      sub_23004CBA4(0, &qword_280C9C478);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_23004CBA4(0, &qword_280C9C478);
    if (sub_2303106B8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2303106C8();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_230310438();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_230310448();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

BOOL _s19ReminderKitInternal24REMRemindersListDataViewO11SectionLiteV0H4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  if (!*a1)
  {
    if (!v8)
    {
      sub_23019E9DC(0);
      v12 = 0;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (!v8)
  {
LABEL_13:
    sub_23019E990(*a2);
    sub_23019E990(v2);
    sub_23019E9DC(v2);
    v13 = v8;
LABEL_15:
    sub_23019E9DC(v13);
    return 0;
  }

  sub_23004CBA4(0, &qword_280C9B980);
  sub_23019E990(v8);
  sub_23019E990(v2);
  if ((sub_230310448() & 1) == 0 || (v3 != v7 || v5 != v9) && (sub_230311048() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!v6)
  {

    sub_23019E9DC(v2);
    sub_23019E9DC(v8);
    if (!v11)
    {
      return 1;
    }

    return 0;
  }

  if (!v11)
  {
LABEL_14:
    sub_23019E9DC(v2);
    v13 = v8;
    goto LABEL_15;
  }

  if (v4 == v10 && v6 == v11)
  {
    sub_23019E9DC(v2);
    v12 = v8;
LABEL_18:
    sub_23019E9DC(v12);
    return 1;
  }

  v15 = sub_230311048();
  sub_23019E9DC(v2);
  sub_23019E9DC(v8);
  return (v15 & 1) != 0;
}

uint64_t _s19ReminderKitInternal24REMRemindersListDataViewO12SortingStyleO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    if (!v4)
    {
      if (v3 >= 0x20)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    }

    if ((v3 & 0xE0) == 0x20)
    {
      return ((v3 ^ v2) & 1) == 0;
    }
  }

  else
  {
    if (v4 == 2)
    {
      if ((v3 & 0xE0) != 0x40)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    }

    if (v4 == 3)
    {
      if ((v3 & 0xE0) != 0x60)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    }

    if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_230270E58()
{
  result = qword_280C9A770;
  if (!qword_280C9A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A770);
  }

  return result;
}

unint64_t sub_230270EAC()
{
  result = qword_280C97C50;
  if (!qword_280C97C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C50);
  }

  return result;
}

unint64_t sub_230270F00()
{
  result = qword_280C97B38;
  if (!qword_280C97B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97B38);
  }

  return result;
}

unint64_t sub_230270F54()
{
  result = qword_280C9A758;
  if (!qword_280C9A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A758);
  }

  return result;
}

unint64_t sub_230270FA8()
{
  result = qword_280C99058;
  if (!qword_280C99058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99058);
  }

  return result;
}

uint64_t _s19ReminderKitInternal24REMRemindersListDataViewO13ShowCompletedO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EB58();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18CC8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = *(v14 + 56);
  sub_2302706F4(a1, &v24 - v15, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_2302706F4(a2, &v16[v17], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2302706F4(v16, v10, type metadata accessor for REMRemindersListDataView.ShowCompleted);
      v19 = *v10;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_13;
      }

      v20 = sub_2300A702C(v19, *&v16[v17]);
    }

    else
    {
      sub_2302706F4(v16, v12, type metadata accessor for REMRemindersListDataView.ShowCompleted);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v25 + 8))(v12, v4);
LABEL_13:
        sub_230061918(v16, &qword_27DB18CC8);
        v20 = 0;
        return v20 & 1;
      }

      v21 = v25;
      (*(v25 + 32))(v6, &v16[v17], v4);
      v20 = sub_23030EB08();
      v22 = *(v21 + 8);
      v22(v6, v4);
      v22(v12, v4);
    }

    sub_230270804(v16, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    return v20 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_230270804(v16, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v20 = 1;
  return v20 & 1;
}

unint64_t sub_230271378()
{
  result = qword_280C9A730;
  if (!qword_280C9A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A730);
  }

  return result;
}

unint64_t sub_2302713CC()
{
  result = qword_280C97C20;
  if (!qword_280C97C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C20);
  }

  return result;
}

uint64_t sub_230271420(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_230271468()
{
  result = qword_280C9A718;
  if (!qword_280C9A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A718);
  }

  return result;
}

unint64_t sub_2302714BC()
{
  result = qword_280C9A4E8;
  if (!qword_280C9A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A4E8);
  }

  return result;
}

unint64_t sub_230271510()
{
  result = qword_280C9A748;
  if (!qword_280C9A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A748);
  }

  return result;
}

unint64_t sub_230271564()
{
  result = qword_280C9A740;
  if (!qword_280C9A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A740);
  }

  return result;
}

unint64_t sub_2302715B8()
{
  result = qword_280C97C48;
  if (!qword_280C97C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C48);
  }

  return result;
}

unint64_t sub_23027160C()
{
  result = qword_280C97C38;
  if (!qword_280C97C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C38);
  }

  return result;
}

uint64_t _s19ReminderKitInternal24REMRemindersListDataViewO21HashtagLabelPredicateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_2302727E4(*a2, *(a2 + 8), 0);
      sub_2302727E4(v3, v2, 0);
      if (sub_2300A7274(v3, v6))
      {
        v8 = sub_2300A7274(v2, v5);
        sub_230276494(v3, v2, 0);
        v9 = v6;
        v10 = v5;
        v11 = 0;
        goto LABEL_9;
      }

      sub_230276494(v3, v2, 0);
      v17 = v6;
      v18 = v5;
      v19 = 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      sub_2302727E4(*a2, *(a2 + 8), 1u);
      sub_2302727E4(v3, v2, 1u);
      if (sub_2300A7274(v3, v6))
      {
        v8 = sub_2300A7274(v2, v5);
        sub_230276494(v3, v2, 1u);
        v9 = v6;
        v10 = v5;
        v11 = 1;
LABEL_9:
        sub_230276494(v9, v10, v11);
        return v8 & 1;
      }

      sub_230276494(v3, v2, 1u);
      v17 = v6;
      v18 = v5;
      v19 = 1;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!(v3 | v2))
  {
    if (v7 == 2 && (v5 | v6) == 0)
    {
      sub_230276494(*a1, v2, 2u);
      sub_230276494(0, 0, 2u);
      return 1;
    }

    goto LABEL_24;
  }

  if (v7 != 2 || v6 != 1 || v5 != 0)
  {
LABEL_24:
    sub_2302727E4(*a2, *(a2 + 8), v7);
    sub_2302727E4(v3, v2, v4);
    sub_230276494(v3, v2, v4);
    v17 = v6;
    v18 = v5;
    v19 = v7;
LABEL_25:
    sub_230276494(v17, v18, v19);
    return 0;
  }

  sub_230276494(*a1, v2, 2u);
  v15 = 1;
  sub_230276494(1, 0, 2u);
  return v15;
}

unint64_t sub_23027187C()
{
  result = qword_27DB18218;
  if (!qword_27DB18218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18218);
  }

  return result;
}

unint64_t sub_2302718D0()
{
  result = qword_27DB18220;
  if (!qword_27DB18220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18220);
  }

  return result;
}

unint64_t sub_230271924()
{
  result = qword_27DB18228;
  if (!qword_27DB18228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18228);
  }

  return result;
}

unint64_t sub_230271978()
{
  result = qword_27DB18230;
  if (!qword_27DB18230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18230);
  }

  return result;
}

unint64_t sub_2302719CC()
{
  result = qword_27DB18238;
  if (!qword_27DB18238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18238);
  }

  return result;
}

unint64_t sub_230271A20()
{
  result = qword_280C9A860[0];
  if (!qword_280C9A860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C9A860);
  }

  return result;
}

unint64_t sub_230271A74()
{
  result = qword_280C96F58;
  if (!qword_280C96F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18270);
    sub_230271AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F58);
  }

  return result;
}

unint64_t sub_230271AF8()
{
  result = qword_280C97D50;
  if (!qword_280C97D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97D50);
  }

  return result;
}

unint64_t sub_230271B4C()
{
  result = qword_280C99D20;
  if (!qword_280C99D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18270);
    sub_230271BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99D20);
  }

  return result;
}

unint64_t sub_230271BD0()
{
  result = qword_280C9A848;
  if (!qword_280C9A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A848);
  }

  return result;
}

unint64_t sub_230271C24()
{
  result = qword_280C97C00;
  if (!qword_280C97C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C00);
  }

  return result;
}

unint64_t sub_230271C78()
{
  result = qword_280C9A230[0];
  if (!qword_280C9A230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C9A230);
  }

  return result;
}

unint64_t sub_230271CCC()
{
  result = qword_280C97BD0;
  if (!qword_280C97BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97BD0);
  }

  return result;
}

unint64_t sub_230271D20()
{
  result = qword_280C9A5A8;
  if (!qword_280C9A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5A8);
  }

  return result;
}

unint64_t sub_230271D74()
{
  result = qword_280C99208;
  if (!qword_280C99208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99208);
  }

  return result;
}

unint64_t sub_230271DC8()
{
  result = qword_280C99220;
  if (!qword_280C99220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99220);
  }

  return result;
}

unint64_t sub_230271E1C()
{
  result = qword_280C96F40;
  if (!qword_280C96F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB182B8);
    sub_230271EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F40);
  }

  return result;
}

unint64_t sub_230271EA0()
{
  result = qword_280C97C80;
  if (!qword_280C97C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C80);
  }

  return result;
}

unint64_t sub_230271EF4()
{
  result = qword_280C96F38;
  if (!qword_280C96F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB182B8);
    sub_230271F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F38);
  }

  return result;
}

unint64_t sub_230271F78()
{
  result = qword_280C97C78;
  if (!qword_280C97C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C78);
  }

  return result;
}

unint64_t sub_230271FCC()
{
  result = qword_280C99198;
  if (!qword_280C99198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99198);
  }

  return result;
}

unint64_t sub_230272020()
{
  result = qword_280C97748;
  if (!qword_280C97748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97748);
  }

  return result;
}

unint64_t sub_230272074()
{
  result = qword_280C98B90;
  if (!qword_280C98B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B90);
  }

  return result;
}

unint64_t sub_230272130()
{
  result = qword_27DB182E0;
  if (!qword_27DB182E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB182E0);
  }

  return result;
}

unint64_t sub_230272184()
{
  result = qword_27DB182E8;
  if (!qword_27DB182E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB182E8);
  }

  return result;
}

unint64_t sub_2302721D8()
{
  result = qword_27DB182F8;
  if (!qword_27DB182F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB182F8);
  }

  return result;
}

unint64_t sub_23027222C()
{
  result = qword_27DB18308;
  if (!qword_27DB18308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18308);
  }

  return result;
}

unint64_t sub_230272280()
{
  result = qword_27DB18310;
  if (!qword_27DB18310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18310);
  }

  return result;
}

unint64_t sub_2302722D4()
{
  result = qword_27DB18320;
  if (!qword_27DB18320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18320);
  }

  return result;
}

unint64_t sub_230272390()
{
  result = qword_27DB18330;
  if (!qword_27DB18330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18330);
  }

  return result;
}

unint64_t sub_2302723E4()
{
  result = qword_27DB18358;
  if (!qword_27DB18358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18358);
  }

  return result;
}

unint64_t sub_230272438()
{
  result = qword_27DB18360;
  if (!qword_27DB18360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18360);
  }

  return result;
}

unint64_t sub_23027248C()
{
  result = qword_27DB18368;
  if (!qword_27DB18368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18368);
  }

  return result;
}

unint64_t sub_230272500()
{
  result = qword_27DB18390;
  if (!qword_27DB18390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18390);
  }

  return result;
}

unint64_t sub_230272554()
{
  result = qword_27DB18398;
  if (!qword_27DB18398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18398);
  }

  return result;
}

unint64_t sub_2302725A8()
{
  result = qword_27DB183A8;
  if (!qword_27DB183A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB183A8);
  }

  return result;
}

uint64_t _s19ReminderKitInternal24REMRemindersListDataViewO4DiffV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_2300A702C(*a1, *a2) & 1) == 0 || (sub_2300A702C(v2, v6) & 1) == 0 || (sub_2300A702C(v4, v8) & 1) == 0 || (sub_2300A702C(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_2300A7274(v5, v9);
}

unint64_t sub_2302726BC()
{
  result = qword_280C9A2D0;
  if (!qword_280C9A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A2D0);
  }

  return result;
}

uint64_t sub_230272790(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2302727E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_23027282C()
{
  result = qword_280C991F0;
  if (!qword_280C991F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991F0);
  }

  return result;
}

unint64_t sub_230272880()
{
  result = qword_280C991C8;
  if (!qword_280C991C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991C8);
  }

  return result;
}

unint64_t sub_2302728D4()
{
  result = qword_27DB18410;
  if (!qword_27DB18410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18410);
  }

  return result;
}

unint64_t sub_230272928()
{
  result = qword_280C991B0;
  if (!qword_280C991B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C991B0);
  }

  return result;
}

unint64_t sub_23027297C()
{
  result = qword_280C97C70;
  if (!qword_280C97C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C70);
  }

  return result;
}

unint64_t sub_2302729D0()
{
  result = qword_280C97C68;
  if (!qword_280C97C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C68);
  }

  return result;
}

unint64_t sub_230272A24()
{
  result = qword_280C990D0;
  if (!qword_280C990D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C990D0);
  }

  return result;
}

unint64_t sub_230272A78()
{
  result = qword_280C96F30;
  if (!qword_280C96F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18448);
    sub_230272AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F30);
  }

  return result;
}

unint64_t sub_230272AFC()
{
  result = qword_280C97C60;
  if (!qword_280C97C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C60);
  }

  return result;
}

unint64_t sub_230272B50()
{
  result = qword_280C96F28;
  if (!qword_280C96F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18448);
    sub_230272BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F28);
  }

  return result;
}

unint64_t sub_230272BD4()
{
  result = qword_280C97C58;
  if (!qword_280C97C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C58);
  }

  return result;
}

unint64_t sub_230272C28()
{
  result = qword_280C992E0;
  if (!qword_280C992E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C992E0);
  }

  return result;
}

unint64_t sub_230272C7C()
{
  result = qword_280C97C30;
  if (!qword_280C97C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C30);
  }

  return result;
}

unint64_t sub_230272CD0()
{
  result = qword_280C97C28;
  if (!qword_280C97C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C28);
  }

  return result;
}

unint64_t sub_230272D24()
{
  result = qword_27DB18470;
  if (!qword_27DB18470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18470);
  }

  return result;
}

unint64_t sub_230272D78()
{
  result = qword_27DB18488;
  if (!qword_27DB18488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18488);
  }

  return result;
}

unint64_t sub_230272DCC()
{
  result = qword_280C97A60;
  if (!qword_280C97A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A60);
  }

  return result;
}

unint64_t sub_230272E20()
{
  result = qword_27DB184B8;
  if (!qword_27DB184B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB184B8);
  }

  return result;
}

unint64_t sub_230272E74()
{
  result = qword_27DB184C0;
  if (!qword_27DB184C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB184C0);
  }

  return result;
}

unint64_t sub_230272EC8()
{
  result = qword_280C97A38;
  if (!qword_280C97A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A38);
  }

  return result;
}

unint64_t sub_230272F1C()
{
  result = qword_280C98F48[0];
  if (!qword_280C98F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C98F48);
  }

  return result;
}

unint64_t sub_230272F70()
{
  result = qword_280C97A20;
  if (!qword_280C97A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A20);
  }

  return result;
}

unint64_t sub_230272FC4()
{
  result = qword_280C97A18;
  if (!qword_280C97A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A18);
  }

  return result;
}

unint64_t sub_230273018()
{
  result = qword_280C98F30;
  if (!qword_280C98F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98F30);
  }

  return result;
}

unint64_t sub_23027306C()
{
  result = qword_280C96F18;
  if (!qword_280C96F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18500);
    sub_2302730F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F18);
  }

  return result;
}

unint64_t sub_2302730F0()
{
  result = qword_280C97A10;
  if (!qword_280C97A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A10);
  }

  return result;
}

unint64_t sub_230273144()
{
  result = qword_280C96F10;
  if (!qword_280C96F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18500);
    sub_2302731C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F10);
  }

  return result;
}

unint64_t sub_2302731C8()
{
  result = qword_280C97A08;
  if (!qword_280C97A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A08);
  }

  return result;
}

unint64_t sub_23027321C()
{
  result = qword_27DB18518;
  if (!qword_27DB18518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18518);
  }

  return result;
}

unint64_t sub_230273270()
{
  result = qword_27DB18520;
  if (!qword_27DB18520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18520);
  }

  return result;
}

unint64_t sub_2302732C4()
{
  result = qword_27DB18530;
  if (!qword_27DB18530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18530);
  }

  return result;
}

unint64_t sub_230273318()
{
  result = qword_280C9A650;
  if (!qword_280C9A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A650);
  }

  return result;
}

unint64_t sub_23027336C()
{
  result = qword_280C99078;
  if (!qword_280C99078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99078);
  }

  return result;
}

unint64_t sub_2302733C0()
{
  result = qword_27DB18590;
  if (!qword_27DB18590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18590);
  }

  return result;
}

unint64_t sub_230273414()
{
  result = qword_280C99068;
  if (!qword_280C99068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99068);
  }

  return result;
}

unint64_t sub_230273468()
{
  result = qword_280C99060;
  if (!qword_280C99060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99060);
  }

  return result;
}

unint64_t sub_2302734BC()
{
  result = qword_280C99070;
  if (!qword_280C99070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99070);
  }

  return result;
}

unint64_t sub_230273510()
{
  result = qword_280C99080;
  if (!qword_280C99080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99080);
  }

  return result;
}

unint64_t sub_230273564()
{
  result = qword_280C99090;
  if (!qword_280C99090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99090);
  }

  return result;
}

unint64_t sub_2302735B8()
{
  result = qword_280C99088;
  if (!qword_280C99088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99088);
  }

  return result;
}

unint64_t sub_23027360C()
{
  result = qword_280C9A5E0;
  if (!qword_280C9A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5E0);
  }

  return result;
}

unint64_t sub_230273660()
{
  result = qword_280C97C10;
  if (!qword_280C97C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C10);
  }

  return result;
}

unint64_t sub_2302736B4()
{
  result = qword_280C9A5E8;
  if (!qword_280C9A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5E8);
  }

  return result;
}

unint64_t sub_230273708()
{
  result = qword_280C9A5C0;
  if (!qword_280C9A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5C0);
  }

  return result;
}

unint64_t sub_23027375C()
{
  result = qword_280C96F20;
  if (!qword_280C96F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB185F8);
    sub_2302737E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F20);
  }

  return result;
}

unint64_t sub_2302737E0()
{
  result = qword_280C97C08;
  if (!qword_280C97C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97C08);
  }

  return result;
}

unint64_t sub_230273834()
{
  result = qword_280C99D18;
  if (!qword_280C99D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB185F8);
    sub_2302738B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99D18);
  }

  return result;
}

unint64_t sub_2302738B8()
{
  result = qword_280C9A5C8;
  if (!qword_280C9A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A5C8);
  }

  return result;
}

unint64_t sub_230273974()
{
  result = qword_27DB18610;
  if (!qword_27DB18610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18610);
  }

  return result;
}

unint64_t sub_2302739C8()
{
  result = qword_27DB18618;
  if (!qword_27DB18618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15210);
    sub_230273A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18618);
  }

  return result;
}

unint64_t sub_230273A4C()
{
  result = qword_27DB18620;
  if (!qword_27DB18620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18620);
  }

  return result;
}

unint64_t sub_230273AA0()
{
  result = qword_27DB18630;
  if (!qword_27DB18630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15210);
    sub_230273B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18630);
  }

  return result;
}

unint64_t sub_230273B24()
{
  result = qword_27DB18638;
  if (!qword_27DB18638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18638);
  }

  return result;
}

unint64_t sub_230273B98()
{
  result = qword_27DB18650;
  if (!qword_27DB18650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18650);
  }

  return result;
}

unint64_t sub_230273BEC()
{
  result = qword_280C97D40;
  if (!qword_280C97D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97D40);
  }

  return result;
}

unint64_t sub_230273C40()
{
  result = qword_280C96F50;
  if (!qword_280C96F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18668);
    sub_230271420(&qword_280C97D28, type metadata accessor for REMRemindersListDataView.DatesModel.Group);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F50);
  }

  return result;
}

unint64_t sub_230273CF4()
{
  result = qword_280C96F48;
  if (!qword_280C96F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18668);
    sub_230271420(&qword_280C97D20, type metadata accessor for REMRemindersListDataView.DatesModel.Group);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F48);
  }

  return result;
}

unint64_t sub_230273DC8()
{
  result = qword_280C98E50;
  if (!qword_280C98E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98E50);
  }

  return result;
}

unint64_t sub_230273E3C()
{
  result = qword_280C98DA8;
  if (!qword_280C98DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98DA8);
  }

  return result;
}

unint64_t sub_230273E90()
{
  result = qword_27DB186C0;
  if (!qword_27DB186C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB186C0);
  }

  return result;
}

unint64_t sub_230273EE4()
{
  result = qword_280C96F08;
  if (!qword_280C96F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB186C8);
    sub_230271420(&qword_280C97788, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F08);
  }

  return result;
}

unint64_t sub_230273F98()
{
  result = qword_280C98D68;
  if (!qword_280C98D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D68);
  }

  return result;
}

unint64_t sub_230273FEC()
{
  result = qword_280C98D90;
  if (!qword_280C98D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D90);
  }

  return result;
}

unint64_t sub_230274040()
{
  result = qword_27DB186D0;
  if (!qword_27DB186D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB186D0);
  }

  return result;
}

unint64_t sub_230274094()
{
  result = qword_280C98D50;
  if (!qword_280C98D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98D50);
  }

  return result;
}

unint64_t sub_2302740E8()
{
  result = qword_280C96F00;
  if (!qword_280C96F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB186C8);
    sub_230271420(&qword_280C97780, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F00);
  }

  return result;
}

unint64_t sub_23027419C()
{
  result = qword_280C98E68;
  if (!qword_280C98E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98E68);
  }

  return result;
}

unint64_t sub_2302741F0()
{
  result = qword_280C96EF8;
  if (!qword_280C96EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18710);
    sub_230271420(&qword_280C97778, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96EF8);
  }

  return result;
}

unint64_t sub_2302742A4()
{
  result = qword_280C96EF0;
  if (!qword_280C96EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18710);
    sub_230271420(&qword_280C97770, type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96EF0);
  }

  return result;
}

unint64_t sub_230274378()
{
  result = qword_280C97A00;
  if (!qword_280C97A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97A00);
  }

  return result;
}

unint64_t sub_2302743CC()
{
  result = qword_27DB18740;
  if (!qword_27DB18740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18740);
  }

  return result;
}

unint64_t sub_230274420()
{
  result = qword_280C979D8;
  if (!qword_280C979D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C979D8);
  }

  return result;
}

unint64_t sub_230274474()
{
  result = qword_280C98C80;
  if (!qword_280C98C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C80);
  }

  return result;
}

unint64_t sub_2302744C8()
{
  result = qword_27DB18780;
  if (!qword_27DB18780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18780);
  }

  return result;
}

unint64_t sub_23027451C()
{
  result = qword_280C98C58;
  if (!qword_280C98C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C58);
  }

  return result;
}

unint64_t sub_230274590()
{
  result = qword_27DB187B0;
  if (!qword_27DB187B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB187B0);
  }

  return result;
}

unint64_t sub_230274604()
{
  result = qword_27DB187F0;
  if (!qword_27DB187F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB187F0);
  }

  return result;
}

unint64_t sub_230274658()
{
  result = qword_27DB18800;
  if (!qword_27DB18800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18800);
  }

  return result;
}

unint64_t sub_2302746AC()
{
  result = qword_27DB18818;
  if (!qword_27DB18818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18810);
    sub_230271420(&qword_27DB18820, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18818);
  }

  return result;
}

unint64_t sub_230274760()
{
  result = qword_27DB18830;
  if (!qword_27DB18830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18830);
  }

  return result;
}

unint64_t sub_2302747B4()
{
  result = qword_27DB18838;
  if (!qword_27DB18838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18838);
  }

  return result;
}

unint64_t sub_230274808()
{
  result = qword_27DB18840;
  if (!qword_27DB18840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18840);
  }

  return result;
}

unint64_t sub_23027485C()
{
  result = qword_27DB18848;
  if (!qword_27DB18848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18848);
  }

  return result;
}

unint64_t sub_2302748B0()
{
  result = qword_27DB18888;
  if (!qword_27DB18888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18810);
    sub_230271420(&qword_27DB18890, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18888);
  }

  return result;
}

unint64_t sub_230274964()
{
  result = qword_27DB188A0;
  if (!qword_27DB188A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB188A0);
  }

  return result;
}

unint64_t sub_2302749B8()
{
  result = qword_27DB188B0;
  if (!qword_27DB188B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB188A8);
    sub_230271420(&qword_27DB188B8, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB188B0);
  }

  return result;
}

unint64_t sub_230274A6C()
{
  result = qword_27DB188C8;
  if (!qword_27DB188C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB188A8);
    sub_230271420(&qword_27DB188D0, type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB188C8);
  }

  return result;
}

unint64_t sub_230274B20()
{
  result = qword_280C9A598;
  if (!qword_280C9A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A598);
  }

  return result;
}

unint64_t sub_230274B74()
{
  result = qword_280C97B28;
  if (!qword_280C97B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97B28);
  }

  return result;
}

unint64_t sub_230274BC8()
{
  result = qword_280C9A580;
  if (!qword_280C9A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A580);
  }

  return result;
}

unint64_t sub_230274C20()
{
  result = qword_27DB188F8;
  if (!qword_27DB188F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB188F8);
  }

  return result;
}

unint64_t sub_230274C78()
{
  result = qword_27DB18900;
  if (!qword_27DB18900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18900);
  }

  return result;
}

unint64_t sub_230274CD0()
{
  result = qword_27DB18908;
  if (!qword_27DB18908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB18910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18908);
  }

  return result;
}

unint64_t sub_230274D38()
{
  result = qword_27DB18918;
  if (!qword_27DB18918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18918);
  }

  return result;
}

unint64_t sub_230274D90()
{
  result = qword_27DB18920;
  if (!qword_27DB18920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18920);
  }

  return result;
}

unint64_t sub_230274DE8()
{
  result = qword_27DB18928;
  if (!qword_27DB18928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18928);
  }

  return result;
}

unint64_t sub_230274E40()
{
  result = qword_27DB18930;
  if (!qword_27DB18930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18930);
  }

  return result;
}

unint64_t sub_230274E98()
{
  result = qword_27DB18938;
  if (!qword_27DB18938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMRemindersListDataView.SortingStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7C)
  {
    goto LABEL_17;
  }

  if (a2 + 132 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 132) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 132;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 132;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 132;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for REMRemindersListDataView.SortingStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 132 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 132) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7C)
  {
    v4 = 0;
  }

  if (a2 > 0x7B)
  {
    v5 = ((a2 - 124) >> 8) + 1;
    *result = a2 - 124;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_230275068(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 5;
  }

  else
  {
    return v1 & 1 | 4u;
  }
}

_BYTE *sub_230275084(_BYTE *result, unsigned int a2)
{
  if (a2 < 4)
  {
    *result = *result & 1 | (32 * a2);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMRemindersListDataView.ShowCompleted(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(v6 + 64);

  return memcpy(a1, a2, v11);
}

uint64_t destroy for REMRemindersListDataView.ShowCompleted(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
  }

  else if (!result)
  {
    v3 = sub_23030EB58();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *initializeWithCopy for REMRemindersListDataView.ShowCompleted(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;

    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *assignWithCopy for REMRemindersListDataView.ShowCompleted(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_230270804(a1, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;

    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for REMRemindersListDataView.ShowCompleted(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for REMRemindersListDataView.ShowCompleted(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_230270804(a1, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_230275660()
{
  result = sub_23030EB58();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for REMRemindersListDataView.FetchConfiguration(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a3[5];
    v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v4[v7] = *&a2[v7];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v4[v7], &a2[v7], *(*(v8 - 8) + 64));
    }

    else
    {
      v10 = sub_23030EB58();
      (*(*(v10 - 8) + 16))(&v4[v7], &a2[v7], v10);
      swift_storeEnumTagMultiPayload();
    }

    v12 = a3[7];
    v4[a3[6]] = a2[a3[6]];
    v13 = &v4[v12];
    v14 = &a2[v12];
    v15 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v13 = *v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v17 = &v13[v16];
      v18 = &v14[v16];
      v19 = sub_23030EB58();
      v20 = *(*(v19 - 8) + 16);
      v20(v17, v18, v19);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v20(&v17[*(v21 + 36)], &v18[*(v21 + 36)], v19);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v13, v14, *(*(v15 - 8) + 64));
    }

    v4[a3[8]] = a2[a3[8]];
  }

  return v4;
}

uint64_t destroy for REMRemindersListDataView.FetchConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = sub_23030EB58();
    (*(*(v6 - 8) + 8))(a1 + v4, v6);
  }

  v7 = a1 + *(a2 + 28);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v9 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v10 = sub_23030EB58();
    v12 = *(*(v10 - 8) + 8);
    (v12)((v10 - 8), v9, v10);
    v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);

    return v12(v11, v10);
  }

  return result;
}

_BYTE *initializeWithCopy for REMRemindersListDataView.FetchConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&a1[v6] = *&a2[v6];

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
  }

  else
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(&a1[v6], &a2[v6], v9);
    swift_storeEnumTagMultiPayload();
  }

  v10 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v11 = *v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v15 = v11 + v14;
    v16 = v12 + v14;
    v17 = sub_23030EB58();
    v18 = *(*(v17 - 8) + 16);
    v18(v15, v16, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v18(&v15[*(v19 + 36)], &v16[*(v19 + 36)], v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

  a1[a3[8]] = a2[a3[8]];
  return a1;
}

_BYTE *assignWithCopy for REMRemindersListDataView.FetchConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    a1[a3[6]] = a2[a3[6]];
    goto LABEL_12;
  }

  v6 = a3[5];
  sub_230270804(&a1[v6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&a1[v6] = *&a2[v6];

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(&a1[v6], &a2[v6], v9);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
LABEL_9:
  a1[a3[6]] = a2[a3[6]];
  v10 = a3[7];
  v11 = &a1[v10];
  v12 = &a2[v10];
  sub_230270804(&a1[v10], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v11 = *v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v15 = v11 + v14;
    v16 = v12 + v14;
    v17 = sub_23030EB58();
    v18 = *(*(v17 - 8) + 16);
    v18(v15, v16, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v18(&v15[*(v19 + 36)], &v16[*(v19 + 36)], v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

LABEL_12:
  a1[a3[8]] = a2[a3[8]];
  return a1;
}

_BYTE *initializeWithTake for REMRemindersListDataView.FetchConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v10 = *v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14 = v10 + v13;
    v15 = v11 + v13;
    v16 = sub_23030EB58();
    v17 = *(*(v16 - 8) + 32);
    v17(v14, v15, v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  a1[a3[8]] = a2[a3[8]];
  return a1;
}

_BYTE *assignWithTake for REMRemindersListDataView.FetchConfiguration(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    a1[a3[6]] = a2[a3[6]];
  }

  else
  {
    v6 = a3[5];
    sub_230270804(&a1[v6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
    }

    else
    {
      v8 = sub_23030EB58();
      (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
      swift_storeEnumTagMultiPayload();
    }

    v9 = a3[7];
    a1[a3[6]] = a2[a3[6]];
    v10 = &a1[v9];
    v11 = &a2[v9];
    sub_230270804(&a1[v9], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v10 = *v11;
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v14 = v10 + v13;
      v15 = v11 + v13;
      v16 = sub_23030EB58();
      v17 = *(*(v16 - 8) + 32);
      v17(v14, v15, v16);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v10, v11, *(*(v12 - 8) + 64));
    }
  }

  a1[a3[8]] = a2[a3[8]];
  return a1;
}

uint64_t sub_2302763A0()
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_230276494(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2302764DC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_2302727E4(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.HashtagLabelPredicate(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_2302727E4(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_230276494(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.HashtagLabelPredicate(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_230276494(v4, v5, v6);
  return a1;
}

uint64_t sub_2302765C8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2302765E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t initializeWithCopy for REMRemindersListDataView.ReminderLite(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.ReminderLite(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.ReminderLite(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  return a1;
}

uint64_t destroy for REMRemindersListDataView.ListsModel.Sublist(id *a1)
{
}

uint64_t initializeWithCopy for REMRemindersListDataView.ListsModel.Sublist(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = v3;

  v7 = v5;

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.ListsModel.Sublist(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = v8;

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.ListsModel.Sublist(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.FlaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v5 = *(a1 + 48);
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  v7 = v6;

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.FlaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.AssignedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  *(a1 + 40) = v6;
  v7 = v6;

  return a1;
}

uint64_t assignWithTake for REMRemindersListDataView.AssignedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

void destroy for REMRemindersListDataView.TaggedModel(uint64_t a1)
{

  v2 = *(a1 + 80);
  if (v2)
  {
  }
}

uint64_t initializeWithCopy for REMRemindersListDataView.TaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  v8 = (a2 + 80);
  v7 = *(a2 + 80);

  v9 = v6;
  if (v7)
  {
    *(a1 + 80) = v7;
    *(a1 + 88) = *(a2 + 88);
    v10 = *(a2 + 96);
    v11 = *(a2 + 104);
    *(a1 + 96) = v10;
    *(a1 + 104) = v11;
    v12 = v7;
  }

  else
  {
    v13 = v8[1];
    *(a1 + 80) = *v8;
    *(a1 + 96) = v13;
  }

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.TaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  v5 = *(a1 + 72);
  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  v7 = v6;

  v8 = (a1 + 80);
  v9 = *(a1 + 80);
  v11 = (a2 + 80);
  v10 = *(a2 + 80);
  if (v9)
  {
    if (v10)
    {
      *(a1 + 80) = v10;
      v12 = v10;

      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      sub_23027674C(a1 + 80);
      v14 = *(a2 + 96);
      *v8 = *v11;
      *(a1 + 96) = v14;
    }
  }

  else if (v10)
  {
    *(a1 + 80) = v10;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    v13 = v10;
  }

  else
  {
    v15 = *(a2 + 96);
    *v8 = *v11;
    *(a1 + 96) = v15;
  }

  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t assignWithTake for REMRemindersListDataView.TaggedModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  v5 = *(a1 + 80);
  v6 = *(a2 + 80);
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    sub_23027674C(a1 + 80);
LABEL_5:
    v8 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v8;
    return a1;
  }

  *(a1 + 80) = v6;

  *(a1 + 88) = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMRemindersListDataView.TaggedModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for REMRemindersListDataView.TaggedModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for REMRemindersListDataView.TemplateModel(uint64_t a1)
{

  v3 = *(a1 + 56);
  if (v3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for REMRemindersListDataView.TemplateModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v8 = (a2 + 56);
  v7 = *(a2 + 56);
  v9 = v4;

  if (v7)
  {
    *(a1 + 56) = v7;
    *(a1 + 64) = *(a2 + 64);
    v10 = *(a2 + 72);
    v11 = *(a2 + 80);
    *(a1 + 72) = v10;
    *(a1 + 80) = v11;
    v12 = v7;
  }

  else
  {
    v13 = v8[1];
    *(a1 + 56) = *v8;
    *(a1 + 72) = v13;
  }

  return a1;
}

uint64_t assignWithCopy for REMRemindersListDataView.TemplateModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  v7 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v7;
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v8 = (a1 + 56);
  v9 = *(a1 + 56);
  v11 = (a2 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (v10)
    {
      *(a1 + 56) = v10;
      v12 = v10;

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      sub_23027674C(a1 + 56);
      v14 = *(a2 + 72);
      *v8 = *v11;
      *(a1 + 72) = v14;
    }
  }

  else if (v10)
  {
    *(a1 + 56) = v10;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    v13 = v10;
  }

  else
  {
    v15 = *(a2 + 72);
    *v8 = *v11;
    *(a1 + 72) = v15;
  }

  return a1;
}