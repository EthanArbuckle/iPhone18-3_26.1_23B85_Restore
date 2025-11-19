void sub_1D8097AA0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v0);
  v5 = v4[11];
  v6 = sub_1D8191E84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-1] - v8;
  v10 = &v1[*((v3 & v2) + 0xA8)];
  v11 = *v10;
  if (*v10)
  {
    v26 = *v10;
    v27 = *(v10 + 8);
    v28 = *(v10 + 24);
    v29[0] = *(v10 + 40);
    *(v29 + 9) = *(v10 + 49);
    v25[0] = v11;
    *&v25[1] = *(v10 + 8);
    *&v25[3] = *(v10 + 24);
    *&v25[5] = *(v10 + 40);
    *(&v25[6] + 1) = *(v10 + 49);
    v12 = v4[10];
    v13 = v4[12];
    v14 = v4[13];
    v24[0] = v12;
    v24[1] = v5;
    v24[2] = v13;
    v24[3] = v14;
    type metadata accessor for StateCommandBarButtonItem.AccessibilityViewModel();
    v15 = type metadata accessor for StateCommandValue();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v24, &v26, v15);
    StateCommandBarButtonItem.state.getter();
    StateCommandValue.value(for:)(v9, v15, v31);
    (*(v7 + 8))(v9, v6);
    memcpy(__dst, v25, 0x41uLL);
    (*(v16 + 8))(__dst, v15);
    v17 = v31[3];
    v18 = v31[5];
    v19 = v32;
    if (v31[1])
    {
      sub_1D8190DB4();
      v20 = sub_1D8190EE4();

      [v1 setAccessibilityLabel_];
    }

    if (v17)
    {
      sub_1D8190DB4();
      v21 = sub_1D8190EE4();

      [v1 setAccessibilityValue_];
    }

    if (v18)
    {
      sub_1D8190DB4();
      v22 = sub_1D8190EE4();

      [v1 setAccessibilityHint_];
    }

    else
    {
    }

    if (v19 != 2)
    {
      sub_1D8097DF8(v19 & 1);
    }
  }
}

id sub_1D8097DF8(char a1)
{
  v3 = *MEMORY[0x1E69DDA08];
  v4 = [v1 accessibilityTraits];
  v5 = -1;
  if ((v4 & v3) != 0)
  {
    v5 = ~v3;
  }

  v6 = v5 & v4;
  if ((v4 & v3) == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7 | v4;
  if (a1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  return [v1 setAccessibilityTraits_];
}

id sub_1D8097E80(void *a1)
{
  v2 = [a1 customView];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      return v4;
    }
  }

  v4 = [objc_opt_self() buttonWithType_];
  [v4 addTarget:a1 action:sel_barButtonItemPressedWithSender_ forControlEvents:64];
  v5 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xB8));
  if ((LOBYTE(v5[1].origin.x) & 1) == 0)
  {
    Width = CGRectGetWidth(*v5);
    v7 = [v4 widthAnchor];
    v8 = [v7 constraintEqualToConstant_];

    [v8 setActive_];
  }

  [a1 setCustomView_];
  return v4;
}

void (*StateCommandBarButtonItem.state.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_3_7();
  v4 = sub_1D8191E84();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  StateCommandBarButtonItem.state.getter();
  return sub_1D8098110;
}

void sub_1D8098110(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    StateCommandBarButtonItem.state.setter();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    StateCommandBarButtonItem.state.setter();
  }

  free(v4);
  free(v3);

  free(v2);
}

void StateCommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:image:symbolConfiguration:contentSize:stateAccessibilityViewModel:menu:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_16_2();
  v12 = objc_allocWithZone(v11);
  v13 = OUTLINED_FUNCTION_17_0();
  StateCommandBarButtonItem.init(commandCenter:commandSource:command:context:image:symbolConfiguration:contentSize:stateAccessibilityViewModel:menu:style:)(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, v21, a9, a10, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

void StateCommandBarButtonItem.init(commandCenter:commandSource:command:context:image:symbolConfiguration:contentSize:stateAccessibilityViewModel:menu:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, __int128 *a23)
{
  OUTLINED_FUNCTION_120();
  v24 = v23;
  v87 = v25;
  v90 = v26;
  v28 = v27;
  v98 = v29;
  v99 = v30;
  v97 = v31;
  v33 = v32;
  v82 = v34;
  ObjectType = swift_getObjectType();
  v35 = *v23;
  v36 = *MEMORY[0x1E69E7D40];
  v94 = *MEMORY[0x1E69E7D40] & *v23;
  v37 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3_3();
  v84 = *(v28 + 2);
  memcpy(v102, a21, sizeof(v102));
  v86 = *a23;
  v85 = *(a23 + 2);
  v41 = &v23[*((v36 & v35) + 0x70)];
  sub_1D818E784();
  v42 = sub_1D818E764();
  v44 = v43;
  v83 = *v28;
  (*(v39 + 8))(v23, v37);
  *v41 = v42;
  v41[1] = v44;
  OUTLINED_FUNCTION_66();
  v46 = &v23[*(v45 + 152)];
  v46[1] = 0;
  v46[2] = 0;
  *v46 = 0;
  OUTLINED_FUNCTION_4_74();
  v48 = &v23[*(v47 + 160)];
  *v48 = 0u;
  *(v48 + 1) = 0u;
  OUTLINED_FUNCTION_4_74();
  v50 = &v23[*(v49 + 192)];
  v50[1] = 0;
  v50[2] = 0;
  *v50 = 0;
  OUTLINED_FUNCTION_4_74();
  v52 = &v23[*(v51 + 120)];
  *v52 = v82;
  *(v52 + 1) = v33;
  v96 = v33;
  OUTLINED_FUNCTION_4_74();
  *&v23[*(v53 + 128)] = v98;
  OUTLINED_FUNCTION_4_74();
  *&v23[*(v54 + 136)] = v97;
  OUTLINED_FUNCTION_66();
  v56 = *(v55 + 144);
  OUTLINED_FUNCTION_66();
  v95 = *(v57 + 80);
  sub_1D8191E84();
  OUTLINED_FUNCTION_95();
  v92 = v58;
  v93 = v59;
  (*(v58 + 16))(&v24[v56], v99);
  v60 = *v46;
  v61 = v46[1];
  v62 = v46[2];
  *v46 = v83;
  v46[2] = v84;
  swift_unknownObjectRetain();

  sub_1D7E45BA8(v60, v61, v62);
  v63 = *v48;
  *v48 = 0u;
  *(v48 + 1) = 0u;
  sub_1D80696FC(v63);
  OUTLINED_FUNCTION_66();
  v65 = &v24[*(v64 + 184)];
  v66 = *(v87 + 16);
  *v65 = *v87;
  *(v65 + 1) = v66;
  v65[32] = *(v87 + 32);
  OUTLINED_FUNCTION_66();
  *&v24[*(v67 + 176)] = v90;
  OUTLINED_FUNCTION_66();
  memcpy(&v24[*(v68 + 168)], v102, 0x41uLL);
  v69 = *v50;
  *v50 = v86;
  v50[2] = v85;
  v91 = v90;
  sub_1D7E0E10C(v69);
  v101.receiver = v24;
  v101.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v101, sel_init);
  if (sub_1D8190B24())
  {
    v71 = v70;
    [v71 setMenu_];
    if (!a22)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB2F18);
      OUTLINED_FUNCTION_0_8();
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v80 = swift_allocObject();
      *(v80 + 16) = v95;
      v72 = v94;
      *(v80 + 24) = *(v94 + 88);
      *(v80 + 40) = *(v94 + 104);
      *(v80 + 48) = v79;
      *(v80 + 56) = v82;
      *(v80 + 64) = v96;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_13_34();
      v81 = sub_1D8191CF4();
      [v71 setPrimaryAction_];

      goto LABEL_5;
    }
  }

  v72 = v94;
LABEL_5:
  swift_getObjectType();
  OUTLINED_FUNCTION_0_8();
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_8();
  v74 = swift_allocObject();
  v74[2] = v95;
  v74[3] = v72[11];
  v74[4] = v72[12];
  v74[5] = v72[13];
  v74[6] = v73;
  v75 = *(v96 + 88);
  v89 = v70;

  OUTLINED_FUNCTION_35_17();
  v75(v97, v99);

  v76 = OUTLINED_FUNCTION_34_15();
  __swift_project_boxed_opaque_existential_1(v76, v77);
  v78 = v89;
  sub_1D818ED84();

  __swift_destroy_boxed_opaque_existential_1Tm(&v100);
  [v78 setSymbolAnimationEnabled_];
  swift_unknownObjectRelease();

  (*(v92 + 8))(v99, v93);
  OUTLINED_FUNCTION_100();
}

void sub_1D809891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = MEMORY[0x1E69E7D40];
    v10 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x80));
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {

      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();

      if (v11)
      {
      }

      else
      {
        v12 = v8;
        v13 = sub_1D810DEDC();

        v10 = v13;
      }
    }

    ObjectType = swift_getObjectType();
    (*(a4 + 8))(*(v8 + *((*v9 & *v8) + 0x88)), v8 + *((*v9 & *v8) + 0x90), v10, a5, ObjectType, a4);
  }
}

void StateCommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:title:stateAccessibilityViewModel:menu:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_16_2();
  objc_allocWithZone(v0);
  OUTLINED_FUNCTION_17_0();
  StateCommandBarButtonItem.init(commandCenter:commandSource:command:context:title:stateAccessibilityViewModel:menu:)();
  OUTLINED_FUNCTION_100();
}

void StateCommandBarButtonItem.init(commandCenter:commandSource:command:context:title:stateAccessibilityViewModel:menu:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v67 = v2;
  v4 = v3;
  v6 = v5;
  v71 = v7;
  v72 = v8;
  v68 = v9;
  v70 = v10;
  v12 = v11;
  v59 = v11;
  ObjectType = swift_getObjectType();
  v13 = *MEMORY[0x1E69E7D40];
  v14 = *v0;
  v73 = *v0;
  v66 = *MEMORY[0x1E69E7D40] & *v0;
  v15 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_3();
  v62 = *(v6 + 2);
  v61 = *(v6 + 3);
  memcpy(v77, v4, sizeof(v77));
  v19 = &v0[*((v13 & v14) + 0x70)];
  sub_1D818E784();
  v20 = sub_1D818E764();
  v22 = v21;
  v60 = *v6;
  (*(v17 + 8))(v0, v15);
  *v19 = v20;
  v19[1] = v22;
  OUTLINED_FUNCTION_66();
  v24 = &v0[*(v23 + 152)];
  v24[1] = 0;
  v24[2] = 0;
  *v24 = 0;
  OUTLINED_FUNCTION_0_20();
  v26 = &v0[*(v25 + 160)];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  OUTLINED_FUNCTION_0_20();
  v28 = &v0[*(v27 + 192)];
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *v28 = 0;
  OUTLINED_FUNCTION_0_20();
  v30 = &v0[*(v29 + 120)];
  *v30 = v12;
  *(v30 + 1) = v68;
  OUTLINED_FUNCTION_0_20();
  *&v0[*(v31 + 128)] = v71;
  OUTLINED_FUNCTION_0_20();
  *&v0[*(v32 + 136)] = v70;
  OUTLINED_FUNCTION_0_20();
  v34 = *(v33 + 144);
  v74 = *((v13 & v73) + 0x50);
  sub_1D8191E84();
  OUTLINED_FUNCTION_95();
  v64 = v35;
  v65 = v36;
  (*(v35 + 16))(&v0[v34], v72);
  v37 = *v24;
  v38 = v24[1];
  v39 = v24[2];
  v24[1] = 0;
  v24[2] = 0;
  *v24 = 0;
  swift_unknownObjectRetain();

  sub_1D7E45BA8(v37, v38, v39);
  v40 = *v26;
  *v26 = v60;
  *(v26 + 2) = v62;
  *(v26 + 3) = v61;
  sub_1D80696FC(v40);
  OUTLINED_FUNCTION_0_20();
  v42 = &v1[*(v41 + 184)];
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v42[32] = 1;
  v43 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
  OUTLINED_FUNCTION_0_20();
  *&v1[*(v44 + 176)] = v45;
  OUTLINED_FUNCTION_0_20();
  memcpy(&v1[*(v46 + 168)], v77, 0x41uLL);
  v76.receiver = v1;
  v76.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v76, sel_init);
  [v47 setSymbolAnimationEnabled_];
  if (sub_1D8190B24())
  {
    v48 = v47;
    [v48 setMenu_];
    if (!v67)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB2F18);
      OUTLINED_FUNCTION_0_8();
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v57 = swift_allocObject();
      *(v57 + 16) = v74;
      v50 = v66;
      *(v57 + 24) = *(v66 + 88);
      *(v57 + 40) = *(v66 + 104);
      *(v57 + 48) = v56;
      v49 = v68;
      *(v57 + 56) = v59;
      *(v57 + 64) = v68;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_13_34();
      v58 = sub_1D8191CF4();
      [v48 setPrimaryAction_];

      goto LABEL_5;
    }
  }

  v49 = v68;
  v50 = v66;
LABEL_5:
  swift_getObjectType();
  OUTLINED_FUNCTION_0_8();
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_8();
  v52 = swift_allocObject();
  v52[2] = v74;
  v52[3] = v50[11];
  v52[4] = v50[12];
  v52[5] = v50[13];
  v52[6] = v51;
  v69 = *(v49 + 88);
  v53 = v47;

  OUTLINED_FUNCTION_35_17();
  v69(v70, v72);

  v54 = OUTLINED_FUNCTION_34_15();
  __swift_project_boxed_opaque_existential_1(v54, v55);
  sub_1D818ED84();

  swift_unknownObjectRelease();
  (*(v64 + 8))(v72, v65);
  __swift_destroy_boxed_opaque_existential_1Tm(&v75);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8099160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    ObjectType = swift_getObjectType();
    v10 = *&v8[*((*MEMORY[0x1E69E7D40] & *v8) + 0x88)];
    v11 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x90);
    v12 = *&v8[*((*MEMORY[0x1E69E7D40] & *v8) + 0x80)];
    v13 = *(a4 + 8);

    v13(v10, &v8[v11], v12, a5, ObjectType, a4);
  }

  return result;
}

void StateCommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:image:symbolConfiguration:contentSize:stateAccessibilityViewModel:menu:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22)
{
  OUTLINED_FUNCTION_120();
  v45 = v23;
  v46 = v24;
  v26 = v25;
  v28 = v27;
  v43 = v29;
  v44 = v30;
  v42 = v31;
  v33 = v32;
  v34 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v36 = v35;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15_10();
  v38 = *(v26 + 2);
  memcpy(v50, a21, 0x41uLL);
  v41 = *v26;
  (*(v36 + 16))(v22, v28, v34);
  v48 = v41;
  v49 = v38;
  memset(v47, 0, sizeof(v47));
  StateCommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:image:symbolConfiguration:contentSize:stateAccessibilityViewModel:menu:style:)(v33, v42, v43, v44, v22, &v48, v45, v46, v50, a22, v47);
  v39 = OUTLINED_FUNCTION_26_19();
  v40(v39, v34);
  OUTLINED_FUNCTION_100();
}

void StateCommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:image:symbolConfiguration:contentSize:stateAccessibilityViewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21)
{
  OUTLINED_FUNCTION_120();
  v44 = v22;
  v45 = v23;
  v25 = v24;
  v27 = v26;
  v42 = v28;
  v43 = v29;
  v31 = v30;
  v33 = v32;
  v34 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v36 = v35;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15_10();
  v38 = *(v25 + 2);
  memcpy(v47, a21, 0x41uLL);
  v41 = *v25;
  (*(v36 + 16))(v21, v27, v34);
  StateCommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:image:symbolConfiguration:contentSize:stateAccessibilityViewModel:menu:)(v33, v31, v42, v43, v21, &v46, v44, v45, v47, 0, v41, *(&v41 + 1), v42, v43, v44, v45, v41, *(&v41 + 1), v38, v47[0], v47[1], v47[2]);
  v39 = OUTLINED_FUNCTION_26_19();
  v40(v39, v34);
  OUTLINED_FUNCTION_100();
}

uint64_t StateCommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:image:imagePointSize:contentSize:stateAccessibilityViewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, const void *a8, double a9)
{
  v31 = a4;
  v32 = a7;
  v30 = a3;
  v16 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v22 = *(a6 + 2);
  memcpy(__dst, a8, 0x41uLL);
  v23 = *(v18 + 16);
  v28 = *a6;
  v23(v21, a5, v16);
  v33 = v28;
  v34 = v22;
  v24 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:a9];
  StateCommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:image:symbolConfiguration:contentSize:stateAccessibilityViewModel:menu:)(a1, a2, v30, v31, v21, &v33, v24, v32, __dst, 0, v28, *(&v28 + 1), v29, v30, v31, v32, v33, *(&v33 + 1), v34, v35, __dst[0], __dst[1]);
  v25 = OUTLINED_FUNCTION_26_19();
  v26(v25, v16);
  return v9;
}

id StateCommandBarButtonItem.init(commandCenter:commandSource:command:context:image:imagePointSize:contentSize:stateAccessibilityViewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, const void *a7, double a8, double a9, double a10, double a11, double a12)
{
  v13 = v12;
  v90 = a5;
  v88 = a3;
  v89 = a2;
  v87 = a1;
  ObjectType = swift_getObjectType();
  v22 = *v13;
  v23 = *MEMORY[0x1E69E7D40];
  v24 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a6[1];
  v78 = *a6;
  v77 = v30;
  v76 = a6[2];
  memcpy(__dst, a7, sizeof(__dst));
  v31 = &v13[*((v23 & v22) + 0x70)];
  sub_1D818E784();
  v32 = sub_1D818E764();
  v34 = v33;
  (*(v26 + 8))(v29, v24);
  *v31 = v32;
  v31[1] = v34;
  OUTLINED_FUNCTION_94_0();
  v36 = &v13[*(v35 + 152)];
  v36[1] = 0;
  v36[2] = 0;
  *v36 = 0;
  OUTLINED_FUNCTION_3_101();
  v38 = &v13[*(v37 + 160)];
  *v38 = 0u;
  *(v38 + 1) = 0u;
  OUTLINED_FUNCTION_3_101();
  v40 = &v13[*(v39 + 192)];
  *(v40 + 1) = 0;
  *(v40 + 2) = 0;
  *v40 = 0;
  OUTLINED_FUNCTION_3_101();
  v42 = &v13[*(v41 + 120)];
  v43 = v89;
  *v42 = v87;
  *(v42 + 1) = v43;
  OUTLINED_FUNCTION_3_101();
  *&v13[*(v44 + 128)] = v88;
  OUTLINED_FUNCTION_3_101();
  v46 = *(v45 + 136);
  v82 = a4;
  *&v13[v46] = a4;
  OUTLINED_FUNCTION_3_101();
  v48 = *(v47 + 144);
  v83 = *((v23 & v22) + 0x50);
  v85 = sub_1D8191E84();
  v86 = *(v85 - 8);
  (*(v86 + 16))(&v13[v48], v90, v85);
  v80 = v22;
  v81 = v23;
  v49 = *((v23 & v22) + 0x58);
  v50 = *((v23 & v22) + 0x68);
  v79 = v50;
  swift_unknownObjectRetain();

  v51 = v76;
  v52 = v77;

  v53 = v49;
  sub_1D8036FAC(v51, v78, v52, v49, v50, &v91);

  v54 = v92;
  v55 = *v36;
  v56 = v36[1];
  v57 = v36[2];
  *v36 = v91;
  v36[2] = v54;
  sub_1D7E45BA8(v55, v56, v57);
  v58 = *v38;
  *v38 = 0u;
  *(v38 + 1) = 0u;
  sub_1D80696FC(v58);
  OUTLINED_FUNCTION_94_0();
  v60 = &v13[*(v59 + 184)];
  *v60 = a9;
  v60[1] = a10;
  v60[2] = a11;
  v60[3] = a12;
  *(v60 + 32) = 0;
  v61 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:a8];
  OUTLINED_FUNCTION_94_0();
  *&v13[*(v62 + 176)] = v63;
  OUTLINED_FUNCTION_94_0();
  memcpy(&v13[*(v64 + 168)], __dst, 0x41uLL);
  v94.receiver = v13;
  v94.super_class = ObjectType;
  v65 = objc_msgSendSuper2(&v94, sel_init);
  v66 = swift_getObjectType();
  OUTLINED_FUNCTION_0_8();
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_8();
  v68 = swift_allocObject();
  v69 = v83;
  v68[2] = v83;
  v68[3] = v53;
  v70 = *((v81 & v80) + 0x60);
  v71 = v79;
  v68[4] = v70;
  v68[5] = v71;
  v68[6] = v67;
  v72 = v89;
  ObjectType = *(v89 + 88);
  v73 = v65;

  (ObjectType)(&v91, v82, v90, sub_1D8099EF8, v68, v69, v53, v70, v71, v66, v72);

  __swift_project_boxed_opaque_existential_1(&v91, v93);
  sub_1D818ED84();

  swift_unknownObjectRelease();

  (*(v86 + 8))(v90, v85);
  __swift_destroy_boxed_opaque_existential_1Tm(&v91);
  return v73;
}

void sub_1D8099E04(uint64_t a1)
{
  v2 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v7, a1, v2);
    StateCommandBarButtonItem.state.setter();
  }
}

void sub_1D8099EFC()
{
  v1 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_3();
  v5 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70));
  sub_1D818E784();
  v6 = sub_1D818E764();
  v8 = v7;
  (*(v3 + 8))(v0, v1);
  *v5 = v6;
  v5[1] = v8;
  OUTLINED_FUNCTION_13_25();
  v10 = (v0 + *(v9 + 152));
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  OUTLINED_FUNCTION_13_25();
  v12 = (v0 + *(v11 + 160));
  *v12 = 0u;
  v12[1] = 0u;
  OUTLINED_FUNCTION_13_25();
  v14 = (v0 + *(v13 + 192));
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D809A0BC()
{
  v1 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_3();
  v5 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70));
  sub_1D818E784();
  v6 = sub_1D818E764();
  v8 = v7;
  (*(v3 + 8))(v0, v1);
  *v5 = v6;
  v5[1] = v8;
  OUTLINED_FUNCTION_13_25();
  v10 = (v0 + *(v9 + 152));
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  OUTLINED_FUNCTION_13_25();
  v12 = (v0 + *(v11 + 160));
  *v12 = 0u;
  v12[1] = 0u;
  OUTLINED_FUNCTION_13_25();
  v14 = (v0 + *(v13 + 192));
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D809A27C()
{
  v14 = *v0;
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40];
  v3 = [v0 customView];
  v4 = sub_1D810DE04();

  v5 = *v0;
  v6 = *v1;
  v7 = *(v0 + *((*v1 & *v0) + 0x78) + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v0 + *((v6 & v5) + 0x88));
  v10 = *((v6 & v5) + 0x90);
  v11 = *(v7 + 8);
  v12 = *((v2 & v14) + 0x50);

  v11(v9, v0 + v10, v4, v12, ObjectType, v7);
}

