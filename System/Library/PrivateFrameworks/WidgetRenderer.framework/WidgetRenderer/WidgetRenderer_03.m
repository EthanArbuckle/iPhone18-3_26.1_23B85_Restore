void sub_1DADB49B8(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for LiveWidgetContentViewController();
  v6 = *a4;
  v7 = v9.receiver;
  objc_msgSendSuper2(&v9, v6, a3);
  v8 = *&v7[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF4C();
}

void sub_1DADB4ADC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  if (qword_1EE005DB8 != -1)
  {
    swift_once();
  }

  v11 = sub_1DAECEDEC();
  v12 = __swift_project_value_buffer(v11, qword_1EE011640);
  v13 = a1;
  v14 = v2;
  v45 = v12;
  v15 = sub_1DAECEDCC();
  v16 = sub_1DAED200C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v44 = v8;
    v18 = v17;
    v19 = v10;
    v20 = swift_slowAlloc();
    v46[0] = v20;
    *v18 = 136446466;
    *(v18 + 4) = sub_1DAD6482C(*&v14[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v14[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v46);
    *(v18 + 12) = 2082;
    if (a1)
    {
      v21 = 7562617;
    }

    else
    {
      v21 = 28526;
    }

    if (a1)
    {
      v22 = 0xE300000000000000;
    }

    else
    {
      v22 = 0xE200000000000000;
    }

    v23 = sub_1DAD6482C(v21, v22, v46);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] Trait collection did change. (had previous collection = %{public}s)", v18, 0x16u);
    swift_arrayDestroy();
    v24 = v20;
    v10 = v19;
    MEMORY[0x1E127F100](v24, -1, -1);
    v25 = v18;
    v8 = v44;
    MEMORY[0x1E127F100](v25, -1, -1);
  }

  if (!a1 || [v13 _backlightLuminance] != 1)
  {
    v26 = [v14 traitCollection];
    v27 = [v26 _backlightLuminance];

    if (v27 == 1)
    {
      v28 = v14;
      v29 = sub_1DAECEDCC();
      v30 = sub_1DAED203C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46[0] = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_1DAD6482C(*&v28[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v28[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v46);
        _os_log_impl(&dword_1DAD61000, v29, v30, "[%{public}s] Trait collection: entering AoD.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x1E127F100](v32, -1, -1);
        MEMORY[0x1E127F100](v31, -1, -1);
      }

      v33 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
      swift_beginAccess();
      sub_1DAD6495C(&v28[v33], v10, &qword_1ECC07CE8, &qword_1DAED6F60);
      v34 = sub_1DAECDCEC();
      v35 = *(v34 - 8);
      v36 = (*(v35 + 48))(v10, 1, v34);
      sub_1DAD64398(v10, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v36 == 1)
      {
        sub_1DAECDCDC();
        (*(v35 + 56))(v8, 0, 1, v34);
        swift_beginAccess();
        sub_1DAE101FC(v8, &v28[v33]);
        swift_endAccess();
        sub_1DAE0FC40();
        sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);
      }

      return;
    }

    if (!a1)
    {
      return;
    }
  }

  if ([v13 _backlightLuminance] == 1)
  {
    v37 = [v14 traitCollection];
    v38 = [v37 _backlightLuminance];

    if (v38 != 1)
    {
      v39 = v14;
      v45 = sub_1DAECEDCC();
      v40 = sub_1DAED203C();

      if (os_log_type_enabled(v45, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v46[0] = v42;
        *v41 = 136446210;
        *(v41 + 4) = sub_1DAD6482C(*&v39[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v39[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v46);
        _os_log_impl(&dword_1DAD61000, v45, v40, "[%{public}s] Trait collection: exiting AoD.", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x1E127F100](v42, -1, -1);
        MEMORY[0x1E127F100](v41, -1, -1);
      }

      else
      {
        v43 = v45;
      }
    }
  }
}

void sub_1DADB50F4()
{
  v38.receiver = v0;
  v38.super_class = type metadata accessor for BaseWidgetContentViewController();
  objc_msgSendSuper2(&v38, sel_viewWillLayoutSubviews);
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = [*&v0[v1] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  v14 = *&v0[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = v14;
  v16 = [v0 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
LABEL_6:
  v26 = *&v0[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay];
  if (!v26)
  {
    return;
  }

  v27 = v26;
  v28 = [v0 view];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v27 setFrame_];
}

uint64_t sub_1DADB53A4(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A790, &unk_1DAEDE9A0);
    v7 = sub_1DAED274C();

    return v7;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1DAED28AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A790, &unk_1DAEDE9A0);
    if (!swift_dynamicCastMetatype())
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        for (i = (v2 + 32); ; ++i)
        {
          v6 = *i;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          if (!--v4)
          {
            return v1;
          }
        }

        return v2 | 1;
      }
    }

    return v1;
  }
}

uint64_t sub_1DADB54B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _RootContentViewModel();
  result = sub_1DAECEE4C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADB54F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v80 = sub_1DAECF32C();
  v79 = *(v80 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = sub_1DAECF2AC();
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v71 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AB60, &qword_1DAEDFD80);
  v93 = v7;
  v11 = sub_1DAECF2AC();
  v81 = *(v11 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v71 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AB68, &qword_1DAEDFD88);
  v92 = v11;
  v14 = sub_1DAECF2AC();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v71 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC090B8, &qword_1DAEDFD90);
  v90 = v14;
  v17 = sub_1DAECF2AC();
  v85 = *(v17 - 8);
  v18 = *(v85 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v84 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v71 - v21;
  v86 = sub_1DAED233C();
  v89 = *(v86 - 8);
  v22 = *(v89 + 64);
  v23 = MEMORY[0x1EEE9AC00](v86);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v71 - v26;
  v27 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  if (v119)
  {
    (*(v85 + 56))(v25, 1, 1, v17);
    v87 = *(a1 + 24);
    v100 = v87;
    v101 = MEMORY[0x1E6980318];
    WitnessTable = swift_getWitnessTable();
    v29 = sub_1DAD64B94(&qword_1EE0058A0, &qword_1ECC0AB60, &qword_1DAEDFD80);
    v98 = WitnessTable;
    v99 = v29;
    v30 = swift_getWitnessTable();
    v31 = sub_1DAD64B94(&qword_1EE005868, &qword_1ECC0AB68, &qword_1DAEDFD88);
    v96 = v30;
    v97 = v31;
    v32 = swift_getWitnessTable();
    v33 = sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90);
    v94 = v32;
    v95 = v33;
    swift_getWitnessTable();
  }

  else
  {
    v34 = *(a1 + 36);
    sub_1DAED004C();
    v87 = *(a1 + 24);
    v35 = v87;
    v72 = v2;
    sub_1DAED052C();
    swift_getKeyPath();
    v119 = MEMORY[0x1E69E7CC0];
    sub_1DAD730A4(&qword_1EE00BE58, MEMORY[0x1E697EA58]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
    v74 = v25;
    sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0);
    v36 = v76;
    v37 = v80;
    sub_1DAED23CC();
    v117 = v35;
    v118 = MEMORY[0x1E6980318];
    v73 = v17;
    v71 = MEMORY[0x1E697E858];
    v38 = v93;
    v39 = swift_getWitnessTable();
    v40 = v75;
    sub_1DAED040C();

    (*(v79 + 8))(v36, v37);
    (*(v77 + 8))(v10, v38);
    swift_getKeyPath();
    v41 = v72;
    v119 = *(*(v72 + 8) + 16);
    v42 = v119;
    v43 = sub_1DAD64B94(&qword_1EE0058A0, &qword_1ECC0AB60, &qword_1DAEDFD80);
    v115 = v39;
    v116 = v43;
    v44 = v42;
    v45 = v73;
    v46 = v92;
    v47 = swift_getWitnessTable();
    v48 = v78;
    sub_1DAED040C();

    (*(v81 + 8))(v40, v46);
    swift_getKeyPath();
    v49 = *(v41 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1DAECEF3C();

    v50 = sub_1DAD64B94(&qword_1EE005868, &qword_1ECC0AB68, &qword_1DAEDFD88);
    v113 = v47;
    v114 = v50;
    v51 = v90;
    v52 = swift_getWitnessTable();
    v53 = v84;
    sub_1DAED040C();

    (*(v83 + 8))(v48, v51);
    v54 = sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90);
    v111 = v52;
    v112 = v54;
    v55 = swift_getWitnessTable();
    v56 = v82;
    sub_1DADB6258(v53, v45, v55);
    v57 = v85;
    v58 = *(v85 + 8);
    v58(v53, v45);
    sub_1DADB6258(v56, v45, v55);
    v58(v56, v45);
    v25 = v74;
    (*(v57 + 32))(v74, v53, v45);
    (*(v57 + 56))(v25, 0, 1, v45);
  }

  v59 = v89;
  v60 = v88;
  v61 = v86;
  (*(v89 + 16))(v88, v25, v86);
  v62 = *(v59 + 8);
  v62(v25, v61);
  v109 = v87;
  v110 = MEMORY[0x1E6980318];
  v63 = swift_getWitnessTable();
  v64 = sub_1DAD64B94(&qword_1EE0058A0, &qword_1ECC0AB60, &qword_1DAEDFD80);
  v107 = v63;
  v108 = v64;
  v65 = swift_getWitnessTable();
  v66 = sub_1DAD64B94(&qword_1EE005868, &qword_1ECC0AB68, &qword_1DAEDFD88);
  v105 = v65;
  v106 = v66;
  v67 = swift_getWitnessTable();
  v68 = sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90);
  v103 = v67;
  v104 = v68;
  v102 = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  sub_1DADB6258(v60, v61, v69);
  return (v62)(v60, v61);
}

uint64_t sub_1DADB616C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF85C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADB61C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF74C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADB6264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADB62CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADB6334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DefaultWidgetLiveViewEntry.view.getter@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09800, &qword_1DAEDE2C0);
  v91 = *(v98 - 8);
  v1 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v88 = (v86 - v2);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A608, &qword_1DAEDE2C8);
  v3 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v96 = v86 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v86 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A610, qword_1DAEDE2D8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = (v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v93 = (v86 - v13);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097F8, &unk_1DAEDA4D0);
  v14 = *(*(v94 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v94);
  v89 = (v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = v86 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v86 - v24;
  v26 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v27 = *(v26 - 1);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v86 - v32;
  v34 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DADB6264(v92, v37, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DADB62CC(v37, v31, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v38 = &v31[v26[5]];
    v39 = sub_1DAED197C();
    v40 = v26[7];
    v41 = *&v31[v26[6]];
    v42 = *&v31[v40];
    v43 = sub_1DAECF8EC();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v8, v31, v43);
    (*(v44 + 56))(v8, 0, 1, v43);
    v45 = *(v98 + 36);
    v46 = v41;
    v47 = v42;
    v48 = v88;
    sub_1DAED1BFC();
    *v48 = v39;
    sub_1DAD6495C(v48, v96, &qword_1ECC09800, &qword_1DAEDE2C0);
    swift_storeEnumTagMultiPayload();
    sub_1DAD64B94(qword_1EE008CF8, &qword_1ECC097F8, &unk_1DAEDA4D0);
    sub_1DADB6D6C();
    sub_1DAECFB1C();
    sub_1DAD64398(v48, &qword_1ECC09800, &qword_1DAEDE2C0);
    v33 = v31;
  }

  else
  {
    v92 = v18;
    v49 = v98;
    v86[1] = *v37;
    v87 = v8;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v51 = *(v50 + 64);
    sub_1DADB62CC(v37 + *(v50 + 48), v33, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD7C48C(v37 + v51, v25, &qword_1ECC088D8, &qword_1DAED72D0);
    v88 = v25;
    sub_1DAD6495C(v25, v23, &qword_1ECC088D8, &qword_1DAED72D0);
    if ((*(v27 + 48))(v23, 1, v26) == 1)
    {
      sub_1DAD64398(v23, &qword_1ECC088D8, &qword_1DAED72D0);
      v52 = 1;
      v53 = v87;
      v54 = v93;
    }

    else
    {
      v55 = &v23[v26[5]];
      v56 = sub_1DAED197C();
      v57 = *&v23[v26[6]];
      v58 = *&v23[v26[7]];
      v59 = sub_1DAECF8EC();
      v60 = *(v59 - 8);
      v53 = v87;
      (*(v60 + 16))(v87, v23, v59);
      (*(v60 + 56))(v53, 0, 1, v59);
      v61 = *(v49 + 36);
      v62 = v57;
      v63 = v58;
      v54 = v93;
      sub_1DAED1BFC();
      *v54 = v56;
      sub_1DADB6334(v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v52 = 0;
    }

    v64 = *(v91 + 56);
    v64(v54, v52, 1, v49);
    v65 = &v33[v26[5]];
    v66 = sub_1DAED197C();
    v67 = v26[7];
    v68 = *&v33[v26[6]];
    v69 = *&v33[v67];
    v70 = sub_1DAECF8EC();
    v71 = *(v70 - 8);
    (*(v71 + 16))(v53, v33, v70);
    (*(v71 + 56))(v53, 0, 1, v70);
    v72 = *(v49 + 36);
    v73 = v68;
    v74 = v69;
    v75 = v49;
    v76 = v90;
    sub_1DAED1BFC();
    *v76 = v66;
    v64(v76, 0, 1, v75);
    v78 = v93;
    v77 = v94;
    v79 = v89;
    sub_1DAD6495C(v93, v89 + *(v94 + 52), &qword_1ECC0A610, qword_1DAEDE2D8);
    sub_1DAD6495C(v76, v79 + *(v77 + 56), &qword_1ECC0A610, qword_1DAEDE2D8);
    type metadata accessor for TintedWidgetViewModel();
    sub_1DAD900EC(&qword_1EE008CE8, type metadata accessor for TintedWidgetViewModel);

    v80 = sub_1DAECF21C();
    v82 = v81;
    sub_1DAD64398(v76, &qword_1ECC0A610, qword_1DAEDE2D8);
    sub_1DAD64398(v78, &qword_1ECC0A610, qword_1DAEDE2D8);
    *v79 = v80;
    v79[1] = v82;
    v83 = v79;
    v84 = v92;
    sub_1DAD7C48C(v83, v92, &qword_1ECC097F8, &unk_1DAEDA4D0);
    sub_1DAD6495C(v84, v96, &qword_1ECC097F8, &unk_1DAEDA4D0);
    swift_storeEnumTagMultiPayload();
    sub_1DAD64B94(qword_1EE008CF8, &qword_1ECC097F8, &unk_1DAEDA4D0);
    sub_1DADB6D6C();
    sub_1DAECFB1C();

    sub_1DAD64398(v84, &qword_1ECC097F8, &unk_1DAEDA4D0);
    sub_1DAD64398(v88, &qword_1ECC088D8, &qword_1DAED72D0);
  }

  return sub_1DADB6334(v33, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
}

unint64_t sub_1DADB6D6C()
{
  result = qword_1EE005A70;
  if (!qword_1EE005A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09800, &qword_1DAEDE2C0);
    sub_1DAD7305C(&qword_1EE0056B0, MEMORY[0x1E6985B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A70);
  }

  return result;
}

unint64_t sub_1DADB6E28()
{
  result = qword_1EE0059B8;
  if (!qword_1EE0059B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097F0, &qword_1DAEDA4C8);
    sub_1DAD64B94(qword_1EE008CF8, &qword_1ECC097F8, &unk_1DAEDA4D0);
    sub_1DADB6D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0059B8);
  }

  return result;
}

uint64_t sub_1DADB6EF8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a6;
  v100 = sub_1DAED233C();
  v11 = sub_1DAECF2AC();
  v89 = *(v11 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v85 - v13;
  v107 = v14;
  v15 = sub_1DAECF2AC();
  v93 = *(v15 - 8);
  v16 = *(v93 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v90 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v85 - v19;
  v106 = v20;
  v97 = sub_1DAED233C();
  v95 = *(v97 - 8);
  v21 = *(v95 + 64);
  v22 = MEMORY[0x1EEE9AC00](v97);
  v105 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v85 - v24;
  v103 = sub_1DAED233C();
  v25 = sub_1DAECF2AC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v94 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v92 = &v85 - v30;
  v104 = sub_1DAED233C();
  v102 = *(v104 - 8);
  v31 = *(v102 + 64);
  v32 = MEMORY[0x1EEE9AC00](v104);
  v34 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v108 = a5;
  v109 = &v85 - v35;
  v131 = a2;
  v132 = a3;
  v101 = a4;
  v133 = a4;
  v134 = a5;
  v36 = type metadata accessor for TintedWidgetView();
  v99 = a1;
  v37 = *(a1 + 1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  v38 = v131;
  [v131 fraction];
  v40 = v39;

  v41 = 1.0 - v40;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  v42 = v131;
  [v131 fraction];
  v44 = v43;

  v45 = MEMORY[0x1E697E5C0];
  v86 = v36;
  if (v41 == 0.0)
  {
    (*(v26 + 56))(v34, 1, 1, v25);
    v46 = v101;
    v112 = v101;
    WitnessTable = swift_getWitnessTable();
    v111 = v45;
    swift_getWitnessTable();
  }

  else
  {
    v47 = *(v36 + 52);
    v130[9] = v101;
    v48 = swift_getWitnessTable();
    v49 = v94;
    sub_1DAED056C();
    v130[7] = v48;
    v130[8] = v45;
    v50 = swift_getWitnessTable();
    v51 = v92;
    sub_1DADB6258(v49, v25, v50);
    v52 = *(v26 + 8);
    v52(v49, v25);
    sub_1DADB6258(v51, v25, v50);
    v52(v51, v25);
    (*(v26 + 32))(v34, v49, v25);
    (*(v26 + 56))(v34, 0, 1, v25);
    v46 = v101;
  }

  v53 = v99;
  v94 = v25;
  sub_1DADB79FC(v34, v109);
  v54 = *(v102 + 8);
  v99 = v34;
  v91 = v54;
  v92 = (v102 + 8);
  v54(v34, v104);
  v56 = v107;
  v55 = v108;
  v57 = v100;
  v58 = v105;
  v59 = v106;
  if (v44 == 0.0)
  {
    (*(v93 + 56))(v105, 1, 1, v106);
    v117 = v55;
    v60 = swift_getWitnessTable();
    v61 = sub_1DADB7A68();
    v115 = v60;
    v116 = v61;
    v113 = swift_getWitnessTable();
    v114 = MEMORY[0x1E697E5C0];
    swift_getWitnessTable();
  }

  else
  {
    v62 = *(v86 + 56);
    v63 = *(v53 + 1);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1DAECEF3C();

    v64 = v131;
    v130[6] = v108;
    v65 = swift_getWitnessTable();
    v131 = v64;
    v66 = v87;
    MEMORY[0x1E127C210](&v131, v57, &type metadata for TintedWidgetModifier, v65);

    v67 = sub_1DADB7A68();
    v130[4] = v65;
    v130[5] = v67;
    v68 = swift_getWitnessTable();
    v69 = v90;
    sub_1DAED056C();
    (*(v89 + 8))(v66, v56);
    v130[2] = v68;
    v130[3] = MEMORY[0x1E697E5C0];
    v70 = swift_getWitnessTable();
    v71 = v88;
    sub_1DADB6258(v69, v59, v70);
    v72 = v93;
    v73 = *(v93 + 8);
    v73(v69, v59);
    sub_1DADB6258(v71, v59, v70);
    v73(v71, v59);
    v46 = v101;
    (*(v72 + 32))(v58, v69, v59);
    (*(v72 + 56))(v58, 0, 1, v59);
  }

  v74 = v96;
  sub_1DADB79FC(v58, v96);
  v75 = v95;
  v93 = *(v95 + 8);
  v76 = v97;
  (v93)(v58, v97);
  v77 = v99;
  v78 = v104;
  (*(v102 + 16))(v99, v109, v104);
  v131 = v77;
  (*(v75 + 16))(v58, v74, v76);
  v132 = v58;
  v130[0] = v78;
  v130[1] = v76;
  v127 = v46;
  v125 = swift_getWitnessTable();
  v79 = MEMORY[0x1E697E5C0];
  v126 = MEMORY[0x1E697E5C0];
  v124 = swift_getWitnessTable();
  v128 = swift_getWitnessTable();
  v123 = v108;
  v80 = swift_getWitnessTable();
  v81 = sub_1DADB7A68();
  v121 = v80;
  v122 = v81;
  v119 = swift_getWitnessTable();
  v120 = v79;
  v118 = swift_getWitnessTable();
  v129 = swift_getWitnessTable();
  sub_1DADB7ABC(&v131, 2uLL, v130);
  v82 = v93;
  (v93)(v74, v76);
  v83 = v91;
  v91(v109, v78);
  v82(v105, v76);
  return v83(v77, v78);
}

uint64_t sub_1DADB79FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DAED233C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1DADB7A68()
{
  result = qword_1EE008CF0;
  if (!qword_1EE008CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE008CF0);
  }

  return result;
}

uint64_t sub_1DADB7ABC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1DAED098C();
}

uint64_t sub_1DADB7C8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DADB7CF0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1DAED26FC();

    if (v4)
    {
      type metadata accessor for WidgetRendererSessionSubscriptionRequest();
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1DADA5AD0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
    }
  }

  return 0;
}

