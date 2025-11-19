uint64_t sub_1E3AB9A8C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel);
  OUTLINED_FUNCTION_5_0();
  if (v2[7])
  {
    memcpy(__dst, v2, sizeof(__dst));
    memcpy(v9, v2, sizeof(v9));
    memcpy(v8, v2, sizeof(v8));
    sub_1E3ABCEEC(v8, v6);
    v3 = sub_1E3AB7854();
    sub_1E325F6F0(__dst, &qword_1ECF322C8);
  }

  else
  {
    v3 = 0;
  }

  v4 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v4) = v3;

  if (v3)
  {
    return v3;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1E3AB9E3C()
{
  v1 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
  OUTLINED_FUNCTION_3_0();
  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel);
  OUTLINED_FUNCTION_3_0();
  memcpy(__dst, v2, sizeof(__dst));
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  *(v2 + 10) = 0;
  sub_1E325F6F0(__dst, &qword_1ECF322C8);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_preferredLayout);
  if (!v3)
  {
    OUTLINED_FUNCTION_8();
    v3 = (*(v4 + 392))();
  }

  v5 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_3_0();
  *(v0 + v5) = v3;

  sub_1E3AB9000();
  memcpy(v10, v2, sizeof(v10));
  memcpy(v2, __src, 0x58uLL);
  sub_1E325F6F0(v10, &qword_1ECF322C8);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v6, v7);
  sub_1E4200514();
  sub_1E4200594();
}

void sub_1E3ABA020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32310);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32318);
  v35 = OUTLINED_FUNCTION_17_2(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &a9 - v40;
  sub_1E3ABA218();

  v42 = j__OUTLINED_FUNCTION_18();
  sub_1E403C5C0(v23, v42 & 1, v33);
  *&v33[*(v27 + 44)] = 256;
  sub_1E3743538(v41, v38, &qword_1ECF32318);
  v43 = OUTLINED_FUNCTION_98();
  sub_1E3743538(v43, v44, &qword_1ECF32310);
  sub_1E3743538(v38, v25, &qword_1ECF32318);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32320);
  sub_1E3743538(v30, v25 + *(v45 + 48), &qword_1ECF32310);
  sub_1E325F6F0(v33, &qword_1ECF32310);
  sub_1E325F6F0(v41, &qword_1ECF32318);
  sub_1E325F6F0(v30, &qword_1ECF32310);
  sub_1E325F6F0(v38, &qword_1ECF32318);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ABA218()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32328);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32330);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32338);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = *v2;
  if (sub_1E373F6E0())
  {
    if (*(v15 + 24))
    {
      v16 = *(v15 + 16);
      v37 = *(v15 + 24);
    }

    else
    {
      v16 = 0;
      v37 = 0xE000000000000000;
    }

    v39 = v11;
    v40 = v5;

    v21 = sub_1E39DFFC0();
    v41 = v4;
    v38 = v7;
    if (v21)
    {
      v36 = v16;
      type metadata accessor for Card(0);
      type metadata accessor for CardViewInteractor(0);
      OUTLINED_FUNCTION_0_133();
      sub_1E3ABCEA4(v22, v23);
      v24 = sub_1E4200BC4();
      v25 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
      OUTLINED_FUNCTION_5_0();
      memcpy(v43, (v24 + v25), 0x58uLL);
      sub_1E3743538(v43, &v42, &qword_1ECF322C8);

      if (v43[7])
      {
        v26 = v43[1];

        sub_1E325F6F0(v43, &qword_1ECF322C8);
        if (v26)
        {
          OUTLINED_FUNCTION_8();
          (*(v27 + 392))();
        }
      }
    }

    v30 = nullsub_1(v28, v29);
    MEMORY[0x1EEE9AC00](v30);
    *(&v36 - 4) = v2;
    *(&v36 - 3) = v31;
    *(&v36 - 2) = v32;
    *(&v36 - 1) = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32350);
    sub_1E3ABD5C0();
    OUTLINED_FUNCTION_98();
    v34 = OUTLINED_FUNCTION_51_1();
    sub_1E40424BC(v15, v34 & 1, sub_1E3ABD540, v14);
    sub_1E3743538(v14, v10, &qword_1ECF32338);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_2();
    sub_1E32752B0(v35, &qword_1ECF32338);
    sub_1E3ABD344();
    sub_1E4201F44();

    v19 = v14;
    v20 = &qword_1ECF32338;
  }

  else
  {
    sub_1E3ABAE90();
    sub_1E3743538(v0, v10, &qword_1ECF32328);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_2();
    sub_1E32752B0(v17, v18);
    sub_1E3ABD344();
    sub_1E4201F44();
    v19 = OUTLINED_FUNCTION_32_0();
  }

  sub_1E325F6F0(v19, v20);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ABA6AC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v119 = v3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32358);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v110 = v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32360);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v117 = v7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32368);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_50_1();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32370);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v107 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32378);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v108 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v109 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  v113 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v104 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v103 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32318);
  v24 = OUTLINED_FUNCTION_17_2(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v114 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v103 - v28;
  type metadata accessor for Card(0);
  v112 = v2;
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v29, v30);
  v31 = OUTLINED_FUNCTION_18_53();
  v32 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0();
  v33 = *(v31 + v32);

  if (v33)
  {
    type metadata accessor for CardCollectionViewCellLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v34 + 1920))();
      OUTLINED_FUNCTION_26_0();
      v36 = (*(v35 + 504))();
      v103 = v0;
      v37 = v36;

      if (v37 != 18 && (sub_1E3A92050() & 1) != 0)
      {
        sub_1E3ABA218();
        v38 = sub_1E4201D54();
        v39 = OUTLINED_FUNCTION_18_53();
        v40 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
        OUTLINED_FUNCTION_5_0();
        v41 = *(v39 + v40);

        if (v41)
        {
          v42 = v107;
          sub_1E403E1F8(v41, v38, v107);
          OUTLINED_FUNCTION_46_26();
          v43 = v42;
          v44 = v104;
          sub_1E3741EA0(v43, v104, &qword_1ECF32370);
          v45 = 0;
        }

        else
        {
          v45 = 1;
          v38 = v111;
          v44 = v104;
        }

        __swift_storeEnumTagSinglePayload(v44, v45, 1, v38);
        OUTLINED_FUNCTION_19_1();
        sub_1E3741EA0(v83, v84, v85);
        v86 = v106;
        v87 = v114;
        sub_1E3743538(v106, v114, &qword_1ECF32318);
        OUTLINED_FUNCTION_19_1();
        sub_1E3743538(v88, v89, v90);
        v91 = v103;
        sub_1E3743538(v87, v103, &qword_1ECF32318);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32398);
        OUTLINED_FUNCTION_19_1();
        sub_1E3743538(v92, v93, v94);
        OUTLINED_FUNCTION_21_1();
        sub_1E325F6F0(v95, v96);
        sub_1E325F6F0(v87, &qword_1ECF32318);
        OUTLINED_FUNCTION_52_0();
        sub_1E3743538(v97, v98, v99);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_79();
        sub_1E32752B0(v100, &qword_1ECF32368);
        sub_1E32752B0(&qword_1ECF32390, &qword_1ECF32358);
        OUTLINED_FUNCTION_45_30();
        sub_1E325F6F0(v91, &qword_1ECF32368);
        OUTLINED_FUNCTION_21_1();
        sub_1E325F6F0(v101, v102);
        v81 = v86;
        v82 = &qword_1ECF32318;
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v46 = sub_1E4201D54();
  v47 = OUTLINED_FUNCTION_18_53();
  v48 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
  OUTLINED_FUNCTION_5_0();
  v49 = *(v47 + v48);

  if (v49)
  {
    v50 = v107;
    sub_1E403E1F8(v49, v46, v107);
    OUTLINED_FUNCTION_46_26();
    v51 = v108;
    sub_1E3741EA0(v50, v108, &qword_1ECF32370);
    v52 = 0;
  }

  else
  {
    v52 = 1;
    v48 = v111;
    v51 = v108;
  }

  __swift_storeEnumTagSinglePayload(v51, v52, 1, v48);
  v53 = v109;
  OUTLINED_FUNCTION_48_25();
  sub_1E3741EA0(v54, v55, v56);
  sub_1E3ABA218();
  v57 = v113;
  OUTLINED_FUNCTION_48_25();
  sub_1E3743538(v58, v59, v60);
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v61, v62, v63);
  v64 = v110;
  OUTLINED_FUNCTION_48_25();
  sub_1E3743538(v65, v66, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32380);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v68, v69, v70);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v71, v72);
  sub_1E325F6F0(v57, &qword_1ECF32378);
  sub_1E3743538(v64, v117, &qword_1ECF32358);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_11_79();
  sub_1E32752B0(v73, v74);
  OUTLINED_FUNCTION_50_22();
  sub_1E32752B0(v75, v76);
  OUTLINED_FUNCTION_45_30();
  OUTLINED_FUNCTION_50_22();
  sub_1E325F6F0(v77, v78);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v79, v80);
  v81 = v53;
  v82 = &qword_1ECF32378;
LABEL_12:
  sub_1E325F6F0(v81, v82);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ABAE90()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for ImageViewWithOverlay();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v54 = v9;
  type metadata accessor for Card(0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v10, v11);
  OUTLINED_FUNCTION_19_4();
  v12 = sub_1E4200BC4();
  v13 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v61, (v12 + v13), sizeof(v61));
  sub_1E3743538(v61, v68, &qword_1ECF322C8);

  if (!v61[7] || (v14 = v61[1], , sub_1E325F6F0(v61, &qword_1ECF322C8), !v14))
  {
    v17 = v2;
    v18 = 1;
LABEL_34:
    __swift_storeEnumTagSinglePayload(v17, v18, 1, v7);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v50 = v14;
  OUTLINED_FUNCTION_19_4();
  v15 = sub_1E4200BC4();
  v16 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v60, (v15 + v16), 0x58uLL);
  sub_1E3743538(v60, v68, &qword_1ECF322C8);

  v48 = v7;
  v49 = v2;
  if (v60[7])
  {
    v53 = v60[2];

    sub_1E325F6F0(v60, &qword_1ECF322C8);
  }

  else
  {
    v53 = 0;
  }

  memcpy(v68, (v0 + 8), 0x5BuLL);
  v19 = v68[10];
  v20 = v68[11];
  v21 = *(&v68[11] + 1);
  v22 = *(*v0 + 98);
  sub_1E375C2C0(v68, v64);
  if (sub_1E3ABB674(v22, &unk_1F5D6ECA8))
  {
    v19 = *sub_1E3E5FD24();
    sub_1E375C31C(v68);
  }

  if (sub_1E39DFFC0() & 1) != 0 && (sub_1E373F6E0())
  {
    v20 = 0;
  }

  memcpy(v63, (v0 + 8), 0x50uLL);
  v63[10] = v19;
  LOBYTE(v63[11]) = v20;
  *(&v63[11] + 1) = v21;
  memcpy(v64, (v0 + 8), sizeof(v64));
  v65 = v19;
  v66 = v20;
  v67 = v21;
  sub_1E375C2C0(v63, v62);
  sub_1E375C31C(v64);
  memcpy(v62, v63, 0x5BuLL);
  OUTLINED_FUNCTION_19_4();
  v23 = sub_1E4200BC4();
  v24 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v63, (v23 + v24), 0x58uLL);
  sub_1E3743538(v63, v68, &qword_1ECF322C8);

  v25 = v63[7];
  if (v63[7])
  {
    v26 = v63[8];
    v27 = v63[6];

    sub_1E325F6F0(v63, &qword_1ECF322C8);
    v51 = v27;
    v52 = v25;
    v57 = v27;
    v58 = v25;
    v59 = v26 & 1;
  }

  else
  {
    LOBYTE(v68[0]) = 0;
    sub_1E4203AD4();
    v51 = v57;
    v52 = v58;
    v26 = v59;
  }

  OUTLINED_FUNCTION_19_4();
  v28 = sub_1E4200BC4();
  v29 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v56, (v28 + v29), 0x58uLL);
  sub_1E3743538(v56, v68, &qword_1ECF322C8);

  if (v56[7])
  {
    v30 = v56[5];
    sub_1E325F6F0(v56, &qword_1ECF322C8);
  }

  else
  {
    v30 = 0;
  }

  sub_1E375C2C0(v62, v68);

  sub_1E3FB1C2C(v50, v62, v53, 0, v30 & 1, v51, v52, v26 & 1, v6, 0, 0);
  v31 = sub_1E4200BC4();
  v32 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v68, (v31 + v32), 0x58uLL);
  sub_1E3743538(v68, v64, &qword_1ECF322C8);

  if (!v68[7])
  {
    v7 = v48;
    goto LABEL_29;
  }

  v33 = v68[1];

  sub_1E325F6F0(v68, &qword_1ECF322C8);
  v7 = v48;
  if (!v33)
  {
LABEL_29:
    v37 = v49;
LABEL_33:
    sub_1E3ABCEA4(qword_1EE26CB60, type metadata accessor for ImageViewWithOverlay);
    sub_1E4202ED4();

    sub_1E375C31C(v62);

    sub_1E3ABD6A0(v6);
    *(v54 + *(v7 + 36)) = 256;
    sub_1E3741EA0(v54, v37, &qword_1ECF32340);
    v17 = v37;
    v18 = 0;
    goto LABEL_34;
  }

  v34 = sub_1E4200BC4();
  v35 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
  OUTLINED_FUNCTION_5_0();
  v36 = *(v34 + v35);

  v37 = v49;
  if (!v36)
  {
    goto LABEL_32;
  }

  type metadata accessor for ImageViewModel();
  v38 = swift_dynamicCastClass();
  if (!v38 || (v39 = *(*v38 + 904), v40 = , v55 = v39(v40), v42 = v41, , !v42))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  v43 = 0;
  v44 = *(v36 + 16);
  while (1)
  {
    if (v44 == v43)
    {
LABEL_27:

      v7 = v48;
      v37 = v49;
      goto LABEL_31;
    }

    if (v43 >= *(v36 + 16))
    {
      break;
    }

    v45 = v43 + 1;

    v68[14] = sub_1E403C3DC();
    v68[15] = v46;
    v68[12] = v55;
    v68[13] = v42;
    sub_1E32822E0();
    v47 = sub_1E4207254();

    v43 = v45;
    if (v47)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

BOOL sub_1E3ABB674(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 2;
    sub_1E3741534();
  }

  while ((sub_1E4205E84() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1E3ABB6F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;
  OUTLINED_FUNCTION_5_0();
  if (dynamic_cast_existential_1_conditional(*(v1 + v2)))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);

    v6(ObjectType, v4);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322E0);
    sub_1E32752B0(&qword_1ECF322E8, &qword_1ECF322E0);
    sub_1E4200844();
    OUTLINED_FUNCTION_31_4();

    *(&v10 + 1) = sub_1E42004F4();
    v11 = MEMORY[0x1E695BF08];

    *&v9 = &v9;
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  v7 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_lockupUpdatingObserver;
  swift_beginAccess();
  sub_1E3ABD288(&v9, v1 + v7);
  return swift_endAccess();
}

uint64_t sub_1E3ABB8CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;

  OUTLINED_FUNCTION_5_0();
  if (*(v1 + v5) != v4)
  {
    sub_1E3ABB6F8();
  }
}

uint64_t sub_1E3ABB958(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel) = 0;
  v7 = v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_lockupUpdatingObserver;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  *(v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout) = 0;
  v9 = v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel) = a1;
  if (a3)
  {

    v10 = a3;
  }

  else
  {
    v11 = *(*a1 + 392);

    v10 = v11(v12);
  }

  OUTLINED_FUNCTION_3_0();
  *(v4 + v8) = v10;

  memcpy((v4 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext), a2, 0xC3uLL);
  *(v4 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_preferredLayout) = a3;

  sub_1E375C1CC(a2, &v15);
  v13 = sub_1E3B500B4();

  sub_1E3ABB6F8();

  sub_1E37E6F2C(a2);

  return v13;
}

void sub_1E3ABBAE8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v9, v2);

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    v14 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;
    OUTLINED_FUNCTION_5_0();
    v15 = *(v1 + v14);
    if (*(v15 + 24))
    {
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
    }

    else
    {
      v17 = 0xE400000000000000;
      v16 = 1819047278;
    }

    v18 = sub_1E3270FC8(v16, v17, v22);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v10, v11, "CardViewInteractor:: LockupUpdating handleViewModelChanged id: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E69143B0](v13, -1, -1);
    MEMORY[0x1E69143B0](v12, -1, -1);

    (*(v4 + 8))(v8, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_5_0();

  sub_1E3AB9000(v22, v19, 1);

  sub_1E3ABC8B4(v22);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v20, v21);
  sub_1E4200514();
  sub_1E4200594();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3ABBD98(unsigned __int16 *a1, uint64_t a2, char a3, void *a4, uint64_t *a5)
{
  v10 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  v11 = OUTLINED_FUNCTION_5_0();
  v12 = *(a2 + v10);
  if (v12 && (v13 = *(*v12 + 1624), v14 = a1[49], , v15 = v13(v14, a1), v11 = , v15) || (*(*a1 + 392))(v11))
  {
    type metadata accessor for TextLayout();
    if (!swift_dynamicCastClass())
    {
    }
  }

  if (*a1 == _TtC8VideosUI13TextViewModel)
  {
    if ((a3 & 1) != 0 || *(a2 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext + 178) == 3)
    {
      OUTLINED_FUNCTION_14_89();
      OUTLINED_FUNCTION_56_19();

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0);
      OUTLINED_FUNCTION_25_48(v16, v17, v16, v18, v19, v20, v21, v22, v63);

      OUTLINED_FUNCTION_12_74();
      *a5 = v64;

      type metadata accessor for RichTextViewModel(0);

      sub_1E3AF46D0();
      sub_1E3AF46DC();
      OUTLINED_FUNCTION_50_22();
      v27 = sub_1E3AF46E0(v23, v24, v25, v26, 0, 1);
      OUTLINED_FUNCTION_15_78();
      if (*a5)
      {

        sub_1E3ABC534();
        v28 = OUTLINED_FUNCTION_55_22(*a5);
        sub_1E3ABC580(v28);
        OUTLINED_FUNCTION_54_17();
        *(v29 + 32) = v27;
        *a5 = v30;
      }

      swift_endAccess();
    }
  }

  else if (*a1 == _TtC8VideosUI31LibDownloadingEpisodesViewModel)
  {
    type metadata accessor for RichTextViewModel(0);

    swift_retain_n();
    sub_1E3AF46D0();
    sub_1E3AF73A8();
    sub_1E3AF4B30();
    if (v31)
    {
      v32 = v31;
      OUTLINED_FUNCTION_14_89();
      OUTLINED_FUNCTION_56_19();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0);
      OUTLINED_FUNCTION_25_48(v33, v34, v33, v35, v36, v37, v38, v39, v63);

      OUTLINED_FUNCTION_12_74();
      *a5 = v65;

      OUTLINED_FUNCTION_15_78();
      if (*a5)
      {

        sub_1E3ABC534();
        v40 = OUTLINED_FUNCTION_55_22(*a5);
        sub_1E3ABC580(v40);
        OUTLINED_FUNCTION_54_17();
        *(v41 + 32) = v32;
        *a5 = v42;
      }

      swift_endAccess();

      goto LABEL_23;
    }
  }

  if (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_14_89();
    v43 = a4 + 5;

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0);
    OUTLINED_FUNCTION_25_48(v44, v45, v44, v46, v47, v48, v49, v50, v63);

    OUTLINED_FUNCTION_12_74();
    a4[5] = v66;

    type metadata accessor for MediaTagsViewModel();
    v51 = a5;

    v53 = sub_1E403C2C0(v52, a5);
    OUTLINED_FUNCTION_15_78();
    if (a4[5])
    {

      sub_1E3ABC534();
      v54 = OUTLINED_FUNCTION_55_22(*v43);
      sub_1E3ABC580(v54);
      v55 = *v43;
      *(v55 + 16) = a4 + 1;
      *(v55 + 8 * a4 + 32) = v53 | 0x8000000000000000;
      *v43 = v55;
    }

    swift_endAccess();
LABEL_23:
  }

  type metadata accessor for ImageViewModel();
  v57 = swift_dynamicCastClass();
  if (v57)
  {
    v58 = v57;

    v59 = sub_1E373F6E0();

    if (v59)
    {
      OUTLINED_FUNCTION_13_83();
      a4[3] = v58;
    }
  }

  if (sub_1E3850584())
  {

    OUTLINED_FUNCTION_13_83();
    a4[4] = a1;
LABEL_34:
  }

  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {

    OUTLINED_FUNCTION_13_83();
    a4[11] = a1;
    goto LABEL_34;
  }

  if (sub_1E373F6E0())
  {

    OUTLINED_FUNCTION_13_83();
    a4[12] = a1;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_14_89();
  v60 = a4 + 6;
  if (!a4[6])
  {
    OUTLINED_FUNCTION_12_74();
    *v60 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_78();

  MEMORY[0x1E6910BF0](v61);
  v62 = OUTLINED_FUNCTION_55_22(*v60 & 0xFFFFFFFFFFFFFF8);
  sub_1E38C5A18(v62);
  sub_1E4206324();
  swift_endAccess();
}

uint64_t sub_1E3ABC36C()
{

  memcpy(__dst, (v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext), 0xC3uLL);
  sub_1E37E6F2C(__dst);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_lockupUpdatingObserver, &qword_1ECF322D8);

  return OUTLINED_FUNCTION_22_45((v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel));
}

uint64_t sub_1E3ABC41C()
{
  v0 = sub_1E3B4FF80();

  memcpy(__dst, (v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext), 0xC3uLL);
  sub_1E37E6F2C(__dst);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_lockupUpdatingObserver, &qword_1ECF322D8);

  OUTLINED_FUNCTION_22_45((v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel));
  return v0;
}

uint64_t sub_1E3ABC4E0()
{
  v0 = sub_1E3ABC41C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1E3ABC534()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3ABC5C0(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E3ABC580(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3ABC5C0((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1E3ABC5C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3ABC6C8(char *a1, int64_t a2, char a3)
{
  result = sub_1E3ABC6E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3ABC6E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3ABC810()
{
  v1 = v0[2];
  v2 = v0[28];
  type metadata accessor for CardViewInteractor(0);
  swift_allocObject();

  sub_1E375C1CC((v0 + 3), v4);

  return sub_1E3ABB958(v1, v0 + 3, v2);
}

unint64_t sub_1E3ABC8E4()
{
  result = qword_1EE288D88;
  if (!qword_1EE288D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32280);
    sub_1E32752B0(&qword_1EE288470, &qword_1ECF322B0);
    sub_1E32752B0(&qword_1EE288540, &qword_1ECF322B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D88);
  }

  return result;
}

unint64_t sub_1E3ABC9C4()
{
  result = qword_1EE289988;
  if (!qword_1EE289988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32280);
    sub_1E3ABC8E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289988);
  }

  return result;
}

uint64_t sub_1E3ABCAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Card(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3ABCB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Card(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3ABCB98()
{
  v0 = type metadata accessor for Card(0);
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v1, v2);
  OUTLINED_FUNCTION_32_0();
  sub_1E4200BC4();
  sub_1E3AB9E3C();
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = type metadata accessor for Card(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E3ABCDC0()
{
  v0 = type metadata accessor for Card(0);
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v1, v2);
  sub_1E4200BC4();
  sub_1E3AB9E3C();
}

uint64_t sub_1E3ABCEA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3ABCF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
  }

  return result;
}

uint64_t sub_1E3ABCFE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1E3ABD020(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

void sub_1E3ABD0AC()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E38D5D68();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel();
      if (v2 <= 0x3F)
      {
        sub_1E3ABD168();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3ABD168()
{
  if (!qword_1EE289E60)
  {
    type metadata accessor for CardViewInteractor(255);
    sub_1E3ABCEA4(&qword_1EE2792F8, type metadata accessor for CardViewInteractor);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E60);
    }
  }
}

uint64_t sub_1E3ABD288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3ABD2F8()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3ABBAE8();
  }

  return result;
}

unint64_t sub_1E3ABD344()
{
  result = qword_1EE2896B0;
  if (!qword_1EE2896B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32328);
    sub_1E3ABD3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896B0);
  }

  return result;
}

