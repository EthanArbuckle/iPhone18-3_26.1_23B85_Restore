void sub_20BCB9D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (*(a7 + 8))(a2, a7);
  v8 = *&v7[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v8 setAlpha_];
}

void sub_20BCB9DB0(int a1, id a2)
{
  v2 = [a2 view];
  if (v2)
  {
    v3 = v2;
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20BCBA240()
{
  result = sub_20C134EC4();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_20BCBA390(uint64_t a1)
{
  v2 = *(v1 + qword_27C79C030);
  *(v1 + qword_27C79C030) = a1;
}

void sub_20BCBA3A4()
{
  v1 = *(v0 + qword_27C79C008);
  v3 = *(v0 + qword_27C79C030);
  *(v0 + qword_27C79C030) = v1;
  v2 = v1;
}

id sub_20BCBA3F8(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a1;
  v13 = sub_20BCBB770();

  return v13;
}

void sub_20BCBA480(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_20BCBB7E8(v7);
}

uint64_t sub_20BCBA4F8(uint64_t (*a1)(void *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C151490;
  v3 = *(v1 + qword_27C79C008);
  *(inited + 32) = v3;
  v27 = inited + 32;
  v4 = *(v1 + qword_27C79C010);
  *(inited + 40) = v4;
  v29 = inited;
  v5 = inited & 0xC000000000000001;
  v6 = v3;
  v7 = v4;
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v8;
    v12 = v5 ? MEMORY[0x20F2F5430](v9, v29) : *(v27 + 8 * v9);
    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      break;
    }

    v15 = [v14 topViewController];
    if (v15)
    {
      v33[0] = v15;
      sub_20B51C88C(0, &qword_281100550);
      goto LABEL_12;
    }

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
LABEL_3:

    sub_20B520158(&v30, &qword_27C76D368);
LABEL_4:
    v8 = 1;
    v9 = 1;
    if (v11)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return v10;
    }
  }

  v33[0] = v13;
  sub_20B51C88C(0, &qword_281100550);
  v16 = v13;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D360);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  if (!*(&v31 + 1))
  {
    goto LABEL_3;
  }

  sub_20B51C710(&v30, v33);
  result = a1(v33);
  v18 = *(result + 16);
  v19 = *(v10 + 16);
  v20 = v19 + v18;
  if (!__OFADD__(v19, v18))
  {
    v21 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v22 = *(v10 + 24) >> 1, v22 >= v20))
    {
      if (*(v21 + 16))
      {
        goto LABEL_19;
      }

LABEL_27:

      if (v18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v26 = v19 + v18;
      }

      else
      {
        v26 = v19;
      }

      result = sub_20BC05FD8(result, v26, 1, v10);
      v10 = result;
      v22 = *(result + 24) >> 1;
      if (!*(v21 + 16))
      {
        goto LABEL_27;
      }

LABEL_19:
      if (v22 - *(v10 + 16) < v18)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v10 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_33;
        }

        *(v10 + 16) = v25;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v33);
    goto LABEL_4;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

id sub_20BCBA82C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFilterSplitViewCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BCBA89C(uint64_t a1)
{
  swift_unknownObjectRelease();
  v2 = qword_27C79C000;
  v3 = sub_20C134EC4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  swift_unknownObjectRelease();

  sub_20B58CFB0(*(a1 + qword_27C79C028), *(a1 + qword_27C79C028 + 8));

  v4 = a1 + qword_27C79C038;

  return sub_20B583E6C(v4);
}

uint64_t sub_20BCBA9AC(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 16))(a2, v3, v4);
}

uint64_t sub_20BCBAA4C(uint64_t a1)
{
  v68 = a1;
  v1 = sub_20C1391E4();
  v2 = *(v1 - 8);
  v88 = v1;
  v89 = v2;
  MEMORY[0x28223BE20](v1);
  v87 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134C44();
  MEMORY[0x28223BE20](v4 - 8);
  v86 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = v66 - v15;
  v16 = sub_20C135D24();
  v75 = *(v16 - 8);
  v76 = v16;
  MEMORY[0x28223BE20](v16);
  v74 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C134F74();
  v82 = *(v18 - 8);
  v83 = v18;
  MEMORY[0x28223BE20](v18);
  v80 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v79 = v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v22 - 8);
  v73 = v66 - v23;
  v72 = sub_20C1352E4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v66 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v66 - v29;
  v31 = sub_20C134F24();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[0] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v66 - v36;
  v66[1] = v66 - v36;
  v69 = sub_20C133654();
  v91 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v90 = v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C132E94();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v93 = v42;
  v66[2] = sub_20BCBA4F8(sub_20BCBB6C0);
  (*(v40 + 8))(v42, v39);
  v43 = v68 + *(type metadata accessor for PageMetricAction() + 20);
  v44 = sub_20C136664();
  (*(*(v44 - 8) + 56))(v37, 1, 1, v44);
  v45 = type metadata accessor for ShelfMetricAction();
  (*(v32 + 16))(v34, v43 + v45[5], v31);
  v46 = sub_20C132C14();
  (*(*(v46 - 8) + 56))(v30, 1, 1, v46);
  sub_20B52F9E8(v43 + v45[8], v27, &unk_27C7621D0);
  (*(v71 + 16))(v70, v43 + v45[10], v72);
  sub_20B52F9E8(v43 + v45[11], v73, &unk_27C76BC90);

  v47 = v90;
  sub_20C133644();
  v48 = v74;
  v49 = v69;
  (*(v91 + 16))(v74, v47, v69);
  (*(v75 + 104))(v48, *MEMORY[0x277D52120], v76);
  v50 = *v67;
  v51 = *MEMORY[0x277D85000];
  v92 = *(v67 + qword_27C79C018);
  v52 = v77;
  (*(*(*((v51 & v50) + 0x58) + 8) + 16))(*((v51 & v50) + 0x50));
  v53 = sub_20C1333A4();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  v54 = sub_20C135664();
  (*(*(v54 - 8) + 56))(v78, 1, 1, v54);
  v55 = sub_20C135674();
  (*(*(v55 - 8) + 56))(v81, 1, 1, v55);
  v56 = v84;
  sub_20C134F94();
  v57 = sub_20C134FB4();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v58 - 8) + 56))(v85, 1, 1, v58);
  v59 = sub_20C135F14();
  (*(*(v59 - 8) + 56))(v86, 1, 1, v59);
  v60 = v79;
  sub_20C134F54();
  v62 = v82;
  v61 = v83;
  (*(v82 + 16))(v80, v60, v83);
  v63 = v87;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B877A50();
  v64 = v88;
  sub_20C13A764();
  (*(v89 + 8))(v63, v64);
  (*(v62 + 8))(v60, v61);
  return (*(v91 + 8))(v90, v49);
}

uint64_t sub_20BCBB6C0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 24))(v2, v3, v4);
}

uint64_t sub_20BCBB718(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 16))(v2, v3, v4);
}

id sub_20BCBB770()
{
  sub_20B51C88C(0, &qword_27C7654B0);
  v0 = sub_20C13D5F4();
  result = 0;
  if (v0)
  {
    return [objc_allocWithZone(type metadata accessor for TVSlideTransitionAnimator()) init];
  }

  return result;
}

uint64_t sub_20BCBB7E8(void *a1)
{
  v10 = a1;
  sub_20B51C88C(0, &qword_281100550);
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D370);
  if (swift_dynamicCast())
  {
    sub_20B51C710(v8, v11);
    v3 = v12;
    v4 = v13;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v4 + 16);
    v6 = swift_unknownObjectRetain();
    v5(v6, &off_2822DCE00, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    return sub_20B520158(v8, &qword_27C76D378);
  }
}

uint64_t sub_20BCBB924@<X0>(uint64_t *a1@<X8>)
{
  sub_20C132874();
  result = sub_20C132864();
  *a1 = result;
  return result;
}

char *sub_20BCBBA5C(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37[-v13];
  v15 = &v4[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance];
  sub_20BCBD68C(v39);
  v16 = *&v39[0];
  v17 = v39[3];
  *(v15 + 2) = v39[2];
  *(v15 + 3) = v17;
  *(v15 + 8) = v40;
  v18 = v39[1];
  *v15 = v39[0];
  *(v15 + 1) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI14PulldownButton_attributedTitle;
  v20 = sub_20C132924();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  *&v4[OBJC_IVAR____TtC9SeymourUI14PulldownButton_textColor] = v16;
  v21 = type metadata accessor for PulldownButton();
  v38.receiver = v4;
  v38.super_class = v21;
  v22 = v16;
  v23 = objc_msgSendSuper2(&v38, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20C13D814();
  sub_20C13D7A4();
  v24 = &v23[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance];
  v26 = *&v23[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance + 32];
  v25 = *&v23[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance + 48];
  v27 = *&v23[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance + 16];
  v44 = *&v23[OBJC_IVAR____TtC9SeymourUI14PulldownButton_appearance + 64];
  v42 = v26;
  v43 = v25;
  v41 = v27;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = v42;
  *(v29 + 24) = v41;
  *(v29 + 40) = v30;
  *(v29 + 56) = v43;
  *(v29 + 72) = v44;
  sub_20B7867D8(&v41, v37);
  sub_20C13C074();
  v31 = sub_20C13C064();
  (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
  sub_20C13D7B4();
  v32 = sub_20C13D874();
  (*(*(v32 - 8) + 56))(v14, 0, 1, v32);
  sub_20C13D894();
  [v23 setTintColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766578);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20C14F980;
  v34 = sub_20C13C054();
  v35 = MEMORY[0x277D74DB8];
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  sub_20C13D584();

  swift_unknownObjectRelease();

  return v23;
}

id sub_20BCBBF20()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F18);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = sub_20C132924();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PulldownButton();
  v25.receiver = v0;
  v25.super_class = v11;
  objc_msgSendSuper2(&v25, sel_tintColorDidChange);
  sub_20B52F9E8(&v0[OBJC_IVAR____TtC9SeymourUI14PulldownButton_attributedTitle], v6, &qword_27C764F18);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_20B520158(v6, &qword_27C764F18);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = [v0 tintAdjustmentMode];
  result = [v0 tintColor];
  if (v13 == 2)
  {
    if (result)
    {
      v23 = 0.0;
      v24 = 0.0;
      v14 = result;
      [result getWhite:&v24 alpha:&v23];
      v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v24 alpha:v23 * 0.8];

      v16 = *&v0[OBJC_IVAR____TtC9SeymourUI14PulldownButton_textColor];
      v23 = 0.0;
      v24 = 0.0;
      v17 = v15;
      v18 = v16;
      [v18 getWhite:&v24 alpha:&v23];
      v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v24 alpha:v23 * 0.8];

LABEL_8:
      (*(v8 + 16))(v3, v10, v7);
      (*(v8 + 56))(v3, 0, 1, v7);
      v21 = v19;
      sub_20BCBC324(v3, v17, v21);

      sub_20B520158(v3, &qword_27C764F18);
      return (*(v8 + 8))(v10, v7);
    }

    __break(1u);
  }

  else if (result)
  {
    v20 = *&v0[OBJC_IVAR____TtC9SeymourUI14PulldownButton_textColor];
    v17 = result;
    v19 = v20;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BCBC324(uint64_t a1, void *a2, void *a3)
{
  v91 = a3;
  v71 = a2;
  v85 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769D28);
  v74 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v64 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769D30);
  MEMORY[0x28223BE20](v88);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = &v64 - v7;
  v93 = sub_20C1328E4();
  v76 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_20C1328D4();
  v75 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1328F4();
  v84 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769D38);
  MEMORY[0x28223BE20](v78);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F18);
  MEMORY[0x28223BE20](v14 - 8);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = sub_20C132924();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v94 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v25 - 8);
  v68 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v64 - v28;
  v69 = v3;
  sub_20C13D884();
  sub_20B52F9E8(v85, v18, &qword_27C764F18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_20B520158(v18, &qword_27C764F18);
  }

  else
  {
    v30 = *(v20 + 32);
    v30(v24, v18, v19);
    v31 = sub_20C13D874();
    v32 = *(*(v31 - 8) + 48);
    v66 = v29;
    v33 = v24;
    if (v32(v29, 1, v31))
    {
      (*(v20 + 8))(v24, v19);
      v29 = v66;
    }

    else
    {
      v85 = v30;
      v34 = *(v20 + 16);
      v65 = v19;
      v34(v94, v24, v19);
      v35 = v73;
      sub_20C132904();
      v36 = v84;
      (v84[2])(v13, v35, v10);
      v37 = *(v78 + 36);
      v38 = sub_20BCBD5E0(&qword_27C769D60, MEMORY[0x277CC8C08]);
      sub_20C13D024();
      v36[1](v35, v10);
      v84 = (v76 + 1);
      v76 = (v75 + 2);
      ++v75;
      ++v74;
      v83 = v10;
      v82 = v13;
      v81 = v20;
      v80 = v33;
      v79 = v20 + 32;
      v78 = v37;
      v77 = v38;
      while (1)
      {
        v44 = v92;
        sub_20C13D074();
        sub_20BCBD5E0(&qword_27C769D68, MEMORY[0x277CC8BF8]);
        v45 = v93;
        v46 = sub_20C13C894();
        (*v84)(v44, v45);
        v47 = v85;
        if (v46)
        {
          break;
        }

        v48 = sub_20C13D0A4();
        v50 = v86;
        v49 = v87;
        (*v76)(v86);
        v48(v98, 0);
        sub_20C13D084();
        sub_20C1328C4();
        swift_getKeyPath();
        sub_20BAB6764();
        v51 = v89;
        sub_20C1328B4();

        (*v75)(v50, v49);
        swift_getKeyPath();
        sub_20BAB67B8();
        v52 = v90;
        sub_20C132A64();

        (*v74)(v51, v52);
        v53 = v98[0];
        if (v98[0] == 2)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v97 = v91;
          v39 = v91;
          sub_20BCBD628();
          v73 = sub_20C132954();
          sub_20C132864();
          sub_20BCBD5E0(&qword_27C7664B0, MEMORY[0x277D74A38]);
          v40 = sub_20C1329F4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8);
          sub_20B81F8C0();
          sub_20C132A74();
          v40(v96, 0);

          (v73)(v98, 0);
          swift_getKeyPath();
          swift_getKeyPath();
          v97 = 0;
          v41 = sub_20C132954();
          v42 = sub_20C1329F4();
          sub_20B81F86C();
          sub_20C132A74();
          v42(v96, 0);

          v41(v98, 0);
          v43 = v95;
        }

        else
        {
          v54 = v70;
          sub_20B52F9E8(v95, v70, &qword_27C769D30);
          swift_getKeyPath();
          KeyPath = swift_getKeyPath();
          v55 = v91;
          if (v53)
          {
            v55 = v71;
          }

          v97 = v55;
          v56 = v55;
          v73 = sub_20BCBD628();
          v57 = sub_20C132954();
          sub_20C132864();
          sub_20BCBD5E0(&qword_27C7664B0, MEMORY[0x277D74A38]);
          v58 = sub_20C1329F4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8);
          sub_20B81F8C0();
          sub_20C132A74();
          v58(v96, 0);

          v57(v98, 0);
          sub_20B520158(v54, &qword_27C769D30);
          swift_getKeyPath();
          swift_getKeyPath();
          v97 = 0;
          v59 = sub_20C132954();
          v60 = sub_20C1329F4();
          sub_20B81F86C();
          sub_20C132A74();
          v60(v96, 0);

          v59(v98, 0);
          v43 = v95;
        }

        sub_20B520158(v43, &qword_27C769D30);
        v13 = v82;
        v20 = v81;
        v33 = v80;
      }

      sub_20B520158(v13, &qword_27C769D38);
      v61 = v67;
      v62 = v65;
      v47(v67, v94, v65);
      (*(v20 + 56))(v61, 0, 1, v62);
      v29 = v66;
      sub_20C13D704();
      (*(v20 + 8))(v33, v62);
    }
  }

  sub_20B52F9E8(v29, v68, &qword_27C764C60);
  sub_20C13D894();
  return sub_20B520158(v29, &qword_27C764C60);
}

uint64_t sub_20BCBD14C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong traitCollection], v7, v8))
  {
    v9 = sub_20C1329B4();
    (*(*(v9 - 8) + 16))(a3, a1, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = a2[1];
    v12 = a2[2];
    v11 = a2[3];
    v13 = a2[4];
    v14 = a2[5];
    if (v14 < 0)
    {
      v22 = *a2;
      v23 = v10;
      v24 = v12;
      v25 = v11;
      LODWORD(v26) = v13;
      BYTE4(v26) = BYTE4(v13);
      v16 = sub_20B992B08();
    }

    else
    {
      v15 = a2[6];
      v22 = *a2;
      v23 = v10;
      v24 = v12;
      v25 = v11;
      v26 = v13;
      v27 = v14;
      v28 = v15;
      v16 = sub_20B7C6A74(v8);
    }

    v21 = v16;
    sub_20C132864();
    sub_20BCBD5E0(&qword_27C7664B0, MEMORY[0x277D74A38]);
    v19 = sub_20C132974();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8);
    sub_20B81F86C();
    sub_20C132A74();
    v19(v20, 0);
  }

  else
  {
    v17 = sub_20C1329B4();
    return (*(*(v17 - 8) + 16))(a3, a1, v17);
  }
}

id sub_20BCBD380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PulldownButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PulldownButton()
{
  result = qword_27C76D398;
  if (!qword_27C76D398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCBD4D0()
{
  sub_20BCBD578();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BCBD578()
{
  if (!qword_27C76D3A8)
  {
    sub_20C132924();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76D3A8);
    }
  }
}

uint64_t sub_20BCBD5E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20BCBD628()
{
  result = qword_27C769D78;
  if (!qword_27C769D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C769D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769D78);
  }

  return result;
}

id sub_20BCBD68C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() secondaryLabelColor];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v4 = *MEMORY[0x277D76918];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v4;
  a1[5] = 0x90100000000;
  a1[6] = 0;
  a1[7] = 1;
  a1[8] = MEMORY[0x277D84FA0];

  return v4;
}

uint64_t sub_20BCBD760()
{

  v1 = OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_metricPageCategory;
  v2 = sub_20C1352F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_metricPage;
  v4 = sub_20C1333A4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_archivedSessionClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_assetClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_configurationClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_subscriptionCache);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_upNextQueueClient);

  sub_20B58CFC4(v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_configuration);
  return v0;
}

