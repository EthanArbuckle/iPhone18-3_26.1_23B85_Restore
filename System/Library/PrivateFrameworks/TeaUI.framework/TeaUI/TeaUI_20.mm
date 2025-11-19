void sub_1D7FCFBB4()
{
  OUTLINED_FUNCTION_7_20();
  v12 = *((*MEMORY[0x1E69E7D40] & v1) + 0x50);
  v13 = *((*MEMORY[0x1E69E7D40] & v1) + 0x60);
  v14.receiver = v0;
  v14.super_class = OUTLINED_FUNCTION_20_14();
  objc_msgSendSuper2(&v14, sel_loadView, v12, v13);
  v2 = OUTLINED_FUNCTION_37_9();
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    OUTLINED_FUNCTION_9_0();

    v4 = objc_allocWithZone(type metadata accessor for PageView());
    v5 = OUTLINED_FUNCTION_8_0();
    v8 = [v6 v7];
    v9 = OUTLINED_FUNCTION_37_9();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 autoresizingMask];

      [v8 setAutoresizingMask_];
      [v0 setView_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D7FCFCF4(void *a1)
{
  v1 = a1;
  sub_1D7FCFBB4();
}

id sub_1D7FCFD3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v0;
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & v2) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_0();
  v7 = type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35.i8[-v11];
  v13 = *((v3 & v2) + 0x70);
  v14 = *((v3 & v2) + 0x78);
  v39 = v6;
  v35 = *(v4 + 88);
  v40 = v35;
  v41 = v5;
  v42 = v13;
  v36 = v14;
  v37 = v13;
  v43 = v14;
  v15 = type metadata accessor for PageViewController();
  v44.receiver = v1;
  v44.super_class = v15;
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  OUTLINED_FUNCTION_10_19();
  v17 = *&v1[*(v16 + 152)];
  result = OUTLINED_FUNCTION_37_9();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = result;
  [result bounds];
  OUTLINED_FUNCTION_9_0();

  v21 = OUTLINED_FUNCTION_8_0();
  [v22 v23];

  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = result;
  result = OUTLINED_FUNCTION_37_9();
  if (result)
  {
    v25 = result;
    [v24 addSubview_];

    [v17 didMoveToParentViewController_];
    OUTLINED_FUNCTION_10_19();
    v26 = *(v5 + 24);
    v26(v6, v5);
    sub_1D818F154();

    sub_1D7FD01F8(v12);
    (*(v9 + 8))(v12, v7);
    v26(v6, v5);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v29.i64[0] = v6;
    *&v30 = vdupq_laneq_s64(v35, 1).u64[0];
    *(&v30 + 1) = v5;
    *(v28 + 16) = vzip1q_s64(v29, v35);
    *(v28 + 32) = v30;
    v31 = v36;
    *(v28 + 48) = v37;
    *(v28 + 56) = v31;
    *(v28 + 64) = v27;
    OUTLINED_FUNCTION_0_2();
    sub_1D818F164();

    OUTLINED_FUNCTION_141(&v39, v41);
    sub_1D818ED84();
    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    sub_1D7E29588();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D819FAB0;
    v33 = sub_1D818FE54();
    v34 = MEMORY[0x1E69DC098];
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    *(swift_allocObject() + 16) = ObjectType;
    sub_1D8191A24();
    swift_unknownObjectRelease();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7FD01F8(uint64_t a1)
{
  v2 = v1;
  v125 = a1;
  v104 = *MEMORY[0x1E69E7D40] & *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v112 = swift_getAssociatedTypeWitness();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v109 = &v96 - v5;
  v111 = AssociatedConformanceWitness;
  v6 = type metadata accessor for PageBlueprint();
  v120 = sub_1D8191E84();
  v117 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v96 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v96 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v96 - v13;
  v124 = v6;
  v115 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v96 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v96 - v20;
  v22 = sub_1D8191E84();
  v121 = *(v22 - 8);
  v122 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v119 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v107 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v96 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v96 - v34;
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v37);
  v101 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v99 = &v96 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v100 = &v96 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v96 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v96 - v47;
  v49 = sub_1D7FCEEE8();
  if (!v49)
  {
    goto LABEL_6;
  }

  v50 = v49;
  v97 = v21;
  swift_getObjectType();
  v51 = dynamic_cast_existential_1_conditional(v50);
  if (!v51)
  {

LABEL_6:
    v123 = 0;
    v102 = 0;
    goto LABEL_7;
  }

  v53 = v51;
  v98 = v2;
  v96 = v14;
  v114 = v36;
  v54 = v52;
  swift_getObjectType();
  v123 = v53;
  v126 = v53;
  v55 = v50;
  v102 = v54;
  sub_1D818EF94();
  v56 = v124;
  PageBlueprint.page(for:)();

  if (__swift_getEnumTagSinglePayload(v35, 1, AssociatedTypeWitness) == 1)
  {

    (*(v121 + 8))(v35, v122);
    v36 = v114;
    v2 = v98;
  }

  else
  {
    v36 = v114;
    (*(v114 + 32))(v48, v35, AssociatedTypeWitness);
    v71 = v96;
    v72 = v98;
    sub_1D7FCEFEC(v96);
    if (__swift_getEnumTagSinglePayload(v71, 1, v56) != 1)
    {
      v88 = v97;
      (*(v115 + 32))(v97, v71, v56);
      v59 = v123;
      [*(v72 + *((*MEMORY[0x1E69E7D40] & *v72) + 0x98)) setVisibleViewController_];
      v89 = v125;
      sub_1D7FD5ACC(v88, v125, v48);

      (*(v115 + 8))(v88, v56);
      (*(v36 + 8))(v48, AssociatedTypeWitness);
      v58 = v117;
      v2 = v72;
      goto LABEL_32;
    }

    (*(v36 + 8))(v48, AssociatedTypeWitness);

    (*(v117 + 8))(v71, v120);
    v2 = v72;
  }

LABEL_7:
  sub_1D7FCEA94(v32);
  if (__swift_getEnumTagSinglePayload(v32, 1, AssociatedTypeWitness) == 1)
  {
    v57 = *(v121 + 8);
    v57(v32, v122);
    v58 = v117;
    v59 = v123;
  }

  else
  {
    v60 = *(v36 + 32);
    v60(v45, v32, AssociatedTypeWitness);
    v61 = v109;
    (*(v111 + 40))(AssociatedTypeWitness);
    v62 = PageBlueprint.pagesMatching(marker:)(v61, v124);
    (*(v110 + 8))(v61, v112);
    v126 = v62;
    sub_1D8191484();
    swift_getWitnessTable();
    v63 = v108;
    sub_1D8191844();
    if (__swift_getEnumTagSinglePayload(v63, 1, AssociatedTypeWitness) != 1)
    {
      v69 = v100;
      v60(v100, v63, AssociatedTypeWitness);

      PageViewController.show(page:animated:)(v69);
      v70 = *(v36 + 8);
      v70(v69, AssociatedTypeWitness);
      v70(v45, AssociatedTypeWitness);
      v59 = v123;
      v56 = v124;
      v58 = v117;
LABEL_31:
      v89 = v125;
      goto LABEL_32;
    }

    (*(v36 + 8))(v45, AssociatedTypeWitness);
    v57 = *(v121 + 8);
    v57(v63, v122);

    v58 = v117;
    v59 = v123;
  }

  v64 = v118;
  v65 = v119;
  v56 = v124;
  if (!v59)
  {
    goto LABEL_27;
  }

  v114 = v36;
  v66 = v106;
  sub_1D7FCEFEC(v106);
  if (__swift_getEnumTagSinglePayload(v66, 1, v56))
  {
    v67 = *(v58 + 8);
    v68 = v59;
    v67(v66, v120);
    __swift_storeEnumTagSinglePayload(v65, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v73 = v115;
    v74 = v103;
    (*(v115 + 16))(v103, v66, v56);
    v67 = *(v58 + 8);
    v75 = v123;
    v76 = v66;
    v77 = v75;
    v67(v76, v120);
    swift_getObjectType();
    v126 = v77;
    sub_1D818EF94();
    PageBlueprint.page(after:)(v56, v119);

    v78 = v73;
    v59 = v123;
    v79 = v74;
    v65 = v119;
    (*(v78 + 8))(v79, v56);
    if (__swift_getEnumTagSinglePayload(v65, 1, AssociatedTypeWitness) != 1)
    {
      v36 = v114;
      v81 = v107;
      (*(v114 + 32))(v107, v65, AssociatedTypeWitness);
      __swift_storeEnumTagSinglePayload(v81, 0, 1, AssociatedTypeWitness);
      v64 = v118;
      goto LABEL_25;
    }
  }

  v80 = v105;
  sub_1D7FCEFEC(v105);
  if (__swift_getEnumTagSinglePayload(v80, 1, v56))
  {
    v67(v80, v120);
    v81 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v82 = v115;
    v83 = v103;
    (*(v115 + 16))(v103, v80, v56);
    v67(v80, v120);
    swift_getObjectType();
    v126 = v123;
    sub_1D818EF94();
    v84 = v107;
    PageBlueprint.page(before:)(v56, v107);
    v81 = v84;

    v85 = v82;
    v59 = v123;
    v86 = v83;
    v65 = v119;
    (*(v85 + 8))(v86, v56);
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, AssociatedTypeWitness);
  v36 = v114;
  v64 = v118;
  if (EnumTagSinglePayload != 1)
  {
    v57(v65, v122);
  }

LABEL_25:
  if (__swift_getEnumTagSinglePayload(v81, 1, AssociatedTypeWitness) != 1)
  {
    v91 = v99;
    (*(v36 + 32))(v99, v81, AssociatedTypeWitness);
    PageViewController.show(page:animated:)(v91);

    (*(v36 + 8))(v91, AssociatedTypeWitness);
    goto LABEL_31;
  }

  v57(v81, v122);
LABEL_27:
  swift_getWitnessTable();
  v89 = v125;
  sub_1D8191844();
  if (__swift_getEnumTagSinglePayload(v64, 1, AssociatedTypeWitness) == 1)
  {
    v57(v64, v122);
  }

  else
  {
    v90 = v101;
    (*(v36 + 32))(v101, v64, AssociatedTypeWitness);
    PageViewController.show(page:animated:)(v90);
    (*(v36 + 8))(v90, AssociatedTypeWitness);
  }

LABEL_32:
  v92 = v116;
  sub_1D7FCEFEC(v116);
  if (__swift_getEnumTagSinglePayload(v92, 1, v56) == 1)
  {

    (*(v58 + 8))(v92, v120);
  }

  else
  {
    v93 = v115;
    v94 = v113;
    (*(v115 + 32))(v113, v92, v56);
    if (sub_1D7FCE678())
    {
      (*(*(v104 + 112) + 80))(v89, v94, *(v104 + 88));
      swift_unknownObjectRelease();
    }

    (*(v93 + 8))(v94, v56);
  }

  return sub_1D7FD5970(v2, v89);
}

void sub_1D7FD1064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a4;
  v32 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for PageBlueprint();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v30 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x98));
    v19 = swift_allocObject();
    v29 = a8;
    v20 = v19;
    swift_unknownObjectWeakInit();
    (*(v14 + 16))(v16, a1, v13);
    v21 = (*(v14 + 80) + 72) & ~*(v14 + 80);
    v22 = swift_allocObject();
    v24 = v31;
    v23 = v32;
    *(v22 + 2) = a3;
    *(v22 + 3) = v24;
    *(v22 + 4) = v23;
    *(v22 + 5) = a6;
    v25 = v29;
    *(v22 + 6) = a7;
    *(v22 + 7) = v25;
    *(v22 + 8) = v20;
    (*(v14 + 32))(&v22[v21], v16, v13);
    aBlock[4] = sub_1D7FD6ED8;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7E64940;
    aBlock[3] = &block_descriptor_30;
    v26 = _Block_copy(aBlock);
    v27 = v30;

    [v27 performWhenIdle_];
    _Block_release(v26);

    sub_1D818EF14();
  }
}

void sub_1D7FD1340(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D7FD01F8(a2);
  }
}

void sub_1D7FD139C(void *a1, id a2)
{
  v3 = [a2 activeAppearance];
  v4 = [a1 traitCollection];
  v5 = [v4 activeAppearance];

  if (v3 != v5)
  {
    if (v5)
    {
      v12[0] = 2;
      sub_1D7FD1524(v12, 1.0);
      return;
    }

    if (sub_1D7FCEEE8() && (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBBB30), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v10 + 1))
      {
        sub_1D7E05450(&v9, v12);
        v6 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xC0));
        v7 = v6[3];
        v8 = v6[4];
        __swift_project_boxed_opaque_existential_1(v6, v7);
        (*(v8 + 32))(v12, v7, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        return;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    sub_1D7FBDB74(&v9, &qword_1EDBBBB28, &qword_1EDBBBB30);
  }
}

uint64_t sub_1D7FD1524(char *a1, double a2)
{
  v4 = *a1;
  result = sub_1D7FD5808();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (!sub_1D7FCEEE8() || (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBBB30), (swift_dynamicCast() & 1) == 0))
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1D7FBDB74(&v12, &qword_1EDBBBB28, &qword_1EDBBBB30);
  }

  if (!*(&v13 + 1))
  {
    return sub_1D7FBDB74(&v12, &qword_1EDBBBB28, &qword_1EDBBBB30);
  }

  sub_1D7E05450(&v12, v15);
  v6 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 40))(v15, v7, v8);
  v10 = v6[3];
  v11 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v10);
  if (v9)
  {
    (*(v11 + 24))(v15, v10, v11);
  }

  else
  {
    LOBYTE(v12) = v4;
    (*(v11 + 8))(v15, &v12, v10, v11, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

void sub_1D7FD16D0(void *a1)
{
  v1 = a1;
  sub_1D7FCFD3C();
}

uint64_t sub_1D7FD1718(char a1)
{
  OUTLINED_FUNCTION_7_20();
  v3 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & v4) + 0x60);
  v7 = *((*MEMORY[0x1E69E7D40] & v4) + 0x50);
  v8 = v5;
  v9.receiver = v1;
  v9.super_class = OUTLINED_FUNCTION_20_14();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1 & 1, v7, v8);
  *(v1 + *((*v3 & *v1) + 0xD0)) = 1;
  sub_1D7FD17D8();
  LOBYTE(v7) = 0;
  return sub_1D7FD1524(&v7, 0.0);
}

uint64_t sub_1D7FD17D8()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  sub_1D7FCF2B0();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v3 + 80);
  *(v5 + 32) = *((v2 & v1) + 0x60);
  *(v5 + 40) = *(v3 + 104);
  *(v5 + 56) = *((v2 & v1) + 0x78);
  *(v5 + 64) = v4;

  sub_1D7F19228(sub_1D7FD6EC4, v5);
}

void sub_1D7FD191C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D7FD1718(a3);
}

uint64_t sub_1D7FD1970(char a1)
{
  v2 = v1;
  v4 = (*MEMORY[0x1E69E7D40] & *v2);
  v5 = v4[6];
  v18[0] = v4[5];
  v18[1] = v5;
  v18[2] = v4[7];
  v19.receiver = v2;
  v19.super_class = type metadata accessor for PageViewController();
  objc_msgSendSuper2(&v19, sel_viewDidDisappear_, a1 & 1);
  v6 = [v2 ts_isVideoPlayerPresentedFullScreen];
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_19();
    *(v2 + *(v7 + 208)) = 0;
  }

  if (!sub_1D7FCEEE8() || (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBBB30), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  if (!*(&v16 + 1))
  {
LABEL_9:
    sub_1D7FBDB74(&v15, &qword_1EDBBBB28, &qword_1EDBBBB30);
    return sub_1D7FD1B7C();
  }

  sub_1D7E05450(&v15, v18);
  OUTLINED_FUNCTION_10_19();
  v9 = (v2 + *(v8 + 192));
  v10 = v9[3];
  v11 = v9[4];
  OUTLINED_FUNCTION_141(v9, v10);
  if (v6 & 1 | (((*(v11 + 40))(v18, v10, v11) & 1) == 0))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  v13 = v9[3];
  v14 = v9[4];
  OUTLINED_FUNCTION_141(v9, v13);
  (*(v14 + 32))(v18, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return sub_1D7FD1B7C();
}

uint64_t sub_1D7FD1B7C()
{
  sub_1D7FCF2B0();
  PageSheetPresentationObserver.endObserving()();
}

void sub_1D7FD1BB8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D7FD1970(a3);
}

void sub_1D7FD1C0C()
{
  OUTLINED_FUNCTION_7_20();
  v1 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & v2) + 0x50);
  v11 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v12.receiver = v0;
  v12.super_class = OUTLINED_FUNCTION_20_14();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews, v10, v11);
  v3 = [*(v0 + *((*v1 & *v0) + 0x98)) view];
  if (v3)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_37_9();
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      OUTLINED_FUNCTION_9_0();

      v7 = OUTLINED_FUNCTION_8_0();
      [v8 v9];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D7FD1D20(void *a1)
{
  v1 = a1;
  sub_1D7FD1C0C();
}

void sub_1D7FD1D68()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v105 = v3;
  v101 = v4;
  v6 = v5;
  v7 = (*MEMORY[0x1E69E7D40] & *v0);
  v8 = v7[13];
  v9 = v7[10];
  OUTLINED_FUNCTION_13_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1D8191E84();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v98 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v102 = v14;
  v110 = v9;
  v111 = v8;
  OUTLINED_FUNCTION_27_11();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_0();
  v96 = v15;
  v16 = type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_9();
  v104 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94();
  v103 = v19;
  OUTLINED_FUNCTION_2();
  v109 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23();
  v99 = v22;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_24_1();
  v97 = v24;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_24_1();
  v106 = v26;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_24_1();
  v107 = v28;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_2();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23();
  v95 = v33;
  OUTLINED_FUNCTION_77();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v87 - v36;
  v100 = v6;
  v38 = [v6 visibleViewController];
  if (!v38)
  {
    goto LABEL_33;
  }

  v39 = v38;
  v93 = v16;
  sub_1D7FD28C4(v38, v1);
  OUTLINED_FUNCTION_43_0(v1, 1, AssociatedTypeWitness);
  if (v70)
  {

    (*(v109 + 8))(v1, v11);
    goto LABEL_33;
  }

  v91 = v11;
  v94 = v31;
  v40 = *(v31 + 32);
  v89 = v31 + 32;
  v88 = v40;
  v40(v37, v1, AssociatedTypeWitness);
  v41 = sub_1D7FCE678();
  v42 = v7;
  v43 = v101;
  if (v41)
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_21_14();
    v44();
    v45 = v103;
    sub_1D818F154();

    (*(v42[14] + 32))(v45, v37, v39, v43, v105, v42[11]);
    swift_unknownObjectRelease();
    (*(v104 + 8))(v45, v93);
  }

  OUTLINED_FUNCTION_14_17();
  (*(v42[15] + 24))(v37, v42[12]);
  if (v43)
  {
    v115 = v43;
    sub_1D7E194D0();
    sub_1D7E0631C(0, &qword_1EDBBBB30);
    v46 = v43;
    v47 = swift_dynamicCast();
    v48 = v91;
    if (v47)
    {
      if (v114)
      {
        sub_1D7E05450(&v113, &v115);
        OUTLINED_FUNCTION_10_19();
        v50 = (v2 + *(v49 + 192));
        v52 = v50[3];
        v51 = v50[4];
        OUTLINED_FUNCTION_141(v50, v52);
        (*(v51 + 32))(&v115, v52, v51);
        __swift_destroy_boxed_opaque_existential_1Tm(&v115);
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_28_9();
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
    v48 = v91;
  }

  sub_1D7FBDB74(&v113, &qword_1EDBBBB28, &qword_1EDBBBB30);
LABEL_14:
  v112 = v39;
  sub_1D7E194D0();
  sub_1D7E0631C(0, &qword_1EDBBBB30);
  v101 = v39;
  v53 = swift_dynamicCast();
  v92 = v42;
  if (v53)
  {
    sub_1D7E05450(&v113, &v115);
    OUTLINED_FUNCTION_10_19();
    v55 = (v2 + *(v54 + 192));
    v56 = v55[3];
    v57 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v56);
    sub_1D7FD2B24(v2, v105, &v113);
    PageSessionManagerType.startSession(for:trigger:)(&v115, &v113, v56, v57);
    __swift_destroy_boxed_opaque_existential_1Tm(&v115);
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
    sub_1D7FBDB74(&v113, &qword_1EDBBBB28, &qword_1EDBBBB30);
  }

  v58 = v106;
  v59 = v107;
  sub_1D7FCEA94(v107);
  v60 = *(v94 + 16);
  v105 = v37;
  v91 = v94 + 16;
  v90 = v60;
  v60(v58, v37, AssociatedTypeWitness);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, AssociatedTypeWitness);
  v64 = v109;
  v65 = *(TupleTypeMetadata2 + 48);
  v66 = *(v109 + 16);
  v67 = v102;
  v66(v102, v59, v48);
  v66(v67 + v65, v58, v48);
  OUTLINED_FUNCTION_43_0(v67, 1, AssociatedTypeWitness);
  if (v70)
  {
    v68 = *(v64 + 8);
    v68(v58, v48);
    v68(v59, v48);
    OUTLINED_FUNCTION_43_0(v67 + v65, 1, AssociatedTypeWitness);
    if (v70)
    {
      v68(v67, v48);
      v7 = v92;
      (*(v94 + 8))(v105, AssociatedTypeWitness);
LABEL_30:

      goto LABEL_33;
    }
  }

  else
  {
    v69 = v97;
    v66(v97, v67, v48);
    OUTLINED_FUNCTION_43_0(v67 + v65, 1, AssociatedTypeWitness);
    if (!v70)
    {
      v84 = v95;
      v88(v95, v67 + v65, AssociatedTypeWitness);
      LODWORD(TupleTypeMetadata2) = sub_1D8190ED4();
      v85 = *(v94 + 8);
      v85(v84, AssociatedTypeWitness);
      v86 = *(v109 + 8);
      v86(v106, v48);
      v86(v107, v48);
      v85(v69, AssociatedTypeWitness);
      v86(v67, v48);
      v7 = v92;
      if (TupleTypeMetadata2)
      {
        v85(v105, AssociatedTypeWitness);
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    v71 = *(v109 + 8);
    v71(v106, v48);
    v71(v107, v48);
    (*(v94 + 8))(v69, AssociatedTypeWitness);
  }

  v72 = OUTLINED_FUNCTION_134_0();
  v73(v72, TupleTypeMetadata2);
  v7 = v92;
LABEL_26:
  v74 = v99;
  v75 = v105;
  v90(v99, v105, AssociatedTypeWitness);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, AssociatedTypeWitness);
  sub_1D7FCEB64(v74);
  v79 = [v100 visibleViewController];
  sub_1D7FCED3C();
  if (sub_1D7FCE678())
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_21_14();
    v80();
    v81 = v103;
    sub_1D818F154();

    (*(v7[14] + 40))(v81, v75, v7[11]);

    swift_unknownObjectRelease();
    v82 = OUTLINED_FUNCTION_134_0();
    v83(v82, v93);
  }

  else
  {
  }

  (*(v94 + 8))(v75, AssociatedTypeWitness);
