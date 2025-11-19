uint64_t sub_20BD8AAB8(char a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EC38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B544();
  sub_20C13BB64();
  result = (*(v10 + 8))(v12, v9);
  if ((a1 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_lastPage;
    swift_beginAccess();
    sub_20B52F9E8(v3 + v14, v8, &qword_27C76EC38);
    v15 = OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_presentingPage;
    swift_beginAccess();
    sub_20BD8B360(v8, v3 + v15);
    result = swift_endAccess();
  }

  if (a2)
  {
    return sub_20BD89858();
  }

  return result;
}

uint64_t sub_20BD8AC94(int a1)
{
  v2 = v1;
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EC38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-v7];
  v9 = type metadata accessor for MetricNavigationTracker.Page(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B544();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  v17 = OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_presentingPage;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v17, v8, &qword_27C76EC38);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20B520158(v8, &qword_27C76EC38);
  }

  sub_20BD8B3D0(v8, v12);
  sub_20BD8B434(v12, v5);
  (*(v10 + 56))(v5, 0, 1, v9);
  v19 = OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_lastPage;
  swift_beginAccess();
  sub_20BD8B360(v5, v2 + v19);
  swift_endAccess();
  if (v21)
  {
    sub_20BD8A170();
  }

  return sub_20BD8B498(v12);
}

uint64_t sub_20BD8AF94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EC38);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = type metadata accessor for MetricNavigationTracker.Page(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v11 = OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_lastPage;
  swift_beginAccess();
  sub_20BD8B360(v4, v1 + v11);
  swift_endAccess();
  v10(v4, 1, 1, v9);
  v12 = OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_presentingPage;
  swift_beginAccess();
  sub_20BD8B360(v4, v1 + v12);
  result = swift_endAccess();
  *(v1 + OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_topicRoutingBehaviorForPendingBackNavigation) = 4;
  return result;
}

uint64_t sub_20BD8B1BC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = v1 + OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_lastPage;
  swift_beginAccess();
  v7 = type metadata accessor for MetricNavigationTracker.Page(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result)
  {
    v9 = 4;
  }

  else
  {
    v9 = *(v6 + *(v7 + 20));
  }

  *(v1 + OBJC_IVAR____TtC9SeymourUI23MetricNavigationTracker_topicRoutingBehaviorForPendingBackNavigation) = v9;
  return result;
}

uint64_t sub_20BD8B360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EC38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD8B3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricNavigationTracker.Page(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD8B434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricNavigationTracker.Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD8B498(uint64_t a1)
{
  v2 = type metadata accessor for MetricNavigationTracker.Page(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BD8B4F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20BD87F9C(a1, v1);
}

uint64_t sub_20BD8B58C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BD88C84(a1, v1);
}

void sub_20BD8B740(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v72 - v4;
  v5 = sub_20C1391E4();
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x28223BE20](v5);
  v86 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C134C44();
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v72 - v18;
  v20 = sub_20C134F74();
  v85 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  v26 = sub_20C135D24();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v72 - v31;
  v33 = type metadata accessor for PreviewPlayerViewController();
  v90.receiver = v1;
  v90.super_class = v33;
  objc_msgSendSuper2(&v90, sel_viewDidDisappear_, a1 & 1);
  v34 = v1;
  v35 = [v1 parentViewController];
  if (v35)
  {
  }

  else
  {
    v73 = v29;
    v74 = v22;
    v75 = v19;
    v77 = v32;
    v78 = v27;
    v72 = v25;
    v79 = v26;
    v36 = v80;
    v76 = v20;
    v37 = [v1 player];
    v38 = 0;
    v39 = 0;
    if (v37)
    {
      v40 = v37;
      v41 = [v37 currentItem];

      if (v41)
      {
        [v41 duration];

        sub_20C13D524();
        v39 = v42;
      }
    }

    v43 = [v1 player];
    v44 = v77;
    v45 = v73;
    if (v43)
    {
      v46 = v43;
      [v43 currentTime];

      sub_20C13D524();
      v38 = v47;
    }

    v48 = *&v1[OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_contentIdentifier + 8];
    *v44 = *&v1[OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_contentIdentifier];
    v44[1] = v48;
    v44[2] = v38;
    v44[3] = v39;
    v49 = v78;
    v50 = v79;
    (*(v78 + 104))(v44, *MEMORY[0x277D52130], v79);
    (*(v49 + 16))(v45, v44, v50);
    v51 = OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_metricPage;
    v52 = sub_20C1333A4();
    v53 = *(v52 - 8);
    v54 = v75;
    (*(v53 + 16))(v75, &v34[v51], v52);
    (*(v53 + 56))(v54, 0, 1, v52);
    v55 = sub_20C135664();
    (*(*(v55 - 8) + 56))(v81, 1, 1, v55);
    v56 = sub_20C135674();
    (*(*(v56 - 8) + 56))(v82, 1, 1, v56);

    v57 = v83;
    sub_20C134F94();
    v58 = sub_20C134FB4();
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
    (*(*(v59 - 8) + 56))(v84, 1, 1, v59);
    v60 = sub_20C135F14();
    (*(*(v60 - 8) + 56))(v36, 1, 1, v60);
    v61 = v72;
    sub_20C134F54();
    v62 = v85;
    v63 = v76;
    (*(v85 + 16))(v74, v61, v76);
    v64 = v86;
    sub_20C1391F4();
    swift_getObjectType();
    sub_20B52698C(&qword_281103B30, MEMORY[0x277D542C0]);
    v65 = v89;
    sub_20C13A764();
    v66 = v87;
    sub_20C13CDC4();
    v67 = sub_20C13CDF4();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    sub_20C13CDA4();
    v68 = v34;
    v69 = sub_20C13CD94();
    v70 = swift_allocObject();
    v71 = MEMORY[0x277D85700];
    v70[2] = v69;
    v70[3] = v71;
    v70[4] = v68;
    sub_20B6383D0(0, 0, v66, &unk_20C17C740, v70);

    (*(v88 + 8))(v64, v65);
    (*(v62 + 8))(v61, v63);
    (*(v78 + 8))(v44, v79);
  }
}

uint64_t sub_20BD8C0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_20C13CDA4();
  v4[3] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_20BD8C188, v6, v5);
}

uint64_t sub_20BD8C188()
{
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_audioSessionCoordinator);
  sub_20C138F44();
  sub_20B52698C(&qword_27C76C6B0, MEMORY[0x277D541D0]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BD8C250, v2, v1);
}

uint64_t sub_20BD8C250()
{
  sub_20C138F04();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_20B694150, v1, v2);
}

id sub_20BD8C368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewPlayerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PreviewPlayerViewController()
{
  result = qword_27C76EC60;
  if (!qword_27C76EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BD8C4A4()
{
  result = sub_20C1333A4();
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

id sub_20BD8C55C()
{
  v1 = [v0 player];

  return v1;
}

void sub_20BD8C594(void *a1)
{
  [v1 setPlayer_];
}

char *sub_20BD8C614(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v13 - 8);
  v45 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v15 - 8);
  v52 = &v43 - v16;
  v49 = sub_20C1333A4();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C134284();
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C138F44();
  sub_20C133AA4();
  *&v4[OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_audioSessionCoordinator] = v54;
  v22 = &v4[OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_contentIdentifier];
  *v22 = a3;
  v22[1] = a4;
  v23 = *(v19 + 16);
  v23(v21, a2, v18);
  v24 = objc_allocWithZone(type metadata accessor for PreviewPlayerDataProvider());

  v26 = sub_20BC3FC70(v25, v21, a3, a4);

  v27 = OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_dataProvider;
  *&v5[OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_dataProvider] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v5[OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_eventHub] = v54;
  v28 = *MEMORY[0x277D51848];
  v29 = sub_20C1352F4();
  v30 = *(v29 - 8);
  v31 = v52;
  (*(v30 + 104))(v52, v28, v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  v32 = v43;
  v23(v21, *&v5[v27] + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_preview, v43);
  v33 = v45;
  sub_20C134254();
  v34 = *(v44 + 8);
  v34(v21, v32);
  v35 = sub_20C132C14();
  (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
  v36 = sub_20C135ED4();
  (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
  v37 = sub_20C136914();
  (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
  v38 = v46;
  sub_20C133384();
  (*(v47 + 32))(&v5[OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_metricPage], v38, v49);
  v39 = type metadata accessor for PreviewPlayerViewController();
  v53.receiver = v5;
  v53.super_class = v39;
  v40 = objc_msgSendSuper2(&v53, sel_initWithNibName_bundle_, 0, 0);
  *(*&v40[OBJC_IVAR____TtC9SeymourUI27PreviewPlayerViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI25PreviewPlayerDataProvider_display + 8) = &off_2822E4478;
  swift_unknownObjectWeakAssign();
  v41 = v40;
  [v41 setAllowsPictureInPicturePlayback_];
  [v41 setVideoGravity_];

  v34(v48, v32);
  return v41;
}

uint64_t sub_20BD8CC40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BD8C0F0(a1, v4, v5, v6);
}

uint64_t sub_20BD8CCF4@<X0>(uint64_t a1@<X8>)
{
  v157 = a1;
  v1 = sub_20C1344C4();
  v151 = *(v1 - 8);
  v152 = v1;
  MEMORY[0x28223BE20](v1);
  v150 = &v125 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_20C13BB84();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v155 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C132C14();
  v159 = *(v4 - 8);
  v160 = v4;
  MEMORY[0x28223BE20](v4);
  v142 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v158 = &v125 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EC70);
  v9 = *(v8 - 8);
  v147 = v8;
  v148 = v9;
  MEMORY[0x28223BE20](v8);
  v145 = &v125 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v143 = *(v11 - 8);
  v144 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v135 = &v125 - v15;
  MEMORY[0x28223BE20](v16);
  v149 = &v125 - v17;
  MEMORY[0x28223BE20](v18);
  v129 = &v125 - v19;
  MEMORY[0x28223BE20](v20);
  v128 = &v125 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250);
  MEMORY[0x28223BE20](v22 - 8);
  v134 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = &v125 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0);
  MEMORY[0x28223BE20](v26 - 8);
  v133 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v126 = &v125 - v29;
  MEMORY[0x28223BE20](v30);
  v137 = &v125 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EC78);
  MEMORY[0x28223BE20](v32 - 8);
  v132 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v141 = &v125 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v36 - 8);
  v156 = &v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v140 = &v125 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763368);
  MEMORY[0x28223BE20](v40 - 8);
  v154 = &v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v139 = &v125 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FB8);
  MEMORY[0x28223BE20](v44 - 8);
  v153 = &v125 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v138 = &v125 - v47;
  v48 = sub_20C13A814();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v125 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648);
  v53 = *(v52 - 8);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v125 - v55;
  v58 = *(v49 + 104);
  v57 = v49 + 104;
  v146 = *MEMORY[0x277D4EEC8];
  v59 = v58;
  v58(v51, v54);
  LOBYTE(v162) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768830);
  sub_20B5EB060(&unk_27C76BB90);
  sub_20B5EB060(&unk_27C768840);
  sub_20C13A384();
  sub_20C13A344();
  (*(v53 + 8))(v56, v52);
  if (v162 == 2 || (v162 & 1) == 0)
  {
    v141 = v13;
    v73 = *MEMORY[0x277D4EF28];
    v136 = v57;
    v74 = v59;
    v59(v51, v73, v48);
    v162 = 0;
    v163 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
    sub_20BD8E208(&qword_27C76EC80);
    sub_20BD8E208(&qword_27C76EC88);
    v75 = v145;
    sub_20C13A384();
    v76 = v147;
    sub_20C13A344();
    v77 = *(v148 + 8);
    v77(v75, v76);
    v140 = v162;
    v148 = v163;
    v74(v51, v146, v48);
    v162 = 0;
    v163 = 0;
    sub_20C13A384();
    sub_20C13A344();
    v77(v75, v76);
    if (v163)
    {

      v79 = v160;
      v78 = v161;
      v80 = v159;
      v81 = v155;
      v83 = v150;
      v82 = v151;
      v84 = v149;
    }

    else
    {
      v81 = v155;
      v83 = v150;
      v82 = v151;
      v84 = v149;
      v79 = v160;
      v78 = v161;
      v80 = v159;
    }

    sub_20C132C04();

    v85 = (*(v80 + 48))(v84, 1, v79);
    v86 = v152;
    if (v85 == 1)
    {
      sub_20B520158(v84, &unk_27C7617F0);
      return (*(v82 + 16))(v157, v78, v86);
    }

    else
    {
      v88 = v158;
      (*(v80 + 32))(v158, v84, v79);
      sub_20C13B574();
      (*(v82 + 16))(v83, v78, v86);
      v89 = v142;
      v150 = *(v80 + 16);
      v151 = v80 + 16;
      (v150)(v142, v88, v79);
      v90 = sub_20C13BB74();
      v91 = sub_20C13D1F4();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v162 = v93;
        *v92 = 136446466;
        sub_20BD8E274(&qword_27C769BF0, MEMORY[0x277D50820]);
        v94 = sub_20C13DFA4();
        v96 = v95;
        (*(v82 + 8))(v83, v86);
        v97 = sub_20B51E694(v94, v96, &v162);

        *(v92 + 4) = v97;
        *(v92 + 12) = 2082;
        sub_20BD8E274(&qword_27C768AB0, MEMORY[0x277CC9260]);
        v98 = v142;
        v99 = sub_20C13DFA4();
        v101 = v100;
        v102 = *(v159 + 8);
        v149 = ((v159 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v155 = v102;
        (v102)(v98, v160);
        v103 = sub_20B51E694(v99, v101, &v162);
        v80 = v159;

        *(v92 + 14) = v103;
        _os_log_impl(&dword_20B517000, v90, v91, "%{public}s with unencrypted fallback url: %{public}s", v92, 0x16u);
        swift_arrayDestroy();
        v104 = v93;
        v79 = v160;
        MEMORY[0x20F2F6A40](v104, -1, -1);
        MEMORY[0x20F2F6A40](v92, -1, -1);
      }

      else
      {

        v105 = *(v80 + 8);
        v149 = ((v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v155 = v105;
        (v105)(v89, v79);
        (*(v82 + 8))(v83, v86);
      }

      (*(v130 + 8))(v81, v131);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC8);
      (*(*(v106 - 8) + 56))(v153, 1, 1, v106);
      v107 = sub_20C1327F4();
      (*(*(v107 - 8) + 56))(v154, 1, 1, v107);
      v108 = sub_20C134734();
      (*(*(v108 - 8) + 56))();
      v109 = v132;
      (*(v143 + 56))(v132, 1, 1, v144);
      v110 = sub_20C134284();
      v111 = v133;
      (*(*(v110 - 8) + 56))(v133, 1, 1, v110);
      v112 = sub_20C135B04();
      v113 = v134;
      (*(*(v112 - 8) + 56))(v134, 1, 1, v112);
      v114 = *(v80 + 56);
      v115 = v135;
      v114(v135, 1, 1, v79);
      v116 = v141;
      (v150)(v141, v158, v79);
      v114(v116, 0, 1, v79);
      v117 = v154;
      v118 = v153;
      sub_20C134454();
      sub_20B520158(v116, &unk_27C7617F0);
      sub_20B520158(v115, &unk_27C7617F0);
      sub_20B520158(v113, &qword_27C763250);
      sub_20B520158(v111, &unk_27C7623C0);
      sub_20B520158(v109, &qword_27C76EC78);
      sub_20B520158(v156, &unk_27C7710A0);
      sub_20B520158(v117, &qword_27C763368);
      sub_20B520158(v118, &qword_27C762FB8);
      return (v155)(v158, v79);
    }
  }

  else
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FC8);
    (*(*(v60 - 8) + 56))(v138, 1, 1, v60);
    v61 = sub_20C1327F4();
    (*(*(v61 - 8) + 56))(v139, 1, 1, v61);
    v62 = sub_20C134734();
    (*(*(v62 - 8) + 56))(v140, 1, 1, v62);
    (*(v143 + 56))(v141, 1, 1, v144);
    v63 = sub_20C134284();
    v64 = *(v63 - 8);
    (*(v64 + 56))(v137, 1, 1, v63);
    v65 = sub_20C135B04();
    v66 = v127;
    (*(*(v65 - 8) + 56))(v127, 1, 1, v65);
    v67 = v160;
    v68 = *(v159 + 56);
    v69 = v128;
    v68(v128, 1, 1, v160);
    v70 = v126;
    sub_20C134444();
    if ((*(v64 + 48))(v70, 1, v63) == 1)
    {
      sub_20B520158(v70, &unk_27C7623C0);
      v71 = 1;
      v72 = v129;
    }

    else
    {
      v119 = v70;
      v72 = v129;
      sub_20C134254();
      (*(v64 + 8))(v119, v63);
      v71 = 0;
    }

    v68(v72, v71, 1, v67);
    v120 = v137;
    v121 = v141;
    v122 = v140;
    v123 = v139;
    v124 = v138;
    sub_20C134454();
    sub_20B520158(v72, &unk_27C7617F0);
    sub_20B520158(v69, &unk_27C7617F0);
    sub_20B520158(v66, &qword_27C763250);
    sub_20B520158(v120, &unk_27C7623C0);
    sub_20B520158(v121, &qword_27C76EC78);
    sub_20B520158(v122, &unk_27C7710A0);
    sub_20B520158(v123, &qword_27C763368);
    return sub_20B520158(v124, &qword_27C762FB8);
  }
}

