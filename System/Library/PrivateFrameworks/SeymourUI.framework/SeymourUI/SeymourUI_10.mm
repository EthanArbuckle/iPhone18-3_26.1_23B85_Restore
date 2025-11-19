uint64_t sub_20B65909C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v57 = sub_20C13C5F4();
  v56 = *(v57 - 8);
  v5 = MEMORY[0x28223BE20](v57);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v54 = sub_20C13C5A4();
  v52 = *(v54 - 8);
  v9 = MEMORY[0x28223BE20](v54);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = sub_20C1352E4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13DBA4();
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    goto LABEL_6;
  }

  v19 = [v18 dialogRequest];

  if (!v19)
  {
LABEL_6:
    v25 = sub_20B6B1778(MEMORY[0x277D84F90]);
    v22 = 0;
    v50 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_9;
  }

  v50 = a2;
  v20 = [v19 title];
  if (v20)
  {
    v21 = v20;
    v22 = sub_20C13C954();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v26 = v19;
  v25 = sub_20BEF4B50(a1, v50);
  v50 = v26;

LABEL_9:
  (*(v14 + 104))(v16, *MEMORY[0x277D517A0], v13);
  v27 = sub_20C1349B4();
  v49 = v14;
  v28 = v27;
  v47 = v16;
  v30 = v29;
  sub_20C13C594();
  sub_20C13C5C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10);
  inited = swift_initStackObject();
  v46 = v12;
  v32 = v8;
  v45 = v8;
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_20C152DF0;
  v48 = v13;
  v33 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  *(inited + 72) = v33;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = sub_20C1352D4();
  *(inited + 104) = v34;
  *(inited + 120) = v33;
  *(inited + 128) = 0x6973736572706D69;
  v35 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = -1;
  *(inited + 168) = v35;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v33;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = v28;
  *(inited + 200) = v30;
  v36 = sub_20B6B1778(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v36;
  sub_20BEF5D68(v25, sub_20C0B88D4, 0, isUniquelyReferenced_nonNull_native, &v58);

  v38 = v56;
  v39 = v57;
  (*(v56 + 16))(v53, v32, v57);
  v40 = v52;
  v41 = v46;
  v42 = v54;
  (*(v52 + 16))(v51, v46, v54);
  v43 = MEMORY[0x277D84F90];
  sub_20C0B8920(MEMORY[0x277D84F90]);
  sub_20C0B8920(v43);
  sub_20C13C604();

  (*(v38 + 8))(v45, v39);
  (*(v40 + 8))(v41, v42);
  return (*(v49 + 8))(v47, v48);
}

uint64_t sub_20B659694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootShowcaseItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B6596F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B659760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20B659978()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedVisualEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CompletedWorkoutShareItemProvider.activityItems(workout:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v29[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 metadata];
  if (v10)
  {
    v11 = v10;
    v12 = sub_20C13C754();

    v13 = sub_20C13AAD4();
    if (*(v12 + 16))
    {
      v15 = a2;
      v28 = v2;
      v16 = sub_20B65AA60(v13, v14);
      v18 = v17;

      if (v18)
      {
        sub_20B51F1D8(*(v12 + 56) + 32 * v16, v29);

        if (swift_dynamicCast())
        {
          v19 = v29[5];
          v20 = v29[6];
          v29[3] = sub_20B51C88C(0, &qword_27C762F48);
          v29[4] = &off_282297B88;
          v29[0] = a1;
          v21 = a1;
          sub_20B659D28(v19, v20, v29, v15);

          return __swift_destroy_boxed_opaque_existential_1(v29);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_20C13B534();
  v23 = sub_20C13BB74();
  v24 = sub_20C13D1D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_20B517000, v23, v24, "[Share Sheet] HKWorkout missing catalog identifier", v25, 2u);
    MEMORY[0x20F2F6A40](v25, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  sub_20B659CD4();
  v26 = swift_allocError();
  *v27 = 9;
  *(swift_allocObject() + 16) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F40);
  return sub_20C137CA4();
}

unint64_t sub_20B659CD4()
{
  result = qword_27C762F38;
  if (!qword_27C762F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762F38);
  }

  return result;
}

uint64_t sub_20B659D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v40 = a2;
  v41 = a1;
  v45 = a4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FA0);
  v11 = *(v44 - 8);
  v43 = *(v11 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
  sub_20C13A0B4();
  sub_20B51CC64(v37, v47);
  sub_20B65CD34(v4, v46);
  v15 = swift_allocObject();
  sub_20B51C710(v47, v15 + 16);
  v16 = v46[4];
  *(v15 + 136) = v46[5];
  v17 = v46[7];
  *(v15 + 152) = v46[6];
  *(v15 + 168) = v17;
  *(v15 + 184) = v46[8];
  v18 = v46[2];
  v19 = v46[0];
  *(v15 + 72) = v46[1];
  v20 = v46[3];
  *(v15 + 88) = v18;
  *(v15 + 104) = v20;
  *(v15 + 120) = v16;
  *(v15 + 56) = v19;
  v21 = v39;
  (*(v5 + 16))(v7, v10, v39);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, v7, v21);
  v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20B65CD6C;
  v24[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F40);
  v25 = v38;
  sub_20C137C94();
  (*(v5 + 8))(v10, v21);
  v26 = swift_allocObject();
  v27 = v40;
  *(v26 + 16) = v41;
  *(v26 + 24) = v27;
  v28 = v42;
  v29 = v25;
  v30 = v44;
  (*(v11 + 16))(v42, v25, v44);
  v31 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v32 = (v43 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v11 + 32))(v33 + v31, v28, v30);
  v34 = (v33 + v32);
  *v34 = sub_20B65CDA0;
  v34[1] = v26;

  sub_20C137C94();
  return (*(v11 + 8))(v29, v30);
}

void sub_20B65A1B8(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_20C132C14();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C1344C4();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C137C24();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(a1, v47);
  v13 = a2[16];
  v14 = a2[17];
  type metadata accessor for CompletedWorkoutImageRenderer();
  swift_allocObject();
  swift_unknownObjectRetain();
  v15 = sub_20BA6A71C(v47, v13, v14);
  v42 = v15;
  sub_20B51CC64(a2, v47);
  sub_20C135A04();
  v16 = objc_allocWithZone(type metadata accessor for CompletedWorkoutShareArtworkItemProvider());

  v17 = sub_20BAEA7D4(v47, v12, v15);

  v18 = v17;
  v41 = sub_20B65CB58(v18);
  __swift_project_boxed_opaque_existential_1(a2 + 11, a2[14]);
  sub_20C1359D4();
  v19 = sub_20C138544();

  v20 = [v19 string];

  v21 = sub_20C13C954();
  v37 = v22;
  v38 = v21;

  sub_20C135AA4();
  v23 = v39;
  sub_20C134334();
  (*(v7 + 8))(v9, v40);
  v24 = type metadata accessor for ShareSheetLinkItemProvider();
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_artworkItemProvider];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v25[OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_title];
  *v27 = 0;
  v27[1] = 0;
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v47, &v25[OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_storefrontLocalizer]);
  v30 = v43;
  v29 = v44;
  (*(v43 + 16))(&v25[OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_url], v23, v44);
  v31 = *v26;
  *v26 = v18;
  v26[1] = &off_2822CAC98;
  v32 = v28;

  v33 = v37;
  *v27 = v38;
  v27[1] = v33;

  v34 = sub_20C132B64();
  v46.receiver = v25;
  v46.super_class = v24;
  v35 = objc_msgSendSuper2(&v46, sel_initWithPlaceholderItem_, v34);

  (*(v30 + 8))(v23, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20C151490;
  *(v36 + 32) = v41;
  *(v36 + 40) = v35;
  *(swift_allocObject() + 16) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F40);
  sub_20C137CA4();
}

uint64_t sub_20B65A650@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();

  v12 = sub_20C13BB74();
  v13 = sub_20C13D1D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_20B51E694(a2, a3, &v20);
    _os_log_impl(&dword_20B517000, v12, v13, "Failed to create activity items for identifier: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F2F6A40](v16, -1, -1);
    MEMORY[0x20F2F6A40](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  *(swift_allocObject() + 16) = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F40);
  return sub_20C137CA4();
}

id sub_20B65A864()
{
  sub_20B51C88C(0, &qword_27C762070);
  sub_20C137BC4();
  v0 = sub_20C13D5A4();
  if (!v0)
  {
    v0 = [objc_opt_self() darkGrayColor];
  }

  v1 = v0;
  sub_20B51C88C(0, &qword_27C7626E8);
  v2 = v1;
  sub_20B66740C(v2, 1.0, 1.0);
  v4 = v3;
  v5 = [v3 resizableImageWithCapInsets_];

  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return v5;
}

unint64_t sub_20B65A98C(uint64_t a1)
{
  sub_20C133244();
  v2 = MEMORY[0x277CC9AF8];
  sub_20B65CCEC(&qword_27C764180, MEMORY[0x277CC9AF8]);
  v3 = sub_20C13C7B4();
  return sub_20B65B828(a1, v3, MEMORY[0x277CC9AF8], &qword_27C762F98, v2, MEMORY[0x277CC9B18]);
}

unint64_t sub_20B65AA60(uint64_t a1, uint64_t a2)
{
  sub_20C13E164();
  sub_20C13CA64();
  v4 = sub_20C13E1B4();

  return sub_20B65B770(a1, a2, v4);
}

unint64_t sub_20B65AAD8(uint64_t a1)
{
  sub_20C132EE4();
  v2 = MEMORY[0x277CC95F0];
  sub_20B65CCEC(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  v3 = sub_20C13C7B4();
  return sub_20B65B828(a1, v3, MEMORY[0x277CC95F0], &qword_27C7641A0, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_20B65ABAC(uint64_t a1)
{
  sub_20C13C954();
  sub_20C13E164();
  sub_20C13CA64();
  v2 = sub_20C13E1B4();

  return sub_20B65C804(a1, v2);
}

unint64_t sub_20B65AC3C(uint64_t a1)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](a1);
  v2 = sub_20C13E1B4();

  return sub_20B65B9C8(a1, v2);
}

unint64_t sub_20B65ACA8(unsigned __int8 a1)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](a1);
  v2 = sub_20C13E1B4();
  return sub_20B65C1FC(a1, v2);
}

unint64_t sub_20B65AD60(uint64_t a1)
{
  sub_20C132E94();
  v2 = MEMORY[0x277CC9578];
  sub_20B65CCEC(&unk_27C769340, MEMORY[0x277CC9578]);
  v3 = sub_20C13C7B4();
  return sub_20B65B828(a1, v3, MEMORY[0x277CC9578], &qword_27C762F58, v2, MEMORY[0x277CC9598]);
}

unint64_t sub_20B65AE50(char a1)
{
  sub_20C13E164();
  sub_20C135464();
  sub_20C13CA64();

  v2 = sub_20C13E1B4();

  return sub_20B65BA34(a1 & 1, v2);
}

unint64_t sub_20B65AED8(uint64_t a1)
{
  sub_20C132FD4();
  v2 = MEMORY[0x277CC9788];
  sub_20B65CCEC(&unk_27C7646C0, MEMORY[0x277CC9788]);
  v3 = sub_20C13C7B4();
  return sub_20B65B828(a1, v3, MEMORY[0x277CC9788], &qword_27C762F90, v2, MEMORY[0x277CC97A0]);
}

unint64_t sub_20B65AFAC(uint64_t a1)
{
  v2 = sub_20C13E154();

  return sub_20B65B9C8(a1, v2);
}

unint64_t sub_20B65AFF0(char a1)
{
  sub_20C13E164();
  sub_20B964064(a1);
  sub_20C13CA64();

  v2 = sub_20C13E1B4();

  return sub_20B65BB38(a1, v2);
}

unint64_t sub_20B65B078(unsigned __int8 a1)
{
  v2 = sub_20BD03998();

  return sub_20B65BF64(a1, v2);
}

unint64_t sub_20B65B0BC(uint64_t a1)
{
  sub_20C135C54();
  v2 = MEMORY[0x277D51FE0];
  sub_20B65CCEC(&qword_27C762F50, MEMORY[0x277D51FE0]);
  v3 = sub_20C13C7B4();
  return sub_20B65B828(a1, v3, MEMORY[0x277D51FE0], &qword_27C7640F0, v2, MEMORY[0x277D51FF8]);
}

unint64_t sub_20B65B190(uint64_t a1)
{
  v2 = sub_20C13DBB4();

  return sub_20B65C26C(a1, v2);
}

unint64_t sub_20B65B1D4(uint64_t a1)
{
  sub_20C1365F4();
  v2 = MEMORY[0x277D52AF8];
  sub_20B65CCEC(&qword_27C762F60, MEMORY[0x277D52AF8]);
  v3 = sub_20C13C7B4();
  return sub_20B65B828(a1, v3, MEMORY[0x277D52AF8], &qword_27C764300, v2, MEMORY[0x277D52B08]);
}

unint64_t sub_20B65B2A8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3 & 1;
  sub_20C13E164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F68);
  sub_20B65CA5C();
  sub_20C133BE4();
  v6 = sub_20C13E1B4();
  return sub_20B65C334(a1, a2, v5, v6);
}

unint64_t sub_20B65B35C(uint64_t a1)
{
  sub_20C135214();
  v2 = MEMORY[0x277D51640];
  sub_20B65CCEC(&qword_27C762F80, MEMORY[0x277D51640]);
  v3 = sub_20C13C7B4();
  return sub_20B65B828(a1, v3, MEMORY[0x277D51640], &qword_27C762F88, v2, MEMORY[0x277D51658]);
}

unint64_t sub_20B65B430(char a1)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](a1 & 1);
  v2 = sub_20C13E1B4();

  return sub_20B65C440(a1 & 1, v2);
}

unint64_t sub_20B65B49C(void *a1)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0]([a1 hash]);
  v2 = sub_20C13E1B4();

  return sub_20B65C4B0(a1, v2);
}

unint64_t sub_20B65B564(uint64_t a1, uint64_t a2)
{
  sub_20C13E164();
  sub_20C13E184();
  if (a2)
  {
    sub_20C13CA64();
  }

  v4 = sub_20C13E1B4();

  return sub_20B65C620(a1, a2, v4);
}

unint64_t sub_20B65B614(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  sub_20C13E164();
  a2(a1);
  sub_20C13CA64();

  v6 = sub_20C13E1B4();
  return sub_20B65C6EC(a1, v6, a3);
}

unint64_t sub_20B65B6B0(uint64_t a1)
{
  sub_20C13E164();
  v2 = sub_20C137F94();
  MEMORY[0x20F2F58E0](v2);
  v3 = sub_20C13E1B4();

  return sub_20B65C908(a1, v3);
}