uint64_t sub_20BCBD928()
{
  sub_20BCBD760();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LibraryGalleryDataProvider()
{
  result = qword_27C76D3B0;
  if (!qword_27C76D3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCBD9D4()
{
  sub_20C1352F4();
  if (v0 <= 0x3F)
  {
    sub_20C1333A4();
    if (v1 <= 0x3F)
    {
      sub_20B524ACC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20BCBDB4C()
{
  if ((*(*v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_activationState) & 1) == 0)
  {
    *(*v0 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_activationState) = 1;
  }
}

uint64_t sub_20BCBDCC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_configuration;
  swift_beginAccess();
  return sub_20B58C2DC(v1 + v3, a1);
}

uint64_t sub_20BCBDD20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BCBDDC8(uint64_t a1, unsigned __int8 a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v232 = a7;
  v222 = a6;
  LODWORD(v223) = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v13 - 8);
  v231 = &v219 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v15 - 8);
  v230 = &v219 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v17 - 8);
  v229 = &v219 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v19 - 8);
  v226 = &v219 - v20;
  v21 = sub_20C1333A4();
  v227 = *(v21 - 8);
  v228 = v21;
  MEMORY[0x28223BE20](v21);
  v224 = &v219 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v23 - 8);
  v24 = MEMORY[0x277D84FA0];
  *(v7 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v7 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_bookmarks) = v24;
  *(v7 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_playlists) = v24;
  *(v7 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_resumableSessions) = v24;
  *(v7 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v25 = OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_configuration;
  v26 = sub_20C134104();
  (*(*(v26 - 8) + 56))(v8 + v25, 1, 1, v26);
  *(v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_activationState) = 0;
  *(v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(&v249, v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v249, v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v249, v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v249, v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v249, v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_eventHub) = v249;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v249, v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v249, v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v249, v8 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_upNextQueueClient);
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v225 = v8;
  if (a2 > 4u)
  {
    if (a2 > 6u)
    {
      if (a2 == 8)
      {

        type metadata accessor for PlaylistGalleryShelf();
        swift_allocObject();

        v163 = sub_20BCAAF48(v162, v223, a4, a5);

        LODWORD(v223) = sub_20C1380F4();
        v164 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
        v222 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v164 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

        sub_20C13C734();
        v165 = sub_20C13C724();
        v166 = type metadata accessor for CatalogPageImpressionTracker();
        v167 = swift_allocObject();
        sub_20C13C714();

        sub_20C13C6B4();
        v168 = MEMORY[0x277D221C0];
        v167[2] = sub_20C13C6D4();
        v167[3] = v165;
        v167[4] = v168;
        v250 = v166;
        v169 = sub_20B63EE48();
        v251 = v169;
        *&v249 = v167;
        v170 = type metadata accessor for MetricLocationStore();
        v171 = swift_allocObject();
        v172 = MEMORY[0x277D84F98];
        v173 = MEMORY[0x277D84F90];
        *(v171 + 16) = MEMORY[0x277D84F90];
        *(v171 + 24) = v172;
        v174 = __swift_mutable_project_boxed_opaque_existential_1(&v249, v166);
        v221 = &v219;
        v175 = MEMORY[0x28223BE20](v174);
        v177 = (&v219 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v178 + 16))(v177, v175);
        v179 = *v177;
        v247 = v166;
        v248 = v169;
        v246[0] = v179;
        v244 = v170;
        v245 = &off_2822B6968;
        v243[0] = v171;
        v241[0] = v173;
        sub_20BB5D394(0, 1, 0);
        v180 = v241[0];
        v182 = *(v241[0] + 16);
        v181 = *(v241[0] + 24);
        if (v182 >= v181 >> 1)
        {
          sub_20BB5D394((v181 > 1), v182 + 1, 1);
          v180 = v241[0];
        }

        *(v180 + 16) = v182 + 1;
        v183 = v180 + 24 * v182;
        *(v183 + 32) = v163;
        *(v183 + 40) = &off_2822DB810;
        *(v183 + 48) = 0;
        sub_20B51CC64(v246, v241);
        sub_20B51CC64(v243, v239);
        v184 = __swift_mutable_project_boxed_opaque_existential_1(v241, v242);
        v220 = &v219;
        v185 = MEMORY[0x28223BE20](v184);
        v187 = (&v219 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v188 + 16))(v187, v185);
        v189 = __swift_mutable_project_boxed_opaque_existential_1(v239, v240);
        v190 = MEMORY[0x28223BE20](v189);
        v192 = (&v219 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v193 + 16))(v192, v190);
        v194 = *v187;
        v195 = *v192;
        v237 = v166;
        v238 = v169;
        v236[0] = v194;
        v234 = v170;
        v235 = &off_2822B6968;
        v233[0] = v195;
        v196 = objc_allocWithZone(type metadata accessor for CatalogPage());
        v197 = __swift_mutable_project_boxed_opaque_existential_1(v236, v237);
        v198 = MEMORY[0x28223BE20](v197);
        v200 = (&v219 - ((v199 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v201 + 16))(v200, v198);
        v202 = __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
        v203 = MEMORY[0x28223BE20](v202);
        v205 = (&v219 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v206 + 16))(v205, v203);
        v71 = sub_20BE3AA74(0x736B63617453794DLL, 0xE800000000000000, v180, v223, v222, *v200, *v205, 2, v196);
        goto LABEL_19;
      }
    }

    else if (a2 == 5)
    {

      type metadata accessor for BookmarkGalleryShelf();
      swift_allocObject();

      v72 = sub_20C00F060(0, a1, v223, a4, a5);

      LODWORD(v223) = sub_20C1380F4();
      v73 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
      v222 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v73 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

      sub_20C13C734();
      v74 = sub_20C13C724();
      v75 = type metadata accessor for CatalogPageImpressionTracker();
      v76 = swift_allocObject();
      sub_20C13C714();

      sub_20C13C6B4();
      v77 = MEMORY[0x277D221C0];
      v76[2] = sub_20C13C6D4();
      v76[3] = v74;
      v76[4] = v77;
      v250 = v75;
      v78 = sub_20B63EE48();
      v251 = v78;
      *&v249 = v76;
      v79 = type metadata accessor for MetricLocationStore();
      v80 = swift_allocObject();
      v81 = MEMORY[0x277D84F98];
      v82 = MEMORY[0x277D84F90];
      *(v80 + 16) = MEMORY[0x277D84F90];
      *(v80 + 24) = v81;
      v83 = __swift_mutable_project_boxed_opaque_existential_1(&v249, v75);
      v221 = &v219;
      v84 = MEMORY[0x28223BE20](v83);
      v86 = (&v219 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v87 + 16))(v86, v84);
      v88 = *v86;
      v247 = v75;
      v248 = v78;
      v246[0] = v88;
      v244 = v79;
      v245 = &off_2822B6968;
      v243[0] = v80;
      v241[0] = v82;
      sub_20BB5D394(0, 1, 0);
      v89 = v241[0];
      v91 = *(v241[0] + 16);
      v90 = *(v241[0] + 24);
      if (v91 >= v90 >> 1)
      {
        sub_20BB5D394((v90 > 1), v91 + 1, 1);
        v89 = v241[0];
      }

      *(v89 + 16) = v91 + 1;
      v92 = v89 + 24 * v91;
      *(v92 + 32) = v72;
      *(v92 + 40) = &off_2822FFBE8;
      *(v92 + 48) = 0;
      sub_20B51CC64(v246, v241);
      sub_20B51CC64(v243, v239);
      v93 = __swift_mutable_project_boxed_opaque_existential_1(v241, v242);
      v220 = &v219;
      v94 = MEMORY[0x28223BE20](v93);
      v96 = (&v219 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v97 + 16))(v96, v94);
      v98 = __swift_mutable_project_boxed_opaque_existential_1(v239, v240);
      v99 = MEMORY[0x28223BE20](v98);
      v101 = (&v219 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v102 + 16))(v101, v99);
      v103 = *v96;
      v104 = *v101;
      v237 = v75;
      v238 = v78;
      v236[0] = v103;
      v234 = v79;
      v235 = &off_2822B6968;
      v233[0] = v104;
      v105 = objc_allocWithZone(type metadata accessor for CatalogPage());
      v106 = __swift_mutable_project_boxed_opaque_existential_1(v236, v237);
      v107 = MEMORY[0x28223BE20](v106);
      v109 = (&v219 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v110 + 16))(v109, v107);
      v111 = __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
      v112 = MEMORY[0x28223BE20](v111);
      v114 = (&v219 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v115 + 16))(v114, v112);
      v71 = sub_20BE3AA74(0x61746964654D794DLL, 0xED0000736E6F6974, v89, v223, v222, *v109, *v114, 2, v105);
      goto LABEL_19;
    }
  }

  else
  {
    if (!a2)
    {

      type metadata accessor for BookmarkGalleryShelf();
      swift_allocObject();

      v27 = sub_20C00F060(1, a1, v223, a4, a5);

      LODWORD(v223) = sub_20C1380F4();
      v28 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
      v222 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v28 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

      sub_20C13C734();
      v29 = sub_20C13C724();
      v30 = type metadata accessor for CatalogPageImpressionTracker();
      v31 = swift_allocObject();
      sub_20C13C714();

      sub_20C13C6B4();
      v32 = MEMORY[0x277D221C0];
      v31[2] = sub_20C13C6D4();
      v31[3] = v29;
      v31[4] = v32;
      v250 = v30;
      v33 = sub_20B63EE48();
      v251 = v33;
      *&v249 = v31;
      v34 = type metadata accessor for MetricLocationStore();
      v35 = swift_allocObject();
      v36 = MEMORY[0x277D84F98];
      v37 = MEMORY[0x277D84F90];
      *(v35 + 16) = MEMORY[0x277D84F90];
      *(v35 + 24) = v36;
      v38 = __swift_mutable_project_boxed_opaque_existential_1(&v249, v30);
      v221 = &v219;
      v39 = MEMORY[0x28223BE20](v38);
      v41 = (&v219 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v42 + 16))(v41, v39);
      v43 = *v41;
      v247 = v30;
      v248 = v33;
      v246[0] = v43;
      v244 = v34;
      v245 = &off_2822B6968;
      v243[0] = v35;
      v241[0] = v37;
      sub_20BB5D394(0, 1, 0);
      v44 = v241[0];
      v46 = *(v241[0] + 16);
      v45 = *(v241[0] + 24);
      if (v46 >= v45 >> 1)
      {
        sub_20BB5D394((v45 > 1), v46 + 1, 1);
        v44 = v241[0];
      }

      *(v44 + 16) = v46 + 1;
      v47 = v44 + 24 * v46;
      *(v47 + 32) = v27;
      *(v47 + 40) = &off_2822FFBE8;
      *(v47 + 48) = 0;
      sub_20B51CC64(v246, v241);
      sub_20B51CC64(v243, v239);
      v48 = __swift_mutable_project_boxed_opaque_existential_1(v241, v242);
      v220 = &v219;
      v49 = MEMORY[0x28223BE20](v48);
      v51 = (&v219 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v52 + 16))(v51, v49);
      v53 = __swift_mutable_project_boxed_opaque_existential_1(v239, v240);
      v54 = MEMORY[0x28223BE20](v53);
      v56 = (&v219 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v57 + 16))(v56, v54);
      v58 = *v51;
      v59 = *v56;
      v237 = v30;
      v238 = v33;
      v236[0] = v58;
      v234 = v34;
      v235 = &off_2822B6968;
      v233[0] = v59;
      v60 = objc_allocWithZone(type metadata accessor for CatalogPage());
      v61 = __swift_mutable_project_boxed_opaque_existential_1(v236, v237);
      v62 = MEMORY[0x28223BE20](v61);
      v64 = (&v219 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v65 + 16))(v64, v62);
      v66 = __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
      v67 = MEMORY[0x28223BE20](v66);
      v69 = (&v219 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v70 + 16))(v69, v67);
      v71 = sub_20BE3AA74(0x756F6B726F57794DLL, 0xEA00000000007374, v44, v223, v222, *v64, *v69, 2, v60);
LABEL_19:
      v161 = v71;
      __swift_destroy_boxed_opaque_existential_1(v243);
      __swift_destroy_boxed_opaque_existential_1(v246);
      __swift_destroy_boxed_opaque_existential_1(v233);
      __swift_destroy_boxed_opaque_existential_1(v236);
      __swift_destroy_boxed_opaque_existential_1(v239);
      __swift_destroy_boxed_opaque_existential_1(v241);
      __swift_destroy_boxed_opaque_existential_1(&v249);
LABEL_20:
      v207 = v225;
      *(v225 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_page) = v161;
      v208 = OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_metricPageCategory;
      v209 = sub_20C1352F4();
      v210 = *(v209 - 8);
      v211 = *(v210 + 16);
      v212 = v232;
      v211(v207 + v208, v232, v209);
      v223 = *(v161 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
      v213 = v226;
      v211(v226, v212, v209);
      (*(v210 + 56))(v213, 0, 1, v209);
      v214 = sub_20C132C14();
      (*(*(v214 - 8) + 56))(v229, 1, 1, v214);
      v215 = sub_20C135ED4();
      (*(*(v215 - 8) + 56))(v230, 1, 1, v215);
      v216 = sub_20C136914();
      (*(*(v216 - 8) + 56))(v231, 1, 1, v216);

      v217 = v224;
      sub_20C133384();
      (*(v227 + 32))(v207 + OBJC_IVAR____TtC9SeymourUI26LibraryGalleryDataProvider_metricPage, v217, v228);
      sub_20BE13BF4();
      (*(v210 + 8))(v212, v209);
      return v207;
    }

    if (a2 == 1)
    {

      v222 = "alleryViewController instead";
      type metadata accessor for DownloadGalleryShelf();
      swift_allocObject();

      v117 = sub_20B8D3528(v116, v223, a4, a5);

      LODWORD(v223) = sub_20C1380F4();
      v118 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
      v221 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v118 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

      sub_20C13C734();
      v119 = sub_20C13C724();
      v120 = type metadata accessor for CatalogPageImpressionTracker();
      v121 = swift_allocObject();
      sub_20C13C714();

      sub_20C13C6B4();
      v122 = MEMORY[0x277D221C0];
      v121[2] = sub_20C13C6D4();
      v121[3] = v119;
      v121[4] = v122;
      v250 = v120;
      v123 = sub_20B63EE48();
      v251 = v123;
      *&v249 = v121;
      v124 = type metadata accessor for MetricLocationStore();
      v125 = swift_allocObject();
      v126 = MEMORY[0x277D84F98];
      v127 = MEMORY[0x277D84F90];
      *(v125 + 16) = MEMORY[0x277D84F90];
      *(v125 + 24) = v126;
      v128 = __swift_mutable_project_boxed_opaque_existential_1(&v249, v120);
      v220 = &v219;
      v129 = MEMORY[0x28223BE20](v128);
      v131 = (&v219 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v132 + 16))(v131, v129);
      v133 = *v131;
      v247 = v120;
      v248 = v123;
      v246[0] = v133;
      v244 = v124;
      v245 = &off_2822B6968;
      v243[0] = v125;
      v241[0] = v127;
      sub_20BB5D394(0, 1, 0);
      v134 = v241[0];
      v136 = *(v241[0] + 16);
      v135 = *(v241[0] + 24);
      if (v136 >= v135 >> 1)
      {
        sub_20BB5D394((v135 > 1), v136 + 1, 1);
        v134 = v241[0];
      }

      *(v134 + 16) = v136 + 1;
      v137 = v134 + 24 * v136;
      *(v137 + 32) = v117;
      *(v137 + 40) = &off_2822B3340;
      *(v137 + 48) = 0;
      sub_20B51CC64(v246, v241);
      sub_20B51CC64(v243, v239);
      v138 = __swift_mutable_project_boxed_opaque_existential_1(v241, v242);
      v219 = &v219;
      v139 = MEMORY[0x28223BE20](v138);
      v141 = (&v219 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v142 + 16))(v141, v139);
      v143 = __swift_mutable_project_boxed_opaque_existential_1(v239, v240);
      v144 = MEMORY[0x28223BE20](v143);
      v146 = (&v219 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v147 + 16))(v146, v144);
      v148 = *v141;
      v149 = *v146;
      v237 = v120;
      v238 = v123;
      v236[0] = v148;
      v234 = v124;
      v235 = &off_2822B6968;
      v233[0] = v149;
      v150 = objc_allocWithZone(type metadata accessor for CatalogPage());
      v151 = __swift_mutable_project_boxed_opaque_existential_1(v236, v237);
      v152 = MEMORY[0x28223BE20](v151);
      v154 = (&v219 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v155 + 16))(v154, v152);
      v156 = __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
      v157 = MEMORY[0x28223BE20](v156);
      v159 = (&v219 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v160 + 16))(v159, v157);
      v161 = sub_20BE3AA74(0xD000000000000012, v222 | 0x8000000000000000, v134, v223, v221, *v154, *v159, 2, v150);
      __swift_destroy_boxed_opaque_existential_1(v243);
      __swift_destroy_boxed_opaque_existential_1(v246);
      __swift_destroy_boxed_opaque_existential_1(v233);
      __swift_destroy_boxed_opaque_existential_1(v236);
      __swift_destroy_boxed_opaque_existential_1(v239);
      __swift_destroy_boxed_opaque_existential_1(v241);
      __swift_destroy_boxed_opaque_existential_1(&v249);
      goto LABEL_20;
    }
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t WorkoutPlanPreferenceType.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BCBFD5C()
{
  result = qword_27C76D3C0;
  if (!qword_27C76D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D3C0);
  }

  return result;
}

char *sub_20BCBFDB0(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_onMenuDismissed];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  sub_20BCC0E00(v31);
  v14 = v31[3];
  v13[2] = v31[2];
  v13[3] = v14;
  v15 = v31[5];
  v13[4] = v31[4];
  v13[5] = v15;
  v16 = v31[1];
  *v13 = v31[0];
  v13[1] = v16;
  *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = MEMORY[0x277D84FA0];
  v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary] = 0;
  v17 = OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_normalTintColor;
  *&v4[v17] = [objc_opt_self() whiteColor];
  v18 = OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView] = 0;
  v19 = type metadata accessor for MoreOptionsButton();
  v30.receiver = v4;
  v30.super_class = v19;
  v20 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = *MEMORY[0x277D76838];
  v22 = v20;
  [v22 setMaximumContentSizeCategory_];
  sub_20BCC0800();
  v23 = sub_20C13D874();
  (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  sub_20C13D894();
  v24 = &v22[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  [v22 setTintColor_];
  v25 = *(v24 + 10);
  v26 = *&v22[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v22[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v25;
  v27 = v25;

  LODWORD(v28) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v28];

  return v22;
}

void sub_20BCC01CC(char a1, char a2)
{
  v4 = &v2[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  if (a1)
  {
    v5 = *(v4 + 10);
    v6 = OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors;
    if (sub_20B8DD11C(0, *&v2[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors]))
    {
      v7 = sub_20B8DD11C(1, *&v2[v6]) ^ 1;
      v8 = v5;
      if ((a2 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      v19 = v8;
      v9 = v7 & 1;
      sub_20BCC0704(v9);
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v2;
      *(v11 + 24) = v9;
      *(v11 + 32) = v19;
      aBlock[4] = sub_20BCC0C44;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_117;
      v12 = _Block_copy(aBlock);
      v13 = v2;
      v14 = v19;

      [v10 animateWithDuration:v12 animations:0.2];
      _Block_release(v12);

      return;
    }

    v8 = v5;
    v7 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(v4 + 11);
    v7 = 1;
    if (a2)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v20 = v8;
  [v2 alpha];
  [v2 setHidden_];
  v16 = OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView;
  if (v7)
  {
    v17 = v20;
    if (!*&v2[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView])
    {
      sub_20BCC03F8();
      v17 = v20;
      v16 = OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView;
    }
  }

  else
  {
    v17 = v20;
  }

  v18 = *&v2[v16];
  if (v18)
  {
    [v18 setHidden_];
    v17 = v20;
  }

  [v2 setTintColor_];
}

void sub_20BCC03F8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView;
  if (!*&v0[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView])
  {
    v2 = [objc_allocWithZone(type metadata accessor for RoundedVisualEffectView()) initWithEffect_];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 setUserInteractionEnabled_];

    v3 = *&v0[v1];
    *&v0[v1] = v2;
    v4 = v2;

    v5 = v4;
    [v0 insertSubview:v5 atIndex:0];
    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C14FE90;
    v8 = [v5 leadingAnchor];
    v9 = [v0 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v7 + 32) = v10;
    v11 = [v5 trailingAnchor];

    v12 = [v0 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v7 + 40) = v13;
    v14 = [v5 topAnchor];

    v15 = [v0 topAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v7 + 48) = v16;
    v17 = [v5 bottomAnchor];

    v18 = [v0 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v7 + 56) = v19;
    sub_20B5E29D0();
    v20 = sub_20C13CC54();

    [v6 activateConstraints_];
  }
}

void sub_20BCC0704(int a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView);
  if (v4)
  {
    v7 = v4;
    if ((([v7 isHidden] ^ a1) & 1) == 0)
    {
      v5 = 1.0;
      if (a1)
      {
        v5 = 0.0;
      }

      [v7 setAlpha_];
    }

    [v7 setHidden_];
  }

  else if (a1)
  {
    sub_20BCC03F8();
    v6 = *(v1 + v3);
    if (v6)
    {

      [v6 setAlpha_];
    }
  }
}

void sub_20BCC0800()
{
  v1 = v0;
  v2 = sub_20C13D664();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13D814();
  (*(v3 + 104))(v5, *MEMORY[0x277D74FD8], v2);
  sub_20C13D674();
  v6 = *&v1[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance + 40];
  v12[0] = *&v1[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance + 24];
  v12[1] = v6;
  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance + 56];
  v7 = [v1 traitCollection];
  v8 = sub_20B7C6A74(v7);

  v9 = [objc_opt_self() configurationWithFont:v8 scale:2];
  v10 = sub_20C13C914();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  sub_20C13D804();
}

id sub_20BCC09CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MoreOptionsButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BCC0B14(uint64_t *a1, int a2)
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

uint64_t sub_20BCC0B5C(uint64_t result, int a2, int a3)
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

unint64_t sub_20BCC0BC8()
{
  result = qword_27C76D400;
  if (!qword_27C76D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D400);
  }

  return result;
}

void sub_20BCC0C1C(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary) != v2)
  {
    *(v1 + OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary) = v2;
    sub_20BCC01CC(v2, 1);
  }
}

id sub_20BCC0C44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView];
  if (v3)
  {
    v4 = 0.0;
    if (*(v0 + 24))
    {
      v4 = 1.0;
    }

    [v3 setAlpha_];
  }

  return [v1 setTintColor_];
}

char *sub_20BCC0CC0(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for MoreOptionsButton();
  v6 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = *&v6[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance + 88];
  }

  v8 = v6;
  v9 = a3;
  [v8 setTintColor_];

  v10 = *&v8[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance + 80];
  v11 = *&v8[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v8[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v10;
  v12 = v10;

  *&v8[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = a2;

  LOBYTE(v11) = v8[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary];

  sub_20BCC01CC(v11, 0);
  [v8 setMenu_];

  [v8 setShowsMenuAsPrimaryAction_];
  return v8;
}

id sub_20BCC0E00@<X0>(uint64_t a1@<X8>)
{
  v14 = [objc_opt_self() effectWithStyle_];
  v2 = *MEMORY[0x277D76918];
  v15 = *MEMORY[0x277D74420];
  v3 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v13 = v2;
  sub_20C13CA64();
  v4 = sub_20C13E1B4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(v3 + 48) + v6);
      if (v8 >= 4)
      {
        break;
      }

      v9 = sub_20C13DFF4();

      if (v9)
      {
        goto LABEL_7;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v3 = MEMORY[0x277D84FA0];
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20B706478(4, v6, isUniquelyReferenced_nonNull_native);
  }

LABEL_7:
  v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  result = [objc_opt_self() whiteColor];
  *a1 = v14;
  *(a1 + 8) = 0x73697370696C6C65;
  *(a1 + 16) = 0xE800000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v13;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 53) = 9;
  *(a1 + 56) = v15;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  *(a1 + 80) = v11;
  *(a1 + 88) = result;
  return result;
}

