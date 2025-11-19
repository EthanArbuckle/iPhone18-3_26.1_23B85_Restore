uint64_t sub_20B61B9F8()
{

  sub_20B619338(v0 + 16);
  sub_20B621D00(v0 + 352);

  return MEMORY[0x2822009F8](sub_20B61BA74, 0, 0);
}

uint64_t sub_20B61BA74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B61BB08(uint64_t a1)
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
  *(v14 + 16) = sub_20B622D00;
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
  v20(sub_20B5DF6DC, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20B61BDE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_20B614F94(0, 0, v4, &unk_20C151338, v6);
}

uint64_t sub_20B61BEEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - v4;
  v5 = type metadata accessor for ShelfMetricAction();
  v48 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_20C133954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v17, v12, &unk_27C76A970);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_20B520158(v12, &unk_27C76A970);
  }

  (*(v14 + 32))(v16, v12, v13);
  v19 = sub_20C136664();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = v5[5];
  v21 = *MEMORY[0x277D51488];
  v22 = sub_20C134F24();
  (*(*(v22 - 8) + 104))(&v9[v20], v21, v22);
  v23 = v5[6];
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(&v9[v23], 1, 1, v24);
  v25 = v5[8];
  v26 = *MEMORY[0x277D523B0];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v9[v25], v26, v27);
  (*(v28 + 56))(&v9[v25], 0, 1, v27);
  v29 = v5[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v9[v29], v30, v31);
  v32 = v5[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v9[v32], 1, 1, v33);
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  *&v9[v5[7]] = xmmword_20C151110;
  v35 = &v9[v5[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v9[v5[12]] = v34;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = v50;
    sub_20B622C38(v9, v50, type metadata accessor for ShelfMetricAction);
    v39 = v48;
    (*(v48 + 56))(v38, 0, 1, v5);
    v40 = v49;
    sub_20B52F9E8(v38, v49, &unk_27C7622D0);
    if ((*(v39 + 48))(v40, 1, v5) == 1)
    {
      sub_20B520158(v40, &unk_27C7622D0);
    }

    else
    {
      v41 = v40;
      v42 = v47;
      sub_20B622774(v41, v47, type metadata accessor for ShelfMetricAction);
      sub_20BF9FD0C(v0, v42, v37);
      sub_20B622CA0(v42, type metadata accessor for ShelfMetricAction);
    }

    v43 = v37 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      (*(v44 + 48))(v37, v16, ObjectType, v44);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_20B520158(v38, &unk_27C7622D0);
  }

  sub_20B622CA0(v9, type metadata accessor for ShelfMetricAction);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_20B61C570@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B61C5E8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_row + 32);
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

uint64_t sub_20B61C6A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_20C13CDF4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_20B6383D0(0, 0, v3, &unk_20C151340, v5);
}

BOOL sub_20B61C800(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_20C13DFF4() & 1;
    }
  }

  return result;
}

uint64_t sub_20B61C874(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20C13DFF4() & 1;
  }
}

id sub_20B61C91C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t (*a5)(__int128 *))
{
  v41 = a5;
  v51 = a1;
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  result = [*(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource];
  if (!result)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v17 = sub_20C13BE74();
  result = (*(v13 + 8))(v15, v12);
  v50 = v17;
  v49 = *(v17 + 16);
  if (!v49)
  {
LABEL_16:

    return 0;
  }

  v18 = 0;
  v44 = 0;
  v48 = *a3;
  v19 = v51 + *a4;
  v47 = v50 + 32;
  v46 = (v9 + 16);
  v45 = (v9 + 8);
  while (v18 < *(v50 + 16))
  {
    v20 = (v47 + 24 * v18);
    v21 = v20[1];
    v43 = *v20;
    v22 = v20[2];
    v52 = v18 + 1;
    (*v46)(v11, v51 + v48, v8);
    v23 = *(v21 + 16);

    v24 = v22;

    v25 = 0;
    do
    {
      if (v23 == v25)
      {
        (*v45)(v11, v8);
        goto LABEL_6;
      }

      v26 = v25 + 1;
      sub_20B6225C4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
      v27 = sub_20C13C894();
      v25 = v26;
    }

    while ((v27 & 1) == 0);
    (*v45)(v11, v8);
    v28 = *(v19 + 128);
    v29 = *(v19 + 144);
    v30 = *(v19 + 96);
    v54[7] = *(v19 + 112);
    v55 = v28;
    v56 = v29;
    v57 = *(v19 + 160);
    v31 = *(v19 + 80);
    v54[4] = *(v19 + 64);
    v54[5] = v31;
    v54[6] = v30;
    v32 = *(v19 + 16);
    v54[0] = *v19;
    v33 = *(v19 + 32);
    v54[3] = *(v19 + 48);
    v54[1] = v32;
    v54[2] = v33;
    v34 = sub_20B5EAF8C(v54);
    if (v34 == 1)
    {
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v35 = *(&v55 + 1);
      v36 = v56;
    }

    v42 = &v40;
    v53[0] = v35;
    v53[1] = v36;
    MEMORY[0x28223BE20](v34);
    *(&v40 - 2) = v53;
    v37 = v24;
    v38 = v44;
    v39 = sub_20B796758(v41, (&v40 - 4), v37);
    v44 = v38;

    if (v39)
    {

      return v43;
    }

LABEL_6:

    v18 = v52;
    if (v52 == v49)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

id sub_20B61D398(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v3 = sub_20C132EE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = v35 - v10;
  result = [*(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource];
  if (!result)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v13 = sub_20C13BE74();
  result = (*(v8 + 8))(v11, v7);
  v43 = v13;
  v42 = *(v13 + 16);
  if (!v42)
  {
LABEL_16:

    return 0;
  }

  v14 = 0;
  v37 = 0;
  v41 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_identifier;
  v40 = v43 + 32;
  v39 = (v4 + 16);
  v38 = (v4 + 8);
  while (v14 < *(v43 + 16))
  {
    v15 = (v40 + 24 * v14);
    v16 = v15[1];
    v36 = *v15;
    v17 = v15[2];
    ++v14;
    (*v39)(v6, v44 + v41, v3);
    v18 = *(v16 + 16);

    v19 = v17;

    v20 = 0;
    do
    {
      if (v18 == v20)
      {
        (*v38)(v6, v3);
        goto LABEL_6;
      }

      v21 = v20 + 1;
      sub_20B6225C4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
      v22 = sub_20C13C894();
      v20 = v21;
    }

    while ((v22 & 1) == 0);
    (*v38)(v6, v3);
    v23 = *(v44 + 144);
    v24 = *(v44 + 160);
    v25 = *(v44 + 112);
    v46[7] = *(v44 + 128);
    v47 = v23;
    v48 = v24;
    v49 = *(v44 + 176);
    v26 = *(v44 + 96);
    v46[4] = *(v44 + 80);
    v46[5] = v26;
    v46[6] = v25;
    v27 = *(v44 + 32);
    v46[0] = *(v44 + 16);
    v28 = *(v44 + 48);
    v46[3] = *(v44 + 64);
    v46[1] = v27;
    v46[2] = v28;
    v29 = sub_20B5EAF8C(v46);
    if (v29 == 1)
    {
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v30 = *(&v47 + 1);
      v31 = v48;
    }

    v35[1] = v35;
    v45[0] = v30;
    v45[1] = v31;
    MEMORY[0x28223BE20](v29);
    v35[-2] = v45;
    v32 = v19;
    v33 = v37;
    v34 = sub_20B796758(sub_20B5EB0CC, &v35[-4], v32);
    v37 = v33;

    if (v34)
    {

      return v36;
    }

LABEL_6:

    if (v14 == v42)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

id sub_20B61E130(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, void *a7, void *a8)
{
  v76 = a4;
  v77 = a8;
  v75 = a7;
  v85 = a2;
  v87 = a1;
  v11 = sub_20C13BB84();
  v83 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v81 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A90);
  MEMORY[0x28223BE20](v13 - 8);
  v80 = &v71 - v14;
  v15 = sub_20C132EE4();
  v78 = *(v15 - 8);
  v79 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A98);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v86 = &v71 - v18;
  v19 = sub_20C13C554();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v22 = sub_20C13D374();
  (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
  v23 = sub_20C13C584();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    result = [*&a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
      if (swift_dynamicCastClass())
      {
        *&v116 = v87;
        *(&v116 + 1) = v85;
        *&v117 = a3;
        sub_20C13BF94();
        swift_unknownObjectRelease();
        sub_20C0C4560();
        v73 = a5;
        v74 = a3;
        if (v26 && (v27 = v25, ObjectType = swift_getObjectType(), (*(v27 + 40))(v103, ObjectType, v27), swift_unknownObjectRelease(), v113 = v103[8], v114 = v103[9], v115 = v104, v109 = v103[4], v110 = v103[5], v111 = v103[6], v112 = v103[7], v105 = v103[0], v106 = v103[1], v107 = v103[2], v108 = v103[3], sub_20B5EAF8C(&v105) != 1))
        {
          v29 = *(&v106 + 1);
          v30 = v107;
          v31 = BYTE8(v107);
          sub_20B520158(v103, &qword_27C762340);
        }

        else
        {
          v29 = 0;
          v30 = 0;
          v31 = 128;
        }

        v32 = &a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = *(v32 + 1);
          v34 = swift_getObjectType();
          (*(v33 + 312))(a6, v29, v30, v31, v34, v33);
          swift_unknownObjectRelease();
        }

        sub_20C0C33E4();
        v35 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
        swift_beginAccess();
        v89 = *&a6[v35];
        v36 = v76;
        v38 = v78;
        v37 = v79;
        (*(v78 + 16))(v17, v76 + *v75, v79);
        v39 = (v36 + *v77);
        v40 = v39[7];
        v41 = v39[9];
        v98 = v39[8];
        v99 = v41;
        v42 = v39[3];
        v43 = v39[5];
        v94 = v39[4];
        v95 = v43;
        v44 = v39[5];
        v45 = v39[7];
        v96 = v39[6];
        v97 = v45;
        v46 = v39[1];
        v90 = *v39;
        v91 = v46;
        v47 = v39[3];
        v49 = *v39;
        v48 = v39[1];
        v92 = v39[2];
        v93 = v47;
        v50 = v39[9];
        v101[8] = v98;
        v101[9] = v50;
        v101[4] = v94;
        v101[5] = v44;
        v101[6] = v96;
        v101[7] = v40;
        v101[0] = v49;
        v101[1] = v48;
        v100 = *(v39 + 20);
        v102 = *(v39 + 20);
        v101[2] = v92;
        v101[3] = v42;
        v51 = sub_20B5EAF8C(v101);
        v72 = v11;
        if (v51 == 1)
        {

          sub_20BE38168(v17, &v116);
          sub_20B520158(&v116, &qword_27C762340);
          (*(v38 + 8))(v17, v37);
        }

        else
        {
          v124 = v98;
          v125 = v99;
          v126 = v100;
          v120 = v94;
          v121 = v95;
          v122 = v96;
          v123 = v97;
          v116 = v90;
          v117 = v91;
          v118 = v92;
          v119 = v93;

          sub_20B52F9E8(&v90, v88, &qword_27C762340);
          v52 = v89;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88[0] = v52;
          sub_20B91CDF0(&v116, v17, isUniquelyReferenced_nonNull_native);
          (*(v38 + 8))(v17, v37);
          v89 = v88[0];
        }

        v54 = v74;
        v55 = v85;
        sub_20C13BFB4();
        v56 = *&a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections];

        sub_20C0CB35C(v87, v55, v54, v56);

        sub_20C13BFD4();

        v57 = type metadata accessor for ShelfDiffableItemIdentifier();
        v58 = v80;
        (*(*(v57 - 8) + 56))(v80, 1, 1, v57);
        sub_20C13BFC4();

        sub_20B520158(v58, &qword_27C762A90);
        [a6 rebuildLocations];
        *&a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_previousSnapshotBacking] = *&a6[v35];

        *&a6[v35] = v89;

        v59 = v81;
        sub_20C13B524();

        v60 = v74;

        v61 = a6;
        v62 = sub_20C13BB74();
        v63 = sub_20C13D1F4();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v64 = 134349314;
          v66 = v87;
          *(v64 + 4) = v87;

          *(v64 + 12) = 2114;
          *(v64 + 14) = v61;
          *v65 = v61;
          v67 = v61;
          _os_log_impl(&dword_20B517000, v62, v63, "[70636962] Applying snapshot to section %{public}ld in %{public}@", v64, 0x16u);
          sub_20B520158(v65, &unk_27C762E30);
          MEMORY[0x20F2F6A40](v65, -1, -1);
          MEMORY[0x20F2F6A40](v64, -1, -1);
        }

        else
        {

          v66 = v87;
        }

        (*(v83 + 8))(v59, v72);
        v68 = *&v61[OBJC_IVAR____TtC9SeymourUI11CatalogPage_dataSource];
        if (v68)
        {
          v88[0] = v66;
          v88[1] = v55;
          v88[2] = v60;
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v69 = v68;

          v70 = v86;
          sub_20C13BF84();

          (*(v82 + 8))(v70, v84);
        }

        else
        {
          return (*(v82 + 8))(v86, v84);
        }
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20B61EB94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  v78 = a2;
  v80 = a1;
  v76 = sub_20C13BB84();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A90);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = v68 - v12;
  v13 = sub_20C132EE4();
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A98);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v79 = v68 - v16;
  v17 = sub_20C13C554();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v20 = sub_20C13D374();
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v21 = sub_20C13C584();
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {
    result = [*&a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
      if (swift_dynamicCastClass())
      {
        *&v109 = v80;
        *(&v109 + 1) = v78;
        v69 = a3;
        *&v110 = a3;
        sub_20C13BF94();
        swift_unknownObjectRelease();
        sub_20C0C4560();
        v68[1] = a5;
        if (v24 && (v25 = v23, ObjectType = swift_getObjectType(), (*(v25 + 40))(v96, ObjectType, v25), swift_unknownObjectRelease(), v106 = v96[8], v107 = v96[9], v108 = v97, v102 = v96[4], v103 = v96[5], v104 = v96[6], v105 = v96[7], v98 = v96[0], v99 = v96[1], v100 = v96[2], v101 = v96[3], sub_20B5EAF8C(&v98) != 1))
        {
          v27 = *(&v99 + 1);
          v28 = v100;
          v29 = BYTE8(v100);
          sub_20B520158(v96, &qword_27C762340);
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = 128;
        }

        v30 = &a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v31 = *(v30 + 1);
          v32 = swift_getObjectType();
          (*(v31 + 312))(a6, v27, v28, v29, v32, v31);
          swift_unknownObjectRelease();
        }

        sub_20C0C33E4();
        v33 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
        swift_beginAccess();
        v82 = *&a6[v33];
        v35 = v70;
        v34 = v71;
        (*(v70 + 16))(v15, a4 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_identifier, v71);
        v36 = *(a4 + 128);
        v37 = *(a4 + 160);
        v91 = *(a4 + 144);
        v92 = v37;
        v38 = *(a4 + 64);
        v39 = *(a4 + 96);
        v87 = *(a4 + 80);
        v88 = v39;
        v40 = *(a4 + 96);
        v41 = *(a4 + 128);
        v89 = *(a4 + 112);
        v90 = v41;
        v42 = *(a4 + 32);
        v83 = *(a4 + 16);
        v84 = v42;
        v43 = *(a4 + 64);
        v45 = *(a4 + 16);
        v44 = *(a4 + 32);
        v85 = *(a4 + 48);
        v86 = v43;
        v46 = *(a4 + 160);
        v94[8] = v91;
        v94[9] = v46;
        v94[4] = v87;
        v94[5] = v40;
        v94[6] = v89;
        v94[7] = v36;
        v94[0] = v45;
        v94[1] = v44;
        v93 = *(a4 + 176);
        v95 = *(a4 + 176);
        v94[2] = v85;
        v94[3] = v38;
        if (sub_20B5EAF8C(v94) == 1)
        {

          sub_20BE38168(v15, &v109);
          sub_20B520158(&v109, &qword_27C762340);
          (*(v35 + 8))(v15, v34);
        }

        else
        {
          v117 = v91;
          v118 = v92;
          v119 = v93;
          v113 = v87;
          v114 = v88;
          v115 = v89;
          v116 = v90;
          v109 = v83;
          v110 = v84;
          v111 = v85;
          v112 = v86;

          sub_20B52F9E8(&v83, v81, &qword_27C762340);
          v47 = v82;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81[0] = v47;
          sub_20B91CDF0(&v109, v15, isUniquelyReferenced_nonNull_native);
          (*(v35 + 8))(v15, v34);
          v82 = v81[0];
        }

        sub_20C13BFB4();
        v49 = *&a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections];

        v71 = v33;
        v50 = v78;
        v51 = v69;
        sub_20C0CB35C(v80, v78, v69, v49);

        sub_20C13BFD4();

        v52 = type metadata accessor for ShelfDiffableItemIdentifier();
        v53 = v72;
        (*(*(v52 - 8) + 56))(v72, 1, 1, v52);
        v54 = v51;
        v55 = v50;
        sub_20C13BFC4();

        sub_20B520158(v53, &qword_27C762A90);
        [a6 rebuildLocations];
        v56 = v71;
        *&a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_previousSnapshotBacking] = *&a6[v71];

        *&a6[v56] = v82;

        v57 = v73;
        sub_20C13B524();

        v58 = a6;
        v59 = sub_20C13BB74();
        v60 = sub_20C13D1F4();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 134349314;
          v63 = v80;
          *(v61 + 4) = v80;

          *(v61 + 12) = 2114;
          *(v61 + 14) = v58;
          *v62 = v58;
          v64 = v58;
          _os_log_impl(&dword_20B517000, v59, v60, "[70636962] Applying snapshot to section %{public}ld in %{public}@", v61, 0x16u);
          sub_20B520158(v62, &unk_27C762E30);
          MEMORY[0x20F2F6A40](v62, -1, -1);
          MEMORY[0x20F2F6A40](v61, -1, -1);
        }

        else
        {

          v63 = v80;
        }

        (*(v74 + 8))(v57, v76);
        v65 = *&v58[OBJC_IVAR____TtC9SeymourUI11CatalogPage_dataSource];
        if (v65)
        {
          v81[0] = v63;
          v81[1] = v55;
          v81[2] = v54;
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v66 = v65;

          v67 = v79;
          sub_20C13BF84();

          (*(v75 + 8))(v67, v77);
        }

        else
        {
          return (*(v75 + 8))(v79, v77);
        }
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20B61F8F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, void *a7, void *a8)
{
  v75 = a4;
  v76 = a8;
  v74 = a7;
  v84 = a2;
  v86 = a1;
  v11 = sub_20C13BB84();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v79 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A90);
  MEMORY[0x28223BE20](v13 - 8);
  v78 = v72 - v14;
  v15 = sub_20C132EE4();
  v77 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A98);
  v80 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v85 = v72 - v18;
  v19 = sub_20C13C554();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v22 = sub_20C13D374();
  (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
  v23 = sub_20C13C584();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    result = [*&a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
      if (swift_dynamicCastClass())
      {
        *&v125 = v86;
        *(&v125 + 1) = v84;
        v73 = a3;
        *&v126 = a3;
        sub_20C13BF94();
        swift_unknownObjectRelease();
        sub_20C0C4560();
        v72[1] = a5;
        if (v26 && (v27 = v25, ObjectType = swift_getObjectType(), (*(v27 + 40))(v112, ObjectType, v27), swift_unknownObjectRelease(), v122 = v112[8], v123 = v112[9], v124 = v113, v118 = v112[4], v119 = v112[5], v120 = v112[6], v121 = v112[7], v114 = v112[0], v115 = v112[1], v116 = v112[2], v117 = v112[3], sub_20B5EAF8C(&v114) != 1))
        {
          v29 = *(&v115 + 1);
          v30 = v116;
          v31 = BYTE8(v116);
          sub_20B520158(v112, &qword_27C762340);
        }

        else
        {
          v29 = 0;
          v30 = 0;
          v31 = 128;
        }

        v32 = &a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = *(v32 + 1);
          v34 = swift_getObjectType();
          (*(v33 + 312))(a6, v29, v30, v31, v34, v33);
          swift_unknownObjectRelease();
        }

        sub_20C0C33E4();
        v35 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
        swift_beginAccess();
        v98 = *&a6[v35];
        v36 = v75;
        v37 = v77;
        (*(v77 + 16))(v17, v75 + *v74, v15);
        v38 = (v36 + *v76);
        v39 = v38[7];
        v40 = v38[9];
        v107 = v38[8];
        v108 = v40;
        v41 = v38[3];
        v42 = v38[5];
        v103 = v38[4];
        v104 = v42;
        v43 = v38[5];
        v44 = v38[7];
        v105 = v38[6];
        v106 = v44;
        v45 = v38[1];
        v99 = *v38;
        v100 = v45;
        v46 = v38[3];
        v48 = *v38;
        v47 = v38[1];
        v101 = v38[2];
        v102 = v46;
        v49 = v38[9];
        v110[8] = v107;
        v110[9] = v49;
        v110[4] = v103;
        v110[5] = v43;
        v110[6] = v105;
        v110[7] = v39;
        v110[0] = v48;
        v110[1] = v47;
        v109 = *(v38 + 20);
        v111 = *(v38 + 20);
        v110[2] = v101;
        v110[3] = v41;
        if (sub_20B5EAF8C(v110) == 1)
        {

          v50 = sub_20BE38168(v17, &v87);
          (*(v37 + 8))(v17, v15, v50);
          v133 = v95;
          v134 = v96;
          v135 = v97;
          v129 = v91;
          v130 = v92;
          v131 = v93;
          v132 = v94;
          v125 = v87;
          v126 = v88;
          v127 = v89;
          v128 = v90;
          sub_20B520158(&v125, &qword_27C762340);
        }

        else
        {
          v133 = v107;
          v134 = v108;
          v135 = v109;
          v129 = v103;
          v130 = v104;
          v131 = v105;
          v132 = v106;
          v125 = v99;
          v126 = v100;
          v127 = v101;
          v128 = v102;

          sub_20B52F9E8(&v99, &v87, &qword_27C762340);
          v51 = v98;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v87 = v51;
          sub_20B91CDF0(&v125, v17, isUniquelyReferenced_nonNull_native);
          (*(v37 + 8))(v17, v15);
          v98 = v87;
        }

        sub_20C13BFB4();
        v53 = *&a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections];

        v77 = v35;
        v54 = v84;
        v55 = v73;
        sub_20C0CB35C(v86, v84, v73, v53);

        sub_20C13BFD4();

        v56 = type metadata accessor for ShelfDiffableItemIdentifier();
        v57 = v78;
        (*(*(v56 - 8) + 56))(v78, 1, 1, v56);
        v58 = v55;
        v59 = v54;
        sub_20C13BFC4();

        sub_20B520158(v57, &qword_27C762A90);
        [a6 rebuildLocations];
        v60 = v77;
        *&a6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_previousSnapshotBacking] = *&a6[v77];

        *&a6[v60] = v98;

        v61 = v79;
        sub_20C13B524();

        v62 = a6;
        v63 = sub_20C13BB74();
        v64 = sub_20C13D1F4();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *v65 = 134349314;
          v67 = v86;
          *(v65 + 4) = v86;

          *(v65 + 12) = 2114;
          *(v65 + 14) = v62;
          *v66 = v62;
          v68 = v62;
          _os_log_impl(&dword_20B517000, v63, v64, "[70636962] Applying snapshot to section %{public}ld in %{public}@", v65, 0x16u);
          sub_20B520158(v66, &unk_27C762E30);
          MEMORY[0x20F2F6A40](v66, -1, -1);
          MEMORY[0x20F2F6A40](v65, -1, -1);
        }

        else
        {

          v67 = v86;
        }

        (*(v81 + 8))(v61, v82);
        v69 = *&v62[OBJC_IVAR____TtC9SeymourUI11CatalogPage_dataSource];
        if (v69)
        {
          *&v87 = v67;
          *(&v87 + 1) = v59;
          *&v88 = v58;
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v70 = v69;

          v71 = v85;
          sub_20C13BF84();

          (*(v80 + 8))(v71, v83);
        }

        else
        {
          return (*(v80 + 8))(v85, v83);
        }
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B6219F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 8) = v3;
}

