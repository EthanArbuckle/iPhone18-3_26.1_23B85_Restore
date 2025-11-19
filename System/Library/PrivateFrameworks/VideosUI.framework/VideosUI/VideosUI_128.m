void sub_1E40CBBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v7 = *(a3 + 16);
  if (v7 >> 62)
  {
    if (!sub_1E4207384())
    {
      return;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E6911E60](0, v7);
    OUTLINED_FUNCTION_6_19();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v7 + 32);
  }

  OUTLINED_FUNCTION_11_3();
  v8 = sub_1E40CBD60();
  swift_endAccess();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(a1 + 48);
  v14 = *(a1 + 56);
  *(a1 + 16) = a2;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v16 = *(a1 + 64);
  *(a1 + 64) = 2;

  sub_1E40D60A0(v10, v11, v12, v13, v15, v14, v16);
  v17 = v3;
  sub_1E40CBE10();
}

uint64_t sub_1E40CBD60()
{
  v1 = *v0;
  if (!sub_1E32AE9B0(*v0))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1E32AE9B0(v1);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v3 = MEMORY[0x1E6911E60](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
LABEL_6:
  v4 = v3;
  result = sub_1E32AE9B0(v1);
  if (result)
  {
    sub_1E40D5768(0, 1, sub_1E40D590C, v5, v6, v7, v8, v9, v10);
    return v4;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1E40CBE10()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_9();
  if (*(v7 + 65) == 3)
  {
    v18 = sub_1E324FBDC();
    (*(v10 + 16))(v1, v18, v8);
    v19 = v3;
    v20 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v21 = OUTLINED_FUNCTION_10_11();
      v46[0] = v21;
      *v2 = 136446210;
      v22 = sub_1E40C50E8();
      OUTLINED_FUNCTION_14_64(v22, v23);
      OUTLINED_FUNCTION_34_3();
      *(v2 + 4) = v5;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_43_71();
      OUTLINED_FUNCTION_55();
    }

    v29 = OUTLINED_FUNCTION_74();
    v30(v29);
    sub_1E40C8384();
LABEL_8:
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    if (!*(v7 + 65))
    {
      *(v7 + 65) = 1;
    }

    *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v3) = v7;

    v12 = *(v7 + 16);
    v13 = *(v7 + 24);
    v14 = *(v7 + 32);
    v15 = *(v7 + 40);
    v17 = *(v7 + 48);
    v16 = *(v7 + 56);
    switch(*(v7 + 64))
    {
      case 2:

        sub_1E40CFA90();
        goto LABEL_16;
      case 3:
      case 4:
      case 5:

        sub_1E40CFE68();
        goto LABEL_16;
      case 6:
        v31 = *(v7 + 66);
        OUTLINED_FUNCTION_47_0();
        v33 = *(v32 + 1008);

        v33(v13, v14, v17, v16, v15, v31);

        sub_1E40C5740(v12);
LABEL_16:
        OUTLINED_FUNCTION_25_2();

        return;
      case 7:
        if (!*(v3 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute))
        {
          v45 = objc_opt_self();
          OUTLINED_FUNCTION_10_9();
          v38 = swift_allocObject();
          v38[2] = v13;
          v38[3] = v12;
          v38[4] = v3;
          v38[5] = v7;
          v46[4] = sub_1E40D6CDC;
          v46[5] = v38;
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
          v46[2] = v39;
          v46[3] = &block_descriptor_191_0;
          v40 = _Block_copy(v46);

          v41 = OUTLINED_FUNCTION_34();
          sub_1E40D6474(v41, v42, v14, v15, v17, v16, 7);
          v43 = v13;
          OUTLINED_FUNCTION_38();

          v44 = v3;

          [v45 dismissOrPopLastViewControllerWithCompletion_];

          _Block_release(v40);
          goto LABEL_8;
        }

        v34 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x208);
        v13;

        OUTLINED_FUNCTION_169();
        v34();

        OUTLINED_FUNCTION_25_2();

        break;
      default:
        goto LABEL_8;
    }
  }
}

void sub_1E40CC270()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v18 = v7;
      v19 = v3;
      sub_1E324FBDC();
      v8 = OUTLINED_FUNCTION_34_78();
      v9(v8);
      v10 = v6;
      v11 = sub_1E41FFC94();
      v12 = sub_1E4206814();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = OUTLINED_FUNCTION_6_21();
        v20 = OUTLINED_FUNCTION_100();
        *v13 = 136446210;
        v14 = sub_1E40C50E8();
        OUTLINED_FUNCTION_97_4(v14, v15);
        OUTLINED_FUNCTION_112();

        *(v13 + 4) = v1;
        _os_log_impl(&dword_1E323F000, v11, v12, "%{public}s continue waitingForRootView context with push context", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_13_4();
      }

      v16 = OUTLINED_FUNCTION_124();
      v17(v16);
      sub_1E40CBBD4(v18, v19, v1);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CC45C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_9_5();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v85 - v18;
  v20 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
  if (!*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v2))
  {
    v94 = v8;
    v95 = v10;
    v96 = v4;
    v90 = v16;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_6_30();
    v88 = v21;
    v89 = v22;
    v87 = v23;
    (v23)(v19);
    v24 = v2;
    v25 = v0;
    v26 = v11;
    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();

    v29 = os_log_type_enabled(v27, v28);
    v97 = v25;
    v98 = v24;
    v91 = v13;
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_49_0();
      v92 = v20;
      v31 = v30;
      v32 = OUTLINED_FUNCTION_160();
      v93 = v2;
      v33 = v32;
      v34 = OUTLINED_FUNCTION_100();
      v86 = v26;
      v35 = v34;
      v100 = v34;
      *v31 = 136446466;
      v36 = sub_1E40C50E8();
      OUTLINED_FUNCTION_49_1(v36, v37);
      OUTLINED_FUNCTION_122();
      v25 = v97;

      *(v31 + 4) = v13;
      *(v31 + 12) = 2112;
      *(v31 + 14) = v25;
      *v33 = v25;
      v38 = v25;
      OUTLINED_FUNCTION_347(&dword_1E323F000, v27, v28, "%{public}sstarting to process present document data source: %@");
      sub_1E325F6F0(v33, &unk_1ECF28E30);
      v2 = v93;
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_13_4();
      v20 = v92;
      OUTLINED_FUNCTION_6_0();

      v39 = *(v13 + 8);
      v40 = v86;
      v39(v19, v86);
    }

    else
    {

      v39 = *(v13 + 8);
      v41 = OUTLINED_FUNCTION_11_6();
      (v39)(v41);
      v40 = v26;
    }

    v42 = [v25 uiConfiguration];
    v43 = sub_1E40CCA64(v42);

    type metadata accessor for RoutingTransaction();
    OUTLINED_FUNCTION_58_41();
    v44 = swift_allocObject();
    sub_1E40C42B0();
    *(v44 + 66) = v94 & 1;
    swift_unknownObjectWeakAssign();
    v45 = v96;
    *(v44 + 72) = v6;
    *(v44 + 80) = v45;
    sub_1E34AF604(v6);
    v46 = OUTLINED_FUNCTION_32_0();
    sub_1E34AF594(v46);
    v47 = *&v20[v2];
    if (v47)
    {
      v48 = *(v47 + 104);
      v49 = *(v47 + 120);
      v50 = *(v47 + 136);
    }

    else
    {
      v48 = 0uLL;
      v50 = 1;
      v49 = 0uLL;
    }

    v51 = v98;
    *(v44 + 104) = v48;
    *(v44 + 120) = v49;
    *(v44 + 136) = v50;
    *(v44 + 96) = 1;
    if (*&v51[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute])
    {
      v52 = *&v51[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute];
      if (v43 != 5 || (v52 = *&v51[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute], (v50 & 1) != 0))
      {
LABEL_20:
        v54 = *(v44 + 56);
        *(v44 + 16) = v52;
        *(v44 + 24) = v43;
        *(v44 + 32) = 0u;
        *(v44 + 48) = 0u;
        v55 = *(v44 + 64);
        v56 = 3;
        goto LABEL_21;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();

      v52 = sub_1E37D027C(v53);

      if (!v52)
      {
        v98 = v43;
        v92 = v20;
        v93 = v2;
        v57 = v90;
        v87(v90, v88, v40);
        v58 = v51;
        v59 = v57;
        v60 = sub_1E41FFC94();
        v61 = sub_1E4206814();

        if (os_log_type_enabled(v60, v61))
        {
          OUTLINED_FUNCTION_6_21();
          v62 = OUTLINED_FUNCTION_10_11();
          v99 = v62;
          *v20 = 136446210;
          v59 = v58;
          v63 = sub_1E40C50E8();
          OUTLINED_FUNCTION_38_8(v63, v64);
          v96 = v58;
          OUTLINED_FUNCTION_14_52();
          *(v20 + 4) = v40;
          OUTLINED_FUNCTION_137_10(&dword_1E323F000, v60, v61, "%{public}sno current route for handling presentView transaction.");
          __swift_destroy_boxed_opaque_existential_1(v62);
          OUTLINED_FUNCTION_13_4();
          OUTLINED_FUNCTION_55();

          v65 = OUTLINED_FUNCTION_123_0();
          v58 = v96;
        }

        else
        {

          v65 = v57;
          v66 = v40;
        }

        v39(v65, v66);
        OUTLINED_FUNCTION_4_0();
        v72 = swift_allocObject();
        OUTLINED_FUNCTION_105_2(v72);
        swift_weakInit();
        OUTLINED_FUNCTION_4_0();
        v73 = swift_allocObject();
        OUTLINED_FUNCTION_45_38(v73);
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_89();
        v74 = swift_allocObject();
        v74[2] = v61;
        v74[3] = v59;
        v75 = v97;
        v74[4] = v98;
        v74[5] = v58;
        v74[6] = v75;
        v98 = *(v44 + 16);
        *(v44 + 16) = sub_1E40D61C4;
        *(v44 + 24) = v74;
        *(v44 + 32) = 0u;
        *(v44 + 48) = 0u;
        v76 = *(v44 + 64);
        *(v44 + 64) = 1;
        v77 = v58;
        v78 = v75;

        OUTLINED_FUNCTION_42_72();
        sub_1E40D60A0(v79, v80, v81, v82, v83, v84, v76);

        *&v92[v93] = v44;
        goto LABEL_22;
      }

      if (v43 != 5 || (*(v44 + 136) & 1) != 0)
      {
        goto LABEL_20;
      }
    }

    v54 = *(v44 + 56);
    *(v44 + 16) = v52;
    *(v44 + 24) = *(v44 + 104);
    *(v44 + 40) = *(v44 + 120);
    *(v44 + 56) = 0;
    v55 = *(v44 + 64);
    v56 = 5;
LABEL_21:
    *(v44 + 64) = v56;

    OUTLINED_FUNCTION_67_31();
    sub_1E40D60A0(v67, v68, v69, v70, v71, v54, v55);
    sub_1E40CBE10();

LABEL_22:

    goto LABEL_23;
  }

  if (v6)
  {
    v6(v17);
  }

LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40CCA64(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 5;
  }

  result = [a1 type];
  if (result != 2)
  {
    [a1 type];
    return 4;
  }

  return result;
}

