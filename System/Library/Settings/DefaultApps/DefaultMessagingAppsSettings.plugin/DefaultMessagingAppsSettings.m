id sub_1E78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextingAppChangeConfirmationSheet.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1EC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  objc_allocWithZone(type metadata accessor for TextingAppChangeConfirmationViewController());
  sub_2868(v1, v2);

  v9 = sub_6C08(v1, v2, v3, v4, v5, v6, v8, v7);
  sub_2820(&qword_20E78, &qword_155F0);
  sub_1456C();
  *&v9[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_confirmationDelegate + 8] = &off_1CEF8;
  swift_unknownObjectWeakAssign();

  return v9;
}

void sub_1FC8(uint64_t a1)
{
  sub_2820(&qword_20E78, &qword_155F0);
  sub_1456C();
  *(a1 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_confirmationDelegate + 8) = &off_1CEF8;
  swift_unknownObjectWeakAssign();
}

id sub_2044@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = type metadata accessor for TextingAppChangeConfirmationSheet.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV28DefaultMessagingAppsSettings33TextingAppChangeConfirmationSheet11Coordinator_completion];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_20F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A14();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_2158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A14();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_21D8()
{
  sub_2A14();
  sub_1454C();
  __break(1u);
}

uint64_t sub_2200(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_13D94(2, 26, 0, 0))
  {
    sub_144DC();

    return sub_143DC();
  }

  else
  {
    sub_1440C();
    swift_getWitnessTable();
    sub_144CC();
    sub_143DC();
    sub_149EC();
    swift_getWitnessTable();
    sub_1440C();
    swift_getWitnessTable();
    sub_144CC();
    return sub_143DC();
  }
}

uint64_t sub_2364(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_13D94(2, 26, 0, 0))
  {
    sub_144DC();
    sub_143DC();
  }

  else
  {
    sub_1440C();
    swift_getWitnessTable();
    sub_144CC();
    sub_143DC();
    sub_149EC();
    swift_getWitnessTable();
    sub_1440C();
    swift_getWitnessTable();
    sub_144CC();
    sub_143DC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t variable initialization expression of DefaultMessagingAppsSettingsProvider.localizedTitle()
{
  v0 = *(*(sub_142FC() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_1483C() - 8) + 64);
  __chkstk_darwin();
  sub_147BC();
  type metadata accessor for DefaultMessagingAppsSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  return sub_1489C();
}

uint64_t variable initialization expression of DefaultMessagingAppsSettingsProvider.localizedNavigationTitle()
{
  v0 = *(*(sub_142FC() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_1483C() - 8) + 64);
  __chkstk_darwin();
  sub_147BC();
  type metadata accessor for DefaultMessagingAppsSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  return sub_1489C();
}

id variable initialization expression of DefaultMessagingAppsSettingsProvider._viewModel()
{
  v0 = objc_allocWithZone(type metadata accessor for DefaultMessagingAppsModel());

  return [v0 init];
}

uint64_t sub_2820(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2868(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_28D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_28E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_294C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29B4()
{
  result = qword_20E68;
  if (!qword_20E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20E68);
  }

  return result;
}

unint64_t sub_2A14()
{
  result = qword_20E70;
  if (!qword_20E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20E70);
  }

  return result;
}

__n128 sub_2A68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2A7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2AC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2B40@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v28 = sub_2820(&qword_20E98, &qword_156D0);
  v29 = *(v28 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v28);
  v4 = &v25 - v3;
  v5 = sub_2820(&qword_20EA0, &qword_156D8);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v27 = &v25 - v8;
  v33 = v1;
  sub_2820(&qword_20EA8, &qword_156E0);
  sub_5740(&qword_20EB0, &qword_20EA8, &qword_156E0);
  sub_1459C();
  v9 = *(v1 + 40);
  v34 = *(v1 + 24);
  v35 = v9;
  v36 = *(v1 + 56);
  sub_2820(&qword_20EB8, &qword_156E8);
  sub_146EC();
  v10 = v37;
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  v11[1] = *v1;
  v11[2] = v12;
  v13 = *(v1 + 48);
  v11[3] = *(v1 + 32);
  v11[4] = v13;
  sub_5708(v1, &v34);
  v26 = sub_2820(&qword_20EC0, &qword_156F0);
  v14 = sub_5740(&qword_20EC8, &qword_20E98, &qword_156D0);
  v25 = sub_5788();
  v15 = v28;
  sub_1463C();

  sub_5860(v10, *(&v10 + 1));
  (*(v29 + 8))(v4, v15);
  v37 = *(v1 + 8);
  sub_2820(&qword_20ED8, &qword_156F8);
  sub_1470C();
  v16 = swift_allocObject();
  v17 = *(v1 + 16);
  v16[1] = *v1;
  v16[2] = v17;
  v18 = *(v1 + 48);
  v16[3] = *(v1 + 32);
  v16[4] = v18;
  v19 = swift_allocObject();
  v20 = *(v1 + 16);
  v19[1] = *v1;
  v19[2] = v20;
  v21 = *(v1 + 48);
  v19[3] = *(v1 + 32);
  v19[4] = v21;
  sub_5708(v1, &v34);
  sub_5708(v1, &v34);
  sub_2820(&qword_20EE0, &qword_15700);
  *&v34 = v15;
  *(&v34 + 1) = v26;
  *&v35 = v14;
  *(&v35 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  sub_5910();
  v22 = v30;
  v23 = v27;
  sub_1462C();

  return (*(v31 + 8))(v23, v22);
}

uint64_t sub_2FEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v3 = sub_2820(&qword_20F18, &unk_15750);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v142 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v140 = &v125 - v7;
  v161 = sub_142BC();
  v151 = *(v161 - 8);
  v8 = *(v151 + 64);
  __chkstk_darwin(v161);
  v155 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_147AC();
  v163 = *(v154 - 8);
  v10 = *(v163 + 64);
  __chkstk_darwin(v154);
  v150 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1481C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_142FC();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v160 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_142AC();
  v20 = *(v19 - 8);
  v165 = v19;
  v166 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v147 = (&v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_1483C();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2820(&qword_20F20, &unk_15F70);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v125 - v29;
  v145 = type metadata accessor for DefaultMessagingAppsSection();
  v31 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v137 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2820(&qword_20F28, &qword_15760);
  v138 = *(v156 - 8);
  v33 = *(v138 + 64);
  v34 = __chkstk_darwin(v156);
  v36 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v136 = &v125 - v38;
  __chkstk_darwin(v37);
  v159 = &v125 - v39;
  v40 = sub_1497C();
  v139 = sub_1496C();
  v153 = v40;
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = *a1;
  swift_getKeyPath();
  v42 = v41 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel___observationRegistrar;
  v167 = v41;
  v149 = sub_5AD0();
  v162 = v42;
  sub_1431C();

  v152 = v41;
  v148 = OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability;
  v43 = *(v41 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability);
  v157 = v36;
  v146 = v26;
  v158 = a1;
  v135 = v30;
  if (v43)
  {
    sub_147BC();
    v44 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
    v45 = v147;
    *v147 = v44;
    v46 = v30;
    v47 = v166;
    v48 = *(v166 + 104);
    v164 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
    v48(v45);
    sub_142EC();
    sub_142CC();
    v49 = v151;
    (*(v151 + 56))(v46, 0, 1, v161);
  }

  else
  {
    v49 = v151;
    (*(v151 + 56))(v30, 1, 1, v161);
    v164 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
    v47 = v166;
    v45 = v147;
  }

  sub_1480C();
  v171._countAndFlagsBits = 0;
  v171._object = 0xE000000000000000;
  sub_147FC(v171);
  v50 = v163;
  v51 = *(v163 + 104);
  v52 = v150;
  v130 = enum case for String.LocalizationValue.Placeholder.object(_:);
  v53 = v154;
  v131 = v163 + 104;
  v129 = v51;
  v51(v150);
  sub_147CC();
  v54 = *(v50 + 8);
  v163 = v50 + 8;
  v128 = v54;
  v54(v52, v53);
  v172._countAndFlagsBits = 0xD000000000000027;
  v172._object = 0x80000000000163C0;
  sub_147FC(v172);
  v55 = v155;
  sub_4194(0, v155);
  v56 = v161;
  sub_147EC();
  v57 = *(v49 + 8);
  v127 = v49 + 8;
  v126 = v57;
  v57(v55, v56);
  v173._countAndFlagsBits = 0;
  v173._object = 0xE000000000000000;
  sub_147FC(v173);
  v132 = v15;
  sub_1482C();
  v58 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
  *v45 = v58;
  v59 = *(v47 + 104);
  v60 = v164;
  v61 = v165;
  v59(v45, v164, v165);
  sub_142EC();
  v62 = v145;
  v63 = v137;
  v64 = &v137[*(v145 + 20)];
  sub_142CC();
  sub_147BC();
  v143 = v58;
  *v45 = v58;
  v166 = v47 + 104;
  v144 = v59;
  v59(v45, v60, v61);
  sub_142EC();
  v65 = v63 + *(v62 + 24);
  sub_142CC();
  swift_getKeyPath();
  v66 = v152;
  v167 = v152;
  sub_1431C();

  v67 = v158;
  v68 = v62;
  v69 = *(v66 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__availableComposingApps);

  sub_5708(v67, &v167);
  v70 = sub_1496C();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;
  *(v71 + 24) = &protocol witness table for MainActor;
  v72 = v67[1];
  *(v71 + 32) = *v67;
  *(v71 + 48) = v72;
  v73 = v67[3];
  *(v71 + 64) = v67[2];
  *(v71 + 80) = v73;
  sub_5708(v67, &v167);
  v74 = sub_1496C();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  *(v75 + 24) = &protocol witness table for MainActor;
  v76 = v67[1];
  *(v75 + 32) = *v67;
  *(v75 + 48) = v76;
  v77 = v67[3];
  *(v75 + 64) = v67[2];
  *(v75 + 80) = v77;
  v125 = sub_2820(&qword_20EC0, &qword_156F0);
  sub_1474C();
  v78 = v167;
  v79 = v168;
  v134 = v169;
  v133 = v170;
  sub_66E0(v135, v63, &qword_20F20, &unk_15F70);
  *(v63 + *(v68 + 28)) = v69;
  v80 = v63 + *(v68 + 32);
  *v80 = v78;
  *(v80 + 8) = v79;
  v81 = v133;
  *(v80 + 16) = v134;
  *(v80 + 32) = v81;
  swift_getKeyPath();
  v167 = v66;
  sub_1431C();

  v82 = *(v66 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability) != 2;
  KeyPath = swift_getKeyPath();
  v84 = swift_allocObject();
  *(v84 + 16) = v82;
  v85 = v136;
  sub_667C(v63, v136);
  v86 = v156;
  v87 = (v85 + *(v156 + 36));
  *v87 = KeyPath;
  v87[1] = sub_6664;
  v87[2] = v84;
  sub_66E0(v85, v159, &qword_20F28, &qword_15760);
  swift_getKeyPath();
  v167 = v66;
  sub_1431C();

  if (*(v66 + v148))
  {
    sub_147BC();
    v88 = v147;
    *v147 = v143;
    v144(v88, v164, v165);
    sub_142EC();
    v89 = v157;
    sub_142CC();
    v90 = v161;
    (*(v151 + 56))(v89, 0, 1, v161);
    sub_1480C();
    v174._countAndFlagsBits = 0;
    v174._object = 0xE000000000000000;
    sub_147FC(v174);
    v91 = v150;
    v92 = v154;
    v129(v150, v130, v154);
    sub_147CC();
    v128(v91, v92);
    v175._countAndFlagsBits = 0xD000000000000043;
    v175._object = 0x80000000000164F0;
    sub_147FC(v175);
    v93 = v155;
    sub_4194(1, v155);
    sub_147EC();
    v126(v93, v90);
    v176._countAndFlagsBits = 0;
    v176._object = 0xE000000000000000;
    sub_147FC(v176);
    sub_1482C();
    v94 = v143;
    *v88 = v143;
    v95 = v165;
    v96 = v144;
    v144(v88, v164, v165);
    sub_142EC();
    v97 = v145;
    v98 = &v89[*(v145 + 20)];
    sub_142CC();
    sub_147BC();
    *v88 = v94;
    v96(v88, v164, v95);
    sub_142EC();
    v99 = v157;
    v100 = &v157[v97[6]];
    sub_142CC();
    swift_getKeyPath();
    v101 = v152;
    v167 = v152;
    sub_1431C();

    v102 = *(v101 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__availableTextingApps);
    sub_5708(v67, &v167);

    v103 = sub_1496C();
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = &protocol witness table for MainActor;
    v105 = v67[1];
    *(v104 + 32) = *v67;
    *(v104 + 48) = v105;
    v106 = v67[3];
    *(v104 + 64) = v67[2];
    *(v104 + 80) = v106;
    sub_5708(v67, &v167);
    v107 = sub_1496C();
    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v108 + 24) = &protocol witness table for MainActor;
    v86 = v156;
    v109 = v67[1];
    *(v108 + 32) = *v67;
    *(v108 + 48) = v109;
    v110 = v67[3];
    *(v108 + 64) = v67[2];
    *(v108 + 80) = v110;
    sub_1474C();
    v111 = v167;
    v112 = v168;
    *(v99 + v97[7]) = v102;
    v113 = v99 + v97[8];
    *v113 = v111;
    *(v113 + 8) = v112;
    v114 = v170;
    *(v113 + 16) = v169;
    *(v113 + 32) = v114;
    swift_getKeyPath();
    v167 = v101;
    sub_1431C();

    LOBYTE(v107) = *(v101 + v148) != 2;
    v115 = swift_getKeyPath();
    v116 = swift_allocObject();
    *(v116 + 16) = v107;
    v117 = (v99 + *(v86 + 36));
    *v117 = v115;
    v117[1] = sub_6C04;
    v117[2] = v116;
    v118 = v140;
    sub_66E0(v99, v140, &qword_20F28, &qword_15760);
    v119 = 0;
  }

  else
  {
    v119 = 1;
    v118 = v140;
    v99 = v157;
  }

  (*(v138 + 56))(v118, v119, 1, v86);
  v120 = v159;
  sub_6860(v159, v99, &qword_20F28, &qword_15760);
  v121 = v142;
  sub_6860(v118, v142, &qword_20F18, &unk_15750);
  v122 = v141;
  sub_6860(v99, v141, &qword_20F28, &qword_15760);
  v123 = sub_2820(&qword_20F30, &qword_15838);
  sub_6860(v121, v122 + *(v123 + 48), &qword_20F18, &unk_15750);
  sub_68C8(v118, &qword_20F18, &unk_15750);
  sub_68C8(v120, &qword_20F28, &qword_15760);
  sub_68C8(v121, &qword_20F18, &unk_15750);
  sub_68C8(v99, &qword_20F28, &qword_15760);
}