LABEL_33:
  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_15_2();
  v115 = v110;
  v116 = *(v7 + 11);
  v117 = v111;
  v118 = *(v7 + 7);
  type metadata accessor for PageViewController.NavigationAction();
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  sub_1D8191474();
  swift_endAccess();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FD28C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PageBlueprint();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - v10;
  swift_getObjectType();
  v12 = dynamic_cast_existential_1_conditional(a1);
  if (v12)
  {
    v14 = v12;
    v19[1] = a2;
    v20 = v8;
    v15 = *(v5 + 24);
    v19[0] = v13;
    v16 = a1;
    v15(v6, v5);
    sub_1D818F154();

    swift_getObjectType();
    v21 = v14;
    sub_1D818EF94();
    v17 = v20;
    PageBlueprint.page(for:)();

    return (*(v9 + 8))(v11, v17);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_1D7FD2B24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  sub_1D7FCF200();
  v8 = *(v5 + 80);
  type metadata accessor for PageViewController.NavigationAction();
  sub_1D8191484();
  swift_getWitnessTable();
  sub_1D8190E74();

  if (v8 == 2 || (v8 & 1) != 0)
  {
    v7 = a2 != 0;
  }

  else
  {
    v7 = 3;
  }

  *a3 = v7;
  return result;
}

void sub_1D7FD2C30(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D7FD1D68();
}

id sub_1D7FD2CD4(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_1D818E2D4();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v30 - v15;
  v17 = (*(v5 + 528))(a1, a2, v14);
  (*(v13 + 16))(v16, a1, AssociatedTypeWitness);
  sub_1D7E0631C(0, qword_1EDBB65E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_1D7FBDB74(&v34, &unk_1EDBB65D0, qword_1EDBB65E0);
    return v17;
  }

  sub_1D7E05450(&v34, v37);
  v18 = v38;
  v19 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v19 + 8))(&v32, v18, v19);
  if (!v33)
  {
    sub_1D7FBDB74(&v32, &unk_1EDBBC730, &unk_1EDBBC740);
    goto LABEL_7;
  }

  sub_1D7E05450(&v32, &v34);
  sub_1D818E284();
  result = [v17 view];
  if (result)
  {
    v21 = result;
    v22 = *(&v35 + 1);
    v30[1] = v36;
    v23 = __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    v24 = sub_1D818FD34();
    v25 = MEMORY[0x1EEE9AC00](v24);
    (*(v27 + 16))(v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v22, v25);
    v28 = v31;
    (*(v31 + 16))(v8, v11, v6);
    v29 = sub_1D818FD24();
    sub_1D8191C64();

    (*(v28 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(&v34);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    return v17;
  }

  __break(1u);
  return result;
}

id sub_1D7FD3128(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D7FD2CBC();
  v10 = v9;

  return v10;
}

void sub_1D7FD31B0()
{
  OUTLINED_FUNCTION_120();
  v43 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_10_19();
  v5 = *(v4 + 104);
  v8 = *((v7 & v6) + 0x50);
  OUTLINED_FUNCTION_41_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = v8;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_0();
  v38 = v10;
  type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_9();
  v41 = v12;
  v42 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51();
  v14 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23();
  v39 = v18;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  OUTLINED_FUNCTION_2();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23();
  v37 = v25;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_30_10();
  sub_1D7FD28C4(v3, v21);
  OUTLINED_FUNCTION_43_0(v21, 1, AssociatedTypeWitness);
  if (v31)
  {
    (*(v16 + 8))(v21, v14);
  }

  else
  {
    v35 = v16;
    v36 = v14;
    v27 = v23;
    v34 = *(v23 + 32);
    v34(v8, v21, AssociatedTypeWitness);
    OUTLINED_FUNCTION_10_19();
    (*(v5 + 24))(v40, v5);
    sub_1D818F154();

    v28 = sub_1D818EF94();
    v29 = v39;
    v30 = v42;
    v43(v28);

    (*(v41 + 8))(v0, v30);
    OUTLINED_FUNCTION_43_0(v29, 1, AssociatedTypeWitness);
    if (v31)
    {
      (*(v27 + 8))(v8, AssociatedTypeWitness);
      (*(v35 + 8))(v29, v36);
    }

    else
    {
      v32 = v37;
      v34(v37, v29, AssociatedTypeWitness);
      sub_1D7FD2CD4(v32, 0);
      v33 = *(v27 + 8);
      v33(v32, AssociatedTypeWitness);
      v33(v8, AssociatedTypeWitness);
    }
  }

  OUTLINED_FUNCTION_100();
}

id sub_1D7FD3588(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D7FD3198();
  v10 = v9;

  return v10;
}

void sub_1D7FD35F8()
{
  OUTLINED_FUNCTION_120();
  v40 = v1;
  v41 = v2;
  v4 = v3;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v39 = *MEMORY[0x1E69E7D40] & *v0;
  v7 = *((v6 & v5) + 0x68);
  v8 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_13_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = v7;
  v35 = v8;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29_8();
  v38 = type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_9();
  v36 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  v34 = v12;
  sub_1D818E2D4();
  OUTLINED_FUNCTION_9();
  v42 = v14;
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v18 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v20 = v19;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  OUTLINED_FUNCTION_2();
  v25 = v24;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v34 - v27;
  sub_1D7FD28C4(v4, v23);
  OUTLINED_FUNCTION_7_4(v23);
  if (v29)
  {
    (*(v20 + 8))(v23, v18);
LABEL_8:
    OUTLINED_FUNCTION_100();
    return;
  }

  (*(v25 + 32))(v28, v23, AssociatedTypeWitness);
  v30 = [v4 view];
  if (v30)
  {
    v31 = v30;
    sub_1D818E2B4();
    sub_1D8191C54();

    (*(v42 + 8))(v17, v43);
    if (sub_1D7FCE678())
    {
      OUTLINED_FUNCTION_21_14();
      v32(v35);
      v33 = v34;
      sub_1D818F154();

      (*(*(v39 + 112) + 56))(v33, v28, v40 & 1, v4, v41, *(v39 + 88));
      swift_unknownObjectRelease();
      (*(v36 + 8))(v33, v38);
    }

    (*(v25 + 8))(v28, AssociatedTypeWitness);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1D7FD39F0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  sub_1D7FD35F8();
}

void sub_1D7FD3A88()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v37 = *MEMORY[0x1E69E7D40] & *v0;
  v6 = *((v5 & v4) + 0x68);
  v7 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = v6;
  v34 = v7;
  OUTLINED_FUNCTION_39_6();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29_8();
  v35 = type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_9();
  v33[1] = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_94();
  v33[0] = v11;
  sub_1D818E2D4();
  OUTLINED_FUNCTION_9();
  v38 = v13;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  v17 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - v21;
  OUTLINED_FUNCTION_2();
  v24 = v23;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_51();
  sub_1D7FD28C4(v3, v22);
  OUTLINED_FUNCTION_7_4(v22);
  if (v26)
  {
    (*(v19 + 8))(v22, v17);
LABEL_8:
    OUTLINED_FUNCTION_100();
    return;
  }

  (*(v24 + 32))(v1, v22, AssociatedTypeWitness);
  v27 = [v3 view];
  if (v27)
  {
    v28 = v27;
    sub_1D818E284();
    sub_1D8191C54();

    (*(v38 + 8))(v16, v39);
    if (sub_1D7FCE678())
    {
      OUTLINED_FUNCTION_21_14();
      v29(v34);
      v30 = v33[0];
      sub_1D818F154();

      (*(*(v37 + 112) + 64))(v30, v1, *(v37 + 88));
      swift_unknownObjectRelease();
      v31 = OUTLINED_FUNCTION_134_0();
      v32(v31, v35);
    }

    (*(v24 + 8))(v1, AssociatedTypeWitness);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1D7FD3E78(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D7FD3A88();
}

uint64_t sub_1D7FD3EEC(void *a1, void *a2, uint64_t a3, double a4)
{
  v99 = a3;
  v89 = a1;
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v98 = *MEMORY[0x1E69E7D40] & *v4;
  v10 = *((v9 & v8) + 0x68);
  v11 = *((v9 & v8) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1D8191E84();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v87 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_51();
  v96 = v11;
  v97 = v10;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29_8();
  v85 = v16;
  v17 = type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_9();
  v95 = v18;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_94();
  v94 = v20;
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23();
  v88 = v24;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_24_1();
  v86 = v26;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_24_1();
  v90 = v28;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_24_1();
  v91 = v30;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_2();
  v101 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23();
  v84 = v34;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v35);
  v100 = v80 - v36;
  if (sub_1D8190B24())
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2))
    {
      v38 = v37;
      v93 = v5;
      v83 = v17;
      v39 = a2;
      v40 = a2;
      v41 = [v89 visibleViewController];
      v42 = v41;
      if (v41)
      {

        v42 = v42 == v40;
      }

      ObjectType = swift_getObjectType();
      (*(v38 + 8))(v99, v42, ObjectType, v38, a4);

      a2 = v39;
      v17 = v83;
      v5 = v93;
    }
  }

  sub_1D7FD28C4(a2, v10);
  OUTLINED_FUNCTION_7_4(v10);
  if (v62)
  {
    return (*(v22 + 8))(v10, v13);
  }

  v93 = v5;
  v89 = a2;
  v45 = v100;
  v46 = v101 + 32;
  OUTLINED_FUNCTION_39_6();
  v82 = v47;
  v47();
  if (sub_1D7FCE678())
  {
    OUTLINED_FUNCTION_21_14();
    v48();
    v49 = v94;
    sub_1D818F154();

    (*(*(v98 + 112) + 48))(v49, v45, v99, *(v98 + 88), a4);
    swift_unknownObjectRelease();
    (*(v95 + 8))(v49, v17);
  }

  if (a4 <= 0.5)
  {
    return (*(v101 + 8))(v100, AssociatedTypeWitness);
  }

  v80[1] = v46;
  v83 = v17;
  v50 = *(v101 + 16);
  v51 = v91;
  v99 = v101 + 16;
  v81 = v50;
  v50(v91, v100, AssociatedTypeWitness);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, AssociatedTypeWitness);
  v55 = v13;
  v56 = v90;
  sub_1D7FCEA94(v90);
  v57 = v93;
  v58 = *(TupleTypeMetadata2 + 48);
  v59 = *(v22 + 16);
  v59(v93, v51, v55);
  v59(v57 + v58, v56, v55);
  OUTLINED_FUNCTION_7_4(v57);
  if (v62)
  {
    v60 = *(v22 + 8);
    v60(v56, v55);
    v60(v51, v55);
    OUTLINED_FUNCTION_7_4(v57 + v58);
    if (v62)
    {
      v60(v57, v55);
      return (*(v101 + 8))(v100, AssociatedTypeWitness);
    }

    goto LABEL_21;
  }

  v61 = v86;
  v59(v86, v57, v55);
  OUTLINED_FUNCTION_7_4(v57 + v58);
  v63 = v55;
  if (v62)
  {
    v64 = *(v22 + 8);
    v64(v90, v55);
    v64(v91, v55);
    (*(v101 + 8))(v61, AssociatedTypeWitness);
LABEL_21:
    (*(v87 + 8))(v57, TupleTypeMetadata2);
    goto LABEL_22;
  }

  v75 = v84;
  (v82)(v84, v57 + v58, AssociatedTypeWitness);
  v76 = sub_1D8190ED4();
  v77 = *(v101 + 8);
  v77(v75, AssociatedTypeWitness);
  v78 = *(v22 + 8);
  v78(v90, v63);
  v78(v91, v63);
  v77(v61, AssociatedTypeWitness);
  v79 = OUTLINED_FUNCTION_90_0();
  (v78)(v79);
  if (v76)
  {
    return (v77)(v100, AssociatedTypeWitness);
  }

LABEL_22:
  v65 = v88;
  v66 = v100;
  v81(v88, v100, AssociatedTypeWitness);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, AssociatedTypeWitness);
  sub_1D7FCEB64(v65);
  v70 = v89;
  sub_1D7FCED3C();
  if (sub_1D7FCE678())
  {
    OUTLINED_FUNCTION_21_14();
    v71();
    v72 = v94;
    sub_1D818F154();

    (*(*(v98 + 112) + 40))(v72, v66, *(v98 + 88));
    swift_unknownObjectRelease();
    v73 = OUTLINED_FUNCTION_134_0();
    v74(v73, v83);
  }

  return (*(v101 + 8))(v66, AssociatedTypeWitness);
}

void sub_1D7FD4788(void *a1, double a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a4;
  v11 = a5;
  v12 = a1;
  sub_1D7FD3EEC(v10, v11, a6, a2);
}

uint64_t sub_1D7FD4824()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41_6();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 32);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

id PageViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1D7FD49A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  PageViewController.init(nibName:bundle:)();
}

id PageViewController.__deallocating_deinit()
{
  OUTLINED_FUNCTION_7_20();
  v3 = *((*MEMORY[0x1E69E7D40] & v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & v1) + 0x60);
  v5.receiver = v0;
  v5.super_class = OUTLINED_FUNCTION_20_14();
  return objc_msgSendSuper2(&v5, sel_dealloc, v3, v4);
}

uint64_t sub_1D7FD4A38()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  MEMORY[0x1DA715E30](&v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x80)]);
  OUTLINED_FUNCTION_1_71();
  v5 = *(v4 + 136);
  v6 = *((v3 & v2) + 0x50);
  swift_getAssociatedTypeWitness();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  (*(v7 + 8))(&v1[v5]);
  OUTLINED_FUNCTION_1_71();

  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_1_71();
  (*(*(v6 - 8) + 8))(&v1[*(v10 + 160)], v6);
  OUTLINED_FUNCTION_1_71();
  v12 = *(v11 + 168);
  OUTLINED_FUNCTION_41_6();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_52();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  (*(v13 + 8))(&v1[v12]);
  OUTLINED_FUNCTION_1_71();
  (*(*(*((v3 & v2) + 0x60) - 8) + 8))(&v1[*(v14 + 176)]);
  OUTLINED_FUNCTION_1_71();

  OUTLINED_FUNCTION_1_71();
  __swift_destroy_boxed_opaque_existential_1Tm(&v1[*(v15 + 192)]);
  OUTLINED_FUNCTION_1_71();

  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_100();
}

void PageViewController.show(page:animated:)(uint64_t a1)
{
  v2 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98));
  v3 = sub_1D7FD2CD4(a1, 1);
  [v2 setVisibleViewController_];
}

Swift::Bool __swiftcall PageViewController.showPage(for:animated:)(Swift::String a1, Swift::Bool animated)
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v55 = v4;
  v58 = v5;
  v59 = v6;
  v7 = *v2;
  v8 = *MEMORY[0x1E69E7D40];
  v54 = (*MEMORY[0x1E69E7D40] & v7);
  v9 = *((v8 & v7) + 0x68);
  v10 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v46 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v53 = v14;
  OUTLINED_FUNCTION_2();
  v49 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_94();
  v47 = v17;
  sub_1D818F5F4();
  OUTLINED_FUNCTION_9();
  v51 = v19;
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v50 = v21 - v20;
  OUTLINED_FUNCTION_90_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_0();
  v56 = AssociatedTypeWitness;
  v22 = type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_9();
  v24 = v23;
  OUTLINED_FUNCTION_44();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v46 - v27;
  v29 = *(v9 + 24);
  v57 = v10;
  v29(v10, v9, v26);
  sub_1D818F154();

  swift_getWitnessTable();
  LOBYTE(v8) = sub_1D8191874();
  v30 = *(v24 + 8);
  v30(v28, v22);
  if (v8)
  {
    OUTLINED_FUNCTION_10_19();
    v31 = v50;
    sub_1D818F5E4();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v57;
    v34 = v54;
    *(v33 + 24) = v54[11];
    *(v33 + 32) = v34[12];
    *(v33 + 40) = v9;
    *(v33 + 48) = v34[14];
    *(v33 + 56) = v34[15];
    *(v33 + 64) = v32;
    v35 = v59;
    *(v33 + 72) = v58;
    *(v33 + 80) = v35;
    *(v33 + 88) = v55 & 1;

    sub_1D8190DB4();
    sub_1D818EF44();

    (*(v51 + 8))(v31, v52);
  }

  else
  {
    (v29)(v57, v9);
    sub_1D818F154();

    v36 = v53;
    PageBlueprint.page(for:)();
    v30(v28, v22);
    v37 = v56;
    OUTLINED_FUNCTION_43_0(v36, 1, v56);
    if (v38)
    {
      (*(v46 + 8))(v36, v48);
    }

    else
    {
      v39 = v47;
      (*(v49 + 32))(v47, v36, v37);
      OUTLINED_FUNCTION_10_19();
      v41 = *(v3 + *(v40 + 152));
      v42 = sub_1D7FD2CD4(v39, 1);
      [v41 setVisibleViewController_];

      v43 = OUTLINED_FUNCTION_90_0();
      v44(v43);
    }
  }

  OUTLINED_FUNCTION_100();
  return result;
}

void sub_1D7FD527C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9._countAndFlagsBits = a2;
    v9._object = a3;
    PageViewController.showPage(for:animated:)(v9, a4 & 1);
  }
}

id sub_1D7FD5314(uint64_t a1, SEL *a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_7_20();
  v5 = MEMORY[0x1E69E7D40];
  v7 = (*MEMORY[0x1E69E7D40] & v6);
  OUTLINED_FUNCTION_15_2();
  v9 = v7[5];
  v10 = v7[6];
  v11 = v7[7];
  type metadata accessor for PageViewController.NavigationAction();
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  sub_1D8191434();
  swift_endAccess();
  return [*(v4 + *((*v5 & *v4) + 0x98)) *a2];
}

Swift::Void __swiftcall PageViewController.setHardPocket(for:)(UIRectEdge a1)
{
  OUTLINED_FUNCTION_34_0();
  v4 = [*(v2 + *((*MEMORY[0x1E69E7D40] & v3) + 0x98)) scrollView];
  [v4 _setPocketStyle_forEdge_];
}

uint64_t PageViewController.identifier.getter()
{
  if (!sub_1D7FCEEE8() || (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBC530), (swift_dynamicCast() & 1) == 0))
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    goto LABEL_6;
  }

  if (!*(&v3 + 1))
  {
LABEL_6:
    sub_1D7FBDB74(&v2, &qword_1EDBBC520, &qword_1EDBBC530);
    return 0;
  }

  sub_1D7E05450(&v2, v5);
  OUTLINED_FUNCTION_141(v5, v5[3]);
  v0 = sub_1D818EF94();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v0;
}

Swift::Void __swiftcall PageViewController.sceneWillResignActive()()
{
  v1 = sub_1D7FCEEE8();
  if (v1 && (v8[0] = v1, sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBBB30), (OUTLINED_FUNCTION_2_2() & 1) != 0))
  {
    if (*(&v6 + 1))
    {
      sub_1D7E05450(&v5, v8);
      v2 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0));
      v3 = v2[3];
      v4 = v2[4];
      OUTLINED_FUNCTION_141(v2, v3);
      (*(v4 + 16))(v8, v3, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      return;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  sub_1D7FBDB74(&v5, &qword_1EDBBBB28, &qword_1EDBBBB30);
}

Swift::Void __swiftcall PageViewController.sceneDidEnterBackground()()
{
  v1 = sub_1D7FCEEE8();
  if (v1 && (v8[0] = v1, sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBBB30), (OUTLINED_FUNCTION_2_2() & 1) != 0))
  {
    if (*(&v6 + 1))
    {
      sub_1D7E05450(&v5, v8);
      v2 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0));
      v3 = v2[3];
      v4 = v2[4];
      OUTLINED_FUNCTION_141(v2, v3);
      (*(v4 + 32))(v8, v3, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      return;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  sub_1D7FBDB74(&v5, &qword_1EDBBBB28, &qword_1EDBBBB30);
}

id sub_1D7FD5808()
{
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0)) != 1 || !sub_1D7FD5870())
  {
    return 0;
  }

  return sub_1D7FD58C4();
}

BOOL sub_1D7FD5870()
{
  v1 = [v0 traitCollection];
  v2 = [v1 activeAppearance];

  return v2 != 0;
}

id sub_1D7FD58C4()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 activationState];

      return (v5 == 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7FD5970(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for PageBlueprint();
  v4 = sub_1D8191E84();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  (*(*(v3 - 8) + 16))(&v9 - v6, a2, v3, v5);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v3);
  return sub_1D7FCF0F0(v7);
}

