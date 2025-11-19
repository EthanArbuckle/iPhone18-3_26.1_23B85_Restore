uint64_t sub_22CF301D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_22CF4412C(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_22CF4412C((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_22CF30354(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_lock) + 16);
  os_unfair_lock_lock(v3);
  *(a2 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_pendingAck) = 0;
  v4 = *(a2 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_bufferedProminenceUpdate);
  *(a2 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_bufferedProminenceUpdate) = 0;
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    sub_22CF2FA4C(v4);
  }

  return sub_22D01562C();
}

uint64_t sub_22CF303E4(uint64_t a1)
{
  v3 = sub_22D0164CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D01653C();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v23, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for PowerLog.UpdateEvent(0);
  v15 = *(updated - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](updated - 8, v17);
  v22[1] = *(v1 + 16);
  sub_22CF199C0(a1, v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PowerLog.UpdateEvent);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  sub_22CF19A28(v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PowerLog.UpdateEvent);
  aBlock[4] = sub_22CF311BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);
  sub_22D0164EC();
  v24 = MEMORY[0x277D84F90];
  sub_22CF1A11C(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v13, v8, v20);
  _Block_release(v20);
  (*(v4 + 8))(v8, v3);
  (*(v9 + 8))(v13, v23);
}

uint64_t sub_22CF30760(uint64_t *a1)
{
  v2 = sub_22D0152EC();
  v119 = *(v2 - 8);
  v120 = v2;
  v3 = *(v119 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v118 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v117 = &v109 - v8;
  v9 = sub_22D01436C();
  v123 = *(v9 - 8);
  v124 = v9;
  v10 = *(v123 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v122 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityManagerEvent(0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v127 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v134 = &v109 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v126 = (&v109 - v23);
  v24 = sub_22D01637C();
  v130 = *(v24 - 8);
  v131 = v24;
  v25 = *(v130 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v128 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v135 = &v109 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A58, &qword_22D019788);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v35 = &v109 - v34;
  v36 = sub_22D01525C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v125 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8, v43);
  v45 = &v109 - v44;
  v46 = *a1;
  v47 = a1[1];
  v48 = *(a1 + *(v14 + 28));
  v50 = v48 == 2 || v48 == 4;
  v116 = v50;
  v121 = type metadata accessor for Activity();
  v51 = a1 + *(v121 + 56);
  sub_22D01462C();
  v52 = sub_22D0150CC();
  v129 = (*(*(v52 - 8) + 48))(v45, 1, v52);
  sub_22CEEC3D8(v45, &qword_27D9F2308, &unk_22D018950);
  v53 = *(v136 + 16);
  v54 = *(v136 + 24);
  ObjectType = swift_getObjectType();
  v132 = v47;
  v133 = v46;
  sub_22D0152BC();
  v56 = *(v37 + 48);
  v136 = v36;
  if (v56(v35, 1, v36) == 1)
  {
    return sub_22CEEC3D8(v35, &qword_27D9F2A58, &qword_22D019788);
  }

  v113 = ObjectType;
  v114 = v53;
  v115 = v54;
  v58 = v125;
  (*(v37 + 32))(v125, v35, v136);
  sub_22D01635C();
  v59 = v126;
  sub_22CF1C1C8(a1, v126);
  sub_22CF1C1C8(a1, v134);
  v60 = sub_22D01636C();
  v61 = sub_22D01690C();
  v62 = a1;
  if (os_log_type_enabled(v60, v61))
  {
    v63 = v129 != 1;
    v112 = v37;
    v64 = swift_slowAlloc();
    v111 = a1;
    v65 = v64;
    v110 = swift_slowAlloc();
    v137[0] = v110;
    *v65 = 67110146;
    *(v65 + 4) = v48 == 3;
    *(v65 + 8) = 1024;
    *(v65 + 10) = v116;
    *(v65 + 14) = 1024;
    *(v65 + 16) = v63;
    *(v65 + 20) = 2082;
    v66 = *v59;
    v67 = v59[1];

    sub_22CF0D34C(v59);
    v68 = sub_22CEEE31C(v66, v67, v137);

    *(v65 + 22) = v68;
    *(v65 + 30) = 2082;
    v69 = v134;
    v70 = v134 + *(v121 + 56);
    v71 = v58;
    v72 = v122;
    sub_22D01466C();
    sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0]);
    v73 = v124;
    v74 = sub_22D016DEC();
    v76 = v75;
    v77 = v72;
    v58 = v71;
    (*(v123 + 8))(v77, v73);
    sub_22CF0D34C(v69);
    v78 = sub_22CEEE31C(v74, v76, v137);
    v37 = v112;

    *(v65 + 32) = v78;
    _os_log_impl(&dword_22CEE1000, v60, v61, "AlertParticipant is checking for a possible alert to dismiss; activityUpdated:%{BOOL}d; activityStoppedOrDiscarded:%{BOOL}d hasNewAlertConfiguration:%{BOOL}d %{public}s.%{public}s", v65, 0x28u);
    v79 = v110;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v79, -1, -1);
    v62 = v111;
    MEMORY[0x2318C6860](v65, -1, -1);
  }

  else
  {

    sub_22CF0D34C(v134);
    sub_22CF0D34C(v59);
  }

  v80 = v135;
  v135 = *(v130 + 8);
  (v135)(v80, v131);
  v81 = v127;
  v82 = v133;
  if (v48 == 3)
  {
    v83 = v117;
    sub_22D01521C();
    v85 = v119;
    v84 = v120;
    v86 = v81;
    v87 = v58;
    v88 = v118;
    (*(v119 + 104))(v118, *MEMORY[0x277D4D430], v120);
    v89 = sub_22D0152DC();
    v90 = *(v85 + 8);
    v91 = v88;
    v58 = v87;
    v81 = v86;
    v90(v91, v84);
    v92 = v83;
    v82 = v133;
    v90(v92, v84);
    if ((v89 & 1) != 0 || v129 != 1)
    {
      goto LABEL_19;
    }
  }

  else if (v129 != 1 || v48 == 4 || v48 == 2)
  {
LABEL_19:
    v93 = v128;
    sub_22D01635C();
    sub_22CF1C1C8(v62, v81);

    v94 = sub_22D01636C();
    v95 = sub_22D01690C();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v137[0] = v134;
      *v96 = 136446466;
      *(v96 + 4) = sub_22CEEE31C(v82, v132, v137);
      *(v96 + 12) = 2082;
      v97 = v81 + *(v121 + 56);
      v98 = v81;
      v99 = v122;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0]);
      v100 = v58;
      v101 = v124;
      v102 = sub_22D016DEC();
      v103 = v37;
      v105 = v104;
      (*(v123 + 8))(v99, v101);
      sub_22CF0D34C(v98);
      v106 = sub_22CEEE31C(v102, v105, v137);
      v37 = v103;
      v58 = v100;

      *(v96 + 14) = v106;
      _os_log_impl(&dword_22CEE1000, v94, v95, "Dismissing latest alert for activity update: %{public}s.%{public}s", v96, 0x16u);
      v107 = v134;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v107, -1, -1);
      MEMORY[0x2318C6860](v96, -1, -1);

      v108 = v128;
    }

    else
    {

      sub_22CF0D34C(v81);
      v108 = v93;
    }

    (v135)(v108, v131);
    sub_22D01529C();
  }

  return (*(v37 + 8))(v58, v136);
}

void sub_22CF311E8()
{
  v0 = sub_22D01666C();
  sub_22CF31290();
  v1 = sub_22D0165CC();

  PLLogRegisteredEvent();
}

unint64_t sub_22CF31290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D019D50;
  *(inited + 32) = 0x6D617473656D6974;
  *(inited + 40) = 0xE900000000000070;
  v2 = sub_22D01426C();
  v3 = sub_22CEE82F8(0, &qword_28143D900, 0x277CBEAA8);
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x800000022D01E850;
  updated = type metadata accessor for PowerLog.UpdateEvent(0);
  v5 = (v0 + updated[6]);
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_22D01666C();
  v9 = sub_22CEE82F8(0, &qword_28143D8F0, 0x277CCACA8);
  *(inited + 96) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x4449656C646E7562;
  *(inited + 136) = 0xE800000000000000;
  v10 = (v0 + updated[5]);
  v11 = *v10;
  v12 = v10[1];
  *(inited + 144) = sub_22D01666C();
  *(inited + 168) = v9;
  *(inited + 176) = 0x656372756F73;
  *(inited + 184) = 0xE600000000000000;
  v13 = MEMORY[0x277D83B88];
  *(inited + 192) = *(v0 + updated[7]);
  *(inited + 216) = v13;
  strcpy((inited + 224), "pushPriority");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v14 = 5;
  if (*(v0 + updated[8]))
  {
    v14 = 10;
  }

  *(inited + 240) = v14;
  *(inited + 264) = v13;
  *(inited + 272) = 0x7472656C417369;
  *(inited + 280) = 0xE700000000000000;
  v15 = MEMORY[0x277D839B0];
  *(inited + 288) = *(v0 + updated[9]);
  *(inited + 312) = v15;
  *(inited + 320) = 0x6574617473;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = *(v0 + updated[10]) + 1;
  *(inited + 360) = v13;
  *(inited + 368) = 0x6E6F73616572;
  *(inited + 376) = 0xE600000000000000;
  v16 = *(v0 + updated[12]);
  *(inited + 408) = v13;
  *(inited + 384) = v16;
  v17 = sub_22CF11C44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_22CF315DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v28 = a2;
  v27 = a1;
  v5 = sub_22D01486C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v26 - v18;
  if (a4 >> 60 == 15 || (v20 = sub_22D0141DC()) == 0)
  {
    v23 = sub_22D0146BC();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  }

  else
  {
    v21 = v20;
    v22 = sub_22D0146BC();
    sub_22CEE83DC(&qword_28143F6E8, MEMORY[0x277CB9250]);
    sub_22D01516C();

    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  }

  sub_22CEF0368(v16, v19, &qword_27D9F22F8, &unk_22D018940);
  v24 = sub_22D0141DC();
  sub_22CEE83DC(&qword_2814439E0, MEMORY[0x277CB9378]);
  sub_22D01516C();

  sub_22CF318C8(v27, v28, v19, v10);
  (*(v6 + 8))(v10, v5);
  return sub_22CEEC3D8(v19, &qword_27D9F22F8, &unk_22D018940);
}

uint64_t sub_22CF318C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v22 - v12;
  v14 = sub_22D01483C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = a3;
    sub_22CEE84BC([*(v4 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess]);
    (*(v15 + 104))(v13, *MEMORY[0x277CB9348], v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    (*(v15 + 32))(v19, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22D0187A0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_22CF31C20(inited, v19, a4, v22);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_22CEE5804(inited + 32);
    return (*(v15 + 8))(v19, v14);
  }

  return result;
}

void sub_22CF31C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v137 = a3;
  v138 = a4;
  v122 = a2;
  v136 = type metadata accessor for ActivityParticipantEvent(0);
  v7 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136, v8);
  v10 = (&v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = sub_22D01436C();
  v11 = *(v111 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v111, v13);
  v110 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_22D01483C();
  v15 = *(v148 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v148, v17);
  v121 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v120 = &v107 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v135 = &v107 - v24;
  v139 = sub_22D0146BC();
  v25 = *(v139 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v139, v27);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v134 = &v107 - v32;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v33 = *(*(v133 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v133, v34);
  v132 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v141 = &v107 - v38;
  v39 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2328, &qword_22D019B80);
  v146 = v5;
  v131 = v39;
  sub_22D01699C();
  v140 = v149[0];
  if (v149[0])
  {
    v40 = *(a1 + 16);
    if (v40)
    {
      v145 = 0;
      v119 = v30;
      v41 = v149[1];
      ObjectType = swift_getObjectType();
      v129 = ObjectType;
      v130 = v41;
      v127 = *(v41 + 24);
      v128 = v41 + 24;
      v126 = (v25 + 48);
      v118 = (v25 + 32);
      v117 = (v25 + 16);
      v144 = (v15 + 16);
      v125 = (v15 + 8);
      v116 = (v25 + 8);
      v109 = (v11 + 8);
      v44 = (a1 + 40);
      *&v45 = 136446467;
      v108 = v45;
      *&v45 = 136446723;
      v107 = v45;
      v46 = v122;
      v47 = v139;
      do
      {
        v143 = v40;
        v50 = *(v44 - 1);
        v49 = *v44;
        MEMORY[0x28223BE20](ObjectType, v43);
        v56 = v146;
        *(&v107 - 4) = v138;
        *(&v107 - 3) = v56;
        *(&v107 - 2) = v50;
        *(&v107 - 1) = v49;

        v57 = v145;
        sub_22D01699C();
        v145 = v57;
        v58 = v141;
        v59 = v132;
        sub_22CF32F64(v141, v132);
        v60 = (*v126)(v59, 1, v47);
        v142 = v144 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        if (v60 == 1)
        {
          v61 = v49;
          v62 = v50;
          sub_22CEEC3D8(v59, &qword_27D9F22F8, &unk_22D018940);
          v63 = v121;
          if (qword_28143FB58 != -1)
          {
            swift_once();
          }

          v64 = sub_22D01637C();
          __swift_project_value_buffer(v64, qword_281444498);
          v147 = *v144;
          v147(v63, v46, v148);
          v65 = v61;

          v66 = sub_22D01636C();
          v67 = sub_22D01690C();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = v63;
            v69 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v149[0] = v123;
            *v69 = v108;
            v124 = v62;
            *(v69 + 4) = sub_22CEEE31C(v62, v65, v149);
            *(v69 + 12) = 2081;
            v147(v120, v68, v148);
            v70 = sub_22D01669C();
            v72 = v71;
            v73 = v68;
            v58 = v141;
            (*v125)(v73, v148);
            v74 = sub_22CEEE31C(v70, v72, v149);

            *(v69 + 14) = v74;
            v46 = v122;
            _os_log_impl(&dword_22CEE1000, v66, v67, "Ending activity %{public}s for XPC participant content source %{private}s", v69, 0x16u);
            v75 = v123;
            swift_arrayDestroy();
            MEMORY[0x2318C6860](v75, -1, -1);
            MEMORY[0x2318C6860](v69, -1, -1);

            v47 = v139;
            v49 = v65;
            v50 = v124;
          }

          else
          {

            (*v125)(v63, v148);
            v47 = v139;
            v48 = v62;
            v49 = v65;
            v50 = v48;
          }
        }

        else
        {
          v76 = v134;
          (*v118)(v134, v59, v47);
          if (qword_28143FB58 != -1)
          {
            swift_once();
          }

          v77 = sub_22D01637C();
          __swift_project_value_buffer(v77, qword_281444498);
          v78 = v119;
          (*v117)(v119, v76, v47);
          v147 = *v144;
          v147(v135, v46, v148);

          v79 = sub_22D01636C();
          v80 = sub_22D01690C();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v123 = v49;
            v82 = v81;
            v115 = swift_slowAlloc();
            v149[0] = v115;
            *v82 = v107;
            v124 = v50;
            *(v82 + 4) = sub_22CEEE31C(v50, v123, v149);
            *(v82 + 12) = 2082;
            v83 = v110;
            v114 = v80;
            sub_22D01466C();
            sub_22CEF87FC(&qword_28143F708, MEMORY[0x277CC95F0]);
            v84 = v111;
            v85 = sub_22D016DEC();
            v87 = v86;
            v88 = v83;
            v89 = v148;
            (*v109)(v88, v84);
            v112 = v79;
            v113 = *v116;
            v113(v78, v139);
            v90 = sub_22CEEE31C(v85, v87, v149);

            *(v82 + 14) = v90;
            *(v82 + 22) = 2081;
            v91 = v135;
            v92 = v147;
            v147(v120, v135, v89);
            v93 = sub_22D01669C();
            v95 = v94;
            v96 = v89;
            v50 = v124;
            (*v125)(v91, v96);
            v97 = sub_22CEEE31C(v93, v95, v149);
            v46 = v122;

            *(v82 + 24) = v97;
            v98 = v112;
            _os_log_impl(&dword_22CEE1000, v112, v114, "Ending activity %{public}s with payload %{public}s for XPC participant content source %{private}s", v82, 0x20u);
            v99 = v115;
            swift_arrayDestroy();
            MEMORY[0x2318C6860](v99, -1, -1);
            v100 = v82;
            v49 = v123;
            MEMORY[0x2318C6860](v100, -1, -1);

            v101 = v139;
            v113(v134, v139);
            v47 = v101;
            v58 = v141;
            v51 = v92;
            goto LABEL_6;
          }

          (*v125)(v135, v148);
          v102 = *v116;
          (*v116)(v78, v47);
          v102(v134, v47);
          v58 = v141;
        }

        v51 = v147;
LABEL_6:
        v52 = v136;
        v53 = *(v136 + 24);
        v54 = sub_22D01486C();
        (*(*(v54 - 8) + 16))(v10 + v53, v137, v54);
        type metadata accessor for ActivityParticipantEvent.EventType(0);
        swift_storeEnumTagMultiPayload();
        v51(v10 + v52[7], v46, v148);
        sub_22CF32F64(v58, v10 + v52[9]);
        *v10 = v50;
        v10[1] = v49;
        v10[2] = 0;
        v10[3] = 0;
        v55 = (v10 + v52[8]);
        *v55 = v146;
        v55[1] = &off_28402A298;
        *(v10 + v52[10]) = 0;

        v127(v10, v129, v130);
        sub_22CF289A8(v10, type metadata accessor for ActivityParticipantEvent);
        ObjectType = sub_22CEEC3D8(v58, &qword_27D9F22F8, &unk_22D018940);
        v44 += 2;
        v40 = v143 - 1;
      }

      while (v143 != 1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v103 = sub_22D01637C();
    __swift_project_value_buffer(v103, qword_281444498);
    v104 = sub_22D01636C();
    v105 = sub_22D0168EC();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_22CEE1000, v104, v105, "XPCInputParticipant has no ActivityManager", v106, 2u);
      MEMORY[0x2318C6860](v106, -1, -1);
    }
  }
}

uint64_t sub_22CF32948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v60 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v58 = &v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v59 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v52 - v28;
  sub_22CF32F64(a1, &v52 - v28);
  v30 = sub_22D0146BC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(v29, 1, v30) != 1)
  {
    (*(v31 + 32))(a5, v29, v30);
    (*(v31 + 56))(a5, 0, 1, v30);
    goto LABEL_12;
  }

  v55 = v32;
  v56 = a5;
  swift_beginAccess();
  v33 = *(a2 + 128);
  v34 = *(v33 + 16);
  v57 = a4;
  if (!v34)
  {
    goto LABEL_7;
  }

  v35 = sub_22CEEC698(v61, a4);
  if ((v36 & 1) == 0)
  {

LABEL_7:
    v38 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
    (*(*(v38 - 8) + 56))(v24, 1, 1, v38);
    goto LABEL_8;
  }

  v37 = *(v33 + 56);
  v53 = v35;
  v54 = v37;
  v38 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v52 = *(v38 - 8);
  sub_22CF0CB84(v54 + *(v52 + 72) * v53, v24, type metadata accessor for XPCInputParticipant.ActivityUpdate);

  (*(v52 + 56))(v24, 0, 1, v38);
