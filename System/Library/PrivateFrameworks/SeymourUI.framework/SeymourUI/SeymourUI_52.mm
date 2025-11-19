uint64_t sub_20BAEBFD8()
{
  v0 = sub_20C135214();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135C04();
  v4 = sub_20C1338E4();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_20BAEC0C4()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340);
  v8 = OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_dateFormat;
  v9 = sub_20C132D44();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScheduledWorkoutBannerShelf()
{
  result = qword_27C76A250;
  if (!qword_27C76A250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAEC25C()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = sub_20C132D44();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20BAEC348@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BAEC3C0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row + 32);
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

uint64_t sub_20BAEC47C(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v33 = sub_20C132D24();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C132CF4();
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C132CB4();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C132D44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v19 = v2 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_row;
  sub_20B5D8060(v36);
  v20 = v36[9];
  *(v19 + 128) = v36[8];
  *(v19 + 144) = v20;
  *(v19 + 160) = v37;
  v21 = v36[5];
  *(v19 + 64) = v36[4];
  *(v19 + 80) = v21;
  v22 = v36[7];
  *(v19 + 96) = v36[6];
  *(v19 + 112) = v22;
  v23 = v36[1];
  *v19 = v36[0];
  *(v19 + 16) = v23;
  v24 = v36[3];
  *(v19 + 32) = v36[2];
  *(v19 + 48) = v24;
  MEMORY[0x20F2EA170]();
  sub_20C132CA4();
  sub_20C132C84();
  (*(v6 + 8))(v8, v28);
  v25 = *(v10 + 8);
  v25(v12, v9);
  sub_20C132CD4();
  sub_20C132C94();
  (*(v29 + 8))(v5, v30);
  v25(v15, v9);
  v26 = v31;
  sub_20C132D14();
  sub_20C132D34();
  (*(v32 + 8))(v26, v33);
  v25(v18, v9);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI27ScheduledWorkoutBannerShelf_workoutPlanStringBuilder) = v35;
  return v2;
}

uint64_t sub_20BAEC8CC(int a1, char a2, double a3)
{
  v4 = v3;
  LODWORD(v7) = a1;
  v8 = sub_20C13C4B4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13C4F4();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20C13C514();
  v43 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = MEMORY[0x277D84F90];
  if (a2)
  {
    v20 = *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter];
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v53 = sub_20BAED978;
    v54 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = sub_20B7B548C;
    v52 = &block_descriptor_6_1;
    v23 = _Block_copy(&aBlock);
    v42 = v7;
    v24 = v20;

    v25 = [v22 initWithDuration:v23 dampingRatio:0.5 animations:1.0];
    _Block_release(v23);
    [v25 startAnimation];

    sub_20B7BAFD0(*&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_glowKey], *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_glowKey + 8], 1.0, *&v4[OBJC_IVAR____TtC9SeymourUI7BurnBar_glow], 341.0237, 36.93365);
    sub_20B5E2E18();
    v40 = sub_20C13D374();
    sub_20C13C504();
    sub_20C13C574();
    v41 = *(v43 + 8);
    v41(v15, v48);
    v26 = swift_allocObject();
    *(v26 + 16) = v4;
    v53 = sub_20BAED980;
    v54 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = sub_20B7B548C;
    v52 = &block_descriptor_12_1;
    v7 = _Block_copy(&aBlock);
    v27 = v4;

    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    v28 = v47;
    v19 = MEMORY[0x277D84F90];
    sub_20C13DA94();
    v29 = v40;
    MEMORY[0x20F2F4A80](v18, v13, v10, v7);
    v30 = v7;
    LOBYTE(v7) = v42;
    _Block_release(v30);

    (*(v46 + 8))(v10, v28);
    (*(v44 + 8))(v13, v45);
    v41(v18, v48);
  }

  sub_20B5E2E18();
  v31 = sub_20C13D374();
  sub_20C13C504();
  sub_20C13C574();
  v43 = *(v43 + 8);
  v32 = v15;
  v33 = v48;
  (v43)(v32, v48);
  v34 = swift_allocObject();
  *(v34 + 16) = v4;
  *(v34 + 24) = v7;
  *(v34 + 32) = a3;
  v53 = sub_20BAED860;
  v54 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_20B7B548C;
  v52 = &block_descriptor_80;
  v35 = _Block_copy(&aBlock);
  v36 = v4;

  sub_20C13C4D4();
  aBlock = v19;
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v37 = v47;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v18, v13, v10, v35);
  _Block_release(v35);

  (*(v46 + 8))(v10, v37);
  (*(v44 + 8))(v13, v45);
  return (v43)(v18, v33);
}

uint64_t sub_20BAECF44(int a1, double a2)
{
  v3 = v2;
  v54 = a1;
  v57 = sub_20C13C4B4();
  v60 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20C13C4F4();
  v59 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20C13C514();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v42 - v10;
  v11 = *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey];
  v12 = *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey + 8];

  sub_20BBB5E14(v11, v12);

  v13 = OBJC_IVAR____TtC9SeymourUI7BurnBar_progress;
  *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_progress] = 0;
  [v2 setNeedsLayout];
  v14 = *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey];
  v15 = *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey + 8];

  sub_20BBB5E14(v14, v15);

  *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion] = 0;
  [v2 setNeedsLayout];
  v16 = *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_scaleKey];
  v17 = *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_scaleKey + 8];

  sub_20BBB5E14(v16, v17);

  v18 = OBJC_IVAR____TtC9SeymourUI7BurnBar_scale;
  *&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_scale] = 0;
  [v2 setNeedsLayout];
  sub_20B7BAFD0(v11, v12, 1.0, *&v2[v13], 151.56609, 24.62244);
  sub_20B7BAFD0(v16, v17, 1.0, *&v2[v18], 341.0237, 36.93365);
  v19 = *(*&v2[OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter] + OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView);
  sub_20B91909C();

  v49 = sub_20B5E2E18();
  v20 = sub_20C13D374();
  sub_20C13C504();
  v21 = v50;
  sub_20C13C574();
  v22 = *(v58 + 8);
  v58 += 8;
  v55 = v22;
  v22(v8, v56);
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  v65 = sub_20BAED990;
  v66 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_20B7B548C;
  v64 = &block_descriptor_24_0;
  v24 = _Block_copy(&aBlock);
  v43 = v3;

  v25 = v51;
  sub_20C13C4D4();
  aBlock = MEMORY[0x277D84F90];
  v47 = sub_20B7E9080();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  v48 = sub_20B682EA8();
  v26 = v52;
  v27 = v57;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v21, v25, v26, v24);
  _Block_release(v24);

  v28 = *(v60 + 8);
  v60 += 8;
  v45 = v28;
  v28(v26, v27);
  v29 = *(v59 + 8);
  v59 += 8;
  v44 = v29;
  v30 = v53;
  v29(v25, v53);
  v31 = v55;
  v32 = v56;
  v55(v21, v56);
  v33 = sub_20C13D374();
  sub_20C13C504();
  sub_20C13C574();
  v34 = v8;
  v35 = v32;
  v31(v34, v32);
  v36 = swift_allocObject();
  v37 = v43;
  *(v36 + 16) = v43;
  *(v36 + 24) = v54;
  *(v36 + 32) = a2;
  v65 = sub_20BAED9E8;
  v66 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_20B7B548C;
  v64 = &block_descriptor_30;
  v38 = _Block_copy(&aBlock);
  v39 = v37;

  sub_20C13C4D4();
  aBlock = MEMORY[0x277D84F90];
  v40 = v57;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v21, v25, v26, v38);
  _Block_release(v38);

  v45(v26, v40);
  v44(v25, v30);
  return (v55)(v21, v35);
}

uint64_t sub_20BAED624(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v9[4] = sub_20BAED988;
  v9[5] = v3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_20B7B548C;
  v9[3] = &block_descriptor_18_0;
  v5 = _Block_copy(v9);
  v6 = v2;

  v7 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:1.0];
  _Block_release(v5);
  [v7 startAnimation];

  return sub_20B7BAFD0(*(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_glowKey), *(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_glowKey + 8), 0.0, *(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_glow), 341.0237, 36.93365);
}

uint64_t sub_20BAED780(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 >= 3)
  {
    if (a2)
    {
      sub_20B7BACF4(2, 1, 341.0237, 36.93365);
      v4 = 1.0;
    }

    else
    {
      sub_20B7BACF4(0, 1, 341.0237, 36.93365);
      v4 = 0.0;
    }
  }

  else
  {
    sub_20B7BACF4(1, 1, 341.0237, 36.93365);
    v4 = dbl_20C16C7D0[a2 - 1];
  }

  return sub_20B7BAFD0(*(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey), *(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey + 8), v4, *(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_progress), 85.25592, 18.46683);
}

uint64_t sub_20BAED870(uint64_t a1, unsigned __int8 a2)
{
  sub_20B7BAFD0(*(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey), *(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_expansionKey + 8), 1.0, *(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_expansion), 341.0237, 36.93365);
  if (a2 - 1 >= 3)
  {
    if (a2)
    {
      sub_20B7BACF4(2, 1, 341.0237, 36.93365);
      v4 = 1.0;
    }

    else
    {
      sub_20B7BACF4(0, 1, 341.0237, 36.93365);
      v4 = 0.0;
    }
  }

  else
  {
    sub_20B7BACF4(1, 1, 341.0237, 36.93365);
    v4 = dbl_20C16C7D0[a2 - 1];
  }

  return sub_20B7BAFD0(*(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey), *(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_progressKey + 8), v4, *(a1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_progress), 341.0237, 36.93365);
}

uint64_t sub_20BAEDA20()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_20BAEDDD8();
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  if ((~v5 & 0xF000000000000007) != 0)
  {
    v8 = v5;
    v7 = sub_20BC05D3C(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_20BC05D3C((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    *&v7[8 * v10 + 32] = v8;
  }

  v11 = sub_20BAEE58C();
  if ((~v11 & 0xF000000000000007) != 0)
  {
    v13 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_20BC05D3C(0, *(v7 + 2) + 1, 1, v7);
    }

    v15 = *(v7 + 2);
    v14 = *(v7 + 3);
    if (v15 >= v14 >> 1)
    {
      v7 = sub_20BC05D3C((v14 > 1), v15 + 1, 1, v7);
    }

    *(v7 + 2) = v15 + 1;
    *&v7[8 * v15 + 32] = v13;
  }

  else if (!*(v7 + 2))
  {
  }

  v40 = 0uLL;
  LOBYTE(v41) = 1;
  *(&v41 + 1) = 0;
  *&v42 = 0;
  WORD4(v42) = 128;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  LOBYTE(v46) = 0;
  *(&v46 + 1) = v7;
  *&v47[0] = v6;
  *(v47 + 8) = 0u;
  *(&v47[1] + 8) = 0u;
  *(&v47[2] + 1) = 0;
  v48 = 2;
  nullsub_1(&v40);
  v16 = v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 144);
  v49[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 128);
  v49[9] = v17;
  v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 160);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 80);
  v49[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 64);
  v49[5] = v18;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 112);
  v49[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 96);
  v49[7] = v19;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 16);
  v49[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row);
  v49[1] = v20;
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 48);
  v49[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 32);
  v49[3] = v21;
  v22 = v47[2];
  *(v16 + 128) = v47[1];
  *(v16 + 144) = v22;
  *(v16 + 160) = v48;
  v23 = v45;
  *(v16 + 64) = v44;
  *(v16 + 80) = v23;
  v24 = v47[0];
  *(v16 + 96) = v46;
  *(v16 + 112) = v24;
  v25 = v41;
  *v16 = v40;
  *(v16 + 16) = v25;
  v26 = v43;
  *(v16 + 32) = v42;
  *(v16 + 48) = v26;
  sub_20B634408(v49);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v27 = result;
      v28 = sub_20B61D9A0(v1, result);
      if (v29)
      {
        v31 = v28;
        v32 = v29;
        v33 = v30;
        sub_20B5E2E18();
        *v4 = sub_20C13D374();
        v35 = v38;
        v34 = v39;
        (*(v38 + 104))(v4, *MEMORY[0x277D85200], v39);
        v36 = sub_20C13C584();
        result = (*(v35 + 8))(v4, v34);
        if ((v36 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620E48(v31, v32, v33, v1, 1, v27);
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

uint64_t sub_20BAEDDD8()
{
  v1 = v0;
  v2 = type metadata accessor for MetadataEntry();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v63 - v8);
  v10 = MEMORY[0x28223BE20](v7);
  v70 = &v63 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v63 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v63 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v63 - v18);
  v20 = *(sub_20C135A94() + 16);

  if (!v20)
  {
    return 0xF000000000000007;
  }

  v21 = *(sub_20C135A74() + 16);

  if (!v21)
  {
    return 0xF000000000000007;
  }

  v22 = *(sub_20C135A84() + 16);

  if (!v22)
  {
    return 0xF000000000000007;
  }

  v66 = v6;
  v23 = *(sub_20C135A74() + 16);

  v24 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  v67 = v3;
  v68 = v1;
  if (v23)
  {
    v65 = v9;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_storefrontLocalizer + 24));
    v69 = sub_20C138D34();
    v64 = v25;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder + 24));
    sub_20C135A74();
    v26 = sub_20C138544();

    sub_20C132ED4();
    v27 = v64;
    v19[4] = v69;
    v19[5] = v27;
    *v19 = v26;
    v19[1] = 0x8000000000000000;
    v19[2] = 0;
    v19[3] = 0;
    sub_20B9FD7D8(v19, v17, type metadata accessor for MetadataEntry);
    v28 = sub_20BC0741C(0, 1, 1, MEMORY[0x277D84F90]);
    v30 = v28[2];
    v29 = v28[3];
    v69 = v28;
    if (v30 >= v29 >> 1)
    {
      v69 = sub_20BC0741C(v29 > 1, v30 + 1, 1, v69);
    }

    v31 = v67;
    sub_20BAEF06C(v19, type metadata accessor for MetadataEntry);
    v32 = v69;
    v69[2] = v30 + 1;
    sub_20B60E3E0(v17, v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30);
    v1 = v68;
    v9 = v65;
    v24 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  }

  else
  {
    v69 = MEMORY[0x277D84F90];
  }

  v34 = *(sub_20C135A84() + 16);

  if (v34)
  {
    v35 = (v1 + v24[128]);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v36 = sub_20C138D34();
    v64 = v37;
    v65 = v36;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder + 24));
    sub_20C135A84();
    v38 = sub_20C138544();

    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v39 = sub_20C138D34();
    v41 = v40;
    sub_20C132ED4();
    v42 = v64;
    v14[4] = v65;
    v14[5] = v42;
    *v14 = v38;
    v14[1] = 0x4000000000000001;
    v14[2] = v39;
    v14[3] = v41;
    sub_20B9FD7D8(v14, v70, type metadata accessor for MetadataEntry);
    v43 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_20BC0741C(0, v43[2] + 1, 1, v43);
    }

    v45 = v43[2];
    v44 = v43[3];
    v46 = v67;
    v1 = v68;
    v24 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
    if (v45 >= v44 >> 1)
    {
      v43 = sub_20BC0741C(v44 > 1, v45 + 1, 1, v43);
    }

    sub_20BAEF06C(v14, type metadata accessor for MetadataEntry);
    v43[2] = v45 + 1;
    sub_20B60E3E0(v70, v43 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45);
  }

  else
  {
    v43 = v69;
  }

  v47 = *(sub_20C135A94() + 16);

  if (v47)
  {
    v48 = (v1 + v24[128]);
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v49 = sub_20C138D34();
    v69 = v43;
    v51 = v50;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder + 24));
    sub_20C135A94();
    v52 = sub_20C138544();

    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v53 = sub_20C138D34();
    v55 = v54;
    sub_20C132ED4();
    v9[4] = v49;
    v9[5] = v51;
    v43 = v69;
    *v9 = v52;
    v9[1] = 0x4000000000000001;
    v9[2] = v53;
    v9[3] = v55;
    sub_20B9FD7D8(v9, v66, type metadata accessor for MetadataEntry);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_20BC0741C(0, v43[2] + 1, 1, v43);
    }

    v57 = v43[2];
    v56 = v43[3];
    v58 = v67;
    v1 = v68;
    v24 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
    if (v57 >= v56 >> 1)
    {
      v43 = sub_20BC0741C(v56 > 1, v57 + 1, 1, v43);
    }

    sub_20BAEF06C(v9, type metadata accessor for MetadataEntry);
    v43[2] = v57 + 1;
    sub_20B60E3E0(v66, v43 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57);
  }

  __swift_project_boxed_opaque_existential_1((v1 + v24[128]), *(v1 + v24[128] + 24));
  v59 = sub_20C138D34();
  v61 = v60;
  v62 = swift_allocObject();
  *(v62 + 16) = v59;
  *(v62 + 24) = v61;
  *(v62 + 32) = v43;
  return v62 | 0x4000000000000005;
}

uint64_t sub_20BAEE58C()
{
  v1 = v0;
  v2 = type metadata accessor for MetadataEntry();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(sub_20C135A64() + 16);

  if (!v6)
  {
    return 0xF000000000000007;
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_storefrontLocalizer + 24));
  v7 = sub_20C138D34();
  v9 = v8;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder + 24));
  sub_20C135A64();
  v10 = sub_20C138544();

  sub_20C132ED4();
  *v5 = v10;
  v5[1] = 0x8000000000000001;
  v5[4] = 0;
  v5[5] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7690A8);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C14F980;
  sub_20B60E3E0(v5, v13 + v12);
  *(v11 + 32) = v13;
  return v11 | 0x4000000000000005;
}