void sub_1E40CCAD0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_187_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v39 = v4;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_131_0();
      v13(v8);
      v14 = v10;
      v15 = sub_1E41FFC94();
      v16 = sub_1E4206814();

      v40 = v14;
      v41 = v0;
      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_49_0();
        v42 = OUTLINED_FUNCTION_100();
        *v17 = 136446466;
        v18 = sub_1E40C50E8();
        OUTLINED_FUNCTION_97_4(v18, v19);
        OUTLINED_FUNCTION_112();

        *(v17 + 4) = v2;
        *(v17 + 12) = 2048;
        v20 = v39;
        *(v17 + 14) = v39;
        _os_log_impl(&dword_1E323F000, v15, v16, "%{public}scontinue waitingForRootView context with present %ld context", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v42);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_51_2();

        v21 = OUTLINED_FUNCTION_99_0();
        v22(v21);
      }

      else
      {

        v23 = OUTLINED_FUNCTION_99_0();
        v24(v23);
        v20 = v39;
      }

      if (v20 == 5)
      {
        v25 = *(v12 + 48);
        v26 = *(v12 + 56);
        if (*(v12 + 136))
        {
          OUTLINED_FUNCTION_158_9(5);
          v27 = *(v12 + 64);
          v28 = 3;
        }

        else
        {
          *(v12 + 16) = v41;
          *(v12 + 24) = *(v12 + 104);
          *(v12 + 40) = *(v12 + 120);
          *(v12 + 56) = 0;
          v27 = *(v12 + 64);
          v28 = 5;
        }

        *(v12 + 64) = v28;

        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_96_2();
        v36 = v25;
        v37 = v26;
        v38 = v27;
      }

      else
      {
        v29 = *(v12 + 48);
        v30 = *(v12 + 56);
        OUTLINED_FUNCTION_158_9(v20);
        v31 = *(v12 + 64);
        *(v12 + 64) = 3;

        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_96_2();
        v36 = v29;
        v37 = v30;
        v38 = v31;
      }

      sub_1E40D60A0(v32, v33, v34, v35, v36, v37, v38);
      sub_1E40CBE10();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CCDAC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v28 = v4;
  v27 = v5;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v10(v1);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  v14 = &OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
  if (os_log_type_enabled(v12, v13))
  {
    v26 = v3;
    v15 = OUTLINED_FUNCTION_49_0();
    v30 = OUTLINED_FUNCTION_72_0();
    *v15 = 136446466;
    v16 = sub_1E40C50E8();
    OUTLINED_FUNCTION_58_0(v16, v17);
    OUTLINED_FUNCTION_12_1();

    *(v15 + 4) = 0x1EE28C000;
    *(v15 + 12) = 2080;
    v18 = *&v11[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute];
    if (v18)
    {
      v19 = type metadata accessor for Route(0);
    }

    else
    {
      v19 = 0;
      v29[1] = 0;
      v29[2] = 0;
    }

    v29[0] = v18;
    v29[3] = v19;

    v21 = sub_1E3294FA4(v29);
    sub_1E3270FC8(v21, v22, &v30);
    OUTLINED_FUNCTION_50();

    *(v15 + 14) = v18;
    _os_log_impl(&dword_1E323F000, v12, v13, "%{public}sdismissing currently presented route: %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_79();

    v20 = (*(v8 + 8))(v1, v6);
    v3 = v26;
    v14 = &OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
  }

  else
  {

    v20 = (*(v8 + 8))(v1, v6);
  }

  v23 = v14[405];
  if (*&v11[v23])
  {
    OUTLINED_FUNCTION_8();
    v25 = *(v24 + 1032);

    v25(v27 & 1, v28, v3);

    *&v11[v23] = 0;
  }

  else if (v28)
  {
    v28(v20);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CD034()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v75 = v5;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v68 = (v10 - v11);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v18 = sub_1E324FBDC();
  v76 = v8;
  v19 = *(v8 + 16);
  v71 = v18;
  v72 = v19;
  (v19)(v17);
  v20 = v0;

  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();

  v23 = os_log_type_enabled(v21, v22);
  v69 = v2;
  v70 = v14;
  v73 = v8 + 16;
  v74 = v20;
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_49_0();
    v79 = OUTLINED_FUNCTION_72_0();
    *v24 = 136446466;
    v25 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v25, v26);
    OUTLINED_FUNCTION_34_3();
    *(v24 + 4) = v6;
    v28 = v75;
    v27 = v76;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1E3270FC8(v28, v4, &v79);
    _os_log_impl(&dword_1E323F000, v21, v22, "%{public}swill dismiss view with id: %s", v24, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_65_0();

    v29 = *(v27 + 8);
    v29(v17, v6);
    v30 = v28;
  }

  else
  {

    v29 = *(v76 + 8);
    v29(v17, v6);
    v30 = v75;
  }

  v31 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v31 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v32 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
    v33 = v74;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (sub_1E32AE9B0(*&v33[v32]) >= 2)
    {
      v75 = v29;
      v34 = v33;
      v35 = *&v33[v32];
      v36 = sub_1E32AE9B0(v35);

      for (i = 0; v36 != i; ++i)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1E6911E60](i, v35);
        }

        else
        {
          if (i >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v38 = *(v35 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v39 = *(v38 + 16) == v30 && *(v38 + 24) == v4;
        if (v39 || (sub_1E42079A4() & 1) != 0)
        {

          v40 = v70;
          v72(v70, v71, v6);
          v41 = v34;

          v42 = sub_1E41FFC94();
          sub_1E4206814();

          if (OUTLINED_FUNCTION_165_5())
          {
            v43 = v6;
            v44 = OUTLINED_FUNCTION_49_0();
            v78 = OUTLINED_FUNCTION_72_0();
            *v44 = 136446466;
            v45 = sub_1E40C50E8();
            sub_1E3270FC8(v45, v46, &v78);
            OUTLINED_FUNCTION_50();

            *(v44 + 4) = v41;
            *(v44 + 12) = 2080;
            v77 = v38;
            type metadata accessor for Route(0);
            OUTLINED_FUNCTION_0_342();
            sub_1E3274C5C(v47, v48);
            v49 = sub_1E4207944();
            sub_1E3270FC8(v49, v50, &v78);
            OUTLINED_FUNCTION_50();

            *(v44 + 14) = &v77;
            OUTLINED_FUNCTION_62_2();
            _os_log_impl(v51, v52, v53, v54, v55, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_43_71();
            OUTLINED_FUNCTION_79();

            OUTLINED_FUNCTION_155_6();
            v56 = v70;
            v57 = v43;
          }

          else
          {

            OUTLINED_FUNCTION_155_6();
            v56 = v40;
            v57 = v6;
          }

          v75(v56, v57);
          v65 = OBJC_IVAR____TtC8VideosUI6Router_presentingRoute;
          if (*&v41[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute])
          {
            OUTLINED_FUNCTION_8();
            v67 = *(v66 + 1032);

            OUTLINED_FUNCTION_169();
            v67();
          }

          *&v41[v65] = 0;

          goto LABEL_30;
        }
      }

      v58 = v68;
      v72(v68, v71, v6);
      v59 = v34;

      v60 = sub_1E41FFC94();
      v61 = sub_1E4206814();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_49_0();
        v78 = OUTLINED_FUNCTION_72_0();
        *v62 = 136446466;
        v63 = sub_1E40C50E8();
        OUTLINED_FUNCTION_38_8(v63, v64);
        OUTLINED_FUNCTION_6_19();

        *(v62 + 4) = v59;
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_1E3270FC8(v30, v4, &v78);
        _os_log_impl(&dword_1E323F000, v60, v61, "%{public}sno route exists with id: %s", v62, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_65_0();
      }

      OUTLINED_FUNCTION_155_6();
      v75(v58, v6);
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CD678()
{
  OUTLINED_FUNCTION_31_1();
  v64 = v3;
  v67 = v4;
  v69 = v5;
  v7 = v6;
  v63 = v8;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v62 = v15 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v61 = v18;
  v60 = v19;
  (v19)(v1);
  v20 = v0;
  v21 = v10;
  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();

  if (os_log_type_enabled(v22, v23))
  {
    v59 = v7;
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_10_11();
    *v24 = 136446722;
    v25 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v25, v26);
    OUTLINED_FUNCTION_40_18();
    *(v24 + 4) = v2;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v21;
    *v20 = v21;
    *(v24 + 22) = 1024;
    *(v24 + 24) = v69 & 1;
    v27 = v21;
    _os_log_impl(&dword_1E323F000, v22, v23, "%{public}swill present view controller: %@ animated: %{BOOL}d", v24, 0x1Cu);
    sub_1E325F6F0(v20, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_41_70();
    v7 = v59;
    OUTLINED_FUNCTION_6_0();
  }

  v28 = *(v13 + 8);
  v28(v1, v11);
  type metadata accessor for RoutingTransaction();
  OUTLINED_FUNCTION_58_41();
  v29 = swift_allocObject();
  sub_1E40C42B0();
  *(v29 + 96) = v63 & 1;
  *(v29 + 66) = v69 & 1;
  *(v29 + 72) = v64;
  *(v29 + 80) = v67;
  sub_1E34AF604(v64);
  v30 = OUTLINED_FUNCTION_63_0();
  sub_1E34AF594(v30);
  v31 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
  v32 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v20);
  if (v32)
  {
    v33 = *(v32 + 104);
    v34 = *(v32 + 120);
    v35 = *(v32 + 136);
  }

  else
  {
    v33 = 0uLL;
    v35 = 1;
    v34 = 0uLL;
  }

  *(v29 + 104) = v33;
  *(v29 + 120) = v34;
  *(v29 + 136) = v35;
  v36 = *(v20 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute);
  if (v36)
  {
    goto LABEL_9;
  }

  v70 = v21;
  v36 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v37);
  OUTLINED_FUNCTION_38();

  if (v36)
  {

LABEL_9:
    swift_retain_n();

    sub_1E40CDBD0(v29, v36, v7, v21);

    goto LABEL_10;
  }

  v38 = v62;
  v60(v62, v61, v11);
  v68 = v20;
  v39 = v20;
  v40 = sub_1E41FFC94();
  v41 = sub_1E4206814();

  if (os_log_type_enabled(v40, v41))
  {
    v65 = v39;
    v42 = OUTLINED_FUNCTION_6_21();
    v72 = OUTLINED_FUNCTION_100();
    *v42 = 136446210;
    v38 = v65;
    v43 = sub_1E40C50E8();
    OUTLINED_FUNCTION_38_8(v43, v44);
    OUTLINED_FUNCTION_34_3();
    *(v42 + 4) = v7;
    _os_log_impl(&dword_1E323F000, v40, v41, "%{public}sno current route for handling presentViewController transaction.", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_13_4();
    v39 = v65;
    OUTLINED_FUNCTION_6_0();

    v46 = v11;
    v45 = v62;
  }

  else
  {

    v45 = OUTLINED_FUNCTION_16_0();
  }

  v28(v45, v46);
  v47 = v70;
  OUTLINED_FUNCTION_4_0();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v48);
  swift_weakInit();
  OUTLINED_FUNCTION_4_0();
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_89();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v38;
  v50[4] = v7;
  v50[5] = v70;
  v50[6] = v39;
  v51 = *(v29 + 24);
  v71 = *(v29 + 16);
  v52 = *(v29 + 32);
  v53 = *(v29 + 40);
  v54 = *(v29 + 48);
  v66 = *(v29 + 56);
  *(v29 + 16) = sub_1E40D61DC;
  *(v29 + 24) = v50;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  v55 = v39;
  v56 = *(v29 + 64);
  *(v29 + 64) = 1;
  v57 = v55;
  v58 = v47;

  sub_1E40D60A0(v71, v51, v52, v53, v54, v66, v56);

  *&v31[v68] = v29;
LABEL_10:

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CDBD0(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  if (a3 == 5)
  {
    if ((*(a1 + 136) & 1) == 0)
    {
      v14 = *(a1 + 120);
      v16 = *(a1 + 128);
      v10 = *(a1 + 104);
      v12 = *(a1 + 112);
      goto LABEL_8;
    }

    v7 = [a4 popoverPresentationController];
    if (v7)
    {
      v8 = v7;
      [v7 sourceRect];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

LABEL_8:
      *(a1 + 16) = a2;
      *(a1 + 24) = v10;
      *(a1 + 32) = v12;
      *(a1 + 40) = v14;
      *(a1 + 48) = v16;
      *(a1 + 56) = a4;
      v27 = *(a1 + 64);
      *(a1 + 64) = 5;

      v28 = a4;
      OUTLINED_FUNCTION_42_72();
      v26 = v27;
      goto LABEL_9;
    }

    v17 = *(a1 + 56);
    *(a1 + 16) = a2;
    *(a1 + 24) = 5;
  }

  else
  {
    v17 = *(a1 + 56);
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
  }

  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v18 = *(a1 + 64);
  *(a1 + 64) = 4;

  v19 = a4;
  OUTLINED_FUNCTION_67_31();
  v25 = v17;
  v26 = v18;
LABEL_9:
  sub_1E40D60A0(v20, v21, v22, v23, v24, v25, v26);
  sub_1E40CBE10();
}

void sub_1E40CDD44()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_4_32();
      v9(v0);
      v10 = v8;
      v11 = sub_1E41FFC94();
      v12 = sub_1E4206814();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = OUTLINED_FUNCTION_49_0();
        v22 = OUTLINED_FUNCTION_100();
        *v13 = 136446466;
        v14 = sub_1E40C50E8();
        OUTLINED_FUNCTION_97_4(v14, v15);
        OUTLINED_FUNCTION_112();

        *(v13 + 4) = v2;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v4;
        _os_log_impl(&dword_1E323F000, v11, v12, "%{public}s continue waitingForRootView context with presentViewController %ld context", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v22);
        OUTLINED_FUNCTION_43_71();
        OUTLINED_FUNCTION_6_0();
      }

      v16 = OUTLINED_FUNCTION_161_6();
      v17(v16, v5);
      OUTLINED_FUNCTION_168_5();
      sub_1E40CDBD0(v18, v19, v20, v21);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CDF78()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v110 = v7;
  v111 = v8;
  OUTLINED_FUNCTION_187_4();
  OUTLINED_FUNCTION_0_10();
  v112 = v10;
  v113 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v107 = (v11 - v12);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v103 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v103 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v103 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_73_5();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_34_1();
  v26 = v1;
  v28 = v27;
  sub_1E379D7E4(v26, v4, &unk_1ECF363C0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v28) == 1)
  {
    LODWORD(v108) = v6;
    sub_1E325F6F0(v4, &unk_1ECF363C0);
    v29 = v111;
    if (v111)
    {
      v30 = sub_1E324FBDC();
      v32 = v112;
      v31 = v113;
      v33 = v109;
      v104 = *(v112 + 2);
      v105 = v30;
      v104(v109);
      v34 = v0;

      v35 = sub_1E41FFC94();
      v36 = sub_1E4206814();

      v37 = os_log_type_enabled(v35, v36);
      v106 = v34;
      if (v37)
      {
        v38 = v29;
        v39 = OUTLINED_FUNCTION_49_0();
        v114 = OUTLINED_FUNCTION_72_0();
        *v39 = 136446466;
        v40 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v40, v41);
        OUTLINED_FUNCTION_14_52();
        *(v39 + 4) = v34;
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_1E3270FC8(v110, v38, &v114);
        OUTLINED_FUNCTION_347(&dword_1E323F000, v35, v36, "%{public}swill present AMS WebUI with ams key: [%s]");
        swift_arrayDestroy();
        v31 = v113;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      v42 = *(v32 + 1);
      v42(v33, v31);
      v43 = v108;
      v70 = sub_1E4205ED4();
      if ((v43 & 1) == 0)
      {
        OUTLINED_FUNCTION_4_0();
        v76 = swift_allocObject();
        v77 = v106;
        *(v76 + 16) = v106;
        v78 = v77;
        sub_1E40CEED0();

        goto LABEL_16;
      }

      if ([objc_opt_self() vui_defaultBag])
      {
        OUTLINED_FUNCTION_9_5();
        sub_1E41FE9C4();
        v71 = sub_1E41FE9B4();
        v72 = [objc_allocWithZone(MEMORY[0x1E698CD40]) initWithBag:v33 account:v71 clientInfo:0];
        if (v72)
        {
          v73 = [v33 URLForKey_];
          v74 = [v72 loadBagValue_];

          v31 = v113;
        }

        if (v72)
        {
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_16_157();
          v75();

LABEL_16:
          goto LABEL_29;
        }
      }

      v94 = v107;
      (v104)(v107, v105, v31);
      v95 = v31;
      v96 = v106;
      v97 = sub_1E41FFC94();
      v98 = sub_1E42067F4();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = OUTLINED_FUNCTION_6_21();
        v100 = OUTLINED_FUNCTION_100();
        v114 = v100;
        *v99 = 136446210;
        v101 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v101, v102);
        OUTLINED_FUNCTION_6_19();

        *(v99 + 4) = v96;
        _os_log_impl(&dword_1E323F000, v97, v98, "%{public}sfailed to create AMS WebUI View Controller", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v100);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_7_9();
      }

      v42(v94, v95);
    }
  }

  else
  {
    (*(v23 + 32))(v3, v4, v28);
    if (v6)
    {
      sub_1E324FBDC();
      v45 = v112;
      v44 = v113;
      OUTLINED_FUNCTION_146_2();
      v46 = v19;
      v107 = v47;
      v109 = v48;
      v104 = v49;
      v49(v19);
      v50 = *(v23 + 16);
      v111 = v3;
      v50(v2, v3, v28);
      v51 = v0;
      v52 = sub_1E41FFC94();
      v53 = sub_1E4206814();

      v54 = os_log_type_enabled(v52, v53);
      v105 = v28;
      v106 = v23;
      v110 = v51;
      if (v54)
      {
        v55 = OUTLINED_FUNCTION_49_0();
        v114 = OUTLINED_FUNCTION_72_0();
        *v55 = 136446466;
        v56 = sub_1E40C50E8();
        OUTLINED_FUNCTION_58_0(v56, v57);
        OUTLINED_FUNCTION_122();

        *(v55 + 4) = v44;
        *(v55 + 12) = 2080;
        sub_1E3274C5C(&qword_1EE28A470, MEMORY[0x1E6968FB0]);
        v58 = sub_1E4207944();
        v59 = *(v23 + 8);
        v59(v2, v28);
        v60 = OUTLINED_FUNCTION_32_7();
        sub_1E3270FC8(v60, v61, v62);
        OUTLINED_FUNCTION_16_5();

        *(v55 + 14) = v58;
        _os_log_impl(&dword_1E323F000, v52, v53, "%{public}swill present AMS WebUI with url: [%s]", v55, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_21_0();
        v63 = v112;
        OUTLINED_FUNCTION_6_0();

        v64 = *(v63 + 1);
        v64(v46, v113);
      }

      else
      {

        v59 = *(v23 + 8);
        v59(v2, v28);
        v64 = *(v45 + 1);
        v64(v46, v44);
      }

      v79 = [objc_opt_self() vui_defaultBag];
      v80 = v108;
      if (!v79)
      {
        goto LABEL_23;
      }

      v81 = v79;
      sub_1E41FE9C4();
      v82 = sub_1E41FE9B4();
      v83 = [objc_allocWithZone(MEMORY[0x1E698CD40]) initWithBag:v81 account:v82 clientInfo:0];
      if (v83)
      {
        v84 = sub_1E41FE364();
        v85 = [v83 loadURL_];
      }

      if (v83)
      {
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_16_157();
        v86();

        v59(v111, v105);
      }

      else
      {
LABEL_23:
        v112 = v59;
        v87 = v113;
        (v104)(v80, v107, v113);
        v88 = v110;
        v89 = sub_1E41FFC94();
        v90 = sub_1E42067F4();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = OUTLINED_FUNCTION_6_21();
          v114 = OUTLINED_FUNCTION_100();
          *v91 = 136446210;
          v92 = sub_1E40C50E8();
          OUTLINED_FUNCTION_58_0(v92, v93);
          OUTLINED_FUNCTION_176_0();
          *(v91 + 4) = v88;
          _os_log_impl(&dword_1E323F000, v89, v90, "%{public}sfailed to create AMS WebUI View Controller", v91, 0xCu);
          OUTLINED_FUNCTION_41_70();
          OUTLINED_FUNCTION_21_0();
        }

        v64(v80, v87);
        v112(v111, v105);
      }
    }

    else
    {
      sub_1E40CE9B8();
      v66 = v65;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_16_157();
      v67();

      v68 = OUTLINED_FUNCTION_147_7();
      v69(v68, v28);
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CE9B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_34();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_3();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_24_4();
  v6(v7);
  OUTLINED_FUNCTION_177_5();
  v8 = objc_allocWithZone(MEMORY[0x1E697BA60]);
  v9 = OUTLINED_FUNCTION_16_5();
  v10 = sub_1E40D53C8(v9);
  v11 = *sub_1E3286BF0();
  v12 = OUTLINED_FUNCTION_24_4();
  v6(v12);
  OUTLINED_FUNCTION_177_5();
  v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x260);
  v14 = v11;
  v15 = OUTLINED_FUNCTION_16_5();
  v16 = v13(v15);

  v17 = OUTLINED_FUNCTION_39_3();
  sub_1E325F6F0(v17, v18);
  if (v16)
  {
    [v10 setDelegate_];
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CEB24()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_63_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v43 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_8();
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v18 = OUTLINED_FUNCTION_167_6();
  v19(v18);
  sub_1E379D7E4(v6, v1, &unk_1ECF363C0);
  v20 = v4;
  v21 = sub_1E41FFC94();
  LOBYTE(v4) = sub_1E4206814();

  if (os_log_type_enabled(v21, v4))
  {
    v42 = v6;
    v22 = OUTLINED_FUNCTION_49_0();
    v46 = OUTLINED_FUNCTION_72_0();
    *v22 = 136446466;
    v23 = sub_1E40C50E8();
    OUTLINED_FUNCTION_58_0(v23, v24);
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_118_12();
    sub_1E379D7E4(v1, v2, &unk_1ECF363C0);
    v25 = sub_1E41FE414();
    if (__swift_getEnumTagSinglePayload(v2, 1, v25) == 1)
    {
      sub_1E325F6F0(v2, &unk_1ECF363C0);
      v44 = 0u;
      v45 = 0u;
    }

    else
    {
      *(&v45 + 1) = v25;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(*(v25 - 8) + 32))(boxed_opaque_existential_1, v2, v25);
    }

    v29 = sub_1E3294FA4(&v44);
    sub_1E325F6F0(v1, &unk_1ECF363C0);
    v30 = OUTLINED_FUNCTION_57();
    sub_1E3270FC8(v30, v31, v32);
    OUTLINED_FUNCTION_38();

    *(v22 + 14) = v29;
    OUTLINED_FUNCTION_124_9();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_43_71();

    (*(v16 + 8))(v0, v14);
    v6 = v42;
  }

  else
  {

    sub_1E325F6F0(v1, &unk_1ECF363C0);
    v26 = OUTLINED_FUNCTION_8_6();
    v27(v26);
  }

  sub_1E379D7E4(v6, v43, &unk_1ECF363C0);
  v38 = objc_allocWithZone(MEMORY[0x1E697BA60]);
  v39 = OUTLINED_FUNCTION_50();
  v40 = sub_1E40D53C8(v39);
  OUTLINED_FUNCTION_16_157();
  v41();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CEED0()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v3;
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_9();
  v27 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v8 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  (*(v10 + 104))(v2, *MEMORY[0x1E69E7F98], v8);
  v12 = sub_1E4206A54();
  v13 = OUTLINED_FUNCTION_123_0();
  v14(v13);
  OUTLINED_FUNCTION_5_10();
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = sub_1E40D620C;
  v15[4] = v26;
  v28[4] = sub_1E40D6CBC;
  v28[5] = v15;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v28[2] = v16;
  v28[3] = &block_descriptor_173;
  v17 = _Block_copy(v28);
  v18 = v1;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_4_267();
  sub_1E3274C5C(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v21, v22);
  OUTLINED_FUNCTION_142_1();
  sub_1E42072E4();
  v23 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v23);
  _Block_release(v17);

  v24 = OUTLINED_FUNCTION_16_80();
  v25(v24);
  (*(v6 + 8))(v0, v27);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CF1D0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_9();
  v9 = &qword_1ECF3F000;
  v11 = (v4 & 1) == 0 || (v10 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v0)) == 0 || *(v10 + 64) != 1;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_146_2();
  v12(v1);
  v13 = v0;
  v14 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_34_9())
  {
    swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_10_11();
    OUTLINED_FUNCTION_153_7(v15);
    LODWORD(qword_1ECF3F000) = 136315394;
    v16 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v16, v17);
    OUTLINED_FUNCTION_34_3();
    *(&qword_1ECF3F000 + 4) = v11;
    WORD2(qword_1ECF3F008) = 1024;
    *(&qword_1ECF3F008 + 6) = v11;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v18, v19, v20, v21, v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_7_7();
    v9 = &qword_1ECF3F000;
    OUTLINED_FUNCTION_6_0();

    (*(v7 + 8))(v1, v5);
  }

  else
  {

    v23 = OUTLINED_FUNCTION_74();
    v25(v23, v24);
  }

  if (v11)
  {
    *&v13[v9[313]] = 0;
  }

  v26 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v27 = *&v13[v26];
  if (v27 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4207384())
  {

    while (!__OFSUB__(i--, 1))
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = OUTLINED_FUNCTION_74();
        MEMORY[0x1E6911E60](v30);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_169();
      v31();

      if (!i)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_21:
  OUTLINED_FUNCTION_11_3();
  sub_1E40CF4B0(0);
  swift_endAccess();
  *&v13[OBJC_IVAR____TtC8VideosUI6Router_presentingRoute] = 0;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CF4B0(char a1)
{
  v2 = *v1;
  if (a1)
  {
    if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v2 = *v1, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      v10 = sub_1E40D56F4(v2);
      v11 = sub_1E37FEA14(0, v10);

      *v1 = v11;
    }

    else
    {
      v4 = sub_1E32AE9B0(*v1);
      if (v4 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_1E40D5768(0, v4, sub_1E40D5810, v5, v6, v7, v8, v9, v12);
      }
    }
  }

  else
  {

    *v1 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1E40CF5A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Router();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E40CF5E4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 176))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E40CF63C()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v3 = OUTLINED_FUNCTION_33_14();
  v4(v3);
  v5 = v0;
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_6_21();
    v9 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_153_7(v9);
    *v8 = 136446210;
    v10 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v10, v11);
    OUTLINED_FUNCTION_176_0();
    *(v8 + 4) = v5;
    OUTLINED_FUNCTION_62_19(&dword_1E323F000, v12, v13, "%{public}sSKAccountPageViewController finished.");
    __swift_destroy_boxed_opaque_existential_1(v1);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  v14 = OUTLINED_FUNCTION_13_8();
  v15(v14);
  sub_1E3286BF0();
  OUTLINED_FUNCTION_88_0();
  v17 = *(v16 + 280);
  v19 = v18;
  v17(1);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (qword_1EE2AA808)
  {
    OUTLINED_FUNCTION_88_0();
    v21 = *(v20 + 520);
    v23 = v22;
    OUTLINED_FUNCTION_169();
    v21();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CF898(uint64_t a1)
{
  if (a1 < 0)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  if (v6 <= a1)
  {
    goto LABEL_9;
  }

  v7 = sub_1E32AE9B0(*(v2 + v4));
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    if (a1 + 1 != v7)
    {
      if (a1 + 1 < v7)
      {
        v16 = ~a1 + v7;
        v17 = a1 + 5;
        while (1)
        {
          v18 = v17 - 4;
          v19 = *(v2 + v4);
          if ((v19 & 0xC000000000000001) != 0)
          {

            v25 = OUTLINED_FUNCTION_32_7();
            MEMORY[0x1E6911E60](v25);
            OUTLINED_FUNCTION_16_5();
          }

          else
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_20:
              __break(1u);
LABEL_21:
              v6 = OUTLINED_FUNCTION_119_1();
              goto LABEL_4;
            }

            if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }
          }

          OUTLINED_FUNCTION_8();
          v20 = OUTLINED_FUNCTION_165();
          v21(v20);
          OUTLINED_FUNCTION_36();
          v22 = OUTLINED_FUNCTION_165();
          v23(v22);
          OUTLINED_FUNCTION_36();
          (*(v24 + 424))(0);

          ++v17;
          if (!--v16)
          {
            goto LABEL_7;
          }
        }
      }

      goto LABEL_24;
    }

