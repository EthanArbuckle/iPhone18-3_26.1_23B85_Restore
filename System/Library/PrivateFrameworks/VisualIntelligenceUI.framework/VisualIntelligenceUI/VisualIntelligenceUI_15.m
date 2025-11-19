uint64_t sub_21E0BEA7C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_21E1427F4();
  }

  else if (*(a2 + 16) && (sub_21E142C14(), v5 = sub_21E1423C4(), MEMORY[0x28223BE20](v5), v13 = &v15, v14 = a1, sub_21E0C38E4(sub_21DFE90E0, v12), v6 = sub_21E142C44(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      MEMORY[0x28223BE20](v6);
      v13 = v10;
      v14 = a1;

      v4 = sub_21E0C372C(sub_21DF60774, v12, "VisualIntelligenceUI/NewActionModel.swift");

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_21E0BEC5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21E13D994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_21E0ECD50(&qword_27CEAD5F0, MEMORY[0x277D78FA8]), v7 = sub_21E142014(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_21E0ECD50(&qword_27CEAD5D8, MEMORY[0x277D78FA8]);
      v15 = sub_21E142074();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_21E0BEE74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 776) = v4;
  *(v5 + 1496) = a4;
  *(v5 + 768) = a3;
  *(v5 + 760) = a2;
  *(v5 + 752) = a1;
  v6 = sub_21E13DFB4();
  *(v5 + 784) = v6;
  *(v5 + 792) = *(v6 - 8);
  *(v5 + 800) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE0);
  *(v5 + 808) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90);
  *(v5 + 816) = v7;
  *(v5 + 824) = *(v7 - 8);
  *(v5 + 832) = swift_task_alloc();
  *(v5 + 840) = swift_task_alloc();
  v8 = sub_21E13E224();
  *(v5 + 848) = v8;
  *(v5 + 856) = *(v8 - 8);
  *(v5 + 864) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD660);
  *(v5 + 872) = swift_task_alloc();
  v9 = sub_21E13F1B4();
  *(v5 + 880) = v9;
  *(v5 + 888) = *(v9 - 8);
  *(v5 + 896) = swift_task_alloc();
  *(v5 + 904) = swift_task_alloc();
  *(v5 + 912) = swift_task_alloc();
  *(v5 + 920) = swift_task_alloc();
  *(v5 + 928) = swift_task_alloc();
  *(v5 + 936) = swift_task_alloc();
  *(v5 + 944) = swift_task_alloc();
  v10 = sub_21E13EEB4();
  *(v5 + 952) = v10;
  *(v5 + 960) = *(v10 - 8);
  *(v5 + 968) = swift_task_alloc();
  *(v5 + 976) = swift_task_alloc();
  *(v5 + 984) = swift_task_alloc();
  *(v5 + 992) = swift_task_alloc();
  sub_21E13E314();
  *(v5 + 1000) = swift_task_alloc();
  v11 = sub_21E13D834();
  *(v5 + 1008) = v11;
  *(v5 + 1016) = *(v11 - 8);
  *(v5 + 1024) = swift_task_alloc();
  v12 = sub_21E13E014();
  *(v5 + 1032) = v12;
  *(v5 + 1040) = *(v12 - 8);
  *(v5 + 1048) = swift_task_alloc();
  v13 = sub_21E13D344();
  *(v5 + 1056) = v13;
  *(v5 + 1064) = *(v13 - 8);
  *(v5 + 1072) = swift_task_alloc();
  *(v5 + 1080) = swift_task_alloc();
  v14 = sub_21E13E004();
  *(v5 + 1088) = v14;
  *(v5 + 1096) = *(v14 - 8);
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  *(v5 + 1128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  *(v5 + 1136) = swift_task_alloc();
  *(v5 + 1144) = swift_task_alloc();
  v15 = sub_21E13EEE4();
  *(v5 + 1152) = v15;
  *(v5 + 1160) = *(v15 - 8);
  *(v5 + 1168) = swift_task_alloc();
  v16 = sub_21E13D994();
  *(v5 + 1176) = v16;
  *(v5 + 1184) = *(v16 - 8);
  *(v5 + 1192) = swift_task_alloc();
  *(v5 + 1200) = swift_task_alloc();
  *(v5 + 1208) = swift_task_alloc();
  *(v5 + 1216) = swift_task_alloc();
  *(v5 + 1224) = swift_task_alloc();
  *(v5 + 1232) = swift_task_alloc();
  *(v5 + 1240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  *(v5 + 1248) = swift_task_alloc();
  v17 = sub_21E13EF04();
  *(v5 + 1256) = v17;
  *(v5 + 1264) = *(v17 - 8);
  *(v5 + 1272) = swift_task_alloc();
  *(v5 + 1280) = sub_21E1423C4();
  *(v5 + 1288) = sub_21E1423B4();
  v19 = sub_21E142364();
  *(v5 + 1296) = v19;
  *(v5 + 1304) = v18;

  return MEMORY[0x2822009F8](sub_21E0BF5B4, v19, v18);
}

uint64_t sub_21E0BF5B4()
{
  v163 = v0;
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 752);
  swift_getKeyPath();
  *(v0 + 1312) = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *(v0 + 536) = v4;
  *(v0 + 1320) = sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  sub_21DF236C0(v4 + v5, v3, &qword_27CEACB50);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 1248);

    sub_21DF23614(v6, &qword_27CEACB50);
    sub_21E13EBF4();
    v7 = sub_21E13F1A4();
    v8 = sub_21E142564();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 896);
    v11 = *(v0 + 888);
    v12 = *(v0 + 880);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21DF05000, v7, v8, "Attempting to perform an action on an entity that isn't supported by SaliencyEngine", v13, 2u);
      MEMORY[0x223D540B0](v13, -1, -1);
    }

    (*(v11 + 8))(v10, v12);
    goto LABEL_51;
  }

  v14 = *(v0 + 1240);
  v15 = *(v0 + 1184);
  v16 = *(v0 + 1176);
  v17 = *(v0 + 1168);
  v18 = *(v0 + 1160);
  v19 = *(v0 + 1152);
  v20 = *(v0 + 760);
  (*(*(v0 + 1264) + 32))(*(v0 + 1272), *(v0 + 1248), *(v0 + 1256));
  *(v0 + 1488) = *MEMORY[0x277D78F58];
  v21 = *(v15 + 104);
  v21(v14);
  sub_21E13D954();
  v22 = *(v15 + 8);
  *(v0 + 1328) = v22;
  *(v0 + 1336) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v158 = v22;
  v22(v14, v16);
  LOBYTE(v14) = MEMORY[0x223D4F680](v20, v17);
  v23 = *(v18 + 8);
  v23(v17, v19);
  v155 = v23;
  if (v14 & 1) != 0 || (v24 = *(v0 + 1240), v25 = *(v0 + 1176), v26 = *(v0 + 1168), v27 = *(v0 + 1152), v28 = *(v0 + 760), (v21)(v24, *MEMORY[0x277D78F48], v25), sub_21E13D954(), v158(v24, v25), LOBYTE(v24) = MEMORY[0x223D4F680](v26, v28), v23(v26, v27), (v24))
  {
    sub_21E141D64();
    sub_21E13F864();
  }

  v29 = *(v0 + 1144);
  v30 = *(v0 + 1136);
  sub_21DF236C0(*(v0 + 768), v29, &qword_27CEAC550);
  sub_21DF236C0(v29, v30, &qword_27CEAC550);
  v31 = sub_21E13DFD4();
  v32 = *(v31 - 8);
  LODWORD(v29) = (*(v32 + 48))(v30, 1, v31);
  sub_21DF23614(v30, &qword_27CEAC550);
  if (v29 == 1)
  {
    v146 = v32;
    v147 = v31;
    v33 = *(v0 + 1160);
    v150 = *(v0 + 1152);
    v34 = *(v0 + 1128);
    v35 = *(v0 + 776);
    v148 = sub_21E13EE54();
    v152 = v36;
    swift_getKeyPath();
    *(v0 + 720) = v35;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v37 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
    swift_beginAccess();
    v38 = *(*(v35 + v37) + OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel_search);
    swift_getKeyPath();
    *(v0 + 704) = v38;
    sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel);

    sub_21E13D3C4();

    v39 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    sub_21DF236C0(v38 + v39, v34, &qword_27CEA6D48);

    if ((*(v33 + 48))(v34, 1, v150))
    {
      sub_21DF23614(*(v0 + 1128), &qword_27CEA6D48);

      goto LABEL_28;
    }

    v40 = *(v0 + 1168);
    v41 = *(v0 + 1152);
    v42 = *(v0 + 1128);
    (*(*(v0 + 1160) + 16))(v40, v42, v41);
    sub_21DF23614(v42, &qword_27CEA6D48);
    v43 = sub_21E13EE54();
    v45 = v44;
    v155(v40, v41);
    if (v148 == v43 && v152 == v45)
    {
    }

    else
    {
      v46 = sub_21E142B14();

      if ((v46 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v47 = *(v0 + 1080);
    v156 = *(v0 + 1072);
    v48 = *(v0 + 1064);
    v49 = *(v0 + 1056);
    v50 = *(v0 + 776);
    swift_getKeyPath();
    *(v0 + 624) = v50;
    sub_21E13D3C4();

    v51 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v153 = *(v48 + 16);
    v153(v47, *(v50 + v51) + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v49);
    swift_getKeyPath();
    *(v0 + 640) = v50;
    sub_21E13D3C4();

    v153(v156, *(v50 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity) + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v49);
    LOBYTE(v51) = sub_21E13D324();
    v52 = *(v48 + 8);
    v52(v156, v49);
    v52(v47, v49);
    v53 = *(v0 + 1120);
    if (v51)
    {
      (*(*(v0 + 1096) + 104))(*(v0 + 1120), *MEMORY[0x277D79300], *(v0 + 1088));
    }

    else
    {
      v54 = *(v0 + 1112);
      v55 = *(v0 + 1096);
      v56 = *(v0 + 1088);
      v57 = *(v0 + 776);
      swift_getKeyPath();
      *(v0 + 648) = v57;
      sub_21E13D3C4();

      v58 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
      swift_beginAccess();
      if (*(v57 + v58))
      {
        v59 = MEMORY[0x277D79308];
      }

      else
      {
        v59 = MEMORY[0x277D79300];
      }

      (*(v55 + 104))(v54, *v59, v56);
      (*(v55 + 32))(v53, v54, v56);
    }

    if (qword_280F69E50 != -1)
    {
      swift_once();
    }

    if (byte_280F6FD20 == 1 && (v60 = *(v0 + 776), swift_getKeyPath(), *(v0 + 712) = v60, sub_21E13D3C4(), , v61 = v60 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration, swift_beginAccess(), *(v61 + 1) == 1))
    {
      v62 = *(v0 + 776);
      sub_21E13D314();
      v63 = sub_21E13D314();
      v65 = v64;
      swift_getKeyPath();
      *(v0 + 728) = v62;
      sub_21E13D3C4();

      *(v0 + 736) = v62;
      swift_getKeyPath();
      sub_21E13D3E4();

      *(v61 + 8) = v63;
      *(v61 + 16) = v65;

      *(v0 + 544) = v62;
    }

    else
    {
      v66 = *(v0 + 776);
      swift_getKeyPath();
      *(v0 + 664) = v66;
      sub_21E13D3C4();

      *(v0 + 672) = v66;
      swift_getKeyPath();
      sub_21E13D3E4();

      v67 = v66 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration;
      swift_beginAccess();
      *(v67 + 8) = 0;
      *(v67 + 16) = 0;

      *(v0 + 688) = v66;
    }

    swift_getKeyPath();
    sub_21E13D3D4();

    v68 = *(v0 + 1144);
    v69 = *(v0 + 1096);
    v143 = *(v0 + 1088);
    v144 = *(v0 + 1120);
    v145 = *(v0 + 1048);
    v149 = *(v0 + 1040);
    v151 = *(v0 + 1032);
    v70 = *(v0 + 1024);
    v71 = *(v0 + 1016);
    v72 = *(v0 + 1008);
    v142 = *(v0 + 1104);
    v73 = *(v0 + 776);
    swift_getKeyPath();
    *(v0 + 696) = v73;
    sub_21E13D3C4();

    v74 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
    swift_beginAccess();
    (*(v71 + 16))(v70, v73 + v74, v72);
    sub_21E13D824();
    (*(v71 + 8))(v70, v72);
    (*(v69 + 16))(v142, v144, v143);
    sub_21E13DFF4();
    (*(v69 + 8))(v144, v143);
    sub_21DF23614(v68, &qword_27CEAC550);
    (*(v149 + 32))(v68, v145, v151);
    (*(v146 + 104))(v68, *MEMORY[0x277D792D8], v147);
    (*(v146 + 56))(v68, 0, 1, v147);
  }

LABEL_28:
  v75 = *(v0 + 992);
  v76 = *(v0 + 960);
  v77 = *(v0 + 952);
  sub_21E13EEC4();
  v78 = *(v76 + 88);
  *(v0 + 1344) = v78;
  *(v0 + 1352) = (v76 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v79 = v78(v75, v77);
  v80 = *MEMORY[0x277D79680];
  *(v0 + 1492) = *MEMORY[0x277D79680];
  if (v79 != v80)
  {
    (*(*(v0 + 960) + 8))(*(v0 + 992), *(v0 + 952));
    goto LABEL_41;
  }

  v81 = v79;
  v82 = *(v0 + 1232);
  v83 = *(v0 + 1224);
  v84 = *(v0 + 1184);
  v85 = *(v0 + 1176);
  v86 = *(v0 + 992);
  v157 = *(*(v0 + 960) + 96);
  v157(v86, *(v0 + 952));
  v154 = *(v84 + 32);
  v154(v82, v86, v85);
  (*(v84 + 16))(v83, v82, v85);
  v87 = *(v84 + 88);
  v88 = v87(v83, v85);
  v89 = *(v0 + 1224);
  if (v88 == *MEMORY[0x277D78F68])
  {
    v90 = *(v0 + 752);
    (*(*(v0 + 1184) + 96))(*(v0 + 1224), *(v0 + 1176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20);

    sub_21DF23614(v89, &qword_27CEA6D28);
    swift_getKeyPath();
    *(v0 + 608) = v90;
    sub_21E13D3C4();

    v91 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v161 = *(v90 + v91);
    v162[0] = 8;
    sub_21DF5706C(v161);
    LOBYTE(v91) = static CardLayout.== infix(_:_:)(&v161, v162);
    sub_21DF5AF24(v161);
    if ((v91 & 1) == 0)
    {
      v92 = *(v0 + 1232);
      v93 = *(v0 + 1176);
      goto LABEL_40;
    }
  }

  else
  {
    v158(*(v0 + 1224), *(v0 + 1176));
  }

  v94 = *(v0 + 984);
  v95 = *(v0 + 952);
  sub_21E13EEC4();
  if (v78(v94, v95) == v81)
  {
    v96 = *(v0 + 1216);
    v97 = *(v0 + 1176);
    v98 = *(v0 + 984);
    v157(v98, *(v0 + 952));
    v154(v96, v98, v97);
    if (v87(v96, v97) == *MEMORY[0x277D78F30])
    {
      v99 = *(v0 + 1216);
      v100 = *(v0 + 1176);
      v158(*(v0 + 1232), v100);
      v158(v99, v100);
      goto LABEL_41;
    }

    v158(*(v0 + 1216), *(v0 + 1176));
  }

  else
  {
    (*(*(v0 + 960) + 8))(*(v0 + 984), *(v0 + 952));
  }

  v101 = *(v0 + 1232);
  v102 = *(v0 + 1176);
  *(swift_task_alloc() + 16) = *(v0 + 752);
  sub_21E141D64();
  sub_21E13F864();

  v92 = v101;
  v93 = v102;
LABEL_40:
  v158(v92, v93);
LABEL_41:
  v103 = sub_21E13EE34();
  v105 = v104;
  *(v0 + 1360) = v103;
  *(v0 + 1368) = v104;
  sub_21E13EBF4();

  v106 = sub_21E13F1A4();
  v107 = sub_21E142554();

  v108 = os_log_type_enabled(v106, v107);
  v109 = *(v0 + 944);
  v110 = *(v0 + 888);
  v111 = *(v0 + 880);
  if (v108)
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v162[0] = v113;
    *v112 = 136315138;
    *(v112 + 4) = sub_21E0E08C0(v103, v105, v162);
    _os_log_impl(&dword_21DF05000, v106, v107, "Performing action: %s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v113);
    MEMORY[0x223D540B0](v113, -1, -1);
    MEMORY[0x223D540B0](v112, -1, -1);
  }

  v114 = *(v110 + 8);
  v114(v109, v111);
  *(v0 + 1376) = v114;
  v115 = *(v0 + 776);
  swift_getKeyPath();
  *(v0 + 1384) = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *(v0 + 680) = v115;
  *(v0 + 1392) = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v116 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream;
  *(v0 + 1400) = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream;
  swift_beginAccess();
  v117 = *(v115 + v116);
  *(v0 + 1408) = v117;
  if (!v117 || (swift_getObjectType(), v118 = dynamic_cast_existential_3_conditional(v117), (*(v0 + 1416) = v118) == 0))
  {

    sub_21E13EBF4();
    v131 = sub_21E13F1A4();
    v132 = sub_21E142564();
    v133 = os_log_type_enabled(v131, v132);
    v134 = *(v0 + 1272);
    v135 = *(v0 + 1264);
    v160 = *(v0 + 1256);
    v136 = *(v0 + 1144);
    v137 = *(v0 + 904);
    v138 = *(v0 + 880);
    if (v133)
    {
      v159 = *(v0 + 1272);
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_21DF05000, v131, v132, "Attempting to perform an action without a stream", v139, 2u);
      MEMORY[0x223D540B0](v139, -1, -1);

      v114(v137, v138);
      sub_21DF23614(v136, &qword_27CEAC550);
      (*(v135 + 8))(v159, v160);
    }

    else
    {

      v114(v137, v138);
      sub_21DF23614(v136, &qword_27CEAC550);
      (*(v135 + 8))(v134, v160);
    }

LABEL_51:

    v140 = *(v0 + 8);

    return v140();
  }

  v120 = v119;
  v121 = v118;
  ObjectType = swift_getObjectType();
  *(v0 + 656) = v121;
  swift_unknownObjectRetain();
  v123 = swift_task_alloc();
  *(v0 + 1424) = v123;
  *v123 = v0;
  v123[1] = sub_21E0C0C54;
  v124 = *(v0 + 1272);
  v125 = *(v0 + 1256);
  v126 = *(v0 + 1152);
  v127 = *(v0 + 1144);
  v128 = *(v0 + 760);
  v165 = ObjectType;
  v166 = v120;
  v129 = MEMORY[0x277D796B0];
  v130 = MEMORY[0x277D79690];

  return MEMORY[0x2821E0B18](v0 + 16, v124, v128, v127, v125, v126, v129, v130);
}

uint64_t sub_21E0C0C54()
{
  v1 = *v0;

  v2 = *(v1 + 1304);
  v3 = *(v1 + 1296);

  return MEMORY[0x2822009F8](sub_21E0C0D74, v3, v2);
}

uint64_t sub_21E0C0D74()
{
  v38 = v0;
  v1 = v0[175];
  v2 = v0[97];
  swift_getKeyPath();
  v0[79] = v2;
  sub_21E13D3C4();

  v3 = *(v2 + v1);
  v0[179] = v3;
  if (v3 && (v4 = v0[177], swift_getObjectType(), dynamic_cast_existential_3_conditional(v3) == v4))
  {
    v23 = v0[5];
    v24 = __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    (*(v25 + 16))(v26, v24, v23);
    v0[10] = swift_getAssociatedTypeWitness();
    v0[11] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    swift_unknownObjectRetain();
    sub_21E142444();

    v27 = sub_21E1423B4();
    v0[180] = v27;
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
    v28 = swift_task_alloc();
    v0[181] = v28;
    *v28 = v0;
    v28[1] = sub_21E0C1418;
    v29 = v0[109];
    v30 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v29, v27, v30);
  }

  else
  {

    sub_21E13EBF4();

    v5 = sub_21E13F1A4();
    v6 = sub_21E142544();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[172];
    v9 = v0[171];
    if (v7)
    {
      v10 = v0[170];
      v11 = v0[158];
      v34 = v0[157];
      v35 = v0[159];
      v32 = v0[114];
      v33 = v0[143];
      v31 = v0[110];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37 = v13;
      *v12 = 136315138;
      v14 = sub_21E0E08C0(v10, v9, &v37);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_21DF05000, v5, v6, "Not applying execution of %s because the stream was invalidated", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D540B0](v13, -1, -1);
      MEMORY[0x223D540B0](v12, -1, -1);

      swift_unknownObjectRelease();
      v8(v32, v31);
      sub_21DF23614(v33, &qword_27CEAC550);
      (*(v11 + 8))(v35, v34);
    }

    else
    {
      v36 = v0[159];
      v15 = v0[158];
      v16 = v0[157];
      v17 = v0[143];
      v18 = v0[114];
      v19 = v0[172];
      v20 = v0[110];

      swift_unknownObjectRelease();
      v19(v18, v20);
      sub_21DF23614(v17, &qword_27CEAC550);
      (*(v15 + 8))(v36, v16);
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_21E0C1418()
{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  if (!v0)
  {

    v4 = *(v2 + 1304);
    v5 = *(v2 + 1296);

    return MEMORY[0x2822009F8](sub_21E0C1534, v5, v4);
  }

  return result;
}

uint64_t sub_21E0C1534()
{
  v159 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 1492);
    v5 = *(v0 + 1344);
    v6 = *(v0 + 968);
    v7 = *(v0 + 952);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
    sub_21E13EEC4();
    v8 = v5(v6, v7);
    if (v8 != v4)
    {
      if (v8 == *MEMORY[0x277D79688])
      {

        goto LABEL_33;
      }

      goto LABEL_15;
    }

    v9 = *(v0 + 1208);
    v10 = *(v0 + 1200);
    v11 = *(v0 + 1184);
    v12 = *(v0 + 1176);
    v13 = *(v0 + 968);
    v14 = *(v0 + 960);
    v15 = *(v0 + 952);

    (*(v14 + 96))(v13, v15);
    (*(v11 + 32))(v9, v13, v12);
    v16 = *(v11 + 16);
    v16(v10, v9, v12);
    v17 = *(v11 + 88);
    v18 = v17(v10, v12);
    v19 = MEMORY[0x277D78F30];
    if (v18 == *MEMORY[0x277D78F80])
    {
      (*(v0 + 1328))(*(v0 + 1200), *(v0 + 1176));
      v20 = *v19;
      goto LABEL_27;
    }

    v20 = *MEMORY[0x277D78F30];
    if (v18 == *MEMORY[0x277D78F30])
    {
      v20 = v18;
      (*(v0 + 1328))(*(v0 + 1200), *(v0 + 1176));
      goto LABEL_27;
    }

    if (v18 == *MEMORY[0x277D78F38])
    {
      v46 = *(v0 + 1200);
      (*(*(v0 + 1184) + 96))(v46, *(v0 + 1176));
      v47 = sub_21E13E3F4();
      (*(*(v47 - 8) + 8))(v46, v47);
      goto LABEL_27;
    }

    if (v18 == *MEMORY[0x277D78F68])
    {
      v48 = *(v0 + 1200);
      (*(*(v0 + 1184) + 96))(v48, *(v0 + 1176));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20);

      sub_21DF23614(v48, &qword_27CEA6D28);
      goto LABEL_27;
    }

    if (v18 != *MEMORY[0x277D78F70] && v18 != *MEMORY[0x277D78F78] && v18 != *MEMORY[0x277D78F28] && v18 != *MEMORY[0x277D78F98] && v18 != *MEMORY[0x277D78F20] && v18 != *MEMORY[0x277D78F88] && v18 != *MEMORY[0x277D78F60])
    {
      if (v18 == *(v0 + 1488) || v18 == *MEMORY[0x277D78F48])
      {
        v116 = *(v0 + 752);
        swift_getKeyPath();
        *(v0 + 568) = v116;
        sub_21E13D3C4();

        v117 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        v156 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v118 = *(v116 + v117);
        swift_getKeyPath();
        *(v0 + 744) = v118;
        sub_21E0ECD50(&qword_280F69240, type metadata accessor for CardModel);

        sub_21E13D3C4();

        v119 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
        swift_beginAccess();
        LODWORD(v119) = *(v118 + v119);

        v151 = (v119 < 6) & (0xDu >> v119);
        v120 = *(v0 + 752);
        swift_getKeyPath();
        *(v0 + 552) = v120;
        sub_21E13D3C4();

        v121 = *(v116 + v156);
        swift_getKeyPath();
        *(v0 + 560) = v121;

        sub_21E13D3C4();

        v122 = *(v121 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme);
        v123 = *(v121 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 16);
        v124 = *(v121 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 32);
        v154 = *(v121 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 24);
        v157 = *(v121 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 8);
        sub_21DF356CC(v122, v157, v123, v154, *(v121 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 32));

        if (v124 >> 8 <= 0xFE)
        {
          if ((v124 & 0x100) != 0)
          {
            sub_21DF346A0(v122, v157, v123, v154, v124);
          }

          else if ((v151 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (!v151)
        {
          goto LABEL_27;
        }

        v125 = *(v0 + 776);
        v126 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
        swift_beginAccess();
        if (*(v125 + v126))
        {
          v127 = *(v0 + 1328);
          v128 = *(v0 + 1208);
          v129 = *(v0 + 1176);
          v130 = *(v0 + 776);
          swift_getKeyPath();
          v131 = swift_task_alloc();
          *(v131 + 16) = v130;
          *(v131 + 24) = 0;
          *(v0 + 576) = v130;
          sub_21E13D3B4();

          v127(v128, v129);
        }

        else
        {
          v132 = *(v0 + 1328);
          v133 = *(v0 + 1208);
          v134 = *(v0 + 1176);
          *(v125 + v126) = 0;
          sub_21E0DDC20();
          v132(v133, v134);
        }

LABEL_34:
        v71 = *(v0 + 776);
        swift_getKeyPath();
        *(v0 + 616) = v71;
        sub_21E13D3C4();

        v72 = *(v71 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
        if (!v72 || (v73 = *(v0 + 752), v74 = swift_task_alloc(), *(v74 + 16) = v72, *(v74 + 24) = v73, , v75 = sub_21E0C372C(sub_21DF6078C, v74, "VisualIntelligenceUI/NewEntityModel.swift"), , , (v75 & 1) == 0))
        {

          NewSaliencyModel.presentedEntity.setter(v76);
        }

        goto LABEL_41;
      }

      if (v18 != *MEMORY[0x277D78F90] && v18 != *MEMORY[0x277D78F50] && v18 != *MEMORY[0x277D78FA0] && v18 != *MEMORY[0x277D78F40])
      {
LABEL_15:

        return sub_21E142B04();
      }
    }

LABEL_27:
    v49 = *(v0 + 1192);
    v50 = *(v0 + 1176);
    v16(v49, *(v0 + 1208), v50);
    v51 = v17(v49, v50);
    v52 = *(v0 + 1328);
    if (v51 == v20)
    {
      v53 = *(v0 + 824);
      v54 = *(v0 + 816);
      v55 = *(v0 + 808);
      v56 = *(v0 + 752);
      v52(*(v0 + 1192), *(v0 + 1176));
      swift_getKeyPath();
      *(v0 + 600) = v56;
      sub_21E13D3C4();

      v57 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v58 = *(v56 + v57);
      swift_getKeyPath();
      *(v0 + 592) = v58;
      sub_21E0ECD50(&qword_280F69240, type metadata accessor for CardModel);

      sub_21E13D3C4();

      v59 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__barcode;
      swift_beginAccess();
      sub_21DF236C0(v58 + v59, v55, &qword_27CEA6CE0);

      if ((*(v53 + 48))(v55, 1, v54) != 1)
      {
        v77 = *(v0 + 840);
        v78 = *(v0 + 832);
        sub_21DF3DE9C(*(v0 + 808), v77, &qword_27CEA6C90);
        sub_21DF236C0(v77, v78, &qword_27CEA6C90);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v80 = *(v0 + 1328);
        v81 = *(v0 + 1208);
        v82 = *(v0 + 1176);
        v83 = *(v0 + 840);
        v84 = *(v0 + 832);
        if (EnumCaseMultiPayload == 1)
        {
          sub_21E0ECBF4();
          v85 = swift_allocError();
          *v86 = 0;
          *(v86 + 8) = 1;
          handleBarcodeError(_:)(v85);
          sub_21DF23614(v83, &qword_27CEA6C90);
          v80(v81, v82);

          sub_21DF23614(v84, &qword_27CEA6C90);
        }

        else
        {
          v87 = *(v0 + 800);
          v88 = *(v0 + 792);
          v89 = *(v0 + 784);
          (*(v88 + 32))(v87, *(v0 + 832), v89);
          v90 = sub_21E13DFA4();
          sub_21E0E9274(v90);

          (*(v88 + 8))(v87, v89);
          sub_21DF23614(v83, &qword_27CEA6C90);
          v80(v81, v82);
        }

        goto LABEL_41;
      }

      sub_21DF23614(*(v0 + 808), &qword_27CEA6CE0);
      sub_21E13EBF4();
      v60 = sub_21E13F1A4();
      v61 = sub_21E142564();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 1376);
      v155 = *(v0 + 1328);
      v64 = *(v0 + 1208);
      v65 = *(v0 + 1176);
      v66 = *(v0 + 928);
      v67 = *(v0 + 880);
      if (v62)
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_21DF05000, v60, v61, "Attempting to perform a MRC action without a valid result", v68, 2u);
        MEMORY[0x223D540B0](v68, -1, -1);
      }

      v63(v66, v67);
      v155(v64, v65);
    }

    else
    {
      v69 = *(v0 + 1192);
      v70 = *(v0 + 1176);
      v52(*(v0 + 1208), v70);
      v52(v69, v70);
    }

LABEL_33:
    if (*(v0 + 1496) == 1)
    {
      goto LABEL_34;
    }

LABEL_41:
    sub_21E13EBF4();

    v91 = sub_21E13F1A4();
    v92 = sub_21E142554();

    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v0 + 1376);
    v95 = *(v0 + 1368);
    if (v93)
    {
      v96 = *(v0 + 1360);
      v97 = *(v0 + 1264);
      v149 = *(v0 + 1256);
      v152 = *(v0 + 1272);
      v143 = *(v0 + 920);
      v146 = *(v0 + 1144);
      v140 = *(v0 + 880);
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v158[0] = v99;
      *v98 = 136315138;
      v100 = sub_21E0E08C0(v96, v95, v158);

      *(v98 + 4) = v100;
      _os_log_impl(&dword_21DF05000, v91, v92, "Finished performing action: %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x223D540B0](v99, -1, -1);
      MEMORY[0x223D540B0](v98, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v94(v143, v140);
      sub_21DF23614(v146, &qword_27CEAC550);
      (*(v97 + 8))(v152, v149);
    }

    else
    {
      v101 = *(v0 + 1376);
      v102 = *(v0 + 1264);
      v150 = *(v0 + 1256);
      v153 = *(v0 + 1272);
      v103 = *(v0 + 1144);
      v104 = *(v0 + 920);
      v105 = *(v0 + 880);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v101(v104, v105);
      sub_21DF23614(v103, &qword_27CEAC550);
      (*(v102 + 8))(v153, v150);
    }

LABEL_44:
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);

    v106 = *(v0 + 8);

    return v106();
  }

  v21 = *(v0 + 1400);
  v22 = *(v0 + 776);
  (*(v2 + 32))(*(v0 + 864), v1, v3);
  swift_getKeyPath();
  *(v0 + 584) = v22;
  sub_21E13D3C4();

  v23 = *(v22 + v21);
  *(v0 + 1464) = v23;
  if (!v23 || (v24 = *(v0 + 1416), swift_getObjectType(), dynamic_cast_existential_3_conditional(v23) != v24))
  {

    sub_21E13EBF4();

    v25 = sub_21E13F1A4();
    v26 = sub_21E142544();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 1376);
    v29 = *(v0 + 1368);
    if (v27)
    {
      v30 = *(v0 + 1360);
      v31 = *(v0 + 1264);
      v144 = *(v0 + 1256);
      v147 = *(v0 + 1272);
      v141 = *(v0 + 1144);
      v135 = *(v0 + 880);
      v136 = *(v0 + 936);
      v32 = *(v0 + 856);
      v137 = *(v0 + 848);
      v138 = *(v0 + 864);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v158[0] = v34;
      *v33 = 136315138;
      v35 = sub_21E0E08C0(v30, v29, v158);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_21DF05000, v25, v26, "Not applying state for %s because the stream was invalidated", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223D540B0](v34, -1, -1);
      MEMORY[0x223D540B0](v33, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v28(v136, v135);
      (*(v32 + 8))(v138, v137);
      sub_21DF23614(v141, &qword_27CEAC550);
      (*(v31 + 8))(v147, v144);
    }

    else
    {
      v36 = *(v0 + 1264);
      v145 = *(v0 + 1256);
      v148 = *(v0 + 1272);
      v37 = *(v0 + 936);
      v38 = *(v0 + 1376);
      v39 = *(v0 + 880);
      v139 = *(v0 + 864);
      v142 = *(v0 + 1144);
      v40 = *(v0 + 856);
      v41 = *(v0 + 848);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v38(v37, v39);
      (*(v40 + 8))(v139, v41);
      sub_21DF23614(v142, &qword_27CEAC550);
      (*(v36 + 8))(v148, v145);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
    goto LABEL_44;
  }

  sub_21E13E354();
  swift_unknownObjectRetain();
  sub_21E13E344();
  v43 = sub_21E13E334();

  if (v43)
  {
    sub_21E13E214();
    if (*(v0 + 120))
    {
      sub_21DF0DBF0((v0 + 96), v0 + 136);
      sub_21E13E424();
      *(v0 + 1472) = sub_21E13E414();
      sub_21E13EEC4();
      v44 = swift_task_alloc();
      *(v0 + 1480) = v44;
      *v44 = v0;
      v44[1] = sub_21E0C2AD8;
      v45 = *(v0 + 976);

      return MEMORY[0x2821E09B8](v45, v0 + 136);
    }

    sub_21DF23614(v0 + 96, &qword_27CEAD670);
  }

  v107 = *(v0 + 1168);
  v108 = *(v0 + 864);
  v109 = *(v0 + 856);
  v110 = *(v0 + 848);
  (*(*(v0 + 1160) + 16))(v107, *(v0 + 760), *(v0 + 1152));
  type metadata accessor for NewActionModel();
  swift_allocObject();
  v111 = NewActionModel.init(pill:)(v107);
  NewEntityModel.apply(executionState:for:)(v108, v111);

  swift_unknownObjectRelease();
  (*(v109 + 8))(v108, v110);
  v112 = sub_21E1423B4();
  *(v0 + 1440) = v112;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
  v113 = swift_task_alloc();
  *(v0 + 1448) = v113;
  *v113 = v0;
  v113[1] = sub_21E0C1418;
  v114 = *(v0 + 872);
  v115 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v114, v112, v115);
}