unint64_t sub_20B65B770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20C13DFF4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20B65B828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_20B65CCEC(v23, v24);
      v19 = sub_20C13C894();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_20B65B9C8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20B65BA34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_20C135464();
      v8 = v7;
      if (v6 == sub_20C135464() && v8 == v9)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_20B65BB38(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED000073676E6952;
      v8 = 0x7974697669746361;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x7261426E727562;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v9 = 0x636E65646163;
          goto LABEL_17;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x65636E6174736964;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x796772656E65;
          break;
        case 5:
          v8 = 0x7461527472616568;
          v7 = 0xE900000000000065;
          break;
        case 6:
          v7 = 0xE900000000000074;
          v8 = 0x6867696C68676968;
          break;
        case 7:
          v7 = 0xE900000000000079;
          v8 = 0x7469736E65746E69;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v9 = 0x6E696C636E69;
LABEL_17:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        case 9:
          v7 = 0xE300000000000000;
          v8 = 7172210;
          break;
        case 0xA:
          v7 = 0xE900000000000072;
          v8 = 0x6F74617261706573;
          break;
        case 0xB:
          v8 = 7172211;
          v7 = 0xE300000000000000;
          break;
        case 0xC:
          v7 = 0xE800000000000000;
          v8 = 0x73736572676F7270;
          break;
        case 0xD:
          v7 = 0xE500000000000000;
          v8 = 0x72656D6974;
          break;
        default:
          break;
      }

      v10 = 0x7974697669746361;
      v11 = 0xED000073676E6952;
      switch(a1)
      {
        case 1:
          v11 = 0xE700000000000000;
          if (v8 == 0x7261426E727562)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v11 = 0xE700000000000000;
          v12 = 0x636E65646163;
          goto LABEL_47;
        case 3:
          v11 = 0xE800000000000000;
          if (v8 != 0x65636E6174736964)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v11 = 0xE600000000000000;
          if (v8 != 0x796772656E65)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v11 = 0xE900000000000065;
          if (v8 != 0x7461527472616568)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v11 = 0xE900000000000074;
          if (v8 != 0x6867696C68676968)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v11 = 0xE900000000000079;
          if (v8 != 0x7469736E65746E69)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v11 = 0xE700000000000000;
          v12 = 0x6E696C636E69;
LABEL_47:
          if (v8 != (v12 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v11 = 0xE300000000000000;
          if (v8 != 7172210)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v11 = 0xE900000000000072;
          v10 = 0x6F74617261706573;
          goto LABEL_41;
        case 11:
          v11 = 0xE300000000000000;
          if (v8 != 7172211)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v11 = 0xE800000000000000;
          if (v8 != 0x73736572676F7270)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v11 = 0xE500000000000000;
          if (v8 != 0x72656D6974)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v10)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_43:
          v13 = sub_20C13DFF4();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_20B65BF64(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xEA00000000006E75;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v13 = 0xE300000000000000;
            v12 = 7172210;
          }

          else
          {
            v12 = 7172211;
            v13 = 0xE300000000000000;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v12 = 0x7363697274656DLL;
          }

          else
          {
            v12 = 0xD000000000000013;
          }

          if (v7 == 4)
          {
            v13 = 0xE700000000000000;
          }

          else
          {
            v13 = 0x800000020C191AD0;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x57656E696C636E69;
        }

        else
        {
          v8 = 0x7469736E65746E69;
        }

        if (v7 == 2)
        {
          v9 = 0xEB000000006B6C61;
        }

        else
        {
          v9 = 0xE900000000000079;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x52656E696C636E69;
        }

        else
        {
          v10 = 0x7261426E727562;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xEA00000000006E75;
        }

        else
        {
          v11 = 0xE700000000000000;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }
      }

      v14 = 7172210;
      if (v6 != 6)
      {
        v14 = 7172211;
      }

      v15 = 0xE300000000000000;
      v16 = 0xD000000000000013;
      if (v6 == 4)
      {
        v16 = 0x7363697274656DLL;
      }

      v17 = 0x800000020C191AD0;
      if (v6 == 4)
      {
        v17 = 0xE700000000000000;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x57656E696C636E69;
      }

      else
      {
        v18 = 0x7469736E65746E69;
      }

      if (v6 == 2)
      {
        v19 = 0xEB000000006B6C61;
      }

      else
      {
        v19 = 0xE900000000000079;
      }

      if (v6)
      {
        v20 = 0x52656E696C636E69;
      }

      else
      {
        v20 = 0x7261426E727562;
      }

      if (!v6)
      {
        v5 = 0xE700000000000000;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v14;
      v22 = v6 <= 3 ? v19 : v15;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = sub_20C13DFF4();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xEA00000000006E75;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_20B65C1FC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20B65C26C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20B51D968(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F2F5330](v9, a1);
      sub_20B51D9C4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20B65C334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_20B65CAB0();
    sub_20B65CB04();
    do
    {
      if (sub_20C133BF4())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_20B65C440(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20B65C4B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if ([*(*(v2 + 48) + 8 * v4) isEqual_])
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20B65C554(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_20B51C88C(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_20C13D5F4();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20B65C620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_20C13DFF4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_20B65C6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v9 = a3(*(*(v3 + 48) + v5));
      v11 = v10;
      if (v9 == a3(a1) && v11 == v12)
      {
        break;
      }

      v14 = sub_20C13DFF4();

      if ((v14 & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_20B65C804(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_20C13C954();
      v8 = v7;
      if (v6 == sub_20C13C954() && v8 == v9)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_20B65C908(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = sub_20C137F94();
      if (v6 == sub_20C137F94())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_20B65C9B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B65C9F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20B65CA5C()
{
  result = qword_27C7676E0;
  if (!qword_27C7676E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7676E0);
  }

  return result;
}

unint64_t sub_20B65CAB0()
{
  result = qword_27C762F70;
  if (!qword_27C762F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762F70);
  }

  return result;
}

unint64_t sub_20B65CB04()
{
  result = qword_27C7676F0;
  if (!qword_27C7676F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7676F0);
  }

  return result;
}

id sub_20B65CB58(uint64_t a1)
{
  v8[3] = type metadata accessor for CompletedWorkoutShareArtworkItemProvider();
  v8[4] = &off_2822CAC98;
  v8[0] = a1;
  v2 = type metadata accessor for ShareSheetImageItemProvider();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC9SeymourUI27ShareSheetImageItemProvider_loadedImage] = 0;
  *&v3[OBJC_IVAR____TtC9SeymourUI27ShareSheetImageItemProvider_timeout] = 0x4014000000000000;
  sub_20B51CC64(v8, &v3[OBJC_IVAR____TtC9SeymourUI27ShareSheetImageItemProvider_artworkItemProvider]);
  sub_20C13A2B4();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC9SeymourUI27ShareSheetImageItemProvider_lock] = sub_20C13A2A4();
  v4 = sub_20B65A864();
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_initWithPlaceholderItem_, v4);

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_20B65CC80()
{
  sub_20C13E164();
  sub_20C13CA64();
  v0 = sub_20C13E1B4();

  return sub_20B65CC54(v0);
}

uint64_t sub_20B65CCEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B65CDD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B65CEC0(double *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 2);
  sub_20C13B534();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20B517000, v9, v10, "[CatalogTipUpsellCoordinator] received CatalogTipPlayerDismissed", v11, 2u);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = v8;
    sub_20B65D058(&v13, v6, v7);
  }

  return result;
}

uint64_t sub_20B65D058(uint64_t *a1, double a2, double a3)
{
  v7 = sub_20C13BB84();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_20C13B604();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = sub_20C1380C4();
  (*(v17 + 104))(v19, *MEMORY[0x277D4F878], v16);
  v22 = sub_20B8D7248(v19, v21);

  (*(v17 + 8))(v19, v16);
  if (v22)
  {
    if ((v20 & 4) != 0)
    {
      v30 = sub_20C13CDF4();
      (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = v3;
      *(v31 + 40) = a2;
      *(v31 + 48) = a3;

      sub_20B6383D0(0, 0, v15, &unk_20C152FA0, v31);
    }

    else
    {
      sub_20C13B534();
      v23 = sub_20C13BB74();
      v24 = sub_20C13D1F4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20B517000, v23, v24, "[CatalogTipUpsellCoordinator] Options do not contain upsell, skipping upsell", v25, 2u);
        MEMORY[0x20F2F6A40](v25, -1, -1);
      }

      return (*(v32 + 8))(v12, v33);
    }
  }

  else
  {
    sub_20C13B534();
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20B517000, v27, v28, "[CatalogTipUpsellCoordinator] Platform does not support tips upsell, skipping upsell", v29, 2u);
      MEMORY[0x20F2F6A40](v29, -1, -1);
    }

    return (*(v32 + 8))(v10, v33);
  }
}

uint64_t sub_20B65D430(double a1, double a2)
{
  v5 = sub_20C13BB84();
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v2[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[9] = v6;
  *v6 = v2;
  v6[1] = sub_20B65D534;

  return sub_20B65D848(a1, a2);
}

uint64_t sub_20B65D534()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B65D670, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20B65D670()
{
  v20 = v0;
  v1 = *(v0 + 80);
  sub_20C13B534();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v18 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2F5850](*(v0 + 24), *(v0 + 32));
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "[CatalogTipUpsellCoordinator] Failed requesting post tip upsell - %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20B65D848(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_20C132E94();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_20C1374D4();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  *(v3 + 88) = v6;
  *(v3 + 96) = *(v6 - 8);
  *(v3 + 104) = swift_task_alloc();
  v7 = sub_20C134104();
  *(v3 + 112) = v7;
  *(v3 + 120) = *(v7 - 8);
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B65DA2C, 0, 0);
}

uint64_t sub_20B65DA2C()
{
  v1 = v0[13];
  __swift_project_boxed_opaque_existential_1((v0[4] + 32), *(v0[4] + 56));
  sub_20C1398E4();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = "SeymourUI/CatalogTipUpsellCoordinator.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 80;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_20B65DB64;
  v4 = v0[16];
  v5 = v0[14];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B660258, v2, v5);
}

uint64_t sub_20B65DB64()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_20B65DE88;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    v3 = sub_20B65DCB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B65DCB4()
{
  sub_20C134074();
  v1 = swift_task_alloc();
  *(v0 + 20) = v1;
  *v1 = v0;
  v1[1] = sub_20B65DD5C;
  v2 = *(v0 + 10);
  v3 = v0[2];
  v4 = v0[3];

  return sub_20B65E4B0(v2, v3, v4);
}

uint64_t sub_20B65DD5C(char a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_20B65E320;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v5 = sub_20B65DF38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20B65DE88()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B65DF38()
{
  if (*(v0 + 200) == 1)
  {
    v1 = sub_20C137494();
    v3 = v2;
    *(v0 + 176) = v2;
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_20B65E098;

    return sub_20B65F348(v1, v3);
  }

  else
  {
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 112);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    (*(v7 + 8))(v6, v8);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20B65E098()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_20B65E3E8;
  }

  else
  {
    v2 = sub_20B65E1C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B65E1C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = [objc_opt_self() standardUserDefaults];
  sub_20C132E84();
  v5 = sub_20C132DE4();
  (*(v2 + 8))(v1, v3);
  sub_20C13AA54();
  v6 = sub_20C13C914();

  [v4 setObject:v5 forKey:v6];

  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B65E320()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B65E3E8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B65E4B0(uint64_t a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_20C13BB84();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_20C13A814();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B65E610, 0, 0);
}

uint64_t sub_20B65E610()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, *MEMORY[0x277D4EE58], v3);
  v4 = sub_20C13A364();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0 + 8;
    sub_20C13B534();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1F4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = "[CatalogTipUpsellCoordinator] forcing tips upsell with user default, requesting upsell";
LABEL_10:
      v12 = swift_slowAlloc();
      *v12 = 0;
      v17 = *v5;
      _os_log_impl(&dword_20B517000, v6, v7, v8, v12, 2u);
      MEMORY[0x20F2F6A40](v12, -1, -1);
LABEL_12:
      v13 = v6;
      v14 = v0[6];
      v15 = v0[7];

      (*(v15 + 8))(v17, v14);

      v16 = v0[1];

      return v16(1);
    }

    goto LABEL_11;
  }

  if ((sub_20C137484() & 1) == 0)
  {
    v5 = v0 + 9;
    sub_20C13B534();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1F4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = "[CatalogTipUpsellCoordinator] native rules not enabled, requesting upsell";
      goto LABEL_10;
    }

LABEL_11:
    v17 = *v5;
    goto LABEL_12;
  }

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_20B65E8B0;
  v10 = v0[2];

  return sub_20B65ED5C(v10);
}

uint64_t sub_20B65E8B0(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 144) = a1 & 1;

    return MEMORY[0x2822009F8](sub_20B65EA58, 0, 0);
  }
}

uint64_t sub_20B65EA58()
{
  if (*(v0 + 144) != 1)
  {
    v5 = (v0 + 80);
    sub_20C13B534();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1F4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = 2;
      v9 = swift_slowAlloc();
      v10 = 0;
      *v9 = 0;
      v11 = "[CatalogTipUpsellCoordinator] subscription status not allowed, not requesting upsell";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_20C1374C4();
  if (!sub_20B65FF64(v1))
  {
    v5 = (v0 + 88);
    sub_20C13B534();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1F4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = 2;
      v9 = swift_slowAlloc();
      v10 = 0;
      *v9 = 0;
      v11 = "[CatalogTipUpsellCoordinator] interval not expired, not requesting upsell";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_20C1374A4();
  if (v2 <= 0.0 || v4 > v3 / v2)
  {
    v5 = (v0 + 96);
    sub_20C13B534();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1F4();
    if (os_log_type_enabled(v6, v7))
    {
      v13 = *(v0 + 24);
      v12 = *(v0 + 32);
      v8 = 22;
      v9 = swift_slowAlloc();
      v10 = 0;
      *v9 = 134218240;
      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v12;
      v11 = "[CatalogTipUpsellCoordinator] minimum ratio complete not reached, not requesting upsell - elapsedTime = %f, duration = %f";
      goto LABEL_13;
    }

LABEL_14:
    v20 = 0;
    v19 = *v5;
    goto LABEL_15;
  }

  v5 = (v0 + 104);
  sub_20C13B534();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = 2;
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = 1;
    v11 = "[CatalogTipUpsellCoordinator] all checks passed, requesting upsell";
LABEL_13:
    v20 = v10;
    v19 = *v5;
    _os_log_impl(&dword_20B517000, v6, v7, v11, v9, v8);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    goto LABEL_15;
  }

  v19 = *v5;
  v20 = 1;
LABEL_15:
  v14 = v6;
  v15 = *(v0 + 48);
  v16 = *(v0 + 56);

  (*(v16 + 8))(v19, v15);

  v17 = *(v0 + 8);

  return v17(v20);
}

uint64_t sub_20B65ED5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764290);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20C139354();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B65EE90, 0, 0);
}

uint64_t sub_20B65EE90()
{
  if (sub_20C1374B4())
  {
    v1 = v0[6];
    __swift_project_boxed_opaque_existential_1((v0[3] + 112), *(v0[3] + 136));
    sub_20B520B44(v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *(v2 + 16) = "SeymourUI/CatalogTipUpsellCoordinator.swift";
    *(v2 + 24) = 43;
    *(v2 + 32) = 2;
    *(v2 + 40) = 153;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_20B65F020;
    v4 = v0[10];
    v5 = v0[7];

    return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5218F0, v2, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_20B65F020()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_20B65F2A8;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20B65F170;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B65F170()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  (*(v4 + 104))(v2, *MEMORY[0x277D54348], v3);
  sub_20B65FF1C(&unk_27C76D2B0, MEMORY[0x277D54360]);
  v5 = sub_20C13C894();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);

  v7 = v0[1];

  return v7((v5 & 1) == 0);
}

uint64_t sub_20B65F2A8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_20B65F348(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for NavigationRequested();
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for NavigationRequest();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0);
  v3[11] = swift_task_alloc();
  v4 = sub_20C1388F4();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_20C139594();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_20C138E94();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v7 = sub_20C138894();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60);
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B65F658, 0, 0);
}

uint64_t sub_20B65F658()
{
  v1 = v0[26];
  __swift_project_boxed_opaque_existential_1((v0[5] + 72), *(v0[5] + 96));
  sub_20C138E64();
  v2 = swift_task_alloc();
  v0[27] = v2;
  *(v2 + 16) = "SeymourUI/CatalogTipUpsellCoordinator.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 172;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[28] = v3;
  v4 = sub_20B65FE0C();
  *v3 = v0;
  v3[1] = sub_20B65F7B4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B65FDF4, v2, v4);
}

uint64_t sub_20B65F7B4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = sub_20B65FCFC;
  }

  else
  {
    v5 = v2[25];
    v4 = v2[26];
    v6 = v2[24];
    v2[30] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B65F914;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B65F914()
{
  v1 = v0[30];
  v2 = v0[23];
  v22 = v0[22];
  v3 = v0[21];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];
  v7 = v0[11];
  v23 = v0[10];
  v8 = v0[9];
  v19 = v0[8];
  v21 = v0[7];
  (*(v0[19] + 104))(v0[20], *MEMORY[0x277D541A0], v0[18]);
  (*(v4 + 104))(v5, *MEMORY[0x277D54408], v6);
  v20 = v1;
  sub_20C138854();
  v9 = sub_20C138B94();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = *(v22 + 16);
  v10(v23, v2, v3);
  (*(v22 + 56))(v23, 0, 1, v3);
  sub_20C1388C4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FD0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  v10(v8, v2, v3);
  (*(v17 + 16))(v8 + v12, v16, v18);
  *(v8 + v13) = 3;
  type metadata accessor for NavigationResource();
  swift_storeEnumTagMultiPayload();
  *(v8 + v19[5]) = 1;
  type metadata accessor for NavigationIntent();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource();
  swift_storeEnumTagMultiPayload();
  *(v8 + v19[7]) = 0;
  *(v8 + v19[8]) = 2;
  *(v8 + v19[9]) = 0;
  swift_getObjectType();
  sub_20B65FE58(v8, v21);
  sub_20B65FF1C(&unk_27C7706F0, type metadata accessor for NavigationRequested);
  sub_20C13A764();

  sub_20B65FEBC(v21, type metadata accessor for NavigationRequested);
  sub_20B65FEBC(v8, type metadata accessor for NavigationRequest);
  (*(v17 + 8))(v16, v18);
  (*(v22 + 8))(v2, v3);

  v14 = v0[1];

  return v14();
}

uint64_t sub_20B65FCFC()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_20B65FE0C()
{
  result = qword_27C768670;
  if (!qword_27C768670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C768670);
  }

  return result;
}

uint64_t sub_20B65FE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B65FEBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B65FF1C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_20B65FF64(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  sub_20C13AA54();
  v13 = sub_20C13C914();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    v15 = swift_dynamicCast();
    (*(v6 + 56))(v4, v15 ^ 1u, 1, v5);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v11, v4, v5);
      sub_20C132E84();
      sub_20C132DC4();
      v17 = v16;
      v18 = *(v6 + 8);
      v18(v8, v5);
      v18(v11, v5);
      return v17 > a1;
    }
  }

  else
  {
    sub_20B520158(v22, &unk_27C768A00);
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_20B520158(v4, &qword_27C762AC0);
  return 1;
}

uint64_t sub_20B660288()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20B52A9D4;

  return sub_20B65D430(v2, v3);
}

void sub_20B660394(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a3)
  {
    sub_20B660414();
    v4 = swift_allocError();
    *v5 = 0;
    a3();
  }
}

unint64_t sub_20B660414()
{
  result = qword_27C762FA8;
  if (!qword_27C762FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762FA8);
  }

  return result;
}

uint64_t sub_20B660468(uint64_t a1, char a2)
{
  if (a2 < 0)
  {
    MEMORY[0x20F2F58E0](1);
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
  }

  sub_20C13CA64();
}

uint64_t sub_20B66054C()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20B660468(v3, v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B66059C()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20B660468(v3, v1);
  return sub_20C13E1B4();
}

unint64_t sub_20B6605F0()
{
  result = qword_27C762FB0;
  if (!qword_27C762FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762FB0);
  }

  return result;
}

uint64_t sub_20B660644(unsigned __int8 a1, unsigned __int8 a2)
{
  if ((a1 & 0x80) != 0)
  {
    if ((a2 & 0x80) != 0)
    {
      if ((a1 & 0x7F) != 0)
      {
        if ((a1 & 0x7F) == 1)
        {
          v9 = 1953064037;
        }

        else
        {
          v9 = 1702257011;
        }

        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
        v9 = 0x6574656C6564;
      }

      v11 = 1953064037;
      if ((a2 & 0x7F) != 1)
      {
        v11 = 1702257011;
      }

      if ((a2 & 0x7F) != 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0x6574656C6564;
      }

      if ((a2 & 0x7F) != 0)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (v9 != v12 || v10 != v13)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((a2 & 0x80) == 0)
  {
    v2 = 0xEC00000079726172;
    v3 = 0x62694C6F54646461;
    v4 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v5 = 0x7261656C63;
      }

      else
      {
        v5 = 1953064037;
      }

      if (v4 == 1)
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xE400000000000000;
      }

      v7 = a2;
      if (!a2)
      {
LABEL_17:
        if (v5 != v3 || v6 != v2)
        {
LABEL_41:
          v8 = sub_20C13DFF4();
          goto LABEL_42;
        }

LABEL_40:
        v8 = 1;
LABEL_42:

        return v8 & 1;
      }
    }

    else
    {
      v5 = 0x62694C6F54646461;
      v6 = 0xEC00000079726172;
      v7 = a2;
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    if (v7 == 1)
    {
      v3 = 0x7261656C63;
    }

    else
    {
      v3 = 1953064037;
    }

    if (v7 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xE400000000000000;
    }

    goto LABEL_17;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for QueueMenuOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for QueueMenuOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_20B6609C0()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  v4 = objc_allocWithZone(type metadata accessor for PhoneSessionHeartRateDiscoveryView());

  v6 = sub_20B965698(v5);

  return v6;
}

char *sub_20B660AF4()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  v4 = objc_allocWithZone(type metadata accessor for PhoneSessionWatchDiscoveryView());

  v6 = sub_20B5E4178(v5);

  return v6;
}