uint64_t sub_1DADB7DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09230, &qword_1DAED91B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09238, &qword_1DAED91B8);
  sub_1DAD64B94(&qword_1EE00BE50, &qword_1ECC09238, &qword_1DAED91B8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1DADB7E98()
{
  result = qword_1EE005A28;
  if (!qword_1EE005A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09118, &unk_1DAED8780);
    sub_1DADB7F50();
    sub_1DAD64B94(&qword_1EE005B88, &qword_1ECC09060, &qword_1DAED85E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A28);
  }

  return result;
}

unint64_t sub_1DADB7F50()
{
  result = qword_1EE005A50;
  if (!qword_1EE005A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09110, &qword_1DAED8778);
    sub_1DADB8470();
    sub_1DADB8554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A50);
  }

  return result;
}

uint64_t sub_1DADB7FE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DADB802C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DAED23EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      sub_1DAECEE3C();
      sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10]);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1DAED1C5C() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1DADB8220(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_1DADB828C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = *(a3 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
    v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v15 + v16, v12, &unk_1ECC07D30, &unk_1DAED57E0);
    if (swift_getEnumCaseMultiPayload())
    {
      v17 = a1;
      sub_1DAD64398(v12, &unk_1ECC07D30, &unk_1DAED57E0);
      v18 = 0;
    }

    else
    {
      sub_1DADB8C4C(v12, v8);
      v19 = a1;
      v18 = DefaultWidgetLiveViewEntry.containsInteractiveControls.getter();
      sub_1DADB9380(v8);
    }

    [v14 setContainsInteractiveControls_];
  }
}

unint64_t sub_1DADB8470()
{
  result = qword_1EE005AC8;
  if (!qword_1EE005AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09100, &unk_1DAED8760);
    sub_1DAD64B94(&qword_1EE0058E0, &qword_1ECC09108, &qword_1DAED8770);
    sub_1DAD64B94(&qword_1EE00AB88, &qword_1ECC08FA8, &qword_1DAED8508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AC8);
  }

  return result;
}

unint64_t sub_1DADB8554()
{
  result = qword_1EE005700;
  if (!qword_1EE005700)
  {
    sub_1DAED16AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005700);
  }

  return result;
}

uint64_t WidgetRendererSessionSubscriptionRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
  v2 = sub_1DAECE20C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
  v4 = sub_1DAED10DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void sub_1DADB870C(uint64_t a1, uint64_t a2, void *a3, char *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_1DADB0000(0, a3, a4, a5, a6, a7);
    swift_beginAccess();
    if (*(a8 + 16))
    {
      v16 = *(a8 + 16);

      sub_1DAECEE2C();
      swift_beginAccess();
      sub_1DADB8820();
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1DADB8820()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_1DAED24CC();

    if (v4)
    {
      v5 = sub_1DAEC50EC();

      return v5;
    }

    return 0;
  }

  sub_1DAECEE3C();
  v7 = *(v1 + 40);
  sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10]);
  v8 = sub_1DAED1C5C();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1DADB7FE4(&qword_1EE005C48, MEMORY[0x1E695BF10]);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (sub_1DAED1CAC())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DAE892B4();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_1DADB802C(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1DADB8A20()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    BSDispatchQueueAssertMain();
    v2 = [*&v1[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene] _FBSScene];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1DADB8444;
    *(v4 + 24) = v3;
    aBlock[4] = sub_1DADB8C18;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DADB8220;
    aBlock[3] = &block_descriptor_51;
    v5 = _Block_copy(aBlock);
    v6 = v1;

    [v2 updateClientSettings_];

    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DADB8BDC()
{

  return swift_deallocObject();
}

uint64_t sub_1DADB8C24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DADB8C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DefaultWidgetLiveViewEntry.containsInteractiveControls.getter()
{
  v1 = v0;
  v2 = sub_1DAED19AC();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v57 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - v18;
  v20 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - v26;
  v28 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DADB6264(v1, v31, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v36 = *v31;

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v38 = *(v37 + 64);
    sub_1DADB62CC(v31 + *(v37 + 48), v27, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD7C48C(v31 + v38, v19, &qword_1ECC088D8, &qword_1DAED72D0);
    sub_1DAD6495C(v19, v17, &qword_1ECC088D8, &qword_1DAED72D0);
    if ((*(v21 + 48))(v17, 1, v20) == 1)
    {
      v39 = &qword_1ECC088D8;
      v40 = &qword_1DAED72D0;
      v41 = v17;
    }

    else
    {
      v44 = v60;
      v43 = v61;
      v45 = v58;
      (*(v60 + 16))(v58, &v17[*(v20 + 20)], v61);
      sub_1DADB6334(v17, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v46 = v59;
      sub_1DAED194C();
      (*(v44 + 8))(v45, v43);
      v47 = sub_1DAED165C();
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);
      if (v49(v46, 1, v47) != 1)
      {
        v51 = sub_1DAED163C();
        v52 = v46;
        v53 = *(v48 + 8);
        v53(v52, v47);
        if (v51 != 2 && (v51 & 1) != 0)
        {
          v54 = &v27[*(v20 + 20)];
          v55 = v57;
          sub_1DAED194C();
          if (v49(v55, 1, v47) != 1)
          {
            v42 = sub_1DAED163C();
            sub_1DAD64398(v19, &qword_1ECC088D8, &qword_1DAED72D0);
            sub_1DADB6334(v27, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
            v53(v55, v47);
            return v42 & 1;
          }

          sub_1DAD64398(v19, &qword_1ECC088D8, &qword_1DAED72D0);
          sub_1DADB6334(v27, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
          v35 = v55;
          goto LABEL_4;
        }

LABEL_11:
        sub_1DAD64398(v19, &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v27, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        goto LABEL_12;
      }

      v39 = &qword_1ECC088D0;
      v40 = &qword_1DAEDE260;
      v41 = v46;
    }

    sub_1DAD64398(v41, v39, v40);
    goto LABEL_11;
  }

  sub_1DADB62CC(v31, v25, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  v32 = &v25[*(v20 + 20)];
  sub_1DAED194C();
  v33 = sub_1DAED165C();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v9, 1, v33) == 1)
  {
    sub_1DADB6334(v25, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v35 = v9;
LABEL_4:
    sub_1DAD64398(v35, &qword_1ECC088D0, &qword_1DAEDE260);
LABEL_12:
    v42 = 0;
    return v42 & 1;
  }

  v42 = sub_1DAED163C();
  sub_1DADB6334(v25, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  (*(v34 + 8))(v9, v33);
  return v42 & 1;
}

uint64_t sub_1DADB9380(uint64_t a1)
{
  v2 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DADB940C(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v50 - v5;
  v66 = sub_1DAED0A7C();
  v6 = *(v66 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1DAECDCEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v59 = &v50 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v58 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v50 - v18;
  sub_1DAECDC4C();
  v19 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v68 = a1;
  v20 = *(a1 + v19);
  v21 = v9;
  v22 = v20 + 64;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 64);
  v64 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v26 = (v23 + 63) >> 6;
  v63 = *MEMORY[0x1E69E8020];
  v61 = (v6 + 8);
  v62 = (v6 + 104);
  v54 = (v10 + 56);
  v69 = (v10 + 48);
  v53 = (v10 + 32);
  v27 = (v10 + 8);
  v67 = v20;

  v29 = 0;
  v55 = v26;
  v57 = (v10 + 8);
  v56 = v22;
  while (v25)
  {
    v30 = v29;
LABEL_11:
    v31 = *(*(v67 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v25)))));
    swift_beginAccess();
    v32 = *(v31 + 16);
    v33 = *(*(v68 + v64) + 16);

    v34 = v32;
    os_unfair_lock_assert_owner(v33);
    sub_1DAD84C40();
    v35 = sub_1DAED20EC();
    v37 = v65;
    v36 = v66;
    *v65 = v35;
    (*v62)(v37, v63, v36);
    LOBYTE(v33) = sub_1DAED0A8C();
    result = (*v61)(v37, v36);
    if ((v33 & 1) == 0)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    sub_1DAED0B6C();
    if (v71)
    {
      v38 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      sub_1DAED177C();
      (*v54)(v38, 0, 1, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      if ((*v69)(v38, 1, v21) != 1)
      {

        v39 = v58;
        (*v53)(v58, v72, v21);
        goto LABEL_18;
      }
    }

    else
    {
      sub_1DAD64398(v70, &unk_1ECC07DE0, &qword_1DAEDBED0);
      (*v54)(v72, 1, 1, v21);
    }

    v39 = v58;
    sub_1DAECDC4C();

    if ((*v69)(v72, 1, v21) != 1)
    {
      sub_1DAD64398(v72, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

LABEL_18:
    v25 &= v25 - 1;
    v40 = v59;
    sub_1DAECDC4C();
    v41 = sub_1DAECDC6C();
    v27 = v57;
    v42 = *v57;
    (*v57)(v40, v21);
    if (v41)
    {
      sub_1DAD722E0(&qword_1EE00A6F0, MEMORY[0x1E6969530]);
      v43 = v52;
      v44 = sub_1DAED1C9C();

      if (v44)
      {
        v45 = v43;
      }

      else
      {
        v45 = v39;
      }

      if (v44)
      {
        v46 = v39;
      }

      else
      {
        v46 = v43;
      }

      v42(v45, v21);
      v47 = *v53;
      v48 = v51;
      (*v53)(v51, v46, v21);
      result = (v47)(v43, v48, v21);
    }

    else
    {
      v42(v39, v21);
    }

    v29 = v30;
    v22 = v56;
    v26 = v55;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v30 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v30);
    ++v29;
    if (v25)
    {
      goto LABEL_11;
    }
  }

  sub_1DAD6495C(v68 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer, v70, &qword_1ECC087A8, &unk_1DAED71F0);
  if (v71)
  {
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v49 = v52;
    sub_1DAED0F5C();
    (*v27)(v49, v21);
    return __swift_destroy_boxed_opaque_existential_1Tm(v70);
  }

  else
  {
    (*v27)(v52, v21);
    return sub_1DAD64398(v70, &qword_1ECC087A8, &unk_1DAED71F0);
  }
}

uint64_t sub_1DADB9B50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  sub_1DADB940C(a1, a2);
  os_unfair_lock_unlock(*(v4 + 16));
}

unint64_t sub_1DADB9C08()
{
  result = qword_1EE00BE68;
  if (!qword_1EE00BE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09220, &qword_1DAED91A0);
    sub_1DAD64B94(&qword_1EE00BE38, &qword_1ECC09218, &qword_1DAED9198);
    sub_1DAD64B94(&qword_1EE00BE30, &qword_1ECC09228, &qword_1DAED91A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE68);
  }

  return result;
}

uint64_t sub_1DADB9CEC(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1DAED19AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1DAD64398(a1, &qword_1ECC080B0, &qword_1DAEDE780);
    sub_1DADC1E34(a2, v8);
    sub_1DADAB9A4(a2);
    return sub_1DAD64398(v8, &qword_1ECC080B0, &qword_1DAEDE780);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1DADBA084(v13, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1DADAB9A4(a2);
    *v2 = v18;
  }

  return result;
}

unint64_t sub_1DADB9EB8(void *a1)
{
  v3 = *(v1 + 40);
  sub_1DAED294C();
  v4 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v5 = *(v4 + 20);
  sub_1DAECDCEC();
  sub_1DAD8E95C(&qword_1EE00A6F8, MEMORY[0x1E6969530]);
  sub_1DAED1C6C();
  v6 = *(v4 + 24);
  sub_1DAED157C();
  sub_1DAD8E95C(&qword_1EE005720, MEMORY[0x1E6985700]);
  sub_1DAED1C6C();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 24))(&v11, v7, v8);
  MEMORY[0x1E127E5D0](v11);
  v9 = sub_1DAED297C();

  return sub_1DADAB1C0(a1, v9);
}

uint64_t sub_1DADBA01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADBA084(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1DADB9EB8(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1DADDB404();
      goto LABEL_7;
    }

    sub_1DADAB3B8(v17, a3 & 1);
    v28 = *v4;
    v29 = sub_1DADB9EB8(a2);
    if ((v18 & 1) == (v30 & 1))
    {
      v14 = v29;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1DADAB8DC(a2, v11);
      return sub_1DADBA24C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1DAED28FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1DAED19AC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1DADBA24C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  sub_1DADAB940(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  v11 = sub_1DAED19AC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1DADBA358(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_1DAED1E7C();
  v7 = a1;
  a4(v6);
}

uint64_t sub_1DADBA3C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DADBA40C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1DAED233C();
  sub_1DAECF2AC();
  sub_1DAED233C();
  sub_1DAED233C();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAED233C();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED086C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC099D8, &qword_1DAEDB218);
  sub_1DAECF2AC();
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1EE005870, &qword_1ECC099D8, &qword_1DAEDB218);
  return swift_getWitnessTable();
}

unint64_t sub_1DADBA5B4(uint64_t a1)
{
  result = sub_1DADBA7AC(a1);
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (result >> 62)
  {
    if (sub_1DAED247C())
    {
      goto LABEL_4;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue);
    BSDispatchQueueAssert();
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v5 = sub_1DAECEDEC();
    __swift_project_value_buffer(v5, qword_1EE0117F0);

    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED200C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
      v11 = MEMORY[0x1E127DB00](v3, v10);
      v13 = sub_1DAD6482C(v11, v12, &v14);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1DAD61000, v6, v7, "Received placeholders did change for keys: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E127F100](v9, -1, -1);
      MEMORY[0x1E127F100](v8, -1, -1);
    }

    sub_1DADBA8B8(v3);
  }
}

uint64_t sub_1DADBA7AC(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1DAED25EC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1DAD642F8(i, v6);
    sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1DAED25CC();
    v4 = *(v7 + 16);
    sub_1DAED25FC();
    sub_1DAED260C();
    sub_1DAED25DC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_1DADBA8B8(unint64_t a1)
{
  v24 = a1;
  v2 = sub_1DAED09DC();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0A3C();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  BSDispatchQueueAssert();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v12 = *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v12 + 16));
  v13 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v14 = *&v1[v13];

  v16 = sub_1DADBAC6C(v15);

  v17 = sub_1DADBB268(v16);

  sub_1DADBB7D8(v24, v17, (v11 + 16));
  swift_bridgeObjectRelease_n();
  os_unfair_lock_unlock(*(v12 + 16));
  v18 = *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue];
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = v1;
  aBlock[4] = sub_1DAD85A5C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_67;
  v20 = _Block_copy(aBlock);

  v21 = v1;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v9, v5, v20);
  _Block_release(v20);
  (*(v27 + 8))(v5, v2);
  (*(v25 + 8))(v9, v26);
}

