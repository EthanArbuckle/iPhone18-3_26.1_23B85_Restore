uint64_t sub_20C073854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C0738B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20C071B08(a1, v4, v5, v7, v6);
}

uint64_t sub_20C07397C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_20C0739C4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E353C(a1, a2, v2 + v6, v8, v9);
}

void sub_20C073A88(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_20C073A94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20C07208C(a1, v4, v5, v6);
}

uint64_t sub_20C073BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20C071650(a1, v4, v5, v6);
}

unint64_t sub_20C073C60()
{
  result = qword_27C772280;
  if (!qword_27C772280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C763E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772280);
  }

  return result;
}

uint64_t sub_20C073CC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C073D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C073DAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20C06D144(a1, v4, v5, v6);
}

uint64_t sub_20C073E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20C06D144(a1, v4, v5, v6);
}

uint64_t sub_20C073F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_20C134614();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C136594();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v28 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = sub_20BEDEF30(*(a1 + 16), 0);
    v11 = sub_20BEE2CEC(v36, &v10[(*(v5 + 80) + 32) & ~*(v5 + 80)], v9, a1);
    v31 = v36[3];
    v32 = v11;
    v30 = v36[4];

    sub_20B583EDC();
    if (v32 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_5:
  v36[0] = v10;
  sub_20C075B5C(v36);
  v12 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendations;
  *(v2 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendations) = v36[0];

  v13 = *(v2 + v12);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v26[2] = v2;
    v27 = a2;
    v36[0] = MEMORY[0x277D84F90];

    sub_20BB5D604(0, v14, 0);
    v15 = v36[0];
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 64);
    v26[1] = v13;
    v19 = v13 + ((v18 + 32) & ~v18);
    v30 = *(v16 + 56);
    v31 = v17;
    v32 = v16;
    v20 = (v16 - 8);
    v21 = v34;
    v29 = v35 + 32;
    v22 = v28;
    do
    {
      v31(v7, v19, v21);
      sub_20C1345E4();
      sub_20C1345D4();
      sub_20C136554();
      (*v20)(v7, v21);
      v36[0] = v15;
      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        sub_20BB5D604(v23 > 1, v24 + 1, 1);
        v22 = v28;
        v15 = v36[0];
      }

      v15[2] = v24 + 1;
      (*(v35 + 32))(v15 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24, v22, v33);
      v19 += v30;
      --v14;
    }

    while (v14);

    a2 = v27;
  }

  sub_20C02BC6C(v15, a2);
}

uint64_t sub_20C0742D0()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = (&v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_lazyLockupFetcher);

  v55 = v4;
  v56 = sub_20C0338E0(v4, v1);

  sub_20C135DA4();
  v5 = sub_20C1352B4();
  v7 = v6;
  if (v5 == sub_20C1352B4() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_20C13DFF4();

    if ((v10 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_storefrontLocalizer + 24));
      v11 = sub_20C138D34();
      v53 = v12;
      v54 = v11;
      goto LABEL_9;
    }
  }

  v53 = 0;
  v54 = 0;
LABEL_9:
  v13 = (v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder + 24));
  sub_20C135E04();
  v14 = sub_20C138544();

  v15 = [v14 string];

  v16 = sub_20C13C954();
  v18 = v17;

  __swift_project_boxed_opaque_existential_1(v13, v13[3]);

  sub_20C135D84();
  v19 = sub_20C138544();

  v20 = [v19 string];

  v21 = sub_20C13C954();
  v23 = v22;

  LOBYTE(v20) = (*(v55 + 144) < 0x2FuLL) & (0x4CE7B617E7E2uLL >> *(v55 + 144));
  v24 = sub_20C135D64();
  *&v57 = v54;
  *(&v57 + 1) = v53;
  LOBYTE(v58) = 1;
  *(&v58 + 1) = 0;
  *&v59 = 0;
  BYTE8(v59) = 0x80;
  BYTE9(v59) = v20;
  v60 = 0uLL;
  *&v61 = v24;
  *(&v61 + 1) = v25;
  *&v62 = v16;
  *(&v62 + 1) = v18;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = v56;
  *&v64 = MEMORY[0x277D84F90];
  *(&v64 + 1) = v21;
  *&v65 = v23;
  *(&v65 + 1) = v16;
  *v66 = v18;
  *&v66[8] = xmmword_20C150190;
  nullsub_1(&v57);
  v26 = v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row;
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 144);
  v67[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 128);
  v67[9] = v27;
  v68 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 160);
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 80);
  v67[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 64);
  v67[5] = v28;
  v29 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 112);
  v67[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 96);
  v67[7] = v29;
  v30 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 16);
  v67[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row);
  v67[1] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 48);
  v67[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 32);
  v67[3] = v31;
  v32 = *v66;
  *(v26 + 128) = v65;
  *(v26 + 144) = v32;
  *(v26 + 160) = *&v66[16];
  v33 = v62;
  *(v26 + 64) = v61;
  *(v26 + 80) = v33;
  v34 = v64;
  *(v26 + 96) = v63;
  *(v26 + 112) = v34;
  v35 = v58;
  *v26 = v57;
  *(v26 + 16) = v35;
  v36 = v60;
  *(v26 + 32) = v59;
  *(v26 + 48) = v36;
  sub_20B520158(v67, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v38 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v39 = sub_20B61E030(v1, result);
      if (v40)
      {
        v42 = v39;
        v43 = v40;
        v44 = v41;
        sub_20B5E2E18();
        v45 = sub_20C13D374();
        v47 = v50;
        v46 = v51;
        *v50 = v45;
        v48 = v52;
        (*(v46 + 104))(v47, *MEMORY[0x277D85200], v52);
        v49 = sub_20C13C584();
        result = (*(v46 + 8))(v47, v48);
        if ((v49 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B62192C(v42, v43, v44, v1, 1, v38);
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

uint64_t sub_20C074798()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B90);
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v35);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = &v34 - v10;
  MEMORY[0x28223BE20](v11);
  v39 = &v34 - v12;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendationClient), *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendationClient + 24));
  sub_20C1398F4();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20C076F80;
  *(v13 + 24) = v1;
  v14 = v35;
  (*(v2 + 16))(v4, v7, v35);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v15, v4, v14);
  v18 = (v17 + v16);
  *v18 = sub_20B6331FC;
  v18[1] = v13;

  v19 = v34;
  sub_20C137C94();
  (*(v2 + 8))(v7, v14);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20C077BF4;
  *(v20 + 24) = v1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20B849B38;
  *(v21 + 24) = v20;
  v22 = v36;
  v23 = v37;
  v24 = v19;
  v25 = v38;
  (*(v36 + 16))(v37, v19, v38);
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v27 = swift_allocObject();
  (*(v22 + 32))(v27 + v26, v23, v25);
  v28 = (v27 + ((v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_20B66A8B4;
  v28[1] = v21;

  v29 = v39;
  sub_20C137C94();
  v30 = *(v22 + 8);
  v30(v24, v25);
  v31 = sub_20C137CB4();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v31(sub_20B5DF6DC, v32);

  return (v30)(v29, v25);
}

uint64_t sub_20C074C48()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 144);
  v13[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 128);
  v13[9] = v3;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 80);
  v13[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 64);
  v13[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 112);
  v13[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 96);
  v13[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row);
  v13[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 32);
  v13[3] = v7;
  sub_20B520158(v13, &qword_27C762340);

  v8 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_descriptor;
  v9 = sub_20C135E14();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendationClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_storefrontLocalizer);

  v10 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf__amdPersonalizationEnabled;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_20C074E08()
{
  sub_20C074C48();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecommendationsShelf()
{
  result = qword_27C7722B8;
  if (!qword_27C7722B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C074EB4()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20C135E14();
    if (v1 <= 0x3F)
    {
      sub_20B52432C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20C07500C()
{
  sub_20C074798();
  swift_getObjectType();
  sub_20C13AE84();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20C075104()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B474();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "[RecommendationsShelf] recommendations updated, updating row", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C074798();
  }

  return result;
}

uint64_t sub_20C075278(uint64_t a1)
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
  *(v14 + 16) = sub_20C076F74;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
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

uint64_t sub_20C07553C()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfMetricAction();
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C136664();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = v3[7];
  v8 = *MEMORY[0x277D51488];
  v9 = sub_20C134F24();
  (*(*(v9 - 8) + 104))(&v5[v7], v8, v9);
  v10 = v3[8];
  v11 = sub_20C132C14();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = sub_20C135D64();
  v14 = v13;
  v15 = v3[10];
  v16 = *MEMORY[0x277D523F0];
  v17 = sub_20C135ED4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v5[v15], v16, v17);
  (*(v18 + 56))(&v5[v15], 0, 1, v17);
  v19 = v3[12];
  v20 = *MEMORY[0x277D51788];
  v21 = sub_20C1352E4();
  (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
  v22 = v3[13];
  v23 = sub_20C136E94();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v25 = &v5[v3[9]];
  *v25 = v12;
  v25[1] = v14;
  v26 = &v5[v3[11]];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[v3[14]] = v24;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA036C(v1, v5, Strong);
    swift_unknownObjectRelease();
  }

  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = (v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder + 24));
    sub_20C135D94();
    v31 = sub_20C138544();

    v32 = [v31 string];

    v50 = sub_20C13C954();
    v51 = v33;

    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_20C135DD4();
    v34 = sub_20C138544();

    v35 = [v34 string];

    v49 = sub_20C13C954();
    v37 = v36;

    v38 = sub_20C135D64();
    v40 = v39;
    v41 = sub_20C135DA4();
    v42 = sub_20C135DC4();
    v43 = v29 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      v47 = v42;
      (*(v44 + 96))(v29, v50, v51, v49, v37, v38, v40, v41, v47, MEMORY[0x277D84F90], ObjectType, v44);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_20B68D110(v5);
}

uint64_t sub_20C0759EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C075A64@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 32);
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

void sub_20C075B5C(void **a1)
{
  v2 = *(sub_20C134614() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A108C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20C075C04(v5);
  *a1 = v3;
}

void sub_20C075C04(uint64_t *a1)
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
        sub_20C134614();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C134614() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C075FD8(v8, v9, a1, v4);
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
    sub_20C075D30(0, v2, 1, a1);
  }
}

void sub_20C075D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C134614();
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
      v27 = sub_20C1345F4();
      v28 = sub_20C1345F4();
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

void sub_20C075FD8(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C134614();
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
        sub_20C0769BC(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
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
      v130 = sub_20C1345F4();
      v126 = sub_20C1345F4();
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
        v38 = sub_20C1345F4();
        v39 = sub_20C1345F4();
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
        sub_20C0769BC(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
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
    (v133)(v137, v98, v9);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C1345F4();
    v104 = sub_20C1345F4();
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

void sub_20C0769BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C134614();
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
          v56 = sub_20C1345F4();
          v45 = sub_20C1345F4();
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
        v25 = sub_20C1345F4();
        v26 = sub_20C1345F4();
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
  sub_20B6A0B1C(&v64, &v63, &v62);
}

uint64_t sub_20C076FAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20C077074(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_20C13A814();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v11 = v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row;
  sub_20B5D8060(v27);
  v12 = v27[9];
  *(v11 + 128) = v27[8];
  *(v11 + 144) = v12;
  *(v11 + 160) = v28;
  v13 = v27[5];
  *(v11 + 64) = v27[4];
  *(v11 + 80) = v13;
  v14 = v27[7];
  *(v11 + 96) = v27[6];
  *(v11 + 112) = v14;
  v15 = v27[1];
  *v11 = v27[0];
  *(v11 + 16) = v15;
  v16 = v27[3];
  *(v11 + 32) = v27[2];
  *(v11 + 48) = v16;
  (*(v8 + 104))(v10, *MEMORY[0x277D4EF70], v7);
  LOBYTE(v26[0]) = 0;
  sub_20C13A384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769190);
  sub_20C133AA4();
  sub_20B51C710(v26, v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v26, v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder);
  v17 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_descriptor;
  v18 = sub_20C135E14();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v4 + v17, a3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_eventHub) = v26[0];
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_marker) = a2;
  v20 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendations) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v26, v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_subscriptionToken) = sub_20C13A914();
  v21 = sub_20C135D74();
  type metadata accessor for ShelfLazyLockupFetcher();
  v22 = swift_allocObject();
  *(v22 + 152) = v20;
  v23 = sub_20B6B0C04(v20);
  v24 = MEMORY[0x277D84FA0];
  *(v22 + 160) = v23;
  *(v22 + 168) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  sub_20C133AA4();
  (*(v19 + 8))(a3, v18);
  *(v22 + 136) = 10;
  *(v22 + 144) = v21;
  *(v22 + 145) = 0;
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_lazyLockupFetcher) = v22;
  return v4;
}

uint64_t sub_20C0774A8(uint64_t a1, int a2, uint64_t a3)
{
  v70 = a2;
  v5 = sub_20C134014();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - v11;
  v13 = sub_20C134614();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771DF8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  v67 = a3;
  v22 = *(a3 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendations);
  v73 = a1;
  v76 = a1;

  sub_20B6B7B24(sub_20C034274, v22, v21);
  v23 = v21;

  sub_20B52F9E8(v21, v18, &qword_27C771DF8);
  v24 = v13;
  if ((*(v14 + 48))(v18, 1, v13) == 1)
  {
    sub_20B520158(v18, &qword_27C771DF8);
    sub_20C13B474();
    v25 = v9;
    v26 = v74;
    v27 = v69;
    (*(v74 + 16))(v69, v73, v75);
    v28 = v25;
    v29 = sub_20C13BB74();
    v30 = sub_20C13D1D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v67 = v23;
      v32 = v31;
      v33 = swift_slowAlloc();
      *&v77[0] = v33;
      *v32 = 141558274;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2080;
      sub_20C077B9C();
      v34 = v75;
      v35 = sub_20C13DFA4();
      v37 = v36;
      (*(v26 + 8))(v27, v34);
      v38 = sub_20B51E694(v35, v37, v77);

      *(v32 + 14) = v38;
      _os_log_impl(&dword_20B517000, v29, v30, "[RecommendationsShelf] Could not find matching recommendation for %{mask.hash}s", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);

      (*(v71 + 8))(v28, v72);
      v39 = v67;
    }

    else
    {

      (*(v26 + 8))(v27, v75);
      (*(v71 + 8))(v25, v72);
      v39 = v23;
    }

    sub_20B520158(v39, &qword_27C771DF8);
    return 0xF000000000000007;
  }

  else
  {
    v40 = v14;
    v41 = *(v14 + 32);
    v42 = v68;
    v66 = v24;
    v41(v68, v18, v24);
    v43 = sub_20C134604();
    v71 = v44;
    v72 = v43;
    v45 = *(v67 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder + 24);
    v46 = *(v67 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder + 32);
    __swift_project_boxed_opaque_existential_1((v67 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder), v45);
    v47 = sub_20C136194();
    (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
    v48 = v73;
    MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v12, v45, v46, v77);
    sub_20B520158(v12, &unk_27C765110);
    v64 = v77[0];
    v63 = v77[1];
    v62 = v77[2];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v69 = swift_allocBox();
    v51 = v50;
    v52 = v49[12];
    v53 = v49[16];
    v67 = v23;
    v54 = (v50 + v53);
    v55 = v50 + v49[20];
    v56 = v50 + v49[24];
    v57 = v49[28];
    v65 = v49[32];
    (*(v74 + 16))(v50, v48, v75);
    *(v51 + v52) = v70;
    v58 = v63;
    *v54 = v64;
    v54[1] = v58;
    v54[2] = v62;
    v59 = v71;
    *v55 = v72;
    *(v55 + 8) = v59;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0;
    *(v55 + 16) = 0;
    *(v55 + 40) = 513;
    *v56 = 3;
    *(v56 + 8) = 3;
    *(v51 + v57) = 0;
    v60 = sub_20B6B2348(MEMORY[0x277D84F90]);
    (*(v40 + 8))(v42, v66);
    sub_20B520158(v67, &qword_27C771DF8);
    *(v51 + v65) = v60;
    return v69 | 0x4000000000000000;
  }
}

unint64_t sub_20C077B9C()
{
  result = qword_27C7722C8;
  if (!qword_27C7722C8)
  {
    sub_20C134014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7722C8);
  }

  return result;
}