char *sub_20B660C24()
{
  if (sub_20C133B84())
  {
    return 0;
  }

  v1 = objc_allocWithZone(type metadata accessor for PhoneSessionInstructionsView());

  return sub_20B9EB464(v2);
}

id sub_20B660C8C(uint64_t a1, uint64_t a2)
{
  if (sub_20C133B84())
  {
    return 0;
  }

  v5 = objc_allocWithZone(type metadata accessor for DisplayPreferencesViewController());

  v6 = sub_20BC44420(a1, a2);

  return v6;
}

id sub_20B660D38()
{
  if (qword_27C760768 != -1)
  {
    swift_once();
  }

  v1 = *&dword_27C79A5F0;

  return sub_20BF48CAC(v1, 2.0, 5.0);
}

char *sub_20B660D9C()
{
  if (sub_20C133B84())
  {
    return 0;
  }

  v1 = objc_allocWithZone(type metadata accessor for PhoneSessionBackgroundView());

  return sub_20B881A38(v2);
}

char *sub_20B660E04()
{
  v0 = objc_allocWithZone(type metadata accessor for PhoneSessionContinueOnWatchView());

  return sub_20B62F908(v1);
}

char *sub_20B660E48()
{
  v0 = objc_allocWithZone(type metadata accessor for PhoneSessionOngoingWorkoutDetectedView());

  return sub_20C078A30(v1);
}

char *sub_20B660E8C(void *a1)
{
  if (sub_20C133B84())
  {
    return 0;
  }

  v3 = objc_allocWithZone(type metadata accessor for SessionBufferView());
  return sub_20B62F244(a1);
}

char *sub_20B660EF0(void *a1)
{
  if (sub_20C133B84())
  {
    return 0;
  }

  v3 = objc_allocWithZone(type metadata accessor for SessionCastingView());
  return sub_20BC89888(a1);
}

void sub_20B660F54(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (sub_20C133B84())
  {
    objc_allocWithZone(type metadata accessor for SessionAudioPlayerViewController());
    v8 = swift_unknownObjectRetain();
    v9 = sub_20B8C81BC(v8, a2);
    v10 = &off_2822B2970;
    v11 = &off_2822B2AA8;
    v12 = &off_2822B2AC0;
    v13 = &off_2822B2AD0;
  }

  else
  {
    objc_allocWithZone(type metadata accessor for SessionVideoPlayerViewController());
    swift_unknownObjectRetain();

    v14 = sub_20BE8FB54(a1, a2, a3);
    v9 = sub_20BE95A84(*MEMORY[0x277CE5DD8]);

    v10 = &off_2822F15B0;
    v11 = &off_2822F1578;
    v12 = &off_2822F1590;
    v13 = &off_2822F15A0;
  }

  *a4 = v9;
  a4[1] = v13;
  a4[2] = v12;
  a4[3] = v11;
  a4[4] = v10;
}

char *sub_20B661074(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C137254();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C133B84();
  result = 0;
  if ((v7 & 1) == 0)
  {
    (*(v4 + 16))(v6, a2, v3);
    v9 = objc_allocWithZone(type metadata accessor for SessionOverlayView());

    v11 = sub_20C130A00(v10, v6);

    return v11;
  }

  return result;
}

uint64_t sub_20B6611E4()
{
  v0 = sub_20C1344B4();
  v2 = v1;
  v4 = v3 & 1;
  sub_20B590B28();
  sub_20B590B7C();
  v5 = sub_20C133BF4();
  sub_20B583F4C(v0, v2, v4);
  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for MeditationCountdownView());
    v7 = sub_20B9DBECC(160.0, 8.0, 54.0, 54.0);
    v8 = &unk_27C762FD8;
    v9 = type metadata accessor for MeditationCountdownView;
  }

  else
  {
    v10 = sub_20C1344B4();
    v12 = v11;
    v14 = v13;
    v15 = sub_20C133B84();
    sub_20B583F4C(v10, v12, v14 & 1);
    v16 = objc_allocWithZone(type metadata accessor for WorkoutCountdownView());
    if (v15)
    {
      v17 = 268.0;
    }

    else
    {
      v17 = 255.0;
    }

    sub_20B78B908(v17);
    v7 = v18;
    v8 = &unk_27C762FD0;
    v9 = type metadata accessor for WorkoutCountdownView;
  }

  sub_20B6618A4(v8, v9);
  return v7;
}

id sub_20B6613A8()
{
  v0 = sub_20C1344B4();
  v2 = v1;
  v9 = v1;
  v4 = v3 & 1;
  LOBYTE(v10) = v3 & 1;
  LOBYTE(v8) = 1;
  sub_20B590B28();
  sub_20B590B7C();
  v5 = sub_20C133BF4();
  sub_20B583F4C(v0, v2, v4);
  if (v5)
  {
    v6 = type metadata accessor for MeditationPlayButtonView();
  }

  else
  {
    v6 = type metadata accessor for WorkoutPlayButtonView();
  }

  return [objc_allocWithZone(v6) initWithFrame_];
}

id sub_20B661490(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_20C1343D4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC8);
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    v10 = &qword_27C762FB8;
    v11 = v5;
LABEL_5:
    sub_20B520158(v11, v10);
    return 0;
  }

  sub_20C133BD4();
  sub_20B520158(v5, &qword_27C762FC8);
  v12 = sub_20C135544();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    v10 = &qword_27C762FC0;
    v11 = v8;
    goto LABEL_5;
  }

  v15 = sub_20BF81694(a2);
  (*(v13 + 8))(v8, v12);
  return v15;
}

char *sub_20B6616A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v26 = a5;
  v27 = a4;
  v9 = sub_20C137254();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1344B4();
  v15 = v14;
  v17 = v16;
  v18 = sub_20C133B84();
  sub_20B583F4C(v13, v15, v17 & 1);
  (*(v10 + 16))(v12, a2, v9);
  sub_20B51CC64(v26, v29);
  if (v18)
  {
    sub_20B51CC64(v25, v28);
    v19 = objc_allocWithZone(type metadata accessor for PhoneSessionPortraitSummaryViewController());

    swift_unknownObjectRetain();
    v20 = sub_20BE0C3A4(a1, v12, a3, v27, v29, v28);
  }

  else
  {
    v21 = objc_allocWithZone(type metadata accessor for PhoneSessionLandscapeSummaryViewController());

    swift_unknownObjectRetain();
    sub_20BFA5E64(a1, v12, a3, v27, v29);
    v20 = v22;
  }

  swift_unknownObjectRelease();
  return v20;
}

uint64_t sub_20B6618A4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_20B6618EC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v12 = 16.0;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView];
  v14 = [v11 layer];
  [v14 setCornerRadius_];

  [v11 setClipsToBounds_];
  v15 = objc_opt_self();
  v16 = [v15 separatorColor];
  v17 = [v11 layer];
  v18 = [v16 CGColor];
  [v17 setBorderColor_];

  v19 = [v11 layer];
  [v19 setBorderWidth_];

  *v13 = v11;
  *(v13 + 1) = &off_2822B63E8;
  v20 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_dateLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = objc_opt_self();
  v23 = [v22 preferredFontForTextStyle_];
  [v21 setFont_];

  v24 = [v15 labelColor];
  [v21 setTextColor_];

  *&v4[v20] = v21;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setAdjustsFontForContentSizeCategory_];
  v26 = *MEMORY[0x277D76918];
  v27 = objc_opt_self();
  v28 = [v27 preferredFontDescriptorWithTextStyle:v26 compatibleWithTraitCollection:0];
  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  if (v29)
  {
    v30 = v29;

    v28 = v30;
  }

  v31 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_subtitleLabel;
  v32 = [v22 fontWithDescriptor:v28 size:0.0];

  [v25 setFont_];
  v33 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v25 setTextColor_];

  [v25 setLineBreakMode_];
  [v25 setNumberOfLines_];
  *&v4[v31] = v25;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setAdjustsFontForContentSizeCategory_];
  v35 = [v27 preferredFontDescriptorWithTextStyle:v26 compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_titleLabel;
  v39 = [v22 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  [v34 setNumberOfLines_];
  v40 = [v15 labelColor];
  [v34 setTextColor_];

  *&v4[v38] = v34;
  v41 = &v4[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_layout];
  *v41 = xmmword_20C1530D0;
  *(v41 + 1) = xmmword_20C1530E0;
  v117.receiver = v4;
  v117.super_class = type metadata accessor for GuidedWorkoutBrickItemCell();
  v42 = objc_msgSendSuper2(&v117, &selRef__hysteresis, a1, a2, a3, a4);
  v43 = [v15 systemBackgroundColor];
  [v42 setBackgroundColor_];

  v44 = [v42 contentView];
  v45 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView;
  [v44 addSubview_];

  v46 = [v42 &selRef_setMaximumFractionDigits_];
  v112 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_dateLabel;
  [v46 addSubview_];

  v47 = [v42 &selRef_setMaximumFractionDigits_];
  v113 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_subtitleLabel;
  [v47 addSubview_];

  v48 = [v42 &selRef_setMaximumFractionDigits_];
  v114 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_titleLabel;
  [v48 addSubview_];

  v115 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_20C1530F0;
  v50 = [*&v42[v45] leadingAnchor];
  v51 = [v42 &selRef_setMaximumFractionDigits_];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v49 + 32) = v53;
  v54 = [*&v42[v45] trailingAnchor];
  v55 = [v42 &selRef_setMaximumFractionDigits_];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v49 + 40) = v57;
  v58 = [*&v42[v45] topAnchor];
  v59 = [v42 &selRef_setMaximumFractionDigits_];
  v60 = [v59 &selRef_setLineBreakMode_];

  v61 = [v58 constraintEqualToAnchor_];
  *(v49 + 48) = v61;
  v62 = [*&v42[v45] bottomAnchor];
  v63 = [v42 &selRef_setMaximumFractionDigits_];
  v64 = [v63 &selRef_secondaryLabel + 5];

  v65 = [v62 constraintEqualToAnchor_];
  *(v49 + 56) = v65;
  v66 = [*&v42[v45] widthAnchor];
  v67 = [v42 &selRef_setMaximumFractionDigits_];
  v68 = [v67 widthAnchor];

  v69 = [v66 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v70) = v116;
  [v69 setPriority_];
  *(v49 + 64) = v69;
  v71 = [*&v42[v45] heightAnchor];
  v72 = [*&v42[v45] widthAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 multiplier:0.666666667];

  sub_20C13BBA4();
  LODWORD(v74) = v116;
  [v73 setPriority_];
  *(v49 + 72) = v73;
  v75 = [*&v42[v112] bottomAnchor];
  v76 = [v42 contentView];
  v77 = [v76 bottomAnchor];

  v78 = [v75 constraintEqualToAnchor:v77 constant:-12.0];
  *(v49 + 80) = v78;
  v79 = [*&v42[v112] leadingAnchor];
  v80 = [v42 contentView];
  v81 = [v80 leadingAnchor];

  v82 = [v79 constraintEqualToAnchor:v81 constant:12.0];
  *(v49 + 88) = v82;
  v83 = [*&v42[v112] trailingAnchor];
  v84 = [v42 contentView];
  v85 = [v84 trailingAnchor];

  v86 = [v83 constraintEqualToAnchor:v85 constant:-12.0];
  *(v49 + 96) = v86;
  v87 = [*&v42[v113] bottomAnchor];
  v88 = [*&v42[v112] topAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:-3.0];

  *(v49 + 104) = v89;
  v90 = [*&v42[v113] leadingAnchor];
  v91 = [*&v42[v112] leadingAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(v49 + 112) = v92;
  v93 = [*&v42[v113] trailingAnchor];
  v94 = [*&v42[v112] trailingAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v49 + 120) = v95;
  v96 = [*&v42[v114] topAnchor];
  v97 = [v42 contentView];

  v98 = [v97 topAnchor];
  v99 = [v96 constraintGreaterThanOrEqualToAnchor_];

  sub_20C13BBA4();
  LODWORD(v100) = v116;
  [v99 setPriority_];
  *(v49 + 128) = v99;
  v101 = [*&v42[v114] bottomAnchor];
  v102 = [*&v42[v113] topAnchor];
  v103 = [v101 &selRef:v102 alertControllerReleasedDictationButton:? + 5];

  *(v49 + 136) = v103;
  v104 = [*&v42[v114] leadingAnchor];
  v105 = [*&v42[v113] leadingAnchor];
  v106 = [v104 &selRef:v105 alertControllerReleasedDictationButton:? + 5];

  *(v49 + 144) = v106;
  v107 = [*&v42[v114] trailingAnchor];
  v108 = [*&v42[v113] trailingAnchor];
  v109 = [v107 &selRef:v108 alertControllerReleasedDictationButton:? + 5];

  *(v49 + 152) = v109;
  sub_20B51C88C(0, &qword_281100500);
  v110 = sub_20C13CC54();

  [v115 activateConstraints_];

  return v42;
}