uint64_t sub_1D7FD5ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v70 = &v60[-v7];
  v8 = sub_1D8191E84();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v76 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v60[-v11];
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v60[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v60[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v60[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60[-v24];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = a2;
  result = static PageBlueprint.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v68 = v6;
    v28 = type metadata accessor for PageBlueprint();
    swift_getWitnessTable();
    if (sub_1D8191874() & 1) == 0 || (sub_1D8191874())
    {
      v63 = *(AssociatedConformanceWitness + 8);
      v29 = *(v63 + 16);
      sub_1D818EF94();
      v67 = a1;
      PageBlueprint.page(before:)(v28, v25);

      sub_1D818EF94();
      v64 = v28;
      PageBlueprint.page(before:)(v28, v22);

      v30 = *(TupleTypeMetadata2 + 48);
      v31 = v79;
      v32 = *(v79 + 16);
      v33 = v72;
      v32(v72, v25, v8);
      v32(v33 + v30, v22, v8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, AssociatedTypeWitness);
      v65 = v32;
      if (EnumTagSinglePayload == 1)
      {
        v62 = v29;
        v35 = *(v31 + 8);
        v35(v22, v8);
        v35(v25, v8);
        v36 = __swift_getEnumTagSinglePayload(v33 + v30, 1, AssociatedTypeWitness);
        v66 = v35;
        if (v36 == 1)
        {
          v35(v33, v8);
          v37 = v76;
          v38 = v74;
          goto LABEL_15;
        }

        v37 = v76;
        v38 = v74;
      }

      else
      {
        v39 = v71;
        v32(v71, v33, v8);
        if (__swift_getEnumTagSinglePayload(v33 + v30, 1, AssociatedTypeWitness) != 1)
        {
          v49 = v33 + v30;
          v50 = v70;
          (*(v68 + 32))(v70, v49, AssociatedTypeWitness);
          v61 = sub_1D8190ED4();
          v51 = *(v68 + 8);
          v51(v50, AssociatedTypeWitness);
          v62 = v29;
          v52 = *(v79 + 8);
          v52(v22, v8);
          v52(v25, v8);
          v51(v71, AssociatedTypeWitness);
          v66 = v52;
          v52(v33, v8);
          v37 = v76;
          v38 = v74;
          if (v61)
          {
LABEL_15:
            sub_1D818EF94();
            v42 = v64;
            PageBlueprint.page(after:)(v64, v38);

            sub_1D818EF94();
            v43 = v73;
            PageBlueprint.page(after:)(v42, v73);

            v44 = *(TupleTypeMetadata2 + 48);
            v45 = v65;
            v65(v37, v38, v8);
            v45(v37 + v44, v43, v8);
            if (__swift_getEnumTagSinglePayload(v37, 1, AssociatedTypeWitness) == 1)
            {
              v46 = v66;
              v66(v43, v8);
              v46(v38, v8);
              if (__swift_getEnumTagSinglePayload(v37 + v44, 1, AssociatedTypeWitness) == 1)
              {
                return (v46)(v37, v8);
              }
            }

            else
            {
              v47 = v69;
              v45(v69, v37, v8);
              if (__swift_getEnumTagSinglePayload(v37 + v44, 1, AssociatedTypeWitness) != 1)
              {
                v53 = v43;
                v54 = v68;
                v55 = v70;
                (*(v68 + 32))(v70, v37 + v44, AssociatedTypeWitness);
                v56 = sub_1D8190ED4();
                v57 = *(v54 + 8);
                v57(v55, AssociatedTypeWitness);
                v58 = v53;
                v59 = v66;
                v66(v58, v8);
                v59(v38, v8);
                v57(v47, AssociatedTypeWitness);
                result = (v59)(v37, v8);
                if (v56)
                {
                  return result;
                }

                return [*(v77 + *((*MEMORY[0x1E69E7D40] & *v77) + 0x98)) reindexNextViewControllers];
              }

              v48 = v66;
              v66(v43, v8);
              v48(v38, v8);
              (*(v68 + 8))(v47, AssociatedTypeWitness);
            }

            (*(v75 + 8))(v37, TupleTypeMetadata2);
            return [*(v77 + *((*MEMORY[0x1E69E7D40] & *v77) + 0x98)) reindexNextViewControllers];
          }

LABEL_14:
          [*(v77 + *((*MEMORY[0x1E69E7D40] & *v77) + 0x98)) reindexPreviousViewControllers];
          goto LABEL_15;
        }

        v40 = *(v79 + 8);
        v40(v22, v8);
        v66 = v40;
        v40(v25, v8);
        (*(v68 + 8))(v39, AssociatedTypeWitness);
        v37 = v76;
        v38 = v74;
      }

      (*(v75 + 8))(v33, TupleTypeMetadata2);
      goto LABEL_14;
    }

    v41 = *(v77 + *((*MEMORY[0x1E69E7D40] & *v77) + 0x98));

    return [v41 reindexViewControllers];
  }

  return result;
}

void sub_1D7FD6498(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v10[0] = 0;
      sub_1D7FD1524(v10, 0.0);

      return;
    }

    if (sub_1D7FCEEE8())
    {
      sub_1D7E194D0();
      sub_1D7E0631C(0, &qword_1EDBBBB30);
      if (swift_dynamicCast())
      {
        if (*(&v8 + 1))
        {
          sub_1D7E05450(&v7, v10);
          v4 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xC0));
          v5 = v4[3];
          v6 = v4[4];
          __swift_project_boxed_opaque_existential_1(v4, v5);
          (*(v6 + 32))(v10, v5, v6);

          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          return;
        }
      }

      else
      {
        v9 = 0;
        v7 = 0u;
        v8 = 0u;
      }
    }

    else
    {

      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }

    sub_1D7FBDB74(&v7, &qword_1EDBBBB28, &qword_1EDBBBB30);
  }
}

id sub_1D7FD6620(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1D8190EE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithNibName:v5 bundle:a3];

  return v6;
}

_BYTE *sub_1D7FD6D24(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D7FD6DF0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1D7FD6ED8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_39_6();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_100();

  sub_1D7FD1340(v0, v1);
}

uint64_t CloseButton.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D7FD7060()
{
  sub_1D7E9F44C();
  result = sub_1D8191CA4();
  qword_1EDBB1CB0 = result;
  return result;
}

uint64_t sub_1D7FD70A8()
{
  sub_1D7E9F44C();
  result = sub_1D8191CA4();
  qword_1EDBB1CC8 = result;
  return result;
}

id sub_1D7FD7110(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle_];
  *a3 = result;
  return result;
}

Swift::Void __swiftcall CloseButton.transition(to:duration:)(TeaUI::CloseButton::Style to, Swift::Double duration)
{
  v4 = *to;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  v9[4] = sub_1D7FD7B14;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7E64940;
  v9[3] = &block_descriptor_31;
  v7 = _Block_copy(v9);
  v8 = v2;

  [v5 animateWithDuration:4 delay:v7 options:0 animations:duration completion:0.0];
  _Block_release(v7);
}

void sub_1D7FD729C(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI11CloseButton_style);
  *(v1 + OBJC_IVAR____TtC5TeaUI11CloseButton_style) = *a1;
  v3 = v2;
  sub_1D7FD72D8(&v3);
}

void sub_1D7FD72D8(unsigned __int8 *a1)
{
  if (*a1 != *(v1 + OBJC_IVAR____TtC5TeaUI11CloseButton_style))
  {
    sub_1D7FD7318();
  }
}

void sub_1D7FD7318()
{
  v1 = sub_1D7FD73C0();
  v2 = OBJC_IVAR____TtC5TeaUI11CloseButton_style;
  v6 = v0[OBJC_IVAR____TtC5TeaUI11CloseButton_style];
  v3 = sub_1D7FD74E4(&v6);
  [v1 setEffect_];

  v5 = v0[v2];
  v4 = sub_1D7FD7854(&v5);
  [v0 setTintColor_];
}

id sub_1D7FD73C0()
{
  v1 = OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton_style);
    v4 = sub_1D7FD74E4(&v11);
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    v6 = v5;
    [v6 setClipsToBounds_];
    v7 = [v6 layer];
    [v7 setCornerRadius_];

    [v6 setUserInteractionEnabled_];
    [v6 setFrame_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1D7FD74E4(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDBB1CF0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBB1CF8;
  }

  else
  {
    if (qword_1EDBB1CD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBB1CE0;
  }

  v2 = *v1;

  return v2;
}

id CloseButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloseButton.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC5TeaUI11CloseButton_style] = 1;
  *&v0[OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing] = 0;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 28.0, 28.0);
  OUTLINED_FUNCTION_3_2(v2, sel_setContentEdgeInsets_);
  OUTLINED_FUNCTION_3_2(v2, sel_setTitleEdgeInsets_);
  v3 = v2;
  OUTLINED_FUNCTION_3_2(v3, sel_setImageEdgeInsets_);
  [v3 setContentHorizontalAlignment_];
  [v3 setContentVerticalAlignment_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1D818E514();
  v8 = v7;

  sub_1D806B194(v6, v8, v3);
  v14 = *(v3 + OBJC_IVAR____TtC5TeaUI11CloseButton_style);
  v9 = sub_1D7FD7854(&v14);
  [v3 setTintColor_];

  if (qword_1EDBAE830 != -1)
  {
    swift_once();
  }

  v10 = [qword_1EDBC5F80 imageWithRenderingMode_];
  [v3 setImage:v10 forState:0];

  v11 = [v3 imageView];
  v12 = v3;
  if (v11)
  {
    v12 = sub_1D7FD73C0();
    [v3 insertSubview:v12 belowSubview:v11];
  }

  return v3;
}

id sub_1D7FD7854(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDBB1CC0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBB1CC8;
  }

  else
  {
    if (qword_1EDBB1CA8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBB1CB0;
  }

  v2 = *v1;

  return v2;
}

void sub_1D7FD791C()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton_style) = 1;
  *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing) = 0;
  sub_1D81923A4();
  __break(1u);
}

id CloseButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CloseButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D7FD7B24()
{
  result = qword_1ECA0EEB8;
  if (!qword_1ECA0EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EEB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloseButton.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

id GradientView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

uint64_t GradientView.gradientDescriptor.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), 0x49uLL);
  memcpy(v9, (v1 + v3), 0x49uLL);
  memcpy((v1 + v3), a1, 0x49uLL);
  OUTLINED_FUNCTION_0_94();
  sub_1D7E4B208(__dst, __src, v4, v5);
  sub_1D7FD7D80(v9);
  memcpy(__src, __dst, 0x49uLL);
  sub_1D7FD7FE4(__src);
  return sub_1D7FD7D80(__dst);
}

uint64_t sub_1D7FD7D80(uint64_t a1)
{
  sub_1D7E4B1B4(0, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GradientView.gradientLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  OUTLINED_FUNCTION_1_73();

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t GradientView.gradientDescriptor.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  OUTLINED_FUNCTION_8_4();
  memcpy(__dst, (v1 + v3), 0x49uLL);
  memcpy(a1, (v1 + v3), 0x49uLL);
  OUTLINED_FUNCTION_0_94();
  return sub_1D7E4B208(__dst, v7, v4, v5);
}

uint64_t sub_1D7FD7ED4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v3 + v4), 0x49uLL);
  memcpy(a2, (v3 + v4), 0x49uLL);
  return sub_1D7E4B208(__dst, v6, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
}

uint64_t sub_1D7FD7F6C(void *__src)
{
  memcpy(__dst, __src, 0x49uLL);
  sub_1D7E4B208(__dst, &v3, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
  return GradientView.gradientDescriptor.setter(__src);
}

id sub_1D7FD7FE4(void *__src)
{
  memcpy(__dst, __src, 0x49uLL);
  v2 = v1 + OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(v20, v2, 0x49uLL);
  v3 = __dst[0];
  memcpy(v18, &__dst[1], sizeof(v18));
  v4 = v20[0];
  memcpy(v17, (v2 + 8), sizeof(v17));
  if (__dst[0])
  {
    __srca[0] = __dst[0];
    memcpy(&__srca[1], &__dst[1], 0x41uLL);
    memcpy(v14, __srca, 0x49uLL);
    if (v20[0])
    {
      memcpy(&v13[1], (v2 + 8), 0x41uLL);
      v13[0] = v20[0];
      v5 = MEMORY[0x1E69E6720];
      sub_1D7E4B208(v20, v12, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
      sub_1D7E4B208(__dst, v12, qword_1EDBB9F28, v5);
      sub_1D7E4B208(__srca, v12, qword_1EDBB9F28, v5);
      v6 = static GradientDescriptor.== infix(_:_:)(v14, v13);
      memcpy(v11, v13, 0x49uLL);
      sub_1D7FD8CE4(v11);
      memcpy(v12, v14, 0x49uLL);
      sub_1D7FD8CE4(v12);
      v13[0] = v3;
      memcpy(&v13[1], v18, 0x41uLL);
      result = sub_1D7FD7D80(v13);
      if (v6)
      {
        return result;
      }

      return sub_1D7E4A6D8();
    }

    memcpy(v13, __srca, 0x49uLL);
    v9 = MEMORY[0x1E69E6720];
    sub_1D7E4B208(v20, v12, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
    sub_1D7E4B208(__dst, v12, qword_1EDBB9F28, v9);
    sub_1D7E4B208(__srca, v12, qword_1EDBB9F28, v9);
    sub_1D7FD8CE4(v13);
  }

  else
  {
    if (!v20[0])
    {
      __srca[0] = 0;
      memcpy(&__srca[1], &__dst[1], 0x41uLL);
      v10 = MEMORY[0x1E69E6720];
      sub_1D7E4B208(v20, v14, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
      sub_1D7E4B208(__dst, v14, qword_1EDBB9F28, v10);
      return sub_1D7FD7D80(__srca);
    }

    v8 = MEMORY[0x1E69E6720];
    sub_1D7E4B208(v20, __srca, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
    sub_1D7E4B208(__dst, __srca, qword_1EDBB9F28, v8);
  }

  __srca[0] = v3;
  memcpy(&__srca[1], v18, 0x41uLL);
  __srca[10] = v4;
  memcpy(v16, v17, sizeof(v16));
  sub_1D7FD8730(__srca, sub_1D7FD8E1C);
  return sub_1D7E4A6D8();
}

void (*GradientView.gradientDescriptor.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x1B0uLL);
  *a1 = v3;
  v3[53] = v1;
  v4 = OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  OUTLINED_FUNCTION_8_4();
  memcpy(v3, (v1 + v4), 0x49uLL);
  memcpy(v3 + 10, (v1 + v4), 0x49uLL);
  OUTLINED_FUNCTION_0_94();
  sub_1D7E4B208(v3, (v3 + 20), v5, v6);
  return sub_1D7FD83A8;
}

void sub_1D7FD83A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_5_35((v2 + 240));
    OUTLINED_FUNCTION_5_35(v5);
    OUTLINED_FUNCTION_0_94();
    sub_1D7E4B208(v2 + 240, v2 + 320, v3, v4);
    GradientView.gradientDescriptor.setter(v5);
    OUTLINED_FUNCTION_5_35((v2 + 160));
    sub_1D7FD7D80(v2 + 160);
  }

  else
  {
    OUTLINED_FUNCTION_5_35(v5);
    GradientView.gradientDescriptor.setter(v5);
  }

  free(v2);
}

uint64_t GradientView.dynamicGradientDescriptor.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  OUTLINED_FUNCTION_8_4();
  memcpy(__dst, (v1 + v3), 0x99uLL);
  memcpy(a1, (v1 + v3), 0x99uLL);
  return sub_1D7FD84B4(__dst, v5);
}

uint64_t sub_1D7FD84B4(uint64_t a1, uint64_t a2)
{
  sub_1D7FD8518();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7FD8518()
{
  if (!qword_1EDBBBB38)
  {
    sub_1D7E4B1B4(255, qword_1EDBBBB40, type metadata accessor for DynamicValue);
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBBB38);
    }
  }
}

uint64_t sub_1D7FD858C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v3 + v4), 0x99uLL);
  memcpy(a2, (v3 + v4), 0x99uLL);
  return sub_1D7FD84B4(__dst, v6);
}

uint64_t sub_1D7FD8608(void *__src)
{
  memcpy(__dst, __src, 0x99uLL);
  sub_1D7FD84B4(__dst, &v3);
  return GradientView.dynamicGradientDescriptor.setter(__src);
}

uint64_t GradientView.dynamicGradientDescriptor.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), 0x99uLL);
  memcpy(v7, (v1 + v3), 0x99uLL);
  memcpy((v1 + v3), a1, 0x99uLL);
  sub_1D7FD84B4(__dst, __src);
  sub_1D7FD8730(v7, sub_1D7FD8518);
  memcpy(__src, __dst, 0x99uLL);
  sub_1D7FD8790(__src);
  return sub_1D7FD8730(__dst, sub_1D7FD8518);
}

uint64_t sub_1D7FD8730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D7FD8790(void *__src)
{
  memcpy(__dst, __src, 0x99uLL);
  v2 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  swift_beginAccess();
  memcpy(v12, (v1 + v2), 0x99uLL);
  memcpy(__srca, __dst, 0x99uLL);
  memcpy(&__srca[160], (v1 + v2), 0x99uLL);
  memcpy(v13, __dst, 0x99uLL);
  if (sub_1D7E4AFF8(v13) == 1)
  {
    memcpy(v8, &__srca[160], 0x99uLL);
    if (sub_1D7E4AFF8(v8) == 1)
    {
      memcpy(v10, __srca, 0x99uLL);
      sub_1D7FD84B4(v12, v7);
      sub_1D7FD84B4(__dst, v7);
      return sub_1D7FD8730(v10, sub_1D7FD8518);
    }

    goto LABEL_5;
  }

  memcpy(v7, &__srca[160], 0x99uLL);
  if (sub_1D7E4AFF8(v7) == 1)
  {
LABEL_5:
    memcpy(v8, __srca, 0x139uLL);
    sub_1D7FD84B4(v12, v10);
    sub_1D7FD84B4(__dst, v10);
    sub_1D7FD8730(v8, sub_1D7FD8D38);
    return sub_1D7E4A6D8();
  }

  memcpy(v5, &__srca[160], 0x99uLL);
  memcpy(v8, &__srca[160], 0x99uLL);
  memcpy(v10, __srca, 0x99uLL);
  sub_1D7FD84B4(v12, v6);
  sub_1D7FD84B4(v12, v6);
  sub_1D7FD84B4(__dst, v6);
  v4 = sub_1D7FD8D9C(v10, v8);
  sub_1D7FD8730(v12, sub_1D7FD8518);
  sub_1D7FD8730(v5, sub_1D7FD8518);
  memcpy(v6, __srca, 0x99uLL);
  result = sub_1D7FD8730(v6, sub_1D7FD8518);
  if (!v4)
  {
    return sub_1D7E4A6D8();
  }

  return result;
}

void (*GradientView.dynamicGradientDescriptor.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x340uLL);
  *a1 = v3;
  v3[103] = v1;
  v4 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  OUTLINED_FUNCTION_8_4();
  memcpy(v3, (v1 + v4), 0x99uLL);
  memcpy(v3 + 20, (v1 + v4), 0x99uLL);
  sub_1D7FD84B4(v3, (v3 + 40));
  return sub_1D7FD8A5C;
}

void sub_1D7FD8A5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_6_39((v2 + 480));
    OUTLINED_FUNCTION_6_39(v4);
    sub_1D7FD84B4(v2 + 480, v2 + 640);
    GradientView.dynamicGradientDescriptor.setter(v4);
    OUTLINED_FUNCTION_6_39((v2 + 320));
    OUTLINED_FUNCTION_2_63();
    sub_1D7FD8730(v2 + 320, v3);
  }

  else
  {
    OUTLINED_FUNCTION_6_39(v4);
    GradientView.dynamicGradientDescriptor.setter(v4);
  }

  free(v2);
}

id GradientView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GradientView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 57) = 0u;
  v2 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  sub_1D7E29424(__src);
  memcpy((v0 + v2), __src, 0x99uLL);
  sub_1D81923A4();
  __break(1u);
}

id GradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7FD8CA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D7FD8D38()
{
  if (!qword_1ECA0EED0)
  {
    sub_1D7FD8518();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0EED0);
    }
  }
}

BOOL sub_1D7FD8D9C(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x99uLL);
  memcpy(v5, a2, 0x99uLL);
  return static GradientDescriptor.== infix(_:_:)(__dst, v5) && static GradientDescriptor.== infix(_:_:)(&__dst[80], &v5[80]);
}

void sub_1D7FD8E1C()
{
  if (!qword_1EDBB9F20)
  {
    sub_1D7E4B1B4(255, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB9F20);
    }
  }
}

TeaUI::Menu __swiftcall Menu.init(remove:_:)(Swift::OpaquePointer remove, Swift::OpaquePointer _)
{
  v2->_rawValue = remove._rawValue;
  v2[1]._rawValue = _._rawValue;
  result.groups = _;
  result.groupsToRemove = remove;
  return result;
}

uint64_t Navigator.navigate(to:)()
{
  OUTLINED_FUNCTION_6_40();
  OUTLINED_FUNCTION_0_95();
  v1 = v0();
  return OUTLINED_FUNCTION_8_28(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t Navigator.navigate(to:context:)()
{
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_5_36();
  v1 = v0();
  return OUTLINED_FUNCTION_8_28(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t Navigator.navigate(to:setup:)()
{
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_1_74();
  v1 = v0();
  return OUTLINED_FUNCTION_8_28(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t Navigator.navigateWithoutAnimation(to:)()
{
  OUTLINED_FUNCTION_6_40();
  OUTLINED_FUNCTION_0_95();
  v8 = Navigator.navigateWithoutAnimation(to:metadata:context:setup:)(v0, v1, v2, v3, v4, v5, v6, v7);
  return OUTLINED_FUNCTION_8_28(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

uint64_t Navigator.navigateWithoutAnimation(to:metadata:context:setup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v49 = a5;
  v50 = a6;
  v48 = a4;
  v52 = a3;
  v45 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = AssociatedTypeWitness;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v44 = &v40 - v16;
  v41 = a7;
  OUTLINED_FUNCTION_2();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v51 = objc_opt_self();
  (*(v19 + 16))(&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v46, a7);
  (*(v12 + 16))(v17, a1, AssociatedTypeWitness);
  sub_1D7E7B91C(v45, v54);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = (v21 + v23 + *(v12 + 80)) & ~*(v12 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 39) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v47;
  *(v28 + 16) = v41;
  *(v28 + 24) = v29;
  (*(v19 + 32))(v28 + v23, v43);
  (*(v12 + 32))(v28 + v24, v44, v42);
  v30 = (v28 + v25);
  v31 = v54[1];
  *v30 = v54[0];
  v30[1] = v31;
  v32 = (v28 + v26);
  v34 = v48;
  v33 = v49;
  *v32 = v52;
  v32[1] = v34;
  v35 = (v28 + v27);
  v36 = v50;
  *v35 = v33;
  v35[1] = v36;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = &v55;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1D7FD95C4;
  *(v37 + 24) = v28;
  aBlock[4] = sub_1D7E74D6C;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E74D74;
  aBlock[3] = &block_descriptor_32;
  v38 = _Block_copy(aBlock);

  sub_1D7E19F24(v52);
  sub_1D7E19F24(v33);

  [v51 performWithoutAnimation_];
  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
  }

  else
  {
    if (v55)
    {
      swift_willThrow();
    }
  }

  return result;
}

uint64_t Navigator.navigateWithoutAnimation(to:context:)()
{
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_5_36();
  v8 = Navigator.navigateWithoutAnimation(to:metadata:context:setup:)(v0, v1, v2, v3, v4, v5, v6, v7);
  return OUTLINED_FUNCTION_8_28(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

uint64_t Navigator.navigateWithoutAnimation(to:setup:)()
{
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_1_74();
  v8 = Navigator.navigateWithoutAnimation(to:metadata:context:setup:)(v0, v1, v2, v3, v4, v5, v6, v7);
  return OUTLINED_FUNCTION_8_28(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

uint64_t sub_1D7FD95C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_2();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D7FD9528(v0 + v4, v0 + v8, v0 + v9, *(v0 + v10), *(v0 + v10 + 8), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), v1, v2);
}

uint64_t Navigator.preview(for:)()
{
  OUTLINED_FUNCTION_6_40();
  OUTLINED_FUNCTION_0_95();
  v2 = v1();
  OUTLINED_FUNCTION_9_21(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return v0;
}

uint64_t Navigator.preview(for:context:)()
{
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_5_36();
  v2 = v1();
  OUTLINED_FUNCTION_9_21(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return v0;
}

uint64_t Navigator.preview(for:setup:)()
{
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_1_74();
  v2 = v1();
  OUTLINED_FUNCTION_9_21(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return v0;
}

uint64_t sub_1D7FD9958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7FD9B7C(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1D7FD9BB4(v5);
  *a2 = Strong;
  return result;
}

uint64_t TraitEnvironmentBackgroundSelectionStyle.traitEnvironment.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*TraitEnvironmentBackgroundSelectionStyle.traitEnvironment.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1D7FD9A34;
}

uint64_t sub_1D7FD9A34()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t TraitEnvironmentBackgroundSelectionStyle.init(traitEnvironment:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall TraitEnvironmentBackgroundSelectionStyle.shouldRenderSelection(isSelected:isHighlighted:)(Swift::Bool isSelected, Swift::Bool isHighlighted)
{
  if (!isHighlighted && isSelected)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0;
    }

    v3 = [Strong traitCollection];
    swift_unknownObjectRelease();
    v4 = [v3 horizontalSizeClass];
    v5 = [v3 verticalSizeClass];

    if (v4 == 1 || v5 == 1)
    {
      return 0;
    }

    else
    {
      return v4 == 2 || v5 == 2;
    }
  }

  return isHighlighted;
}

uint64_t static GradientSectionDecorationItem.Size.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }

    return OUTLINED_FUNCTION_0_2();
  }

  if (*(a2 + 8))
  {
    return OUTLINED_FUNCTION_0_2();
  }

  return *a1 == *a2;
}

uint64_t static GradientSectionDecorationItem.Size.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  return 1;
}

uint64_t GradientSectionDecorationItem.gradientDescriptor.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_11_27(v4);
  OUTLINED_FUNCTION_11_27(a1);
  return sub_1D7FCE2A8(v4, &v3);
}

uint64_t GradientSectionDecorationItem.darkGradientDescriptor.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), 0x49uLL);
  memcpy(a1, (v1 + 80), 0x49uLL);
  OUTLINED_FUNCTION_3_61();
  return sub_1D7E4B274(__dst, &v5, v3);
}

void sub_1D7FD9D40()
{
  if (!qword_1EDBB9F28[0])
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBB9F28);
    }
  }
}