uint64_t sub_1DADBAC6C(uint64_t a1)
{
  v1 = a1;
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DAED247C();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v32 = MEMORY[0x1E69E7CC0];
    sub_1DAED25EC();
    result = sub_1DAED265C();
    v29 = result;
    v30 = v4;
    v31 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1DAED25EC();
  v5 = -1 << *(v1 + 32);
  result = sub_1DAED23DC();
  v6 = *(v1 + 36);
  v29 = result;
  v30 = v6;
  v31 = 0;
LABEL_7:
  v7 = 0;
  v26 = v2;
  while (v7 < v2)
  {
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v15 = v29;
    v16 = v30;
    v17 = v31;
    sub_1DADBAF5C(v29, v30, v31, v1);
    v19 = v18;
    v20 = [v18 widget];
    v21 = v1;
    v22 = [v20 widgetByReplacingIntent_];

    v23 = [v19 metrics];
    [objc_allocWithZone(MEMORY[0x1E69943E0]) initWithWidget:v22 metrics:v23];

    sub_1DAED25CC();
    v24 = *(v32 + 16);
    sub_1DAED25FC();
    sub_1DAED260C();
    result = sub_1DAED25DC();
    if (v27)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      if (sub_1DAED269C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v26;
      v14 = v7 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A988, &qword_1DAEDF118);
      v25 = sub_1DAED1C2C();
      sub_1DAED272C();
      result = v25(v28, 0);
    }

    else
    {
      sub_1DADBB0EC(v15, v16, v17, v1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_1DADAE050(v15, v16, v17);
      v29 = v9;
      v30 = v11;
      v31 = v13 & 1;
      v1 = v21;
      v2 = v26;
      v14 = v7 + 1;
    }

    ++v7;
    if (v14 == v2)
    {
      sub_1DADAE050(v29, v30, v31);
      return v32;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1DADBAF5C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1DAED267C();
      sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1DAED26AC() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1DAED26BC();
  sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
  swift_dynamicCast();
  v5 = sub_1DADA5AD0(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

void sub_1DADBB0EC(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1DAED26AC() == *(a4 + 36))
    {
      sub_1DAED26BC();
      sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
      swift_dynamicCast();
      sub_1DADA5AD0(v8);
      v6 = v5;

      if (v6)
      {
        sub_1DAED268C();
        sub_1DAED26DC();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1DAED23FC();
  v7 = *(a4 + 36);
}

uint64_t sub_1DADBB268(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v4 = sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
    v5 = sub_1DAE8A564(&qword_1EE005640, &unk_1EE005648, 0x1E69943E0);
    result = MEMORY[0x1E127DBF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E69943E0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E127E1F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1DAD8C3E4(&v12, v10, &unk_1EE005648, 0x1E69943E0, &unk_1ECC0A308, &qword_1DAEDD860);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DAED247C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1DADBB3FC()
{
  sub_1DADA657C();
  if (v0 <= 0x3F)
  {
    sub_1DADBB6D4();
    if (v1 <= 0x3F)
    {
      sub_1DADBB724(319, &qword_1EE005838, &qword_1ECC09A18, &unk_1DAEDB490, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1DADBB724(319, &qword_1EE005850, &qword_1ECC08678, &qword_1DAED6CB8, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1DADBB788(319, &qword_1EE005820, MEMORY[0x1E69E6448], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1DADBB788(319, &qword_1EE005828, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1DADBB788(319, &qword_1EE005830, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1DADBB724(319, &qword_1EE005BB8, &qword_1ECC09A28, &qword_1DAEDB500, MEMORY[0x1E697BD78]);
                if (v7 <= 0x3F)
                {
                  sub_1DADBB724(319, &qword_1EE005B90, &qword_1ECC09A30, qword_1DAEDB508, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1DADBB788(319, &qword_1EE005B98, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1DADA6518(319, &qword_1EE005BA0, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_1DADBB6D4()
{
  result = qword_1EE005408;
  if (!qword_1EE005408)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE005408);
  }

  return result;
}

void sub_1DADBB724(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DADBB788(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DADBB7D8(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DAED247C())
  {
    v5 = 0;
    v21 = a2 + 56;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E127E1F0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = *(a1 + 32 + 8 * v5);
      }

      v8 = v7;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = v7;
        v11 = sub_1DAED24CC();

        if (v11)
        {
          goto LABEL_4;
        }
      }

      else if (*(a2 + 16))
      {
        sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
        v12 = *(a2 + 40);
        v13 = sub_1DAED227C();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if ((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = *(*(a2 + 48) + 8 * v15);
            v18 = sub_1DAED228C();

            if (v18)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

LABEL_4:
          v6 = v8;
          MEMORY[0x1E127DAD0]();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DAED1E9C();
          }

          sub_1DAED1EBC();
        }
      }

LABEL_7:

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }
}

void sub_1DADBBA24()
{
  sub_1DADBBB18();
  if (v0 <= 0x3F)
  {
    sub_1DADBB6D4();
    if (v1 <= 0x3F)
    {
      sub_1DADA6518(319, &qword_1EE005BA0, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DADBBB18()
{
  if (!qword_1EE005678)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE005678);
    }
  }
}

unint64_t sub_1DADBBBD4()
{
  result = qword_1EE005920;
  if (!qword_1EE005920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A38, &qword_1DAEDB520);
    sub_1DADB0964();
    sub_1DAD64B94(qword_1EE008D80, &qword_1ECC099E0, &qword_1DAEDB3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005920);
  }

  return result;
}

uint64_t sub_1DADBBC8C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1DAED288C();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1DAECDB0C();

  v11 = [v10 debugDescription];
  v12 = sub_1DAED1CEC();

  return v12;
}

uint64_t storeEnumTagSinglePayload for WidgetRendererSessionSubscriptionRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DADBBEE0()
{
  v1 = *v0;
  v2 = 0x4B6E6F6973736573;
  v3 = 0x797469726F697270;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x53796C6269736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x54746E65746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1DADBBF98()
{
  sub_1DADBC208();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1DADBC26C(319, &qword_1EE005758, MEMORY[0x1E6993F18]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1DADBC26C(319, &qword_1EE005770, MEMORY[0x1E6993ED0]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1DADBC26C(319, &qword_1EE005EB0, MEMORY[0x1E6994460]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetRendererSessionSubscriptionRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1DADBC208()
{
  if (!qword_1EE00A6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08378, &qword_1DAEDA7F0);
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00A6A0);
    }
  }
}

void sub_1DADBC26C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DADBC2C0()
{
  sub_1DAD8D568();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1DAECEDEC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1DADBC3D8()
{
  v0 = sub_1DADBC424(&unk_1F56AF9D8);
  result = swift_arrayDestroy();
  qword_1EE008AD0 = v0;
  return result;
}

uint64_t sub_1DADBC424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A300, &qword_1DAEDD858);
    v3 = sub_1DAED254C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1DAED294C();

      sub_1DAED1D9C();
      result = sub_1DAED297C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1DAED289C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DADBC5F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AB60, &qword_1DAEDFD80);
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AB68, &qword_1DAEDFD88);
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC090B8, &qword_1DAEDFD90);
  sub_1DAECF2AC();
  sub_1DAED233C();
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1EE0058A0, &qword_1ECC0AB60, &qword_1DAEDFD80);
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1EE005868, &qword_1ECC0AB68, &qword_1DAEDFD88);
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1DADBC810@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for WidgetRendererSessionSubscriptionRequest();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = WidgetRendererSessionSubscriptionRequest.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

void *WidgetRendererSessionSubscriptionRequest.init(from:)(uint64_t *a1)
{
  v2 = sub_1DAED10DC();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECE20C();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099A8, &qword_1DAEDACF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DADA64C4();
  v18 = v41;
  sub_1DAED29AC();
  if (v18)
  {
    v19 = v42;
LABEL_6:
    type metadata accessor for WidgetRendererSessionSubscriptionRequest();
    v29 = *(*v19 + 48);
    v30 = *(*v19 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_7;
  }

  v41 = v10;
  v37 = v7;
  v46 = 0;
  sub_1DADBCF28();
  sub_1DAED280C();
  v20 = v11;
  v22 = v44;
  v21 = v45;
  sub_1DAD674D4(0, &unk_1EE005610, 0x1E696ACD0);
  sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
  v23 = sub_1DAED207C();
  v24 = v12;
  v19 = v42;
  v35 = v22;
  v36 = v21;
  if (!v23)
  {
    LOBYTE(v44) = 0;
    sub_1DAED25AC();
    swift_allocError();
    sub_1DAE3D868();
    sub_1DAED259C();
    swift_willThrow();
    sub_1DAD70BB4(v35, v36);
    (*(v24 + 8))(v15, v20);
    goto LABEL_6;
  }

  v42[2] = v23;
  LOBYTE(v44) = 1;
  v25 = v23;
  v26 = sub_1DAED27FC();
  v27 = v35;
  v34 = v25;
  v19[3] = v26;
  LOBYTE(v44) = 2;
  sub_1DADA7FB0(&unk_1EE00A6A8, MEMORY[0x1E6993FA8]);
  v28 = v41;
  sub_1DAED280C();
  (*(v40 + 32))(v19 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority, v28, v37);
  LOBYTE(v44) = 3;
  sub_1DADA7FB0(&qword_1EE005788, MEMORY[0x1E6993E88]);
  v32 = v38;
  sub_1DAED280C();
  (*(v39 + 32))(v19 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers, v6, v32);
  LOBYTE(v44) = 4;
  v33 = sub_1DAED27EC();
  (*(v24 + 8))(v15, v20);
  sub_1DAD70BB4(v27, v36);

  *(v19 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled) = v33 & 1;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v19;
}

unint64_t sub_1DADBCF28()
{
  result = qword_1EE00C280;
  if (!qword_1EE00C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00C280);
  }

  return result;
}

uint64_t sub_1DADBCFE4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_1DADBD048()
{
  result = qword_1EE005950;
  if (!qword_1EE005950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E08, &qword_1DAED8248);
    sub_1DAD7A754();
    sub_1DAD64B94(&qword_1EE005900, &qword_1ECC08D98, &qword_1DAED81A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005950);
  }

  return result;
}

unint64_t sub_1DADBD100()
{
  result = qword_1EE005AE0;
  if (!qword_1EE005AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08DA0, &qword_1DAED81A8);
    sub_1DAD64B94(&qword_1EE005900, &qword_1ECC08D98, &qword_1DAED81A0);
    sub_1DAD64B94(&qword_1EE0059C8, &qword_1ECC08DA8, &qword_1DAED81B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AE0);
  }

  return result;
}

uint64_t sub_1DADBD22C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_1DADBD394();
  os_unfair_lock_unlock(v1 + 4);

  if (qword_1EE00AC70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE011BA0);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Application resuming", v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  return sub_1DAD66680();
}

uint64_t sub_1DADBD36C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DADBD3C0(uint64_t a1, id *a2, uint64_t a3)
{
  v64 = a1;
  v5 = sub_1DAED0DDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - v10;
  v12 = sub_1DAED18CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v59 - v20;
  swift_beginAccess();
  v22 = a2[2];
  sub_1DAED0B9C();

  sub_1DAD722E0(&qword_1EE00AAF0, MEMORY[0x1E69859A8]);
  LOBYTE(v22) = sub_1DAED1C9C();
  v23 = *(v13 + 8);
  v62 = v13 + 8;
  v63 = v23;
  v23(v21, v12);
  if (v22)
  {
    v61 = a2;
    (*(v6 + 16))(v11, v64, v5);
    (*(v13 + 16))(v19, a3, v12);
    v24 = sub_1DAECEDCC();
    v25 = sub_1DAED203C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v5;
      v27 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v66 = v65;
      *v27 = 136446466;
      v28 = sub_1DAED0D8C();
      v30 = v29;
      (*(v6 + 8))(v11, v26);
      v31 = sub_1DAD6482C(v28, v30, &v66);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
      v32 = sub_1DAED287C();
      v34 = v33;
      v63(v19, v12);
      v35 = sub_1DAD6482C(v32, v34, &v66);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1DAD61000, v24, v25, "[%{public}s] Discarding content due to data protection level changing to: %{public}s", v27, 0x16u);
      v36 = v65;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v36, -1, -1);
      MEMORY[0x1E127F100](v27, -1, -1);
    }

    else
    {

      v63(v19, v12);
      (*(v6 + 8))(v11, v5);
    }

    v55 = v61;
    swift_beginAccess();
    v55[24] = 1;
    v56 = *(v55 + 2);
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v57 = v56;
    sub_1DAED0C6C();

    v58 = *(v55 + 2);
    sub_1DAED0BCC();
  }

  else
  {
    v37 = v5;
    v38 = a2[2];
    sub_1DAED0C5C();

    v39 = *(&v67 + 1);
    sub_1DAD64398(&v66, &unk_1ECC08880, &unk_1DAED6F50);
    if (!v39)
    {
      v40 = v60;
      v41 = v64;
      (*(v6 + 16))(v60, v64, v5);
      (*(v13 + 16))(v61, a3, v12);
      v42 = sub_1DAECEDCC();
      v43 = sub_1DAED203C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v66 = v59;
        *v44 = 136446466;
        v45 = sub_1DAED0D8C();
        v47 = v46;
        (*(v6 + 8))(v40, v37);
        v48 = sub_1DAD6482C(v45, v47, &v66);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2082;
        sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
        v49 = v61;
        v50 = sub_1DAED287C();
        v52 = v51;
        v63(v49, v12);
        v53 = sub_1DAD6482C(v50, v52, &v66);
        v41 = v64;

        *(v44 + 14) = v53;
        _os_log_impl(&dword_1DAD61000, v42, v43, "[%{public}s] Loading content again due to data protection level being available: %{public}s", v44, 0x16u);
        v54 = v59;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v54, -1, -1);
        MEMORY[0x1E127F100](v44, -1, -1);
      }

      else
      {

        v63(v61, v12);
        (*(v6 + 8))(v40, v37);
      }

      sub_1DAD80684(v41);
    }
  }
}

unint64_t sub_1DADBDB00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A0, qword_1DAEDF120);
    v3 = sub_1DAED279C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1DAD84D0C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1DADBDBF8(uint64_t *a1, void **a2)
{
  v3 = *a2;
  if (qword_1EE005E98 != -1)
  {
    swift_once();
  }

  v4 = sub_1DAECEDEC();
  __swift_project_value_buffer(v4, qword_1EE011808);
  v5 = v3;
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED200C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    v10 = [v5 description];
    v11 = sub_1DAED1CEC();
    v13 = v12;

    v14 = sub_1DAD6482C(v11, v13, &v23);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1DAD61000, v6, v7, "Received initial extension: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  v15 = [v5 identity];
  v16 = *a1;
  if ((*a1 & 0xC000000000000001) == 0)
  {
    v20 = *a1;
    v21 = v5;
    goto LABEL_12;
  }

  if (v16 < 0)
  {
    v17 = *a1;
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = v5;
  v19 = sub_1DAED247C();
  if (!__OFADD__(v19, 1))
  {
    *a1 = sub_1DAEB9770(v17, v19 + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *a1;
    sub_1DADBDEA4(v5, v15, isUniquelyReferenced_nonNull_native);

    *a1 = v23;
    return;
  }

  __break(1u);
}

uint64_t sub_1DADBDE24()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE011808);
  __swift_project_value_buffer(v0, qword_1EE011808);
  return sub_1DAECEDDC();
}

id sub_1DADBDEA4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DAD84D0C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1DADBE00C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1DAD84D0C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1DAED21EC();
        sub_1DAED28FC();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1DADDC578();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_1DADBE00C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A0, qword_1DAEDF120);
  result = sub_1DAED277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1DAED227C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1DADBE290()
{
  result = qword_1EE00B468;
  if (!qword_1EE00B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B468);
  }

  return result;
}

unint64_t sub_1DADBE2E8()
{
  result = qword_1EE00B470;
  if (!qword_1EE00B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B470);
  }

  return result;
}