void sub_20BCC10B8()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_onMenuDismissed);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance);
  sub_20BCC0E00(v8);
  v3 = v8[3];
  v2[2] = v8[2];
  v2[3] = v3;
  v4 = v8[5];
  v2[4] = v8[4];
  v2[5] = v4;
  v5 = v8[1];
  *v2 = v8[0];
  v2[1] = v5;
  *(v0 + OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary) = 0;
  v6 = OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_normalTintColor;
  *(v0 + v6) = [objc_opt_self() whiteColor];
  v7 = OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *(v0 + OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_visualEffectView) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BCC11E4()
{
  sub_20BBA898C(v0 + OBJC_IVAR____TtC9SeymourUI8ItemNode_action);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI8ItemNode_item);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemNode()
{
  result = qword_27C76D408;
  if (!qword_27C76D408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BCC12AC()
{
  result = type metadata accessor for ButtonAction(319);
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

uint64_t sub_20BCC15D8(uint64_t result)
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
          v4 = (v1 + OBJC_IVAR____TtC9SeymourUI33RemoveFromWatchShareSheetActivity_workoutIdentifier);
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

id sub_20BCC16FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v9 - v4;
  if (*&v0[OBJC_IVAR____TtC9SeymourUI33RemoveFromWatchShareSheetActivity_workoutIdentifier + 8])
  {
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI33RemoveFromWatchShareSheetActivity_assetClient], *&v0[OBJC_IVAR____TtC9SeymourUI33RemoveFromWatchShareSheetActivity_assetClient + 24]);

    sub_20C139E14();

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

id sub_20BCC1964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoveFromWatchShareSheetActivity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20BCC1A30()
{
  result = qword_27C76D430;
  if (!qword_27C76D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D430);
  }

  return result;
}

uint64_t sub_20BCC1A84()
{
  sub_20B583E6C(v0 + 16);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *sub_20BCC1B20(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_button;
  v11 = [objc_opt_self() buttonWithType_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setAdjustsFontForContentSizeCategory_];
  v14 = v13;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setTextAlignment_];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v16];

  [v14 setBaselineAdjustment_];
  [v14 setAdjustsFontSizeToFitWidth_];
  *&v4[v12] = v14;
  v17 = &v4[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider];
  sub_20BCC2C30(v53);
  v18 = v53[1];
  *v17 = v53[0];
  *(v17 + 1) = v18;
  *(v17 + 2) = v53[2];
  *(v17 + 6) = v54;
  *(v17 + 56) = xmmword_20C1774A0;
  *(v17 + 72) = xmmword_20C1774B0;
  v19 = &v4[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  *v19 = 0;
  *(v19 + 1) = 0;
  v48.receiver = v4;
  v48.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = *MEMORY[0x277CDA138];
  v22 = v20;
  v23 = [v22 layer];
  [v23 setCornerCurve_];

  v24 = v22;
  v25 = 14.0;
  if (_UISolariumEnabled())
  {
    v25 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 64] * 0.5;
  }

  v26 = [v24 layer];
  [v26 setCornerRadius_];

  [v24 setClipsToBounds_];
  [v24 setClipsToBounds_];

  v27 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v28 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v30 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 16];
  v29 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 32];
  v31 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider];
  v47 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 48];
  v46[1] = v30;
  v46[2] = v29;
  v46[0] = v31;
  v32 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 16];
  v49 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider];
  v50 = v32;
  v51 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 32];
  v52 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 48];
  v33 = v28;
  sub_20BCC2BC8(v46, v45);
  v34 = [v24 traitCollection];

  v35 = sub_20B7C6A74(v34);
  sub_20BCC2C00(v46);
  [v33 setFont_];

  sub_20C1380F4();
  v36 = sub_20C138104();
  v37 = sub_20C138104();
  v38 = *&v24[v27];
  if (v36 == v37)
  {
    [v38 setNumberOfLines_];
  }

  else
  {
    [v38 setLineBreakMode_];
    [*&v24[v27] setNumberOfLines_];
  }

  [v24 addSubview_];
  v39 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_button;
  [v24 addSubview_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v40) = v45[0];
  [v24 setContentHuggingPriority:1 forAxis:v40];
  sub_20B51C88C(0, &qword_27C7626E8);
  sub_20B66740C([objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.2], 1.0, 1.0);
  v42 = v41;
  v43 = [v41 resizableImageWithCapInsets_];

  if (v43)
  {
    [*&v24[v39] setBackgroundImage:v43 forState:1];
  }

  [*&v24[v39] addTarget:v24 action:sel_handleButtonTapped forControlEvents:64];
  sub_20BCC2048();

  return v24;
}

void sub_20BCC2048()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_button];
  v3 = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  v6 = [v1 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:v2];

  LODWORD(v9) = 1148846080;
  [v8 setPriority_];
  v10 = v8;
  v11 = [v1 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-v5];

  LODWORD(v14) = 1148846080;
  [v13 setPriority_];
  v15 = v13;
  v16 = [v1 topAnchor];
  v17 = [v0 &selRef_setLineBreakMode_];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v3];

  LODWORD(v19) = 1148846080;
  [v18 setPriority_];
  v20 = [v1 bottomAnchor];
  v21 = [v0 &selRef_secondaryLabel + 5];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-v4];

  LODWORD(v23) = 1148846080;
  [v22 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C14FE90;
  *(v24 + 32) = v10;
  *(v24 + 40) = v15;
  *(v24 + 48) = v18;
  *(v24 + 56) = v22;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150050;
  v26 = *&v0[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v27 = [v26 leadingAnchor];
  v28 = [v0 leadingAnchor];
  v29 = &v0[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider];
  v30 = *&v0[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 56];
  v31 = [v27 constraintEqualToAnchor:v28 constant:v30];

  *(inited + 32) = v31;
  v32 = [v26 trailingAnchor];
  v33 = [v0 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:-v30];

  *(inited + 40) = v34;
  v35 = [v26 centerYAnchor];
  v36 = [v0 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(inited + 48) = v37;
  v38 = [v26 topAnchor];
  v39 = [v0 topAnchor];
  v40 = v29[10];
  v41 = [v38 constraintGreaterThanOrEqualToAnchor:v39 constant:v40];

  *(inited + 56) = v41;
  v42 = [v26 bottomAnchor];
  v43 = [v0 bottomAnchor];
  v44 = [v42 constraintLessThanOrEqualToAnchor:v43 constant:-v40];

  *(inited + 64) = v44;
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_20C14F580;
  v46 = [v0 widthAnchor];
  v47 = [v46 constraintGreaterThanOrEqualToConstant_];

  *(v45 + 32) = v47;
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_20C14F580;
  v49 = [v0 heightAnchor];
  v50 = [v49 constraintGreaterThanOrEqualToConstant_];

  *(v48 + 32) = v50;
  v51 = objc_opt_self();
  sub_20B8D9310(inited);
  sub_20B8D9310(v45);
  sub_20B8D9310(v48);
  sub_20B51C88C(0, &qword_281100500);
  v52 = sub_20C13CC54();

  [v51 activateConstraints_];
}

uint64_t sub_20BCC2684(void *a1)
{
  v33.receiver = v1;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (!a1)
  {
    v13 = [v1 traitCollection];
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = *&Strong[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];

    v16 = swift_unknownObjectUnownedLoadStrong();
    v18 = *&v16[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 16];
    v17 = *&v16[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 32];
    v19 = *&v16[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider];
    v32 = *&v16[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 48];
    v30 = v18;
    v31 = v17;
    v29 = v19;
    sub_20BCC2BC8(&v29, &v34);

    v34 = v29;
    v35 = v30;
    v36 = v31;
    v37 = v32;
    v20 = sub_20B7C6A74(v13);
    sub_20BCC2C00(&v29);
    [v15 setFont_];

LABEL_11:
    return swift_unknownObjectUnownedDestroy();
  }

  v3 = a1;
  v4 = [v3 preferredContentSizeCategory];
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_20C13C954();
  v9 = v8;
  if (v7 == sub_20C13C954() && v9 == v10)
  {

    return swift_unknownObjectUnownedDestroy();
  }

  v12 = sub_20C13DFF4();

  if ((v12 & 1) == 0)
  {
    v21 = [v1 traitCollection];
    v22 = swift_unknownObjectUnownedLoadStrong();
    v23 = *&v22[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];

    v24 = swift_unknownObjectUnownedLoadStrong();
    v26 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 16];
    v25 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 32];
    v27 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider];
    v32 = *&v24[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider + 48];
    v30 = v26;
    v31 = v25;
    v29 = v27;
    sub_20BCC2BC8(&v29, &v34);

    v34 = v29;
    v35 = v30;
    v36 = v31;
    v37 = v32;
    v20 = sub_20B7C6A74(v21);
    sub_20BCC2C00(&v29);
    [v23 setFont_];

    goto LABEL_11;
  }

  return swift_unknownObjectUnownedDestroy();
}

uint64_t sub_20BCC2B1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_20BCC2B64(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_20BCC2C30@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D76920];
  v17 = *MEMORY[0x277D74410];
  v3 = *MEMORY[0x277D76800];
  v19 = MEMORY[0x277D84FA0];
  v16 = v3;
  sub_20B6FF83C(v18, 1);
  v21 = 1;
  v20 = 0;
  v4 = v19;
  sub_20C13E164();
  v15 = v2;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 >= 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_7;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = v4;
    result = sub_20B706478(4, v7, isUniquelyReferenced_nonNull_native);
    v4 = v18[0];
  }

LABEL_7:
  v13 = v21;
  v14 = v20;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = v15;
  *(a1 + 24) = 0;
  *(a1 + 28) = v13;
  *(a1 + 29) = 9;
  *(a1 + 32) = v17;
  *(a1 + 40) = v14;
  *(a1 + 48) = v4;
  return result;
}

void sub_20BCC2E6C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_button;
  v2 = [objc_opt_self() buttonWithType_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v4 setAdjustsFontForContentSizeCategory_];
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setTextAlignment_];
  LODWORD(v6) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v5 setContentCompressionResistancePriority:1 forAxis:v7];

  [v5 setBaselineAdjustment_];
  [v5 setAdjustsFontSizeToFitWidth_];
  *(v0 + v3) = v5;
  v8 = v0 + OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_styleProvider;
  sub_20BCC2C30(v11);
  v9 = v11[1];
  *v8 = v11[0];
  *(v8 + 16) = v9;
  *(v8 + 32) = v11[2];
  *(v8 + 48) = v12;
  *(v8 + 56) = xmmword_20C1774A0;
  *(v8 + 72) = xmmword_20C1774B0;
  v10 = (v0 + OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped);
  *v10 = 0;
  v10[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for ScottyFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScottyFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20BCC31C4(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x7261426E727562;
      break;
    case 2:
      result = 0x65636E65646163;
      break;
    case 3:
      result = 0x65636E6174736964;
      break;
    case 4:
      result = 0x796772656E65;
      break;
    case 5:
      result = 0x7461527472616568;
      break;
    case 6:
      result = 0x6867696C68676968;
      break;
    case 7:
      result = 0x7469736E65746E69;
      break;
    case 8:
      result = 0x656E696C636E69;
      break;
    case 9:
      result = 7172210;
      break;
    case 10:
      result = 0x6F74617261706573;
      break;
    case 11:
      result = 7172211;
      break;
    case 12:
      result = 0x73736572676F7270;
      break;
    case 13:
      result = 0x72656D6974;
      break;
    case 14:
      result = 0x617254636973756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20BCC3368()
{
  result = sub_20B8D9354(&unk_282287EE0);
  qword_27C79C100 = &unk_282287EB0;
  return result;
}

uint64_t sub_20BCC33B4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_20BCC31C4(*a1);
  v5 = v4;
  if (v3 == sub_20BCC31C4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();
  }

  return v8 & 1;
}

uint64_t sub_20BCC343C()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20BCC31C4(v1);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BCC34A0()
{
  sub_20BCC31C4(*v0);
  sub_20C13CA64();
}

uint64_t sub_20BCC34F4()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20BCC31C4(v1);
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BCC3554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20BCC36A8();
  *a1 = result;
  return result;
}

uint64_t sub_20BCC3584@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20BCC31C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20BCC35B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20B782668();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA18](a1, a2, a3, a4, a5, v10, v11);
}

uint64_t sub_20BCC3634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20B782668();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA20](a1, a2, a3, a4, a5, v10, v11);
}

uint64_t sub_20BCC36A8()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20BCC36F4(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v3 = sub_20C134014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v36 = type metadata accessor for ShelfIndexedLazyLockup();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v45 = (&v34 - v16);
  v17 = *(a2 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v46 = MEMORY[0x277D84F90];
    sub_20BB5E158(0, v17, 0);
    v19 = 0;
    v18 = v46;
    v43 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v20 = a2 + v43;
    v21 = *(v12 + 72);
    v41 = (v4 + 48);
    v42 = v21;
    v34 = (v4 + 32);
    v35 = v8;
    do
    {
      v22 = sub_20BCC3E8C(v20, v14, type metadata accessor for ShelfIndexedLazyLockup);
      MEMORY[0x28223BE20](v22);
      *(&v34 - 2) = v14;
      v23 = v14;
      sub_20B6B77DC(sub_20BCC3DAC, v44, v11);
      sub_20B9B8CA4(v11, v8);
      if ((*v41)(v8, 1, v3) == 1)
      {
        sub_20B9B8D14(v8);
        sub_20BCC3E8C(v14, v45, type metadata accessor for ShelfIndexedLazyLockup);
      }

      else
      {
        v39 = v18;
        v24 = *v34;
        v25 = v11;
        v26 = v37;
        (*v34)(v37, v8, v3);
        v38 = *v23;
        v27 = *(v36 + 20);
        v40 = v19;
        v28 = v45;
        v29 = v26;
        v11 = v25;
        v24(v45 + v27, v29, v3);
        v18 = v39;
        sub_20C134A74();
        v8 = v35;
        swift_storeEnumTagMultiPayload();
        *v28 = v38;
        v19 = v40;
      }

      v14 = v23;
      sub_20BCC3DCC(v23);
      v46 = v18;
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_20BB5E158(v30 > 1, v31 + 1, 1);
        v18 = v46;
      }

      *(v18 + 16) = v31 + 1;
      v32 = v42;
      sub_20BCC3E28(v45, v18 + v43 + v31 * v42);
      v20 += v32;
      --v17;
    }

    while (v17);
  }

  return v18;
}

uint64_t sub_20BCC3AF0(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_20C136594();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134A74();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C133E44();
  v13 = v12;
  v14 = type metadata accessor for ShelfIndexedLazyLockup();
  sub_20BCC3E8C(v25 + *(v14 + 20), v11, MEMORY[0x277D50C70]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v8, v11, v5);
    v15 = sub_20C133E44();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v18 = v24;
    (*(v2 + 32))(v4, v11, v24);
    v15 = sub_20C136564();
    v17 = v19;
    (*(v2 + 8))(v4, v18);
  }

  if (v26 == v15 && v13 == v17)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_20C13DFF4();
  }

  return v21 & 1;
}

uint64_t sub_20BCC3DCC(uint64_t a1)
{
  v2 = type metadata accessor for ShelfIndexedLazyLockup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BCC3E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfIndexedLazyLockup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BCC3E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BCC3EF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20BCC3F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20BCC3F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BCC3FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1 != a5 || a2 != a6 || (sub_20BDA3AC4(a3, a7) & 1) == 0)
  {
    return 0;
  }

  v12 = sub_20C133244();
  v13 = sub_20BCC4268();
  v14 = *(a10 + 8);

  return MEMORY[0x2821FB928](a4, a8, v12, a9, v13, v14);
}

uint64_t sub_20BCC4078(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x20F2F58E0](a2);
  MEMORY[0x20F2F58E0](a3);
  sub_20BBA8058(a1, a4);
  v13 = sub_20C133244();
  v14 = sub_20BCC4268();

  return MEMORY[0x2821FB920](a1, a5, v13, a6, v14, a7);
}

uint64_t sub_20BCC4110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_20C13E164();
  sub_20BCC4078(v13, a1, a2, a3, a4, a5, a6);
  return sub_20C13E1B4();
}

uint64_t sub_20BCC41B8(uint64_t a1, uint64_t a2)
{
  sub_20C13E164();
  sub_20BCC4078(v5, *v2, v2[1], v2[2], v2[3], *(a2 + 16), *(a2 + 24));
  return sub_20C13E1B4();
}

unint64_t sub_20BCC4268()
{
  result = qword_27C764180;
  if (!qword_27C764180)
  {
    sub_20C133244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764180);
  }

  return result;
}

void *AvatarSettingsCoordinator.__allocating_init(accountProvider:contactService:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v15 = sub_20BCC4F20(v11, v14, a3, a4, v4, v9, v12, v10, v13);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

void sub_20BCC4384(void *a1@<X8>)
{
  v3 = *(v1 + 128);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 userFullName];
    if (v5)
    {
      v6 = v5;
      v7 = sub_20C13C954();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = [v4 username];
    if (v10)
    {
      v11 = v10;
      v12 = sub_20C13C954();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 0;
    }

    v15 = *(v1 + 120);
    *a1 = v15;
    a1[1] = v7;
    a1[2] = v9;
    a1[3] = v12;
    a1[4] = v14;

    v16 = v15;
  }

  else
  {
    *a1 = 1;
    *(a1 + 1) = 0u;
    *(a1 + 3) = 0u;
  }
}

void *AvatarSettingsCoordinator.init(accountProvider:contactService:eventHub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_20BCC4B90(v13, v20, a3, a4, v24[1], v9, v16, v8, v15);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

uint64_t sub_20BCC465C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1((result + 16), *(result + 40));
    sub_20C13B954();

    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_20BCC517C;
    *(v7 + 24) = v5;

    v6(sub_20B71C59C, v7);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_20BCC480C(void *a1@<X8>)
{
  if (!*(v1 + 120))
  {
    v2 = a1;
    sub_20B52F700();
    a1 = v2;
  }

  sub_20BCC4384(a1);
}

void *sub_20BCC4888(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(a1 + 8))
  {
    sub_20C13B534();
    v9 = v8;
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1D4();
    sub_20B71C588(v8, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v22 = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = MEMORY[0x20F2F5850](v21[1], v21[2]);
      v16 = sub_20B51E694(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_20B517000, v10, v11, "AvatarSettingsCoordinator failed to fetch account with error: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x20F2F6A40](v13, -1, -1);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v17 = *(a2 + 128);
    *(a2 + 128) = 0;
  }

  else
  {
    v18 = *(a2 + 128);
    *(a2 + 128) = v8;
    v19 = v8;
  }

  swift_getObjectType();
  sub_20BCC4384(&v22);
  sub_20BB2AACC();
  sub_20C13A764();
  return sub_20B8FD958(v22);
}

uint64_t AvatarSettingsCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t AvatarSettingsCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_20BCC4B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v16 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v18 = &v27 - v17;
  v32[3] = a6;
  v32[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v31[3] = a7;
  v31[4] = a9;
  v20 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a7 - 8) + 32))(v20, a2, a7);
  a5[15] = 0;
  a5[16] = 0;
  sub_20B51CC64(v32, (a5 + 2));
  sub_20B51CC64(v31, (a5 + 7));
  v21 = v28;
  a5[12] = a3;
  a5[13] = v21;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  a5[14] = sub_20C13A914();
  __swift_project_boxed_opaque_existential_1(a5 + 2, a5[5]);
  sub_20C13B954();

  v22 = v29;
  v23 = sub_20C137CB4();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20BCC511C;
  *(v24 + 24) = a5;

  v23(sub_20B718F14, v24);

  (*(v16 + 8))(v18, v22);
  v25 = [objc_opt_self() defaultCenter];
  [v25 addObserver:a5 selector:sel_fetchMeContact name:*MEMORY[0x277CBD140] object:0];

  swift_getObjectType();
  sub_20C13B8B4();
  swift_allocObject();
  swift_weakInit();
  sub_20BCC5124();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);

  return a5;
}

void *sub_20BCC4F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a4;
  v26 = a8;
  v24 = a3;
  v13 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AvatarSettingsCoordinator();
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a1, a6);
  (*(v13 + 16))(v15, a2, a7);
  return sub_20BCC4B90(v20, v15, v24, v25, v21, a6, a7, v26, a9);
}

unint64_t sub_20BCC5124()
{
  result = qword_281103AC8;
  if (!qword_281103AC8)
  {
    sub_20C13B8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103AC8);
  }

  return result;
}

unint64_t sub_20BCC5194()
{
  result = qword_27C76D4D8;
  if (!qword_27C76D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D4D8);
  }

  return result;
}

uint64_t sub_20BCC51E8(uint64_t a1)
{
  v43 = sub_20C137454();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C132EE4();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_20BB5DD5C(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_20C13DAA4();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_20C137434();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_20BB5DD5C(v21 > 1, v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_20B526EA4(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_20B526EA4(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BCC55AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_activeWorkoutPlan;
  swift_beginAccess();
  sub_20BCC8BB8(a1, v3 + v13);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_templateReferences) = a2;

  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_20C13CDA4();

  v15 = sub_20C13CD94();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v3;
  sub_20B6383D0(0, 0, v8, &unk_20C177A48, v16);
}

uint64_t sub_20BCC580C()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCC58CC, 0, 0);
}

uint64_t sub_20BCC58CC()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_subscriptionCache);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_20B6162B0;

  return MEMORY[0x2821B5680](v3, v2);
}

uint64_t sub_20BCC5990()
{
  v1[86] = v0;
  v2 = sub_20C13C554();
  v1[87] = v2;
  v1[88] = *(v2 - 8);
  v1[89] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[90] = v3;
  v1[91] = *(v3 - 8);
  v1[92] = swift_task_alloc();
  v4 = sub_20C137374();
  v1[93] = v4;
  v1[94] = *(v4 - 8);
  v1[95] = swift_task_alloc();
  sub_20C13CDA4();
  v1[96] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[97] = v6;
  v1[98] = v5;

  return MEMORY[0x2822009F8](sub_20BCC5B40, v6, v5);
}