uint64_t sub_20BD8E208(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767830);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20BD8E274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BD8E2BC(char a1, id a2, char a3)
{
  if (!a3)
  {
    return 1;
  }

  if (a3 == 1)
  {
    v6 = [a2 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LODWORD(v6) = sub_20C13D424();
    [objc_msgSend(a2 container)];
    v9 = v8;
    swift_unknownObjectRelease();
    v10 = (v6 & (0xFu >> sub_20C04C86C(v9)) & 1) == 0;
    if (a1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v10)
    {
      return v11 + 1;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BD8E404(int a1, id a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      [objc_msgSend(a2 container)];
      v4 = v3;
      swift_unknownObjectRelease();
      sub_20B755B8C(v6, v4);
      return sub_20B5F320C(v6);
    }

    else
    {
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else
  {
    if (qword_27C7606D0 != -1)
    {
      result = swift_once();
    }

    if (qword_27C7606E0 != -1)
    {
      return swift_once();
    }
  }

  return result;
}

uint64_t sub_20BD8E578(char a1, void *a2, unsigned __int8 a3)
{
  v6 = sub_20C1380F4();
  v7 = sub_20BD8E2BC(a1 & 1, a2, v6);
  sub_20BD8E404(a1 & 1, a2, a3);
  if (a3 <= 1u)
  {
    if (!__OFSUB__(v7, 1))
    {
      [objc_msgSend(a2 container)];
      return swift_unknownObjectRelease();
    }

    __break(1u);
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BD8E6AC()
{
  v0 = sub_20C13C954();
  v2 = v1;
  if (v0 == sub_20C13C954() && v2 == v3)
  {

    return 0;
  }

  v5 = sub_20C13DFF4();

  if (v5)
  {
    return 0;
  }

  v6 = sub_20C13C954();
  v8 = v7;
  if (v6 == sub_20C13C954() && v8 == v9)
  {

    return 2;
  }

  else
  {
    v11 = sub_20C13DFF4();

    if (v11)
    {
      return 2;
    }

    else
    {
      v13 = sub_20C13C954();
      v15 = v14;
      if (v13 == sub_20C13C954() && v15 == v16)
      {

        return 3;
      }

      else
      {
        v17 = sub_20C13DFF4();

        if (v17)
        {
          return 3;
        }

        else
        {
          v18 = sub_20C13C954();
          v20 = v19;
          if (v18 == sub_20C13C954() && v20 == v21)
          {

            return 1;
          }

          else
          {
            v22 = sub_20C13DFF4();

            return v22 & 1;
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for PageAlertAction()
{
  result = qword_27C76EC90;
  if (!qword_27C76EC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD8E940()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B52CA84();
    if (v1 <= 0x3F)
    {
      sub_20BD8E9E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20BD8E9E4()
{
  if (!qword_27C76ECA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C764BA0);
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76ECA0);
    }
  }
}

unint64_t sub_20BD8EA5C()
{
  result = qword_27C76ECA8;
  if (!qword_27C76ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76ECA8);
  }

  return result;
}

uint64_t sub_20BD8EAB0(uint64_t a1)
{
  sub_20C13E164();
  sub_20C132EE4();
  sub_20BD8EDBC(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  sub_20C13C7C4();
  MEMORY[0x20F2F58E0](*(v1 + *(a1 + 20)));
  if (*(v1 + *(a1 + 24) + 8))
  {
    sub_20C13E184();
    sub_20C13CA64();
  }

  else
  {
    sub_20C13E184();
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BD8EB98(uint64_t a1, uint64_t a2)
{
  sub_20C132EE4();
  sub_20BD8EDBC(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  sub_20C13C7C4();
  MEMORY[0x20F2F58E0](*(v2 + *(a2 + 20)));
  if (!*(v2 + *(a2 + 24) + 8))
  {
    return sub_20C13E184();
  }

  sub_20C13E184();

  return sub_20C13CA64();
}

uint64_t sub_20BD8EC8C(uint64_t a1, uint64_t a2)
{
  sub_20C13E164();
  sub_20C132EE4();
  sub_20BD8EDBC(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  sub_20C13C7C4();
  MEMORY[0x20F2F58E0](*(v2 + *(a2 + 20)));
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_20C13E184();
    sub_20C13CA64();
  }

  else
  {
    sub_20C13E184();
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BD8EDBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BD8EE04(uint64_t a1, uint64_t a2)
{
  if ((sub_20C132EC4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PageAlertAction();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  result = (v7 | v9) == 0;
  if (v7)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if (*v6 == *v8 && v7 == v9)
    {
      return 1;
    }

    else
    {

      return sub_20C13DFF4();
    }
  }

  return result;
}

void *sub_20BD8EEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for TVPlaylistListDataProvider();
  swift_allocObject();

  v12 = sub_20B917084(a1, a2, a3, a4, a5);

  v6[2] = v12;
  type metadata accessor for TVQueueFocusedWorkoutPresenter();
  swift_allocObject();

  v13 = sub_20B89AED0();

  v6[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v18, (v6 + 4));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980);
  sub_20C133AA4();

  sub_20B51C710(v18, (v6 + 9));
  v6[14] = a4;
  v6[15] = a5;
  v14 = v6[2];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = *(v14 + 16);
  *(v14 + 16) = sub_20BD901AC;
  *(v14 + 24) = v15;

  sub_20B5E0F50(v16);

  return v6;
}

uint64_t sub_20BD8F08C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (((a1 >> 57) & 0x78 | a1 & 7) == 0x20)
    {
      v10 = swift_projectBox();
      sub_20BD901B4(v10, v4);
      v11 = &v4[*(v2 + 64)];
      v12 = *(v11 + 1);
      v16 = *v11;
      v13 = *(v11 + 2);

      sub_20B6222E8(*&v4[*(v2 + 80)], *&v4[*(v2 + 80) + 8]);

      (*(v6 + 32))(v8, v4, v5);
      v14 = sub_20C133E44();
      sub_20B89915C(v14, v15);

      (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_20BD8F2B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v36 - v7;
  MEMORY[0x28223BE20](v9);
  v37 = v36 - v10;
  MEMORY[0x28223BE20](v11);
  v38 = v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  MEMORY[0x28223BE20](v13);
  v39 = v36 - v15;
  __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  sub_20C13A184();
  v16 = *(v3 + 16);
  v45 = v3 + 16;
  v46 = v16;
  v16(v5, v8, v2);
  v17 = *(v3 + 80);
  v42 = v17;
  v43 = (v17 + 16) & ~v17;
  v18 = v43;
  v19 = (v4 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v44 = *(v3 + 32);
  v44(v20 + v18, v5, v2);
  v21 = (v20 + v19);
  *v21 = sub_20BD90224;
  v21[1] = v1;
  v36[1] = sub_20C138204();

  v22 = v37;
  sub_20C137C94();
  v23 = *(v3 + 8);
  v23(v8, v2);
  sub_20B5E2E18();
  v24 = sub_20C13D374();
  v46(v8, v22, v2);
  v25 = swift_allocObject();
  v44(v25 + v43, v8, v2);
  *(v25 + v19) = v24;
  v26 = v38;
  sub_20C137C94();
  v23(v22, v2);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20BD9022C;
  *(v28 + 24) = v27;
  v46(v22, v26, v2);
  v29 = swift_allocObject();
  v44(v29 + v43, v22, v2);
  v30 = (v29 + v19);
  *v30 = sub_20B7DB940;
  v30[1] = v28;
  v31 = v39;
  sub_20C137C94();
  v23(v26, v2);
  v32 = v40;
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B52347C, v34);

  return (*(v41 + 8))(v31, v32);
}

uint64_t sub_20BD8F7A8(uint64_t a1)
{
  v2 = sub_20C138204();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v8 = swift_allocObject();
  *(v8 + 16) = "SeymourUI/TVPlaylistPresenter.swift";
  *(v8 + 24) = 35;
  *(v8 + 32) = 2;
  *(v8 + 40) = 57;
  *(v8 + 48) = &unk_20C17C9A8;
  *(v8 + 56) = v7;
  return sub_20C137C94();
}

uint64_t sub_20BD8F958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ECB8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_20C133B74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = sub_20C1381E4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320);
  sub_20BD9032C(&qword_27C76B790);
  sub_20C13CBD4();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_20B520158(v2, &qword_27C76ECB8);
  }

  (*(v4 + 32))(v6, v2, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v8 = sub_20C133B24();
    sub_20B89915C(v8, v9);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20BD8FBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BD8FC6C, 0, 0);
}

uint64_t sub_20BD8FC6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 72, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = sub_20C1381E4();
    v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320);
    v0[11] = sub_20BD9032C(&qword_27C763328);
    v0[7] = v2;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_20BD8FE60;

    return sub_20C0A6C2C((v0 + 7));
  }

  else
  {
    v5 = sub_20C133D94();
    sub_20BCABC58();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50460], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20BD8FE60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_20B916B98;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 56);
    v4 = sub_20BD8FF7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20BD8FF7C()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (*(v1 + 16))
  {
    v2 = v0[18];
    sub_20B717280(v0[20]);

    v3 = sub_20C132E94();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    sub_20C1381F4();

    sub_20B520158(v2, &qword_27C762AC0);
  }

  else
  {

    v5 = sub_20C133D94();
    sub_20BCABC58();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50460], v5);
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BD90130()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_20BD901B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD90248(uint64_t a1)
{
  v4 = *(sub_20C138204() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BD8FBCC(a1, v6, v1 + v5);
}

uint64_t sub_20BD9032C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C763320);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20BD90390()
{
  result = qword_27C76ECC0;
  if (!qword_27C76ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76ECC0);
  }

  return result;
}

unint64_t sub_20BD903E4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_20C13DB34();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x20F2F5430](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_20B51C88C(0, &qword_27C7676C0);
    v8 = sub_20C13D5F4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_20BD904F4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_20C13DB34();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x20F2F5430](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for TVButton();
    v8 = sub_20C13D5F4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

char *sub_20BD905E4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_layout];
  *v11 = xmmword_20C17CA50;
  v11[1] = vdupq_n_s64(0x404E000000000000uLL);
  v11[2] = xmmword_20C17CA60;
  v11[3] = xmmword_20C17CA70;
  v11[4].i64[0] = 0x4054000000000000;
  v11[4].i64[1] = 0xD000000000000014;
  v11[5].i64[0] = 0x800000020C1B2B00;
  v12 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView;
  v13 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v14 = qword_27C760820;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = &v4[v12];
  [v15 smu:*&qword_27C79ACA0 setContinuousCornerRadius:?];
  *(v15 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_flipsContentForRightToLeftDirection) = 1;
  [v15 setClipsToBounds_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  *v16 = v15;
  *(v16 + 1) = &off_2822B63E8;
  v17 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  v19 = objc_opt_self();
  v20 = [v19 smu:*MEMORY[0x277D76A20] preferredFontForTextStyle:1024 variant:?];
  [v18 setFont_];

  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v18 setTextColor_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v17] = v18;
  v22 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_messageLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  v24 = [v19 preferredFontForTextStyle_];
  [v23 setFont_];

  v25 = [objc_opt_self() secondaryLabelColor];
  [v23 setTextColor_];

  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v22] = v23;
  v26 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_textStackView;
  v27 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v27 setAxis_];
  [v27 setAlignment_];
  [v27 setSpacing_];
  [v27 &selRef_count + 2];
  *&v4[v26] = v27;
  v28 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_buttonStackView;
  v29 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v29 setAxis_];
  [v29 setDistribution_];
  [v29 setSpacing_];
  [v29 &selRef_count + 2];
  *&v4[v28] = v29;
  v30 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_containerView;
  v31 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v31 &selRef_count + 2];
  *&v4[v30] = v31;
  *&v4[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_buttons] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_actions] = 0;
  v101.receiver = v4;
  v101.super_class = type metadata accessor for TVWorkoutPlanBannerCell();
  v32 = objc_msgSendSuper2(&v101, &selRef__hysteresis, a1, a2, a3, a4);
  v33 = [v32 contentView];
  v34 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView;
  [v33 addSubview_];

  v35 = [v32 contentView];
  v36 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_containerView;
  [v35 addSubview_];

  v37 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_textStackView;
  [*&v32[v36] addSubview_];
  [*&v32[v37] addArrangedSubview_];
  [*&v32[v37] addArrangedSubview_];
  v98 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_buttonStackView;
  [*&v32[v36] addSubview_];
  v99 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C1697C0;
  v39 = [v32 contentView];
  v40 = [v39 heightAnchor];

  v100 = &v32[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_layout];
  v41 = [v40 constraintLessThanOrEqualToConstant_];

  *(v38 + 32) = v41;
  v42 = [*&v32[v34] leadingAnchor];
  v43 = [v32 contentView];
  v44 = [v43 leadingAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v38 + 40) = v45;
  v46 = [*&v32[v34] trailingAnchor];
  v47 = [v32 contentView];
  v48 = [v47 trailingAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v38 + 48) = v49;
  v50 = [*&v32[v34] centerYAnchor];
  v51 = [v32 contentView];
  v52 = [v51 centerYAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v38 + 56) = v53;
  v54 = [*&v32[v34] heightAnchor];
  v55 = [v32 contentView];
  v56 = [v55 heightAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v38 + 64) = v57;
  v58 = [*&v32[v36] leadingAnchor];
  v59 = [v32 contentView];
  v60 = [v59 leadingAnchor];

  v61 = [v58 constraintEqualToAnchor:v60 constant:v100[2]];
  *(v38 + 72) = v61;
  v62 = [*&v32[v36] topAnchor];
  v63 = [v32 contentView];
  v64 = [v63 &selRef_setLineBreakMode_];

  v65 = [v62 &selRef_passwordEntryCancelledHandler + 6];
  *(v38 + 80) = v65;
  v66 = [*&v32[v36] bottomAnchor];
  v67 = [v32 contentView];

  v68 = [v67 &selRef_secondaryLabel + 5];
  v69 = [v66 &selRef_passwordEntryCancelledHandler + 6];

  *(v38 + 88) = v69;
  v70 = [*&v32[v36] widthAnchor];
  v71 = [v70 constraintEqualToConstant_];

  *(v38 + 96) = v71;
  v72 = [*&v32[v37] leadingAnchor];
  v73 = [*&v32[v36] leadingAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v38 + 104) = v74;
  v75 = [*&v32[v37] topAnchor];
  v76 = [*&v32[v36] topAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v38 + 112) = v77;
  v78 = [*&v32[v37] widthAnchor];
  v79 = [*&v32[v36] widthAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v38 + 120) = v80;
  v81 = [*&v32[v37] bottomAnchor];
  v82 = [*&v32[v98] topAnchor];
  v83 = [v81 constraintLessThanOrEqualToAnchor_];

  *(v38 + 128) = v83;
  v84 = [*&v32[v98] leadingAnchor];
  v85 = [*&v32[v36] leadingAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v38 + 136) = v86;
  v87 = [*&v32[v98] heightAnchor];
  v88 = [v87 constraintEqualToConstant_];

  *(v38 + 144) = v88;
  v89 = [*&v32[v98] bottomAnchor];
  v90 = [*&v32[v36] bottomAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(v38 + 152) = v91;
  v92 = [*&v32[v98] topAnchor];
  v93 = [*&v32[v37] &selRef_secondaryLabel + 5];
  v94 = [v92 constraintEqualToAnchor:v93 constant:v100[8]];

  LODWORD(v95) = 1132068864;
  [v94 setPriority_];
  *(v38 + 160) = v94;
  sub_20B51C88C(0, &qword_281100500);
  v96 = sub_20C13CC54();

  [v99 activateConstraints_];

  return v32;
}

uint64_t sub_20BD914FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ButtonAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_actions) = a1;

  v8 = *(a1 + 16);
  if (v8)
  {
    v43 = MEMORY[0x277D84F90];

    sub_20C13DD64();
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    do
    {
      sub_20B5F15A8(v9, v7);
      sub_20BD91A40(v7);
      sub_20BD93B74(v7, type metadata accessor for ButtonAction);
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v9 += v10;
      --v8;
    }

    while (v8);
    v11 = v43;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v40 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_buttons;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_buttons) = v11;

  v41 = *(v1 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_buttonStackView);
  v12 = [v41 subviews];
  sub_20B51C88C(0, &qword_27C762910);
  v13 = sub_20C13CC74();

  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v15 = 0;
    v16 = (v13 & 0xFFFFFFFFFFFFFF8);
    v42 = (v13 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x20F2F5430](v15, v13);
      }

      else
      {
        if (v15 >= v16[2])
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
        v16 = v42;
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

  v22 = *(v2 + v40);
  if (v22)
  {
    v23 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
      goto LABEL_36;
    }

    for (j = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_20C13DB34())
    {
      v25 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_layout;

      if (!j)
      {
        break;
      }

      v26 = 0;
      v39 = v2 + v25;
      v40 = v22 & 0xC000000000000001;
      v38 = xmmword_20C151490;
      v2 += v25;
      while (1)
      {
        if (v40)
        {
          v27 = MEMORY[0x20F2F5430](v26, v22);
        }

        else
        {
          if (v26 >= *(v23 + 16))
          {
            goto LABEL_35;
          }

          v27 = *(v22 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        [v41 addArrangedSubview_];
        v42 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        v30 = j;
        v31 = v23;
        v32 = swift_allocObject();
        *(v32 + 16) = v38;
        v33 = [v28 widthAnchor];
        v34 = [v33 constraintGreaterThanOrEqualToConstant_];

        *(v32 + 32) = v34;
        v35 = [v28 heightAnchor];
        v36 = [v35 constraintEqualToConstant_];

        *(v32 + 40) = v36;
        sub_20B51C88C(0, &qword_281100500);
        v37 = sub_20C13CC54();
        v23 = v31;
        j = v30;

        [v42 activateConstraints_];

        ++v26;
        if (v29 == v30)
        {
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }
  }

  return result;
}

_BYTE *sub_20BD91A40(uint64_t a1)
{
  v2 = v1;
  v4 = _UISolariumEnabled();
  v5 = MEMORY[0x277D76918];
  if (v4)
  {
    v6 = [objc_opt_self() smu:*MEMORY[0x277D76918] preferredFontForTextStyle:8 variant:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for TVButtonTextContentView();
  v8 = objc_allocWithZone(v7);
  v9 = TVButtonTextContentView.init(title:)(0, 0);
  v10 = v9;
  if (v6)
  {
    [*&v9[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  v11 = objc_allocWithZone(type metadata accessor for TVButton());
  v12 = sub_20BB87F6C(v10, 0, 0, v11, 0.0, 0.0, 0.0, 0.0);

  v13 = sub_20B9E1660(1uLL, 0);
  [*&v13[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setFocusedSizeIncrease_];
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = objc_allocWithZone(v7);

  v17 = TVButtonTextContentView.init(title:)(v14, v15);
  v18 = [objc_opt_self() smu:*v5 preferredFontForTextStyle:1024 variant:?];
  [*&v17[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];

  v19 = v17;
  sub_20BB88C24(v19, v13);

  v13[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = 0;
  sub_20B9DDDD4();
  [v13 addTarget:v2 action:sel_handleTappedButton_ forControlEvents:0x2000];

  return v13;
}

void sub_20BD91C40(uint64_t a1)
{
  v3 = sub_20C133244();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonAction(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_buttons);
  if (!v16)
  {
    return;
  }

  v17 = sub_20BD904F4(a1, v16);
  v19 = v18;

  if (v19)
  {
    return;
  }

  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_actions);
  if (!v20)
  {
    return;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v17 >= *(v20 + 16))
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_20B5F15A8(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v12);
  sub_20B5F6860(v12, v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    sub_20B5F15A8(v15, v8);
    v23 = swift_storeEnumTagMultiPayload();
    *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
    *(&v29 - 4) = 0;
    *(&v29 - 24) = 1;
    *(&v29 - 2) = v8;
    *(&v29 - 1) = v22;
    v25 = [*(v22 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v25)
    {
      v26 = v25;
      sub_20C1331E4();

      sub_20C0C1CDC(v5, sub_20B5E27BC);
      (*(v29 + 8))(v5, v30);
    }

    swift_unknownObjectRelease();
    sub_20BD93B74(v15, type metadata accessor for ButtonAction);
    v27 = type metadata accessor for ShelfItemAction;
    v28 = v8;
  }

  else
  {
    v27 = type metadata accessor for ButtonAction;
    v28 = v15;
  }

  sub_20BD93B74(v28, v27);
}

id sub_20BD9200C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanBannerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVWorkoutPlanBannerCell()
{
  result = qword_27C76ECE0;
  if (!qword_27C76ECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD92188()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BD92258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BD922A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BD92304(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BD92350@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BD923B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BD92438(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v201 = *(v2 - 8);
  v202 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v159 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v183 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v184 = &v159 - v7;
  v182 = v8;
  MEMORY[0x28223BE20](v9);
  v185 = &v159 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v11 - 8);
  v193 = &v159 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v196 = *(v13 - 8);
  v197 = v13;
  MEMORY[0x28223BE20](v13);
  v181 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v14;
  MEMORY[0x28223BE20](v15);
  v194 = &v159 - v16;
  v192 = sub_20C1391C4();
  v190 = *(v192 - 1);
  MEMORY[0x28223BE20](v192);
  v191 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C138A64();
  v188 = *(v18 - 8);
  v189 = v18;
  MEMORY[0x28223BE20](v18);
  v195 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C554();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_20C137C24();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v198 = v26;
  v199 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v200 = &v159 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767B00);
  MEMORY[0x28223BE20](v29);
  v31 = (&v159 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v32 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v159 - v34;
  MEMORY[0x28223BE20](v36);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x45)
  {
    v174 = v38;
    v39 = &v159 - v37;
    v40 = swift_projectBox();
    sub_20B52F9E8(v40, v31, &qword_27C767B00);
    v41 = v31[1];
    v177 = *v31;
    v178 = v41;
    v42 = v31[3];
    v179 = v31[2];
    v201 = v42;
    v43 = v29[16];
    v44 = (v31 + v29[20]);
    v45 = v44[1];
    v176 = *v44;
    v46 = *(v31 + v29[24]);
    sub_20BAF11B0(v31 + v43, v39);
    v202 = v39;
    sub_20B52F9E8(v39, v35, &unk_27C766680);
    if ((*(v25 + 48))(v35, 1, v24) == 1)
    {

      sub_20B520158(v35, &unk_27C766680);
      v47 = v203;
      sub_20BA1DA94();
      type metadata accessor for TVWorkoutPlanBannerCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v49 = [objc_opt_self() bundleForClass_];
      v50 = sub_20C13C914();
      v51 = [objc_opt_self() imageNamed:v50 inBundle:v49 withConfiguration:0];

      v52 = *&v47[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView];
      v53 = *&v47[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      v55 = *(v53 + 120);
      v56 = v46;
      v57 = v51;
      v55(v51, ObjectType, v53);
      [v52 setClipsToBounds_];

      v46 = v56;
LABEL_19:
      v155 = *&v47[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_titleLabel];
      v156 = sub_20C13C914();

      [v155 setText_];

      v157 = *&v47[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_messageLabel];
      v158 = sub_20C13C914();

      [v157 setText_];

      sub_20BD914FC(v46);

      return sub_20B520158(v202, &unk_27C766680);
    }

    v70 = v24;
    v173 = v45;
    v71 = *(v25 + 32);
    v72 = v200;
    v172 = v25 + 32;
    v171 = v71;
    v71(v200, v35, v70);
    v170 = sub_20C138054();
    v74 = v73;
    sub_20B51C88C(0, &qword_281100530);
    *v23 = sub_20C13D374();
    (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
    v75 = sub_20C13C584();
    result = (*(v21 + 8))(v23, v20);
    if (v75)
    {
      v175 = v25;
      v47 = v203;
      v77 = *&v203[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView];
      v76 = *&v203[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView + 8];
      v78 = swift_getObjectType();
      [v77 setContentMode_];
      if ((sub_20BA66C54(v72, v77, v76, 0) & 1) == 0)
      {

        (*(v175 + 8))(v72, v70);
        goto LABEL_19;
      }

      v168 = v46;
      v165 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v167 = v78;
      v80 = v175 + 16;
      v79 = *(v175 + 16);
      v166 = v76;
      v161 = v79;
      v79(v199, v72, v70);
      v162 = v80;
      v81 = *(v80 + 64);
      v82 = (v81 + 24) & ~v81;
      v160 = v198 + 7;
      v83 = (v198 + 7 + v82) & 0xFFFFFFFFFFFFFFF8;
      v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
      v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
      v164 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
      v163 = v81;
      v86 = swift_allocObject();
      *(v86 + 16) = v165;
      v169 = v70;
      v171(v86 + v82, v199, v70);
      v87 = (v86 + v83);
      v88 = v173;
      *v87 = v176;
      v87[1] = v88;
      v89 = (v86 + v84);
      *v89 = v170;
      v89[1] = v74;
      *(v86 + v85) = 2;
      v90 = v86 + v164;
      *v90 = MEMORY[0x277D84F90];
      *(v90 + 8) = 0;
      v91 = (v86 + ((v85 + 31) & 0xFFFFFFFFFFFFFFF8));
      *v91 = 0;
      v91[1] = 0;
      v92 = v166;
      v93 = *(v166 + 152);

      v94 = v74;

      v95 = v167;
      v93(sub_20BD9392C, v86, v167, v92);

      [v77 bounds];
      if (v96 <= 0.0)
      {

        (*(v175 + 8))(v200, v169);
      }

      else
      {
        v98 = v97;
        v165 = v94;
        v99 = v169;
        if (v97 > 0.0)
        {
          v100 = v96;
          v164 = ~v163;
          (*(v92 + 120))(0, v95, v92);
          v101 = v174;
          v102 = v200;
          v161(v174, v200, v99);
          (*(v175 + 56))(v101, 0, 1, v99);
          (*(v92 + 16))(v101, v95, v92);
          sub_20B51C88C(0, &qword_27C762070);
          v103 = v102;
          sub_20C137BC4();
          v104 = sub_20C13D5A4();
          [v77 setBackgroundColor_];

          (*(v92 + 176))(COERCE_DOUBLE(*&v100), COERCE_DOUBLE(*&v98), 0, v95, v92);
          v105 = swift_allocObject();
          v47 = v203;
          swift_unknownObjectWeakInit();
          v106 = v199;
          v107 = v103;
          v108 = v169;
          v109 = v161;
          v161(v199, v107, v169);
          v110 = (v163 + 16) & v164;
          v111 = (v160 + v110) & 0xFFFFFFFFFFFFFFF8;
          v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
          v113 = swift_allocObject();
          v114 = v113 + v110;
          v115 = v106;
          v171(v114, v106, v108);
          *(v113 + v111) = v105;
          v116 = (v113 + v112);
          *v116 = v100;
          v116[1] = v98;
          v174 = v113;
          v117 = (v113 + ((v112 + 23) & 0xFFFFFFFFFFFFFFF8));
          v118 = v200;
          v119 = v109;
          v120 = v108;
          *v117 = 0;
          v117[1] = 0;
          v109(v106, v118, v108);
          (*(v190 + 104))(v191, *MEMORY[0x277D542A8], v192);
          v121 = v195;
          sub_20C138A54();
          v122 = v193;
          sub_20B5F1BE0(v121, v193);
          v123 = v196;
          v124 = v197;
          if ((*(v196 + 48))(v122, 1, v197) == 1)
          {
            sub_20B520158(v122, &unk_27C766670);
            sub_20BA1DA94();

            (*(v188 + 8))(v121, v189);
            (*(v175 + 8))(v118, v120);
          }

          else
          {
            v192 = *(v123 + 32);
            v192(v194, v122, v124);
            v125 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v119(v115, v118, v120);
            v126 = (v163 + 40) & v164;
            v127 = v120;
            v128 = v126 + v198;
            v129 = (v126 + v198) & 0xFFFFFFFFFFFFFFF8;
            v130 = swift_allocObject();
            *(v130 + 2) = v125;
            v130[3] = v100;
            v130[4] = v98;
            v171(v130 + v126, v115, v127);
            *(v130 + v128) = 0;
            v131 = v130 + v129;
            *(v131 + 1) = 0;
            *(v131 + 2) = 0;
            v132 = swift_allocObject();
            *(v132 + 16) = sub_20BD93AC0;
            *(v132 + 24) = v130;
            v133 = v196;
            v134 = v197;
            v135 = v181;
            (*(v196 + 16))(v181, v194, v197);
            v136 = (*(v133 + 80) + 16) & ~*(v133 + 80);
            v137 = (v180 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
            v138 = swift_allocObject();
            v192((v138 + v136), v135, v134);
            v139 = (v138 + v137);
            *v139 = sub_20B5F67A4;
            v139[1] = v132;
            v140 = v184;
            sub_20C137C94();
            v141 = swift_allocObject();
            v142 = v174;
            *(v141 + 16) = sub_20BD93A04;
            *(v141 + 24) = v142;
            v143 = swift_allocObject();
            *(v143 + 16) = sub_20B5F67D4;
            *(v143 + 24) = v141;
            v144 = v186;
            v145 = v183;
            v146 = v187;
            (*(v186 + 16))(v183, v140, v187);
            v147 = (*(v144 + 80) + 16) & ~*(v144 + 80);
            v148 = (v182 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
            v149 = swift_allocObject();
            (*(v144 + 32))(v149 + v147, v145, v146);
            v150 = (v149 + v148);
            *v150 = sub_20B5DF204;
            v150[1] = v143;

            v151 = v185;
            sub_20C137C94();
            v152 = *(v144 + 8);
            v152(v140, v146);
            v153 = sub_20C137CB4();
            v154 = swift_allocObject();
            *(v154 + 16) = 0;
            *(v154 + 24) = 0;
            v153(sub_20B52347C, v154);

            v152(v151, v146);
            (*(v196 + 8))(v194, v197);
            (*(v188 + 8))(v195, v189);
            (*(v175 + 8))(v200, v169);
          }

          goto LABEL_18;
        }

        (*(v175 + 8))(v200, v99);
      }

      v47 = v203;
LABEL_18:
      v46 = v168;
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    sub_20C13B534();

    v58 = v203;
    v59 = sub_20C13BB74();
    v60 = sub_20C13D1D4();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v204 = a1;
      v205 = v63;
      *v61 = 138543618;
      *(v61 + 4) = v58;
      *v62 = v58;
      *(v61 + 12) = 2082;
      v64 = sub_20B5F66D0();
      v65 = v58;
      v66 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v64);
      v68 = sub_20B51E694(v66, v67, &v205);

      *(v61 + 14) = v68;
      _os_log_impl(&dword_20B517000, v59, v60, "Attempted to configure %{public}@ with item: %{public}s", v61, 0x16u);
      sub_20B520158(v62, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v62, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x20F2F6A40](v63, -1, -1);
      MEMORY[0x20F2F6A40](v61, -1, -1);
    }

    return (*(v201 + 8))(v4, v202);
  }

  return result;
}

void sub_20BD9392C()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA4BF04(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BD93A04(void *a1)
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

  sub_20BA63710(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BD93AC0(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2F6C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20BD93B74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BD93BD4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_layout;
  *v3 = xmmword_20C17CA50;
  *(v3 + 16) = vdupq_n_s64(0x404E000000000000uLL);
  *(v3 + 32) = xmmword_20C17CA60;
  *(v3 + 48) = xmmword_20C17CA70;
  *(v3 + 64) = 0x4054000000000000;
  *(v3 + 72) = 0xD000000000000014;
  *(v3 + 80) = 0x800000020C1B2B00;
  v4 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView;
  v5 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v6 = qword_27C760820;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = (v0 + v4);
  [v7 smu:*&qword_27C79ACA0 setContinuousCornerRadius:?];
  *(v7 + OBJC_IVAR____TtC9SeymourUI11ArtworkView_flipsContentForRightToLeftDirection) = 1;
  [v7 setClipsToBounds_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  *v8 = v7;
  v8[1] = &off_2822B63E8;
  v9 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  v11 = objc_opt_self();
  v12 = [v11 smu:*MEMORY[0x277D76A20] preferredFontForTextStyle:1024 variant:?];
  [v10 setFont_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v10 setTextColor_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v14 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_messageLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  v16 = [v11 preferredFontForTextStyle_];
  [v15 setFont_];

  v17 = [objc_opt_self() secondaryLabelColor];
  [v15 setTextColor_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v18 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_textStackView;
  v19 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v19 setAxis_];
  [v19 setAlignment_];
  [v19 setSpacing_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_buttonStackView;
  v21 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v21 setAxis_];
  [v21 setDistribution_];
  [v21 setSpacing_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v20) = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_containerView;
  v23 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v22) = v23;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_buttons) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_actions) = 0;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BD940EC(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v45 - v5;
  v6 = sub_20C133134();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HostedContentIdentifier();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C133954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C135214();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  sub_20BC688F4(a1, v10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 64);
  v52 = v16;
  v53 = v15;
  (*(v16 + 32))(v18, &v10[v20], v15);
  v22 = *(v12 + 32);
  v51 = v14;
  v54 = v11;
  v22(v14, &v10[v21], v11);
  v23 = *(v2 + 96);
  sub_20B8602D4();
  v24 = v23;
  sub_20C135204();
  v25 = sub_20C13D5D4();
  v26 = [v24 objectForKey_];

  if (!v26)
  {

    v26 = sub_20BD947BC(v46);
    if (v26)
    {
      v42 = *(v2 + 96);
      sub_20C135204();
      v43 = sub_20C13D5D4();
      [v42 setObject:v26 forKey:v43];
    }

    goto LABEL_7;
  }

  type metadata accessor for WorkoutPlanWeekdayDetailViewController();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {

LABEL_7:
    (*(v12 + 8))(v51, v54);
    (*(v52 + 8))(v18, v53);
    return v26;
  }

  v28 = *(*(v27 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider) + 448);
  v29 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
  swift_beginAccess();
  v30 = *(v12 + 24);
  v46 = v26;
  v31 = v51;
  v30(v28 + v29, v51, v54);
  swift_endAccess();
  v33 = v47;
  v32 = v48;
  v34 = v49;
  (*(v48 + 104))(v47, *MEMORY[0x277CC9968], v49);
  v35 = sub_20C133824();
  (*(v32 + 8))(v33, v34);
  v36 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_itemReferences;
  swift_beginAccess();
  *(v28 + v36) = v35;

  v38 = sub_20BD950F8(v37, v28);

  *(v28 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics) = v38;

  v39 = v50;
  sub_20C13CDC4();
  v40 = sub_20C13CDF4();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v28;

  sub_20B614F94(0, 0, v39, &unk_20C17CBC0, v41);

  (*(v12 + 8))(v31, v54);
  (*(v52 + 8))(v18, v53);

  return v26;
}

uint64_t sub_20BD946D4()
{
  [*(v0 + 96) removeAllObjects];
  sub_20B583ECC(*(v0 + 16));

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  sub_20B58CFB0(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

unint64_t sub_20BD94764()
{
  result = qword_27C76ECF0;
  if (!qword_27C76ECF0)
  {
    type metadata accessor for HostedContentIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76ECF0);
  }

  return result;
}

char *sub_20BD947BC(uint64_t a1)
{
  v3 = type metadata accessor for HostedContentIdentifier();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_20C133954();
  v6 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = sub_20C135214();
  v49 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v54 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v53 = &v48 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  sub_20BC688F4(a1, v5);
  v55 = *v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  v56 = v14;
  v24 = *(v14 + 32);
  v58 = v20;
  v24(v20, v5 + v22, v13);
  v60 = v6;
  v61 = v12;
  v25 = v5 + v23;
  v26 = v57;
  (*(v6 + 32))(v12, v25, v57);
  v52 = v1[4];
  sub_20B51CC64((v1 + 5), v64);
  v27 = *(v6 + 16);
  v28 = v62;
  v27(v62, v12, v26);
  v29 = *(v14 + 16);
  v30 = v53;
  v31 = v20;
  v32 = v49;
  v29(v53, v31, v49);
  v33 = v1[11];
  v51 = v1[10];
  v50 = v33;
  v34 = v59;
  v35 = v28;
  v36 = v26;
  v27(v59, v35, v26);
  v37 = v54;
  v38 = v30;
  v29(v54, v30, v32);
  type metadata accessor for WorkoutPlanWeekdayDetailPageDataProvider();
  swift_allocObject();
  v39 = v52;
  swift_retain_n();
  v40 = v51;
  v41 = v50;
  sub_20B58C2C8(v51, v50);
  v42 = sub_20B58C3D4(v39, v34, v37, v55, v40, v41);

  sub_20B51CC64(v64, v63);
  v43 = objc_allocWithZone(type metadata accessor for WorkoutPlanWeekdayDetailViewController());
  v44 = sub_20B9EE32C(v39, v42, v63);

  v45 = *(v56 + 8);
  v45(v38, v32);
  v46 = *(v60 + 8);
  v46(v62, v36);
  __swift_destroy_boxed_opaque_existential_1(v64);
  v46(v61, v36);
  v45(v58, v32);
  return v44;
}

unint64_t *sub_20BD94C28(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20BD94DA4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_20BD94CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v16[3] = a6;
  v16[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  a5[2] = 0;
  a5[3] = 0;
  v14 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  a5[12] = v14;
  a5[4] = a1;
  sub_20B51CC64(v16, (a5 + 5));
  a5[10] = a3;
  a5[11] = a4;
  [v14 setCountLimit_];
  __swift_destroy_boxed_opaque_existential_1(v16);
  return a5;
}

void sub_20BD94DA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v44 = a4;
  v35 = a1;
  v43 = sub_20C135C54();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C137294();
  v9 = MEMORY[0x28223BE20](v47);
  v45 = a3;
  v46 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v11 = 0;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v40 = v8 + 16;
  v41 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_itemReferences;
  v42 = v8;
  v38 = (v8 + 8);
  v39 = (v5 + 8);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v20 = v19 | (v11 << 6);
    v21 = v47;
    v22 = v46;
LABEL_12:
    v25 = *(v45 + 48);
    v26 = *(v42 + 72);
    v37 = v20;
    (*(v42 + 16))(v22, v25 + v26 * v20, v21, v9);
    sub_20C137284();
    v27 = v44;
    v28 = v41;
    swift_beginAccess();
    if (*(*(v27 + v28) + 16))
    {
      sub_20B65B0BC(v7);
      v30 = v29;
      swift_endAccess();
      (*v39)(v7, v43);
      (*v38)(v22, v21);
      if (v30)
      {
        *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_17:
          v32 = v45;

          sub_20BC0D634(v35, v34, v36, v32);
          return;
        }
      }
    }

    else
    {
      swift_endAccess();
      (*v39)(v7, v43);
      (*v38)(v22, v21);
    }
  }

  v23 = v11;
  v21 = v47;
  v22 = v46;
  while (1)
  {
    v11 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_17;
    }

    v24 = *(v13 + 8 * v11);
    ++v23;
    if (v24)
    {
      v17 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v11 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20BD950F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = *MEMORY[0x277D85DE8];
  v46 = sub_20C135C54();
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C137294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v13 = v11 & 0x3F;
  v35 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v35;
  v48 = a2;

  if (v13 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v44 = v12;
    v45 = v8;
    v34[0] = v34;
    v34[1] = v3;
    MEMORY[0x28223BE20](v15);
    v36 = v34 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v14);
    v37 = 0;
    v8 = 0;
    v47 = a1;
    v16 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    a1 = v18 & *(a1 + 56);
    v42 = v10;
    v43 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_itemReferences;
    v3 = (v17 + 63) >> 6;
    v40 = (v6 + 8);
    v41 = v10 + 16;
    v39 = (v10 + 8);
    v6 = v44;
    while (a1)
    {
      v19 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
LABEL_13:
      v22 = v19 | (v8 << 6);
      v23 = *(v47 + 48);
      v24 = *(v10 + 72);
      v38 = v22;
      (*(v10 + 16))(v6, v23 + v24 * v22, v9);
      v25 = v9;
      v26 = v45;
      sub_20C137284();
      v27 = v48;
      v12 = v43;
      swift_beginAccess();
      v14 = *&v12[v27];
      if (*(v14 + 16))
      {
        sub_20B65B0BC(v26);
        v14 = v28;
        swift_endAccess();
        (*v40)(v26, v46);
        (*v39)(v6, v25);
        v9 = v25;
        v10 = v42;
        if (v14)
        {
          *&v36[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
          if (__OFADD__(v37++, 1))
          {
            __break(1u);
LABEL_18:
            v30 = sub_20BC0D634(v36, v35, v37, v47);

            return v30;
          }
        }
      }

      else
      {
        swift_endAccess();
        (*v40)(v26, v46);
        (*v39)(v6, v25);
        v9 = v25;
        v10 = v42;
      }
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v8 >= v3)
      {
        goto LABEL_18;
      }

      v21 = *(v16 + 8 * v8);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        a1 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();
  v33 = v48;

  v30 = sub_20BD94C28(v32, v35, a1, v33);

  MEMORY[0x20F2F6A40](v32, -1, -1);

  return v30;
}

uint64_t sub_20BD95588()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20C06DC50();
}

uint64_t type metadata accessor for NavigationRouterRequest()
{
  result = qword_27C76ECF8;
  if (!qword_27C76ECF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD956B0()
{
  type metadata accessor for NavigationRequest();
  if (v0 <= 0x3F)
  {
    sub_20BD9574C();
    if (v1 <= 0x3F)
    {
      sub_20B51F2C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20BD9574C()
{
  if (!qword_27C76ED08)
  {
    v0 = sub_20C137CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76ED08);
    }
  }
}

uint64_t sub_20BD957A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = type metadata accessor for NavigationRouterRequest();
  return (*(a2 + *(v5 + 24)))(v3, v4);
}

uint64_t sub_20BD957F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D54278];
  v3 = sub_20C1390D4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20BD95868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v32 - v6;
  v7 = sub_20C1352E4();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v9 - 8);
  v36 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v11 - 8);
  v35 = &v32 - v12;
  v13 = sub_20C134F24();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - v17;
  v19 = sub_20C133654();
  v33 = *(v19 - 8);
  v34 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C1390D4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 40))(a2, a3);
  result = (*(v23 + 88))(v25, v22);
  if (result == *MEMORY[0x277D54278])
  {
    v27 = *MEMORY[0x277D52B30];
    v28 = sub_20C136664();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v18, v27, v28);
    (*(v29 + 56))(v18, 0, 1, v28);
    v32 = v15;
    sub_20BD97058(v15);
    v30 = sub_20C132C14();
    (*(*(v30 - 8) + 56))(v35, 1, 1, v30);
    v37 = (*(a3 + 24))(a2, a3);
    (*(a3 + 32))(a2, a3);
    (*(v38 + 104))(v40, *MEMORY[0x277D51768], v39);
    v31 = sub_20C136E94();
    (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
    sub_20C133644();
    sub_20BD96964(v21, a2, a3);
    return (*(v33 + 8))(v21, v34);
  }

  else if (result != *MEMORY[0x277D54280])
  {
    result = sub_20C13DFE4();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BD95E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v30 - v7;
  v8 = sub_20C1352E4();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v12 - 8);
  v34 = &v30 - v13;
  v14 = sub_20C134F24();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v41 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v30 - v18;
  v20 = sub_20C133654();
  v31 = *(v20 - 8);
  v32 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C1390D4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 40))(a3, a4);
  result = (*(v24 + 88))(v26, v23);
  if (result == *MEMORY[0x277D54278])
  {
    sub_20BD977EC(v33, v19);
    (*(v15 + 16))(v41, v35, v14);
    v28 = sub_20C132C14();
    (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
    v35 = (*(a4 + 24))(a3, a4);
    (*(a4 + 32))(a3, a4);
    (*(v37 + 104))(v39, *MEMORY[0x277D51768], v38);
    v29 = sub_20C136E94();
    (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
    sub_20C133644();
    sub_20BD96964(v22, a3, a4);
    return (*(v31 + 8))(v22, v32);
  }

  else if (result != *MEMORY[0x277D54280])
  {
    result = sub_20C13DFE4();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BD9639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v42 = a2;
  v44 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v37 - v9;
  v10 = sub_20C1352E4();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v14 - 8);
  v43 = &v37 - v15;
  v16 = sub_20C134F24();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v40 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v37 - v20;
  v22 = sub_20C133654();
  v38 = *(v22 - 8);
  v39 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C1390D4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a5 + 40);
  v51 = a5;
  v52 = v5;
  v50 = a4;
  v29(a4, a5);
  result = (*(v26 + 88))(v28, v25);
  if (result == *MEMORY[0x277D54278])
  {
    sub_20BD977EC(v41, v21);
    (*(v17 + 16))(v40, v42, v16);
    v31 = sub_20C132C14();
    (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
    sub_20C133E44();
    v32 = *MEMORY[0x277D52408];
    v33 = sub_20C135ED4();
    v34 = *(v33 - 8);
    v35 = v45;
    (*(v34 + 104))(v45, v32, v33);
    (*(v34 + 56))(v35, 0, 1, v33);
    (*(v46 + 104))(v48, *MEMORY[0x277D51768], v47);
    v36 = sub_20C136E94();
    (*(*(v36 - 8) + 56))(v49, 1, 1, v36);
    sub_20C133644();
    sub_20BD96964(v24, v50, v51);
    return (*(v38 + 8))(v24, v39);
  }

  else if (result != *MEMORY[0x277D54280])
  {
    result = sub_20C13DFE4();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BD96964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v44 = a1;
  v3 = sub_20C1391E4();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x28223BE20](v3);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134C44();
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v43 - v20;
  v22 = sub_20C135D24();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20C134F74();
  v26 = *(v43 - 8);
  v27 = MEMORY[0x28223BE20](v43);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v43 - v30;
  v32 = sub_20C133654();
  (*(*(v32 - 8) + 16))(v25, v44, v32);
  (*(v23 + 104))(v25, *MEMORY[0x277D52120], v22);
  (*(v50 + 16))(v51);
  v33 = sub_20C1333A4();
  (*(*(v33 - 8) + 56))(v21, 0, 1, v33);
  v34 = sub_20C135664();
  (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
  v35 = sub_20C135674();
  (*(*(v35 - 8) + 56))(v15, 1, 1, v35);
  sub_20C134F94();
  v36 = sub_20C134FB4();
  (*(*(v36 - 8) + 56))(v12, 0, 1, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
  v38 = sub_20C135F14();
  (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
  sub_20C134F54();
  v39 = v43;
  (*(v26 + 16))(v29, v31, v43);
  v40 = v47;
  sub_20C1391F4();
  (*(v50 + 8))(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();

  swift_getObjectType();
  sub_20B877A50();
  v41 = v48;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v49 + 8))(v40, v41);
  return (*(v26 + 8))(v31, v39);
}

uint64_t sub_20BD97058@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C760AB8 != -1)
  {
    swift_once();
  }

  v2 = sub_20C13C954();
  v4 = v3;
  v6 = v2 == sub_20C13C954() && v4 == v5;
  if (v6)
  {
    v8 = MEMORY[0x277D513C0];
LABEL_10:

    goto LABEL_11;
  }

  v7 = sub_20C13DFF4();

  if (v7)
  {
    v8 = MEMORY[0x277D513C0];
    goto LABEL_11;
  }

  if (qword_27C760AC0 != -1)
  {
    swift_once();
  }

  v13 = sub_20C13C954();
  v15 = v14;
  if (v13 == sub_20C13C954() && v15 == v16)
  {
    v8 = MEMORY[0x277D51388];
    goto LABEL_10;
  }

  v17 = sub_20C13DFF4();

  if (v17)
  {
    v8 = MEMORY[0x277D51388];
    goto LABEL_11;
  }

  if (qword_27C760AC8 != -1)
  {
    swift_once();
  }

  v18 = sub_20C13C954();
  v20 = v19;
  if (v18 == sub_20C13C954() && v20 == v21)
  {
    v8 = MEMORY[0x277D51380];
    goto LABEL_10;
  }

  v22 = sub_20C13DFF4();

  if (v22)
  {
    v8 = MEMORY[0x277D51380];
    goto LABEL_11;
  }

  v23 = sub_20C13C954();
  v25 = v24;
  if (v23 == sub_20C13C954() && v25 == v26)
  {
LABEL_30:
    v8 = MEMORY[0x277D51418];
    goto LABEL_10;
  }

  v27 = sub_20C13DFF4();

  if (v27)
  {
    goto LABEL_32;
  }

  v28 = sub_20C13C954();
  v30 = v29;
  if (v28 == sub_20C13C954() && v30 == v31)
  {
    goto LABEL_30;
  }

  v32 = sub_20C13DFF4();

  if (v32)
  {
    goto LABEL_32;
  }

  v33 = sub_20C13C954();
  v35 = v34;
  if (v33 == sub_20C13C954() && v35 == v36)
  {
    goto LABEL_30;
  }

  v37 = sub_20C13DFF4();

  if (v37)
  {
LABEL_32:
    v8 = MEMORY[0x277D51418];
  }

  else
  {
    v38 = sub_20C13C954();
    v40 = v39;
    if (v38 == sub_20C13C954() && v40 == v41)
    {
      v8 = MEMORY[0x277D513D0];
      goto LABEL_10;
    }

    v42 = sub_20C13DFF4();

    if (v42)
    {
      v8 = MEMORY[0x277D513D0];
    }

    else
    {
      if (qword_27C760AD0 != -1)
      {
        swift_once();
      }

      v43 = sub_20C13C954();
      v45 = v44;
      if (v43 == sub_20C13C954() && v45 == v46)
      {
        v8 = MEMORY[0x277D51480];
        goto LABEL_10;
      }

      v47 = sub_20C13DFF4();

      if (v47)
      {
        v8 = MEMORY[0x277D51480];
      }

      else
      {
        if (qword_27C760AD8 != -1)
        {
          swift_once();
        }

        v48 = sub_20C13C954();
        v50 = v49;
        if (v48 == sub_20C13C954() && v50 == v51)
        {
          v8 = MEMORY[0x277D51440];
          goto LABEL_10;
        }

        v52 = sub_20C13DFF4();

        if (v52)
        {
          v8 = MEMORY[0x277D51440];
        }

        else
        {
          if (qword_27C760AE0 != -1)
          {
            swift_once();
          }

          v53 = sub_20C13C954();
          v55 = v54;
          if (v53 == sub_20C13C954() && v55 == v56)
          {
            v8 = MEMORY[0x277D513A0];
            goto LABEL_10;
          }

          v57 = sub_20C13DFF4();

          if (v57)
          {
            v8 = MEMORY[0x277D513A0];
          }

          else
          {
            if (qword_27C760AE8 != -1)
            {
              swift_once();
            }

            v58 = sub_20C13C954();
            v60 = v59;
            if (v58 == sub_20C13C954() && v60 == v61)
            {
              v8 = MEMORY[0x277D513B0];
              goto LABEL_10;
            }

            v62 = sub_20C13DFF4();

            if (v62)
            {
              v8 = MEMORY[0x277D513B0];
            }

            else
            {
              if (qword_27C760AF0 != -1)
              {
                swift_once();
              }

              v63 = sub_20C13C954();
              v65 = v64;
              if (v63 == sub_20C13C954() && v65 == v66)
              {
                v8 = MEMORY[0x277D513A8];
                goto LABEL_10;
              }

              v67 = sub_20C13DFF4();

              v6 = (v67 & 1) == 0;
              v8 = MEMORY[0x277D513A8];
              if (v6)
              {
                v8 = MEMORY[0x277D51478];
              }
            }
          }
        }
      }
    }
  }

LABEL_11:
  v9 = *v8;
  v10 = sub_20C134F24();
  v11 = *(*(v10 - 8) + 104);

  return v11(a1, v9, v10);
}

uint64_t sub_20BD977EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD97884(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v38 = a3;
  v37 = a2(0);
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v30 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v30[1] = v3;
    v43 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v7, 0);
    v41 = a1 + 56;
    v42 = v43;
    result = sub_20C13DAA4();
    v9 = result;
    v10 = 0;
    v34 = v5 + 8;
    v35 = v5 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v41 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      v16 = (*(v5 + 16))(v36, *(a1 + 48) + *(v5 + 72) * v9, v37);
      v40 = v38(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v42;
      v43 = v42;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_20B526D44((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v23 = *(v41 + 8 * v13);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v32;
        v5 = v33;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v12 = v32;
        v27 = (v31 + 8 * v13);
        v5 = v33;
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_20B526EA4(v9, v39, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v9, v39, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BD97B94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = sub_20C134734();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootModality;
  swift_beginAccess();
  sub_20B5DF2D4(v5, v1 + v8, &unk_27C7710A0);
  swift_endAccess();
  sub_20BD983DC();
  sub_20BD98AEC();
  swift_getObjectType();
  v10[1] = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories);
  sub_20BDA2458();

  sub_20C13A764();
}

uint64_t sub_20BD97D40(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v4 - 8);
  v37[0] = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v37 - v7;
  v9 = sub_20C135524();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v38 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
  swift_beginAccess();
  v12 = sub_20C135914();
  (*(*(v12 - 8) + 24))(v2 + v11, a1, v12);
  swift_endAccess();
  v13 = sub_20C135894();
  v14 = sub_20BD97884(v13, MEMORY[0x277D53E10], MEMORY[0x277D53DE0]);

  v37[3] = sub_20B527580(v14);

  v15 = sub_20C1358F4();
  v16 = sub_20BD97884(v15, MEMORY[0x277D50618], MEMORY[0x277D505F0]);

  v37[2] = sub_20B527580(v16);

  v17 = sub_20C135904();
  v18 = sub_20BD97884(v17, MEMORY[0x277D53E88], MEMORY[0x277D53E58]);

  v37[1] = sub_20B527580(v18);

  v19 = sub_20C135874();
  v20 = sub_20BD97884(v19, MEMORY[0x277D52AF8], MEMORY[0x277D52AC8]);

  sub_20B527580(v20);

  v21 = sub_20C1358A4();
  v22 = sub_20BD97884(v21, MEMORY[0x277D4FE80], MEMORY[0x277D4FE50]);

  sub_20B527580(v22);

  v23 = sub_20C1358B4();
  v24 = sub_20BD97884(v23, MEMORY[0x277D4FF18], MEMORY[0x277D4FEF0]);

  sub_20B527580(v24);

  sub_20C135864();
  sub_20C13CFA4();

  v25 = sub_20C1358C4();
  v26 = sub_20BD97884(v25, MEMORY[0x277D53128], MEMORY[0x277D53108]);

  sub_20B527580(v26);

  v27 = sub_20C1358E4();
  v28 = sub_20BD97884(v27, MEMORY[0x277D51130], MEMORY[0x277D510F8]);

  sub_20B527580(v28);

  v29 = v38;
  sub_20C1354C4();
  v30 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootFilterResult;
  swift_beginAccess();
  (*(v39 + 40))(v2 + v30, v29, v40);
  swift_endAccess();
  sub_20C134E84();
  v31 = sub_20C135C84();
  if ((*(*(v31 - 8) + 48))(v8, 1, v31) == 1)
  {
    sub_20B520158(v8, &unk_27C7629B0);
LABEL_5:
    sub_20BD983DC();
    swift_getObjectType();
    v41 = *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories);
    sub_20BDA2458();

    sub_20C13A764();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20BDA2108(v8, MEMORY[0x277D52060]);
  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_5;
  }

  v33 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootModality;
  swift_beginAccess();
  v34 = v37[0];
  sub_20B52F9E8(v2 + v33, v37[0], &unk_27C7710A0);
  v35 = sub_20C134734();
  LODWORD(v33) = (*(*(v35 - 8) + 48))(v34, 1, v35);
  result = sub_20B520158(v34, &unk_27C7710A0);
  if (v33 != 1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_20BD983DC()
{
  v1 = v0;
  v56 = sub_20C135914();
  v2 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_20C135524();
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - v7;
  v9 = v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterRoot;
  v10 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootModality;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v10, v8, &unk_27C7710A0);
  v63[2] = v9;
  v63[3] = v8;
  v11 = sub_20B5F888C(sub_20BDA25B8, v63, &unk_282287438);
  sub_20B520158(v8, &unk_27C7710A0);
  v54 = *(v11 + 16);
  if (v54)
  {
    v12 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
    v51 = v11 + 32;
    v53 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootFilterResult;
    swift_beginAccess();
    v52 = v12;
    result = swift_beginAccess();
    v14 = 0;
    v49 = (v4 + 8);
    v50 = (v4 + 16);
    v47 = (v2 + 8);
    v48 = (v2 + 16);
    v44 = MEMORY[0x277D84F90];
    v45 = v1;
    v15 = v57;
    v46 = v11;
    while (1)
    {
      if (v14 >= *(v11 + 16))
      {
LABEL_56:
        __break(1u);
        return result;
      }

      v16 = *(v51 + v14);
      (*v50)(v15, v1 + v53, v60);
      if (v16 <= 3)
      {
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            v17 = sub_20C1354A4();
          }

          else
          {
            v17 = sub_20C1354B4();
          }
        }

        else if (v16)
        {
          v17 = sub_20C1354E4();
        }

        else
        {
          v17 = sub_20C1354D4();
        }
      }

      else if (v16 <= 5)
      {
        if (v16 == 4)
        {
          v17 = sub_20C1354F4();
        }

        else
        {
          v17 = sub_20C135504();
        }
      }

      else if (v16 == 6)
      {
        v17 = sub_20C135484();
      }

      else if (v16 == 7)
      {
        v17 = sub_20C135514();
      }

      else
      {
        v17 = sub_20C135494();
      }

      v18 = v17;
      v59 = v14 + 1;
      (*v49)(v15, v60);
      v19 = v55;
      v20 = v56;
      (*v48)(v55, v1 + v52, v56);
      v58 = v16;
      v21 = sub_20B80FBD0(v16);
      (*v47)(v19, v20);
      v22 = v21 + 56;
      v23 = 1 << *(v21 + 32);
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v25 = v24 & *(v21 + 56);
      v26 = (v23 + 63) >> 6;
      v62 = v18 + 56;

      v27 = 0;
      v61 = v21;
      if (!v25)
      {
LABEL_29:
        while (1)
        {
          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v28 >= v26)
          {

            v15 = v57;
            v11 = v46;
            v14 = v59;
            goto LABEL_4;
          }

          v25 = *(v22 + 8 * v28);
          ++v27;
          if (v25)
          {
            v27 = v28;
            goto LABEL_33;
          }
        }

        __break(1u);
        goto LABEL_56;
      }

      while (1)
      {
LABEL_33:
        while (1)
        {
          v29 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          sub_20B51D968(*(v21 + 48) + 40 * (v29 | (v27 << 6)), v68);
          sub_20B51D968(v68, v67);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ED30);
          if (swift_dynamicCast())
          {
            break;
          }

          sub_20B51D9C4(v68);
          v64 = 0u;
          v65 = 0u;
          v66 = 0;
          result = sub_20B520158(&v64, &qword_27C76ED38);
          if (!v25)
          {
            goto LABEL_29;
          }
        }

        __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
        v30 = sub_20C1362C4();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1(&v64);
        if (!*(v18 + 16))
        {

          result = sub_20B51D9C4(v68);
          goto LABEL_45;
        }

        sub_20C13E164();
        sub_20C13CA64();
        v33 = sub_20C13E1B4();
        v34 = -1 << *(v18 + 32);
        v35 = v33 & ~v34;
        if ((*(v62 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          break;
        }

LABEL_43:

        result = sub_20B51D9C4(v68);
        v1 = v45;
LABEL_45:
        v21 = v61;
        if (!v25)
        {
          goto LABEL_29;
        }
      }

      v36 = ~v34;
      while (1)
      {
        v37 = (*(v18 + 48) + 16 * v35);
        v38 = *v37 == v30 && v37[1] == v32;
        if (v38 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v62 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      sub_20B51D9C4(v68);

      v39 = v44;
      result = swift_isUniquelyReferenced_nonNull_native();
      v69 = v39;
      if ((result & 1) == 0)
      {
        result = sub_20BB5D94C(0, *(v39 + 16) + 1, 1);
        v39 = v69;
      }

      v1 = v45;
      v11 = v46;
      v15 = v57;
      v14 = v59;
      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_20BB5D94C((v40 > 1), v41 + 1, 1);
        v39 = v69;
      }

      *(v39 + 16) = v41 + 1;
      v44 = v39;
      *(v39 + v41 + 32) = v58;
LABEL_4:
      if (v14 == v54)
      {

        v42 = v44;
        goto LABEL_54;
      }
    }
  }

  v42 = MEMORY[0x277D84F90];
LABEL_54:
  *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories) = v42;
}

uint64_t sub_20BD98AEC()
{
  v1 = sub_20C13C554();
  v75 = *(v1 - 8);
  v76 = v1;
  MEMORY[0x28223BE20](v1);
  v74 = (&v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v73 - v4;
  v6 = sub_20C135C84();
  MEMORY[0x28223BE20](v6);
  v87 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories);
  v11 = *(v10 + 16);
  v12 = v0;
  if (v11)
  {
    v77 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories;
    v88 = v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_trainerProperty;
    v89 = v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_tipCategoryProperty;
    v90 = v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_themeProperty;
    v13 = v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_skillLevelProperty;
    v14 = v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_genreProperty;
    v15 = v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_modalityProperty;
    v16 = v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_durationProperty;
    v17 = v12 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_equipmentProperty;
    v18 = v12 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_bodyFocusProperty;
    v79 = v10;
    v80 = v7;

    v81 = v18;
    swift_beginAccess();
    v82 = v17;
    swift_beginAccess();
    v83 = v16;
    swift_beginAccess();
    v84 = v15;
    swift_beginAccess();
    v85 = v14;
    swift_beginAccess();
    v86 = v13;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v19 = MEMORY[0x277D84F90];
    v20 = v79;
    v21 = (v80 + 48);
    v22 = 32;
    v78 = v6;
    do
    {
      v23 = *(v20 + v22);
      v24 = v89;
      if (v23 != 7)
      {
        v24 = v88;
      }

      if (v23 == 6)
      {
        v24 = v90;
      }

      v25 = v86;
      if (v23 == 4)
      {
        v25 = v85;
      }

      if (*(v20 + v22) <= 5u)
      {
        v24 = v25;
      }

      v26 = v84;
      if (v23 == 2)
      {
        v26 = v83;
      }

      v27 = v82;
      if (!*(v20 + v22))
      {
        v27 = v81;
      }

      if (*(v20 + v22) <= 1u)
      {
        v26 = v27;
      }

      if (*(v20 + v22) <= 3u)
      {
        v28 = v26;
      }

      else
      {
        v28 = v24;
      }

      sub_20B52F9E8(v28, v5, &unk_27C7629B0);
      if ((*v21)(v5, 1, v6) == 1)
      {
        sub_20B520158(v5, &unk_27C7629B0);
      }

      else
      {
        sub_20B7479A0(v5, v87);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_20BC05D14(0, v19[2] + 1, 1, v19);
        }

        v30 = v19[2];
        v29 = v19[3];
        if (v30 >= v29 >> 1)
        {
          v19 = sub_20BC05D14(v29 > 1, v30 + 1, 1, v19);
        }

        v19[2] = v30 + 1;
        sub_20B7479A0(v87, v19 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v30);
        v6 = v78;
        v20 = v79;
      }

      ++v22;
      --v11;
    }

    while (v11);

    v12 = v91;
    v9 = v77;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v31 = v19[2];

  if (v31)
  {
    __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v12 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
    v32 = sub_20C138D34();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = *(v12 + v9);
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    *&v101[0] = MEMORY[0x277D84F90];

    sub_20BB5D8EC(0, v36, 0);
    v38 = 32;
    v39 = *&v101[0];
    do
    {
      v40 = sub_20BD995C8(*(v35 + v38));
      *&v101[0] = v39;
      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        v44 = v40;
        sub_20BB5D8EC((v41 > 1), v42 + 1, 1);
        v40 = v44;
        v39 = *&v101[0];
      }

      v39[2] = v42 + 1;
      v39[v42 + 4] = v40;
      ++v38;
      --v36;
      v43 = v91;
    }

    while (v36);

    v37 = MEMORY[0x277D84F90];
  }

  else
  {
    v43 = v12;
    v39 = MEMORY[0x277D84F90];
  }

  if (!v39[2])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v39 = swift_allocObject();
    *(v39 + 1) = xmmword_20C14F980;
    v45 = swift_allocObject();
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
    v39[4] = v45 | 0x2000000000000005;
  }

  v46 = v43;
  v47 = *(v43 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_title);
  v48 = *(v43 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_title + 8);
  *&v92 = v32;
  *(&v92 + 1) = v34;
  LOBYTE(v93) = 1;
  *(&v93 + 1) = 0;
  *&v94 = 0;
  WORD4(v94) = 128;
  v95 = 0uLL;
  *&v96 = 0xD000000000000011;
  *(&v96 + 1) = 0x800000020C1B2D00;
  *&v97 = v47;
  *(&v97 + 1) = v48;
  LOBYTE(v98) = 0;
  *(&v98 + 1) = v39;
  *&v99[0] = v37;
  *(&v99[1] + 8) = 0u;
  *(v99 + 8) = 0u;
  *(&v99[2] + 1) = 0;
  v100 = 2;
  nullsub_1(&v92);
  v49 = v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row;
  v50 = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 144);
  v101[8] = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 128);
  v101[9] = v50;
  v102 = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 160);
  v51 = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 80);
  v101[4] = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 64);
  v101[5] = v51;
  v52 = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 112);
  v101[6] = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 96);
  v101[7] = v52;
  v53 = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 16);
  v101[0] = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row);
  v101[1] = v53;
  v54 = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 48);
  v101[2] = *(v46 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 32);
  v101[3] = v54;
  v55 = v99[2];
  *(v49 + 128) = v99[1];
  *(v49 + 144) = v55;
  *(v49 + 160) = v100;
  v56 = v97;
  *(v49 + 64) = v96;
  *(v49 + 80) = v56;
  v57 = v99[0];
  *(v49 + 96) = v98;
  *(v49 + 112) = v57;
  v58 = v93;
  *v49 = v92;
  *(v49 + 16) = v58;
  v59 = v95;
  *(v49 + 32) = v94;
  *(v49 + 48) = v59;

  sub_20B520158(v101, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v61 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v62 = sub_20B61DEC8(v46, result);
      if (v63)
      {
        v65 = v62;
        v66 = v63;
        v67 = v64;
        sub_20B5E2E18();
        v68 = sub_20C13D374();
        v70 = v74;
        v69 = v75;
        *v74 = v68;
        v71 = v76;
        (*(v69 + 104))(v70, *MEMORY[0x277D85200], v76);
        v72 = sub_20C13C584();
        result = (*(v69 + 8))(v70, v71);
        if ((v72 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B62170C(v65, v66, v67, v46, 1, v61);
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

uint64_t sub_20BD9933C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C135524();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filter;
  swift_beginAccess();
  v11 = sub_20C133E24();
  (*(*(v11 - 8) + 24))(v3 + v10, a1, v11);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterResult;
  swift_beginAccess();
  v13 = *(v7 + 24);
  v13(v3 + v12, a2, v6);
  swift_endAccess();
  v14 = *(sub_20C133E04() + 16);

  if (!v14)
  {
    sub_20C1354C4();
    v15 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_initialFilterResult;
    swift_beginAccess();
    (*(v7 + 40))(v3 + v15, v9, v6);
    swift_endAccess();
  }

  v16 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_initialFilterResult;
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v16, v6);
  v17 = sub_20BB110D4();
  result = (*(v7 + 8))(v9, v6);
  if (v17)
  {
    swift_beginAccess();
    v13(v3 + v16, a2, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_20BD995C8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_20C134734();
  v152 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v144 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v144 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v144 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v22 - 8);
  v153 = &v144 - v23;
  v154 = sub_20C135914();
  MEMORY[0x28223BE20](v154);
  v25 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v79 = (v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer);
        v80 = &v144 - v27;
        v81 = v28;
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
        v82 = sub_20C138D34();
        v35 = v83;
        v84 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
        swift_beginAccess();
        v85 = v154;
        (*(v81 + 16))(v80, v2 + v84, v154);
        v86 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_themeProperty;
        swift_beginAccess();
        v87 = v2 + v86;
        v88 = v153;
        sub_20B52F9E8(v87, v153, &unk_27C7629B0);
        v89 = sub_20C135654();
        (*(*(v89 - 8) + 56))(v21, 1, 1, v89);
        v152 = v82;
        v42 = sub_20BD9AC94(v88, v79, v82, v35, v21);
        sub_20B520158(v21, &qword_27C762AE0);
        sub_20B520158(v88, &unk_27C7629B0);
        (*(v81 + 8))(v80, v85);
        if ((~v42 & 0xF000000000000007) != 0)
        {
          goto LABEL_30;
        }

        v43 = swift_allocObject();
        __swift_project_boxed_opaque_existential_1(v79, v79[3]);
LABEL_27:
        v44 = sub_20C138D34();
        goto LABEL_28;
      }

      v30 = &v144 - v27;
      v31 = v28;
      if (v29 == 7)
      {
        v32 = (v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
        v33 = sub_20B5E0F54();
        v35 = v34;
        v36 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
        swift_beginAccess();
        v37 = v154;
        (*(v31 + 16))(v30, v2 + v36, v154);
        v38 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_tipCategoryProperty;
        swift_beginAccess();
        v39 = v2 + v38;
        v40 = v153;
        sub_20B52F9E8(v39, v153, &unk_27C7629B0);
        v41 = sub_20C135654();
        (*(*(v41 - 8) + 56))(v21, 1, 1, v41);
        v152 = v33;
        v42 = sub_20BD9AC94(v40, v32, v33, v35, v21);
        sub_20B520158(v21, &qword_27C762AE0);
        sub_20B520158(v40, &unk_27C7629B0);
        (*(v31 + 8))(v30, v37);
        if ((~v42 & 0xF000000000000007) == 0)
        {
          v43 = swift_allocObject();
          __swift_project_boxed_opaque_existential_1(v32, v32[3]);
          v44 = sub_20B5E0F54();
LABEL_28:
          *(v43 + 16) = v44;
          *(v43 + 24) = v45;
          *(v43 + 32) = v152;
          *(v43 + 40) = v35;
          return v43 | 0x2000000000000005;
        }

LABEL_30:

        return v42;
      }

      v48 = (v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
      v108 = sub_20C138D34();
      v35 = v109;
      v110 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
      swift_beginAccess();
      v111 = v154;
      (*(v31 + 16))(v30, v2 + v110, v154);
      v112 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_trainerProperty;
      swift_beginAccess();
      v113 = v2 + v112;
      v114 = v153;
      sub_20B52F9E8(v113, v153, &unk_27C7629B0);
      v115 = sub_20C135654();
      (*(*(v115 - 8) + 56))(v21, 1, 1, v115);
      v152 = v108;
      v42 = sub_20BD9AC94(v114, v48, v108, v35, v21);
      sub_20B520158(v21, &qword_27C762AE0);
      sub_20B520158(v114, &unk_27C7629B0);
      (*(v31 + 8))(v30, v111);
      if ((~v42 & 0xF000000000000007) != 0)
      {
        goto LABEL_30;
      }

LABEL_26:
      v43 = swift_allocObject();
      __swift_project_boxed_opaque_existential_1(v48, v48[3]);
      goto LABEL_27;
    }

    v150 = &v144 - v27;
    v151 = v28;
    if (a1 == 4)
    {
      v48 = (v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
      v69 = sub_20C138D34();
      v35 = v70;
      v71 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
      swift_beginAccess();
      v72 = v150;
      v73 = v151;
      v74 = v154;
      (*(v151 + 16))(v150, v2 + v71, v154);
      v75 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_genreProperty;
      swift_beginAccess();
      v76 = v2 + v75;
      v77 = v153;
      sub_20B52F9E8(v76, v153, &unk_27C7629B0);
      v78 = sub_20C135654();
      (*(*(v78 - 8) + 56))(v21, 1, 1, v78);
      v152 = v69;
      v42 = sub_20BD9AC94(v77, v48, v69, v35, v21);
      sub_20B520158(v21, &qword_27C762AE0);
      sub_20B520158(v77, &unk_27C7629B0);
      (*(v73 + 8))(v72, v74);
      if ((~v42 & 0xF000000000000007) != 0)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    v117 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootModality;
    swift_beginAccess();
    sub_20B52F9E8(v2 + v117, v12, &unk_27C7710A0);
    v118 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
    swift_beginAccess();
    v119 = *(v151 + 16);
    v148 = v151 + 16;
    v149 = v118;
    v120 = v2 + v118;
    v121 = v154;
    v147 = v119;
    v119(v25, v120, v154);
    sub_20B52F9E8(v12, v9, &unk_27C7710A0);
    v122 = v152;
    if ((*(v152 + 48))(v9, 1, v4) == 1)
    {
      v146 = *(v151 + 8);
      (v146)(v25, v121);
      sub_20B520158(v12, &unk_27C7710A0);
      sub_20B520158(v9, &unk_27C7710A0);
      v123 = sub_20C135654();
      (*(*(v123 - 8) + 56))(v18, 1, 1, v123);
    }

    else
    {
      (*(v122 + 32))(v6, v9, v4);
      v124 = v122;
      v125 = sub_20C1358D4();
      v146 = &v144;
      MEMORY[0x28223BE20](v125);
      *(&v144 - 2) = v6;
      sub_20B6B7110(sub_20BDA25D8, v125, v18);

      v146 = *(v151 + 8);
      (v146)(v25, v154);
      sub_20B520158(v12, &unk_27C7710A0);
      (*(v124 + 8))(v6, v4);
    }

    v126 = sub_20BD9D20C(v18);
    v128 = v127;
    sub_20B52F9E8(v18, v15, &qword_27C762AE0);
    v129 = sub_20C135654();
    v130 = *(v129 - 8);
    v131 = (*(v130 + 48))(v15, 1, v129);
    v152 = v128;
    v145 = v126;
    if (v131 == 1)
    {
      sub_20B520158(v15, &qword_27C762AE0);
      v132 = v149;
      v133 = v147;
    }

    else
    {
      v134 = sub_20C135644();
      v136 = v135;
      (*(v130 + 8))(v15, v129);
      v132 = v149;
      v133 = v147;
      if (v136)
      {
LABEL_39:
        v138 = v150;
        v139 = v154;
        v133(v150, v2 + v132, v154);
        v140 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_skillLevelProperty;
        swift_beginAccess();
        v141 = v153;
        sub_20B52F9E8(v2 + v140, v153, &unk_27C7629B0);
        v42 = sub_20BD9AC94(v141, (v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), v134, v136, v18);
        sub_20B520158(v141, &unk_27C7629B0);
        (v146)(v138, v139);
        sub_20B520158(v18, &qword_27C762AE0);
        if ((~v42 & 0xF000000000000007) == 0)
        {
          v142 = swift_allocObject();
          v143 = v152;
          *(v142 + 16) = v145;
          *(v142 + 24) = v143;
          *(v142 + 32) = v134;
          *(v142 + 40) = v136;
          return v142 | 0x2000000000000005;
        }

        goto LABEL_30;
      }
    }

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
    v134 = sub_20C138D34();
    v136 = v137;

    goto LABEL_39;
  }

  if (a1 <= 1u)
  {
    v46 = &v144 - v27;
    v47 = v28;
    if (v29)
    {
      v48 = (v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
      v90 = sub_20C138D34();
      v35 = v91;
      v92 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
      swift_beginAccess();
      v93 = v154;
      (*(v47 + 16))(v46, v2 + v92, v154);
      v94 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_equipmentProperty;
      swift_beginAccess();
      v95 = v2 + v94;
      v96 = v153;
      sub_20B52F9E8(v95, v153, &unk_27C7629B0);
      v97 = sub_20C135654();
      (*(*(v97 - 8) + 56))(v21, 1, 1, v97);
      v152 = v90;
      v42 = sub_20BD9AC94(v96, v48, v90, v35, v21);
      sub_20B520158(v21, &qword_27C762AE0);
      sub_20B520158(v96, &unk_27C7629B0);
      (*(v47 + 8))(v46, v93);
      if ((~v42 & 0xF000000000000007) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v48 = (v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
      v49 = sub_20C138D34();
      v35 = v50;
      v51 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
      swift_beginAccess();
      v52 = v154;
      (*(v47 + 16))(v46, v2 + v51, v154);
      v53 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_bodyFocusProperty;
      swift_beginAccess();
      v54 = v2 + v53;
      v55 = v153;
      sub_20B52F9E8(v54, v153, &unk_27C7629B0);
      v56 = sub_20C135654();
      (*(*(v56 - 8) + 56))(v21, 1, 1, v56);
      v152 = v49;
      v42 = sub_20BD9AC94(v55, v48, v49, v35, v21);
      sub_20B520158(v21, &qword_27C762AE0);
      sub_20B520158(v55, &unk_27C7629B0);
      (*(v47 + 8))(v46, v52);
      if ((~v42 & 0xF000000000000007) != 0)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_26;
  }

  v57 = &v144 - v27;
  v58 = v28;
  if (a1 == 2)
  {
    v59 = (v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
    v60 = sub_20C138D34();
    v62 = v61;
    v63 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
    swift_beginAccess();
    v64 = v154;
    (*(v58 + 16))(v57, v2 + v63, v154);
    v65 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_durationProperty;
    swift_beginAccess();
    v66 = v2 + v65;
    v67 = v153;
    sub_20B52F9E8(v66, v153, &unk_27C7629B0);
    v68 = sub_20C135654();
    (*(*(v68 - 8) + 56))(v21, 1, 1, v68);
    v152 = v60;
    v42 = sub_20BD9AC94(v67, v59, v60, v62, v21);
    sub_20B520158(v21, &qword_27C762AE0);
    sub_20B520158(v67, &unk_27C7629B0);
    (*(v58 + 8))(v57, v64);
    if ((~v42 & 0xF000000000000007) != 0)
    {
      goto LABEL_30;
    }

    v43 = swift_allocObject();
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  }

  else
  {
    v98 = (v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
    v99 = sub_20C138D34();
    v62 = v100;
    v101 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
    swift_beginAccess();
    v102 = v154;
    (*(v58 + 16))(v57, v2 + v101, v154);
    v103 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_modalityProperty;
    swift_beginAccess();
    v104 = v2 + v103;
    v105 = v153;
    sub_20B52F9E8(v104, v153, &unk_27C7629B0);
    v106 = sub_20C135654();
    (*(*(v106 - 8) + 56))(v21, 1, 1, v106);
    v152 = v99;
    v42 = sub_20BD9AC94(v105, v98, v99, v62, v21);
    sub_20B520158(v21, &qword_27C762AE0);
    sub_20B520158(v105, &unk_27C7629B0);
    (*(v58 + 8))(v57, v102);
    if ((~v42 & 0xF000000000000007) != 0)
    {
      goto LABEL_30;
    }

    v43 = swift_allocObject();
    __swift_project_boxed_opaque_existential_1(v98, v98[3]);
  }

  *(v43 + 16) = sub_20C138D34();
  *(v43 + 24) = v107;
  *(v43 + 32) = v152;
  *(v43 + 40) = v62;
  return v43 | 0x2000000000000005;
}

uint64_t sub_20BD9AC94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v285 = a5;
  v314 = a3;
  v315 = a4;
  v287 = a2;
  v332 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78);
  MEMORY[0x28223BE20](v5 - 8);
  v295 = &v277 - v6;
  v313 = sub_20C134E04();
  v323 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v330 = &v277 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v305 = &v277 - v9;
  MEMORY[0x28223BE20](v10);
  v284 = &v277 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0);
  MEMORY[0x28223BE20](v12 - 8);
  v294 = &v277 - v13;
  v312 = sub_20C1370C4();
  v322 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v329 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v304 = &v277 - v16;
  MEMORY[0x28223BE20](v17);
  v283 = &v277 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v19 - 8);
  v293 = &v277 - v20;
  v311 = sub_20C133A74();
  v321 = *(v311 - 8);
  MEMORY[0x28223BE20](v311);
  v328 = &v277 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v303 = &v277 - v23;
  MEMORY[0x28223BE20](v24);
  v282 = &v277 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v26 - 8);
  v292 = &v277 - v27;
  v307 = sub_20C1334D4();
  v320 = *(v307 - 8);
  MEMORY[0x28223BE20](v307);
  v327 = &v277 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v302 = &v277 - v30;
  MEMORY[0x28223BE20](v31);
  v281 = &v277 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0);
  MEMORY[0x28223BE20](v33 - 8);
  v291 = &v277 - v34;
  v310 = sub_20C1333E4();
  v319 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v326 = &v277 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v301 = &v277 - v37;
  MEMORY[0x28223BE20](v38);
  v280 = &v277 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v40 - 8);
  v290 = &v277 - v41;
  v309 = sub_20C1365F4();
  v318 = *(v309 - 8);
  MEMORY[0x28223BE20](v309);
  v325 = &v277 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v300 = &v277 - v44;
  MEMORY[0x28223BE20](v45);
  v279 = &v277 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v47 - 8);
  v296 = &v277 - v48;
  v299 = sub_20C1341A4();
  v298 = *(v299 - 8);
  MEMORY[0x28223BE20](v299);
  v286 = &v277 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v297 = &v277 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v52 - 8);
  v289 = &v277 - v53;
  v308 = sub_20C1382B4();
  v317 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v324 = &v277 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v57 = &v277 - v56;
  MEMORY[0x28223BE20](v58);
  v278 = &v277 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v60 - 8);
  v288 = &v277 - v61;
  v306 = sub_20C138244();
  v316 = *(v306 - 8);
  MEMORY[0x28223BE20](v306);
  v63 = &v277 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v66 = &v277 - v65;
  MEMORY[0x28223BE20](v67);
  v277 = &v277 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v69 - 8);
  v71 = &v277 - v70;
  v72 = sub_20C135C84();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v75 = (&v277 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v76);
  v78 = &v277 - v77;
  sub_20B52F9E8(v332, v71, &unk_27C7629B0);
  if ((*(v73 + 48))(v71, 1, v72) == 1)
  {
    v79 = &unk_27C7629B0;
    v80 = v71;
LABEL_3:
    sub_20B520158(v80, v79);
    return 0xF000000000000007;
  }

  else
  {
    sub_20B7479A0(v71, v78);
    sub_20B747A04(v78, v75);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v83 = v78;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v332 = v78;
        v102 = *v75;
        v329 = v75[1];
        v330 = v102;
        v103 = sub_20C135894();
        v104 = v103;
        v105 = v103 + 56;
        v106 = 1 << *(v103 + 32);
        v107 = -1;
        if (v106 < 64)
        {
          v107 = ~(-1 << v106);
        }

        v108 = v107 & *(v103 + 56);
        v109 = (v106 + 63) >> 6;
        v331 = (v316 + 32);
        v327 = (v316 + 16);
        v328 = (v316 + 8);

        v110 = 0;
        v111 = v306;
        if (v108)
        {
          goto LABEL_22;
        }

        while (1)
        {
LABEL_23:
          v112 = v110 + 1;
          if (__OFADD__(v110, 1))
          {
            goto LABEL_174;
          }

          if (v112 >= v109)
          {
            break;
          }

          v108 = *(v105 + 8 * v112);
          ++v110;
          if (v108)
          {
            while (1)
            {
              v113 = v104;
              v114 = v316;
              (*(v316 + 16))(v66, *(v104 + 48) + *(v316 + 72) * (__clz(__rbit64(v108)) | (v112 << 6)), v111);
              v115 = *(v114 + 32);
              v115(v63, v66, v111);
              if (sub_20C138224() == v330 && v116 == v329)
              {

                goto LABEL_134;
              }

              v117 = sub_20C13DFF4();

              if (v117)
              {
                break;
              }

              v108 &= v108 - 1;
              v111 = v306;
              result = (*v328)(v63, v306);
              v110 = v112;
              v104 = v113;
              if (!v108)
              {
                goto LABEL_23;
              }

LABEL_22:
              v112 = v110;
            }

            v111 = v306;
LABEL_134:

            v230 = v288;
            v115(v288, v63, v111);
            v228 = 0;
            v229 = v332;
            goto LABEL_135;
          }
        }

        v228 = 1;
        v229 = v332;
        v230 = v288;
LABEL_135:
        v258 = v316;
        (*(v316 + 56))(v230, v228, 1, v111);

        if ((*(v258 + 48))(v230, 1, v111) == 1)
        {
          sub_20BDA2108(v229, MEMORY[0x277D52060]);
          v79 = &qword_27C762710;
          v80 = v230;
          goto LABEL_3;
        }

        v259 = v277;
        (*v331)(v277, v230, v111);
        v254 = swift_allocObject();
        v260 = sub_20C138234();
        v262 = v261;
        (*v328)(v259, v111);
        sub_20BDA2108(v229, MEMORY[0x277D52060]);
        *(v254 + 16) = v260;
        *(v254 + 24) = v262;
        goto LABEL_172;
      case 3:
        v332 = v78;
        v168 = *v75;
        v330 = v75[1];
        v169 = sub_20C135904();
        v170 = v169;
        v171 = v169 + 56;
        v172 = 1 << *(v169 + 32);
        v173 = -1;
        if (v172 < 64)
        {
          v173 = ~(-1 << v172);
        }

        v174 = v173 & *(v169 + 56);
        v175 = (v172 + 63) >> 6;
        v331 = (v317 + 32);
        v328 = (v317 + 16);
        v329 = (v317 + 8);

        v176 = 0;
        v177 = v308;
        if (v174)
        {
          goto LABEL_70;
        }

        while (1)
        {
LABEL_71:
          v178 = v176 + 1;
          if (__OFADD__(v176, 1))
          {
            goto LABEL_178;
          }

          if (v178 >= v175)
          {
            break;
          }

          v174 = *(v171 + 8 * v178);
          ++v176;
          if (v174)
          {
            while (1)
            {
              v179 = v170;
              v180 = *(v170 + 48);
              v181 = v317;
              (*(v317 + 16))(v57, v180 + *(v317 + 72) * (__clz(__rbit64(v174)) | (v178 << 6)), v177);
              v182 = *(v181 + 32);
              v182(v324, v57, v177);
              if (sub_20C138294() == v168 && v183 == v330)
              {

                goto LABEL_154;
              }

              v184 = sub_20C13DFF4();

              if (v184)
              {
                break;
              }

              v174 &= v174 - 1;
              v177 = v308;
              result = (*v329)(v324, v308);
              v176 = v178;
              v170 = v179;
              if (!v174)
              {
                goto LABEL_71;
              }

LABEL_70:
              v178 = v176;
            }

LABEL_154:

            v238 = v289;
            v177 = v308;
            v182(v289, v324, v308);
            v237 = 0;
            v226 = v332;
            goto LABEL_155;
          }
        }

        v237 = 1;
        v226 = v332;
        v238 = v289;
LABEL_155:
        v272 = v317;
        (*(v317 + 56))(v238, v237, 1, v177);

        if ((*(v272 + 48))(v238, 1, v177) == 1)
        {
          sub_20BDA2108(v226, MEMORY[0x277D52060]);
          v79 = &qword_27C7627E8;
          v80 = v238;
          goto LABEL_3;
        }

        v253 = v278;
        (*v331)(v278, v238, v177);
        v254 = swift_allocObject();
        v255 = v177;
        v264 = sub_20C1382A4();
        goto LABEL_158;
      case 4:
        v332 = v78;
        v186 = *v75;
        v185 = v75[1];
        v187 = sub_20C135874();
        v188 = v187;
        v189 = v187 + 56;
        v190 = 1 << *(v187 + 32);
        v191 = -1;
        if (v190 < 64)
        {
          v191 = ~(-1 << v190);
        }

        v192 = v191 & *(v187 + 56);
        v193 = (v190 + 63) >> 6;
        v328 = (v318 + 16);
        v330 = (v318 + 8);
        v331 = (v318 + 32);

        v194 = 0;
        v195 = v309;
        v329 = v185;
        if (v192)
        {
          goto LABEL_82;
        }

        while (1)
        {
LABEL_83:
          v196 = v194 + 1;
          if (__OFADD__(v194, 1))
          {
            goto LABEL_179;
          }

          if (v196 >= v193)
          {
            break;
          }

          v192 = *(v189 + 8 * v196);
          ++v194;
          if (v192)
          {
            while (1)
            {
              v197 = v318;
              v198 = v300;
              (*(v318 + 16))(v300, *(v188 + 48) + *(v318 + 72) * (__clz(__rbit64(v192)) | (v196 << 6)), v195);
              v199 = *(v197 + 32);
              v199(v325, v198, v195);
              if (sub_20C1365A4() == v186 && v200 == v329)
              {

                goto LABEL_160;
              }

              v201 = sub_20C13DFF4();

              if (v201)
              {
                break;
              }

              v192 &= v192 - 1;
              v195 = v309;
              result = (*v330)(v325, v309);
              v194 = v196;
              if (!v192)
              {
                goto LABEL_83;
              }

LABEL_82:
              v196 = v194;
            }

LABEL_160:

            v240 = v290;
            v195 = v309;
            v199(v290, v325, v309);
            v239 = 0;
            v226 = v332;
            goto LABEL_161;
          }
        }

        v239 = 1;
        v226 = v332;
        v240 = v290;
LABEL_161:
        v274 = v318;
        (*(v318 + 56))(v240, v239, 1, v195);

        if ((*(v274 + 48))(v240, 1, v195) == 1)
        {
          sub_20BDA2108(v226, MEMORY[0x277D52060]);
          v79 = &qword_27C771090;
          v80 = v240;
          goto LABEL_3;
        }

        v253 = v279;
        (*v331)(v279, v240, v195);
        v254 = swift_allocObject();
        v255 = v195;
        v256 = sub_20C1365E4();
        goto LABEL_169;
      case 5:
        v332 = v78;
        v152 = *v75;
        v151 = v75[1];
        v153 = sub_20C1358A4();
        v154 = v153;
        v155 = v153 + 56;
        v156 = 1 << *(v153 + 32);
        v157 = -1;
        if (v156 < 64)
        {
          v157 = ~(-1 << v156);
        }

        v158 = v157 & *(v153 + 56);
        v159 = (v156 + 63) >> 6;
        v328 = (v319 + 16);
        v330 = (v319 + 8);
        v331 = (v319 + 32);

        v160 = 0;
        v161 = v310;
        v329 = v151;
        if (v158)
        {
          goto LABEL_58;
        }

        while (1)
        {
LABEL_59:
          v162 = v160 + 1;
          if (__OFADD__(v160, 1))
          {
            goto LABEL_177;
          }

          if (v162 >= v159)
          {
            break;
          }

          v158 = *(v155 + 8 * v162);
          ++v160;
          if (v158)
          {
            while (1)
            {
              v163 = v319;
              v164 = v301;
              (*(v319 + 16))(v301, *(v154 + 48) + *(v319 + 72) * (__clz(__rbit64(v158)) | (v162 << 6)), v161);
              v165 = *(v163 + 32);
              v165(v326, v164, v161);
              if (sub_20C1333B4() == v152 && v166 == v329)
              {

                goto LABEL_149;
              }

              v167 = sub_20C13DFF4();

              if (v167)
              {
                break;
              }

              v158 &= v158 - 1;
              v161 = v310;
              result = (*v330)(v326, v310);
              v160 = v162;
              if (!v158)
              {
                goto LABEL_59;
              }

LABEL_58:
              v162 = v160;
            }

LABEL_149:

            v236 = v291;
            v161 = v310;
            v165(v291, v326, v310);
            v235 = 0;
            v226 = v332;
            goto LABEL_150;
          }
        }

        v235 = 1;
        v226 = v332;
        v236 = v291;
LABEL_150:
        v271 = v319;
        (*(v319 + 56))(v236, v235, 1, v161);

        if ((*(v271 + 48))(v236, 1, v161) == 1)
        {
          sub_20BDA2108(v226, MEMORY[0x277D52060]);
          v79 = &qword_27C764AA0;
          v80 = v236;
          goto LABEL_3;
        }

        v253 = v280;
        (*v331)(v280, v236, v161);
        v254 = swift_allocObject();
        v255 = v161;
        v256 = sub_20C1333D4();
        goto LABEL_169;
      case 6:
        v217 = v78;
        v218 = v298;
        v219 = *(v298 + 32);
        v220 = v297;
        v221 = v299;
        v219(v297, v75, v299);
        v222 = sub_20C1358F4();
        MEMORY[0x28223BE20](v222);
        *(&v277 - 2) = v220;
        v223 = v296;
        sub_20B6B74A0(sub_20BDA2564, v222, v296);
        v224 = v223;

        if ((*(v218 + 48))(v223, 1, v221) == 1)
        {
          sub_20BDA2108(v217, MEMORY[0x277D52060]);
          sub_20B520158(v223, &qword_27C7627B8);
          (*(v218 + 8))(v220, v221);
          return 0xF000000000000007;
        }

        v243 = v286;
        v219(v286, v224, v221);
        __swift_project_boxed_opaque_existential_1(v287, v287[3]);
        sub_20C134194();
        v244 = sub_20C138CD4();
        if (v245)
        {
          v246 = v244;
        }

        else
        {
          v246 = 0;
        }

        if (v245)
        {
          v247 = v245;
        }

        else
        {
          v247 = 0xE000000000000000;
        }

        v248 = *(v218 + 8);
        v248(v243, v221);
        sub_20BDA2108(v217, MEMORY[0x277D52060]);
        v249 = swift_allocObject();
        *(v249 + 16) = v246;
        *(v249 + 24) = v247;
        v250 = v315;
        *(v249 + 32) = v314;
        *(v249 + 40) = v250;
        v251 = v249 | 0x2000000000000005;

        v248(v220, v221);
        return v251;
      case 7:
        v332 = v78;
        v135 = *v75;
        v330 = v75[1];
        v136 = sub_20C1358B4();
        v137 = v136;
        v138 = v136 + 56;
        v139 = 1 << *(v136 + 32);
        v140 = -1;
        if (v139 < 64)
        {
          v140 = ~(-1 << v139);
        }

        v141 = v140 & *(v136 + 56);
        v142 = (v139 + 63) >> 6;
        v326 = (v320 + 16);
        v328 = (v320 + 8);
        v329 = (v320 + 32);

        v143 = 0;
        v144 = v307;
        if (v141)
        {
          goto LABEL_46;
        }

        while (1)
        {
LABEL_47:
          v145 = v143 + 1;
          if (__OFADD__(v143, 1))
          {
            goto LABEL_176;
          }

          if (v145 >= v142)
          {
            break;
          }

          v141 = *(v138 + 8 * v145);
          ++v143;
          if (v141)
          {
            while (1)
            {
              v146 = v320;
              v147 = v302;
              (*(v320 + 16))(v302, *(v137 + 48) + *(v320 + 72) * (__clz(__rbit64(v141)) | (v145 << 6)), v144);
              v148 = *(v146 + 32);
              v148(v327, v147, v144);
              if (sub_20C1334A4() == v135 && v149 == v330)
              {

                goto LABEL_144;
              }

              v150 = sub_20C13DFF4();

              if (v150)
              {
                break;
              }

              v141 &= v141 - 1;
              v144 = v307;
              result = (*v328)(v327, v307);
              v143 = v145;
              if (!v141)
              {
                goto LABEL_47;
              }

LABEL_46:
              v145 = v143;
            }

            v144 = v307;
LABEL_144:

            v234 = v292;
            v148(v292, v327, v144);
            v233 = 0;
            v226 = v332;
            goto LABEL_145;
          }
        }

        v233 = 1;
        v226 = v332;
        v234 = v292;
LABEL_145:
        v266 = v320;
        (*(v320 + 56))(v234, v233, 1, v144);

        if ((*(v266 + 48))(v234, 1, v144) == 1)
        {
          sub_20BDA2108(v226, MEMORY[0x277D52060]);
          v79 = &qword_27C762758;
          v80 = v234;
          goto LABEL_3;
        }

        v267 = v281;
        (*v329)(v281, v234, v144);
        v254 = swift_allocObject();
        v268 = sub_20BDA1F60(v267, v285);
        v270 = v269;
        (*v328)(v267, v144);
        goto LABEL_171;
      case 8:
        v332 = v78;
        v203 = *v75;
        v202 = v75[1];
        sub_20C135864();
        v204 = sub_20C13CFB4();

        v205 = 1 << *(v204 + 32);
        v206 = -1;
        if (v205 < 64)
        {
          v206 = ~(-1 << v205);
        }

        v207 = v206 & *(v204 + 56);
        v208 = (v205 + 63) >> 6;
        v327 = (v321 + 16);
        v330 = (v321 + 8);
        v331 = (v321 + 32);

        v209 = 0;
        v210 = v311;
        v329 = v202;
        if (v207)
        {
          goto LABEL_94;
        }

        while (1)
        {
LABEL_95:
          v211 = v209 + 1;
          if (__OFADD__(v209, 1))
          {
            goto LABEL_180;
          }

          if (v211 >= v208)
          {
            break;
          }

          v207 = *(v204 + 56 + 8 * v211);
          ++v209;
          if (v207)
          {
            while (1)
            {
              v212 = v321;
              v213 = v303;
              (*(v321 + 16))(v303, *(v204 + 48) + *(v321 + 72) * (__clz(__rbit64(v207)) | (v211 << 6)), v210);
              v214 = *(v212 + 32);
              v214(v328, v213, v210);
              if (sub_20C133A34() == v203 && v215 == v329)
              {

                goto LABEL_165;
              }

              v216 = sub_20C13DFF4();

              if (v216)
              {
                break;
              }

              v207 &= v207 - 1;
              v210 = v311;
              result = (*v330)(v328, v311);
              v209 = v211;
              if (!v207)
              {
                goto LABEL_95;
              }

LABEL_94:
              v211 = v209;
            }

LABEL_165:

            v242 = v293;
            v210 = v311;
            v214(v293, v328, v311);
            v241 = 0;
            v226 = v332;
            goto LABEL_166;
          }
        }

        v241 = 1;
        v226 = v332;
        v242 = v293;
LABEL_166:
        v275 = v321;
        (*(v321 + 56))(v242, v241, 1, v210);

        if ((*(v275 + 48))(v242, 1, v210) == 1)
        {
          sub_20BDA2108(v226, MEMORY[0x277D52060]);
          v79 = &unk_27C767600;
          v80 = v242;
          goto LABEL_3;
        }

        v253 = v282;
        (*v331)(v282, v242, v210);
        v254 = swift_allocObject();
        v255 = v210;
        v256 = sub_20C133A54();
        goto LABEL_169;
      case 9:
        v332 = v78;
        v86 = *v75;
        v85 = v75[1];
        v87 = sub_20C1358C4();
        v88 = v87;
        v89 = v87 + 56;
        v90 = 1 << *(v87 + 32);
        v91 = -1;
        if (v90 < 64)
        {
          v91 = ~(-1 << v90);
        }

        v92 = v91 & *(v87 + 56);
        v93 = (v90 + 63) >> 6;
        v327 = (v322 + 16);
        v330 = (v322 + 8);
        v331 = (v322 + 32);

        v94 = 0;
        v95 = v312;
        v328 = v85;
        if (v92)
        {
          goto LABEL_10;
        }

        do
        {
LABEL_11:
          v96 = v94 + 1;
          if (__OFADD__(v94, 1))
          {
            __break(1u);
LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          if (v96 >= v93)
          {

            v225 = 1;
            v226 = v332;
            v227 = v294;
            goto LABEL_130;
          }

          v92 = *(v89 + 8 * v96);
          ++v94;
        }

        while (!v92);
        while (1)
        {
          v97 = v322;
          v98 = v304;
          (*(v322 + 16))(v304, *(v88 + 48) + *(v322 + 72) * (__clz(__rbit64(v92)) | (v96 << 6)), v95);
          v99 = *(v97 + 32);
          v99(v329, v98, v95);
          if (sub_20C1370A4() == v86 && v100 == v328)
          {

            goto LABEL_129;
          }

          v101 = sub_20C13DFF4();

          if (v101)
          {
            break;
          }

          v92 &= v92 - 1;
          v95 = v312;
          result = (*v330)(v329, v312);
          v94 = v96;
          if (!v92)
          {
            goto LABEL_11;
          }

LABEL_10:
          v96 = v94;
        }

LABEL_129:

        v227 = v294;
        v95 = v312;
        v99(v294, v329, v312);
        v225 = 0;
        v226 = v332;
LABEL_130:
        v252 = v322;
        (*(v322 + 56))(v227, v225, 1, v95);

        if ((*(v252 + 48))(v227, 1, v95) == 1)
        {
          sub_20BDA2108(v226, MEMORY[0x277D52060]);
          v79 = &qword_27C764AE0;
          v80 = v227;
          goto LABEL_3;
        }

        v253 = v283;
        (*v331)(v283, v227, v95);
        v254 = swift_allocObject();
        v255 = v95;
        v256 = sub_20C1370B4();
LABEL_169:
        v268 = v256;
        v270 = v257;
        v273 = v330;
        goto LABEL_170;
      case 10:
        v332 = v78;
        v119 = *v75;
        v118 = v75[1];
        v120 = sub_20C1358E4();
        v121 = v120;
        v122 = v120 + 56;
        v123 = 1 << *(v120 + 32);
        v124 = -1;
        if (v123 < 64)
        {
          v124 = ~(-1 << v123);
        }

        v125 = v124 & *(v120 + 56);
        v126 = (v123 + 63) >> 6;
        v327 = (v323 + 16);
        v331 = (v323 + 32);
        v329 = (v323 + 8);

        v127 = 0;
        v128 = v313;
        v328 = v118;
        if (v125)
        {
          goto LABEL_34;
        }

        break;
      default:
        v84 = MEMORY[0x277D52060];
        sub_20BDA2108(v83, MEMORY[0x277D52060]);
        sub_20BDA2108(v75, v84);
        return 0xF000000000000007;
    }

    do
    {
LABEL_35:
      v129 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
        return result;
      }

      if (v129 >= v126)
      {

        v231 = 1;
        v226 = v332;
        v232 = v295;
        goto LABEL_140;
      }

      v125 = *(v122 + 8 * v129);
      ++v127;
    }

    while (!v125);
    while (1)
    {
      v130 = v323;
      v131 = v305;
      (*(v323 + 16))(v305, *(v121 + 48) + *(v323 + 72) * (__clz(__rbit64(v125)) | (v129 << 6)), v128);
      v132 = *(v130 + 32);
      v132(v330, v131, v128);
      if (sub_20C134DD4() == v119 && v133 == v328)
      {

        goto LABEL_139;
      }

      v134 = sub_20C13DFF4();

      if (v134)
      {
        break;
      }

      v125 &= v125 - 1;
      v128 = v313;
      result = (*v329)(v330, v313);
      v127 = v129;
      if (!v125)
      {
        goto LABEL_35;
      }

LABEL_34:
      v129 = v127;
    }

LABEL_139:

    v232 = v295;
    v128 = v313;
    v132(v295, v330, v313);
    v231 = 0;
    v226 = v332;
LABEL_140:
    v263 = v323;
    (*(v323 + 56))(v232, v231, 1, v128);

    if ((*(v263 + 48))(v232, 1, v128) == 1)
    {
      sub_20BDA2108(v226, MEMORY[0x277D52060]);
      v79 = &qword_27C764A78;
      v80 = v232;
      goto LABEL_3;
    }

    v253 = v284;
    (*v331)(v284, v232, v128);
    v254 = swift_allocObject();
    v255 = v128;
    v264 = sub_20C134DF4();
LABEL_158:
    v268 = v264;
    v270 = v265;
    v273 = v329;
LABEL_170:
    (*v273)(v253, v255);
LABEL_171:
    sub_20BDA2108(v226, MEMORY[0x277D52060]);
    *(v254 + 16) = v268;
    *(v254 + 24) = v270;
LABEL_172:
    v276 = v315;
    *(v254 + 32) = v314;
    *(v254 + 40) = v276;

    return v254 | 0x2000000000000005;
  }
}