void sub_1DADBE344()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DAD648F8(Strong + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, aBlock);
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(aBlock, v10);
    v3 = *(v2 + 8);
    v4 = *(v1 + 32);
    v5 = v3();

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v5;
    v11 = sub_1DADC4FB4;
    v12 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    v10 = &block_descriptor;
    v7 = _Block_copy(aBlock);
    v8 = v5;

    BSDispatchMain();
    _Block_release(v7);
  }
}

uint64_t sub_1DADBE4BC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADBE4FC(uint64_t a1)
{
  v2 = sub_1DAED11DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A2B0, &qword_1DAEDD828);
    v10 = sub_1DAED254C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1DAD7CB5C(&qword_1EE00AB38, MEMORY[0x1E6993EB8]);
      v18 = sub_1DAED1C5C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1DAD7CB5C(&unk_1ECC0A2C0, MEMORY[0x1E6993EB8]);
          v25 = sub_1DAED1CAC();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DADBE824(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1DADBE900(v1);
    v5 = sub_1DADBEE50(v4);

    v6 = v3[7];

    sub_1DADBF368(v5);

    v7 = v3[8];

    sub_1DADBF368(v5);

    v8 = v3[9];

    sub_1DADBF368(v5);
  }

  return result;
}

uint64_t sub_1DADBE900(uint64_t a1)
{
  v1 = a1;
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DAED247C();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v30 = MEMORY[0x1E69E7CC0];
    sub_1DAED25EC();
    result = sub_1DAED265C();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1DAED25EC();
  v5 = -1 << *(v1 + 32);
  result = sub_1DAED23DC();
  v6 = *(v1 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  v24 = v2;
  while (v7 < v2)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v15 = v27;
    v16 = v28;
    v17 = v29;
    sub_1DADBEB7C(v27, v28, v29, v1);
    v19 = v18;
    v20 = [v18 identity];
    v21 = v1;

    sub_1DAED25CC();
    v22 = *(v30 + 16);
    sub_1DAED25FC();
    sub_1DAED260C();
    result = sub_1DAED25DC();
    if (v25)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      if (sub_1DAED269C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5E8, &unk_1DAEDDF40);
      v23 = sub_1DAED1C2C();
      sub_1DAED272C();
      result = v23(v26, 0);
    }

    else
    {
      sub_1DADBECFC(v15, v16, v17, v1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_1DADAE050(v15, v16, v17);
      v27 = v9;
      v28 = v11;
      v29 = v13 & 1;
      v1 = v21;
      v2 = v24;
    }

    ++v7;
    if (v14 == v2)
    {
      sub_1DADAE050(v27, v28, v29);
      return v30;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1DADBEB7C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1DAED26EC();
      sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1DAED26AC() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1DAED26BC();
  sub_1DAED21EC();
  swift_dynamicCast();
  v5 = sub_1DAD84D0C(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

void sub_1DADBECFC(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1DAED26AC() == *(a4 + 36))
    {
      sub_1DAED26BC();
      sub_1DAED21EC();
      swift_dynamicCast();
      sub_1DAD84D0C(v8);
      v6 = v5;

      if (v6)
      {
        sub_1DAED268C();
        sub_1DAED26DC();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1DAED23FC();
  v7 = *(a4 + 36);
}

uint64_t sub_1DADBEE50(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v4 = sub_1DAED21EC();
    v5 = sub_1DAD7CB5C(&qword_1EE00AA28, MEMORY[0x1E69941C0]);
    result = MEMORY[0x1E127DBF0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E127E1F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1DADBEFB0(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DAED247C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DADBEFB0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DAED248C();

    if (v9)
    {

      sub_1DAED21EC();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1DAED247C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1DAE8832C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1DADAAF4C(v22 + 1, &unk_1ECC0A430, qword_1DAEDD8D0);
    }

    v20 = v8;
    sub_1DAE88E64(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1DAED21EC();
  v11 = *(v6 + 40);
  v12 = sub_1DAED227C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1DADBF1D8(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1DAED228C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_1DADBF1D8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DADAAF4C(v6 + 1, &unk_1ECC0A430, qword_1DAEDD8D0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DAE89574(&unk_1ECC0A430, qword_1DAEDD8D0);
      goto LABEL_12;
    }

    sub_1DADA65C8(v6 + 1, &unk_1ECC0A430, qword_1DAEDD8D0);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1DAED227C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1DAED21EC();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1DAED228C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DAED28EC();
  __break(1u);
}

uint64_t sub_1DADBF368(uint64_t a1)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08788, &qword_1DAED71C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(*(v1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock) + 16);
  v22 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);

  os_unfair_lock_lock(v6);
  v7 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v11; result = sub_1DAD64398(v5, &qword_1ECC08788, &qword_1DAED71C8))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v8 + 48);
    v19 = sub_1DAED0DDC();
    (*(*(v19 - 8) + 16))(v5, v18 + *(*(v19 - 8) + 72) * v17, v19);
    v20 = *(*(v8 + 56) + 8 * v17);
    *&v5[*(v2 + 48)] = v20;

    sub_1DADBF57C(v5, v20, v23, v1);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      os_unfair_lock_unlock(*(v22 + 16));
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1DADBF57C(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  v12 = sub_1DAED18CC();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v35 - v17;
  v18 = sub_1DAED0DBC();
  v19 = [v18 extensionIdentity];

  LOBYTE(v18) = sub_1DADBFA14(v19, a3);
  if (v18)
  {
    v37 = a2;
    v38 = a4;
    v20 = a1;
    v21 = *(a4 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider + 32);
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider), *(a4 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider + 24));
    v36 = v20;
    v22 = sub_1DAED0DBC();
    v23 = [v22 extensionIdentity];

    sub_1DAED134C();
    v24 = v39;
    (*(v39 + 56))(v11, 0, 1, v12);
    v25 = v40;
    (*(v24 + 32))(v40, v11, v12);
    v26 = v37;
    swift_beginAccess();
    v27 = v26[2];
    sub_1DAED0B9C();

    sub_1DAD722E0(&qword_1EE00AAE8, MEMORY[0x1E69859A8]);
    LOBYTE(v23) = sub_1DAED1CAC();
    v28 = *(v24 + 8);
    v28(v16, v12);
    v29 = v38;
    if ((v23 & 1) == 0)
    {
      v30 = v26[2];
      v31 = *(v24 + 16);
      v31(v16, v40, v12);
      v32 = v30;
      sub_1DAED0BAC();

      v33 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
      swift_beginAccess();
      v31(v16, (v29 + v33), v12);
      v25 = v40;
      sub_1DADBD3C0(v36, v26, v16);
      v28(v16, v12);
    }

    v34 = v26[2];
    sub_1DAED0C5C();

    if (v42)
    {
      v28(v25, v12);
      sub_1DAD64398(v41, &unk_1ECC08880, &unk_1DAED6F50);
    }

    else
    {
      sub_1DAD64398(v41, &unk_1ECC08880, &unk_1DAED6F50);
      sub_1DAD80684(v36);
      v28(v25, v12);
    }
  }
}

uint64_t sub_1DADBFA34(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 32);
  v5 = *(v4 + 16);
  v38 = v4;

  os_unfair_lock_lock(v5);
  v6 = v1 + 64;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v39 = v1;
  v40 = v3;
  while (v9)
  {
LABEL_12:
    v15 = __clz(__rbit64(v9)) | (v11 << 6);
    v16 = *(v1 + 56);
    v17 = (*(v1 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v16 + 8 * v15);
    swift_beginAccess();
    v21 = v20;

    v22 = *(v3 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    v25 = sub_1DADBFD3C(v19, v18);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v24[3] < v30)
    {
      sub_1DADBFE6C(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1DADBFD3C(v19, v18);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      if (v31)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v36 = v25;
    sub_1DADDBEA0();
    v25 = v36;
    if (v31)
    {
LABEL_5:
      v12 = v24[7];
      v13 = *(v12 + 8 * v25);
      *(v12 + 8 * v25) = v21;

      goto LABEL_6;
    }

LABEL_18:
    v24[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v24[6] + 16 * v25);
    *v33 = v19;
    v33[1] = v18;
    *(v24[7] + 8 * v25) = v21;
    v34 = v24[2];
    v29 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v29)
    {
      goto LABEL_26;
    }

    v24[2] = v35;

LABEL_6:
    v9 &= v9 - 1;
    v3 = v40;
    *(v40 + 40) = v24;
    swift_endAccess();

    v1 = v39;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      os_unfair_lock_unlock(*(v38 + 16));

      v37 = *(v3 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAECEEEC();
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DAED28FC();
  __break(1u);
  return result;
}

unint64_t sub_1DADBFD3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DAED294C();
  sub_1DAED1D9C();
  v6 = sub_1DAED297C();

  return sub_1DADBFDB4(a1, a2, v6);
}

unint64_t sub_1DADBFDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DAED289C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1DADBFE6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080A8, &qword_1DAED6238);
  v39 = a2;
  result = sub_1DAED277C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1DAED294C();
      sub_1DAED1D9C();
      result = sub_1DAED297C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DADC0148()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAD70C08();
  }

  return result;
}

uint64_t sub_1DADC01C4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  swift_beginAccess();
  if (*(*(v0 + 40) + 16))
  {
    v3 = *(v0 + 40);

    v5 = sub_1DADC0260(v4);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(*(v1 + 16));

  return v5;
}

uint64_t sub_1DADC0260(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v40 = v6;
  v41 = v2;
  v38 = result;
  while (v5)
  {
LABEL_10:
    v11 = __clz(__rbit64(v5)) | (v8 << 6);
    v12 = *(*(v1 + 48) + 16 * v11 + 8);
    v13 = *(*(v1 + 56) + 8 * v11);

    v14 = v13;
    v15 = [v14 containerDescriptors];
    sub_1DAD674D4(0, &qword_1EE0054C8, 0x1E6994230);
    v16 = sub_1DAED1E7C();

    v17 = v16 >> 62;
    v45 = v16;
    if (v16 >> 62)
    {
      v18 = sub_1DAED247C();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_1DAED247C();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v18;
    v20 = __OFADD__(result, v18);
    v21 = result + v18;
    if (v20)
    {
      goto LABEL_41;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v19)
      {
LABEL_22:
        sub_1DAED247C();
      }

      else
      {
        v22 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v23 = *(v22 + 16);
      }

      v42 = sub_1DAED258C();
      v22 = v42 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v19)
    {
      goto LABEL_22;
    }

    v22 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v21 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v42 = v9;
LABEL_24:
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    result = v45;
    if (v17)
    {
      v27 = v22;
      v28 = sub_1DAED247C();
      v22 = v27;
      v26 = v28;
      result = v45;
    }

    else
    {
      v26 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v26)
    {
      if (((v25 >> 1) - v24) < v43)
      {
        goto LABEL_43;
      }

      v29 = v22 + 8 * v24 + 32;
      v39 = v22;
      if (v17)
      {
        if (v26 < 1)
        {
          goto LABEL_45;
        }

        v30 = v26;
        sub_1DAD64B94(&qword_1EE005680, &qword_1ECC08D58, &unk_1DAED7E60);
        for (i = 0; i != v30; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D58, &unk_1DAED7E60);
          v32 = v29;
          v33 = sub_1DAD8DE4C(v44, i, v45);
          v35 = *v34;
          (v33)(v44, 0);
          v29 = v32;
          *(v32 + 8 * i) = v35;
        }
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v9 = v42;
      v1 = v38;
      v6 = v40;
      v2 = v41;
      if (v43 >= 1)
      {
        v36 = *(v39 + 16);
        v20 = __OFADD__(v36, v43);
        v37 = v36 + v43;
        if (v20)
        {
          goto LABEL_44;
        }

        *(v39 + 16) = v37;
      }
    }

    else
    {

      v6 = v40;
      v2 = v41;
      v9 = v42;
      if (v43 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

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
  __break(1u);
  return result;
}

unint64_t sub_1DADC0624(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1E127E1F0](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject widgets];
      sub_1DAD674D4(0, &unk_1EE005500, 0x1E6994238);
      v8 = sub_1DAED1E7C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1DAED247C();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1DAED247C();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_1DAED247C();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1DAED258C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1DAED247C();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_1DAD64B94(&qword_1EE005688, &qword_1ECC0A5C0, &unk_1DAEDDF08);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5C0, &unk_1DAEDDF08);
              v20 = sub_1DAD8DE4C(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1DAED247C();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DADC09B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DAECDCEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v52 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  v17 = *(a3 + 16);
  v18 = a4[3];
  v19 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v18);
  v20 = (*(v19 + 8))(v18, v19);
  swift_beginAccess();
  LOBYTE(v18) = *(v20 + 24);

  swift_beginAccess();
  *(a3 + 16) = v18;
  swift_retain_n();

  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED200C();
  if (os_log_type_enabled(v21, v22))
  {
    v54 = v22;
    v52 = v10;
    v55 = v21;
    v56 = v17;
    v23 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v64 = v53;
    *v23 = 136446978;
    v24 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v25 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

    v26 = sub_1DAD6482C(v24, v25, &v64);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v27 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
    sub_1DAD648F8(v16 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v58);
    v57 = v7;
    v29 = v59;
    v28 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v30 = (*(v28 + 16))(v29, v28);
    sub_1DAED0B4C();

    v31 = (v57 + 56);
    if (v62)
    {
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v32 = v57;
      sub_1DAED177C();
      (*(v32 + 56))(v14, 0, 1, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      if ((*(v32 + 48))(v14, 1, v6) != 1)
      {
        sub_1DAD64398(v14, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD648F8(v16 + v27, v61);
        v35 = v62;
        v36 = v63;
        __swift_project_boxed_opaque_existential_1(v61, v62);
        v37 = (*(v36 + 16))(v35, v36);
        sub_1DAED0B4C();

        v38 = v59;
        if (!v59)
        {

          __break(1u);
          return result;
        }

        __swift_project_boxed_opaque_existential_1(v58, v38);
        v39 = v52;
        sub_1DAED177C();
        if (qword_1EE00A700 != -1)
        {
          swift_once();
        }

        v40 = qword_1EE00A708;
        v41 = sub_1DAECDC5C();
        v42 = [v40 stringFromDate_];

        v43 = sub_1DAED1CEC();
        v33 = v44;

        (*(v57 + 8))(v39, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        v34 = v43;
        goto LABEL_13;
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      sub_1DAD64398(v61, &unk_1ECC07DE0, &qword_1DAEDBED0);
      (*v31)(v14, 1, 1, v6);
    }

    sub_1DAD64398(v14, &qword_1ECC07CE8, &qword_1DAED6F60);
    v33 = 0xE900000000000064;
    v34 = 0x6E756F6620746F6ELL;
LABEL_13:
    v17 = v56;
    v45 = v54;
    v46 = sub_1DAD6482C(v34, v33, &v64);

    *(v23 + 14) = v46;
    *(v23 + 22) = 1026;
    *(v23 + 24) = v17;
    *(v23 + 28) = 1026;
    swift_beginAccess();
    v47 = *(a3 + 16);

    *(v23 + 30) = v47;

    v48 = v55;
    _os_log_impl(&dword_1DAD61000, v55, v45, "[%{public}s] new live entry: %{public}s, was data protected: %{BOOL,public}d, is data protected: %{BOOL,public}d.", v23, 0x22u);
    v49 = v53;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v49, -1, -1);
    MEMORY[0x1E127F100](v23, -1, -1);

    goto LABEL_14;
  }

LABEL_14:
  v50 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewableEntryCache);

  sub_1DADC109C();

  v51 = 3;
  if ((v17 & 1) == 0)
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      v51 = 4;
    }

    else
    {
      v51 = 3;
    }
  }

  LOBYTE(v64) = v51;
  sub_1DAD8EC1C(&v64);
}

void sub_1DADC109C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9[-v3];
  v5 = *(v0 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  swift_beginAccess();
  v6 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC8];

  [*(v0 + 40) removeAllObjects];
  v7 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest;
  swift_beginAccess();
  sub_1DADC11D0(v4, v0 + v8);
  swift_endAccess();
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_1DADC11D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADC1254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECF8EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

BOOL sub_1DADC1344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v12 = *v3;
    v7 = LiveWidgetViewChangeReason.rawValue.getter();
    v9 = v8;
    if (v7 == LiveWidgetViewChangeReason.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_1DAED289C();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1DADC1420@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v44 = a3;
  v5 = sub_1DAED157C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C58, &qword_1DAEDF470);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v43 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v34[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v34[-v21];
  v42 = a1;
  sub_1DADC18E0(a1, &v34[-v21]);
  v23 = a2[3];
  v24 = a2[4];
  v37 = __swift_project_boxed_opaque_existential_1(a2, v23);
  v40 = v24;
  v41 = v23;
  sub_1DAED19FC();
  v38 = *(v6 + 56);
  v39 = v6 + 56;
  v38(v20, 0, 1, v5);
  v25 = *(v10 + 56);
  sub_1DADC18E0(v22, v13);
  sub_1DADC18E0(v20, &v13[v25]);
  v26 = *(v6 + 48);
  if (v26(v13, 1, v5) == 1)
  {
    sub_1DAD64398(v20, &qword_1ECC07DF0, &qword_1DAED5870);
    sub_1DAD64398(v22, &qword_1ECC07DF0, &qword_1DAED5870);
    if (v26(&v13[v25], 1, v5) == 1)
    {
      result = sub_1DAD64398(v13, &qword_1ECC07DF0, &qword_1DAED5870);
LABEL_9:
      v29 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1DADC18E0(v13, v43);
  if (v26(&v13[v25], 1, v5) == 1)
  {
    sub_1DAD64398(v20, &qword_1ECC07DF0, &qword_1DAED5870);
    sub_1DAD64398(v22, &qword_1ECC07DF0, &qword_1DAED5870);
    (*(v6 + 8))(v43, v5);
LABEL_6:
    sub_1DAD64398(v13, &qword_1ECC09C58, &qword_1DAEDF470);
    goto LABEL_7;
  }

  v30 = &v13[v25];
  v31 = v36;
  (*(v6 + 32))(v36, v30, v5);
  sub_1DADA6F60(&qword_1EE00AB28, MEMORY[0x1E6985700]);
  v32 = v43;
  v35 = sub_1DAED1CAC();
  v33 = *(v6 + 8);
  v33(v31, v5);
  sub_1DAD64398(v20, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAD64398(v22, &qword_1ECC07DF0, &qword_1DAED5870);
  v33(v32, v5);
  result = sub_1DAD64398(v13, &qword_1ECC07DF0, &qword_1DAED5870);
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_7:
  v28 = v42;
  sub_1DAD64398(v42, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAED19FC();
  v29 = 1;
  result = v38(v28, 0, 1, v5);
LABEL_10:
  *v44 = v29;
  return result;
}

uint64_t sub_1DADC18E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADC1978()
{

  return swift_deallocObject();
}

void sub_1DADC19DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v9 = sub_1DAED09DC();
  v32 = *(v9 - 8);
  isa = v32[8].isa;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DAED0A3C();
  v13 = *(v31 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v5[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v17 + 16));
  if (v5[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_hasReceivedInitialEnvironment])
  {
    os_unfair_lock_unlock(*(v17 + 16));
LABEL_11:
    v29[1] = *&v5[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
    v25 = swift_allocObject();
    v25[2] = a1;
    v25[3] = a2;
    v25[4] = v5;
    aBlock[4] = a4;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = v30;
    v26 = _Block_copy(aBlock);
    v27 = a1;
    v28 = v5;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v33 = MEMORY[0x1E69E7CC0];
    sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v16, v12, v26);
    _Block_release(v26);
    (v32[1].isa)(v12, v9);
    (*(v13 + 8))(v16, v31);

    return;
  }

  os_unfair_lock_unlock(*(v17 + 16));
  if (a2 != 3)
  {
    goto LABEL_11;
  }

  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v18 = sub_1DAECEDEC();
  __swift_project_value_buffer(v18, qword_1EE0117F0);
  v19 = a1;
  v32 = sub_1DAECEDCC();
  v20 = sub_1DAED200C();

  if (os_log_type_enabled(v32, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    *(v21 + 4) = v19;
    *v22 = v19;
    v23 = v19;
    _os_log_impl(&dword_1DAD61000, v32, v20, "Ignoring environment mismatch request for %{public}@ because we haven't received the server environment yet.", v21, 0xCu);
    sub_1DAD64398(v22, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v22, -1, -1);
    MEMORY[0x1E127F100](v21, -1, -1);
  }

  v24 = v32;
}

uint64_t sub_1DADC1E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DADB9EB8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DADDB404();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
    sub_1DADAB9A4(v12 + *(*(v13 - 8) + 72) * v8);
    v14 = *(v11 + 56);
    v15 = sub_1DAED19AC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1DADD97F4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1DAED19AC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void sub_1DADC200C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (!sub_1DADC1344(4, v1))
    {
      goto LABEL_12;
    }

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v4 = sub_1DAECEDEC();
    __swift_project_value_buffer(v4, qword_1EE011748);
    v3 = v3;
    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED203C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v10 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v11 = sub_1DAD6482C(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] Update content synchronously because moving to data protected content.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    v12 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v12)
    {
      v13 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      swift_beginAccess();
      v14 = *&v12[v13];
      type metadata accessor for SecureHostingController();
      sub_1DAE0C958(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
      v15 = v14;
      v16 = v12;
      if (!sub_1DAECF9AC())
      {
LABEL_11:

        return;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        [v17 setNeedsSynchronousUpdate_];
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_12:
    }
  }
}

void sub_1DADC22AC(uint64_t *a1)
{
  v3 = *(type metadata accessor for LiveWidgetEntryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DADC231C(a1, v4);
}

void sub_1DADC231C(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - v9;
  v11 = type metadata accessor for LiveWidgetEntryView();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = *a1;
  sub_1DADC27F8(*a1);
  if (sub_1DADC2BA8(v18))
  {
    v19 = *(v11 + 36);
    sub_1DAD76078(a2, v17);
    sub_1DAD76078(a2, v15);
    v20 = sub_1DAECEDCC();
    v21 = sub_1DAED203C();
    if (os_log_type_enabled(v20, v21))
    {
      v39 = v21;
      v41 = v20;
      v22 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42[0] = v38;
      *v22 = 136446466;
      v23 = *(v17 + 1);

      sub_1DAD760DC(v17, type metadata accessor for LiveWidgetEntryView);
      v25 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v24 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v26 = sub_1DAD6482C(v25, v24, v42);

      *(v22 + 4) = v26;
      v40 = v22;
      *(v22 + 12) = 2082;
      v27 = *(v15 + 1);
      v28 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
      swift_beginAccess();
      sub_1DAD6495C(v27 + v28, v10, &unk_1ECC07D30, &unk_1DAED57E0);
      sub_1DAD6495C(v10, v8, &unk_1ECC07D30, &unk_1DAED57E0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1DAD64398(v10, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD760DC(v15, type metadata accessor for LiveWidgetEntryView);
          sub_1DAD64398(v8, &unk_1ECC07D30, &unk_1DAED57E0);
          v30 = 0xEB00000000726564;
          v31 = 0x6C6F686563616C50;
        }

        else
        {
          sub_1DAD64398(v8, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD64398(v10, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD760DC(v15, type metadata accessor for LiveWidgetEntryView);
          v30 = 0xE500000000000000;
          v31 = 0x7974706D45;
        }
      }

      else
      {
        sub_1DAD64398(v10, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD760DC(v15, type metadata accessor for LiveWidgetEntryView);
        sub_1DAD64398(v8, &unk_1ECC07D30, &unk_1DAED57E0);
        v30 = 0xE400000000000000;
        v31 = 1702259020;
      }

      v34 = v40;
      v33 = v41;
      v35 = v38;
      v36 = sub_1DAD6482C(v31, v30, v42);

      *(v34 + 14) = v36;
      _os_log_impl(&dword_1DAD61000, v33, v39, "[%{public}s] Animating pending view change: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v35, -1, -1);
      MEMORY[0x1E127F100](v34, -1, -1);
    }

    else
    {

      sub_1DAD760DC(v15, type metadata accessor for LiveWidgetEntryView);
      v32 = sub_1DAD760DC(v17, type metadata accessor for LiveWidgetEntryView);
    }

    MEMORY[0x1EEE9AC00](v32);
    *(&v37 - 2) = a2;

    sub_1DAECF1DC();
  }

  else
  {
    sub_1DAD758B4();
  }
}

void sub_1DADC27F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LiveWidgetEntryView();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v12 = sub_1DAECE06C();

  v13 = *(v5 + 44);
  if (v12)
  {
    sub_1DAD76078(v2, v11);

    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v17;
      *v16 = 136446466;
      v18 = *(v11 + 1);

      sub_1DAD760DC(v11, type metadata accessor for LiveWidgetEntryView);
      v19 = *(v18 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v20 = *(v18 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v21 = sub_1DAD6482C(v19, v20, &v36);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2082;
      v22 = MEMORY[0x1E127DB00](a1, &type metadata for LiveWidgetViewChangeReason);
      v24 = sub_1DAD6482C(v22, v23, &v36);

      *(v16 + 14) = v24;
      v25 = v15;
LABEL_6:
      _os_log_impl(&dword_1DAD61000, v14, v25, "[%{public}s] view changed for reasons: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v17, -1, -1);
      MEMORY[0x1E127F100](v16, -1, -1);

      return;
    }

    v34 = v11;
  }

  else
  {
    sub_1DAD76078(v2, v9);

    v14 = sub_1DAECEDCC();
    v26 = sub_1DAED200C();

    if (os_log_type_enabled(v14, v26))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v17;
      *v16 = 136446466;
      v27 = *(v9 + 1);

      sub_1DAD760DC(v9, type metadata accessor for LiveWidgetEntryView);
      v28 = *(v27 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v29 = *(v27 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v30 = sub_1DAD6482C(v28, v29, &v36);

      *(v16 + 4) = v30;
      *(v16 + 12) = 2082;
      v31 = MEMORY[0x1E127DB00](a1, &type metadata for LiveWidgetViewChangeReason);
      v33 = sub_1DAD6482C(v31, v32, &v36);

      *(v16 + 14) = v33;
      v25 = v26;
      goto LABEL_6;
    }

    v34 = v9;
  }

  sub_1DAD760DC(v34, type metadata accessor for LiveWidgetEntryView);
}

uint64_t sub_1DADC2BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  if (sub_1DADC1344(0, a1))
  {
    return 0;
  }

  if (sub_1DADC1344(16, a1) || sub_1DADC1344(17, a1))
  {
    [objc_opt_self() inheritedAnimationDuration];
    v7 = v6;
    v8 = *(v3 + 8);
    v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
    swift_beginAccess();
    if (*(v8 + v9) == 1 && v7 > 0.0)
    {
      return sub_1DAED095C();
    }
  }

  v10 = a1 + 31;
  v11 = &type metadata for FeatureFlags.Widgets;
  v12 = v2;
  while (1)
  {
    v13 = *(v10 + v12);
    v14 = v13 > 0x17;
    v15 = (1 << v13) & 0xC02008;
    if (!v14 && v15 != 0)
    {
      v30 = v11;
      v31 = sub_1DAD7C1DC();
      LOBYTE(v29[0]) = 1;
      v17 = sub_1DAECDF5C();
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (v17)
      {
        v18 = *(v3 + 8);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1DAECEF3C();

        if ((v29[0] & 1) == 0)
        {
          sub_1DAD648F8(v18 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v29);
          v19 = v11;
          v20 = v3;
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          v23 = *(v22 + 16);
          v24 = v22;
          v3 = v20;
          v11 = v19;
          v25 = v23(v21, v24);
          v26 = sub_1DAED0B8C();

          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          if (v26)
          {
            v27 = [v26 isLinkedOnOrAfter_];

            if (v27)
            {
              break;
            }
          }

          if (*(v18 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_contentFromXcodePreviews) == 1)
          {
            break;
          }
        }
      }
    }

    if (v12 == 1)
    {
      return 0;
    }

    v28 = v12 - 2;
    --v12;
    if (v28 >= v2)
    {
      __break(1u);
      break;
    }
  }

  if (qword_1EE0071E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DADC2E5C()
{
  result = sub_1DAED094C();
  qword_1EE0118A0 = result;
  return result;
}

uint64_t sub_1DADC2ECC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene);
    v2 = result;
    sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 1;
    *(v3 + 40) = v2;
    v4 = v1;
    v5 = v2;
    sub_1DAED22FC();
  }

  return result;
}

uint64_t sub_1DADC2FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v46 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = sub_1DAECDCEC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v50 = v18;
    v51 = v11;
    v52 = v8;
    BSDispatchQueueAssertMain();
    sub_1DAD648F8(a3, v56);

    v24 = sub_1DAECEDCC();
    v25 = sub_1DAED203C();

    if (os_log_type_enabled(v24, v25))
    {
      v48 = v25;
      v49 = v4;
      v26 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v26 = 136446466;
      v27 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v28 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v29 = sub_1DAD6482C(v27, v28, &v55);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = v57;
      v31 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v32 = (*(v31 + 16))(v30, v31);
      sub_1DAED0B4C();

      if (v54)
      {
        __swift_project_boxed_opaque_existential_1(v53, v54);
        sub_1DAED177C();
        if (qword_1EE00A700 != -1)
        {
          swift_once();
        }

        v33 = qword_1EE00A708;
        v34 = sub_1DAECDC5C();
        v35 = [v33 stringFromDate_];

        v36 = sub_1DAED1CEC();
        v38 = v37;

        (*(v50 + 8))(v21, v17);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
      }

      else
      {
        sub_1DAD64398(v53, &unk_1ECC07DE0, &qword_1DAEDBED0);
        v38 = 0xE900000000000064;
        v36 = 0x6E756F6620746F6ELL;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      v39 = sub_1DAD6482C(v36, v38, &v55);

      *(v26 + 14) = v39;
      _os_log_impl(&dword_1DAD61000, v24, v48, "[%{public}s] new placeholder entry: %{public}s", v26, 0x16u);
      v40 = v47;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v40, -1, -1);
      MEMORY[0x1E127F100](v26, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v56);
    }

    v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v23 + v41, v16, &unk_1ECC07D30, &unk_1DAED57E0);
    sub_1DAD7C48C(v16, v14, &unk_1ECC07D30, &unk_1DAED57E0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DAD64398(v14, &unk_1ECC07D30, &unk_1DAED57E0);
    if (EnumCaseMultiPayload == 1 || (v43 = v51, sub_1DAD6495C(v23 + v41, v51, &unk_1ECC07D30, &unk_1DAED57E0), v44 = v52, sub_1DAD7C48C(v43, v52, &unk_1ECC07D30, &unk_1DAED57E0), LODWORD(v43) = swift_getEnumCaseMultiPayload(), sub_1DAD64398(v44, &unk_1ECC07D30, &unk_1DAED57E0), v43 == 2))
    {
      v45 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewableEntryCache);

      sub_1DADC109C();

      LOBYTE(v53[0]) = 5;
      sub_1DAD8EC1C(v53);
    }
  }

  return result;
}

void sub_1DADC352C()
{
  v0 = sub_1DAECDDEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1DAECDDCC();
  v6 = sub_1DAECDDBC();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_1EE00A708 = v5;
}

uint64_t sub_1DADC3638(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1DAED248C();

    if (v8)
    {

      sub_1DAECEE3C();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_1DAED247C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1DAE880D4(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_1DAE88888(v19 + 1);
    }

    sub_1DAE88D7C(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_1DAECEE3C();
  v10 = *(v6 + 40);
  sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10]);
  v11 = sub_1DAED1C5C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_1DADC38D8(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1DAD7CB5C(&qword_1EE005C48, MEMORY[0x1E695BF10]);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_1DAED1CAC())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1DADC38D8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DAE88888(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1DAE892B4();
      goto LABEL_12;
    }

    sub_1DADC3AC0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1DAECEE3C();
  sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10]);
  result = sub_1DAED1C5C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1DAD7CB5C(&qword_1EE005C48, MEMORY[0x1E695BF10]);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_1DAED1CAC();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DAED28EC();
  __break(1u);
  return result;
}

uint64_t sub_1DADC3AC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A420, &qword_1DAEDD8C8);
  result = sub_1DAED252C();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1DAECEE3C();
      sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10]);

      result = sub_1DAED1C5C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DADC3D40(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a3;
  v33 = a1;
  v5 = sub_1DAED18CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v29 - v11;
  v13 = OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_lastDataProtectionValue;
  swift_beginAccess();
  v14 = *(v6 + 16);
  v14(v12, a2 + v13, v5);
  v29[0] = v14;
  v29[1] = v6 + 16;
  v14(v10, a1, v5);
  swift_beginAccess();
  (*(v6 + 40))(a2 + v13, v10, v5);
  swift_endAccess();
  v15 = *MEMORY[0x1E6985988];
  v16 = *(v6 + 104);
  v16(v10, v15, v5);
  sub_1DAD66C2C(&qword_1EE00AAE0, MEMORY[0x1E69859A8]);
  v34 = v12;
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  v31 = v6;
  v17 = v6;
  v18 = v33;
  v19 = *(v17 + 8);
  v19(v10, v5);
  if (v36 == v35)
  {
    v16(v10, v15, v5);
    v20 = sub_1DAED18BC();
    v19(v10, v5);
    if (v20)
    {
      goto LABEL_5;
    }
  }

  v16(v10, v15, v5);
  v21 = sub_1DAED18BC();
  v19(v10, v5);
  if (v21)
  {
    v16(v10, v15, v5);
    sub_1DAED1E4C();
    sub_1DAED1E4C();
    v19(v10, v5);
    if (v36 == v35)
    {
LABEL_5:
      sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
      (v29[0])(v10, v18, v5);
      v22 = v31;
      v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v24 = (v30 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      (*(v22 + 32))(v25 + v23, v10, v5);
      v26 = v32;
      *(v25 + v24) = v32;
      v27 = v26;
      sub_1DAED22FC();
    }
  }

  return (v19)(v34, v5);
}

void sub_1DADC4134()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v21 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    BSDispatchQueueAssertMain();
    v6 = *&v5[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
    v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v6 + v7, v3, &qword_1ECC07CE8, &qword_1DAED6F60);
    v8 = sub_1DAECDCEC();
    if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
    {

      sub_1DAD64398(v3, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

    else
    {
      sub_1DAD64398(v3, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (qword_1EE005DB8 != -1)
      {
        swift_once();
      }

      v9 = sub_1DAECEDEC();
      __swift_project_value_buffer(v9, qword_1EE011640);
      v10 = v5;
      v11 = sub_1DAECEDCC();
      v12 = sub_1DAED200C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v22 = v14;
        *v13 = 136446210;
        v15 = *&v10[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier];
        v16 = *&v10[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8];

        v17 = sub_1DAD6482C(v15, v16, &v22);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] Invalidating backlight environment for new content.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x1E127F100](v14, -1, -1);
        MEMORY[0x1E127F100](v13, -1, -1);
      }

      v18 = [*&v10[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene] _backlightSceneEnvironment];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1DAED1CBC();
        [v19 invalidateAllTimelinesForReason_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1DADC4460()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((*(result + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated) & 1) == 0)
    {
      if (qword_1EE005E60 != -1)
      {
        swift_once();
      }

      v2 = sub_1DAECEDEC();
      __swift_project_value_buffer(v2, qword_1EE011778);

      v3 = sub_1DAECEDCC();
      v4 = sub_1DAED203C();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v10 = v6;
        *v5 = 136446210;
        v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
        v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier + 8);

        v9 = sub_1DAD6482C(v7, v8, &v10);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Content reload detected - evaluating staleness.", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v6);
        MEMORY[0x1E127F100](v6, -1, -1);
        MEMORY[0x1E127F100](v5, -1, -1);
      }

      sub_1DAD6CF04();
    }
  }

  return result;
}

uint64_t sub_1DADC4624(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    a2(v7);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable;
  if (*(a4 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable))
  {
    v9 = *(a4 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable);

    sub_1DAECEE2C();

    v10 = *(a4 + v8);
  }

  *(a4 + v8) = 0;
}

uint64_t sub_1DADC46E0()
{
  v0 = sub_1DAED153C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DAED157C();
  v65 = *(v67 - 8);
  v4 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAECF8EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v57 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v57 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v60 = v1;
    v61 = v0;
    BSDispatchQueueAssertMain();
    v68 = v11;
    v24 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    swift_beginAccess();
    v25 = v6;
    v26 = *(v7 + 16);
    v26(v21, v23 + v24, v25);
    sub_1DAD648F8(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v73);
    v69 = v21;
    v71 = v14;
    v27 = v7;
    v28 = v74;
    v29 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v30 = (*(v29 + 16))(v28, v29);
    sub_1DAED0BEC();

    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    v31 = v69;
    v32 = v27;
    sub_1DAED10EC();
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    v33 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewableEntryCache);

    sub_1DADC109C();

    v34 = v70;
    v26(v70, v19, v25);
    swift_beginAccess();
    v35 = v23 + v24;
    v36 = v68;
    (*(v32 + 40))(v35, v34, v25);
    swift_endAccess();
    sub_1DAD94FD8();
    v26(v71, v31, v25);
    v63 = v19;
    v62 = v25;
    v26(v36, v19, v25);

    v37 = sub_1DAECEDCC();
    v38 = sub_1DAED203C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v73[0] = v59;
      *v39 = 136446466;
      v58 = v37;
      v40 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v41 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v42 = sub_1DAD6482C(v40, v41, v73);

      v57 = v39;
      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      v43 = v71;
      v44 = v62;
      v26(v34, v71, v62);
      v45 = v44;
      v46 = v64;
      sub_1DAED156C();
      sub_1DAED14EC();
      LODWORD(v70) = v38;
      v47 = v66;
      sub_1DAED14FC();
      v48 = sub_1DAED14DC();

      (*(v60 + 8))(v47, v61);
      (*(v65 + 8))(v46, v67);
      v72[0] = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
      sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70);
      v49 = sub_1DAED1C8C();
      v51 = v50;

      v52 = *(v32 + 8);
      v52(v68, v45);
      v52(v43, v45);
      v53 = sub_1DAD6482C(v49, v51, v73);

      v54 = v57;
      *(v57 + 14) = v53;
      v55 = v58;
      _os_log_impl(&dword_1DAD61000, v58, v70, "[%{public}s] environment changed: %{public}s", v54, 0x16u);
      v56 = v59;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v56, -1, -1);
      v31 = v69;
      MEMORY[0x1E127F100](v54, -1, -1);
    }

    else
    {

      v52 = *(v32 + 8);
      v45 = v62;
      v52(v36, v62);
      v52(v71, v45);
    }

    LOBYTE(v73[0]) = 6;
    sub_1DAD8EC1C(v73);

    v52(v63, v45);
    return (v52)(v31, v45);
  }

  return result;
}