id sub_20B662A30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedWorkoutBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GuidedWorkoutBrickItemCell()
{
  result = qword_281101528;
  if (!qword_281101528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B662B58()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B662C28(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B662C74@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B662CCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_20B662D30(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();

  return sub_20B72097C(0, 1.0, v3);
}

double sub_20B662DA4(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();
  sub_20B72097C(0, 1.0, v3);
  return v4 * 0.666666667;
}

uint64_t sub_20B662E38(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v215 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v172 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v198 = v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v199 = v172 - v7;
  v197 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = v172 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v172 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v209 = *(v15 - 8);
  v210 = v15;
  v16 = *(v209 + 64);
  MEMORY[0x28223BE20](v15);
  v196 = v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v207 = v172 - v18;
  v206 = sub_20C1391C4();
  v205 = *(v206 - 1);
  MEMORY[0x28223BE20](v206);
  v20 = v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_20C138A64();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v208 = v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v22 - 8);
  v204 = v172 - v23;
  v24 = sub_20C13C554();
  v217 = *(v24 - 1);
  v218 = v24;
  MEMORY[0x28223BE20](v24);
  v216 = (v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_20C137C24();
  v222 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v211 = v27;
  v212 = v172 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v221 = v172 - v29;
  v30 = sub_20C136CD4();
  v213 = *(v30 - 8);
  v214 = v30;
  MEMORY[0x28223BE20](v30);
  v219 = v172 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C134E44();
  MEMORY[0x28223BE20](v32 - 8);
  v220 = v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C134014();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v38 = v172 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v39 == 33)
  {
    v121 = v223;
    v122 = *&v223[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_titleLabel];
    v123 = sub_20C13C914();
    [v122 setText_];

    v124 = *&v121[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_subtitleLabel];
    v125 = sub_20C13C914();
    [v124 setText_];

    v126 = *&v121[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_dateLabel];
    v127 = sub_20C13C914();
    [v126 setText_];

    return sub_20BA1DB00();
  }

  else if (v39 == 32)
  {
    v183 = v20;
    v184 = v14;
    v181 = v16;
    v195 = v26;
    v182 = v11;
    v40 = v36;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v42 = swift_projectBox();
    v43 = v42 + *(v41 + 64);
    v44 = *v43;
    v45 = *(v43 + 8);
    v47 = *(v43 + 16);
    v46 = *(v43 + 24);
    v48 = *(v43 + 32);
    v49 = *(v43 + 40);
    v189 = v35;
    v50 = *(v35 + 16);
    v190 = v40;
    v50(v38, v42, v40);
    v51 = v223;
    v52 = *&v223[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_titleLabel];
    v53 = v44;
    v54 = v45;
    v55 = v47;
    v193 = v46;

    v192 = v48;

    v191 = v53;
    [v52 setAttributedText_];
    [*&v51[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_subtitleLabel] setAttributedText_];
    v56 = *&v51[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_dateLabel];
    v187 = v55;
    [v56 setAttributedText_];
    v57 = v220;
    v188 = v38;
    sub_20C133F04();
    v186 = sub_20C138054();
    v215 = v58;
    v59 = v219;
    sub_20C134E34();
    v60 = v221;
    sub_20C136CB4();
    v185 = sub_20C136CC4();
    v194 = v61;
    sub_20B51C88C(0, &qword_281100530);
    v62 = sub_20C13D374();
    v63 = v216;
    v64 = v217;
    *v216 = v62;
    v65 = v218;
    (*(v64 + 104))(v63, *MEMORY[0x277D85200], v218);
    LOBYTE(v52) = sub_20C13C584();
    result = (*(v64 + 8))(v63, v65);
    if (v52)
    {
      v218 = v54;
      v67 = *&v51[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView];
      v68 = *&v51[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v67 setContentMode_];
      if (sub_20BA66C54(v60, v67, v68, 0))
      {
        v217 = v49;
        v178 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v180 = v67;
        v179 = ObjectType;
        v70 = v222;
        v71 = *(v222 + 16);
        v72 = v212;
        v73 = v195;
        v175 = v222 + 16;
        v174 = v71;
        v71(v212, v60, v195);
        v74 = *(v70 + 80);
        v75 = (v74 + 24) & ~v74;
        v172[0] = v211 + 7;
        v76 = (v211 + 7 + v75) & 0xFFFFFFFFFFFFFFF8;
        v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
        v216 = v68;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v177 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
        v79 = (v78 + 31) & 0xFFFFFFFFFFFFFFF8;
        v176 = v74;
        v80 = swift_allocObject();
        *(v80 + 16) = v178;
        v81 = v72;
        v82 = v186;
        v173 = *(v70 + 32);
        v172[1] = v70 + 32;
        v173(v80 + v75, v81, v73);
        v83 = (v80 + v76);
        v84 = v194;
        *v83 = v185;
        v83[1] = v84;
        v85 = (v80 + v77);
        v86 = v215;
        *v85 = v82;
        v85[1] = v86;
        *(v80 + v78) = 2;
        v87 = v216;
        v88 = v80 + v177;
        *v88 = MEMORY[0x277D84F90];
        *(v88 + 8) = 0;
        v89 = (v80 + v79);
        *v89 = 0;
        v89[1] = 0;
        v90 = v87[19];

        v91 = v179;
        v92 = v180;

        v90(sub_20B6643D8, v80, v91, v87);

        [v92 bounds];
        if (v93 <= 0.0 || (v95 = v94, v94 <= 0.0))
        {

          v117 = v195;
          v139 = v222;
        }

        else
        {
          v96 = v93;
          v178 = ~v176;
          (v87[15])(0, v91, v87);
          v97 = v204;
          v98 = v92;
          v99 = v221;
          v100 = v195;
          v174(v204, v221, v195);
          (*(v222 + 56))(v97, 0, 1, v100);
          (v87[2])(v97, v91, v87);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v101 = sub_20C13D5A4();
          [v98 setBackgroundColor_];

          (v87[22])(COERCE_DOUBLE(*&v96), COERCE_DOUBLE(*&v95), 0, v91, v87);
          v102 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v103 = v212;
          v104 = v174;
          v174(v212, v99, v100);
          v105 = (v176 + 16) & v178;
          v106 = (v172[0] + v105) & 0xFFFFFFFFFFFFFFF8;
          v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
          v108 = swift_allocObject();
          v109 = v108 + v105;
          v110 = v195;
          v173(v109, v103, v195);
          *(v108 + v106) = v102;
          v111 = (v108 + v107);
          *v111 = v96;
          v111[1] = v95;
          v216 = v108;
          v112 = (v108 + ((v107 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v112 = 0;
          v112[1] = 0;
          v104(v103, v99, v110);
          (*(v205 + 104))(v183, *MEMORY[0x277D542A8], v206);

          v113 = v208;
          sub_20C138A54();
          v114 = v184;
          sub_20B5F1D48(v113, v184);
          v116 = v209;
          v115 = v210;
          if ((*(v209 + 48))(v114, 1, v210) == 1)
          {
            sub_20B520158(v114, &unk_27C766670);
            sub_20BA1DB00();

            (*(v202 + 8))(v113, v203);
            v117 = v195;
            v119 = v213;
            v118 = v214;
            v60 = v99;
            v59 = v219;
            v57 = v220;
            v120 = v191;
LABEL_16:
            v139 = v222;
LABEL_19:
            (*(v139 + 8))(v60, v117);
            (*(v119 + 8))(v59, v118);

            sub_20B62A2AC(v57);
            return (*(v189 + 8))(v188, v190);
          }

          v206 = *(v116 + 32);
          v206(v207, v114, v115);
          v140 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v141 = v195;
          v104(v103, v99, v195);
          v142 = (v176 + 40) & v178;
          v143 = v142 + v211;
          v144 = (v142 + v211) & 0xFFFFFFFFFFFFFFF8;
          v145 = swift_allocObject();
          *(v145 + 2) = v140;
          v145[3] = v96;
          v145[4] = v95;
          v173(v145 + v142, v103, v141);
          *(v145 + v143) = 0;
          v146 = v145 + v144;
          *(v146 + 1) = 0;
          *(v146 + 2) = 0;
          v147 = swift_allocObject();
          *(v147 + 16) = sub_20B66456C;
          *(v147 + 24) = v145;
          v148 = v209;
          v149 = v210;
          v150 = v196;
          (*(v209 + 16))(v196, v207, v210);
          v151 = v148;
          v152 = (*(v148 + 80) + 16) & ~*(v148 + 80);
          v153 = (v181 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
          v154 = swift_allocObject();
          v206((v154 + v152), v150, v149);
          v155 = (v154 + v153);
          *v155 = sub_20B5F67A4;
          v155[1] = v147;
          v156 = v199;
          sub_20C137C94();
          v157 = swift_allocObject();
          v158 = v216;
          *(v157 + 16) = sub_20B6644B0;
          *(v157 + 24) = v158;
          v159 = swift_allocObject();
          *(v159 + 16) = sub_20B5F67D4;
          *(v159 + 24) = v157;
          v160 = v200;
          v161 = v198;
          v162 = v201;
          (*(v200 + 16))(v198, v156, v201);
          v163 = (*(v160 + 80) + 16) & ~*(v160 + 80);
          v164 = (v197 + v163 + 7) & 0xFFFFFFFFFFFFFFF8;
          v165 = swift_allocObject();
          (*(v160 + 32))(v165 + v163, v161, v162);
          v166 = (v165 + v164);
          *v166 = sub_20B5DF204;
          v166[1] = v159;

          v167 = v182;
          sub_20C137C94();
          v168 = *(v160 + 8);
          v168(v156, v162);
          v169 = sub_20C137CB4();
          v170 = swift_allocObject();
          *(v170 + 16) = 0;
          *(v170 + 24) = 0;
          v169(sub_20B52347C, v170);

          v171 = v222;

          v168(v167, v162);
          (*(v151 + 8))(v207, v210);
          (*(v202 + 8))(v208, v203);
          v139 = v171;
          v117 = v195;
        }

        v119 = v213;
        v118 = v214;
        v57 = v220;
        v60 = v221;
        v59 = v219;
        v120 = v191;
        goto LABEL_19;
      }

      v117 = v195;
      v119 = v213;
      v118 = v214;
      v120 = v191;
      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
    sub_20C13B534();

    v128 = v223;
    v129 = sub_20C13BB74();
    v130 = sub_20C13D1D4();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v224 = a1;
      v225 = v133;
      *v131 = 138543618;
      *(v131 + 4) = v128;
      *v132 = v128;
      *(v131 + 12) = 2082;
      v134 = sub_20B5F66D0();
      v135 = v128;
      v136 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v134);
      v138 = sub_20B51E694(v136, v137, &v225);

      *(v131 + 14) = v138;
      _os_log_impl(&dword_20B517000, v129, v130, "Attempted to configure %{public}@ with item: %{public}s", v131, 0x16u);
      sub_20B520158(v132, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v132, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v133);
      MEMORY[0x20F2F6A40](v133, -1, -1);
      MEMORY[0x20F2F6A40](v131, -1, -1);
    }

    return (*(v215 + 8))(v4, v2);
  }

  return result;
}

void sub_20B6643D8()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA553CC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B6644B0(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63830(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B66456C(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F308C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20B664620()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView);
  v6 = [v3 layer];
  [v6 setCornerRadius_];

  [v3 setClipsToBounds_];
  v7 = objc_opt_self();
  v8 = [v7 separatorColor];
  v9 = [v3 layer];
  v10 = [v8 CGColor];
  [v9 setBorderColor_];

  v11 = [v3 layer];
  [v11 setBorderWidth_];

  *v5 = v3;
  v5[1] = &off_2822B63E8;
  v12 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_dateLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  v14 = objc_opt_self();
  v15 = [v14 preferredFontForTextStyle_];
  [v13 setFont_];

  v34 = v7;
  v16 = [v7 labelColor];
  [v13 setTextColor_];

  *(v0 + v12) = v13;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  v18 = *MEMORY[0x277D76918];
  v19 = objc_opt_self();
  v20 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_subtitleLabel;
  v24 = [v14 fontWithDescriptor:v20 size:0.0];

  [v17 setFont_];
  v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v17 setTextColor_];

  [v17 setLineBreakMode_];
  [v17 setNumberOfLines_];
  *(v0 + v23) = v17;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  v27 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_titleLabel;
  v31 = [v14 fontWithDescriptor:v27 size:0.0];

  [v26 setFont_];
  [v26 setNumberOfLines_];
  v32 = [v34 labelColor];
  [v26 setTextColor_];

  *(v0 + v30) = v26;
  v33 = (v0 + OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_layout);
  *v33 = xmmword_20C1530D0;
  v33[1] = xmmword_20C1530E0;
  sub_20C13DE24();
  __break(1u);
}

void sub_20B664CAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVCatalogProgramDetailViewController();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_20B794D64(0);
  sub_20B7961CC();
  [v0 setRestoresFocusAfterTransition_];
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider];
  [*(*(v1 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
  [*(*(v1 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInsetAdjustmentBehavior_];
  sub_20BB83A1C();
  sub_20B9768EC(0, 1, 80.0);
}

id sub_20B664DD4()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for TVCatalogProgramDetailViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLayoutSubviews);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result layoutIfNeeded];

    v3 = *&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_gradientMaskLayer];
    [*&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_bottomBlurView] bounds];
    [v3 setFrame_];
    v4 = *&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_shroudView];
    [*&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_artworkView] bounds];
    [v4 setFrame_];
    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider];
    v6 = *(v5 + 408);
    __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
    v7 = *&v6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
    v8 = v6;
    [v7 bounds];
    sub_20B9D8614(v9, v10, v11, v12);

    [*(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
    return sub_20B978C34(v13, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B665060(char a1)
{
  v16 = sub_20C1333A4();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TVCatalogProgramDetailViewController();
  v18.receiver = v1;
  v18.super_class = v9;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1 & 1);
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider];
  v11 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_programDetail;
  swift_beginAccess();
  sub_20B52F9E8(v10 + v11, v8, &qword_27C763090);
  v12 = sub_20C135974();
  v13 = (*(*(v12 - 8) + 48))(v8, 1, v12);
  sub_20B520158(v8, &qword_27C763090);
  if (v13 == 1)
  {
    *(v10 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
  }

  else
  {
    v17 = v10;
    sub_20BB86150(v5);
    type metadata accessor for TVCatalogProgramPageDataProvider();
    sub_20B667330(&qword_27C7630A0, type metadata accessor for TVCatalogProgramPageDataProvider);
    sub_20C138C54();
    (*(v3 + 8))(v5, v16);
  }

  sub_20B667330(&unk_27C763078, type metadata accessor for TVCatalogProgramDetailViewController);
  sub_20B667330(&qword_27C763098, type metadata accessor for TVCatalogProgramDetailViewController);
  return sub_20C139364();
}

void sub_20B66538C(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVCatalogProgramDetailViewController();
  v16.receiver = v2;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1 & 1);
  v15 = v2;
  sub_20C132E84();
  sub_20B667330(&unk_27C763078, type metadata accessor for TVCatalogProgramDetailViewController);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v12 = sub_20C13CC74();

    v15 = v2;
    MEMORY[0x28223BE20](v13);
    *(&v14 - 2) = &v15;
    LOBYTE(v11) = sub_20B79AEEC(sub_20B5978BC, (&v14 - 4), v12);

    if ((v11 & 1) == 0)
    {
      v15 = v2;
      sub_20B667330(&qword_27C763088, type metadata accessor for TVCatalogProgramDetailViewController);
      sub_20C138C64();
    }
  }
}

void sub_20B665640(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v21[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v14 = *(v7 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_artworkView);
  sub_20B52F9E8(a2, v21 - v12, &unk_27C766680);
  v15 = sub_20C137C24();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_20B520158(v13, &unk_27C766680);
  }

  else
  {
    sub_20C137BC4();
    (*(v16 + 8))(v13, v15);
  }

  sub_20B51C88C(0, &qword_27C762070);
  v17 = sub_20C13D5A4();
  if (!v17)
  {
    if (qword_27C760828 != -1)
    {
      swift_once();
    }

    v17 = qword_27C79AE50;
  }

  v18 = v17;
  [v14 setBackgroundColor_];

  v19 = *(v7 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_titleLabel);
  if (a4)
  {
    a4 = sub_20C13C914();
  }

  [v19 setText_];

  v20 = *(v7 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_subtitleLabel);
  if (a6)
  {
    a6 = sub_20C13C914();
  }

  [v20 setText_];
}

id sub_20B6658D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVCatalogProgramDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVCatalogProgramDetailViewController()
{
  result = qword_27C763060;
  if (!qword_27C763060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B665AFC()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B665C18()
{
  [*(*(*(v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider) + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];

  return sub_20B978C34(v1, v2);
}

id sub_20B665C68()
{
  v1 = v0;
  v2 = sub_20C133244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider] + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  MEMORY[0x20F2EA980](0, 0);
  v7 = sub_20C1331B4();
  (*(v3 + 8))(v5, v2);
  v8 = [v6 layoutAttributesForItemAtIndexPath_];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v22.origin.x = v12;
  v22.origin.y = v14;
  v22.size.width = v16;
  v22.size.height = v18;
  CGRectGetHeight(v22);
  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = result;
  [result safeAreaInsets];

  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v20 = result;
  [result safeAreaInsets];

  if (v8)
  {
    [v8 bounds];
    CGRectGetHeight(v23);
  }

  [*&v1[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_titleLabel] frame];
  CGRectGetMaxY(v24);

  return 0;
}

__n128 sub_20B665F68@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_layout;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = *(v2 + 32);
  v5 = *(v2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_20B666070@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &unk_27C7629C0);
}

uint64_t sub_20B6660D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B6662A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B666360()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20B6663C4()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

void sub_20B666440()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_visibility) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_resignActiveObserver) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseCoordinator;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v3 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseHandler;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v4 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dynamicOfferCoordinator;
  *(v1 + v4) = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v5 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_webUserInterfaceCoordinator;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v6 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_lastFocusedIndexPath;
  v7 = sub_20C133244();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_settlingTimer) = 0;
  v8 = (v1 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_layout);
  *v8 = xmmword_20C14F590;
  v8[1] = xmmword_20C14F5A0;
  v8[2] = xmmword_20C14F5B0;
  v8[3] = xmmword_20C14F5C0;
  v9 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_artworkView;
  v10 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_shroudView;
  v12 = objc_opt_self();
  v13 = [v12 effectWithStyle_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v1 + v11) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_bottomBlurView;
  v16 = [v12 effectWithStyle_];
  v17 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v17 &selRef_count + 2];
  *(v1 + v15) = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_titleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v20 = sub_20BD518BC();

  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  [v20 setAllowsDefaultTighteningForTruncation_];
  v21 = objc_opt_self();
  v22 = [v21 preferredFontForTextStyle_];
  [v22 pointSize];
  v24 = v23;

  v25 = [v21 boldSystemFontOfSize_];
  [v20 setFont_];

  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  [v20 setTextColor_];

  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];
  *(v1 + v18) = v20;
  v28 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v30 = sub_20BD518BC();

  [v30 setLineBreakMode_];
  [v30 setNumberOfLines_];
  [v30 setAllowsDefaultTighteningForTruncation_];
  v31 = [v21 preferredFontForTextStyle_];
  [v31 pointSize];
  v33 = v32;

  v34 = [v21 systemFontOfSize:v33 weight:*MEMORY[0x277D74410]];
  [v30 setFont_];

  v35 = [v26 whiteColor];
  [v30 setTextColor_];

  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  [v30 setAdjustsFontForContentSizeCategory_];
  *(v1 + v28) = v30;
  v36 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_ellipsisButton;
  v37 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v38 = sub_20B8C9328(0);
  v39 = objc_allocWithZone(type metadata accessor for TVButton());
  *(v1 + v36) = sub_20BB87F4C(v38, 0, 1, v39, 0.0, 0.0, 0.0, 0.0);
  *(v1 + OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_menu) = 0;
  v40 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_gradientMaskLayer;
  *(v1 + v40) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B666A30(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v58[3] = a5;
  v58[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_visibility] = 1;
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_resignActiveObserver] = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseCoordinator;
  *&a4[v10] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v11 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseHandler;
  *&a4[v11] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v12 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dynamicOfferCoordinator;
  *&a4[v12] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v13 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_webUserInterfaceCoordinator;
  *&a4[v13] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v14 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_lastFocusedIndexPath;
  v15 = sub_20C133244();
  (*(*(v15 - 8) + 56))(&a4[v14], 1, 1, v15);
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_settlingTimer] = 0;
  v16 = &a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_layout];
  *v16 = xmmword_20C14F590;
  v16[1] = xmmword_20C14F5A0;
  v16[2] = xmmword_20C14F5B0;
  v16[3] = xmmword_20C14F5C0;
  v17 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_artworkView;
  v18 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a4[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_shroudView;
  v20 = objc_opt_self();
  v21 = [v20 effectWithStyle_];
  v22 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&a4[v19] = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_bottomBlurView;
  v24 = [v20 effectWithStyle_];
  v25 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v25 &selRef_count + 2];
  *&a4[v23] = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_titleLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v28 = sub_20BD518BC();

  [v28 setLineBreakMode_];
  [v28 setNumberOfLines_];
  [v28 setAllowsDefaultTighteningForTruncation_];
  v29 = objc_opt_self();
  v30 = [v29 preferredFontForTextStyle_];
  [v30 pointSize];
  v32 = v31;

  v33 = [v29 boldSystemFontOfSize_];
  [v28 setFont_];

  v34 = objc_opt_self();
  v35 = [v34 whiteColor];
  [v28 setTextColor_];

  [v28 &selRef_count + 2];
  [v28 setAdjustsFontForContentSizeCategory_];
  *&a4[v26] = v28;
  v36 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_subtitleLabel;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v38 = sub_20BD518BC();

  [v38 setLineBreakMode_];
  [v38 setNumberOfLines_];
  [v38 setAllowsDefaultTighteningForTruncation_];
  v39 = [v29 preferredFontForTextStyle_];
  [v39 pointSize];
  v41 = v40;

  v42 = [v29 systemFontOfSize:v41 weight:*MEMORY[0x277D74410]];
  [v38 setFont_];

  v43 = [v34 whiteColor];
  [v38 setTextColor_];

  [v38 &selRef_count + 2];
  [v38 setAdjustsFontForContentSizeCategory_];
  *&a4[v36] = v38;
  v44 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_ellipsisButton;
  v45 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v46 = sub_20B8C9328(0);
  v47 = objc_allocWithZone(type metadata accessor for TVButton());
  *&a4[v44] = sub_20BB87F4C(v46, 0, 1, v47, 0.0, 0.0, 0.0, 0.0);
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_menu] = 0;
  v48 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_gradientMaskLayer;
  *&a4[v48] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_bag] = *&v57[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_eventHub] = v57[0];
  sub_20B51CC64(v58, &a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_platform] = v57[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v57, &a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v57, &a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_timerProvider]);
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider] = a2;
  v56.receiver = a4;
  v56.super_class = type metadata accessor for TVCatalogProgramDetailViewController();
  v49 = objc_msgSendSuper2(&v56, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v58);
  v50 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider;
  *(*&v49[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_backgroundArtworkDelegate + 8) = &off_28229B2F0;
  swift_unknownObjectWeakAssign();
  *(*(*&v49[v50] + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8) = &off_28229B3A0;
  swift_unknownObjectWeakAssign();
  v51 = &v49[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_eventHub];
  *(*&v49[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v49[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v52 = OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v49[v52] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v51 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(*&v49[OBJC_IVAR____TtC9SeymourUI36TVCatalogProgramDetailViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v51 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  return v49;
}

uint64_t sub_20B667330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B667388()
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](0);
  return sub_20C13E1B4();
}

uint64_t sub_20B6673CC()
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](0);
  return sub_20C13E1B4();
}

void sub_20B66740C(void *a1, CGFloat a2, CGFloat a3)
{
  if (a3 <= 0.0 || a2 <= 0.0)
  {
    sub_20B667560();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    UIGraphicsBeginImageContextWithOptions(*&a2, 0, 0.0);
    [a1 setFill];
    v9.origin.x = 0.0;
    v9.origin.y = 0.0;
    v9.size.width = a2;
    v9.size.height = a3;
    UIRectFill(v9);
    v6 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v6)
    {
      v7 = [(UIImage *)v6 CGImage];
      if (v7)
      {
        v8 = v7;
        [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCGImage_];

        return;
      }
    }

    sub_20B667560();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_20B667560()
{
  result = qword_27C7630A8;
  if (!qword_27C7630A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7630A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumberFormattingUtility(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NumberFormattingUtility(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_20B667698()
{
  result = qword_27C7630B0;
  if (!qword_27C7630B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7630B0);
  }

  return result;
}

uint64_t sub_20B6676EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v29 = &v29 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_20C138204();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_playlist;
  swift_beginAccess();
  sub_20B66A790(v14, v1 + v17);
  swift_endAccess();
  sub_20B667B1C(v9);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20B66A800;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20B66A8BC;
  *(v20 + 24) = v19;
  (*(v4 + 16))(v6, v9, v3);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  (*(v4 + 32))(v22 + v21, v6, v3);
  v23 = (v22 + ((v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20B66A8B4;
  v23[1] = v20;
  v24 = v29;
  sub_20C137C94();
  v25 = *(v4 + 8);
  v25(v9, v3);
  v26 = sub_20C137CB4();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v26(sub_20B5DF6DC, v27);

  return (v25)(v24, v3);
}

uint64_t sub_20B667AB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B667EA4(*(result + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_shouldAnimate));
  }

  return result;
}

uint64_t sub_20B667B1C@<X0>(uint64_t a1@<X8>)
{
  v30 = sub_20C133B74();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C136594();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1381E4();
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  v31 = v2;
  if (v9)
  {
    v11 = MEMORY[0x277D84F90];
    v10 = sub_20BEDE85C(v9, 0);
    v12 = sub_20BEE200C(v32, &v10[(*(v2 + 80) + 32) & ~*(v2 + 80)], v9, v8);
    v27 = v32[2];
    v28 = v12;
    v26 = v32[3];
    v25 = v32[4];

    sub_20B583EDC();
    if (v28 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = v10;
LABEL_5:
  v32[0] = v10;
  sub_20B668A50(v32);

  v13 = v32[0];
  v14 = v32[0][2];
  if (v14)
  {
    v25 = a1;
    v32[0] = v11;
    sub_20BB5D604(0, v14, 0);
    v15 = v32[0];
    v16 = *(v31 + 16);
    v17 = *(v31 + 80);
    v24[1] = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v27 = *(v31 + 72);
    v28 = v16;
    v31 += 16;
    v19 = (v31 - 8);
    v26 = (v5 + 32);
    do
    {
      v20 = v30;
      v28(v4, v18, v30);
      sub_20C133B24();
      sub_20C136554();
      (*v19)(v4, v20);
      v32[0] = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        sub_20BB5D604(v21 > 1, v22 + 1, 1);
        v15 = v32[0];
      }

      v15[2] = v22 + 1;
      (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, v29);
      v18 = v27 + v18;
      --v14;
    }

    while (v14);

    a1 = v25;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  sub_20C02BC6C(v15, a1);
}

uint64_t sub_20B667EA4(int a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_lazyLockupFetcher);
  v9 = *(sub_20C02A560() + 16);

  v10 = MEMORY[0x277D84F90];
  if (v9)
  {

    v11 = sub_20C0307FC(v8, v2);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v33 = 0uLL;
  LOBYTE(v34) = 1;
  *(&v34 + 1) = 0;
  *&v35 = 0;
  WORD4(v35) = 128;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  LOBYTE(v39) = 0;
  *(&v39 + 1) = v11;
  *&v40[0] = v10;
  *(v40 + 8) = 0u;
  *(&v40[1] + 8) = 0u;
  *(&v40[2] + 1) = 0;
  v41 = 2;
  nullsub_1(&v33);
  v12 = v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row;
  v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 144);
  v42[8] = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 128);
  v42[9] = v13;
  v43 = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 160);
  v14 = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 80);
  v42[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 64);
  v42[5] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 112);
  v42[6] = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 96);
  v42[7] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 16);
  v42[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row);
  v42[1] = v16;
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 48);
  v42[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 32);
  v42[3] = v17;
  v18 = v40[2];
  *(v12 + 128) = v40[1];
  *(v12 + 144) = v18;
  *(v12 + 160) = v41;
  v19 = v38;
  *(v12 + 64) = v37;
  *(v12 + 80) = v19;
  v20 = v40[0];
  *(v12 + 96) = v39;
  *(v12 + 112) = v20;
  v21 = v34;
  *v12 = v33;
  *(v12 + 16) = v21;
  v22 = v36;
  *(v12 + 32) = v35;
  *(v12 + 48) = v22;
  sub_20B520158(v42, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      HIDWORD(v32) = a1;
      v25 = sub_20B61D348(v2, result);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        sub_20B5E2E18();
        *v7 = sub_20C13D374();
        (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
        v31 = sub_20C13C584();
        result = (*(v5 + 8))(v7, v4);
        if ((v31 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620BE4(v28, v29, v30, v2, BYTE4(v32) & 1, v24);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B668188()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_bookmarkClient);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_mediaTagStringBuilder);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_playlist, &qword_27C7643F0);
  return v0;
}

uint64_t sub_20B6682CC()
{
  sub_20B668188();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVPlaylistGalleryShelf()
{
  result = qword_27C763100;
  if (!qword_27C763100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B668378()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B668494();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20B668494()
{
  if (!qword_27C76B5C0)
  {
    sub_20C138204();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76B5C0);
    }
  }
}

uint64_t sub_20B6684FC()
{
  swift_getObjectType();
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B6685F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B667EA4(1);
  }

  return result;
}

uint64_t sub_20B66864C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B66A780;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B5DF3B8;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20B668910@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B668988@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20B668A50(void **a1)
{
  v2 = *(sub_20C133B74() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DD0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B668AF8(v5);
  *a1 = v3;
}

void sub_20B668AF8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C133B74();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133B74() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20B668ECC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20B668C24(0, v2, 1, a1);
  }
}