unint64_t sub_20B621B88()
{
  result = qword_281102788;
  if (!qword_281102788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281102788);
  }

  return result;
}

uint64_t sub_20B621BDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B61B290(a1, v4, v5, v6);
}

uint64_t sub_20B621C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B621D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B6195D8(a1, v4, v5, v6);
}

uint64_t sub_20B621E08(uint64_t a1, uint64_t a2)
{
  v19[0] = a2;
  v19[1] = a1;
  v2 = sub_20C1327F4();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  sub_20C132E64();
  sub_20C132D64();
  v12 = *(v6 + 8);
  v12(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A88);
  v13 = sub_20C133134();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C14F980;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x277CC9968], v13);
  sub_20BE8D12C(v16);
  swift_setDeallocating();
  (*(v14 + 8))(v16 + v15, v13);
  swift_deallocClassInstance();
  sub_20C133054();

  v17 = sub_20C132774();
  (*(v20 + 8))(v4, v21);
  v12(v11, v5);
  return v17;
}

uint64_t sub_20B6220E4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20C13DFF4() & 1;
  }
}

uint64_t sub_20B62216C(unint64_t a1)
{
  v3 = *(sub_20C135AE4() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_20B6188AC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *v5, *(v5 + 8), *(v5 + 16));
}

uint64_t sub_20B6222E8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_20B622330(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v38 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = *(*(a1 + 56) + 8 * v14);
    v36[0] = *(*(a1 + 48) + v14);
    v37 = v15;

    a2(v35, v36);

    v16 = LOBYTE(v35[0]);
    v17 = v35[1];
    v18 = *v38;
    v20 = sub_20B65CEBC(LOBYTE(v35[0]));
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_25;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((v34 & 1) == 0)
      {
        sub_20BA0FBD4();
      }
    }

    else
    {
      sub_20BA08C24(v23, v34 & 1);
      v25 = sub_20B65CEBC(v16);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    v27 = *v38;
    if (v24)
    {
      *(v27[7] + 8 * v20) = v17;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + v20) = v16;
      *(v27[7] + 8 * v20) = v17;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_26;
      }

      v27[2] = v30;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_20B583EDC();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v34 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20B6225C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B62260C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B61B290(a1, v4, v5, v6);
}

uint64_t sub_20B6226C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B6195D8(a1, v4, v5, v6);
}

uint64_t sub_20B622774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B6227DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v29 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v29 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B622C38(a1, v14, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B622774(v14, v17, type metadata accessor for ButtonAction);
    v18 = *MEMORY[0x277D523B0];
    v19 = sub_20C135ED4();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v7, v18, v19);
    (*(v20 + 56))(v7, 0, 1, v19);
    v21 = *MEMORY[0x277D51768];
    v22 = sub_20C1352E4();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v4, v21, v22);
    (*(v23 + 56))(v4, 0, 1, v22);
    sub_20B5A6FA4(v17, 0x6E616C5077656956, 0xEF736C6961746544, v7, 0, 0, v4, v11);
    sub_20B520158(v4, &unk_27C765D50);
    sub_20B520158(v7, &unk_27C7621D0);
    v24 = sub_20C137CB4();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v24(sub_20B52347C, v25);

    (*(v9 + 8))(v11, v8);
    v26 = type metadata accessor for ButtonAction;
    v27 = v17;
  }

  else
  {
    v26 = type metadata accessor for ShelfItemAction;
    v27 = v14;
  }

  return sub_20B622CA0(v27, v26);
}

uint64_t sub_20B622C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B622CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for FontTextStyleVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FontTextStyleVariant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20B622E94()
{
  result = qword_27C762AC8;
  if (!qword_27C762AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C762AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762AC8);
  }

  return result;
}

uint64_t sub_20B622EF8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  if (a3 <= 3u)
  {
    goto LABEL_7;
  }

  if (a3 > 5u)
  {
    if (a3 == 7)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      return sub_20B5E0F54();
    }

    goto LABEL_7;
  }

  if (a3 == 4)
  {
LABEL_7:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_20C138D34();
  }

  sub_20B6232F4(a2, v8);
  v10 = sub_20C135654();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_20B623364(v8);
  }

  else
  {
    v12 = sub_20C135604();
    v14 = v13;
    (*(v11 + 8))(v8, v10);
    if (v14)
    {
      return v12;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_20C138D34();

  return v15;
}

unint64_t sub_20B6232A0()
{
  result = qword_27C762AD8;
  if (!qword_27C762AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762AD8);
  }

  return result;
}

uint64_t sub_20B6232F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B623364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_20B623454()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI13TextBadgeView_textLabel);
  [v1 intrinsicContentSize];
  v3 = v2 + *(v0 + OBJC_IVAR____TtC9SeymourUI13TextBadgeView_contentInset + 8) + *(v0 + OBJC_IVAR____TtC9SeymourUI13TextBadgeView_contentInset + 24);
  [v1 intrinsicContentSize];
  return v3;
}

char *sub_20B6234D8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC9SeymourUI13TextBadgeView_textLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setAllowsDefaultTighteningForTruncation_];
  [v10 setTextAlignment_];
  v11 = *MEMORY[0x277D74400];
  v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v14 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v15 = swift_initStackObject();
  v16 = MEMORY[0x277D74430];
  *(v15 + 16) = xmmword_20C14F980;
  v17 = *v16;
  *(v15 + 32) = *v16;
  *(v15 + 40) = v11;
  v18 = v14;
  v19 = v17;
  v20 = sub_20B6B134C(v15);
  swift_setDeallocating();
  sub_20B520158(v15 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v20;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v21 = sub_20C13C744();

  v22 = [v12 fontDescriptorByAddingAttributes_];

  v23 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
  [v10 setFont_];

  v24 = [objc_opt_self() secondaryLabelColor];
  [v10 setTextColor_];

  *&v4[v9] = v10;
  v25 = &v4[OBJC_IVAR____TtC9SeymourUI13TextBadgeView_contentInset];
  v26 = *(MEMORY[0x277D75060] + 16);
  *v25 = *MEMORY[0x277D75060];
  *(v25 + 1) = v26;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC9SeymourUI13TextBadgeView_textLabel;
  v29 = *&v27[OBJC_IVAR____TtC9SeymourUI13TextBadgeView_textLabel];
  v30 = v27;
  [v30 addSubview_];
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C14FE90;
  v33 = [*&v27[v28] leadingAnchor];
  v34 = [v30 leadingAnchor];
  v35 = &v30[OBJC_IVAR____TtC9SeymourUI13TextBadgeView_contentInset];
  v36 = [v33 constraintEqualToAnchor:v34 constant:*&v30[OBJC_IVAR____TtC9SeymourUI13TextBadgeView_contentInset + 8]];

  *(v32 + 32) = v36;
  v37 = [*&v27[v28] trailingAnchor];
  v38 = [v30 trailingAnchor];

  v39 = [v37 constraintEqualToAnchor:v38 constant:-v35[3]];
  *(v32 + 40) = v39;
  v40 = [*&v27[v28] topAnchor];
  v41 = [v30 topAnchor];

  v42 = [v40 constraintEqualToAnchor:v41 constant:*v35];
  *(v32 + 48) = v42;
  v43 = [*&v27[v28] bottomAnchor];
  v44 = [v30 bottomAnchor];

  v45 = [v43 constraintEqualToAnchor:v44 constant:-v35[2]];
  *(v32 + 56) = v45;
  sub_20B5E29D0();
  v46 = sub_20C13CC54();

  [v31 activateConstraints_];

  return v30;
}

void sub_20B623B28()
{
  v1 = OBJC_IVAR____TtC9SeymourUI13TextBadgeView_textLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setLineBreakMode_];
  [v2 setNumberOfLines_];
  [v2 setAllowsDefaultTighteningForTruncation_];
  [v2 setTextAlignment_];
  v3 = *MEMORY[0x277D74400];
  v4 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v6 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D74430];
  *(v7 + 32) = *MEMORY[0x277D74430];
  *(v7 + 40) = v3;
  v9 = v6;
  v10 = v8;
  v11 = sub_20B6B134C(v7);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v11;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v12 = sub_20C13C744();

  v13 = [v4 fontDescriptorByAddingAttributes_];

  v14 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
  [v2 setFont_];

  v15 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  *(v0 + v1) = v2;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B623E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C136864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C135214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C137F94();
  sub_20C1351F4();
  v12 = sub_20C135754();
  v13 = sub_20C135754();
  if (*(v13 + 16) && (v14 = sub_20B65B35C(v11), (v15 & 1) != 0))
  {
    v23[0] = a2;
    v16 = *(*(v13 + 56) + 8 * v14);

    (*(v5 + 16))(v7, a1, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_20BC0667C(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_20BC0667C(v17 > 1, v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v7, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[1] = v12;
    sub_20B91D86C(v16, v11, isUniquelyReferenced_nonNull_native);
    a2 = v23[0];
    sub_20C135744();
    v20 = 0;
  }

  else
  {

    v20 = 1;
  }

  (*(v9 + 8))(v11, v8);
  v21 = sub_20C1357B4();
  return (*(*(v21 - 8) + 56))(a2, v20, 1, v21);
}

uint64_t sub_20B624304(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 32;
    do
    {
      sub_20B51F1D8(v3, v8);
      result = swift_dynamicCast();
      if (result)
      {
        if (v7 == 1)
        {
          v4 = (v1 + OBJC_IVAR____TtC9SeymourUI28AddToWatchShareSheetActivity_workoutIdentifier);
          *v4 = v5;
          v4[1] = v6;
        }

        result = sub_20B624748(v5, v6, v7);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_20B624428()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v9 - v4;
  if (*&v0[OBJC_IVAR____TtC9SeymourUI28AddToWatchShareSheetActivity_workoutIdentifier + 8])
  {
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI28AddToWatchShareSheetActivity_assetClient], *&v0[OBJC_IVAR____TtC9SeymourUI28AddToWatchShareSheetActivity_assetClient + 24]);

    sub_20C139E34();

    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_20B52347C, v7);

    (*(v2 + 8))(v5, v1);
    return [v0 activityDidFinish_];
  }

  else
  {

    return [v0 activityDidFinish_];
  }
}

id sub_20B624690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddToWatchShareSheetActivity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B624748(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_20B624760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20B51F1D8(i, v7);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    if (!--v1)
    {
      return 0;
    }
  }

  if (v6 != 1)
  {
    sub_20B624748(v4, v5, v6);
    goto LABEL_3;
  }

  sub_20B624748(v4, v5, v6);
  return 1;
}

void *sub_20B624808()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView);
  v2 = v1;
  return v1;
}

char *sub_20B624838(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_layout];
  *v11 = xmmword_20C151470;
  *(v11 + 1) = xmmword_20C151480;
  *(v11 + 4) = 0x4073B00000000000;
  v12 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView;
  v13 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v14 = *&qword_27C79ACA0;
  v15 = [v13 config];
  [v15 setCornerRadius_];

  v16 = [v13 config];
  [v16 setScaleSizeIncrease_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v118 = v12;
  v17 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_captionLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  v19 = sub_20C13C914();
  [v18 setText_];

  [v18 setNumberOfLines_];
  v20 = objc_opt_self();
  v21 = [v20 preferredFontForTextStyle_];
  [v21 pointSize];
  v23 = v22;

  v24 = [v20 boldSystemFontOfSize_];
  [v18 setFont_];

  v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v18 setTextColor_];

  v26 = v18;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  LODWORD(v27) = 1148846080;
  [v26 setContentCompressionResistancePriority:1 forAxis:v27];

  *&v4[v17] = v26;
  v28 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_titleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  v30 = sub_20C13C914();
  [v29 setText_];

  v31 = [v20 preferredFontForTextStyle_];
  [v29 setFont_];

  v32 = objc_opt_self();
  v33 = [v32 labelColor];
  [v29 setTextColor_];

  v34 = v29;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setAdjustsFontForContentSizeCategory_];
  LODWORD(v35) = 1148846080;
  [v34 setContentCompressionResistancePriority:1 forAxis:v35];

  *&v4[v28] = v34;
  v36 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_subtitleLabel;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  v38 = sub_20C13C914();
  [v37 setText_];

  [v37 setLineBreakMode_];
  [v37 setNumberOfLines_];
  v39 = [v20 preferredFontForTextStyle_];
  [v37 setFont_];

  v40 = [v32 secondaryLabelColor];
  [v37 setTextColor_];

  v41 = v37;
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  [v41 setAdjustsFontForContentSizeCategory_];
  LODWORD(v42) = 1148846080;
  [v41 setContentCompressionResistancePriority:1 forAxis:v42];

  *&v4[v36] = v41;
  v43 = [*&v118[v4] widthAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *&v4[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkWidthConstraint] = v44;
  v45 = [*&v118[v4] heightAnchor];
  v46 = [v45 constraintEqualToConstant_];

  *&v4[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkHeightConstraint] = v46;
  v121.receiver = v4;
  v121.super_class = type metadata accessor for TVStandardBrickItemCell();
  v47 = objc_msgSendSuper2(&v121, &selRef__hysteresis, a1, a2, a3, a4);
  v48 = [v47 contentView];
  v49 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView;
  v50 = *&v47[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView];
  [v48 addSubview_];

  v51 = [v47 &selRef_setMaximumFractionDigits_];
  v52 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_captionLabel;
  [v51 addSubview_];

  v53 = [v47 &selRef_setMaximumFractionDigits_];
  v116 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_titleLabel;
  [v53 addSubview_];

  v54 = [v47 &selRef_setMaximumFractionDigits_];
  v117 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_subtitleLabel;
  [v54 addSubview_];

  v55 = *&v47[v49];
  v56 = &v55[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets];
  *v56 = v14;
  v56[1] = v14;
  v56[2] = v14;
  v56[3] = v14;
  v119 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_20C150930;
  v58 = [v55 leadingAnchor];
  v59 = [v47 &selRef_setMaximumFractionDigits_];
  v60 = [v59 leadingAnchor];

  v61 = [v58 constraintEqualToAnchor_];
  *(v57 + 32) = v61;
  v62 = [*&v47[v49] trailingAnchor];
  v63 = [v47 &selRef_setMaximumFractionDigits_];
  v64 = [v63 trailingAnchor];

  v65 = [v62 &selRef:v64 alertControllerReleasedDictationButton:? + 5];
  type metadata accessor for UILayoutPriority(0);
  sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v66) = v120;
  [v65 setPriority_];
  *(v57 + 40) = v65;
  v67 = [*&v47[v49] topAnchor];
  v68 = [v47 &selRef_setMaximumFractionDigits_];
  v69 = [v68 topAnchor];

  v70 = [v67 &selRef:v69 alertControllerReleasedDictationButton:? + 5];
  *(v57 + 48) = v70;
  v71 = *&v47[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkWidthConstraint];
  *(v57 + 56) = v71;
  v72 = *&v47[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkHeightConstraint];
  *(v57 + 64) = v72;
  v73 = *&v47[v52];
  v74 = v71;
  v75 = v72;
  v76 = [v73 leadingAnchor];
  v77 = [v47 &selRef_setMaximumFractionDigits_];
  v78 = [v77 leadingAnchor];

  v79 = [v76 &selRef:v78 alertControllerReleasedDictationButton:? + 5];
  *(v57 + 72) = v79;
  v80 = [*&v47[v52] topAnchor];
  v81 = [*&v47[v49] bottomAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:23.0];

  *(v57 + 80) = v82;
  v83 = [*&v47[v52] trailingAnchor];
  v84 = [v47 contentView];
  v85 = [v84 trailingAnchor];

  v86 = [v83 &selRef:v85 alertControllerReleasedDictationButton:? + 5];
  *(v57 + 88) = v86;
  v87 = [*&v47[v116] leadingAnchor];
  v88 = [v47 contentView];
  v89 = [v88 leadingAnchor];

  v90 = [v87 &selRef:v89 alertControllerReleasedDictationButton:? + 5];
  *(v57 + 96) = v90;
  v91 = [*&v47[v116] topAnchor];
  v92 = [*&v47[v52] bottomAnchor];
  v93 = [v91 &selRef:v92 alertControllerReleasedDictationButton:? + 5];

  *(v57 + 104) = v93;
  v94 = [*&v47[v116] trailingAnchor];
  v95 = [v47 contentView];
  v96 = [v95 trailingAnchor];

  v97 = [v94 &selRef:v96 alertControllerReleasedDictationButton:? + 5];
  *(v57 + 112) = v97;
  v98 = [*&v47[v117] topAnchor];
  v99 = [*&v47[v116] bottomAnchor];
  v100 = [v98 &selRef:v99 alertControllerReleasedDictationButton:? + 5];

  *(v57 + 120) = v100;
  v101 = [*&v47[v117] leadingAnchor];
  v102 = [v47 contentView];
  v103 = [v102 leadingAnchor];

  v104 = [v101 &selRef:v103 alertControllerReleasedDictationButton:? + 5];
  *(v57 + 128) = v104;
  v105 = [*&v47[v117] trailingAnchor];
  v106 = [v47 contentView];
  v107 = [v106 trailingAnchor];

  v108 = [v105 &selRef:v107 alertControllerReleasedDictationButton:? + 5];
  *(v57 + 136) = v108;
  v109 = [*&v47[v117] bottomAnchor];
  v110 = [v47 contentView];

  v111 = [v110 bottomAnchor];
  v112 = [v109 &selRef:v111 alertControllerReleasedDictationButton:? + 5];

  sub_20C13BBA4();
  LODWORD(v113) = v120;
  [v112 setPriority_];
  *(v57 + 144) = v112;
  sub_20B51C88C(0, &qword_281100500);
  v114 = sub_20C13CC54();

  [v119 activateConstraints_];

  return v47;
}

id sub_20B625970(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    v23 = a1;
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v6 = [v2 contentView];
    v7 = [v6 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v8 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x20F2F5430](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v11);

        ++v10;
        if (v12 == i)
        {
          v13 = v24[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v13 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v13;
    sub_20B6FFB30(v24, *&v3[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView]);

    v14 = sub_20B8E9218(v28);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 32;
      do
      {
        sub_20B51CC64(v16, v24);
        v17 = *&v3[v4];
        v18 = v25;
        v19 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v19 + 16))(v17, a2 & 1, v18, v19);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v16 += 40;
        --v15;
      }

      while (v15);
    }

    LOBYTE(a1) = v23;
  }

  v20 = *&v3[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_titleLabel];
  if ((a1 & 8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = 4;
  }

  [v20 setSmu:(a1 & 8) >> 3 marqueeEnabled:?];
  return [v20 setLineBreakMode_];
}