double GradientSectionDecorationItem.init(gradientDescriptor:ordering:pinTrait:)@<D0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x49uLL);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *a3;
  LOBYTE(a3) = *(a3 + 8);
  v10 = v8;
  memcpy(a4, __dst, 0x50uLL);
  result = 0.0;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 137) = 0u;
  *(a4 + 160) = 0;
  *(a4 + 168) = 1;
  *(a4 + 176) = 0;
  *(a4 + 184) = 1;
  *(a4 + 185) = 3;
  *(a4 + 192) = v7;
  *(a4 + 200) = v10;
  *(a4 + 208) = v9;
  *(a4 + 216) = a3;
  return result;
}

double GradientSectionDecorationItem.init(gradientDescriptor:gradientSize:ordering:pinTrait:)@<D0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(__dst, __src, 0x49uLL);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = a2[2];
  v12 = *(a2 + 24);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *a4;
  LOBYTE(a4) = *(a4 + 8);
  v16 = v12;
  v17 = v14;
  memcpy(a5, __dst, 0x50uLL);
  result = 0.0;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 137) = 0u;
  *(a5 + 160) = v9;
  *(a5 + 168) = v10;
  *(a5 + 176) = v11;
  *(a5 + 184) = v16;
  *(a5 + 185) = 3;
  *(a5 + 192) = v13;
  *(a5 + 200) = v17;
  *(a5 + 208) = v15;
  *(a5 + 216) = a4;
  return result;
}

void *GradientSectionDecorationItem.init(gradientDescriptor:darkGradientDescriptor:gradientSize:overscrollPinPosition:ordering:pinTrait:)@<X0>(void *__src@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = a3[2];
  v12 = *(a3 + 24);
  v13 = *a4;
  v14 = *a5;
  v15 = *(a5 + 8);
  v16 = *a6;
  v18 = *(a6 + 8);
  memcpy(a7, __src, 0x49uLL);
  result = memcpy((a7 + 80), a2, 0x49uLL);
  *(a7 + 160) = v9;
  *(a7 + 168) = v10;
  *(a7 + 176) = v11;
  *(a7 + 184) = v12;
  *(a7 + 185) = v13;
  *(a7 + 192) = v14;
  *(a7 + 200) = v15;
  *(a7 + 208) = v16;
  *(a7 + 216) = v18;
  return result;
}

double GradientSectionDecorationItem.init(gradientDescriptor:gradientSize:overscrollPinPosition:ordering:pinTrait:)@<D0>(void *__src@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(__dst, __src, 0x49uLL);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = a2[2];
  v14 = *(a2 + 24);
  LOBYTE(a3) = *a3;
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = *a5;
  LOBYTE(a5) = *(a5 + 8);
  v18 = v14;
  v19 = v16;
  memcpy(a6, __dst, 0x50uLL);
  result = 0.0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 137) = 0u;
  *(a6 + 160) = v11;
  *(a6 + 168) = v12;
  *(a6 + 176) = v13;
  *(a6 + 184) = v18;
  *(a6 + 185) = a3;
  *(a6 + 192) = v15;
  *(a6 + 200) = v19;
  *(a6 + 208) = v17;
  *(a6 + 216) = a5;
  return result;
}

BOOL static GradientSectionDecorationItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_27(v78);
  memcpy(__dst, (a1 + 80), 0x49uLL);
  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  v8 = *(a1 + 185);
  memcpy(v80, a2, 0x49uLL);
  memcpy(v81, (a2 + 80), 0x49uLL);
  v9 = *(a2 + 160);
  v10 = *(a2 + 168);
  v11 = *(a2 + 176);
  v12 = *(a2 + 184);
  v13 = *(a2 + 185);
  OUTLINED_FUNCTION_11_27(v73);
  memcpy(__src, a2, 0x49uLL);
  sub_1D7FCE2A8(v78, v83);
  sub_1D7FCE2A8(v80, v83);
  v14 = static GradientDescriptor.== infix(_:_:)(v73, __src);
  memcpy(v82, __src, 0x49uLL);
  sub_1D7FD8CE4(v82);
  memcpy(v83, v73, 0x49uLL);
  sub_1D7FD8CE4(v83);
  if (!v14)
  {
    return 0;
  }

  HIDWORD(v65) = v8;
  v15 = __dst[0];
  memcpy(v76, &__dst[1], sizeof(v76));
  v16 = v81[0];
  v17 = memcpy(v75, &v81[1], sizeof(v75));
  if (__dst[0])
  {
    OUTLINED_FUNCTION_9_22(v17, v18, v19, v20, v21, v22, v23, v24, v65, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], __dst[0], v73[1]);
    memcpy(__src, v73, 0x49uLL);
    if (v16)
    {
      memcpy(&v72[1], &v81[1], 0x41uLL);
      v72[0] = v16;
      OUTLINED_FUNCTION_0_96();
      sub_1D7E4B274(__dst, v71, v25);
      OUTLINED_FUNCTION_13_21(v81, v26, v27, v28, v29, v30, v31, v32, v66, v70[0], v70[1], v70[2]);
      OUTLINED_FUNCTION_13_21(v73, v33, v34, v35, v36, v37, v38, v39, v67, v70[0], v70[1], v70[2]);
      v40 = static GradientDescriptor.== infix(_:_:)(__src, v72);
      memcpy(v70, v72, 0x49uLL);
      sub_1D7FD8CE4(v70);
      memcpy(v71, __src, 0x49uLL);
      sub_1D7FD8CE4(v71);
      v72[0] = v15;
      memcpy(&v72[1], v76, 0x41uLL);
      OUTLINED_FUNCTION_2_65();
      sub_1D7FDAE1C(v72, v41);
      if (!v40)
      {
        return 0;
      }

      if (v5)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (v4 == v9)
      {
        v62 = v10;
      }

      else
      {
        v62 = 1;
      }

      v42 = v69;
      if (v62)
      {
        return 0;
      }

      goto LABEL_18;
    }

    memcpy(v72, v73, 0x49uLL);
    OUTLINED_FUNCTION_0_96();
    sub_1D7E4B274(__dst, v71, v44);
    OUTLINED_FUNCTION_13_21(v81, v45, v46, v47, v48, v49, v50, v51, v66, v70[0], v70[1], v70[2]);
    OUTLINED_FUNCTION_13_21(v73, v52, v53, v54, v55, v56, v57, v58, v68, v70[0], v70[1], v70[2]);
    sub_1D7FD8CE4(v72);
LABEL_11:
    v73[0] = v15;
    memcpy(&v73[1], v76, 0x41uLL);
    v73[10] = v16;
    memcpy(v74, v75, sizeof(v74));
    sub_1D7FDAE1C(v73, sub_1D7FD8E1C);
    return 0;
  }

  if (v81[0])
  {
    OUTLINED_FUNCTION_0_96();
    sub_1D7E4B274(__dst, v73, v43);
    sub_1D7E4B274(v81, v73, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9_22(v17, v18, v19, v20, v21, v22, v23, v24, v65, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], 0, v73[1]);
  OUTLINED_FUNCTION_0_96();
  sub_1D7E4B274(__dst, __src, v60);
  sub_1D7E4B274(v81, __src, v14);
  OUTLINED_FUNCTION_2_65();
  sub_1D7FDAE1C(v73, v61);
  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v42 = v69;
  if (!v10)
  {
    return 0;
  }

LABEL_18:
  if ((v7 & 1) == 0)
  {
    if (v6 == v11)
    {
      v63 = v12;
    }

    else
    {
      v63 = 1;
    }

    if ((v63 & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

LABEL_25:
  if (v42 == 3)
  {
    return v13 == 3;
  }

  else
  {
    return v13 != 3 && v42 == v13;
  }
}

Swift::Void __swiftcall GradientSectionDecorationView.willMove(toSuperview:)(UIView_optional *toSuperview)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  [(UIView_optional *)&v3 willMoveToSuperview:toSuperview];
}

id GradientSectionDecorationView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *GradientSectionDecorationView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView;
  v3 = objc_allocWithZone(type metadata accessor for GradientView());
  *(v0 + v2) = OUTLINED_FUNCTION_4(v3, sel_initWithFrame_);
  OUTLINED_FUNCTION_12_2(OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize);
  *(v0 + OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_overscrollPinPosition) = 3;
  v4 = (v0 + OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset);
  *v4 = 0;
  v4[1] = 0;
  v5 = OUTLINED_FUNCTION_80();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, ObjectType);
  v9 = OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView;
  v10 = *&v8[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView];
  v11 = v8;
  [v11 addSubview_];
  v12 = *&v8[v9];
  v15.origin.x = OUTLINED_FUNCTION_80();
  Width = CGRectGetWidth(v15);
  v16.origin.x = OUTLINED_FUNCTION_80();
  [v12 setFrame_];

  return v11;
}

id GradientSectionDecorationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GradientSectionDecorationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView;
  v2 = objc_allocWithZone(type metadata accessor for GradientView());
  *(v0 + v1) = OUTLINED_FUNCTION_4(v2, sel_initWithFrame_);
  OUTLINED_FUNCTION_12_2(OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize);
  *(v0 + OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_overscrollPinPosition) = 3;
  v3 = (v0 + OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset);
  *v3 = 0;
  v3[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall GradientSectionDecorationView.layoutSubviews()()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView;
  [*&v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView] transform];
  v21 = 0x3FF0000000000000;
  v22 = 0;
  v23 = 0;
  v24 = 0x3FF0000000000000;
  v25 = 0;
  v26 = 0;
  if (sub_1D8191A34())
  {
    v2 = &v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset];
    v3 = *&v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset];
    v4 = *&v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset + 8];
    v5 = &v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize];
    Width = *&v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize];
    v7 = v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize + 8];
    v8 = *&v0[v1];
    [v0 bounds];
    if (v7 == 1)
    {
      Width = CGRectGetWidth(*&v9);
    }

    v13 = *v2;
    Height = v5[2];
    v15 = *(v5 + 24);
    [v0 bounds];
    if (v15 == 1)
    {
      Height = CGRectGetHeight(*&v16);
    }

    [v8 setFrame_];
  }
}

Swift::Void __swiftcall GradientSectionDecorationView.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v2 = v1;
  v25.receiver = v2;
  v25.super_class = swift_getObjectType();
  [(UICollectionViewLayoutAttributes *)&v25 applyLayoutAttributes:a1];
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
    swift_beginAccess();
    sub_1D7E4B274(v5 + v6, v23, sub_1D7FDAD68);
    if (v24)
    {
      sub_1D7FDADC0();
      v7 = a1;
      if (swift_dynamicCast())
      {
        memcpy(__dst, __src, 0xD9uLL);
        if (__dst[10])
        {
          v8 = *&v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView];
          memcpy(v20, __src, 0x49uLL);
          memcpy(&v20[11], &__src[88], 0x41uLL);
          v20[10] = __dst[10];
          nullsub_1(v20);
          memcpy(v19, v20, 0x99uLL);
          OUTLINED_FUNCTION_3_61();
          sub_1D7E4B274(&__dst[10], v18, v9);
          v10 = v8;
          sub_1D7FCE2A8(__dst, v18);
          GradientView.dynamicGradientDescriptor.setter(v19);
        }

        else
        {
          v11 = *&v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView];
          memcpy(v20, __src, 0x49uLL);
          v10 = v11;
          sub_1D7FCE2A8(__dst, v19);
          GradientView.gradientDescriptor.setter(v20);
        }

        v12 = __dst[21];
        v13 = __dst[22];
        v14 = __dst[23];
        v15 = &v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize];
        *v15 = __dst[20];
        v15[8] = v12;
        *(v15 + 2) = v13;
        v15[24] = v14;
        v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_overscrollPinPosition] = BYTE1(__dst[23]);
        sub_1D7FDAE7C(__dst);
        v16 = vdup_n_s32(LOBYTE(__dst[9]));
        v17.i64[0] = v16.u32[0];
        v17.i64[1] = v16.u32[1];
        *&v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset] = vandq_s8(*&__dst[7], vcgezq_s64(vshlq_n_s64(v17, 0x3FuLL)));
      }

      else
      {
      }
    }

    else
    {
      sub_1D7FDAE1C(v23, sub_1D7FDAD68);
    }
  }
}

void GradientSectionDecorationView.blueprintViewportMonitor(_:viewportScrollDataDidChange:)(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_overscrollPinPosition] != 3)
  {
    v4 = *&v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView];
    sub_1D813FEE0(v4, v2, a2);
  }
}

void sub_1D7FDAD68()
{
  if (!qword_1EDBB44D0)
  {
    sub_1D7FDADC0();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB44D0);
    }
  }
}

unint64_t sub_1D7FDADC0()
{
  result = qword_1EDBB44D8[0];
  if (!qword_1EDBB44D8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB44D8);
  }

  return result;
}

uint64_t sub_1D7FDAE1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI18GradientDescriptorVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7FDAED8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 217))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7FDAF18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7FDAF90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1D7FDAFC8()
{
  v1 = OBJC_IVAR____TtC5TeaUI12ProgressView_overrideHeight;
  OUTLINED_FUNCTION_1_0();
  return *(v0 + v1);
}

uint64_t sub_1D7FDAFFC(double a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI12ProgressView_overrideHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1D7FDB0AC(double a1, double a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ProgressView();
  objc_msgSendSuper2(&v8, sel_sizeThatFits_, a1, a2);
  v6 = v5;
  OUTLINED_FUNCTION_1_0();
  return v6;
}

id ProgressView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id ProgressView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  *(v0 + OBJC_IVAR____TtC5TeaUI12ProgressView_overrideHeight) = 0x4008000000000000;
  v5 = type metadata accessor for ProgressView();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id ProgressView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ProgressView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC5TeaUI12ProgressView_overrideHeight] = 0x4008000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ProgressView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ProgressView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7FDB424(uint64_t a1)
{
  v11 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  for (i = (a1 + 32); v2; --v2)
  {
    v10 = *i;

    sub_1D7FDB5C4(&v10, v1, &v9);

    if (v9)
    {
      MEMORY[0x1DA713500](v4);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
    }

    ++i;
  }

  v5 = sub_1D818FA14();
  sub_1D818FCB4();

  v6 = sub_1D818FA14();
  sub_1D7E1B668(0, &qword_1EDBB3330, MEMORY[0x1E69E62F8]);
  v7 = sub_1D818FAC4();

  return v7;
}

uint64_t sub_1D7FDB5C4@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v81 = a2;
  v85 = a3;
  v5 = sub_1D818E644();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7FDD9B8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D818F5A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  switch(*a1 >> 61)
  {
    case 1uLL:
      v40 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      v41 = *(v40 + 56);
      v42 = *(v40 + 64);
      sub_1D7E0E768(v40 + 16, &v83);
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      sub_1D7E0E768(&v83, v82);
      v43 = swift_allocObject();
      v43[2] = v81;
      sub_1D7E05450(v82, (v43 + 3));
      v43[8] = v41;
      v43[9] = v42;

      sub_1D8190DB4();
      v44 = sub_1D818FAA4();
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v83);
      goto LABEL_8;
    case 2uLL:
      v28 = (v16 & 0x1FFFFFFFFFFFFFFFLL);
      v30 = v28[2];
      v29 = v28[3];
      v31 = v28[4];
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v32 = swift_allocObject();
      v32[2] = v81;
      v32[3] = v30;
      v32[4] = v29;
      v32[5] = v31;

      sub_1D8190DB4();
      sub_1D8190DB4();
      goto LABEL_6;
    case 3uLL:
      v33 = (v16 & 0x1FFFFFFFFFFFFFFFLL);
      v34 = v33[2];
      v35 = v33[3];
      v37 = v33[4];
      v36 = v33[5];
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v38 = swift_allocObject();
      v38[2] = v81;
      v38[3] = v34;
      v38[4] = v35;
      v38[5] = v37;
      v38[6] = v36;

      sub_1D8190DB4();
      sub_1D8190DB4();
      goto LABEL_6;
    case 4uLL:
      v20 = (v16 & 0x1FFFFFFFFFFFFFFFLL);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[4];
      v24 = v20[5];
      v25 = v20[6];
      v26 = v20[7];
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v27 = swift_allocObject();
      v27[2] = v81;
      v27[3] = v21;
      v27[4] = v22;
      v27[5] = v23;
      v27[6] = v24;
      v27[7] = v25;
      v27[8] = v26;

      sub_1D8190DB4();
      sub_1D8190DB4();
      sub_1D7F0731C(v21, v22);
      goto LABEL_6;
    case 5uLL:
      v45 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
      v46 = sub_1D8191AB4();
      *(swift_allocObject() + 16) = v45;
      sub_1D7E0A1A8(0, &qword_1EDBB2F60);
      v47 = v45;
      sub_1D8191A64();

      v48 = v83;
      if (!v83)
      {
        if (qword_1ECA0C290 != -1)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      sub_1D818E5D4();
      v49 = UIImageJPEGRepresentation(v48, 1.0);
      if (!v49)
      {
        if (qword_1ECA0C290 != -1)
        {
          swift_once();
        }

        sub_1D81919C4();
        sub_1D818FD44();

        result = (*(v6 + 8))(v8, v5);
        goto LABEL_31;
      }

      v50 = v49;
      v51 = sub_1D818E684();
      v53 = v52;

      sub_1D7FDDDBC();
      if (v3)
      {
        v81 = v53;
        if (qword_1ECA0C290 != -1)
        {
          swift_once();
        }

        v80 = qword_1ECA2C538;
        LODWORD(v79) = sub_1D81919C4();
        sub_1D7E1A4D0();
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1D819FAB0;
        v83 = 0;
        v84 = 0xE000000000000000;
        *&v82[0] = v3;
        sub_1D7E0631C(0, &qword_1EDBB2BC0);
        sub_1D8192334();
        v55 = v83;
        v56 = v84;
        *(v54 + 56) = MEMORY[0x1E69E6158];
        *(v54 + 64) = sub_1D7E13BF4();
        *(v54 + 32) = v55;
        *(v54 + 40) = v56;
        sub_1D818FD44();
        sub_1D7EF4CE0(v51, v81);

        result = (*(v6 + 8))(v8, v5);
        goto LABEL_31;
      }

      v83 = sub_1D818E614();
      v84 = v73;
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v44 = sub_1D818FB44();
      sub_1D7EF4CE0(v51, v53);

      result = (*(v6 + 8))(v8, v5);
LABEL_8:
      *v85 = v44;
      return result;
    case 6uLL:
      v78 = v3;
      v57 = (v16 & 0x1FFFFFFFFFFFFFFFLL);
      v58 = v57[2];
      v59 = v57[3];
      v60 = v57[4];
      v61 = *(v58 + 16);
      v79 = (v13 + 32);
      v77 = v60;
      sub_1D8190DB4();
      v62 = 0;
      v80 = MEMORY[0x1E69E7CC0];
      break;
    default:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v19 = swift_allocObject();
      v19[2] = v81;
      v19[3] = v17;
      v19[4] = v18;
      sub_1D8190DB4();

LABEL_6:
      result = sub_1D818FAA4();
      *v85 = result;
      return result;
  }

  while (1)
  {
    if (v61 == v62)
    {
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v70 = swift_allocObject();
      v71 = v80;
      v70[2] = v81;
      v70[3] = v71;
      v72 = v77;
      v70[4] = v59;
      v70[5] = v72;

      result = sub_1D818FAA4();
      *v85 = result;
      return result;
    }

    if (v62 >= *(v58 + 16))
    {
      break;
    }

    v83 = *(v58 + 32 + 8 * v62);

    DiagnosticAttachment.init(from:)(&v83, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_1D7FDDA10(v11);
      ++v62;
    }

    else
    {
      v75 = *v79;
      v75(v15, v11, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7EE5254(0, *(v80 + 16) + 1, 1, v80);
        v80 = v68;
      }

      v65 = *(v80 + 16);
      v64 = *(v80 + 24);
      v66 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v74 = v65 + 1;
        sub_1D7EE5254(v64 > 1, v65 + 1, 1, v80);
        v66 = v74;
        v80 = v69;
      }

      ++v62;
      v67 = v80;
      *(v80 + 16) = v66;
      v75((v67 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v65), v15, v12);
      v59 = v76;
    }
  }

  __break(1u);
LABEL_34:
  swift_once();
LABEL_27:
  sub_1D81919C4();
  result = sub_1D818FD44();
LABEL_31:
  *v85 = 0;
  return result;
}

uint64_t sub_1D7FDC04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1D818F5A4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDC110, 0, 0);
}