void sub_20B668C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C133B74();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C133B44();
      v28 = sub_20C133B44();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20B668ECC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C133B74();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20B6698B0(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C133B44();
      v126 = sub_20C133B44();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C133B44();
        v39 = sub_20C133B44();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20B6698B0(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C133B44();
    v104 = sub_20C133B44();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_20B6698B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C133B74();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C133B44();
          v45 = sub_20C133B44();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C133B44();
        v26 = sub_20C133B44();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A07CC(&v64, &v63, &v62);
}

uint64_t sub_20B669E68(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_row;
  sub_20B5D8060(v18);
  v5 = v18[9];
  *(v4 + 128) = v18[8];
  *(v4 + 144) = v5;
  *(v4 + 160) = v19;
  v6 = v18[5];
  *(v4 + 64) = v18[4];
  *(v4 + 80) = v6;
  v7 = v18[7];
  *(v4 + 96) = v18[6];
  *(v4 + 112) = v7;
  v8 = v18[1];
  *v4 = v18[0];
  *(v4 + 16) = v8;
  v9 = v18[3];
  *(v4 + 32) = v18[2];
  *(v4 + 48) = v9;
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_config) = 20;
  v10 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_playlist;
  v11 = sub_20C138204();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_shouldAnimate) = 1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v17, v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_eventHub) = v17[0];
  type metadata accessor for ShelfLazyLockupFetcher();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 152) = MEMORY[0x277D84F90];

  v14 = sub_20B6B0C04(v13);
  v15 = MEMORY[0x277D84FA0];
  *(v12 + 160) = v14;
  *(v12 + 168) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();

  *(v12 + 136) = 20;
  *(v12 + 144) = 37;
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_lazyLockupFetcher) = v12;
  sub_20C133AA4();
  sub_20B51C710(v17, v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_mediaTagStringBuilder);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVPlaylistGalleryShelf_subscriptionToken) = sub_20C13A914();
  return v2;
}

uint64_t sub_20B66A158(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - v5;
  v7 = type metadata accessor for ShelfMetricAction();
  v54 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v13 = sub_20C134014();
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(a2, v18);
  result = swift_getEnumCaseMultiPayload();
  if (result != 19)
  {
    return sub_20B66A720(v18, type metadata accessor for ShelfItemAction);
  }

  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x20)
  {
    v53 = v6;
    v20 = swift_projectBox();
    sub_20B52F9E8(v20, v12, &unk_27C772250);
    v21 = &v12[*(v10 + 64)];
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = *(v21 + 2);

    sub_20B6222E8(*&v12[*(v10 + 80)], *&v12[*(v10 + 80) + 8]);

    v26 = v56;
    v25 = v57;
    (*(v56 + 32))(v15, v12, v57);
    v27 = sub_20C136664();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    v28 = v7[5];
    v29 = *MEMORY[0x277D51488];
    v30 = sub_20C134F24();
    (*(*(v30 - 8) + 104))(&v9[v28], v29, v30);
    v31 = v7[6];
    v32 = sub_20C132C14();
    (*(*(v32 - 8) + 56))(&v9[v31], 1, 1, v32);
    v33 = sub_20C133E44();
    v34 = v55;
    v35 = v33;
    v37 = v36;
    v38 = v7[8];
    v39 = sub_20C135ED4();
    (*(*(v39 - 8) + 56))(&v9[v38], 1, 1, v39);
    v40 = v7[10];
    v41 = *MEMORY[0x277D51768];
    v42 = sub_20C1352E4();
    (*(*(v42 - 8) + 104))(&v9[v40], v41, v42);
    v43 = v7[11];
    v44 = sub_20C136E94();
    (*(*(v44 - 8) + 56))(&v9[v43], 1, 1, v44);
    v45 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v46 = &v9[v7[7]];
    *v46 = v35;
    *(v46 + 1) = v37;
    v47 = &v9[v7[9]];
    *v47 = 0;
    *(v47 + 1) = 0;
    *&v9[v7[12]] = v45;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FD60(v34, v9, Strong);
      swift_unknownObjectRelease();
    }

    sub_20B66A720(v9, type metadata accessor for ShelfMetricAction);
    v49 = swift_unknownObjectWeakLoadStrong();
    v50 = v53;
    if (v49)
    {
      v51 = v49;
      (*(v54 + 56))(v53, 1, 1, v7);
      sub_20B5D782C(v34, v15, v50, v51);
      swift_unknownObjectRelease();
      sub_20B520158(v50, &unk_27C7622D0);
    }

    return (*(v26 + 8))(v15, v25);
  }

  return result;
}

uint64_t sub_20B66A720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B66A790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_21Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B66A8D4(uint64_t a1)
{
  sub_20C13E164();
  sub_20C133594();
  sub_20B66ABF4(&qword_27C763118, MEMORY[0x277D4FFA8]);
  sub_20C13C7C4();
  sub_20C13CA64();
  MEMORY[0x20F2F58E0](*(v1 + *(a1 + 24)));
  return sub_20C13E1B4();
}

uint64_t sub_20B66A98C(uint64_t a1, uint64_t a2)
{
  sub_20C133594();
  sub_20B66ABF4(&qword_27C763118, MEMORY[0x277D4FFA8]);
  sub_20C13C7C4();
  sub_20C13CA64();
  return MEMORY[0x20F2F58E0](*(v2 + *(a2 + 24)));
}

uint64_t sub_20B66AA2C(uint64_t a1, uint64_t a2)
{
  sub_20C13E164();
  sub_20C133594();
  sub_20B66ABF4(&qword_27C763118, MEMORY[0x277D4FFA8]);
  sub_20C13C7C4();
  sub_20C13CA64();
  MEMORY[0x20F2F58E0](*(v2 + *(a2 + 24)));
  return sub_20C13E1B4();
}

BOOL sub_20B66AAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_20C133534() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_20C13DFF4()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for DatePickerItem()
{
  result = qword_27C763120;
  if (!qword_27C763120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B66ABF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B66AC64()
{
  result = sub_20C133594();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20B66ACE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_shelves);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 40);
      swift_unknownObjectRetain();
      v8(v13, ObjectType, v6);
      v18 = v13[8];
      v19 = v13[9];
      v20 = v14;
      v15[4] = v13[4];
      v15[5] = v13[5];
      v16 = v13[6];
      v17 = v13[7];
      v15[0] = v13[0];
      v15[1] = v13[1];
      v15[2] = v13[2];
      v15[3] = v13[3];
      if (sub_20B5EAF8C(v15) == 1)
      {
        v9 = 1;
      }

      else
      {
        v10 = *(&v16 + 1);
        v21[0] = *(&v16 + 1);
        sub_20B52F9E8(v21, &v12, &qword_27C763188);
        sub_20B520158(v13, &qword_27C762340);
        v11 = *(v10 + 16);
        sub_20B520158(v21, &qword_27C763188);
        v9 = v11 == 0;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v5)
      {
        swift_unknownObjectRelease();
        if (!v9)
        {
          return;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v3;
      v4 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20B66AEB0()
{

  v1 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_lastFocusedIndexPath, &unk_27C7629C0);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_delegate);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_modalityDetail, &qword_27C763160);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_archivedSessionClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_assetClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_configurationClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_subscriptionCache);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_upNextQueueClient);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_configuration, &qword_27C761800);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bodyFocusProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_durationProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_equipmentProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_genreProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_modalityProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_skillLevelProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_themeProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_tipCategoryProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_trainerProperty, &unk_27C7629B0);
  return v0;
}