void sub_1D809A3DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D809A27C();
}

void StateCommandBarButtonItem.setImage(with:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_9_33();
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_10();
  v10 = *v4;
  v9 = v4[1];
  v11 = v4[2];
  if (sub_1D8190B24())
  {
    OUTLINED_FUNCTION_9_33();
    v13 = (v2 + *(v12 + 152));
    v30 = v5;
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    *v13 = v10;
    v13[1] = v9;
    v13[2] = v11;

    v11;
    sub_1D7E45BA8(v14, v15, v16);
    StateCommandBarButtonItem.state.getter();
    sub_1D7E0A1A8(255, &qword_1EDBB2F60);
    v17 = OUTLINED_FUNCTION_31_14();
    OUTLINED_FUNCTION_37_11(v17);
    (*(v7 + 8))(v1, v30);
    [v2 setImage_];

LABEL_6:
    OUTLINED_FUNCTION_100();
    return;
  }

  v29 = [v2 customView];
  if (!v29)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_9_33();
    v19 = (v2 + *(v18 + 152));
    v31 = v5;
    v20 = *v19;
    v21 = v19[1];
    v27 = v19[2];
    v28 = v22;
    *v19 = v10;
    v19[1] = v9;
    v19[2] = v11;

    v11;
    sub_1D7E45BA8(v20, v21, v27);
    StateCommandBarButtonItem.state.getter();
    sub_1D7E0A1A8(255, &qword_1EDBB2F60);
    v23 = OUTLINED_FUNCTION_31_14();
    OUTLINED_FUNCTION_37_11(v23);
    (*(v7 + 8))(v1, v31);
    v24 = [v32 imageByApplyingSymbolConfiguration_];

    [v28 setImage:v24 forState:0];
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_100();
}

void StateCommandBarButtonItem.setTitle(with:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_29_17();
  v32 = v4;
  v7 = *((v6 & v5) + 0x58);
  v8 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v15 = *v3;
  v14 = v3[1];
  v17 = v3[2];
  v16 = v3[3];
  if (sub_1D8190B24())
  {
    OUTLINED_FUNCTION_29_17();
    v19 = &v1[*(v18 + 160)];
    v30[1] = v7;
    v31 = v8;
    v20 = *v19;
    v30[0] = v19[2];
    *v19 = v15;
    v19[1] = v14;
    v19[2] = v17;
    v19[3] = v16;

    sub_1D8190DB4();
    sub_1D80696FC(v20);
    v33 = v15;
    v34 = v14;
    v35 = v17;
    v36 = v16;
    StateCommandBarButtonItem.state.getter();
    v21 = type metadata accessor for StateCommandValue();
    StateCommandValue.value(for:)(v13, v21, &v37);
    (*(v10 + 8))(v13, v31);
    v22 = sub_1D8190EE4();

    [v1 setTitle_];

LABEL_6:
    OUTLINED_FUNCTION_100();
    return;
  }

  v32 = [v1 customView];
  if (!v32)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    OUTLINED_FUNCTION_29_17();
    v26 = &v1[*(v25 + 160)];
    v27 = *v26;
    *v26 = v15;
    v26[1] = v14;
    v26[2] = v17;
    v26[3] = v16;

    sub_1D8190DB4();
    sub_1D80696FC(v27);
    v31 = [v1 title];
    [v24 setTitle:v31 forState:0];
  }

  OUTLINED_FUNCTION_100();
}

uint64_t StateCommandBarButtonItem.AccessibilityViewModel.init(label:value:hint:isSelected:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

id StateCommandBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateCommandBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D809AB04(uint64_t a1)
{

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  v3 = *(v2 + 144);
  v4 = sub_1D8191E84();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  OUTLINED_FUNCTION_1();
  v6 = OUTLINED_FUNCTION_32_15(*(v5 + 152));
  sub_1D7E45BA8(v6, v8, *(v7 + 16));
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_32_15(*(v9 + 160));
  sub_1D80696FC(v10);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_32_15(*(v11 + 168));
  sub_1D809B134(v12);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  v15 = OUTLINED_FUNCTION_32_15(*(v14 + 192));

  return sub_1D7E0E10C(v15);
}

Swift::Void __swiftcall StateCommandBarButtonItem.recolor(with:)(Swift::OpaquePointer with)
{
  OUTLINED_FUNCTION_120();
  v24 = v2;
  v25 = v3;
  v4 = v1;
  v5 = *v1;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_28_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v17 = *((v6 & v5) + 0xB0);
  v18 = *(v1 + v17);
  sub_1D7E0A1A8(0, &qword_1EDBB3050);
  v19 = v18;
  sub_1D8190DB4();
  v20 = sub_1D806A548();
  v21 = [v19 configurationByApplyingConfiguration_];

  v22 = *(v4 + v17);
  *(v4 + v17) = v21;

  StateCommandBarButtonItem.state.getter();
  (*(v9 + 16))(v13, v16, v7);
  StateCommandBarButtonItem.state.setter();
  (*(v9 + 8))(v16, v7);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D809AEAC()
{
  result = sub_1D8191E84();
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

uint64_t dispatch thunk of StateCommandBarButtonItem.__allocating_init(commandCenter:commandSource:command:context:image:symbolConfiguration:contentSize:stateAccessibilityViewModel:menu:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(v11 + 200);
  v13 = *(a8 + 32);
  v14 = *(a8 + 16);
  v16[0] = *a8;
  v16[1] = v14;
  v17 = v13;
  return v12(a1, a2, a3, a4, a5, a6, a7, v16, a9, a10, a11);
}

uint64_t sub_1D809B040()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D809B07C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D809B0D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D809B134(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1D809B234(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUIP33_DA8221AD7DBA0E0C32FD90C5519D723B30StatusBannerTitleViewContainer_contentView] = a1;
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 addSubview_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = objc_opt_self();
  sub_1D7E49240();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D81B6280;
  v8 = [v4 centerXAnchor];
  v9 = [v5 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v4 centerYAnchor];
  v12 = [v5 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:4.0];

  *(v7 + 40) = v13;
  v14 = [v4 leadingAnchor];
  v15 = [v5 leadingAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor_];

  *(v7 + 48) = v16;
  v17 = [v4 trailingAnchor];
  v18 = [v5 trailingAnchor];

  v19 = [v17 constraintLessThanOrEqualToAnchor_];
  *(v7 + 56) = v19;
  v20 = [v4 widthAnchor];
  v21 = [v20 constraintLessThanOrEqualToConstant_];

  *(v7 + 64) = v21;
  v22 = [v4 heightAnchor];
  v23 = [v22 constraintLessThanOrEqualToConstant_];

  *(v7 + 72) = v23;
  sub_1D8026CF0();
  v24 = sub_1D8191304();

  [v6 activateConstraints_];

  return v5;
}

double sub_1D809B658()
{
  [*(v0 + OBJC_IVAR____TtC5TeaUIP33_DA8221AD7DBA0E0C32FD90C5519D723B30StatusBannerTitleViewContainer_contentView) intrinsicContentSize];
  if (result > 350.0)
  {
    return 350.0;
  }

  return result;
}

void sub_1D809B708(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1;
  sub_1D7E3EC04(v1, v2);
}

void (*sub_1D809B774(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F131F4;
}

double sub_1D809B7F4()
{
  [*(v0 + 32) frame];

  return CGRectGetHeight(*&v1);
}

uint64_t StatusBannerCoordinator.__allocating_init(banner:visibility:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  StatusBannerCoordinator.init(banner:visibility:)(a1, a2);
  return v4;
}

void *StatusBannerCoordinator.init(banner:visibility:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(type metadata accessor for StatusBannerTitleViewContainer());
  v3[4] = sub_1D809B234(a1);
  v3[5] = a2;
  return v3;
}

uint64_t sub_1D809B934(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_1D809BAE4();
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  swift_weakInit();
  sub_1D818F164();

  return __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

uint64_t sub_1D809B9EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D809BAE4();
  }

  return result;
}

uint64_t sub_1D809BA44()
{
  OUTLINED_FUNCTION_10();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1D809BAE4()
{
  v1 = v0;
  if (sub_1D809B828())
  {
    OUTLINED_FUNCTION_10();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v3 = Strong, v4 = UIViewController.effectiveNavigationItem.getter(), v3, v5 = [v4 titleView], v4, !v5))
    {
LABEL_6:
      v9 = *(v1 + 32);
      v10 = [objc_opt_self() areAnimationsEnabled];
      sub_1D809BC58(v9, v10);
      return;
    }

    type metadata accessor for FloatingTabBarNavigationTitleView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      [v6 contentAlpha];
      v8 = v7;

      if (v8 != 0.0)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = UIViewController.effectiveNavigationItem.getter();

      v14 = [v13 titleView];
      if (v14)
      {
        v15 = *(v1 + 32);
        v16 = [objc_opt_self() areAnimationsEnabled];
        sub_1D809BF88(v15, v16);
      }
    }
  }
}

void sub_1D809BC58(void *a1, char a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(a2 & 1, ObjectType, v8);
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = UIViewController.effectiveNavigationItem.getter();

    [v12 setTitleView_];
  }

  if (a2)
  {
    [a1 setNeedsLayout];
    [a1 layoutIfNeeded];
    [a1 setAlpha_];
    [a1 bounds];
    Height = CGRectGetHeight(v20);
    CGAffineTransformMakeTranslation(&v19, 0.0, -10.0 - Height);
    [a1 setTransform_];
    v14 = objc_opt_self();
    OUTLINED_FUNCTION_0_8();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v15;
    *&v19.tx = sub_1D809C6B4;
    *&v19.ty = v16;
    *&v19.a = MEMORY[0x1E69E9820];
    *&v19.b = 1107296256;
    *&v19.c = sub_1D7E64940;
    *&v19.d = &block_descriptor_23_3;
    v17 = _Block_copy(&v19);
    v18 = a1;

    [v14 animateWithDuration:0x10000 delay:v17 options:0 animations:0.3 completion:0.0];
    _Block_release(v17);
  }
}

void sub_1D809BE8C(void *a1)
{
  [a1 setAlpha_];
  v7[0] = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  [a1 setTransform_];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v3 = _s5TeaUI12MastheadablePAASo16UIViewControllerCRbzrlE012mastheadViewE0AA08MastheadgE4Type_pSgvg_0();
      v5 = v4;

      if (v3)
      {
        ObjectType = swift_getObjectType();
        (*(v5 + 136))(1, ObjectType, v5);
      }
    }
  }
}

void sub_1D809BF88(void *a1, char a2)
{
  OUTLINED_FUNCTION_0_8();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  if (a2)
  {
    v6 = objc_opt_self();
    OUTLINED_FUNCTION_0_8();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = v7;
    v19 = sub_1D809C660;
    v20 = v8;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D7E64940;
    v18 = &block_descriptor_64;
    v9 = _Block_copy(&v15);
    v10 = a1;

    v11 = swift_allocObject();
    v11[2] = sub_1D809C654;
    v11[3] = v5;
    v11[4] = v10;
    v19 = sub_1D809C668;
    v20 = v11;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D7EB30D4;
    v18 = &block_descriptor_16_0;
    v12 = _Block_copy(&v15);
    v13 = v10;

    [v6 animateWithDuration:0x20000 delay:v9 usingSpringWithDamping:v12 initialSpringVelocity:0.3 options:0.0 animations:0.7 completion:0.5];

    _Block_release(v12);
    _Block_release(v9);
  }

  else
  {

    sub_1D809C20C(v14, 0);
  }
}

void sub_1D809C20C(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v4 = UIViewController.effectiveNavigationItem.getter();

      [v4 setTitleView_];
    }
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 24);

    if (v7)
    {
      ObjectType = swift_getObjectType();
      (*(v8 + 40))(a2 & 1, ObjectType, v8);
    }
  }
}

void sub_1D809C338(void *a1)
{
  [a1 setAlpha_];
  [a1 bounds];
  Height = CGRectGetHeight(v9);
  CGAffineTransformMakeTranslation(&v8, 0.0, -10.0 - Height);
  [a1 setTransform_];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v4 = _s5TeaUI12MastheadablePAASo16UIViewControllerCRbzrlE012mastheadViewE0AA08MastheadgE4Type_pSgvg_0();
      v6 = v5;

      if (v4)
      {
        ObjectType = swift_getObjectType();
        (*(v6 + 136))(1, ObjectType, v6);
      }
    }
  }
}

id sub_1D809C45C(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  a2();
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  [a4 setTransform_];
  return [a4 setAlpha_];
}

uint64_t StatusBannerCoordinator.deinit()
{
  sub_1D7E166A0(v0 + 16);

  return v0;
}

uint64_t StatusBannerCoordinator.__deallocating_deinit()
{
  StatusBannerCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t objectdestroy_9Tm_0()
{

  return swift_deallocObject();
}

uint64_t DockablePresentationMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

_BYTE *storeEnumTagSinglePayload for DockablePresentationMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t When.__allocating_init(defaultValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  When.init(defaultValue:)(a1);
  return v2;
}

Swift::Void __swiftcall When.reset()()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1D7E0E10C(v1);
}

uint64_t *When.deinit()
{
  v1 = *v0;
  sub_1D7E0E10C(v0[2]);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t When.__deallocating_deinit()
{
  When.deinit();

  return swift_deallocClassInstance();
}

void __swiftcall ForwardingTouchNavigationBar.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  OUTLINED_FUNCTION_5_60();
  v7 = OUTLINED_FUNCTION_7_57();
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
  sub_1D8191314();

  sub_1D7E0A1A8(0, &qword_1EDBB3080);
  OUTLINED_FUNCTION_6_69();

  if (v18 && (v8 = [v18 contentView], v18, v8))
  {
    v17 = v8;
    v9 = [v8 v5 + 3827];
    v10 = sub_1D8191314();

    sub_1D7E36AB8(v10);
    OUTLINED_FUNCTION_0_173();
    while (1)
    {
      if (!v9)
      {

        goto LABEL_14;
      }

      if (__OFSUB__(v9--, 1))
      {
        break;
      }

      if (v6)
      {
        v12 = MEMORY[0x1DA714420](v9);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v9 >= *(v4 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(v10 + 8 * v9);
      }

      OUTLINED_FUNCTION_1_124(v12);
      v13 = [v5 hitTest:v3 withEvent:?];

      if (v13)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_14:
    v14 = OUTLINED_FUNCTION_2_114();
    objc_msgSendSuper2(v15, v16, v14);
  }
}

Swift::Bool __swiftcall ForwardingTouchNavigationBar.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  OUTLINED_FUNCTION_5_60();
  v6 = OUTLINED_FUNCTION_7_57();
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
  sub_1D8191314();

  sub_1D7E0A1A8(0, &qword_1EDBB3080);
  OUTLINED_FUNCTION_6_69();

  if (v18 && (v7 = [v18 contentView], v18, v7))
  {
    v17 = v7;
    v8 = [v7 v4 + 3827];
    v9 = sub_1D8191314();

    sub_1D7E36AB8(v9);
    OUTLINED_FUNCTION_0_173();
    while (1)
    {
      if (!v8)
      {

        goto LABEL_14;
      }

      if (__OFSUB__(v8--, 1))
      {
        break;
      }

      if (v5)
      {
        v12 = MEMORY[0x1DA714420](v8);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v8 >= *(v3 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(v9 + 8 * v8);
      }

      OUTLINED_FUNCTION_1_124(v12);
      v13 = [v4 pointInside:v2 withEvent:?];

      if (v13)
      {

        return 1;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_14:
    v14 = OUTLINED_FUNCTION_2_114();
    return objc_msgSendSuper2(v15, v16, v14);
  }

  return result;
}

uint64_t ForwardingTouchNavigationBar.accessibilityElements.getter()
{
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v33, sel_accessibilityElements);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8191314();

  v4 = [v0 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
  sub_1D8191314();

  sub_1D7E0A1A8(0, &qword_1EDBB3080);
  sub_1D8191364();

  if (v29[0])
  {
    v5 = [v29[0] contentView];

    if (v5)
    {
      v23 = v5;
      v6 = [v5 subviews];
      v7 = sub_1D8191314();

      if (v7 >> 62)
      {
        goto LABEL_34;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D81920A4())
      {
        v26 = v7;
        v27 = v7 & 0xC000000000000001;
        v24 = v7 + 32;
        v25 = v7 & 0xFFFFFFFFFFFFFF8;
        while (!__OFSUB__(i--, 1))
        {
          if (v27)
          {
            v10 = MEMORY[0x1DA714420](i, v7);
          }

          else
          {
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_32;
            }

            if (i >= *(v25 + 16))
            {
              goto LABEL_33;
            }

            v10 = *(v24 + 8 * i);
          }

          v11 = v10;
          v12 = [v10 ts_accessibilityLeafDescendants];
          v13 = sub_1D8191314();

          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = v13 + 32;
            do
            {
              sub_1D7E1B288(v15, v32);
              sub_1D7E1B288(v32, v28);
              sub_1D809D4C0();
              if (swift_dynamicCast())
              {
                v16 = *(&v30 + 1);
                v17 = v31;
                __swift_project_boxed_opaque_existential_1(v29, *(&v30 + 1));
                v18 = (*(v17 + 8))(v16, v17);
                __swift_destroy_boxed_opaque_existential_1Tm(v29);
                if (v18)
                {
                  sub_1D7E1B288(v32, v29);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1D7E5CAAC();
                    v3 = v20;
                  }

                  v19 = *(v3 + 16);
                  if (v19 >= *(v3 + 24) >> 1)
                  {
                    sub_1D7E5CAAC();
                    v3 = v21;
                  }

                  __swift_destroy_boxed_opaque_existential_1Tm(v32);
                  *(v3 + 16) = v19 + 1;
                  sub_1D7E1C664(v29, (v3 + 32 * v19 + 32));
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v32);
                }
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v32);
                v31 = 0;
                *v29 = 0u;
                v30 = 0u;
                sub_1D809D51C(v29);
              }

              v15 += 32;
              --v14;
            }

            while (v14);

            v7 = v26;
            if (!i)
            {
              goto LABEL_28;
            }
          }

          else
          {

            if (!i)
            {
              goto LABEL_28;
            }
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        ;
      }

LABEL_28:
    }
  }

  return v3;
}

id ForwardingTouchNavigationBar.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id ForwardingTouchNavigationBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ForwardingTouchNavigationBar.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ForwardingTouchNavigationBar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D809D4C0()
{
  result = qword_1ECA10520;
  if (!qword_1ECA10520)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA10520);
  }

  return result;
}

uint64_t sub_1D809D51C(uint64_t a1)
{
  sub_1D809D578();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D809D578()
{
  if (!qword_1ECA10528)
  {
    sub_1D809D4C0();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10528);
    }
  }
}

uint64_t RadarCommandHandler.__allocating_init(component:attachmentResolver:sceneProvider:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  RadarCommandHandler.init(component:attachmentResolver:sceneProvider:)(a1, a2, a3);
  return v6;
}

uint64_t RadarCommandHandler.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = v4;
  v7 = sub_1D8190BE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a4, 0x61uLL);
  sub_1D80899B8(v5 + 104, v25);
  v11 = v26;
  if (v26)
  {
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v13 = (*(v12 + 16))(v11, v12);
    if (v13)
    {
      v14 = v13;
      v15 = [v13 rootViewController];

      result = __swift_destroy_boxed_opaque_existential_1Tm(v25);
      if (v15)
      {
        sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
        (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
        v17 = sub_1D8191AF4();
        (*(v8 + 8))(v10, v7);
        v18 = swift_allocObject();
        *(v18 + 16) = v5;
        memcpy((v18 + 24), __dst, 0x61uLL);

        sub_1D809DA18(__dst, v25);
        sub_1D7EA30C0();
        sub_1D818FBF4();

        v19 = sub_1D8191AB4();
        v20 = swift_allocObject();
        swift_weakInit();
        v21 = swift_allocObject();
        v21[2] = v20;
        memcpy(v21 + 3, __dst, 0x61uLL);
        v21[16] = v15;
        sub_1D809DA18(__dst, v25);
        v22 = v15;
        sub_1D818FAC4();
      }
    }

    else
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_174();
    return sub_1D809E764(v25, v23, v24);
  }

  return result;
}

unint64_t sub_1D809D934()
{
  result = qword_1EDBBA418;
  if (!qword_1EDBBA418)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBA418);
  }

  return result;
}

uint64_t sub_1D809D990(void *a1, uint64_t a2)
{
  v3 = a1[11];
  v4 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v3);
  return (*(v4 + 8))(*(a2 + 88), v3, v4);
}

void *sub_1D809DA74(void **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  sub_1D809E800(0, &qword_1EDBBD088, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_1D818E644();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v46 = v10;
    v16 = result;
    v47 = v14;
    v42 = v12;
    v48 = v11;
    v49 = a4;
    v50 = v4;
    v18 = *a3;
    v17 = a3[1];
    v20 = a3[2];
    v19 = a3[3];
    v21 = a3[4];
    v22 = a3[5];
    v45 = v22;
    v44 = v19;
    v43 = v21;
    if (v17)
    {
      v23 = v18;
      v24 = v17;
      v25 = v20;
      v26 = v19;
      v27 = v21;
      v28 = v22;
    }

    else
    {
      v24 = result[3];
      v41 = result[2];
      v25 = result[4];
      v26 = result[5];
      v27 = result[6];
      v28 = result[7];
      sub_1D8190DB4();
      sub_1D8190DB4();
      sub_1D8190DB4();
      v23 = v41;
    }

    v52[0] = v23;
    v52[1] = v24;
    v52[2] = v25;
    v52[3] = v26;
    v52[4] = v27;
    v52[5] = v28;
    memcpy(__dst, a3, 0x61uLL);
    sub_1D809E714(v18, v17);
    v29 = v46;
    sub_1D809DF78(v52, __dst, v47, v46);

    v30 = v48;
    if (__swift_getEnumTagSinglePayload(v29, 1, v48) == 1)
    {
      sub_1D809E764(v29, &qword_1EDBBD088, MEMORY[0x1E6968FB0]);
      sub_1D809E524(v49);
    }

    else
    {
      v31 = v42;
      v32 = v53;
      (*(v42 + 32))(v53, v29, v30);
      v47 = [objc_opt_self() sharedApplication];
      v33 = sub_1D818E5C4();
      type metadata accessor for OpenExternalURLOptionsKey();
      sub_1D809E864(&qword_1EDBAE488, type metadata accessor for OpenExternalURLOptionsKey);
      sub_1D8190D94();
      v34 = sub_1D8190D44();

      v35 = swift_allocObject();
      v36 = v49;
      *(v35 + 16) = v16;
      *(v35 + 24) = v36;
      __dst[4] = sub_1D809E7D4;
      __dst[5] = v35;
      __dst[0] = MEMORY[0x1E69E9820];
      __dst[1] = 1107296256;
      __dst[2] = sub_1D7EB30D4;
      __dst[3] = &block_descriptor_65;
      v37 = _Block_copy(__dst);

      v38 = v36;

      v39 = v47;
      [v47 openURL:v33 options:v34 completionHandler:v37];
      _Block_release(v37);

      return (*(v31 + 8))(v32, v30);
    }
  }

  return result;
}