LABEL_8:
  type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v39 = 1;
  v40 = (*(*(v38 - 8) + 48))(v24, 1, v38);
  v41 = v56;
  if (!v40)
  {
    (*(v31 + 16))(v56, &v24[*(v38 + 24)], v30);
    v39 = 0;
  }

  sub_22CEEC3D8(v24, &qword_27D9F2A78, &unk_22D01B130);
  (*(v31 + 56))(v41, v39, 1, v30);
  v42 = v55(v29, 1, v30);
  a4 = v57;
  if (v42 != 1)
  {
    sub_22CEEC3D8(v29, &qword_27D9F22F8, &unk_22D018940);
  }

LABEL_12:
  v43 = type metadata accessor for Activity();
  v44 = v58;
  (*(*(v43 - 8) + 56))(v58, 1, 1, v43);
  swift_beginAccess();

  v45 = v44;
  v46 = v61;
  sub_22CF0BC5C(v45, v61, a4);
  swift_endAccess();
  v47 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
  v48 = v59;
  (*(*(v47 - 8) + 56))(v59, 1, 1, v47);
  swift_beginAccess();

  sub_22CF26EA8(v48, v46, a4);
  swift_endAccess();
  v49 = sub_22D01430C();
  v50 = v60;
  (*(*(v49 - 8) + 56))(v60, 1, 1, v49);
  swift_beginAccess();

  sub_22CF3318C(v50, v46, a4);
  swift_endAccess();
  return sub_22CF28F14();
}

uint64_t sub_22CF32F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF32FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22CEEC698(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CF28A08(type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
    v22 = *(v15 - 8);
    sub_22CEF0B08(v14 + *(v22 + 72) * v9, a3, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    sub_22CF28D18(v9, v12, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22CF3318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_22D01430C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F2648, &unk_22D018BC0);
    sub_22CF33364(a2, a3, v11);

    return sub_22CEEC3D8(v11, &qword_27D9F2648, &unk_22D018BC0);
  }

  else
  {
    (*(v13 + 32))(v17, a1, v12);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22CFBF420(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_22CF33364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22CEEC698(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB8840(MEMORY[0x277CC9578], &qword_27D9F31B0, &qword_22D01B128);
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_22D01430C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_22CF28D18(v9, v12, MEMORY[0x277CC9578]);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22D01430C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22CF3350C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v118 = a3;
  v119 = a4;
  v95 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3A28, &qword_22D01C3C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v113 = &v93 - v8;
  v105 = sub_22D01515C();
  v104 = *(v105 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v105, v10);
  v103 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22D01524C();
  v100 = *(v101 - 8);
  v12 = *(v100 + 64);
  MEMORY[0x28223BE20](v101, v13);
  v99 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22D0151EC();
  v97 = *(v98 - 8);
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v98, v16);
  v96 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3A30, qword_22D01C3D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v115 = &v93 - v21;
  v22 = sub_22D014F2C();
  v122 = *(v22 - 8);
  v123 = v22;
  v23 = *(v122 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v114 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22D01525C();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v30 = MEMORY[0x28223BE20](v26, v29);
  v109 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v93 - v34;
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v93 - v37;
  v39 = sub_22D01637C();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v43 = MEMORY[0x28223BE20](v39, v42);
  v111 = &v93 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v93 - v46;
  sub_22D01635C();
  v48 = v27[2];
  v48(v38, a1, v26);
  v117 = a1;
  v108 = v27 + 2;
  v107 = v48;
  v48(v35, a1, v26);
  v49 = sub_22D01636C();
  v50 = sub_22D01690C();
  v51 = os_log_type_enabled(v49, v50);
  v121 = v40;
  v112 = v26;
  v110 = v27;
  v120 = v39;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v94 = v50;
    v53 = v52;
    v116 = swift_slowAlloc();
    v124[0] = v116;
    *v53 = 136446467;
    v54 = sub_22D0151CC();
    v55 = v27;
    v57 = v56;
    v58 = v55[1];
    v58(v38, v26);
    v59 = sub_22CEEE31C(v54, v57, v124);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2081;
    sub_22CF34230(qword_28143DB00, MEMORY[0x277D4D418]);
    v60 = sub_22D016DEC();
    v62 = v61;
    v106 = v58;
    v58(v35, v26);
    v63 = sub_22CEEE31C(v60, v62, v124);

    *(v53 + 14) = v63;
    _os_log_impl(&dword_22CEE1000, v49, v94, "Requesting alert with identifier: %{public}s; %{private}s", v53, 0x16u);
    v64 = v116;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v64, -1, -1);
    MEMORY[0x2318C6860](v53, -1, -1);

    (*(v121 + 8))(v47, v120);
  }

  else
  {

    v65 = v27[1];
    v65(v35, v26);
    v106 = v65;
    v65(v38, v26);
    (*(v40 + 8))(v47, v39);
  }

  v66 = sub_22D0151CC();
  v68 = v67;
  v69 = sub_22D01408C();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = sub_22D01407C();
  v73 = sub_22D01523C();
  v75 = v74;
  sub_22CF34230(&qword_28143F640, MEMORY[0x277CB97B0]);
  v76 = v115;
  v77 = v123;
  v116 = v72;
  sub_22D01406C();
  v121 = v66;
  sub_22CEE7524(v73, v75);
  v78 = v122;
  (*(v122 + 56))(v76, 0, 1, v77);
  (*(v78 + 32))(v114, v76, v77);
  v79 = v96;
  sub_22D0151FC();
  v80 = v99;
  sub_22D0151DC();
  (*(v97 + 8))(v79, v98);
  v81 = v100;
  v82 = v101;
  if ((*(v100 + 88))(v80, v101) != *MEMORY[0x277D4D410])
  {
    (*(v81 + 8))(v80, v82);
  }

  v83 = sub_22D01522C();
  v84 = v102;
  if (v83 & 1) == 0 && (v95)
  {
    v85 = sub_22D0151CC();
    sub_22CF34278(v114, v85, v86);
  }

  sub_22D01522C();
  v87 = v103;
  sub_22D01514C();
  v88 = swift_allocObject();
  v89 = v119;
  *(v88 + 16) = v118;
  *(v88 + 24) = v89;
  swift_beginAccess();
  sub_22CEE3A84(v84 + 32, v124);
  __swift_project_boxed_opaque_existential_1(v124, v124[3]);
  v90 = off_28402B600;
  type metadata accessor for AlertServiceServer();

  v91 = v114;
  v90(v121, v68, v114, v87, sub_22CF3E1DC, v88);

  (*(v104 + 8))(v87, v105);
  (*(v122 + 8))(v91, v123);
  return __swift_destroy_boxed_opaque_existential_1Tm(v124);
}

uint64_t sub_22CF341F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF34230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF34278(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v63 = sub_22D01637C();
  v6 = *(v63 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v63, v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v61 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v61 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v61 - v25;
  v27 = sub_22CF349E0();
  v28 = *(v3 + 72);
  v64[0] = 0;
  v62 = v27;
  v29 = [v28 resolveBehaviorForEventDetails_error_];
  if (!v29)
  {
    v37 = v64[0];
    v38 = sub_22D01416C();

    swift_willThrow();
    sub_22D01635C();

    v39 = v38;
    v40 = sub_22D01636C();
    v41 = sub_22D0168EC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64[0] = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_22CEEE31C(a2, a3, v64);
      *(v42 + 12) = 2082;
      swift_getErrorValue();
      v44 = sub_22D016E2C();
      v46 = sub_22CEEE31C(v44, v45, v64);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_22CEE1000, v40, v41, "%{public}s Could not determine interruption suppression state: %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v43, -1, -1);
      MEMORY[0x2318C6860](v42, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v11, v63);
    goto LABEL_21;
  }

  v30 = v29;
  v31 = v64[0];
  v32 = [v30 interruptionSuppression];
  if (!v32)
  {
    sub_22D01635C();

    v51 = sub_22D01636C();
    v52 = sub_22D01690C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v64[0] = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_22CEEE31C(a2, a3, v64);
      _os_log_impl(&dword_22CEE1000, v51, v52, "%{public}s DND says suppression state is none", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x2318C6860](v54, -1, -1);
      MEMORY[0x2318C6860](v53, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v19, v63);
LABEL_21:
    result = 1;
    goto LABEL_27;
  }

  if (v32 == 1)
  {
    sub_22D01635C();

    v47 = sub_22D01636C();
    v48 = sub_22D01690C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64[0] = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_22CEEE31C(a2, a3, v64);
      _os_log_impl(&dword_22CEE1000, v47, v48, "%{public}s DND says suppression state is silence", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x2318C6860](v50, -1, -1);
      MEMORY[0x2318C6860](v49, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v23, v63);
  }

  else if (v32 == 2)
  {
    sub_22D01635C();

    v33 = sub_22D01636C();
    v34 = sub_22D01690C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v64[0] = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_22CEEE31C(a2, a3, v64);
      _os_log_impl(&dword_22CEE1000, v33, v34, "%{public}s DND says suppression state is delayDelivery", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2318C6860](v36, -1, -1);
      MEMORY[0x2318C6860](v35, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v26, v63);
  }

  else
  {
    sub_22D01635C();

    v55 = sub_22D01636C();
    v56 = sub_22D0168EC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64[0] = v58;
      *v57 = 136446210;
      *(v57 + 4) = sub_22CEEE31C(a2, a3, v64);
      _os_log_impl(&dword_22CEE1000, v55, v56, "%{public}s DND says suppression state is an unexpected value", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x2318C6860](v58, -1, -1);
      MEMORY[0x2318C6860](v57, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v15, v63);
  }

  result = 0;
LABEL_27:
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22CF349E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D05A18]) init];
  v1 = sub_22D01666C();
  [v0 setThreadIdentifier_];

  v2 = sub_22D01666C();
  [v0 setIdentifier_];

  sub_22D014F0C();
  v3 = sub_22D01666C();

  [v0 setBundleIdentifier_];

  [v0 setUrgency_];
  return v0;
}

void sub_22CF34AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = sub_22D01666C();
  sub_22D014F2C();
  sub_22CF34C48(&qword_28143F638, MEMORY[0x277CB97B0]);
  v11 = sub_22D01517C();
  v12 = sub_22D01512C();
  v14[4] = a5;
  v14[5] = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22CF217E0;
  v14[3] = &block_descriptor_15;
  v13 = _Block_copy(v14);

  [v9 presentAlertWithActivityIdentifier:v10 payload:v11 options:v12 completion:v13];
  _Block_release(v13);
}

uint64_t sub_22CF34C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF34DA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, void (**a8)(void, void))
{
  v60 = a1;
  v61 = a2;
  v10 = sub_22D01637C();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = v69[8];
  MEMORY[0x28223BE20](v10, v12);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22D01515C();
  v58 = *(v59 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v59, v16);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D014F2C();
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = swift_allocObject();
  *(v66 + 16) = a8;
  _Block_copy(a8);
  v24 = sub_22D0141DC();
  sub_22CF34C48(&qword_28143F638, MEMORY[0x277CB97B0]);
  v67 = v23;
  v57 = v19;
  sub_22D01516C();

  v25 = sub_22D0141DC();
  v68 = v18;
  sub_22D01513C();

  v26 = *(*&a7[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock] + 16);
  os_unfair_lock_lock(v26);
  v27 = OBJC_IVAR____TtC11SessionCore18AlertServiceServer__lock_clients;
  swift_beginAccess();
  v62 = a7;
  v28 = *&a7[v27];

  os_unfair_lock_unlock(v26);
  if ((v28 & 0xC000000000000001) == 0)
  {
    if (*(v28 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    sub_22D01635C();
    v34 = sub_22D01636C();
    v35 = sub_22D0168EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22CEE1000, v34, v35, "No clients registered for alert service", v36, 2u);
      MEMORY[0x2318C6860](v36, -1, -1);
    }

    (v69[1])(v14, v70);
    v37 = sub_22D014C3C();
    sub_22CF34C48(&qword_2814439B0, MEMORY[0x277CB95E0]);
    v38 = swift_allocError();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277CB95D0], v37);
    v40 = sub_22D01415C();
    (a8)[2](a8, v40);

    (*(v58 + 8))(v68, v59);
    (*(v56 + 8))(v67, v57);
  }

  if (!sub_22D016B7C())
  {
    goto LABEL_6;
  }