uint64_t sub_20B66B1B4()
{
  sub_20B66AEB0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVModalityDetailFilterResultPageDataProvider()
{
  result = qword_27C763138;
  if (!qword_27C763138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B66B260()
{
  sub_20C1333A4();
  if (v0 <= 0x3F)
  {
    sub_20B66B4D8(319, &qword_281103E20, MEMORY[0x277CC9AF8]);
    if (v1 <= 0x3F)
    {
      sub_20B66B4D8(319, &qword_27C763148, MEMORY[0x277D52098]);
      if (v2 <= 0x3F)
      {
        sub_20B66B4D8(319, &qword_281103BF0, MEMORY[0x277D50560]);
        if (v3 <= 0x3F)
        {
          sub_20B66B4D8(319, &qword_27C763150, MEMORY[0x277D52060]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_20B66B4D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20B66B52C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763158);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v41 - 8);
  v39 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v13 = *(v12 - 8);
  v42 = v12;
  v43 = v13;
  MEMORY[0x28223BE20](v12);
  v40 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_catalogClient), *(v0 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_catalogClient + 24));
  sub_20C139EF4();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B66D3F0;
  *(v16 + 24) = v15;
  (*(v2 + 16))(v4, v7, v1);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = swift_allocObject();
  (*(v2 + 32))(v18 + v17, v4, v1);
  v19 = (v18 + ((v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_20B66D40C;
  v19[1] = v16;
  v20 = v37;
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20B66D43C;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B5D9CB0;
  *(v23 + 24) = v22;
  v24 = v38;
  v25 = v41;
  (*(v8 + 16))(v38, v20, v41);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = (v39 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v8 + 32))(v28 + v26, v24, v25);
  v29 = (v28 + v27);
  *v29 = sub_20B5D9CCC;
  v29[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v30 = v40;
  sub_20C137C94();
  (*(v8 + 8))(v20, v25);
  v31 = v42;
  v32 = v30;
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B52347C, v34);

  return (*(v43 + 8))(v32, v31);
}

uint64_t sub_20B66BA8C(char *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B66BB00(a1);
  }

  return result;
}

uint64_t sub_20B66BB00(char *a1)
{
  v3 = sub_20C13C554();
  v178 = *(v3 - 8);
  v179 = v3;
  MEMORY[0x28223BE20](v3);
  v177 = (&v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v196 = sub_20C132EE4();
  v210 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v211 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v182 = *(v6 - 8);
  v183 = v6;
  MEMORY[0x28223BE20](v6);
  v181 = &v175 - v7;
  v190 = type metadata accessor for TVFilterRootPropertyUpdated(0);
  MEMORY[0x28223BE20](v190);
  v189 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v9 - 8);
  v188 = &v175 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v11 - 8);
  v208 = &v175 - v12;
  v13 = sub_20C137C24();
  v201 = *(v13 - 8);
  v202 = v13;
  MEMORY[0x28223BE20](v13);
  v207 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_20C136CD4();
  v209 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v199 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v175 - v17;
  v19 = sub_20C134E44();
  MEMORY[0x28223BE20](v19 - 8);
  v204 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v175 - v22;
  v24 = sub_20C134734();
  v205 = *(v24 - 8);
  v206 = v24;
  MEMORY[0x28223BE20](v24);
  v187 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  *&v195 = &v175 - v27;
  MEMORY[0x28223BE20](v28);
  v194 = &v175 - v29;
  MEMORY[0x28223BE20](v30);
  v193 = &v175 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v175 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763160);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v175 - v36;
  v38 = sub_20C135CC4();
  v39 = *(v38 - 8);
  (*(v39 + 16))(v37, a1, v38);
  (*(v39 + 56))(v37, 0, 1, v38);
  v40 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_modalityDetail;
  swift_beginAccess();
  sub_20B5DF2D4(v37, v1 + v40, &qword_27C763160);
  swift_endAccess();
  v41 = *(v1 + 24);
  v191 = v1;
  v192 = v41;
  v42 = a1;
  sub_20C135CB4();
  v43 = sub_20C134704();
  v197 = v44;
  v198 = v43;
  v45 = v205 + 8;
  v46 = *(v205 + 8);
  v46(v34, v24);
  sub_20C135CA4();
  sub_20C134E34();
  v47 = MEMORY[0x277D51268];
  sub_20B66EE10(v23, MEMORY[0x277D51268]);
  sub_20C136CB4();
  v48 = *(v209 + 8);
  v209 += 8;
  v49 = v200;
  v48(v18, v200);
  v50 = v204;
  sub_20C135CA4();
  v51 = v199;
  sub_20C134E34();
  v52 = v50;
  v53 = v192;
  sub_20B66EE10(v52, v47);
  v54 = sub_20C136CC4();
  v203 = v55;
  v204 = v54;
  v48(v51, v49);
  v56 = v193;
  sub_20C135CB4();
  v57 = sub_20C134724();
  v199 = v58;
  v200 = v57;
  v59 = v56;
  v60 = v206;
  v46(v59, v206);
  v61 = v194;
  sub_20C135CB4();
  v62 = v208;
  sub_20C134714();
  v46(v61, v60);
  v63 = v195;
  v193 = v42;
  sub_20C135CB4();
  v64 = sub_20C1346C4();
  v66 = v65;
  v185 = v46;
  v186 = v45;
  v46(v63, v60);
  v67 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_preview;
  swift_beginAccess();
  sub_20B66D534(v62, v53 + v67);
  swift_endAccess();
  v68 = (v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_contentIdentifier);
  *v68 = v64;
  v68[1] = v66;
  v184 = v66;

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v70 = *(sub_20C138094() - 8);
  v71 = *(v70 + 72);
  v72 = *(v70 + 80);
  v73 = (v72 + 32) & ~v72;
  v194 = v69;
  *&v195 = v72;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C1517D0;
  v209 = v73;
  v75 = (v74 + v73);
  *v75 = 0xD00000000000001FLL;
  v75[1] = 0x800000020C195AC0;
  swift_storeEnumTagMultiPayload();
  *(v75 + v71) = 3;
  swift_storeEnumTagMultiPayload();
  v76 = (v75 + 2 * v71);
  v77 = (v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer), *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer + 24));
  *v76 = sub_20C138D34();
  v76[1] = v78;
  swift_storeEnumTagMultiPayload();
  v79 = sub_20C134284();
  if ((*(*(v79 - 8) + 48))(v208, 1, v79) == 1)
  {

    v80 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder), *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder + 24));
    v80 = sub_20C138544();
  }

  v81 = v209;
  v82 = swift_allocObject();
  v195 = xmmword_20C14F980;
  *(v82 + 16) = xmmword_20C14F980;
  v83 = (v82 + v81);
  v84 = v197;
  *v83 = v198;
  v83[1] = v84;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder), *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder + 24));
  v85 = sub_20C138544();

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763170);
  v209 = swift_allocBox();
  v88 = v87;
  v197 = v86[20];
  v89 = (v87 + v86[24]);
  v90 = (v87 + v86[28]);
  *v87 = v85;
  v87[1] = v80;
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  v198 = v80;
  v194 = v85;
  v88[2] = sub_20C138D34();
  v88[3] = v91;
  v92 = v201;
  v93 = v88 + v197;
  v94 = v207;
  v95 = v202;
  (*(v201 + 16))(v93, v207, v202);
  v96 = v203;
  *v89 = v204;
  v89[1] = v96;
  v97 = v209;
  v98 = v199;
  *v90 = v200;
  v90[1] = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v99 = swift_allocObject();
  *(v99 + 16) = v195;
  *(v99 + 32) = v97 | 0x2000000000000006;
  v217 = 0uLL;
  LOBYTE(v218) = 1;
  *(&v218 + 1) = *v216;
  DWORD1(v218) = *&v216[3];
  *&v219 = 0;
  *(&v218 + 1) = 0;
  WORD4(v219) = 128;
  *(&v219 + 10) = *&v214[7];
  HIWORD(v219) = v215;
  v220 = 0uLL;
  *&v221 = 0xD000000000000014;
  *(&v221 + 1) = 0x800000020C195B00;
  v222 = 0uLL;
  LOBYTE(v223) = 0;
  *(&v223 + 1) = *v214;
  DWORD1(v223) = *&v214[3];
  *(&v223 + 1) = v99;
  *&v224[0] = MEMORY[0x277D84F90];
  *(v224 + 8) = 0u;
  *(&v224[1] + 8) = 0u;
  *(&v224[2] + 1) = 0;
  v225 = 2;
  nullsub_1(&v217);
  v100 = *(v53 + 64);
  v101 = *(v53 + 80);
  v102 = *(v53 + 112);
  v226[5] = *(v53 + 96);
  v226[6] = v102;
  v226[3] = v100;
  v226[4] = v101;
  v103 = *(v53 + 128);
  v104 = *(v53 + 144);
  v105 = *(v53 + 160);
  v227 = *(v53 + 176);
  v226[8] = v104;
  v226[9] = v105;
  v226[7] = v103;
  v106 = *(v53 + 32);
  v226[0] = *(v53 + 16);
  v226[1] = v106;
  v226[2] = *(v53 + 48);
  *(v53 + 112) = v223;
  *(v53 + 48) = v219;
  v107 = v225;
  v108 = v224[2];
  v109 = v224[1];
  *(v53 + 128) = v224[0];
  *(v53 + 144) = v109;
  *(v53 + 160) = v108;
  *(v53 + 176) = v107;
  v110 = v222;
  v111 = v221;
  *(v53 + 64) = v220;
  *(v53 + 80) = v111;
  *(v53 + 96) = v110;
  v112 = v218;
  *(v53 + 16) = v217;
  *(v53 + 32) = v112;

  sub_20B520158(v226, &qword_27C762340);
  v113 = *(v53 + 16);
  v114 = *(v53 + 32);
  v115 = *(v53 + 48);
  v116 = *(v53 + 64);
  v117 = *(v53 + 96);
  v232 = *(v53 + 80);
  v233 = v117;
  v230 = v115;
  v231 = v116;
  v118 = *(v53 + 112);
  v119 = *(v53 + 128);
  v120 = *(v53 + 144);
  v121 = *(v53 + 160);
  v238 = *(v53 + 176);
  v236 = v120;
  v237 = v121;
  v234 = v118;
  v235 = v119;
  v228 = v113;
  v229 = v114;
  v122 = v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow;
  v124 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 16);
  v123 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 32);
  v239[0] = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow);
  v239[1] = v124;
  v239[2] = v123;
  v125 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 80);
  v127 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 48);
  v126 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 64);
  v239[6] = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 96);
  v239[5] = v125;
  v239[3] = v127;
  v239[4] = v126;
  v129 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 128);
  v128 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 144);
  v130 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 112);
  v240 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 160);
  v239[9] = v128;
  v239[7] = v130;
  v239[8] = v129;
  v131 = v228;
  v132 = v230;
  *(v122 + 16) = v229;
  *(v122 + 32) = v132;
  *v122 = v131;
  v133 = v231;
  v134 = v232;
  v135 = v234;
  *(v122 + 80) = v233;
  *(v122 + 96) = v135;
  *(v122 + 48) = v133;
  *(v122 + 64) = v134;
  v136 = v235;
  v137 = v236;
  v138 = v237;
  *(v122 + 160) = v238;
  *(v122 + 128) = v137;
  *(v122 + 144) = v138;
  *(v122 + 112) = v136;
  sub_20B52F9E8(&v228, v213, &qword_27C762340);
  sub_20B520158(v239, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  v140 = v196;
  if (!Strong)
  {

    v143 = v191;
    goto LABEL_28;
  }

  v141 = v95;
  v142 = v198;
  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {

    swift_unknownObjectRelease();

LABEL_26:
    v143 = v191;
    v95 = v141;
LABEL_27:
    v94 = v207;
LABEL_28:
    (*(v92 + 8))(v94, v95);
    sub_20B520158(v208, &unk_27C7623C0);
    v162 = v187;
    sub_20C135CB4();
    v163 = sub_20C134704();
    v165 = v164;
    v166 = v206;
    v185(v162, v206);
    v167 = v188;
    sub_20C135CB4();
    (*(v205 + 56))(v167, 0, 1, v166);
    sub_20B8437C4(v163, v165, v167);

    sub_20B520158(v167, &unk_27C7710A0);
    swift_getObjectType();
    v168 = v189;
    sub_20C135CB4();
    type metadata accessor for TVFilterRootPropertyUpdated.PropertyType(0);
    swift_storeEnumTagMultiPayload();
    sub_20B66EDC8(&qword_27C763178, type metadata accessor for TVFilterRootPropertyUpdated);
    sub_20C13A764();
    result = sub_20B66EE10(v168, type metadata accessor for TVFilterRootPropertyUpdated);
    v169 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_shouldPublishPageEventWhenAvailable;
    if (*(v143 + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_shouldPublishPageEventWhenAvailable))
    {
      v213[0] = v143;
      type metadata accessor for TVModalityDetailFilterResultPageDataProvider();
      sub_20B66EDC8(&qword_27C763180, type metadata accessor for TVModalityDetailFilterResultPageDataProvider);
      result = sub_20C138C54();
      *(v143 + v169) = 0;
    }

    return result;
  }

  v176 = Strong;
  v144 = v198;
  if (![*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_25:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v145 = v181;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v146 = v183;
  v147 = sub_20C13BE74();
  result = (*(v182 + 8))(v145, v146);
  v199 = *(v147 + 16);
  v200 = v147;
  if (!v199)
  {
LABEL_23:

    v92 = v201;
    v141 = v202;
    goto LABEL_25;
  }

  v149 = 0;
  v197 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_identifier;
  *&v195 = v200 + 32;
  v182 = v210 + 8;
  v183 = (v210 + 16);
  while (2)
  {
    if (v149 < *(v200 + 16))
    {
      v150 = (v195 + 24 * v149);
      v151 = v150[1];
      v181 = *v150;
      v152 = v150[2];
      v203 = v149 + 1;
      (*v183)(v211, v53 + v197, v140);
      v153 = *(v151 + 16);

      v204 = v152;

      v154 = 0;
      do
      {
        if (v153 == v154)
        {
          (*v182)(v211, v140);

          goto LABEL_13;
        }

        v155 = v154 + 1;
        sub_20B66EDC8(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v156 = sub_20C13C894();
        v154 = v155;
        v144 = v142;
      }

      while ((v156 & 1) == 0);
      (*v182)(v211, v140);
      memmove(v213, (v53 + 16), 0xA8uLL);
      v157 = sub_20B5EAF8C(v213);
      if (v157 == 1)
      {
        v158 = 0;
        v159 = 0;
      }

      else
      {
        v158 = v213[17];
        v159 = v213[18];
      }

      v160 = v204;
      v180 = &v175;
      v212[0] = v158;
      v212[1] = v159;
      MEMORY[0x28223BE20](v157);
      *(&v175 - 2) = v212;
      v161 = sub_20B796758(sub_20B5EAFA4, (&v175 - 4), v160);

      if ((v161 & 1) == 0)
      {

        v144 = v142;
LABEL_13:
        v149 = v203;
        if (v203 == v199)
        {
          goto LABEL_23;
        }

        continue;
      }

      sub_20B5E2E18();
      v170 = sub_20C13D374();
      v172 = v177;
      v171 = v178;
      *v177 = v170;
      v173 = v179;
      (*(v171 + 104))(v172, *MEMORY[0x277D85200], v179);
      v174 = sub_20C13C584();
      result = (*(v171 + 8))(v172, v173);
      if ((v174 & 1) == 0)
      {
        goto LABEL_34;
      }

      sub_20B61EB94(v181, v151, v204, v53, 1, v176);

      swift_unknownObjectRelease();

      v143 = v191;
      v92 = v201;
      v95 = v202;
      goto LABEL_27;
    }

    break;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

BOOL sub_20B66CF8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_catalogClient, v9);

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_20C135E34();
    sub_20C139FB4();
    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_20B52347C, v7);

    (*(v1 + 8))(v3, v0);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return v5 == 0;
}

uint64_t sub_20B66D154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20B66D350@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800);
}

uint64_t sub_20B66D46C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B66D534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_20B66D5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v188 = a7;
  v189 = a4;
  v178 = a5;
  v179 = a6;
  v174 = a2;
  v175 = a3;
  v10 = sub_20C135524();
  v181 = *(v10 - 8);
  v182 = v10;
  MEMORY[0x28223BE20](v10);
  v180 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v12 - 8);
  v183 = &v152 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v14 - 8);
  v177 = &v152 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v16 - 8);
  v176 = &v152 - v17;
  v18 = sub_20C134734();
  v157 = *(v18 - 8);
  v158 = v18;
  MEMORY[0x28223BE20](v18);
  v156 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C135CC4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v155 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v23 - 8);
  v173 = &v152 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v25 - 8);
  v187 = &v152 - v26;
  v27 = sub_20C1333A4();
  v171 = *(v27 - 8);
  v172 = v27;
  MEMORY[0x28223BE20](v27);
  v170 = &v152 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v29 - 8);
  *&v190 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v31 - 8);
  v154 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v164 = &v152 - v34;
  v35 = sub_20C134EC4();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_lastFocusedIndexPath;
  v40 = sub_20C133244();
  v41 = *(v40 - 8);
  v168 = *(v41 + 56);
  v169 = v40;
  v167 = v41 + 56;
  v168(&v8[v39], 1, 1);
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v184 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_modalityDetail;
  v185 = v21;
  v42 = *(v21 + 56);
  v186 = v20;
  v42(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_modalityDetail], 1, 1, v20);
  v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_shouldPublishPageEventWhenAvailable] = 0;
  v43 = MEMORY[0x277D84FA0];
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_assetBundles] = MEMORY[0x277D84FA0];
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bookmarks] = v43;
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_playlists] = v43;
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_resumableSessions] = v43;
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_upNextQueueItems] = MEMORY[0x277D84F90];
  v44 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_configuration;
  v45 = sub_20C134104();
  (*(*(v45 - 8) + 56))(&v8[v44], 1, 1, v45);
  v46 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bodyFocusProperty;
  v47 = sub_20C135C84();
  v165 = *(v47 - 8);
  v48 = *(v165 + 56);
  v48(&v8[v46], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_durationProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_equipmentProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_genreProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_modalityProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_skillLevelProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_themeProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_tipCategoryProperty], 1, 1, v47);
  v166 = v47;
  v48(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_trainerProperty], 1, 1, v47);
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(&v201, &v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_archivedSessionClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v201, &v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_assetClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v201, &v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bookmarkClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v201, &v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_catalogClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v201, &v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_configurationClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_eventHub] = v201;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v201, &v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_remoteBrowsingSource]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v201, &v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_subscriptionCache]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_subscriptionToken] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v201, &v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_upNextQueueClient]);
  v49 = &v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_modalityIdentifier];
  v50 = v175;
  *v49 = v174;
  *(v49 + 1) = v50;
  v174 = v36;
  v51 = *(v36 + 16);
  v52 = v189;
  v51(v38, v189, v35);

  LOBYTE(v44) = sub_20C133E14();
  type metadata accessor for FilterHeaderShelf();
  swift_allocObject();
  v53 = sub_20C10A874(a1, v38, v44);

  *(v8 + 2) = v53;
  type metadata accessor for TVFilterDetailHeaderShelf();
  swift_allocObject();

  v54 = sub_20BF29A00();

  *(v8 + 3) = v54;
  v175 = v35;
  v51(v38, v52, v35);

  LODWORD(v54) = sub_20C133E14();
  type metadata accessor for FilterResultShelf();
  swift_allocObject();
  v55 = sub_20B84152C(a1, v38, v54);
  *(v8 + 4) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_20C1517D0;
  v57 = *(v8 + 3);
  *(v56 + 32) = *(v8 + 2);
  *(v56 + 40) = &off_282309798;
  *(v56 + 48) = v57;
  *(v56 + 56) = &off_2822F7718;
  *(v56 + 64) = v55;
  *(v56 + 72) = &off_2822AC930;
  v58 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_shelves;
  *&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_shelves] = v56;

  v59 = 0x5F72656E69617274;
  v60 = 0xEC00000073706974;
  if (sub_20C134EB4())
  {
    v61 = v164;
    sub_20C134E84();
    if ((*(v165 + 48))(v61, 1, v166) == 1)
    {
      v59 = 0x6F5F7265746C6966;
      sub_20B520158(v61, &unk_27C7629B0);
      v60 = 0xEE00736E6F697470;
    }

    else
    {
      v59 = sub_20B9492AC();
      v60 = v62;
      sub_20B66EE10(v61, MEMORY[0x277D52060]);
    }
  }

  v163 = v60;
  v164 = v59;
  v63 = *&v8[v58];

  v162 = sub_20C1380F4();
  v64 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v161 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v64 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v65 = sub_20C13C724();
  v66 = type metadata accessor for CatalogPageImpressionTracker();
  v67 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v68 = MEMORY[0x277D221C0];
  v67[2] = sub_20C13C6D4();
  v67[3] = v65;
  v67[4] = v68;
  v202 = v66;
  v69 = sub_20B66EDC8(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v203 = v69;
  *&v201 = v67;
  v70 = type metadata accessor for MetricLocationStore();
  v71 = swift_allocObject();
  v72 = MEMORY[0x277D84F98];
  v73 = MEMORY[0x277D84F90];
  *(v71 + 16) = MEMORY[0x277D84F90];
  *(v71 + 24) = v72;
  v74 = __swift_mutable_project_boxed_opaque_existential_1(&v201, v66);
  v160 = &v152;
  v75 = MEMORY[0x28223BE20](v74);
  v77 = (&v152 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77, v75);
  v79 = *v77;
  v159 = v69;
  v200[3] = v66;
  v200[4] = v69;
  v200[0] = v79;
  v199[3] = v70;
  v199[4] = &off_2822B6968;
  v199[0] = v71;
  v80 = *(v63 + 16);
  if (v80)
  {
    v152 = v70;
    v153 = v66;
    v198[0] = v73;
    sub_20BB5D394(0, v80, 0);
    v81 = 32;
    v82 = v198[0];
    do
    {
      v83 = *(v63 + v81);
      v198[0] = v82;
      v85 = *(v82 + 16);
      v84 = *(v82 + 24);
      v190 = v83;
      swift_unknownObjectRetain();
      if (v85 >= v84 >> 1)
      {
        sub_20BB5D394((v84 > 1), v85 + 1, 1);
        v82 = v198[0];
      }

      *(v82 + 16) = v85 + 1;
      v86 = v82 + 24 * v85;
      *(v86 + 32) = v190;
      *(v86 + 48) = 0;
      v81 += 16;
      --v80;
    }

    while (v80);

    v70 = v152;
    v66 = v153;
  }

  else
  {

    v82 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v200, v198);
  sub_20B51CC64(v199, v197);
  v87 = __swift_mutable_project_boxed_opaque_existential_1(v198, v198[3]);
  *&v190 = &v152;
  v88 = MEMORY[0x28223BE20](v87);
  v90 = (&v152 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v91 + 16))(v90, v88);
  v92 = __swift_mutable_project_boxed_opaque_existential_1(v197, v197[3]);
  v93 = MEMORY[0x28223BE20](v92);
  v95 = (&v152 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v96 + 16))(v95, v93);
  v97 = *v90;
  v98 = *v95;
  v195 = v66;
  v196 = v159;
  v194[0] = v97;
  v192 = v70;
  v193 = &off_2822B6968;
  v191[0] = v98;
  v99 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v100 = __swift_mutable_project_boxed_opaque_existential_1(v194, v195);
  v101 = MEMORY[0x28223BE20](v100);
  v103 = (&v152 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v104 + 16))(v103, v101);
  v105 = __swift_mutable_project_boxed_opaque_existential_1(v191, v192);
  v106 = MEMORY[0x28223BE20](v105);
  v108 = (&v152 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v109 + 16))(v108, v106);
  v110 = sub_20BE3AA74(v164, v163, v82, v162, v161, *v103, *v108, 2, v99);
  __swift_destroy_boxed_opaque_existential_1(v199);
  __swift_destroy_boxed_opaque_existential_1(v200);
  __swift_destroy_boxed_opaque_existential_1(v191);
  __swift_destroy_boxed_opaque_existential_1(v194);
  __swift_destroy_boxed_opaque_existential_1(v197);
  __swift_destroy_boxed_opaque_existential_1(v198);
  __swift_destroy_boxed_opaque_existential_1(&v201);
  *(v8 + 5) = v110;
  v111 = sub_20C134EB4();
  v112 = v188;
  v113 = 0x5F72656E69617274;
  v114 = 0xEC00000073706974;
  v115 = v173;
  v116 = v184;
  if (v111)
  {
    v117 = v154;
    sub_20C134E84();
    if ((*(v165 + 48))(v117, 1, v166) == 1)
    {
      v113 = 0x6F5F7265746C6966;
      sub_20B520158(v117, &unk_27C7629B0);
      v114 = 0xEE00736E6F697470;
    }

    else
    {
      v113 = sub_20B9492AC();
      v114 = v118;
      sub_20B66EE10(v117, MEMORY[0x277D52060]);
    }
  }

  v166 = v114;
  *&v190 = v113;
  v119 = sub_20C133E24();
  v120 = *(v119 - 8);
  v121 = v187;
  (*(v120 + 16))(v187, v112, v119);
  v122 = *MEMORY[0x277D51870];
  v123 = sub_20C1352F4();
  v124 = *(v123 - 8);
  (*(v124 + 104))(v121, v122, v123);
  v125 = 1;
  (*(v124 + 56))(v121, 0, 1, v123);
  swift_beginAccess();
  v126 = v186;
  v127 = *(v185 + 48);
  if (!v127(&v8[v116], 1, v186))
  {
    v128 = v185;
    v129 = v155;
    (*(v185 + 16))(v155, &v8[v184], v126);
    v130 = v156;
    sub_20C135CB4();
    v131 = v128;
    v116 = v184;
    (*(v131 + 8))(v129, v186);
    sub_20C1346D4();
    v132 = v130;
    v126 = v186;
    (*(v157 + 8))(v132, v158);
    v125 = 0;
  }

  v133 = sub_20C132C14();
  (*(*(v133 - 8) + 56))(v115, v125, 1, v133);
  if (!v127(&v8[v116], 1, v126))
  {
    v134 = v185;
    v135 = v155;
    (*(v185 + 16))(v155, &v8[v116], v126);
    v136 = v156;
    sub_20C135CB4();
    (*(v134 + 8))(v135, v126);
    sub_20C134704();
    (*(v157 + 8))(v136, v158);
  }

  v137 = sub_20C135ED4();
  v138 = 1;
  (*(*(v137 - 8) + 56))(v176, 1, 1, v137);
  v139 = sub_20C136914();
  (*(*(v139 - 8) + 56))(v177, 1, 1, v139);
  v140 = v170;
  sub_20C133384();
  (*(v171 + 32))(&v8[OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_metricPage], v140, v172);
  sub_20BE12E34();
  v141 = *(v8 + 4);
  v142 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterResult;
  swift_beginAccess();
  v143 = v181;
  v144 = v141 + v142;
  v145 = v180;
  v146 = v182;
  (*(v181 + 16))(v180, v144, v182);
  v147 = sub_20BB110D4();
  (*(v143 + 8))(v145, v146);
  v148 = v183;
  if (!v147)
  {
    sub_20B66ACE8();
    MEMORY[0x20F2EA980](0, v149);
    v138 = 0;
  }

  (v168)(v148, v138, 1, v169);
  v150 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B5DF2D4(v148, &v8[v150], &unk_27C7629C0);
  swift_endAccess();
  sub_20BEB83C8();
  (*(v120 + 8))(v188, v119);
  (*(v174 + 8))(v189, v175);
  return v8;
}