void sub_20B625C04(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v7 = [v3 contentView];
    v8 = [v7 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v9 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v12);

        ++v11;
        if (v13 == i)
        {
          v14 = aBlock[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(aBlock, *&v3[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
    v27 = sub_20B62A578;
    v28 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_2;
    v22 = _Block_copy(aBlock);
    v23 = v3;

    [a2 addCoordinatedAnimations:v22 completion:0];
    _Block_release(v22);
  }
}

void sub_20B625F08()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkHeightConstraint);
}

id sub_20B625FB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVStandardBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVStandardBrickItemCell()
{
  result = qword_27C762B18;
  if (!qword_27C762B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B626100()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B6261CC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B626218@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20B626280(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550);
  return swift_endAccess();
}

id sub_20B6262FC(id result)
{
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView))
    {
      return result;
    }

    v32 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView;
    v2 = objc_allocWithZone(type metadata accessor for CompletedIconView());
    v3 = v1;
    v4 = sub_20B9931C0(1, 0.0, 0.0, 0.0, 0.0);
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    type metadata accessor for UILayoutPriority(0);
    sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority);
    sub_20C13BB94();
    LODWORD(v5) = v33;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v6];
    v7 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView;
    v31 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView;
    [*(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView) addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C151490;
    v9 = [v4 trailingAnchor];
    v10 = [*(v1 + v7) trailingAnchor];
    v11 = (v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout);
    v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 24);
    v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 32);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v14 = (*(v13 + 8))(v12, v13);
    v15 = v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets;
    v16 = [v9 constraintEqualToAnchor:v10 constant:-v14 - *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets + 24)];

    *(v8 + 32) = v16;
    v17 = [v4 bottomAnchor];

    v18 = [*(v3 + v31) bottomAnchor];
    v19 = v11[3];
    v20 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v19);
    v21 = [v17 constraintEqualToAnchor:v18 constant:{-(*(v20 + 16))(v19, v20) - *(v15 + 16)}];

    *(v8 + 40) = v21;
    v22 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);
    v23 = sub_20C13CC54();
    [v22 activateConstraints_];

    v24 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints;
    swift_beginAccess();
    *(v3 + v24) = v8;

    v25 = *(v3 + v32);
    *(v3 + v32) = v4;
  }

  else
  {
    v26 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints;
    swift_beginAccess();
    if (*(v1 + v26))
    {
      v27 = objc_opt_self();
      sub_20B51C88C(0, &qword_281100500);

      v28 = sub_20C13CC54();
      [v27 deactivateConstraints_];
    }

    *(v1 + v26) = 0;

    v29 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView;
    v30 = *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView);
    if (v30)
    {
      [v30 removeFromSuperview];
      v25 = *(v1 + v29);
    }

    else
    {
      v25 = 0;
    }

    *(v1 + v29) = 0;
  }

  return sub_20B626DA0();
}

id sub_20B626760(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C13C4C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v16 = &v2[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints];
    swift_beginAccess();
    if (*(v16 + 2))
    {
      v17 = objc_opt_self();
      sub_20B51C88C(0, &qword_281100500);

      v18 = sub_20C13CC54();
      [v17 deactivateConstraints_];
    }

    *(v16 + 2) = 0;

    v48 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView;
    v49 = *&v2[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView];
    if (v49)
    {
      [v49 removeFromSuperview];
      v47 = *&v2[v48];
    }

    else
    {
      v47 = 0;
    }

    *&v2[v48] = 0;
    goto LABEL_15;
  }

  v10 = *&v2[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView];
  if (!v10)
  {
    v50 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView;
    v19 = v7;
    objc_allocWithZone(type metadata accessor for RecencyIconView());

    v51 = v2;
    v20 = sub_20B7219DC(1, a1, a2, 0.0, 0.0, 0.0, 0.0);
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
    type metadata accessor for UILayoutPriority(0);
    v53 = 1144750080;
    v52 = 1065353216;
    sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority);
    sub_20C13BB94();
    v21 = v51;
    LODWORD(v22) = v54;
    [v20 setContentHuggingPriority:0 forAxis:v22];
    v23 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView;
    [*&v21[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView] addSubview_];
    v24 = [v21 stackImage];
    if (v24)
    {
      v25 = v24;
      v26 = swift_allocObject();
      *(v26 + 16) = v20;
      (*(v6 + 104))(v9, *MEMORY[0x277D851C0], v19);
      v27 = v20;
      sub_20BD519D8(v25, v9, sub_20B62A570, v26);

      (*(v6 + 8))(v9, v19);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C151490;
    v29 = [v20 leadingAnchor];
    v30 = [*&v21[v23] leadingAnchor];
    v31 = &v21[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout];
    v32 = *&v21[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 24];
    v33 = *&v21[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 32];
    __swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout], v32);
    v34 = (*(v33 + 32))(v32, v33);
    v35 = &v51[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets];
    v36 = [v29 constraintEqualToAnchor:v30 constant:v34 + *&v51[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets + 8]];

    *(v28 + 32) = v36;
    v37 = [v20 bottomAnchor];

    v38 = [*&v51[v23] bottomAnchor];
    v39 = *(v31 + 3);
    v40 = *(v31 + 4);
    __swift_project_boxed_opaque_existential_1(v31, v39);
    v41 = (*(v40 + 40))(v39, v40);
    v42 = v51;
    v43 = [v37 constraintEqualToAnchor:v38 constant:-v41 - v35[2]];

    *(v28 + 40) = v43;
    v44 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);
    v45 = sub_20C13CC54();
    [v44 activateConstraints_];

    v46 = &v42[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints];
    swift_beginAccess();
    *(v46 + 2) = v28;

    v47 = *&v42[v50];
    *&v42[v50] = v20;
LABEL_15:

    return sub_20B626DA0();
  }

  v11 = &v10[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title];
  *v11 = a1;
  v11[1] = a2;

  v12 = v10;

  v13 = *&v12[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label];

  v14 = sub_20C13C914();
  [v13 setText_];

  [v12 invalidateIntrinsicContentSize];
}

id sub_20B626DA0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints];
  swift_beginAccess();
  if (*(v2 + 1))
  {
    v3 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);

    v4 = sub_20C13CC54();

    [v3 deactivateConstraints_];

    *(v2 + 1) = 0;
  }

  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView];
  if (!v5)
  {
    v15 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView];
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20C14F580;
      v9 = v15;
      v16 = [v9 leadingAnchor];
      v17 = [*&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView] leadingAnchor];
      v18 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 24];
      v19 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 32];
      __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout], v18);
      v20 = [v16 constraintGreaterThanOrEqualToAnchor:v17 constant:{(*(v19 + 8))(v18, v19) + *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets + 8]}];
    }

    else
    {
      v23 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView];
      if (!v23)
      {
        goto LABEL_13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20C14F580;
      v9 = v23;
      v16 = [v9 leadingAnchor];
      v17 = [*&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView] leadingAnchor];
      v24 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 24];
      v25 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 32];
      __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout], v24);
      v20 = [v16 constraintGreaterThanOrEqualToAnchor:v17 constant:{(*(v25 + 48))(v24, v25) + *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets + 8]}];
    }

    goto LABEL_11;
  }

  v6 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView];
  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C14F580;
    v9 = v5;
    v16 = [v9 leadingAnchor];
    v17 = [*&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView] leadingAnchor];
    v21 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 24];
    v22 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout], v21);
    v20 = [v16 constraintLessThanOrEqualToAnchor:v17 constant:{(*(v22 + 32))(v21, v22) + *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets + 8]}];
LABEL_11:
    v26 = v20;

    *(v7 + 32) = v26;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C14F580;
  v8 = v5;
  v9 = v6;
  v10 = [v8 trailingAnchor];
  v11 = [v9 leadingAnchor];
  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 24];
  v12 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout], v13);
  v14 = [v10 constraintLessThanOrEqualToAnchor:v11 constant:{-(*(v12 + 24))(v13, v12)}];

  *(v7 + 32) = v14;
LABEL_12:

  *(v2 + 1) = v7;

LABEL_13:
  if (*(v2 + 1))
  {
    v27 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);

    v28 = sub_20C13CC54();

    [v27 activateConstraints_];
  }

  return [v1 setNeedsLayout];
}

double sub_20B627354(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v4 = [objc_opt_self() mainScreen];
    [v4 scale];
    v6 = v5;

    v7 = sub_20C137BF4() / v6;
    sub_20C137C04();
  }

  else
  {
    [*(v3 + *a3) bounds];
    return v8;
  }

  return v7;
}

uint64_t sub_20B627414(uint64_t a1, void *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(a2 + v17, v11, &unk_27C766680);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78]);
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