uint64_t sub_4194@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = *(*(sub_142FC() - 8) + 64);
  (__chkstk_darwin)();
  v5 = sub_142AC();
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  (__chkstk_darwin)();
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(sub_1483C() - 8) + 64);
  (__chkstk_darwin)();
  v10 = sub_142BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (__chkstk_darwin)();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  v18 = *v2;
  if (a1)
  {
    swift_getKeyPath();
    v26 = v18;
    sub_5AD0();
    sub_1431C();

    if (*(v18 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability) == 1)
    {
      if (qword_20E10 != -1)
      {
        swift_once();
      }

      v19 = sub_5CAC(v10, qword_20E80);
      (*(v11 + 16))(v15, v19, v10);
    }

    else
    {
      sub_147BC();
      *v8 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
      (*(v23 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v24);
      sub_142EC();
      sub_142CC();
    }

    v17 = v15;
  }

  else
  {
    swift_getKeyPath();
    v26 = v18;
    sub_5AD0();
    sub_1431C();

    if (*(v18 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability) == 1)
    {
      if (qword_20E10 != -1)
      {
        swift_once();
      }

      v20 = sub_5CAC(v10, qword_20E80);
      (*(v11 + 16))(v17, v20, v10);
    }

    else
    {
      sub_147BC();
      *v8 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
      (*(v23 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v24);
      sub_142EC();
      sub_142CC();
    }
  }

  return (*(v11 + 32))(v25, v17, v10);
}

uint64_t sub_4614(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_2820(&qword_20F08, &qword_15C80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v10)
  {
    v14 = *a4;
    v15 = sub_1499C();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v17 = sub_1496C();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    v18[5] = v11;
    v18[6] = v10;
    v18[7] = v13;
    v18[8] = v12;

    sub_12438(0, 0, v9, &unk_15840, v18);
  }

  else
  {
  }
}

uint64_t sub_4844@<X0>(uint64_t *a1@<X2>, void *a2@<X5>, uint64_t *a3@<X8>)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a1;
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  v7 = (v6 + *a2);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  sub_2868(*v7, v9);

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_4960(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v6)
  {
    sub_2868(v5, v6);
    v10 = *(a4 + 24);
    v11 = *(a4 + 40);
    v12 = *(a4 + 56);
    sub_2820(&qword_20EB8, &qword_156E8);
    sub_146FC();
  }

  else
  {
  }
}

uint64_t sub_4A94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v4)
  {
    v8 = *a3;
    swift_getKeyPath();
    sub_5AD0();
    sub_1431C();

    v9 = (v8 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp);
    v11 = *(v8 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp);
    v10 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    if (v10)
    {
      v14 = v5 == v11 && v4 == v10;
      if (v14 || (v15 = v9[1], (sub_14A5C() & 1) != 0))
      {
        if (v7 != v13 || v6 != v12)
        {
          sub_14A5C();
        }

        sub_2868(v5, v4);
        sub_2868(v11, v10);

        sub_5860(v5, v4);
        goto LABEL_21;
      }

      sub_2868(v5, v4);
      sub_2868(v11, v10);

      v17 = v5;
      v18 = v4;
    }

    else
    {

      sub_5860(v5, v4);
      v17 = v11;
      v18 = 0;
    }

    sub_5860(v17, v18);
  }

LABEL_21:
  v20 = *(a3 + 1);
  sub_2820(&qword_20ED8, &qword_156F8);
  sub_146FC();
}

uint64_t sub_4D64(uint64_t a1)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_20E20 != -1)
  {
    swift_once();
  }

  v2 = sub_143BC();
  sub_5CAC(v2, qword_21FD0);
  v3 = sub_1439C();
  v4 = sub_149DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "User validation sheet dismissed.", v5, 2u);
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  sub_2820(&qword_20EB8, &qword_156E8);
  sub_146FC();
}

uint64_t sub_4EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 40);
  v28[0] = *(a1 + 24);
  v28[1] = v4;
  v29 = *(a1 + 56);
  sub_2820(&qword_20EB8, &qword_156E8);
  sub_146EC();
  v5 = v31;
  if (v31)
  {
    v27 = v32;
    v25 = v30;
    v26 = v33;
    v6 = *a1;
    swift_getKeyPath();
    *&v28[0] = v6;
    sub_5AD0();
    sub_1431C();

    v7 = v6 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp;
    v9 = *(v6 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp);
    v8 = *(v6 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 8);
    v24 = v9;
    v11 = *(v6 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 16);
    v10 = *(v7 + 24);
    v12 = swift_allocObject();
    v13 = *(a1 + 16);
    *(v12 + 16) = *a1;
    *(v12 + 32) = v13;
    v14 = *(a1 + 48);
    *(v12 + 48) = *(a1 + 32);
    *(v12 + 64) = v14;
    v16 = v25;
    v15 = v26;
    *(v12 + 80) = v25;
    *(v12 + 88) = v5;
    *(v12 + 96) = v27;
    *(v12 + 104) = v26;
    sub_2868(v9, v8);
    sub_5708(a1, v28);

    v17 = sub_143EC();
    v18 = sub_1458C();

    v20 = v11;
    v21 = v24;
    v22 = v27;
    v23 = sub_5B94;
  }

  else
  {

    v21 = 0;
    v8 = 0;
    v20 = 0;
    v10 = 0;
    v16 = 0;
    v22 = 0;
    v15 = 0;
    v23 = 0;
    v12 = 0;
    v17 = 0;
    v18 = 0;
  }

  *a2 = v21;
  *(a2 + 8) = v8;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *(a2 + 32) = v16;
  *(a2 + 40) = v5;
  *(a2 + 48) = v22;
  *(a2 + 56) = v15;
  *(a2 + 64) = v23;
  *(a2 + 72) = v12;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  return result;
}