BOOL sub_1DADC4E4C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = [a2 contentType];
  v13 = *(a3 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  if (v12 == 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  v16 = v12 == 2;
  swift_beginAccess();
  sub_1DAD6495C(v13 + v14, v15, &unk_1ECC07D30, &unk_1DAED57E0);
  v17 = swift_getEnumCaseMultiPayload() == v16;
  sub_1DAD64398(v15, &unk_1ECC07D30, &unk_1DAED57E0);
  return v17;
}

void sub_1DADC4FB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 56);
  *(v1 + 56) = v2;
  v3 = v2;
}

uint64_t sub_1DADC5000()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAD94D08();
    sub_1DAEA1F7C();
  }

  return result;
}

void sub_1DADC5064()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DAE09A30();
  }
}

uint64_t sub_1DADC50B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DADC50C4();
}

uint64_t sub_1DADC50C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAD648F8(result + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel, v2);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v1 = sub_1DAED11AC();
    sub_1DAE3A88C(v1);

    return __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  return result;
}

uint64_t sub_1DADC5180@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAED0DDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 40);
  v9 = *(v1 + 32);
  v10 = v8;
  sub_1DAED0DAC();
  v11 = *(*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService) + 56);
  v12 = *(v11 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v13 = *(v12 + 16);

  os_unfair_lock_lock(v13);
  sub_1DADC52EC(v11, v7, a1);
  os_unfair_lock_unlock(*(v12 + 16));

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DADC52EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_1DAD805B0(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      swift_beginAccess();
      v11 = *(v10 + 16);

      sub_1DAED0C5C();

      v12 = v22;
      if (v22)
      {
        v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
        v14 = *(v12 - 8);
        v15 = *(v14 + 64);
        MEMORY[0x1EEE9AC00](v13);
        v17 = &v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v17);
        sub_1DAD64398(v21, &unk_1ECC08880, &unk_1DAED6F50);
        sub_1DAED1A3C();
        return (*(v14 + 8))(v17, v12);
      }

      sub_1DAD64398(v21, &unk_1ECC08880, &unk_1DAED6F50);
    }

    else
    {
    }
  }

  v19 = sub_1DAECDCEC();
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