uint64_t sub_1D7FDC110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[7];
  v13 = v12[8];
  v16 = v12[5];
  v15 = v12[6];
  v17 = v12[4];
  v18 = (v12[3] + OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_diagnosticAttachmentResolver);
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = v16;
  *v13 = v21;
  (*(v14 + 104))(v13, *MEMORY[0x1E69D6800], v15);
  sub_1D8190DB4();
  v22 = swift_task_alloc();
  v12[9] = v22;
  *v22 = v12;
  v22[1] = sub_1D7FDC23C;
  v23 = OUTLINED_FUNCTION_10_32(v12[8]);

  return MEMORY[0x1EEE44CC8](v23, v19, v20, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1D7FDC23C()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[10] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 64);
  v8 = v4[7];
  v9 = v4[6];
  if (!v1)
  {
    v4[11] = v0;
    v4[12] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDC39C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_17(*(v0 + 96));
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D7FDC3F8()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D7FDC454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D818F5A4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDC51C, 0, 0);
}

uint64_t sub_1D7FDC51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_16_20();
  v15 = v13[8];
  v14 = v13[9];
  v17 = v13[6];
  v16 = v13[7];
  v19 = v13[4];
  v18 = v13[5];
  v20 = OUTLINED_FUNCTION_14_18(v13[3]);
  v33 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v12);
  OUTLINED_FUNCTION_15_17();
  v22 = swift_allocObject();
  sub_1D7E0E768(v19, v22 + 16);
  *(v22 + 56) = v18;
  *(v22 + 64) = v17;
  *v14 = v22;
  (*(v15 + 104))(v14, *MEMORY[0x1E69D67E8], v16);
  sub_1D8190DB4();
  v23 = swift_task_alloc();
  v13[10] = v23;
  *v23 = v13;
  v23[1] = sub_1D7FDC644;
  OUTLINED_FUNCTION_10_32(v13[9]);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE44CC8](v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

uint64_t sub_1D7FDC644()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[11] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 72);
  v8 = v4[8];
  v9 = v4[7];
  if (!v1)
  {
    v4[12] = v0;
    v4[13] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDC7A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_17(*(v0 + 104));
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D7FDC800()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D7FDC85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_1D818F5A4();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDC924, 0, 0);
}

uint64_t sub_1D7FDC924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = v13[9];
  v14 = v13[10];
  v17 = v13[7];
  v16 = v13[8];
  v19 = v13[5];
  v18 = v13[6];
  v20 = OUTLINED_FUNCTION_14_18(v13[4]);
  v32 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v12);
  OUTLINED_FUNCTION_21_0();
  v22 = swift_allocObject();
  v13[2] = v19;
  v22[2] = RadarText.description.getter();
  v22[3] = v23;
  v22[4] = v18;
  v22[5] = v17;
  *v14 = v22;
  (*(v15 + 104))(v14, *MEMORY[0x1E69D67D8], v16);
  sub_1D8190DB4();
  v24 = swift_task_alloc();
  v13[11] = v24;
  *v24 = v13;
  v24[1] = sub_1D7FDCA68;
  v25 = OUTLINED_FUNCTION_10_32(v13[10]);

  return MEMORY[0x1EEE44CC8](v25, v12, v32, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D7FDCA68(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_3_4();
  *v7 = v6;
  v6[12] = v2;

  if (v2)
  {
    (*(v6[9] + 8))(v6[10], v6[8]);
    v8 = sub_1D7FDCC1C;
  }

  else
  {
    v10 = v6[9];
    v9 = v6[10];
    v11 = v6[8];
    v6[13] = a2;
    v6[14] = a1;
    (*(v10 + 8))(v9, v11);
    v8 = sub_1D7FDCBB8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D7FDCBB8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[13];
  v2 = v0[3];
  *v2 = v0[14];
  v2[1] = v1;

  OUTLINED_FUNCTION_5_37();

  return v3();
}

uint64_t sub_1D7FDCC1C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D7FDCC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1D818F5A4();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDCD40, 0, 0);
}

uint64_t sub_1D7FDCD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_16_20();
  v15 = v13[9];
  v14 = v13[10];
  v17 = v13[7];
  v16 = v13[8];
  v18 = v13[5];
  v19 = v13[6];
  v20 = v13[4];
  v21 = OUTLINED_FUNCTION_14_18(v13[3]);
  v34 = v22;
  __swift_project_boxed_opaque_existential_1(v21, v12);
  OUTLINED_FUNCTION_21_0();
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v18;
  v23[4] = v19;
  v23[5] = v17;
  *v14 = v23;
  (*(v15 + 104))(v14, *MEMORY[0x1E69D67D8], v16);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v24 = swift_task_alloc();
  v13[11] = v24;
  *v24 = v13;
  v24[1] = sub_1D7FDCE64;
  OUTLINED_FUNCTION_10_32(v13[10]);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE44CC8](v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

uint64_t sub_1D7FDCE64()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[12] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 80);
  v8 = v4[9];
  v9 = v4[8];
  if (!v1)
  {
    v4[13] = v0;
    v4[14] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDCFC4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_17(*(v0 + 112));
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D7FDD020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_1D818F5A4();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDD0EC, 0, 0);
}

uint64_t sub_1D7FDD0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v13[11];
  v15 = v13[12];
  v16 = v13[9];
  v33 = v13[10];
  v18 = v13[7];
  v17 = v13[8];
  v20 = v13[5];
  v19 = v13[6];
  v21 = v13[4];
  v22 = OUTLINED_FUNCTION_14_18(v13[3]);
  v34 = v23;
  __swift_project_boxed_opaque_existential_1(v22, v12);
  v24 = swift_allocObject();
  v24[2] = v21;
  v24[3] = v20;
  v24[4] = v19;
  v24[5] = v18;
  v24[6] = v17;
  v24[7] = v16;
  *v15 = v24;
  (*(v14 + 104))(v15, *MEMORY[0x1E69D67E0], v33);
  sub_1D7F0731C(v21, v20);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v25 = swift_task_alloc();
  v13[13] = v25;
  *v25 = v13;
  v25[1] = sub_1D7FDD244;
  v26 = OUTLINED_FUNCTION_10_32(v13[12]);

  return MEMORY[0x1EEE44CC8](v26, v12, v34, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_1D7FDD244()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[14] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 96);
  v8 = v4[11];
  v9 = v4[10];
  if (!v1)
  {
    v4[15] = v0;
    v4[16] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDD3A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_17(*(v0 + 128));
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D7FDD400()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t DiagnosticAttachment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7FDD9B8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D818F5A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v70 - v12);
  v14 = *a1;
  switch(*a1 >> 61)
  {
    case 1uLL:
      v46 = v14 & 0x1FFFFFFFFFFFFFFFLL;
      v47 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v48 = *(v46 + 64);
      OUTLINED_FUNCTION_15_17();
      v49 = swift_allocObject();
      sub_1D7E0E768(v46 + 16, v49 + 16);
      *(v49 + 56) = v47;
      *(v49 + 64) = v48;
      *v13 = v49;
      v50 = OUTLINED_FUNCTION_1_75();
      v51(v50);
      goto LABEL_7;
    case 2uLL:
      v30 = v14 & 0x1FFFFFFFFFFFFFFFLL;
      v31 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *(v30 + 24);
      v33 = *(v30 + 32);
      OUTLINED_FUNCTION_21_0();
      v34 = swift_allocObject();
      v79 = v31;
      sub_1D8190DB4();
      v34[2] = RadarText.description.getter();
      v34[3] = v35;
      v34[4] = v32;
      v34[5] = v33;
      *v13 = v34;
      v36 = OUTLINED_FUNCTION_1_75();
      v37(v36);
      goto LABEL_8;
    case 3uLL:
      v38 = (v14 & 0x1FFFFFFFFFFFFFFFLL);
      v39 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = v38[3];
      v42 = v38[4];
      v41 = v38[5];
      OUTLINED_FUNCTION_21_0();
      v43 = swift_allocObject();
      v43[2] = v39;
      v43[3] = v40;
      v43[4] = v42;
      v43[5] = v41;
      *v13 = v43;
      v44 = OUTLINED_FUNCTION_1_75();
      v45(v44);
      sub_1D8190DB4();
      goto LABEL_7;
    case 4uLL:
      v20 = (v14 & 0x1FFFFFFFFFFFFFFFLL);
      v21 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v23 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v24 = v20[5];
      v77 = a2;
      v26 = v20[6];
      v25 = v20[7];
      v27 = swift_allocObject();
      v27[2] = v21;
      v27[3] = v22;
      v27[4] = v23;
      v27[5] = v24;
      v27[6] = v26;
      v27[7] = v25;
      a2 = v77;
      *v13 = v27;
      v28 = OUTLINED_FUNCTION_1_75();
      v29(v28);
      sub_1D7F0731C(v21, v22);
      sub_1D8190DB4();
LABEL_7:
      sub_1D8190DB4();
      goto LABEL_8;
    case 5uLL:

      return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
    case 6uLL:
      v77 = a2;
      v53 = v14 & 0x1FFFFFFFFFFFFFFFLL;
      v54 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v55 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v56 = *(v54 + 16);
      v75 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v76 = (v8 + 32);
      v74 = v55;
      result = sub_1D8190DB4();
      v57 = 0;
      v78 = MEMORY[0x1E69E7CC0];
      break;
    default:
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = v15;
      *v13 = v17;
      v18 = OUTLINED_FUNCTION_1_75();
      v19(v18);
      sub_1D8190DB4();
LABEL_8:

      goto LABEL_9;
  }

  while (v56 != v57)
  {
    if (v57 >= *(v54 + 16))
    {
      __break(1u);
      return result;
    }

    v79 = *(v54 + 32 + 8 * v57);

    DiagnosticAttachment.init(from:)(&v79);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      result = sub_1D7FDDA10(v6);
      ++v57;
    }

    else
    {
      v72 = *v76;
      v72(v10, v6, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7EE5254(0, *(v78 + 16) + 1, 1, v78);
        v78 = v63;
      }

      v60 = *(v78 + 16);
      v59 = *(v78 + 24);
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        v71 = v60 + 1;
        sub_1D7EE5254(v59 > 1, v60 + 1, 1, v78);
        v61 = v71;
        v78 = v64;
      }

      ++v57;
      v62 = v78;
      *(v78 + 16) = v61;
      result = (v72)(v62 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v60, v10, v7);
      v53 = v73;
    }
  }

  v65 = swift_allocObject();
  v66 = v74;
  v67 = v75;
  v65[2] = v78;
  v65[3] = v67;
  v65[4] = v66;
  *v13 = v65;
  v68 = OUTLINED_FUNCTION_1_75();
  v69(v68);

  a2 = v77;
LABEL_9:
  (*(v8 + 32))(a2, v13, v7);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v7);
}

void sub_1D7FDD9B8()
{
  if (!qword_1ECA0EF00)
  {
    sub_1D818F5A4();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0EF00);
    }
  }
}

uint64_t sub_1D7FDDA10(uint64_t a1)
{
  sub_1D7FDD9B8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7FDDA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D818F5A4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDDB34, 0, 0);
}

uint64_t sub_1D7FDDB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_16_20();
  v14 = v12[8];
  v13 = v12[9];
  v16 = v12[6];
  v15 = v12[7];
  v17 = v12[4];
  v18 = v12[5];
  __swift_project_boxed_opaque_existential_1((v12[3] + OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_diagnosticAttachmentResolver), *(v12[3] + OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_diagnosticAttachmentResolver + 24));
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v16;
  *v13 = v19;
  (*(v14 + 104))(v13, *MEMORY[0x1E69D67F8], v15);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v20 = swift_task_alloc();
  v12[10] = v20;
  *v20 = v12;
  v20[1] = sub_1D7FDDC5C;
  OUTLINED_FUNCTION_10_32(v12[9]);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE44CC8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1D7FDDC5C()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[11] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 72);
  v8 = v4[8];
  v9 = v4[7];
  if (!v1)
  {
    v4[12] = v0;
    v4[13] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDDDBC()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D818E644();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E5E4();
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1D818E5C4();
  v11[0] = 0;
  v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v11];

  if (v6)
  {
    v7 = v11[0];
    sub_1D818E694();
  }

  else
  {
    v8 = v11[0];
    sub_1D818E544();

    swift_willThrow();
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D7FDDF8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D7FDDF88(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D7FDDFC4()
{
  v1 = OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_temporaryDirectory;
  v2 = sub_1D818E644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_diagnosticAttachmentResolver);

  return swift_deallocClassInstance();
}

void sub_1D7FDE094(void *a1@<X0>, UIImage **a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v5 = [objc_opt_self() sharedApplication];
    v4 = [v5 key_window];

    if (!v4)
    {
      v18 = 0;
      goto LABEL_8;
    }
  }

  v6 = v4;
  v7 = a1;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v12 = [objc_opt_self() mainScreen];
  [v12 scale];
  v14 = v13;

  v19.width = v9;
  v19.height = v11;
  UIGraphicsBeginImageContextWithOptions(v19, 0, v14);
  v15 = UIGraphicsGetCurrentContext();
  if (v15)
  {
    v16 = v15;
    v17 = [v6 layer];

    [v17 renderInContext_];
    v18 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v18 = 0;
    v16 = v6;
  }

LABEL_8:
  *a2 = v18;
}

uint64_t sub_1D7FDE234()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_12_23();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_97(v4);

  return sub_1D7FDDA6C(v6, v7, v8, v2, v1);
}

uint64_t sub_1D7FDE2D4()
{
  OUTLINED_FUNCTION_12_23();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_14(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_97(v7);

  return sub_1D7FDD020(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t sub_1D7FDE394()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_12_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_97(v1);
  OUTLINED_FUNCTION_19_14();

  return sub_1D7FDCC78(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_20Tm()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7FDE478()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_12_23();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_97(v4);

  return sub_1D7FDC85C(v6, v7, v8, v2, v1);
}

uint64_t sub_1D7FDE518()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[8];
  v5 = v0[9];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_14(v6);
  *v7 = v8;
  v7[1] = sub_1D7E94724;

  return sub_1D7FDC454(v2, v3, (v0 + 3), v4, v5);
}

uint64_t sub_1D7FDE5CC()
{
  OUTLINED_FUNCTION_12_23();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_97(v3);

  return sub_1D7FDC04C(v5, v6, v7, v1);
}

uint64_t sub_1D7FDE69C()
{
  sub_1D81905D4();
  sub_1D7FDEC8C();
  sub_1D7FDEEDC();
  return sub_1D8190AF4();
}

uint64_t sub_1D7FDE754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D7FDEFFC(0, &qword_1ECA0EF60, type metadata accessor for JSONSchemaValueArray, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v6 = sub_1D7EFC4E4();

  sub_1D7FDF254(v6);

  swift_getKeyPath();
  sub_1D7FDF528(0, &qword_1ECA0EF20, &qword_1ECA0EF28, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
  sub_1D7FDEDB8();
  sub_1D8190AD4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D7FDF43C;
  *(v8 + 24) = v7;
  sub_1D7FDEC8C();
  v10 = (a3 + *(v9 + 36));
  *v10 = sub_1D7FDF444;
  v10[1] = v8;
}

uint64_t sub_1D7FDE928(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 96))();
  sub_1D7E50D2C();
  return sub_1D8190814();
}

uint64_t sub_1D7FDE994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7FDE928(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1D7FDE9D0()
{
  sub_1D8190B34();
  sub_1D8190384();
}

uint64_t sub_1D7FDEA40()
{
  sub_1D7FDEFFC(0, &qword_1ECA0EF60, type metadata accessor for JSONSchemaValueArray, MEMORY[0x1E6981790]);
  sub_1D8190994();
  swift_getKeyPath();
  sub_1D7FDF46C(&qword_1ECA0D7E8, type metadata accessor for JSONSchemaValueArray);
  sub_1D818E9D4();

  swift_getKeyPath();
  sub_1D818E9F4();

  swift_beginAccess();
  sub_1D7FDEFFC(0, &qword_1ECA0D5D8, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
  sub_1D7FDF4B4(&qword_1ECA0EF68);
  sub_1D7FDF4B4(&qword_1ECA0EF70);
  sub_1D8191914();
  v0 = swift_endAccess();
  sub_1D7F02238(v0);
  swift_getKeyPath();
  sub_1D818E9E4();
}

void sub_1D7FDEC8C()
{
  if (!qword_1ECA0EF10)
  {
    sub_1D7FDECF4();
    sub_1D7FDEE48();
    v0 = sub_1D8190414();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0EF10);
    }
  }
}

void sub_1D7FDECF4()
{
  if (!qword_1ECA0EF18)
  {
    sub_1D7FDF528(255, &qword_1ECA0EF20, &qword_1ECA0EF28, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
    sub_1D7FDEDB8();
    v0 = sub_1D8190AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0EF18);
    }
  }
}

unint64_t sub_1D7FDEDB8()
{
  result = qword_1ECA0EF30;
  if (!qword_1ECA0EF30)
  {
    sub_1D7FDF528(255, &qword_1ECA0EF20, &qword_1ECA0EF28, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EF30);
  }

  return result;
}

void sub_1D7FDEE48()
{
  if (!qword_1ECA0EF38)
  {
    sub_1D8190444();
    sub_1D7FDF46C(&qword_1ECA0EF40, MEMORY[0x1E697C230]);
    v0 = sub_1D81906D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0EF38);
    }
  }
}

unint64_t sub_1D7FDEEDC()
{
  result = qword_1ECA0EF48;
  if (!qword_1ECA0EF48)
  {
    sub_1D7FDEC8C();
    sub_1D7FDEF8C();
    sub_1D7FDF46C(&qword_1ECA0EF58, sub_1D7FDEE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EF48);
  }

  return result;
}

unint64_t sub_1D7FDEF8C()
{
  result = qword_1ECA0EF50;
  if (!qword_1ECA0EF50)
  {
    sub_1D7FDECF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EF50);
  }

  return result;
}