unint64_t sub_1E3ABD3C8()
{
  result = qword_1EE2896B8;
  if (!qword_1EE2896B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32340);
    sub_1E3ABD454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896B8);
  }

  return result;
}

unint64_t sub_1E3ABD454()
{
  result = qword_1EE289BB0;
  if (!qword_1EE289BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32348);
    sub_1E3ABCEA4(qword_1EE26CB60, type metadata accessor for ImageViewWithOverlay);
    sub_1E3ABCEA4(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BB0);
  }

  return result;
}

uint64_t sub_1E3ABD540@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_1E3ABAE90();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32350) + 36));
  *v6 = v3;
  v6[1] = v4;
  v6[2] = v5;
}

unint64_t sub_1E3ABD5C0()
{
  result = qword_1EE2894E8;
  if (!qword_1EE2894E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32350);
    sub_1E3ABD344();
    sub_1E3ABD64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894E8);
  }

  return result;
}

unint64_t sub_1E3ABD64C()
{
  result = qword_1EE24E8E8[0];
  if (!qword_1EE24E8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE24E8E8);
  }

  return result;
}

uint64_t sub_1E3ABD6A0(uint64_t a1)
{
  v2 = type metadata accessor for ImageViewWithOverlay();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_56_19()
{
}

uint64_t sub_1E3ABD728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_1E41FE414();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E3ABD7EC, 0, 0);
}

uint64_t sub_1E3ABD7EC()
{
  type metadata accessor for VUIJetPackController();
  v1 = [objc_opt_self() standardUserDefaults];
  static VUIJetPackController.controller(bagKey:defaults:urlOverrideDefaultKey:)();
  v0[25] = v2;

  v3 = VUIJetPackController.getJetPackURL()();
  v0[26] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E3ABD980;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF323A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E3ABDE1C;
  v0[13] = &block_descriptor_53;
  v0[14] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E3ABD980()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1E3ABDD94;
  }

  else
  {
    v2 = sub_1E3ABDA90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E3ABDA90()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v8 = *(v0 + 152);
  v4 = *(v0 + 144);
  (*(*(v0 + 184) + 16))(v2, v4 + OBJC_IVAR____TtC8VideosUI13VUIJetPackURL_url, *(v0 + 176));

  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v8;
  *(v5 + 40) = v3;
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_1E3ABDBBC;

  return sub_1E3ABE118(sub_1E3ABE08C, v5);
}

void sub_1E3ABDBBC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 240) = a1;

    MEMORY[0x1EEE6DFA0](sub_1E3ABDD00, 0, 0);
  }
}

uint64_t sub_1E3ABDD00()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 240);

  return v4(v5);
}

uint64_t sub_1E3ABDD94()
{
  v1 = v0[26];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t *sub_1E3ABDE1C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1E3ABDEAC(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1E3ABDF18(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3ABDEAC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

id sub_1E3ABDF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14, a1);
  sub_1E38B2468(a2, v12);
  objc_allocWithZone(type metadata accessor for TVExtension());
  swift_unknownObjectRetain();
  result = sub_1E3ABE288(v16, v12, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1E3ABE118(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E3ABE138, 0, 0);
}

uint64_t sub_1E3ABE138()
{
  sub_1E4206434();
  *(v0 + 40) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3ABE1C8, v2, v1);
}

uint64_t sub_1E3ABE1C8()
{
  v1 = v0[3];

  v1(v2);
  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

id sub_1E3ABE288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC8VideosUI11TVExtension_url;
  v9 = sub_1E41FE414();
  __swift_storeEnumTagSinglePayload(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtC8VideosUI11TVExtension_delegate];
  *&v4[OBJC_IVAR____TtC8VideosUI11TVExtension_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = *(v9 - 8);
  (*(v11 + 16))(&v4[OBJC_IVAR____TtC8VideosUI11TVExtension_jetPackURL], a1, v9);
  swift_beginAccess();
  sub_1E38DAA9C(a2, &v4[v8]);
  swift_endAccess();
  *(v10 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TVExtension();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  swift_unknownObjectRelease();
  sub_1E3ABE43C(a2);
  (*(v11 + 8))(a1, v9);
  return v12;
}

uint64_t type metadata accessor for TVExtension()
{
  result = qword_1ECF554A0;
  if (!qword_1ECF554A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3ABE43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E3ABE4E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3ABE5AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *&v35[0] = 0x6E6F697461636F6CLL;
  *(&v35[0] + 1) = 0xE800000000000000;
  v13 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  v14 = [v1 appJSURL];
  sub_1E41FE3C4();

  v15 = sub_1E41FE314();
  v17 = v16;
  (*(v7 + 8))(v11, v5);
  *(inited + 96) = v13;
  *(inited + 72) = v15;
  *(inited + 80) = v17;
  v18 = sub_1E4205CB4();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v20 = sub_1E3ABF258(result);
    if (v20)
    {
      v21 = v20;
      if (*(v20 + 16))
      {
        strcpy(v34, "featureFlags");
        BYTE13(v34[0]) = 0;
        HIWORD(v34[0]) = -5120;
        sub_1E4207414();
        *(&v34[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
        *&v34[0] = v21;
        sub_1E329504C(v34, v33);
        swift_isUniquelyReferenced_nonNull_native();
        *&v36[0] = v18;
        sub_1E377DF14(v33, v35);
        v18 = *&v36[0];
        sub_1E375D84C(v35);
      }

      else
      {
      }
    }

    v22 = OBJC_IVAR____TtC8VideosUI11TVExtension_url;
    swift_beginAccess();
    sub_1E38B2468(v1 + v22, v4);
    v23 = static AppConfig.createAppConfiguration(url:)(v4);
    v25 = v24;
    sub_1E3ABE43C(v4);
    v36[0] = xmmword_1E4297170;
    memset(&v36[1], 0, 32);
    TVExtensionConfig.init(askToBuy:appConfig:)(v36, v23, v25, v35);
    if (*(&v35[0] + 1) != 1)
    {
      v34[1] = v35[1];
      v34[2] = v35[2];
      v34[3] = v35[3];
      v34[4] = v35[4];
      v34[0] = v35[0];
      sub_1E3A60F3C();
      v26 = sub_1E3BFE88C();
      memcpy(v33, v34, sizeof(v33));
      sub_1E3A60F90(v33);
      if (v26)
      {
        *&v30 = 0xD000000000000011;
        *(&v30 + 1) = 0x80000001E426FEE0;
        sub_1E4207414();
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        *&v30 = v26;
        sub_1E329504C(&v30, v29);
        swift_isUniquelyReferenced_nonNull_native();
        v28 = v18;
        sub_1E377DF14(v29, v32);
        v18 = v28;
        sub_1E375D84C(v32);
      }
    }

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3ABEA54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI11TVExtension_jetPackURL;
  v4 = sub_1E41FE414();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1E3ABEB9C()
{
  v0 = [objc_opt_self() sharedUserDefaults];

  return v0;
}

uint64_t sub_1E3ABEC20()
{
  v0 = [objc_opt_self() mainBundle];

  return sub_1E3ABF2D0(v0);
}

void sub_1E3ABECDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = sub_1E41FE364();
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v13[4] = sub_1E3ABF340;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E3ABEE38;
  v13[3] = &block_descriptor_8_1;
  v12 = _Block_copy(v13);

  [v8 fetchAppJavascript:v9 cachePolicy:a3 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_1E3ABEE38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1E4205F14();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a3;
  v6(v7, v9, a3, a4);
}

void sub_1E3ABF020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_1E4205ED4();
    if (a3)
    {
LABEL_3:
      v8 = sub_1E41FE264();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

uint64_t sub_1E3ABF0B8()
{
  type metadata accessor for VideosUI();
  v0 = OUTLINED_FUNCTION_50();
  return static VideosUI.initializeJSContext(_:)(v0);
}

uint64_t sub_1E3ABF158(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI11TVExtension_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E3ABF258(void *a1)
{
  v2 = [a1 osFeatureFlagsJSON];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3ABF2D0(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3ABF340(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + 24);
  if (!a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = Strong + OBJC_IVAR____TtC8VideosUI11TVExtension_delegate;
      v14 = swift_unknownObjectWeakLoadStrong();
      v15 = *(v13 + 8);

      if (v14)
      {
        ObjectType = swift_getObjectType();
        sub_1E3A609B8();
        v16 = swift_allocError();
        *v17 = a3;
        v18 = *(v15 + 32);
        v19 = a3;
        v18(v16, ObjectType, v15);
        swift_unknownObjectRelease();
      }
    }
  }

  return v9(a1, a2, a3, a4);
}

uint64_t block_copy_helper_6_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1E3ABF494()
{
  sub_1E41FE414();
  if (v0 <= 0x3F)
  {
    sub_1E3286EF4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if (a2)
  {
    v7 = a2;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_3:
    for (i = v4; ; i = v5)
    {
      v16 = v5;
      v17 = v4;
      [v7 ensureLayoutForTextContainer_];
      v32 = i;

      v18 = [v3 fullRange];
      v33 = [v7 glyphRangeForCharacterRange:v18 actualCharacterRange:{v19, 0}];
      v21 = v20;
      v4 = swift_allocObject();
      v4[2] = 0;
      v5 = swift_allocObject();
      v5[2] = sub_1E41FDD54();
      v22 = v5 + 2;
      v5[3] = 0;
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 1;
      v24 = swift_allocObject();
      v24[2] = v4;
      v24[3] = a1;
      v24[4] = v5;
      v24[5] = v7;
      v24[6] = v23;
      aBlock[4] = sub_1E3ABFB14;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E3ABF9AC;
      aBlock[3] = &block_descriptor_54;
      v3 = _Block_copy(aBlock);
      v25 = v7;

      [v25 enumerateLineFragmentsForGlyphRange:v33 usingBlock:{v21, v3}];
      _Block_release(v3);
      if (a1 == -1)
      {
        swift_beginAccess();
        if ((*(v23 + 32) & 1) == 0)
        {
          v26 = [v25 characterRangeForGlyphRange:*(v23 + 16) actualGlyphRange:{*(v23 + 24), 0}];
          v3 = v27;
          OUTLINED_FUNCTION_3_0();
          v5[2] = v26;
          v5[3] = v3;
        }
      }

      v10 = sub_1E41FDD54();
      swift_beginAccess();
      if (v10 == *v22)
      {

        return -1;
      }

      if (!__OFSUB__(v5[3] + *v22, 1))
      {
        break;
      }

      __break(1u);
LABEL_25:
      v11 = MEMORY[0x1E6911E60](0, v10);
LABEL_8:
      v7 = v11;

      if (v4)
      {
        goto LABEL_3;
      }

LABEL_9:
      v12 = v5;
      v13 = [v7 textContainers];
      sub_1E3280A90(0, &qword_1ECF32498);
      v14 = sub_1E42062B4();
      if (!sub_1E32AE9B0(v14))
      {
        goto LABEL_30;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E6911E60](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v15 = *(v14 + 32);
      }

      v5 = v15;
    }

    v29 = NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)();
    v31 = v30;

    if (v31)
    {
      return -1;
    }

    else
    {
      return v29;
    }
  }

  else
  {
    v9 = [v3 layoutManagers];
    sub_1E3280A90(0, &qword_1ECF32490);
    v10 = sub_1E42062B4();
    if (sub_1E32AE9B0(v10))
    {

      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v10 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:

    __break(1u);
  }

  return result;
}

void sub_1E3ABF9AC(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1E3ABFA98(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(a3, a4, a5);

  return v12;
}

void sub_1E3ABFB14(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12)
{
  v25.size.height = a8;
  v25.size.width = a7;
  v25.origin.y = a6;
  v25.origin.x = a5;
  v16 = v12[2];
  v17 = v12[3];
  v19 = v12[4];
  v18 = v12[5];
  v20 = v12[6];
  if (CGRectGetHeight(v25) != 0.0)
  {
    swift_beginAccess();
    v21 = *(v16 + 16);
    if (v21 == v17)
    {
      v22 = [v18 characterRangeForGlyphRange:a10 actualGlyphRange:{a11, 0}];
      v24 = v23;
      OUTLINED_FUNCTION_3_0();
      *(v19 + 16) = v22;
      *(v19 + 24) = v24;
      *a12 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_3_0();
      if (__OFADD__(v21, 1))
      {
        __break(1u);
      }

      else
      {
        *(v16 + 16) = v21 + 1;
        OUTLINED_FUNCTION_3_0();
        *(v20 + 16) = a10;
        *(v20 + 24) = a11;
        *(v20 + 32) = 0;
      }
    }
  }
}

void type metadata accessor for _NSRange()
{
  if (!qword_1ECF324A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF324A0);
    }
  }
}

uint64_t sub_1E3ABFC84@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324A8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = sub_1E3ABFE50(a1, a2, a3 & 0x101, v10);
  if (a2)
  {
    (*(*a2 + 128))(v15);
  }

  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E379E528(v10, v14, &qword_1ECF324A8);
  v16 = &v14[*(v11 + 36)];
  v17 = v20[1];
  *v16 = v20[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v20[2];
  sub_1E379E528(v14, a4, &qword_1ECF324B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324B8);
  v19 = (a4 + *(result + 36));
  *v19 = 0;
  v19[1] = a3 & 1;
  return result;
}

uint64_t sub_1E3ABFE50@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v71 = a3;
  v72 = a2;
  v82 = a4;
  v76 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v75 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v69 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32500);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v65 - v15;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v65 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32508);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  type metadata accessor for ViewModel();
  j___s8VideosUI9ViewModelCMa();
  v32 = sub_1E39C1CF8(145);
  if (!sub_1E32AE9B0(v32))
  {

LABEL_13:
    nullsub_1(v38, v39);
    (*(v28 + 16))(v25, v31, v26);
    swift_storeEnumTagMultiPayload();
    sub_1E3AC0A44();
    OUTLINED_FUNCTION_10_1();
    sub_1E4201F44();
    return (*(v28 + 8))(v31, v26);
  }

  v66 = v18;
  if ((v32 & 0xC000000000000001) != 0)
  {
    v33 = v13;
    v34 = MEMORY[0x1E6911E60](0, v32);
  }

  else
  {
    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v33 = v13;
    v34 = *(v32 + 32);
  }

  type metadata accessor for SubsetCollectionViewModel();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {

    goto LABEL_13;
  }

  v32 = v35;
  v68 = v34;
  v67 = [objc_opt_self() sharedInstance];
  j___s8VideosUI9ViewModelCMa();
  a1 = sub_1E39C1CF8(138);
  result = sub_1E32AE9B0(a1);
  if (!result)
  {

    v37 = 0;
    v13 = v33;
    goto LABEL_15;
  }

  v13 = v33;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v37 = *(a1 + 32);

    goto LABEL_10;
  }

LABEL_30:
  v37 = MEMORY[0x1E6911E60](0, a1);
LABEL_10:

LABEL_15:
  v40 = v71;
  v41 = v72;

  sub_1E3D8FE68(v32, v37, v41, v40 & 1, HIBYTE(v40) & 1, v84);
  sub_1E4202464();
  v42 = sub_1E3AC0AFC();
  sub_1E4203224();
  (*(v69 + 8))(v11, v70);
  v86[0] = v84[0];
  v86[1] = v84[1];
  v86[2] = v84[2];
  v87 = v85;
  sub_1E3AC0B50(v86);
  if (v37)
  {
    v43 = *(*v37 + 488);

    v45 = v43(v44);

    if (v45)
    {
      *&v84[0] = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34240);
      v47 = sub_1E3AC0BA4();
      sub_1E38D2480(v83, v46, v47);

      if (v83[0])
      {
        v48 = sub_1E373E010(23, v83[0]);

        if (v48)
        {
          if (*v48 == _TtC8VideosUI13TextViewModel)
          {
            v49 = sub_1E3C27024();
            v51 = v50;

            if (v51)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v49 = 0;
  v51 = 0xE000000000000000;
LABEL_24:
  *&v84[0] = v49;
  *(&v84[0] + 1) = v51;
  v83[0] = &type metadata for FlexibleGridSubsetView;
  v83[1] = v42;
  swift_getOpaqueTypeConformance2();
  sub_1E32822E0();
  v52 = v66;
  v53 = v73;
  v54 = v78;
  sub_1E4203114();

  (*(v13 + 8))(v54, v53);
  v55 = v74;
  sub_1E4201C94();
  sub_1E4201374();
  (*(v75 + 8))(v55, v76);
  sub_1E32C3898(v52);
  if (!v67 || (v56 = sub_1E3741090(0xD000000000000025, 0x80000001E4270050, v67), !v57))
  {

    v56 = 0;
    v57 = 0xE000000000000000;
  }

  *&v84[0] = v56;
  *(&v84[0] + 1) = v57;
  v58 = sub_1E4202C44();
  v60 = v59;
  v62 = v61;
  v63 = v77;
  v64 = v79;
  sub_1E4201364();
  sub_1E37434B8(v58, v60, v62 & 1);

  sub_1E32C3898(v64);
  sub_1E32C38F8(v63, v25);
  swift_storeEnumTagMultiPayload();
  sub_1E3AC0A44();
  OUTLINED_FUNCTION_10_1();
  sub_1E4201F44();

  return sub_1E32C3898(v63);
}

uint64_t sub_1E3AC0740@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1E3ABFC84(*v1, *(v1 + 8), v2 | *(v1 + 16), a1);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E3AC0774(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1E3AC07B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3AC0804()
{
  result = qword_1ECF324C0;
  if (!qword_1ECF324C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324B8);
    sub_1E3AC0890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324C0);
  }

  return result;
}

unint64_t sub_1E3AC0890()
{
  result = qword_1ECF324C8;
  if (!qword_1ECF324C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324B0);
    sub_1E3AC091C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324C8);
  }

  return result;
}

unint64_t sub_1E3AC091C()
{
  result = qword_1ECF324D0;
  if (!qword_1ECF324D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324A8);
    sub_1E3AC09A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324D0);
  }

  return result;
}

unint64_t sub_1E3AC09A0()
{
  result = qword_1ECF324D8;
  if (!qword_1ECF324D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324E0);
    sub_1E3AC0A44();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324D8);
  }

  return result;
}

unint64_t sub_1E3AC0A44()
{
  result = qword_1ECF324E8;
  if (!qword_1ECF324E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324F0);
    sub_1E3AC0AFC();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324E8);
  }

  return result;
}

unint64_t sub_1E3AC0AFC()
{
  result = qword_1ECF324F8;
  if (!qword_1ECF324F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324F8);
  }

  return result;
}

unint64_t sub_1E3AC0BA4()
{
  result = qword_1ECF289A8;
  if (!qword_1ECF289A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF289A8);
  }

  return result;
}

void sub_1E3AC0C08()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell____lazy_storage___subviewsContainerView) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView) = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3AC0CF4()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell____lazy_storage___subviewsContainerView] = 1;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cancellables] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed] = 2;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_badgeView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView] = 0;
  v15 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v15);
  v6 = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E4297BE0;
  *(v7 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  sub_1E42062A4();
  OUTLINED_FUNCTION_38();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  aBlock[4] = sub_1E3AC3BC0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3790FBC;
  aBlock[3] = &block_descriptor_55;
  v10 = _Block_copy(aBlock);

  [v5 vui:v0 registerForTraitChanges:v10 withHandler:?];
  _Block_release(v10);

  sub_1E3CFEA54();
  OUTLINED_FUNCTION_8();
  v12 = *(v11 + 136);

  v12(v13);
  OUTLINED_FUNCTION_112();

  aBlock[0] = v12;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32570);
  sub_1E32752B0(&qword_1EE28A1B0, &unk_1ECF32570);
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580);
  sub_1E42004D4();
  swift_endAccess();

  return v5;
}

id sub_1E3AC10BC()
{
  v1 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell____lazy_storage___subviewsContainerView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell____lazy_storage___subviewsContainerView];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [v0 vuiContentView];
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_1E3A96F0C(v4);
  }

  sub_1E3A96F10(v2);
  return v3;
}

