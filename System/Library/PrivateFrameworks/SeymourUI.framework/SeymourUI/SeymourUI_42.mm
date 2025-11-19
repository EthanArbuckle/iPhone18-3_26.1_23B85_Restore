uint64_t sub_20B9C70A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_20B9C7108(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  a2[2] = a1[2];
  a2[3] = v4;
  *a2 = v2;
  a2[1] = v3;
  return a2;
}

uint64_t sub_20B9C7120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B9C7208()
{
  result = qword_27C768880;
  if (!qword_27C768880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768880);
  }

  return result;
}

unint64_t sub_20B9C7294()
{
  result = qword_27C768890;
  if (!qword_27C768890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768890);
  }

  return result;
}

unint64_t sub_20B9C7338()
{
  result = qword_27C7688B8;
  if (!qword_27C7688B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7688B8);
  }

  return result;
}

uint64_t sub_20B9C739C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BBD8FF4(a1, v4, v5, v6);
}

uint64_t sub_20B9C7450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B9C74B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BBD8F0C(a1, v4, v5, v6);
}

unint64_t sub_20B9C7664()
{
  result = qword_27C7689C8;
  if (!qword_27C7689C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7689C8);
  }

  return result;
}

uint64_t sub_20B9C76B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B671D24(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_20B9C7780()
{
  sub_20C1344C4();

  return sub_20BB2F2C4();
}

uint64_t sub_20B9C789C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B7E30A0(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_20B9C7994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B931DEC(a1, v4, v5, v6);
}

uint64_t sub_20B9C7A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_135Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B9C7AF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20C0E5BC4(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_20B9C7BD0()
{
  result = qword_27C768A50;
  if (!qword_27C768A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768A50);
  }

  return result;
}

uint64_t sub_20B9C7C3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BD48EA0(a1, v4, v5, v6);
}

uint64_t sub_20B9C7D00(uint64_t a1)
{
  type metadata accessor for ActivityTypeIconView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v9 = sub_20B9C7EA4(a1, qword_282287768);
  v10 = v4;
  MEMORY[0x20F2F4230](0x536574697270732DLL, 0xEC00000074656568);
  v5 = v3;
  v6 = sub_20C13C914();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  if (v7)
  {

    return v7;
  }

  else
  {
    sub_20C13DC94();

    MEMORY[0x20F2F4230](v9, v10);
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t sub_20B9C7EA4(uint64_t a1, void *a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20B6B1F5C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A80);
  swift_arrayDestroy();
  if (v8[2] && (v9 = sub_20B65AC3C(a1), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 16 * v9);

    return v11;
  }

  else
  {

    sub_20C13B534();
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 141558274;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2048;
      *(v15 + 14) = a1;
      _os_log_impl(&dword_20B517000, v13, v14, "Unknown activity type: %{mask.hash}lu", v15, 0x16u);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0x726568746FLL;
  }
}

id sub_20B9C8094@<X0>(id a1@<X1>, char a2@<W0>, uint64_t a3@<X8>)
{
  v6 = *MEMORY[0x277D75060];
  v7 = *(MEMORY[0x277D75060] + 8);
  v8 = *(MEMORY[0x277D75060] + 16);
  v9 = *(MEMORY[0x277D75060] + 24);
  [objc_msgSend(a1 container)];
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();
  if (a2)
  {
    sub_20B755B8C(v36, v11);
    sub_20B5F320C(v36);
    v14 = *v36;
    v15 = [objc_opt_self() flexibleSpacing_];
    v16 = [objc_opt_self() spacingForLeading:v15 top:0 trailing:0 bottom:0];

    v17 = v13 < v11;
    if (v13 >= v11)
    {
      v18 = 0.4;
    }

    else
    {
      v18 = 0.3;
    }

    v19 = dbl_20C166E50[v17];
    v20 = objc_opt_self();
    v21 = [v20 absoluteDimension_];
    v22 = [v20 absoluteDimension_];
    v23 = 30.0;
  }

  else
  {
    sub_20B755B8C(v35, v11);
    sub_20B5F320C(v35);
    v14 = *v35;
    [objc_msgSend(a1 container)];
    v25 = v24;
    swift_unknownObjectRelease();
    sub_20B755B8C(v36, v25);
    sub_20B5F320C(v36);
    v26 = *&v36[1];
    v27 = objc_opt_self();
    v28 = [v27 fixedSpacing_];
    v29 = [v27 flexibleSpacing_];
    v16 = [objc_opt_self() spacingForLeading:v28 top:0 trailing:v29 bottom:0];

    sub_20B72097C(0, 1.0, v11);
    v31 = v30;
    v32 = objc_opt_self();
    v21 = [v32 absoluteDimension_];
    v22 = [v32 absoluteDimension_];
    v23 = v14;
  }

  result = v22;
  *a3 = 0;
  *(a3 + 8) = v14;
  *(a3 + 16) = v23;
  *(a3 + 24) = v14;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  *(a3 + 64) = 0;
  *(a3 + 72) = v21;
  v34 = MEMORY[0x277D84F90];
  *(a3 + 80) = MEMORY[0x277D84F90];
  *(a3 + 88) = v6;
  *(a3 + 96) = v7;
  *(a3 + 104) = v8;
  *(a3 + 112) = v9;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 120) = v34;
  *(a3 + 144) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = v6;
  *(a3 + 176) = v7;
  *(a3 + 184) = v8;
  *(a3 + 192) = v9;
  *(a3 + 200) = v16;
  *(a3 + 208) = result;
  return result;
}

uint64_t sub_20B9C83B0@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_20B9C8428()
{
  v1 = type metadata accessor for RemoteDisplayPresenter.State(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_state;
  swift_beginAccess();
  sub_20B9CF428(v0 + v4, v3, type metadata accessor for RemoteDisplayPresenter.State);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_20B9C8B90(v3, type metadata accessor for RemoteDisplayPresenter.State);
  }

  else
  {
    v6 = *(v5 + 48);
    v7 = *&v3[*(v5 + 64)];
    sub_20B9C8B90(&v3[v6], type metadata accessor for NavigationSource);
    sub_20B9C8B90(v3, MEMORY[0x277D4DFB8]);
    if (v7)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_20B9C85F0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20B9C865C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20B8DD284;
}

id RemoteDisplayPresenter.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v2[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_eventHub] = v10[0];
  sub_20C133AA4();
  v2[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_platform] = v10[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(v10, &v2[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_sessionClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v10, &v2[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_subscriptionToken] = sub_20C13A914();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for RemoteDisplayPresenter(0);
  v6 = objc_msgSendSuper2(&v9, sel_init);
  swift_getObjectType();
  sub_20C13B0E4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = v6;
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v10);

  swift_getObjectType();
  sub_20C13A904();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v10);

  swift_getObjectType();
  sub_20C13AA24();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v10);

  return v7;
}

uint64_t sub_20B9C8B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20B9C8C2C()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_20C13B574();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    sub_20B9CB1A0();
  }
}

uint64_t sub_20B9C8D5C(char *a1, uint64_t a2)
{
  v3 = v2;
  v184 = a2;
  v182 = a1;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v164 = v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v180 = v143 - v6;
  v163 = v7;
  MEMORY[0x28223BE20](v8);
  v165 = v143 - v9;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v185 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v162 = v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v181 = v143 - v12;
  v161 = v13;
  MEMORY[0x28223BE20](v14);
  v169 = v143 - v15;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764410);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v16;
  MEMORY[0x28223BE20](v17);
  v176 = v143 - v18;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v168 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v158 = v143 - v21;
  MEMORY[0x28223BE20](v22);
  v159 = v143 - v23;
  v157 = v24;
  MEMORY[0x28223BE20](v25);
  v160 = v143 - v26;
  v186 = type metadata accessor for NavigationSource();
  v190 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v149 = v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v177 = v143 - v29;
  MEMORY[0x28223BE20](v30);
  v148 = v143 - v31;
  MEMORY[0x28223BE20](v32);
  v152 = v143 - v33;
  v183 = v34;
  MEMORY[0x28223BE20](v35);
  v174 = v143 - v36;
  v146 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v146);
  v144 = v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v145 = v143 - v39;
  MEMORY[0x28223BE20](v40);
  v188 = (v143 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  MEMORY[0x28223BE20](v42 - 8);
  v147 = v143 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = v143 - v45;
  v47 = sub_20C132C14();
  v187 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v172 = v143 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v171 = v143 - v50;
  MEMORY[0x28223BE20](v51);
  v53 = v143 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = v143 - v55;
  v151 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v151);
  v150 = v143 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v175 = v143 - v59;
  v60 = sub_20C13BB84();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v173 = v143 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v65 = v143 - v64;
  v66 = type metadata accessor for RemoteDisplayPresenter.State(0);
  MEMORY[0x28223BE20](v66 - 8);
  v68 = v143 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_state;
  swift_beginAccess();
  v189 = v3;
  sub_20B9CF428(v3 + v69, v68, type metadata accessor for RemoteDisplayPresenter.State);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  LODWORD(v69) = (*(*(v70 - 8) + 48))(v68, 1, v70);
  result = sub_20B9C8B90(v68, type metadata accessor for RemoteDisplayPresenter.State);
  if (v69 == 1)
  {
    sub_20C13B534();
    sub_20C13BB64();
    v72 = *(v61 + 8);
    v143[2] = v61 + 8;
    v72(v65, v60);
    v73 = v187;
    v74 = *(v187 + 16);
    v74(v56, v182, v47);
    (*(v190 + 7))(v46, 1, 1, v186);
    v74(v53, v56, v47);
    sub_20BBD6CD8(v53, v188);
    v75 = v171;
    v182 = v56;
    v74(v171, v56, v47);
    v76 = v73;
    v77 = v46;
    v78 = type metadata accessor for NavigationSharingURLInfo();
    v79 = v174;
    (*(v76 + 56))(v174 + *(v78 + 20), 1, 1, v47);
    v80 = *(v76 + 32);
    v81 = v190;
    v82 = v47;
    v80(v79, v75, v47);
    v83 = (v79 + *(v78 + 24));
    *v83 = 0;
    v83[1] = 0;
    v84 = v186;
    swift_storeEnumTagMultiPayload();
    v185 = v77;
    v85 = v147;
    sub_20B610B00(v77, v147);
    v86 = v81;
    v87 = *(v81 + 6);
    if (v87(v85, 1, v84) == 1)
    {
      v88 = v79;
      v89 = v152;
      sub_20B9CF428(v88, v152, type metadata accessor for NavigationSource);
      v90 = v87(v85, 1, v84) == 1;
      v91 = v85;
      v92 = v149;
      if (!v90)
      {
        sub_20B520158(v91, &unk_27C767800);
      }
    }

    else
    {
      v89 = v152;
      sub_20B9CF968(v85, v152, type metadata accessor for NavigationSource);
      v92 = v149;
    }

    v93 = v148;
    sub_20B9CF428(v89, v148, type metadata accessor for NavigationSource);
    v94 = v82;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20B9C8B90(v93, type metadata accessor for NavigationSource);
      v95 = v150;
    }

    else
    {
      sub_20B9C8B90(v93, type metadata accessor for NavigationSharingURLInfo);
      v96 = v188;
      v97 = v145;
      sub_20B9CF428(v188, v145, type metadata accessor for NavigationResource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v95 = v150;
      if (EnumCaseMultiPayload == 10)
      {
        sub_20B9C8B90(v174, type metadata accessor for NavigationSource);
        sub_20B520158(v185, &unk_27C767800);
        (*(v187 + 8))(v182, v94);
        sub_20B9CF968(v96, v95, type metadata accessor for NavigationResource);
        v99 = v151;
        *(v95 + *(v151 + 20)) = 0;
        type metadata accessor for NavigationIntent();
        v100 = 2;
        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }

      sub_20B9C8B90(v97, type metadata accessor for NavigationResource);
    }

    sub_20B9CF428(v89, v92, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      v101 = type metadata accessor for NavigationSource;
      v102 = v92;
LABEL_17:
      sub_20B9C8B90(v102, v101);
      v110 = v188;
      sub_20B9CF428(v188, v95, type metadata accessor for NavigationResource);
      v111 = v171;
      v112 = v182;
      v74(v171, v182, v94);
      v99 = v151;
      sub_20BB7F2E8(v111, 1, v95 + *(v151 + 20));
      sub_20B9C8B90(v174, type metadata accessor for NavigationSource);
      sub_20B9C8B90(v110, type metadata accessor for NavigationResource);
      sub_20B520158(v185, &unk_27C767800);
      (*(v187 + 8))(v112, v94);
      v100 = 0;
      v109 = v190;
      goto LABEL_18;
    }

    sub_20B9C8B90(v92, type metadata accessor for NavigationSharingURLInfo);
    v103 = v188;
    v104 = v144;
    sub_20B9CF428(v188, v144, type metadata accessor for NavigationResource);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v101 = type metadata accessor for NavigationResource;
      v102 = v104;
      goto LABEL_17;
    }

    sub_20B9C8B90(v174, type metadata accessor for NavigationSource);
    sub_20B520158(v185, &unk_27C767800);
    v105 = v94;
    v106 = *(v187 + 8);
    v106(v182, v105);
    v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0) + 48);
    v108 = sub_20C1388F4();
    (*(*(v108 - 8) + 8))(v104 + v107, v108);
    v106(v104, v105);
    sub_20B9CF968(v103, v95, type metadata accessor for NavigationResource);
    v99 = v151;
    *(v95 + *(v151 + 20)) = 1;
    type metadata accessor for NavigationIntent();
    swift_storeEnumTagMultiPayload();
    v100 = 2;
LABEL_15:
    v109 = v86;
LABEL_18:
    v113 = v95 + v99[6];
    v188 = type metadata accessor for NavigationSource;
    sub_20B9CF968(v89, v113, type metadata accessor for NavigationSource);
    *(v95 + v99[7]) = 0;
    *(v95 + v99[8]) = v100;
    *(v95 + v99[9]) = 0;
    sub_20B9CF968(v95, v175, type metadata accessor for NavigationRequest);
    v114 = v176;
    sub_20BD24DFC(*(v189 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_dependencies), v176);
    v115 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v190 = type metadata accessor for NavigationSource;
    v116 = v177;
    sub_20B9CF428(v184, v177, type metadata accessor for NavigationSource);
    v117 = (*(v109 + 80) + 24) & ~*(v109 + 80);
    v118 = swift_allocObject();
    *(v118 + 16) = v115;
    sub_20B9CF968(v116, v118 + v117, type metadata accessor for NavigationSource);
    v119 = swift_allocObject();
    *(v119 + 16) = sub_20B9CF560;
    *(v119 + 24) = v118;
    v120 = v155;
    v121 = v154;
    v122 = v114;
    v123 = v156;
    (*(v155 + 16))(v154, v122, v156);
    v124 = (*(v120 + 80) + 16) & ~*(v120 + 80);
    v125 = (v153 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    (*(v120 + 32))(v126 + v124, v121, v123);
    v127 = (v126 + v125);
    *v127 = sub_20B9CF5E0;
    v127[1] = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
    v128 = v159;
    sub_20C137C94();
    (*(v120 + 8))(v176, v123);
    v129 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_20B9CF428(v184, v116, v190);
    v130 = swift_allocObject();
    *(v130 + 16) = v129;
    sub_20B9CF968(v116, v130 + v117, v188);
    v131 = swift_allocObject();
    *(v131 + 16) = sub_20B9CF7F0;
    *(v131 + 24) = v130;
    v132 = v178;
    v133 = v158;
    v134 = v179;
    (*(v178 + 16))(v158, v128, v179);
    v135 = (*(v132 + 80) + 16) & ~*(v132 + 80);
    v136 = (v157 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
    v137 = swift_allocObject();
    (*(v132 + 32))(v137 + v135, v133, v134);
    v138 = (v137 + v136);
    *v138 = sub_20B9CF870;
    v138[1] = v131;
    v139 = v160;
    sub_20C137C94();
    v140 = *(v132 + 8);
    v140(v128, v134);
    v141 = sub_20C137CB4();
    v142 = swift_allocObject();
    *(v142 + 16) = 0;
    *(v142 + 24) = 0;
    v141(sub_20B52E438, v142);

    v140(v139, v134);
    return sub_20B9C8B90(v175, type metadata accessor for NavigationRequest);
  }

  return result;
}

void sub_20B9CABF0(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20B9CCD44(a1, a2);
  }

  *a3 = Strong == 0;
}

void sub_20B9CAC80(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20B9CC95C(a1);
  }

  *a2 = Strong == 0;
}

BOOL sub_20B9CAD00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20B9CC95C(a2);
  }

  return Strong == 0;
}

uint64_t sub_20B9CAD64(void *a1, uint64_t a2)
{
  v40 = a2;
  v41 = a1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteDisplayPresenter.State(0);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C13A484();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_state;
  swift_beginAccess();
  sub_20B9CF428(v2 + v18, v11, type metadata accessor for RemoteDisplayPresenter.State);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    sub_20B9C8B90(v11, type metadata accessor for RemoteDisplayPresenter.State);
    sub_20C13B574();
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v3;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20B517000, v21, v22, "Wrong state to be in when attaching PIP. This is going to put PIP in a weird state", v24, 2u);
      MEMORY[0x20F2F6A40](v24, -1, -1);

      return (*(v4 + 8))(v6, v23);
    }

    else
    {

      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    v26 = *(v19 + 48);

    v37 = MEMORY[0x277D4DFB8];
    sub_20B9CF968(v11, v17, MEMORY[0x277D4DFB8]);
    sub_20B9CF968(&v11[v26], v14, type metadata accessor for NavigationSource);
    ObjectType = swift_getObjectType();
    v28 = v40;
    v29 = *(v40 + 56);
    v38 = v2;
    v29(v2, ObjectType, v40);
    v30 = *(v19 + 48);
    v31 = v39;
    v32 = (v39 + *(v19 + 64));
    sub_20B9CF968(v17, v39, v37);
    sub_20B9CF968(v14, v31 + v30, type metadata accessor for NavigationSource);
    v33 = v41;
    *v32 = v41;
    v32[1] = v28;
    (*(v20 + 56))(v31, 0, 1, v19);
    v34 = v38;
    swift_beginAccess();
    v35 = v33;
    sub_20B9CF9D0(v31, v34 + v18);
    return swift_endAccess();
  }
}

uint64_t sub_20B9CB1A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v135 = v129 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v4 - 8);
  v134 = v129 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v6 - 8);
  v133 = v129 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v8 - 8);
  v132 = v129 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v131 = v129 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v12 - 8);
  v130 = v129 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v14 - 8);
  v142 = v129 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v16 - 8);
  v141 = v129 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v18 - 8);
  v140 = v129 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v20 - 8);
  v139 = v129 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v22 - 8);
  v157 = v129 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v24 - 8);
  v156 = v129 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v26 - 8);
  v155 = v129 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v28 - 8);
  v154 = v129 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v30 - 8);
  v153 = v129 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v32 - 8);
  v152 = v129 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v34 - 8);
  v151 = v129 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v36 - 8);
  v150 = v129 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v38 - 8);
  v149 = v129 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v40 - 8);
  v148 = v129 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v42 - 8);
  v147 = v129 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v44 - 8);
  v146 = v129 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v46 - 8);
  v145 = v129 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v48 - 8);
  v144 = v129 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v50 - 8);
  v143 = v129 - v51;
  v138 = sub_20C1337D4();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = v129 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v53 - 8);
  v159 = v129 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_20C13A484();
  MEMORY[0x28223BE20](v55 - 8);
  v158 = v129 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for RemoteDisplayPresenter.State(0);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = v129 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v62 = v129 - v61;
  v63 = sub_20C13BB84();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = v129 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v69 = v129 - v68;
  sub_20C13B574();
  sub_20C13BB64();
  v70 = *(v64 + 8);
  v71 = v69;
  v72 = v1;
  v70(v71, v63);
  v73 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_state;
  swift_beginAccess();
  sub_20B9CF428(v72 + v73, v62, type metadata accessor for RemoteDisplayPresenter.State);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v62, 1, v74) == 1)
  {
    sub_20C13B574();
    v76 = sub_20C13BB74();
    v77 = sub_20C13D1F4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_20B517000, v76, v77, "Disconnected when not activated", v78, 2u);
      MEMORY[0x20F2F6A40](v78, -1, -1);
    }

    return (v70)(v66, v63);
  }

  else
  {
    v80 = *(v74 + 48);
    v81 = &v62[*(v74 + 64)];
    v83 = *v81;
    v82 = *(v81 + 1);
    v84 = v158;
    sub_20B9CF968(v62, v158, MEMORY[0x277D4DFB8]);
    v85 = &v62[v80];
    v86 = v159;
    sub_20B9CF968(v85, v159, type metadata accessor for NavigationSource);
    (*(v75 + 56))(v59, 1, 1, v74);
    swift_beginAccess();
    sub_20B9CF9D0(v59, v72 + v73);
    swift_endAccess();
    if (v83)
    {
      v87 = v84;
      ObjectType = swift_getObjectType();
      v89 = v86;
      v90 = *(v82 + 72);
      v91 = v83;
      v90(ObjectType, v82);
      v92 = v89;
      (*(v82 + 24))(ObjectType, v82);
    }

    else
    {
      sub_20C13CE94();
      v160 = 1;
      v93 = v136;
      sub_20C1337B4();
      v129[0] = *(v72 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_sessionClient + 24);
      v129[1] = *(v72 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_sessionClient + 32);
      v129[3] = __swift_project_boxed_opaque_existential_1((v72 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_sessionClient), v129[0]);
      v129[2] = sub_20C13A464();
      v94 = sub_20C133D84();
      (*(*(v94 - 8) + 56))(v143, 1, 1, v94);
      v95 = sub_20C135854();
      (*(*(v95 - 8) + 56))(v144, 1, 1, v95);
      v96 = sub_20C136194();
      (*(*(v96 - 8) + 56))(v145, 1, 1, v96);
      v97 = sub_20C133DD4();
      (*(*(v97 - 8) + 56))(v146, 1, 1, v97);
      v98 = sub_20C135274();
      (*(*(v98 - 8) + 56))(v147, 1, 1, v98);
      v99 = sub_20C134514();
      (*(*(v99 - 8) + 56))(v148, 1, 1, v99);
      v100 = sub_20C133B04();
      (*(*(v100 - 8) + 56))(v149, 1, 1, v100);
      v101 = sub_20C134C04();
      (*(*(v101 - 8) + 56))(v150, 1, 1, v101);
      v102 = sub_20C1368F4();
      (*(*(v102 - 8) + 56))(v151, 1, 1, v102);
      v103 = sub_20C134914();
      (*(*(v103 - 8) + 56))(v152, 1, 1, v103);
      v104 = sub_20C133374();
      (*(*(v104 - 8) + 56))(v153, 1, 1, v104);
      v105 = sub_20C135B74();
      (*(*(v105 - 8) + 56))(v154, 1, 1, v105);
      v106 = sub_20C134CD4();
      (*(*(v106 - 8) + 56))(v155, 1, 1, v106);
      v107 = sub_20C136EB4();
      (*(*(v107 - 8) + 56))(v156, 1, 1, v107);
      v108 = sub_20C133494();
      (*(*(v108 - 8) + 56))(v157, 1, 1, v108);
      v109 = sub_20C134594();
      (*(*(v109 - 8) + 56))(v139, 1, 1, v109);
      v110 = sub_20C138184();
      (*(*(v110 - 8) + 56))();
      v111 = sub_20C1363D4();
      (*(*(v111 - 8) + 56))(v141, 1, 1, v111);
      v112 = sub_20C1337A4();
      (*(*(v112 - 8) + 56))();
      v129[4] = v72;
      v113 = v137;
      v114 = v130;
      v115 = v93;
      v116 = v138;
      (*(v137 + 16))(v130, v115, v138);
      (*(v113 + 56))(v114, 0, 1, v116);
      v117 = sub_20C134A94();
      v118 = v131;
      (*(*(v117 - 8) + 56))(v131, 1, 1, v117);
      v119 = sub_20C135364();
      v120 = v132;
      (*(*(v119 - 8) + 56))(v132, 1, 1, v119);
      v121 = sub_20C136484();
      v122 = v133;
      (*(*(v121 - 8) + 56))(v133, 1, 1, v121);
      v123 = sub_20C136784();
      v124 = v134;
      (*(*(v123 - 8) + 56))(v134, 1, 1, v123);
      v125 = sub_20C137FE4();
      v126 = v135;
      (*(*(v125 - 8) + 56))(v135, 1, 1, v125);
      v127 = v141;
      v128 = v139;
      sub_20C13A174();

      sub_20B520158(v126, &unk_27C768AC0);
      sub_20B520158(v124, &unk_27C765070);
      sub_20B520158(v122, &unk_27C765CB0);
      sub_20B520158(v120, &unk_27C765080);
      sub_20B520158(v118, &unk_27C768AD0);
      v92 = v159;
      sub_20B520158(v114, &unk_27C765090);
      v87 = v158;
      sub_20B520158(v142, &unk_27C768AE0);
      sub_20B520158(v127, &unk_27C7650A0);
      sub_20B520158(v140, &unk_27C768AF0);
      sub_20B520158(v128, &unk_27C7650B0);
      sub_20B520158(v157, &unk_27C768B00);
      sub_20B520158(v156, &unk_27C7650C0);
      sub_20B520158(v155, &unk_27C768B10);
      sub_20B520158(v154, &unk_27C7650D0);
      sub_20B520158(v153, &unk_27C768B20);
      sub_20B520158(v152, &unk_27C7650E0);
      sub_20B520158(v151, &unk_27C767260);
      sub_20B520158(v150, &unk_27C7650F0);
      sub_20B520158(v149, &qword_27C768B30);
      sub_20B520158(v148, &unk_27C765050);
      sub_20B520158(v147, &unk_27C765100);
      sub_20B520158(v146, &unk_27C7687F0);
      sub_20B520158(v145, &unk_27C765110);
      sub_20B520158(v144, &unk_27C76BBF0);
      sub_20B520158(v143, &unk_27C765120);
      (*(v137 + 8))(v136, v138);
      v91 = 0;
    }

    sub_20B9CC95C(v92);

    sub_20B9C8B90(v92, type metadata accessor for NavigationSource);
    return sub_20B9C8B90(v87, MEMORY[0x277D4DFB8]);
  }
}

