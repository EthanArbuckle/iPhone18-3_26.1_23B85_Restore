uint64_t sub_23022EC88(uint64_t a1)
{
  v2 = sub_2302314D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23022ECC4(uint64_t a1)
{
  v2 = sub_2302314D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23022ED00(uint64_t a1)
{
  v2 = sub_230231528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23022ED3C(uint64_t a1)
{
  v2 = sub_230231528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17AB0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17AB8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17AC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302314D4();
  sub_230311448();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_230231528();
    v14 = v18;
    sub_230310D48();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23023157C();
    sub_230310D48();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17AE0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17AE8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17AF0);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302314D4();
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
      *v22 = &type metadata for REMHashtagLabelDataView.HashtagLabelInFilterFetchStyle;
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
        sub_230231528();
        sub_230310C28();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23023157C();
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

uint64_t static REMHashtagLabelDataView.fetchAllHashtagLabels(store:sortingStyle:includeDetails:)(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = *a2;
  if (a3)
  {
    type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsDetailedInvocation();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_2300C9C44(v5, v4, v9);
  }

  else
  {
    type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_2300C9CE0(v5, v4, v9);
  }

  if (v3)
  {
    return v4;
  }

  v4 = v9[0];
  v6 = v9[1];
  if (!(v9[0] >> 62))
  {

    sub_230311078();
    sub_23004CBA4(0, &qword_280C96EC0);

    return v4;
  }

  sub_23004CBA4(0, &qword_280C96EC0);

  v8 = sub_230310AF8();
  swift_bridgeObjectRelease_n();

  return v8;
}

uint64_t static REMHashtagLabelDataView.fetchSmartListHashtagLabels(store:fetchStyle:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300CA89C(v5, v4, v7);

  if (!v2)
  {
    a1 = v7[0];
  }

  return a1;
}

uint64_t sub_23022F71C(uint64_t a1)
{
  v2 = sub_23023169C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23022F758(uint64_t a1)
{
  v2 = sub_23023169C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23022F794()
{
  if (*v0)
  {
    return 1701670771;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_23022F7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701670771 && a2 == 0xE400000000000000)
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

uint64_t sub_23022F89C(uint64_t a1)
{
  v2 = sub_2302315F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23022F8D8(uint64_t a1)
{
  v2 = sub_2302315F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23022F914(uint64_t a1)
{
  v2 = sub_230231648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23022F950(uint64_t a1)
{
  v2 = sub_230231648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMHashtagLabelDataView.Operation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17AF8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17B00);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17B08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302315F4();
  sub_230311448();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_230231648();
    v14 = v18;
    sub_230310D48();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23023169C();
    sub_230310D48();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t REMHashtagLabelDataView.Operation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17B28);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17B30);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17B38);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302315F4();
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
      *v22 = &type metadata for REMHashtagLabelDataView.Operation;
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
        sub_230231648();
        sub_230310C28();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23023169C();
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

uint64_t static REMHashtagLabelDataView.fetchReminderIDs(include:exclude:operation:store:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a3;
  type metadata accessor for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v11 = [v10 init];
  sub_2300CB370(v11, a1, a2, v9, v13);

  if (!v5)
  {
    a4 = v13[0];
  }

  return a4;
}

uint64_t REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.init(include:exclude:operation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t static REMHashtagLabelDataView.fetchAllHashtagLabelSuggestions(store:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_230230220, 0, 0);
}

uint64_t sub_230230220()
{
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  MEMORY[0x231911790](0x2A203D3D20, 0xE500000000000000);
  v1 = objc_allocWithZone(MEMORY[0x277CC3418]);
  v2 = sub_23030F8B8();

  v3 = sub_23030FCC8();
  v4 = [v1 initWithQueryString:v2 bundleIDs:v3];
  v0[5] = v4;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_23023035C;
  v6 = v0[3];
  v7 = v0[2];

  return sub_2302304FC(v7, v6, v4);
}

uint64_t sub_23023035C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230230498, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_230230498()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2302304FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[172] = v3;
  v4[171] = a3;
  v4[170] = a2;
  v4[169] = a1;
  return MEMORY[0x2822009F8](sub_230230528, 0, 0);
}

uint64_t sub_230230528()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = swift_allocObject();
  v0[173] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  v0[174] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = v2;
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2, v0 + 167, sub_230230658, v0 + 162);
}

uint64_t sub_230230658()
{
  v1[175] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 168, sub_2302308A8, v1 + 162);
  }

  else
  {
    v1[176] = v1[167];

    return MEMORY[0x282200930](v1 + 82, v1 + 168, sub_23023070C, v1 + 162);
  }
}

uint64_t sub_23023070C()
{
  *(v1 + 1416) = v0;
  if (v0)
  {
    v2 = sub_230230970;
  }

  else
  {
    v2 = sub_230230740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230230740()
{
  v1 = v0[176];
  v2 = v0[169];
  v3 = v0[168];

  sub_2302335F0(v1, v3, v2);

  return MEMORY[0x282200920](v0 + 82, v0 + 168, sub_2302307E0, v0 + 162);
}

uint64_t sub_230230838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230230900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230230970()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1344, sub_2302309DC, v0 + 1296);
}

uint64_t sub_230230A34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static REMHashtagLabelDataView.fetchAllHashtagLabelSuggestionsPublisher(store:combineType:)(void *a1, char *a2)
{
  v9 = *a2;
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  MEMORY[0x231911790](0x2A203D3D20, 0xE500000000000000);
  v3 = objc_allocWithZone(MEMORY[0x277CC3418]);
  v4 = sub_23030F8B8();

  v5 = sub_23030FCC8();
  v6 = [v3 initWithQueryString:v4 bundleIDs:v5];

  v7 = sub_230230B9C(a1, &v9, v6);
  return v7;
}

uint64_t sub_230230B9C(void *a1, char *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17CF8);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v35 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D00);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v39 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D08);
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D10);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v35 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D18);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v16 = &v35 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D20);
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v37 = &v35 - v17;
  v18 = *a2;
  v48 = v3;
  v47 = sub_230233994(a1);
  *(swift_allocObject() + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D28);
  swift_allocObject();
  v19 = a3;
  v53 = sub_23030F178();
  sub_23005F108(&qword_280C96FB0, &qword_27DB17D28);
  v20 = sub_23030F198();

  if (v18)
  {
    v52 = v47;
    v53 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D30);
    sub_23005F108(&qword_280C96FC8, &qword_27DB17D30);
    v21 = v39;
    sub_23030F1E8();
    sub_23005F108(&qword_27DB17D38, &qword_27DB17D00);
    v22 = v46;
    v23 = sub_23030F198();
    (*(v44 + 8))(v21, v22);
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_23030F168();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
    v24 = v36;
    sub_23030F158();
    (*(v35 + 8))(v12, v24);
    v53 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D30);
    sub_23005F108(&qword_280C96D08, &qword_27DB17D10);
    sub_23005F108(&qword_280C96FC8, &qword_27DB17D30);
    v25 = v40;
    sub_23030F228();
    (*(v38 + 8))(v14, v25);
    v53 = v47;
    sub_23005F108(&qword_280C96FE8, &qword_27DB17D18);
    v26 = v37;
    v27 = v43;
    sub_23030F1B8();
    (*(v41 + 8))(v16, v27);
    sub_23005F108(&unk_280C97078, &qword_27DB17D20);
    v28 = v45;
    v23 = sub_23030F198();
    (*(v42 + 8))(v26, v28);
  }

  v53 = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = v48;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_230237010;
  *(v30 + 24) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D40);
  sub_23005F108(&qword_280C96FD0, &qword_27DB17D40);
  v31 = v49;
  sub_23030F1D8();

  sub_23005F108(qword_280C96FF0, &qword_27DB17CF8);
  v32 = v51;
  v33 = sub_23030F198();

  (*(v50 + 8))(v31, v32);
  return v33;
}

uint64_t static REMHashtagLabelDataView.fetchHashtagLabelsReferencedByCustomSmartListFilters(store:fetchStyle:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  type metadata accessor for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300CA89C(v5, v4, v7);

  if (!v2)
  {
    a1 = v7[0];
  }

  return a1;
}

unint64_t sub_2302314D4()
{
  result = qword_27DB17AC8;
  if (!qword_27DB17AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17AC8);
  }

  return result;
}

unint64_t sub_230231528()
{
  result = qword_27DB17AD0;
  if (!qword_27DB17AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17AD0);
  }

  return result;
}

unint64_t sub_23023157C()
{
  result = qword_27DB17AD8;
  if (!qword_27DB17AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17AD8);
  }

  return result;
}

unint64_t sub_2302315F4()
{
  result = qword_27DB17B10;
  if (!qword_27DB17B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17B10);
  }

  return result;
}

unint64_t sub_230231648()
{
  result = qword_27DB17B18;
  if (!qword_27DB17B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17B18);
  }

  return result;
}

unint64_t sub_23023169C()
{
  result = qword_27DB17B20;
  if (!qword_27DB17B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17B20);
  }

  return result;
}

ReminderKitInternal::REMHashtagLabelDataView::AllHashtagLabelsInvocation::SortingStyle_optional __swiftcall REMHashtagLabelDataView.AllHashtagLabelsInvocation.SortingStyle.init(rawValue:)(Swift::Int rawValue)
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

uint64_t sub_230231818(uint64_t a1)
{
  v2 = sub_2302318D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230231854(uint64_t a1)
{
  v2 = sub_2302318D4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2302318D4()
{
  result = qword_280C99310;
  if (!qword_280C99310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99310);
  }

  return result;
}

unint64_t sub_230231928()
{
  result = qword_280C97E20;
  if (!qword_280C97E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E20);
  }

  return result;
}

unint64_t sub_2302319C0()
{
  result = qword_280C97E18;
  if (!qword_280C97E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E18);
  }

  return result;
}

uint64_t sub_230231A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974)
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

uint64_t sub_230231AE0(uint64_t a1)
{
  v2 = sub_230231CEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230231B1C(uint64_t a1)
{
  v2 = sub_230231CEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230231B9C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12();
  sub_230311448();
  v13 = v10;
  sub_230231928();
  sub_230310D98();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_230231CEC()
{
  result = qword_27DB17B58;
  if (!qword_27DB17B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17B58);
  }

  return result;
}

uint64_t sub_230231D84@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, _BYTE *a4@<X8>)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_230311428();
  if (!v4)
  {
    v10 = v12;
    sub_2302319C0();
    sub_230310C88();
    (*(v13 + 8))(v9, v7);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230231F58()
{
  v1 = 0x6564756C637865;
  if (*v0 != 1)
  {
    v1 = 0x6F6974617265706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564756C636E69;
  }
}

uint64_t sub_230231FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230236E94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230231FD4(uint64_t a1)
{
  v2 = sub_230232278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230232010(uint64_t a1)
{
  v2 = sub_230232278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17B68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v13 = v1[1];
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230232278();

  sub_230311448();
  v15 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
  sub_2301224F0(&qword_280C9B408);
  sub_230310DF8();

  if (!v2)
  {
    v9 = v12;
    v15 = v13;
    v14 = 1;
    sub_230310DF8();
    LOBYTE(v15) = v9;
    v14 = 2;
    sub_2302322CC();
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_230232278()
{
  result = qword_27DB17B70;
  if (!qword_27DB17B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17B70);
  }

  return result;
}

unint64_t sub_2302322CC()
{
  result = qword_27DB17B78;
  if (!qword_27DB17B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17B78);
  }

  return result;
}

uint64_t REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17B80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230232278();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
  v13 = 0;
  sub_2301224F0(&qword_280C9B740);
  sub_230310CE8();
  v12 = v14;
  v13 = 1;
  sub_230310CE8();
  v9 = v14;
  v13 = 2;
  sub_2302325DC();
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v12;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2302325DC()
{
  result = qword_27DB17B88;
  if (!qword_27DB17B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17B88);
  }

  return result;
}

uint64_t sub_230232670()
{
  if (*v0)
  {
    return 0x61446F5470557369;
  }

  else
  {
    return 0x736C6562616CLL;
  }
}

uint64_t sub_2302326AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61446F5470557369 && a2 == 0xEA00000000006574)
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

uint64_t sub_23023278C(uint64_t a1)
{
  v2 = sub_2302329D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302327C8(uint64_t a1)
{
  v2 = sub_2302329D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17B90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302329D8();

  sub_230311448();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_230059F7C(&qword_280C96EE8);
  sub_230310DF8();

  if (!v2)
  {
    v11 = 1;
    sub_230310DB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2302329D8()
{
  result = qword_27DB17B98;
  if (!qword_27DB17B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17B98);
  }

  return result;
}

uint64_t REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302329D8();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  v12[15] = 0;
  sub_230059F7C(&qword_280C98850);
  sub_230310CE8();
  v9 = v13;
  v12[14] = 1;
  v10 = sub_230310CA8();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230232CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000002303455A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_230232D38(uint64_t a1)
{
  v2 = sub_230232F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230232D74(uint64_t a1)
{
  v2 = sub_230232F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17BA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230232F48();

  sub_230311448();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
  sub_2301224F0(&qword_280C9B408);
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_230232F48()
{
  result = qword_27DB17BB0;
  if (!qword_27DB17BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17BB0);
  }

  return result;
}

uint64_t REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17BB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230232F48();
  sub_230311428();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
    sub_2301224F0(&qword_280C9B740);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

id REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_230233204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_23023329C;

  return sub_2302371E0(a3);
}

uint64_t sub_23023329C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_230237A10, 0, 0);
  }
}