uint64_t sub_21E0C2AD8()
{
  v1 = *v0;
  v2 = *(*v0 + 976);
  v3 = *(*v0 + 960);
  v4 = *(*v0 + 952);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 1304);
  v6 = *(v1 + 1296);

  return MEMORY[0x2822009F8](sub_21E0C2C78, v6, v5);
}

uint64_t sub_21E0C2C78()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 17));
  v1 = v0[146];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  (*(v0[145] + 16))(v1, v0[95], v0[144]);
  type metadata accessor for NewActionModel();
  swift_allocObject();
  v5 = NewActionModel.init(pill:)(v1);
  NewEntityModel.apply(executionState:for:)(v2, v5);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v6 = sub_21E1423B4();
  v0[180] = v6;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v7 = swift_task_alloc();
  v0[181] = v7;
  *v7 = v0;
  v7[1] = sub_21E0C1418;
  v8 = v0[109];
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v8, v6, v9);
}

uint64_t sub_21E0C2E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21DF236C0(a3, v25 - v10, &qword_27CEAD980);
  v12 = sub_21E1423F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21DF23614(v11, &qword_27CEAD980);
  }

  else
  {
    sub_21E1423E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21E142364();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21E1421D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21DF23614(a3, &qword_27CEAD980);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21DF23614(a3, &qword_27CEAD980);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21E0C3104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21DF236C0(a3, v25 - v10, &qword_27CEAD980);
  v12 = sub_21E1423F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21DF23614(v11, &qword_27CEAD980);
  }

  else
  {
    sub_21E1423E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21E142364();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21E1421D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7088);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_21DF23614(a3, &qword_27CEAD980);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21DF23614(a3, &qword_27CEAD980);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7088);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21E0C3418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21DF236C0(a3, v25 - v10, &qword_27CEAD980);
  v12 = sub_21E1423F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21DF23614(v11, &qword_27CEAD980);
  }

  else
  {
    sub_21E1423E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21E142364();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21E1421D4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_21DF23614(a3, &qword_27CEAD980);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21DF23614(a3, &qword_27CEAD980);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21E0C372C(uint64_t a1, uint64_t a2, char a3)
{
  sub_21E1423B4();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_21E0ECE64(v12);
    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12[0];
    v9 = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_21E142884();
  MEMORY[0x223D52A60](0xD00000000000003FLL, 0x800000021E15F440);
  v11 = sub_21E142CD4();
  MEMORY[0x223D52A60](v11);

  MEMORY[0x223D52A60](46, 0xE100000000000000);
  result = sub_21E1429C4();
  __break(1u);
  return result;
}

uint64_t sub_21E0C38E4(uint64_t a1, uint64_t a2)
{
  sub_21E1423B4();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_21E0ECB14();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_21E142884();
    MEMORY[0x223D52A60](0xD00000000000003FLL, 0x800000021E15F440);
    v8 = sub_21E142CD4();
    MEMORY[0x223D52A60](v8);

    MEMORY[0x223D52A60](46, 0xE100000000000000);
    result = sub_21E1429C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21E0C3A94()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t NewSaliencyModel.viuiConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v3 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 2) = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
}

uint64_t NewSaliencyModel.presentedEntity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v4 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  if (v4)
  {
    if (a1)
    {
      v5 = v1;
      v6 = sub_21E1423C4();
      MEMORY[0x28223BE20](v6);
      v12 = v4;
      v13 = a1;

      v7 = sub_21E0C372C(sub_21DF6078C, &v11, "VisualIntelligenceUI/NewEntityModel.swift");

      if (v7)
      {
        v1 = v5;
        v8 = *(v5 + v3);
LABEL_7:
        *(v1 + v3) = a1;

        sub_21E0DC4BC(v8);
      }

      v1 = v5;
    }
  }

  else if (!a1)
  {
    v8 = 0;
    goto LABEL_7;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v12 = v1;
  v13 = a1;
  v14 = v1;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3B4();
}

uint64_t NewSaliencyModel.isPerformingAction(_:for:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v13 = v2;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__inflightActions;
  swift_beginAccess();
  v6 = *(v13 + v5);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;

  v8 = sub_21E0E1024(a2 + v7);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v11 = 0;
    return v11 & 1;
  }

  v10 = *(*(v6 + 56) + 8 * v8);

  v11 = sub_21E0BEA7C(a1, v10);

  return v11 & 1;
}

uint64_t NewSaliencyModel.performAction(_:from:executionParameter:updatesPresentation:analyticsSource:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  *(v6 + 577) = a4;
  *(v6 + 360) = a3;
  *(v6 + 368) = v5;
  *(v6 + 344) = a1;
  *(v6 + 352) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v8 = sub_21E13EEE4();
  *(v6 + 392) = v8;
  *(v6 + 400) = *(v8 - 8);
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  v9 = sub_21E13F1B4();
  *(v6 + 424) = v9;
  *(v6 + 432) = *(v9 - 8);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 578) = *a5;
  *(v6 + 488) = sub_21E1423C4();
  *(v6 + 496) = sub_21E1423B4();
  v10 = swift_task_alloc();
  *(v6 + 504) = v10;
  *v10 = v6;
  v10[1] = sub_21E0C41A8;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v6 + 576, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v11);
}

uint64_t sub_21E0C41A8()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_21E0C514C;
  }

  else
  {
    v2 = sub_21E0C42BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E0C42BC()
{
  *(v0 + 579) = *(v0 + 576);
  v2 = sub_21E142364();
  *(v0 + 520) = v2;
  *(v0 + 528) = v1;

  return MEMORY[0x2822009F8](sub_21E0C4340, v2, v1);
}

uint64_t sub_21E0C4340()
{
  v90 = v0;
  if ((*(v0 + 579) & 1) == 0)
  {
LABEL_15:

    sub_21E13EBE4();
    v9 = sub_21E13F1A4();
    v10 = sub_21E142564();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 432);
    v12 = *(v0 + 440);
    v14 = *(v0 + 424);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Attempting to perform an action but authentication failed.";
LABEL_17:
      _os_log_impl(&dword_21DF05000, v9, v10, v16, v15, 2u);
      MEMORY[0x223D540B0](v15, -1, -1);
    }

LABEL_18:

    (*(v13 + 8))(v12, v14);
LABEL_19:

    v17 = *(v0 + 8);

    return v17();
  }

  v1 = *(v0 + 344);
  swift_getKeyPath();
  *(v0 + 320) = v1;
  sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  if ((*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) & 1) == 0)
  {
    v19 = v0;
    v20 = *(v0 + 344);

    swift_getKeyPath();
    v19[23] = v20;
    sub_21E13D3C4();

    v21 = *(v20 + 40);
    if (v21)
    {

      v21(v22);
      sub_21E13EBF4();
      v23 = sub_21E13F1A4();
      v24 = sub_21E142554();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v19[60];
      v27 = v19[53];
      v28 = v19[54];
      v0 = v19;
      if (v25)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_21DF05000, v23, v24, "Executing translate action.", v29, 2u);
        MEMORY[0x223D540B0](v29, -1, -1);
      }

      sub_21DF1F1DC(v21);

      (*(v28 + 8))(v26, v27);
      goto LABEL_19;
    }

    sub_21E13EBF4();
    v9 = sub_21E13F1A4();
    v10 = sub_21E142564();
    v30 = os_log_type_enabled(v9, v10);
    v12 = v19[59];
    v14 = v19[53];
    v13 = v19[54];
    v0 = v19;
    if (v30)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Translate action is unexpectedly nil.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v2 = *(v0 + 368);
  swift_getKeyPath();
  *(v0 + 536) = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *(v0 + 288) = v2;
  *(v0 + 544) = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v3 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity);
  swift_getKeyPath();
  *(v0 + 248) = v3;
  sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
  v87 = v0;
  swift_beginAccess();
  v5 = *(v3 + v4);

  if (!(v5 >> 62))
  {
    v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v0)
    {
      goto LABEL_5;
    }

LABEL_41:

    v0 = v87;
    goto LABEL_42;
  }

LABEL_40:
  v0 = sub_21E1427B4();
  if (!v0)
  {
    goto LABEL_41;
  }

LABEL_5:
  v6 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D530F0](v6, v5);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_40;
      }

      v7 = *(v5 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }
    }

    swift_getKeyPath();
    *(v87 + 224) = v7;
    sub_21E13D3C4();

    if (*(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType) != 1)
    {
      break;
    }

    ++v6;
    if (v8 == v0)
    {
      goto LABEL_41;
    }
  }

  swift_getKeyPath();
  v0 = v87;
  *(v87 + 200) = v7;
  sub_21E13D3C4();

  v31 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  swift_beginAccess();
  if (*(v7 + v31) == 1)
  {
    swift_getKeyPath();
    *(v87 + 336) = v7;
    sub_21E13D3C4();

    v32 = *(v7 + 40);
    if (v32)
    {

      v32(v33);
      sub_21E13EBF4();
      v34 = sub_21E13F1A4();
      v35 = sub_21E142544();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v87 + 464);
      v39 = *(v87 + 424);
      v38 = *(v87 + 432);
      if (v36)
      {
        v82 = *(v87 + 464);
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_21DF05000, v34, v35, "Removing translation because something else was pressed.", v40, 2u);
        MEMORY[0x223D540B0](v40, -1, -1);
        sub_21DF1F1DC(v32);

        (*(v38 + 8))(v82, v39);
      }

      else
      {

        sub_21DF1F1DC(v32);

        (*(v38 + 8))(v37, v39);
      }
    }

    else
    {
      sub_21E13EBF4();
      v41 = sub_21E13F1A4();
      v42 = sub_21E142564();
      v43 = os_log_type_enabled(v41, v42);
      v44 = *(v87 + 456);
      v46 = *(v87 + 424);
      v45 = *(v87 + 432);
      if (v43)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_21DF05000, v41, v42, "Should be removing the translation, but for some reason we don't have access to the action.", v47, 2u);
        MEMORY[0x223D540B0](v47, -1, -1);
      }

      else
      {
      }

      (*(v45 + 8))(v44, v46);
    }
  }

  else
  {
  }