LABEL_3:
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  v63 = swift_allocObject();
  v64 = v28;
  *(v63 + 16) = 0;
  if ((v28 & 0xC000000000000001) != 0)
  {

    sub_22D016B3C();
    _s11SessionCore6ClientCMa_0();
    sub_22CF34C48(&qword_27D9F3110, _s11SessionCore6ClientCMa_0);
    result = sub_22D01689C();
    v28 = v73;
    v30 = v74;
    v32 = v75;
    v31 = v76;
    v33 = v77;
  }

  else
  {
    v41 = -1 << *(v28 + 32);
    v30 = v28 + 56;
    v32 = ~v41;
    v42 = -v41;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v33 = v43 & *(v28 + 56);

    v31 = 0;
  }

  v55[1] = v32;
  v44 = (v32 + 64) >> 6;
  v45 = v62;
  if (v28 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v46 = v31;
    v47 = v33;
    v48 = v31;
    if (!v33)
    {
      break;
    }

LABEL_18:
    v49 = (v47 - 1) & v47;
    v50 = *(*(v28 + 48) + ((v48 << 9) | (8 * __clz(__rbit64(v47)))));
    if (!v50)
    {
LABEL_24:
      sub_22CEE57FC();

      (*(v58 + 8))(v68, v59);
      (*(v56 + 8))(v67, v57);
    }

    while (1)
    {
      v69 = *&v45[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_queue];
      v52 = swift_allocObject();
      v53 = v63;
      v52[2] = v45;
      v52[3] = v53;
      v70 = v49;
      v52[4] = v65;
      v52[5] = v64;
      v52[6] = sub_22CF3DFE4;
      v52[7] = v66;

      v54 = v45;

      sub_22CF355F8(v60, v61, v67, v68, v69, sub_22CF3DDA4, v52);

      v31 = v48;
      v33 = v70;
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      v51 = sub_22D016BAC();
      if (v51)
      {
        v71 = v51;
        _s11SessionCore6ClientCMa_0();
        swift_dynamicCast();
        v50 = v72;
        v48 = v31;
        v49 = v33;
        if (v72)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v48 >= v44)
    {
      goto LABEL_24;
    }

    v47 = *(v30 + 8 * v48);
    ++v46;
    if (v47)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF35548()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF355A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22CF355F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(), uint64_t a7)
{
  v8 = v7;
  v58 = a6;
  v59 = a7;
  v57 = a5;
  v53[1] = a3;
  v53[2] = a4;
  v54 = a1;
  v10 = sub_22D0164CC();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22D01653C();
  v15 = *(v55 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v55, v17);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D01637C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = v53 - v28;
  if ([*(v8 + OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
  }

  aBlock = v65;
  v62 = v66;
  if (*(&v66 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3100, &qword_22D01AD80);
    if (swift_dynamicCast())
    {
      v57 = v60;
      sub_22D01635C();

      v30 = sub_22D01636C();
      v31 = sub_22D01690C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&aBlock = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_22CEEE31C(v54, a2, &aBlock);
        _os_log_impl(&dword_22CEE1000, v30, v31, "Asking client to present alert: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x2318C6860](v33, -1, -1);
        MEMORY[0x2318C6860](v32, -1, -1);
      }

      (*(v21 + 8))(v29, v20);
      sub_22D014F2C();
      sub_22CF34C48(&qword_28143F638, MEMORY[0x277CB97B0]);
      v41 = sub_22D01517C();
      v42 = sub_22D0141EC();
      v44 = v43;

      v45 = sub_22D01512C();
      v46 = sub_22D0141EC();
      v48 = v47;

      v49 = sub_22D01666C();
      v50 = sub_22D0141DC();
      v51 = sub_22D0141DC();
      v63 = v58;
      v64 = v59;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v62 = sub_22CF217E0;
      *(&v62 + 1) = &block_descriptor_30;
      v52 = _Block_copy(&aBlock);

      [v57 presentAlertWithActivityIdentifier:v49 payload:v50 options:v51 completion:v52];
      _Block_release(v52);

      sub_22CEE7524(v46, v48);
      sub_22CEE7524(v42, v44);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22CFAA9A8(&aBlock);
  }

  sub_22D01635C();
  v34 = sub_22D01636C();
  v35 = sub_22D0168EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22CEE1000, v34, v35, "Client does not implement expected interface", v36, 2u);
    MEMORY[0x2318C6860](v36, -1, -1);
  }

  (*(v21 + 8))(v26, v20);
  v37 = swift_allocObject();
  v38 = v59;
  *(v37 + 16) = v58;
  *(v37 + 24) = v38;
  v63 = sub_22CFAAA10;
  v64 = v37;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v62 = sub_22CEF8B58;
  *(&v62 + 1) = &block_descriptor_27_0;
  v39 = _Block_copy(&aBlock);

  sub_22D0164EC();
  *&v65 = MEMORY[0x277D84F90];
  sub_22CF34C48(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v19, v14, v39);
  _Block_release(v39);
  (*(v56 + 8))(v14, v10);
  (*(v15 + 8))(v19, v55);
}

uint64_t sub_22CF35D10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22CF35D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v241 = a8;
  v242 = a7;
  v243 = a6;
  v244 = a5;
  v248 = a4;
  v238 = a3;
  v256 = a1;
  v240 = type metadata accessor for ActivityManagerEvent(0);
  v13 = *(*(v240 - 8) + 64);
  MEMORY[0x28223BE20](v240, v14);
  v257 = &v225[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v232 = sub_22D01486C();
  v231 = *(v232 - 8);
  v16 = *(v231 + 64);
  MEMORY[0x28223BE20](v232, v17);
  v230 = &v225[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v239 = &v225[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v225[-v26];
  v237 = sub_22D0146BC();
  v236 = *(v237 - 8);
  v28 = *(v236 + 64);
  MEMORY[0x28223BE20](v237, v29);
  v31 = &v225[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_22D01430C();
  v253 = *(v32 - 8);
  v254 = v32;
  v33 = v253[8];
  v35 = MEMORY[0x28223BE20](v32, v34);
  v229 = &v225[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v35, v37);
  v233 = &v225[-v39];
  v41 = MEMORY[0x28223BE20](v38, v40);
  v235 = &v225[-v42];
  v44 = MEMORY[0x28223BE20](v41, v43);
  v251 = &v225[-v45];
  v47 = MEMORY[0x28223BE20](v44, v46);
  v49 = &v225[-v48];
  MEMORY[0x28223BE20](v47, v50);
  v245 = &v225[-v51];
  v247 = sub_22D01495C();
  v246 = *(v247 - 8);
  v52 = v246[8];
  MEMORY[0x28223BE20](v247, v53);
  v249 = &v225[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v250 = type metadata accessor for Activity();
  v252 = *(v250 - 8);
  v55 = *(v252 + 64);
  v57 = MEMORY[0x28223BE20](v250, v56);
  v234 = &v225[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = MEMORY[0x28223BE20](v57, v59);
  v62 = &v225[-v61];
  MEMORY[0x28223BE20](v60, v63);
  v255 = &v225[-v64];
  v65 = sub_22D01659C();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65, v68);
  v70 = &v225[-((v69 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = v11[5];
  *v70 = v71;
  (*(v66 + 104))(v70, *MEMORY[0x277D85200], v65);
  v72 = v71;
  v73 = sub_22D0165BC();
  v75 = *(v66 + 8);
  v74 = v66 + 8;
  v75(v70, v65);
  if ((v73 & 1) == 0)
  {
    __break(1u);
LABEL_70:
    swift_once();
LABEL_16:
    v99 = sub_22D01637C();
    __swift_project_value_buffer(v99, qword_281444498);

    v100 = sub_22D01636C();
    v101 = sub_22D0168EC();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v259 = v103;
      *v102 = 136446210;
      *(v102 + 4) = sub_22CEEE31C(v73, v74, &v259);
      _os_log_impl(&dword_22CEE1000, v100, v101, "Received an update for an activity with no subscribers: %{public}s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x2318C6860](v103, -1, -1);
      MEMORY[0x2318C6860](v102, -1, -1);
    }

    goto LABEL_28;
  }

  swift_beginAccess();
  v76 = v11[3];
  v74 = a2;
  v73 = v256;
  if (!*(v76 + 16))
  {
LABEL_15:
    if (qword_28143FB58 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

  v77 = v11;
  v78 = v11[3];

  v79 = sub_22CEEC698(v73, a2);
  if ((v80 & 1) == 0)
  {

    goto LABEL_15;
  }

  v81 = *(*(v76 + 56) + 8 * v79);

  swift_beginAccess();
  v82 = v11[4];
  if (!*(v82 + 16))
  {
LABEL_19:

    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v104 = sub_22D01637C();
    __swift_project_value_buffer(v104, qword_281444498);

    v105 = sub_22D01636C();
    v106 = sub_22D0168EC();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v258 = v108;
      *v107 = 136446210;
      *(v107 + 4) = sub_22CEEE31C(v73, v74, &v258);
      _os_log_impl(&dword_22CEE1000, v105, v106, "Received stop for an activity that does not exist: %{public}s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      MEMORY[0x2318C6860](v108, -1, -1);
      MEMORY[0x2318C6860](v107, -1, -1);
    }

    v109 = sub_22D014C3C();
    sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
    v110 = swift_allocError();
    (*(*(v109 - 8) + 104))(v111, *MEMORY[0x277CB95D0], v109);
    swift_willThrow();
    goto LABEL_24;
  }

  v83 = v11[4];

  v84 = sub_22CEEC698(v73, v74);
  if ((v85 & 1) == 0)
  {

    goto LABEL_19;
  }

  v228 = v81;
  sub_22CEFEA98(*(v82 + 56) + *(v252 + 72) * v84, v62, type metadata accessor for Activity);

  v86 = v62;
  v87 = v255;
  sub_22CF0A72C(v86, v255, type metadata accessor for Activity);
  if (sub_22CF0B5E0() == 1)
  {
    v88 = v249;
    sub_22D01484C();
    v89 = v245;
    sub_22D01491C();
    (v246[1])(v88, v247);
    sub_22D0142DC();
    sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578]);
    v90 = v254;
    v226 = sub_22D01663C();
    v227 = v77;
    v91 = v87;
    v92 = v253[1];
    v92(v49, v90);
    v92(v89, v90);
    v87 = v91;
    v77 = v227;
    if (v226)
    {
      ObjectType = swift_getObjectType();
      if (((*(v243 + 40))(ObjectType) & 1) == 0)
      {

        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v178 = sub_22D01637C();
        __swift_project_value_buffer(v178, qword_281444498);

        v179 = sub_22D01636C();
        v180 = sub_22D0168EC();

        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v258 = v182;
          *v181 = 136446210;
          *(v181 + 4) = sub_22CEEE31C(v73, v74, &v258);
          _os_log_impl(&dword_22CEE1000, v179, v180, "Received an update for a zombie activity: %{public}s", v181, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v182);
          MEMORY[0x2318C6860](v182, -1, -1);
          MEMORY[0x2318C6860](v181, -1, -1);
        }

        v183 = sub_22D014C3C();
        sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
        v110 = swift_allocError();
        (*(*(v183 - 8) + 104))(v184, *MEMORY[0x277CB95D0], v183);
        swift_willThrow();
        goto LABEL_55;
      }
    }
  }

  v94 = v250;
  v95 = *&v87[*(v250 + 36)];

  v96 = sub_22D01482C();

  if ((v96 & 1) == 0 && (sub_22D0147EC() & 1) == 0 && (sub_22D0147FC() & 1) == 0)
  {

    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v185 = sub_22D01637C();
    __swift_project_value_buffer(v185, qword_281444498);

    v186 = sub_22D01636C();
    v187 = sub_22D0168EC();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v258 = v189;
      *v188 = 136446210;
      *(v188 + 4) = sub_22CEEE31C(v73, v74, &v258);
      _os_log_impl(&dword_22CEE1000, v186, v187, "Received stop from a content source that cannot contribute to the activity: %{public}s", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      MEMORY[0x2318C6860](v189, -1, -1);
      MEMORY[0x2318C6860](v188, -1, -1);
    }

    v190 = sub_22D014C3C();
    sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0]);
    v110 = swift_allocError();
    v192 = v191;
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2338, &unk_22D018960);
    v194 = *(v193 + 48);
    v195 = (v192 + *(v193 + 64));
    *v192 = 6581829;
    v192[1] = 0xE300000000000000;
    sub_22D01480C();
    *v195 = v73;
    v195[1] = v74;
    (*(*(v190 - 8) + 104))(v192, *MEMORY[0x277CB95D8], v190);
    swift_willThrow();

LABEL_55:
    sub_22CF0A5FC(v255, type metadata accessor for Activity);
LABEL_24:
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v112 = sub_22D01637C();
    __swift_project_value_buffer(v112, qword_281444498);
    v113 = sub_22D01415C();
    v114 = [v113 localizedDescription];
    v115 = sub_22D01667C();
    v117 = v116;

    v100 = v113;

    v118 = sub_22D01636C();
    v119 = sub_22D0168EC();

    if (!os_log_type_enabled(v118, v119))
    {

      return;
    }

    v257 = v115;
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v258 = v121;
    *v120 = 136446978;
    *(v120 + 4) = sub_22CEEE31C(0xD00000000000001DLL, 0x800000022D0215C0, &v258);
    *(v120 + 12) = 2082;
    v122 = [v100 domain];
    v123 = sub_22D01667C();
    v125 = v124;

    v126 = sub_22CEEE31C(v123, v125, &v258);

    *(v120 + 14) = v126;
    *(v120 + 22) = 2048;
    v127 = [v100 code];

    *(v120 + 24) = v127;
    *(v120 + 32) = 2082;
    v128 = sub_22CEEE31C(v257, v117, &v258);

    *(v120 + 34) = v128;
    _os_log_impl(&dword_22CEE1000, v118, v119, "%{public}s: %{public}s (%ld) %{public}s", v120, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v121, -1, -1);
    MEMORY[0x2318C6860](v120, -1, -1);

LABEL_28:
    return;
  }

  sub_22CEEB6DC(v238, v27, &qword_27D9F22F8, &unk_22D018940);
  v97 = v236;
  v98 = v237;
  if ((*(v236 + 48))(v27, 1, v237) == 1)
  {
    sub_22CEEC3D8(v27, &qword_27D9F22F8, &unk_22D018940);
  }

  else
  {
    (*(v97 + 32))(v31, v27, v98);
    (*(v97 + 40))(&v87[*(v94 + 56)], v31, v98);
  }

  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v129 = sub_22D01637C();
  v130 = __swift_project_value_buffer(v129, qword_281444498);

  v131 = sub_22D01636C();
  v132 = sub_22D01690C();

  v133 = os_log_type_enabled(v131, v132);
  v242 = v130;
  if (v133)
  {
    v134 = v77;
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v258 = v136;
    *v135 = 136446210;
    *(v135 + 4) = sub_22CEEE31C(v73, v74, &v258);
    _os_log_impl(&dword_22CEE1000, v131, v132, "Stopping activity: %{public}s", v135, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v136);
    v137 = v136;
    v94 = v250;
    MEMORY[0x2318C6860](v137, -1, -1);
    v138 = v135;
    v77 = v134;
    MEMORY[0x2318C6860](v138, -1, -1);
  }

  v139 = a10;
  v140 = a9;
  v141 = v249;
  sub_22D01484C();
  sub_22D01491C();
  (v246[1])(v141, v247);
  if (sub_22CF37A40())
  {
    goto LABEL_44;
  }

  v142 = v234;
  sub_22CEFEA98(v255, v234, type metadata accessor for Activity);
  v143 = *(v94 + 40);
  v144 = v245;
  sub_22D0142DC();
  sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578]);
  LODWORD(v248) = a10;
  v145 = v254;
  LOBYTE(v143) = sub_22D01663C();
  v146 = v253 + 1;
  v147 = v144;
  v148 = v253[1];
  v149 = v145;
  v139 = v248;
  v148(v147, v149);
  sub_22CF0A5FC(v142, type metadata accessor for Activity);
  if ((v143 & 1) == 0)
  {
LABEL_44:
    swift_beginAccess();

    v176 = v256;
    sub_22CF0FE54(0, v256, v74);
    swift_endAccess();
    v177 = v239;
    (*(v252 + 56))(v239, 1, 1, v94);
    swift_beginAccess();

    sub_22CF0BC5C(v177, v176, v74);
    swift_endAccess();
    v174 = 4;
    v175 = v255;
  }

  else
  {
    v247 = a9;
    v227 = v77;
    v150 = v148;
    v151 = v245;
    sub_22D0142DC();
    v152 = v235;
    sub_22D01425C();
    v153 = v254;
    v150(v151, v254);
    v154 = v251;
    v155 = sub_22D01663C();
    v156 = v253[2];
    if (v155)
    {
      v157 = v152;
    }

    else
    {
      v157 = v154;
    }

    v158 = v233;
    v156(v233, v157, v153);
    sub_22D0142DC();
    v159 = sub_22D01428C();
    v160 = v151;
    v161 = v150;
    v150(v160, v153);
    v246 = v146;
    if (v159)
    {
      v162 = v158;
      v163 = sub_22D01636C();
      v164 = sub_22D01690C();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v258 = v166;
        *v165 = 136446210;
        swift_beginAccess();
        v167 = sub_22CF0B174();
        v169 = sub_22CEEE31C(v167, v168, &v258);

        *(v165 + 4) = v169;
        _os_log_impl(&dword_22CEE1000, v163, v164, "Activity: %{public}s should be discarded now", v165, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v166);
        MEMORY[0x2318C6860](v166, -1, -1);
        MEMORY[0x2318C6860](v165, -1, -1);
      }

      v170 = v254;
      v171 = v250;
      v140 = v247;
      v77 = v227;
      swift_beginAccess();

      v172 = v256;
      sub_22CF0FE54(0, v256, v74);
      swift_endAccess();
      v173 = v239;
      (*(v252 + 56))(v239, 1, 1, v171);
      swift_beginAccess();

      sub_22CF0BC5C(v173, v172, v74);
      swift_endAccess();
      v161(v162, v170);
      v161(v235, v170);
      v174 = 4;
      v175 = v255;
    }

    else
    {
      v196 = v229;
      v156(v229, v158, v153);

      v197 = sub_22D01636C();
      v198 = sub_22D01690C();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        v258 = v245;
        *v199 = 136446466;
        *(v199 + 4) = sub_22CEEE31C(v256, v74, &v258);
        *(v199 + 12) = 2082;
        sub_22CEF88D4(&unk_281443A20, MEMORY[0x277CC9578]);
        v200 = sub_22D016DEC();
        v202 = v201;
        v150(v196, v153);
        v203 = sub_22CEEE31C(v200, v202, &v258);

        *(v199 + 14) = v203;
        _os_log_impl(&dword_22CEE1000, v197, v198, "Activity: %{public}s should be discarded at %{public}s", v199, 0x16u);
        v204 = v245;
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v204, -1, -1);
        MEMORY[0x2318C6860](v199, -1, -1);
      }

      else
      {

        v150(v196, v153);
      }

      v175 = v255;
      v205 = v250;
      sub_22D01492C();
      v206 = v230;
      sub_22D01485C();
      v207 = *(v205 + 60);
      sub_22CEEC3D8(&v175[v207], &qword_27D9F26E0, &unk_22D018F80);
      v208 = v231;
      v209 = v232;
      (*(v231 + 16))(&v175[v207], v206, v232);
      (*(v208 + 56))(&v175[v207], 0, 1, v209);
      v210 = v239;
      sub_22CEFEA98(v175, v239, type metadata accessor for Activity);
      (*(v252 + 56))(v210, 0, 1, v205);
      v77 = v227;
      swift_beginAccess();

      sub_22CF0BC5C(v210, v256, v74);
      swift_endAccess();
      (*(v208 + 8))(v206, v209);
      v150(v233, v153);
      v150(v235, v153);
      v174 = 2;
      v140 = v247;
    }

    v139 = v248;
  }

  swift_beginAccess();
  v211 = v257;
  sub_22CEFEA98(v175, v257, type metadata accessor for Activity);
  v212 = *(v243 + 8);
  v213 = v240;
  v211[*(v240 + 20)] = v174;
  v214 = &v211[v213[6]];
  v215 = v244;
  *v214 = v244;
  v214[1] = v212;
  v216 = &v211[v213[7]];
  *v216 = v241;
  v216[1] = v140;
  v211[v213[8]] = v139 & 1;
  type metadata accessor for ActivityManager.QueueActivityManager();
  v217 = swift_allocObject();
  *(v217 + 16) = v77;
  v218 = v228;
  v219 = *(v228 + 16);
  if (v219)
  {

    swift_unknownObjectRetain();
    v220 = (v218 + 40);
    do
    {
      if (*(v220 - 1) != v215)
      {
        v221 = *(v220 - 1);
        v222 = swift_getObjectType();
        v223 = *v220;
        v224 = *(*v220 + 16);
        swift_unknownObjectRetain();

        v224(v257, v217, &off_28402C298, v222, v223);
        swift_unknownObjectRelease();
      }

      v220 += 2;
      --v219;
    }

    while (v219);

    v175 = v255;
  }

  else
  {

    swift_unknownObjectRetain();
  }

  sub_22CF0A5FC(v257, type metadata accessor for ActivityManagerEvent);
  (v253[1])(v251, v254);
  sub_22CF0A5FC(v175, type metadata accessor for Activity);
}

uint64_t sub_22CF37A40()
{
  v59 = sub_22D014EFC();
  v56 = *(v59 - 8);
  v1 = *(v56 + 64);
  v3 = MEMORY[0x28223BE20](v59, v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v55 = &v45 - v7;
  v60 = sub_22D0149AC();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v60, v10);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v45 - v19;
  v21 = *(v0 + *(type metadata accessor for Activity() + 28));
  v22 = *(v21 + 64);
  v47 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v46 = (v23 + 63) >> 6;
  v48 = v8 + 32;
  v49 = v8 + 16;
  v53 = v8;
  v57 = v21;
  v58 = (v8 + 8);

  v27 = 0;
  v54 = v5;
  v50 = v17;
  v51 = v20;
  v28 = v52;
  if (v25)
  {
    while (1)
    {
      v29 = v27;
LABEL_12:
      v32 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v33 = v32 | (v29 << 6);
      v34 = v57;
      v35 = v53;
      v36 = v60;
      (*(v53 + 16))(v28, *(v57 + 48) + *(v53 + 72) * v33, v60);
      v37 = *(v34 + 56);
      v38 = v55;
      sub_22CEFEB00(v37 + *(v56 + 72) * v33, v55, MEMORY[0x277CB9790]);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v40 = *(v39 + 48);
      v41 = *(v35 + 32);
      v17 = v50;
      v41(v50, v28, v36);
      sub_22CF033C4(v38, &v17[v40]);
      (*(*(v39 - 8) + 56))(v17, 0, 1, v39);
      v31 = v29;
      v5 = v54;
      v20 = v51;
LABEL_13:
      sub_22CF03428(v17, v20);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v43 = (*(*(v42 - 8) + 48))(v20, 1, v42);
      if (v43 == 1)
      {

        return v43 != 1;
      }

      sub_22CF033C4(&v20[*(v42 + 48)], v5);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_22CEFD754(v5, MEMORY[0x277CB9790]);
      result = (*v58)(v20, v60);
      v27 = v31;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    sub_22CEFD754(v5, MEMORY[0x277CB9790]);
    (*v58)(v20, v60);
    return v43 != 1;
  }

  else
  {
LABEL_5:
    if (v46 <= v27 + 1)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = v46;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v46)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
        (*(*(v44 - 8) + 56))(v17, 1, 1, v44);
        v25 = 0;
        goto LABEL_13;
      }

      v25 = *(v47 + 8 * v29);
      ++v27;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22CF37F44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22D016EAC();

      sub_22D0166DC();
      v13 = sub_22D016ECC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
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

LABEL_4:
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

  return result;
}

void sub_22CF380F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v16 - v9;
  v11 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock(v11);
  v12 = *(v2 + 16);
  v13 = type metadata accessor for Activity();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  swift_beginAccess();

  sub_22CF0BC5C(v10, a1, a2);
  swift_endAccess();
  sub_22D01566C();
  v14 = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v11);
}

uint64_t sub_22CF3829C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF38300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = a3;
  v95 = a2;
  v94 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v102 = &v86 - v7;
  v101 = sub_22D01534C();
  v88 = *(v101 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v101, v9);
  v100 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22D0154AC();
  v11 = *(v99 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v99, v13);
  v110 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_22D0154EC();
  v15 = *(v108 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v108, v17);
  v107 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Assertion();
  v19 = *(v111 - 1);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v111, v21);
  v109 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v106 = (&v86 - v26);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v86 - v28;
  v30 = v3[19];
  v31 = v3[20];
  v105 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 16, v30);
  v32 = (*(v31 + 8))(v30, v31);
  v33 = v32;
  v34 = *(v32 + 16);
  if (v34)
  {
    v35 = sub_22CF75FC8(*(v32 + 16), 0, &qword_27D9F20C0, &qword_22D0188E8, type metadata accessor for Assertion);
    v36 = sub_22CF7B348(v115, v35 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v34, v33, type metadata accessor for Assertion, type metadata accessor for Assertion);
    sub_22CEE57FC();
    if (v36 != v34)
    {
      __break(1u);
LABEL_47:
      result = sub_22D016CFC();
      __break(1u);
      return result;
    }

    v37 = v35;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v104 = v19;
  v87 = v11;
  v98 = *(v37 + 16);
  if (v98)
  {
    v38 = 0;
    v97 = (v15 + 16);
    v96 = *MEMORY[0x277D4D4B0];
    v93 = *MEMORY[0x277D4D498];
    v92 = *MEMORY[0x277D4D490];
    v91 = *MEMORY[0x277D4D4A8];
    v89 = *MEMORY[0x277D4D4A0];
    v90 = (v15 + 8);
    v39 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v38 >= *(v37 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      v40 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v41 = *(v104 + 72);
      v42 = v37;
      sub_22CF07D60(v37 + v40 + v41 * v38, v29, type metadata accessor for Assertion);
      v43 = v107;
      v44 = v108;
      (*v97)(v107, &v29[v111[5]], v108);
      v45 = (*(v15 + 88))(v43, v44);
      if (v45 != v96)
      {
        if (v45 == v93)
        {
          goto LABEL_7;
        }

        if (v45 == v92)
        {
          (*v90)(v107, v108);
        }

        else if (v45 != v91 && v45 != v89)
        {
          goto LABEL_47;
        }
      }

      v46 = &v29[v111[10]];
      if (sub_22D01554C() == v94 && v47 == v95)
      {

LABEL_21:
        sub_22CF7BE5C(v29, v106, type metadata accessor for Assertion);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v115[0] = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22CF44084(0, *(v39 + 16) + 1, 1);
          v39 = *&v115[0];
        }

        v51 = v39;
        v52 = *(v39 + 16);
        v53 = *(v51 + 24);
        if (v52 >= v53 >> 1)
        {
          sub_22CF44084(v53 > 1, v52 + 1, 1);
          v51 = *&v115[0];
        }

        *(v51 + 16) = v52 + 1;
        sub_22CF7BE5C(v106, v51 + v40 + v52 * v41, type metadata accessor for Assertion);
        v39 = v51;
        goto LABEL_8;
      }

      v49 = sub_22D016DFC();

      if (v49)
      {
        goto LABEL_21;
      }

LABEL_7:
      sub_22CF1CB18(v29, type metadata accessor for Assertion);
LABEL_8:
      ++v38;
      v37 = v42;
      if (v98 == v38)
      {
        goto LABEL_30;
      }
    }
  }

  v39 = MEMORY[0x277D84F90];