id sub_20B627900(unint64_t a1)
{
  v393 = sub_20C13BB84();
  v392 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v391 = &v357 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v379 = *(v380 - 8);
  MEMORY[0x28223BE20](v380);
  v377 = &v357 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v378 = &v357 - v5;
  v376 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v357 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v357 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v381 = &v357 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v390 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v357 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v375 = &v357 - v19;
  v374 = v20;
  MEMORY[0x28223BE20](v21);
  v382 = &v357 - v22;
  v388 = sub_20C1391C4();
  v387 = *(v388 - 8);
  MEMORY[0x28223BE20](v388);
  v389 = &v357 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = sub_20C138A64();
  v384 = *(v385 - 8);
  MEMORY[0x28223BE20](v385);
  v25 = &v357 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v383 = &v357 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v28 - 8);
  v386 = &v357 - v29;
  v30 = sub_20C13C554();
  v402 = *(v30 - 8);
  v403 = v30;
  MEMORY[0x28223BE20](v30);
  v401 = &v357 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C137C24();
  v404 = *(v32 - 8);
  v405 = v32;
  MEMORY[0x28223BE20](v32);
  v34 = &v357 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v394 = &v357 - v36;
  v395 = v37;
  MEMORY[0x28223BE20](v38);
  v397 = &v357 - v39;
  v40 = sub_20C136CD4();
  v398 = *(v40 - 8);
  v399 = v40;
  MEMORY[0x28223BE20](v40);
  v42 = &v357 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v400 = &v357 - v44;
  v45 = sub_20C134E44();
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v357 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v396 = &v357 - v49;
  v50 = sub_20C134014();
  MEMORY[0x28223BE20](v50);
  v52 = &v357 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v406 = &v357 - v56;
  v57 = (a1 >> 57) & 0x78 | a1 & 7;
  switch(v57)
  {
    case 'J':
      v363 = v12;
      v391 = v42;
      v396 = v47;
      v373 = v34;
      v364 = v25;
      v365 = v17;
      v372 = v15;
      v371 = v9;
      v92 = v54;
      v93 = v55;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70);
      v95 = swift_projectBox();
      LODWORD(v397) = *(v95 + v94[12]);
      v96 = v95 + v94[20];
      v98 = *v96;
      v97 = *(v96 + 8);
      v100 = *(v96 + 16);
      v99 = *(v96 + 24);
      v102 = *(v96 + 32);
      v101 = *(v96 + 40);
      v406 = v102;
      v400 = v101;
      v103 = (v95 + v94[24]);
      v104 = *v103;
      v105 = v103[1];
      LODWORD(v383) = *(v95 + v94[32]);
      v392 = v93;
      v106 = *(v93 + 16);
      v393 = v92;
      v106(v52, v95, v92);
      v107 = v407;
      v108 = *&v407[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_captionLabel];
      v369 = v100;
      v368 = v99;
      if (v105 >= 2)
      {
        v408 = v104;
        v409 = v105;
        sub_20B5F6EB0();
        v128 = v98;
        v129 = v97;
        v130 = v100;

        sub_20C13D9E4();
        v112 = sub_20C13C914();
      }

      else
      {
        v109 = v98;
        v110 = v97;
        v111 = v100;

        v112 = 0;
      }

      v131 = v404;
      [v108 setText_];

      v132 = *&v107[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_titleLabel];
      [v132 setAttributedText_];
      [*&v107[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_subtitleLabel] setAttributedText_];
      v381 = v98;
      v370 = v97;
      if (v383)
      {
        v133 = *&v107[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView];
        sub_20B6262FC(1);
        v134 = *&v133[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView];
        if (!v134)
        {
          goto LABEL_33;
        }

        v135 = objc_allocWithZone(MEMORY[0x277D75348]);
        v136 = v134;
        v137 = [v135 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      }

      else
      {
        v138 = sub_20C133EB4() > 0;
        v133 = *&v107[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView];
        sub_20B6262FC(v138);
        v139 = *&v133[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView];
        if (!v139)
        {
          goto LABEL_33;
        }

        v140 = objc_opt_self();
        v136 = v139;
        v137 = [v140 whiteColor];
      }

      v141 = v137;
      [*&v136[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView] setTintColor_];

LABEL_33:
      v383 = v133;
      v142 = sub_20C133E54();
      sub_20B626760(v142, v143);

      if ((*&v107[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8) != 0)
      {
        v144 = 2;
      }

      else
      {
        v144 = 4;
      }

      [v132 setSmu:(*&v107[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8uLL) >> 3 marqueeEnabled:?];
      [v132 setLineBreakMode_];
      v145 = v397;
      v146 = v397 - 47;
      if (v397 == 47)
      {
        v147 = 315.0;
      }

      else
      {
        v147 = 231.0;
      }

      v148 = 411.0;
      if (v397 == 47)
      {
        v148 = 559.0;
      }

      [*&v107[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkWidthConstraint] setConstant_];
      [*&v107[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkHeightConstraint] setConstant_];
      if (v146 > 1)
      {
        v152 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
        [v108 setTextColor_];

        v150 = v373;
        v151 = v396;
        if (v145 == 38)
        {
          v153 = 2;
LABEL_46:
          [v132 setNumberOfLines_];
          sub_20C133F04();
          v367 = sub_20C138054();
          v397 = v154;
          v155 = v391;
          sub_20C134E34();
          sub_20C136CB4();
          v366 = sub_20C136CC4();
          v382 = v156;
          sub_20B51C88C(0, &qword_281100530);
          v157 = sub_20C13D374();
          v159 = v401;
          v158 = v402;
          *v401 = v157;
          v160 = v403;
          (*(v158 + 104))(v159, *MEMORY[0x277D85200], v403);
          v161 = sub_20C13C584();
          result = (*(v158 + 8))(v159, v160);
          if ((v161 & 1) == 0)
          {
            __break(1u);
LABEL_85:
            __break(1u);
            return result;
          }

          v162 = v383;
          [v383 setContentMode_];
          if (sub_20B627414(v150, v162, 0))
          {
            v403 = v52;
            v163 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v164 = *(v131 + 16);
            v165 = v394;
            v166 = v405;
            v361 = v131 + 16;
            v362 = v164;
            v164(v394, v150, v405);
            v167 = *(v131 + 80);
            v168 = (v167 + 24) & ~v167;
            v358 = v395 + 7;
            v169 = (v395 + 7 + v168) & 0xFFFFFFFFFFFFFFF8;
            v170 = (v169 + 23) & 0xFFFFFFFFFFFFFFF8;
            v171 = (v170 + 23) & 0xFFFFFFFFFFFFFFF8;
            v401 = v167;
            v402 = (v171 + 15) & 0xFFFFFFFFFFFFFFF8;
            v172 = swift_allocObject();
            *(v172 + 16) = v163;
            v173 = v131;
            v174 = v165;
            v175 = *(v173 + 32);
            v176 = v165;
            v177 = v383;
            v360 = v173 + 32;
            v359 = v175;
            v175(v172 + v168, v176, v166);
            v178 = (v172 + v169);
            v179 = v382;
            *v178 = v366;
            v178[1] = v179;
            v180 = (v172 + v170);
            v181 = v397;
            *v180 = v367;
            v180[1] = v181;
            *(v172 + v171) = 2;
            v182 = v172 + v402;
            *v182 = MEMORY[0x277D84F90];
            *(v182 + 8) = 0;
            v183 = (v172 + ((v171 + 31) & 0xFFFFFFFFFFFFFFF8));
            *v183 = 0;
            v183[1] = 0;
            v184 = &v177[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
            v185 = *&v177[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
            *v184 = sub_20B62A308;
            *(v184 + 1) = v172;

            sub_20B583ECC(v185);

            [v177 bounds];
            if (v186 <= 0.0 || (v188 = v187, v187 <= 0.0))
            {

              v131 = v404;
              v290 = v405;
            }

            else
            {
              v189 = v186;
              v402 = ~v401;
              [v177 setStackImage_];
              v190 = v386;
              v191 = v373;
              v192 = v405;
              v362(v386, v373, v405);
              v193 = v174;
              v131 = v404;
              (*(v404 + 56))(v190, 0, 1, v192);
              v194 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
              swift_beginAccess();
              sub_20B5DF2D4(v190, &v177[v194], &unk_27C766680);
              swift_endAccess();
              sub_20B51C88C(0, &qword_27C762070);
              sub_20C137BC4();
              v195 = sub_20C13D5A4();
              [v177 setBackgroundColor_];

              v196 = &v177[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
              *v196 = v189;
              v196[1] = v188;
              *(v196 + 16) = 0;
              v197 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v198 = v362;
              v362(v193, v191, v192);
              v199 = (v401 + 16) & v402;
              v200 = (v358 + v199) & 0xFFFFFFFFFFFFFFF8;
              v201 = (v200 + 15) & 0xFFFFFFFFFFFFFFF8;
              v202 = swift_allocObject();
              v359(v202 + v199, v193, v192);
              *(v202 + v200) = v197;
              v203 = (v202 + v201);
              *v203 = v189;
              v203[1] = v188;
              v386 = v202;
              v204 = (v202 + ((v201 + 23) & 0xFFFFFFFFFFFFFFF8));
              *v204 = 0;
              v204[1] = 0;
              v198(v193, v373, v192);
              (*(v387 + 104))(v389, *MEMORY[0x277D542A8], v388);

              v205 = v364;
              v206 = v193;
              sub_20C138A54();
              v207 = v363;
              sub_20B5F1BB8(v205, v363);
              v208 = v390;
              v209 = v372;
              if ((*(v390 + 48))(v207, 1, v372) == 1)
              {
                sub_20B520158(v207, &unk_27C766670);
                sub_20BA1DA88();

                (*(v384 + 8))(v205, v385);
              }

              else
              {
                v389 = *(v208 + 32);
                (v389)(v365, v207, v209);
                v294 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v295 = v405;
                v362(v206, v373, v405);
                v296 = (v401 + 40) & v402;
                v297 = v296 + v395;
                v298 = (v296 + v395) & 0xFFFFFFFFFFFFFFF8;
                v299 = swift_allocObject();
                *(v299 + 2) = v294;
                v299[3] = v189;
                v299[4] = v188;
                v359(v299 + v296, v206, v295);
                *(v299 + v297) = 0;
                v300 = v299 + v298;
                *(v300 + 1) = 0;
                *(v300 + 2) = 0;
                v301 = swift_allocObject();
                *(v301 + 16) = sub_20B62A310;
                *(v301 + 24) = v299;
                v302 = v390;
                v303 = v375;
                (*(v390 + 16))(v375, v365, v209);
                v304 = (*(v302 + 80) + 16) & ~*(v302 + 80);
                v305 = (v374 + v304 + 7) & 0xFFFFFFFFFFFFFFF8;
                v306 = swift_allocObject();
                (v389)(v306 + v304, v303, v209);
                v307 = (v306 + v305);
                *v307 = sub_20B5F67A4;
                v307[1] = v301;
                v308 = v378;
                sub_20C137C94();
                v309 = swift_allocObject();
                v310 = v386;
                *(v309 + 16) = sub_20B62A30C;
                *(v309 + 24) = v310;
                v311 = swift_allocObject();
                *(v311 + 16) = sub_20B5F67D4;
                *(v311 + 24) = v309;
                v312 = v379;
                v313 = v377;
                v314 = v380;
                (*(v379 + 16))(v377, v308, v380);
                v315 = (*(v312 + 80) + 16) & ~*(v312 + 80);
                v316 = (v376 + v315 + 7) & 0xFFFFFFFFFFFFFFF8;
                v317 = swift_allocObject();
                (*(v312 + 32))(v317 + v315, v313, v314);
                v318 = (v317 + v316);
                *v318 = sub_20B5DF204;
                v318[1] = v311;

                v319 = v371;
                sub_20C137C94();
                v320 = *(v312 + 8);
                v320(v308, v314);
                v321 = sub_20C137CB4();
                v322 = swift_allocObject();
                *(v322 + 16) = 0;
                *(v322 + 24) = 0;
                v321(sub_20B52347C, v322);

                v320(v319, v314);
                (*(v390 + 8))(v365, v372);
                (*(v384 + 8))(v364, v385);
              }

              v290 = v405;
            }

            v292 = v398;
            v291 = v399;
            v150 = v373;
            v151 = v396;
            v155 = v391;
            v52 = v403;
          }

          else
          {

            v290 = v405;
            v292 = v398;
            v291 = v399;
          }

          (*(v131 + 8))(v150, v290);
          (*(v292 + 8))(v155, v291);

          sub_20B62A2AC(v151);
          return (*(v392 + 8))(v52, v393);
        }
      }

      else
      {
        v149 = [objc_opt_self() secondaryLabelColor];
        [v108 setTextColor_];

        v150 = v373;
        v151 = v396;
      }

      v153 = 1;
      goto LABEL_46;
    case '!':
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
      v80 = *(swift_projectBox() + *(v79 + 48));
      v81 = v407;
      v82 = *&v407[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_captionLabel];
      v83 = sub_20C13C914();
      [v82 setText_];

      v84 = *&v81[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_titleLabel];
      v85 = sub_20C13C914();
      [v84 setText_];

      v86 = *&v81[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_subtitleLabel];
      v87 = sub_20C13C914();
      [v86 setText_];

      v88 = *&v81[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView];
      if (qword_27C760828 != -1)
      {
        v356 = *&v81[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView];
        swift_once();
        v88 = v356;
      }

      [v88 setBackgroundColor_];
      if (v80 == 47)
      {
        v89 = 315.0;
      }

      else
      {
        v89 = 231.0;
      }

      v90 = 411.0;
      if (v80 == 47)
      {
        v90 = 559.0;
      }

      [*&v81[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkWidthConstraint] setConstant_];
      [*&v81[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkHeightConstraint] setConstant_];
      if ((v80 - 47) > 1)
      {
        v126 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
        [v82 setTextColor_];

        if (v80 == 38)
        {
          v127 = 2;
LABEL_23:
          [v84 setNumberOfLines_];

          return sub_20BA1DA88();
        }
      }

      else
      {
        v91 = [objc_opt_self() secondaryLabelColor];
        [v82 setTextColor_];
      }

      v127 = 1;
      goto LABEL_23;
    case ' ':
      v372 = v15;
      v371 = v9;
      v58 = v54;
      v59 = v55;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v61 = swift_projectBox();
      LODWORD(v373) = *(v61 + v60[12]);
      v62 = v61 + v60[16];
      v63 = *v62;
      v64 = *(v62 + 8);
      v65 = *(v62 + 16);
      v66 = *(v62 + 24);
      v67 = *(v62 + 32);
      v68 = *(v62 + 40);
      v69 = (v61 + v60[20]);
      v70 = *v69;
      v71 = v69[1];
      v392 = v59;
      v72 = *(v59 + 16);
      v393 = v58;
      v72(v406, v61, v58);
      v73 = v407;
      v74 = *&v407[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_captionLabel];
      v368 = v65;
      v367 = v66;
      v366 = v67;
      v365 = v68;
      if (v71 >= 2)
      {
        v408 = v70;
        v409 = v71;
        sub_20B5F6EB0();
        v210 = v63;
        v211 = v64;
        v212 = v65;

        sub_20C13D9E4();
        v78 = sub_20C13C914();
      }

      else
      {
        v75 = v63;
        v76 = v64;
        v77 = v65;

        v78 = 0;
      }

      v213 = v404;
      [v74 setText_];

      v214 = v73;
      v215 = *&v73[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_titleLabel];
      v370 = v63;
      [v215 setAttributedText_];
      [*&v214[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_subtitleLabel] setAttributedText_];
      v216 = sub_20C133EB4() > 0;
      v217 = *&v214[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView];
      sub_20B6262FC(v216);
      v218 = sub_20C133E54();
      v391 = v217;
      sub_20B626760(v218, v219);

      if ((*&v214[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8) != 0)
      {
        v220 = 2;
      }

      else
      {
        v220 = 4;
      }

      [v215 setSmu:(*&v214[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8uLL) >> 3 marqueeEnabled:?];
      [v215 setLineBreakMode_];
      v221 = v373;
      v222 = v373 - 47;
      if (v373 == 47)
      {
        v223 = 315.0;
      }

      else
      {
        v223 = 231.0;
      }

      v224 = 411.0;
      if (v373 == 47)
      {
        v224 = 559.0;
      }

      [*&v214[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkWidthConstraint] setConstant_];
      [*&v214[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_artworkHeightConstraint] setConstant_];
      v369 = v64;
      if (v222 > 1)
      {
        v227 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
        [v74 setTextColor_];

        v226 = v396;
        if (v221 == 38)
        {
          v228 = 2;
          goto LABEL_66;
        }
      }

      else
      {
        v225 = [objc_opt_self() secondaryLabelColor];
        [v74 setTextColor_];

        v226 = v396;
      }

      v228 = 1;
LABEL_66:
      v229 = v397;
      [v215 setNumberOfLines_];
      sub_20C133F04();
      v230 = sub_20C138054();
      v232 = v231;
      sub_20C134E34();
      sub_20C136CB4();
      v364 = sub_20C136CC4();
      v373 = v233;
      sub_20B51C88C(0, &qword_281100530);
      v234 = sub_20C13D374();
      v236 = v401;
      v235 = v402;
      *v401 = v234;
      v237 = v403;
      (*(v235 + 104))(v236, *MEMORY[0x277D85200], v403);
      v238 = sub_20C13C584();
      result = (*(v235 + 8))(v236, v237);
      if (v238)
      {
        v239 = v391;
        [v391 setContentMode_];
        if ((sub_20B627414(v229, v239, 0) & 1) == 0)
        {

          v287 = v398;
          v286 = v399;
          v293 = v370;
          v288 = v226;
          v289 = v400;
LABEL_78:
          (*(v213 + 8))(v229, v405);
          (*(v287 + 8))(v289, v286);

          sub_20B62A2AC(v288);
          return (*(v392 + 8))(v406, v393);
        }

        v402 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v240 = *(v213 + 16);
        v241 = v394;
        v242 = v405;
        v363 = (v213 + 16);
        v362 = v240;
        v240(v394, v229, v405);
        v243 = *(v213 + 80);
        v244 = (v243 + 24) & ~v243;
        v357 = v395 + 7;
        v403 = v232;
        v245 = (v395 + 7 + v244) & 0xFFFFFFFFFFFFFFF8;
        v246 = (v245 + 23) & 0xFFFFFFFFFFFFFFF8;
        v247 = (v246 + 23) & 0xFFFFFFFFFFFFFFF8;
        v401 = (v247 + 15) & 0xFFFFFFFFFFFFFFF8;
        v361 = v243;
        v248 = swift_allocObject();
        *(v248 + 16) = v402;
        v249 = v213;
        v250 = v241;
        v251 = *(v249 + 32);
        v252 = v242;
        v253 = v391;
        v360 = v249 + 32;
        v359 = v251;
        v251(v248 + v244, v241, v252);
        v254 = (v248 + v245);
        v255 = v373;
        *v254 = v364;
        v254[1] = v255;
        v256 = (v248 + v246);
        v358 = v230;
        *v256 = v230;
        v256[1] = v403;
        *(v248 + v247) = 2;
        v257 = v248 + v401;
        *v257 = MEMORY[0x277D84F90];
        *(v257 + 8) = 0;
        v258 = (v248 + ((v247 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v258 = 0;
        v258[1] = 0;
        v259 = &v253[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v260 = *&v253[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        *v259 = sub_20B62ABB8;
        *(v259 + 1) = v248;

        sub_20B583ECC(v260);

        [v253 bounds];
        if (v261 <= 0.0 || (v263 = v262, v262 <= 0.0))
        {

          v213 = v404;
          v287 = v398;
          v286 = v399;
          v229 = v397;
        }

        else
        {
          v264 = v261;
          v265 = v361;
          v266 = ~v361;
          [v253 setStackImage_];
          v267 = v386;
          v268 = v397;
          v269 = v405;
          v270 = v362;
          (v362)(v386);
          (*(v404 + 56))(v267, 0, 1, v269);
          v271 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v267, &v253[v271], &unk_27C766680);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070);
          v272 = v268;
          sub_20C137BC4();
          v273 = sub_20C13D5A4();
          [v253 setBackgroundColor_];

          v274 = &v253[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
          *v274 = v264;
          v274[1] = v263;
          *(v274 + 16) = 0;
          v275 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v270(v250, v272, v269);
          v402 = v266;
          v276 = (v265 + 16) & v266;
          v277 = (v357 + v276) & 0xFFFFFFFFFFFFFFF8;
          v278 = (v277 + 15) & 0xFFFFFFFFFFFFFFF8;
          v279 = swift_allocObject();
          v359(&v279[v276], v250, v269);
          *&v279[v277] = v275;
          v280 = &v279[v278];
          *v280 = v264;
          v280[1] = v263;
          v281 = &v279[(v278 + 23) & 0xFFFFFFFFFFFFFFF8];
          v229 = v397;
          *v281 = 0;
          *(v281 + 1) = 0;
          v362(v250, v229, v269);
          (*(v387 + 104))(v389, *MEMORY[0x277D542A8], v388);

          v282 = v383;
          sub_20C138A54();
          v283 = v381;
          sub_20B5F1BB8(v282, v381);
          v284 = v390;
          v285 = v372;
          if ((*(v390 + 48))(v283, 1, v372) == 1)
          {
            sub_20B520158(v283, &unk_27C766670);
            sub_20BA1DA88();

            (*(v384 + 8))(v282, v385);
            v287 = v398;
            v286 = v399;
            v288 = v396;
            v289 = v400;
            v213 = v404;
LABEL_77:
            v293 = v370;
            goto LABEL_78;
          }

          v401 = *(v284 + 32);
          (v401)(v382, v283, v285);
          v323 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v324 = v394;
          v325 = v405;
          v362(v394, v229, v405);
          v326 = (v361 + 40) & v402;
          v327 = v284;
          v328 = v326 + v395;
          v329 = (v326 + v395) & 0xFFFFFFFFFFFFFFF8;
          v330 = swift_allocObject();
          v407 = v279;
          v331 = v330;
          v330[2] = v323;
          *(v330 + 3) = v264;
          *(v330 + 4) = v263;
          v359(v330 + v326, v324, v325);
          *(v331 + v328) = 0;
          v332 = v331 + v329;
          *(v332 + 1) = 0;
          *(v332 + 2) = 0;
          v333 = swift_allocObject();
          *(v333 + 16) = sub_20B62ABA0;
          *(v333 + 24) = v331;
          v334 = v375;
          v335 = v372;
          (*(v327 + 16))(v375, v382, v372);
          v336 = (*(v327 + 80) + 16) & ~*(v327 + 80);
          v337 = (v374 + v336 + 7) & 0xFFFFFFFFFFFFFFF8;
          v338 = swift_allocObject();
          (v401)(v338 + v336, v334, v335);
          v339 = (v338 + v337);
          *v339 = sub_20B5F7760;
          v339[1] = v333;
          v340 = v378;
          sub_20C137C94();
          v341 = swift_allocObject();
          v342 = v407;
          *(v341 + 16) = sub_20B62ABBC;
          *(v341 + 24) = v342;
          v343 = swift_allocObject();
          *(v343 + 16) = sub_20B5F7790;
          *(v343 + 24) = v341;
          v344 = v379;
          v345 = v377;
          v346 = v380;
          (*(v379 + 16))(v377, v340, v380);
          v347 = (*(v344 + 80) + 16) & ~*(v344 + 80);
          v348 = (v376 + v347 + 7) & 0xFFFFFFFFFFFFFFF8;
          v349 = swift_allocObject();
          (*(v344 + 32))(v349 + v347, v345, v346);
          v350 = (v349 + v348);
          *v350 = sub_20B5F7764;
          v350[1] = v343;

          v351 = v371;
          sub_20C137C94();
          v352 = *(v344 + 8);
          v352(v340, v346);
          v353 = sub_20C137CB4();
          v354 = swift_allocObject();
          *(v354 + 16) = 0;
          *(v354 + 24) = 0;
          v353(sub_20B5DF6DC, v354);

          v355 = v346;
          v229 = v397;
          v352(v351, v355);
          (*(v327 + 8))(v382, v372);
          v213 = v404;
          (*(v384 + 8))(v383, v385);
          v287 = v398;
          v286 = v399;
        }

        v288 = v396;
        v289 = v400;
        goto LABEL_77;
      }

      goto LABEL_85;
  }

  v113 = v391;
  sub_20C13B534();

  v114 = v407;
  v115 = sub_20C13BB74();
  v116 = sub_20C13D1D4();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v408 = v119;
    *v117 = 138543618;
    *(v117 + 4) = v114;
    *v118 = v114;
    *(v117 + 12) = 2082;
    v410 = a1;
    v120 = sub_20B5F66D0();
    v121 = v114;
    v122 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v120);
    v124 = sub_20B51E694(v122, v123, &v408);

    *(v117 + 14) = v124;
    _os_log_impl(&dword_20B517000, v115, v116, "Attempted to configure %{public}@ with item: %{public}s", v117, 0x16u);
    sub_20B520158(v118, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v118, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v119);
    MEMORY[0x20F2F6A40](v119, -1, -1);
    MEMORY[0x20F2F6A40](v117, -1, -1);
  }

  return (*(v392 + 8))(v113, v393);
}

uint64_t sub_20B62A2AC(uint64_t a1)
{
  v2 = sub_20C134E44();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20B62A328()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA4AF44(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B62A400(void *a1)
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

  sub_20BA636F0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B62A4BC(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2F4C(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

id sub_20B62A578()
{
  v1 = (*(v0 + 24) & 8uLL) >> 3;
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_titleLabel);
  if ((*(v0 + 24) & 8) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  [v2 setSmu:v1 marqueeEnabled:?];

  return [v2 setLineBreakMode_];
}

void sub_20B62A5E8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_layout;
  *v3 = xmmword_20C151470;
  *(v3 + 16) = xmmword_20C151480;
  *(v3 + 32) = 0x4073B00000000000;
  v4 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView;
  v5 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27C79ACA0;
  v7 = [v5 config];
  [v7 setCornerRadius_];

  v8 = [v5 config];
  [v8 setScaleSizeIncrease_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v9 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_captionLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = sub_20C13C914();
  [v10 setText_];

  [v10 setNumberOfLines_];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontForTextStyle_];
  [v13 pointSize];
  v15 = v14;

  v16 = [v12 boldSystemFontOfSize_];
  [v10 setFont_];

  v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v10 setTextColor_];

  v18 = v10;
  [v18 &selRef_count + 2];
  [v18 setAdjustsFontForContentSizeCategory_];
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];

  *(v0 + v9) = v18;
  v20 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_titleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v22 = sub_20C13C914();
  [v21 setText_];

  v23 = [v12 preferredFontForTextStyle_];
  [v21 setFont_];

  v24 = objc_opt_self();
  v25 = [v24 labelColor];
  [v21 setTextColor_];

  v26 = v21;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  LODWORD(v27) = 1148846080;
  [v26 setContentCompressionResistancePriority:1 forAxis:v27];

  *(v0 + v20) = v26;
  v28 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v30 = sub_20C13C914();
  [v29 setText_];

  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  v31 = [v12 preferredFontForTextStyle_];
  [v29 setFont_];

  v32 = [v24 secondaryLabelColor];
  [v29 setTextColor_];

  v33 = v29;
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  [v33 setAdjustsFontForContentSizeCategory_];
  LODWORD(v34) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v34];

  *(v0 + v28) = v33;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B62ABC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_20C13E164();
  sub_20C13CA64();
  MEMORY[0x20F2F58E0](v1);
  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

uint64_t sub_20B62AC3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_20C13CA64();
  MEMORY[0x20F2F58E0](v1);
  return MEMORY[0x20F2F58E0](v2);
}

uint64_t sub_20B62AC88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_20C13E164();
  sub_20C13CA64();
  MEMORY[0x20F2F58E0](v1);
  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

BOOL sub_20B62AD00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = sub_20C13DFF4();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

unint64_t sub_20B62AD8C()
{
  result = qword_27C762B30;
  if (!qword_27C762B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762B30);
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

uint64_t sub_20B62ADF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_20B62AE3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_20B62AE90()
{
  v1 = &v0[OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_state];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  *&v0[OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_display + 8] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v2 = v7[1];
  v3 = &v0[OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_eventHub];
  *v3 = v7[0];
  *(v3 + 1) = v2;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v0[OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_subscriptionToken] = sub_20C13A914();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MiniPlayerHostPresenter();
  v4 = objc_msgSendSuper2(&v8, sel_init);
  swift_getObjectType();
  sub_20C13AA24();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v4;
  swift_unknownObjectRetain();

  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t sub_20B62B068()
{
  v0 = sub_20C137EA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_20C13AA14();
    sub_20B62B5C0();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_20B62B16C(char *a1)
{
  v3 = *(*(*&a1[OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter] + 96) + 240);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  v6 = (v1 + OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_state);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_state);
  *v6 = a1;
  v6[1] = Strong;
  v6[2] = v5;
  v8 = a1;
  swift_unknownObjectRetain();
  sub_20B62BAE8(v7);
  if (*v6)
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 selectedViewController];
      if (v11)
      {
        v12 = v11;
        v14 = [v11 presentedViewController];

        if (v14)
        {
          type metadata accessor for SessionViewController();
          if (!swift_dynamicCastClass())
          {
LABEL_8:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            return;
          }

          v13 = [v10 selectedViewController];
          if (v13)
          {
            v14 = v13;
            [v13 dismissViewControllerAnimated:1 completion:0];
            goto LABEL_8;
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
}

uint64_t (*sub_20B62B318(uint64_t (*result)(void), uint64_t a2))(void)
{
  v3 = result;
  v4 = (v2 + OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_state);
  v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_state);
  if (v5)
  {
    v7 = v4[2];
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      *(v10 + 24) = a2;
      sub_20B584050(v3);
      [v5 setModalPresentationStyle_];
      *&v5[OBJC_IVAR____TtC9SeymourUI21SessionViewController_miniPlayerHost + 8] = &protocol witness table for TabBarController;
      swift_unknownObjectWeakAssign();
      v11 = *&v5[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay];
      v12 = *&v5[OBJC_IVAR____TtC9SeymourUI21SessionViewController_mediaPlayerDisplay + 32];
      v13 = *(*&v5[OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter] + 96);
      *(*(v13 + 240) + 24) = v7;
      swift_unknownObjectWeakAssign();
      *(v13 + 24) = v12;
      swift_unknownObjectWeakAssign();
      if ((*(*(v13 + 240) + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
      {
        v14 = v11;
        sub_20BF73830();
        sub_20BF74170();
      }

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = sub_20B62BB74;
      v16[4] = v10;
      v18[4] = sub_20B62BBA8;
      v18[5] = v16;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 1107296256;
      v18[2] = sub_20B7B548C;
      v18[3] = &block_descriptor_3;
      v17 = _Block_copy(v18);

      [v9 presentViewController:v5 animated:1 completion:v17];
      _Block_release(v17);

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else if (result)
  {
    return result(0);
  }

  return result;
}

void sub_20B62B5C0()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_state);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI23MiniPlayerHostPresenter_state);
  if (!v2)
  {
    return;
  }

  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
  v23 = v2;
  sub_20B62BAE8(v2);
  v3 = *(*&v23[OBJC_IVAR____TtC9SeymourUI21SessionViewController_presenter] + 96);
  *(*(v3 + 240) + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakAssign();
  if ((*(*(v3 + 240) + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {

    sub_20BF73830();
    sub_20BF74170();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController;
    v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController);
    if (!v7)
    {
LABEL_29:

      swift_unknownObjectRelease();
      return;
    }

    v8 = *(Strong + OBJC_IVAR____TtC9SeymourUI16TabBarController_paletteView);
    v9 = v7;
    [v8 setHidden_];
    v10 = [v9 view];
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = v10;
    [v10 removeFromSuperview];

    [v9 removeFromParentViewController];
    v12 = [v5 viewControllers];
    if (v12)
    {
      v13 = v12;
      sub_20B62BB28();
      v14 = sub_20C13CC74();

      if (!(v14 >> 62))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_9:
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_10:
          v22 = v9;
          if (v15 >= 1)
          {
            for (i = 0; i != v15; ++i)
            {
              if ((v14 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x20F2F5430](i, v14);
              }

              else
              {
                v17 = *(v14 + 8 * i + 32);
              }

              v18 = v17;
              v19 = *&v5[v6];
              objc_opt_self();
              v20 = swift_dynamicCastObjCClass();
              if (v20)
              {
                if (v19)
                {
                  v21 = 64.0;
                }

                else
                {
                  v21 = 0.0;
                }

                [v20 setAdditionalSafeAreaInsets_];
              }
            }

            goto LABEL_29;
          }

          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        goto LABEL_28;
      }
    }

    v15 = sub_20C13DB34();
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_28:

    goto LABEL_29;
  }
}

id sub_20B62B92C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MiniPlayerHostPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI23MiniPlayerHostPresenterC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20B62BA10(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B62BA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

void *sub_20B62BAB8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
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

void *sub_20B62BAE8(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_20B62BB28()
{
  result = qword_281100550;
  if (!qword_281100550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281100550);
  }

  return result;
}

uint64_t sub_20B62BB74()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_20B62BC08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B62BC50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20B62BCDC(uint64_t a1)
{
  result = sub_20B62BD04();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20B62BD04()
{
  result = qword_27C762B58;
  if (!qword_27C762B58)
  {
    sub_20C1333E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762B58);
  }

  return result;
}

unint64_t sub_20B62BD60()
{
  result = qword_27C762B60;
  if (!qword_27C762B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762B60);
  }

  return result;
}

uint64_t sub_20B62BDC4@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320);
  v95 = *(v96 - 8);
  v94 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v93 = v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v92 = v88 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v97 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v88 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v88 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v99 = *(v101 - 8);
  v100 = v101 - 8;
  v113 = v99;
  v102 = *(v99 + 64);
  MEMORY[0x28223BE20](v101 - 8);
  v103 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = v88 - v15;
  MEMORY[0x28223BE20](v16);
  v112 = v88 - v17;
  MEMORY[0x28223BE20](v18);
  v119 = v88 - v19;
  MEMORY[0x28223BE20](v20);
  v115 = v88 - v21;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = swift_allocObject();
  v111 = v23;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = swift_allocObject();
  v118 = v24;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_20B62C8DC();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20B62EA5C;
  *(v25 + 24) = v22;
  v98 = v22;
  v26 = v5;
  v27 = *(v5 + 16);
  v109 = v5 + 16;
  v110 = v27;
  v27(v9, v12, v4);
  v28 = *(v5 + 80);
  v29 = (v28 + 16) & ~v28;
  v108 = v28;
  v116 = v29;
  v30 = (v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = *(v26 + 32);
  v107 = v26 + 32;
  v117 = v32;
  v32(v31 + v29, v9, v4);
  v33 = (v31 + v30);
  *v33 = sub_20B62E604;
  v33[1] = v25;

  sub_20C137C94();
  v34 = *(v26 + 8);
  v34(v12, v4);
  v105 = v34;
  v106 = v26 + 8;
  v35 = v88[1];
  sub_20B62CBBC(v12);
  v36 = swift_allocObject();
  v37 = v111;
  *(v36 + 16) = sub_20B62E634;
  *(v36 + 24) = v37;
  v89 = v9;
  v90 = v12;
  v110(v9, v12, v4);
  v91 = v30;
  v38 = swift_allocObject();
  v117(v38 + v116, v9, v4);
  v39 = (v38 + v30);
  *v39 = sub_20B62EA58;
  v39[1] = v36;

  sub_20C137C94();
  v40 = v4;
  v34(v12, v4);
  v41 = v92;
  v42 = v35;
  sub_20C10F7A4(v92);
  v43 = v95;
  v44 = v93;
  v45 = v41;
  v46 = v41;
  v47 = v96;
  (*(v95 + 16))(v93, v45, v96);
  v48 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v49 = (v94 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v43 + 32))(v50 + v48, v44, v47);
  v51 = (v50 + v49);
  *v51 = sub_20B62E650;
  v51[1] = v42;

  v52 = v89;
  sub_20C137C94();
  (*(v43 + 8))(v46, v47);
  v53 = v97;
  v54 = v52;
  v55 = v110;
  v110(v97, v52, v40);
  v56 = v91;
  v57 = swift_allocObject();
  v117(v57 + v116, v53, v40);
  v58 = (v57 + v56);
  *v58 = sub_20B62D7BC;
  v58[1] = 0;
  v59 = v90;
  sub_20C137C94();
  v105(v52, v40);
  v60 = swift_allocObject();
  v61 = v118;
  *(v60 + 16) = sub_20B62EA5C;
  *(v60 + 24) = v61;
  v55(v54, v59, v40);
  v62 = swift_allocObject();
  v117(v62 + v116, v54, v40);
  v63 = (v62 + v56);
  *v63 = sub_20B62EA58;
  v63[1] = v60;

  v64 = v112;
  sub_20C137C94();
  v105(v59, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v65 = *(v99 + 72);
  v66 = v113;
  v67 = *(v113 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20C1517D0;
  v69 = v68 + ((v67 + 32) & ~v67);
  v70 = *(v66 + 16);
  v71 = v101;
  v70(v69, v115, v101);
  v70(v69 + v65, v119, v71);
  v72 = v69 + 2 * v65;
  v73 = v71;
  v70(v72, v64, v71);
  sub_20B5E2E18();
  v74 = sub_20C13D374();
  sub_20C13A7C4();
  v75 = v114;
  sub_20C137C74();

  v76 = swift_allocObject();
  v77 = v111;
  v76[2] = v98;
  v76[3] = v77;
  v76[4] = v118;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_20B62E6C0;
  *(v78 + 24) = v76;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_20B62E6CC;
  *(v79 + 24) = v78;
  v80 = v103;
  v70(v103, v75, v73);
  v81 = (v67 + 16) & ~v67;
  v82 = (v102 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = v113;
  (*(v113 + 32))(v83 + v81, v80, v73);
  v85 = (v83 + v82);
  *v85 = sub_20B62E70C;
  v85[1] = v79;

  sub_20C137C94();
  v86 = *(v84 + 8);
  v86(v114, v73);
  v86(v112, v73);
  v86(v119, v73);
  v86(v115, v73);
}

uint64_t sub_20B62C8DC()
{
  v1 = v0;
  v2 = sub_20C1344C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_20C135AE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_workoutDetail;
  swift_beginAccess();
  sub_20B62E920(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B62E990(v8);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D84F90];
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = v15;
    return sub_20C137CA4();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_20C135AA4();
    v17 = sub_20BC30170(*(v1 + 232));
    v19 = v18;
    v21 = v20;
    (*(v3 + 8))(v5, v2, v17);
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    sub_20C137CA4();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B62CBBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68);
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v26 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1((v1 + 192), *(v1 + 216));
  sub_20C1398E4();
  v13 = v27;
  (*(v3 + 16))(v5, v8, v27);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v5, v13);
  v16 = (v15 + ((v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_20B62E82C;
  v16[1] = v2;

  v17 = v26;
  sub_20C137C94();
  (*(v3 + 8))(v8, v13);
  v19 = v28;
  v18 = v29;
  v20 = v17;
  (*(v9 + 16))(v28, v17, v29);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v19, v18);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20B62E168;
  v23[1] = 0;
  sub_20C137C94();
  return (*(v9 + 8))(v20, v18);
}

uint64_t sub_20B62CF24(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;

  return sub_20B62E7D0(v5);
}

uint64_t sub_20B62CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v31[0] = v7;
  v31[1] = v6;
  swift_beginAccess();
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v31[2] = v9;
  v31[3] = v8;
  swift_beginAccess();
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v31[4] = v11;
  v31[5] = v10;
  sub_20B62E790(v7);
  sub_20B62E790(v9);
  result = sub_20B62E790(v11);
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
LABEL_2:
  if (v13 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 + 1;
  v17 = &v31[2 * v13];
  while (v13 != 3)
  {
    if (v16 == ++v13)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v18 = v17 + 2;
    v19 = *v17;
    v17 += 2;
    if (v19)
    {
      v20 = *(v18 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC066A4(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_20BC066A4((v21 > 1), v22 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B70);
  result = swift_arrayDestroy();
  v24 = *(v14 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = (v14 + 40);
    v27 = MEMORY[0x277D84F90];
    while (v25 < *(v14 + 16))
    {
      ++v25;
      v29 = *(v26 - 1);
      v28 = *v26;
      swift_bridgeObjectRetain_n();

      sub_20B8D9458(v29);
      v30 = v27;

      sub_20B8D9440(v28);

      v26 += 2;
      if (v24 == v25)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_22;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_20:

  return v30;
}

uint64_t sub_20B62D234(uint64_t a1)
{
  v3 = *(v1 + 464);
  v2 = *(v1 + 472);
  if ((a1 & 0x100000000) == 0)
  {
    goto LABEL_4;
  }

  if (a1 > 6)
  {
LABEL_12:
    v25 = type metadata accessor for AddBookmarkShareSheetActivity();
    v26 = objc_allocWithZone(v25);
    v27 = &v26[OBJC_IVAR____TtC9SeymourUI29AddBookmarkShareSheetActivity_workoutIdentifier];
    *v27 = 0;
    *(v27 + 1) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
    sub_20C133AA4();
    sub_20B51C710(v36, &v26[OBJC_IVAR____TtC9SeymourUI29AddBookmarkShareSheetActivity_bookmarkClient]);
    v32.receiver = v26;
    v32.super_class = v25;
    v28 = objc_msgSendSuper2(&v32, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_20C14F980;
    *(v29 + 56) = &type metadata for ShareSheetActivityItem;
    *(v29 + 32) = v3;
    *(v29 + 40) = v2;
    *(v29 + 48) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_20C14F580;
    *(v30 + 32) = v28;
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    return sub_20C137CA4();
  }

  if (((1 << a1) & 0x4A) != 0)
  {
LABEL_4:
    v4 = type metadata accessor for RemoveDownloadShareSheetActivity();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_workoutIdentifier];
    *v6 = 0;
    *(v6 + 1) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
    sub_20C133AA4();
    sub_20B51C710(v36, &v5[OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_assetClient]);
    v33.receiver = v5;
    v33.super_class = v4;
    v7 = objc_msgSendSuper2(&v33, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C14F980;
    *(v8 + 56) = &type metadata for ShareSheetActivityItem;
    *(v8 + 32) = v3;
    *(v8 + 40) = v2;
    *(v8 + 48) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C14F580;
    *(v9 + 32) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    return sub_20C137CA4();
  }

  if (((1 << a1) & 0x30) == 0)
  {
    if (a1 == 2)
    {
      v14 = type metadata accessor for RemoveBookmarkShareSheetActivity();
      v15 = objc_allocWithZone(v14);
      v16 = &v15[OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_workoutIdentifier];
      *v16 = 0;
      *(v16 + 1) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
      sub_20C133AA4();
      sub_20B51C710(v36, &v15[OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_assetClient]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
      sub_20C133AA4();
      sub_20B51C710(v36, &v15[OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_bookmarkClient]);
      v35.receiver = v15;
      v35.super_class = v14;
      v17 = objc_msgSendSuper2(&v35, sel_init);

      v18 = type metadata accessor for DownloadWorkoutShareSheetActivity();
      v19 = objc_allocWithZone(v18);
      v20 = &v19[OBJC_IVAR____TtC9SeymourUI33DownloadWorkoutShareSheetActivity_workoutIdentifier];
      *v20 = 0;
      *(v20 + 1) = 0;
      sub_20C133AA4();
      sub_20B51C710(v36, &v19[OBJC_IVAR____TtC9SeymourUI33DownloadWorkoutShareSheetActivity_assetClient]);
      v34.receiver = v19;
      v34.super_class = v18;
      v21 = objc_msgSendSuper2(&v34, sel_init);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_20C14F320;
      *(v22 + 32) = v3;
      *(v22 + 40) = v2;
      *(v22 + 48) = 0;
      *(v22 + 88) = &type metadata for ShareSheetActivityItem;
      *(v22 + 56) = &type metadata for ShareSheetActivityItem;
      *(v22 + 64) = v3;
      *(v22 + 72) = v2;
      *(v22 + 80) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_20C151490;
      *(v23 + 32) = v17;
      *(v23 + 40) = v21;
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;

      return sub_20C137CA4();
    }

    goto LABEL_12;
  }

  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 16) = MEMORY[0x277D84F90];
  *(v12 + 24) = v13;

  return sub_20C137CA4();
}

uint64_t sub_20B62D7DC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v91 = a2;
  v84 = sub_20C134734();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134B14();
  v92 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v93 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C1344C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v80 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v76 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v76 - v13;
  v15 = sub_20C135AE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_workoutDetail;
  swift_beginAccess();
  sub_20B62E920(v2 + v19, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20B62E990(v14);
LABEL_7:
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D84F90];
    *(v28 + 16) = MEMORY[0x277D84F90];
    *(v28 + 24) = v29;
    return sub_20C137CA4();
  }

  v79 = v2;
  (*(v16 + 32))(v18, v14, v15);
  sub_20C135AA4();
  v20 = sub_20C1344B4();
  v22 = v21;
  v23 = v16;
  v25 = v24;
  v27 = *(v7 + 8);
  v26 = v7 + 8;
  v89 = v27;
  v90 = v6;
  v27(v11, v6);
  if ((v25 & 1) == 0)
  {
    sub_20B583F4C(v20, v22, 0);
    (*(v23 + 8))(v18, v15);
    goto LABEL_7;
  }

  v88 = v18;
  v78 = v23;
  if (sub_20C134B74())
  {
    (*(v78 + 8))(v88, v15);
    goto LABEL_7;
  }

  v76 = v20;
  v77 = v15;
  v31 = *(v79 + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_upNextQueueItems);
  v32 = *(v31 + 16);
  v85 = v92 + 16;
  v86 = (v92 + 8);
  v87 = v32;

  v33 = 0;
  while (1)
  {
    v35 = v90;
    if (v87 == v33)
    {

      v62 = v80;
      v52 = v88;
      sub_20C135AA4();
      v63 = v82;
      sub_20C134484();
      v89(v62, v35);
      v64 = sub_20C1346F4();
      MEMORY[0x28223BE20](v64);
      v74 = v81;
      v65 = v76;
      v75 = v76;
      if ((v76 & 0xFE) != 0)
      {
        v66 = sub_20B622280;
      }

      else
      {
        v66 = sub_20B6222C8;
      }

      v67 = sub_20B613908(v66, (&v76 - 4), v64);

      v68 = (*(v83 + 8))(v63, v84);
      MEMORY[0x28223BE20](v68);
      *(&v76 - 32) = v65;
      v46 = v79;
      *(&v76 - 3) = v79;
      v74 = v52;
      v61 = sub_20B622D24(sub_20B62E9F8, (&v76 - 6), v67);

      goto LABEL_21;
    }

    if (v33 >= *(v31 + 16))
    {
      break;
    }

    v36 = v4;
    (*(v92 + 16))(v93, v31 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v33, v4);
    v37 = v26;
    v38 = v35;
    v39 = sub_20C134AB4();
    v41 = v40;
    sub_20C135AA4();
    v42 = sub_20C134324();
    v44 = v43;
    v45 = v38;
    v26 = v37;
    v89(v11, v45);
    if (v39 == v42 && v41 == v44)
    {

      (*v86)(v93, v36);
LABEL_16:

      v46 = v79;
      v93 = *(v79 + 232);
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v48 = [objc_opt_self() bundleForClass_];
      v74 = 0xE000000000000000;
      v49 = sub_20C132964();
      v51 = v50;

      v52 = v88;
      sub_20C135AA4();
      v53 = sub_20C134324();
      v55 = v54;
      v89(v11, v90);
      v56 = type metadata accessor for RemoveUpNextQueueShareSheetActivity();
      v57 = objc_allocWithZone(v56);
      v58 = &v57[OBJC_IVAR____TtC9SeymourUI35RemoveUpNextQueueShareSheetActivity_title];
      *v58 = v49;
      v58[1] = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
      sub_20C133AA4();
      sub_20B51C710(&v95, &v57[OBJC_IVAR____TtC9SeymourUI35RemoveUpNextQueueShareSheetActivity_upNextQueueClient]);
      v59 = &v57[OBJC_IVAR____TtC9SeymourUI35RemoveUpNextQueueShareSheetActivity_workoutIdentifier];
      *v59 = v53;
      v59[1] = v55;
      v94.receiver = v57;
      v94.super_class = v56;
      v60 = objc_msgSendSuper2(&v94, sel_init);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_20C14F580;
      *(v61 + 32) = v60;
LABEL_21:
      v69 = v77;
      v71 = *(v46 + 464);
      v70 = *(v46 + 472);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_20C14F980;
      *(v72 + 56) = &type metadata for ShareSheetActivityItem;
      *(v72 + 32) = v71;
      *(v72 + 40) = v70;
      *(v72 + 48) = 2;
      v73 = swift_allocObject();
      *(v73 + 16) = v72;
      *(v73 + 24) = v61;

      sub_20C137CA4();
      return (*(v78 + 8))(v52, v69);
    }

    ++v33;
    v34 = sub_20C13DFF4();

    v4 = v36;
    result = (*v86)(v93, v36);
    if (v34)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B62E188()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;

  return sub_20C137CA4();
}

uint64_t sub_20B62E1EC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v4 = sub_20C135AE4();
  v5 = *(v4 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v7;
  v26 = sub_20C1371C4();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_20C132964();
  v12 = v11;

  v13 = *(a1 + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_upNextQueueItems);
  v14 = *(v5 + 16);
  v15 = v7;
  v16 = v4;
  v14(v15, v25, v4);
  QueueShareSheetActivity = type metadata accessor for AddUpNextQueueShareSheetActivity();
  v18 = objc_allocWithZone(QueueShareSheetActivity);
  v19 = &v18[OBJC_IVAR____TtC9SeymourUI32AddUpNextQueueShareSheetActivity_title];
  *v19 = v10;
  v19[1] = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v29, &v18[OBJC_IVAR____TtC9SeymourUI32AddUpNextQueueShareSheetActivity_upNextQueueClient]);
  *&v18[OBJC_IVAR____TtC9SeymourUI32AddUpNextQueueShareSheetActivity_upNextQueueItems] = v13;
  v20 = v23;
  v14(&v18[OBJC_IVAR____TtC9SeymourUI32AddUpNextQueueShareSheetActivity_workoutDetail], v23, v16);
  *&v18[OBJC_IVAR____TtC9SeymourUI32AddUpNextQueueShareSheetActivity_workoutActivityType] = v26;
  v28.receiver = v18;
  v28.super_class = QueueShareSheetActivity;
  v21 = objc_msgSendSuper2(&v28, sel_init);
  result = (*(v24 + 8))(v20, v16);
  *v27 = v21;
  return result;
}

uint64_t sub_20B62E4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_20C137C94();
}

void sub_20B62E56C(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v6);
  v4 = v6[0];
  v5 = v6[1];
  v7 = 0;
  a1(v6);

  sub_20B62E744(v4, v5, 0);
}

uint64_t sub_20B62E6CC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_20B62E744(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20B62E790(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20B62E7D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20B62E858(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B62E920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B62E990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B62EA94(unint64_t a1)
{
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 6uLL:
    case 0xDuLL:
    case 0x11uLL:
    case 0x15uLL:
    case 0x1AuLL:
    case 0x26uLL:
    case 0x37uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x43uLL:
      return type metadata accessor for TVFilterOptionsCell();
    case 7uLL:
      return type metadata accessor for TVDetailDescriptionHeaderCell();
    case 9uLL:
      return type metadata accessor for TVDetailHeaderCell();
    case 0xAuLL:
      return type metadata accessor for TVDetailSummaryTextCell();
    case 0xEuLL:
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20))
      {
        return type metadata accessor for ContentUnavailableCell();
      }

      else
      {
        return type metadata accessor for ContentUnavailableFixedHeightCell();
      }

    case 0xFuLL:
      return type metadata accessor for TVEditorialCollectionDetailHeaderCell();
    case 0x16uLL:
      return type metadata accessor for TVFilterResultDetailHeaderCell();
    case 0x17uLL:
      return type metadata accessor for TVFilterResultActionsCell();
    case 0x18uLL:
      return type metadata accessor for TVFullScreenMessageCell();
    case 0x19uLL:
      return type metadata accessor for TVGalleryHeaderCell();
    case 0x1CuLL:
    case 0x39uLL:
      return sub_20B62EA94(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20));
    case 0x1EuLL:
      v3 = &unk_27C7677D0;
      goto LABEL_31;
    case 0x1FuLL:
      v3 = &qword_27C762B80;
LABEL_31:
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
      v5 = swift_projectBox();
      v6 = (v7 + 64);
      goto LABEL_32;
    case 0x20uLL:
      v2 = &unk_27C772250;
      goto LABEL_29;
    case 0x21uLL:
      v2 = &qword_27C762B28;
      goto LABEL_29;
    case 0x25uLL:
      return type metadata accessor for TVMetadataSectionCell();
    case 0x29uLL:
      return type metadata accessor for TVMusicTrackCell();
    case 0x2AuLL:
      return type metadata accessor for TVMyLibraryEntryCell();
    case 0x32uLL:
      return type metadata accessor for TVRootShowcaseCarouselContainerCell();
    case 0x33uLL:
      return type metadata accessor for TVGallerySectionSeparatorShelf();
    case 0x3EuLL:
      return type metadata accessor for TVQueueListHeaderCell();
    case 0x3FuLL:
      return type metadata accessor for TVQueueEmptyListCell();
    case 0x45uLL:
      return type metadata accessor for TVWorkoutPlanBannerCell();
    case 0x48uLL:
      return type metadata accessor for TVWorkoutPlanGalleryBrickCell();
    case 0x49uLL:
      return type metadata accessor for TVWorkoutPlanDetailHeaderCell();
    case 0x4AuLL:
      v2 = &unk_27C762A70;
LABEL_29:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
      v5 = swift_projectBox();
      v6 = (v4 + 48);
LABEL_32:
      result = sub_20B62F0D0(*(v5 + *v6));
      break;
    case 0x4DuLL:
      result = type metadata accessor for LoadingCell();
      break;
    default:
      result = sub_20C093BC8(a1);
      break;
  }

  return result;
}

uint64_t sub_20B62ED98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C151800;
  *(v0 + 32) = type metadata accessor for ContentUnavailableCell();
  *(v0 + 40) = &off_2822AB5D8;
  *(v0 + 48) = type metadata accessor for ContentUnavailableFixedHeightCell();
  *(v0 + 56) = &off_282299970;
  *(v0 + 64) = type metadata accessor for FallbackCell();
  *(v0 + 72) = &off_2822B7120;
  *(v0 + 80) = type metadata accessor for LoadingCell();
  *(v0 + 88) = &off_282307F40;
  *(v0 + 96) = type metadata accessor for TVProgramBrickItemCell();
  *(v0 + 104) = &off_2822E74E8;
  *(v0 + 112) = type metadata accessor for TVStandardBrickRowCell();
  *(v0 + 120) = &off_2822DABE8;
  *(v0 + 128) = type metadata accessor for TVCircleItemCell();
  *(v0 + 136) = &off_2822B6F00;
  *(v0 + 144) = type metadata accessor for TVDetailSummaryTextCell();
  *(v0 + 152) = &off_2822CF278;
  *(v0 + 160) = type metadata accessor for TVDynamicBrickItemCell();
  *(v0 + 168) = &off_2822B43E0;
  *(v0 + 176) = type metadata accessor for TVEditorialCollectionBrickItemCell();
  *(v0 + 184) = &off_2822D0C70;
  *(v0 + 192) = type metadata accessor for TVEditorialCollectionDetailHeaderCell();
  *(v0 + 200) = &off_2822A3138;
  *(v0 + 208) = type metadata accessor for TVFilterResultActionsCell();
  *(v0 + 216) = &off_282296340;
  *(v0 + 224) = type metadata accessor for TVFilterResultDetailHeaderCell();
  *(v0 + 232) = &off_2822ABD08;
  *(v0 + 240) = type metadata accessor for TVFilterOptionsCell();
  *(v0 + 248) = &off_2822B4178;
  *(v0 + 256) = type metadata accessor for TVFullScreenMessageCell();
  *(v0 + 264) = &off_2822CE290;
  *(v0 + 272) = type metadata accessor for TVGroupedBrickItemCell();
  *(v0 + 280) = &off_2822994B0;
  *(v0 + 288) = type metadata accessor for TVIndexedBrickItemCell();
  *(v0 + 296) = &off_2822F1AF0;
  *(v0 + 304) = type metadata accessor for TVMetadataSectionCell();
  *(v0 + 312) = &off_282297878;
  *(v0 + 320) = type metadata accessor for TVStandardBrickItemCell();
  *(v0 + 328) = &off_282298410;
  *(v0 + 336) = type metadata accessor for TVModalityBrickItemCell();
  *(v0 + 344) = &off_2822AB758;
  *(v0 + 352) = type metadata accessor for TVMusicTrackCell();
  *(v0 + 360) = &off_2822B7D28;
  *(v0 + 368) = type metadata accessor for TVRootShowcaseCarouselContainerCell();
  *(v0 + 376) = &off_2822AA1C0;
  *(v0 + 384) = type metadata accessor for TVDetailDescriptionHeaderCell();
  *(v0 + 392) = &off_2822F80F8;
  *(v0 + 400) = type metadata accessor for TVDetailHeaderCell();
  *(v0 + 408) = &off_2822B7BA8;
  *(v0 + 416) = type metadata accessor for TVQueueEmptyListCell();
  *(v0 + 424) = &off_2822CBE08;
  *(v0 + 432) = type metadata accessor for TVQueueListCell();
  *(v0 + 440) = &off_2822B3BE8;
  *(v0 + 448) = type metadata accessor for TVQueueListHeaderCell();
  *(v0 + 456) = &off_2822FC478;
  *(v0 + 464) = type metadata accessor for TVWorkoutPlanBannerCell();
  *(v0 + 472) = &off_2822E4888;
  *(v0 + 480) = type metadata accessor for TVWorkoutPlanBrickItemCell();
  *(v0 + 488) = &off_2822CB8C8;
  *(v0 + 496) = type metadata accessor for TVMyLibraryEntryCell();
  *(v0 + 504) = &off_2822B8730;
  *(v0 + 512) = type metadata accessor for TVWorkoutPlanDetailHeaderCell();
  *(v0 + 520) = &off_2822F4670;
  *(v0 + 528) = type metadata accessor for TVWorkoutPlanShowcaseBrickItemCell();
  *(v0 + 536) = &off_2822BE070;
  *(v0 + 544) = type metadata accessor for TVGalleryHeaderCell();
  *(v0 + 552) = &off_2822E3F48;
  *(v0 + 560) = type metadata accessor for TVGallerySectionSeparatorShelf();
  *(v0 + 568) = &off_2822CA778;
  *(v0 + 576) = type metadata accessor for TVWorkoutPlanGalleryBrickCell();
  *(v0 + 584) = &off_2822A6AA0;
  *(v0 + 592) = type metadata accessor for TVPlaylistBrickRowCell();
  *(v0 + 600) = &off_2822D7008;
  return v0;
}

uint64_t sub_20B62F0D0(char a1)
{
  switch(a1)
  {
    case 5:
    case 13:
      result = type metadata accessor for TVGroupedBrickItemCell();
      break;
    case 6:
      result = type metadata accessor for TVCircleItemCell();
      break;
    case 8:
    case 11:
    case 28:
    case 29:
    case 34:
      result = type metadata accessor for TVStandardBrickRowCell();
      break;
    case 9:
    case 31:
      result = type metadata accessor for TVDynamicBrickItemCell();
      break;
    case 10:
      result = type metadata accessor for TVEditorialCollectionBrickItemCell();
      break;
    case 14:
    case 16:
    case 26:
      result = type metadata accessor for TVProgramBrickItemCell();
      break;
    case 18:
    case 20:
    case 32:
    case 33:
    case 38:
    case 47:
    case 48:
      result = type metadata accessor for TVStandardBrickItemCell();
      break;
    case 19:
      result = type metadata accessor for TVIndexedBrickItemCell();
      break;
    case 22:
      result = type metadata accessor for TVModalityBrickItemCell();
      break;
    case 25:
      result = type metadata accessor for TVPlaylistBrickRowCell();
      break;
    case 37:
      result = type metadata accessor for TVQueueListCell();
      break;
    case 42:
      result = type metadata accessor for TVWorkoutPlanBrickItemCell();
      break;
    case 45:
      result = type metadata accessor for TVWorkoutPlanShowcaseBrickItemCell();
      break;
    default:
      result = sub_20C093E48(a1);
      break;
  }

  return result;
}

char *sub_20B62F244(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17SessionBufferView_blurView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = type metadata accessor for SessionBlurView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect] = v4;
  v39.receiver = v6;
  v39.super_class = v5;
  v7 = objc_msgSendSuper2(&v39, sel_initWithEffect_, 0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI17SessionBufferView_activityIndicator;
  v9 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v8] = v9;
  *&v1[OBJC_IVAR____TtC9SeymourUI17SessionBufferView_presenter] = a1;
  v38.receiver = v1;
  v38.super_class = type metadata accessor for SessionBufferView();
  v37 = a1;
  v10 = objc_msgSendSuper2(&v38, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *&v37[OBJC_IVAR____TtC9SeymourUI22SessionBufferPresenter_display + 8] = &off_282298F38;
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC9SeymourUI17SessionBufferView_blurView;
  v12 = *&v10[OBJC_IVAR____TtC9SeymourUI17SessionBufferView_blurView];
  v13 = v10;
  [v13 addSubview_];
  v14 = OBJC_IVAR____TtC9SeymourUI17SessionBufferView_activityIndicator;
  [v13 addSubview_];
  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C151850;
  v17 = [*&v10[v11] topAnchor];
  v18 = [v13 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v16 + 32) = v19;
  v20 = [*&v10[v11] leadingAnchor];
  v21 = [v13 leadingAnchor];

  v22 = [v20 constraintEqualToAnchor_];
  *(v16 + 40) = v22;
  v23 = [*&v10[v11] trailingAnchor];
  v24 = [v13 trailingAnchor];

  v25 = [v23 constraintEqualToAnchor_];
  *(v16 + 48) = v25;
  v26 = [*&v10[v11] bottomAnchor];
  v27 = [v13 bottomAnchor];

  v28 = [v26 constraintEqualToAnchor_];
  *(v16 + 56) = v28;
  v29 = [*&v13[v14] centerXAnchor];
  v30 = [v13 centerXAnchor];

  v31 = [v29 constraintEqualToAnchor_];
  *(v16 + 64) = v31;
  v32 = [*&v13[v14] centerYAnchor];
  v33 = [v13 centerYAnchor];

  v34 = [v32 constraintEqualToAnchor_];
  *(v16 + 72) = v34;
  sub_20B5E29D0();
  v35 = sub_20C13CC54();

  [v15 activateConstraints_];

  [v13 setUserInteractionEnabled_];
  return v13;
}

id sub_20B62F738()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionBufferView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B62F7EC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI17SessionBufferView_blurView;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = type metadata accessor for SessionBlurView();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9SeymourUI15SessionBlurView_blurEffect] = v2;
  v8.receiver = v4;
  v8.super_class = v3;
  v5 = objc_msgSendSuper2(&v8, sel_initWithEffect_, 0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC9SeymourUI17SessionBufferView_activityIndicator;
  v7 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B62F908(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_landscapeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_portraitConstraints] = v3;
  v4 = &v1[OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_previousBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760848 != -1)
  {
    swift_once();
  }

  v7 = sub_20C13C914();
  [v6 setText_];

  v8 = [objc_opt_self() preferredFontForTextStyle_];
  [v6 setFont_];

  v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v6 setTextColor_];

  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  [v6 setTextAlignment_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v5] = v6;
  v42.receiver = v1;
  v42.super_class = type metadata accessor for PhoneSessionContinueOnWatchView();
  v10 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + 24) = &off_282298F98;
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_titleLabel;
  v12 = *&v10[OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_titleLabel];
  v13 = v10;
  [v13 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20C151490;
  v15 = [*&v10[v11] leadingAnchor];
  v16 = [v13 leadingAnchor];
  v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:20.0];

  *(v14 + 32) = v17;
  v18 = [*&v10[v11] trailingAnchor];
  v19 = [v13 trailingAnchor];

  v20 = [v18 constraintLessThanOrEqualToAnchor:v19 constant:-20.0];
  *(v14 + 40) = v20;
  *&v13[OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_landscapeConstraints] = v14;

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C151490;
  v22 = [*&v10[v11] leadingAnchor];
  v23 = [v13 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v24 = [v22 constraintEqualToAnchor:v23 constant:*&qword_27C799F40];

  *(v21 + 32) = v24;
  v25 = [*&v10[v11] trailingAnchor];
  v26 = [v13 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v27 = [v25 constraintEqualToAnchor:v26 constant:-*&qword_27C799F50];

  *(v21 + 40) = v27;
  *&v13[OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_portraitConstraints] = v21;

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C151490;
  v29 = [*&v10[v11] centerXAnchor];
  v30 = [v13 centerXAnchor];

  v31 = [v29 constraintEqualToAnchor_];
  *(v28 + 32) = v31;
  v32 = [*&v10[v11] centerYAnchor];
  v33 = [v13 centerYAnchor];

  v34 = [v32 constraintEqualToAnchor_];
  *(v28 + 40) = v34;
  v35 = [v13 traitCollection];

  [v13 bounds];
  v40 = sub_20BF6C784(v35, v36, v37, v38, v39);
  sub_20C078788(v40, v28, 0);

  [v13 setUserInteractionEnabled_];

  [v13 setAlpha_];

  return v13;
}

id sub_20B63008C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneSessionContinueOnWatchView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B630140(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = 0.0;
    if (a2)
    {
      v4 = 1.0;
    }

    v5 = Strong;
    [Strong setAlpha_];
  }
}

void sub_20B6301B0(char a1)
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
  v6[3] = &block_descriptor_4;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:v5 animations:0.2];
  _Block_release(v5);
}

void sub_20B6302CC()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_landscapeConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_portraitConstraints) = v1;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_previousBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtC9SeymourUI31PhoneSessionContinueOnWatchView_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760848 != -1)
  {
    swift_once();
  }

  v5 = sub_20C13C914();
  [v4 setText_];

  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v4 setTextColor_];

  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  [v4 setTextAlignment_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B6305AC()
{
  v1 = v0;
  v57 = *v0;
  v2 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v0[22];
  v62 = v0[21];
  type metadata accessor for LoadingErrorShelf();
  swift_allocObject();
  v61 = v3;

  v5 = sub_20BEFE8F4(v4, 1, 0);

  sub_20C133AA4();
  v60 = v76;
  v6 = *(v0[6] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20C13C734();
  v59 = v6;
  v7 = sub_20C13C724();
  v8 = type metadata accessor for CatalogPageImpressionTracker();
  v9 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v10 = MEMORY[0x277D221C0];
  v9[2] = sub_20C13C6D4();
  v9[3] = v7;
  v9[4] = v10;
  v74 = v8;
  v11 = sub_20B63336C(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v75 = v11;
  v73[0] = v9;
  v12 = type metadata accessor for MetricLocationStore();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F98];
  *(v13 + 16) = MEMORY[0x277D84F90];
  *(v13 + 24) = v15;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v73, v8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v72[3] = v8;
  v72[4] = v11;
  v72[0] = v21;
  v71[3] = v12;
  v71[4] = &off_2822B6968;
  v71[0] = v13;
  v70[0] = v14;
  sub_20BB5D394(0, 1, 0);
  v22 = v70[0];
  v24 = *(v70[0] + 16);
  v23 = *(v70[0] + 24);
  if (v24 >= v23 >> 1)
  {
    sub_20BB5D394((v23 > 1), v24 + 1, 1);
    v22 = v70[0];
  }

  *(v22 + 16) = v24 + 1;
  v25 = v22 + 24 * v24;
  *(v25 + 32) = v5;
  *(v25 + 40) = &off_2822F4EF0;
  *(v25 + 48) = 0;
  sub_20B51CC64(v72, v70);
  sub_20B51CC64(v71, v69);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  v58 = &v56;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v69, v69[3]);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = *v29;
  v37 = *v34;
  v67 = v8;
  v68 = v11;
  v66[0] = v36;
  v64 = v12;
  v65 = &off_2822B6968;
  v63[0] = v37;
  v38 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (&v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v56 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = sub_20BE3AA74(v62, v61, v22, v60, v59, *v42, *v47, 2, v38);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v73);
  v50 = v1[6];
  v1[6] = v49;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v52 = v1[3];
    ObjectType = swift_getObjectType();
    v74 = v57;
    v75 = &off_282299028;
    v73[0] = v1;
    v54 = v1[6];

    v55 = v54;
    sub_20B76FFF8(v73, v55, ObjectType, v52);

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  return result;
}

uint64_t sub_20B630C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762C08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_20C1361E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  sub_20BEDD53C(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B633304(v10);
    v18 = sub_20C134E24();
    sub_20B63336C(&unk_27C762270, MEMORY[0x277D51210]);
    v19 = swift_allocError();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D51180], v18);
    *(swift_allocObject() + 16) = v19;
    return sub_20C137CA4();
  }

  else
  {
    v37 = v4;
    v38 = v17;
    v22 = v11;
    v39 = v11;
    v23 = *(v12 + 32);
    v23(v17, v10, v22);
    __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
    v36 = v5;
    v24 = v2;
    sub_20C1398E4();
    v25 = v39;
    (*(v12 + 16))(v14, v17, v39);
    v26 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    v23((v27 + v26), v14, v25);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20B6333B4;
    *(v28 + 24) = v27;
    v30 = v40;
    v29 = v41;
    v31 = v37;
    (*(v41 + 16))(v40, v43, v37);
    v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v33 = (v36 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v29 + 32))(v34 + v32, v30, v31);
    v35 = (v34 + v33);
    *v35 = sub_20B58D058;
    v35[1] = v28;

    sub_20C137C94();
    (*(v29 + 8))(v43, v31);
    return (*(v12 + 8))(v38, v39);
  }
}

uint64_t sub_20B631170()
{
  v0 = sub_20C134084();
  v1 = sub_20C1361C4();
  sub_20B7F67B8(v0, v1, v2);
}

uint64_t sub_20B6311EC()
{
  v1[2] = v0;
  v2 = sub_20C1364A4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6312AC, 0, 0);
}

uint64_t sub_20B6312AC()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_workoutPlanClient + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_workoutPlanClient), v2);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_swappableItem + 8);
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_swappableItem + 16);
  v6 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_workoutPlan;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_20B6313A8;
  v8 = v0[5];

  return MEMORY[0x2821ADF28](v8, v4, v5, v1 + v6, v2, v3);
}