uint64_t sub_20BAEE78C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVMetadataShelf()
{
  result = qword_27C76A268;
  if (!qword_27C76A268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAEE8E4()
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

uint64_t sub_20BAEE994@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BAEEA0C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI15TVMetadataShelf_row + 32);
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

uint64_t sub_20BAEEAC0(uint64_t a1)
{
  v3 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetadataEntry();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B9FD7D8(a1, v8, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20B60E3E0(v8, v11);
    v12 = sub_20C136664();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = v3[5];
    v14 = *MEMORY[0x277D513E8];
    v15 = sub_20C134F24();
    (*(*(v15 - 8) + 104))(&v5[v13], v14, v15);
    v16 = v3[6];
    v17 = sub_20C132C14();
    (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
    v18 = v3[8];
    v19 = sub_20C135ED4();
    (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
    v20 = v3[10];
    v21 = *MEMORY[0x277D51768];
    v22 = sub_20C1352E4();
    (*(*(v22 - 8) + 104))(&v5[v20], v21, v22);
    v23 = v3[11];
    v24 = sub_20C136E94();
    (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
    v25 = MEMORY[0x277D84F90];
    v26 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    *&v5[v3[7]] = xmmword_20C16AC20;
    v27 = &v5[v3[9]];
    *v27 = 0;
    *(v27 + 1) = 0;
    *&v5[v3[12]] = v26;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BFA03C0(v1, v5, Strong);
      swift_unknownObjectRelease();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
    v29 = (type metadata accessor for PageAlertAction() - 8);
    v30 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_20C14F980;
    sub_20C132ED4();
    v32 = (v31 + v30 + v29[8]);
    *v32 = 0;
    v32[1] = 0;
    *(v31 + v30 + v29[7]) = 2;
    v33 = (v31 + v30 + v29[9]);
    *v33 = 0;
    v33[1] = 0;
    v34 = v11[4];
    v35 = v11[5];
    v36 = *v11;

    v37 = [v36 string];
    v38 = sub_20C13C954();
    v40 = v39;

    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v42 = v41;
      type metadata accessor for DefaultPageAlertPresenter();
      v43 = v25;
      v44 = swift_allocObject();
      *(v44 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v44 + 32) = v31;
      *(v44 + 40) = v43;
      *(v44 + 48) = v34;
      *(v44 + 56) = v35;
      *(v44 + 64) = v38;
      *(v44 + 72) = v40;
      *(v44 + 80) = 1;
      *(v44 + 88) = 0;
      v45 = v42 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v46 = *(v45 + 8);
        ObjectType = swift_getObjectType();
        (*(v46 + 224))(v42, v44, &off_2822DD358, ObjectType, v46);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    sub_20BAEF06C(v5, type metadata accessor for ShelfMetricAction);
    v48 = type metadata accessor for MetadataEntry;
    v49 = v11;
  }

  else
  {
    v48 = type metadata accessor for ShelfItemAction;
    v49 = v8;
  }

  return sub_20BAEF06C(v49, v48);
}

uint64_t sub_20BAEF06C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BAEF0CC(void *a1)
{
  v2 = v1;
  v3 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shadow];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v32 = 0.0;
    v7 = v3;
    if ([v7 shadowColor])
    {
      sub_20C13DA64();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35[0] = v33;
    v35[1] = v34;
    if (*(&v34 + 1))
    {
      sub_20B51C88C(0, &qword_27C762070);
      if (swift_dynamicCast())
      {
        [v31 getRed:0 green:0 blue:0 alpha:&v32];
      }
    }

    else
    {
      sub_20B520158(v35, &unk_27C768A00);
    }

    v17 = [v2 config];
    [v17 setDefaultFocusedShadowOpacity_];

    v18 = [v2 config];
    [v18 setDefaultHighlightedShadowOpacity_];

    v19 = [v2 config];
    [v19 setDefaultUnfocusedShadowOpacity_];

    [v7 shadowBlurRadius];
    v21 = v20;
    v22 = [v2 config];
    [v22 setDefaultFocusedShadowRadius_];

    v23 = [v2 config];
    [v23 setDefaultHighlightedShadowRadius_];

    v24 = [v2 config];
    [v24 setDefaultUnfocusedShadowRadius_];

    [v7 shadowOffset];
    v26 = v25;
    v27 = [v2 config];
    [v27 setDefaultFocusedShadowVerticalOffset_];

    v28 = [v2 config];
    [v28 setDefaultHighlightedShadowVerticalOffset_];

    v29 = [v2 config];
    [v29 setDefaultUnfocusedShadowVerticalOffset_];

    return;
  }

  if (a1)
  {
    sub_20B51C88C(0, &unk_27C76A2C0);
    v5 = v4;
    v3 = v3;
    v6 = sub_20C13D5F4();

    if (v6)
    {
      return;
    }

    goto LABEL_6;
  }

  v8 = [objc_opt_self() newStandardConfiguration];
  [v8 setMaximumParallaxImages_];
  v9 = [v2 config];
  [v8 defaultFocusedShadowOpacity];
  [v9 setDefaultFocusedShadowOpacity_];

  v10 = [v2 config];
  [v8 defaultHighlightedShadowOpacity];
  [v10 setDefaultHighlightedShadowOpacity_];

  v11 = [v2 config];
  [v8 defaultUnfocusedShadowOpacity];
  [v11 setDefaultUnfocusedShadowOpacity_];

  v12 = [v2 config];
  [v8 defaultFocusedShadowRadius];
  [v12 setDefaultFocusedShadowRadius_];

  v13 = [v2 config];
  [v8 defaultHighlightedShadowRadius];
  [v13 setDefaultHighlightedShadowRadius_];

  v14 = [v2 config];
  [v8 defaultUnfocusedShadowRadius];
  [v14 setDefaultUnfocusedShadowRadius_];

  v15 = [v2 config];
  [v8 defaultFocusedShadowVerticalOffset];
  [v15 setDefaultFocusedShadowVerticalOffset_];

  v16 = [v2 config];
  [v8 defaultHighlightedShadowVerticalOffset];
  [v16 setDefaultHighlightedShadowVerticalOffset_];

  v30 = [v2 config];
  [v8 defaultUnfocusedShadowVerticalOffset];
  [v30 setDefaultUnfocusedShadowVerticalOffset_];
}

void sub_20BAEF770(void *a1)
{
  v3 = sub_20C13C4C4();
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B524();
  v11 = a1;
  v12 = v1;
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1F4();
  v15 = os_log_type_enabled(v13, v14);
  v35 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v34 = v6;
    v17 = v16;
    *v16 = 67109376;
    v16[1] = v12[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_flipsContentForRightToLeftDirection];

    *(v17 + 4) = 1024;
    *(v17 + 10) = a1 == 0;

    _os_log_impl(&dword_20B517000, v13, v14, "[153094370] Updating stack image. Flips %{BOOL}d. Nil %{BOOL}d", v17, 0xEu);
    v18 = v17;
    v6 = v34;
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  else
  {

    v13 = v11;
  }

  (*(v8 + 8))(v10, v7);
  if (v12[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_flipsContentForRightToLeftDirection] == 1)
  {
    if (v35)
    {
      v19 = [v11 imageFlippedForRightToLeftLayoutDirection];
    }

    else
    {
      v19 = 0;
    }

    v21 = type metadata accessor for TVArtworkView();
    v38.receiver = v12;
    v38.super_class = v21;
    objc_msgSendSuper2(&v38, sel_setStackImage_, v19);
  }

  else
  {
    v20 = type metadata accessor for TVArtworkView();
    v39.receiver = v12;
    v39.super_class = v20;
    objc_msgSendSuper2(&v39, sel_setStackImage_, v11);
  }

  v22 = [v12 stackImage];
  if (v22)
  {
    v23 = v22;
    v24 = MEMORY[0x277D851C0];
    if (*&v12[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView])
    {
      v25 = v11;
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = v36;
      v28 = v37;
      (*(v37 + 104))(v6, *v24, v36);

      sub_20BD519D8(v23, v6, sub_20BAF092C, v26);

      (*(v28 + 8))(v6, v27);
      v11 = v25;
    }

    if (*&v12[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView])
    {
      v29 = v11;
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = *v24;
      v33 = v36;
      v32 = v37;
      (*(v37 + 104))(v6, v31, v36);

      sub_20BD519D8(v23, v6, sub_20BAF0900, v30);

      (*(v32 + 8))(v6, v33);
    }

    else
    {
    }
  }

  else
  {
  }
}

char *sub_20BAEFC6C(char a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView] = 0;
  v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_flipsContentForRightToLeftDirection] = 0;
  v9 = &v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints];
  *v9 = 0u;
  v9[1] = 0u;
  *&v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView] = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  v11 = sub_20C137C24();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout];
  v14[3] = &type metadata for TVArtworkView.Layout;
  v14[4] = &off_2822CB5D0;
  v15 = swift_allocObject();
  *v14 = v15;
  __asm
  {
    FMOV            V0.2D, #2.5
    FMOV            V1.2D, #5.0
  }

  *(v15 + 16) = _Q0;
  *(v15 + 32) = _Q1;
  *(v15 + 48) = _Q1;
  *(v15 + 64) = 0x4014000000000000;
  v22 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView;
  *&v5[v22] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shadow] = 0;
  v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_style] = a1 & 1;
  v23 = &v5[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets];
  v24 = *(MEMORY[0x277D75060] + 16);
  *v23 = *MEMORY[0x277D75060];
  v23[1] = v24;
  v31.receiver = v5;
  v31.super_class = type metadata accessor for TVArtworkView();
  v25 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 clearColor];
  [v27 setBackgroundColor_];

  [v27 setMaskedOverlayView_];
  v29 = [v27 maskedOverlayView];

  if (v29)
  {
    [v29 setFrame_];
  }

  return v27;
}

void sub_20BAEFF38()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TVArtworkView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  if (v0[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_style] == 1)
  {
    v1 = [v0 config];
    [v0 bounds];
    [v1 setCornerRadius_];
  }

  v3 = [v0 maskedOverlayView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];
  }

  v5 = [v0 maskedOverlayView];
  [v5 setNeedsLayout];

  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
  if (v6)
  {

    v6(v7);
    sub_20B583ECC(v6);
  }
}

id sub_20BAF00D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVArtworkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVArtworkView()
{
  result = qword_27C76A2A8;
  if (!qword_27C76A2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BAF0258()
{
  sub_20B52CA1C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_20BAF035C()
{
  result = qword_27C76A2B8;
  if (!qword_27C76A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A2B8);
  }

  return result;
}

uint64_t sub_20BAF03B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  return sub_20B654504(v1 + v3, a1);
}

uint64_t sub_20BAF0408(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  sub_20B69AB5C(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_20BAF0468()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView);
  v2 = v1;
  return v1;
}

void sub_20BAF0498(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView);
  *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView) = a1;
}

uint64_t sub_20BAF04AC()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_20BAF05A0(void *a1)
{
  [v1 setStackImage_];
}

uint64_t sub_20BAF05FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4);
}

uint64_t sub_20BAF0634(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

void *sub_20BAF0650()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView);
  v2 = v1;
  return v1;
}

void sub_20BAF0680(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView);
  *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView) = a1;
}

void *sub_20BAF0694()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView);
  v2 = v1;
  return v1;
}

void sub_20BAF06C4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView);
  *(v1 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView) = a1;
}

void sub_20BAF06F0(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

void sub_20BAF0758()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_completedIconView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_flipsContentForRightToLeftDirection) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_iconConstraints);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_recencyIconView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackIconView) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  v3 = sub_20C137C24();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = (v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layout);
  v6[3] = &type metadata for TVArtworkView.Layout;
  v6[4] = &off_2822CB5D0;
  v7 = swift_allocObject();
  *v6 = v7;
  __asm
  {
    FMOV            V0.2D, #2.5
    FMOV            V1.2D, #5.0
  }

  *(v7 + 16) = _Q0;
  *(v7 + 32) = _Q1;
  *(v7 + 48) = _Q1;
  *(v7 + 64) = 0x4014000000000000;
  v14 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_stackedOverlayView;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shadow) = 0;
  sub_20C13DE24();
  __break(1u);
}

id EngagementMessageTarget.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EngagementMessageTarget.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementMessageTarget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EngagementMessageTarget.targetIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_identifier);

  return v1;
}

uint64_t sub_20BAF0C14(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_20C13BB84();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A350);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_20C1362B4();
  v43 = *(v13 - 8);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v3 targetIdentifier];
  v18 = sub_20C13C954();
  v20 = v19;

  if (v18 == a2 && v20 == a3)
  {
  }

  else
  {
    v22 = sub_20C13DFF4();

    if ((v22 & 1) == 0)
    {
      v24 = a2;
      v25 = v40;
      sub_20C13B424();

      v26 = sub_20C13BB74();
      v27 = sub_20C13D1D4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v44 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_20B51E694(v24, a3, &v44);
        _os_log_impl(&dword_20B517000, v26, v27, "Message coordinator updated message for wrong identifier: %{public}s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x20F2F6A40](v29, -1, -1);
        MEMORY[0x20F2F6A40](v28, -1, -1);
      }

      return (*(v41 + 8))(v25, v42);
    }
  }

  if (a1)
  {
    v30 = a1;
    v31 = [v4 targetIdentifier];
    v32 = sub_20C13C954();
    v34 = v33;

    sub_20B5E78DC(v32, v34, v12);

    v35 = v43;
    if ((*(v43 + 48))(v12, 1, v13) != 1)
    {
      (*(v35 + 32))(v16, v12, v13);
      v38 = *&v4[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerUpdate];
      if (v38)
      {

        v38(v16);

        sub_20B583ECC(v38);
      }

      else
      {
      }

      return (*(v35 + 8))(v16, v13);
    }

    result = sub_20BAF1058(v12);
  }

  v36 = *&v4[OBJC_IVAR____TtC9SeymourUI23EngagementMessageTarget_onBannerRemoval];
  if (v36)
  {

    v36(v37);
    return sub_20B583ECC(v36);
  }

  return result;
}

uint64_t sub_20BAF1058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CatalogTipPlaybackContent.init(identifier:streamingURL:artwork:artworkCropCode:subtitle:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v18 = type metadata accessor for CatalogTipPlaybackContent();
  sub_20BAF11B0(a4, &a9[v18[5]]);
  v19 = &a9[v18[6]];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &a9[v18[7]];
  *v20 = a7;
  *(v20 + 1) = a8;
  v21 = v18[8];
  v22 = sub_20C132C14();
  result = (*(*(v22 - 8) + 32))(&a9[v21], a3, v22);
  v24 = &a9[v18[9]];
  *v24 = a10;
  *(v24 + 1) = a11;
  return result;
}

uint64_t sub_20BAF11B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BAF1220()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x656C746974627573;
  v4 = 0x6E696D6165727473;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B726F77747261;
  if (v1 != 1)
  {
    v5 = 0x436B726F77747261;
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

uint64_t sub_20BAF12F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20BAF26C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20BAF1324(uint64_t a1)
{
  v2 = sub_20BAF165C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20BAF1360(uint64_t a1)
{
  v2 = sub_20BAF165C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CatalogTipPlaybackContent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A360);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20BAF165C();
  sub_20C13E1F4();
  v8[15] = 0;
  sub_20C13DF54();
  if (!v1)
  {
    type metadata accessor for CatalogTipPlaybackContent();
    v8[14] = 1;
    sub_20C137C24();
    sub_20BAF28CC(&qword_27C76A370, MEMORY[0x277D53A78]);
    sub_20C13DF44();
    v8[13] = 2;
    sub_20C13DF34();
    v8[12] = 3;
    sub_20C13DF34();
    v8[11] = 4;
    sub_20C132C14();
    sub_20BAF28CC(&qword_27C76A378, MEMORY[0x277CC9260]);
    sub_20C13DF64();
    v8[10] = 5;
    sub_20C13DF34();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20BAF165C()
{
  result = qword_27C76A368;
  if (!qword_27C76A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A368);
  }

  return result;
}

uint64_t CatalogTipPlaybackContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_20C132C14();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A380);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CatalogTipPlaybackContent();
  MEMORY[0x28223BE20](v13);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_20BAF165C();
  v17 = v43;
  sub_20C13E1E4();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v43 = v6;
  v18 = v41;
  v50 = 0;
  v19 = v15;
  *v15 = sub_20C13DEF4();
  v15[1] = v20;
  sub_20C137C24();
  v49 = 1;
  sub_20BAF28CC(&qword_27C76A388, MEMORY[0x277D53A78]);
  sub_20C13DEE4();
  sub_20BAF11B0(v9, v15 + v13[5]);
  v48 = 2;
  v21 = sub_20C13DED4();
  v22 = v18;
  v23 = v19;
  v24 = (v19 + v13[6]);
  *v24 = v21;
  v24[1] = v25;
  v47 = 3;
  v26 = sub_20C13DED4();
  v27 = v40;
  v37 = 0;
  v28 = (v23 + v13[7]);
  *v28 = v26;
  v28[1] = v29;
  v46 = 4;
  sub_20BAF28CC(&qword_27C76A390, MEMORY[0x277CC9260]);
  v30 = v43;
  v31 = v39;
  sub_20C13DF04();
  (*(v27 + 32))(v23 + v13[8], v30, v31);
  v45 = 5;
  v32 = sub_20C13DED4();
  v34 = v33;
  (*(v22 + 8))(v12, v42);
  v35 = (v23 + v13[9]);
  *v35 = v32;
  v35[1] = v34;
  sub_20BAF1C54(v23, v38);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_20BAF1CB8(v23);
}

uint64_t sub_20BAF1C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipPlaybackContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BAF1CB8(uint64_t a1)
{
  v2 = type metadata accessor for CatalogTipPlaybackContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CatalogTipPlaybackContent.hash(into:)()
{
  v1 = v0;
  v2 = sub_20C137C24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_20C13CA64();
  v9 = type metadata accessor for CatalogTipPlaybackContent();
  sub_20B654504(v1 + v9[5], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_20C13E184();
    sub_20BAF28CC(&qword_27C762F08, MEMORY[0x277D53A78]);
    sub_20C13C7C4();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + v9[6] + 8))
  {
    sub_20C13E184();
    sub_20C13CA64();
  }

  else
  {
    sub_20C13E184();
  }

  if (*(v1 + v9[7] + 8))
  {
    sub_20C13E184();
    sub_20C13CA64();
  }

  else
  {
    sub_20C13E184();
  }

  sub_20C132C14();
  sub_20BAF28CC(&qword_27C762CB0, MEMORY[0x277CC9260]);
  sub_20C13C7C4();
  if (!*(v1 + v9[9] + 8))
  {
    return sub_20C13E184();
  }

  sub_20C13E184();
  return sub_20C13CA64();
}