uint64_t sub_20B66EDC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B66EE10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B66EE7C()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20B66EF54()
{
  sub_20C13CA64();
}

uint64_t sub_20B66F018()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20B66F0EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20B681DE4();
  *a1 = result;
  return result;
}

void sub_20B66F11C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6576697463616E69;
  v4 = 0xED00006E61676542;
  if (*v1 != 2)
  {
    v4 = 0xED00006465646E45;
  }

  if (*v1)
  {
    v3 = 0x657669746361;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6B63616279616C70;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_20B66F1B0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) <= 1u && *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state))
  {
    v2 = 1;
LABEL_11:

    return v2 & 1;
  }

  v3 = sub_20C13DFF4();

  if ((v3 & 1) == 0)
  {
    if (*(v0 + v1) == 2)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_20C13DFF4();
    }

    goto LABEL_11;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_20B66F324()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 88);
    sub_20B584050(v1);

    if (v1)
    {
      v1(result);
      return sub_20B583ECC(v1);
    }
  }

  return result;
}

uint64_t sub_20B66F3A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 104);
    sub_20B584050(v1);

    if (v1)
    {
      v1(result);
      return sub_20B583ECC(v1);
    }
  }

  return result;
}

uint64_t sub_20B66F42C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_20C138714();
  }

  return result;
}

uint64_t sub_20B66F4A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 56);
    sub_20B584050(v1);

    if (v1)
    {
      v1(result);
      return sub_20B583ECC(v1);
    }
  }

  return result;
}

uint64_t sub_20B66F52C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_20C138564();
    sub_20C138554();
    sub_20B679F54(v1);
  }

  return result;
}

uint64_t sub_20B66F5A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C138484();
    sub_20B67A4F4();
  }

  return result;
}

uint64_t sub_20B66F608()
{
  v0 = sub_20C134594();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13AD64();
    v5 = sub_20C134584();
    (*(v1 + 8))(v3, v0);
    sub_20B67919C(v5 | ((HIDWORD(v5) & 1) << 32));
  }

  return result;
}

uint64_t sub_20B66F728()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_20C138ED4();
    if (v2 > 1u)
    {
      if ((v1 - 2) >= 2)
      {
        if (v1)
        {
          swift_getObjectType();
          sub_20C138714();
        }

        else
        {
          swift_getObjectType();
          sub_20C138724();
        }
      }
    }

    else
    {
      swift_getObjectType();

      sub_20C138734();
    }
  }

  return result;
}

uint64_t sub_20B66F8A0(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isRemoteDisplayConnected) = a2;
  }

  return result;
}

uint64_t sub_20B66F8FC()
{
  v0 = sub_20C134C04();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_20C13AED4();
    (*(v1 + 56))(v6, 0, 1, v0);
    v9 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
    swift_beginAccess();
    sub_20B5DF2D4(v6, v8 + v9, &unk_27C7650F0);
    swift_endAccess();
  }

  sub_20C13AED4();
  v10 = sub_20C134BF4();
  (*(v1 + 8))(v3, v0);
  v17 = v10;
  v18 = BYTE4(v10) & 1;
  v16[15] = 4;
  sub_20B682FCC();
  sub_20B683020();
  result = sub_20C133C04();
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v12 = result;
      v13 = swift_unknownObjectWeakLoadStrong();
      v14 = *(v12 + 24);

      if (v13)
      {
        ObjectType = swift_getObjectType();
        (*(v14 + 152))(1, ObjectType, v14);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_20B66FB78()
{
  v0 = sub_20C137EA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13A7D4();
    sub_20B67AC98();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B66FC9C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B672A10();
  }

  return result;
}

uint64_t sub_20B66FCF4(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B673B40(v1);
  }

  return result;
}

uint64_t sub_20B66FD8C(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_siriRequestedPlaybackState) = a3;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaPlayer + 8);
    ObjectType = swift_getObjectType();
    a4(ObjectType, v8);
  }

  return result;
}

uint64_t sub_20B66FE44()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_20C13B574();
    sub_20C13BB64();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B66FF80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_20C138184();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 264))(0, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v18 = sub_20C13CDF4();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v20 = sub_20C13CD94();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;

  sub_20B6380FC(0, 0, v11, &unk_20C153D08, v21);

  v23 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v23, v4, &unk_27C768AF0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_20B520158(v4, &unk_27C768AF0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v25 = sub_20C138174();
  sub_20C138134();
  sub_20B677958((v25 | ((HIDWORD(v25) & 1) << 32)));
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_20B67039C()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_20C13B574();
    sub_20C13BB64();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B6704D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_20B670538()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 264))(1, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v11 = sub_20C13CDF4();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v13 = sub_20C13CD94();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;

  sub_20B6380FC(0, 0, v4, &unk_20C153D00, v14);
}

uint64_t sub_20B6707A4(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_20C134CD4();
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13AF04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B594();
  (*(v7 + 16))(v9, a1, v6);
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1F4();
  v15 = os_log_type_enabled(v13, v14);
  v29 = v5;
  v30 = v3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v28 = a1;
    v17 = v16;
    v27 = swift_slowAlloc();
    v35[0] = v27;
    *v17 = 136315138;
    sub_20C13AEF4();
    sub_20B682E60(&qword_27C763200, MEMORY[0x277D50FB0]);
    v18 = sub_20C13DFA4();
    v19 = v3;
    v21 = v20;
    (*(v34 + 8))(v5, v19);
    (*(v7 + 8))(v9, v6);
    v22 = sub_20B51E694(v18, v21, v35);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_20B517000, v13, v14, "Client: SessionMediaPlayerPresenter observed MultiUserSessionUpdated for %s", v17, 0xCu);
    v23 = v27;
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  (*(v31 + 8))(v12, v32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = v29;
    sub_20C13AEF4();
    sub_20B670B80(v25);

    return (*(v34 + 8))(v25, v30);
  }

  return result;
}

uint64_t sub_20B670B80(uint64_t a1)
{
  v2 = sub_20C134CD4();
  v68 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = sub_20C13BB84();
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  result = sub_20C134CB4();
  if (v25)
  {
    if (result > 1u)
    {
      if (result == 2)
      {
        sub_20C13B594();
        v36 = sub_20C13BB74();
        v37 = sub_20C13D1F4();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_20B517000, v36, v37, "PlaybackSync: Session invalidated. If rejoined, will require resync.", v38, 2u);
          MEMORY[0x20F2F6A40](v38, -1, -1);
        }

        (*(v65 + 8))(v22, v66);
        v39 = v68;
        (*(v68 + 16))(v13, a1, v2);
        (*(v39 + 56))(v13, 0, 1, v2);
        v40 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserSessionRequiringResync;
        v41 = v67;
        swift_beginAccess();
        sub_20B5DF2D4(v13, v41 + v40, &unk_27C768B10);
        swift_endAccess();
        swift_getObjectType();
        return sub_20C1386E4();
      }
    }

    else
    {
      if (!result)
      {
        return result;
      }

      sub_20C13B594();
      v26 = v68;
      v63 = *(v68 + 16);
      v64 = v68 + 16;
      v63(v7, a1, v2);
      v27 = sub_20C13BB74();
      LODWORD(v62) = sub_20C13D1F4();
      if (os_log_type_enabled(v27, v62))
      {
        v28 = swift_slowAlloc();
        v61 = v28;
        v59 = swift_slowAlloc();
        v69[0] = v59;
        *v28 = 136315138;
        sub_20B682E60(&qword_27C763200, MEMORY[0x277D50FB0]);
        v58 = v27;
        v29 = sub_20C13DFA4();
        v31 = v30;
        v60 = *(v68 + 8);
        v60(v7, v2);
        v32 = sub_20B51E694(v29, v31, v69);
        v26 = v68;

        v33 = v61;
        *(v61 + 1) = v32;
        v34 = v58;
        _os_log_impl(&dword_20B517000, v58, v62, "PlaybackSync: handling multiUserSession and attempting to configure syncrhonized playback %s", v33, 0xCu);
        v35 = v59;
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x20F2F6A40](v35, -1, -1);
        MEMORY[0x20F2F6A40](v61, -1, -1);
      }

      else
      {

        v60 = *(v26 + 8);
        v60(v7, v2);
      }

      v62 = *(v65 + 8);
      v62(v19, v66);
      v63(v13, a1, v2);
      v61 = *(v26 + 56);
      (v61)(v13, 0, 1, v2);
      v42 = v67;
      sub_20B67AEC4(v13);
      sub_20B520158(v13, &unk_27C768B10);
      v43 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserSessionRequiringResync;
      swift_beginAccess();
      v44 = v42 + v43;
      v45 = v68;
      sub_20B52F9E8(v44, v10, &unk_27C768B10);
      if ((*(v45 + 48))(v10, 1, v2))
      {
        sub_20B520158(v10, &unk_27C768B10);
        sub_20C134C94();
      }

      v59 = v43;
      v63(v4, v10, v2);
      sub_20B520158(v10, &unk_27C768B10);
      v46 = sub_20C134C94();
      v48 = v47;
      v60(v4, v2);
      v49 = sub_20C134C94();
      if (!v48)
      {
      }

      if (v46 == v49 && v48 == v50)
      {
      }

      else
      {
        v51 = sub_20C13DFF4();

        if ((v51 & 1) == 0)
        {
          return result;
        }
      }

      swift_getObjectType();
      sub_20C1386A4();
      result = sub_20C134CA4();
      if (result)
      {
        sub_20C13B594();
        v52 = sub_20C13BB74();
        v53 = sub_20C13D1F4();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_20B517000, v52, v53, "PlaybackSync: Session rejoined. Forcing resync for initiator.", v54, 2u);
          MEMORY[0x20F2F6A40](v54, -1, -1);
        }

        v62(v16, v66);
        (v61)(v13, 1, 1, v2);
        v55 = v67;
        v56 = v59;
        swift_beginAccess();
        sub_20B5DF2D4(v13, v55 + v56, &unk_27C768B10);
        swift_endAccess();
        return sub_20C138704();
      }
    }
  }

  else
  {

    return sub_20B583F4C(result, v24, 0);
  }

  return result;
}

uint64_t sub_20B6713DC()
{
  v0 = sub_20C134784();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768960);
    sub_20C139414();
    sub_20BA79E84(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B6714FC()
{
  v0 = sub_20C134784();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768970);
    sub_20C139294();
    sub_20BA7A920(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B67161C()
{
  v0 = sub_20C133474();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768980);
    sub_20C139414();
    sub_20BA7AF5C(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B67173C()
{
  v0 = sub_20C133474();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768990);
    sub_20C139294();
    sub_20BA7BC90(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B67185C()
{
  v0 = sub_20C133634();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7689A0);
    sub_20C139414();
    sub_20BA7C070(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B67197C()
{
  v0 = sub_20C133634();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7689B0);
    sub_20C139294();
    sub_20BA7C60C(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B671A9C()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C137EA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_20C13AA14();
    sub_20C13B574();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater), *(v9 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater + 24));
    sub_20C138AB4();
    (*(v5 + 8))(v7, v4);
    *(v9 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 0;
  }

  return result;
}

uint64_t sub_20B671CAC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B673F84(v1);
  }

  return result;
}

uint64_t sub_20B671D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_20C13C4B4();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_20C13C4F4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B671E40, 0, 0);
}

uint64_t sub_20B671E40()
{
  *(v0 + 136) = *__swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_20B671EE0;

  return sub_20BD49114();
}

uint64_t sub_20B671EE0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20B67203C, 0, 0);
  }
}

uint64_t sub_20B67203C()
{
  v1 = *(v0[17] + 88);
  os_unfair_lock_lock((v1 + 24));
  v2 = 3;
  if ((sub_20B8DD120(3, *(v1 + 16)) & 1) == 0)
  {
    v2 = 0;
    if ((sub_20B8DD120(0, *(v1 + 16)) & 1) == 0)
    {
      v2 = 4;
      if ((sub_20B8DD120(4, *(v1 + 16)) & 1) == 0)
      {
        if (sub_20B8DD120(1, *(v1 + 16)))
        {
          v2 = 1;
        }

        else
        {
          v2 = 2;
        }
      }
    }
  }

  v3 = v0[16];
  v4 = v0[13];
  v13 = v0[15];
  v14 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  os_unfair_lock_unlock((v1 + 24));
  sub_20B51C88C(0, &qword_281100530);
  v12 = sub_20C13D374();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v0[6] = sub_20B682FC0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20B7B548C;
  v0[5] = &block_descriptor_307;
  v9 = _Block_copy(v0 + 2);

  sub_20C13C4D4();
  v0[8] = MEMORY[0x277D84F90];
  sub_20B682E60(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v3, v4, v9);
  _Block_release(v9);

  (*(v6 + 8))(v4, v5);
  (*(v13 + 8))(v3, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B672308(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B673F84(a2);
  }

  return result;
}

uint64_t sub_20B672368(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_20C13CDF4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_20B614F94(0, 0, v5, &unk_20C153CC0, v7);
}

uint64_t sub_20B672494()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    v1 = sub_20C138644();
    swift_unknownObjectRelease();
    if (v1)
    {
      v2 = [v1 currentItem];
      v0[9] = v2;

      if (v2)
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v0[10] = Strong;
        if (Strong)
        {
          v4 = swift_task_alloc();
          v0[11] = v4;
          *v4 = v0;
          v4[1] = sub_20B672628;

          return sub_20B674394(v2);
        }
      }
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_20B672628()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_20B6727BC;
  }

  else
  {
    v2 = sub_20B672758;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B672758()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B6727BC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B672820()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "enable showsPlaybackControls on first playback touch", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 200))(ObjectType, v9);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v1 + 24);
    v12 = swift_getObjectType();
    (*(v11 + 160))(1, v12, v11);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v1 + 24);
    v15 = swift_getObjectType();
    (*(v14 + 224))(v15, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B672A10()
{
  v0 = sub_20C13C4B4();
  v26 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C13C4F4();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C514();
  v23 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  sub_20B51C88C(0, &qword_281100530);
  v17 = sub_20C13D374();
  sub_20C13C504();
  sub_20C13CEC4();
  sub_20C13C574();
  v18 = *(v7 + 8);
  v18(v9, v6);
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_20B682E30;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_6;
  v20 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B682E60(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v12, v5, v2, v20);
  _Block_release(v20);

  (*(v26 + 8))(v2, v0);
  (*(v24 + 8))(v5, v25);
  return (v18)(v12, v23);
}

uint64_t sub_20B672E94(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_20B672EF4(double a1, double a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  v15 = sub_20C13CDF4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v17 = sub_20C13CD94();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v16;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;

  sub_20B6383D0(0, 0, v10, &unk_20C153C90, v18);
}

uint64_t sub_20B673148(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a3;
  *(v8 + 96) = a4;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;
  *(v8 + 64) = a8;
  sub_20C13CDA4();
  *(v8 + 104) = sub_20C13CD94();
  v10 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B6731E8, v10, v9);
}

uint64_t sub_20B6731E8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v2 + 24);

    if (v3)
    {
      v6 = v0[11];
      v5 = v0[12];
      v8 = v0[9];
      v7 = v0[10];
      ObjectType = swift_getObjectType();
      (*(v4 + 104))(ObjectType, v4, v8, v7, v6, v5);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = swift_unknownObjectWeakLoadStrong();
    v13 = *(v11 + 24);

    if (v12)
    {
      v14 = swift_getObjectType();
      (*(v13 + 112))(v14, v13);
      swift_unknownObjectRelease();
    }
  }

  v15 = *(v0 + 1);

  return v15();
}