uint64_t sub_20BCC5B40()
{
  v56 = v0;
  v1 = *(v0 + 688);
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_metadata);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 752);

    v6 = 0;
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v6;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v8 = *(v0 + 760);
        v9 = *(v0 + 688);
        (*(v4 + 16))(v8, v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, *(v0 + 744));
        sub_20BCC6658(v8, v9, &v55);
        result = (*(v4 + 8))(*(v0 + 760), *(v0 + 744));
        v10 = v55;
        if ((~v55 & 0xF000000000000007) != 0)
        {
          break;
        }

        if (v3 == ++v7)
        {
          goto LABEL_17;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D3C(0, *(v54 + 16) + 1, 1, v54);
        v54 = result;
      }

      v12 = *(v54 + 16);
      v11 = *(v54 + 24);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        result = sub_20BC05D3C((v11 > 1), v12 + 1, 1, v54);
        v13 = v12 + 1;
        v54 = result;
      }

      v6 = v7 + 1;
      *(v54 + 16) = v13;
      *(v54 + 8 * v12 + 32) = v10;
      if (v3 - 1 == v7)
      {
LABEL_17:
        *(v0 + 792) = v54;
        v33 = *(v0 + 688);

        v34 = *(v33 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_previousCustomPlansLimit);
        if ((v34 & 0x8000000000000000) == 0)
        {
          v35 = *(v0 + 736);
          v36 = *(v0 + 728);
          v37 = *(v0 + 720);
          v38 = *(v54 + 16);
          *(v0 + 800) = v38;
          v39 = v38 >= v34;
          v40 = v38 - v34;
          if (!v39)
          {
            v40 = 0;
          }

          *(v0 + 808) = v40;
          sub_20C13B454();
          sub_20C13BB64();
          (*(v36 + 8))(v35, v37);
          v41 = swift_task_alloc();
          *(v0 + 816) = v41;
          *v41 = v0;
          v41[1] = sub_20BCC60C4;

          return sub_20BCC580C();
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }
  }

  *(v0 + 520) = 0u;
  *(v0 + 536) = 1;
  *(v0 + 544) = 0u;
  *(v0 + 560) = 128;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0;
  v14 = MEMORY[0x277D84F90];
  *(v0 + 624) = MEMORY[0x277D84F90];
  *(v0 + 632) = v14;
  *(v0 + 640) = 0u;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0;
  *(v0 + 680) = 2;
  nullsub_1(v0 + 520);
  v15 = v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 16);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 32);
  *(v0 + 352) = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row);
  *(v0 + 368) = v17;
  *(v0 + 384) = v16;
  v18 = *(v15 + 96);
  v20 = *(v15 + 48);
  v19 = *(v15 + 64);
  *(v0 + 432) = *(v15 + 80);
  *(v0 + 448) = v18;
  *(v0 + 400) = v20;
  *(v0 + 416) = v19;
  v22 = *(v15 + 128);
  v21 = *(v15 + 144);
  v23 = *(v15 + 112);
  *(v0 + 512) = *(v15 + 160);
  *(v0 + 480) = v22;
  *(v0 + 496) = v21;
  *(v0 + 464) = v23;
  v24 = *(v0 + 520);
  v25 = *(v0 + 552);
  *(v15 + 16) = *(v0 + 536);
  *(v15 + 32) = v25;
  *v15 = v24;
  v26 = *(v0 + 568);
  v27 = *(v0 + 584);
  v28 = *(v0 + 616);
  *(v15 + 80) = *(v0 + 600);
  *(v15 + 96) = v28;
  *(v15 + 48) = v26;
  *(v15 + 64) = v27;
  v29 = *(v0 + 632);
  v30 = *(v0 + 648);
  v31 = *(v0 + 664);
  *(v15 + 160) = *(v0 + 680);
  *(v15 + 128) = v30;
  *(v15 + 144) = v31;
  *(v15 + 112) = v29;
  sub_20B520158(v0 + 352, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v42 = Strong;
      v43 = sub_20B61DE28(*(v0 + 688), Strong);
      if (v44)
      {
        v46 = v43;
        v47 = v44;
        v48 = v45;
        v49 = *(v0 + 712);
        v50 = *(v0 + 704);
        v51 = *(v0 + 696);
        sub_20B51C88C(0, &qword_281100530);
        *v49 = sub_20C13D374();
        (*(v50 + 104))(v49, *MEMORY[0x277D85200], v51);
        v52 = sub_20C13C584();
        result = (*(v50 + 8))(v49, v51);
        if ((v52 & 1) == 0)
        {
LABEL_32:
          __break(1u);
          return result;
        }

        sub_20B6215FC(v46, v47, v48, *(v0 + 688), 1, v42);
        swift_unknownObjectRelease();

        goto LABEL_26;
      }

      sub_20C0C2D50(0);
    }

    swift_unknownObjectRelease();
  }

LABEL_26:

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_20BCC60C4(char a1)
{
  v2 = *v1;
  *(*v1 + 824) = a1;

  v3 = *(v2 + 784);
  v4 = *(v2 + 776);

  return MEMORY[0x2822009F8](sub_20BCC61EC, v4, v3);
}

uint64_t sub_20BCC61EC()
{
  v1 = *(v0 + 824);

  if (v1 == 1)
  {
    v53 = 0x800000020C1AF9E0;
    __swift_project_boxed_opaque_existential_1((*(*(v0 + 688) + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanStringBuilder) + 48), *(*(*(v0 + 688) + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanStringBuilder) + 72));
    v2 = sub_20B5E107C();
    v51 = v3;
    v52 = v2;
    v4 = 0xD000000000000013;
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v5 = 0;
  }

  sub_20C13E014();
  swift_unknownObjectRetain_n();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
    v6 = MEMORY[0x277D84F90];
  }

  v7 = (v0 + 184);
  v8 = *(v0 + 808);
  v9 = *(v0 + 800);
  v10 = *(v6 + 16);

  if (v10 == v9 - v8)
  {
    v11 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v11)
    {
      goto LABEL_10;
    }

    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v47 = *(v0 + 808);
    v48 = *(v0 + 800);
    v49 = *(v0 + 792);
    swift_unknownObjectRelease();
    sub_20BCC8434(v49, v49 + 32, v47, (2 * v48) | 1);
    v11 = v50;
  }

  swift_unknownObjectRelease();
LABEL_10:
  v12 = *(v0 + 688);
  __swift_project_boxed_opaque_existential_1((*(v12 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanStringBuilder) + 48), *(*(v12 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanStringBuilder) + 72));
  v13 = sub_20B5E107C();
  *v7 = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 128;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = v4;
  *(v0 + 256) = v53;
  *(v0 + 264) = v52;
  *(v0 + 272) = v51;
  *(v0 + 280) = v5;
  v14 = MEMORY[0x277D84F90];
  *(v0 + 288) = v11;
  *(v0 + 296) = v14;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = v13;
  *(v0 + 328) = v15;
  *(v0 + 336) = xmmword_20C150190;
  nullsub_1(v0 + 184);
  v16 = v12 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row;
  v18 = *(v12 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 16);
  v17 = *(v12 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 32);
  *(v0 + 16) = *(v12 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row);
  *(v0 + 32) = v18;
  *(v0 + 48) = v17;
  v19 = *(v16 + 96);
  v21 = *(v16 + 48);
  v20 = *(v16 + 64);
  *(v0 + 96) = *(v16 + 80);
  *(v0 + 112) = v19;
  *(v0 + 64) = v21;
  *(v0 + 80) = v20;
  v23 = *(v16 + 128);
  v22 = *(v16 + 144);
  v24 = *(v16 + 112);
  *(v0 + 176) = *(v16 + 160);
  *(v0 + 144) = v23;
  *(v0 + 160) = v22;
  *(v0 + 128) = v24;
  v25 = *v7;
  v26 = *(v0 + 216);
  *(v16 + 16) = *(v0 + 200);
  *(v16 + 32) = v26;
  *v16 = v25;
  v27 = *(v0 + 232);
  v28 = *(v0 + 248);
  v29 = *(v0 + 280);
  *(v16 + 80) = *(v0 + 264);
  *(v16 + 96) = v29;
  *(v16 + 48) = v27;
  *(v16 + 64) = v28;
  v30 = *(v0 + 296);
  v31 = *(v0 + 312);
  v32 = *(v0 + 328);
  *(v16 + 160) = *(v0 + 344);
  *(v16 + 128) = v31;
  *(v16 + 144) = v32;
  *(v16 + 112) = v30;
  sub_20B520158(v0 + 16, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v36 = Strong;
  v37 = sub_20B61DE28(*(v0 + 688), Strong);
  if (!v38)
  {
    sub_20C0C2D50(0);
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v40 = v37;
  v41 = v38;
  v42 = v39;
  v43 = *(v0 + 712);
  v44 = *(v0 + 704);
  v45 = *(v0 + 696);
  sub_20B51C88C(0, &qword_281100530);
  *v43 = sub_20C13D374();
  (*(v44 + 104))(v43, *MEMORY[0x277D85200], v45);
  v46 = sub_20C13C584();
  result = (*(v44 + 8))(v43, v45);
  if ((v46 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_20B6215FC(v40, v41, v42, *(v0 + 688), 1, v36);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_14:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_20BCC6658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v81 = a2;
  v69 = a3;
  v4 = sub_20C132EE4();
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_20C137374();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1365F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v61 - v11;
  v65 = a1;
  v12 = sub_20C1372C4();
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v76 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_modalities;
  v17 = ((v14 + 63) >> 6);
  v72 = (v8 + 16);
  v73 = (v8 + 48);
  v74 = (v8 + 56);
  v70 = v8;
  v61 = (v8 + 8);
  v77 = v12;

  v18 = 0;
  v71 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v18;
    if (!v16)
    {
      break;
    }

    v20 = v7;
LABEL_10:
    v21 = v76;
    v22 = (*(v77 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))));
    v24 = *v22;
    v23 = v22[1];
    v25 = v81;
    swift_beginAccess();
    v26 = *(v25 + v21);
    if (*(v26 + 16))
    {

      v27 = sub_20B65AA60(v24, v23);
      v7 = v20;
      if (v28)
      {
        v29 = *(v26 + 56);
        v30 = v70;
        v31 = v75;
        (*(v70 + 16))(v75, v29 + *(v70 + 72) * v27, v20);
        (*(v30 + 56))(v31, 0, 1, v20);
      }

      else
      {
        v31 = v75;
        (*v74)(v75, 1, 1, v20);
      }
    }

    else
    {
      v31 = v75;
      v7 = v20;
      (*v74)(v75, 1, 1, v20);
    }

    v16 &= v16 - 1;
    if ((*v73)(v31, 1, v7))
    {
      sub_20B520158(v31, &qword_27C771090);
      swift_endAccess();
    }

    else
    {
      v32 = v31;
      v33 = v62;
      (*v72)(v62, v32, v7);
      sub_20B520158(v32, &qword_27C771090);
      swift_endAccess();
      v34 = sub_20C1365E4();
      v36 = v35;

      (*v61)(v33, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_20BC05BA4(0, *(v71 + 2) + 1, 1, v71);
      }

      v38 = *(v71 + 2);
      v37 = *(v71 + 3);
      if (v38 >= v37 >> 1)
      {
        v71 = sub_20BC05BA4((v37 > 1), v38 + 1, 1, v71);
      }

      v39 = v71;
      *(v71 + 2) = v38 + 1;
      v40 = &v39[16 * v38];
      *(v40 + 4) = v34;
      *(v40 + 5) = v36;
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v18 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v19;
    if (v16)
    {
      v20 = v7;
      goto LABEL_10;
    }
  }

  v80 = v71;

  v41 = v63;
  sub_20B86972C(&v80);
  v17 = v41;
  if (v41)
  {
LABEL_28:

    __break(1u);
    return result;
  }

  if (*(v80 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218);
    sub_20B6D6ABC(&qword_27C766B60, &qword_27C765218);
    v42 = sub_20C13C824();
    v44 = v43;
  }

  else
  {

    __swift_project_boxed_opaque_existential_1((*(v81 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanStringBuilder) + 48), *(*(v81 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanStringBuilder) + 72));
    v42 = sub_20B5E107C();
    v44 = v45;
  }

  v46 = v65;
  sub_20BAB5A08();
  v47 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v48 = sub_20C13C914();

  v49 = [v47 initWithString_];

  v50 = swift_allocObject();
  *(v50 + 24) = sub_20C137314();
  *(v50 + 32) = v51;
  *(v50 + 40) = v42;
  *(v50 + 48) = v44;
  *(v50 + 56) = v49;
  v52 = v66;
  v53 = v64;
  v54 = v68;
  (*(v66 + 16))(v64, v46, v68);
  v55 = v49;
  v56 = v67;
  sub_20C1372B4();
  v57 = *(sub_20C1372C4() + 16);

  WorkoutPlanArtwork.init(identifier:modalityIdentifiersCount:)(v56, v57, v78);

  result = (*(v52 + 8))(v53, v54);
  v59 = v78[3];
  *(v50 + 96) = v78[2];
  *(v50 + 112) = v59;
  *(v50 + 128) = v79;
  v60 = v78[1];
  *(v50 + 64) = v78[0];
  *(v50 + 80) = v60;
  *(v50 + 136) = 0;
  *(v50 + 16) = 0;
  *v69 = v50 | 0x9000000000000000;
  return result;
}

uint64_t sub_20BCC6E00()
{
  v1[4] = v0;
  v2 = sub_20C133154();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BCC6F28, 0, 0);
}

uint64_t sub_20BCC6F28()
{

  v2 = sub_20BCC51E8(v1);
  v0[12] = v2;

  if (*(v2 + 16))
  {
    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[4];
    sub_20C13B454();
    sub_20C13BB64();
    v7 = *(v5 + 8);
    v0[13] = v7;
    v0[14] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v4);
    v8 = *(v6 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanClient + 24);
    v9 = *(v6 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanClient + 32);
    __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanClient), v8);

    v11 = sub_20B718D5C(v10);
    v0[15] = v11;

    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_20BCC7148;

    return MEMORY[0x2821ADEE0](v11, v8, v9);
  }

  else
  {
    v13 = v0[4];

    *(v13 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_metadata) = MEMORY[0x277D84F90];

    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    v14[1] = sub_20BCC7558;

    return sub_20BCC5990();
  }
}

uint64_t sub_20BCC7148(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_20BCC76A8;
  }

  else
  {

    *(v4 + 144) = a1;
    v5 = sub_20BCC7284;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BCC7284()
{
  v1 = v0[18];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];

  v6 = sub_20BCC9AE8(v1, v4);

  v0[3] = v6;
  sub_20C133014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D538);
  sub_20B6D6ABC(&qword_27C76D540, &qword_27C76D538);
  v7 = sub_20C13D034();
  (*(v3 + 8))(v2, v5);

  *(v4 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_metadata) = v7;

  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_20BCC7408;

  return sub_20BCC5990();
}

uint64_t sub_20BCC7408()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BCC7558()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BCC76A8()
{
  v25 = v0;
  v1 = v0[17];
  v2 = v0[4];

  *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_metadata) = MEMORY[0x277D84F90];

  sub_20C13B454();

  v3 = v1;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v23 = v0[13];
    v7 = v0[12];
    v8 = v0[10];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 134218242;
    v12 = *(v7 + 16);

    *(v10 + 4) = v12;

    *(v10 + 12) = 2082;
    v0[2] = v6;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v14 = sub_20C13C9D4();
    v16 = sub_20B51E694(v14, v15, &v24);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_20B517000, v4, v5, "Failed to fetch template metadata for %ld: %{public}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    v23(v8, v9);
  }

  else
  {
    v17 = v0[17];
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[8];

    v18(v19, v20);
  }

  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_20BCC7408;

  return sub_20BCC5990();
}

uint64_t sub_20BCC792C()
{
  v0[2] = sub_20C13CDA4();
  v0[3] = sub_20C13CD94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20B694014;

  return sub_20BCC6E00();
}

uint64_t sub_20BCC79D8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_subscriptionCache);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_activeWorkoutPlan, &unk_27C76A970);

  return v0;
}

uint64_t sub_20BCC7B7C()
{
  sub_20BCC79D8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanGalleryTemplatesShelf()
{
  result = qword_27C76D528;
  if (!qword_27C76D528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCC7C28()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B61B238();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BCC7D60()
{
  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BCC7E74()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B695AF8;

    return sub_20BCC5990();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BCC7F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BCC7FD4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row + 32);
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

void sub_20BCC809C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A20);
      v7 = *(sub_20C136594() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_20C136594();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_20BCC823C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AF58);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_0(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_20BCC8324(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_20B51C88C(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size_0(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_20BCC8434(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_0(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t *sub_20BCC850C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_20BCC92B0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_20BCC85A8(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v10 = result;
    v4 = sub_20C13DB34();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_32;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 < v7)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = 0;
    if (!v3)
    {
LABEL_8:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = sub_20C13DB34();
LABEL_13:
  if (result < v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3)
  {
    result = sub_20C13DB34();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
    goto LABEL_35;
  }

  if (v4 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) == 0 || v7 == v4)
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v7 < v4)
  {
    sub_20B51C88C(0, &qword_27C762910);

    v8 = v7;
    do
    {
      v9 = v8 + 1;
      sub_20C13DCB4();
      v8 = v9;
    }

    while (v4 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_20C13DE54();
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_20BCC8768(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C133154();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v8 = v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_row;
  sub_20B5D8060(v25);
  v9 = v25[9];
  *(v8 + 128) = v25[8];
  *(v8 + 144) = v9;
  *(v8 + 160) = v26;
  v10 = v25[5];
  *(v8 + 64) = v25[4];
  *(v8 + 80) = v10;
  v11 = v25[7];
  *(v8 + 96) = v25[6];
  *(v8 + 112) = v11;
  v12 = v25[1];
  *v8 = v25[0];
  *(v8 + 16) = v12;
  v13 = v25[3];
  *(v8 + 32) = v25[2];
  *(v8 + 48) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_activeWorkoutPlan;
  v15 = sub_20C133954();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_templateReferences) = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_metadata) = MEMORY[0x277D84F90];
  v17 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_modalities;
  *(v2 + v17) = sub_20B6B27E8(v16);
  v18 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_dateFormatter;
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v20 = sub_20C13C914();
  [v19 setDateFormat_];

  sub_20C133014();
  v21 = sub_20C133094();
  [v19 setCalendar_];

  (*(v5 + 8))(v7, v4);
  *(v2 + v18) = v19;
  sub_20C133AA4();
  LODWORD(v4) = LOBYTE(v24[0]);
  *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v24, v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_eventHub) = v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v24, v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_mediaTagStringBuilder);
  v22 = 6;
  if (v4 < 3)
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_previousCustomPlansLimit) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v24, v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_subscriptionToken) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v24, v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_workoutPlanStringBuilder) = *&v24[0];
  return v2;
}

uint64_t sub_20BCC8BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BCC8C28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20BCC792C();
}

void sub_20BCC8CDC(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = sub_20C137374();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v19 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_metadata;
    if (*(*(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_metadata) + 16) > a1)
    {
      v50 = v15;
      v51 = v16;
      v53 = v12;
      v54 = v10;
      v52 = v8;
      v55 = v9;
      v20 = sub_20C136664();
      (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
      v21 = v13[5];
      v22 = *MEMORY[0x277D51488];
      v23 = sub_20C134F24();
      (*(*(v23 - 8) + 104))(&v18[v21], v22, v23);
      v24 = v13[6];
      v25 = sub_20C132C14();
      (*(*(v25 - 8) + 56))(&v18[v24], 1, 1, v25);
      v26 = v13[8];
      v27 = *MEMORY[0x277D523B0];
      v28 = sub_20C135ED4();
      v29 = *(v28 - 8);
      (*(v29 + 104))(&v18[v26], v27, v28);
      (*(v29 + 56))(&v18[v26], 0, 1, v28);
      v30 = v13[10];
      v31 = *MEMORY[0x277D51778];
      v32 = sub_20C1352E4();
      (*(*(v32 - 8) + 104))(&v18[v30], v31, v32);
      v33 = v13[11];
      v34 = sub_20C136E94();
      (*(*(v34 - 8) + 56))(&v18[v33], 1, 1, v34);
      v35 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      *&v18[v13[7]] = xmmword_20C177980;
      v36 = &v18[v13[9]];
      *v36 = 0;
      *(v36 + 1) = 0;
      *&v18[v13[12]] = v35;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_20BF9FD3C(v1, v18, Strong);
        swift_unknownObjectRelease();
      }

      v38 = *(v1 + v19);
      if (*(v38 + 16) <= a1)
      {
        __break(1u);
      }

      else
      {
        v40 = v53;
        v39 = v54;
        v41 = v55;
        (*(v54 + 16))(v53, v38 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * a1, v55);
        v42 = swift_unknownObjectWeakLoadStrong();
        if (v42)
        {
          v43 = v42;
          v44 = v51;
          v45 = v52;
          (*(v51 + 56))(v52, 1, 1, v13);
          sub_20B52F9E8(v45, v5, &unk_27C7622D0);
          if ((*(v44 + 48))(v5, 1, v13) == 1)
          {
            sub_20B520158(v5, &unk_27C7622D0);
          }

          else
          {
            v46 = v50;
            sub_20BB91728(v5, v50);
            sub_20BF9FD3C(v1, v46, v43);
            sub_20B68D110(v46);
          }

          v47 = v43 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v48 = *(v47 + 8);
            ObjectType = swift_getObjectType();
            (*(v48 + 56))(v43, v40, ObjectType, v48);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          sub_20B520158(v45, &unk_27C7622D0);
        }

        (*(v39 + 8))(v40, v41);
        sub_20B68D110(v18);
      }
    }
  }
}