uint64_t sub_2302333E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_230233480;

  return sub_2302374E8(a3);
}

uint64_t sub_230233480(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_2302335CC, 0, 0);
  }
}

uint64_t sub_2302335F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = sub_23030E4A8();
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v8 - 8);
  v33 = &v29 - v9;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v29 = a2;
    v31 = a3;
    v39 = MEMORY[0x277D84F90];
    sub_23009EF50(0, v10, 0);
    v12 = v39;
    v32 = (v6 + 8);
    v30 = a1;
    v13 = (a1 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      v16 = v33;
      sub_23030EC88();
      v17 = sub_23030ED38();
      (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
      v36 = v14;
      v38[0] = v14;
      v38[1] = v15;
      sub_2300A85F0();
      v37[0] = sub_2303105C8();
      v37[1] = v18;
      v19 = v34;
      sub_23030E478();
      v20 = sub_230310558();
      v22 = v21;
      (*v32)(v19, v35);
      sub_230061918(v16, &qword_27DB14980);

      v39 = v12;
      v24 = *(v12 + 2);
      v23 = *(v12 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_23009EF50((v23 > 1), v24 + 1, 1);
        v12 = v39;
      }

      *(v12 + 2) = v24 + 1;
      v25 = &v12[32 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      *(v25 + 6) = v36;
      *(v25 + 7) = v15;
      v13 += 2;
      --v10;
    }

    while (v10);
    a1 = v30;
    a3 = v31;
    a2 = v29;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      v26 = MEMORY[0x277D84F98];
      v12 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }

    v12 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14490);
  v26 = sub_230310BC8();
LABEL_10:
  v38[0] = v26;
  sub_230236BF8(v12, 1, v38);

  v37[0] = v11;
  sub_23022E8D8(a2, v38, v37);
  v39 = v37[0];

  sub_23022E86C(&v39);
  v27 = v39;

  *a3 = a1;
  a3[1] = v27;
}

uint64_t sub_230233994(void *a1)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16AA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D50);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v22 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D58);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v22 - v10;
  v29 = 1;
  sub_23030F168();
  if (qword_280C9B718 != -1)
  {
    swift_once();
  }

  v12 = qword_280C9B720;
  v29 = qword_280C9B720;
  v13 = sub_230310318();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_23004CBA4(0, &qword_280C9C2D0);
  sub_23005F108(&qword_280C96FB8, &qword_27DB17D48);
  sub_2301D0C60();
  v14 = v12;
  sub_23030F268();
  sub_230061918(v3, &qword_27DB16AA0);

  (*(v5 + 8))(v7, v4);
  v15 = swift_allocObject();
  v16 = v28;
  *(v15 + 16) = v27;
  *(v15 + 24) = v16;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_23005F108(&qword_280C96FD8, &qword_27DB17D50);
  v18 = v26;
  sub_23030F248();

  (*(v24 + 8))(v9, v18);
  sub_23005F108(&qword_280C96FE0, &qword_27DB17D58);
  v19 = v25;
  v20 = sub_23030F198();
  (*(v23 + 8))(v11, v19);
  return v20;
}

uint64_t sub_230233E20(uint64_t *a1, uint64_t *a2, void *a3)
{
  v37 = a3;
  v42 = a2;
  v4 = sub_23030E4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = *a1;
  v12 = a1[1];
  sub_23030EC88();
  v13 = sub_23030ED38();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  v36 = v11;
  v40 = v11;
  v41 = v12;
  sub_2300A85F0();
  v38 = sub_2303105C8();
  v39 = v14;
  sub_23030E478();
  v15 = sub_230310558();
  v17 = v16;
  v18 = v4;
  v19 = v42;
  (*(v5 + 8))(v7, v18);

  sub_230061918(v10, &qword_27DB14980);
  v20 = 0;
  v21 = *v19;
  v22 = *v19 + 64;
  v23 = 1 << *(*v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(*v19 + 64);
  v26 = ((v23 + 63) >> 6);
  while (v25)
  {
LABEL_9:
    v28 = (*(v21 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v25)))));
    if (*v28 != v15 || v28[1] != v17)
    {
      v25 &= v25 - 1;
      if ((sub_230311048() & 1) == 0)
      {
        continue;
      }
    }
  }

  while (1)
  {
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v27 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v27);
    ++v20;
    if (v25)
    {
      v20 = v27;
      goto LABEL_9;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v19;
  *v19 = 0x8000000000000000;
  v25 = v36;
  sub_2300A2DDC(v36, v12, v15, v17, isUniquelyReferenced_nonNull_native);

  *v19 = v40;
  v26 = v37;
  v21 = *v37;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v21;
  if (result)
  {
    goto LABEL_16;
  }

LABEL_20:
  result = sub_23007E928(0, *(v21 + 16) + 1, 1, v21);
  v21 = result;
  *v26 = result;
LABEL_16:
  v33 = *(v21 + 16);
  v32 = *(v21 + 24);
  if (v33 >= v32 >> 1)
  {
    result = sub_23007E928((v32 > 1), v33 + 1, 1, v21);
    v21 = result;
    *v26 = result;
  }

  *(v21 + 16) = v33 + 1;
  v34 = v21 + 16 * v33;
  *(v34 + 32) = v25;
  *(v34 + 40) = v12;
  return result;
}

id sub_2302341A0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_230237968;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2302344B0;
  aBlock[3] = &block_descriptor_142;
  v10 = _Block_copy(aBlock);

  [a2 setHashTagCompletionHandler_];
  _Block_release(v10);
  return [a2 start];
}

uint64_t sub_230234360(uint64_t a1, char *a2)
{
  if (a2)
  {
    v9 = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D60);
    return sub_23030FE58();
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v6 = sub_23009D850(*(a1 + 16), 0);
  v7 = sub_23009DE30(&v9, v6 + 4, v4, a1);

  sub_2300F525C();
  if (v7 == v4)
  {
LABEL_9:
    v9 = v6;
    sub_23022E86C(&v9);
    v8 = v9;
    goto LABEL_10;
  }

  __break(1u);
LABEL_7:
  v8 = MEMORY[0x277D84F90];
LABEL_10:
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D60);
  return sub_23030FE68();
}

uint64_t sub_2302344B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23030FF38();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_230234550(unint64_t a1@<X8>)
{
  type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C9CE0(v3, 1, v21);

  if (!v1)
  {
    v5 = v21[0];
    v4 = v21[1];
    if (v21[0] >> 62)
    {
      goto LABEL_19;
    }

    sub_230311078();
    sub_23004CBA4(0, &qword_280C96EC0);

    v6 = v5;
    while (1)
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = a1;
      if (!v7)
      {
        break;
      }

      while (1)
      {
        a1 = 0;
        v22 = v6 & 0xC000000000000001;
        v20 = v6 & 0xFFFFFFFFFFFFFF8;
        v8 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v22)
          {
            v9 = MEMORY[0x231912650](a1, v5);
          }

          else
          {
            if (a1 >= *(v20 + 16))
            {
              goto LABEL_18;
            }

            v9 = *(v5 + 8 * a1 + 32);
          }

          v10 = v9;
          v11 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            break;
          }

          v12 = v5;
          v13 = [v9 name];
          v14 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v16 = v15;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_23007E928(0, *(v8 + 2) + 1, 1, v8);
          }

          v4 = *(v8 + 2);
          v17 = *(v8 + 3);
          if (v4 >= v17 >> 1)
          {
            v8 = sub_23007E928((v17 > 1), v4 + 1, 1, v8);
          }

          *(v8 + 2) = v4 + 1;
          v18 = &v8[16 * v4];
          *(v18 + 4) = v14;
          *(v18 + 5) = v16;
          ++a1;
          v5 = v12;
          if (v11 == v7)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        sub_23004CBA4(0, &qword_280C96EC0);

        v6 = sub_230310AF8();
        swift_bridgeObjectRelease_n();

        v5 = v6;
        if (!(v6 >> 62))
        {
          break;
        }

        v7 = sub_2303106D8();
        v19 = a1;
        if (!v7)
        {
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    v8 = MEMORY[0x277D84F90];
LABEL_22:

    *v19 = v8;
  }
}

void sub_2302347E0(void (*a1)(id *), uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  if (a3)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_2302107CC;
    *(v7 + 24) = v6;
    v21 = sub_230237064;
    v22 = v7;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_2302344B0;
    v20 = &block_descriptor_16;
    v8 = _Block_copy(&v17);

    v9 = a3;

    [v9 setHashTagCompletionHandler_];
    _Block_release(v8);
    [v9 start];
  }

  else
  {

    if (qword_27DB13CA0 != -1)
    {
      swift_once();
    }

    v10 = sub_23030EF48();
    __swift_project_value_buffer(v10, qword_27DB17A98);
    v11 = sub_23030EF38();
    v12 = sub_230310288();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_230044000, v11, v12, "CSHashtagQuery is nil", v13, 2u);
      MEMORY[0x231914180](v13, -1, -1);
    }

    v14 = objc_opt_self();
    v15 = sub_23030F8B8();
    v16 = [v14 internalErrorWithDebugDescription_];

    v17 = v16;
    LOBYTE(v18) = 1;
    a1(&v17);
  }
}

void sub_230234A54(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);

    return;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v8 = sub_23009D850(*(a1 + 16), 0);
  v10 = sub_23009DE30(&v11, v8 + 4, v6, a1);

  sub_2300F525C();
  if (v10 == v6)
  {
LABEL_11:
    v11 = v8;
    sub_23022E86C(&v11);
    v9 = v11;
    goto LABEL_12;
  }

  __break(1u);
LABEL_9:
  v9 = MEMORY[0x277D84F90];
LABEL_12:
  a3(v9, 0);
}

unint64_t sub_230234BE8()
{
  result = qword_27DB17BC0;
  if (!qword_27DB17BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17BC0);
  }

  return result;
}

unint64_t sub_230234C40()
{
  result = qword_27DB17BC8;
  if (!qword_27DB17BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17BC8);
  }

  return result;
}

unint64_t sub_230234C98()
{
  result = qword_27DB17BD0;
  if (!qword_27DB17BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17BD0);
  }

  return result;
}

unint64_t sub_230234CF0()
{
  result = qword_27DB17BD8;
  if (!qword_27DB17BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17BD8);
  }

  return result;
}

unint64_t sub_230234D48()
{
  result = qword_27DB17BE0;
  if (!qword_27DB17BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17BE0);
  }

  return result;
}

unint64_t sub_230234DA8()
{
  result = qword_280C99D28;
  if (!qword_280C99D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14DC8);
    sub_230234E5C(&qword_280C9A968, type metadata accessor for REMHashtagLabel_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99D28);
  }

  return result;
}

uint64_t sub_230234E5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_230234EA8()
{
  result = qword_27DB17BE8;
  if (!qword_27DB17BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17BE8);
  }

  return result;
}

unint64_t sub_230234F08()
{
  result = qword_27DB17BF0;
  if (!qword_27DB17BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14DA8);
    sub_230234E5C(&qword_27DB17BF8, type metadata accessor for REMHashtagLabelDetailed_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17BF0);
  }

  return result;
}

unint64_t sub_230234FC0()
{
  result = qword_27DB17C00;
  if (!qword_27DB17C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C00);
  }

  return result;
}

unint64_t sub_230235018()
{
  result = qword_280C9C480;
  if (!qword_280C9C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14AA8);
    sub_230234E5C(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C480);
  }

  return result;
}

unint64_t sub_2302350CC()
{
  result = qword_280C9B990;
  if (!qword_280C9B990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14AA8);
    sub_230234E5C(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B990);
  }

  return result;
}

unint64_t sub_230235184()
{
  result = qword_27DB17C08;
  if (!qword_27DB17C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C08);
  }

  return result;
}

unint64_t sub_2302351E4()
{
  result = qword_27DB17C10;
  if (!qword_27DB17C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C10);
  }

  return result;
}

unint64_t sub_23023523C()
{
  result = qword_27DB17C18;
  if (!qword_27DB17C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C18);
  }

  return result;
}