uint64_t sub_20B6313A8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20B631658;
  }

  else
  {
    v2 = sub_20B6314BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B6314BC()
{
  v0[8] = *(v0[2] + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_pickerShelf);
  sub_20C13CDA4();
  v0[9] = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B631564, v2, v1);
}

uint64_t sub_20B631564()
{
  v1 = *(v0 + 40);

  sub_20BC52A9C(v1);

  return MEMORY[0x2822009F8](sub_20B6315D8, 0, 0);
}

uint64_t sub_20B6315D8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B631658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B6316BC()
{
  sub_20B583E6C(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  sub_20B58CFB0(*(v0 + 152), *(v0 + 160));

  v1 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_pageType;
  v2 = sub_20C1352F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B63319C(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_swappableItem);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_workoutPlanClient);

  v3 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_workoutPlan;
  v4 = sub_20C133954();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_20B6317F4()
{
  sub_20B6316BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanAlternativesPageDataProvider()
{
  result = qword_27C762BF8;
  if (!qword_27C762BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B6318A0()
{
  result = sub_20C1352F4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WorkoutPlanSwappableItem();
    if (v2 <= 0x3F)
    {
      result = sub_20C133954();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_20B631A04@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v23 - v12;
  v14 = OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_pageType;
  v15 = sub_20C1352F4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13, v1 + v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  v18 = *(v1 + 152);
  v17 = *(v1 + 160);
  v19 = sub_20C132C14();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = sub_20C135ED4();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21 = sub_20C136914();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);

  sub_20B58C2C8(v18, v17);
  return sub_20C133384();
}

uint64_t sub_20B631D04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v28 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120);
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  MEMORY[0x28223BE20](v9);
  v29 = &v28 - v11;
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_swappableItem + 16);
  *(inited + 32) = *(v0 + OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_swappableItem + 8);
  *(inited + 40) = v13;

  sub_20BE8C2E8(inited);
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  sub_20C139F64();

  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B6331F8;
  *(v14 + 24) = v1;
  v15 = v28;
  v16 = v30;
  (*(v4 + 16))(v28, v8, v30);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v15, v16);
  v19 = (v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_20B6331FC;
  v19[1] = v14;

  v20 = v29;
  sub_20C137C94();
  (*(v4 + 8))(v8, v16);
  v21 = v31;
  v22 = sub_20C137CB4();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v22(sub_20B52347C, v23);

  (*(v32 + 8))(v20, v21);
  v24 = sub_20C13CDF4();
  v25 = v33;
  (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v1;

  sub_20B6383D0(0, 0, v25, &unk_20C151A28, v26);
}

uint64_t sub_20B632180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_20B632214;

  return sub_20B6311EC();
}

uint64_t sub_20B632214()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B632348, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20B632348()
{
  sub_20C13CDA4();
  *(v0 + 40) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B6323DC, v2, v1);
}