LABEL_30:

  if (qword_28143FAF0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v54 = sub_22D01637C();
  __swift_project_value_buffer(v54, qword_2814443A8);

  v55 = sub_22D01636C();
  v56 = sub_22D01690C();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v104;
  if (v57)
  {
    v59 = v39;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v115[0] = v61;
    *v60 = 136446210;
    v62 = MEMORY[0x2318C5950](v59, v111);
    v64 = sub_22CEEE31C(v62, v63, v115);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_22CEE1000, v55, v56, "Invalidating assertions for activity: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x2318C6860](v61, -1, -1);
    v65 = v60;
    v39 = v59;
    MEMORY[0x2318C6860](v65, -1, -1);
  }

  v66 = v39;
  v67 = *(v39 + 16);
  if (v67)
  {
    v108 = v105[6];
    v68 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v98 = v66;
    v69 = v66 + v68;
    swift_beginAccess();
    v106 = (v88 + 16);
    v70 = (v87 + 8);
    v107 = *(v58 + 72);
    v71 = &unk_27D9F29F8;
    do
    {
      v74 = v71;
      v75 = v109;
      sub_22CF07D60(v69, v109, type metadata accessor for Assertion);
      (*v106)(v100, v75, v101);
      sub_22CEEB6DC(v75 + v111[6], v102, &qword_27D9F2680, &qword_22D019670);
      sub_22D01547C();
      v76 = v105;
      v77 = v105[19];
      v78 = v105[20];
      __swift_project_boxed_opaque_existential_1(v105 + 16, v77);
      (*(v78 + 32))(v75, v77, v78);
      v79 = *(v108 + 16);
      os_unfair_lock_lock(v79);
      v80 = sub_22D01531C();
      v81 = v76[7];
      if (*(v81 + 16) && (v82 = sub_22CEE637C(v80), (v83 & 1) != 0))
      {
        sub_22CEE3A84(*(v81 + 56) + 40 * v82, v115);
      }

      else
      {
        v116 = 0;
        memset(v115, 0, sizeof(v115));
      }

      os_unfair_lock_unlock(v79);
      v71 = v74;
      sub_22CEEB6DC(v115, &v112, v74, &qword_22D019688);
      if (v113)
      {
        sub_22CEF44D4(&v112, v114);
        v72 = *__swift_project_boxed_opaque_existential_1(v114, v114[3]);
        v73 = v110;
        sub_22D006D8C(v110);
        sub_22CEEC3D8(v115, v74, &qword_22D019688);
        (*v70)(v73, v99);
        sub_22CF1CB18(v109, type metadata accessor for Assertion);
        __swift_destroy_boxed_opaque_existential_1Tm(v114);
      }

      else
      {
        sub_22CEEC3D8(v115, v74, &qword_22D019688);
        (*v70)(v110, v99);
        sub_22CF1CB18(v109, type metadata accessor for Assertion);
        sub_22CEEC3D8(&v112, v74, &qword_22D019688);
      }

      v69 += v107;
      --v67;
    }

    while (v67);
  }

  return sub_22CF38E78(v84);
}

uint64_t sub_22CF38E78()
{
  v1 = v0;
  v157 = sub_22D01555C();
  v2 = *(v157 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v157, v4);
  v152 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v151 = &v143 - v8;
  v9 = sub_22D0154EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v170 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v14 = *(*(v173 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v173, v15);
  v153 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v156 = &v143 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v143 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v159 = &v143 - v26;
  if (qword_28143FAF0 != -1)
  {
LABEL_48:
    swift_once();
  }

  v27 = sub_22D01637C();
  v164 = __swift_project_value_buffer(v27, qword_2814443A8);
  v28 = sub_22D01636C();
  v29 = sub_22D01690C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22CEE1000, v28, v29, "Resolving all assertions", v30, 2u);
    MEMORY[0x2318C6860](v30, -1, -1);
  }

  v31 = v1[6];
  v158 = *(v31 + 16);
  os_unfair_lock_lock(v158);
  os_unfair_lock_assert_owner(*(v31 + 16));
  v32 = v1[19];
  v33 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v32);
  v34 = (*(v33 + 8))(v32, v33);
  v35 = sub_22CF39DE8(v34);

  v160 = sub_22CF3A374(v35);
  v162 = sub_22CF3A490();
  os_unfair_lock_assert_owner(*(v31 + 16));
  v36 = v1[19];
  v37 = v1[20];
  v161 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 16, v36);
  v38 = (*(v37 + 8))(v36, v37);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v169 = (v10 + 16);
  v168 = (v10 + 88);
  v167 = *MEMORY[0x277D4D4B0];
  v165 = (v10 + 8);
  v150 = (v10 + 96);
  v155 = (v2 + 16);
  v154 = (v2 + 8);
  v174 = v38;

  v2 = 0;
  v163 = MEMORY[0x277D84F98];
  v1 = &qword_22D018B60;
  v171 = v9;
  v44 = v159;
  v166 = v43;
  v172 = v39;