uint64_t sub_1D809DF78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v47 = a4;
  v46 = sub_1D818E474();
  v6 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v9;
  v10 = sub_1D818E4D4();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[2];
  v36 = a1[3];
  v37 = v13;
  v14 = a1[4];
  v38 = *(a2 + 64);
  v15 = *(a2 + 80);
  v33 = *(a2 + 72);
  v34 = v14;
  v41 = v15;
  v35 = *(a2 + 96);
  sub_1D818E4C4();
  sub_1D818E4B4();
  MEMORY[0x1DA7106B0](7824750, 0xE300000000000000);
  sub_1D809E800(0, &qword_1ECA0D928, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
  v16 = *(v6 + 72);
  v45 = v6;
  v17 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D81A4C50;
  v40 = v17;
  sub_1D818E464();
  sub_1D818E464();
  sub_1D818E464();
  sub_1D818E464();
  sub_1D818E464();

  v48 = v39;
  sub_1D7EA30C0();
  sub_1D809E864(&qword_1EDBB3328, sub_1D7EA30C0);
  sub_1D8190E94();
  sub_1D818E464();

  v19 = v45;
  v20 = v42;
  v21 = v40;
  if (v38)
  {
    v22 = v32;
    sub_1D818E464();
    v24 = *(v18 + 16);
    v23 = *(v18 + 24);
    v25 = v46;
    if (v24 >= v23 >> 1)
    {
      sub_1D7EE58D0(v23 > 1, v24 + 1, 1, v18);
      v18 = v30;
    }

    *(v18 + 16) = v24 + 1;
    (*(v19 + 32))(v18 + v21 + v24 * v16, v22, v25);
  }

  else
  {
    v25 = v46;
  }

  if (v41)
  {
    sub_1D818E464();
    v27 = *(v18 + 16);
    v26 = *(v18 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1D7EE58D0(v26 > 1, v27 + 1, 1, v18);
      v18 = v29;
    }

    *(v18 + 16) = v27 + 1;
    (*(v19 + 32))(v18 + v21 + v27 * v16, v20, v25);
  }

  sub_1D818E484();
  sub_1D818E494();
  return (*(v43 + 8))(v12, v44);
}

void sub_1D809E524(void *a1)
{
  sub_1D7E0A1A8(0, &qword_1ECA0ED08);
  v3 = sub_1D7FC5088(0xD000000000000013, 0x80000001D81D3240, 0xD000000000000012, 0x80000001D81D3260, 1);
  sub_1D7E0A1A8(0, &qword_1ECA0ED10);
  v2 = sub_1D7FC52F8(2036427599, 0xE400000000000000, 0, 0, 0);
  [v3 addAction_];

  [a1 presentViewController:v3 animated:1 completion:0];
}

uint64_t RadarCommandHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  OUTLINED_FUNCTION_0_174();
  sub_1D809E764(v0 + 104, v1, v2);
  return v0;
}

uint64_t RadarCommandHandler.__deallocating_deinit()
{
  RadarCommandHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D809E714(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D8190DB4();
    sub_1D8190DB4();

    return sub_1D8190DB4();
  }

  return result;
}

uint64_t sub_1D809E764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D809E800(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D809E7D4(char a1)
{
  if ((a1 & 1) == 0)
  {
    sub_1D809E524(*(v1 + 24));
  }
}

void sub_1D809E800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D809E864(unint64_t *a1, void (*a2)(uint64_t))
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

void ContextMenuItem.__allocating_init<A>(command:context:title:image:options:willExecute:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_3_102();
  swift_allocObject();
  OUTLINED_FUNCTION_17_0();
  ContextMenuItem.init<A>(command:context:title:image:options:willExecute:)();
  OUTLINED_FUNCTION_100();
}

void ContextMenuItem.init<A>(command:context:title:image:options:willExecute:)()
{
  OUTLINED_FUNCTION_120();
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v28 = v6;
  v29 = v7;
  v25 = v8;
  v10 = v9;
  v11 = *(*v9 + 88);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_27_5();
  v16 = *v15;
  v30 = *(v17 + 24);
  v0[2] = *(v17 + 16);
  v0[3] = v30;
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  v0[4] = sub_1D80A47D0;
  v0[5] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v0[6] = sub_1D80A47CC;
  v0[7] = v19;
  v0[8] = sub_1D804F25C;
  v0[9] = 0;
  OUTLINED_FUNCTION_4_34();
  v20();
  v21 = swift_allocObject();
  v21[2] = v11;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v10;
  v22 = *(v13 + 32);
  OUTLINED_FUNCTION_11_3();
  v22();
  v0[10] = sub_1D809ED5C;
  v0[11] = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v28;
  *(v23 + 24) = v29;
  v0[12] = sub_1D80A47BC;
  v0[13] = v23;
  v0[14] = OUTLINED_FUNCTION_4_6;
  v0[15] = 0;
  (v22)(v1, v25, v11);
  v24 = swift_allocObject();
  *(v24 + 16) = v11;
  *(v24 + 24) = v10;
  OUTLINED_FUNCTION_11_3();
  v22();
  v0[16] = sub_1D809EF30;
  v0[17] = v24;
  sub_1D8190DB4();

  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D809EBB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(double), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a3;
  v11 = *(*a6 + 88);
  v12 = sub_1D8191E84();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  if (a4)
  {
    a4(v14);
  }

  ObjectType = swift_getObjectType();
  (*(*(v11 - 8) + 16))(v16, a7, v11);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v11);
  (*(a2 + 8))(a6, v16, v19, v11, ObjectType, a2);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1D809EDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a3 + 88);
  v8 = sub_1D8191E84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  ObjectType = swift_getObjectType();
  (*(*(v7 - 8) + 16))(v11, a4, v7);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
  LOBYTE(a2) = CommandCenterType.canExecute<A>(command:context:)(a3, v11, ObjectType, a2);
  (*(v9 + 8))(v11, v8);
  return a2 & 1;
}

uint64_t ContextMenuItem.__allocating_init(command:title:image:options:willExecute:)()
{
  OUTLINED_FUNCTION_3_102();
  swift_allocObject();
  OUTLINED_FUNCTION_31_15();
  ContextMenuItem.init(command:title:image:options:willExecute:)();
  return v0;
}

void ContextMenuItem.init(command:title:image:options:willExecute:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *v13;
  v15 = *(v11 + 24);
  v0[2] = *(v11 + 16);
  v0[3] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  v0[4] = sub_1D809F120;
  v0[5] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v0[6] = sub_1D8068588;
  v0[7] = v17;
  v0[8] = sub_1D804F25C;
  v0[9] = 0;
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = v2;
  v18[4] = v12;
  v0[10] = sub_1D809F1F0;
  v0[11] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v10;
  *(v19 + 24) = v8;
  v0[12] = sub_1D809F1FC;
  v0[13] = v19;
  v0[14] = OUTLINED_FUNCTION_4_6;
  v0[15] = 0;
  v0[16] = sub_1D7F8DDE4;
  v0[17] = v12;
  sub_1D8190DB4();

  OUTLINED_FUNCTION_100();
}

void *sub_1D809F120()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1D809F148(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    a4();
  }

  ObjectType = swift_getObjectType();
  return CommandCenterType.execute<A>(command:source:)(a6, a3, ObjectType, a2);
}

uint64_t ContextMenuItem.__allocating_init<A, B>(command:context:title:image:options:)()
{
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_3_102();
  swift_allocObject();
  OUTLINED_FUNCTION_7_34();
  ContextMenuItem.init<A, B>(command:context:title:image:options:)();
  return v0;
}

{
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_3_102();
  swift_allocObject();
  OUTLINED_FUNCTION_7_34();
  ContextMenuItem.init<A, B>(command:context:title:image:options:)();
  return v0;
}

void ContextMenuItem.init<A, B>(command:context:title:image:options:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_33_14(v4, v5, v6, v7, v8);
  v10 = *(v9 + 136);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_16_35();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27_5();
  v19 = OUTLINED_FUNCTION_10_48(v14, v15, v16, v17, v18);
  v20(v19);
  OUTLINED_FUNCTION_24_22();
  v21 = swift_allocObject();
  v21[2] = v10;
  v39 = *(v2 + 144);
  v21[3] = v39;
  v40 = *(v2 + 152);
  v21[4] = v40;
  v21[5] = v0;
  v37 = *(v12 + 32);
  OUTLINED_FUNCTION_11_3();
  v22();
  OUTLINED_FUNCTION_44_9();
  v1[4] = sub_1D809F600;
  v1[5] = v21;
  OUTLINED_FUNCTION_29_9();
  v36();
  v23 = OUTLINED_FUNCTION_50_8();
  v23[2] = v10;
  v23[3] = v39;
  v23[4] = v40;
  v23[5] = v0;
  OUTLINED_FUNCTION_11_3();
  v37();
  OUTLINED_FUNCTION_12_39((v23 + v3));
  *(v24 + 16) = v33;
  v1[6] = sub_1D80A47C0;
  v1[7] = v23;
  OUTLINED_FUNCTION_29_9();
  v36();
  v25 = swift_allocObject();
  v26 = OUTLINED_FUNCTION_21_28(v25);
  (v40)(v26);
  v1[8] = sub_1D80A47C4;
  v1[9] = v23;
  OUTLINED_FUNCTION_4_34();
  v36();
  v27 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_22_21(v27);
  (v40)(v28);
  v1[10] = sub_1D80A47C8;
  v1[11] = v23;

  OUTLINED_FUNCTION_4_34();
  v36();
  v29 = swift_allocObject();
  v29[2] = v10;
  v29[3] = v38;
  v29[4] = v40;
  v29[5] = v36;
  OUTLINED_FUNCTION_11_3();
  v40();
  OUTLINED_FUNCTION_18_32((v29 + v32));
  *(v30 + 16) = v35;
  *(v30 + 24) = v34;
  v1[12] = sub_1D809F884;
  v1[13] = v29;
  v1[14] = OUTLINED_FUNCTION_4_6;
  v1[15] = 0;
  OUTLINED_FUNCTION_58_8();
  v40();
  v31 = swift_allocObject();
  v31[2] = v10;
  v31[3] = v39;
  v31[4] = v40;
  v31[5] = v0;
  OUTLINED_FUNCTION_11_3();
  v40();
  OUTLINED_FUNCTION_30_20();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_33_14(v4, v5, v6, v7, v8);
  v10 = *(v9 + 136);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_16_35();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27_5();
  v19 = OUTLINED_FUNCTION_10_48(v14, v15, v16, v17, v18);
  v20(v19);
  OUTLINED_FUNCTION_24_22();
  v21 = swift_allocObject();
  v21[2] = v10;
  v39 = *(v2 + 144);
  v21[3] = v39;
  v40 = *(v2 + 152);
  v21[4] = v40;
  v21[5] = v0;
  v37 = *(v12 + 32);
  OUTLINED_FUNCTION_11_3();
  v22();
  OUTLINED_FUNCTION_44_9();
  v1[4] = sub_1D80A47D4;
  v1[5] = v21;
  OUTLINED_FUNCTION_29_9();
  v36();
  v23 = OUTLINED_FUNCTION_50_8();
  v23[2] = v10;
  v23[3] = v39;
  v23[4] = v40;
  v23[5] = v0;
  OUTLINED_FUNCTION_11_3();
  v37();
  OUTLINED_FUNCTION_12_39((v23 + v3));
  *(v24 + 16) = v33;
  v1[6] = sub_1D80A47C0;
  v1[7] = v23;
  OUTLINED_FUNCTION_29_9();
  v36();
  v25 = swift_allocObject();
  v26 = OUTLINED_FUNCTION_21_28(v25);
  (v40)(v26);
  v1[8] = sub_1D80A47C4;
  v1[9] = v23;
  OUTLINED_FUNCTION_4_34();
  v36();
  v27 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_22_21(v27);
  (v40)(v28);
  v1[10] = sub_1D80A47C8;
  v1[11] = v23;

  OUTLINED_FUNCTION_4_34();
  v36();
  v29 = swift_allocObject();
  v29[2] = v10;
  v29[3] = v38;
  v29[4] = v40;
  v29[5] = v36;
  OUTLINED_FUNCTION_11_3();
  v40();
  OUTLINED_FUNCTION_18_32((v29 + v32));
  *(v30 + 16) = v35;
  *(v30 + 24) = v34;
  v1[12] = sub_1D80A03BC;
  v1[13] = v29;
  v1[14] = OUTLINED_FUNCTION_4_6;
  v1[15] = 0;
  OUTLINED_FUNCTION_58_8();
  v40();
  v31 = swift_allocObject();
  v31[2] = v10;
  v31[3] = v39;
  v31[4] = v40;
  v31[5] = v0;
  OUTLINED_FUNCTION_11_3();
  v40();
  OUTLINED_FUNCTION_30_20();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D809F604(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v22 = a4;
  v23 = a2;
  v9 = *a3;
  v10 = *(*a3 + 136);
  v24 = sub_1D8191E84();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v22 - v12;
  v14 = *(v9 + 144);
  v25 = sub_1D8191E84();
  v15 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v22 - v16;
  ObjectType = swift_getObjectType();
  (*(*(v10 - 8) + 16))(v13, v22, v10);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v10);
  (*(v23 + 80))(a3, v13, v10, v14, *(v9 + 152), ObjectType);
  (*(v11 + 8))(v13, v24);
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v19 = type metadata accessor for StateCommandTitle();
  v20 = sub_1D818D00C(v17, v19);
  (*(v15 + 8))(v17, v25);
  return v20;
}

void sub_1D809FC74()
{
  OUTLINED_FUNCTION_120();
  v22 = v2;
  v4 = v3;
  v5 = *(*v3 + 136);
  v23 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_55_10();
  v10 = *(v9 + 144);
  v24 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_3_0();
  (*(v15 + 16))(v1, v22, v5);
  v16 = OUTLINED_FUNCTION_14_36();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v5);
  OUTLINED_FUNCTION_45_12();
  OUTLINED_FUNCTION_55_10();
  v20(v4, v1, v5, v10, *(v19 + 152), ObjectType);
  (*(v7 + 8))(v1, v23);
  v21 = type metadata accessor for StateCommandImage();
  sub_1D80A5904(v0, v21);
  (*(v12 + 8))(v0, v24);
  OUTLINED_FUNCTION_100();
}

uint64_t objectdestroy_26Tm()
{
  OUTLINED_FUNCTION_1_125();
  OUTLINED_FUNCTION_8_6();
  v2 = OUTLINED_FUNCTION_2_11();
  v3(v2);

  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

void sub_1D809FFCC()
{
  OUTLINED_FUNCTION_49_8();
  OUTLINED_FUNCTION_27_21();
  sub_1D80A2DF4();
}

uint64_t sub_1D80A00CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v26 = a1;
  v27 = a2;
  v10 = *a3;
  v11 = *(*a3 + 136);
  v28 = sub_1D8191E84();
  v35 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v24 - v12;
  v25 = *(v10 + 144);
  v14 = v25;
  v33 = sub_1D8191E84();
  v29 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v24 - v15;
  ObjectType = swift_getObjectType();
  v18 = *(*(v11 - 8) + 16);
  v18(v13, a4, v11);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v11);
  (*(v27 + 80))(a3, v13, v11, v14, *(v10 + 152), ObjectType);
  v19 = *(v35 + 8);
  v35 += 8;
  v20 = v28;
  v19(v13, v28);
  v36 = v30;
  v37 = v31;
  v38 = v32;
  v39 = v34;
  v18(v13, a4, v11);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v11);
  v21 = type metadata accessor for StateCommandContextTitle();
  v22 = sub_1D8168D58(v16, v13, v21);
  v19(v13, v20);
  (*(v29 + 8))(v16, v33);
  return v22;
}

uint64_t sub_1D80A03D4()
{
  OUTLINED_FUNCTION_49_8();
  OUTLINED_FUNCTION_27_21();
  return v0();
}

uint64_t sub_1D80A0450()
{
  OUTLINED_FUNCTION_51_8();
  sub_1D80A3D30();
  return v0 & 1;
}

uint64_t ContextMenuItem.__allocating_init<A>(command:title:image:options:)()
{
  OUTLINED_FUNCTION_3_102();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_52_4();
  ContextMenuItem.init<A>(command:title:image:options:)();
  return v0;
}

void ContextMenuItem.init<A>(command:title:image:options:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v3 + 16);
  v12 = *(v1 + 16);
  v13 = *(v7 + 24);
  v0[2] = *(v7 + 16);
  v0[3] = v13;
  OUTLINED_FUNCTION_21_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = *v4;
  *(v14 + 40) = v11;
  v0[4] = sub_1D80A07C0;
  v0[5] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = *v2;
  *(v15 + 40) = v12;
  v0[6] = sub_1D80A0934;
  v0[7] = v15;
  v0[8] = sub_1D80A0B74;
  v0[9] = v8;
  v0[10] = sub_1D7F8DE74;
  v0[11] = v8;
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  *(v16 + 24) = *v6;
  *(v16 + 40) = v9;
  *(v16 + 48) = v10;
  v0[12] = sub_1D80A0CEC;
  v0[13] = v16;
  v0[14] = OUTLINED_FUNCTION_4_6;
  v0[15] = 0;
  v0[16] = sub_1D80A47EC;
  v0[17] = v8;
  swift_retain_n();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_100();
}

id sub_1D80A0658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[0] = a6;
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - v12;
  ObjectType = swift_getObjectType();
  CommandCenterType.state<A>(for:)(a3, ObjectType, a2);
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = v18[0];
  v15 = type metadata accessor for StateCommandImage();
  v16 = sub_1D80A5904(v13, v15);
  (*(v11 + 8))(v13, v10);
  return v16;
}

uint64_t sub_1D80A07CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, _BYTE *a6@<X8>)
{
  v18 = a5;
  v19 = a6;
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  ObjectType = swift_getObjectType();
  CommandCenterType.state<A>(for:)(a2, ObjectType, a1);
  v20 = a3;
  v21 = a4;
  v22 = v18;
  v15 = type metadata accessor for StateCommandOptions();
  sub_1D8068248(v13, v15, v19);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1D80A0944@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *a2;
  v7 = *(*a2 + 144);
  v8 = sub_1D8191E84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13];
  ObjectType = swift_getObjectType();
  CommandCenterType.state<A>(for:)(a2, ObjectType, a1);
  (*(v9 + 16))(v11, v14, v8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v7) == 1)
  {
    v16 = *(v9 + 8);
    v16(v14, v8);
    result = (v16)(v11, v8);
    v18 = 2;
  }

  else
  {
    (*(*(v6 + 152) + 8))(&v20, v7);
    (*(v9 + 8))(v14, v8);
    v18 = v20;
    result = (*(*(v7 - 8) + 8))(v11, v7);
  }

  *a3 = v18;
  return result;
}

uint64_t sub_1D80A0B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v20 = a7;
  v11 = sub_1D8191E84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  ObjectType = swift_getObjectType();
  CommandCenterType.state<A>(for:)(a3, ObjectType, a2);
  v21 = a4;
  v22 = a5;
  v23 = v19;
  v24 = v20;
  v16 = type metadata accessor for StateCommandTitle();
  v17 = sub_1D818D00C(v14, v16);
  (*(v12 + 8))(v14, v11);
  return v17;
}

uint64_t ContextMenuItem.__allocating_init<A, B>(stateCommand:context:title:image:options:)()
{
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_3_102();
  swift_allocObject();
  OUTLINED_FUNCTION_7_34();
  ContextMenuItem.init<A, B>(stateCommand:context:title:image:options:)();
  return v0;
}