uint64_t sub_5138(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a3;
  v36 = a5;
  v10 = sub_2820(&qword_20F08, &qword_15C80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v33 - v12;
  if (qword_20E20 != -1)
  {
    swift_once();
  }

  v14 = sub_143BC();
  sub_5CAC(v14, qword_21FD0);
  v15 = sub_1439C();
  v16 = sub_149DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v39[0] = v18;
    *v17 = 136446210;
    if (a1)
    {
      v19 = 0x616D7269666E6F63;
    }

    else
    {
      v19 = 0x74616C65636E6163;
    }

    v34 = v13;
    v20 = a6;
    if (a1)
    {
      v21 = 0xEC0000006E6F6974;
    }

    else
    {
      v21 = 0xEB000000006E6F69;
    }

    v22 = a2;
    v23 = sub_5EF0(v19, v21, v39);
    a6 = v20;
    v13 = v34;

    *(v17 + 4) = v23;
    a2 = v22;
    _os_log_impl(&dword_0, v15, v16, "User validation sheet returned %{public}s via button.", v17, 0xCu);
    sub_5FBC(v18);
  }

  v24 = *(a2 + 5);
  v39[0] = *(a2 + 3);
  v39[1] = v24;
  v40 = a2[7];
  v37 = 0u;
  v38 = 0u;
  sub_2820(&qword_20EB8, &qword_156E8);
  result = sub_146FC();
  if (a1)
  {
    v26 = *a2;
    v27 = sub_1499C();
    (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1497C();

    v29 = sub_1496C();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = &protocol witness table for MainActor;
    v32 = v35;
    v31 = v36;
    v30[4] = v28;
    v30[5] = v32;
    v30[6] = a4;
    v30[7] = v31;
    v30[8] = a6;

    sub_12438(0, 0, v13, &unk_15740, v30);
  }

  return result;
}

uint64_t sub_547C()
{
  v0 = *(*(sub_142FC() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_142AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(*(sub_1483C() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_142BC();
  sub_6A5C(v7, qword_20E80);
  sub_5CAC(v7, qword_20E80);
  sub_147BC();
  *v5 = type metadata accessor for DefaultMessagingAppsSettingsProvider();
  (*(v2 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  sub_142EC();
  return sub_142CC();
}

uint64_t sub_5670@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_2B40(a1);
}

uint64_t sub_56B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5740(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_56B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_5788()
{
  result = qword_20ED0;
  if (!qword_20ED0)
  {
    sub_56B4(&qword_20EC0, &qword_156F0);
    sub_580C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20ED0);
  }

  return result;
}

unint64_t sub_580C()
{
  result = qword_212B0;
  if (!qword_212B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_212B0);
  }

  return result;
}

uint64_t sub_5860(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_58AC()
{
  v1 = *(v0 + 32);

  if (*(v0 + 48))
  {

    v2 = *(v0 + 64);
  }

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_5910()
{
  result = qword_20EE8;
  if (!qword_20EE8)
  {
    sub_56B4(&qword_20EE0, &qword_15700);
    sub_5994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20EE8);
  }

  return result;
}

unint64_t sub_5994()
{
  result = qword_20EF0;
  if (!qword_20EF0)
  {
    sub_56B4(&qword_20EF8, &qword_15708);
    sub_29B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20EF0);
  }

  return result;
}

uint64_t sub_5A20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  *a2 = *(v3 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability);
  return result;
}

unint64_t sub_5AD0()
{
  result = qword_20F00;
  if (!qword_20F00)
  {
    type metadata accessor for DefaultMessagingAppsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20F00);
  }

  return result;
}

uint64_t sub_5B28()
{
  v1 = *(v0 + 32);

  if (*(v0 + 48))
  {

    v2 = *(v0 + 64);
  }

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_5BB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_AFA4(v4);
}

uint64_t sub_5BF8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  *a3 = *(v5 + *a2);
}

uint64_t sub_5C80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_B054(v4);
}

uint64_t sub_5CAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5CE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5D20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_5DFC;

  return sub_C060(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_5DFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5EF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_6008(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_6114(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5FBC(v11);
  return v7;
}

uint64_t sub_5FBC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_6008(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_6170(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_14A2C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_6114(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_6170(uint64_t a1, unint64_t a2)
{
  v4 = sub_61BC(a1, a2);
  sub_62EC(&off_1CE80);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_61BC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_63D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_14A2C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_148EC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_63D8(v10, 0);
        result = sub_14A1C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_62EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_644C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_63D8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2820(&qword_20F10, &qword_15748);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_644C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2820(&qword_20F10, &qword_15748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_6590@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_4844(v1 + 4, &OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp, a1);
}

uint64_t sub_65FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1443C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_667C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultMessagingAppsSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_66E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2820(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_6788(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_67BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_4844(v1 + 4, &OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp, a1);
}

uint64_t sub_67F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  if (*(v0 + 64))
  {

    v3 = *(v0 + 80);
  }

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_6860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2820(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_68C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2820(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6928()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_6978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_6C00;

  return sub_B724(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t *sub_6A5C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_6AC0()
{
  sub_56B4(&qword_20EA0, &qword_156D8);
  sub_56B4(&qword_20EE0, &qword_15700);
  sub_56B4(&qword_20E98, &qword_156D0);
  sub_56B4(&qword_20EC0, &qword_156F0);
  sub_5740(&qword_20EC8, &qword_20E98, &qword_156D0);
  sub_5788();
  swift_getOpaqueTypeConformance2();
  sub_5910();
  return swift_getOpaqueTypeConformance2();
}

id sub_6C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v16 = *(*(sub_142FC() - 8) + 64);
  __chkstk_darwin();
  v17 = *(*(sub_1483C() - 8) + 64);
  __chkstk_darwin();
  v18 = *(*(sub_1481C() - 8) + 64);
  __chkstk_darwin();
  *&v8[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_confirmationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = &v8[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_previousApp];
  *v19 = a1;
  *(v19 + 1) = a2;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  v20 = &v8[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_newApp];
  *v20 = a5;
  *(v20 + 1) = a6;
  *(v20 + 2) = a7;
  *(v20 + 3) = a8;

  sub_1480C();
  v33._object = 0x8000000000016D00;
  v33._countAndFlagsBits = 0x1000000000000020;
  sub_147FC(v33);
  v34._countAndFlagsBits = a7;
  v34._object = a8;
  sub_147DC(v34);

  v35._countAndFlagsBits = 1067286754;
  v35._object = 0xA400000000000000;
  sub_147FC(v35);
  sub_1482C();
  type metadata accessor for DefaultMessagingAppsSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  sub_1489C();
  sub_147BC();
  v24 = [v22 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  sub_1489C();
  v25 = objc_allocWithZone(OBWelcomeController);
  v26 = sub_1487C();

  v27 = sub_1487C();

  v28 = [v25 initWithTitle:v26 detailText:v27 icon:0];

  *&v9[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_onBoardingKitController] = v28;
  v32.receiver = v9;
  v32.super_class = type metadata accessor for TextingAppChangeConfirmationViewController();
  return objc_msgSendSuper2(&v32, "initWithRootViewController:", v28);
}

void sub_7110()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_onBoardingKitController);
  v3 = [v2 headerView];
  v4 = [v3 customIconContainerView];

  if (v4)
  {
    v6 = *(v1 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_newApp);
    v5 = *(v1 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_newApp + 8);
    KeyPath = swift_getKeyPath();
    LOBYTE(v20) = 0;
    v21 = v5;
    objc_allocWithZone(sub_2820(&qword_20F80, &qword_15918));

    v7 = sub_144AC();
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v4 setClipsToBounds:0];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v2 addChildViewController:v7];
      [v4 addSubview:v9];
      v10 = objc_opt_self();
      sub_2820(&qword_20F88, &qword_15920);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_15880;
      v12 = [v9 centerXAnchor];
      v13 = [v4 centerXAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v11 + 32) = v14;
      v15 = [v9 centerYAnchor];
      v16 = [v4 centerYAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      *(v11 + 40) = v17;
      sub_9E54();
      isa = sub_1490C().super.isa;

      [v10 activateConstraints:isa];

      [v7 didMoveToParentViewController:v1];
      v4 = v7;
      v7 = v9;
    }
  }
}

void sub_73C4()
{
  v1 = sub_1481C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_142FC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1483C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() systemGreenColor];
    [v8 setTintColor:v9];

    v10 = *&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_onBoardingKitController];
    sub_147BC();
    type metadata accessor for DefaultMessagingAppsSettingsProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = objc_opt_self();
    v38 = ObjCClassFromMetadata;
    v12 = [v37 bundleForClass:ObjCClassFromMetadata];
    sub_142EC();
    sub_1489C();
    v13 = sub_1487C();

    v14 = sub_1487C();
    v15 = [objc_opt_self() configurationWithWeight:6];
    v16 = sub_1487C();
    v17 = objc_opt_self();
    v18 = [v17 _systemImageNamed:v16 withConfiguration:v15];

    if (!v18)
    {
      v18 = [objc_allocWithZone(UIImage) init];
    }

    [v10 addBulletedListItemWithTitle:v13 description:v14 image:v18];

    sub_147BC();
    v19 = [v37 bundleForClass:v38];
    sub_142EC();
    sub_1489C();
    v20 = sub_1487C();

    v21 = sub_1487C();
    v22 = sub_1487C();
    v23 = [v17 systemImageNamed:v22];

    if (!v23)
    {
      v23 = [objc_allocWithZone(UIImage) init];
    }

    [v10 addBulletedListItemWithTitle:v20 description:v21 image:v23];

    sub_1480C();
    v39._countAndFlagsBits = 0x9C80E220657355;
    v39._object = 0xA700000000000000;
    sub_147FC(v39);
    sub_147DC(*&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_newApp + 16]);
    v40._countAndFlagsBits = 0x1000000000000030;
    v40._object = 0x8000000000016A30;
    sub_147FC(v40);
    sub_1482C();
    v24 = [v37 bundleForClass:v38];
    sub_142EC();
    sub_1489C();
    v25 = sub_1487C();

    v26 = sub_1487C();
    v27 = sub_1487C();
    v28 = [v17 systemImageNamed:v27];

    if (!v28)
    {
      v28 = [objc_allocWithZone(UIImage) init];
    }

    [v10 addBulletedListItemWithTitle:v25 description:v26 image:v28];

    v29 = &v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_previousApp];
    if (*&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_previousApp + 8])
    {
      v31 = *(v29 + 2);
      v30 = *(v29 + 3);

      sub_1480C();
      v41._countAndFlagsBits = 0x1000000000000025;
      v41._object = 0x8000000000016AA0;
      sub_147FC(v41);
      v42._countAndFlagsBits = v31;
      v42._object = v30;
      sub_147DC(v42);

      v43._object = 0x8000000000016AD0;
      v43._countAndFlagsBits = 0x1000000000000017;
      sub_147FC(v43);
      sub_1482C();
      v32 = [v37 bundleForClass:v38];
      sub_142EC();
      sub_1489C();
      v33 = sub_1487C();

      v34 = sub_1487C();
      v35 = sub_1487C();
      v36 = [v17 systemImageNamed:v35];

      if (!v36)
      {
        v36 = [objc_allocWithZone(UIImage) init];
      }

      [v10 addBulletedListItemWithTitle:v33 description:v34 image:v36];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_7AD8()
{
  v1 = sub_142FC();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1483C();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v20 = *(v0 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_onBoardingKitController);
  v5 = [v20 navigationItem];
  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"cancelChange"];
  [v5 setRightBarButtonItem:v6];

  v7 = [objc_opt_self() boldButton];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemRedColor];
  [v9 setTintColor:v10];

  sub_147BC();
  type metadata accessor for DefaultMessagingAppsSettingsProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  sub_1489C();
  v14 = sub_1487C();

  [v9 setTitle:v14 forState:0];

  [v9 addTarget:v0 action:"confirmChange" forControlEvents:64];
  v15 = [objc_opt_self() linkButton];
  sub_147BC();
  v16 = [v12 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  sub_1489C();
  v17 = sub_1487C();

  [v15 setTitle:v17 forState:0];

  [v15 addTarget:v0 action:"cancelChange" forControlEvents:64];
  v18 = [v20 buttonTray];
  [v18 addButton:v9];

  v19 = [v20 buttonTray];
  [v19 addButton:v15];
}

uint64_t sub_7EF0(const char *a1, int a2, char a3)
{
  if (qword_20E20 != -1)
  {
    swift_once();
  }

  v6 = sub_143BC();
  sub_5CAC(v6, qword_21FD0);
  v7 = sub_1439C();
  v8 = sub_149DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, a1, v9, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_1439C();
    v13 = sub_149DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = a2;
      _os_log_impl(&dword_0, v12, v13, "Will change texting app: %{BOOL}d", v14, 8u);
    }

    v15 = *(v11 + OBJC_IVAR____TtCV28DefaultMessagingAppsSettings33TextingAppChangeConfirmationSheet11Coordinator_completion + 8);
    (*(v11 + OBJC_IVAR____TtCV28DefaultMessagingAppsSettings33TextingAppChangeConfirmationSheet11Coordinator_completion))(a3 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_80DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_8254()
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_82E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextingAppChangeConfirmationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_83C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a1;
  v22 = a2;
  v2 = sub_1469C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1434C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1497C();
  v21[1] = sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v11, v21[0], v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for AsyncIconImagePhase.success(_:))
  {
    (*(v8 + 96))(v11, v7);
    v13 = *v11;
    (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
    v14 = sub_146BC();
    (*(v3 + 8))(v6, v2);
    sub_1479C();
    sub_143CC();
    v32 = BYTE8(v44);
    v30 = BYTE8(v45);
    v26 = 0;
    *v42 = v14;
    *&v42[8] = v44;
    v42[16] = BYTE8(v44);
    *&v42[17] = v31[0];
    *&v42[20] = *(v31 + 3);
    *&v42[24] = v45;
    v42[32] = BYTE8(v45);
    *&v42[33] = *v29;
    *&v42[36] = *&v29[3];
    *&v42[40] = v46;
    *&v42[72] = v28;
    *&v42[56] = v27;
    LOBYTE(v43) = 0;
    swift_retain_n();
    sub_2820(&qword_20FC0, &qword_15A08);
    sub_2820(&qword_20FD0, &qword_15A10);
    sub_A0AC();
    sub_A130();
    sub_144BC();
    v36 = v24[1];
    v37 = v24[2];
    v38 = v24[3];
    v39 = v25;
    v34 = v23;
    v35 = v24[0];
    *&v42[32] = v24[1];
    *&v42[48] = v24[2];
    *&v42[64] = v24[3];
    v43 = v25;
    *v42 = v23;
    *&v42[16] = v24[0];
    v33 = 0;
    sub_6860(&v34, v40, &qword_20FB0, &qword_15A00);
    sub_2820(&qword_20FB0, &qword_15A00);
    sub_2820(&qword_21010, &qword_15A30);
    sub_A020();
    sub_A300();
    sub_144BC();

    sub_68C8(&v34, &qword_20FB0, &qword_15A00);
  }

  else
  {
    if (v12 == enum case for AsyncIconImagePhase.failure(_:))
    {
      (*(v8 + 8))(v11, v7);
      sub_146AC();
      (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
      v15 = sub_146BC();

      (*(v3 + 8))(v6, v2);
      v16 = sub_1466C();
      sub_1479C();
      sub_143CC();
      LOBYTE(v40[0]) = 1;
      *&v42[6] = v44;
      *&v42[22] = v45;
      *&v42[38] = v46;
      *&v23 = v15;
      *(&v23 + 1) = v16;
      *&v24[0] = 0;
      WORD4(v24[0]) = 1;
      *(v24 + 10) = *v42;
      *(&v24[1] + 10) = *&v42[16];
      *(&v24[2] + 10) = *&v42[32];
      *(&v24[3] + 1) = *(&v46 + 1);
      *v42 = v23;
      *&v42[16] = v24[0];
      *&v42[32] = v24[1];
      *&v42[48] = v24[2];
      *&v42[64] = v24[3];
      LOBYTE(v31[0]) = 1;
      LOBYTE(v43) = 1;
      sub_6860(&v23, v40, &qword_20FD0, &qword_15A10);
      sub_2820(&qword_20FC0, &qword_15A08);
      sub_2820(&qword_20FD0, &qword_15A10);
      sub_A0AC();
      sub_A130();
      sub_144BC();
      *&v42[32] = v36;
      *&v42[48] = v37;
      *&v42[64] = v38;
      v43 = v39;
      *v42 = v34;
      *&v42[16] = v35;
      LOBYTE(v27) = 0;
      sub_2820(&qword_20FB0, &qword_15A00);
      sub_2820(&qword_21010, &qword_15A30);
      sub_A020();
      sub_A300();
      sub_144BC();
      sub_68C8(&v23, &qword_20FD0, &qword_15A10);
    }

    else if (v12 == enum case for AsyncIconImagePhase.unfetched(_:))
    {
      v42[0] = 0;
      sub_144BC();
      LOBYTE(v23) = 1;
      v42[0] = v34;
      HIBYTE(v43) = 1;
      sub_2820(&qword_20FB0, &qword_15A00);
      sub_2820(&qword_21010, &qword_15A30);
      sub_A020();
      sub_A300();
      sub_144BC();
    }

    else
    {
      v42[0] = 1;
      sub_144BC();
      LOBYTE(v23) = 1;
      v42[0] = v34;
      HIBYTE(v43) = 1;
      sub_2820(&qword_20FB0, &qword_15A00);
      sub_2820(&qword_21010, &qword_15A30);
      sub_A020();
      sub_A300();
      sub_144BC();
      (*(v8 + 8))(v11, v7);
    }
  }

  *&v42[64] = v40[4];
  v43 = v41;
  *v42 = v40[0];
  *&v42[16] = v40[1];
  v17 = v40[3];
  v18 = v22;
  *(v22 + 32) = v40[2];
  *(v18 + 48) = v17;
  *(v18 + 64) = *&v42[64];
  *(v18 + 80) = v43;
  result = *v42;
  v20 = *&v42[16];
  *v18 = *v42;
  *(v18 + 16) = v20;
  return result;
}

uint64_t sub_8C20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v27[0] = a3;
  v5 = sub_1446C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2820(&qword_21030, &qword_15A50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v27 - v12;
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = objc_allocWithZone(ISIcon);
  v15 = sub_1487C();
  [v14 initWithType:{v15, v27[0]}];

  if (a2)
  {
    v16 = *&a1;
  }

  else
  {

    sub_149CC();
    v17 = sub_1457C();
    sub_1437C();

    sub_1445C();
    swift_getAtKeyPath();
    sub_A37C(a1, 0);
    (*(v6 + 8))(v9, v5);
    v16 = *&v27[1];
  }

  [objc_allocWithZone(ISImageDescriptor) initWithSize:30.0 scale:{30.0, v16}];
  sub_2820(&qword_21038, &qword_15A58);
  sub_A388();
  sub_1435C();
  v18 = sub_2820(&qword_210A0, &qword_15A88);
  __asm { FMOV            V0.2D, #4.0 }

  *&v13[*(v18 + 36)] = _Q0;
  sub_1465C();
  v24 = sub_1468C();

  v25 = &v13[*(v10 + 36)];
  *v25 = v24;
  *(v25 + 8) = xmmword_15890;
  *(v25 + 3) = 0x3FF0000000000000;
  sub_A6F4();
  sub_145CC();
  sub_68C8(v13, &qword_21030, &qword_15A50);
}

uint64_t sub_8F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v72 = a2;
  v64 = sub_2820(&qword_21060, &qword_15A68);
  v2 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v62 = &v61 - v3;
  v67 = sub_2820(&qword_210C8, &qword_15A98);
  v4 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v71 = &v61 - v5;
  v63 = sub_2820(&qword_210D0, &qword_15AA0);
  v6 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v8 = &v61 - v7;
  v70 = sub_2820(&qword_21050, &qword_15A60);
  v9 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v65 = &v61 - v10;
  v11 = sub_1469C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1434C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_2820(&qword_21038, &qword_15A58);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v69 = &v61 - v23;
  sub_1497C();
  v68 = sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v17 + 16))(v20, v66, v16);
  v24 = (*(v17 + 88))(v20, v16);
  if (v24 == enum case for AsyncIconImagePhase.success(_:))
  {
    (*(v17 + 96))(v20, v16);
    v25 = *v20;
    (*(v12 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v11);
    v26 = sub_146BC();
    (*(v12 + 8))(v15, v11);
    sub_1479C();
    sub_143CC();
    v27 = v81;
    v28 = BYTE8(v81);
    v29 = v82;
    v30 = BYTE8(v82);
    *v8 = v26;
    *(v8 + 1) = v27;
    v8[16] = v28;
    *(v8 + 3) = v29;
    v8[32] = v30;
    *(v8 + 40) = v83;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_2820(&qword_20FC0, &qword_15A08);
    sub_A0AC();
    sub_A4A0();
    v31 = v65;
    sub_144BC();
    sub_6860(v31, v71, &qword_21050, &qword_15A60);
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_21010, &qword_15A30);
    sub_A414();
    sub_A300();
    v32 = v69;
    sub_144BC();

    sub_68C8(v31, &qword_21050, &qword_15A60);
  }

  else if (v24 == enum case for AsyncIconImagePhase.failure(_:))
  {
    (*(v17 + 8))(v20, v16);
    v33 = *(sub_143FC() + 20);
    v34 = enum case for RoundedCornerStyle.continuous(_:);
    v35 = sub_1449C();
    v36 = v62;
    (*(*(v35 - 8) + 104))(&v62[v33], v34, v35);
    __asm { FMOV            V0.2D, #8.0 }

    *v36 = _Q0;
    v42 = sub_1464C();
    *(v36 + *(sub_2820(&qword_21080, &qword_15A78) + 36)) = v42;
    sub_1479C();
    sub_143CC();
    v43 = (v36 + *(sub_2820(&qword_21070, &qword_15A70) + 36));
    v44 = v89;
    *v43 = v88;
    v43[1] = v44;
    v43[2] = v90;
    v45 = sub_1479C();
    v47 = v46;
    sub_98F8(&v74);
    v49 = v77;
    v48 = v78;
    v51 = v77;
    v50 = v78;
    v79[3] = v77;
    v79[4] = v78;
    v53 = v75;
    v52 = v76;
    v55 = v75;
    v54 = v76;
    v79[1] = v75;
    v79[2] = v76;
    v56 = v74;
    v79[0] = v74;
    *&v80 = v45;
    *(&v80 + 1) = v47;
    v57 = (v36 + *(v64 + 36));
    *v57 = v74;
    v57[1] = v53;
    v58 = v80;
    v57[4] = v48;
    v57[5] = v58;
    v57[2] = v52;
    v57[3] = v49;
    v84 = v51;
    v85 = v50;
    v82 = v55;
    v83 = v54;
    v81 = v56;
    v86 = v45;
    v87 = v47;
    sub_6860(v79, &v73, &qword_21098, &qword_15A80);
    sub_68C8(&v81, &qword_21098, &qword_15A80);
    sub_6860(v36, v8, &qword_21060, &qword_15A68);
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_20FC0, &qword_15A08);
    sub_A0AC();
    sub_A4A0();
    v59 = v65;
    sub_144BC();
    sub_6860(v59, v71, &qword_21050, &qword_15A60);
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_21010, &qword_15A30);
    sub_A414();
    sub_A300();
    v32 = v69;
    sub_144BC();
    sub_68C8(v59, &qword_21050, &qword_15A60);
    sub_68C8(v36, &qword_21060, &qword_15A68);
  }

  else if (v24 == enum case for AsyncIconImagePhase.unfetched(_:))
  {
    LOBYTE(v79[0]) = 0;
    sub_144BC();
    *v71 = v81;
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_21010, &qword_15A30);
    sub_A414();
    sub_A300();
    v32 = v69;
    sub_144BC();
  }

  else
  {
    LOBYTE(v79[0]) = 1;
    sub_144BC();
    *v71 = v81;
    swift_storeEnumTagMultiPayload();
    sub_2820(&qword_21010, &qword_15A30);
    sub_A414();
    sub_A300();
    v32 = v69;
    sub_144BC();
    (*(v17 + 8))(v20, v16);
  }

  sub_A838(v32, v72);
}

double sub_98F8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1469C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_146AC();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = sub_146BC();

  (*(v3 + 8))(v6, v2);
  v8 = sub_1467C();
  sub_1479C();
  sub_143CC();

  *&v11[40] = v14;
  *&v11[24] = v13;
  *&v11[8] = v12;
  v9 = *&v11[18];
  *(a1 + 26) = *&v11[2];
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 42) = v9;
  result = *&v11[34];
  *(a1 + 58) = *&v11[34];
  *(a1 + 72) = *&v11[48];
  return result;
}