LABEL_7:
  v45 = v2;
  if (!v42)
  {
    goto LABEL_9;
  }

  do
  {
    v46 = v1;
    v2 = v45;
LABEL_13:
    v47 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v48 = v47 | (v2 << 6);
    v49 = v174;
    v50 = *(v174 + 48);
    v51 = sub_22D01534C();
    v52 = *(v51 - 8);
    v53 = v52;
    v54 = v50 + *(v52 + 72) * v48;
    v55 = *(v52 + 16);
    v175 = v51;
    v55(v44, v54);
    v56 = v44;
    v57 = *(v49 + 56);
    v58 = type metadata accessor for Assertion();
    v59 = v57 + *(*(v58 - 8) + 72) * v48;
    v60 = v173;
    sub_22CF07D60(v59, v56 + *(v173 + 48), type metadata accessor for Assertion);
    v1 = v46;
    sub_22CEEB6DC(v56, v24, &qword_27D9F2600, v46);
    v61 = &v24[*(v60 + 48)];
    v62 = v170;
    v9 = v171;
    (*v169)(v170, v61 + *(v58 + 20), v171);
    sub_22CF1CB18(v61, type metadata accessor for Assertion);
    v63 = (*v168)(v62, v9);
    if (v63 == v167)
    {
      v148 = v53;
      v65 = v175;
      (*v150)(v62, v9);
      v145 = *v62;
      v66 = v156;
      sub_22CEEB6DC(v56, v156, &qword_27D9F2600, v1);
      v67 = v66 + *(v173 + 48);
      v149 = v58;
      v68 = v67 + *(v58 + 40);
      v69 = v151;
      v70 = v157;
      v147 = *v155;
      v147(v151, v68, v157);
      sub_22CF1CB18(v67, type metadata accessor for Assertion);
      v71 = sub_22D01554C();
      v73 = v72;
      v146 = *v154;
      v146(v69, v70);
      v74 = v163;
      v75 = v56;
      if (*(v163 + 16))
      {
        v76 = sub_22CEEC698(v71, v73);
        v78 = v77;

        if (v78)
        {
          v79 = *(*(v74 + 56) + 8 * v76);
          goto LABEL_21;
        }
      }

      else
      {
      }

      v79 = 1;
LABEL_21:
      v144 = *(v148 + 8);
      v144(v156, v65);
      v80 = v145;
      if (sub_22D014BBC())
      {
        v81 = v79;
      }

      else
      {
        v81 = v80;
      }

      v148 = v81;
      v82 = v153;
      sub_22CEEB6DC(v75, v153, &qword_27D9F2600, v1);
      v83 = v82 + *(v173 + 48);
      v84 = v152;
      v85 = v157;
      v147(v152, v83 + *(v149 + 40), v157);
      sub_22CF1CB18(v83, type metadata accessor for Assertion);
      v86 = sub_22D01554C();
      v88 = v87;
      v146(v84, v85);
      v89 = v163;
      LODWORD(v149) = swift_isUniquelyReferenced_nonNull_native();
      v176 = v89;
      v9 = v86;
      v10 = sub_22CEEC698(v86, v88);
      v91 = *(v89 + 16);
      v92 = (v90 & 1) == 0;
      v93 = v91 + v92;
      if (__OFADD__(v91, v92))
      {
        goto LABEL_50;
      }

      if (*(v89 + 24) >= v93)
      {
        v39 = v172;
        if (v149)
        {
          goto LABEL_30;
        }

        v94 = v90;
        sub_22CFB6680();
      }

      else
      {
        v94 = v90;
        sub_22CFB938C(v93, v149);
        v95 = sub_22CEEC698(v9, v88);
        if ((v94 & 1) != (v96 & 1))
        {
          goto LABEL_52;
        }

        v10 = v95;
      }

      v90 = v94;
      v39 = v172;
LABEL_30:
      v97 = v175;
      if (v90)
      {

        v163 = v176;
        *(v176[7] + 8 * v10) = v148;
        sub_22CEEC3D8(v159, &qword_27D9F2600, v1);
      }

      else
      {
        v98 = v176;
        v176[(v10 >> 6) + 8] |= 1 << v10;
        v99 = (v98[6] + 16 * v10);
        *v99 = v9;
        v99[1] = v88;
        *(v98[7] + 8 * v10) = v148;
        sub_22CEEC3D8(v159, &qword_27D9F2600, v1);
        v100 = v98[2];
        v101 = __OFADD__(v100, 1);
        v102 = v100 + 1;
        if (v101)
        {
          goto LABEL_51;
        }

        v163 = v98;
        v98[2] = v102;
        v39 = v172;
      }

      v103 = v144;
      v144(v153, v97);
      v103(v24, v97);
      v43 = v166;
      v44 = v159;
      goto LABEL_7;
    }

    sub_22CEEC3D8(v56, &qword_27D9F2600, v1);
    (*v165)(v62, v9);
    v64 = *(v53 + 8);
    v10 = v53 + 8;
    v64(v24, v175);
    v45 = v2;
    v44 = v56;
    v43 = v166;
    v39 = v172;
  }

  while (v42);
  while (1)
  {
LABEL_9:
    v2 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v2 >= v43)
    {
      break;
    }

    v42 = *(v39 + 8 * v2);
    ++v45;
    if (v42)
    {
      v46 = v1;
      goto LABEL_13;
    }
  }

  v104 = v161;
  swift_beginAccess();
  v105 = v104[9];
  v106 = v160;
  v104[9] = v160;

  v107 = v104[13];
  v104[13] = v162;

  swift_beginAccess();
  v108 = v104[8];
  v104[8] = v163;

  os_unfair_lock_unlock(v158);
  v109 = sub_22D01636C();
  v110 = sub_22D01690C();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v176 = v112;
    *v111 = 136446210;

    v113 = sub_22D01686C();
    v115 = v114;

    v116 = sub_22CEEE31C(v113, v115, &v176);

    *(v111 + 4) = v116;
    _os_log_impl(&dword_22CEE1000, v109, v110, "Resolved prominent activities: %{public}s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    MEMORY[0x2318C6860](v112, -1, -1);
    MEMORY[0x2318C6860](v111, -1, -1);
  }

  v117 = sub_22D01636C();
  v118 = sub_22D01690C();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v176 = v120;
    *v119 = 136446210;
    v121 = sub_22D014E7C();

    v123 = MEMORY[0x2318C5950](v122, v121);
    v125 = v124;

    v126 = sub_22CEEE31C(v123, v125, &v176);

    *(v119 + 4) = v126;
    _os_log_impl(&dword_22CEE1000, v117, v118, "Resolved presenters: %{public}s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    MEMORY[0x2318C6860](v120, -1, -1);
    MEMORY[0x2318C6860](v119, -1, -1);
  }

  v127 = sub_22D01636C();
  v128 = sub_22D01690C();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v176 = v130;
    *v129 = 136446210;

    v131 = sub_22D0165FC();
    v133 = v132;

    v134 = sub_22CEEE31C(v131, v133, &v176);

    *(v129 + 4) = v134;
    _os_log_impl(&dword_22CEE1000, v127, v128, "Resolved QoS: %{public}s", v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v130);
    MEMORY[0x2318C6860](v130, -1, -1);
    MEMORY[0x2318C6860](v129, -1, -1);
  }

  v135 = v104[3];
  v136 = *(v106 + 16);
  if (!v136)
  {
    v137 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v137 = sub_22CEE561C(*(v106 + 16), 0);
  v138 = sub_22CEE56A4(&v176, v137 + 4, v136, v106);

  sub_22CEE57FC();
  if (v138 == v136)
  {
    v104 = v161;
LABEL_46:
    v176 = v137;
    sub_22D01643C();

    v139 = v104[4];
    v176 = v162;

    sub_22D01643C();

    v140 = v104[2];
    v176 = v163;

    sub_22D01643C();

    sub_22CF3B060(v141);
    sub_22CF3BABC();
    sub_22CF3BDD4();
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22CF39DE8(uint64_t a1)
{
  v78 = sub_22D0154EC();
  v2 = *(v78 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v78 - 8, v4);
  v77 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v6 = *(*(v79 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v79, v7);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v76 = &v62 - v15;
  v66 = MEMORY[0x277D84F98];
  v81 = MEMORY[0x277D84F98];
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v74 = (v2 + 88);
  v75 = (v2 + 16);
  v73 = *MEMORY[0x277D4D4A8];
  v70 = (v2 + 8);
  v80 = a1;

  v22 = 0;
  v71 = v20;
  for (i = a1 + 64; ; v16 = i)
  {
    v23 = v22;
    if (!v19)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v22 = v23;
LABEL_10:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v24 | (v22 << 6);
      v26 = v80;
      v27 = *(v80 + 48);
      v28 = sub_22D01534C();
      v69 = *(v28 - 8);
      v68 = *(v69 + 72);
      v29 = *(v69 + 16);
      v30 = v76;
      v67 = v28;
      v29(v76, v27 + v68 * v25);
      v31 = *(v26 + 56);
      v32 = type metadata accessor for Assertion();
      v33 = v79;
      sub_22CF07D60(v31 + *(*(v32 - 8) + 72) * v25, v30 + *(v79 + 48), type metadata accessor for Assertion);
      sub_22CEF0368(v30, v13, &qword_27D9F2600, &qword_22D018B60);
      v34 = &v13[*(v33 + 48)];
      v35 = v77;
      v36 = v78;
      (*v75)(v77, &v34[*(v32 + 20)], v78);
      v37 = (*v74)(v35, v36);
      if (v37 == v73)
      {
        break;
      }

      (*v70)(v35, v36);
      result = sub_22CEEC3D8(v13, &qword_27D9F2600, &qword_22D018B60);
      v23 = v22;
      v20 = v71;
      v16 = i;
      if (!v19)
      {
LABEL_7:
        while (1)
        {
          v22 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v22 >= v20)
          {

            return v66;
          }

          v19 = *(v16 + 8 * v22);
          ++v23;
          if (v19)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v38 = v67;
    v39 = &v34[*(v32 + 40)];
    v40 = sub_22D01554C();
    v63 = v41;
    v64 = v40;
    sub_22CEF0368(v13, v65, &qword_27D9F2600, &qword_22D018B60);
    v42 = v66[2];
    if (v66[3] <= v42)
    {
      sub_22CFB8FA4(v42 + 1, 1);
    }

    v43 = v81;
    v44 = *(v81 + 40);
    sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450]);
    v45 = v38;
    result = sub_22D01661C();
    v46 = v43 + 64;
    v66 = v43;
    v47 = -1 << *(v43 + 32);
    v48 = result & ~v47;
    v49 = v48 >> 6;
    if (((-1 << v48) & ~*(v43 + 64 + 8 * (v48 >> 6))) == 0)
    {
      break;
    }

    v50 = __clz(__rbit64((-1 << v48) & ~*(v43 + 64 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
    v52 = v68;
    v51 = v69;
LABEL_25:
    v57 = *(v79 + 48);
    *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
    v58 = v66;
    v59 = v65;
    (*(v51 + 32))(v66[6] + v50 * v52, v65, v45);
    v60 = (v58[7] + 16 * v50);
    v61 = v63;
    *v60 = v64;
    v60[1] = v61;
    ++v58[2];
    result = sub_22CF1CB18(v59 + v57, type metadata accessor for Assertion);
    v20 = v71;
  }

  v53 = 0;
  v54 = (63 - v47) >> 6;
  v52 = v68;
  v51 = v69;
  while (++v49 != v54 || (v53 & 1) == 0)
  {
    v55 = v49 == v54;
    if (v49 == v54)
    {
      v49 = 0;
    }

    v53 |= v55;
    v56 = *(v46 + 8 * v49);
    if (v56 != -1)
    {
      v50 = __clz(__rbit64(~v56)) + (v49 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22CF3A374(uint64_t a1)
{
  result = MEMORY[0x2318C59E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22CEE54CC(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF3A490()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27 - v5;
  os_unfair_lock_assert_owner(*(v0[6] + 16));
  v28 = MEMORY[0x277D84F98];
  v7 = v0[19];
  v8 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v7);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = v9;
  v11 = v9 + 64;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;

  for (i = 0; v14; result = sub_22CEEC3D8(v6, &qword_27D9F2600, &qword_22D018B60))
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = *(v10 + 48);
    v22 = sub_22D01534C();
    (*(*(v22 - 8) + 16))(v6, v21 + *(*(v22 - 8) + 72) * v20, v22);
    v23 = *(v10 + 56);
    v24 = v23 + *(*(type metadata accessor for Assertion() - 8) + 72) * v20;
    v25 = *(v2 + 48);
    sub_22CF07D60(v24, &v6[v25], type metadata accessor for Assertion);
    sub_22CF71E9C(v6, &v6[v25], v1, &v28);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      v26 = sub_22CF3A6E0(v28);

      return v26;
    }

    v14 = *(v11 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF3A6E0(uint64_t a1)
{
  v35 = sub_22D014E7C();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v35, v5);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v38 = v1;
  v41 = MEMORY[0x277D84F90];
  sub_22CF4416C(0, v7, 0);
  v8 = v41;
  v9 = -1 << *(a1 + 32);
  v36 = a1 + 64;
  v10 = sub_22D016AEC();
  v11 = v3;
  v12 = v10;
  v13 = 0;
  v39 = *(a1 + 36);
  v34 = v11;
  v32 = a1 + 72;
  v33 = v11 + 32;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v36 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v7;
    v17 = (*(a1 + 48) + 16 * v12);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v12);
    v40[0] = *v17;
    v40[1] = v18;
    v40[2] = v19;

    v20 = v38;
    sub_22CF72438(v40, v37);
    v38 = v20;
    if (v20)
    {
      goto LABEL_28;
    }

    v41 = v8;
    v22 = *(v8 + 16);
    v21 = *(v8 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_22CF4416C(v21 > 1, v22 + 1, 1);
      v8 = v41;
    }

    *(v8 + 16) = v22 + 1;
    (*(v34 + 32))(v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22, v37, v35);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_25;
    }

    v23 = *(v36 + 8 * v15);
    if ((v23 & (1 << v12)) == 0)
    {
      goto LABEL_26;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v24 = v23 & (-2 << (v12 & 0x3F));
    if (v24)
    {
      v14 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v15 << 6;
      v26 = v15 + 1;
      v27 = (v32 + 8 * v15);
      while (v26 < (v14 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          sub_22CF44CF8(v12, v39, 0);
          v14 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      sub_22CF44CF8(v12, v39, 0);
    }

LABEL_4:
    ++v13;
    v12 = v14;
    v7 = v16;
    if (v13 == v16)
    {
      return v8;
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
LABEL_27:
  __break(1u);
LABEL_28:

  __break(1u);
  return result;
}

void sub_22CF3AA38(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(*(Strong + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock) + 16);

    os_unfair_lock_lock(v4);
    v5 = *&v3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_prominentActivityIdentifiers];
    *&v3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_prominentActivityIdentifiers] = v1;

    v6 = OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_clients;
    swift_beginAccess();
    v7 = *&v3[v6];
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = *&v3[v6];

    v13 = 0;
    while (v10)
    {
      v14 = v13;
LABEL_10:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v7 + 56) + ((v14 << 9) | (8 * v15)));
      sub_22CF2FA4C(v1);
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        os_unfair_lock_unlock(v4);

        return;
      }

      v10 = *(v7 + 64 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22CF3ABD4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(*(result + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock) + 16);
    v4 = result;

    os_unfair_lock_lock(v3);
    sub_22CF3AC6C(v4, v1);
    os_unfair_lock_unlock(v3);
  }

  return result;
}

uint64_t sub_22CF3AC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D014E7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_presentations;
  swift_beginAccess();
  v11 = *(a1 + v10);
  *(a1 + v10) = MEMORY[0x277D84F98];

  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v57 = v4;
    v58 = (v5 + 16);
    v14 = *(v5 + 72);
    v54 = (v5 + 40);
    v55 = (v5 + 32);
    v56 = v14;
    while (1)
    {
      v59 = v12;
      v19 = sub_22D014E6C();
      v21 = v20;
      swift_beginAccess();
      v22 = *v58;
      v23 = v9;
      v60 = v13;
      v22(v9, v13, v4);
      v24 = *(a1 + v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = *(a1 + v10);
      v26 = v61;
      *(a1 + v10) = 0x8000000000000000;
      v27 = sub_22CEEC698(v19, v21);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        break;
      }

      v33 = v28;
      if (v26[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = v27;
          sub_22CFB7BB4();
          v27 = v39;
        }
      }

      else
      {
        sub_22CFBB1B0(v32, isUniquelyReferenced_nonNull_native);
        v27 = sub_22CEEC698(v19, v21);
        if ((v33 & 1) != (v34 & 1))
        {
          goto LABEL_28;
        }
      }

      v9 = v23;
      v35 = v56;
      if (v33)
      {
        v15 = v27;

        v16 = v61;
        v4 = v57;
        (*v54)(v61[7] + v15 * v35, v9, v57);
        v17 = v60;
      }

      else
      {
        v16 = v61;
        v61[(v27 >> 6) + 8] |= 1 << v27;
        v36 = (v16[6] + 16 * v27);
        *v36 = v19;
        v36[1] = v21;
        v4 = v57;
        (*v55)(v16[7] + v27 * v35, v9, v57);
        v37 = v16[2];
        v31 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        v17 = v60;
        if (v31)
        {
          goto LABEL_27;
        }

        v16[2] = v38;
      }

      v18 = *(a1 + v10);
      *(a1 + v10) = v16;

      swift_endAccess();
      v13 = v17 + v35;
      v12 = v59 - 1;
      if (v59 == 1)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v40 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_clients;
    swift_beginAccess();
    v41 = *(a1 + v40);
    v42 = 1 << *(v41 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v41 + 64);
    v45 = (v42 + 63) >> 6;
    v46 = *(a1 + v40);

    v47 = 0;
    while (v44)
    {
      v48 = v47;
LABEL_22:
      v49 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v50 = *(a1 + v10);
      v51 = *(*(v41 + 56) + ((v48 << 9) | (8 * v49)));

      sub_22CF83C98(v52);
    }

    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v45)
      {
      }

      v44 = *(v41 + 64 + 8 * v48);
      ++v47;
      if (v44)
      {
        v47 = v48;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22CF3B060()
{
  v1 = v0;
  v2 = sub_22D01430C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v42 - v14;
  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v16 = sub_22D01637C();
  __swift_project_value_buffer(v16, qword_2814443A8);
  v17 = sub_22D01636C();
  v18 = sub_22D01690C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22CEE1000, v17, v18, "Scheduling expiration timer", v19, 2u);
    MEMORY[0x2318C6860](v19, -1, -1);
  }

  sub_22CF3B58C(v15);
  sub_22D01423C();
  v20 = sub_22D01428C();
  v21 = *(v3 + 8);
  v21(v12, v2);
  if (v20)
  {
    sub_22D0142DC();
    sub_22D01424C();
    v23 = v22;
    v21(v12, v2);
    (*(v3 + 16))(v8, v15, v2);
    v24 = sub_22D01636C();
    v25 = v21;
    v26 = sub_22D01690C();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v27 = 136446210;
      sub_22CF7C4D4(&unk_281443A20, MEMORY[0x277CC9578]);
      v28 = sub_22D016DEC();
      v43 = v1;
      v30 = v29;
      v25(v8, v2);
      v31 = sub_22CEEE31C(v28, v30, &v45);
      v1 = v43;

      *(v27 + 4) = v31;
      _os_log_impl(&dword_22CEE1000, v24, v26, "Expiration timer will fire at %{public}s", v27, 0xCu);
      v32 = v44;
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x2318C6860](v32, -1, -1);
      MEMORY[0x2318C6860](v27, -1, -1);
    }

    else
    {

      v25(v8, v2);
    }

    v37 = *(v1 + 168);
    v38 = *(*(v37 + 24) + 16);

    os_unfair_lock_lock(v38);
    sub_22CFA98A8();
    os_unfair_lock_unlock(v38);

    v39 = *(v1 + 120);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = *(*(v37 + 24) + 16);

    os_unfair_lock_lock(v41);
    sub_22CFA9024(v39, sub_22CF7B57C, v40, v23);
    os_unfair_lock_unlock(v41);

    v25(v15, v2);
  }

  else
  {
    v33 = sub_22D01636C();
    v34 = sub_22D01690C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22CEE1000, v33, v34, "Expiration timer does not need to restart", v35, 2u);
      MEMORY[0x2318C6860](v35, -1, -1);
    }

    return (v21)(v15, v2);
  }
}

uint64_t sub_22CF3B554()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3B58C@<X0>(char *a1@<X8>)
{
  v63 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  v2 = *(*(v66 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v66, v3);
  v75 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v74 = &v62 - v7;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v65 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v64 = &v62 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v62 - v22;
  v24 = v1[19];
  v25 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v24);
  v26 = (*(v25 + 8))(v24, v25);
  sub_22D01423C();
  v28 = *(v9 + 16);
  v27 = v9 + 16;
  v70 = v20;
  v71 = v8;
  v62 = v23;
  v28(v20, v23, v8);
  v29 = v26 + 64;
  v30 = 1 << *(v26 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v26 + 64);
  v33 = (v30 + 63) >> 6;
  v67 = (v27 - 8);
  v68 = (v27 + 16);
  v69 = v26;

  v35 = 0;
  while (v32)
  {
LABEL_17:
    v46 = __clz(__rbit64(v32)) | (v35 << 6);
    v47 = v69;
    v48 = *(v69 + 48);
    v49 = sub_22D01534C();
    v72 = *(v49 - 8);
    v50 = v74;
    (*(v72 + 16))(v74, v48 + *(v72 + 72) * v46, v49);
    v51 = *(v47 + 56);
    v52 = type metadata accessor for Assertion();
    v53 = v51 + *(*(v52 - 8) + 72) * v46;
    v54 = v66;
    sub_22CF07D60(v53, v50 + *(v66 + 48), type metadata accessor for Assertion);
    v55 = v75;
    sub_22CEEB6DC(v50, v75, &qword_27D9F2600, &qword_22D018B60);
    v56 = v55 + *(v54 + 48);
    v57 = v56 + *(v52 + 36);
    v58 = *(v57 + 8);
    v73 = v49;
    if (v58)
    {
      v36 = v65;
      sub_22D01423C();
    }

    else
    {
      v59 = *v57;
      v60 = v56 + *(v52 + 32);
      v36 = v65;
      sub_22D01425C();
    }

    v32 &= v32 - 1;
    sub_22CF1CB18(v56, type metadata accessor for Assertion);
    sub_22CF7C4D4(&qword_281443A30, MEMORY[0x277CC9578]);
    v37 = v70;
    v38 = v36;
    v39 = v71;
    v40 = sub_22D01663C();
    sub_22CEEC3D8(v74, &qword_27D9F2600, &qword_22D018B60);
    if (v40)
    {
      v41 = v37;
    }

    else
    {
      v41 = v38;
    }

    if (v40)
    {
      v42 = v38;
    }

    else
    {
      v42 = v37;
    }

    (*v67)(v41, v39);
    v43 = *v68;
    v44 = v64;
    (*v68)(v64, v42, v39);
    (*(v72 + 8))(v75, v73);
    result = (v43)(v37, v44, v39);
  }

  while (1)
  {
    v45 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v45 >= v33)
    {
      v61 = v71;
      (*v67)(v62, v71);

      (*v68)(v63, v70, v61);
    }

    v32 = *(v29 + 8 * v45);
    ++v35;
    if (v32)
    {
      v35 = v45;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF3BABC()
{
  v1 = sub_22D01697C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01691C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = sub_22D01653C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = v0[19];
  v14 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v13);
  v15 = *((*(v14 + 8))(v13, v14) + 16);

  if (v15)
  {
    v17 = sub_22CEE82F8(0, &qword_28143FA08, 0x277D85C78);
    v19[1] = "Unknown attribute";
    v19[2] = v17;
    sub_22D0164EC();
    v19[3] = MEMORY[0x277D84F90];
    sub_22CF7C4D4(&qword_28143FA20, MEMORY[0x277D85230]);
    v19[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
    sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
    sub_22D016ADC();
    (*(v2 + 104))(v6, *MEMORY[0x277D85260], v19[0]);
    v18 = sub_22D0169BC();
    sub_22D01566C();

    sub_22D01565C();
    sub_22D01564C();
  }

  return result;
}

uint64_t sub_22CF3BDD4()
{
  v1 = v0;
  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v2);
  v4 = *((*(v3 + 8))(v2, v3) + 16);

  if (v4)
  {
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_2814443A8);
    v7 = sub_22D01636C();
    v8 = sub_22D01690C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22CEE1000, v7, v8, "Scheduling assertion purge", v9, 2u);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    sub_22D01566C();
    v10 = v1[15];

    sub_22D01564C();
  }

  return result;
}

uint64_t sub_22CF3BF74(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v20 - v6;
  v8 = *(*(v1 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  os_unfair_lock_lock(v8);
  v9 = *a1;
  v10 = a1[1];
  v11 = type metadata accessor for Activity();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  swift_beginAccess();

  sub_22CF0BC5C(v7, v9, v10);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v21 = v8;
  v22 = a1;
  v15 = sub_22CF1C2FC(v14, 0);
  v16 = sub_22CF102C0(&v23, v15 + 4, v14, v13);

  result = sub_22CEE57FC();
  if (v16 == v14)
  {
    v8 = v21;
    a1 = v22;
LABEL_5:
    os_unfair_lock_unlock(v8);
    MEMORY[0x28223BE20](v18, v19);
    *(&v20 - 2) = a1;
    sub_22CF1685C(sub_22CF3C1BC, (&v20 - 4), v15);
    sub_22CF0EE0C(a1, byte_27D9F36F0, *&qword_27D9F36F8);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF3C1D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  result = sub_22CF16990(a2);
  if (result)
  {
    v5 = *(*(v3 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
    os_unfair_lock_lock(v5);
    *(v3 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20F0, &qword_22D018918);
    v6 = sub_22D014C8C();
    v7 = *(v6 - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22D0187A0;
    v11 = *MEMORY[0x277CB9610];
    v12 = sub_22D014C4C();
    (*(*(v12 - 8) + 104))(v10 + v9, v11, v12);
    (*(v7 + 104))(v10 + v9, *MEMORY[0x277CB9630], v6);
    v13 = sub_22CFD7A04(v10, *a2, a2[1]);
    swift_setDeallocating();
    v14 = *(v10 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    os_unfair_lock_unlock(v5);
    sub_22CF1C384(v13);
  }

  return result;
}

uint64_t sub_22CF3C3B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CF28F14();
  }

  return result;
}

uint64_t sub_22CF3C408(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  swift_beginAccess();
  sub_22CF3C4B0(v3, v4);
  swift_endAccess();

  if (!*(*(a1 + 24) + 16))
  {
    if (*(a1 + 32))
    {
      v6 = *(a1 + 32);

      sub_22D01562C();

      v7 = *(a1 + 32);
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_22CF3C4B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22D016EAC();
  sub_22D0166DC();
  v7 = sub_22D016ECC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22D016DFC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22CF60134();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_22CF3C5EC(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_22CF3C5EC(unint64_t result)
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

    v9 = sub_22D016AFC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22D016EAC();

        sub_22D0166DC();
        v15 = sub_22D016ECC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

void sub_22CF3C7B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D01525C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01637C();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01635C();
  (*(v5 + 16))(v9, a1, v4);
  v15 = sub_22D01636C();
  v16 = sub_22D01690C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = a1;
    v20 = v19;
    v32[0] = v19;
    *v18 = 136446210;
    v21 = sub_22D0151CC();
    v30 = v2;
    v23 = v22;
    (*(v5 + 8))(v9, v4);
    v24 = sub_22CEEE31C(v21, v23, v32);
    v2 = v30;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_22CEE1000, v15, v16, "Dismissing alert: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2318C6860](v20, -1, -1);
    MEMORY[0x2318C6860](v18, -1, -1);

    (*(v31 + 8))(v14, v28);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
    (*(v31 + 8))(v14, v10);
  }

  sub_22D0151CC();
  swift_beginAccess();
  v25 = *__swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  v26 = sub_22D01666C();

  [v25 dismissAlertWithActivityIdentifier_];
}

void sub_22CF3CB30(uint64_t a1, unint64_t a2)
{
  v5 = sub_22D01637C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v2 + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock) + 16);
  os_unfair_lock_lock(v11);
  v12 = OBJC_IVAR____TtC11SessionCore18AlertServiceServer__lock_clients;
  swift_beginAccess();
  v13 = *(v2 + v12);

  os_unfair_lock_unlock(v11);
  if ((v13 & 0xC000000000000001) == 0)
  {
    if (*(v13 + 16))
    {
      v16 = 0;
      v18 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v15 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(v13 + 56);
      goto LABEL_9;
    }

LABEL_21:

    sub_22D01635C();
    v28 = sub_22D01636C();
    v29 = sub_22D0168EC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22CEE1000, v28, v29, "No clients registered for alert service", v30, 2u);
      MEMORY[0x2318C6860](v30, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    return;
  }

  if (!sub_22D016B7C())
  {
    goto LABEL_21;
  }

  sub_22D016B3C();
  _s11SessionCore6ClientCMa_0();
  sub_22CF34C48(&qword_27D9F3110, _s11SessionCore6ClientCMa_0);
  sub_22D01689C();
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = v37;
LABEL_9:
  v31[1] = v15;
  v21 = (v15 + 64) >> 6;
  if (v13 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v22 = v16;
    v23 = v17;
    v24 = v16;
    if (!v17)
    {
      break;
    }

LABEL_14:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v13 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v26)
    {
LABEL_20:
      sub_22CEE57FC();
      return;
    }

    while (1)
    {
      sub_22CF3CE94(a1, a2);

      v16 = v24;
      v17 = v25;
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v27 = sub_22D016BAC();
      if (v27)
      {
        v31[2] = v27;
        _s11SessionCore6ClientCMa_0();
        swift_dynamicCast();
        v26 = v32;
        v24 = v16;
        v25 = v17;
        if (v32)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_20;
    }

    v23 = *(v14 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22CF3CE94(uint64_t a1, unint64_t a2)
{
  v5 = sub_22D01637C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v24 - v13;
  if ([*(v2 + OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27[0] = v25;
  v27[1] = v26;
  if (*(&v26 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3100, &qword_22D01AD80);
    if (swift_dynamicCast())
    {
      v15 = v24[1];
      sub_22D01635C();

      v16 = sub_22D01636C();
      v17 = sub_22D01690C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v27[0] = v19;
        *v18 = 136446210;
        *(v18 + 4) = sub_22CEEE31C(a1, a2, v27);
        _os_log_impl(&dword_22CEE1000, v16, v17, "Asking client to dismiss alert: %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x2318C6860](v19, -1, -1);
        MEMORY[0x2318C6860](v18, -1, -1);
      }

      (*(v6 + 8))(v14, v5);
      v20 = sub_22D01666C();
      [v15 dismissAlertWithActivityIdentifier_];
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    sub_22CFAA9A8(v27);
  }

  sub_22D01635C();
  v21 = sub_22D01636C();
  v22 = sub_22D0168EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22CEE1000, v21, v22, "Client does not implement expected interface", v23, 2u);
    MEMORY[0x2318C6860](v23, -1, -1);
  }

  (*(v6 + 8))(v11, v5);
}

unint64_t sub_22CF3D1BC()
{
  result = qword_28143F350;
  if (!qword_28143F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143F350);
  }

  return result;
}

uint64_t sub_22CF3D220(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_22CF3D22C(a1, a2, v2[2]);
}

uint64_t sub_22CF3D22C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1(a1);
}

void *sub_22CF3D558()
{
  type metadata accessor for ActivityDatabase.MutablePushSubscriptionStore();
  v1 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[2] = v1;
  type metadata accessor for ActivityDatabase.MutablePushTokenStore();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[3] = v2;
  type metadata accessor for ActivityDatabase.MutablePublicTokenStore();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[4] = v3;
  type metadata accessor for ActivityDatabase.MutablePushBudgetStore();
  v4 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[5] = v4;
  type metadata accessor for ActivityDatabase.MutableActivityStore();
  v5 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[6] = v5;
  type metadata accessor for ActivityDatabase.MutableSyncEngineRecordMetadataStore();
  v6 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[7] = v6;
  type metadata accessor for ActivityDatabase.MutableSyncEnginePairedDeviceIdentifierStore();
  v7 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[8] = v7;
  type metadata accessor for ActivityDatabase.MutableSyncEngineRecordIDSyncDateStore();
  v8 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[9] = v8;
  type metadata accessor for ActivityDatabase.MutableAssertionStore();
  v9 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[10] = v9;
  return v0;
}

uint64_t sub_22CF3D8CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 48);
  return sub_22CF3D89C(v3, v2);
}

uint64_t sub_22CF3D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a5;
  v18[2] = a6;
  v19 = a1;
  v7 = sub_22D0144BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v22 = sub_22D0144DC();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v22, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v15 = sub_22D01440C();

  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x46204554454C4544, 0xEC000000204D4F52);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2045524548570ALL, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v21[3] = MEMORY[0x277D837D0];
  v21[4] = MEMORY[0x277D4D6C8];
  v21[0] = v19;
  v21[1] = a2;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    result = sub_22D016CFC();
    __break(1u);
    return result;
  }

  v16 = v20;
  sub_22D01444C();
  if (v16)
  {
    (*(v10 + 8))(v14, v22);
  }

  else
  {

    return (*(v10 + 8))(v14, v22);
  }
}

uint64_t sub_22CF3DC24()
{
  v1 = v0[2];
  swift_weakAssign();
  v2 = v0[3];
  swift_weakAssign();
  v3 = v0[4];
  swift_weakAssign();
  v4 = v0[5];
  swift_weakAssign();
  v5 = v0[6];
  swift_weakAssign();
  v6 = v0[7];
  swift_weakAssign();
  v7 = v0[8];
  swift_weakAssign();
  v8 = v0[9];
  swift_weakAssign();
  v9 = v0[10] + 16;

  return swift_weakAssign();
}

uint64_t sub_22CF3DCD4()
{
  sub_22CF3DD08();

  return swift_deallocClassInstance();
}

void *sub_22CF3DD08()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  return v0;
}

uint64_t sub_22CF3DD6C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF3DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v12 = sub_22D01659C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = (&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a2 + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_queue);
  *v17 = v18;
  (*(v13 + 104))(v17, *MEMORY[0x277D85200], v12);
  v19 = v18;
  LOBYTE(v18) = sub_22D0165BC();
  result = (*(v13 + 8))(v17, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = swift_beginAccess();
  if (*(a3 + 16))
  {
    return result;
  }

  result = swift_beginAccess();
  v21 = *(a4 + 16);
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(a4 + 16) = v22;
  if (!a1)
  {
    goto LABEL_7;
  }

  if ((a5 & 0xC000000000000001) != 0)
  {
    result = sub_22D016B7C();
    if (v22 != result)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = *(a5 + 16);
  if (v22 == result)
  {
LABEL_7:
    swift_beginAccess();
    *(a3 + 16) = 1;
    return a6(a1);
  }

  return result;
}

uint64_t sub_22CF3DFA8(void *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  *(a2 + 24) = *a1;

  return sub_22CEF4520();
}

void sub_22CF3DFEC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22D01415C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_22CF3E050(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3A28, &qword_22D01C3C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  if (a1)
  {
    v9 = *MEMORY[0x277D4D408];
    v10 = sub_22D01520C();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v8, v9, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  else
  {
    v12 = sub_22D01520C();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  a2(v8);
  return sub_22CEEC3D8(v8, &qword_27D9F3A28, &qword_22D01C3C8);
}

uint64_t sub_22CF3E1F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E23C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3E284()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22CF3E2BC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 40);

  v7 = sub_22D014B1C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3E420()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E458()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E494()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E4CC()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_22CF3E51C()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_22CF3E558()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CF3E59C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22CF3E5E4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22CF3E66C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF3E6AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3E6E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_22CF3E740@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_22CF3E784()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3E7C4()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_22CF3E814()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_22CF3E850()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E89C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3E8D4()
{
  v1 = (type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_22D01436C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  v8 = sub_22D01430C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3EA0C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3EA44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3EA80()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v30 = sub_22D01486C();
    (*(*(v30 - 8) + 8))(v9, v30);
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = *(v9 + 8);

    v12 = type metadata accessor for Activity();
    v13 = v12[5];
    v14 = sub_22D014E2C();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    v15 = v12[6];
    v16 = sub_22D01502C();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
    v17 = *(v9 + v12[7]);

    v18 = *(v9 + v12[8]);

    v19 = *(v9 + v12[9]);

    v20 = v12[10];
    v21 = sub_22D01430C();
    v22 = *(*(v21 - 8) + 8);
    v22(v9 + v20, v21);
    v22(v9 + v12[11], v21);
    v23 = *(v9 + v12[13] + 8);

    v24 = v12[14];
    v25 = sub_22D0146BC();
    (*(*(v25 - 8) + 8))(v9 + v24, v25);
    v26 = v12[15];
    v27 = sub_22D01486C();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v9 + v26, 1, v27))
    {
      (*(v28 + 8))(v9 + v26, v27);
    }

    v29 = *(v9 + v12[16] + 8);

    v3 = (v2 + 32) & ~v2;
  }

  v31 = v1[7];
  v32 = sub_22D01483C();
  (*(*(v32 - 8) + 8))(v6 + v31, v32);
  v33 = *(v6 + v1[8]);
  swift_unknownObjectRelease();
  v34 = v1[9];
  v35 = sub_22D0146BC();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3EE58()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22CF3EEA0()
{
  v1 = sub_22D01436C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF3EF78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22CF3EFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22CF3F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01436C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22D015A5C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22CF3F144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22D01436C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22D015A5C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22CF3F250()
{
  v1 = sub_22D01534C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF3F314()
{
  v1 = type metadata accessor for Assertion();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_22D01534C();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[5];
  v9 = sub_22D0154EC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[6];
  v11 = sub_22D01539C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = *(v6 + v1[7] + 8);

  v14 = v1[8];
  v15 = sub_22D01430C();
  (*(*(v15 - 8) + 8))(v6 + v14, v15);
  v16 = v1[10];
  v17 = sub_22D01555C();
  (*(*(v17 - 8) + 8))(v6 + v16, v17);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3F544()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF3F584()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3F5D4()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3F618()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v30 = sub_22D01486C();
    (*(*(v30 - 8) + 8))(v9, v30);
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = *(v9 + 8);

    v12 = type metadata accessor for Activity();
    v13 = v12[5];
    v14 = sub_22D014E2C();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    v15 = v12[6];
    v16 = sub_22D01502C();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
    v17 = *(v9 + v12[7]);

    v18 = *(v9 + v12[8]);

    v19 = *(v9 + v12[9]);

    v20 = v12[10];
    v21 = sub_22D01430C();
    v22 = *(*(v21 - 8) + 8);
    v22(v9 + v20, v21);
    v22(v9 + v12[11], v21);
    v23 = *(v9 + v12[13] + 8);

    v24 = v12[14];
    v25 = sub_22D0146BC();
    (*(*(v25 - 8) + 8))(v9 + v24, v25);
    v26 = v12[15];
    v27 = sub_22D01486C();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v9 + v26, 1, v27))
    {
      (*(v28 + 8))(v9 + v26, v27);
    }

    v29 = *(v9 + v12[16] + 8);

    v3 = (v2 + 32) & ~v2;
  }

  v31 = v1[7];
  v32 = sub_22D01483C();
  (*(*(v32 - 8) + 8))(v6 + v31, v32);
  v33 = *(v6 + v1[8]);
  swift_unknownObjectRelease();
  v34 = v1[9];
  v35 = sub_22D0146BC();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3F9F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FA28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FA60()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3FAAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FAE4()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v30 = sub_22D01486C();
    (*(*(v30 - 8) + 8))(v9, v30);
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = *(v9 + 8);

    v12 = type metadata accessor for Activity();
    v13 = v12[5];
    v14 = sub_22D014E2C();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    v15 = v12[6];
    v16 = sub_22D01502C();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
    v17 = *(v9 + v12[7]);

    v18 = *(v9 + v12[8]);

    v19 = *(v9 + v12[9]);

    v20 = v12[10];
    v21 = sub_22D01430C();
    v22 = *(*(v21 - 8) + 8);
    v22(v9 + v20, v21);
    v22(v9 + v12[11], v21);
    v23 = *(v9 + v12[13] + 8);

    v24 = v12[14];
    v25 = sub_22D0146BC();
    (*(*(v25 - 8) + 8))(v9 + v24, v25);
    v26 = v12[15];
    v27 = sub_22D01486C();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v9 + v26, 1, v27))
    {
      (*(v28 + 8))(v9 + v26, v27);
    }

    v29 = *(v9 + v12[16] + 8);

    v3 = (v2 + 32) & ~v2;
  }

  v31 = v1[7];
  v32 = sub_22D01483C();
  (*(*(v32 - 8) + 8))(v6 + v31, v32);
  v33 = *(v6 + v1[8]);
  swift_unknownObjectRelease();
  v34 = v1[9];
  v35 = sub_22D0146BC();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF3FEBC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FEF4()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF3FF2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF3FF6C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CF3FFB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF3FFF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF40034()
{
  v1 = sub_22D0161DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF40108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01502C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_22CF401D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D01502C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22CF4028C()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22CF402E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF40318()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v30 = sub_22D01486C();
    (*(*(v30 - 8) + 8))(v9, v30);
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = *(v9 + 8);

    v12 = type metadata accessor for Activity();
    v13 = v12[5];
    v14 = sub_22D014E2C();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    v15 = v12[6];
    v16 = sub_22D01502C();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
    v17 = *(v9 + v12[7]);

    v18 = *(v9 + v12[8]);

    v19 = *(v9 + v12[9]);

    v20 = v12[10];
    v21 = sub_22D01430C();
    v22 = *(*(v21 - 8) + 8);
    v22(v9 + v20, v21);
    v22(v9 + v12[11], v21);
    v23 = *(v9 + v12[13] + 8);

    v24 = v12[14];
    v25 = sub_22D0146BC();
    (*(*(v25 - 8) + 8))(v9 + v24, v25);
    v26 = v12[15];
    v27 = sub_22D01486C();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v9 + v26, 1, v27))
    {
      (*(v28 + 8))(v9 + v26, v27);
    }

    v29 = *(v9 + v12[16] + 8);

    v3 = (v2 + 32) & ~v2;
  }

  v31 = v1[7];
  v32 = sub_22D01483C();
  (*(*(v32 - 8) + 8))(v6 + v31, v32);
  v33 = *(v6 + v1[8]);
  swift_unknownObjectRelease();
  v34 = v1[9];
  v35 = sub_22D0146BC();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF406F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF40734()
{
  v1 = sub_22D0157AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22D01430C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22CF408CC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_22D01483C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_22CF40A44(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22D01483C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_22CF40BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Activity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22CF40C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Activity();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22CF40D30()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF40D68()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF40DC4()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v30 = sub_22D01486C();
    (*(*(v30 - 8) + 8))(v9, v30);
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = *(v9 + 8);

    v12 = type metadata accessor for Activity();
    v13 = v12[5];
    v14 = sub_22D014E2C();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    v15 = v12[6];
    v16 = sub_22D01502C();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
    v17 = *(v9 + v12[7]);

    v18 = *(v9 + v12[8]);

    v19 = *(v9 + v12[9]);

    v20 = v12[10];
    v21 = sub_22D01430C();
    v22 = *(*(v21 - 8) + 8);
    v22(v9 + v20, v21);
    v22(v9 + v12[11], v21);
    v23 = *(v9 + v12[13] + 8);

    v24 = v12[14];
    v25 = sub_22D0146BC();
    (*(*(v25 - 8) + 8))(v9 + v24, v25);
    v26 = v12[15];
    v27 = sub_22D01486C();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v9 + v26, 1, v27))
    {
      (*(v28 + 8))(v9 + v26, v27);
    }

    v29 = *(v9 + v12[16] + 8);

    v3 = (v2 + 32) & ~v2;
  }

  v31 = v1[7];
  v32 = sub_22D01483C();
  (*(*(v32 - 8) + 8))(v6 + v31, v32);
  v33 = *(v6 + v1[8]);
  swift_unknownObjectRelease();
  v34 = v1[9];
  v35 = sub_22D0146BC();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF411A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF411EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22CF41224()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF4125C()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF412A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF41438(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22CF414A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22CF41514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01502C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22CF41644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D01502C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22CF41774()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_22CF417C4()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF417FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_22CF41838()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF41878()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_22CF418C8()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_22CF41904()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v30 = sub_22D01486C();
    (*(*(v30 - 8) + 8))(v9, v30);
  }

  else if (!EnumCaseMultiPayload)
  {
    v11 = *(v9 + 8);

    v12 = type metadata accessor for Activity();
    v13 = v12[5];
    v14 = sub_22D014E2C();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    v15 = v12[6];
    v16 = sub_22D01502C();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
    v17 = *(v9 + v12[7]);

    v18 = *(v9 + v12[8]);

    v19 = *(v9 + v12[9]);

    v20 = v12[10];
    v21 = sub_22D01430C();
    v22 = *(*(v21 - 8) + 8);
    v22(v9 + v20, v21);
    v22(v9 + v12[11], v21);
    v23 = *(v9 + v12[13] + 8);

    v24 = v12[14];
    v25 = sub_22D0146BC();
    (*(*(v25 - 8) + 8))(v9 + v24, v25);
    v26 = v12[15];
    v27 = sub_22D01486C();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v9 + v26, 1, v27))
    {
      (*(v28 + 8))(v9 + v26, v27);
    }

    v29 = *(v9 + v12[16] + 8);

    v3 = (v2 + 32) & ~v2;
  }

  v31 = v1[7];
  v32 = sub_22D01483C();
  (*(*(v32 - 8) + 8))(v6 + v31, v32);
  v33 = *(v6 + v1[8]);
  swift_unknownObjectRelease();
  v34 = v1[9];
  v35 = sub_22D0146BC();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v6 + v34, 1, v35))
  {
    (*(v36 + 8))(v6 + v34, v35);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF41CDC()
{
  v1 = sub_22D015FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF41DA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF41DE0()
{
  v1 = sub_22D0162BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF41EA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CF41EF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22CF41F34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF41F74()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF41FC0()
{
  v1 = sub_22D0161DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CF42094()
{
  v1 = sub_22D015C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22CF42170()
{
  v1 = sub_22D015C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_22CF42284(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014ABC();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D014AAC();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CF423B0(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814444B0);
    v9 = sub_22D01636C();
    v10 = sub_22D01690C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, a4, v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }

    v12 = *(*&v7[OBJC_IVAR____TtC11SessionCore11InputServer_lock] + 16);
    os_unfair_lock_lock(v12);
    swift_beginAccess();
    v13 = sub_22CF60870(a3);
    swift_endAccess();

    os_unfair_lock_unlock(v12);
  }
}

id sub_22CF42550()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InputServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22CF42634()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11SessionCore11InputServer_lock) + 16);
  os_unfair_lock_lock(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = 0x73746E65696C63;
  *(inited + 40) = 0xE700000000000000;
  v3 = OBJC_IVAR____TtC11SessionCore11InputServer_clients;
  swift_beginAccess();
  v4 = *(v0 + v3);

  sub_22CF427DC(v5);
  v7 = v6;

  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v8 = sub_22D016D3C();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v13 = v8;

  sub_22CF43CD4(v9, 1, &v13);

  v10 = v13;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
  *(inited + 48) = v10;
  v11 = sub_22CF11C44(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F3460, &unk_22D0188B0);
  os_unfair_lock_unlock(v1);
  return v11;
}

void sub_22CF427DC(uint64_t a1)
{
  v1 = a1;
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22D016B7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v53 = MEMORY[0x277D84F90];
    sub_22CF440C8(0, v2 & ~(v2 >> 63), 0);
    v3 = v53;
    if (v44)
    {
      v4 = sub_22D016B2C();
    }

    else
    {
      v6 = -1 << *(v1 + 32);
      v4 = sub_22D016AEC();
      v5 = *(v1 + 36);
    }

    v50 = v4;
    v51 = v5;
    v52 = v44 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v41 = v1 + 56;
      v40 = v1 + 64;
      v42 = v2;
      v43 = v1;
      while (v7 < v2)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_35;
        }

        v10 = v50;
        v45 = v51;
        v46 = v52;
        sub_22CF44AF8(v50, v51, v52, v1);
        v12 = v11;
        v13 = [*&v11[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection] remoteProcess];
        v14 = [v13 pid];

        v15 = sub_22D014F9C();
        v17 = v16;
        v49 = v14;
        v47 = sub_22D016DEC();
        v48 = v18;
        MEMORY[0x2318C5860](8250, 0xE200000000000000);
        MEMORY[0x2318C5860](v15, v17);

        MEMORY[0x2318C5860](58, 0xE100000000000000);
        v19 = sub_22D01432C();
        MEMORY[0x2318C5860](v19);

        v21 = v47;
        v20 = v48;
        v22 = [v12 description];
        v23 = sub_22D01667C();
        v25 = v24;

        v26 = v3;
        v53 = v3;
        v27 = *(v3 + 16);
        v28 = *(v26 + 24);
        if (v27 >= v28 >> 1)
        {
          sub_22CF440C8((v28 > 1), v27 + 1, 1);
          v26 = v53;
        }

        *(v26 + 16) = v27 + 1;
        v29 = (v26 + 32 * v27);
        v29[4] = v21;
        v29[5] = v20;
        v29[6] = v23;
        v29[7] = v25;
        if (v44)
        {
          v1 = v43;
          if (!v46)
          {
            goto LABEL_40;
          }

          v3 = v26;
          if (sub_22D016B4C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2038, &qword_22D0188C0);
          v8 = sub_22D01688C();
          sub_22D016BCC();
          v8(&v47, 0);
          if (v7 == v42)
          {
LABEL_32:
            sub_22CF44CF8(v50, v51, v52);
            return;
          }
        }

        else
        {
          v1 = v43;
          if (v46)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v30 = 1 << *(v43 + 32);
          if (v10 >= v30)
          {
            goto LABEL_36;
          }

          v3 = v26;
          v31 = v10 >> 6;
          v32 = *(v41 + 8 * (v10 >> 6));
          if (((v32 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v43 + 36) != v45)
          {
            goto LABEL_38;
          }

          v33 = v32 & (-2 << (v10 & 0x3F));
          if (v33)
          {
            v30 = __clz(__rbit64(v33)) | v10 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v34 = v31 << 6;
            v35 = v31 + 1;
            v36 = (v40 + 8 * v31);
            while (v35 < (v30 + 63) >> 6)
            {
              v38 = *v36++;
              v37 = v38;
              v34 += 64;
              ++v35;
              if (v38)
              {
                sub_22CF44CF8(v10, v45, 0);
                v30 = __clz(__rbit64(v37)) + v34;
                goto LABEL_31;
              }
            }

            sub_22CF44CF8(v10, v45, 0);
          }

LABEL_31:
          v39 = *(v43 + 36);
          v50 = v30;
          v51 = v39;
          v52 = 0;
          v2 = v42;
          if (v7 == v42)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_22CF42C44()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess];
  [v1 pid];

  v2 = sub_22D014F9C();
  v4 = v3;
  v6 = sub_22D016DEC();
  MEMORY[0x2318C5860](8250, 0xE200000000000000);
  MEMORY[0x2318C5860](v2, v4);

  return v6;
}

uint64_t sub_22CF42D74()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultInputBackoffBudget();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_22D016C6C();
  v13 = v11;
  v14 = v12;
  MEMORY[0x2318C5860](0x696669746E656469, 0xEC000000203A7265);
  v7 = sub_22CF42C44();
  MEMORY[0x2318C5860](v7);

  MEMORY[0x2318C5860](0xD000000000000011, 0x800000022D01DAE0);
  v8 = OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffBudget;
  swift_beginAccess();
  sub_22CEFE9C8(v1 + v8, v6, type metadata accessor for DefaultInputBackoffBudget);
  sub_22D016CEC();
  sub_22CEFD694(v6, type metadata accessor for DefaultInputBackoffBudget);
  return v13;
}

id sub_22CF42EEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v33 - v5;
  v7 = sub_22D01495C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01486C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D01483C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_requester;
  v24 = sub_22D01502C();
  (*(*(v24 - 8) + 16))(v22, &v1[v23], v24);
  (*(v18 + 104))(v22, *MEMORY[0x277CB9348], v17);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v38 = v16;
  v39 = v17;
  v40 = v12;
  v25 = OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_ephemeralActivityIdentifiers;
  swift_beginAccess();
  v26 = *&v1[v25];
  v27 = *(v26 + 16);
  if (!v27)
  {
    v29 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v34 = v11;
  v35 = v6;
  v36 = v1;
  v33 = sub_22CEE561C(v27, 0);
  v37 = sub_22CEE56A4(&v43, v33 + 4, v27, v26);

  result = sub_22CEE57FC();
  if (v37 == v27)
  {
    v6 = v35;
    v1 = v36;
    v29 = v33;
    v11 = v34;
LABEL_6:
    sub_22D01494C();
    v30 = v38;
    sub_22D01485C();
    v31 = sub_22D0146BC();
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    sub_22CF31C20(v29, v22, v30, v6);
    swift_unknownObjectRelease();

    sub_22CEEC3D8(v6, &qword_27D9F22F8, &unk_22D018940);
    (*(v40 + 8))(v30, v11);
    v17 = v39;
LABEL_7:
    (*(v18 + 8))(v22, v17);
    v32 = type metadata accessor for Client();
    v42.receiver = v1;
    v42.super_class = v32;
    return objc_msgSendSuper2(&v42, sel_dealloc);
  }

  __break(1u);
  return result;
}

void sub_22CF43634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22D01415C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_22CF43814(void *a1)
{
  if (qword_28143FB60 != -1)
  {
    swift_once();
  }

  v2 = sub_22D01637C();
  __swift_project_value_buffer(v2, qword_2814444B0);
  v3 = a1;
  v4 = sub_22D01636C();
  v5 = sub_22D0168EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    sub_22D01502C();
    sub_22CEE83DC(&qword_281443988, MEMORY[0x277CB9810]);
    v8 = sub_22D016DEC();
    v10 = sub_22CEEE31C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22CEE1000, v4, v5, "Client %{public}s is out of timeout", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x2318C6860](v7, -1, -1);
    MEMORY[0x2318C6860](v6, -1, -1);
  }

  v11 = *&v3[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_queue];

  dispatch_resume(v11);
}

