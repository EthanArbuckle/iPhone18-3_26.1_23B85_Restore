double sub_264715F64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t (*sub_264715FD0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264716074(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264716214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26471634C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2647164C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v170 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v168 = *(v3 - 8);
  v169 = v3;
  v4 = *(v168 + 64);
  MEMORY[0x28223BE20](v3);
  v167 = &v109 - v5;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v166 = *(v174 - 8);
  v6 = *(v166 + 64);
  MEMORY[0x28223BE20](v174);
  v165 = &v109 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v9 = *(v8 - 1);
  v175 = v8;
  v176 = v9;
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v173 = &v109 - v11;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v158 = *(v164 - 1);
  v12 = *(v158 + 64);
  MEMORY[0x28223BE20](v164);
  v154 = &v109 - v13;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v139 = *(v156 - 8);
  v14 = *(v139 + 64);
  MEMORY[0x28223BE20](v156);
  v130 = &v109 - v15;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v129 = *(v136 - 8);
  v16 = *(v129 + 64);
  MEMORY[0x28223BE20](v136);
  v127 = &v109 - v17;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v126 = *(v128 - 8);
  v18 = *(v126 + 64);
  MEMORY[0x28223BE20](v128);
  v124 = &v109 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v122 = *(v125 - 8);
  v20 = *(v122 + 64);
  MEMORY[0x28223BE20](v125);
  v120 = &v109 - v21;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v118 = *(v121 - 8);
  v22 = *(v118 + 64);
  MEMORY[0x28223BE20](v121);
  v116 = &v109 - v23;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v115 = *(v117 - 8);
  v24 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v112 = &v109 - v25;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v111 = *(v114 - 8);
  v26 = *(v111 + 64);
  MEMORY[0x28223BE20](v114);
  v109 = &v109 - v27;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v28 = *(v110 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v110);
  v31 = &v109 - v30;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v32 = *(*(v113 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v113);
  v171 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v109 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v131 = &v109 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v109 - v40;
  v135 = &v109 - v40;
  v42 = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v162 = v42;
  sub_264783ED4();

  v163 = v179;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v161 = v179;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v160 = v182;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v159 = v179;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v157 = v179;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v155 = v181;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v43 = v179;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v153 = v179;
  v152 = v180;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v150 = v179;
  v149 = v180;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v148 = v179;
  v147 = v180;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v172 = v179;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v146 = v179;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v145 = v179;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v144 = v179;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v143 = v179;
  v142 = v180;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v141 = v179;
  v140 = v180;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v138 = v179;
  v137 = v180;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v133 = v179;
  v132 = v180;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v44 = v179;
  v45 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  sub_264720BE8(v2 + v45, v41);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v134 = v177;
  v151 = type metadata accessor for UserSessionConfiguration();
  v46 = *(v151 + 48);
  v47 = *(v151 + 52);
  v48 = swift_allocObject();
  *(v48 + 16) = [objc_opt_self() defaultManager];
  v49 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v123 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v50 = sub_264783B64();
  v51 = *(*(v50 - 8) + 56);
  v51(v48 + v49, 1, 1, v50);
  v52 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v177 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v28 + 32))(v48 + v52, v31, v110);
  v53 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v177) = 0;
  v54 = v109;
  sub_264783E94();
  (*(v111 + 32))(v48 + v53, v54, v114);
  v55 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v177 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v56 = v112;
  sub_264783E94();
  (*(v115 + 32))(v48 + v55, v56, v117);
  v57 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v51(v37, 1, 1, v50);
  v119 = v37;
  sub_264720BE8(v37, v171);
  v58 = v116;
  sub_264783E94();
  sub_26460CD50(v37, &qword_27FF75CE8, &unk_264788B70);
  (*(v118 + 32))(v48 + v57, v58, v121);
  v59 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v177 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v60 = v120;
  sub_264783E94();
  (*(v122 + 32))(v48 + v59, v60, v125);
  v61 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v177 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v62 = v124;
  sub_264783E94();
  (*(v126 + 32))(v48 + v61, v62, v128);
  v63 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v177) = 0;
  v64 = v127;
  sub_264783E94();
  (*(v129 + 32))(v48 + v63, v64, v136);
  v65 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v177 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v66 = v130;
  sub_264783E94();
  (*(v139 + 32))(v48 + v65, v66, v156);
  v67 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v177) = 0;
  v68 = v154;
  sub_264783E94();
  (*(v158 + 32))(v48 + v67, v68, v164);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v177 = 0x40AC200000000000;
  v70 = v173;
  sub_264783E94();
  v71 = v176[4];
  v176 += 4;
  v164 = v71;
  v71(v48 + v69, v70, v175);
  v72 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v177 = 0;
  v178 = 1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v74 = v165;
  sub_264783E94();
  v75 = *(v166 + 32);
  v76 = v174;
  v75(v48 + v72, v74, v174);
  v77 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v177 = 0;
  v178 = 1;
  v158 = v73;
  sub_264783E94();
  v75(v48 + v77, v74, v76);
  v78 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v75(v48 + v78, v74, v76);
  v79 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v177 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v80 = v167;
  sub_264783E94();
  v81 = v169;
  v82 = *(v168 + 32);
  v82(v48 + v79, v80, v169);
  v83 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v177 = 0;
  sub_264783E94();
  v82(v48 + v83, v80, v81);
  v84 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v177 = 0;
  sub_264783E94();
  v82(v48 + v84, v80, v81);
  v85 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v177 = 0;
  sub_264783E94();
  v82(v48 + v85, v80, v81);
  v86 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v87 = v174;
  v75(v48 + v86, v74, v174);
  v88 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v75(v48 + v88, v74, v87);
  v89 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v75(v48 + v89, v74, v87);
  v90 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v177 = 0;
  v178 = 1;
  sub_264783E94();
  v75(v48 + v90, v74, v87);
  v91 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v177 = 0x40AC200000000000;
  v92 = v173;
  sub_264783E94();
  v164(v48 + v91, v92, v175);
  v93 = *(v48 + 16);
  v94 = v162;
  *(v48 + 16) = v162;
  v176 = v94;

  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v163;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v161;
  v175 = v161;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v177) = v160;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v159;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v177) = v157;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v177) = v155;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v43;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v153;
  v178 = v152;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v150;
  v178 = v149;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v148;
  v178 = v147;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v95 = v172;
  v177 = v172;

  v96 = v95;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v97 = v146;
  v177 = v146;

  v98 = v97;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v99 = v145;
  v177 = v145;

  v100 = v99;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v101 = v144;
  v177 = v144;

  v102 = v101;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v143;
  v178 = v142;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v141;
  v178 = v140;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v138;
  v178 = v137;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v133;
  v178 = v132;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v44;

  sub_264783EE4();
  v103 = v123;
  swift_beginAccess();
  v104 = v135;
  sub_264720E84(v135, v48 + v103);
  swift_endAccess();
  v105 = v131;
  v106 = v119;
  sub_264720BE8(v131, v119);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v106, v171);

  sub_264783EE4();
  sub_26460CD50(v106, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v177 = v134;

  sub_264783EE4();

  sub_26460CD50(v105, &qword_27FF75CE8, &unk_264788B70);
  result = sub_26460CD50(v104, &qword_27FF75CE8, &unk_264788B70);
  v108 = v170;
  v170[3] = v151;
  *v108 = v48;
  return result;
}

void sub_264718248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = objc_opt_self();
  v13 = sub_264783A04();
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v8 + 32))(v16 + v15, v11, v7);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  aBlock[4] = sub_264723A54;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26464CCBC;
  aBlock[3] = &block_descriptor_263;
  v17 = _Block_copy(aBlock);
  v18 = a5;

  [v12 _mapItemFromHandle_completionHandler_];
  _Block_release(v17);
}

void sub_264718474(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v93 = a5;
  v94 = a4;
  v96 = a1;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v90 = *(v95 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v95);
  v89 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v85 - v10;
  v12 = sub_264783E24();
  v13 = *(v12 - 8);
  v91 = v12;
  v92 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v85 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v85 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (a2)
    {
      v88 = v20;
      v25 = a2;
      sub_264783DF4();
      v26 = a2;

      v27 = sub_264783E14();
      v28 = sub_2647859D4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v86 = v28;
        v30 = v29;
        v85 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v97 = v24;
        v98 = v87;
        *v30 = 136315650;
        type metadata accessor for UserSessionConfiguration();

        v31 = sub_264785764();
        v33 = v11;
        v34 = sub_2646DF234(v31, v32, &v98);
        v35 = v91;
        v36 = v92;

        *(v30 + 4) = v34;
        v11 = v33;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264799810, &v98);
        *(v30 + 22) = 2112;
        v37 = a2;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 24) = v38;
        v39 = v85;
        *v85 = v38;
        _os_log_impl(&dword_264605000, v27, v86, "%s, %s: Error hydrating map item from map data handle, error, %@", v30, 0x20u);
        sub_26460CD50(v39, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v39, -1, -1);
        v40 = v87;
        swift_arrayDestroy();
        MEMORY[0x266740650](v40, -1, -1);
        MEMORY[0x266740650](v30, -1, -1);

        (*(v36 + 8))(v22, v35);
      }

      else
      {

        (*(v92 + 8))(v22, v91);
      }

      v45 = sub_2647858E4();
      (*(*(v45 - 8) + 56))(v11, 1, 1, v45);
      v46 = v90;
      v47 = v11;
      v48 = v89;
      v49 = v95;
      (*(v90 + 16))(v89, v94, v95);
      v50 = (*(v46 + 80) + 48) & ~*(v46 + 80);
      v51 = swift_allocObject();
      *(v51 + 2) = 0;
      *(v51 + 3) = 0;
      v52 = v93;
      *(v51 + 4) = v24;
      *(v51 + 5) = v52;
      v53 = v48;
      v11 = v47;
      (*(v46 + 32))(&v51[v50], v53, v49);

      v54 = v52;
      sub_264635430(0, 0, v47, &unk_264790798, v51);

      v20 = v88;
    }

    if (v96)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v55 = v96;
      sub_264783ED4();

      v56 = v98;
      [v93 horizontalAccuracy];
      if (v57 == 100.0)
      {
        v58 = 0;
        if (v56 > 1)
        {
          goto LABEL_13;
        }

LABEL_20:
        if (v56 != 1)
        {
LABEL_24:
          v70 = v55;
LABEL_34:
          v98 = v96;
          v99 = v58;
          v84 = v55;
          sub_264785894();

          return;
        }

        v67 = qword_27FF75088;
        v68 = v55;
        if (v67 != -1)
        {
          swift_once();
        }

        v69 = &qword_27FF78CD0;
LABEL_33:
        v81 = *v69;
        v82 = v69[1];
        v83 = sub_264785714();
        [v68 setName_];

        goto LABEL_34;
      }

      if (v57 == 250.0)
      {
        v58 = 1;
        if (v56 <= 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v58 = 2 * (v57 == 375.0);
        if (v56 <= 1)
        {
          goto LABEL_20;
        }
      }

LABEL_13:
      if (v56 == 2)
      {
        v79 = qword_27FF75090;
        v68 = v55;
        if (v79 != -1)
        {
          swift_once();
        }

        v69 = &qword_27FF78CE0;
      }

      else
      {
        if (v56 != 3)
        {
          goto LABEL_24;
        }

        v80 = qword_27FF75098;
        v68 = v55;
        if (v80 != -1)
        {
          swift_once();
        }

        v69 = &qword_27FF78CF0;
      }

      goto LABEL_33;
    }

    sub_264783DF4();

    v59 = sub_264783E14();
    v60 = sub_2647859D4();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v97 = v24;
      v98 = v63;
      *v61 = 136315650;
      type metadata accessor for UserSessionConfiguration();
      v88 = v20;

      v64 = sub_264785764();
      v66 = sub_2646DF234(v64, v65, &v98);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264799810, &v98);
      *(v61 + 22) = 2112;
      *(v61 + 24) = 0;
      *v62 = 0;
      _os_log_impl(&dword_264605000, v59, v60, "%s, %s: Resulting mapItem is invalid, %@", v61, 0x20u);
      sub_26460CD50(v62, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v62, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v63, -1, -1);
      MEMORY[0x266740650](v61, -1, -1);

      (*(v92 + 8))(v88, v91);
    }

    else
    {

      (*(v92 + 8))(v20, v91);
    }

    v71 = sub_2647858E4();
    (*(*(v71 - 8) + 56))(v11, 1, 1, v71);
    v73 = v89;
    v72 = v90;
    v74 = v95;
    (*(v90 + 16))(v89, v94, v95);
    v75 = (*(v72 + 80) + 48) & ~*(v72 + 80);
    v76 = swift_allocObject();
    *(v76 + 2) = 0;
    *(v76 + 3) = 0;
    v77 = v93;
    *(v76 + 4) = v24;
    *(v76 + 5) = v77;
    (*(v72 + 32))(&v76[v75], v73, v74);

    v78 = v77;
    sub_264635430(0, 0, v11, &unk_264790788, v76);
  }

  else
  {
    sub_264783DF4();
    v41 = sub_264783E14();
    v42 = sub_2647859D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v98 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2646DF234(0xD000000000000019, 0x8000000264799810, &v98);
      _os_log_impl(&dword_264605000, v41, v42, "#Initiator,UserSessionConfiguration, no reference to self in %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x266740650](v44, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);
    }

    (*(v92 + 8))(v17, v91);
    v98 = 0;
    v99 = 0;
    sub_264785894();
  }
}

uint64_t sub_264718F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_264718FFC;

  return sub_26471932C(v6 + 16, a5);
}

uint64_t sub_264718FFC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264724038, 0, 0);
}

uint64_t sub_2647190F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_2647191A0;

  return sub_26471932C(v6 + 16, a5);
}

uint64_t sub_2647191A0()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26471929C, 0, 0);
}

uint64_t sub_26471929C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  sub_264785894();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26471932C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_264783E24();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = sub_2647858B4();
  v3[10] = sub_2647858A4();
  v8 = sub_264785874();
  v3[11] = v8;
  v3[12] = v7;

  return MEMORY[0x2822009F8](sub_264719428, v8, v7);
}

uint64_t sub_264719428()
{
  v41 = v0;
  v1 = [objc_opt_self() sharedService];
  v0[13] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() sharedService];
    if (!v3)
    {
      __break(1u);
      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = v3;
    v12 = v0[4];
    v13 = [v3 defaultTraits];

    v14 = [v2 ticketForReverseGeocodeLocation:v12 traits:v13];
    v0[14] = v14;

    if (v14)
    {
      v15 = v0[9];
      v16 = v0[5];
      v17 = sub_2647858A4();
      v0[15] = v17;
      v18 = swift_task_alloc();
      v0[16] = v18;
      *(v18 + 16) = v14;
      *(v18 + 24) = v16;
      v19 = *(MEMORY[0x277D859E0] + 4);
      v20 = swift_task_alloc();
      v0[17] = v20;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78638, &qword_264790708);
      *v20 = v0;
      v20[1] = sub_2647197D0;
      v3 = v0[3];
      v5 = MEMORY[0x277D85700];
      v8 = sub_26472346C;
      v6 = 0x286D65744970616DLL;
      v7 = 0xED0000293A726F66;
      v4 = v17;
      v9 = v18;

      return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v21 = v0[10];
  v22 = v0[8];
  v23 = v0[5];

  sub_264783DF4();

  v24 = sub_264783E14();
  v25 = sub_2647859D4();

  v26 = os_log_type_enabled(v24, v25);
  v28 = v0[7];
  v27 = v0[8];
  v29 = v0[6];
  if (v26)
  {
    v30 = v0[5];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v31 = 136315394;
    v0[2] = v30;
    type metadata accessor for UserSessionConfiguration();

    v33 = sub_264785764();
    v35 = sub_2646DF234(v33, v34, &v40);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_2646DF234(0x286D65744970616DLL, 0xED0000293A726F66, &v40);
    _os_log_impl(&dword_264605000, v24, v25, "%s, %s: Unable to create MKMapServiceTicket for reverseGeocodeLocation", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v32, -1, -1);
    MEMORY[0x266740650](v31, -1, -1);
  }

  (*(v28 + 8))(v27, v29);
  v36 = v0[3];
  *v36 = 0;
  *(v36 + 8) = 0;
  v37 = v0[8];

  v38 = v0[1];

  return v38();
}

uint64_t sub_2647197D0()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_264719930, v6, v5);
}

uint64_t sub_264719930()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];

  swift_unknownObjectRelease();

  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

void sub_2647199A8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_264723544;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26471A4C4;
  aBlock[3] = &block_descriptor_233;
  v12 = _Block_copy(aBlock);

  [a2 submitWithHandler:v12 networkActivity:0];
  _Block_release(v12);
}

void sub_264719B88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v20 = a2;
      sub_264783DF4();
      v21 = a2;

      v22 = sub_264783E14();
      v23 = sub_2647859D4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v67 = a4;
        v26 = v25;
        v65 = swift_slowAlloc();
        v68 = v65;
        *v24 = 136315650;
        v70 = v19;
        type metadata accessor for UserSessionConfiguration();
        v66 = v7;

        v27 = sub_264785764();
        v29 = sub_2646DF234(v27, v28, &v68);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_2646DF234(0x286D65744970616DLL, 0xED0000293A726F66, &v68);
        *(v24 + 22) = 2112;
        v30 = a2;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 24) = v31;
        *v26 = v31;
        _os_log_impl(&dword_264605000, v22, v23, "%s, %s: Error reverse geocoding from coordinates, error, %@", v24, 0x20u);
        sub_26460CD50(v26, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v26, -1, -1);
        v32 = v65;
        swift_arrayDestroy();
        MEMORY[0x266740650](v32, -1, -1);
        MEMORY[0x266740650](v24, -1, -1);

        (*(v8 + 8))(v17, v66);
      }

      else
      {

        (*(v8 + 8))(v17, v7);
      }

      v68 = 0;
      v69 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
      sub_264785894();

LABEL_27:

      return;
    }

    if (!a1 || !*(a1 + 16) || (sub_264655DB8(a1 + 32, &v68), sub_264659B70(0, &qword_27FF76FC8, 0x277CD4E80), (swift_dynamicCast() & 1) == 0))
    {
      sub_264783DF4();

      v44 = sub_264783E14();
      v45 = sub_2647859D4();

      if (os_log_type_enabled(v44, v45))
      {
        v66 = v7;
        v67 = a4;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v68 = v47;
        *v46 = 136315650;
        v70 = v19;
        type metadata accessor for UserSessionConfiguration();

        v48 = sub_264785764();
        v50 = sub_2646DF234(v48, v49, &v68);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_2646DF234(0x286D65744970616DLL, 0xED0000293A726F66, &v68);
        *(v46 + 22) = 2080;
        if (a1)
        {
          v51 = MEMORY[0x26673F550](a1, MEMORY[0x277D84F70] + 8);
          v53 = v52;
        }

        else
        {
          v53 = 0xE300000000000000;
          v51 = 7104878;
        }

        v54 = sub_2646DF234(v51, v53, &v68);

        *(v46 + 24) = v54;
        _os_log_impl(&dword_264605000, v44, v45, "%s, %s: Resulting mapItemList or mapItemList's first element is invalid %s", v46, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v47, -1, -1);
        MEMORY[0x266740650](v46, -1, -1);

        (*(v8 + 8))(v15, v66);
      }

      else
      {

        (*(v8 + 8))(v15, v7);
      }

      v68 = 0;
      v69 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
      sub_264785894();
      goto LABEL_27;
    }

    v38 = v70;
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v38;
    sub_264783ED4();

    v40 = v68;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    switch(v40)
    {
      case 3:
        v57 = qword_27FF75098;
        v58 = v39;
        if (v57 != -1)
        {
          swift_once();
        }

        v43 = &qword_27FF78CF0;
        break;
      case 2:
        v55 = qword_27FF75090;
        v56 = v39;
        if (v55 != -1)
        {
          swift_once();
        }

        v43 = &qword_27FF78CE0;
        break;
      case 1:
        v41 = qword_27FF75088;
        v42 = v39;
        if (v41 != -1)
        {
          swift_once();
        }

        v43 = &qword_27FF78CD0;
        break;
      default:
LABEL_35:
        swift_getKeyPath();
        swift_getKeyPath();
        v62 = v39;
        sub_264783ED4();

        v63 = v68;
        v68 = v62;
        v69 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
        sub_264785894();

        return;
    }

    v59 = *v43;
    v60 = v43[1];
    v61 = sub_264785714();
    [v39 setName_];

    goto LABEL_35;
  }

  sub_264783DF4();
  v33 = sub_264783E14();
  v34 = sub_2647859D4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v7;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v68 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_2646DF234(0x286D65744970616DLL, 0xED0000293A726F66, &v68);
    _os_log_impl(&dword_264605000, v33, v34, "#Initiator,UserSessionConfiguration, no reference to self in %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x266740650](v37, -1, -1);
    MEMORY[0x266740650](v36, -1, -1);

    (*(v8 + 8))(v12, v35);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v68 = 0;
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  sub_264785894();
}