void ContextMenuItem.init<A, B>(stateCommand:context:title:image:options:)()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  OUTLINED_FUNCTION_40_11();
  v6 = *(v5 + 136);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16_35();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_27_5();
  v36 = *(v12 + 16);
  v35 = *(v12 + 24);
  v41 = *v13;
  v40 = *(v13 + 2);
  v34 = *(v14 + 16);
  v37 = *(v15 + 24);
  v0[2] = *(v15 + 16);
  v0[3] = v37;
  v16 = *(v8 + 16);
  (v16)(v1);
  v43 = *(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  v42 = *(v2 + 144);
  *(v17 + 24) = v42;
  v38 = *(v2 + 152);
  *(v17 + 32) = v38;
  *(v17 + 40) = v41;
  *(v17 + 56) = v40;
  *(v17 + 64) = v4;
  v18 = *(v8 + 32);
  OUTLINED_FUNCTION_11_3();
  v19();
  v0[4] = sub_1D80A47DC;
  v0[5] = v17;
  OUTLINED_FUNCTION_4_34();
  v16();
  v39 = (v43 + 48) & ~v43;
  v33 = (v39 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_39_14(v20);
  *(v21 + 32) = v38;
  *(v21 + 40) = v4;
  (v18)(v21 + v39, v1, v6);
  OUTLINED_FUNCTION_18_32((v17 + v33));
  *(v22 + 16) = v34;
  v0[6] = sub_1D80A47C0;
  v0[7] = v17;
  OUTLINED_FUNCTION_4_34();
  v16();
  v23 = swift_allocObject();
  v23[2] = v6;
  v23[3] = v42;
  v23[4] = v38;
  v23[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v18();
  v0[8] = sub_1D80A47C4;
  v0[9] = v23;
  v24 = OUTLINED_FUNCTION_37_12();
  (v16)(v24);
  v25 = swift_allocObject();
  v25[2] = v6;
  v25[3] = v42;
  v25[4] = v38;
  v25[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v18();
  v0[10] = sub_1D80A47C8;
  v0[11] = v25;

  v26 = OUTLINED_FUNCTION_37_12();
  (v16)(v26);
  v27 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_39_14(v27);
  *(v28 + 32) = v38;
  *(v28 + 40) = v4;
  OUTLINED_FUNCTION_11_3();
  v18();
  OUTLINED_FUNCTION_12_39((v25 + v33));
  *(v29 + 16) = v36;
  *(v29 + 24) = v35;
  v0[12] = sub_1D80A47E0;
  v0[13] = v25;
  v0[14] = OUTLINED_FUNCTION_4_6;
  v0[15] = 0;
  v30 = OUTLINED_FUNCTION_37_12();
  (v18)(v30);
  v31 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_39_14(v31);
  *(v32 + 32) = v38;
  *(v32 + 40) = v4;
  OUTLINED_FUNCTION_11_3();
  v18();
  OUTLINED_FUNCTION_30_20();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D80A1158()
{
  OUTLINED_FUNCTION_49_8();
  OUTLINED_FUNCTION_27_21();
  return v0();
}

uint64_t ContextMenuItem.__allocating_init<A, B>(stateCommand:context:identifier:title:image:options:)()
{
  OUTLINED_FUNCTION_3_102();
  swift_allocObject();
  OUTLINED_FUNCTION_31_15();
  ContextMenuItem.init<A, B>(stateCommand:context:identifier:title:image:options:)();
  return v0;
}

void ContextMenuItem.init<A, B>(stateCommand:context:identifier:title:image:options:)()
{
  OUTLINED_FUNCTION_120();
  v63 = v1;
  v80 = v2;
  v4 = v3;
  v5 = *v3;
  v6 = *(*v3 + 136);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v15 = *(v14 + 24);
  v68 = *(v14 + 16);
  v66 = v14;
  v67 = v15;
  v79 = *v16;
  v76 = *(v16 + 2);
  v65 = *(v17 + 16);
  v0[2] = v18;
  v0[3] = v19;
  v20 = *(v8 + 16);
  v71 = v8 + 16;
  v78 = v20;
  v21 = OUTLINED_FUNCTION_48_9();
  v22(v21);
  v23 = *(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v6;
  v73 = v4;
  v75 = *(v5 + 144);
  *(v24 + 24) = v75;
  v74 = *(v5 + 152);
  *(v24 + 32) = v74;
  *(v24 + 40) = v79;
  *(v24 + 56) = v76;
  *(v24 + 64) = v4;
  v25 = *(v8 + 32);
  v69 = v13;
  v70 = v8 + 32;
  *&v79 = v25;
  OUTLINED_FUNCTION_4_34();
  v27(v26);
  v0[4] = sub_1D80A1940;
  v0[5] = v24;
  v28 = v78;
  (v78)(v13, v80, v6);
  v76 = (v23 + 48) & ~v23;
  v77 = v23;
  v72 = v76 + v10;
  v29 = (v76 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = v29;
  v30 = swift_allocObject();
  v32 = v74;
  v31 = v75;
  v30[2] = v6;
  v30[3] = v31;
  v33 = v73;
  v30[4] = v32;
  v30[5] = v33;
  v34 = v69;
  OUTLINED_FUNCTION_52_4();
  (v79)(v35);
  v36 = OUTLINED_FUNCTION_18_32((v30 + v29));
  *(v37 + 16) = v65;
  v0[6] = sub_1D80A1944;
  v0[7] = v30;
  v28(v34, v80, v6, v36);
  v38 = swift_allocObject();
  v38[2] = v6;
  v38[3] = v31;
  v39 = v73;
  v38[4] = v32;
  v38[5] = v39;
  v40 = v69;
  OUTLINED_FUNCTION_4_34();
  v41 = v79;
  (v79)(v42);
  v0[8] = sub_1D80A1948;
  v0[9] = v38;
  v43 = OUTLINED_FUNCTION_17_28();
  (v78)(v43);
  v44 = swift_allocObject();
  v45 = v74;
  v46 = v75;
  v44[2] = v6;
  v44[3] = v46;
  v47 = v73;
  v44[4] = v45;
  v44[5] = v47;
  OUTLINED_FUNCTION_4_34();
  v41(v48);
  v0[10] = sub_1D80A194C;
  v0[11] = v44;

  v49 = v80;
  (v78)(v40, v80, v6);
  v50 = v64;
  v51 = swift_allocObject();
  v51[2] = v6;
  v51[3] = v46;
  v51[4] = v45;
  v51[5] = v47;
  v52 = v47;
  OUTLINED_FUNCTION_4_34();
  v53 = v79;
  (v79)(v54);
  v55 = OUTLINED_FUNCTION_18_32((v51 + v50));
  v56 = v67;
  *(v57 + 16) = v68;
  *(v57 + 24) = v56;
  v0[12] = sub_1D80A1BDC;
  v0[13] = v51;
  v0[14] = OUTLINED_FUNCTION_4_6;
  v0[15] = 0;
  v53(v40, v49, v6, v55);
  v58 = v53;
  v59 = swift_allocObject();
  v60 = v74;
  v61 = v75;
  v59[2] = v6;
  v59[3] = v61;
  v59[4] = v60;
  v59[5] = v52;
  OUTLINED_FUNCTION_4_34();
  v58(v62);
  OUTLINED_FUNCTION_30_20();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

void sub_1D80A1690()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v39 = v4;
  v40 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v1;
  v10 = *v1;
  v37 = v11;
  v38 = v10;
  v12 = *(v9 + 136);
  v13 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v15 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26();
  v17 = *(v9 + 144);
  OUTLINED_FUNCTION_12_13();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - v21;
  if (v6)
  {
    v35 = v20;
    v36 = v19;
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_3_0();
    (*(v23 + 16))(v0, v37, v12);
    OUTLINED_FUNCTION_102();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v12);
    v37 = v13;
    v32 = *(v8 + 80);
    v33 = v6;
    v27 = v38[19];

    v38 = v39;
    v32(v2, v0, v12, v17, v27, ObjectType, v8);
    (*(v15 + 8))(v0, v37);
    v28 = v33;
    v29 = v40;
    v41 = v33;
    v42 = v40;
    v43 = v38;
    sub_1D7E0A1A8(255, &qword_1EDBB2F60);
    OUTLINED_FUNCTION_12_13();
    v30 = type metadata accessor for StateCommandValue();
    StateCommandValue.value(for:)(v22, v30, &v44);
    (*(v35 + 8))(v22, v36);
    sub_1D7E45BA8(v28, v29, v39);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D80A1950()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v4;
  v9 = *(*v4 + 136);
  OUTLINED_FUNCTION_12_13();
  v25 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26();
  v24 = *(v8 + 144);
  v27 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v26 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_5();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_3_0();
  v14 = *(v13 + 16);
  v14(v0, v3, v9);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  (*(v7 + 80))(v5, v0, v9, v24, *(v8 + 152), ObjectType, v7);
  OUTLINED_FUNCTION_41_11();
  v1(v0, v25);
  v14(v0, v3, v9);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v9);
  type metadata accessor for StateCommandContextValue();
  OUTLINED_FUNCTION_42_12();
  StateCommandContextValue.value(for:context:)(v1, v0, v21, v22);
  v1(v0, v25);
  (*(v26 + 8))(v1, v27);
  OUTLINED_FUNCTION_100();
}

void ContextMenuItem.__allocating_init<A, B>(stateCommand:context:identifier:title:subtitle:image:options:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_3_102();
  swift_allocObject();
  OUTLINED_FUNCTION_17_0();
  ContextMenuItem.init<A, B>(stateCommand:context:identifier:title:subtitle:image:options:)();
  OUTLINED_FUNCTION_100();
}

void ContextMenuItem.init<A, B>(stateCommand:context:identifier:title:subtitle:image:options:)()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_40_11();
  v8 = *(v7 + 136);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_16_35();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_31(v14, v15, v16, v17, v18, v19, v20);
  v47 = v21;
  v41 = *(v22 + 16);
  v0[2] = v23;
  v0[3] = v24;
  v49 = *(v10 + 16);
  v25 = OUTLINED_FUNCTION_48_9();
  v26(v25);
  v46 = *(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v8;
  v51 = *(v2 + 144);
  *(v27 + 24) = v51;
  v50 = *(v2 + 152);
  *(v27 + 32) = v50;
  *(v27 + 40) = v48;
  *(v27 + 56) = v47;
  *(v27 + 64) = v6;
  v28 = *(v10 + 32);
  OUTLINED_FUNCTION_4_34();
  v29();
  v0[4] = sub_1D80A47DC;
  v0[5] = v27;
  OUTLINED_FUNCTION_29_9();
  v49();
  v40 = (((v46 + 48) & ~v46) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v30[2] = v8;
  v30[3] = v51;
  v30[4] = v50;
  v30[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v28();
  OUTLINED_FUNCTION_18_32((v30 + v40));
  *(v31 + 16) = v41;
  v0[6] = sub_1D80A47C0;
  v0[7] = v30;
  OUTLINED_FUNCTION_52_4();
  v49();
  v32 = swift_allocObject();
  v32[2] = v8;
  v32[3] = v51;
  v32[4] = v50;
  v32[5] = v6;
  OUTLINED_FUNCTION_52_4();
  v28();
  v0[8] = sub_1D80A47C4;
  v0[9] = v32;
  OUTLINED_FUNCTION_58_8();
  v49();
  v33 = swift_allocObject();
  v33[2] = v8;
  v33[3] = v51;
  v33[4] = v50;
  v33[5] = v6;
  (v28)(v33 + ((v46 + 48) & ~v46), v1, v8);
  v0[10] = sub_1D80A47C8;
  v0[11] = v33;

  (v49)(v1, v4, v8);
  v34 = swift_allocObject();
  v34[2] = v8;
  v34[3] = v51;
  v34[4] = v50;
  v34[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v28();
  OUTLINED_FUNCTION_18_32((v34 + v40));
  *(v35 + 16) = v43;
  *(v35 + 24) = v42;
  v0[12] = sub_1D80A47E4;
  v0[13] = v34;

  v36 = OUTLINED_FUNCTION_17_28();
  (v49)(v36);
  v37 = swift_allocObject();
  v37[2] = v8;
  v37[3] = v51;
  v37[4] = v50;
  v37[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v28();
  OUTLINED_FUNCTION_12_39((v37 + v40));
  *(v38 + 16) = v45;
  *(v38 + 24) = v44;
  v0[14] = sub_1D80A47E8;
  v0[15] = v37;
  OUTLINED_FUNCTION_58_8();
  v28();
  v39 = swift_allocObject();
  v39[2] = v8;
  v39[3] = v51;
  v39[4] = v50;
  v39[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v28();
  OUTLINED_FUNCTION_30_20();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

void sub_1D80A2174()
{
  OUTLINED_FUNCTION_120();
  v34 = v1;
  v3 = v2;
  v36 = v4;
  v38 = v5;
  v6 = *(*v2 + 136);
  v37 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v35 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_55_10();
  v10 = *(v9 + 144);
  v33 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_3_0();
  (*(v20 + 16))(v0, v34, v6);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);
  OUTLINED_FUNCTION_45_12();
  OUTLINED_FUNCTION_55_10();
  v25 = *(v24 + 152);
  v26(v3, v0, v6, v10, v25, ObjectType);
  v27 = v0;
  v28 = v33;
  (*(v35 + 8))(v27, v37);
  (*(v12 + 16))(v15, v18, v28);
  if (__swift_getEnumTagSinglePayload(v15, 1, v10) == 1)
  {
    v29 = *(v12 + 8);
    v29(v18, v28);
    v29(v15, v28);
    v30 = 2;
  }

  else
  {
    (*(v25 + 8))(&v39, v10, v25);
    (*(v12 + 8))(v18, v28);
    v30 = v39;
    OUTLINED_FUNCTION_3_0();
    (*(v31 + 8))(v15, v10);
  }

  *v38 = v30;
  OUTLINED_FUNCTION_100();
}

uint64_t ContextMenuItem.__allocating_init<A, B>(stateCommand:context:identifier:title:subtitle:image:state:options:)()
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_3_102();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_17_0();
  ContextMenuItem.init<A, B>(stateCommand:context:identifier:title:subtitle:image:state:options:)();
  return v0;
}

void ContextMenuItem.init<A, B>(stateCommand:context:identifier:title:subtitle:image:state:options:)()
{
  OUTLINED_FUNCTION_120();
  v48 = v3;
  v58 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_40_11();
  v8 = *(v7 + 136);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_16_35();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_31(v14, v15, v16, v17, v18, v19, v20);
  v54 = v21;
  v47 = *(v22 + 16);
  v59 = v0;
  v0[2] = v23;
  v0[3] = v24;
  v25 = *(v10 + 16);
  v26 = OUTLINED_FUNCTION_48_9();
  v25(v26);
  v27 = *(v10 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v8;
  v57 = *(v2 + 144);
  *(v28 + 24) = v57;
  v56 = *(v2 + 152);
  *(v28 + 32) = v56;
  *(v28 + 40) = v55;
  *(v28 + 56) = v54;
  *(v28 + 64) = v6;
  v29 = *(v10 + 32);
  OUTLINED_FUNCTION_4_34();
  v30();
  v59[4] = sub_1D80A2DB4;
  v59[5] = v28;
  v31 = OUTLINED_FUNCTION_17_28();
  v25(v31);
  v53 = (((v27 + 48) & ~v27) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v32[2] = v8;
  v32[3] = v57;
  v32[4] = v56;
  v32[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v29();
  OUTLINED_FUNCTION_18_32((v32 + v53));
  *(v33 + 16) = v47;
  v59[6] = sub_1D80A47C0;
  v59[7] = v32;
  v34 = OUTLINED_FUNCTION_17_28();
  v25(v34);
  v35 = swift_allocObject();
  v35[2] = v8;
  v35[3] = v57;
  v35[4] = v56;
  v35[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v29();
  v36 = v35 + v53;
  v37 = *(v48 + 16);
  *v36 = *v48;
  *(v36 + 1) = v37;
  *(v36 + 2) = *(v48 + 32);
  *(v36 + 6) = *(v48 + 48);
  v59[8] = sub_1D80A34F4;
  v59[9] = v35;
  v38 = OUTLINED_FUNCTION_48_9();
  v25(v38);
  v39 = swift_allocObject();
  v39[2] = v8;
  v39[3] = v57;
  v39[4] = v56;
  v39[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v29();
  v59[10] = sub_1D80A47C8;
  v59[11] = v39;

  (v25)(v1, v58, v8);
  v40 = swift_allocObject();
  v40[2] = v8;
  v40[3] = v57;
  v40[4] = v56;
  v40[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v29();
  OUTLINED_FUNCTION_18_32((v40 + v53));
  *(v41 + 16) = v50;
  *(v41 + 24) = v49;
  v59[12] = sub_1D80A39D8;
  v59[13] = v40;

  v42 = OUTLINED_FUNCTION_17_28();
  v25(v42);
  v43 = swift_allocObject();
  v43[2] = v8;
  v43[3] = v57;
  v43[4] = v56;
  v43[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v29();
  OUTLINED_FUNCTION_12_39((v43 + v53));
  *(v44 + 16) = v52;
  *(v44 + 24) = v51;
  v59[14] = sub_1D80A3D18;
  v59[15] = v43;
  v45 = OUTLINED_FUNCTION_48_9();
  (v29)(v45);
  v46 = swift_allocObject();
  v46[2] = v8;
  v46[3] = v57;
  v46[4] = v56;
  v46[5] = v6;
  OUTLINED_FUNCTION_4_34();
  v29();
  OUTLINED_FUNCTION_30_20();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D80A2994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v50 = a7;
  v46 = a4;
  v47 = a5;
  v45 = a2;
  v10 = *a6;
  v11 = *a6;
  v12 = *(*a6 + 136);
  v44 = sub_1D8191E84();
  v13 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v15 = &v35 - v14;
  v16 = *(v10 + 144);
  v17 = sub_1D8191E84();
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  if (!a3)
  {
    return 0;
  }

  v42 = v19;
  v43 = v18;
  v38 = a1;
  v49 = v21;
  ObjectType = swift_getObjectType();
  v22 = *(v12 - 8);
  v41 = a3;
  v39 = *(v22 + 16);
  v48 = v16;
  v36 = v13;
  v40 = v22 + 16;
  v39(v15, v50, v12);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v12);
  v23 = v47;
  v24 = v45;
  v35 = *(v45 + 80);
  v25 = v44;
  v26 = *(v11 + 152);
  v27 = v46;

  v28 = v23;
  v35(a6, v15, v12, v48, v26, ObjectType, v24);
  v29 = *(v36 + 8);
  v29(v15, v25);
  v30 = v41;
  v51[4] = v41;
  v51[5] = v27;
  v51[6] = v23;
  v39(v15, v50, v12);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v12);
  v31 = sub_1D7E0A1A8(255, &qword_1EDBB2F60);
  v51[0] = v48;
  v51[1] = v12;
  v51[2] = v31;
  v51[3] = v26;
  v32 = type metadata accessor for StateCommandContextValue();
  v33 = v49;
  StateCommandContextValue.value(for:context:)(v49, v15, v32, v51);
  v29(v15, v25);
  (*(v42 + 8))(v33, v43);
  sub_1D7E45BA8(v30, v27, v23);
  return v51[0];
}

uint64_t objectdestroy_71Tm()
{
  OUTLINED_FUNCTION_1_125();
  if (*(v0 + 40))
  {
  }

  v1 = OUTLINED_FUNCTION_56_7();
  v2(v1);
  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

void sub_1D80A2DF4()
{
  OUTLINED_FUNCTION_120();
  v34 = v1;
  v32 = v2;
  v33 = v3;
  v28 = v5;
  v29 = v4;
  v7 = v6;
  v35 = v8;
  v9 = *v6;
  v10 = *(*v6 + 136);
  v30 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = *(v9 + 144);
  v31 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15_10();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_3_0();
  (*(v21 + 16))(v15, v28, v10);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v10);
  OUTLINED_FUNCTION_45_12();
  v25(v7, v15, v10, v16, *(v9 + 152), ObjectType);
  (*(v12 + 8))(v15, v30);
  v36 = v32;
  v37 = v33;
  v38 = v34;
  v26 = type metadata accessor for StateCommandOptions();
  sub_1D8068248(v0, v26, v35);
  (*(v18 + 8))(v0, v31);
  OUTLINED_FUNCTION_100();
}

uint64_t objectdestroy_29Tm_1()
{
  OUTLINED_FUNCTION_1_125();
  OUTLINED_FUNCTION_8_6();
  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);

  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t sub_1D80A30D0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v33 = a1;
  v34 = a4;
  v37 = a5;
  v7 = *a2;
  v8 = *(*a2 + 136);
  v9 = sub_1D8191E84();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  v12 = *(v7 + 144);
  v13 = sub_1D8191E84();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  ObjectType = swift_getObjectType();
  v17 = *(v8 - 8);
  v30 = *(v17 + 16);
  v31 = a3;
  v29[1] = v17 + 16;
  v30(v11, a3, v8);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
  v18 = v32;
  v19 = *(v7 + 152);
  (*(v33 + 80))(a2, v11, v8, v12, v19, ObjectType);
  v20 = *(v18 + 8);
  v20(v11, v9);
  v21 = sub_1D7E0631C(255, &qword_1ECA10530);
  *&v42 = v12;
  *(&v42 + 1) = v8;
  *&v43 = v21;
  *(&v43 + 1) = v19;
  v22 = type metadata accessor for StateCommandContextValue();
  v23 = sub_1D8191E84();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v39, v34, v23);
  if (v39[0])
  {
    v30(v11, v31, v8);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
    StateCommandContextValue.value(for:context:)(v15, v11, v22, &v42);
    v20(v11, v9);
    (*(*(v22 - 8) + 8))(v39, v22);
  }

  else
  {
    (*(v24 + 8))(v39, v23);
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  sub_1D80A46A4(&v42, v39);
  v25 = v40;
  if (v40)
  {
    v26 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (*(v26 + 8))(&v38, v25, v26);
    sub_1D80A4734(&v42);
    (*(v35 + 8))(v15, v36);
    v27 = v38;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  else
  {
    sub_1D80A4734(&v42);
    (*(v35 + 8))(v15, v36);
    result = sub_1D80A4734(v39);
    v27 = 2;
  }

  *v37 = v27;
  return result;
}

uint64_t sub_1D80A34F4()
{
  OUTLINED_FUNCTION_49_8();
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  return sub_1D80A30D0(v6, *(v0 + 40), v0 + v5, v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8), v7);
}

void sub_1D80A3564()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = *(*v3 + 136);
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_6();
  OUTLINED_FUNCTION_3_0();
  (*(v9 + 16))(v0, v2, v4);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  OUTLINED_FUNCTION_29_9();
  v13();
  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_100();
}

void sub_1D80A36B4()
{
  OUTLINED_FUNCTION_120();
  v41 = v2;
  v42 = v3;
  v39 = v4;
  v40 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_47_12(v8, v9);
  v11 = *(v10 + 136);
  OUTLINED_FUNCTION_12_13();
  v38 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v45 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_10();
  v37 = *(v0 + 144);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v43 = v15;
  v44 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v36 = &v36 - v17;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_3_0();
  v20 = *(v19 + 16);
  v21 = OUTLINED_FUNCTION_29_18();
  v20(v21);
  v22 = OUTLINED_FUNCTION_14_36();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v11);
  OUTLINED_FUNCTION_45_12();
  v25 = *(v0 + 152);
  v26 = v37;
  v27(v7, v1, v11, v37, v25, ObjectType);
  OUTLINED_FUNCTION_41_11();
  v28 = v38;
  v7(v1, v38);
  v50 = v39;
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v29 = OUTLINED_FUNCTION_29_18();
  v20(v29);
  v30 = OUTLINED_FUNCTION_14_36();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v11);
  v46 = v26;
  v47 = v11;
  v48 = MEMORY[0x1E69E6158];
  v49 = v25;
  type metadata accessor for StateCommandContextValue();
  OUTLINED_FUNCTION_42_12();
  v33 = v36;
  StateCommandContextValue.value(for:context:)(v36, v1, v34, v35);
  v7(v1, v28);
  (*(v43 + 8))(v33, v44);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_100();
}

uint64_t objectdestroy_38Tm()
{
  OUTLINED_FUNCTION_1_125();
  OUTLINED_FUNCTION_8_6();
  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);

  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

void sub_1D80A39F0()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  OUTLINED_FUNCTION_47_12(v5, v6);
  v8 = *(v7 + 136);
  OUTLINED_FUNCTION_12_13();
  v28 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_10();
  v27 = *(v0 + 144);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v29 = v11;
  v30 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_5();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_3_0();
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_29_18();
  v15(v16);
  v17 = OUTLINED_FUNCTION_14_36();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);
  OUTLINED_FUNCTION_45_12();
  v20(v4, v1, v8, v27, *(v0 + 152), ObjectType);
  OUTLINED_FUNCTION_41_11();
  v2(v1, v28);
  v21 = OUTLINED_FUNCTION_29_18();
  v15(v21);
  v22 = OUTLINED_FUNCTION_14_36();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v8);
  sub_1D7E40788();
  type metadata accessor for StateCommandContextValue();
  OUTLINED_FUNCTION_42_12();
  StateCommandContextValue.value(for:context:)(v2, v1, v25, v26);
  v2(v1, v28);
  (*(v29 + 8))(v2, v30);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_100();
}

uint64_t objectdestroy_122Tm()
{
  OUTLINED_FUNCTION_1_125();
  OUTLINED_FUNCTION_60_8();
  v2 = OUTLINED_FUNCTION_56_7();
  v3(v2);

  if (*(v0 + v1 + 24) != 1)
  {
  }

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

void sub_1D80A3D30()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(*v3 + 136);
  OUTLINED_FUNCTION_12_13();
  v8 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_59_6();
  OUTLINED_FUNCTION_3_0();
  (*(v13 + 16))(v0, v2, v7);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  CommandCenterType.canExecute<A>(command:context:)(v4, v0, v12, v6);
  (*(v10 + 8))(v0, v8);
  OUTLINED_FUNCTION_100();
}

uint64_t objectdestroy_32Tm_0()
{
  OUTLINED_FUNCTION_1_125();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t ContextMenuItem.deinit()
{

  return v0;
}

uint64_t ContextMenuItem.__deallocating_deinit()
{
  ContextMenuItem.deinit();
  OUTLINED_FUNCTION_3_102();

  return swift_deallocClassInstance();
}

void ContextMenuItem.makeAction(commandCenter:source:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if ((*(v0 + 128))())
  {
    (*(v0 + 96))(v7, v5);
    v9 = v8;
    v10 = *(v0 + 32);

    v11 = v10(v7, v5);

    if (v9)
    {
      OUTLINED_FUNCTION_21_0();
      v12 = swift_allocObject();
      v12[2] = v1;
      v12[3] = v7;
      v12[4] = v5;
      v12[5] = v3;
      objc_allocWithZone(MEMORY[0x1E69DC5E8]);

      swift_unknownObjectRetain();

      sub_1D80A446C();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_100();
}

void *ContextMenuItem.build(commandCenter:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(v3 + 128))() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_14_0();
  v9 = v8(v7);
  v11 = v10;
  v12 = OUTLINED_FUNCTION_14_0();
  v13(v12);
  v14 = *(v3 + 32);

  v15 = OUTLINED_FUNCTION_14_0();
  v16 = v14(v15);

  v17 = OUTLINED_FUNCTION_14_0();
  v18(v17);
  sub_1D8190DB4();
  sub_1D8190EE4();
  if (v27 == 2)
  {
    v19 = 0;
  }

  else if (v27 == 3)
  {
    v19 = 2;
  }

  else
  {
    v19 = v27 & 1;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB2F18);
  v21 = swift_allocObject();
  v21[2] = v3;
  v21[3] = v9;
  v21[4] = v11;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v22 = v16;

  swift_unknownObjectRetain();

  v20 = sub_1D8191CF4();
  v23 = OUTLINED_FUNCTION_14_0();
  v24(v23);
  [v20 setAttributes_];

  return v20;
}

uint64_t sub_1D80A42E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D7E13630(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D819FAC0;
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1D7E13BF4();
  *(v13 + 32) = v15;
  *(v13 + 40) = v14;
  *(v13 + 96) = v16;
  *(v13 + 104) = v17;
  if (a4)
  {
    v18 = a3;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (a4)
  {
    v19 = a4;
  }

  *(v13 + 64) = v17;
  *(v13 + 72) = v18;
  *(v13 + 80) = v19;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v20 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  return (*(a2 + 80))(a5, a6, a7);
}

id sub_1D80A446C()
{
  OUTLINED_FUNCTION_8_3();
  v4 = sub_1D8190EE4();

  v9 = v2;
  v10 = v0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D80A464C;
  v8[3] = &block_descriptor_66;
  v5 = _Block_copy(v8);
  v6 = [v1 initWithName:v4 image:v3 actionHandler:v5];

  _Block_release(v5);

  return v6;
}

uint64_t dispatch thunk of ContextMenuItem.__allocating_init<A, B>(command:context:title:image:options:)()
{
  return (*(v0 + 160))();
}

{
  return (*(v0 + 168))();
}

uint64_t sub_1D80A464C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_1D80A46A4(uint64_t a1, uint64_t a2)
{
  sub_1D7E13630(0, &qword_1ECA10538, &qword_1ECA10530, &protocol descriptor for CommandStateType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D80A4734(uint64_t a1)
{
  sub_1D7E13630(0, &qword_1ECA10538, &qword_1ECA10530, &protocol descriptor for CommandStateType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SelectionStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t LayoutSelectionStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void (*sub_1D80A4928(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = ViewSelectable.isSelected.modify(v2);
  return sub_1D7F4150C;
}

unint64_t sub_1D80A49A4()
{
  result = qword_1ECA10540;
  if (!qword_1ECA10540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10540);
  }

  return result;
}

unint64_t sub_1D80A49FC()
{
  result = qword_1ECA10548;
  if (!qword_1ECA10548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10548);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectionStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LayoutSelectionStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D80A4C80(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v8 = sub_1D8191E84();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - v14;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E7B91C(a1, v23);
  sub_1D7E1B618(0, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, a5);
    (*(v16 + 32))(v18, v15, a5);
    (*(v16 + 16))(v12, v18, a5);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a5);
    v22(v12, a2);
    (*(v9 + 8))(v12, v8);
    return (*(v16 + 8))(v18, a5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, a5);
    v20 = *(v9 + 8);
    v20(v15, v8);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, a5);
    v22(v12, a2);
    return (v20)(v12, v8);
  }
}

uint64_t CommandExecutionObserver.deinit()
{

  sub_1D7E166A0(v0 + 32);
  return v0;
}

uint64_t CommandExecutionObserver.__deallocating_deinit()
{

  sub_1D7E166A0(v0 + 32);
  OUTLINED_FUNCTION_0_127();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80A5038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a4;
  v9 = sub_1D8191E84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  swift_beginAccess();
  v13 = *(v5 + 16);
  if (!*(v13 + 16))
  {
    return swift_endAccess();
  }

  v14 = sub_1D7E11428(a1, a2);
  if ((v15 & 1) == 0)
  {
    return swift_endAccess();
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  swift_endAccess();
  result = sub_1D7E36AB8(v16);
  if (result)
  {
    v18 = result;
    v26 = v9;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v29 = v16 & 0xC000000000000001;
      v19 = (v10 + 16);
      v25[0] = v10 + 8;
      v25[1] = a5 - 8;
      sub_1D8190DB4();
      for (i = 0; i != v18; ++i)
      {
        if (v29)
        {
          v21 = MEMORY[0x1DA714420](i, v16);
        }

        else
        {
          v21 = *(v16 + 8 * i + 32);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          v22 = *(v21 + 16);
          v23 = v26;
          (*v19)(v12, v27, v26);
          if (__swift_getEnumTagSinglePayload(v12, 1, a5) == 1)
          {
            (*v25[0])(v12, v23);
            v30 = 0u;
            v31 = 0u;
          }

          else
          {
            *(&v31 + 1) = a5;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
            (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, v12, a5);
          }

          v22(&v30, v28);

          sub_1D7E7BAAC(&v30);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t CommandExecutionObserverStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void CommandExecutionObserverStore.description.getter()
{
  sub_1D81921A4();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_36:
    sub_1D7E1B618(0, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D7E1B6BC();
    v23 = sub_1D8190E94();
    v25 = v24;

    MEMORY[0x1DA713260](v23, v25);

    MEMORY[0x1DA713260](10506, 0xE200000000000000);
    return;
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1D8190DB4();
  sub_1D7F08E34();
  v6 = sub_1D804C12C(v1);
  v7 = 0;
  v8 = v1 + 64;
  v27 = v1 + 64;
  v28 = v1;
  v26 = v2;
  while (2)
  {
    if (v6 < 0 || v6 >= 1 << *(v1 + 32))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (*(v1 + 36) != v4)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      break;
    }

    v31 = v4;
    v29 = v5;
    v30 = v7;
    v9 = (*(v1 + 48) + 16 * v6);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(*(v1 + 56) + 8 * v6);
    sub_1D8190DB4();
    sub_1D8190DB4();
    sub_1D81921A4();
    sub_1D8190DB4();

    MEMORY[0x1DA713260](0x3D6576696C61283DLL, 0xE800000000000000);
    v32 = v3;
    v13 = sub_1D7E36AB8(v12);
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    while (v13 != v14)
    {
      if (v15)
      {
        MEMORY[0x1DA714420](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }
      }

      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D8192274();
        OUTLINED_FUNCTION_0_148();
        sub_1D81922B4();
        OUTLINED_FUNCTION_0_148();
        sub_1D81922C4();
        sub_1D8192284();
      }

      else
      {
      }

      ++v14;
    }

    sub_1D7E36AB8(v32);

    v16 = sub_1D81925B4();
    MEMORY[0x1DA713260](v16);

    MEMORY[0x1DA713260](0x3D64616564202CLL, 0xE700000000000000);
    v17 = 0;
    v33 = MEMORY[0x1E69E7CC0];
    while (v13 != v17)
    {
      if (v15)
      {
        MEMORY[0x1DA714420](v17, v12);
      }

      else
      {
        if (v17 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }
      }

      if (__OFADD__(v17, 1))
      {
        goto LABEL_39;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {

        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D8192274();
        OUTLINED_FUNCTION_0_148();
        sub_1D81922B4();
        OUTLINED_FUNCTION_0_148();
        sub_1D81922C4();
        sub_1D8192284();
      }

      ++v17;
    }

    sub_1D7E36AB8(v33);

    v18 = sub_1D81925B4();
    MEMORY[0x1DA713260](v18);

    MEMORY[0x1DA713260](41, 0xE100000000000000);

    v19 = *(v34 + 16);
    if (v19 >= *(v34 + 24) >> 1)
    {
      sub_1D7F08E34();
    }

    *(v34 + 16) = v19 + 1;
    v20 = v34 + 16 * v19;
    *(v20 + 32) = v10;
    *(v20 + 40) = v11;
    v8 = v27;
    v1 = v28;
    if (v6 >= -(-1 << *(v28 + 32)))
    {
      goto LABEL_44;
    }

    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_45;
    }

    if (*(v28 + 36) == v31)
    {
      v21 = sub_1D8192034();
      v22 = *(v28 + 36);
      sub_1D7E452C4(v6, v31, v29 & 1);
      v5 = 0;
      v6 = v21;
      v4 = v22;
      v3 = MEMORY[0x1E69E7CC0];
      v7 = v30 + 1;
      if (v30 + 1 != v26)
      {
        continue;
      }

      goto LABEL_36;
    }

    break;
  }

  __break(1u);
}

id sub_1D80A5904(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1D8191E84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v19 = *(v2 + 16);
  (*(v6 + 16))(v8, a1, v5, v11);
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v15 = v19;

    return v15;
  }

  else
  {
    (*(v9 + 32))(v13, v8, v4);
    v17 = v14(v13);
    (*(v9 + 8))(v13, v4);
    return v17;
  }
}

uint64_t StateCommandImage.init(default:block:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(void)@<X8>)
{
  v10 = a2();
  result = (*(*(a4 - 8) + 8))(a1, a4);
  a5[1] = a3;
  a5[2] = v10;
  *a5 = a2;
  return result;
}

uint64_t (*StateCommandImage<>.init(off:on:)@<X0>(uint64_t (*a1)(unsigned __int8 *a1)@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(unsigned __int8 *a1)@<X8>))(unsigned __int8 *a1)
{
  a3[2] = a1;
  OUTLINED_FUNCTION_0_32();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  OUTLINED_FUNCTION_0_32();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D80A5C40;
  *(v6 + 24) = v5;
  *a3 = sub_1D80A5C58;
  a3[1] = v6;

  return a1;
}

id sub_1D80A5C40(char a1)
{
  v2 = 24;
  if (a1)
  {
    v2 = 16;
  }

  return *(v1 + v2);
}

uint64_t (*StateCommandImage<>.init(_:)@<X0>(uint64_t (*a1)(unsigned __int8 *)@<X0>, uint64_t (**a2)(unsigned __int8 *)@<X8>))(unsigned __int8 *)
{
  a2[2] = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  OUTLINED_FUNCTION_0_32();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D80A5D20;
  *(v4 + 24) = v3;
  *a2 = sub_1D80A5D7C;
  a2[1] = v4;

  return a1;
}

uint64_t sub_1D80A5D28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id CardViewAppearance.barTintColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *CardViewAppearance.largeDetentBackgroundColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t CardViewAppearance.init(barTintColor:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t CardViewAppearance.init(barTintColor:largeDetentBackgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id static CardViewAppearance.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECA0C340 != -1)
  {
    swift_once();
  }

  v2 = *algn_1ECA10558;
  v5 = qword_1ECA10550;
  *a1 = qword_1ECA10550;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

uint64_t BlueprintPipelineUpdate.replacing(action:apply:validate:bookmark:before:after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v80 = a8;
  v79 = a7;
  v77 = a6;
  v90 = a3;
  v91 = a5;
  v92 = a2;
  v93 = a4;
  v74 = a1;
  v87 = a9;
  v11 = *(a10 + 24);
  v12 = *(a10 + 32);
  v13 = *(a10 + 40);
  v97 = *(a10 + 16);
  v10 = v97;
  v98 = v11;
  v99 = v12;
  v100 = v13;
  v14 = type metadata accessor for Blueprint();
  v82 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v89 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23();
  v88 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  OUTLINED_FUNCTION_2();
  v95 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23();
  v81 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v96 = &v74 - v25;
  sub_1D7E81634(0, qword_1EDBBA708, type metadata accessor for BlueprintBookmark, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  v76 = type metadata accessor for BlueprintBookmark();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v29);
  v94 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v11;
  v86 = v10;
  v97 = v10;
  v98 = v11;
  v83 = v13;
  v84 = v12;
  v99 = v12;
  v100 = v13;
  v31 = type metadata accessor for BlueprintPipelineUpdate.Action();
  v32 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v34 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v74 - v36;
  OUTLINED_FUNCTION_2();
  v39 = v38;
  OUTLINED_FUNCTION_44();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v74 - v42;
  (*(v34 + 16))(v37, v74, v32, v41);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v31);
  v78 = v43;
  if (EnumTagSinglePayload == 1)
  {
    v45 = v43;
    v46 = v75;
    (*(v39 + 16))(v45);
    if (__swift_getEnumTagSinglePayload(v37, 1, v31) != 1)
    {
      (*(v34 + 8))(v37, v32);
    }
  }

  else
  {
    v47 = v43;
    v46 = v75;
    (*(v39 + 32))(v47, v37, v31);
  }

  v48 = v92;
  if (v92)
  {
    OUTLINED_FUNCTION_0_32();
    v49 = swift_allocObject();
    v50 = v90;
    *(v49 + 16) = v48;
    *(v49 + 24) = v50;
    v51 = sub_1D7EA8F68;
  }

  else
  {
    v52 = (v46 + *(a10 + 56));
    v54 = *v52;
    v53 = v52[1];
    OUTLINED_FUNCTION_0_32();
    v49 = swift_allocObject();
    *(v49 + 16) = v54;
    *(v49 + 24) = v53;

    v51 = sub_1D7E74D6C;
  }

  v55 = v51;
  OUTLINED_FUNCTION_0_32();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  *(v56 + 24) = v49;
  v57 = v88;
  v58 = v93;
  if (v93)
  {
    OUTLINED_FUNCTION_0_32();
    v59 = swift_allocObject();
    v60 = v91;
    *(v59 + 16) = v58;
    *(v59 + 24) = v60;
    v61 = sub_1D80A77E8;
  }

  else
  {
    v62 = (v46 + *(a10 + 52));
    v64 = *v62;
    v63 = v62[1];
    OUTLINED_FUNCTION_0_32();
    v59 = swift_allocObject();
    *(v59 + 16) = v64;
    *(v59 + 24) = v63;
    v57 = v88;

    v61 = sub_1D80A67C4;
  }

  v65 = v61;
  OUTLINED_FUNCTION_0_32();
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v59;
  sub_1D80A682C(v77, v28);
  v67 = v76;
  if (__swift_getEnumTagSinglePayload(v28, 1, v76) == 1)
  {
    sub_1D7E2B108(v46 + *(a10 + 60), v94);
    v68 = __swift_getEnumTagSinglePayload(v28, 1, v67);
    sub_1D7E19F24(v92);
    sub_1D7E19F24(v93);
    v69 = v82;
    if (v68 != 1)
    {
      sub_1D807A408(v28);
    }
  }

  else
  {
    sub_1D7E85994(v28, v94);
    sub_1D7E19F24(v92);
    sub_1D7E19F24(v93);
    v69 = v82;
  }

  v70 = *(v89 + 16);
  v70(v20, v79, v69);
  OUTLINED_FUNCTION_3_9(v20);
  if (v71)
  {
    (*(v95 + 16))(v96, v46 + *(a10 + 64), v14);
    OUTLINED_FUNCTION_3_9(v20);
    if (!v71)
    {
      (*(v89 + 8))(v20, v69);
    }
  }

  else
  {
    (*(v95 + 32))(v96, v20, v14);
  }

  v70(v57, v80, v69);
  OUTLINED_FUNCTION_3_9(v57);
  if (v71)
  {
    v72 = v81;
    (*(v95 + 16))(v81, v46 + *(a10 + 68), v14);
    OUTLINED_FUNCTION_3_9(v57);
    if (!v71)
    {
      (*(v89 + 8))(v57, v69);
    }
  }

  else
  {
    v72 = v81;
    (*(v95 + 32))(v81, v57, v14);
  }

  return sub_1D7E87FD8(v78, sub_1D7F08F64, v56, sub_1D80A67F4, v66, v94, v96, v72, v87);
}

uint64_t BlueprintPipelineUpdate.action.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_46();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  OUTLINED_FUNCTION_8();
  return (*(v3 + 16))(a1, v1);
}

uint64_t BlueprintPipelineUpdate.validate.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t BlueprintPipelineUpdate.apply.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t BlueprintPipelineUpdate.before.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  OUTLINED_FUNCTION_8_46();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_8();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t BlueprintPipelineUpdate.after.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  OUTLINED_FUNCTION_8_46();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_8();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t sub_1D80A67F4(uint64_t a1, uint64_t a2)
{
  v5[1] = a2;
  v3 = *(v2 + 16);
  v5[0] = a1;
  return v3(v5);
}

uint64_t sub_1D80A682C(uint64_t a1, uint64_t a2)
{
  sub_1D7E81634(0, qword_1EDBBA708, type metadata accessor for BlueprintBookmark, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BlueprintPipelineUpdate.shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  OUTLINED_FUNCTION_0_175();
  sub_1D7E81634(0, v6, v7, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A3F90;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_18_33();
  *(inited + 72) = type metadata accessor for BlueprintPipelineUpdate.Action();
  __swift_allocate_boxed_opaque_existential_0Tm((inited + 48));
  OUTLINED_FUNCTION_3_0();
  (*(v9 + 16))(v10);
  *(inited + 80) = 0x6B72616D6B6F6F62;
  *(inited + 88) = 0xE800000000000000;
  v11 = *(a1 + 60);
  *(inited + 120) = type metadata accessor for BlueprintBookmark();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 96));
  sub_1D7E2B108(v3 + v11, boxed_opaque_existential_0Tm);
  *(inited + 128) = 0x65726F666562;
  *(inited + 136) = 0xE600000000000000;
  OUTLINED_FUNCTION_18_33();
  v13 = type metadata accessor for Blueprint();
  *(inited + 168) = v13;
  __swift_allocate_boxed_opaque_existential_0Tm((inited + 144));
  OUTLINED_FUNCTION_3_0();
  v15 = *(v14 + 16);
  v15(v16);
  *(inited + 176) = 0x7265746661;
  *(inited + 184) = 0xE500000000000000;
  v17 = *(a1 + 68);
  *(inited + 216) = v13;
  v18 = __swift_allocate_boxed_opaque_existential_0Tm((inited + 192));
  (v15)(v18, v3 + v17, v13);
  sub_1D8190D94();
  a2[3] = sub_1D818F274();
  OUTLINED_FUNCTION_7_58();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return sub_1D818F264();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_95();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_1D80A6B5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE44678](a1, WitnessTable);
}

uint64_t BlueprintPipelineUpdate.Action.shortDescription.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D818F274();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v82 - v16;
  (*(v7 + 16))(v10, v3, a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v52 = *(v10 + 5);
      sub_1D7E17C84(v10, &v86);
      OUTLINED_FUNCTION_0_175();
      sub_1D7E81634(0, v53, v54, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_2_115(inited, xmmword_1D819FAC0);
      OUTLINED_FUNCTION_14_37(&v86);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_19_27();
      v56();
      OUTLINED_FUNCTION_5_61();
      OUTLINED_FUNCTION_1_126();
      sub_1D7E81634(0, v57, v58, MEMORY[0x1E69E6720]);
      inited[7].n128_u64[1] = v59;
      inited[6].n128_u64[0] = v52;

      OUTLINED_FUNCTION_16_36();
      goto LABEL_9;
    case 2:
      v31 = *(v10 + 5);
      sub_1D7E17C84(v10, v89);
      v32 = *(v10 + 4);
      v86 = *(v10 + 3);
      v87 = v32;
      v88 = *(v10 + 5);
      v85 = "changesNoAnimation";
      OUTLINED_FUNCTION_0_175();
      sub_1D7E81634(0, v33, v34, MEMORY[0x1E69E6F90]);
      v35 = swift_initStackObject();
      OUTLINED_FUNCTION_2_115(v35, xmmword_1D81A1B70);
      OUTLINED_FUNCTION_14_37(v89);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_19_27();
      v36();
      OUTLINED_FUNCTION_5_61();
      OUTLINED_FUNCTION_1_126();
      sub_1D7E81634(0, v37, v38, MEMORY[0x1E69E6720]);
      v35[6].n128_u64[0] = v31;
      OUTLINED_FUNCTION_20_32();
      v35[7].n128_u64[1] = v39;
      v35[8].n128_u64[0] = v40;
      v35[8].n128_u64[1] = 0xEC00000065707954;
      v35[10].n128_u64[1] = &type metadata for BlueprintAnimation;
      v41 = swift_allocObject();
      v35[9].n128_u64[0] = v41;
      sub_1D8022F74(&v86, v41 + 16);

      OUTLINED_FUNCTION_16_36();
      OUTLINED_FUNCTION_9_34();
      sub_1D818F264();

      sub_1D8022FD0(&v86);
      v42 = v89;
      goto LABEL_11;
    case 3:
      v43 = *(v10 + 5);
      sub_1D7E17C84(v10, &v86);
      v85 = "viewActionWithAnimation";
      OUTLINED_FUNCTION_0_175();
      sub_1D7E81634(0, v44, v45, MEMORY[0x1E69E6F90]);
      v46 = swift_initStackObject();
      OUTLINED_FUNCTION_2_115(v46, xmmword_1D819FAC0);
      OUTLINED_FUNCTION_14_37(&v86);
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_19_27();
      v47();
      OUTLINED_FUNCTION_5_61();
      OUTLINED_FUNCTION_1_126();
      sub_1D7E81634(0, v48, v49, MEMORY[0x1E69E6720]);
      v46[7].n128_u64[1] = v50;
      v46[6].n128_u64[0] = v43;

      OUTLINED_FUNCTION_16_36();
      OUTLINED_FUNCTION_9_34();
LABEL_9:
      sub_1D818F264();

      goto LABEL_10;
    case 4:
      sub_1D7E17C84(v10, &v86);
      OUTLINED_FUNCTION_0_175();
      sub_1D7E81634(0, v26, v27, MEMORY[0x1E69E6F90]);
      v28 = swift_initStackObject();
      OUTLINED_FUNCTION_2_115(v28, xmmword_1D819FAB0);
      v29 = *(&v87 + 1);
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      v28[4].n128_u64[1] = v29;
      __swift_allocate_boxed_opaque_existential_0Tm(&v28[3]);
      OUTLINED_FUNCTION_3_0();
      (*(v30 + 16))();
      OUTLINED_FUNCTION_16_36();
      sub_1D818F264();
LABEL_10:
      v42 = &v86;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      break;
    case 5:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v82 - 48, "blueprint diff response animated ");
      v85 = a2;
      v61 = a1[2];
      v60 = a1[3];
      v62 = a1[5];
      v83 = a1[4];
      v84 = v60;
      v82 = v62;
      *&v86 = v61;
      *(&v86 + 1) = v60;
      *&v87 = v83;
      *(&v87 + 1) = v62;
      *&v86 = type metadata accessor for Blueprint();
      *(&v86 + 1) = sub_1D7E81588();
      OUTLINED_FUNCTION_1_126();
      sub_1D7E81634(255, v63, v64, MEMORY[0x1E69E6720]);
      *&v87 = v65;
      *(&v87 + 1) = MEMORY[0x1E69E6370];
      v66 = *(swift_getTupleTypeMetadata() + 48);

      sub_1D7E17C84(&v10[v66], &v86);
      OUTLINED_FUNCTION_0_175();
      sub_1D7E81634(0, v67, v68, MEMORY[0x1E69E6F90]);
      v69 = swift_initStackObject();
      *(v69 + 16) = xmmword_1D819FAB0;
      *(v69 + 32) = 1717987684;
      *(v69 + 40) = 0xE400000000000000;
      v70 = *(&v87 + 1);
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      *(v69 + 72) = v70;
      __swift_allocate_boxed_opaque_existential_0Tm((v69 + 48));
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_19_27();
      v71();
      sub_1D8190D94();
      sub_1D818F264();
      __swift_destroy_boxed_opaque_existential_1Tm(&v86);
      *&v86 = v61;
      a2 = v85;
      *(&v86 + 1) = v84;
      *&v87 = v83;
      *(&v87 + 1) = v82;
      goto LABEL_13;
    case 6:
      v72 = *(a1 + 2);
      v86 = *(a1 + 1);
      v87 = v72;
      v85 = type metadata accessor for Blueprint();
      sub_1D7E81588();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D7E17C84(&v10[*(TupleTypeMetadata2 + 48)], &v86);
      v84 = "invalidateLayout";
      OUTLINED_FUNCTION_0_175();
      sub_1D7E81634(0, v74, v75, MEMORY[0x1E69E6F90]);
      v76 = swift_initStackObject();
      OUTLINED_FUNCTION_2_115(v76, xmmword_1D819FAB0);
      v77 = *(&v87 + 1);
      __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
      v76[4].n128_u64[1] = v77;
      __swift_allocate_boxed_opaque_existential_0Tm(&v76[3]);
      OUTLINED_FUNCTION_3_0();
      (*(v78 + 16))();
      sub_1D8190D94();
      OUTLINED_FUNCTION_22_22();
      __swift_destroy_boxed_opaque_existential_1Tm(&v86);
      goto LABEL_15;
    case 7:
      sub_1D80A7730();
      OUTLINED_FUNCTION_9_34();
      sub_1D818F264();
      v51 = *(a1 + 2);
      v86 = *(a1 + 1);
      v87 = v51;
LABEL_13:
      type metadata accessor for Blueprint();
LABEL_15:
      OUTLINED_FUNCTION_3_0();
      (*(v79 + 8))(v10);
      break;
    case 8:
    case 10:
      sub_1D8190D94();
      goto LABEL_17;
    case 9:
      sub_1D8190D94();
      OUTLINED_FUNCTION_9_34();
LABEL_17:
      sub_1D818F264();
      break;
    default:
      v19 = *(v10 + 1);
      v86 = *v10;
      v87 = v19;
      v88 = *(v10 + 2);
      OUTLINED_FUNCTION_0_175();
      sub_1D7E81634(0, v20, v21, MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D819FAB0;
      OUTLINED_FUNCTION_20_32();
      v23[4] = v24;
      v23[5] = 0xEC00000065707954;
      v23[9] = &type metadata for BlueprintAnimation;
      v25 = swift_allocObject();
      *(v22 + 48) = v25;
      sub_1D8022F74(&v86, v25 + 16);
      OUTLINED_FUNCTION_16_36();
      OUTLINED_FUNCTION_22_22();
      sub_1D8022FD0(&v86);
      break;
  }

  a2[3] = v11;
  OUTLINED_FUNCTION_7_58();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return (*(v13 + 32))(boxed_opaque_existential_0Tm, v17, v11);
}

uint64_t sub_1D80A7794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE44678](a1, WitnessTable);
}

uint64_t sub_1D80A7808(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 566))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
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

uint64_t sub_1D80A7848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 552) = 0;
    *(result + 248) = 0u;
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
    *(result + 564) = 0;
    *(result + 560) = 0;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 566) = 1;
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

    *(result + 566) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutCollectionScreenCalculator.ScreenError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D80A79E4()
{
  result = qword_1ECA10560;
  if (!qword_1ECA10560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10560);
  }

  return result;
}

id DebugSubViewController.init(dataSource:title:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC5TeaUI22DebugSubViewController_tableView;
  *&v4[v8] = OUTLINED_FUNCTION_3_6(objc_allocWithZone(MEMORY[0x1E69DD020]), sel_initWithFrame_style_);
  v9 = objc_allocWithZone(type metadata accessor for DebugTableViewSource());

  *&v4[OBJC_IVAR____TtC5TeaUI22DebugSubViewController_tableViewSource] = sub_1D816DAE0(v10);
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  sub_1D7FC8B88(a2, a3, v11);

  return v11;
}

id DebugSubViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DebugSubViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI22DebugSubViewController_tableView;
  *(v0 + v1) = OUTLINED_FUNCTION_3_6(objc_allocWithZone(MEMORY[0x1E69DD020]), sel_initWithFrame_style_);
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall DebugSubViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = [v0 navigationItem];
  v10[3] = ObjectType;
  v10[0] = v0;
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v3 = v0;
  v4 = sub_1D7FC8078(0, v10, sel_doDone);
  [v2 setRightBarButtonItem_];

  v5 = [v3 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() whiteColor];
    [v6 setBackgroundColor_];

    v8 = [v3 view];
    if (v8)
    {
      v9 = v8;
      [v8 addSubview_];

      sub_1D816DA04();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall DebugSubViewController.viewWillLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI22DebugSubViewController_tableView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id DebugSubViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id DebugSubViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TipSource.description.getter()
{
  MEMORY[0x1DA713260](*v0, v0[1]);
  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return 0x6372756F53706954;
}

uint64_t TipSource.hashValue.getter()
{
  sub_1D81927E4();
  sub_1D8190FF4();
  return sub_1D8192824();
}

Swift::Void __swiftcall UILabel.seTextIfNeeded(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = sub_1D7FC3208(v1);
  if (!v5)
  {
    if (!object)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!object)
  {

    v8 = 0;
    goto LABEL_12;
  }

  if (v4 != countAndFlagsBits || v5 != object)
  {
    v7 = sub_1D8192634();

    if (v7)
    {
      return;
    }

LABEL_10:
    v8 = sub_1D8190EE4();
LABEL_12:
    v9 = v8;
    [v1 setText_];

    return;
  }
}

Swift::Void __swiftcall UILabel.setAttributedTextIfNeeded(_:)(NSAttributedString_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = [v1 attributedText];
  if (v4)
  {
    v5 = v4;
    if (isa)
    {
      sub_1D7F24E34();
      v6 = isa;
      v7 = sub_1D8191CC4();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!isa)
  {
    return;
  }

  [v2 setAttributedText_];
}

TeaUI::RendererState sub_1D80A8470@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = RendererState.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D80A84B0@<X0>(uint64_t *a1@<X8>)
{
  result = RendererState.rawValue.getter();
  *a1 = result;
  return result;
}

void *static RendererOptions.zero.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDBBAEF8 != -1)
  {
    OUTLINED_FUNCTION_1_127();
  }

  return memcpy(a1, &xmmword_1EDBBAF00, 0x85uLL);
}

uint64_t RendererEnvironment.isLiveResizing.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI19RendererEnvironment_isLiveResizing;
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_8_4();
  return *(v0 + v1);
}

uint64_t RendererEnvironment.transition.getter()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_8_4();
}

uint64_t sub_1D80A8618()
{
  v1 = OBJC_IVAR____TtC5TeaUI19RendererEnvironment_isLiveResizing;
  OUTLINED_FUNCTION_71();
  result = swift_beginAccess();
  *(v0 + v1) = 1;
  return result;
}

uint64_t sub_1D80A867C()
{
  v1 = OBJC_IVAR____TtC5TeaUI19RendererEnvironment_isLiveResizing;
  OUTLINED_FUNCTION_71();
  result = swift_beginAccess();
  *(v0 + v1) = 0;
  return result;
}

uint64_t sub_1D80A86D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1D818E454();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D818E414();
  a4(v9);
  return (*(v6 + 8))(v8, v5);
}

id RendererEnvironment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RendererEnvironment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D80A8868()
{
  result = qword_1ECA10598;
  if (!qword_1ECA10598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10598);
  }

  return result;
}

unint64_t sub_1D80A88C0()
{
  result = qword_1ECA105A0;
  if (!qword_1ECA105A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA105A0);
  }

  return result;
}

unint64_t sub_1D80A8918()
{
  result = qword_1EDBB1950;
  if (!qword_1EDBB1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB1950);
  }

  return result;
}

unint64_t sub_1D80A8970()
{
  result = qword_1EDBB1948;
  if (!qword_1EDBB1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB1948);
  }

  return result;
}