uint64_t sub_20BCC92B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  v53 = a1;
  v82 = sub_20C132EE4();
  v70 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E70);
  MEMORY[0x28223BE20](v69);
  v77 = &v51 - v7;
  v75 = sub_20C133954();
  v8 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v51 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = sub_20C137374();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v79 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a3;
  v21 = *(a3 + 56);
  v59 = a3 + 56;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v81 = v23 & v21;
  v76 = a4;
  v74 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_activeWorkoutPlan;
  result = swift_beginAccess();
  v54 = 0;
  v25 = 0;
  v58 = (v22 + 63) >> 6;
  v73 = (v70 + 7);
  v66 = (v8 + 48);
  v67 = v19 + 16;
  v56 = (v8 + 16);
  v55 = (v8 + 8);
  v65 = (v70 + 6);
  v60 = (v70 + 4);
  v63 = (v70 + 1);
  v68 = v19;
  v70 = (v19 + 8);
  v71 = v18;
  v62 = v12;
  v80 = v17;
  while (v81)
  {
    v26 = __clz(__rbit64(v81));
    v81 &= v81 - 1;
    v27 = v26 | (v25 << 6);
    v28 = v73;
LABEL_11:
    v31 = *(v72 + 48);
    v32 = *(v68 + 72);
    v64 = v27;
    (*(v68 + 16))(v79, v31 + v32 * v27, v18);
    sub_20C1372B4();
    v33 = *v28;
    v34 = 1;
    (*v28)(v17, 0, 1, v82);
    if (!(*v66)(v76 + v74, 1, v75))
    {
      v35 = v75;
      v36 = v57;
      (*v56)(v57, v76 + v74, v75);
      sub_20C133854();
      (*v55)(v36, v35);
      v34 = 0;
    }

    v37 = v78;
    v38 = v82;
    v33(v78, v34, 1, v82);
    v39 = *(v69 + 48);
    v40 = v77;
    sub_20B52F9E8(v80, v77, &unk_27C770CE0);
    sub_20B52F9E8(v37, v40 + v39, &unk_27C770CE0);
    v41 = *v65;
    if ((*v65)(v40, 1, v38) == 1)
    {
      sub_20B520158(v37, &unk_27C770CE0);
      v17 = v80;
      sub_20B520158(v80, &unk_27C770CE0);
      v42 = v40;
      if (v41(v40 + v39, 1, v82) == 1)
      {
        sub_20B520158(v40, &unk_27C770CE0);
        v18 = v71;
        result = (*v70)(v79, v71);
      }

      else
      {
LABEL_20:
        sub_20B520158(v42, &qword_27C763E70);
        v18 = v71;
        result = (*v70)(v79, v71);
LABEL_21:
        *(v53 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
        if (__OFADD__(v54++, 1))
        {
          __break(1u);
LABEL_24:
          v50 = v72;

          return sub_20BC1029C(v53, v52, v54, v50);
        }
      }
    }

    else
    {
      v43 = v62;
      sub_20B52F9E8(v40, v62, &unk_27C770CE0);
      v42 = v40;
      if (v41(v40 + v39, 1, v82) == 1)
      {
        sub_20B520158(v78, &unk_27C770CE0);
        v17 = v80;
        sub_20B520158(v80, &unk_27C770CE0);
        (*v63)(v43, v82);
        goto LABEL_20;
      }

      v44 = v40 + v39;
      v45 = v82;
      v46 = v61;
      (*v60)(v61, v44, v82);
      sub_20BCCA4A0();
      v47 = sub_20C13C894();
      v48 = *v63;
      (*v63)(v46, v45);
      sub_20B520158(v78, &unk_27C770CE0);
      v17 = v80;
      sub_20B520158(v80, &unk_27C770CE0);
      v48(v43, v45);
      sub_20B520158(v77, &unk_27C770CE0);
      v18 = v71;
      result = (*v70)(v79, v71);
      if ((v47 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  v29 = v25;
  v28 = v73;
  while (1)
  {
    v25 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v25 >= v58)
    {
      goto LABEL_24;
    }

    v30 = *(v59 + 8 * v25);
    ++v29;
    if (v30)
    {
      v81 = (v30 - 1) & v30;
      v27 = __clz(__rbit64(v30)) | (v25 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BCC9AE8(char *a1, unint64_t a2)
{
  v3 = v2;
  v91 = *MEMORY[0x277D85DE8];
  v90 = sub_20C132EE4();
  v6 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v68 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E70);
  MEMORY[0x28223BE20](v81);
  v89 = v58 - v8;
  v84 = sub_20C133954();
  v9 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v64 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v85 = v58 - v15;
  MEMORY[0x28223BE20](v16);
  v72 = v58 - v17;
  v18 = sub_20C137374();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v88 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v20) = a1[32];
  v21 = v20 & 0x3F;
  v59 = ((1 << v20) + 63) >> 6;
  v22 = 8 * v59;

  if (v21 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v70 = v13;
    v58[2] = v3;
    v58[1] = v58;
    MEMORY[0x28223BE20](v23);
    v60 = v58 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v60, v22);
    v82 = a1;
    v24 = *(a1 + 7);
    v66 = a1 + 56;
    v25 = a2;
    v26 = 1 << a1[32];
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    a2 = v27 & v24;
    v86 = v25;
    v83 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryTemplatesShelf_activeWorkoutPlan;
    swift_beginAccess();
    v61 = 0;
    v3 = 0;
    v65 = (v26 + 63) >> 6;
    v77 = (v6 + 56);
    v78 = v19 + 16;
    v76 = (v9 + 48);
    v63 = (v9 + 16);
    v62 = (v9 + 8);
    v75 = (v6 + 48);
    v67 = (v6 + 32);
    v69 = (v6 + 8);
    v74 = (v19 + 8);
    a1 = &unk_27C770CE0;
    v6 = v85;
    v22 = v72;
    v79 = v19;
    v80 = v18;
    while (a2)
    {
      v28 = __clz(__rbit64(a2));
      v87 = (a2 - 1) & a2;
LABEL_12:
      v31 = v28 | (v3 << 6);
      v32 = *(v82 + 6);
      v33 = *(v19 + 72);
      v73 = v31;
      (*(v19 + 16))(v88, v32 + v33 * v31, v18);
      sub_20C1372B4();
      v34 = v22;
      v35 = *v77;
      v36 = 1;
      (*v77)(v34, 0, 1, v90);
      if (!(*v76)(v86 + v83, 1, v84))
      {
        v37 = v84;
        v38 = v64;
        (*v63)(v64, v86 + v83, v84);
        sub_20C133854();
        v39 = v37;
        v6 = v85;
        (*v62)(v38, v39);
        v36 = 0;
      }

      v9 = v90;
      v35(v6, v36, 1, v90);
      v40 = *(v81 + 48);
      v41 = v89;
      v13 = &unk_20C155510;
      sub_20B52F9E8(v34, v89, &unk_27C770CE0);
      sub_20B52F9E8(v6, v41 + v40, &unk_27C770CE0);
      v42 = *v75;
      if ((*v75)(v41, 1, v9) == 1)
      {
        sub_20B520158(v6, &unk_27C770CE0);
        sub_20B520158(v34, &unk_27C770CE0);
        v43 = v42(v89 + v40, 1, v90);
        v22 = v34;
        if (v43 == 1)
        {
          sub_20B520158(v89, &unk_27C770CE0);
          v18 = v80;
          (*v74)(v88, v80);
          v19 = v79;
          a2 = v87;
        }

        else
        {
LABEL_21:
          sub_20B520158(v89, &qword_27C763E70);
          v18 = v80;
          (*v74)(v88, v80);
          v19 = v79;
          a2 = v87;
LABEL_22:
          *&v60[(v73 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v73;
          if (__OFADD__(v61++, 1))
          {
            __break(1u);
LABEL_25:
            v55 = sub_20BC1029C(v60, v59, v61, v82);

            return v55;
          }
        }
      }

      else
      {
        v44 = v89;
        v45 = v70;
        sub_20B52F9E8(v89, v70, &unk_27C770CE0);
        if (v42(v44 + v40, 1, v90) == 1)
        {
          v52 = v85;
          sub_20B520158(v85, &unk_27C770CE0);
          v22 = v72;
          sub_20B520158(v72, &unk_27C770CE0);
          v53 = v45;
          v6 = v52;
          (*v69)(v53, v90);
          goto LABEL_21;
        }

        v46 = v89;
        v9 = v90;
        v47 = v68;
        (*v67)(v68, v89 + v40, v90);
        sub_20BCCA4A0();
        v71 = sub_20C13C894();
        v48 = *v69;
        (*v69)(v47, v9);
        v49 = v85;
        sub_20B520158(v85, &unk_27C770CE0);
        v50 = v72;
        sub_20B520158(v72, &unk_27C770CE0);
        v51 = v45;
        v6 = v49;
        v48(v51, v9);
        v13 = v74;
        v22 = v50;
        sub_20B520158(v46, &unk_27C770CE0);
        v18 = v80;
        (*v13)(v88, v80);
        v19 = v79;
        a2 = v87;
        if ((v71 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v29 = v3;
    while (1)
    {
      v3 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v3 >= v65)
      {
        goto LABEL_25;
      }

      v30 = *&v66[8 * v3];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v87 = (v30 - 1) & v30;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();

  v55 = sub_20BCC850C(v57, v59, a1, a2);

  MEMORY[0x20F2F6A40](v57, -1, -1);

  return v55;
}

unint64_t sub_20BCCA4A0()
{
  result = qword_27C7641A0;
  if (!qword_27C7641A0)
  {
    sub_20C132EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7641A0);
  }

  return result;
}

uint64_t sub_20BCCA4F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20BCC7E54(v0);
}

uint64_t sub_20BCCA588(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = sub_20C13C554();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  sub_20C13CDA4();
  v2[49] = sub_20C13CD94();
  v5 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BCCA67C, v5, v4);
}

uint64_t sub_20BCCA67C()
{
  v1 = *(v0 + 352);
  v47 = *(v0 + 360);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C14F980;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768180);
  v4 = swift_allocBox();
  v6 = v5;
  v7 = v3[12];
  v8 = v3[16];
  v9 = v3[20];
  v10 = sub_20C135814();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, v1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_20C1357F4();
  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_20C13C914();

  v14 = [v12 initWithString_];

  *(v6 + v7) = v14;
  *(v6 + v8) = 0;
  v15 = MEMORY[0x277D84F90];
  *(v6 + v9) = MEMORY[0x277D84F90];
  *(v0 + 232) = 0u;
  *(v0 + 184) = 0;
  *(v2 + 32) = v4 | 0x9000000000000001;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 128;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0;
  *(v0 + 288) = v2;
  *(v0 + 296) = v15;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0;
  *(v0 + 344) = 2;
  nullsub_1(v0 + 184);
  v16 = v47 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row;
  v18 = *(v47 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 16);
  v17 = *(v47 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 32);
  *(v0 + 16) = *(v47 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row);
  *(v0 + 32) = v18;
  *(v0 + 48) = v17;
  v19 = *(v16 + 80);
  v20 = *(v16 + 96);
  v21 = *(v16 + 64);
  *(v0 + 64) = *(v16 + 48);
  *(v0 + 112) = v20;
  *(v0 + 96) = v19;
  *(v0 + 80) = v21;
  v23 = *(v16 + 128);
  v22 = *(v16 + 144);
  v24 = *(v16 + 160);
  *(v0 + 128) = *(v16 + 112);
  *(v0 + 176) = v24;
  *(v0 + 160) = v22;
  *(v0 + 144) = v23;
  v25 = *(v0 + 184);
  v26 = *(v0 + 216);
  *(v16 + 16) = *(v0 + 200);
  *(v16 + 32) = v26;
  *v16 = v25;
  v27 = *(v0 + 232);
  v28 = *(v0 + 248);
  v29 = *(v0 + 280);
  *(v16 + 80) = *(v0 + 264);
  *(v16 + 96) = v29;
  *(v16 + 48) = v27;
  *(v16 + 64) = v28;
  v30 = *(v0 + 296);
  v31 = *(v0 + 312);
  v32 = *(v0 + 328);
  *(v16 + 160) = *(v0 + 344);
  *(v16 + 128) = v31;
  *(v16 + 144) = v32;
  *(v16 + 112) = v30;
  sub_20B634408(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v35 = sub_20B61DE50(*(v0 + 360), Strong);
      if (v36)
      {
        v38 = v35;
        v39 = v36;
        v40 = v37;
        v42 = *(v0 + 376);
        v41 = *(v0 + 384);
        v43 = *(v0 + 368);
        sub_20B5E2E18();
        *v41 = sub_20C13D374();
        (*(v42 + 104))(v41, *MEMORY[0x277D85200], v43);
        v44 = sub_20C13C584();
        result = (*(v42 + 8))(v41, v43);
        if ((v44 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B621640(v38, v39, v40, *(v0 + 360), 1, v34);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_20BCCAA30()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanTemplateDetailHeaderShelf()
{
  result = qword_27C76D548;
  if (!qword_27C76D548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BCCAB68()
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

uint64_t sub_20BCCAC0C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BCCAC84@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row + 32);
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

uint64_t sub_20BCCAD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v49 = a1;
  v8 = type metadata accessor for PageAlertAction();
  v9 = (v8 - 8);
  v48 = *(v8 - 8);
  v10 = v48;
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = *(v5 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
  v17 = sub_20B5E107C();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;

  sub_20C132ED4();
  v21 = &v15[v9[8]];
  *v21 = v17;
  v21[1] = v19;
  v15[v9[7]] = 1;
  v22 = &v15[v9[9]];
  *v22 = sub_20BCD79E4;
  v22[1] = v20;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  v25 = sub_20C132964();
  v27 = v26;

  v28 = swift_allocObject();
  v29 = v46;
  v30 = v47;
  *(v28 + 16) = v46;
  *(v28 + 24) = v30;
  sub_20B584050(v29);
  sub_20C132ED4();
  v31 = &v12[v9[8]];
  *v31 = v25;
  v31[1] = v27;
  v12[v9[7]] = 2;
  v32 = &v12[v9[9]];
  *v32 = sub_20BCD79EC;
  v32[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v33 = *(v10 + 72);
  v34 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C14F320;
  v36 = v35 + v34;
  sub_20BCD79F4(v15, v36, type metadata accessor for PageAlertAction);
  sub_20BCD79F4(v12, v36 + v33, type metadata accessor for PageAlertAction);
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
  v37 = sub_20B5E107C();
  v39 = v38;
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
  v40 = sub_20B5E107C();
  v42 = v41;
  sub_20BCD7A5C(v12, type metadata accessor for PageAlertAction);
  sub_20BCD7A5C(v15, type metadata accessor for PageAlertAction);
  type metadata accessor for DefaultPageAlertPresenter();
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  swift_unknownObjectWeakInit();
  v44 = MEMORY[0x277D84F90];
  *(v43 + 32) = v35;
  *(v43 + 40) = v44;
  *(v43 + 48) = v37;
  *(v43 + 56) = v39;
  *(v43 + 64) = v40;
  *(v43 + 72) = v42;
  *(v43 + 80) = 1;
  *(v43 + 88) = v49;
  swift_unknownObjectRetain();
  return v43;
}

uint64_t sub_20BCCB168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a2;
  v63 = a4;
  v56 = a3;
  v64 = a1;
  v6 = type metadata accessor for PageAlertAction();
  v7 = (v6 - 8);
  *&v61 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = *(v4 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
  v17 = sub_20B5E107C();
  v59 = v18;
  v60 = v17;
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
  v19 = sub_20B5E107C();
  v57 = v20;
  v58 = v19;
  v21 = (v4 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v22 = sub_20C138D34();
  v24 = v23;
  sub_20C132ED4();
  v25 = &v15[v7[8]];
  *v25 = v22;
  v25[1] = v24;
  v15[v7[7]] = 0;
  v26 = v15;
  v27 = &v15[v7[9]];
  *v27 = 0;
  *(v27 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v28 = sub_20C138D34();
  v30 = v29;

  sub_20C132ED4();
  v31 = v62;
  v32 = &v12[v7[8]];
  *v32 = v28;
  v32[1] = v30;
  v12[v7[7]] = 0;
  v33 = &v12[v7[9]];
  *v33 = sub_20BCD7E08;
  v33[1] = v5;
  v54 = v5;
  if (v31)
  {
    v34 = v64;
  }

  else
  {
    v34 = sub_20BD3F820();
    v31 = v35;
  }

  v55 = v26;
  v52 = type metadata accessor for PageAlertAction;
  sub_20BCD79F4(v26, v9, type metadata accessor for PageAlertAction);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v36 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v37 = swift_allocObject();
  v61 = xmmword_20C14F980;
  *(v37 + 16) = xmmword_20C14F980;
  sub_20BCD79F4(v12, v37 + v36, type metadata accessor for PageAlertAction);
  v38 = swift_allocObject();
  v39 = v63;
  v38[2] = v56;
  v38[3] = v39;
  v64 = v34;
  v38[4] = v34;
  v38[5] = v31;
  v38[6] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772010);
  v40 = swift_allocObject();
  v56 = v12;
  v41 = v40;
  *(v40 + 16) = xmmword_20C1517D0;
  *(v40 + 56) = &type metadata for TrimLeadingWhitespaceFilter;
  *(v40 + 64) = &off_2822B8960;
  *(v40 + 96) = &type metadata for MaxLengthFilter;
  *(v40 + 104) = &off_2822B8BF0;
  *(v40 + 72) = 40;
  *(v40 + 136) = &type metadata for MaxBytesFilter;
  *(v40 + 144) = &off_2822E2930;
  *(v40 + 112) = 99;
  type metadata accessor for SanitizingTextFieldPresenter();
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v42 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_trimLeadingWhitespaceFilter) = 1;
  v43 = swift_allocObject();
  *(v43 + 16) = v61;
  v44 = v43 + v36;
  v45 = v52;
  sub_20BCD79F4(v9, v44, v52);
  v65[0] = v37;

  sub_20B8D9944(v43);
  v46 = v65[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D5C8);
  v47 = swift_allocObject();
  *(v47 + 16) = v61;
  *(v47 + 32) = v64;
  *(v47 + 40) = v31;
  v48 = v59;
  *(v47 + 48) = v60;
  *(v47 + 56) = v48;
  *(v42 + 32) = v46;
  *(v42 + 40) = v47;
  v49 = v57;
  *(v42 + 48) = v58;
  *(v42 + 56) = v49;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 80) = 1;
  *(v42 + 104) = sub_20BCD7E58;
  *(v42 + 112) = v38;
  sub_20BCD79F4(v9, v42 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_primaryAction, v45);
  *(v42 + 88) = 0;
  *(v42 + 96) = v41;
  sub_20B51CC64(v41 + 32, v65);
  sub_20BCD7A5C(v9, type metadata accessor for PageAlertAction);
  sub_20BCD7A5C(v56, type metadata accessor for PageAlertAction);
  sub_20BCD7A5C(v55, type metadata accessor for PageAlertAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D5D0);
  *(v42 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_trimLeadingWhitespaceFilter) = swift_dynamicCast() ^ 1;
  return v42;
}

uint64_t sub_20BCCB720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a2;
  v63 = a4;
  v56 = a3;
  v64 = a1;
  v6 = type metadata accessor for PageAlertAction();
  v7 = (v6 - 8);
  *&v61 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = *(v4 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
  v17 = sub_20B5E107C();
  v59 = v18;
  v60 = v17;
  __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
  v19 = sub_20B5E107C();
  v57 = v20;
  v58 = v19;
  v21 = (v4 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v22 = sub_20C138D34();
  v24 = v23;
  sub_20C132ED4();
  v25 = &v15[v7[8]];
  *v25 = v22;
  v25[1] = v24;
  v15[v7[7]] = 0;
  v26 = v15;
  v27 = &v15[v7[9]];
  *v27 = 0;
  *(v27 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v28 = sub_20C138D34();
  v30 = v29;

  sub_20C132ED4();
  v31 = v62;
  v32 = &v12[v7[8]];
  *v32 = v28;
  v32[1] = v30;
  v12[v7[7]] = 0;
  v33 = &v12[v7[9]];
  *v33 = sub_20BCD77A0;
  v33[1] = v5;
  v54 = v5;
  if (v31)
  {
    v34 = v64;
  }

  else
  {
    v34 = sub_20BD3F834();
    v31 = v35;
  }

  v55 = v26;
  v52 = type metadata accessor for PageAlertAction;
  sub_20BCD79F4(v26, v9, type metadata accessor for PageAlertAction);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v36 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v37 = swift_allocObject();
  v61 = xmmword_20C14F980;
  *(v37 + 16) = xmmword_20C14F980;
  sub_20BCD79F4(v12, v37 + v36, type metadata accessor for PageAlertAction);
  v38 = swift_allocObject();
  v39 = v63;
  v38[2] = v56;
  v38[3] = v39;
  v64 = v34;
  v38[4] = v34;
  v38[5] = v31;
  v38[6] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772010);
  v40 = swift_allocObject();
  v56 = v12;
  v41 = v40;
  *(v40 + 16) = xmmword_20C1517D0;
  *(v40 + 56) = &type metadata for TrimLeadingWhitespaceFilter;
  *(v40 + 64) = &off_2822B8960;
  *(v40 + 96) = &type metadata for MaxLengthFilter;
  *(v40 + 104) = &off_2822B8BF0;
  *(v40 + 72) = 40;
  *(v40 + 136) = &type metadata for MaxBytesFilter;
  *(v40 + 144) = &off_2822E2930;
  *(v40 + 112) = 99;
  type metadata accessor for SanitizingTextFieldPresenter();
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v42 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_trimLeadingWhitespaceFilter) = 1;
  v43 = swift_allocObject();
  *(v43 + 16) = v61;
  v44 = v43 + v36;
  v45 = v52;
  sub_20BCD79F4(v9, v44, v52);
  v65[0] = v37;

  sub_20B8D9944(v43);
  v46 = v65[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D5C8);
  v47 = swift_allocObject();
  *(v47 + 16) = v61;
  *(v47 + 32) = v64;
  *(v47 + 40) = v31;
  v48 = v59;
  *(v47 + 48) = v60;
  *(v47 + 56) = v48;
  *(v42 + 32) = v46;
  *(v42 + 40) = v47;
  v49 = v57;
  *(v42 + 48) = v58;
  *(v42 + 56) = v49;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 80) = 1;
  *(v42 + 104) = sub_20BCD77A8;
  *(v42 + 112) = v38;
  sub_20BCD79F4(v9, v42 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_primaryAction, v45);
  *(v42 + 88) = 0;
  *(v42 + 96) = v41;
  sub_20B51CC64(v41 + 32, v65);
  sub_20BCD7A5C(v9, type metadata accessor for PageAlertAction);
  sub_20BCD7A5C(v56, type metadata accessor for PageAlertAction);
  sub_20BCD7A5C(v55, type metadata accessor for PageAlertAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D5D0);
  *(v42 + OBJC_IVAR____TtC9SeymourUI28SanitizingTextFieldPresenter_trimLeadingWhitespaceFilter) = swift_dynamicCast() ^ 1;
  return v42;
}

uint64_t sub_20BCCBCD0(uint64_t a1, void *a2)
{
  v2 = *a2;
  v33 = a2;
  v37 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v31 - v7;
  v8 = sub_20C1352E4();
  v9 = *(v8 - 8);
  v31 = v8;
  v32 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v35 = sub_20C134F24();
  v18 = *(v35 - 8);
  v19 = MEMORY[0x28223BE20](v35);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  (*(v18 + 104))(v21, *MEMORY[0x277D51468], v19);
  v22 = *MEMORY[0x277D52B40];
  v23 = sub_20C136664();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v17, v22, v23);
  (*(v24 + 56))(v17, 0, 1, v23);
  v25 = sub_20C132C14();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  (*(v9 + 104))(v11, *MEMORY[0x277D51768], v8);
  v26 = sub_20C135ED4();
  v27 = v34;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  v28 = sub_20C136E94();
  v29 = v36;
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  sub_20C0551E8(MEMORY[0x277D84F90]);
  sub_20BCD8004(&qword_27C76D5E8, type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider);
  sub_20C138DB4();

  sub_20B520158(v29, &unk_27C76BC90);
  sub_20B520158(v27, &unk_27C7621D0);
  (*(v32 + 8))(v11, v31);
  sub_20B520158(v14, &unk_27C7617F0);
  sub_20B520158(v17, &unk_27C7622E0);
  return (*(v18 + 8))(v21, v35);
}

uint64_t sub_20BCCC260(uint64_t a1, void *a2)
{
  v39 = *a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v33 - v4;
  v5 = sub_20C1333A4();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v33 - v8;
  v42 = sub_20C1352E4();
  v35 = *(v42 - 8);
  v9 = v35;
  MEMORY[0x28223BE20](v42);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  v34 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v37 = sub_20C134F24();
  v18 = *(v37 - 8);
  v19 = MEMORY[0x28223BE20](v37);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  (*(v18 + 104))(v21, *MEMORY[0x277D51468], v19);
  v22 = *MEMORY[0x277D52B40];
  v23 = sub_20C136664();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v17, v22, v23);
  (*(v24 + 56))(v17, 0, 1, v23);
  v25 = sub_20C132C14();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  (*(v9 + 104))(v11, *MEMORY[0x277D51768], v42);
  v26 = sub_20C135ED4();
  v27 = v36;
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  sub_20BCD19C0(v43);
  v28 = sub_20C136E94();
  v29 = v38;
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  sub_20C0551E8(MEMORY[0x277D84F90]);
  sub_20BCD8004(&qword_27C76D5D8, type metadata accessor for WorkoutPlanSchedulePageDataProviderX);
  v30 = v34;
  v31 = v43;
  sub_20C138DB4();

  sub_20B520158(v29, &unk_27C76BC90);
  (*(v40 + 8))(v31, v41);
  sub_20B520158(v27, &unk_27C7621D0);
  (*(v35 + 8))(v11, v42);
  sub_20B520158(v30, &unk_27C7617F0);
  sub_20B520158(v17, &unk_27C7622E0);
  return (*(v18 + 8))(v21, v37);
}

uint64_t sub_20BCCC884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v16;
  v8[25] = v17;
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v8[26] = *v17;
  v9 = sub_20C132EE4();
  v8[27] = v9;
  v8[28] = *(v9 - 8);
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  v8[30] = swift_task_alloc();
  v10 = sub_20C1333A4();
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  v8[34] = swift_task_alloc();
  v11 = sub_20C1352E4();
  v8[35] = v11;
  v8[36] = *(v11 - 8);
  v8[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v8[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v8[39] = swift_task_alloc();
  v12 = sub_20C134F24();
  v8[40] = v12;
  v8[41] = *(v12 - 8);
  v8[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v13 = sub_20C1325D4();
  v8[45] = v13;
  v8[46] = *(v13 - 8);
  v8[47] = swift_task_alloc();
  v8[18] = v17;

  return MEMORY[0x2822009F8](sub_20BCCCC18, 0, 0);
}

uint64_t sub_20BCCCC18()
{
  v0[12] = v0[19];
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v0[13] = v0[20];
  sub_20C1325B4();
  v0[48] = sub_20B5F6EB0();
  v4 = sub_20C13D9F4();
  v6 = v5;
  v7 = *(v2 + 8);
  v0[49] = v7;
  v0[50] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = (v0[25] + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient);
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = swift_task_alloc();
    v0[52] = v12;
    *v12 = v0;
    v12[1] = sub_20BCCD038;
    v13 = v0[44];

    return MEMORY[0x2821ADE88](v13, v10, v11);
  }

  else
  {
    v18 = (v0[21] + *v0[21]);
    v14 = swift_task_alloc();
    v0[51] = v14;
    *v14 = v0;
    v14[1] = sub_20BCCCE50;
    v16 = v0[23];
    v15 = v0[24];

    return v18(v16, v15);
  }
}

uint64_t sub_20BCCCE50()
{

  return MEMORY[0x2822009F8](sub_20BCCCF4C, 0, 0);
}

uint64_t sub_20BCCCF4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BCCD038()
{

  if (v0)
  {

    v1 = sub_20BCCD7F0;
  }

  else
  {
    v1 = sub_20BCCD150;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20BCCD150()
{
  v1 = v0[44];
  v56 = v1;
  v58 = v0[43];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[36];
  v41 = v0[38];
  v43 = v0[35];
  v45 = v0[37];
  v47 = v0[34];
  v7 = v0[32];
  v51 = v0[31];
  v53 = v0[33];
  v54 = v0[30];
  v49 = v0[25];
  v8 = sub_20C133954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v1, 0, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D513B8], v4);
  v10 = *MEMORY[0x277D52B40];
  v11 = sub_20C136664();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v13 = sub_20C132C14();
  (*(*(v13 - 8) + 56))(v41, 1, 1, v13);
  (*(v6 + 104))(v45, *MEMORY[0x277D51768], v43);
  v14 = sub_20C135ED4();
  (*(*(v14 - 8) + 56))(v47, 1, 1, v14);
  (*(v7 + 16))(v53, v49 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage, v51);
  v15 = sub_20C136E94();
  (*(*(v15 - 8) + 56))(v54, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  sub_20B52F9E8(v56, v58, &unk_27C76A970);
  v17 = (*(v9 + 48))(v58, 1, v8);
  v18 = v0[43];
  if (v17 == 1)
  {
    sub_20B520158(v0[43], &unk_27C76A970);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    sub_20C133804();
    (*(v9 + 8))(v18, v8);
    v19 = sub_20C132EA4();
    v20 = v24;
    (*(v22 + 8))(v21, v23);
  }

  v57 = v0[49];
  v50 = v0[47];
  v55 = v0[45];
  v36 = v0[42];
  v46 = v0[41];
  v48 = v0[40];
  v34 = v0[38];
  v35 = v0[39];
  v33 = v0[37];
  v39 = v0[36];
  v40 = v0[35];
  v25 = v0[33];
  v26 = v0[34];
  v37 = v0[32];
  v38 = v0[31];
  v27 = v0[30];
  v52 = v0[21];
  v42 = v0[19];
  v44 = v0[20];
  v0[14] = v19;
  v0[15] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20B82898C();
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  sub_20BCD8004(&qword_27C76D5E8, type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider);
  sub_20C138DB4();

  sub_20B520158(v27, &unk_27C76BC90);
  (*(v37 + 8))(v25, v38);
  sub_20B520158(v26, &unk_27C7621D0);
  (*(v39 + 8))(v33, v40);
  sub_20B520158(v34, &unk_27C7617F0);
  sub_20B520158(v35, &unk_27C7622E0);
  (*(v46 + 8))(v36, v48);
  v0[16] = v42;
  v0[17] = v44;
  sub_20C1325B4();
  v28 = sub_20C13D9F4();
  v30 = v29;
  v0[53] = v29;
  v57(v50, v55);
  v59 = (v52 + *v52);
  v31 = swift_task_alloc();
  v0[54] = v31;
  *v31 = v0;
  v31[1] = sub_20BCCDE90;

  return v59(v28, v30);
}

uint64_t sub_20BCCD7F0()
{
  v1 = v0[44];
  v56 = v1;
  v58 = v0[43];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[36];
  v41 = v0[38];
  v43 = v0[35];
  v45 = v0[37];
  v47 = v0[34];
  v7 = v0[32];
  v51 = v0[31];
  v53 = v0[33];
  v54 = v0[30];
  v49 = v0[25];
  v8 = sub_20C133954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v1, 1, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D513B8], v4);
  v10 = *MEMORY[0x277D52B40];
  v11 = sub_20C136664();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v13 = sub_20C132C14();
  (*(*(v13 - 8) + 56))(v41, 1, 1, v13);
  (*(v6 + 104))(v45, *MEMORY[0x277D51768], v43);
  v14 = sub_20C135ED4();
  (*(*(v14 - 8) + 56))(v47, 1, 1, v14);
  (*(v7 + 16))(v53, v49 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage, v51);
  v15 = sub_20C136E94();
  (*(*(v15 - 8) + 56))(v54, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  sub_20B52F9E8(v56, v58, &unk_27C76A970);
  v17 = (*(v9 + 48))(v58, 1, v8);
  v18 = v0[43];
  if (v17 == 1)
  {
    sub_20B520158(v0[43], &unk_27C76A970);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    sub_20C133804();
    (*(v9 + 8))(v18, v8);
    v19 = sub_20C132EA4();
    v20 = v24;
    (*(v22 + 8))(v21, v23);
  }

  v57 = v0[49];
  v50 = v0[47];
  v55 = v0[45];
  v36 = v0[42];
  v46 = v0[41];
  v48 = v0[40];
  v34 = v0[38];
  v35 = v0[39];
  v33 = v0[37];
  v39 = v0[36];
  v40 = v0[35];
  v25 = v0[33];
  v26 = v0[34];
  v37 = v0[32];
  v38 = v0[31];
  v27 = v0[30];
  v52 = v0[21];
  v42 = v0[19];
  v44 = v0[20];
  v0[14] = v19;
  v0[15] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20B82898C();
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  sub_20BCD8004(&qword_27C76D5E8, type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider);
  sub_20C138DB4();

  sub_20B520158(v27, &unk_27C76BC90);
  (*(v37 + 8))(v25, v38);
  sub_20B520158(v26, &unk_27C7621D0);
  (*(v39 + 8))(v33, v40);
  sub_20B520158(v34, &unk_27C7617F0);
  sub_20B520158(v35, &unk_27C7622E0);
  (*(v46 + 8))(v36, v48);
  v0[16] = v42;
  v0[17] = v44;
  sub_20C1325B4();
  v28 = sub_20C13D9F4();
  v30 = v29;
  v0[53] = v29;
  v57(v50, v55);
  v59 = (v52 + *v52);
  v31 = swift_task_alloc();
  v0[54] = v31;
  *v31 = v0;
  v31[1] = sub_20BCCDE90;

  return v59(v28, v30);
}

uint64_t sub_20BCCDE90()
{

  return MEMORY[0x2822009F8](sub_20BCCDFA8, 0, 0);
}

uint64_t sub_20BCCDFA8()
{
  sub_20B520158(*(v0 + 352), &unk_27C76A970);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BCCE0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v16;
  v8[25] = v17;
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v8[26] = *v17;
  v9 = sub_20C132EE4();
  v8[27] = v9;
  v8[28] = *(v9 - 8);
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  v8[30] = swift_task_alloc();
  v10 = sub_20C1333A4();
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  v8[34] = swift_task_alloc();
  v11 = sub_20C1352E4();
  v8[35] = v11;
  v8[36] = *(v11 - 8);
  v8[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v8[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v8[39] = swift_task_alloc();
  v12 = sub_20C134F24();
  v8[40] = v12;
  v8[41] = *(v12 - 8);
  v8[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v13 = sub_20C1325D4();
  v8[45] = v13;
  v8[46] = *(v13 - 8);
  v8[47] = swift_task_alloc();
  v8[18] = v17;

  return MEMORY[0x2822009F8](sub_20BCCE440, 0, 0);
}

uint64_t sub_20BCCE440()
{
  v0[12] = v0[19];
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v0[13] = v0[20];
  sub_20C1325B4();
  v0[48] = sub_20B5F6EB0();
  v4 = sub_20C13D9F4();
  v6 = v5;
  v7 = *(v2 + 8);
  v0[49] = v7;
  v0[50] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = (v0[25] + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanClient);
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = swift_task_alloc();
    v0[52] = v12;
    *v12 = v0;
    v12[1] = sub_20BCCE770;
    v13 = v0[44];

    return MEMORY[0x2821ADE88](v13, v10, v11);
  }

  else
  {
    v18 = (v0[21] + *v0[21]);
    v14 = swift_task_alloc();
    v0[51] = v14;
    *v14 = v0;
    v14[1] = sub_20BCCE674;
    v16 = v0[23];
    v15 = v0[24];

    return v18(v16, v15);
  }
}

uint64_t sub_20BCCE674()
{

  return MEMORY[0x2822009F8](sub_20BCD8050, 0, 0);
}

uint64_t sub_20BCCE770()
{

  if (v0)
  {

    v1 = sub_20BCCEF00;
  }

  else
  {
    v1 = sub_20BCCE888;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20BCCE888()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[38];
  v7 = v0[36];
  v44 = v0[35];
  v46 = v0[37];
  v50 = v0[33];
  v52 = v0[30];
  v54 = v0[43];
  v48 = v0[34];
  v8 = sub_20C133954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v1, 0, 1, v8);
  (*(v2 + 104))(v3, *MEMORY[0x277D513B8], v5);
  v10 = *MEMORY[0x277D52B40];
  v11 = sub_20C136664();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  v13 = sub_20C132C14();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  (*(v7 + 104))(v46, *MEMORY[0x277D51768], v44);
  v14 = sub_20C135ED4();
  (*(*(v14 - 8) + 56))(v48, 1, 1, v14);
  sub_20BCD19C0(v50);
  v15 = sub_20C136E94();
  (*(*(v15 - 8) + 56))(v52, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  sub_20B52F9E8(v1, v54, &unk_27C76A970);
  v17 = (*(v9 + 48))(v54, 1, v8);
  v18 = v0[43];
  if (v17 == 1)
  {
    sub_20B520158(v0[43], &unk_27C76A970);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    sub_20C133804();
    (*(v9 + 8))(v18, v8);
    v19 = sub_20C132EA4();
    v20 = v24;
    (*(v22 + 8))(v21, v23);
  }

  v53 = v0[49];
  v47 = v0[47];
  v51 = v0[45];
  v36 = v0[42];
  v43 = v0[41];
  v45 = v0[40];
  v34 = v0[38];
  v35 = v0[39];
  v33 = v0[37];
  v39 = v0[36];
  v40 = v0[35];
  v25 = v0[33];
  v26 = v0[34];
  v37 = v0[32];
  v38 = v0[31];
  v27 = v0[30];
  v49 = v0[21];
  v41 = v0[19];
  v42 = v0[20];
  v0[14] = v19;
  v0[15] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20B82898C();
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  sub_20BCD8004(&qword_27C76D5D8, type metadata accessor for WorkoutPlanSchedulePageDataProviderX);
  sub_20C138DB4();

  sub_20B520158(v27, &unk_27C76BC90);
  (*(v37 + 8))(v25, v38);
  sub_20B520158(v26, &unk_27C7621D0);
  (*(v39 + 8))(v33, v40);
  sub_20B520158(v34, &unk_27C7617F0);
  sub_20B520158(v35, &unk_27C7622E0);
  (*(v43 + 8))(v36, v45);
  v0[16] = v41;
  v0[17] = v42;
  sub_20C1325B4();
  v28 = sub_20C13D9F4();
  v30 = v29;
  v0[53] = v29;
  v53(v47, v51);
  v55 = (v49 + *v49);
  v31 = swift_task_alloc();
  v0[54] = v31;
  *v31 = v0;
  v31[1] = sub_20BCCF578;

  return v55(v28, v30);
}

uint64_t sub_20BCCEF00()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[38];
  v7 = v0[36];
  v44 = v0[35];
  v46 = v0[37];
  v50 = v0[33];
  v52 = v0[30];
  v54 = v0[43];
  v48 = v0[34];
  v8 = sub_20C133954();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v1, 1, 1, v8);
  (*(v2 + 104))(v3, *MEMORY[0x277D513B8], v5);
  v10 = *MEMORY[0x277D52B40];
  v11 = sub_20C136664();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  v13 = sub_20C132C14();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  (*(v7 + 104))(v46, *MEMORY[0x277D51768], v44);
  v14 = sub_20C135ED4();
  (*(*(v14 - 8) + 56))(v48, 1, 1, v14);
  sub_20BCD19C0(v50);
  v15 = sub_20C136E94();
  (*(*(v15 - 8) + 56))(v52, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  sub_20B52F9E8(v1, v54, &unk_27C76A970);
  v17 = (*(v9 + 48))(v54, 1, v8);
  v18 = v0[43];
  if (v17 == 1)
  {
    sub_20B520158(v0[43], &unk_27C76A970);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    sub_20C133804();
    (*(v9 + 8))(v18, v8);
    v19 = sub_20C132EA4();
    v20 = v24;
    (*(v22 + 8))(v21, v23);
  }

  v53 = v0[49];
  v47 = v0[47];
  v51 = v0[45];
  v36 = v0[42];
  v43 = v0[41];
  v45 = v0[40];
  v34 = v0[38];
  v35 = v0[39];
  v33 = v0[37];
  v39 = v0[36];
  v40 = v0[35];
  v25 = v0[33];
  v26 = v0[34];
  v37 = v0[32];
  v38 = v0[31];
  v27 = v0[30];
  v49 = v0[21];
  v41 = v0[19];
  v42 = v0[20];
  v0[14] = v19;
  v0[15] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20B82898C();
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  sub_20BCD8004(&qword_27C76D5D8, type metadata accessor for WorkoutPlanSchedulePageDataProviderX);
  sub_20C138DB4();

  sub_20B520158(v27, &unk_27C76BC90);
  (*(v37 + 8))(v25, v38);
  sub_20B520158(v26, &unk_27C7621D0);
  (*(v39 + 8))(v33, v40);
  sub_20B520158(v34, &unk_27C7617F0);
  sub_20B520158(v35, &unk_27C7622E0);
  (*(v43 + 8))(v36, v45);
  v0[16] = v41;
  v0[17] = v42;
  sub_20C1325B4();
  v28 = sub_20C13D9F4();
  v30 = v29;
  v0[53] = v29;
  v53(v47, v51);
  v55 = (v49 + *v49);
  v31 = swift_task_alloc();
  v0[54] = v31;
  *v31 = v0;
  v31[1] = sub_20BCCF578;

  return v55(v28, v30);
}

uint64_t sub_20BCCF578()
{

  return MEMORY[0x2822009F8](sub_20BCD8054, 0, 0);
}

uint64_t sub_20BCCF690()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-v1 - 8];
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BCD7B4C();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v10);

  sub_20C13CDC4();
  v3 = sub_20C13CDF4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v5 = sub_20C13CD94();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_20B6380FC(0, 0, v2, &unk_20C177DA0, v6);
}

void sub_20BCCF8B8(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();

  v4 = sub_20BCCAD30(a1, &unk_20C177D50, v2, &unk_20C177D60, v3);
  v6 = v5;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for PageAlertController();
    ObjectType = swift_getObjectType();
    sub_20BD393A8(v4, v9, ObjectType, v6);
    v12 = v11;
    [v8 presentViewController:v11 animated:1 completion:0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_20BCCFA60()
{
  v1 = v0;
  v2 = sub_20C135814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanTemplate;
  swift_beginAccess();
  v7 = 0;
  v8 = 0;
  if (!(*(v3 + 48))(v1 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    v7 = sub_20C1357F4();
    v8 = v9;
    (*(v3 + 8))(v5, v2);
  }

  v10 = swift_allocObject();
  swift_weakInit();

  v11 = sub_20BCCB720(v7, v8, &unk_20C177CF8, v10);
  v13 = v12;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = type metadata accessor for PageAlertController();
    ObjectType = swift_getObjectType();
    sub_20BD393A8(v11, v16, ObjectType, v13);
    v19 = v18;
    [v15 presentViewController:v18 animated:1 completion:0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BCCFCA4()
{
  v1 = sub_20C13BB84();
  v47 = *(v1 - 8);
  v48 = v1;
  MEMORY[0x28223BE20](v1);
  v46 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C137374();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = sub_20C133954();
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_20C135814();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v39 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanTemplate;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v21, v14, &unk_27C762300);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v22 = &unk_27C762300;
    v23 = v14;
LABEL_5:
    sub_20B520158(v23, v22);
    v26 = v46;
    sub_20C13B454();
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1D4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20B517000, v27, v28, "[WorkoutPlanSchedulePageDataProviderX] Failed to show plan details", v29, 2u);
      MEMORY[0x20F2F6A40](v29, -1, -1);
    }

    return (*(v47 + 8))(v26, v48);
  }

  (*(v16 + 32))(v20, v14, v15);
  v24 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v24, v9, &unk_27C76A970);
  v25 = v45;
  if ((*(v45 + 48))(v9, 1, v10) == 1)
  {
    (*(v16 + 8))(v20, v15);
    v22 = &unk_27C76A970;
    v23 = v9;
    goto LABEL_5;
  }

  v31 = v41;
  (*(v25 + 32))(v41, v9, v10);
  v32 = *(v16 + 16);
  v48 = v20;
  v32(v39, v20, v15);
  v33 = v40;
  (*(v25 + 16))(v40, v31, v10);
  (*(v25 + 56))(v33, 0, 1, v10);
  v34 = v42;
  sub_20C137344();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = *(Strong + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_pageNavigator + 24);
    v37 = *(Strong + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_pageNavigator + 32);
    v38 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_pageNavigator), v36);
    (*(v37 + 128))(v38, v34, v36, v37);
    swift_unknownObjectRelease();
  }

  (*(v43 + 8))(v34, v44);
  (*(v25 + 8))(v31, v10);
  return (*(v16 + 8))(v48, v15);
}

uint64_t sub_20BCD02DC(uint64_t a1)
{
  v67 = a1;
  v68 = type metadata accessor for PageMetricAction();
  MEMORY[0x28223BE20](v68);
  v69 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20C132EE4();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_20C133954();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v56 - v5;
  v6 = sub_20C1352E4();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = sub_20C134F24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v56 - v18;
  v20 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *MEMORY[0x277D52B38];
  v24 = sub_20C136664();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v19, v23, v24);
  v26 = *(v25 + 56);
  v63 = v19;
  v26(v19, 0, 1, v24);
  v27 = v67;
  v28 = **(&unk_277D980F0 + v67);
  v64 = v14;
  v29 = *(v14 + 104);
  v66 = v13;
  v29(v16, v28, v13);
  v30 = sub_20C132C14();
  v31 = *(*(v30 - 8) + 56);
  v67 = v12;
  v31(v12, 1, 1, v30);
  v61 = *&aDeleteplleavep[8 * v27];
  v60 = *&aDeleteplleavep[8 * v27 + 32];
  v32 = *MEMORY[0x277D523B0];
  v33 = sub_20C135ED4();
  v34 = *(v33 - 8);
  v35 = v70;
  (*(v34 + 104))(v70, v32, v33);
  (*(v34 + 56))(v35, 0, 1, v33);
  v36 = v62;
  (*(v72 + 104))(v71, *MEMORY[0x277D51768], v73);
  v37 = sub_20C136E94();
  (*(*(v37 - 8) + 56))(v74, 1, 1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v39 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan;
  v40 = v75;
  swift_beginAccess();
  v41 = v65;
  v42 = (*(v65 + 48))(v40 + v39, 1, v36);
  v43 = 0;
  v44 = 0;
  if (!v42)
  {
    v45 = v56;
    (*(v41 + 16))(v56, v75 + v39, v36);
    v46 = v57;
    sub_20C133804();
    (*(v41 + 8))(v45, v36);
    v43 = sub_20C132EA4();
    v44 = v47;
    (*(v58 + 8))(v46, v59);
  }

  v76 = v43;
  v77 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20B82898C();
  sub_20C13DC04();
  v48 = sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  sub_20B5DF134(v63, v22, &unk_27C7622E0);
  (*(v64 + 32))(&v22[v20[5]], v16, v66);
  sub_20B5DF134(v67, &v22[v20[6]], &unk_27C7617F0);
  v49 = &v22[v20[7]];
  v50 = v60;
  *v49 = v61;
  *(v49 + 1) = v50;
  sub_20B5DF134(v70, &v22[v20[8]], &unk_27C7621D0);
  v51 = &v22[v20[9]];
  *v51 = 0;
  *(v51 + 1) = 0;
  (*(v72 + 32))(&v22[v20[10]], v71, v73);
  sub_20B5DF134(v74, &v22[v20[11]], &unk_27C76BC90);
  *&v22[v20[12]] = v48;
  v52 = v69;
  sub_20BCD79F4(v22, &v69[*(v68 + 20)], type metadata accessor for ShelfMetricAction);
  *v52 = MEMORY[0x277D84F90];
  v53 = *(v75 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page);
  v54 = *(v75 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page + 8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20BCD0D50(v53, v54, v52);
    swift_unknownObjectRelease();
  }

  sub_20BCD7A5C(v52, type metadata accessor for PageMetricAction);
  return sub_20BCD7A5C(v22, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20BCD0C6C(double a1)
{
  result = sub_20BBB2B00();
  v4 = round(result * a1);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = v4;
  if (*(v1 + 16) != v4)
  {
    *(v1 + 16) = v5;
    sub_20B9ACBEC(v4);

    return sub_20BCD20D4(v5);
  }

  return result;
}

uint64_t sub_20BCD0D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20C1391E4();
  v6 = *(v5 - 8);
  v82 = v5;
  v83 = v6;
  MEMORY[0x28223BE20](v5);
  v81 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134C44();
  MEMORY[0x28223BE20](v8 - 8);
  v80 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v10 - 8);
  v79 = v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v16 - 8);
  v72 = v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v18 - 8);
  v71 = v61 - v19;
  v70 = sub_20C135D24();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v86 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C134F74();
  v76 = *(v21 - 8);
  v77 = v21;
  MEMORY[0x28223BE20](v21);
  v75 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v73 = v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v25 - 8);
  v68 = v61 - v26;
  v67 = sub_20C1352E4();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v28 - 8);
  v64 = v61 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v30 - 8);
  v84 = v61 - v31;
  v63 = sub_20C134F24();
  v32 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v61 - v35;
  v61[1] = v61 - v35;
  v37 = sub_20C133654();
  v87 = *(v37 - 8);
  v88 = v37;
  MEMORY[0x28223BE20](v37);
  v85 = v61 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C132E94();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3 + *(type metadata accessor for PageMetricAction() + 20);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_impressionsTracker), *(a1 + OBJC_IVAR____TtC9SeymourUI12CatalogPageX_impressionsTracker + 24));
  sub_20C132E84();
  v61[2] = sub_20C139214();
  (*(v40 + 8))(v42, v39);
  sub_20B52F9E8(v43, v36, &unk_27C7622E0);
  v44 = type metadata accessor for ShelfMetricAction();
  (*(v32 + 16))(v62, v43 + v44[5], v63);
  sub_20B52F9E8(v43 + v44[6], v84, &unk_27C7617F0);
  v63 = *(v43 + v44[9]);
  sub_20B52F9E8(v43 + v44[8], v64, &unk_27C7621D0);
  (*(v66 + 16))(v65, v43 + v44[10], v67);
  sub_20B52F9E8(v43 + v44[11], v68, &unk_27C76BC90);

  v45 = v85;
  sub_20C133644();
  v46 = v86;
  (*(v87 + 16))(v86, v45, v88);
  (*(v69 + 104))(v46, *MEMORY[0x277D52120], v70);
  v47 = v71;
  sub_20BCD19C0(v71);
  v48 = sub_20C1333A4();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = sub_20C135664();
  (*(*(v49 - 8) + 56))(v72, 1, 1, v49);
  v50 = sub_20C135674();
  (*(*(v50 - 8) + 56))(v74, 1, 1, v50);
  v51 = v78;
  sub_20C134F94();
  v52 = sub_20C134FB4();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v53 - 8) + 56))(v79, 1, 1, v53);
  v54 = sub_20C135F14();
  (*(*(v54 - 8) + 56))(v80, 1, 1, v54);

  v55 = v73;
  sub_20C134F54();
  v56 = v76;
  v57 = v77;
  (*(v76 + 16))(v75, v55, v77);
  v58 = v81;
  sub_20C1391F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  swift_getObjectType();
  sub_20BCD8004(&qword_281103B30, MEMORY[0x277D542C0]);
  v59 = v82;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v83 + 8))(v58, v59);
  (*(v56 + 8))(v55, v57);
  return (*(v87 + 8))(v85, v88);
}