uint64_t sub_230235300(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_2302353B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for REMHashtagLabelDataView.ReminderIDsIncludeExcludeOperationInvocation.Parameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for REMHashtagLabelDataView.HashtagLabelsReferencedByCustomSmartListFiltersInvocation.Result(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_230235714()
{
  result = qword_27DB17C20;
  if (!qword_27DB17C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C20);
  }

  return result;
}

unint64_t sub_23023576C()
{
  result = qword_27DB17C28;
  if (!qword_27DB17C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C28);
  }

  return result;
}

unint64_t sub_2302357C4()
{
  result = qword_27DB17C30;
  if (!qword_27DB17C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C30);
  }

  return result;
}

unint64_t sub_23023581C()
{
  result = qword_27DB17C38;
  if (!qword_27DB17C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C38);
  }

  return result;
}

unint64_t sub_230235874()
{
  result = qword_27DB17C40;
  if (!qword_27DB17C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C40);
  }

  return result;
}

unint64_t sub_2302358CC()
{
  result = qword_27DB17C48;
  if (!qword_27DB17C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C48);
  }

  return result;
}

unint64_t sub_230235924()
{
  result = qword_27DB17C50;
  if (!qword_27DB17C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C50);
  }

  return result;
}

unint64_t sub_23023597C()
{
  result = qword_27DB17C58;
  if (!qword_27DB17C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C58);
  }

  return result;
}

unint64_t sub_2302359D4()
{
  result = qword_27DB17C60;
  if (!qword_27DB17C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C60);
  }

  return result;
}

unint64_t sub_230235A2C()
{
  result = qword_27DB17C68;
  if (!qword_27DB17C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C68);
  }

  return result;
}

unint64_t sub_230235A84()
{
  result = qword_27DB17C70;
  if (!qword_27DB17C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C70);
  }

  return result;
}

unint64_t sub_230235ADC()
{
  result = qword_27DB17C78;
  if (!qword_27DB17C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C78);
  }

  return result;
}

unint64_t sub_230235B34()
{
  result = qword_27DB17C80;
  if (!qword_27DB17C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C80);
  }

  return result;
}

unint64_t sub_230235B8C()
{
  result = qword_27DB17C88;
  if (!qword_27DB17C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C88);
  }

  return result;
}

unint64_t sub_230235BE4()
{
  result = qword_27DB17C90;
  if (!qword_27DB17C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C90);
  }

  return result;
}

unint64_t sub_230235C3C()
{
  result = qword_280C99300;
  if (!qword_280C99300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99300);
  }

  return result;
}

unint64_t sub_230235C94()
{
  result = qword_280C99308;
  if (!qword_280C99308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99308);
  }

  return result;
}

unint64_t sub_230235CEC()
{
  result = qword_27DB17C98;
  if (!qword_27DB17C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17C98);
  }

  return result;
}

unint64_t sub_230235D44()
{
  result = qword_27DB17CA0;
  if (!qword_27DB17CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CA0);
  }

  return result;
}

unint64_t sub_230235D9C()
{
  result = qword_27DB17CA8;
  if (!qword_27DB17CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CA8);
  }

  return result;
}

unint64_t sub_230235DF4()
{
  result = qword_27DB17CB0;
  if (!qword_27DB17CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CB0);
  }

  return result;
}

unint64_t sub_230235E4C()
{
  result = qword_27DB17CB8;
  if (!qword_27DB17CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CB8);
  }

  return result;
}

unint64_t sub_230235EA4()
{
  result = qword_27DB17CC0;
  if (!qword_27DB17CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CC0);
  }

  return result;
}

unint64_t sub_230235EFC()
{
  result = qword_27DB17CC8;
  if (!qword_27DB17CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CC8);
  }

  return result;
}

unint64_t sub_230235F54()
{
  result = qword_27DB17CD0;
  if (!qword_27DB17CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CD0);
  }

  return result;
}

unint64_t sub_230235FAC()
{
  result = qword_27DB17CD8;
  if (!qword_27DB17CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CD8);
  }

  return result;
}

unint64_t sub_230236004()
{
  result = qword_27DB17CE0;
  if (!qword_27DB17CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CE0);
  }

  return result;
}

unint64_t sub_23023605C()
{
  result = qword_27DB17CE8;
  if (!qword_27DB17CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CE8);
  }

  return result;
}

unint64_t sub_2302360B4()
{
  result = qword_27DB17CF0;
  if (!qword_27DB17CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17CF0);
  }

  return result;
}