uint64_t sub_1D80A8A4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 133))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 128);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

id sub_1D80A8AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = sub_1D8190EE4();
  }

  else
  {
    v8 = 0;
  }

  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D80A8BF0;
  v12[3] = &block_descriptor_67;
  v9 = _Block_copy(v12);
  v10 = [swift_getObjCClassFromMetadata() contextualActionWithStyle:a1 title:v8 handler:v9];

  _Block_release(v9);

  return v10;
}

void sub_1D80A8BF0(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1D80AA28C, v8);
}

id sub_1D80A8CC4()
{
  sub_1D7E0A1A8(0, &qword_1ECA0E668);
  v0 = sub_1D8191304();

  v1 = [swift_getObjCClassFromMetadata() configurationWithActions_];

  return v1;
}

uint64_t sub_1D80A8D48@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*a1 + *(**a1 + 120));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D80A9FB8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D7E19F24(v4);
}

uint64_t sub_1D80A8DF4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D80A9F80;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *(**a2 + 120));
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D7E19F24(v3);
  return sub_1D7E0E10C(v8);
}

uint64_t BlueprintCompositionalListLayoutSwipeActionsProvider.trailingConfigurationProvider.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = (v0 + *(v1 + 120));
  swift_beginAccess();
  v3 = *v2;
  sub_1D7E19F24(*v2);
  return v3;
}