uint64_t type metadata accessor for StartWorkoutSessionRequest()
{
  result = qword_27C7722D0;
  if (!qword_27C7722D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C077C48()
{
  result = sub_20C1344C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20C077CB0()
{
  v1 = sub_20C1344C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutSessionRequest();
  MEMORY[0x28223BE20](started);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C0785A0(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x20F2F58E0](0);
    sub_20C0786C8(&qword_27C76EE30, MEMORY[0x277D50820]);
    sub_20C13C7C4();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_20C077E84()
{
  v1 = v0;
  v2 = sub_20C1344C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutSessionRequest();
  MEMORY[0x28223BE20](started);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20C0785A0(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2F58E0](0);
    sub_20C0786C8(&qword_27C76EE30, MEMORY[0x277D50820]);
    sub_20C13C7C4();
    (*(v3 + 8))(v5, v2);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20C078074()
{
  v1 = v0;
  v2 = sub_20C1344C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20C0785A0(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2F58E0](0);
    sub_20C0786C8(&qword_27C76EE30, MEMORY[0x277D50820]);
    sub_20C13C7C4();
    (*(v3 + 8))(v5, v2);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20C0782AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1344C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutSessionRequest();
  v9 = MEMORY[0x28223BE20](started);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7722E8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  v18 = (&v26 + *(v15 + 56) - v16);
  sub_20C0785A0(a1, &v26 - v16);
  sub_20C0785A0(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C0785A0(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      v23 = MEMORY[0x20F2EBB60](v13, v7);
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v13, v4);
      sub_20C07866C(v17);
      return v23 & 1;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_12;
  }

  sub_20C0785A0(v17, v11);
  v20 = *v11;
  v19 = v11[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_20C078604(v17);
    goto LABEL_13;
  }

  if (v20 == *v18 && v19 == v18[1])
  {

    goto LABEL_16;
  }

  v22 = sub_20C13DFF4();

  if (v22)
  {
LABEL_16:
    sub_20C07866C(v17);
    v23 = 1;
    return v23 & 1;
  }

  sub_20C07866C(v17);
LABEL_13:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_20C0785A0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWorkoutSessionRequest();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_20C078604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7722E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C07866C(uint64_t a1)
{
  started = type metadata accessor for StartWorkoutSessionRequest();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_20C0786C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C078734()
{
  result = qword_27C7722F0;
  if (!qword_27C7722F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7722F0);
  }

  return result;
}

void sub_20C0787A4(int a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (!a3)
  {
LABEL_4:
    if (a1)
    {
      v17 = a6;
    }

    else
    {
      v17 = a5;
    }

    v18 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);
    v19 = sub_20C13CC54();

    [v18 deactivateConstraints_];

    v20 = *(v6 + *v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F320;
    *(inited + 32) = a2;
    *(inited + 40) = v20;

    sub_20B853E04(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
    swift_arrayDestroy();
    v22 = sub_20C13CC54();

    [v18 activateConstraints_];

    return;
  }

  v11 = (v6 + *a4);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = a3;
  if ((sub_20BF6C784(v16, v12, v13, v14, v15) ^ a1))
  {

    goto LABEL_4;
  }

  v23 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);
  v24 = sub_20C13CC54();
  [v23 activateConstraints_];
}

char *sub_20C078A30(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints] = v2;
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_previousBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v80 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF0 != -1)
  {
    swift_once();
  }

  v5 = sub_20C13C914();
  [v4 setText_];

  v6 = *MEMORY[0x277D76918];
  v7 = *MEMORY[0x277D74420];
  v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v11 = swift_initStackObject();
  v12 = MEMORY[0x277D74430];
  *(v11 + 16) = xmmword_20C14F980;
  v13 = *v12;
  *(v11 + 32) = *v12;
  *(v11 + 40) = v7;
  v14 = v10;
  v15 = v13;
  v16 = sub_20B6B134C(v11);
  swift_setDeallocating();
  sub_20B520158(v11 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v16;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v17 = sub_20C13C744();

  v18 = [v8 fontDescriptorByAddingAttributes_];

  v19 = objc_opt_self();
  v20 = [v19 fontWithDescriptor:v18 size:0.0];

  [v4 setFont_];
  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v4 setTextColor_];

  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  [v4 setTextAlignment_];
  v22 = v4;
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v24];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v80] = v22;
  v25 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_descriptionLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF8 != -1)
  {
    swift_once();
  }

  v27 = sub_20C13C914();
  [v26 setText_];

  v28 = [v19 preferredFontForTextStyle_];
  [v26 setFont_];

  v29 = [objc_opt_self() labelColor];
  [v26 setTextColor_];

  [v26 setTextAlignment_];
  v30 = v26;
  LODWORD(v31) = 1132068864;
  [v30 setContentCompressionResistancePriority:1 forAxis:v31];
  [v30 setAdjustsFontForContentSizeCategory_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v25] = v30;
  *&v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_presenter] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C151490;
  v33 = *&v1[v80];
  *(v32 + 32) = v33;
  *(v32 + 40) = v30;
  v34 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v35 = v30;

  v36 = v33;
  v37 = sub_20C13CC54();

  v38 = [v34 initWithArrangedSubviews_];

  [v38 setAlignment_];
  [v38 setAxis_];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_stackView] = v38;
  [v38 setCustomSpacing:*&v1[v80] afterView:13.0];
  v81.receiver = v1;
  v81.super_class = type metadata accessor for PhoneSessionOngoingWorkoutDetectedView();
  v39 = objc_msgSendSuper2(&v81, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v40 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_descriptionLabel;
  v41 = *&v39[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_descriptionLabel];
  v42 = v39;
  [v41 setNumberOfLines_];
  [*&v39[v40] setAdjustsFontSizeToFitWidth_];
  [*&v39[v40] setAllowsDefaultTighteningForTruncation_];
  [*&v39[v40] setMinimumScaleFactor_];
  v43 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_stackView;
  v44 = *&v42[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_stackView];
  v45 = v42;
  [v45 addSubview_];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14F580;
  v47 = [*&v42[v43] widthAnchor];
  v48 = [v45 widthAnchor];
  v49 = [v47 constraintLessThanOrEqualToAnchor:v48 multiplier:0.5];

  *(v46 + 32) = v49;
  *&v45[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints] = v46;

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C151490;
  v51 = [*&v42[v43] leadingAnchor];
  v52 = [v45 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v53 = [v51 constraintEqualToAnchor:v52 constant:{*&qword_27C799F40, 2, 5}];

  *(v50 + 32) = v53;
  v54 = [*&v42[v43] trailingAnchor];
  v55 = [v45 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v56 = [v54 constraintEqualToAnchor:v55 constant:-*&qword_27C799F50];

  *(v50 + 40) = v56;
  *&v45[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints] = v50;

  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_20C14FE90;
  v58 = [*&v42[v43] centerXAnchor];
  v59 = [v45 centerXAnchor];

  v60 = [v58 constraintEqualToAnchor_];
  *(v57 + 32) = v60;
  v61 = [*&v42[v43] centerYAnchor];
  v62 = [v45 centerYAnchor];

  v63 = [v61 constraintEqualToAnchor_];
  *(v57 + 40) = v63;
  v64 = [*&v42[v43] topAnchor];
  v65 = [v45 safeAreaLayoutGuide];

  v66 = [v65 topAnchor];
  v67 = [v64 constraintGreaterThanOrEqualToAnchor:v66 constant:4.0];

  *(v57 + 48) = v67;
  v68 = [*&v42[v43] bottomAnchor];
  v69 = [v45 safeAreaLayoutGuide];

  v70 = [v69 bottomAnchor];
  v71 = [v68 constraintLessThanOrEqualToAnchor:v70 constant:-4.0];

  *(v57 + 56) = v71;
  v72 = [v45 traitCollection];

  [v45 bounds];
  v77 = sub_20BF6C784(v72, v73, v74, v75, v76);
  sub_20C0787A4(v77, v57, 0, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_previousBounds, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints);

  *(a1 + 24) = &off_282304178;
  swift_unknownObjectWeakAssign();
  [v45 setUserInteractionEnabled_];

  [v45 setAlpha_];

  return v45;
}

id sub_20C079750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneSessionOngoingWorkoutDetectedView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C079834(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_20B6302C0;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_20B7B548C;
  v6[3] = &block_descriptor_178;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:v5 animations:0.2];
  _Block_release(v5);
}

void sub_20C079944()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints) = v1;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_previousBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v30 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_titleLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF0 != -1)
  {
    swift_once();
  }

  v4 = sub_20C13C914();
  [v3 setText_];

  v5 = *MEMORY[0x277D76918];
  v6 = *MEMORY[0x277D74420];
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v9 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74430];
  *(v10 + 32) = *MEMORY[0x277D74430];
  *(v10 + 40) = v6;
  v12 = v9;
  v13 = v11;
  v14 = sub_20B6B134C(v10);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v14;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v15 = sub_20C13C744();

  v16 = [v7 fontDescriptorByAddingAttributes_];

  v17 = objc_opt_self();
  v18 = [v17 fontWithDescriptor:v16 size:0.0];

  [v3 setFont_];
  v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v3 setTextColor_];

  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];
  [v3 setTextAlignment_];
  v20 = v3;
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v22];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v30) = v20;
  v23 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_descriptionLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF8 != -1)
  {
    swift_once();
  }

  v25 = sub_20C13C914();
  [v24 setText_];

  v26 = [v17 preferredFontForTextStyle_];
  [v24 setFont_];

  v27 = [objc_opt_self() labelColor];
  [v24 setTextColor_];

  [v24 setTextAlignment_];
  v28 = v24;
  LODWORD(v29) = 1132068864;
  [v28 setContentCompressionResistancePriority:1 forAxis:v29];
  [v28 setAdjustsFontForContentSizeCategory_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v23) = v28;
  sub_20C13DE24();
  __break(1u);
}

id sub_20C079E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - v4;
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  sub_20C132EA4();
  (*(v7 + 8))(v9, v6);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_20C13C914();
  v12 = sub_20C13C914();
  v13 = sub_20C13C744();

  v14 = [v10 initWithTitle:v11 message:v12 appearanceInfo:v13];

  v15 = sub_20C13C914();

  [v14 setIdentifier_];

  [v14 setStyle_];
  sub_20C132C04();
  v16 = sub_20C132C14();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = 0;
  if (v18(v5, 1, v16) != 1)
  {
    v19 = sub_20C132B64();
    (*(v17 + 8))(v5, v16);
  }

  [v14 setIconURL_];

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:0 style:2];
  [v14 addButtonAction_];

  v22 = [v20 actionWithTitle:0 style:0];
  sub_20C132C04();
  v23 = 0;
  if (v18(v3, 1, v16) != 1)
  {
    v23 = sub_20C132B64();
    (*(v17 + 8))(v3, v16);
  }

  [v22 setDeepLink_];

  [v14 setDefaultAction_];
  return v14;
}

id sub_20C07A280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v36 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - v3;
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  v9 = sub_20C132EA4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v12 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v13 = sub_20C13C914();
  v14 = sub_20C13C914();
  v15 = sub_20C13C744();

  v16 = [v12 initWithTitle:v13 message:v14 appearanceInfo:v15];

  v38 = v9;
  v37 = v11;
  v17 = sub_20C13C914();
  [v16 setIdentifier_];

  sub_20C132C04();
  v18 = sub_20C132C14();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v4, 1, v18) != 1)
  {
    v21 = sub_20C132B64();
    (*(v19 + 8))(v4, v18);
  }

  [v16 setIconURL_];

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:0 style:2];
  [v16 addButtonAction_];

  [v16 setStyle_];
  v24 = sub_20C13C914();
  v25 = [v22 actionWithTitle_];

  v26 = v36;
  sub_20C132C04();
  v27 = 0;
  if (v20(v26, 1, v18) != 1)
  {
    v27 = sub_20C132B64();
    (*(v19 + 8))(v26, v18);
  }

  [v25 setDeepLink_];

  [v16 addButtonAction_];
  sub_20C1336B4();
  sub_20C1336F4();
  v28 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v29 = sub_20C13C914();

  v30 = [v28 initWithTopic_];

  [v16 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v39 = 0xD000000000000012;
  v40 = 0x800000020C196B60;
  v32 = MEMORY[0x277D837D0];
  sub_20C13DC04();
  *(inited + 96) = v32;
  v33 = v37;
  *(inited + 72) = v38;
  *(inited + 80) = v33;
  v39 = 0x6E656D6563616C70;
  v40 = 0xE900000000000074;
  sub_20C13DC04();
  *(inited + 168) = v32;
  *(inited + 144) = 0xD000000000000013;
  *(inited + 152) = 0x800000020C191800;
  sub_20B529B54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40);
  swift_arrayDestroy();
  v34 = sub_20C13C744();

  [v16 setClickstreamMetricsEvent_];

  return v16;
}

id sub_20C07A8B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v36 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - v3;
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  v9 = sub_20C132EA4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v12 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v13 = sub_20C13C914();
  v14 = sub_20C13C914();
  v15 = sub_20C13C744();

  v16 = [v12 initWithTitle:v13 message:v14 appearanceInfo:v15];

  v38 = v9;
  v37 = v11;
  v17 = sub_20C13C914();
  [v16 setIdentifier_];

  [v16 setStyle_];
  sub_20C132C04();
  v18 = sub_20C132C14();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v4, 1, v18) != 1)
  {
    v21 = sub_20C132B64();
    (*(v19 + 8))(v4, v18);
  }

  [v16 setIconURL_];

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:0 style:2];
  [v16 addButtonAction_];

  v24 = sub_20C13C914();
  v25 = [v22 actionWithTitle_];

  v26 = v36;
  sub_20C132C04();
  v27 = 0;
  if (v20(v26, 1, v18) != 1)
  {
    v27 = sub_20C132B64();
    (*(v19 + 8))(v26, v18);
  }

  [v25 setDeepLink_];

  [v16 addButtonAction_];
  sub_20C1336B4();
  sub_20C1336F4();
  v28 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v29 = sub_20C13C914();

  v30 = [v28 initWithTopic_];

  [v16 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v39 = 0xD000000000000012;
  v40 = 0x800000020C196B60;
  v32 = MEMORY[0x277D837D0];
  sub_20C13DC04();
  *(inited + 96) = v32;
  v33 = v37;
  *(inited + 72) = v38;
  *(inited + 80) = v33;
  v39 = 0x6E656D6563616C70;
  v40 = 0xE900000000000074;
  sub_20C13DC04();
  *(inited + 168) = v32;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x800000020C1917E0;
  sub_20B529B54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40);
  swift_arrayDestroy();
  v34 = sub_20C13C744();

  [v16 setClickstreamMetricsEvent_];

  return v16;
}

id sub_20C07AEE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_20C132EE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  v31 = sub_20C132EA4();
  v30 = v7;
  v8 = *(v4 + 8);
  v8(v6, v3);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v9 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v10 = sub_20C13C914();
  v11 = sub_20C13C914();
  v12 = sub_20C13C744();

  v13 = [v9 initWithTitle:v10 message:v11 appearanceInfo:v12];

  [v13 setStyle_];
  sub_20C132ED4();
  sub_20C132EA4();
  v8(v6, v3);
  v14 = sub_20C13C914();

  [v13 setIdentifier_];

  sub_20C132C04();
  v15 = sub_20C132C14();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v2, 1, v15) != 1)
  {
    v17 = sub_20C132B64();
    (*(v16 + 8))(v2, v15);
  }

  [v13 setIconURL_];

  v18 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  sub_20C1336B4();
  sub_20C1336F4();
  v19 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v20 = sub_20C13C914();

  v21 = [v19 initWithTopic_];

  [v13 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v32 = 0xD000000000000012;
  v33 = 0x800000020C196B60;
  v23 = MEMORY[0x277D837D0];
  sub_20C13DC04();
  *(inited + 96) = v23;
  v24 = v30;
  *(inited + 72) = v31;
  *(inited + 80) = v24;
  v32 = 0x6E656D6563616C70;
  v33 = 0xE900000000000074;
  sub_20C13DC04();
  v25 = sub_20C1393B4();
  *(inited + 168) = v23;
  *(inited + 144) = v25;
  *(inited + 152) = v26;
  sub_20B529B54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40);
  swift_arrayDestroy();
  v27 = sub_20C13C744();

  [v13 setClickstreamMetricsEvent_];

  return v13;
}

id sub_20C07B41C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_20C132EE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  v7 = sub_20C132EA4();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_20C13C914();
  v12 = sub_20C13C914();
  v13 = sub_20C13C744();

  v14 = [v10 initWithTitle:v11 message:v12 appearanceInfo:v13];

  v15 = sub_20C13C914();
  [v14 setIdentifier_];

  [v14 setStyle_];
  sub_20C132C04();
  v16 = sub_20C132C14();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v2, 1, v16) != 1)
  {
    v18 = sub_20C132B64();
    (*(v17 + 8))(v2, v16);
  }

  [v14 setIconURL_];

  v19 = [objc_opt_self() actionWithTitle:0 style:2];
  [v14 addButtonAction_];

  sub_20C1336B4();
  sub_20C1336F4();
  v20 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v21 = sub_20C13C914();

  v22 = [v20 initWithTopic_];

  [v14 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v30 = 0xD000000000000012;
  v31 = 0x800000020C196B60;
  v24 = MEMORY[0x277D837D0];
  sub_20C13DC04();
  *(inited + 96) = v24;
  *(inited + 72) = v7;
  *(inited + 80) = v9;
  v30 = 0x6E656D6563616C70;
  v31 = 0xE900000000000074;
  sub_20C13DC04();
  v25 = sub_20C1393B4();
  *(inited + 168) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = v26;
  sub_20B529B54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40);
  swift_arrayDestroy();
  v27 = sub_20C13C744();

  [v14 setClickstreamMetricsEvent_];

  return v14;
}

uint64_t sub_20C07B8F4(uint64_t a1, char *a2)
{
  v3 = v2;
  v4 = *a2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row;
  sub_20B5D8060(v17);
  v6 = v17[9];
  *(v5 + 128) = v17[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v18;
  v7 = v17[5];
  *(v5 + 64) = v17[4];
  *(v5 + 80) = v7;
  v8 = v17[7];
  *(v5 + 96) = v17[6];
  *(v5 + 112) = v8;
  v9 = v17[1];
  *v5 = v17[0];
  *(v5 + 16) = v9;
  v10 = v17[3];
  *(v5 + 32) = v17[2];
  *(v5 + 48) = v10;
  *(v2 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_preferenceType) = v4;
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_workoutPlanStringBuilder) = v16;
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));

  v11 = sub_20B5E107C();
  v13 = v12;

  v14 = (v3 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_text);
  *v14 = v11;
  v14[1] = v13;
  return v3;
}