uint64_t sub_22CF43A6C()
{
  result = sub_22D01502C();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for DefaultInputBackoffBudget();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_22D01436C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_22CF43BC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22CF43BE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

BOOL sub_22CF43C7C(void *a1, uint64_t *a2)
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

void sub_22CF43CD4(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_22CEEC698(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22CFB962C(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_22CEEC698(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_22D016E1C();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_22CFB67E8();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v7;
  v24[1] = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22D016C6C();
    MEMORY[0x2318C5860](0xD00000000000001BLL, 0x800000022D01D9D0);
    sub_22D016CEC();
    MEMORY[0x2318C5860](39, 0xE100000000000000);
    sub_22D016CFC();
    __break(1u);
    return;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v27 = *(v4 - 1);
      v8 = *v4;
      v28 = *a3;

      v29 = sub_22CEEC698(v6, v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_22CFB962C(v33, 1);
        v34 = *a3;
        v29 = sub_22CEEC698(v6, v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v6;
      v37[1] = v5;
      v38 = (v36[7] + 16 * v29);
      *v38 = v27;
      v38[1] = v8;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v36[2] = v40;
      v4 += 4;
      if (v41 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

size_t sub_22CF44084(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20C0, &qword_22D0188E8, type metadata accessor for Assertion);
  *v3 = result;
  return result;
}

void *sub_22CF440C8(void *a1, int64_t a2, char a3)
{
  result = sub_22CF44478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22CF440E8(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F2290, &qword_22D018938, MEMORY[0x277CB9350]);
  *v3 = result;
  return result;
}

char *sub_22CF4412C(char *a1, int64_t a2, char a3)
{
  result = sub_22CF445AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22CF4414C(void *a1, int64_t a2, char a3)
{
  result = sub_22CF446B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22CF4416C(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20B0, &qword_22D0188D8, MEMORY[0x277CB9780]);
  *v3 = result;
  return result;
}

size_t sub_22CF441B0(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F2158, &qword_22D018920, MEMORY[0x277D4D450]);
  *v3 = result;
  return result;
}

size_t sub_22CF441F4(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20B8, &qword_22D0188E0, MEMORY[0x277CB9308]);
  *v3 = result;
  return result;
}

size_t sub_22CF44238(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &unk_27D9F20D0, &qword_22D0188F8, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
  *v3 = result;
  return result;
}

size_t sub_22CF4427C(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F23E8, &unk_22D0189B0, MEMORY[0x277D46790]);
  *v3 = result;
  return result;
}

size_t sub_22CF442C0(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20C8, &qword_22D0188F0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_22CF44304(char *a1, int64_t a2, char a3)
{
  result = sub_22CF44800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22CF44324(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F23F0, &unk_22D0196D0, type metadata accessor for Activity);
  *v3 = result;
  return result;
}

size_t sub_22CF44368(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F2288, &qword_22D018930, MEMORY[0x277D4D570]);
  *v3 = result;
  return result;
}

size_t sub_22CF443AC(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20E8, &qword_22D018910, MEMORY[0x277CB9648]);
  *v3 = result;
  return result;
}

size_t sub_22CF443F0(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F20F0, &qword_22D018918, MEMORY[0x277CB9640]);
  *v3 = result;
  return result;
}

size_t sub_22CF44434(size_t a1, int64_t a2, char a3)
{
  result = sub_22CF4491C(a1, a2, a3, *v3, &qword_27D9F2220, &qword_22D018928, MEMORY[0x277CB92E0]);
  *v3 = result;
  return result;
}

void *sub_22CF44478(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2040, &qword_22D0188C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2048, &qword_22D0188D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CF445AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22CF446B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CF44800(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20E0, &qword_22D018908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22CF4491C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_22CF44AF8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2318C5D00](a1, a2, v7);
      type metadata accessor for Client();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for Client();
    if (sub_22D016B5C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22D016B6C();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_22D016A5C();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_22D016A6C();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_22CF44CF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_22CF44D04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, id a10, uint64_t a11, void (*a12)(void *, void *), uint64_t a13)
{
  v146 = a8;
  v142 = a3;
  v143 = a7;
  v153 = a6;
  v154 = a2;
  v149 = a1;
  v150 = a5;
  v148 = a4;
  v157 = a13;
  v158 = a12;
  v13 = sub_22D014F4C();
  v159 = *(v13 - 8);
  v160 = v13;
  v14 = *(v159 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v156 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D0161DC();
  v151 = *(v17 - 8);
  v152 = v17;
  v18 = *(v151 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v138 - v24;
  v26 = sub_22D01603C();
  v144 = *(v26 - 8);
  v145 = v26;
  v27 = *(v144 + 64);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = &v138 - v34;
  MEMORY[0x28223BE20](v33, v36);
  v147 = &v138 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2368, &unk_22D018990);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8, v40);
  v42 = &v138 - v41;
  v43 = sub_22D0162DC();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  v155 = (&v138 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = a11;
  v48 = [*(a11 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess];
  v49 = sub_22D01666C();
  v50 = [v48 hasEntitlement_];

  if (!v50)
  {
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v67 = sub_22D01637C();
    __swift_project_value_buffer(v67, qword_2814444B0);
    v68 = sub_22D01636C();
    v69 = sub_22D0168EC();
    v70 = os_log_type_enabled(v68, v69);
    v72 = v159;
    v71 = v160;
    if (v70)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v161[0] = v74;
      *v73 = 136315138;
      v75 = *MEMORY[0x277CB97C8];
      v76 = v156;
      (*(v72 + 104))(v156, v75, v71);
      v77 = sub_22D014F3C();
      v79 = v78;
      (*(v72 + 8))(v76, v71);
      v80 = sub_22CEEE31C(v77, v79, v161);

      *(v73 + 4) = v80;
      _os_log_impl(&dword_22CEE1000, v68, v69, "%s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x2318C6860](v74, -1, -1);
      MEMORY[0x2318C6860](v73, -1, -1);
    }

    else
    {

      v75 = *MEMORY[0x277CB97C8];
    }

    sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8]);
    v85 = swift_allocError();
    (*(v72 + 104))(v86, v75, v71);
    goto LABEL_18;
  }

  [a10 integerValue];
  sub_22D0162CC();
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_22CEEC3D8(v42, &qword_27D9F2368, &unk_22D018990);
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v51 = sub_22D01637C();
    __swift_project_value_buffer(v51, qword_2814444B0);
    v52 = a10;
    v53 = sub_22D01636C();
    v54 = sub_22D0168EC();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v160;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v161[0] = v155;
      *v57 = 136315394;
      v58 = *MEMORY[0x277CB97D8];
      v59 = v159;
      v60 = v156;
      (*(v159 + 104))(v156, v58, v56);
      v61 = sub_22D014F3C();
      v63 = v62;
      (*(v59 + 8))(v60, v56);
      v64 = sub_22CEEE31C(v61, v63, v161);

      *(v57 + 4) = v64;
      *(v57 + 12) = 2048;
      v65 = [v52 integerValue];

      *(v57 + 14) = v65;
      _os_log_impl(&dword_22CEE1000, v53, v54, "%s. Value: %ld", v57, 0x16u);
      v66 = v155;
      __swift_destroy_boxed_opaque_existential_1Tm(v155);
      MEMORY[0x2318C6860](v66, -1, -1);
      MEMORY[0x2318C6860](v57, -1, -1);
    }

    else
    {

      v58 = *MEMORY[0x277CB97D8];
      v59 = v159;
    }

    sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8]);
    v85 = swift_allocError();
    (*(v59 + 104))(v87, v58, v56);
LABEL_18:
    sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
    v88 = sub_22D016A4C();
    v158(v88, v85);

    return;
  }

  v81 = v155;
  (*(v44 + 32))(v155, v42, v43);
  v82 = v154;
  v140 = v43;
  v139 = v44;
  if (v154 >> 60 == 15)
  {
    v83 = v81;
    v84 = v159;
    if (!v148)
    {
      if (qword_28143FB60 != -1)
      {
        swift_once();
      }

      v90 = sub_22D01637C();
      __swift_project_value_buffer(v90, qword_2814444B0);

      v91 = sub_22D01636C();
      v92 = sub_22D0168EC();

      v93 = os_log_type_enabled(v91, v92);
      v94 = v160;
      if (v93)
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v97 = v84;
        v98 = swift_slowAlloc();
        v161[0] = v98;
        *v95 = 138412546;
        sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8]);
        swift_allocError();
        v99 = *MEMORY[0x277CB97E0];
        (*(v97 + 104))(v100, v99, v94);
        v101 = _swift_stdlib_bridgeErrorToNSError();
        *(v95 + 4) = v101;
        *v96 = v101;
        *(v95 + 12) = 2080;
        v102 = sub_22D0165FC();
        v104 = sub_22CEEE31C(v102, v103, v161);
        v83 = v155;

        *(v95 + 14) = v104;
        _os_log_impl(&dword_22CEE1000, v91, v92, "%@\n%s", v95, 0x16u);
        sub_22CEEC3D8(v96, &qword_27D9F2380, &unk_22D019C50);
        MEMORY[0x2318C6860](v96, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v98);
        v105 = v98;
        v84 = v97;
        MEMORY[0x2318C6860](v105, -1, -1);
        MEMORY[0x2318C6860](v95, -1, -1);
      }

      else
      {

        v99 = *MEMORY[0x277CB97E0];
      }

      sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8]);
      v132 = swift_allocError();
      (*(v84 + 104))(v133, v99, v94);
      sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
      v134 = sub_22D016A4C();
      v158(v134, v132);

      goto LABEL_34;
    }

    sub_22D0160AC();

    sub_22D0161EC();
    sub_22D01609C();
    (*(v151 + 8))(v22, v152);
    v35 = v31;
    v106 = v160;
  }

  else
  {
    sub_22D0160AC();
    v89 = v149;
    sub_22CF460B8(v149, v82);

    sub_22D0161EC();
    sub_22CEEC970(v89, v82);
    sub_22D01609C();
    (*(v151 + 8))(v25, v152);
    sub_22CEEEF0C(v89, v82);
    sub_22CEEEF0C(v89, v82);
    v106 = v160;
    v83 = v81;
  }

  v108 = v144;
  v107 = v145;
  v109 = v147;
  (*(v144 + 32))(v147, v35, v145);
  v111 = *(v141 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_pushServer);
  v110 = *(v141 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_pushServer + 8);
  v112 = *(v141 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_pushServer + 16);
  swift_getObjectType();
  v161[0] = v111;
  swift_unknownObjectRetain();
  v113 = sub_22D015A6C();
  swift_unknownObjectRelease();
  if (v113)
  {
    sub_22D015D3C();
    sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
    v114 = sub_22D016A4C();
    v158(v114, 0);
    swift_unknownObjectRelease();

    (*(v108 + 8))(v109, v107);
  }

  else
  {
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v115 = v106;
    v116 = sub_22D01637C();
    __swift_project_value_buffer(v116, qword_2814444B0);
    v117 = v146;

    v118 = sub_22D01636C();
    v119 = sub_22D0168EC();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v161[0] = v160;
      *v120 = 136315394;
      v121 = *MEMORY[0x277CB97D0];
      v122 = v159;
      v123 = v156;
      (*(v159 + 104))(v156, v121, v115);
      v124 = sub_22D014F3C();
      v126 = v125;
      v127 = v123;
      v108 = v144;
      (*(v122 + 8))(v127, v115);
      v128 = sub_22CEEE31C(v124, v126, v161);
      v83 = v155;

      *(v120 + 4) = v128;
      v129 = v121;
      *(v120 + 12) = 2080;
      *(v120 + 14) = sub_22CEEE31C(v143, v117, v161);
      _os_log_impl(&dword_22CEE1000, v118, v119, "%s: %s", v120, 0x16u);
      v130 = v160;
      swift_arrayDestroy();
      v107 = v145;
      MEMORY[0x2318C6860](v130, -1, -1);
      MEMORY[0x2318C6860](v120, -1, -1);

      v131 = v147;
    }

    else
    {

      v129 = *MEMORY[0x277CB97D0];
      v131 = v147;
      v122 = v159;
    }

    sub_22CEE83DC(&unk_27D9F2370, MEMORY[0x277CB97E8]);
    v135 = swift_allocError();
    (*(v122 + 104))(v136, v129, v115);
    sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
    v137 = sub_22D016A4C();
    v158(v137, v135);

    (*(v108 + 8))(v131, v107);
  }