uint64_t sub_20B6323DC()
{

  sub_20B6305AC();

  return MEMORY[0x2822009F8](sub_20B63244C, 0, 0);
}

uint64_t sub_20B63244C()
{
  v1 = *(v0 + 8);

  return v1();
}

char *sub_20B63252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v100 = a5;
  v96 = a2;
  v97 = a3;
  v9 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C133954();
  v98 = *(v11 - 8);
  v99 = v11;
  MEMORY[0x28223BE20](v11);
  v92 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutPlanSwappableItem();
  MEMORY[0x28223BE20](v13);
  v90 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C1352F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C135214();
  v94 = *(v19 - 8);
  v95 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 17) = a1;

  sub_20C135C04();
  v22 = v97;
  *(v5 + 19) = v96;
  *(v5 + 20) = v22;
  v23 = v100;
  *(v6 + 21) = sub_20C133874();
  *(v6 + 22) = v24;
  v93 = v21;
  sub_20C133864();
  (*(v16 + 32))(&v6[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_pageType], v18, v15);
  v25 = a4;
  sub_20B633138(a4, &v6[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_swappableItem]);
  v26 = v99;
  v89 = *(v98 + 16);
  v97 = v98 + 16;
  v27 = v23;
  v89(&v6[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_workoutPlan], v23, v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v112, (v6 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v112, (v6 + 96));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v6 + 2) = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(&v112, &v6[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_workoutPlanClient]);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *&v6[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_workoutPlanStringBuilder] = v112;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v6[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_subscriptionToken] = sub_20C13A914();
  v28 = v90;
  sub_20B633138(v25, v90);
  v29 = v92;
  v30 = v26;
  v31 = v26;
  v32 = v89;
  v89(v92, v23, v31);
  type metadata accessor for WorkoutPlanAlternativeDurationPickerShelf();
  swift_allocObject();

  v34 = sub_20B7F73B0(v33, v28, v29);

  *(v6 + 18) = v34;
  v96 = v25;
  sub_20B633138(v25, v28);
  v32(v29, v27, v30);
  type metadata accessor for WorkoutPlanAlternativePickerShelf();
  swift_allocObject();

  v36 = sub_20BC560A4(v35, v28, v29);

  *&v6[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanAlternativesPageDataProvider_pickerShelf] = v36;
  v37 = *(v6 + 22);
  v97 = *(v6 + 21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = *(v6 + 18);
  *(inited + 40) = &off_2822A9330;
  *(inited + 48) = v36;
  *(inited + 56) = &off_2822D8C28;
  v92 = v37;

  sub_20C133AA4();
  LODWORD(v90) = v111;
  v39 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v89 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v39 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v40 = sub_20C13C724();
  v41 = type metadata accessor for CatalogPageImpressionTracker();
  v42 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v43 = MEMORY[0x277D221C0];
  v42[2] = sub_20C13C6D4();
  v42[3] = v40;
  v42[4] = v43;
  v113 = v41;
  v44 = sub_20B63336C(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v114 = v44;
  *&v112 = v42;
  v45 = type metadata accessor for MetricLocationStore();
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F98];
  *(v46 + 16) = MEMORY[0x277D84F90];
  *(v46 + 24) = v48;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(&v112, v41);
  v50 = MEMORY[0x28223BE20](v49);
  v52 = (&v88 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52, v50);
  v54 = *v52;
  v91 = v44;
  v110[3] = v41;
  v110[4] = v44;
  v55 = v45;
  v110[0] = v54;
  v109[3] = v45;
  v109[4] = &off_2822B6968;
  v109[0] = v46;
  v108[0] = v47;
  sub_20BB5D394(0, 2, 0);
  v56 = v108[0];
  v58 = *(v108[0] + 16);
  v57 = *(v108[0] + 24);
  v88 = *(inited + 32);
  swift_unknownObjectRetain();
  if (v58 >= v57 >> 1)
  {
    sub_20BB5D394((v57 > 1), v58 + 1, 1);
    v56 = v108[0];
  }

  *(v56 + 16) = v58 + 1;
  v59 = v56 + 24 * v58;
  *(v59 + 32) = v88;
  *(v59 + 48) = 0;
  swift_unknownObjectRetain();

  v61 = *(v56 + 16);
  v60 = *(v56 + 24);
  if (v61 >= v60 >> 1)
  {
    sub_20BB5D394((v60 > 1), v61 + 1, 1);
    v56 = v108[0];
  }

  *(v56 + 16) = v61 + 1;
  v62 = v56 + 24 * v61;
  *(v62 + 32) = v36;
  *(v62 + 40) = &off_2822D8C28;
  *(v62 + 48) = 0;
  sub_20B51CC64(v110, v108);
  sub_20B51CC64(v109, v107);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v108, v108[3]);
  *&v88 = &v88;
  v64 = MEMORY[0x28223BE20](v63);
  v66 = (&v88 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66, v64);
  v68 = __swift_mutable_project_boxed_opaque_existential_1(v107, v107[3]);
  v69 = MEMORY[0x28223BE20](v68);
  v71 = (&v88 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71, v69);
  v73 = *v66;
  v74 = *v71;
  v105 = v41;
  v106 = v91;
  v104[0] = v73;
  v102 = v55;
  v103 = &off_2822B6968;
  v101[0] = v74;
  v75 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v76 = __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  v77 = MEMORY[0x28223BE20](v76);
  v79 = (&v88 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v80 + 16))(v79, v77);
  v81 = __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
  v82 = MEMORY[0x28223BE20](v81);
  v84 = (&v88 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v85 + 16))(v84, v82);
  v86 = sub_20BE3AA74(v97, v92, v56, v90, v89, *v79, *v84, 2, v75);
  (*(v98 + 8))(v100, v99);
  sub_20B63319C(v96);
  (*(v94 + 8))(v93, v95);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(&v112);
  *(v6 + 6) = v86;
  return v6;
}