uint64_t sub_230236108(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_230310E48();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23030FD48();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_230236304(v7, v8, a1, v4);
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
    return sub_230236200(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_230236200(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_2300A85F0();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v14 = v7;
    v9 = v8;
    while (1)
    {
      result = sub_230310588();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v14 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v9;
      v11 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v11;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_230236304(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v90 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v87 = v10;
        v13 = 16 * v11;
        v14 = v11;
        v15 = *v7 + 16 * v11 + 40;
        v5 = sub_2300A85F0();
        result = sub_230310588();
        v16 = result;
        v89 = v14;
        v17 = v14 + 2;
        while (v8 != v17)
        {
          result = sub_230310588();
          ++v17;
          v15 += 16;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v11 = v89;
        if (v16 == -1)
        {
          if (v8 < v89)
          {
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
            return result;
          }

          if (v89 < v8)
          {
            v18 = 0;
            v19 = 16 * v8;
            v20 = v89;
            do
            {
              if (v20 != v8 + v18 - 1)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v21 = (v25 + v13);
                v22 = v25 + v19;
                v23 = *v21;
                v24 = v21[1];
                *v21 = *(v22 - 16);
                *(v22 - 16) = v23;
                *(v22 - 8) = v24;
              }

              ++v20;
              --v18;
              v19 -= 16;
              v13 += 16;
            }

            while (v20 < v8 + v18);
          }
        }

        v7 = a3;
        v10 = v87;
      }

      v26 = v7[1];
      if (v8 < v26)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v26)
          {
            v26 = v11 + a4;
          }

          if (v26 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v26)
          {
            v92 = v26;
            v88 = v10;
            v85 = v6;
            v27 = *v7;
            v5 = sub_2300A85F0();
            v28 = (v27 + 16 * v8);
            v29 = v11 - v8;
            do
            {
              v30 = v29;
              v31 = v28;
              do
              {
                result = sub_230310588();
                if (result != -1)
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_121;
                }

                v32 = *v31;
                v33 = v31[1];
                *v31 = *(v31 - 1);
                *(v31 - 1) = v33;
                *(v31 - 2) = v32;
                v31 -= 2;
              }

              while (!__CFADD__(v30++, 1));
              ++v8;
              v28 += 2;
              --v29;
            }

            while (v8 != v92);
            v6 = v85;
            v7 = a3;
            v8 = v92;
            v10 = v88;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23007EA34(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v36 = *(v10 + 2);
      v35 = *(v10 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_23007EA34((v35 > 1), v36 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v37;
      v38 = &v10[16 * v36];
      *(v38 + 4) = v11;
      *(v38 + 5) = v8;
      v5 = *v90;
      if (!*v90)
      {
        goto LABEL_125;
      }

      v93 = v8;
      if (v36)
      {
        while (1)
        {
          v39 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v40 = *(v10 + 4);
            v41 = *(v10 + 5);
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_104;
            }

            v56 = &v10[16 * v37];
            v58 = *v56;
            v57 = *(v56 + 1);
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_107;
            }

            v62 = &v10[16 * v39 + 32];
            v64 = *v62;
            v63 = *(v62 + 1);
            v50 = __OFSUB__(v63, v64);
            v65 = v63 - v64;
            if (v50)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v60, v65))
            {
              goto LABEL_111;
            }

            if (v60 + v65 >= v42)
            {
              if (v42 < v65)
              {
                v39 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v66 = &v10[16 * v37];
          v68 = *v66;
          v67 = *(v66 + 1);
          v50 = __OFSUB__(v67, v68);
          v60 = v67 - v68;
          v61 = v50;
LABEL_71:
          if (v61)
          {
            goto LABEL_106;
          }

          v69 = &v10[16 * v39];
          v71 = *(v69 + 4);
          v70 = *(v69 + 5);
          v50 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v50)
          {
            goto LABEL_109;
          }

          if (v72 < v60)
          {
            goto LABEL_3;
          }

LABEL_78:
          v77 = v39 - 1;
          if (v39 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v78 = *&v10[16 * v77 + 32];
          v79 = *&v10[16 * v39 + 40];
          sub_230236968((*v7 + 16 * v78), (*v7 + 16 * *&v10[16 * v39 + 32]), (*v7 + 16 * v79), v5);
          if (v6)
          {
          }

          if (v79 < v78)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2302A36A0(v10);
          }

          if (v77 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v80 = &v10[16 * v77];
          *(v80 + 4) = v78;
          *(v80 + 5) = v79;
          result = sub_2302A3614(v39);
          v37 = *(v10 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v44 = &v10[16 * v37 + 32];
        v45 = *(v44 - 64);
        v46 = *(v44 - 56);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_102;
        }

        v49 = *(v44 - 48);
        v48 = *(v44 - 40);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_103;
        }

        v51 = &v10[16 * v37];
        v53 = *v51;
        v52 = *(v51 + 1);
        v50 = __OFSUB__(v52, v53);
        v54 = v52 - v53;
        if (v50)
        {
          goto LABEL_105;
        }

        v50 = __OFADD__(v42, v54);
        v55 = v42 + v54;
        if (v50)
        {
          goto LABEL_108;
        }

        if (v55 >= v47)
        {
          v73 = &v10[16 * v39 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v50 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v50)
          {
            goto LABEL_112;
          }

          if (v42 < v76)
          {
            v39 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v93;
      if (v93 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = v10;
  v10 = *v90;
  if (!*v90)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_2302A36A0(v5);
    v5 = result;
  }

  v81 = *(v5 + 16);
  if (v81 >= 2)
  {
    while (*v7)
    {
      v82 = *(v5 + 16 * v81);
      v83 = *(v5 + 16 * (v81 - 1) + 40);
      sub_230236968((*v7 + 16 * v82), (*v7 + 16 * *(v5 + 16 * (v81 - 1) + 32)), (*v7 + 16 * v83), v10);
      if (v6)
      {
      }

      if (v83 < v82)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2302A36A0(v5);
      }

      if (v81 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v84 = (v5 + 16 * v81);
      *v84 = v82;
      v84[1] = v83;
      result = sub_2302A3614(v81 - 1);
      v81 = *(v5 + 16);
      if (v81 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_230236968(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_2300A85F0();
LABEL_27:
      v20 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v17 -= 16;
        if (sub_230310588() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v20;
          }

          if (v14 <= v4 || (v6 -= 16, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_2300A85F0();
      while (sub_230310588() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t sub_230236BF8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 56);
  v39 = *(result + 48);
  v10 = *a3;

  result = sub_23005EE00(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_230088BEC(v15, i & 1);
    result = sub_23005EE00(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_2303112A8();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    v23 = (v18[7] + 16 * result);
    *v23 = v39;
    v23[1] = v9;
    v24 = v18[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v25;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v21 = result;
  sub_23008C2D4();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  v20 = (v18[7] + 16 * v19);
  *v20 = v39;
  v20[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 88); ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v3 = *(i - 1);
      v6 = *i;
      v28 = *a3;

      result = sub_23005EE00(v7, v9);
      v30 = v28[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        break;
      }

      v8 = v29;
      if (v28[3] < v32)
      {
        sub_230088BEC(v32, 1);
        result = sub_23005EE00(v7, v9);
        if ((v8 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      v34 = *a3;
      if (v8)
      {
        v26 = result;

        v27 = (v34[7] + 16 * v26);
        *v27 = v3;
        v27[1] = v6;
      }

      else
      {
        v34[(result >> 6) + 8] |= 1 << result;
        v35 = (v34[6] + 16 * result);
        *v35 = v7;
        v35[1] = v9;
        v36 = (v34[7] + 16 * result);
        *v36 = v3;
        v36[1] = v6;
        v37 = v34[2];
        v14 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v34[2] = v38;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_230236E94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6564756C636E69 && a2 == 0xE700000000000000;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564756C637865 && a2 == 0xE700000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_230236FB4()
{
  result = qword_280C992F8;
  if (!qword_280C992F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C992F8);
  }

  return result;
}

uint64_t sub_230237088(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2300E7CA0;

  return sub_230233204(a1, v5, v4);
}

uint64_t sub_230237134(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23009646C;

  return sub_2302333E8(a1, v5, v4);
}

uint64_t sub_230237200()
{
  v22 = v0;
  type metadata accessor for REMHashtagLabelDataView.AllHashtagLabelsInvocation();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C9CE0(v1, 1, v21);

  v3 = v21[0];
  v2 = v21[1];
  if (v21[0] >> 62)
  {
    goto LABEL_18;
  }

  sub_230311078();

  sub_23004CBA4(0, &qword_280C96EC0);

  v4 = v3;
  while (1)
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v0;
    if (!v5)
    {
      break;
    }

    while (1)
    {
      v6 = 0;
      v20 = v4 & 0xC000000000000001;
      v2 = (v4 & 0xFFFFFFFFFFFFFF8);
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v20)
        {
          v8 = MEMORY[0x231912650](v6, v3);
        }

        else
        {
          if (v6 >= v2[2])
          {
            goto LABEL_17;
          }

          v8 = *(v3 + 8 * v6 + 32);
        }

        v9 = v8;
        v0 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v8 name];
        v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v13 = v12;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_23007E928(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_23007E928((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        v16 = &v7[16 * v15];
        *(v16 + 4) = v11;
        *(v16 + 5) = v13;
        ++v6;
        if (v0 == v5)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      sub_23004CBA4(0, &qword_280C96EC0);

      v4 = sub_230310AF8();
      swift_bridgeObjectRelease_n();

      v3 = v4;
      if (!(v4 >> 62))
      {
        break;
      }

      v5 = sub_2303106D8();
      v19 = v0;
      if (!v5)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_20:
  v7 = MEMORY[0x277D84F90];
LABEL_21:

  v17 = *(v19 + 8);

  return v17(v7);
}

uint64_t sub_230237508()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v0[5] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    *v4 = v0;
    v4[1] = sub_230237770;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000034, 0x8000000230345600, sub_230237960, v2, v5);
  }

  else
  {
    if (qword_27DB13CA0 != -1)
    {
      swift_once();
    }

    v6 = sub_23030EF48();
    __swift_project_value_buffer(v6, qword_27DB17A98);
    v7 = sub_23030EF38();
    v8 = sub_230310288();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_230044000, v7, v8, "CSHashtagQuery is nil", v9, 2u);
      MEMORY[0x231914180](v9, -1, -1);
    }

    v10 = objc_opt_self();
    v11 = sub_23030F8B8();
    [v10 internalErrorWithDebugDescription_];

    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_230237770()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2302378F4;
  }

  else
  {

    v2 = sub_23023788C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23023788C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2302378F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230237968(uint64_t a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D60);

  return sub_230234360(a1, a2);
}

uint64_t sub_230237AA8()
{
  if (*v0)
  {
    return 0x6D656C626D65;
  }

  else
  {
    return 0x696A6F6D65;
  }
}

uint64_t sub_230237ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D656C626D65 && a2 == 0xE600000000000000)
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

uint64_t sub_230237BB0(uint64_t a1)
{
  v2 = sub_23023800C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230237BEC(uint64_t a1)
{
  v2 = sub_23023800C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230237C28(uint64_t a1)
{
  v2 = sub_230238060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230237C64(uint64_t a1)
{
  v2 = sub_230238060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230237CA0(uint64_t a1)
{
  v2 = sub_2302380B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230237CDC(uint64_t a1)
{
  v2 = sub_2302380B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSpotlightBadgeType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D68);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D70);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D78);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23023800C();
  sub_230311448();
  if (v13)
  {
    v26 = 1;
    sub_230238060();
    v14 = v20;
    sub_230310D48();
    v15 = v22;
    sub_230310DA8();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_2302380B4();
    sub_230310D48();
    v16 = v19;
    sub_230310DA8();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_23023800C()
{
  result = qword_27DB17D80;
  if (!qword_27DB17D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17D80);
  }

  return result;
}

unint64_t sub_230238060()
{
  result = qword_27DB17D88;
  if (!qword_27DB17D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17D88);
  }

  return result;
}

unint64_t sub_2302380B4()
{
  result = qword_27DB17D90;
  if (!qword_27DB17D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17D90);
  }

  return result;
}

uint64_t REMSpotlightBadgeType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D98);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17DA0);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17DA8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23023800C();
  v13 = v34;
  sub_230311428();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_230310D08();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_2300DB8E4();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_230310918();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v26 = &type metadata for REMSpotlightBadgeType;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_230238060();
        sub_230310C28();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_230310C98();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_2302380B4();
        v28 = v7;
        sub_230310C28();
        v19 = v33;
        v18 = v34;
        v21 = sub_230310C98();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

ReminderKitInternal::REMSpotlightAlarmProximity_optional __swiftcall REMSpotlightAlarmProximity.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2302387A0()
{
  if (*v0)
  {
    return 0x656C6369686576;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_2302387DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C6369686576 && a2 == 0xE700000000000000)
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

uint64_t sub_2302388B8(uint64_t a1)
{
  v2 = sub_230238F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302388F4(uint64_t a1)
{
  v2 = sub_230238F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230238930()
{
  if (*v0)
  {
    return 0x74696D69786F7270;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_230238968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079)
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

uint64_t sub_230238A4C(uint64_t a1)
{
  v2 = sub_230239024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230238A88(uint64_t a1)
{
  v2 = sub_230239024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230238AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
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

uint64_t sub_230238B5C(uint64_t a1)
{
  v2 = sub_230238F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230238B98(uint64_t a1)
{
  v2 = sub_230238F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSpotlightLocationType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17DB0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17DB8);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17DC0);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v19 - v10;
  v12 = v1[1];
  v24 = *v1;
  v21 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230238F28();
  sub_230311448();
  if (v13 < 0)
  {
    v32 = 1;
    sub_230238F7C();
    v14 = v26;
    sub_230310D48();
    v31 = v24;
    sub_230238FD0();
    v17 = v20;
    sub_230310DF8();
    (*(v19 + 8))(v5, v17);
  }

  else
  {
    v30 = 0;
    sub_230239024();
    v14 = v26;
    sub_230310D48();
    v29 = 0;
    v15 = v23;
    v16 = v25;
    sub_230310DA8();
    if (!v16)
    {
      v28 = v13;
      v27 = 1;
      sub_230239078();
      sub_230310DF8();
    }

    (*(v22 + 8))(v8, v15);
  }

  return (*(v9 + 8))(v11, v14);
}

unint64_t sub_230238F28()
{
  result = qword_27DB17DC8;
  if (!qword_27DB17DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17DC8);
  }

  return result;
}

unint64_t sub_230238F7C()
{
  result = qword_27DB17DD0;
  if (!qword_27DB17DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17DD0);
  }

  return result;
}

unint64_t sub_230238FD0()
{
  result = qword_27DB17DD8;
  if (!qword_27DB17DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17DD8);
  }

  return result;
}

unint64_t sub_230239024()
{
  result = qword_27DB17DE0;
  if (!qword_27DB17DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17DE0);
  }

  return result;
}

unint64_t sub_230239078()
{
  result = qword_27DB17DE8;
  if (!qword_27DB17DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17DE8);
  }

  return result;
}

uint64_t REMSpotlightLocationType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17DF0);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17DF8);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17E00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_230238F28();
  v15 = v39;
  sub_230311428();
  if (!v15)
  {
    v16 = v38;
    v39 = v11;
    v17 = sub_230310D08();
    v18 = (2 * *(v17 + 16)) | 1;
    v41 = v17;
    v42 = v17 + 32;
    v43 = 0;
    v44 = v18;
    v19 = sub_2300DB8E4();
    if (v19 == 2 || v43 != v44 >> 1)
    {
      v21 = sub_230310918();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v23 = &type metadata for REMSpotlightLocationType;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v39 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        v46 = 1;
        sub_230238F7C();
        sub_230310C28();
        v20 = v39;
        v26 = v16;
        sub_230239660();
        v27 = v35;
        sub_230310CE8();
        (*(v36 + 8))(v6, v27);
        (*(v20 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v28 = 0;
        v29 = v46;
        v30 = 0x80;
      }

      else
      {
        v46 = 0;
        sub_230239024();
        sub_230310C28();
        v25 = v39;
        v26 = v16;
        v31 = v13;
        v46 = 0;
        v32 = v7;
        v33 = sub_230310C98();
        v28 = v34;
        v36 = v33;
        v45 = 1;
        sub_2302396B4();
        sub_230310CE8();
        (*(v37 + 8))(v9, v32);
        (*(v25 + 8))(v31, v10);
        swift_unknownObjectRelease();
        v30 = v46;
        v29 = v36;
      }

      *v26 = v29;
      *(v26 + 8) = v28;
      *(v26 + 16) = v30;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

unint64_t sub_230239660()
{
  result = qword_27DB17E08;
  if (!qword_27DB17E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E08);
  }

  return result;
}

unint64_t sub_2302396B4()
{
  result = qword_27DB17E10;
  if (!qword_27DB17E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E10);
  }

  return result;
}

void *REMSpotlightColor.remColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t REMSpotlightColor.__allocating_init(remColor:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t REMSpotlightColor.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  REMSpotlightColor.init(from:)(a1);
  return v2;
}

uint64_t REMSpotlightColor.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17E18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230239A80();
  sub_230311428();
  if (v2)
  {
    type metadata accessor for REMSpotlightColor();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = type metadata accessor for REMColor_Codable();
    sub_23023C0CC(&qword_280C9AFE8, 255, type metadata accessor for REMColor_Codable);
    sub_230310C88();
    v11 = v18;
    if (!v18)
    {
      sub_2300819F0(a1, v17);
      v12 = sub_23023BE18(v17);
      v11 = [objc_allocWithZone(v9) initWithRed:2 green:0 blue:0 alpha:0 colorSpace:v12 daSymbolicColorName:v13 daHexString:v14 ckSymbolicColorName:v15];
    }

    (*(v6 + 8))(v8, v5);
    *(v3 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_230239A80()
{
  result = qword_27DB17E20;
  if (!qword_27DB17E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E20);
  }

  return result;
}

uint64_t sub_230239AF8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17E28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230239A80();
  sub_230311448();
  v9[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17E30);
  sub_23023C014();
  sub_230310DF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_230239C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F6C6F436D6572 && a2 == 0xE800000000000000)
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

uint64_t sub_230239CF8(uint64_t a1)
{
  v2 = sub_230239A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230239D34(uint64_t a1)
{
  v2 = sub_230239A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSpotlightColor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_230239DC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for REMSpotlightColor();
  v5 = swift_allocObject();
  result = REMSpotlightColor.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_230239E44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18050);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23023FC3C();
  sub_230311448();
  v12 = 0;
  sub_230310DC8();
  if (!v1)
  {
    v11 = 1;
    sub_230310DC8();
    v10 = 2;
    sub_230310DC8();
    v9 = 3;
    sub_230310DC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23023A01C()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_23023A07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23023F548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23023A0A4(uint64_t a1)
{
  v2 = sub_23023FC3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23023A0E0(uint64_t a1)
{
  v2 = sub_23023FC3C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23023A11C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23023BE18(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t REMSpotlightReminderViewProxy.notes.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t REMSpotlightReminderViewProxy.locationType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_23023C114(v2, v3, v4);
}

uint64_t REMSpotlightReminderViewProxy.reminderID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for REMSpotlightReminderViewProxy(0) + 40);

  return sub_2300BB860(v3, a1);
}

uint64_t REMSpotlightReminderViewProxy.init(priority:flagged:hasAttachment:notes:hashtags:locationType:reminderID:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *(a7 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 9) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = *a7;
  *(a9 + 56) = v11;
  v12 = a9 + *(type metadata accessor for REMSpotlightReminderViewProxy(0) + 40);

  return sub_23010E78C(a8, v12);
}

uint64_t sub_23023A280()
{
  v1 = *v0;
  v2 = 0x797469726F697270;
  v3 = 0x6E6F697461636F6CLL;
  if (v1 != 5)
  {
    v3 = 0x7265646E696D6572;
  }

  v4 = 0x7365746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x7367617468736168;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64656767616C66;
  if (v1 != 1)
  {
    v5 = 0x6361747441736168;
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

uint64_t sub_23023A370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23023F6A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23023A398(uint64_t a1)
{
  v2 = sub_23023C158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23023A3D4(uint64_t a1)
{
  v2 = sub_23023C158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSpotlightReminderViewProxy.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17E40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23023C158();
  sub_230311448();
  LOBYTE(v13) = 0;
  sub_230310DE8();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_230310DB8();
    LOBYTE(v13) = 2;
    sub_230310DB8();
    LOBYTE(v13) = 3;
    sub_230310D58();
    v13 = *(v3 + 32);
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230059F7C(&qword_280C96EE8);
    sub_230310D98();
    v9 = *(v3 + 48);
    v10 = *(v3 + 56);
    v13 = *(v3 + 40);
    v14 = v9;
    v15 = v10;
    v16 = 5;
    sub_23023C114(v13, v9, v10);
    sub_23023C1AC();
    sub_230310D98();
    sub_23023C200(v13, v14, v15);
    type metadata accessor for REMSpotlightReminderViewProxy(0);
    LOBYTE(v13) = 6;
    sub_23030EBB8();
    sub_23023C0CC(&unk_280C9C408, 255, MEMORY[0x277CC95F0]);
    sub_230310D98();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMSpotlightReminderViewProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17E58);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = v21 - v8;
  v10 = type metadata accessor for REMSpotlightReminderViewProxy(0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_23023C158();
  v24 = v9;
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v14 = v6;
  LOBYTE(v26) = 0;
  v15 = v23;
  v16 = v12;
  *v12 = sub_230310CD8();
  LOBYTE(v26) = 1;
  v12[8] = sub_230310CA8() & 1;
  LOBYTE(v26) = 2;
  v12[9] = sub_230310CA8() & 1;
  LOBYTE(v26) = 3;
  *(v12 + 2) = sub_230310C48();
  *(v12 + 3) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  v28 = 4;
  sub_230059F7C(&qword_280C98850);
  sub_230310C88();
  v21[1] = v26;
  *(v12 + 4) = v26;
  v28 = 5;
  sub_23023C224();
  sub_230310C88();
  v18 = v27;
  *(v12 + 40) = v26;
  v12[56] = v18;
  sub_23030EBB8();
  LOBYTE(v26) = 6;
  sub_23023C0CC(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
  v19 = v24;
  sub_230310C88();
  (*(v7 + 8))(v19, v15);
  sub_23010E78C(v14, v16 + *(v10 + 40));
  sub_23023C394(v16, v22, type metadata accessor for REMSpotlightReminderViewProxy);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_23023C3FC(v16, type metadata accessor for REMSpotlightReminderViewProxy);
}

uint64_t sub_23023AC1C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23023AC54@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_23023C114(v2, v3, v4);
}

uint64_t REMSpotlightListViewProxy.init(badgeType:color:listID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = a2;
  v7 = a4 + *(type metadata accessor for REMSpotlightListViewProxy(0) + 24);

  return sub_23010E78C(a3, v7);
}

uint64_t sub_23023AD28()
{
  v1 = 0x726F6C6F63;
  if (*v0 != 1)
  {
    v1 = 0x44497473696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7079546567646162;
  }
}

uint64_t sub_23023AD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23023F8FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23023ADA8(uint64_t a1)
{
  v2 = sub_23023C298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23023ADE4(uint64_t a1)
{
  v2 = sub_23023C298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSpotlightListViewProxy.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17E68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23023C298();
  sub_230311448();
  v9 = v3[1];
  v10 = *(v3 + 16);
  v14 = *v3;
  v15 = v9;
  v16 = v10;
  HIBYTE(v13) = 0;
  sub_230124A00();
  sub_23023C2EC();
  sub_230310DF8();
  sub_230124A18();
  if (!v2)
  {
    v14 = v3[3];
    HIBYTE(v13) = 1;
    type metadata accessor for REMSpotlightColor();
    sub_23023C0CC(&qword_27DB17E80, v11, type metadata accessor for REMSpotlightColor);
    sub_230310DF8();
    type metadata accessor for REMSpotlightListViewProxy(0);
    LOBYTE(v14) = 2;
    sub_23030EBB8();
    sub_23023C0CC(&unk_280C9C408, 255, MEMORY[0x277CC95F0]);
    sub_230310D98();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMSpotlightListViewProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17E88);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for REMSpotlightListViewProxy(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23023C298();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v13 = v12;
  v14 = v21;
  v25 = 0;
  sub_23023C340();
  v15 = v22;
  sub_230310CE8();
  v16 = v24;
  *v13 = v23;
  *(v13 + 16) = v16;
  type metadata accessor for REMSpotlightColor();
  v25 = 1;
  sub_23023C0CC(&qword_27DB17E98, v17, type metadata accessor for REMSpotlightColor);
  sub_230310CE8();
  *(v13 + 24) = v23;
  sub_23030EBB8();
  LOBYTE(v23) = 2;
  sub_23023C0CC(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
  sub_230310C88();
  (*(v14 + 8))(v9, v15);
  sub_23010E78C(v6, v13 + *(v19 + 24));
  sub_23023C394(v13, v20, type metadata accessor for REMSpotlightListViewProxy);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23023C3FC(v13, type metadata accessor for REMSpotlightListViewProxy);
}

uint64_t _s19ReminderKitInternal25REMSpotlightListViewProxyV9badgeTypeAA0d5BadgeI0Ovg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_230124A00();
}

uint64_t sub_23023B49C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);

  return sub_2300BB860(v4, a2);
}

uint64_t REMSpotlightSectionViewProxy.listDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for REMSpotlightSectionViewProxy(0) + 28));

  return v1;
}

uint64_t REMSpotlightSectionViewProxy.init(badgeType:color:sectionID:listDisplayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v10;
  *(a6 + 24) = a2;
  v11 = type metadata accessor for REMSpotlightSectionViewProxy(0);
  result = sub_23010E78C(a3, a6 + *(v11 + 24));
  v13 = (a6 + *(v11 + 28));
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t sub_23023B5A0()
{
  v1 = 0x7079546567646162;
  v2 = 0x496E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0x707369447473696CLL;
  }

  if (*v0)
  {
    v1 = 0x726F6C6F63;
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

uint64_t sub_23023B62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23023FA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23023B654(uint64_t a1)
{
  v2 = sub_23023C47C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23023B690(uint64_t a1)
{
  v2 = sub_23023C47C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSpotlightSectionViewProxy.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17EA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23023C47C();
  sub_230311448();
  v9 = v3[1];
  v10 = *(v3 + 16);
  v14 = *v3;
  v15 = v9;
  v16 = v10;
  HIBYTE(v13) = 0;
  sub_230124A00();
  sub_23023C2EC();
  sub_230310DF8();
  sub_230124A18();
  if (!v2)
  {
    v14 = v3[3];
    HIBYTE(v13) = 1;
    type metadata accessor for REMSpotlightColor();
    sub_23023C0CC(&qword_27DB17E80, v11, type metadata accessor for REMSpotlightColor);
    sub_230310DF8();
    type metadata accessor for REMSpotlightSectionViewProxy(0);
    LOBYTE(v14) = 2;
    sub_23030EBB8();
    sub_23023C0CC(&unk_280C9C408, 255, MEMORY[0x277CC95F0]);
    sub_230310D98();
    LOBYTE(v14) = 3;
    sub_230310D58();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMSpotlightSectionViewProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17EB0);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for REMSpotlightSectionViewProxy(0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23023C47C();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v6;
  v13 = v27;
  v14 = v12;
  v31 = 0;
  sub_23023C340();
  v15 = v28;
  sub_230310CE8();
  v16 = v30;
  *v14 = v29;
  *(v14 + 16) = v16;
  type metadata accessor for REMSpotlightColor();
  v31 = 1;
  sub_23023C0CC(&qword_27DB17E98, v17, type metadata accessor for REMSpotlightColor);
  sub_230310CE8();
  *(v14 + 24) = v29;
  sub_23030EBB8();
  LOBYTE(v29) = 2;
  sub_23023C0CC(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
  v18 = v25;
  v24[1] = 0;
  sub_230310C88();
  sub_23010E78C(v18, v14 + *(v10 + 24));
  LOBYTE(v29) = 3;
  v19 = sub_230310C48();
  v21 = v20;
  (*(v13 + 8))(v9, v15);
  v22 = (v14 + *(v10 + 28));
  *v22 = v19;
  v22[1] = v21;
  sub_23023C394(v14, v26, type metadata accessor for REMSpotlightSectionViewProxy);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23023C3FC(v14, type metadata accessor for REMSpotlightSectionViewProxy);
}

uint64_t sub_23023BDB0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

double sub_23023BE18(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18028);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23023FC3C();
  sub_230311428();
  v9[15] = 0;
  sub_230310CB8();
  v7 = v6;
  v9[14] = 1;
  sub_230310CB8();
  v9[13] = 2;
  sub_230310CB8();
  v9[12] = 3;
  sub_230310CB8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_23023C014()
{
  result = qword_27DB17E38;
  if (!qword_27DB17E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17E30);
    sub_23023C0CC(&qword_280C9AFF0, 255, type metadata accessor for REMColor_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E38);
  }

  return result;
}

uint64_t sub_23023C0CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23023C114(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_23023C128(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_23023C128(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

unint64_t sub_23023C158()
{
  result = qword_27DB17E48;
  if (!qword_27DB17E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E48);
  }

  return result;
}

unint64_t sub_23023C1AC()
{
  result = qword_27DB17E50;
  if (!qword_27DB17E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E50);
  }

  return result;
}

uint64_t sub_23023C200(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_23023C214(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_23023C214(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
  }

  return result;
}

unint64_t sub_23023C224()
{
  result = qword_27DB17E60;
  if (!qword_27DB17E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E60);
  }

  return result;
}

unint64_t sub_23023C298()
{
  result = qword_27DB17E70;
  if (!qword_27DB17E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E70);
  }

  return result;
}

unint64_t sub_23023C2EC()
{
  result = qword_27DB17E78;
  if (!qword_27DB17E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E78);
  }

  return result;
}

unint64_t sub_23023C340()
{
  result = qword_27DB17E90;
  if (!qword_27DB17E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17E90);
  }

  return result;
}

uint64_t sub_23023C394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23023C3FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23023C47C()
{
  result = qword_27DB17EA8;
  if (!qword_27DB17EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17EA8);
  }

  return result;
}

unint64_t sub_23023C4D4()
{
  result = qword_27DB17EB8;
  if (!qword_27DB17EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17EB8);
  }

  return result;
}

unint64_t sub_23023C52C()
{
  result = qword_27DB17EC0;
  if (!qword_27DB17EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17EC0);
  }

  return result;
}

uint64_t sub_23023C580(uint64_t a1)
{
  *(a1 + 8) = sub_23023C0CC(&qword_27DB17EC8, 255, type metadata accessor for REMSpotlightReminderViewProxy);
  result = sub_23023C0CC(&qword_27DB17ED0, 255, type metadata accessor for REMSpotlightReminderViewProxy);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23023C60C(uint64_t a1)
{
  *(a1 + 8) = sub_23023C0CC(&qword_27DB17ED8, 255, type metadata accessor for REMSpotlightListViewProxy);
  result = sub_23023C0CC(&qword_27DB17EE0, 255, type metadata accessor for REMSpotlightListViewProxy);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23023C698(uint64_t a1)
{
  *(a1 + 8) = sub_23023C0CC(&qword_27DB17EE8, 255, type metadata accessor for REMSpotlightSectionViewProxy);
  result = sub_23023C0CC(&qword_27DB17EF0, 255, type metadata accessor for REMSpotlightSectionViewProxy);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23023C764(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_23023C128(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMSpotlightLocationType(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_23023C128(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_23023C214(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMSpotlightLocationType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_23023C214(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSpotlightLocationType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for REMSpotlightLocationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for REMSpotlightReminderViewProxy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = v9 + ((v5 + 16) & ~v5);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 4);
    v7 = a2[3];
    *(v4 + 16) = a2[2];
    *(v4 + 24) = v7;
    *(v4 + 32) = a2[4];
    v8 = *(a2 + 56);

    if (v8 <= 0xFB)
    {
      v10 = a2[5];
      v11 = a2[6];
      sub_23023C128(v10, v11, v8);
      *(v4 + 40) = v10;
      *(v4 + 48) = v11;
      *(v4 + 56) = v8;
    }

    else
    {
      *(v4 + 40) = *(a2 + 5);
      *(v4 + 56) = *(a2 + 56);
    }

    v12 = *(a3 + 40);
    v13 = sub_23030EBB8();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy((v4 + v12), a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(v4 + v12, a2 + v12, v13);
      (*(v14 + 56))(v4 + v12, 0, 1, v13);
    }
  }

  return v4;
}

uint64_t destroy for REMSpotlightReminderViewProxy(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 56);
  if (v4 <= 0xFB)
  {
    sub_23023C214(*(a1 + 40), *(a1 + 48), v4);
  }

  v5 = *(a2 + 40);
  v6 = sub_23030EBB8();
  v9 = *(v6 - 8);
  result = (*(v9 + 48))(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v5, v6);
  }

  return result;
}

uint64_t initializeWithCopy for REMSpotlightReminderViewProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 56);

  if (v7 <= 0xFB)
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    sub_23023C128(v8, v9, v7);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v7;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v10 = *(a3 + 40);
  v11 = sub_23030EBB8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithCopy for REMSpotlightReminderViewProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  v6 = *(a2 + 56);
  if (*(a1 + 56) <= 0xFBu)
  {
    if (v6 <= 0xFB)
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      sub_23023C128(v11, v12, *(a2 + 56));
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      *(a1 + 40) = v11;
      *(a1 + 48) = v12;
      v15 = *(a1 + 56);
      *(a1 + 56) = v6;
      sub_23023C214(v13, v14, v15);
    }

    else
    {
      sub_23023D138(a1 + 40);
      v8 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v8;
    }
  }

  else if (v6 <= 0xFB)
  {
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    sub_23023C128(v9, v10, *(a2 + 56));
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v6;
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v7;
  }

  v16 = *(a3 + 40);
  v17 = sub_23030EBB8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(a1 + v16, 1, v17);
  v21 = v19(a2 + v16, 1, v17);
  if (!v20)
  {
    if (!v21)
    {
      (*(v18 + 24))(a1 + v16, a2 + v16, v17);
      return a1;
    }

    (*(v18 + 8))(a1 + v16, v17);
    goto LABEL_13;
  }

  if (v21)
  {
LABEL_13:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v16), (a2 + v16), *(*(v22 - 8) + 64));
    return a1;
  }

  (*(v18 + 16))(a1 + v16, a2 + v16, v17);
  (*(v18 + 56))(a1 + v16, 0, 1, v17);
  return a1;
}

uint64_t initializeWithTake for REMSpotlightReminderViewProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a3 + 40);
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for REMSpotlightReminderViewProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);

  v7 = *(a1 + 56);
  if (v7 > 0xFB)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 56);
  if (v8 > 0xFB)
  {
    sub_23023D138(a1 + 40);
LABEL_4:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_6;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v8;
  sub_23023C214(v9, v10, v7);
LABEL_6:
  v11 = *(a3 + 40);
  v12 = sub_23030EBB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(a1 + v11, 1, v12);
  v16 = v14(a2 + v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      (*(v13 + 40))(a1 + v11, a2 + v11, v12);
      return a1;
    }

    (*(v13 + 8))(a1 + v11, v12);
    goto LABEL_11;
  }

  if (v16)
  {
LABEL_11:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v11), (a2 + v11), *(*(v17 - 8) + 64));
    return a1;
  }

  (*(v13 + 32))(a1 + v11, a2 + v11, v12);
  (*(v13 + 56))(a1 + v11, 0, 1, v12);
  return a1;
}

void sub_23023D4DC()
{
  sub_2301072D4();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for REMSpotlightListViewProxy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = v15 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = *(a2 + 16);
    sub_230124A00();
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = a2[3];
    v10 = *(a3 + 24);
    v11 = sub_23030EBB8();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);

    if (v13(a2 + v10, 1, v11))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy((a1 + v10), a2 + v10, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(a1 + v10, a2 + v10, v11);
      (*(v12 + 56))(a1 + v10, 0, 1, v11);
    }
  }

  return a1;
}

uint64_t destroy for REMSpotlightListViewProxy(uint64_t a1, uint64_t a2)
{
  sub_230124A18();

  v4 = *(a2 + 24);
  v5 = sub_23030EBB8();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t initializeWithCopy for REMSpotlightListViewProxy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  sub_230124A00();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = a2[3];
  v9 = *(a3 + 24);
  v10 = sub_23030EBB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);

  if (v12(a2 + v9, 1, v10))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v9), a2 + v9, *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(a1 + v9, a2 + v9, v10);
    (*(v11 + 56))(a1 + v9, 0, 1, v10);
  }

  return a1;
}

uint64_t assignWithCopy for REMSpotlightListViewProxy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  sub_230124A00();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  sub_230124A18();
  *(a1 + 24) = a2[3];

  v9 = *(a3 + 24);
  v10 = sub_23030EBB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v6) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (!v6)
  {
    if (!v13)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v9), a2 + v9, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

uint64_t initializeWithTake for REMSpotlightListViewProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a3 + 24);
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2 + v5, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v5), (a2 + v5), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for REMSpotlightListViewProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  sub_230124A18();
  *(a1 + 24) = *(a2 + 24);

  v7 = *(a3 + 24);
  v8 = sub_23030EBB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_23023DE44()
{
  sub_2301072D4();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for REMSpotlightSectionViewProxy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = v15 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = *(a2 + 16);
    sub_230124A00();
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = a2[3];
    v10 = *(a3 + 24);
    v11 = sub_23030EBB8();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);

    if (v13(a2 + v10, 1, v11))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy((a1 + v10), a2 + v10, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(a1 + v10, a2 + v10, v11);
      (*(v12 + 56))(a1 + v10, 0, 1, v11);
    }

    v16 = *(a3 + 28);
    v17 = (a1 + v16);
    v18 = (a2 + v16);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
  }

  return a1;
}