uint64_t sub_20B9CC95C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = sub_20C13BB84();
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20B9CF428(a1, v12, type metadata accessor for NavigationSource);
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = a1;
    v21 = v20;
    v40[0] = v20;
    *v19 = 136446210;
    sub_20B9CF428(v12, v9, type metadata accessor for NavigationSource);
    v22 = sub_20C13C9D4();
    v36 = v13;
    v24 = v23;
    sub_20B9C8B90(v12, type metadata accessor for NavigationSource);
    v25 = sub_20B51E694(v22, v24, v40);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_20B517000, v16, v17, "Dismiss for %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v26 = v21;
    a1 = v37;
    MEMORY[0x20F2F6A40](v26, -1, -1);
    v27 = v19;
    v2 = v38;
    MEMORY[0x20F2F6A40](v27, -1, -1);

    (*(v39 + 8))(v15, v36);
  }

  else
  {

    sub_20B9C8B90(v12, type metadata accessor for NavigationSource);
    (*(v39 + 8))(v15, v13);
  }

  sub_20B9CF428(a1, v6, type metadata accessor for NavigationSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20B9C8B90(v6, type metadata accessor for NavigationSource);
  v29 = v2 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display;
  if (EnumCaseMultiPayload == 2)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 24))(ObjectType, v31);
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v33 = *(v29 + 8);
    v34 = swift_getObjectType();
    (*(v33 + 8))(v34, v33);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20B9CCD44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RemoteDisplayPresenter.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  v14 = *(v13 + 48);
  v15 = &v8[*(v13 + 64)];
  v16 = type metadata accessor for WorkoutSessionConfiguration();
  sub_20B9CF428(a1 + *(v16 + 28), v8, MEMORY[0x277D4DFB8]);
  sub_20B9CF428(a2, &v8[v14], type metadata accessor for NavigationSource);
  *v15 = 0;
  *(v15 + 1) = 0;
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v17 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_state;
  swift_beginAccess();
  sub_20B9CF9D0(v8, v3 + v17);
  swift_endAccess();
  v18 = v3 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v20 + 40))(a1, ObjectType, v20);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B9CCFDC(uint64_t a1)
{
  v104 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v1 - 8);
  v110 = &v100 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v100 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v100 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v123 = &v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v100 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v15 - 8);
  v120 = &v100 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v17 - 8);
  v105 = &v100 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v19 - 8);
  v119 = &v100 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v21 - 8);
  v122 = &v100 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v23 - 8);
  v131 = &v100 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v25 - 8);
  v130 = &v100 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v27 - 8);
  v129 = &v100 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v29 - 8);
  v128 = &v100 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v31 - 8);
  v126 = &v100 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v33 - 8);
  v124 = &v100 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v35 - 8);
  v125 = &v100 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v37 - 8);
  v127 = &v100 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v100 - v40;
  v113 = &v100 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v100 - v43;
  v114 = &v100 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v100 - v46;
  v115 = &v100 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v100 - v49;
  v116 = &v100 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v100 - v52;
  v117 = &v100 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = &v100 - v55;
  v118 = &v100 - v55;
  v112 = sub_20C1337D4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v58 = &v100 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20C13BB84();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v100 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v60 + 8))(v62, v59);
  sub_20C13CE94();
  v132 = 1;
  v101 = v58;
  sub_20C1337B4();
  v63 = *(v103 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_sessionClient + 24);
  v102 = *(v103 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_sessionClient + 32);
  v103 = __swift_project_boxed_opaque_existential_1((v103 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_sessionClient), v63);
  v104 = sub_20C137D14();
  v64 = sub_20C133D84();
  (*(*(v64 - 8) + 56))(v56, 1, 1, v64);
  v65 = sub_20C135854();
  (*(*(v65 - 8) + 56))(v53, 1, 1, v65);
  v66 = sub_20C136194();
  (*(*(v66 - 8) + 56))(v50, 1, 1, v66);
  v67 = sub_20C133DD4();
  (*(*(v67 - 8) + 56))(v47, 1, 1, v67);
  v68 = sub_20C135274();
  (*(*(v68 - 8) + 56))(v44, 1, 1, v68);
  v69 = sub_20C134514();
  (*(*(v69 - 8) + 56))(v41, 1, 1, v69);
  v70 = sub_20C133B04();
  (*(*(v70 - 8) + 56))(v127, 1, 1, v70);
  v71 = sub_20C134C04();
  (*(*(v71 - 8) + 56))(v125, 1, 1, v71);
  v72 = sub_20C1368F4();
  (*(*(v72 - 8) + 56))(v124, 1, 1, v72);
  v73 = sub_20C134914();
  (*(*(v73 - 8) + 56))(v126, 1, 1, v73);
  v74 = sub_20C133374();
  (*(*(v74 - 8) + 56))(v128, 1, 1, v74);
  v75 = sub_20C135B74();
  (*(*(v75 - 8) + 56))(v129, 1, 1, v75);
  v76 = sub_20C134CD4();
  (*(*(v76 - 8) + 56))(v130, 1, 1, v76);
  v77 = sub_20C136EB4();
  (*(*(v77 - 8) + 56))(v131, 1, 1, v77);
  v78 = sub_20C133494();
  (*(*(v78 - 8) + 56))(v122, 1, 1, v78);
  v79 = sub_20C134594();
  (*(*(v79 - 8) + 56))(v119, 1, 1, v79);
  v80 = sub_20C138184();
  v81 = v105;
  (*(*(v80 - 8) + 56))(v105, 1, 1, v80);
  v82 = sub_20C1363D4();
  (*(*(v82 - 8) + 56))(v120, 1, 1, v82);
  v83 = sub_20C1337A4();
  (*(*(v83 - 8) + 56))(v121, 1, 1, v83);
  v84 = v111;
  v85 = v106;
  v86 = v112;
  (*(v111 + 16))(v106, v58, v112);
  v87 = v85;
  (*(v84 + 56))(v85, 0, 1, v86);
  v88 = sub_20C134A94();
  (*(*(v88 - 8) + 56))(v123, 1, 1, v88);
  v89 = sub_20C135364();
  v90 = v107;
  (*(*(v89 - 8) + 56))(v107, 1, 1, v89);
  v91 = sub_20C136484();
  v92 = v108;
  (*(*(v91 - 8) + 56))(v108, 1, 1, v91);
  v93 = sub_20C136784();
  v94 = v109;
  (*(*(v93 - 8) + 56))(v109, 1, 1, v93);
  v95 = sub_20C137FE4();
  v96 = v110;
  (*(*(v95 - 8) + 56))(v110, 1, 1, v95);
  v97 = v119;
  v98 = v122;
  sub_20C13A174();

  sub_20B520158(v96, &unk_27C768AC0);
  sub_20B520158(v94, &unk_27C765070);
  sub_20B520158(v92, &unk_27C765CB0);
  sub_20B520158(v90, &unk_27C765080);
  sub_20B520158(v123, &unk_27C768AD0);
  sub_20B520158(v87, &unk_27C765090);
  sub_20B520158(v121, &unk_27C768AE0);
  sub_20B520158(v120, &unk_27C7650A0);
  sub_20B520158(v81, &unk_27C768AF0);
  sub_20B520158(v97, &unk_27C7650B0);
  sub_20B520158(v98, &unk_27C768B00);
  sub_20B520158(v131, &unk_27C7650C0);
  sub_20B520158(v130, &unk_27C768B10);
  sub_20B520158(v129, &unk_27C7650D0);
  sub_20B520158(v128, &unk_27C768B20);
  sub_20B520158(v126, &unk_27C7650E0);
  sub_20B520158(v124, &unk_27C767260);
  sub_20B520158(v125, &unk_27C7650F0);
  sub_20B520158(v127, &qword_27C768B30);
  sub_20B520158(v113, &unk_27C765050);
  sub_20B520158(v114, &unk_27C765100);
  sub_20B520158(v115, &unk_27C7687F0);
  sub_20B520158(v116, &unk_27C765110);
  sub_20B520158(v117, &unk_27C76BBF0);
  sub_20B520158(v118, &unk_27C765120);
  return (*(v111 + 8))(v101, v112);
}

id RemoteDisplayPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteDisplayPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteDisplayPresenter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall RemoteDisplayPresenter.playerViewControllerWillStopPictureInPicture(_:)(AVPlayerViewController *a1)
{
  v1 = sub_20C138474();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  swift_getObjectType();
  sub_20C138464();
  sub_20B9D072C(&unk_27C76F050, MEMORY[0x277D53FF0]);
  sub_20C13A764();
  (*(v2 + 8))(v4, v1);
}

Swift::Void __swiftcall RemoteDisplayPresenter.playerViewControllerDidStopPictureInPicture(_:)(AVPlayerViewController *a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v2 + 8))(v4, v1);
  sub_20B9CB1A0();
}

uint64_t RemoteDisplayPresenter.playerViewController(_:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v44[2] = a3;
  v45 = a2;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v44 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v44 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v44 - v15;
  v17 = type metadata accessor for RemoteDisplayPresenter.State(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_state;
  swift_beginAccess();
  sub_20B9CF428(v3 + v23, v19, type metadata accessor for RemoteDisplayPresenter.State);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  if ((*(*(v24 - 8) + 48))(v19, 1, v24) == 1)
  {
    sub_20B9C8B90(v19, type metadata accessor for RemoteDisplayPresenter.State);
    sub_20C13B574();
    v25 = sub_20C13BB74();
    v26 = sub_20C13D1D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20B517000, v25, v26, "Not activated, so we cannot restore the PIP!", v27, 2u);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return v45(0);
  }

  else
  {
    v44[1] = v3;
    v29 = *(v24 + 48);
    v30 = &v19[*(v24 + 64)];
    v32 = *v30;
    v31 = *(v30 + 1);
    sub_20B9CF968(&v19[v29], v22, type metadata accessor for NavigationSource);
    sub_20B9C8B90(v19, MEMORY[0x277D4DFB8]);
    if (v32)
    {
      ObjectType = swift_getObjectType();
      if ((*(v31 + 16))(ObjectType, v31))
      {
        sub_20C13B574();
        sub_20C13BB64();
        (*(v5 + 8))(v16, v4);
        (*(v31 + 64))(ObjectType, v31);
        v45(1);
      }

      else
      {
        sub_20C13B574();
        v41 = sub_20C13BB74();
        v42 = sub_20C13D1D4();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_20B517000, v41, v42, "ViewController says we should not restore PIP", v43, 2u);
          MEMORY[0x20F2F6A40](v43, -1, -1);
        }

        (*(v5 + 8))(v13, v4);
        v45(0);
        sub_20B9CC95C(v22);
      }
    }

    else
    {
      sub_20C13B574();
      v34 = sub_20C13BB74();
      v35 = sub_20C13D1D4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v47 = v31;
        v48 = v37;
        *v36 = 136315138;
        v46 = 0;
        v38 = sub_20C13C9D4();
        v40 = sub_20B51E694(v38, v39, &v48);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_20B517000, v34, v35, "Wrong Mode: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x20F2F6A40](v37, -1, -1);
        MEMORY[0x20F2F6A40](v36, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
      v45(0);
      sub_20B9CB1A0();
    }

    return sub_20B9C8B90(v22, type metadata accessor for NavigationSource);
  }
}

uint64_t sub_20B9CF20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);

  return sub_20C137C94();
}

uint64_t sub_20B9CF2A4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v6);
  v4 = v6;
  v6 = v6;
  v7 = 0;
  a1(&v6);

  return sub_20B71C58C(v4, 0);
}

uint64_t sub_20B9CF334@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_20B9CF428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_20B9CF490()
{
  v1 = *(type metadata accessor for NavigationSource() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_20B9CAD00(v2, v3);
}

uint64_t sub_20B9CF4F4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(type metadata accessor for NavigationSource() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = sub_20C135024();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = sub_20C132C14();
    v8 = *(v7 - 8);
    v12 = *(v8 + 8);
    v12(v0 + v3, v7);
    v9 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v8 + 48))(v5 + v9, 1, v7))
    {
      v12(v5 + v9, v7);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B9CF8A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B9CF968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B9CF9D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteDisplayPresenter.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s9SeymourUI22RemoteDisplayPresenterC037playerViewControllerDidStartPictureInK0yySo08AVPlayergH0CF_0()
{
  v1 = v0;
  v2 = sub_20C138414();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  swift_getObjectType();
  sub_20C138404();
  sub_20B9D072C(&unk_27C768950, MEMORY[0x277D53FC0]);
  sub_20C13A764();
  (*(v3 + 8))(v5, v2);
  v10 = v1 + OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_display;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 16))(ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B9CFD08()
{
  result = type metadata accessor for RemoteDisplayPresenter.State(319);
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

uint64_t sub_20B9CFF68(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_20B9CFFB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_20B9D000C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

uint64_t sub_20B9D0064()
{
  sub_20B9D00BC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20B9D00BC()
{
  if (!qword_27C768B58)
  {
    sub_20C13A484();
    type metadata accessor for NavigationSource();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C768B58);
    }
  }
}

uint64_t sub_20B9D0138(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for RemoteDisplayPresenter.State(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC9SeymourUI22RemoteDisplayPresenter_state;
  swift_beginAccess();
  sub_20B9CF428(a1 + v22, v18, type metadata accessor for RemoteDisplayPresenter.State);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A90);
  if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
  {
    sub_20B9C8B90(v18, type metadata accessor for RemoteDisplayPresenter.State);
    sub_20C13B574();
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20B517000, v24, v25, "Not activated, so we cannot restore the PIP!", v26, 2u);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    (*(v4 + 8))(v15, v3);
    return (*(v44 + 16))(v44, 0);
  }

  else
  {
    v28 = *(v23 + 48);
    v29 = &v18[*(v23 + 64)];
    v30 = *v29;
    v31 = *(v29 + 1);
    sub_20B9CF968(&v18[v28], v21, type metadata accessor for NavigationSource);
    sub_20B9C8B90(v18, MEMORY[0x277D4DFB8]);
    if (v30)
    {
      ObjectType = swift_getObjectType();
      if ((*(v31 + 16))(ObjectType, v31))
      {
        sub_20C13B574();
        sub_20C13BB64();
        (*(v4 + 8))(v9, v3);
        (*(v31 + 64))(ObjectType, v31);
        (*(v44 + 16))(v44, 1);
      }

      else
      {
        sub_20C13B574();
        v40 = sub_20C13BB74();
        v41 = sub_20C13D1D4();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_20B517000, v40, v41, "ViewController says we should not restore PIP", v42, 2u);
          MEMORY[0x20F2F6A40](v42, -1, -1);
        }

        (*(v4 + 8))(v6, v3);
        (*(v44 + 16))(v44, 0);
        sub_20B9CC95C(v21);
      }
    }

    else
    {
      sub_20C13B574();
      v33 = sub_20C13BB74();
      v34 = sub_20C13D1D4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46 = v31;
        v47 = v43;
        *v35 = 136315138;
        v45 = 0;
        v36 = sub_20C13C9D4();
        v38 = sub_20B51E694(v36, v37, &v47);

        *(v35 + 4) = v38;
        _os_log_impl(&dword_20B517000, v33, v34, "Wrong Mode: %s", v35, 0xCu);
        v39 = v43;
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x20F2F6A40](v39, -1, -1);
        MEMORY[0x20F2F6A40](v35, -1, -1);
      }

      (*(v4 + 8))(v12, v3);
      (*(v44 + 16))(v44, 0);
      sub_20B9CB1A0();
    }

    return sub_20B9C8B90(v21, type metadata accessor for NavigationSource);
  }
}

uint64_t sub_20B9D072C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AVMediaSelectionGroup.selectionOptions(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C136194();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 options];
  if (!v11)
  {
    sub_20B9D0970();
    sub_20C13CC74();
    v11 = sub_20C13CC54();
  }

  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C14F320;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  MEMORY[0x20F2ED8D0](v14);
  v15 = sub_20C136184();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  *(v13 + 48) = v15;
  *(v13 + 56) = v17;
  v18 = sub_20C13CC54();

  v19 = [v12 mediaSelectionOptionsFromArray:v11 filteredAndSortedAccordingToPreferredLanguages:v18];

  sub_20B9D0970();
  v20 = sub_20C13CC74();

  return v20;
}

unint64_t sub_20B9D0970()
{
  result = qword_27C76FEC0;
  if (!qword_27C76FEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C76FEC0);
  }

  return result;
}

uint64_t sub_20B9D09BC(char a1)
{
  v3 = [v1 options];
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      sub_20B9D0970();
      sub_20C13CC74();
      v4 = sub_20C13CC54();
    }

    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_20C14F980;
    if (qword_27C7607D8 != -1)
    {
      swift_once();
    }

    v7 = qword_27C79AB08;
  }

  else
  {
    if (!v3)
    {
      sub_20B9D0970();
      sub_20C13CC74();
      v4 = sub_20C13CC54();
    }

    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_20C14F980;
    if (qword_27C7607D0 != -1)
    {
      swift_once();
    }

    v7 = qword_27C79AB00;
  }

  *(v6 + 32) = v7;
  type metadata accessor for AVMediaCharacteristic(0);
  v8 = v7;
  v9 = sub_20C13CC54();

  v10 = [v5 mediaSelectionOptionsFromArray:v4 withMediaCharacteristics:v9];

  sub_20B9D0970();
  v11 = sub_20C13CC74();

  return v11;
}

uint64_t NavigationSource.hash(into:)(uint64_t a1)
{
  v24 = a1;
  v2 = sub_20C135024();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C132C14();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for NavigationSharingURLInfo();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B9D1520(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v19 = v22;
    if (EnumCaseMultiPayload)
    {
      v20 = v23;
      (*(v23 + 32))(v4, v16, v2);
      MEMORY[0x20F2F58E0](4);
      sub_20B9D1630(&qword_27C768B68, MEMORY[0x277D51510]);
      sub_20C13C7C4();
      return (*(v20 + 8))(v4, v2);
    }

    else
    {
      sub_20B9D1584(v16, v13);
      MEMORY[0x20F2F58E0](2);
      sub_20B9D1630(&qword_27C762CB0, MEMORY[0x277CC9260]);
      sub_20C13C7C4();
      sub_20B6A6860(&v13[*(v11 + 20)], v10);
      if ((*(v19 + 48))(v10, 1, v5) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        (*(v19 + 32))(v7, v10, v5);
        sub_20C13E184();
        sub_20C13C7C4();
        (*(v19 + 8))(v7, v5);
      }

      if (*&v13[*(v11 + 24) + 8])
      {
        sub_20C13E184();
        sub_20C13CA64();
      }

      else
      {
        sub_20C13E184();
      }

      return sub_20B9D17D8(v13, type metadata accessor for NavigationSharingURLInfo);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return MEMORY[0x20F2F58E0](0);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x20F2F58E0](1);
  }

  else
  {
    return MEMORY[0x20F2F58E0](3);
  }
}

uint64_t NavigationSource.hashValue.getter()
{
  sub_20C13E164();
  NavigationSource.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B9D1094()
{
  sub_20C13E164();
  NavigationSource.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B9D10D8()
{
  sub_20C13E164();
  NavigationSource.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI16NavigationSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135024();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationSharingURLInfo();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B78);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26 - v17;
  v20 = *(v19 + 56);
  sub_20B9D1520(a1, &v26 - v17);
  sub_20B9D1520(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v27;
    if (EnumCaseMultiPayload)
    {
      sub_20B9D1520(v18, v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v22 + 8))(v12, v4);
        goto LABEL_16;
      }

      (*(v22 + 32))(v6, &v18[v20], v4);
      v23 = MEMORY[0x20F2EC780](v12, v6);
      v24 = *(v22 + 8);
      v24(v6, v4);
      v24(v12, v4);
    }

    else
    {
      sub_20B9D1520(v18, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_20B9D17D8(v15, type metadata accessor for NavigationSharingURLInfo);
        goto LABEL_16;
      }

      sub_20B9D1584(&v18[v20], v9);
      v23 = _s9SeymourUI24NavigationSharingURLInfoV2eeoiySbAC_ACtFZ_0(v15, v9);
      sub_20B9D17D8(v9, type metadata accessor for NavigationSharingURLInfo);
      sub_20B9D17D8(v15, type metadata accessor for NavigationSharingURLInfo);
    }

    sub_20B9D17D8(v18, type metadata accessor for NavigationSource);
    return v23 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_16:
    sub_20B9D1770(v18);
    v23 = 0;
    return v23 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

LABEL_12:
  sub_20B9D17D8(v18, type metadata accessor for NavigationSource);
  v23 = 1;
  return v23 & 1;
}