uint64_t sub_20C07BA90()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = swift_allocObject();
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_text + 8);
  *(v5 + 16) = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_text);
  *(v5 + 24) = v6;
  v7 = v5 | 0x5000000000000006;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F980;
  *(v8 + 32) = v7;
  v31 = 0uLL;
  LOBYTE(v32) = 1;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  WORD4(v33) = 128;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  LOBYTE(v37) = 0;
  *(&v37 + 1) = v8;
  *&v38[0] = MEMORY[0x277D84F90];
  *(v38 + 8) = 0u;
  *(&v38[1] + 8) = 0u;
  *(&v38[2] + 1) = 0;
  v39 = 2;
  nullsub_1(&v31);
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 144);
  v40[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 128);
  v40[9] = v10;
  v41 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 160);
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 80);
  v40[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 64);
  v40[5] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 112);
  v40[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 96);
  v40[7] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 16);
  v40[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row);
  v40[1] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 48);
  v40[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 32);
  v40[3] = v14;
  v15 = v38[2];
  *(v9 + 128) = v38[1];
  *(v9 + 144) = v15;
  *(v9 + 160) = v39;
  v16 = v36;
  *(v9 + 64) = v35;
  *(v9 + 80) = v16;
  v17 = v38[0];
  *(v9 + 96) = v37;
  *(v9 + 112) = v17;
  v18 = v32;
  *v9 = v31;
  *(v9 + 16) = v18;
  v19 = v34;
  *(v9 + 32) = v33;
  *(v9 + 48) = v19;

  sub_20B634408(v40);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v21 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v22 = sub_20B61D230(v0, Strong);
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v30 = v0;
      sub_20B5E2E18();
      *v4 = sub_20C13D374();
      (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
      v28 = sub_20C13C584();
      result = (*(v2 + 8))(v4, v1);
      if ((v28 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      sub_20B620A08(v25, v26, v27, v30, 1, v21);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20C07BDA0()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanPreferenceDescriptionShelf()
{
  result = qword_27C772338;
  if (!qword_27C772338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C07BEFC()
{
  result = sub_20C132EE4();
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

uint64_t sub_20C07BFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C07C03C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
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

char *sub_20C07C0EC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton;
  type metadata accessor for DownloadButton();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v43.receiver = v4;
  v43.super_class = type metadata accessor for DownloadButtonCell();
  v13 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton];
  v16 = v13;
  [v15 setSmu:-10.0 touchInsets:{-10.0, -10.0, -10.0}];
  v17 = v16;
  v18 = [v17 contentView];
  [v18 addSubview_];

  v19 = *&v13[v14];
  [v19 addTarget:v17 action:sel_handleDownloadButtonTapped_ forControlEvents:64];

  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20C14FE90;
  v21 = [*&v13[v14] leadingAnchor];
  v22 = [v17 &selRef_setMaximumFractionDigits_];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintGreaterThanOrEqualToAnchor_];
  *(v20 + 32) = v24;
  v25 = [*&v13[v14] trailingAnchor];
  v26 = [v17 &selRef_setMaximumFractionDigits_];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v29) = v42;
  [v28 setPriority_];
  *(v20 + 40) = v28;
  v30 = [*&v13[v14] topAnchor];
  v31 = [v17 contentView];
  v32 = [v31 topAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v20 + 48) = v33;
  v34 = [*&v13[v14] bottomAnchor];
  v35 = [v17 contentView];

  v36 = [v35 bottomAnchor];
  v37 = [v34 constraintEqualToAnchor_];

  sub_20C13BBA4();
  LODWORD(v38) = v42;
  [v37 setPriority_];
  *(v20 + 56) = v37;
  sub_20B5E29D0();
  v39 = sub_20C13CC54();

  [v41 activateConstraints_];

  return v17;
}

id sub_20C07C774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadButtonCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DownloadButtonCell()
{
  result = qword_27C772358;
  if (!qword_27C772358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C07C86C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20C07C914(unint64_t a1, int a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0xB)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    sub_20C13B4A4();
    v14 = v2;
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1F4();

    v17 = os_log_type_enabled(v15, v16);
    v51 = a2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v52 = v5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v19 = 138543618;
      *(v19 + 4) = v14;
      *v20 = v14;
      *(v19 + 12) = 2082;
      v21 = v14;
      v22 = sub_20BCFF494(*&v12, v13);
      v50 = v6;
      v24 = v13;
      v25 = sub_20B51E694(v22, v23, &v54);

      *(v19 + 14) = v25;
      v13 = v24;
      _os_log_impl(&dword_20B517000, v15, v16, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v19, 0x16u);
      sub_20B520158(v20, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      v26 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v19, -1, -1);

      result = (*(v50 + 8))(v11, v52);
    }

    else
    {

      result = (*(v6 + 8))(v11, v5);
    }

    v40 = *&v14[OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton];
    v41 = &v40[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v42 = *&v40[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v43 = v40[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8];
    if (v43 <= 1)
    {
      if (v40[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8])
      {
        if (v13 != 1 || ((LODWORD(v42) ^ LODWORD(v12)) & 1) != 0)
        {
          goto LABEL_26;
        }
      }

      else if (v13 || LOBYTE(v42) != LOBYTE(v12))
      {
        goto LABEL_26;
      }
    }

    else if (v43 == 2)
    {
      if (v13 != 2 || v42 != v12)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v43 == 255)
      {
LABEL_26:
        *v41 = v12;
        v41[8] = v13;
        sub_20C010054(*&v12, v13, 2.0);
        v45 = v44;
        v47 = v46;
        ObjectType = swift_getObjectType();
        sub_20C0DC2BC(v45, v51 & 1, v40, ObjectType, v47);
        return swift_unknownObjectRelease();
      }

      if (*&v42 <= 1)
      {
        if (v42 == 0.0)
        {
          if (v13 != 3 || v12 != 0.0)
          {
            goto LABEL_26;
          }
        }

        else if (v13 != 3 || *&v12 != 1)
        {
          goto LABEL_26;
        }
      }

      else if (*&v42 == 2)
      {
        if (v13 != 3 || *&v12 != 2)
        {
          goto LABEL_26;
        }
      }

      else if (*&v42 == 3)
      {
        if (v13 != 3 || *&v12 != 3)
        {
          goto LABEL_26;
        }
      }

      else if (v13 != 3 || *&v12 != 4)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    sub_20C13B534();

    v28 = v2;
    v29 = sub_20C13BB74();
    v30 = sub_20C13D1D4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v5;
      v53 = a1;
      v34 = v33;
      v54 = v33;
      *v31 = 138543618;
      *(v31 + 4) = v28;
      *v32 = v28;
      *(v31 + 12) = 2082;
      v35 = sub_20B5F66D0();
      v36 = v28;
      v37 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v35);
      v39 = sub_20B51E694(v37, v38, &v54);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_20B517000, v29, v30, "Attempted to configure %{public}@ with item: %{public}s", v31, 0x16u);
      sub_20B520158(v32, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x20F2F6A40](v34, -1, -1);
      MEMORY[0x20F2F6A40](v31, -1, -1);

      return (*(v6 + 8))(v8, v52);
    }

    else
    {

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_20C07CE5C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20C07CEA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20C07CF00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20C07CF64()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton;
  type metadata accessor for DownloadButton();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C07D064()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20C07D248(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20C07D2A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_20C07D308(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = [result size];
    if (a2)
    {
      if (a3 == 0x8000000000000000 && a2 == -1)
      {
        goto LABEL_10;
      }

      if (!__OFADD__(a3 / a2, a3 % a2 != 0))
      {
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_20C07D388(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_centerWidth] = 0x4042800000000000;
  v10 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.501960784 blue:0.662745098 alpha:1.0];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.501960784 blue:0.662745098 alpha:1.0];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.97254902 green:0.0666666667 blue:0.309803922 alpha:1.0];
  sub_20B84A274(inited);
  v12 = [v10 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13 && ([v13 setType_], v12, v12 = objc_msgSend(v10, sel_layer), objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v14, sel_setStartPoint_, 0.5, 0.5), v12, v12 = objc_msgSend(v10, sel_layer), objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0))
  {
    v16 = OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_gradient;
    [v15 setEndPoint_];

    *&v5[v16] = v10;
    v35.receiver = v5;
    v35.super_class = type metadata accessor for BurnBarGradientContainer();
    v17 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
    v18 = objc_allocWithZone(MEMORY[0x277D75348]);
    v19 = v17;
    v20 = [v18 initWithRed:0.97254902 green:0.0666666667 blue:0.309803922 alpha:1.0];
    [v19 setBackgroundColor_];

    v21 = OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_gradient;
    [v19 addSubview_];
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20C150040;
    v23 = [*&v19[v21] heightAnchor];
    v24 = [*&v19[v21] widthAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 multiplier:1.0];

    *(v22 + 32) = v25;
    v26 = [*&v19[v21] widthAnchor];
    v27 = [v19 widthAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 multiplier:1.0];

    *(v22 + 40) = v28;
    v29 = [*&v19[v21] centerYAnchor];
    v30 = [v19 centerYAnchor];

    v31 = [v29 constraintEqualToAnchor_];
    *(v22 + 48) = v31;
    v32 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);
    v33 = sub_20C13CC54();

    [v32 activateConstraints_];

    return v19;
  }

  else
  {

    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

void sub_20C07D8CC(char a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_gradient];
  [v6 bounds];
  if (CGRectGetWidth(v23) > 0.0)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_centerWidth] = a2;
    [v6 bounds];
    v7 = a2 / CGRectGetWidth(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C1517D0;
    *(v8 + 32) = 0;
    *(v8 + 40) = v7;
    *(v8 + 48) = 0x3FF0000000000000;
    v9 = sub_20B84A6AC();
    if (a1)
    {
      v21[0] = MEMORY[0x277D84F90];
      sub_20C13DD64();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v10 = sub_20C13C914();
      v11 = [objc_opt_self() animationWithKeyPath_];

      if (v9)
      {
        sub_20B51C88C(0, &qword_27C765490);
        v12 = sub_20C13CC54();
      }

      else
      {
        v12 = 0;
      }

      [v11 setFromValue_];
      swift_unknownObjectRelease();
      sub_20B51C88C(0, &qword_27C765490);
      v14 = sub_20C13CC54();

      [v11 setToValue_];

      v15 = [v6 layer];
      v16 = sub_20C13C914();
      [v15 addAnimation:v11 forKey:v16];

      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v8;
      v21[4] = sub_20C07DDE8;
      v21[5] = v18;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 1107296256;
      v21[2] = sub_20B7B548C;
      v21[3] = &block_descriptor_179;
      v19 = _Block_copy(v21);
      v20 = v3;

      [v17 setCompletionBlock_];
      _Block_release(v19);
    }

    else
    {

      v13 = objc_opt_self();
      [v13 begin];
      [v13 setDisableActions_];
      sub_20B84A4C0(v8);

      [v13 commit];
    }
  }
}

id sub_20C07DD80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BurnBarGradientContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C07DE1C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_centerWidth) = 0x4042800000000000;
  v2 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.501960784 blue:0.662745098 alpha:1.0];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.501960784 blue:0.662745098 alpha:1.0];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.97254902 green:0.0666666667 blue:0.309803922 alpha:1.0];
  sub_20B84A274(inited);
  v4 = [v2 layer];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && ([v5 setType_], v4, v4 = objc_msgSend(v2, sel_layer), objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v6, sel_setStartPoint_, 0.5, 0.5), v4, v4 = objc_msgSend(v2, sel_layer), objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_gradient;
    [v7 setEndPoint_];

    *(v1 + v8) = v2;
  }

  else
  {
  }

  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C07E0E8()
{
  v1 = *(*v0 + 464);

  return v1;
}

uint64_t sub_20C07E11C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20C137EA4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C07E1DC, 0, 0);
}

uint64_t sub_20C07E1DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    sub_20C13AA14();
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_20C07E2E8;
    v3 = v0[9];

    return sub_20C07E4C0(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_20C07E2E8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B5D47E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20C07E4C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C13B3C4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7723A0);
  v2[7] = swift_task_alloc();
  v4 = sub_20C134C14();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C07E614, 0, 0);
}

uint64_t sub_20C07E614()
{
  v1 = v0[3];
  v2 = v1[18];
  v3 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v2);
  if ((*(v3 + 8))(0xD000000000000023, 0x800000020C1BC210, v2, v3))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    v7 = v6[7];
    v8 = v6[8];
    __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
    v9 = sub_20C137D24();
    v11 = v10;
    v0[11] = v10;
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_20C07E7A0;
    v13 = v0[7];

    return MEMORY[0x2821AED98](v13, v9, v11, v7, v8);
  }
}

uint64_t sub_20C07E7A0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20C07ED04;
  }

  else
  {

    v2 = sub_20C07E8BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C07E8BC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20C07FB58(v3);
    v4 = sub_20C137D24();
    v6 = v5;
    sub_20C07FBC0();
    swift_allocError();
    *v7 = v4;
    v7[1] = v6;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[3];
    (*(v2 + 32))(v0[10], v3, v1);
    v12 = v10[7];
    v11 = v10[8];
    __swift_project_boxed_opaque_existential_1(v10 + 4, v12);
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_20C07EA70;
    v14 = v0[10];

    return MEMORY[0x2821AED90](v14, v12, v11);
  }
}

uint64_t sub_20C07EA70(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_20C07ED8C;
  }

  else
  {
    *(v4 + 128) = a1 & 1;
    v5 = sub_20C07EB9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20C07EB9C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v11 = *(v0 + 64);
  v12 = *(v0 + 80);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v10 = *(v0 + 32);
  v6 = v5[18];
  v7 = v5[19];
  __swift_project_boxed_opaque_existential_1(v5 + 15, v6);
  (*(v7 + 16))(v1, 0xD000000000000023, 0x800000020C1BC210, v6, v7);
  swift_getObjectType();
  sub_20C13B3B4();
  sub_20C13A764();
  (*(v3 + 8))(v4, v10);
  (*(v2 + 8))(v12, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_20C07ED04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C07ED8C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C07EE24()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_20C07EEA8()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_20C13B564();
  sub_20C13BB64();
  v20 = *(v3 + 8);
  v20(v8, v2);
  v9 = v1[12];
  v10 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v9);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *(v10 + 24);

  v12(sub_20C07F358, v11, v9, v10);

  v13 = v1[12];
  v14 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v13);
  (*(v14 + 8))(v13, v14);
  sub_20C13B514();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20B517000, v15, v16, "Activated Bluetooth source observer.", v17, 2u);
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  return (v20)(v5, v2);
}

uint64_t sub_20C07F120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B514();
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_20B517000, v11, v12, "Bluetooth source list updated: %ld", v13, 0xCu);
    MEMORY[0x20F2F6A40](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a1;

  sub_20B6380FC(0, 0, v6, &unk_20C18C128, v15);
}

uint64_t sub_20C07F360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_20C07F384, 0, 0);
}

uint64_t sub_20C07F384()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 56);
    *(v0 + 72) = *(Strong + 160);

    if (v2 > 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    *(v0 + 80) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378);
    sub_20C07FA1C();
    v5 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20C07F4B4, v5, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_20C07F4B4()
{
  sub_20C07FA80();
  sub_20C13B7A4();

  return MEMORY[0x2822009F8](sub_20C07F530, 0, 0);
}

uint64_t sub_20C07F558()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B514();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "Invalidating Bluetooth source observer.", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1[12];
  v10 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v9);
  return (*(v10 + 16))(v9, v10);
}

uint64_t sub_20C07F6C8()
{
  v1[2] = v0;
  v2 = sub_20C13BB84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C07F788, 0, 0);
}

uint64_t sub_20C07F788()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_20C13B564();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v5 = v4[18];
  v6 = v4[19];
  __swift_project_boxed_opaque_existential_1(v4 + 15, v5);
  if ((*(v6 + 8))(0xD000000000000023, 0x800000020C1BC210, v5, v6))
  {

    v7 = v0[1];

    return v7(2);
  }

  else
  {
    v9 = sub_20C133CC4();
    sub_20BC3CD24();
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D503A0], v9);
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_20C07F95C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20C07F360(a1, v4, v5, v7, v6);
}

unint64_t sub_20C07FA1C()
{
  result = qword_27C772380;
  if (!qword_27C772380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C772378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772380);
  }

  return result;
}

unint64_t sub_20C07FA80()
{
  result = qword_27C772388;
  if (!qword_27C772388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C772390);
    sub_20C07FB04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772388);
  }

  return result;
}

unint64_t sub_20C07FB04()
{
  result = qword_27C772398;
  if (!qword_27C772398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772398);
  }

  return result;
}

uint64_t sub_20C07FB58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7723A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C07FBC0()
{
  result = qword_27C7723A8;
  if (!qword_27C7723A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7723A8);
  }

  return result;
}

uint64_t sub_20C07FC48()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C07FD20, 0, 0);
}

uint64_t sub_20C07FD20()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  sub_20C13B564();
  sub_20C13BB64();
  v5 = *(v3 + 8);
  v0[12] = v5;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = v4[5];
  v7 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v7 + 32);

  v9(sub_20C080494, v8, v6, v7);

  v10 = v4[5];
  v11 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v10);
  v14 = (*(v11 + 8) + **(v11 + 8));
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_20C07FF40;

  return v14(v10, v11);
}

uint64_t sub_20C07FF40()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_20C080174;
  }

  else
  {
    v2 = sub_20C080054;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C080054()
{
  sub_20C13B514();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "Activated audio accessory monitor.", v3, 2u);
    MEMORY[0x20F2F6A40](v3, -1, -1);
  }

  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[7];

  v4(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20C080174()
{
  v19 = v0;
  v1 = v0[15];
  sub_20C13B514();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x20F2F5850](v0[3], v0[4]);
    v12 = sub_20B51E694(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to activate audio accessory monitor: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    v5(v6, v7);
  }

  else
  {
    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[7];

    v13(v14, v15);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_20C080354(int a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = (a2 & 0x100000000) == 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  if ((a1 & v6) != 0)
  {
    v10 = v4 == 8221;
  }

  else
  {
    v10 = 3;
  }

  v11 = sub_20C13CDF4();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a3;
  *(v12 + 40) = v10;

  sub_20B6380FC(0, 0, v9, &unk_20C18C218, v12);
}

uint64_t sub_20C0804B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 73) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_20C0804D4, 0, 0);
}

uint64_t sub_20C0804D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 73);
    *(v0 + 64) = *(Strong + 56);

    *(v0 + 72) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378);
    sub_20C07FA1C();
    v4 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20C0805F8, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_20C0805F8()
{
  sub_20C07FA80();
  sub_20C13B7A4();

  return MEMORY[0x2822009F8](sub_20BDDEA2C, 0, 0);
}

uint64_t sub_20C080674()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B514();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "Invalidating audio accessory monitor.", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  return (*(v10 + 16))(v9, v10);
}

uint64_t sub_20C0807E4()
{
  v1[2] = v0;
  v2 = sub_20C13BB84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C0808A4, 0, 0);
}

uint64_t sub_20C0808A4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_20C13B564();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v5);
  v9 = (*(v6 + 24) + **(v6 + 24));
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_20C080A30;

  return v9(v5, v6);
}

uint64_t sub_20C080A30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_20C080C88;
  }

  else
  {
    v4 = sub_20C080B44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20C080B44()
{
  v1 = *(v0 + 56);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);

    v3 = *(v0 + 8);

    return v3(v2 == 8221);
  }

  else
  {

    v5 = sub_20C133CC4();
    sub_20BC3CD24();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D503A0], v5);
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_20C080C88()
{
  v1 = *(v0 + 64);
  v2 = sub_20C133CC4();
  sub_20BC3CD24();
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D503A0], v2);
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20C080D74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20C0804B0(a1, v4, v5, v6, v7);
}