uint64_t BlueprintCompositionalListLayoutSwipeActionsProvider.trailingConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12();
  v6 = (v2 + *(v5 + 120));
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_1D7E0E10C(v7);
}

uint64_t (*BlueprintCompositionalListLayoutSwipeActionsProvider.trailingConfigurationProvider.modify())()
{
  OUTLINED_FUNCTION_12();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D80A8FFC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t BlueprintCompositionalListLayoutSwipeActionsProvider.delegate.getter()
{
  OUTLINED_FUNCTION_12();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void (*BlueprintCompositionalListLayoutSwipeActionsProvider.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_12();
  *(v5 + 40) = *(v4 + 128);
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D7F0D010;
}

uint64_t BlueprintCompositionalListLayoutSwipeActionsProvider.__allocating_init(blueprintProvider:)(char *a1)
{
  v2 = swift_allocObject();
  BlueprintCompositionalListLayoutSwipeActionsProvider.init(blueprintProvider:)(a1);
  return v2;
}

id sub_1D80A91EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(*a3 + 96);
  v4 = *a3;
  v29 = a3;
  v5 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v28 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for BlueprintItem();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v37[0] = v11;
  v37[1] = AssociatedTypeWitness;
  v37[2] = v12;
  v38 = AssociatedConformanceWitness;
  v13 = type metadata accessor for Blueprint();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  BlueprintProviderType.blueprint.getter(v5, v3);
  Blueprint.contains(indexPath:)();
  v18 = v17;
  v19 = *(v14 + 8);
  v19(v16, v13);
  if (v18)
  {
    BlueprintProviderType.blueprint.getter(v5, v3);
    v20 = v30;
    Blueprint.subscript.getter();
    v19(v16, v13);
    (*(v31 + 16))(v32, v20, AssociatedTypeWitness);
    sub_1D80A9FE8();
    if (swift_dynamicCast())
    {
      sub_1D7E17C84(v35, v37);
      v21 = v38;
      v22 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v23 = (*(v22 + 8))(v21, v22);
      if (v23)
      {
        v24 = v23;
        if (*(v23 + 16))
        {
          MEMORY[0x1EEE9AC00](v23);
          v25 = v29;
          *(&v28 - 2) = v20;
          *(&v28 - 1) = v25;
          sub_1D7FFB7A8(sub_1D80AA0F8, (&v28 - 4), v24);

          sub_1D7E0A1A8(0, &qword_1ECA0E660);
          v26 = sub_1D80A8CC4();
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
LABEL_11:
          (*(v33 + 8))(v20, v34);
          return v26;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v37);
    }

    else
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      sub_1D80AA044(v35);
    }

    sub_1D7E0A1A8(0, &qword_1ECA0E660);
    v26 = sub_1D80A8CC4();
    goto LABEL_11;
  }

  sub_1D7E0A1A8(0, &qword_1ECA0E660);
  return sub_1D80A8CC4();
}

uint64_t sub_1D80A9708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v36 = a4;
  v35 = a2;
  v37 = a1;
  v5 = *a3;
  v6 = type metadata accessor for BlueprintViewAction(0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = v5;
  v32 = *(v5 + 96);
  v31 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for BlueprintItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v30 = sub_1D7E0A1A8(0, &qword_1ECA0E668);
  v13 = v37;
  v29 = BlueprintViewAction.style.getter();
  v14 = BlueprintViewAction.title.getter();
  v27 = v15;
  v28 = v14;
  (*(v9 + 16))(v12, v35, v8);
  sub_1D7F9E1BC(v13, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v17 = (v10 + *(v33 + 80) + v16) & ~*(v33 + 80);
  v18 = swift_allocObject();
  v19 = v34;
  *(v18 + 2) = v31;
  *(v18 + 3) = *(v19 + 88);
  *(v18 + 4) = v32;
  *(v18 + 5) = *(v19 + 104);
  (*(v9 + 32))(&v18[v16], v12, v8);
  sub_1D7F9E368(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &v18[v17]);
  *&v18[(v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;

  v20 = sub_1D80A8AEC(v29, v28, v27, sub_1D80AA118, v18);
  v21 = BlueprintViewAction.attributes.getter();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 40);
    while (*v23)
    {
      if (*v23 == 1)
      {
        v24 = &selRef_setBackgroundColor_;
LABEL_7:
        [v20 *v24];
      }

      v23 += 16;
      if (!--v22)
      {
        goto LABEL_9;
      }
    }

    v24 = &selRef_setImage_;
    goto LABEL_7;
  }

LABEL_9:

  *v36 = v20;
  return result;
}

uint64_t sub_1D80A9A84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v32 = a4;
  v33 = a6;
  v30 = a2;
  v31 = a5;
  v34 = a3;
  v29 = *a7;
  v7 = v29[12];
  v8 = v29[10];
  v35[0] = swift_getAssociatedTypeWitness();
  v35[1] = swift_getAssociatedTypeWitness();
  v35[2] = swift_getAssociatedConformanceWitness();
  v35[3] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Blueprint();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for BlueprintViewAction.Action(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BlueprintItem();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  type metadata accessor for BlueprintViewActionRequest();
  v19 = v15;
  v20 = v30;
  (*(v16 + 16))(v18, v31, v19);
  v21 = v32;
  BlueprintViewAction.action.getter(v14);
  LOBYTE(v35[0]) = 2;
  v22 = swift_allocObject();
  *(v22 + 16) = v34;
  *(v22 + 24) = v21;
  v23 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v18, v14, v35, v20, sub_1D80AA2A4, v22);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {

    v24 = v20;
    BlueprintProviderType.blueprint.getter(v8, v7);
    (*(v29[13] + 72))(v11, v23, v29[11]);
    swift_unknownObjectRelease();

    return (*(v27 + 8))(v11, v28);
  }

  else
  {

    v26 = v20;
  }
}

uint64_t BlueprintCompositionalListLayoutSwipeActionsProvider.deinit()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_12();
  sub_1D7E0E10C(*(v0 + *(v3 + 120)));
  OUTLINED_FUNCTION_12();
  MEMORY[0x1DA715E30](v0 + *(v4 + 128));
  return v0;
}

uint64_t BlueprintCompositionalListLayoutSwipeActionsProvider.__deallocating_deinit()
{
  BlueprintCompositionalListLayoutSwipeActionsProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80A9FB8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_1D80A9FE8()
{
  result = qword_1EDBB0730;
  if (!qword_1EDBB0730)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB0730);
  }

  return result;
}

uint64_t sub_1D80AA044(uint64_t a1)
{
  sub_1D80AA0A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D80AA0A0()
{
  if (!qword_1ECA0E650)
  {
    sub_1D80A9FE8();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0E650);
    }
  }
}

uint64_t sub_1D80AA118(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_15_15(v9);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  v14 = type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_15_15(v14);
  v16 = v15;
  v18 = v17;
  v19 = (v11 + v13 + *(v16 + 80)) & ~*(v16 + 80);
  v20 = *(v4 + ((*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D80A9A84(a1, a2, a3, a4, v4 + v11, v4 + v19, v20);
}

uint64_t BlueprintTraversalCollectionProvider.collection.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_103();
  *a1 = *(v1 + 16);
  return sub_1D8190DB4();
}

uint64_t BlueprintTraversalCollectionProvider.collection.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t BlueprintTraversalCollectionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  BlueprintTraversalCollectionProvider.init()();
  return v0;
}

uint64_t BlueprintTraversalCollectionProvider.__deallocating_deinit()
{
  BlueprintTraversalCollectionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t BlueprintTraversalCollectionProvider<A>.traversableCollection.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_103();
  v3 = *(v1 + 16);
  a1[3] = type metadata accessor for BlueprintTraversalCollection();
  a1[4] = swift_getWitnessTable();
  *a1 = v3;
  return sub_1D8190DB4();
}

uint64_t BlueprintTraversalCollectionProvider<A>.contains(indexPath:)()
{
  OUTLINED_FUNCTION_0_103();
  type metadata accessor for BlueprintTraversalCollection();
  sub_1D8190DB4();
  v0 = BlueprintTraversalCollection.contains(indexPath:)();

  return v0 & 1;
}

uint64_t BlueprintLayoutPipelineProcessor.__allocating_init(layoutProvider:layoutOptionsProvider:layoutBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  BlueprintLayoutPipelineProcessor.init(layoutProvider:layoutOptionsProvider:layoutBuilder:)(a1, a2, a3, a4);
  return v8;
}

uint64_t BlueprintLayoutPipelineProcessor.init(layoutProvider:layoutOptionsProvider:layoutBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + *(*v4 + 136)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v8 + 32))(v4 + v9);
  OUTLINED_FUNCTION_12();
  v11 = (v4 + *(v10 + 120));
  *v11 = a2;
  v11[1] = a3;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v12 + 32))(v4 + v13, a4);
  return v4;
}

uint64_t BlueprintLayoutPipelineProcessor.add(layoutSubProcessor:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 136);
  swift_beginAccess();
  sub_1D7EE44D4();
  v6 = *(*(v1 + v5) + 16);
  sub_1D7EE46FC(v6);
  v7 = *(v1 + v5);
  *(v7 + 16) = v6 + 1;
  sub_1D7E0E768(a1, v7 + 40 * v6 + 32);
  *(v2 + v5) = v7;
  return swift_endAccess();
}

uint64_t BlueprintLayoutPipelineProcessor.deinit()
{
  OUTLINED_FUNCTION_48_0();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_12();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v3 + 8))(v0 + v4);
  OUTLINED_FUNCTION_12();

  return v0;
}

uint64_t BlueprintLayoutPipelineProcessor.__deallocating_deinit()
{
  BlueprintLayoutPipelineProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t BlueprintLayoutPipelineProcessor.process(blueprint:runOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[573] = v3;
  v4[572] = a3;
  v4[571] = a2;
  v4[570] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D80AA964, 0, 0);
}

uint64_t sub_1D80AA964()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[572];
  memcpy(v0 + 73, (v1 + 16), 0x235uLL);
  memcpy(v0 + 2, (v1 + 16), 0x235uLL);
  if (sub_1D7E648D4((v0 + 2)) == 1)
  {
    sub_1D8191534();
    v0[576] = sub_1D8191524();
    v3 = sub_1D81914D4();

    return MEMORY[0x1EEE6DFA0](sub_1D80AAC14, v3, v2);
  }

  else
  {
    memcpy(v0 + 428, v0 + 2, 0x235uLL);
    memcpy(v0 + 357, v0 + 73, 0x235uLL);
    sub_1D7E222B8((v0 + 357), (v0 + 499));
    v4 = swift_task_alloc();
    v0[574] = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_5_62(v4);

    return sub_1D80AAFA4(v5, v6, v0 + 428, v7);
  }
}