uint64_t destroy for REMSpotlightSectionViewProxy(uint64_t a1, uint64_t a2)
{
  sub_230124A18();

  v4 = *(a2 + 24);
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }
}

uint64_t initializeWithCopy for REMSpotlightSectionViewProxy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  sub_230124A00();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = a2[3];
  v9 = *(a3 + 24);
  v10 = sub_23030EBB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);

  if (v12(a2 + v9, 1, v10))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v9), a2 + v9, *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(a1 + v9, a2 + v9, v10);
    (*(v11 + 56))(a1 + v9, 0, 1, v10);
  }

  v14 = *(a3 + 28);
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  return a1;
}

uint64_t assignWithCopy for REMSpotlightSectionViewProxy(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  sub_230124A00();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  sub_230124A18();
  *(a1 + 24) = a2[3];

  v9 = *(a3 + 24);
  v10 = sub_23030EBB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v7) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (!v7)
  {
    if (!v13)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v9), a2 + v9, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v15 = *(a3 + 28);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  *v16 = *v17;
  v16[1] = v17[1];

  return a1;
}

uint64_t initializeWithTake for REMSpotlightSectionViewProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a3 + 24);
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithTake for REMSpotlightSectionViewProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  sub_230124A18();
  *(a1 + 24) = *(a2 + 24);

  v7 = *(a3 + 24);
  v8 = sub_23030EBB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy((a1 + v7), (a2 + v7), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
LABEL_7:
  v14 = *(a3 + 28);
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v18 = *v16;
  v17 = v16[1];
  *v15 = v18;
  v15[1] = v17;

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_17Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23023E9AC()
{
  sub_2301072D4();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t sub_23023EAFC()
{
  result = qword_27DB17F28;
  if (!qword_27DB17F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F28);
  }

  return result;
}

unint64_t sub_23023EB54()
{
  result = qword_27DB17F30;
  if (!qword_27DB17F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F30);
  }

  return result;
}