uint64_t type metadata accessor for NavigationSource()
{
  result = qword_281103550;
  if (!qword_281103550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B9D1520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B9D1584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationSharingURLInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B9D1630(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20B9D1678()
{
  sub_20B9D1724(319, qword_281102288, type metadata accessor for NavigationSharingURLInfo);
  if (v0 <= 0x3F)
  {
    sub_20B9D1724(319, &qword_281103BB8, MEMORY[0x277D51510]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20B9D1724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

uint64_t sub_20B9D1770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B9D17D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B9D1838(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v107 = a2;
  v108 = a3;
  v105 = a1;
  v100 = type metadata accessor for MetricImpressionElement();
  MEMORY[0x28223BE20](v100);
  v98 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_20C13C5F4();
  v111 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v109 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v90 - v6;
  v8 = sub_20C13C634();
  v110 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v103 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v102 = &v90 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v99 = &v90 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v104 = &v90 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v90 - v17;
  v19 = sub_20C13BB84();
  v113 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v101 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v90 - v22;
  v115 = sub_20C13C884();
  v97 = sub_20B9D9C7C();
  v24 = sub_20C13CB74();
  v26 = v25;
  swift_getObjectType();
  v115 = sub_20C13E234();
  v116 = v27;
  MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
  MEMORY[0x20F2F4230](v24, v26);

  v29 = v115;
  v28 = v116;
  sub_20C13B544();

  v30 = sub_20C13BB74();
  v31 = sub_20C13D1C4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v96 = v18;
    v112 = v8;
    v33 = v32;
    v34 = v19;
    v35 = swift_slowAlloc();
    v115 = v35;
    *v33 = 136446210;
    v36 = sub_20B51E694(v29, v28, &v115);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_20B517000, v30, v31, "Maybe tracking element appearance with primary calculator %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v37 = v35;
    v19 = v34;
    MEMORY[0x20F2F6A40](v37, -1, -1);
    v38 = v33;
    v8 = v112;
    v18 = v96;
    MEMORY[0x20F2F6A40](v38, -1, -1);
  }

  else
  {
  }

  v39 = *(v113 + 8);
  v39(v23, v19);
  sub_20B9D8918(v107, v108, v7);
  v40 = v110;
  v41 = (*(v110 + 48))(v7, 1, v8);
  v42 = v109;
  if (v41 == 1)
  {
    return sub_20B520158(v7, &qword_27C768B88);
  }

  v107 = v19;
  (*(v40 + 32))(v18, v7, v8);
  sub_20C13C614();
  v44 = sub_20C13C684();
  v45 = v111 + 8;
  v46 = v106;
  v108 = *(v111 + 8);
  v108(v42, v106);
  if (!v44)
  {
    return (*(v40 + 8))(v18, v8);
  }

  v96 = v39;

  v115 = sub_20C13C884();
  v47 = sub_20C13CB74();
  v112 = v8;
  v49 = v48;
  swift_getObjectType();
  v115 = sub_20C13E234();
  v116 = v50;
  MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
  MEMORY[0x20F2F4230](v47, v49);
  v97 = v44;

  v51 = v112;

  v52 = v116;
  v95 = v115;
  v53 = v98;
  sub_20B9D9CD0(v105, v98, type metadata accessor for MetricImpressionElement);
  sub_20C13C614();
  v54 = sub_20C13C5E4();
  v56 = v55;
  v108(v42, v46);
  v57 = v104;
  sub_20C0B8358(v53, v54, v56, v104);
  v58 = v101;
  sub_20C13B544();
  v111 = v45;
  v59 = *(v40 + 16);
  v60 = v99;
  v59(v99, v57, v51);
  v59(v102, v57, v51);
  v59(v103, v57, v51);

  v61 = sub_20C13BB74();
  v62 = sub_20C13D1C4();
  v98 = v52;

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v93 = v62;
    v64 = v63;
    v94 = swift_slowAlloc();
    v114 = v94;
    *v64 = 136446978;
    sub_20C13C614();
    v65 = sub_20C13C5E4();
    v67 = v66;
    v68 = v106;
    v92 = v61;
    v69 = v108;
    v108(v42, v106);
    v70 = *(v40 + 8);
    v110 = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v70(v60, v112);
    v91 = v70;
    v71 = sub_20B51E694(v65, v67, &v114);

    *(v64 + 4) = v71;
    *(v64 + 12) = 2050;
    v72 = v102;
    sub_20C13C614();
    v73 = sub_20C13C5B4();
    v69(v42, v68);
    v70(v72, v112);
    *(v64 + 14) = v73;
    *(v64 + 22) = 2082;
    v74 = v103;
    sub_20C13C614();
    v75 = sub_20C13C5D4();
    v77 = v76;
    v78 = v68;
    v79 = v91;
    v69(v42, v78);
    v115 = v75;
    v116 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
    v80 = v18;
    v81 = sub_20C13D8F4();
    v83 = v82;
    v79(v74, v112);
    v51 = v112;

    v84 = sub_20B51E694(v81, v83, &v114);

    *(v64 + 24) = v84;
    *(v64 + 32) = 2082;
    v85 = sub_20B51E694(v95, v98, &v114);

    *(v64 + 34) = v85;
    v18 = v80;
    v86 = v92;
    _os_log_impl(&dword_20B517000, v92, v93, "Tracking element appearance with id: %{public}s, index: %{public}ld, parent: %{public}s with child calculator %{public}s", v64, 0x2Au);
    v87 = v94;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v87, -1, -1);
    MEMORY[0x20F2F6A40](v64, -1, -1);

    v88 = v101;
  }

  else
  {
    v79 = *(v40 + 8);
    v79(v102, v51);

    v79(v103, v51);
    v79(v60, v51);
    v88 = v58;
  }

  (v96)(v88, v107);
  v89 = v104;
  sub_20C13C694();

  v79(v89, v51);
  return (v79)(v18, v51);
}

uint64_t sub_20B9D22A4(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v565 = a4;
  v540 = a2;
  v546 = a1;
  v529 = sub_20C13C5F4();
  v525 = *(v529 - 8);
  MEMORY[0x28223BE20](v529);
  v521 = &v496 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C133184();
  v510 = *(v6 - 8);
  v511 = v6;
  MEMORY[0x28223BE20](v6);
  v509 = &v496 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v539 = type metadata accessor for ShelfCellItemInfo();
  v537 = *(v539 - 8);
  MEMORY[0x28223BE20](v539);
  v522 = &v496 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v9 - 8);
  v536 = &v496 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  MEMORY[0x28223BE20](v11 - 8);
  v538 = &v496 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v544 = &v496 - v14;
  v15 = sub_20C13C634();
  v16 = *(v15 - 8);
  v548 = v15;
  v549 = v16;
  MEMORY[0x28223BE20](v15);
  v535 = &v496 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v534 = &v496 - v19;
  MEMORY[0x28223BE20](v20);
  v527 = &v496 - v21;
  MEMORY[0x28223BE20](v22);
  v524 = &v496 - v23;
  MEMORY[0x28223BE20](v24);
  v523 = &v496 - v25;
  MEMORY[0x28223BE20](v26);
  v514 = &v496 - v27;
  MEMORY[0x28223BE20](v28);
  v499 = &v496 - v29;
  MEMORY[0x28223BE20](v30);
  v502 = &v496 - v31;
  MEMORY[0x28223BE20](v32);
  v508 = &v496 - v33;
  MEMORY[0x28223BE20](v34);
  v507 = &v496 - v35;
  MEMORY[0x28223BE20](v36);
  v505 = &v496 - v37;
  MEMORY[0x28223BE20](v38);
  v533 = &v496 - v39;
  MEMORY[0x28223BE20](v40);
  v547 = &v496 - v41;
  v42 = sub_20C132EE4();
  v43 = *(v42 - 8);
  v550 = v42;
  v551 = v43;
  MEMORY[0x28223BE20](v42);
  v530 = &v496 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v556 = (&v496 - v46);
  v47 = sub_20C133244();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v554 = (&v496 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v50);
  v553 = &v496 - v51;
  MEMORY[0x28223BE20](v52);
  v542 = &v496 - v53;
  MEMORY[0x28223BE20](v54);
  v541 = &v496 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v496 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v496 - v60;
  v564 = sub_20C13BB84();
  v566 = *(v564 - 8);
  MEMORY[0x28223BE20](v564);
  v562 = (&v496 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v63);
  v545 = &v496 - v64;
  MEMORY[0x28223BE20](v65);
  v518 = &v496 - v66;
  MEMORY[0x28223BE20](v67);
  v512 = &v496 - v68;
  MEMORY[0x28223BE20](v69);
  v528 = &v496 - v70;
  MEMORY[0x28223BE20](v71);
  v531 = &v496 - v72;
  MEMORY[0x28223BE20](v73);
  v526 = &v496 - v74;
  MEMORY[0x28223BE20](v75);
  v517 = &v496 - v76;
  MEMORY[0x28223BE20](v77);
  v516 = &v496 - v78;
  MEMORY[0x28223BE20](v79);
  v515 = &v496 - v80;
  MEMORY[0x28223BE20](v81);
  v519 = &v496 - v82;
  MEMORY[0x28223BE20](v83);
  v520 = &v496 - v84;
  MEMORY[0x28223BE20](v85);
  v498 = &v496 - v86;
  MEMORY[0x28223BE20](v87);
  v497 = &v496 - v88;
  MEMORY[0x28223BE20](v89);
  v500 = &v496 - v90;
  MEMORY[0x28223BE20](v91);
  v501 = &v496 - v92;
  MEMORY[0x28223BE20](v93);
  v506 = &v496 - v94;
  MEMORY[0x28223BE20](v95);
  v504 = &v496 - v96;
  MEMORY[0x28223BE20](v97);
  v503 = &v496 - v98;
  MEMORY[0x28223BE20](v99);
  v513 = &v496 - v100;
  MEMORY[0x28223BE20](v101);
  v543 = &v496 - v102;
  MEMORY[0x28223BE20](v103);
  v555 = &v496 - v104;
  MEMORY[0x28223BE20](v105);
  v107 = &v496 - v106;
  sub_20C13B524();
  v108 = *(v48 + 16);
  v109 = v61;
  v110 = v61;
  v111 = a3;
  v108(v110, a3, v47);
  v557 = v108;
  v558 = v48 + 16;
  v108(v58, a3, v47);
  v112 = sub_20C13BB74();
  v113 = sub_20C13D1F4();
  v561 = v112;
  v114 = os_log_type_enabled(v112, v113);
  v563 = v111;
  v559 = v48;
  v560 = v47;
  if (v114)
  {
    v115 = swift_slowAlloc();
    *v115 = 134349312;
    v116 = v109;
    v117 = sub_20C133234();
    v118 = *(v48 + 8);
    (v118)(v116, v47);
    *(v115 + 4) = v117;
    *(v115 + 12) = 2050;
    v119 = sub_20C133224();
    v552 = v118;
    (v118)(v58, v47);
    *(v115 + 14) = v119;
    v120 = v561;
    _os_log_impl(&dword_20B517000, v561, v113, "[84503892] Tracking cell appearance at section: %{public}ld and item: %{public}ld", v115, 0x16u);
    MEMORY[0x20F2F6A40](v115, -1, -1);
  }

  else
  {
    v121 = *(v48 + 8);
    (v121)(v58, v47);
    v552 = v121;
    (v121)(v109, v47);
    v120 = v561;
  }

  v123 = v566 + 8;
  v122 = *(v566 + 8);
  v124 = v564;
  (v122)(v107, v564);
  v125 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
  v126 = v565;
  swift_beginAccess();
  v127 = *(&v126->isa + v125);

  v128 = v555;
  sub_20C13B524();
  v129 = sub_20C13BB74();
  v130 = sub_20C13D1F4();
  v131 = os_log_type_enabled(v129, v130);
  v132 = v556;
  if (v131)
  {
    v133 = v124;
    v134 = v122;
    v135 = swift_slowAlloc();
    *v135 = 0;
    _os_log_impl(&dword_20B517000, v129, v130, "[84503892] Looking up shelf row in current backing", v135, 2u);
    v136 = v135;
    v122 = v134;
    v124 = v133;
    MEMORY[0x20F2F6A40](v136, -1, -1);
  }

  v561 = v122;
  (v122)(v128, v124);
  v137 = v563;
  v138 = sub_20B9D9500(v563, v127, *(&v565->isa + OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections));
  if (!v138)
  {

    goto LABEL_13;
  }

  v140 = v139;
  v141 = v138;
  ObjectType = swift_getObjectType();
  v143 = *(v140 + 8);
  v555 = v141;
  v143(ObjectType, v140);
  if (!*(v127 + 16) || (v144 = sub_20B65AAD8(v132), (v145 & 1) == 0))
  {
    swift_unknownObjectRelease();

    (*(v551 + 8))(v132, v550);
    v137 = v563;
    goto LABEL_13;
  }

  v566 = v123;
  v146 = *(v127 + 56) + 168 * v144;
  v148 = *(v146 + 16);
  v147 = *(v146 + 32);
  v572[0] = *v146;
  v572[1] = v148;
  v572[2] = v147;
  v149 = *(v146 + 48);
  v150 = *(v146 + 64);
  v151 = *(v146 + 96);
  v574 = *(v146 + 80);
  v575 = v151;
  v572[3] = v149;
  v573 = v150;
  v152 = *(v146 + 112);
  v153 = *(v146 + 128);
  v154 = *(v146 + 144);
  v579 = *(v146 + 160);
  v577 = v153;
  v578 = v154;
  v576 = v152;
  sub_20B622224(v572, &v570);
  v155 = *(v551 + 8);
  v551 += 8;
  v556 = v155;
  (v155)(v132, v550);

  v156 = sub_20C133234();
  v157 = v544;
  sub_20B8C7358(v156, v544);
  v158 = v548;
  v159 = v549;
  v160 = *(v549 + 48);
  if (v160(v157, 1, v548) == 1)
  {
    sub_20B621D00(v572);
    swift_unknownObjectRelease();
    sub_20B520158(v157, &qword_27C768B88);
    v124 = v564;
    v123 = v566;
    v137 = v563;
LABEL_13:
    sub_20C13B524();
    v161 = v553;
    v162 = v560;
    v163 = v557;
    v557(v553, v137, v560);
    v164 = v554;
    v163(v554, v137, v162);
    v165 = sub_20C13BB74();
    v166 = sub_20C13D1F4();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = v161;
      v168 = v162;
      v169 = swift_slowAlloc();
      *v169 = 134349312;
      v170 = sub_20C133234();
      v566 = v123;
      v171 = v552;
      (v552)(v167, v168);
      *(v169 + 4) = v170;
      *(v169 + 12) = 2050;
      v172 = sub_20C133224();
      v173 = v168;
      v124 = v564;
      (v171)(v164, v173);
      *(v169 + 14) = v172;
      _os_log_impl(&dword_20B517000, v165, v166, "[84503892] Unable to find row for section: %{public}ld and item: %{public}ld. Returning", v169, 0x16u);
      MEMORY[0x20F2F6A40](v169, -1, -1);
    }

    else
    {
      v174 = v552;
      (v552)(v164, v162);
      (v174)(v161, v162);
    }

    return (v561)(v562, v124);
  }

  v176 = *(v159 + 32);
  v553 = (v159 + 32);
  v554 = v160;
  v552 = v176;
  (v176)(v547, v157, v158);
  v177 = v543;
  sub_20C13B524();
  swift_unknownObjectRetain();
  v178 = sub_20C13BB74();
  v179 = sub_20C13D1F4();
  swift_unknownObjectRelease();
  LODWORD(v562) = v179;
  v180 = os_log_type_enabled(v178, v179);
  v181 = v561;
  if (v180)
  {
    v182 = swift_slowAlloc();
    v544 = swift_slowAlloc();
    *&v570 = v544;
    *v182 = 136446210;
    v183 = v530;
    v143(ObjectType, v140);
    sub_20B9D9D38(&qword_27C763EF0, 255, MEMORY[0x277CC95F0]);
    v184 = v550;
    v185 = sub_20C13DFA4();
    v187 = v186;
    (v556)(v183, v184);
    v188 = sub_20B51E694(v185, v187, &v570);

    *(v182 + 4) = v188;
    _os_log_impl(&dword_20B517000, v178, v562, "[84503892] Found row for shelf ID: %{public}s", v182, 0xCu);
    v189 = v544;
    __swift_destroy_boxed_opaque_existential_1(v544);
    MEMORY[0x20F2F6A40](v189, -1, -1);
    MEMORY[0x20F2F6A40](v182, -1, -1);

    (v561)(v543, v564);
  }

  else
  {

    (v181)(v177, v564);
  }

  v190 = swift_getObjectType();
  v191 = v536;
  (*(v540 + 40))(v190);
  v192 = v539;
  v193 = (*(v537 + 48))(v191, 1, v539);
  v195 = v548;
  v194 = v549;
  if (!v193)
  {
    v198 = v522;
    sub_20B9D9CD0(v191, v522, type metadata accessor for ShelfCellItemInfo);
    sub_20B520158(v191, &qword_27C762550);
    v197 = v538;
    sub_20B9D9B9C(v198 + *(v192 + 32), v538);
    sub_20B86C070(v198);
    if ((v554)(v197, 1, v195) == 1)
    {
      goto LABEL_23;
    }

    sub_20B621D00(v572);
    (v552)(v533, v197, v195);
    v265 = v513;
    sub_20C13B524();
    v266 = sub_20C13BB74();
    v267 = sub_20C13D1F4();
    if (os_log_type_enabled(v266, v267))
    {
      v268 = swift_slowAlloc();
      *v268 = 0;
      _os_log_impl(&dword_20B517000, v266, v267, "[84503892] Found valid impression metrics within item info", v268, 2u);
      MEMORY[0x20F2F6A40](v268, -1, -1);
    }

    (v561)(v265, v564);
    v269 = *(v532 + 16);
    v270 = *(&v565->isa + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);

    v271 = [v270 collectionViewLayout];
    objc_opt_self();
    v272 = swift_dynamicCastObjCClass();
    v273 = v520;
    v562 = v269;
    if (!v272)
    {

      v283 = 0;
      v285 = 0.0;
      v565 = v269;
LABEL_82:
      v381 = v195;
      sub_20C13B524();
      v382 = sub_20C13BB74();
      v383 = sub_20C13D1F4();
      if (os_log_type_enabled(v382, v383))
      {
        v384 = swift_slowAlloc();
        *v384 = 0;
        _os_log_impl(&dword_20B517000, v382, v383, "[84503892] Computing cell container rect", v384, 2u);
        MEMORY[0x20F2F6A40](v384, -1, -1);
      }

      v385 = v564;
      (v561)(v273, v564);
      v386 = v546;
      [v546 frame];
      v388 = v387;
      [v386 frame];
      v390 = v389 - v285;
      [v386 frame];
      v392 = v391;
      v394 = v393;
      v395 = v519;
      sub_20C13B544();
      v396 = v549;
      v397 = *(v549 + 16);
      v398 = v514;
      v399 = v533;
      v397(v514, v533, v381);
      v397(v523, v399, v381);
      v397(v524, v399, v381);
      v400 = v395;
      v401 = v386;
      v402 = sub_20C13BB74();
      v403 = sub_20C13D1C4();

      if (os_log_type_enabled(v402, v403))
      {
        v552 = v401;
        LODWORD(v554) = v403;
        v556 = v402;
        v404 = swift_slowAlloc();
        v553 = swift_slowAlloc();
        v569 = v553;
        *v404 = 136447490;
        v405 = v521;
        sub_20C13C614();
        v406 = sub_20C13C5E4();
        v408 = v407;
        v551 = *(v525 + 8);
        (v551)(v405, v529);
        v409 = *(v396 + 8);
        v409(v398, v381);
        v410 = sub_20B51E694(v406, v408, &v569);

        *(v404 + 4) = v410;
        *(v404 + 12) = 2082;
        v411 = v523;
        sub_20C13C614();
        v412 = sub_20C13C5D4();
        v414 = v413;
        v415 = v405;
        v416 = v409;
        (v551)(v415, v529);
        *&v570 = v412;
        *(&v570 + 1) = v414;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
        v417 = sub_20C13D8F4();
        v419 = v418;
        v409(v411, v548);

        v420 = sub_20B51E694(v417, v419, &v569);

        *(v404 + 14) = v420;
        *(v404 + 22) = 2082;
        v421 = v524;
        v422 = sub_20C13C624();
        if (*(v422 + 16) && (v423 = sub_20B65AA60(1701667182, 0xE400000000000000), (v424 & 1) != 0))
        {
          sub_20B51F1D8(*(v422 + 56) + 32 * v423, &v570);
        }

        else
        {
          v570 = 0u;
          v571 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
        v427 = sub_20C13D8F4();
        v429 = v428;
        sub_20B520158(&v570, &unk_27C768A00);
        v416(v421, v548);
        v430 = sub_20B51E694(v427, v429, &v569);

        *(v404 + 24) = v430;
        *(v404 + 32) = 2082;
        *&v570 = 0;
        *(&v570 + 1) = 0xE000000000000000;
        v567 = v283;
        v568 = v285;
        type metadata accessor for CGPoint(0);
        sub_20C13DDF4();
        v431 = sub_20B51E694(v570, *(&v570 + 1), &v569);

        *(v404 + 34) = v431;
        *(v404 + 42) = 2082;
        [v552 frame];
        v567 = 0;
        v568 = -2.68156159e154;
        *&v570 = v432;
        *(&v570 + 1) = v433;
        *&v571 = v434;
        *(&v571 + 1) = v435;
        type metadata accessor for CGRect(0);
        sub_20C13DDF4();
        v436 = sub_20B51E694(v567, *&v568, &v569);

        *(v404 + 44) = v436;
        *(v404 + 52) = 2082;
        v567 = 0;
        v568 = -2.68156159e154;
        *&v570 = v388;
        *(&v570 + 1) = v390;
        *&v571 = v392;
        *(&v571 + 1) = v394;
        sub_20C13DDF4();
        v437 = sub_20B51E694(v567, *&v568, &v569);

        *(v404 + 54) = v437;
        v438 = v556;
        _os_log_impl(&dword_20B517000, v556, v554, "Tracking Cell Apperance for %{public}s with parent id %{public}s: %{public}s, containerOrigin: %{public}s, original cell frame: %{public}s, cell container frame: %{public}s", v404, 0x3Eu);
        v439 = v553;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v439, -1, -1);
        MEMORY[0x20F2F6A40](v404, -1, -1);

        v200 = v564;
        (v561)(v519, v564);
        v426 = v547;
      }

      else
      {

        v425 = *(v396 + 8);
        v425(v524, v381);
        v425(v523, v381);
        v425(v398, v381);
        (v561)(v400, v385);
        v426 = v547;
        v200 = v385;
      }

      v440 = v515;
      sub_20C13B524();
      v441 = sub_20C13BB74();
      v442 = sub_20C13D1F4();
      if (os_log_type_enabled(v441, v442))
      {
        v443 = swift_slowAlloc();
        *v443 = 0;
        _os_log_impl(&dword_20B517000, v441, v442, "[84503892] Acquiring impression calculator ID", v443, 2u);
        MEMORY[0x20F2F6A40](v443, -1, -1);
      }

      (v561)(v440, v200);
      *&v570 = sub_20C13C884();
      sub_20B9D9C7C();
      v444 = sub_20C13CB74();
      v446 = v445;
      swift_getObjectType();
      *&v570 = sub_20C13E234();
      *(&v570 + 1) = v447;
      MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
      MEMORY[0x20F2F4230](v444, v446);

      v448 = *(&v570 + 1);
      v556 = v570;
      *&v570 = sub_20C13C884();
      v449 = sub_20C13CB74();
      v451 = v450;
      swift_getObjectType();
      *&v570 = sub_20C13E234();
      *(&v570 + 1) = v452;
      MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
      MEMORY[0x20F2F4230](v449, v451);

      v453 = v570;
      v454 = v516;
      sub_20C13B544();

      v455 = sub_20C13BB74();
      v456 = sub_20C13D1C4();

      if (os_log_type_enabled(v455, v456))
      {
        v457 = swift_slowAlloc();
        v458 = swift_slowAlloc();
        *&v570 = v458;
        *v457 = 136446466;
        v459 = v454;
        v460 = sub_20B51E694(v556, v448, &v570);

        *(v457 + 4) = v460;
        *(v457 + 12) = 2082;
        v461 = sub_20B51E694(v453, *(&v453 + 1), &v570);

        *(v457 + 14) = v461;
        _os_log_impl(&dword_20B517000, v455, v456, "Tracking Cell Apperance using calculator: %{public}s, primary calculator: %{public}s", v457, 0x16u);
        swift_arrayDestroy();
        v260 = v547;
        v462 = v564;
        MEMORY[0x20F2F6A40](v458, -1, -1);
        v463 = v457;
        v200 = v462;
        v252 = v542;
        MEMORY[0x20F2F6A40](v463, -1, -1);

        (v561)(v459, v462);
        v464 = v517;
      }

      else
      {

        (v561)(v454, v200);
        v464 = v517;
        v252 = v542;
        v260 = v426;
      }

      sub_20C13C694();
      sub_20C13B524();
      v465 = sub_20C13BB74();
      v466 = sub_20C13D1F4();
      if (os_log_type_enabled(v465, v466))
      {
        v467 = v260;
        v468 = v200;
        v469 = v464;
        v470 = swift_slowAlloc();
        *v470 = 0;
        _os_log_impl(&dword_20B517000, v465, v466, "[84503892] Added cell container rect to impression calculator", v470, 2u);
        MEMORY[0x20F2F6A40](v470, -1, -1);

        v471 = v469;
        v200 = v468;
        v260 = v467;
        v252 = v542;
      }

      else
      {

        v471 = v464;
      }

      (v561)(v471, v200);
      (*(v549 + 8))(v533, v548);
      goto LABEL_100;
    }

    v274 = v272;
    v275 = [v272 _orthogonalScrollingSections];
    v276 = v509;
    sub_20C133164();

    sub_20C133234();
    LOBYTE(v275) = sub_20C133174();
    (*(v510 + 8))(v276, v511);
    if (v275)
    {
      v277 = v503;
      sub_20C13B524();
      v278 = sub_20C13BB74();
      v279 = sub_20C13D1F4();
      if (os_log_type_enabled(v278, v279))
      {
        v280 = swift_slowAlloc();
        *v280 = 0;
        _os_log_impl(&dword_20B517000, v278, v279, "[84503892] Tracking cell within orthogonally scrolling section", v280, 2u);
        MEMORY[0x20F2F6A40](v280, -1, -1);
      }

      v556 = v271;

      v281 = v564;
      (v561)(v277, v564);
      [v274 _orthogonalScrollingLayoutRectForSection_];
      v283 = v282;
      v285 = v284;
      v287 = v286;
      v289 = v288;
      sub_20C13C694();
      v290 = v504;
      sub_20C13B524();
      v291 = sub_20C13BB74();
      v292 = sub_20C13D1F4();
      v293 = os_log_type_enabled(v291, v292);
      v294 = v506;
      if (v293)
      {
        v295 = v281;
        v296 = swift_slowAlloc();
        *v296 = 0;
        _os_log_impl(&dword_20B517000, v291, v292, "[84503892] Added layout section rect to impression calculator", v296, 2u);
        v297 = v296;
        v281 = v295;
        MEMORY[0x20F2F6A40](v297, -1, -1);
      }

      (v561)(v290, v281);
      sub_20C13B544();
      v298 = v549;
      v299 = (v549 + 16);
      v300 = *(v549 + 16);
      v301 = v505;
      v302 = v547;
      v300(v505, v547, v195);
      v303 = v507;
      v300(v507, v302, v195);
      v304 = v508;
      v552 = v300;
      v553 = v299;
      v300(v508, v302, v195);
      v305 = sub_20C13BB74();
      v306 = sub_20C13D1C4();
      if (os_log_type_enabled(v305, v306))
      {
        LODWORD(v551) = v306;
        v565 = v305;
        v307 = swift_slowAlloc();
        v550 = swift_slowAlloc();
        v569 = v550;
        *v307 = 136446978;
        v308 = sub_20C13C624();
        v309 = v301;
        if (*(v308 + 16))
        {
          v310 = sub_20B65AA60(1701667182, 0xE400000000000000);
          v311 = v507;
          if (v312)
          {
            sub_20B51F1D8(*(v308 + 56) + 32 * v310, &v570);
          }

          else
          {
            v570 = 0u;
            v571 = 0u;
          }
        }

        else
        {
          v570 = 0u;
          v571 = 0u;
          v311 = v507;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
        v322 = sub_20C13D8F4();
        v324 = v323;
        sub_20B520158(&v570, &unk_27C768A00);
        v325 = *(v549 + 8);
        v325(v309, v548);
        v326 = sub_20B51E694(v322, v324, &v569);

        *(v307 + 4) = v326;
        *(v307 + 12) = 2082;
        v321 = v521;
        sub_20C13C614();
        v327 = sub_20C13C5E4();
        v329 = v328;
        v554 = *(v525 + 8);
        v330 = v529;
        (v554)(v321, v529);
        v331 = v548;
        v325(v311, v548);
        v332 = sub_20B51E694(v327, v329, &v569);

        *(v307 + 14) = v332;
        *(v307 + 22) = 2050;
        v333 = v508;
        sub_20C13C614();
        v334 = sub_20C13C5B4();
        (v554)(v321, v330);
        v554 = v325;
        v325(v333, v331);
        v320 = v525;
        *(v307 + 24) = v334;
        *(v307 + 32) = 2082;
        v567 = 0;
        v568 = -2.68156159e154;
        *&v570 = v283;
        *(&v570 + 1) = v285;
        *&v571 = v287;
        *(&v571 + 1) = v289;
        type metadata accessor for CGRect(0);
        sub_20C13DDF4();
        v335 = sub_20B51E694(v567, *&v568, &v569);

        *(v307 + 34) = v335;
        v318 = v331;
        v336 = v565;
        _os_log_impl(&dword_20B517000, v565, v551, "Shelf is orthogonal: %{public}s with id %{public}s and index %{public}ld, has sectionLayoutRect: %{public}s", v307, 0x2Au);
        v337 = v550;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v337, -1, -1);
        v338 = v307;
        v319 = v330;
        MEMORY[0x20F2F6A40](v338, -1, -1);

        (v561)(v506, v564);
      }

      else
      {
        v317 = *(v298 + 8);
        v317(v304, v195);

        v317(v303, v195);
        v318 = v195;
        v554 = v317;
        v317(v301, v195);
        (v561)(v294, v564);
        v319 = v529;
        v320 = v525;
        v321 = v521;
      }

      v339 = v547;
      v269 = v562;
      sub_20C13C614();
      v340 = sub_20C13C684();
      (*(v320 + 8))(v321, v319);
      if (v340)
      {

        *&v570 = sub_20C13C884();
        sub_20B9D9C7C();
        v341 = sub_20C13CB74();
        v343 = v342;
        swift_getObjectType();
        *&v570 = sub_20C13E234();
        *(&v570 + 1) = v344;
        MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
        MEMORY[0x20F2F4230](v341, v343);
        v565 = v340;

        v345 = *(&v570 + 1);
        v551 = v570;
        v346 = v501;
        sub_20C13B544();
        v347 = v502;
        v195 = v318;
        (v552)(v502, v339, v318);

        v348 = sub_20C13BB74();
        v349 = sub_20C13D1C4();

        if (os_log_type_enabled(v348, v349))
        {
          v350 = swift_slowAlloc();
          v553 = swift_slowAlloc();
          v567 = v553;
          *v350 = 136446466;
          v351 = sub_20C13C624();
          if (*(v351 + 16) && (v352 = sub_20B65AA60(1701667182, 0xE400000000000000), (v353 & 1) != 0))
          {
            sub_20B51F1D8(*(v351 + 56) + 32 * v352, &v570);
          }

          else
          {
            v570 = 0u;
            v571 = 0u;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
          v371 = sub_20C13D8F4();
          v373 = v372;
          sub_20B520158(&v570, &unk_27C768A00);
          v195 = v548;
          (v554)(v502, v548);
          v374 = sub_20B51E694(v371, v373, &v567);

          *(v350 + 4) = v374;
          *(v350 + 12) = 2082;
          v375 = sub_20B51E694(v551, v345, &v567);

          *(v350 + 14) = v375;
          _os_log_impl(&dword_20B517000, v348, v349, "Orthogonal shelf %{public}s got child calculator %{public}s", v350, 0x16u);
          v376 = v553;
          swift_arrayDestroy();
          MEMORY[0x20F2F6A40](v376, -1, -1);
          MEMORY[0x20F2F6A40](v350, -1, -1);

          (v561)(v501, v564);
        }

        else
        {

          (v554)(v347, v318);
          (v561)(v346, v564);
        }

        v377 = v500;
        sub_20C13B524();
        v378 = sub_20C13BB74();
        v379 = sub_20C13D1F4();
        if (os_log_type_enabled(v378, v379))
        {
          v380 = swift_slowAlloc();
          *v380 = 0;
          _os_log_impl(&dword_20B517000, v378, v379, "[84503892] Found child calculator", v380, 2u);
          MEMORY[0x20F2F6A40](v380, -1, -1);
        }

        else
        {
        }

        (v561)(v377, v564);
        goto LABEL_81;
      }

      v354 = v497;
      sub_20C13B524();
      v355 = sub_20C13BB74();
      v356 = sub_20C13D1F4();
      v195 = v318;
      if (os_log_type_enabled(v355, v356))
      {
        v357 = swift_slowAlloc();
        *v357 = 0;
        _os_log_impl(&dword_20B517000, v355, v356, "[84503892] Failed to get child calculator", v357, 2u);
        MEMORY[0x20F2F6A40](v357, -1, -1);
      }

      v358 = v354;
      v359 = v564;
      v360 = v561;
      (v561)(v358, v564);
      v361 = v498;
      sub_20C13B544();
      v362 = v499;
      (v552)(v499, v547, v195);
      v363 = sub_20C13BB74();
      v364 = sub_20C13D1C4();
      if (os_log_type_enabled(v363, v364))
      {
        v365 = swift_slowAlloc();
        v366 = swift_slowAlloc();
        v567 = v366;
        *v365 = 136446210;
        v367 = sub_20C13C624();
        if (*(v367 + 16) && (v368 = sub_20B65AA60(1701667182, 0xE400000000000000), (v369 & 1) != 0))
        {
          v370 = v364;
          sub_20B51F1D8(*(v367 + 56) + 32 * v368, &v570);
        }

        else
        {
          v370 = v364;
          v570 = 0u;
          v571 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
        v490 = sub_20C13D8F4();
        v492 = v491;
        sub_20B520158(&v570, &unk_27C768A00);
        v493 = v548;
        (v554)(v499, v548);
        v494 = sub_20B51E694(v490, v492, &v567);

        *(v365 + 4) = v494;
        _os_log_impl(&dword_20B517000, v363, v370, "Orthogonal shelf %{public}s DID NOT GET CHILD CALCULATOR!", v365, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v366);
        v495 = v366;
        v195 = v493;
        MEMORY[0x20F2F6A40](v495, -1, -1);
        MEMORY[0x20F2F6A40](v365, -1, -1);

        (v561)(v498, v564);
        v283 = 0;
        v285 = 0.0;
        v269 = v562;
        goto LABEL_58;
      }

      (v554)(v362, v195);
      (v360)(v361, v359);
    }

    else
    {
    }

    v283 = 0;
    v285 = 0.0;
LABEL_58:
    v565 = v269;
LABEL_81:
    v273 = v520;
    goto LABEL_82;
  }

  sub_20B520158(v191, &qword_27C762550);
  v196 = *(v194 + 56);
  v197 = v538;
  v196(v538, 1, 1, v195);
LABEL_23:
  sub_20B520158(v197, &qword_27C768B88);
  swift_getObjectType();
  v199 = swift_conformsToProtocol2();
  v200 = v564;
  if (v199 && v546)
  {
    sub_20B621D00(v572);
    v201 = v526;
    sub_20C13B524();
    v202 = sub_20C13BB74();
    v203 = sub_20C13D1F4();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&dword_20B517000, v202, v203, "[84503892] No impression metrics found. Handling MetricImpressionContainer cell", v204, 2u);
      MEMORY[0x20F2F6A40](v204, -1, -1);
    }

    (v561)(v201, v200);
    v205 = *(v532 + 16);
    *&v570 = sub_20C13C884();
    sub_20B9D9C7C();
    v206 = sub_20C13CB74();
    v208 = v207;
    v565 = v205;
    swift_getObjectType();
    *&v570 = sub_20C13E234();
    *(&v570 + 1) = v209;
    MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
    MEMORY[0x20F2F4230](v206, v208);

    v210 = *(&v570 + 1);
    v554 = v570;
    v211 = v531;
    sub_20C13B544();
    v212 = v549;
    v213 = *(v549 + 16);
    v214 = v527;
    v215 = v547;
    v213(v527, v547, v195);
    v213(v534, v215, v195);
    v216 = v535;
    v217 = v215;
    v218 = v211;
    v213(v535, v217, v195);
    v219 = v546;

    v220 = sub_20C13BB74();
    v221 = sub_20C13D1C4();
    v556 = v210;

    v562 = v219;

    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v553 = swift_slowAlloc();
      v569 = v553;
      *v222 = 136447234;
      v552 = v220;
      v223 = v521;
      LODWORD(v551) = v221;
      sub_20C13C614();
      v224 = sub_20C13C5E4();
      v226 = v225;
      v550 = *(v525 + 8);
      v227 = v529;
      (v550)(v223, v529);
      v228 = *(v549 + 8);
      v228(v214, v548);
      v229 = sub_20B51E694(v224, v226, &v569);

      *(v222 + 4) = v229;
      *(v222 + 12) = 2050;
      v230 = v534;
      sub_20C13C614();
      v231 = sub_20C13C5B4();
      v232 = v550;
      (v550)(v223, v227);
      v228(v230, v548);
      *(v222 + 14) = v231;
      *(v222 + 22) = 2082;
      sub_20C13C614();
      v233 = sub_20C13C5D4();
      v235 = v234;
      (v232)(v223, v227);
      *&v570 = v233;
      *(&v570 + 1) = v235;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
      v236 = sub_20C13D8F4();
      v238 = v237;
      v228(v535, v548);

      v239 = sub_20B51E694(v236, v238, &v569);
      v240 = v547;
      v241 = v564;

      *(v222 + 24) = v239;
      *(v222 + 32) = 2082;
      v242 = v562;
      [v562 frame];
      v567 = 0;
      v568 = -2.68156159e154;
      *&v570 = v243;
      *(&v570 + 1) = v244;
      *&v571 = v245;
      *(&v571 + 1) = v246;
      type metadata accessor for CGRect(0);
      sub_20C13DDF4();
      v247 = sub_20B51E694(v567, *&v568, &v569);

      *(v222 + 34) = v247;
      *(v222 + 42) = 2082;
      v248 = sub_20B51E694(v554, v556, &v569);

      *(v222 + 44) = v248;
      v249 = v552;
      _os_log_impl(&dword_20B517000, v552, v551, "Tracking container cell appearance for shelf impression metrics with id: %{public}s, index: %{public}ld, parent: %{public}s at frame: %{public}s with calculator %{public}s", v222, 0x34u);
      v250 = v553;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v250, -1, -1);
      v251 = v222;
      v200 = v241;
      v252 = v542;
      MEMORY[0x20F2F6A40](v251, -1, -1);

      (v561)(v531, v241);
      v253 = v528;
      v254 = v242;
    }

    else
    {
      v261 = *(v212 + 8);
      v261(v534, v195);

      v261(v216, v195);
      v261(v214, v195);
      v200 = v564;
      (v561)(v218, v564);
      v240 = v547;
      v252 = v542;
      v253 = v528;
      v254 = v562;
    }

    [v254 frame];
    sub_20C13C694();
    sub_20C13B524();
    v262 = sub_20C13BB74();
    v263 = sub_20C13D1F4();
    v260 = v240;
    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      *v264 = 0;
      _os_log_impl(&dword_20B517000, v262, v263, "[84503892] Adding cell frame to impression calculator", v264, 2u);
      MEMORY[0x20F2F6A40](v264, -1, -1);
    }

    (v561)(v253, v200);
    goto LABEL_100;
  }

  if (!*(&v573 + 1))
  {
    sub_20B621D00(v572);
    goto LABEL_51;
  }

  v255 = v575;

  sub_20B621D00(v572);

  if ((v255 & 1) == 0)
  {
LABEL_51:
    v313 = v518;
    sub_20C13B524();
    v314 = sub_20C13BB74();
    v315 = sub_20C13D1F4();
    if (os_log_type_enabled(v314, v315))
    {
      v316 = swift_slowAlloc();
      *v316 = 0;
      _os_log_impl(&dword_20B517000, v314, v315, "[84503892] Failed to track cell appearance", v316, 2u);
      MEMORY[0x20F2F6A40](v316, -1, -1);
    }

    (v561)(v313, v200);
    v260 = v547;
    goto LABEL_54;
  }

  v256 = v512;
  sub_20C13B524();
  v257 = sub_20C13BB74();
  v258 = sub_20C13D1F4();
  if (os_log_type_enabled(v257, v258))
  {
    v259 = swift_slowAlloc();
    *v259 = 0;
    _os_log_impl(&dword_20B517000, v257, v258, "[84503892] Increasing impressionable frame", v259, 2u);
    MEMORY[0x20F2F6A40](v259, -1, -1);
  }

  (v561)(v256, v200);
  [v546 frame];
  v260 = v547;
  sub_20C13C704();