uint64_t sub_1D80AAAC0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_93();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 4600) = v0;

  if (v0)
  {
    v7 = sub_1D80AAEE4;
  }

  else
  {
    v7 = sub_1D80AABBC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D80AABBC()
{
  OUTLINED_FUNCTION_6();
  sub_1D7E52BA8(v0 + 584);
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D80AAC14()
{
  v1 = *(v0 + 4584);

  sub_1D80AB624(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D80AACC4, 0, 0);
}

uint64_t sub_1D80AACC4()
{
  OUTLINED_FUNCTION_6();
  memcpy(v0 + 215, v0 + 144, 0x235uLL);
  [objc_opt_self() setCurrentTraitCollection_];
  memcpy(v0 + 286, v0 + 215, 0x235uLL);
  v1 = swift_task_alloc();
  v0[577] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_62(v1);

  return sub_1D80AAFA4(v2, v3, v0 + 286, v4);
}

uint64_t sub_1D80AAD90()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_93();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 4624) = v0;

  if (v0)
  {
    v7 = sub_1D80AAF44;
  }

  else
  {
    v7 = sub_1D80AAE8C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D80AAE8C()
{
  OUTLINED_FUNCTION_6();
  sub_1D7E4C1A0(v0 + 1720);
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D80AAEE4()
{
  OUTLINED_FUNCTION_6();
  sub_1D7E52BA8(v0 + 584);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D80AAF44()
{
  OUTLINED_FUNCTION_6();
  sub_1D7E4C1A0(v0 + 1720);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D80AAFA4(uint64_t a1, uint64_t a2, void *__src, uint64_t a4)
{
  v5[378] = v4;
  v5[377] = a4;
  v5[376] = __src;
  v5[375] = a2;
  v5[374] = a1;
  v5[379] = *v4;
  memcpy(v5 + 154, __src, 0x235uLL);

  return MEMORY[0x1EEE6DFA0](sub_1D80AB050, 0, 0);
}

uint64_t sub_1D80AB050()
{
  v1 = v0[170];
  if ([v1 horizontalSizeClass] && objc_msgSend(v1, sel_verticalSizeClass))
  {
    v2 = v0[379];
    OUTLINED_FUNCTION_12();
    memcpy(v0 + 225, v3, 0x235uLL);
    v4 = *(v2 + 104);
    v0[380] = v4;
    v5 = *(v4 + 72);
    v6 = *(v2 + 88);
    v0[381] = v6;
    v13 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[382] = v7;
    *v7 = v0;
    v7[1] = sub_1D80AB254;
    v8 = v0[377];
    v9 = v0[375];

    return (v13)(v0 + 2, v9, v0 + 225, v8, v6, v4);
  }

  else
  {
    sub_1D7FE814C();
    swift_allocError();
    *v11 = 4;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 4;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1D80AB254()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_93();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 3064) = v0;

  if (v0)
  {
    v7 = sub_1D80AB60C;
  }

  else
  {
    v7 = sub_1D80AB350;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D80AB350()
{
  v1 = v0[381];
  v2 = v0[380];
  v3 = v0[379];
  v4 = v0[378];
  v20 = v0[375];
  v22 = v1;
  v23 = v0[374];
  v5 = *(*v4 + 136);
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = swift_task_alloc();
  v8 = *(v3 + 80);
  v7[2] = v8;
  v7[3] = v1;
  v9 = *(v3 + 96);
  v7[4] = v9;
  v7[5] = v2;
  v7[6] = v20;
  v7[7] = v0 + 2;
  v7[8] = v0 + 154;
  sub_1D8190DB4();
  v21 = sub_1D7E80474(sub_1D80ABEDC, v7, v6);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = OUTLINED_FUNCTION_8_47();
  v12 = OUTLINED_FUNCTION_8_47();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v0[367] = v11;
  v0[368] = v12;
  v0[369] = AssociatedConformanceWitness;
  v0[370] = v14;
  v15 = type metadata accessor for BlueprintLayout();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v0 + 78, v0 + 2, v15);
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = v22;
  v17[4] = v9;
  v17[5] = v2;
  v17[6] = v10;
  memcpy(v17 + 7, v0 + 78, 0x260uLL);
  memcpy(v17 + 83, v0 + 154, 0x235uLL);
  v17[154] = v21;
  *v23 = sub_1D80ABF14;
  v23[1] = v17;
  v23[2] = 0;
  v23[3] = 0;
  sub_1D7E222B8((v0 + 154), (v0 + 296));
  (*(v16 + 8))(v0 + 2, v15);
  OUTLINED_FUNCTION_5_37();

  return v18();
}

uint64_t sub_1D80AB624(uint64_t a1)
{
  v1 = *(a1 + *(*a1 + 120) + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1D80AB698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v6 = a1[4];
  v21 = a1[3];
  v19 = v6;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  memcpy(__dst, a4, 0x235uLL);
  v20 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = v20(a2, a3, __dst, AssociatedTypeWitness, v8, v9, v10, AssociatedConformanceWitness, v11, v12, v13, v21, v19);
  v16 = v15;
  result = swift_allocObject();
  *(result + 16) = v14;
  *(result + 24) = v16;
  *a5 = sub_1D7E74D6C;
  a5[1] = result;
  return result;
}

uint64_t sub_1D80AB8BC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a2;
  v11 = sub_1D818E794();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    (*(a7 + 48))(a5, a7);
    v38 = a3;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v39 = a4;
    v18 = AssociatedTypeWitness;
    v19 = swift_getAssociatedTypeWitness();
    v37 = v12;
    v20 = v19;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = v11;
    v22 = AssociatedConformanceWitness;
    v23 = swift_getAssociatedConformanceWitness();
    v42[0] = v18;
    v42[1] = v20;
    v42[2] = v22;
    v42[3] = v23;
    type metadata accessor for BlueprintLayout();
    sub_1D818F124();

    v24 = *(v16 + *(*v16 + 120) + 8);
    ObjectType = swift_getObjectType();
    (*(v24 + 16))(ObjectType, v24);
    sub_1D818E784();
    v26 = sub_1D818E764();
    v28 = v27;
    (*(v37 + 8))(v14, v36);
    v29 = v38;
    memcpy(&v43[2], v38, 0x235uLL);
    v43[0] = v26;
    v43[1] = v28;
    v30 = v39;
    nullsub_1(v43);
    memcpy(v42, v43, 0x245uLL);
    sub_1D7E222B8(v29, &v41);
    sub_1D818F124();

    memcpy(v44, v42, 0x245uLL);
    sub_1D8030088(v44);
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = v30 + 40;
      do
      {
        v33 = *(v32 - 8);

        v33(v34);

        v32 += 16;
        --v31;
      }

      while (v31);
    }
  }

  return result;
}

uint64_t sub_1D80ABBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D80ABC8C;

  return BlueprintLayoutPipelineProcessor.process(blueprint:runOptions:)(a1, a2, a3);
}

uint64_t sub_1D80ABC8C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D80ABDB0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D80ABFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

void KeyCommandManager.isEnabled.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_1D80AC050(v3);
}

void sub_1D80AC050(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    if (*(v1 + 16))
    {
      KeyCommandManager.invalidate(clearState:)(1);
    }

    else
    {
      swift_beginAccess();
      v3 = *(v1 + 64);
      v4 = sub_1D7E36AB8(v3);
      if (v4)
      {
        v5 = v4;
        if (v4 < 1)
        {
          __break(1u);
        }

        else
        {
          sub_1D8190DB4();
          for (i = 0; i != v5; ++i)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA714420](i, v3);
            }

            else
            {
            }

            KeyCommandHandlerRegistry.removeAll()();
          }
        }
      }
    }
  }
}

void (*KeyCommandManager.isEnabled.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_8_4();
  *(v3 + 32) = *(v1 + 16);
  return sub_1D80AC1B4;
}

void sub_1D80AC1B4(uint64_t a1)
{
  v1 = *a1;
  KeyCommandManager.isEnabled.setter(*(*a1 + 32));

  free(v1);
}

uint64_t KeyCommandManager.__allocating_init(providers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  KeyCommandManager.init(providers:)(a1);
  return v2;
}

Swift::Void __swiftcall KeyCommandManager.handle(keyCommand:)(UIKeyCommand keyCommand)
{
  OUTLINED_FUNCTION_0_177();
  v3 = *(v1 + 64);
  v4 = sub_1D7E36AB8(v3);
  sub_1D8190DB4();
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_10:

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA714420](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    v6 = KeyCommandHandlerRegistry.handle(keyCommand:)(keyCommand);

    ++v5;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

Swift::Bool __swiftcall KeyCommandManager.handle(key:flags:)(Swift::String key, __C::UIKeyModifierFlags flags)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  OUTLINED_FUNCTION_0_177();
  v6 = *(v2 + 64);
  v7 = sub_1D7E36AB8(v6);
  v8 = v6 & 0xC000000000000001;
  sub_1D8190DB4();
  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (v7 == v9)
    {
LABEL_9:

      return v7 != v10;
    }

    sub_1D7E33DD8(v9, v8 == 0, v6);

    if (__OFADD__(v10, 1))
    {
      break;
    }

    v12._countAndFlagsBits = countAndFlagsBits;
    v12._object = object;
    v13 = KeyCommandHandlerRegistry.handle(key:flags:)(v12, flags);

    v9 = v10 + 1;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t KeyCommandManager.keyCommands()()
{
  result = OUTLINED_FUNCTION_8_4();
  v2 = *(v0 + 64);
  if (v2 >> 62)
  {
    goto LABEL_45;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      if (v3 < 1)
      {
        __break(1u);
        return result;
      }

      v4 = v2 & 0xC000000000000001;
      sub_1D8190DB4();
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      v31 = v3;
      v32 = v2;
      v30 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v4)
        {
          MEMORY[0x1DA714420](v5, v2);
        }

        else
        {
        }

        v7 = KeyCommandHandlerRegistry.keyCommands()();
        v8 = v7;
        v9 = v7 >> 62;
        v10 = v7 >> 62 ? sub_1D81920A4() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = v6 >> 62;
        v12 = v6 >> 62 ? sub_1D81920A4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v35 = v10;
        v13 = __OFADD__(v12, v10);
        v14 = v12 + v10;
        if (v13)
        {
          break;
        }

        v33 = v5;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v11)
          {
            v15 = v6 & 0xFFFFFFFFFFFFFF8;
            if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }

LABEL_18:
          sub_1D81920A4();
          goto LABEL_19;
        }

        if (v11)
        {
          goto LABEL_18;
        }

LABEL_19:
        v6 = sub_1D8192224();
        v15 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v34 = v6;
        v16 = *(v15 + 16);
        v17 = (*(v15 + 24) >> 1) - v16;
        v18 = v15 + 8 * v16;
        if (v9)
        {
          v20 = sub_1D81920A4();
          if (v20)
          {
            v21 = v20;
            v22 = sub_1D81920A4();
            if (v17 < v22)
            {
              goto LABEL_42;
            }

            if (v21 < 1)
            {
              goto LABEL_44;
            }

            v19 = v22;
            v23 = v18 + 32;
            sub_1D80AC814();
            sub_1D80AC86C();
            for (i = 0; i != v21; ++i)
            {
              v25 = sub_1D7E49648(v36, i, v8);
              v27 = *v26;
              v25(v36, 0);
              *(v23 + 8 * i) = v27;
            }

            v3 = v31;
            v2 = v32;
            v4 = v30;
            goto LABEL_30;
          }
        }

        else
        {
          v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            if (v17 < v19)
            {
              goto LABEL_43;
            }

            sub_1D7E3DCA8();
            swift_arrayInitWithCopy();
LABEL_30:

            if (v19 < v35)
            {
              goto LABEL_40;
            }

            if (v19 > 0)
            {
              v28 = *(v15 + 16);
              v13 = __OFADD__(v28, v19);
              v29 = v28 + v19;
              if (v13)
              {
                goto LABEL_41;
              }

              *(v15 + 16) = v29;
            }

            goto LABEL_35;
          }
        }

        if (v35 > 0)
        {
          goto LABEL_40;
        }

LABEL_35:
        v5 = v33 + 1;

        v6 = v34;
        if (v33 + 1 == v3)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      result = sub_1D81920A4();
      v3 = result;
    }

    while (result);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t KeyCommandManager.deinit()
{
  sub_1D7E28A10(v0 + 24);

  MEMORY[0x1DA715E30](v0 + 72);
  return v0;
}

uint64_t KeyCommandManager.__deallocating_deinit()
{
  KeyCommandManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80AC7B0(uint64_t a1, uint64_t a2)
{
  sub_1D7E28940();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D80AC814()
{
  if (!qword_1ECA105A8)
  {
    sub_1D7E3DCA8();
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA105A8);
    }
  }
}

unint64_t sub_1D80AC86C()
{
  result = qword_1ECA105B0;
  if (!qword_1ECA105B0)
  {
    sub_1D80AC814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA105B0);
  }

  return result;
}

void sub_1D80AC914()
{
  v1 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_backdropView;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(TUBackdropView), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_image;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCAE0]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_titleLabel;
  *(v0 + v3) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_subtitleLabel;
  *(v0 + v4) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

char *sub_1D80ACA14()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_backdropView;
  *&v0[v2] = OUTLINED_FUNCTION_4(objc_allocWithZone(TUBackdropView), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_image;
  *&v0[v3] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCAE0]), sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_titleLabel;
  *&v0[v4] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v5 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_subtitleLabel;
  *&v0[v5] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_backdropView;
  v8 = *&v6[OBJC_IVAR____TtC5TeaUI16OverlayAlertView_backdropView];
  v9 = v6;
  [v9 addSubview_];
  v10 = [*&v6[v7] contentView];
  [v10 addSubview_];

  v11 = [*&v6[v7] contentView];
  v12 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_titleLabel;
  [v11 addSubview_];

  v13 = [*&v6[v7] contentView];
  v14 = OBJC_IVAR____TtC5TeaUI16OverlayAlertView_subtitleLabel;
  [v13 addSubview_];

  [*&v9[v12] setNumberOfLines_];
  [*&v9[v14] setNumberOfLines_];
  [v9 setUserInteractionEnabled_];

  return v9;
}

void sub_1D80ACCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x1E69E7CC0];
  v5 = sub_1D7E36AB8(a3);
  for (i = 0; v5 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA714420](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    sub_1D7F16C68();
    sub_1D7F078A4();
    v9 = v8;
    if (!swift_dynamicCast())
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      sub_1D7F07900(&v18);
LABEL_15:

      continue;
    }

    v10 = *(&v19 + 1);
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v12 = (*(v11 + 8))(v10, v11);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(&v18);
    if (v12 == a1 && v14 == a2)
    {
    }

    else
    {
      v16 = sub_1D8192634();

      if ((v16 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1D8192274();
    sub_1D81922B4();
    sub_1D81922C4();
    sub_1D8192284();
  }
}

uint64_t UINavigationItem.Side.hashValue.getter(char a1)
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a1 & 1);
  return sub_1D8192824();
}

uint64_t sub_1D80ACF60()
{
  v1 = *v0;
  sub_1D81927E4();
  UINavigationItem.Side.hash(into:)(v3, v1);
  return sub_1D8192824();
}