LABEL_7:
    v8 = sub_1E32AE9B0(*(v2 + v4));
    if (v8 > a1)
    {
      v9 = v8;
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_54_53();
      sub_1E40D5768(a1 + 1, v9, v10, v11, v12, v13, v14, v15, v26);
      swift_endAccess();
LABEL_9:
      OUTLINED_FUNCTION_2_75();
      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1E40CFA90()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9_5();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v11(v2);
  v12 = v1;

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    v39 = v4;
    v15 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v15 = 136446466;
    v16 = sub_1E40C50E8();
    OUTLINED_FUNCTION_49_1(v16, v17);
    v40 = v6;
    OUTLINED_FUNCTION_112();

    *(v15 + 4) = v6;
    *(v15 + 12) = 2080;
    v18 = type metadata accessor for Route(0);
    OUTLINED_FUNCTION_0_342();
    sub_1E3274C5C(v19, v20);
    v21 = sub_1E4207944();
    OUTLINED_FUNCTION_49_1(v21, v22);
    OUTLINED_FUNCTION_112();

    *(v15 + 14) = v18;
    v6 = v40;
    OUTLINED_FUNCTION_124_9();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    v4 = v39;
    OUTLINED_FUNCTION_6_0();
  }

  v29 = *(v9 + 8);
  v28 = v9 + 8;
  v29(v2, v7);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v30);
  OUTLINED_FUNCTION_11_5();

  if (v28)
  {
    OUTLINED_FUNCTION_47_0();
    if ((*(v31 + 368))())
    {
      OUTLINED_FUNCTION_30();
      (*(v32 + 240))();
    }
  }

  OUTLINED_FUNCTION_111();
  (*(v33 + 976))(v6, v4 & 1);
  sub_1E40C5640(v0);
  OUTLINED_FUNCTION_4_0();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_45_38(v34);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v35 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_2_4();
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  *(v36 + 24) = v35;
  v37 = *(*v0 + 352);

  v37(sub_1E40D6D84, v36);

  (*(*v0 + 968))(v38, 0.8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40CFE68()
{
  OUTLINED_FUNCTION_31_1();
  v39 = v3;
  v40 = v4;
  v38 = v5;
  v41 = v6;
  v8 = v7;
  v10 = v9;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v14(v2);
  v15 = v0;

  v16 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_34_9())
  {
    v37 = v8;
    v17 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v17 = 136446466;
    v18 = sub_1E40C50E8();
    OUTLINED_FUNCTION_58_0(v18, v19);
    OUTLINED_FUNCTION_112();

    *(v17 + 4) = v1;
    *(v17 + 12) = 2080;
    v20 = type metadata accessor for Route(0);
    OUTLINED_FUNCTION_0_342();
    sub_1E3274C5C(v21, v22);
    v23 = sub_1E4207944();
    OUTLINED_FUNCTION_58_0(v23, v24);
    OUTLINED_FUNCTION_112();

    *(v17 + 14) = v20;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v25, v26, v27, v28, v29, 0x16u);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    v8 = v37;
    OUTLINED_FUNCTION_6_0();
  }

  v30 = OUTLINED_FUNCTION_123_0();
  v31(v30);
  OUTLINED_FUNCTION_4_0();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_101_15(v32);
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v12 + 8;
  *(v33 + 24) = v10;
  *(v33 + 32) = v38;
  *(v33 + 40) = v8;
  *(v33 + 48) = v41;
  *(v33 + 56) = v39 & 1;
  *(v33 + 57) = v40 & 1;
  v34 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x208);
  v35 = v41;

  v36 = v8;
  v34(0, sub_1E40D6DE4, v33);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D0144()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  if (!v2)
  {

    v10 = 0;
    OUTLINED_FUNCTION_60_40();
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v8 = v3;
  v9 = v2;
  v10 = v1;

  v11 = v9;
  v12 = [v11 uiConfiguration];
  v13 = sub_1E40CCA64(v12);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    if ([v12 type] == 6 || objc_msgSend(v12, sel_type) == 8)
    {
    }

    else
    {
      v23 = [v12 type];

      if (v23 != 7)
      {

        v10 = 0;
        OUTLINED_FUNCTION_60_40();
        v20 = 0;
        v19 = 2;
        goto LABEL_10;
      }
    }

    v21 = v10;

    OUTLINED_FUNCTION_60_40();
    v20 = 0;
    v19 = 7;
LABEL_10:
    v14 = v5;
    goto LABEL_29;
  }

  if (*(v0 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute))
  {
    v14 = *(v0 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute);
    v15 = v14;
  }

  else
  {

    v14 = v5;
    v15 = v5;
  }

  v22 = *(*v15 + 1048);

  v22(v5);

  if (v13 == 5)
  {
    v20 = *(v8 + 32);
    if (v20)
    {
      v10 = 5;
    }

    else
    {
      v10 = *v8;
    }

    if (*(v8 + 32))
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v8 + 8);
    }

    if (*(v8 + 32))
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v8 + 16);
    }

    if (*(v8 + 32))
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v8 + 24);
    }

    if (*(v8 + 32))
    {
      v19 = 3;
    }

    else
    {
      v19 = 5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_40();
    v20 = 1;
    v10 = v13;
  }

LABEL_29:
  *v7 = v14;
  *(v7 + 8) = v10;
  *(v7 + 16) = v16;
  *(v7 + 24) = v17;
  *(v7 + 32) = v18;
  *(v7 + 40) = 0;
  *(v7 + 48) = v19;
  *(v7 + 49) = v20 & 1;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D0360()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_123_2();
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if ([v1 isAccountRequired] && (v13 = objc_opt_self(), (objc_msgSend(v13, sel_userHasActiveAccount) & 1) == 0) && objc_msgSend(v13, sel_allowsAccountModification))
  {
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v1;
    v15[4] = v8;
    v15[5] = v10;
    v15[6] = v2;
    v15[7] = v6;
    v15[8] = v4;
    v44[4] = sub_1E40D6BEC;
    v44[5] = v15;
    OUTLINED_FUNCTION_12_0();
    v44[1] = 1107296256;
    v44[2] = sub_1E326FFE4;
    v44[3] = &block_descriptor_145;
    v16 = _Block_copy(v44);
    v17 = v10;
    v18 = v2;
    v19 = v1;

    v20 = OUTLINED_FUNCTION_78_0();
    sub_1E34AF604(v20);

    [v13 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v16];
    _Block_release(v16);
    sub_1E324FBDC();
    v21 = OUTLINED_FUNCTION_33_14();
    v22(v21);
    v23 = v19;
    v24 = v18;
    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_49_0();
      v28 = OUTLINED_FUNCTION_160();
      v29 = OUTLINED_FUNCTION_100();
      v44[0] = v29;
      *v27 = 136446466;
      v30 = sub_1E40C50E8();
      OUTLINED_FUNCTION_14_64(v30, v31);
      OUTLINED_FUNCTION_40_18();
      *(v27 + 4) = v24;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v23;
      *v28 = v23;
      v32 = v23;
      _os_log_impl(&dword_1E323F000, v25, v26, "%{public}sauthentication requested action: %@", v27, 0x16u);
      sub_1E325F6F0(v28, &unk_1ECF28E30);
      OUTLINED_FUNCTION_79();
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_21_0();
    }

    v33 = OUTLINED_FUNCTION_13_8();
    v34(v33);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_101_15(v35);
    swift_unknownObjectWeakInit();
    v36 = v10;
    v37 = v1;
    v38 = OUTLINED_FUNCTION_78_0();
    sub_1E34AF604(v38);

    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_96_2();
    sub_1E40D1D4C(v39, v40, v41, v42, v4, v11, v10, v37);
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E40D06D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_156();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute) = v3;

    if (a3 == 2 || a3 == 4)
    {
      OUTLINED_FUNCTION_111();
      v27 = OUTLINED_FUNCTION_165_9();
      v28(v27);
    }

    else if (a3 == 5)
    {
      v14 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v13);
      if (v14 && *(v14 + 64) == 5)
      {
        v16 = *(v14 + 40);
        v15 = *(v14 + 48);
        v18 = *(v14 + 24);
        v17 = *(v14 + 32);
        sub_1E324FBDC();
        OUTLINED_FUNCTION_22_6();
        v19(v5);
        v20 = v13;
        v21 = sub_1E41FFC94();
        v22 = sub_1E4206814();

        if (OUTLINED_FUNCTION_181_4())
        {
          v23 = OUTLINED_FUNCTION_6_21();
          OUTLINED_FUNCTION_100();
          *v23 = 136446210;
          v24 = sub_1E40C50E8();
          OUTLINED_FUNCTION_110_15(v24, v25);
          OUTLINED_FUNCTION_34_3();
          *(v23 + 4) = v20;
          _os_log_impl(&dword_1E323F000, v21, v22, "%{public}spopover presentation", v23, 0xCu);
          OUTLINED_FUNCTION_41_70();
          OUTLINED_FUNCTION_43_71();
        }

        (*(v9 + 8))(v5, v7);
        OUTLINED_FUNCTION_111();
        (*(v26 + 1024))(v18, v17, v16, v15);
      }
    }

    else
    {
      v29 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v13);
      if (v29 && *(v29 + 64) == 4)
      {
        v30 = *(v29 + 32);
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = v31;
          v48 = v30;
          sub_1E324FBDC();
          OUTLINED_FUNCTION_6_30();
          v33(v4);
          v34 = v13;
          v35 = sub_1E41FFC94();
          v36 = sub_1E4206814();

          if (os_log_type_enabled(v35, v36))
          {
            v47 = v32;
            v37 = OUTLINED_FUNCTION_6_21();
            OUTLINED_FUNCTION_100();
            *v37 = 136446210;
            v38 = sub_1E40C50E8();
            OUTLINED_FUNCTION_110_15(v38, v39);
            OUTLINED_FUNCTION_6_19();

            *(v37 + 4) = v34;
            OUTLINED_FUNCTION_124_9();
            _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
            OUTLINED_FUNCTION_41_70();
            v32 = v47;
            OUTLINED_FUNCTION_6_0();
          }

          (*(v9 + 8))(v4, v7);
          j__OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_111();
          (*(v45 + 1016))(v32, v46 & 1);
          v30 = v48;
        }
      }
    }

    sub_1E40C5740(v3);
  }
}

void sub_1E40D0B40()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_36;
  }

  v3 = Strong;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

LABEL_36:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_26_0();
  if (((*(v4 + 880))() & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  sub_1E324FBDC();
  v5 = OUTLINED_FUNCTION_34_78();
  v6(v5);
  v3 = v3;

  v7 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_181_4())
  {
    v8 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v8 = 136446466;
    v9 = sub_1E40C50E8();
    OUTLINED_FUNCTION_22_23(v9, v10);
    OUTLINED_FUNCTION_40_18();
    OUTLINED_FUNCTION_114_12();
    v11 = type metadata accessor for Route(0);
    OUTLINED_FUNCTION_0_342();
    sub_1E3274C5C(v12, v13);
    v14 = sub_1E4207944();
    OUTLINED_FUNCTION_22_23(v14, v15);
    OUTLINED_FUNCTION_40_18();
    *(v8 + 14) = v11;
    OUTLINED_FUNCTION_112_18();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_79();
  }

  v21 = OUTLINED_FUNCTION_124();
  v22(v21);
  v23 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v24 = *(v3 + v23);
  v25 = sub_1E32AE9B0(v24);
  if (!v25)
  {
LABEL_20:
    v31 = OBJC_IVAR____TtC8VideosUI6Router_currentTransaction;
    if (*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v3))
    {
      v32 = sub_1E40C40A4();
      if (v32)
      {
        v33 = v32;
        OUTLINED_FUNCTION_26_0();
        (*(v34 + 776))();
        sub_1E3F4EEA0();
        if ((sub_1E4205E84() & 1) == 0)
        {

          sub_1E37D027C(v35);
          OUTLINED_FUNCTION_122();

          if (v0)
          {
            if (*&v31[v3])
            {

              sub_1E40C40D8();

              if (*&v31[v3])
              {
                if (sub_1E40C40A4())
                {
                  OUTLINED_FUNCTION_30();
                  (*(v36 + 1048))(v33);
                }
              }
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_111();
    v37 = OUTLINED_FUNCTION_165();
    v38(v37);
    v39 = OBJC_IVAR____TtC8VideosUI6Router_presentingRoute;
    if (!*(v3 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute) || (OUTLINED_FUNCTION_8(), v41 = *(v40 + 848), v42 = , v41(v42), OUTLINED_FUNCTION_112(), , !v41) || (type metadata accessor for Route(0), OUTLINED_FUNCTION_0_342(), sub_1E3274C5C(v43, v44), , v45 = sub_1E4205E84(), , , (v45 & 1) == 0))
    {
      *(v3 + v39) = 0;
    }

    sub_1E40C8384();
    goto LABEL_35;
  }

  v0 = v25;

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v26 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E6911E60](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v29 = v28;

      if (v27 == v29)
      {

        sub_1E40CF898(v26);
        goto LABEL_20;
      }
    }

    else
    {
    }

    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    ++v26;
    if (v30 == v0)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_1E40D1080()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (!*(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v9))
      {
        goto LABEL_15;
      }

      v10 = sub_1E40C40A4();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v11 = swift_weakLoadStrong();
      if (v10)
      {
        v45 = v10;
        if (!v11)
        {
          goto LABEL_14;
        }

        v46 = v11;
        type metadata accessor for Route(0);
        v44 = v1;
        OUTLINED_FUNCTION_0_342();
        v43 = sub_1E3274C5C(v12, v13);

        v1 = v44;
        v14 = sub_1E4205E84();

        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v11)
        {
LABEL_14:

LABEL_15:
          OUTLINED_FUNCTION_47_0();
          if ((*(v19 + 952))())
          {
          }

          else
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_2_26();
            v20(v0);
            v21 = v9;
            v22 = sub_1E41FFC94();
            v23 = sub_1E42067F4();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = OUTLINED_FUNCTION_6_21();
              v25 = OUTLINED_FUNCTION_100();
              v46 = v25;
              *v24 = 136446210;
              v26 = sub_1E40C50E8();
              OUTLINED_FUNCTION_97_4(v26, v27);
              v44 = v21;
              OUTLINED_FUNCTION_40_18();
              *(v24 + 4) = v1;
              _os_log_impl(&dword_1E323F000, v22, v23, "%{public}spush cancelled but no current transaction", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v25);
              OUTLINED_FUNCTION_79();
              OUTLINED_FUNCTION_7_7();

              v28 = OUTLINED_FUNCTION_11_6();
              v29(v28);
              v21 = v44;
            }

            else
            {

              (*(v3 + 8))(v0, v1);
            }

            OUTLINED_FUNCTION_5_11();
            OUTLINED_FUNCTION_47_0();
            (*(v30 + 968))();
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        OUTLINED_FUNCTION_26_0();
        v16 = (*(v15 + 824))();

        if (v16)
        {
          OUTLINED_FUNCTION_8();
          v18 = (*(v17 + 416))();

          if ((v18 & 1) == 0)
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_2_26();
            v31(v7);
            v32 = v9;
            v33 = sub_1E41FFC94();
            sub_1E4206814();

            if (OUTLINED_FUNCTION_165_5())
            {
              v34 = OUTLINED_FUNCTION_6_21();
              v43 = OUTLINED_FUNCTION_100();
              v46 = v43;
              v35 = OUTLINED_FUNCTION_182_5(4.8751e-34);
              OUTLINED_FUNCTION_97_4(v35, v36);
              v44 = v1;
              OUTLINED_FUNCTION_40_18();
              *(v34 + 4) = v1;
              OUTLINED_FUNCTION_62_2();
              _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v43);
              OUTLINED_FUNCTION_46_1();
              OUTLINED_FUNCTION_79();

              (*(v3 + 8))(v7, v44);
            }

            else
            {

              (*(v3 + 8))(v7, v1);
            }

            sub_1E40C8384();

            goto LABEL_21;
          }
        }
      }

      goto LABEL_14;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D1560()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_39;
  }

  v2 = Strong;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

LABEL_39:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_26_0();
  if ((*(v3 + 488))())
  {
LABEL_37:

LABEL_38:

    goto LABEL_39;
  }

  sub_1E324FBDC();
  v4 = OUTLINED_FUNCTION_34_78();
  v5(v4);
  v2 = v2;

  v6 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_181_4())
  {
    v7 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v7 = 136446466;
    v8 = sub_1E40C50E8();
    OUTLINED_FUNCTION_22_23(v8, v9);
    OUTLINED_FUNCTION_40_18();
    OUTLINED_FUNCTION_114_12();
    v10 = type metadata accessor for Route(0);
    OUTLINED_FUNCTION_0_342();
    sub_1E3274C5C(v11, v12);
    v13 = sub_1E4207944();
    OUTLINED_FUNCTION_22_23(v13, v14);
    OUTLINED_FUNCTION_40_18();
    *(v7 + 14) = v10;
    OUTLINED_FUNCTION_112_18();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_79();
  }

  v20 = OUTLINED_FUNCTION_124();
  v21(v20);
  v22 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v43 = v22;
  v23 = *&v2[v22];
  v24 = sub_1E32AE9B0(v23);
  if (!v24)
  {
LABEL_20:
    v31 = *&v2[v43];
    v32 = sub_1E32AE9B0(v31);
    v33 = OBJC_IVAR____TtC8VideosUI6Router_presentingRoute;

    for (i = 0; v32 != i; ++i)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](i, v31);
      }

      else
      {
        if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (*&v2[v33])
      {
        type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(&qword_1ECF3D190, v35);
        v36 = sub_1E4205E84();

        if (v36)
        {

          goto LABEL_33;
        }
      }

      else
      {
      }
    }

    *&v2[v33] = 0;

LABEL_33:
    OUTLINED_FUNCTION_111();
    v37 = OUTLINED_FUNCTION_165();
    v38(v37);

    sub_1E37D027C(v39);
    OUTLINED_FUNCTION_112();

    if (!v31)
    {
      goto LABEL_37;
    }

    if ((*(*v31 + 368))(v40))
    {
      OUTLINED_FUNCTION_30();
      (*(v41 + 104))();
      OUTLINED_FUNCTION_8();
      (*(v42 + 200))();

      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v25 = v24;

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v26 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E6911E60](v26, v23);
    }

    else
    {
      if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v27 = *(v23 + 8 * v26 + 32);
    }

    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v29 = v28;

      if (v27 == v29)
      {

        sub_1E40CF898(v26);
        goto LABEL_20;
      }
    }

    else
    {
    }

    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    ++v26;
    if (v30 == v25)
    {

      goto LABEL_20;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_1E40D1A98()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_9();
  if (!v6)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_17:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v17 = Strong;
    if (!v4)
    {
LABEL_16:

      goto LABEL_17;
    }

    v18 = sub_1E40C40A4();
    if (v18)
    {
      v19 = v18;
      v20 = v4;
      if (v12)
      {
        v4 = v20;

        sub_1E40C8850(v8, v4, v10, v19);

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v21 = v4;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_146_2();
    v22(v0);
    v17 = v17;
    v23 = v2;
    v24 = sub_1E41FFC94();
    v25 = sub_1E42067F4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_49_0();
      v32 = OUTLINED_FUNCTION_160();
      v33 = OUTLINED_FUNCTION_100();
      *v26 = 136446466;
      v27 = sub_1E40C50E8();
      OUTLINED_FUNCTION_38_8(v27, v28);
      OUTLINED_FUNCTION_12_1();

      *(v26 + 4) = v4;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v32 = v23;
      v29 = v23;
      OUTLINED_FUNCTION_347(&dword_1E323F000, v24, v25, "%{public}saction %@ failed or was cancelled. Clearing currentRoute.");
      sub_1E325F6F0(v32, &unk_1ECF28E30);
      OUTLINED_FUNCTION_46_1();
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_55();
    }

    v30 = OUTLINED_FUNCTION_74();
    v31(v30);
    sub_1E40C8384();
    goto LABEL_15;
  }

  v6(v12 & 1);
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_25_2();

  sub_1E34AF594(v14);
}