void sub_1D7FDEFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7FDF060(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v23 = *(result + 16);
  v4 = (MEMORY[0x1E69E7CC0] + 32);
  for (i = (result + 56); ; i += 4)
  {
    if (v23 == v2)
    {
      v19 = v3[3];
      if (v19 >= 2)
      {
        v20 = v19 >> 1;
        v18 = __OFSUB__(v20, v1);
        v21 = v20 - v1;
        if (v18)
        {
          goto LABEL_27;
        }

        v3[2] = v21;
      }

      return v3;
    }

    v6 = *(i - 3);
    v7 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    if (v1)
    {
      sub_1D8190DB4();
      result = sub_1D8190DB4();
      v10 = v3;
    }

    else
    {
      v11 = v3[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v22 = *(i - 3);
      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      v13 = v12 <= 1 ? 1 : v12;
      sub_1D7FDF528(0, &qword_1ECA0EF80, &qword_1ECA0DBF0, sub_1D7EE5958, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v14 = (_swift_stdlib_malloc_size(v10) - 32) / 40;
      v10[2] = v13;
      v10[3] = 2 * v14;
      v15 = v10 + 4;
      v16 = v3[3] >> 1;
      v4 = &v10[5 * v16 + 4];
      v1 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
      if (v3[2])
      {
        if (v10 != v3 || v15 >= &v3[5 * v16 + 4])
        {
          memmove(v15, v3 + 4, 40 * v16);
        }

        sub_1D8190DB4();
        sub_1D8190DB4();
        v3[2] = 0;
      }

      else
      {
        sub_1D8190DB4();
        sub_1D8190DB4();
      }

      v6 = v22;
    }

    v18 = __OFSUB__(v1--, 1);
    if (v18)
    {
      break;
    }

    *v4 = v2;
    v4[1] = v6;
    v4[2] = v7;
    v4[3] = v9;
    v4[4] = v8;
    v4 += 5;
    ++v2;
    v3 = v10;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D7FDF254(uint64_t a1)
{
  v1 = a1;
  result = sub_1D7E36AB8(a1);
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  v27 = v1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x1DA714420](v4, v1);
      v10 = result;
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      sub_1D7FDF528(0, &qword_1ECA0EF78, &qword_1ECA0EF28, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      v1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D7FDF46C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7FDF4B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7FDEFFC(255, &qword_1ECA0D5D8, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7FDF528(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D7FDFA68(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7FDF590(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = (MEMORY[0x1E69E7CC0] + 32);
  for (i = (result + 40); ; i += 2)
  {
    if (v3 == v2)
    {
      v18 = v4[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v1);
        v20 = v19 - v1;
        if (v17)
        {
          goto LABEL_27;
        }

        v4[2] = v20;
      }

      return v4;
    }

    v8 = *(i - 1);
    v7 = *i;
    if (v1)
    {
      result = sub_1D8190DB4();
      v9 = v4;
    }

    else
    {
      v10 = v4[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v12 = v11 <= 1 ? 1 : v11;
      sub_1D7FDEFFC(0, &qword_1ECA0EF98, sub_1D7FDFB50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size(v9) - 32) / 24;
      v9[2] = v12;
      v9[3] = 2 * v13;
      v14 = v9 + 4;
      v15 = v4[3] >> 1;
      v5 = &v9[3 * v15 + 4];
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (v4[2])
      {
        if (v9 != v4 || v14 >= &v4[3 * v15 + 4])
        {
          memmove(v14, v4 + 4, 24 * v15);
        }

        sub_1D8190DB4();
        v4[2] = 0;
      }

      else
      {
        sub_1D8190DB4();
      }
    }

    v17 = __OFSUB__(v1--, 1);
    if (v17)
    {
      break;
    }

    *v5 = v2;
    v5[1] = v8;
    v5[2] = v7;
    v5 += 3;
    ++v2;
    v4 = v9;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_1D7FDF744(uint64_t a1)
{
  sub_1D7FDFA68(0, &qword_1ECA0EF88, MEMORY[0x1E69D6A58]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = 0;
  v10 = 0;
  v45 = v11;
  v43 = *(v11 + 80);
  v12 = MEMORY[0x1E69E7CC0];
  v44 = (v43 + 32) & ~v43;
  v13 = MEMORY[0x1E69E7CC0] + v44;
  v14 = *(a1 + 16);
  v41 = v14;
  v42 = &v40 - v7;
  while (v14 != v10)
  {
    v15 = sub_1D818F824();
    v16 = *(v15 - 8);
    v17 = *(v16 + 16);
    v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v10;
    v19 = *(v3 + 48);
    *v5 = v10;
    v17(&v5[v19], v18, v15);
    sub_1D7FDFAD0(v5, v8);
    if (v9)
    {
      v20 = v12;
    }

    else
    {
      v21 = v12[3];
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v22 = v3;
      v23 = a1;
      v24 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      sub_1D7FDF528(0, &qword_1ECA0EF90, &qword_1ECA0EF88, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6F90]);
      v26 = v44;
      v27 = *(v45 + 72);
      v20 = swift_allocObject();
      v28 = _swift_stdlib_malloc_size(v20);
      if (!v27)
      {
        goto LABEL_33;
      }

      v29 = v28 - v26;
      if (v28 - v26 == 0x8000000000000000 && v27 == -1)
      {
        goto LABEL_34;
      }

      v31 = v29 / v27;
      v20[2] = v25;
      v20[3] = 2 * (v29 / v27);
      v32 = v20 + v26;
      v33 = v12[3];
      v34 = (v33 >> 1) * v27;
      if (v12[2])
      {
        if (v20 < v12 || v32 >= v12 + v44 + v34)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v32[v34];
      v9 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - (v33 >> 1);

      a1 = v23;
      v3 = v22;
      v14 = v41;
      v8 = v42;
    }

    v36 = __OFSUB__(v9--, 1);
    if (v36)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_1D7FDFAD0(v8, v13);
    v13 += *(v45 + 72);
    ++v10;
    v12 = v20;
  }

  v37 = v12[3];
  if (v37 < 2)
  {
    return;
  }

  v38 = v37 >> 1;
  v36 = __OFSUB__(v38, v9);
  v39 = v38 - v9;
  if (!v36)
  {
    v12[2] = v39;
    return;
  }

LABEL_35:
  __break(1u);
}

void sub_1D7FDFA68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D7FDFAD0(uint64_t a1, uint64_t a2)
{
  sub_1D7FDFA68(0, &qword_1ECA0EF88, MEMORY[0x1E69D6A58]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7FDFB50()
{
  if (!qword_1ECA0EFA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0EFA0);
    }
  }
}

unint64_t sub_1D7FDFBB4()
{
  result = qword_1ECA0EFA8;
  if (!qword_1ECA0EFA8)
  {
    sub_1D7FDFC40();
    sub_1D7FDEEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EFA8);
  }

  return result;
}

void sub_1D7FDFC40()
{
  if (!qword_1ECA0EFB0)
  {
    sub_1D7FDEC8C();
    v0 = sub_1D8190B14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0EFB0);
    }
  }
}

id sub_1D7FDFCE4()
{
  v1 = qword_1EDBB62D0;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D7FDFD38(uint64_t a1)
{
  v3 = qword_1EDBB62D0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D7FDFDB0()
{
  v1 = *(v0 + qword_1EDBB62E8);
  sub_1D7E19F24(v1);
  return v1;
}

uint64_t sub_1D7FDFDF0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EDBB62E8);
  v4 = *(v2 + qword_1EDBB62E8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1D7E0E10C(v4);
}

id CompositionalListReusableView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *CompositionalListReusableView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = qword_1EDBB62D0;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBB62E0) = 0;
  v2 = (v0 + qword_1EDBB62E8);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + qword_1EDBB62D8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v13 = type metadata accessor for CompositionalListReusableView();
  v3 = OUTLINED_FUNCTION_80();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v13);
  v7 = qword_1EDBB62D8;
  v8 = *&v6[qword_1EDBB62D8];
  v9 = v6;
  [v9 addSubview_];
  v10 = *&v6[v7];
  [v9 bounds];
  [v10 setFrame_];

  v11 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  return v9;
}

id CompositionalListReusableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CompositionalListReusableView.init(coder:)()
{
  v1 = qword_1EDBB62D0;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBB62E0) = 0;
  v2 = (v0 + qword_1EDBB62E8);
  *v2 = 0;
  v2[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

id sub_1D7FE0134()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_41();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[qword_1EDBB62D8];
  [v0 bounds];
  return [v1 setFrame_];
}

void sub_1D7FE01C8(void *a1)
{
  v1 = a1;
  sub_1D7FE0134();
}

void sub_1D7FE0210(void *a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_41();
  objc_msgSendSuper2(&v8, sel_applyLayoutAttributes_, a1);
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D7FDFDB0();
    if (v5)
    {
      v6 = v5;
      v7 = a1;
      v6(v1, v4);
      sub_1D7E0E10C(v6);
    }
  }
}

void sub_1D7FE02E8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7FE0210(v4);
}

uint64_t sub_1D7FE0350()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + 88);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CompositionalListReusableView();
  objc_msgSendSuper2(&v6, sel_prepareForReuse);
  sub_1D7FDFD38([objc_allocWithZone(MEMORY[0x1E69E58C0]) init]);
  sub_1D7FDFDF0(0, 0);
  return (*(v4 + 16))(v2, v4);
}

void sub_1D7FE0428(void *a1)
{
  v1 = a1;
  sub_1D7FE0350();
}

id sub_1D7FE0470(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_41();
  v2 = objc_msgSendSuper2(&v4, sel_preferredLayoutAttributesFittingAttributes_, a1);
  [v2 frame];
  [v2 setFrame_];
  return v2;
}

id sub_1D7FE0538(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D7FE0470(v4);

  return v6;
}

id CompositionalListReusableView.__deallocating_deinit()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_41();
  return objc_msgSendSuper2(&v1, sel_dealloc);
}

uint64_t sub_1D7FE05F8(uint64_t a1)
{
  v2 = *(a1 + qword_1EDBB62E8);

  return sub_1D7E0E10C(v2);
}

uint64_t CompositionalListReusableView.keyCommandBlocks.getter()
{
  v12 = MEMORY[0x1E69E7CC0];
  v8 = *(v0 + qword_1EDBB62D8);
  OUTLINED_FUNCTION_2_0();
  sub_1D7FE0778();
  v1 = v8;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 8))(v2, v3);
    sub_1D7F0A4EC(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D7F0A44C(v6);
  }

  return v12;
}

unint64_t sub_1D7FE0778()
{
  result = qword_1EDBB6760;
  if (!qword_1EDBB6760)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB6760);
  }

  return result;
}

void sub_1D7FE07D4()
{
  if (!qword_1EDBB6758)
  {
    sub_1D7FE0778();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB6758);
    }
  }
}

uint64_t CompositionalListReusableView.registerForChanges(block:)(uint64_t a1, uint64_t a2)
{

  return sub_1D7FDFDF0(a1, a2);
}

void TabBarDefaultCompressionAnimation.init(tabBar:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_topOffset) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_shouldCompressAtTop) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_shouldCloseGapOnScroll) = 1;
  sub_1D81923A4();
  __break(1u);
}

id TabBarDefaultCompressionAnimation.init(tabBarController:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_topOffset] = 0;
  v1[OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_shouldCompressAtTop] = 0;
  v1[OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_shouldCloseGapOnScroll] = 1;
  *&v1[OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TabBarDefaultCompressionAnimation.isCompressed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController);
  v2 = [v1 tabBar];
  [v2 frame];
  v4 = v3;

  result = [v1 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    OUTLINED_FUNCTION_0_99();

    return (OUTLINED_FUNCTION_1_76() <= v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TabBarDefaultCompressionAnimation.update(withPercentage:)()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController) view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    OUTLINED_FUNCTION_0_99();

    OUTLINED_FUNCTION_1_76();
    v3 = OUTLINED_FUNCTION_4_42();
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v14.origin.x = v5;
    v14.origin.y = v7;
    v14.size.width = v9;
    v14.size.height = v11;
    CGRectGetHeight(v14);
    v12 = OUTLINED_FUNCTION_4_42();
    [v12 frame];
    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

double TabBarDefaultCompressionAnimation.maximumBarHeight(for:)()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController) tabBar];
  [v1 frame];
  OUTLINED_FUNCTION_9_0();

  v2 = OUTLINED_FUNCTION_8_0();

  return CGRectGetHeight(*&v2);
}

Swift::Void __swiftcall TabBarDefaultCompressionAnimation.reload(with:)(UITraitCollection_optional with)
{
  v2 = [*(v1 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController) view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    OUTLINED_FUNCTION_9_0();

    v7.origin.x = OUTLINED_FUNCTION_8_0();
    CGRectGetHeight(v7);
    v4 = OUTLINED_FUNCTION_4_42();
    [v4 frame];
    OUTLINED_FUNCTION_0_99();

    OUTLINED_FUNCTION_1_76();
    v5 = OUTLINED_FUNCTION_4_42();
    [v5 frame];
    [v5 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id TabBarDefaultCompressionAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TabBarDefaultCompressionAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::tuple___C__NSRange_CGSize __swiftcall NSAttributedString.sizeAndRangeForString(constrainedTo:)(CGSize constrainedTo)
{
  height = constrainedTo.height;
  width = constrainedTo.width;
  v4 = CTFramesetterCreateWithAttributedString(v1);
  v5 = swift_slowAlloc();
  v18.location = 0;
  v18.length = 0;
  v19.width = width;
  v19.height = height;
  v6 = CTFramesetterSuggestFrameSizeWithConstraints(v4, v18, 0, v19, v5);
  v7 = [(__CFAttributedString *)v1 attributedSubstringFromRange:v5->location, v5->length, v6.width, v6.height];
  [v7 boundingRectWithSize:3 options:0 context:{width, height}];
  v9 = v8;
  v11 = v10;
  location = v5->location;
  length = v5->length;

  v14 = location;
  v15 = length;
  v16 = v9;
  v17 = v11;
  result._1.height = v17;
  result._1.width = v16;
  result._0.length = v15;
  result._0.location = v14;
  return result;
}

__C::CGRect __swiftcall NSAttributedString.boundingRect(with:)(CGSize with)
{
  [v1 boundingRectWithSize:35 options:0 context:{with.width, with.height}];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize __swiftcall NSAttributedString.integralSize()()
{
  [v0 size];
  v2 = ceil(v1);
  v4 = ceil(v3);
  result.height = v4;
  result.width = v2;
  return result;
}

uint64_t sub_1D7FE143C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t BlueprintTableViewDataSource.delegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4();
  return swift_unknownObjectWeakLoadStrong();
}

void BlueprintTableViewDataSource.delegate.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0();
  swift_unknownObjectWeakAssign();
}

void (*BlueprintTableViewDataSource.delegate.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_3_7();
  *(v5 + 40) = *(v4 + 144);
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D7F3F78C;
}

uint64_t BlueprintTableViewDataSource.sectionCollapsibleStateManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4();
}

uint64_t BlueprintTableViewDataSource.sectionCollapsibleStateManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 152);
  OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = v0;
}

uint64_t (*BlueprintTableViewDataSource.sectionCollapsibleStateManager.modify())()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return j_j__swift_endAccess;
}

uint64_t BlueprintTableViewDataSource.dragReorderDelegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4();
  return swift_unknownObjectRetain();
}

uint64_t BlueprintTableViewDataSource.dragReorderDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v6 = (v2 + *(v5 + 160));
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t (*BlueprintTableViewDataSource.dragReorderDelegate.modify())()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return j__swift_endAccess;
}

double BlueprintTableViewDataSource.diffableReorderDataSource.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

id BlueprintTableViewDataSource.init(blueprintProvider:blueprintLayoutProvider:blueprintViewCellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_77();
  *&v4[*(v10 + 152)] = 0;
  OUTLINED_FUNCTION_1_77();
  v12 = &v4[*(v11 + 160)];
  *v12 = 0;
  *(v12 + 1) = 0;
  OUTLINED_FUNCTION_1_77();
  *&v4[*(v13 + 192)] = 0;
  OUTLINED_FUNCTION_1_77();
  v14 = *((v9 & v8) + 0x50);
  OUTLINED_FUNCTION_48_0();
  v16 = v15;
  (*(v15 + 16))(&v4[v17], a1, v14);
  OUTLINED_FUNCTION_1_77();
  v18 = *((v9 & v8) + 0x58);
  OUTLINED_FUNCTION_48_0();
  v20 = v19;
  (*(v19 + 16))(&v4[v21], a2, v18);
  OUTLINED_FUNCTION_1_77();
  v22 = *((v9 & v8) + 0x60);
  OUTLINED_FUNCTION_48_0();
  v24 = v23;
  (*(v23 + 16))(&v4[v25], a3, v22);
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v30, sel_init);
  (*(v24 + 8))(a3, v22);
  (*(v20 + 8))(a2, v18);
  (*(v16 + 8))(a1, v14);
  return v26;
}

Swift::Void __swiftcall BlueprintTableViewDataSource.register(in:)(UITableView *in)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = (*MEMORY[0x1E69E7D40] & v4);
  [(UITableView *)in setDataSource:v2];
  OUTLINED_FUNCTION_1_77();
  v15 = in;
  v7 = *((v5 & v4) + 0x80);
  v8 = *((v5 & v4) + 0x60);
  (*(v7 + 56))(&v15, v8, v7);
  OUTLINED_FUNCTION_1_77();
  v10 = *(v9 + 152);
  OUTLINED_FUNCTION_8_4();
  v11 = *(v2 + v10);
  if (v11)
  {

    sub_1D7FE1E88(0, 0, sub_1D7FE5454, sub_1D816D704);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v6[11];
    v13[3] = v8;
    v13[4] = v6[13];
    v13[5] = v6[15];
    v13[6] = v7;
    v13[7] = v6[17];
    v13[8] = v12;
    v13[9] = v11;
    v13[10] = in;

    v14 = in;
    BlueprintSectionCollapsibleStateManager.onStateChange(_:)(sub_1D7FE23D4, v13);
  }
}

void sub_1D7FE1DBC(uint64_t a1, uint64_t a2)
{
  sub_1D7E0A1A8(0, &qword_1EDBAE530);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1D816D800(a1, a2);
  v6 = sub_1D8190EE4();

  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];
}

void sub_1D7FE1E88(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t))
{
  a3(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  a4(a1, a2);
  v9 = sub_1D8190EE4();

  [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v9];
}

void sub_1D7FE1F58(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v31 = a4;
  v6 = *a3;
  v32 = sub_1D818E994();
  v7 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 88);
  v30[1] = a3;
  v11 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v38 = AssociatedTypeWitness;
  v39 = v13;
  v33 = v15;
  v34 = AssociatedConformanceWitness;
  v40 = AssociatedConformanceWitness;
  v41 = v15;
  v16 = type metadata accessor for Blueprint();
  v35 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30[0] = Strong;
    BlueprintProviderType.blueprint.getter(v11, v10);
    swift_getWitnessTable();
    v38 = AssociatedTypeWitness;
    v39 = v13;
    v40 = v34;
    v41 = v33;
    type metadata accessor for BlueprintSection();
    swift_getWitnessTable();
    sub_1D81918C4();
    (*(v35 + 8))(v18, v16);
    if (v37 != 1)
    {
      v20 = v36;
      swift_checkMetadataState();
      swift_getWitnessTable();
      v21 = sub_1D8191834();
      if (v21 < 0)
      {
        __break(1u);
        return;
      }

      v22 = v21;
      if (v21)
      {
        v35 = a1;
        v38 = MEMORY[0x1E69E7CC0];
        sub_1D7EB0144();
        v23 = 0;
        v24 = v38;
        v25 = v32;
        do
        {
          MEMORY[0x1DA710B40](v23, v20);
          v38 = v24;
          v26 = *(v24 + 16);
          if (v26 >= *(v24 + 24) >> 1)
          {
            sub_1D7EB0144();
            v25 = v32;
            v24 = v38;
          }

          ++v23;
          *(v24 + 16) = v26 + 1;
          (*(v7 + 32))(v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v9, v25);
        }

        while (v22 != v23);
        v27 = v31;
      }

      else
      {
        v27 = v31;
      }

      BlueprintSectionCollapsibleStateManager.state(for:)(&v38);
      v28 = v38;
      v29 = sub_1D8191304();

      if (v28)
      {
        [v27 insertRowsAtIndexPaths:v29 withRowAnimation:0];
      }

      else
      {
        [v27 deleteRowsAtIndexPaths:v29 withRowAnimation:0];
      }
    }
  }
}

uint64_t BlueprintTableViewDataSource.registerKeyCommandTraversal(observable:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  *(v1 + *(v2 + 192)) = v0;
}

uint64_t sub_1D7FE2494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16[1] = a1;
  v16[2] = a2;
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for BlueprintItem();
  v16[0] = sub_1D8191E84();
  v6 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0]);
  v8 = v16 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v18 = v9;
  v19 = AssociatedTypeWitness;
  v20 = v10;
  v21 = AssociatedConformanceWitness;
  type metadata accessor for Blueprint();
  Blueprint.item(indexPath:)();
  if (__swift_getEnumTagSinglePayload(v8, 1, v5) == 1)
  {
    result = (*(v6 + 8))(v8, v16[0]);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = BlueprintItem.identifier.getter();
    v13 = v14;
    result = (*(*(v5 - 8) + 8))(v8, v5);
  }

  v15 = v17;
  *v17 = v12;
  v15[1] = v13;
  return result;
}

void sub_1D7FE26F8()
{
  OUTLINED_FUNCTION_120();
  v17 = v1;
  v18 = v2;
  v16 = v3;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v0;
  v7 = *(v6 + 0x70);
  v8 = *(v6 + 0x50);
  OUTLINED_FUNCTION_10_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10_8();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67();
  v26 = AssociatedTypeWitness;
  v27 = v10;
  v28 = AssociatedConformanceWitness;
  v29 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12_24();
  BlueprintProviderType.blueprint.getter(v8, v7);
  v19[2] = v8;
  v20 = *(v6 + 88);
  v21 = *((v5 & v4) + 0x68);
  v22 = v7;
  v23 = *(v6 + 120);
  v24 = *((v5 & v4) + 0x88);
  v25 = AssociatedTypeWitness;
  v18(v17, v19, v16);
  (*(v14 + 8))(AssociatedTypeWitness, v12);
  OUTLINED_FUNCTION_100();
}

void sub_1D7FE2910()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint();
  Blueprint.indexPath(for:)();
}

Swift::Int __swiftcall BlueprintTableViewDataSource.numberOfSections(in:)(UITableView *in)
{
  OUTLINED_FUNCTION_120();
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_35_10();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  BlueprintProviderType.blueprint.getter(v3, v2);
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  sub_1D8191834();
  v5 = OUTLINED_FUNCTION_4_8();
  v6(v5);
  OUTLINED_FUNCTION_100();
  return result;
}

Swift::Int sub_1D7FE2BD4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = BlueprintTableViewDataSource.numberOfSections(in:)(v5);

  return v6;
}

Swift::Int __swiftcall BlueprintTableViewDataSource.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v30 = v4;
  v27 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = OUTLINED_FUNCTION_34_9();
  v7 = OUTLINED_FUNCTION_34_9();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_2();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v28 = v11;
  v29 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v32 = v6;
  v33 = v7;
  v34 = AssociatedConformanceWitness;
  v35 = v9;
  OUTLINED_FUNCTION_30_2();
  v15 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12_24();
  v19 = *((v5 & v27) + 0x98);
  OUTLINED_FUNCTION_8_4();
  if (!*(v3 + v19) || (, v20 = OUTLINED_FUNCTION_4_8(), BlueprintProviderType.blueprint.getter(v20, v21), OUTLINED_FUNCTION_37_0(), (*(v17 + 8))(AssociatedConformanceWitness, v15), BlueprintSectionCollapsibleStateManager.state(for:)(&v31), , (*(v28 + 8))(v14, v29), v31))
  {
    v22 = OUTLINED_FUNCTION_4_8();
    BlueprintProviderType.blueprint.getter(v22, v23);
    OUTLINED_FUNCTION_37_0();
    (*(v17 + 8))(AssociatedConformanceWitness, v15);
    OUTLINED_FUNCTION_7_5();
    v24 = v29;
    swift_getWitnessTable();
    sub_1D8191834();
    (*(v28 + 8))(v14, v24);
  }

  OUTLINED_FUNCTION_100();
  return result;
}

Swift::Int sub_1D7FE2F2C(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  v8 = BlueprintTableViewDataSource.tableView(_:numberOfRowsInSection:)(v7, a4);

  return v8;
}

void BlueprintTableViewDataSource.tableView(_:cellForRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v39 = v1;
  v45 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v38 = *((*MEMORY[0x1E69E7D40] & v3) + 0x78);
  v37 = *((v4 & v3) + 0x58);
  OUTLINED_FUNCTION_10_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_9();
  v43 = v6;
  v44 = v5;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_94();
  v40 = v8;
  v46 = v3;
  v34 = v4;
  v9 = *((v4 & v3) + 0x70);
  v10 = *((v4 & v3) + 0x50);
  v11 = OUTLINED_FUNCTION_91_0();
  v12 = OUTLINED_FUNCTION_91_0();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v48[0] = v11;
  v48[1] = v12;
  v48[2] = v13;
  v48[3] = v14;
  v15 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v35 = v22;
  v36 = v21;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v34 - v24;
  v26 = v34;
  BlueprintProviderType.blueprint.getter(v10, v9);
  v27 = v39;
  OUTLINED_FUNCTION_110();
  Blueprint.subscript.getter();
  (*(v17 + 8))(v20, v15);
  BlueprintLayoutProviderType.layoutBlueprint.getter(v37, v38);
  v28 = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedConformanceWitness();
  v47[0] = v28;
  v47[1] = AssociatedTypeWitness;
  v47[2] = v29;
  v47[3] = AssociatedConformanceWitness;
  v30 = type metadata accessor for BlueprintLayout();
  v31 = v40;
  v32 = OUTLINED_FUNCTION_110();
  BlueprintLayout.subscript.getter(v32, v33);
  (*(*(v30 - 8) + 8))(v48, v30);
  v47[0] = v45;
  (*(*((v26 & v46) + 0x80) + 64))(v48, v25, v31, v47, v27, *((v26 & v46) + 0x60));
  (*(v43 + 8))(v31, v44);
  (*(v35 + 8))(v25, v36);
  OUTLINED_FUNCTION_100();
}

id sub_1D7FE3404(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  v10 = a1;
  BlueprintTableViewDataSource.tableView(_:cellForRowAt:)();
  v12 = v11;

  (*(v6 + 8))(v8, v5);

  return v12;
}