uint64_t UINavigationItem.barButtonItems(for:)(char a1)
{
  if (a1)
  {
    v2 = &selRef_rightBarButtonItems;
  }

  else
  {
    v2 = &selRef_leftBarButtonItems;
  }

  result = sub_1D80AD42C(v1, v2);
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void UINavigationItem.setBarButtonItems(for:items:)(char a1, uint64_t a2)
{
  v5 = [objc_opt_self() areAnimationsEnabled];
  if (a1)
  {
    v6 = &selRef_setRightBarButtonItems_animated_;
  }

  else
  {
    v6 = &selRef_setLeftBarButtonItems_animated_;
  }

  sub_1D80AD4F4(a2, v5, v2, v6);
  if ((sub_1D8190B24() & 1) == 0)
  {
    v7 = [v2 navigationBar];
    if (v7)
    {
      v8 = v7;
      sub_1D80AD488(a2, v7);
    }
  }
}

uint64_t UINavigationItem.barButtonItems(for:side:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = UINavigationItem.barButtonItems(for:)(a3 & 1);
  sub_1D80ACCEC(a1, a2, v5);
  v7 = v6;

  return v7;
}

void UINavigationItem.side(for:)(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = UINavigationItem.barButtonItems(for:)(0);
  v4 = sub_1D7E36AB8(v3);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      v24 = UINavigationItem.barButtonItems(for:)(1);
      v25 = sub_1D7E36AB8(v24);
      for (j = 0; v25 != j; ++j)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1DA714420](j, v24);
        }

        else
        {
          if (j >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v27 = *(v24 + 8 * j + 32);
        }

        v28 = v27;
        if (__OFADD__(j, 1))
        {
          goto LABEL_38;
        }

        v49 = v27;
        sub_1D7F16C68();
        sub_1D7F078A4();
        v29 = v28;
        v30 = swift_dynamicCast();
        if (v30)
        {
          v38 = *(&v51 + 1);
          v39 = v52;
          __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
          v40 = (*(v39 + 8))(v38, v39);
          v42 = v41;
          __swift_destroy_boxed_opaque_existential_1Tm(&v50);
          if (v40 == a1 && v42 == v47)
          {

            return;
          }

          v44 = sub_1D8192634();

          if (v44)
          {
            break;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_178(v30, v31, v32, v33, v34, v35, v36, v37, v45, v46, v47, v49, v50, v51, v52);
        }
      }

LABEL_29:

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA714420](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v48 = v6;
    sub_1D7F16C68();
    sub_1D7F078A4();
    v8 = v7;
    v9 = swift_dynamicCast();
    if (v9)
    {
      v17 = *(&v51 + 1);
      v18 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v19 = (*(v18 + 8))(v17, v18);
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(&v50);
      if (v19 == a1 && v21 == v47)
      {

        return;
      }

      v23 = sub_1D8192634();

      if (v23)
      {
        goto LABEL_29;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_178(v9, v10, v11, v12, v13, v14, v15, v16, v45, v46, v47, v48, v50, v51, v52);
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1D80AD42C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1D7F16C68();
  v4 = sub_1D8191314();

  return v4;
}

void sub_1D80AD488(uint64_t a1, void *a2)
{
  sub_1D7F16C68();
  v3 = sub_1D8191304();
  [a2 syncBarButtonItems_];
}

void sub_1D80AD4F4(uint64_t a1, char a2, void *a3, SEL *a4)
{
  sub_1D7F16C68();
  v7 = sub_1D8191304();
  [a3 *a4];
}

unint64_t sub_1D80AD574()
{
  result = qword_1ECA105D8;
  if (!qword_1ECA105D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA105D8);
  }

  return result;
}

_BYTE *_s4SideOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1D80AD6A4()
{
  type metadata accessor for Images();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDBAE828 = result;
  return result;
}

void sub_1D80AD6F8()
{
  v0 = [objc_opt_self() ts_disclosureIndicator];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  v3.is_nil = 0;
  isa = UIImage.with(tintColor:size:)(v1, v3).super.isa;

  qword_1ECA2C540 = isa;
}

id sub_1D80AD798(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1D8190EE4();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

id sub_1D80AD81C()
{
  sub_1D7E471D0();
  if (qword_1EDBAE820 != -1)
  {
    OUTLINED_FUNCTION_0_179();
  }

  v0 = qword_1EDBAE828;
  v1 = qword_1EDBAE828;
  result = sub_1D80AD798(0xD00000000000001BLL, 0x80000001D81D36F0, v0, 0);
  if (result)
  {
    qword_1EDBC5F80 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D80AD8FC()
{
  OUTLINED_FUNCTION_1_128();
  if (qword_1EDBAE820 != -1)
  {
    OUTLINED_FUNCTION_0_179();
  }

  v3 = qword_1EDBAE828;
  v4 = qword_1EDBAE828;
  v5 = sub_1D80AD798(v2, v1, v3, 0);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 imageWithRenderingMode_];

    *v0 = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D80AD9F0()
{
  result = [objc_opt_self() ts_macSidebar];
  qword_1EDBAE878 = result;
  return result;
}

id sub_1D80ADA50()
{
  sub_1D7E471D0();
  if (qword_1EDBAE820 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDBAE828;
  v1 = qword_1EDBAE828;
  result = sub_1D80AD798(0x726F6D2D6E6F6369, 0xEF776F7272612D65, v0, 0);
  if (result)
  {
    qword_1EDBAE860 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D80ADBA0()
{
  sub_1D7E471D0();
  result = sub_1D7E47238();
  if (result)
  {
    qword_1ECA105E0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D80ADC44()
{
  OUTLINED_FUNCTION_1_128();
  result = sub_1D7E47238();
  if (result)
  {
    *v0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D80ADC8C()
{
  sub_1D7E471D0();
  v0 = sub_1D7E47238();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 imageWithRenderingMode_];

    qword_1ECA105E8 = v2;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D80ADD28()
{
  sub_1D7E471D0();
  result = sub_1D7E47238();
  if (result)
  {
    qword_1ECA105F0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Images.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Images.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Images.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BarViewSeparator.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D80ADF4C()
{
  result = qword_1ECA105F8;
  if (!qword_1ECA105F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA105F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BarViewSeparator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

id DebugNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id DebugNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_0();
  ObjectType = swift_getObjectType();
  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    v6 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v6 = 0;
  }

  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v6);
}

id DebugNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id DebugNavigationController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id DebugNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_18_0();
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = sub_1D8190EE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id DebugNavigationController.init(coder:)()
{
  OUTLINED_FUNCTION_18_0();
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, v1);

  if (v2)
  {
  }

  return v2;
}

id DebugViewController.init(dataSource:settingsPresentable:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_18_0();
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC5TeaUI19DebugViewController_debugApp;
  v7 = [objc_opt_self() mainBundle];
  DebugBundle.init(bundle:)(&v3[v6], v7);
  v8 = OBJC_IVAR____TtC5TeaUI19DebugViewController_tableView;
  *&v3[v8] = OUTLINED_FUNCTION_3_6(objc_allocWithZone(MEMORY[0x1E69DD020]), sel_initWithFrame_style_);
  v9 = objc_allocWithZone(type metadata accessor for DebugTableViewSource());

  *&v3[OBJC_IVAR____TtC5TeaUI19DebugViewController_tableViewSource] = sub_1D816DAE0(v10);
  sub_1D7E0E768(a2, &v3[OBJC_IVAR____TtC5TeaUI19DebugViewController_settingsPresenter]);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

id DebugViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DebugViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI19DebugViewController_debugApp;
  v2 = [objc_opt_self() mainBundle];
  DebugBundle.init(bundle:)((v0 + v1), v2);
  v3 = OBJC_IVAR____TtC5TeaUI19DebugViewController_tableView;
  *(v0 + v3) = OUTLINED_FUNCTION_3_6(objc_allocWithZone(MEMORY[0x1E69DD020]), sel_initWithFrame_style_);
  OUTLINED_FUNCTION_0_180();
  __break(1u);
}

Swift::Void __swiftcall DebugViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v44.receiver = v0;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  sub_1D7FC8B88(0x6775626544, 0xE500000000000000, v0);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI19DebugViewController_settingsPresenter + 24];
  v3 = *&v0[OBJC_IVAR____TtC5TeaUI19DebugViewController_settingsPresenter + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC5TeaUI19DebugViewController_settingsPresenter], v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v4 = [v0 navigationItem];
    sub_1D7E71F64(0, &qword_1EDBB2BF0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D81A50A0;
    v42.version._object = ObjectType;
    v42.name._countAndFlagsBits = v0;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v6 = v0;
    *(v5 + 32) = sub_1D80AF378(0x73676E6974746553, 0xE800000000000000, 0, &v42, sel_doSettings);
    sub_1D7F2F7F8(v5, v4);
  }

  v7 = [v0 navigationItem];
  sub_1D7E71F64(0, &qword_1EDBB2BF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D81A50A0;
  v42.version._object = ObjectType;
  v42.name._countAndFlagsBits = v0;
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v9 = v0;
  *(v8 + 32) = sub_1D7FC8078(0, &v42, sel_doDone);
  sub_1D7F2F7EC(v8, v7);

  v10 = [v9 view];
  if (!v10)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = v10;
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor_];

  v13 = [v9 view];
  if (v13)
  {
    v14 = v13;
    [v13 addSubview_];

    v15 = *&v9[OBJC_IVAR____TtC5TeaUI19DebugViewController_debugApp + 24];
    v16 = *&v9[OBJC_IVAR____TtC5TeaUI19DebugViewController_debugApp + 32];
    v17 = *&v9[OBJC_IVAR____TtC5TeaUI19DebugViewController_debugApp + 40];
    v42.name._countAndFlagsBits = *&v9[OBJC_IVAR____TtC5TeaUI19DebugViewController_debugApp + 16];
    v42.name._object = v15;
    sub_1D8190DB4();
    MEMORY[0x1DA713260](10272, 0xE200000000000000);
    MEMORY[0x1DA713260](v16, v17);
    MEMORY[0x1DA713260](41, 0xE100000000000000);
    memset(&v42.version, 0, 32);
    v43 = 6;
    sub_1D816DA8C(0x6E6F6973726556, 0xE700000000000000, &v42);
    OUTLINED_FUNCTION_3_105();
    sub_1D7E71F64(0, &qword_1EDBB2C60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D81B7370;
    *(inited + 32) = 6382932;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = 1937204558;
    *(inited + 56) = 0xE400000000000000;
    *(inited + 64) = 0x736B636F7453;
    *(inited + 72) = 0xE600000000000000;
    *(inited + 80) = 0xD000000000000013;
    *(inited + 88) = 0x80000001D81D3780;
    *(inited + 96) = 0x72656874616557;
    *(inited + 104) = 0xE700000000000000;
    *(inited + 112) = 0x78656C6953;
    *(inited + 120) = 0xE500000000000000;
    strcpy((inited + 128), "AppAnalytics");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    v33 = inited;
    v19 = [objc_opt_self() allFrameworks];
    sub_1D80AF5B8();
    v20 = sub_1D8191314();

    v36 = v20;
    v38 = sub_1D7E36AB8(v20);
    if (!v38)
    {
LABEL_25:

      swift_setDeallocating();
      sub_1D810329C();
      sub_1D816DA04();
      return;
    }

    v21 = 0;
    v37 = v20 & 0xC000000000000001;
    v34 = v20 + 32;
    v35 = v20 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v37)
      {
        v22 = MEMORY[0x1DA714420](v21, v36);
      }

      else
      {
        if (v21 >= *(v35 + 16))
        {
          goto LABEL_27;
        }

        v22 = *(v34 + 8 * v21);
      }

      if (__OFADD__(v21++, 1))
      {
        break;
      }

      v24 = v22;
      DebugBundle.init(bundle:)(&v42, v24);
      countAndFlagsBits = v42.name._countAndFlagsBits;
      object = v42.name._object;
      v27 = v42.version._object;
      v28 = (v42.name._object >> 56) & 0xF;
      if ((v42.name._object & 0x2000000000000000) == 0)
      {
        v28 = v42.name._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        build = v42.build;
        v41 = v24;
        v39 = v42.version._countAndFlagsBits;
        if (qword_1ECA0C2E8 != -1)
        {
          swift_once();
        }

        sub_1D80AF5FC();
        sub_1D818EA44();
        if (v42.name._countAndFlagsBits)
        {
LABEL_21:
          v42.name._countAndFlagsBits = countAndFlagsBits;
          v42.name._object = object;
          v42.version._countAndFlagsBits = v39;
          v42.version._object = v27;
          v42.build = build;
          v43 = 9;
          sub_1D8190DB4();
          sub_1D8190DB4();
          sub_1D8190DB4();
          sub_1D816DA8C(countAndFlagsBits, object, &v42);

          OUTLINED_FUNCTION_3_105();
        }

        else
        {
          v29 = 8;
          v30 = v33 + 40;
          while (--v29)
          {
            v31 = v30 + 16;
            sub_1D8190FA4();
            sub_1D8190FA4();
            sub_1D8190DB4();
            v32 = sub_1D80AED6C();

            v30 = v31;
            if (v32)
            {
              goto LABEL_21;
            }
          }
        }
      }

      else
      {
      }

      if (v21 == v38)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1D80AED6C()
{
  sub_1D8190DB4();
  sub_1D8190DB4();
  do
  {
    while (1)
    {
      v0 = sub_1D8191074();
      if (!v1)
      {

        sub_1D8191074();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_1D8191074();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_1D8192634();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

Swift::Void __swiftcall DebugViewController.viewWillLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI19DebugViewController_tableView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D80AF048()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI19DebugViewController_settingsPresenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI19DebugViewController_settingsPresenter + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC5TeaUI19DebugViewController_settingsPresenter), v1);
  return (*(v2 + 16))(v0, v1, v2);
}

id sub_1D80AF23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v8 = sub_1D8190EE4();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a4, v8);

  return v9;
}

id sub_1D80AF2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v6 = sub_1D8190F14();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return sub_1D80AF23C(v6, v6, v8, a5);
}

id sub_1D80AF378(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_1D8190EE4();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    v12 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_1D8192614();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a4);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v6 initWithTitle:v10 style:a3 target:v17 action:a5];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_1D80AF4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 2:
    case 4:
    case 5:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
      goto LABEL_2;
    case 1:
    case 3:

LABEL_2:

    case 6:
      goto LABEL_7;
    case 9:

LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D80AF5B8()
{
  result = qword_1ECA10620;
  if (!qword_1ECA10620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA10620);
  }

  return result;
}

unint64_t sub_1D80AF5FC()
{
  result = qword_1ECA10628;
  if (!qword_1ECA10628)
  {
    type metadata accessor for DebugViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10628);
  }

  return result;
}

uint64_t TableViewCellViewLayout.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t TableViewCell.viewLayout.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EDBB1930;
  OUTLINED_FUNCTION_28();
  result = OUTLINED_FUNCTION_8_4();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t TableViewCell.viewLayout.setter(char *a1)
{
  v2 = *a1;
  v3 = qword_1EDBB1930;
  OUTLINED_FUNCTION_28();
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t TableViewCell.selectionBehavior.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = qword_1EDBB1920;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8_4();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_1D7F25F40(v4);
}

unint64_t sub_1D80AF8F0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDBB1920;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return sub_1D7F25F40(v5);
}

id sub_1D80AF94C(unint64_t *a1)
{
  v2 = *a1;
  sub_1D7F25F40(v2);
  return TableViewCell.selectionBehavior.setter(&v2);
}

id TableViewCell.selectionBehavior.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = qword_1EDBB1920;
  OUTLINED_FUNCTION_28();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_1D7E9B848(v4);
  return sub_1D80AF9E0();
}

id sub_1D80AF9E0()
{
  v1 = qword_1EDBB1920;
  swift_beginAccess();
  v12 = *&v0[v1];
  SelectionBehavior.style.getter(v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v4 = *&v0[qword_1EDBB1940];
  (*(v3 + 8))(v0, &protocol witness table for TableViewCell<A>, v4, v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  result = [v0 isSelected];
  if (result)
  {
    v12 = *&v0[v1];
    SelectionBehavior.style.getter(v9);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = [v0 isHighlighted];
    (*(v7 + 16))(1, v8, 0, *&v0[qword_1EDBB1918], v4, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return result;
}

id (*TableViewCell.selectionBehavior.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D80AFB7C;
}

id sub_1D80AFB7C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D80AF9E0();
  }

  return result;
}

id TableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[qword_1EDBB1930] = 1;
  v7 = qword_1EDBB1910;
  sub_1D7E40308();
  v9 = v8;
  *&v3[v7] = [objc_allocWithZone(v8) init];
  v10 = qword_1EDBB1938;
  *&v3[v10] = [objc_allocWithZone(v9) init];
  v11 = qword_1EDBB1928;
  *&v3[v11] = [objc_allocWithZone(v9) init];
  v12 = qword_1EDBB1940;
  v13 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *&v3[v12] = OUTLINED_FUNCTION_4(v13, sel_initWithFrame_);
  *&v3[qword_1EDBB1920] = 0x8000000000000008;
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v3[qword_1EDBB1918] = OUTLINED_FUNCTION_4(v14, sel_initWithFrame_);
  v15 = objc_allocWithZone(type metadata accessor for SeparatorView());
  *&v3[qword_1EDBB1908] = OUTLINED_FUNCTION_4(v15, sel_initWithFrame_);
  if (a3)
  {
    v16 = sub_1D8190EE4();
  }

  else
  {
    v16 = 0;
  }

  v27.receiver = v3;
  v27.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v27, sel_initWithStyle_reuseIdentifier_, a1, v16);

  v18 = *&v17[qword_1EDBB1940];
  v19 = qword_1EDBB2F78;
  v20 = v17;
  v21 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  [v21 setBackgroundColor_];

  v22 = [v20 contentView];
  [v22 addSubview_];

  v23 = *&v20[qword_1EDBB1908];
  v24 = v20;
  [v24 addSubview_];
  v25 = [objc_opt_self() systemBackgroundColor];
  [v24 setBackgroundColor_];

  [v24 setSeparatorInset_];
  return v24;
}

char *sub_1D80AFEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TableViewCell.init(coder:)()
{
  *(v0 + qword_1EDBB1930) = 1;
  v1 = qword_1EDBB1910;
  sub_1D7E40308();
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = qword_1EDBB1938;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  v5 = qword_1EDBB1928;
  *(v0 + v5) = [objc_allocWithZone(v3) init];
  v6 = qword_1EDBB1940;
  v7 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v6) = OUTLINED_FUNCTION_4(v7, sel_initWithFrame_);
  *(v0 + qword_1EDBB1920) = 0x8000000000000008;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall TableViewCell.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D818E7D4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_layoutSubviews, v3);
  v6 = qword_1EDBB1930;
  OUTLINED_FUNCTION_8_4();
  v7 = v0[v6];
  v8 = [v0 contentView];
  [v8 bounds];

  sub_1D818E7C4();
  type metadata accessor for RTLAdjuster();
  inited = swift_initStackObject();
  if (v7)
  {
    v10 = (inited + 2);
    inited[5] = v2;
    inited[6] = sub_1D7E4E9A0();
    __swift_allocate_boxed_opaque_existential_0(inited + 2);
    OUTLINED_FUNCTION_16_37();
    v11();
    v12 = OUTLINED_FUNCTION_6_70();
    v13(v12);
    sub_1D80B067C(inited, v0);
  }

  else
  {
    v10 = (inited + 2);
    inited[5] = v2;
    inited[6] = sub_1D7E4E9A0();
    __swift_allocate_boxed_opaque_existential_0(inited + 2);
    OUTLINED_FUNCTION_16_37();
    v14();
    v15 = OUTLINED_FUNCTION_6_70();
    v16(v15);
    sub_1D80B0498(inited, v0);
  }

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v17 = *&v0[qword_1EDBB1908];
  v18 = OBJC_IVAR____TtC5TeaUI13SeparatorView_layoutStyle;
  OUTLINED_FUNCTION_8_4();
  if (*(v17 + v18))
  {
    [v0 bounds];
    [v0 separatorInset];
    v36 = 1;
    v38.origin.x = OUTLINED_FUNCTION_8_0();
    v39 = SeparatorView.makeFrame(in:insets:anchor:)(v38, v40, v19);
    [v17 setFrame_];
  }

  else
  {
    OUTLINED_FUNCTION_21_29();
    OUTLINED_FUNCTION_21_29();
    v20 = [v0 contentView];
    v21 = [v20 readableContentGuide];

    [v21 layoutFrame];
    OUTLINED_FUNCTION_21_29();
    OUTLINED_FUNCTION_21_29();
    v22 = [v0 safeAreaLayoutGuide];
    [v22 layoutFrame];
    v24 = v23;
    v26 = v25;

    sub_1D818E7C4();
    v27 = swift_initStackObject();
    v27[5] = v2;
    v27[6] = sub_1D7E4E9A0();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27 + 2);
    (v35[2])(boxed_opaque_existential_0, v5, v2);
    v27[7] = 0;
    v27[8] = 0;
    v27[9] = v24;
    v27[10] = v26;
    (v35[1])(v5, v2);
    v29 = OUTLINED_FUNCTION_8_0();
    sub_1D80B08F0(v30, v31, v29, v32, v33, v34);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm((v27 + 2));
  }
}

id sub_1D80B0498(int a1, char *a2)
{
  v3 = *&a2[qword_1EDBB1918];
  v4 = [a2 contentView];
  v5 = [v4 readableContentGuide];

  [v5 layoutFrame];
  v7 = v6;

  v8 = [a2 readableContentGuide];
  [v8 layoutFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v42.origin.x = v10;
  v42.origin.y = v12;
  v42.size.width = v14;
  v42.size.height = v16;
  Width = CGRectGetWidth(v42);
  v18 = [a2 accessoryView];
  if (v18)
  {
    v19 = v18;
    [v18 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v43.origin.x = v21;
    v43.origin.y = v23;
    v43.size.width = v25;
    v43.size.height = v27;
    v28 = CGRectGetWidth(v43);
  }

  else
  {
    v28 = 0.0;
  }

  v29 = Width - v28;
  v30 = [a2 contentView];
  [v30 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v44.origin.x = v32;
  v44.origin.y = v34;
  v44.size.width = v36;
  v44.size.height = v38;
  v45.size.height = CGRectGetHeight(v44);
  v40 = 0;
  v45.origin.y = 0.0;
  v45.origin.x = v7;
  v45.size.width = v29;
  v46 = RTLAdjuster.frame(_:alignment:)(v45, &v40);

  return [v3 setFrame_];
}

id sub_1D80B067C(uint64_t a1, char *a2)
{
  if (RTLAdjuster.layoutDirection.getter() == 1 && [a2 isEditing])
  {
    v3 = *&a2[qword_1EDBB1918];
    v4 = [a2 contentView];
    v5 = [v4 readableContentGuide];

    [v5 layoutFrame];
    v7 = v6;

    [a2 layoutMargins];
    v9 = v7 + v8;
    v10 = [a2 readableContentGuide];
    [v10 layoutFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v54.origin.x = v12;
    v54.origin.y = v14;
    v54.size.width = v16;
    v54.size.height = v18;
    Width = CGRectGetWidth(v54);
    v20 = [a2 contentView];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v55.origin.x = v22;
    v55.origin.y = v24;
    v55.size.width = v26;
    v55.size.height = v28;
    Height = CGRectGetHeight(v55);
    v51 = 0;
    v30 = 0;
    v31 = &v51;
    v32 = v9;
    v33 = Width;
  }

  else
  {
    v3 = *&a2[qword_1EDBB1918];
    v34 = [a2 contentView];
    [v34 bounds];
    v36 = v35;
    v38 = v37;

    v39 = [a2 accessoryView];
    if (v39)
    {
      v40 = v39;
      [v39 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v56.origin.x = v42;
      v56.origin.y = v44;
      v56.size.width = v46;
      v56.size.height = v48;
      v49 = CGRectGetWidth(v56);
    }

    else
    {
      v49 = 0.0;
    }

    v33 = v36 - v49;
    v52 = 0;
    v32 = 0.0;
    v30 = 0;
    v31 = &v52;
    Height = v38;
  }

  v57 = RTLAdjuster.frame(_:alignment:)(*&v32, v31);

  return [v3 setFrame_];
}

id sub_1D80B08F0(int a1, char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = *&a2[qword_1EDBB1908];
  v11 = [a2 safeAreaLayoutGuide];
  [v11 layoutFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v22 = 1;
  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  v27.top = a3;
  v27.left = a4;
  v27.bottom = a5;
  v27.right = a6;
  v25 = SeparatorView.makeFrame(in:insets:anchor:)(v24, v27, &v22);
  v21 = 1;
  v26 = RTLAdjuster.frame(_:alignment:)(v25, &v21);

  return [v10 setFrame_];
}

void sub_1D80B09FC(void *a1)
{
  v1 = a1;
  TableViewCell.layoutSubviews()();
}

Swift::Void __swiftcall TableViewCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v0;

  v14 = *(v0 + qword_1EDBB1918);
  v5 = *((v3 & v2) + 0x50);
  sub_1D7E0631C(0, qword_1EDBBA428);
  v6 = v14;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D7E9DD24(v12, &qword_1EDBBA420, qword_1EDBBA428);
    goto LABEL_5;
  }

  sub_1D7E05450(v12, v15);
  v7 = v16;
  v8 = v17;
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v9 = (*(v8 + 24))(v12, v7, v8);
  if (*v10 != -1)
  {
    ++*v10;
    v9(v12, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
LABEL_5:
    v11.receiver = v0;
    v11.super_class = ObjectType;
    objc_msgSendSuper2(&v11, sel_prepareForReuse);
    [v0 setAccessoryView_];
    [v0 setAccessoryType_];
    v15[0] = 1;
    SeparatorView.visibilityStyle.setter(v15);
    *v15 = v6;
    (*(*(v4 + 88) + 16))(v5);

    return;
  }

  __break(1u);
}

void sub_1D80B0C9C(void *a1)
{
  v1 = a1;
  TableViewCell.prepareForReuse()();
}

Swift::Void __swiftcall TableViewCell.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  v4 = animated;
  v5 = _;
  ObjectType = swift_getObjectType();
  v7 = *v2;
  v8 = *MEMORY[0x1E69E7D40];
  v19.receiver = v3;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_setEditing_animated_, v5, v4);
  v16[0] = *&v3[qword_1EDBB1918];
  (*(*(*((v8 & v7) + 0x58) + 8) + 8))(v5, v4, *((v8 & v7) + 0x50));
  v9 = [v3 accessoryView];
  if (!v9 || (v16[0] = v9, sub_1D7E0A1A8(0, &qword_1EDBB2FC0), sub_1D7E0631C(0, &qword_1EDBAE688), (swift_dynamicCast() & 1) == 0))
  {
    OUTLINED_FUNCTION_2_9();
    goto LABEL_8;
  }

  if (!v15)
  {
LABEL_8:
    sub_1D7E9DD24(&v14, &qword_1EDBAE680, &qword_1EDBAE688);
    return;
  }

  sub_1D7E05450(&v14, v16);
  v10 = v17;
  v11 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if (((*(v11 + 24))(v10, v11) & 1) == 0)
  {
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v13 + 8))(v5, v4, v12, v13);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

void sub_1D80B0ED4(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  TableViewCell.setEditing(_:animated:)(a3, a4);
}

Swift::Void __swiftcall TableViewCell.setSelected(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v50.receiver = v2;
  v50.super_class = OUTLINED_FUNCTION_19_28();
  objc_msgSendSuper2(&v50, sel_setSelected_animated_, v4 & 1, v3 & 1);
  OUTLINED_FUNCTION_15_34();
  sub_1D7E0631C(0, qword_1EDBBB350);
  v5 = v4;
  if (OUTLINED_FUNCTION_9_35())
  {
    sub_1D7E05450(v47, v49);
    OUTLINED_FUNCTION_1_129();
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v8 = OUTLINED_FUNCTION_3_15();
    if (v9(v8))
    {
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_1_129();
      __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      v12 = OUTLINED_FUNCTION_5_63();
      v13(v12);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  else
  {
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    sub_1D7E9DD24(v47, &unk_1EDBBB340, qword_1EDBBB350);
  }

  if ([v4 isAccessibilityElement])
  {
    v14 = OUTLINED_FUNCTION_20_33();
    v15 = [v4 accessibilityTraits];
    if (v14)
    {
      v16 = *MEMORY[0x1E69DDA08] | v15;
    }

    else
    {
      v16 = v15 & ~*MEMORY[0x1E69DDA08];
    }

    [v4 setAccessibilityTraits_];
  }

  v17 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_17_29(v17, v18, v19, v20, v21, v22, v23, v24, v45);
  OUTLINED_FUNCTION_1_129();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  OUTLINED_FUNCTION_20_33();
  [v2 isHighlighted];
  v27 = OUTLINED_FUNCTION_7_59();
  v29 = v28(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  v30 = [v2 selectionStyle];
  v31 = *&v2[qword_1EDBB1908];
  v32 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
  if (v30)
  {
    OUTLINED_FUNCTION_4_75();
    v33 = v29 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_4_75();
    v33 = 0;
  }

  v32[v31] = v33;
  sub_1D806EB08();
  OUTLINED_FUNCTION_12_40(v34, v35, v36, v37, v38, v39, v40, v41, v46);
  OUTLINED_FUNCTION_1_129();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  if (v29)
  {
    (*(v32 + 4))(1, v4, *&v2[qword_1EDBB1940], v29, v32);
  }

  else
  {
    v44 = [v2 isHighlighted];
    (*(v32 + 2))(0, v44, 0, v4, *&v2[qword_1EDBB1940], v29, v32);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  OUTLINED_FUNCTION_20_33();
  sub_1D7E80824();
}

void sub_1D80B1230(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  TableViewCell.setSelected(_:animated:)(a3, a4);
}

Swift::Void __swiftcall TableViewCell.setHighlighted(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v48.receiver = v2;
  v48.super_class = OUTLINED_FUNCTION_19_28();
  objc_msgSendSuper2(&v48, sel_setHighlighted_animated_, v4 & 1, v3 & 1);
  OUTLINED_FUNCTION_15_34();
  sub_1D7E0631C(0, qword_1EDBBA0F0);
  v5 = v4;
  if (OUTLINED_FUNCTION_9_35())
  {
    sub_1D7E05450(v43, v45);
    OUTLINED_FUNCTION_1_129();
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v8 = OUTLINED_FUNCTION_3_15();
    if (v9(v8))
    {
      [v2 isHighlighted];
      OUTLINED_FUNCTION_1_129();
      __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
      v12 = OUTLINED_FUNCTION_5_63();
      v13(v12);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  else
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    sub_1D7E9DD24(v43, &unk_1EDBBA0E0, qword_1EDBBA0F0);
  }

  v14 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_17_29(v14, v15, v16, v17, v18, v19, v20, v21, v41);
  OUTLINED_FUNCTION_1_129();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  [v2 isSelected];
  [v2 isHighlighted];
  v24 = OUTLINED_FUNCTION_7_59();
  v26 = v25(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  v27 = [v2 selectionStyle];
  v28 = *&v2[qword_1EDBB1908];
  v29 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted;
  if (v27)
  {
    OUTLINED_FUNCTION_4_75();
    v30 = v26 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_4_75();
    v30 = 0;
  }

  *(v28 + v29) = v30;
  sub_1D806E9CC();
  OUTLINED_FUNCTION_12_40(v31, v32, v33, v34, v35, v36, v37, v38, v42);
  v39 = v46;
  v40 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  (*(v40 + 32))(v26 & 1, v4, *&v2[qword_1EDBB1940], v39, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  sub_1D7E80824();
}