LABEL_34:
  (*(v139 + 8))(v83, v140);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_22CF460B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22CEEC970(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_64Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22CF46190(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22CF46264()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v5 = *(v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
    sub_22CEE8394(&qword_28143D998, &unk_27D9F3470, &qword_22D018BA0);
    v2 = v0;
    v1 = sub_22D01646C();
    v3 = *(v0 + 128);
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_22CF46328()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v5 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2670, &qword_22D018BE8);
    sub_22CEE8394(&qword_28143D9A8, &qword_27D9F2670, &qword_22D018BE8);
    v2 = v0;
    v1 = sub_22D01646C();
    v3 = *(v0 + 136);
    *(v2 + 136) = v1;
  }

  return v1;
}

uint64_t sub_22CF463EC()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v5 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2670, &qword_22D018BE8);
    sub_22CEE8394(&qword_28143D9A8, &qword_27D9F2670, &qword_22D018BE8);
    v2 = v0;
    v1 = sub_22D01646C();
    v3 = *(v0 + 144);
    *(v2 + 144) = v1;
  }

  return v1;
}

uint64_t sub_22CF464B0()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v5 = *(v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2668, &qword_22D018BE0);
    sub_22CEE8394(&qword_28143D9B0, &qword_27D9F2668, &qword_22D018BE0);
    v2 = v0;
    v1 = sub_22D01646C();
    v3 = *(v0 + 152);
    *(v2 + 152) = v1;
  }

  return v1;
}