uint64_t sub_20BCD19C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = v41 - v10;
  v51 = sub_20C1352F4();
  v11 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v45 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C135214();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v44 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v41 - v16;
  v18 = sub_20C133954();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v22, v17, &unk_27C76A970);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_20B520158(v17, &unk_27C76A970);
    (*(v11 + 56))(v46, 1, 1, v51);
    v23 = *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_pageContext);
    v24 = *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_pageContext + 8);
    v25 = sub_20C132C14();
    (*(*(v25 - 8) + 56))(v47, 1, 1, v25);
    v26 = sub_20C135ED4();
    (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
    v27 = sub_20C136914();
    (*(*(v27 - 8) + 56))(v49, 1, 1, v27);
    sub_20B58C2C8(v23, v24);
    return sub_20C133384();
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_20C1351F4();
    v29 = sub_20C133874();
    v41[1] = v30;
    v41[2] = v29;
    v31 = v45;
    sub_20C133864();
    v32 = *(v11 + 16);
    v33 = v46;
    v42 = v13;
    v34 = v51;
    v32(v46, v31, v51);
    (*(v11 + 56))(v33, 0, 1, v34);
    v35 = v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_pageContext;
    v36 = *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_pageContext);
    v37 = *(v35 + 8);
    v38 = sub_20C132C14();
    (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
    v39 = sub_20C135ED4();
    (*(*(v39 - 8) + 56))(v48, 1, 1, v39);
    v40 = sub_20C136914();
    (*(*(v40 - 8) + 56))(v49, 1, 1, v40);
    sub_20B58C2C8(v36, v37);
    sub_20C133384();
    (*(v11 + 8))(v45, v51);
    (*(v43 + 8))(v44, v42);
    return (*(v19 + 8))(v21, v18);
  }
}