void BlueprintTableViewDataSource.tableView(_:canEditRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v47 = v1;
  v43 = v2;
  v45 = *v0;
  v3 = *((*MEMORY[0x1E69E7D40] & v45) + 0x70);
  v4 = *((*MEMORY[0x1E69E7D40] & v45) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v46 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v42 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v41 - v10;
  v11 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_72_0();
  v13 = swift_getAssociatedConformanceWitness();
  v50[0] = v11;
  v50[1] = AssociatedTypeWitness;
  v50[2] = AssociatedConformanceWitness;
  v51 = v13;
  v14 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v48 = v21;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  BlueprintProviderType.blueprint.getter(v4, v3);
  Blueprint.subscript.getter();
  (*(v16 + 8))(v19, v14);
  v25 = *(v46 + 16);
  v26 = v25(v44, v24, AssociatedTypeWitness);
  OUTLINED_FUNCTION_91(v26, &qword_1EDBB0730);
  if (OUTLINED_FUNCTION_11_28())
  {
    v27 = v20;
    sub_1D7E05450(v49, v50);
    v28 = v51;
    v29 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    if ((*(v29 + 24))(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_9_23();
      v31(v30, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v20 = v27;
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_1D7FE3970(v49, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  }

  if ([v43 isEditing])
  {
    v32 = v25(v42, v24, AssociatedTypeWitness);
    OUTLINED_FUNCTION_91(v32, &qword_1ECA0EFE0);
    if (OUTLINED_FUNCTION_11_28())
    {
      v33 = OUTLINED_FUNCTION_14_19();
      v34(v33);
      v35 = OUTLINED_FUNCTION_9_23();
      v36(v35, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
    }

    else
    {
      OUTLINED_FUNCTION_90();
      v39 = OUTLINED_FUNCTION_9_23();
      v40(v39, v20);
      sub_1D7FE3970(v49, &unk_1ECA0E640, &qword_1ECA0EFE0, &protocol descriptor for Movable);
    }
  }

  else
  {
    v37 = OUTLINED_FUNCTION_9_23();
    v38(v37, v20);
  }

LABEL_11:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FE3970(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7FE39D8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1D7FE39D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E069F0(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void BlueprintTableViewDataSource.tableView(_:commit:forRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v105 = v2;
  v4 = v3;
  v92 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = type metadata accessor for BlueprintViewAction.Action(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_15();
  v94 = v7 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v96 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_94();
  v97 = v11;
  OUTLINED_FUNCTION_5_38();
  sub_1D7E1ACFC(0, v12, v13);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_94();
  v99 = v15;
  v98 = type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v95 = v18 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v100 = v21;
  v101 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23();
  v93 = v22;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  *&v106 = v25;
  *(&v106 + 1) = AssociatedTypeWitness;
  *&v107 = v26;
  *(&v107 + 1) = AssociatedConformanceWitness;
  v27 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v102 = v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_94();
  v104 = v30;
  *&v106 = v25;
  *(&v106 + 1) = AssociatedTypeWitness;
  *&v107 = v26;
  *(&v107 + 1) = AssociatedConformanceWitness;
  v31 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23();
  v91 = v35;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v86 - v37;
  if (v4 == 2 && sub_1D818E984() == 2)
  {
    v90 = v27;
    v89 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
    v39 = OUTLINED_FUNCTION_72_0();
    BlueprintProviderType.blueprint.getter(v39, v40);
    OUTLINED_FUNCTION_6_2();
    swift_getWitnessTable();
    v41 = v31;
    v42 = sub_1D8191834();
    if (sub_1D818E974() >= v42)
    {
      (*(v33 + 8))(v38, v41);
      goto LABEL_14;
    }

    v87 = v33;
    sub_1D818E974();
    Blueprint.subscript.getter();
    OUTLINED_FUNCTION_7_5();
    v88 = v38;
    v43 = v90;
    swift_getWitnessTable();
    v44 = sub_1D8191834();
    if (sub_1D818E964() >= v44)
    {
      v70 = OUTLINED_FUNCTION_13_23();
      v71(v70, v43);
      v72 = OUTLINED_FUNCTION_26_9();
      v74 = v41;
    }

    else
    {
      v86 = v41;
      v45 = sub_1D818E964();
      v46 = v103;
      BlueprintSection.subscript.getter(v45, v43);
      v47 = (*(v96 + 16))(v97, v46, AssociatedTypeWitness);
      OUTLINED_FUNCTION_91(v47, &qword_1EDBB0730);
      if (swift_dynamicCast())
      {
        v48 = *(&v107 + 1);
        v49 = v108;
        __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
        v50 = v99;
        (*(v49 + 40))(2, v48, v49);
        __swift_destroy_boxed_opaque_existential_1Tm(&v106);
        if (__swift_getEnumTagSinglePayload(v50, 1, v98) != 1)
        {
          v51 = v50;
          v52 = v95;
          sub_1D7F9E368(v51, v95);
          type metadata accessor for BlueprintViewActionRequest();
          v53 = v100;
          (*(v100 + 16))(v93, v103, v101);
          BlueprintViewAction.action.getter(v94);
          LOBYTE(v106) = 1;
          v54 = OUTLINED_FUNCTION_4_8();
          v58 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v54, v55, v56, 0, v57, 0);
          OUTLINED_FUNCTION_8_4();
          Strong = swift_unknownObjectWeakLoadStrong();
          v60 = (v87 + 8);
          if (Strong)
          {
            v61 = Strong;
            v62 = v91;
            v63 = OUTLINED_FUNCTION_72_0();
            BlueprintProviderType.blueprint.getter(v63, v64);
            (*(*(v92 + 136) + 72))(v62, v58, *(v92 + 104));

            v65 = *v60;
            v66 = v52;
            v67 = v86;
            (*v60)(v62, v86);
            sub_1D7FE5230(v66);
            (*(v53 + 8))(v103, v101);
            v68 = OUTLINED_FUNCTION_13_23();
            v69(v68, v90);
            v65(v88, v67);
          }

          else
          {

            sub_1D7FE5230(v52);
            (*(v53 + 8))(v103, v101);
            v84 = OUTLINED_FUNCTION_13_23();
            v85(v84, v90);
            (*v60)(v88, v86);
          }

          goto LABEL_14;
        }
      }

      else
      {
        v108 = 0;
        v106 = 0u;
        v107 = 0u;
        sub_1D7FE3970(&v106, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
        v50 = v99;
        __swift_storeEnumTagSinglePayload(v99, 1, 1, v98);
      }

      OUTLINED_FUNCTION_5_38();
      sub_1D7FE5400(v50, v75, v76);
      sub_1D81919C4();
      sub_1D7FE39D8(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1D819FAB0;
      *&v106 = 0;
      *(&v106 + 1) = 0xE000000000000000;
      swift_getWitnessTable();
      OUTLINED_FUNCTION_110();
      sub_1D8192604();
      v78 = v106;
      *(v77 + 56) = MEMORY[0x1E69E6158];
      *(v77 + 64) = sub_1D7E13BF4();
      *(v77 + 32) = v78;
      sub_1D7E0A1A8(0, &qword_1EDBBE110);
      v79 = sub_1D8191E44();
      sub_1D818FD44();

      v80 = OUTLINED_FUNCTION_110();
      v81(v80);
      v82 = OUTLINED_FUNCTION_13_23();
      v83(v82, v90);
      v72 = OUTLINED_FUNCTION_26_9();
      v74 = v86;
    }

    v73(v72, v74);
  }

LABEL_14:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FE43C4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  v10 = a1;
  BlueprintTableViewDataSource.tableView(_:commit:forRowAt:)();

  return (*(v6 + 8))(v8, v5);
}

void BlueprintTableViewDataSource.tableView(_:canMoveRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v32 = v2;
  v33 = v1;
  v3 = *MEMORY[0x1E69E7D40];
  v30 = *v0;
  v31 = v3;
  v4 = *((v3 & v30) + 0x70);
  v5 = *((v3 & v30) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v28 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_94();
  v29 = v9;
  OUTLINED_FUNCTION_10_8();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67();
  v35[0] = v10;
  v35[1] = AssociatedTypeWitness;
  v35[2] = AssociatedConformanceWitness;
  v35[3] = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12_24();
  BlueprintProviderType.blueprint.getter(v5, v4);
  Blueprint.subscript.getter();
  (*(v14 + 8))(v17, v12);
  if (sub_1D7FE4808(v33))
  {
    v19 = (*(v28 + 16))(v29, v10, AssociatedTypeWitness);
    OUTLINED_FUNCTION_91(v19, &qword_1ECA0EFE0);
    if (OUTLINED_FUNCTION_11_28())
    {
      v20 = OUTLINED_FUNCTION_14_19();
      v21(v20);
      v22 = OUTLINED_FUNCTION_19_15();
      v23(v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }

    else
    {
      OUTLINED_FUNCTION_90();
      v26 = OUTLINED_FUNCTION_19_15();
      v27(v26);
      sub_1D7FE3970(&v34, &unk_1ECA0E640, &qword_1ECA0EFE0, &protocol descriptor for Movable);
    }
  }

  else
  {
    v24 = OUTLINED_FUNCTION_19_15();
    v25(v24);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FE4808(void *a1)
{
  v2 = [a1 window];
  if (v2 && (v3 = v2, v4 = [v2 traitCollection], v3, v4) && ((v5 = objc_msgSend(v4, sel_verticalSizeClass), v6 = objc_msgSend(v4, sel_horizontalSizeClass), v4, v5 == 2) ? (v7 = v6 == 2) : (v7 = 0), v7))
  {
    return 1;
  }

  else
  {
    return [a1 isEditing];
  }
}

uint64_t sub_1D7FE48D4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, uint64_t))
{
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  sub_1D818E924();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v12, v11);

  v14 = OUTLINED_FUNCTION_110();
  v15(v14);
  return a5 & 1;
}

void BlueprintTableViewDataSource.tableView(_:moveRowAt:to:)()
{
  OUTLINED_FUNCTION_120();
  v25 = v2;
  v3 = *v0;
  v22 = v4;
  v23 = v3;
  v5 = *MEMORY[0x1E69E7D40];
  v21 = *MEMORY[0x1E69E7D40] & v3;
  v6 = *((v5 & v3) + 0x70);
  v7 = *((v5 & v3) + 0x50);
  v26 = OUTLINED_FUNCTION_36_8();
  v27 = OUTLINED_FUNCTION_36_8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_30_2();
  v8 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_24();
  v24 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  v20 = v7;
  v23 = v6;
  BlueprintProviderType.blueprint.getter(v7, v6);
  Blueprint.subscript.getter();
  v17 = *(v10 + 8);
  v25 = v8;
  v17(v1, v8);
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    BlueprintProviderType.blueprint.getter(v20, v23);
    (*(*(v21 + 136) + 168))(v1, v16, v22, *(v21 + 104));

    v17(v1, v25);
  }

  (*(v13 + 8))(v16, v24);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FE4CBC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1D818E924();
  sub_1D818E924();
  v12 = a3;
  v13 = a1;
  BlueprintTableViewDataSource.tableView(_:moveRowAt:to:)();

  v14 = *(v6 + 8);
  v14(v8, v5);
  return (v14)(v11, v5);
}

id BlueprintTableViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintTableViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7FE4EB0(char *a1)
{
  MEMORY[0x1DA715E30](&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x90)]);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v2 + 8))(&a1[v3]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v4 + 8))(&a1[v5]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v6 + 8))(&a1[v7]);
  OUTLINED_FUNCTION_1();
}

void (*sub_1D7FE5044(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDataSource.dragReorderDelegate.modify();
  return sub_1D7F4150C;
}

Swift::Void __swiftcall BlueprintTableViewDataSource.traitCollectionDidChange(_:traitCollection:)(UITraitCollection_optional _, UITraitCollection traitCollection)
{
  v3 = *&_.is_nil;
  isa = _.value.super.isa;
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  OUTLINED_FUNCTION_44();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v10 + 16))(v14 - v11, &v2[*((v9 & v8) + 0xB8)], v5, v7);
  sub_1D7E069F0(0, qword_1EDBB62F8);
  if (swift_dynamicCast())
  {
    v12 = v14[1];
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(isa, v3, ObjectType, v12);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7FE5230(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintViewAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7FE528C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D7FE5400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7E1ACFC(0, a2, a3);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D7FE5454()
{
  if (!qword_1ECA0EFE8)
  {
    type metadata accessor for HiddenView();
    v0 = type metadata accessor for TableViewCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0EFE8);
    }
  }
}

uint64_t sub_1D7FE54B4()
{

  return v0;
}

uint64_t sub_1D7FE54E4()
{
  sub_1D7FE54B4();

  return swift_deallocClassInstance();
}

void sub_1D7FE5548()
{
  if (!qword_1ECA0EFF0)
  {
    v0 = sub_1D818FD14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0EFF0);
    }
  }
}

uint64_t UICollectionView.update(with:apply:response:animated:beforeCompletion:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v10 = v9;
  v18 = [v10 dataSource];
  if (!v18)
  {
    a2();
    return (a8)(0);
  }

  v19 = v18;
  v26 = a8;
  v20 = UICollectionView.transition.getter();
  if (!v20)
  {
    goto LABEL_9;
  }

  if (!BlueprintCollectionViewLayoutTransition.isTransitioning.getter(v20))
  {

LABEL_9:
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D7E0E768(a1, v28);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = a2;
    *(v25 + 32) = a3;
    *(v25 + 40) = v26;
    *(v25 + 48) = a9;
    *(v25 + 56) = a4;
    *(v25 + 64) = a5 & 1;
    sub_1D7E05450(v28, v25 + 72);
    *(v25 + 112) = a6;
    *(v25 + 120) = a7;
    *(v25 + 128) = v19;

    swift_unknownObjectRetain();

    sub_1D7FE62A0(sub_1D7FE8108, v25);

    return swift_unknownObjectRelease();
  }

  sub_1D7FE814C();
  v21 = swift_allocError();
  *v22 = 0xD00000000000002ELL;
  *(v22 + 8) = 0x80000001D81CDC70;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 3;
  a8();

  swift_unknownObjectRelease();
}

void sub_1D7FE57F8(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = UICollectionView.transition.getter();
    if (v19)
    {
      if (BlueprintCollectionViewLayoutTransition.isTransitioning.getter(v19))
      {
        sub_1D7FE814C();
        v20 = swift_allocError();
        *v21 = 0xD00000000000003ELL;
        *(v21 + 8) = 0x80000001D81CDCA0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 32) = 3;
        a4();

        return;
      }
    }

    v24 = a5;
    v25 = a7;
    if (a6)
    {
      v26 = 0;
      BlueprintViewActionResponse.complete(apply:)(&v26);
    }

    MEMORY[0x1EEE9AC00](v19);
    v22[2] = v18;
    v22[3] = a2;
    v22[4] = a3;
    v22[5] = a8;
    v22[6] = a9;
    v22[7] = a10;
    v22[8] = a6;
    v22[9] = a4;
    v22[10] = v24;
    v23 = v25 & 1;
    sub_1D817062C(v25 & 1, sub_1D7FE8428, v22);
    if (a6)
    {
      v26 = 1;
      BlueprintViewActionResponse.complete(apply:)(&v26);
    }
  }

  else
  {
    a2();
    (a4)(0);
  }
}

uint64_t sub_1D7FE59D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_1D7E0E768(a4, v32);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  sub_1D7E05450(v32, v16 + 40);
  *(v16 + 80) = a5;
  *(v16 + 88) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D7EA99F0;
  *(v17 + 24) = v16;
  v30 = sub_1D7EA8F68;
  v31 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D7E74D74;
  v29 = &block_descriptor_45;
  v18 = _Block_copy(&aBlock);
  v19 = a1;

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7E0E768(a4, v32);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a7;
  *(v21 + 32) = a8;
  *(v21 + 40) = a9;
  sub_1D7E05450(v32, v21 + 48);
  *(v21 + 88) = a10;
  v30 = sub_1D7EB30C0;
  v31 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D7EB30D4;
  v29 = &block_descriptor_52;
  v22 = _Block_copy(&aBlock);

  [v19 performBatchUpdates:v18 completion:v22];
  _Block_release(v22);
  _Block_release(v18);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_1D7FE5C88(void *a1, void *a2)
{
  v4 = sub_1D818E8B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  if ([a1 dataSource])
  {
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    v17 = *(v16 + 40);
    v23 = a1;
    v17(v15, v16);
    v18 = a2[3];
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v18);
    (*(v19 + 32))(v18, v19);
    sub_1D7EDF944(v7, v14);
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v10, v4);
    v21 = sub_1D818E814();
    v20(v14, v4);
    [v23 reloadSections_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7FE5E94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D7E0E768(a2, v24);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  sub_1D7E05450(v24, v10 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D7FE84C4;
  *(v11 + 24) = v10;
  v22 = sub_1D7EA8F68;
  v23 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1D7E74D74;
  v21 = &block_descriptor_90;
  v12 = _Block_copy(&aBlock);
  v13 = a1;

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v22 = sub_1D7FE84D0;
  v23 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1D7EB30D4;
  v21 = &block_descriptor_96;
  v15 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  [v13 performBatchUpdates:v12 completion:v15];
  _Block_release(v15);
  _Block_release(v12);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_1D7FE60D4(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 88))(v3, v4);
  sub_1D818E994();
  v5 = sub_1D8191304();

  [a1 reloadItemsAtIndexPaths_];
}

void sub_1D7FE6180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    LOBYTE(v9[0]) = 2;
    BlueprintViewActionResponse.complete(apply:)(v9);
  }

  v6 = [objc_opt_self() sharedApplication];
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v9[4] = sub_1D7EB38E4;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7E64940;
  v9[3] = &block_descriptor_102;
  v8 = _Block_copy(v9);

  [v6 ts:v8 installCACommitCompletionBlock:?];
  _Block_release(v8);
}

void sub_1D7FE62A0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v3))
  {
    v6 = v3;
    SwipeActionCollectionView.deferUpdates(block:)(a1, a2);
  }

  else
  {
    a1();
  }
}

uint64_t UICollectionView.invalidateLayout(animated:completion:)(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  LOBYTE(aBlock) = 0;
  v14 = UICollectionView.indexPaths(visibility:)(&aBlock);
  if (a1)
  {
    v44 = v3;
    v42 = a3;
    v15 = *(v14 + 16);
    v41 = v14;
    if (v15)
    {
      v18 = *(v9 + 16);
      v17 = v9 + 16;
      v16 = v18;
      v19 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v20 = *(v17 + 56);
      v43 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v16(v13, v19, v7);
        v21 = sub_1D818E8E4();
        v22 = [v44 cellForItemAtIndexPath_];

        (*(v17 - 8))(v13, v7);
        if (v22 && (*&aBlock = v22, sub_1D7E0A1A8(0, &qword_1EDBB3110), sub_1D7FE8218(), (swift_dynamicCast() & 1) != 0))
        {
          if (*(&v51 + 1))
          {
            sub_1D7E05450(&v50, &aBlock);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D7EE5294(0, *(v43 + 16) + 1, 1, v43);
              v43 = v25;
            }

            v24 = *(v43 + 16);
            v23 = *(v43 + 24);
            if (v24 >= v23 >> 1)
            {
              v26 = OUTLINED_FUNCTION_2_10(v23);
              sub_1D7EE5294(v26, v24 + 1, 1, v43);
              v43 = v27;
            }

            *(v43 + 16) = v24 + 1;
            sub_1D7E05450(&aBlock, v43 + 40 * v24 + 32);
            goto LABEL_14;
          }
        }

        else
        {
          v52 = 0;
          v50 = 0u;
          v51 = 0u;
        }

        sub_1D7FE81A0(&v50);
LABEL_14:
        v19 += v20;
        if (!--v15)
        {
          goto LABEL_18;
        }
      }
    }

    v43 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v31 = *(v43 + 16);
    if (v31)
    {
      v32 = v43 + 32;
      do
      {
        sub_1D7E0E768(v32, &aBlock);
        v33 = v47;
        v34 = v48;
        __swift_project_boxed_opaque_existential_1(&aBlock, v47);
        v34[1](v33, v34);
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        v32 += 40;
        --v31;
      }

      while (v31);
    }

    OUTLINED_FUNCTION_0_32();
    v35 = swift_allocObject();
    *(v35 + 16) = v44;
    *(v35 + 24) = v41;
    OUTLINED_FUNCTION_0_32();
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1D7FE8274;
    *(v36 + 24) = v35;
    v48 = sub_1D7E74D6C;
    v49 = v36;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v46 = sub_1D7E74D74;
    v47 = &block_descriptor_33;
    v37 = _Block_copy(&aBlock);
    v38 = v44;

    OUTLINED_FUNCTION_1_63();
    v39 = swift_allocObject();
    v39[2] = v43;
    v39[3] = a2;
    v39[4] = v42;
    v48 = sub_1D7FE827C;
    v49 = v39;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v46 = sub_1D7EB30D4;
    v47 = &block_descriptor_15_0;
    v40 = _Block_copy(&aBlock);

    [v38 performBatchUpdates:v37 completion:v40];
    _Block_release(v40);
    _Block_release(v37);
  }

  else
  {
    v28 = sub_1D8191304();

    [v3 reconfigureItemsAtIndexPaths_];

    v29 = [v3 collectionViewLayout];
    [v29 invalidateLayout];

    return a2();
  }
}

void sub_1D7FE67FC(void *a1)
{
  sub_1D818E994();
  v2 = sub_1D8191304();
  [a1 reconfigureItemsAtIndexPaths_];

  v3 = [a1 collectionViewLayout];
  [v3 invalidateLayout];
}

uint64_t sub_1D7FE6894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[3];
      v7 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v7 + 16))(v6, v7);
      v5 += 5;
      --v4;
    }

    while (v4);
  }

  return a3();
}

void UICollectionView.frame(at:)(uint64_t a1@<X8>)
{
  v3 = [v1 collectionViewLayout];
  v4 = sub_1D818E8E4();
  v5 = [v3 layoutAttributesForItemAtIndexPath_];

  if (v5)
  {
    [v5 frame];
    v13 = v6;
    v14 = v7;
    v12 = v8;
    v15 = v9;

    *&v11 = v12;
    *&v10 = v13;
    *(&v10 + 1) = v14;
    *(&v11 + 1) = v15;
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5 == 0;
}

void __swiftcall UICollectionView.sectionFrame(at:)(__C::CGRect_optional *__return_ptr retstr, Swift::Int at)
{
  v5 = [v2 collectionViewLayout];
  sub_1D7FE8288();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_1D7FE72A0(v6);
    if (*(v18 + 16) && (v8 = sub_1D7E7E198(at), (v9 & 1) != 0))
    {
      v10 = (*(v18 + 56) + 32 * v8);
      v13 = v10[1];
      v14 = *v10;
      sub_1D7EAF9D8(v17, v15);
    }

    else
    {
      sub_1D7EAF9D8(v17, v15);
      v13 = 0;
      v14 = 0;
    }

    sub_1D7E598FC(v16);
    sub_1D7EAFC0C(v17);
    v12 = v13;
    v11 = v14;
  }

  else
  {

    v11 = 0;
    v12 = 0;
  }

  retstr->value.origin = v11;
  retstr->value.size = v12;
  retstr->is_nil = v7 == 0;
}

void UICollectionView.scroll(to:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (sub_1D7FE6C98())
  {
    v5 = [v2 collectionViewLayout];
    sub_1D7FE8288();
    if (swift_dynamicCastClass())
    {
      sub_1D818F154();
      memcpy(__dst, __src, sizeof(__dst));
      sub_1D7E598FC(__dst);
      v6 = __dst[16];
      v7 = sub_1D818E8E4();
      if (v6)
      {
        v8 = 2;
      }

      else
      {
        v8 = 16;
      }

      [v3 scrollToItemAtIndexPath:v7 atScrollPosition:v8 animated:a2 & 1];
    }

    else
    {

      v9 = sub_1D818E8E4();
      [v2 scrollToItemAtIndexPath:v9 atScrollPosition:2 animated:a2 & 1];
    }
  }
}