uint64_t sub_20B673350()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - v5;
  MEMORY[0x28223BE20](v7);
  v57 = &v56 - v8;
  MEMORY[0x28223BE20](v9);
  v58 = &v56 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = sub_20C138184();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v18 - 8);
  v61 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - v21;
  v23 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v23, v22, &unk_27C768AF0);
  v24 = *(v15 + 48);
  v25 = v24(v22, 1, v14);
  v59 = v15;
  if (v25)
  {
    sub_20B520158(v22, &unk_27C768AF0);
  }

  else
  {
    (*(v15 + 16))(v17, v22, v14);
    sub_20B520158(v22, &unk_27C768AF0);
    v26 = sub_20C138174();
    v27 = v15;
    v28 = v26;
    (*(v27 + 8))(v17, v14);
    v69 = BYTE4(v28) & 1;
    v68 = v28;
    v66 = 3;
    v67 = 1;
    sub_20B682CA4();
    sub_20B682CF8();
    result = sub_20C133BF4();
    if (result)
    {
      return result;
    }
  }

  v56 = v6;
  sub_20C13B594();

  v30 = sub_20C13BB74();
  v31 = sub_20C13D1F4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_shouldResumeSyncPlaybackOnForeground);

    _os_log_impl(&dword_20B517000, v30, v31, "PlaybackSync: shouldResumeSyncPlaybackOnForeground %{BOOL}d", v32, 8u);
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  else
  {
  }

  v33 = *(v62 + 8);
  v33(v13, v63);
  v34 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_shouldResumeSyncPlaybackOnForeground;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_shouldResumeSyncPlaybackOnForeground))
  {
    swift_getObjectType();
    result = sub_20C1386A4();
    *(v1 + v34) = 0;
    return result;
  }

  v35 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_siriRequestedPlaybackState;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_siriRequestedPlaybackState) != 4)
  {
    v39 = sub_20C138164();
    if (v39 == sub_20C138164())
    {
      v40 = v58;
      sub_20C13B574();
      v41 = sub_20C13BB74();
      v42 = sub_20C13D1F4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_20B517000, v41, v42, "Siri requested resume, resuming", v43, 2u);
        MEMORY[0x20F2F6A40](v43, -1, -1);
      }

      v44 = v40;
      goto LABEL_20;
    }

    if (*(v1 + v35) != 4)
    {
      v55 = sub_20C138164();
      if (v55 == sub_20C138164())
      {
        v50 = v57;
        sub_20C13B574();
        v51 = sub_20C13BB74();
        v52 = sub_20C13D1F4();
        if (!os_log_type_enabled(v51, v52))
        {
          goto LABEL_24;
        }

        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = "Siri requested pause, not resuming";
        goto LABEL_23;
      }
    }
  }

  v36 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_lastForegroundPlaybackSnapshot;
  swift_beginAccess();
  v37 = v1 + v36;
  v38 = v61;
  sub_20B52F9E8(v37, v61, &unk_27C768AF0);
  if (v24(v38, 1, v14))
  {
    sub_20B520158(v38, &unk_27C768AF0);
    goto LABEL_21;
  }

  v45 = v59;
  (*(v59 + 16))(v17, v38, v14);
  sub_20B520158(v38, &unk_27C768AF0);
  v46 = sub_20C138174();
  (*(v45 + 8))(v17, v14);
  v67 = BYTE4(v46) & 1;
  v66 = v46;
  v64 = 0;
  v65 = 1;
  sub_20B682CA4();
  sub_20B682CF8();
  if (sub_20C133BF4())
  {
    sub_20C13B574();
    v47 = sub_20C13BB74();
    v48 = sub_20C13D1F4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_20B517000, v47, v48, "Last foreground playback state was playing, resuming", v49, 2u);
      MEMORY[0x20F2F6A40](v49, -1, -1);
    }

    v44 = v56;
LABEL_20:
    v33(v44, v63);
    swift_getObjectType();
    return sub_20C138724();
  }

LABEL_21:
  v50 = v60;
  sub_20C13B574();
  v51 = sub_20C13BB74();
  v52 = sub_20C13D1F4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Last foreground playback state was paused, not resuming";
LABEL_23:
    _os_log_impl(&dword_20B517000, v51, v52, v54, v53, 2u);
    MEMORY[0x20F2F6A40](v53, -1, -1);
  }

LABEL_24:

  return (v33)(v50, v63);
}

uint64_t sub_20B673B40(int a1)
{
  v2 = v1;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v36 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = sub_20C1344B4();
  v17 = v16;
  v19 = v18;
  v20 = sub_20C133B84();
  sub_20B583F4C(v15, v17, v19 & 1);
  if (v20)
  {
    v21 = v6;
    sub_20C13B574();
    v22 = sub_20C13BB74();
    v23 = sub_20C13D1F4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20B517000, v22, v23, "[SessionMediaPlayerPresenter] Not handling app occlusion. Audio only content found", v24, 2u);
      MEMORY[0x20F2F6A40](v24, -1, -1);
    }

    return (*(v7 + 8))(v9, v21);
  }

  else
  {
    sub_20C13B574();
    sub_20C13BB64();
    v26 = *(v7 + 8);
    v26(v14, v6);
    v27 = *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory);
    v28 = sub_20C13A474();
    v37 = v6;
    if (v28)
    {
      v29 = *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_isRemoteDisplayConnected);
    }

    else
    {
      v29 = 0;
    }

    v30 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
    swift_beginAccess();
    sub_20B52F9E8(v2 + v30, v5, &unk_27C768AF0);
    v31 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_lastForegroundPlaybackSnapshot;
    swift_beginAccess();
    sub_20B5DF2D4(v5, v2 + v31, &unk_27C768AF0);
    result = swift_endAccess();
    *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_siriRequestedPlaybackState) = 4;
    if (v27 && (v29 & 1) == 0 && (v39 & 1) == 0)
    {
      v32 = v38;
      sub_20C13B574();
      v33 = sub_20C13BB74();
      v34 = sub_20C13D1F4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 67109632;
        *(v35 + 8) = 1024;
        *(v35 + 10) = 0;
        *(v35 + 14) = 1024;
        *(v35 + 16) = 0;
        _os_log_impl(&dword_20B517000, v33, v34, "We are pausing for an occlusion of our app! isAirplaySource %{BOOL}d, isRemoteDisplaySource %{BOOL}d, isPictureInPictureActive %{BOOL}d", v35, 0x14u);
        MEMORY[0x20F2F6A40](v35, -1, -1);
      }

      v26(v32, v37);
      swift_getObjectType();
      sub_20C1386D4();
      *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_shouldResumeSyncPlaybackOnForeground) = 1;
      return sub_20C138714();
    }
  }

  return result;
}

uint64_t sub_20B673F84(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_20C138184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) > 1u)
  {
    if (*(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) != 2)
    {

      goto LABEL_11;
    }

    v23 = v8;
  }

  else
  {
    v23 = v8;
  }

  v15 = sub_20C13DFF4();

  if (v15)
  {
LABEL_11:
    swift_getObjectType();
    return sub_20C138654();
  }

  sub_20C13B574();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 168))(a1 != 2, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  sub_20B6776DC(1);
  v18 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v18, v6, &unk_27C768AF0);
  v19 = v23;
  if ((*(v23 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C768AF0);
  }

  else
  {
    (*(v19 + 32))(v10, v6, v7);
    v21 = sub_20C138174();
    sub_20C138134();
    sub_20B677958((v21 | ((HIDWORD(v21) & 1) << 32)));
    (*(v19 + 8))(v10, v7);
  }

  return sub_20B67740C();
}

uint64_t sub_20B674394(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_20C13B074();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_20C139474();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370);
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B674598, 0, 0);
}

uint64_t sub_20B674598()
{
  v1 = sub_20C13AAC4();
  v0[5] = v1;
  v0[6] = sub_20B682E60(&qword_281103AF0, MEMORY[0x277D4F200]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v1);
  v3 = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v4 = v0[26];
  if (v3)
  {
    v5 = v0[21];
    v6 = v0[22];
    sub_20C13B574();
    sub_20C13BB64();
    v7 = *(v6 + 8);
    v0[27] = v7;
    v0[28] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v0[29] = sub_20C13CDA4();
    v0[30] = sub_20C13CD94();
    v9 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B6747E0, v9, v8);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20B6747E0()
{
  v1 = *(v0 + 80);

  *(v0 + 248) = [v1 asset];

  return MEMORY[0x2822009F8](sub_20B674868, 0, 0);
}

uint64_t sub_20B674868()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 248);
    v4 = *(v0 + 160);
    sub_20B51C88C(0, &qword_281100530);
    v5 = sub_20C13D374();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = sub_20B51C88C(0, &qword_27C763230);
    v8 = v3;
    sub_20C137C94();
    v9 = swift_task_alloc();
    *(v0 + 256) = v9;
    *(v9 + 16) = "SeymourUI/SessionMediaPlayerPresenter.swift";
    *(v9 + 24) = 43;
    *(v9 + 32) = 2;
    *(v9 + 40) = 378;
    *(v9 + 48) = v4;
    v10 = swift_task_alloc();
    *(v0 + 264) = v10;
    *v10 = v0;
    v10[1] = sub_20B674BA8;

    return MEMORY[0x2822008A0](v0 + 56, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B682388, v9, v7);
  }

  else
  {
    v11 = *(v0 + 80);

    sub_20C13B574();
    v12 = v11;
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 80);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_20B517000, v13, v14, "%@ is not an AVURLAsset", v16, 0xCu);
      sub_20B520158(v17, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    v19 = *(v0 + 216);
    v20 = *(v0 + 184);
    v21 = *(v0 + 168);

    v19(v20, v21);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_20B674BA8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = sub_20B674F0C;
  }

  else
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[18];
    v2[35] = v2[7];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B674D08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B674D08()
{
  v22 = v0;
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentAudibleMediaSelectionOption;
  v0[36] = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentAudibleMediaSelectionOption;
  v3 = *(v1 + v2);
  v0[37] = v3;
  v4 = v3;
  sub_20C13B574();

  v5 = sub_20C13BB74();
  v6 = sub_20C13D1F4();

  if (os_log_type_enabled(v5, v6))
  {
    v20 = v0[27];
    v7 = v0[25];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v0[9] = *(v1 + v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763238);
    v11 = sub_20C13D8F4();
    v13 = sub_20B51E694(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v5, v6, "previousAudibleMediaSelectionOption: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    v20(v7, v8);
  }

  else
  {
    v14 = v0[27];
    v15 = v0[25];
    v16 = v0[21];

    v14(v15, v16);
  }

  v0[38] = sub_20C13CD94();
  v18 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B674FE8, v18, v17);
}

uint64_t sub_20B674F0C()
{
  v1 = v0[31];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20B674FE8()
{
  v1 = *(v0 + 80);

  *(v0 + 312) = [v1 currentMediaSelection];

  return MEMORY[0x2822009F8](sub_20B675070, 0, 0);
}

uint64_t sub_20B675070()
{
  v87 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 88);
  v4 = [v1 selectedMediaOptionInMediaSelectionGroup_];

  v5 = *(v3 + v2);
  *(v3 + v2) = v4;

  sub_20C13B574();

  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 288);
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 168);
    v12 = *(v0 + 88);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v86 = v14;
    *v13 = 136315138;
    *(v0 + 64) = *(v12 + v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763238);
    v15 = sub_20C13D8F4();
    v17 = sub_20B51E694(v15, v16, &v86);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20B517000, v6, v7, "currentAudibleMediaSelectionOption: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);

    v9(v10, v11);
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 192);
    v20 = *(v0 + 168);

    v18(v19, v20);
  }

  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  v23 = *(v0 + 88);
  if (!v21)
  {
    v33 = *(v23 + v22);
    if (v33)
    {
      v34 = v33;
      AVMediaSelectionOption.languageCodeIdentifier.getter();
      v36 = v35;

      if (v36)
      {
        v38 = *(v0 + 128);
        v37 = *(v0 + 136);
        v39 = *(v0 + 120);
        swift_getObjectType();
        sub_20C139464();
        sub_20B682E60(&qword_27C763228, MEMORY[0x277D543C0]);
        sub_20C13A764();
        (*(v38 + 8))(v37, v39);
      }

      v40 = *(*(v0 + 88) + *(v0 + 288));
      if (v40)
      {
        v41 = qword_27C7607D0;
        v42 = v40;
        if (v41 != -1)
        {
          swift_once();
        }

        if ([v42 hasMediaCharacteristic_])
        {

LABEL_51:
          v65 = *(v0 + 280);
          v66 = *(v0 + 248);
          v68 = *(v0 + 104);
          v67 = *(v0 + 112);
          v69 = *(v0 + 96);
          swift_getObjectType();
          sub_20C13B064();
          sub_20C13A764();

          (*(v68 + 8))(v67, v69);
LABEL_74:

          v85 = *(v0 + 8);

          return v85();
        }

        if (qword_27C7607D8 != -1)
        {
          swift_once();
        }

        v64 = [v42 hasMediaCharacteristic_];

        if (v64)
        {
          goto LABEL_51;
        }
      }
    }

    v70 = *(v0 + 248);

LABEL_73:
    goto LABEL_74;
  }

  v24 = v21;
  v25 = AVMediaSelectionOption.languageCodeIdentifier.getter();
  v27 = v26;

  v28 = *(v23 + v22);
  if (!v28)
  {
    if (!v27)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v29 = v28;
  v30 = AVMediaSelectionOption.languageCodeIdentifier.getter();
  v32 = v31;

  if (!v27)
  {
    if (!v32)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  if (!v32)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v25 == v30 && v27 == v32)
  {

    goto LABEL_29;
  }

  v50 = sub_20C13DFF4();

  if (v50)
  {
LABEL_29:
    v51 = qword_27C7607D0;
    v52 = *(v0 + 296);
    if (v51 != -1)
    {
      swift_once();
      v52 = *(v0 + 296);
    }

    v53 = qword_27C79AB00;
    if ([v52 hasMediaCharacteristic_])
    {
      v54 = *(v0 + 288);
      v55 = *(v0 + 88);

      v56 = *(v55 + v54);
      if (v56)
      {
        v57 = 0;
LABEL_40:
        v62 = v56;
        if ([v62 hasMediaCharacteristic_])
        {

          if (v57 == 2)
          {
            goto LABEL_62;
          }

LABEL_56:
          v73 = sub_20C135464();
          v75 = v74;
          if (v73 == sub_20C135464() && v75 == v76)
          {
            v77 = *(v0 + 280);
            v78 = *(v0 + 248);

LABEL_61:

            goto LABEL_74;
          }

          v79 = sub_20C13DFF4();

          if (v79)
          {
            v77 = *(v0 + 280);
            v78 = *(v0 + 248);
            goto LABEL_61;
          }

LABEL_62:
          v80 = *(*(v0 + 88) + *(v0 + 288));
          if (v80)
          {
            v81 = v80;
            v82 = [v81 hasMediaCharacteristic_];
            if (v82)
            {

LABEL_68:
              v84 = swift_task_alloc();
              *(v0 + 344) = v84;
              *v84 = v0;
              v84[1] = sub_20B675B70;

              return sub_20B675E24(v82 ^ 1u);
            }

            if (qword_27C7607D8 != -1)
            {
              swift_once();
            }

            v83 = [v81 hasMediaCharacteristic_];

            if (v83)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_71;
        }

        if (qword_27C7607D8 != -1)
        {
          swift_once();
        }

        v63 = [v62 hasMediaCharacteristic_];

        if (v57 != 2)
        {
          if ((v63 & 1) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_56;
        }

        if (v63)
        {
          goto LABEL_62;
        }

LABEL_54:
        v70 = *(v0 + 296);
        v71 = *(v0 + 280);
        v72 = *(v0 + 248);
LABEL_72:

        goto LABEL_73;
      }
    }

    else
    {
      if (qword_27C7607D8 != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 288);
      v58 = *(v0 + 296);
      v60 = *(v0 + 88);
      v61 = [v58 hasMediaCharacteristic_];

      if (v61)
      {
        v57 = 1;
      }

      else
      {
        v57 = 2;
      }

      v56 = *(v60 + v59);
      if (v56)
      {
        goto LABEL_40;
      }

      if ((v61 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

LABEL_71:
    v70 = *(v0 + 296);
    v72 = *(v0 + 280);
    v71 = *(v0 + 248);
    goto LABEL_72;
  }

LABEL_23:
  v43 = *(*(v0 + 88) + *(v0 + 288));
  if (!v43)
  {
    goto LABEL_71;
  }

  v44 = v43;
  v45 = AVMediaSelectionOption.languageCodeIdentifier.getter();
  v47 = v46;

  *(v0 + 320) = v47;
  if (!v47)
  {
    goto LABEL_71;
  }

  v48 = swift_task_alloc();
  *(v0 + 328) = v48;
  *v48 = v0;
  v48[1] = sub_20B67596C;

  return sub_20B6823A0(v45, v47);
}