uint64_t sub_20BD9D20C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_20B52F9E8(a1, &v13 - v5, &qword_27C762AE0);
  v7 = sub_20C135654();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &qword_27C762AE0);
LABEL_4:
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer + 24));
    v9 = sub_20C138D34();

    return v9;
  }

  v9 = sub_20C135634();
  v11 = v10;
  (*(v8 + 8))(v6, v7);
  if (!v11)
  {
    goto LABEL_4;
  }

  return v9;
}

uint64_t sub_20BD9D3A8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_catalogClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer);

  v3 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootFilterResult;
  v6 = sub_20C135524();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootModality, &unk_27C7710A0);
  v8 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
  v9 = sub_20C135914();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 144);
  v18[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 128);
  v18[9] = v10;
  v19 = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 160);
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 80);
  v18[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 64);
  v18[5] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 112);
  v18[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 96);
  v18[7] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 16);
  v18[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row);
  v18[1] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 48);
  v18[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 32);
  v18[3] = v14;
  sub_20B520158(v18, &qword_27C762340);
  v15 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filter;
  v16 = sub_20C133E24();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v7(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterResult, v6);
  v7(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_initialFilterResult, v6);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_bodyFocusProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_durationProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_equipmentProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_genreProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_modalityProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_skillLevelProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_themeProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_tipCategoryProperty, &unk_27C7629B0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_trainerProperty, &unk_27C7629B0);

  return v0;
}