uint64_t sub_26471A4C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2647857F4();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_26471A560()
{
  v1 = sub_264785594();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647855C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v11 = sub_264785A44();
  aBlock[4] = sub_26472344C;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_15;
  v12 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264723EE4(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26466841C();
  sub_264785BD4();
  MEMORY[0x26673F780](0, v10, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26471A810()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v5 = sub_264783E14();
  v6 = sub_2647859F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_264605000, v5, v6, "#Initiator, UserSessionConfiguration, resetToTimeSessionConfiguration", v7, 2u);
    MEMORY[0x266740650](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 1;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 0x40AC200000000000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = 0;

  return sub_264783EE4();
}

uint64_t UserSessionConfiguration.deinit()
{
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID, &qword_27FF75CE8, &unk_264788B70);
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v28 = *(*(v20 - 8) + 8);
  v28(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v23 = *(*(v22 - 8) + 8);
  v23(v0 + v21, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA, v22);
  v24 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v26 = *(*(v25 - 8) + 8);
  v26(v0 + v24, v25);
  v26(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError, v25);
  v26(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError, v25);
  v26(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError, v25);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA, v22);
  v23(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime, v22);
  v28(v0 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration, v20);
  return v0;
}

uint64_t UserSessionConfiguration.__deallocating_deinit()
{
  UserSessionConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26471AFE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UserSessionConfiguration();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

BOOL sub_26471B024(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return _s15SafetyMonitorUI24UserSessionConfigurationC2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_26471B030()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_26471B0A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

BOOL _s15SafetyMonitorUI24UserSessionConfigurationC2eeoiySbAC_ACtFZ_0()
{
  v0 = sub_264783B64();
  v1 = *(v0 - 8);
  v38 = v0;
  v39 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v37 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED8, &qword_264789880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v35[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v35[-v15];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v17 = *&v41;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v17 != *&v41)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v18 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v19 = v41;
  if (v18)
  {
    if (*&v41 == 0.0)
    {
    }

    else
    {
      sub_264659B70(0, &qword_27FF76FC8, 0x277CD4E80);
      v20 = sub_264785AE4();

      if (v20)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (*&v41 != 0.0)
  {

    return 0;
  }

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v21 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v21 != v41)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v22 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v22 != v41)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v23 = *(v4 + 48);
  v24 = v40;
  sub_264720BE8(v16, v40);
  sub_264720BE8(v14, &v24[v23]);
  v25 = v38;
  v26 = *(v39 + 48);
  if (v26(v24, 1, v38) == 1)
  {
    sub_26460CD50(v14, &qword_27FF75CE8, &unk_264788B70);
    v27 = v40;
    sub_26460CD50(v16, &qword_27FF75CE8, &unk_264788B70);
    if (v26(&v27[v23], 1, v25) == 1)
    {
      sub_26460CD50(v27, &qword_27FF75CE8, &unk_264788B70);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_264720BE8(v24, v11);
  if (v26(&v24[v23], 1, v25) == 1)
  {
    sub_26460CD50(v14, &qword_27FF75CE8, &unk_264788B70);
    v27 = v40;
    sub_26460CD50(v16, &qword_27FF75CE8, &unk_264788B70);
    (*(v39 + 8))(v11, v25);
LABEL_17:
    sub_26460CD50(v27, &qword_27FF75ED8, &qword_264789880);
    return 0;
  }

  v29 = v39;
  v30 = &v24[v23];
  v31 = v37;
  (*(v39 + 32))(v37, v30, v25);
  sub_264723EE4(&qword_27FF78040, MEMORY[0x277CC95F0]);
  v36 = sub_264785684();
  v32 = *(v29 + 8);
  v32(v31, v25);
  sub_26460CD50(v14, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CD50(v16, &qword_27FF75CE8, &unk_264788B70);
  v32(v11, v25);
  sub_26460CD50(v40, &qword_27FF75CE8, &unk_264788B70);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v33 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v33 != v41)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v34 = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v34 == v41;
}

uint64_t _s15SafetyMonitorUI24UserSessionConfigurationC4withACSo09SMSessionF0C_tcfC_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v152 = &v152 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v190 = *(v5 - 8);
  v191 = v5;
  v6 = *(v190 + 64);
  MEMORY[0x28223BE20](v5);
  v189 = &v152 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v193 = *(v8 - 8);
  v194 = v8;
  v9 = *(v193 + 8);
  MEMORY[0x28223BE20](v8);
  v192 = &v152 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v12 = *(v11 - 8);
  v199 = v11;
  v200 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v198 = &v152 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v184 = *(v15 - 8);
  v185 = v15;
  v16 = *(v184 + 8);
  MEMORY[0x28223BE20](v15);
  v183 = &v152 - v17;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v181 = *(v182 - 8);
  v18 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v180 = &v152 - v19;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v178 = *(v179 - 8);
  v20 = *(v178 + 64);
  MEMORY[0x28223BE20](v179);
  v177 = &v152 - v21;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v175 = *(v176 - 8);
  v22 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v174 = &v152 - v23;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v172 = *(v173 - 8);
  v24 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = &v152 - v25;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v168 = *(v169 - 8);
  v26 = *(v168 + 64);
  MEMORY[0x28223BE20](v169);
  v167 = &v152 - v27;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v165 = *(v166 - 8);
  v28 = *(v165 + 64);
  MEMORY[0x28223BE20](v166);
  v164 = &v152 - v29;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v162 = *(v163 - 8);
  v30 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v159 = &v152 - v31;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v155 = *(v156 - 8);
  v32 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v154 = &v152 - v33;
  v160 = sub_264783AF4();
  v158 = *(v160 - 1);
  v34 = *(v158 + 64);
  MEMORY[0x28223BE20](v160);
  v153 = &v152 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v36 = *(*(v157 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v157);
  v196 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v195 = &v152 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v197 = &v152 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v152 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v152 - v46;
  v48 = sub_264783E24();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v152 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v53 = a1;
  v54 = sub_264783E14();
  v55 = sub_2647859F4();

  v56 = os_log_type_enabled(v54, v55);
  v161 = v45;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v188 = v49;
    v59 = v58;
    v201 = v58;
    *v57 = 136642819;
    v60 = [v53 debugDescription];
    v187 = v48;
    v61 = v47;
    v62 = v60;
    v63 = sub_264785724();
    v64 = v53;
    v66 = v65;

    v47 = v61;
    v67 = sub_2646DF234(v63, v66, &v201);
    v53 = v64;

    *(v57 + 4) = v67;
    _os_log_impl(&dword_264605000, v54, v55, "#Initiator, UserSessionConfiguration, initWithSessionConfiguration - Initializing with SMSessionConfiguration: %{sensitive}s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x266740650](v59, -1, -1);
    MEMORY[0x266740650](v57, -1, -1);

    (*(v188 + 8))(v52, v187);
  }

  else
  {

    (*(v49 + 8))(v52, v48);
  }

  v68 = sub_264783B64();
  v69 = *(*(v68 - 8) + 56);
  v69(v47, 1, 1, v68);
  v70 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
  if ([v53 sessionType] == 2 && (v71 = objc_msgSend(v53, sel_destination)) != 0)
  {
    v72 = v71;
    v170 = [v71 destinationType];
    v73 = [v72 destinationMapItem];
    v74 = sub_264783A14();
    v76 = v75;

    v186 = [v72 clLocation];
  }

  else
  {
    v170 = 0;
    v186 = 0;
    v74 = 0;
    v76 = 0xF000000000000000;
  }

  if ([v53 sessionType] == 1 && (v77 = objc_msgSend(v53, sel_time)) != 0)
  {
    v78 = v77;
    v79 = [v77 timeBound];
    v80 = v153;
    sub_264783AC4();

    sub_264783AA4();
    v82 = v81;

    v83 = v80;
    v70 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
    (*(v158 + 8))(v83, v160);
  }

  else
  {
    v82 = 0x40AC200000000000;
  }

  v84 = [v53 v70[71]];
  v187 = v76;
  v188 = v74;
  if (v84 == 4)
  {
    v85 = [v53 sessionWorkoutIdentifier];
    if (v85)
    {
      v86 = v161;
      v87 = v85;
      sub_264783B44();

      v88 = 0;
    }

    else
    {
      v88 = 1;
      v86 = v161;
    }

    sub_26460CD50(v47, &qword_27FF75CE8, &unk_264788B70);
    v69(v86, v88, 1, v68);
    sub_264723E74(v86, v47);
    v158 = [v53 sessionWorkoutType];
    v161 = [v53 sessionWorkoutMirrorType];
  }

  else
  {
    v161 = 0;
    v158 = 3000;
  }

  v153 = [v53 v70[71]];
  sub_264720BE8(v47, v197);
  v89 = type metadata accessor for UserSessionConfiguration();
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  v92 = swift_allocObject();
  *(v92 + 16) = [objc_opt_self() defaultManager];
  v160 = v53;
  v69((v92 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID), 1, 1, v68);
  v93 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v201 = 2;
  type metadata accessor for SMSessionType(0);
  v94 = v154;
  sub_264783E94();
  (*(v155 + 32))(v92 + v93, v94, v156);
  v95 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v201) = 0;
  v96 = v159;
  sub_264783E94();
  (*(v162 + 32))(v92 + v95, v96, v163);
  v97 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v201 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v98 = v164;
  sub_264783E94();
  (*(v165 + 32))(v92 + v97, v98, v166);
  v99 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v100 = v195;
  v69(v195, 1, 1, v68);
  sub_264720BE8(v100, v196);
  v101 = v167;
  sub_264783E94();
  sub_26460CD50(v100, &qword_27FF75CE8, &unk_264788B70);
  (*(v168 + 32))(v92 + v99, v101, v169);
  v102 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v201 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v103 = v171;
  sub_264783E94();
  (*(v172 + 32))(v92 + v102, v103, v173);
  v104 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v201 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v105 = v174;
  sub_264783E94();
  (*(v175 + 32))(v92 + v104, v105, v176);
  v106 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v201) = 0;
  v107 = v177;
  sub_264783E94();
  (*(v178 + 32))(v92 + v106, v107, v179);
  v108 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v201 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v109 = v180;
  sub_264783E94();
  (*(v181 + 32))(v92 + v108, v109, v182);
  v110 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v201) = 0;
  v111 = v183;
  sub_264783E94();
  (*(v184 + 4))(v92 + v110, v111, v185);
  v112 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v201 = 0x40AC200000000000;
  v113 = v198;
  sub_264783E94();
  v114 = *(v200 + 32);
  v200 += 32;
  v184 = v114;
  v114(v92 + v112, v113, v199);
  v115 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v201 = 0;
  v202 = 1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v185 = v47;
  v117 = v116;
  v118 = v192;
  sub_264783E94();
  v119 = v194;
  v120 = *(v193 + 4);
  v120(v92 + v115, v118, v194);
  v121 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v201 = 0;
  v202 = 1;
  v183 = v117;
  sub_264783E94();
  v120(v92 + v121, v118, v119);
  v193 = v120;
  v122 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v201 = 0;
  v202 = 1;
  sub_264783E94();
  v120(v92 + v122, v118, v119);
  v123 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v201 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v124 = v189;
  sub_264783E94();
  v125 = v191;
  v126 = *(v190 + 32);
  v126(v92 + v123, v124, v191);
  v127 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v201 = 0;
  sub_264783E94();
  v126(v92 + v127, v124, v125);
  v128 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v201 = 0;
  sub_264783E94();
  v126(v92 + v128, v124, v125);
  v129 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v201 = 0;
  sub_264783E94();
  v126(v92 + v129, v124, v125);
  v130 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v201 = 0;
  v202 = 1;
  sub_264783E94();
  v131 = v193;
  v193(v92 + v130, v118, v119);
  v132 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v201 = 0;
  v202 = 1;
  sub_264783E94();
  v131(v92 + v132, v118, v119);
  v133 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v201 = 0;
  v202 = 1;
  sub_264783E94();
  v131(v92 + v133, v118, v119);
  v134 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v201 = 0;
  v202 = 1;
  sub_264783E94();
  v131(v92 + v134, v118, v119);
  v135 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v201 = 0x40AC200000000000;
  v136 = v198;
  sub_264783E94();
  v184(v92 + v135, v136, v199);
  swift_getKeyPath();
  swift_getKeyPath();
  v201 = v153;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v201 = v170;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v201) = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v201 = v82;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v201 = 0;

  sub_264783EE4();
  v137 = v197;
  v138 = v195;
  sub_264720BE8(v197, v195);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v138, v196);

  sub_264783EE4();
  sub_26460CD50(v138, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v201 = v158;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v201 = v161;

  sub_264783EE4();
  sub_26460CD50(v137, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4();

  if (v201 == 2)
  {
    v139 = v160;
    v140 = v185;
    v142 = v187;
    v141 = v188;
    if (v187 >> 60 == 15)
    {
LABEL_30:
      v141 = 0;
      v142 = 0xF000000000000000;
      goto LABEL_31;
    }

    v143 = v187 >> 62;
    if ((v187 >> 62) > 1)
    {
      if (v143 != 2)
      {
        goto LABEL_29;
      }

      v144 = *(v188 + 16);
      v145 = *(v188 + 24);
    }

    else
    {
      if (!v143)
      {
        if ((v187 & 0xFF000000000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_31:
        v146 = sub_2647858E4();
        v147 = v152;
        (*(*(v146 - 8) + 56))(v152, 1, 1, v146);
        v148 = swift_allocObject();
        v148[2] = 0;
        v148[3] = 0;
        v148[4] = v141;
        v148[5] = v142;
        v149 = v186;
        v148[6] = v186;
        v148[7] = v92;

        sub_2646C6804(v141, v142);
        v150 = v149;
        sub_264635430(0, 0, v147, &unk_2647907A0, v148);

        sub_264655900(v141, v142);

        sub_26460CD50(v140, &qword_27FF75CE8, &unk_264788B70);
        return v92;
      }

      v144 = v188;
      v145 = v188 >> 32;
    }

    if (v144 != v145)
    {
      goto LABEL_31;
    }

LABEL_29:
    sub_264655900(v188, v187);
    goto LABEL_30;
  }

  sub_26460CD50(v185, &qword_27FF75CE8, &unk_264788B70);

  sub_264655900(v188, v187);

  return v92;
}

uint64_t _s15SafetyMonitorUI24UserSessionConfigurationC07workoutE2ID0G12ActivityType0geJ0AC10Foundation4UUIDVSg_So09HKWorkoutiJ0VSo0meJ0VtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v124 = a2;
  v125 = a3;
  v123 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v121 = *(v4 - 8);
  v122 = v4;
  v5 = *(v121 + 64);
  MEMORY[0x28223BE20](v4);
  v120 = &v93 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v118 = *(v129 - 8);
  v7 = *(v118 + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v10 = *(v9 - 8);
  v130 = v9;
  v131 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v127 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v116 = *(v13 - 8);
  v117 = v13;
  v14 = *(v116 + 64);
  MEMORY[0x28223BE20](v13);
  v115 = &v93 - v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v112 = *(v113 - 8);
  v16 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v93 - v17;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v109 = *(v110 - 8);
  v18 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v93 - v19;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v106 = *(v107 - 8);
  v20 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v93 - v21;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v103 = *(v104 - 8);
  v22 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v93 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v100 = *(v101 - 8);
  v24 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v93 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v97 = *(v98 - 8);
  v26 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v93 - v27;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v28 = *(v95 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v95);
  v31 = &v93 - v30;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v32 = *(v93 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v93);
  v35 = &v93 - v34;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v36 = *(*(v94 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v94);
  v126 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v93 - v40;
  MEMORY[0x28223BE20](v39);
  v119 = &v93 - v42;
  sub_264720BE8(a1, &v93 - v42);
  v43 = type metadata accessor for UserSessionConfiguration();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  *(v46 + 16) = [objc_opt_self() defaultManager];
  v47 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v48 = sub_264783B64();
  v49 = *(*(v48 - 8) + 56);
  v49(v46 + v47, 1, 1, v48);
  v50 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v132 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v32 + 32))(v46 + v50, v35, v93);
  v51 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v132) = 0;
  sub_264783E94();
  (*(v28 + 32))(v46 + v51, v31, v95);
  v52 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v132 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v53 = v96;
  sub_264783E94();
  (*(v97 + 32))(v46 + v52, v53, v98);
  v54 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v49(v41, 1, 1, v48);
  v114 = v41;
  sub_264720BE8(v41, v126);
  v55 = v99;
  sub_264783E94();
  sub_26460CD50(v41, &qword_27FF75CE8, &unk_264788B70);
  (*(v100 + 32))(v46 + v54, v55, v101);
  v56 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v132 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v57 = v102;
  sub_264783E94();
  (*(v103 + 32))(v46 + v56, v57, v104);
  v58 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v132 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v59 = v105;
  sub_264783E94();
  (*(v106 + 32))(v46 + v58, v59, v107);
  v60 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v132) = 0;
  v61 = v108;
  sub_264783E94();
  (*(v109 + 32))(v46 + v60, v61, v110);
  v62 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v132 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v63 = v111;
  sub_264783E94();
  (*(v112 + 32))(v46 + v62, v63, v113);
  v64 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v132) = 0;
  v65 = v115;
  sub_264783E94();
  (*(v116 + 32))(v46 + v64, v65, v117);
  v66 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v132 = 0x40AC200000000000;
  v67 = v127;
  sub_264783E94();
  v68 = *(v131 + 32);
  v131 += 32;
  v117 = v68;
  v68(v46 + v66, v67, v130);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v132 = 0;
  v133 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v70 = v128;
  sub_264783E94();
  v71 = *(v118 + 32);
  v72 = v129;
  v71(v46 + v69, v70, v129);
  v73 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v132 = 0;
  v133 = 1;
  sub_264783E94();
  v71(v46 + v73, v70, v72);
  v74 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v132 = 0;
  v133 = 1;
  sub_264783E94();
  v71(v46 + v74, v70, v72);
  v75 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v132 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v76 = v120;
  sub_264783E94();
  v77 = v122;
  v78 = *(v121 + 32);
  v78(v46 + v75, v76, v122);
  v79 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v132 = 0;
  sub_264783E94();
  v78(v46 + v79, v76, v77);
  v80 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v132 = 0;
  sub_264783E94();
  v78(v46 + v80, v76, v77);
  v81 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v132 = 0;
  sub_264783E94();
  v78(v46 + v81, v76, v77);
  v82 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v132 = 0;
  v133 = 1;
  v83 = v128;
  sub_264783E94();
  v84 = v129;
  v71(v46 + v82, v83, v129);
  v85 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v132 = 0;
  v133 = 1;
  sub_264783E94();
  v71(v46 + v85, v83, v84);
  v86 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v132 = 0;
  v133 = 1;
  sub_264783E94();
  v71(v46 + v86, v83, v84);
  v87 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v132 = 0;
  v133 = 1;
  sub_264783E94();
  v71(v46 + v87, v83, v84);
  v88 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v132 = 0x40AC200000000000;
  v89 = v127;
  sub_264783E94();
  v117(v46 + v88, v89, v130);
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = 4;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = 4;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v132) = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = 0x40AC200000000000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = 0;

  sub_264783EE4();
  v90 = v119;
  v91 = v114;
  sub_264720BE8(v119, v114);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v91, v126);

  sub_264783EE4();
  sub_26460CD50(v91, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = v124;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = v125;

  sub_264783EE4();
  sub_26460CD50(v123, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CD50(v90, &qword_27FF75CE8, &unk_264788B70);
  return v46;
}

uint64_t _s15SafetyMonitorUI24UserSessionConfigurationC4withACSo16RTPlaceInferenceC_tcfC_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v152 = &v152 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v185 = *(v5 - 8);
  v186 = v5;
  v6 = *(v185 + 64);
  MEMORY[0x28223BE20](v5);
  v184 = &v152 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v188 = *(v8 - 8);
  v189 = v8;
  v9 = *(v188 + 8);
  MEMORY[0x28223BE20](v8);
  v187 = &v152 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v12 = *(v11 - 8);
  v194 = v11;
  v195 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v190 = &v152 - v14;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v182 = *(v183 - 1);
  v15 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v181 = &v152 - v16;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v179 = *(v180 - 8);
  v17 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v178 = &v152 - v18;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v176 = *(v177 - 8);
  v19 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v175 = &v152 - v20;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v173 = *(v174 - 8);
  v21 = *(v173 + 64);
  MEMORY[0x28223BE20](v174);
  v172 = &v152 - v22;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v170 = *(v171 - 8);
  v23 = *(v170 + 64);
  MEMORY[0x28223BE20](v171);
  v169 = &v152 - v24;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v166 = *(v167 - 8);
  v25 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v165 = &v152 - v26;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v162 = *(v163 - 8);
  v27 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v161 = &v152 - v28;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v158 = *(v160 - 8);
  v29 = *(v158 + 64);
  MEMORY[0x28223BE20](v160);
  v157 = &v152 - v30;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v155 = *(v156 - 8);
  v31 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v154 = &v152 - v32;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v33 = *(*(v159 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v159);
  v192 = &v152 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v191 = &v152 - v37;
  MEMORY[0x28223BE20](v36);
  v193 = &v152 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v152 - v41;
  v43 = sub_264783AF4();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = MEMORY[0x28223BE20](v43);
  v153 = &v152 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v164 = &v152 - v48;
  v49 = sub_264783E24();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v152 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v54 = a1;
  v55 = sub_264783E14();
  v56 = sub_2647859F4();

  v57 = os_log_type_enabled(v55, v56);
  v196 = v54;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138739971;
    *(v58 + 4) = v196;
    *v59 = v196;
    v60 = v196;
    _os_log_impl(&dword_264605000, v55, v56, "#Initiator, UserSessionConfiguration, initWithPlaceInference - Initializing with RTPlaceInference: %{sensitive}@", v58, 0xCu);
    sub_26460CD50(v59, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v59, -1, -1);
    v61 = v58;
    v54 = v196;
    MEMORY[0x266740650](v61, -1, -1);
  }

  (*(v50 + 8))(v53, v49);
  v168 = [objc_opt_self() convertPlaceTypeToDestinationType_];
  v62 = [v54 referenceLocation];
  [v62 latitude];
  v64 = v63;

  v65 = [v54 referenceLocation];
  [v65 longitude];
  v67 = v66;

  v68 = [v54 referenceLocation];
  [v68 altitude];
  v70 = v69;

  v71 = [v54 referenceLocation];
  [v71 horizontalUncertainty];
  v73 = v72;

  v74 = [v54 referenceLocation];
  [v74 horizontalUncertainty];
  v76 = v75;

  v77 = [v54 referenceLocation];
  v78 = [v77 date];

  if (v78)
  {
    v79 = v153;
    sub_264783AC4();

    v80 = *(v44 + 32);
    v80(v42, v79, v43);
    (*(v44 + 56))(v42, 0, 1, v43);
    v81 = v164;
    v80(v164, v42, v43);
  }

  else
  {
    (*(v44 + 56))(v42, 1, 1, v43);
    v82 = [objc_opt_self() distantPast];
    v81 = v164;
    sub_264783AC4();

    if ((*(v44 + 48))(v42, 1, v43) != 1)
    {
      sub_26460CD50(v42, &qword_27FF756B8, &qword_26478AC90);
    }
  }

  v83 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v84 = sub_264783A64();
  v164 = [v83 initWithCoordinate:v84 altitude:v64 horizontalAccuracy:v67 verticalAccuracy:v70 timestamp:{v73, v76}];

  (*(v44 + 8))(v81, v43);
  v85 = sub_264783B64();
  v86 = *(*(v85 - 8) + 56);
  v86(v193, 1, 1, v85);
  v87 = type metadata accessor for UserSessionConfiguration();
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  v90 = swift_allocObject();
  *(v90 + 16) = [objc_opt_self() defaultManager];
  v86(v90 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID, 1, 1, v85);
  v91 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v197 = 2;
  type metadata accessor for SMSessionType(0);
  v92 = v154;
  sub_264783E94();
  (*(v155 + 32))(v90 + v91, v92, v156);
  v93 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v197) = 0;
  v94 = v157;
  sub_264783E94();
  (*(v158 + 32))(v90 + v93, v94, v160);
  v95 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v197 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v96 = v161;
  sub_264783E94();
  (*(v162 + 32))(v90 + v95, v96, v163);
  v97 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v98 = v191;
  v86(v191, 1, 1, v85);
  sub_264720BE8(v98, v192);
  v99 = v165;
  sub_264783E94();
  sub_26460CD50(v98, &qword_27FF75CE8, &unk_264788B70);
  (*(v166 + 32))(v90 + v97, v99, v167);
  v100 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v197 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v101 = v169;
  sub_264783E94();
  (*(v170 + 32))(v90 + v100, v101, v171);
  v102 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v197 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v103 = v172;
  sub_264783E94();
  (*(v173 + 32))(v90 + v102, v103, v174);
  v104 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v197) = 0;
  v105 = v175;
  sub_264783E94();
  (*(v176 + 32))(v90 + v104, v105, v177);
  v106 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v197 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v107 = v178;
  sub_264783E94();
  (*(v179 + 32))(v90 + v106, v107, v180);
  v108 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v197) = 0;
  v109 = v181;
  sub_264783E94();
  (*(v182 + 32))(v90 + v108, v109, v183);
  v110 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v197 = 0x40AC200000000000;
  v111 = v190;
  sub_264783E94();
  v112 = *(v195 + 32);
  v195 += 32;
  v183 = v112;
  v112(v90 + v110, v111, v194);
  v113 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v197 = 0;
  v198 = 1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v115 = v187;
  sub_264783E94();
  v116 = v189;
  v117 = *(v188 + 4);
  v117(v90 + v113, v115, v189);
  v118 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v197 = 0;
  v198 = 1;
  v182 = v114;
  sub_264783E94();
  v117(v90 + v118, v115, v116);
  v188 = v117;
  v119 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v197 = 0;
  v198 = 1;
  sub_264783E94();
  v117(v90 + v119, v115, v116);
  v120 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v197 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v121 = v184;
  sub_264783E94();
  v122 = v186;
  v123 = *(v185 + 32);
  v123(v90 + v120, v121, v186);
  v124 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v197 = 0;
  sub_264783E94();
  v123(v90 + v124, v121, v122);
  v125 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v197 = 0;
  sub_264783E94();
  v123(v90 + v125, v121, v122);
  v126 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v197 = 0;
  sub_264783E94();
  v123(v90 + v126, v121, v122);
  v127 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v197 = 0;
  v198 = 1;
  sub_264783E94();
  v128 = v188;
  v188(v90 + v127, v115, v116);
  v129 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v197 = 0;
  v198 = 1;
  sub_264783E94();
  v128(v90 + v129, v115, v116);
  v130 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v197 = 0;
  v198 = 1;
  sub_264783E94();
  v128(v90 + v130, v115, v116);
  v131 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v197 = 0;
  v198 = 1;
  sub_264783E94();
  v128(v90 + v131, v115, v116);
  v132 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v197 = 0x40AC200000000000;
  v133 = v190;
  sub_264783E94();
  v183(v90 + v132, v133, v194);
  swift_getKeyPath();
  swift_getKeyPath();
  v197 = 2;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v197 = v168;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v197) = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v197 = 0x40AC200000000000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v197 = 0;

  sub_264783EE4();
  v134 = v193;
  v135 = v191;
  sub_264720BE8(v193, v191);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v135, v192);

  sub_264783EE4();
  sub_26460CD50(v135, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v197 = 3000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v197 = 0;

  sub_264783EE4();
  sub_26460CD50(v134, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4();

  if (v197 == 2)
  {
    v136 = v164;
    v137 = v196;
    v138 = [v196 mapItem];
    if (!v138 || (v139 = v138, v140 = [v138 geoMapItemHandle], v139, !v140))
    {
      v141 = 0;
      v143 = 0xF000000000000000;
      v145 = v136;
      goto LABEL_21;
    }

    v141 = sub_264783A14();
    v143 = v142;

    v144 = v143 >> 62;
    if ((v143 >> 62) > 1)
    {
      v145 = v136;
      if (v144 != 2)
      {
        goto LABEL_20;
      }

      v146 = *(v141 + 16);
      v147 = *(v141 + 24);
    }

    else
    {
      if (!v144)
      {
        v145 = v136;
        if ((v143 & 0xFF000000000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_21:
        v148 = sub_2647858E4();
        v149 = v152;
        (*(*(v148 - 8) + 56))(v152, 1, 1, v148);
        v150 = swift_allocObject();
        v150[2] = 0;
        v150[3] = 0;
        v150[4] = v141;
        v150[5] = v143;
        v150[6] = v145;
        v150[7] = v90;
        sub_264635430(0, 0, v149, &unk_264790770, v150);

        return v90;
      }

      v146 = v141;
      v147 = v141 >> 32;
      v145 = v136;
    }

    if (v146 != v147)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_264655264(v141, v143);
    v141 = 0;
    v143 = 0xF000000000000000;
    goto LABEL_21;
  }

  return v90;
}

uint64_t sub_26471FB50(uint64_t a1)
{
  v121 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v119 = *(v1 - 8);
  v120 = v1;
  v2 = *(v119 + 64);
  MEMORY[0x28223BE20](v1);
  v118 = &v91 - v3;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v116 = *(v125 - 8);
  v4 = *(v116 + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v91 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v7 = *(v6 - 8);
  v126 = v6;
  v127 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v123 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v10);
  v113 = &v91 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v110 = *(v13 - 8);
  v111 = v13;
  v14 = *(v110 + 64);
  MEMORY[0x28223BE20](v13);
  v109 = &v91 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v107 = *(v108 - 8);
  v16 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v91 - v17;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v104 = *(v105 - 8);
  v18 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v91 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v101 = *(v102 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v91 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v98 = *(v99 - 8);
  v22 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v91 - v23;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v95 = *(v96 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v91 - v25;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v26 = *(v93 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v93);
  v29 = &v91 - v28;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v30 = *(v91 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v91);
  v33 = &v91 - v32;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v34 = *(*(v92 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v92);
  v122 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v91 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v91 - v40;
  v117 = &v91 - v40;
  v42 = sub_264783B64();
  v43 = *(*(v42 - 8) + 56);
  v43(v41, 1, 1, v42);
  v44 = type metadata accessor for UserSessionConfiguration();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  *(v47 + 16) = [objc_opt_self() defaultManager];
  v43((v47 + OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID), 1, 1, v42);
  v48 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v128 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v30 + 32))(v47 + v48, v33, v91);
  v49 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v128) = 0;
  sub_264783E94();
  (*(v26 + 32))(v47 + v49, v29, v93);
  v50 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v128 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v51 = v94;
  sub_264783E94();
  (*(v95 + 32))(v47 + v50, v51, v96);
  v52 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v43(v39, 1, 1, v42);
  v112 = v39;
  sub_264720BE8(v39, v122);
  v53 = v97;
  sub_264783E94();
  sub_26460CD50(v39, &qword_27FF75CE8, &unk_264788B70);
  (*(v98 + 32))(v47 + v52, v53, v99);
  v54 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v128 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v55 = v100;
  sub_264783E94();
  (*(v101 + 32))(v47 + v54, v55, v102);
  v56 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v128 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v57 = v103;
  sub_264783E94();
  (*(v104 + 32))(v47 + v56, v57, v105);
  v58 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v128) = 0;
  v59 = v106;
  sub_264783E94();
  (*(v107 + 32))(v47 + v58, v59, v108);
  v60 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v128 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v61 = v109;
  sub_264783E94();
  (*(v110 + 32))(v47 + v60, v61, v111);
  v62 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v128) = 0;
  v63 = v113;
  sub_264783E94();
  (*(v114 + 32))(v47 + v62, v63, v115);
  v64 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v128 = 0x40AC200000000000;
  v65 = v123;
  sub_264783E94();
  v66 = *(v127 + 32);
  v127 += 32;
  v115 = v66;
  v66(v47 + v64, v65, v126);
  v67 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v128 = 0;
  v129 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v68 = v124;
  sub_264783E94();
  v69 = *(v116 + 32);
  v70 = v125;
  v69(v47 + v67, v68, v125);
  v71 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v128 = 0;
  v129 = 1;
  sub_264783E94();
  v69(v47 + v71, v68, v70);
  v72 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v128 = 0;
  v129 = 1;
  sub_264783E94();
  v69(v47 + v72, v68, v70);
  v73 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v128 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v74 = v118;
  sub_264783E94();
  v75 = v120;
  v76 = *(v119 + 32);
  v76(v47 + v73, v74, v120);
  v77 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v128 = 0;
  sub_264783E94();
  v76(v47 + v77, v74, v75);
  v78 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v128 = 0;
  sub_264783E94();
  v76(v47 + v78, v74, v75);
  v79 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v128 = 0;
  sub_264783E94();
  v76(v47 + v79, v74, v75);
  v80 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v128 = 0;
  v129 = 1;
  v81 = v124;
  sub_264783E94();
  v82 = v125;
  v69(v47 + v80, v81, v125);
  v83 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v128 = 0;
  v129 = 1;
  sub_264783E94();
  v69(v47 + v83, v81, v82);
  v84 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v128 = 0;
  v129 = 1;
  sub_264783E94();
  v69(v47 + v84, v81, v82);
  v85 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v128 = 0;
  v129 = 1;
  sub_264783E94();
  v69(v47 + v85, v81, v82);
  v86 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v128 = 0x40AC200000000000;
  v87 = v123;
  sub_264783E94();
  v115(v47 + v86, v87, v126);
  swift_getKeyPath();
  swift_getKeyPath();
  v128 = v121;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v128 = 4;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v128) = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v128 = 0x40AC200000000000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v128 = 0;

  sub_264783EE4();
  v88 = v117;
  v89 = v112;
  sub_264720BE8(v117, v112);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v89, v122);

  sub_264783EE4();
  sub_26460CD50(v89, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v128 = 3000;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v128 = 0;

  sub_264783EE4();
  sub_26460CD50(v88, &qword_27FF75CE8, &unk_264788B70);
  return v47;
}