LABEL_42:
  v48 = *(v0 + 392);
  v49 = *(v0 + 400);
  v50 = *(v0 + 384);
  v51 = *(v0 + 344);
  swift_getKeyPath();
  *(v0 + 192) = v51;
  sub_21E13D3C4();

  v52 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(v51 + v52, v50, &qword_27CEA6D48);
  v53 = *(v49 + 48);
  v54 = v53(v50, 1, v48);
  v55 = *(v0 + 384);
  if (v54 == 1)
  {

    sub_21DF23614(v55, &qword_27CEA6D48);
    sub_21E13EBF4();
    v9 = sub_21E13F1A4();
    v10 = sub_21E142564();
    v56 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 448);
    v14 = *(v0 + 424);
    v13 = *(v0 + 432);
    if (!v56)
    {
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Attempting to perform an unsupported action on a SaliencyEngine entity";
    goto LABEL_17;
  }

  v57 = *(v0 + 368);
  v83 = *(v0 + 352);
  v77 = *(*(v0 + 400) + 32);
  (v77)(*(v0 + 416), v55, *(v0 + 392));
  v81 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
  *(v0 + 552) = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
  swift_getKeyPath();
  *(v0 + 216) = v57;
  sub_21E13D3C4();

  v58 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__inflightActions;
  *(v0 + 560) = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__inflightActions;
  swift_beginAccess();
  v59 = *(v57 + v58);
  v78 = v53;
  if (!*(v59 + 16))
  {
    goto LABEL_49;
  }

  v60 = sub_21E0E1024(v83 + v81);
  if ((v61 & 1) == 0)
  {

LABEL_49:
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_21E1427B4())
      {
        v62 = sub_21E0EA254(MEMORY[0x277D84F90]);
      }

      else
      {
        v62 = MEMORY[0x277D84FA0];
      }

      v0 = v87;
    }

    else
    {
      v62 = MEMORY[0x277D84FA0];
    }

    goto LABEL_51;
  }

  v62 = *(*(v59 + 56) + 8 * v60);

LABEL_51:
  v80 = *(v0 + 578);
  v63 = *(v0 + 368);
  v64 = *(v0 + 344);
  *(v0 + 208) = v62;

  sub_21E0E2720(&v88, v64);

  v79 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 232) = v63;
  sub_21E13D3C4();

  *(v0 + 240) = v63;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = *(v57 + v58);
  *(v57 + v58) = 0x8000000000000000;
  sub_21E0E6E28(v79, v83 + v81, isUniquelyReferenced_nonNull_native);
  *(v57 + v58) = v88;
  swift_endAccess();
  *(v0 + 256) = v63;
  swift_getKeyPath();
  sub_21E13D3D4();

  if (v80 != 9)
  {
    v66 = *(v0 + 392);
    v67 = *(v0 + 376);
    v68 = *(v0 + 344);
    swift_getKeyPath();
    *(v0 + 304) = v68;
    sub_21E13D3C4();

    sub_21DF236C0(v51 + v52, v67, &qword_27CEA6D48);
    if (v78(v67, 1, v66) == 1)
    {
      sub_21DF23614(*(v0 + 376), &qword_27CEA6D48);
    }

    else
    {
      v69 = *(v87 + 578);
      v70 = *(v87 + 408);
      v86 = *(v87 + 400);
      v85 = *(v87 + 392);
      v71 = *(v87 + 368);
      v84 = *(v87 + 344);
      v77(v70, *(v87 + 376));
      swift_getKeyPath();
      *(v87 + 312) = v71;
      sub_21E13D3C4();

      swift_beginAccess();

      ActionPin.Pill.analyticsAction()();
      LOBYTE(v88) = v69;
      v0 = v87;
      sub_21E0F8C08(&v89, &v88);

      swift_getKeyPath();
      *(v87 + 328) = v71;
      sub_21E13D3C4();

      sub_21E0FCB50(v70, v84);

      (*(v86 + 8))(v70, v85);
    }
  }

  v72 = swift_task_alloc();
  *(v0 + 568) = v72;
  *v72 = v0;
  v72[1] = sub_21E0C5348;
  v73 = *(v0 + 416);
  v74 = *(v0 + 360);
  v75 = *(v0 + 577);
  v76 = *(v0 + 352);

  return sub_21E0BEE74(v76, v73, v74, v75);
}

uint64_t sub_21E0C514C()
{
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E0C51D0, v2, v1);
}

uint64_t sub_21E0C51D0()
{

  sub_21E13EBE4();
  v1 = sub_21E13F1A4();
  v2 = sub_21E142564();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[53];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21DF05000, v1, v2, "Attempting to perform an action but authentication failed.", v7, 2u);
    MEMORY[0x223D540B0](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21E0C5348()
{
  v1 = *v0;

  v2 = *(v1 + 528);
  v3 = *(v1 + 520);

  return MEMORY[0x2822009F8](sub_21E0C5468, v3, v2);
}

uint64_t sub_21E0C5468()
{
  v1 = v0[70];
  v2 = v0[46];

  swift_getKeyPath();
  v0[33] = v2;
  sub_21E13D3C4();

  v3 = *(v2 + v1);
  if (!*(v3 + 16))
  {
LABEL_5:
    if (MEMORY[0x277D84F90] >> 62 && sub_21E1427B4())
    {
      v8 = sub_21E0EA254(MEMORY[0x277D84F90]);
    }

    else
    {
      v8 = MEMORY[0x277D84FA0];
    }

    goto LABEL_7;
  }

  v4 = v0[69];
  v5 = v0[44];

  v6 = sub_21E0E1024(v5 + v4);
  if ((v7 & 1) == 0)
  {

    goto LABEL_5;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

LABEL_7:
  v9 = v0[70];
  v20 = v0[52];
  v10 = v0[50];
  v18 = v0[69];
  v19 = v0[49];
  v11 = v0[46];
  v12 = v0[43];
  v17 = v0[44];
  v0[26] = v8;
  sub_21E0E5D6C(v12);

  v13 = v0[26];
  swift_getKeyPath();
  v0[34] = v11;
  sub_21E13D3C4();

  v0[35] = v11;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v11 + v9);
  *(v11 + v9) = 0x8000000000000000;
  sub_21E0E6E28(v13, v17 + v18, isUniquelyReferenced_nonNull_native);
  *(v11 + v9) = v21;
  swift_endAccess();
  v0[37] = v11;
  swift_getKeyPath();
  sub_21E13D3D4();

  NewSaliencyModel.reportGroundingLabels()();
  (*(v10 + 8))(v20, v19);

  v15 = v0[1];

  return v15();
}

uint64_t NewSaliencyModel.__allocating_init()()
{
  v0 = swift_allocObject();
  NewSaliencyModel.init()();
  return v0;
}

uint64_t sub_21E0C57C4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_21E0C58A0@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

Swift::Void __swiftcall NewSaliencyModel.reportGroundingLabels()()
{
  v1 = v0;
  v2 = sub_21E13D834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E13F1B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EC34();

  v9 = sub_21E13F1A4();
  v10 = sub_21E142554();

  v11 = &unk_280F6B000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v31 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v30 = v3;
    v15 = v14;
    v34[0] = v14;
    *v13 = 136315138;
    swift_getKeyPath();
    v29 = v5;
    v33 = v0;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    if (*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels))
    {
      v16 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v33 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD588);
    sub_21E0EA5A8();
    v17 = sub_21E142044();
    v19 = v18;

    v20 = sub_21E0E08C0(v17, v19, v34);
    v11 = &unk_280F6B000;

    *(v13 + 4) = v20;
    _os_log_impl(&dword_21DF05000, v9, v10, "Reporting grounding labels: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v21 = v15;
    v3 = v30;
    MEMORY[0x223D540B0](v21, -1, -1);
    v22 = v13;
    v2 = v31;
    MEMORY[0x223D540B0](v22, -1, -1);

    (*(v6 + 8))(v8, v29);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  swift_getKeyPath();
  v34[0] = v1;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v23 = v11[97];
  if (*(v1 + v23))
  {
    swift_getKeyPath();
    v34[0] = v1;

    sub_21E13D3C4();

    v24 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
    swift_beginAccess();
    v25 = v1 + v24;
    v26 = v32;
    (*(v3 + 16))(v32, v25, v2);
    if ((*(v3 + 88))(v26, v2) == *MEMORY[0x277D78DB0])
    {
      (*(v3 + 8))(v26, v2);
      sub_21E13EB74();

      if (*(v1 + v23))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v28 - 2) = v1;
        *(&v28 - 1) = 0;
        v33 = v1;
        sub_21E13D3B4();
      }
    }

    else
    {

      (*(v3 + 8))(v26, v2);
    }
  }
}

uint64_t NewSaliencyModel.engineIdentifier.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream;
  swift_beginAccess();
  v2 = *(v4 + v1);
  if (!v2)
  {
    return -1;
  }

  swift_getObjectType();
  if (!dynamic_cast_existential_3_conditional(v2))
  {
    return -1;
  }

  swift_getObjectType();
  return sub_21E13EB24();
}

uint64_t NewSaliencyModel.fullscreenEntity.getter()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();
}

uint64_t NewSaliencyModel.updateUserSelection(_:)(double a1, double a2, double a3, double a4)
{
  *(v5 + 304) = v4;
  *(v5 + 288) = a3;
  *(v5 + 296) = a4;
  *(v5 + 272) = a1;
  *(v5 + 280) = a2;
  v6 = sub_21E13F1B4();
  *(v5 + 312) = v6;
  *(v5 + 320) = *(v6 - 8);
  *(v5 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8430);
  *(v5 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8438);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  v7 = sub_21E13EF04();
  *(v5 + 384) = v7;
  v8 = *(v7 - 8);
  *(v5 + 392) = v8;
  *(v5 + 400) = *(v8 + 64);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = swift_task_alloc();
  v9 = sub_21E13D344();
  *(v5 + 472) = v9;
  *(v5 + 480) = *(v9 - 8);
  *(v5 + 488) = swift_task_alloc();
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = sub_21E1423C4();
  *(v5 + 520) = sub_21E1423B4();
  v11 = sub_21E142364();
  *(v5 + 528) = v11;
  *(v5 + 536) = v10;

  return MEMORY[0x2822009F8](sub_21E0C6404, v11, v10);
}

uint64_t sub_21E0C6404()
{
  v1 = v0[38];
  swift_getKeyPath();
  v0[24] = v1;
  v0[68] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v0[69] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  swift_beginAccess();
  v3 = *v2;
  v0[70] = *v2;
  if (v3)
  {
    v4 = v0[38];
    v5 = v2[1];
    v0[22] = v3;
    v0[23] = v5;
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD598);
    swift_dynamicCast();
    swift_getKeyPath();
    v0[25] = v4;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
    v0[71] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
    swift_beginAccess();
    v7 = *(v4 + v6);
    if (v7)
    {
      v8 = v0[58];
      v10 = v0[48];
      v9 = v0[49];
      swift_getKeyPath();
      v0[26] = v7;
      sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

      sub_21E13D3C4();

      v11 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
      swift_beginAccess();
      sub_21DF236C0(v7 + v11, v8, &qword_27CEACB50);

      if (!(*(v9 + 48))(v8, 1, v10))
      {
        v16 = v0[62];
        v15 = v0[63];
        v17 = v0[59];
        v18 = v0[60];
        v19 = v0[58];
        v20 = v0[54];
        v22 = v0[48];
        v21 = v0[49];
        (*(v21 + 16))(v20, v19, v22);
        sub_21DF23614(v19, &qword_27CEACB50);
        sub_21E13EE24();
        (*(v21 + 8))(v20, v22);
        (*(v18 + 32))(v15, v16, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD5A0);
        v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_21E145380;
        (*(v18 + 16))(v24 + v23, v15, v17);
        v12 = sub_21E0EA798(v24);
        swift_setDeallocating();
        v25 = *(v18 + 8);
        v25(v24 + v23, v17);
        swift_deallocClassInstance();
        v25(v15, v17);
        goto LABEL_10;
      }

      sub_21DF23614(v0[58], &qword_27CEACB50);
    }

    v12 = MEMORY[0x277D84FA0];
LABEL_10:
    v0[72] = v12;
    v26 = v0[5];
    v27 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v26);
    v28 = swift_task_alloc();
    v0[73] = v28;
    *v28 = v0;
    v28[1] = sub_21E0C69AC;
    v29 = v0[57];
    v30.n128_u64[0] = v0[36];
    v31.n128_u64[0] = v0[37];
    v32.n128_u64[0] = v0[34];
    v33.n128_u64[0] = v0[35];

    return MEMORY[0x2821E0B20](v29, v12, v26, v27, v32, v33, v30, v31);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21E0C69AC()
{
  v1 = *v0;

  v2 = *(v1 + 536);
  v3 = *(v1 + 528);

  return MEMORY[0x2822009F8](sub_21E0C6AF0, v3, v2);
}

uint64_t sub_21E0C6AF0()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[48];
  v4 = v0[49];

  sub_21DF236C0(v2, v1, &qword_27CEACB50);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_21DF23614(v0[56], &qword_27CEACB50);
    sub_21E13EBF4();
    v5 = sub_21E13F1A4();
    v6 = sub_21E142564();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21DF05000, v5, v6, "User made a selection but an ActionPin wasn't created", v7, 2u);
      MEMORY[0x223D540B0](v7, -1, -1);
    }

    v8 = v0[57];
    v10 = v0[40];
    v9 = v0[41];
    v11 = v0[39];

    (*(v10 + 8))(v9, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_task_alloc();
    *(v13 + 16) = sub_21E0ECF64;
    *(v13 + 24) = v12;
    sub_21E141D64();
    sub_21E13F864();

    swift_unknownObjectRelease();

    sub_21DF23614(v8, &qword_27CEACB50);
    goto LABEL_27;
  }

  v14 = v0[59];
  v15 = v0[60];
  v16 = v0[47];
  v17 = v0[38];
  v91 = (v0[49] + 32);
  v92 = v0[71];
  v90 = *v91;
  (*v91)(v0[53], v0[56], v0[48]);
  sub_21E13EE24();
  v18 = *(v15 + 56);
  v19 = 1;
  v18(v16, 0, 1, v14);
  swift_getKeyPath();
  v0[27] = v17;
  sub_21E13D3C4();

  v20 = *(v17 + v92);
  if (v20)
  {
    (*(v0[60] + 16))(v0[46], v20 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v0[59]);
    v19 = 0;
  }

  v21 = v0[59];
  v22 = v0[60];
  v24 = v0[46];
  v23 = v0[47];
  v26 = v0[43];
  v25 = v0[44];
  v18(v24, v19, 1, v21);
  v27 = *(v26 + 48);
  sub_21DF236C0(v23, v25, &qword_27CEA8438);
  sub_21DF236C0(v24, v25 + v27, &qword_27CEA8438);
  v28 = *(v22 + 48);
  v29 = v28(v25, 1, v21);
  v30 = v0[59];
  if (v29 != 1)
  {
    sub_21DF236C0(v0[44], v0[45], &qword_27CEA8438);
    if (v28(v25 + v27, 1, v30) != 1)
    {
      v71 = v0[60];
      v72 = v0[61];
      v73 = v0[59];
      v75 = v0[46];
      v74 = v0[47];
      v76 = v0[45];
      v93 = v0[44];
      (*(v71 + 32))(v72, v25 + v27, v73);
      sub_21E0ECD50(&qword_280F6C088, MEMORY[0x277CC95F0]);
      v77 = sub_21E142074();
      v78 = *(v71 + 8);
      v78(v72, v73);
      sub_21DF23614(v75, &qword_27CEA8438);
      sub_21DF23614(v74, &qword_27CEA8438);
      v78(v76, v73);
      sub_21DF23614(v93, &qword_27CEA8438);
      if (v77)
      {
        goto LABEL_24;
      }

LABEL_13:
      v36 = v0[38];
      swift_getKeyPath();
      v0[28] = v36;
      sub_21E13D3C4();

      v37 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval;
      v38 = &unk_280F6B000;
      if (*(v36 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval) != 1)
      {
LABEL_17:
        v46 = v0[53];
        v47 = v0[38];
        swift_getKeyPath();
        v0[29] = v47;
        sub_21E13D3C4();

        v48 = v38[75];
        swift_beginAccess();
        v49 = *(v47 + v48);
        v50 = swift_task_alloc();
        *(v50 + 16) = v46;

        v51 = sub_21E0D9D08(sub_21E0EA60C, v50, v49) & 1;

        if (v51 == *(v36 + v37))
        {
          *(v36 + v37) = v51;
        }

        else
        {
          v52 = v0[38];
          swift_getKeyPath();
          v53 = swift_task_alloc();
          *(v53 + 16) = v52;
          *(v53 + 24) = v51;
          v0[30] = v52;
          sub_21E13D3B4();
        }

        v54 = v0[55];
        v56 = v0[52];
        v55 = v0[53];
        v57 = v0[51];
        v58 = v0[48];
        v59 = v0[49];
        v60 = *(v59 + 16);
        v60(v54, v55, v58);
        (*(v59 + 56))(v54, 0, 1, v58);
        sub_21E0CEAB8(v54);
        v61 = swift_allocObject();
        swift_weakInit();
        v60(v56, v55, v58);
        v60(v57, v56, v58);
        v62 = *(v59 + 80);
        v63 = v61;
        v64 = (v62 + 24) & ~v62;
        v65 = swift_allocObject();
        *(v65 + 16) = v63;
        v90(v65 + v64, v56, v58);

        v66 = MKBGetDeviceLockState();
        if (v66 != 3 && v66)
        {
          v82 = v0[42];
          v70 = *(v0[49] + 8);
          v70(v0[51], v0[48]);
          v83 = sub_21E1423F4();
          (*(*(v83 - 8) + 56))(v82, 1, 1, v83);

          v84 = sub_21E1423B4();
          v85 = swift_allocObject();
          v86 = MEMORY[0x277D85700];
          v85[2] = v84;
          v85[3] = v86;
          v85[4] = sub_21E0EA708;
          v85[5] = v65;
          v85[6] = 0;
          v85[7] = 0;
          sub_21E0C2E04(0, 0, v82, &unk_21E156E78, v85);

          swift_unknownObjectRelease();
        }

        else
        {
          v67 = v0[51];
          v69 = v0[48];
          v68 = v0[49];
          sub_21E0D9E40(v63, v67);

          swift_unknownObjectRelease();
          v70 = *(v68 + 8);
          v70(v67, v69);
        }

        v87 = v0[53];
        v88 = v0[48];
        sub_21DF23614(v0[57], &qword_27CEACB50);

        v70(v87, v88);
        goto LABEL_27;
      }

      v39 = v0[38];
      swift_getKeyPath();
      v0[31] = v39;

      sub_21E13D3C4();

      v0[32] = v39;
      swift_getKeyPath();
      sub_21E13D3E4();

      v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
      swift_beginAccess();
      v41 = sub_21E0EAAB8((v39 + v40), v39);

      v43 = *(v39 + v40);
      if (v43 >> 62)
      {
        result = sub_21E1427B4();
        v44 = result;
        if (result >= v41)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v44 >= v41)
        {
LABEL_16:
          v45 = v0[38];
          sub_21DF5F2B0(v41, v44);
          swift_endAccess();
          sub_21E141D64();
          sub_21E13F864();

          v0[33] = v45;
          swift_getKeyPath();
          sub_21E13D3D4();

          v38 = &unk_280F6B000;
          goto LABEL_17;
        }
      }

      __break(1u);
      return result;
    }

    v32 = v0[59];
    v33 = v0[60];
    v34 = v0[47];
    v35 = v0[45];
    sub_21DF23614(v0[46], &qword_27CEA8438);
    sub_21DF23614(v34, &qword_27CEA8438);
    (*(v33 + 8))(v35, v32);
LABEL_12:
    sub_21DF23614(v0[44], &qword_27CEA8430);
    goto LABEL_13;
  }

  v31 = v0[47];
  sub_21DF23614(v0[46], &qword_27CEA8438);
  sub_21DF23614(v31, &qword_27CEA8438);
  if (v28(v25 + v27, 1, v30) != 1)
  {
    goto LABEL_12;
  }

  sub_21DF23614(v0[44], &qword_27CEA8438);
LABEL_24:
  v79 = v0[53];
  v80 = v0[48];
  v81 = v0[49];
  sub_21DF23614(v0[57], &qword_27CEACB50);
  swift_unknownObjectRelease();
  (*(v81 + 8))(v79, v80);
LABEL_27:
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v89 = v0[1];

  return v89();
}

uint64_t sub_21E0C7748(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t NewSaliencyModel.stream.getter()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_21E0C7914@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(*v1 + 16 * v2 + 32);
  v1[1] = v2 + 1;
  v5 = v1[2];
  if (__OFADD__(v5, 1))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v1[2] = v5 + 1;
  *a1 = v5;
  *(a1 + 1) = v4;
}

uint64_t sub_21E0C79C0()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21E0C7A78@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21E019B74;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21DF09028(v4);
}

uint64_t sub_21E0C7B64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21E0ECBEC;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21DF09028(v1);
  sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3B4();
  sub_21DF1F1DC(v4);
}

uint64_t sub_21E0C7CC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__isSelected;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21E0C7DAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__specialActionType);
  return result;
}

void NewSaliencyModel.isAskingMontara.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    sub_21E0DDC20();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21E0C7FDC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  return *(v2 + *a2);
}

uint64_t sub_21E0C80B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13E3D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  sub_21E0ECD50(&qword_280F690A8, MEMORY[0x277D79468]);
  v19 = a1;
  LOBYTE(a1) = sub_21E142074();
  v18 = *(v5 + 8);
  v18(v10, v4);
  if (a1)
  {
    v12(v10, v19, v4);
    v12(v7, v2 + v11, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v11, v10, v4);
    swift_endAccess();
    sub_21E0D0494(v7);
    v13 = v18;
    v18(v7, v4);
    v13(v10, v4);
    return (v13)(v19, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v16 = v19;
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v16;
    v20 = v2;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();

    return (v18)(v19, v4);
  }
}

uint64_t sub_21E0C83D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration;
  swift_beginAccess();
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v8 = *(v4 + 8);
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 1) = v5;
  *(a2 + 2) = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
}

uint64_t sub_21E0C84B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7[0] = v1;
  v7[1] = v2;
  v7[2] = v3;
  v8 = v5;
  v9 = v4;

  return NewSaliencyModel.viuiConfiguration.setter(v7);
}