uint64_t CatalogTipPlaybackContent.hashValue.getter()
{
  sub_20C13E164();
  CatalogTipPlaybackContent.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BAF2090()
{
  sub_20C13E164();
  CatalogTipPlaybackContent.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BAF20D4()
{
  sub_20C13E164();
  CatalogTipPlaybackContent.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI25CatalogTipPlaybackContentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_20C137C24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  v37 = type metadata accessor for CatalogTipPlaybackContent();
  v14 = *(v37 + 20);
  v15 = *(v11 + 48);
  sub_20B654504(a1 + v14, v13);
  sub_20B654504(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20B654504(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_20BAF28CC(&qword_27C7626D8, MEMORY[0x277D53A78]);
      v18 = sub_20C13C894();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_20B520158(v13, &unk_27C766680);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_20B520158(v13, &qword_27C7626D0);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_20B520158(v13, &unk_27C766680);
LABEL_13:
  v20 = v37;
  v21 = *(v37 + 24);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = *(v20 + 28);
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  if (sub_20C132B84())
  {
    v31 = *(v20 + 36);
    v32 = (a1 + v31);
    v33 = *(a1 + v31 + 8);
    v34 = (a2 + v31);
    v35 = v34[1];
    if (v33)
    {
      if (v35 && (*v32 == *v34 && v33 == v35 || (sub_20C13DFF4() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v35)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_20BAF25BC()
{
  result = qword_27C76A3A0;
  if (!qword_27C76A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A3A0);
  }

  return result;
}

unint64_t sub_20BAF2614()
{
  result = qword_27C76A3A8;
  if (!qword_27C76A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A3A8);
  }

  return result;
}

unint64_t sub_20BAF266C()
{
  result = qword_27C76A3B0;
  if (!qword_27C76A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A3B0);
  }

  return result;
}

uint64_t sub_20BAF26C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20C13DFF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_20C13DFF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436B726F77747261 && a2 == 0xEF65646F43706F72 || (sub_20C13DFF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_20C13DFF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567 || (sub_20C13DFF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_20C13DFF4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20BAF28CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BAF2914(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v30 = MEMORY[0x277D84F90];
  sub_20BB5DFB8(0, v1, 0);
  v2 = v30;
  v4 = v3 + 56;
  result = sub_20C13DAA4();
  v6 = result;
  v7 = 0;
  v24 = v3 + 64;
  v25 = v1;
  v26 = v3 + 56;
  v27 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v7;
    v29 = *(v3 + 36);
    v10 = *(v3 + 48) + 24 * v6;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    result = sub_20B6D8740(*v10, v12, v13);
    v15 = *(v30 + 16);
    v14 = *(v30 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_20BB5DFB8((v14 > 1), v15 + 1, 1);
    }

    *(v30 + 16) = v15 + 1;
    v16 = v30 + 24 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v12;
    *(v16 + 48) = v13 | 0x80;
    v3 = v27;
    v8 = 1 << *(v27 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(v27 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_20B526EA4(v6, v29, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v6, v29, 0);
    }

LABEL_4:
    v7 = v28 + 1;
    v6 = v8;
    if (v28 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20BAF2B5C()
{
  v0 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  v1 = sub_20C136854();
  sub_20C13E164();
  MEMORY[0x20F2F58E0](0);
  MEMORY[0x20F2F58E0](v1);
  v2 = sub_20C13E1B4();
  v3 = -1 << *(v0 + 32);
  v4 = v2 & ~v3;
  if ((*(v0 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(v0 + 48) + 24 * v4;
      if ((*(v6 + 16) & 0x80000000) == 0 && *v6 == v1)
      {
        goto LABEL_22;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v0 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) != 0);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (*(v0 + 24) > *(v0 + 16))
  {
    if (result)
    {
      v0 = MEMORY[0x277D84FA0];
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (result)
  {
    sub_20B6FAA40();
  }

  else
  {
    sub_20B7119A4();
  }

  sub_20C13E164();
  MEMORY[0x20F2F58E0](0);
  MEMORY[0x20F2F58E0](v1);
  result = sub_20C13E1B4();
  v8 = -1 << *(v0 + 32);
  v4 = result & ~v8;
  if ((*(v0 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v9 = ~v8;
    while (1)
    {
      v10 = *(v0 + 48) + 24 * v4;
      if ((*(v10 + 16) & 0x80000000) == 0 && *v10 == v1)
      {
        break;
      }

      v4 = (v4 + 1) & v9;
      if (((*(v0 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_20C13E044();
    __break(1u);
LABEL_19:
    result = sub_20B70D624();
  }

LABEL_20:
  *(v0 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v4;
  v11 = *(v0 + 48) + 24 * v4;
  *v11 = v1;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = *(v0 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v0 + 16) = v14;
    v17 = v0;
LABEL_22:
    v15 = sub_20C136814();
    v16 = sub_20BAF2914(v15);

    sub_20BE3D848(v16);

    return v17;
  }

  __break(1u);
  return result;
}

char *sub_20BAF2DCC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC9SeymourUI19TextInputController_presenter];
  *v4 = a1;
  *(v4 + 1) = a2;
  v5 = objc_opt_self();
  swift_unknownObjectRetain();
  v6 = [v5 textEntryController];
  *&v2[OBJC_IVAR____TtC9SeymourUI19TextInputController_textEntryController] = v6;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for TextInputController();
  v7 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 24);
  v10 = v7;
  v9(v7, &off_2822CB6C0, ObjectType, a2);
  v11 = OBJC_IVAR____TtC9SeymourUI19TextInputController_textEntryController;
  v12 = *(a2 + 8);
  v13 = *&v10[OBJC_IVAR____TtC9SeymourUI19TextInputController_textEntryController];
  v12(&v28, ObjectType, a2);

  sub_20B9A9A88(&v28);
  v14 = sub_20C13C914();

  [v13 setTitle_];

  v15 = *&v10[v11];
  v12(v29, ObjectType, a2);
  v33[0] = v30;
  sub_20BAF353C(v33, v32);
  sub_20B9A9A88(v29);
  if (*(&v33[0] + 1))
  {
    v16 = sub_20C13C914();
    sub_20BAF35B4(v33);
  }

  else
  {
    v16 = 0;
  }

  [v15 setMessage_];

  v17 = *&v10[v11];
  v12(v31, ObjectType, a2);

  sub_20B9A9A88(v31);
  v18 = sub_20C13C914();

  [v17 setDoneText_];

  v19 = *&v10[v11];
  v12(v32, ObjectType, a2);

  sub_20B9A9A88(v32);
  v20 = sub_20C13C914();

  [v19 setText_];

  v21 = *&v10[v11];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26[4] = sub_20BAF35AC;
  v26[5] = v22;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_20B7B548C;
  v26[3] = &block_descriptor_81;
  v23 = _Block_copy(v26);
  v24 = v21;

  [v24 setOnCompletion_];
  _Block_release(v23);

  swift_unknownObjectRelease();
  return v10;
}

void sub_20BAF3178()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI19TextInputController_textEntryController);

    v3 = [v2 text];
    if (v3)
    {
      v4 = sub_20C13C954();
      v6 = v5;

      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC9SeymourUI19TextInputController_presenter + 8);
        v9 = v7;
        swift_unknownObjectRetain();

        ObjectType = swift_getObjectType();
        (*(v8 + 40))(v4, v6, ObjectType, v8);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [v11 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_20BAF3348()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TextInputController();
  objc_msgSendSuper2(&v5, sel_loadView);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI19TextInputController_textEntryController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    result = [v1 view];
    if (result)
    {
      v4 = result;
      [v3 addSubview_];

      return [v1 didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_20BAF3498()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextInputController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BAF353C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BAF35B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static CountdownPreparationCompleted.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

char *sub_20BAF36A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_layout];
  *v12 = xmmword_20C16CD60;
  *(v12 + 1) = xmmword_20C16CD70;
  *(v12 + 2) = xmmword_20C16CD80;
  *(v12 + 3) = xmmword_20C16CD90;
  *(v12 + 4) = xmmword_20C16CDA0;
  *(v12 + 5) = vdupq_n_s64(0x404E000000000000uLL);
  v13 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView;
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v15 = qword_27C760820;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = &v5[v13];
  [v16 smu:*&qword_27C79ACA0 setContinuousCornerRadius:?];
  [v16 setClipsToBounds_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  *v17 = v16;
  *(v17 + 1) = &off_2822B63E8;
  v18 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_captionLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTextAlignment_];
  [v19 setLineBreakMode_];
  [v19 setNumberOfLines_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  v20 = objc_opt_self();
  v21 = [v20 smu:*MEMORY[0x277D76940] preferredFontForTextStyle:1024 variant:?];
  [v19 setFont_];

  v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v19 setTextColor_];

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v18] = v19;
  v23 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_titleLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v24 setTextAlignment_];
  [v24 setLineBreakMode_];
  [v24 setNumberOfLines_];
  [v24 setAllowsDefaultTighteningForTruncation_];
  v25 = [v20 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:1024 variant:?];
  [v24 setFont_];

  v26 = objc_opt_self();
  v27 = [v26 labelColor];
  [v24 setTextColor_];

  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v23] = v24;
  v28 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v29 setTextAlignment_];
  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  [v29 setAllowsDefaultTighteningForTruncation_];
  v30 = [v20 preferredFontForTextStyle_];
  [v29 setFont_];

  v31 = [v26 secondaryLabelColor];
  [v29 setTextColor_];

  v32 = sub_20BD54D68();
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v28] = v32;
  v33 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttons] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttonActions] = v33;
  v34 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v34 setAxis_];
  [v34 setAlignment_];
  [v34 setDistribution_];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_textStackView] = v34;
  v35 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v35 setAxis_];
  [v35 setAlignment_];
  [v35 setDistribution_];
  [v35 setSpacing_];
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttonStackView] = v35;
  v98.receiver = v5;
  v98.super_class = type metadata accessor for TVWorkoutPlanBrickItemCell();
  v36 = objc_msgSendSuper2(&v98, &selRef__hysteresis, a1, a2, a3, a4);
  v37 = [v36 contentView];
  v38 = [v37 layer];

  v39 = &v36[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_layout];
  [v38 setCornerRadius_];

  v40 = [v36 contentView];
  [v40 setClipsToBounds_];

  v41 = [v36 contentView];
  v96 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView;
  [v41 addSubview_];

  v42 = [v36 contentView];
  v43 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_textStackView;
  [v42 addSubview_];

  v44 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_captionLabel;
  [*&v36[v43] addArrangedSubview_];
  v45 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_titleLabel;
  [*&v36[v43] addArrangedSubview_];
  [*&v36[v43] addArrangedSubview_];
  [*&v36[v43] setCustomSpacing:*&v36[v44] afterView:v39[2]];
  [*&v36[v43] setCustomSpacing:*&v36[v45] afterView:v39[3]];
  v46 = [v36 contentView];
  v47 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttonStackView;
  [v46 addSubview_];

  v97 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_20C150050;
  v49 = v48;
  v50 = [*&v36[v43] leadingAnchor];
  v51 = [v36 contentView];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52 constant:v39[9]];
  v49[4] = v53;
  v54 = [*&v36[v43] topAnchor];
  v55 = [v36 contentView];
  v56 = [v55 &selRef_setLineBreakMode_];

  v57 = [v54 constraintEqualToAnchor:v56 constant:v39[8]];
  v49[5] = v57;
  v58 = [*&v36[v43] widthAnchor];
  v59 = [v58 constraintEqualToConstant_];

  v49[6] = v59;
  v60 = [*&v36[v47] leadingAnchor];
  v61 = [v36 contentView];
  v62 = [v61 leadingAnchor];

  v63 = [v60 constraintEqualToAnchor:v62 constant:v39[9]];
  v49[7] = v63;
  v64 = [*&v36[v47] bottomAnchor];
  v65 = [v36 contentView];
  v66 = [v65 &selRef_secondaryLabel + 5];

  v67 = [v64 constraintEqualToAnchor:v66 constant:-v39[10]];
  v49[8] = v67;
  v68 = *&v36[v96];
  v69 = [v36 contentView];

  v71 = *MEMORY[0x277D768C8];
  v70 = *(MEMORY[0x277D768C8] + 8);
  v72 = *(MEMORY[0x277D768C8] + 16);
  v73 = *(MEMORY[0x277D768C8] + 24);
  v74 = [v68 leadingAnchor];
  v75 = [v69 leadingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:v70];

  LODWORD(v77) = 1148846080;
  [v76 setPriority_];
  v78 = v76;
  v79 = [v68 trailingAnchor];
  v80 = [v69 trailingAnchor];
  v81 = [v79 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v82) = 1148846080;
  [v81 setPriority_];
  v83 = v81;
  v84 = [v68 topAnchor];
  v85 = [v69 topAnchor];
  v86 = [v84 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v87) = 1148846080;
  [v86 setPriority_];
  v88 = [v68 bottomAnchor];
  v89 = [v69 bottomAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:-v72];

  LODWORD(v91) = 1148846080;
  [v90 &selRef_meterUnit];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v78;
  *(inited + 40) = v83;
  *(inited + 48) = v86;
  *(inited + 56) = v90;
  v93 = v86;

  sub_20B8D9310(inited);
  sub_20B51C88C(0, &qword_281100500);
  v94 = sub_20C13CC54();

  [v97 activateConstraints_];

  return v36;
}

uint64_t sub_20BAF45BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TVWorkoutPlanBrickItemCell();
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

uint64_t sub_20BAF4778(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ButtonAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttonActions) = a1;

  v8 = *(a1 + 16);
  if (v8)
  {
    v42 = MEMORY[0x277D84F90];

    sub_20C13DD64();
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    do
    {
      sub_20B7632E0(v9, v7, type metadata accessor for ButtonAction);
      sub_20BAF4CCC(v7);
      sub_20BAF8390(v7, type metadata accessor for ButtonAction);
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v9 += v10;
      --v8;
    }

    while (v8);
    v11 = v42;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v38 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttons;
  *(v1 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttons) = v11;

  v41 = *(v1 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttonStackView);
  v12 = [v41 subviews];
  sub_20B51C88C(0, &qword_27C762910);
  v13 = sub_20C13CC74();

  v39 = v2;
  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v15 = 0;
    v16 = v13 & 0xFFFFFFFFFFFFFF8;
    v40 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x20F2F5430](v15, v13);
      }

      else
      {
        if (v15 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [v17 removeFromSuperview];
      v20 = [v18 constraints];
      if (!v20)
      {
        sub_20B51C88C(0, &qword_281100500);
        sub_20C13CC74();
        v20 = sub_20C13CC54();
        v16 = v40;
      }

      [objc_opt_self() deactivateConstraints_];

      ++v15;
      if (v19 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  v21 = v39;
  v22 = *(v39 + v38);
  if (v22 >> 62)
  {
    goto LABEL_34;
  }

  for (j = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_20C13DB34())
  {
    v24 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_layout;

    if (!j)
    {
      break;
    }

    v25 = 0;
    v38 = v21 + v24;
    v39 = v22 & 0xFFFFFFFFFFFFFF8;
    v40 = v22 & 0xC000000000000001;
    v37 = xmmword_20C151490;
    while (1)
    {
      if (v40)
      {
        v26 = MEMORY[0x20F2F5430](v25, v22);
      }

      else
      {
        if (v25 >= *(v39 + 16))
        {
          goto LABEL_33;
        }

        v26 = *(v22 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      [v41 addArrangedSubview_];
      v29 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v30 = swift_allocObject();
      *(v30 + 16) = v37;
      v31 = [v27 widthAnchor];
      v32 = v38;
      v33 = [v31 constraintGreaterThanOrEqualToConstant_];

      *(v30 + 32) = v33;
      v34 = [v27 heightAnchor];
      v35 = [v34 constraintEqualToConstant_];

      *(v30 + 40) = v35;
      sub_20B51C88C(0, &qword_281100500);
      v21 = sub_20C13CC54();

      [v29 activateConstraints_];

      ++v25;
      if (v28 == j)
      {
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }
}

char *sub_20BAF4CCC(uint64_t a1)
{
  v26[0] = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v26[0]);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0;
  if (_UISolariumEnabled())
  {
    v4 = [objc_opt_self() smu:*MEMORY[0x277D76918] preferredFontForTextStyle:8 variant:v26[0]];
  }

  v5 = type metadata accessor for TVButtonTextContentView();
  v6 = objc_allocWithZone(v5);
  v7 = TVButtonTextContentView.init(title:)(0, 0);
  v8 = v7;
  if (v4)
  {
    [*&v7[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  v9 = objc_allocWithZone(type metadata accessor for TVButton());
  v10 = sub_20BB87F6C(v8, 0, 0, v9, 0.0, 0.0, 0.0, 0.0);

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  objc_allocWithZone(v5);

  v13 = TVButtonTextContentView.init(title:)(v11, v12);
  v14 = [objc_opt_self() smu:*MEMORY[0x277D76918] preferredFontForTextStyle:1024 variant:?];
  [*&v13[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];

  v15 = v13;
  sub_20BB88C24(v15, v10);

  v16 = type metadata accessor for ButtonAction(0);
  sub_20B7632E0(a1 + *(v16 + 28), v3, type metadata accessor for ButtonAction.ActionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = type metadata accessor for ButtonAction.ActionType;
  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 12)
    {
      sub_20BAF8390(v3, type metadata accessor for ButtonAction.ActionType);
      goto LABEL_10;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 64);
    v22 = sub_20C137254();
    (*(*(v22 - 8) + 8))(&v3[v21], v22);
    sub_20B520158(&v3[v20], &qword_27C76A410);
    v18 = type metadata accessor for StartWorkoutSessionRequest;
  }

  sub_20BAF8390(v3, v18);
  v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v24 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v10[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v23 forState:8];
  [*&v10[v24] setBackgroundColor:v23 forState:1];

LABEL_10:
  v10[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = 0;
  sub_20B9DDDD4();
  [v10 addTarget:v26[1] action:sel_handleTappedButton_ forControlEvents:0x2000];

  return v10;
}

uint64_t sub_20BAF5068(void *a1)
{
  v3 = sub_20C13BB84();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C133244();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttons);

  v13 = sub_20BD904F4(a1, v12);
  v15 = v14;

  if (v15)
  {
    sub_20C13B534();
    v16 = a1;
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1D4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 136446210;
      v21 = OBJC_IVAR____TtC9SeymourUI8TVButton_contentView;
      swift_beginAccess();
      v22 = [*&v16[v21] debugDescription];
      v23 = sub_20C13C954();
      v25 = v24;

      v26 = sub_20B51E694(v23, v25, &v39);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_20B517000, v17, v18, "Unhandled button action for %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    return (*(v37 + 8))(v5, v38);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttonActions);
  if (v13 >= *(v28 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = *(type metadata accessor for ButtonAction(0) - 8);
  sub_20B7632E0(v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v13, v11, type metadata accessor for ButtonAction);
  v31 = swift_storeEnumTagMultiPayload();
  *&v32 = MEMORY[0x28223BE20](v31).n128_u64[0];
  *(&v35 - 4) = 0;
  *(&v35 - 24) = 1;
  *(&v35 - 2) = v11;
  *(&v35 - 1) = v29;
  v33 = [*(v29 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
  if (v33)
  {
    v34 = v33;
    sub_20C1331E4();

    sub_20C0C1CDC(v8, sub_20B5E27BC);
    swift_unknownObjectRelease();
    (*(v36 + 8))(v8, v6);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_20BAF8390(v11, type metadata accessor for ShelfItemAction);
}

id sub_20BAF556C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVWorkoutPlanBrickItemCell()
{
  result = qword_27C76A3F0;
  if (!qword_27C76A3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BAF56D4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BAF57A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20BAF57C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_20BAF581C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BAF5868@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BAF58C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BAF5950(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v396 = *(v2 - 8);
  v397 = v2;
  MEMORY[0x28223BE20](v2);
  v395 = &v357 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v382 = *(v383 - 8);
  MEMORY[0x28223BE20](v383);
  v379 = &v357 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v380 = &v357 - v6;
  v378 = v7;
  MEMORY[0x28223BE20](v8);
  v381 = &v357 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v357 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v384 = &v357 - v14;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v393 = *(v394 - 8);
  MEMORY[0x28223BE20](v394);
  v16 = &v357 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v377 = &v357 - v18;
  v376 = v19;
  MEMORY[0x28223BE20](v20);
  v385 = &v357 - v21;
  v391 = sub_20C1391C4();
  v390 = *(v391 - 8);
  MEMORY[0x28223BE20](v391);
  v392 = &v357 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = sub_20C138A64();
  v387 = *(v388 - 8);
  MEMORY[0x28223BE20](v388);
  v24 = &v357 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v386 = &v357 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v27 - 8);
  v389 = &v357 - v28;
  v29 = sub_20C13C554();
  v406 = *(v29 - 8);
  v407 = v29;
  MEMORY[0x28223BE20](v29);
  v405 = (&v357 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_20C137C24();
  v408 = *(v31 - 8);
  v409 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v357 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v398 = v36;
  v399 = &v357 - v35;
  MEMORY[0x28223BE20](v37);
  v400 = &v357 - v38;
  v39 = sub_20C136CD4();
  v401 = *(v39 - 8);
  v402 = v39;
  MEMORY[0x28223BE20](v39);
  v41 = &v357 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v404 = &v357 - v43;
  v44 = sub_20C134E44();
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v357 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v403 = &v357 - v48;
  v49 = sub_20C134014();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v357 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = (a1 >> 57) & 0x78 | a1 & 7;
  switch(v55)
  {
    case 'J':
      v366 = v12;
      v385 = v46;
      v386 = v41;
      v375 = v33;
      v367 = v24;
      v368 = v16;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70);
      v93 = swift_projectBox();
      v94 = *(v93 + v92[16]);
      v95 = v93 + v92[20];
      v96 = *v95;
      v403 = *(v95 + 8);
      v97 = *(v95 + 16);
      v98 = *(v95 + 24);
      v99 = *(v95 + 40);
      v400 = *(v95 + 32);
      v100 = (v93 + v92[24]);
      v101 = *v100;
      v102 = v100[1];
      v397 = v50;
      (*(v50 + 16))(v52, v93, v49);
      v103 = *&v410[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_captionLabel];
      v404 = v52;
      v374 = v97;
      v373 = v98;
      v372 = v99;
      v371 = v94;
      if (v102 >= 2)
      {
        v411 = v101;
        v412 = v102;
        sub_20B5F6EB0();

        v122 = v96;
        v123 = v403;
        v124 = v403;
        v125 = v97;

        sub_20C13D9E4();
        v108 = sub_20C13C914();

        v109 = v96;
        v105 = v123;
      }

      else
      {

        v104 = v96;
        v105 = v403;
        v106 = v403;
        v107 = v97;

        v108 = 0;
        v109 = v96;
      }

      [v103 setText_];

      v126 = v410;
      v127 = v109;
      [*&v410[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_titleLabel] setAttributedText_];
      [*&v126[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_subtitleLabel] setAttributedText_];
      v128 = v385;
      sub_20C133F04();
      v370 = sub_20C138054();
      v396 = v129;
      v130 = v386;
      sub_20C134E34();
      v131 = v375;
      sub_20C136CB4();
      v369 = sub_20C136CC4();
      v384 = v132;
      sub_20B51C88C(0, &qword_281100530);
      v133 = sub_20C13D374();
      v135 = v405;
      v134 = v406;
      *v405 = v133;
      v136 = v407;
      v134[13](v135, *MEMORY[0x277D85200], v407);
      v137 = sub_20C13C584();
      result = (v134[1])(v135, v136);
      if ((v137 & 1) == 0)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        return result;
      }

      v395 = v49;
      v139 = *&v126[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView];
      v138 = *&v126[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v139 setContentMode_];
      if (sub_20BA66C54(v131, v139, v138, 0))
      {
        v407 = v127;
        v141 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v143 = v408;
        v142 = v409;
        v144 = *(v408 + 16);
        v145 = v399;
        v359 = v408 + 16;
        v362 = v144;
        v144(v399, v131, v409);
        v146 = *(v143 + 80);
        v405 = v139;
        v147 = (v146 + 24) & ~v146;
        v358 = v398 + 7;
        v148 = (v398 + 7 + v147) & 0xFFFFFFFFFFFFFFF8;
        v149 = (v148 + 23) & 0xFFFFFFFFFFFFFFF8;
        v365 = ObjectType;
        v150 = (v149 + 23) & 0xFFFFFFFFFFFFFFF8;
        v364 = (v150 + 15) & 0xFFFFFFFFFFFFFFF8;
        v406 = v138;
        v363 = v146;
        v151 = swift_allocObject();
        *(v151 + 16) = v141;
        v152 = v143;
        v153 = v145;
        v154 = *(v152 + 32);
        v361 = (v152 + 32);
        v360 = v154;
        v154(v151 + v147, v145, v142);
        v155 = (v151 + v148);
        v156 = v384;
        *v155 = v369;
        v155[1] = v156;
        v157 = (v151 + v149);
        v158 = v396;
        *v157 = v370;
        v157[1] = v158;
        *(v151 + v150) = 2;
        v159 = v365;
        v160 = v151 + v364;
        *v160 = MEMORY[0x277D84F90];
        *(v160 + 8) = 0;
        v161 = (v151 + ((v150 + 31) & 0xFFFFFFFFFFFFFFF8));
        v162 = v406;
        *v161 = 0;
        v161[1] = 0;
        v163 = v162[19];

        v164 = v405;

        v163(sub_20BAF8128, v151, v159, v162);

        [v164 bounds];
        if (v165 <= 0.0 || (v167 = v166, v166 <= 0.0))
        {

          v265 = v408;
          v189 = v409;
        }

        else
        {
          v168 = v165;
          v364 = ~v363;
          (v162[15])(0, v159, v162);
          v169 = v389;
          v170 = v162;
          v171 = v375;
          v172 = v409;
          (v362)(v389, v375, v409);
          (*(v408 + 56))(v169, 0, 1, v172);
          (v170[2])(v169, v159, v170);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v173 = sub_20C13D5A4();
          [v164 setBackgroundColor_];

          (v170[22])(COERCE_DOUBLE(*&v168), COERCE_DOUBLE(*&v167), 0, v159, v170);
          v174 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v175 = v171;
          v176 = v362;
          (v362)(v153, v175, v172);
          v177 = (v363 + 16) & v364;
          v178 = (v358 + v177) & 0xFFFFFFFFFFFFFFF8;
          v179 = (v178 + 15) & 0xFFFFFFFFFFFFFFF8;
          v180 = swift_allocObject();
          v360(v180 + v177, v153, v172);
          *(v180 + v178) = v174;
          v181 = (v180 + v179);
          *v181 = v168;
          v181[1] = v167;
          v182 = (v180 + ((v179 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v182 = 0;
          v182[1] = 0;
          v183 = v375;
          v176(v153);
          (*(v390 + 104))(v392, *MEMORY[0x277D542A8], v391);

          v184 = v367;
          v185 = v153;
          sub_20C138A54();
          v186 = v366;
          sub_20B5F1D70(v184, v366);
          v187 = v393;
          v188 = v394;
          if ((*(v393 + 48))(v186, 1, v394) == 1)
          {
            sub_20B520158(v186, &unk_27C766670);
            sub_20BA1DB0C();

            (*(v387 + 8))(v184, v388);
            v189 = v409;
            v191 = v401;
            v190 = v402;
            v192 = v404;
            v193 = v407;
            v131 = v183;
            v194 = v371;
            v130 = v386;
            v128 = v385;
LABEL_29:
            v265 = v408;
            goto LABEL_33;
          }

          v406 = *(v187 + 32);
          (v406)(v368, v186, v188);
          v295 = swift_allocObject();
          swift_unknownObjectWeakInit();
          (v176)(v153, v183, v409);
          v296 = (v363 + 40) & v364;
          v297 = v296 + v398;
          v298 = (v296 + v398) & 0xFFFFFFFFFFFFFFF8;
          v299 = swift_allocObject();
          *(v299 + 2) = v295;
          v299[3] = v168;
          v299[4] = v167;
          v360(v299 + v296, v185, v409);
          *(v299 + v297) = 0;
          v300 = v299 + v298;
          *(v300 + 1) = 0;
          *(v300 + 2) = 0;
          v301 = swift_allocObject();
          *(v301 + 16) = sub_20BAF8130;
          *(v301 + 24) = v299;
          v302 = v393;
          v303 = v377;
          v304 = v394;
          (*(v393 + 16))(v377, v368, v394);
          v305 = (*(v302 + 80) + 16) & ~*(v302 + 80);
          v306 = (v376 + v305 + 7) & 0xFFFFFFFFFFFFFFF8;
          v307 = swift_allocObject();
          (v406)(v307 + v305, v303, v304);
          v308 = (v307 + v306);
          *v308 = sub_20B5F67A4;
          v308[1] = v301;
          v309 = v380;
          sub_20C137C94();
          v310 = swift_allocObject();
          *(v310 + 16) = sub_20BAF812C;
          *(v310 + 24) = v180;
          v311 = swift_allocObject();
          *(v311 + 16) = sub_20B5F67D4;
          *(v311 + 24) = v310;
          v312 = v382;
          v313 = v379;
          v314 = v383;
          (*(v382 + 16))(v379, v309, v383);
          v315 = (*(v312 + 80) + 16) & ~*(v312 + 80);
          v316 = (v378 + v315 + 7) & 0xFFFFFFFFFFFFFFF8;
          v317 = swift_allocObject();
          (*(v312 + 32))(v317 + v315, v313, v314);
          v318 = (v317 + v316);
          *v318 = sub_20B5DF204;
          v318[1] = v311;

          v319 = v381;
          sub_20C137C94();
          v320 = *(v312 + 8);
          v320(v309, v314);
          v321 = sub_20C137CB4();
          v322 = swift_allocObject();
          *(v322 + 16) = 0;
          *(v322 + 24) = 0;
          v321(sub_20B52347C, v322);
          v323 = v409;

          v324 = v314;
          v265 = v408;
          v320(v319, v324);
          (*(v302 + 8))(v368, v394);
          (*(v387 + 8))(v367, v388);
          v189 = v323;
        }

        v191 = v401;
        v190 = v402;
        v192 = v404;
        v193 = v407;
        v131 = v375;
        v194 = v371;
        v130 = v386;
        v128 = v385;
LABEL_33:
        (*(v265 + 8))(v131, v189);
        (*(v191 + 8))(v130, v190);

        sub_20BAF8390(v128, MEMORY[0x277D51268]);
        v266 = sub_20C133FF4();
        v268 = v267;
        v270 = v269;
        sub_20B5F0A10(v266, v267, v269);
        sub_20B584078(v266, v268, v270);
        if (!v194[2])
        {
          v274 = MEMORY[0x277D84F90];
          v275 = MEMORY[0x277D84F90];
          v272 = v374;
LABEL_50:

          v411 = v274;
          sub_20B8D9064(v275);
          sub_20BAF4778(v411);

          v291 = *(v397 + 8);
          v292 = v192;
          return v291(v292, v395);
        }

        v271 = sub_20B65CEBC(0);
        v272 = v374;
        if (v273)
        {
          v274 = *(v194[7] + 8 * v271);

          if (!v194[2])
          {
            goto LABEL_49;
          }
        }

        else
        {
          v274 = MEMORY[0x277D84F90];
          if (!v194[2])
          {
            goto LABEL_49;
          }
        }

        v289 = sub_20B65CEBC(1);
        if (v290)
        {
          v275 = *(v194[7] + 8 * v289);

          goto LABEL_50;
        }

LABEL_49:
        v275 = MEMORY[0x277D84F90];
        goto LABEL_50;
      }

      v189 = v409;
      v191 = v401;
      v190 = v402;
      v194 = v371;
      v193 = v127;
      v192 = v404;
      goto LABEL_29;
    case '!':
      v78 = v410;
      v79 = *&v410[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_captionLabel];
      v80 = sub_20C13C914();
      [v79 setText_];

      v81 = *&v78[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_titleLabel];
      v82 = sub_20C13C914();
      [v81 setText_];

      v83 = *&v78[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_subtitleLabel];
      v84 = sub_20C13C914();
      [v83 setText_];

      sub_20BA1DB0C();
      v86 = *&v78[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView];
      v85 = *&v78[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView + 8];
      v87 = swift_getObjectType();
      (*(v85 + 264))(0, v87, v85);
      (*(v85 + 296))(0, 0, v87, v85);
      v88 = [v86 layer];
      [v88 setBorderColor_];

      v89 = [v86 layer];
      [v89 setBorderWidth_];

      v90 = MEMORY[0x277D84F90];

      return sub_20BAF4778(v90);
    case ' ':
      v56 = (&v357 - v54);
      v57 = v49;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v59 = swift_projectBox();
      v60 = v59 + v58[16];
      v62 = *v60;
      v61 = *(v60 + 8);
      v63 = *(v60 + 16);
      v64 = *(v60 + 24);
      v66 = *(v60 + 32);
      v65 = *(v60 + 40);
      v374 = v66;
      v373 = v65;
      v67 = (v59 + v58[20]);
      v68 = *v67;
      v69 = v67[1];
      v70 = *(v59 + v58[32]);
      v396 = v56;
      v397 = v50;
      v71 = *(v50 + 16);
      v395 = v57;
      v71(v56, v59, v57);
      v72 = v410;
      v73 = *&v410[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_captionLabel];
      v370 = v63;
      v369 = v70;
      if (v69 >= 2)
      {
        v411 = v68;
        v412 = v69;
        sub_20B5F6EB0();
        v195 = v62;
        v196 = v61;
        v197 = v63;

        sub_20C13D9E4();
        v77 = sub_20C13C914();
      }

      else
      {
        v74 = v62;
        v75 = v61;
        v76 = v63;

        v77 = 0;
      }

      [v73 setText_];

      v198 = v72;
      v199 = *&v72[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_titleLabel];
      v200 = v62;
      [v199 setAttributedText_];
      v201 = *&v198[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_subtitleLabel];
      v371 = v61;
      [v201 setAttributedText_];
      sub_20C133F04();
      v368 = sub_20C138054();
      v375 = v202;
      sub_20C134E34();
      v203 = v400;
      sub_20C136CB4();
      v367 = sub_20C136CC4();
      v372 = v204;
      sub_20B51C88C(0, &qword_281100530);
      v205 = sub_20C13D374();
      v207 = v405;
      v206 = v406;
      *v405 = v205;
      v208 = v407;
      v206[13](v207, *MEMORY[0x277D85200], v407);
      v209 = sub_20C13C584();
      result = (v206[1])(v207, v208);
      if (v209)
      {
        v406 = v64;
        v211 = *&v198[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView];
        v210 = *&v198[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView + 8];
        v212 = swift_getObjectType();
        [v211 setContentMode_];
        v213 = sub_20BA66C54(v203, v211, v210, 0);
        v407 = v212;
        if (v213)
        {
          v365 = v200;
          v214 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v215 = v408;
          v216 = *(v408 + 16);
          v366 = v210;
          v217 = v399;
          v218 = v409;
          v363 = v408 + 16;
          v361 = v216;
          v216(v399, v203, v409);
          v219 = *(v215 + 80);
          v220 = (v219 + 24) & ~v219;
          v359 = v398 + 7;
          v221 = (v398 + 7 + v220) & 0xFFFFFFFFFFFFFFF8;
          v405 = v211;
          v222 = (v221 + 23) & 0xFFFFFFFFFFFFFFF8;
          v223 = (v222 + 23) & 0xFFFFFFFFFFFFFFF8;
          v364 = (v223 + 15) & 0xFFFFFFFFFFFFFFF8;
          v362 = v219;
          v224 = swift_allocObject();
          *(v224 + 16) = v214;
          v225 = v217;
          v210 = v366;
          v226 = v218;
          v227 = v215 + 32;
          v360 = *(v215 + 32);
          v360(v224 + v220, v225, v226);
          v228 = (v224 + v221);
          v229 = v372;
          *v228 = v367;
          v228[1] = v229;
          v230 = (v224 + v222);
          v231 = v405;
          v232 = v375;
          *v230 = v368;
          v230[1] = v232;
          *(v224 + v223) = 2;
          v233 = v224 + v364;
          *v233 = MEMORY[0x277D84F90];
          *(v233 + 8) = 0;
          v234 = (v224 + ((v223 + 31) & 0xFFFFFFFFFFFFFFF8));
          *v234 = 0;
          v234[1] = 0;
          v235 = *(v210 + 152);

          v236 = v407;
          v235(sub_20BAF8944, v224, v407, v210);

          [v231 bounds];
          if (v237 > 0.0)
          {
            v239 = v238;
            if (v238 > 0.0)
            {
              v240 = v237;
              v364 = ~v362;
              (*(v210 + 120))(0, v236, v210);
              v241 = v389;
              v242 = v210;
              v243 = v400;
              v244 = v409;
              v361(v389, v400, v409);
              (*(v408 + 56))(v241, 0, 1, v244);
              (*(v242 + 16))(v241, v236, v242);
              sub_20B51C88C(0, &qword_27C762070);
              sub_20C137BC4();
              v245 = sub_20C13D5A4();
              [v231 setBackgroundColor_];

              (*(v242 + 176))(COERCE_DOUBLE(*&v240), COERCE_DOUBLE(*&v239), 0, v236, v242);
              v246 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v247 = v399;
              v248 = v361;
              v361(v399, v243, v244);
              v249 = (v362 + 16) & v364;
              v250 = (v359 + v249) & 0xFFFFFFFFFFFFFFF8;
              v251 = (v250 + 15) & 0xFFFFFFFFFFFFFFF8;
              v252 = (v251 + 23) & 0xFFFFFFFFFFFFFFF8;
              v253 = swift_allocObject();
              v359 = v227;
              v360(v253 + v249, v247, v244);
              *(v253 + v250) = v246;
              v254 = (v253 + v251);
              v203 = v400;
              *v254 = v240;
              v254[1] = v239;
              v389 = v253;
              v255 = (v253 + v252);
              v256 = v248;
              *v255 = 0;
              v255[1] = 0;
              v248(v247, v203, v244);
              (*(v390 + 104))(v392, *MEMORY[0x277D542A8], v391);

              v257 = v386;
              sub_20C138A54();
              v258 = v384;
              sub_20B5F1D70(v257, v384);
              v259 = v244;
              v260 = v393;
              v261 = v394;
              if ((*(v393 + 48))(v258, 1, v394) != 1)
              {
                v392 = *(v260 + 32);
                (v392)(v385, v258, v261);
                v325 = v259;
                v326 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v256(v247, v203, v325);
                v327 = (v362 + 40) & v364;
                v328 = v327 + v398;
                v329 = (v327 + v398) & 0xFFFFFFFFFFFFFFF8;
                v330 = swift_allocObject();
                *(v330 + 2) = v326;
                v330[3] = v240;
                v330[4] = v239;
                v360(v330 + v327, v247, v325);
                *(v330 + v328) = 0;
                v331 = v330 + v329;
                *(v331 + 1) = 0;
                *(v331 + 2) = 0;
                v332 = swift_allocObject();
                *(v332 + 16) = sub_20BAF892C;
                *(v332 + 24) = v330;
                v333 = v260;
                v334 = *(v260 + 16);
                v335 = v377;
                v336 = v394;
                v334(v377, v385, v394);
                v337 = (*(v333 + 80) + 16) & ~*(v333 + 80);
                v338 = (v376 + v337 + 7) & 0xFFFFFFFFFFFFFFF8;
                v339 = swift_allocObject();
                (v392)(v339 + v337, v335, v336);
                v340 = (v339 + v338);
                *v340 = sub_20B5F7760;
                v340[1] = v332;
                v341 = v380;
                sub_20C137C94();
                v342 = swift_allocObject();
                v343 = v389;
                *(v342 + 16) = sub_20BAF8948;
                *(v342 + 24) = v343;
                v344 = swift_allocObject();
                *(v344 + 16) = sub_20B5F7790;
                *(v344 + 24) = v342;
                v345 = v382;
                v346 = v379;
                v347 = v383;
                (*(v382 + 16))(v379, v341, v383);
                v348 = (*(v345 + 80) + 16) & ~*(v345 + 80);
                v349 = (v378 + v348 + 7) & 0xFFFFFFFFFFFFFFF8;
                v350 = swift_allocObject();
                (*(v345 + 32))(v350 + v348, v346, v347);
                v351 = (v350 + v349);
                *v351 = sub_20B5F7764;
                v351[1] = v344;

                v352 = v381;
                sub_20C137C94();
                v353 = *(v345 + 8);
                v353(v341, v347);
                v354 = sub_20C137CB4();
                v355 = swift_allocObject();
                *(v355 + 16) = 0;
                *(v355 + 24) = 0;
                v354(sub_20B5DF6DC, v355);
                v203 = v400;

                v356 = v404;
                v276 = v408;

                v353(v352, v347);
                v277 = v356;
                (*(v393 + 8))(v385, v394);
                (*(v387 + 8))(v386, v388);
                v263 = v401;
                v262 = v402;
                v200 = v365;
                v264 = v369;
                v210 = v366;
LABEL_41:
                (*(v276 + 8))(v203, v409);
                (*(v263 + 8))(v277, v262);

                sub_20BAF8390(v403, MEMORY[0x277D51268]);
                v278 = sub_20C133EB4() > 0;
                (*(v210 + 264))(v278, v407, v210);
                v279 = sub_20C133FF4();
                v281 = v280;
                v283 = v282;
                sub_20B5F0A10(v279, v280, v282);
                sub_20B584078(v279, v281, v283);
                if (!*(v264 + 16))
                {
                  v287 = MEMORY[0x277D84F90];
                  v288 = MEMORY[0x277D84F90];
                  v285 = v370;
LABEL_55:

                  v411 = v287;
                  sub_20B8D9064(v288);
                  sub_20BAF4778(v411);

                  v292 = v396;
                  v291 = *(v397 + 8);
                  return v291(v292, v395);
                }

                v284 = sub_20B65CEBC(0);
                v285 = v370;
                if (v286)
                {
                  v287 = *(*(v264 + 56) + 8 * v284);

                  if (!*(v264 + 16))
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  v287 = MEMORY[0x277D84F90];
                  if (!*(v264 + 16))
                  {
                    goto LABEL_54;
                  }
                }

                v293 = sub_20B65CEBC(1);
                if (v294)
                {
                  v288 = *(*(v264 + 56) + 8 * v293);

                  goto LABEL_55;
                }

LABEL_54:
                v288 = MEMORY[0x277D84F90];
                goto LABEL_55;
              }

              sub_20B520158(v258, &unk_27C766670);
              sub_20BA1DB0C();

              (*(v387 + 8))(v257, v388);
              v263 = v401;
              v262 = v402;
              v200 = v365;
              v264 = v369;
              v210 = v366;
LABEL_40:
              v276 = v408;
              v277 = v404;
              goto LABEL_41;
            }
          }

          v263 = v401;
          v262 = v402;
          v200 = v365;
          v203 = v400;
        }

        else
        {

          v263 = v401;
          v262 = v402;
        }

        v264 = v369;
        goto LABEL_40;
      }

      goto LABEL_60;
    default:
      v110 = v395;
      sub_20C13B534();

      v111 = v410;
      v112 = sub_20C13BB74();
      v113 = sub_20C13D1D4();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v411 = v116;
        *v114 = 138543618;
        *(v114 + 4) = v111;
        *v115 = v111;
        *(v114 + 12) = 2082;
        v413 = a1;
        v117 = sub_20B5F66D0();
        v118 = v111;
        v119 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v117);
        v121 = sub_20B51E694(v119, v120, &v411);

        *(v114 + 14) = v121;
        _os_log_impl(&dword_20B517000, v112, v113, "Attempted to configure %{public}@ with item: %{public}s", v114, 0x16u);
        sub_20B520158(v115, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v115, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v116);
        MEMORY[0x20F2F6A40](v116, -1, -1);
        MEMORY[0x20F2F6A40](v114, -1, -1);
      }

      return v396[1](v110, v397);
  }
}

void sub_20BAF8148()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA56454(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BAF8220(void *a1)
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

  sub_20BA63850(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BAF82DC(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F30AC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20BAF8390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BAF83F0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = v1 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_layout;
  *v4 = xmmword_20C16CD60;
  *(v4 + 16) = xmmword_20C16CD70;
  *(v4 + 32) = xmmword_20C16CD80;
  *(v4 + 48) = xmmword_20C16CD90;
  *(v4 + 64) = xmmword_20C16CDA0;
  *(v4 + 80) = vdupq_n_s64(0x404E000000000000uLL);
  v5 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView;
  v6 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v7 = qword_27C760820;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = (v1 + v5);
  [v8 smu:*&qword_27C79ACA0 setContinuousCornerRadius:?];
  [v8 setClipsToBounds_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  *v9 = v8;
  v9[1] = &off_2822B63E8;
  v10 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_captionLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTextAlignment_];
  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v12 = objc_opt_self();
  v13 = [v12 smu:*MEMORY[0x277D76940] preferredFontForTextStyle:1024 variant:?];
  [v11 setFont_];

  v14 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v11 setTextColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v10) = v11;
  v15 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setTextAlignment_];
  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  v17 = [v12 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:1024 variant:?];
  [v16 setFont_];

  v18 = objc_opt_self();
  v19 = [v18 labelColor];
  [v16 setTextColor_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v15) = v16;
  v20 = OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_subtitleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTextAlignment_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  v22 = [v12 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v18 secondaryLabelColor];
  [v21 setTextColor_];

  v24 = sub_20BD54D68();
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v20) = v24;
  v25 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttons) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_buttonActions) = v25;
  sub_20C13DE24();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI21DynamicFontDescriptorVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20BAF8964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BAF89AC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_20BAF8A28(uint64_t a1, uint64_t a2)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](a1);
  v4 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v4);
  if (v4)
  {
    v5 = a2 + 40;
    do
    {

      sub_20C136804();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BAF8ACC()
{
  v1 = v0[1];
  MEMORY[0x20F2F58E0](*v0);
  result = MEMORY[0x20F2F58E0](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 40;
    do
    {

      sub_20C136804();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_20BAF8B4C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  MEMORY[0x20F2F58E0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_20C136804();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BAF8BE0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_20BB82110(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_20BAF8C08()
{
  result = qword_27C76A418;
  if (!qword_27C76A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A418);
  }

  return result;
}

char *sub_20BAF8C5C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_layout];
  *v11 = xmmword_20C16D070;
  *(v11 + 1) = xmmword_20C16D080;
  v12 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_primaryLabel;
  v69 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_primaryLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v14 = objc_opt_self();
  v15 = [v14 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:1024 variant:?];
  [v13 setFont_];

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  [v13 setTextColor_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v18 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_secondaryLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setNumberOfLines_];
  [v19 setTextAlignment_];
  v20 = [v14 preferredFontForTextStyle_];
  [v19 setFont_];

  v21 = [v16 secondaryLabelColor];
  [v19 setTextColor_];

  [v19 &selRef_count + 2];
  *&v4[v18] = v19;
  v22 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_separator;
  v23 = [objc_opt_self() effectWithStyle_];
  v24 = [objc_opt_self() effectForBlurEffect_];

  v25 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  [v25 &selRef_count + 2];
  *&v4[v22] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C151490;
  v27 = *&v4[v69];
  v28 = *&v4[v18];
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  v29 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v30 = v27;
  v31 = v28;
  v32 = sub_20C13CC54();

  v33 = [v29 initWithArrangedSubviews_];

  [v33 setAxis_];
  [v33 setAlignment_];
  v34 = v33;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setCustomSpacing:*&v4[v69] afterView:22.0];
  v35 = [*&v4[v22] contentView];
  v36 = [v16 tertiaryLabelColor];
  [v35 setBackgroundColor_];

  v70.receiver = v4;
  v70.super_class = type metadata accessor for TVQueueEmptyListCell();
  v37 = objc_msgSendSuper2(&v70, sel_initWithFrame_, a1, a2, a3, a4);
  v38 = [v37 contentView];
  [v38 addSubview_];

  v39 = [v37 contentView];
  v40 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_separator;
  [v39 addSubview_];

  v41 = objc_opt_self();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C150AE0;
  v43 = [*&v37[v40] heightAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *(v42 + 32) = v44;
  v45 = [*&v37[v40] leadingAnchor];
  v46 = [v37 contentView];
  v47 = [v46 leadingAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  *(v42 + 40) = v48;
  v49 = [*&v37[v40] trailingAnchor];
  v50 = [v37 contentView];
  v51 = [v50 trailingAnchor];

  v52 = [v49 constraintEqualToAnchor_];
  *(v42 + 48) = v52;
  v53 = [*&v37[v40] topAnchor];
  v54 = [v37 contentView];
  v55 = [v54 topAnchor];

  v56 = [v53 constraintEqualToAnchor_];
  *(v42 + 56) = v56;
  v57 = [v34 centerXAnchor];
  v58 = [v37 contentView];
  v59 = [v58 centerXAnchor];

  v60 = [v57 constraintEqualToAnchor_];
  *(v42 + 64) = v60;
  v61 = [v34 centerYAnchor];
  v62 = [v37 contentView];

  v63 = [v62 centerYAnchor];
  v64 = [v61 constraintEqualToAnchor_];

  *(v42 + 72) = v64;
  v65 = [v34 widthAnchor];

  v66 = [v65 constraintLessThanOrEqualToConstant_];
  *(v42 + 80) = v66;
  sub_20B51C88C(0, &qword_281100500);
  v67 = sub_20C13CC54();

  [v41 activateConstraints_];

  return v37;
}

id sub_20BAF9528()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVQueueEmptyListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVQueueEmptyListCell()
{
  result = qword_27C76A448;
  if (!qword_27C76A448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BAF9640()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BAF9708(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BAF9754@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BAF97AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BAF9820(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x3F)
  {
    v7 = *&v1[OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_primaryLabel];

    v8 = sub_20C13C914();

    [v7 setText_];

    v9 = *&v1[OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_secondaryLabel];
    v10 = sub_20C13C914();

    [v9 setText_];

    return [v1 setNeedsLayout];
  }

  else
  {
    sub_20C13B534();

    v12 = v1;
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = a1;
      v26 = v24;
      *v15 = 138543618;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2082;
      v17 = sub_20B5F66D0();
      v18 = v12;
      v19 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v17);
      v21 = sub_20B51E694(v19, v20, &v26);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_20B517000, v13, v14, "Attempted to configure %{public}@ with item: %{public}s", v15, 0x16u);
      sub_20B520158(v16, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      v22 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x20F2F6A40](v22, -1, -1);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_20BAF9B28()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_layout);
  *v3 = xmmword_20C16D070;
  v3[1] = xmmword_20C16D080;
  v4 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_primaryLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v6 = objc_opt_self();
  v7 = [v6 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:1024 variant:?];
  [v5 setFont_];

  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  [v5 setTextColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  v10 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_secondaryLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setNumberOfLines_];
  [v11 setTextAlignment_];
  v12 = [v6 preferredFontForTextStyle_];
  [v11 setFont_];

  v13 = [v8 secondaryLabelColor];
  [v11 setTextColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v14 = OBJC_IVAR____TtC9SeymourUI20TVQueueEmptyListCell_separator;
  v15 = [objc_opt_self() effectWithStyle_];
  v16 = [objc_opt_self() effectForBlurEffect_];

  v17 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v17;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BAF9E58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_timeoutTimer) = 0;
  v9 = (v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onDiscoveryTimeout);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onParticipantConnected);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onNewGuestFlowSelected);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onSkipSelected);
  *v12 = 0;
  v12[1] = 0;
  type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  *(v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_role) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7689E0);
  sub_20C133AA4();
  sub_20B51C710(v17, v3 + 96);
  sub_20C133AA4();
  *(v3 + 136) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767920);
  sub_20C133AA4();
  sub_20B51C710(v17, v3 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v13 = *(&v17[0] + 1);
  *(v3 + 32) = *&v17[0];
  *(v3 + 40) = v13;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + 48) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v17, v3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  sub_20B51C710(v17, v3 + 184);
  *(v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_isShowingSkipButton) = 0;
  v14 = MEMORY[0x277D84FA0];
  *(v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_discoveredParticipants) = MEMORY[0x277D84FA0];
  *(v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_fetchedAvatars) = v14;
  type metadata accessor for RemoteParticipantButton();
  sub_20BB06B88(&unk_27C76A498, type metadata accessor for RemoteParticipantButton);
  sub_20C13BE84();
  (*(v6 + 32))(v3 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_currentSnapshot, v8, v5);
  type metadata accessor for RemoteParticipantAvatarProvider();
  *(v3 + 224) = swift_allocObject();
  swift_beginAccess();
  sub_20C13BE24();
  swift_endAccess();
  swift_getObjectType();
  sub_20C13B144();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v17);
  swift_getObjectType();
  sub_20C13AD84();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v17);
  swift_getObjectType();
  sub_20C13B374();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BB08D08();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v17);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B86FB30();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20B86FADC();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  return v3;
}

uint64_t sub_20BAFA590(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(char *))
{
  v6 = sub_20C135174();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
    a4(v9);

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_20BAFA6B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BB08D94();
  }

  return result;
}

uint64_t sub_20BAFA70C()
{
  v0 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v6[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
    swift_beginAccess();
    sub_20BB08474(v4 + v5, v2, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20BB084DC(v2, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
      sub_20BAFABC8();
    }

    else
    {

      return sub_20BB084DC(v2, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    }
  }

  return result;
}

uint64_t sub_20BAFA850(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_20BAFA8B0()
{
  sub_20BAFB5A0();
  sub_20B583E6C(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);

  sub_20BB084DC(v0 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_currentSnapshot;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onDiscoveryTimeout));
  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onParticipantConnected));
  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onNewGuestFlowSelected));
  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onSkipSelected));
  return v0;
}

uint64_t sub_20BAFAA04()
{
  sub_20BAFA8B0();

  return swift_deallocClassInstance();
}

void sub_20BAFAA84()
{
  type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(319);
  if (v0 <= 0x3F)
  {
    sub_20BB06A00();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BAFABC8()
{
  v1 = v0;
  v69 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  v71 = *(v69 - 1);
  v2 = *(v71 + 8);
  MEMORY[0x28223BE20](v69);
  v70 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v74 = *(v6 - 8);
  v7 = v74[8];
  MEMORY[0x28223BE20](v6);
  v66 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = v62 - v9;
  MEMORY[0x28223BE20](v10);
  v72 = v62 - v11;
  MEMORY[0x28223BE20](v12);
  v63 = v62 - v13;
  MEMORY[0x28223BE20](v14);
  v67 = v62 - v15;
  MEMORY[0x28223BE20](v16);
  v73 = v62 - v17;
  MEMORY[0x28223BE20](v18);
  v68 = v62 - v19;
  v20 = sub_20C13BB84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v21 + 8))(v23, v20);
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  v64 = v1;
  sub_20C139C84();
  swift_storeEnumTagMultiPayload();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v70;
  sub_20BB08474(v5, v70, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v26 = (*(v71 + 80) + 24) & ~*(v71 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  sub_20BB0895C(v25, v27 + v26, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v28 = v72;
  sub_20C137C94();
  sub_20BB084DC(v5, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v29 = v74;
  v31 = v74 + 2;
  v30 = v74[2];
  v32 = v65;
  v30(v65, v28, v6);
  v33 = v30;
  v71 = v30;
  v34 = *(v29 + 80);
  v35 = ((v34 + 16) & ~v34) + v7;
  v36 = (v34 + 16) & ~v34;
  v62[2] = v34;
  v62[3] = v31;
  v37 = swift_allocObject();
  v38 = v29 + 4;
  v39 = v29[4];
  v62[1] = v38;
  v70 = v36;
  v40 = v6;
  v39(v37 + v36, v32, v6);
  v69 = v39;
  v41 = v66;
  v42 = v63;
  v33(v66, v63, v40);
  v43 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v39(v44 + v36, v41, v40);
  v45 = (v44 + v43);
  *v45 = sub_20BB09124;
  v45[1] = v37;
  v46 = v67;
  sub_20C137C94();
  v47 = v74[1];
  ++v74;
  v66 = v47;
  (v47)(v72, v40);
  (v47)(v42, v40);
  v48 = swift_allocObject();
  v49 = v64;
  *(v48 + 16) = sub_20BB08C44;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_20B849B38;
  *(v50 + 24) = v48;
  v71(v42, v46, v40);
  v51 = swift_allocObject();
  v69(v51 + v70, v42, v40);
  v52 = (v51 + v43);
  *v52 = sub_20B66A8B4;
  v52[1] = v50;

  v53 = v73;
  sub_20C137C94();
  v54 = v66;
  (v66)(v46, v40);
  v55 = swift_allocObject();
  *(v55 + 16) = sub_20BAFB3C4;
  *(v55 + 24) = 0;
  v71(v46, v53, v40);
  v56 = swift_allocObject();
  v69(v56 + v70, v46, v40);
  v57 = (v56 + v43);
  *v57 = sub_20B5F7764;
  v57[1] = v55;
  v58 = v68;
  sub_20C137C94();
  v54(v73, v40);
  v59 = sub_20C137CB4();
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  v59(sub_20B5DF6DC, v60);

  return (v54)(v58, v40);
}

uint64_t sub_20BAFB3C4(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "Oops: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20BAFB5A0()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v35 = &v35 - v11;
  MEMORY[0x28223BE20](v12);
  v39 = &v35 - v13;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v15 + 8))(v17, v14);
  swift_storeEnumTagMultiPayload();
  v18 = swift_allocObject();
  swift_weakInit();
  sub_20BB08474(v7, v4, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v19 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  sub_20BB0895C(v4, v20 + v19, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v21 = v35;
  sub_20C137C94();
  sub_20BB084DC(v7, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  sub_20B51CC64(v1 + 96, v40);
  v22 = swift_allocObject();
  sub_20B51C710(v40, v22 + 16);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20BB08B70;
  *(v23 + 24) = v22;
  v25 = v37;
  v24 = v38;
  v26 = v21;
  (*(v8 + 16))(v37, v21, v38);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = swift_allocObject();
  (*(v8 + 32))(v28 + v27, v25, v24);
  v29 = (v28 + ((v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = sub_20B683080;
  v29[1] = v23;
  v30 = v39;
  sub_20C137C94();
  v31 = *(v8 + 8);
  v31(v26, v24);
  v32 = sub_20C137CB4();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v32(sub_20B5DF6DC, v33);

  return (v31)(v30, v24);
}

uint64_t sub_20BAFBA94()
{
  v1 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_isShowingSkipButton) = (*(v0 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_isShowingSkipButton) & 1) == 0;
  sub_20BAFD760();
  v4 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
  swift_beginAccess();
  sub_20BB08474(v0 + v4, v3, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20BB084DC(v3, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  if (EnumCaseMultiPayload == 2)
  {
    sub_20BAFFF24();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_20B7A5B7C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BAFBBB4()
{
  v1 = v0;
  v105 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  v127 = *(v105 - 8);
  v116 = *(v127 + 8);
  MEMORY[0x28223BE20](v105);
  v3 = &v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v100 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v109 = *(v7 - 8);
  v110 = v7;
  v108 = *(v109 + 64);
  MEMORY[0x28223BE20](v7);
  v107 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v106 = &v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v111 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v119 = &v100 - v15;
  MEMORY[0x28223BE20](v16);
  v128 = &v100 - v17;
  MEMORY[0x28223BE20](v18);
  v117 = &v100 - v19;
  MEMORY[0x28223BE20](v20);
  v122 = &v100 - v21;
  MEMORY[0x28223BE20](v22);
  v118 = &v100 - v23;
  MEMORY[0x28223BE20](v24);
  v112 = &v100 - v25;
  v26 = sub_20C13BB84();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v27 + 8))(v29, v26);
  swift_storeEnumTagMultiPayload();
  v30 = swift_allocObject();
  swift_weakInit();
  v100 = v6;
  v102 = v3;
  sub_20BB08474(v6, v3, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v104 = *(v127 + 80);
  v31 = (v104 + 24) & ~v104;
  v103 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  v101 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State;
  sub_20BB0895C(v3, v32 + v31, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v33 = v128;
  sub_20C137C94();
  sub_20BB084DC(v6, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BB08ADC;
  *(v34 + 24) = v1;
  v35 = v1;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_20B5DF6A0;
  *(v36 + 24) = v34;
  v125 = *(v12 + 16);
  v126 = v12 + 16;
  v37 = v119;
  v125(v119, v33, v11);
  v38 = v12;
  v39 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v120 = *(v12 + 80);
  v121 = v39 + v13;
  v123 = v39;
  v40 = (v39 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = v40;
  v41 = swift_allocObject();
  v42 = *(v38 + 32);
  v42(v41 + v39, v37, v11);
  v43 = v42;
  v113 = v42;
  v44 = (v41 + v40);
  *v44 = sub_20B5DF4E8;
  v44[1] = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v45 = v106;
  sub_20C137C94();
  v46 = *(v38 + 8);
  v124 = v38 + 8;
  v127 = v46;
  v47 = v128;
  v46(v128, v11);
  v48 = *(v35 + 120);
  v115 = v35;
  __swift_project_boxed_opaque_existential_1((v35 + 96), v48);
  sub_20C139C84();
  v49 = v119;
  v125(v119, v47, v11);
  v50 = swift_allocObject();
  v43(v50 + v123, v49, v11);
  v51 = v109;
  v52 = v107;
  v53 = v45;
  v54 = v45;
  v55 = v110;
  (*(v109 + 16))(v107, v53, v110);
  v56 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v57 = (v108 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (*(v51 + 32))(v58 + v56, v52, v55);
  v59 = (v58 + v57);
  *v59 = sub_20BB08AE4;
  v59[1] = v50;
  sub_20C137C94();
  v60 = v128;
  v127(v128, v11);
  (*(v51 + 8))(v54, v55);
  v61 = v100;
  swift_storeEnumTagMultiPayload();
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = v102;
  v64 = v101;
  sub_20BB08474(v61, v102, v101);
  v65 = v103;
  v66 = swift_allocObject();
  *(v66 + 16) = v62;
  sub_20BB0895C(v63, v66 + v65, v64);
  sub_20C137C94();
  sub_20BB084DC(v61, v64);
  v67 = v119;
  v68 = v125;
  v125(v119, v60, v11);
  v69 = swift_allocObject();
  v70 = v123;
  v71 = v113;
  v113(v69 + v123, v67, v11);
  v72 = v111;
  v73 = v117;
  v68(v111, v117, v11);
  v74 = v114;
  v75 = swift_allocObject();
  v71(v75 + v70, v72, v11);
  v76 = (v75 + v74);
  *v76 = sub_20BB09124;
  v76[1] = v69;
  v77 = v122;
  sub_20C137C94();
  v78 = v127;
  v127(v128, v11);
  v78(v73, v11);
  v79 = swift_allocObject();
  v80 = v115;
  *(v79 + 16) = sub_20BB09110;
  *(v79 + 24) = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_20B622D08;
  *(v81 + 24) = v79;
  v125(v73, v77, v11);
  v82 = swift_allocObject();
  v71(v82 + v123, v73, v11);
  v83 = (v82 + v74);
  *v83 = sub_20B66A8B4;
  v83[1] = v81;

  v84 = v118;
  sub_20C137C94();
  v85 = v122;
  v127(v122, v11);
  __swift_project_boxed_opaque_existential_1((v80 + 144), *(v80 + 168));
  sub_20C139AB4();
  v86 = v125;
  v125(v73, v85, v11);
  v87 = swift_allocObject();
  v88 = v123;
  v89 = v113;
  v113(v87 + v123, v73, v11);
  v90 = v128;
  v86(v128, v84, v11);
  v91 = v114;
  v92 = swift_allocObject();
  v89(v92 + v88, v90, v11);
  v93 = (v92 + v91);
  *v93 = sub_20BB09124;
  v93[1] = v87;
  v94 = v112;
  sub_20C137C94();
  v95 = v127;
  v127(v122, v11);
  v95(v118, v11);
  v96 = v95;
  v97 = sub_20C137CB4();
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  *(v98 + 24) = 0;
  v97(sub_20B5DF6DC, v98);

  return v96(v94, v11);
}

BOOL sub_20BAFC864()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20B7A72DC();
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_20BAFC8A4(uint64_t a1)
{
  v2 = v1;
  v149 = a1;
  v3 = sub_20C135174();
  v143 = *(v3 - 8);
  v144 = v3;
  v137 = *(v143 + 64);
  MEMORY[0x28223BE20](v3);
  v136 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  v130 = *(v124 - 8);
  v129 = *(v130 + 8);
  MEMORY[0x28223BE20](v124);
  v126 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v122 = &v118 - v7;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764678);
  v150 = *(v134 - 8);
  v132 = *(v150 + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v142 = &v118 - v10;
  MEMORY[0x28223BE20](v11);
  v135 = &v118 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v125 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = &v118 - v17;
  MEMORY[0x28223BE20](v18);
  v121 = &v118 - v19;
  MEMORY[0x28223BE20](v20);
  v138 = &v118 - v21;
  MEMORY[0x28223BE20](v22);
  v139 = &v118 - v23;
  MEMORY[0x28223BE20](v24);
  v140 = &v118 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v118 - v27;
  MEMORY[0x28223BE20](v29);
  v141 = &v118 - v30;
  v31 = sub_20C13BB84();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v32 + 8))(v34, v31);
  v148 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  v35 = v28;
  sub_20C139C74();
  v36 = swift_allocObject();
  v36[2] = 0xD000000000000030;
  v36[3] = 0x800000020C1A75A0;
  v36[4] = 139;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_20B5D9EA0;
  *(v37 + 24) = v36;
  v155 = *(v14 + 16);
  v156 = v14 + 16;
  v38 = v140;
  v39 = v35;
  v131 = v35;
  v155(v140, v35, v13);
  v40 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v154 = *(v14 + 80);
  v120 = v40 + v15;
  v41 = (v40 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v151 = v41;
  v152 = v40;
  v42 = swift_allocObject();
  v43 = *(v14 + 32);
  v153 = v14 + 32;
  v145 = v43;
  v43(v42 + v40, v38, v13);
  v44 = (v42 + v41);
  *v44 = sub_20B5D9EC0;
  v44[1] = v37;
  v45 = v141;
  sub_20C137C94();
  v146 = *(v14 + 8);
  v147 = v14 + 8;
  v46 = v13;
  v146(v39, v13);
  v47 = *(v143 + 16);
  v127 = v143 + 16;
  v128 = v47;
  v48 = v122;
  v47(v122, v149, v144);
  swift_storeEnumTagMultiPayload();
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = v126;
  sub_20BB08474(v48, v126, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v51 = (*(v130 + 80) + 24) & ~*(v130 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v49;
  sub_20BB0895C(v50, v52 + v51, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v53 = v121;
  sub_20C137C94();
  sub_20BB084DC(v48, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v54 = v123;
  v55 = v46;
  v56 = v155;
  v155(v123, v45, v46);
  v57 = swift_allocObject();
  v58 = v152;
  v59 = v145;
  v145(v57 + v152, v54, v55);
  v60 = v125;
  v56(v125, v53, v55);
  v61 = v151;
  v62 = swift_allocObject();
  v59(v62 + v58, v60, v55);
  v63 = (v62 + v61);
  *v63 = sub_20BB09124;
  v63[1] = v57;
  v64 = v138;
  sub_20C137C94();
  v65 = v53;
  v66 = v146;
  v146(v53, v55);
  v67 = swift_allocObject();
  v68 = v148;
  *(v67 + 16) = sub_20BB089EC;
  *(v67 + 24) = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_20B5DF3B8;
  *(v69 + 24) = v67;
  v155(v65, v64, v55);
  v70 = v151;
  v71 = swift_allocObject();
  v59(v71 + v152, v65, v55);
  v72 = (v71 + v70);
  *v72 = sub_20B5DF3D4;
  v72[1] = v69;
  v73 = v68;

  v74 = v139;
  sub_20C137C94();
  v75 = v64;
  v76 = v55;
  v66(v75, v55);
  __swift_project_boxed_opaque_existential_1((v73 + 144), *(v73 + 168));
  v77 = v142;
  sub_20C139B34();
  v78 = v150;
  v79 = *(v150 + 16);
  v124 = v150 + 16;
  v130 = v79;
  v80 = v133;
  v81 = v77;
  v82 = v134;
  v79(v133, v81, v134);
  v129 = *(v78 + 80);
  v125 = v132 + ((v129 + 16) & ~v129);
  v83 = (v129 + 16) & ~v129;
  v126 = v83;
  v84 = swift_allocObject();
  v132 = *(v78 + 32);
  v132(v84 + v83, v80, v82);
  v85 = v138;
  v155(v138, v74, v76);
  v86 = v151;
  v87 = swift_allocObject();
  v119 = v76;
  v145(v87 + v152, v85, v76);
  v88 = (v87 + v86);
  *v88 = sub_20BB089F8;
  v88[1] = v84;
  sub_20C136C64();
  v89 = v135;
  sub_20C137C94();
  v90 = *(v78 + 8);
  v150 = v78 + 8;
  v138 = v90;
  v91 = v142;
  (v90)(v142, v82);
  v146(v74, v76);
  v92 = v136;
  v93 = v144;
  v128(v136, v149, v144);
  v94 = v143;
  v95 = (*(v143 + 80) + 24) & ~*(v143 + 80);
  v96 = swift_allocObject();
  v97 = v148;
  *(v96 + 16) = v148;
  (*(v94 + 32))(v96 + v95, v92, v93);
  v98 = v89;
  v99 = v82;
  v130(v91, v89, v82);
  v100 = (v125 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  v132(v101 + v126, v91, v99);
  v102 = (v101 + v100);
  *v102 = sub_20BB08A34;
  v102[1] = v96;

  v103 = v140;
  sub_20C137C94();
  (v138)(v98, v99);
  v104 = swift_allocObject();
  *(v104 + 16) = sub_20BB08AD8;
  *(v104 + 24) = v97;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5F67D4;
  *(v105 + 24) = v104;
  v106 = v139;
  v107 = v119;
  v155(v139, v103, v119);
  v108 = v151;
  v109 = swift_allocObject();
  v145(v109 + v152, v106, v107);
  v110 = (v109 + v108);
  *v110 = sub_20B5DF204;
  v110[1] = v105;

  v111 = v131;
  sub_20C137C94();
  v112 = v146;
  v146(v103, v107);
  v113 = v107;
  v114 = v111;
  v115 = sub_20C137CB4();
  v116 = swift_allocObject();
  *(v116 + 16) = 0;
  *(v116 + 24) = 0;
  v115(sub_20B5DF6DC, v116);

  v112(v114, v113);
  return (v112)(v141, v113);
}

uint64_t sub_20BAFD760()
{
  v1 = v0;
  v71 = sub_20C135174();
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for RemoteParticipantButton();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v4 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v77 = &v60 - v6;
  MEMORY[0x28223BE20](v7);
  v65 = (&v60 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  if (sub_20C1380B4())
  {
    v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_isShowingSkipButton);
  }

  else
  {
    v17 = 0;
  }

  v18 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_currentSnapshot;
  swift_beginAccess();
  (*(v10 + 16))(v12, v1 + v18, v9);
  sub_20C13BE54();
  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  sub_20C13BE14();
  swift_endAccess();

  v19 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_discoveredParticipants;
  result = swift_beginAccess();
  v21 = *(v1 + v19);
  v22 = *(v21 + 16);
  if (v22)
  {
    v63 = v17;
    v64 = v18;
    v23 = sub_20BEDEBB4(v22, 0);
    *&v76 = sub_20BEE2588(&v82, (v23 + ((*(v75 + 80) + 32) & ~*(v75 + 80))), v22, v21);
    v18 = v82;
    v17 = v83;
    v72 = v84;
    swift_bridgeObjectRetain_n();
    result = sub_20B583EDC();
    if (v76 == v22)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (!v17)
  {
    return result;
  }

  v63 = v17;
  v64 = v18;

  v23 = MEMORY[0x277D84F90];
LABEL_9:
  *&v80 = v23;
  sub_20BB06BDC(&v80);
  v61 = v4;
  v62 = v9;

  v24 = v80;
  v25 = *(v80 + 16);
  if (v25)
  {
    v78 = MEMORY[0x277D84F90];
    sub_20BB5DEF4(0, v25, 0);
    v26 = v78;
    v27 = v75;
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v60 = v24;
    v29 = v24 + v28;
    v72 = v1;
    v69 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_fetchedAvatars;
    swift_beginAccess();
    v30 = *(v27 + 16);
    v27 += 16;
    v68 = v30;
    v67 = *(v27 + 56);
    v75 = v27;
    v66 = (v27 - 8);
    v31 = v77;
    v32 = v70;
    do
    {
      v77 = v25;
      v33 = v71;
      v34 = v68;
      v35 = (v68)(v32, v29, v71);
      *&v76 = &v60;
      v36 = *(v72 + v69);
      MEMORY[0x28223BE20](v35);

      sub_20B6B74CC(sub_20BB0893C, v36, &v80);

      v76 = v80;
      v37 = v81;
      v38 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7654B8) + 48);
      v34(v31, v32, v33);
      *v38 = v76;
      *(v38 + 16) = v37;
      swift_storeEnumTagMultiPayload();
      (*v66)(v32, v33);
      v78 = v26;
      v40 = v26[2];
      v39 = v26[3];
      if (v40 >= v39 >> 1)
      {
        sub_20BB5DEF4(v39 > 1, v40 + 1, 1);
        v26 = v78;
      }

      v26[2] = v40 + 1;
      sub_20BB0895C(v31, v26 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v40, type metadata accessor for RemoteParticipantButton);
      v29 += v67;
      v25 = (v77 - 1);
    }

    while (v77 != 1);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = objc_opt_self();
  v43 = [v42 bundleForClass_];
  v44 = sub_20C132964();
  v46 = v45;

  v47 = v65;
  *v65 = v44;
  v47[1] = v46;
  v47[2] = 0xD000000000000012;
  v47[3] = 0x800000020C1A58E0;
  swift_storeEnumTagMultiPayload();
  v48 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_20BC07238(0, v26[2] + 1, 1, v26);
  }

  v50 = v48[2];
  v49 = v48[3];
  if (v50 >= v49 >> 1)
  {
    v48 = sub_20BC07238(v49 > 1, v50 + 1, 1, v48);
  }

  v48[2] = v50 + 1;
  v51 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v52 = *(v73 + 72);
  sub_20BB0895C(v65, v48 + v51 + v52 * v50, type metadata accessor for RemoteParticipantButton);
  if (v63)
  {
    v53 = [v42 bundleForClass_];
    v54 = sub_20C132964();
    v56 = v55;

    v57 = v61;
    *v61 = v54;
    v57[1] = v56;
    v57[2] = 0xD000000000000018;
    v57[3] = 0x800000020C1A7A70;
    swift_storeEnumTagMultiPayload();
    v59 = v48[2];
    v58 = v48[3];
    if (v59 >= v58 >> 1)
    {
      v48 = sub_20BC07238(v58 > 1, v59 + 1, 1, v48);
    }

    v48[2] = v59 + 1;
    sub_20BB0895C(v57, v48 + v51 + v59 * v52, type metadata accessor for RemoteParticipantButton);
  }

  v78 = 0;
  v79 = 0;
  swift_beginAccess();
  sub_20C13BE04();
  swift_endAccess();
}

uint64_t sub_20BAFE19C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == sub_20C135104() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20C13DFF4();
  }

  return v5 & 1;
}

void sub_20BAFE214(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v174 = a2;
  v154 = sub_20C1356F4();
  v150 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_20C135174();
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v156 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v157 = &v146 - v10;
  MEMORY[0x28223BE20](v11);
  v155 = &v146 - v12;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A500);
  MEMORY[0x28223BE20](v171);
  v172 = &v146 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A508);
  MEMORY[0x28223BE20](v14 - 8);
  v173 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v161 = &v146 - v17;
  MEMORY[0x28223BE20](v18);
  v162 = (&v146 - v19);
  MEMORY[0x28223BE20](v20);
  v160 = &v146 - v21;
  MEMORY[0x28223BE20](v22);
  v159 = (&v146 - v23);
  MEMORY[0x28223BE20](v24);
  v158 = (&v146 - v25);
  MEMORY[0x28223BE20](v26);
  v170 = &v146 - v27;
  MEMORY[0x28223BE20](v28);
  v177 = &v146 - v29;
  v176 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  v179 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v167 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v164 = (&v146 - v32);
  MEMORY[0x28223BE20](v33);
  v166 = &v146 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v146 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v146 - v39;
  v41 = sub_20C13BB84();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v152 = &v146 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v149 = &v146 - v45;
  MEMORY[0x28223BE20](v46);
  v151 = &v146 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v146 - v49;
  sub_20C13B484();
  v178 = a4;
  sub_20BB08474(a4, v40, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);

  v51 = sub_20C13BB74();
  v52 = sub_20C13D1F4();

  v53 = os_log_type_enabled(v51, v52);
  v168 = v42;
  v169 = v41;
  v175 = a3;
  if (v53)
  {
    v148 = v52;
    v54 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v186[0] = v147;
    *v54 = 136446466;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v56 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
      v57 = Strong;
      swift_beginAccess();
      v146 = a1;
      sub_20BB08474(v57 + v56, v37, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);

      v58 = sub_20BB06B88(&unk_27C76A518, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
      v59 = v176;
      v60 = MEMORY[0x20F2EFA40](v176, v58);
      v62 = v61;
      a1 = v146;
      sub_20BB084DC(v37, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    }

    else
    {
      v60 = 0;
      v62 = 0;
      v59 = v176;
    }

    v186[3] = v60;
    v186[4] = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
    v64 = sub_20C13D8F4();
    v66 = v65;

    v67 = sub_20B51E694(v64, v66, v186);

    *(v54 + 4) = v67;
    *(v54 + 12) = 2082;
    v68 = sub_20BB06B88(&unk_27C76A518, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v69 = MEMORY[0x20F2EFA40](v59, v68);
    v71 = v70;
    sub_20BB084DC(v40, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v72 = sub_20B51E694(v69, v71, v186);

    *(v54 + 14) = v72;
    _os_log_impl(&dword_20B517000, v51, v148, "Discovery Presenter State %{public}s -> %{public}s", v54, 0x16u);
    v73 = v147;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v73, -1, -1);
    MEMORY[0x20F2F6A40](v54, -1, -1);

    v63 = *(v168 + 8);
    v63(v50, v169);
  }

  else
  {

    sub_20BB084DC(v40, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v63 = *(v42 + 8);
    v63(v50, v41);
    v59 = v176;
  }

  v74 = v177;
  sub_20BB08474(v178, v177, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v75 = *(v179 + 56);
  v76 = 1;
  v75(v74, 0, 1, v59);
  swift_beginAccess();
  v77 = swift_weakLoadStrong();
  v78 = v170;
  if (v77)
  {
    v79 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
    v80 = v77;
    swift_beginAccess();
    v81 = v80 + v79;
    v82 = v176;
    sub_20BB08474(v81, v78, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);

    v76 = 0;
  }

  else
  {
    v82 = v59;
  }

  v83 = a1;
  v75(v78, v76, 1, v82);
  v84 = v172;
  v85 = v78;
  v86 = *(v171 + 48);
  sub_20BB08660(v85, v172);
  sub_20BB08474(v178, v84 + v86, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if ((*(v179 + 48))(v84, 1, v82) != 1)
      {
        v93 = v158;
        sub_20BB086D0(v84, v158);
        v101 = swift_getEnumCaseMultiPayload();
        v88 = v177;
        if (!v101)
        {
          v124 = v163;
          v125 = v155;
          (*(v163 + 32))(v155, v93, v165);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_20BB00224();
          }

          (*(v124 + 8))(v125, v165);
          goto LABEL_63;
        }

        if (v101 == 4)
        {
LABEL_33:
          sub_20BB084DC(v84 + v86, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
          sub_20B520158(v84, &qword_27C76A508);
          swift_beginAccess();
          if (!swift_weakLoadStrong())
          {
            goto LABEL_64;
          }

          sub_20BAFF9A8();
          goto LABEL_35;
        }

LABEL_61:
        sub_20B520158(v88, &qword_27C76A508);
        sub_20BB084DC(v93, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
        goto LABEL_62;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if ((*(v179 + 48))(v84, 1, v82) != 1)
      {
        v93 = v159;
        sub_20BB086D0(v84, v159);
        v94 = swift_getEnumCaseMultiPayload();
        if ((v94 - 2) < 2)
        {
          sub_20BB084DC(v84 + v86, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
          sub_20B520158(v84, &qword_27C76A508);
          swift_beginAccess();
          v95 = swift_weakLoadStrong();
          if (v95)
          {
            v96 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_discoveredParticipants;
            v97 = v95;
            swift_beginAccess();
            *(v97 + v96) = MEMORY[0x277D84FA0];

            v82 = v176;
          }

          swift_beginAccess();
          v98 = swift_weakLoadStrong();
          v88 = v177;
          if (v98)
          {
            sub_20BAFD760();
          }

          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v99 = swift_unknownObjectWeakLoadStrong();
            v82 = v176;

            if (v99)
            {
              sub_20B7A5B7C();
              swift_unknownObjectRelease();
            }
          }

          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_20BAFFF24();
LABEL_35:

            goto LABEL_64;
          }

          goto LABEL_64;
        }

        if (v94 == 1)
        {
          v184 = *v93;
          v112 = v184;
          v113 = v184;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
          v115 = v153;
          v114 = v154;
          if (swift_dynamicCast())
          {
            v116 = v150;
            v117 = (*(v150 + 88))(v115, v114);
            if (v117 == *MEMORY[0x277D51BA8])
            {
              sub_20C13B484();
              v118 = sub_20C13BB74();
              v119 = sub_20C13D1F4();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                *v120 = 0;
                _os_log_impl(&dword_20B517000, v118, v119, "Restoring discovery from a incomplete environment being sent from watch. Preserving discovered participants", v120, 2u);
                MEMORY[0x20F2F6A40](v120, -1, -1);
              }

              v121 = v151;
LABEL_80:
              v63(v121, v169);

LABEL_84:
              swift_beginAccess();
              v144 = swift_weakLoadStrong();
              v88 = v177;
              if (v144)
              {
                sub_20BAFD760();
              }

              swift_beginAccess();
              if (swift_weakLoadStrong())
              {
                v145 = swift_unknownObjectWeakLoadStrong();

                if (v145)
                {
                  sub_20B7A5B7C();
                  swift_unknownObjectRelease();
                }
              }

              swift_beginAccess();
              if (swift_weakLoadStrong())
              {
                sub_20BAFFF24();
              }

              else
              {
              }

LABEL_92:
              sub_20BB084DC(v84 + v86, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
              sub_20B520158(v84, &qword_27C76A508);
              v82 = v176;
              goto LABEL_64;
            }

            if (v117 == *MEMORY[0x277D51B90])
            {
              sub_20C13B484();
              v138 = sub_20C13BB74();
              v139 = sub_20C13D1F4();
              if (os_log_type_enabled(v138, v139))
              {
                v140 = swift_slowAlloc();
                *v140 = 0;
                _os_log_impl(&dword_20B517000, v138, v139, "Restoring discovery from a user cancellation. Preserving discovered participants", v140, 2u);
                MEMORY[0x20F2F6A40](v140, -1, -1);
              }

              v121 = v149;
              goto LABEL_80;
            }

            (*(v116 + 8))(v115, v114);
          }

          swift_beginAccess();
          v141 = swift_weakLoadStrong();
          if (v141)
          {
            v142 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_discoveredParticipants;
            v143 = v141;
            swift_beginAccess();
            *(v143 + v142) = MEMORY[0x277D84FA0];
          }

          goto LABEL_84;
        }

        goto LABEL_55;
      }
    }

    else if ((*(v179 + 48))(v84, 1, v82) != 1)
    {
      v93 = v162;
      sub_20BB086D0(v84, v162);
      if (!swift_getEnumCaseMultiPayload())
      {
        swift_beginAccess();
        v107 = swift_weakLoadStrong();
        v108 = v165;
        v109 = v163;
        if (v107)
        {
          v146 = v83;
          v110 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_timeoutTimer;
          if (*(v107 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_timeoutTimer))
          {
            v111 = v107;
            __swift_project_boxed_opaque_existential_1((v107 + 56), *(v107 + 80));
            swift_unknownObjectRetain();
            v108 = v165;
            v109 = v163;
            sub_20C13AE44();
            swift_unknownObjectRelease();
            v107 = v111;
          }

          *(v107 + v110) = 0;

          swift_unknownObjectRelease();
          v83 = v146;
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v136 = swift_unknownObjectWeakLoadStrong();

          if (v136)
          {
            v137 = v152;
            sub_20C13B4A4();
            sub_20C13BB64();
            v63(v137, v169);
            sub_20B7A72DC();
            swift_unknownObjectRelease();
          }
        }

        (*(v109 + 8))(v162, v108);
        sub_20BB084DC(v84 + v86, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
        sub_20B520158(v84, &qword_27C76A508);
        v82 = v176;
        v88 = v177;
        goto LABEL_64;
      }

LABEL_55:
      v88 = v177;
      goto LABEL_61;
    }

    v88 = v177;
    sub_20B520158(v177, &qword_27C76A508);
    goto LABEL_62;
  }

  v88 = v177;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v89 = v83;
      v90 = v164;
      sub_20BB08474(v84 + v86, v164, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
      v91 = v82;
      v92 = *v90;
      if ((*(v179 + 48))(v84, 1, v91) == 1)
      {
        sub_20B520158(v88, &qword_27C76A508);

        v82 = v91;
        v83 = v89;
LABEL_62:
        v75(v88, 1, 1, v82);
LABEL_63:
        sub_20BB084DC(v84 + v86, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
        sub_20B520158(v84, &qword_27C76A508);
        goto LABEL_64;
      }

      v146 = v89;
      v106 = v161;
      sub_20BB086D0(v84, v161);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_20B520158(v88, &qword_27C76A508);

        sub_20BB084DC(v106, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
        v82 = v176;
        v83 = v146;
        goto LABEL_62;
      }

      v122 = v163;
      v123 = v156;
      (*(v163 + 32))(v156, v106, v165);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_20BB00454(v92, v123);
      }

      else
      {
      }

      v83 = v146;
      (*(v122 + 8))(v123, v165);
      goto LABEL_92;
    }

    goto LABEL_33;
  }

  v100 = v166;
  sub_20BB08474(v84 + v86, v166, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  if ((*(v179 + 48))(v84, 1, v82) == 1)
  {
    sub_20B520158(v88, &qword_27C76A508);
    sub_20B520158(v100, &qword_27C76A510);
    goto LABEL_62;
  }

  v102 = v160;
  sub_20BB086D0(v84, v160);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_20B520158(v88, &qword_27C76A508);
    sub_20BB084DC(v102, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    sub_20B520158(v166, &qword_27C76A510);
    goto LABEL_62;
  }

  v146 = v83;
  v103 = v163;
  v104 = v157;
  v105 = v165;
  (*(v163 + 32))(v157, v166, v165);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BAFFC0C(v104);
  }

  (*(v103 + 8))(v104, v105);
  sub_20BB084DC(v84 + v86, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  sub_20B520158(v84, &qword_27C76A508);
  v83 = v146;
LABEL_64:
  v126 = v173;
  sub_20BB086D0(v88, v173);
  if ((*(v179 + 48))(v126, 1, v82) == 1)
  {
    sub_20B520158(v126, &qword_27C76A508);
    v127 = sub_20C136094();
    sub_20BB06B88(&qword_27C767910, MEMORY[0x277D52688]);
    v128 = swift_allocError();
    (*(*(v127 - 8) + 104))(v129, *MEMORY[0x277D52650], v127);
    v184 = v128;
    v185 = 1;
    v83(&v184);
    sub_20B520158(v88, &qword_27C76A508);
  }

  else
  {
    v130 = v167;
    sub_20BB0895C(v126, v167, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    swift_beginAccess();
    v131 = swift_weakLoadStrong();
    if (v131)
    {
      v132 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
      v133 = v131;
      swift_beginAccess();
      sub_20BB08740(v130, v133 + v132);
      swift_endAccess();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    sub_20C13E1D4();
    v134 = v182;
    v135 = v183;
    v180 = v182;
    v181 = v183;
    v83(&v180);
    sub_20BB084DC(v130, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    sub_20B520158(v88, &qword_27C76A508);
    sub_20B583FB8(v134, v135);
  }
}

void sub_20BAFF9A8()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_timeoutTimer;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_timeoutTimer))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  *(v0 + v5) = 0;
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    sub_20C13B4A4();
    sub_20C13BB64();
    (*(v2 + 8))(v4, v1);
    v10 = *(v7 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_titleLabel);
    v11 = sub_20C13C914();

    [v10 setText_];
    swift_unknownObjectRelease();
  }
}

void sub_20BAFFC0C(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_timeoutTimer;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_timeoutTimer))
  {
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  *(v1 + v7) = 0;
  swift_unknownObjectRelease();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20B7A69F0(a1);
    swift_unknownObjectRelease();
  }

  v8 = sub_20C1350F4();
  if (!v8)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v10 = Strong;
    goto LABEL_11;
  }

  if (v8 != 1)
  {
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v10 = v11;
LABEL_11:
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    sub_20C13B4A4();
    sub_20C13BB64();
    (*(v4 + 8))(v6, v3);
    v14 = *(v10 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_titleLabel);
    v15 = sub_20C13C914();

    [v14 setText_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BAFFF24()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_20C132964();

    sub_20C13B4A4();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    v8 = *(v5 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_titleLabel);
    v9 = sub_20C13C914();

    [v8 setText_];
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_20C13B4A4();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    [*(v11 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptLabel) setAlpha_];
    [*(v11 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptIndicatorView) startAnimating];
    sub_20B7A6270();
    sub_20B7A5B7C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BB00224()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 144), *(v1 + 168));
  sub_20C139944();
  v10 = sub_20C137CB4();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v10(sub_20B5DF6DC, v11);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20BB00454(unint64_t a1, uint64_t a2)
{
  v115 = a2;
  v3 = sub_20C13BB84();
  v118 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v114 = v100 - v7;
  v107 = sub_20C134654();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1356F4();
  v112 = *(v9 - 8);
  v113 = v9;
  MEMORY[0x28223BE20](v9);
  v111 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C136094();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D52630];
  v116 = *(v12 + 104);
  v116(v15, v16, v11, v13);
  sub_20BB06B88(&qword_27C76A528, MEMORY[0x277D52688]);
  v117 = a1;
  v17 = sub_20C135D14();
  v18 = *(v12 + 8);
  v18(v15, v11);
  if (v17)
  {
    sub_20C13B484();
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v3;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20B517000, v19, v20, "Connection failed due to lack of cloud pairing keys, showing guest flow", v22, 2u);
      v23 = v22;
      v3 = v21;
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    result = (*(v118 + 8))(v5, v3);
    v25 = *(v119 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onNewGuestFlowSelected);
    if (v25)
    {

      v25(v26);
      return sub_20B583ECC(v25);
    }

    return result;
  }

  v109 = v3;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v29 = [v28 bundleForClass_];
  v102 = sub_20C132964();
  v104 = v30;

  v110 = v28;
  v103 = ObjCClassFromMetadata;
  v31 = [v28 bundleForClass_];
  v100[3] = "handleDiscoveryExpired()";
  v100[2] = 0xD00000000000001CLL;
  v100[1] = sub_20C132964();
  v108 = v32;

  v33 = v116;
  (v116)(v15, *MEMORY[0x277D525E0], v11);
  LOBYTE(v28) = sub_20C135D14();
  v18(v15, v11);
  (v33)(v15, *MEMORY[0x277D52648], v11);
  v34 = sub_20C135D14();
  v101 = v18;
  v18(v15, v11);
  if ((v28 & 1) == 0 && (v34 & 1) == 0)
  {
    v35 = v116;
    (v116)(v15, *MEMORY[0x277D525F0], v11);
    v36 = sub_20C135D14();
    v37 = v101;
    v101(v15, v11);
    if (v36)
    {
      v38 = sub_20C1350F4();
      v39 = v103;
      if (v38 == 1 || !v38)
      {

        v58 = v110;
        v59 = [v110 bundleForClass_];
        v116 = sub_20C132964();
        v117 = v60;

        v61 = [v58 bundleForClass_];
LABEL_20:
        sub_20C132964();
LABEL_21:

        v51 = v109;
        goto LABEL_22;
      }

      goto LABEL_53;
    }

    (v35)(v15, *MEMORY[0x277D52600], v11);
    v52 = sub_20C135D14();
    v37(v15, v11);
    v53 = v103;
    if ((v52 & 1) == 0)
    {
      v75 = v111;
      v74 = v112;
      v76 = v113;
      (*(v112 + 104))(v111, *MEMORY[0x277D51B90], v113);
      sub_20BB06B88(&unk_27C76A530, MEMORY[0x277D51BF0]);
      v77 = sub_20C135D14();
      (*(v74 + 8))(v75, v76);
      v78 = v110;
      if (v77)
      {

        v79 = [v78 bundleForClass_];
        sub_20C132964();

        v80 = sub_20C1350F4();
        if (v80 == 1 || !v80)
        {
          v61 = [v78 bundleForClass_];
          v116 = sub_20C132964();
          v117 = v91;
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(aBlock) = 2;
        sub_20B75B4F8();
        v81 = sub_20C135D14();
        v51 = v109;
        if ((v81 & 1) == 0)
        {
          v92 = v106;
          v93 = v105;
          v94 = v107;
          (*(v106 + 104))(v105, *MEMORY[0x277D50928], v107);
          sub_20BB06B88(&qword_27C76A540, MEMORY[0x277D50940]);
          v95 = sub_20C135D14();
          (*(v92 + 8))(v93, v94);
          if (v95)
          {
            if (sub_20C1350F4() == 1)
            {
              v96 = [v110 bundleForClass_];
              v116 = sub_20C132964();
              v117 = v97;

              goto LABEL_22;
            }
          }

          else if (sub_20C1380B4())
          {
            swift_getErrorValue();
            v98 = MEMORY[0x20F2F5850](v120, v121);
            aBlock = 0x616E7265746E495BLL;
            v123 = 0xEB00000000205D6CLL;
            MEMORY[0x20F2F4230](v98);

            v116 = aBlock;
            v117 = v123;
            goto LABEL_22;
          }

          v116 = 0;
          v117 = 0;
          goto LABEL_22;
        }

        v82 = MobileGestalt_get_current_device();
        if (v82)
        {
          v83 = v82;
          wapiCapability = MobileGestalt_get_wapiCapability();

          if (wapiCapability)
          {
            v85 = 1312902231;
          }

          else
          {
            v85 = 1229343063;
          }

          aBlock = 0;
          v123 = 0xE000000000000000;
          sub_20C13DC94();

          aBlock = v85;
          v123 = 0xE400000000000000;
          MEMORY[0x20F2F4230](0xD00000000000001DLL, 0x800000020C1A7740);
          v86 = v110;
          v87 = [v110 bundleForClass_];
          v116 = sub_20C132964();
          v89 = v88;

          v90 = sub_20C1350F4();
          v117 = v89;
          if (v90 == 1)
          {

            v61 = [v86 bundleForClass_];
            goto LABEL_20;
          }

          v51 = v109;
          if (!v90)
          {

            v99 = [v110 bundleForClass_];
            sub_20C132964();

            goto LABEL_22;
          }
        }

        else
        {
          __break(1u);
        }
      }

LABEL_53:
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

    v54 = v110;
    v55 = [v110 bundleForClass_];
    v116 = sub_20C132964();
    v117 = v56;

    v45 = [v54 bundleForClass_];
    goto LABEL_17;
  }

  v40 = sub_20C1350F4();
  if (v40 == 1)
  {

    v41 = v110;
    v42 = v103;
    v43 = [v110 bundleForClass_];
    v116 = sub_20C132964();
    v117 = v44;

    v45 = [v41 bundleForClass_];
LABEL_17:
    v57 = v45;
    sub_20C132964();

    v51 = v109;
    goto LABEL_22;
  }

  v46 = v103;
  if (v40)
  {
    goto LABEL_53;
  }

  v47 = v110;
  v48 = [v110 bundleForClass_];
  v116 = sub_20C132964();
  v117 = v49;

  v50 = [v47 bundleForClass_];
  sub_20C132964();

  v51 = v109;
LABEL_22:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v63 = Strong;
    v64 = v114;
    sub_20C13B4A4();
    sub_20C13BB64();
    (*(v118 + 8))(v64, v51);
    [*&v63[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_indicatorView] stopAnimating];
    sub_20B7A72DC();
    v65 = sub_20C13C914();

    if (v117)
    {
      v66 = sub_20C13C914();
    }

    else
    {
      v66 = 0;
    }

    v67 = [objc_opt_self() alertControllerWithTitle:v65 message:v66 preferredStyle:1];

    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v69 = sub_20C13C914();

    v126 = sub_20BB08934;
    v127 = v68;
    aBlock = MEMORY[0x277D85DD0];
    v123 = 1107296256;
    v124 = sub_20B762A80;
    v125 = &block_descriptor_157;
    v70 = _Block_copy(&aBlock);

    v71 = [objc_opt_self() actionWithTitle:v69 style:1 handler:v70];
    _Block_release(v70);

    [v67 addAction_];
    v72 = [v63 navigationController];
    if (v72)
    {
      v73 = v72;
      [v72 presentViewController:v67 animated:1 completion:0];
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_20BB018B4()
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v38 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - v4;
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - v6;
  v7 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
  swift_beginAccess();
  sub_20BB08474(v0 + v16, v15, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  LODWORD(v16) = swift_getEnumCaseMultiPayload();
  result = sub_20BB084DC(v15, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  if (v16 == 4)
  {
    swift_storeEnumTagMultiPayload();
    v18 = swift_allocObject();
    swift_weakInit();
    sub_20BB08474(v12, v9, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v19 = (*(v34 + 80) + 24) & ~*(v34 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    sub_20BB0895C(v9, v20 + v19, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v21 = v36;
    sub_20C137C94();
    sub_20BB084DC(v12, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    sub_20B51CC64(v0 + 96, v39);
    v22 = swift_allocObject();
    sub_20B51C710(v39, v22 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20BB0911C;
    *(v23 + 24) = v22;
    v24 = v35;
    v25 = v38;
    (*(v1 + 16))(v35, v21, v38);
    v26 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v27 = swift_allocObject();
    (*(v1 + 32))(v27 + v26, v24, v25);
    v28 = (v27 + ((v2 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = sub_20B64B960;
    v28[1] = v23;
    v29 = v37;
    sub_20C137C94();
    v30 = *(v1 + 8);
    v30(v21, v25);
    v31 = sub_20C137CB4();
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    v31(sub_20B5DF6DC, v32);

    return (v30)(v29, v25);
  }

  return result;
}

uint64_t sub_20BB01D54()
{
  v1 = v0;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v100 = *(v92 - 8);
  v2 = *(v100 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v97 = &v78 - v4;
  MEMORY[0x28223BE20](v5);
  v99 = &v78 - v6;
  MEMORY[0x28223BE20](v7);
  v101 = &v78 - v8;
  MEMORY[0x28223BE20](v9);
  v98 = &v78 - v10;
  MEMORY[0x28223BE20](v11);
  v91 = &v78 - v12;
  v13 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  v89 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v94 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v78 - v16;
  v93 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  v21 = sub_20C13BB84();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  sub_20C13B484();
  sub_20C13BB64();
  v28 = *(v22 + 8);
  v28(v27, v21);
  v29 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
  swift_beginAccess();
  v96 = v1;
  sub_20BB08474(v1 + v29, v20, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  LODWORD(v29) = swift_getEnumCaseMultiPayload();
  result = sub_20BB084DC(v20, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  if (v29 == 4)
  {
    sub_20C13B484();
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20B517000, v31, v32, "State was discovering, refreshing discovery", v33, 2u);
      MEMORY[0x20F2F6A40](v33, -1, -1);
    }

    v28(v24, v21);
    v34 = v95;
    v88 = v13;
    swift_storeEnumTagMultiPayload();
    v35 = swift_allocObject();
    v36 = v96;
    swift_weakInit();
    v37 = v94;
    sub_20BB08474(v34, v94, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v38 = *(v89 + 80);
    v39 = (v38 + 24) & ~v38;
    v86 = v39;
    v87 = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = v35;
    v85 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State;
    sub_20BB0895C(v37, v40 + v39, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    sub_20C137C94();
    sub_20BB084DC(v34, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    __swift_project_boxed_opaque_existential_1((v36 + 96), *(v36 + 120));
    v41 = v99;
    sub_20C139C84();
    v42 = v100;
    v43 = v100 + 16;
    v44 = *(v100 + 16);
    v45 = v97;
    v46 = v41;
    v47 = v92;
    v44(v97, v46, v92);
    v81 = v43;
    v82 = v44;
    v89 = *(v42 + 80);
    v48 = ((v89 + 16) & ~v89) + v2;
    v49 = (v89 + 16) & ~v89;
    v83 = v48;
    v78 = swift_allocObject();
    v50 = *(v42 + 32);
    v79 = v49;
    v50(v78 + v49, v45, v47);
    v80 = v50;
    v51 = v90;
    v44(v90, v101, v47);
    v84 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v50(v52 + v49, v51, v47);
    v53 = (v52 + ((v48 + 7) & 0xFFFFFFFFFFFFFFF8));
    v54 = v78;
    *v53 = sub_20BB08930;
    v53[1] = v54;
    sub_20C137C94();
    v55 = *(v42 + 8);
    v90 = v55;
    v100 = v42 + 8;
    (v55)(v99, v47);
    v56 = v101;
    (v55)(v101, v47);
    v57 = v95;
    swift_storeEnumTagMultiPayload();
    v58 = swift_allocObject();
    swift_weakInit();
    v59 = v94;
    v60 = v85;
    sub_20BB08474(v57, v94, v85);
    v61 = v86;
    v62 = swift_allocObject();
    *(v62 + 16) = v58;
    sub_20BB0895C(v59, v62 + v61, v60);
    sub_20C137C94();
    sub_20BB084DC(v57, v60);
    v63 = v99;
    v64 = v82;
    v82(v99, v56, v47);
    v65 = swift_allocObject();
    v66 = v79;
    v67 = v63;
    v68 = v80;
    v80(v65 + v79, v67, v47);
    v70 = v97;
    v69 = v98;
    v64(v97, v98, v47);
    v71 = v84;
    v72 = swift_allocObject();
    v68(v72 + v66, v70, v47);
    v73 = (v72 + v71);
    *v73 = sub_20BB09124;
    v73[1] = v65;
    v74 = v91;
    sub_20C137C94();
    v75 = v90;
    (v90)(v101, v47);
    v75(v69, v47);
    v76 = sub_20C137CB4();
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = 0;
    v76(sub_20B5DF6DC, v77);

    return (v75)(v74, v47);
  }

  return result;
}

uint64_t sub_20BB026A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764520);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v36 - v10;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BAFD760();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20B7A5B5C(a1);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v37 = a2;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_20C132964();
    v38 = v4;

    sub_20C13B4A4();
    sub_20C13BB64();
    (*(v12 + 8))(v14, v11);
    v19 = *(v16 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_titleLabel);
    a2 = v37;
    v20 = sub_20C13C914();
    v4 = v38;

    [v19 setText_];
    swift_unknownObjectRelease();
  }

  sub_20BB05870();
  sub_20B8B5D60();
  v21 = swift_allocError();
  *v22 = 7;
  *(swift_allocObject() + 16) = v21;
  sub_20C137CA4();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20BB08F9C;
  *(v23 + 24) = a2;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20BB090F4;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20BB0913C;
  *(v25 + 24) = v24;
  v26 = v43;
  v27 = v39;
  (*(v43 + 16))(v39, v8, v4);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v28, v27, v4);
  v30 = (v29 + ((v5 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_20BB0910C;
  v30[1] = v25;

  v31 = v42;
  sub_20C137C94();
  (*(v26 + 8))(v8, v4);
  v32 = v41;
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B5DF6DC, v34);

  return (*(v40 + 8))(v31, v32);
}

void *sub_20BB02C88(uint64_t a1, void (*a2)(void **))
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = v4;
  v5 = v7[0];

  a2(v7);
  return sub_20B7A7B44(v7[0]);
}

uint64_t sub_20BB02CF8(void *a1)
{
  v74 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v71 = *(v1 - 8);
  v72 = v1;
  MEMORY[0x28223BE20](v1);
  v70 = &v61 - v2;
  v75 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  v69 = *(v75 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v75);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v61 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  v11 = sub_20C135174();
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x28223BE20](v11);
  v61 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v61 - v14;
  v15 = sub_20C136094();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C13BB84();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v63 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  sub_20C13B484();
  sub_20C13BB64();
  v25 = *(v20 + 8);
  v64 = v20 + 8;
  v65 = v19;
  v26 = v19;
  v27 = v73;
  v62 = v25;
  v25(v24, v26);
  v28 = v74;
  (*(v16 + 104))(v18, *MEMORY[0x277D52650], v15);
  sub_20BB06B88(&qword_27C76A528, MEMORY[0x277D52688]);
  LOBYTE(v24) = sub_20C135D14();
  (*(v16 + 8))(v18, v15);
  if ((v24 & 1) == 0)
  {
    goto LABEL_4;
  }

  v29 = v28;
  v30 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
  swift_beginAccess();
  sub_20BB08474(v27 + v30, v10, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20BB084DC(v10, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_4:
    *v7 = v28;
    swift_storeEnumTagMultiPayload();
    v31 = swift_allocObject();
    swift_weakInit();
    sub_20BB08474(v7, v4, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v32 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    sub_20BB0895C(v4, v33 + v32, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v34 = v28;
    v35 = v70;
    sub_20C137C94();
    sub_20BB084DC(v7, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
    v36 = v72;
    v37 = sub_20C137CB4();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    v37(sub_20B5DF6DC, v38);

    return (*(v71 + 8))(v35, v36);
  }

  v41 = v66;
  v40 = v67;
  v42 = v68;
  (*(v66 + 32))(v68, v10, v67);
  v43 = v63;
  sub_20C13B484();
  v44 = v61;
  (*(v41 + 16))(v61, v42, v40);
  v45 = v29;
  v46 = sub_20C13BB74();
  v47 = sub_20C13D1D4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    LODWORD(v73) = v47;
    v50 = v44;
    v75 = v49;
    v78 = v49;
    *v48 = 136446466;
    sub_20BB06B88(&unk_27C76B9B0, MEMORY[0x277D515D0]);
    v51 = sub_20C13DFA4();
    v53 = v52;
    v54 = *(v41 + 8);
    v54(v50, v40);
    v55 = sub_20B51E694(v51, v53, &v78);

    *(v48 + 4) = v55;
    *(v48 + 12) = 2082;
    swift_getErrorValue();
    v56 = MEMORY[0x20F2F5850](v76, v77);
    v58 = sub_20B51E694(v56, v57, &v78);

    *(v48 + 14) = v58;
    _os_log_impl(&dword_20B517000, v46, v73, "Already connecting to %{public}s: %{public}s", v48, 0x16u);
    v59 = v75;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v59, -1, -1);
    MEMORY[0x20F2F6A40](v48, -1, -1);

    v62(v43, v65);
    return (v54)(v68, v40);
  }

  else
  {

    v60 = *(v41 + 8);
    v60(v44, v40);
    v62(v43, v65);
    return (v60)(v42, v40);
  }
}

uint64_t sub_20BB0357C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v73 = a1;
  v77 = a3;
  v70 = sub_20C136C64();
  v68 = *(v70 - 8);
  v71 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20C135174();
  v4 = *(v60 - 8);
  v62 = *(v4 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v65 = *(v67 - 8);
  v63 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v57 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v72 = *(v76 - 8);
  v75 = *(v72 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v57 - v17;
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v19 + 8))(v21, v18);
  swift_storeEnumTagMultiPayload();
  v22 = swift_allocObject();
  swift_weakInit();
  sub_20BB08474(v11, v8, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v23 = (*(v58 + 80) + 24) & ~*(v58 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  sub_20BB0895C(v8, v24 + v23, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  sub_20C137C94();
  sub_20BB084DC(v11, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  v25 = swift_allocObject();
  swift_weakInit();
  v27 = v59;
  v26 = v60;
  (*(v4 + 16))(v59, v69, v60);
  v28 = v68;
  v29 = v66;
  v30 = v70;
  (*(v68 + 16))(v66, v73, v70);
  v31 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v32 = v28;
  v33 = (v62 + *(v28 + 80) + v31) & ~*(v28 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v25;
  (*(v4 + 32))(v34 + v31, v27, v26);
  (*(v32 + 32))(v34 + v33, v29, v30);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20BB08540;
  *(v35 + 24) = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_20B5D9CB0;
  *(v36 + 24) = v35;
  v37 = v65;
  v38 = v61;
  v39 = v57;
  v40 = v67;
  (*(v65 + 16))(v61, v57, v67);
  v41 = v37;
  v42 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v43 = (v63 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v41 + 32))(v44 + v42, v38, v40);
  v45 = (v44 + v43);
  *v45 = sub_20B5D9CCC;
  v45[1] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v46 = v64;
  sub_20C137C94();
  (*(v41 + 8))(v39, v40);
  v47 = swift_allocObject();
  *(v47 + 16) = nullsub_1;
  *(v47 + 24) = 0;
  v48 = v72;
  v49 = v74;
  v50 = v76;
  (*(v72 + 16))(v74, v46, v76);
  v51 = v48;
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v75 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v51 + 32))(v54 + v52, v49, v50);
  v55 = (v54 + v53);
  *v55 = sub_20B5D9C74;
  v55[1] = v47;
  sub_20C137C94();
  return (*(v51 + 8))(v46, v50);
}

uint64_t sub_20BB03DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onParticipantConnected);
  sub_20B584050(v6);

  if (!v6)
  {
    return 1;
  }

  v6(a2, a3);
  sub_20B583ECC(v6);
  return 0;
}

uint64_t sub_20BB03E68(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_20C135174();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RemoteParticipantButton();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  v17 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_currentSnapshot;
  swift_beginAccess();
  v18 = *(v10 + 16);
  v18(v12, v2 + v17, v9);
  v19 = sub_20C13BE54();
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = *(v19 + 16);

  if (v21 <= v47)
  {
    return result;
  }

  v23 = v47;
  v18(v12, v2 + v17, v9);
  v24 = sub_20C13BE54();
  result = (v20)(v12, v9);
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*(v24 + 16) <= v23)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v25 = v46;
  sub_20BB08474(v24 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v23, v46, type metadata accessor for RemoteParticipantButton);

  v26 = v45;
  sub_20BB08474(v25, v45, type metadata accessor for RemoteParticipantButton);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20BB084DC(v26, type metadata accessor for RemoteParticipantButton);
      v32 = *(v2 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onSkipSelected);
      if (v32)
      {

        v32(v33);
        sub_20B583ECC(v32);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7654B8);
    sub_20B7A7B44(*(v26 + *(v34 + 48)));
    v36 = v40;
    v35 = v41;
    v37 = v26;
    v38 = v42;
    (*(v41 + 32))(v40, v37, v42);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20B7A602C(v25);
      swift_unknownObjectRelease();
    }

    sub_20BAFC8A4(v36);
    (*(v35 + 8))(v36, v38);
  }

  else
  {
    sub_20BB084DC(v26, type metadata accessor for RemoteParticipantButton);
    v28 = *(v2 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onNewGuestFlowSelected);
    if (v28)
    {

      v28(v29);
      sub_20B583ECC(v28);
    }

    v30 = sub_20C1349E4();
    sub_20BB05EB4(v30, v31);
  }

  return sub_20BB084DC(v25, type metadata accessor for RemoteParticipantButton);
}

uint64_t sub_20BB043D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v29 - v4;
  v5 = sub_20C135174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
  swift_beginAccess();
  sub_20BB08474(v1 + v15, v14, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20BB084DC(v14, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  if (EnumCaseMultiPayload == 4)
  {
    sub_20C13B484();
    v18 = *(v6 + 16);
    v31 = a1;
    v18(v8, a1, v5);
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v21 = 136446210;
      sub_20BB06B88(&unk_27C76B9B0, MEMORY[0x277D515D0]);
      v22 = sub_20C13DFA4();
      v24 = v23;
      (*(v6 + 8))(v8, v5);
      v25 = sub_20B51E694(v22, v24, v35);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_20B517000, v19, v20, "Lost participant: %{public}s", v21, 0xCu);
      v26 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    (*(v32 + 8))(v11, v33);
    swift_beginAccess();
    v27 = v34;
    v28 = v31;
    sub_20B6CAE4C(v31, v34);
    sub_20B520158(v27, &unk_27C76BC00);
    swift_endAccess();
    sub_20BAFD760();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20B7A5DCC(v28);
      swift_unknownObjectRelease();
    }

    return sub_20BB05870();
  }

  return result;
}

uint64_t sub_20BB04824(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764520);
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  v89 = v5;
  v90 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v95 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v92 = &v80 - v9;
  v10 = sub_20C135174();
  v98 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v87 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v86 = &v80 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v80 - v15;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  v96 = v17;
  v97 = v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v85 = &v80 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v80 - v23;
  v25 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
  swift_beginAccess();
  sub_20BB08474(v1 + v28, v27, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20BB084DC(v27, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  if (EnumCaseMultiPayload == 4)
  {
    v101 = sub_20C135164();
    v102 = v31 & 1;
    v99 = *(v2 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_role);
    v100 = 1;
    sub_20BB08314();
    sub_20BB08368();
    result = sub_20C133BF4();
    if (result)
    {
      v84 = v8;
      sub_20C13B484();
      v32 = v98;
      v33 = *(v98 + 16);
      v83 = a1;
      v82 = v98 + 16;
      v81 = v33;
      v33(v16, a1, v10);
      v34 = sub_20C13BB74();
      v35 = sub_20C13D1F4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v101 = v37;
        *v36 = 136446210;
        sub_20BB06B88(&unk_27C76B9B0, MEMORY[0x277D515D0]);
        v38 = sub_20C13DFA4();
        v40 = v39;
        v80 = *(v98 + 8);
        v80(v16, v10);
        v41 = sub_20B51E694(v38, v40, &v101);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_20B517000, v34, v35, "Discovered participant: %{public}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x20F2F6A40](v37, -1, -1);
        MEMORY[0x20F2F6A40](v36, -1, -1);
      }

      else
      {

        v80 = *(v32 + 8);
        v80(v16, v10);
      }

      v42 = v96;
      v43 = *(v97 + 8);
      v43(v24, v96);
      v44 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_discoveredParticipants;
      v45 = swift_beginAccess();
      v46 = *(v2 + v44);
      MEMORY[0x28223BE20](v45);
      v47 = v83;
      v79 = v83;

      v48 = sub_20B796C14(sub_20BB083BC, (&v80 - 4), v46);

      v49 = v84;
      if (v48)
      {
        v50 = v88;
        sub_20C13B484();
        v51 = sub_20C13BB74();
        v52 = sub_20C13D1F4();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_20B517000, v51, v52, "Discovered participant matches already discovered. Ignoring.", v53, 2u);
          MEMORY[0x20F2F6A40](v53, -1, -1);
        }

        return (v43)(v50, v42);
      }

      else
      {
        v54 = v87;
        v81(v87, v47, v10);
        swift_beginAccess();
        v55 = v86;
        sub_20B703958(v86, v54);
        v80(v55, v10);
        swift_endAccess();
        sub_20BAFD760();
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_20B7A5B5C(v47);
          swift_unknownObjectRelease();
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v57 = Strong;
          type metadata accessor for SeymourLocalizationBundle();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v59 = [objc_opt_self() bundleForClass_];
          v79 = 0xE000000000000000;
          sub_20C132964();

          v60 = v85;
          sub_20C13B4A4();
          sub_20C13BB64();
          v43(v60, v42);
          v61 = *(v57 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_titleLabel);
          v62 = sub_20C13C914();

          [v61 setText_];
          swift_unknownObjectRelease();
        }

        sub_20BB05870();
        sub_20B8B5D60();
        v63 = swift_allocError();
        *v64 = 7;
        *(swift_allocObject() + 16) = v63;
        v65 = v91;
        sub_20C137CA4();
        v66 = swift_allocObject();
        *(v66 + 16) = sub_20BB083DC;
        *(v66 + 24) = v2;
        v67 = swift_allocObject();
        *(v67 + 16) = sub_20BB0841C;
        *(v67 + 24) = v66;
        v68 = swift_allocObject();
        *(v68 + 16) = sub_20B7DB918;
        *(v68 + 24) = v67;
        v70 = v93;
        v69 = v94;
        v71 = v90;
        (*(v93 + 16))(v90, v65, v94);
        v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
        v73 = (v89 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
        v74 = swift_allocObject();
        (*(v70 + 32))(v74 + v72, v71, v69);
        v75 = (v74 + v73);
        *v75 = sub_20BB08438;
        v75[1] = v68;

        v76 = v92;
        sub_20C137C94();
        (*(v70 + 8))(v65, v69);
        v77 = sub_20C137CB4();
        v78 = swift_allocObject();
        *(v78 + 16) = 0;
        *(v78 + 24) = 0;
        v77(sub_20B5DF6DC, v78);

        return (*(v95 + 8))(v76, v49);
      }
    }
  }

  return result;
}

uint64_t sub_20BB05394()
{
  v0 = sub_20C135124();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = sub_20C135124();
    v7 = v6;
    v8 = sub_20C135124();
    if (v7)
    {
      if (v9)
      {
        if (v5 == v8 && v7 == v9)
        {

          v10 = 1;
        }

        else
        {
          v10 = sub_20C13DFF4();
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = 1;
        return v10 & 1;
      }

      v10 = 0;
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10 & 1;
}

void sub_20BB0549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20C13C4B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13C4F4();
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (*a1)
  {
    v32 = v10;
    v33 = v15;
    v29 = a5;
    v20 = *(a1 + 8);
    v19 = *(a1 + 16);
    v34 = v14;
    sub_20B5E2E18();
    v21 = v18;
    v30 = v9;
    v22 = a2;
    v23 = a4;
    v24 = v21;

    v31 = sub_20C13D374();
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v24;
    v25[4] = v20;
    v25[5] = v19;
    aBlock[4] = v23;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = v29;
    v26 = _Block_copy(aBlock);
    sub_20B889228(v18);

    sub_20C13C4D4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20BB06B88(&qword_281103AB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    v27 = v30;
    sub_20C13DA94();
    v28 = v31;
    MEMORY[0x20F2F4AF0](0, v17, v12, v26);
    _Block_release(v26);

    sub_20B7A7B44(v18);
    (*(v32 + 8))(v12, v27);
    (*(v33 + 8))(v17, v34);
  }
}

uint64_t sub_20BB057AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = a2;

  sub_20B703C40(&v10, v7, a3, a4);
  swift_endAccess();
  v8 = v10;

  sub_20BAFD760();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_20B7A5B7C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BB05870()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  sub_20C13B484();
  sub_20C13BB64();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_timeoutTimer;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_timeoutTimer))
  {
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  *(v1 + v10) = 0;
  swift_unknownObjectRelease();
  v11 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_discoveredParticipants;
  result = swift_beginAccess();
  if (!*(*(v1 + v11) + 16))
  {
    sub_20C136394();
    v14 = v13;
    sub_20C13B484();
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = v14;
      _os_log_impl(&dword_20B517000, v15, v16, "Starting discovery timer for %{public}f", v17, 0xCu);
      MEMORY[0x20F2F6A40](v17, -1, -1);
    }

    v9(v5, v2);
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    sub_20B5E2E18();
    v18 = sub_20C13D374();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v14;
    *(v20 + 24) = v19;

    v21 = sub_20C13AE34();

    *(v1 + v10) = v21;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BB05B94(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - v4;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_20B517000, v10, v11, "Discovery Timer Fired after %{public}f!", v12, 0xCu);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 96, v18);

    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_20C139C74();
    v14 = sub_20C137CB4();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v14(sub_20B52347C, v15);

    (*(v3 + 8))(v5, v2);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(result + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onDiscoveryTimeout);
    sub_20B584050(v17);

    if (v17)
    {
      v17(result);
      return sub_20B583ECC(v17);
    }
  }

  return result;
}

uint64_t sub_20BB05EB4(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v82 = a1;
  v2 = sub_20C1391E4();
  v3 = *(v2 - 8);
  v86 = v2;
  v87 = v3;
  MEMORY[0x28223BE20](v2);
  v85 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134C44();
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v13 - 8);
  v74 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v66 - v16;
  v17 = sub_20C135D24();
  v71 = *(v17 - 8);
  v72 = v17;
  MEMORY[0x28223BE20](v17);
  v70 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C134F74();
  v78 = *(v19 - 8);
  v79 = v19;
  MEMORY[0x28223BE20](v19);
  v76 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v75 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v66 - v24;
  v68 = sub_20C1352E4();
  v26 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v66 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v66 - v33;
  v35 = sub_20C134F24();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v66 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v66 - v40;
  v67 = sub_20C133654();
  v69 = *(v67 - 8);
  v42 = v69;
  MEMORY[0x28223BE20](v67);
  v66 = &v66 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20C136664();
  (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
  (*(v36 + 104))(v38, *MEMORY[0x277D51488], v35);
  v45 = sub_20C132C14();
  (*(*(v45 - 8) + 56))(v34, 1, 1, v45);
  v46 = sub_20C135ED4();
  (*(*(v46 - 8) + 56))(v31, 1, 1, v46);
  (*(v26 + 104))(v28, *MEMORY[0x277D51768], v68);
  v47 = sub_20C136E94();
  (*(*(v47 - 8) + 56))(v25, 1, 1, v47);

  v48 = v66;
  sub_20C133644();
  v49 = v70;
  v50 = v67;
  (*(v42 + 16))(v70, v48, v67);
  (*(v71 + 104))(v49, *MEMORY[0x277D52120], v72);
  v51 = sub_20C1333A4();
  (*(*(v51 - 8) + 56))(v73, 1, 1, v51);
  v52 = sub_20C135664();
  (*(*(v52 - 8) + 56))(v74, 1, 1, v52);
  v53 = sub_20C135674();
  (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
  v54 = v81;
  sub_20C134F94();
  v55 = sub_20C134FB4();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v56 - 8) + 56))(v83, 1, 1, v56);
  v57 = sub_20C135F14();
  (*(*(v57 - 8) + 56))(v84, 1, 1, v57);
  v58 = v75;
  sub_20C134F54();
  v59 = v78;
  v60 = v58;
  v61 = v58;
  v62 = v79;
  (*(v78 + 16))(v76, v60, v79);
  v63 = v85;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20BB06B88(&qword_281103B30, MEMORY[0x277D542C0]);
  v64 = v86;
  sub_20C13A764();
  (*(v87 + 8))(v63, v64);
  (*(v59 + 8))(v61, v62);
  return (*(v69 + 8))(v48, v50);
}

void sub_20BB06A00()
{
  if (!qword_27C76A490)
  {
    type metadata accessor for RemoteParticipantButton();
    sub_20BB06B88(&unk_27C76A498, type metadata accessor for RemoteParticipantButton);
    v0 = sub_20C13BE94();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76A490);
    }
  }
}

void sub_20BB06AB0()
{
  sub_20B9FF744();
  if (v0 <= 0x3F)
  {
    sub_20BB06B24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_20BB06B24()
{
  result = qword_27C76A4C0;
  if (!qword_27C76A4C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C76A4C0);
  }

  return result;
}

uint64_t sub_20BB06B88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20BB06BDC(void **a1)
{
  v2 = *(sub_20C135174() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0F74(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BB06C84(v5);
  *a1 = v3;
}

void sub_20BB06C84(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        sub_20C135174();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C135174() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BB070BC(v8, v9, a1, v4);
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
    sub_20BB06DB0(0, v2, 1, a1);
  }
}

void sub_20BB06DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C135174();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_20C135104();
      v27 = v26;
      if (v25 == sub_20C135104() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_20C13DFF4();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20BB070BC(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_20C135174();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = *(a3 + 1);
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_20BB07C78(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v29], v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v29;
          v156 = a3;
          sub_20B6A0714(v123 - 1);
          v29 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, &v32[v33 * v30], v9);
      v31 = sub_20C135104();
      v37 = v36;
      v38 = sub_20C135104();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_20C13DFF4();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = &v32[v42];
      v44 = v145 * v5;
      v45 = &v32[v145 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_20C135104();
        v52 = v51;
        if (v50 == sub_20C135104() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_20C13DFF4();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = a3 + 1;
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              (v149)(v139, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v149)(v57 + v6, v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_20BC05740((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_20BB07C78(&v118[*(v144 + 72) * v119], &v118[*(v144 + 72) * v120], &v118[*(v144 + 72) * v29], v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v156 = a3;
        sub_20B6A0714(v31);
        v29 = v156;
        v77 = *(v156 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = &v60[v31 * v61];
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_20C135104();
    v69 = v68;
    if (v5 == sub_20C135104() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20C13DFF4();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_20BB07C78(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v70 = sub_20C135174();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = (a2 - a1) / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v21;
    if (v21 < 1)
    {
      v43 = a4 + v21;
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = a4 + v21;
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = (a2 + v41);
          v68 = (a2 + v41);
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_20C135104();
            v51 = v50;
            if (v49 == sub_20C135104() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_20C13DFF4();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = (a4 + v20);
    v71 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_20C135104();
        v31 = v30;
        if (v29 == sub_20C135104() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_20C13DFF4();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = v25 + v65;
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 += v65;
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_20B6A0978(&v73, &v72, &v71);
}

unint64_t sub_20BB08314()
{
  result = qword_27C76A4D0;
  if (!qword_27C76A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A4D0);
  }

  return result;
}

unint64_t sub_20BB08368()
{
  result = qword_27C76B9A0;
  if (!qword_27C76B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B9A0);
  }

  return result;
}

uint64_t sub_20BB08474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BB084DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BB08540()
{
  v1 = *(sub_20C135174() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_20C136C64() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_20BB03DB0(v5, v0 + v2, v6);
}

uint64_t sub_20BB08660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A508);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB086D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB08740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_75Tm()
{
  v1 = *(type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = sub_20C135174();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_20BB088AC(void (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_20BAFE214(a1, a2, v6, v7);
}

uint64_t sub_20BB0895C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BB08AF8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return v6(a2, v7, v4);
}

uint64_t objectdestroy_111Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_20BB08D08()
{
  result = qword_27C76A990;
  if (!qword_27C76A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A990);
  }

  return result;
}

uint64_t sub_20BB08D94()
{
  v1 = sub_20C135174();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_discoveredParticipants;
  swift_beginAccess();
  v16 = v0;
  v6 = *(v0 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 56);
  v10 = (v7 + 63) >> 6;
  v15 = v2 + 16;
  v11 = (v2 + 8);
  swift_bridgeObjectRetain_n();
  for (i = 0; v9; i = v13)
  {
    v13 = i;
LABEL_8:
    (*(v2 + 16))(v4, *(v6 + 48) + *(v2 + 72) * (__clz(__rbit64(v9)) | (v13 << 6)), v1);
    sub_20BB026A4(v4, v16);
    v9 &= v9 - 1;
    (*v11)(v4, v1);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 56 + 8 * v13);
    ++i;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  result = (*v11)(v4, v1);
  __break(1u);
  return result;
}

uint64_t sub_20BB08FDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_71Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_20BB09168(uint64_t *a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0)
  {
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_20C132964();
    goto LABEL_7;
  }

  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v4 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v7 = sub_20C13C954();
LABEL_7:
    v10 = v7;
    v11 = v8;

    type metadata accessor for SeymourLocalizationBundle();
    v12 = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_20C132964();
    v16 = v15;

    *a1 = v10;
    a1[1] = v11;
    a1[2] = v14;
    a1[3] = v16;
    return;
  }

  sub_20BA18E84();
  swift_allocError();
  *v17 = 1;
  swift_willThrow();
}

void sub_20BB093B8(uint64_t *a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0)
  {
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_20C132964();
    goto LABEL_7;
  }

  if (qword_27C760930 != -1)
  {
    swift_once();
  }

  v4 = qword_27C76A558;
  [qword_27C76A558 setMaximumFractionDigits_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v7 = sub_20C13C954();
LABEL_7:
    v10 = v7;
    v11 = v8;

    type metadata accessor for SeymourLocalizationBundle();
    v12 = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_20C132964();
    v16 = v15;

    *a1 = v10;
    a1[1] = v11;
    a1[2] = v14;
    a1[3] = v16;
    return;
  }

  sub_20BA18E84();
  swift_allocError();
  *v17 = 1;
  swift_willThrow();
}