uint64_t sub_264720BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264720C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264720D48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264720D84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264611390;

  return sub_264714AE0(a1, v4, v5, v6);
}

uint64_t type metadata accessor for UserSessionConfiguration()
{
  result = qword_27FF785F0;
  if (!qword_27FF785F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264720E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_264720EF4(uint64_t a1)
{
  result = sub_264723EE4(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264720F4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  return sub_264720BE8(v3 + v4, a2);
}

void sub_26472145C()
{
  sub_2647233E8(319, &qword_27FF75DE0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v28 = *(v0 - 8) + 64;
    sub_2647233E8(319, &qword_27FF78600, type metadata accessor for SMSessionType, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v29 = *(v2 - 8) + 64;
      sub_264656F60(319, &qword_27FF75E18);
      if (v5 <= 0x3F)
      {
        v30 = *(v4 - 8) + 64;
        sub_264656F0C(319, &qword_27FF75E20, &qword_27FF75C80, &qword_264788A78);
        if (v7 <= 0x3F)
        {
          v31 = *(v6 - 8) + 64;
          sub_264656F0C(319, &qword_27FF78608, &qword_27FF75CE8, &unk_264788B70);
          if (v9 <= 0x3F)
          {
            v32 = *(v8 - 8) + 64;
            sub_2647233E8(319, &qword_27FF78610, type metadata accessor for HKWorkoutActivityType, MEMORY[0x277CBCED0]);
            if (v11 <= 0x3F)
            {
              v33 = *(v10 - 8) + 64;
              sub_2647233E8(319, &qword_27FF78618, type metadata accessor for HKWorkoutSessionType, MEMORY[0x277CBCED0]);
              if (v13 <= 0x3F)
              {
                v34 = *(v12 - 8) + 64;
                sub_264656F60(319, &qword_27FF77790);
                if (v15 <= 0x3F)
                {
                  v35 = *(v14 - 8) + 64;
                  sub_2647233E8(319, &qword_27FF77788, type metadata accessor for SMSessionDestinationType, MEMORY[0x277CBCED0]);
                  if (v17 <= 0x3F)
                  {
                    v36 = *(v16 - 8) + 64;
                    sub_264656F60(319, &qword_27FF78620);
                    if (v19 <= 0x3F)
                    {
                      v37 = *(v18 - 8) + 64;
                      sub_264656F60(319, &qword_27FF75E38);
                      if (v21 <= 0x3F)
                      {
                        v22 = *(v20 - 8) + 64;
                        sub_264656F0C(319, &qword_27FF78628, &qword_27FF77F78, &qword_26478F340);
                        if (v24 <= 0x3F)
                        {
                          v25 = *(v23 - 8) + 64;
                          sub_264656F0C(319, &qword_27FF78630, &qword_27FF78568, &qword_26478FF98);
                          if (v27 <= 0x3F)
                          {
                            v38 = *(v26 - 8) + 64;
                            swift_updateClassMetadata2();
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

void sub_2647233E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264723474()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_264723544(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_264719B88(a1, a2, v6, v7);
}

uint64_t sub_2647235D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26460F764;

  return sub_264715088(a1, v5, v4);
}

uint64_t sub_264723680(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264611390;

  return sub_264715128(a1, v5, v4);
}

uint64_t sub_26472372C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264611390;

  return sub_2647151C8(a1, v5, v4);
}

uint64_t sub_2647237D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26460F764;

  return sub_264714AE0(a1, v4, v5, v6);
}

uint64_t sub_264723890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_264611390;

  return sub_26470A9AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_264723970()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_264723A54(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_264718474(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_264723B14(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_264611390;

  return sub_2647190F8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_265Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264723D04(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78640, &unk_264790710) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_264611390;

  return sub_264718F54(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_251Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  if (v2 >> 60 != 15)
  {
    sub_264655264(*(v0 + 32), v2);
  }

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_264723E74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264723EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_264723F40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_264723F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264724058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264783AF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264724138(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264783AF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for TimerInfoView()
{
  result = qword_27FF78648;
  if (!qword_27FF78648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26472423C()
{
  result = sub_264783AF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2647242D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v29 = sub_264784AA4();
  v27 = *(v29 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78658, &qword_264790858);
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v26 - v8;
  v10 = sub_264783A64();
  v11 = [v10 absoluteTimeString:0 preposition:0 capitalized:0];

  v12 = sub_264785724();
  v14 = v13;

  v15 = type metadata accessor for TimerInfoView();
  v16 = *(v15 + 20);
  if (*(v2 + *(v15 + 24)) == 1)
  {
    v17 = sub_264783A64();
    v18 = [v17 absoluteTimeString:0 preposition:0 capitalized:0];

    v19 = sub_264785724();
    v21 = v20;
  }

  else
  {
    v22 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
    v19 = v22;
    v21 = v23;
  }

  MEMORY[0x28223BE20](v22);
  *(&v26 - 6) = v12;
  *(&v26 - 5) = v14;
  *(&v26 - 4) = v2;
  *(&v26 - 3) = v19;
  *(&v26 - 2) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78660, &qword_264790860);
  sub_2647252CC();
  sub_264785464();

  sub_264784A94();
  sub_264725330();
  v24 = v26;
  sub_264784FF4();
  (*(v27 + 8))(v5, v29);
  return (*(v6 + 8))(v9, v24);
}

uint64_t sub_2647245B0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_2647845C4();
  sub_26472492C(&v49);
  v33 = *&v50[16];
  v34 = *&v50[32];
  v31 = v49;
  v32 = *v50;
  v36[2] = *&v50[16];
  v36[3] = *&v50[32];
  v36[4] = *&v50[48];
  v36[1] = *v50;
  v35 = *&v50[48];
  v36[0] = v49;
  sub_26460CCE8(&v31, &v47, &qword_27FF78678, &qword_264792450);
  sub_26460CD50(v36, &qword_27FF78678, &qword_264792450);
  *&v30[23] = v32;
  *&v30[39] = v33;
  *&v30[55] = v34;
  *&v30[71] = v35;
  *&v30[7] = v31;
  v5 = sub_2647845C4();
  LOBYTE(v17[0]) = 1;
  sub_264724CC4(a1, &v49);
  v39 = *&v50[16];
  v40 = *&v50[32];
  v41 = *&v50[48];
  v42 = *&v50[64];
  v37 = v49;
  v38 = *v50;
  v44 = *&v50[64];
  v43[2] = *&v50[16];
  v43[3] = *&v50[32];
  v43[4] = *&v50[48];
  v43[0] = v49;
  v43[1] = *v50;
  sub_26460CCE8(&v37, &v47, &qword_27FF78680, &qword_264790868);
  sub_26460CD50(v43, &qword_27FF78680, &qword_264790868);
  *(&v29[2] + 7) = v39;
  *(&v29[3] + 7) = v40;
  *(&v29[4] + 7) = v41;
  *(&v29[5] + 7) = v42;
  *(v29 + 7) = v37;
  *(&v29[1] + 7) = v38;
  v45[0] = v4;
  v45[1] = 0;
  v46[0] = 1;
  *&v46[1] = *v30;
  *&v46[17] = *&v30[16];
  *&v46[80] = *&v30[79];
  *&v46[65] = *&v30[64];
  *&v46[49] = *&v30[48];
  *&v46[33] = *&v30[32];
  *&v23[31] = v4;
  *&v23[47] = *v46;
  v26 = *&v46[48];
  v27 = *&v46[64];
  v24 = *&v46[16];
  v25 = *&v46[32];
  v47 = v5;
  v48[0] = 1;
  *&v48[1] = v29[0];
  v6 = v29[0];
  v7 = v29[1];
  *&v48[17] = v29[1];
  *&v48[80] = *(&v29[4] + 15);
  v8 = v29[3];
  *&v48[65] = v29[4];
  v9 = v29[2];
  *&v48[49] = v29[3];
  *&v48[33] = v29[2];
  *&v28[40] = *&v48[16];
  *&v28[24] = *v48;
  *&v28[8] = v5;
  *&v28[104] = *&v48[80];
  *&v28[88] = *&v48[64];
  *v28 = *&v46[80];
  *&v28[72] = *&v48[48];
  *&v28[56] = *&v48[32];
  v10 = *v46;
  *a2 = v4;
  *(a2 + 16) = v10;
  v11 = v27;
  *(a2 + 64) = v26;
  *(a2 + 80) = v11;
  v12 = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v12;
  v13 = *&v28[48];
  *(a2 + 128) = *&v28[32];
  *(a2 + 144) = v13;
  v14 = *&v28[16];
  *(a2 + 96) = *v28;
  *(a2 + 112) = v14;
  v15 = *&v28[96];
  *(a2 + 176) = *&v28[80];
  *(a2 + 192) = v15;
  *(a2 + 160) = *&v28[64];
  *(a2 + 208) = *&v28[112];
  v49 = v5;
  v50[0] = 1;
  *&v50[33] = v9;
  *&v50[49] = v8;
  *&v50[65] = v29[4];
  *&v50[80] = *(&v29[4] + 15);
  *&v50[1] = v6;
  *&v50[17] = v7;
  sub_26460CCE8(v45, v17, &qword_27FF78688, &qword_264790870);
  sub_26460CCE8(&v47, v17, &qword_27FF78690, &qword_264790878);
  sub_26460CD50(&v49, &qword_27FF78690, &qword_264790878);
  v21 = *&v30[32];
  v22 = *&v30[48];
  *v23 = *&v30[64];
  v19 = *v30;
  v17[0] = v4;
  v17[1] = 0;
  v18 = 1;
  *&v23[15] = *&v30[79];
  v20 = *&v30[16];
  return sub_26460CD50(v17, &qword_27FF78688, &qword_264790870);
}

uint64_t sub_26472492C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264613FC4();
  v8 = sub_264784E44();
  v10 = v9;
  LOBYTE(ObjCClassFromMetadata) = v11;
  sub_264784CC4();
  v12 = sub_264784E24();
  v14 = v13;
  v16 = v15;

  sub_26460ECC4(v8, v10, ObjCClassFromMetadata & 1);

  sub_264785204();
  v17 = sub_264784DE4();
  v39 = v18;
  v40 = v17;
  v38 = v19;
  v41 = v20;

  sub_26460ECC4(v12, v14, v16 & 1);

  v21 = sub_264784E44();
  v23 = v22;
  v25 = v24;
  sub_264784CC4();
  v26 = sub_264784E24();
  v28 = v27;
  LOBYTE(v10) = v29;

  sub_26460ECC4(v21, v23, v25 & 1);

  sub_264785214();
  v30 = sub_264784DE4();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_26460ECC4(v26, v28, v10 & 1);

  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v38 & 1;
  *(a1 + 24) = v41;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v30;
  *(a1 + 56) = v32;
  *(a1 + 64) = v34 & 1;
  *(a1 + 72) = v36;
  sub_26460C474(v40, v39, v38 & 1);

  sub_26460C474(v30, v32, v34 & 1);

  sub_26460ECC4(v30, v32, v34 & 1);

  sub_26460ECC4(v40, v39, v38 & 1);
}

uint64_t sub_264724CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_264783B94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_264785704();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  if (*(a1 + *(type metadata accessor for TimerInfoView() + 24)) == 1)
  {
    sub_264785694();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v51 = sub_264785744();
    *(&v51 + 1) = v9;
    sub_264613FC4();
    v10 = sub_264784E44();
    v12 = v11;
    LOBYTE(ObjCClassFromMetadata) = v13;
    sub_264784CC4();
    v14 = sub_264784E24();
    v16 = v15;
    v18 = v17;

    sub_26460ECC4(v10, v12, ObjCClassFromMetadata & 1);

    sub_264785204();
    sub_264784DE4();

    sub_26460ECC4(v14, v16, v18 & 1);
  }

  else
  {
    sub_264785694();
    sub_26460EC78();
    v19 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v51 = sub_264785754();
    *(&v51 + 1) = v21;
    sub_264613FC4();
    v22 = sub_264784E44();
    v24 = v23;
    v26 = v25;
    sub_264784CC4();
    v27 = sub_264784E24();
    v29 = v28;
    v31 = v30;

    sub_26460ECC4(v22, v24, v26 & 1);

    sub_264785204();
    sub_264784DE4();

    sub_26460ECC4(v27, v29, v31 & 1);
  }

  sub_264784874();
  sub_2647253C0(v51, *(&v51 + 1), v52);
  sub_264613FC4();

  v32 = sub_264784E44();
  v34 = v33;
  v36 = v35;
  sub_264784CC4();
  v37 = sub_264784E24();
  v39 = v38;
  v41 = v40;

  sub_26460ECC4(v32, v34, v36 & 1);

  sub_264785214();
  v42 = sub_264784DE4();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  sub_26460ECC4(v37, v39, v41 & 1);

  sub_2647253C0(v51, *(&v51 + 1), v52);
  sub_26460C474(v42, v44, v46 & 1);

  sub_2647253FC(v51, *(&v51 + 1), v52);
  *a2 = v51;
  *(a2 + 16) = v52;
  *(a2 + 32) = v53;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v42;
  *(a2 + 64) = v44;
  *(a2 + 72) = v46 & 1;
  *(a2 + 80) = v48;
  sub_26460ECC4(v42, v44, v46 & 1);

  return sub_2647253FC(v51, *(&v51 + 1), v52);
}

uint64_t sub_2647252BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  return sub_2647245B0(v1[4], a1);
}

unint64_t sub_2647252CC()
{
  result = qword_27FF78668;
  if (!qword_27FF78668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78660, &qword_264790860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78668);
  }

  return result;
}

unint64_t sub_264725330()
{
  result = qword_27FF78670;
  if (!qword_27FF78670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78658, &qword_264790858);
    sub_2647252CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78670);
  }

  return result;
}

uint64_t sub_2647253C0(uint64_t a1, uint64_t a2, char a3)
{
  sub_26460C474(a1, a2, a3 & 1);
}

uint64_t sub_2647253FC(uint64_t a1, uint64_t a2, char a3)
{
  sub_26460ECC4(a1, a2, a3 & 1);
}

uint64_t sub_264725438()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78658, &qword_264790858);
  sub_264725330();
  return swift_getOpaqueTypeConformance2();
}

id PhoneCacheInfoViewModel.__allocating_init(contact:safetyCache:isTransparencyMode:)(void *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = v8;
  v10 = a2[3];
  v23 = a2[2];
  v24 = v10;
  v11 = a2[5];
  v25 = a2[4];
  v26 = v11;
  v12 = a2[1];
  v21 = *a2;
  v22 = v12;
  if (v21)
  {
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v8[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    swift_beginAccess();
    *&v9[v13] = a1;
    v14 = &v9[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v15 = v22;
    *v14 = v21;
    v14[1] = v15;
    v16 = v26;
    v18 = v23;
    v17 = v24;
    v14[4] = v25;
    v14[5] = v16;
    v14[2] = v18;
    v14[3] = v17;
    v9[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = a3 & 1;
    v20.receiver = v9;
    v20.super_class = type metadata accessor for DeviceCacheInfoViewModel();
    return objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {

    sub_26472579C(&v21);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id WatchCacheInfoViewModel.__allocating_init(contact:safetyCache:isTransparencyMode:)(void *a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = v8;
  v10 = a2[3];
  v23 = a2[2];
  v24 = v10;
  v11 = a2[5];
  v25 = a2[4];
  v26 = v11;
  v12 = a2[1];
  v21 = *a2;
  v22 = v12;
  if (*(&v21 + 1))
  {
    v13 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v8[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    swift_beginAccess();
    *&v9[v13] = a1;
    v14 = &v9[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v15 = v22;
    *v14 = v21;
    v14[1] = v15;
    v16 = v26;
    v18 = v23;
    v17 = v24;
    v14[4] = v25;
    v14[5] = v16;
    v14[2] = v18;
    v14[3] = v17;
    v9[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = a3 & 1;
    v20.receiver = v9;
    v20.super_class = type metadata accessor for DeviceCacheInfoViewModel();
    return objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {

    sub_26472579C(&v21);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id PhoneCacheInfoViewModel.init(contact:safetyCache:isTransparencyMode:)(void *a1, __int128 *a2, char a3)
{
  v5 = a2[3];
  v18 = a2[2];
  v19 = v5;
  v6 = a2[5];
  v20 = a2[4];
  v21 = v6;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  if (v16)
  {
    v9 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    swift_beginAccess();
    *&v3[v9] = a1;
    v10 = &v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v11 = v19;
    v10[2] = v18;
    v10[3] = v11;
    v12 = v21;
    v10[4] = v20;
    v10[5] = v12;
    v13 = v17;
    *v10 = v16;
    v10[1] = v13;
    v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = a3 & 1;
    v15.receiver = v3;
    v15.super_class = type metadata accessor for DeviceCacheInfoViewModel();
    return objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    sub_26472579C(&v16);
    type metadata accessor for PhoneCacheInfoViewModel();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void *sub_264725814()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

BOOL sub_264725860()
{
  v1 = v0 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache;
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

uint64_t sub_2647258B0()
{
  v1 = sub_264783AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache;
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 date];
  sub_264783AC4();

  v9 = sub_264783A64();
  v10 = [v9 preciseFormattedTime];

  v11 = sub_264785724();
  (*(v2 + 8))(v5, v1);
  return v11;
}

id sub_264725A54(SEL *a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  v4 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = [v3 *a1];

  return v5;
}

void *sub_264725AE0()
{
  v1 = v0;
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2647856E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_264783E24();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264783AF4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v65 = &v59 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v59 - v24;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x88))(v23);
  if (!result)
  {
    return result;
  }

  v60 = v11;
  v61 = v5;
  v27 = result;
  v28 = [result date];

  sub_264783AC4();
  v29 = v15;
  v30 = *(v15 + 32);
  (v30)(v25, v22, v14);
  v31 = &v1[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
  swift_beginAccess();
  v32 = *(v31 + 5);
  v33 = v14;
  if (!v32)
  {
LABEL_7:
    sub_2647856D4();
    sub_2647856C4();
    v53 = sub_264783A64();
    v54 = [v53 preciseFormattedTime];

    sub_264785724();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v56 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v57 = sub_264785754();
    (*(v29 + 8))(v25, v33);
    return v57;
  }

  v34 = v29;
  v35 = [v32 date];
  sub_264783AC4();

  v36 = v65;
  v30();
  sub_264783A44();
  v38 = v25;
  if (fabs(v37) >= 300.0)
  {
    v29 = v34;
    (*(v34 + 8))(v36, v33);
    goto LABEL_7;
  }

  v64 = v33;
  v39 = v62;
  sub_264783E04();
  v40 = v1;
  v41 = sub_264783E14();
  v42 = sub_2647859F4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v66[0] = v61;
    *v43 = 136315394;
    v44 = v40;
    v45 = [v44 description];
    v46 = sub_264785724();
    v48 = v47;

    v49 = sub_2646DF234(v46, v48, v66);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_2646DF234(0xD000000000000011, 0x80000002647998B0, v66);
    _os_log_impl(&dword_264605000, v41, v42, "%s, %s: No last updated string because we are within 5 mins of last location update", v43, 0x16u);
    v50 = v61;
    swift_arrayDestroy();
    MEMORY[0x266740650](v50, -1, -1);
    MEMORY[0x266740650](v43, -1, -1);

    (*(v63 + 8))(v39, v60);
    v51 = *(v34 + 8);
    v52 = v65;
  }

  else
  {

    (*(v63 + 8))(v39, v60);
    v51 = *(v34 + 8);
    v52 = v36;
  }

  v58 = v64;
  v51(v52, v64);
  v51(v38, v58);
  return 0;
}

void *sub_2647261A4()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2647261F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2647262A8@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache);
  swift_beginAccess();
  v4 = v3[2];
  v6 = v3[4];
  v7 = v3[5];
  v13 = v3[3];
  v5 = v13;
  v14 = v6;
  v15 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  *a1 = v8;
  a1[1] = v9;
  return sub_26467A834(v12, v11);
}

uint64_t sub_264726330(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache);
  swift_beginAccess();
  v4 = v3[3];
  v11[2] = v3[2];
  v11[3] = v4;
  v5 = v3[5];
  v11[4] = v3[4];
  v11[5] = v5;
  v6 = v3[1];
  v11[0] = *v3;
  v11[1] = v6;
  v7 = a1[3];
  v3[2] = a1[2];
  v3[3] = v7;
  v8 = a1[5];
  v3[4] = a1[4];
  v3[5] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  return sub_26472579C(v11);
}

uint64_t sub_264726410()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_264726454(char a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_264726504(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B0, &qword_264790880);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B8, &qword_264790888);
  v7 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = &v50 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C0, &qword_264790890);
  v9 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v58 = &v50 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C8, &qword_264790898);
  v11 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D0, &qword_2647908A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v63 = &v50 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D8, &qword_2647908A8);
  v16 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786E0, &qword_2647908B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v64 = &v50 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786E8, &qword_2647908B8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  type metadata accessor for WatchCacheInfoViewModel();
  v26 = swift_dynamicCastClass();
  v65 = v19;
  if (v26)
  {
    v27 = v1;
    if (sub_264728B2C())
    {
      swift_storeEnumTagMultiPayload();
      sub_26472966C();
      sub_264784874();

      return;
    }
  }

  v28 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  if (v28)
  {
    v29 = v28;
    v30 = [v28 cellularStrength];

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v44 = sub_264785264();
        v53 = v44;
        v45 = sub_264784D44();
        v50 = v45;
        KeyPath = swift_getKeyPath();
        v68 = v44;
        v69 = KeyPath;
        v70 = v45;
        v46 = sub_264729B44(2);
        v51 = v47;
        v66 = v46;
        v67 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
        sub_26466D5C8();
        v54 = v6;
        v55 = a1;
        sub_264613FC4();
        sub_264784FC4();

        sub_26460CCE8(v18, v58, &qword_27FF786D8, &qword_2647908A8);
        goto LABEL_16;
      }

      if (v30 == 4)
      {
        v35 = sub_264785264();
        v53 = v35;
        v36 = sub_264784D44();
        v50 = v36;
        KeyPath = swift_getKeyPath();
        v68 = v35;
        v69 = KeyPath;
        v70 = v36;
        v37 = sub_264729B44(3);
        v51 = v38;
        v66 = v37;
        v67 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
        sub_26466D5C8();
        v54 = v6;
        v55 = a1;
        sub_264613FC4();
        sub_264784FC4();

        sub_26460CCE8(v18, v58, &qword_27FF786D8, &qword_2647908A8);
        goto LABEL_16;
      }
    }

    else
    {
      if (v30 == 1)
      {
        v40 = sub_264785264();
        v53 = v40;
        v41 = sub_264784D44();
        v50 = v41;
        KeyPath = swift_getKeyPath();
        v68 = v40;
        v69 = KeyPath;
        v70 = v41;
        v42 = sub_264729B44(0);
        v51 = v43;
        v66 = v42;
        v67 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
        sub_26466D5C8();
        v54 = v6;
        v55 = a1;
        sub_264613FC4();
        sub_264784FC4();

        sub_26460CCE8(v18, v58, &qword_27FF786D8, &qword_2647908A8);
        goto LABEL_16;
      }

      if (v30 == 2)
      {
        v31 = sub_264785264();
        v53 = v31;
        v32 = sub_264784D44();
        v50 = v32;
        KeyPath = swift_getKeyPath();
        v68 = v31;
        v69 = KeyPath;
        v70 = v32;
        v33 = sub_264729B44(1);
        v51 = v34;
        v66 = v33;
        v67 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
        sub_26466D5C8();
        v54 = v6;
        v55 = a1;
        sub_264613FC4();
        sub_264784FC4();

        sub_26460CCE8(v18, v58, &qword_27FF786D8, &qword_2647908A8);
LABEL_16:
        swift_storeEnumTagMultiPayload();
        sub_2647295E0();
        v48 = v61;
        sub_264784874();
        sub_26460CCE8(v48, v62, &qword_27FF786C8, &qword_264790898);
        swift_storeEnumTagMultiPayload();
        sub_264729534();
        v49 = v63;
        sub_264784874();
        sub_26460CD50(v48, &qword_27FF786C8, &qword_264790898);
        sub_26460CCE8(v49, v54, &qword_27FF786D0, &qword_2647908A0);
        swift_storeEnumTagMultiPayload();
        sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
        v39 = v64;
        sub_264784874();
        sub_26460CD50(v49, &qword_27FF786D0, &qword_2647908A0);
        sub_26460CD50(v18, &qword_27FF786D8, &qword_2647908A8);
        goto LABEL_17;
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
  v39 = v64;
  sub_264784874();
LABEL_17:
  sub_26460CCE8(v39, v25, &qword_27FF786E0, &qword_2647908B0);
  swift_storeEnumTagMultiPayload();
  sub_26472966C();
  sub_264784874();
  sub_26460CD50(v39, &qword_27FF786E0, &qword_2647908B0);
}

uint64_t sub_264726F80@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B0, &qword_264790880);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B8, &qword_264790888);
  v6 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v8 = &v46 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C0, &qword_264790890);
  v9 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v11 = &v46 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C8, &qword_264790898);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D0, &qword_2647908A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v55 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D8, &qword_2647908A8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  v23 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v20);
  if (!v23)
  {
    goto LABEL_9;
  }

  v54 = v2;
  v24 = v23;
  v25 = [v23 wifiStrength];

  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v42 = sub_264785264();
      v49 = v42;
      v43 = sub_264784D44();
      v47 = v43;
      KeyPath = swift_getKeyPath();
      v50 = v15;
      v48 = KeyPath;
      v59 = v42;
      v60 = KeyPath;
      v61 = v43;
      v29 = v22;
      v57 = sub_2647297D4(2);
      v58 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
      sub_26466D5C8();
      sub_264613FC4();
      sub_264784FC4();

      sub_26460CCE8(v22, v11, &qword_27FF786D8, &qword_2647908A8);
      swift_storeEnumTagMultiPayload();
      sub_2647295E0();
      sub_264784874();
      sub_26460CCE8(v14, v8, &qword_27FF786C8, &qword_264790898);
      goto LABEL_13;
    }

    if (v25 != 4)
    {
      goto LABEL_9;
    }

    v33 = sub_264785264();
    v49 = v33;
    v34 = sub_264784D44();
    v47 = v34;
    v35 = swift_getKeyPath();
    v50 = v15;
    v48 = v35;
    v59 = v33;
    v60 = v35;
    v61 = v34;
    v29 = v22;
    v57 = sub_2647297D4(3);
    v58 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26466D5C8();
    sub_264613FC4();
    sub_264784FC4();

    sub_26460CCE8(v22, v11, &qword_27FF786D8, &qword_2647908A8);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_2647295E0();
    sub_264784874();
    sub_26460CCE8(v14, v8, &qword_27FF786C8, &qword_264790898);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    sub_264729534();
    v31 = v55;
    sub_264784874();
    sub_26460CD50(v14, &qword_27FF786C8, &qword_264790898);
    v32 = v31;
    goto LABEL_14;
  }

  if (v25 == 1)
  {
    v38 = sub_264785264();
    v49 = v38;
    v39 = sub_264784D44();
    v47 = v39;
    v40 = swift_getKeyPath();
    v50 = v15;
    v48 = v40;
    v59 = v38;
    v60 = v40;
    v61 = v39;
    v29 = v22;
    v57 = sub_2647297D4(0);
    v58 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
    sub_26466D5C8();
    sub_264613FC4();
    sub_264784FC4();

    sub_26460CCE8(v22, v11, &qword_27FF786D8, &qword_2647908A8);
    goto LABEL_11;
  }

  if (v25 != 2)
  {
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
    return sub_264784874();
  }

  v26 = sub_264785264();
  v48 = v26;
  v27 = sub_264784D44();
  v47 = v27;
  v28 = swift_getKeyPath();
  v59 = v26;
  v60 = v28;
  v61 = v27;
  v29 = v22;
  v57 = sub_2647297D4(1);
  v58 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
  v50 = v15;
  sub_26466D5C8();
  v49 = v5;
  sub_264613FC4();
  sub_264784FC4();

  sub_26460CCE8(v22, v11, &qword_27FF786D8, &qword_2647908A8);
  swift_storeEnumTagMultiPayload();
  sub_2647295E0();
  sub_264784874();
  sub_26460CCE8(v14, v8, &qword_27FF786C8, &qword_264790898);
  swift_storeEnumTagMultiPayload();
  sub_264729534();
  v31 = v55;
  sub_264784874();
  sub_26460CD50(v14, &qword_27FF786C8, &qword_264790898);
  v32 = v31;
  v5 = v49;
LABEL_14:
  sub_26460CCE8(v32, v5, &qword_27FF786D0, &qword_2647908A0);
  swift_storeEnumTagMultiPayload();
  sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
  sub_264784874();
  sub_26460CD50(v31, &qword_27FF786D0, &qword_2647908A0);
  return sub_26460CD50(v29, &qword_27FF786D8, &qword_2647908A8);
}

uint64_t sub_2647278CC@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78710, &qword_264790900);
  v2 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v73 - v3;
  v4 = sub_264783E24();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v73 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78718, &qword_264790908);
  v10 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v75 = &v73 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78720, &qword_264790910);
  v12 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v76 = &v73 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78728, &qword_264790918);
  v14 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v83 = &v73 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786B8, &qword_264790888);
  v16 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v18 = &v73 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C0, &qword_264790890);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786C8, &qword_264790898);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v73 - v25;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D0, &qword_2647908A0);
  v27 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v73 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D8, &qword_2647908A8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v73 - v31;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78730, &qword_264790920);
  v33 = *(*(v86 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v86);
  v84 = &v73 - v35;
  v36 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v34);
  if (v36)
  {
    v37 = v36;
    v38 = [v36 batteryRemaining];

    if (v38 > 9 && v38 > 0x59)
    {
      if (v38 <= 0x64)
      {
        sub_26472868C(v38, v32);
        v69 = &qword_27FF786D8;
        v70 = &qword_2647908A8;
        sub_26460CCE8(v32, v75, &qword_27FF786D8, &qword_2647908A8);
        swift_storeEnumTagMultiPayload();
        sub_2647295E0();
        v71 = v76;
        sub_264784874();
        sub_26460CCE8(v71, v83, &qword_27FF78720, &qword_264790910);
        swift_storeEnumTagMultiPayload();
        sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
        sub_26472A52C(&qword_27FF78740, &qword_27FF78720, &qword_264790910, sub_2647295E0);
        v53 = v84;
        sub_264784874();
        sub_26460CD50(v71, &qword_27FF78720, &qword_264790910);
        v54 = v32;
      }

      else
      {
        v57 = v73;
        sub_264783E04();
        v58 = v1;
        v59 = sub_264783E14();
        v60 = sub_2647859E4();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v90 = v62;
          *v61 = 136315650;
          v63 = v58;
          v64 = [v63 description];
          v65 = sub_264785724();
          v67 = v66;

          v68 = sub_2646DF234(v65, v67, &v90);

          *(v61 + 4) = v68;
          *(v61 + 12) = 2080;
          *(v61 + 14) = sub_2646DF234(0xD000000000000014, 0x80000002647998D0, &v90);
          *(v61 + 22) = 2048;
          *(v61 + 24) = v38;
          _os_log_impl(&dword_264605000, v59, v60, "%s, %s: Battery level %ld is unexpected.", v61, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v62, -1, -1);
          MEMORY[0x266740650](v61, -1, -1);

          (*(v77 + 8))(v73, v78);
        }

        else
        {

          (*(v77 + 8))(v57, v78);
        }

        v53 = v84;
        swift_storeEnumTagMultiPayload();
        sub_2647295E0();
        v72 = v76;
        sub_264784874();
        v69 = &qword_27FF78720;
        v70 = &qword_264790910;
        sub_26460CCE8(v72, v83, &qword_27FF78720, &qword_264790910);
        swift_storeEnumTagMultiPayload();
        sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
        sub_26472A52C(&qword_27FF78740, &qword_27FF78720, &qword_264790910, sub_2647295E0);
        sub_264784874();
        v54 = v72;
      }

      v55 = v69;
      v56 = v70;
    }

    else
    {
      v51 = v32;
      sub_26472868C(v38, v32);
      sub_26460CCE8(v32, v22, &qword_27FF786D8, &qword_2647908A8);
      swift_storeEnumTagMultiPayload();
      sub_2647295E0();
      sub_264784874();
      sub_26460CCE8(v26, v18, &qword_27FF786C8, &qword_264790898);
      swift_storeEnumTagMultiPayload();
      sub_264729534();
      v52 = v80;
      sub_264784874();
      sub_26460CD50(v26, &qword_27FF786C8, &qword_264790898);
      sub_26460CCE8(v52, v83, &qword_27FF786D0, &qword_2647908A0);
      swift_storeEnumTagMultiPayload();
      sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
      sub_26472A52C(&qword_27FF78740, &qword_27FF78720, &qword_264790910, sub_2647295E0);
      v53 = v84;
      sub_264784874();
      sub_26460CD50(v52, &qword_27FF786D0, &qword_2647908A0);
      v54 = v51;
      v55 = &qword_27FF786D8;
      v56 = &qword_2647908A8;
    }

    sub_26460CD50(v54, v55, v56);
    sub_26460CCE8(v53, v88, &qword_27FF78730, &qword_264790920);
    swift_storeEnumTagMultiPayload();
    sub_264729D58();
    sub_264784874();
    return sub_26460CD50(v53, &qword_27FF78730, &qword_264790920);
  }

  else
  {
    sub_264783E04();
    v39 = v1;
    v40 = sub_264783E14();
    v41 = sub_2647859E4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v90 = v43;
      *v42 = 136315394;
      v44 = v39;
      v45 = [v44 description];
      v46 = sub_264785724();
      v48 = v47;

      v49 = sub_2646DF234(v46, v48, &v90);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_2646DF234(0xD000000000000014, 0x80000002647998D0, &v90);
      _os_log_impl(&dword_264605000, v40, v41, "%s, %s: Battery level nil is unexpected.", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v43, -1, -1);
      MEMORY[0x266740650](v42, -1, -1);
    }

    (*(v77 + 8))(v8, v78);
    swift_storeEnumTagMultiPayload();
    sub_264729D58();
    return sub_264784874();
  }
}