void sub_1E40D1D4C(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v80 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v79 = v19 - v18;
  v77 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v76 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v75 = v23 - v22;
  OUTLINED_FUNCTION_89();
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v82 = a8;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  if (sub_1E40C40A4())
  {
    OUTLINED_FUNCTION_30();
    v26 = *(v25 + 776);
    sub_1E34AF604(a4);
    v27 = a7;
    v28 = v82;

    v30 = v26(v29);
  }

  else
  {
    sub_1E34AF604(a4);
    v31 = a7;
    v32 = a8;

    v30 = 0;
  }

  v81 = a7;
  if (!a2 || (objc_opt_self(), OUTLINED_FUNCTION_138_1(), swift_dynamicCastObjCClass()))
  {
LABEL_6:
    v33 = 0;
    goto LABEL_20;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_138_1();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_138_1();
    if (!swift_dynamicCastObjCClass())
    {
      v33 = 0;
      switch(v30)
      {
        case 1:
          v34 = a2;
          v35 = [v34 preAction];
          if (v35)
          {
            goto LABEL_15;
          }

          v36 = [v34 preActionDocumentDataSource];
          goto LABEL_17;
        case 2:
          v34 = a2;
          v35 = [v34 action];
          if (v35)
          {
            goto LABEL_15;
          }

          v36 = [v34 documentDataSource];
          goto LABEL_17;
        case 3:
          v34 = a2;
          v35 = [v34 postAction];
          if (v35)
          {
LABEL_15:
            v37 = v35;
          }

          else
          {
            v36 = [v34 postActionDocumentDataSource];
LABEL_17:
            v37 = v36;

            if (!v37)
            {
              goto LABEL_6;
            }
          }

          break;
        default:
          goto LABEL_20;
      }
    }
  }

  v33 = 1;
LABEL_20:
  sub_1E40C3B00(&v90);
  type metadata accessor for ActionTabSwitch();
  OUTLINED_FUNCTION_138_1();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    goto LABEL_32;
  }

  if (a4)
  {

    a4(1);
    v39 = OUTLINED_FUNCTION_21_42();
    sub_1E34AF594(v39);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    if (!v81)
    {
LABEL_27:

      goto LABEL_32;
    }

    v42 = sub_1E40C40A4();
    if (v42)
    {
      v43 = v42;

      v78 = v81;
      sub_1E40C8850(v30, v78, v8, v43);
      OUTLINED_FUNCTION_44_2();

      goto LABEL_27;
    }

    v72 = v81;
    v44 = sub_1E324FBDC();
    (*(v76 + 16))(v75, v44, v77);
    v73 = v82;
    v74 = v41;
    v45 = sub_1E41FFC94();
    v46 = sub_1E42067F4();

    v71 = v46;
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_49_0();
      v69 = OUTLINED_FUNCTION_160();
      v70 = OUTLINED_FUNCTION_100();
      aBlock = v70;
      *v47 = 136446466;
      v48 = sub_1E40C50E8();
      sub_1E3270FC8(v48, v49, &aBlock);
      OUTLINED_FUNCTION_50();

      *(v47 + 4) = v74;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v73;
      *v69 = v73;
      v50 = v73;
      _os_log_impl(&dword_1E323F000, v45, v71, "%{public}saction %@ failed or was cancelled. Clearing currentRoute.", v47, 0x16u);
      sub_1E325F6F0(v69, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_9();
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_46_1();

      OUTLINED_FUNCTION_15_5();
    }

    else
    {

      OUTLINED_FUNCTION_15_5();
    }

    v51(v75, v77);
    sub_1E40C8384();
  }

LABEL_32:
  sub_1E328438C(&v90, &v89);
  v52 = swift_allocObject();
  *(v52 + 16) = v38 != 0;
  *(v52 + 17) = v33;
  *(v52 + 24) = sub_1E40D6C20;
  *(v52 + 32) = v24;
  *(v52 + 40) = v8;
  *(v52 + 48) = v30;
  sub_1E329504C(&v89, (v52 + 56));
  v87 = sub_1E40D6C30;
  v88 = v52;
  OUTLINED_FUNCTION_49_61();
  v84 = 1107296256;
  v85 = sub_1E37EB82C;
  v86 = &block_descriptor_155;
  v53 = _Block_copy(&aBlock);

  [a3 performWithTargetResponder:0 completionHandler:v53];
  _Block_release(v53);
  v54 = v81;
  if (v33)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_138_1();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_138_1(), swift_dynamicCastObjCClass()))
    {
      sub_1E3280A90(0, &qword_1EE23B1D0);
      v55 = a4;
      v56 = sub_1E4206A04();
      v57 = swift_allocObject();
      *(v57 + 16) = sub_1E40D6C20;
      *(v57 + 24) = v24;
      *(v57 + 32) = v8;
      *(v57 + 40) = v30;
      v87 = sub_1E40D6C4C;
      v88 = v57;
      OUTLINED_FUNCTION_49_61();
      v84 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v85 = v58;
      v86 = &block_descriptor_161;
      v59 = _Block_copy(&aBlock);

      sub_1E4203FE4();
      aBlock = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_4_267();
      sub_1E3274C5C(v60, v61);
      v62 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v62);
      OUTLINED_FUNCTION_47();
      sub_1E32752B0(v63, v64);
      sub_1E42072E4();
      OUTLINED_FUNCTION_168_5();
      MEMORY[0x1E6911380]();
      v54 = v81;
      _Block_release(v59);

      a4 = v55;
      OUTLINED_FUNCTION_15_5();
      v65 = OUTLINED_FUNCTION_39_3();
      v66(v65);
      OUTLINED_FUNCTION_15_5();
      v67(v79, v80);
    }

    else if (sub_1E40C40A4())
    {
      OUTLINED_FUNCTION_30();
      (*(v68 + 784))(0);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v90);

  sub_1E34AF594(a4);
}

void sub_1E40D2728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    if (v31)
    {
      OUTLINED_FUNCTION_4_0();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_45_38(v35);
      swift_unknownObjectWeakInit();
      sub_1E34AF604(v23);
      v36 = v25;
      v37 = v27;

      v38 = OUTLINED_FUNCTION_135();
      sub_1E40D1D4C(v38, v39, v37, v23, a21, v21, v25, v37);
    }

    else
    {
      sub_1E40C8384();
      sub_1E324FBDC();
      OUTLINED_FUNCTION_131_0();
      v40 = OUTLINED_FUNCTION_33_14();
      v41(v40);
      v42 = v27;
      v43 = v34;
      v44 = v29;
      v45 = sub_1E41FFC94();
      v46 = sub_1E42067F4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_100();
        v48 = OUTLINED_FUNCTION_160();
        v63 = OUTLINED_FUNCTION_72_0();
        *v47 = 136446722;
        v49 = sub_1E40C50E8();
        OUTLINED_FUNCTION_38_8(v49, v50);
        OUTLINED_FUNCTION_40_18();
        *(v47 + 4) = v31;
        *(v47 + 12) = 2112;
        *(v47 + 14) = v42;
        *v48 = v42;
        *(v47 + 22) = 2080;
        if (v29)
        {
          swift_getErrorValue();
          v29 = v60;
          *(&v62 + 1) = v60;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v61);
          (*(*(v29 - 1) + 16))(boxed_opaque_existential_1, v59, v29);
        }

        else
        {
          v61 = 0u;
          v62 = 0u;
        }

        v54 = v42;
        v55 = sub_1E3294FA4(&v61);
        OUTLINED_FUNCTION_38_8(v55, v56);
        OUTLINED_FUNCTION_6_19();

        *(v47 + 24) = v29;
        _os_log_impl(&dword_1E323F000, v45, v46, "%{public}sauthentication failed for action: %@ error: %s", v47, 0x20u);
        sub_1E325F6F0(v48, &unk_1ECF28E30);
        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_120_10();
        OUTLINED_FUNCTION_46_1();
        OUTLINED_FUNCTION_55();

        v57 = OUTLINED_FUNCTION_13_8();
        v58(v57);
      }

      else
      {

        v52 = OUTLINED_FUNCTION_13_8();
        v53(v52);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D2A58(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_3();
  v9 = [objc_opt_self() vui_defaultBag];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 URLForKey_];
    OUTLINED_FUNCTION_2_4();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    aBlock[4] = sub_1E40D6CC8;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E40D2F40;
    aBlock[3] = &block_descriptor_179;
    v13 = _Block_copy(aBlock);

    [v11 valueWithCompletion_];
    _Block_release(v13);
  }

  else
  {
    v14 = sub_1E41FE414();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v14);
    a2(v3);
    sub_1E325F6F0(v3, &unk_1ECF363C0);
  }
}

void sub_1E40D2C0C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_9();
  v23 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v11 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v2;
  v12[4] = v6;
  v24[4] = sub_1E40D6CD0;
  v24[5] = v12;
  OUTLINED_FUNCTION_12_0();
  v24[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v24[2] = v13;
  v24[3] = &block_descriptor_185_0;
  v14 = _Block_copy(v24);
  v15 = v6;

  sub_1E4203FE4();
  v24[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_267();
  sub_1E3274C5C(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v18, v19);
  OUTLINED_FUNCTION_142_1();
  sub_1E42072E4();
  v20 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v20);
  _Block_release(v14);

  v21 = OUTLINED_FUNCTION_16_80();
  v22(v21);
  (*(v9 + 8))(v0, v23);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40D2E68(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  if (a3)
  {
    sub_1E41FE3C4();
    v8 = sub_1E41FE414();
    v9 = 0;
  }

  else
  {
    v8 = sub_1E41FE414();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v9, 1, v8);
  a1(v3);
  return sub_1E325F6F0(v3, &unk_1ECF363C0);
}

void sub_1E40D2F40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_1E40D2FD4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_9();
  v21 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v9 = sub_1E3280A90(0, &qword_1EE23B1D0);
  v10 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v11);
  swift_unknownObjectWeakInit();
  v22[4] = v4;
  v22[5] = v9;
  OUTLINED_FUNCTION_12_0();
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v22[2] = v12;
  v22[3] = v2;
  v13 = _Block_copy(v22);

  sub_1E4203FE4();
  v22[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_267();
  sub_1E3274C5C(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v16, v17);
  OUTLINED_FUNCTION_142_1();
  sub_1E42072E4();
  v18 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v18);
  _Block_release(v13);

  v19 = OUTLINED_FUNCTION_16_80();
  v20(v19);
  (*(v7 + 8))(v0, v21);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40D3274(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (a2)
  {
    v8 = a2;
  }

  v42 = v7;
  v43 = v8;
  if (a5 && (v51 = MEMORY[0x1E69E7CC0], (v9 = *(a5 + 16)) != 0))
  {
    v10 = a5 + 32;

    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1E328438C(v10, v50);
      sub_1E329504C(v50, &v48);
      sub_1E3280A90(0, &qword_1EE23B310);
      if ((swift_dynamicCast() & 1) != 0 && v49)
      {
        MEMORY[0x1E6910BF0]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_99_0();
        sub_1E4206324();
        v11 = v51;
      }

      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  v14 = OBJC_IVAR____TtC8VideosUI6Router_presentingRoute;
  v15 = *(v5 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute);
  if (v15)
  {
    v16 = *(*v15 + 848);

    if (v16(v17))
    {
      OUTLINED_FUNCTION_60_1();

      v18 = 1;
      *v13 = 1;

      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    sub_1E37D027C(v19);
    OUTLINED_FUNCTION_176_0();
  }

  v18 = 0;
LABEL_22:
  type metadata accessor for RoutingTransaction();
  OUTLINED_FUNCTION_58_41();
  v20 = swift_allocObject();
  sub_1E40C42B0();
  *(v20 + 96) = 0;
  *(v20 + 66) = 1;
  if (v15)
  {
    if (v18)
    {
      v39 = v14;
      v21 = *(v20 + 24);
      v41 = *(v20 + 16);
      v23 = *(v20 + 32);
      v22 = *(v20 + 40);
      v24 = *(v20 + 56);
      v40 = *(v20 + 48);
      *(v20 + 16) = v15;
      *(v20 + 24) = v42;
      *(v20 + 32) = v43;
      *(v20 + 40) = v11;
      *(v20 + 48) = a3;
      *(v20 + 56) = a4;
      v25 = *(v20 + 64);
      *(v20 + 64) = 6;

      sub_1E40D60A0(v41, v21, v23, v22, v40, v24, v25);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if ((*v13 & 1) == 0)
      {
        *(v6 + v39) = v15;
      }

      OUTLINED_FUNCTION_169();
      sub_1E40CBE10();
      OUTLINED_FUNCTION_98_16();
    }

    else
    {
      OUTLINED_FUNCTION_4_0();
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = v42;
      v35[4] = v43;
      v35[5] = v11;
      v35[6] = a3;
      v35[7] = a4;
      v35[8] = v12;
      v35[9] = v5;
      v35[10] = v20;
      v35[11] = v15;
      v36 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x208);

      v37 = v5;

      v36(0, sub_1E40D6340, v35);

      OUTLINED_FUNCTION_98_16();
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_105_2(v26);
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v20;
    v27[3] = v42;
    v27[4] = v43;
    v27[5] = v11;
    v27[6] = a3;
    v27[7] = a4;
    v27[8] = v12;
    v27[9] = v5;
    v44 = *(v20 + 24);
    v46 = *(v20 + 16);
    v28 = *(v20 + 32);
    v29 = *(v20 + 40);
    v30 = *(v20 + 48);
    v31 = *(v20 + 56);
    *(v20 + 16) = sub_1E40D6214;
    *(v20 + 24) = v27;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    v32 = *(v20 + 64);
    *(v20 + 64) = 1;

    v33 = v5;

    sub_1E40D60A0(v46, v44, v28, v29, v30, v31, v32);
  }

  *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v6) = v20;
}

void sub_1E40D3828(void *a1, char a2, void *a3, uint64_t a4)
{
  v9 = [a1 modalPresentationStyle];
  if (a3)
  {
    v15 = a3;
    v16 = a4;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v13 = v10;
    v14 = &block_descriptor_49_0;
    a3 = _Block_copy(&v11);
  }

  [v4 presentViewController:a1 modalPresentationStyle:v9 animated:a2 & 1 completion:{a3, v11, v12}];
  _Block_release(a3);
  OUTLINED_FUNCTION_2_75();
}

uint64_t sub_1E40D39C8(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v11 = 11;
  }

  else if (a2 > 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1E42EB7B0[a2];
  }

  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x218);

  return v12(a1, 0, v11, a3 & 1, a4, a5);
}

void sub_1E40D3B70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35_3();
  if ([objc_opt_self() isSUIEnabled])
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (!qword_1EE2AA808)
    {
      return;
    }

    OUTLINED_FUNCTION_88_0();
    v10 = *(v9 + 544);
    v12 = v11;
    v13 = OUTLINED_FUNCTION_63_0();
    v10(v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_32_7();
    sub_1E379D7E4(v14, v15, v16);
    v17 = sub_1E41FE414();
    v18 = 0;
    if (__swift_getEnumTagSinglePayload(v4, 1, v17) != 1)
    {
      v18 = sub_1E41FE364();
      v19 = OUTLINED_FUNCTION_24_4();
      v20(v19);
    }

    if (a3)
    {
      OUTLINED_FUNCTION_74();
      v12 = sub_1E4205ED4();
    }

    else
    {
      v12 = 0;
    }

    [objc_opt_self() handleAccountSettingsEventWithUrl:v18 amsBagKey:v12 useAMSWebView:a4 & 1];
  }
}

uint64_t sub_1E40D3F5C()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute))
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 632);

  LOBYTE(v2) = v2(v3);

  return v2 & 1;
}

uint64_t sub_1E40D404C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 528))();
  if (a4)
  {
    a4();
  }

  return v6 & 1;
}

void sub_1E40D4190()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v1;
  v76 = v5;
  OUTLINED_FUNCTION_9_5();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_1();
  v14 = OBJC_IVAR____TtC8VideosUI6Router_managedRoutes;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v15 = *&v1[v14];

  sub_1E37D027C(v16);
  OUTLINED_FUNCTION_122();

  if (v2)
  {

    sub_1E40C9518(v17);
    OUTLINED_FUNCTION_16_5();

    if (v15)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_48_4();
      v18(v3);

      v19 = v4;
      v20 = v0;
      v21 = sub_1E41FFC94();
      v22 = sub_1E4206814();

      v23 = &qword_1ECF3F000;
      if (os_log_type_enabled(v21, v22))
      {
        v72 = v8;
        v74 = v6;
        v24 = OUTLINED_FUNCTION_131_15();
        v25 = OUTLINED_FUNCTION_160();
        v77[4] = OUTLINED_FUNCTION_164_1();
        *v24 = 136446978;
        v26 = sub_1E40C50E8();
        OUTLINED_FUNCTION_38_8(v26, v27);
        OUTLINED_FUNCTION_11_5();

        *(v24 + 4) = v6;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v20;
        *v25 = v20;
        *(v24 + 22) = 2080;
        v77[0] = v2;
        v28 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v29, v30);
        v31 = v20;
        OUTLINED_FUNCTION_34();
        v32 = sub_1E4207944();
        OUTLINED_FUNCTION_38_8(v32, v33);
        OUTLINED_FUNCTION_11_5();

        *(v24 + 24) = v28;
        *(v24 + 32) = 2080;
        v34 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v19);
        if (v34)
        {
          v35 = type metadata accessor for RoutingTransaction();
        }

        else
        {
          v35 = 0;
          v77[1] = 0;
          v77[2] = 0;
        }

        v77[0] = v34;
        v77[3] = v35;

        v60 = sub_1E3294FA4(v77);
        OUTLINED_FUNCTION_38_8(v60, v61);
        OUTLINED_FUNCTION_11_5();

        *(v24 + 34) = v28;
        _os_log_impl(&dword_1E323F000, v21, v22, "%{public}shandling %@ with route: [%s], transaction [%s]", v24, 0x2Au);
        sub_1E325F6F0(v25, &unk_1ECF28E30);
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_62_37();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_43_71();

        (*(v72 + 8))(v3, v74);
        v23 = &qword_1ECF3F000;
      }

      else
      {

        v58 = OUTLINED_FUNCTION_147_7();
        v59(v58, v6);
      }

      v62 = v23[313];
      if (*&v19[v62])
      {
        v63 = *&v19[v62];
      }

      else
      {
        type metadata accessor for RoutingTransaction();
        OUTLINED_FUNCTION_58_41();
        v63 = swift_allocObject();
        sub_1E40C42B0();
      }

      v64 = *(v63 + 32);
      v65 = *(v63 + 40);
      v67 = *(v63 + 48);
      v66 = *(v63 + 56);
      *(v63 + 16) = v2;
      *(v63 + 24) = 0u;
      *(v63 + 40) = 0u;
      v68 = *(v63 + 64);
      *(v63 + 49) = 0u;

      v69 = OUTLINED_FUNCTION_34();
      sub_1E40D60A0(v69, v70, v64, v65, v67, v66, v68);
      *(v63 + 96) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1E3280A90(0, &unk_1ECF3FA50);
        Strong = sub_1E3A81730();
      }

      swift_unknownObjectWeakAssign();

      sub_1E40D0360();

      goto LABEL_21;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v36 = OUTLINED_FUNCTION_167_6();
  v37(v36);
  v38 = v8;
  v39 = v4;
  v40 = v6;
  v41 = v0;
  v42 = sub_1E41FFC94();
  v43 = sub_1E42067F4();

  if (os_log_type_enabled(v42, v43))
  {
    v75 = v40;
    v44 = OUTLINED_FUNCTION_100();
    v45 = OUTLINED_FUNCTION_160();
    v77[0] = OUTLINED_FUNCTION_72_0();
    *v44 = 136315650;
    v73 = v43;
    v46 = sub_1E40C50E8();
    OUTLINED_FUNCTION_110_15(v46, v47);
    OUTLINED_FUNCTION_112();

    *(v44 + 4) = v39;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v41;
    *v45 = v41;
    *(v44 + 22) = 2080;
    v48 = type metadata accessor for Route(0);
    v49 = v41;

    MEMORY[0x1E6910C30](v50, v48);

    v51 = OUTLINED_FUNCTION_34();
    v54 = sub_1E3270FC8(v51, v52, v53);

    *(v44 + 24) = v54;
    _os_log_impl(&dword_1E323F000, v42, v73, "%sno valid route for handling %@: %s", v44, 0x20u);
    sub_1E325F6F0(v45, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_65_0();

    (*(v38 + 8))(v12, v75);
  }

  else
  {

    v55 = OUTLINED_FUNCTION_124();
    v57(v55, v56);
  }

  if (v76)
  {
    v76(0);
  }

LABEL_21:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D483C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v1;
  v89 = v6;
  v90 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_9_5();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v83 - v14;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E37D027C(v16);
  OUTLINED_FUNCTION_40_18();
  if (v3)
  {

    v18 = sub_1E40C9518(v17);

    if (v18)
    {
      v83[0] = v8;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_48_4();
      v19(v15);

      v20 = v4;
      v21 = v0;
      v22 = v3;
      v23 = sub_1E41FFC94();
      v24 = sub_1E4206814();

      v25 = os_log_type_enabled(v23, v24);
      v26 = &qword_1ECF3F000;
      v87 = v22;
      if (v25)
      {
        v86 = v11;
        v88 = v9;
        v27 = OUTLINED_FUNCTION_131_15();
        v28 = OUTLINED_FUNCTION_160();
        v84 = OUTLINED_FUNCTION_164_1();
        *&v99 = v84;
        *v27 = 136446978;
        v29 = sub_1E40C50E8();
        OUTLINED_FUNCTION_14_64(v29, v30);
        OUTLINED_FUNCTION_112();

        *(v27 + 4) = v11;
        *(v27 + 12) = 2112;
        *(v27 + 14) = v21;
        *v28 = v21;
        *(v27 + 22) = 2080;
        v91 = v22;
        v31 = type metadata accessor for Route(0);
        OUTLINED_FUNCTION_0_342();
        sub_1E3274C5C(v32, v33);
        v85 = v21;
        v34 = v21;
        v35 = sub_1E4207944();
        OUTLINED_FUNCTION_14_64(v35, v36);
        OUTLINED_FUNCTION_112();

        *(v27 + 24) = v31;
        *(v27 + 32) = 2080;
        v37 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v20);
        if (v37)
        {
          v38 = type metadata accessor for RoutingTransaction();
        }

        else
        {
          v38 = 0;
          v92 = 0;
          v93 = 0;
        }

        v91 = v37;
        v94 = v38;

        v60 = sub_1E3294FA4(&v91);
        OUTLINED_FUNCTION_14_64(v60, v61);
        OUTLINED_FUNCTION_112();

        *(v27 + 34) = v31;
        _os_log_impl(&dword_1E323F000, v23, v24, "%{public}shandling [%@] with route: [%s], transaction [%s]", v27, 0x2Au);
        sub_1E325F6F0(v28, &unk_1ECF28E30);
        OUTLINED_FUNCTION_13_4();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_4();
        OUTLINED_FUNCTION_51_2();

        v86[1](v15, v88);
        v26 = &qword_1ECF3F000;
      }

      else
      {

        v11[1](v15, v9);
      }

      v62 = v26[313];
      if (*&v20[v62])
      {
        v63 = *&v20[v62];
      }

      else
      {
        type metadata accessor for RoutingTransaction();
        OUTLINED_FUNCTION_58_41();
        v63 = swift_allocObject();
        sub_1E40C42B0();
      }

      v64 = *(v63 + 120);
      v99 = *(v63 + 104);
      v100 = v64;
      v101 = *(v63 + 136);

      sub_1E40D0144();
      v65 = v91;
      v66 = v92;
      v67 = v93;
      v68 = v94;
      v69 = v95;
      v70 = v96;
      v71 = v97;
      v83[1] = v20;
      v72 = v98;
      v73 = *(v63 + 32);
      v74 = *(v63 + 40);
      v75 = *(v63 + 48);
      v76 = *(v63 + 56);
      *(v63 + 16) = v91;
      *(v63 + 24) = v66;
      *(v63 + 32) = v67;
      *(v63 + 40) = v68;
      *(v63 + 48) = v69;
      *(v63 + 56) = v70;
      v77 = *(v63 + 64);
      *(v63 + 64) = v71;
      v83[2] = v65;
      v83[3] = v66;
      v83[4] = v67;
      v84 = v68;
      v85 = v69;
      v86 = v70;
      LODWORD(v88) = v71;
      sub_1E40D6474(v65, v66, v67, v68, v69, v70, v71);
      v78 = OUTLINED_FUNCTION_32_0();
      sub_1E40D60A0(v78, v79, v73, v74, v75, v76, v77);
      *(v63 + 96) = v72;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        v81 = v83[0];
        Strong = v83[0];
        if (!v83[0])
        {
          sub_1E3280A90(0, &unk_1ECF3FA50);
          Strong = sub_1E3A81730();
        }

        v82 = v81;
      }

      swift_unknownObjectWeakAssign();

      sub_1E40CBE10();
      if (v90)
      {
        v90(1);
      }

      OUTLINED_FUNCTION_74_24();

      goto LABEL_27;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v39(v2);
  v40 = v4;
  v41 = v0;
  v42 = v9;
  v43 = sub_1E41FFC94();
  v44 = sub_1E42067F4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_100();
    v88 = v42;
    v46 = v45;
    v47 = OUTLINED_FUNCTION_160();
    v87 = OUTLINED_FUNCTION_72_0();
    v91 = v87;
    *v46 = 136315650;
    LODWORD(v86) = v44;
    v48 = sub_1E40C50E8();
    sub_1E3270FC8(v48, v49, &v91);
    OUTLINED_FUNCTION_112();

    *(v46 + 4) = v40;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v41;
    *v47 = v41;
    *(v46 + 22) = 2080;
    v50 = type metadata accessor for Route(0);
    v51 = v41;

    v53 = MEMORY[0x1E6910C30](v52, v50);
    v55 = v54;

    v56 = sub_1E3270FC8(v53, v55, &v91);

    *(v46 + 24) = v56;
    _os_log_impl(&dword_1E323F000, v43, v86, "%sno valid route for handling %@: %s", v46, 0x20u);
    sub_1E325F6F0(v47, &unk_1ECF28E30);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_4();

    v57 = OUTLINED_FUNCTION_161_6();
    v59 = v88;
  }

  else
  {

    v57 = OUTLINED_FUNCTION_161_6();
    v59 = v42;
  }

  v58(v57, v59);
  if (v90)
  {
    v90(0);
  }