uint64_t sub_9B08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = objc_allocWithZone(ISIcon);
  v8 = sub_1487C();
  [v7 initWithBundleIdentifier:v8];

  [objc_allocWithZone(ISImageDescriptor) initWithSize:80.0 scale:{80.0, sub_9CB8(v3, v4)}];
  sub_2820(&qword_20F98, &qword_159F8);
  sub_9F94();
  sub_1435C();
  v9 = sub_1478C();
  v11 = v10;
  v12 = a1 + *(sub_2820(&qword_21018, &qword_15A38) + 36);
  sub_8C20(v3, v4, v12);
  v13 = (v12 + *(sub_2820(&qword_21020, &qword_15A40) + 36));
  *v13 = v9;
  v13[1] = v11;
  v14 = sub_143EC();
  v15 = sub_1458C();
  result = sub_2820(&qword_21028, &qword_15A48);
  v17 = a1 + *(result + 36);
  *v17 = v14;
  *(v17 + 8) = v15;
  return result;
}

double sub_9CB8(uint64_t a1, char a2)
{
  v4 = sub_1446C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  sub_149CC();
  v10 = sub_1457C();
  sub_1437C();

  sub_1445C();
  swift_getAtKeyPath();
  sub_A37C(a1, 0);
  (*(v5 + 8))(v8, v4);
  return *&v11[1];
}

uint64_t sub_9E00@<X0>(void *a1@<X8>)
{
  result = sub_1441C();
  *a1 = v3;
  return result;
}

unint64_t sub_9E54()
{
  result = qword_20F90;
  if (!qword_20F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_20F90);
  }

  return result;
}