unint64_t sub_23023EBAC()
{
  result = qword_27DB17F38;
  if (!qword_27DB17F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F38);
  }

  return result;
}

unint64_t sub_23023EC04()
{
  result = qword_27DB17F40;
  if (!qword_27DB17F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F40);
  }

  return result;
}

unint64_t sub_23023EC5C()
{
  result = qword_27DB17F48;
  if (!qword_27DB17F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F48);
  }

  return result;
}

unint64_t sub_23023ECB4()
{
  result = qword_27DB17F50;
  if (!qword_27DB17F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F50);
  }

  return result;
}

unint64_t sub_23023ED0C()
{
  result = qword_27DB17F58;
  if (!qword_27DB17F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F58);
  }

  return result;
}

unint64_t sub_23023ED64()
{
  result = qword_27DB17F60;
  if (!qword_27DB17F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F60);
  }

  return result;
}

unint64_t sub_23023EDBC()
{
  result = qword_27DB17F68;
  if (!qword_27DB17F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F68);
  }

  return result;
}

unint64_t sub_23023EE14()
{
  result = qword_27DB17F70;
  if (!qword_27DB17F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F70);
  }

  return result;
}

unint64_t sub_23023EE6C()
{
  result = qword_27DB17F78;
  if (!qword_27DB17F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F78);
  }

  return result;
}

unint64_t sub_23023EEC4()
{
  result = qword_27DB17F80;
  if (!qword_27DB17F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F80);
  }

  return result;
}

unint64_t sub_23023EF1C()
{
  result = qword_27DB17F88;
  if (!qword_27DB17F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F88);
  }

  return result;
}

unint64_t sub_23023EF74()
{
  result = qword_27DB17F90;
  if (!qword_27DB17F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F90);
  }

  return result;
}

unint64_t sub_23023EFCC()
{
  result = qword_27DB17F98;
  if (!qword_27DB17F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17F98);
  }

  return result;
}

unint64_t sub_23023F024()
{
  result = qword_27DB17FA0;
  if (!qword_27DB17FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FA0);
  }

  return result;
}

unint64_t sub_23023F07C()
{
  result = qword_27DB17FA8;
  if (!qword_27DB17FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FA8);
  }

  return result;
}

unint64_t sub_23023F0D4()
{
  result = qword_27DB17FB0;
  if (!qword_27DB17FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FB0);
  }

  return result;
}

unint64_t sub_23023F12C()
{
  result = qword_27DB17FB8;
  if (!qword_27DB17FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FB8);
  }

  return result;
}

unint64_t sub_23023F184()
{
  result = qword_27DB17FC0;
  if (!qword_27DB17FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FC0);
  }

  return result;
}

unint64_t sub_23023F1DC()
{
  result = qword_27DB17FC8;
  if (!qword_27DB17FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FC8);
  }

  return result;
}

unint64_t sub_23023F234()
{
  result = qword_27DB17FD0;
  if (!qword_27DB17FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FD0);
  }

  return result;
}

unint64_t sub_23023F28C()
{
  result = qword_27DB17FD8;
  if (!qword_27DB17FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FD8);
  }

  return result;
}

unint64_t sub_23023F2E4()
{
  result = qword_27DB17FE0;
  if (!qword_27DB17FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FE0);
  }

  return result;
}

unint64_t sub_23023F33C()
{
  result = qword_27DB17FE8;
  if (!qword_27DB17FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FE8);
  }

  return result;
}

unint64_t sub_23023F394()
{
  result = qword_27DB17FF0;
  if (!qword_27DB17FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FF0);
  }

  return result;
}

unint64_t sub_23023F3EC()
{
  result = qword_27DB17FF8;
  if (!qword_27DB17FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17FF8);
  }

  return result;
}

unint64_t sub_23023F444()
{
  result = qword_27DB18000;
  if (!qword_27DB18000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18000);
  }

  return result;
}

unint64_t sub_23023F49C()
{
  result = qword_27DB18008;
  if (!qword_27DB18008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18008);
  }

  return result;
}

unint64_t sub_23023F4F4()
{
  result = qword_27DB18010;
  if (!qword_27DB18010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18010);
  }

  return result;
}

uint64_t sub_23023F548(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23023F6A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656767616C66 && a2 == 0xE700000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361747441736168 && a2 == 0xED0000746E656D68 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7367617468736168 && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (sub_230311048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEA00000000004449)
  {

    return 6;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_23023F8FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546567646162 && a2 == 0xE900000000000065;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497473696CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23023FA14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7079546567646162 && a2 == 0xE900000000000065 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707369447473696CLL && a2 == 0xEF656D614E79616CLL)
  {

    return 3;
  }

  else
  {
    v5 = sub_230311048();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_23023FB94()
{
  result = qword_27DB18018;
  if (!qword_27DB18018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18018);
  }

  return result;
}

unint64_t sub_23023FBE8()
{
  result = qword_27DB18020;
  if (!qword_27DB18020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18020);
  }

  return result;
}

unint64_t sub_23023FC3C()
{
  result = qword_27DB18030;
  if (!qword_27DB18030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSpotlightColor_Legacy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REMSpotlightColor_Legacy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_23023FD00()
{
  result = qword_27DB18038;
  if (!qword_27DB18038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18038);
  }

  return result;
}

unint64_t sub_23023FD58()
{
  result = qword_27DB18040;
  if (!qword_27DB18040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18040);
  }

  return result;
}

unint64_t sub_23023FDB0()
{
  result = qword_27DB18048;
  if (!qword_27DB18048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18048);
  }

  return result;
}

Swift::Int __swiftcall ExtendedDiff.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ExtendedDiff.source.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t (*sub_23023FE9C(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 32);
    if (v3 < *(v4 + 16))
    {
      v5 = v4 + 24 * v3;
      v6 = *(v5 + 48);
      *result = *(v5 + 32);
      *(result + 16) = v6;
      return nullsub_1;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_23023FEF8@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], v5 = v2[4], *(v5 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[5];
    v8 = v2[2];
    v7 = v2[3];
    v9 = v2[1];
    a2[2] = *v2;
    a2[3] = v9;
    a2[4] = v8;
    a2[5] = v7;
    a2[6] = v5;
    a2[7] = v6;
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_23023FF98@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  v8 = *(v7 + 16);
  a1[6] = 0;
  a1[7] = v8;
}

uint64_t sub_230240030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_230240B8C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

__n128 sub_230240068@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = 0;
  return result;
}

void *sub_230240080()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = v0[2];
  v2 = sub_23009D468(v4);
  sub_230240B58(v4);
  return v2;
}