LABEL_27:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40D5034()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v32 = v6;
  v33 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_9();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if ((v11 & 1) == 0)
  {
    if (v9)
    {
      LOBYTE(v34[0]) = v3;
      LOBYTE(v35) = 0;
      sub_1E3F4EEA0();
      if ((sub_1E4205E84() & 1) == 0)
      {
        sub_1E328438C(v1, v34);
        type metadata accessor for RoutingTransaction();
        if (swift_dynamicCast())
        {
          v16 = v35;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (qword_1EE2AA808 && (v17 = qword_1EE2AA808, v18 = sub_1E40CA9C0(), v17, v18))
          {
            sub_1E40C40D8();
            *(v16 + 65) = 1;
            sub_1E3280A90(0, &qword_1EE23B1D0);
            v31 = sub_1E4206A04();
            v19 = swift_allocObject();
            *(v19 + 16) = v32;
            *(v19 + 24) = v33;
            *(v19 + 32) = v13 & 1;
            *(v19 + 40) = v16;
            *(v19 + 48) = v3;
            v34[4] = sub_1E40D6C84;
            v34[5] = v19;
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 1107296256;
            OUTLINED_FUNCTION_14_1();
            v34[2] = v20;
            v34[3] = &block_descriptor_167;
            v30 = _Block_copy(v34);

            sub_1E4203FE4();
            v34[0] = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_4_267();
            sub_1E3274C5C(v21, v22);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
            OUTLINED_FUNCTION_47();
            sub_1E32752B0(v23, v24);
            OUTLINED_FUNCTION_142_1();
            sub_1E42072E4();
            v25 = OUTLINED_FUNCTION_62_0();
            MEMORY[0x1E6911380](v25);
            _Block_release(v30);

            v26 = OUTLINED_FUNCTION_16_80();
            v27(v26);
            v28 = OUTLINED_FUNCTION_39_3();
            v29(v28);
          }

          else
          {
          }
        }
      }
    }

    else
    {
      v32(v13 & 1, v5, v3);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E40D53C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FE414();
  v5 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) != 1)
  {
    v5 = sub_1E41FE364();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v6 = [v2 initWithAccountURL_];

  return v6;
}

uint64_t sub_1E40D5474(unint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  sub_1E34AF4E4(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v4)
  {
    return MEMORY[0x1E6911E60](a1, a2);
  }

  else
  {
  }
}

void *sub_1E40D54D8(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

void sub_1E40D5530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FA88);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_1E40D566C()
{
  type metadata accessor for Route(0);
  sub_1E3274C5C(&qword_1ECF3D190, type metadata accessor for Route);
  return sub_1E4205E84() & 1;
}

uint64_t sub_1E40D56F4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  v1 = sub_1E4207384();
  result = sub_1E4207384();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_1E4207384();
    if ((v1 & 0x8000000000000000) == 0 && result >= v1)
    {
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E40D5768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_201_0();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_156();
  v27 = v13;
  v14 = *v10;
  if (sub_1E32AE9B0(*v10) < v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(v9, v11))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v11 - v9;
  if (__OFSUB__(0, v9 - v11))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = sub_1E32AE9B0(v14);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1E3879104(v18);
  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_200();

  v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, v27);
}

uint64_t sub_1E40D5810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for Route(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E40D590C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E3280A90(0, &qword_1EE23B0D0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E40D5A18@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E40D5474(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E40D5A74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for Route(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1E40D5B50()
{
  sub_1E4207614();
  MEMORY[0x1E69109E0](3943982, 0xE300000000000000);
  sub_1E4207614();
  return 0;
}

uint64_t sub_1E40D5C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DestinationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E40D5C90()
{
  result = qword_1EE2890B8;
  if (!qword_1EE2890B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FA00);
    swift_getOpaqueTypeConformance2();
    sub_1E40D5D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890B8);
  }

  return result;
}

unint64_t sub_1E40D5D34()
{
  result = qword_1EE2894E0;
  if (!qword_1EE2894E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3FA18);
    sub_1E40D5E1C(&qword_1EE2896A0, &unk_1ECF3FA28, &unk_1E42EB318, sub_1E40D5DEC);
    sub_1E379E8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894E0);
  }

  return result;
}

uint64_t sub_1E40D5E1C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E40D5EA8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x90);
    if (v2())
    {
      OUTLINED_FUNCTION_30();
      (*(v3 + 1040))();
    }

    v4 = *(OBJC_IVAR____TtC8VideosUI6Router_currentTransaction + v1);
    if (v4 && *(v4 + 64) == 7)
    {
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      if (v5)
      {
        OUTLINED_FUNCTION_47_0();
        v8 = *(v7 + 776);
        sub_1E40D6474(v6, v5, v9, v10, v11, v12, 7);

        v13 = v5;
        v8();
        v2();
        OUTLINED_FUNCTION_8_154();
        sub_1E40C8850();
      }

      else
      {
        sub_1E40D6474(*(v4 + 16), 0, *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), 7);
      }
    }

    else
    {
    }
  }
}

void sub_1E40D60A0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 3:

      return;
    case 1:

      sub_1E34AF594(a1);
      return;
    case 2:

      goto LABEL_17;
    case 4:

      v7 = a3;
      goto LABEL_13;
    case 5:
      a2 = a6;
      goto LABEL_12;
    case 6:

LABEL_17:

      return;
    case 7:
LABEL_12:

      v7 = a2;
LABEL_13:

      break;
    default:
      return;
  }
}

uint64_t sub_1E40D6214(uint64_t a1)
{
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + 24);
    v17 = *(result + 16);
    v11 = *(result + 40);
    v14 = *(result + 48);
    v15 = *(result + 32);
    v13 = *(result + 56);
    *(result + 16) = a1;
    *(result + 24) = v3;
    *(result + 32) = v5;
    *(result + 40) = v4;
    *(result + 48) = v7;
    *(result + 56) = v6;
    v12 = *(result + 64);
    *(result + 64) = 6;

    sub_1E40D60A0(v17, v16, v15, v11, v14, v13, v12);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if ((*(v9 + 16) & 1) == 0)
    {
      *(v8 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute) = a1;
    }

    OUTLINED_FUNCTION_169();
    sub_1E40CBE10();
  }

  return result;
}

void sub_1E40D6340()
{
  v1 = v0;
  v2 = v0[3];
  v4 = v1[4];
  v3 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v18 = *(v9 + 24);
    v19 = *(v9 + 16);
    v20 = v8;
    v13 = *(v9 + 32);
    v16 = *(v9 + 48);
    v17 = *(v9 + 40);
    v15 = *(v9 + 56);
    *(v9 + 16) = v10;
    *(v9 + 24) = v2;
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
    *(v9 + 48) = v6;
    *(v9 + 56) = v5;
    v14 = *(v9 + 64);
    *(v9 + 64) = 6;

    sub_1E40D60A0(v19, v18, v13, v17, v16, v15, v14);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if ((*(v7 + 16) & 1) == 0)
    {
      *(v20 + OBJC_IVAR____TtC8VideosUI6Router_presentingRoute) = v10;
    }

    OUTLINED_FUNCTION_169();
    sub_1E40CBE10();
  }
}

id sub_1E40D6474(id result, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  switch(a7)
  {
    case 0:
    case 3:
      goto LABEL_11;
    case 1:

      return sub_1E34AF604(result);
    case 2:

      goto LABEL_11;
    case 4:

      return a3;
    case 5:
      v8 = a6;
      goto LABEL_11;
    case 6:

    case 7:
      v7 = a2;
LABEL_11:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1E40D65AC()
{
  sub_1E40D6FCC(319, &qword_1EE289FC0, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1E40D66A4()
{
  result = qword_1EE288C78;
  if (!qword_1EE288C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FA60);
    sub_1E40D6728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C78);
  }

  return result;
}

unint64_t sub_1E40D6728()
{
  result = qword_1EE288C88;
  if (!qword_1EE288C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FA10);
    sub_1E40D5C90();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C88);
  }

  return result;
}

_BYTE *sub_1E40D67D0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_8VideosUI5RouteCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI18RoutingTransaction33_CB7708BC4FB811FA9ED5B84F5D503870LLC7ContextO(uint64_t a1)
{
  if ((*(a1 + 48) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 48) & 0xF;
  }
}

uint64_t sub_1E40D68E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 >= 0xF8 && *(a1 + 49))
  {
    return OUTLINED_FUNCTION_17_7(*a1 + 247);
  }

  v3 = *(a1 + 48);
  if (v3 > 8)
  {
    return OUTLINED_FUNCTION_17_7(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }
}

uint64_t sub_1E40D691C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E40D6970(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1E40D69D4()
{
  result = qword_1ECF6CC30[0];
  if (!qword_1ECF6CC30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6CC30);
  }

  return result;
}

void sub_1E40D6A28()
{
  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v0 = sub_1E41FF1E4();

    if (v0)
    {
      return;
    }
  }

  else
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = [v1 isNetworkReachable];

    if (v2)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x228))(0);
  }
}

unint64_t sub_1E40D6B30()
{
  result = qword_1ECF3FA70;
  if (!qword_1ECF3FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FA70);
  }

  return result;
}

void sub_1E40D6CDC()
{
  OUTLINED_FUNCTION_201_0();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 776);
    v3;
    v2();
    sub_1E40C8850();
    OUTLINED_FUNCTION_200();
  }

  else
  {
    OUTLINED_FUNCTION_200();
  }
}

uint64_t objectdestroy_26Tm()
{

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

uint64_t objectdestroy_204Tm()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

void sub_1E40D6E4C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E40C8384();
  }

  if (v1)
  {
    v1();
  }
}

unint64_t sub_1E40D6EB8()
{
  result = qword_1ECF3FA80;
  if (!qword_1ECF3FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FA80);
  }

  return result;
}

void sub_1E40D6FCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void OUTLINED_FUNCTION_74_24()
{
  v2 = *(v0 - 288);
  v3 = *(v0 - 280);
  v4 = *(v0 - 272);
  v5 = *(v0 - 264);
  v6 = *(v0 - 256);
  v7 = *(v0 - 248);
  v8 = *(v0 - 232);

  sub_1E40D60A0(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t OUTLINED_FUNCTION_110_15(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_120_10()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_131_15()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_132_12()
{
  v3 = *(v1 - 136);
  v4 = *(v1 - 176);
  v5 = *(v1 - 168);
  v6 = *(v1 - 160);
  v7 = *(v1 - 152);

  sub_1E40D60A0(v0, v3, v4, v5, v6, v7, 1);
}

void OUTLINED_FUNCTION_137_10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

unint64_t OUTLINED_FUNCTION_139_12()
{
  *(v0 - 192) = *(v0 - 336);

  return sub_1E40D6EB8();
}

unint64_t OUTLINED_FUNCTION_141_12(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 104));
}

double OUTLINED_FUNCTION_158_9@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = *(v2 - 160);
  *(v1 + 24) = a1;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  return result;
}

char *OUTLINED_FUNCTION_176_7()
{

  return sub_1E377FD30(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_177_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

unint64_t OUTLINED_FUNCTION_179_4(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 128));
}

BOOL OUTLINED_FUNCTION_181_4()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_182_5(float a1)
{
  *v1 = a1;

  return sub_1E40C50E8();
}

uint64_t OUTLINED_FUNCTION_187_4()
{

  return sub_1E41FFCB4();
}

uint64_t sub_1E40D72DC()
{
  v1 = OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_viewModel;
  result = OUTLINED_FUNCTION_0_12();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = *(*v3 + 800);

    v4(2, 0, 0, 0);
  }

  return result;
}

id sub_1E40D7368(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = (*(*a1 + 488))();
  if (v6)
  {
    v7 = sub_1E373E010(39, v6);

    if (v7)
    {
      v9 = (*(*v7 + 392))(v8);

      if (v9)
      {
        type metadata accessor for ImageLayout();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          v12 = *(*v10 + 152);

          v14 = v48;
          v12(v48, v13);
          if (v49)
          {
            v14 = MEMORY[0x1E69DDCE0];
            v15 = *(MEMORY[0x1E69DDCE0] + 8);
            v16 = *(MEMORY[0x1E69DDCE0] + 16);
            v17 = *(MEMORY[0x1E69DDCE0] + 24);
          }

          else
          {
            v15 = *&v48[1];
            v16 = *&v48[2];
            v17 = *&v48[3];
          }

          v18 = sub_1E3952BE0(*v14, v15, v16, v17);
          (*(*v11 + 208))(a2 - v18, 0);
        }
      }
    }
  }

  type metadata accessor for UIFactory();
  v19 = *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  type metadata accessor for ContextMenuPreviewItemView();
  v20 = v19;
  v21 = sub_1E393D92C(a1, v19, &v45, 0);

  sub_1E373C624(&v45);
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView];
  *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView] = v21;
  v23 = v21;
  result = [v3 view];
  if (result)
  {
    v25 = result;
    v26 = OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView;
    v27 = *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView];
    v28 = v27;
    sub_1E3C8BDFC(v27, v22);

    v29 = *&v3[v26];
    if (!v29)
    {
LABEL_18:

LABEL_19:
      v44 = OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_viewModel;
      swift_beginAccess();
      *&v3[v44] = a1;
    }

    v30 = v29;
    result = [v3 view];
    if (result)
    {
      v31 = result;
      [result bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      [v30 setFrame_];
      v40 = *&v3[v26];
      if (v40)
      {
        v41 = v40;
        [v41 setBackgroundColor_];

        v42 = *&v3[v26];
        if (v42)
        {
          [v42 setTranslatesAutoresizingMaskIntoConstraints_];
          v43 = *&v3[v26];
          if (v43)
          {
            [v43 setAutoresizingMask_];
          }
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1E40D76E8(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView);
  if (v3)
  {
    v4 = v3;
    a1 = sub_1E3F65B40(a1);
  }

  return a1;
}

id sub_1E40D774C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView] = 0;
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

id sub_1E40D7860(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI32ContextMenuPreviewItemController_cardView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

char *sub_1E40D797C()
{
  v1 = sub_1E41FFBF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v6 = VUISignpostLogObject();
  OUTLINED_FUNCTION_2_48();

  v7 = 0.0;
  if ((*(v0 + 49) & 1) == 0)
  {
    if (*(v0 + 24))
    {
      v7 = 0.0;
    }

    else
    {
      v7 = *(v0 + 8);
    }
  }

  type metadata accessor for LeagueStandingsLegendFooter();
  v8 = sub_1E40D7B18(*v0, 0, v7);
  sub_1E4206B94();
  v9 = VUISignpostLogObject();
  OUTLINED_FUNCTION_2_48();

  (*(v2 + 8))(v4, v1);
  return v8;
}

char *sub_1E40D7B18(uint64_t a1, void *a2, double a3)
{
  if (a2 && (type metadata accessor for LeagueStandingsLegendFooter(), (v6 = swift_dynamicCastClass()) != 0))
  {
    v7 = v6;
    v8 = a2;
  }

  else
  {
    type metadata accessor for LeagueStandingsLegendFooter();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = v8;
  }

  *&v7[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_layout] = (*(*a1 + 392))(v8);

  v10 = (*(*a1 + 488))(v9);
  if (v10)
  {
    v11 = sub_1E373E010(259, v10);

    if (v11)
    {
      type metadata accessor for LeagueStandingsLegendView();
      v12 = *&v7[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView];
      v13 = v12;
      v14 = sub_1E38594C4(v11, v12, a3);

      v15 = v14;
      sub_1E40D7F54(v14);
    }
  }

  [v7 setNeedsLayout];
  return v7;
}

id sub_1E40D7CA4(void *a1)
{
  [a1 vui_layoutIfNeeded];
  [a1 layoutIfNeeded];
  [a1 systemLayoutSizeFittingSize_];
  OUTLINED_FUNCTION_18_3();
  [a1 frame];

  return [a1 setFrame_];
}

uint64_t sub_1E40D7D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E40D8424();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E40D7DA4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E40D8424();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E40D7E78()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E40D83BC();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E40D7ECC()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E40D83BC();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E40D7F20()
{
  sub_1E40D83BC();
  sub_1E4201F04();
  __break(1u);
}

void sub_1E40D7F54(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView];
  *&v1[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView] = a1;
  v2 = a1;
  [v3 vui_removeFromSuperView];
  if (*&v1[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView])
  {
    [v1 addSubview_];
  }
}

id sub_1E40D7FE4()
{
  OUTLINED_FUNCTION_0_8();
  v5 = OUTLINED_FUNCTION_7_240(&OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_layout);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

uint64_t sub_1E40D805C(void *a1)
{
  OUTLINED_FUNCTION_7_240(&OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_layout);
  swift_deallocPartialClassInstance();
  return 0;
}

double sub_1E40D8100()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView);
  if (!v1)
  {
    return 0.0;
  }

  [v1 vui:1 layoutSubviews:0.0 computationOnly:0.0];
  return result;
}

void sub_1E40D8184(char a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for LeagueStandingsLegendFooter();
  objc_msgSendSuper2(&v13, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v7 = *&v3[OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView];
  if (v7)
  {
    v8 = v7;
    v9 = v8;
    if ((a1 & 1) == 0)
    {
      [v8 frame];
      v10 = (a3 - CGRectGetHeight(v14)) * 0.5;
      [v3 intrinsicContentSize];
      [v9 setFrame_];
    }

    [v3 intrinsicContentSize];
    OUTLINED_FUNCTION_18_3();
  }

  OUTLINED_FUNCTION_17_4();
}

void sub_1E40D82CC()
{

  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI27LeagueStandingsLegendFooter_legendView);
}

id sub_1E40D8314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeagueStandingsLegendFooter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E40D8394(uint64_t a1)
{
  result = sub_1E40D83BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E40D83BC()
{
  result = qword_1ECF3FAA0;
  if (!qword_1ECF3FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FAA0);
  }

  return result;
}

unint64_t sub_1E40D8424()
{
  result = qword_1ECF3FAA8;
  if (!qword_1ECF3FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FAA8);
  }

  return result;
}