uint64_t sub_20C080E38(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 264) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  *(v2 + 24) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  *(v2 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  *(v2 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  *(v2 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  *(v2 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  *(v2 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  *(v2 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  *(v2 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  *(v2 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  *(v2 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  *(v2 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  *(v2 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  *(v2 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  *(v2 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  *(v2 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  *(v2 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  *(v2 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  *(v2 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  *(v2 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  *(v2 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  *(v2 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  *(v2 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  *(v2 + 216) = swift_task_alloc();
  v3 = sub_20C13BB84();
  *(v2 + 224) = v3;
  *(v2 + 232) = *(v3 - 8);
  *(v2 + 240) = swift_task_alloc();
  v4 = swift_task_alloc();
  *(v2 + 248) = v4;
  *v4 = v2;
  v4[1] = sub_20C0814A0;

  return sub_20C082CF0();
}

uint64_t sub_20C0814A0()
{
  v2 = *v1;
  v2[32] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[2];

    return MEMORY[0x2822009F8](sub_20C08172C, v5, 0);
  }
}

void sub_20C08172C()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 16);
  v6 = *(v0 + 264);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state);
  v8 = swift_task_alloc();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  os_unfair_lock_lock(v7 + 11);
  sub_20C087CC4(&v7[4]);
  if (v1)
  {

    os_unfair_lock_unlock(v7 + 11);
  }

  else
  {
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    v52 = *(v0 + 160);
    v53 = *(v0 + 168);
    v51 = *(v0 + 152);
    v59 = *(v0 + 136);
    v60 = *(v0 + 144);
    v54 = *(v0 + 128);
    v55 = *(v0 + 120);
    v57 = *(v0 + 104);
    v58 = *(v0 + 112);
    v56 = *(v0 + 96);
    v49 = *(v0 + 88);
    v42 = *(v0 + 80);
    v43 = *(v0 + 72);
    v44 = *(v0 + 64);
    v45 = *(v0 + 56);
    v50 = *(v0 + 48);
    v46 = *(v0 + 40);
    v47 = *(v0 + 32);
    v15 = *(v0 + 16);
    v48 = *(v0 + 24);
    os_unfair_lock_unlock(v7 + 11);

    __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient), *(v15 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient + 24));
    sub_20C13A464();
    v16 = sub_20C133D84();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = sub_20C135854();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = sub_20C136194();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = sub_20C133DD4();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v20 = sub_20C135274();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = sub_20C134514();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    v22 = sub_20C133B04();
    (*(*(v22 - 8) + 56))(v53, 1, 1, v22);
    v23 = sub_20C134C04();
    (*(*(v23 - 8) + 56))(v52, 1, 1, v23);
    sub_20C13CE94();
    sub_20C1368C4();
    v24 = sub_20C1368F4();
    (*(*(v24 - 8) + 56))(v51, 0, 1, v24);
    v25 = sub_20C134914();
    (*(*(v25 - 8) + 56))(v60, 1, 1, v25);
    v26 = sub_20C133374();
    (*(*(v26 - 8) + 56))(v59, 1, 1, v26);
    v27 = sub_20C135B74();
    (*(*(v27 - 8) + 56))(v54, 1, 1, v27);
    v28 = sub_20C134CD4();
    (*(*(v28 - 8) + 56))(v55, 1, 1, v28);
    v29 = sub_20C136EB4();
    (*(*(v29 - 8) + 56))(v58, 1, 1, v29);
    v30 = sub_20C133494();
    (*(*(v30 - 8) + 56))(v57, 1, 1, v30);
    v31 = sub_20C134594();
    (*(*(v31 - 8) + 56))(v56, 1, 1, v31);
    v32 = sub_20C138184();
    (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
    v33 = sub_20C1363D4();
    (*(*(v33 - 8) + 56))(v42, 1, 1, v33);
    v34 = sub_20C1337A4();
    (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
    v35 = sub_20C1337D4();
    (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
    v36 = sub_20C134A94();
    (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
    v37 = sub_20C135364();
    (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
    v38 = sub_20C136484();
    (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
    v39 = sub_20C136784();
    (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
    v40 = sub_20C137FE4();
    (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    sub_20C13A174();

    sub_20B520158(v48, &unk_27C768AC0);
    sub_20B520158(v47, &unk_27C765070);
    sub_20B520158(v46, &unk_27C765CB0);
    sub_20B520158(v50, &unk_27C765080);
    sub_20B520158(v45, &unk_27C768AD0);
    sub_20B520158(v44, &unk_27C765090);
    sub_20B520158(v43, &unk_27C768AE0);
    sub_20B520158(v42, &unk_27C7650A0);
    sub_20B520158(v49, &unk_27C768AF0);
    sub_20B520158(v56, &unk_27C7650B0);
    sub_20B520158(v57, &unk_27C768B00);
    sub_20B520158(v58, &unk_27C7650C0);
    sub_20B520158(v55, &unk_27C768B10);
    sub_20B520158(v54, &unk_27C7650D0);
    sub_20B520158(v59, &unk_27C768B20);
    sub_20B520158(v60, &unk_27C7650E0);
    sub_20B520158(v51, &unk_27C767260);
    sub_20B520158(v52, &unk_27C7650F0);
    sub_20B520158(v53, &qword_27C768B30);
    sub_20B520158(v14, &unk_27C765050);
    sub_20B520158(v13, &unk_27C765100);
    sub_20B520158(v12, &unk_27C7687F0);
    sub_20B520158(v11, &unk_27C765110);
    sub_20B520158(v10, &unk_27C76BBF0);
    sub_20B520158(v9, &unk_27C765120);

    v41 = *(v0 + 8);

    v41();
  }
}

uint64_t sub_20C0823A8()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772418);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_20C0824FC;

  return sub_20C082CF0();
}

uint64_t sub_20C0824FC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_20C082654, v6, 0);
  }
}

uint64_t sub_20C082654()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  if (qword_27C760D00 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = __swift_project_value_buffer(v6, qword_27C7723B0);
  (*(v5 + 16))(v4, v7, v6);
  sub_20C13A344();
  (*(v5 + 8))(v4, v6);
  v8 = *(v0 + 96);
  if (v8 == 3)
  {
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_20C082840;

    return sub_20C0807E4();
  }

  else
  {

    v11 = *(v0 + 8);

    return v11(v8);
  }
}

uint64_t sub_20C082840(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v4 + 16);

    return MEMORY[0x2822009F8](sub_20C0829A8, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_20C0829A8()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_20C082A44;

  return sub_20C07F6C8();
}

uint64_t sub_20C082A44(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v4 + 16);

    return MEMORY[0x2822009F8](sub_20C082BAC, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_20C082BAC()
{
  v1 = sub_20C133CC4();
  sub_20C087F10(&qword_27C766EF8, MEMORY[0x277D503C8]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D503A0], v1);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20C082CF0()
{
  v1[2] = v0;
  v2 = sub_20C13BB84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C082DB0, v0, 0);
}

uint64_t sub_20C082DB0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state);
  v0[6] = v1;
  os_unfair_lock_lock((v1 + 44));
  v2 = *(v1 + 16);
  if (v2)
  {
    if (v2 == 2)
    {
      sub_20C087B54();
      swift_allocError();
      swift_willThrow();
      os_unfair_lock_unlock((v1 + 44));
    }

    else
    {
      os_unfair_lock_unlock((v0[6] + 44));
    }

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];
    os_unfair_lock_unlock((v1 + 44));
    sub_20C13B564();
    sub_20C13BB64();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_20C082F7C;

    return sub_20C07FC48();
  }
}

uint64_t sub_20C082F7C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_20C0830C8, v6, 0);
  }
}

uint64_t sub_20C0830C8()
{
  v1 = *(v0 + 48);
  sub_20C07EEA8();
  os_unfair_lock_lock((v1 + 44));
  sub_20C087BA8(*(v1 + 16));
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 1;
  *(v1 + 40) = 0;
  os_unfair_lock_unlock((*(v0 + 48) + 44));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C083178()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_activityTypeBehavior;
  v2 = sub_20C137254();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient);
  sub_20B64B688(v0 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionOrigin);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20C083250()
{
  v0 = sub_20C13A814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772418);
  __swift_allocate_value_buffer(v4, qword_27C7723B0);
  __swift_project_value_buffer(v4, qword_27C7723B0);
  (*(v1 + 104))(v3, *MEMORY[0x277D4EFC0], v0);
  v6[15] = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772390);
  sub_20C087C4C(&qword_27C772420, sub_20C087BF8);
  sub_20C087C4C(&qword_27C772388, sub_20C07FB04);
  return sub_20C13A384();
}

uint64_t sub_20C083400(uint64_t result)
{
  if (*result >= 3uLL)
  {
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 2;
    sub_20C13CE34();
    sub_20C13CE34();
    sub_20C13CE34();
    sub_20C080674();
    sub_20C07F558();
  }

  return result;
}

uint64_t sub_20C0834EC(uint64_t a1, uint64_t a2, int a3)
{
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  if (*a1 >= 3uLL)
  {
    v17[1] = v3;
    sub_20C13CE34();
    sub_20C13CE34();
    sub_20C13CE34();
  }

  else
  {
    sub_20C087BA8(*a1);
  }

  v9 = sub_20C13CDF4();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  v12 = sub_20B6383D0(0, 0, v8, &unk_20C18C388, v11);
  v10(v8, 1, 1, v9);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;

  v14 = sub_20B6383D0(0, 0, v8, &unk_20C18C398, v13);
  v10(v8, 1, 1, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = v18;

  result = sub_20B6383D0(0, 0, v8, &unk_20C18C3A8, v15);
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = result;
  *(a1 + 24) = 771;
  return result;
}

uint64_t sub_20C0837B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20C083848();
}

uint64_t sub_20C083848()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772430);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772438);
  v1[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772458);
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C083A58, v0, 0);
}

uint64_t sub_20C083A88()
{
  v1 = v0[20];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  v0[21] = *(v1 + 56);
  (*(v7 + 104))(v5, *MEMORY[0x277D85778], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378);
  v9 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C083BF0, v9, v8);
}

uint64_t sub_20C083BF0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  sub_20C13B794();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20C083C94, v4, 0);
}

uint64_t sub_20C083C94()
{
  sub_20B6D6ABC(&qword_27C772440, &qword_27C772438);
  sub_20C13CE64();
  v1 = sub_20C087F10(&qword_27C772448, type metadata accessor for HeartRateDeviceDiscovery);
  v2 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state;
  v0[22] = v1;
  v0[23] = v2;
  v3 = v0[6];
  sub_20B6D6ABC(&qword_27C772460, &qword_27C772458);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_20C083E0C;

  return MEMORY[0x282200310](v0 + 25, v3, v1);
}

uint64_t sub_20C083E0C()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_20C083F1C, v4, 0);
  }

  return result;
}

uint64_t sub_20C083F1C()
{
  v1 = *(v0 + 200);
  if (v1 == 4)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(*(v0 + 48) + *(v0 + 184));
    os_unfair_lock_lock((v4 + 44));
    if (*(v4 + 16) >= 3uLL)
    {
      v6 = *(v0 + 56);
      v5 = *(v0 + 64);
      v7 = *(v0 + 48);
      v8 = *(v4 + 41);
      *(v4 + 40) = v1;
      if (v1 == 3)
      {
        v9 = v8;
      }

      else
      {
        v9 = v1;
      }

      v10 = sub_20C13CDF4();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v5, 1, 1, v10);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      sub_20B63983C(v5, v6);
      v13 = (*(v11 + 48))(v6, 1, v10);

      v14 = *(v0 + 56);
      if (v13 == 1)
      {
        sub_20B520158(*(v0 + 56), &unk_27C762220);
      }

      else
      {
        sub_20C13CDE4();
        (*(v11 + 8))(v14, v10);
      }

      v15 = *(v12 + 16);
      swift_unknownObjectRetain();

      if (v15)
      {
        swift_getObjectType();
        v16 = sub_20C13CD24();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      sub_20B520158(*(v0 + 64), &unk_27C762220);
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_20C18C408;
      *(v19 + 24) = v12;
      if (v18 | v16)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      swift_task_create();
    }

    os_unfair_lock_unlock((v4 + 44));
    v20 = *(v0 + 176);
    v21 = *(v0 + 48);
    sub_20B6D6ABC(&qword_27C772460, &qword_27C772458);
    v22 = swift_task_alloc();
    *(v0 + 192) = v22;
    *v22 = v0;
    v22[1] = sub_20C083E0C;

    return MEMORY[0x282200310](v0 + 200, v21, v20);
  }
}

uint64_t sub_20C0842F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20C084380();
}

uint64_t sub_20C084380()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772430);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772438);
  v1[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772458);
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C084590, v0, 0);
}

uint64_t sub_20C0845C0()
{
  v1 = v0[20];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  v0[21] = *(v1 + 160);
  (*(v7 + 104))(v5, *MEMORY[0x277D85778], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378);
  v9 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C084728, v9, v8);
}

uint64_t sub_20C084728()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  sub_20C13B794();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20C0847CC, v4, 0);
}

uint64_t sub_20C0847CC()
{
  sub_20B6D6ABC(&qword_27C772440, &qword_27C772438);
  sub_20C13CE64();
  v1 = sub_20C087F10(&qword_27C772448, type metadata accessor for HeartRateDeviceDiscovery);
  v2 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state;
  v0[22] = v1;
  v0[23] = v2;
  v3 = v0[6];
  sub_20B6D6ABC(&qword_27C772460, &qword_27C772458);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_20C084944;

  return MEMORY[0x282200310](v0 + 25, v3, v1);
}

uint64_t sub_20C084944()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_20C084A54, v4, 0);
  }

  return result;
}

uint64_t sub_20C084A54()
{
  v1 = *(v0 + 200);
  if (v1 == 4)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(*(v0 + 48) + *(v0 + 184));
    os_unfair_lock_lock((v4 + 44));
    if (*(v4 + 16) >= 3uLL)
    {
      v5 = *(v0 + 56);
      v6 = *(v0 + 64);
      v7 = *(v0 + 48);
      v8 = *(v4 + 40);
      if (v8 == 3)
      {
        v9 = v1;
      }

      else
      {
        v9 = v8;
      }

      *(v4 + 40) = v8 | (v1 << 8);
      v10 = sub_20C13CDF4();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v6, 1, 1, v10);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      sub_20B63983C(v6, v5);
      v13 = (*(v11 + 48))(v5, 1, v10);

      v14 = *(v0 + 56);
      if (v13 == 1)
      {
        sub_20B520158(*(v0 + 56), &unk_27C762220);
      }

      else
      {
        sub_20C13CDE4();
        (*(v11 + 8))(v14, v10);
      }

      v15 = *(v12 + 16);
      swift_unknownObjectRetain();

      if (v15)
      {
        swift_getObjectType();
        v16 = sub_20C13CD24();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      sub_20B520158(*(v0 + 64), &unk_27C762220);
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_20C18C3E8;
      *(v19 + 24) = v12;
      if (v18 | v16)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      swift_task_create();
    }

    os_unfair_lock_unlock((v4 + 44));
    v20 = *(v0 + 176);
    v21 = *(v0 + 48);
    sub_20B6D6ABC(&qword_27C772460, &qword_27C772458);
    v22 = swift_task_alloc();
    *(v0 + 192) = v22;
    *v22 = v0;
    v22[1] = sub_20C084944;

    return MEMORY[0x282200310](v0 + 200, v21, v20);
  }
}

uint64_t sub_20C084E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_20B52AC14;

  return sub_20C084ECC(a5);
}