LABEL_54:
  v252 = v542;
LABEL_100:
  sub_20C13B524();
  v472 = v541;
  v473 = v563;
  v474 = v560;
  v475 = v557;
  v557(v541, v563, v560);
  v475(v252, v473, v474);
  v476 = sub_20C13BB74();
  v477 = sub_20C13D1F4();
  if (os_log_type_enabled(v476, v477))
  {
    v478 = swift_slowAlloc();
    v479 = v252;
    v480 = v560;
    v481 = v478;
    *v478 = 134349312;
    v482 = sub_20C133234();
    v483 = *(v559 + 8);
    v483(v472, v480);
    *(v481 + 1) = v482;
    v484 = v548;
    *(v481 + 6) = 2050;
    v485 = sub_20C133224();
    v486 = v479;
    v200 = v564;
    v483(v486, v480);
    v487 = v547;
    *(v481 + 14) = v485;
    _os_log_impl(&dword_20B517000, v476, v477, "[84503892] Finished tracking cell appearance at section: %{public}ld and item: %{public}ld", v481, 0x16u);
    MEMORY[0x20F2F6A40](v481, -1, -1);
  }

  else
  {
    v488 = v560;
    v489 = *(v559 + 8);
    v489(v252, v560);
    v489(v472, v488);
    v487 = v260;
    v484 = v548;
  }

  swift_unknownObjectRelease();

  (v561)(v545, v200);
  return (*(v549 + 8))(v487, v484);
}

uint64_t sub_20B9D56E0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v116 = a2;
  v117 = a3;
  v5 = type metadata accessor for MetricImpressionElement();
  MEMORY[0x28223BE20](v5 - 8);
  v106 = (&v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20C13C5F4();
  v113 = *(v7 - 8);
  v114 = v7;
  MEMORY[0x28223BE20](v7);
  v119 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  MEMORY[0x28223BE20](v9 - 8);
  v115 = &v100 - v10;
  v11 = sub_20C13C634();
  v121 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v110 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v100 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v118 = &v100 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v112 = &v100 - v19;
  MEMORY[0x28223BE20](v18);
  v120 = &v100 - v20;
  v21 = sub_20C13BB84();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v100 - v26;
  v28 = *(v3 + 16);
  v123 = sub_20C13C884();
  v105 = sub_20B9D9C7C();
  v29 = sub_20C13CB74();
  v31 = v30;
  v109 = v28;
  swift_getObjectType();
  v123 = sub_20C13E234();
  v124 = v32;
  MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
  MEMORY[0x20F2F4230](v29, v31);

  v34 = v123;
  v33 = v124;
  sub_20C13B544();

  v35 = sub_20C13BB74();
  v36 = sub_20C13D1C4();

  v37 = os_log_type_enabled(v35, v36);
  v108 = v25;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v111 = v21;
    v39 = v38;
    v40 = v22;
    v41 = a1;
    v42 = v11;
    v43 = swift_slowAlloc();
    v123 = v43;
    *v39 = 136446210;
    v44 = sub_20B51E694(v34, v33, &v123);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_20B517000, v35, v36, "Maybe tracking element disappearance with primary calculator %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v45 = v43;
    v11 = v42;
    a1 = v41;
    v22 = v40;
    MEMORY[0x20F2F6A40](v45, -1, -1);
    v46 = v39;
    v21 = v111;
    MEMORY[0x20F2F6A40](v46, -1, -1);

    v47 = v40;
  }

  else
  {

    v47 = v22;
  }

  v48 = *(v47 + 8);
  v48(v27, v21);
  v49 = v115;
  sub_20B9D8918(v116, v117, v115);
  v50 = v121;
  v51 = (*(v121 + 48))(v49, 1, v11);
  v53 = v118;
  v52 = v119;
  if (v51 == 1)
  {
    return sub_20B520158(v49, &qword_27C768B88);
  }

  v104 = v48;
  v116 = v22;
  (*(v50 + 32))(v120, v49, v11);
  sub_20C13C614();
  v55 = sub_20C13C684();
  v56 = v113 + 8;
  v117 = *(v113 + 8);
  v117(v52, v114);
  if (!v55)
  {
    return (*(v50 + 8))(v120, v11);
  }

  v111 = v21;

  v123 = sub_20C13C884();
  v57 = sub_20C13CB74();
  v58 = v52;
  v60 = v59;
  swift_getObjectType();
  v123 = sub_20C13E234();
  v124 = v61;
  MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
  MEMORY[0x20F2F4230](v57, v60);
  v115 = v55;

  v62 = v124;
  v105 = v123;
  v63 = a1;
  v64 = v106;
  sub_20B9D9CD0(v63, v106, type metadata accessor for MetricImpressionElement);
  sub_20C13C614();
  v65 = sub_20C13C5E4();
  v67 = v66;
  v113 = v56;
  v117(v58, v114);
  v68 = v112;
  sub_20C0B8358(v64, v65, v67, v112);
  v69 = v108;
  sub_20C13B544();
  v70 = *(v50 + 16);
  v70(v53, v68, v11);
  v71 = v107;
  v70(v107, v68, v11);
  v70(v110, v68, v11);

  v72 = sub_20C13BB74();
  v73 = sub_20C13D1C4();
  v109 = v62;

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v102 = v73;
    v75 = v74;
    v103 = swift_slowAlloc();
    v122 = v103;
    *v75 = 136446978;
    sub_20C13C614();
    v76 = sub_20C13C5E4();
    v101 = v72;
    v77 = v76;
    v79 = v78;
    v80 = v114;
    v106 = v11;
    v117(v58, v114);
    v81 = v53;
    v82 = *(v50 + 8);
    v121 = v50 + 8;
    v100 = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v82(v81, v106);
    v83 = sub_20B51E694(v77, v79, &v122);

    *(v75 + 4) = v83;
    *(v75 + 12) = 2050;
    sub_20C13C614();
    v84 = sub_20C13C5B4();
    v85 = v117;
    v117(v58, v80);
    v82(v71, v106);
    *(v75 + 14) = v84;
    *(v75 + 22) = 2082;
    v86 = v110;
    sub_20C13C614();
    v87 = sub_20C13C5D4();
    v89 = v88;
    v85(v58, v80);
    v11 = v106;
    v123 = v87;
    v124 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
    v90 = sub_20C13D8F4();
    v92 = v91;
    v82(v86, v11);

    v93 = sub_20B51E694(v90, v92, &v122);

    *(v75 + 24) = v93;
    *(v75 + 32) = 2082;
    v94 = sub_20B51E694(v105, v109, &v122);

    *(v75 + 34) = v94;
    v95 = v101;
    _os_log_impl(&dword_20B517000, v101, v102, "Tracking element disappearance with id: %{public}s, index: %{public}ld, parent: %{public}s with child calculator %{public}s", v75, 0x2Au);
    v96 = v103;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v96, -1, -1);
    MEMORY[0x20F2F6A40](v75, -1, -1);

    v97 = v108;
  }

  else
  {
    v98 = v53;
    v82 = *(v50 + 8);
    v82(v71, v11);

    v82(v110, v11);
    v82(v98, v11);
    v97 = v69;
  }

  v104(v97, v111);
  v99 = v112;
  sub_20C13C6E4();

  v82(v99, v11);
  return v82(v120, v11);
}