uint64_t NewSaliencyModel.viuiConfiguration.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration);
  swift_beginAccess();
  if (v2 != *v7 || ((v3 ^ v7[1]) & 1) != 0 || ((v4 ^ v7[2]) & 1) != 0)
  {
    goto LABEL_13;
  }

  v8 = *(v7 + 2);
  if (v8)
  {
    if (v5)
    {
      v9 = *(v7 + 1) == v6 && v8 == v5;
      if (v9 || (sub_21E142B14() & 1) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  if (v5)
  {
    goto LABEL_13;
  }

LABEL_14:
  *v7 = v2;
  v7[1] = v3;
  v7[2] = v4;
  *(v7 + 1) = v6;
  *(v7 + 2) = v5;
}

uint64_t NewSaliencyModel.userSelection.setter(uint64_t a1)
{
  swift_beginAccess();

  v2 = sub_21E13D324();

  if (v2)
  {
    return sub_21E0CE2DC(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3B4();
}

uint64_t NewSaliencyModel.stream.setter()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3B4();

  return swift_unknownObjectRelease();
}

uint64_t NewSaliencyModel.selectedEntity.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    if (a1)
    {
      v6 = sub_21E1423C4();
      MEMORY[0x28223BE20](v6);
      v12 = v5;
      v13 = a1;

      v7 = sub_21E0C372C(sub_21DF6078C, &v11, "VisualIntelligenceUI/NewEntityModel.swift");

      if (v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v2;
    v13 = a1;
    v14 = v2;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;

  swift_getKeyPath();
  v14 = v2;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v10 = *(v2 + v4);

  sub_21E0CD660(v10 == 0);
}

uint64_t NewSaliencyModel.entryPoint.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_21E0ECD50(&qword_280F690E0, MEMORY[0x277D78DD0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_21E142074();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_21E0C9558();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_21E0C8E74(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21E0C8F90(char a1)
{
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress) = a1 & 1;
    swift_getKeyPath();
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    if (*(v1 + v2) == 1)
    {
      NewSaliencyModel.presentedEntity.setter(0);
    }

    return sub_21E0CD660(0);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }
}

unint64_t sub_21E0C913C()
{
  v1 = v0;
  swift_getKeyPath();
  v17 = v0;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  if (v2)
  {
    swift_getKeyPath();
    v17 = v2;
    sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

    sub_21E13D3C4();

    v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4 < 9)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v16[0] = v5;
      sub_21DF5706C(v4);
      sub_21DF5706C(v4);
      NewEntityModel.cardLayout.setter(v16);
      sub_21DF5AF24(v4);
    }
  }

  else
  {
    swift_getKeyPath();
    v17 = v0;
    sub_21E13D3C4();

    v7 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v8 = *(v0 + v7);
    swift_getKeyPath();
    v16[0] = v8;
    sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

    sub_21E13D3C4();

    v9 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v10 = *(v8 + v9);
    sub_21DF5706C(v10);

    if (v10 < 9)
    {
      v14 = 0;
      v15 = v10;
      sub_21DF5706C(v10);
      v11 = static CardLayout.== infix(_:_:)(&v15, &v14);
      sub_21DF5AF24(v15);
      if (v11)
      {
        sub_21DF5AF24(v10);
        v10 = 8;
      }

      swift_getKeyPath();
      v15 = v1;
      sub_21E13D3C4();

      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v15 = v12;

      sub_21DF5706C(v10);
      NewEntityModel.cardLayout.setter(&v15);
    }

    swift_getKeyPath();
    v15 = v1;
    sub_21E13D3C4();

    NewSaliencyModel.presentedEntity.setter(v13);
    return sub_21DF5AF24(v10);
  }
}

uint64_t NewSaliencyModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel_id;
  v4 = sub_21E13D344();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21E0C9558()
{
  v1 = v0;
  v2 = sub_21E13D834();
  v21 = *(v2 - 8);
  v3 = v21;
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  swift_getKeyPath();
  v28 = v0;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();
  v27 = v0;

  sub_21E13D3C4();

  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v7, v0 + v8, v2);
  sub_21E1119A8(v7);

  swift_getKeyPath();
  v26 = v0;
  sub_21E13D3C4();

  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
  swift_beginAccess();
  v11 = *(v1 + v10);
  swift_getKeyPath();
  v25 = v1;

  v12 = v21;
  sub_21E13D3C4();
  v13 = v22;

  v14 = v23;
  v9(v23, v1 + v8, v13);
  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  v9(v7, v11 + v15, v13);
  sub_21E0ECD50(&qword_280F690E0, MEMORY[0x277D78DD0]);
  v16 = v14;
  LOBYTE(v14) = sub_21E142074();
  v17 = *(v12 + 8);
  v17(v7, v13);
  if (v14)
  {
    v9(v7, v16, v13);
    sub_21E0F4BC0(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v20 - 2) = v11;
    *(&v20 - 1) = v16;
    v24 = v11;
    sub_21E0ECD50(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  v17(v16, v13);
}

uint64_t (*sub_21E0C99AC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21E0C9A10;
}

uint64_t sub_21E0C9A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D834();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_21E0C9558();
  return (*(v5 + 8))(v8, v4);
}

void (*NewSaliencyModel.entryPoint.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0C99AC(v4);
  return sub_21E0C9C9C;
}

uint64_t sub_21E0C9CA8(unint64_t a1)
{
  v2 = v1;
  v158 = sub_21E13EF04();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v149 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v5 - 8);
  v156 = &v148 - v6;
  v169 = sub_21E13D344();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v155 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8430);
  MEMORY[0x28223BE20](v165);
  v159 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v164 = &v148 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8438);
  MEMORY[0x28223BE20](v11 - 8);
  v151 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v162 = &v148 - v14;
  MEMORY[0x28223BE20](v15);
  v163 = &v148 - v16;
  MEMORY[0x28223BE20](v17);
  v160 = &v148 - v18;
  MEMORY[0x28223BE20](v19);
  v167 = &v148 - v20;
  MEMORY[0x28223BE20](v21);
  v166 = &v148 - v22;
  v153 = sub_21E13F1B4();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v148 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v150 = &v148 - v25;
  v186 = sub_21E13D994();
  v26 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v173 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD5D0);
  MEMORY[0x28223BE20](v199);
  v29 = &v148 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v30 - 8);
  v198 = (&v148 - v31);
  v184 = sub_21E13EEB4();
  v32 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v182 = &v148 - v35;
  MEMORY[0x28223BE20](v36);
  v181 = &v148 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98);
  MEMORY[0x28223BE20](v38 - 8);
  v187 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v201 = &v148 - v41;
  MEMORY[0x28223BE20](v42);
  v189 = &v148 - v43;
  sub_21E0DA454(v2, a1);

  NewSaliencyModel.targetEntity.setter(v172);
  sub_21E0CD660(0);
  swift_getKeyPath();
  v44 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v206 = v2;
  v45 = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  v175 = v44;
  v174 = v45;
  sub_21E13D3C4();

  v176 = v2;
  v161 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity;
  v46 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity);
  swift_getKeyPath();
  v206 = v46;
  v47 = sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  v154 = v47;
  sub_21E13D3C4();

  v48 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
  swift_beginAccess();
  v49 = *(v46 + v48);

  v50 = v49;
  if (v49 >> 62)
  {
    goto LABEL_62;
  }

  v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v51)
  {
LABEL_23:

LABEL_34:
    v98 = v168;
    v99 = v164;
    v100 = v166;
    swift_getKeyPath();
    v101 = v176;
    v205 = v176;
    sub_21E13D3C4();

    v102 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
    swift_beginAccess();
    v199 = v102;
    v103 = *(v101 + v102);
    v104 = v169;
    if (v103)
    {
      v105 = v98[2];
      (v105)(v100, v103 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v169);
      v106 = v98[7];
      v107 = (v98 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v106(v100, 0, 1, v104);
    }

    else
    {
      v106 = v98[7];
      v107 = (v98 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v106(v100, 1, 1, v169);
      v105 = v98[2];
    }

    v108 = v167;
    v198 = v105;
    (v105)(v167, v172 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v104);
    v200 = v107;
    v201 = v106;
    v106(v108, 0, 1, v104);
    v109 = *(v165 + 48);
    sub_21DF236C0(v100, v99, &qword_27CEA8438);
    sub_21DF236C0(v108, v99 + v109, &qword_27CEA8438);
    v110 = v100;
    v111 = v98[6];
    if (v111(v99, 1, v104) == 1)
    {
      sub_21DF23614(v108, &qword_27CEA8438);
      sub_21DF23614(v110, &qword_27CEA8438);
      if (v111(v99 + v109, 1, v104) == 1)
      {
        sub_21DF23614(v99, &qword_27CEA8438);
        goto LABEL_45;
      }
    }

    else
    {
      v112 = v160;
      sub_21DF236C0(v99, v160, &qword_27CEA8438);
      if (v111(v99 + v109, 1, v104) != 1)
      {
        v114 = v168;
        v115 = v99 + v109;
        v116 = v155;
        (*(v168 + 32))(v155, v115, v104);
        sub_21E0ECD50(&qword_280F6C088, MEMORY[0x277CC95F0]);
        v117 = sub_21E142074();
        v118 = *(v114 + 8);
        v118(v116, v169);
        sub_21DF23614(v167, &qword_27CEA8438);
        sub_21DF23614(v166, &qword_27CEA8438);
        v118(v112, v169);
        v104 = v169;
        sub_21DF23614(v99, &qword_27CEA8438);
        if (v117)
        {
LABEL_45:
          swift_getKeyPath();
          v119 = v176;
          v204 = v176;
          sub_21E13D3C4();

          v120 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelection;
          swift_beginAccess();
          v121 = v119 + v120;
          v122 = v156;
          sub_21DF236C0(v121, v156, &qword_27CEACB50);
          v123 = v157;
          v124 = v158;
          if ((*(v157 + 48))(v122, 1, v158))
          {
            sub_21DF23614(v122, &qword_27CEACB50);
            v125 = 1;
            v126 = v163;
          }

          else
          {
            v127 = v149;
            (*(v123 + 16))(v149, v122, v124);
            sub_21DF23614(v122, &qword_27CEACB50);
            v126 = v163;
            sub_21E13EE24();
            (*(v123 + 8))(v127, v124);
            v125 = 0;
          }

          v128 = 1;
          (v201)(v126, v125, 1, v104);
          swift_getKeyPath();
          v129 = v104;
          v130 = v176;
          v204 = v176;
          sub_21E13D3C4();

          v131 = *(v130 + v199);
          if (v131)
          {
            v132 = v162;
            (v198)(v162, v131 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v129);
            v128 = 0;
            v133 = v129;
          }

          else
          {
            v133 = v129;
            v132 = v162;
          }

          (v201)(v132, v128, 1, v133);
          v134 = *(v165 + 48);
          v135 = v163;
          v136 = v159;
          sub_21DF236C0(v163, v159, &qword_27CEA8438);
          sub_21DF236C0(v132, v136 + v134, &qword_27CEA8438);
          if (v111(v136, 1, v133) == 1)
          {
            sub_21DF23614(v132, &qword_27CEA8438);
            sub_21DF23614(v135, &qword_27CEA8438);
            if (v111(v136 + v134, 1, v133) == 1)
            {
              sub_21DF23614(v136, &qword_27CEA8438);
              v113 = 1;
              LODWORD(v201) = 1;
              goto LABEL_59;
            }
          }

          else
          {
            v137 = v151;
            sub_21DF236C0(v136, v151, &qword_27CEA8438);
            if (v111(v136 + v134, 1, v133) != 1)
            {
              v138 = v168;
              v139 = v155;
              (*(v168 + 32))(v155, v136 + v134, v133);
              sub_21E0ECD50(&qword_280F6C088, MEMORY[0x277CC95F0]);
              LODWORD(v201) = sub_21E142074();
              v140 = *(v138 + 8);
              v140(v139, v133);
              sub_21DF23614(v162, &qword_27CEA8438);
              sub_21DF23614(v135, &qword_27CEA8438);
              v140(v137, v133);
              sub_21DF23614(v136, &qword_27CEA8438);
              goto LABEL_58;
            }

            sub_21DF23614(v162, &qword_27CEA8438);
            sub_21DF23614(v135, &qword_27CEA8438);
            (*(v168 + 8))(v137, v133);
          }

          sub_21DF23614(v136, &qword_27CEA8430);
          LODWORD(v201) = 0;
LABEL_58:
          v113 = 1;
          goto LABEL_59;
        }

LABEL_43:
        v113 = 0;
        LODWORD(v201) = 0;
LABEL_59:
        swift_getKeyPath();
        v141 = v176;
        v204 = v176;
        sub_21E13D3C4();

        v142 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
        swift_beginAccess();
        v143 = *(v141 + v142);
        swift_getKeyPath();
        v203 = v143;
        sub_21E0ECD50(&qword_280F6BEE0, type metadata accessor for NewBarModel);

        sub_21E13D3C4();

        v144 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
        swift_beginAccess();
        v145 = *(v143 + v144);

        swift_getKeyPath();
        v202 = v141;
        sub_21E13D3C4();

        NewBarModel.apply(entity:isSelected:isHighlighted:)(v172, v113, v201 & 1);

        sub_21E0DA848(v145);

        swift_getKeyPath();
        v202 = v141;
        sub_21E13D3C4();

        swift_getKeyPath();
        v202 = v141;

        sub_21E13D3C4();

        sub_21E111C64(*(v141 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized));
      }

      sub_21DF23614(v167, &qword_27CEA8438);
      sub_21DF23614(v166, &qword_27CEA8438);
      (*(v168 + 8))(v112, v104);
    }

    sub_21DF23614(v99, &qword_27CEA8430);
    goto LABEL_43;
  }

LABEL_3:
  v52 = 0;
  v197 = v50 & 0xC000000000000001;
  v180 = v50 & 0xFFFFFFFFFFFFFF8;
  v179 = (v32 + 4);
  v178 = (v32 + 11);
  v177 = *MEMORY[0x277D79680];
  v171 = (v32 + 1);
  v170 = (v32 + 12);
  v185 = (v26 + 32);
  v195 = *MEMORY[0x277D78FA0];
  v194 = (v26 + 104);
  v193 = (v26 + 48);
  v188 = (v26 + 8);
  v196 = (v26 + 56);
  v192 = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v53 = v187;
  v26 = v189;
  v191 = v50;
  v190 = v51;
  v54 = v186;
  while (1)
  {
    if (v197)
    {
      v55 = MEMORY[0x223D530F0](v52);
    }

    else
    {
      if (v52 >= *(v180 + 16))
      {
        goto LABEL_61;
      }

      v55 = *(v50 + 8 * v52 + 32);
    }

    swift_getKeyPath();
    v205 = v55;
    sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel);
    sub_21E13D3C4();

    v56 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    v57 = v55 + v56;
    v58 = v198;
    sub_21DF236C0(v57, v198, &qword_27CEA6D48);
    v59 = sub_21E13EEE4();
    v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
    v200 = v52;
    if (v60)
    {
      sub_21DF23614(v58, &qword_27CEA6D48);
      v61 = *v196;
      (*v196)(v26, 1, 1, v54);
    }

    else
    {
      v62 = v182;
      sub_21E13EEC4();
      sub_21DF23614(v58, &qword_27CEA6D48);
      v63 = *v179;
      v64 = v181;
      v65 = v62;
      v66 = v184;
      (*v179)(v181, v65, v184);
      v67 = v183;
      v63(v183, v64, v66);
      v68 = (*v178)(v67, v66);
      if (v68 == v177)
      {
        (*v170)(v67, v66);
        v26 = v189;
        v54 = v186;
        (*v185)(v189, v67, v186);
        v61 = *v196;
        (*v196)(v26, 0, 1, v54);
      }

      else
      {
        v69 = v67;
        v61 = *v196;
        v70 = v189;
        v54 = v186;
        (*v196)(v189, 1, 1, v186);
        v71 = v69;
        v26 = v70;
        (*v171)(v71, v66);
      }

      v53 = v187;
    }

    v72 = v201;
    (*v194)(v201, v195, v54);
    v61(v72, 0, 1, v54);
    v73 = *(v199 + 48);
    v32 = &qword_27CEA6D98;
    sub_21DF236C0(v26, v29, &qword_27CEA6D98);
    sub_21DF236C0(v72, &v29[v73], &qword_27CEA6D98);
    v74 = *v193;
    if ((*v193)(v29, 1, v54) == 1)
    {
      break;
    }

    sub_21DF236C0(v29, v53, &qword_27CEA6D98);
    if (v74(&v29[v73], 1, v54) == 1)
    {

      sub_21DF23614(v201, &qword_27CEA6D98);
      sub_21DF23614(v26, &qword_27CEA6D98);
      (*v188)(v53, v54);
      goto LABEL_19;
    }

    v75 = v173;
    (*v185)(v173, &v29[v73], v54);
    sub_21E0ECD50(&qword_27CEAD5D8, MEMORY[0x277D78FA8]);
    v76 = sub_21E142074();

    v77 = *v188;
    v78 = v75;
    v26 = v189;
    (*v188)(v78, v54);
    sub_21DF23614(v201, &qword_27CEA6D98);
    sub_21DF23614(v26, &qword_27CEA6D98);
    v77(v53, v54);
    sub_21DF23614(v29, &qword_27CEA6D98);
    v80 = v200;
    if (v76)
    {
      goto LABEL_24;
    }

LABEL_21:
    v79 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v147 = v50;
      v51 = sub_21E1427B4();
      v50 = v147;
      if (!v51)
      {
        goto LABEL_23;
      }

      goto LABEL_3;
    }

    v52 = v80 + 1;
    v50 = v191;
    if (v79 == v190)
    {
      goto LABEL_23;
    }
  }

  sub_21DF23614(v201, &qword_27CEA6D98);
  sub_21DF23614(v26, &qword_27CEA6D98);
  if (v74(&v29[v73], 1, v54) != 1)
  {
LABEL_19:
    sub_21DF23614(v29, &qword_27CEAD5D0);
    v80 = v200;
    goto LABEL_21;
  }

  sub_21DF23614(v29, &qword_27CEA6D98);
  v80 = v200;
LABEL_24:

  swift_getKeyPath();
  v81 = v176;
  v205 = v176;
  sub_21E13D3C4();

  v82 = *(v81 + v161);
  swift_getKeyPath();
  v205 = v82;

  sub_21E13D3C4();

  v205 = v82;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  v83 = sub_21E001C40(v80);
  swift_endAccess();
  v205 = v82;
  swift_getKeyPath();
  sub_21E13D3D4();

  swift_getKeyPath();
  v205 = v81;
  sub_21E13D3C4();

  v84 = *(v81 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__translateAction);
  if (v84)
  {

    v85 = v150;
    sub_21E13EBF4();
    v86 = sub_21E13F1A4();
    v87 = sub_21E142554();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_21DF05000, v86, v87, "Inserting VKC-backed translate action based on presence of prior ActionPredicted one", v88, 2u);
      MEMORY[0x223D540B0](v88, -1, -1);
    }

    (*(v152 + 8))(v85, v153);
    swift_getKeyPath();
    v89 = v176;
    v205 = v176;
    sub_21E13D3C4();

    v90 = *(v89 + v161);
    swift_getKeyPath();
    v205 = v90;

    sub_21E13D3C4();

    v205 = v90;
    swift_getKeyPath();
    sub_21E13D3E4();

    v91 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
    swift_beginAccess();
    if (*(v90 + v91) >> 62 && sub_21E1427B4() < 0)
    {
      __break(1u);
      goto LABEL_66;
    }

    sub_21DF60428(0, 0, v84);
    swift_endAccess();

    v205 = v90;
    swift_getKeyPath();
    sub_21E13D3D4();

LABEL_33:

    goto LABEL_34;
  }

  v92 = v148;
  sub_21E13EBF4();
  v93 = sub_21E13F1A4();
  v94 = sub_21E142554();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_21DF05000, v93, v94, "Moving ActionPredicted translate action to FSE index 0 while awaiting VKC-backed one", v95, 2u);
    MEMORY[0x223D540B0](v95, -1, -1);
  }

  (*(v152 + 8))(v92, v153);
  swift_getKeyPath();
  v96 = v176;
  v205 = v176;
  sub_21E13D3C4();

  v84 = *(v96 + v161);
  swift_getKeyPath();
  v205 = v84;

  sub_21E13D3C4();

  v205 = v84;
  swift_getKeyPath();
  sub_21E13D3E4();

  v97 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
  swift_beginAccess();
  if (!(*(v84 + v97) >> 62))
  {
LABEL_32:
    sub_21DF60428(0, 0, v83);
    swift_endAccess();

    v205 = v84;
    swift_getKeyPath();
    sub_21E13D3D4();

    goto LABEL_33;
  }

LABEL_66:
  result = sub_21E1427B4();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21E0CBC60(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21E0CBCC4;
}

uint64_t sub_21E0CBCC4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_21E141D64();
    sub_21E13F864();
  }

  return result;
}

uint64_t type metadata accessor for NewSaliencyModel()
{
  result = qword_280F6B240;
  if (!qword_280F6B240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E0CBDAC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();
  *(a1 + v4) = a2;

  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21E0CBE5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity);
}

uint64_t sub_21E0CBF3C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity;
  v5 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity);
  sub_21E1423C4();
  v10 = v5;
  v11 = a1;

  v6 = sub_21E0C372C(sub_21DF6078C, v9, "VisualIntelligenceUI/NewEntityModel.swift");

  if (v6)
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v2;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21E0CC108(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportData;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEADA80);
  v7 = sub_21E0EBBD0(v5, a1);
  sub_21DF23614(v5, &qword_27CEADA80);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  else
  {
    swift_beginAccess();
    sub_21DF35A68(a1, v1 + v6, &qword_27CEADA80);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEADA80);
}

void (*NewSaliencyModel.bar.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E0CC474;
}

uint64_t sub_21E0CC4BC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__showVI;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*NewSaliencyModel.showVI.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E0CC660;
}

uint64_t sub_21E0CC6CC(char a1)
{
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized) = a1 & 1;
    swift_getKeyPath();
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    swift_beginAccess();
    swift_getKeyPath();

    sub_21E13D3C4();

    sub_21E111C64(*(v1 + v2));
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21E0CC8CC(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized;
  *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized) = a2;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();

  sub_21E13D3C4();

  sub_21E111C64(*(a1 + v3));
}

uint64_t sub_21E0CC9FC()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E0C9CA8(v0);
}

uint64_t sub_21E0CCAEC()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();
}