uint64_t sub_20BD9D724()
{
  sub_20BD9D3A8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FilterOptionListShelf()
{
  result = qword_27C76ED10;
  if (!qword_27C76ED10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD9D7D0()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20C134EC4();
    if (v1 <= 0x3F)
    {
      sub_20C135524();
      if (v2 <= 0x3F)
      {
        sub_20BD9DA5C(319, &qword_27C764988, MEMORY[0x277D50A30]);
        if (v3 <= 0x3F)
        {
          sub_20C135914();
          if (v4 <= 0x3F)
          {
            sub_20C133E24();
            if (v5 <= 0x3F)
            {
              sub_20BD9DA5C(319, &qword_27C763150, MEMORY[0x277D52060]);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_20BD9DA5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_20BD9DAB0()
{
  v1 = v0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764310);
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v37 = *(v39 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v34 - v10;
  MEMORY[0x28223BE20](v11);
  v40 = &v34 - v12;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_catalogClient), *(v0 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_catalogClient + 24));
  sub_20C13A014();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20BDA2168;
  *(v13 + 24) = v0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B881054;
  *(v14 + 24) = v13;
  v15 = v36;
  (*(v2 + 16))(v4, v7, v36);
  v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v16, v4, v15);
  v18 = (v17 + ((v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B849590;
  v18[1] = v14;

  v19 = v35;
  sub_20C137C94();
  (*(v2 + 8))(v7, v15);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20BDA2194;
  *(v20 + 24) = v1;
  v21 = v1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20B622D08;
  *(v22 + 24) = v20;
  v24 = v37;
  v23 = v38;
  v25 = v39;
  (*(v37 + 16))(v38, v19, v39);
  v26 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v27 = swift_allocObject();
  (*(v24 + 32))(v27 + v26, v23, v25);
  v28 = (v27 + ((v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_20B5DF3D4;
  v28[1] = v22;

  v29 = v40;
  sub_20C137C94();
  v30 = *(v24 + 8);
  v30(v19, v25);
  v31 = sub_20C137CB4();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v31(sub_20B52347C, v32);

  v30(v29, v25);
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for BodyFocusFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C7667A8, type metadata accessor for BodyFocusFilterUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for DurationFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C764990, type metadata accessor for DurationFilterUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for EquipmentFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C7667B0, type metadata accessor for EquipmentFilterUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for GenreFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C7667B8, type metadata accessor for GenreFilterUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for ModalityFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&unk_27C765CE0, type metadata accessor for ModalityFilterUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for SkillLevelFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C765B58, type metadata accessor for SkillLevelFilterUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for ThemeFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C7667C0, type metadata accessor for ThemeFilterUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for TipCategoryFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C7667C8, type metadata accessor for TipCategoryFilterUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for TrainerFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C7667D0, type metadata accessor for TrainerFilterUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20BDA24AC(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v41);
  v41[0] = *(v21 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories);
  sub_20BDA2458();

  sub_20C13A764();
}

uint64_t sub_20BD9E740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_20C134734();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = type metadata accessor for FilterResultUpdated();
    sub_20BD9933C(a1 + *(v9 + 20), a1 + *(v9 + 24));
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootModality;
    v12 = Strong;
    swift_beginAccess();
    sub_20B52F9E8(v12 + v11, v4, &unk_27C7710A0);

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_20BD97B94(v8);
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_20B520158(v4, &unk_27C7710A0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BD98AEC();
  }

  return result;
}

uint64_t sub_20BD9E9F4(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v3 = sub_20C135C84();
  v77 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7667D8);
  MEMORY[0x28223BE20](v70);
  v72 = &v64 - v5;
  v6 = sub_20C134EC4();
  v78 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8);
  MEMORY[0x28223BE20](v74);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v68 = &v64 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v64 - v26;
  v28 = *(type metadata accessor for DurationFilterUpdated() + 20);
  v75 = a1;
  sub_20B52F9E8(a1 + v28, v20, &qword_27C7627B8);
  v29 = sub_20C1341A4();
  v30 = *(v29 - 8);
  v31 = 1;
  if ((*(v30 + 48))(v20, 1, v29) != 1)
  {
    (*(v30 + 32))(v27, v20, v29);
    swift_storeEnumTagMultiPayload();
    v31 = 0;
  }

  v32 = *(v77 + 56);
  v71 = v3;
  v66 = v32;
  v32(v27, v31, 1, v3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v76 = v27;
  v34 = v78;
  if (Strong)
  {
    v35 = *(v78 + 16);
    v35(v17, Strong + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterRoot, v6);

    v36 = v34[7];
    v36(v17, 0, 1, v6);
  }

  else
  {
    v36 = *(v78 + 56);
    v36(v17, 1, 1, v6);
    v35 = v34[2];
  }

  v35(v14, v75, v6);
  v36(v14, 0, 1, v6);
  v37 = *(v74 + 48);
  sub_20B52F9E8(v17, v9, &qword_27C7649E0);
  sub_20B52F9E8(v14, &v9[v37], &qword_27C7649E0);
  v38 = v34[6];
  if (v38(v9, 1, v6) == 1)
  {
    sub_20B520158(v14, &qword_27C7649E0);
    sub_20B520158(v17, &qword_27C7649E0);
    v39 = v38(&v9[v37], 1, v6);
    v40 = v76;
    if (v39 == 1)
    {
      sub_20B520158(v9, &qword_27C7649E0);
      goto LABEL_15;
    }

LABEL_11:
    v42 = &qword_27C7649D8;
    v43 = v9;
LABEL_12:
    sub_20B520158(v43, v42);
    return sub_20B520158(v40, &unk_27C7629B0);
  }

  v41 = v73;
  sub_20B52F9E8(v9, v73, &qword_27C7649E0);
  if (v38(&v9[v37], 1, v6) == 1)
  {
    sub_20B520158(v14, &qword_27C7649E0);
    sub_20B520158(v17, &qword_27C7649E0);
    (*(v78 + 8))(v41, v6);
    v40 = v76;
    goto LABEL_11;
  }

  v45 = v78;
  v46 = v67;
  (*(v78 + 32))(v67, &v9[v37], v6);
  sub_20BDA24AC(&qword_27C7649E8, MEMORY[0x277D512A8]);
  LODWORD(v75) = sub_20C13C894();
  v47 = *(v45 + 8);
  v47(v46, v6);
  sub_20B520158(v14, &qword_27C7649E0);
  sub_20B520158(v17, &qword_27C7649E0);
  v47(v41, v6);
  sub_20B520158(v9, &qword_27C7649E0);
  v40 = v76;
  if ((v75 & 1) == 0)
  {
    return sub_20B520158(v40, &unk_27C7629B0);
  }

LABEL_15:
  swift_beginAccess();
  v48 = swift_weakLoadStrong();
  if (v48)
  {
    v49 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_durationProperty;
    v50 = v48;
    swift_beginAccess();
    v51 = v68;
    sub_20B52F9E8(v50 + v49, v68, &unk_27C7629B0);

    v52 = v71;
  }

  else
  {
    v51 = v68;
    v52 = v71;
    v66(v68, 1, 1, v71);
  }

  v53 = v69;
  v54 = *(v70 + 48);
  v55 = v72;
  sub_20B52F9E8(v51, v72, &unk_27C7629B0);
  sub_20B52F9E8(v40, v55 + v54, &unk_27C7629B0);
  v56 = *(v77 + 48);
  if (v56(v55, 1, v52) == 1)
  {
    sub_20B520158(v51, &unk_27C7629B0);
    if (v56(v55 + v54, 1, v52) == 1)
    {
      v42 = &unk_27C7629B0;
      v43 = v55;
      goto LABEL_12;
    }
  }

  else
  {
    sub_20B52F9E8(v55, v53, &unk_27C7629B0);
    if (v56(v55 + v54, 1, v52) != 1)
    {
      v60 = v55 + v54;
      v61 = v65;
      sub_20B7479A0(v60, v65);
      v62 = MEMORY[0x20F2ED3D0](v53, v61);
      v63 = MEMORY[0x277D52060];
      sub_20BDA2108(v61, MEMORY[0x277D52060]);
      sub_20B520158(v51, &unk_27C7629B0);
      sub_20BDA2108(v53, v63);
      sub_20B520158(v55, &unk_27C7629B0);
      if (v62)
      {
        return sub_20B520158(v40, &unk_27C7629B0);
      }

      goto LABEL_24;
    }

    sub_20B520158(v51, &unk_27C7629B0);
    sub_20BDA2108(v53, MEMORY[0x277D52060]);
  }

  sub_20B520158(v55, &qword_27C7667D8);
LABEL_24:
  swift_beginAccess();
  v57 = swift_weakLoadStrong();
  if (v57)
  {
    v58 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_durationProperty;
    v59 = v57;
    swift_beginAccess();
    sub_20BDA24F4(v40, v59 + v58);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BD98AEC();
  }

  return sub_20B520158(v40, &unk_27C7629B0);
}

uint64_t sub_20BD9F4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), int a4, uint64_t *a5)
{
  v81 = a5;
  LODWORD(v83) = a4;
  v86 = a3;
  v7 = sub_20C135C84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7667D8);
  MEMORY[0x28223BE20](v77);
  v80 = &v71 - v10;
  v11 = sub_20C134EC4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8);
  MEMORY[0x28223BE20](v84);
  v15 = &v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0);
  MEMORY[0x28223BE20](v16 - 8);
  v82 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v24 - 8);
  v74 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v76 = &v71 - v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = (&v71 - v30);
  v32 = *(v86(0, v29) + 20);
  v85 = a1;
  v33 = (a1 + v32);
  v34 = v33[1];
  v78 = v8;
  if (v34)
  {
    *v31 = *v33;
    v31[1] = v34;
    swift_storeEnumTagMultiPayload();
    v35 = *(v8 + 56);
    v36 = v31;
    v37 = 0;
  }

  else
  {
    v35 = *(v8 + 56);
    v36 = v31;
    v37 = 1;
  }

  v73 = v35;
  v35(v36, v37, 1, v7);
  v79 = v7;
  v86 = v31;
  swift_beginAccess();
  v83 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v39 = *(v12 + 16);
    v39(v23, Strong + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterRoot, v11);

    v40 = *(v12 + 56);
    v40(v23, 0, 1, v11);
  }

  else
  {
    v40 = *(v12 + 56);
    v40(v23, 1, 1, v11);
    v39 = *(v12 + 16);
  }

  v39(v20, v85, v11);
  v40(v20, 0, 1, v11);
  v41 = *(v84 + 48);
  sub_20B52F9E8(v23, v15, &qword_27C7649E0);
  sub_20B52F9E8(v20, &v15[v41], &qword_27C7649E0);
  v42 = *(v12 + 48);
  if (v42(v15, 1, v11) == 1)
  {
    sub_20B520158(v20, &qword_27C7649E0);
    sub_20B520158(v23, &qword_27C7649E0);
    v43 = v42(&v15[v41], 1, v11);
    v44 = v86;
    if (v43 == 1)
    {
      sub_20B520158(v15, &qword_27C7649E0);
      goto LABEL_16;
    }

LABEL_12:
    v46 = &qword_27C7649D8;
    v47 = v15;
LABEL_13:
    sub_20B520158(v47, v46);
    return sub_20B520158(v44, &unk_27C7629B0);
  }

  v45 = v82;
  sub_20B52F9E8(v15, v82, &qword_27C7649E0);
  if (v42(&v15[v41], 1, v11) == 1)
  {
    sub_20B520158(v20, &qword_27C7649E0);
    sub_20B520158(v23, &qword_27C7649E0);
    (*(v12 + 8))(v45, v11);
    v44 = v86;
    goto LABEL_12;
  }

  v49 = v75;
  (*(v12 + 32))(v75, &v15[v41], v11);
  sub_20BDA24AC(&qword_27C7649E8, MEMORY[0x277D512A8]);
  v50 = v45;
  v51 = sub_20C13C894();
  v52 = *(v12 + 8);
  v52(v49, v11);
  sub_20B520158(v20, &qword_27C7649E0);
  sub_20B520158(v23, &qword_27C7649E0);
  v52(v50, v11);
  sub_20B520158(v15, &qword_27C7649E0);
  v44 = v86;
  if ((v51 & 1) == 0)
  {
    return sub_20B520158(v44, &unk_27C7629B0);
  }

LABEL_16:
  swift_beginAccess();
  v53 = swift_weakLoadStrong();
  if (v53)
  {
    v54 = *v81;
    v55 = v53;
    swift_beginAccess();
    v56 = v76;
    sub_20B52F9E8(v55 + v54, v76, &unk_27C7629B0);

    v57 = v80;
    v58 = v79;
    v59 = v78;
  }

  else
  {
    v59 = v78;
    v56 = v76;
    v58 = v79;
    v73(v76, 1, 1, v79);
    v57 = v80;
  }

  v60 = *(v77 + 48);
  sub_20B52F9E8(v56, v57, &unk_27C7629B0);
  sub_20B52F9E8(v44, v57 + v60, &unk_27C7629B0);
  v61 = *(v59 + 48);
  if (v61(v57, 1, v58) == 1)
  {
    sub_20B520158(v56, &unk_27C7629B0);
    if (v61(v57 + v60, 1, v58) == 1)
    {
      v46 = &unk_27C7629B0;
      v47 = v57;
      goto LABEL_13;
    }
  }

  else
  {
    v62 = v74;
    sub_20B52F9E8(v57, v74, &unk_27C7629B0);
    if (v61(v57 + v60, 1, v58) != 1)
    {
      v66 = v57 + v60;
      v67 = v72;
      sub_20B7479A0(v66, v72);
      v68 = MEMORY[0x20F2ED3D0](v62, v67);
      v69 = v62;
      v70 = MEMORY[0x277D52060];
      sub_20BDA2108(v67, MEMORY[0x277D52060]);
      sub_20B520158(v56, &unk_27C7629B0);
      sub_20BDA2108(v69, v70);
      sub_20B520158(v57, &unk_27C7629B0);
      if (v68)
      {
        return sub_20B520158(v44, &unk_27C7629B0);
      }

      goto LABEL_25;
    }

    sub_20B520158(v56, &unk_27C7629B0);
    sub_20BDA2108(v62, MEMORY[0x277D52060]);
  }

  sub_20B520158(v57, &qword_27C7667D8);
LABEL_25:
  swift_beginAccess();
  v63 = swift_weakLoadStrong();
  if (v63)
  {
    v64 = *v81;
    v65 = v63;
    swift_beginAccess();
    sub_20BDA24F4(v44, v65 + v64);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BD98AEC();
  }

  return sub_20B520158(v44, &unk_27C7629B0);
}

uint64_t sub_20BD9FF60(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v63 - v4;
  v5 = sub_20C134EC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v63 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  swift_beginAccess();
  v65 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(v6 + 16);
    v20(v18, Strong + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterRoot, v5);

    v21 = *(v6 + 56);
    v21(v18, 0, 1, v5);
  }

  else
  {
    v21 = *(v6 + 56);
    v21(v18, 1, 1, v5);
    v20 = *(v6 + 16);
  }

  v20(v15, v67, v5);
  v21(v15, 0, 1, v5);
  v22 = *(v8 + 48);
  sub_20B52F9E8(v18, v10, &qword_27C7649E0);
  sub_20B52F9E8(v15, &v10[v22], &qword_27C7649E0);
  v23 = *(v6 + 48);
  if (v23(v10, 1, v5) != 1)
  {
    v24 = v66;
    sub_20B52F9E8(v10, v66, &qword_27C7649E0);
    if (v23(&v10[v22], 1, v5) != 1)
    {
      v26 = v63;
      (*(v6 + 32))(v63, &v10[v22], v5);
      sub_20BDA24AC(&qword_27C7649E8, MEMORY[0x277D512A8]);
      v27 = v24;
      v28 = sub_20C13C894();
      v29 = *(v6 + 8);
      v29(v26, v5);
      sub_20B520158(v15, &qword_27C7649E0);
      sub_20B520158(v18, &qword_27C7649E0);
      v29(v27, v5);
      result = sub_20B520158(v10, &qword_27C7649E0);
      if ((v28 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_20B520158(v15, &qword_27C7649E0);
    sub_20B520158(v18, &qword_27C7649E0);
    (*(v6 + 8))(v24, v5);
    return sub_20B520158(v10, &qword_27C7649D8);
  }

  sub_20B520158(v15, &qword_27C7649E0);
  sub_20B520158(v18, &qword_27C7649E0);
  if (v23(&v10[v22], 1, v5) != 1)
  {
    return sub_20B520158(v10, &qword_27C7649D8);
  }

  sub_20B520158(v10, &qword_27C7649E0);
LABEL_11:
  swift_beginAccess();
  v30 = swift_weakLoadStrong();
  v31 = v64;
  if (v30)
  {
    v32 = v30;
    v33 = sub_20C135C84();
    (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
    v34 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_bodyFocusProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v31, v32 + v34, &unk_27C7629B0);
    swift_endAccess();
  }

  swift_beginAccess();
  v35 = swift_weakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = sub_20C135C84();
    (*(*(v37 - 8) + 56))(v31, 1, 1, v37);
    v38 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_durationProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v31, v36 + v38, &unk_27C7629B0);
    swift_endAccess();
  }

  swift_beginAccess();
  v39 = swift_weakLoadStrong();
  if (v39)
  {
    v40 = v39;
    v41 = sub_20C135C84();
    (*(*(v41 - 8) + 56))(v31, 1, 1, v41);
    v42 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_equipmentProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v31, v40 + v42, &unk_27C7629B0);
    swift_endAccess();
  }

  swift_beginAccess();
  v43 = swift_weakLoadStrong();
  if (v43)
  {
    v44 = v43;
    v45 = sub_20C135C84();
    (*(*(v45 - 8) + 56))(v31, 1, 1, v45);
    v46 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_genreProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v31, v44 + v46, &unk_27C7629B0);
    swift_endAccess();
  }

  swift_beginAccess();
  v47 = swift_weakLoadStrong();
  if (v47)
  {
    v48 = v47;
    v49 = sub_20C135C84();
    (*(*(v49 - 8) + 56))(v31, 1, 1, v49);
    v50 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_modalityProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v31, v48 + v50, &unk_27C7629B0);
    swift_endAccess();
  }

  swift_beginAccess();
  v51 = swift_weakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v53 = sub_20C135C84();
    (*(*(v53 - 8) + 56))(v31, 1, 1, v53);
    v54 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_skillLevelProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v31, v52 + v54, &unk_27C7629B0);
    swift_endAccess();
  }

  swift_beginAccess();
  v55 = swift_weakLoadStrong();
  if (v55)
  {
    v56 = v55;
    v57 = sub_20C135C84();
    (*(*(v57 - 8) + 56))(v31, 1, 1, v57);
    v58 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_themeProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v31, v56 + v58, &unk_27C7629B0);
    swift_endAccess();
  }

  swift_beginAccess();
  v59 = swift_weakLoadStrong();
  if (v59)
  {
    v60 = v59;
    v61 = sub_20C135C84();
    (*(*(v61 - 8) + 56))(v31, 1, 1, v61);
    v62 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_trainerProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v31, v60 + v62, &unk_27C7629B0);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BD98AEC();
  }

  return result;
}