__n128 sub_9ED4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_9EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9F28(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_9F94()
{
  result = qword_20FA0;
  if (!qword_20FA0)
  {
    sub_56B4(&qword_20F98, &qword_159F8);
    sub_A020();
    sub_A300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FA0);
  }

  return result;
}

unint64_t sub_A020()
{
  result = qword_20FA8;
  if (!qword_20FA8)
  {
    sub_56B4(&qword_20FB0, &qword_15A00);
    sub_A0AC();
    sub_A130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FA8);
  }

  return result;
}

unint64_t sub_A0AC()
{
  result = qword_20FB8;
  if (!qword_20FB8)
  {
    sub_56B4(&qword_20FC0, &qword_15A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FB8);
  }

  return result;
}

unint64_t sub_A130()
{
  result = qword_20FC8;
  if (!qword_20FC8)
  {
    sub_56B4(&qword_20FD0, &qword_15A10);
    sub_A1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FC8);
  }

  return result;
}

unint64_t sub_A1BC()
{
  result = qword_20FD8;
  if (!qword_20FD8)
  {
    sub_56B4(&qword_20FE0, &qword_15A18);
    sub_A248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FD8);
  }

  return result;
}

unint64_t sub_A248()
{
  result = qword_20FE8;
  if (!qword_20FE8)
  {
    sub_56B4(&qword_20FF0, &qword_15A20);
    sub_5740(&qword_20FF8, &qword_21000, &qword_15A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20FE8);
  }

  return result;
}

unint64_t sub_A300()
{
  result = qword_21008;
  if (!qword_21008)
  {
    sub_56B4(&qword_21010, &qword_15A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21008);
  }

  return result;
}

uint64_t sub_A37C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_A388()
{
  result = qword_21040;
  if (!qword_21040)
  {
    sub_56B4(&qword_21038, &qword_15A58);
    sub_A414();
    sub_A300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21040);
  }

  return result;
}

unint64_t sub_A414()
{
  result = qword_21048;
  if (!qword_21048)
  {
    sub_56B4(&qword_21050, &qword_15A60);
    sub_A0AC();
    sub_A4A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21048);
  }

  return result;
}

unint64_t sub_A4A0()
{
  result = qword_21058;
  if (!qword_21058)
  {
    sub_56B4(&qword_21060, &qword_15A68);
    sub_A558();
    sub_5740(&qword_21090, &qword_21098, &qword_15A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21058);
  }

  return result;
}

unint64_t sub_A558()
{
  result = qword_21068;
  if (!qword_21068)
  {
    sub_56B4(&qword_21070, &qword_15A70);
    sub_A5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21068);
  }

  return result;
}

unint64_t sub_A5E4()
{
  result = qword_21078;
  if (!qword_21078)
  {
    sub_56B4(&qword_21080, &qword_15A78);
    sub_A69C();
    sub_5740(&qword_20FF8, &qword_21000, &qword_15A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21078);
  }

  return result;
}

unint64_t sub_A69C()
{
  result = qword_21088;
  if (!qword_21088)
  {
    sub_143FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21088);
  }

  return result;
}

unint64_t sub_A6F4()
{
  result = qword_210A8;
  if (!qword_210A8)
  {
    sub_56B4(&qword_21030, &qword_15A50);
    sub_A780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_210A8);
  }

  return result;
}

unint64_t sub_A780()
{
  result = qword_210B0;
  if (!qword_210B0)
  {
    sub_56B4(&qword_210A0, &qword_15A88);
    sub_5740(&qword_210B8, &qword_210C0, &qword_15A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_210B0);
  }

  return result;
}

uint64_t sub_A838(uint64_t a1, uint64_t a2)
{
  v4 = sub_2820(&qword_21038, &qword_15A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_A8AC()
{
  result = qword_210D8;
  if (!qword_210D8)
  {
    sub_56B4(&qword_21028, &qword_15A48);
    sub_A938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_210D8);
  }

  return result;
}

unint64_t sub_A938()
{
  result = qword_210E0;
  if (!qword_210E0)
  {
    sub_56B4(&qword_21018, &qword_15A38);
    sub_5740(&qword_210E8, &qword_210F0, &qword_15AA8);
    sub_5740(&qword_210F8, &qword_21020, &qword_15A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_210E0);
  }

  return result;
}

uint64_t sub_AA4C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_143BC();
  sub_6A5C(v3, a2);
  sub_5CAC(v3, a2);
  sub_1438C();
  return sub_143AC();
}

uint64_t sub_AB04(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  return *(v2 + *a2);
}

uint64_t sub_AB9C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5AD0();
    sub_1430C();
  }

  return result;
}

uint64_t sub_ACB8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[2];
  v7 = v4[3];
  sub_2868(*v4, v4[1]);
  return v5;
}

uint64_t sub_AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = (v5 + *a5);
  v11 = *v10;
  v12 = v10[1];
  v14 = v10[2];
  v13 = v10[3];
  sub_2868(*v10, v12);
  v21 = a4;
  LOBYTE(a4) = sub_E028(v11, v12, v14, v13, a1, a2, a3, a4);
  sub_5860(v11, v12);
  if (a4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5AD0();
    sub_1430C();
    sub_5860(a1, a2);
  }

  else
  {
    v17 = *v10;
    v18 = v10[1];
    v19 = v10[2];
    v20 = v10[3];
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
    v10[3] = v21;

    return sub_5860(v17, v18);
  }
}

uint64_t sub_AF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = (a1 + *a6);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  sub_2868(a2, a3);
  return sub_5860(v7, v8);
}

uint64_t sub_AFE0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_5AD0();
  sub_1431C();

  v4 = *(v2 + *a2);
}

uint64_t sub_B07C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (sub_DEC4(*(v2 + *a2), a1))
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5AD0();
    sub_1430C();
  }
}

id sub_B194()
{
  v1 = sub_2820(&qword_20F08, &qword_15C80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability] = 0;
  v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability] = 0;
  v5 = &v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp];
  *v6 = 0u;
  v6[1] = 0u;
  *&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__availableComposingApps] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__availableTextingApps] = &_swiftEmptyArrayStorage;
  v7 = OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices;
  _s19LaunchServicesActorCMa();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *&v0[v7] = v8;
  sub_1432C();
  v9 = type metadata accessor for DefaultMessagingAppsModel();
  v17.receiver = v0;
  v17.super_class = v9;
  v10 = objc_msgSendSuper2(&v17, "init");
  v11 = sub_1499C();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v13 = v10;
  sub_12438(0, 0, v4, &unk_15F50, v12);

  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v15 = v14;
    [v14 addObserver:v13];
  }

  return v13;
}

id sub_B430()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    [v1 removeObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DefaultMessagingAppsModel();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for DefaultMessagingAppsModel()
{
  result = qword_21168;
  if (!qword_21168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B65C()
{
  result = sub_1433C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = *(*(sub_2820(&qword_20F08, &qword_15C80) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = sub_1497C();
  v8[15] = sub_1496C();
  v11 = sub_1492C();
  v8[16] = v11;
  v8[17] = v10;

  return _swift_task_switch(sub_B800, v11, v10);
}

uint64_t sub_B800()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0[18] = *(Strong + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);
    v3 = Strong;

    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_BA28;
    v5 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v7 = v0[10];

    return sub_F370(v8, v7, v5, v6, 0);
  }

  else
  {
    v10 = v0[15];

    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[8];
    v14 = sub_1499C();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v17 = sub_1496C();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;

    sub_12438(0, 0, v11, &unk_15CA8, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_BA28()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_BB6C, v5, v4);
}

uint64_t sub_BB6C()
{
  v1 = v0[15];

  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[8];
  v5 = sub_1499C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = sub_1496C();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;

  sub_12438(0, 0, v2, &unk_15CA8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1497C();
  v4[6] = sub_1496C();
  v6 = sub_1492C();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_BD70, v6, v5);
}

uint64_t sub_BD70()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[10] = *(Strong + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_BE7C;

    return sub_E69C(0);
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_BE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  v12 = *v4;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a3;
  v6[15] = a4;

  v9 = v5[8];
  v10 = v5[7];

  return _swift_task_switch(sub_BFCC, v10, v9);
}

uint64_t sub_BFCC()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  v6 = v0[6];

  sub_AC7C(v4, v3, v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = *(*(sub_2820(&qword_20F08, &qword_15C80) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = sub_1497C();
  v8[15] = sub_1496C();
  v11 = sub_1492C();
  v8[16] = v11;
  v8[17] = v10;

  return _swift_task_switch(sub_C13C, v11, v10);
}

uint64_t sub_C13C()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0[18] = *(Strong + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);
    v3 = Strong;

    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_C364;
    v5 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v7 = v0[10];

    return sub_F370(v8, v7, v5, v6, 1);
  }

  else
  {
    v10 = v0[15];

    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[8];
    v14 = sub_1499C();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v17 = sub_1496C();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;

    sub_12438(0, 0, v11, &unk_15C90, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_C364()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_C4A8, v5, v4);
}

uint64_t sub_C4A8()
{
  v1 = v0[15];

  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[8];
  v5 = sub_1499C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = sub_1496C();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;

  sub_12438(0, 0, v2, &unk_15C90, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_C614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1497C();
  v4[6] = sub_1496C();
  v6 = sub_1492C();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_C6AC, v6, v5);
}

uint64_t sub_C6AC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[10] = *(Strong + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_C7B8;

    return sub_E69C(1);
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_C7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  v12 = *v4;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a3;
  v6[15] = a4;

  v9 = v5[8];
  v10 = v5[7];

  return _swift_task_switch(sub_C908, v10, v9);
}

uint64_t sub_C908()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  v6 = v0[6];

  sub_AD54(v4, v3, v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_C99C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_5DFC;

  return sub_CA2C();
}

uint64_t sub_CA2C()
{
  v1[18] = v0;
  v1[19] = sub_1497C();
  v1[20] = sub_1496C();
  v3 = sub_1492C();
  v1[21] = v3;
  v1[22] = v2;

  return _swift_task_switch(sub_CAC8, v3, v2);
}

uint64_t sub_CAC8()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel_launchServices);
  *(v0 + 184) = v1;
  return _swift_task_switch(sub_CAF4, v1, 0);
}

uint64_t sub_CAF4()
{
  v1 = objc_opt_self();
  *(v0 + 192) = v1;
  v2 = [v1 defaultWorkspace];
  if (v2 && (v3 = v2, v4 = [v2 canChangeDefaultAppForCategory:3], v3, v4))
  {
    v5 = [objc_opt_self() sharedConnection];
    if (!v5)
    {
      __break(1u);
      return _swift_task_switch(v5, v6, v7);
    }

    v8 = v5;
    v9 = [v5 isDefaultMessagingAppModificationAllowed];

    if (v9)
    {
      v10 = 2;
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

  *(v0 + 240) = v10;
  v6 = *(v0 + 184);
  v5 = sub_CBF4;
  v7 = 0;

  return _swift_task_switch(v5, v6, v7);
}

id sub_CBF4()
{
  v1 = [*(v0 + 192) defaultWorkspace];
  if (v1 && (v2 = v1, v3 = [v1 canChangeDefaultAppForCategory:10], v2, v3))
  {
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = [result isDefaultMessagingAppModificationAllowed];

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 241) = v7;
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_CD1C;
  v9 = *(v0 + 184);

  return sub_E69C(0);
}

uint64_t sub_CD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v7 = v5[25];
  v8 = *v4;

  v9 = swift_task_alloc();
  v6[26] = v9;
  *v9 = v8;
  v9[1] = sub_CE6C;
  v10 = v5[23];

  return sub_E69C(1);
}

uint64_t sub_CE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[7] = v4;
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v7 = v5[26];
  v8 = *v4;

  v9 = swift_task_alloc();
  v6[27] = v9;
  *v9 = v8;
  v9[1] = sub_CFBC;
  v10 = v5[23];

  return sub_ECA4(0);
}

uint64_t sub_CFBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[12] = v1;
  v3[13] = a1;
  v4 = v2[27];
  v5 = *v1;

  v6 = swift_task_alloc();
  v3[28] = v6;
  *v6 = v5;
  v6[1] = sub_D104;
  v7 = v2[23];

  return sub_ECA4(1);
}

uint64_t sub_D104(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 112) = v1;
  *(v3 + 120) = a1;
  v4 = *(v2 + 224);
  v6 = *v1;

  return _swift_task_switch(sub_D204, 0, 0);
}

uint64_t sub_D204()
{
  v1 = *(v0 + 152);
  *(v0 + 232) = sub_1496C();
  v3 = sub_1492C();

  return _swift_task_switch(sub_D290, v3, v2);
}

uint64_t sub_D290()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);

  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 144);
  if (*(v4 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingComposingAppAvailability) != v3)
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 128) = v4;
    sub_5AD0();
    sub_1430C();

    v4 = *(v0 + 144);
  }

  v6 = *(v0 + 241);
  if (*(v4 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability) != v6)
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v4;
    *(v7 + 24) = v6;
    *(v0 + 136) = v4;
    sub_5AD0();
    sub_1430C();

    v8 = *(v0 + 144);
  }

  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  sub_AC7C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_AD54(v11, v12, v13, v14);
  sub_AFA4(v10);
  sub_B054(v9);

  v15 = *(v0 + 168);
  v16 = *(v0 + 176);

  return _swift_task_switch(sub_D4E4, v15, v16);
}