uint64_t sub_20C084ECC(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 450) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  *(v2 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  *(v2 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  *(v2 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  *(v2 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  *(v2 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  *(v2 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  *(v2 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  *(v2 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  *(v2 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  *(v2 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  *(v2 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  *(v2 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  *(v2 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  *(v2 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  *(v2 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  *(v2 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  *(v2 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  *(v2 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  *(v2 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  *(v2 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  *(v2 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  *(v2 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  *(v2 + 296) = swift_task_alloc();
  v3 = sub_20C1368F4();
  *(v2 + 304) = v3;
  *(v2 + 312) = *(v3 - 8);
  *(v2 + 320) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772430);
  *(v2 + 328) = v4;
  *(v2 + 336) = *(v4 - 8);
  *(v2 + 344) = swift_task_alloc();
  v5 = sub_20C13BB84();
  *(v2 + 352) = v5;
  *(v2 + 360) = *(v5 - 8);
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C0855D8, v1, 0);
}

uint64_t sub_20C0855D8()
{
  v21 = v0;
  v1 = sub_20C133284();
  v2 = sub_20C1371D4();
  v0[48] = sub_20B7C771C(v2, v1);

  sub_20C13B514();

  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[47];
  v7 = v0[44];
  v8 = v0[45];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    sub_20C087F58();
    v11 = sub_20C13CF94();
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v3, v4, "Discovering heart rate device that supports: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v8 + 8))(v6, v7);
  v0[49] = v8 + 8;
  v15 = v0[42];
  v14 = v0[43];
  v16 = v0[41];
  v0[50] = *(v0[12] + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_heartRateDeviceStreamPublisher);
  (*(v15 + 104))(v14, *MEMORY[0x277D85778], v16);
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772438);
  v0[11] = sub_20B6D6ABC(&qword_27C772440, &qword_27C772438);
  v0[51] = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378);
  v18 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C085898, v18, v17);
}

uint64_t sub_20C085898()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[12];
  sub_20C13B794();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20C085938, v4, 0);
}

uint64_t sub_20C085938()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C13CE64();

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v5 = sub_20C087F10(&qword_27C772448, type metadata accessor for HeartRateDeviceDiscovery);
  v6 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient;
  v0[52] = v5;
  v0[53] = v6;
  v0[54] = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionOrigin;
  v7 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = swift_task_alloc();
  v0[55] = v8;
  *v8 = v0;
  v8[1] = sub_20C085B50;

  return MEMORY[0x282200310](v0 + 56, v7, v5);
}

uint64_t sub_20C085B50()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_20C085C60, v4, 0);
  }

  return result;
}

uint64_t sub_20C085C60()
{
  v80 = v0;
  v1 = *(v0 + 448);
  if (v1 == 4)
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);

    v2 = *(v0 + 8);

    return v2();
  }

  sub_20C13B514();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v9 = *(v0 + 352);
  if (v6)
  {
    v77 = *(v0 + 368);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v79 = v11;
    *v10 = 136315138;
    *(v0 + 449) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772390);
    v12 = sub_20C13D8F4();
    v14 = sub_20B51E694(v12, v13, &v79);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20B517000, v4, v5, "Heart rate device updated: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    (*(v7 + 8))(v77, v9);
    if (v1 != 3)
    {
      goto LABEL_10;
    }
  }

  else
  {

    (*(v7 + 8))(v8, v9);
    if (v1 != 3)
    {
LABEL_10:
      v15 = sub_20C133294();
      v17 = v16;
      if (v15 == sub_20C133294() && v17 == v18)
      {
      }

      else
      {
        v19 = sub_20C13DFF4();

        if ((v19 & 1) == 0)
        {
          v20 = *(v0 + 384);
          v21 = sub_20C133284();
          sub_20C087110(v21, v20);
        }
      }
    }
  }

  sub_20C13CE94();
  sub_20C1368C4();
  v66 = *(v0 + 312);
  v67 = *(v0 + 320);
  v22 = *(v0 + 296);
  v23 = *(v0 + 280);
  v24 = *(v0 + 288);
  v25 = *(v0 + 264);
  v26 = *(v0 + 272);
  v65 = *(v0 + 304);
  v28 = *(v0 + 248);
  v27 = *(v0 + 256);
  v76 = *(v0 + 240);
  v78 = *(v0 + 232);
  v68 = *(v0 + 208);
  v69 = *(v0 + 200);
  v70 = *(v0 + 192);
  v71 = *(v0 + 216);
  v72 = *(v0 + 184);
  v73 = *(v0 + 224);
  v74 = *(v0 + 176);
  v75 = *(v0 + 168);
  v64 = *(v0 + 160);
  v57 = *(v0 + 152);
  v58 = *(v0 + 144);
  v59 = *(v0 + 136);
  v60 = *(v0 + 128);
  v61 = *(v0 + 120);
  v62 = *(v0 + 112);
  v29 = (*(v0 + 96) + *(v0 + 424));
  v63 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_20C13A464();
  v30 = sub_20C133D84();
  (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
  v31 = sub_20C135854();
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  v32 = sub_20C136194();
  (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
  v33 = sub_20C133DD4();
  (*(*(v33 - 8) + 56))(v26, 1, 1, v33);
  v34 = sub_20C135274();
  (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
  v35 = sub_20C134514();
  (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
  v36 = sub_20C133B04();
  (*(*(v36 - 8) + 56))(v28, 1, 1, v36);
  v37 = sub_20C134C04();
  (*(*(v37 - 8) + 56))(v76, 1, 1, v37);
  (*(v66 + 16))(v78, v67, v65);
  (*(v66 + 56))(v78, 0, 1, v65);
  v38 = sub_20C134914();
  (*(*(v38 - 8) + 56))(v73, 1, 1, v38);
  v39 = sub_20C133374();
  (*(*(v39 - 8) + 56))(v71, 1, 1, v39);
  v40 = sub_20C135B74();
  (*(*(v40 - 8) + 56))(v68, 1, 1, v40);
  v41 = sub_20C134CD4();
  (*(*(v41 - 8) + 56))(v69, 1, 1, v41);
  v42 = sub_20C136EB4();
  (*(*(v42 - 8) + 56))(v70, 1, 1, v42);
  v43 = sub_20C133494();
  (*(*(v43 - 8) + 56))(v72, 1, 1, v43);
  v44 = sub_20C134594();
  (*(*(v44 - 8) + 56))(v74, 1, 1, v44);
  v45 = sub_20C138184();
  (*(*(v45 - 8) + 56))(v75, 1, 1, v45);
  v46 = sub_20C1363D4();
  (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
  v47 = sub_20C1337A4();
  (*(*(v47 - 8) + 56))(v57, 1, 1, v47);
  v48 = sub_20C1337D4();
  (*(*(v48 - 8) + 56))(v58, 1, 1, v48);
  v49 = sub_20C134A94();
  (*(*(v49 - 8) + 56))(v59, 1, 1, v49);
  v50 = sub_20C135364();
  (*(*(v50 - 8) + 56))(v60, 1, 1, v50);
  v51 = sub_20C136484();
  (*(*(v51 - 8) + 56))(v61, 1, 1, v51);
  v52 = sub_20C136784();
  (*(*(v52 - 8) + 56))(v62, 1, 1, v52);
  v53 = sub_20C137FE4();
  (*(*(v53 - 8) + 56))(v63, 1, 1, v53);
  sub_20C13A174();

  sub_20B520158(v63, &unk_27C768AC0);
  sub_20B520158(v62, &unk_27C765070);
  sub_20B520158(v61, &unk_27C765CB0);
  sub_20B520158(v60, &unk_27C765080);
  sub_20B520158(v59, &unk_27C768AD0);
  sub_20B520158(v58, &unk_27C765090);
  sub_20B520158(v57, &unk_27C768AE0);
  sub_20B520158(v64, &unk_27C7650A0);
  sub_20B520158(v75, &unk_27C768AF0);
  sub_20B520158(v74, &unk_27C7650B0);
  sub_20B520158(v72, &unk_27C768B00);
  sub_20B520158(v70, &unk_27C7650C0);
  sub_20B520158(v69, &unk_27C768B10);
  sub_20B520158(v68, &unk_27C7650D0);
  sub_20B520158(v71, &unk_27C768B20);
  sub_20B520158(v73, &unk_27C7650E0);
  sub_20B520158(v78, &unk_27C767260);
  sub_20B520158(v76, &unk_27C7650F0);
  sub_20B520158(v28, &qword_27C768B30);
  sub_20B520158(v27, &unk_27C765050);
  sub_20B520158(v25, &unk_27C765100);
  sub_20B520158(v26, &unk_27C7687F0);
  sub_20B520158(v23, &unk_27C765110);
  sub_20B520158(v24, &unk_27C76BBF0);
  sub_20B520158(v22, &unk_27C765120);
  (*(v66 + 8))(v67, v65);
  v54 = *(v0 + 416);
  v55 = *(v0 + 96);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v56 = swift_task_alloc();
  *(v0 + 440) = v56;
  *v56 = v0;
  v56[1] = sub_20C085B50;

  return MEMORY[0x282200310](v0 + 448, v55, v54);
}

uint64_t sub_20C086B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 33) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_20C086B54, 0, 0);
}

uint64_t sub_20C086B54()
{
  v1 = *(v0 + 33);
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_heartRateDeviceStreamPublisher);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378);
  v3 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C086C34, v3, v2);
}

uint64_t sub_20C086C34()
{
  sub_20C087C4C(&qword_27C772388, sub_20C07FB04);
  sub_20C13B7A4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C086CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 33) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_20C086CF4, 0, 0);
}

uint64_t sub_20C086CF4()
{
  v1 = *(v0 + 33);
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_heartRateDeviceStreamPublisher);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378);
  v3 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C0883EC, v3, v2);
}

uint64_t sub_20C086DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C088134();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA18](a1, a2, a3, a4, a5, v10, v11);
}

uint64_t sub_20C086E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C088134();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA20](a1, a2, a3, a4, a5, v10, v11);
}

uint64_t type metadata accessor for HeartRateDeviceDiscovery()
{
  result = qword_27C772400;
  if (!qword_27C772400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C086F20()
{
  result = sub_20C137254();
  if (v1 <= 0x3F)
  {
    result = sub_20C13A484();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI24HeartRateDeviceDiscoveryC5State33_66004802B124CD8BF46659BEFE817868LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20C087028(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 26))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C087084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_20C0870DC(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_20C087110(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a1 + 56;

  v10 = 0;
  v23 = v3;
  v22 = v7;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_10:
      if (!*(a1 + 16))
      {
        break;
      }

      sub_20C13E164();
      sub_20C134224();
      sub_20C13CA64();

      v12 = sub_20C13E1B4();
      v13 = -1 << *(a1 + 32);
      v14 = v12 & ~v13;
      if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      v15 = ~v13;
      while (1)
      {
        v16 = sub_20C134224();
        v18 = v17;
        if (v16 == sub_20C134224() && v18 == v19)
        {
          break;
        }

        v21 = sub_20C13DFF4();

        if (v21)
        {
          goto LABEL_21;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_21:
      v10 = v11;
      v3 = v23;
      v7 = v22;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_23:

    return 0;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return 1;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C08732C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a6;
  v46 = a5;
  v40 = a2;
  v41 = a3;
  v42 = a1;
  v12 = sub_20C13A484();
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C137254();
  v43 = *(v14 - 8);
  v15 = v43;
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[3] = a8;
  v56[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  v19 = [objc_allocWithZone(MEMORY[0x277CEF820]) init];
  v20 = type metadata accessor for BluetoothSourceObserver();
  v21 = [objc_allocWithZone(v20) init];
  v35 = *(v15 + 16);
  v36 = v17;
  v35(v17, a1, v14);
  sub_20B51CC64(v56, v55);
  v22 = [objc_opt_self() standardUserDefaults];
  sub_20B51CC64(v46, v54);
  sub_20B64B624(v44, v45);
  v53[3] = sub_20B51C88C(0, &qword_27C772470);
  v53[4] = &off_2822D79F8;
  v53[0] = v19;
  v52[3] = v20;
  v52[4] = &off_282307EB0;
  v52[0] = v21;
  v51[3] = sub_20B51C88C(0, &qword_27C772478);
  v51[4] = &off_2822FA948;
  v51[0] = v22;
  type metadata accessor for HeartRateDeviceDiscovery();
  v23 = swift_allocObject();
  v39 = v19;
  v38 = v21;
  v37 = v22;
  swift_defaultActor_initialize();
  v24 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772480);
  v25 = swift_allocObject();
  *(v25 + 44) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 16) = 0;
  *(v25 + 40) = 0;
  *(v23 + v24) = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_heartRateDeviceStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378);
  *(v23 + v26) = sub_20C13B7B4();
  v35((v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_activityTypeBehavior), v17, v14);
  sub_20B51CC64(v53, v50);
  type metadata accessor for AudioHeartRateDeviceDiscovery();
  v27 = swift_allocObject();
  *(v27 + 56) = sub_20C13B7B4();
  sub_20B51C710(v50, v27 + 16);
  *(v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_audioHeartRateDeviceDiscovery) = v27;
  sub_20B51CC64(v55, v50);
  sub_20B51CC64(v52, v49);
  sub_20B51CC64(v51, v48);
  type metadata accessor for BluetoothHeartRateDeviceDiscovery();
  v28 = swift_allocObject();
  v28[20] = sub_20C13B7B4();
  sub_20C13A924();
  swift_allocObject();
  v29 = v40;
  swift_unknownObjectRetain();
  v30 = v41;
  v31 = sub_20C13A914();
  v28[2] = v29;
  v28[3] = v30;
  sub_20B51CC64(v50, (v28 + 4));
  sub_20B51CC64(v49, (v28 + 9));
  v28[14] = v31;
  sub_20B51CC64(v48, (v28 + 15));
  swift_getObjectType();
  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_20C13A774();

  swift_unknownObjectRelease();

  sub_20B64B688(v44);
  __swift_destroy_boxed_opaque_existential_1(v46);
  v32 = *(v43 + 8);
  v32(v42, v14);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v55);
  v32(v36, v14);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  *(v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_bluetoothHeartRateDeviceDiscovery) = v28;
  sub_20B51C710(v54, v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient);
  sub_20B681E78(v45, v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionOrigin);
  return v23;
}

BOOL sub_20C0878B0(__int16 a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  if (a1 == 3)
  {
    if (a2 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (a2 == 3)
    {
      return 0;
    }

    v3 = HIBYTE(a1);
    v4 = sub_20C133294();
    v6 = v5;
    if (v4 == sub_20C133294() && v6 == v7)
    {

      HIBYTE(a1) = v3;
    }

    else
    {
      v8 = sub_20C13DFF4();

      HIBYTE(a1) = v3;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (HIBYTE(a1) == 3)
  {
    return v2 == 3;
  }

  if (v2 == 3)
  {
    return 0;
  }

  v10 = sub_20C133294();
  v12 = v11;
  if (v10 == sub_20C133294() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_20C13DFF4();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_20C087A20(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, unint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  switch(a1)
  {
    case 0:
      return !a5;
    case 1:
      return a5 == 1;
    case 2:
      return a5 == 2;
  }

  if (a5 < 3 || (sub_20C13CE14() & 1) == 0 || (sub_20C13CE14() & 1) == 0 || (sub_20C13CE14() & 1) == 0)
  {
    return 0;
  }

  return sub_20C0878B0(a4, a8);
}

unint64_t sub_20C087B54()
{
  result = qword_27C772410;
  if (!qword_27C772410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772410);
  }

  return result;
}

unint64_t sub_20C087BA8(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_20C087BF8()
{
  result = qword_27C772428;
  if (!qword_27C772428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772428);
  }

  return result;
}

uint64_t sub_20C087C4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C772390);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C087CE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20C0837B8();
}

uint64_t sub_20C087D98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20C0842F0();
}

uint64_t sub_20C087E4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20C084E30(a1, v4, v5, v6, v7);
}

uint64_t sub_20C087F10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C087F58()
{
  result = qword_27C772450;
  if (!qword_27C772450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772450);
  }

  return result;
}

uint64_t sub_20C087FAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20C086CD0(a1, v4, v5, v6, v7);
}

uint64_t sub_20C088070(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20C086B30(a1, v4, v5, v6, v7);
}

unint64_t sub_20C088134()
{
  result = qword_27C772468;
  if (!qword_27C772468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772468);
  }

  return result;
}

uint64_t sub_20C088188(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20C07E11C(a1, v1);
}

uint64_t getEnumTagSinglePayload for HeartRateDeviceDiscovery.HeartRateDeviceList(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for HeartRateDeviceDiscovery.HeartRateDeviceList(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C088398()
{
  result = qword_27C772488;
  if (!qword_27C772488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772488);
  }

  return result;
}

id sub_20C0883F0()
{
  result = [objc_opt_self() whiteColor];
  qword_27C772490 = result;
  return result;
}

_BYTE *sub_20C08842C(void *a1, char a2)
{
  if ([objc_opt_self() smu_canDecodeOnRenderThread])
  {
    v5 = [objc_opt_self() effectWithStyle_];
    v6 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    v8 = objc_opt_self();
    v6 = v7;
    v9 = [v8 grayColor];
    [v6 setBackgroundColor_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  *&v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView] = v6;
  v10 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_imageView;
  v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v12 = qword_27C760D08;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  [v13 setTintColor_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v2[v10] = v13;
  *&v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_image] = a1;
  v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize] = a2 & 1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for DeviceBadgeView();
  v14 = a1;
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_20C088980();
  if (v15[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize])
  {
    v16 = 46.0;
  }

  else
  {
    v16 = 23.0;
  }

  v17 = [objc_opt_self() configurationWithPointSize_];
  v18 = *&v15[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_imageView];
  v19 = [v14 imageWithConfiguration_];
  [v18 setImage_];

  return v15;
}

id sub_20C088740()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for DeviceBadgeView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize;
  if (v0[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize])
  {
    v2 = 6.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (v0[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize])
  {
    v3 = 46.0;
  }

  else
  {
    v3 = 20.0;
  }

  v4 = [v0 layer];
  [v4 setCornerRadius_];

  v5 = [v0 layer];
  [v5 setMasksToBounds_];

  if ([objc_opt_self() smu_canDecodeOnRenderThread])
  {
    v6 = [*&v0[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView] layer];
    [v6 setCornerRadius_];
  }

  else
  {
    [v0 smu:v3 setContinuousCornerRadius:?];
    [*&v0[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView] smu:v3 - (v2 + v2) setContinuousCornerRadius:?];
  }

  v7 = *&v0[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint];
  if (v7)
  {
    v8 = 40.0;
    if (v0[v1])
    {
      v8 = 92.0;
    }

    [v7 setConstant_];
  }

  result = *&v0[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint];
  if (result)
  {
    v10 = 40.0;
    if (v0[v1])
    {
      v10 = 92.0;
    }

    return [result setConstant_];
  }

  return result;
}

void sub_20C088980()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize;
  if (v0[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize])
  {
    v3 = 6.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [v0 layer];
  [v4 setBorderWidth_];

  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView];
  [v1 addSubview_];
  v6 = [v5 contentView];
  [v6 addSubview_];

  if (v1[v2])
  {
    v7 = 92.0;
  }

  else
  {
    v7 = 40.0;
  }

  v8 = [v1 widthAnchor];
  v9 = [v8 constraintEqualToConstant_];

  v41 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint;
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint] = v9;

  v11 = [v1 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  v13 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint;
  v14 = *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint] = v12;

  UIView.constraintsPinningCenterToCenterOfView(_:)(v1);
  v15 = [v5 leadingAnchor];
  v16 = [v1 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:v3];

  LODWORD(v18) = 1148846080;
  [v17 setPriority_];
  v19 = v17;
  v20 = [v5 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-v3];

  LODWORD(v23) = 1148846080;
  [v22 setPriority_];
  v24 = v22;
  v25 = [v5 topAnchor];
  v26 = [v1 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:v3];

  LODWORD(v28) = 1148846080;
  [v27 setPriority_];
  v29 = [v5 bottomAnchor];
  v30 = [v1 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-v3];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v19;
  *(inited + 40) = v24;
  *(inited + 48) = v27;
  *(inited + 56) = v31;

  sub_20B8D9310(inited);
  v34 = *&v1[v41];
  if (v34)
  {
    v35 = *&v1[v13];
    if (v35)
    {
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_20C151490;
      *(v36 + 32) = v34;
      *(v36 + 40) = v35;
      v37 = v34;
      v38 = v35;
      sub_20B8D9310(v36);
    }
  }

  v39 = objc_opt_self();
  sub_20B5E29D0();
  v40 = sub_20C13CC54();

  [v39 activateConstraints_];
}

id sub_20C088E40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceBadgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20C088F28()
{
  result = qword_27C7724C8;
  if (!qword_27C7724C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7724C8);
  }

  return result;
}

void sub_20C088F7C()
{
  if ([objc_opt_self() smu_canDecodeOnRenderThread])
  {
    v1 = [objc_opt_self() effectWithStyle_];
    v2 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    v4 = objc_opt_self();
    v2 = v3;
    v5 = [v4 grayColor];
    [v2 setBackgroundColor_];

    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  *(v0 + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView) = v2;
  v6 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_imageView;
  v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v8 = qword_27C760D08;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  [v9 setTintColor_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v6) = v9;
  *(v0 + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C08919C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (!*(a1 + 8))
    {
      if (*(a2 + 8))
      {
        return 0;
      }

      return v2 == v3;
    }

    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 2)
  {
    return v4 == 2 && v2 == v3;
  }

  if (v2)
  {
    if (v4 != 3 || v3 != 1)
    {
      return 0;
    }
  }

  else if (v4 != 3 || v3 != 0)
  {
    return 0;
  }

  return 1;
}

char *WorkoutPlanSurveyViewController.__allocating_init(dependencies:pageContext:pageNavigator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = sub_20C08BEC0(a1, a2, a3, v11, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v12;
}

id WorkoutPlanSurveyViewController.preferredContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_20C138104();
  result = sub_20C138104();
  if (v2 != result)
  {
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_preferredContentSize);
  }

  return result;
}

id WorkoutPlanSurveyViewController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*WorkoutPlanSurveyViewController.preferredContentSize.modify(uint64_t *a1))(double **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  ObjectType = swift_getObjectType();
  v5[4].super_class = ObjectType;
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v8 = 0x4087E00000000000;
    v9 = 0x4083800000000000;
  }

  else
  {
    v5[1].receiver = v2;
    v5[1].super_class = ObjectType;
    objc_msgSendSuper2(v5 + 1, sel_preferredContentSize);
  }

  v5->receiver = v9;
  v5->super_class = v8;
  return sub_20B7C3AA4;
}

uint64_t WorkoutPlanSurveyViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

char *WorkoutPlanSurveyViewController.init(dependencies:pageContext:pageNavigator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_20C08B7B8(a1, a2, a3, v14, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v19 - v5;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad, v4);
  sub_20C089AF8();
  sub_20B79395C(1);
  sub_20BAD61FC();
  v7 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v8 = *(v7 + 16);
  if (v8)
  {
    v19[1] = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider];

    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      v11 = swift_getObjectType();
      v12 = *(v10 + 48);
      swift_unknownObjectRetain();
      v12(v11, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_actionPresenter];
  sub_20B8A3F24();
  sub_20C13CDC4();
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_20C13CDA4();
  swift_unknownObjectRetain();
  v15 = sub_20C13CD94();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  sub_20B6383D0(0, 0, v6, &unk_20C1583C8, v16);

  sub_20B695708();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20B797A34(sub_20C08BFCC, v18);

  sub_20B797B24();
  [v1 setModalInPresentation_];
}