uint64_t sub_20BDA0A60@<X0>(int a1@<W0>, char *a2@<X8>)
{
  v3 = v2;
  v56 = a1;
  v63 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ED20);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v52 - v5;
  v6 = sub_20C135524();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v52 - v9;
  v10 = sub_20C135C84();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v52 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v52 - v13;
  v14 = sub_20C133E24();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v57 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filter;
  swift_beginAccess();
  v21 = *(v15 + 16);
  v21(v19, v2 + v20, v14);
  v22 = sub_20C133E04();
  v23 = *(v15 + 8);
  v23(v19, v14);
  v24 = *(v22 + 16);
  v25 = v62;

  v26 = v24 == 1;
  v27 = v3;
  v28 = v61;
  if (!v26)
  {
    goto LABEL_14;
  }

  v29 = v57;
  v21(v57, v27 + v20, v14);
  v30 = v27;
  v31 = sub_20C133E04();
  v23(v29, v14);
  v32 = v60;
  sub_20BEDD4E4(v31, v60);

  if ((*(v58 + 48))(v32, 1, v59) == 1)
  {
    sub_20B520158(v32, &unk_27C7629B0);
    v27 = v30;
LABEL_14:
    v46 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterResult;
    swift_beginAccess();
    return (*(v28 + 16))(v63, v27 + v46, v25);
  }

  v33 = v32;
  v34 = v54;
  sub_20B7479A0(v33, v54);
  v35 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_initialFilterResult;
  swift_beginAccess();
  v36 = v28;
  v37 = *(v28 + 16);
  v60 = v30;
  v58 = v35;
  v38 = v30 + v35;
  v39 = v55;
  v40 = v25;
  v37(v55, v38, v25);
  v41 = v56;
  v42 = sub_20BB1119C(v56);
  (*(v36 + 8))(v39, v25);
  if (!v42)
  {
    sub_20BDA2108(v34, MEMORY[0x277D52060]);
    v27 = v60;
    v28 = v36;
    goto LABEL_14;
  }

  v43 = v53;
  sub_20B7479A0(v34, v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    v45 = v63;
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (v41 == 3)
        {
          goto LABEL_25;
        }
      }

      else if (v41 == 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 3 || v41 != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (!v41)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v45 = v63;
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v50 = v52;
        sub_20B747A04(v43, v52);
        v51 = sub_20C1341A4();
        (*(*(v51 - 8) + 8))(v50, v51);
        if (v41 == 2)
        {
          goto LABEL_25;
        }
      }

      else if (v41 == 5)
      {
        goto LABEL_25;
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      if (v41 == 6)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload != 10 || v41 != 8)
        {
          goto LABEL_27;
        }