uint64_t sub_21E0CCB90(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__translateAction;
  v5 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__translateAction);
  if (v5)
  {
    if (a1)
    {
      v6 = sub_21E1423C4();
      MEMORY[0x28223BE20](v6);
      v11 = v5;
      v12 = a1;

      v7 = sub_21E0C372C(sub_21DF60774, &v10, "VisualIntelligenceUI/NewActionModel.swift");

      if (v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11 = v2;
    v12 = a1;
    v13 = v2;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;

  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21E0CCD98(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__translateAction) = a2;

  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21E0CCE3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t sub_21E0CCF2C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__shouldShowAskAcmeUI;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*NewSaliencyModel.shouldShowAskAcmeUI.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E0CD0D0;
}

uint64_t sub_21E0CD0DC()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();
}

uint64_t sub_21E0CD188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels);
}

uint64_t sub_21E0CD23C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels;
  if (!*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  if (!a1 || (sub_21E0E046C(*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels), a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_21E0CD39C()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  return *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline);
}

uint64_t sub_21E0CD44C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v5 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21E0CD508(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline;
  if ((*(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = *&result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3B4();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_21E0CD660(int a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v22 - v4;
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v33 = v1;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  result = swift_beginAccess();
  v8 = *(v2 + v6);
  if (v8 >> 62)
  {
    result = sub_21E1427B4();
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
    v24 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
    v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelection;
    v30 = v8 & 0xC000000000000001;
    v31 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress;

    v27 = v10;
    swift_beginAccess();
    v23 = v11;
    swift_beginAccess();
    v12 = 0;
    v28 = v8;
    v29 = v9;
    v22 = v5;
    do
    {
      if (v30)
      {
        v14 = MEMORY[0x223D530F0](v12, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v12 + 32);
      }

      swift_getKeyPath();
      v32 = v2;
      sub_21E13D3C4();

      if (*(v2 + v31) == 1)
      {
        if (*(v14 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) == 2)
        {
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v22 - 2) = v14;
          *(&v22 - 8) = 2;
          v32 = v14;
          sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
          v9 = v29;
          sub_21E13D3B4();

          v8 = v28;
        }
      }

      else
      {
        swift_getKeyPath();
        v32 = v2;

        sub_21E13D3C4();

        v15 = *(v2 + v27);

        if ((v15 && v14 == v15 || (swift_getKeyPath(), v32 = v2, , sub_21E13D3C4(), , v16 = *(v2 + v24), , v16) && v14 == v16) && (v26 & 1) == 0)
        {
          if (*(v14 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence))
          {
            v17 = swift_getKeyPath();
            MEMORY[0x28223BE20](v17);
            *(&v22 - 2) = v14;
            *(&v22 - 8) = 0;
            v32 = v14;
            sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
            sub_21E13D3B4();

            v8 = v28;
            v9 = v29;
          }

          else
          {

            v9 = v29;
          }
        }

        else
        {
          swift_getKeyPath();
          v32 = v2;
          sub_21E13D3C4();

          v18 = v25;
          sub_21DF236C0(v2 + v23, v25, &qword_27CEACB50);
          v19 = sub_21E13EF04();
          if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = 2;
          }

          sub_21DF23614(v18, &qword_27CEACB50);
          if (*(v14 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) == v20)
          {
          }

          else
          {
            v21 = swift_getKeyPath();
            MEMORY[0x28223BE20](v21);
            *(&v22 - 2) = v14;
            *(&v22 - 8) = v20;
            v32 = v14;
            sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
            sub_21E13D3B4();

            v8 = v28;
          }

          v9 = v29;
        }
      }

      ++v12;
    }

    while (v9 != v12);
  }

  return result;
}

uint64_t sub_21E0CDD00(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress;
  *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress) = a2;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(a1 + v3) == 1)
  {
    NewSaliencyModel.presentedEntity.setter(0);
  }

  return sub_21E0CD660(0);
}

void *sub_21E0CDDD4()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v1 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer);
  v2 = v1;
  return v1;
}

id sub_21E0CDE84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer);
  *a2 = v4;

  return v4;
}

void sub_21E0CDF44(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer;
  v5 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer);
  if (v5)
  {
    if (a1)
    {
      sub_21DF3ED18(0, &unk_280F68C30);
      v6 = v5;
      v7 = a1;
      v8 = sub_21E1426D4();

      if (v8)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!a1)
  {
LABEL_4:
    swift_getKeyPath();
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    [*(v2 + v4) invalidate];
    v9 = *(v2 + v4);
    *(v2 + v4) = a1;

    return;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3B4();
}

void sub_21E0CE130(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  v4 = a2;
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer;
  [*(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer) invalidate];
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

uint64_t sub_21E0CE20C()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E0F953C();
}

uint64_t sub_21E0CE2DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
  swift_beginAccess();
  *(v1 + v3) = a1;

  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);

  sub_21E13D3B4();
}

void (*sub_21E0CE494(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21E0CE51C;
}

void sub_21E0CE51C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    swift_getKeyPath();
    *v3 = v4;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v6 = *(v4 + v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *v3 = v6;
    sub_21E0ECD50(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel);

    sub_21E13D3B4();
  }

  free(v3);
}

void (*NewSaliencyModel.userSelection.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0CE494(v4);
  return sub_21E0CE818;
}

uint64_t sub_21E0CE848@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v7 = *a1;
  swift_beginAccess();
  return sub_21DF236C0(v9 + v7, a3, a2);
}

uint64_t sub_21E0CE928@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v8 = *a2;
  swift_beginAccess();
  return sub_21DF236C0(v7 + v8, a4, a3);
}

uint64_t sub_21E0CEA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_21DF236C0(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_21E0CEAB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelection;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEACB50);
  v7 = sub_21E0E7C34(v5, a1);
  sub_21DF23614(v5, &qword_27CEACB50);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  else
  {
    swift_beginAccess();
    sub_21DF35A68(a1, v1 + v6, &qword_27CEACB50);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEACB50);
}

uint64_t sub_21E0CECC8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_21E0CED7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  swift_getKeyPath();
  *&v17[0] = v0;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v5 = (v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  swift_beginAccess();
  if (!*v5 || (v6 = v5[1], *&v17[0] = *v5, *(&v17[0] + 1) = v6, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB070), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD620), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  v7 = sub_21E1423F4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_21DF236C0(v17, &v14, &qword_27CEAD618);
  sub_21E1423C4();

  v8 = sub_21E1423B4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v1;
  v11 = v15;
  *(v9 + 40) = v14;
  *(v9 + 56) = v11;
  *(v9 + 72) = v16;
  sub_21E0C2E04(0, 0, v4, &unk_21E1573F8, v9);

  return sub_21DF23614(v17, &qword_27CEAD618);
}

uint64_t sub_21E0CEFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21E1423C4();
  v5[3] = sub_21E1423B4();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_21E0CF0B4;

  return sub_21E0CF1F0(a5);
}

uint64_t sub_21E0CF0B4()
{

  v1 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21E0ED0B0, v1, v0);
}

uint64_t sub_21E0CF1F0(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD628);
  v2[36] = swift_task_alloc();
  v3 = sub_21E13DF44();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = sub_21E1423C4();
  v2[41] = sub_21E1423B4();
  v5 = sub_21E142364();
  v2[42] = v5;
  v2[43] = v4;

  return MEMORY[0x2822009F8](sub_21E0CF380, v5, v4);
}

uint64_t sub_21E0CF380()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 264);
  sub_21E13DEE4();
  sub_21E13DED4();
  sub_21E13DE94();
  sub_21E13DEA4();
  *(v0 + 352) = sub_21E13DE84();
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  *(v0 + 208) = v4;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__streamReadingTask;
  if (*(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__streamReadingTask))
  {

    sub_21E142414();
  }

  v6 = *(v0 + 264);
  swift_getKeyPath();
  *(v0 + 216) = v6;
  sub_21E13D3C4();

  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionReadingTask;
  if (*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionReadingTask))
  {

    sub_21E142414();
  }

  v7 = *(v0 + 264);
  swift_getKeyPath();
  *(v0 + 224) = v7;
  sub_21E13D3C4();

  v26 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask;
  if (*(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
    sub_21E142414();
  }

  v8 = *(v0 + 256);
  NewSaliencyModel.reset()();
  sub_21DF236C0(v8, v0 + 56, &qword_27CEAD618);
  if (*(v0 + 80))
  {
    v9 = *(v0 + 288);
    sub_21DF0DBF0((v0 + 56), v0 + 16);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD630);
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = *(v11 + 16);
    *(v0 + 176) = v10;
    *(v0 + 184) = v13;
    *(v0 + 120) = swift_getOpaqueTypeMetadata2();
    *(v0 + 192) = v10;
    *(v0 + 200) = v13;
    *(v0 + 128) = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v15 = swift_task_alloc();
    *(v0 + 360) = v15;
    *v15 = v0;
    v15[1] = sub_21E0CF984;
    v16 = *(v0 + 288);

    return MEMORY[0x2821E0D58](boxed_opaque_existential_1, v16, v10, v13);
  }

  else
  {

    sub_21DF23614(v0 + 56, &qword_27CEAD618);
    if (*(v4 + v5))
    {
      v17 = *(v0 + 264);
      swift_getKeyPath();
      v18 = swift_task_alloc();
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v0 + 248) = v17;
      sub_21E13D3B4();
    }

    if (*(v6 + v25))
    {
      v19 = *(v0 + 264);
      swift_getKeyPath();
      v20 = swift_task_alloc();
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v0 + 240) = v19;
      sub_21E13D3B4();
    }

    if (*(v7 + v26))
    {
      v21 = *(v0 + 264);
      swift_getKeyPath();
      v22 = swift_task_alloc();
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v0 + 232) = v21;
      sub_21E13D3B4();
    }

    else
    {
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_21E0CF984()
{
  v1 = *v0;
  v2 = *(*v0 + 288);

  sub_21DF23614(v2, &qword_27CEAD628);
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);

  return MEMORY[0x2822009F8](sub_21E0CFAD8, v4, v3);
}

uint64_t sub_21E0CFAD8()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);

  v3 = sub_21E1423F4();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_21DFA7E94(v0 + 96, v0 + 136);

  v5 = sub_21E1423B4();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  sub_21DF0DBF0((v0 + 136), (v6 + 4));
  v6[9] = v4;
  v6[10] = v2;

  v8 = sub_21E0C2E04(0, 0, v1, &unk_21E1574B8, v6);
  sub_21E0D0164(v8, &OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionReadingTask);

  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t (*sub_21E0CFCA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21E0CFD04;
}

uint64_t sub_21E0CFD1C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_21E0CFDE8()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3B4();
}

uint64_t sub_21E0CFEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_21E0CED7C();
}

void (*NewSaliencyModel.stream.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0CFCA0(v4);
  return sub_21E0D0078;
}

uint64_t sub_21E0D0098@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_21E0D0164(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = sub_21E142404();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_21E0D02F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask;
  if (!*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
  v4 = sub_21E142404();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

void sub_21E0D0494(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_21E13E3D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v27 = v2;
  v24 = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  v25 = v11;
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration;
  swift_beginAccess();
  v23 = *(v8 + 16);
  v23(v10, v2 + v12, v7);
  sub_21E0ECD50(&qword_280F690A8, MEMORY[0x277D79468]);
  v22[2] = a1;
  LOBYTE(v11) = sub_21E142074();
  v13 = *(v8 + 8);
  v13(v10, v7);
  if ((v11 & 1) == 0)
  {
    v22[1] = sub_21E13D7A4();
    swift_getKeyPath();
    v26 = v2;
    sub_21E13D3C4();

    v23(v10, v2 + v12, v7);
    sub_21E13D794();
    v13(v10, v7);
  }

  swift_getKeyPath();
  v26 = v2;
  sub_21E13D3C4();

  v23(v10, v2 + v12, v7);
  v14 = sub_21E13E3C4();
  v13(v10, v7);
  if (v14)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = sub_21E1423F4();
      (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
      sub_21E1423C4();
      v18 = v16;
      v19 = sub_21E1423B4();
      v20 = swift_allocObject();
      v21 = MEMORY[0x277D85700];
      v20[2] = v19;
      v20[3] = v21;
      v20[4] = v18;
      sub_21E0C2E04(0, 0, v6, &unk_21E157248, v20);
    }
  }
}

uint64_t sub_21E0D0884()
{
  v0[2] = sub_21E1423C4();
  v0[3] = sub_21E1423B4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21DF81DC0;

  return sub_21E089870();
}

uint64_t sub_21E0D0930(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13E3D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  v12 = *(v5 + 16);
  v12(&v16[-v10], a2, v4, v9);
  v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration;
  swift_beginAccess();
  (v12)(v7, a1 + v13, v4);
  swift_beginAccess();
  (*(v5 + 24))(a1 + v13, v11, v4);
  swift_endAccess();
  sub_21E0D0494(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  return (v14)(v11, v4);
}

uint64_t sub_21E0D0AE0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration;
  swift_beginAccess();
  *v7 = a2 & 1;
  *(v7 + 1) = BYTE1(a2) & 1;
  *(v7 + 2) = BYTE2(a2) & 1;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
}

void (*NewSaliencyModel.viuiConfiguration.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E0D0CC0;
}

Swift::Void __swiftcall NewSaliencyModel.reset()()
{
  v1 = v0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
  MEMORY[0x28223BE20](v27);
  v28 = &v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_21E13EF04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30 = v0;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  NewEntityModel.reset()();

  swift_getKeyPath();
  v30 = v0;
  sub_21E13D3C4();

  sub_21E13EDC4();
  NewEntityModel.apply(pin:)(v9);

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  v30 = v0;
  sub_21E13D3C4();

  v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    v12 = sub_21E1427B4();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  v26 = v6;

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223D530F0](i, v11);
    }

    else
    {
    }

    NewEntityModel.reset()();
  }

  v6 = v26;
LABEL_10:
  NewSaliencyModel.selectedEntity.setter(0);
  NewSaliencyModel.presentedEntity.setter(0);
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_21E0CEAB8(v5);
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v26 - 2) = v1;
    *(&v26 - 8) = 0;
    v29 = v1;
    sub_21E13D3B4();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval) = 0;
  }

  v15 = v28;
  v16 = sub_21E13E084();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_21E0CC108(v15);
  swift_getKeyPath();
  v29 = v1;
  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask) && (, sub_21E142414(), , *(v1 + v17)))
  {
    v18 = swift_getKeyPath();
    MEMORY[0x28223BE20](v18);
    *(&v26 - 2) = v1;
    *(&v26 - 1) = 0;
    v29 = v1;
    sub_21E13D3B4();
  }

  else
  {
    *(v1 + v17) = 0;
  }

  sub_21E0CC6CC(0);
  NewSaliencyModel.entities.setter(MEMORY[0x277D84F90]);
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels))
  {
    v19 = swift_getKeyPath();
    MEMORY[0x28223BE20](v19);
    *(&v26 - 2) = v1;
    *(&v26 - 1) = 0;
    v29 = v1;
    sub_21E13D3B4();
  }

  v20 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline + 8))
  {
    *v20 = 0;
    *(v20 + 8) = 1;
  }

  else
  {
    v21 = swift_getKeyPath();
    MEMORY[0x28223BE20](v21);
    *(&v26 - 4) = v1;
    *(&v26 - 3) = 0;
    *(&v26 - 16) = 1;
    v29 = v1;
    sub_21E13D3B4();
  }

  v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer;
  v23 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer);
  v24 = swift_getKeyPath();
  if (v23)
  {
    MEMORY[0x28223BE20](v24);
    *(&v26 - 2) = v1;
    *(&v26 - 1) = 0;
    v29 = v1;
    sub_21E13D3B4();
  }

  else
  {
    v29 = v1;
    sub_21E13D3C4();

    [*(v1 + v22) invalidate];
    v25 = *(v1 + v22);
    *(v1 + v22) = 0;
  }
}

uint64_t sub_21E0D1458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[46] = a4;
  v5[47] = a5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50) - 8);
  v5[48] = v6;
  v5[49] = *(v6 + 64);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v7 = sub_21E13EF04();
  v5[52] = v7;
  v5[53] = *(v7 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v8 = sub_21E13F1B4();
  v5[56] = v8;
  v5[57] = *(v8 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v9 = sub_21E13E844();
  v5[63] = v9;
  v5[64] = *(v9 - 8);
  v5[65] = swift_task_alloc();
  v10 = sub_21E13DC74();
  v5[66] = v10;
  v5[67] = *(v10 - 8);
  v5[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD638);
  v5[69] = swift_task_alloc();
  v5[70] = sub_21E1423C4();
  v5[71] = sub_21E1423B4();
  v12 = sub_21E142364();
  v5[72] = v12;
  v5[73] = v11;

  return MEMORY[0x2822009F8](sub_21E0D1754, v12, v11);
}

uint64_t sub_21E0D1754()
{
  v1 = v0[46];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[11] = swift_getAssociatedTypeWitness();
  v0[12] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_21E142444();

  swift_beginAccess();
  v6 = sub_21E1423B4();
  v0[74] = v6;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 8), v0[11]);
  v7 = swift_task_alloc();
  v0[75] = v7;
  *v7 = v0;
  v7[1] = sub_21E0D1938;
  v8 = v0[69];
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v8, v6, v9);
}

uint64_t sub_21E0D1938()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  if (!v0)
  {

    v4 = *(v2 + 584);
    v5 = *(v2 + 576);

    return MEMORY[0x2822009F8](sub_21E0D1A54, v5, v4);
  }

  return result;
}

uint64_t sub_21E0D1A54()
{
  v1 = v0;
  v2 = v0[69];
  v3 = v0[67];
  v4 = v1[66];
  if ((*(v3 + 48))(v2, 1, v4) != 1)
  {
    (*(v3 + 32))(v1[68], v2, v4);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      (*(v1[67] + 8))(v1[68], v1[66]);
      goto LABEL_6;
    }

    v6 = Strong;
    if (sub_21E142434())
    {
      (*(v1[67] + 8))(v1[68], v1[66]);

      goto LABEL_6;
    }

    swift_getKeyPath();
    v1[31] = v6;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v9 = (v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
    swift_beginAccess();
    if (*v9 && (v10 = v9[1], v1[29] = *v9, v1[30] = v10, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB070), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD620), (swift_dynamicCast() & 1) != 0))
    {
      if (v1[21])
      {
        v11 = v1[68];
        v12 = v1[66];
        sub_21DF0DBF0(v1 + 9, (v1 + 13));
        v13 = v1[16];
        v14 = v1[17];
        v15 = __swift_project_boxed_opaque_existential_1(v1 + 13, v13);
        sub_21E0D2BFC(v15, v11, v13, v12, v14, MEMORY[0x277D79138]);
        __swift_destroy_boxed_opaque_existential_0((v1 + 13));
LABEL_15:
        v16 = v1[65];
        v17 = v1[63];
        v18 = v1[64];
        v19 = [objc_opt_self() processInfo];
        [v19 systemUptime];
        v21 = v20;

        sub_21E13DC54();
        v22 = sub_21E13E814();
        v23 = *(v18 + 8);
        v23(v16, v17);
        if ((v22 & 1) != 0 && (swift_getKeyPath(), v1[45] = v6, sub_21E13D3C4(), , *(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline + 8) == 1))
        {
          sub_21E0CD508(COERCE__INT64(v21 + 1.5), 0);
          sub_21E13EBE4();
          v24 = sub_21E13F1A4();
          v25 = sub_21E142554();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 134218240;
            *(v26 + 4) = v21;
            *(v26 + 12) = 2048;
            *(v26 + 14) = v21 + 1.5;
            _os_log_impl(&dword_21DF05000, v24, v25, "Final frame processing in flight. It's %f, pill deadline is %f", v26, 0x16u);
            MEMORY[0x223D540B0](v26, -1, -1);
          }

          v27 = v1[62];
          v29 = v1[56];
          v28 = v1[57];

          (*(v28 + 8))(v27, v29);
        }

        else
        {
          v30 = v1[65];
          v31 = v1[63];
          sub_21E13DC54();
          v32 = sub_21E13E814();
          v23(v30, v31);
          if ((v32 & 1) == 0)
          {
            v33 = v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline;
            if (*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline + 8) == 1)
            {
              *v33 = 0;
              *(v33 + 8) = 1;
            }

            else
            {
              swift_getKeyPath();
              v34 = swift_task_alloc();
              *(v34 + 16) = v6;
              *(v34 + 24) = 0;
              *(v34 + 32) = 1;
              v1[44] = v6;
              sub_21E13D3B4();
            }

            v35 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer;
            v36 = *(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer);
            swift_getKeyPath();
            if (v36)
            {
              v37 = swift_task_alloc();
              *(v37 + 16) = v6;
              *(v37 + 24) = 0;
              v1[43] = v6;
              sub_21E13D3B4();
            }

            else
            {
              v1[32] = v6;
              sub_21E13D3C4();

              [*(v6 + v35) invalidate];
              v38 = *(v6 + v35);
              *(v6 + v35) = 0;
            }
          }
        }

        swift_getKeyPath();
        v1[33] = v6;
        sub_21E13D3C4();

        v39 = v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline;
        v131 = v1;
        if ((*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline + 8) & 1) != 0 || (v40 = *v39, v21 >= *v39))
        {
          v58 = sub_21E13DC34();
          swift_getKeyPath();
          v1[34] = v6;
          sub_21E13D3C4();

          if (*(v39 + 8))
          {
            v59 = v1[65];
            v60 = v1[63];
            sub_21E13DC54();
            v61 = sub_21E13E814();
            v62 = v60;
            v1 = v131;
            v23(v59, v62);
            if (v61)
            {
              sub_21E13EBE4();
              v63 = sub_21E13F1A4();
              v64 = sub_21E142564();
              v65 = os_log_type_enabled(v63, v64);
              v67 = v131[57];
              v66 = v131[58];
              v68 = v131[56];
              if (v65)
              {
                v69 = swift_slowAlloc();
                *v69 = 0;
                _os_log_impl(&dword_21DF05000, v63, v64, "Still image output without pill deadline set", v69, 2u);
                MEMORY[0x223D540B0](v69, -1, -1);
              }

              (*(v67 + 8))(v66, v68);
              v1 = v131;
            }
          }

          else
          {
            v70 = *v39;
            sub_21E13EBE4();

            v71 = sub_21E13F1A4();
            v72 = sub_21E142554();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              *v73 = 134218496;
              *(v73 + 4) = v70;
              *(v73 + 12) = 2048;
              *(v73 + 14) = v21;
              *(v73 + 22) = 2048;
              *(v73 + 24) = *(v58 + 16);

              _os_log_impl(&dword_21DF05000, v71, v72, "Deadline was %f - it's %f and the AP output contains %ld pins", v73, 0x20u);
              MEMORY[0x223D540B0](v73, -1, -1);
            }

            else
            {
            }

            (*(v1[57] + 8))(v1[59], v1[56]);
            v74 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer;
            v75 = *(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer);
            swift_getKeyPath();
            if (v75)
            {
              v76 = swift_task_alloc();
              *(v76 + 16) = v6;
              *(v76 + 24) = 0;
              v1[36] = v6;
              sub_21E13D3B4();
            }

            else
            {
              v1[35] = v6;
              sub_21E13D3C4();

              [*(v6 + v74) invalidate];
              v77 = *(v6 + v74);
              *(v6 + v74) = 0;
            }
          }

          v78 = v1 + 50;
          v79 = v1[50];
          sub_21E13DC64();
          v80 = sub_21E13DC44();
          sub_21E0D3A64(v58, v79, v80 & 1);

          goto LABEL_73;
        }

        v41 = sub_21E13DC34();
        v44 = v41;
        v45 = *(v41 + 16);
        v130 = v6;
        if (v45)
        {
          v46 = 0;
          v47 = MEMORY[0x277D84F90];
          v128 = *(v41 + 16);
          while (v46 < *(v44 + 16))
          {
            v48 = v1[53];
            v49 = *(v48 + 16);
            v48 += 16;
            v50 = (*(v48 + 64) + 32) & ~*(v48 + 64);
            v51 = *(v48 + 56);
            v49(v1[55], v44 + v50 + v51 * v46, v1[52]);
            if (sub_21E13EE14())
            {
              v52 = *(v1[53] + 32);
              v52(v1[54], v1[55], v1[52]);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v1[37] = v47;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_21DF5C3C4(0, *(v47 + 16) + 1, 1);
                v47 = v1[37];
              }

              v55 = *(v47 + 16);
              v54 = *(v47 + 24);
              if (v55 >= v54 >> 1)
              {
                sub_21DF5C3C4(v54 > 1, v55 + 1, 1);
                v47 = v131[37];
              }

              v56 = v131[54];
              v57 = v131[52];
              *(v47 + 16) = v55 + 1;
              v41 = v52(v47 + v50 + v55 * v51, v56, v57);
              v1 = v131;
              v45 = v128;
              v6 = v130;
            }

            else
            {
              v41 = (*(v1[53] + 8))(v1[55], v1[52]);
            }

            if (v45 == ++v46)
            {
              goto LABEL_53;
            }
          }

          __break(1u);
          return MEMORY[0x282200310](v41, v42, v43);
        }

        v47 = MEMORY[0x277D84F90];