uint64_t sub_26472868C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v19[0] = a1;
  v19[1] = a2;
  v2 = sub_264784634();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264783B94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF786D8, &qword_2647908A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;

  v12 = sub_264785274();
  v13 = sub_264784D44();
  KeyPath = swift_getKeyPath();
  v20 = v12;
  v21 = KeyPath;
  v22 = v13;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v19[2] = sub_264785754();
  v19[3] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF765B0, &unk_2647908C0);
  sub_26466D5C8();
  sub_264613FC4();
  sub_264784FC4();

  sub_264784624();
  sub_264784614();
  v20 = v19[0];
  sub_2647845F4();
  sub_264784614();
  sub_264784654();
  sub_264784224();

  return sub_26460CD50(v11, &qword_27FF786D8, &qword_2647908A8);
}

id WatchCacheInfoViewModel.init(contact:safetyCache:isTransparencyMode:)(void *a1, __int128 *a2, char a3)
{
  v5 = a2[3];
  v18 = a2[2];
  v19 = v5;
  v6 = a2[5];
  v20 = a2[4];
  v21 = v6;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  if (*(&v16 + 1))
  {
    v9 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    swift_beginAccess();
    *&v3[v9] = a1;
    v10 = &v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v11 = v19;
    v10[2] = v18;
    v10[3] = v11;
    v12 = v21;
    v10[4] = v20;
    v10[5] = v12;
    v13 = v17;
    *v10 = v16;
    v10[1] = v13;
    v3[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = a3 & 1;
    v15.receiver = v3;
    v15.super_class = type metadata accessor for DeviceCacheInfoViewModel();
    return objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    sub_26472579C(&v16);
    type metadata accessor for WatchCacheInfoViewModel();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void *sub_264728ADC()
{
  v1 = v0 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache;
  swift_beginAccess();
  v2 = *(v1 + 8);
  v3 = v2;
  return v2;
}

uint64_t sub_264728B2C()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = &v0[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
  swift_beginAccess();
  result = *(v12 + 1);
  if (result)
  {
    if ([result cellularStrength] == 1)
    {
      v14 = *(v12 + 1);
      if (!v14 || [v14 wifiStrength] != 1)
      {
        sub_264783E04();
        v27 = v0;
        v28 = sub_264783E14();
        v29 = sub_2647859F4();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v53 = v52;
          *v30 = 136315394;
          v31 = v27;
          v32 = v2;
          v33 = [v31 description];
          v34 = sub_264785724();
          v36 = v35;

          v37 = sub_2646DF234(v34, v36, &v53);

          *(v30 + 4) = v37;
          *(v30 + 12) = 2080;
          *(v30 + 14) = sub_2646DF234(0xD000000000000012, 0x8000000264799990, &v53);
          _os_log_impl(&dword_264605000, v28, v29, "%s, %s: Hiding inactive cellular because watch has wifi", v30, 0x16u);
          v38 = v52;
          swift_arrayDestroy();
          MEMORY[0x266740650](v38, -1, -1);
          MEMORY[0x266740650](v30, -1, -1);

          (*(v32 + 8))(v11, v1);
          return 1;
        }

        (*(v2 + 8))(v11, v1);
        return 1;
      }

      if (*v12)
      {
        sub_264783E04();
        v15 = v0;
        v16 = sub_264783E14();
        v17 = sub_2647859F4();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v53 = v52;
          *v18 = 136315394;
          v19 = v15;
          v20 = v2;
          v21 = [v19 description];
          v22 = sub_264785724();
          v24 = v23;

          v25 = sub_2646DF234(v22, v24, &v53);

          *(v18 + 4) = v25;
          *(v18 + 12) = 2080;
          *(v18 + 14) = sub_2646DF234(0xD000000000000012, 0x8000000264799990, &v53);
          _os_log_impl(&dword_264605000, v16, v17, "%s, %s: Hiding inactive cellular because phone device status is present", v18, 0x16u);
          v26 = v52;
          swift_arrayDestroy();
          MEMORY[0x266740650](v26, -1, -1);
          MEMORY[0x266740650](v18, -1, -1);

          (*(v20 + 8))(v9, v1);
          return 1;
        }

        (*(v2 + 8))(v9, v1);
        return 1;
      }

      sub_264783E04();
      v39 = v0;
      v40 = sub_264783E14();
      v41 = sub_2647859F4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = v52;
        *v42 = 136315394;
        v43 = v39;
        v44 = v2;
        v45 = [v43 description];
        v46 = sub_264785724();
        v48 = v47;

        v49 = sub_2646DF234(v46, v48, &v53);

        *(v42 + 4) = v49;
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_2646DF234(0xD000000000000012, 0x8000000264799990, &v53);
        _os_log_impl(&dword_264605000, v40, v41, "%s, %s: Not hiding cellular info", v42, 0x16u);
        v50 = v52;
        swift_arrayDestroy();
        MEMORY[0x266740650](v50, -1, -1);
        MEMORY[0x266740650](v42, -1, -1);

        (*(v44 + 8))(v6, v1);
      }

      else
      {

        (*(v2 + 8))(v6, v1);
      }
    }

    return 0;
  }

  return result;
}