uint64_t Collection.extendedDiff(_:identitiesEqual:contentsEqual:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  Collection.diff(_:identitiesEqual:contentsEqual:)(a1, a2, a3, a4, a5, a6, a7, v18);
  v17[0] = v18[0];
  v17[1] = v18[1];
  Collection.extendedDiff(from:other:identitiesEqual:contentsEqual:)(v17, a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t Collection.firstMatch(_:dirtyIndices:candidate:candidateIndex:other:isEqual:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(char *, char *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = *result;
  v10 = *(*result + 16);
  if (v10 >= v8)
  {
    if (v8 == v10)
    {
LABEL_4:
      *a8 = 0u;
      *(a8 + 16) = 0u;
      *(a8 + 32) = 2;
      return result;
    }

    v22 = *a3;
    v13 = a2 + 56;
    v14 = *(a3 + 16);
    while (v8 < v10)
    {
      if (*(a2 + 16) && (result = sub_230311348(), v15 = -1 << *(a2 + 32), v16 = result & ~v15, ((*(v13 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        while (*(*(a2 + 48) + 8 * v16) != v8)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v13 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        if (v8 < 0)
        {
          goto LABEL_19;
        }

        if (v8 >= *(v9 + 16))
        {
          goto LABEL_20;
        }

        v18 = v9 + 32 + 24 * v8;
        v19 = *(v18 + 16);
        v27 = v22;
        v28 = v14;
        v25 = *v18;
        v26 = v19;
        result = Collection.createMatch(_:match:other:isEqual:)(&v27, &v25, a5, a6, a7, &v29);
        v20 = v30;
        if ((v30 & 0xFF00) != 0x200)
        {
          *a8 = v29;
          *(a8 + 16) = v20;
          *(a8 + 24) = v8;
          *(a8 + 32) = HIBYTE(v20) & 1;
          return result;
        }
      }

      if (++v8 == v10)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t Collection.createMatch(_:match:other:isEqual:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29[2] = a5;
  v30 = a4;
  v29[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = v29 - v15;
  v17 = *a1;
  v18 = *(a1 + 16);
  v19 = *a2;
  v20 = *(a2 + 16);
  if (!v18)
  {
    if (v20 == 1)
    {
      v26 = result;
      sub_23006AEDC(v29 - v15);
      sub_23006AEDC(v13);
      v27 = v30(v16, v13);
      v28 = *(v10 + 8);
      v28(v13, v26);
      result = (v28)(v16, v26);
      if (v27)
      {
        *a6 = v19;
        *(a6 + 8) = v17;
        v25 = 3;
        goto LABEL_13;
      }
    }

LABEL_12:
    *a6 = 0;
    *(a6 + 8) = 0;
    v25 = 512;
    goto LABEL_13;
  }

  if (v18 != 1 || v20 != 0)
  {
    goto LABEL_12;
  }

  v22 = result;
  sub_23006AEDC(v29 - v15);
  sub_23006AEDC(v13);
  v23 = v30(v16, v13);
  v24 = *(v10 + 8);
  v24(v13, v22);
  result = (v24)(v16, v22);
  if ((v23 & 1) == 0)
  {
    goto LABEL_12;
  }

  *a6 = v17;
  *(a6 + 8) = v19;
  v25 = 259;
LABEL_13:
  *(a6 + 16) = v25;
  return result;
}

uint64_t sub_2302405C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (((*(v2 + 32))() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    return v5(a1, a2) & 1;
  }

  return 1;
}

uint64_t ExtendedDiff.Element.debugDescription.getter()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      v2 = 10325;
    }

    else
    {
      v2 = 10317;
    }

    v6 = v2;
    v3 = sub_230310E58();
    MEMORY[0x231911790](v3);

    MEMORY[0x231911790](44, 0xE100000000000000);
  }

  else
  {
    if (*(v0 + 16))
    {
      v1 = 10308;
    }

    else
    {
      v1 = 10313;
    }

    v6 = v1;
  }

  v4 = sub_230310E58();
  MEMORY[0x231911790](v4);

  MEMORY[0x231911790](41, 0xE100000000000000);
  return v6;
}

unint64_t sub_23024075C(uint64_t a1)
{
  result = sub_230240784();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_230240784()
{
  result = qword_27DB18058;
  if (!qword_27DB18058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18058);
  }

  return result;
}

unint64_t sub_2302407DC()
{
  result = qword_27DB18060;
  if (!qword_27DB18060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18060);
  }

  return result;
}

void *initializeWithCopy for ExtendedDiff(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

void *assignWithCopy for ExtendedDiff(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  return a1;
}

_OWORD *assignWithTake for ExtendedDiff(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for ExtendedDiff(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ExtendedDiff(uint64_t result, int a2, int a3)
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

uint64_t sub_230240B8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

void *sub_230240C60(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = *(v5 + 64);
  v9 = ((v7 + 8) & ~v7) + v8;
  if (v9 <= ((v9 + v7) & ~v7) + v8)
  {
    v9 = ((v9 + v6) & ~v6) + v8;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = v6 & 0x100000;
  v12 = v7 <= 7 && v11 == 0;
  if (v12 && (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    v13 = *(a2 + v10);
    v14 = v13 - 3;
    if (v13 < 3)
    {
      goto LABEL_29;
    }

    if (v10 <= 3)
    {
      v15 = v10;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
        if (v10 >= 4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a2 | (*(a2 + 2) << 16);
          if (v10 < 4)
          {
            goto LABEL_28;
          }

LABEL_26:
          v13 = v16 + 3;
          goto LABEL_29;
        }

        v16 = *a2;
        if (v10 >= 4)
        {
          goto LABEL_26;
        }
      }

LABEL_28:
      v13 = (v16 | (v14 << (8 * v10))) + 3;
LABEL_29:
      v18 = ~v7;
      v19 = v10 + 1;
      *a1 = *a2;
      if (v13 == 2)
      {
        v27 = a2;
        v21 = (a2 + v7 + 8) & v18;
        v22 = *(v5 + 16);
        v22();
        (v22)((v8 + v7 + ((v3 + v7 + 8) & v18)) & v18, (v8 + v7 + v21) & v18, v4);
        a2 = v27;
        v20 = 2;
      }

      else
      {
        if (v13 != 1)
        {
          v23 = a2;
          (*(v5 + 16))((a1 + v7 + 8) & v18, (a2 + v7 + 8) & v18, v4);
          a2 = v23;
          *(v3 + v10) = 0;
          goto LABEL_35;
        }

        v20 = 1;
      }

      *(v3 + v10) = v20;
LABEL_35:
      v24 = ((v3 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
      v25 = ((a2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v24 = *v25;
      *((v24 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
      return v3;
    }

    if (!v15)
    {
      goto LABEL_29;
    }

    v16 = *a2;
    if (v10 < 4)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v17 = *a2;
  *v3 = *a2;
  v3 = (v17 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));

  return v3;
}

void *sub_230240EFC(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v6 + 8) & ~v6) + v7;
  if (v8 <= ((v8 + v6) & ~v6) + v7)
  {
    v8 = ((v8 + v6) & ~v6) + v7;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_20:
  v15 = ~v6;
  *result = *a2;
  if (v10 == 2)
  {
    v17 = (result + v6 + 8) & v15;
    v18 = &a2[v6 + 8] & v15;
    v19 = *(v5 + 16);
    v23 = result;
    v19(v17, v18, v4);
    v19((v7 + v6 + v17) & v15, (v7 + v6 + v18) & v15, v4);
    result = v23;
    v16 = 2;
  }

  else
  {
    if (v10 != 1)
    {
      v20 = result;
      (*(v5 + 16))((result + v6 + 8) & v15, &a2[v6 + 8] & v15, v4);
      result = v20;
      *(v20 + v9) = 0;
      goto LABEL_26;
    }

    v16 = 1;
  }

  *(result + v9) = v16;
LABEL_26:
  v21 = ((result + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (&a2[v9 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  *((v21 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  return result;
}

unsigned __int16 *sub_230241124(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 == a2)
  {
    goto LABEL_49;
  }

  v7 = *(*(a3 + 16) - 8);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v8 + 8) & ~v8) + v9;
  v38 = v9;
  if (v10 <= ((v10 + v8) & ~v8) + v9)
  {
    v10 = ((v10 + v8) & ~v8) + v9;
  }

  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(a1 + v11);
  v13 = v12 - 3;
  if (v12 >= 3)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (*(a1 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v12 = v15 + 3;
          goto LABEL_23;
        }

        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v12 = (v15 | (v13 << (8 * v11))) + 3;
      goto LABEL_23;
    }

    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = *a1;
    if (v11 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_23:
  v16 = ~v8;
  if (v12 == 2)
  {
    v17 = (a1 + v8 + 8) & v16;
    v35 = *(*(a3 + 16) - 8);
    v18 = *(v6 + 8);
    v18(v17, v5);
    v18((v38 + v8 + v17) & v16, v5);
    v7 = v35;
    v6 = v35;
  }

  else if (v12 != 1)
  {
    (*(v6 + 8))((a1 + v8 + 8) & v16, v5);
    v7 = v6;
  }

  v19 = *(v3 + v11);
  v20 = v19 - 3;
  if (v19 < 3)
  {
    goto LABEL_43;
  }

  if (v11 <= 3)
  {
    v21 = v11;
  }

  else
  {
    v21 = 4;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *v3;
      if (v11 < 4)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v21 == 3)
      {
        v22 = *v3 | (*(v3 + 2) << 16);
        if (v11 < 4)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v22 = *v3;
      if (v11 < 4)
      {
LABEL_42:
        v19 = (v22 | (v20 << (8 * v11))) + 3;
        goto LABEL_43;
      }
    }

LABEL_40:
    v19 = v22 + 3;
    goto LABEL_43;
  }

  if (v21)
  {
    v22 = *v3;
    if (v11 < 4)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_43:
  *a1 = *v3;
  if (v19 == 2)
  {
    v36 = v3;
    v37 = v6;
    v24 = (v3 + v8 + 8) & v16;
    v25 = *(v7 + 16);
    v25((a1 + v8 + 8) & v16, v24, v5);
    v26 = v38 + v8 + v24;
    v3 = v36;
    v25((v38 + v8 + ((a1 + v8 + 8) & v16)) & ~v8, v26 & ~v8, v5);
    v6 = v37;
    v23 = 2;
  }

  else if (v19 == 1)
  {
    v23 = 1;
  }

  else
  {
    (*(v7 + 16))((a1 + v8 + 8) & v16, (v3 + v8 + 8) & v16, v5);
    v23 = 0;
  }

  *(a1 + v11) = v23;
LABEL_49:
  v27 = *(v6 + 80);
  v28 = *(v6 + 64);
  v29 = ((v27 + 8) & ~v27) + v28;
  v30 = ((v29 + v27) & ~v27) + v28;
  if (v29 > v30)
  {
    v30 = v29;
  }

  if (v30 <= 8)
  {
    v30 = 8;
  }

  v31 = v30 + 8;
  v32 = ((a1 + v31) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v3 + v31) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  *((v32 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_230241508(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v6 + 8) & ~v6) + v7;
  if (v8 <= ((v8 + v6) & ~v6) + v7)
  {
    v8 = ((v8 + v6) & ~v6) + v7;
  }

  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a2[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_20:
  v15 = ~v6;
  *result = *a2;
  if (v10 == 2)
  {
    v17 = (result + v6 + 8) & v15;
    v18 = &a2[v6 + 8] & v15;
    v19 = *(v5 + 32);
    v23 = result;
    v19(v17, v18, v4);
    v19((v7 + v6 + v17) & v15, (v7 + v6 + v18) & v15, v4);
    result = v23;
    v16 = 2;
  }

  else
  {
    if (v10 != 1)
    {
      v20 = result;
      (*(v5 + 32))((result + v6 + 8) & v15, &a2[v6 + 8] & v15, v4);
      result = v20;
      *(v20 + v9) = 0;
      goto LABEL_26;
    }

    v16 = 1;
  }

  *(result + v9) = v16;
LABEL_26:
  v21 = ((result + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (&a2[v9 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  *((v21 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  return result;
}

unsigned __int16 *sub_230241730(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 == a2)
  {
    goto LABEL_49;
  }

  v7 = *(*(a3 + 16) - 8);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v8 + 8) & ~v8) + v9;
  v38 = v9;
  if (v10 <= ((v10 + v8) & ~v8) + v9)
  {
    v10 = ((v10 + v8) & ~v8) + v9;
  }

  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(a1 + v11);
  v13 = v12 - 3;
  if (v12 >= 3)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (*(a1 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v12 = v15 + 3;
          goto LABEL_23;
        }

        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v12 = (v15 | (v13 << (8 * v11))) + 3;
      goto LABEL_23;
    }

    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = *a1;
    if (v11 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_23:
  v16 = ~v8;
  if (v12 == 2)
  {
    v17 = (a1 + v8 + 8) & v16;
    v35 = *(*(a3 + 16) - 8);
    v18 = *(v6 + 8);
    v18(v17, v5);
    v18((v38 + v8 + v17) & v16, v5);
    v7 = v35;
    v6 = v35;
  }

  else if (v12 != 1)
  {
    (*(v6 + 8))((a1 + v8 + 8) & v16, v5);
    v7 = v6;
  }

  v19 = *(v3 + v11);
  v20 = v19 - 3;
  if (v19 < 3)
  {
    goto LABEL_43;
  }

  if (v11 <= 3)
  {
    v21 = v11;
  }

  else
  {
    v21 = 4;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *v3;
      if (v11 < 4)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v21 == 3)
      {
        v22 = *v3 | (*(v3 + 2) << 16);
        if (v11 < 4)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v22 = *v3;
      if (v11 < 4)
      {
LABEL_42:
        v19 = (v22 | (v20 << (8 * v11))) + 3;
        goto LABEL_43;
      }
    }

LABEL_40:
    v19 = v22 + 3;
    goto LABEL_43;
  }

  if (v21)
  {
    v22 = *v3;
    if (v11 < 4)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_43:
  *a1 = *v3;
  if (v19 == 2)
  {
    v36 = v3;
    v37 = v6;
    v24 = (v3 + v8 + 8) & v16;
    v25 = *(v7 + 32);
    v25((a1 + v8 + 8) & v16, v24, v5);
    v26 = v38 + v8 + v24;
    v3 = v36;
    v25((v38 + v8 + ((a1 + v8 + 8) & v16)) & ~v8, v26 & ~v8, v5);
    v6 = v37;
    v23 = 2;
  }

  else if (v19 == 1)
  {
    v23 = 1;
  }

  else
  {
    (*(v7 + 32))((a1 + v8 + 8) & v16, (v3 + v8 + 8) & v16, v5);
    v23 = 0;
  }

  *(a1 + v11) = v23;
LABEL_49:
  v27 = *(v6 + 80);
  v28 = *(v6 + 64);
  v29 = ((v27 + 8) & ~v27) + v28;
  v30 = ((v29 + v27) & ~v27) + v28;
  if (v29 > v30)
  {
    v30 = v29;
  }

  if (v30 <= 8)
  {
    v30 = 8;
  }

  v31 = v30 + 8;
  v32 = ((a1 + v31) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v3 + v31) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  *((v32 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_230241B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Patch();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SortedPatchElement();
  *(a4 + *(result + 28)) = a2;
  *(a4 + *(result + 32)) = a3;
  return result;
}

uint64_t sub_230241BB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1 + *(*a1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v4 + *(v5 + 32));
  v7 = a2 + *(*a2 + 104);
  result = swift_beginAccess();
  v9 = *(v7 + *(v5 + 32));
  v10 = v6 - v9;
  if (v6 == v9)
  {
    return 128;
  }

  if (__OFSUB__(v6, v9))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    v11 = __OFSUB__(0, v10);
    v10 = v9 - v6;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  if (v10 == 1)
  {
    return v9 >= v6;
  }

  if (v9 < v6)
  {
    return 64;
  }

  return 65;
}

uint64_t sub_230241CAC(uint64_t *a1)
{
  v1 = *a1;
  sub_2302448D4();
  v2 = *(v1 + 80);
  type metadata accessor for DoublyLinkedList();
  v3 = sub_230310788();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2319118D0](&v12, v3, WitnessTable);
  while (1)
  {
    sub_230310778();
    if (!v11)
    {
    }

    Strong = swift_weakLoadStrong();
    v6 = v11 + *(*v11 + 104);
    swift_beginAccess();
    if (Strong)
    {
      while (1)
      {
        v7 = Strong + *(*Strong + 104);
        swift_beginAccess();
        if (*(v7 + *(v2 + 28)) >= *(v6 + *(v2 + 28)))
        {
          break;
        }

        sub_230241E4C(v8, v11);
        v9 = swift_weakLoadStrong();

        Strong = v9;
        if (!v9)
        {
          goto LABEL_2;
        }
      }
    }

LABEL_2:
  }
}

uint64_t sub_230241E4C(uint64_t *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = *(v4 + 16);
  v6 = type metadata accessor for Patch();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v51 - v9;
  v11 = *(v4 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v59 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  result = sub_230241BB0(a1, a2);
  if (result >> 6 && result >> 6 != 1)
  {
    result = sub_230310AE8();
    __break(1u);
  }

  else if ((result & 1) == 0)
  {
    v57 = v16;
    v54 = v5;
    v22 = v10;
    v23 = v11;
    v24 = *(*a1 + 104);
    swift_beginAccess();
    v52 = v23;
    v25 = v6;
    v26 = *(v23 + 16);
    v26(v20, a1 + v24, v4);
    v27 = *(*a2 + 104);
    swift_beginAccess();
    v53 = a2;
    v28 = (a2 + v27);
    v29 = v59;
    v51 = v4;
    v26(v59, v28, v4);
    v30 = *(TupleTypeMetadata2 + 48);
    v55 = *(v25 - 8);
    v31 = *(v55 + 32);
    v31(v22, v20, v25);
    v56 = v30;
    v31(&v22[v30], v29, v25);
    v32 = v22;
    v33 = v25;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v35 = v57;
      if (EnumCaseMultiPayload == 1)
      {
        v36 = v53;
        v37 = v58;
        v38 = v51;
        v26(v58, (v53 + v27), v51);
        sub_230242398(v38, 1, v35);
        v39 = v52;
        (*(v52 + 8))(v37, v38);
        swift_beginAccess();
        (*(v39 + 40))(v36 + v27, v35, v38);
        swift_endAccess();
      }

      else
      {
        v47 = v54;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v49 = *(TupleTypeMetadata3 + 48);
        v50 = *(*(v47 - 8) + 8);
        v50(&v22[*(TupleTypeMetadata3 + 64)], v47);
        v50(&v22[v49], v47);
      }
    }

    else
    {
      v40 = v54;
      v41 = *(swift_getTupleTypeMetadata2() + 48);
      v42 = v53;
      v43 = v58;
      v44 = v51;
      v26(v58, (v53 + v27), v51);
      v45 = v57;
      sub_230242398(v44, -1, v57);
      v46 = v52;
      (*(v52 + 8))(v43, v44);
      swift_beginAccess();
      (*(v46 + 40))(v42 + v27, v45, v44);
      swift_endAccess();
      (*(*(v40 - 8) + 8))(&v32[v41], v40);
    }

    return (*(v55 + 8))(&v32[v56], v33);
  }

  return result;
}

uint64_t sub_230242398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Patch();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_23024244C(a2, v10, &v12 - v8);
  return sub_230241B14(v9, *(v3 + *(a1 + 28)), *(v3 + *(a1 + 32)), a3);
}

uint64_t sub_23024244C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17, a2);
  result = swift_getEnumCaseMultiPayload();
  v19 = *v15;
  if (!result)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v21 = *(TupleTypeMetadata2 + 48);
    v35 = a1;
    v22 = *(v7 + 32);
    result = v22(v13, &v15[v21], v6);
    if (__OFADD__(v19, v35))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v23 = *(TupleTypeMetadata2 + 48);
    *a3 = v19 + v35;
    v24 = &a3[v23];
    v25 = v13;
LABEL_9:
    v22(v24, v25, v6);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == 1)
  {
    if (!__OFADD__(v19, a1))
    {
      *a3 = v19 + a1;
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
    goto LABEL_12;
  }

  v33 = a3;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v27 = *(TupleTypeMetadata3 + 48);
  v34 = *(TupleTypeMetadata3 + 64);
  v35 = a1;
  v22 = *(v7 + 32);
  v22(v13, &v15[v27], v6);
  result = v22(v10, &v15[v34], v6);
  v28 = v19 + v35;
  if (!__OFADD__(v19, v35))
  {
    v29 = *(TupleTypeMetadata3 + 64);
    v30 = *(TupleTypeMetadata3 + 48);
    v31 = v33;
    *v33 = v28;
    v22(&v31[v30], v13, v6);
    v24 = &v31[v29];
    v25 = v10;
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t String.base64EncodedHMACString(using:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB180A0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_23030F938();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23030F588();
  v13 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  sub_23005FAD4(a1, a2);
  sub_23030F578();
  sub_23030F928();
  v16 = sub_23030F8F8();
  v18 = v17;
  (*(v10 + 8))(v12, v9);
  if (v18 >> 60 == 15)
  {
    (*(v13 + 8))(v15, v28);
    return 0;
  }

  else
  {
    v31 = v16;
    v32 = v18;
    sub_23030F5B8();
    sub_230242DB8();
    v27 = v16;
    sub_230242E10();
    sub_23030F598();
    v33 = v6;
    v34 = sub_230242E64();
    v20 = __swift_allocate_boxed_opaque_existential_0(&v31);
    v21 = v26;
    (*(v26 + 16))(v20, v8, v6);
    __swift_project_boxed_opaque_existential_1(&v31, v33);
    sub_23030E768();
    v22 = v29;
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_1(&v31);
    v24 = sub_23030EA08();
    sub_23005FE3C(v22, v23);
    sub_230122604(v27, v18);
    (*(v21 + 8))(v8, v6);
    (*(v13 + 8))(v15, v28);
    return v24;
  }
}

uint64_t String.base64EncodedHMACString(using:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB180A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - v2;
  v4 = sub_23030F938();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030F928();
  v8 = sub_23030F8F8();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  result = 0;
  if (v10 >> 60 != 15)
  {
    v17[0] = v8;
    v17[1] = v10;
    sub_23030F5B8();
    sub_230242DB8();
    sub_230242E10();
    sub_23030F598();
    v18 = v0;
    v19 = sub_230242E64();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
    (*(v1 + 16))(boxed_opaque_existential_0, v3, v0);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_23030E768();
    v13 = v16[1];
    v14 = v16[2];
    __swift_destroy_boxed_opaque_existential_1(v17);
    v15 = sub_23030EA08();
    sub_23005FE3C(v13, v14);
    sub_230122604(v8, v10);
    (*(v1 + 8))(v3, v0);
    return v15;
  }

  return result;
}

unint64_t sub_230242DB8()
{
  result = qword_27DB180A8;
  if (!qword_27DB180A8)
  {
    sub_23030F5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB180A8);
  }

  return result;
}

unint64_t sub_230242E10()
{
  result = qword_27DB180B0;
  if (!qword_27DB180B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB180B0);
  }

  return result;
}

unint64_t sub_230242E64()
{
  result = qword_27DB180B8;
  if (!qword_27DB180B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB180A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB180B8);
  }

  return result;
}

_BYTE *sub_230242EC8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2302D5AF0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_230242F5C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_230242FD8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_230242F5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_23030E5C8();
  swift_allocObject();
  result = sub_23030E588();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23030E9E8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_230242FD8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_23030E5C8();
  swift_allocObject();
  result = sub_23030E588();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void REMTimeOfDay.startHour.getter()
{
  v0 = _REMGetLocalizedString();
  v1 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  v5 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v33 = 0;
    sub_230243758(v1, v3, 10);
    goto LABEL_63;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v32[0] = v1;
    v32[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v1 == 43)
    {
      if (v4)
      {
        if (--v4)
        {
          v21 = 0;
          v22 = v32 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v1 != 45)
    {
      if (v4)
      {
        v28 = 0;
        v29 = v32;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v13 = 0;
        v14 = v32 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v7 = sub_230310958();
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v17 = 0;
          if (v7)
          {
            v18 = v7 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_61;
              }

              v17 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++v18;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v8 != 45)
    {
      if (v5)
      {
        v25 = 0;
        if (v7)
        {
          while (1)
          {
            v26 = *v7 - 48;
            if (v26 > 9)
            {
              goto LABEL_61;
            }

            v27 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              goto LABEL_61;
            }

            v25 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v9 = 0;
        if (v7)
        {
          v10 = v7 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v33 = v4;
LABEL_63:

        return;
      }

      goto LABEL_61;
    }

    __break(1u);
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

void REMTimeOfDay.endHour.getter()
{
  v0 = _REMGetLocalizedString();
  v1 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  v5 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v33 = 0;
    sub_230243758(v1, v3, 10);
    goto LABEL_63;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v32[0] = v1;
    v32[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v1 == 43)
    {
      if (v4)
      {
        if (--v4)
        {
          v21 = 0;
          v22 = v32 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v1 != 45)
    {
      if (v4)
      {
        v28 = 0;
        v29 = v32;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v28;
          if ((v28 * 10) >> 64 != (10 * v28) >> 63)
          {
            break;
          }

          v28 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v13 = 0;
        v14 = v32 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v7 = sub_230310958();
    }

    v8 = *v7;
    if (v8 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v17 = 0;
          if (v7)
          {
            v18 = v7 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_61;
              }

              v17 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++v18;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v8 != 45)
    {
      if (v5)
      {
        v25 = 0;
        if (v7)
        {
          while (1)
          {
            v26 = *v7 - 48;
            if (v26 > 9)
            {
              goto LABEL_61;
            }

            v27 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              goto LABEL_61;
            }

            v25 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v9 = 0;
        if (v7)
        {
          v10 = v7 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v33 = v4;
LABEL_63:

        return;
      }

      goto LABEL_61;
    }

    __break(1u);
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t REMTimeOfDay.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

unsigned __int8 *sub_230243758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_23030FB18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301153FC();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_230310958();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}