uint64_t sub_20B9D6130(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v145 = a1;
  v146 = a2;
  v6 = sub_20C133244();
  v151 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v152 = *(v9 - 8);
  v153 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v136 = &v127 - v13;
  v14 = sub_20C13C5F4();
  v131 = *(v14 - 8);
  v132 = v14;
  MEMORY[0x28223BE20](v14);
  v130 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C133184();
  v128 = *(v16 - 8);
  v129 = v16;
  MEMORY[0x28223BE20](v16);
  v127 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C132EE4();
  v140 = *(v18 - 8);
  v141 = v18;
  MEMORY[0x28223BE20](v18);
  v139 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ShelfCellItemInfo();
  v143 = *(v20 - 8);
  v144 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v127 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  MEMORY[0x28223BE20](v26 - 8);
  v138 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v127 - v29;
  v31 = sub_20C13C634();
  v147 = *(v31 - 8);
  v148 = v31;
  MEMORY[0x28223BE20](v31);
  v135 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v134 = &v127 - v34;
  MEMORY[0x28223BE20](v35);
  v137 = &v127 - v36;
  MEMORY[0x28223BE20](v37);
  v142 = &v127 - v38;
  v150 = a4;
  v39 = *&a4[OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections];
  sub_20B9D9D38(&qword_27C768B98, 255, MEMORY[0x277CC9AF8]);
  sub_20C13D024();
  sub_20C13D074();
  if (*&v156[0] == v155[0])
  {
    goto LABEL_4;
  }

  v40 = *(v39 + 16);
  v149 = a3;
  result = sub_20C133234();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  a3 = v149;
  if (v40 < result + 1)
  {
LABEL_4:
    sub_20C13B544();
    v42 = v151;
    (*(v151 + 16))(v8, a3, v6);
    v43 = sub_20C13BB74();
    v44 = sub_20C13D1F4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v150 = v11;
      v46 = v8;
      v47 = v45;
      v48 = swift_slowAlloc();
      *&v156[0] = v48;
      *v47 = 136446210;
      sub_20B9D9D38(&qword_27C772940, 255, MEMORY[0x277CC9AF8]);
      v49 = sub_20C13DFA4();
      v51 = v50;
      (*(v42 + 8))(v46, v6);
      v52 = sub_20B51E694(v49, v51, v156);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_20B517000, v43, v44, "Attempted to track cell disappearance at %{public}s immediately after collection view reuse, aborting.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x20F2F6A40](v48, -1, -1);
      MEMORY[0x20F2F6A40](v47, -1, -1);

      v53 = *(v152 + 8);
      v54 = v150;
    }

    else
    {

      (*(v42 + 8))(v8, v6);
      v53 = *(v152 + 8);
      v54 = v11;
    }

    return v53(v54, v153);
  }

  v55 = *&v150[OBJC_IVAR____TtC9SeymourUI11CatalogPage_previousSnapshotBacking];
  v56 = v148;
  if (v55)
  {
    swift_bridgeObjectRetain_n();
    v57 = sub_20B9D9500(v149, v55, v39);
    v59 = v58;

    if (v57)
    {
      goto LABEL_14;
    }
  }

  v60 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
  v61 = v150;
  swift_beginAccess();
  v55 = *&v61[v60];

  v62 = sub_20B9D9500(v149, v55, v39);
  if (!v62)
  {
  }

  v57 = v62;
  v59 = v63;
LABEL_14:
  ObjectType = swift_getObjectType();
  (*(v146 + 40))(ObjectType);
  v65 = v144;
  v66 = (*(v143 + 48))(v25, 1, v144);
  v67 = v147;
  if (v66)
  {
    swift_unknownObjectRelease();

    sub_20B520158(v25, &qword_27C762550);
    (*(v67 + 56))(v30, 1, 1, v56);
    return sub_20B520158(v30, &qword_27C768B88);
  }

  v151 = v57;
  sub_20B9D9CD0(v25, v22, type metadata accessor for ShelfCellItemInfo);
  sub_20B520158(v25, &qword_27C762550);
  sub_20B9D9B9C(&v22[*(v65 + 32)], v30);
  sub_20B86C070(v22);
  v68 = *(v67 + 48);
  if (v68(v30, 1, v56) == 1)
  {
    swift_unknownObjectRelease();

    return sub_20B520158(v30, &qword_27C768B88);
  }

  v69 = *(v67 + 32);
  v69(v142, v30, v56);
  v70 = swift_getObjectType();
  v71 = v139;
  (*(v59 + 8))(v70, v59);
  if (*(v55 + 16) && (v72 = sub_20B65AAD8(v71), (v73 & 1) != 0))
  {
    v74 = *(v55 + 56) + 168 * v72;
    v76 = *(v74 + 16);
    v75 = *(v74 + 32);
    v156[0] = *v74;
    v156[1] = v76;
    v156[2] = v75;
    v77 = *(v74 + 48);
    v78 = *(v74 + 64);
    v79 = *(v74 + 96);
    v156[5] = *(v74 + 80);
    v156[6] = v79;
    v156[3] = v77;
    v156[4] = v78;
    v80 = *(v74 + 112);
    v81 = *(v74 + 128);
    v82 = *(v74 + 144);
    v157 = *(v74 + 160);
    v156[8] = v81;
    v156[9] = v82;
    v156[7] = v80;
    sub_20B622224(v156, v155);
    (*(v140 + 8))(v71, v141);

    v83 = sub_20C133234();
    v84 = v138;
    sub_20B8C7358(v83, v138);
    sub_20B621D00(v156);
    if (v68(v84, 1, v56) == 1)
    {
      (*(v147 + 8))(v142, v56);
      swift_unknownObjectRelease();
      return sub_20B520158(v84, &qword_27C768B88);
    }

    else
    {
      v69(v137, v84, v56);
      v85 = *(v133 + 16);
      v86 = *&v150[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

      v87 = [v86 collectionViewLayout];
      objc_opt_self();
      v88 = swift_dynamicCastObjCClass();
      if (v88)
      {
        v89 = [v88 _orthogonalScrollingSections];
        v90 = v127;
        sub_20C133164();

        sub_20C133234();
        LOBYTE(v89) = sub_20C133174();
        (*(v128 + 8))(v90, v129);
        v91 = v136;
        v92 = v134;
        if (v89)
        {
          v93 = v130;
          sub_20C13C614();
          v94 = sub_20C13C684();

          (*(v131 + 8))(v93, v132);
          if (v94)
          {

            v85 = v94;
          }
        }

        else
        {
        }
      }

      else
      {

        v91 = v136;
        v92 = v134;
      }

      v155[0] = sub_20C13C884();
      sub_20B9D9C7C();
      v95 = sub_20C13CB74();
      v97 = v96;
      v150 = v85;
      swift_getObjectType();
      v155[0] = sub_20C13E234();
      v155[1] = v98;
      MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
      MEMORY[0x20F2F4230](v95, v97);

      v99 = v155[1];
      v149 = v155[0];
      sub_20C13B544();
      v100 = v147;
      v101 = *(v147 + 16);
      v102 = v142;
      v101(v92, v142, v56);
      v103 = v135;
      v101(v135, v102, v56);

      v104 = sub_20C13BB74();
      v105 = sub_20C13D1C4();

      if (os_log_type_enabled(v104, v105))
      {
        LODWORD(v145) = v105;
        v146 = v99;
        v106 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v154 = v144;
        *v106 = 136446722;
        v107 = v130;
        sub_20C13C614();
        v108 = sub_20C13C5E4();
        v110 = v109;
        (*(v131 + 8))(v107, v132);
        v111 = v92;
        v112 = *(v100 + 8);
        v147 = v100 + 8;
        v112(v111, v56);
        v113 = sub_20B51E694(v108, v110, &v154);

        *(v106 + 4) = v113;
        *(v106 + 12) = 2082;
        v114 = sub_20C13C624();
        v115 = v103;
        if (*(v114 + 16) && (v116 = sub_20B65AA60(1701667182, 0xE400000000000000), (v117 & 1) != 0))
        {
          sub_20B51F1D8(*(v114 + 56) + 32 * v116, v155);
        }

        else
        {

          memset(v155, 0, 32);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
        v119 = sub_20C13D8F4();
        v121 = v120;
        sub_20B520158(v155, &unk_27C768A00);
        v56 = v148;
        v112(v115, v148);
        v122 = sub_20B51E694(v119, v121, &v154);

        *(v106 + 14) = v122;
        *(v106 + 22) = 2082;
        v123 = sub_20B51E694(v149, v146, &v154);

        *(v106 + 24) = v123;
        _os_log_impl(&dword_20B517000, v104, v145, "Tracking Cell Disappearance for %{public}s: %{public}s from calculator %{public}s", v106, 0x20u);
        v124 = v144;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v124, -1, -1);
        MEMORY[0x20F2F6A40](v106, -1, -1);

        (*(v152 + 8))(v136, v153);
      }

      else
      {

        v118 = v92;
        v112 = *(v100 + 8);
        v112(v103, v56);
        v112(v118, v56);
        (*(v152 + 8))(v91, v153);
      }

      v125 = v137;
      v126 = v142;
      sub_20C13C6E4();
      swift_unknownObjectRelease();

      v112(v125, v56);
      return (v112)(v126, v56);
    }
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v140 + 8))(v71, v141);
    return (*(v147 + 8))(v142, v56);
  }
}

uint64_t sub_20B9D70F0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_20C13BB84();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v54 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C5F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v45 - v19;
  v21 = sub_20C13C634();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B9D8918(a1, a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_20B520158(v20, &qword_27C768B88);
  }

  (*(v22 + 32))(v24, v20, v21);
  sub_20C13C614();
  v26 = sub_20C13C684();
  v29 = *(v15 + 8);
  v28 = v15 + 8;
  v27 = v29;
  v29(v17, v14);
  if (v26)
  {
    v50 = v27;
    v51 = v28;

    v55 = sub_20C13C884();
    sub_20B9D9C7C();
    v30 = sub_20C13CB74();
    v32 = v31;
    swift_getObjectType();
    v55 = sub_20C13E234();
    v56 = v33;
    MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
    MEMORY[0x20F2F4230](v30, v32);

    v34 = *&v56;
    v48 = v55;
    v35 = v54;
    sub_20C13B544();

    v36 = sub_20C13BB74();
    v37 = sub_20C13D1C4();

    v49 = v37;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v47 = v14;
      v39 = v38;
      v40 = swift_slowAlloc();
      v46 = v40;
      *v39 = 136446466;
      v59 = 0;
      v60 = 0xE000000000000000;
      v61[0] = v40;
      v55 = *&a3;
      v56 = a4;
      v57 = a5;
      v58 = a6;
      type metadata accessor for CGRect(0);
      sub_20C13DDF4();
      v41 = sub_20B51E694(v59, v60, v61);

      *(v39 + 4) = v41;
      *(v39 + 12) = 2082;
      v42 = sub_20B51E694(v48, v34, v61);

      *(v39 + 14) = v42;
      _os_log_impl(&dword_20B517000, v36, v49, "Updating container impressionable bounds to %{public}s with calculator %{public}s", v39, 0x16u);
      v43 = v46;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v43, -1, -1);
      v44 = v39;
      v14 = v47;
      MEMORY[0x20F2F6A40](v44, -1, -1);

      (*(v52 + 8))(v54, v53);
    }

    else
    {

      (*(v52 + 8))(v35, v53);
    }

    sub_20C13C614();
    sub_20C13C6F4();

    v50(v17, v14);
  }

  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_20B9D7644(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v108 = a1;
  v119 = sub_20C13C5F4();
  v116 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v112 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v110 = *(v10 - 8);
  v111 = v10;
  MEMORY[0x28223BE20](v10);
  v115 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v101 - v13;
  v15 = sub_20C13C634();
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v114 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v117 = &v101 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v101 - v21;
  MEMORY[0x28223BE20](v20);
  v118 = &v101 - v22;
  v23 = sub_20C132EE4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
  swift_beginAccess();
  v28 = *(a3 + v27);
  v29 = *(a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections);

  if (!sub_20B9D9500(a2, v28, v29))
  {
  }

  v31 = v30;
  ObjectType = swift_getObjectType();
  (*(v31 + 8))(ObjectType, v31);
  if (*(v28 + 16) && (v33 = sub_20B65AAD8(v26), (v34 & 1) != 0))
  {
    v35 = *(v28 + 56) + 168 * v33;
    v37 = *(v35 + 16);
    v36 = *(v35 + 32);
    v127[0] = *v35;
    v127[1] = v37;
    v127[2] = v36;
    v38 = *(v35 + 48);
    v39 = *(v35 + 64);
    v40 = *(v35 + 96);
    v127[5] = *(v35 + 80);
    v127[6] = v40;
    v127[3] = v38;
    v127[4] = v39;
    v41 = *(v35 + 112);
    v42 = *(v35 + 128);
    v43 = *(v35 + 144);
    v128 = *(v35 + 160);
    v127[8] = v42;
    v127[9] = v43;
    v127[7] = v41;
    sub_20B622224(v127, &v125);
    (*(v24 + 8))(v26, v23);

    v44 = sub_20C133234();
    sub_20B8C7358(v44, v14);
    sub_20B621D00(v127);
    v45 = v120;
    v46 = v121;
    if ((*(v120 + 48))(v14, 1, v121) == 1)
    {
      swift_unknownObjectRelease();
      return sub_20B520158(v14, &qword_27C768B88);
    }

    else
    {
      v48 = v118;
      (*(v45 + 32))(v118, v14, v46);
      [objc_msgSend(v108 container)];
      v50 = v49;
      v52 = v51;
      swift_unknownObjectRelease();
      v53 = *(v109 + 16);
      *&v125 = sub_20C13C884();
      sub_20B9D9C7C();
      v54 = sub_20C13CB74();
      v56 = v55;
      v109 = v53;
      swift_getObjectType();
      *&v125 = sub_20C13E234();
      *(&v125 + 1) = v57;
      MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
      MEMORY[0x20F2F4230](v54, v56);

      v58 = *(&v125 + 1);
      v107 = v125;
      v59 = v115;
      sub_20C13B544();
      v60 = *(v45 + 16);
      v61 = v113;
      v60(v113, v48, v46);
      v60(v117, v48, v46);
      v62 = v114;
      v60(v114, v48, v46);

      v63 = sub_20C13BB74();
      v64 = sub_20C13D1C4();

      if (os_log_type_enabled(v63, v64))
      {
        v104 = v64;
        v65 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v124 = v103;
        v102 = v65;
        *v65 = 136447490;
        v66 = sub_20C13C624();
        v67 = *(v66 + 16);
        v105 = v58;
        v106 = v63;
        if (v67)
        {
          v68 = sub_20B65AA60(1701667182, 0xE400000000000000);
          v69 = v116;
          v70 = v112;
          if (v71)
          {
            sub_20B51F1D8(*(v66 + 56) + 32 * v68, &v125);
          }

          else
          {

            v125 = 0u;
            v126 = 0u;
          }
        }

        else
        {

          v125 = 0u;
          v126 = 0u;
          v69 = v116;
          v70 = v112;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
        v80 = sub_20C13D8F4();
        v82 = v81;
        sub_20B520158(&v125, &unk_27C768A00);
        v112 = *(v120 + 8);
        v108 = ((v120 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        (v112)(v113, v121);
        v83 = sub_20B51E694(v80, v82, &v124);

        v84 = v102;
        *(v102 + 1) = v83;
        *(v84 + 6) = 2082;
        v85 = v117;
        sub_20C13C614();
        v86 = sub_20C13C5E4();
        v88 = v87;
        v89 = v69;
        v79 = v70;
        v113 = *(v89 + 8);
        (v113)(v70, v119);
        v90 = v85;
        v76 = v121;
        v91 = v112;
        (v112)(v90, v121);
        v92 = sub_20B51E694(v86, v88, &v124);

        *(v84 + 14) = v92;
        *(v84 + 11) = 2050;
        v93 = v114;
        sub_20C13C614();
        v94 = sub_20C13C5B4();
        (v113)(v70, v119);
        v91(v93, v76);
        *(v84 + 3) = v94;
        *(v84 + 16) = 2082;
        *&v125 = 0;
        *(&v125 + 1) = 0xE000000000000000;
        v122 = *&a4;
        v123 = *&a5;
        type metadata accessor for CGPoint(0);
        sub_20C13DDF4();
        v95 = sub_20B51E694(v125, *(&v125 + 1), &v124);
        v73 = v120;

        *(v84 + 34) = v95;
        v78 = v116;
        *(v84 + 21) = 2082;
        v122 = 0;
        v123 = 0xE000000000000000;
        v77 = v119;
        v125 = *&a4;
        *&v126 = v50;
        *(&v126 + 1) = v52;
        type metadata accessor for CGRect(0);
        sub_20C13DDF4();
        v96 = sub_20B51E694(v122, v123, &v124);

        *(v84 + 11) = v96;
        *(v84 + 26) = 2082;
        v97 = sub_20B51E694(v107, v105, &v124);

        *(v84 + 54) = v97;
        v98 = v106;
        _os_log_impl(&dword_20B517000, v106, v104, "Updating visible items scroll offset for shelf %{public}s with id %{public}s and index %{public}ld to %{public}s with new bounds %{public}s with calculator: %{public}s", v84, 0x3Eu);
        v99 = v103;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v99, -1, -1);
        MEMORY[0x20F2F6A40](v84, -1, -1);

        (*(v110 + 8))(v115, v111);
      }

      else
      {
        v72 = v61;
        v73 = v120;
        v74 = *(v120 + 8);
        v108 = ((v120 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v75 = v62;
        v76 = v121;
        v74(v75, v121);

        v74(v117, v76);
        v74(v72, v76);
        (*(v110 + 8))(v59, v111);
        v77 = v119;
        v78 = v116;
        v79 = v112;
      }

      v100 = v118;
      sub_20C13C614();
      sub_20C13C6F4();
      swift_unknownObjectRelease();
      (*(v78 + 8))(v79, v77);
      return (*(v73 + 8))(v100, v76);
    }
  }

  else
  {
    swift_unknownObjectRelease();

    return (*(v24 + 8))(v26, v23);
  }
}

uint64_t sub_20B9D80F8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_20C13BB84();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v46 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_20C13C5F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v41[-v19];
  v21 = sub_20C13C634();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v41[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B9D8918(a1, a2, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_20B520158(v20, &qword_27C768B88);
  }

  (*(v22 + 32))(v24, v20, v21);
  sub_20C13C614();
  v26 = sub_20C13C684();
  (*(v15 + 8))(v17, v14);
  if (v26)
  {

    v47 = sub_20C13C884();
    sub_20B9D9C7C();
    v27 = sub_20C13CB74();
    v29 = v28;
    swift_getObjectType();
    v47 = sub_20C13E234();
    v48 = v30;
    MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
    MEMORY[0x20F2F4230](v27, v29);

    v32 = v47;
    v31 = *&v48;
    v33 = v46;
    sub_20C13B544();

    v34 = sub_20C13BB74();
    v35 = sub_20C13D1C4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v36 = 136446466;
      v51 = 0;
      v52 = 0xE000000000000000;
      v53 = v37;
      v47 = *&a3;
      v48 = a4;
      v49 = a5;
      v50 = a6;
      type metadata accessor for CGRect(0);
      sub_20C13DDF4();
      v42 = v35;
      v38 = sub_20B51E694(v51, v52, &v53);

      *(v36 + 4) = v38;
      *(v36 + 12) = 2082;
      v39 = sub_20B51E694(v32, v31, &v53);

      *(v36 + 14) = v39;
      _os_log_impl(&dword_20B517000, v34, v42, "Updating container visible bounds to %{public}s with calculator %{public}s", v36, 0x16u);
      v40 = v43;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v40, -1, -1);
      MEMORY[0x20F2F6A40](v36, -1, -1);

      (*(v44 + 8))(v46, v45);
    }

    else
    {

      (*(v44 + 8))(v33, v45);
    }

    sub_20C13C6A4();
  }

  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_20B9D8614(double a1, double a2, double a3, double a4)
{
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C13C884();
  sub_20B9D9C7C();
  v12 = sub_20C13CB74();
  v14 = v13;
  swift_getObjectType();
  v31 = sub_20C13E234();
  v32 = v15;
  MEMORY[0x20F2F4230](7876666, 0xE300000000000000);
  MEMORY[0x20F2F4230](v12, v14);

  v17 = v31;
  v16 = *&v32;
  sub_20C13B544();

  v18 = sub_20C13BB74();
  v19 = sub_20C13D1C4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v17;
    v21 = v9;
    v22 = v20;
    v23 = swift_slowAlloc();
    *v22 = 136446466;
    v35 = 0;
    v36 = 0xE000000000000000;
    v37 = v23;
    v31 = *&a1;
    v32 = a2;
    v33 = a3;
    v34 = a4;
    type metadata accessor for CGRect(0);
    sub_20C13DDF4();
    v24 = sub_20B51E694(v35, v36, &v37);
    v30 = v8;
    v25 = v24;

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    v26 = sub_20B51E694(v29, v16, &v37);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_20B517000, v18, v19, "Updating impressions visible bounds to %{public}s with calculator: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v22, -1, -1);

    (*(v21 + 8))(v11, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  return sub_20C13C6A4();
}

uint64_t sub_20B9D8918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a3;
  v5 = sub_20C13C5F4();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x28223BE20](v5);
  v113 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C133244();
  v120 = *(v7 - 8);
  v121 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v118 = &v105 - v10;
  v11 = sub_20C13BB84();
  v116 = *(v11 - 8);
  v117 = v11;
  MEMORY[0x28223BE20](v11);
  v122 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v112 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v105 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v105 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v126 = &v105 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v125 = &v105 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v124 = &v105 - v26;
  MEMORY[0x28223BE20](v25);
  v123 = &v105 - v27;
  v28 = sub_20C132EE4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = OBJC_IVAR____TtC9SeymourUI11CatalogPage_currentSnapshotBacking;
  swift_beginAccess();
  v33 = *(a2 + v32);
  v34 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_layoutSections);

  v35 = sub_20B9D9500(a1, v33, v34);
  if (!v35)
  {

    goto LABEL_9;
  }

  v37 = v35;
  v38 = v36;
  ObjectType = swift_getObjectType();
  (*(v38 + 8))(ObjectType, v38);
  if (!*(v33 + 16) || (v40 = sub_20B65AAD8(v31), (v41 & 1) == 0))
  {
    swift_unknownObjectRelease();

    (*(v29 + 8))(v31, v28);
LABEL_9:
    v66 = sub_20C13C634();
    return (*(*(v66 - 8) + 56))(v127, 1, 1, v66);
  }

  v109 = v37;
  v42 = *(v33 + 56) + 168 * v40;
  v44 = *(v42 + 16);
  v43 = *(v42 + 32);
  v131[0] = *v42;
  v131[1] = v44;
  v131[2] = v43;
  v45 = *(v42 + 48);
  v46 = *(v42 + 64);
  v47 = *(v42 + 96);
  v131[5] = *(v42 + 80);
  v131[6] = v47;
  v131[3] = v45;
  v131[4] = v46;
  v48 = *(v42 + 112);
  v49 = *(v42 + 128);
  v50 = *(v42 + 144);
  v132 = *(v42 + 160);
  v131[8] = v49;
  v131[9] = v50;
  v131[7] = v48;
  sub_20B622224(v131, &v129);
  (*(v29 + 8))(v31, v28);

  v51 = sub_20C133234();
  v52 = v123;
  sub_20B8C7358(v51, v123);
  sub_20B621D00(v131);
  v53 = v122;
  sub_20C13B544();
  sub_20B9D9B9C(v52, v124);
  sub_20B9D9B9C(v52, v125);
  sub_20B9D9B9C(v52, v126);
  v55 = v120;
  v54 = v121;
  v56 = *(v120 + 16);
  v57 = v118;
  v56(v118, a1, v121);
  v58 = v119;
  v56(v119, a1, v54);
  v59 = sub_20C13BB74();
  v60 = sub_20C13D1C4();
  if (os_log_type_enabled(v59, v60))
  {
    v106 = v60;
    v107 = v59;
    v61 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v128 = v105;
    v110 = v61;
    *v61 = 136447234;
    sub_20B9D9B9C(v124, v20);
    v62 = sub_20C13C634();
    v63 = *(v62 - 8);
    v108 = *(v63 + 48);
    if (v108(v20, 1, v62) == 1)
    {
      sub_20B520158(v20, &qword_27C768B88);
      v64 = 0;
      v65 = 0;
    }

    else
    {
      v69 = v113;
      sub_20C13C614();
      (*(v63 + 8))(v20, v62);
      v64 = sub_20C13C5E4();
      v65 = v70;
      (*(v114 + 8))(v69, v115);
    }

    v71 = v125;
    v129 = v64;
    v130 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
    v72 = sub_20C13D8F4();
    v74 = v73;
    sub_20B520158(v124, &qword_27C768B88);

    v75 = sub_20B51E694(v72, v74, &v128);

    v76 = v110;
    *(v110 + 4) = v75;
    *(v76 + 6) = 2082;
    v77 = v111;
    sub_20B9D9B9C(v71, v111);
    v78 = v108(v77, 1, v62);
    if (v78 == 1)
    {
      sub_20B520158(v77, &qword_27C768B88);
      v79 = 0;
    }

    else
    {
      v80 = v113;
      sub_20C13C614();
      (*(v63 + 8))(v77, v62);
      v79 = sub_20C13C5B4();
      (*(v114 + 8))(v80, v115);
    }

    v81 = v121;
    v82 = v126;
    v129 = v79;
    LOBYTE(v130) = v78 == 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B90);
    v83 = sub_20C13D8F4();
    v85 = v84;
    sub_20B520158(v125, &qword_27C768B88);
    v86 = sub_20B51E694(v83, v85, &v128);

    v87 = v110;
    *(v110 + 14) = v86;
    *(v87 + 11) = 2082;
    v88 = v112;
    sub_20B9D9B9C(v82, v112);
    if (v108(v88, 1, v62) == 1)
    {
      sub_20B520158(v88, &qword_27C768B88);
      v89 = 0;
      v90 = 0;
    }

    else
    {
      v91 = v113;
      sub_20C13C614();
      (*(v63 + 8))(v88, v62);
      v89 = sub_20C13C5D4();
      v90 = v92;
      (*(v114 + 8))(v91, v115);
    }

    v94 = v118;
    v93 = v119;
    v129 = v89;
    v130 = v90;
    v95 = sub_20C13D8F4();
    v97 = v96;
    sub_20B520158(v126, &qword_27C768B88);

    v98 = sub_20B51E694(v95, v97, &v128);

    v99 = v110;
    v110[3] = v98;
    *(v99 + 16) = 2050;
    v100 = sub_20C133234();
    v101 = *(v120 + 8);
    v101(v94, v81);
    *(v99 + 34) = v100;
    *(v99 + 21) = 2050;
    v102 = sub_20C133204();
    v101(v93, v81);
    *(v99 + 44) = v102;
    v103 = v107;
    _os_log_impl(&dword_20B517000, v107, v106, "Returning shelf impression metrics with id: %{public}s, index: %{public}s, parent: %{public}s for indexPath: %{public}ld, %{public}ld", v99, 0x34u);
    v104 = v105;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v104, -1, -1);
    MEMORY[0x20F2F6A40](v99, -1, -1);
    swift_unknownObjectRelease();

    (*(v116 + 8))(v122, v117);
  }

  else
  {
    v68 = *(v55 + 8);
    v68(v58, v54);
    v68(v57, v54);
    swift_unknownObjectRelease();

    sub_20B520158(v126, &qword_27C768B88);
    sub_20B520158(v125, &qword_27C768B88);
    sub_20B520158(v124, &qword_27C768B88);
    (*(v116 + 8))(v53, v117);
  }

  return sub_20B9D9C0C(v123, v127);
}