void sub_20C089AF8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_onCancelButtonTapped_];
  v2 = [v0 navigationItem];
  [v2 setLeftBarButtonItem_];

  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode_];

  v4 = [v0 navigationController];
  v5 = MEMORY[0x277D740C0];
  if (v4)
  {
    v6 = v4;
    v7 = [v4 navigationBar];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v9 = *v5;
    *(inited + 32) = *v5;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    *(inited + 64) = sub_20B98EC50();
    *(inited + 40) = v12;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    v5 = MEMORY[0x277D740C0];
    sub_20B520158(inited + 32, &qword_27C763978);
    type metadata accessor for Key(0);
    sub_20C08C510(&qword_27C761D80, 255, type metadata accessor for Key);
    v13 = sub_20C13C744();

    [v7 setTitleTextAttributes_];
  }

  v14 = [v0 navigationController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 navigationBar];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_20C14F980;
    v18 = *v5;
    *(v17 + 32) = *v5;
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 clearColor];
    *(v17 + 64) = sub_20B98EC50();
    *(v17 + 40) = v21;
    sub_20B6B1650(v17);
    swift_setDeallocating();
    sub_20B520158(v17 + 32, &qword_27C763978);
    type metadata accessor for Key(0);
    sub_20C08C510(&qword_27C761D80, 255, type metadata accessor for Key);
    v22 = sub_20C13C744();

    [v16 setLargeTitleTextAttributes_];

    v1 = v22;
  }
}

uint64_t sub_20C089EB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRetain();

    sub_20C13CDC4();
    v5 = sub_20C13CDF4();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    sub_20C13CDA4();

    v7 = sub_20C13CD94();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;

    sub_20B6383D0(0, 0, v2, &unk_20C1586F0, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1);
  type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
  sub_20C08C510(&qword_27C7724F8, 255, type metadata accessor for WorkoutPlanSurveyPageDataProvider);
  sub_20C138C54();
  sub_20C08C510(&qword_27C772500, v4, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C08C510(&qword_27C772508, v5, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C139364();
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1, v7);
  v15 = v2;
  sub_20C132E84();
  sub_20C08C510(&qword_27C772500, v10, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v11 = [v2 navigationController];
  if (v11)
  {
    v12 = v11;
    if ([v11 isBeingDismissed])
    {
      v15 = v2;
      sub_20C08C510(&qword_27C772510, v13, type metadata accessor for WorkoutPlanSurveyViewController);
      sub_20C138C74();
    }
  }
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1);
  sub_20C08C510(&qword_27C772500, v3, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C08C510(&qword_27C772508, v4, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C139374();
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewDidLayoutSubviews()()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] + 32);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);

  v8 = v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior + 16];
  if (v8 <= 0xFB)
  {
    v9 = *&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior];
    v10 = *&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_magicPocketView];
    [v10 bounds];
    Height = CGRectGetHeight(v18);
    [v10 safeAreaInsets];
    v13 = v12;

    if (v8 >> 6)
    {
      if (v8 >> 6 != 1)
      {
        return;
      }

      v14 = Height - v13;
      v15 = 0.0;
      v16 = 64;
    }

    else
    {
      v15 = Height - v13;
      v14 = v9;
      v16 = v8;
    }

    sub_20B9F24F8(*&v14, *&v15, v16, 0);
  }
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewSafeAreaInsetsDidChange()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewSafeAreaInsetsDidChange);
  v1 = v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior + 16];
  if (v1 <= 0xFB)
  {
    v2 = *&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior];
    v3 = *&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_magicPocketView];
    [v3 bounds];
    Height = CGRectGetHeight(v11);
    [v3 safeAreaInsets];
    v6 = v5;

    if (v1 >> 6)
    {
      if (v1 >> 6 != 1)
      {
        return;
      }

      v7 = Height - v6;
      v8 = 0.0;
      v9 = 64;
    }

    else
    {
      v8 = Height - v6;
      v7 = v2;
      v9 = v1;
    }

    sub_20B9F24F8(*&v7, *&v8, v9, 0);
  }
}

uint64_t sub_20C08A9B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637D8);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v44 - v5;
  v6 = sub_20C137054();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  MEMORY[0x28223BE20](v6);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1333A4();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_20C1352E4();
  v47 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20C134F24();
  v19 = *(v48 - 8);
  v20 = MEMORY[0x28223BE20](v48);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  (*(v19 + 104))(v22, *MEMORY[0x277D51488], v20);
  (*(v16 + 104))(v18, *MEMORY[0x277D51768], v15);
  v23 = *MEMORY[0x277D523D0];
  v24 = sub_20C135ED4();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v14, v23, v24);
  (*(v25 + 56))(v14, 0, 1, v24);
  v44 = v1;
  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider);
  v27 = v49;
  v28 = v50;
  (*(v49 + 16))(v11, v26 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage, v50);
  sub_20C08C510(&qword_27C772558, v29, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C138D94();
  (*(v27 + 8))(v11, v28);
  v30 = v51;
  sub_20B520158(v14, &unk_27C7621D0);
  (*(v16 + 8))(v18, v47);
  v31 = v52;
  (*(v19 + 8))(v22, v48);
  v32 = v54;
  sub_20B6919F0(v54);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    return sub_20B520158(v32, &qword_27C7637D8);
  }

  v34 = v45;
  (*(v31 + 32))(v45, v32, v30);
  v35 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_state;
  swift_beginAccess();
  v36 = v46;
  sub_20B6983F8(v26 + v35, v46);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
  if ((*(*(v37 - 8) + 48))(v36, 3, v37))
  {
    sub_20B69845C(v36);
    v38 = MEMORY[0x277D84FA0];
  }

  else
  {
    v38 = *v36;
    v39 = *(v37 + 48);
    v40 = sub_20C1367D4();
    (*(*(v40 - 8) + 8))(&v36[v39], v40);
  }

  v41 = v44;
  v42 = *(v44 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_pageNavigator + 24);
  v43 = *(v44 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_pageNavigator + 32);
  __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_pageNavigator), v42);
  (*(v43 + 136))(v41, v34, v38, v42, v43);

  return (*(v31 + 8))(v34, v30);
}

id WorkoutPlanSurveyViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WorkoutPlanSurveyViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C08B29C(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_20C13CDF4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  sub_20B79AD30(a2, a3);
  v10 = sub_20C13CD94();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a2;
  v11[6] = a3;

  sub_20B6380FC(0, 0, v7, &unk_20C18C9F0, v11);
}

uint64_t sub_20C08B450(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20C08B4B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider) + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20C08B564@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider);
  v4 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20C08B638(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20C08B720(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = sub_20C08C510(&qword_27C772500, v5, type metadata accessor for WorkoutPlanSurveyViewController);

  return a3(ObjectType, v6, a2);
}

char *sub_20C08B7B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v41 = sub_20C1333A4();
  v14 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = a6;
  v46[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  v18 = &a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = -4;
  a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_isTransitioningContentInset] = 0;
  a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_visibility] = 1;
  *&a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_resignActiveObserver] = 0;
  *&a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dependencies] = a1;
  sub_20B51CC64(v46, &a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_pageNavigator]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_eventHub] = v47[0];
  sub_20C133AA4();
  v19 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_platform;
  a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_platform] = v47[0];
  v20 = &a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_contentInsetInitialBehavior];
  *v20 = 0;
  v20[8] = 2;
  type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
  swift_allocObject();

  v22 = sub_20B697898(v21, a2, a3);

  v23 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider;
  *&a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] = v22;
  type metadata accessor for WorkoutPlanCreationStringProvider();
  v24 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();

  *(v24 + 64) = *&v47[0];
  *(v24 + 16) = 2;
  v25 = *&a5[v23];
  type metadata accessor for PageActionPresenter(0);
  v26 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v26 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState) = xmmword_20C1583B0;
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask) = 0;
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isFetchingMarketingOffer) = 0;
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isSubscribed) = 0;
  v27 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_marketingOffer;
  v28 = sub_20C138894();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  type metadata accessor for PageActionPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  sub_20C133AA4();
  *(v26 + 128) = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650);
  sub_20C133AA4();
  sub_20B51C710(v47, v26 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v47, v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionCache);
  v29 = v41;
  (*(v14 + 16))(v16, v25 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage, v41);

  (*(v14 + 32))(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_metricPage, v16, v29);
  v30 = (v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_stringProvider);
  *v30 = v24;
  v30[1] = &off_2822D4B00;
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_supportedBehaviors) = 2;
  *(v26 + 184) = 3;
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_offerHint) = xmmword_20C186E40;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v26 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionToken) = sub_20C13A914();

  v31 = sub_20C08C510(&unk_27C771080, 255, type metadata accessor for PageActionPresenter);
  v32 = &a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_actionPresenter];
  *v32 = v26;
  v32[1] = v31;
  memset(v47, 0, sizeof(v47));
  v48 = 5;
  LOBYTE(v29) = a5[v19];
  v33 = objc_allocWithZone(type metadata accessor for PageActionMagicPocketView());
  v34 = sub_20BA99324(1, v47, v29);
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_magicPocketView] = v34;
  sub_20C133AA4();
  LOBYTE(v19) = v45;
  v35 = type metadata accessor for PageScrollObserver();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v36[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_behaviors] = 1;
  v36[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_platform] = v19;
  v44.receiver = v36;
  v44.super_class = v35;
  v37 = objc_msgSendSuper2(&v44, sel_init);
  v38 = &a5[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_scrollObserver];
  *v38 = v37;
  v38[1] = &off_2822A5318;
  v43.receiver = a5;
  v43.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v43, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(v46);
  *(*&v39[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_actionPresenter] + 120) = &off_2823049D0;
  swift_unknownObjectWeakAssign();
  *(*&v39[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] + 24) = &off_2823049B0;
  swift_unknownObjectWeakAssign();
  *(*&v39[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_scrollObserver] + OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8) = &off_282304D30;
  swift_unknownObjectWeakAssign();
  return v39;
}

char *sub_20C08BEC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v16);
  (*(v13 + 16))(v15, a4, a6);
  return sub_20C08B7B8(a1, a2, a3, v15, v17, a6, a7);
}

id sub_20C08C030()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_20C1333A4();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_20C1352E4();
  v25 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C134F24();
  v12 = *(v26 - 8);
  v13 = MEMORY[0x28223BE20](v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1;
  (*(v12 + 104))(v15, *MEMORY[0x277D51468], v13);
  (*(v9 + 104))(v11, *MEMORY[0x277D51768], v8);
  v16 = *MEMORY[0x277D523D0];
  v17 = sub_20C135ED4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v7, v16, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = v1;
  v20 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider];
  v21 = v27;
  v22 = v28;
  (*(v27 + 16))(v4, v20 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage, v28);
  sub_20C08C510(&qword_27C772558, v23, type metadata accessor for WorkoutPlanSurveyViewController);
  sub_20C138D94();
  (*(v21 + 8))(v4, v22);
  sub_20B520158(v7, &unk_27C7621D0);
  (*(v9 + 8))(v11, v25);
  (*(v12 + 8))(v15, v26);
  return [v19 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_20C08C448(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52AC14;

  return sub_20B8A7DDC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20C08C510(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_20C08C560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = a1 + 32;
  v2 = a1 + 32 + 56 * (v1 - 1);
  v18 = *(v2 + 48);
  v3 = *(v2 + 32);
  v16 = *(v2 + 16);
  v17 = v3;
  v15 = *v2;
  v4 = v18;
  v5 = v3;
  v6 = v16;
  v7 = *(&v15 + 1);
  v8 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = v8;
  *(inited + 40) = v7;
  *(inited + 48) = v6;
  *(inited + 64) = v5;
  *(inited + 80) = v4;
  *(inited + 81) = 0;
  sub_20B79AACC(&v15, &v14);
  v10 = *(&v6 + 1);

  v14 = sub_20BC07C34(0, v1, 0, MEMORY[0x277D84F90]);
  v11 = swift_unknownObjectRetain();
  sub_20B8DAC1C(v11, v13, 0, (2 * (v1 - 1)) | 1);
  sub_20B8DAB24(inited);
  sub_20B79AB28(&v15);
  return v14;
}

uint64_t sub_20C08C6BC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_20C132964();
  v11 = v10;

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_4;
  }

  if (a2 != a1)
  {
    if (qword_27C760830 != -1)
    {
      swift_once();
    }

    v18 = qword_27C768308;
    [qword_27C768308 setRoundingMode_];
    [v18 setMaximumFractionDigits_];
    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v20 = [v18 stringFromNumber_];

    if (!v20)
    {
      goto LABEL_24;
    }

    v35 = sub_20C13C954();
    v22 = v21;

    [v18 setRoundingMode_];
    [v18 setMaximumFractionDigits_];
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v24 = [v18 stringFromNumber_];

    if (!v24)
    {
      goto LABEL_23;
    }

    v25 = sub_20C13C954();
    v27 = v26;

    if (swift_unknownObjectWeakLoadStrong() && (v28 = *(v4 + 24), ObjectType = swift_getObjectType(), LOBYTE(v28) = (*(v28 + 8))(ObjectType, v28), swift_unknownObjectRelease(), (v28 & 1) == 0))
    {
      v36 = v25;
      v37 = v27;
      MEMORY[0x20F2F4230](9666786, 0xA300000000000000);
      MEMORY[0x20F2F4230](v35, v22);
    }

    else
    {
      v36 = v35;
      v37 = v22;
      MEMORY[0x20F2F4230](9666786, 0xA300000000000000);
      MEMORY[0x20F2F4230](v25, v27);
    }

    v15 = v36;
    v17 = v37;
LABEL_17:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v4 + 24);
      v31 = swift_getObjectType();
      (*(v30 + 16))(v15, v17, v9, v11, v31, v30);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v4 + 40);
      v33 = swift_getObjectType();
      (*(v32 + 16))(v15, v17, v9, v11, v33, v32);

      return swift_unknownObjectRelease();
    }

LABEL_23:

    goto LABEL_24;
  }

  v3 = a2;
  if (qword_27C760830 != -1)
  {
    goto LABEL_28;
  }

LABEL_4:
  v12 = qword_27C768308;
  [qword_27C768308 setRoundingMode_];
  [v12 setMaximumFractionDigits_];
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v14 = [v12 stringFromNumber_];

  if (v14)
  {
    v15 = sub_20C13C954();
    v17 = v16;

    goto LABEL_17;
  }

LABEL_24:
}

uint64_t sub_20C08CB90()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_catalogClient);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanEquipmentPickerShelf()
{
  result = qword_27C772570;
  if (!qword_27C772570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C08CCF8()
{
  result = sub_20C132EE4();
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

void sub_20C08CDD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_activationState) = 1;
    sub_20C13CDC4();
    v4 = sub_20C13CDF4();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v0;

    sub_20B614F94(0, 0, v3, &unk_20C18CB28, v5);
  }
}

uint64_t sub_20C08CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D000);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C08CFC8, 0, 0);
}

uint64_t sub_20C08CFC8()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_catalogClient), *(v0[4] + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_catalogClient + 24));
  sub_20C13A004();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanEquipmentPickerShelf.swift";
  *(v2 + 24) = 47;
  *(v2 + 32) = 2;
  *(v2 + 40) = 41;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D008);
  v0[10] = v4;
  *v3 = v0;
  v3[1] = sub_20C08D120;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20C08D910, v2, v4);
}