uint64_t sub_20BCD20D4(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v55 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = v40 - v10;
  v11 = sub_20C1333A4();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v47 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C1352F4();
  v43 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C135214();
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v40 - v19;
  v21 = sub_20C133954();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v25, v20, &unk_27C76A970);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_20B520158(v20, &unk_27C76A970);
  }

  (*(v22 + 32))(v24, v20, v21);
  if (v2[5])
  {
    v27 = v53;
    if ((v53 & 0x8000000000000000) == 0)
    {
LABEL_6:
      v2[4] = v27;
      *(v2 + 40) = 0;
      v42 = v17;
      sub_20C1351F4();
      v53 = sub_20C133874();
      v40[1] = v28;
      v41 = v14;
      v29 = v14;
      sub_20C133864();
      v30 = v43;
      v31 = v46;
      v32 = v54;
      (*(v43 + 16))(v46, v29, v54);
      (*(v30 + 56))(v31, 0, 1, v32);
      v40[0] = v24;
      v34 = *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_pageContext);
      v33 = *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_pageContext + 8);
      v35 = sub_20C132C14();
      (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
      v36 = sub_20C135ED4();
      (*(*(v36 - 8) + 56))(v51, 1, 1, v36);
      v37 = sub_20C136914();
      (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
      sub_20B58C2C8(v34, v33);
      v38 = v47;
      sub_20C133384();
      v56 = v2;
      sub_20BCD8004(&qword_27C76D5C0, type metadata accessor for WorkoutPlanSchedulePageDataProviderX);
      sub_20C138C54();
      (*(v49 + 8))(v38, v50);
      (*(v30 + 8))(v41, v54);
      (*(v44 + 8))(v42, v45);
      return (*(v22 + 8))(v40[0], v21);
    }

LABEL_5:
    v56 = v2;
    sub_20BCD8004(&qword_27C76D5C0, type metadata accessor for WorkoutPlanSchedulePageDataProviderX);
    sub_20C138C64();
    goto LABEL_6;
  }

  v39 = v2[4];
  v27 = v53;
  if (v39 != v53)
  {
    if (v39 <= v53)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return (*(v22 + 8))(v24, v21);
}

uint64_t sub_20BCD283C(uint64_t a1)
{
  v1[5] = a1;
  sub_20C13CDA4();
  v1[6] = sub_20C13CD94();
  v3 = sub_20C13CD24();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_20BCD28D4, v3, v2);
}

uint64_t sub_20BCD28D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20BCD29C4;

    return sub_20BCD2B08();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BCD29C4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_20BCD8058, v3, v2);
}

uint64_t sub_20BCD2B08()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = sub_20C132EE4();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = sub_20C133954();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  v1[26] = swift_task_alloc();
  v4 = sub_20C1333A4();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  v1[30] = swift_task_alloc();
  v5 = sub_20C1352E4();
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v1[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v1[35] = swift_task_alloc();
  v6 = sub_20C134F24();
  v1[36] = v6;
  v1[37] = *(v6 - 8);
  v1[38] = swift_task_alloc();
  sub_20C13CDA4();
  v1[39] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v1[40] = v8;
  v1[41] = v7;

  return MEMORY[0x2822009F8](sub_20BCD2E74, v8, v7);
}

uint64_t sub_20BCD2E74()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 popViewControllerAnimated_];
    }

    swift_unknownObjectRelease();
  }

  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  v11 = v0[31];
  v10 = v0[32];
  v41 = v0[33];
  v43 = v0[30];
  v45 = v0[29];
  v12 = v0[24];
  v47 = v0[26];
  v49 = v0[23];
  v13 = v0[18];
  v0[17] = v13;
  (*(v6 + 104))(v5, *MEMORY[0x277D51430], v7);
  v14 = *MEMORY[0x277D52B40];
  v15 = sub_20C136664();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v17 = sub_20C132C14();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  (*(v10 + 104))(v41, *MEMORY[0x277D51768], v11);
  v18 = sub_20C135ED4();
  (*(*(v18 - 8) + 56))(v43, 1, 1, v18);
  sub_20BCD19C0(v45);
  v19 = sub_20C136E94();
  (*(*(v19 - 8) + 56))(v47, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v21 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan;
  swift_beginAccess();
  v22 = (*(v12 + 48))(v13 + v21, 1, v49);
  v23 = 0;
  v24 = 0;
  if (!v22)
  {
    v26 = v0[24];
    v25 = v0[25];
    v28 = v0[22];
    v27 = v0[23];
    v29 = v0[21];
    v50 = v0[20];
    (*(v26 + 16))(v25, v13 + v21, v27);
    sub_20C133804();
    (*(v26 + 8))(v25, v27);
    v23 = sub_20C132EA4();
    v24 = v30;
    (*(v29 + 8))(v28, v50);
  }

  v39 = v0[38];
  v48 = v0[37];
  v51 = v0[36];
  v37 = v0[34];
  v38 = v0[35];
  v36 = v0[33];
  v44 = v0[32];
  v46 = v0[31];
  v32 = v0[29];
  v31 = v0[30];
  v40 = v0[28];
  v42 = v0[27];
  v33 = v0[26];
  v0[15] = v23;
  v0[16] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20B82898C();
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  sub_20BCD8004(&qword_27C76D5D8, type metadata accessor for WorkoutPlanSchedulePageDataProviderX);
  sub_20C138DB4();

  sub_20B520158(v33, &unk_27C76BC90);
  (*(v40 + 8))(v32, v42);
  sub_20B520158(v31, &unk_27C7621D0);
  (*(v44 + 8))(v36, v46);
  sub_20B520158(v37, &unk_27C7617F0);
  sub_20B520158(v38, &unk_27C7622E0);
  (*(v48 + 8))(v39, v51);
  v34 = swift_task_alloc();
  v0[42] = v34;
  *v34 = v0;
  v34[1] = sub_20BCD3438;

  return sub_20BCD3FF0();
}

uint64_t sub_20BCD3438()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_20BCD3558, v3, v2);
}

uint64_t sub_20BCD3558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BCD3634(uint64_t a1)
{
  v1[5] = a1;
  sub_20C13CDA4();
  v1[6] = sub_20C13CD94();
  v3 = sub_20C13CD24();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_20BCD36CC, v3, v2);
}

uint64_t sub_20BCD36CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20BCD37BC;

    return sub_20BCD3960();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BCD37BC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_20BCD3900, v3, v2);
}

uint64_t sub_20BCD3900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BCD3960()
{
  v1[3] = v0;
  v1[4] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  v1[5] = swift_task_alloc();
  v2 = sub_20C1333A4();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  v1[9] = swift_task_alloc();
  v3 = sub_20C1352E4();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v1[14] = swift_task_alloc();
  v4 = sub_20C134F24();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  sub_20C13CDA4();
  v1[18] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BCD3C14, v6, v5);
}

uint64_t sub_20BCD3C14()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v25 = v2;
  v26 = v3;
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[10];
  v19 = v0[12];
  v20 = v0[9];
  v21 = v0[8];
  v23 = v0[7];
  v24 = v0[6];
  v8 = v0[3];
  v22 = v0[5];

  v0[2] = v8;
  v9 = *(v3 + 104);
  v10 = v1;
  v9(v1, *MEMORY[0x277D51468], v2);
  v11 = *MEMORY[0x277D52B40];
  v12 = sub_20C136664();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v4, v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  v14 = sub_20C132C14();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  (*(v6 + 104))(v19, *MEMORY[0x277D51768], v7);
  v15 = sub_20C135ED4();
  (*(*(v15 - 8) + 56))(v20, 1, 1, v15);
  sub_20BCD19C0(v21);
  v16 = sub_20C136E94();
  (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
  sub_20BCD8004(&qword_27C76D5D8, type metadata accessor for WorkoutPlanSchedulePageDataProviderX);
  sub_20C138DA4();
  sub_20B520158(v22, &unk_27C76BC90);
  (*(v23 + 8))(v21, v24);
  sub_20B520158(v20, &unk_27C7621D0);
  (*(v6 + 8))(v19, v7);
  sub_20B520158(v5, &unk_27C7617F0);
  sub_20B520158(v4, &unk_27C7622E0);
  (*(v26 + 8))(v10, v25);

  v17 = v0[1];

  return v17();
}

uint64_t sub_20BCD3FF0()
{
  v1[5] = v0;
  v2 = sub_20C13BB84();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_20C132EE4();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v1[12] = swift_task_alloc();
  v4 = sub_20C133954();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  sub_20C13CDA4();
  v1[16] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[17] = v6;
  v1[18] = v5;

  return MEMORY[0x2822009F8](sub_20BCD41D4, v6, v5);
}

uint64_t sub_20BCD41D4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v4 + v5, v3, &unk_27C76A970);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[12];

    sub_20B520158(v6, &unk_27C76A970);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[5];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v10 = (v9 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanClient);
    v11 = *(v9 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanClient + 24);
    v12 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_20C133804();
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_20BCD43BC;
    v14 = v0[11];

    return MEMORY[0x2821ADEC8](v14, v11, v12);
  }
}

uint64_t sub_20BCD43BC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 144);
  v7 = *(v2 + 136);
  if (v0)
  {
    v8 = sub_20BCD4600;
  }

  else
  {
    v8 = sub_20BCD4554;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20BCD4554()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BCD4600()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 8))(v2, v3);
  sub_20C13B454();
  v5 = v1;
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1D4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20B517000, v6, v7, "[WorkoutPlanSchedulePageDataProviderX] Failed to delete workout plan with error: %@", v10, 0xCu);
    sub_20B520158(v11, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_20BCD47D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_20C13CDA4();
  v3[8] = sub_20C13CD94();
  v5 = sub_20C13CD24();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_20BCD486C, v5, v4);
}

uint64_t sub_20BCD486C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_20BCD4964;
    v4 = v0[5];
    v3 = v0[6];

    return sub_20BCD4AA8(v4, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20BCD4964()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_20B8AF0D4, v3, v2);
}

uint64_t sub_20BCD4AA8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_20C13BB84();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_20C133954();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_20C132EE4();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_20C13CDA4();
  v3[20] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v3[21] = v8;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_20BCD4C70, v8, v7);
}

uint64_t sub_20BCD4C70()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan;
  swift_beginAccess();
  if ((*(v1 + 48))(v3 + v4, 1, v2))
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[15];
    v10 = v0[16];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v20 = v0[8];
    (*(v12 + 16))(v11, v3 + v4, v13);
    sub_20C133854();
    (*(v12 + 8))(v11, v13);
    (*(v10 + 32))(v7, v8, v9);
    v14 = *(v20 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanClient + 24);
    v15 = *(v20 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanClient + 32);
    __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanClient), v14);
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_20BCD4E88;
    v17 = v0[19];
    v18 = v0[6];
    v19 = v0[7];

    return MEMORY[0x2821ADF18](v17, v18, v19, v14, v15);
  }
}

uint64_t sub_20BCD4E88()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_20BCD507C;
  }

  else
  {
    v5 = sub_20BCD4FC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20BCD4FC4()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BCD507C()
{
  v40 = v0;
  v1 = v0[24];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  sub_20C13B454();
  (*(v4 + 16))(v3, v2, v5);
  v6 = v1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1D4();

  if (os_log_type_enabled(v7, v8))
  {
    v33 = v0[24];
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v37 = v0[11];
    v38 = v0[19];
    v35 = v0[10];
    v36 = v0[9];
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v12 = 141558530;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    sub_20BCD8004(&qword_27C763EF0, MEMORY[0x277CC95F0]);
    v13 = sub_20C13DFA4();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_20B51E694(v13, v15, &v39);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    v0[5] = v33;
    v18 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v19 = sub_20C13C9D4();
    v21 = sub_20B51E694(v19, v20, &v39);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_20B517000, v7, v8, "Failed to update active plan name %{mask.hash}s: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v34, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);

    (*(v35 + 8))(v37, v36);
    v16(v38, v11);
  }

  else
  {
    v22 = v0[24];
    v23 = v0[19];
    v25 = v0[16];
    v24 = v0[17];
    v26 = v0[15];
    v28 = v0[10];
    v27 = v0[11];
    v29 = v0[9];

    v30 = *(v25 + 8);
    v30(v24, v26);
    (*(v28 + 8))(v27, v29);
    v30(v23, v26);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_20BCD53E0()
{
  v1[2] = v0;
  v2 = sub_20C13BB84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  v1[6] = swift_task_alloc();
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300) - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = sub_20C133954();
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v1[13] = *(v5 + 64);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D5E0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = sub_20C13CDA4();
  v1[21] = sub_20C13CD94();
  v7 = sub_20C13CD24();
  v1[22] = v7;
  v1[23] = v6;

  return MEMORY[0x2822009F8](sub_20BCD5654, v7, v6);
}

uint64_t sub_20BCD5654()
{
  v0[24] = *(v0[2] + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_activeWorkoutProvider);
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_20BCD56FC;
  v2 = v0[19];

  return sub_20BFC21AC(v2);
}

uint64_t sub_20BCD56FC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 208) = v3;
  *v3 = v2;
  v3[1] = sub_20BCD583C;

  return sub_20BFC28F8();
}

uint64_t sub_20BCD583C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x2822009F8](sub_20BCD5964, v4, v3);
}

uint64_t sub_20BCD5964()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_20B52F9E8(v1, v2, &qword_27C76D5E0);
  v3 = sub_20C1364E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v2, 1, v3);
  v7 = v0[18];
  if (v6 == 1)
  {

    sub_20B520158(v7, &qword_27C76D5E0);
    sub_20C13B454();
    v8 = sub_20C13BB74();
    v9 = sub_20C13D1D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20B517000, v8, v9, "No active plan. Popping schedule controller", v10, 2u);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];

    (*(v12 + 8))(v11, v13);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = [Strong navigationController];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 popViewControllerAnimated_];
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v52 = v0[19];
    v18 = v0[17];
    v55 = v0[16];
    v19 = v0[15];
    v21 = v0[11];
    v20 = v0[12];
    sub_20C1364C4();
    v50 = *(v4 + 8);
    v50(v7, v3);
    v54 = *(v20 + 32);
    v54(v55, v19, v21);
    sub_20B52F9E8(v52, v18, &qword_27C76D5E0);
    v22 = v5(v18, 1, v3);
    v23 = v0[17];
    v24 = v0[10];
    if (v22 == 1)
    {
      sub_20B520158(v0[17], &qword_27C76D5E0);
      v25 = sub_20C135814();
      (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    }

    else
    {
      sub_20C1364D4();
      v50(v23, v3);
    }

    v53 = v0[27];
    v26 = v0[16];
    v27 = v0[14];
    v49 = v0[13];
    v28 = v0[11];
    v29 = v0[12];
    v44 = v28;
    v45 = v27;
    v31 = v0[9];
    v30 = v0[10];
    v43 = v31;
    v47 = v30;
    v48 = v0[8];
    v46 = v0[7];
    v32 = v0[6];
    v51 = *(v0[2] + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_selectedDayOffset);
    sub_20C13CDC4();
    v33 = sub_20C13CDF4();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = swift_allocObject();
    swift_weakInit();
    (*(v29 + 16))(v27, v26, v28);
    sub_20B52F9E8(v30, v31, &unk_27C762300);

    v35 = sub_20C13CD94();
    v36 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v37 = (v49 + *(v46 + 80) + v36) & ~*(v46 + 80);
    v38 = (v48 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    *(v39 + 2) = v35;
    *(v39 + 3) = v40;
    *(v39 + 4) = v34;
    v54(&v39[v36], v45, v44);
    sub_20B5DF134(v43, &v39[v37], &unk_27C762300);
    *&v39[v38] = v53;
    *&v39[(v38 + 15) & 0xFFFFFFFFFFFFFFF8] = v51;

    sub_20B6380FC(0, 0, v32, &unk_20C177DB8, v39);

    sub_20B520158(v47, &unk_27C762300);
    (*(v29 + 8))(v26, v44);
  }

  sub_20B520158(v0[19], &qword_27C76D5E0);

  v41 = v0[1];

  return v41();
}