uint64_t sub_20B9D9418()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20B9D94A8(uint64_t a1, uint64_t a2)
{
  result = sub_20B9D9D38(&qword_27C768B80, a2, type metadata accessor for CatalogPageImpressionTracker);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20B9D9500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20C132EE4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133244();
  sub_20B9D9D38(&qword_27C768B98, 255, MEMORY[0x277CC9AF8]);
  sub_20C13D024();
  sub_20C13D074();
  v11 = 0;
  if (v54 == v56)
  {
    return v11;
  }

  v12 = v7;
  v13 = *(a3 + 16);
  v51 = a1;
  v14 = sub_20C133234();
  if (__OFADD__(v14, 1))
  {
    goto LABEL_28;
  }

  if (v13 >= v14 + 1)
  {
    v26 = sub_20C133234();
    if (v26 >= v13)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v27 = a3 + 24 * v26;
    v28 = *(v27 + 32);
    v29 = *(v27 + 40);
    if (*(v27 + 48) < 0)
    {
      v54 = *(v27 + 32);

      sub_20B8D8FF8(v31);
      v30 = v54;
      v48 = *(v54 + 16);
      if (!v48)
      {
LABEL_22:

        return 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_20C14F980;
      *(v30 + 32) = v28;
      *(v30 + 40) = v29;
      swift_unknownObjectRetain();
      v48 = 1;
    }

    v32 = 0;
    v33 = 0;
    v49 = v30;
    ++v50;
    v34 = (v30 + 40);
    while (v33 < *(v30 + 16))
    {
      v11 = *(v34 - 1);
      v35 = *v34;
      ObjectType = swift_getObjectType();
      v37 = a2;
      v38 = *(v35 + 8);
      swift_unknownObjectRetain();
      v38(ObjectType, v35);
      a2 = v37;
      v39 = v53;
      if (*(a2 + 16) && (v40 = sub_20B65AAD8(v53), (v41 & 1) != 0))
      {
        v42 = *(*(a2 + 56) + 168 * v40 + 104);
        v43 = *v50;

        v43(v39, v52);
        v44 = *(v42 + 16);
      }

      else
      {
        (*v50)(v39, v52);
        v44 = 0;
      }

      v45 = __OFADD__(v32, v44);
      v32 += v44;
      if (v45)
      {
        goto LABEL_27;
      }

      if (sub_20C133224() < v32)
      {

        return v11;
      }

      ++v33;
      swift_unknownObjectRelease();
      v34 += 2;
      v30 = v49;
      if (v48 == v33)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0x6170207865646E49, 0xEB00000000206874);
  sub_20B9D9D38(&qword_27C772940, 255, MEMORY[0x277CC9AF8]);
  v15 = sub_20C13DFA4();
  MEMORY[0x20F2F4230](v15);

  MEMORY[0x20F2F4230](0xD00000000000001CLL, 0x800000020C1A3250);
  v16 = MEMORY[0x20F2F43F0](a3, &type metadata for ShelfLayoutSection);
  MEMORY[0x20F2F4230](v16);

  MEMORY[0x20F2F4230](0x6162206874697720, 0xEF203A676E696B63);
  sub_20B9D9D38(&qword_27C7675A0, 255, MEMORY[0x277CC95F0]);
  v17 = sub_20C13C764();
  MEMORY[0x20F2F4230](v17);

  MEMORY[0x20F2F4230](46, 0xE100000000000000);
  v19 = v54;
  v18 = v55;
  sub_20C1380F4();
  if ((sub_20C1380B4() & 1) == 0)
  {
    sub_20C13B544();

    v20 = sub_20C13BB74();
    v21 = sub_20C13D1D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v6;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v54 = v24;
      *v23 = 136446210;
      v25 = sub_20B51E694(v19, v18, &v54);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_20B517000, v20, v21, "%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x20F2F6A40](v24, -1, -1);
      MEMORY[0x20F2F6A40](v23, -1, -1);

      (*(v12 + 8))(v9, v22);
    }

    else
    {

      (*(v12 + 8))(v9, v6);
    }

    return 0;
  }

LABEL_30:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B9D9B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B9D9C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B9D9C7C()
{
  result = qword_27C768BA0;
  if (!qword_27C768BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768BA0);
  }

  return result;
}

uint64_t sub_20B9D9CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B9D9D38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_20B9D9D80(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_layout] = xmmword_20C1670B0;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = *MEMORY[0x277D743F8];
  v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v14 = [v13 fontDescriptorWithSymbolicTraits_];
  if (v14)
  {
    v15 = v14;

    v13 = v15;
  }

  v16 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_titleLabel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v18 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v19 = swift_initStackObject();
  v20 = MEMORY[0x277D74430];
  *(v19 + 16) = xmmword_20C14F980;
  v21 = *v20;
  *(v19 + 32) = *v20;
  *(v19 + 40) = v12;
  v22 = v18;
  v23 = v21;
  v24 = sub_20B6B134C(v19);
  swift_setDeallocating();
  sub_20B520158(v19 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v24;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v25 = sub_20C13C744();

  v26 = [v13 fontDescriptorByAddingAttributes_];

  v27 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
  [v11 setFont_];

  v28 = [objc_opt_self() whiteColor];
  [v11 setTextColor_];

  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  LODWORD(v29) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v29];

  *&v4[v16] = v11;
  v30 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_menuButton;
  type metadata accessor for MoreOptionsButton();
  v31 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v30] = v31;
  v4[OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_shouldTriggerDismissEvent] = 1;
  v88.receiver = v4;
  v88.super_class = type metadata accessor for UpNextQueueHeaderCell();
  v32 = objc_msgSendSuper2(&v88, sel_initWithFrame_, a1, a2, a3, a4);
  v33 = [v32 contentView];
  v34 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_titleLabel;
  [v33 addSubview_];

  v35 = v32;
  v36 = [v35 contentView];
  v37 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_menuButton;
  [v36 addSubview_];

  v38 = *&v35[v37];
  v39 = objc_allocWithZone(MEMORY[0x277D75348]);
  v40 = v38;
  v41 = [v39 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v40 setTintColor_];

  [*&v35[v37] setShowsMenuAsPrimaryAction_];
  [*&v35[v37] addTarget:v35 action:sel_handleMenuActionTriggered_ forControlEvents:0x4000];
  v42 = *&v35[v37];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v42;

  v45 = &v44[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_onMenuDismissed];
  v46 = *&v44[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_onMenuDismissed];
  *v45 = sub_20B9DBE50;
  v45[1] = v43;

  sub_20B583ECC(v46);

  v85 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20C150060;
  v48 = [*&v32[v34] leadingAnchor];
  v49 = [v35 contentView];
  v50 = [v49 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v51 = *&qword_27C799F40;
  v52 = [v48 constraintEqualToAnchor:v50 constant:{*&qword_27C799F40, v85}];

  *(v47 + 32) = v52;
  v53 = [*&v32[v34] trailingAnchor];
  v54 = [*&v35[v37] leadingAnchor];
  v55 = [v53 constraintLessThanOrEqualToAnchor:v54 constant:-8.0];

  *(v47 + 40) = v55;
  v56 = [*&v32[v34] topAnchor];
  v57 = [v35 contentView];
  v58 = [v57 &selRef_setLineBreakMode_];

  v59 = [v56 constraintEqualToAnchor_];
  *(v47 + 48) = v59;
  v60 = [*&v32[v34] bottomAnchor];
  v61 = [v35 contentView];
  v62 = [v61 &selRef_secondaryLabel + 5];

  v63 = [v60 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v64) = v87;
  [v63 setPriority_];
  *(v47 + 56) = v63;
  v65 = [*&v35[v37] trailingAnchor];
  v66 = [v35 contentView];
  v67 = [v66 trailingAnchor];

  v68 = [v65 constraintEqualToAnchor:v67 constant:-v51];
  *(v47 + 64) = v68;
  v69 = [*&v35[v37] topAnchor];
  v70 = [v35 contentView];
  v71 = [v70 topAnchor];

  v72 = [v69 constraintEqualToAnchor_];
  *(v47 + 72) = v72;
  v73 = [*&v35[v37] bottomAnchor];
  v74 = [v35 contentView];

  v75 = [v74 bottomAnchor];
  v76 = [v73 constraintLessThanOrEqualToAnchor_];

  sub_20C13BBA4();
  LODWORD(v77) = v87;
  [v76 setPriority_];
  *(v47 + 80) = v76;
  v78 = [*&v35[v37] widthAnchor];
  v79 = [*&v35[v37] heightAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v47 + 88) = v80;
  v81 = [*&v35[v37] heightAnchor];
  v82 = [v81 constraintGreaterThanOrEqualToConstant_];

  *(v47 + 96) = v82;
  sub_20B51C88C(0, &qword_281100500);
  v83 = sub_20C13CC54();

  [v86 activateConstraints_];

  return v35;
}

void sub_20B9DA8F0()
{
  v0 = sub_20C133244();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_shouldTriggerDismissEvent) == 1 && (v9 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v10 = v9;
      *v6 = 0;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      v6[24] = 96;
      v11 = swift_storeEnumTagMultiPayload();
      *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
      *(&v15 - 4) = 0;
      *(&v15 - 24) = 1;
      *(&v15 - 2) = v6;
      *(&v15 - 1) = v10;
      v13 = [*(v10 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
      if (v13)
      {
        v14 = v13;
        sub_20C1331E4();

        sub_20C0C1CDC(v3, sub_20B5E2A84);
        swift_unknownObjectRelease();
        (*(v1 + 8))(v3, v0);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      sub_20B5E2760(v6);
    }

    else
    {
    }
  }
}

void sub_20B9DAD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v10 = sub_20C133244();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    *(Strong + OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_shouldTriggerDismissEvent) = 0;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      *v15 = a3;
      *(v15 + 1) = a4;
      *(v15 + 2) = a5;
      v15[24] = a6;
      v20 = swift_storeEnumTagMultiPayload();
      v26[1] = v26;
      MEMORY[0x28223BE20](v20);
      v26[-4] = 0;
      LOBYTE(v26[-3]) = 1;
      v26[-2] = v15;
      v26[-1] = v19;
      v21 = *(v19 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v22 = a5;

      v23 = v17;
      v24 = [v21 indexPathForCell_];
      if (v24)
      {
        v25 = v24;
        sub_20C1331E4();

        sub_20C0C1CDC(v12, sub_20B5E275C);
        (*(v27 + 8))(v12, v10);
      }

      swift_unknownObjectRelease();

      sub_20B5E2760(v15);
    }

    else
    {
    }
  }
}

id sub_20B9DB010()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpNextQueueHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UpNextQueueHeaderCell()
{
  result = qword_2811027F8;
  if (!qword_2811027F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B9DB118()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B9DB1E8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B9DB234@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B9DB28C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20B9DB2F0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x3E)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768198);
    v9 = swift_projectBox();
    v10 = *(v9 + *(v8 + 96));
    v11 = *(v9 + *(v8 + 128));
    v12 = *&v2[OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_menuButton];

    [v12 setEnabled_];
    v13 = *&v2[OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_titleLabel];
    v14 = sub_20C13C914();

    [v13 setText_];

    v15 = *(v10 + 16);
    [v12 setHidden_];
    if (v15)
    {
      v16 = *(v10 + 16);
      if (v16)
      {
        v42 = v12;
        v43 = v2;
        v45 = MEMORY[0x277D84F90];
        sub_20C13DD64();
        sub_20B51C88C(0, &qword_27C7713A0);
        v41[1] = v10;
        v17 = (v10 + 56);
        do
        {
          v25 = *v17;
          v18 = *(v17 - 3);
          v19 = *(v17 - 2);
          v20 = *(v17 - 1);
          v17 += 32;
          v21 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v22 = swift_allocObject();
          *(v22 + 16) = v21;
          *(v22 + 24) = v18;
          *(v22 + 32) = v19;
          *(v22 + 40) = v20;
          *(v22 + 48) = v25;
          v23 = v20;
          swift_bridgeObjectRetain_n();
          v24 = v23;
          sub_20C13D624();
          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          --v16;
        }

        while (v16);

        v12 = v42;
        v2 = v43;
      }

      else
      {
      }

      sub_20B51C88C(0, &unk_27C76FED0);
      v39 = sub_20C13D554();
    }

    else
    {

      v39 = 0;
    }

    [v12 setMenu_];
  }

  else
  {
    sub_20C13B534();

    v26 = v1;
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1D4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v43 = v1;
      v30 = v29;
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = a1;
      v45 = v42;
      *v30 = 138543618;
      *(v30 + 4) = v26;
      *v31 = v26;
      *(v30 + 12) = 2082;
      v32 = sub_20B5F66D0();
      v33 = v26;
      v34 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v32);
      v36 = sub_20B51E694(v34, v35, &v45);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_20B517000, v27, v28, "Attempted to configure %{public}@ with item: %{public}s", v30, 0x16u);
      sub_20B520158(v31, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v31, -1, -1);
      v37 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x20F2F6A40](v37, -1, -1);
      v38 = v30;
      v2 = v43;
      MEMORY[0x20F2F6A40](v38, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return [v2 setNeedsLayout];
}

void sub_20B9DB81C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_layout) = xmmword_20C1670B0;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v4 = *MEMORY[0x277D743F8];
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];
  if (v6)
  {
    v7 = v6;

    v5 = v7;
  }

  v8 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_titleLabel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_20C14F980;
  v12 = *MEMORY[0x277D74430];
  *(v11 + 32) = *MEMORY[0x277D74430];
  *(v11 + 40) = v4;
  v13 = v10;
  v14 = v12;
  v15 = sub_20B6B134C(v11);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v15;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v16 = sub_20C13C744();

  v17 = [v5 fontDescriptorByAddingAttributes_];

  v18 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];
  [v3 setFont_];

  v19 = [objc_opt_self() whiteColor];
  [v3 setTextColor_];

  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];
  LODWORD(v20) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v20];

  *(v0 + v8) = v3;
  v21 = OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_menuButton;
  type metadata accessor for MoreOptionsButton();
  v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v21) = v22;
  *(v0 + OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_shouldTriggerDismissEvent) = 1;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B9DBC48()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC9SeymourUI21UpNextQueueHeaderCell_shouldTriggerDismissEvent) = 1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = 1;
    v7[24] = 96;
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

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t type metadata accessor for GenreFilterUpdated()
{
  result = qword_27C768BB0;
  if (!qword_27C768BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B9DBECC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownStep];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownWindUp];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownFadeOut];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownCompleted];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_20C138BB4();
  sub_20C138BC4();
  v13 = objc_allocWithZone(sub_20C138A04());
  v14 = sub_20C1389F4();
  *&v4[OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_countdownRingView] = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = type metadata accessor for MeditationCountdownView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_20C13C914();
  v19 = [objc_opt_self() imageNamed:v18 inBundle:v17 compatibleWithTraitCollection:0];

  v70 = v17;
  if (v19 && (v20 = [v19 imageWithRenderingMode_], v19, v20))
  {
    v21 = objc_allocWithZone(sub_20C139194());
    v69 = v20;
    v22 = sub_20C139174();
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    *&v5[OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_centerAnimationView] = v22;
    v71.receiver = v5;
    v71.super_class = v15;
    v23 = objc_msgSendSuper2(&v71, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v24 = OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_countdownRingView;
    v25 = *&v23[OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_countdownRingView];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = v23;
    v27 = v25;

    sub_20C1389C4();

    v28 = *&v23[v24];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = v28;

    sub_20C138994();

    v30 = *&v23[v24];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = v30;

    sub_20C1389B4();

    v32 = *&v23[v24];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v32;

    sub_20C1389A4();

    v34 = v26;
    v35 = *&v23[v24];
    v36 = v34;
    [v36 addSubview_];
    v37 = OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_centerAnimationView;
    [v36 addSubview_];
    v68 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_20C14FF90;
    v39 = [*&v23[v24] leadingAnchor];
    v40 = [v36 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v38 + 32) = v41;
    v42 = [*&v23[v24] trailingAnchor];
    v43 = [v36 trailingAnchor];

    v44 = [v42 constraintEqualToAnchor_];
    *(v38 + 40) = v44;
    v45 = [*&v23[v24] topAnchor];
    v46 = [v36 topAnchor];

    v47 = [v45 constraintEqualToAnchor_];
    *(v38 + 48) = v47;
    v48 = [*&v23[v24] bottomAnchor];
    v49 = [v36 bottomAnchor];

    v50 = [v48 constraintEqualToAnchor_];
    *(v38 + 56) = v50;
    v51 = [*&v36[v37] centerXAnchor];
    v52 = [v36 centerXAnchor];

    v53 = [v51 constraintEqualToAnchor_];
    *(v38 + 64) = v53;
    v54 = [*&v36[v37] centerYAnchor];
    v55 = [v36 centerYAnchor];

    v56 = [v54 constraintEqualToAnchor_];
    *(v38 + 72) = v56;
    v57 = [*&v36[v37] widthAnchor];
    v58 = [v57 constraintEqualToConstant_];

    *(v38 + 80) = v58;
    v59 = [*&v36[v37] heightAnchor];
    v60 = [v59 constraintEqualToConstant_];

    *(v38 + 88) = v60;
    v61 = [v36 widthAnchor];

    v62 = [v61 constraintEqualToConstant_];
    *(v38 + 96) = v62;
    v63 = [v36 heightAnchor];

    v64 = [v36 widthAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v38 + 104) = v65;
    sub_20B5E29D0();
    v66 = sub_20C13CC54();

    [v68 activateConstraints_];

    [*&v23[v24] setAlpha_];
    return v36;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

void sub_20B9DC724()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownCompleted);
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {

      v3(v4);

      sub_20B583ECC(v3);
    }

    else
    {
    }
  }
}