uint64_t sub_20C08D120()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {

    v3 = sub_20B5F7F90;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];
    v2[12] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20C08D280;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C08D280()
{
  v0[3] = v0[12];
  swift_getKeyPath();
  sub_20C08D920();
  v1 = sub_20C13CBF4();

  sub_20B5FB280(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20C08D368@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C08D3E0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
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

uint64_t sub_20C08D4C0(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_20C132964();
  v11 = v10;

  v34 = 0uLL;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 0;
  *&v36 = 0;
  WORD4(v36) = 128;
  v37 = 0uLL;
  v38 = xmmword_20C179AD0;
  *&v39 = v9;
  *(&v39 + 1) = v11;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = a1;
  v41 = MEMORY[0x277D84F90];
  *&v42 = 0;
  *(&v42 + 1) = v9;
  *v43 = v11;
  *&v43[8] = xmmword_20C150190;
  nullsub_1(&v34);
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 144);
  v44[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 128);
  v44[9] = v13;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 80);
  v44[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 64);
  v44[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 112);
  v44[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 96);
  v44[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 16);
  v44[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row);
  v44[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 48);
  v44[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanEquipmentPickerShelf_row + 32);
  v44[3] = v17;
  v18 = *v43;
  *(v12 + 128) = v42;
  *(v12 + 144) = v18;
  *(v12 + 160) = *&v43[16];
  v19 = v39;
  *(v12 + 64) = v38;
  *(v12 + 80) = v19;
  v20 = v41;
  *(v12 + 96) = v40;
  *(v12 + 112) = v20;
  v21 = v35;
  *v12 = v34;
  *(v12 + 16) = v21;
  v22 = v37;
  *(v12 + 32) = v36;
  *(v12 + 48) = v22;

  sub_20B634408(v44);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v25 = sub_20B61E058(v1, result);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v31 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v32 = sub_20C13C584();
        result = (*(v4 + 8))(v6, v3);
        if ((v32 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B621970(v28, v29, v30, v31, 0, v24);
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

uint64_t sub_20C08D85C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20C08CEFC(a1, v4, v5, v6);
}

unint64_t sub_20C08D920()
{
  result = qword_27C772580;
  if (!qword_27C772580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76D008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772580);
  }

  return result;
}

void sub_20C08D984()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_ringsView;
  v3 = sub_20C1380F4();
  sub_20C0134C0(v3, v83);
  v4 = v84;
  v5 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v6 = (*(v5 + 72))(v4, v5);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_destroy_boxed_opaque_existential_1(v83);
  *&v1[v2] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_headerLabelStack;
  v8 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v7] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = objc_opt_self();
  v11 = [v10 energyColors];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v11 nonGradientTextColor];

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_moveLabel;
  [v9 setTextColor_];

  LODWORD(v15) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v16];

  [v9 setAdjustsFontForContentSizeCategory_];
  *&v1[v14] = v9;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v10 briskColors];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_exerciseLabel;
  [v17 setTextColor_];

  LODWORD(v22) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v23];

  [v17 setAdjustsFontForContentSizeCategory_];
  *&v1[v21] = v17;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v10 sedentaryColors];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 nonGradientTextColor];

  if (v27)
  {
    v28 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_standLabel;
    [v24 setTextColor_];

    LODWORD(v29) = 1148846080;
    [v24 setContentCompressionResistancePriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [v24 setContentCompressionResistancePriority:1 forAxis:v30];

    [v24 setAdjustsFontForContentSizeCategory_];
    *&v1[v28] = v24;
    v31 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_valueLabelStackView;
    v32 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
    [v32 setTranslatesAutoresizingMaskIntoConstraints_];
    [v32 setAxis_];
    [v32 setDistribution_];
    [v32 setSpacing_];
    *&v1[v31] = v32;
    v82.receiver = v1;
    v82.super_class = type metadata accessor for TVSummaryActivityRingsView();
    v33 = objc_msgSendSuper2(&v82, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v33 setUserInteractionEnabled_];
    v34 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_headerLabelStack;
    [v33 addSubview_];
    v35 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_valueLabelStackView;
    [*&v33[OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_valueLabelStackView] addArrangedSubview_];
    [*&v33[v35] addArrangedSubview_];
    [*&v33[v35] addArrangedSubview_];
    [v33 addSubview_];
    v36 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_ringsView;
    v37 = [*&v33[OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_ringsView] ringGroup];
    LODWORD(v38) = 1124204544;
    [v37 setGroupDiameter_];

    v39 = [*&v33[v36] ringGroup];
    v40 = [v33 traitCollection];
    v41 = [v40 preferredContentSizeCategory];

    v42 = sub_20B6DB2C0();
    v43 = v42 * 11.0;
    *&v43 = v42 * 11.0;
    [v39 setThickness_];

    [v33 addSubview_];
    v81 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_20C152A00;
    v45 = [*&v33[v34] leadingAnchor];
    v46 = [v33 leadingAnchor];
    v47 = [v45 constraintEqualToAnchor_];

    *(v44 + 32) = v47;
    v48 = [*&v33[v34] trailingAnchor];
    v49 = [v33 trailingAnchor];
    v50 = [v48 &selRef:v49 alertControllerReleasedDictationButton:? + 5];

    *(v44 + 40) = v50;
    v51 = [*&v33[v34] topAnchor];
    v52 = [v33 topAnchor];
    v53 = [v51 &selRef:v52 alertControllerReleasedDictationButton:? + 5];

    *(v44 + 48) = v53;
    v54 = [*&v33[v35] leadingAnchor];
    v55 = [*&v33[v36] trailingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:30.0];

    *(v44 + 56) = v56;
    v57 = [*&v33[v35] topAnchor];
    v58 = [*&v33[v34] bottomAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:12.0];

    *(v44 + 64) = v59;
    v60 = [*&v33[v35] bottomAnchor];
    v61 = [v33 bottomAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:5.0];

    *(v44 + 72) = v62;
    v63 = [*&v33[v35] trailingAnchor];
    v64 = [v33 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v44 + 80) = v65;
    v66 = [*&v33[v36] widthAnchor];
    v67 = [v66 constraintEqualToConstant_];

    *(v44 + 88) = v67;
    v68 = [*&v33[v36] heightAnchor];
    v69 = [v68 constraintEqualToConstant_];

    *(v44 + 96) = v69;
    v70 = [*&v33[v36] leadingAnchor];
    v71 = [v33 leadingAnchor];
    v72 = [v70 constraintEqualToAnchor_];

    *(v44 + 104) = v72;
    v73 = [*&v33[v36] topAnchor];
    v74 = [*&v33[v34] bottomAnchor];
    v75 = [v73 constraintEqualToAnchor:v74 constant:12.0];

    *(v44 + 112) = v75;
    v76 = [*&v33[v36] bottomAnchor];
    v77 = [v33 bottomAnchor];
    v78 = [v76 constraintEqualToAnchor_];

    *(v44 + 120) = v78;
    sub_20B5E29D0();
    v79 = sub_20C13CC54();

    [v81 activateConstraints_];

    v80 = sub_20C13C914();
    [v33 setAccessibilityIdentifier_];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_20C08E454(uint64_t a1, int a2)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_20C133984();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134B64();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_headerLabelStack];
  v12 = type metadata accessor for SummaryActivityRingsMetricViewModel();
  [*(v11 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
  [*&v3[OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_moveLabel] setAttributedText_];
  v13 = *&v3[OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_exerciseLabel];
  [v13 setAttributedText_];
  v14 = *&v3[OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_standLabel];
  [v14 setAttributedText_];
  v15 = sub_20C133D24();
  v17 = v16;
  v51 = v15;
  v52 = v16;
  v19 = v18 & 1;
  v53 = v18 & 1;
  v49 = xmmword_20C152300;
  v50 = 1;
  sub_20B815F98();
  sub_20B815FEC();
  v20 = sub_20C133BF4();
  sub_20B583F4C(v15, v17, v19);
  if (v20)
  {
    v21 = [*&v3[OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_ringsView] ringGroup];
    [v21 setIsStandalonePhoneFitnessMode_];

    [v13 setHidden_];
    [v14 setHidden_];
  }

  v22 = [*&v3[OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_ringsView] ringGroup];
  sub_20C133D34();
  sub_20C134B44();
  (*(v44 + 8))(v10, v45);
  sub_20C133974();
  v24 = v23;
  sub_20C133964();
  v26 = v25;
  v27 = v47;
  v28 = *(v46 + 8);
  v28(v7, v47);
  v29 = v26;
  *&v26 = v24 / v29;
  sub_20C133D64();
  sub_20C133974();
  v31 = v30;
  sub_20C133964();
  v33 = v32;
  v28(v7, v27);
  v34 = v33;
  *&v33 = v31 / v34;
  sub_20C133D44();
  sub_20C133974();
  v36 = v35;
  sub_20C133964();
  v38 = v37;
  v39 = v28(v7, v27);
  v39.n128_f32[0] = v38;
  *&v40 = v36 / v39.n128_f32[0];
  v39.n128_u32[0] = LODWORD(v26);
  LODWORD(v41) = LODWORD(v33);
  [v22 setActiveEnergyPercentage:v48 & 1 exerciseMinutesPercentage:0 standHoursPercentage:v39.n128_f64[0] animated:v41 completion:v40];

  [v3 invalidateIntrinsicContentSize];
  [v3 setNeedsLayout];
  return [v3 layoutIfNeeded];
}

id sub_20C08E8B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSummaryActivityRingsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C08E994()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_ringsView;
  v3 = sub_20C1380F4();
  sub_20C0134C0(v3, v33);
  v4 = v34;
  v5 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v6 = (*(v5 + 72))(v4, v5);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_destroy_boxed_opaque_existential_1(v33);
  *(v1 + v2) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_headerLabelStack;
  v8 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v7) = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = objc_opt_self();
  v11 = [v10 energyColors];
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  v13 = [v11 nonGradientTextColor];

  if (!v13)
  {
    __break(1u);
  }

  v14 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_moveLabel;
  [v9 setTextColor_];

  LODWORD(v15) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v16];

  [v9 setAdjustsFontForContentSizeCategory_];
  *(v1 + v14) = v9;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v10 briskColors];
  if (!v18)
  {
    __break(1u);
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (!v20)
  {
    __break(1u);
  }

  v21 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_exerciseLabel;
  [v17 setTextColor_];

  LODWORD(v22) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v23];

  [v17 setAdjustsFontForContentSizeCategory_];
  *(v1 + v21) = v17;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v10 sedentaryColors];
  if (!v25)
  {
    __break(1u);
  }

  v26 = v25;
  v27 = [v25 nonGradientTextColor];

  if (!v27)
  {
    __break(1u);
  }

  v28 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_standLabel;
  [v24 setTextColor_];

  LODWORD(v29) = 1148846080;
  [v24 setContentCompressionResistancePriority:0 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v30];

  [v24 setAdjustsFontForContentSizeCategory_];
  *(v1 + v28) = v24;
  v31 = OBJC_IVAR____TtC9SeymourUI26TVSummaryActivityRingsView_valueLabelStackView;
  v32 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 setAxis_];
  [v32 setDistribution_];
  [v32 setSpacing_];
  *(v1 + v31) = v32;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C08EDFC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v338 = a3;
  v337 = a2;
  v359 = a4;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764410);
  v327 = *(v329 - 1);
  v5 = *(v327 + 8);
  MEMORY[0x28223BE20](v329);
  v322 = &v316 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v325 = &v316 - v7;
  v8 = type metadata accessor for NavigationRequest();
  v321 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v323 = v9;
  v324 = &v316 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771990);
  v330 = *(v331 - 1);
  v10 = v330[8];
  MEMORY[0x28223BE20](v331);
  v326 = &v316 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v328 = (&v316 - v12);
  v13 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v13 - 8);
  v318 = &v316 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v319 = &v316 - v16;
  MEMORY[0x28223BE20](v17);
  v320 = &v316 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v19 - 8);
  v317 = &v316 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v21 - 8);
  v332 = (&v316 - v22);
  v355 = sub_20C134EC4();
  v357 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v336 = &v316 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v340 = &v316 - v25;
  MEMORY[0x28223BE20](v26);
  v353 = &v316 - v27;
  v354 = sub_20C135914();
  v356 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v335 = &v316 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v347 = &v316 - v30;
  MEMORY[0x28223BE20](v31);
  v351 = &v316 - v32;
  v352 = sub_20C135524();
  v343 = *(v352 - 8);
  MEMORY[0x28223BE20](v352);
  v334 = &v316 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v333 = &v316 - v35;
  MEMORY[0x28223BE20](v36);
  v345 = &v316 - v37;
  MEMORY[0x28223BE20](v38);
  v346 = &v316 - v39;
  MEMORY[0x28223BE20](v40);
  v348 = &v316 - v41;
  MEMORY[0x28223BE20](v42);
  v349 = &v316 - v43;
  v350 = sub_20C133E24();
  v342 = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v339 = &v316 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v344 = &v316 - v46;
  MEMORY[0x28223BE20](v47);
  v341 = &v316 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v316 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v316 - v54;
  v56 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v56);
  v58 = &v316 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C093004(a1, v58, type metadata accessor for NavigationResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v192 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0) + 48);
      v193 = sub_20C1388F4();
      (*(*(v193 - 8) + 8))(&v58[v192], v193);
      v160 = sub_20C132C14();
      goto LABEL_16;
    case 2u:
    case 3u:
    case 5u:
      sub_20C09306C(v58, type metadata accessor for NavigationResource);
      sub_20B5D9BA8();
      v59 = swift_allocError();
      *v60 = 13;
      *(swift_allocObject() + 16) = v59;
      sub_20B62BB28();
      return sub_20C137CA4();
    case 4u:
      v158 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0) + 48);
      v159 = sub_20C1388F4();
      (*(*(v159 - 8) + 8))(&v58[v158], v159);
      v160 = sub_20C1387E4();
      goto LABEL_16;
    case 6u:
      v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FD0) + 48);
      v162 = sub_20C1388F4();
      (*(*(v162 - 8) + 8))(&v58[v161], v162);
      v160 = sub_20C138894();