unint64_t VUIViewController.logPrefix.getter()
{
  sub_1E42074B4();

  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  MEMORY[0x1E69109E0](23901, 0xE200000000000000);
  return 0xD000000000000014;
}

Swift::Void __swiftcall VUIViewController.loadView()()
{
  v1 = [objc_allocWithZone(VUIBaseView) initWithFrame_];
  [v0 setVuiView_];

  [v0 vui_loadView];
}

id sub_1E40D87E0(char a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for VUIViewController();
  OUTLINED_FUNCTION_2_262();
  objc_msgSendSuper2(v6, v7, a1 & 1);
  return [v3 *a3];
}

id sub_1E40D88EC(uint64_t a1, SEL *a2)
{
  type metadata accessor for VUIViewController();
  OUTLINED_FUNCTION_2_262();
  objc_msgSendSuper2(v4, v5);
  return [v2 *a2];
}

id sub_1E40D8A04(uint64_t a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for VUIViewController();
  OUTLINED_FUNCTION_2_262();
  objc_msgSendSuper2(v6, v7, a1);
  return [v3 *a3];
}

id VUIViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VUIViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_1_301(&OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity);
  if (v5)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for VUIViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id VUIViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VUIViewController.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_1_301(&OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VUIViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id VUIViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E40D8D8C()
{
  if ((sub_1E39DFFC8() & 1) == 0 && (*(v0 + OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity + 8) & 1) == 0)
  {
    result = 1;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity) >= 1.0)
    {
      return result;
    }

    *(v0 + OBJC_IVAR____TtC8VideosUI17VUIViewController_forceRestoreNavBarTitleOnViewDidAppear) = 1;
  }

  return 0;
}

void sub_1E40D8E60(char *a1, double a2)
{
  v3 = a1;
  if (!a1)
  {
    a1 = v2;
  }

  v9 = a1;
  v5 = v3;
  v6 = [v9 vuiNavigationItem];
  v7 = [v6 titleView];

  sub_1E40D8F24(v7, 0, a2);
  v8 = &v9[OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity];
  *v8 = a2;
  *(v8 + 8) = 0;
}

void sub_1E40D8F24(void *a1, char a2, double a3)
{
  v4 = v3;
  if ((sub_1E39DFFC8() & 1) == 0 && a1 && (type metadata accessor for UberNavigationBarTitleView(), (v8 = swift_dynamicCastClass()) != 0))
  {
    v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x1D8);
    v10 = a1;
    v9(a2 & 1, a3);
  }

  else if ((sub_1E39DFFC8() & 1) == 0)
  {
    [a1 setAlpha_];
  }

  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v11 = [v4 vuiNavigationController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 navigationBar];

      [v13 _setTitleOpacity_];
    }
  }
}

void sub_1E40D90A0()
{
  if ((sub_1E39DFFC8() & 1) == 0 && (v0[OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity + 8] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC8VideosUI17VUIViewController_navigationBarTitleOpacity];
    v2 = [v0 vuiNavigationItem];
    v3 = [v2 titleView];

    sub_1E40D8F24(v3, 1, v1);
  }
}

void sub_1E40D915C()
{
  if (sub_1E39DFFC8())
  {
    return;
  }

  v1 = [v0 vuiNavigationController];
  v2 = 0;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v3 = v1;
  v4 = [v1 navigationBar];

  if (!v4)
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  [v4 _titleOpacity];
  v2 = v5;
  v6 = 0;
LABEL_7:
  v9 = v2;
  v10 = v6;
  v8 = 0x3FF0000000000000;
  v7 = sub_1E3793CAC();
  if (sub_1E414A6BC(&v9, &v8, MEMORY[0x1E69E7DE0], v7))
  {
    [v4 _setTitleOpacity_];
  }
}

uint64_t sub_1E40D9240(unint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v100 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v100 - v12;
  v14 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E39DFFC8();
  if (result)
  {
    v109 = OBJC_IVAR____TtC8VideosUI17VUIViewController_lastTitleVisibility;
    v21 = v1[OBJC_IVAR____TtC8VideosUI17VUIViewController_lastTitleVisibility];
    LOBYTE(v112) = a1;
    if (v21 == 3 || (v113 = v21, sub_1E3B62064(), result = sub_1E4205E84(), (result & 1) == 0))
    {
      v100 = v10;
      v103 = v14;
      v22 = VUISignpostLogObject();
      sub_1E41FFBC4();
      sub_1E4206BA4();
      v23 = VUISignpostLogObject();
      v104 = v19;
      sub_1E41FFBA4();

      v24 = sub_1E324FBDC();
      v25 = *(v5 + 16);
      v107 = v24;
      v108 = v5 + 16;
      v106 = v25;
      v25(v13);
      v105 = v1;
      v26 = v5;
      v27 = v1;
      v28 = sub_1E41FFC94();
      v29 = sub_1E4206814();

      v30 = os_log_type_enabled(v28, v29);
      v110 = v27;
      v102 = v16;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v112 = v101;
        *v31 = 136315394;
        v32 = VUIViewController.logPrefix.getter();
        v16 = a1;
        a1 = sub_1E3270FC8(v32, v33, &v112);

        *(v31 + 4) = a1;
        v34 = v26;
        LOBYTE(a1) = v16;
        *(v31 + 12) = 2048;
        *(v31 + 14) = OUTLINED_FUNCTION_13_30(v16);
        _os_log_impl(&dword_1E323F000, v28, v29, "%s updateTitleVisibility titleVisibility=%ld", v31, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v101);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v35 = OUTLINED_FUNCTION_5_247();
        (v16)(v35);
      }

      else
      {

        v36 = OUTLINED_FUNCTION_5_247();
        (v16)(v36);
        v34 = v26;
      }

      v105[v109] = a1;
      if ([objc_opt_self() isPad])
      {
        v37 = v110;
        result = [v110 vuiView];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v38 = result;
        type metadata accessor for LayoutGrid();
        [v38 bounds];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;

        v114.origin.x = v40;
        v114.origin.y = v42;
        v114.size.width = v44;
        v114.size.height = v46;
        Width = CGRectGetWidth(v114);
        v48 = sub_1E3A2579C(Width);
        if ((sub_1E3A2511C(v48) & 1) != 0 && sub_1E374E8E4(a1, 1))
        {
          v49 = v100;
          v106(v100, v107, v3);
          v50 = v37;
          v51 = sub_1E41FFC94();
          v52 = sub_1E4206814();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = v3;
            v55 = v16;
            v56 = swift_slowAlloc();
            v112 = v56;
            *v53 = 136315138;
            v57 = VUIViewController.logPrefix.getter();
            v59 = sub_1E3270FC8(v57, v58, &v112);

            *(v53 + 4) = v59;
            _os_log_impl(&dword_1E323F000, v51, v52, "%s updateTitleVisibility pad doesn't support edge visibility, fallback to always", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v56);
            v16 = v55;
            v3 = v54;
            OUTLINED_FUNCTION_6_0();
            v37 = v110;
            OUTLINED_FUNCTION_6_0();

            v60 = v49;
            v61 = v54;
          }

          else
          {

            v60 = v49;
            v61 = v3;
          }

          (v16)(v60, v61);
          LOBYTE(a1) = 0;
        }
      }

      else
      {
        v37 = v110;
      }

      v101 = v16;
      v62 = [v37 vuiNavigationController];
      if (v62)
      {
        v63 = v62;
        v64 = v3;
        v65 = a1;
        v66 = [v62 navigationBar];
      }

      else
      {
        v64 = v3;
        v65 = a1;
        v66 = 0;
      }

      v67 = [v37 navigationItem];
      v68 = [v67 standardAppearance];

      v69 = v68;
      if (!v68)
      {
        if (v66 && (v70 = [v66 standardAppearance]) != 0)
        {
          v71 = v70;
          v72 = [v70 copy];
        }

        else
        {
          v72 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
        }

        v69 = v72;
        v37 = v110;
      }

      v105 = v69;
      v73 = v68;
      v74 = [v37 navigationItem];
      v75 = [v74 scrollEdgeAppearance];

      v76 = v75;
      if (!v75)
      {
        if (v66 && (v77 = [v66 scrollEdgeAppearance]) != 0)
        {
          v78 = v77;
          v79 = [v77 copy];
        }

        else
        {
          v79 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
        }

        v76 = v79;
        v37 = v110;
      }

      v109 = v34;
      LOBYTE(v112) = v65;
      v113 = 0;
      sub_1E3B62064();
      v80 = v75;
      LODWORD(v100) = sub_1E4205E84() ^ 1;
      LODWORD(v110) = sub_1E374E8E4(v65, 2);
      v106(v111, v107, v64);
      v81 = v37;
      v82 = v64;
      v83 = sub_1E41FFC94();
      v84 = sub_1E4206814();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v112 = v86;
        *v85 = 136315650;
        v108 = v82;
        v87 = VUIViewController.logPrefix.getter();
        v89 = v66;
        v90 = sub_1E3270FC8(v87, v88, &v112);

        *(v85 + 4) = v90;
        v66 = v89;
        *(v85 + 12) = 1024;
        v91 = v100;
        *(v85 + 14) = v100 & 1;
        *(v85 + 18) = 1024;
        *(v85 + 20) = v110 & 1;
        _os_log_impl(&dword_1E323F000, v83, v84, "%s updateTitleVisibility standardTitleHidden=%{BOOL}d, scrollEdgeTitleHidden=%{BOOL}d", v85, 0x18u);
        __swift_destroy_boxed_opaque_existential_1(v86);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v101(v111, v108);
        v93 = v102;
        v92 = v103;
        v94 = v91;
      }

      else
      {

        v101(v111, v82);
        v93 = v102;
        v92 = v103;
        v94 = v100;
      }

      v95 = v105;
      [v105 _setTitleControlHidden_];
      [v76 _setTitleControlHidden_];
      v96 = [v81 navigationItem];
      [v96 setStandardAppearance_];

      v97 = [v81 navigationItem];
      [v97 setScrollEdgeAppearance_];

      sub_1E4206B94();
      v98 = VUISignpostLogObject();
      v99 = v104;
      sub_1E41FFBA4();

      return v93[1](v99, v92);
    }
  }

  return result;
}

void sub_1E40D9BF4()
{
  OUTLINED_FUNCTION_31_1();
  v54 = v0;
  v2 = v1;
  v4 = v3;
  v61 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v60 = [objc_opt_self() sharedInstance];
  sub_1E42038E4();
  v59 = v62[0];
  v58 = v62[1];
  type metadata accessor for Router();
  OUTLINED_FUNCTION_4_268();
  sub_1E40E02E0(v21, v22);
  v23 = sub_1E4201754();
  v56 = v24;
  v57 = v23;
  v25 = sub_1E324FBDC();
  v53 = v16;
  v55 = v14;
  (*(v16 + 16))(v20, v25, v14);

  v26 = sub_1E41FFC94();
  v27 = sub_1E4206814();

  if (os_log_type_enabled(v26, v27))
  {
    v52 = v4;
    v28 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v28 = 136315650;
    *(v28 + 4) = sub_1E3270FC8(v11, v9, v62);
    *(v28 + 12) = 2080;
    v50 = v27;
    v29 = (*(*v7 + 368))();
    v51 = v11;
    v30 = v2;
    v31 = sub_1E41E1364(v29);
    v32 = v9;
    v34 = v33;

    v35 = v31;
    v36 = v32;
    v2 = v30;
    v37 = sub_1E3270FC8(v35, v34, v62);

    *(v28 + 14) = v37;
    *(v28 + 22) = 2080;
    v38 = sub_1E41E1364(v30);
    v40 = sub_1E3270FC8(v38, v39, v62);

    *(v28 + 24) = v40;
    _os_log_impl(&dword_1E323F000, v26, v50, "    DocumentView::init id:%s, showcaseValue:%s route %s", v28, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v4 = v52;
    OUTLINED_FUNCTION_6_0();

    v41 = v20;
    v42 = v51;
    (*(v53 + 8))(v41, v55);
  }

  else
  {

    (*(v16 + 8))(v20, v55);
    v36 = v9;
    v42 = v11;
  }

  type metadata accessor for DocumentInteractor();
  OUTLINED_FUNCTION_25_110();
  sub_1E40E02E0(v43, v44);

  v45 = sub_1E42010C4();
  v47 = v46;
  LOBYTE(v62[0]) = 0;
  v48 = (*(*v7 + 416))();

  v49 = v62[0];
  *v13 = v42;
  *(v13 + 8) = v36;
  memcpy((v13 + 16), v61, 0x64uLL);
  *(v13 + 120) = v60;
  *(v13 + 128) = v59;
  *(v13 + 136) = v58;
  *(v13 + 144) = v45;
  *(v13 + 152) = v47;
  *(v13 + 160) = 0u;
  *(v13 + 176) = 0u;
  *(v13 + 192) = 0u;
  *(v13 + 208) = 0;
  *(v13 + 216) = v48;
  *(v13 + 224) = v4;
  *(v13 + 232) = v57;
  *(v13 + 240) = v56;
  *(v13 + 248) = sub_1E40DA080;
  *(v13 + 256) = v2;
  *(v13 + 264) = v49;
  *(v13 + 272) = v2;
  *(v13 + 280) = v54;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40DA080()
{
  type metadata accessor for InternalDocumentRoute();
  *(swift_allocObject() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route) = v0;

  return sub_1E3B500B4();
}

void sub_1E40DA0D0()
{
  OUTLINED_FUNCTION_31_1();
  v50 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v49 = v9;
  if (*(v0 + 64))
  {
    OUTLINED_FUNCTION_8();
    (*(v10 + 784))();
  }

  sub_1E40DA6DC();
  v51 = *(v0 + 272);
  OUTLINED_FUNCTION_27_100();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v11);

  OUTLINED_FUNCTION_49_62();
  type metadata accessor for Route(0);
  sub_1E40DEAEC();
  sub_1E40E02E0(&qword_1ECF3D190, type metadata accessor for Route);
  sub_1E4203524();

  v12 = sub_1E325F69C(v4, &qword_1ECF3FAB0);
  v13 = *(v0 + 152);
  v14 = *(*v13 + 368);
  v14(v12);
  OUTLINED_FUNCTION_30();
  v16 = *(v15 + 160);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB90);
  v16();

  OUTLINED_FUNCTION_27_100();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v18);
  v19 = &v7[*(v17 + 56)];
  *v19 = sub_1E40DF344;
  v19[1] = v18;
  v20 = OUTLINED_FUNCTION_49_62();
  v14(v20);
  OUTLINED_FUNCTION_30();
  v22 = v47;
  (*(v21 + 248))();

  OUTLINED_FUNCTION_27_100();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v23);
  v24 = &v7[*(v22 + 56)];
  *v24 = sub_1E40E1010;
  v24[1] = v23;
  v25 = *(*v13 + 440);
  v26 = OUTLINED_FUNCTION_49_62();
  LOBYTE(v51) = v25(v26) & 1;
  OUTLINED_FUNCTION_27_100();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v27);
  OUTLINED_FUNCTION_49_62();
  sub_1E374AD40(&qword_1ECF3FB98, &qword_1ECF3FAB8);
  v28 = v49;
  sub_1E4203524();

  sub_1E325F69C(v7, &qword_1ECF3FAB8);
  OUTLINED_FUNCTION_27_100();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v29);
  v30 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBA0) + 36));
  *v30 = sub_1E40DF4F0;
  v30[1] = v29;
  v30[2] = 0;
  v30[3] = 0;
  OUTLINED_FUNCTION_27_100();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v31);
  v32 = (v28 + *(v48 + 36));
  *v32 = 0;
  v32[1] = 0;
  v32[2] = sub_1E40DF7EC;
  v32[3] = v31;
  v33 = *(*v13 + 272);
  OUTLINED_FUNCTION_49_62();
  v34 = OUTLINED_FUNCTION_49_62();
  v35 = v33(v34);
  v37 = v36;
  v39 = v38;
  LOWORD(v13) = v40;
  v51 = v35;
  v52 = v36;
  v53 = v38;
  v55 = v41;
  v54 = v40;
  OUTLINED_FUNCTION_27_100();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_28_90(v42);
  OUTLINED_FUNCTION_49_62();
  OUTLINED_FUNCTION_24_113();
  sub_1E40DEC90(v43, &qword_1ECF3FAC0, v44, v45);
  sub_1E40DFC98();
  sub_1E4203524();

  sub_1E39050C0(v35, v37, v39, v13);
  sub_1E325F69C(v28, &qword_1ECF3FAC0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DA6DC()
{
  OUTLINED_FUNCTION_31_1();
  v96 = v2;
  v97 = type metadata accessor for ErrorTemplate();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v92 = v5 - v4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBD0);
  OUTLINED_FUNCTION_0_10();
  v81 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v79 = v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v83 = v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB88);
  OUTLINED_FUNCTION_0_10();
  v80 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v78 = v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v86 = v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v95 = v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v89 = v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v91 = v21;
  OUTLINED_FUNCTION_138();
  v22 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_1();
  v30 = *(**(v0 + 152) + 272);
  v31 = v30();
  v35 = v31;
  if ((v34 & 0xE000) != 0)
  {
    sub_1E39050C0(v31, v32, v33, v34);
    v36 = v30();
    v35 = v36;
    if ((v34 & 0xE000) == 0x6000)
    {
      v37 = OUTLINED_FUNCTION_40_2(v36, v32);
      sub_1E37CD868(v37, v38, v39);
      goto LABEL_6;
    }

LABEL_5:
    sub_1E39050C0(v35, v32, v33, v34);
    v40 = v0;
    goto LABEL_8;
  }

  if (v32)
  {
    goto LABEL_5;
  }