uint64_t sub_22CF46574(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF49A68(0, v1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF49A68(1, v1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CF4A1E8(v1);
  }

  return result;
}

uint64_t sub_22CF4664C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 88);
    }

    swift_unknownObjectRetain();
    sub_22D016B3C();
    sub_22D01640C();
    sub_22CF4D918(&qword_27D9F2678, 255, MEMORY[0x277CBCDA8]);
    result = sub_22D01689C();
    v6 = v30;
    v5 = v31;
    v7 = v32;
    v8 = v33;
    v9 = v34;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_22CEE57FC();

      v19 = *(v1 + 24);

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

      v20 = *(v1 + 88);

      v21 = *(v1 + 96);

      v22 = *(v1 + 104);

      v23 = *(v1 + 112);

      v24 = *(v1 + 120);

      v25 = *(v1 + 128);

      v26 = *(v1 + 136);

      v27 = *(v1 + 144);

      v28 = *(v1 + 152);

      return v1;
    }

    while (1)
    {
      sub_22D0163FC();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_22D016BAC())
      {
        sub_22D01640C();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF468E4()
{
  sub_22CF4664C();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF46918@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_22CF49914(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22CF46968(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v14 = aBlock - v13;
  v15 = *(v4 + 72);
  sub_22CF4D234(a4, aBlock - v13);
  v16 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  sub_22CF4D830(v14, v17 + v16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22CF4D8A0;
  *(v18 + 24) = v17;
  aBlock[4] = sub_22CEF3C48;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_104;
  v19 = _Block_copy(aBlock);

  dispatch_sync(v15, v19);
  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF46BB4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_22CF48880(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22CF46C2C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_22CF496A4(a1, a2);
  *a3 = result & 1;
  return result;
}

BOOL sub_22CF46C74()
{
  v1 = sub_22D0143AC();
  v47 = *(v1 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0140DC();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v42 - v13;
  v15 = sub_22D01430C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v42 - v23;
  v25 = [objc_opt_self() standardUserDefaults];
  v26 = *(v0 + 16);
  v27 = *(v0 + 24);
  v28 = sub_22D01666C();
  v29 = [v25 objectForKey_];

  if (v29)
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50[0] = v48;
  v50[1] = v49;
  if (!*(&v49 + 1))
  {
    sub_22CEEC3D8(v50, &qword_27D9F2B10, &unk_22D01B930);
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_9;
  }

  v30 = swift_dynamicCast();
  (*(v16 + 56))(v14, v30 ^ 1u, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_9:
    sub_22CEEC3D8(v14, &qword_27D9F2648, &unk_22D018BC0);
    return 1;
  }

  (*(v16 + 32))(v24, v14, v15);
  sub_22D01438C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2650, &qword_22D018BD0);
  v31 = sub_22D01439C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = *(v32 + 80);
  v43 = v1;
  v35 = (v34 + 32) & ~v34;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22D0187A0;
  (*(v32 + 104))(v36 + v35, *MEMORY[0x277CC9980], v31);
  sub_22CF4D4B0(v36);
  swift_setDeallocating();
  (*(v32 + 8))(v36 + v35, v31);
  swift_deallocClassInstance();
  sub_22D0142FC();
  v37 = v44;
  sub_22D01437C();

  v38 = *(v16 + 8);
  v38(v21, v15);
  (*(v47 + 8))(v5, v43);
  v39 = sub_22D0140CC();
  LOBYTE(v31) = v40;
  (*(v45 + 8))(v37, v46);
  v38(v24, v15);
  return (v31 & 1) == 0 && v39 > 24;
}

void sub_22CF471B4()
{
  v1 = v0;
  v2 = sub_22D01430C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22CF46C74();
  if (v8)
  {
    v34 = v7;
    v35 = v3;
    v36 = v2;
    v10 = *(v0 + 72);
    MEMORY[0x28223BE20](v8, v9);
    v37 = v1;
    *(&v34 - 2) = v1;
    *(&v34 - 8) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F0, &qword_22D018B48);
    sub_22D01699C();
    v11 = 0;
    v12 = aBlock[0];
    v13 = aBlock[0] + 64;
    v14 = 1 << *(aBlock[0] + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(aBlock[0] + 64);
    v17 = (v14 + 63) >> 6;
    v38 = "@NSDictionary8@?0";
    while (v16)
    {
      v18 = v11;
LABEL_10:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(v12 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v12 + 56) + v20);
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = v22;
      *(v25 + 32) = v24;

      v26 = sub_22D01666C();
      aBlock[4] = sub_22CF4D480;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CF47510;
      aBlock[3] = &block_descriptor_95;
      v27 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v27);
    }

    while (1)
    {
      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        v28 = [objc_opt_self() standardUserDefaults];
        v29 = v34;
        sub_22D0142FC();
        v30 = sub_22D01426C();
        (*(v35 + 8))(v29, v36);
        v31 = *(v37 + 2);
        v32 = *(v37 + 3);
        v33 = sub_22D01666C();
        [v28 setObject:v30 forKey:v33];

        return;
      }

      v16 = *(v13 + 8 * v18);
      ++v11;
      if (v16)
      {
        v11 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

id sub_22CF47510(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_22CF4D3D4();
    v5 = sub_22D0165CC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_22CF4759C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v37 = a3;
  v9 = sub_22D0164CC();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01653C();
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = *(v33 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D01659C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = (&v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v5 + 72);
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x277D85200], v19);
  v26 = v25;
  LOBYTE(v25) = sub_22D0165BC();
  result = (*(v20 + 8))(v24, v19);
  if (v25)
  {
    v28 = sub_22CF4ACD8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v28;
    sub_22CFBE8B0(a4 & 1, a2, v37, isUniquelyReferenced_nonNull_native);
    sub_22CF4AB18();

    if (a1)
    {
      v30 = *(v5 + 80);
      aBlock[4] = sub_22CF4D420;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CEF8B58;
      aBlock[3] = &block_descriptor_89;
      v31 = _Block_copy(aBlock);

      sub_22D0164EC();
      v38 = MEMORY[0x277D84F90];
      sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
      v32 = v36;
      sub_22D016ADC();
      MEMORY[0x2318C5B10](0, v18, v13, v31);
      _Block_release(v31);
      (*(v35 + 8))(v13, v32);
      (*(v33 + 8))(v18, v34);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF4798C(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D01659C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 72);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_22D0165BC();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
    inited = swift_initStackObject();
    v17 = xmmword_22D0187A0;
    *(inited + 16) = xmmword_22D0187A0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_22CF49A68(0, inited);
    swift_setDeallocating();
    sub_22CEE5804(inited + 32);
    v15 = swift_initStackObject();
    *(v15 + 16) = v17;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    sub_22CF49A68(1, v15);
    swift_setDeallocating();
    sub_22CEE5804(v15 + 32);
    v16 = swift_initStackObject();
    *(v16 + 16) = v17;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    sub_22CF4A1E8(v16);
    swift_setDeallocating();
    return sub_22CEE5804(v16 + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF47B98(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a4;
  v90 = a2;
  v88 = a1;
  v6 = sub_22D0164CC();
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22D01653C();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v82 = &v76[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_22D01659C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v76[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = v4;
  v21 = *(v4 + 72);
  *v20 = v21;
  v22 = *MEMORY[0x277D85200];
  v23 = v16[13];
  v23(v20, v22, v15);
  v81 = v21;
  LOBYTE(v21) = sub_22D0165BC();
  v24 = v16[1];
  v24(v20, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_11;
  }

  sub_22D014C7C();
  result = MEMORY[0x2318C3DC0]();
  if ((result & 1) == 0)
  {
    return result;
  }

  v80 = v10;
  v26 = sub_22CF4ACD8();
  v27 = *(v26 + 16);
  v89 = v26;
  if (v27)
  {
    v28 = sub_22CEEC698(v90, a3);
    if (v29)
    {
      if (*(*(v89 + 56) + v28) == (v88 & 1))
      {
        v54 = a3;
        v55 = v90;
      }

      else
      {
        if (qword_28143DAB8 != -1)
        {
          swift_once();
        }

        v30 = sub_22D01637C();
        __swift_project_value_buffer(v30, qword_281444338);

        v31 = sub_22D01636C();
        v32 = sub_22D01690C();
        v79 = a3;

        v77 = v32;
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v78 = v31;
          v34 = v33;
          v35 = swift_slowAlloc();
          aBlock = v35;
          *v34 = 136446466;
          *(v34 + 4) = sub_22CEEE31C(v90, v79, &aBlock);
          *(v34 + 12) = 1026;
          v36 = v88;
          *(v34 + 14) = v88 & 1;
          _os_log_impl(&dword_22CEE1000, v78, v77, "Activity authorization for bundleid: %{public}s changed to: %{BOOL,public}d", v34, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          MEMORY[0x2318C6860](v35, -1, -1);
          MEMORY[0x2318C6860](v34, -1, -1);

          v37 = v89;
        }

        else
        {

          v37 = v89;
          v36 = v88;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v37;
        v88 = v36 & 1;
        sub_22CFBE8B0(v36 & 1, v90, v79, isUniquelyReferenced_nonNull_native);
        v57 = aBlock;
        v58 = v81;
        *v20 = v81;
        v23(v20, v22, v15);
        v59 = v58;
        v60 = sub_22D0165BC();
        result = (v24)(v20, v15);
        if ((v60 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        v61 = [objc_opt_self() standardUserDefaults];
        v62 = sub_22D0165CC();
        v63 = sub_22D01666C();
        [v61 setValue:v62 forKey:v63];

        v64 = v91;
        v78 = *(v91 + 80);
        v65 = swift_allocObject();
        v89 = v57;
        v66 = v90;
        *(v65 + 16) = v64;
        *(v65 + 24) = v66;
        v67 = v79;
        *(v65 + 32) = v79;
        v68 = v88;
        *(v65 + 40) = v88;
        v97 = sub_22CF4D380;
        v98 = v65;
        aBlock = MEMORY[0x277D85DD0];
        v94 = 1107296256;
        v81 = &v95;
        v95 = sub_22CEF8B58;
        v96 = &block_descriptor_80;
        v69 = _Block_copy(&aBlock);

        v70 = v82;
        sub_22D0164EC();
        v92 = MEMORY[0x277D84F90];
        sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
        v71 = v80;
        v72 = v86;
        sub_22D016ADC();
        MEMORY[0x2318C5B10](0, v70, v71, v69);
        _Block_release(v69);
        (*(v85 + 8))(v71, v72);
        (*(v83 + 8))(v70, v84);

        v73 = swift_allocObject();
        *(v73 + 16) = v66;
        *(v73 + 24) = v67;
        *(v73 + 32) = v68;

        v74 = sub_22D01666C();
        v97 = sub_22CF4D3A4;
        v98 = v73;
        aBlock = MEMORY[0x277D85DD0];
        v94 = 1107296256;
        v95 = sub_22CF47510;
        v96 = &block_descriptor_86;
        v75 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v75);

        v55 = v66;
        v54 = v67;
      }

      sub_22CF4B128(v55, v54, v87);
    }
  }

  if (qword_28143DAB8 != -1)
  {
    goto LABEL_22;
  }

LABEL_11:
  v38 = sub_22D01637C();
  __swift_project_value_buffer(v38, qword_281444338);
  v39 = a3;

  v40 = sub_22D01636C();
  v41 = sub_22D01690C();

  v42 = os_log_type_enabled(v40, v41);
  v44 = v90;
  v43 = v91;
  v45 = v88;
  if (v42)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136446466;
    *(v46 + 4) = sub_22CEEE31C(v44, v39, &aBlock);
    *(v46 + 12) = 1026;
    *(v46 + 14) = v45 & 1;
    _os_log_impl(&dword_22CEE1000, v40, v41, "Activity authorization for bundleid: %{public}s changed to: %{BOOL,public}d", v46, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x2318C6860](v47, -1, -1);
    MEMORY[0x2318C6860](v46, -1, -1);
  }

  sub_22CF4759C(0, v44, v39, v45 & 1);
  v48 = *(v43 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v43;
  *(v49 + 24) = v44;
  *(v49 + 32) = v39;
  *(v49 + 40) = v45 & 1;
  v97 = sub_22CF4D9D4;
  v98 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v94 = 1107296256;
  v95 = sub_22CEF8B58;
  v96 = &block_descriptor_74;
  v50 = _Block_copy(&aBlock);

  v51 = v82;
  sub_22D0164EC();
  v92 = MEMORY[0x277D84F90];
  sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  v52 = v80;
  v53 = v86;
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v51, v52, v50);
  _Block_release(v50);
  (*(v85 + 8))(v52, v53);
  (*(v83 + 8))(v51, v84);

  sub_22CF4B128(v44, v39, v87);
}

uint64_t sub_22CF48694(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2628, &qword_22D018B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;

  sub_22CFF6AF8(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F2630, &qword_22D018B98);
  sub_22D01641C();
}

unint64_t sub_22CF4875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2638, &qword_22D018BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = a4;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_22D01666C();
  *(inited + 56) = 0x64656C62616E65;
  *(inited + 64) = 0xE700000000000000;
  v6 = sub_22D01666C();

  *(inited + 72) = v6;
  v7 = sub_22CFF6BF4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2640, &unk_22D018BB0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_22CF48880(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22D01659C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 72);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x277D85200], v6);
  v13 = v12;
  LOBYTE(v12) = sub_22D0165BC();
  (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  sub_22D014C7C();
  if ((MEMORY[0x2318C3DC0]() & 1) == 0)
  {
    return 0;
  }

  v14 = sub_22CF4ACD8();
  if (*(v14 + 16))
  {
    v15 = sub_22CEEC698(a1, a2);
    if (v16)
    {
      v17 = *(*(v14 + 56) + v15);

      return v17;
    }
  }

  if (qword_28143DAB8 != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v19 = sub_22D01637C();
  __swift_project_value_buffer(v19, qword_281444338);

  v20 = sub_22D01636C();
  v21 = sub_22D01690C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_22CEEE31C(a1, a2, &v25);
    _os_log_impl(&dword_22CEE1000, v20, v21, "No record for %s found", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x2318C6860](v23, -1, -1);
    MEMORY[0x2318C6860](v22, -1, -1);
  }

  return 1;
}

uint64_t sub_22CF48B14(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v78 = a2;
  v77 = a1;
  v6 = sub_22D0164CC();
  v76 = *(v6 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v73 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22D01653C();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v72 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22D01659C();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v65[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(v3 + 72);
  *v19 = v20;
  v21 = *MEMORY[0x277D85200];
  v22 = *MEMORY[0x277D85200];
  v70 = v15[13];
  v70(v19, v22, v14);
  v69 = v20;
  LOBYTE(v20) = sub_22D0165BC();
  v23 = v15[1];
  v23(v19, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v71 = v6;
  v24 = sub_22CF4ACD8();
  if (!*(v24 + 16) || (v25 = sub_22CEEC698(v78, a3), (v26 & 1) == 0))
  {
    if (qword_28143DAB8 == -1)
    {
LABEL_10:
      v35 = sub_22D01637C();
      __swift_project_value_buffer(v35, qword_281444338);

      v36 = sub_22D01636C();
      v37 = sub_22D01690C();

      v38 = os_log_type_enabled(v36, v37);
      v39 = v78;
      v40 = v77;
      if (v38)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock = v42;
        *v41 = 136446466;
        *(v41 + 4) = sub_22CEEE31C(v39, a3, &aBlock);
        *(v41 + 12) = 1026;
        *(v41 + 14) = v40 & 1;
        _os_log_impl(&dword_22CEE1000, v36, v37, "Activity frequent updates for bundleid: %{public}s changed to: %{BOOL,public}d", v41, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x2318C6860](v42, -1, -1);
        MEMORY[0x2318C6860](v41, -1, -1);
      }

      sub_22CF4759C(1, v39, a3, v40 & 1);
      v43 = *(v4 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = v4;
      *(v44 + 24) = v39;
      *(v44 + 32) = a3;
      *(v44 + 40) = v40 & 1;
      v84 = sub_22CF4D360;
      v85 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_22CEF8B58;
      v83 = &block_descriptor_62;
      v45 = _Block_copy(&aBlock);

      v46 = v72;
      sub_22D0164EC();
      v79 = MEMORY[0x277D84F90];
      sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
      v47 = v73;
      v48 = v71;
      sub_22D016ADC();
      MEMORY[0x2318C5B10](0, v46, v47, v45);
      _Block_release(v45);
      (*(v76 + 8))(v47, v48);
      (*(v74 + 8))(v46, v75);
    }

LABEL_19:
    swift_once();
    goto LABEL_10;
  }

  if (*(*(v24 + 56) + v25) == (v77 & 1))
  {
  }

  v68 = v21;
  if (qword_28143DAB8 != -1)
  {
    swift_once();
  }

  v27 = sub_22D01637C();
  __swift_project_value_buffer(v27, qword_281444338);

  v28 = sub_22D01636C();
  v29 = sub_22D01690C();

  v66 = v29;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v67 = v28;
    v31 = v30;
    v32 = swift_slowAlloc();
    aBlock = v32;
    *v31 = 136446466;
    *(v31 + 4) = sub_22CEEE31C(v78, a3, &aBlock);
    *(v31 + 12) = 1026;
    *(v31 + 14) = v77 & 1;
    _os_log_impl(&dword_22CEE1000, v67, v66, "Activity frequent updates for bundleid: %{public}s changed to: %{BOOL,public}d", v31, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x2318C6860](v32, -1, -1);
    v33 = v31;
    v34 = v77;
    MEMORY[0x2318C6860](v33, -1, -1);
  }

  else
  {

    v34 = v77;
  }

  v50 = v68;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v24;
  v77 = v34 & 1;
  sub_22CFBE8B0(v34 & 1, v78, a3, isUniquelyReferenced_nonNull_native);
  v53 = v69;
  v52 = v70;
  *v19 = v69;
  v52(v19, v50, v14);
  v54 = v53;
  LOBYTE(v53) = sub_22D0165BC();
  result = (v23)(v19, v14);
  if (v53)
  {
    v55 = [objc_opt_self() standardUserDefaults];
    v56 = sub_22D0165CC();
    v57 = sub_22D01666C();
    [v55 setValue:v56 forKey:v57];

    v58 = *(v4 + 80);
    v59 = swift_allocObject();
    v60 = v78;
    *(v59 + 16) = v4;
    *(v59 + 24) = v60;
    *(v59 + 32) = a3;
    *(v59 + 40) = v77;
    v84 = sub_22CF4D370;
    v85 = v59;
    aBlock = MEMORY[0x277D85DD0];
    v81 = 1107296256;
    v82 = sub_22CEF8B58;
    v83 = &block_descriptor_68_0;
    v61 = _Block_copy(&aBlock);

    v62 = v72;
    sub_22D0164EC();
    v79 = MEMORY[0x277D84F90];
    sub_22CF4D918(&qword_28143FA60, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
    sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
    v63 = v73;
    v64 = v71;
    sub_22D016ADC();
    MEMORY[0x2318C5B10](0, v62, v63, v61);
    _Block_release(v61);
    (*(v76 + 8))(v63, v64);
    (*(v74 + 8))(v62, v75);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF494B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2628, &qword_22D018B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;

  sub_22CFF6AF8(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F2630, &qword_22D018B98);
  sub_22D01641C();
}

uint64_t sub_22CF49578(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  sub_22CEE8394(&qword_28143D9A0, &unk_27D9F3470, &qword_22D018BA0);
  sub_22D01645C();
  v9 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2628, &qword_22D018B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;

  sub_22CFF6AF8(inited);
  swift_setDeallocating();
  sub_22CEEC3D8(inited + 32, &qword_27D9F2630, &qword_22D018B98);
  sub_22D01641C();
}

uint64_t sub_22CF496A4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22D01659C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 72);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_22D0165BC();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v13 = sub_22CF4ACD8();
  if (*(v13 + 16))
  {
    v14 = sub_22CEEC698(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + v14);

      return v16;
    }
  }

  if (qword_28143DAB8 != -1)
  {
    goto LABEL_10;
  }

LABEL_6:
  v18 = sub_22D01637C();
  __swift_project_value_buffer(v18, qword_281444338);

  v19 = sub_22D01636C();
  v20 = sub_22D01690C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_22CEEE31C(a1, a2, &v24);
    _os_log_impl(&dword_22CEE1000, v19, v20, "No record for %s found", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x2318C6860](v22, -1, -1);
    MEMORY[0x2318C6860](v21, -1, -1);
  }

  return 1;
}

uint64_t sub_22CF49914(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D01659C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 72);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_22D0165BC();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    if (*(sub_22CF4ACD8() + 16))
    {
      sub_22CEEC698(a1, a2);
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    return v15 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}