void sub_26472917C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_2647291DC@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache);
  swift_beginAccess();
  v4 = *v3;
  v14[1] = v3[1];
  v14[0] = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  v14[4] = v3[4];
  v14[5] = v7;
  v14[2] = v5;
  v14[3] = v6;
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[5];
  a2[4] = v3[4];
  a2[5] = v11;
  a2[2] = v9;
  a2[3] = v10;
  return sub_26467A834(v14, v13);
}

uint64_t sub_264729274(__int128 *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[4];
  v4 = a1[5];
  v20 = a1[3];
  v21 = v3;
  v22 = v4;
  v5 = a1[1];
  v17 = *a1;
  v6 = (*a2 + OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache);
  v18 = v5;
  v19 = v2;
  swift_beginAccess();
  v7 = v6[1];
  v23[0] = *v6;
  v23[1] = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v23[4] = v6[4];
  v23[5] = v10;
  v23[2] = v8;
  v23[3] = v9;
  v11 = v22;
  v13 = v19;
  v12 = v20;
  v6[4] = v21;
  v6[5] = v11;
  v6[2] = v13;
  v6[3] = v12;
  v14 = v18;
  *v6 = v17;
  v6[1] = v14;
  sub_26467A834(&v17, v16);
  return sub_26472579C(v23);
}

id DeviceCacheInfoViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2647293D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2647294D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DeviceCacheInfoViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

uint64_t sub_264729564(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2647295E0()
{
  result = qword_27FF78700;
  if (!qword_27FF78700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF786D8, &qword_2647908A8);
    sub_26466D5C8();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78700);
  }

  return result;
}

unint64_t sub_26472966C()
{
  result = qword_27FF78708;
  if (!qword_27FF78708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF786E0, &qword_2647908B0);
    sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78708);
  }

  return result;
}

uint64_t sub_264729724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2647844A4();
  *a1 = result;
  return result;
}

uint64_t sub_264729750@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2647844A4();
  *a1 = result;
  return result;
}

uint64_t sub_26472977C(uint64_t *a1)
{
  v1 = *a1;

  return sub_2647844B4();
}

uint64_t sub_2647297A8(uint64_t *a1)
{
  v1 = *a1;

  return sub_2647844B4();
}

uint64_t sub_2647297D4(char a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2647856E4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v9 = *MEMORY[0x277D0EEA8];
  if (MGGetBoolAnswer())
  {
    sub_2647856D4();
    result = sub_2647856C4();
    v11 = ceil(dbl_264790A18[a1]);
    if (v11 > -9.22337204e18)
    {
      if (v11 < 9.22337204e18)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2647856D4();
  result = sub_2647856C4();
  v12 = ceil(dbl_264790A18[a1]);
  if (v12 <= -9.22337204e18)
  {
    goto LABEL_9;
  }

  if (v12 < 9.22337204e18)
  {
LABEL_7:
    sub_2647856A4();
    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785754();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_264729B44(char a1)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2647856E4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2647856D4();
  result = sub_2647856C4();
  v9 = ceil(dbl_264790A38[a1]);
  if (v9 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v9 < 9.22337204e18)
  {
    sub_2647856A4();
    sub_2647856C4();
    sub_2647856F4();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    return sub_264785754();
  }

  __break(1u);
  return result;
}

unint64_t sub_264729D58()
{
  result = qword_27FF78738;
  if (!qword_27FF78738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78730, &qword_264790920);
    sub_264729564(&qword_27FF786F0, &qword_27FF786D0, &qword_2647908A0, sub_264729534);
    sub_26472A52C(&qword_27FF78740, &qword_27FF78720, &qword_264790910, sub_2647295E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78738);
  }

  return result;
}

id sub_264729E3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_264729EB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_264729F08(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

unint64_t sub_26472A458()
{
  result = qword_27FF78748;
  if (!qword_27FF78748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78750, &qword_264790A00);
    sub_26472966C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78748);
  }

  return result;
}

uint64_t sub_26472A52C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26472A600@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264784574();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LiveActivityView();
  sub_26460CCE8(v1 + *(v12 + 28), v11, &qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_264783F74();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t LiveActivityView.init(with:onLockscreen:resizeHandler:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for LiveActivityView();
  v9 = v8[6];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78768, &qword_264790AA0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[7];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v8[8];
  sub_2647852E4();
  *v11 = v17;
  *(v11 + 1) = v18;
  type metadata accessor for SessionViewModel(0);
  sub_2647365C0(&qword_27FF75DC0, type metadata accessor for SessionViewModel);

  *a4 = sub_264784174();
  a4[1] = v12;
  *(a4 + v8[9]) = a1;
  v13 = (a4 + v8[10]);
  *v13 = a2;
  v13[1] = a3;
  v14 = qword_27FF74FE8;

  if (v14 != -1)
  {
    swift_once();
  }

  type metadata accessor for DeviceLockMonitor();
  sub_2647365C0(&qword_27FF78770, type metadata accessor for DeviceLockMonitor);

  a4[2] = sub_264784174();
  a4[3] = v15;
  sub_26466626C();
}

uint64_t type metadata accessor for LiveActivityView()
{
  result = qword_27FF78870;
  if (!qword_27FF78870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26472AAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a5;
  v57 = a6;
  v61 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B98, &qword_2647910A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v55 = &v54 - v13;
  v14 = sub_264783F74();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  v64 = a1;
  v65 = a2;
  sub_264613FC4();

  v22 = sub_264784E44();
  v24 = v23;
  v26 = v25;
  v59 = v27;
  v60 = a3;
  sub_26472A600(v21);
  (*(v15 + 104))(v19, *MEMORY[0x277CDF3C0], v14);
  LOBYTE(a3) = sub_264783F64();
  v28 = *(v15 + 8);
  v28(v19, v14);
  v28(v21, v14);
  if (a3)
  {
    v29 = v61;
  }

  else
  {
    v29 = sub_264785204();
  }

  v64 = v29;
  v30 = sub_264784DF4();
  v32 = v31;
  v34 = v33;
  sub_26460ECC4(v22, v24, v26 & 1);

  sub_264784D84();
  v35 = sub_264784E24();
  v37 = v36;
  v58 = v38;
  v59 = v39;

  sub_26460ECC4(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if (*(v60 + *(type metadata accessor for LiveActivityView() + 36)) == 1)
  {
    v44 = v57;
    if (v57)
    {

      v45 = v56;
      sub_264785274();
      v46 = v55;
      sub_264784734();
      v47 = sub_264784744();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      sub_2647852A4();

      sub_26460CD50(v46, &qword_27FF78B98, &qword_2647910A0);
      v41 = sub_26472AF6C(v45, v44);

      v43 = sub_264784D34();
      v42 = swift_getKeyPath();
    }
  }

  v48 = v58 & 1;
  LOBYTE(v64) = v58 & 1;
  v63 = 0;
  v62 = 0;
  sub_26460C474(v35, v37, v58 & 1);
  v49 = v59;

  sub_26466D2FC(v41);
  sub_26466D34C(v41);
  v50 = v64;
  v51 = v63;
  v52 = v62;
  *a7 = v35;
  *(a7 + 8) = v37;
  *(a7 + 16) = v50;
  *(a7 + 24) = v49;
  *(a7 + 32) = KeyPath;
  *(a7 + 40) = 1;
  *(a7 + 48) = v51;
  *(a7 + 56) = 0;
  *(a7 + 64) = v52;
  *(a7 + 72) = v41;
  *(a7 + 80) = v42;
  *(a7 + 88) = v43;
  sub_26466D34C(v41);
  sub_26460ECC4(v35, v37, v48);
}

uint64_t sub_26472AF6C(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0x69662E6B636F6C63 && a2 == 0xEA00000000006C6CLL;
  if (v2 || (sub_264785E84() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78BC0, &qword_2647910B8);
    sub_2647368C4();
  }

  else
  {
    if (qword_27FF753B0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78BA0, &qword_2647910A8);
    sub_26473680C();
  }

  return sub_2647853C4();
}

uint64_t LiveActivityView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v104 = sub_2647846B4();
  v102 = *(v104 - 8);
  v2 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264784AA4();
  v99 = *(v4 - 8);
  v100 = v4;
  v5 = *(v99 + 64);
  MEMORY[0x28223BE20](v4);
  v98 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LiveActivityView();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v106 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78778, &qword_264790AE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v86 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78780, &qword_264790AE8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v86 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78788, &qword_264790AF0);
  v90 = *(v89 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v86 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78790, &qword_264790AF8);
  v93 = *(v92 - 8);
  v22 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  v107 = &v86 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78798, &qword_264790B00);
  v24 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v91 = &v86 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787A0, &qword_264790B08);
  v27 = *(v26 - 8);
  v96 = v26;
  v97 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v94 = &v86 - v29;
  *v15 = sub_264785504();
  v15[1] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787A8, &qword_264790B10);
  sub_26472BC00(v1, v15 + *(v31 + 44));
  v32 = *(v1 + *(v8 + 44));
  LOBYTE(v8) = sub_264784C24();
  sub_26460CCE8(v15, v19, &qword_27FF78778, &qword_264790AE0);
  v33 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787B0, &qword_264790B18) + 36)];
  *v33 = v8;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  LOBYTE(v8) = sub_264784C44();
  sub_264783F54();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787B8, &qword_264790B20) + 36)];
  *v42 = v8;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  LOBYTE(v8) = sub_264784C54();
  sub_264783F54();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787C0, &unk_264790B28) + 36)];
  *v51 = v8;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  sub_26460CD50(v15, &qword_27FF78778, &qword_264790AE0);
  sub_2647851C4();
  v52 = sub_2647851F4();

  v53 = sub_264784C34();
  v86 = v16;
  v54 = &v19[*(v16 + 36)];
  *v54 = v52;
  v54[8] = v53;
  v55 = v11;
  sub_26473413C(v1, v11);
  v56 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v57 = swift_allocObject();
  sub_2647341A4(v11, v57 + v56);
  v58 = sub_264734220();
  v59 = v88;
  sub_264784F14();

  sub_26460CD50(v19, &qword_27FF78780, &qword_264790AE8);
  v87 = v1;
  v105 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v112 = v113;
  sub_26473413C(v1, v55);
  v60 = swift_allocObject();
  v61 = v55;
  sub_2647341A4(v55, v60 + v56);
  v108 = v86;
  v109 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = sub_264667DA8();
  v64 = v89;
  sub_2647850F4();

  (*(v90 + 8))(v59, v64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v112 = v113;
  v65 = v87;
  sub_26473413C(v87, v61);
  v66 = swift_allocObject();
  sub_2647341A4(v61, v66 + v56);
  v108 = v64;
  v109 = &type metadata for DeviceLockMonitor.LockState;
  v110 = OpaqueTypeConformance2;
  v111 = v63;
  swift_getOpaqueTypeConformance2();
  v67 = v91;
  v68 = v92;
  v69 = v107;
  sub_2647850F4();

  (*(v93 + 8))(v69, v68);
  sub_26473413C(v65, v61);
  v70 = swift_allocObject();
  sub_2647341A4(v61, v70 + v56);
  v71 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787F0, &qword_264790BC8) + 36));
  *v71 = sub_26472D430;
  v71[1] = 0;
  v71[2] = sub_264734530;
  v71[3] = v70;
  sub_264785534();
  v72 = sub_264785524();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  LOBYTE(v70) = v108;
  v73 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF787F8, &qword_264790BD0) + 36);
  *v73 = v72;
  *(v73 + 8) = v70;
  sub_264785534();
  v74 = sub_264785524();

  LOBYTE(v70) = sub_26472D5E0();
  v75 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78800, &qword_264790BD8) + 36);
  *v75 = v74;
  *(v75 + 8) = v70 & 1;
  v76 = sub_264785544();
  v77 = v95;
  v78 = (v67 + *(v95 + 36));
  v79 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78808, &qword_264790BE0) + 36);
  sub_264783B54();
  *v78 = v76;
  v80 = v98;
  sub_264784A94();
  v81 = sub_2647345A0();
  v82 = v94;
  sub_264784FF4();
  (*(v99 + 8))(v80, v100);
  sub_26460CD50(v67, &qword_27FF78798, &qword_264790B00);
  v83 = v101;
  sub_2647846A4();
  v108 = v77;
  v109 = v81;
  swift_getOpaqueTypeConformance2();
  v84 = v96;
  sub_264785024();
  (*(v102 + 8))(v83, v104);
  return (*(v97 + 8))(v82, v84);
}

uint64_t sub_26472BC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788A0, &qword_264790CE8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788A8, &qword_264790CF0);
  v11 = *(*(v29[0] - 8) + 64);
  MEMORY[0x28223BE20](v29[0]);
  v13 = v29 - v12;
  v14 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v29[1] = a2;
  v29[2] = v4;
  if (LOBYTE(v35[0]) && LOBYTE(v35[0]) == 1)
  {

LABEL_5:
    v16 = sub_264784724();
    v33[0] = 1;
    sub_26472EDC8(v35);
    memcpy(v30, v35, 0x1B2uLL);
    memcpy(v31, v35, 0x1B2uLL);
    sub_26460CCE8(v30, v34, &qword_27FF788F8, &qword_264790D70);
    sub_26460CD50(v31, &qword_27FF788F8, &qword_264790D70);
    memcpy(v35 + 7, v30, 0x1B2uLL);
    v32[0] = v16;
    v32[1] = 0;
    LOBYTE(v32[2]) = v33[0];
    memcpy(&v32[2] + 1, v35, 0x1B9uLL);
    memcpy(v35, v32, 0x1CAuLL);
    sub_2647352E4(v35);
    memcpy(v33, v35, sizeof(v33));
    v17 = &qword_27FF788D0;
    v18 = &qword_264790D58;
    sub_26460CCE8(v32, v34, &qword_27FF788D0, &qword_264790D58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788D0, &qword_264790D58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788E0, &qword_264790D60);
    sub_26460CDF0(&qword_27FF788C8, &qword_27FF788D0, &qword_264790D58);
    sub_26460CDF0(&qword_27FF788D8, &qword_27FF788E0, &qword_264790D60);
LABEL_6:
    sub_264784874();
    memcpy(v13, v34, 0x1CBuLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788B8, &qword_264790D50);
    sub_2647351F8();
    sub_26460CDF0(&qword_27FF788E8, &qword_27FF788A0, &qword_264790CE8);
    sub_264784874();
    return sub_26460CD50(v32, v17, v18);
  }

  v15 = sub_264785E84();

  if (v15)
  {
    goto LABEL_5;
  }

  v20 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v21 = v35[0];
  if (v35[0])
  {
    v22 = [v35[0] unsupportedDeviceSeparationState];

    if (v22)
    {
      v23 = sub_264784724();
      v33[0] = 1;
      sub_26472FA10(v35);
      memcpy(v30, v35, 0x112uLL);
      memcpy(v31, v35, 0x112uLL);
      sub_26460CCE8(v30, v34, &qword_27FF788F0, &qword_264790D68);
      sub_26460CD50(v31, &qword_27FF788F0, &qword_264790D68);
      memcpy(v35 + 7, v30, 0x112uLL);
      v32[0] = v23;
      v32[1] = 0;
      LOBYTE(v32[2]) = v33[0];
      memcpy(&v32[2] + 1, v35, 0x119uLL);
      memcpy(v35, v32, 0x12AuLL);
      sub_2647352D8(v35);
      memcpy(v33, v35, sizeof(v33));
      v17 = &qword_27FF788E0;
      v18 = &qword_264790D60;
      sub_26460CCE8(v32, v34, &qword_27FF788E0, &qword_264790D60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788D0, &qword_264790D58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788E0, &qword_264790D60);
      sub_26460CDF0(&qword_27FF788C8, &qword_27FF788D0, &qword_264790D58);
      sub_26460CDF0(&qword_27FF788D8, &qword_27FF788E0, &qword_264790D60);
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763C8, &qword_264790D40);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2647889B0;
  v25 = sub_264784BF4();
  *(v24 + 32) = v25;
  v26 = sub_264784C14();
  *(v24 + 33) = v26;
  v27 = sub_264784C04();
  sub_264784C04();
  if (sub_264784C04() != v25)
  {
    v27 = sub_264784C04();
  }

  sub_264784C04();
  if (sub_264784C04() != v26)
  {
    v27 = sub_264784C04();
  }

  *v8 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788B0, &qword_264790D48);
  sub_26472C378(a1, &v8[*(v28 + 44)]);
  sub_26460E7E4(v8, v10, &qword_27FF788A0, &qword_264790CE8);
  sub_26460CCE8(v10, v13, &qword_27FF788A0, &qword_264790CE8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF788B8, &qword_264790D50);
  sub_2647351F8();
  sub_26460CDF0(&qword_27FF788E8, &qword_27FF788A0, &qword_264790CE8);
  sub_264784874();
  return sub_26460CD50(v10, &qword_27FF788A0, &qword_264790CE8);
}

uint64_t sub_26472C378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78938, &qword_264790E10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  *v16 = sub_264784714();
  *(v16 + 1) = 0x4030000000000000;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78940, &qword_264790E18);
  sub_26472D6D4(a1, 0, &v16[*(v17 + 44)]);
  *v14 = sub_264784714();
  *(v14 + 1) = 0x4030000000000000;
  v14[16] = 0;
  sub_26472D6D4(a1, 1, &v14[*(v17 + 44)]);
  sub_26460CCE8(v16, v11, &qword_27FF78938, &qword_264790E10);
  sub_26460CCE8(v14, v8, &qword_27FF78938, &qword_264790E10);
  sub_26460CCE8(v11, a2, &qword_27FF78938, &qword_264790E10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78948, &qword_264790E20);
  sub_26460CCE8(v8, a2 + *(v18 + 48), &qword_27FF78938, &qword_264790E10);
  sub_26460CD50(v14, &qword_27FF78938, &qword_264790E10);
  sub_26460CD50(v16, &qword_27FF78938, &qword_264790E10);
  sub_26460CD50(v8, &qword_27FF78938, &qword_264790E10);
  return sub_26460CD50(v11, &qword_27FF78938, &qword_264790E10);
}

uint64_t sub_26472C57C(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityView();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v121 = &v113 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759C8, &qword_2647885E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v113 - v10;
  v12 = sub_2647839D4();
  v13 = *(v12 - 8);
  v122 = v12;
  v123 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v116 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = &v113 - v17;
  v18 = sub_264783E24();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v120 = &v113 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v118 = &v113 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v117 = &v113 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v113 - v30;
  sub_264783DF4();
  v32 = sub_264783E14();
  v33 = sub_2647859B4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v18;
    v35 = v19;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_264605000, v32, v33, "Live Activity Tapped", v36, 2u);
    v37 = v36;
    v19 = v35;
    v18 = v34;
    MEMORY[0x266740650](v37, -1, -1);
  }

  v40 = *(v19 + 8);
  v39 = v19 + 8;
  v38 = v40;
  v40(v31, v18);
  v41 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v42 = v125[0];
  if (v125[0] && (v43 = [v125[0] configuration], v42, v43) && (v44 = objc_msgSend(v43, sel_conversation), v43, v44))
  {
    v45 = [v44 receiverPrimaryHandles];
    v46 = sub_2647857F4();

    v47 = *(v46 + 16);

    if (v47)
    {
      sub_26472D1B4(a1, v11);
      v49 = v122;
      v48 = v123;
      if ((*(v123 + 48))(v11, 1, v122) == 1)
      {
        sub_26460CD50(v11, &qword_27FF759C8, &qword_2647885E0);
      }

      else
      {
        v78 = v119;
        (*(v48 + 32))(v119, v11, v49);
        v79 = [objc_opt_self() defaultWorkspace];
        if (v79)
        {
          v80 = v79;
          v115 = v38;
          v121 = sub_2647839B4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F0, &unk_26478AD08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2647889B0;
          v82 = *MEMORY[0x277D0AC70];
          *(inited + 32) = sub_264785724();
          *(inited + 40) = v83;
          v84 = v78;
          v85 = MEMORY[0x277D839B0];
          *(inited + 72) = MEMORY[0x277D839B0];
          *(inited + 48) = 1;
          v86 = *MEMORY[0x277D0AC58];
          *(inited + 80) = sub_264785724();
          *(inited + 88) = v87;
          *(inited + 120) = v85;
          *(inited + 96) = 1;
          v88 = v123;
          sub_264655958(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E70, &qword_264789800);
          swift_arrayDestroy();
          v89 = sub_264785604();

          v90 = v121;
          v114 = [v80 openSensitiveURL:v121 withOptions:v89];

          v91 = v117;
          sub_264783DF4();
          v92 = v116;
          (*(v88 + 16))(v116, v84, v49);
          v93 = sub_264783E14();
          v94 = sub_2647859F4();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v121 = v39;
            v96 = v95;
            v97 = v92;
            v98 = v88;
            v99 = swift_slowAlloc();
            v125[0] = v99;
            *v96 = 136315394;
            v100 = sub_264783994();
            v113 = v80;
            v101 = v100;
            v118 = v44;
            v103 = v102;
            v120 = v18;
            v104 = *(v98 + 8);
            v104(v97, v49);
            v105 = sub_2646DF234(v101, v103, v125);

            *(v96 + 4) = v105;
            *(v96 + 12) = 1024;
            *(v96 + 14) = v114;
            _os_log_impl(&dword_264605000, v93, v94, "Live Activity, onTapGesture, URL: %s, success: %{BOOL}d", v96, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v99);
            MEMORY[0x266740650](v99, -1, -1);
            MEMORY[0x266740650](v96, -1, -1);

            v115(v117, v120);
            return (v104)(v119, v49);
          }

          else
          {

            v111 = *(v88 + 8);
            v111(v92, v49);
            v115(v91, v18);
            return (v111)(v119, v49);
          }
        }

        (*(v48 + 8))(v78, v49);
      }

      v107 = v118;
      sub_264783DF4();
      v108 = sub_264783E14();
      v109 = sub_2647859D4();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&dword_264605000, v108, v109, "Live Activity, onTapGesture, cannot construct URL", v110, 2u);
        MEMORY[0x266740650](v110, -1, -1);
      }

      return (v38)(v107, v18);
    }

    else
    {
      v64 = v38;
      v65 = v120;
      sub_264783DF4();
      v66 = a1;
      v67 = v121;
      sub_26473413C(v66, v121);
      v68 = sub_264783E14();
      v69 = sub_2647859D4();
      if (os_log_type_enabled(v68, v69))
      {
        v118 = v44;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v125[0] = v71;
        *v70 = 136315138;
        v72 = *(v67 + 8);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v73 = v124;
        if (v124)
        {
          v74 = [v124 description];

          v75 = sub_264785724();
          v77 = v76;
        }

        else
        {
          v75 = 0;
          v77 = 0xE000000000000000;
        }

        sub_264734F20(v121);
        v112 = sub_2646DF234(v75, v77, v125);

        *(v70 + 4) = v112;
        _os_log_impl(&dword_264605000, v68, v69, "Live Activity, onTapGesture, unable to resolve conversation, sessionState:%s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x266740650](v71, -1, -1);
        MEMORY[0x266740650](v70, -1, -1);

        v106 = v120;
      }

      else
      {

        sub_264734F20(v67);
        v106 = v65;
      }

      return v64(v106, v18);
    }
  }

  else
  {
    v50 = v18;
    v51 = v38;
    sub_264783DF4();
    sub_26473413C(a1, v6);
    v52 = sub_264783E14();
    v53 = sub_2647859D4();
    if (os_log_type_enabled(v52, v53))
    {
      v120 = v50;
      v121 = v39;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v125[0] = v55;
      *v54 = 136315138;
      v56 = *(v6 + 1);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v57 = v124;
      if (v124)
      {
        v58 = [v124 description];

        v59 = sub_264785724();
        v61 = v60;
      }

      else
      {
        v59 = 0;
        v61 = 0xE000000000000000;
      }

      sub_264734F20(v6);
      v63 = sub_2646DF234(v59, v61, v125);

      *(v54 + 4) = v63;
      _os_log_impl(&dword_264605000, v52, v53, "Live Activity, onTapGesture, unable to resolve conversation, sessionState:%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x266740650](v55, -1, -1);
      MEMORY[0x266740650](v54, -1, -1);

      return v51(v23, v120);
    }

    else
    {

      sub_264734F20(v6);
      return v51(v23, v50);
    }
  }
}