LABEL_6:
  v40 = v0;
  if (v35)
  {

    sub_1E4206BA4();
    v41 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    (*(v24 + 8))(v28, v22);
    sub_1E40DBF88();

    v42 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FAF8) + 36));
    *v42 = sub_1E40DD1C4;
    v42[1] = 0;
    v42[2] = 0;
    v42[3] = 0;
    OUTLINED_FUNCTION_27_100();
    v43 = swift_allocObject();
    memcpy((v43 + 16), v40, 0x120uLL);
    v44 = (v1 + *(v87 + 36));
    *v44 = sub_1E40E0394;
    v44[1] = v43;
    v44[2] = 0;
    v44[3] = 0;
    sub_1E3743538(v1, v89, &qword_1ECF3FAE8);
    swift_storeEnumTagMultiPayload();
    sub_1E40DEAB4(v40, &v98);
    OUTLINED_FUNCTION_23_105();
    sub_1E40DEC90(v45, &qword_1ECF3FAE8, &unk_1E42EB9E0, v46);
    sub_1E40DF230();
    sub_1E4201F44();
    sub_1E3743538(v91, v95, &qword_1ECF3FAD8);
    swift_storeEnumTagMultiPayload();
    sub_1E40DEBA8();
    OUTLINED_FUNCTION_2_263();
    sub_1E40E02E0(v47, v48);
    OUTLINED_FUNCTION_57_38();
    sub_1E4201F44();

    sub_1E325F69C(v91, &qword_1ECF3FAD8);
    v49 = v1;
    v50 = &qword_1ECF3FAE8;
LABEL_16:
    sub_1E325F69C(v49, v50);
    goto LABEL_17;
  }

LABEL_8:
  OUTLINED_FUNCTION_8();
  v52 = (*(v51 + 272))();
  v56 = v53;
  if ((v55 & 0xE000) != 0)
  {
    sub_1E39050C0(v52, v53, v54, v55);
  }

  else
  {
    sub_1E39050C0(v52, v53, v54, v55);
    if (v56)
    {
      if (v40[17])
      {
        MEMORY[0x1EEE9AC00](v57);
        *(&v77 - 2) = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBF0);
        v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D838);
        v59 = OUTLINED_FUNCTION_11_188();
        v98 = v58;
        v99 = v59;
        OUTLINED_FUNCTION_8_3();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v98 = v85;
        v99 = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        v61 = v78;
        sub_1E42013C4();
        v62 = v80;
        v63 = v84;
        v64 = OUTLINED_FUNCTION_87_2();
        v65(v64);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_31_94(&qword_1ECF3FB80, &qword_1ECF3FB88);
        v66 = v86;
        sub_1E4201F44();
        (*(v62 + 8))(v61, v63);
      }

      else
      {
        sub_1E40DBCFC();
        (*(v81 + 16))(v83, v79, v85);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_31_94(&qword_1ECF3FB80, &qword_1ECF3FB88);
        v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D838);
        v99 = OUTLINED_FUNCTION_11_188();
        OUTLINED_FUNCTION_8_3();
        swift_getOpaqueTypeConformance2();
        v66 = v86;
        sub_1E4201F44();
        (*(v81 + 8))(v79, v85);
      }

      sub_1E3743538(v66, v89, &qword_1ECF3FB78);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_23_105();
      sub_1E40DEC90(v70, v71, v72, v73);
      sub_1E40DF230();
      v74 = v91;
      sub_1E4201F44();
      sub_1E3743538(v74, v95, &qword_1ECF3FAD8);
      swift_storeEnumTagMultiPayload();
      sub_1E40DEBA8();
      OUTLINED_FUNCTION_2_263();
      sub_1E40E02E0(v75, v76);
      OUTLINED_FUNCTION_57_38();
      sub_1E4201F44();
      sub_1E325F69C(v74, &qword_1ECF3FAD8);
      v49 = v66;
      v50 = &qword_1ECF3FB78;
      goto LABEL_16;
    }
  }

  sub_1E40DBE80();
  sub_1E40E0328(v92, v95);
  swift_storeEnumTagMultiPayload();
  sub_1E40DEBA8();
  OUTLINED_FUNCTION_2_263();
  sub_1E40E02E0(v67, v68);
  sub_1E4201F44();
  OUTLINED_FUNCTION_20_128();
  sub_1E40E0820(v92, v69);
LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DB104()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *v3;
  v12 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v12, v4);
  sub_1E40DEAB4(v1, v25);

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  sub_1E3AB7040(v1);

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1E3270FC8(*v1, *(v1 + 8), v25);
    *(v15 + 12) = 2080;
    v16 = sub_1E41E1364(v11);
    v24 = v4;
    v18 = sub_1E3270FC8(v16, v17, v25);

    *(v15 + 14) = v18;
    _os_log_impl(&dword_1E323F000, v13, v14, "DocumentView::%s, update route to %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v6 + 8))(v10, v24);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_32_7();
    v21(v19, v20);
  }

  if (*(v11 + 32) == 1)
  {
    type metadata accessor for InternalDocumentRoute();
    OUTLINED_FUNCTION_5_248();
    sub_1E40E02E0(v22, v23);
    OUTLINED_FUNCTION_32_7();
    sub_1E4200BC4();
    sub_1E40DD8D4(v11);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DB370()
{
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_47_0();
  v2 += 46;
  v3 = *v2;
  (*v2)();
  OUTLINED_FUNCTION_2_1();
  v5 = (*(v4 + 392))();

  if (v5)
  {
    v7 = (v3)(v6);
    v8 = (*(*v7 + 136))();
    OUTLINED_FUNCTION_12_6();
    v56 = *(v9 + 224);
    v10 = v56();
    v11 = 1.0;
    v12 = 1.0 - v8;
    v13 = (1.0 - v8) * v10;
    v14 = *(*v1 + 392);
    v14();
    OUTLINED_FUNCTION_2_1();
    v16 = (*(v15 + 288))();

    v18 = *(*v7 + 272);
    v19 = COERCE_DOUBLE((v18)(v17));
    v21 = v20;
    if (((*(*v7 + 320))() & 1) == 0)
    {
      if (v21)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      OUTLINED_FUNCTION_12_6();
      v24 = (*(v23 + 368))();
      v25 = (v10 + v22 - v24 - v16) / v10;
      v26 = v25 < 0.0 || v25 > v12;
      v27 = (v13 + v16 - (v10 + v22)) / v24 + 1.0;
      if (v26)
      {
        v27 = 0.0;
      }

      v28 = fmin(v27, 1.0);
      if (v28 < 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v28;
      }
    }

    v14();
    OUTLINED_FUNCTION_30();
    v30 = (*(v29 + 224))();

    if (v30 != v11)
    {
      (v14)(v31);
      OUTLINED_FUNCTION_30();
      (*(v32 + 232))(v11);
    }

    OUTLINED_FUNCTION_12_6();
    v34 = (*(v33 + 344))();
    v35 = v56();
    v36 = COERCE_DOUBLE(v18());
    v38 = 0.0;
    if (v37)
    {
      v36 = 0.0;
    }

    v39 = v35 + v36;
    v40 = (v39 - v34 - v16) / v10;
    if (v40 >= 0.0 && v40 <= v12)
    {
      v42 = fmin((v13 + v16 - v39) / v34 + 1.0, 1.0);
      if (v42 >= 0.0)
      {
        v38 = v42;
      }
    }

    v14();
    OUTLINED_FUNCTION_30();
    v44 = (*(v43 + 256))();

    if (v44 != v38)
    {
      (v14)(v45);
      OUTLINED_FUNCTION_30();
      (*(v46 + 264))(v38);
    }

    if (TVAppFeature.isEnabled.getter(10))
    {
      v14();
      OUTLINED_FUNCTION_30();
      v48 = (*(v47 + 224))();

      (v14)(v49);
      OUTLINED_FUNCTION_2_1();
      v51 = (*(v50 + 320))();

      if (v51 != v48)
      {
        (v14)(v52);
        OUTLINED_FUNCTION_30();
        (*(v53 + 328))(v48);
      }
    }

    v54 = *(v0 + 176);
    if (v54)
    {
      v54(v7);
    }

    OUTLINED_FUNCTION_8_19();
  }

  else
  {
    OUTLINED_FUNCTION_8_19();
  }
}

void *sub_1E40DB940()
{
  OUTLINED_FUNCTION_54_54();
  v4 = v3[20];
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(__src, v3 + 22, sizeof(__src));
  sub_1E40DEAB4(v3, v10);

  sub_1E34AF594(v4);
  memcpy(v9, __dst, 0xA0uLL);
  v9[20] = v2;
  v9[21] = v1;
  memcpy(&v9[22], __src, 0x70uLL);
  memcpy(v10, __dst, sizeof(v10));
  v11 = v2;
  v12 = v1;
  memcpy(v13, __src, sizeof(v13));
  sub_1E40DEAB4(v9, &v6);
  sub_1E3AB7040(v10);
  return memcpy(v0, v9, 0x120uLL);
}

uint64_t sub_1E40DBA40(__objc2_class **a1)
{
  if (a1 && *a1 == _TtC8VideosUI13TextViewModel)
  {

    OUTLINED_FUNCTION_18();
    v1 = sub_1E3C287F4(0);
    v2 = v1;
    if (v1)
    {
      v3 = [v1 string];

      sub_1E4205F14();
    }

    else
    {
    }
  }

  sub_1E32822E0();
  return sub_1E4202C44();
}

void sub_1E40DBB3C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBD0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v14 = *(v2 + 17);
  sub_1E40DBCFC();
  v15 = MEMORY[0x1E697C438];
  if ((v14 & 0x100) != 0)
  {
    v15 = MEMORY[0x1E697C440];
  }

  (*(v5 + 104))(v9, *v15, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D838);
  OUTLINED_FUNCTION_11_188();
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_16_8();
  sub_1E42033D4();
  v16 = OUTLINED_FUNCTION_11_6();
  v17(v16);
  (*(v12 + 8))(v0, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DBCFC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D838);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 344);

  v9(v10);
  v11 = OUTLINED_FUNCTION_18();
  v12 = sub_1E3F06F18(v6, v7, v11 & 1);
  sub_1E3F074EC(v12 & 1, v13, v14, v15, v1);

  memset(v20, 0, sizeof(v20));
  v21 = 1;
  v16 = OUTLINED_FUNCTION_11_188();
  if (v3)
  {
    v17 = 5;
  }

  else
  {
    v17 = 11;
  }

  sub_1E3A6929C(v17, 0, 0, 1, v20, v4, v16);
  v18 = OUTLINED_FUNCTION_11_6();
  v19(v18);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40DBE80()
{
  OUTLINED_FUNCTION_31_1();
  v1 = *(v0 + 120);
  if (!v1 || (sub_1E3741090(0xD000000000000017, 0x80000001E4291370, *(v0 + 120)), sub_1E3741090(0xD000000000000013, 0x80000001E4289AC0, v1), !v2))
  {
  }

  OUTLINED_FUNCTION_25_2();

  return sub_1E38DF750(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1E40DBF88()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v18[2] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB30);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FBF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  if (*(v1 + 64))
  {
    v11 = objc_opt_self();

    if (![v11 isMac] || (TVAppFeature.isEnabled.getter(18) & 1) != 0)
    {
      sub_1E40DC2A4();
    }
  }

  sub_1E40DCBB4();
  v12 = OUTLINED_FUNCTION_87_2();
  v13(v12);
  swift_storeEnumTagMultiPayload();
  sub_1E40DEE0C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40);
  v16 = sub_1E40DF04C();
  v19 = v15;
  v20 = v16;
  OUTLINED_FUNCTION_3_273();
  v17 = OUTLINED_FUNCTION_16_8();
  v19 = v14;
  v20 = v17;
  OUTLINED_FUNCTION_7_241();
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_56_42();
  sub_1E4201F44();
  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DC2A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v80 = v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC00);
  OUTLINED_FUNCTION_0_10();
  v65 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v64 = v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v79 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB30);
  OUTLINED_FUNCTION_0_10();
  v71 = v15;
  v72 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v69 = v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB28);
  OUTLINED_FUNCTION_0_10();
  v75 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v74 = v20;
  v21 = OUTLINED_FUNCTION_138();
  v70 = type metadata accessor for NavigationBarItems(v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v73 = v24 - v23;
  OUTLINED_FUNCTION_138();
  v82 = sub_1E4202314();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v63 = v32;
  v68 = v3;
  if (v3)
  {
    v33 = 1;
  }

  else
  {
    v85 = &unk_1F5D5DAC8;
    v86 = &off_1F5D5C998;
    LOBYTE(v83) = 17;
    v33 = sub_1E39C29F0(&v83, *(v1 + 17) & 1);
    __swift_destroy_boxed_opaque_existential_1(&v83);
  }

  OUTLINED_FUNCTION_5_0();
  v34 = *(v7 + 56);
  v85 = &unk_1F5D5CF88;
  v86 = &off_1F5D5C718;
  LOBYTE(v83) = 2;
  type metadata accessor for TemplateViewModel();

  v35 = j__OUTLINED_FUNCTION_18();
  v36 = sub_1E39C3418(&v83, v35 & 1, v34);

  __swift_destroy_boxed_opaque_existential_1(&v83);
  v66 = v30;
  v67 = v26;
  if (v33)
  {
    sub_1E40DD2B8(v5, 1);
    sub_1E40DD348();
    v37 = OUTLINED_FUNCTION_48_55();
    v38(v37);
    LODWORD(v65) = v36;
    v64 = v5;

    v39 = OUTLINED_FUNCTION_57();
    sub_1E3908F18(v39, v40);
    v41 = v73;
    sub_1E39EFBA8();
    sub_1E40DCBB4();
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40);
    v44 = sub_1E40DF04C();
    v83 = v43;
    v84 = v44;
    OUTLINED_FUNCTION_3_273();
    v45 = OUTLINED_FUNCTION_6_70();
    v83 = v42;
    v84 = v45;
    OUTLINED_FUNCTION_7_241();
    v46 = OUTLINED_FUNCTION_6_70();
    OUTLINED_FUNCTION_22_101();
    v49 = sub_1E40E02E0(v47, v48);
    sub_1E39EF294(v41, v72, v70, v46, v49);
  }

  sub_1E40DD2B8(v5, 0);
  sub_1E40DD348();
  v50 = OUTLINED_FUNCTION_48_55();
  v51(v50);
  v63 = v5;

  v52 = OUTLINED_FUNCTION_57();
  sub_1E3908F18(v52, v53);
  v54 = v73;
  sub_1E39EFBA8();
  sub_1E40DCBB4();
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38);
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40);
  v57 = sub_1E40DF04C();
  v83 = v56;
  v84 = v57;
  OUTLINED_FUNCTION_3_273();
  v58 = OUTLINED_FUNCTION_6_70();
  v83 = v55;
  v84 = v58;
  OUTLINED_FUNCTION_7_241();
  v59 = OUTLINED_FUNCTION_6_70();
  OUTLINED_FUNCTION_22_101();
  v62 = sub_1E40E02E0(v60, v61);
  sub_1E39EF294(v54, v72, v70, v59, v62);
}

void sub_1E40DCA1C()
{
  (*(v0[8] + 8))(v4, v5);
  OUTLINED_FUNCTION_27_100();
  v9 = swift_allocObject();
  memcpy((v9 + 16), v7, 0x120uLL);
  sub_1E40DEAB4(v7, (v0 + 20));
  v0[20] = v5;
  v0[21] = v8;
  v0[22] = v3;
  v0[23] = v1;
  v10 = OUTLINED_FUNCTION_19_150();
  v11 = v0[1];
  v12 = v0[14];
  sub_1E383B5A4(sub_1E40E0818, v9, v12);

  (*(v0[12] + 8))(v6, v12);
  OUTLINED_FUNCTION_21_121();
  sub_1E40E0820(v2, v13);
  (*(v0[4] + 8))(v0[3], v0[19]);
  v14 = v0[2];
  v15 = v0[18];
  (*(v14 + 16))(v0[16], v11, v15);
  swift_storeEnumTagMultiPayload();
  sub_1E40DEFE8();
  v0[20] = v12;
  v0[21] = v10;
  OUTLINED_FUNCTION_19_150();
  sub_1E4201F44();
  (*(v14 + 8))(v11, v15);
  JUMPOUT(0x1E40DCB9CLL);
}

void sub_1E40DCBB4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v72 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A970);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v69 = v9;
  OUTLINED_FUNCTION_138();
  v70 = sub_1E42045D4();
  OUTLINED_FUNCTION_0_10();
  v67 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v65 = v13 - v12;
  OUTLINED_FUNCTION_138();
  v14 = sub_1E4204624();
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v62 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A978);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB58);
  OUTLINED_FUNCTION_17_2(v22);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_1();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_26_2();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FB38);
  OUTLINED_FUNCTION_0_10();
  v66 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v63 = v27;
  v71 = v5;
  sub_1E40DD4C8();
  v28 = *(v3 + 232);
  if (v28)
  {
    type metadata accessor for InternalDocumentRoute();
    OUTLINED_FUNCTION_5_248();
    sub_1E40E02E0(v29, v30);
    v31 = v28;
    OUTLINED_FUNCTION_32_7();
    v32 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

    (*(**(v3 + 152) + 392))(v33);
    v34 = sub_1E379D97C(v31, v32);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1E32E4364(v2, v1);
    v41 = v64;
    v42 = (v1 + *(v64 + 36));
    *v42 = v34;
    v42[1] = v36;
    v42[2] = v38;
    v42[3] = v40;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1E4205CB4();
    sub_1E4204614();
    sub_1E37E5C70(v43);
    OUTLINED_FUNCTION_57();
    sub_1E4204504();
    v44 = sub_1E4204514();
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v44);
    v45 = MetricsJetEngine.shared.unsafeMutableAddressor();
    v46 = *((*MEMORY[0x1E69E7D40] & **v45) + 0x68);
    v47 = *v45;
    v48 = v65;
    v46(v47);

    OUTLINED_FUNCTION_8();
    (*(v49 + 184))(v50);
    v51 = sub_1E41FF594();
    v52 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v51);
    v53 = sub_1E40DF04C();
    v54 = v63;
    sub_1E4202C74();
    swift_unknownObjectRelease();
    sub_1E325F69C(v52, &qword_1ECF2A970);
    (*(v67 + 8))(v48, v70);
    sub_1E325F69C(v21, &qword_1ECF2A978);
    sub_1E325F69C(v1, &qword_1ECF3FB40);
    v55 = v71;
    if (v71)
    {
      OUTLINED_FUNCTION_5_0();
      if (*(v55 + 56))
      {
        OUTLINED_FUNCTION_12_6();
        v57 = *(v56 + 320);

        v57(v58);
      }
    }

    v73 = v41;
    v74 = v53;
    OUTLINED_FUNCTION_3_273();
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_16_0();
    v59 = v68;
    sub_1E40A802C();

    (*(v66 + 8))(v54, v59);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for Router();
    OUTLINED_FUNCTION_4_268();
    sub_1E40E02E0(v60, v61);
    OUTLINED_FUNCTION_6_46();
    __break(1u);
  }
}

uint64_t sub_1E40DD1C4()
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  sub_1E4206B94();
  v1 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v2 = OUTLINED_FUNCTION_16_0();
  return v3(v2);
}

uint64_t sub_1E40DD2B8(uint64_t a1, char a2)
{
  v6[3] = &unk_1F5D5DBE8;
  v6[4] = &off_1F5D5C9D8;
  LOBYTE(v6[0]) = 0;
  v4 = sub_1E39C29F0(v6, *(v2 + 18) & 1);
  __swift_destroy_boxed_opaque_existential_1(v6);
  if ((v4 & 1) == 0)
  {
    return sub_1E42022F4();
  }

  if (a2)
  {
    return sub_1E42022E4();
  }

  return sub_1E4202304();
}

uint64_t sub_1E40DD348()
{
  v1 = *(v0 + 280);
  v10 = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_47_0();
    v2 += 49;
    v3 = *v2;
    (*v2)();
    OUTLINED_FUNCTION_30();
    v5 = *(v4 + 200);

    v5(v6);

    v1 = (v3)(v7);
  }

  sub_1E3743538(&v10, &v9, &qword_1ECF3FC10);
  return v1;
}

uint64_t sub_1E40DD428(double a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 392))();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 296))(a1);
}