void sub_20B9DC7CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20B9DCB1C(a1);
    v4 = sub_20C138794();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      [v3 accessibilityUpdateCountdownToStep_];
      v5 = &v3[OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownStep];
      swift_beginAccess();
      v6 = *v5;
      if (*v5)
      {

        v6(a1);

        sub_20B583ECC(v6);
      }

      else
      {
      }
    }
  }
}

void sub_20B9DC8AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownFadeOut);
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {

      v3(v4);
      sub_20B583ECC(v3);
    }

    sub_20C139184();
  }
}

void sub_20B9DC968()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_countdownRingView;
    [*(Strong + OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_countdownRingView) setOpaque_];
    [*&v1[v2] setAlpha_];
    v3 = &v1[OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_onCountdownWindUp];
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {

      v4(v5);

      sub_20B583ECC(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_20B9DCB1C(uint64_t a1)
{
  v2 = sub_20C1387A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D54078] || v7 == *MEMORY[0x277D54080] || v7 == *MEMORY[0x277D54088])
  {
    return sub_20C139184();
  }

  else
  {
    return (*(v3 + 8))(v6, v2);
  }
}

id sub_20B9DCCA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeditationCountdownView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B9DD018()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23MeditationCountdownView_countdownRingView);
  sub_20C1389E4();

  return [v1 setHidden_];
}

uint64_t sub_20B9DD0B4(double a1)
{
  if (*(v1 + 72) == 1)
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    v5 = vabdd_f64(v3, v2) >= 0.001;
    v6 = fabs(v4) >= 0.001 || v5;
    if (v6 != 1)
    {
      return v6;
    }

    v7 = v3 - v2;
    v8 = sqrt(*(v1 + 48));
    v9 = *(v1 + 56) * 0.5;
    if (v8 - v9 <= 0.001)
    {
      if (v9 - v8 <= 0.001)
      {
        v28 = exp(-(v9 * a1));
        v29 = v4 + v7 * v9;
        v30 = v7 + v29 * a1;
        v16 = v28 * v30;
        v26 = v28 * v29 - v28 * v9 * v30;
        goto LABEL_12;
      }

      v19 = sqrt(v9 * v9 - v8 * v8);
      v21 = exp(-(v9 * a1));
      v22 = v19 * a1;
      v33 = cosh(v22);
      v23 = (v4 + v7 * v9) / v19;
      v24 = sinh(v22);
      v25 = v7 * v33 + v23 * v24;
      v16 = v21 * v25;
      v17 = v21 * (v19 * (v23 * v33) + v19 * (v7 * v24));
      v18 = v21 * v9 * v25;
    }

    else
    {
      v10 = sqrt(v8 * v8 - v9 * v9);
      v12 = exp(-(v9 * a1));
      v13 = __sincos_stret(v10 * a1);
      v14 = (v4 + v7 * v9) / v10;
      v15 = v7 * v13.__cosval + v14 * v13.__sinval;
      v16 = v12 * v15;
      v17 = v12 * (v10 * (v14 * v13.__cosval) - v10 * (v7 * v13.__sinval));
      v18 = v12 * v9 * v15;
    }

    v26 = v17 - v18;
LABEL_12:
    v31 = v16 + v2;
    if (vabdd_f64(v16 + v2, v2) < 0.001)
    {
      v31 = v2;
    }

    *(v1 + 32) = v31;
    *(v1 + 40) = v26;
    *(v1 + 72) = 1;
    return v6;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SpringAnimation.SpringAnimationState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for SpringAnimation.SpringAnimationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SpringAnimation.SpringAnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_20B9DD41C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20B9DD494(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_20B9DD5EC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_20B9DD82C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20B9DD89C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_20B9DD9EC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id sub_20B9DDC1C(double a1, double a2, double a3, double a4)
{
  v8 = &v4[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset];
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  [*&v4[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint] setConstant_];
  [*&v4[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint] setConstant_];
  [*&v4[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint] setConstant_];
  [*&v4[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint] setConstant_];

  return [v4 setNeedsLayout];
}

char *TVButton.__allocating_init(frame:contentView:isPillShape:ignoreContentInsets:)(void *a1, uint64_t a2, char a3, int a4, double a5, double a6, double a7, double a8)
{
  ObjectType = swift_getObjectType();

  return sub_20B9E0050(a1, a3, a4, v8, ObjectType, a2, a5, a6, a7, a8);
}

id TVButton.contentView.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_contentView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_20B9DDDD4()
{
  LOBYTE(v1) = *(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading);
  v2 = &selRef_startAnimating;
  if (!v1)
  {
    v2 = &selRef_stopAnimating;
  }

  v19 = *(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_activityIndicator);
  [v19 *v2];
  v3 = [*(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) contentView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v6 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84F90];
    if (v6 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v18 = v1;
      v1 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x20F2F5430](v1, v6);
        }

        else
        {
          if (v1 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v6 + 8 * v1 + 32);
        }

        v9 = v8;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v11 = v19;
        v12 = sub_20C13D5F4();

        if (v12)
        {
        }

        else
        {
          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
        }

        ++v1;
        if (v10 == i)
        {
          v13 = aBlock[0];
          LOBYTE(v1) = v18;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_21:

    v14 = objc_opt_self();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v1;
    *(v16 + 32) = v13;
    aBlock[4] = sub_20B9E0FE0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_14;
    v17 = _Block_copy(aBlock);

    [v14 animateWithDuration:v17 animations:0.33];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

double TVButton.intrinsicContentSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset + 8);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset + 24);
  v3 = OBJC_IVAR____TtC9SeymourUI8TVButton_contentView;
  swift_beginAccess();
  [*(v0 + v3) intrinsicContentSize];
  return v2 + v1 + v4;
}

char *TVButton.init(frame:contentView:isPillShape:ignoreContentInsets:)(void *a1, uint64_t a2, char a3, int a4, double a5, double a6, double a7, double a8)
{
  ObjectType = swift_getObjectType();

  return sub_20B9E00F0(a1, a3, a4, v8, ObjectType, a2, a5, a6, a7, a8);
}

Swift::Void __swiftcall TVButton.layoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = [v1 visualEffectContainerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = *&v0[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView];
    sub_20C13D4E4();
    [v12 setCenter_];
    v15.origin.x = v5;
    v15.origin.y = v7;
    v15.size.width = v9;
    v15.size.height = v11;
    Width = CGRectGetWidth(v15);
    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    [v12 setBounds_];
    sub_20B9DE3E4();
  }

  else
  {
    __break(1u);
  }
}

void sub_20B9DE3E4()
{
  v1 = v0[OBJC_IVAR____TtC9SeymourUI8TVButton_isPillShape];
  if (v1 == 1)
  {
    [v0 bounds];
    v2 = CGRectGetHeight(v24) * 0.5;
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius];
  }

  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  [v3 setCornerRadius_];
  v4 = [v3 contentView];
  if (v4)
  {
    v5 = v4;
    [v4 smu:v2 setCornerRadius:?];

    v6 = *&v0[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView];
    v7 = v2;
    if (v1)
    {
      v8 = [*&v0[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView] superview];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v18 = v17;
        v19 = v15;
        v20 = v13;
        v21 = v11;
      }

      else
      {
        [v0 bounds];
      }

      v7 = CGRectGetHeight(*&v21) * 0.5;
    }

    [v6 smu:v7 setCornerRadius:?];
    v22 = [v0 layer];
    [v22 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TVButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4)
  {
    if (isa)
    {
      v5 = [(objc_class *)isa userInterfaceStyle];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (!isa || v5 != v7)
    {
      v8 = [v1 traitCollection];
      v9 = [v8 userInterfaceStyle] == 2;

      v10 = *&v1[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
      v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:dbl_20C167360[v9]];
      [v10 setBackgroundColor:v11 forState:4];
    }
  }
}

UIContextMenuConfiguration_optional __swiftcall TVButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_opt_self();
  v8[4] = sub_20B9E0850;
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20B9DFFC0;
  v8[3] = &block_descriptor_65;
  v4 = _Block_copy(v8);

  v5 = [v3 configurationWithIdentifier:0 previewProvider:0 actionProvider:v4];

  _Block_release(v4);
  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

void *sub_20B9DE8C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9SeymourUI8TVButton_menu);
  v2 = Strong;
  v3 = v1;

  return v1;
}

id sub_20B9DE930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B8B6BEC;
  v16 = &block_descriptor_22_0;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B9DFFC0;
  v16 = &block_descriptor_19_0;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_20B583ECC(a4);
  sub_20B583ECC(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

void TVButton.contextMenuInteraction(_:willDisplayMenuFor:animator:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  if (v1)
  {

    v1(v2);

    sub_20B583ECC(v1);
  }
}

id sub_20B9DEC5C(unint64_t a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v5 = a1;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] = a1;
    v25 = v2;
    v6 = [v2 subviews];
    sub_20B51C88C(0, &qword_27C762910);
    v7 = sub_20C13CC74();

    if (v7 >> 62)
    {
      goto LABEL_32;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v26 = v4;
    v27 = v5;
    if (v8)
    {
      v5 = 0;
      v4 = v7 & 0xC000000000000001;
      v9 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v4)
        {
          v10 = MEMORY[0x20F2F5430](v5, v7);
          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v5 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v10 = *(v7 + 8 * v5 + 32);
          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            v8 = sub_20C13DB34();
            goto LABEL_4;
          }
        }

        *&v31 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767850);
        if (swift_dynamicCast())
        {
          if (*(&v29 + 1))
          {
            sub_20B51C710(&v28, &v31);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_20BC05B5C(0, v9[2] + 1, 1, v9);
            }

            v13 = v9[2];
            v12 = v9[3];
            if (v13 >= v12 >> 1)
            {
              v9 = sub_20BC05B5C((v12 > 1), v13 + 1, 1, v9);
            }

            v9[2] = v13 + 1;
            sub_20B51C710(&v31, &v9[5 * v13 + 4]);
            goto LABEL_8;
          }
        }

        else
        {
          v30 = 0;
          v28 = 0u;
          v29 = 0u;
        }

        sub_20B9E0FF0(&v28);
LABEL_8:
        ++v5;
        if (v11 == v8)
        {
          goto LABEL_23;
        }
      }
    }

    v9 = MEMORY[0x277D84F90];
LABEL_23:

    v14 = v9[2];
    if (v14)
    {
      v15 = (v9 + 4);
      v5 = v27;
      LOBYTE(v4) = v26;
      do
      {
        sub_20B51CC64(v15, &v31);
        v16 = v32;
        v17 = v33;
        __swift_project_boxed_opaque_existential_1(&v31, v32);
        (*(v17 + 16))(v27, v26 & 1, v16, v17);
        __swift_destroy_boxed_opaque_existential_1(&v31);
        v15 += 40;
        --v14;
      }

      while (v14);
    }

    else
    {

      v5 = v27;
      LOBYTE(v4) = v26;
    }

    v3 = v25;
    [v25 setNeedsLayout];
  }

  v18 = &v3[OBJC_IVAR____TtC9SeymourUI8TVButton_contentView];
  swift_beginAccess();
  v19 = *v18;
  v20 = *(v18 + 1);
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 8);
  v23 = v19;
  v22(v5, v4 & 1, ObjectType, v20);

  return [*&v3[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setControlState:v5 animated:v4 & 1];
}

id sub_20B9DEFC8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] = a1;
    v25 = v2;
    v6 = [v2 subviews];
    sub_20B51C88C(0, &qword_27C762910);
    v7 = sub_20C13CC74();

    if (v7 >> 62)
    {
      goto LABEL_22;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v5;
    for (i = a2; v8; i = a2)
    {
      a2 = 0;
      v5 = v7 & 0xC000000000000001;
      v9 = MEMORY[0x277D84F90];
      while (v5)
      {
        v10 = MEMORY[0x20F2F5430](a2, v7);
        v11 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_20;
        }

LABEL_11:
        *&v31 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767850);
        if (swift_dynamicCast())
        {
          if (*(&v29 + 1))
          {
            sub_20B51C710(&v28, &v31);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_20BC05B5C(0, v9[2] + 1, 1, v9);
            }

            v13 = v9[2];
            v12 = v9[3];
            if (v13 >= v12 >> 1)
            {
              v9 = sub_20BC05B5C((v12 > 1), v13 + 1, 1, v9);
            }

            v9[2] = v13 + 1;
            sub_20B51C710(&v31, &v9[5 * v13 + 4]);
            goto LABEL_7;
          }
        }

        else
        {
          v30 = 0;
          v28 = 0u;
          v29 = 0u;
        }

        sub_20B9E0FF0(&v28);
LABEL_7:
        ++a2;
        if (v11 == v8)
        {
          goto LABEL_24;
        }
      }

      if (a2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = *(v7 + 8 * a2 + 32);
      v11 = a2 + 1;
      if (!__OFADD__(a2, 1))
      {
        goto LABEL_11;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v8 = sub_20C13DB34();
      v26 = v5;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_24:

    v14 = v9[2];
    if (v14)
    {
      v15 = (v9 + 4);
      v5 = v26;
      a2 = i;
      do
      {
        sub_20B51CC64(v15, &v31);
        v16 = v32;
        v17 = v33;
        __swift_project_boxed_opaque_existential_1(&v31, v32);
        (*(v17 + 24))(v26, i, v16, v17);
        __swift_destroy_boxed_opaque_existential_1(&v31);
        v15 += 40;
        --v14;
      }

      while (v14);
    }

    else
    {

      v5 = v26;
      a2 = i;
    }

    v3 = v25;
    [v25 setNeedsLayout];
  }

  v18 = &v3[OBJC_IVAR____TtC9SeymourUI8TVButton_contentView];
  swift_beginAccess();
  v19 = *v18;
  v20 = *(v18 + 1);
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 16);
  v23 = v19;
  v22(v5, a2, ObjectType, v20);

  return [*&v3[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setControlState:v5 withAnimationCoordinator:a2];
}

void TVButton.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if ((sub_20B9E0E84(a1) & 1) != 0 && (v6 = *&v2[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState], (v6 & 8) != 0))
  {

    sub_20B9DEC5C(v6 | 1, 1);
  }

  else
  {
    sub_20B51C88C(0, &qword_27C764588);
    sub_20B9E0F28();
    v7 = sub_20C13CF64();
    v8.receiver = v2;
    v8.super_class = ObjectType;
    objc_msgSendSuper2(&v8, sel_pressesBegan_withEvent_, v7, a2);
  }
}

void TVButton.pressesCancelled(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (sub_20B9E0E84(a1))
  {
    v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) & 0xFFFFFFFFFFFFFFFELL;

    sub_20B9DEC5C(v6, 1);
  }

  else
  {
    sub_20B51C88C(0, &qword_27C764588);
    sub_20B9E0F28();
    v7 = sub_20C13CF64();
    v8.receiver = v2;
    v8.super_class = ObjectType;
    objc_msgSendSuper2(&v8, sel_pressesCancelled_withEvent_, v7, a2);
  }
}

void TVButton.pressesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (sub_20B9E0E84(a1))
  {
    sub_20B9DEC5C(*(v2 + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) & 0xFFFFFFFFFFFFFFFELL, 1);

    [v2 sendActionsForControlEvents_];
  }

  else
  {
    sub_20B51C88C(0, &qword_27C764588);
    sub_20B9E0F28();
    v6 = sub_20C13CF64();
    v7.receiver = v2;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, sel_pressesEnded_withEvent_, v6, a2);
  }
}

Swift::Void __swiftcall TVButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3 = v2;
  v5 = [(objc_class *)in.super.isa nextFocusedView];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  sub_20B51C88C(0, &qword_27C7654B0);
  if ((sub_20C13D5F4() & 1) == 0)
  {
    v7 = [v6 isDescendantOfView_];

    if (v7)
    {
      goto LABEL_5;
    }

LABEL_6:
    v8 = *(v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) & 0xFFFFFFFFFFFFFFF7;
    goto LABEL_7;
  }

LABEL_5:
  v8 = *(v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) | 8;
LABEL_7:
  sub_20B9DEFC8(v8, with.super.isa);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v12[4] = sub_20B816234;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_20B7B548C;
  v12[3] = &block_descriptor_6_0;
  v10 = _Block_copy(v12);
  v11 = v3;

  [(objc_class *)with.super.isa addCoordinatedAnimations:v10 completion:0];
  _Block_release(v10);
}

id TVButton._preferredConfiguration(for:in:)(uint64_t a1, uint64_t a2)
{
  v3 = [*(v2 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) _preferredConfigurationForFocusAnimation_inContext_];

  return v3;
}

void sub_20B9DFC50(uint64_t a1, char a2, unint64_t a3)
{
  LOBYTE(v4) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI8TVButton_activityIndicator);

    v8 = 0.0;
    if (v4)
    {
      v8 = 1.0;
    }

    [v7 setAlpha_];
  }

  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v10 = 0;
    if (v4)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2F5430](v10, a3);
      }

      else
      {
        if (v10 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v12 = *(a3 + 8 * v10 + 32);
      }

      v4 = v12;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v12 setAlpha_];

      ++v10;
      if (v13 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

id TVButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TVButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B9DFFC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_20B51C88C(0, &qword_27C764F30);
  v2 = sub_20C13CC74();

  v3 = v1(v2);

  return v3;
}

char *sub_20B9E0050(void *a1, char a2, int a3, Class a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v19 = objc_allocWithZone(a4);

  return sub_20B9E00F0(a1, a2, a3, v19, a5, a6, a7, a8, a9, a10);
}

char *sub_20B9E00F0(void *a1, char a2, int a3, _BYTE *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v75 = a5;
  LODWORD(v78) = a3;
  ObjectType = swift_getObjectType();
  v18 = sub_20C13C0B4();
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC9SeymourUI8TVButton_activityIndicator;
  v25 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a4[v24] = v25;
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_menu] = 0;
  v26 = &a4[OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu];
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint;
  *&a4[v27] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v28 = OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint;
  *&a4[v28] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v29 = OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint;
  *&a4[v29] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v30 = OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint;
  *&a4[v30] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  a4[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = 0;
  [*&a4[v24] setHidesWhenStopped_];
  v31 = &a4[OBJC_IVAR____TtC9SeymourUI8TVButton_contentView];
  *v31 = a1;
  v31[1] = a6;
  v76 = a6;
  a4[OBJC_IVAR____TtC9SeymourUI8TVButton_isPillShape] = a2;
  a4[OBJC_IVAR____TtC9SeymourUI8TVButton_ignoreContentInsets] = v78;
  v78 = a1;
  v32 = _UISolariumEnabled();
  v33 = 24.0;
  v34 = &a4[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset];
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset] = 0x4024000000000000;
  if (v32)
  {
    v33 = 30.0;
  }

  v34[1] = v33;
  v34[2] = 10.0;
  v34[3] = v33;
  v35 = sub_20B8F59B8(a7, a8, a9, a10);
  v36 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] = v35;
  [v35 cornerRadius];
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = v37;
  v38 = *&a4[v36];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 clearColor];
  [v40 setBackgroundColor:v41 forState:2];

  if (_UISolariumEnabled())
  {
    v42 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_20C13C084();
    sub_20C13C094();
    v44 = v73;
    v43 = v74;
    v45 = *(v73 + 8);
    v45(v20, v74);
    (*(v44 + 16))(v20, v23, v43);
    v79[3] = sub_20C13C0D4();
    v79[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v79);
    sub_20C13C0E4();
    sub_20C13D564();
    v45(v23, v43);
  }

  else
  {
    v46 = [objc_opt_self() effectWithStyle_];
    v42 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  }

  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView] = v42;
  v47 = v42;
  [v47 setUserInteractionEnabled_];

  result = [*&a4[v36] visualEffectContainerView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v49 = result;
  [result addSubview_];

  v80.receiver = a4;
  v80.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v80, sel_initWithFrame_, a7, a8, a9, a10);
  v51 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  v52 = *&v50[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  v53 = v50;
  [v52 cornerRadius];
  *&v53[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = v54;
  sub_20B9DE3E4();
  [v53 addSubview_];
  result = [*&v50[v51] contentView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v55 = result;
  v56 = OBJC_IVAR____TtC9SeymourUI8TVButton_activityIndicator;
  [result addSubview_];

  v57 = [v53 traitCollection];
  LODWORD(v55) = [v57 userInterfaceStyle] == 2;

  v58 = *&v50[v51];
  v59 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:dbl_20C167360[v55]];
  [v58 setBackgroundColor:v59 forState:4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_20C151490;
  v61 = [*&v53[v56] centerYAnchor];
  result = [*&v50[v51] contentView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v62 = result;
  v63 = [result centerYAnchor];

  v64 = [v61 constraintEqualToAnchor_];
  *(v60 + 32) = v64;
  v65 = [*&v53[v56] centerXAnchor];
  result = [*&v50[v51] contentView];
  if (result)
  {
    v66 = result;
    v67 = objc_opt_self();
    v68 = [v66 centerXAnchor];

    v69 = [v65 constraintEqualToAnchor_];
    *(v60 + 40) = v69;
    sub_20B51C88C(0, &qword_281100500);
    v70 = sub_20C13CC54();

    [v67 activateConstraints_];

    v71 = v78;
    sub_20B9E0858(v71, v53, v75, v76);

    return v53;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_20B9E0858(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_contentView];
  swift_beginAccess();
  [*v8 removeFromSuperview];
  v9 = *v8;
  *v8 = a1;
  *(v8 + 1) = a4;
  v10 = a1;

  v11 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  result = [v11 contentView];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  [result addSubview_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a2[OBJC_IVAR____TtC9SeymourUI8TVButton_ignoreContentInsets] == 1)
  {
    result = [v11 contentView];
    if (result)
    {
      v14 = result;
      UIView.constraintsPinningCenterToCenterOfView(_:)(result);

      v15 = objc_opt_self();
      sub_20B51C88C(0, &qword_281100500);
      v16 = sub_20C13CC54();

      [v15 activateConstraints_];
LABEL_10:

      (*(a4 + 8))(*&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState], 0, a3, a4);
      sub_20B9DDDD4();
      return [a2 layoutIfNeeded];
    }

    goto LABEL_12;
  }

  v52 = a3;
  v53 = a4;
  v17 = [v10 leftAnchor];
  result = [v11 contentView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = result;
  v19 = [result leftAnchor];

  v20 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset];
  v21 = [v17 constraintEqualToAnchor:v19 constant:*&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset + 8]];

  v22 = OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint;
  v23 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint];
  *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint] = v21;

  v24 = [v10 rightAnchor];
  result = [v11 contentView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = result;
  v26 = [result rightAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-v20[3]];
  v28 = OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint;
  v29 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint];
  *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint] = v27;

  v30 = [v10 topAnchor];
  result = [v11 contentView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = result;
  v32 = [result topAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:*v20];
  v34 = OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint;
  v35 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint];
  *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint] = v33;

  v36 = [v10 bottomAnchor];
  result = [v11 contentView];
  if (result)
  {
    v37 = result;
    v38 = [result bottomAnchor];

    v39 = [v36 constraintEqualToAnchor:v38 constant:-v20[2]];
    v40 = OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint;
    v41 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint];
    *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint] = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v42 = swift_allocObject();
    v43 = *&a2[v22];
    v44 = *&a2[v28];
    *(v42 + 16) = xmmword_20C14FE90;
    v45 = *&a2[v34];
    v46 = *&a2[v40];
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    *(v42 + 48) = v45;
    *(v42 + 56) = v46;
    v47 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);
    v48 = v43;
    v49 = v44;
    v50 = v45;
    v51 = v46;
    v16 = sub_20C13CC54();

    [v47 activateConstraints_];
    a3 = v52;
    a4 = v53;
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_20B9E0D44()
{
  v1 = OBJC_IVAR____TtC9SeymourUI8TVButton_activityIndicator;
  v2 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_menu) = 0;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v5 = OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v6 = OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v7 = OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B9E0E84(uint64_t a1)
{
  result = sub_20BEDD4CC(a1);
  if (result)
  {
    v3 = result;
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (sub_20C13DB34() == 1)
      {
        goto LABEL_4;
      }
    }

    else if (*(a1 + 16) == 1)
    {
LABEL_4:
      if ([v3 type] == 4)
      {

        return 1;
      }

      else
      {
        v4 = [v3 type];

        return v4 == 6;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_20B9E0F28()
{
  result = qword_27C764590;
  if (!qword_27C764590)
  {
    sub_20B51C88C(255, &qword_27C764588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764590);
  }

  return result;
}

uint64_t sub_20B9E0FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TVButton.withBackgroundStyle(_:)(unint64_t a1, char a2)
{
  v2 = sub_20B9E1660(a1, a2 & 1);

  return v2;
}

id TVButton.withContentInset(_:)(double a1, double a2, double a3, double a4)
{
  sub_20B9DDC1C(a1, a2, a3, a4);

  return v5;
}

id TVButton.withCornerRadius(_:)(double a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius) = a1;
  sub_20B9DE3E4();

  return v3;
}

id TVButton.withControlState(_:)(uint64_t a1)
{
  sub_20B9DEC5C(*(v1 + OBJC_IVAR____TtC9SeymourUI8TVButton_controlState) | a1, 0);

  return v3;
}

id TVButton.withLightShadows()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView);
  [v1 setShadowVerticalOffset_];
  [v1 setShadowOpacity:0 forUserInterfaceStyle:0.2];
  [v1 setShadowOpacity:2 forUserInterfaceStyle:0.2];
  [v1 setShadowOpacity:1 forUserInterfaceStyle:0.2];

  return v3;
}