uint64_t sub_D4E4()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t getEnumTagSinglePayload for DefaultMessagingAppsModel.MessagingMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultMessagingAppsModel.MessagingMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultMessagingAppsModel.MessagingMethod.Availability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultMessagingAppsModel.MessagingMethod.Availability(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_D818()
{
  result = qword_21178;
  if (!qword_21178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21178);
  }

  return result;
}

Swift::Int sub_D880()
{
  v1 = *v0;
  sub_14A6C();
  sub_14A7C(v1);
  return sub_14A8C();
}

Swift::Int sub_D8F4()
{
  v1 = *v0;
  sub_14A6C();
  sub_14A7C(v1);
  return sub_14A8C();
}

uint64_t sub_D938(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x676E6974786574;
  }

  else
  {
    v4 = 0x6E69736F706D6F63;
  }

  if (v3)
  {
    v5 = 0xE900000000000067;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x676E6974786574;
  }

  else
  {
    v6 = 0x6E69736F706D6F63;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE900000000000067;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_14A5C();
  }

  return v9 & 1;
}

Swift::Int sub_D9E4()
{
  v1 = *v0;
  sub_14A6C();
  sub_148DC();

  return sub_14A8C();
}

uint64_t sub_DA6C()
{
  *v0;
  sub_148DC();
}

Swift::Int sub_DAE0()
{
  v1 = *v0;
  sub_14A6C();
  sub_148DC();

  return sub_14A8C();
}

uint64_t sub_DB64@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1CEA8;
  v8._object = v3;
  v5 = sub_14A4C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_DBC4(uint64_t *a1@<X8>)
{
  v2 = 0x6E69736F706D6F63;
  if (*v1)
  {
    v2 = 0x676E6974786574;
  }

  v3 = 0xE900000000000067;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_DC08()
{
  if (*v0)
  {
    result = 0x676E6974786574;
  }

  else
  {
    result = 0x6E69736F706D6F63;
  }

  *v0;
  return result;
}

unint64_t sub_DC4C()
{
  result = qword_21180;
  if (!qword_21180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21180);
  }

  return result;
}

uint64_t sub_DCA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DCDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6C00;

  return sub_C614(a1, v4, v5, v6);
}

uint64_t sub_DD90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_DDD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6C00;

  return sub_BCD8(a1, v4, v5, v6);
}

uint64_t sub_DEC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_14A5C() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_14A5C() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_DFE4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    if (!a6)
    {
      v16 = 0;
      return v16 & 1;
    }

    goto LABEL_12;
  }

  if (!a6)
  {
    sub_2868(a1, a2);
LABEL_12:
    sub_2868(a5, a6);
    sub_5860(a1, a2);
    v17 = a5;
    v18 = a6;
LABEL_13:
    sub_5860(v17, v18);
    v16 = 1;
    return v16 & 1;
  }

  if ((a1 != a5 || a2 != a6) && (sub_14A5C() & 1) == 0)
  {
    sub_2868(a1, a2);
    sub_2868(a1, a2);
    sub_2868(a5, a6);

    v17 = a1;
    v18 = a2;
    goto LABEL_13;
  }

  if (a3 == a7 && a4 == a8)
  {
    sub_2868(a1, a2);
    sub_2868(a1, a2);
    sub_2868(a5, a6);

    sub_5860(a1, a2);
    v16 = 0;
  }

  else
  {
    v19 = sub_14A5C();
    sub_2868(a1, a2);
    sub_2868(a1, a2);
    sub_2868(a5, a6);

    sub_5860(a1, a2);
    v16 = v19 ^ 1;
  }

  return v16 & 1;
}

uint64_t sub_E320()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_E394@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_E3A0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_14A6C();
  sub_148DC();
  sub_148DC();
  return sub_14A8C();
}

uint64_t sub_E408()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_148DC();

  return sub_148DC();
}

Swift::Int sub_E458()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_14A6C();
  sub_148DC();
  sub_148DC();
  return sub_14A8C();
}

uint64_t sub_E4BC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_14A5C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_14A5C();
    }
  }

  return result;
}

uint64_t sub_E5A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2820(&qword_20F08, &qword_15C80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1499C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v13 = a1;
  sub_12438(0, 0, v10, a5, v12);
}

uint64_t sub_E69C(char a1)
{
  *(v2 + 24) = a1;

  return _swift_task_switch(sub_E72C, v1, 0);
}

uint64_t sub_E72C()
{
  v51 = v0;
  if (qword_20E18 != -1)
  {
    swift_once();
  }

  v1 = sub_143BC();
  sub_5CAC(v1, qword_21FB8);
  v2 = sub_1439C();
  v3 = sub_149DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v50 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E6974786574;
    }

    else
    {
      v7 = 0x6E69736F706D6F63;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000067;
    }

    v9 = sub_5EF0(v7, v8, &v50);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Fetching default app for %{public}s", v5, 0xCu);
    sub_5FBC(v6);
  }

  v10 = [objc_opt_self() defaultWorkspace];
  if (!v10)
  {
LABEL_27:
    v31 = sub_1439C();
    v41 = sub_149BC();
    if (os_log_type_enabled(v31, v41))
    {
      v42 = *(v0 + 24);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *v43 = 136446210;
      if (v42)
      {
        v45 = 0x676E6974786574;
      }

      else
      {
        v45 = 0x6E69736F706D6F63;
      }

      if (v42)
      {
        v46 = 0xE700000000000000;
      }

      else
      {
        v46 = 0xE900000000000067;
      }

      v47 = sub_5EF0(v45, v46, &v50);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_0, v31, v41, "Couldn’t fetch default %{public}s app: missing workspace or bundle ID", v43, 0xCu);
      sub_5FBC(v44);
    }

    goto LABEL_35;
  }

  if (*(v0 + 24))
  {
    v11 = 10;
  }

  else
  {
    v11 = 3;
  }

  *(v0 + 16) = 0;
  v12 = v10;
  v13 = [v10 defaultApplicationForCategory:v11 error:v0 + 16];

  v14 = *(v0 + 16);
  if (v13)
  {
    v15 = v14;
    v16 = v13;
    v17 = [v16 bundleIdentifier];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1488C();
      v21 = v20;

      v22 = [v16 localizedName];
      v23 = sub_1488C();
      v25 = v24;

      v26 = v25;
      v27 = v23;
      v28 = v21;
      v29 = v19;
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  v30 = v14;
  sub_1429C();

  swift_willThrow();
  swift_errorRetain();
  v31 = sub_1439C();
  v32 = sub_149BC();

  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_36;
  }

  v33 = *(v0 + 24);
  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v50 = v36;
  *v34 = 136446466;
  if (v33)
  {
    v37 = 0x676E6974786574;
  }

  else
  {
    v37 = 0x6E69736F706D6F63;
  }

  if (v33)
  {
    v38 = 0xE700000000000000;
  }

  else
  {
    v38 = 0xE900000000000067;
  }

  v39 = sub_5EF0(v37, v38, &v50);

  *(v34 + 4) = v39;
  *(v34 + 12) = 2112;
  swift_errorRetain();
  v40 = _swift_stdlib_bridgeErrorToNSError();
  *(v34 + 14) = v40;
  *v35 = v40;
  _os_log_impl(&dword_0, v31, v32, "Couldn’t fetch default %{public}s app: %@", v34, 0x16u);
  sub_68C8(v35, &unk_21310, &unk_15F40);

  sub_5FBC(v36);

LABEL_35:

LABEL_36:
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
LABEL_37:
  v48 = *(v0 + 8);

  return v48(v29, v28, v27, v26);
}

uint64_t sub_ECA4(char a1)
{
  *(v2 + 88) = a1;
  v3 = sub_2820(&qword_212C8, &qword_15EF8);
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_ED70, v1, 0);
}

uint64_t sub_ED70()
{
  v53 = v0;
  if (qword_20E18 != -1)
  {
    swift_once();
  }

  v1 = sub_143BC();
  sub_5CAC(v1, qword_21FB8);
  v2 = sub_1439C();
  v3 = sub_149DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v52 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E6974786574;
    }

    else
    {
      v7 = 0x6E69736F706D6F63;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000067;
    }

    v9 = sub_5EF0(v7, v8, &v52);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Fetching available apps for %{public}s", v5, 0xCu);
    sub_5FBC(v6);
  }

  if (*(v0 + 88))
  {
    v10 = 10;
  }

  else
  {
    v10 = 3;
  }

  v11 = [objc_opt_self() enumeratorForViableDefaultAppsForCategory:v10 options:0];
  v12 = sub_10068();

  v13 = v12;
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v13 + 32;
    if (*(v0 + 88))
    {
      v16 = 0x676E6974786574;
    }

    else
    {
      v16 = 0x6E69736F706D6F63;
    }

    v49 = v16;
    v17 = 0xE700000000000000;
    v18 = &_swiftEmptyArrayStorage;
    if ((*(v0 + 88) & 1) == 0)
    {
      v17 = 0xE900000000000067;
    }

    v48 = v17;
    do
    {
      sub_6114(v15, v0 + 16);
      sub_102C0();
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 48);
        v20 = [v19 bundleIdentifier];
        if (v20)
        {
          v21 = v20;
          v50 = sub_1488C();
          v23 = v22;

          v24 = [v19 localizedName];
          v25 = sub_1488C();
          v27 = v26;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_FE9C(0, *(v18 + 2) + 1, 1, v18);
          }

          v29 = *(v18 + 2);
          v28 = *(v18 + 3);
          v30 = v18;
          if (v29 >= v28 >> 1)
          {
            v30 = sub_FE9C((v28 > 1), v29 + 1, 1, v18);
          }

          *(v30 + 2) = v29 + 1;
          v18 = v30;
          v31 = &v30[32 * v29];
          *(v31 + 4) = v50;
          *(v31 + 5) = v23;
          *(v31 + 6) = v25;
          *(v31 + 7) = v27;
        }

        else
        {

          v32 = sub_1439C();
          v33 = sub_149BC();

          if (os_log_type_enabled(v32, v33))
          {
            v51 = v33;
            v34 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *v34 = 136446466;
            v35 = sub_5EF0(v49, v48, &v52);

            *(v34 + 4) = v35;
            *(v34 + 12) = 2080;
            v36 = [v19 bundleIdentifier];
            if (v36)
            {
              v37 = v36;
              v38 = sub_1488C();
              v40 = v39;
            }

            else
            {
              v40 = 0xE300000000000000;
              v38 = 7104878;
            }

            v41 = sub_5EF0(v38, v40, &v52);

            *(v34 + 14) = v41;
            _os_log_impl(&dword_0, v32, v51, "Couldn’t initialize %{public}s app: %s", v34, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }
      }

      v15 += 32;
      --v14;
    }

    while (v14);
  }

  else
  {

    v18 = &_swiftEmptyArrayStorage;
  }

  v42 = *(v0 + 72);
  v43 = *(v0 + 80);
  v44 = *(v0 + 64);
  *(v0 + 56) = v18;
  swift_getKeyPath();
  sub_1428C();
  sub_2820(&qword_212D8, &qword_15F20);
  sub_5740(&qword_212E0, &qword_212D8, &qword_15F20);
  sub_5740(&qword_212E8, &qword_212C8, &qword_15EF8);
  v45 = sub_148FC();
  (*(v42 + 8))(v43, v44);

  v46 = *(v0 + 8);

  return v46(v45);
}