uint64_t sub_26472D1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v14)
  {
    v4 = [v14 configuration];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 conversation];

      v7 = [v6 receiverPrimaryHandles];
      sub_2647857F4();
    }

    v10 = [v14 configuration];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 conversation];

      v13 = [v12 identifier];
      if (v13)
      {
        sub_264785724();
      }
    }

    sub_264783D04();
    [v14 isActiveState];
    sub_264783CD4();
  }

  else
  {
    v8 = sub_2647839D4();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_26472D3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + *(type metadata accessor for LiveActivityView() + 32));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  return sub_264785304();
}

uint64_t sub_26472D430@<X0>(void *a1@<X8>)
{
  result = sub_2647840E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26472D45C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  sub_264783DF4();
  v11 = sub_264783E14();
  v12 = sub_2647859C4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = v10;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v9;
    _os_log_impl(&dword_264605000, v11, v12, "Live Activity, onGeometryChange, height: %f, width: %f", v13, 0x16u);
    MEMORY[0x266740650](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = a2 + *(type metadata accessor for LiveActivityView() + 40);
  v15 = *(v14 + 8);
  return (*v14)();
}

BOOL sub_26472D5E0()
{
  v1 = v0 + *(type metadata accessor for LiveActivityView() + 32);
  LOBYTE(v6) = *v1;
  v7 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_2647852F4();
  if (v5 != 1)
  {
    return 0;
  }

  v2 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v6)
  {
    return 0;
  }

  v3 = [v6 sessionState];

  return v3 == 9;
}

uint64_t sub_26472D6D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78950, &qword_264790E28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78958, &qword_264790E30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78960, &qword_264790E38);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - v25;
  *v26 = sub_2647845C4();
  *(v26 + 1) = 0x4020000000000000;
  v26[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78968, &qword_264790E40);
  sub_26472DA74(a1, a2, &v26[*(v27 + 44)]);
  if (sub_26472E86C())
  {
    v28 = *(a1 + *(type metadata accessor for LiveActivityView() + 36)) == 0;
    v37 = v5;
    v29 = a2;
    if (v28)
    {
      v30 = 0x401C000000000000;
    }

    else
    {
      v30 = 0x4022000000000000;
    }

    *v10 = sub_2647845C4();
    *(v10 + 1) = v30;
    v10[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78978, &qword_264790E50);
    v32 = v29 & 1;
    v5 = v37;
    sub_26472EA58(a1, v32, &v10[*(v31 + 44)]);
    sub_26460E7E4(v10, v12, &qword_27FF78950, &qword_264790E28);
    sub_26460E7E4(v12, v19, &qword_27FF78950, &qword_264790E28);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  (*(v6 + 56))(v19, v33, 1, v5);
  sub_26460CCE8(v26, v24, &qword_27FF78960, &qword_264790E38);
  sub_26460CCE8(v19, v17, &qword_27FF78958, &qword_264790E30);
  v34 = v38;
  sub_26460CCE8(v24, v38, &qword_27FF78960, &qword_264790E38);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78970, &qword_264790E48);
  sub_26460CCE8(v17, v34 + *(v35 + 48), &qword_27FF78958, &qword_264790E30);
  sub_26460CD50(v19, &qword_27FF78958, &qword_264790E30);
  sub_26460CD50(v26, &qword_27FF78960, &qword_264790E38);
  sub_26460CD50(v17, &qword_27FF78958, &qword_264790E30);
  return sub_26460CD50(v24, &qword_27FF78960, &qword_264790E38);
}

uint64_t sub_26472DA74@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B10, &qword_264791008);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for LiveActivityView();
  v39 = 0;
  v13 = 0;
  countAndFlagsBits = 0;
  object = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v38 = 0;
  if ((*(a1 + *(v12 + 36)) & 1) == 0)
  {
    v19 = *(a1 + 8);
    v39 = SessionViewModel.activeSessionRecipientContacts.getter();
    v20 = SessionViewModel.activeSessionGroupID.getter();
    v38 = v21;
    v22 = SessionViewModel.badgeImageName()();
    countAndFlagsBits = v22.value._countAndFlagsBits;
    object = v22.value._object;
    v18 = v20;
    v16 = SessionViewModel.badgeImageColor()();
    v17 = sub_2647845B4();
    v15 = 0x4039000000000000;
    v13 = 0x4049000000000000;
  }

  v34 = v17;
  v33 = v15;
  v35 = v13;
  *v11 = sub_264784714();
  *(v11 + 1) = 0x4000000000000000;
  v11[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B18, &qword_264791010);
  sub_26472DD74(a1, v36 & 1, &v11[*(v23 + 44)]);
  v32 = v16;
  sub_26460CCE8(v11, v9, &qword_27FF78B10, &qword_264791008);
  v24 = v39;
  *&v40 = v39;
  *(&v40 + 1) = v13;
  v25 = countAndFlagsBits;
  *&v41 = countAndFlagsBits;
  *(&v41 + 1) = object;
  *&v42 = v15;
  *(&v42 + 1) = v16;
  v43 = v17;
  v26 = v38;
  *&v44 = v18;
  *(&v44 + 1) = v38;
  v45 = 0;
  *(a3 + 80) = 0;
  v27 = v43;
  *(a3 + 32) = v42;
  *(a3 + 48) = v27;
  *(a3 + 64) = v44;
  v28 = v41;
  *a3 = v40;
  *(a3 + 16) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B20, &qword_264791018);
  sub_26460CCE8(v9, a3 + *(v29 + 48), &qword_27FF78B10, &qword_264791008);
  sub_26460CCE8(&v40, v46, &qword_27FF78B28, &qword_264791020);
  sub_26460CD50(v11, &qword_27FF78B10, &qword_264791008);
  sub_26460CD50(v9, &qword_27FF78B10, &qword_264791008);
  v46[0] = v24;
  v46[1] = v35;
  v46[2] = v25;
  v46[3] = object;
  v46[4] = v33;
  v46[5] = v32;
  v46[6] = v34;
  v46[7] = 0;
  v46[8] = v18;
  v46[9] = v26;
  v46[10] = 0;
  return sub_26460CD50(v46, &qword_27FF78B28, &qword_264791020);
}

uint64_t sub_26472DD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v6 = type metadata accessor for LiveActivityView();
  v62 = *(v6 - 8);
  v60 = *(v62 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_264783AF4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = sub_264784A44();
  v57 = *(v59 - 8);
  v11 = *(v57 + 64);
  v12 = MEMORY[0x28223BE20](v59);
  v55 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v53 = &v50[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B30, &qword_264791028);
  v63 = *(v15 - 8);
  v64 = v15;
  v16 = *(v63 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v61 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v56 = &v50[-v19];
  v20 = *(a1 + 8);
  v21 = sub_26472D5E0();
  sub_264783D04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v22 = v76;
  v23 = MEMORY[0x26673D9F0](v76, v21, a2, 0);
  v25 = v24;

  v26 = SessionViewModel.badgeImageName()();
  v27 = SessionViewModel.badgeImageColor()();
  v52 = sub_2647845C4();
  v66 = 1;
  sub_26472AAD8(v23, v25, a1, v27, v26.value._countAndFlagsBits, v26.value._object, &v76);
  v69 = *&v77[16];
  v70 = *&v77[32];
  v71 = *&v77[48];
  v72 = *&v77[64];
  v67 = v76;
  v68 = *v77;
  v73[2] = *&v77[16];
  v73[3] = *&v77[32];
  v73[4] = *&v77[48];
  v73[5] = *&v77[64];
  v73[0] = v76;
  v73[1] = *v77;
  sub_26460CCE8(&v67, &v74, &qword_27FF78B38, &qword_264791030);
  sub_26460CD50(v73, &qword_27FF78B38, &qword_264791030);

  *&v65[39] = v69;
  *&v65[55] = v70;
  *&v65[71] = v71;
  *&v65[87] = v72;
  *&v65[7] = v67;
  *&v65[23] = v68;
  v28 = v66;
  sub_264783AE4();
  v29 = v53;
  sub_264784A34();
  v30 = v58;
  sub_26473413C(a1, v58);
  v31 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v32 = v31 + v60;
  v33 = swift_allocObject();
  sub_2647341A4(v30, v33 + v31);
  *(v33 + v32) = v51;
  v34 = v57;
  v35 = v29;
  v36 = v59;
  (*(v57 + 16))(v55, v29, v59);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_2647364E0;
  *(v37 + 24) = v33;
  sub_2647365C0(&qword_27FF78B40, MEMORY[0x277CE06F0]);
  v38 = v56;
  sub_264784024();
  (*(v34 + 8))(v35, v36);
  v40 = v63;
  v39 = v64;
  v41 = *(v63 + 16);
  v42 = v61;
  v41(v61, v38, v64);
  v43 = v52;
  v74 = v52;
  v75[0] = v28;
  *&v75[17] = *&v65[16];
  *&v75[1] = *v65;
  *&v75[81] = *&v65[80];
  *&v75[65] = *&v65[64];
  *&v75[49] = *&v65[48];
  *&v75[96] = *&v65[95];
  *&v75[33] = *&v65[32];
  v44 = *&v75[32];
  *(a3 + 32) = *&v75[16];
  *(a3 + 48) = v44;
  *(a3 + 112) = *&v75[96];
  v45 = *&v75[80];
  *(a3 + 80) = *&v75[64];
  *(a3 + 96) = v45;
  *(a3 + 64) = *&v75[48];
  v46 = *v75;
  *a3 = v74;
  *(a3 + 16) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B48, &qword_264791038);
  v41((a3 + *(v47 + 48)), v42, v39);
  sub_26460CCE8(&v74, &v76, &qword_27FF78B50, &unk_264791040);
  v48 = *(v40 + 8);
  v48(v38, v39);
  v48(v42, v39);
  *&v77[49] = *&v65[48];
  *&v77[65] = *&v65[64];
  *v78 = *&v65[80];
  *&v77[1] = *v65;
  *&v77[17] = *&v65[16];
  v76 = v43;
  v77[0] = v28;
  *&v78[15] = *&v65[95];
  *&v77[33] = *&v65[32];
  return sub_26460CD50(&v76, &qword_27FF78B50, &unk_264791040);
}

uint64_t sub_26472E408@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B60, &qword_264791058);
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v7 = v42 - v6;
  v43 = a1;
  v8 = *(a1 + 8);
  LOBYTE(a1) = sub_26472D5E0();
  sub_264783D04();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v9 = v46;
  v10 = MEMORY[0x26673DA10](v46, a1 & 1, 0, a2, 0);
  v12 = v11;

  v46 = v10;
  v47 = v12;
  sub_264613FC4();
  v13 = sub_264784E44();
  v15 = v14;
  LOBYTE(v12) = v16;
  sub_264784CB4();
  v17 = sub_264784E24();
  v19 = v18;
  v21 = v20;
  v42[1] = v22;

  sub_26460ECC4(v13, v15, v12 & 1);

  LODWORD(v46) = sub_2647849C4();
  v23 = sub_264784DF4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_26460ECC4(v17, v19, v21 & 1);

  sub_264785514();
  sub_264784314();
  v30 = v27 & 1;
  v72 = v27 & 1;
  v31 = *(v43 + *(type metadata accessor for LiveActivityView() + 36));
  KeyPath = swift_getKeyPath();
  v73 = v31;
  if (v31 == 1)
  {
    v43 = KeyPath;
    v33 = swift_getKeyPath();
    v34 = &v7[*(v44 + 36)];
    v35 = v29;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B80, &qword_264791098) + 28);
    sub_264785494();
    v37 = sub_2647854C4();
    (*(*(v37 - 8) + 56))(v34 + v36, 0, 1, v37);
    *v34 = v33;
    *v7 = v23;
    *(v7 + 1) = v25;
    v7[16] = v30;
    *(v7 + 17) = *v71;
    *(v7 + 5) = *&v71[3];
    *(v7 + 3) = v35;
    v38 = v69;
    *(v7 + 6) = v68;
    *(v7 + 7) = v38;
    *(v7 + 8) = v70;
    v39 = v65;
    *(v7 + 2) = v64;
    *(v7 + 3) = v39;
    v40 = v67;
    *(v7 + 4) = v66;
    *(v7 + 5) = v40;
    *(v7 + 72) = 256;
    *(v7 + 75) = v75;
    *(v7 + 146) = v74;
    *(v7 + 19) = v43;
    *(v7 + 20) = 0;
    v7[168] = 1;
    sub_264736754();
  }

  else
  {
    v46 = v23;
    v47 = v25;
    v48 = v27 & 1;
    *v49 = *v71;
    *&v49[3] = *&v71[3];
    v50 = v29;
    v55 = v68;
    v56 = v69;
    v57 = v70;
    v51 = v64;
    v52 = v65;
    v54 = v67;
    v53 = v66;
    v58 = 256;
    v60 = v75;
    v59 = v74;
    v61 = KeyPath;
    v62 = 3;
    v63 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B68, &qword_264791060);
    sub_264736608();
  }

  result = sub_2647853C4();
  *v45 = result;
  return result;
}

BOOL sub_26472E86C()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v8)
  {
    v2 = [v8 sessionState];

    if (v2 == 9)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v8)
  {
    v3 = [v8 sessionState];

    if (v3 == 7)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v8)
  {
    v4 = [v8 sessionState];

    if (v4 == 4)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v8 && (v5 = [v8 sessionState], v8, v5 == 14))
  {
    return 1;
  }

  else
  {
    return sub_26472D5E0();
  }
}

uint64_t sub_26472EA58@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78980, &qword_264790E58);
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v30);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78988, &qword_264790E60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78990, &qword_264790E68);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78998, &qword_264790E70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v28 - v19;
  if (sub_26472D5E0())
  {
    v28[1] = v9;
    v28[2] = a3;
    v21 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v22 = v31;
    if (v31)
    {
      sub_2647316B0(v29 & 1, v31, v8);

      sub_26460E7E4(v8, v12, &qword_27FF78980, &qword_264790E58);
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v5 + 56))(v12, v23, 1, v30);
    sub_26460CCE8(v12, v16, &qword_27FF78988, &qword_264790E60);
    swift_storeEnumTagMultiPayload();
    sub_2647352FC();
    sub_2647353AC();
    sub_264784874();
    v24 = v12;
    v25 = &qword_27FF78988;
    v26 = &qword_264790E60;
  }

  else
  {
    sub_264730160(a1, v20);
    sub_26460CCE8(v20, v16, &qword_27FF78998, &qword_264790E70);
    swift_storeEnumTagMultiPayload();
    sub_2647352FC();
    sub_2647353AC();
    sub_264784874();
    v24 = v20;
    v25 = &qword_27FF78998;
    v26 = &qword_264790E70;
  }

  return sub_26460CD50(v24, v25, v26);
}

uint64_t sub_26472EDC8@<X0>(void *a1@<X8>)
{
  v1 = sub_2647845C4();
  LOBYTE(v8[0]) = 1;
  sub_26472F164(__src);
  v29 = *&__src[64];
  v30 = *&__src[80];
  v31 = *&__src[96];
  v25 = *__src;
  v26 = *&__src[16];
  v27 = *&__src[32];
  v28 = *&__src[48];
  v32[0] = *__src;
  v32[1] = *&__src[16];
  v32[2] = *&__src[32];
  v32[3] = *&__src[48];
  v32[4] = *&__src[64];
  v32[5] = *&__src[80];
  v33 = *&__src[96];
  sub_26460CCE8(&v25, v21, &qword_27FF78900, &qword_264790D78);
  sub_26460CD50(v32, &qword_27FF78900, &qword_264790D78);
  *(&v24[3] + 7) = v28;
  *(&v24[4] + 7) = v29;
  *(&v24[5] + 7) = v30;
  *(v24 + 7) = v25;
  *(&v24[1] + 7) = v26;
  *(&v24[6] + 7) = v31;
  *(&v24[2] + 7) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF763C8, &qword_264790D40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2647889B0;
  v3 = sub_264784BF4();
  *(v2 + 32) = v3;
  v4 = sub_264784C14();
  *(v2 + 33) = v4;
  v5 = sub_264784C04();
  sub_264784C04();
  if (sub_264784C04() != v3)
  {
    v5 = sub_264784C04();
  }

  sub_264784C04();
  if (sub_264784C04() != v4)
  {
    v5 = sub_264784C04();
  }

  sub_26472F4F4(__src);
  memcpy(__dst, __src, 0x12AuLL);
  memcpy(v18, __src, 0x12AuLL);
  sub_26460CCE8(__dst, v21, &qword_27FF78908, &qword_264790D80);
  sub_26460CD50(v18, &qword_27FF78908, &qword_264790D80);
  memcpy(&v23[7], __dst, 0x12AuLL);
  v19[0] = v1;
  v19[1] = 0;
  LOBYTE(v20[0]) = 1;
  *(&v20[1] + 1) = v24[1];
  *(v20 + 1) = v24[0];
  *(&v20[5] + 12) = *(&v24[5] + 11);
  *(&v20[5] + 1) = v24[5];
  *(&v20[4] + 1) = v24[4];
  *(&v20[3] + 1) = v24[3];
  *(&v20[2] + 1) = v24[2];
  *&v16[32] = v20[1];
  *&v16[48] = v20[2];
  *&v16[108] = *(&v20[5] + 12);
  *&v16[80] = v20[4];
  *&v16[96] = v20[5];
  *&v16[64] = v20[3];
  *v16 = v1;
  *&v16[16] = v20[0];
  v21[0] = v5;
  memcpy(&v21[1], v23, 0x131uLL);
  memcpy(&v16[128], v21, 0x132uLL);
  memcpy(a1, v16, 0x1B2uLL);
  __src[0] = v5;
  memcpy(&__src[1], v23, 0x131uLL);
  sub_26460CCE8(v19, v8, &qword_27FF78910, &qword_264790D88);
  sub_26460CCE8(v21, v8, &qword_27FF78918, &qword_264790D90);
  sub_26460CD50(__src, &qword_27FF78918, &qword_264790D90);
  v13 = v24[3];
  v14 = v24[4];
  v15[0] = v24[5];
  *(v15 + 11) = *(&v24[5] + 11);
  v10 = v24[0];
  v11 = v24[1];
  v8[0] = v1;
  v8[1] = 0;
  v9 = 1;
  v12 = v24[2];
  return sub_26460CD50(v8, &qword_27FF78910, &qword_264790D88);
}

uint64_t sub_26472F164@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  if (qword_27FF75260 != -1)
  {
    swift_once();
  }

  v40 = xmmword_27FF79078;
  sub_264613FC4();

  v10 = sub_264784E44();
  v12 = v11;
  v14 = v13;
  v37[1] = v15;
  sub_26472A600(v9);
  (*(v3 + 104))(v7, *MEMORY[0x277CDF3C0], v2);
  v16 = sub_264783F64();
  v17 = *(v3 + 8);
  v17(v7, v2);
  v17(v9, v2);
  if (v16)
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }

    v18 = qword_27FF792E0;
  }

  else
  {
    v18 = sub_264785204();
  }

  *&v40 = v18;
  v19 = sub_264784DF4();
  v21 = v20;
  v23 = v22;
  sub_26460ECC4(v10, v12, v14 & 1);

  sub_264784D84();
  v24 = sub_264784E24();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_26460ECC4(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v32 = sub_264785274();
  v33 = sub_264784D34();
  v34 = swift_getKeyPath();
  v35 = sub_2647849C4();
  v28 &= 1u;
  LOBYTE(v40) = v28;
  v39 = 0;
  v38 = 0;
  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v28;
  *(a1 + 24) = v30;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v32;
  *(a1 + 80) = v34;
  *(a1 + 88) = v33;
  *(a1 + 96) = v35;
  sub_26460C474(v24, v26, v28);

  sub_26460ECC4(v24, v26, v28);
}