id TVButton.withFocusedSizeIncrease(_:)()
{
  [*(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setFocusedSizeIncrease_];

  return v2;
}

Swift::Void __swiftcall TVButton.setFloatingBackgroundColor(_:)(UIColor a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView);
  [v3 setBackgroundColor:a1.super.isa forState:8];
  [v3 setBackgroundColor:a1.super.isa forState:4];
  [v3 setBackgroundColor:a1.super.isa forState:1];

  [v3 setBackgroundColor:a1.super.isa forState:0];
}

id TVButton.withBackgroundMaterial(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v3;
  }

  [v4 setEffect_];

  return v7;
}

id TVButton.withFloatingBackgroundColor(_:for:)(uint64_t a1, uint64_t a2)
{
  [*(v2 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setBackgroundColor:a1 forState:a2];

  return v4;
}

id TVButton.withFloatingBackgroundColor(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView);
  [v3 setBackgroundColor:a1 forState:8];
  [v3 setBackgroundColor:a1 forState:4];
  [v3 setBackgroundColor:a1 forState:1];
  [v3 setBackgroundColor:a1 forState:0];

  return v5;
}

id TVButton.withFocusedBackgroundColor(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView);
  [v3 setBackgroundColor:a1 forState:8];
  [v3 setBackgroundColor:a1 forState:1];

  return v5;
}

id TVButton.withShadowVerticalOffset(_:)()
{
  [*(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setShadowVerticalOffset_];

  return v2;
}

id TVButton.withShadowOpacity(_:)(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView);
  [v3 setShadowOpacity:0 forUserInterfaceStyle:?];
  [v3 setShadowOpacity:2 forUserInterfaceStyle:a1];
  [v3 setShadowOpacity:1 forUserInterfaceStyle:a1];

  return v5;
}

id TVButton.withShadowRadius(_:)()
{
  [*(v0 + OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView) setShadowRadius_];

  return v2;
}

uint64_t sub_20B9E1660(unint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView);
  if (a2)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 setEffect_];
    }

    [v3 setHidden_];
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView) setHidden_];
    v6 = 0.3;
    if (a1 >= 2)
    {
      v6 = 1.0;
    }

    [v3 setAlpha_];
    [objc_opt_self() smu_canDecodeOnRenderThread];
    v7 = [objc_opt_self() effectWithStyle_];
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v8 setEffect_];
    }
  }

  return v2;
}

void *sub_20B9E17EC(_OWORD *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9)
{
  v68 = a4;
  v69 = a5;
  v16 = type metadata accessor for LayoutSectionType();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = a1[8];
  v22 = a1[9];
  v23 = a1[6];
  v84[7] = a1[7];
  v84[8] = v21;
  v85[0] = v22;
  *(v85 + 9) = *(a1 + 153);
  v24 = a1[5];
  v84[4] = a1[4];
  v84[5] = v24;
  v84[6] = v23;
  v25 = a1[1];
  v84[0] = *a1;
  v84[1] = v25;
  v26 = a1[3];
  v84[2] = a1[2];
  v84[3] = v26;
  if (sub_20B97E368(v84) != 1)
  {
    v67 = v18;
    v40 = nullsub_1(v84);
    v41 = v40[8];
    v42 = v40[9];
    v43 = v40[6];
    v78 = v40[7];
    v79 = v41;
    v80 = v42;
    v45 = v40[4];
    v44 = v40[5];
    v81 = *(v40 + 20);
    v76 = v44;
    v77 = v43;
    v46 = v40[1];
    v71 = *v40;
    v72 = v46;
    v47 = v40[2];
    v74 = v40[3];
    v75 = v45;
    v73 = v47;
    memmove(v82, v40, 0xA8uLL);
    if (sub_20B5EAF8C(v82) == 1)
    {
      goto LABEL_24;
    }

    v48 = v83;
    v49 = *(v83 + 16);
    if (!v49)
    {
      goto LABEL_24;
    }

    v50 = *(v83 + 32);
    v51 = (v50 >> 57) & 0x78 | v50 & 7;
    if (v51 == 39)
    {
      v66 = 2;
      v52 = 2;
    }

    else
    {
      if (v51 == 66)
      {
        LODWORD(v65) = 0;
        v66 = 2;
        goto LABEL_16;
      }

      v53 = v51 == 72;
      v54 = 2;
      if (!v53)
      {
        v54 = 3;
      }

      v66 = v54;
      if (v53)
      {
        v52 = 2;
      }

      else
      {
        v52 = 1;
      }
    }

    LODWORD(v65) = v52;
LABEL_16:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v55 = sub_20B97D468(v48, a3, v66, v65, a6, a7, a8, a9);

      if (v55)
      {
        v56 = v67;
        v66 = v50;
        sub_20C0F9B20(v50, v49, v55, a3, v68, v69, v67);
        v69 = v55;
        v39 = sub_20BBB0C34(v56, v55, a3, a6, a8);
        v86[8] = v79;
        v86[9] = v80;
        v86[4] = v75;
        v86[5] = v76;
        v87 = v81;
        v86[6] = v77;
        v86[7] = v78;
        v86[0] = v71;
        v86[1] = v72;
        v86[2] = v73;
        v86[3] = v74;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v58 = MEMORY[0x277D84F90];
        if (Strong)
        {
          v59 = Strong;
          v60 = sub_20B97E0F0(v86);
          v61 = *(v60 + 2);
          if (v61)
          {
            v68 = v59;
            v70 = v58;
            sub_20C13DD64();
            v65 = v60;
            v62 = v60 + 40;
            do
            {
              (*(*v62 + 24))(v86, a3, a6, a7, a8, a9);
              sub_20C13DD34();
              sub_20C13DD74();
              sub_20C13DD84();
              sub_20C13DD44();
              v62 += 16;
              --v61;
            }

            while (v61);
          }

          else
          {
          }
        }

        swift_weakDestroy();
        sub_20B9E1D3C();
        v64 = sub_20C13CC54();

        [v39 setBoundarySupplementaryItems_];

        sub_20B97E64C(v67);
        goto LABEL_3;
      }
    }

LABEL_24:
    swift_weakDestroy();

    return 0;
  }

  v27 = nullsub_1(v84);
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  swift_weakDestroy();
  v39 = sub_20B7660E4(v28, v29, v30, sub_20C0FC784, 0, sub_20B9E1D2C, v19, sub_20B9E1D34, v31, v32, v33, v34, v35, v36, v37, v38, v20, sub_20BC47780, 0, a3, *&a2);
LABEL_3:

  return v39;
}

unint64_t sub_20B9E1D3C()
{
  result = qword_27C766528;
  if (!qword_27C766528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C766528);
  }

  return result;
}

uint64_t sub_20B9E1D88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v7 = *(v2 + 1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v3 = a1;
    v5 = 0;
    v4 = 89;
    while (1)
    {
      v9 = v7 + v4;
      if (*(v7 + v4 - 49))
      {
        break;
      }

      ++v5;
      v4 += 64;
      if (v8 == v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    sub_20C13DE24();
    __break(1u);
  }

  v10 = *(v9 - 57);
  v11 = *(v9 - 41);
  v12 = *(v9 - 25);
  *&v49[10] = *(v9 - 15);
  v48 = v11;
  *v49 = v12;
  v47 = v10;
  sub_20B821784(&v47, v45);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20BF9092C(v7);
    v7 = result;
  }

  if (v5 >= *(v7 + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v41 = v2;
  v42 = a2;
  v14 = BYTE9(v47);
  v15 = *&v49[24];
  v16 = *&v49[16];
  v17 = v48;
  v18 = v7 + v4;
  v19 = *v49;
  v20 = *(v7 + v4 - 41);
  v21 = *(v7 + v4 - 25);
  v22 = *(v7 + v4 - 57);
  *&v44[10] = *(v7 + v4 - 15);
  v43[1] = v20;
  *v44 = v21;
  v43[0] = v22;
  *(v18 - 57) = v47;
  *(v18 - 49) = 0;
  *(v18 - 48) = v14;
  *(v18 - 41) = v17;
  *(v18 - 25) = v19;
  *(v18 - 9) = v16;
  *(v18 - 1) = v15;
  sub_20B8217E0(v43);
  v23 = *v3;
  v24 = *(v3 + 9);
  v25 = *(v3 + 16);
  v26 = *(v3 + 24);
  v27 = *(v3 + 32);
  v28 = *(v3 + 40);
  v29 = *(v3 + 48);
  v30 = *(v3 + 56);
  v40 = *(v3 + 57);
  result = sub_20B821784(v3, v45);
  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v28 < *(v7 + 16))
  {
    v31 = v7 + 32 + (v28 << 6);
    v32 = *v31;
    v33 = *(v31 + 16);
    v34 = *(v31 + 32);
    *&v46[10] = *(v31 + 42);
    v45[1] = v33;
    *v46 = v34;
    v45[0] = v32;
    *v31 = v23;
    *(v31 + 8) = 1;
    *(v31 + 9) = v24;
    *(v31 + 16) = v25;
    *(v31 + 24) = v26;
    *(v31 + 32) = v27;
    *(v31 + 40) = v28;
    *(v31 + 48) = v29;
    *(v31 + 56) = v30;
    *(v31 + 57) = v40;
    sub_20B8217E0(v45);
    v35 = *v41;
    v36 = type metadata accessor for WorkoutPlanScheduleMetadata();
    v37 = *(v36 + 24);
    v38 = sub_20C132E94();
    result = (*(*(v38 - 8) + 16))(&v42[v37], &v41[v37], v38);
    v39 = *&v41[*(v36 + 28)];
    *v42 = v35;
    *(v42 + 1) = v7;
    *&v42[*(v36 + 28)] = v39;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_20B9E200C(uint64_t a1)
{
  result = sub_20B9E2034();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20B9E2034()
{
  result = qword_27C764A10;
  if (!qword_27C764A10)
  {
    sub_20C1334D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764A10);
  }

  return result;
}

uint64_t sub_20B9E208C(uint64_t a1)
{
  v35 = sub_20C138034();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_20C13DAA4();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_20C138024();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_20B526D44((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_20B526EA4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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

uint64_t sub_20B9E2394()
{
  v1 = v0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v33 - v9;
  MEMORY[0x28223BE20](v10);
  v40 = &v33 - v11;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkClient), *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkClient + 24));

  sub_20C13A1D4();

  v12 = swift_allocObject();
  *(v12 + 16) = sub_20B9E4568;
  *(v12 + 24) = v0;
  v13 = v34;
  v14 = v36;
  (*(v2 + 16))(v34, v6, v36);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  (*(v2 + 32))(v16 + v15, v13, v14);
  v17 = (v16 + ((v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_20B760084;
  v17[1] = v12;

  v18 = v35;
  sub_20C137C94();
  (*(v2 + 8))(v6, v14);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20B9E45AC;
  *(v19 + 24) = v1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20B622D08;
  *(v20 + 24) = v19;
  v21 = v37;
  v22 = v38;
  v23 = v39;
  (*(v37 + 16))(v38, v18, v39);
  v24 = v21;
  v25 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v26 = swift_allocObject();
  (*(v24 + 32))(v26 + v25, v22, v23);
  v27 = (v26 + ((v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20B5DF3D4;
  v27[1] = v20;

  v28 = v40;
  sub_20C137C94();
  v29 = *(v24 + 8);
  v29(v18, v23);
  v30 = sub_20C137CB4();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_20B5DF6DC, v31);

  return (v29)(v28, v23);
}

uint64_t sub_20B9E2868(uint64_t *a1, uint64_t a2)
{
  v3 = sub_20B9E208C(*a1);
  v4 = sub_20B527580(v3);

  *(a2 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkedWorkoutIdentifiers) = v4;
}

uint64_t sub_20B9E28C8()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_programWorkoutIdentifiers) + 16) == *(*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkedWorkoutIdentifiers) + 16))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (*(*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_programWorkoutIdentifiers) + 16) == *(*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkedWorkoutIdentifiers) + 16))
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_platform))
  {
    if (*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_platform) != 1)
    {
      goto LABEL_20;
    }

    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_storefrontLocalizer + 24));
    v11 = sub_20C138D34();
    v13 = v12;
    v9 = swift_allocObject();
    *(v9 + 16) = v11;
    *(v9 + 24) = v13;
    *(v9 + 32) = v6;
    v10 = (v9 + 40);
    v8 = 0x1000000000000004;
  }

  else
  {
    v8 = 0x1000000000000003;
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = (v9 + 24);
  }

  *v10 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20C14F980;
  *(v14 + 32) = v8 | v9;
  v36 = 0uLL;
  LOBYTE(v37) = 1;
  *(&v37 + 1) = 0;
  *&v38 = 0;
  WORD4(v38) = 128;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  LOBYTE(v42) = 0;
  *(&v42 + 1) = v14;
  *&v43[0] = MEMORY[0x277D84F90];
  *(v43 + 8) = 0u;
  *(&v43[1] + 8) = 0u;
  *(&v43[2] + 1) = 0;
  v44 = 2;
  nullsub_1(&v36);
  v15 = v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 144);
  v45[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 128);
  v45[9] = v16;
  v46 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 160);
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 80);
  v45[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 64);
  v45[5] = v17;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 112);
  v45[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 96);
  v45[7] = v18;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 16);
  v45[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row);
  v45[1] = v19;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 48);
  v45[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 32);
  v45[3] = v20;
  v21 = v43[2];
  *(v15 + 128) = v43[1];
  *(v15 + 144) = v21;
  *(v15 + 160) = v44;
  v22 = v41;
  *(v15 + 64) = v40;
  *(v15 + 80) = v22;
  v23 = v43[0];
  *(v15 + 96) = v42;
  *(v15 + 112) = v23;
  v24 = v37;
  *v15 = v36;
  *(v15 + 16) = v24;
  v25 = v39;
  *(v15 + 32) = v38;
  *(v15 + 48) = v25;
  sub_20B634408(v45);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v27 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
LABEL_17:
    swift_unknownObjectRelease();
  }

  v28 = sub_20B61DB58(v1, Strong);
  if (!v29)
  {
    sub_20C0C2D50(0);
    goto LABEL_17;
  }

  v31 = v29;
  v32 = v30;
  v35 = v28;
  sub_20B5E2E18();
  *v5 = sub_20C13D374();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v33 = sub_20C13C584();
  (*(v3 + 8))(v5, v2);
  if (v33)
  {
    sub_20B621134(v35, v31, v32, v1, 1, v27);

    goto LABEL_17;
  }

  __break(1u);
LABEL_20:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B9E2CE0()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_catalogClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_mediaTagStringBuilder);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  return v0;
}

uint64_t sub_20B9E2E14()
{
  sub_20B9E2CE0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogProgramAddAllShelf()
{
  result = qword_27C768D78;
  if (!qword_27C768D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B9E2EC0()
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

uint64_t sub_20B9E2FA8()
{
  swift_getObjectType();
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B9E309C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B9E2394();
  }

  return result;
}

uint64_t sub_20B9E30F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  MEMORY[0x28223BE20](v8);
  v27 = &v24 - v9;
  v25 = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkedWorkoutIdentifiers);
  *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkedWorkoutIdentifiers) = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_programWorkoutIdentifiers);

  sub_20B9E28C8();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkClient), *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkClient + 24));

  sub_20B717B64(v10);

  sub_20C13A1E4();

  v11 = swift_allocObject();
  v12 = v25;
  *(v11 + 16) = v1;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20B9E4268;
  *(v13 + 24) = v11;
  v14 = v26;
  (*(v3 + 16))(v26, v7, v2);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v15, v14, v2);
  v17 = (v16 + ((v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_20B5DF204;
  v17[1] = v13;

  v18 = v27;
  sub_20C137C94();
  v19 = *(v3 + 8);
  v19(v7, v2);
  v20 = v18;
  v21 = sub_20C137CB4();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_20B5DF6DC, v22);

  return (v19)(v20, v2);
}

uint64_t sub_20B9E3424(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = a3;
    v16 = v15;
    v28 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v17 = MEMORY[0x20F2F5850](v26, v27);
    v19 = sub_20B51E694(v17, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20B517000, v11, v12, "Error inserting bookmarks: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v20 = v16;
    a3 = v23;
    MEMORY[0x20F2F6A40](v20, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  *(v25 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkedWorkoutIdentifiers) = a3;
}

uint64_t sub_20B9E3634@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B9E36AC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row + 32);
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

uint64_t sub_20B9E3764(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

uint64_t sub_20B9E3808(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763340);

  return sub_20C137C94();
}

uint64_t sub_20B9E38B8()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  sub_20B5D8060(v10);
  v2 = v10[9];
  *(v1 + 128) = v10[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v11;
  v3 = v10[5];
  *(v1 + 64) = v10[4];
  *(v1 + 80) = v3;
  v4 = v10[7];
  *(v1 + 96) = v10[6];
  *(v1 + 112) = v4;
  v5 = v10[1];
  *v1 = v10[0];
  *(v1 + 16) = v5;
  v6 = v10[3];
  *(v1 + 32) = v10[2];
  *(v1 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v9, v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v9, v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_eventHub) = v9[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v9, v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v9, v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_mediaTagStringBuilder);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_subscriptionToken) = sub_20C13A914();
  v7 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkedWorkoutIdentifiers) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_programWorkoutIdentifiers) = v7;
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_platform) = v9[0];
  return v0;
}

uint64_t sub_20B9E3B24(uint64_t a1)
{
  v2 = v1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764340);
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763338);
  v45 = *(v51 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v50 = &v43 - v13;
  v14 = sub_20C137144();
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(a1, v19);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  result = sub_20B5E2760(v19);
  if (a1 == 13)
  {
    v21 = *(v2 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_programWorkoutIdentifiers);
    if (*(*(v2 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_bookmarkedWorkoutIdentifiers) + 16) <= *(v21 + 16) >> 3)
    {
      v54 = *(v2 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_programWorkoutIdentifiers);

      sub_20B6CEEBC(v23);
    }

    else
    {

      sub_20B6D3388(v22, v21);
    }

    v43 = v16;
    sub_20C137134();
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_catalogClient), *(v2 + OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_catalogClient + 24));
    sub_20C139F24();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_20B9E4200;
    *(v24 + 24) = v2;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_20B8FD6FC;
    *(v25 + 24) = v24;
    v26 = v44;
    (*(v4 + 16))(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v44);
    v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v28 = swift_allocObject();
    (*(v4 + 32))(v28 + v27, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    v29 = (v28 + ((v5 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_20B9E4204;
    v29[1] = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763340);
    v30 = v47;
    sub_20C137C94();
    (*(v4 + 8))(v8, v26);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20B9E4234;
    *(v31 + 24) = v2;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20B63EEAC;
    *(v32 + 24) = v31;
    v33 = v45;
    v34 = v46;
    v35 = v51;
    (*(v45 + 16))(v46, v30, v51);
    v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v37 = swift_allocObject();
    (*(v33 + 32))(v37 + v36, v34, v35);
    v38 = (v37 + ((v9 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v38 = sub_20B9E4238;
    v38[1] = v32;

    v39 = v50;
    sub_20C137C94();
    (*(v33 + 8))(v30, v35);
    v40 = v53;
    v41 = sub_20C137CB4();
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    v41(sub_20B52347C, v42);

    (*(v52 + 8))(v39, v40);
    return (*(v48 + 8))(v43, v49);
  }

  return result;
}

uint64_t sub_20B9E4284(uint64_t a1)
{
  v2 = sub_20C132E94();
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C1344C4();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C138034();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v28 = MEMORY[0x277D84F90];
    sub_20BB5E5E0(0, v9, 0);
    v10 = v28;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v21 = *(v11 + 56);
    v22 = v12;
    v19 = v6 + 32;
    v20 = (v11 - 8);
    v23 = v11;
    do
    {
      v14 = v24;
      v15 = v26;
      v22(v24, v13, v26);
      sub_20C134324();
      sub_20C132E84();
      sub_20C138014();
      (*v20)(v14, v15);
      v28 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_20BB5E5E0(v16 > 1, v17 + 1, 1);
        v10 = v28;
      }

      *(v10 + 16) = v17 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v8, v25);
      v13 += v21;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_20B9E45B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B9E4678()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1 >> 7);
  MEMORY[0x20F2F58E0](v1 & 0x7F);
  return sub_20C13E1B4();
}

uint64_t sub_20B9E46CC()
{
  v1 = *v0;
  MEMORY[0x20F2F58E0](v1 >> 7);
  return MEMORY[0x20F2F58E0](v1 & 0x7F);
}

uint64_t sub_20B9E470C()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1 >> 7);
  MEMORY[0x20F2F58E0](v1 & 0x7F);
  return sub_20C13E1B4();
}