LABEL_25:
        sub_20BDA2108(v43, MEMORY[0x277D52060]);
        return (v37)(v45, v60 + v58, v40);
      }

      if (v41 == 7)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_27:
  v48 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterResult;
  v49 = v60;
  swift_beginAccess();
  v37(v45, v49 + v48, v40);
  return sub_20BDA2108(v43, MEMORY[0x277D52060]);
}

uint64_t sub_20BDA10FC()
{
  v1 = type metadata accessor for ClearAllSelected();
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfMetricAction();
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C136664();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = v5[7];
  v10 = *MEMORY[0x277D51450];
  v11 = sub_20C134F24();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  v12 = v5[8];
  v13 = sub_20C132C14();
  (*(*(v13 - 8) + 56))(&v7[v12], 1, 1, v13);
  v14 = v5[10];
  v15 = sub_20C135ED4();
  (*(*(v15 - 8) + 56))(&v7[v14], 1, 1, v15);
  v16 = v5[12];
  v17 = *MEMORY[0x277D51768];
  v18 = sub_20C1352E4();
  (*(*(v18 - 8) + 104))(&v7[v16], v17, v18);
  v19 = v5[13];
  v20 = sub_20C136E94();
  (*(*(v20 - 8) + 56))(&v7[v19], 1, 1, v20);
  v21 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  *&v7[v5[9]] = xmmword_20C15A680;
  v22 = &v7[v5[11]];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v7[v5[14]] = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FED4(v0, v7, Strong);
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  v24 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterRoot;
  v25 = sub_20C134EC4();
  (*(*(v25 - 8) + 16))(v3, v0 + v24, v25);
  sub_20BDA24AC(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A764();
  sub_20BDA2108(v3, type metadata accessor for ClearAllSelected);
  return sub_20BDA2108(v7, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20BDA14AC(unint64_t a1, unint64_t a2)
{
  v92 = sub_20C133E24();
  v84 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v83 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_20C134734();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v88 = (&v79 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = &v79 - v17;
  v18 = sub_20C135914();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v25);
  v97 = &v79 - v26;
  v27 = sub_20C135524();
  v95 = *(v27 - 8);
  v96 = v27;
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x15)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v31 = *(v2 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories);
  if (*(v31 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  v80 = v7;
  v82 = v30;
  v93 = v10;
  v32 = *(v31 + a2 + 32);
  v87 = &v79 - v29;
  sub_20BDA0A60(v32, &v79 - v29);
  v98 = v18;
  v33 = v21;
  v34 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions;
  swift_beginAccess();
  v35 = *(v19 + 16);
  v35(v24, v2 + v34, v98);
  v85 = v32;
  sub_20BB1ED5C(v32);
  v37 = *(v19 + 8);
  v36 = v19 + 8;
  v94 = v37;
  v37(v24, v98);
  v38 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootModality;
  swift_beginAccess();
  v81 = v38;
  v39 = v2 + v38;
  v40 = v21;
  sub_20B52F9E8(v39, v15, &unk_27C7710A0);
  v86 = v2;
  v41 = v2 + v34;
  v42 = v15;
  v43 = v98;
  v35(v40, v41, v98);
  v44 = v15;
  v45 = v88;
  sub_20B52F9E8(v44, v88, &unk_27C7710A0);
  v46 = v90;
  v47 = v91;
  if ((*(v90 + 48))(v45, 1, v91) == 1)
  {
    v48 = v94;
    v94(v33, v43);
    sub_20B520158(v42, &unk_27C7710A0);
    sub_20B520158(v45, &unk_27C7710A0);
    v49 = sub_20C135654();
    v50 = v89;
    (*(*(v49 - 8) + 56))(v89, 1, 1, v49);
  }

  else
  {
    v51 = v80;
    (*(v46 + 32))(v80, v45, v47);
    v52 = sub_20C1358D4();
    v88 = &v79;
    MEMORY[0x28223BE20](v52);
    v53 = v42;
    v50 = v89;
    sub_20B6B7110(sub_20B7E060C, v52, v89);

    v54 = v40;
    v48 = v94;
    v94(v54, v43);
    sub_20B520158(v53, &unk_27C7710A0);
    (*(v46 + 8))(v51, v47);
  }

  v55 = v93;
  v56 = v86;
  v57 = sub_20B622EF8((v86 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_storefrontLocalizer), v50, v85);
  v59 = v58;
  sub_20B520158(v50, &qword_27C762AE0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v61 = Strong;
    v91 = v36;
    v62 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filter;
    swift_beginAccess();
    v63 = v84;
    v64 = v83;
    (*(v84 + 16))(v83, v56 + v62, v92);
    sub_20B52F9E8(v56 + v81, v55, &unk_27C7710A0);
    v65 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterRoot;
    v66 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootFilterResult;
    swift_beginAccess();
    v67 = v82;
    (*(v95 + 16))(v82, v56 + v66, v96);
    v68 = v61 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v69 = *(v68 + 8);
      ObjectType = swift_getObjectType();
      v71 = *(v69 + 104);
      v78 = v69;
      v55 = v93;
      v72 = v56 + v65;
      v73 = v87;
      v74 = v97;
      v71(v61, v64, v87, v93, v72, v67, v97, v57, v59, ObjectType, v78);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v74 = v97;
      v73 = v87;
    }

    v76 = v96;
    v77 = *(v95 + 8);
    v77(v67, v96);
    sub_20B520158(v55, &unk_27C7710A0);
    (*(v63 + 8))(v64, v92);
    v94(v74, v98);
    return (v77)(v73, v76);
  }

  else
  {

    v48(v97, v98);
    return (*(v95 + 8))(v87, v96);
  }
}

uint64_t sub_20BDA1E20@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BDA1E98@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row + 32);
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

uint64_t sub_20BDA1F60(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  sub_20B52F9E8(a2, &v16 - v4, &qword_27C762AE0);
  v6 = sub_20C135654();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C762AE0);
  }

  else
  {
    v8 = sub_20C135624();
    (*(v7 + 8))(v5, v6);
    v9 = sub_20C1334C4();
    if (*(v8 + 16))
    {
      v11 = sub_20B65AA60(v9, v10);
      v13 = v12;

      if (v13)
      {
        v14 = *(*(v8 + 56) + 16 * v11);

        return v14;
      }
    }

    else
    {
    }
  }

  return sub_20C1334C4();
}