uint64_t sub_26472F4F4@<X0>(void *a1@<X8>)
{
  if (qword_27FF75160 != -1)
  {
    swift_once();
  }

  HIDWORD(v78) = HIDWORD(qword_27FF78E78);
  v79 = unk_27FF78E80;
  sub_264613FC4();

  v1 = sub_264784E44();
  v3 = v2;
  v5 = v4;
  sub_264784CB4();
  v6 = sub_264784E24();
  v8 = v7;
  v10 = v9;

  sub_26460ECC4(v1, v3, v5 & 1);

  LODWORD(v78) = sub_2647849C4();
  v11 = sub_264784DF4();
  v33 = v12;
  v34 = v11;
  v14 = v13;
  v35 = v15;
  sub_26460ECC4(v6, v8, v10 & 1);

  sub_264785514();
  sub_264784314();
  v37 = v14 & 1;
  v101 = v14 & 1;
  if (qword_27FF75168 != -1)
  {
    swift_once();
  }

  HIDWORD(v78) = HIDWORD(qword_27FF78E88);
  v79 = qword_27FF78E90;

  v16 = sub_264784E44();
  v18 = v17;
  v20 = v19;
  sub_264784CB4();
  v21 = sub_264784E24();
  v23 = v22;
  v25 = v24;

  sub_26460ECC4(v16, v18, v20 & 1);

  LODWORD(v78) = sub_2647849C4();
  v26 = sub_264784DF4();
  v28 = v27;
  LOBYTE(v16) = v29;
  v31 = v30;
  sub_26460ECC4(v21, v23, v25 & 1);

  sub_264785514();
  sub_264784314();
  LOBYTE(v16) = v16 & 1;
  *&v46 = v34;
  *(&v46 + 1) = v33;
  LOBYTE(v47) = v37;
  *(&v47 + 1) = *v100;
  DWORD1(v47) = *&v100[3];
  *(&v47 + 1) = v35;
  v52 = v97;
  v53 = v98;
  v54 = v99;
  v48 = v93;
  v49 = v94;
  v50 = v95;
  v51 = v96;
  __src[6] = v97;
  __src[7] = v98;
  __src[8] = v99;
  __src[2] = v93;
  __src[3] = v94;
  __src[4] = v95;
  __src[5] = v96;
  __src[0] = v46;
  __src[1] = v47;
  *&v56 = v26;
  *(&v56 + 1) = v28;
  LOBYTE(v57) = v16;
  *(&v57 + 1) = *v91;
  DWORD1(v57) = *&v91[3];
  *(&v57 + 1) = v31;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v64 = v45;
  v58 = v39;
  v59 = v40;
  v60 = v41;
  *(&__src[16] + 8) = v44;
  *(&__src[17] + 8) = v45;
  *(&__src[9] + 8) = v56;
  *(&__src[10] + 8) = v57;
  *(&__src[14] + 8) = v42;
  *(&__src[13] + 8) = v41;
  *(&__src[12] + 8) = v40;
  *(&__src[11] + 8) = v39;
  v92 = v16;
  v55 = 256;
  LOWORD(__src[9]) = 256;
  v65 = 256;
  WORD4(__src[18]) = 256;
  *(&__src[15] + 8) = v43;
  memcpy(a1, __src, 0x12AuLL);
  v66[0] = v26;
  v66[1] = v28;
  v67 = v16;
  *v68 = *v91;
  *&v68[3] = *&v91[3];
  v69 = v31;
  v74 = v43;
  v75 = v44;
  v76 = v45;
  v70 = v39;
  v71 = v40;
  v72 = v41;
  v73 = v42;
  v77 = 256;
  sub_26460CCE8(&v46, &v78, &qword_27FF78920, &qword_264790D98);
  sub_26460CCE8(&v56, &v78, &qword_27FF78920, &qword_264790D98);
  sub_26460CD50(v66, &qword_27FF78920, &qword_264790D98);
  v78 = v34;
  v79 = v33;
  v80 = v37;
  *v81 = *v100;
  *&v81[3] = *&v100[3];
  v82 = v35;
  v87 = v97;
  v88 = v98;
  v89 = v99;
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v86 = v96;
  v90 = 256;
  return sub_26460CD50(&v78, &qword_27FF78920, &qword_264790D98);
}

uint64_t sub_26472FA10@<X0>(void *a1@<X8>)
{
  v20 = sub_2647845C4();
  LOBYTE(v21[0]) = 1;
  sub_26472FF28(&v49);
  v66 = v53;
  v67 = v54;
  v68 = v55;
  v62 = v49;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  v69[0] = v49;
  v69[1] = v50;
  v69[2] = v51;
  v69[3] = v52;
  v69[4] = v53;
  v69[5] = v54;
  v70 = v55;
  sub_26460CCE8(&v62, &v39, &qword_27FF78928, &qword_264790E00);
  sub_26460CD50(v69, &qword_27FF78928, &qword_264790E00);
  *(&v61[3] + 7) = v65;
  *(&v61[4] + 7) = v66;
  *(&v61[5] + 7) = v67;
  *(v61 + 7) = v62;
  *(&v61[1] + 7) = v63;
  *(&v61[6] + 7) = v68;
  *(&v61[2] + 7) = v64;
  if (qword_27FF75178 != -1)
  {
    swift_once();
  }

  v49 = xmmword_27FF78EA8;
  sub_264613FC4();

  v1 = sub_264784E44();
  v3 = v2;
  v5 = v4;
  sub_264784CB4();
  v6 = sub_264784E24();
  v8 = v7;
  v10 = v9;

  sub_26460ECC4(v1, v3, v5 & 1);

  LODWORD(v49) = sub_2647849C4();
  v11 = sub_264784DF4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_26460ECC4(v6, v8, v10 & 1);

  sub_264785514();
  sub_264784314();
  v60 = v15 & 1;
  v37[0] = v20;
  v37[1] = 0;
  LOBYTE(v38[0]) = 1;
  *(&v38[4] + 1) = v61[4];
  *(&v38[3] + 1) = v61[3];
  *(&v38[1] + 1) = v61[1];
  *(v38 + 1) = v61[0];
  *(&v38[5] + 1) = v61[5];
  v38[6] = *(&v61[5] + 15);
  *(&v38[2] + 1) = v61[2];
  *&__src[64] = v38[3];
  *&__src[80] = v38[4];
  *&__src[96] = v38[5];
  *&__src[112] = *(&v61[5] + 15);
  *__src = v20;
  *&__src[16] = v38[0];
  *&__src[32] = v38[1];
  *&__src[48] = v38[2];
  *&v39 = v11;
  *(&v39 + 1) = v13;
  LOBYTE(v40) = v15 & 1;
  DWORD1(v40) = *&v59[3];
  *(&v40 + 1) = *v59;
  *(&v40 + 1) = v17;
  v42 = v31;
  v41 = v30;
  v47 = v36;
  v46 = v35;
  v45 = v34;
  v43 = v32;
  v44 = v33;
  v48 = 256;
  *&__src[128] = v39;
  *&__src[144] = v40;
  *&__src[192] = v32;
  *&__src[208] = v33;
  *&__src[160] = v30;
  *&__src[176] = v31;
  *&__src[272] = 256;
  *&__src[240] = v35;
  *&__src[256] = v36;
  *&__src[224] = v34;
  memcpy(a1, __src, 0x112uLL);
  *&v49 = v11;
  *(&v49 + 1) = v13;
  LOBYTE(v50) = v15 & 1;
  *(&v50 + 1) = *v59;
  DWORD1(v50) = *&v59[3];
  *(&v50 + 1) = v17;
  v55 = v34;
  v56 = v35;
  v57 = v36;
  v51 = v30;
  v52 = v31;
  v53 = v32;
  v54 = v33;
  v58 = 256;
  sub_26460CCE8(v37, v21, &qword_27FF78930, &qword_264790E08);
  sub_26460CCE8(&v39, v21, &qword_27FF78920, &qword_264790D98);
  sub_26460CD50(&v49, &qword_27FF78920, &qword_264790D98);
  v26 = v61[3];
  v27 = v61[4];
  v28[0] = v61[5];
  *(v28 + 15) = *(&v61[5] + 15);
  v23 = v61[0];
  v24 = v61[1];
  v21[0] = v20;
  v21[1] = 0;
  v22 = 1;
  v25 = v61[2];
  return sub_26460CD50(v21, &qword_27FF78930, &qword_264790E08);
}

uint64_t sub_26472FF28@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF75170 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5;
  sub_264785164();
  v7 = sub_264784DF4();
  v9 = v8;
  v11 = v10;
  sub_26460ECC4(v2, v4, v6 & 1);

  sub_264784D84();
  v12 = sub_264784E24();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_26460ECC4(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v20 = sub_264785274();
  v21 = sub_264784D34();
  v22 = swift_getKeyPath();
  v23 = sub_264785164();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v20;
  *(a1 + 80) = v22;
  *(a1 + 88) = v21;
  *(a1 + 96) = v23;
  sub_26460C474(v12, v14, v16 & 1);

  sub_26460ECC4(v12, v14, v16 & 1);
}

uint64_t sub_264730160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A78, &qword_264790F60);
  v3 = *(v73 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v73);
  v66 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A80, &qword_264790F68);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v64 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A88, &qword_264790F70);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A90, &qword_264790F78);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v68 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v74 = &v64 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v72 = &v64 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v64 - v29;
  v31 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v32 = v77;
  v65 = v20;
  if (v77)
  {
    v33 = [v77 sessionState];

    if (v33 == 9)
    {
      goto LABEL_7;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v34 = v77;
  if (v77)
  {
    v35 = [v77 sessionState];

    if (v35 == 7)
    {
      goto LABEL_7;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v36 = v77;
  if (!v77)
  {
    goto LABEL_8;
  }

  v37 = [v77 sessionState];

  if (v37 == 14)
  {
LABEL_7:
    sub_26473111C(&unk_28761A9C8, sub_264735CDC, sub_264733260, v20);
    sub_26460E7E4(v20, v30, &qword_27FF78A88, &qword_264790F70);
    v38 = 0;
  }

  else
  {
LABEL_8:
    v38 = 1;
  }

  v39 = *(v17 + 56);
  v40 = 1;
  v75 = v30;
  v39(v30, v38, 1, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v41 = v77;
  v67 = v17 + 56;
  if (v77)
  {
    v42 = [v77 sessionState];

    v43 = v16;
    if (v42 == 7)
    {
      v44 = v66;
      sub_264730A90(&unk_28761A9F0, sub_264736038, sub_26473697C, v66);
      sub_26460E7E4(v44, v15, &qword_27FF78A78, &qword_264790F60);
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    v43 = v16;
  }

  v45 = *(v3 + 56);
  v46 = 1;
  v45(v15, v40, 1, v73);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v47 = v77;
  if (v77)
  {
    if ([v77 sessionState] == 9 && objc_msgSend(v47, sel_isTimerExtensionValid_, 900.0))
    {
      v48 = v66;
      sub_264730A90(&unk_28761AA40, sub_26473613C, sub_26473697C, v66);

      sub_26460E7E4(v48, v76, &qword_27FF78A78, &qword_264790F60);
      v46 = 0;
    }

    else
    {
    }
  }

  v49 = 1;
  v45(v76, v46, 1, v73);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v50 = v77;
  if (v77)
  {
    v51 = [v77 sessionState];

    v52 = v75;
    if (v51 == 4)
    {
      v53 = v65;
      sub_26473111C(&unk_28761AA68, sub_264736304, sub_264733ED8, v65);
      sub_26460E7E4(v53, v72, &qword_27FF78A88, &qword_264790F70);
      v49 = 0;
    }

    else
    {
      v49 = 1;
    }
  }

  else
  {
    v52 = v75;
  }

  v54 = v72;
  v39(v72, v49, 1, v43);
  v55 = v74;
  sub_26460CCE8(v52, v74, &qword_27FF78A90, &qword_264790F78);
  v56 = v69;
  sub_26460CCE8(v15, v69, &qword_27FF78A80, &qword_264790F68);
  v73 = v15;
  v57 = v76;
  v58 = v70;
  sub_26460CCE8(v76, v70, &qword_27FF78A80, &qword_264790F68);
  v59 = v68;
  sub_26460CCE8(v54, v68, &qword_27FF78A90, &qword_264790F78);
  v60 = v55;
  v61 = v71;
  sub_26460CCE8(v60, v71, &qword_27FF78A90, &qword_264790F78);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A98, &qword_264790F80);
  sub_26460CCE8(v56, v61 + v62[12], &qword_27FF78A80, &qword_264790F68);
  sub_26460CCE8(v58, v61 + v62[16], &qword_27FF78A80, &qword_264790F68);
  sub_26460CCE8(v59, v61 + v62[20], &qword_27FF78A90, &qword_264790F78);
  sub_26460CD50(v54, &qword_27FF78A90, &qword_264790F78);
  sub_26460CD50(v57, &qword_27FF78A80, &qword_264790F68);
  sub_26460CD50(v73, &qword_27FF78A80, &qword_264790F68);
  sub_26460CD50(v75, &qword_27FF78A90, &qword_264790F78);
  sub_26460CD50(v59, &qword_27FF78A90, &qword_264790F78);
  sub_26460CD50(v58, &qword_27FF78A80, &qword_264790F68);
  sub_26460CD50(v56, &qword_27FF78A80, &qword_264790F68);
  return sub_26460CD50(v74, &qword_27FF78A90, &qword_264790F78);
}

uint64_t sub_264730A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v57 = a2;
  v54 = a1;
  v5 = v4;
  v66 = a4;
  v6 = sub_264784354();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264784B04();
  v10 = *(v9 - 8);
  v61 = v9;
  v62 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LiveActivityView();
  v15 = v14 - 8;
  v50 = *(v14 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA0, &qword_264790F88);
  v18 = *(v17 - 8);
  v52 = v17;
  v53 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AF8, &qword_264790FC0);
  v56 = *(v59 - 8);
  v22 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v24 = &v49 - v23;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B00, &qword_264790FC8);
  v25 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v27 = &v49 - v26;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B08, &qword_264790FD0);
  v28 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v30 = &v49 - v29;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A78, &qword_264790F60);
  v31 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v33 = &v49 - v32;
  sub_26473413C(v5, &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v35 = swift_allocObject();
  sub_2647341A4(&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AB8, &unk_264790FA0);
  sub_264735D58();
  v36 = v24;
  sub_264785334();
  sub_264784AF4();
  sub_26460CDF0(&qword_27FF78AF0, &qword_27FF78AA0, &qword_264790F88);
  sub_2647365C0(&qword_27FF76C18, MEMORY[0x277CDE400]);
  v37 = v52;
  v38 = v61;
  sub_264784EC4();
  (*(v62 + 8))(v13, v38);
  (*(v53 + 8))(v21, v37);
  v39 = v63;
  if (*(v49 + *(v15 + 44)) == 1)
  {
    sub_264784324();
  }

  else
  {
    sub_264784344();
  }

  KeyPath = swift_getKeyPath();
  v41 = &v27[*(v51 + 36)];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77130, &unk_26478C410);
  (*(v64 + 32))(v41 + *(v42 + 28), v39, v65);
  *v41 = KeyPath;
  (*(v56 + 32))(v27, v36, v59);
  v43 = [objc_opt_self() darkTextColor];
  v44 = sub_264785134();
  sub_26460E7E4(v27, v30, &qword_27FF78B00, &qword_264790FC8);
  *&v30[*(v55 + 36)] = v44;
  if (qword_27FF75398 != -1)
  {
    swift_once();
  }

  v45 = qword_27FF792E0;
  v46 = swift_getKeyPath();
  sub_26460E7E4(v30, v33, &qword_27FF78B08, &qword_264790FD0);
  v47 = &v33[*(v58 + 36)];
  *v47 = v46;
  v47[1] = v45;
  sub_26460E7E4(v33, v66, &qword_27FF78A78, &qword_264790F60);
}

uint64_t sub_26473111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  v53 = a3;
  v49 = a1;
  v59 = a4;
  v5 = sub_264784354();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264784B04();
  v9 = *(v8 - 8);
  v54 = v8;
  v55 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264783F74();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LiveActivityView();
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA0, &qword_264790F88);
  v43 = *(v20 - 8);
  v44 = v20;
  v21 = *(v43 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA8, &qword_264790F90);
  v24 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v26 = &v42 - v25;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AB0, &qword_264790F98);
  v48 = *(v50 - 8);
  v27 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v29 = &v42 - v28;
  sub_26473413C(v4, &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v31 = swift_allocObject() + v30;
  v32 = v29;
  sub_2647341A4(&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AB8, &unk_264790FA0);
  sub_264735D58();
  sub_264785334();
  sub_26472A600(v15);
  sub_264733288(v15, v26);
  (*(v46 + 8))(v15, v47);
  (*(v43 + 8))(v23, v44);
  v33 = v51;
  sub_264784AF4();
  sub_264735E10();
  sub_2647365C0(&qword_27FF76C18, MEMORY[0x277CDE400]);
  v34 = v54;
  sub_264784EC4();
  (*(v55 + 8))(v33, v34);
  sub_26460CD50(v26, &qword_27FF78AA8, &qword_264790F90);
  v35 = v56;
  if (*(v4 + *(v17 + 44)) == 1)
  {
    sub_264784324();
  }

  else
  {
    sub_264784344();
  }

  KeyPath = swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A88, &qword_264790F70);
  v38 = v59;
  v39 = (v59 + *(v37 + 36));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77130, &unk_26478C410);
  (*(v57 + 32))(v39 + *(v40 + 28), v35, v58);
  *v39 = KeyPath;
  return (*(v48 + 32))(v38, v32, v50);
}

uint64_t sub_2647316B0@<X0>(int a1@<W1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789D8, &qword_264790E88);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v42 = &v40 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v41 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789E0, &qword_264790E90);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_264731AC4(a1, &v40 - v21, 900.0);
  v23 = a2;
  v24 = [a2 isTimerExtensionValid_];
  v45 = v20;
  v25 = a1;
  if (v24)
  {
    sub_264731AC4(a1 & 1, v20, 1800.0);
    sub_26460E7E4(v20, v14, &qword_27FF789E0, &qword_264790E90);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v16 + 56);
  v28 = 1;
  v29 = v14;
  v27(v14, v26, 1, v15);
  v30 = [v23 isTimerExtensionValid_];
  v31 = v41;
  if (v30)
  {
    v32 = v25 & 1;
    v33 = v45;
    sub_264731AC4(v32, v45, 3600.0);
    sub_26460E7E4(v33, v31, &qword_27FF789E0, &qword_264790E90);
    v28 = 0;
  }

  v27(v31, v28, 1, v15);
  v34 = v45;
  sub_26460CCE8(v22, v45, &qword_27FF789E0, &qword_264790E90);
  v35 = v42;
  sub_26460CCE8(v29, v42, &qword_27FF789D8, &qword_264790E88);
  v36 = v44;
  sub_26460CCE8(v31, v44, &qword_27FF789D8, &qword_264790E88);
  v37 = v43;
  sub_26460CCE8(v34, v43, &qword_27FF789E0, &qword_264790E90);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789E8, &qword_264790E98);
  sub_26460CCE8(v35, v37 + *(v38 + 48), &qword_27FF789D8, &qword_264790E88);
  sub_26460CCE8(v36, v37 + *(v38 + 64), &qword_27FF789D8, &qword_264790E88);
  sub_26460CD50(v31, &qword_27FF789D8, &qword_264790E88);
  sub_26460CD50(v29, &qword_27FF789D8, &qword_264790E88);
  sub_26460CD50(v22, &qword_27FF789E0, &qword_264790E90);
  sub_26460CD50(v36, &qword_27FF789D8, &qword_264790E88);
  sub_26460CD50(v35, &qword_27FF789D8, &qword_264790E88);
  return sub_26460CD50(v34, &qword_27FF789E0, &qword_264790E90);
}

uint64_t sub_264731AC4@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v48 = a1;
  v57 = a2;
  v5 = sub_264784354();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264784B04();
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264783F74();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LiveActivityView();
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789F0, &qword_264790EA0);
  v43 = *(v44 - 8);
  v20 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v22 = &v42 - v21;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789F8, &qword_264790EA8);
  v23 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v25 = &v42 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A00, &qword_264790EB0);
  v49 = *(v26 - 8);
  v50 = v26;
  v27 = *(v49 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v42 - v28;
  sub_26473413C(v3, &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  sub_2647341A4(&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
  v58 = v48;
  v59 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A08, &qword_264790EB8);
  sub_264735710();
  sub_264785334();
  v32 = v29;
  sub_26472A600(v15);
  sub_264732DB4(v15, v25);
  (*(v46 + 8))(v15, v47);
  (*(v43 + 8))(v22, v44);
  v33 = v51;
  sub_264784AF4();
  sub_264735940();
  sub_2647365C0(&qword_27FF76C18, MEMORY[0x277CDE400]);
  v34 = v52;
  sub_264784EC4();
  (*(v53 + 8))(v33, v34);
  sub_26460CD50(v25, &qword_27FF789F8, &qword_264790EA8);
  v35 = v54;
  if (*(v3 + *(v17 + 44)) == 1)
  {
    sub_264784324();
  }

  else
  {
    sub_264784344();
  }

  KeyPath = swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789E0, &qword_264790E90);
  v38 = v57;
  v39 = (v57 + *(v37 + 36));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77130, &unk_26478C410);
  (*(v55 + 32))(v39 + *(v40 + 28), v35, v56);
  *v39 = KeyPath;
  return (*(v49 + 32))(v38, v32, v50);
}