LABEL_53:
        sub_21E13DC64();
        v81 = sub_21E13DC44();
        v82 = v81;
        if (*(v47 + 16) >= *(v44 + 16))
        {

          swift_getKeyPath();
          v1[38] = v6;
          sub_21E13D3C4();

          v86 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer;
          if (*(v6 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer))
          {
            v87 = v47;
            sub_21E13EBE4();
            v88 = sub_21E13F1A4();
            v89 = sub_21E142554();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              *v90 = 134217984;
              *(v90 + 4) = v21;
              _os_log_impl(&dword_21DF05000, v88, v89, "%f: All pins finalized before deadline - canceling timer", v90, 0xCu);
              MEMORY[0x223D540B0](v90, -1, -1);
            }

            v91 = v1[60];
            v93 = v1[56];
            v92 = v1[57];

            (*(v92 + 8))(v91, v93);
            v94 = *(v6 + v86);
            swift_getKeyPath();
            if (v94)
            {
              v95 = swift_task_alloc();
              *(v95 + 16) = v6;
              *(v95 + 24) = 0;
              v1[40] = v6;
              sub_21E13D3B4();
            }

            else
            {
              v1[39] = v6;
              sub_21E13D3C4();

              [*(v6 + v86) invalidate];
              v117 = *(v6 + v86);
              *(v6 + v86) = 0;
            }

            v47 = v87;
          }

          goto LABEL_70;
        }

        v127 = v81;
        aBlock = v1 + 2;
        sub_21E13EBE4();

        v83 = sub_21E13F1A4();
        v84 = sub_21E142554();
        v129 = v47;
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 134218496;
          *(v85 + 4) = v21;
          *(v85 + 12) = 2048;
          *(v85 + 14) = *(v44 + 16);

          *(v85 + 22) = 2048;
          *(v85 + 24) = v40;
          _os_log_impl(&dword_21DF05000, v83, v84, "%f: Withholding %ld pins until %f", v85, 0x20u);
          MEMORY[0x223D540B0](v85, -1, -1);
        }

        else
        {
        }

        v96 = v1[61];
        v97 = v1[56];
        v98 = v1[57];
        v100 = v1[50];
        v99 = v1[51];
        v101 = v1[49];
        v102 = v131[48];
        (*(v98 + 8))(v96, v97);
        v125 = objc_opt_self();
        v103 = swift_allocObject();
        swift_weakInit();
        sub_21DF236C0(v99, v100, &qword_27CEACB50);
        v104 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v105 = v104 + v101;
        v106 = swift_allocObject();
        *(v106 + 16) = v103;
        *(v106 + 24) = v44;
        v107 = v106 + v104;
        v1 = v131;
        sub_21DF3DE9C(v100, v107, &qword_27CEACB50);
        v82 = v127;
        *(v106 + v105) = v127 & 1;
        v131[6] = sub_21E0EC5D0;
        v131[7] = v106;
        v131[2] = MEMORY[0x277D85DD0];
        v131[3] = 1107296256;
        v131[4] = sub_21E0D4A2C;
        v131[5] = &block_descriptor_11;
        v108 = _Block_copy(aBlock);

        v109 = [v125 scheduledTimerWithTimeInterval:0 repeats:v108 block:v40 - v21];
        _Block_release(v108);
        v110 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer;
        v111 = *(v130 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer);
        if (v111)
        {
          if (v109)
          {
            sub_21DF3ED18(0, &unk_280F68C30);
            v112 = v111;
            v113 = v109;
            v114 = sub_21E1426D4();

            if (v114)
            {
              goto LABEL_65;
            }
          }
        }

        else if (!v109)
        {
LABEL_65:
          swift_getKeyPath();
          v131[42] = v130;
          sub_21E13D3C4();

          [*(v130 + v110) invalidate];
          v115 = *(v130 + v110);
          *(v130 + v110) = v109;

          v47 = v129;
LABEL_70:
          v78 = v1 + 51;
          if (*(v47 + 16))
          {
            sub_21E0D3A64(v47, *v78, v82 & 1);
          }

LABEL_73:
          v118 = *v78;
          v119 = v1[68];
          v120 = v1[67];
          v121 = v1;
          v122 = v1[66];

          sub_21DF23614(v118, &qword_27CEACB50);
          (*(v120 + 8))(v119, v122);
          v123 = sub_21E1423B4();
          v121[74] = v123;
          __swift_mutable_project_boxed_opaque_existential_1((v121 + 8), v121[11]);
          v124 = swift_task_alloc();
          v121[75] = v124;
          *v124 = v121;
          v124[1] = sub_21E0D1938;
          v41 = v121[69];
          v43 = MEMORY[0x277D85700];
          v42 = v123;

          return MEMORY[0x282200310](v41, v42, v43);
        }

        swift_getKeyPath();
        v116 = swift_task_alloc();
        *(v116 + 16) = v130;
        *(v116 + 24) = v109;
        v131[41] = v130;
        sub_21E13D3B4();

        v47 = v129;
        goto LABEL_70;
      }
    }

    else
    {
      v1[22] = 0;
      *(v1 + 9) = 0u;
      *(v1 + 10) = 0u;
    }

    sub_21DF23614((v1 + 18), &qword_27CEAD618);
    goto LABEL_15;
  }

LABEL_6:

  __swift_destroy_boxed_opaque_existential_0((v1 + 8));

  v7 = v1[1];

  return v7();
}

uint64_t sub_21E0D2BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v78 = a5;
  v73 = a1;
  v77 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v74 = v12;
  v76 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v68 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD640);
  MEMORY[0x28223BE20](v84);
  v88 = &v68 - v15;
  v16 = sub_21E13E084();
  v82 = *(v16 - 8);
  v83 = v16;
  MEMORY[0x28223BE20](v16);
  v79 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
  MEMORY[0x28223BE20](v81);
  v19 = &v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB030);
  MEMORY[0x28223BE20](v20 - 8);
  v80 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v68 - v23;
  MEMORY[0x28223BE20](v25);
  v89 = &v68 - v26;
  v27 = sub_21E13E844();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a2;
  v86 = a4;
  v87 = a6;
  sub_21E13EA74();
  LOBYTE(a2) = sub_21E13E814();
  v31 = *(v28 + 8);
  v31(v30, v27);
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    v91 = v7;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask;
    if (*(v7 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask) && (, sub_21E142414(), result = , *(v7 + v40)))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v68 - 2) = v7;
      *(&v68 - 1) = 0;
      v91 = v7;
      sub_21E13D3B4();
    }

    else
    {
      *(v7 + v40) = 0;
    }

    return result;
  }

  v69 = v31;
  v68 = a3;
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v91 = v7;
  v70 = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v33 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportData;
  swift_beginAccess();
  v72 = v7;
  sub_21DF236C0(v7 + v33, v19, &qword_27CEADA80);
  v35 = v82;
  v34 = v83;
  v36 = (*(v82 + 48))(v19, 1, v83);
  v71 = v32;
  if (v36)
  {
    sub_21DF23614(v19, &qword_27CEADA80);
    v37 = 1;
    v38 = v89;
  }

  else
  {
    v42 = v79;
    (*(v35 + 16))(v79, v19, v34);
    sub_21DF23614(v19, &qword_27CEADA80);
    v38 = v89;
    sub_21E13E054();
    (*(v35 + 8))(v42, v34);
    v37 = 0;
  }

  v43 = *(v28 + 56);
  v43(v38, v37, 1, v27);
  sub_21E13EA74();
  v43(v24, 0, 1, v27);
  v44 = *(v84 + 48);
  v45 = v38;
  v46 = v88;
  sub_21DF236C0(v45, v88, &qword_27CEAB030);
  sub_21DF236C0(v24, v46 + v44, &qword_27CEAB030);
  v47 = *(v28 + 48);
  if (v47(v46, 1, v27) == 1)
  {
    sub_21DF23614(v24, &qword_27CEAB030);
    v48 = v88;
    sub_21DF23614(v89, &qword_27CEAB030);
    if (v47(v48 + v44, 1, v27) == 1)
    {
      return sub_21DF23614(v48, &qword_27CEAB030);
    }
  }

  else
  {
    v49 = v80;
    sub_21DF236C0(v46, v80, &qword_27CEAB030);
    if (v47(v46 + v44, 1, v27) != 1)
    {
      (*(v28 + 32))(v30, v46 + v44, v27);
      sub_21E0ECD50(&qword_280F690A0, MEMORY[0x277D79560]);
      v66 = sub_21E142074();
      v67 = v69;
      v69(v30, v27);
      sub_21DF23614(v24, &qword_27CEAB030);
      sub_21DF23614(v89, &qword_27CEAB030);
      v67(v49, v27);
      result = sub_21DF23614(v46, &qword_27CEAB030);
      v50 = v72;
      if (v66)
      {
        return result;
      }

      goto LABEL_15;
    }

    sub_21DF23614(v24, &qword_27CEAB030);
    v48 = v88;
    sub_21DF23614(v89, &qword_27CEAB030);
    v69(v49, v27);
  }

  sub_21DF23614(v48, &qword_27CEAD640);
  v50 = v72;
LABEL_15:
  swift_getKeyPath();
  v90 = v50;
  sub_21E13D3C4();

  v51 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask;
  if (!*(v50 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask))
  {
    swift_getKeyPath();
    v90 = v50;
    sub_21E13D3C4();

    if (*(v50 + v51))
    {

      sub_21E142414();
    }

    v52 = sub_21E1423F4();
    v53 = v75;
    (*(*(v52 - 8) + 56))(v75, 1, 1, v52);
    v54 = swift_allocObject();
    swift_weakInit();
    v56 = v76;
    v55 = v77;
    v57 = v68;
    (*(v77 + 16))(v76, v73, v68);
    sub_21E1423C4();

    v58 = sub_21E1423B4();
    v59 = (*(v55 + 80) + 64) & ~*(v55 + 80);
    v60 = (v74 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    v62 = MEMORY[0x277D85700];
    *(v61 + 2) = v58;
    *(v61 + 3) = v62;
    v63 = v86;
    *(v61 + 4) = v57;
    *(v61 + 5) = v63;
    v64 = v87;
    *(v61 + 6) = v78;
    *(v61 + 7) = v64;
    (*(v55 + 32))(&v61[v59], v56, v57);
    *&v61[v60] = v54;

    v65 = sub_21E0C3418(0, 0, v53, &unk_21E1574E0, v61);
    return sub_21E0D02F8(v65);
  }

  return result;
}

uint64_t sub_21E0D3738(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if ([a1 isValid])
    {
      v11 = sub_21E1423C4();
      MEMORY[0x28223BE20](v11);
      v12[2] = a3;
      v12[3] = v10;
      v12[4] = a4;
      v13 = a5 & 1;
      sub_21E0C38E4(sub_21E0EC940, v12);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21E0D3844(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = sub_21E13F1B4();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EBE4();
  swift_bridgeObjectRetain_n();
  v11 = sub_21E13F1A4();
  v12 = sub_21E142554();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v4;
    v14 = v13;
    *v13 = 134218240;
    v15 = [objc_opt_self() processInfo];
    v22 = a4;
    v16 = v15;
    [v15 systemUptime];
    v18 = v17;

    *(v14 + 1) = v18;
    *(v14 + 6) = 2048;
    v19 = *(a1 + 16);

    *(v14 + 14) = v19;
    LOBYTE(a4) = v22;

    _os_log_impl(&dword_21DF05000, v11, v12, "%f: Timeout elapsed, applying %ld unfiltered pins", v14, 0x16u);
    MEMORY[0x223D540B0](v14, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v8 + 8))(v10, v24);
  return sub_21E0D3A64(a1, a3, a4 & 1);
}

uint64_t sub_21E0D3A64(uint64_t a1, uint64_t a2, int a3)
{
  v114 = a3;
  v112 = a2;
  v105 = sub_21E13F1B4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7700);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v101 - v6;
  v131 = sub_21E13D344();
  v7 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v129 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v11 - 8);
  v111 = &v101 - v12;
  v13 = sub_21E13EF04();
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v101 = &v101 - v15;
  MEMORY[0x28223BE20](v16);
  v102 = &v101 - v17;
  MEMORY[0x28223BE20](v18);
  v126 = &v101 - v19;
  MEMORY[0x28223BE20](v20);
  v128 = &v101 - v21;
  MEMORY[0x28223BE20](v22);
  v106 = &v101 - v23;
  v27 = MEMORY[0x28223BE20](v24);
  v28 = *(a1 + 16);
  v115 = v26;
  v110 = a1;
  v109 = v29;
  v108 = v7;
  v113 = v28;
  if (v28)
  {
    v31 = *(v26 + 16);
    v30 = v26 + 16;
    v124 = v31;
    v118 = (*(v30 + 64) + 32) & ~*(v30 + 64);
    v32 = a1 + v118;
    v33 = *(v30 + 56);
    v34 = (v30 - 8);
    v122 = v7 + 8;
    v125 = v30;
    v121 = (v30 + 16);
    v127 = MEMORY[0x277D84F90];
    v35 = v28;
    v119 = v13;
    v36 = &v101 - v25;
    v123 = v33;
    v117 = (v30 - 8);
    v120 = &v101 - v25;
    v37 = (v7 + 8);
    do
    {
      v132 = v35;
      v124(v36, v32, v13, v27);
      v39 = v129;
      sub_21E13EE24();
      v40 = v128;
      sub_21E13EDC4();
      v41 = v130;
      sub_21E13EE24();
      v42 = *v34;
      (*v34)(v40, v13);
      sub_21E0ECD50(&qword_280F6C088, MEMORY[0x277CC95F0]);
      v43 = v34;
      v44 = v131;
      LOBYTE(v40) = sub_21E142074();
      v45 = v13;
      v46 = *v37;
      (*v37)(v41, v44);
      v46(v39, v44);
      if (v40)
      {
        v36 = v120;
        v42(v120, v45);
        v13 = v45;
        v38 = v123;
        v34 = v43;
      }

      else
      {
        v47 = *v121;
        v36 = v120;
        (*v121)(v126, v120, v45);
        v48 = v127;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DF5C3C4(0, *(v48 + 16) + 1, 1);
          v48 = v135;
        }

        v38 = v123;
        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_21DF5C3C4(v50 > 1, v51 + 1, 1);
          v48 = v135;
        }

        *(v48 + 16) = v51 + 1;
        v127 = v48;
        v52 = v48 + v118 + v51 * v38;
        v13 = v119;
        v47(v52, v126, v119);
        v34 = v117;
      }

      v32 += v38;
      v35 = (v132 - 1);
    }

    while (v132 != 1);
  }

  else
  {
    v127 = MEMORY[0x277D84F90];
  }

  v53 = v111;
  sub_21DF236C0(v112, v111, &qword_27CEACB50);
  v54 = v115;
  if ((*(v115 + 48))(v53, 1, v13) == 1)
  {
    sub_21DF23614(v53, &qword_27CEACB50);
    v123 = 0;
  }

  else
  {
    v55 = v106;
    v56 = (*(v54 + 32))(v106, v53, v13);
    MEMORY[0x28223BE20](v56);
    *(&v101 - 2) = v55;
    v57 = v127;

    sub_21E0BD050(sub_21E0EC964, (&v101 - 4), v57);
    v59 = v58;
    v123 = 0;

    v60 = v107;
    (*(v54 + 16))(v107, v55, v13);
    v61 = v59[2];
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v59;
    if (!v62 || v61 >= v59[3] >> 1)
    {
      v59 = sub_21E06A808(v62, v61 + 1, 1, v59);
      v136 = v59;
    }

    sub_21DF5E790(0, 0, 1, v60);
    (*(v54 + 8))(v55, v13);
    v127 = v59;
  }

  v63 = v113;
  if (v113)
  {
    v125 = *(v54 + 16);
    v132 = (v54 + 8);
    v64 = (v108 + 8);
    v65 = v110 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v126 = (v54 + 16);
    v124 = *(v54 + 72);
    v66 = v109;
    while (1)
    {
      v125(v66, v65, v13);
      v67 = v129;
      sub_21E13EE24();
      v68 = v128;
      sub_21E13EDC4();
      v69 = v130;
      sub_21E13EE24();
      v70 = *v132;
      (*v132)(v68, v13);
      v71 = sub_21E13D324();
      v72 = v13;
      v73 = *v64;
      v74 = v69;
      v75 = v131;
      (*v64)(v74, v131);
      v73(v67, v75);
      if (v71)
      {
        break;
      }

      v70(v66, v72);
      v65 += v124;
      --v63;
      v13 = v72;
      if (!v63)
      {
        goto LABEL_22;
      }
    }

    v83 = *(v115 + 32);
    v84 = v101;
    v83(v101, v66, v72);
    v85 = v102;
    v83(v102, v84, v72);
    swift_getKeyPath();
    v135 = v116;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    NewEntityModel.apply(pin:)(v85);

    v70(v85, v72);
  }

  else
  {
LABEL_22:
    swift_getKeyPath();
    v76 = v116;
    v135 = v116;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v77 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity;
    v78 = *&v76[OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity];
    swift_getKeyPath();
    v135 = v78;
    sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

    sub_21E13D3C4();

    v79 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
    swift_beginAccess();
    v80 = *(v78 + v79);

    if (v80 >> 62)
    {
      v81 = sub_21E1427B4();
    }

    else
    {
      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v81)
    {
      v82 = 1;
    }

    else
    {
      swift_getKeyPath();
      v134 = v76;
      sub_21E13D3C4();

      v86 = *&v76[v77];
      swift_getKeyPath();
      v134 = v86;

      sub_21E13D3C4();

      v87 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
      swift_beginAccess();
      v88 = *&v86[v87];

      if (v88)
      {

        v82 = 1;
      }

      else
      {
        swift_getKeyPath();
        v134 = v76;
        sub_21E13D3C4();

        v89 = *&v76[v77];
        swift_getKeyPath();
        v134 = v89;

        sub_21E13D3C4();

        v90 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors;
        swift_beginAccess();
        v91 = *&v89[v90];

        if (v91 >> 62)
        {
          v92 = sub_21E1427B4();
        }

        else
        {
          v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v82 = v92 != 0;
      }
    }

    LODWORD(v132) = v82;
    swift_getKeyPath();
    v134 = v76;
    sub_21E13D3C4();

    NewEntityModel.actions.setter(MEMORY[0x277D84F90]);

    swift_getKeyPath();
    v134 = v76;
    sub_21E13D3C4();

    v93 = *&v76[v77];
    v94 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
    swift_beginAccess();
    if (*&v93[v94])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v101 - 2) = v93;
      *(&v101 - 1) = 0;
      v133 = v93;

      sub_21E13D3B4();

      v76 = v116;
    }

    swift_getKeyPath();
    v133 = v76;
    sub_21E13D3C4();

    NewEntityModel.dataDetectors.setter(MEMORY[0x277D84F90]);

    if (v132)
    {
      v96 = v103;
      sub_21E13EBE4();
      v97 = sub_21E13F1A4();
      v98 = sub_21E142554();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_21DF05000, v97, v98, "Detected duplication edge case due to orphaned fullscreenEntity data", v99, 2u);
        MEMORY[0x223D540B0](v99, -1, -1);
      }

      (*(v104 + 8))(v96, v105);
    }
  }

  sub_21E0D4C0C(v127, v114 & 1);
}

void sub_21E0D4A2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