uint64_t sub_20B633138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanSwappableItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B63319C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanSwappableItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B633250(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B632180(a1, v4, v5, v6);
}

uint64_t sub_20B633304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B63336C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B63345C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

CGPoint __swiftcall PolarPoint.cartesianPointInUIKitCoordinates(of:)(__C::CGRect of)
{
  v2 = *(v1 + 8);
  sub_20C13D4E4();
  __sincos_stret(v2);

  sub_20C13D594();
  result.y = v4;
  result.x = v3;
  return result;
}

void PolarPoint.init(cartesianPoint:)(double *a1@<X8>, long double a2@<D0>, long double a3@<D1>)
{
  v4 = sqrt(a2 * a2 + a3 * a3);
  v5 = atan2(a3, a2);
  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_20B6336A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20B6336E8(uint64_t result, int a2, int a3)
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

double sub_20B633740()
{
  v0 = MTLCreateSystemDefaultDevice();
  sub_20B633784(v0, v2);
  result = *v2;
  xmmword_27C799A18 = v2[0];
  *algn_27C799A28 = v2[1];
  qword_27C799A38 = v3;
  return result;
}

uint64_t sub_20B633784@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = [swift_unknownObjectRetain() newCommandQueue];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for MetalBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      v25[0] = 0;
      v12 = [a1 newDefaultLibraryWithBundle:v11 error:v25];

      v13 = v25[0];
      if (v12)
      {
        swift_unknownObjectRelease();
        v14 = objc_allocWithZone(MEMORY[0x277CD71F0]);
        swift_unknownObjectRetain();
        v15 = [v14 initWithDevice_];
        v16 = [a1 supportsFamily_];
        result = swift_unknownObjectRelease();
        v18 = v16;
        goto LABEL_10;
      }

      v19 = v13;
      v20 = sub_20C132A44();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_20C13B4F4();
  v21 = sub_20C13BB74();
  v22 = sub_20C13D1D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20B517000, v21, v22, "Failed to create context", v23, 2u);
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  swift_unknownObjectRelease();
  result = (*(v5 + 8))(v7, v4);
  v9 = 0;
  a1 = 0;
  v18 = 0;
  v15 = 0;
  v12 = 0;
LABEL_10:
  *a2 = v9;
  a2[1] = a1;
  a2[2] = v18;
  a2[3] = v15;
  a2[4] = v12;
  return result;
}

id sub_20B633A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_20C13C914();
  v9 = [a7 newFunctionWithName_];

  v10 = sub_20C13C914();
  v11 = [a7 newFunctionWithName_];

  v12 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  v13 = sub_20C13C914();
  [v12 setLabel_];

  [v12 setVertexFunction_];
  [v12 setFragmentFunction_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

void sub_20B633B4C()
{
  v1 = sub_20C13C554();
  v50 = *(v1 - 8);
  v51 = v1;
  MEMORY[0x28223BE20](v1);
  v49 = (&v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_20C138094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_mediaTagStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_mediaTagStringBuilder + 24));
  sub_20C135924();
  v7 = sub_20C138544();

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = v7;
  v10 = sub_20C135924();
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v53 = v8;
    v54 = v9;
    *&v66[0] = MEMORY[0x277D84F90];
    sub_20B526D44(0, v11, 0);
    v13 = *&v66[0];
    v14 = *(v4 + 80);
    v52 = v10;
    v15 = v10 + ((v14 + 32) & ~v14);
    v56 = *(v4 + 72);
    do
    {
      sub_20B634348(v15, v6);
      v16 = MediaTag.accessibilityIdentifier.getter();
      v18 = v17;
      sub_20B6343AC(v6);
      *&v66[0] = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_20B526D44((v19 > 1), v20 + 1, 1);
        v13 = *&v66[0];
      }

      *(v13 + 16) = v20 + 1;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v15 += v56;
      --v11;
    }

    while (v11);

    v8 = v53;
    v9 = v54;
    v12 = MEMORY[0x277D84F90];
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  *(v8 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C14F980;
  *(v22 + 32) = v8 | 0x6000000000000001;
  v57 = 0uLL;
  LOBYTE(v58) = 1;
  *(&v58 + 1) = 0;
  *&v59 = 0;
  WORD4(v59) = 128;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = v22;
  *&v64[0] = v12;
  *(v64 + 8) = 0u;
  *(&v64[1] + 8) = 0u;
  *(&v64[2] + 1) = 0;
  v65 = 2;
  nullsub_1(&v57);
  v23 = v55;
  v24 = v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row;
  v25 = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 144);
  v66[8] = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 128);
  v66[9] = v25;
  v67 = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 160);
  v26 = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 80);
  v66[4] = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 64);
  v66[5] = v26;
  v27 = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 112);
  v66[6] = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 96);
  v66[7] = v27;
  v28 = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 16);
  v66[0] = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row);
  v66[1] = v28;
  v29 = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 48);
  v66[2] = *(v55 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 32);
  v66[3] = v29;
  v30 = v64[2];
  *(v24 + 128) = v64[1];
  *(v24 + 144) = v30;
  *(v24 + 160) = v65;
  v31 = v62;
  *(v24 + 64) = v61;
  *(v24 + 80) = v31;
  v32 = v64[0];
  *(v24 + 96) = v63;
  *(v24 + 112) = v32;
  v33 = v58;
  *v24 = v57;
  *(v24 + 16) = v33;
  v34 = v60;
  *(v24 + 32) = v59;
  *(v24 + 48) = v34;

  sub_20B634408(v66);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v36 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {

LABEL_15:

    swift_unknownObjectRelease();
    return;
  }

  v54 = v9;
  v37 = sub_20B61D2F8(v23, Strong);
  if (!v38)
  {
    sub_20C0C2D50(0);

    goto LABEL_15;
  }

  v40 = v37;
  v41 = v38;
  v42 = v39;
  v53 = v8;
  sub_20B5E2E18();
  v43 = sub_20C13D374();
  v45 = v49;
  v44 = v50;
  *v49 = v43;
  v46 = v51;
  (*(v44 + 104))(v45, *MEMORY[0x277D85200], v51);
  v47 = sub_20C13C584();
  (*(v44 + 8))(v45, v46);
  if (v47)
  {
    sub_20B620B5C(v40, v41, v42, v23, 1, v36);

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_20B63402C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_mediaTagStringBuilder);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogProgramTagsShelf()
{
  result = qword_27C762C10;
  if (!qword_27C762C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B634174()
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

uint64_t sub_20B634224@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B63429C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23CatalogProgramTagsShelf_row + 32);
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

uint64_t sub_20B634348(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C138094();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B6343AC(uint64_t a1)
{
  v2 = sub_20C138094();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B634408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_20B634470()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_floatingView);
  v2 = v1;
  return v1;
}

char *sub_20B6344A0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_layout];
  sub_20B637C44(v53);
  v12 = v53[5];
  *(v11 + 4) = v53[4];
  *(v11 + 5) = v12;
  *(v11 + 6) = v53[6];
  v13 = v53[1];
  *v11 = v53[0];
  *(v11 + 1) = v13;
  v14 = v53[3];
  *(v11 + 2) = v53[2];
  *(v11 + 3) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_textStackView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v16 setAxis_];
  [v16 setAlignment_];
  [v16 setSpacing_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  v19 = objc_opt_self();
  v20 = *MEMORY[0x277D76920];
  v21 = [v19 preferredFontForTextStyle_];
  [v21 pointSize];
  v23 = v22;

  v24 = [v19 boldSystemFontOfSize_];
  [v18 setFont_];

  v25 = objc_opt_self();
  v26 = [v25 whiteColor];
  [v18 setTextColor_];

  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v17] = v18;
  v27 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_subtitleLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v28 setLineBreakMode_];
  [v28 setNumberOfLines_];
  v29 = [v19 preferredFontForTextStyle_];
  [v28 setFont_];

  v30 = [v25 whiteColor];
  [v28 setTextColor_];

  v31 = v28;
  [v31 setAlpha_];
  [v31 setAdjustsFontForContentSizeCategory_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[v27] = v31;
  v32 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v33 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_floatingView;
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_floatingView] = v32;
  v34 = qword_27C760820;
  v35 = v32;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = qword_27C79ACA0;
  [v35 setCornerRadius_];

  [*&v4[v33] setFocusedSizeIncrease_];
  [*&v4[v33] setContinuousCornerEnabled_];
  [*&v4[v33] setRoundContentWhenDeselected_];
  [*&v4[v33] setContentMotionRotation:0.0 translation:{0.0, *(v11 + 4), *(v11 + 5)}];
  v37 = *&v4[v33];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 configurationWithStyle_];
  [v39 setFocusAnimationConfiguration_];

  [*&v4[v33] setBackgroundColor:*(v11 + 13) forState:0];
  [*&v4[v33] setBackgroundColor:*(v11 + 12) forState:8];
  [*&v4[v33] setBackgroundColor:*(v11 + 12) forState:4];
  [*&v4[v33] setBackgroundColor:*(v11 + 12) forState:1];
  [*&v4[v33] setShadowOpacity:0 forUserInterfaceStyle:*(v11 + 10)];
  [*&v4[v33] setShadowOpacity:2 forUserInterfaceStyle:*(v11 + 10)];
  [*&v4[v33] setShadowOpacity:1 forUserInterfaceStyle:*(v11 + 10)];
  [*&v4[v33] setShadowVerticalOffset_];
  [*&v4[v33] setShadowRadius_];
  v41 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v41 setClipsToBounds_];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = &v41[OBJC_IVAR____TtC9SeymourUI11ArtworkView_shelfArtworkIconSafeAreaInsets];
  *v42 = v36;
  v42[1] = v36;
  v42[2] = v36;
  v42[3] = v36;
  [*&v41[OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView] setContentMode_];
  v43 = &v4[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView];
  *v43 = v41;
  *(v43 + 1) = &off_2822B63E8;
  v52.receiver = v4;
  v52.super_class = type metadata accessor for TVGroupedBrickItemCell();
  v44 = v41;
  v45 = objc_msgSendSuper2(&v52, sel_initWithFrame_, a1, a2, a3, a4);
  v46 = [v45 contentView];
  v47 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_floatingView;
  [v46 addSubview_];

  result = [*&v45[v47] contentView];
  if (result)
  {
    v49 = result;
    [result addSubview_];

    result = [*&v45[v47] contentView];
    if (result)
    {
      v50 = result;
      v51 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_textStackView;
      [result addSubview_];

      [*&v45[v51] addArrangedSubview_];
      [*&v45[v51] addArrangedSubview_];
      sub_20B634C30();

      return v45;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_20B634C30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20C14FE90;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView];
  v3 = [v2 topAnchor];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_floatingView];
  v5 = [v4 contentView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v4 contentView];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v1 + 40) = v13;
  v14 = [v2 bottomAnchor];
  v15 = [v4 contentView];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v15 bottomAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v1 + 48) = v18;
  v19 = [v2 widthAnchor];
  v20 = &v0[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_layout];
  v21 = [v19 constraintEqualToConstant_];

  *(v1 + 56) = v21;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150050;
  v23 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_textStackView];
  v24 = [v23 centerYAnchor];
  v25 = [v2 centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-v20[6]];

  *(inited + 32) = v26;
  v27 = [v23 leadingAnchor];
  v28 = [v2 trailingAnchor];
  v29 = *v20;
  v30 = [v27 constraintEqualToAnchor:v28 constant:*v20];

  *(inited + 40) = v30;
  v31 = [v23 trailingAnchor];
  v32 = [v4 contentView];
  if (!v32)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v33 = v32;
  v34 = [v32 trailingAnchor];

  v35 = [v31 constraintEqualToAnchor:v34 constant:-v29];
  *(inited + 48) = v35;
  v36 = [v23 topAnchor];
  v37 = [v4 contentView];
  if (!v37)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = [v36 constraintGreaterThanOrEqualToAnchor_];
  *(inited + 56) = v40;
  v41 = [v23 bottomAnchor];
  v42 = [v4 contentView];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 bottomAnchor];

    v45 = [v41 constraintLessThanOrEqualToAnchor_];
    *(inited + 64) = v45;
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_20C151490;
    v47 = [v0 contentView];
    v48 = [v47 widthAnchor];

    v49 = [v48 constraintEqualToConstant_];
    *(v46 + 32) = v49;
    v50 = [v0 contentView];
    v51 = [v50 heightAnchor];

    v52 = [v51 constraintEqualToConstant_];
    *(v46 + 40) = v52;
    v53 = objc_opt_self();
    sub_20B8D9310(inited);
    sub_20B8D9310(v46);
    sub_20B51C88C(0, &qword_281100500);
    v54 = sub_20C13CC54();

    [v53 activateConstraints_];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_20B635470(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &unk_27C799000;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v7 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v7, v10);
        }

        else
        {
          if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v10 + 8 * v7 + 32);
        }

        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v12);

        ++v7;
        if (v13 == i)
        {
          v14 = v24[0];
          v7 = 0x27C799000;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v14;
    sub_20B6FFB30(v24, *&v3[*(v7 + 2672)]);

    v15 = sub_20B8E9218(v28);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v7;
      v18 = v15 + 32;
      do
      {
        sub_20B51CC64(v18, v24);
        v19 = *&v3[v6];
        v20 = v25;
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v21 + 16))(v19, a2 & 1, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v18 += 40;
        --v16;
      }

      while (v16);

      v5 = a1;
      v7 = v17;
    }

    else
    {

      v5 = a1;
    }
  }

  return [*&v3[*(v7 + 2672)] setControlState:v5 animated:a2 & 1];
}

id sub_20B6356F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &unk_27C799000;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    v23[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v26, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = v23[0];
          v7 = &unk_27C799000;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v27 = v14;
    sub_20B6FFB30(v23, *&v3[v7[334]]);

    v15 = sub_20B8E9218(v27);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, v23);
        v18 = *&v3[v6];
        v19 = v24;
        v20 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v20 + 24))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  return [*&v3[v7[334]] setControlState:v5 withAnimationCoordinator:a2];
}

void sub_20B635968(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = [a1 nextFocusedView];
  if (v5)
  {
    v6 = v5;
    sub_20B51C88C(0, &qword_27C7654B0);
    v7 = &unk_27C799000;
    if ((sub_20C13D5F4() & 1) != 0 || [v6 isDescendantOfView_])
    {
      v8 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
      v9 = *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState];
      v10 = v9 | 8;
      if (v9 != (v9 | 8))
      {
        v37 = v9 | 8;
        v38 = v6;
        *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = v10;
        v11 = [v2 contentView];
        v12 = [v11 subviews];

        sub_20B51C88C(0, &qword_27C762910);
        v13 = sub_20C13CC74();

        v39[0] = MEMORY[0x277D84FA0];
        if (v13 >> 62)
        {
          goto LABEL_30;
        }

        for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
        {
          v15 = 0;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x20F2F5430](v15, v13);
            }

            else
            {
              if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v16 = *(v13 + 8 * v15 + 32);
            }

            v7 = (v15 + 1);
            if (__OFADD__(v15, 1))
            {
              break;
            }

            sub_20B6FFB30(&v42, v16);

            ++v15;
            if (v7 == i)
            {
              v23 = v39[0];
              v7 = &unk_27C799000;
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          ;
        }

        v23 = MEMORY[0x277D84FA0];
LABEL_32:

        v43 = v23;
        sub_20B6FFB30(v39, *&v3[v7[334]]);

        v25 = sub_20B8E9218(v43);

        v26 = *(v25 + 16);
        if (v26)
        {
          v27 = v25 + 32;
          do
          {
            sub_20B51CC64(v27, v39);
            v28 = *&v3[v8];
            v29 = v40;
            v30 = v41;
            __swift_project_boxed_opaque_existential_1(v39, v40);
            (*(v30 + 24))(v28, a2, v29, v30);
            __swift_destroy_boxed_opaque_existential_1(v39);
            v27 += 40;
            --v26;
          }

          while (v26);
        }

        goto LABEL_41;
      }

LABEL_42:
      [*&v3[v7[334]] setControlState:v10 withAnimationCoordinator:a2];

      return;
    }

    v8 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
    v17 = *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState];
    v10 = v17 & 0xFFFFFFFFFFFFFFF7;
    if (v17 == (v17 & 0xFFFFFFFFFFFFFFF7))
    {
      goto LABEL_42;
    }

    v37 = v17 & 0xFFFFFFFFFFFFFFF7;
    v38 = v6;
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = v10;
    v18 = [v2 contentView];
    v19 = [v18 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v13 = sub_20C13CC74();

    v39[0] = MEMORY[0x277D84FA0];
    if (v13 >> 62)
    {
      v20 = sub_20C13DB34();
      if (v20)
      {
LABEL_18:
        v21 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x20F2F5430](v21, v13);
          }

          else
          {
            if (v21 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v22 = *(v13 + 8 * v21 + 32);
          }

          v7 = (v21 + 1);
          if (__OFADD__(v21, 1))
          {
            goto LABEL_28;
          }

          sub_20B6FFB30(&v42, v22);

          ++v21;
        }

        while (v7 != v20);
        v24 = v39[0];
        v7 = &unk_27C799000;
        goto LABEL_38;
      }
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_18;
      }
    }

    v24 = MEMORY[0x277D84FA0];
LABEL_38:

    v43 = v24;
    sub_20B6FFB30(v39, *&v3[v7[334]]);

    v31 = sub_20B8E9218(v43);

    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v31 + 32;
      do
      {
        sub_20B51CC64(v33, v39);
        v34 = *&v3[v8];
        v35 = v40;
        v36 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        (*(v36 + 24))(v34, a2, v35, v36);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v33 += 40;
        --v32;
      }

      while (v32);
    }

LABEL_41:

    v10 = v37;
    v6 = v38;
    goto LABEL_42;
  }
}

void sub_20B635ED8()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_itemInfo, &qword_27C762550);
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_layout + 96);

  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_subtitleLabel);
}