uint64_t sub_F370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 233) = a5;
  *(v6 + 160) = a4;
  *(v6 + 168) = v5;
  *(v6 + 144) = a1;
  *(v6 + 152) = a2;
  v7 = sub_2820(&qword_212B8, &qword_15EE8);
  *(v6 + 176) = v7;
  v8 = *(v7 - 8);
  *(v6 + 184) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_F444, v5, 0);
}

uint64_t sub_F444()
{
  v27 = v0;
  if (qword_20E18 != -1)
  {
    swift_once();
  }

  v1 = sub_143BC();
  *(v0 + 200) = sub_5CAC(v1, qword_21FB8);
  v2 = sub_1439C();
  v3 = sub_149DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 233);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E6974786574;
    }

    else
    {
      v7 = 0x6E69736F706D6F63;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE900000000000067;
    }

    v9 = sub_5EF0(v7, v8, &v26);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Setting default app for %{public}s", v5, 0xCu);
    sub_5FBC(v6);
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  objc_allocWithZone(LSApplicationRecord);

  v12 = sub_1367C(v10, v11, 1);
  *(v0 + 208) = v12;
  v16 = v12;
  v17 = [objc_opt_self() defaultWorkspace];
  *(v0 + 216) = v17;
  if (v17)
  {
    v18 = v17;
    v19 = *(v0 + 184);
    v20 = *(v0 + 192);
    v21 = *(v0 + 176);
    v22 = 3;
    if (*(v0 + 233))
    {
      v22 = 10;
    }

    v25 = v22;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_F96C;
    swift_continuation_init();
    *(v0 + 136) = v21;
    v23 = sub_FFA8((v0 + 112));
    v24 = v16;
    sub_2820(&qword_212C0, &qword_15EF0);
    sub_1493C();
    (*(v19 + 32))(v23, v20, v21);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_FCF0;
    *(v0 + 104) = &unk_1D4E0;
    [v18 setDefaultApplicationForCategory:v25 toApplicationRecord:v24 completionHandler:?];
    (*(v19 + 8))(v23, v21);

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v13 = *(v0 + 192);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_F96C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_FAFC;
  }

  else
  {
    v5 = sub_FA8C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_FA8C()
{
  v1 = v0[26];
  v2 = v0[27];

  v3 = v0[24];

  v4 = v0[1];

  return v4();
}

uint64_t sub_FAFC()
{
  v21 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  swift_willThrow();

  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);

  v8 = sub_1439C();
  v9 = sub_149BC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 233);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v13 = 136446466;
    if (v10)
    {
      v14 = 0x676E6974786574;
    }

    else
    {
      v14 = 0x6E69736F706D6F63;
    }

    if (v10)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE900000000000067;
    }

    v16 = sub_5EF0(v14, v15, v20);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_5EF0(v12, v11, v20);
    _os_log_impl(&dword_0, v8, v9, "Couldn’t change default %{public}s app: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v0 + 192);

  v18 = *(v0 + 8);

  return v18();
}

void sub_FCF0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10024((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_2820(&qword_212B8, &qword_15EE8);
    sub_1494C();
  }

  else
  {
    sub_2820(&qword_212B8, &qword_15EE8);
    sub_1495C();
  }
}