uint64_t sub_1E3AC113C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = a1;
  if (!a2)
  {
    goto LABEL_119;
  }

  v10 = *(*a1 + 392);
  v197 = a2;
  v11 = v10();
  if (!v11)
  {
    goto LABEL_117;
  }

  v12 = v11;
  v195 = v10;
  v186 = a2;
  type metadata accessor for EntityLockupCollectionViewCellLayout();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

    goto LABEL_119;
  }

  v14 = v13;
  v15 = v197;
  *&v197[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout] = v13;
  v193 = v12;

  *&v15[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel] = v196;

  OUTLINED_FUNCTION_36();
  v17 = *(v16 + 464);

  v198 = v17(v18);
  OUTLINED_FUNCTION_36();
  v191 = (*(v19 + 488))();
  v20 = (*a3 == 2) | *a3 ^ 1;
  v21 = *v14 + 1888;
  v22 = *v21;
  (*v21)();
  OUTLINED_FUNCTION_15_9();
  v194 = (*(v23 + 1744))();

  v190 = v14;
  (v22)(v24);
  OUTLINED_FUNCTION_15_9();
  (*(v25 + 1744))();
  OUTLINED_FUNCTION_112();

  v27 = (*(*v21 + 200))(v26);
  v29 = v28;

  if (v29)
  {
    [v15 vuiBounds];
    v27 = v30;
  }

  OUTLINED_FUNCTION_8();
  v32 = *(v31 + 208);

  v32(v27, 0);
  OUTLINED_FUNCTION_36();
  (*(v33 + 312))(0, 0);

  OUTLINED_FUNCTION_36();
  v35 = (*(v34 + 2288))();
  v37 = v36;
  sub_1E3DF9E68(&v210);
  v206 = v211;
  v207 = v212;
  v208[0] = v213[0];
  *(v208 + 15) = *(v213 + 15);
  v209 = 0;
  *__src = v35;
  __src[1] = v37;
  v219 = 0;
  *v222 = v213[0];
  *&v222[15] = *(v213 + 15);
  v221 = v212;
  v220 = v211;
  LODWORD(v189) = v20 & 1;
  v223 = v20 & 1;
  LODWORD(v192) = v214;
  v224 = v214;
  sub_1E37CCDA0(__src, v215);
  sub_1E38B04A4(__src, v215);
  v38 = *&v15[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView];
  if (v38)
  {
    v39 = *&v15[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView];
  }

  else
  {
    v39 = [objc_allocWithZone(VUIBaseView) init];
    v38 = 0;
  }

  v40 = v195(v38);
  if (v40)
  {
    v41 = v40;
    (*(*v40 + 744))();
    OUTLINED_FUNCTION_31_4();
  }

  else
  {
    v41 = 0;
  }

  v42 = v197;
  v43 = v198;
  [v39 setVuiBackgroundColor_];

  v44 = [v39 vuiLayer];
  if (v44)
  {
    v45 = v44;
    OUTLINED_FUNCTION_8();
    v47 = *(v46 + 552);

    v47(v216, v48);
    v49 = *v216;
    v50 = *&v216[1];
    v51 = *&v216[2];
    v52 = *&v216[3];

    v53 = 0.0;
    if ((v217 & 1) == 0)
    {
      v53 = sub_1E3952BE8(v49, v50, v51, v52);
    }

    [v45 setCornerRadius_];

    v42 = v197;
    v43 = v198;
  }

  v54 = [v39 vuiLayer];
  if (v54)
  {
    v55 = v54;
    v56 = [*sub_1E3E60CFC() CGColor];
    [v55 setBorderColor_];
  }

  v57 = [v39 vuiLayer];
  if (v57)
  {
    v58 = v57;
    [v57 setBorderWidth_];
  }

  v59 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView];
  *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView] = v39;
  v60 = v39;
  v61 = sub_1E3AC10BC();
  if (v61)
  {
    v62 = v61;
    [v61 vui:*&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView] addSubview:v59 oldView:?];
  }

  [v42 vui_setNeedsLayout];

  v188 = v60;
  v63 = [v42 vuiContentView];
  v64 = sub_1E3AC10BC();
  [v63 vui:v64 addSubview:0 oldView:?];

  v65 = type metadata accessor for UIFactory();
  sub_1E39C408C(41);
  v187 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView;
  v66 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView];
  *(&v204 + 1) = &type metadata for MonogramContext;
  v205 = &off_1F5D61598;
  *&v203 = swift_allocObject();
  memcpy((v203 + 16), v215, 0x52uLL);
  sub_1E3280A90(0, &unk_1EE23B2D0);
  v67 = v66;
  v68 = OUTLINED_FUNCTION_7_109();
  v195 = v65;
  v72 = sub_1E393D92C(v68, v69, v70, v71);

  sub_1E325F748(&v203, &qword_1ECF296C0);
  v73 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView];
  *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView] = v72;
  v74 = v72;
  v75 = sub_1E3AC10BC();
  if (v75)
  {
    v76 = v75;
    [v75 &selRef_videoLayoutAttributes + 2];
  }

  v77 = &selRef_vui_disableLocalAsset;
  [v42 vui_setNeedsLayout];

  sub_1E39C408C(39);
  v7 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  v185 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView;
  v78 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView];
  v79 = v209;
  *(&v204 + 1) = &unk_1F5D869A0;
  v205 = &off_1F5D868A0;
  v80 = swift_allocObject();
  *&v203 = v80;
  *(v80 + 16) = v35;
  *(v80 + 24) = v37;
  *(v80 + 32) = v79;
  v81 = v207;
  *(v80 + 33) = v206;
  *(v80 + 49) = v81;
  *(v80 + 65) = v208[0];
  *(v80 + 80) = *(v208 + 15);
  *(v80 + 96) = v189;
  *(v80 + 97) = v192;
  sub_1E3280A90(0, &qword_1EE23AE80);
  v82 = v78;
  v83 = OUTLINED_FUNCTION_7_109();
  v87 = sub_1E393D92C(v83, v84, v85, v86);

  sub_1E325F748(&v203, &qword_1ECF296C0);
  v9 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView];
  *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView] = v87;
  v88 = v87;
  v89 = sub_1E3AC10BC();
  if (v89)
  {
    v90 = v89;
    [v89 vui:*&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView] addSubview:v9 oldView:?];
  }

  [v42 vui_setNeedsLayout];

  if (!v43)
  {
LABEL_41:
    v97 = v191;
    if (v191)
    {

      sub_1E373E010(23, v97);
      OUTLINED_FUNCTION_112();
    }

    else
    {
      v9 = 0;
    }

LABEL_46:
    v98 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel;
    v99 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel];
    v205 = 0;
    v203 = 0u;
    v204 = 0u;
    v100 = sub_1E3280A90(0, &qword_1EE23AD40);
    v101 = v99;
    v192 = v9;
    v189 = v100;
    v102 = sub_1E393D92C(v9, v99, &v203, 0);

    sub_1E325F748(&v203, &qword_1ECF296C0);
    v103 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel];
    *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel] = v102;
    v104 = v102;
    v105 = sub_1E3AC10BC();
    if (v105)
    {
      v106 = v105;
      [v105 vui:*&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel] addSubview:v103 oldView:?];
    }

    [v42 v77[122]];

    v107 = *&v42[v98];
    if (v107)
    {
      v108 = v192 == 0;
      if (v192)
      {
        v109 = *(*v192 + 392);
        v110 = v107;

        v112 = v109(v111);

        if (v112)
        {
          OUTLINED_FUNCTION_8();
          v114 = (*(v113 + 936))();

          if (v114 != 2 && (v114 & 1) != 0)
          {
            v108 = 1;
          }
        }
      }

      else
      {
        v110 = v107;
      }

      [v110 setHidden_];
    }

    v115 = sub_1E39C2CD0();
    v117 = v116;
    sub_1E3CFEA54();
    OUTLINED_FUNCTION_8();
    v119 = *(v118 + 144);

    v7 = v119(v120);

    if (v7)
    {
      OUTLINED_FUNCTION_8();
      v7 = *(v121 + 376);

      v122 = (v7)(v115, v117);
    }

    else
    {

      *(&v204 + 1) = &unk_1F5D5D528;
      v205 = &off_1F5D5C858;
      LOBYTE(v203) = 0;
      v123 = j__OUTLINED_FUNCTION_18();
      v122 = sub_1E39C29F0(&v203, v123 & 1);
      __swift_destroy_boxed_opaque_existential_1(&v203);
    }

    v124 = sub_1E39C408C(31);
    v125 = v124;
    if (!_MergedGlobals_54)
    {
      if (v124)
      {

        v126 = j__OUTLINED_FUNCTION_18();
        v127 = sub_1E39C26D0(2, v126 & 1);

        if (v127)
        {
          type metadata accessor for ImageViewModel();
          if (swift_dynamicCastClass())
          {
            v128 = v190;
            OUTLINED_FUNCTION_8();
            (*(v129 + 1936))();
            v130 = OUTLINED_FUNCTION_38();
            v7 = sub_1E37E9528(v130, v128);

            v131 = _MergedGlobals_54;
            _MergedGlobals_54 = v7;
          }

          else
          {
          }
        }
      }
    }

    if (!qword_1ECF554B8)
    {
      if (v125)
      {

        v132 = j__OUTLINED_FUNCTION_18();
        v133 = sub_1E39C26D0(3, v132 & 1);

        if (v133)
        {
          type metadata accessor for ImageViewModel();
          if (swift_dynamicCastClass())
          {
            v134 = v190;
            OUTLINED_FUNCTION_8();
            (*(v135 + 1936))();
            v136 = OUTLINED_FUNCTION_38();
            v7 = sub_1E37E9528(v136, v134);

            v137 = qword_1ECF554B8;
            qword_1ECF554B8 = v7;
          }

          else
          {
          }
        }
      }
    }

    v138 = v197;
    sub_1E3AC2628(v122 & 1, 0, 0);
    v139 = *&v138[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView];
    if (v139)
    {
      if (_MergedGlobals_54)
      {
        OUTLINED_FUNCTION_8();
        v141 = *(v140 + 1936);
        v143 = v142;
        v7 = v141();
        OUTLINED_FUNCTION_15_9();
        v145 = (*(v144 + 936))();
      }

      else
      {
        v143 = v139;
        v145 = 1;
      }

      [v143 setHidden_];
    }

    v196 = v125;
    if (v43)
    {
      v9 = sub_1E32AE9B0(v43);
      v146 = 0;
      v147 = v43 & 0xC000000000000001;
      v148 = v43 & 0xFFFFFFFFFFFFFF8;
      v6 = &qword_1F5D5CE68;
      while (1)
      {
        if (v9 == v146)
        {

          goto LABEL_91;
        }

        if (v147)
        {
          v149 = MEMORY[0x1E6911E60](v146, v43);
        }

        else
        {
          if (v146 >= *(v148 + 16))
          {
            goto LABEL_116;
          }

          v149 = *(v43 + 8 * v146 + 32);
        }

        if (__OFADD__(v146, 1))
        {
          goto LABEL_115;
        }

        v202 = *(v149 + 98);
        v201 = 15;
        sub_1E3742F1C();
        sub_1E4206254();
        sub_1E4206254();
        v7 = *(&v203 + 1);
        if (v203 == v199 && *(&v203 + 1) == v200)
        {
          break;
        }

        v151 = sub_1E42079A4();

        if (v151)
        {
          goto LABEL_96;
        }

        ++v146;
        v43 = v198;
      }

LABEL_96:

      v155 = *v149;
      v152 = v186;
    }

    else
    {
LABEL_91:
      v152 = v186;
      if (!v191)
      {
        goto LABEL_104;
      }

      v153 = sub_1E373E010(15, v191);

      if (!v153)
      {
        goto LABEL_104;
      }

      v155 = *v153;
      if (*v153 != _TtC8VideosUI13TextViewModel)
      {
LABEL_100:

        goto LABEL_104;
      }
    }

    if ((v155[9].info)(v154))
    {
      OUTLINED_FUNCTION_30();
      v157 = (*(v156 + 936))();

      if (v157 != 2 && (v157 & 1) != 0)
      {
        goto LABEL_100;
      }
    }

    v158 = v197;
    v159 = *&v197[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel];
    v205 = 0;
    v203 = 0u;
    v204 = 0u;
    v160 = v159;

    v162 = sub_1E393D92C(v161, v159, &v203, 0);

    sub_1E325F748(&v203, &qword_1ECF296C0);
    v163 = *&v158[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel];
    *&v158[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel] = v162;
    v164 = v162;
    v165 = sub_1E3AC10BC();
    if (v165)
    {
      v166 = v165;
      [v165 vui:*&v158[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel] addSubview:v163 oldView:?];
    }

LABEL_104:
    v167 = v197;
    v168 = *&v197[v187];
    if (v168)
    {
      v169 = v197;
      v170 = [v168 accessibilityLabel];
      if (v170)
      {
        v171 = v170;
        goto LABEL_110;
      }
    }

    else
    {
      v172 = v197;
    }

    v173 = *&v167[v185];
    if (!v173)
    {
      v171 = 0;
      goto LABEL_112;
    }

    v171 = [v173 accessibilityLabel];
    if (!v171)
    {
LABEL_112:
      v174 = v197;
      [v197 setAccessibilityLabel_];

      return v152;
    }

LABEL_110:
    sub_1E4205F14();

    sub_1E4205ED4();
    OUTLINED_FUNCTION_31_4();

    goto LABEL_112;
  }

  v9 = sub_1E32AE9B0(v43);
  v91 = v43 & 0xC000000000000001;
  v92 = v43 & 0xFFFFFFFFFFFFFF8;

  v93 = 0;
  v6 = &qword_1F5D5CE68;
  while (1)
  {
    if (v9 == v93)
    {

      v42 = v197;
      v77 = &selRef_vui_disableLocalAsset;
      goto LABEL_41;
    }

    if (v91)
    {
      v94 = MEMORY[0x1E6911E60](v93, v43);
    }

    else
    {
      if (v93 >= *(v92 + 16))
      {
        goto LABEL_114;
      }
    }

    if (__OFADD__(v93, 1))
    {
      break;
    }

    v95 = v94;
    v202 = *(v94 + 98);
    v201 = 23;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v203 == v199 && *(&v203 + 1) == v200)
    {

LABEL_45:
      v43 = v198;

      v42 = v197;
      v9 = v95;
      v77 = &selRef_vui_disableLocalAsset;
      goto LABEL_46;
    }

    v7 = sub_1E42079A4();

    if (v7)
    {
      goto LABEL_45;
    }

    ++v93;
    v43 = v198;
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:

LABEL_119:
  v176 = sub_1E324FBDC();
  (*(v7 + 16))(v9, v176, v6);

  v177 = sub_1E41FFC94();
  v178 = sub_1E4206814();

  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    __src[0] = v180;
    *v179 = 136315138;
    sub_1E384EE08(*(v196 + 98));
    v183 = sub_1E3270FC8(v181, v182, __src);

    *(v179 + 4) = v183;
    _os_log_impl(&dword_1E323F000, v177, v178, "EntityLockupCollectionViewCell: Failed to get correct cell for [%s]", v179, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v180);
    MEMORY[0x1E69143B0](v180, -1, -1);
    MEMORY[0x1E69143B0](v179, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void sub_1E3AC2628(int a1, char a2, char a3)
{
  v4 = &_MergedGlobals_54;
  if ((a1 & 1) == 0)
  {
    v4 = &qword_1ECF554B8;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = v3;
    if (a3 & 1) != 0 || (v12 = v3[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed], v12 == 2) || ((v12 ^ a1))
    {
      v3[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed] = a1 & 1;
      v8 = *&v3[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel];
      if (v8)
      {
        v25 = 0;
        v24 = MEMORY[0x1E69E6370];
        v23[0] = a1 & 1;
        v9 = *(*v8 + 784);
        v10 = v5;

        v9(&v25, v23, &unk_1F5D5D528, &off_1F5D5C858);

        sub_1E325F748(v23, &unk_1ECF296E0);
        if (a2)
        {
LABEL_7:
          v11 = [objc_opt_self() symbolReplaceContentTransition];
          goto LABEL_13;
        }
      }

      else
      {
        v13 = v5;
        if (a2)
        {
          goto LABEL_7;
        }
      }

      v11 = 0;
LABEL_13:
      v14 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView];
      if (v14 && (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0))
      {
        v16 = v15;
        v17 = v5;
        v18 = v14;
        [v16 setSymbolImage:v5 withSymbolTransition:v11];
        v5 = v18;
      }

      else
      {
        v19 = [objc_opt_self() makeImageWithImage:v5 existingView:v14];
        v17 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView];
        *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView] = v19;
        v20 = v19;
        v21 = sub_1E3AC10BC();
        if (v21)
        {
          v22 = v21;
          [v21 vui:*&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView] addSubview:v17 oldView:?];
        }

        [v6 vui_setNeedsLayout];

        v11 = v20;
      }
    }
  }
}

double sub_1E3AC2874(char a1, double a2, double a3)
{
  v5 = *&v3[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout];
  if (v5)
  {
    v6 = v3;
    OUTLINED_FUNCTION_111();
    v8 = *(v7 + 432);
    v9 = swift_retain_n();
    v147 = v8;
    v10 = COERCE_DOUBLE((v8)(v9));
    if (v11)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0 / v10 * a2;
    }

    v166 = a2;
    OUTLINED_FUNCTION_111();
    v155 = *(v13 + 1888);
    v155();
    OUTLINED_FUNCTION_30();
    (*(v14 + 152))(v167);
    v15 = *v167;
    v16 = *&v167[1];
    v17 = *&v167[2];
    v18 = *&v167[3];

    if ((v168 & 1) == 0)
    {
      sub_1E3952BE0(v15, v16, v17, v18);
    }

    v19 = [v3 vuiTraitCollection];
    v163 = [v19 isAXEnabled];

    v20 = *(*v5 + 1864);
    v20();
    OUTLINED_FUNCTION_15_9();
    v22 = (*(v21 + 504))();

    if (v22 == 18)
    {
      v23 = 0;
    }

    else
    {
      LOBYTE(v187[0]) = v22;
      LOBYTE(v186) = 2;
      sub_1E39E67F4();
      v23 = sub_1E4205E84();
    }

    v162 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel;
    v24 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel];
    v25 = 0.0;
    v26 = &selRef_textLayout;
    if (v24)
    {
      v27 = v24;
      v28 = OUTLINED_FUNCTION_6_92();
      [v28 v29];
      OUTLINED_FUNCTION_3();
      v20();
      OUTLINED_FUNCTION_30();
      (*(v30 + 152))(&v169);

      OUTLINED_FUNCTION_2_108();
      sub_1E3CEE8A0(v31, v32, v33, v34, v35);
      v38 = [v27 sizeThatFits_];
      if (v23)
      {
        (v20)(v38);
        OUTLINED_FUNCTION_30();
        (*(v39 + 152))(v171);

        v25 = 0.0;
      }

      else
      {
        v25 = 0.0;
        if (v163)
        {
          if (!*&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel])
          {
            (v20)(v38);
            OUTLINED_FUNCTION_30();
            (*(v41 + 152))(v170);

            (v20)(v42);
            OUTLINED_FUNCTION_30();
            (*(v43 + 152))(v171);
          }
        }

        else
        {
          (v20)(v38);
          OUTLINED_FUNCTION_30();
          (*(v40 + 152))(v171);

          OUTLINED_FUNCTION_32_1();
        }
      }
    }

    v151 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel;
    v44 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel];
    if (v44)
    {
      v45 = v44;
      v46 = OUTLINED_FUNCTION_6_92();
      [v46 v47];
      OUTLINED_FUNCTION_3();
      v48 = *(*v5 + 1840);
      v48();
      OUTLINED_FUNCTION_30();
      (*(v49 + 152))(&v172);

      OUTLINED_FUNCTION_2_108();
      v25 = sub_1E3CEE8A0(v50, v51, v52, v53, v54);
      v57 = [v45 sizeThatFits_];
      if (v163)
      {
        (v48)(v57);
        OUTLINED_FUNCTION_30();
        (*(v58 + 152))(v173);

        (v48)(v59);
        OUTLINED_FUNCTION_30();
        (*(v60 + 152))(&v174);

        if (*&v6[v162] && (v23 & 1) == 0)
        {
          (v48)(v61);
          OUTLINED_FUNCTION_30();
          (*(v63 + 152))(&v175);

          OUTLINED_FUNCTION_32_1();
          v20();
          OUTLINED_FUNCTION_30();
          (*(v64 + 152))(v176);

          OUTLINED_FUNCTION_32_1();
          v20();
          OUTLINED_FUNCTION_30();
          (*(v65 + 152))(v177);

          OUTLINED_FUNCTION_32_1();
        }

        else
        {
        }

        v26 = &selRef_textLayout;
      }

      else
      {
        if ((*&v6[v162] == 0) | v23 & 1)
        {
          (v48)(v57);
        }

        else
        {
          (v20)(v57);
        }

        OUTLINED_FUNCTION_30();
        (*(v62 + 152))(v177);

        OUTLINED_FUNCTION_32_1();
        v26 = &selRef_textLayout;
      }
    }

    v66 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView;
    if (*&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView])
    {

      v67 = OUTLINED_FUNCTION_6_92();
      (v155)([v67 v68]);
      OUTLINED_FUNCTION_30();
      (*(v69 + 152))(v184);

      if (v163)
      {
        v188.origin.x = 0.0;
        v188.origin.y = 0.0;
        v188.size.width = v166;
        v188.size.height = v12;
        CGRectGetHeight(v188);
      }

      OUTLINED_FUNCTION_3_113();
    }

    else if (*&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView])
    {
      OUTLINED_FUNCTION_111();
      v71 = *(v70 + 176);
      v71(v178);
      if (v179)
      {
        OUTLINED_FUNCTION_111();
        (*(v72 + 1912))();
        OUTLINED_FUNCTION_30();
        (*(v73 + 152))(v180);

        v74 = v180[0];
        if (v181)
        {
          v74 = 45.0;
        }
      }

      else
      {
        v74 = v178[0];
      }

      v164 = v74;
      if (OUTLINED_FUNCTION_19_63() <= 0.0)
      {
        [v6 v26[394]];
        Height = CGRectGetHeight(v189);
        v71(v182);
        v77 = v183;
        if (v183)
        {
          v78 = 0;
        }

        else
        {
          v78 = sub_1E3952BD8(v182[0], v182[1], v182[2]);
        }

        v75 = sub_1E4149E0C(v78, v77 & 1, Height);
      }

      else
      {
        v75 = OUTLINED_FUNCTION_19_63();
      }

      v79 = v75;
      OUTLINED_FUNCTION_111();
      (*(v80 + 1912))();
      OUTLINED_FUNCTION_30();
      (*(v81 + 152))(v184);

      if (v185)
      {
        v82 = 0;
      }

      else
      {
        v82 = v184[2];
      }

      sub_1E4149E0C(v82, v185 & 1, v79 - v164);
      v147();

      [v6 v26[394]];
      CGRectGetWidth(v190);
    }

    else
    {

      OUTLINED_FUNCTION_3_113();
    }

    v83 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView;
    v84 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView];
    if (v84)
    {
      v85 = v84;
      v86 = [v85 vui:v166 sizeThatFits:a3];
      v87 = *(*v5 + 1936);
      v87(v86);
      OUTLINED_FUNCTION_30();
      (*(v88 + 152))(&v186);

      v87(v89);
      OUTLINED_FUNCTION_30();
      (*(v90 + 152))(v187);
    }

    if ((a1 & 1) == 0)
    {
      v91 = OUTLINED_FUNCTION_6_92();
      [v91 v92];
      v93 = v25;
      v95 = v94;
      v97 = v96;
      v99 = v98;
      OUTLINED_FUNCTION_10_76();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v145 = v101;
      v146 = v100;
      v143 = v103;
      v144 = v102;
      v104 = OUTLINED_FUNCTION_6_92();
      [v104 v105];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_10_76();
      OUTLINED_FUNCTION_2_108();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v165 = v106;
      v159 = v107;
      v156 = v108;
      v153 = v109;
      v110 = OUTLINED_FUNCTION_6_92();
      [v110 v111];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_10_76();
      OUTLINED_FUNCTION_2_108();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v149 = v113;
      v150 = v112;
      v148 = v114;
      v142 = v115;
      v116 = OUTLINED_FUNCTION_6_92();
      [v116 v117];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_10_76();
      OUTLINED_FUNCTION_2_108();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v161 = v118;
      v158 = v119;
      v154 = v120;
      v152 = v121;
      v122 = OUTLINED_FUNCTION_6_92();
      [v122 v123];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_10_76();
      OUTLINED_FUNCTION_2_108();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v125 = v124;
      v127 = v126;
      v129 = v128;
      v131 = v130;
      v132 = OUTLINED_FUNCTION_6_92();
      [v132 v133];
      OUTLINED_FUNCTION_16_72();
      OUTLINED_FUNCTION_10_76();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_16_72();
      v134 = *&v6[v66];
      if (v134)
      {
        [v134 setFrame_];
      }

      v135 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView];
      if (v135)
      {
        [v135 setFrame_];
      }

      v136 = *&v6[v151];
      if (v136)
      {
        [v136 setFrame_];
      }

      v137 = *&v6[v83];
      if (v137)
      {
        [v137 setFrame_];
      }

      v138 = *&v6[v162];
      if (v138)
      {
        [v138 setFrame_];
      }

      v139 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView];
      if (v139)
      {
        v140 = v139;
        [v140 setFrame_];
      }
    }

    return v166;
  }

  return a2;
}