BOOL sub_1D7FE6C98()
{
  result = 0;
  if ((sub_1D818E974() & 0x8000000000000000) == 0)
  {
    v1 = sub_1D818E974();
    if (v1 < [v0 numberOfSections] && (sub_1D818E964() & 0x8000000000000000) == 0)
    {
      v2 = sub_1D818E964();
      if (v2 < [v0 numberOfItemsInSection_])
      {
        return 1;
      }
    }
  }

  return result;
}

void UICollectionView.snap(to:direction:animated:)(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v5 = *a2;
  if (sub_1D7FE6C98())
  {
    v6 = sub_1D818E8E4();
    v8 = v6;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 8;
    }

    [v3 scrollToItemAtIndexPath:v6 atScrollPosition:v7 animated:a3 & 1];
  }
}

Swift::Void __swiftcall UICollectionView.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (animated)
  {

    [v2 setEditing_];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = _;
    OUTLINED_FUNCTION_0_32();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1D7FE82E8;
    *(v6 + 24) = v5;
    v10[4] = sub_1D7EA8F68;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D7E74D74;
    v10[3] = &block_descriptor_25_1;
    v7 = _Block_copy(v10);
    v8 = v2;

    [v4 performWithoutAnimation_];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7FE6F98@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 indexPathForItemAtPoint_];
  if (v3)
  {
    v4 = v3;
    sub_1D818E924();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D818E994();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

double sub_1D7FE7018@<D0>(uint64_t a1@<X8>)
{
  UICollectionView.frame(at:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

CGFloat sub_1D7FE705C@<D0>(Swift::Int a1@<X0>, uint64_t a2@<X8>)
{
  UICollectionView.sectionFrame(at:)(&v5, a1);
  result = v5.value.origin.x;
  size = v5.value.size;
  *a2 = v5.value.origin;
  *(a2 + 16) = size;
  *(a2 + 32) = v5.is_nil;
  return result;
}

id (*sub_1D7FE7114(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 allowsMultipleSelection];
  return sub_1D7FE7168;
}

id (*sub_1D7FE71BC(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 allowsSelection];
  return sub_1D7FE7210;
}

void sub_1D7FE722C(uint64_t a1, char a2)
{
  v4 = sub_1D818E8E4();
  [v2 deselectItemAtIndexPath:v4 animated:a2 & 1];
}

uint64_t sub_1D7FE72A0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  memcpy(__dst, v1 + v5, sizeof(__dst));
  memcpy(v11, v1 + v5, 0x4E8uLL);
  if (sub_1D7E67500(v11) == 1)
  {
    v6 = *((*v4 & *v1) + 0x98);
    memcpy(v9, v1 + v6, sizeof(v9));
    memcpy(v3, v1 + v6, 0x4E8uLL);
    sub_1D7E6755C(v9, v8);
  }

  else
  {
    memcpy(v3, __dst, 0x4E8uLL);
  }

  return sub_1D7E9A440(__dst, v9, sub_1D7E54FF4);
}

uint64_t sub_1D7FE73EC(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_1D81913D4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D7FE7460(uint64_t result, unint64_t *a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      sub_1D7E0A1A8(0, a2);
      result = sub_1D81913D4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1D7FE74E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v26 = a5;
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    while (2)
    {
      v9 = *(v6 + 8 * v5);
      v10 = v8;
      v11 = v7;
      do
      {
        v12 = *v11;
        v13 = v9;
        v14 = v12;
        [v13 frame];
        v29 = v15;
        v30 = v16;
        [v14 frame];
        v27 = v17;
        v28 = v18;

        v19.f64[0] = v29;
        v20.f64[0] = v30;
        v19.f64[1] = v27;
        v20.f64[1] = v28;
        v21 = vsubq_f64(0, v19);
        v22 = vsubq_f64(0, v20);
        v23 = vsqrtq_f64(vaddq_f64(vmulq_f64(v21, v21), vmulq_f64(v22, v22)));
        if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v23, 1), v23))).u32[0])
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v24 = *v11;
        v9 = *(v11 + 8);
        *v11 = v9;
        *(v11 + 8) = v24;
        v11 -= 8;
      }

      while (!__CFADD__(v10++, 1));
      ++v5;
      v7 += 8;
      --v8;
      if (v5 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D7FE761C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  v138 = a5;
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v143 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    v144 = v138;
    v137.i64[0] = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v123 = v10 + 16;
      v122 = *(v10 + 2);
      for (i = v10; ; v10 = i)
      {
        if (v122 < 2)
        {

          return;
        }

        v124 = *a3;
        if (!*a3)
        {
          goto LABEL_132;
        }

        v125 = &v10[16 * v122];
        v126 = *v125;
        v10 = v123;
        v127 = &v123[16 * v122];
        v128 = *(v127 + 1);
        v129 = (v124 + 8 * *v125);
        v154 = (v124 + 8 * *v127);
        v149 = (v124 + 8 * v128);
        v130 = v144;
        sub_1D7FE7E4C(v129, v154, v149, v143, v130);
        if (v137.i64[0])
        {
          break;
        }

        if (v128 < v126)
        {
          goto LABEL_120;
        }

        if (v122 - 2 >= *v10)
        {
          goto LABEL_121;
        }

        v123 = v10;
        *v125 = v126;
        *(v125 + 1) = v128;
        v131 = *v10 - v122;
        if (*v10 < v122)
        {
          goto LABEL_122;
        }

        v122 = *v10 - 1;
        sub_1D8120818(v127 + 16, v131, v127);
        *v10 = v122;
      }

LABEL_104:
      return;
    }

LABEL_129:
    v10 = sub_1D8120804(v10);
    goto LABEL_94;
  }

  v132 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v139 = v10;
      v13 = (*a3 + 8 * v9);
      v10 = (8 * v9);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = *(*a3 + 8 * v12);
      v17 = v12;
      v18 = v15;
      [v16 frame];
      v145 = v19;
      v150 = v20;
      [v18 frame];
      v143 = v21;
      v144 = v22;

      v12 = v17;
      v23.f64[0] = v145;
      *&v23.f64[1] = v143;
      v24.f64[0] = v150;
      *&v24.f64[1] = v144;
      v25 = vsubq_f64(0, v23);
      v26 = vsubq_f64(0, v24);
      v27 = vsqrtq_f64(vaddq_f64(vmulq_f64(v25, v25), vmulq_f64(v26, v26)));
      v137 = vcgeq_f64(vdupq_laneq_s64(v27, 1), v27);
      v135 = vmovn_s64(v137).u8[0];
      v28 = v11 + 2;
      while (1)
      {
        v29 = v28;
        v30 = v12 + 1;
        if (v30 >= v8)
        {
          break;
        }

        v31 = *(v14 - 1);
        v32 = *v14;
        v33 = v31;
        v34 = v30;
        v35 = v33;
        [v32 frame];
        v146 = v36;
        v151 = v37;
        [v35 frame];
        v143 = v38;
        v144 = v39;

        v12 = v34;
        v40.f64[0] = v146;
        *&v40.f64[1] = v143;
        v41 = vsubq_f64(0, v40);
        v42.f64[0] = v151;
        *&v42.f64[1] = v144;
        v43 = vsubq_f64(0, v42);
        v44 = vsqrtq_f64(vaddq_f64(vmulq_f64(v41, v41), vmulq_f64(v43, v43)));
        ++v14;
        v28 = v29 + 1;
        if ((vmovn_s64(vmvnq_s8(veorq_s8(vcgeq_f64(vdupq_laneq_s64(v44, 1), v44), v137))).u8[0] & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v12 = v8;
LABEL_9:
      if (v135)
      {
        if (v12 < v11)
        {
          goto LABEL_126;
        }

        if (v11 < v12)
        {
          if (v8 >= v29)
          {
            v45 = v29;
          }

          else
          {
            v45 = v8;
          }

          v46 = 8 * v45 - 8;
          v47 = v12;
          v48 = v11;
          do
          {
            if (v48 != --v47)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v50 = *&v10[v49];
              *&v10[v49] = *(v49 + v46);
              *(v49 + v46) = v50;
            }

            v48 = (v48 + 1);
            v46 -= 8;
            v10 += 8;
          }

          while (v48 < v47);
        }

        v10 = v139;
      }

      else
      {
        v10 = v139;
      }
    }

    v51 = a3[1];
    if (v12 < v51)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_125;
      }

      if (v12 - v11 < v132)
      {
        break;
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_124;
    }

    v143 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v10 = v120;
    }

    v74 = *(v10 + 2);
    v75 = v74 + 1;
    if (v74 >= *(v10 + 3) >> 1)
    {
      sub_1D7EE4840();
      v10 = v121;
    }

    *(v10 + 2) = v75;
    v76 = v10 + 32;
    v77 = &v10[16 * v74 + 32];
    *v77 = v11;
    *(v77 + 1) = v143;
    v148 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (v74)
    {
      v141 = v10;
      v144 = v10 + 32;
      while (1)
      {
        v78 = v75 - 1;
        v79 = &v76[16 * v75 - 16];
        v80 = &v10[16 * v75];
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v81 = *(v10 + 4);
          v82 = *(v10 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_59:
          if (v84)
          {
            goto LABEL_111;
          }

          v96 = *v80;
          v95 = *(v80 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_114;
          }

          v100 = *(v79 + 1);
          v101 = v100 - *v79;
          if (__OFSUB__(v100, *v79))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v98, v101))
          {
            goto LABEL_119;
          }

          if (v98 + v101 >= v83)
          {
            if (v83 < v101)
            {
              v78 = v75 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v75 < 2)
        {
          goto LABEL_113;
        }

        v103 = *v80;
        v102 = *(v80 + 1);
        v91 = __OFSUB__(v102, v103);
        v98 = v102 - v103;
        v99 = v91;
LABEL_74:
        if (v99)
        {
          goto LABEL_116;
        }

        v105 = *v79;
        v104 = *(v79 + 1);
        v91 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v91)
        {
          goto LABEL_118;
        }

        if (v106 < v98)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v78 - 1 >= v75)
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        v110 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v111 = &v76[16 * v78 - 16];
        v112 = *v111;
        v113 = v78;
        v114 = &v76[16 * v78];
        v115 = *(v114 + 1);
        v116 = (v110 + 8 * *v111);
        v117 = (v110 + 8 * *v114);
        v153 = (v110 + 8 * v115);
        v118 = v138;
        sub_1D7FE7E4C(v116, v117, v153, v148, v118);
        if (v6)
        {

          goto LABEL_104;
        }

        v10 = v141;
        if (v115 < v112)
        {
          goto LABEL_106;
        }

        v119 = *(v141 + 2);
        if (v113 > v119)
        {
          goto LABEL_107;
        }

        *v111 = v112;
        *(v111 + 1) = v115;
        if (v113 >= v119)
        {
          goto LABEL_108;
        }

        v75 = v119 - 1;
        sub_1D8120818(v114 + 16, v119 - 1 - v113, v114);
        *(v141 + 2) = v119 - 1;
        v76 = v144;
        if (v119 <= 2)
        {
          goto LABEL_88;
        }
      }

      v85 = &v76[16 * v75];
      v86 = *(v85 - 8);
      v87 = *(v85 - 7);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_109;
      }

      v90 = *(v85 - 6);
      v89 = *(v85 - 5);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_110;
      }

      v92 = *(v80 + 1);
      v93 = v92 - *v80;
      if (__OFSUB__(v92, *v80))
      {
        goto LABEL_112;
      }

      v91 = __OFADD__(v83, v93);
      v94 = v83 + v93;
      if (v91)
      {
        goto LABEL_115;
      }

      if (v94 >= v88)
      {
        v108 = *v79;
        v107 = *(v79 + 1);
        v91 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v91)
        {
          goto LABEL_123;
        }

        if (v83 < v109)
        {
          v78 = v75 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v8 = a3[1];
    v9 = v143;
    if (v143 >= v8)
    {
      goto LABEL_92;
    }
  }

  v52 = v11 + v132;
  if (__OFADD__(v11, v132))
  {
    goto LABEL_127;
  }

  if (v52 >= v51)
  {
    v52 = a3[1];
  }

  if (v52 < v11)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v12 == v52)
  {
    goto LABEL_38;
  }

  v140 = v10;
  v137.i64[0] = v6;
  v53 = *a3;
  v54 = *a3 + 8 * v12 - 8;
  v133 = v11;
  v55 = v11 - v12;
  v136 = v52;
LABEL_31:
  v56 = v12;
  v57 = *(v53 + 8 * v12);
  v58 = v55;
  v59 = v54;
  while (1)
  {
    v60 = *v59;
    v61 = v57;
    v62 = v60;
    [v61 frame];
    v147 = v63;
    v152 = v64;
    [v62 frame];
    v143 = v65;
    v144 = v66;

    v67.f64[0] = v147;
    *&v67.f64[1] = v143;
    v68.f64[0] = v152;
    *&v68.f64[1] = v144;
    v69 = vsubq_f64(0, v67);
    v70 = vsubq_f64(0, v68);
    v71 = vsqrtq_f64(vaddq_f64(vmulq_f64(v69, v69), vmulq_f64(v70, v70)));
    if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v71, 1), v71))).u8[0])
    {
LABEL_36:
      v12 = v56 + 1;
      v54 += 8;
      --v55;
      if (v56 + 1 == v136)
      {
        v12 = v136;
        v6 = v137.i64[0];
        v10 = v140;
        v11 = v133;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v53)
    {
      break;
    }

    v72 = *v59;
    v57 = *(v59 + 8);
    *v59 = v57;
    *(v59 + 8) = v72;
    v59 -= 8;
    if (__CFADD__(v58++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_131:

  __break(1u);
LABEL_132:

  __break(1u);
LABEL_133:

  __break(1u);
LABEL_134:

  __break(1u);
LABEL_135:

  __break(1u);
}

uint64_t sub_1D7FE7E4C(void **a1, id *a2, id *a3, void **a4, void *a5)
{
  v49 = a5;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    sub_1D80E75B8(a1, a2 - a1, a4);
    v12 = &v5[v9];
    while (1)
    {
      if (v5 >= v12 || v7 >= a3)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v14 = *v5;
      v15 = *v7;
      v16 = v14;
      [v15 frame];
      v54 = v17;
      v56 = v18;
      [v16 frame];
      v50 = v19;
      v52 = v20;

      v21.f64[0] = v54;
      v22.f64[0] = v56;
      v21.f64[1] = v50;
      v22.f64[1] = v52;
      v23 = vsubq_f64(0, v21);
      v24 = vsubq_f64(0, v22);
      v25 = vsqrtq_f64(vaddq_f64(vmulq_f64(v23, v23), vmulq_f64(v24, v24)));
      if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v25, 1), v25))).u8[0] & 1) == 0)
      {
        break;
      }

      v26 = v5;
      v27 = v8 == v5++;
      if (!v27)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
    }

    v26 = v7;
    v27 = v8 == v7++;
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v26;
    goto LABEL_13;
  }

  sub_1D80E75B8(a2, a3 - a2, a4);
  v12 = &v5[v10];
  v58 = v5;
LABEL_15:
  v28 = v7 - 1;
  --v6;
  while (v12 > v5 && v7 > v8)
  {
    v30 = v7;
    v31 = v8;
    v32 = v28;
    v33 = *v28;
    v34 = *(v12 - 1);
    v35 = v33;
    [v34 frame];
    v55 = v36;
    v57 = v37;
    [v35 frame];
    v51 = v38;
    v53 = v39;

    v40.f64[0] = v55;
    v41.f64[0] = v57;
    v40.f64[1] = v51;
    v41.f64[1] = v53;
    v42 = vsubq_f64(0, v40);
    v43 = vsubq_f64(0, v41);
    v44 = vsqrtq_f64(vaddq_f64(vmulq_f64(v42, v42), vmulq_f64(v43, v43)));
    if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v44, 1), v44))).u8[0] & 1) == 0)
    {
      v45 = v32;
      v7 = v32;
      v8 = v31;
      v5 = v58;
      if (v6 + 1 != v30)
      {
        *v6 = *v45;
        v7 = v45;
      }

      goto LABEL_15;
    }

    if (v12 != v6 + 1)
    {
      *v6 = *(v12 - 1);
    }

    --v6;
    --v12;
    v28 = v32;
    v8 = v31;
    v5 = v58;
  }

LABEL_28:
  v46 = v12 - v5;
  if (v7 != v5 || v7 >= &v5[v46])
  {
    memmove(v7, v5, 8 * v46);
  }

  return 1;
}

unint64_t sub_1D7FE814C()
{
  result = qword_1EDBB8CA0;
  if (!qword_1EDBB8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB8CA0);
  }

  return result;
}

uint64_t sub_1D7FE81A0(uint64_t a1)
{
  sub_1D7E96ACC(0, &qword_1ECA0F068, sub_1D7FE8218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7FE8218()
{
  result = qword_1ECA0F070;
  if (!qword_1ECA0F070)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0F070);
  }

  return result;
}

void sub_1D7FE8288()
{
  if (!qword_1EDBAFA68)
  {
    type metadata accessor for BlueprintLayoutCollectionProvider();
    v0 = type metadata accessor for BlueprintCollectionViewLayout();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAFA68);
    }
  }
}

void (*sub_1D7FE82FC(void *a1))()
{
  if (UITableView.blueprintViewDataSource.getter())
  {
    v3 = v2;
    v4 = sub_1D8172CA8(a1);
    if (v4)
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v7 = (*(v3 + 72))(v5, ObjectType, v3);

      OUTLINED_FUNCTION_0_32();
      v8 = swift_allocObject();
      *(v8 + 24) = &protocol witness table for UITableView;
      swift_unknownObjectWeakInit();

      OUTLINED_FUNCTION_0_32();
      v9 = swift_allocObject();
      *(v9 + 24) = v3;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_1_63();
      v10 = swift_allocObject();
      v10[2] = v8;
      v10[3] = v9;
      v10[4] = v7;
      return sub_1D7E93428;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t objectdestroy_60Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D7FE84DC(uint64_t a1)
{
  sub_1D7E98BE0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KeyboardObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  KeyboardObserver.init()();
  return v0;
}

uint64_t KeyboardObserver.onWillHide(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

uint64_t KeyboardObserver.onShow(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

uint64_t KeyboardObserver.onDidShow(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

uint64_t KeyboardObserver.onHide(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  OUTLINED_FUNCTION_1_79(v3);
}

uint64_t *KeyboardObserver.deinit()
{
  sub_1D7E0E10C(v0[2]);
  sub_1D7E0E10C(v0[4]);
  sub_1D7E0E10C(v0[6]);
  sub_1D7E0E10C(v0[8]);
  sub_1D7E0E10C(v0[10]);
  sub_1D7E0E10C(v0[12]);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t KeyboardObserver.__deallocating_deinit()
{
  KeyboardObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FE8734(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7FE8774(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1D7FE8838()
{
  OUTLINED_FUNCTION_0_100();
  v0 = OUTLINED_FUNCTION_2_68();

  return sub_1D7E0E10C(v0);
}

void sub_1D7FE8894(void *a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!sub_1D7FE8F18(a1))
  {
    return;
  }

  v46 = sub_1D8190F14();
  v47 = v14;
  sub_1D8192124();
  sub_1D7EDF46C();
  sub_1D7F060D8(&aBlock);
  if (*(&v49 + 1))
  {
    sub_1D7E0A1A8(0, &unk_1EDBAE440);
    if (swift_dynamicCast())
    {
      v15 = v46;
      [v46 CGRectValue];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D7E7BAAC(&v48);
  }

  v24 = 1;
  v17 = 0.0;
  v19 = 0.0;
  v21 = 0.0;
  v23 = 0.0;
LABEL_7:
  v46 = sub_1D8190F14();
  v47 = v25;
  sub_1D8192124();
  sub_1D7EDF46C();
  sub_1D7F060D8(&aBlock);
  if (*(&v49 + 1))
  {
    sub_1D7E0A1A8(0, &qword_1EDBAE430);
    if (swift_dynamicCast())
    {
      v26 = v46;
      [v46 doubleValue];
      v28 = v27;

      goto LABEL_12;
    }
  }

  else
  {
    sub_1D7E7BAAC(&v48);
  }

  v28 = 0.0;
LABEL_12:
  v46 = sub_1D8190F14();
  v47 = v29;
  sub_1D8192124();
  sub_1D7EDF46C();

  sub_1D7F060D8(&aBlock);
  if (!*(&v49 + 1))
  {
    sub_1D7E7BAAC(&v48);
    goto LABEL_16;
  }

  sub_1D7E0A1A8(0, &qword_1EDBAE430);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v41 = 0;
    v30 = 0;
    goto LABEL_17;
  }

  v30 = v46;
  v41 = [v46 unsignedIntegerValue];
LABEL_17:
  Height = 0.0;
  if (v24)
  {
    goto LABEL_25;
  }

  v50.origin.x = v17;
  v50.origin.y = v19;
  v50.size.width = v21;
  v50.size.height = v23;
  Height = CGRectGetHeight(v50);
  if ([a1 object])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  aBlock = v48;
  v43 = v49;
  if (!*(&v49 + 1))
  {
    sub_1D7E7BAAC(&aBlock);
    goto LABEL_25;
  }

  sub_1D7E0A1A8(0, qword_1ECA0F078);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v32 = a6;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    goto LABEL_26;
  }

  v32 = a6;
  v33 = v46;
  v34 = [v46 coordinateSpace];

  *(v7 + 112) = v17;
  *(v7 + 120) = v19;
  *(v7 + 128) = v21;
  *(v7 + 136) = v23;
  *(v7 + 144) = Height;
  *(v7 + 152) = v34;
LABEL_26:
  v35 = swift_unknownObjectRelease();
  if (a2)
  {
    a2(v35, Height);
  }

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 2) = a4;
  *(v37 + 3) = a5;
  v37[4] = Height;
  v44 = sub_1D7FE8F84;
  v45 = v37;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_1D7E64940;
  *(&v43 + 1) = &block_descriptor_34;
  v38 = _Block_copy(&aBlock);
  sub_1D7E38808(a4);

  v39 = swift_allocObject();
  *(v39 + 2) = v32;
  *(v39 + 3) = a7;
  v39[4] = Height;
  v44 = sub_1D7FE8F84;
  v45 = v39;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_1D7EB30D4;
  *(&v43 + 1) = &block_descriptor_8;
  v40 = _Block_copy(&aBlock);
  sub_1D7E38808(v32);

  [v36 animateWithDuration:v41 delay:v38 options:v40 animations:v28 completion:0.0];
  _Block_release(v40);
  _Block_release(v38);
}