id sub_20B635F98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVGroupedBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVGroupedBrickItemCell()
{
  result = qword_27C762C28;
  if (!qword_27C762C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B6360E8()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
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

uint64_t sub_20B6361D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B636218(uint64_t result, int a2, int a3)
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
      *(result + 96) = (a2 - 1);
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

id sub_20B636284(unint64_t a1, char a2)
{
  while (1)
  {
    v2 = a2;
    v3 = a1;
    v4 = sub_20C13BB84();
    v216 = *(v4 - 8);
    MEMORY[0x28223BE20](v4);
    v6 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
    v199 = *(v200 - 8);
    MEMORY[0x28223BE20](v200);
    v196 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v8);
    v197 = &v171 - v9;
    v195 = v10;
    MEMORY[0x28223BE20](v11);
    v198 = &v171 - v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
    MEMORY[0x28223BE20](v13 - 8);
    v15 = &v171 - v14;
    v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
    v206 = *(v209 - 8);
    MEMORY[0x28223BE20](v209);
    v194 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v193 = v16;
    MEMORY[0x28223BE20](v17);
    v207 = &v171 - v18;
    v205 = sub_20C1391C4();
    v204 = *(v205 - 1);
    MEMORY[0x28223BE20](v205);
    v20 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v202 = sub_20C138A64();
    v201 = *(v202 - 8);
    MEMORY[0x28223BE20](v202);
    v208 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
    MEMORY[0x28223BE20](v22 - 8);
    v203 = &v171 - v23;
    v24 = sub_20C13C554();
    v214 = *(v24 - 8);
    v215 = v24;
    MEMORY[0x28223BE20](v24);
    v26 = (&v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = sub_20C137C24();
    v219 = *(v27 - 8);
    MEMORY[0x28223BE20](v27);
    v210 = v28;
    v211 = &v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v29);
    v220 = &v171 - v30;
    v31 = sub_20C136CD4();
    v212 = *(v31 - 8);
    v213 = v31;
    MEMORY[0x28223BE20](v31);
    v217 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = sub_20C134E44();
    MEMORY[0x28223BE20](v33 - 8);
    v218 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = sub_20C134014();
    v36 = *(v35 - 8);
    MEMORY[0x28223BE20](v35);
    v39 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = (v3 >> 57) & 0x78 | v3 & 7;
    if (v40 != 28)
    {
      break;
    }

    a1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x20);
    a2 = v2 & 1;
  }

  if (v40 == 33)
  {
    v116 = v221;
    v117 = *&v221[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_titleLabel];
    v118 = sub_20C13C914();
    [v117 setText_];

    v119 = *&v116[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_subtitleLabel];
    v120 = sub_20C13C914();
    [v119 setText_];

    v121 = *&v116[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView];
    if (qword_27C760828 != -1)
    {
      v170 = *&v116[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView];
      swift_once();
      v121 = v170;
    }

    v122 = qword_27C79AE50;

    return [v121 setBackgroundColor_];
  }

  else if (v40 == 32)
  {
    v178 = v20;
    v179 = v15;
    v192 = v27;
    v41 = v37;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v43 = swift_projectBox();
    v44 = v43 + *(v42 + 64);
    v45 = *v44;
    v46 = *(v44 + 8);
    v48 = *(v44 + 16);
    v47 = *(v44 + 24);
    v50 = *(v44 + 32);
    v49 = *(v44 + 40);
    v189 = v36;
    v51 = *(v36 + 16);
    v190 = v41;
    v51(v39, v43, v41);
    v52 = v221;
    v216 = *&v221[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_titleLabel];
    v53 = v45;
    v54 = v46;
    v183 = v48;
    v187 = v47;
    v55 = v50;

    v185 = v49;

    v186 = v53;
    [v216 setAttributedText_];
    v56 = *&v52[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_subtitleLabel];
    v184 = v54;
    [v56 setAttributedText_];
    v57 = sub_20C133EB4() > 0;
    v58 = *&v52[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView];
    v59 = *&v52[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView + 8];
    ObjectType = swift_getObjectType();
    (*(v59 + 264))(v57, ObjectType, v59);
    v61 = sub_20C133E54();
    v62 = *(v59 + 296);
    v180 = ObjectType;
    v62(v61);

    v63 = v218;
    v188 = v39;
    sub_20C133F04();
    v182 = sub_20C138054();
    v216 = v64;
    v65 = v217;
    sub_20C134E34();
    v66 = v220;
    sub_20C136CB4();
    v181 = sub_20C136CC4();
    v191 = v67;
    sub_20B51C88C(0, &qword_281100530);
    *v26 = sub_20C13D374();
    v69 = v214;
    v68 = v215;
    (*(v214 + 104))(v26, *MEMORY[0x277D85200], v215);
    LOBYTE(v57) = sub_20C13C584();
    result = (*(v69 + 8))(v26, v68);
    if (v57)
    {
      [v58 setContentMode_];
      v71 = v66;
      if (sub_20BA66C54(v66, v58, v59, 0))
      {
        v215 = v55;
        v72 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v73 = v219;
        v74 = *(v219 + 16);
        v75 = v71;
        v76 = v211;
        v175 = v219 + 16;
        v174 = v74;
        v74(v211, v75, v192);
        v77 = *(v73 + 80);
        v78 = (v77 + 24) & ~v77;
        v172 = v210 + 7;
        v79 = (v210 + 7 + v78) & 0xFFFFFFFFFFFFFFF8;
        v80 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
        v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
        v214 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
        v177 = (v81 + 31) & 0xFFFFFFFFFFFFFFF8;
        v176 = v77;
        v82 = swift_allocObject();
        *(v82 + 16) = v72;
        v83 = v76;
        v84 = v73 + 32;
        v173 = *(v73 + 32);
        v173(v82 + v78, v83, v192);
        v85 = (v82 + v79);
        v86 = v191;
        *v85 = v181;
        v85[1] = v86;
        v87 = (v82 + v80);
        v88 = v216;
        *v87 = v182;
        v87[1] = v88;
        *(v82 + v81) = 2;
        v89 = v82 + v214;
        *v89 = MEMORY[0x277D84F90];
        *(v89 + 8) = 0;
        v90 = (v82 + v177);
        *v90 = 0;
        v90[1] = 0;
        v91 = *(v59 + 152);

        v92 = v180;
        v91(sub_20B6379FC, v82, v180, v59);

        [v58 bounds];
        if (v93 <= 0.0 || (v95 = v94, v94 <= 0.0))
        {

          v115 = v192;
          v134 = v213;
          v71 = v220;
        }

        else
        {
          v96 = v93;
          v97 = v59;
          v214 = ~v176;
          (*(v59 + 120))(0, v92, v59);
          v98 = v203;
          v177 = v84;
          v71 = v220;
          v99 = v192;
          v174(v203, v220, v192);
          (*(v219 + 56))(v98, 0, 1, v99);
          (*(v97 + 16))(v98, v92, v97);
          sub_20B51C88C(0, &qword_27C762070);
          v100 = v211;
          sub_20C137BC4();
          v101 = sub_20C13D5A4();
          [v58 setBackgroundColor_];

          (*(v97 + 176))(COERCE_DOUBLE(*&v96), COERCE_DOUBLE(*&v95), 0, v92, v97);
          v102 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v103 = v174;
          v174(v100, v71, v99);
          v104 = (v176 + 16) & v214;
          v105 = (v172 + v104) & 0xFFFFFFFFFFFFFFF8;
          v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
          v107 = swift_allocObject();
          v173(v107 + v104, v100, v99);
          *(v107 + v105) = v102;
          v108 = v99;
          v109 = (v107 + v106);
          *v109 = v96;
          v109[1] = v95;
          v203 = v107;
          v110 = (v107 + ((v106 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v110 = 0;
          v110[1] = 0;
          v103(v100, v71, v99);
          (*(v204 + 104))(v178, *MEMORY[0x277D542A8], v205);

          v111 = v208;
          sub_20C138A54();
          v112 = v179;
          sub_20B5F1A78(v111, v179);
          v113 = v206;
          v114 = v209;
          if ((*(v206 + 48))(v112, 1, v209) == 1)
          {
            sub_20B520158(v112, &unk_27C766670);
            sub_20BA1DA28();

            (*(v201 + 8))(v111, v202);
            v115 = v108;
          }

          else
          {
            v136 = *(v113 + 32);
            v204 = v113 + 32;
            v205 = v136;
            v136(v207, v112, v114);
            v137 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v138 = v211;
            v103(v211, v220, v108);
            v139 = v108;
            v140 = (v176 + 40) & v214;
            v141 = v140 + v210;
            v142 = (v140 + v210) & 0xFFFFFFFFFFFFFFF8;
            v143 = swift_allocObject();
            *(v143 + 2) = v137;
            v143[3] = v96;
            v143[4] = v95;
            v173(v143 + v140, v138, v139);
            *(v143 + v141) = 0;
            v144 = v143 + v142;
            *(v144 + 1) = 0;
            *(v144 + 2) = 0;
            v145 = swift_allocObject();
            *(v145 + 16) = sub_20B637B90;
            *(v145 + 24) = v143;
            v146 = v194;
            v147 = v209;
            (*(v113 + 16))(v194, v207, v209);
            v148 = v113;
            v149 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v150 = (v193 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
            v151 = swift_allocObject();
            v205(v151 + v149, v146, v147);
            v152 = (v151 + v150);
            *v152 = sub_20B5F67A4;
            v152[1] = v145;
            v153 = v197;
            sub_20C137C94();
            v154 = swift_allocObject();
            v155 = v203;
            *(v154 + 16) = sub_20B637AD4;
            *(v154 + 24) = v155;
            v156 = swift_allocObject();
            *(v156 + 16) = sub_20B5F67D4;
            *(v156 + 24) = v154;
            v157 = v199;
            v158 = v196;
            v159 = v200;
            (*(v199 + 16))(v196, v153, v200);
            v160 = (*(v157 + 80) + 16) & ~*(v157 + 80);
            v161 = (v195 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
            v162 = swift_allocObject();
            (*(v157 + 32))(v162 + v160, v158, v159);
            v163 = (v162 + v161);
            *v163 = sub_20B5DF204;
            v163[1] = v156;

            v164 = v198;
            sub_20C137C94();
            v165 = *(v157 + 8);
            v165(v153, v159);
            v166 = sub_20C137CB4();
            v167 = swift_allocObject();
            *(v167 + 16) = 0;
            *(v167 + 24) = 0;
            v166(sub_20B52347C, v167);

            v165(v164, v159);
            v71 = v220;
            (*(v148 + 8))(v207, v209);
            (*(v201 + 8))(v208, v202);
            v115 = v192;
          }

          v134 = v213;
        }

        v65 = v217;
        v63 = v218;
        v135 = v212;
      }

      else
      {

        v115 = v192;
        v135 = v212;
        v134 = v213;
      }

      v168 = v186;
      v169 = v184;
      (*(v219 + 8))(v71, v115);
      (*(v135 + 8))(v65, v134);

      sub_20B62A2AC(v63);
      return (*(v189 + 8))(v188, v190);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v123 = v221;
    v124 = sub_20C13BB74();
    v125 = sub_20C13D1D4();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v222 = v3;
      v223 = v128;
      *v126 = 138543618;
      *(v126 + 4) = v123;
      *v127 = v123;
      *(v126 + 12) = 2082;
      v129 = sub_20B5F66D0();
      v130 = v123;
      v131 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v129);
      v133 = sub_20B51E694(v131, v132, &v223);

      *(v126 + 14) = v133;
      _os_log_impl(&dword_20B517000, v124, v125, "Attempted to configure %{public}@ with item: %{public}s", v126, 0x16u);
      sub_20B520158(v127, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v127, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v128);
      MEMORY[0x20F2F6A40](v128, -1, -1);
      MEMORY[0x20F2F6A40](v126, -1, -1);
    }

    return (*(v216 + 1))(v6, v4);
  }

  return result;
}

uint64_t sub_20B6378A8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B6378F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B63794C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B6379FC()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA42D5C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B637AD4(void *a1)
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

  sub_20BA635F0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B637B90(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2E4C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

double sub_20B637C44@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v2 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  *a1 = xmmword_20C151BA0;
  *(a1 + 16) = xmmword_20C151BB0;
  __asm { FMOV            V0.2D, #4.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = xmmword_20C151BC0;
  result = 25.0;
  *(a1 + 64) = xmmword_20C151BD0;
  *(a1 + 80) = xmmword_20C151BE0;
  *(a1 + 96) = v4;
  *(a1 + 104) = v6;
  return result;
}

void sub_20B637D38()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_layout);
  sub_20B637C44(v24);
  v4 = v24[5];
  v3[4] = v24[4];
  v3[5] = v4;
  v3[6] = v24[6];
  v5 = v24[1];
  *v3 = v24[0];
  v3[1] = v5;
  v6 = v24[3];
  v3[2] = v24[2];
  v3[3] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_textStackView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v8 setAxis_];
  [v8 setAlignment_];
  [v8 setSpacing_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  v11 = objc_opt_self();
  v12 = *MEMORY[0x277D76920];
  v13 = [v11 preferredFontForTextStyle_];
  [v13 pointSize];
  v15 = v14;

  v16 = [v11 boldSystemFontOfSize_];
  [v10 setFont_];

  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  [v10 setTextColor_];

  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v19 = OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_subtitleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  v21 = [v11 preferredFontForTextStyle_];
  [v20 setFont_];

  v22 = [v17 whiteColor];
  [v20 setTextColor_];

  v23 = v20;
  [v23 setAlpha_];
  [v23 setAdjustsFontForContentSizeCategory_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v19) = v23;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B6380FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20B63983C(a3, v25 - v10);
  v12 = sub_20C13CDF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20B5245E0(v11);
  }

  else
  {
    sub_20C13CDE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20C13CD24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20C13CA14() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_20B5245E0(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20B5245E0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20B6383D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20B63983C(a3, v25 - v10);
  v12 = sub_20C13CDF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20B5245E0(v11);
  }

  else
  {
    sub_20C13CDE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20C13CD24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20C13CA14() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20B5245E0(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20B5245E0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20B638690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20B63983C(a3, v25 - v10);
  v12 = sub_20C13CDF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20B5245E0(v11);
  }

  else
  {
    sub_20C13CDE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20C13CD24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20C13CA14() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_20B5245E0(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20B5245E0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20B638964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20B63983C(a3, v25 - v10);
  v12 = sub_20C13CDF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20B5245E0(v11);
  }

  else
  {
    sub_20C13CDE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20C13CD24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20C13CA14() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_20B5245E0(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20B5245E0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *CatalogTipPlayerViewController.__allocating_init(presenter:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9SeymourUI30CatalogTipPlayerViewController_presenter] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
  *(*&v4[OBJC_IVAR____TtC9SeymourUI30CatalogTipPlayerViewController_presenter] + 88) = &off_2822996A0;
  swift_unknownObjectWeakAssign();
  return v4;
}

char *CatalogTipPlayerViewController.init(presenter:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC9SeymourUI30CatalogTipPlayerViewController_presenter] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CatalogTipPlayerViewController();
  v2 = objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
  *(*&v2[OBJC_IVAR____TtC9SeymourUI30CatalogTipPlayerViewController_presenter] + 88) = &off_2822996A0;
  swift_unknownObjectWeakAssign();
  return v2;
}

id CatalogTipPlayerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CatalogTipPlayerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id CatalogTipPlayerViewController.__allocating_init(playerLayerView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithPlayerLayerView_];

  return v3;
}

id CatalogTipPlayerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogTipPlayerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B63911C(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 contentOverlayView];
  if (v9)
  {
    v10 = v9;
    v11 = [v2 view];
    if (v11)
    {
      v12 = v11;
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      *(v14 + 24) = a1;
      aBlock[4] = sub_20B639C24;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_5;
      v15 = _Block_copy(aBlock);
      v16 = v10;
      v17 = a1;

      [v13 transitionWithView:v12 duration:5242880 options:v15 animations:0 completion:0.25];
      _Block_release(v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B4D4();
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20B517000, v18, v19, "[CatalogTipPlayerViewController]", v20, 2u);
      MEMORY[0x20F2F6A40](v20, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

id sub_20B63937C()
{
  result = [v0 contentOverlayView];
  if (result)
  {
    v2 = result;
    v3 = [result subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v4 = sub_20C13CC74();

    if (v4 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F2F5430](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 removeFromSuperview];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }

  return result;
}

void sub_20B6394E0(void *a1, void *a2)
{
  [a1 addSubview_];
  [a2 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14FE90;
  v6 = [a2 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [a2 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v12 = [a2 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v5 + 48) = v14;
  v15 = [a2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v5 + 56) = v17;
  sub_20B51C88C(0, &qword_281100500);
  v18 = sub_20C13CC54();

  [v4 activateConstraints_];
}

uint64_t sub_20B63975C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BF43490(a1, v4, v5, v6);
}

uint64_t sub_20B63983C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B6398AC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_20B6399A0;

  return v5(v2 + 32);
}

uint64_t sub_20B6399A0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20B639AB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B6398AC(a1, v4);
}

uint64_t sub_20B639B6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52A9D4;

  return sub_20B523384(a1, v4);
}

uint64_t sub_20B639C2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B524778(a1, v4);
}

char *sub_20B639CE4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_layout];
  sub_20C1387F4();
  *v11 = v12;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 24) = xmmword_20C151DE0;
  v13 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_separatorView;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_textLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setNumberOfLines_];
  [v16 setTextAlignment_];
  v17 = objc_opt_self();
  v18 = [v17 secondaryLabelColor];
  [v16 setTextColor_];

  v19 = [objc_opt_self() preferredFontForTextStyle_];
  [v16 setFont_];

  *&v4[v15] = v16;
  v62.receiver = v4;
  v62.super_class = type metadata accessor for PreferenceDescriptionCell();
  v20 = objc_msgSendSuper2(&v62, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = [v20 contentView];
  v22 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_textLabel;
  [v21 addSubview_];

  v23 = *&v20[OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_separatorView];
  v24 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_separatorView;
  v60 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_separatorView;
  v25 = v20;
  [v25 addSubview_];
  v26 = *&v20[v24];
  v27 = [v17 separatorColor];
  [v26 setBackgroundColor_];

  v61 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C151DF0;
  v29 = [*&v20[v22] leadingAnchor];
  v30 = [v25 contentView];
  v31 = [v30 leadingAnchor];

  v32 = &v25[OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_layout];
  v33 = [v29 constraintEqualToAnchor:v31 constant:*&v25[OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_layout + 16]];

  *(v28 + 32) = v33;
  v34 = [*&v20[v22] trailingAnchor];
  v35 = [v25 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:v32[4]];
  *(v28 + 40) = v37;
  v38 = [*&v20[v22] topAnchor];
  v39 = [v25 contentView];
  v40 = [v39 topAnchor];

  v41 = [v38 constraintEqualToAnchor:v40 constant:v32[1]];
  *(v28 + 48) = v41;
  v42 = [*&v20[v22] bottomAnchor];
  v43 = v60;
  v44 = [v25 contentView];

  v45 = [v44 bottomAnchor];
  v46 = [v42 constraintEqualToAnchor:v45 constant:-v32[3]];

  *(v28 + 56) = v46;
  v47 = [*&v20[v60] heightAnchor];
  v48 = [v47 constraintEqualToConstant_];

  *(v28 + 64) = v48;
  v49 = [*&v20[v60] leadingAnchor];
  v50 = [v25 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v51 = [v49 constraintEqualToAnchor:v50 constant:{*&qword_27C799F40, v60}];

  *(v28 + 72) = v51;
  v52 = [*&v20[v43] trailingAnchor];
  v53 = [v25 trailingAnchor];

  v54 = [v52 constraintEqualToAnchor_];
  *(v28 + 80) = v54;
  v55 = [*&v20[v43] bottomAnchor];
  v56 = [v25 bottomAnchor];

  v57 = [v55 constraintEqualToAnchor_];
  *(v28 + 88) = v57;
  sub_20B5E29D0();
  v58 = sub_20C13CC54();

  [v61 activateConstraints_];

  return v25;
}

id sub_20B63A610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferenceDescriptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PreferenceDescriptionCell()
{
  result = qword_27C762C48;
  if (!qword_27C762C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B63A708()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B63A7CC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B63A818@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B63A870(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B63A8D0(unint64_t a1)
{
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2E)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_textLabel);

    v3 = sub_20C13C914();

    [v2 setText_];
  }
}

void sub_20B63A980()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_layout;
  sub_20C1387F4();
  *v3 = v4;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = xmmword_20C151DE0;
  v5 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_separatorView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI25PreferenceDescriptionCell_textLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setNumberOfLines_];
  [v8 setTextAlignment_];
  v9 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  v10 = [objc_opt_self() preferredFontForTextStyle_];
  [v8 setFont_];

  *(v0 + v7) = v8;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20B63AC4C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentUnavailableView;
  v12 = [objc_opt_self() smu_contentUnavailableView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentBottomConstraint;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v14 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v48.receiver = v4;
  v48.super_class = type metadata accessor for ContentUnavailableFixedHeightCell();
  v15 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentUnavailableView;
  [v16 addSubview_];

  v18 = [*&v15[v17] heightAnchor];
  v19 = [v18 constraintEqualToConstant_];

  v20 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint;
  v21 = *&v15[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint];
  *&v15[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_cellHeightConstraint] = v19;

  v22 = [*&v15[v17] bottomAnchor];
  v23 = [v15 contentView];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  v26 = OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentBottomConstraint;
  v27 = *&v15[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentBottomConstraint];
  *&v15[OBJC_IVAR____TtC9SeymourUI33ContentUnavailableFixedHeightCell_contentBottomConstraint] = v25;

  v47 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C150050;
  v29 = [*&v15[v17] leadingAnchor];
  v30 = [v15 contentView];
  v31 = [v30 leadingAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v28 + 32) = v32;
  v33 = [*&v15[v17] trailingAnchor];
  v34 = [v15 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v28 + 40) = v36;
  v37 = [*&v15[v17] topAnchor];
  v38 = [v15 contentView];

  v39 = [v38 topAnchor];
  v40 = [v37 constraintEqualToAnchor_];

  *(v28 + 48) = v40;
  v41 = *&v15[v26];
  *(v28 + 56) = v41;
  v42 = *&v15[v20];
  *(v28 + 64) = v42;
  sub_20B5E29D0();
  v43 = v41;
  v44 = v42;
  v45 = sub_20C13CC54();

  [v47 activateConstraints_];

  return v15;
}