uint64_t sub_20BDA2108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BDA2198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20BDA2458()
{
  result = qword_27C76ED28;
  if (!qword_27C76ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76ED28);
  }

  return result;
}

uint64_t sub_20BDA24AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BDA24F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL sub_20BDA2564()
{
  sub_20C134194();
  v1 = v0;
  sub_20C134194();
  return v1 == v2;
}

unint64_t sub_20BDA2608()
{
  result = qword_27C76ED40;
  if (!qword_27C76ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76ED40);
  }

  return result;
}

uint64_t sub_20BDA265C(uint64_t a1)
{
  result = type metadata accessor for PageAlertAction();
  v3 = (a1 + *(result + 28));
  if (*v3)
  {
    return (*v3)(a1);
  }

  return result;
}

unint64_t sub_20BDA26BC()
{
  result = qword_27C76ED48;
  if (!qword_27C76ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76ED48);
  }

  return result;
}

void sub_20BDA2778()
{
  sub_20B52CA84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ButtonAction.ActionType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20BDA2804()
{
  sub_20BDA2AD4(319, &qword_27C76ED70, sub_20BBA62F0);
  if (v0 <= 0x3F)
  {
    sub_20BDA29AC();
    if (v1 <= 0x3F)
    {
      sub_20BDA2A40();
      if (v2 <= 0x3F)
      {
        sub_20BDA2AD4(319, &qword_27C76ED88, MEMORY[0x277D504F8]);
        if (v3 <= 0x3F)
        {
          sub_20BDA2AD4(319, &qword_27C76ED90, MEMORY[0x277D50180]);
          if (v4 <= 0x3F)
          {
            sub_20BDA2B20();
            if (v5 <= 0x3F)
            {
              sub_20BDA2B50(319);
              if (v6 <= 0x3F)
              {
                sub_20BDA2C7C();
                if (v7 <= 0x3F)
                {
                  sub_20BDA2D08();
                  if (v8 <= 0x3F)
                  {
                    sub_20BDA2D7C();
                    if (v9 <= 0x3F)
                    {
                      sub_20BDA2DE8();
                      if (v10 <= 0x3F)
                      {
                        sub_20BDA2E48();
                        if (v11 <= 0x3F)
                        {
                          sub_20BDA2EE0();
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
    }
  }
}

void sub_20BDA29AC()
{
  if (!qword_27C76ED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7622F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C768660);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C76ED78);
    }
  }
}

void sub_20BDA2A40()
{
  if (!qword_27C76ED80)
  {
    sub_20C138034();
    sub_20BDA65F4(&unk_27C764140, MEMORY[0x277D53BA0]);
    v0 = sub_20C13D004();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76ED80);
    }
  }
}

void sub_20BDA2AD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_20BDA2B20()
{
  result = qword_27C76ED98;
  if (!qword_27C76ED98)
  {
    result = &type metadata for ButtonAction.PlaceholderType;
    atomic_store(&type metadata for ButtonAction.PlaceholderType, &qword_27C76ED98);
  }

  return result;
}

void sub_20BDA2B50(uint64_t a1)
{
  if (!qword_27C76EDA0)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for StartWorkoutSessionRequest();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76A410);
    sub_20C137254();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27C76EDA0);
    }
  }
}

void sub_20BDA2C7C()
{
  if (!qword_27C76EDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76EDB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76EDA8);
    }
  }
}