uint64_t sub_2647320A4(uint64_t a1, double a2)
{
  v4 = type metadata accessor for LiveActivityView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v12 = sub_264783E14();
  v13 = sub_2647859F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a2 / 60.0;
    _os_log_impl(&dword_264605000, v12, v13, "#Initiator, LiveActivity, User requested to add %f minutes to the session", v14, 0xCu);
    MEMORY[0x266740650](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v15 = *(a1 + 8);
  sub_26473413C(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_2647341A4(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  SessionViewModel.extendDurationSession(timeInterval:completion:)(sub_264735BE8, v17);
}

uint64_t sub_2647322E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_264785594();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2647855C4();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LiveActivityView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = a2 + *(MEMORY[0x28223BE20](v11 - 8) + 48);
  v15 = *(v14 + 8);
  (*v14)();
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v16 = sub_264785A44();
  sub_26473413C(a2, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  sub_2647341A4(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_264735C58;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_16;
  v19 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2647365C0(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v10, v6, v19);
  _Block_release(v19);

  (*(v22 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v21);
}

uint64_t sub_26473267C@<X0>(char a1@<W0>, _OWORD *a2@<X8>, double a3@<D0>)
{
  v6 = sub_264783B94();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_264785704();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2647856E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  if (a1)
  {
    sub_2647856D4();
    result = sub_2647856C4();
    v13 = a3 / 60.0;
    if (COERCE__INT64(fabs(a3 / 60.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          *&v97 = v13;
          sub_2647856A4();
          sub_2647856C4();
          sub_2647856F4();
          sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v15 = [objc_opt_self() bundleForClass_];
          sub_264783B84();
          *&v97 = sub_264785754();
          *(&v97 + 1) = v16;
          sub_264613FC4();
          v17 = sub_264784E44();
          v19 = v18;
          v21 = v20;
          sub_264784CB4();
          sub_264784D14();
          sub_264784D54();

          v22 = sub_264784E24();
          v60 = v24;
          v62 = v23;
          v26 = v25;

          sub_26460ECC4(v17, v19, v21 & 1);

          sub_264785504();
          sub_264784314();
          v96 = v26 & 1;
          v71 = v22;
          v72 = v62;
          v73 = v26 & 1;
          v74 = v60;
          v82 = 0;
          LOWORD(v83) = 257;
          sub_264735BE0(&v71);
LABEL_10:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A20, &unk_264790EC0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A30, &qword_264790ED0);
          sub_26473579C();
          sub_264735828();
          result = sub_264784874();
          v53 = v108;
          v54 = v110[0];
          a2[12] = v109;
          a2[13] = v54;
          *(a2 + 218) = *(v110 + 10);
          v55 = v106;
          a2[8] = v105;
          a2[9] = v55;
          a2[10] = v107;
          a2[11] = v53;
          v56 = v102;
          a2[4] = v101;
          a2[5] = v56;
          v57 = v104;
          a2[6] = v103;
          a2[7] = v57;
          v58 = v98;
          *a2 = v97;
          a2[1] = v58;
          v59 = v100;
          a2[2] = v99;
          a2[3] = v59;
          return result;
        }

        goto LABEL_15;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_2647856D4();
  result = sub_2647856C4();
  v27 = a3 / 60.0;
  if (COERCE__INT64(fabs(a3 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v27 < 9.22337204e18)
  {
    *&v97 = v27;
    sub_2647856A4();
    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v97 = sub_264785754();
    *(&v97 + 1) = v30;
    sub_264613FC4();
    v31 = sub_264784E44();
    v33 = v32;
    v35 = v34;
    sub_264784CB4();
    sub_264784D14();
    sub_264784D54();

    v36 = sub_264784E24();
    v61 = v37;
    v63 = v36;
    LOBYTE(v28) = v38;
    v40 = v39;

    sub_26460ECC4(v31, v33, v35 & 1);

    sub_264785504();
    sub_264784314();
    LOBYTE(v33) = v28 & 1;
    v94 = v28 & 1;
    LOBYTE(v28) = sub_264784C94();
    sub_264783F54();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v95 = 0;
    LOBYTE(v31) = sub_264784C24();
    sub_264783F54();
    v96 = 0;
    v71 = v63;
    v72 = v61;
    v73 = v33;
    v74 = v40;
    v79 = v68;
    v80 = v69;
    v81 = v70;
    v75 = v64;
    v76 = v65;
    v77 = v66;
    v78 = v67;
    LOBYTE(v82) = v28;
    v83 = v42;
    v84 = v44;
    v85 = v46;
    v86 = v48;
    v87 = 0;
    v88 = v31;
    v89 = v49;
    v90 = v50;
    v91 = v51;
    v92 = v52;
    v93 = 0;
    sub_264735BD4(&v71);
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_264732DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = sub_264785554();
  v36 = *(v40 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783F74();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A68, &qword_264790EE8);
  v10 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v33 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78A58, &qword_264790EE0);
  v13 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v33 - v14;
  v15 = v6 + 13;
  v16 = *MEMORY[0x277CDF3C0];
  v17 = v6[13];
  v17(v9);
  v43 = a1;
  LOBYTE(a1) = sub_264783F64();
  v18 = v6[1];
  v18(v9, v5);
  if (a1)
  {
    sub_2647851C4();
  }

  else
  {
    sub_264785194();
  }

  v19 = sub_2647851F4();

  KeyPath = swift_getKeyPath();
  v44 = v19;
  v21 = sub_2647840B4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789F0, &qword_264790EA0);
  (*(*(v22 - 8) + 16))(v12, v38, v22);
  v23 = &v12[*(v35 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  v34 = v17;
  (v17)(v9, v16, v5);
  LOBYTE(KeyPath) = sub_264783F64();
  v38 = v15;
  v24 = v18;
  v18(v9, v5);
  v25 = MEMORY[0x277CE13E8];
  if ((KeyPath & 1) == 0)
  {
    v25 = MEMORY[0x277CE13D0];
  }

  v26 = v36;
  v28 = v39;
  v27 = v40;
  (*(v36 + 104))(v39, *v25, v40);
  v29 = v42;
  (*(v26 + 32))(v42 + *(v37 + 36), v28, v27);
  sub_26460E7E4(v12, v29, &qword_27FF78A68, &qword_264790EE8);
  v34(v9, v16, v5);
  LOBYTE(v26) = sub_264783F64();
  v24(v9, v5);
  if (v26)
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }

    v30 = qword_27FF792E0;
  }

  else
  {
    v30 = sub_264785204();
  }

  v31 = v41;
  sub_26460E7E4(v42, v41, &qword_27FF78A58, &qword_264790EE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF789F8, &qword_264790EA8);
  *(v31 + *(result + 36)) = v30;
  return result;
}

uint64_t sub_264733288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_264785554();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264783F74();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AE8, &qword_264790FB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AD8, &qword_264790FB0);
  v15 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v37 - v16;
  v17 = *MEMORY[0x277CDF3C0];
  v18 = v7[13];
  v18(v10, v17, v6);
  v45 = a1;
  LOBYTE(a1) = sub_264783F64();
  v19 = v7[1];
  v19(v10, v6);
  if (a1)
  {
    v20 = sub_2647851C4();
  }

  else
  {
    v20 = sub_264785204();
  }

  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA0, &qword_264790F88);
  (*(*(v22 - 8) + 16))(v14, v39, v22);
  *&v14[*(v11 + 36)] = v21;
  v18(v10, v17, v6);
  LOBYTE(v21) = sub_264783F64();
  v19(v10, v6);
  if (v21)
  {
    sub_2647851C4();
  }

  else
  {
    sub_264785194();
  }

  v23 = sub_2647851F4();

  KeyPath = swift_getKeyPath();
  v46 = v23;
  v25 = sub_2647840B4();
  v26 = v14;
  v27 = v40;
  sub_26460E7E4(v26, v40, &qword_27FF78AE8, &qword_264790FB8);
  v28 = (v27 + *(v38 + 36));
  *v28 = KeyPath;
  v28[1] = v25;
  v18(v10, v17, v6);
  v29 = sub_264783F64();
  v19(v10, v6);
  v30 = MEMORY[0x277CE13E8];
  if ((v29 & 1) == 0)
  {
    v30 = MEMORY[0x277CE13D0];
  }

  v32 = v41;
  v31 = v42;
  v33 = v43;
  (*(v42 + 104))(v41, *v30, v43);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78AA8, &qword_264790F90);
  v35 = v44;
  (*(v31 + 32))(v44 + *(v34 + 36), v32, v33);
  return sub_26460E7E4(v27, v35, &qword_27FF78AD8, &qword_264790FB0);
}

uint64_t sub_2647336C8(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v10 = sub_264783E14();
  v11 = sub_2647859F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_264605000, v10, v11, "#Initiator, LiveActivity, User requested session extension", v12, 2u);
    MEMORY[0x266740650](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v13 = *(a1 + 8);
  sub_26473413C(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_2647341A4(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  SessionViewModel.safeResponseToTriggerPrompt(with:)(sub_2647360CC, v15);
}

uint64_t sub_2647338E4(void *a1, uint64_t a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_264783DF4();
    v10 = a1;
    v11 = sub_264783E14();
    v12 = sub_2647859D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v16 = sub_264785EF4();
      v18 = sub_2646DF234(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_264605000, v11, v12, "#Initiator, LiveActivity, safeResponseToTriggerPrompt error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266740650](v15, -1, -1);
      v19 = v14;
      a2 = v23;
      MEMORY[0x266740650](v19, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
  }

  v20 = a2 + *(type metadata accessor for LiveActivityView() + 40);
  v21 = *(v20 + 8);
  return (*v20)();
}

uint64_t sub_264733B24(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LiveActivityView() + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  return sub_264785304();
}

uint64_t sub_264733B98(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v9 = sub_264783E14();
  v10 = sub_2647859F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_264605000, v9, v10, "#Initiator, LiveActivity, User requested to end the session", v11, 2u);
    MEMORY[0x266740650](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2(*(a1 + 8));
}

uint64_t sub_264733CE8(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_264783DF4();
    v9 = a1;
    v10 = sub_264783E14();
    v11 = sub_2647859D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_264785EF4();
      v16 = sub_2646DF234(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_264605000, v10, v11, "#Initiator, LiveActivity, end session error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x266740650](v13, -1, -1);
      MEMORY[0x266740650](v12, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

__n128 sub_264733F00@<Q0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    v34 = a2;
    swift_once();
    a2 = v34;
  }

  v35 = *a2;
  sub_264613FC4();

  v4 = sub_264784E44();
  v6 = v5;
  v8 = v7;
  sub_264784CB4();
  sub_264784D14();
  sub_264784D54();

  v9 = sub_264784E24();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_26460ECC4(v4, v6, v8 & 1);

  sub_264785504();
  sub_264784314();
  LOBYTE(v4) = sub_264784C94();
  sub_264783F54();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v6) = sub_264784C24();
  sub_264783F54();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  KeyPath = swift_getKeyPath();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 96) = v39;
  *(a3 + 112) = v40;
  *(a3 + 128) = v41;
  *(a3 + 32) = v35;
  *(a3 + 48) = v36;
  result = v38;
  *(a3 + 64) = v37;
  *(a3 + 80) = v38;
  *(a3 + 144) = v4;
  *(a3 + 152) = v17;
  *(a3 + 160) = v19;
  *(a3 + 168) = v21;
  *(a3 + 176) = v23;
  *(a3 + 184) = 0;
  *(a3 + 192) = v6;
  *(a3 + 200) = v25;
  *(a3 + 208) = v27;
  *(a3 + 216) = v29;
  *(a3 + 224) = v31;
  *(a3 + 232) = 0;
  *(a3 + 240) = KeyPath;
  *(a3 + 248) = 1;
  *(a3 + 256) = 0;
  return result;
}

uint64_t sub_26473413C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2647341A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264734220()
{
  result = qword_27FF787C8;
  if (!qword_27FF787C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78780, &qword_264790AE8);
    sub_2647342D8();
    sub_26460CDF0(&qword_27FF76B00, &qword_27FF76B08, &unk_26478B650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF787C8);
  }

  return result;
}

unint64_t sub_2647342D8()
{
  result = qword_27FF787D0;
  if (!qword_27FF787D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787C0, &unk_264790B28);
    sub_264734364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF787D0);
  }

  return result;
}

unint64_t sub_264734364()
{
  result = qword_27FF787D8;
  if (!qword_27FF787D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787B8, &qword_264790B20);
    sub_2647343F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF787D8);
  }

  return result;
}

unint64_t sub_2647343F0()
{
  result = qword_27FF787E0;
  if (!qword_27FF787E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787B0, &qword_264790B18);
    sub_26460CDF0(&qword_27FF787E8, &qword_27FF78778, &qword_264790AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF787E0);
  }

  return result;
}

uint64_t sub_264734530(uint64_t *a1)
{
  v3 = *(type metadata accessor for LiveActivityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26472D45C(a1, v4);
}

unint64_t sub_2647345A0()
{
  result = qword_27FF78810;
  if (!qword_27FF78810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78798, &qword_264790B00);
    sub_264734658();
    sub_26460CDF0(&qword_27FF78860, &qword_27FF78808, &qword_264790BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78810);
  }

  return result;
}

unint64_t sub_264734658()
{
  result = qword_27FF78818;
  if (!qword_27FF78818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78800, &qword_264790BD8);
    sub_264734710();
    sub_26460CDF0(&qword_27FF78850, &qword_27FF78858, &qword_264790BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78818);
  }

  return result;
}

unint64_t sub_264734710()
{
  result = qword_27FF78820;
  if (!qword_27FF78820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787F8, &qword_264790BD0);
    sub_2647347C8();
    sub_26460CDF0(&qword_27FF78840, &qword_27FF78848, &qword_264790BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78820);
  }

  return result;
}

unint64_t sub_2647347C8()
{
  result = qword_27FF78828;
  if (!qword_27FF78828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF787F0, &qword_264790BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78790, &qword_264790AF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78788, &qword_264790AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78780, &qword_264790AE8);
    sub_264734220();
    swift_getOpaqueTypeConformance2();
    sub_264667DA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF78830, &qword_27FF78838, &qword_264790BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78828);
  }

  return result;
}

uint64_t sub_264734984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78868, &qword_264790C58);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_264734AD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78868, &qword_264790C58);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_264734C10()
{
  sub_2646A0F00();
  if (v0 <= 0x3F)
  {
    sub_264734D34();
    if (v1 <= 0x3F)
    {
      sub_264734DC8(319, &qword_27FF78888, MEMORY[0x277CDF708]);
      if (v2 <= 0x3F)
      {
        sub_264734DC8(319, &qword_27FF75978, MEMORY[0x277CDF3E0]);
        if (v3 <= 0x3F)
        {
          sub_2646A1028();
          if (v4 <= 0x3F)
          {
            sub_264613E28();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_264734D34()
{
  if (!qword_27FF78880)
  {
    type metadata accessor for DeviceLockMonitor();
    sub_2647365C0(&qword_27FF78770, type metadata accessor for DeviceLockMonitor);
    v0 = sub_2647841A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF78880);
    }
  }
}

void sub_264734DC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264783F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_264734E20()
{
  result = qword_27FF78890;
  if (!qword_27FF78890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78898, &unk_264790C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78798, &qword_264790B00);
    sub_2647345A0();
    swift_getOpaqueTypeConformance2();
    sub_2647365C0(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78890);
  }

  return result;
}

uint64_t sub_264734F20(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264734FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_26473509C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, char *)@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767C0, &qword_26478AC80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78B58, &qword_264791050);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v15, v10);
    result = (*(v7 + 8))(v10, v6);
    *a3 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2647351F8()
{
  result = qword_27FF788C0;
  if (!qword_27FF788C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF788B8, &qword_264790D50);
    sub_26460CDF0(&qword_27FF788C8, &qword_27FF788D0, &qword_264790D58);
    sub_26460CDF0(&qword_27FF788D8, &qword_27FF788E0, &qword_264790D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF788C0);
  }

  return result;
}

unint64_t sub_2647352FC()
{
  result = qword_27FF789A0;
  if (!qword_27FF789A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78998, &qword_264790E70);
    sub_26460CDF0(&qword_27FF789A8, &qword_27FF789B0, &qword_264790E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF789A0);
  }

  return result;
}

unint64_t sub_2647353AC()
{
  result = qword_27FF789B8;
  if (!qword_27FF789B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78988, &qword_264790E60);
    sub_264735430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF789B8);
  }

  return result;
}

unint64_t sub_264735430()
{
  result = qword_27FF789C0;
  if (!qword_27FF789C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78980, &qword_264790E58);
    sub_26460CDF0(&qword_27FF789C8, &qword_27FF789D0, &qword_264790E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF789C0);
  }

  return result;
}

uint64_t sub_2647354E0()
{
  v1 = type metadata accessor for LiveActivityView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78768, &qword_264790AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_264784134();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_264783F74();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = *(v5 + v1[8] + 8);

  v15 = *(v5 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2647356A0()
{
  v1 = *(type metadata accessor for LiveActivityView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2647320A4(v3, v2);
}

unint64_t sub_264735710()
{
  result = qword_27FF78A10;
  if (!qword_27FF78A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A08, &qword_264790EB8);
    sub_26473579C();
    sub_264735828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A10);
  }

  return result;
}

unint64_t sub_26473579C()
{
  result = qword_27FF78A18;
  if (!qword_27FF78A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A20, &unk_264790EC0);
    sub_26465D720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A18);
  }

  return result;
}

unint64_t sub_264735828()
{
  result = qword_27FF78A28;
  if (!qword_27FF78A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A30, &qword_264790ED0);
    sub_2647358B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A28);
  }

  return result;
}

unint64_t sub_2647358B4()
{
  result = qword_27FF78A38;
  if (!qword_27FF78A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A40, &qword_264790ED8);
    sub_26465D720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A38);
  }

  return result;
}

unint64_t sub_264735940()
{
  result = qword_27FF78A48;
  if (!qword_27FF78A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF789F8, &qword_264790EA8);
    sub_2647359F8();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A48);
  }

  return result;
}

unint64_t sub_2647359F8()
{
  result = qword_27FF78A50;
  if (!qword_27FF78A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A58, &qword_264790EE0);
    sub_264735A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A50);
  }

  return result;
}

unint64_t sub_264735A84()
{
  result = qword_27FF78A60;
  if (!qword_27FF78A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78A68, &qword_264790EE8);
    sub_26460CDF0(&qword_27FF78A70, &qword_27FF789F0, &qword_264790EA0);
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78A60);
  }

  return result;
}

uint64_t sub_264735BE8(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2647322E8(a1, v4);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264735D58()
{
  result = qword_27FF78AC0;
  if (!qword_27FF78AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78AB8, &unk_264790FA0);
    sub_264735828();
    sub_26460CDF0(&qword_27FF76CE0, &qword_27FF76CE8, &qword_26478B910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78AC0);
  }

  return result;
}

unint64_t sub_264735E10()
{
  result = qword_27FF78AC8;
  if (!qword_27FF78AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78AA8, &qword_264790F90);
    sub_264735E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78AC8);
  }

  return result;
}

unint64_t sub_264735E9C()
{
  result = qword_27FF78AD0;
  if (!qword_27FF78AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78AD8, &qword_264790FB0);
    sub_264735F54();
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78AD0);
  }

  return result;
}

unint64_t sub_264735F54()
{
  result = qword_27FF78AE0;
  if (!qword_27FF78AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78AE8, &qword_264790FB8);
    sub_26460CDF0(&qword_27FF78AF0, &qword_27FF78AA0, &qword_264790F88);
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78AE0);
  }

  return result;
}

uint64_t sub_264736050(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LiveActivityView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2647360CC(void *a1)
{
  v3 = *(type metadata accessor for LiveActivityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2647338E4(a1, v4);
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for LiveActivityView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78768, &qword_264790AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_264784134();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_264783F74();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = *(v5 + v1[8] + 8);

  v15 = *(v5 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26473631C()
{
  v1 = type metadata accessor for LiveActivityView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78768, &qword_264790AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_264784134();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_264783F74();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = *(v5 + v1[8] + 8);

  v15 = *(v5 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_2647364E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_26472E408(v4, v5, a1);
}

uint64_t sub_264736580()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2647365C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264736608()
{
  result = qword_27FF78B70;
  if (!qword_27FF78B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78B68, &qword_264791060);
    sub_2647366C0();
    sub_26460CDF0(&qword_27FF76CE0, &qword_27FF76CE8, &qword_26478B910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78B70);
  }

  return result;
}

unint64_t sub_2647366C0()
{
  result = qword_27FF78B78;
  if (!qword_27FF78B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78920, &qword_264790D98);
    sub_26465D720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78B78);
  }

  return result;
}

unint64_t sub_264736754()
{
  result = qword_27FF78B88;
  if (!qword_27FF78B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78B60, &qword_264791058);
    sub_264736608();
    sub_26460CDF0(&qword_27FF78B90, &qword_27FF78B80, &qword_264791098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78B88);
  }

  return result;
}

unint64_t sub_26473680C()
{
  result = qword_27FF78BA8;
  if (!qword_27FF78BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78BA0, &qword_2647910A8);
    sub_26460CDF0(&qword_27FF78BB0, &qword_27FF78BB8, &qword_2647910B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78BA8);
  }

  return result;
}

unint64_t sub_2647368C4()
{
  result = qword_27FF78BC8;
  if (!qword_27FF78BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78BC0, &qword_2647910B8);
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78BC8);
  }

  return result;
}

uint64_t sub_2647369B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  type metadata accessor for MessagesCache();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_27FF807E0 = result;
  return result;
}

uint64_t sub_264736A04()
{

  return swift_deallocClassInstance();
}

uint64_t CachedGeocoder.placemark(forKey:with:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = sub_264783E24();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264736B8C, 0, 0);
}

uint64_t sub_264736B8C()
{
  receiver = v0[5].receiver;
  v2 = v0[4].receiver;
  v3 = type metadata accessor for CachedGeocoder.CacheKey();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder8CacheKey_location] = v2;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[9].super_class = v6;
  v7 = receiver[2];
  v8 = [v7 objectForKey_];
  v0[10].receiver = v8;
  if (v8)
  {
    v9 = &v8[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder13GeocodeStatus_state];
    v10 = *&v8[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder13GeocodeStatus_state];
    v0[10].super_class = v10;
    v11 = v0[4].receiver;
    if (v9[8])
    {
      v12 = v8;
      v13 = v0[9].receiver;
      sub_264738B00(v10, 1);
      v14 = v10;
      sub_264783E04();
      v15 = v11;
      v16 = sub_264783E14();
      v17 = sub_2647859F4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v0[4].receiver;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138739971;
        *(v19 + 4) = v18;
        *v20 = v18;
        v21 = v18;
        _os_log_impl(&dword_264605000, v16, v17, "#CachedGeocoder: cache hit for %{sensitive}@", v19, 0xCu);
        sub_26460CD50(v20, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v20, -1, -1);
        MEMORY[0x266740650](v19, -1, -1);

        sub_264738AF4(v10, 1);
      }

      else
      {

        sub_264738AF4(v10, 1);
      }

      (*(v0[6].super_class + 1))(v0[9].receiver, v0[6].receiver);
      super_class = v0[8].super_class;
      v69 = v0[9].receiver;
      v72 = v0[7].super_class;
      v71 = v0[8].receiver;
      v73 = v0[7].receiver;
      v74 = v0[5].super_class;

      v75 = v0->super_class;

      return v75(v10);
    }

    v56 = v0[8].super_class;

    sub_264783E04();
    v57 = v11;
    v58 = sub_264783E14();
    v59 = sub_2647859F4();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = v0[4].receiver;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138739971;
      *(v61 + 4) = v60;
      *v62 = v60;
      v63 = v60;
      _os_log_impl(&dword_264605000, v58, v59, "#CachedGeocoder: awaiting task completion for %{sensitive}@", v61, 0xCu);
      sub_26460CD50(v62, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v62, -1, -1);
      MEMORY[0x266740650](v61, -1, -1);
    }

    v64 = v0[8].super_class;
    v65 = v0[6].receiver;
    v66 = v0[6].super_class;

    (*(v66 + 1))(v64, v65);
    v67 = *(MEMORY[0x277D857C8] + 4);
    v68 = swift_task_alloc();
    v0[11].receiver = v68;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    *v68 = v0;
    v68[1] = sub_26473727C;
    v53 = MEMORY[0x277D84950];
    v54 = (v0 + 56);
    v55 = v10;
  }

  else
  {
    v77 = v7;
    v22 = v0[8].receiver;
    v23 = v0[4].receiver;
    sub_264783E04();
    v24 = v23;
    v25 = sub_264783E14();
    v26 = sub_2647859F4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[4].receiver;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138739971;
      *(v28 + 4) = v27;
      *v29 = v27;
      v30 = v27;
      _os_log_impl(&dword_264605000, v25, v26, "#CachedGeocoder: cache miss for %{sensitive}@", v28, 0xCu);
      sub_26460CD50(v29, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v29, -1, -1);
      MEMORY[0x266740650](v28, -1, -1);
    }

    v31 = v0[8].receiver;
    v33 = v0[6].receiver;
    v32 = v0[6].super_class;
    v35 = v0[5].receiver;
    v34 = v0[5].super_class;
    v36 = v0[4].receiver;
    v37 = v0[4].super_class;

    v38 = *(v32 + 1);
    v0[12].receiver = v38;
    v0[12].super_class = ((v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v38(v31, v33);
    sub_2647858C4();
    v39 = sub_2647858E4();
    (*(*(v39 - 8) + 56))(v34, 0, 1, v39);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v37;
    v40[5] = v36;
    v40[6] = v35;
    v40[7] = v6;
    v41 = v36;
    v42 = v37;

    v43 = v6;
    v44 = sub_26473866C(0, 0, v34, &unk_2647910F0, v40);
    v0[13].receiver = v44;
    v45 = type metadata accessor for CachedGeocoder.GeocodeStatus();
    v46 = objc_allocWithZone(v45);
    v47 = &v46[OBJC_IVAR____TtCC15SafetyMonitorUI14CachedGeocoder13GeocodeStatus_state];
    *v47 = v44;
    v47[8] = 0;
    v0[2].receiver = v46;
    v0[2].super_class = v45;

    v48 = objc_msgSendSuper2(v0 + 2, sel_init);
    v0[13].super_class = v48;
    [v77 setObject:v48 forKey:v43];
    v49 = *(MEMORY[0x277D857C8] + 4);
    v50 = swift_task_alloc();
    v0[14].receiver = v50;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    *v50 = v0;
    v50[1] = sub_26473745C;
    v53 = MEMORY[0x277D84950];
    v54 = v0 + 3;
    v55 = v44;
  }

  return MEMORY[0x282200430](v54, v55, v51, v52, v53);
}