uint64_t sub_1DADC551C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v42[-1] - v7;
  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) == 1)
    {
      if (qword_1EE005E88 != -1)
      {
        swift_once();
      }

      v9 = sub_1DAECEDEC();
      __swift_project_value_buffer(v9, qword_1EE0117D8);

      v10 = sub_1DAECEDCC();
      v11 = sub_1DAED203C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v42[0] = v13;
        *v12 = 136446466;
        v14 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v15 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v16 = sub_1DAD6482C(v14, v15, v42);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2082;
        v17 = NSStringFromWRReloadReason(a1);
        v18 = sub_1DAED1CEC();
        v20 = v19;

        v21 = sub_1DAD6482C(v18, v20, v42);

        *(v12 + 14) = v21;
        _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] Reload widget for reason: %{public}s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v13, -1, -1);
        MEMORY[0x1E127F100](v12, -1, -1);
      }

      sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v42);
      v22 = v42[4];
      __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      v23 = *(v22 + 112);
      v24 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
      v23();

      return __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    else if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (qword_1EE005E88 != -1)
      {
        swift_once();
      }

      v25 = sub_1DAECEDEC();
      __swift_project_value_buffer(v25, qword_1EE0117D8);

      v26 = sub_1DAECEDCC();
      v27 = sub_1DAED203C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v42[0] = v29;
        *v28 = 136446466;
        v30 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v31 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v32 = sub_1DAD6482C(v30, v31, v42);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2082;
        v33 = NSStringFromWRReloadReason(a1);
        v34 = sub_1DAED1CEC();
        v36 = v35;

        v37 = sub_1DAD6482C(v34, v36, v42);

        *(v28 + 14) = v37;
        _os_log_impl(&dword_1DAD61000, v26, v27, "[%{public}s] Reload widget PENDED for reason: %{public}s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v29, -1, -1);
        MEMORY[0x1E127F100](v28, -1, -1);
      }

      sub_1DAECDCCC();
      v38 = sub_1DAECDCEC();
      (*(*(v38 - 8) + 56))(v8, 0, 1, v38);
      v39 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
      swift_beginAccess();
      sub_1DAD94438(v8, v2 + v39, &qword_1ECC07CE8, &qword_1DAED6F60);
      result = swift_endAccess();
      v40 = v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason;
      *v40 = a1;
      *(v40 + 8) = 0;
    }
  }

  return result;
}

__CFString *NSStringFromWRReloadReason(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"stale";
  }

  else
  {
    return off_1E85EB048[a1 - 1];
  }
}

char *sub_1DADC5A30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08688, &unk_1DAED6CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1DADC5B84(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ([a1 isValid])
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    __swift_project_value_buffer(v12, qword_1EE011748);
    v13 = a6;
    v14 = a3;
    v15 = a2;

    v16 = sub_1DAECEDCC();
    v17 = sub_1DAED203C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v18 = 136446722;
      v19 = *&v15[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v19)
      {
        v20 = (v19 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v22 = *v20;
        v21 = v20[1];
      }

      else
      {
        v33 = v13;
        v23 = v14;
        v22 = sub_1DAD8CE78(v23);
        v21 = v24;

        v13 = v33;
      }

      v25 = sub_1DAD6482C(v22, v21, &v36);

      *(v18 + 4) = v25;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1DAD6482C(a4, a5, &v36);
      *(v18 + 22) = 2082;
      if (a6)
      {
        v26 = [v13 description];
        v27 = sub_1DAED1CEC();
        v29 = v28;
      }

      else
      {
        v29 = 0x80000001DAEE0EB0;
        v27 = 0xD000000000000012;
      }

      v30 = sub_1DAD6482C(v27, v29, &v36);

      *(v18 + 24) = v30;
      _os_log_impl(&dword_1DAD61000, v16, v17, "[%{public}s] Response to content confirmation action %{public}s: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v34, -1, -1);
      MEMORY[0x1E127F100](v18, -1, -1);
    }

    [a1 setNullificationHandler_];
    if (a6)
    {
      v31 = v13;
      v32 = sub_1DAECDB0C();
    }

    else
    {
      v32 = 0;
    }

    v35 = [objc_allocWithZone(MEMORY[0x1E698E600]) initWithInfo:0 error:v32];

    [a1 sendResponse_];
  }
}