uint64_t sub_20BCD5F6C()
{
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan, &unk_27C76A970);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanTemplate, &unk_27C762300);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_contactService);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanClient);

  swift_unknownObjectRelease();

  sub_20B58CFB0(*(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_pageContext), *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_pageContext + 8));

  return v0;
}

uint64_t sub_20BCD6088()
{
  sub_20BCD5F6C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanSchedulePageDataProviderX()
{
  result = qword_27C76D5A0;
  if (!qword_27C76D5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCD6134()
{
  sub_20BBB3B80(319, &qword_27C7629F8, MEMORY[0x277D50180]);
  if (v0 <= 0x3F)
  {
    sub_20BBB3B80(319, &qword_27C766B58, MEMORY[0x277D51CF0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BCD62B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B695AF8;

    return sub_20BCD53E0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BCD6398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_20BCD6430, v6, v5);
}

uint64_t sub_20BCD6430()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_20BCD6534;

    return sub_20BCD53E0();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20BCD6534()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20BCD6678, v3, v2);
}

uint64_t sub_20BCD6678()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

char *sub_20BCD66EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_calendarCoordinator);
  v2 = objc_allocWithZone(type metadata accessor for WorkoutPlanCalendarViewController());

  return sub_20B81F914(v1);
}

uint64_t sub_20BCD677C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_20B52A9D4;

  return sub_20BCCC884(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_20BCD6878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v23 - v17;
  v19 = *a7;
  v20 = sub_20C13CDF4();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  v21[8] = a5;
  v21[9] = a6;
  v21[10] = v19;

  sub_20B6383D0(0, 0, v18, a9, v21);
}

uint64_t sub_20BCD69D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_20B52AC14;

  return sub_20BCCE0AC(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *sub_20BCD6ACC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{

  v37[3] = type metadata accessor for CatalogPageImpressionTracker();
  v37[4] = sub_20BCD8004(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v37[0] = a5;
  *&a6[OBJC_IVAR____TtC9SeymourUI12CatalogPageX_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC9SeymourUI12CatalogPageX_dataSource] = 0;
  *&a6[OBJC_IVAR____TtC9SeymourUI12CatalogPageX_collectionView] = a4;
  sub_20B51CC64(v37, &a6[OBJC_IVAR____TtC9SeymourUI12CatalogPageX_impressionsTracker]);
  *&a6[OBJC_IVAR____TtC9SeymourUI12CatalogPageX_shelves] = a3;
  type metadata accessor for ShelfLayoutProviderX();
  v10 = swift_allocObject();
  v11 = &a6[OBJC_IVAR____TtC9SeymourUI12CatalogPageX_layoutProvider];
  *v11 = v10;
  v11[1] = &off_2822E4AA0;
  type metadata accessor for ShelfViewFactoryX();
  v12 = swift_allocObject();
  v13 = &a6[OBJC_IVAR____TtC9SeymourUI12CatalogPageX_viewFactory];
  *v13 = v12;
  v13[1] = &off_2822A8620;
  v36.receiver = a6;
  v36.super_class = type metadata accessor for CatalogPageX();
  v14 = a4;

  v15 = objc_msgSendSuper2(&v36, sel_init);
  [v14 setDataSource_];
  [v14 setDelegate_];
  [v14 removeFromSuperview];
  v16 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = objc_allocWithZone(MEMORY[0x277D752B8]);
  aBlock[4] = sub_20BCD76E4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BE37A2C;
  aBlock[3] = &block_descriptor_118;
  v19 = _Block_copy(aBlock);
  v20 = [v18 initWithSectionProvider:v19 configuration:v16];
  _Block_release(v19);

  [v14 setCollectionViewLayout_];

  [v14 setDelegate_];
  [v14 setPrefetchDataSource_];

  [v14 setAlwaysBounceVertical_];
  v21 = type metadata accessor for WorkoutPlanWeekdayCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  aBlock[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76CCB0);
  sub_20C13C9D4();
  v23 = sub_20C13C914();

  [v14 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v23];

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2] = v12;
  v25[3] = &off_2822A8620;
  v25[4] = v24;
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D5B8));
  v27 = v14;

  v28 = sub_20C13BF14();
  v29 = *&v15[OBJC_IVAR____TtC9SeymourUI12CatalogPageX_dataSource];
  *&v15[OBJC_IVAR____TtC9SeymourUI12CatalogPageX_dataSource] = v28;
  v30 = v28;

  v31 = *(a3 + 16);
  if (v31)
  {
    v32 = (a3 + 32);
    do
    {
      v33 = *v32;
      v32 += 2;
      *(v33 + 24) = &off_2822D9BA0;
      swift_unknownObjectWeakAssign();
      --v31;
    }

    while (v31);
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v15;
}

uint64_t sub_20BCD6F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = *v5;
  v12 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v12 - 8);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  v13 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlan;
  v14 = sub_20C133954();
  (*(*(v14 - 8) + 56))(v6 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanTemplate;
  v16 = sub_20C135814();
  (*(*(v16 - 8) + 56))(v6 + v15, 1, 1, v16);
  v48 = a1;
  *(v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_calendarCoordinator) = a1;
  *(v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_dependencies) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FBE0);
  sub_20C133AA4();
  *(v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_activeWorkoutProvider) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BB0);
  sub_20C133AA4();
  sub_20B51C710(&v53, v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_contactService);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_eventHub) = v53;
  v17 = (v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_pageContext);
  *v17 = a3;
  v17[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(&v53, v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v53, v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_subscriptionToken) = sub_20C13A914();
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanStringBuilder) = v53;
  *(v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_selectedDayOffset) = a5;
  type metadata accessor for WorkoutPlanScheduleShelfX();
  swift_allocObject();

  v18 = sub_20BBB4158();

  v19 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanScheduleShelf;
  *(v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_workoutPlanScheduleShelf) = v18;
  v47 = "workoutPlanScheduleShelf";
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D5B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20C14F980;
  *(v20 + 32) = *(v6 + v19);
  *(v20 + 40) = &off_2822D1F30;
  v21 = objc_allocWithZone(MEMORY[0x277D75300]);

  v22 = [v21 init];
  v23 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v22 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v24 = sub_20C13C724();
  v25 = type metadata accessor for CatalogPageImpressionTracker();
  v26 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v27 = MEMORY[0x277D221C0];
  v26[2] = sub_20C13C6D4();
  v26[3] = v24;
  v26[4] = v27;
  v54 = v25;
  v28 = sub_20BCD8004(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v55 = v28;
  *&v53 = v26;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(&v53, v25);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = *v32;
  v51 = v25;
  v52 = v28;
  v50[0] = v34;
  v35 = objc_allocWithZone(type metadata accessor for CatalogPageX());
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = (&v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = sub_20BCD6ACC(0xD000000000000012, v47 | 0x8000000000000000, v20, v23, *v39, v35);

  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v42 = (v6 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSchedulePageDataProviderX_page);
  *v42 = v41;
  v42[1] = &off_2822D9B60;
  v54 = v49;
  v55 = &off_2822DD908;

  *&v53 = v6;
  sub_20B51CC64(&v53, v50);
  v43 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_weekdayDelegate;
  v44 = v48;
  swift_beginAccess();
  sub_20BCD7674(v50, v44 + v43);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&v53);
  return v6;
}

uint64_t sub_20BCD7674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BCD76F8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BCD47D0(a1, a2, v2);
}

void sub_20BCD77C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  JUMPOUT(0x20BCD69D0);
}

uint64_t sub_20BCD78C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BCD283C(v0);
}

uint64_t sub_20BCD7954()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BCD3634(v0);
}

uint64_t sub_20BCD79F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BCD7A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BCD7ABC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20BCD6290(v0);
}

unint64_t sub_20BCD7B4C()
{
  result = qword_281100808;
  if (!qword_281100808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281100808);
  }

  return result;
}

uint64_t sub_20BCD7BA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BCD6398(a1, v4, v5, v6);
}

uint64_t sub_20BCD7C54(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C133954() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v10);
  v15 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52AC14;

  return sub_20B9AC31C(a1, v11, v12, v13, v1 + v6, v1 + v9, v14, v15);
}

uint64_t objectdestroy_23Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_26Tm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void sub_20BCD7F08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  JUMPOUT(0x20BCD677CLL);
}

uint64_t sub_20BCD8004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BCD805C(void *a1, char a2)
{
  [objc_msgSend(a1 container)];
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = [a1 traitCollection];
  v7 = v6;
  if (v5 >= 350.0)
  {
    [v6 horizontalSizeClass];
    sub_20C1380F4();
    v8 = sub_20C138104();
    if (v8 == sub_20C138104())
    {
      if (a2)
      {
        sub_20BDF9A7C(v5);
      }

      else
      {
        sub_20BDF9B24(v5);
      }
    }
  }

  sub_20C1380F4();
  sub_20C138104();
  sub_20C138104();
  [objc_msgSend(a1 container)];
  v10 = v9;
  swift_unknownObjectRelease();
  sub_20B755B8C(v12, v10);
  return sub_20B5F320C(v12);
}

uint64_t sub_20BCD81F8(void *a1, char a2)
{
  [objc_msgSend(a1 container)];
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = [a1 traitCollection];
  v7 = v6;
  if (v5 >= 350.0)
  {
    [v6 horizontalSizeClass];
    sub_20C1380F4();
    v9 = sub_20C138104();
    v8 = 1;
    if (v9 == sub_20C138104())
    {
      if (a2)
      {
        v10 = sub_20BDF9A7C(v5);
      }

      else
      {
        v10 = sub_20BDF9B24(v5);
      }

      v8 = v10;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_20C1380F4();
  v11 = sub_20C138104();
  result = sub_20C138104();
  if (v11 == result && v8 >= 2u)
  {
    [objc_msgSend(a1 container];
    v14 = v13;
    swift_unknownObjectRelease();
    sub_20B755B8C(v15, v14);
    return sub_20B5F320C(v15);
  }

  return result;
}

unint64_t sub_20BCD83A0()
{
  result = qword_27C76D5F0;
  if (!qword_27C76D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D5F0);
  }

  return result;
}

void sub_20BCD83F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 48) = 1;
    v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_galleryName + 8);
    if (v5 && (v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_galleryDescription + 8)) != 0)
    {
      v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_galleryName);
      v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_galleryDescription);

      sub_20BCD9548(v7, v5, v8, v6);
    }

    else
    {
      sub_20BCD9AE4();
      sub_20BCD8AF0();
    }

    __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    sub_20C135E34();
    sub_20C139FB4();
    v9 = sub_20C137CB4();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v9(sub_20B52347C, v10);

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_20BCD85CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v23 - v11;
  v24 = sub_20C1333A4();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0;
  v23[1] = *(*(v0 + 56) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v16 = *MEMORY[0x277D51838];
  v17 = sub_20C1352F4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v12, v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  v19 = sub_20C132C14();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = sub_20C135ED4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = sub_20C136914();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);

  sub_20C133384();
  type metadata accessor for CatalogTipGalleryPageDataProvider();
  sub_20BCDB870(&qword_27C76D648, type metadata accessor for CatalogTipGalleryPageDataProvider);
  sub_20C138C54();
  return (*(v13 + 8))(v15, v24);
}

uint64_t sub_20BCD89BC()
{
  v0 = sub_20C13A814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  __swift_allocate_value_buffer(v4, qword_27C76D5F8);
  __swift_project_value_buffer(v4, qword_27C76D5F8);
  (*(v1 + 104))(v3, *MEMORY[0x277D4EF80], v0);
  v6[15] = 0;
  return sub_20C13A384();
}

uint64_t sub_20BCD8AF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764368);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645B8);
  v9 = *(v55 - 8);
  v53 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v58 = *(v13 - 8);
  v59 = v13;
  v56 = *(v58 + 64);
  MEMORY[0x28223BE20](v13);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v51 - v16;
  MEMORY[0x28223BE20](v17);
  v60 = &v51 - v18;
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  sub_20C13A094();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20BCDB63C;
  *(v19 + 24) = v1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20BCDB668;
  *(v20 + 24) = v19;
  (*(v3 + 16))(v5, v8, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v5, v2);
  v23 = (v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_20BCDB6A4;
  v23[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D280);
  v24 = v51;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_20BCDB6D4;
  *(v25 + 24) = v1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_20BCDB6D8;
  *(v26 + 24) = v25;
  v27 = v52;
  v28 = v55;
  (*(v9 + 16))(v52, v24, v55);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = (v53 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v9 + 32))(v31 + v29, v27, v28);
  v32 = (v31 + v30);
  *v32 = sub_20BCDB70C;
  v32[1] = v26;

  v33 = v54;
  sub_20C137C94();
  (*(v9 + 8))(v24, v28);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BCDB73C;
  *(v34 + 24) = v1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20B5F67D4;
  *(v35 + 24) = v34;
  v37 = v57;
  v36 = v58;
  v38 = v59;
  (*(v58 + 16))(v57, v33, v59);
  v39 = v36;
  v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v41 = (v56 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v42 + v40;
  v44 = v38;
  (*(v39 + 32))(v43, v37, v38);
  v45 = (v42 + v41);
  *v45 = sub_20B5DF204;
  v45[1] = v35;

  v46 = v60;
  sub_20C137C94();
  v47 = *(v39 + 8);
  v47(v33, v44);
  v48 = sub_20C137CB4();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  v48(sub_20B5DF6DC, v49);

  return (v47)(v46, v44);
}

uint64_t sub_20BCD91B0(uint64_t a1)
{
  v2 = sub_20C135E14();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - v6;
  v8 = MEMORY[0x28223BE20](v7);
  v36 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v38 = *(v37 + 16);
    v39 = (v37 + 8);
    v11 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v12 = *(v37 + 72);
    while (1)
    {
      v13 = v2;
      v38(v4, v11, v2, v8);
      sub_20C135DA4();
      v14 = sub_20C1352B4();
      v16 = v15;
      if (v14 == sub_20C1352B4() && v16 == v17)
      {
        break;
      }

      v18 = sub_20C13DFF4();

      if (v18)
      {
        goto LABEL_9;
      }

      v2 = v13;
      (*v39)(v4, v13);
      v11 += v12;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    v21 = v37 + 32;
    v20 = *(v37 + 32);
    v22 = v34;
    v23 = v4;
    v24 = v13;
    v33 = v13;
    v20(v34, v23, v13);
    v25 = v36;
    v20(v36, v22, v24);
    v26 = (v35 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_mediaTagStringBuilder);
    __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_mediaTagStringBuilder), *(v35 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_mediaTagStringBuilder + 24));
    sub_20C135D94();
    v27 = sub_20C138544();

    v28 = [v27 string];

    v2 = sub_20C13C954();
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_20C135DD4();
    v29 = sub_20C138544();

    v30 = [v29 string];

    sub_20C13C954();
    (*(v21 - 24))(v25, v33);
  }

  else
  {
LABEL_7:
    sub_20B8B3454();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_20BCD9548(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v44 = a3;
  v45 = a4;
  v47 = a1;
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - v8;
  v9 = sub_20C134EC4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39 - v15;
  v39 = v4;
  v17 = *(v4 + 104);
  v18 = OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_filterRoot;
  v19 = *(v10 + 16);
  v19(&v39 - v15, v4 + OBJC_IVAR____TtC9SeymourUI33CatalogTipGalleryPageDataProvider_filterRoot, v9, v14);
  (*(v10 + 56))(v16, 0, 1, v9);
  type metadata accessor for ExpandingTextShelf();
  swift_allocObject();
  v20 = swift_retain_n();
  v43 = sub_20BFBE714(v20, v16);

  v21 = v39;
  v41 = v18;
  (v19)(v12, v39 + v18, v9);
  v22 = qword_27C760B18;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v7, qword_27C76D5F8);
  v24 = v42;
  v25 = v40;
  (*(v42 + 16))(v40, v23, v7);
  sub_20C13A344();
  (*(v24 + 8))(v25, v7);
  LOBYTE(v25) = v49;
  type metadata accessor for FilterDetailHeaderShelf();
  swift_allocObject();
  v26 = sub_20C058B20(v17, v12, v25);

  v27 = v21;
  v28 = v41;
  (v19)(v12, v27 + v41, v9);
  type metadata accessor for FilterResultShelf();
  swift_allocObject();
  v29 = sub_20B84152C(v17, v12, 1);
  (v19)(v12, v27 + v28, v9);
  type metadata accessor for SelectedFilterShelf();
  swift_allocObject();
  v30 = sub_20B9585A8(v17, v12);

  v31 = (v26 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_title);
  v33 = v47;
  v32 = v48;
  *v31 = v47;
  v31[1] = v32;

  sub_20C0578C4(1);
  v34 = v43;
  sub_20BFB9660(v44, v45, 1, 0, 2, 1);
  v35 = sub_20C134734();
  v36 = v46;
  (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
  sub_20B8437C4(v33, v32, v36);
  sub_20BCDB5D4(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C152DF0;
  *(inited + 32) = v26;
  *(inited + 40) = &off_282302FB0;
  *(inited + 48) = v34;
  *(inited + 56) = &off_2822FC7E0;
  *(inited + 64) = v30;
  *(inited + 72) = &off_2822B8970;
  *(inited + 80) = v29;
  *(inited + 88) = &off_2822AC930;

  sub_20BCD9E98(inited);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
  return swift_arrayDestroy();
}

uint64_t sub_20BCD9AE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  type metadata accessor for LoadingShelf();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v2 = v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row;
  sub_20B5D8060(v11);
  v3 = v11[7];
  v4 = v11[9];
  *(v2 + 128) = v11[8];
  *(v2 + 144) = v4;
  v5 = v11[5];
  v6 = v11[6];
  *(v2 + 64) = v11[4];
  *(v2 + 80) = v5;
  *(v2 + 160) = v12;
  *(v2 + 96) = v6;
  *(v2 + 112) = v3;
  v7 = v11[1];
  *v2 = v11[0];
  *(v2 + 16) = v7;
  v8 = v11[3];
  *(v2 + 32) = v11[2];
  *(v2 + 48) = v8;
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_platform) = v10;
  *(inited + 32) = v1;
  *(inited + 40) = &off_2822D32B0;
  sub_20BCD9E98(inited);
  swift_setDeallocating();
  return swift_unknownObjectRelease();
}

uint64_t sub_20BCD9C38(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v6 = a1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v18[2], v18[3]);
    v13 = sub_20B51E694(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v7, v8, "[CatalogTipGalleryPageDataProvider] error fetching header content: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  type metadata accessor for LoadingErrorShelf();
  swift_allocObject();

  v16 = sub_20BEFE8F4(v15, 0, 0);

  *(inited + 32) = v16;
  *(inited + 40) = &off_2822F4EF0;
  sub_20BCD9E98(inited);
  swift_setDeallocating();
  return swift_unknownObjectRelease();
}

uint64_t sub_20BCD9E98(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  v5 = *(v4 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier + 8);
  v60 = *(v4 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v4 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v72);
  v59 = v5;

  v58 = v6;
  v57 = sub_20C1380F4();
  v7 = type metadata accessor for MetricLocationStore();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F98];
  *(v8 + 16) = MEMORY[0x277D84F90];
  *(v8 + 24) = v10;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = *v14;
  v17 = type metadata accessor for CatalogPageImpressionTracker();
  v71[3] = v17;
  v18 = sub_20BCDB870(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v71[4] = v18;
  v71[0] = v16;
  v70[3] = v7;
  v70[4] = &off_2822B6968;
  v70[0] = v8;
  v19 = *(a1 + 16);
  if (v19)
  {
    v55 = v17;
    v56 = v7;
    v69[0] = v9;
    sub_20BB5D394(0, v19, 0);
    v9 = v69[0];
    v20 = (a1 + 32);
    do
    {
      v21 = *v20;
      v69[0] = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      v61 = v21;
      swift_unknownObjectRetain();
      if (v23 >= v22 >> 1)
      {
        sub_20BB5D394((v22 > 1), v23 + 1, 1);
        v9 = v69[0];
      }

      *(v9 + 16) = v23 + 1;
      v24 = v9 + 24 * v23;
      *(v24 + 32) = v61;
      *(v24 + 48) = 0;
      ++v20;
      --v19;
    }

    while (v19);
    v17 = v55;
    v7 = v56;
  }

  sub_20B51CC64(v71, v69);
  sub_20B51CC64(v70, v68);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v69, v69[3]);
  *&v61 = &v55;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = (&v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (&v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33, v31);
  v35 = *v28;
  v36 = *v33;
  v66 = v17;
  v67 = v18;
  v65[0] = v35;
  v63 = v7;
  v64 = &off_2822B6968;
  v62[0] = v36;
  v37 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v39 = MEMORY[0x28223BE20](v38);
  v41 = (&v55 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41, v39);
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = (&v55 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46, v44);
  v48 = sub_20BE3AA74(v60, v59, v9, v57, v58, *v41, *v46, 2, v37);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v49 = *(v2 + 56);
  *(v2 + 56) = v48;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v51 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v73 = type metadata accessor for CatalogTipGalleryPageDataProvider();
    v74 = &off_2822DDBF8;
    v72[0] = v2;
    v53 = *(v2 + 56);

    v54 = v53;
    sub_20B76FFF8(v72, v54, ObjectType, v51);

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  return result;
}