id sub_1E3AC3840(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_vui_setHighlighted_, a1 & 1);
  result = *&v1[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView];
  if (result)
  {
    return [result vui:a1 & 1 setHighlighted:?];
  }

  return result;
}

id sub_1E3AC3900()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, sel_prepareForReuse);
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed) = 2;
  return result;
}

void *sub_1E3AC3A48@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  sub_1E41A300C(v16);
  [v6 vui:a2 sizeThatFits:0.0];
  sub_1E41A2FE8(v13, v14);
  *&v16[6] = a3;
  *&v16[7] = a4;
  *&v16[8] = a5;
  *&v16[9] = a6;
  return memcpy(a1, v16, 0x50uLL);
}

id sub_1E3AC3B20()
{
  v1 = [v0 vuiContentView];

  return v1;
}

uint64_t sub_1E3AC3BC0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel))
    {

      v2 = sub_1E39C408C(31);

      if (v2)
      {

        v3 = j__OUTLINED_FUNCTION_18();
        v4 = sub_1E39C26D0(2, v3 & 1);

        if (v4)
        {
          type metadata accessor for ImageViewModel();
          v5 = swift_dynamicCastClass();
          if (v5)
          {
            v6 = v5;
            if (*&v1[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout])
            {
              OUTLINED_FUNCTION_8();
              v8 = *(v7 + 1936);

              v10 = v8(v9);
            }

            else
            {
              type metadata accessor for ImageLayout();
              v10 = sub_1E3BD61D8();
            }

            v11 = sub_1E37E9528(v6, v10);

            v12 = _MergedGlobals_54;
            _MergedGlobals_54 = v11;
          }

          else
          {
          }
        }

        v13 = j__OUTLINED_FUNCTION_18();
        v14 = sub_1E39C26D0(3, v13 & 1);

        if (v14)
        {
          type metadata accessor for ImageViewModel();
          v15 = swift_dynamicCastClass();
          if (v15)
          {
            v16 = v15;
            if (*&v1[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout])
            {
              OUTLINED_FUNCTION_8();
              v18 = *(v17 + 1936);

              v20 = v18(v19);
            }

            else
            {
              type metadata accessor for ImageLayout();
              v20 = sub_1E3BD61D8();
            }

            v21 = sub_1E37E9528(v16, v20);

            v22 = qword_1ECF554B8;
            qword_1ECF554B8 = v21;
          }

          else
          {
          }
        }
      }
    }

    v23 = v1[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed];
    if (v23 != 2)
    {
      sub_1E3AC2628(v23 & 1, 0, 1);
    }

    v24 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout;
    v25 = *&v1[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout];
    if (v25)
    {
      type metadata accessor for LayoutGrid();
      OUTLINED_FUNCTION_31_4();

      sub_1E3A256EC();
      v26 = [v1 vuiTraitCollection];
      sub_1E3C2AE10();
      v28 = v27;
      (*(*v25 + 1640))();

      if (*&v1[v24])
      {
        OUTLINED_FUNCTION_8();
        v30 = *(v29 + 1840);

        v30(v31);
        OUTLINED_FUNCTION_112();

        v33 = v30;
        (*(*v30 + 2408))(v32);
        OUTLINED_FUNCTION_31_4();

        v34 = *&v1[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel];
        if (v34)
        {
          v35 = v34;
          [v35 updateTextLayout_];
        }
      }
    }

    [v1 setNeedsLayout];
  }

  return result;
}

void sub_1E3AC3FBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel])
    {

      v1 = sub_1E39C2CD0();
      v3 = v2;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v3 = 0;
LABEL_6:
  v4 = *(**sub_1E3CFEA54() + 376);

  v5 = v4(v1, v3);

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1E3AC2628(v5 & 1, 1, 0);
  }
}

uint64_t sub_1E3AC40F8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_bannerViewModel;
  OUTLINED_FUNCTION_5_0();
  if (*(v0 + v1))
  {
    OUTLINED_FUNCTION_8();
    v3 = *(v2 + 464);

    v5 = v3(v4);

    if (v5)
    {
      result = sub_1E32AE9B0(v5);
      v7 = result;
      for (i = 0; ; ++i)
      {
        if (v7 == i)
        {

          return 0;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E6911E60](i, v5);
        }

        else
        {
          if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        sub_1E3742F1C();
        sub_1E4206254();
        sub_1E4206254();
        if (v13 == v11 && v14 == v12)
        {
          break;
        }

        v10 = sub_1E42079A4();

        if (v10)
        {
          goto LABEL_18;
        }
      }

LABEL_18:

      type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_1E3AC42DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateTimer;
  OUTLINED_FUNCTION_3_0();
  if (!*&v0[v3])
  {
    if (sub_1E3AC40F8())
    {
      OUTLINED_FUNCTION_30();
      v5 = (*(v4 + 1176))();

      if (v5)
      {
        sub_1E3E37F30();
        v6 = OUTLINED_FUNCTION_4_114();
        v7(v6);
        v8 = v0;
        v9 = sub_1E41FFC94();
        v10 = sub_1E42067E4();

        if (os_log_type_enabled(v9, v10))
        {
          v27 = v10;
          v11 = OUTLINED_FUNCTION_6_21();
          v26 = OUTLINED_FUNCTION_100();
          *v11 = 136315138;
          v28[0] = v26;
          if (!sub_1E3AC40F8() || (OUTLINED_FUNCTION_30(), v13 = (*(v12 + 1096))(), v15 = v14, , !v15))
          {

            v13 = 0;
            v15 = 0xE000000000000000;
          }

          v16 = sub_1E3270FC8(v13, v15, v28);

          *(v11 + 4) = v16;
          _os_log_impl(&dword_1E323F000, v9, v27, "SportsCanonicalBannerCell:: scoreboard updates start/resume [%s]", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v17 = OUTLINED_FUNCTION_74();
          v18(v17);
        }

        else
        {

          v19 = OUTLINED_FUNCTION_74();
          v20(v19);
        }

        v21 = objc_opt_self();
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28[4] = sub_1E3AC5750;
        v28[5] = v22;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 1107296256;
        v28[2] = sub_1E377674C;
        v28[3] = &block_descriptor_56;
        v23 = _Block_copy(v28);

        v24 = [v21 scheduledTimerWithTimeInterval:1 repeats:v23 block:60.0];
        _Block_release(v23);
        v25 = *&v1[v3];
        *&v1[v3] = v24;
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AC4620()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  if (sub_1E3AC40F8())
  {
    OUTLINED_FUNCTION_30();
    v8 = (*(v7 + 2120))();

    if (v8)
    {
LABEL_22:
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  v9 = sub_1E3AC40F8();
  if (v9)
  {
    v10 = (*(*v9 + 552))();

    if (v10)
    {
      v11 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequest;
      OUTLINED_FUNCTION_3_0();
      if (*(v1 + v11))
      {

        if (!sub_1E3AC40F8() || (OUTLINED_FUNCTION_30(), v13 = (*(v12 + 1096))(), v15 = v14, , !v15))
        {

          v13 = 0;
          v15 = 0xE000000000000000;
        }

        sub_1E3E37F30();
        v16 = OUTLINED_FUNCTION_4_114();
        v17(v16);

        v18 = sub_1E41FFC94();
        v19 = sub_1E42067E4();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = OUTLINED_FUNCTION_6_21();
          v21 = OUTLINED_FUNCTION_100();
          v35 = v21;
          *v20 = 136315138;
          v22 = sub_1E3270FC8(v13, v15, &v35);

          *(v20 + 4) = v22;
          _os_log_impl(&dword_1E323F000, v18, v19, "SportsCanonicalBannerCell::waiting for previous scoreboard request [%s]", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v32 = OUTLINED_FUNCTION_74();
        v33(v32);
      }

      else
      {
        v24 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_bannerViewModel;
        OUTLINED_FUNCTION_5_0();
        v25 = *(v1 + v24);

        v26 = sub_1E3744600(v10);

        sub_1E3C5F7FC(v25, v26, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29440);
        *(v1 + v11) = sub_1E37B2D9C();

        swift_beginAccess();
        v27 = *(v1 + v11);
        if (v27)
        {
          swift_endAccess();
          v28 = *(*v27 + 352);

          v30 = v28(v29);

          if (v30)
          {
            v31 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v27 = sub_1E41EC148(sub_1E3AC580C, v31);

            sub_1E3AC57B0(v6);
          }

          else
          {
            sub_1E3AC57B0(v6);
            v27 = 0;
          }
        }

        else
        {
          sub_1E3AC57B0(v6);
          swift_endAccess();
        }

        v34 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequestCancellable;
        OUTLINED_FUNCTION_3_0();
        *(v1 + v34) = v27;
      }

      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_25_2();

  sub_1E3AC4AAC();
}

void sub_1E3AC4AAC()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  sub_1E3E37F30();
  v2 = OUTLINED_FUNCTION_4_114();
  v3(v2);
  v4 = v0;
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_21();
    v22 = OUTLINED_FUNCTION_100();
    v23 = v22;
    *v7 = 136315138;
    v8 = sub_1E3AC40F8();
    if (!v8 || (v9 = (*(*v8 + 1096))(), v11 = v10, , !v11))
    {

      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_1E3270FC8(v9, v11, &v23);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1E323F000, v5, v6, "SportsCanonicalBannerCell:: scoreboard updates stop [%s]", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v13 = OUTLINED_FUNCTION_74();
  v14(v13);
  v15 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateTimer;
  OUTLINED_FUNCTION_3_0();
  v16 = *&v4[v15];
  if (v16)
  {
    [v16 invalidate];
    v17 = *&v4[v15];
  }

  else
  {
    v17 = 0;
  }

  *&v4[v15] = 0;

  v18 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequest;
  OUTLINED_FUNCTION_3_0();
  if (*&v4[v18])
  {
    OUTLINED_FUNCTION_8();
    v20 = *(v19 + 376);

    v20(v21);
  }

  *&v4[v18] = 0;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AC4D34()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  v12 = *(v2 + 17);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (v12)
    {
      v15 = sub_1E3E37F30();
      (*(v4 + 16))(v8, v15, v0);
      v16 = OUTLINED_FUNCTION_5_12();
      sub_1E3781F8C(v16, v17, v18);
      v19 = sub_1E41FFC94();
      v20 = sub_1E42067F4();
      v21 = OUTLINED_FUNCTION_5_12();
      sub_1E37D172C(v21, v22, v23, 1);
      if (os_log_type_enabled(v19, v20))
      {
        v33 = v20;
        v24 = OUTLINED_FUNCTION_6_21();
        v32 = swift_slowAlloc();
        *v24 = 138412290;
        sub_1E3781F38();
        swift_allocError();
        *v25 = v9;
        *(v25 + 8) = v10;
        *(v25 + 16) = v11;
        v26 = OUTLINED_FUNCTION_5_12();
        sub_1E3781F8C(v26, v27, v28);
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v29;
        *v32 = v29;
        _os_log_impl(&dword_1E323F000, v19, v33, "SportsCanonicalBannerCell:: scoreboard update error [%@]", v24, 0xCu);
        sub_1E3A66B00(v32);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v4 + 8))(v8, v0);
    }

    else
    {

      sub_1E3AC4F8C();
    }

    v30 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequest;
    OUTLINED_FUNCTION_3_0();
    *&v14[v30] = 0;

    v31 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequestCancellable;
    OUTLINED_FUNCTION_3_0();
    *&v14[v31] = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AC4F8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - v13;
  v15 = *(*v3 + 1096);
  v72 = *v3 + 1096;
  v16 = v15(v12);
  v73 = v5;
  v74 = v4;
  if (!v17)
  {
LABEL_10:
    v26 = sub_1E3E37F30();
    (*(v5 + 16))(v7, v26, v4);

    v27 = v1;
    v28 = v5;
    v29 = sub_1E41FFC94();
    v30 = sub_1E42067F4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v31 = 136315394;
      v32 = sub_1E3AC40F8();
      if (!v32 || (v33 = (*(*v32 + 1096))(), v35 = v34, , !v35))
      {

        v35 = 0xE300000000000000;
        v33 = 7104878;
      }

      v36 = sub_1E3270FC8(v33, v35, &v75);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      v38 = (v15)(v37);
      if (v39)
      {
        v40 = v39;
      }

      else
      {
        v38 = 7104878;
        v40 = 0xE300000000000000;
      }

      v41 = sub_1E3270FC8(v38, v40, &v75);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_1E323F000, v29, v30, "SportsCanonicalBannerCell:: wrong canonicalId for score update\n[current: %s received: %s", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v73 + 8))(v7, v74);
    }

    else
    {

      (*(v28 + 8))(v7, v4);
    }

    goto LABEL_19;
  }

  v18 = v17;
  v70 = v16;
  v71 = v0;
  if (!sub_1E3AC40F8() || (OUTLINED_FUNCTION_30(), v20 = (*(v19 + 1096))(), v22 = v21, , !v22))
  {
LABEL_9:

    v5 = v73;
    v4 = v74;
    v1 = v71;
    goto LABEL_10;
  }

  if (v70 == v20 && v18 == v22)
  {
  }

  else
  {
    v24 = sub_1E42079A4();

    if ((v24 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v42 = (*(*v3 + 1176))(v25);
  v43 = sub_1E3E37F30();
  v44 = v73;
  v45 = *(v73 + 16);
  if (v42)
  {
    v46 = v74;
    v45(v14, v43, v74);

    v47 = sub_1E41FFC94();
    v48 = sub_1E42067E4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v75 = v72;
      *v49 = 136315394;
      v50 = sub_1E3270FC8(v70, v18, &v75);

      *(v49 + 4) = v50;
      *(v49 + 12) = 2080;
      v52 = (*(*v3 + 1136))(v51);
      if (v52)
      {
        v53 = v52;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
        v55 = MEMORY[0x1E6910C30](v53, v54);
        v57 = v56;
      }

      else
      {
        v57 = 0xE400000000000000;
        v55 = 1701736302;
      }

      v65 = sub_1E3270FC8(v55, v57, &v75);

      *(v49 + 14) = v65;
      _os_log_impl(&dword_1E323F000, v47, v48, "SportsCanonicalBannerCell:: updating scoreboard [%s]: %s", v49, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v73 + 8))(v14, v74);
    }

    else
    {

      (*(v44 + 8))(v14, v46);
    }

    v66 = sub_1E3AC40F8();
    if (v66)
    {
      v67 = v66;
      v68 = (*(*v3 + 464))();
      if (v68)
      {
        v69 = v68;
      }

      else
      {
        v69 = MEMORY[0x1E69E7CC0];
      }

      (*(*v67 + 2384))(v69, 0);
    }
  }

  else
  {
    v58 = v74;
    v45(v10, v43, v74);

    v59 = sub_1E41FFC94();
    v60 = sub_1E42067E4();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v44;
      v62 = OUTLINED_FUNCTION_6_21();
      v63 = OUTLINED_FUNCTION_100();
      v75 = v63;
      *v62 = 136315138;
      v64 = sub_1E3270FC8(v70, v18, &v75);

      *(v62 + 4) = v64;
      _os_log_impl(&dword_1E323F000, v59, v60, "SportsCanonicalBannerCell:: received scoreboardViewModel without scores [%s]", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v61 + 8))(v10, v58);
    }

    else
    {

      (*(v44 + 8))(v10, v58);
    }

    sub_1E3AC4AAC();
  }

LABEL_19:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AC5750(void *a1)
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E3AC4620();
  }

  else
  {
    [a1 invalidate];
  }
}

uint64_t sub_1E3AC57B0(uint64_t a1)
{
  v2 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3AC582C(uint64_t result)
{
  *v1 = result;
  v1[32] = result;
  return result;
}

uint64_t sub_1E3AC5838(uint64_t a1)
{
  v6 = *(a1 + 8);
  sub_1E3AC58B8(&v6, &v5);

  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = *(a1 + 48);
  return sub_1E3AC5928(&v6, v1 + 16);
}

uint64_t sub_1E3AC58B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AC5928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1E3AC59C4@<D0>(uint64_t a1@<X8>)
{
  v2 = j__OUTLINED_FUNCTION_18();
  v3 = j__OUTLINED_FUNCTION_51_1();
  v4 = j__OUTLINED_FUNCTION_18();
  v5 = j__OUTLINED_FUNCTION_18();
  v6 = j__OUTLINED_FUNCTION_18();
  DocumentLoadingConfiguration.init(loadImmediately:labelTextOverride:withZoomTransition:prefersLargeTitle:navigationTitle:isComingFromExtras:isComingFromRoot:isRootViewController:)(&v9, 0, 0, v2 & 1, v3 & 1, 0, v4 & 1, v5 & 1, v6 & 1);
  v7 = *&v9.labelTextOverride.value._object;
  *a1 = *&v9.loadImmediately;
  *(a1 + 16) = v7;
  result = *&v9.navigationTitle.value._countAndFlagsBits;
  *(a1 + 32) = v9.navigationTitle;
  *(a1 + 48) = *&v9.isComingFromExtras;
  return result;
}

__n128 sub_1E3AC5A74@<Q0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  v10 = *(a10 + 16);
  *(a9 + 48) = *a10;
  *(a9 + 64) = v10;
  result = *(a10 + 32);
  *(a9 + 80) = result;
  *(a9 + 96) = *(a10 + 48);
  return result;
}

uint64_t sub_1E3AC5AB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1E3AC5B08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3AC5B68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 100))
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

uint64_t sub_1E3AC5BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 100) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 100) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

double sub_1E3AC5C5C(uint64_t a1, double a2, double a3)
{
  v6 = objc_opt_self();
  [v6 scaleContentSizeValue:a1 forTraitCollection:a2];
  v8 = v7;
  [v6 scaleContentSizeValue:a1 forTraitCollection:a3];
  return v8;
}

double sub_1E3AC5CD8(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1E42012F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = *(v10 + 16);
  v20(&v27 - v18, a1, v9, v17);
  sub_1E3831F24(a2, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1E37ECA8C(v8);
  }

  else
  {
    v28 = v12;
    v21 = *(v10 + 32);
    v21(v15, v8, v9);
    sub_1E3AC6100();
    v22 = sub_1E4205E14();
    v23 = *(v10 + 8);
    if (v22)
    {
      v23(v19, v9);
      v21(v19, v15, v9);
    }

    else
    {
      v23(v15, v9);
    }

    v12 = v28;
  }

  (v20)(v12, v19, v9);
  v24 = (*(v10 + 88))(v12, v9);
  if (v24 == *MEMORY[0x1E697E718])
  {
    v25 = 0.82;
  }

  else if (v24 == *MEMORY[0x1E697E6F0])
  {
    v25 = 0.88;
  }

  else if (v24 == *MEMORY[0x1E697E6F8])
  {
    v25 = 0.94;
  }

  else
  {
    v25 = 1.0;
    if (v24 != *MEMORY[0x1E697E6E8])
    {
      if (v24 == *MEMORY[0x1E697E708])
      {
        v25 = 1.12;
      }

      else if (v24 == *MEMORY[0x1E697E720])
      {
        v25 = 1.24;
      }

      else if (v24 == *MEMORY[0x1E697E728])
      {
        v25 = 1.35;
      }

      else if (v24 == *MEMORY[0x1E697E6C0])
      {
        v25 = 1.62;
      }

      else if (v24 == *MEMORY[0x1E697E6C8])
      {
        v25 = 1.95;
      }

      else if (v24 == *MEMORY[0x1E697E6D0])
      {
        v25 = 2.34;
      }

      else if (v24 == *MEMORY[0x1E697E6D8])
      {
        v25 = 2.74;
      }

      else if (v24 == *MEMORY[0x1E697E6E0])
      {
        v25 = 3.15;
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }
    }
  }

  (*(v10 + 8))(v19, v9);
  return ceil(v25 * a3);
}

unint64_t sub_1E3AC6100()
{
  result = qword_1EE289CD0;
  if (!qword_1EE289CD0)
  {
    sub_1E42012F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CD0);
  }

  return result;
}

double sub_1E3AC6158(double result, double a2)
{
  if (a2 > 0.0 && result > 0.0)
  {
    return result / a2;
  }

  return result;
}

double sub_1E3AC6180(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = sub_1E3AC5CD8(a1, a2, a3);
  v10 = OUTLINED_FUNCTION_16_0();
  sub_1E3AC5CD8(v10, v11, a4);
  v12 = OUTLINED_FUNCTION_16_0();
  sub_1E3AC5CD8(v12, v13, a5);
  v14 = OUTLINED_FUNCTION_16_0();
  sub_1E3AC5CD8(v14, v15, a6);
  return v9;
}

uint64_t sub_1E3AC6204()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for VideoLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3AC62A8(char a1)
{
  v2 = v1;
  *(v2 + 112) = 0;
  type metadata accessor for MediaShowcasingMetadataLayout();
  if (a1)
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  *(v2 + 104) = sub_1E3CCEAA8(v4);
  v5 = sub_1E3C2F9A0();

  swift_beginAccess();

  sub_1E3C37CBC(v6, 224);

  v7 = sub_1E3AC6204();
  sub_1E3C37CBC(v7, 95);

  v8 = sub_1E3AC6204();
  v40 = 0x3FE8000000000000;
  v41 = 0;
  v9 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v36 = v38;
  v37 = v39;
  sub_1E3C3DE00(v9);
  v32 = v34;
  v33 = v35;
  sub_1E3C3DE00(v9);
  v28 = v30;
  v29 = v31;
  v10 = sub_1E3C3DE00(v9);
  v24 = v26;
  v25 = v27;
  OUTLINED_FUNCTION_0_135(v10, v11, v12, v13);
  memcpy(__dst, __src, 0x59uLL);
  v14 = OUTLINED_FUNCTION_18();
  (*(*v8 + 1600))(__dst, 81, v14 & 1, v9);

  v15 = *(v5 + 112);
  LOBYTE(__dst[0]) = 0;
  LOBYTE(v40) = 1;

  v16 = MEMORY[0x1E69E6370];
  sub_1E3C3DE00(MEMORY[0x1E69E6370]);
  LOBYTE(v36) = v38;
  sub_1E3C3DE00(v16);
  LOBYTE(v32) = v34;
  sub_1E3C3DE00(v16);
  LOBYTE(v28) = v30;
  v17 = sub_1E3C3DE00(v16);
  LOBYTE(v24) = v26;
  OUTLINED_FUNCTION_0_135(v17, v18, v19, v20);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = __src[1];
  v21 = OUTLINED_FUNCTION_18();
  (*(*v15 + 1600))(__dst, 120, v21 & 1, v16);

  return v5;
}

void sub_1E3AC65AC()
{
  v1 = sub_1E3A7B638();
  if (v1)
  {
    v5 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
LABEL_6:
      [v2 setDelegate_];
      v4 = v5;
      goto LABEL_9;
    }
  }

  v3 = sub_1E3A7B638();
  if (v3)
  {
    v5 = v3;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      goto LABEL_6;
    }
  }

  v4 = sub_1E3A7B638();