BOOL sub_21E0D4A94()
{
  v0 = sub_21E13D344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  sub_21E13EE24();
  sub_21E13EE24();
  sub_21E0ECD50(&qword_280F6C088, MEMORY[0x277CC95F0]);
  v7 = sub_21E142074();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

uint64_t sub_21E0D4C0C(uint64_t a1, int a2)
{
  v3 = v2;
  v102 = a2;
  v108 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8430);
  MEMORY[0x28223BE20](v120);
  v119 = &v101 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8438);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v101 - v8;
  MEMORY[0x28223BE20](v9);
  v124 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7700);
  MEMORY[0x28223BE20](v11 - 8);
  v122 = (&v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v115 = &v101 - v14;
  v134 = sub_21E13D344();
  v123 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v101 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v18 - 8);
  v131 = (&v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v101 - v21;
  v126 = sub_21E13EF04();
  v23 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v110 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v121 = &v101 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v101 - v28;
  MEMORY[0x28223BE20](v30);
  v132 = &v101 - v31;
  v32 = sub_21E13DF44();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13DEE4();
  sub_21E13DEF4();
  LODWORD(v136) = v36;
  sub_21E13DE94();
  sub_21E13DEA4();
  v37 = v134;
  v101 = sub_21E13DE84();
  (*(v33 + 8))(v35, v32);
  v140 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  v38 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v139 = v3;
  v135 = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  v136 = v38;
  sub_21E13D3C4();
  v39 = v126;

  v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelection;
  swift_beginAccess();
  v118 = v40;
  sub_21DF236C0(v3 + v40, v22, &qword_27CEACB50);
  v41 = *(v23 + 48);
  v117 = v23 + 48;
  v116 = v41;
  if (v41(v22, 1, v39) == 1)
  {
    sub_21DF23614(v22, &qword_27CEACB50);
  }

  else
  {
    v127 = v23;
    v43 = v23 + 32;
    (*(v23 + 32))(v132, v22, v39);
    v44 = 0;
    v125 = *(v108 + 16);
    v128 = (v43 - 16);
    v45 = (v123 + 8);
    v129 = (v43 - 24);
    v46 = v127;
    v47 = v109;
    while (v125 != v44)
    {
      v48 = v126;
      (*(v46 + 16))(v29, v108 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v44++, v126);
      sub_21E13EE24();
      v49 = v130;
      sub_21E13EE24();
      v50 = sub_21E13D324();
      v51 = *v45;
      v52 = v49;
      v53 = v134;
      (*v45)(v52, v134);
      v51(v47, v53);
      v54 = *(v46 + 8);
      v54(v29, v48);
      if (v50)
      {
        v39 = v126;
        v54(v132, v126);
        v42 = v108;

        goto LABEL_8;
      }
    }

    v55 = v115;
    v56 = v132;
    v57 = v126;
    (*v128)(v115, v132, v126);
    v138 = v108;
    v58 = v122;
    sub_21DF236C0(v55, v122, &qword_27CEA7700);

    sub_21DF5B668(v58);
    v39 = v57;
    sub_21DF23614(v55, &qword_27CEA7700);
    v42 = v138;
    (*v129)(v56, v57);
LABEL_8:
    v37 = v134;
    v23 = v127;
  }

  v59 = v123;
  v60 = *(v42 + 16);
  if (!v60)
  {

    v99 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v61 = v37;
  v114 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v62 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v108 = v42;
  v63 = (v42 + v62);
  v115 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();
  v132 = 0;
  v66 = *(v23 + 16);
  v64 = v23 + 16;
  v65 = v66;
  v113 = (v59 + 16);
  v130 = v59 + 56;
  v112 = *(v64 + 56);
  v122 = (v64 - 8);
  v111 = (v59 + 48);
  v103 = (v59 + 32);
  v105 = (v59 + 8);
  v104 = "rOneSecond";
  v127 = v64;
  v67 = v121;
  v123 = v66;
  v106 = v3;
  do
  {
    v128 = v60;
    v129 = v63;
    v65(v67, v63, v39);
    swift_getKeyPath();
    v137 = v3;
    sub_21E13D3C4();

    v69 = *&v115[v3];
    MEMORY[0x28223BE20](v68);
    *(&v101 - 2) = v67;

    v70 = v39;
    v71 = v132;
    v72 = sub_21DF607A4(sub_21E0ECF70, (&v101 - 4), v69);
    v132 = v71;

    if (!v72)
    {
      v73 = v110;
      v65(v110, v67, v70);
      type metadata accessor for NewEntityModel();
      swift_allocObject();
      v72 = NewEntityModel.init(pin:)(v73);
    }

    v74 = v124;
    v75 = v111;
    NewEntityModel.apply(pin:)(v67);
    v76 = *v113;
    v125 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
    v76(v74, v72 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v61);
    v77 = *v130;
    (*v130)(v74, 0, 1, v61);
    swift_getKeyPath();
    v137 = v3;
    sub_21E13D3C4();

    v78 = v131;
    sub_21DF236C0(v3 + v118, v131, &qword_27CEACB50);
    if (v116(v78, 1, v70))
    {
      sub_21DF23614(v131, &qword_27CEACB50);
      v79 = 1;
    }

    else
    {
      v80 = v131;
      v81 = v110;
      v123(v110, v131, v70);
      sub_21DF23614(v80, &qword_27CEACB50);
      sub_21E13EE24();
      (*v122)(v81, v70);
      v79 = 0;
    }

    v83 = v133;
    v82 = v134;
    v77(v133, v79, 1, v134);
    v84 = *(v120 + 48);
    v85 = v119;
    sub_21DF236C0(v74, v119, &qword_27CEA8438);
    sub_21DF236C0(v83, v85 + v84, &qword_27CEA8438);
    v86 = *v75;
    if ((*v75)(v85, 1, v82) == 1)
    {
      sub_21DF23614(v133, &qword_27CEA8438);
      sub_21DF23614(v74, &qword_27CEA8438);
      if (v86(v85 + v84, 1, v82) != 1)
      {
        goto LABEL_21;
      }

      sub_21DF23614(v85, &qword_27CEA8438);
      v39 = v126;
LABEL_23:
      sub_21DF50738(0xD000000000000012, v104 | 0x8000000000000000);
      goto LABEL_24;
    }

    v87 = v133;
    v88 = v107;
    sub_21DF236C0(v85, v107, &qword_27CEA8438);
    if (v86(v85 + v84, 1, v82) == 1)
    {
      sub_21DF23614(v87, &qword_27CEA8438);
      sub_21DF23614(v124, &qword_27CEA8438);
      (*v105)(v88, v82);
      v3 = v106;
LABEL_21:
      sub_21DF23614(v85, &qword_27CEA8430);
      v39 = v126;
      goto LABEL_24;
    }

    v89 = v109;
    (*v103)(v109, v85 + v84, v82);
    sub_21E0ECD50(&qword_280F6C088, MEMORY[0x277CC95F0]);
    v90 = sub_21E142074();
    v91 = *v105;
    (*v105)(v89, v82);
    sub_21DF23614(v87, &qword_27CEA8438);
    sub_21DF23614(v124, &qword_27CEA8438);
    v91(v88, v82);
    sub_21DF23614(v85, &qword_27CEA8438);
    v3 = v106;
    v39 = v126;
    if (v90)
    {
      goto LABEL_23;
    }

LABEL_24:
    swift_getKeyPath();
    v137 = v3;
    sub_21E13D3C4();

    v92 = *(v3 + v114);
    if (v92)
    {

      if (sub_21E13D324())
      {
        swift_getKeyPath();
        v137 = v92;
        sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
        sub_21E13D3C4();

        v93 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence;
        v94 = *(v92 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence);
        if (*(v72 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) == v94)
        {

          *(v72 + v93) = v94;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v101 - 2) = v72;
          *(&v101 - 8) = v94;
          v137 = v72;
          v96 = v132;
          sub_21E13D3B4();
          v132 = v96;
          v39 = v126;
        }
      }

      else
      {
      }
    }

    v97 = v129;

    MEMORY[0x223D52AF0](v98);
    v61 = v134;
    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21E1422F4();
      v97 = v129;
    }

    sub_21E142324();

    v99 = v140;
    v67 = v121;
    (*v122)(v121, v39);
    v63 = (v97 + v112);
    v60 = (v128 - 1);
    v65 = v123;
  }

  while (v128 != 1);

LABEL_35:
  NewSaliencyModel.entities.setter(v99);
  sub_21E0CC6CC(v102 & 1);
}

uint64_t sub_21E0D5CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a6;
  v8[14] = a8;
  v8[11] = a4;
  v8[12] = a5;
  v8[10] = a1;
  v9 = sub_21E13D834();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = sub_21E13E084();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  v11 = sub_21E13E844();
  v8[21] = v11;
  v8[22] = *(v11 - 8);
  v8[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADA80);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v12 = sub_21E13F1B4();
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  sub_21E1423C4();
  v8[34] = sub_21E1423B4();
  v14 = sub_21E142364();
  v8[35] = v14;
  v8[36] = v13;

  return MEMORY[0x2822009F8](sub_21E0D5F78, v14, v13);
}

uint64_t sub_21E0D5F78()
{
  sub_21E13EC24();
  v1 = sub_21E13F1A4();
  v2 = sub_21E142544();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21DF05000, v1, v2, "Fetching overlay support data...", v3, 2u);
    MEMORY[0x223D540B0](v3, -1, -1);
  }

  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[14];

  v8 = *(v6 + 8);
  v0[37] = v8;
  v8(v4, v5);
  v9 = *(*(v7 + 16) + 8);
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_21E0D60D0;
  v11 = v0[13];
  v12 = v0[10];

  return MEMORY[0x2821E0D88](v12, v11, v9);
}

uint64_t sub_21E0D60D0()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_21E0D61F0, v3, v2);
}

uint64_t sub_21E0D61F0()
{
  v62 = v0;
  v1 = v0[29];
  v2 = v0[28];
  v3 = v0[10];

  sub_21E13EC24();
  sub_21DF236C0(v3, v1, &qword_27CEADA80);
  sub_21DF236C0(v3, v2, &qword_27CEADA80);
  v4 = sub_21E13F1A4();
  v5 = sub_21E142544();
  if (!os_log_type_enabled(v4, v5))
  {
    v14 = v0[37];
    v15 = v0[32];
    v17 = v0[29];
    v16 = v0[30];
    v18 = v0[28];

    sub_21DF23614(v18, &qword_27CEADA80);
    sub_21DF23614(v17, &qword_27CEADA80);
    v14(v15, v16);
    goto LABEL_12;
  }

  v60 = v5;
  v6 = v0 + 27;
  v7 = v0[27];
  v8 = v0[29];
  v10 = v0[18];
  v9 = v0[19];
  v11 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v61 = v59;
  *v11 = 134218242;
  sub_21DF236C0(v8, v7, &qword_27CEADA80);
  v12 = *(v9 + 48);
  if (v12(v7, 1, v10) == 1)
  {
    sub_21DF23614(v0[29], &qword_27CEADA80);
    v13 = 0;
  }

  else
  {
    v19 = v0[27];
    v20 = v0[22];
    v21 = v0[23];
    v58 = v0[21];
    v23 = v0[18];
    v22 = v0[19];
    sub_21E13E054();
    (*(v22 + 8))(v19, v23);
    sub_21E13E834();
    v13 = v24;
    (*(v20 + 8))(v21, v58);
    v6 = v0 + 29;
  }

  v25 = v0[28];
  v26 = v0[26];
  v27 = v0[18];
  sub_21DF23614(*v6, &qword_27CEADA80);
  *(v11 + 4) = v13;
  *(v11 + 12) = 2080;
  sub_21DF236C0(v25, v26, &qword_27CEADA80);
  v28 = v12(v26, 1, v27);
  v29 = v0[26];
  if (v28 == 1)
  {
    sub_21DF23614(v0[26], &qword_27CEADA80);
LABEL_10:
    v33 = 0xE200000000000000;
    v34 = 20302;
    goto LABEL_11;
  }

  v30 = v0[18];
  v31 = v0[19];
  v32 = sub_21E13E044();
  (*(v31 + 8))(v29, v30);
  if (!v32)
  {
    goto LABEL_10;
  }

  v33 = 0xE300000000000000;
  v34 = 5457241;
LABEL_11:
  v35 = v0[37];
  v36 = v0[32];
  v37 = v0[30];
  sub_21DF23614(v0[28], &qword_27CEADA80);
  v38 = sub_21E0E08C0(v34, v33, &v61);

  *(v11 + 14) = v38;
  _os_log_impl(&dword_21DF05000, v4, v60, "Retrieved overlay support data: t = %f, crDocument: %s", v11, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v59);
  MEMORY[0x223D540B0](v59, -1, -1);
  MEMORY[0x223D540B0](v11, -1, -1);

  v35(v36, v37);
LABEL_12:
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v42 = v0[24];
    v41 = v0[25];
    v43 = v0[18];
    v44 = v0[19];
    v45 = v0[10];
    sub_21DF236C0(v45, v41, &qword_27CEADA80);
    sub_21E0CC108(v41);
    sub_21DF236C0(v45, v42, &qword_27CEADA80);
    v46 = (*(v44 + 48))(v42, 1, v43);
    v47 = v0[24];
    if (v46 == 1)
    {

      sub_21DF23614(v47, &qword_27CEADA80);
    }

    else
    {
      v48 = v0[17];
      v49 = v0[15];
      v50 = v0[16];
      (*(v0[19] + 32))(v0[20], v0[24], v0[18]);
      swift_getKeyPath();
      v0[8] = v40;
      sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
      sub_21E13D3C4();

      v51 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
      swift_beginAccess();
      (*(v50 + 16))(v48, v40 + v51, v49);
      LODWORD(v51) = (*(v50 + 88))(v48, v49);
      v52 = *MEMORY[0x277D78DA8];
      (*(v50 + 8))(v48, v49);
      if (v51 == v52)
      {

        sub_21E13E064();
        sub_21E13EB74();
      }

      v53 = sub_21E13E064();
      v54 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels;
      if (*(v40 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels) && (sub_21E0E046C(*(v40 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels), v53) & 1) != 0)
      {
        *(v40 + v54) = v53;
      }

      else
      {
        swift_getKeyPath();
        v55 = swift_task_alloc();
        *(v55 + 16) = v40;
        *(v55 + 24) = v53;
        v0[9] = v40;
        sub_21E13D3B4();
      }

      (*(v0[19] + 8))(v0[20], v0[18]);
    }
  }

  v56 = v0[1];

  return v56();
}

void (*NewSaliencyModel.inflightActions.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E0D6AB0;
}

uint64_t sub_21E0D6ABC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara;
  swift_beginAccess();
  if (*(a1 + v2) == 1)
  {
    *(a1 + v2) = 1;
    sub_21E0DDC20();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }

  return NewSaliencyModel.presentedEntity.setter(0);
}

uint64_t handleBarcodeError(_:)(void *a1)
{
  v2 = sub_21E13F1B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13D384();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_21E1420E4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_21E13D0E4();
  v30 = a1;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8828);
  if (swift_dynamicCast())
  {
    if (v29)
    {
      v10 = 0x800000021E15EFE0;
      v11 = 0xD000000000000010;
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_21E142884();

      v28 = 0xD00000000000001BLL;
      v29 = 0x800000021E15F000;
      v19 = sub_21E1425A4();
      MEMORY[0x223D52A60](v19);

      v11 = v28;
      v10 = v29;
    }

    goto LABEL_13;
  }

  v12 = [v8 domain];
  v13 = sub_21E142124();
  v15 = v14;

  if (v13 == 0xD000000000000014 && 0x800000021E15EFA0 == v15)
  {

LABEL_8:
    v17 = [v8 localizedDescription];
    v11 = sub_21E142124();
    v10 = v18;

    goto LABEL_13;
  }

  v16 = sub_21E142B14();

  if (v16)
  {
    goto LABEL_8;
  }

  sub_21E142084();
  sub_21DF3ED18(0, &qword_280F68C20);
  if (!sub_21E1426B4())
  {
    v20 = [objc_opt_self() mainBundle];
  }

  sub_21E13D374();
  v11 = sub_21E142184();
  v10 = v21;
LABEL_13:
  sub_21E13EC14();

  v22 = sub_21E13F1A4();
  v23 = sub_21E142564();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v24 = 136315138;
    v26 = sub_21E0E08C0(v11, v10, &v28);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_21DF05000, v22, v23, "Error performing QR code action: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223D540B0](v25, -1, -1);
    MEMORY[0x223D540B0](v24, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21E0D7080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550);
  v6[5] = swift_task_alloc();
  sub_21E1423C4();
  v6[6] = sub_21E1423B4();
  v8 = sub_21E142364();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x2822009F8](sub_21E0D7154, v8, v7);
}

uint64_t sub_21E0D7154()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = sub_21E13DFD4();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    *(v0 + 80) = 9;

    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_21E0D72A8;
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);

    return NewSaliencyModel.performAction(_:from:executionParameter:updatesPresentation:analyticsSource:)(v6, v1, v5, 0, (v0 + 80));
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_21E0D72A8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);

  sub_21DF23614(v2, &qword_27CEAC550);
  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21E0D73FC, v4, v3);
}

uint64_t sub_21E0D73FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E0D7470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__inflightActions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t NewSaliencyModel.inflightActions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__inflightActions;
  swift_beginAccess();

  sub_21E0E744C(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21E0D76B4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__inflightActions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t NewSaliencyModel.init()()
{
  v1 = v0;
  v2 = sub_21E13D834();
  v44 = v2;
  v47 = *(v2 - 8);
  v3 = v47;
  MEMORY[0x28223BE20](v2);
  v45 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = v43 - v6;
  v7 = sub_21E13EF04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13E3D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v3 + 104))(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint, *MEMORY[0x277D78DA8], v2);
  v15 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities) = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportData;
  v17 = sub_21E13E084();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__showVI) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__dismissOverlay) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__translateAction) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__shouldShowAskAcmeUI) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels) = 0;
  v18 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer) = 0;
  type metadata accessor for FocusSelectionModel();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection) = FocusSelectionModel.init(active:)(0);
  (*(v8 + 56))(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelection, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval) = 0;
  v19 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  *v19 = 0;
  v19[1] = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__streamReadingTask) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionReadingTask) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask) = 0;
  swift_unknownObjectWeakInit();
  sub_21E13E3B4();
  (*(v12 + 32))(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration, v14, v11);
  v20 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration;
  *v20 = 0;
  *(v20 + 2) = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel_labelReportingManager;
  sub_21E13EB94();
  *(v1 + v21) = sub_21E13EB84();
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__inflightActions) = sub_21DF263A8(v15);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__hasHighlighted) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara) = 0;
  v22 = sub_21E0E7F54(&unk_282F3BBD8);
  type metadata accessor for SessionAnalytics();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics) = SessionAnalytics.init(alwaysSuggestedActions:)(v22);
  sub_21E13D3F4();
  sub_21E13EDC4();
  type metadata accessor for NewEntityModel();
  swift_allocObject();
  v23 = NewEntityModel.init(pin:)(v10);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity) = v23;
  type metadata accessor for NewBarModel();
  swift_allocObject();

  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar) = sub_21E117318(v24);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity) = v23;
  v25 = objc_allocWithZone(type metadata accessor for MontaraDirectActionSource());

  v26 = sub_21E0BCCD4(0, 0);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel_montaraDirectActionSource) = v26;
  *&v26[OBJC_IVAR____TtC20VisualIntelligenceUI25MontaraDirectActionSource_delegate + 8] = &off_282F43BF0;
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  v56 = v23;
  sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v27 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v43[1] = v23;
  v28 = *(v23 + v27);
  v29 = swift_allocObject();
  swift_weakInit();
  swift_getKeyPath();
  v48 = v28;
  v49 = sub_21E0EB494;
  v50 = v29;
  v55 = v28;
  sub_21E0ECD50(&qword_280F69240, type metadata accessor for CardModel);

  sub_21E13D3B4();
  v43[0] = 0;

  swift_getKeyPath();
  v55 = v1;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();
  v54 = v1;

  sub_21E13D3C4();

  v30 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v31 = *(v47 + 16);
  v32 = v46;
  v33 = v44;
  v31(v46, v1 + v30, v44);
  sub_21E1119A8(v32);

  swift_getKeyPath();
  v53 = v1;
  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
  swift_beginAccess();
  v35 = *(v1 + v34);
  swift_getKeyPath();
  v52 = v1;

  sub_21E13D3C4();
  v36 = v46;

  v37 = v1 + v30;
  v38 = v45;
  v31(v45, v37, v33);
  v39 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  v31(v36, v35 + v39, v33);
  sub_21E0ECD50(&qword_280F690E0, MEMORY[0x277D78DD0]);
  LOBYTE(v39) = sub_21E142074();
  v40 = *(v47 + 8);
  v47 += 8;
  v40(v36, v33);
  if (v39)
  {
    v31(v36, v38, v33);
    sub_21E0F4BC0(v36);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v43[-2] = v35;
    v43[-1] = v38;
    v51 = v35;
    sub_21E0ECD50(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  v40(v38, v33);

  return v1;
}

uint64_t sub_21E0D81F4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }
}

uint64_t NewSaliencyModel.targetEntity.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_21E1423C4();
  v10 = v5;
  v11 = a1;

  v6 = sub_21E0C372C(sub_21DF6078C, v9, "VisualIntelligenceUI/NewEntityModel.swift");

  if (v6)
  {
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v2;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3B4();
  }
}