uint64_t sub_1DADC5EC0(void *a1, uint64_t a2, uint64_t a3, char *a4, SEL *a5)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v9 = sub_1DAECEDEC();
  __swift_project_value_buffer(v9, qword_1EE0117F0);
  v10 = a1;
  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED200C();

  v27 = a2;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 138543618;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2082;
    v15 = v10;
    v16 = NSStringFromWRReloadReason(a2);
    format = a4;
    v17 = sub_1DAED1CEC();
    v18 = a5;
    v20 = v19;

    v21 = sub_1DAD6482C(v17, v20, &v28);
    a5 = v18;

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1DAD61000, v11, v12, format, v13, 0x16u);
    sub_1DAD64398(v14, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E127F100](v26, -1, -1);
    MEMORY[0x1E127F100](v13, -1, -1);
  }

  result = sub_1DAD6F45C();
  if (result)
  {
    v23 = result;
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    [v23 *a5];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DADC6160(void *a1, uint64_t a2, char a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  *(v8 + 40) = a4;
  v12[4] = sub_1DAE0C9A0;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAD751C0;
  v12[3] = &block_descriptor_138;
  v9 = _Block_copy(v12);
  v10 = a1;
  v11 = a4;

  BSRunLoopPerformAfterCACommit();
  _Block_release(v9);
}

uint64_t sub_1DADC62DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DADC63C0(void *a1)
{
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v43 = a1;
    v5 = [v4 nullableWidget];
    if (v5)
    {

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v6 = sub_1DAECEDEC();
      __swift_project_value_buffer(v6, qword_1EE011748);
      v7 = v43;
      v8 = v1;
      v9 = sub_1DAECEDCC();
      v10 = sub_1DAED203C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v44 = v12;
        *v11 = 136446210;
        v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v13)
        {
          v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v16 = *v14;
          v15 = v14[1];
        }

        else
        {
          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = v17;
            v19 = v7;
            v20 = sub_1DAD8CE78(v18);
          }

          else
          {
            v22 = [v7 _FBSScene];
            v19 = [v22 identifier];

            v20 = sub_1DAED1CEC();
          }

          v16 = v20;
          v15 = v21;
        }

        v23 = sub_1DAD6482C(v16, v15, &v44);

        *(v11 + 4) = v23;
        _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Did background", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1E127F100](v12, -1, -1);
        MEMORY[0x1E127F100](v11, -1, -1);
      }

      v24 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene];
      *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene] = 0;

      v25 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
      v26 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v26)
      {
        v27 = *(v26 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
        if (v27)
        {
          v28 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
          swift_beginAccess();
          v29 = v27[v28];
          v27[v28] = 0;
          v30 = v27;
          sub_1DADC68E4(v29);
        }
      }

      if (*&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter])
      {
        v31 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter];

        sub_1DADC6E74(v4, 0x756F72676B636162, 0xEC0000006465646ELL);
      }

      sub_1DAD83970(v4);
      v32 = *&v8[v25];
      if (v32)
      {
        if (*&v32[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction])
        {
          *&v32[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction] = 0;
          v33 = v32;
        }

        else
        {
          v34 = v32;
        }

        if (qword_1EE008AC0 != -1)
        {
          swift_once();
        }

        v35 = qword_1EE008AD0;
        v36 = [*&v32[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene] widget];
        v37 = [v36 extensionIdentity];

        v38 = *MEMORY[0x1E69941B8];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
        v39 = sub_1DAECE26C();
        v41 = v40;
        swift_endAccess();

        LOBYTE(v39) = sub_1DADB410C(v39, v41, v35);

        if (v39)
        {
          sub_1DAE09410();
        }

        else
        {
          v42 = sub_1DAED112C();
          MEMORY[0x1EEE9AC00](v42);
          sub_1DAED110C();
        }
      }

      sub_1DAD6B5EC(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1DADC68E4(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECFC7C();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - v8;
  v10 = sub_1DAECEDEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - v16;
  v18 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  result = swift_beginAccess();
  v20 = v1[v18];
  if (v20 != v3)
  {
    v53 = v4;
    v21 = *&v2[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
    v22 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
    swift_beginAccess();
    v23 = *(v21 + v22);
    *(v21 + v22) = v20;
    sub_1DAD9B9DC(v23);
    v24 = *(v11 + 16);
    v25 = v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
    if (v2[v18] == 1)
    {
      v24(v17, v25, v10);
      v26 = v2;
      v27 = sub_1DAECEDCC();
      v28 = sub_1DAED200C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v56[0] = v30;
        *v29 = 136446210;
        v31 = v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier;
        v52 = v26;
        v33 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v32 = *(v31 + 8);

        v34 = sub_1DAD6482C(v33, v32, v56);
        v26 = v52;

        *(v29 + 4) = v34;
        _os_log_impl(&dword_1DAD61000, v27, v28, "[%{public}s] Enabling RenderBox default update interval (if necessary) because foreground.", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x1E127F100](v30, -1, -1);
        MEMORY[0x1E127F100](v29, -1, -1);
      }

      (*(v11 + 8))(v17, v10);
      v35 = v53;
      v36 = &v26[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController];
      swift_beginAccess();
    }

    else
    {
      v24(v15, v25, v10);
      v37 = v2;
      v38 = sub_1DAECEDCC();
      v39 = sub_1DAED200C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v52 = v37;
        v42 = v41;
        v56[0] = v41;
        *v40 = 136446210;
        v43 = v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier;
        v45 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v44 = *(v43 + 8);

        v46 = sub_1DAD6482C(v45, v44, v56);

        *(v40 + 4) = v46;
        _os_log_impl(&dword_1DAD61000, v38, v39, "[%{public}s] Disabling RenderBox update interval (if necessary) because background.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        v47 = v42;
        v37 = v52;
        MEMORY[0x1E127F100](v47, -1, -1);
        MEMORY[0x1E127F100](v40, -1, -1);
      }

      (*(v11 + 8))(v15, v10);
      v35 = v53;
      v36 = &v37[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController];
      swift_beginAccess();
    }

    v48 = *v36;
    type metadata accessor for SecureHostingController();
    sub_1DAD730A4(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
    v49 = v48;
    sub_1DAECF9CC();
    sub_1DAECFBDC();
    v50 = v55;
    (*(v55 + 16))(v54, v9, v35);
    sub_1DAECF9DC();

    return (*(v50 + 8))(v9, v35);
  }

  return result;
}

void sub_1DADC6E74(void *a1, uint64_t a2, unint64_t a3)
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  v7 = *(v3 + 16);

  v8 = sub_1DAD8DA44(a1, v7);

  if (v8)
  {
    if ([*(v3 + 24) containsObject_] || (objc_msgSend(*(v3 + 32), sel_containsObject_, a1) & 1) != 0)
    {
      swift_beginAccess();
      v9 = v3;
      v10 = sub_1DADC73EC(a1);
      swift_endAccess();

      [*(v9 + 24) removeObject_];
      sub_1DADC75CC(a1, a2, a3);
      sub_1DAD7C75C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1DADC6F88(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v12 = sub_1DAECEDEC();
  __swift_project_value_buffer(v12, qword_1EE011748);
  v13 = a2;
  v14 = a1;
  v15 = sub_1DAECEDCC();
  v16 = sub_1DAED203C();

  if (os_log_type_enabled(v15, v16))
  {
    v34 = a3;
    v35 = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    v19 = *&v14[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v19)
    {
      v20 = (v19 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v21 = *v20;
      v22 = v20[1];
    }

    else
    {
      v33 = a4;
      v23 = v13;
      v21 = sub_1DAD8CE78(v23);
      v22 = v24;

      a4 = v33;
    }

    v25 = sub_1DAD6482C(v21, v22, aBlock);

    *(v17 + 4) = v25;
    _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] Waiting on synchronized commit", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E127F100](v18, -1, -1);
    MEMORY[0x1E127F100](v17, -1, -1);

    a3 = v34;
    a5 = v35;
  }

  else
  {
  }

  v26 = objc_opt_self();
  v27 = swift_allocObject();
  v27[2] = a3;
  v27[3] = v14;
  v27[4] = v13;
  v27[5] = a4;
  v27[6] = a5;
  v27[7] = a6;
  aBlock[4] = sub_1DADC5B24;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_167;
  v28 = _Block_copy(aBlock);
  v29 = a6;
  v30 = v13;
  v31 = v14;
  v32 = a3;

  [v26 bs:v28 performAfterSynchronizedCommit:?];
  _Block_release(v28);
}

uint64_t sub_1DADC7240(void *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *v5;

    v13 = a1;
    v14 = sub_1DAED24CC();

    if (v14)
    {
      v15 = sub_1DAEC52C8(v11, v13, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v18 = v5;
  sub_1DAD674D4(0, a2, a3);
  v19 = *(v7 + 40);
  v20 = sub_1DAED227C();
  v21 = -1 << *(v7 + 32);
  v22 = v20 & ~v21;
  if (((*(v7 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    return 0;
  }

  v23 = ~v21;
  while (1)
  {
    v24 = *(*(v7 + 48) + 8 * v22);
    v25 = sub_1DAED228C();

    if (v25)
    {
      break;
    }

    v22 = (v22 + 1) & v23;
    if (((*(v7 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return 0;
    }
  }

  v26 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v18;
  v30 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v28 = v30;
  }

  v29 = *(*(v28 + 48) + 8 * v22);
  sub_1DADC7428(v22);
  result = v29;
  *v18 = v30;
  return result;
}

unint64_t sub_1DADC7428(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DAED23EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1DAED227C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1DADC75CC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if ([*(v4 + 32) containsObject_])
  {
    if (qword_1EE00AC50 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE011B58);

    v9 = a1;
    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v39[0] = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(a2, a3, v39);
      *(v12 + 12) = 2082;
      v14 = [v9 _FBSScene];
      v15 = [v14 identifier];

      v16 = sub_1DAED1CEC();
      v18 = v17;

      v19 = sub_1DAD6482C(v16, v18, v39);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1DAD61000, v10, v11, "Removed foreground content for reason %{public}s: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    [*(v4 + 32) removeObject_];
    swift_beginAccess();
    sub_1DADC7B44(0, 1, v9);
    swift_endAccess();
    if (sub_1DAD8DB4C())
    {
      if ([*(v4 + 24) lastObject])
      {
        sub_1DAED238C();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v39[0] = v37;
      v39[1] = v38;
      if (*(&v38 + 1))
      {
        sub_1DAD674D4(0, &qword_1EE005628, 0x1E6994548);
        if (swift_dynamicCast())
        {
          v20 = v36;
          v21 = sub_1DAECEDCC();
          v22 = sub_1DAED203C();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            *&v39[0] = v24;
            *v23 = 136446210;
            v25 = [v20 _FBSScene];
            v26 = [v25 identifier];

            v27 = sub_1DAED1CEC();
            v29 = v28;

            v30 = sub_1DAD6482C(v27, v29, v39);

            *(v23 + 4) = v30;
            _os_log_impl(&dword_1DAD61000, v21, v22, "Making content available for %{public}s", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v24);
            MEMORY[0x1E127F100](v24, -1, -1);
            MEMORY[0x1E127F100](v23, -1, -1);
          }

          [*(v4 + 24) removeObject_];
          v31 = sub_1DAD7CD98(v20);
          v32 = qword_1EE005478;
          v33 = v20;
          if (v32 != -1)
          {
            swift_once();
          }

          v34 = qword_1EE005480;
          v35 = [v34 objectForKey_];

          if (v35)
          {
            swift_getObjectType();
            if (swift_conformsToProtocol2())
            {
              sub_1DADE2530(v31);
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      else
      {
        sub_1DAD64398(v39, &qword_1ECC0A3A0, &qword_1DAEDFE30);
      }
    }
  }
}

void sub_1DADC7AC8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1DADC7DDC(a1);
  v3 = *(v2 + 16);

  os_unfair_lock_unlock(v3);
}

void sub_1DADC7B44(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v5 = *v3;
    v6 = sub_1DAD80EFC(a3);
    if (v7)
    {
      v8 = v6;
      v9 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DADDB87C();
        v11 = v16;
      }

      sub_1DADC7C48(v8, v11);
      *v4 = v11;
    }

    else
    {
    }
  }

  else
  {
    v13 = *v3;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DAD80D9C(a3, v14, *&a1);

    *v3 = v17;
  }
}

void sub_1DADC7C48(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1DAED227C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1DADC7DDC(uint64_t a1)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0117F0);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Now allowing environment mismatch requests.", v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_hasReceivedInitialEnvironment) = 1;
}

uint64_t sub_1DADC7F00(uint64_t a1, void *a2)
{
  v24 = a2;
  v27 = sub_1DAED09DC();
  v29 = *(v27 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1DAED0A3C();
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAECE20C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  v17 = v24;
  *(v16 + v15) = v24;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
  aBlock[4] = sub_1DADC85AC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_157_0;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  v20 = v2;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v21 = v27;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v9, v6, v18);
  _Block_release(v18);
  (*(v29 + 8))(v6, v21);
  (*(v26 + 8))(v9, v28);
}

uint64_t sub_1DADC82CC()
{
  v1 = sub_1DAECE20C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADC83A0(char *a1, void *a2)
{
  v4 = sub_1DAED0A3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration];
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    *&a1[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration] = v11;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v11;
    v13[4] = a1;

    a1;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    sub_1DADE4448(a2, v9, sub_1DADE6488, v13);

    (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_1DADC8534()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADC856C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

void sub_1DADC85AC()
{
  v1 = *(sub_1DAECE20C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1DADC8644(v0 + v2, v4, v5);
}

void sub_1DADC8644(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1DAECE20C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v13 = sub_1DAECEDEC();
  __swift_project_value_buffer(v13, qword_1EE0117F0);
  v44 = *(v7 + 16);
  v44(v12, a1, v6);
  v14 = a2;
  v15 = v6;
  v16 = sub_1DAECEDCC();
  v17 = sub_1DAED200C();

  v18 = os_log_type_enabled(v16, v17);
  v46 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v42 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v43 = a3;
    v22 = v21;
    v41 = swift_slowAlloc();
    v47 = v41;
    *v20 = 136446466;
    sub_1DAD649C4(&qword_1ECC083B8, 255, MEMORY[0x1E6993FA8]);
    v23 = sub_1DAED287C();
    v24 = v7;
    v26 = v25;
    (*(v24 + 8))(v12, v15);
    v27 = sub_1DAD6482C(v23, v26, &v47);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2114;
    *(v20 + 14) = v14;
    *v22 = v14;
    v28 = v14;
    _os_log_impl(&dword_1DAD61000, v16, v17, "Set widget task priority %{public}s for session: %{public}@", v20, 0x16u);
    sub_1DAD64398(v22, &qword_1ECC07CF0, &qword_1DAED57A0);
    v29 = v22;
    a3 = v43;
    MEMORY[0x1E127F100](v29, -1, -1);
    v30 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E127F100](v30, -1, -1);
    v31 = v20;
    a1 = v42;
    MEMORY[0x1E127F100](v31, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v15);
  }

  v32 = v15;
  v33 = *(a3 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v33 + 16));
  v34 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v35 = *(a3 + v34);

  v36 = sub_1DADB7CF0(v14, v35);

  if (v36)
  {
    v37 = v45;
    v44(v45, a1, v32);
    v38 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
    swift_beginAccess();
    (*(v46 + 40))(v36 + v38, v37, v32);
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v33 + 16));
  v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v40 = sub_1DAD6F45C();
  if (v40)
  {
    [v40 setWidgetTaskPriority:v39 forSession:v14];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1DADC8A98@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v111 = a1;
  v110 = sub_1DAECED2C();
  v114 = *(v110 - 8);
  v3 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v113 = &v94[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v94[-v9];
  v112 = sub_1DAED18CC();
  v108 = *(v112 - 8);
  v10 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v106 = &v94[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = sub_1DAECF32C();
  v104 = *(v105 - 1);
  v12 = *(v104 + 64);
  v13 = MEMORY[0x1EEE9AC00](v105);
  v101 = &v94[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v94[-v15];
  v103 = sub_1DAECF8EC();
  v102 = *(v103 - 8);
  v16 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v94[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v97 = &v94[-v20];
  v116 = sub_1DAECF0AC();
  v21 = *(v116 - 1);
  v22 = *(v21 + 8);
  MEMORY[0x1EEE9AC00](v116);
  v24 = &v94[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1DAED0DDC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v94[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = *&v1[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
  v99 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(&v30[OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource], &v117);
  v31 = v118;
  v32 = v119;
  __swift_project_boxed_opaque_existential_1(&v117, v118);
  v33 = (*(v32 + 16))(v31, v32);
  sub_1DAED0C3C();

  v34 = sub_1DAED0DBC();
  (*(v26 + 8))(v29, v25);
  v35 = v30;
  __swift_destroy_boxed_opaque_existential_1Tm(&v117);
  v36 = [v34 family];

  if (sub_1DAE9BAB0(v36))
  {
    result = [v2 view];
    if (result)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v38 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v39 = *&v2[v38];
  type metadata accessor for SecureHostingController();
  sub_1DAD900A4(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
  v40 = v39;
  v41 = sub_1DAECF9AC();

  if (!v41)
  {
LABEL_8:
    if (qword_1EE005E48 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  objc_opt_self();
  v115 = swift_dynamicCastObjCClass();
  if (!v115)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  for (i = 1; ; i = 0)
  {
    v47 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    swift_beginAccess();
    v48 = &v35[v47];
    v49 = v116;
    (*(v21 + 2))(v24, v48, v116);
    v50 = (*(v21 + 11))(v24, v49);
    v51 = v50 == *MEMORY[0x1E697DBB8];
    v96 = v2;
    if (!v51)
    {
      if (v50 == *MEMORY[0x1E697DBA8])
      {
        v52 = 0;
        goto LABEL_18;
      }

      (*(v21 + 1))(v24, v49);
    }

    v52 = 1;
LABEL_18:
    v53 = [objc_allocWithZone(MEMORY[0x1E6994300]) init];
    [v53 setColorScheme_];
    v54 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
    swift_beginAccess();
    [v53 setTintParameters_];
    v55 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
    swift_beginAccess();
    v56 = v97;
    sub_1DAD6495C(&v35[v55], v97, &qword_1ECC08360, &unk_1DAED6570);
    v57 = sub_1DAECDA5C();
    v58 = *(v57 - 8);
    v59 = 0;
    if ((*(v58 + 48))(v56, 1, v57) != 1)
    {
      v59 = sub_1DAECDA3C();
      (*(v58 + 8))(v56, v57);
    }

    [v53 setIdealizedDateComponents_];

    v60 = v98;
    sub_1DADA4A88(v98);
    v61 = v100;
    sub_1DAECF46C();
    v116 = v53;
    v97 = v35;
    v62 = *(v102 + 8);
    v63 = v103;
    v62(v60, v103);
    v64 = v101;
    sub_1DAECF31C();
    sub_1DAD900A4(&qword_1EE00BE58, MEMORY[0x1E697EA58]);
    v65 = v105;
    v66 = sub_1DAED23AC();
    v67 = *(v104 + 8);
    v67(v64, v65);
    v67(v61, v65);
    v68 = v97;
    sub_1DADA4A88(v60);
    LOBYTE(v67) = sub_1DAECF60C();
    v62(v60, v63);
    v69 = v67 & 1u | ((v66 & 1) == 0);
    v70 = v116;
    [v116 setAllowsPrivacySensitiveContent_];
    [v70 setUserWantsWidgetDataWhenPasscodeLocked_];
    v71 = [objc_allocWithZone(MEMORY[0x1E69943E0]) initWithWidget:*&v96[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget] metrics:*&v96[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_metrics]];
    v72 = sub_1DADC9838();
    v74 = v73;
    sub_1DAD648F8(&v68[v99], &v117);
    v75 = v118;
    v76 = v119;
    __swift_project_boxed_opaque_existential_1(&v117, v118);
    v77 = (*(v76 + 16))(v75, v76);
    v78 = v106;
    sub_1DAED0B9C();

    __swift_destroy_boxed_opaque_existential_1Tm(&v117);
    v79 = v114;
    v24 = v107;
    v80 = v110;
    (*(v114 + 56))(v107, 1, 1, v110);
    v21 = v111;
    v105 = v71;
    v81 = v116;
    *v111 = v71;
    *(v21 + 1) = v81;
    *(v21 + 2) = v72;
    *(v21 + 3) = v74;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
    v82 = v108;
    v83 = v112;
    (*(v108 + 16))(&v21[v116[9]], v78, v112);
    v84 = v113;
    sub_1DAD6495C(v24, v113, &qword_1ECC08330, &unk_1DAED6540);
    v35 = (v79 + 48);
    v85 = *(v79 + 48);
    if (v85(v84, 1, v80) != 1)
    {
      sub_1DAD64398(v24, &qword_1ECC08330, &unk_1DAED6540);
      (*(v82 + 8))(v78, v83);
      v88 = v109;
      (*(v79 + 32))(v109, v84, v80);
LABEL_27:
      v92 = v116;
      result = (*(v79 + 32))(&v21[v116[10]], v88, v80);
      v93 = &v21[v92[11]];
      *v93 = v115;
      v93[8] = i;
      return result;
    }

    sub_1DAED298C();
    v2 = v115;
    v86 = v105;
    sub_1DAED229C();

    v87 = sub_1DAED296C();
    v88 = v109;
    if ((v87 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v89 = __OFSUB__(0, v87);
    result = -v87;
    if (v89)
    {
      break;
    }

    if ((result & 0x8000000000000000) == 0)
    {
LABEL_24:
      sub_1DAECED3C();

      sub_1DAD64398(v24, &qword_1ECC08330, &unk_1DAED6540);
      (*(v82 + 8))(v78, v112);
      v90 = v113;
      v91 = v85(v113, 1, v80);
      v79 = v114;
      if (v91 != 1)
      {
        sub_1DAD64398(v90, &qword_1ECC08330, &unk_1DAED6540);
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_29:
    swift_once();
LABEL_9:
    v42 = sub_1DAECEDEC();
    __swift_project_value_buffer(v42, qword_1EE011748);
    v43 = sub_1DAECEDCC();
    v44 = sub_1DAED202C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DAD61000, v43, v44, "WidgetContentViewController was not using RenderBox rendering and was not transparent. Contact Perf this is not stable long term.", v45, 2u);
      MEMORY[0x1E127F100](v45, -1, -1);
    }

    result = [v2 view];
    if (!result)
    {
      goto LABEL_31;
    }

LABEL_12:
    v46 = result;
    v115 = [result layer];
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DADC9838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v38 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  sub_1DAD648F8(v14 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v40);
  v15 = v41;
  v16 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v17 = (*(v16 + 16))(v15, v16);
  sub_1DAED0C5C();

  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  if (v44)
  {
    v38 = v14;
    v39 = v5;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    sub_1DAED1A0C();
    v18 = sub_1DAECDCEC();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v13, 0, 1, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v20 = *(v19 + 48);
    if (v20(v13, 1, v18) == 1)
    {
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      sub_1DAD6495C(v13, v11, &qword_1ECC07CE8, &qword_1DAED6F60);
      result = v20(v11, 1, v18);
      if (result == 1)
      {
        goto LABEL_18;
      }

      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v24 = qword_1EE00A708;
      v25 = sub_1DAECDC5C();
      v26 = [v24 stringFromDate_];

      v22 = sub_1DAED1CEC();
      v21 = v27;

      (*(v19 + 8))(v11, v18);
    }

    v5 = v39;
  }

  else
  {
    sub_1DAD64398(v43, &unk_1ECC08880, &unk_1DAED6F50);
    v18 = sub_1DAECDCEC();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    v21 = 0xE300000000000000;
    v22 = 7104878;
  }

  sub_1DADC9D74(v8);
  sub_1DAECDCEC();
  v28 = *(v18 - 8);
  v29 = *(v28 + 48);
  if (v29(v8, 1, v18) == 1)
  {
    v30 = 0xE300000000000000;
    v31 = 7104878;
LABEL_16:
    v43[0] = v22;
    v43[1] = v21;
    MEMORY[0x1E127DA50](45, 0xE100000000000000);
    MEMORY[0x1E127DA50](v31, v30);

    v37 = v43[0];
    sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD64398(v13, &qword_1ECC07CE8, &qword_1DAED6F60);
    return v37;
  }

  sub_1DAD6495C(v8, v5, &qword_1ECC07CE8, &qword_1DAED6F60);
  result = (v29)(v5, 1, v18);
  if (result != 1)
  {
    if (qword_1EE00A700 != -1)
    {
      swift_once();
    }

    v32 = qword_1EE00A708;
    v33 = sub_1DAECDC5C();
    v34 = [v32 stringFromDate_];

    v31 = sub_1DAED1CEC();
    v35 = v5;
    v30 = v36;

    (*(v28 + 8))(v35, v18);
    goto LABEL_16;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DADC9D74@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1DAED19AC();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  v50 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v14 = *(*(v50 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v50);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - v22;
  v24 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v24, v23, &unk_1ECC07D30, &unk_1DAED57E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = sub_1DAECDCEC();
      (*(*(v26 - 8) + 56))(v54, 1, 1, v26);
      return sub_1DAD64398(v23, &unk_1ECC07D30, &unk_1DAED57E0);
    }

    else
    {
      sub_1DAD64398(v23, &unk_1ECC07D30, &unk_1DAED57E0);
      v35 = sub_1DAECDCEC();
      return (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
    }
  }

  else
  {
    v28 = v51;
    v29 = v52;
    v30 = v11;
    v31 = v53;
    sub_1DADB62CC(v23, v19, type metadata accessor for DefaultWidgetLiveViewEntry);
    sub_1DADB6264(v19, v17, type metadata accessor for DefaultWidgetLiveViewEntry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DADB62CC(v17, v28, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v32 = v28 + *(v31 + 20);
      v33 = v54;
      sub_1DAED195C();
      sub_1DADB6334(v28, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DADB6334(v19, type metadata accessor for DefaultWidgetLiveViewEntry);
      v34 = sub_1DAECDCEC();
      return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    }

    else
    {
      v36 = *v17;

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
      v37 = v17;
      v38 = v13;
      sub_1DAD7C48C(v17 + *(v51 + 16), v13, &qword_1ECC088D8, &qword_1DAED72D0);
      sub_1DAD6495C(v13, v11, &qword_1ECC088D8, &qword_1DAED72D0);
      v39 = (*(v29 + 48))(v11, 1, v31);
      v40 = v54;
      if (v39 == 1)
      {
        sub_1DAD64398(v38, &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v19, type metadata accessor for DefaultWidgetLiveViewEntry);
        sub_1DAD64398(v11, &qword_1ECC088D8, &qword_1DAED72D0);
        v41 = 1;
      }

      else
      {
        v43 = v47;
        v42 = v48;
        v44 = v49;
        (*(v47 + 16))(v48, v30 + *(v31 + 20), v49);
        sub_1DADB6334(v30, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        sub_1DAED195C();
        (*(v43 + 8))(v42, v44);
        sub_1DAD64398(v38, &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v19, type metadata accessor for DefaultWidgetLiveViewEntry);
        v41 = 0;
      }

      v45 = sub_1DAECDCEC();
      (*(*(v45 - 8) + 56))(v40, v41, 1, v45);
      return sub_1DADB6334(v37 + *(v51 + 12), type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    }
  }
}

uint64_t sub_1DADCA3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADCA440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v26 = a4;
  v29 = a2;
  v24 = *v4;
  v7 = sub_1DAED09DC();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v23 - v14;
  v27 = v5[7];
  sub_1DAD6495C(a1, &v23 - v14, &qword_1ECC08338, &unk_1DAEDB980);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  sub_1DAD7C48C(v15, v18 + v16, &qword_1ECC08338, &unk_1DAEDB980);
  v19 = (v18 + v17);
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_1DADCA96C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_13;
  v21 = _Block_copy(aBlock);
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DAD8E24C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DADCA908();
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v29, v10, v21);
  _Block_release(v21);
  (*(v28 + 8))(v10, v7);
}

uint64_t sub_1DADCA770()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;

  v6 = *(v5 + 24);

  v7 = v1[11];
  v8 = sub_1DAED18CC();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[12];
  v10 = sub_1DAECED2C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  v11 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1DADCA8EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DADCA908()
{
  result = qword_1EE00AAA0;
  if (!qword_1EE00AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC08340, &unk_1DAED6550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AAA0);
  }

  return result;
}

void sub_1DADCA96C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_1DADCAA18(v5, v0 + v2, v8, v9, v7);
}

void sub_1DADCAA18(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v121 = a5;
  v136 = a3;
  v137 = a4;
  v140 = a2;
  v116 = sub_1DAED09DC();
  v115 = *(v116 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v108[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_1DAED0A3C();
  v112 = *(v114 - 8);
  v8 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v111 = &v108[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09190, &qword_1DAED8D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v108[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v125 = &v108[-v15];
  v126 = sub_1DAECDBFC();
  v138 = *(v126 - 8);
  v16 = *(v138 + 64);
  v17 = MEMORY[0x1EEE9AC00](v126);
  v122 = &v108[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v108[-v19];
  v20 = sub_1DAED18CC();
  v133 = *(v20 - 8);
  v134 = v20;
  v21 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v132 = &v108[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v117 = *(v23 - 1);
  v24 = *(v117 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v123 = &v108[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v108[-v27];
  v29 = sub_1DAECED2C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v128 = &v108[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v108[-v34];
  v36 = sub_1DAECED6C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v108[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_signposter;
  swift_beginAccess();
  v42 = *(v37 + 16);
  v139 = a1;
  v129 = v36;
  v42(v40, a1 + v41, v36);
  v135 = v23;
  v43 = v23[10];
  v130 = v30;
  v44 = *(v30 + 16);
  v45 = v140;
  v131 = v29;
  v127 = v44;
  v44(v35, (v140 + v43), v29);
  sub_1DAD6495C(v45, v28, &qword_1ECC08338, &unk_1DAEDB980);
  v46 = sub_1DAECED5C();
  v47 = sub_1DAED21AC();
  if (sub_1DAED230C())
  {
    v48 = swift_slowAlloc();
    v109 = v47;
    v49 = v48;
    v110 = swift_slowAlloc();
    aBlock = v110;
    *v49 = 136446210;
    v50 = *v28;
    v51 = [*v28 widget];
    v52 = [v50 metrics];
    v53 = [v51 _loggingIdentifierWithMetrics_];

    v54 = sub_1DAED1CEC();
    v56 = v55;

    v57 = v138;
    sub_1DAD64398(v28, &qword_1ECC08338, &unk_1DAEDB980);
    v58 = sub_1DAD6482C(v54, v56, &aBlock);

    *(v49 + 4) = v58;
    v59 = sub_1DAECED0C();
    _os_signpost_emit_with_name_impl(&dword_1DAD61000, v46, v109, v59, "LayerSnapshotting", "<key>=%{public}s", v49, 0xCu);
    v60 = v110;
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    MEMORY[0x1E127F100](v60, -1, -1);
    MEMORY[0x1E127F100](v49, -1, -1);
  }

  else
  {

    sub_1DAD64398(v28, &qword_1ECC08338, &unk_1DAEDB980);
    v57 = v138;
  }

  v61 = v131;
  v127(v128, v35, v131);
  v62 = sub_1DAECEDAC();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = sub_1DAECED9C();
  (*(v130 + 8))(v35, v61);
  (*(v37 + 8))(v40, v129);
  v66 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  v67 = v139;
  swift_beginAccess();
  sub_1DAD648F8(v67 + v66, &aBlock);
  __swift_project_boxed_opaque_existential_1(&aBlock, v144);
  v68 = v132;
  sub_1DAED127C();
  v69 = v135;
  v70 = v135[9];
  sub_1DAD8E24C(&qword_1EE00AAF0, MEMORY[0x1E69859A8]);
  v71 = v140;
  v72 = v134;
  LOBYTE(v70) = sub_1DAED1C9C();
  (*(v133 + 8))(v68, v72);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  if (v70)
  {
    v73 = 0x80000001DAEE3C80;
    v74 = 0xD00000000000001ELL;
LABEL_8:
    aBlock = v74;
    v142 = v73;
    LOBYTE(v143) = 2;
    sub_1DAE50204(&aBlock, v67, v65, v136, v137);

    sub_1DADE62C4(aBlock, v142, v143);
    return;
  }

  v75 = v125;
  sub_1DAE4F710(v71, v125);
  v76 = v126;
  if ((*(v57 + 48))(v75, 1, v126) == 1)
  {
    sub_1DAD64398(v75, &unk_1ECC09EC0, &qword_1DAED7970);
    v73 = 0x80000001DAEE3C40;
    v74 = 0xD000000000000019;
    goto LABEL_8;
  }

  v77 = v124;
  v134 = *(v57 + 32);
  v134(v124, v75, v76);
  v78 = sub_1DAE4FAF8(*v71);
  if (v78)
  {
    v79 = v78;
    v132 = v78;
    v133 = v65;
    v80 = v71 + v69[11];
    v81 = *v80;
    if (v80[8])
    {
      sub_1DAD84C40();
      v131 = v81;
      v135 = sub_1DAED20EC();
      sub_1DAD6495C(v71, v123, &qword_1ECC08338, &unk_1DAEDB980);
      (*(v57 + 16))(v122, v77, v76);
      v82 = (*(v117 + 80) + 24) & ~*(v117 + 80);
      v140 = (v118 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = (*(v57 + 80) + v140 + 8) & ~*(v57 + 80);
      v84 = (v119 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
      v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
      v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
      v87 = swift_allocObject();
      *(v87 + 16) = v67;
      sub_1DAD7C48C(v123, v87 + v82, &qword_1ECC08338, &unk_1DAEDB980);
      v88 = v131;
      *(v87 + v140) = v131;
      v134(v87 + v83, v122, v76);
      v89 = v133;
      *(v87 + v84) = v132;
      *(v87 + v85) = v89;
      v90 = (v87 + v86);
      v91 = v137;
      *v90 = v136;
      v90[1] = v91;
      *(v87 + ((v86 + 23) & 0xFFFFFFFFFFFFFFF8)) = v121;
      v145 = sub_1DAE50820;
      v146 = v87;
      aBlock = MEMORY[0x1E69E9820];
      v142 = 1107296256;
      v143 = sub_1DAD751C0;
      v144 = &block_descriptor_44;
      v92 = _Block_copy(&aBlock);
      v93 = v88;

      v94 = v111;
      _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1DAD8E24C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
      sub_1DADCA908();
      v95 = v113;
      v96 = v116;
      sub_1DAED23CC();
      v97 = v135;
      MEMORY[0x1E127DD70](0, v94, v95, v92);
      _Block_release(v92);

      (*(v115 + 8))(v95, v96);
      (*(v112 + 8))(v94, v114);
      (*(v138 + 8))(v124, v126);
    }

    else
    {
      v130 = *(v67 + 16);
      v135 = v81;
      sub_1DAE4EC30(v135, &qword_1ECC09190, &qword_1DAED8D30, v120);
      v131 = *(v67 + 56);
      sub_1DAD6495C(v71, v123, &qword_1ECC08338, &unk_1DAEDB980);
      v98 = v122;
      (*(v57 + 16))(v122, v77, v76);
      v99 = (*(v117 + 80) + 56) & ~*(v117 + 80);
      v100 = (v118 + *(v57 + 80) + v99) & ~*(v57 + 80);
      v101 = (v119 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
      v102 = swift_allocObject();
      v102[2] = v79;
      v102[3] = v67;
      v103 = v136;
      v104 = v137;
      v102[4] = v133;
      v102[5] = v103;
      v102[6] = v104;
      sub_1DAD7C48C(v123, v102 + v99, &qword_1ECC08338, &unk_1DAEDB980);
      v134(v102 + v100, v98, v76);
      *(v102 + v101) = v121;
      v105 = *(**(v130 + 16) + 104);

      v106 = v120;
      v107 = v124;
      v105(v120, v124, v131, sub_1DAE50960, v102);

      sub_1DAD64398(v106, &qword_1ECC09190, &qword_1DAED8D30);
      (*(v57 + 8))(v107, v76);
    }
  }

  else
  {
    aBlock = 0xD00000000000001FLL;
    v142 = 0x80000001DAEE3C60;
    LOBYTE(v143) = 2;
    sub_1DAE50204(&aBlock, v67, v65, v136, v137);

    sub_1DADE62C4(aBlock, v142, v143);
    (*(v57 + 8))(v77, v76);
  }
}

uint64_t sub_1DADCB9CC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = sub_1DAECDBFC();
  v4 = *(v19 - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = v0 + v2;

  v10 = *(v9 + 24);

  v11 = v1[11];
  v12 = sub_1DAED18CC();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = v1[12];
  v14 = sub_1DAECED2C();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);

  (*(v4 + 8))(v0 + v5, v19);
  v15 = *(v0 + v6);

  v16 = *(v0 + v7);

  v17 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DADCBC1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DADCBC3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_1DADCBC64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1DADCBCB0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1DADCBD58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DADCBD84@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1DADCBE50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DADCBEC0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1DADCBE90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DAED1CEC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DADCBEC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1DADCBEF8()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCBF40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCBF7C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCBFCC()
{
  sub_1DADE62C4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1DADCC01C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1DADCC0B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08590, &qword_1DAED6968);
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  sub_1DAECF2AC();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED084C();

  return swift_getWitnessTable();
}

uint64_t sub_1DADCC29C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1DADEC6F8(v2, v3);
}

void sub_1DADCC320(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1DADEC2D0(v2);
}

uint64_t sub_1DADCC3A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DADED060(v4);
}

uint64_t sub_1DADCC418()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCC46C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DADCC4B0()
{
  v1 = sub_1DAECDCEC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1DADCC55C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCC594()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADCC5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DAED182C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DADCC680(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DAED182C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}