void sub_20BDA2D08()
{
  if (!qword_27C76EDB8)
  {
    sub_20C138B94();
    sub_20C138894();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76EDB8);
    }
  }
}

void sub_20BDA2D7C()
{
  if (!qword_27C76EDC0)
  {
    sub_20C134284();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76EDC0);
    }
  }
}

void sub_20BDA2DE8()
{
  if (!qword_27C76EDC8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76EDC8);
    }
  }
}

void sub_20BDA2E48()
{
  if (!qword_27C76EDD0)
  {
    type metadata accessor for StartWorkoutSessionRequest();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76A410);
    sub_20C137254();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C76EDD0);
    }
  }
}

void sub_20BDA2EE0()
{
  if (!qword_27C76EDD8)
  {
    sub_20C132C14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76EDD8);
    }
  }
}

unint64_t sub_20BDA2F60()
{
  result = qword_27C76EDE0;
  if (!qword_27C76EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76EDE0);
  }

  return result;
}

void sub_20BDA2FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1365F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_20BDA65F4(&qword_27C762F60, MEMORY[0x277D52AF8]);
        v26 = sub_20C13C7B4();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_20BDA65F4(&qword_27C764300, MEMORY[0x277D52AF8]);
          v31 = sub_20C13C894();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_20BDA3364(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C133A74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_20BDA65F4(&qword_27C76B788, MEMORY[0x277D50278]);
        v26 = sub_20C13C7B4();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_20BDA65F4(&qword_27C764A48, MEMORY[0x277D50278]);
          v31 = sub_20C13C894();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_20BDA3714(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C137294();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_20BDA65F4(&qword_27C7640B8, MEMORY[0x277D53250]);
        v26 = sub_20C13C7B4();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_20BDA65F4(&qword_27C7640C0, MEMORY[0x277D53250]);
          v31 = sub_20C13C894();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_20BDA3AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_20BDA65F4(&qword_27C764180, MEMORY[0x277CC9AF8]);
      v26 = sub_20C13C7B4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_20BDA65F4(&qword_27C762F98, MEMORY[0x277CC9AF8]);
        v31 = sub_20C13C894();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BDA3E74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v31 = v9;
  v32 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
    sub_20C13E164();
    sub_20C13CA64();

    v16 = sub_20C13E1B4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v33 = v12;
    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 <= 1)
      {
        break;
      }

      if (v20 != 2)
      {
        v21 = v20 == 3;
        if (v20 == 3)
        {
          v22 = 0x746E6169726176;
        }

        else
        {
          v22 = 0x746867696577;
        }

        v23 = 0xE600000000000000;
        v24 = 0xE700000000000000;
        goto LABEL_25;
      }

      v22 = 0x63696C6F626D7973;
      v25 = 0xEE00737469617254;
      if (v15 <= 1)
      {
        goto LABEL_42;
      }

LABEL_29:
      v26 = 0x746E6169726176;
      if (v15 != 3)
      {
        v26 = 0x746867696577;
      }

      v27 = 0xE600000000000000;
      if (v15 == 3)
      {
        v27 = 0xE700000000000000;
      }

      if (v15 == 2)
      {
        v28 = 0x63696C6F626D7973;
      }

      else
      {
        v28 = v26;
      }

      if (v15 == 2)
      {
        v29 = 0xEE00737469617254;
      }

      else
      {
        v29 = v27;
      }

      if (v22 == v28)
      {
        goto LABEL_46;
      }

LABEL_47:
      v30 = sub_20C13DFF4();

      if (v30)
      {
        goto LABEL_51;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v21 = v20 == 0;
    if (*(*(a2 + 48) + v18))
    {
      v22 = 0xD00000000000001ALL;
    }

    else
    {
      v22 = 0x6E6769736564;
    }

    v23 = 0x800000020C191770;
    v24 = 0xE600000000000000;
LABEL_25:
    if (v21)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    if (v15 > 1)
    {
      goto LABEL_29;
    }

LABEL_42:
    if (!v15)
    {
      v29 = 0xE600000000000000;
      if (v22 == 0x6E6769736564)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    v29 = 0x800000020C191770;
    if (v22 != 0xD00000000000001ALL)
    {
      goto LABEL_47;
    }

LABEL_46:
    if (v25 != v29)
    {
      goto LABEL_47;
    }

LABEL_51:
    v9 = v31;
    v3 = v32;
    v8 = v33;
  }

  while (v33);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BDA4218(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C138034();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_20BDA65F4(&unk_27C764140, MEMORY[0x277D53BA0]);
      v26 = sub_20C13C7B4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_20BDA65F4(&qword_27C763F00, MEMORY[0x277D53BA0]);
        v31 = sub_20C13C894();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_20BDA45C8(uint64_t a1, uint64_t a2)
{
  v66 = sub_20C134E04();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_20C1333E4();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F18);
  MEMORY[0x28223BE20](v70);
  v9 = &v50 - v8;
  v10 = type metadata accessor for WorkoutPlanPreference();
  MEMORY[0x28223BE20](v10);
  v71 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v50 - v13;
  MEMORY[0x28223BE20](v14);
  v67 = &v50 - v15;
  MEMORY[0x28223BE20](v16);
  v73 = &v50 - v17;
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v22 = 0;
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(a1 + 56);
  v27 = (v24 + 63) >> 6;
  v69 = a2 + 56;
  v58 = (v6 + 32);
  v63 = (v4 + 8);
  v64 = (v6 + 8);
  v57 = (v4 + 32);
  v54 = a1;
  v53 = v19;
  v68 = a2;
  v52 = v21;
  v51 = a1 + 56;
  v50 = v27;
  if (!v26)
  {
    goto LABEL_8;
  }

  do
  {
    v28 = __clz(__rbit64(v26));
    v55 = (v26 - 1) & v26;
LABEL_13:
    v56 = v22;
    v31 = *(v19 + 72);
    sub_20BDAAE68(*(a1 + 48) + v31 * (v28 | (v22 << 6)), v21, type metadata accessor for WorkoutPlanPreference);
    sub_20BDAAED0(v21, v73, type metadata accessor for WorkoutPlanPreference);
    sub_20C13E164();
    sub_20BBC6470();
    v32 = sub_20C13E1B4();
    v33 = -1 << *(a2 + 32);
    v34 = v32 & ~v33;
    v35 = v67;
    if (((*(v69 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
LABEL_29:
      sub_20BDAAE08(v73, type metadata accessor for WorkoutPlanPreference);
      return;
    }

    v36 = ~v33;
    v62 = v31;
    v61 = ~v33;
    while (1)
    {
      sub_20BDAAE68(*(a2 + 48) + v34 * v31, v35, type metadata accessor for WorkoutPlanPreference);
      v37 = *(v70 + 48);
      sub_20BDAAE68(v35, v9, type metadata accessor for WorkoutPlanPreference);
      sub_20BDAAE68(v73, &v9[v37], type metadata accessor for WorkoutPlanPreference);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_20BDAAE68(v9, v71, type metadata accessor for WorkoutPlanPreference);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v60;
        v39 = v71;
        v40 = v66;
        (*v57)(v60, &v9[v37], v66);
        v41 = MEMORY[0x20F2EC550](v39, v38);
        v42 = *v63;
        v43 = v38;
        v35 = v67;
        (*v63)(v43, v40);
        sub_20BDAAE08(v35, type metadata accessor for WorkoutPlanPreference);
        v42(v39, v40);
        if (v41)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      sub_20BDAAE08(v35, type metadata accessor for WorkoutPlanPreference);
      (*v63)(v71, v66);
LABEL_16:
      sub_20B520158(v9, &qword_27C763F18);
      a2 = v68;
LABEL_17:
      v34 = (v34 + 1) & v36;
      if (((*(v69 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_20BDAAE68(v9, v72, type metadata accessor for WorkoutPlanPreference);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20BDAAE08(v35, type metadata accessor for WorkoutPlanPreference);
      (*v64)(v72, v65);
      goto LABEL_16;
    }

    v44 = v59;
    v45 = v65;
    (*v58)(v59, &v9[v37], v65);
    v46 = v72;
    v47 = sub_20C1333C4();
    v48 = *v64;
    v49 = v44;
    v35 = v67;
    (*v64)(v49, v45);
    sub_20BDAAE08(v35, type metadata accessor for WorkoutPlanPreference);
    v48(v46, v45);
    if ((v47 & 1) == 0)
    {
LABEL_24:
      sub_20BDAAE08(v9, type metadata accessor for WorkoutPlanPreference);
      a2 = v68;
      v31 = v62;
      v36 = v61;
      goto LABEL_17;
    }

LABEL_26:
    sub_20BDAAE08(v9, type metadata accessor for WorkoutPlanPreference);
    sub_20BDAAE08(v73, type metadata accessor for WorkoutPlanPreference);
    a2 = v68;
    a1 = v54;
    v19 = v53;
    v21 = v52;
    v22 = v56;
    v23 = v51;
    v27 = v50;
    v26 = v55;
  }

  while (v55);
LABEL_8:
  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v27)
    {
      return;
    }

    v30 = *(v23 + 8 * v22);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v55 = (v30 - 1) & v30;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20BDA4D9C(__int128 *a1)
{
  v160 = a1;
  v141 = sub_20C132C14();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v138 = &v121 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_20C134284();
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v133 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C135C54();
  v156 = *(v3 - 8);
  v157 = v3;
  MEMORY[0x28223BE20](v3);
  v148 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C1344C4();
  v146 = *(v5 - 8);
  v147 = v5;
  MEMORY[0x28223BE20](v5);
  v145 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C137254();
  v158 = *(v7 - 8);
  v159 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v143 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v144 = &v121 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v132 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v142 = &v121 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v131 = &v121 - v17;
  MEMORY[0x28223BE20](v16);
  v140 = &v121 - v18;
  started = type metadata accessor for StartWorkoutSessionRequest();
  v19 = MEMORY[0x28223BE20](started);
  v130 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v136 = &v121 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v129 = &v121 - v24;
  MEMORY[0x28223BE20](v23);
  v134 = &v121 - v25;
  v127 = sub_20C133954();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_20C134014();
  v123 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v28 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C138894();
  v154 = *(v29 - 8);
  v155 = v29;
  MEMORY[0x28223BE20](v29);
  v150 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C138B94();
  v151 = *(v31 - 8);
  v152 = v31;
  MEMORY[0x28223BE20](v31);
  v149 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v124 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v128 = &v121 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v121 - v41;
  v43 = sub_20C135814();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v121 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v50 = &v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v52 = &v121 - v51;
  v53 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v53);
  v55 = (&v121 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20BDAAE68(v161, v55, type metadata accessor for ButtonAction.ActionType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
      v87 = *(v86 + 64);
      sub_20B5DF134(v55 + *(v86 + 48), v42, &qword_27C7622F0);
      v88 = v128;
      sub_20B5DF134(v55 + v87, v128, &unk_27C768660);
      MEMORY[0x20F2F58E0](3);
      sub_20C13E184();
      sub_20B52F9E8(v42, v40, &qword_27C7622F0);
      v90 = v151;
      v89 = v152;
      if ((*(v151 + 48))(v40, 1, v152) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v116 = v149;
        (*(v90 + 32))(v149, v40, v89);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C76EE40, MEMORY[0x277D54150]);
        sub_20C13C7C4();
        (*(v90 + 8))(v116, v89);
      }

      v118 = v154;
      v117 = v155;
      v119 = v124;
      sub_20B52F9E8(v88, v124, &unk_27C768660);
      if ((*(v118 + 48))(v119, 1, v117) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v120 = v150;
        (*(v118 + 32))(v150, v119, v117);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C767EC0, MEMORY[0x277D540B0]);
        sub_20C13C7C4();
        (*(v118 + 8))(v120, v117);
      }

      sub_20B520158(v88, &unk_27C768660);
      return sub_20B520158(v42, &qword_27C7622F0);
    case 2u:
      v77 = *v55;
      v78 = 4;
      goto LABEL_22;
    case 3u:
      v79 = v123;
      v80 = v122;
      (*(v123 + 32))(v28, v55, v122);
      MEMORY[0x20F2F58E0](5);
      sub_20BDA65F4(&qword_27C7681C0, MEMORY[0x277D504F8]);
      sub_20C13C7C4();
      return (*(v79 + 8))(v28, v80);
    case 4u:
      v58 = v126;
      v59 = v125;
      v60 = v127;
      (*(v126 + 32))(v125, v55, v127);
      MEMORY[0x20F2F58E0](6);
      sub_20BDA65F4(&qword_27C767540, MEMORY[0x277D50180]);
      sub_20C13C7C4();
      return (*(v58 + 8))(v59, v60);
    case 5u:
      v91 = *v55;
      MEMORY[0x20F2F58E0](7);
      return MEMORY[0x20F2F58E0](v91);
    case 6u:
      v77 = *v55;
      v78 = 8;
LABEL_22:
      v96 = v160;
      MEMORY[0x20F2F58E0](v78);
      sub_20BBA80A0(v96, v77);

    case 7u:
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
      v82 = *(v55 + v81[12]);
      v83 = v81[16];
      v84 = v81[20];
      v64 = v134;
      sub_20BDAAED0(v55, v134, type metadata accessor for StartWorkoutSessionRequest);
      v65 = v140;
      sub_20B5DF134(v55 + v83, v140, &qword_27C76A410);
      v67 = v158;
      v66 = v159;
      v68 = v144;
      (*(v158 + 32))(v144, v55 + v84, v159);
      MEMORY[0x20F2F58E0](10);
      v85 = v129;
      sub_20BDAAE68(v64, v129, type metadata accessor for StartWorkoutSessionRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x20F2F58E0](1);
        sub_20C13CA64();
      }

      else
      {
        v111 = v145;
        v110 = v146;
        v112 = v147;
        (*(v146 + 32))(v145, v85, v147);
        MEMORY[0x20F2F58E0](0);
        sub_20BDA65F4(&qword_27C76EE30, MEMORY[0x277D50820]);
        sub_20C13C7C4();
        (*(v110 + 8))(v111, v112);
      }

      v107 = v156;
      v106 = v157;
      v113 = 0.0;
      if (v82 != 0.0)
      {
        v113 = v82;
      }

      MEMORY[0x20F2F5910](*&v113);
      v108 = v65;
      v109 = &v162;
      goto LABEL_35;
    case 8u:
      v100 = v55[1];
      v101 = v55[2];
      v102 = v160;
      MEMORY[0x20F2F58E0](12);
      sub_20C13E184();
      if (v100)
      {
        sub_20C13CA64();
      }

      sub_20BDA75A4(v102, v101);

    case 9u:
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8) + 48);
      v72 = v151;
      v71 = v152;
      v73 = v149;
      (*(v151 + 32))(v149, v55, v152);
      v75 = v154;
      v74 = v155;
      v76 = v150;
      (*(v154 + 32))(v150, v55 + v70, v155);
      MEMORY[0x20F2F58E0](13);
      sub_20BDA65F4(&qword_27C76EE40, MEMORY[0x277D54150]);
      sub_20C13C7C4();
      sub_20BDA65F4(&qword_27C767EC0, MEMORY[0x277D540B0]);
      sub_20C13C7C4();
      (*(v75 + 8))(v76, v74);
      return (*(v72 + 8))(v73, v71);
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200);
      v97 = v135;
      v98 = v133;
      v99 = v137;
      (*(v135 + 32))(v133, v55, v137);
      MEMORY[0x20F2F58E0](14);
      sub_20BDA65F4(&qword_27C76EE38, MEMORY[0x277D50760]);
      sub_20C13C7C4();
      sub_20C13CA64();

      return (*(v97 + 8))(v98, v99);
    case 0xBu:
      MEMORY[0x20F2F58E0](15);
      sub_20C13E184();
      return sub_20C13E184();
    case 0xCu:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
      v62 = *(v61 + 48);
      v63 = *(v61 + 64);
      v64 = v136;
      sub_20BDAAED0(v55, v136, type metadata accessor for StartWorkoutSessionRequest);
      v65 = v142;
      sub_20B5DF134(v55 + v62, v142, &qword_27C76A410);
      v67 = v158;
      v66 = v159;
      v68 = v143;
      (*(v158 + 32))(v143, v55 + v63, v159);
      MEMORY[0x20F2F58E0](17);
      v69 = v130;
      sub_20BDAAE68(v64, v130, type metadata accessor for StartWorkoutSessionRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x20F2F58E0](1);
        sub_20C13CA64();
      }

      else
      {
        v104 = v145;
        v103 = v146;
        v105 = v147;
        (*(v146 + 32))(v145, v69, v147);
        MEMORY[0x20F2F58E0](0);
        sub_20BDA65F4(&qword_27C76EE30, MEMORY[0x277D50820]);
        sub_20C13C7C4();
        (*(v103 + 8))(v104, v105);
      }

      v107 = v156;
      v106 = v157;
      v108 = v65;
      v109 = &v163;
LABEL_35:
      v114 = *(v109 - 32);
      sub_20B52F9E8(v108, v114, &qword_27C76A410);
      if ((*(v107 + 48))(v114, 1, v106) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v115 = v148;
        (*(v107 + 32))(v148, v114, v106);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C762F50, MEMORY[0x277D51FE0]);
        sub_20C13C7C4();
        (*(v107 + 8))(v115, v106);
      }

      sub_20BDA65F4(&qword_27C76EE28, MEMORY[0x277D531E0]);
      sub_20C13C7C4();
      (*(v67 + 8))(v68, v66);
      sub_20B520158(v65, &qword_27C76A410);
      return sub_20BDAAE08(v64, type metadata accessor for StartWorkoutSessionRequest);
    case 0xDu:
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210);
      v93 = v139;
      v94 = v138;
      v95 = v141;
      (*(v139 + 32))(v138, v55 + *(v92 + 48), v141);
      MEMORY[0x20F2F58E0](19);
      sub_20C13CA64();

      sub_20BDA65F4(&qword_27C762CB0, MEMORY[0x277CC9260]);
      sub_20C13C7C4();
      return (*(v93 + 8))(v94, v95);
    case 0xEu:
      v56 = 0;
      goto LABEL_28;
    case 0xFu:
      v56 = 2;
      goto LABEL_28;
    case 0x10u:
      v56 = 9;
      goto LABEL_28;
    case 0x11u:
      v56 = 11;
      goto LABEL_28;
    case 0x12u:
      v56 = 16;
      goto LABEL_28;
    case 0x13u:
      v56 = 18;
LABEL_28:
      result = MEMORY[0x20F2F58E0](v56);
      break;
    default:
      sub_20B5DF134(v55, v52, &unk_27C762300);
      MEMORY[0x20F2F58E0](1);
      sub_20B52F9E8(v52, v50, &unk_27C762300);
      if ((*(v44 + 48))(v50, 1, v43) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        (*(v44 + 32))(v46, v50, v43);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C7681C8, MEMORY[0x277D51CF0]);
        sub_20C13C7C4();
        (*(v44 + 8))(v46, v43);
      }

      result = sub_20B520158(v52, &unk_27C762300);
      break;
  }

  return result;
}

uint64_t sub_20BDA647C(__int128 *a1)
{
  if (v1[1])
  {
    sub_20C13E184();
    sub_20C13CA64();
    if (v1[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_20C13E184();
    if (v1[5])
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_20C13E184();
    goto LABEL_8;
  }

  sub_20C13E184();
  if (!v1[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
  if (!v1[5])
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_20C13E184();
  sub_20C13CA64();
LABEL_8:
  type metadata accessor for ButtonAction(0);
  return sub_20BDA4D9C(a1);
}

uint64_t sub_20BDA65F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BDA6654(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_20C13E164();
  a3(v5);
  return sub_20C13E1B4();
}

uint64_t sub_20BDA66B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_20C13E164();
  a4(v6);
  return sub_20C13E1B4();
}

uint64_t sub_20BDA6744(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfItemX();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v12, v9);
  if (v12)
  {
    v14 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v22 = *(v5 + 72);
    do
    {
      sub_20BDAAE68(v14, v11, type metadata accessor for ShelfItemX);
      sub_20BDAAE68(v11, v7, type metadata accessor for ShelfItemX);
      v15 = *v7;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 64);
      MEMORY[0x20F2F58E0](0);
      sub_20BBA7D74(a1, v15);

      v19 = sub_20C135214();
      sub_20BDA65F4(&qword_27C762F80, MEMORY[0x277D51640]);
      sub_20C13C7C4();
      (*(*(v19 - 8) + 8))(v7 + v17, v19);
      v20 = sub_20C133954();
      sub_20BDA65F4(&qword_27C767540, MEMORY[0x277D50180]);
      sub_20C13C7C4();
      (*(*(v20 - 8) + 8))(v7 + v18, v20);
      result = sub_20BDAAE08(v11, type metadata accessor for ShelfItemX);
      v14 += v22;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_20BDA69E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DatePickerItem();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v8, v5);
  if (v8)
  {
    v10 = *(v3 + 24);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_20BDAAE68(v11, v7, type metadata accessor for DatePickerItem);
      sub_20C133594();
      sub_20BDA65F4(&qword_27C763118, MEMORY[0x277D4FFA8]);
      sub_20C13C7C4();
      sub_20C13CA64();
      MEMORY[0x20F2F58E0](v7[v10]);
      result = sub_20BDAAE08(v7, type metadata accessor for DatePickerItem);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_20BDA6B7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = v6;

      sub_20C13CA64();
      if (v6)
      {
        sub_20C13E184();
        v9 = v8;
        sub_20C13D604();

        if (v7 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_20C13E184();
        if (v7 < 0)
        {
LABEL_9:
          MEMORY[0x20F2F58E0](1);
          goto LABEL_4;
        }
      }

      MEMORY[0x20F2F58E0](0);
LABEL_4:
      sub_20C13CA64();
      v5 += 32;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_20BDA6D0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {
      v5 += 32;
      sub_20C13E184();

      sub_20C13CA64();
      sub_20C134744();
      sub_20C13CA64();

      --v3;
    }

    while (v3);
  }

  return result;
}