LABEL_16:
      (*(*(v160 - 8) + 8))(v58, v160);
      sub_20BD28F0C(*v358, v337, v338, v55);
      v194 = swift_allocObject();
      *(v194 + 16) = sub_20BFD8A44;
      *(v194 + 24) = 0;
      (*(v50 + 16))(v52, v55, v49);
      v195 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v196 = (v51 + v195 + 7) & 0xFFFFFFFFFFFFFFF8;
      v197 = swift_allocObject();
      (*(v50 + 32))(v197 + v195, v52, v49);
      v198 = (v197 + v196);
      *v198 = sub_20BFDA4D0;
      v198[1] = v194;
      sub_20B62BB28();
      sub_20C137C94();
      return (*(v50 + 8))(v55, v49);
    case 7u:
      v83 = *(v58 + 1);
      v328 = *v58;
      v84 = v328;
      v85 = *v358;
      sub_20B51CC64((v358 + 1), &v370);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30);
      v86 = sub_20C135C84();
      v87 = *(v86 - 8);
      v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_20C14F980;
      v90 = v89 + v88;
      *v90 = xmmword_20C15AF00;
      *(v90 + 16) = 1;
      swift_storeEnumTagMultiPayload();
      sub_20C092AE0(v89);
      swift_setDeallocating();
      sub_20C09306C(v90, MEMORY[0x277D52060]);
      swift_deallocClassInstance();
      v91 = v341;
      sub_20C133DE4();
      sub_20C1354C4();
      sub_20C1354C4();
      sub_20C135884();
      v331 = type metadata accessor for TVCatalogModalityDetailViewController();
      v330 = objc_allocWithZone(v331);
      v92 = v332;
      *v332 = v84;
      *(v92 + 1) = v83;
      v93 = v83;
      swift_storeEnumTagMultiPayload();
      (*(v87 + 56))(v92, 0, 1, v86);

      sub_20C13CA04();
      v94 = v353;
      sub_20C134E94();
      v95 = v357 + 16;
      v337 = *(v357 + 2);
      v96 = v340;
      v337(v340, v94, v355);
      v325 = v95;
      v97 = *(v342 + 16);
      v98 = v344;
      v99 = v350;
      v97(v344, v91, v350);
      v329 = v97;
      type metadata accessor for TVModalityDetailFilterResultPageDataProvider();
      swift_allocObject();

      v338 = v85;
      v358 = sub_20B66D5A4(v100, v328, v93, v96, 0, 0, v98);

      sub_20B51CC64(&v370, v367);
      v97(v98, v91, v99);
      v101 = *(v343 + 16);
      v102 = v352;
      v101(v346, v349, v352);
      v103 = v101;
      v327 = v101;
      v104 = v355;
      v337(v96, v353, v355);
      v103(v345, v348, v102);
      v328 = *(v356 + 16);
      (v328)(v347, v351, v354);
      v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C40);
      v105 = objc_allocWithZone(v332);
      *&v105[qword_27C79C038 + 8] = 0;
      swift_unknownObjectWeakInit();
      v106 = v358;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
      sub_20C133AA4();
      *&v105[qword_27C76D2D0] = v364;
      v326 = v105;
      v107 = v104;
      v108 = v337;
      v337(&v105[qword_27C79C000], v96, v104);
      *&v105[qword_27C79C018] = v106;
      v329(v339, v344, v350);
      v109 = v333;
      v110 = v352;
      v111 = v327;
      v327(v333, v346, v352);
      v112 = v336;
      v108(v336, v96, v107);
      v113 = v334;
      v111(v334, v345, v110);
      v114 = v335;
      v115 = v354;
      (v328)(v335, v347, v354);
      type metadata accessor for TVFilterOptionsListDataProvider();
      swift_allocObject();
      v116 = v338;

      v117 = v358;

      v118 = sub_20BDF8288(v116, v339, v109, v112, v113, v114, 0, 0);

      v119 = v326;
      *&v326[qword_27C79C020] = v118;
      sub_20B51CC64(v367, &v364);
      v120 = objc_allocWithZone(type metadata accessor for TVFilterOptionsListViewController());
      v121 = v365;
      v122 = v366;
      v123 = __swift_mutable_project_boxed_opaque_existential_1(&v364, v365);
      v124 = MEMORY[0x28223BE20](v123);
      v126 = &v316 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v127 + 16))(v126, v124);

      v128 = sub_20B61354C(v116, v118, v126, v120, v121, v122);

      __swift_destroy_boxed_opaque_existential_1(&v364);
      sub_20B51CC64(v367, &v364);
      v129 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765FE8));
      v130 = v365;
      v131 = v366;
      v132 = __swift_mutable_project_boxed_opaque_existential_1(&v364, v365);
      v133 = MEMORY[0x28223BE20](v132);
      v135 = &v316 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v136 + 16))(v135, v133);

      v137 = sub_20B7FC5E4(v116, v117, v135, v129, v130, v131);

      __swift_destroy_boxed_opaque_existential_1(&v364);
      v138 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      *&v119[qword_27C79C008] = v138;
      *&v119[qword_27C79C010] = v137;
      *&v119[qword_27C79C030] = v138;
      v139 = &v119[qword_27C79C028];
      *v139 = 0;
      *(v139 + 1) = 0;
      v361.receiver = v119;
      v361.super_class = v332;
      v140 = v138;
      v141 = v137;
      v142 = objc_msgSendSuper2(&v361, sel_init);
      [v140 setDelegate_];

      v143 = *(v356 + 8);
      v356 += 8;
      v339 = v143;
      (v143)(v347, v115);
      v144 = *(v343 + 8);
      v145 = v352;
      v144(v345, v352);
      v146 = *(v357 + 1);
      v357 = (v357 + 8);
      v147 = v355;
      v146(v340, v355);
      v144(v346, v145);
      v347 = *(v342 + 8);
      v148 = v350;
      (v347)(v344, v350);
      __swift_destroy_boxed_opaque_existential_1(v367);
      *&v141[qword_27C79A4C0 + 8] = &off_2822DCE00;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();

      v149 = v330;
      *(v330 + OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator) = v142;
      v360.receiver = v149;
      v360.super_class = v331;
      v150 = objc_msgSendSuper2(&v360, sel_initWithStyle_, 1);
      v151 = *&v150[OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator];
      v152 = objc_opt_self();
      v153 = v150;
      v154 = v151;
      v155 = [v152 mainScreen];
      [v155 bounds];
      v157 = v156;

      [v153 setPreferredPrimaryColumnWidthFraction_];
      [v153 setPrimaryBackgroundStyle_];
      [v153 setViewController:*&v154[qword_27C79C008] forColumn:0];

      v146(v353, v147);
      (v339)(v351, v354);
      v144(v348, v145);
      v144(v349, v145);
      (v347)(v341, v148);
      __swift_destroy_boxed_opaque_existential_1(&v370);

      *(swift_allocObject() + 16) = v153;
      sub_20B62BB28();
      return sub_20C137CA4();
    case 8u:
      v166 = *v58;
      v167 = *(v58 + 1);
      v168 = *v358;
      sub_20B51CC64((v358 + 1), &v370);
      type metadata accessor for TVCatalogProgramPageDataProvider();
      swift_allocObject();
      swift_retain_n();
      v169 = sub_20BB82944(v166, v167, v168, 7);
      sub_20B51CC64(&v370, v367);
      v170 = objc_allocWithZone(type metadata accessor for TVCatalogProgramDetailViewController());
      v171 = v368;
      v172 = v369;
      v173 = __swift_mutable_project_boxed_opaque_existential_1(v367, v368);
      v174 = MEMORY[0x28223BE20](v173);
      v176 = &v316 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v177 + 16))(v176, v174);
      v178 = sub_20B666A30(v168, v169, v176, v170, v171, v172);

      __swift_destroy_boxed_opaque_existential_1(&v370);
      __swift_destroy_boxed_opaque_existential_1(v367);
      *(swift_allocObject() + 16) = v178;
      sub_20B62BB28();
      return sub_20C137CA4();
    case 9u:
      v66 = v358;
      v67 = v325;
      sub_20BD24DFC(*v358, v325);
      sub_20BF1E4DC(v66, &v370);
      v68 = swift_allocObject();
      v69 = v371;
      v68[1] = v370;
      v68[2] = v69;
      v68[3] = v372;
      v70 = swift_allocObject();
      *(v70 + 16) = sub_20C0928E0;
      *(v70 + 24) = v68;
      v71 = v327;
      v72 = v322;
      v73 = v329;
      (*(v327 + 2))(v322, v67, v329);
      v74 = (*(v71 + 80) + 16) & ~*(v71 + 80);
      v75 = swift_allocObject();
      (*(v71 + 4))(v75 + v74, v72, v73);
      v76 = (v75 + ((v5 + v74 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v76 = sub_20C0928FC;
      v76[1] = v70;
      sub_20B62BB28();
      sub_20C137C94();
      (*(v71 + 1))(v67, v73);
      v77 = sub_20C132C14();
      return (*(*(v77 - 8) + 8))(v58, v77);
    case 0xAu:
      v163 = objc_allocWithZone(type metadata accessor for TVRootViewController());

      v165 = TVRootViewController.init(dependencies:)(v164);
      *(swift_allocObject() + 16) = v165;
      sub_20B62BB28();
      return sub_20C137CA4();
    case 0xBu:
      sub_20C09306C(v58, type metadata accessor for NavigationResource);
      sub_20B5D9BA8();
      v63 = swift_allocError();
      *v64 = 16;
      *(swift_allocObject() + 16) = v63;
      sub_20B62BB28();
      return sub_20C137CA4();
    case 0xCu:
    case 0xEu:
      sub_20C09306C(v58, type metadata accessor for NavigationResource);
      goto LABEL_26;
    case 0xDu:
      v226 = *(v58 + 1);
      v328 = *v58;
      v227 = v328;
      v228 = *v358;
      sub_20B51CC64((v358 + 1), &v370);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30);
      v229 = sub_20C135C84();
      v230 = *(v229 - 8);
      v231 = (*(v230 + 80) + 32) & ~*(v230 + 80);
      v232 = swift_allocObject();
      *(v232 + 16) = xmmword_20C14F980;
      v233 = v232 + v231;
      *v233 = xmmword_20C15AF00;
      *(v233 + 16) = 1;
      swift_storeEnumTagMultiPayload();
      sub_20C092AE0(v232);
      swift_setDeallocating();
      sub_20C09306C(v233, MEMORY[0x277D52060]);
      swift_deallocClassInstance();
      v234 = v341;
      sub_20C133DE4();
      sub_20C1354C4();
      sub_20C1354C4();
      sub_20C135884();
      v331 = type metadata accessor for TVTrainerDetailViewController();
      v330 = objc_allocWithZone(v331);
      v235 = v332;
      *v332 = v227;
      *(v235 + 1) = v226;
      v236 = v226;
      swift_storeEnumTagMultiPayload();
      (*(v230 + 56))(v235, 0, 1, v229);

      sub_20C13CA04();
      v237 = v353;
      sub_20C134E94();
      v238 = v357 + 16;
      v337 = *(v357 + 2);
      v239 = v340;
      v337(v340, v237, v355);
      v325 = v238;
      v240 = *(v342 + 16);
      v241 = v344;
      v242 = v350;
      v240(v344, v234, v350);
      v329 = v240;
      type metadata accessor for TVTrainerDetailFilterResultPageDataProvider();
      swift_allocObject();

      v338 = v228;
      v358 = sub_20BEBE070(v243, v328, v236, v239, 0, 0, v241);

      sub_20B51CC64(&v370, v367);
      v240(v241, v234, v242);
      v244 = *(v343 + 16);
      v245 = v352;
      v244(v346, v349, v352);
      v246 = v244;
      v327 = v244;
      v247 = v355;
      v337(v239, v353, v355);
      v246(v345, v348, v245);
      v328 = *(v356 + 16);
      (v328)(v347, v351, v354);
      v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C38);
      v248 = objc_allocWithZone(v332);
      *&v248[qword_27C79C038 + 8] = 0;
      swift_unknownObjectWeakInit();
      v249 = v358;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
      sub_20C133AA4();
      *&v248[qword_27C76D2D0] = v364;
      v326 = v248;
      v250 = v247;
      v251 = v337;
      v337(&v248[qword_27C79C000], v239, v247);
      *&v248[qword_27C79C018] = v249;
      v329(v339, v344, v350);
      v252 = v333;
      v253 = v352;
      v254 = v327;
      v327(v333, v346, v352);
      v255 = v336;
      v251(v336, v239, v250);
      v256 = v334;
      v254(v334, v345, v253);
      v257 = v335;
      v258 = v354;
      (v328)(v335, v347, v354);
      type metadata accessor for TVFilterOptionsListDataProvider();
      swift_allocObject();
      v259 = v338;

      v260 = v358;

      v261 = sub_20BDF8288(v259, v339, v252, v255, v256, v257, 0, 0);

      v262 = v326;
      *&v326[qword_27C79C020] = v261;
      sub_20B51CC64(v367, &v364);
      v263 = objc_allocWithZone(type metadata accessor for TVFilterOptionsListViewController());
      v264 = v365;
      v265 = v366;
      v266 = __swift_mutable_project_boxed_opaque_existential_1(&v364, v365);
      v267 = MEMORY[0x28223BE20](v266);
      v269 = &v316 - ((v268 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v270 + 16))(v269, v267);

      v271 = sub_20B61354C(v259, v261, v269, v263, v264, v265);

      __swift_destroy_boxed_opaque_existential_1(&v364);
      sub_20B51CC64(v367, &v364);
      v272 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765FE0));
      v273 = v365;
      v274 = v366;
      v275 = __swift_mutable_project_boxed_opaque_existential_1(&v364, v365);
      v276 = MEMORY[0x28223BE20](v275);
      v278 = &v316 - ((v277 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v279 + 16))(v278, v276);

      v280 = sub_20B7FC628(v259, v260, v278, v272, v273, v274);

      __swift_destroy_boxed_opaque_existential_1(&v364);
      v281 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      *&v262[qword_27C79C008] = v281;
      *&v262[qword_27C79C010] = v280;
      *&v262[qword_27C79C030] = v281;
      v282 = &v262[qword_27C79C028];
      *v282 = 0;
      *(v282 + 1) = 0;
      v363.receiver = v262;
      v363.super_class = v332;
      v283 = v281;
      v284 = v280;
      v285 = objc_msgSendSuper2(&v363, sel_init);
      [v283 setDelegate_];

      v286 = *(v356 + 8);
      v356 += 8;
      v339 = v286;
      (v286)(v347, v258);
      v287 = *(v343 + 8);
      v288 = v352;
      v287(v345, v352);
      v289 = *(v357 + 1);
      v357 = (v357 + 8);
      v290 = v355;
      v289(v340, v355);
      v287(v346, v288);
      v347 = *(v342 + 8);
      v291 = v350;
      (v347)(v344, v350);
      __swift_destroy_boxed_opaque_existential_1(v367);
      *&v284[qword_27C79A4C0 + 8] = &off_2822DCE00;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();

      v292 = v330;
      *(v330 + OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator) = v285;
      v362.receiver = v292;
      v362.super_class = v331;
      v293 = objc_msgSendSuper2(&v362, sel_initWithStyle_, 1);
      v294 = *&v293[OBJC_IVAR____TtC9SeymourUI29TVTrainerDetailViewController_coordinator];
      v295 = objc_opt_self();
      v296 = v293;
      v297 = v294;
      v298 = [v295 mainScreen];
      [v298 bounds];
      v300 = v299;

      [v296 setPreferredPrimaryColumnWidthFraction_];
      [v296 setPrimaryBackgroundStyle_];
      [v296 setViewController:*&v297[qword_27C79C008] forColumn:0];

      v289(v353, v290);
      (v339)(v351, v354);
      v287(v348, v288);
      v287(v349, v288);
      (v347)(v341, v291);
      __swift_destroy_boxed_opaque_existential_1(&v370);

      *(swift_allocObject() + 16) = v296;
      sub_20B62BB28();
      return sub_20C137CA4();
    case 0xFu:
      sub_20B5D9BA8();
      v79 = swift_allocError();
      *v80 = 16;
      *(swift_allocObject() + 16) = v79;
      sub_20B62BB28();
      sub_20C137CA4();
      v81 = type metadata accessor for NavigationResource;
      v82 = v58;
      return sub_20C09306C(v82, v81);
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v199 = v320;
        sub_20C092E5C(v58, v320, type metadata accessor for WorkoutSessionConfiguration);
        v200 = *v358;
        v201 = v319;
        sub_20C093004(v199, v319, type metadata accessor for WorkoutSessionConfiguration);
        v202 = v318;
        sub_20C093004(v201, v318, type metadata accessor for WorkoutSessionConfiguration);
        v203 = swift_retain_n();
        v204 = sub_20B9C04B4(v203, v202);
        v205 = objc_allocWithZone(type metadata accessor for SessionViewController());
        v206 = sub_20BFE1644(v200, v204, 0, 0, 0, 0);
        sub_20C09306C(v201, type metadata accessor for WorkoutSessionConfiguration);
        *(swift_allocObject() + 16) = v206;
        sub_20B62BB28();
        sub_20C137CA4();
        v82 = v199;
        v81 = type metadata accessor for WorkoutSessionConfiguration;
        return sub_20C09306C(v82, v81);
      }

      else
      {
        v301 = *v58;
        v302 = *(v58 + 1);
        v303 = *v358;
        sub_20B51CC64((v358 + 1), &v370);
        v304 = sub_20C134014();
        v305 = v317;
        (*(*(v304 - 8) + 56))(v317, 1, 1, v304);
        type metadata accessor for TVCatalogWorkoutDetailPageDataProvider();
        swift_allocObject();
        swift_retain_n();
        v306 = sub_20B809418(v301, v302, v303, 12, v305, 0, 1);
        sub_20B51CC64(&v370, v367);
        v307 = objc_allocWithZone(type metadata accessor for TVCatalogWorkoutDetailViewController());
        v308 = v368;
        v309 = v369;
        v310 = __swift_mutable_project_boxed_opaque_existential_1(v367, v368);
        v311 = MEMORY[0x28223BE20](v310);
        v313 = &v316 - ((v312 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v314 + 16))(v313, v311);
        v315 = sub_20B5966A4(v303, v306, v313, v307, v308, v309);
        __swift_destroy_boxed_opaque_existential_1(&v370);
        __swift_destroy_boxed_opaque_existential_1(v367);
        *(swift_allocObject() + 16) = v315;
        sub_20B62BB28();
        return sub_20C137CA4();
      }

    case 0x11u:
    case 0x12u:
LABEL_26:
      result = sub_20C13DE24();
      __break(1u);
      return result;
    case 0x13u:
      v65 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
      *(swift_allocObject() + 16) = v65;
      sub_20B62BB28();
      return sub_20C137CA4();
    case 0x14u:
      v357 = type metadata accessor for NavigationRequest;
      v316 = a1;
      v207 = a1;
      v208 = v324;
      sub_20C093004(v207, v324, type metadata accessor for NavigationRequest);
      v209 = v358;
      sub_20BF1E4DC(v358, &v370);
      v210 = *(v321 + 80);
      v211 = (v210 + 16) & ~v210;
      v212 = (v323 + v211 + 7) & 0xFFFFFFFFFFFFFFF8;
      v213 = swift_allocObject();
      sub_20C092E5C(v208, v213 + v211, type metadata accessor for NavigationRequest);
      v214 = (v213 + v212);
      v215 = v371;
      *v214 = v370;
      v214[1] = v215;
      v214[2] = v372;
      v216 = swift_allocObject();
      *(v216 + 16) = "SeymourUI/TVNavigationViewControllerFactory.swift";
      *(v216 + 24) = 49;
      *(v216 + 32) = 2;
      *(v216 + 40) = 90;
      *(v216 + 48) = &unk_20C18CC58;
      *(v216 + 56) = v213;
      sub_20C1353F4();
      v217 = v328;
      sub_20C137C94();
      sub_20BF1E4DC(v209, &v370);
      sub_20C093004(v316, v208, v357);
      v218 = swift_allocObject();
      v219 = v371;
      *(v218 + 1) = v370;
      *(v218 + 2) = v219;
      *(v218 + 3) = v372;
      sub_20C092E5C(v208, v218 + ((v210 + 64) & ~v210), type metadata accessor for NavigationRequest);
      v220 = v330;
      v221 = v326;
      v222 = v331;
      (v330[2])(v326, v217, v331);
      v223 = (*(v220 + 80) + 16) & ~*(v220 + 80);
      v224 = swift_allocObject();
      (v220[4])(v224 + v223, v221, v222);
      v225 = (v224 + ((v10 + v223 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v225 = sub_20C092A34;
      v225[1] = v218;
      sub_20B62BB28();
      sub_20C137C94();
      return (v220[1])(v217, v222);
    case 0x15u:
    case 0x16u:
    case 0x17u:
      sub_20B5D9BA8();
      v61 = swift_allocError();
      *v62 = 13;
      *(swift_allocObject() + 16) = v61;
      sub_20B62BB28();
      return sub_20C137CA4();
    default:
      v179 = *v58;
      v180 = *(v58 + 1);
      v181 = *v358;
      sub_20B51CC64((v358 + 1), &v370);
      type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider();
      swift_allocObject();

      v182 = sub_20BC4E62C(v179, v180, v181, 0, 0);
      sub_20B51CC64(&v370, v367);
      v183 = objc_allocWithZone(type metadata accessor for TVCatalogEditorialCollectionDetailViewController());
      v184 = v368;
      v185 = v369;
      v186 = __swift_mutable_project_boxed_opaque_existential_1(v367, v368);
      v187 = MEMORY[0x28223BE20](v186);
      v189 = &v316 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v190 + 16))(v189, v187);
      v191 = sub_20B97B024(v181, v182, v189, v183, v184, v185);

      __swift_destroy_boxed_opaque_existential_1(&v370);
      __swift_destroy_boxed_opaque_existential_1(v367);
      *(swift_allocObject() + 16) = v191;
      sub_20B62BB28();
      return sub_20C137CA4();
  }
}

uint64_t sub_20C091FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v7 = type metadata accessor for NavigationRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_20C1353F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_20BF1E4DC(a2, v20);
  (*(v11 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  sub_20C093004(a3, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v13 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v14 = (v12 + *(v8 + 80) + v13) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = v20[1];
  *(v15 + 1) = v20[0];
  *(v15 + 2) = v16;
  *(v15 + 3) = v20[2];
  (*(v11 + 32))(&v15[v13], v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_20C092E5C(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v15[v14], type metadata accessor for NavigationRequest);
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourUI/TVNavigationViewControllerFactory.swift";
  *(v17 + 24) = 49;
  *(v17 + 32) = 2;
  *(v17 + 40) = 97;
  *(v17 + 48) = &unk_20C18CC70;
  *(v17 + 56) = v15;
  sub_20B62BB28();
  return sub_20C137C94();
}

uint64_t sub_20C09224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20C092270, 0, 0);
}

uint64_t sub_20C092270()
{
  *(v0 + 64) = *(type metadata accessor for NavigationRequest() + 20);
  sub_20C13CDA4();
  *(v0 + 48) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C092314, v2, v1);
}

uint64_t sub_20C092314()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);

  *(v0 + 56) = sub_20C0923C0(v3, v2 + v1);

  return MEMORY[0x2822009F8](sub_20C09239C, 0, 0);
}

char *sub_20C0923C0(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = type metadata accessor for NavigationIntent();
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1353F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 16))(v9, a1, v6);
  v14 = objc_allocWithZone(type metadata accessor for WorkoutPlanCompletionViewController());

  v16 = sub_20C1058BC(v15, v9, 0, 0, 0, 0);

  sub_20C093004(v24, v5, type metadata accessor for NavigationIntent);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20C09306C(v5, type metadata accessor for NavigationIntent);
  }

  else
  {
    v17 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:1];
    [v17 setContentViewController_];
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    v20 = sub_20C13C914();

    v21 = [objc_opt_self() actionWithTitle:v20 style:0 handler:0];

    [v17 addAction_];
    return v17;
  }

  return v16;
}

uint64_t sub_20C092788@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>)
{
  v6 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  v12 = *a2;
  sub_20C093004(a1, v18 - v10, type metadata accessor for WorkoutSessionConfiguration);
  sub_20C093004(v11, v8, type metadata accessor for WorkoutSessionConfiguration);
  v13 = swift_retain_n();
  v14 = sub_20B9C04B4(v13, v8);
  v15 = objc_allocWithZone(type metadata accessor for SessionViewController());
  v16 = sub_20BFE1644(v12, v14, 0, 0, 0, 0);
  result = sub_20C09306C(v11, type metadata accessor for WorkoutSessionConfiguration);
  *a3 = v16;
  return result;
}

uint64_t sub_20C09292C(uint64_t a1)
{
  v4 = *(type metadata accessor for NavigationRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BFE0118(a1, v1 + v5, v1 + v6);
}

uint64_t sub_20C092A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_20C091FC8(a1, v2 + 16, v6, a2);
}

uint64_t sub_20C092AE0(uint64_t a1)
{
  v2 = sub_20C135C84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642E0);
    v10 = sub_20C13DC44();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v3 + 80);
    v29 = v9;
    v30 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v3 + 72);
    v15 = v9;
    while (1)
    {
      sub_20C093004(v30 + v14 * v11, v8, MEMORY[0x277D52060]);
      sub_20C13E164();
      sub_20C135C74();
      v16 = sub_20C13E1B4();
      v17 = -1 << *(v10 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v12 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        do
        {
          sub_20C093004(*(v10 + 48) + v18 * v14, v5, MEMORY[0x277D52060]);
          v23 = MEMORY[0x20F2ED3D0](v5, v8);
          sub_20C09306C(v5, MEMORY[0x277D52060]);
          if (v23)
          {
            sub_20C09306C(v8, MEMORY[0x277D52060]);
            v15 = v29;
            goto LABEL_4;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v12 + 8 * (v18 >> 6));
          v21 = 1 << v18;
        }

        while (((1 << v18) & v20) != 0);
        v15 = v29;
      }

      *(v12 + 8 * v19) = v21 | v20;
      result = sub_20C092E5C(v8, *(v10 + 48) + v18 * v14, MEMORY[0x277D52060]);
      v25 = *(v10 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v10 + 16) = v27;
LABEL_4:
      if (++v11 == v15)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}