LABEL_9:
}

void sub_1E3AC6654(void *a1)
{
  v2 = a1;
  sub_1E3A7B674(a1);
  sub_1E3AC65AC();
}

void (*sub_1E3AC66A4(void *a1))(void *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1E3A7B6BC();
  return sub_1E3AC6704;
}

void sub_1E3AC6704(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1E3AC65AC();
  }

  free(v3);
}

id sub_1E3AC6760()
{
  v1 = OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView);
  }

  else
  {
    type metadata accessor for UnifiedMessagingBannerView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E3AC67D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_vui_loadView);
  v1 = sub_1E3AC6760();
  [v0 setVuiView_];

  sub_1E3AC683C();
}

void sub_1E3AC683C()
{
  v1 = sub_1E3A7B638();
  if (v1)
  {
    v2 = v1;
    [v0 vui:v1 addChildViewController:?];
    v3 = [v0 vuiView];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 vuiView];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 vui:v0 didMoveToParentViewController:?];
        v7 = sub_1E3AC6760();
        v8 = [v2 view];

        v9 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView;
        OUTLINED_FUNCTION_3_0();
        v10 = *&v7[v9];
        *&v7[v9] = v8;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_1E3AC6994(uint64_t a1, void *a2)
{
  v11[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32588);
  sub_1E4148C68(sub_1E3AC6ABC, v3, v11);
  v4 = v11[0];

  sub_1E3A7B5A0(v5);

  v6 = sub_1E3AC6760();
  v7 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel;
  OUTLINED_FUNCTION_3_0();
  *&v6[v7] = a1;

  v8 = (*(*a1 + 896))();
  v9 = v8;
  sub_1E3A7B674(v8);
  sub_1E3AC65AC();

  return v4;
}

id sub_1E3AC6ABC@<X0>(void *a1@<X8>)
{
  type metadata accessor for UnifiedMessagingBannerViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3AC6AF8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView] = 0;
  if (a2)
  {
    v7 = sub_1E4205ED4();
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

id sub_1E3AC6C00(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E3AC6CC0()
{
  v1 = v0;
  type metadata accessor for UnifiedMessagingBannerViewModel();
  v2 = swift_dynamicCastClass();
  v3 = v2;
  if (!v2)
  {
    return (v3 != 0);
  }

  v4 = *(*v2 + 896);

  v6 = v4(v5);
  v7 = v6;
  v8 = sub_1E3A7B638();
  v9 = v8;
  if (!v6)
  {
    v10 = v8;
    if (!v8)
    {
      v13 = 0;
      goto LABEL_9;
    }

LABEL_16:

    goto LABEL_17;
  }

  v10 = v7;
  if (!v8)
  {
    goto LABEL_16;
  }

  if (v6 == v9)
  {
    result = [v7 vuiView];
    if (!result)
    {
      goto LABEL_26;
    }

    v12 = result;
    v13 = [result superview];

LABEL_9:
    v14 = [v1 vuiView];
    v10 = v14;
    if (v13)
    {
      if (v14)
      {
        sub_1E373C4DC();
        v15 = sub_1E4206F64();

        if (v15)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v10 = v13;
    }

    else if (!v14)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

LABEL_17:
  v16 = sub_1E3A7B638();
  if (!v16)
  {
LABEL_22:

    sub_1E3A7B5A0(v23);
    v24 = sub_1E3AC6760();
    v25 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel;
    OUTLINED_FUNCTION_3_0();
    *&v24[v25] = v3;

    v7 = v7;
    sub_1E3A7B674(v6);
    sub_1E3AC65AC();
    sub_1E3AC683C();
LABEL_23:

    return (v3 != 0);
  }

  v17 = v16;
  v18 = [v16 parentViewController];
  if (!v18)
  {

    goto LABEL_22;
  }

  [v17 vui:0 willMoveToParentViewController:?];
  result = [v17 vuiView];
  if (result)
  {
    v19 = result;
    [result vui_removeFromSuperView];

    [v17 vui_removeFromParentViewController];
    v20 = sub_1E3AC6760();

    v21 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView;
    OUTLINED_FUNCTION_3_0();
    v22 = *&v20[v21];
    *&v20[v21] = 0;

    goto LABEL_22;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

BOOL sub_1E3AC6F98()
{
  v0 = sub_1E3A7B638();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass() != 0;

  return v2;
}

double sub_1E3AC6FF0()
{
  v1 = [v0 vuiView];
  if (v1)
  {
    v3 = v1;
    [v1 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v5;
    v13 = v7;
    v14 = v9;
    v15 = v11;

    return CGRectGetHeight(*&v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3AC7084()
{
  v0 = *sub_1E3E60700();

  return v0;
}

void sub_1E3AC7170()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, sel_mediaInfos);
  sub_1E3280A90(0, &qword_1EE23B350);
  v2 = sub_1E42062B4();

  v3 = sub_1E32AE9B0(v2);
  v4 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_selectedAudioOption;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = 0;
  v6 = *MEMORY[0x1E69D5D10];
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v7 tvpPlaylist];
    v10 = [v9 currentMediaItem];

    if (v10)
    {
      v11 = *&v0[v4];
      [v10 setMediaItemMetadata:v11 forProperty:v6];

      swift_unknownObjectRelease();
    }

    ++v5;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1E3AC7314()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, sel_mediaInfos);
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062B4();

  return v2;
}

void sub_1E3AC738C(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_selectedAudioOption;
  OUTLINED_FUNCTION_57_2();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1E3AC7170();
}

uint64_t sub_1E3AC74D8()
{
  ObjectType = swift_getObjectType();
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062A4();

  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_setMediaInfos_, v2);

  sub_1E3AC7568();
  return sub_1E3AC7AF0(0);
}

id sub_1E3AC7568()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  type metadata accessor for ClipItem();
  OUTLINED_FUNCTION_0_10();
  v55 = v10;
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v47 - v15;
  v16 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v16 setDateStyle_];
  v59 = v16;
  [v16 setTimeStyle_];
  v65.receiver = v0;
  v65.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v65, sel_mediaInfos);
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  v18 = sub_1E42062B4();

  v19 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v20 = *&v0[v19];
  v60 = sub_1E32AE9B0(v18);
  v61 = v18;
  v57 = v18 & 0xFFFFFFFFFFFFFF8;
  v58 = v18 & 0xC000000000000001;
  v51 = v4 + 16;
  v50 = v4 + 8;

  v22 = 0;
  *&v23 = 136315394;
  v47 = v23;
  v49 = v2;
  v48 = v8;
  for (i = v20; ; v20 = i)
  {
    if (v60 == v22)
    {
      goto LABEL_17;
    }

    if (!v58)
    {
      break;
    }

    result = MEMORY[0x1E6911E60](v22, v61);
LABEL_6:
    v24 = result;
    v25 = *(v20 + 16);
    if (v22 == v25)
    {

LABEL_17:
    }

    if (v22 >= v25)
    {
      goto LABEL_19;
    }

    v26 = v20 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v22;
    v27 = v53;
    v28 = *(v54 + 48);
    sub_1E3ACA40C(v26, &v53[v28]);
    sub_1E3ACA34C(&v27[v28], v13);
    v29 = [v24 tvpPlaylist];
    v30 = [v29 currentMediaItem];

    v31 = sub_1E41FE514();
    v32 = [v59 stringFromDate_];

    v33 = sub_1E4205F14();
    v35 = v34;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_36_5();
    v36(v8);

    swift_unknownObjectRetain();
    v37 = sub_1E41FFC94();
    v38 = v8;
    v39 = sub_1E42067D4();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v37, v39))
    {
      v40 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v40 = v47;
      v41 = sub_1E3270FC8(v33, v35, &v64);

      *(v40 + 4) = v41;
      *(v40 + 12) = 2080;
      if (v30)
      {
        *(&v63 + 1) = swift_getObjectType();
        *&v62 = v30;
      }

      else
      {
        v62 = 0u;
        v63 = 0u;
      }

      swift_unknownObjectRetain();
      v43 = sub_1E3294FA4(&v62);
      v45 = sub_1E3270FC8(v43, v44, &v64);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_1E323F000, v37, v39, "CatchUpFetchController:: setting start date %s for %s", v40, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      OUTLINED_FUNCTION_36_5();
      v8 = v48;
      v2 = v49;
      v46(v48, v49);
    }

    else
    {

      OUTLINED_FUNCTION_36_5();
      v42(v38, v2);
      v8 = v38;
    }

    sub_1E3AC98E0(v30, v13);
    swift_unknownObjectRelease();

    result = sub_1E3ACA3B0(v13);
    ++v22;
  }

  if (v22 < *(v57 + 16))
  {
    result = *(v61 + 8 * v22 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E3AC7AF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - v5;
  v7 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v63 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v57 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v68 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  v21 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v59 = v1;
  v22 = *(v1 + v21);
  v23 = v20;
  sub_1E3AC9C00(a1, v22, v74);
  v24 = v74[4];
  v25 = v74[2];
  v26 = v74[0];
  v71 = v74[1];
  v62 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_imageOperationQueue;
  v64 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_operations;

  sub_1E37E93E8(v74, v73, &qword_1ECF325E8);
  v61 = v9 + 32;
  v60 = v9 + 16;
  v57 = v9 + 8;
  v70 = v26;
  v58 = v6;
  v65 = v25;
  for (i = v24; ; v24 = i)
  {
    if (v25 == v26)
    {
      sub_1E325F6F0(v74, &qword_1ECF325E8);
    }

    if (v70 < 0 || v26 >= v25)
    {
      break;
    }

    if (v26 >= *(v24 + 16))
    {
      goto LABEL_21;
    }

    v27 = v23;
    v28 = v69;
    v29 = *(v69 + 48);
    v30 = *(type metadata accessor for ClipItem() - 8);
    v31 = v68;
    sub_1E3ACA40C(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v68 + v29);
    v32 = v71;
    *v27 = v71;
    v33 = *(v28 + 48);
    v23 = v27;
    sub_1E3ACA34C(v31 + v29, v27 + v33);
    if (__OFADD__(v32, 1))
    {
      goto LABEL_22;
    }

    sub_1E3B9D814(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1E325F6F0(v6, &unk_1ECF363C0);
    }

    else
    {
      OUTLINED_FUNCTION_36_5();
      v34 = v67;
      v35(v67, v6, v7);
      type metadata accessor for ClipImageFetchOperation();
      OUTLINED_FUNCTION_36_5();
      v36 = v63;
      v37(v63, v34, v7);
      v38 = sub_1E3E3F9F8(v36);
      v39 = v59;
      [*(v59 + v62) addOperation_];
      v40 = v64;
      swift_beginAccess();
      v41 = v38;
      swift_isUniquelyReferenced_nonNull_native();
      v72 = *(v39 + v40);
      v42 = v72;
      *(v39 + v40) = 0x8000000000000000;
      v43 = sub_1E3928950(v71);
      if (__OFADD__(v42[2], (v44 & 1) == 0))
      {
        goto LABEL_23;
      }

      v45 = v43;
      v46 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325F0);
      if (sub_1E4207644())
      {
        v47 = sub_1E3928950(v71);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_25;
        }

        v45 = v47;
      }

      v49 = v72;
      if (v46)
      {
        v50 = v72[7];
        v51 = *(v50 + 8 * v45);
        *(v50 + 8 * v45) = v41;
      }

      else
      {
        v72[(v45 >> 6) + 8] |= 1 << v45;
        *(v49[6] + 8 * v45) = v71;
        *(v49[7] + 8 * v45) = v41;
        v52 = v49[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_24;
        }

        v49[2] = v54;
      }

      *(v39 + v64) = v49;
      swift_endAccess();

      OUTLINED_FUNCTION_36_5();
      v55(v67, v7);
      v6 = v58;
      v23 = v27;
    }

    sub_1E325F6F0(v23, &qword_1ECF325E0);
    ++v71;
    ++v26;
    v25 = v65;
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
LABEL_25:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

char *sub_1E3AC8088(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E4298880;
  *(v4 + 32) = a2;
  v5 = objc_allocWithZone(VUIMediaInfo);
  v6 = a2;
  OUTLINED_FUNCTION_25();
  sub_1E376538C(v7, v8, v9, v10);
  v11 = objc_allocWithZone(OUTLINED_FUNCTION_50());
  v12 = sub_1E3AC818C(a1, v5);

  return v12;
}

char *sub_1E3AC818C(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_selectedAudioOption] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer] = 0;
  v6 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_imageOperationQueue;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_operations] = MEMORY[0x1E69E7CC8];
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems] = a1;
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_mediaInfo] = a2;
  sub_1E3280A90(0, &qword_1EE23B350);
  v7 = a2;
  v8 = sub_1E42062A4();
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, sel_initWithMediaInfos_, v8);

  v10 = v9;
  v11 = OUTLINED_FUNCTION_50();
  v12 = sub_1E3AC82F4(v11, 1);
  v13 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer;
  v14 = *&v9[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer];
  *&v9[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer] = v12;

  v15 = *&v9[v13];
  if (v15)
  {
    [v15 pause];
  }

  [*&v9[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_imageOperationQueue] setMaxConcurrentOperationCount_];
  sub_1E3AC7AF0(0);

  return v9;
}

void *sub_1E3AC82F4(void *a1, char a2)
{
  v4 = [a1 tvpPlaylist];
  v5 = sub_1E3AC9D30(v4, a2);
  v7 = v6;

  v8 = objc_allocWithZone(VUIPlayer);
  v9 = sub_1E38A6730(v5, v7);
  v10 = v9;
  if (v9)
  {
    if (a2)
    {
      [v9 setWaitsAfterPreparingMediaItems_];
      [v10 setSendsPlayerReports_];
    }

    v11 = v10;
    v12 = [a1 tvpPlaylist];
    [v11 setPlaylist_];
  }

  return v10;
}

id sub_1E3AC83E4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer;
  v3 = *&v0[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer];
  if (v3)
  {
    [v3 stop];
    v4 = *&v0[v2];
    if (v4)
    {
      [v4 invalidate];
    }
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1E3AC8510(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  if (a2)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v5 = *(*(v2 + v4) + 16);
    swift_beginAccess();

    sub_1E3AC85E8(v6);
    result = swift_endAccess();
    if (v5 >= *(*(v2 + v4) + 16))
    {
      return result;
    }

    v8 = v5;
  }

  else
  {
    swift_beginAccess();
    *(v2 + v4) = a1;

    v8 = 0;
  }

  return sub_1E3AC7AF0(v8);
}

int64_t sub_1E3AC85E8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E3ACA2E4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for ClipItem();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1E3AC86E8()
{
  ObjectType = swift_getObjectType();
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062A4();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_appendMediaInfos_, v2);

  return sub_1E3AC7568();
}

uint64_t sub_1E3AC87D4(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E3AC87F4, 0, 0);
}

uint64_t sub_1E3AC87F4()
{
  OUTLINED_FUNCTION_134();
  v9 = v0[10];
  if (v9 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v10 = v0[11];
  v11 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_operations;
  swift_beginAccess();
  v12 = sub_1E3926118(v9, *(v10 + v11));
  v0[12] = v12;
  if (!v12)
  {
    swift_endAccess();
    sub_1E3AC9FA8();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_20_58(v18, v19);
LABEL_16:
    v25 = v0[1];

    return v25();
  }

  v13 = v12;
  swift_endAccess();
  if (![v13 isFinished])
  {
    v20 = swift_task_alloc();
    v0[13] = v20;
    *(v20 + 16) = v13;
    v21 = swift_task_alloc();
    v0[14] = v21;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325B8);
    *v21 = v0;
    v21[1] = sub_1E3AC8A98;
    v6 = sub_1E3AC9FFC;
    v4 = 0x67616D4964616F6CLL;
    v5 = 0xEE00293A74612865;
    v1 = v0 + 8;
    v2 = 0;
    v3 = 0;
    v7 = v20;

    return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v14 = &v13[OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_result];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v15 = *(v14 + 4);
  if (v15 >> 8 > 0xFE)
  {
    sub_1E3AC9FA8();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_20_58(v16, v17);
LABEL_15:

    goto LABEL_16;
  }

  v22 = *v14;
  if ((v15 & 0x100) != 0)
  {
    swift_willThrow();
    sub_1E3ACA004(v22, v15);
    goto LABEL_15;
  }

  sub_1E3ACA004(v22, v15);

  v23 = v0[1];

  return v23(v22, v15 & 1);
}

uint64_t sub_1E3AC8A98()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = sub_1E3AC8C0C;
  }

  else
  {

    v6 = sub_1E3AC8BA4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E3AC8BA4()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1E3AC8C0C()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E3AC8C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325D0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  (*(v4 + 16))(&v12 - v7, a1, v2, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v8, v2);
  sub_1E3E3FBB4(sub_1E3ACA67C, v10);
}

uint64_t sub_1E3AC8E38(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1E3AC8EF4;

  return sub_1E3AC87D4(a1);
}

uint64_t sub_1E3AC8EF4()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_39();
  v8 = v7;
  v9 = *(v7 + 24);
  v10 = *(v7 + 16);
  v11 = *v1;
  OUTLINED_FUNCTION_7();
  *v12 = v11;

  v13 = (v9 + 16);
  v14 = *(v8 + 24);
  if (v2)
  {
    sub_1E41FE264();

    (*v13)(v14, 0, v6, 0);
    _Block_release(v14);
  }

  else
  {
    (*v13)(v14, v6, 0, v4 & 1);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_54();

  return v15();
}

uint64_t sub_1E3AC9084(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_operations;
    OUTLINED_FUNCTION_57_2();
    swift_beginAccess();
    if (*(*(v1 + v3) + 16))
    {
      sub_1E3928950(v2);
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    swift_endAccess();
    return v5 & 1;
  }

  return result;
}