uint64_t sub_FD94()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_FDE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_FE30(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_FE9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2820(&qword_212F0, &qword_15F28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_FFA8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_10024(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10068()
{
  v0 = sub_142DC();
  v23 = *(v0 - 8);
  v1 = *(v23 + 64);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_149AC();
  sub_1030C();
  sub_149FC();
  v4 = &_swiftEmptyArrayStorage;
  v5 = 0;
  if (v25)
  {
    v6 = (&_swiftEmptyArrayStorage + 32);
    while (1)
    {
      result = sub_10364(&v24, v26);
      if (!v5)
      {
        v8 = v4[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        sub_2820(&qword_21308, &qword_15F38);
        v11 = swift_allocObject();
        v12 = j__malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 1;
        }

        v14 = v13 >> 5;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 5);
        v15 = (v11 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          v17 = v4 + 4;
          if (v11 != v4 || v15 >= v17 + 32 * v16)
          {
            memmove(v11 + 4, v17, 32 * v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + 32 * v16);
        v5 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v4 = v11;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      sub_10364(v26, v6);
      v6 += 2;
      sub_149FC();
      if (!v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  (*(v23 + 8))(v3, v0);
  result = sub_68C8(&v24, &qword_21300, &qword_15F30);
  v19 = v4[3];
  if (v19 < 2)
  {
    return v4;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v4[2] = v21;
    return v4;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_102C0()
{
  result = qword_212D0;
  if (!qword_212D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_212D0);
  }

  return result;
}

unint64_t sub_1030C()
{
  result = qword_212F8;
  if (!qword_212F8)
  {
    sub_142DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_212F8);
  }

  return result;
}

_OWORD *sub_10364(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10378()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_6C00;

  return sub_C99C();
}

uint64_t sub_1042C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1046C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_5DFC;

  return sub_C99C();
}

uint64_t sub_10538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2820(&qword_20F20, &unk_15F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_142BC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2820(&qword_20F20, &unk_15F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_142BC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for DefaultMessagingAppsSection()
{
  result = qword_213D8;
  if (!qword_213D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_107C4()
{
  sub_10878();
  if (v0 <= 0x3F)
  {
    sub_142BC();
    if (v1 <= 0x3F)
    {
      sub_108D0();
      if (v2 <= 0x3F)
      {
        sub_10920();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10878()
{
  if (!qword_213E8)
  {
    sub_142BC();
    v0 = sub_149EC();
    if (!v1)
    {
      atomic_store(v0, &qword_213E8);
    }
  }
}

void sub_108D0()
{
  if (!qword_213F0)
  {
    v0 = sub_1491C();
    if (!v1)
    {
      atomic_store(v0, &qword_213F0);
    }
  }
}

void sub_10920()
{
  if (!qword_213F8)
  {
    sub_56B4(&qword_20EC0, &qword_156F0);
    v0 = sub_1475C();
    if (!v1)
    {
      atomic_store(v0, &qword_213F8);
    }
  }
}

uint64_t sub_109A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1448C();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2820(&qword_21458, &qword_16010);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_2820(&qword_21450, &qword_16008);
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  sub_1497C();
  v23 = sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  v15 = a1 + *(type metadata accessor for DefaultMessagingAppsSection() + 32);
  v16 = *(v15 + 8);
  v34 = *v15;
  v35 = v16;
  v17 = *(v15 + 32);
  v36 = *(v15 + 16);
  v37 = v17;
  sub_2820(&qword_21468, &qword_16018);
  v18 = sub_1473C();
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  __chkstk_darwin(v18);
  sub_2820(&qword_20EC0, &qword_156F0);
  sub_2820(&qword_21488, &qword_16028);
  sub_11E00();
  sub_11ED8();
  sub_11CCC();
  sub_1471C();
  v19 = sub_5740(&qword_21460, &qword_21458, &qword_16010);
  sub_1460C();
  (*(v24 + 8))(v10, v7);
  sub_1447C();
  v34 = v7;
  v35 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v26;
  v21 = v29;
  sub_145FC();
  (*(v28 + 8))(v6, v21);
  (*(v25 + 8))(v14, v20);
}

uint64_t sub_10DC8(uint64_t a1)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + *(type metadata accessor for DefaultMessagingAppsSection() + 28));

  sub_2820(&qword_212D8, &qword_15F20);
  sub_2820(&qword_214B0, &qword_16040);
  sub_5740(&qword_214B8, &qword_212D8, &qword_15F20);
  sub_56B4(&qword_20E28, &unk_16030);
  sub_56B4(&qword_20EC0, &qword_156F0);
  sub_5740(&qword_214A8, &qword_20E28, &unk_16030);
  sub_11E00();
  swift_getOpaqueTypeConformance2();
  sub_11FF8();
  sub_1476C();
}

uint64_t sub_10FC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_2820(&qword_20E28, &unk_16030);
  v18 = *(v3 - 8);
  v19 = v3;
  v4 = *(v18 + 64);
  __chkstk_darwin(v3);
  v6 = v17 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  sub_1497C();
  v17[2] = sub_1496C();
  sub_1492C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v17[1] = v17;
  v12 = __chkstk_darwin(isCurrentExecutor);
  v17[-4] = v7;
  v17[-3] = v8;
  v17[-2] = v9;
  v17[-1] = v10;
  __chkstk_darwin(v12);
  v17[-4] = v7;
  v17[-3] = v8;
  v17[-2] = v9;
  v17[-1] = v10;
  sub_2820(&qword_214C8, &unk_16048);
  v13 = v9;
  sub_5740(&qword_214D0, &qword_214C8, &unk_16048);
  sub_146CC();
  v14 = v20;
  (*(v18 + 32))(v20, v6, v19);
  v15 = v14 + *(sub_2820(&qword_20E30, &qword_15450) + 36);
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v13;
  *(v15 + 24) = v10;
  *(v15 + 32) = 1;
}

uint64_t sub_11254@<X0>(uint64_t a1@<X8>)
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_11CCC();

  v2 = sub_145BC();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1133C()
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = objc_allocWithZone(ISIcon);
  v1 = sub_1487C();
  [v0 initWithBundleIdentifier:v1];

  v2 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  sub_1436C();
}

uint64_t sub_1145C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2820(&qword_20F20, &unk_15F70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_142BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_11D20(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_11D90(v7);

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    v17 = sub_145AC();
    v18 = v21;
    v23 = v22;
    v20 = v24;
    (*(v9 + 8))(v15, v8);

    v19 = v23 & 1;
  }

  *a2 = v17;
  a2[1] = v18;
  a2[2] = v19;
  a2[3] = v20;
  return result;
}

uint64_t sub_116BC()
{
  v1 = v0;
  v2 = sub_142BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1486C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = type metadata accessor for DefaultMessagingAppsSection();
  v16 = v15;
  if (!*(*(v0 + *(v15 + 28)) + 16))
  {
    goto LABEL_4;
  }

  v17 = v0 + *(v15 + 32);
  v18 = *(v17 + 8);
  v37 = *v17;
  v38 = v18;
  v19 = *(v17 + 32);
  v39 = *(v17 + 16);
  v40 = v19;
  sub_2820(&qword_21468, &qword_16018);
  sub_1472C();
  v20 = v34;
  if (v34)
  {
    v30 = v2;
    v31 = v8;
    v21 = v33;
    v32 = v7;
    v23 = v35;
    v22 = v36;

    sub_5860(v21, v20);
    sub_1485C();
    sub_2820(&qword_21470, &qword_16020);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_15F60;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_11C78();
    *(v24 + 32) = v23;
    *(v24 + 40) = v22;
    sub_1484C();
    (*(v3 + 16))(v6, v1 + *(v16 + 20), v30);
    v25 = v31;
    v26 = v32;
    (*(v31 + 16))(v12, v14, v32);
    v37 = sub_148AC();
    v38 = v27;
    sub_11CCC();
    v28 = sub_145BC();
    (*(v25 + 8))(v14, v26);
    return v28;
  }

  else
  {
LABEL_4:
    (*(v3 + 16))(v6, v1 + *(v16 + 24), v2);
    return sub_145AC();
  }
}

uint64_t sub_119CC()
{
  sub_1145C(v0, v2);
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_116BC();

  sub_2820(&qword_21438, &qword_15FF8);
  sub_2820(&qword_21440, &qword_16000);
  sub_11BFC();
  sub_56B4(&qword_21450, &qword_16008);
  sub_1448C();
  sub_56B4(&qword_21458, &qword_16010);
  sub_5740(&qword_21460, &qword_21458, &qword_16010);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1477C();
}

unint64_t sub_11BFC()
{
  result = qword_21448;
  if (!qword_21448)
  {
    sub_56B4(&qword_21438, &qword_15FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21448);
  }

  return result;
}

unint64_t sub_11C78()
{
  result = qword_21478;
  if (!qword_21478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21478);
  }

  return result;
}

unint64_t sub_11CCC()
{
  result = qword_21480;
  if (!qword_21480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21480);
  }

  return result;
}

uint64_t sub_11D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2820(&qword_20F20, &unk_15F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11D90(uint64_t a1)
{
  v2 = sub_2820(&qword_20F20, &unk_15F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_11E00()
{
  result = qword_21490;
  if (!qword_21490)
  {
    sub_56B4(&qword_20EC0, &qword_156F0);
    sub_11E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21490);
  }

  return result;
}

unint64_t sub_11E84()
{
  result = qword_21498;
  if (!qword_21498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21498);
  }

  return result;
}

unint64_t sub_11ED8()
{
  result = qword_214A0;
  if (!qword_214A0)
  {
    sub_56B4(&qword_21488, &qword_16028);
    sub_56B4(&qword_20E28, &unk_16030);
    sub_56B4(&qword_20EC0, &qword_156F0);
    sub_5740(&qword_214A8, &qword_20E28, &unk_16030);
    sub_11E00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214A0);
  }

  return result;
}

unint64_t sub_11FF8()
{
  result = qword_214C0;
  if (!qword_214C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214C0);
  }

  return result;
}

uint64_t sub_1204C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_11254(a1);
}

uint64_t sub_12058()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1133C();
}

unint64_t sub_12068()
{
  result = qword_214D8;
  if (!qword_214D8)
  {
    sub_56B4(&qword_214E0, &unk_16058);
    sub_11BFC();
    sub_56B4(&qword_21450, &qword_16008);
    sub_1448C();
    sub_56B4(&qword_21458, &qword_16010);
    sub_5740(&qword_21460, &qword_21458, &qword_16010);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214D8);
  }

  return result;
}

uint64_t sub_121D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_137A8(&qword_20F00, 255, type metadata accessor for DefaultMessagingAppsModel);
  sub_1431C();

  *a2 = *(v3 + OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability);
  return result;
}

uint64_t sub_122F0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_137A8(&qword_20F00, 255, type metadata accessor for DefaultMessagingAppsModel);
  sub_1431C();

  v6 = (v5 + *a2);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *a3 = *v6;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v10;
  return sub_2868(v7, v8);
}

uint64_t sub_123D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *a2;
  sub_2868(*a1, v6);
  return a5(v7, v6, v8, v9);
}

uint64_t sub_12438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2820(&qword_20F08, &qword_15C80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_13914(a3, v27 - v11);
  v13 = sub_1499C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_13984(v12);
  }

  else
  {
    sub_1498C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1492C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_148BC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_13984(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_13984(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t DefaultMessagingAppsSettingsProvider.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DefaultMessagingAppsSettingsProvider.localizedTitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DefaultMessagingAppsSettingsProvider.localizedNavigationTitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t DefaultMessagingAppsSettingsProvider.localizedDetail.getter()
{
  v1 = v0;
  v2 = sub_2820(&qword_20F08, &qword_15C80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  if (*(v0 + 88) == 1)
  {
    v6 = *(v0 + 80);
    v40 = *(v0 + 72);
    v41 = v6;
    sub_2820(&qword_214E8, &qword_16068);
    sub_146EC();
    v7 = v39;
    v8 = sub_1499C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_12438(0, 0, v5, &unk_15F50, v9);
  }

  v10 = *(v1 + 80);
  v40 = *(v1 + 72);
  v41 = v10;
  sub_2820(&qword_214E8, &qword_16068);
  sub_146EC();
  v11 = v39;
  swift_getKeyPath();
  v40 = v11;
  sub_137A8(&qword_20F00, 255, type metadata accessor for DefaultMessagingAppsModel);
  sub_1431C();

  v12 = v11[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__changingTextingAppAvailability];

  v13 = &qword_21000;
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = *(v1 + 80);
  v40 = *(v1 + 72);
  v41 = v14;
  sub_146EC();
  v15 = v39;
  swift_getKeyPath();
  v40 = v15;
  sub_1431C();

  v16 = *&v15[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp];
  v17 = *&v15[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp + 8];
  v18 = *&v15[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp + 16];
  v37 = *&v15[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultComposingApp + 24];
  v38 = v16;
  v36 = v18;
  sub_2868(v16, v17);

  v19 = *(v1 + 80);
  v40 = *(v1 + 72);
  v41 = v19;
  sub_146EC();
  v20 = v39;
  swift_getKeyPath();
  v40 = v20;
  sub_1431C();

  v22 = *&v20[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp];
  v21 = *&v20[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 8];
  v24 = *&v20[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 16];
  v23 = *&v20[OBJC_IVAR____TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel__defaultTextingApp + 24];
  sub_2868(v22, v21);

  if (!v17)
  {
    if (!v21)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v21)
  {
LABEL_13:
    sub_5860(v38, v17);
    v26 = v22;
    v27 = v21;
LABEL_14:
    sub_5860(v26, v27);
    goto LABEL_15;
  }

  v25 = v38;
  if ((v38 != v22 || v17 != v21) && (sub_14A5C() & 1) == 0)
  {

    v26 = v25;
    v27 = v17;
    goto LABEL_14;
  }

  if (v36 == v24 && v37 == v23)
  {

    sub_5860(v38, v17);
    v13 = &qword_21000;
    goto LABEL_17;
  }

  v29 = sub_14A5C();

  sub_5860(v38, v17);
  v13 = &qword_21000;
  if ((v29 & 1) == 0)
  {
LABEL_15:
    v40 = 2;
    sub_13624();
    return sub_14A0C();
  }

LABEL_17:
  v30 = *(v1 + 80);
  v40 = *(v1 + 72);
  v41 = v30;
  sub_146EC();
  v31 = v39;
  swift_getKeyPath();
  v40 = v31;
  sub_1431C();

  v32 = &v31[v13[34]];
  v33 = v32[1];
  v34 = v32[2];
  v35 = v32[3];
  sub_2868(*v32, v33);

  if (!v33)
  {
    return 0;
  }

  return v34;
}

uint64_t property wrapper backing initializer of DefaultMessagingAppsSettingsProvider.viewModel()
{
  type metadata accessor for DefaultMessagingAppsModel();
  sub_146DC();
  return v1;
}

uint64_t DefaultMessagingAppsSettingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultMessagingAppsSettingsProvider.init(for:)(0, 0);
  return v0;
}

uint64_t DefaultMessagingAppsSettingsProvider.__allocating_init(for:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DefaultMessagingAppsSettingsProvider.init(for:)(a1, a2);
  return v4;
}

uint64_t *DefaultMessagingAppsSettingsProvider.init(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_142FC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1483C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v3[2] = _s28DefaultMessagingAppsSettings0abcD8ProviderC2idSSvpfi_0();
  v3[3] = v11;
  sub_147BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  v3[4] = sub_1489C();
  v3[5] = v15;
  sub_147BC();
  v16 = [v13 bundleForClass:ObjCClassFromMetadata];
  sub_142EC();
  v3[6] = sub_1489C();
  v3[7] = v17;
  [objc_allocWithZone(type metadata accessor for DefaultMessagingAppsModel()) init];
  sub_146DC();
  v3[9] = v23;
  v3[10] = v24;
  *(v3 + 88) = 0;
  v18 = 1;
  if (a2)
  {
    *(v3 + 88) = 1;
    v19 = objc_allocWithZone(LSApplicationRecord);
    v20 = sub_1367C(a1, a2, 1);
    v21 = [v20 supportedDefaultAppCategories];

    v18 = (v21 & 0x408) != 0;
  }

  *(v3 + 64) = v18;
  return v3;
}

uint64_t DefaultMessagingAppsSettingsProvider.content.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 72);
  sub_2820(&qword_214E8, &qword_16068);
  sub_146EC();
  sub_146DC();
  sub_2820(&qword_20EC0, &qword_156F0);
  sub_146DC();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(&v5 + 1);
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = sub_13758;
  *(a1 + 72) = v1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
}

uint64_t sub_13100(uint64_t a1)
{
  v2 = sub_2820(&qword_20F08, &qword_15C80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v11 - v4;
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 88) == 1)
  {
    v6 = *(a1 + 80);
    v11[2] = *(a1 + 72);
    v11[3] = v6;
    sub_2820(&qword_214E8, &qword_16068);
    sub_146EC();
    v7 = v11[1];
    v8 = sub_1499C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_12438(0, 0, v5, &unk_16200, v9);
  }

  else
  {
  }
}

uint64_t DefaultMessagingAppsSettingsProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return v0;
}

uint64_t DefaultMessagingAppsSettingsProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return _swift_deallocClassInstance(v0, 89, 7);
}

uint64_t sub_13384()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_133B8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t sub_133F8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_13450()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);

  return v1;
}

uint64_t *sub_134A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = DefaultMessagingAppsSettingsProvider.init(for:)(0, 0);
  *a1 = v2;
  return result;
}

uint64_t *sub_134EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  result = DefaultMessagingAppsSettingsProvider.init(for:)(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_13540@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_13624()
{
  result = qword_214F0;
  if (!qword_214F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214F0);
  }

  return result;
}

id sub_1367C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1487C();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1429C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_137A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_13834()
{
  result = qword_215C8;
  if (!qword_215C8)
  {
    sub_56B4(&qword_215D0, "^#");
    sub_138C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_215C8);
  }

  return result;
}

unint64_t sub_138C0()
{
  result = qword_215D8;
  if (!qword_215D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_215D8);
  }

  return result;
}

uint64_t sub_13914(uint64_t a1, uint64_t a2)
{
  v4 = sub_2820(&qword_20F08, &qword_15C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13984(uint64_t a1)
{
  v2 = sub_2820(&qword_20F08, &qword_15C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_139EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13AE4;

  return v7(a1);
}

uint64_t sub_13AE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_13BDC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_13C14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_6C00;

  return sub_139EC(a1, v5);
}

uint64_t sub_13CCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5DFC;

  return sub_139EC(a1, v5);
}

uint64_t sub_13D94(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_21FA8 == -1)
  {
    if (qword_21FB0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1425C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_21FB0)
    {
      return _availability_version_check();
    }
  }

  if (qword_21FA0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_14274();
    a3 = v10;
    a4 = v9;
    v8 = dword_21F90 < v11;
    if (dword_21F90 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_21F94 > a3)
      {
        return 1;
      }

      if (dword_21F94 >= a3)
      {
        return dword_21F98 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_21F90 < a2;
  if (dword_21F90 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_13F28(uint64_t result)
{
  v1 = qword_21FB0;
  if (qword_21FB0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_21FB0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_21F90, &dword_21F94, &dword_21F98);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}