uint64_t NewSaliencyModel.init(actions:)()
{
  v1 = v0;
  v2 = sub_21E13D834();
  v44 = v2;
  v47 = *(v2 - 8);
  v3 = v47;
  MEMORY[0x28223BE20](v2);
  v45 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = v43 - v6;
  v7 = sub_21E13EF04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13E3D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v3 + 104))(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint, *MEMORY[0x277D78DA8], v2);
  v15 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities) = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportData;
  v17 = sub_21E13E084();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__showVI) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__dismissOverlay) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__translateAction) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__shouldShowAskAcmeUI) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__groundingLabels) = 0;
  v18 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadline;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__textInteractionInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__currentFinalPillDeadlineTimer) = 0;
  type metadata accessor for FocusSelectionModel();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection) = FocusSelectionModel.init(active:)(0);
  (*(v8 + 56))(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelection, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval) = 0;
  v19 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__stream);
  *v19 = 0;
  v19[1] = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__streamReadingTask) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionReadingTask) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__overlaySupportDataFetchingTask) = 0;
  swift_unknownObjectWeakInit();
  sub_21E13E3B4();
  (*(v12 + 32))(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__appConfiguration, v14, v11);
  v20 = v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration;
  *v20 = 0;
  *(v20 + 2) = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel_labelReportingManager;
  sub_21E13EB94();
  *(v1 + v21) = sub_21E13EB84();
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__inflightActions) = sub_21DF263A8(v15);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__hasHighlighted) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity) = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara) = 0;
  v22 = sub_21E0E7F54(&unk_282F3B838);
  type metadata accessor for SessionAnalytics();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics) = SessionAnalytics.init(alwaysSuggestedActions:)(v22);
  sub_21E13D3F4();
  sub_21E13EDC4();
  type metadata accessor for NewEntityModel();
  swift_allocObject();
  v23 = NewEntityModel.init(pin:)(v10);
  swift_unknownObjectRelease();
  *v19 = 0;
  v19[1] = 0;
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity) = v23;
  type metadata accessor for NewBarModel();
  swift_allocObject();

  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar) = sub_21E117318(v24);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity) = v23;
  v25 = objc_allocWithZone(type metadata accessor for MontaraDirectActionSource());

  v26 = sub_21E0BCCD4(0, 0);
  *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel_montaraDirectActionSource) = v26;
  *&v26[OBJC_IVAR____TtC20VisualIntelligenceUI25MontaraDirectActionSource_delegate + 8] = &off_282F43BF0;
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  v56 = v23;
  sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v27 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v43[1] = v23;
  v28 = *(v23 + v27);
  v29 = swift_allocObject();
  swift_weakInit();
  swift_getKeyPath();
  v48 = v28;
  v49 = sub_21E0EB530;
  v50 = v29;
  v55 = v28;
  sub_21E0ECD50(&qword_280F69240, type metadata accessor for CardModel);

  sub_21E13D3B4();
  v43[0] = 0;

  swift_getKeyPath();
  v55 = v1;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();
  v54 = v1;

  sub_21E13D3C4();

  v30 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v31 = *(v47 + 16);
  v32 = v46;
  v33 = v44;
  v31(v46, v1 + v30, v44);
  sub_21E1119A8(v32);

  swift_getKeyPath();
  v53 = v1;
  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
  swift_beginAccess();
  v35 = *(v1 + v34);
  swift_getKeyPath();
  v52 = v1;

  sub_21E13D3C4();
  v36 = v46;

  v37 = v1 + v30;
  v38 = v45;
  v31(v45, v37, v33);
  v39 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__entryPoint;
  swift_beginAccess();
  v31(v36, v35 + v39, v33);
  sub_21E0ECD50(&qword_280F690E0, MEMORY[0x277D78DD0]);
  LOBYTE(v39) = sub_21E142074();
  v40 = *(v47 + 8);
  v47 += 8;
  v40(v36, v33);
  if (v39)
  {
    v31(v36, v38, v33);
    sub_21E0F4BC0(v36);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v43[-2] = v35;
    v43[-1] = v38;
    v51 = v35;
    sub_21E0ECD50(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);
    sub_21E13D3B4();
  }

  v40(v38, v33);

  return v1;
}

uint64_t sub_21E0D8F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      swift_getKeyPath();
      v18[1] = v12;
      sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
      sub_21E13D3C4();

      v13 = *(v12 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity);
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_21E1423F4();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_21E1423C4();

    v15 = sub_21E1423B4();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v13;
    v16[5] = v10;
    v16[6] = a1;
    sub_21E0C2E04(0, 0, v8, a4, v16);
  }

  return result;
}

uint64_t sub_21E0D919C(uint64_t a1, int a2)
{
  v3 = v2;
  v25 = a2;
  v5 = sub_21E13EF04();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13DF44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13DEE4();
  sub_21E13DEF4();
  sub_21E13DE94();
  sub_21E13DEA4();
  v24 = sub_21E13DE84();
  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  v29 = v3;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();
  v12 = *(v3 + v11);
  v27 = a1;

  v13 = sub_21DF607A4(sub_21E0ECEA8, v26, v12);

  if (v13)
  {
    MEMORY[0x28223BE20](v14);
    *(&v20 - 2) = v13;
    *(&v20 - 1) = v3;

    sub_21E141D64();
    sub_21E13F864();

LABEL_5:
    sub_21E0CC6CC(v25 & 1);
  }

  swift_getKeyPath();
  v28 = v3;
  sub_21E13D3C4();

  v28 = *(v3 + v11);
  v15 = v28;
  v16 = v23;
  (*(v21 + 16))(v23, a1, v22);
  type metadata accessor for NewEntityModel();
  swift_allocObject();

  v17 = NewEntityModel.init(pin:)(v16);
  sub_21DF50738(0xD000000000000012, 0x800000021E15B000);
  if (!(v15 >> 62) || (result = sub_21E1427B4(), (result & 0x8000000000000000) == 0))
  {

    sub_21DF6002C(0, 0, v17);

    MEMORY[0x28223BE20](v18);
    *(&v20 - 2) = v17;
    *(&v20 - 1) = v3;
    sub_21E141D64();
    sub_21E13F864();

    NewSaliencyModel.entities.setter(v28);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_21E0D9604()
{
  v0 = sub_21E13D344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EE24();
  v4 = sub_21E13D324();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_21E0D9708(uint64_t a1, unint64_t a2)
{
  v7[0] = 8;
  NewEntityModel.cardLayout.setter(v7);
  v4 = swift_retain_n();
  NewSaliencyModel.selectedEntity.setter(v4);
  NewSaliencyModel.presentedEntity.setter(a1);
  swift_getKeyPath();
  v7[0] = a2;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E0C9CA8(v5);
}

uint64_t sub_21E0D9818(uint64_t a1)
{
  v4 = 8;
  NewEntityModel.cardLayout.setter(&v4);
  v2 = swift_retain_n();
  NewSaliencyModel.selectedEntity.setter(v2);
  return NewSaliencyModel.presentedEntity.setter(a1);
}

uint64_t sub_21E0D9884(uint64_t *a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_21E13EF04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77D8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v10 - 8);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = *a1;
  swift_getKeyPath();
  v28 = v15;
  sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
  sub_21E13D3C4();

  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  (*(v4 + 16))(v14, v27, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_21DF236C0(v15 + v16, v9, &qword_27CEACB50);
  sub_21DF236C0(v14, &v9[v17], &qword_27CEACB50);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    v20 = v26;
    sub_21DF236C0(v9, v26, &qword_27CEACB50);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v25, &v9[v17], v3);
      sub_21E0ECD50(&qword_280F69070, MEMORY[0x277D796B8]);
      v22 = sub_21E142074();
      v23 = *(v4 + 8);
      v23(v21, v3);
      sub_21DF23614(v14, &qword_27CEACB50);
      v23(v20, v3);
      sub_21DF23614(v9, &qword_27CEACB50);
      v19 = v22 ^ 1;
      return v19 & 1;
    }

    sub_21DF23614(v14, &qword_27CEACB50);
    (*(v4 + 8))(v20, v3);
    goto LABEL_6;
  }

  sub_21DF23614(v14, &qword_27CEACB50);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_21DF23614(v9, &qword_27CEA77D8);
    v19 = 1;
    return v19 & 1;
  }

  sub_21DF23614(v9, &qword_27CEACB50);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_21E0D9D08(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_15:
    v5 = sub_21E1427B4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x223D530F0](i, a3);
          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v9 = 0;
            return v9 & 1;
          }
        }

        else
        {
          if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a3 + 8 * i + 32);

          v8 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v7;
        v9 = a1(&v12);

        if (v3)
        {
          goto LABEL_13;
        }

        if ((v9 & (v8 != v5)) == 0)
        {
          return v9 & 1;
        }
      }
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_21E0D9E40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  sub_21E0D919C(a2, *(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized));
  swift_getKeyPath();
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  result = swift_beginAccess();
  v6 = *(v4 + v5);
  if (v6 >> 62)
  {
    result = sub_21E1427B4();
    v7 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
  }

LABEL_4:
  if (v7 >= 1)
  {
    v8 = v6 & 0xC000000000000001;

    v9 = 0;
    v12 = v6;
    while (1)
    {
      if (v8)
      {
        v10 = MEMORY[0x223D530F0](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      swift_getKeyPath();
      sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
      sub_21E13D3C4();

      if (*(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) == 2)
      {
        *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) = 2;
      }

      else if (*(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_21E13D3B4();

        v6 = v12;
        goto LABEL_8;
      }

LABEL_8:
      if (v7 == ++v9)
      {
      }
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NewSaliencyModel.resetSelection()()
{
  sub_21E141D64();
  sub_21E13F864();
}

uint64_t sub_21E0DA1DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    sub_21E0D919C(a2, *(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isFinalized));
  }

  return result;
}

void (*NewSaliencyModel.targetEntity.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21E0DA448;
}

uint64_t sub_21E0DA454(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  v18 = a1;
  v5 = a2 >> 62;
  if (!*(a1 + v4))
  {
LABEL_16:
    if (!v5)
    {
      v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
LABEL_40:
        swift_getKeyPath();
        sub_21E13D3C4();

        v8 = *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__fullscreenEntity);

        return v8;
      }

LABEL_18:
      v11 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223D530F0](v11, a2);
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v8 = *(a2 + 8 * v11 + 32);

          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_37;
          }
        }

        swift_getKeyPath();
        sub_21E0ECD50(&qword_280F6B6A0, type metadata accessor for NewEntityModel);
        sub_21E13D3C4();

        v13 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
        swift_beginAccess();
        v14 = *(v8 + v13);
        if (v14 >> 62)
        {
          if (sub_21E1427B4())
          {
            return v8;
          }
        }

        else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v8;
        }

        swift_getKeyPath();
        sub_21E13D3C4();

        v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
        swift_beginAccess();
        v16 = *(v8 + v15);
        if (v16 >> 62)
        {
          if (sub_21E1427B4())
          {
            return v8;
          }
        }

        else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v8;
        }

        ++v11;
        if (v12 == v10)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_39:
    v10 = sub_21E1427B4();
    if (!v10)
    {
      goto LABEL_40;
    }

    goto LABEL_18;
  }

  if (v5)
  {
    v6 = sub_21E1427B4();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
LABEL_15:
    NewSaliencyModel.selectedEntity.setter(0);

    v5 = a2 >> 62;
    goto LABEL_16;
  }

  v7 = 0;
  while (1)
  {
    if ((a2 & 0xC000000000000001) == 0)
    {
      if (v7 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(a2 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = MEMORY[0x223D530F0](v7, a2);
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_9:
    if (sub_21E13D324())
    {
      break;
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_15;
    }
  }

  return v8;
}

uint64_t sub_21E0DA848(void (**a1)(char *, uint64_t, uint64_t))
{
  v2 = v1;
  v81 = a1;
  v96 = sub_21E13D344();
  v83 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v80 - v7;
  v88 = sub_21E13EEE4();
  v80 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v82 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = (&v80 - v10);
  v104 = sub_21E13D834();
  v11 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v115 = v1;
  v15 = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
  swift_beginAccess();
  v85 = v16;
  v17 = *(v2 + v16);
  swift_getKeyPath();
  v114 = v17;
  v18 = sub_21E0ECD50(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);

  v98 = v18;
  sub_21E13D3C4();

  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__currentShutterStatus;
  swift_beginAccess();
  LODWORD(v19) = *(v17 + v19);

  if (v19 != 1 && (swift_getKeyPath(), v113 = v2, sub_21E13D3C4(), , v20 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__isAskingMontara, swift_beginAccess(), *(v2 + v20) != 1) || (swift_getKeyPath(), v112 = v2, sub_21E13D3C4(), , v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint, swift_beginAccess(), v22 = v104, (*(v11 + 16))(v13, v2 + v21, v104), LOBYTE(v21) = sub_21E13D7F4(), result = (*(v11 + 8))(v13, v22), (v21 & 1) == 0))
  {
    swift_getKeyPath();
    v112 = v2;
    v89 = v15;
    v90 = v14;
    sub_21E13D3C4();

    v24 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__bar;
    swift_beginAccess();
    v87 = v24;
    v25 = *(v2 + v24);
    swift_getKeyPath();
    v111 = v25;
    v26 = sub_21E0ECD50(&qword_280F6BEE0, type metadata accessor for NewBarModel);

    v86 = v26;
    sub_21E13D3C4();

    v27 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
    swift_beginAccess();
    v28 = *(v25 + v27);

    v103 = v28;
    v29 = *(v28 + 16);
    v91 = v2;
    v30 = v88;
    v31 = v99;
    v101 = v29;
    if (v29)
    {
      v32 = 0;
      v100 = (v80 + 48);
      v97 = (v80 + 32);
      v93 = (v83 + 1);
      v94 = (v83 + 2);
      v92 = (v80 + 8);
      v33 = (v103 + 40);
      while (v32 < *(v103 + 16))
      {
        v34 = v30;
        v36 = *(v33 - 1);
        v35 = *v33;
        swift_getKeyPath();
        v108 = v35;
        sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel);
        v104 = v36;
        v30 = v34;

        sub_21E13D3C4();

        v37 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
        swift_beginAccess();
        sub_21DF236C0(v35 + v37, v31, &qword_27CEA6D48);
        if ((*v100)(v31, 1, v34) == 1)
        {

          result = sub_21DF23614(v31, &qword_27CEA6D48);
        }

        else
        {
          (*v97)(v102, v31, v34);
          swift_getKeyPath();
          v38 = v91;
          v108 = v91;
          sub_21E13D3C4();

          v39 = *(v38 + v85);
          swift_getKeyPath();
          v108 = v39;

          sub_21E13D3C4();

          LOBYTE(v105) = 0;
          swift_getKeyPath();
          v108 = v39;

          sub_21E13D3C4();

          v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16SessionAnalytics__sessionID;
          swift_beginAccess();
          v41 = v95;
          v42 = v96;
          (*v94)(v95, v39 + v40, v96);
          v43 = v102;
          sub_21E007D9C(v102, v32, v35, &v105, v41);

          v44 = v41;
          v30 = v88;
          v45 = v42;
          v31 = v99;
          (*v93)(v44, v45);
          result = (*v92)(v43, v30);
        }

        ++v32;
        v33 += 2;
        if (v101 == v32)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_29;
    }

LABEL_11:

    v109 = 0;
    v110 = 0;
    v108 = v81;

    sub_21E0C7914(&v105);
    v100 = v106;
    v46 = v91;
    if (v106)
    {
      v47 = v105;
      v48 = v107;
      v93 = (v83 + 1);
      v94 = (v83 + 2);
      v83 = (v80 + 48);
      v49 = (v80 + 32);
      v80 += 8;
      v81 = v49;
LABEL_16:
      v92 = v47;
      swift_getKeyPath();
      v105 = v46;
      sub_21E13D3C4();

      v50 = *&v46[v87];
      swift_getKeyPath();
      v105 = v50;

      sub_21E13D3C4();

      v51 = OBJC_IVAR____TtC20VisualIntelligenceUI11NewBarModel__items;
      swift_beginAccess();
      v52 = *&v50[v51];

      v53 = v52 + 40;
      v98 = -*(v52 + 2);
      v99 = v52;
      v54 = -1;
      v97 = v48;
      while (1)
      {
        if (v98 + v54 == -1)
        {

          swift_getKeyPath();
          v105 = v48;
          sub_21E0ECD50(&qword_280F6B830, type metadata accessor for NewActionModel);
          sub_21E13D3C4();

          v74 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
          swift_beginAccess();
          v75 = v48 + v74;
          v76 = v84;
          sub_21DF236C0(v75, v84, &qword_27CEA6D48);
          v77 = v88;
          if ((*v83)(v76, 1, v88) == 1)
          {
            sub_21E0EBEF0(v92, v100);
            sub_21DF23614(v76, &qword_27CEA6D48);
            goto LABEL_14;
          }

          v78 = v82;
          (*v81)(v82, v76, v77);
          swift_getKeyPath();
          v46 = v91;
          v105 = v91;
          sub_21E13D3C4();

          LOBYTE(v105) = 1;

          v79 = v92;
          sub_21E0FB7F4(v78, v92, &v105);

          sub_21E0EBEF0(v79, v100);
          (*v80)(v78, v77);
LABEL_15:
          sub_21E0C7914(&v105);
          v47 = v105;
          v48 = v107;
          v100 = v106;
          if (!v106)
          {
          }

          goto LABEL_16;
        }

        if (++v54 >= *(v99 + 2))
        {
          break;
        }

        v56 = *(v53 - 1);
        v57 = *v53;
        v101 = v53;
        v58 = v95;
        v102 = *v94;
        v59 = v96;
        v102(v95, v56 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v96);
        v104 = v56;

        v60 = sub_21E13D314();
        v62 = v61;
        v63 = *v93;
        (*v93)(v58, v59);
        v105 = v60;
        v106 = v62;
        MEMORY[0x223D52A60](45, 0xE100000000000000);
        v103 = v57;
        v64 = *(v57 + 16);
        v65 = *(v57 + 24);

        MEMORY[0x223D52A60](v64, v65);

        v67 = v105;
        v66 = v106;
        v102(v58, v100 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v59);
        v68 = sub_21E13D314();
        v70 = v69;
        v71 = v59;
        v48 = v97;
        v63(v58, v71);
        v105 = v68;
        v106 = v70;
        MEMORY[0x223D52A60](45, 0xE100000000000000);
        v72 = v48[2];
        v73 = v48[3];

        MEMORY[0x223D52A60](v72, v73);

        if (v67 == v105 && v66 == v106)
        {

LABEL_13:
          sub_21E0EBEF0(v92, v100);

LABEL_14:
          v46 = v91;
          goto LABEL_15;
        }

        v53 = v101 + 2;
        v55 = sub_21E142B14();

        if (v55)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }
  }

  return result;
}

void (*sub_21E0DB654(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21E0DB6DC;
}

void sub_21E0DB6DC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    swift_getKeyPath();
    *v3 = v4;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v6 = *(v4 + v5);

    sub_21E0CD660(v6 == 0);
  }

  free(v3);
}

uint64_t sub_21E0DB7C8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  *(a1 + v4) = a2;

  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v5 = *(a1 + v4);

  sub_21E0CD660(v5 == 0);
}

void (*NewSaliencyModel.selectedEntity.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21E0DB654(v4);
  return sub_21E0DBA0C;
}

uint64_t sub_21E0DBA18()
{
  NewSaliencyModel.selectedEntity.setter(0);
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E0C9CA8(v0);
}

Swift::Void __swiftcall NewSaliencyModel.attemptImplicitSelection()()
{
  swift_getKeyPath();
  v2 = v0;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  if (!*(v2 + v1))
  {
    sub_21E141D64();
    sub_21E13F864();
  }
}

uint64_t sub_21E0DBBFC()
{
  swift_getKeyPath();
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  swift_beginAccess();

  NewSaliencyModel.selectedEntity.setter(v0);
  swift_getKeyPath();
  sub_21E13D3C4();

  swift_beginAccess();

  sub_21E0C9CA8(v1);
}

uint64_t sub_21E0DBD40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  NewSaliencyModel.selectedEntity.setter(0);
  swift_getKeyPath();
  v13 = v4;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval;
  if (*(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval) == 1)
  {
    swift_getKeyPath();
    v13 = v4;

    sub_21E13D3C4();

    v13 = v4;
    swift_getKeyPath();
    sub_21E13D3E4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
    swift_beginAccess();
    v7 = sub_21E0EAAB8((v4 + v6), v4);

    v8 = *(v4 + v6);
    if (v8 >> 62)
    {
      result = sub_21E1427B4();
      v9 = result;
      if (result >= v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v7)
      {
LABEL_5:
        sub_21DF5F2B0(v7, v9);
        swift_endAccess();
        sub_21E141D64();
        sub_21E13F864();

        v13 = v4;
        swift_getKeyPath();
        sub_21E13D3D4();

        goto LABEL_6;
      }
    }

    __break(1u);
    return result;
  }

LABEL_6:
  v10 = sub_21E13EF04();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_21E0CEAB8(v2);
  if (*(v4 + v5) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v12 - 2) = v4;
    *(&v12 - 8) = 0;
    v13 = v4;
    sub_21E13D3B4();
  }

  else
  {
    *(v4 + v5) = 0;
  }
}

uint64_t sub_21E0DC0D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  NewSaliencyModel.selectedEntity.setter(0);
  swift_getKeyPath();
  v13 = v4;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval;
  if (*(v4 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__actionPinFromUserSelectionNeedsRemoval) == 1)
  {
    swift_getKeyPath();
    v13 = v4;

    sub_21E13D3C4();

    v13 = v4;
    swift_getKeyPath();
    sub_21E13D3E4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
    swift_beginAccess();
    v7 = sub_21E0EAAB8((v4 + v6), v4);

    v8 = *(v4 + v6);
    if (v8 >> 62)
    {
      result = sub_21E1427B4();
      v9 = result;
      if (result >= v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v7)
      {
LABEL_5:
        sub_21DF5F2B0(v7, v9);
        swift_endAccess();
        sub_21E141D64();
        sub_21E13F864();

        v13 = v4;
        swift_getKeyPath();
        sub_21E13D3D4();

        goto LABEL_6;
      }
    }

    __break(1u);
    return result;
  }

LABEL_6:
  v10 = sub_21E13EF04();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_21E0CEAB8(v2);
  if (*(v4 + v5))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v12 - 2) = v4;
    *(&v12 - 8) = 0;
    v13 = v4;
    sub_21E13D3B4();
  }

  else
  {
    *(v4 + v5) = 0;
  }
}

uint64_t sub_21E0DC4BC(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v10 = v1;
  sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v5 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  if (!v5)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!a1 || (v6 = sub_21E1423C4(), MEMORY[0x28223BE20](v6), v9[2] = v5, v9[3] = a1, , v7 = sub_21E0C372C(sub_21DF6078C, v9, "VisualIntelligenceUI/NewEntityModel.swift"), result = , (v7 & 1) == 0))
  {
LABEL_6:
    swift_getKeyPath();
    v10 = v2;
    sub_21E13D3C4();

    sub_21E0DC668(v8, a1);
  }

  return result;
}

uint64_t sub_21E0DC668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA448);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  result = sub_21E0CD660(0);
  if (a1)
  {
    if (!a2)
    {
      result = NewSaliencyModel.shouldPeekForPresentedEntity.getter();
      if (result)
      {
        swift_getKeyPath();
        v16 = v2;
        sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
        sub_21E13D3C4();

        v10 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
        swift_beginAccess();

        sub_21E0FC3C0();

        swift_getKeyPath();
        v15 = v2;
        sub_21E13D3C4();

        v11 = *(v2 + v10);
        swift_getKeyPath();
        v15 = v11;
        sub_21E0ECD50(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);

        sub_21E13D3C4();

        sub_21E13D2F4();
        v12 = sub_21E13D304();
        (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
        sub_21E006FD4(v8);

        return sub_21E0DCC80();
      }
    }
  }

  else
  {
    swift_getKeyPath();
    v16 = v2;
    sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__analytics;
    swift_beginAccess();
    v14 = *(v3 + v13);
    swift_getKeyPath();
    v15 = v14;
    sub_21E0ECD50(&qword_280F6AEA8, type metadata accessor for SessionAnalytics);

    sub_21E13D3C4();

    sub_21E00BE88();
  }

  return result;
}

void (*NewSaliencyModel.presentedEntity.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  v4[2] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *v4 = v1;
  v4[3] = sub_21E0ECD50(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  *v4 = *(v1 + v5);

  return sub_21E0DCB9C;
}