uint64_t sub_1E3AC912C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) == 0)
  {
    return *(*(v1 + v3) + 16) > a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3AC91B4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v67 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40C80);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  v22 = type metadata accessor for ClipItem();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v72 = &v67 - v28;
  v29 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) == 0)
  {
    v68 = v15;
    v73 = v6;
    v71 = v4;
    v78 = *&v2[v29];
    v76 = a1;
    v77 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40CE0);
    sub_1E3827828(&qword_1ECF325C0, &qword_1ECF40CE0);
    sub_1E38D2054(&v76, v21);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      sub_1E325F6F0(v21, &qword_1ECF40C80);

      v31 = sub_1E324FBDC();
      v32 = v73;
      v33 = v71;
      (*(v73 + 16))(v10, v31, v71);
      v34 = sub_1E41FFC94();
      v35 = sub_1E42067F4();
      if (os_log_type_enabled(v34, v35))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v36, v37, "CatchUpFetchController:: missing clip");
        OUTLINED_FUNCTION_6_0();
      }

      (*(v32 + 8))(v10, v33);
    }

    else
    {
      sub_1E3ACA34C(v21, v72);

      v75.receiver = v2;
      v75.super_class = ObjectType;
      v38 = objc_msgSendSuper2(&v75, sel_mediaInfos);
      sub_1E3280A90(0, &qword_1EE23B350);
      OUTLINED_FUNCTION_19_3();
      v39 = sub_1E42062B4();

      v78 = v39;
      v76 = a1;
      v77 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37A40);
      sub_1E3827828(&qword_1EE23B4D0, &qword_1ECF37A40);
      sub_1E38D2054(&v76, &v74);

      v40 = v74;
      v41 = v71;
      if (!v74)
      {
        v40 = *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_mediaInfo];
      }

      v42 = v73;
      v43 = sub_1E3AC82F4(v40, 0);
      if (v43)
      {
        v44 = v43;
        v45 = sub_1E324FBDC();
        v46 = *(v42 + 16);
        v46(v70, v45, v41);
        sub_1E3ACA40C(v72, v26);
        v47 = sub_1E41FFC94();
        v48 = sub_1E42067E4();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 134217984;
          sub_1E3B9D7E0();
          v51 = v50;
          sub_1E3ACA3B0(v26);
          *(v49 + 4) = v51;
          _os_log_impl(&dword_1E323F000, v47, v48, "CatchUpFetchController:: duration %f", v49, 0xCu);
          v41 = v71;
          OUTLINED_FUNCTION_6_0();
        }

        else
        {

          sub_1E3ACA3B0(v26);
        }

        v58 = *(v73 + 8);
        v73 += 8;
        v58(v70, v41);
        sub_1E3B9D7E0();
        [v44 setPreferredForwardBufferDuration_];
        v59 = v68;
        v46(v68, v45, v41);
        v60 = v59;
        v61 = v44;
        v62 = sub_1E41FFC94();
        v63 = sub_1E42067E4();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v64 = 138412290;
          *(v64 + 4) = v61;
          *v65 = v44;
          v66 = v61;
          _os_log_impl(&dword_1E323F000, v62, v63, "CatchUpFetchController:: returning player %@", v64, 0xCu);
          sub_1E325F6F0(v65, &unk_1ECF28E30);
          v41 = v71;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v58(v60, v41);
        sub_1E3ACA3B0(v72);
        return v44;
      }

      v52 = sub_1E324FBDC();
      v53 = v67;
      (*(v42 + 16))(v67, v52, v41);
      v54 = sub_1E41FFC94();
      v55 = sub_1E42067F4();
      if (os_log_type_enabled(v54, v55))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v56, v57, "CatchUpFetchController:: failed to create player");
        OUTLINED_FUNCTION_6_0();
      }

      (*(v42 + 8))(v53, v41);
      sub_1E3ACA3B0(v72);
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1E3AC98E0(void *a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for ClipItem();
    swift_unknownObjectRetain();
    v4 = sub_1E41FE514();
    [a1 setMediaItemMetadata:v4 forProperty:*MEMORY[0x1E69D5D88]];

    sub_1E3B9D7E0();
    v5 = sub_1E41FE954();
    [a1 setMediaItemMetadata:v5 forProperty:@"VUIMediaItemMetadataClipDuration"];

    if (*(a2 + 8))
    {
      v6 = sub_1E4205ED4();
      [a1 setMediaItemMetadata:v6 forProperty:@"VUIMediaItemMetadataClipId"];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_1E3AC9A14(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40C80);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ClipItem();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v20 = *(v2 + v14);
  v18 = a2;
  v19 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40CE0);
  sub_1E3827828(&qword_1ECF325C0, &qword_1ECF40CE0);
  sub_1E38D2054(&v18, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1E325F6F0(v8, &qword_1ECF40C80);
  }

  else
  {
    sub_1E3ACA34C(v8, v13);

    result = [a1 playlist];
    if (result)
    {
      v16 = result;
      v17 = [result currentMediaItem];

      sub_1E3AC98E0(v17, v13);
      swift_unknownObjectRelease();
      return sub_1E3ACA3B0(v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3AC9C00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1E3ACA760(0, 0, result, *(a2 + 16), 0, a2);
  v6 = 0;
  v7 = *(a2 + 16);
  v8 = v7;
  if (v9)
  {
LABEL_5:
    *a3 = v8;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = 0;
    a3[4] = a2;
    return result;
  }

  if (v7 < result)
  {
    goto LABEL_7;
  }

  v8 = result;
  v6 = v5;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E3AC9D30(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v25 - v11;
  v13 = [a1 currentMediaItem];
  if (!v13)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  v15 = *MEMORY[0x1E69D5B98];
  swift_unknownObjectRetain();
  v16 = MEMORY[0x1E69E6158];
  sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
  sub_1E4123590(v15, v16, &v25);
  swift_unknownObjectRelease();
  v17 = v26;
  if (!v26)
  {
    v19 = [v13 mediaItemURL];
    if (v19)
    {
      v20 = v19;
      sub_1E41FE3C4();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_1E41FE414();
    __swift_storeEnumTagSinglePayload(v8, v21, 1, v22);
    sub_1E327D738(v8, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v22) != 1)
    {
      v18 = sub_1E41FE314();
      v17 = v23;
      (*(*(v22 - 8) + 8))(v12, v22);

      if (a2)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_1E325F6F0(v12, &unk_1ECF363C0);
LABEL_10:

    v18 = 0;
    v17 = 0xE000000000000000;
    if (a2)
    {
      goto LABEL_11;
    }

LABEL_13:
    swift_unknownObjectRelease();
    return v18;
  }

  v18 = v25;
  if ((a2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v25 = 0x206D726177657250;
  v26 = 0xE800000000000000;
  MEMORY[0x1E69109E0](v18, v17);
  swift_unknownObjectRelease();

  return v25;
}

unint64_t sub_1E3AC9FA8()
{
  result = qword_1ECF325B0;
  if (!qword_1ECF325B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF325B0);
  }

  return result;
}

id sub_1E3ACA004(id a1, __int16 a2)
{
  if (HIBYTE(a2) != 255)
  {
    return sub_1E3ACA01C(a1);
  }

  return a1;
}

size_t sub_1E3ACA028(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1E3ACA114(v8, v7);
  v10 = *(type metadata accessor for ClipItem() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3ACA210(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E3ACA114(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325D8);
  v4 = *(type metadata accessor for ClipItem() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3ACA210(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for ClipItem(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for ClipItem();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1E3ACA2E4(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E3ACA028(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3ACA34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClipItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3ACA3B0(uint64_t a1)
{
  v2 = type metadata accessor for ClipItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3ACA40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClipItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3ACA474()
{
  result = qword_1ECF325C8;
  if (!qword_1ECF325C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF325C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatchUpFetchController.CatchUpFetchError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3ACA5C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E3286A7C;

  return sub_1E3AC8E38(v2, v3, v4);
}

uint64_t sub_1E3ACA67C(void *a1, __int16 a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325D0);
  OUTLINED_FUNCTION_17_2(v4);
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325D0);
  if ((a2 & 0x100) != 0)
  {
    return sub_1E42063C4();
  }

  else
  {
    return sub_1E42063D4();
  }
}

uint64_t sub_1E3ACA760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 - result;
  if (__OFSUB__(a4, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = result;
  if (a3 < 1)
  {
    if (v6 <= 0 && v6 > a3)
    {
      return 0;
    }
  }

  else if ((v6 & 0x8000000000000000) == 0 && v6 < a3)
  {
    return 0;
  }

  result += a3;
  if (__OFADD__(v7, a3))
  {
    goto LABEL_18;
  }

  if (a3 < 0 && *(a6 + 16) == v7)
  {
    a2 = *(a6 + 16);
  }

  if (__OFADD__(a2, a3))
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1E3ACA7D0()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3ACA874(__int16 a1)
{
  *(v1 + 104) = 0;
  *(v1 + 98) = a1;
  v2 = sub_1E3C2F9A0();

  sub_1E3ACA8B4();

  return v2;
}

uint64_t sub_1E3ACA8B4()
{
  v13[0] = 0x407C200000000000;
  LOBYTE(v13[1]) = 0;
  v25 = 0;
  v26 = 1;
  v23 = 0;
  v24 = 1;
  v21 = 0x4085000000000000;
  v22 = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v17 = v19;
  v18 = v20;
  sub_1E3C3DE00(v0);
  v13[12] = v15;
  v14 = v16;
  sub_1E3C2FCB8(v13, __src);
  memcpy(v13, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC();
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  __src[0] = *MEMORY[0x1E69DDCE0];
  __src[1] = v1;
  LOBYTE(__src[2]) = 0;
  sub_1E3C2CC78();
  sub_1E3952C58();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E3ACA7D0();
  v13[0] = v3;
  v13[1] = v5;
  v13[2] = v7;
  v13[3] = v9;
  LOBYTE(v13[4]) = 0;
  (*(*v10 + 184))(v13);

  sub_1E3C37CBC(v11, 72);
}

uint64_t sub_1E3ACAA8C()
{
  *(v0 + 104) = 0;
  *(v0 + 98) = 130;
  v1 = sub_1E3C2F9A0();

  sub_1E3ACA8B4();

  return v1;
}

uint64_t sub_1E3ACAAF4()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3ACAB40(char a1)
{
  result = 0x6C6C616D7378;
  switch(a1)
  {
    case 1:
      result = 0x6C6C616D73;
      break;
    case 2:
      result = OUTLINED_FUNCTION_17_67();
      break;
    case 3:
      result = 0x656772616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3ACABC8(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6C616D7378;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C6C616D7378;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x647261646E617473;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6C6C616D73;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x647261646E617473;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3ACAD08()
{
  sub_1E4207B44();
  sub_1E3ACADBC();
  return sub_1E4207BA4();
}

uint64_t sub_1E3ACAD50(char a1)
{
  sub_1E4207B44();
  sub_1E3ACC944(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3ACADBC()
{
  sub_1E4206014();
}

uint64_t sub_1E3ACAE68()
{
  sub_1E4206014();
}

uint64_t sub_1E3ACAFB0(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3ACC944(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3ACB010()
{
  sub_1E4207B44();
  sub_1E3ACADBC();
  return sub_1E4207BA4();
}

uint64_t sub_1E3ACB054@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3ACAAF4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3ACB084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3ACAB40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3ACB0B0()
{
  v1 = v0;
  switch((*(*v0 + 1736))())
  {
    case 4u:
      type metadata accessor for TextLayout();
      v3 = sub_1E383BCC0();
      OUTLINED_FUNCTION_13_18();
      v1[13] = v3;

      OUTLINED_FUNCTION_9_2();
      v5 = *(v4 + 1784);
      v6 = v5();
      if (v6)
      {
        LOBYTE(v401[0]) = 27;
        LOBYTE(v398[0]) = 27;
        LOBYTE(v395[0]) = 3;
        LOBYTE(v392[0]) = 6;
        v7 = OUTLINED_FUNCTION_22_46();
        LOBYTE(v384[0]) = v388[0];
        v15 = OUTLINED_FUNCTION_0_136(v7, v8, v9, v10, v11, v12, v13, v14, v308, v319, v330, v341, 7);
        OUTLINED_FUNCTION_8_78(v15, v16);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v25 = OUTLINED_FUNCTION_7_25(v17, v18, v19, v20, v21, v22, v23, v24, v309, v320, v331, v342, __dst[0]);
        v26(v25, 48);
      }

      v27 = (v5)(v6);
      if (v27)
      {
        *__dst = sub_1E3952C40();
        *&__dst[8] = v28;
        v353[0] = v29;
        v353[1] = v30;
        OUTLINED_FUNCTION_5_109();
        v395[0] = sub_1E3952C40();
        v395[1] = v31;
        v396[0] = v32;
        v396[1] = v33;
        LOBYTE(v397) = 0;
        type metadata accessor for UIEdgeInsets();
        v35 = v34;
        sub_1E3C3DE00(v34);
        OUTLINED_FUNCTION_6_93(v36, v37, v38, v39, v40, v41, v42, v43, *&v308, *&v319, *&v330, *&v341, *__dst, *&__dst[8], *v353, *&v353[1], *&v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, *v380, *&v380[1], *&v381, *(&v381 + 1), *&v382, v383, *v384, *&v384[1], *&v385, *(&v385 + 1), *&v386, v387, *v388, *&v388[1], *&v389, *(&v389 + 1), *&v390, v391, *v392);
        v44 = sub_1E3C3DE00(v35);
        *v380 = *v384;
        v381 = v385;
        LOBYTE(v382) = v386;
        v52 = OUTLINED_FUNCTION_0_136(v44, v45, v46, v47, v48, v49, v50, v51, v310, v321, v332, v343, __dst[0]);
        sub_1E3C2FCB8(v52, v53);
        OUTLINED_FUNCTION_11_80(v54, v55, v56, v57);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v66 = OUTLINED_FUNCTION_7_25(v58, v59, v60, v61, v62, v63, v64, v65, v311, v322, v333, v344, __dst[0]);
        v67(v66, 0);
      }

      v68 = (v5)(v27);
      if (v68)
      {
        OUTLINED_FUNCTION_1_136();
        v69 = OUTLINED_FUNCTION_22_46();
        LOBYTE(v384[0]) = v388[0];
        v77 = OUTLINED_FUNCTION_0_136(v69, v70, v71, v72, v73, v74, v75, v76, v308, v319, v330, v341, __dst[0]);
        OUTLINED_FUNCTION_8_78(v77, v78);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v87 = OUTLINED_FUNCTION_7_25(v79, v80, v81, v82, v83, v84, v85, v86, v312, v323, v334, v345, __dst[0]);
        v88(v87, 54);
      }

      v89 = (v5)(v68);
      if (v89)
      {
        OUTLINED_FUNCTION_30();
        (*(v90 + 1984))(1);
      }

      v91 = (v5)(v89);
      if (v91)
      {
        OUTLINED_FUNCTION_30();
        (*(v92 + 2056))(3, 0);
      }

      v93 = (v5)(v91);
      if (v93)
      {
        v94 = v93;
        sub_1E3755B54();
        v95 = sub_1E4206F24();
        (*(*v94 + 680))(v95);
        goto LABEL_46;
      }

      break;
    case 5u:
      type metadata accessor for TextLayout();
      v216 = sub_1E383BCC0();
      OUTLINED_FUNCTION_13_18();
      v1[13] = v216;

      OUTLINED_FUNCTION_9_2();
      v98 = *(v217 + 1784);
      v218 = v98();
      if (v218)
      {
        LOBYTE(v401[0]) = 15;
        sub_1E3C2FC98();
        OUTLINED_FUNCTION_21_11();
        OUTLINED_FUNCTION_20_6();
        LOBYTE(v380[0]) = v384[0];
        sub_1E3C3DE00(&qword_1F5D549D8);
        OUTLINED_FUNCTION_15_79();
        sub_1E3C2FCB8(v219, v220);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v229 = OUTLINED_FUNCTION_7_25(v221, v222, v223, v224, v225, v226, v227, v228, v308, v319, v330, v341, 22);
        v230(v229, 48);
      }

      v231 = (v98)(v218);
      if (v231)
      {
        OUTLINED_FUNCTION_1_136();
        v232 = OUTLINED_FUNCTION_22_46();
        LOBYTE(v384[0]) = v388[0];
        v240 = OUTLINED_FUNCTION_0_136(v232, v233, v234, v235, v236, v237, v238, v239, v308, v319, v330, v341, __dst[0]);
        OUTLINED_FUNCTION_8_78(v240, v241);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v250 = OUTLINED_FUNCTION_7_25(v242, v243, v244, v245, v246, v247, v248, v249, v316, v327, v338, v349, __dst[0]);
        v251(v250, 54);
      }

      v252 = (v98)(v231);
      if (v252)
      {
        OUTLINED_FUNCTION_30();
        (*(v253 + 1720))(7);
      }

      v254 = (v98)(v252);
      if (v254)
      {
        OUTLINED_FUNCTION_30();
        v255 = OUTLINED_FUNCTION_8_5();
        v256(v255);
      }

      v257 = (v98)(v254);
      if (v257)
      {
        OUTLINED_FUNCTION_30();
        v258 = OUTLINED_FUNCTION_8_5();
        v259(v258);
      }

      v260 = (v98)(v257);
      if (v260)
      {
        OUTLINED_FUNCTION_30();
        v261 = OUTLINED_FUNCTION_8_5();
        v262(v261);
      }

      v263 = (v98)(v260);
      if (v263)
      {
        OUTLINED_FUNCTION_5_109();
        *v395 = xmmword_1E42B8890;
        *v396 = xmmword_1E42B88A0;
        LOBYTE(v397) = 0;
        type metadata accessor for UIEdgeInsets();
        v265 = v264;
        sub_1E3C3DE00(v264);
        OUTLINED_FUNCTION_6_93(v266, v267, v268, v269, v270, v271, v272, v273, *&v308, *&v319, *&v330, *&v341, 0.0, 15.0, 12.0, 15.0, *&v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, *v380, *&v380[1], *&v381, *(&v381 + 1), *&v382, v383, *v384, *&v384[1], *&v385, *(&v385 + 1), *&v386, v387, *v388, *&v388[1], *&v389, *(&v389 + 1), *&v390, v391, *v392);
        v274 = sub_1E3C3DE00(v265);
        *v380 = *v384;
        v381 = v385;
        LOBYTE(v382) = v386;
        v282 = OUTLINED_FUNCTION_0_136(v274, v275, v276, v277, v278, v279, v280, v281, v317, v328, v339, v350, __dst[0]);
        sub_1E3C2FCB8(v282, v283);
        OUTLINED_FUNCTION_11_80(v284, v285, v286, v287);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v296 = OUTLINED_FUNCTION_7_25(v288, v289, v290, v291, v292, v293, v294, v295, v318, v329, v340, v351, __dst[0]);
        v297(v296, 0);
      }

      v165 = (v98)(v263);
      if (!v165)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_30();
      (*(v298 + 1984))(1);
      goto LABEL_43;
    case 6u:
      type metadata accessor for TextLayout();
      v96 = sub_1E383BCC0();
      swift_beginAccess();
      v1[13] = v96;

      OUTLINED_FUNCTION_9_2();
      v98 = *(v97 + 1784);
      v99 = v98();
      if (v99)
      {
        LOBYTE(v401[0]) = 3;
        sub_1E3C2FC98();
        OUTLINED_FUNCTION_21_11();
        OUTLINED_FUNCTION_20_6();
        LOBYTE(v308) = v384[0];
        sub_1E3C3DE00(&qword_1F5D549D8);
        OUTLINED_FUNCTION_15_79();
        sub_1E3C2FCB8(v100, v101);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v110 = OUTLINED_FUNCTION_7_25(v102, v103, v104, v105, v106, v107, v108, v109, v308, v319, v330, v341, 12);
        v111(v110, 48);
      }

      v112 = (v98)(v99);
      if (v112)
      {
        sub_1E3952C94();
        __dst[0] = v113;
        *&__dst[8] = v114;
        v353[0] = v115;
        v353[1] = v116;
        OUTLINED_FUNCTION_5_109();
        *v395 = xmmword_1E42B8830;
        *v396 = xmmword_1E42B8840;
        LOBYTE(v397) = 0;
        *v392 = xmmword_1E42B8850;
        v393 = xmmword_1E42B8860;
        LOBYTE(v394) = 0;
        type metadata accessor for UIEdgeInsets();
        v118 = sub_1E3C3DE00(v117);
        *v384 = *v388;
        v385 = v389;
        LOBYTE(v386) = v390;
        v126 = OUTLINED_FUNCTION_0_136(v118, v119, v120, v121, v122, v123, v124, v125, v308, v319, v330, v341, __dst[0]);
        OUTLINED_FUNCTION_8_78(v126, v127);
        OUTLINED_FUNCTION_11_80(v128, v129, v130, v131);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v140 = OUTLINED_FUNCTION_7_25(v132, v133, v134, v135, v136, v137, v138, v139, v313, v324, v335, v346, __dst[0]);
        v141(v140, 0);
      }

      v142 = (v98)(v112);
      if (v142)
      {
        OUTLINED_FUNCTION_1_136();
        v143 = OUTLINED_FUNCTION_22_46();
        LOBYTE(v384[0]) = v388[0];
        v151 = OUTLINED_FUNCTION_0_136(v143, v144, v145, v146, v147, v148, v149, v150, v308, v319, v330, v341, __dst[0]);
        OUTLINED_FUNCTION_8_78(v151, v152);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v161 = OUTLINED_FUNCTION_7_25(v153, v154, v155, v156, v157, v158, v159, v160, v314, v325, v336, v347, __dst[0]);
        v162(v161, 54);
      }

      v163 = (v98)(v142);
      if (v163)
      {
        OUTLINED_FUNCTION_30();
        (*(v164 + 1984))(1);
      }

      v165 = (v98)(v163);
      if (v165)
      {
        OUTLINED_FUNCTION_30();
        v166 = OUTLINED_FUNCTION_8_5();
        v167(v166);
LABEL_43:
      }

LABEL_44:
      v299 = (v98)(v165);
      if (v299)
      {
        v300 = v299;
        v301 = *sub_1E3E5F58C();
        v302 = *(*v300 + 680);
        v303 = v301;
        v302(v301);
LABEL_46:
      }

      break;
    case 7u:
      v2.n128_u64[0] = 8.0;
      v401[0] = j__OUTLINED_FUNCTION_7_78(v2);
      v401[1] = v168;
      v401[2] = v169;
      v401[3] = v170;
      LOBYTE(v402) = 0;
      *v398 = 0u;
      v399 = 0u;
      LOBYTE(v400) = 1;
      *v395 = 0u;
      *v396 = 0u;
      LOBYTE(v397) = 1;
      v171 = TVAppFeature.isEnabled.getter(10);
      v172.n128_u64[0] = 16.0;
      if (v171)
      {
        v172.n128_f64[0] = 18.0;
      }

      *__dst = j__OUTLINED_FUNCTION_7_78(v172);
      *&__dst[8] = v173;
      v353[0] = v174;
      v353[1] = v175;
      LOBYTE(v354) = 0;
      type metadata accessor for UIEdgeInsets();
      v177 = v176;
      sub_1E3C3DE00(v176);
      OUTLINED_FUNCTION_6_93(v178, v179, v180, v181, v182, v183, v184, v185, *&v308, *&v319, *&v330, *&v341, *__dst, *&__dst[8], *v353, *&v353[1], *&v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, *v380, *&v380[1], *&v381, *(&v381 + 1), *&v382, v383, *v384, *&v384[1], *&v385, *(&v385 + 1), *&v386, v387, *v388, *&v388[1], *&v389, *(&v389 + 1), *&v390, v391, *v392);
      sub_1E3C3DE00(v177);
      *v380 = *v384;
      v381 = v385;
      LOBYTE(v382) = v386;
      sub_1E3C2FCB8(v401, v403);
      OUTLINED_FUNCTION_11_80(v186, v187, v188, v189);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v198 = OUTLINED_FUNCTION_7_25(v190, v191, v192, v193, v194, v195, v196, v197, v315, v326, v337, v348, __dst[0]);
      v199(v198, 1);
      type metadata accessor for ProgressLayout();
      v200 = sub_1E3FB3220();
      swift_beginAccess();
      v1[15] = v200;

      v201 = [objc_opt_self() configurationWithPointSize:4 weight:20.0];
      OUTLINED_FUNCTION_9_2();
      v203 = *(v202 + 1856);
      v204 = *(*v203() + 1952);
      v205 = v201;
      v204(v201);

      v207 = (v203)(v206);
      v208 = [objc_opt_self() whiteColor];
      (*(*v207 + 680))(v208);

      v210 = (v203)(v209);
      memset(__dst, 0, sizeof(__dst));
      __asm { FMOV            V0.2D, #8.0 }

      *v353 = _Q0;
      LOBYTE(v354) = 0;
      (*(*v210 + 160))(__dst);

      break;
    default:
      break;
  }

  v304 = sub_1E3ACC288();
  v403[0] = (*(*v1 + 1784))(v304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B848);
  sub_1E4148DE0(sub_1E3ACCD08);

  OUTLINED_FUNCTION_9_2();
  v306 = (*(v305 + 1856))();
  sub_1E3C37CBC(v306, 36);
}

uint64_t sub_1E3ACBF70(char a1)
{
  v3 = 0x746C7561666564;
  OUTLINED_FUNCTION_13_18();
  v4 = *(v1 + 98);
  *(v1 + 98) = a1;
  OUTLINED_FUNCTION_5_0();
  v5 = 0xE700000000000000;
  v6 = 0x746C7561666564;
  switch(*(v1 + 98))
  {
    case 1:
      v5 = 0xE600000000000000;
      v6 = 0x7478654E7075;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x7374726F7073;
      break;
    case 3:
      v6 = 0x70537478654E7075;
      v5 = 0xEC0000007374726FLL;
      break;
    case 4:
      v5 = 0xE800000000000000;
      v6 = 0x6B6369726276616ELL;
      break;
    case 5:
      v6 = 0x6169726F74696465;
      v5 = 0xE90000000000006CLL;
      break;
    case 6:
      v6 = 0x6867696C746F7073;
      v5 = 0xE900000000000074;
      break;
    case 7:
      v5 = 0xE600000000000000;
      v6 = 0x70756B636F6CLL;
      break;
    case 8:
      v6 = 0x6669636570736E75;
      v5 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(v4)
  {
    case 1:
      v7 = 0xE600000000000000;
      v3 = 0x7478654E7075;
      break;
    case 2:
      v7 = 0xE600000000000000;
      v3 = 0x7374726F7073;
      break;
    case 3:
      v3 = 0x70537478654E7075;
      v7 = 0xEC0000007374726FLL;
      break;
    case 4:
      v7 = 0xE800000000000000;
      v3 = 0x6B6369726276616ELL;
      break;
    case 5:
      v3 = 0x6169726F74696465;
      v7 = 0xE90000000000006CLL;
      break;
    case 6:
      v3 = 0x6867696C746F7073;
      v7 = 0xE900000000000074;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v3 = 0x70756B636F6CLL;
      break;
    case 8:
      v3 = 0x6669636570736E75;
      v7 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  if (v6 == v3 && v5 == v7)
  {
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44_10();

    if ((v9 & 1) == 0)
    {
      return sub_1E3ACB0B0();
    }
  }

  return result;
}

void (*sub_1E3ACC200(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 32) = *(v1 + 98);
  return sub_1E3ACC270;
}

uint64_t sub_1E3ACC288()
{
  if ([objc_opt_self() isTV])
  {
    switch((*(*v0 + 1760))())
    {
      case 2u:
        OUTLINED_FUNCTION_17_67();
        goto LABEL_5;
      case 3u:

        goto LABEL_8;
      default:
LABEL_5:
        v5 = sub_1E42079A4();

        if (v5)
        {
LABEL_8:
          v6.n128_u64[0] = 0x4041000000000000;
        }

        else
        {
          v6.n128_u64[0] = 16.0;
        }

        v11 = j__OUTLINED_FUNCTION_7_78(v6);
        v12 = v7;
        v13 = v8;
        v14 = v9;
        break;
    }
  }

  else
  {
    v1.n128_u64[0] = 8.0;
    v11 = j__OUTLINED_FUNCTION_7_78(v1);
    v12 = v2;
    v13 = v3;
    v14 = v4;
  }

  v15 = 0;
  return (*(*v0 + 184))(&v11);
}

uint64_t sub_1E3ACC3E8(char a1)
{
  v3 = 0x6C6C616D7378;
  OUTLINED_FUNCTION_13_18();
  v4 = *(v1 + 99);
  *(v1 + 99) = a1;
  OUTLINED_FUNCTION_5_0();
  v5 = 0xE600000000000000;
  v6 = 0x6C6C616D7378;
  switch(*(v1 + 99))
  {
    case 1:
      v5 = 0xE500000000000000;
      v6 = 0x6C6C616D73;
      break;
    case 2:
      v5 = 0xE800000000000000;
      v6 = OUTLINED_FUNCTION_17_67();
      break;
    case 3:
      v5 = 0xE500000000000000;
      v6 = 0x656772616CLL;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(v4)
  {
    case 1:
      v7 = 0xE500000000000000;
      v3 = 0x6C6C616D73;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v3 = 0x647261646E617473;
      break;
    case 3:
      v7 = 0xE500000000000000;
      v3 = 0x656772616CLL;
      break;
    default:
      break;
  }

  if (v6 == v3 && v5 == v7)
  {
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44_10();

    if ((v9 & 1) == 0)
    {
      return sub_1E3ACC288();
    }
  }

  return result;
}

void (*sub_1E3ACC548(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 32) = *(v1 + 99);
  return sub_1E3ACC5B8;
}

void sub_1E3ACC5D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t sub_1E3ACC624(__n128 a1, __n128 a2)
{
  v3 = v2;
  nullsub_1(a1, a2);
  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout();
    result = swift_dynamicCastClass();
    if (result)
    {
      v5 = result;
      OUTLINED_FUNCTION_14_0();
      v3[14] = v5;
      swift_retain_n();

      (*(*v3 + 1808))(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B28);
      sub_1E4148DE0(sub_1E3ACC738);
    }
  }

  return result;
}

uint64_t sub_1E3ACC738(uint64_t *a1)
{
  v1 = *a1;
  v2 = *sub_1E3810A0C();

  sub_1E3C37EC8(v1, v2);
}

uint64_t sub_1E3ACC790(__int16 a1)
{
  if (((a1 - 153) & 0xFFF8) != 0)
  {
    return 8;
  }

  else
  {
    return (0x706050408080800uLL >> (8 * (a1 + 103)));
  }
}

uint64_t sub_1E3ACC7F4()
{
  *(v0 + 98) = 512;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E3ACB0B0();

  return v1;
}

uint64_t sub_1E3ACC87C(char a1)
{
  *(v1 + 98) = 512;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  swift_beginAccess();
  *(v1 + 98) = a1;
  v3 = sub_1E3C2F9A0();

  sub_1E3ACB0B0();

  return v3;
}

uint64_t sub_1E3ACC8F8()
{
  v0 = sub_1E4207784();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3ACC944(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x7478654E7075;
      break;
    case 2:
      result = 0x7374726F7073;
      break;
    case 3:
      result = 0x70537478654E7075;
      break;
    case 4:
      result = 0x6B6369726276616ELL;
      break;
    case 5:
      result = 0x6169726F74696465;
      break;
    case 6:
      result = 0x6867696C746F7073;
      break;
    case 7:
      result = 0x70756B636F6CLL;
      break;
    case 8:
      result = 0x6669636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3ACCA54()
{
  result = qword_1EE27E310;
  if (!qword_1EE27E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27E310);
  }

  return result;
}

uint64_t sub_1E3ACCAD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3ACC8F8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3ACCB00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3ACC944(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OverlaySizeStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OverlayLayout.OverlayType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

id sub_1E3ACCD58()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_contentSize);
}

uint64_t sub_1E3ACCDF0(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_setContentSize_, a1, a2);
  return sub_1E3ACCE44();
}

uint64_t sub_1E3ACCE44()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView_contentSizeDidChangeHandler];
  result = swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;

    v5 = objc_msgSendSuper2(&v6, sel_contentSize);
    v4(v5);
    return sub_1E34AF594(v4);
  }

  return result;
}

id sub_1E3ACCEE0(void *a1)
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v4 = (v1 + OBJC_IVAR____TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView_contentSizeDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  v10 = ObjectType;
  v5 = OUTLINED_FUNCTION_2_15();
  v8 = objc_msgSendSuper2(v6, v7, a1, v5, v1, v10);

  return v8;
}

id sub_1E3ACCFA4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView_contentSizeDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1E3ACD07C()
{
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_0_137();
  sub_1E3ACD534(v0, v1);

  return sub_1E42010C4();
}

uint64_t sub_1E3ACD0E8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PlaybackMediaShowcasingMetadataView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32608);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32610);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  swift_retain_n();
  v12 = sub_1E392583C();
  if (!v12)
  {
    goto LABEL_7;
  }

  if (!(*(*v12 + 392))(v12))
  {

LABEL_7:

    goto LABEL_8;
  }

  v24 = a1;
  type metadata accessor for MediaShowcasingMetadataLayout();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    if (sub_1E3CCE274(*(v13 + 120), 4u))
    {
    }

    else
    {
      v16 = sub_1E3CCE274(*(v14 + 120), 5u);

      if ((v16 & 1) == 0)
      {
        sub_1E379EF88(v4);
        sub_1E3ACD47C(v4, v7);
        swift_storeEnumTagMultiPayload();
        sub_1E3ACD4E0();
        OUTLINED_FUNCTION_1_137();
        sub_1E3ACD534(v20, v21);
        sub_1E4201F44();

        sub_1E3ACD57C(v4);
        goto LABEL_15;
      }
    }

    *v7 = sub_1E3A0D4E4();
    v7[1] = v17;
    swift_storeEnumTagMultiPayload();
    sub_1E3ACD4E0();
    OUTLINED_FUNCTION_1_137();
    sub_1E3ACD534(v18, v19);
    swift_retain_n();
    sub_1E4201F44();

LABEL_15:
    v22 = v24;
    sub_1E3ACD5D8(v11, v24);
    return __swift_storeEnumTagSinglePayload(v22, 0, 1, v8);
  }

  a1 = v24;
LABEL_8:

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
}

uint64_t sub_1E3ACD47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3ACD4E0()
{
  result = qword_1EE2416C8[0];
  if (!qword_1EE2416C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2416C8);
  }

  return result;
}

uint64_t sub_1E3ACD534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3ACD57C(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackMediaShowcasingMetadataView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3ACD5D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3ACD67C()
{
  result = qword_1EE288FB8;
  if (!qword_1EE288FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32618);
    sub_1E3ACD700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FB8);
  }

  return result;
}

unint64_t sub_1E3ACD700()
{
  result = qword_1EE288FC0;
  if (!qword_1EE288FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32610);
    sub_1E3ACD4E0();
    sub_1E3ACD534(&qword_1EE23EF78, type metadata accessor for PlaybackMediaShowcasingMetadataView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FC0);
  }

  return result;
}

void sub_1E3ACD7BC(void *a1)
{
  v2 = a1;
  v3 = sub_1E4205ED4();

  [v1 setObject:v2 forKeyedSubscript:v3];
}

void sub_1E3ACD844(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32620);
    v2 = sub_1E4207A34();
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1E4205ED4();

  [v1 setObject:v2 forKeyedSubscript:v3];
  swift_unknownObjectRelease();
}

uint64_t sub_1E3ACD91C()
{
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v1 = sub_1E3C2F9A0();

  v2 = *sub_1E37BD068();
  (*(v2 + 1696))(2);

  v3 = *(v1 + 104);

  v4 = *sub_1E3E5FD88();
  v5 = *(*v3 + 680);
  v6 = v4;
  v5(v4);

  OUTLINED_FUNCTION_0_36();
  v8 = *(v7 + 1792);

  v8(10);

  OUTLINED_FUNCTION_0_36();
  v10 = *(v9 + 1984);

  v10(1);

  OUTLINED_FUNCTION_0_36();
  v12 = *(v11 + 1720);

  v12(7);

  v13 = *sub_1E374EA2C();
  (*(v13 + 1696))(17);

  v14 = *(v1 + 112);

  v15 = *sub_1E3E5FDEC();
  v16 = *(*v14 + 680);
  v17 = v15;
  v16(v15);

  v18 = *(**(v1 + 112) + 1984);

  v18(1);

  v19 = *(**(v1 + 112) + 1720);

  v19(7);

  return v1;
}

id sub_1E3ACDC74()
{
  v1 = OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() systemBlueColor];
    v6 = OUTLINED_FUNCTION_17_1();
    [v6 v7];

    v8 = [objc_opt_self() systemFontOfSize_];
    v9 = OUTLINED_FUNCTION_17_1();
    [v9 v10];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_1E3ACDD94(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    type metadata accessor for MetricsCellPresentationUtilities();
    v9 = sub_1E3B625A8();
    [v8 setTextColor_];

    v10 = [objc_opt_self() systemFontOfSize_];
    [v8 setFont_];

    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v7 + v3);
    *(v7 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

void sub_1E3ACDE98()
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel);
  sub_1E42076B4();
  __break(1u);
}

void *sub_1E3ACDF20(uint64_t a1)
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel);
  if (v3)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for MetricsSessionCell();
  v5 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v4);

  v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xB8);
  v7 = v5;
  v6();

  return v7;
}

void sub_1E3ACE060()
{
  [v0 setAccessoryType_];
  v1 = [v0 contentView];
  v2 = sub_1E3ACDC74();
  v3 = OUTLINED_FUNCTION_17_1();
  [v3 v4];

  v5 = [v0 contentView];
  v6 = sub_1E3ACDD74();
  v7 = OUTLINED_FUNCTION_17_1();
  [v7 v8];

  v9 = [v0 contentView];
  v10 = sub_1E3ACDD84();
  v11 = OUTLINED_FUNCTION_17_1();
  [v11 v12];

  v13 = OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel;
  v14 = [*&v0[OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___sessionTitleLabel] leadingAnchor];
  v15 = OUTLINED_FUNCTION_0_115();
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 &selRef_loadFairPlayStreamingKeyRequests_completion_ + 1];
  v18 = OUTLINED_FUNCTION_17_1();
  v20 = [v18 v19];

  OUTLINED_FUNCTION_1_138();
  v21 = [*&v0[v13] trailingAnchor];
  v22 = OUTLINED_FUNCTION_0_115();
  v23 = OUTLINED_FUNCTION_3_114(v22);

  v24 = [v23 centerXAnchor];
  v25 = OUTLINED_FUNCTION_17_1();
  v27 = [v25 v26];

  OUTLINED_FUNCTION_1_138();
  v28 = [*&v0[v13] topAnchor];
  v29 = OUTLINED_FUNCTION_0_115();
  v30 = OUTLINED_FUNCTION_3_114(v29);

  v31 = [v30 &selRef_validationResults_fromIndex_];
  v32 = OUTLINED_FUNCTION_17_1();
  v34 = [v32 v33];

  OUTLINED_FUNCTION_1_138();
  v35 = [*&v0[v13] heightAnchor];
  v36 = OUTLINED_FUNCTION_0_115();
  v37 = OUTLINED_FUNCTION_3_114(v36);

  v38 = [v37 &selRef_imageCellStyle + 2];
  v39 = OUTLINED_FUNCTION_17_1();
  v41 = [v39 v40];

  OUTLINED_FUNCTION_1_138();
  v42 = OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___startDateLabel;
  v43 = [*&v0[OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___startDateLabel] leadingAnchor];
  v44 = OUTLINED_FUNCTION_0_115();
  v45 = OUTLINED_FUNCTION_3_114(v44);

  v46 = [v45 leadingAnchor];
  v47 = OUTLINED_FUNCTION_17_1();
  v49 = [v47 v48];

  OUTLINED_FUNCTION_1_138();
  v50 = [*&v0[v42] trailingAnchor];
  v51 = OUTLINED_FUNCTION_0_115();
  v52 = OUTLINED_FUNCTION_3_114(v51);

  v53 = [v52 centerXAnchor];
  v54 = OUTLINED_FUNCTION_17_1();
  v56 = [v54 v55];

  OUTLINED_FUNCTION_1_138();
  v57 = [*&v0[v42] bottomAnchor];
  v58 = OUTLINED_FUNCTION_0_115();
  v59 = OUTLINED_FUNCTION_3_114(v58);

  v60 = [v59 bottomAnchor];
  v61 = OUTLINED_FUNCTION_17_1();
  v63 = [v61 v62];

  OUTLINED_FUNCTION_1_138();
  v64 = [*&v0[v42] heightAnchor];
  v65 = OUTLINED_FUNCTION_0_115();
  v66 = OUTLINED_FUNCTION_3_114(v65);

  v67 = [v66 heightAnchor];
  v68 = OUTLINED_FUNCTION_17_1();
  v70 = [v68 v69];

  OUTLINED_FUNCTION_1_138();
  v71 = OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___numEventsLabel;
  v72 = [*&v0[OBJC_IVAR____TtC8VideosUI18MetricsSessionCell____lazy_storage___numEventsLabel] trailingAnchor];
  v73 = OUTLINED_FUNCTION_0_115();
  v74 = OUTLINED_FUNCTION_3_114(v73);

  v75 = [v74 trailingAnchor];
  v76 = OUTLINED_FUNCTION_17_1();
  v78 = [v76 v77];

  OUTLINED_FUNCTION_1_138();
  v79 = [*&v0[v71] centerYAnchor];
  v80 = OUTLINED_FUNCTION_0_115();
  v81 = OUTLINED_FUNCTION_3_114(v80);

  v82 = [v81 centerYAnchor];
  v83 = OUTLINED_FUNCTION_17_1();
  v85 = [v83 v84];

  OUTLINED_FUNCTION_1_138();
  v86 = [*&v0[v71] topAnchor];
  v87 = OUTLINED_FUNCTION_0_115();
  v88 = OUTLINED_FUNCTION_3_114(v87);

  v89 = [v88 topAnchor];
  v90 = OUTLINED_FUNCTION_17_1();
  v92 = [v90 v91];

  OUTLINED_FUNCTION_1_138();
  v93 = [*&v0[v71] bottomAnchor];
  v94 = OUTLINED_FUNCTION_0_115();
  v95 = [v94 layoutMarginsGuide];

  v96 = [v95 bottomAnchor];
  v97 = [v9 constraintEqualToAnchor_];

  [v97 setActive_];
}

void sub_1E3ACE7BC(uint64_t a1, void *a2)
{
  v3 = sub_1E3ACDC74();
  v4 = sub_1E4207944();
  MEMORY[0x1E69109E0](v4);

  sub_1E390E860(0x206E6F6973736553, 0xE800000000000000, v3);

  v5 = sub_1E3ACDD84();
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xB8);
  v6();

  v15 = sub_1E4207944();
  v16 = v7;
  v8 = MEMORY[0x1E69109E0](0x746E65766520, 0xE600000000000000);
  v9 = *((v6)(v8) + 16);

  if (v9 <= 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 115;
  }

  if (v9 <= 1)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE100000000000000;
  }

  MEMORY[0x1E69109E0](v10, v11);

  sub_1E390E860(v15, v16, v5);

  v12 = sub_1E3ACDD74();
  type metadata accessor for MetricsCellPresentationUtilities();
  v13 = sub_1E3B622D4(*(a2 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_processStartTime), 0, 0);
  sub_1E390E860(v13, v14, v12);
}

id sub_1E3ACE97C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsSessionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3ACEA08()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_DF4FEADE0595972FE8D162EA68024A1324FeaturedLockupInteractor__identifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3ACEAB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  type metadata accessor for FeaturedLockupCell();
  *(v0 + 16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + 24) = 2;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 63) = 0;
  v5 = OBJC_IVAR____TtC8VideosUIP33_DF4FEADE0595972FE8D162EA68024A1324FeaturedLockupInteractor__identifier;
  v7[0] = 0xD000000000000018;
  v7[1] = 0x80000001E42B8C90;
  sub_1E4200634();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t sub_1E3ACEBF4()
{
  type metadata accessor for FeaturedLockupInteractor();
  v0 = swift_allocObject();
  sub_1E3ACEAB8();
  return v0;
}

void *sub_1E3ACEC30@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = memcpy((a3 + 8), a2, 0xC3uLL);
  *(a3 + 208) = sub_1E3ACEBF4;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  return result;
}

id sub_1E3ACEC80()
{
  type metadata accessor for FeaturedLockupInteractor();
  sub_1E3ACEEE8();
  v1 = sub_1E4200BC4();
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  if (*(v0 + 64))
  {
    v5 = v3;
  }

  else
  {
    v5 = *(v0 + 56);
  }

  if (*(v0 + 80))
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v0 + 72);
  }

  sub_1E3DF9E68(__src);
  *__src = v5;
  *&__src[1] = v6;
  LOBYTE(__src[2]) = 0;
  BYTE1(__src[5]) = 1;
  v16[0] = sub_1E3D43D3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF390E0);
  sub_1E4148DE0(sub_1E37CCD5C);

  memcpy(__dst, __src, 0x52uLL);
  memcpy(v16, __src, 0x52uLL);
  sub_1E37CCDA0(__dst, v13);
  sub_1E37CCDFC(v16);
  memcpy(__src, __dst, 0x52uLL);
  memcpy(v16, __src, 0x52uLL);
  type metadata accessor for FeaturedLockupCell();
  v7 = *(v1 + 16);
  __dst[0] = 2;
  memset(&__dst[1], 0, 35);
  v8 = v7;
  v9 = sub_1E40BCBE0(v2, v7, v16);
  sub_1E37CCDFC(__src);

  v10 = *(v1 + 16);
  *(v1 + 16) = v9;
  v11 = v9;

  if (!v9)
  {
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  return v11;
}

uint64_t type metadata accessor for FeaturedLockupInteractor()
{
  result = qword_1EE297E38;
  if (!qword_1EE297E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3ACEEE8()
{
  result = qword_1ECF55740[0];
  if (!qword_1ECF55740[0])
  {
    type metadata accessor for FeaturedLockupInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF55740);
  }

  return result;
}

unint64_t sub_1E3ACEF44(uint64_t a1)
{
  result = sub_1E3ACEF6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3ACEF6C()
{
  result = qword_1ECF32628;
  if (!qword_1ECF32628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32628);
  }

  return result;
}

unint64_t sub_1E3ACEFC4()
{
  result = qword_1EE2830F0;
  if (!qword_1EE2830F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2830F0);
  }

  return result;
}

uint64_t sub_1E3ACF018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3ACF394();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3ACF064()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3ACF394();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E3ACF138()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3ACEF6C();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3ACF18C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3ACEF6C();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3ACF1E0()
{
  sub_1E3ACEF6C();
  sub_1E4201F04();
  __break(1u);
}

void sub_1E3ACF210()
{
  sub_1E3846618();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3ACF2C8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 225))
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

uint64_t sub_1E3ACF308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
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

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3ACF394()
{
  result = qword_1ECF32630;
  if (!qword_1ECF32630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32630);
  }

  return result;
}

void *sub_1E3ACF408(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v11 = (*(*a1 + 488))();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (a2)
  {
    type metadata accessor for UnifiedOverlayView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = a2;
    }
  }

  else
  {
    v13 = 0;
  }

  *__src = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32638);
  sub_1E4148C68(sub_1E3AD1E10, v16, &v345);

  v15 = v345;
  __src[0] = 0;
  v17 = (*a1 + 776);
  v317 = *v17;
  (*v17)(&v345, __src, &unk_1F5D5E068, &off_1F5D5CAD8);
  v325 = a1;
  v320 = a4;
  v321 = a5;
  if (*(&v346 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && sub_1E3ACAAF4() != 4)
    {
      OUTLINED_FUNCTION_47_0();
      (*(v18 + 1800))();
    }
  }

  else
  {
    sub_1E325F6F0(&v345, &unk_1ECF296E0);
  }

  OUTLINED_FUNCTION_12_5();
  v20 = *(v19 + 368);

  v20(v21);
  v22 = sub_1E373E010(23, v12);
  v333 = v12;
  if (!v22)
  {
LABEL_25:
    type metadata accessor for UIFactory();
    OUTLINED_FUNCTION_18_1();
    v42 += 63;
    v43 = *v42;
    v44 = (*v42)();
    v31 = sub_1E3280A90(0, &qword_1EE23AD40);
    OUTLINED_FUNCTION_2_110();
    OUTLINED_FUNCTION_15_80();
    sub_1E393D92C(v45, v46, v47, v48, v31);

    v49 = MEMORY[0x1E69E7D40];
    sub_1E325F6F0(&v345, &qword_1ECF296C0);
    OUTLINED_FUNCTION_36_3();
    v50 = OUTLINED_FUNCTION_8_10();
    v52 = v51(v50);
    v53 = (v43)(v52);
    if (!v53)
    {
      goto LABEL_33;
    }

    v34 = v53;
    OUTLINED_FUNCTION_47_0();
    v57 = (*(v54 + 1864))() && (OUTLINED_FUNCTION_30(), v56 = (*(v55 + 936))(), , v56 != 2) && (v56 & 1) != 0 || v22 == 0;
    [v34 setHidden_];
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_47_0();
  v24 = *(v23 + 1864);

  if (!(v24)(v25))
  {

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_30();
  v27 = (*(v26 + 2408))();

  __src[0] = 35;
  v28 = *(*v22 + 776);
  v28(&v345, __src, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!*(&v346 + 1))
  {
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

  v329 = *__src;
  __src[0] = 36;
  v28(&v345, __src, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!*(&v346 + 1))
  {
LABEL_23:

    sub_1E325F6F0(&v345, &unk_1ECF296E0);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_1E3F1E07C(v329, *__src);
  if (!v30)
  {

    goto LABEL_25;
  }

  v330 = v30;
  v326 = v29;
  v31 = sub_1E3280A90(0, &qword_1EE23AD40);
  OUTLINED_FUNCTION_36_3();
  v33 = *((*MEMORY[0x1E69E7D40] & v32) + 0x1F8);
  v34 = v27;
  v35 = v33();
  sub_1E3810954(v326, v330, v34, v35);
  OUTLINED_FUNCTION_36_3();
  v37 = (*((*MEMORY[0x1E69E7D40] & v36) + 0x200))();
  v331 = v33;
  v38 = (v33)(v37);
  if (!v38)
  {
    goto LABEL_211;
  }

  v39 = v38;
  if (!v24())
  {
    goto LABEL_209;
  }

  OUTLINED_FUNCTION_30();
  v327 = (*(v40 + 936))();

  for (i = v327; ; i = 0)
  {
    [v39 setHidden_];

LABEL_211:
    v311 = v331();
    if (v311)
    {
      v312 = v311;
      if (v24())
      {
        OUTLINED_FUNCTION_30();
        v314 = (*(v313 + 648))();
      }

      else
      {
        v314 = 5;
      }

      sub_1E393EC18(v314);

      v34 = v312;
    }

    else
    {
    }

LABEL_32:
    v49 = MEMORY[0x1E69E7D40];

LABEL_33:

    type metadata accessor for UIFactory();
    v58 = sub_1E373E010(15, v333);
    OUTLINED_FUNCTION_36_3();
    v60 = *((*v49 & v59) + 0x210);
    v61 = v60();
    sub_1E3280A90(0, &qword_1EE23AD40);
    OUTLINED_FUNCTION_2_110();
    sub_1E393D92C(v58, v61, v62, 0, v31);

    sub_1E325F6F0(&v345, &qword_1ECF296C0);
    OUTLINED_FUNCTION_36_3();
    v63 = OUTLINED_FUNCTION_8_10();
    v65 = v64(v63);
    v66 = (v60)(v65);
    if (v66)
    {
      v67 = v66;
      OUTLINED_FUNCTION_47_0();
      if ((*(v68 + 1888))() && (OUTLINED_FUNCTION_30(), v70 = (*(v69 + 936))(), , v70 != 2) && (v70 & 1) != 0 || !sub_1E373E010(15, v333))
      {
        v71 = 1;
      }

      else
      {

        v71 = 0;
      }

      [v67 setHidden_];
    }

    v72 = sub_1E373E010(36, v333);
    OUTLINED_FUNCTION_12_5();
    v73 += 69;
    v74 = *v73;
    v75 = (*v73)();
    sub_1E3280A90(0, &qword_1EE23AE80);
    OUTLINED_FUNCTION_2_110();
    sub_1E393D92C(v72, v75, v76, 0, v77);

    sub_1E325F6F0(&v345, &qword_1ECF296C0);
    OUTLINED_FUNCTION_36_3();
    v78 = OUTLINED_FUNCTION_8_10();
    v80 = v79(v78);
    v81 = (v74)(v80);
    if (v81)
    {
      v82 = v81;
      OUTLINED_FUNCTION_47_0();
      v84 = (*(v83 + 1984))();
      v85 = (*(*v84 + 936))();

      if ((v85 == 2 || (v85 & 1) == 0) && sub_1E373E010(36, v333))
      {

        v86 = 0;
      }

      else
      {
        v86 = 1;
      }

      [v82 setHidden_];
    }

    v87 = sub_1E373E010(44, v333);
    OUTLINED_FUNCTION_12_5();
    v88 += 75;
    v89 = *v88;
    v90 = (*v88)();
    sub_1E3280A90(0, &qword_1EE23B360);
    OUTLINED_FUNCTION_2_110();
    v322 = v91;
    sub_1E393D92C(v87, v90, v92, 0, v91);

    sub_1E325F6F0(&v345, &qword_1ECF296C0);
    OUTLINED_FUNCTION_36_3();
    v93 = OUTLINED_FUNCTION_8_10();
    v95 = v94(v93);
    v96 = (v89)(v95);
    if (v96)
    {
      v97 = v96;
      OUTLINED_FUNCTION_47_0();
      v99 = (*(v98 + 2008))();
      v100 = (*(*v99 + 936))();

      if ((v100 == 2 || (v100 & 1) == 0) && sub_1E373E010(44, v333))
      {

        v101 = 0;
      }

      else
      {
        v101 = 1;
      }

      [v97 setHidden_];
    }

    v102 = a3;
    sub_1E373E010(44, v333);
    OUTLINED_FUNCTION_12_5();
    (*(v103 + 776))();
    v104 = sub_1E373E010(115, v333);
    v105 = v104 == 0;
    v331 = v104;
    if (v104)
    {
      OUTLINED_FUNCTION_47_0();
      v107 = *(v106 + 392);

      v109 = v107(v108);

      if (v109)
      {
        type metadata accessor for ProgressLayout();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_30();
          (*(v110 + 1776))(0);
        }
      }
    }

    v111 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_12_5();
    v112 += 54;
    v113 = *v112;
    v114 = (*v112)();
    type metadata accessor for StyledProgressBarView();
    OUTLINED_FUNCTION_2_110();
    OUTLINED_FUNCTION_15_80();
    sub_1E393D92C(v115, v116, v117, v118, v119);

    sub_1E325F6F0(&v345, &qword_1ECF296C0);
    OUTLINED_FUNCTION_36_3();
    v120 = OUTLINED_FUNCTION_8_10();
    v122 = v121(v120);
    v123 = (v113)(v122);
    if (v123)
    {
      v124 = v123;
      (*(*v102 + 2056))();
      OUTLINED_FUNCTION_30();
      v126 = (*(v125 + 936))();

      if (v126 != 2 && (v126 & 1) != 0)
      {
        v105 = 1;
      }

      [v124 setHidden_];
    }

    v323 = v102;
    sub_1E3DF9E68(&v345);
    v342 = v345;
    v343 = v346;
    v344 = v347;
    v340[0] = *v348;
    *(v340 + 7) = *&v348[7];
    v127 = v349;
    if ((a6 & 0xFF00) == 0x200)
    {
      v128 = 0;
    }

    else
    {
      v128 = v320;
    }

    if ((a6 & 0xFF00) == 0x200)
    {
      v129 = 0;
    }

    else
    {
      v129 = v321;
    }

    v341 = ((a6 & 0xFF00) == 512) | a6 & 1;
    sub_1E373E010(32, v333);
    OUTLINED_FUNCTION_36_3();
    v131 = *((*v111 & v130) + 0x1C8);
    v132 = v131();
    *__src = v345;
    *&__src[16] = v346;
    *&__src[32] = v347;
    v319 = v129;
    v320 = v128;
    *&__src[48] = v128;
    *&__src[56] = v129;
    __src[64] = v341;
    *&__src[65] = *v348;
    *&__src[72] = *&v348[7];
    __src[80] = 1;
    LODWORD(v321) = v127;
    __src[81] = v127;
    *&__dst[24] = &unk_1F5D869A0;
    *&__dst[32] = &off_1F5D868A0;
    *__dst = swift_allocObject();
    memcpy((*__dst + 16), __src, 0x52uLL);
    sub_1E37CCDA0(__src, v338);
    OUTLINED_FUNCTION_15_80();
    sub_1E393D92C(v133, v134, v135, v136, v322);

    sub_1E325F6F0(__dst, &qword_1ECF296C0);
    OUTLINED_FUNCTION_36_3();
    v137 = OUTLINED_FUNCTION_8_10();
    v139 = v138(v137);
    v315 = v131;
    v140 = (v131)(v139);
    if (v140)
    {
      v141 = v140;
      if ((*(*v102 + 1912))() && (OUTLINED_FUNCTION_30(), v143 = (*(v142 + 936))(), , v143 != 2) && (v143 & 1) != 0 || !sub_1E373E010(32, v333))
      {
        v144 = 1;
      }

      else
      {

        v144 = 0;
      }

      v111 = MEMORY[0x1E69E7D40];
      [v141 setHidden_];
    }

    v145 = sub_1E373E010(40, v333);
    v146 = *((*v111 & *v15) + 0x1E0);
    v147 = v146(v145);
    v338[0] = v342;
    v338[1] = v343;
    v338[2] = v344;
    *&v338[3] = v128;
    *(&v338[3] + 1) = v129;
    LOBYTE(v338[4]) = v341;
    *(&v338[4] + 1) = v340[0];
    *(&v338[4] + 1) = *(v340 + 7);
    LOBYTE(v338[5]) = 1;
    BYTE1(v338[5]) = v127;
    *(&v351[1] + 1) = &unk_1F5D869A0;
    *&v351[2] = &off_1F5D868A0;
    *&v351[0] = swift_allocObject();
    memcpy((*&v351[0] + 16), v338, 0x52uLL);
    sub_1E37CCDA0(v338, __dst);
    OUTLINED_FUNCTION_15_80();
    sub_1E393D92C(v148, v149, v150, v151, v322);

    v152 = MEMORY[0x1E69E7D40];

    sub_1E325F6F0(v351, &qword_1ECF296C0);
    OUTLINED_FUNCTION_36_3();
    v153 = OUTLINED_FUNCTION_8_10();
    v155 = v154(v153);
    v316 = v146;
    v156 = v146(v155);
    if (!v156)
    {

      v162 = v331;
      if (!v331)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v157 = v156;
    if (*(*v102 + 1936))() && (OUTLINED_FUNCTION_30(), v159 = (*(v158 + 936))(), , v159 != 2) && (v159)
    {
    }

    else
    {
      v160 = sub_1E373E010(40, v333);

      if (v160)
      {

        v161 = 0;
        goto LABEL_89;
      }
    }

    v161 = 1;
LABEL_89:
    v162 = v331;
    [v157 setHidden_];

    if (!v331)
    {
LABEL_87:
      memset(__dst, 0, 32);
      goto LABEL_92;
    }

LABEL_90:
    LOBYTE(v351[0]) = 36;
    v163 = *(*v162 + 776);

    v164 = OUTLINED_FUNCTION_11_81();
    v163(v164);

    if (*&__dst[24])
    {
      v165 = OUTLINED_FUNCTION_9_80();
      OUTLINED_FUNCTION_13_84(v165);
      goto LABEL_93;
    }

LABEL_92:
    sub_1E325F6F0(__dst, &unk_1ECF296E0);
LABEL_93:
    OUTLINED_FUNCTION_18_1();
    (*(v166 + 992))();
    if (v162)
    {
      LOBYTE(v351[0]) = 35;
      v167 = *(*v162 + 776);

      v168 = OUTLINED_FUNCTION_11_81();
      v167(v168);

      v169 = v317;
      if (*&__dst[24])
      {
        v170 = OUTLINED_FUNCTION_9_80();
        OUTLINED_FUNCTION_13_84(v170);
        goto LABEL_98;
      }
    }

    else
    {
      memset(__dst, 0, 32);
      v169 = v317;
    }

    sub_1E325F6F0(__dst, &unk_1ECF296E0);
LABEL_98:
    OUTLINED_FUNCTION_18_1();
    (*(v171 + 1016))();
    LOBYTE(v351[0]) = 2;
    v172 = OUTLINED_FUNCTION_11_81();
    v169(v172);
    if (*&__dst[24])
    {
      if (OUTLINED_FUNCTION_9_80())
      {
        OUTLINED_FUNCTION_18_1();
        (*(v173 + 848))();
      }
    }

    else
    {
      sub_1E325F6F0(__dst, &unk_1ECF296E0);
    }

    LOBYTE(v351[0]) = 3;
    v174 = OUTLINED_FUNCTION_11_81();
    (v169)(v174, &unk_1F5D5E068, &off_1F5D5CAD8);
    if (*&__dst[24])
    {
      a3 = v323;
      if (OUTLINED_FUNCTION_9_80())
      {
        OUTLINED_FUNCTION_18_1();
        (*(v175 + 872))();
      }
    }

    else
    {
      sub_1E325F6F0(__dst, &unk_1ECF296E0);
      a3 = v323;
    }

    if (sub_1E373F6E0())
    {
      v176 = 1;
    }

    else
    {
      v176 = sub_1E373F6E0();
    }

    v177 = sub_1E373F6E0();
    v178 = v177;
    if (v176 & 1) != 0 || (v177)
    {
      *&__dst[24] = &unk_1F5D5E068;
      *&__dst[32] = &off_1F5D5CAD8;
      __dst[0] = 4;
      v185 = j__OUTLINED_FUNCTION_18();
      v184 = v325;
      v186 = sub_1E39C29F0(__dst, v185 & 1);
      v187 = __swift_destroy_boxed_opaque_existential_1(__dst);
      if ((v186 & 1) != 0 && ((v188 = v316(v187)) != 0 || (v188 = v315()) != 0))
      {

        v189 = 1;
      }

      else
      {
        v189 = 0;
      }

      OUTLINED_FUNCTION_18_1();
      v191 = (*(v190 + 648))();
      if (!v191)
      {
        type metadata accessor for OverlayProtectionView();
        v191 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
      }

      v192 = v191;
      OUTLINED_FUNCTION_8_9();
      v194 = (*(v193 + 160))();
      if (!v194)
      {
        type metadata accessor for OverlayViewGradientFactory();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v195 = swift_allocObject();
        *(v195 + 16) = xmmword_1E429DCC0;
        v196 = objc_opt_self();
        *(v195 + 32) = [v196 clearColor];
        v197 = [v196 blackColor];
        v198 = [v197 colorWithAlphaComponent_];

        *(v195 + 40) = v198;
        v194 = sub_1E38E264C(a3, v195);
        v184 = v325;
        v152 = MEMORY[0x1E69E7D40];
      }

      OUTLINED_FUNCTION_8_9();
      (*(v199 + 168))(v194);
      OUTLINED_FUNCTION_8_9();
      (*(v200 + 192))();
      v201 = (*((*v152 & *v192) + 0x108))(v189 & (v178 ^ 1u));
      v202 = 55.0;
      if ((*(*a3 + 840))(v201))
      {
        OUTLINED_FUNCTION_30();
        v204 = (*(v203 + 304))();
        v206 = v205;

        if ((v206 & 1) == 0)
        {
          v202 = *&v204;
        }
      }

      OUTLINED_FUNCTION_8_9();
      (*(v207 + 408))(v202);
      OUTLINED_FUNCTION_36_3();
      v209 = *((*v152 & v208) + 0x290);
      v210 = v192;
      v209(v192);
    }

    else
    {
      v179 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_12_5();
      v180 = OUTLINED_FUNCTION_12_75();
      v181(v180);
      OUTLINED_FUNCTION_36_3();
      v183 = (*((*v179 & v182) + 0x2A8))(0);
      v184 = v325;
    }

    v211 = (*(*v184 + 488))(v183);
    if (!v211)
    {
      goto LABEL_198;
    }

    v212 = v211;
    v24 = (v211 + 64);
    v213 = 1 << *(v211 + 32);
    v214 = -1;
    if (v213 < 64)
    {
      v214 = ~(-1 << v213);
    }

    v39 = v214 & *(v211 + 64);
    v31 = (v213 + 63) >> 6;

    v215 = 0;
    if (v39)
    {
      break;
    }

LABEL_130:
    while (1)
    {
      v34 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        break;
      }

      if (v34 >= v31)
      {

        v216 = 0;
        goto LABEL_137;
      }

      v39 = *(v24 + v34);
      ++v215;
      if (v39)
      {
        goto LABEL_133;
      }
    }

    __break(1u);
LABEL_209:
    ;
  }

  while (1)
  {
    v34 = v215;
LABEL_133:
    v216 = *(*(v212 + 56) + 8 * (__clz(__rbit64(v39)) | (v34 << 6)));

    if (sub_1E385050C())
    {
      break;
    }

    v39 &= v39 - 1;
    v215 = v34;
    if (!v39)
    {
      goto LABEL_130;
    }
  }

LABEL_137:
  if (sub_1E373F6E0())
  {

    v217 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_12_5();
    v218 += 78;
    v219 = *v218;
    v220 = (*v218)();
    sub_1E3280A90(0, &unk_1EE23B210);
    OUTLINED_FUNCTION_5_110();
    sub_1E393D92C(v216, v220, v221, 0, v222);

    sub_1E325F6F0(__dst, &qword_1ECF296C0);
    OUTLINED_FUNCTION_36_3();
    v223 = OUTLINED_FUNCTION_8_10();
    v225 = v224(v223);
    v226 = (v219)(v225);
    if (v226)
    {
      v227 = v226;
      v228 = [v226 rentalExpirationLabel];

      if (v228)
      {

        v229 = v219();
        if (v229)
        {
          v230 = v229;
          [v229 setDelegate_];
        }
      }
    }

    v231 = v219();
    if (v231)
    {
      v232 = v231;
      OUTLINED_FUNCTION_47_0();
      v236 = (*(v233 + 1960))() && (OUTLINED_FUNCTION_30(), v235 = (*(v234 + 936))(), , v235 != 2) && (v235 & 1) != 0 || v216 == 0;
      [v232 setHidden_];
    }

    OUTLINED_FUNCTION_12_5();
    v255 = OUTLINED_FUNCTION_12_75();
    v256(v255);
    OUTLINED_FUNCTION_36_3();
    (*((*v217 & v257) + 0x2D8))(0);
    goto LABEL_197;
  }

  OUTLINED_FUNCTION_12_5();
  v237 += 78;
  v238 = *v237;
  v239 = (*v237)();
  sub_1E3280A90(0, &unk_1EE23B210);
  OUTLINED_FUNCTION_5_110();
  sub_1E393D92C(v216, v239, v240, 0, v241);

  sub_1E325F6F0(__dst, &qword_1ECF296C0);
  OUTLINED_FUNCTION_36_3();
  v242 = OUTLINED_FUNCTION_8_10();
  v244 = v243(v242);
  v245 = (v238)(v244);
  if (v245)
  {
    v246 = v245;
    [v245 setVuiAlpha_];
  }

  OUTLINED_FUNCTION_47_0();
  v248 = (*(v247 + 1960))();
  v251 = v248 && (OUTLINED_FUNCTION_30(), v250 = (*(v249 + 936))(), v248 = , v250 != 2) && (v250 & 1) != 0 || v216 == 0;
  v252 = (v238)(v248);
  if (v252)
  {
    v253 = v252;
    [v252 setHidden_];
  }

  if (v251)
  {
    v254 = 0;
  }

  else
  {
    v254 = sub_1E3EB8C74();
  }

  if ((a6 & 0x100) != 0)
  {
    if (OUTLINED_FUNCTION_14_90() && (OUTLINED_FUNCTION_30(), v263 = (*(v262 + 392))(), v264 = , v263) && (v265 = (*(*v263 + 936))(v264), , v265 != 2) && (v265 & 1) != 0 || !OUTLINED_FUNCTION_14_90())
    {

      v267 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_12_5();
      v268 = OUTLINED_FUNCTION_12_75();
      v269(v268);
      OUTLINED_FUNCTION_36_3();
      v271 = (*((*v267 & v270) + 0x2B8))();
      if (v271)
      {
        v272 = v271;
        [v271 vui_removeFromSuperView];
      }

      OUTLINED_FUNCTION_12_5();
      v274 = (*(v273 + 720))();
      if (v274)
      {
        v275 = v274;
        [v274 vui_removeFromSuperView];
      }
    }

    else
    {

      if (sub_1E373F6E0() & 1) != 0 && ([objc_opt_self() isTV])
      {
        v266 = 2;
      }

      else
      {
        OUTLINED_FUNCTION_47_0();
        v276 += 224;
        v277 = *v276;
        v278 = (*v276)();
        if (sub_1E3ACABC8(v278, 1))
        {
          v266 = 2;
        }

        else
        {
          v279 = v277();
          v266 = (sub_1E3ACABC8(v279, 3) & 1) == 0;
        }
      }

      LOBYTE(v351[0]) = 1;
      v280 = OUTLINED_FUNCTION_11_81();
      v281(v280);
      if (*&__dst[24])
      {
        if (swift_dynamicCast())
        {
          v282 = sub_1E3AA9D30();
          if (v282 != 3)
          {
            v266 = v282;
          }
        }
      }

      else
      {
        sub_1E325F6F0(__dst, &unk_1ECF296E0);
      }

      sub_1E3AA9CE0(v266);
      OUTLINED_FUNCTION_47_0();
      (*(v283 + 1824))();
      if (OUTLINED_FUNCTION_14_90())
      {
        OUTLINED_FUNCTION_30();
        v285 = (*(v284 + 600))();

        if (v285)
        {
LABEL_189:
          if (sub_1E39DFFE0())
          {

            type metadata accessor for ScoreboardLayout();
            v287 = sub_1E3AECE90();
            sub_1E3280A90(0, &qword_1EE23AF68);
            swift_bridgeObjectRetain_n();
            sub_1E3744600(v285);
            v288 = sub_1E37766C4();
            if ([v288 showScoreboard])
            {
              type metadata accessor for CGRect(0);
              memset(v351, 0, 32);
              OUTLINED_FUNCTION_11_81();
              sub_1E42038E4();

              v351[0] = *__dst;
              v351[1] = *&__dst[16];
              *&v351[2] = *&__dst[32];
              *(&v351[2] + 1) = v325;
              v351[3] = v285;
              *&v351[4] = v287;
              *&__dst[40] = v325;
              *&__dst[48] = v285;
              *&__dst[64] = v287;

              sub_1E3AD1EE4(v351, v350);
              sub_1E3AD1F1C(__dst);
              v332 = v351[1];
              v334 = v351[0];
              v324 = v351[3];
              v328 = v351[2];
              v289 = *&v351[4];
            }

            else
            {

              v289 = 0;
              v332 = 0u;
              v334 = 0u;
              v328 = 0u;
              v324 = 0u;
            }

            v351[0] = v334;
            v351[1] = v332;
            v351[2] = v328;
            v351[3] = v324;
            *&v351[4] = v289;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32690);
            if (swift_dynamicCast())
            {
              memcpy(__dst, v350, 0x48uLL);
            }

            else
            {
              memset(__dst, 0, 72);
            }

            memcpy(v351, __dst, 0x48uLL);
            v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32698);
            v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326A0);
            sub_1E4148F70(sub_1E3AD1E54, 0, v305, v306, v350);
            v307 = MEMORY[0x1E69E7D40];
            (*((*MEMORY[0x1E69E7D40] & *v15) + 0x2C0))(v350[0]);
            OUTLINED_FUNCTION_36_3();
            (*((*v307 & v308) + 0x2D8))(0);
            sub_1E325F6F0(__dst, &qword_1ECF32698);
          }

          else
          {
            v290 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_12_5();
            v291 = OUTLINED_FUNCTION_12_75();
            v292(v291);
            v293 = OUTLINED_FUNCTION_14_90();

            OUTLINED_FUNCTION_36_3();
            v295 = (*((*v290 & v294) + 0x2D0))();
            sub_1E3280A90(0, &qword_1EE23B220);
            OUTLINED_FUNCTION_5_110();
            sub_1E393D92C(v293, v295, v296, 0, v297);

            sub_1E325F6F0(__dst, &qword_1ECF296C0);
            OUTLINED_FUNCTION_36_3();
            v298 = OUTLINED_FUNCTION_8_10();
            v299(v298);
          }

          sub_1E404542C();
          sub_1E3280A90(0, &qword_1EE23AF68);
          sub_1E3744600(v285);

          v309 = sub_1E37766C4();
          v310 = sub_1E4045644(v309);

          if (((v254 | v310) & 1) == 0)
          {
            goto LABEL_197;
          }

          goto LABEL_196;
        }
      }

      if (OUTLINED_FUNCTION_14_90())
      {
        OUTLINED_FUNCTION_30();
        v285 = (*(v286 + 552))();

        if (v285)
        {
          goto LABEL_189;
        }
      }

      else
      {
      }

      v300 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_12_5();
      v301 = OUTLINED_FUNCTION_12_75();
      v302(v301);
      OUTLINED_FUNCTION_36_3();
      (*((*v300 & v303) + 0x2D8))(0);
    }

    if ((v254 & 1) == 0)
    {
      goto LABEL_197;
    }

LABEL_196:
    sub_1E3EB4874(1);
    goto LABEL_197;
  }

  v258 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  v259 = OUTLINED_FUNCTION_12_75();
  v260(v259);
  OUTLINED_FUNCTION_36_3();
  (*((*v258 & v261) + 0x2D8))(0);
LABEL_197:

LABEL_198:

  *__dst = v342;
  *&__dst[16] = v343;
  *&__dst[32] = v344;
  *&__dst[48] = v320;
  *&__dst[56] = v319;
  __dst[64] = v341;
  *&__dst[65] = v340[0];
  *&__dst[72] = *(v340 + 7);
  v336 = 1;
  v337 = v321;
  sub_1E37CCDFC(__dst);
  return v15;
}