void sub_1E40DD4C8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF317A8);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for ErrorTemplate();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  if (v5 && (OUTLINED_FUNCTION_5_0(), (v15 = *(v5 + 56)) != 0))
  {
    v35 = v8;

    v17 = *(v3 + 152);
    v34 = *(*v17 + 344);
    v18 = v34(v16);
    if (v18)
    {
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_35_6();
      v19();
    }

    v32 = *(v3 + 40);
    v33 = *(v3 + 32);
    v31 = *(v3 + 56);
    v20 = *(v3 + 48);
    v21 = (*(*v17 + 368))(v18);
    v22 = (*(*v17 + 392))();
    v23 = (*(*v17 + 416))();
    sub_1E3E85A74(v15, v33, v32, v20 & 1, v31, v21, v22, v23, v1, v17[10]);

    if (v34(v24))
    {
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_35_6();
      v25();
    }

    (*(v35 + 16))(v0, v1, v6);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_2_263();
    sub_1E40E02E0(v26, v27);
    OUTLINED_FUNCTION_11_6();
    sub_1E4201F44();

    (*(v35 + 8))(v1, v6);
  }

  else
  {
    sub_1E40DBE80();
    sub_1E40E0328(v14, v0);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_2_263();
    sub_1E40E02E0(v28, v29);
    OUTLINED_FUNCTION_11_6();
    sub_1E4201F44();
    OUTLINED_FUNCTION_20_128();
    sub_1E40E0820(v14, v30);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40DD8D4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route) = a1;

  type metadata accessor for InternalDocumentRoute();
  OUTLINED_FUNCTION_5_248();
  sub_1E40E02E0(v2, v3);
  sub_1E4200514();
  sub_1E4200594();
}

uint64_t sub_1E40DD9A4()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E40DDA68()
{
  if (qword_1ECF6CEC0 != -1)
  {
    OUTLINED_FUNCTION_9_194();
  }

  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_46_64();
}

__n128 sub_1E40DDADC@<Q0>(__n128 *a1@<X8>)
{
  sub_1E40DFCEC();
  sub_1E4201AC4();
  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u8[0] = v6;
  return result;
}

void sub_1E40DDB80()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v60 = v4;
  sub_1E42010B4();
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = sub_1E42013D4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v53 - v15;
  OUTLINED_FUNCTION_138();
  v16 = type metadata accessor for ContentFittingNavigationStack();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v53 - v24;
  OUTLINED_FUNCTION_138();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v58 = v26;
  v59 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v57 = v28;
  v56 = &v53;
  LODWORD(v28) = *(v1 + *(v3 + 36));
  v61 = v6;
  v62 = v5;
  v63 = v1;
  if (v28 == 1)
  {
    v29 = &v22[*(v16 + 36)];
    *v29 = swift_getKeyPath();
    *(v29 + 1) = 0;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 16) = 0;
    v30 = &v22[*(v16 + 40)];
    v66 = 0;
    v67 = 0;
    v68 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70);
    sub_1E42038E4();
    v31 = v70;
    v32 = v71;
    *v30 = v69;
    v30[16] = v31 & 1;
    *(v30 + 3) = v32;
    sub_1E40E02C0();
    OUTLINED_FUNCTION_6_231();
    swift_getWitnessTable();
    v33 = *(v18 + 16);
    v34 = v55;
    v33(v55, v22, v16);
    v35 = *(v18 + 8);
    v36 = OUTLINED_FUNCTION_168();
    v35(v36);
    v33(v22, v34, v16);
    OUTLINED_FUNCTION_1_302();
    swift_getWitnessTable();
    v37 = v57;
    v38 = OUTLINED_FUNCTION_168();
    sub_1E37B8D98(v38, v39);
    v40 = OUTLINED_FUNCTION_168();
    v35(v40);
    (v35)(v34, v16);
  }

  else
  {
    sub_1E42013C4();
    OUTLINED_FUNCTION_1_302();
    swift_getWitnessTable();
    v41 = *(v9 + 16);
    v42 = v54;
    v41(v54, v13, v7);
    v43 = *(v9 + 8);
    v44 = OUTLINED_FUNCTION_57();
    v43(v44);
    v41(v13, v42, v7);
    OUTLINED_FUNCTION_6_231();
    swift_getWitnessTable();
    v37 = v57;
    v45 = OUTLINED_FUNCTION_32_7();
    sub_1E37B8E90(v45, v46, v7);
    v47 = OUTLINED_FUNCTION_57();
    v43(v47);
    (v43)(v42, v7);
  }

  OUTLINED_FUNCTION_6_231();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_302();
  v49 = swift_getWitnessTable();
  v64 = WitnessTable;
  v65 = v49;
  OUTLINED_FUNCTION_2_25();
  v50 = v59;
  swift_getWitnessTable();
  (*(v58 + 16))(v60, v37, v50);
  v51 = OUTLINED_FUNCTION_11_6();
  v52(v51);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40DDFF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = *(v3 + 16);
  v7(v5 - v4);
  v8 = OUTLINED_FUNCTION_57();
  v7(v8);
  return (*(v3 + 8))(v6, a2);
}

double sub_1E40DE0E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 36));
  v5 = v4[1];
  v10 = *v4;
  v11 = v5;
  v12 = *(v4 + 16);
  sub_1E40DE88C(v8);
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

void sub_1E40DE144()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v34 = v2;
  sub_1E42010B4();
  v33 = *(v1 + 16);
  v3 = sub_1E42013A4();
  v32 = *(v1 + 24);
  v40[3] = v32;
  v40[4] = MEMORY[0x1E697EBE0];
  OUTLINED_FUNCTION_4_1();
  *&v41 = v3;
  *(&v41 + 1) = swift_getWitnessTable();
  v30[1] = swift_getOpaqueTypeMetadata2();
  v30[0] = swift_getOpaqueTypeConformance2();
  v4 = sub_1E42013D4();
  OUTLINED_FUNCTION_0_10();
  v31 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - v7;
  v9 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  OUTLINED_FUNCTION_45_71();
  v41 = *v19;
  LOBYTE(v42) = v20;
  *(&v42 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F128);
  v22 = sub_1E42038F4();
  if (v38 == 1)
  {
    sub_1E40DE0E0(v1, &v41);
    v37 = v41;
    v38 = v42;
    v39 = v43;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC28);
    MEMORY[0x1E690E3F0](v40, v23);
    v44 = v41;
    sub_1E37DFBC0(&v44);
  }

  MEMORY[0x1EEE9AC00](v22);
  v24 = v32;
  v30[-4] = v33;
  v30[-3] = v24;
  v30[-2] = v25;
  sub_1E42013C4();
  WitnessTable = swift_getWitnessTable();
  sub_1E4203DA4();
  sub_1E4203464();
  (*(v31 + 8))(v8, v4);
  v35 = WitnessTable;
  v36 = MEMORY[0x1E697E040];
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v27 = *(v11 + 16);
  v27(v18, v15, v9);
  v28 = *(v11 + 8);
  v28(v15, v9);
  v27(v34, v18, v9);
  v29 = OUTLINED_FUNCTION_168();
  (v28)(v29);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40DE548()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v43 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for ContentFittingNavigationStack();
  OUTLINED_FUNCTION_0_10();
  v40 = v8;
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v39 = v9;
  v10 = sub_1E42013A4();
  v38 = v10;
  v42 = *(v10 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v34 - v12;
  v46 = v6;
  v47 = MEMORY[0x1E697EBE0];
  v35 = v6;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v44 = v10;
  v45 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  sub_1E4203584();
  v24 = v39;
  v23 = v40;
  v25 = v41;
  (*(v40 + 16))(v39, v1, v41);
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v27 = swift_allocObject();
  v28 = v35;
  *(v27 + 16) = v4;
  *(v27 + 24) = v28;
  (*(v23 + 32))(v27 + v26, v24, v25);
  OUTLINED_FUNCTION_32_0();
  v29 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB768(v29 & 1);

  v30 = OUTLINED_FUNCTION_16_0();
  v31(v30);
  v32 = *(v15 + 16);
  v32(v22, v19, OpaqueTypeMetadata2);
  v33 = *(v15 + 8);
  v33(v19, OpaqueTypeMetadata2);
  v32(v43, v22, OpaqueTypeMetadata2);
  v33(v22, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40DE88C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4201AB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 33) == 1)
  {
    v9 = *(v1 + 16);
    v8 = *(v1 + 24);
    v10 = *(v1 + 8);
    v11 = *(v1 + 32);
  }

  else
  {

    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0xD000000000000019, 0x80000001E4291390, v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();
    sub_1E325F69C(v1, &unk_1ECF3FC38);
    result = (*(v4 + 8))(v6, v3);
    v7 = v18[0];
    v10 = v18[1];
    v9 = v18[2];
    v8 = v18[3];
    v11 = v19;
  }

  *a1 = v7;
  *(a1 + 8) = v10;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v11 & 1;
  return result;
}

unint64_t sub_1E40DEAEC()
{
  result = qword_1ECF3FAC8;
  if (!qword_1ECF3FAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FAB0);
    sub_1E40DEBA8();
    sub_1E40E02E0(qword_1EE284560, type metadata accessor for ErrorTemplate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FAC8);
  }

  return result;
}

unint64_t sub_1E40DEBA8()
{
  result = qword_1ECF3FAD0;
  if (!qword_1ECF3FAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FAD8);
    sub_1E40DEC90(&qword_1ECF3FAE0, &unk_1ECF3FAE8, &unk_1E42EB9E0, sub_1E40DEC60);
    sub_1E40DF230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FAD0);
  }

  return result;
}

uint64_t sub_1E40DEC90(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    OUTLINED_FUNCTION_4_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E40DED00()
{
  result = qword_1ECF3FB00;
  if (!qword_1ECF3FB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB08);
    sub_1E40DEE0C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40);
    sub_1E40DF04C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB00);
  }

  return result;
}

unint64_t sub_1E40DEE0C()
{
  result = qword_1ECF3FB10;
  if (!qword_1ECF3FB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB18);
    sub_1E40DEFE8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB30);
    type metadata accessor for NavigationBarItems(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40);
    sub_1E40DF04C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E40E02E0(qword_1EE2770F0, type metadata accessor for NavigationBarItems);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB10);
  }

  return result;
}

unint64_t sub_1E40DEFE8()
{
  result = qword_1ECF6CEC8[0];
  if (!qword_1ECF6CEC8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB20);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6CEC8);
  }

  return result;
}

unint64_t sub_1E40DF04C()
{
  result = qword_1ECF3FB48;
  if (!qword_1ECF3FB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB40);
    sub_1E40DF0D8();
    sub_1E389B90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB48);
  }

  return result;
}

unint64_t sub_1E40DF0D8()
{
  result = qword_1ECF3FB50;
  if (!qword_1ECF3FB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB58);
    sub_1E40DF15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB50);
  }

  return result;
}

unint64_t sub_1E40DF15C()
{
  result = qword_1ECF3FB60;
  if (!qword_1ECF3FB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB68);
    swift_getOpaqueTypeConformance2();
    sub_1E40E02E0(qword_1EE284560, type metadata accessor for ErrorTemplate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB60);
  }

  return result;
}

unint64_t sub_1E40DF230()
{
  result = qword_1ECF3FB70;
  if (!qword_1ECF3FB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FB78);
    sub_1E374AD40(&qword_1ECF3FB80, &unk_1ECF3FB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D838);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FB70);
  }

  return result;
}

void sub_1E40DF368(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(v2 + 248);
    if (v3)
    {
      type metadata accessor for InternalDocumentRoute();
      OUTLINED_FUNCTION_5_248();
      sub_1E40E02E0(v4, v5);
      v9 = v3;
      v6 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x198))(v6);
    }

    else
    {
      type metadata accessor for Router();
      OUTLINED_FUNCTION_4_268();
      sub_1E40E02E0(v7, v8);
      OUTLINED_FUNCTION_6_46();
      __break(1u);
    }
  }
}

uint64_t sub_1E40DF4F0()
{
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_47_0();
  (*(v2 + 784))();
  OUTLINED_FUNCTION_13();
  if ((*(v3 + 344))())
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_35_6();
    v4();
  }

  v29 = *(v0 + 144);
  v30 = *(&v29 + 1);
  sub_1E3743538(&v30, &v28, &qword_1ECF31088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  v5 = sub_1E42038F4();
  if (v28 == 1)
  {
    v6 = (*(*v1 + 272))(v5);
    v10 = v6;
    if ((v9 & 0xE000) == 0x6000)
    {
      v11 = OUTLINED_FUNCTION_40_2(v6, v7);
      sub_1E37CD868(v11, v12, v13);
      if (v10)
      {
        OUTLINED_FUNCTION_5_0();
        v14 = *(v10 + 56);
        if (v14)
        {
          v15 = *(v14 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);
          v16 = v15 > 0xD;
          v17 = (1 << v15) & 0x2044;
          if (v16 || v17 == 0)
          {
            OUTLINED_FUNCTION_47_0();
            v25 = *(v24 + 392);

            v25(v26);
            OUTLINED_FUNCTION_2_1();
            v23.n128_u64[0] = 1.0;
          }

          else
          {
            OUTLINED_FUNCTION_47_0();
            v20 = *(v19 + 392);

            v20(v21);
            OUTLINED_FUNCTION_2_1();
            v23.n128_u64[0] = 0;
          }

          (*(v22 + 264))(v23);
        }
      }
    }

    else
    {
      sub_1E39050C0(v6, v7, v8, v9);
    }
  }

  v28 = v29;
  sub_1E4203904();
  return sub_1E325F69C(&v29, &qword_1ECF294E0);
}

uint64_t sub_1E40DF7EC()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 344))();
  if (result)
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_35_6();
    v2();
  }

  return result;
}

uint64_t sub_1E40DF880(uint64_t result, uint64_t *a2)
{
  v3 = *(a2 + 12);
  v4 = v3 | (*(a2 + 26) << 16);
  if ((v3 & 0xE000) == 0x6000)
  {
    v5 = v2;
    v7 = a2[1];
    v6 = a2[2];
    v8 = *a2;
    v9 = *(result + 24);

    sub_1E37CDABC(v7, v6, v4);
    sub_1E37CD868(v7, v6, v4);
    if ((v9 & 0xE000) != 0)
    {
    }

    else
    {
      if (v8)
      {
        OUTLINED_FUNCTION_5_0();
        v10 = *(v8 + 56);
        if (v10)
        {
          v11 = *(v10 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);
          v12 = v11 > 0xD;
          v13 = (1 << v11) & 0x2044;
          if (v12 || v13 == 0)
          {
            v15 = 1.0;
          }

          else
          {
            v15 = 0.0;
          }

          OUTLINED_FUNCTION_8();
          v17 = *(v16 + 392);

          v17(v18);
          OUTLINED_FUNCTION_2_1();
          (*(v19 + 264))(v15);
        }
      }

      if (HIWORD(v4) != 5)
      {
        LOBYTE(v32[0]) = BYTE2(v4);
        sub_1E37D17DC();
        result = sub_1E4205E84();
        if (result)
        {
          if (!v8)
          {
            return result;
          }

          OUTLINED_FUNCTION_5_0();
          v20 = *(v8 + 56);
          if (v20)
          {
            OUTLINED_FUNCTION_12_6();
            v22 = *(v21 + 1216);

            v24 = v22(v23);
            if (v24)
            {
              v25 = *(v5 + 248);
              if (!v25)
              {
                type metadata accessor for Router();
                OUTLINED_FUNCTION_4_268();
                sub_1E40E02E0(v30, v31);
                result = OUTLINED_FUNCTION_6_46();
                __break(1u);
                return result;
              }

              v26 = v24;
              memset(v32, 0, sizeof(v32));
              v33 = 1;
              v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x1D0);
              v28 = v25;
              v29 = v26;
              v27(2, v20, v26, v32);
            }

            else
            {
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E40DFB88()
{
  result = qword_1ECF3FBB0;
  if (!qword_1ECF3FBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FAB8);
    sub_1E374AD40(&qword_1ECF3FB98, &qword_1ECF3FAB8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FBB0);
  }

  return result;
}

unint64_t sub_1E40DFC98()
{
  result = qword_1ECF3FBB8;
  if (!qword_1ECF3FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FBB8);
  }

  return result;
}

unint64_t sub_1E40DFCEC()
{
  result = qword_1ECF3FBC0;
  if (!qword_1ECF3FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FBC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySiGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E40DFD88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E40DFDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for InternalDocumentRoute()
{
  result = qword_1ECF6CFD8;
  if (!qword_1ECF6CFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E40DFEC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_1E40E0034(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v19 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v19))
      {
        v14 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v14 = v20;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            *(a1 + v9) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v18 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v21 = v15 & ~(-1 << v11);
        v22 = OUTLINED_FUNCTION_32_0();
        bzero(v22, v23);
        if (v10 == 3)
        {
          *a1 = v21;
          *(a1 + 2) = BYTE2(v21);
        }

        else if (v10 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      v16 = OUTLINED_FUNCTION_32_0();
      bzero(v16, v17);
      *a1 = v15;
      v18 = 1;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v18;
        break;
      case 2:
        *(a1 + v10) = v18;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v10) = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E40E02E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E40E0328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorTemplate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E40E0394()
{
  v1 = v0;
  OUTLINED_FUNCTION_47_0();
  v3 = (*(v2 + 272))();
  v7 = v3;
  if ((v6 & 0xE000) == 0x6000)
  {
    v8 = OUTLINED_FUNCTION_40_2(v3, v4);
    sub_1E37CD868(v8, v9, v10);
    if (v7)
    {
      OUTLINED_FUNCTION_5_0();
      v11 = *(v7 + 56);
      if (v11)
      {
        type metadata accessor for InternalDocumentRoute();
        OUTLINED_FUNCTION_5_248();
        sub_1E40E02E0(v12, v13);

        v14 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

        v16 = (*(*v14 + 368))(v15);

        if (!v16)
        {
          v17 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

          v18 = *(*v17 + 376);

          v18(v19);
        }

        v20 = *(v1 + 176);
        if (v20)
        {

          v20(v11);
          sub_1E34AF594(v20);
        }

        else
        {
          OUTLINED_FUNCTION_47_0();
          if (!(*(v21 + 752))())
          {
            OUTLINED_FUNCTION_12_6();
            v23 = *(v22 + 576);

            v23(v24);
            OUTLINED_FUNCTION_13();
            v26 = (*(v25 + 760))();
            v27 = *(v1 + 232);
            v28 = (v23)(v26);

            (*(*v27 + 200))(v28);
          }
        }

        v29 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_22AE03CB8E5DD9771BF6CABAA0471CD921InternalDocumentRoute_route);

        OUTLINED_FUNCTION_13();
        v31 = (*(v30 + 296))();
        (*(*v29 + 400))(v31);

        OUTLINED_FUNCTION_13();
        if ((*(v32 + 344))())
        {
          sub_1E3C69720();
        }
      }
    }
  }

  else
  {

    sub_1E39050C0(v3, v4, v5, v6);
  }
}

uint64_t sub_1E40E0820(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_64()
{

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  if (*(v0 + 216))
  {
  }

  sub_1E3264CE0();

  OUTLINED_FUNCTION_27_100();

  return swift_deallocObject();
}

void sub_1E40E0950()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E40E0D8C(319, &qword_1ECF3FC20, &qword_1ECF3FC28, &unk_1E42EBE20, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1E40E0D8C(319, &qword_1ECF3FC30, &qword_1ECF2AD70, &unk_1E429F170, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_DWORD *sub_1E40E0A48(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }

    v17 = *(((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v16 = v17 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 32;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v16 + 1);
}

void sub_1E40E0B9C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v19 = ((((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              v19[2] = 0;
              v19[3] = 0;
              *v19 = (a2 - 0x7FFFFFFF);
              v19[1] = 0;
            }

            else
            {
              v19[3] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 41) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v16 = ~v8 + a2;
      v17 = OUTLINED_FUNCTION_32_0();
      bzero(v17, v18);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v15;
        break;
      case 2:
        *(a1 + v10) = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v10) = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1E40E0D8C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1E40E0E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

void sub_1E40E0E74(double a1, double a2)
{
  v4 = type metadata accessor for ContentFittingNavigationStack();
  if (sub_1E3AC5C30(a1, a2) > 0.0)
  {
    OUTLINED_FUNCTION_45_71();
    v8 = *v5;
    v9 = v6;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F128);
    sub_1E4203904();
    sub_1E40DE0E0(v4, &v8);
    OUTLINED_FUNCTION_45_71();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F128);
    sub_1E42038F4();
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC28);
    sub_1E4203AA4();
    sub_1E37DFBC0(&v11);
  }
}