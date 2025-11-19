uint64_t sub_261FB4F90()
{
  v0 = sub_26203A18C();
  v1 = MGCopyAnswer();

  if (v1 && (swift_dynamicCast() & 1) != 0)
  {
    return v3;
  }

  sub_261F9BCE0();
  sub_26203AD3C();
  sub_261F9D610();
  OUTLINED_FUNCTION_13_1();
  swift_allocError();
  OUTLINED_FUNCTION_53_1();
  sub_26203AD4C();
  return swift_willThrow();
}

uint64_t sub_261FB50BC()
{
  v2 = sub_26203A18C();
  v3 = MGCopyAnswer();

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      [v4 unsignedLongLongValue];
      OUTLINED_FUNCTION_47_1();
      swift_unknownObjectRelease();
      return v0;
    }

    swift_unknownObjectRelease();
  }

  sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  if (OUTLINED_FUNCTION_136())
  {
    OUTLINED_FUNCTION_42_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v13 = swift_slowAlloc();
    *v5 = 136446210;
    sub_261F666D8();
    OUTLINED_FUNCTION_125(v6, v7, v8);
    OUTLINED_FUNCTION_65();

    *(v5 + 4) = v1;
    OUTLINED_FUNCTION_29_4(&dword_261F5B000, v9, v10, "%{public}s: Unable to fetch device ECID");
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v11 = OUTLINED_FUNCTION_8_2();
    MEMORY[0x266724180](v11);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  return 0;
}

void sub_261FB521C()
{
  v1 = sub_26203A18C();
  v2 = MGCopyAnswer();

  if (v2)
  {
    if (!swift_dynamicCast())
    {
      sub_26203A4AC();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      if (OUTLINED_FUNCTION_136())
      {
        OUTLINED_FUNCTION_42_1();
        v3 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v10 = swift_slowAlloc();
        *v3 = 136446210;
        sub_261F666D8();
        OUTLINED_FUNCTION_125(v4, v5, v6);
        OUTLINED_FUNCTION_65();

        *(v3 + 4) = v0;
        OUTLINED_FUNCTION_29_4(&dword_261F5B000, v7, v8, "%{public}s: Unable to fetch device serial number");
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        v9 = OUTLINED_FUNCTION_8_2();
        MEMORY[0x266724180](v9);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_261FB5370@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 240);
  v5 = v4 | (*(v1 + 244) << 32);
  if ((v4 & 0x8000) != 0)
  {
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    result = sub_26203A91C();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    sub_261F674BC(v1 + 480, &v33, &qword_27FEF99B8, &qword_26203F7F0);
    if (v34)
    {
      sub_261F797BC(&v33, &v35);
      v6 = v37;
      v7 = v38;
      __swift_project_boxed_opaque_existential_0Tm(&v35, v37);
      (*(v7 + 8))(HIDWORD(v5) & 1, v6, v7);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v35);
    }

    sub_261F66E60(&v33, &qword_27FEF99B8, &qword_26203F7F0);
    v9 = sub_26203A18C();
    v10 = MGCopyAnswer();

    if (!v10)
    {
      goto LABEL_11;
    }

    *&v33 = v10;
    if ((OUTLINED_FUNCTION_174() & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = v36;
    v39 = v35;
    v12 = sub_26203A18C();
    v13 = MGCopyAnswer();

    if (!v13 || (*&v33 = v13, !OUTLINED_FUNCTION_174()))
    {
LABEL_10:

LABEL_11:
      v37 = MEMORY[0x277D837D0];
      v35 = 0xD00000000000003CLL;
      v36 = 0x800000026204F230;
      LOBYTE(v38) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      v19 = v18;
      *v18 = 1;
      LOBYTE(v33) = 1;
      v20 = ControlChannelConnectionError.Message.format(code:)(&v33);
      sub_261F65C08(&v35);
      *(v19 + 8) = v20;
      *(v19 + 24) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 7) = 0;
      return swift_willThrow();
    }

    v14 = v35;
    v15 = v36;
    v16 = sub_261FB4F90();
    if (v2)
    {

      goto LABEL_10;
    }

    v21 = v17;
    v32 = v14;
    v29 = v16;
    v30 = HIDWORD(v5);
    type metadata accessor for DeviceKeyValueStore();
    v22 = static DeviceKeyValueStore.keyValueStoreContainingStandardKeys()();
    v31 = HIDWORD(v5) & 1;
    v23 = sub_261FA2E5C(BYTE4(v5) & 1);
    v25 = v24;

    if (v30)
    {
      v26 = sub_261FB50BC();
      v28 = v29;
    }

    else
    {

      v26 = 0;
      v28 = 0;
      v21 = 0xE000000000000000;
      v27 = 1;
    }

    *(a1 + 16) = v39;
    *(a1 + 24) = v11;
    *(a1 + 32) = v32;
    *(a1 + 40) = v15;
    *(a1 + 48) = v28;
    *(a1 + 56) = v21;
    *(a1 + 64) = v26;
    *(a1 + 72) = v27 & 1;

    result = sub_261F6ADEC(0, 0xF000000000000000);
    *(a1 + 80) = v23;
    *(a1 + 88) = v25;
    *(a1 + 96) = v31;
    *a1 = v28;
    *(a1 + 8) = v21;
  }

  return result;
}

void sub_261FB5840(unsigned __int8 *a1)
{
  v4 = v1;
  v5 = *a1;
  v6 = a1[1];
  v46 = *(a1 + 1);
  v47 = *(a1 + 2);
  v43 = *(a1 + 4);
  v44 = *(a1 + 3);
  v45 = *(a1 + 5);
  v7 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v8 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v7))
  {
    OUTLINED_FUNCTION_57_1();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v2 = swift_slowAlloc();
    v55[0] = v2;
    *v9 = 136446466;
    sub_261F666D8();
    sub_261F67FE4(v10, v11, v55);
    OUTLINED_FUNCTION_70();

    *(v9 + 4) = v3;
    *(v9 + 12) = 2080;
    LOBYTE(v48) = v5;
    BYTE1(v48) = v6;
    v49 = v46;
    v50 = v47;
    v51 = v44;
    v52 = v43;
    v53 = v45;
    sub_261F6B73C(v46, v47);

    v12 = sub_26203A20C();
    sub_261F67FE4(v12, v13, v55);
    OUTLINED_FUNCTION_70();

    *(v9 + 14) = v43;
    _os_log_impl(&dword_261F5B000, v8, v7, "%{public}s: Received pairing data from peer: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_51_1();
  if ((v14 & 0x8000) == 0)
  {

    goto LABEL_9;
  }

  v15 = sub_26203AC0C();

  if ((v15 & 1) == 0)
  {
LABEL_11:
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v19 = *(v4 + 168);
    if ((v19 - 1) < 2 || v19 == 4 && *(v4 + 128) == 3 && (OUTLINED_FUNCTION_22_3(*(v4 + 152), *(v4 + 136)), !v23))
    {
      v20 = *(v4 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession);
      if (v20)
      {
        v21 = v20;
        v22 = sub_26203952C();
        [v21 receivedData_];

        return;
      }

      OUTLINED_FUNCTION_31_2();
      v51 = MEMORY[0x277D837D0];
      v48 = 0xD000000000000035;
      v49 = v26;
      LOBYTE(v52) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      *v27 = 1;
      v54 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_31_2();
      v51 = MEMORY[0x277D837D0];
      v48 = 0xD000000000000034;
      v49 = v24;
      LOBYTE(v52) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      *v25 = 2;
      v54 = 2;
    }

    ControlChannelConnectionError.Message.format(code:)(&v54);
    OUTLINED_FUNCTION_76();
    sub_261F65C08(&v48);
    OUTLINED_FUNCTION_7_3();
    v28 = OUTLINED_FUNCTION_72_1();
    sub_261F65D0C(v28);

    return;
  }

LABEL_9:
  v16 = 0;
  v17 = "sThroughLockdown";
  v18 = "setupManualPairing";
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_164();
      break;
    case 2:
      v16 = 0;
      v17 = "setupManualPairing";
      break;
    case 3:
      v16 = 0;
      v17 = "tionLockdownPairing";
      break;
    default:
      break;
  }

  if (v16 && (v17 | 0x8000000000000000) == ((v18 - 32) | 0x8000000000000000))
  {

LABEL_26:
    OUTLINED_FUNCTION_17_2();
    sub_261FB2374();
    return;
  }

  v29 = sub_26203AC0C();

  if (v29)
  {
    goto LABEL_26;
  }

  switch(v6)
  {
    case 3:

      goto LABEL_34;
    default:
      v30 = sub_26203AC0C();

      if (v30)
      {
        goto LABEL_34;
      }

      if (v6 >= 2)
      {

LABEL_34:
        OUTLINED_FUNCTION_17_2();
        sub_261FB2A68();
        return;
      }

      v31 = sub_26203AC0C();

      if (v31)
      {
        goto LABEL_34;
      }

      v32 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_22_1();
      v33 = sub_26203A0FC();
      OUTLINED_FUNCTION_22_1();
      v42 = sub_26203A0FC();
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_89_0();
      sub_261FB5DF0(v34, v35, v36, v37, v38, v39, v40, v41, v32, v33, v42);

      break;
  }
}

void sub_261FB5DF0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v11;
  v757 = a7;
  v795 = a8;
  *&v872 = a3;
  *(&v872 + 1) = a5;
  v834 = a2;
  v1213 = a10;
  v16 = *a1;
  LOBYTE(v17) = sub_26203A47C();
  if (qword_28108B600 == -1)
  {
    goto LABEL_2;
  }

LABEL_133:
  OUTLINED_FUNCTION_0_11();
  swift_once();
LABEL_2:
  v18 = qword_28108B610;
  v1251 = a11;
  if (os_log_type_enabled(qword_28108B610, v17))
  {
    OUTLINED_FUNCTION_42_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_27_2();
    v19 = swift_slowAlloc();
    *&aBlock[0] = v19;
    *a11 = 136446210;
    sub_261F666D8();
    sub_261F67FE4(v20, v21, aBlock);
    OUTLINED_FUNCTION_65();

    *(a11 + 4) = v12;
    _os_log_impl(&dword_261F5B000, v18, v17, "%{public}s: _configureNewPairingSession", a11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v985 = a9;
  v22 = [objc_allocWithZone(MEMORY[0x277D028E8]) init];
  v23 = *(v13 + 232);

  [v22 setDispatchQueue_];
  OUTLINED_FUNCTION_115();
  v947 = a6;
  if (v16)
  {
    if (v24 < 0)
    {

      v27 = 1;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_3_5();
    v23 = sub_26203AC0C();

    v25 = (v23 & 1) == 0;
    v26 = 1;
  }

  else
  {
    if (v24 < 0)
    {

      v27 = 3;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_3_5();
    v23 = sub_26203AC0C();

    v25 = (v23 & 1) == 0;
    v26 = 3;
  }

  if (v25)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = v26;
  }

LABEL_14:
  [v22 setSessionType_];
  [v22 setFlags_];
  OUTLINED_FUNCTION_63();
  swift_allocObject();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_46();
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 24) = v22;
  *&aBlock[2] = sub_261FBD378;
  *(&aBlock[2] + 1) = v28;
  *&aBlock[0] = MEMORY[0x277D85DD0];
  *(&aBlock[0] + 1) = 1107296256;
  *&aBlock[1] = sub_261FB8024;
  *(&aBlock[1] + 1) = &block_descriptor_1;
  v29 = _Block_copy(aBlock);
  v30 = v22;

  [v30 setCompletionHandler_];
  _Block_release(v29);
  OUTLINED_FUNCTION_106();
  v31 = swift_allocObject();
  *(v31 + 16) = v16;
  *(v31 + 24) = v30;
  *(v31 + 32) = a4;
  *(v31 + 40) = v13;
  *&aBlock[2] = sub_261FBD380;
  *(&aBlock[2] + 1) = v31;
  *&aBlock[0] = MEMORY[0x277D85DD0];
  *(&aBlock[0] + 1) = 1107296256;
  *&aBlock[1] = sub_261FB83B4;
  *(&aBlock[1] + 1) = &block_descriptor_247;
  v32 = _Block_copy(aBlock);

  a6 = v30;

  v33 = OUTLINED_FUNCTION_47();
  sub_261F7D45C(v33);

  [a6 setSendDataHandler_];
  _Block_release(v32);

  v34 = v16;
  v16 = "sThroughLockdown";
  v35 = 0;
  v36 = MEMORY[0x277D84D38];
  v37 = "sThroughLockdown";
  v1061 = v13;
  v1099 = v34;
  v1175 = a6;
  v1023 = v18;
  switch(v34)
  {
    case 1uLL:
      OUTLINED_FUNCTION_115();
      if ((v39 & 0x8000) == 0)
      {
        OUTLINED_FUNCTION_84_1();
        if ((v40 & 0x100) != 0)
        {
          v118 = OUTLINED_FUNCTION_105();
          [a6 setFixedPIN_];

          [a6 setFlags_];
        }

        else if (_RPIsAppleInternal())
        {
          if (qword_27FEF84F0 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          __dst[0] = xmmword_27FEF8E78;
          __dst[1] = *algn_27FEF8E88;
          *&__dst[2] = qword_27FEF8E98;
          sub_261F674BC(__dst, aBlock, &qword_27FEF9150, &qword_26203C980);
          sub_261F83CEC();
          OUTLINED_FUNCTION_67_1();
          sub_261F66E60(__dst, &qword_27FEF9150, &qword_26203C980);
          v36 = MEMORY[0x277D84D38];
          if (v30)
          {
            LOBYTE(v16) = sub_26203A4AC();
            if (os_log_type_enabled(v18, v16))
            {
              OUTLINED_FUNCTION_57_1();
              v41 = swift_slowAlloc();
              OUTLINED_FUNCTION_56();
              *&aBlock[0] = swift_slowAlloc();
              *v41 = 136446466;
              sub_261F666D8();
              OUTLINED_FUNCTION_139(v42, v43, v44, v45, v46, v47, v48, v49, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, a9, v18, v13, v1099, v1137, a6, v1213, a11, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src, *(&__src + 1), v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434);
              OUTLINED_FUNCTION_47_1();

              *(v41 + 4) = v13;
              *(v41 + 12) = 2080;
              v50 = OUTLINED_FUNCTION_72();
              *(v41 + 14) = sub_261F67FE4(v50, v51, v52);
              OUTLINED_FUNCTION_183(&dword_261F5B000, v18, v16, "%{public}s: Using fixed pairing PIN from defaults: %s");
              OUTLINED_FUNCTION_179();
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
              v36 = MEMORY[0x277D84D38];
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
            }

            v53 = OUTLINED_FUNCTION_72();
            sub_261FBD4A0(v53, v54, a6);
            OUTLINED_FUNCTION_84_1();
          }
        }

        OUTLINED_FUNCTION_31_2();
        *(&__src + 1) = v119;
        v120 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_59_1(v121, v122, MEMORY[0x277D837E0], v123, v124, v125, v126, v127, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1137, v1175, v1213, v1251, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v16);
        sub_26203A79C();
        a4 = 0;
        v128 = sub_261FB4F90();
        v1421 = v120;
        *(&__src + 1) = v310;
        v317 = OUTLINED_FUNCTION_48_1(v128, v310, v311, v312, v313, v314, v315, v316, v656, v694, v732, v770, v809, v847, v885, v922, v960, v998, v1036, v1074, v1112, v1150, v1188, v1226, v1264, v1303, v1340, v1378, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v128);
        sub_261F8D184(v317, v318);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1439 = v1227;
        OUTLINED_FUNCTION_62_1(isUniquelyReferenced_nonNull_native, v320, isUniquelyReferenced_nonNull_native, v321, v322, v323, v324, v325, v657, v695, v733, v771, v810, v848, v886, v923, v961, v999, v1037, v1075, v1113, v1151, v1189, v1227, v1265, v1304, v1341, v1379, v1403);
        sub_261FA447C();
        a6 = v1439;
        sub_261F67914(aBlock);
        OUTLINED_FUNCTION_31_2();
        *(&__src + 1) = v326;
        OUTLINED_FUNCTION_59_1(v327, v328, MEMORY[0x277D837E0], v329, v330, v331, v332, v333, v658, v696, v734, v772, v811, v849, v887, v924, v962, v1000, v1038, v1076, v1114, v1152, v1190, v1228, v1266, v1305, v1342, v1380, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v16);
        sub_26203A79C();
        v334 = sub_261FB50BC();
        if (v335)
        {
          OUTLINED_FUNCTION_177();
          if (v342)
          {
            OUTLINED_FUNCTION_180();
            OUTLINED_FUNCTION_81_0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
            OUTLINED_FUNCTION_41_1();
            v343 = sub_26203A8EC();
            v351 = OUTLINED_FUNCTION_71_1(v343, v344, v345, v346, v347, v348, v349, v350, v659, v697, v735, v773, v812, v850, v888, v925, v963, v1001, v1039, v1077, v1115, v1153, v1191, v1229, v1267, v1306, v1343, v1381, v1403);
            OUTLINED_FUNCTION_102(v351, v352, v353, v354, v355, v356, v357, v358, v660, v698, v736, v774, v813, v851, v889, v926, v964, v1002, v1040, v1078, v1116, v1154, v1192, v1230, v1268, v1307, v1344, v1382, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src);
            OUTLINED_FUNCTION_90();
            sub_26203A90C();
          }

          else
          {
            OUTLINED_FUNCTION_83_0();
          }

          v211 = v1001;
          sub_261F67914(aBlock);
          sub_261F66E60(&__src, &qword_27FEF9870, &qword_26203C960);
        }

        else
        {
          v1421 = v36;
          v368 = OUTLINED_FUNCTION_48_1(v334, v335, v336, v337, v338, v339, v340, v341, v659, v697, v735, v773, v812, v850, v888, v925, v963, v1001, v1039, v1077, v1115, v1153, v1191, v1229, v1267, v1306, v1343, v1381, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v334);
          v370 = OUTLINED_FUNCTION_185(v368, v369);
          v1439 = a6;
          OUTLINED_FUNCTION_62_1(v370, v371, v370, v372, v373, v374, v375, v376, v662, v700, v738, v776, v815, v853, v891, v928, v966, v1004, v1042, v1080, v1118, v1156, v1194, v1232, v1270, v1309, v1346, v1384, v1403);
          sub_261FA447C();
          a6 = v1439;
          sub_261F67914(aBlock);
          v211 = v1001;
        }

        OUTLINED_FUNCTION_120();
        *(&__src + 1) = v473;
        v474 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_59_1(v475, v476, MEMORY[0x277D837E0], v477, v478, v479, v480, v481, v659, v697, v735, v773, v812, v850, v888, v925, v963, v1001, v1039, v1077, v1115, v1153, v1191, v1229, v1267, v1306, v1343, v1381, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v482);
        sub_26203A79C();
        sub_261FB521C();
        if (v484)
        {
          v1421 = v474;
          *(&__src + 1) = v484;
          v491 = OUTLINED_FUNCTION_48_1(v483, v484, v485, v486, v487, v488, v489, v490, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1164, v1175, v1213, v1251, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v483);
          v493 = OUTLINED_FUNCTION_185(v491, v492);
          v1439 = a6;
          OUTLINED_FUNCTION_62_1(v493, v494, v493, v495, v496, v497, v498, v499, v671, v709, v747, v785, v824, v862, v900, v937, v975, v1013, v1051, v1089, v1127, v1165, v1203, v1241, v1280, v1318, v1355, v1393, v1403);
          sub_261FA447C();
          a6 = v1439;
          sub_261F67914(aBlock);
          goto LABEL_116;
        }

        OUTLINED_FUNCTION_177();
        if (v500)
        {
          OUTLINED_FUNCTION_180();
          OUTLINED_FUNCTION_81_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
          OUTLINED_FUNCTION_41_1();
          v211 = v985;
          v501 = sub_26203A8EC();
          v509 = OUTLINED_FUNCTION_71_1(v501, v502, v503, v504, v505, v506, v507, v508, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1164, v1175, v1213, v1251, v1290, v1327, v1365, v1403);
          OUTLINED_FUNCTION_102(v509, v510, v511, v512, v513, v514, v515, v516, v672, v710, v748, v786, v825, v863, v901, v938, v976, v1014, v1052, v1090, v1128, v1166, v1204, v1242, v1281, v1319, v1356, v1394, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src);
          OUTLINED_FUNCTION_90();
          sub_26203A90C();
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      v57 = v38;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      memcpy(__dst, (v13 + 16), 0x61uLL);
      if (!*(&__dst[1] + 1))
      {
        goto LABEL_135;
      }

      v58 = v13;
      v59 = __dst[3];
      v60 = *(&__dst[3] + 1);
      v61 = __dst[4];
      v62 = BYTE8(__dst[4]);
      v796 = (v58 + 528);
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v63 = *(v58 + 528);
      if (v63 && (OUTLINED_FUNCTION_82_0(v63), v64 > 16))
      {
        v66 = *(&__dst[5] + 1);
        v65 = *&__dst[5];

        sub_261F81D84(v65, v66);
        v13 = v1061;
        v67 = a11;
        OUTLINED_FUNCTION_84_1();
        v68 = MEMORY[0x277D84D38];
      }

      else
      {
        OUTLINED_FUNCTION_31_2();
        *&__src = 0xD000000000000012;
        *(&__src + 1) = v69;

        v70 = OUTLINED_FUNCTION_39_1();
        v72 = sub_261F81D84(v70, v71);
        OUTLINED_FUNCTION_59_1(v72, v73, v74, v75, v76, v77, v78, v79, v643, v681, v719, v757, v796, v834, v872, *(&v872 + 1), v947, a9, v1023, v1061, v1099, v1137, v1175, v1213, a11, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src);
        v80 = sub_26203A79C();
        v1421 = v57;
        *(&__src + 1) = v60;
        v88 = OUTLINED_FUNCTION_48_1(v80, v81, v82, v83, v84, v85, v86, v87, v644, v682, v720, v758, v797, v835, v873, v910, v948, v986, v1024, v1062, v1100, v1138, v1176, v1214, v1252, v1291, v1328, v1366, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v59);
        sub_261F8D184(v88, v89);

        v90 = swift_isUniquelyReferenced_nonNull_native();
        v1436 = v1253;
        OUTLINED_FUNCTION_62_1(v90, v91, v90, v92, v93, v94, v95, v96, v645, v683, v721, v759, v798, v836, v874, v911, v949, v987, v1025, v1063, v1101, v1139, v1177, v1215, v1253, v1292, v1329, v1367, v1403);
        sub_261FA447C();
        v67 = v1436;
        sub_261F67914(aBlock);
        OUTLINED_FUNCTION_31_2();
        *(&__src + 1) = v97;
        OUTLINED_FUNCTION_59_1(v98, v99, v100, v101, v102, v103, v104, v105, v646, v684, v722, v760, v799, v837, v875, v912, v950, v988, v1026, v1064, v1102, v1140, v1178, v1216, v1254, v1293, v1330, v1368, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, 18);
        v106 = sub_26203A79C();
        if (v62)
        {
          v114 = sub_261F67388();
          v68 = MEMORY[0x277D84D38];
          if (v115)
          {
            v116 = v114;
            swift_isUniquelyReferenced_nonNull_native();
            v1436 = v67;
            v117 = *(v67 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
            sub_26203A8EC();
            v67 = v1436;
            sub_261F67914(*(v1436 + 48) + 40 * v116);
            sub_261F8D184((*(v67 + 56) + 32 * v116), &v1403);
            OUTLINED_FUNCTION_72();
            sub_26203A90C();
          }

          else
          {
            v1403 = 0u;
            v1404 = 0u;
          }

          v18 = v1023;
          v13 = v1061;
          OUTLINED_FUNCTION_84_1();
          sub_261F67914(aBlock);
          sub_261F66E60(&v1403, &qword_27FEF9870, &qword_26203C960);
          goto LABEL_94;
        }

        v68 = MEMORY[0x277D84D38];
        v1421 = MEMORY[0x277D84D38];
        v359 = OUTLINED_FUNCTION_48_1(v106, v107, v108, v109, v110, v111, v112, v113, v643, v681, v719, v757, v796, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1137, v1175, v1213, v1251, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v61);
        sub_261F8D184(v359, v360);
        v361 = swift_isUniquelyReferenced_nonNull_native();
        v1436 = v67;
        OUTLINED_FUNCTION_62_1(v361, v362, v361, v363, v364, v365, v366, v367, v661, v699, v737, v775, v814, v852, v890, v927, v965, v1003, v1041, v1079, v1117, v1155, v1193, v1231, v1269, v1308, v1345, v1383, v1403);
        sub_261FA447C();
        v67 = v1436;
        sub_261F67914(aBlock);
        v13 = v1061;
        OUTLINED_FUNCTION_84_1();
      }

      v18 = v1023;
LABEL_94:
      v377 = *v796;
      if (*v796)
      {
        v378 = OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue;
        if (*&v377[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] <= 22)
        {
          OUTLINED_FUNCTION_31_2();
          *&__src = v62 + 9;
          *(&__src + 1) = v379;
          v380 = v377;
          OUTLINED_FUNCTION_59_1(v380, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v381, v382, v383, v384, v385, v643, v681, v719, v757, v796, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1137, v1175, v1213, v1251, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src);
          v386 = sub_26203A79C();
          v387 = *&v377[v378];
          v1421 = MEMORY[0x277D83B88];
          v395 = OUTLINED_FUNCTION_48_1(v386, v388, v389, v390, v391, v392, v393, v394, v663, v701, v739, v777, v816, v854, v892, v929, v967, v1005, v1043, v1081, v1119, v1157, v1195, v1233, v1271, v1310, v1347, v1385, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v387);
          sub_261F8D184(v395, v396);
          v397 = swift_isUniquelyReferenced_nonNull_native();
          v1436 = v67;
          OUTLINED_FUNCTION_62_1(v397, v398, v397, v399, v400, v401, v402, v403, v664, v702, v740, v778, v817, v855, v893, v930, v968, v1006, v1044, v1082, v1120, v1158, v1196, v1234, v1272, v1311, v1348, v1386, v1403);
          sub_261FA447C();
          v67 = v1436;
          sub_261F67914(aBlock);
        }
      }

      v1273 = v67;
      OUTLINED_FUNCTION_31_2();
      *(&__src + 1) = v404;
      v405 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_59_1(v406, v407, MEMORY[0x277D837E0], v408, v409, v410, v411, v412, v643, v681, v719, v757, v796, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1137, v1175, v1213, v1273, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v62);
      sub_26203A79C();
      v413 = sub_261FB4F90();
      v1421 = v405;
      *(&__src + 1) = v414;
      v421 = OUTLINED_FUNCTION_48_1(v413, v414, v415, v416, v417, v418, v419, v420, v665, v703, v741, v779, v818, v856, v894, v931, v969, v1007, v1045, v1083, v1121, 0, v1197, v1235, v1274, v1312, v1349, v1387, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v413);
      sub_261F8D184(v421, v422);
      v423 = swift_isUniquelyReferenced_nonNull_native();
      v1436 = v1236;
      OUTLINED_FUNCTION_62_1(v423, v424, v423, v425, v426, v427, v428, v429, v666, v704, v742, v780, v819, v857, v895, v932, v970, v1008, v1046, v1084, v1122, v1159, v1198, v1236, v1275, v1313, v1350, v1388, v1403);
      sub_261FA447C();
      v430 = v1436;
      sub_261F67914(aBlock);
      OUTLINED_FUNCTION_31_2();
      *(&__src + 1) = v431;
      OUTLINED_FUNCTION_59_1(v432, v433, MEMORY[0x277D837E0], v434, v435, v436, v437, v438, v667, v705, v743, v781, v820, v858, v896, v933, v971, v1009, v1047, v1085, v1123, v1160, v1199, v1237, v1276, v1314, v1351, v1389, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v62);
      sub_26203A79C();
      v439 = sub_261FB50BC();
      if (v440)
      {
        OUTLINED_FUNCTION_177();
        if (v447)
        {
          OUTLINED_FUNCTION_180();
          OUTLINED_FUNCTION_81_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
          OUTLINED_FUNCTION_41_1();
          v448 = sub_26203A8EC();
          v456 = OUTLINED_FUNCTION_71_1(v448, v449, v450, v451, v452, v453, v454, v455, v668, v706, v744, v782, v821, v859, v897, v934, v972, v1010, v1048, v1086, v1124, v1161, v1200, v1238, v1277, v1315, v1352, v1390, v1403);
          OUTLINED_FUNCTION_102(v456, v457, v458, v459, v460, v461, v462, v463, v669, v707, v745, v783, v822, v860, v898, v935, v973, v1011, v1049, v1087, v1125, v1162, v1201, v1239, v1278, v1316, v1353, v1391, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src);
          OUTLINED_FUNCTION_90();
          sub_26203A90C();
        }

        else
        {
          OUTLINED_FUNCTION_83_0();
        }

        sub_261F67914(aBlock);
        sub_261F66E60(&__src, &qword_27FEF9870, &qword_26203C960);
      }

      else
      {
        v1421 = v68;
        v464 = OUTLINED_FUNCTION_48_1(v439, v440, v441, v442, v443, v444, v445, v446, v668, v706, v744, v782, v821, v859, v897, v934, v972, v1010, v1048, v1086, v1124, v1161, v1200, v1238, v1277, v1315, v1352, v1390, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v439);
        v466 = OUTLINED_FUNCTION_185(v464, v465);
        v1436 = v430;
        OUTLINED_FUNCTION_62_1(v466, v467, v466, v468, v469, v470, v471, v472, v670, v708, v746, v784, v823, v861, v899, v936, v974, v1012, v1050, v1088, v1126, v1163, v1202, v1240, v1279, v1317, v1354, v1392, v1403);
        sub_261FA447C();
        v430 = v1436;
        sub_261F67914(aBlock);
      }

      OUTLINED_FUNCTION_120();
      *(&__src + 1) = v517;
      v518 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_59_1(v519, v520, MEMORY[0x277D837E0], v521, v522, v523, v524, v525, v668, v706, v744, v782, v821, v859, v897, v934, v972, v1010, v1048, v1086, v1124, v1161, v1200, v1238, v1277, v1315, v1352, v1390, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v526);
      sub_26203A79C();
      sub_261FB521C();
      if (v528)
      {
        v1421 = v518;
        *(&__src + 1) = v528;
        v535 = OUTLINED_FUNCTION_48_1(v527, v528, v529, v530, v531, v532, v533, v534, v673, v711, v749, v787, v826, v864, v902, v939, v977, v1015, v1053, v1091, v1129, v1167, v1205, v1243, v1282, v1320, v1357, v1395, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v527);
        v537 = OUTLINED_FUNCTION_185(v535, v536);
        v1436 = v430;
        OUTLINED_FUNCTION_62_1(v537, v538, v537, v539, v540, v541, v542, v543, v674, v712, v750, v788, v827, v865, v903, v940, v978, v1016, v1054, v1092, v1130, v1168, v1206, v1244, v1283, v1321, v1358, v1396, v1403);
        sub_261FA447C();
        v430 = v1436;
        sub_261F67914(aBlock);
      }

      else
      {
        OUTLINED_FUNCTION_177();
        if (v544)
        {
          OUTLINED_FUNCTION_180();
          OUTLINED_FUNCTION_81_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
          OUTLINED_FUNCTION_41_1();
          v545 = sub_26203A8EC();
          v553 = OUTLINED_FUNCTION_71_1(v545, v546, v547, v548, v549, v550, v551, v552, v673, v711, v749, v787, v826, v864, v902, v939, v977, v1015, v1053, v1091, v1129, v1167, v1205, v1243, v1282, v1320, v1357, v1395, v1403);
          OUTLINED_FUNCTION_102(v553, v554, v555, v556, v557, v558, v559, v560, v675, v713, v751, v789, v828, v866, v904, v941, v979, v1017, v1055, v1093, v1131, v1169, v1207, v1245, v1284, v1322, v1359, v1397, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src);
          OUTLINED_FUNCTION_90();
          sub_26203A90C();
        }

        else
        {
          OUTLINED_FUNCTION_83_0();
        }

        sub_261F67914(aBlock);
        sub_261F66E60(&__src, &qword_27FEF9870, &qword_26203C960);
      }

      OUTLINED_FUNCTION_31_2();
      *(&__src + 1) = v615;
      OUTLINED_FUNCTION_59_1(v616, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v617, v618, v619, v620, v621, v673, v711, v749, v787, v826, v864, v902, v939, v977, v1015, v1053, v1091, v1129, v1167, v1205, v1243, v1282, v1320, v1357, v1395, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v62 + 9);
      sub_26203A79C();
      if (qword_28108CFD0 != -1)
      {
        OUTLINED_FUNCTION_6_6();
      }

      v622 = &qword_28108CFD8;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      OUTLINED_FUNCTION_52_1();
      v1421 = MEMORY[0x277D83B88];
      v632 = OUTLINED_FUNCTION_48_1(v623, v624, v625, v626, v627, v628, v629, v630, v679, v717, v755, v793, v832, v870, v908, v945, v983, v1021, v1059, v1097, v1135, v1173, v1211, v1249, v1288, v1326, v1363, v1401, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v631);
      v634 = OUTLINED_FUNCTION_185(v632, v633);
      OUTLINED_FUNCTION_62_1(v634, v635, v634, v636, v637, v638, v639, v640, v680, v718, v756, v794, v833, v871, v909, v946, v984, v1022, v1060, v1098, v1136, v1174, v1212, v1250, v1289, v430, v1364, v1402, v1403);
      sub_261FA447C();
      v212 = v1290;
      sub_261F67914(aBlock);
      a6 = v1175;
      if (*(v13 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions) != 2 && (*(v13 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions + 1) & 1) != 0)
      {
        v622 = OUTLINED_FUNCTION_105();
        OUTLINED_FUNCTION_146_0();

        [v1175 setFlags_];
      }

      OUTLINED_FUNCTION_63();
      swift_allocObject();
      OUTLINED_FUNCTION_142();
      *&aBlock[2] = sub_261FBD47C;
      *(&aBlock[2] + 1) = v622;
      OUTLINED_FUNCTION_60_1();
      *&aBlock[1] = sub_261FB86BC;
      *(&aBlock[1] + 1) = &block_descriptor_230;
      v641 = _Block_copy(aBlock);

      v642 = OUTLINED_FUNCTION_111();
      sub_261F7D45C(v642);

      [v1175 setPromptForPINHandler_];
      _Block_release(v641);

      sub_261F66E60(__dst, &qword_27FEF9978, &qword_262045D80);
      goto LABEL_63;
    case 2uLL:
      v35 = 0;
      v37 = "setupManualPairing";
      goto LABEL_26;
    case 3uLL:
      v37 = "tionLockdownPairing";
      v35 = 1;
      goto LABEL_26;
    default:
LABEL_26:
      if (v35 && (v37 | 0x8000000000000000) == 0x800000026204C5C0)
      {
LABEL_28:

        v55 = a11;
      }

      else
      {
        v56 = sub_26203AC0C();

        v55 = a11;
        if ((v56 & 1) == 0)
        {
          switch(v1099)
          {
            case 2:
              goto LABEL_28;
            default:
              v129 = sub_26203AC0C();

              if (v129)
              {
                goto LABEL_41;
              }

              v1137 = 0;
              v211 = a9;
              v212 = v1213;
              break;
          }

          goto LABEL_64;
        }
      }

LABEL_41:
      OUTLINED_FUNCTION_115();
      if (v130 < 0)
      {
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        memcpy(aBlock, (v13 + 16), 0x61uLL);
        if (!*(&aBlock[1] + 1))
        {
          goto LABEL_135;
        }

        v138 = *(&aBlock[3] + 1);
        v16 = *&aBlock[4];
        v139 = BYTE8(aBlock[4]);
        v140 = *&aBlock[3];
        OUTLINED_FUNCTION_31_2();
        *&v1403 = 0xD000000000000012;
        *(&v1403 + 1) = v141;

        v142 = OUTLINED_FUNCTION_39_1();
        v144 = sub_261F81D84(v142, v143);
        OUTLINED_FUNCTION_156(v144, v145, v146, v147, v148, v149, v150, v151, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, a9, v18, v1061, v1099, v1137, v1175, v1213, a11, v1290, v1327, v1365, v1403);
        v152 = MEMORY[0x277D837D0];
        v153 = sub_26203A79C();
        *(&v1404 + 1) = v152;
        *&v1403 = v140;
        *(&v1403 + 1) = v138;
        OUTLINED_FUNCTION_178(v153, v154, v155, v156, v157, v158, v159, v160, v647, v685, v723, v761, v800, v838, v876, v913, v951, v989, v1027, v1065, v1103, v1141, v1179, v1217, v1255, v1294, v1331, v1369, v1403);

        swift_isUniquelyReferenced_nonNull_native();
        v1438 = v1256;
        OUTLINED_FUNCTION_158();
        sub_261FA447C();
        v55 = v1438;
        sub_261F67914(&__src);
        OUTLINED_FUNCTION_31_2();
        *(&v1403 + 1) = v161;
        OUTLINED_FUNCTION_156(v162, v163, v164, v165, v166, v167, v168, v169, v648, v686, v724, v762, v801, v839, v877, v914, v952, v990, v1028, v1066, v1104, v1142, v1180, v1218, v1256, v1295, v1332, v1370, 18);
        v170 = sub_26203A79C();
        if (v139)
        {
          v178 = sub_261F67388();
          if (v179)
          {
            v180 = v178;
            swift_isUniquelyReferenced_nonNull_native();
            *&__dst[0] = v55;
            v181 = *(v55 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
            OUTLINED_FUNCTION_176();
            v55 = *&__dst[0];
            sub_261F67914(*(*&__dst[0] + 48) + 40 * v180);
            sub_261F8D184((*(v55 + 56) + 32 * v180), &v1403);
            sub_26203A90C();
          }

          else
          {
            v1403 = 0u;
            v1404 = 0u;
          }

          v13 = v1067;
          a6 = v1181;
          v182 = v1219;
          OUTLINED_FUNCTION_84_1();
          sub_261F67914(&__src);
          sub_261F66E60(&v1403, &qword_27FEF9870, &qword_26203C960);
          v18 = v1029;
        }

        else
        {
          *(&v1404 + 1) = MEMORY[0x277D84D38];
          *&v1403 = v16;
          OUTLINED_FUNCTION_178(v170, v171, v172, v173, v174, v175, v176, v177, v649, v687, v725, v763, v802, v840, v878, v915, v953, v991, v1029, v1067, v1105, v1143, v1181, v1219, v1257, v1296, v1333, v1371, v1403);
          swift_isUniquelyReferenced_nonNull_native();
          v1438 = v55;
          OUTLINED_FUNCTION_158();
          sub_261FA447C();
          v55 = v1438;
          sub_261F67914(&__src);
          v18 = v1029;
          v13 = v1067;
          a6 = v1181;
          v182 = v1219;
          OUTLINED_FUNCTION_84_1();
        }

        OUTLINED_FUNCTION_120();
        *(&v1403 + 1) = v183;
        v184 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_156(v185, v186, MEMORY[0x277D837E0], v187, v188, v189, v190, v191, v649, v687, v725, v763, v802, v840, v878, v915, v953, v991, v1029, v1067, v1105, v1143, v1181, v1219, v1257, v1296, v1333, v1371, v192);
        sub_26203A79C();
        sub_261FB521C();
        if (v194)
        {
          *(&v1404 + 1) = v184;
          *&v1403 = v193;
          *(&v1403 + 1) = v194;
          OUTLINED_FUNCTION_178(v193, v194, v195, v196, v197, v198, v199, v200, v650, v688, v726, v764, v803, v841, v879, v916, v954, v992, v1030, v1068, v1106, v1144, v1182, v1220, v1258, v1297, v1334, v1372, v1403);
          swift_isUniquelyReferenced_nonNull_native();
          v1438 = v182;
          OUTLINED_FUNCTION_158();
          sub_261FA447C();
          v182 = v1438;
          v201 = sub_261F67914(&__src);
        }

        else
        {
          v207 = sub_261F67388();
          if (v208)
          {
            v209 = v207;
            swift_isUniquelyReferenced_nonNull_native();
            *&__dst[0] = v182;
            v210 = *(v182 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
            OUTLINED_FUNCTION_176();
            v182 = *&__dst[0];
            sub_261F67914(*(*&__dst[0] + 48) + 40 * v209);
            sub_261F8D184((*(v182 + 56) + 32 * v209), &v1403);
            OUTLINED_FUNCTION_72();
            sub_26203A90C();
          }

          else
          {
            v1403 = 0u;
            v1404 = 0u;
          }

          sub_261F67914(&__src);
          v201 = sub_261F66E60(&v1403, &qword_27FEF9870, &qword_26203C960);
        }

        *(&v1403 + 1) = 0x800000026204F450;
        OUTLINED_FUNCTION_156(v201, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v202, v203, v204, v205, v206, v650, v688, v726, v764, v803, v841, v879, v916, v954, v992, v1030, v1068, v1106, v1144, v1182, v1220, v1258, v1297, v1334, v1372, v16 + 9);
        sub_26203A79C();
        if (qword_28108CFD0 != -1)
        {
          OUTLINED_FUNCTION_6_6();
        }

        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        OUTLINED_FUNCTION_52_1();
        *(&v1404 + 1) = MEMORY[0x277D83B88];
        *&v1403 = v213;
        OUTLINED_FUNCTION_178(v214, v215, v216, v217, v218, v219, v220, v221, v651, v689, v727, v765, v804, v842, v880, v917, v955, v993, v1031, v1069, v1107, v1145, v1183, v1221, v1259, v1298, v1335, v1373, v1403);
        swift_isUniquelyReferenced_nonNull_native();
        v1436 = v182;
        OUTLINED_FUNCTION_158();
        sub_261FA447C();
        v131 = v1436;
        sub_261F67914(&__src);
        v222 = OUTLINED_FUNCTION_105();
        OUTLINED_FUNCTION_146_0();

        v132 = sub_261F66E60(aBlock, &qword_27FEF9978, &qword_262045D80);
      }

      else
      {
        v131 = v1213;
        OUTLINED_FUNCTION_84_1();
      }

      *(&__src + 1) = 0x800000026204F450;
      OUTLINED_FUNCTION_59_1(v132, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v133, v134, v135, v136, v137, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1137, v1175, v1213, v55, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v16 + 9);
      sub_26203A79C();
      if (qword_28108CFD0 != -1)
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      OUTLINED_FUNCTION_52_1();
      v1421 = MEMORY[0x277D83B88];
      v232 = OUTLINED_FUNCTION_48_1(v223, v224, v225, v226, v227, v228, v229, v230, v652, v690, v728, v766, v805, v843, v881, v918, v956, v994, v1032, v1070, v1108, v1146, v1184, v1222, v1260, v1299, v1336, v1374, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v231);
      sub_261F8D184(v232, v233);
      v234 = swift_isUniquelyReferenced_nonNull_native();
      v1436 = v131;
      OUTLINED_FUNCTION_62_1(v234, v235, v234, v236, v237, v238, v239, v240, v653, v691, v729, v767, v806, v844, v882, v919, v957, v995, v1033, v1071, v1109, v1147, v1185, v1223, v1261, v1300, v1337, v1375, v1403);
      sub_261FA447C();
      v212 = v1436;
      sub_261F67914(aBlock);
      v241 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_146_0();

      [a6 setFlags_];
      v1137 = 0;
LABEL_63:
      v211 = v985;
LABEL_64:
      v16 = v211[2];
      if (!v16)
      {
        goto LABEL_76;
      }

      v1213 = v212;
      v242 = sub_26203A0FC();
      a4 = v211 + 5;
      v18 = 1;
      v17 = &qword_27FEF98E0;
      v211 = &qword_26203F6C8;
      break;
  }

  do
  {
    v243 = *a4;
    *&__src = *(a4 - 1);
    *(&__src + 1) = v243;

    OUTLINED_FUNCTION_59_1(v244, v245, v246, v247, v248, v249, v250, v251, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1137, v1175, v1213, v1251, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src);
    v252 = sub_26203A79C();
    v1421 = MEMORY[0x277D839B0];
    v260 = OUTLINED_FUNCTION_48_1(v252, v253, v254, v255, v256, v257, v258, v259, v654, v692, v730, v768, v807, v845, v883, v920, v958, v996, v1034, v1072, v1110, v1148, v1186, v1224, v1262, v1301, v1338, v1376, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, 1);
    sub_261F8D184(v260, v261);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v1440 = v242;
    v262 = sub_261F67388();
    if (__OFADD__(v242[2], (v263 & 1) == 0))
    {
      __break(1u);
LABEL_114:
      OUTLINED_FUNCTION_83_0();
LABEL_115:
      sub_261F67914(aBlock);
      sub_261F66E60(&__src, &qword_27FEF9870, &qword_26203C960);
LABEL_116:
      OUTLINED_FUNCTION_31_2();
      *(&__src + 1) = v561;
      OUTLINED_FUNCTION_59_1(v562, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v563, v564, v565, v566, v567, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, a4, v1175, v1213, v1251, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v16 + 9);
      sub_26203A79C();
      if (qword_28108CFD0 != -1)
      {
        OUTLINED_FUNCTION_6_6();
      }

      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      OUTLINED_FUNCTION_52_1();
      v1421 = MEMORY[0x277D83B88];
      v577 = OUTLINED_FUNCTION_48_1(v568, v569, v570, v571, v572, v573, v574, v575, v676, v714, v752, v790, v829, v867, v905, v942, v980, v1018, v1056, v1094, v1132, v1170, v1208, v1246, v1285, v1323, v1360, v1398, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, v576);
      v579 = OUTLINED_FUNCTION_185(v577, v578);
      v1438 = a6;
      OUTLINED_FUNCTION_62_1(v579, v580, v579, v581, v582, v583, v584, v585, v677, v715, v753, v791, v830, v868, v906, v943, v981, v1019, v1057, v1095, v1133, v1171, v1209, v1247, v1286, v1324, v1361, v1399, v1403);
      sub_261FA447C();
      v212 = v1438;
      sub_261F67914(aBlock);
      a6 = v1175;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      sub_261F674BC(v13 + 320, aBlock, &qword_27FEF99A0, &qword_26203F7D8);
      if (*(&aBlock[1] + 1))
      {
        sub_261F797BC(aBlock, &__src);
        v586 = v1422;
        __swift_project_boxed_opaque_existential_0Tm(&__src, v1421);
        v587 = *(v586 + 40);
        v588 = OUTLINED_FUNCTION_47_1();
        if (v589(v588, v586))
        {
          [v1175 setFlags_];
        }

        else
        {
          OUTLINED_FUNCTION_63();
          v590 = swift_allocObject();
          v591 = swift_weakInit();
          v599 = OUTLINED_FUNCTION_48_1(v591, v592, v593, v594, v595, v596, v597, v598, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1137, v1175, v1213, v1251, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src);
          sub_261F79740(v599, v600);
          v601 = swift_allocObject();
          v601[2] = v590;
          sub_261F797BC(&v1403, (v601 + 3));
          v601[8] = v792;
          v601[9] = v831;
          *&aBlock[2] = sub_261FBD484;
          *(&aBlock[2] + 1) = v601;
          *&aBlock[0] = MEMORY[0x277D85DD0];
          *(&aBlock[0] + 1) = 1107296256;
          *&aBlock[1] = sub_261FB8538;
          *(&aBlock[1] + 1) = &block_descriptor_244;
          v602 = _Block_copy(aBlock);

          sub_261F7D45C(sub_261FBD484);
          a6 = v1210;

          [v1210 setShowPINHandlerEx_];
          _Block_release(v602);

          v211 = v1020;

          OUTLINED_FUNCTION_63();
          swift_allocObject();
          v603 = OUTLINED_FUNCTION_142();
          v611 = OUTLINED_FUNCTION_48_1(v603, v604, v605, v606, v607, v608, v609, v610, v678, v716, v754, v792, v831, v869, v907, v944, v982, v1020, v1058, v1096, v1134, v1172, v1210, v1248, v1287, v1325, v1362, v1400, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src);
          sub_261F79740(v611, v612);
          v613 = swift_allocObject();
          *(v613 + 16) = sub_261FBD484;
          sub_261F797BC(&v1403, v613 + 24);
          *&aBlock[2] = sub_261FBD494;
          *(&aBlock[2] + 1) = v613;
          OUTLINED_FUNCTION_60_1();
          *&aBlock[1] = sub_261F78F64;
          *(&aBlock[1] + 1) = &block_descriptor_241;
          v614 = _Block_copy(aBlock);

          [a6 setHidePINHandler_];
          _Block_release(v614);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&__src);
      }

      else
      {
        sub_261F66E60(aBlock, &qword_27FEF99A0, &qword_26203F7D8);
      }

      goto LABEL_64;
    }

    v13 = v262;
    a6 = v263;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
    if (sub_26203A8EC())
    {
      v264 = sub_261F67388();
      if ((a6 & 1) != (v265 & 1))
      {
        sub_26203AC9C();
        __break(1u);
LABEL_135:
        OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_20_2();
        OUTLINED_FUNCTION_98();
        sub_26203A91C();
        __break(1u);
        return;
      }

      v13 = v264;
    }

    v242 = v1440;
    if (a6)
    {
      v266 = (v1440[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v266);
      sub_261F8D184(&v1403, v266);
      sub_261F67914(aBlock);
    }

    else
    {
      v1440[(v13 >> 6) + 8] |= 1 << v13;
      sub_261F67C78(aBlock, v242[6] + 40 * v13);
      sub_261F8D184(&v1403, (v242[7] + 32 * v13));
      sub_261F67914(aBlock);
      v267 = v242[2];
      v268 = __OFADD__(v267, 1);
      v269 = v267 + 1;
      if (v268)
      {
        __break(1u);
        goto LABEL_133;
      }

      v242[2] = v269;
    }

    a4 += 2;
    --v16;
  }

  while (v16);
  a6 = v1175;
  sub_261FBD390(v242, v1175, &selRef_setAcl_);
  v18 = v1023;
  v13 = v1061;
  v212 = v1213;
LABEL_76:
  sub_261FBD390(v212, a6, &selRef_setAdditionalSelfInfo_);
  sub_261FBD390(v1251, a6, &selRef_setAdditionalPeerInfo_);
  v270 = a6;
  v271 = a6;
  v272 = v270;
  sub_261F6A504(v271);
  *&aBlock[0] = v1099;
  *(&aBlock[0] + 1) = v834;
  aBlock[1] = v872;
  *&aBlock[2] = v947;
  BYTE8(aBlock[2]) = 0;
  sub_261F7D45C(v834);
  v273 = OUTLINED_FUNCTION_111();
  sub_261F81D84(v273, v274);
  sub_261F68720(aBlock);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  sub_261F79740(v13 + 400, aBlock);
  v275 = *(&aBlock[1] + 1);
  v276 = *&aBlock[2];
  __swift_project_boxed_opaque_existential_0Tm(aBlock, *(&aBlock[1] + 1));
  v277 = v1137;
  v278 = (*(v276 + 56))(v275, v276);
  if (v1137)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    sub_26203A48C();
    OUTLINED_FUNCTION_127_0();
    if (os_log_type_enabled(v18, v279))
    {
      OUTLINED_FUNCTION_57_1();
      v280 = swift_slowAlloc();
      OUTLINED_FUNCTION_56();
      *&aBlock[0] = swift_slowAlloc();
      *v280 = 136446466;
      sub_261F666D8();
      OUTLINED_FUNCTION_139(v281, v282, v283, v284, v285, v286, v287, v288, v643, v681, v719, v757, v795, v834, v872, *(&v872 + 1), v947, v985, v1023, v1061, v1099, v1137, v1175, v1213, v1251, v1290, v1327, v1365, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src, *(&__src + 1), v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434);
      OUTLINED_FUNCTION_47_1();

      OUTLINED_FUNCTION_123_0();
      *&v1403 = v277;
      v289 = v277;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v290 = sub_26203A20C();
      OUTLINED_FUNCTION_139(v290, v291, v292, v293, v294, v295, v296, v297, v655, v693, v731, v769, v808, v846, v884, v921, v959, v997, v1035, v1073, v1111, v1149, v1187, v1225, v1263, v1302, v1339, v1377, v1403, *(&v1403 + 1), v1404, *(&v1404 + 1), v1405, v1406, v1407, v1408, v1409, v1410, v1411, v1412, v1413, v1414, v1415, v1416, v1417, v1418, __src, *(&__src + 1), v1420, v1421, v1422, v1423, v1424, v1425, v1426, v1427, v1428, v1429, v1430, v1431, v1432, v1433, v1434);
      OUTLINED_FUNCTION_47_1();

      *(v280 + 14) = v13;
      OUTLINED_FUNCTION_170(&dword_261F5B000, v298, v299, "%{public}s: Failed to query number of paired peers: %s");
      OUTLINED_FUNCTION_179();
      v300 = OUTLINED_FUNCTION_9_2();
      MEMORY[0x266724180](v300);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

LABEL_80:
    sub_261F79740(v13 + 400, aBlock);
    OUTLINED_FUNCTION_46();
    v301 = swift_allocObject();
    *(v301 + 16) = v13;
    *(v301 + 24) = v272;
    v302 = v272;

    CUPairingSession.configure(customDataStorageProvider:completion:)(aBlock, sub_261FBD454, v301);

    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  }

  else
  {
    v303 = v278;
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    if (v1099 || v303)
    {
      goto LABEL_80;
    }

    v304 = sub_26203A4AC();
    if (os_log_type_enabled(v18, v304))
    {
      OUTLINED_FUNCTION_42_1();
      v305 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v306 = swift_slowAlloc();
      *&aBlock[0] = v306;
      *v305 = 136446210;
      sub_261F666D8();
      v309 = sub_261F67FE4(v307, v308, aBlock);

      *(v305 + 4) = v309;
      _os_log_impl(&dword_261F5B000, v18, v304, "%{public}s: Not paired with anyone, failing pairVerify early.", v305, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v306);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    CUPairingSession.configureFailing()();
    sub_261FB871C(v272);
  }
}

uint64_t sub_261FB7FB0(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261FB8B00(a3, a1);
  }

  return result;
}

void sub_261FB8024(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_261FB8090(char a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, void *a5, uint64_t a6)
{
  v40 = 0;
  v41 = 0;
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v11 = a1 & 1;
  v36 = a1 & 1;
  sub_261F6B73C(a2, a3);
  v12 = 0;
  v13 = 0;
  if ([a5 sessionType] == 1)
  {
    v14 = SCDynamicStoreCopyComputerName(0, 0);
    if (v14)
    {
      v15 = v14;
      v12 = sub_26203A1BC();
      v13 = v16;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(&v39 + 1) = v12;
    v40 = v13;
  }

  if (a6)
  {

    v41 = a6;
  }

  v17 = sub_26203A47C();
  if (qword_28108B600 != -1)
  {
    swift_once();
  }

  v18 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v17))
  {
    v29 = v12;
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *__src = v31;
    *v19 = 136446466;
    sub_261F666D8();
    log = v18;
    v22 = a4;
    v23 = sub_261F67FE4(v20, v21, __src);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    LOBYTE(v35[0]) = v11;
    BYTE1(v35[0]) = v22;
    v35[1] = a2;
    v35[2] = a3;
    v35[3] = v29;
    v35[4] = v13;
    v35[5] = a6;
    sub_261F6B73C(a2, a3);

    v24 = sub_26203A20C();
    v26 = sub_261F67FE4(v24, v25, __src);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_261F5B000, log, v17, "%{public}s: Sending pairing data to peer: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266724180](v31, -1, -1);
    MEMORY[0x266724180](v19, -1, -1);
  }

  swift_beginAccess();
  v27 = v38;
  *__src = v36 | (v37 << 8);
  *&__src[8] = v38;
  v32 = v39;
  *&__src[16] = v39;
  *&__src[32] = v40;
  *&__src[40] = v41;
  *&__src[72] = 0;
  sub_261FBA7C0(__src);
  memcpy(__dst, __src, 0x82uLL);
  sub_261F6B73C(v27, v32);

  sub_261FABDA0(__dst, 0, 1);
  memcpy(v35, __dst, 0x82uLL);
  sub_261FBA880(v35);
  sub_261F6BFFC(v38, v39);
}

uint64_t sub_261FB83B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v8 = sub_26203954C();
  v10 = v9;

  v6(a2, v8, v10);
  sub_261F6BFFC(v8, v10);
}

uint64_t sub_261FB8448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = a5[3];
    v15 = a5[4];
    __swift_project_boxed_opaque_existential_0Tm(a5, v14);
    (*(v15 + 8))(a2, a3, a6, a7, v13, v14, v15);
  }

  return result;
}

uint64_t sub_261FB8538(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_26203A1BC();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_261FB85B4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = a2[3];
    v6 = a2[4];
    __swift_project_boxed_opaque_existential_0Tm(a2, v5);
    (*(v6 + 16))(v4, v5, v6);
  }

  return result;
}

uint64_t sub_261FB8648(unsigned int a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261FB0B0C(a1, a2);
  }

  return result;
}

uint64_t sub_261FB86BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_261FB8B00(void *a1, id a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if (a2)
    {
      v19 = a2;
      sub_26203A4AC();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v20 = OUTLINED_FUNCTION_152();
      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_30();
        v22 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v54 = swift_slowAlloc();
        *v22 = 136446722;
        sub_261F666D8();
        OUTLINED_FUNCTION_125(v23, v24, v25);
        OUTLINED_FUNCTION_61_1();

        *(v22 + 4) = v3;
        *(v22 + 12) = 2082;
        sub_261FE5020(&v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A88, &unk_2620402E0);
        v26 = OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_125(v26, v27, v28);
        OUTLINED_FUNCTION_70();

        *(v22 + 14) = a1;
        *(v22 + 22) = 2082;
        v53 = a2;
        v29 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v30 = OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_125(v30, v31, v32);
        OUTLINED_FUNCTION_70();

        *(v22 + 24) = a1;
        OUTLINED_FUNCTION_75_1();
        _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
        swift_arrayDestroy();
        v38 = OUTLINED_FUNCTION_16_3();
        MEMORY[0x266724180](v38);
        v39 = OUTLINED_FUNCTION_9_2();
        MEMORY[0x266724180](v39);
      }

      v40 = OUTLINED_FUNCTION_72_1();
      sub_261FB8EE8(v40);
    }

    else
    {
      v41 = sub_26203A4AC();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v42 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v41))
      {
        OUTLINED_FUNCTION_57_1();
        v43 = swift_slowAlloc();
        OUTLINED_FUNCTION_56();
        v54 = swift_slowAlloc();
        OUTLINED_FUNCTION_137(4.8752e-34);
        v47 = OUTLINED_FUNCTION_125(v44, v45, v46);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        sub_261FE5020(&v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A88, &unk_2620402E0);
        v48 = OUTLINED_FUNCTION_181();
        v51 = OUTLINED_FUNCTION_125(v48, v49, v50);

        *(v43 + 14) = v51;
        OUTLINED_FUNCTION_183(&dword_261F5B000, v42, v41, "%{public}s: Pairing session of kind %{public}s succeeded");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v52 = OUTLINED_FUNCTION_8_2();
        MEMORY[0x266724180](v52);
      }

      sub_261FB91F4(a1);
    }
  }

  else
  {
    v7 = sub_26203A47C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v8 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v7))
    {
      OUTLINED_FUNCTION_57_1();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_56();
      v54 = swift_slowAlloc();
      OUTLINED_FUNCTION_137(4.8752e-34);
      sub_261F67FE4(v10, v11, &v54);
      OUTLINED_FUNCTION_47_1();

      *(v9 + 4) = v2;
      *(v9 + 12) = 2082;
      v53 = a2;
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A80, &qword_262040430);
      v13 = OUTLINED_FUNCTION_181();
      sub_261F67FE4(v13, v14, &v54);
      OUTLINED_FUNCTION_47_1();

      *(v9 + 14) = v2;
      OUTLINED_FUNCTION_183(&dword_261F5B000, v8, v7, "%{public}s: Received completion with error=%{public}s from pairing session but ignoring since that is no longer active session");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180](v15, v16);
      v17 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v17);
    }
  }
}

void sub_261FB8EE8(void *a1)
{
  OUTLINED_FUNCTION_35_1();
  if (v3 < 0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_3_5();
    sub_26203AC0C();
    OUTLINED_FUNCTION_85_0();

    if ((v1 & 1) == 0)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v4 = *(v1 + 128);
  v5 = *(v1 + 168);
  if ((v5 - 1) >= 2)
  {
    if (v5 == 4 && v4 == 3 && (*(v1 + 144) | *(v1 + 136) | *(v1 + 152) | *(v1 + 160)) == 0)
    {
      v33 = *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions);
      if (v33 == 2 || (v33 & 1) == 0)
      {
        sub_261F65D98();
      }

      else
      {
        __src[0] = 5;
        OUTLINED_FUNCTION_55_1();
        LOBYTE(__src[5]) = 4;
        sub_261F68720(__src);
        *&v34 = OUTLINED_FUNCTION_55_1();
        *&__src[5] = v34;
        *&__src[7] = v34;
        __src[0] = v35;
        __src[9] = 0xC000000000000000;
        memset(&__src[10], 0, 17);
        sub_261FBA7C0(__src);
        memcpy(__dst, __src, sizeof(__dst));
        OUTLINED_FUNCTION_58_1();
        sub_261FABDA0(v36, v37, v38);
        sub_261FA9C1C();
      }
    }

    else
    {
      OUTLINED_FUNCTION_31_2();
      __src[3] = v29;
      __src[0] = 0xD00000000000002FLL;
      __src[1] = v30;
      LOBYTE(__src[4]) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      *v31 = 1;
      __dst[0] = 1;
      ControlChannelConnectionError.Message.format(code:)(__dst);
      OUTLINED_FUNCTION_76();
      sub_261F65C08(__src);
      OUTLINED_FUNCTION_7_3();
      v32 = OUTLINED_FUNCTION_72_1();
      sub_261F65D0C(v32);
    }
  }

  else
  {
    __src[0] = 5;
    OUTLINED_FUNCTION_55_1();
    LOBYTE(__src[5]) = 4;
    OUTLINED_FUNCTION_2_7();
    v6 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_173(v6, v7, v8, v9, v10, v11, v12, v13, v39);
    sub_261F68720(__src);
    if (v4)
    {
      memset(__src, 0, 32);
      LOBYTE(__src[4]) = 2;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      v41 = swift_allocError();
      v14 = a1;
      v16 = v15;
      *v15 = 4;
      __dst[0] = 4;
      v17 = v14;
      v18 = ControlChannelConnectionError.Message.format(code:)(__dst);
      sub_261F65C08(__src);
      *(v16 + 8) = v18;
      *(v16 + 24) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 7) = v14;
      __src[0] = v41;
      __src[1] = 0;
      LOBYTE(__src[2]) = 0;
      v4(__src);
      OUTLINED_FUNCTION_1_9();
      v19 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_173(v19, v20, v21, v22, v23, v24, v25, v26, v40);
      sub_261FB9BAC(__src[0], __src[1], __src[2]);
    }
  }
}

void sub_261FB91F4(void *a1)
{
  v2 = [a1 pairedPeer];
  OUTLINED_FUNCTION_88_0();
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;

  v4 = sub_261FE5078();
  sub_261F6A480(v4);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = *(v1 + 160);
  v10 = *(v1 + 168);
  if (v10 == 2)
  {
    OUTLINED_FUNCTION_46_1();
    v20 = OUTLINED_FUNCTION_72();
    sub_261F7D45C(v20);
    sub_261F68720(&v25);
    if (!v5)
    {
      return;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0x80;
    v21 = OUTLINED_FUNCTION_72();
    sub_261F7D45C(v21);
    v5(&v25);
    OUTLINED_FUNCTION_12_1();
    sub_261F68B30(v5, v6, v7, v8, v9, 2, sub_261F99050, sub_261F6ADEC, v22);
    v24 = v1;
    v14 = OUTLINED_FUNCTION_24_2();
    v19 = 2;
    goto LABEL_7;
  }

  if (v10 == 1)
  {
    OUTLINED_FUNCTION_46_1();
    v11 = OUTLINED_FUNCTION_72();
    sub_261F7D45C(v11);
    sub_261F68720(&v25);
    if (!v5)
    {
      return;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0x80;
    v12 = OUTLINED_FUNCTION_72();
    sub_261F7D45C(v12);
    v5(&v25);
    OUTLINED_FUNCTION_12_1();
    sub_261F68B30(v5, v6, v7, v8, v9, 1, sub_261F99050, sub_261F6ADEC, v13);
    v24 = v1;
    v14 = OUTLINED_FUNCTION_24_2();
    v19 = 1;
LABEL_7:
    sub_261F68B30(v14, v15, v16, v17, v18, v19, sub_261F99050, sub_261F6ADEC, v24);
    return;
  }

  OUTLINED_FUNCTION_51_1();
  if (v23 < 0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_3_5();
    sub_26203AC0C();
    OUTLINED_FUNCTION_85_0();

    if ((v1 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v1 + 40))
  {
LABEL_13:
    OUTLINED_FUNCTION_46_1();
    sub_261F68720(&v25);
    sub_261FA9C1C();
    return;
  }

  sub_261FB004C();
}

void sub_261FB9508()
{
  OUTLINED_FUNCTION_35_1();
  if (v3 < 0)
  {
    sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    if (OUTLINED_FUNCTION_136())
    {
      OUTLINED_FUNCTION_42_1();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v8 = swift_slowAlloc();
      v23[0] = v8;
      *v7 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v9, v10, v23);
      OUTLINED_FUNCTION_65();

      *(v7 + 4) = v1;
      OUTLINED_FUNCTION_29_4(&dword_261F5B000, v11, v12, "%{public}s: Ignoring unexpected unpaired message from device");
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      v13 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v13);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180](v14);
    }
  }

  else if (v3)
  {
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    if (*(v0 + 168) == 4 && *(v0 + 128) == 4)
    {
      OUTLINED_FUNCTION_22_3(*(v0 + 152), *(v0 + 136));
      if (!v4)
      {
        OUTLINED_FUNCTION_88_0();
        v5 = *(v0 + 120);
        *(v0 + 120) = 0;

        sub_261F6A480(0);
        v23[0] = 5;
        OUTLINED_FUNCTION_14_4();
        sub_261F68720(v6);
      }
    }
  }

  else
  {
    sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    if (OUTLINED_FUNCTION_136())
    {
      OUTLINED_FUNCTION_42_1();
      v15 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v17, v18, v23);
      OUTLINED_FUNCTION_163();

      *(v15 + 4) = v2;
      OUTLINED_FUNCTION_29_4(&dword_261F5B000, v19, v20, "%{public}s: Invalidating control channel in response to unpair message from host as this channel does not support PairSetup");
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      v21 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v21);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180](v22);
    }

    v23[0] = 0;
    sub_261F65D98();
  }
}

uint64_t sub_261FB972C()
{
  sub_26203ADDC();
  MEMORY[0x266723290](v0);
  return sub_26203AE0C();
}

uint64_t sub_261FB97BC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return HashableByObjectIdentity.hash(into:)();
}

void sub_261FB9828()
{
  OUTLINED_FUNCTION_66_1();
  if (v3)
  {
    OUTLINED_FUNCTION_51_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_64_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B18, &qword_262040348);
    v9 = OUTLINED_FUNCTION_124();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

void sub_261FB991C()
{
  OUTLINED_FUNCTION_66_1();
  if (v7)
  {
    OUTLINED_FUNCTION_51_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_64_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_18_3(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B08, &qword_262040338);
    v4 = 24;
    v11 = OUTLINED_FUNCTION_103();
    v12 = _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_40_1(v12);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v11 != v0 || v5 + 24 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_39_1();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B10, &qword_262040340);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

void sub_261FB9A10()
{
  OUTLINED_FUNCTION_66_1();
  if (v7)
  {
    OUTLINED_FUNCTION_51_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_64_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_18_3(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9720, &qword_26203EB70);
    v4 = 48;
    v11 = OUTLINED_FUNCTION_103();
    v12 = _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_40_1(v12);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v11 != v0 || v5 + 48 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_39_1();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9910, &unk_26203EF00);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_261FB9B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_97(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_47();
  v9(v8);
  return v4;
}

id sub_261FB9B50(id result)
{
  if (result != 6)
  {
    return sub_261F68250(result);
  }

  return result;
}

uint64_t sub_261FB9B60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_97(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_47();
  v9(v8);
  return v4;
}

void sub_261FB9BAC(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
  }
}

void sub_261FB9C28()
{
  OUTLINED_FUNCTION_66_1();
  if (v5)
  {
    OUTLINED_FUNCTION_51_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_64_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_18_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A70, &qword_2620402C8);
    v9 = OUTLINED_FUNCTION_124();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_134(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_165();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_261FB9CF4()
{
  OUTLINED_FUNCTION_66_1();
  if (v5)
  {
    OUTLINED_FUNCTION_51_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_64_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_18_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A68, &qword_2620402C0);
    v9 = OUTLINED_FUNCTION_124();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_134(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_165();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_261FB9DFC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_51_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_64_1();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_261FBA350(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_261FBA5AC(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_261FB9F34()
{
  OUTLINED_FUNCTION_66_1();
  if (v3)
  {
    OUTLINED_FUNCTION_51_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_64_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A48, &qword_2620402B0);
    v9 = OUTLINED_FUNCTION_124();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_66();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_261FBA008()
{
  OUTLINED_FUNCTION_66_1();
  if (v7)
  {
    OUTLINED_FUNCTION_51_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_64_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_18_3(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9A30, &qword_26203E5E8);
    v4 = 40;
    v11 = OUTLINED_FUNCTION_103();
    v12 = _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_40_1(v12);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v11 != v0 || v5 + 40 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_39_1();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

void sub_261FBA0FC()
{
  OUTLINED_FUNCTION_66_1();
  if (v7)
  {
    OUTLINED_FUNCTION_51_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_64_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_18_3(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9988, &qword_26203F7C8);
    v11 = OUTLINED_FUNCTION_124();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_66();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_39_1();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

void sub_261FBA200()
{
  OUTLINED_FUNCTION_66_1();
  if (v7)
  {
    OUTLINED_FUNCTION_51_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_64_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_49_0();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_18_3(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    v13 = OUTLINED_FUNCTION_124();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_66();
    v13[2] = v2;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_133();
  if (v1)
  {
    if (v13 != v0 || v5 + 16 * v2 <= v4)
    {
      v16 = OUTLINED_FUNCTION_39_1();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9648, &qword_26203E620);
    OUTLINED_FUNCTION_39_1();
    swift_arrayInitWithCopy();
  }
}

void *sub_261FBA2E8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9988, &qword_26203F7C8);
  v4 = OUTLINED_FUNCTION_124();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_66();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_261FBA350(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

const void *sub_261FBA44C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A40, &qword_26203E5F8);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_166(v4);
  return v3;
}

const void *sub_261FBA4C4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9A30, &qword_26203E5E8);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_166(v4);
  return v3;
}

char *sub_261FBA53C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_3(a3, result);
  }

  return result;
}

char *sub_261FBA55C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_3(a3, result);
  }

  return result;
}

uint64_t sub_261FBA5AC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_6_1(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_160();

    return MEMORY[0x2821FE828](v12);
  }

  else if (a3 != a1)
  {
    v11 = OUTLINED_FUNCTION_160();

    return MEMORY[0x2821FE820](v11);
  }

  return result;
}

char *sub_261FBA66C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_3(a3, result);
  }

  return result;
}

char *sub_261FBA694(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_4_3(a3, result);
  }

  return result;
}

void *sub_261FBA6D8(void *result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
      sub_261F6BFFC(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      goto LABEL_7;
    case 2uLL:
      v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;

      result = sub_261F6BFFC(result, v2);
      break;
    case 3uLL:
      return result;
    default:

LABEL_7:

      break;
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

unint64_t sub_261FBA938()
{
  result = qword_27FEF99E0;
  if (!qword_27FEF99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF99E0);
  }

  return result;
}

unint64_t sub_261FBA990()
{
  result = qword_27FEF99E8;
  if (!qword_27FEF99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF99E8);
  }

  return result;
}

uint64_t sub_261FBA9E4(uint64_t a1)
{
  result = sub_261FBAA3C(&qword_28108C0D0, type metadata accessor for ControlChannelConnection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_261FBAA3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261FBAAF0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FBAB44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void sub_261FBABD8()
{
  sub_261F971AC();
  if (v0 <= 0x3F)
  {
    sub_261FBAC74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_261FBAC74()
{
  if (!qword_27FEF9A10)
  {
    sub_262039A4C();
    v0 = sub_26203A6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEF9A10);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice19StartTunnelResponseV15ProtocolOptionsO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FBACF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FBAD48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_261FBAD98(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_261FBAEAC()
{
  result = sub_26203A03C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *sub_261FBBD80(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ControlChannelConnection.Options(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 5))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = ((*a1 >> 1) & 0x3F00 | *a1 & 0xFE | (*a1 >> 15) & 1) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for ControlChannelConnection.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 4) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = 0;
      *result = -a2 & 0xFE | (-2 * a2) & 0x7E00 | (a2 << 15);
    }
  }

  return result;
}

unsigned int *sub_261FBBF48(unsigned int *result)
{
  v1 = *result;
  v2 = v1 & 0xFFFFFFFFFFFF7FFFLL | (*(result + 4) << 32);
  *result = v1 & 0xFFFF7FFF;
  *(result + 4) = BYTE4(v2);
  return result;
}

uint64_t getEnumTagSinglePayload for ControlChannelConnection.Options.Host(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ControlChannelConnection.Options.Host(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ControlChannelConnection.Options.Device(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for ControlChannelConnection.Options.Device(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_261FBC1A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FBC1FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_261FBC25C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_261FBC29C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ControlChannelConnection.Options.Device.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ControlChannelConnection.Options.Host.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_261FBC478()
{
  result = qword_27FEF9A18;
  if (!qword_27FEF9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9A18);
  }

  return result;
}

unint64_t sub_261FBC4D0()
{
  result = qword_27FEF9A20;
  if (!qword_27FEF9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9A20);
  }

  return result;
}

unint64_t sub_261FBC528()
{
  result = qword_28108C128;
  if (!qword_28108C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C128);
  }

  return result;
}

unint64_t sub_261FBC580()
{
  result = qword_28108C130;
  if (!qword_28108C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C130);
  }

  return result;
}

unint64_t sub_261FBC5D8()
{
  result = qword_28108C0F8;
  if (!qword_28108C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C0F8);
  }

  return result;
}

unint64_t sub_261FBC630()
{
  result = qword_28108C100;
  if (!qword_28108C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C100);
  }

  return result;
}

id sub_261FBC684(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

unint64_t sub_261FBC69C()
{
  result = qword_27FEF9AA8;
  if (!qword_27FEF9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9AA8);
  }

  return result;
}

uint64_t sub_261FBC6F8(uint64_t a1)
{
  if (*(a1 + 121) <= 5u)
  {
    return *(a1 + 121);
  }

  else
  {
    return (*a1 + 6);
  }
}

void sub_261FBC778(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, __int16 a17)
{
  if ((a17 & 0x2000) != 0)
  {
    sub_261FBC7B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17 & 0xDFFF);
  }

  else
  {
    sub_261F6BFFC(a1, a2);
  }
}

void sub_261FBC7B0(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unsigned __int16 a17)
{
  switch(a17 >> 14)
  {
    case 1:

      sub_261FBA6D8(a1, a2);
      break;
    case 2:

      sub_261FBC98C(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, (a17 & 0x3FFF) >> 8);
      break;
    case 3:
      return;
    default:

      sub_261FBC878(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
      break;
  }
}

void sub_261FBC878(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  switch(a10 >> 62)
  {
    case 1uLL:

      break;
    case 2uLL:

      sub_261F6ADEC(a11, a12);
      break;
    case 3uLL:
      return;
    default:
      sub_261F6BFFC(a2, a3);

      break;
  }
}

void sub_261FBC98C(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, char a16, char a17)
{
  switch(a17)
  {
    case 0:

      sub_261F6AABC(a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
      break;
    case 1:

      sub_261F6ADEC(a11, a12);
      break;
    case 2:
      sub_261F6ADEC(a2, a3);

      break;
    case 3:

      sub_261F6BFFC(a1, a2);
      break;
    case 4:

      a1 = a8;
      goto LABEL_15;
    case 5:
LABEL_15:

      break;
    default:
      return;
  }
}

id sub_261FBCCF0(id result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
      sub_261F6B73C(result, a2 & 0xCFFFFFFFFFFFFFFFLL);

      break;
    case 2uLL:
      v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;

      result = sub_261F6B73C(result, v2);
      break;
    case 3uLL:
      return result;
    default:
      v3 = result;

      result = v3;
      break;
  }

  return result;
}

unint64_t sub_261FBCDBC()
{
  result = qword_28108C248;
  if (!qword_28108C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C248);
  }

  return result;
}

uint64_t objectdestroy_172Tm()
{
  v1 = *(v0 + 16);

  sub_261FBC778(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  return MEMORY[0x2821FE8E8](v0, 170, 7);
}

double sub_261FBCF84(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1536;
  return result;
}

double sub_261FBCFC4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 121) = 6;
  return result;
}

uint64_t sub_261FBCFE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_261FBD010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_261FBD038()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_261FBD060()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_261FBD088()
{
  result = qword_28108C0E0;
  if (!qword_28108C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C0E0);
  }

  return result;
}

unint64_t sub_261FBD20C()
{
  result = qword_28108C258;
  if (!qword_28108C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C258);
  }

  return result;
}

uint64_t sub_261FBD260(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartTunnelResponse(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_261FBD2C4(uint64_t a1)
{
  started = type metadata accessor for StartTunnelResponse(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

unint64_t sub_261FBD334()
{
  result = qword_28108CF90;
  if (!qword_28108CF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28108CF90);
  }

  return result;
}

void sub_261FBD390(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_26203A0BC();

  [a2 *a3];
}

uint64_t objectdestroy_219Tm()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void sub_261FBD4A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26203A18C();

  [a3 setFixedPIN_];
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_29_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_50_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_26203AC0C();
}

double OUTLINED_FUNCTION_55_1()
{
  result = 0.0;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

void OUTLINED_FUNCTION_74_1(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  sub_261FB5DF0(a1, a2, a3, a4, 0, 0xF000000000000000, 0, 0, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_86_1()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  return result;
}

double OUTLINED_FUNCTION_87_0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21)
{
  result = *&a20;
  a2[2] = a20;
  a2[3] = a21;
  *a2 = a18;
  a2[1] = a19;
  return result;
}

__n128 OUTLINED_FUNCTION_92()
{
  *(v1 + 32) = *(v0 + 48);
  result = *(v0 + 80);
  v3 = *(v0 + 96);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  v4 = *(v0 + 112);
  return result;
}

void *OUTLINED_FUNCTION_104(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char __src)
{

  return memcpy(&a9, &__src, 0x82uLL);
}

uint64_t OUTLINED_FUNCTION_105()
{

  return sub_26203A18C();
}

uint64_t OUTLINED_FUNCTION_110()
{

  return sub_26203A0FC();
}

uint64_t OUTLINED_FUNCTION_113(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_261F67FE4(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_114()
{
}

void OUTLINED_FUNCTION_118()
{
  *(v2 + 16) = v0;
  v5 = v2 + 16 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_134(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 32);
  return result;
}

BOOL OUTLINED_FUNCTION_136()
{

  return os_log_type_enabled(v1, v0);
}

void OUTLINED_FUNCTION_137(float a1)
{
  *v1 = a1;

  sub_261F666D8();
}

uint64_t OUTLINED_FUNCTION_140_0()
{

  return sub_26203AD3C();
}

uint64_t OUTLINED_FUNCTION_141()
{

  return sub_26203AE3C();
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_261FBCBCC(&a71, &a18);
}

void OUTLINED_FUNCTION_145(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t), void (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  sub_261F68B30(a15, a16, v18, v17, v16, 3, a7, a8, a9);
}

id OUTLINED_FUNCTION_146_0()
{

  return [v2 (v1 + 3497)];
}

uint64_t OUTLINED_FUNCTION_166(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_170(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0x16u);
}

void OUTLINED_FUNCTION_171(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_172()
{

  return sub_26203A0FC();
}

void OUTLINED_FUNCTION_173(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t), void (*a9)(void))
{

  sub_261F68B30(a1, a2, v11, v9, v10, v12, a7, a8, a9);
}

uint64_t OUTLINED_FUNCTION_174()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_176()
{

  return sub_26203A8EC();
}

unint64_t OUTLINED_FUNCTION_177()
{

  return sub_261F67388();
}

_OWORD *OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29)
{

  return sub_261F8D184(&a29, &STACK[0x260]);
}

uint64_t OUTLINED_FUNCTION_180()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_182()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_184(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 - 248));
}

uint64_t OUTLINED_FUNCTION_185(_OWORD *a1, _OWORD *a2)
{
  sub_261F8D184(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_261FBDBF0()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEF9B20 = result;
  return result;
}

uint64_t generatePairingKeyPair()()
{
  v9[0] = static Data.randomBytes(ofLength:)(0x20uLL);
  v9[1] = v0;
  v8[0] = static Data.randomBytes(ofLength:)(0x20uLL);
  v8[1] = v1;
  sub_261FBF824(v9, v8);
  v2 = v9[0];
  v3 = OUTLINED_FUNCTION_72();
  sub_261F6B73C(v3, v4);
  v5 = OUTLINED_FUNCTION_72();
  sub_261F6BFFC(v5, v6);
  return v2;
}

uint64_t InProcessIRKGenerator.generateIRK(completion:)(void (*a1)(uint64_t))
{
  v7[0] = static Data.randomBytes(ofLength:)(0x10uLL);
  v7[1] = v2;
  sub_261FBFF10(v7);
  v3 = OUTLINED_FUNCTION_72();
  a1(v3);
  v4 = OUTLINED_FUNCTION_72();

  return sub_261F6BFFC(v4, v5);
}

uint64_t InProcessIRKGenerator.generateIRKSync()()
{
  v2[0] = static Data.randomBytes(ofLength:)(0x10uLL);
  v2[1] = v0;
  sub_261FBFF10(v2);
  return v2[0];
}

uint64_t OPACKEncoderCreateData(from:)(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v1 = sub_26203ABFC();
  NSData = OPACKEncoderCreateNSData(v1);
  swift_unknownObjectRelease();
  if (NSData)
  {
    v3 = sub_26203954C();
  }

  else
  {
    v4 = *MEMORY[0x277CCA590];
    sub_26203A1BC();
    v3 = v5;
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    OUTLINED_FUNCTION_3_6();
    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t OPACKDecode(data:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = sub_26203952C();
  v1 = OPACKDecodeNSData(v0);

  if (v1)
  {
    sub_26203A73C();
    result = swift_unknownObjectRelease();
  }

  else
  {
    v3 = *MEMORY[0x277CCA590];
    sub_26203A1BC();
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    OUTLINED_FUNCTION_3_6();
    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void RapportIRKGenerator.init(queue:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_261F9B6D0(0, &qword_28108CFB0, 0x277D85C78);
  v3 = sub_262039FEC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_74();
  sub_262039FCC();
  v5 = sub_26203A53C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  sub_261FC02FC(&qword_28108CFB8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA0A0, &unk_262040360);
  sub_261F7AA80(&qword_28108CFC0, &unk_27FEFA0A0, &unk_262040360);
  sub_26203A75C();
  v7 = sub_26203A56C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  (*(v13 + 104))(v12 - v11, *MEMORY[0x277D85260]);
  v14 = sub_26203A58C();
  if (MEMORY[0x277D44148])
  {
    v15 = v14;
    v16 = objc_allocWithZone(MEMORY[0x277D44148]);
    v17 = v15;
    v18 = [v16 init];
    [v18 setDispatchQueue_];

    *a2 = v18;
    a2[1] = a1;
    a2[2] = v17;
  }

  else
  {
    sub_26203A91C();
    __break(1u);
  }
}

uint64_t RapportIRKGenerator.generateIRK(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_262039FAC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v30 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v12 = v11 - v10;
  v29 = sub_262039FEC();
  v13 = OUTLINED_FUNCTION_0(v29);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v20 = v19 - v18;
  v21 = *v2;
  v22 = *(v2 + 8);
  v23 = *(v2 + 16);
  v24 = swift_allocObject();
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = v23;
  v24[5] = a1;
  v24[6] = a2;
  aBlock[4] = sub_261FC02EC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_2;
  v25 = _Block_copy(aBlock);
  v26 = v21;
  v27 = v22;
  v23;

  sub_262039FCC();
  sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  sub_26203A75C();
  MEMORY[0x266722A20](0, v20, v12, v25);
  _Block_release(v25);
  (*(v30 + 8))(v12, v5);
  (*(v15 + 8))(v20, v29);
}

uint64_t sub_261FBE554(uint64_t a1, uint64_t a2)
{
  v5 = sub_26203A07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v2;
  v10 = *(v2 + 8);
  v12 = *(v2 + 16);
  *v9 = v12;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v13 = v12;
  LOBYTE(v12) = sub_26203A0AC();
  result = (*(v6 + 8))(v9, v5);
  if (v12)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = swift_allocObject();
    v29 = v17;
    *(v17 + 16) = -1;
    v18 = (v17 + 16);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v11;
    v19[4] = v10;
    v19[5] = v13;
    v19[6] = a1;
    v19[7] = a2;
    v20 = swift_allocObject();
    v20[2] = v15;
    v20[3] = v16;
    v20[4] = v11;
    v20[5] = v10;
    v30 = sub_261FC0494;
    v20[6] = v13;
    v20[7] = sub_261FC0494;
    v20[8] = v19;
    aBlock[4] = sub_261FC04C8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26200F09C;
    aBlock[3] = &block_descriptor_20;
    v21 = _Block_copy(aBlock);
    v22 = v11;
    v23 = v10;
    v24 = v13;
    v28 = v22;
    v25 = v23;
    v26 = v24;

    swift_beginAccess();
    notify_register_dispatch("com.apple.rapport.identitiesChanged", v18, v26, v21);
    swift_endAccess();
    _Block_release(v21);
    sub_261FBEB94(v28, v25, v26, v30, v19, v16, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261FBE884(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a6;
  v28 = a3;
  v13 = sub_262039FAC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_262039FEC();
  v18 = *(v29 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v29);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v22 = *(a4 + 16);
  if (v22 != -1)
  {
    notify_cancel(v22);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a8;
  *(v23 + 24) = a9;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  v24 = v28 & 1;
  *(v23 + 48) = v28 & 1;
  aBlock[4] = sub_261FC07B4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_32;
  v25 = _Block_copy(aBlock);

  sub_261FC07E8(a1, a2, v24);
  sub_262039FCC();
  v31 = MEMORY[0x277D84F90];
  sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  sub_26203A75C();
  MEMORY[0x266722A20](0, v21, v17, v25);
  _Block_release(v25);
  (*(v14 + 8))(v17, v13);
  (*(v18 + 8))(v21, v29);
}

void sub_261FBEB94(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v13 = sub_26203A07C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = a3;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v18 = a3;
  v19 = sub_26203A0AC();
  (*(v14 + 8))(v17, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_26203A4AC();
  if (qword_27FEF8608 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_26203969C();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v21 = v27;
  v20[4] = v18;
  v20[5] = v21;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = a7;
  aBlock[4] = sub_261FC04DC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261FBF44C;
  aBlock[3] = &block_descriptor_26;
  v22 = _Block_copy(aBlock);
  v23 = a1;
  v24 = a2;
  v25 = v18;

  [v23 getIdentitiesWithFlags:1 completion:v22];
  _Block_release(v22);
}

void sub_261FBEE14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v60 = a3;
  v16 = sub_26203A07C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v20 = a5;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v59 = a5;
  LOBYTE(a5) = sub_26203A0AC();
  (*(v17 + 8))(v20, v16);
  if (a5)
  {
    v58 = a4;
    v61 = a6;
    LOBYTE(a4) = sub_26203A4AC();
    if (qword_27FEF8608 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = qword_27FEF9B20;
  if (os_log_type_enabled(qword_27FEF9B20, a4))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v64[0] = v23;
    *v22 = 136315394;
    v63[0] = a2;
    v24 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A80, &qword_262040430);
    v25 = sub_26203A20C();
    v27 = a7;
    v28 = sub_261F67FE4(v25, v26, v64);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v63[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B38, &qword_262040438);
    v29 = sub_26203A20C();
    v31 = sub_261F67FE4(v29, v30, v64);

    *(v22 + 14) = v31;
    a7 = v27;
    _os_log_impl(&dword_261F5B000, v21, a4, "Received IRK fetch response from Rapport. Error = %s, identities = %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266724180](v23, -1, -1);
    MEMORY[0x266724180](v22, -1, -1);
  }

  if (a2)
  {
    v32 = a2;
  }

  else
  {
    if (a1 && sub_26200A934(a1))
    {
      sub_26200AA08(0, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x266722C90](0, a1);
      }

      else
      {
        v33 = *(a1 + 32);
      }

      v34 = v33;
      v35 = v61;
      v36 = sub_261FC0744(v33);
      if (v37 >> 60 == 15)
      {
        sub_26203A91C();
        __break(1u);
      }

      else
      {
        v38 = v36;
        v39 = v37;
        v35();
        sub_261F6ADEC(v38, v39);
      }

      return;
    }

    sub_261FC0510();
    v32 = swift_allocError();
    *v40 = 1;
  }

  swift_willThrow();
  swift_beginAccess();
  if (*(a8 + 16) == 1)
  {
    v41 = a2;
    v42 = sub_26203A4AC();
    if (os_log_type_enabled(v21, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v63[0] = v44;
      *v43 = 136315138;
      v62[1] = v32;
      v45 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v46 = sub_26203A20C();
      v48 = sub_261F67FE4(v46, v47, v63);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_261F5B000, v21, v42, "Second attempt to fetch IRK from Rapport failed. Propagating error to client: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x266724180](v44, -1, -1);
      MEMORY[0x266724180](v43, -1, -1);
    }

    v49 = v32;
    (v61)(v32, 0, 1);
  }

  else
  {
    swift_beginAccess();
    *(a8 + 16) = 1;
    swift_beginAccess();
    v50 = *(a9 + 16);
    v51 = a2;
    if (v50 == 1)
    {
      v52 = sub_26203A4AC();
      if (os_log_type_enabled(v21, v52))
      {
        v53 = swift_slowAlloc();
        v54 = a7;
        v55 = swift_slowAlloc();
        v62[0] = v55;
        *v53 = 136446210;
        *(v53 + 4) = sub_261F67FE4(0xD000000000000023, 0x800000026204F640, v62);
        _os_log_impl(&dword_261F5B000, v21, v52, "Attempting to fetch IRK from Rapport again due to %{public}s notification", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        v56 = v55;
        a7 = v54;
        MEMORY[0x266724180](v56, -1, -1);
        MEMORY[0x266724180](v53, -1, -1);
      }

      sub_261FBEB94(v60, v58, v59, v61, a7, a8, a9);
    }
  }
}

uint64_t sub_261FBF44C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_261F9B6D0(0, &qword_27FEF9B28, 0x277D441B0);
    v4 = sub_26203A3CC();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_261FBF4F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_26203A4AC();
  if (qword_27FEF8608 != -1)
  {
    swift_once();
  }

  v15 = qword_27FEF9B20;
  if (os_log_type_enabled(qword_27FEF9B20, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_261F67FE4(0xD000000000000023, 0x800000026204F640, &v23);
    _os_log_impl(&dword_261F5B000, v15, v14, "Received %{public}s darwin notification", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x266724180](v17, -1, -1);
    MEMORY[0x266724180](v16, -1, -1);
  }

  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    swift_beginAccess();
    if (*(a3 + 16) == 1)
    {
      v18 = sub_26203A4AC();
      if (os_log_type_enabled(v15, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_261F67FE4(0xD000000000000023, 0x800000026204F640, &v22);
        _os_log_impl(&dword_261F5B000, v15, v18, "Attempting to fetch IRK from Rapport again due to %{public}s notification", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x266724180](v20, -1, -1);
        MEMORY[0x266724180](v19, -1, -1);
      }

      sub_261FBEB94(a4, a5, a6, a7, a8, a3, a2);
    }
  }
}

id sub_261FBF774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26203A18C();

  if (a4)
  {
    v8 = sub_26203A0BC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_261FBF824(uint64_t *a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v4, v3);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v13 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_11;
      }

      if (v13 < v4)
      {
        goto LABEL_15;
      }

      if (sub_26203937C() && __OFSUB__(v4, sub_2620393AC()))
      {
        goto LABEL_16;
      }

      v14 = sub_2620393BC();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_26203935C();

      v12 = v17;
LABEL_11:
      if (v13 < v4)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      v5 = sub_261FC0564(v4, v4 >> 32, v12, a2);

      *a1 = v4;
      a1[1] = v12 | 0x4000000000000000;
LABEL_13:
      v18 = *MEMORY[0x277D85DE8];
      return v5;
    case 2uLL:
      v9 = *a1;

      sub_261F6BFFC(v4, v3);
      *&v21 = v4;
      *(&v21 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      sub_26203944C();
      v10 = *(&v21 + 1);
      v11 = sub_261FC0564(*(v21 + 16), *(v21 + 24), *(&v21 + 1), a2);
      *a1 = v21;
      a1[1] = v10 | 0x8000000000000000;
      if (!v2)
      {
        v5 = v11;
      }

      goto LABEL_13;
    case 3uLL:
      *(&v21 + 7) = 0;
      *&v21 = 0;
      v5 = sub_261FBFB70(a2, &v21);
      goto LABEL_13;
    default:
      sub_261F6BFFC(v4, v3);
      *&v21 = v4;
      WORD4(v21) = v3;
      BYTE10(v21) = BYTE2(v3);
      BYTE11(v21) = BYTE3(v3);
      BYTE12(v21) = BYTE4(v3);
      BYTE13(v21) = BYTE5(v3);
      BYTE14(v21) = BYTE6(v3);
      v5 = sub_261FBFB70(a2, &v21);
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      *a1 = v21;
      a1[1] = v8;
      goto LABEL_13;
  }
}

uint64_t sub_261FBFB70(uint64_t *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v14 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v4, v3);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v15 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      if (v15 < v4)
      {
        goto LABEL_22;
      }

      if (sub_26203937C() && __OFSUB__(v4, sub_2620393AC()))
      {
        goto LABEL_23;
      }

      v16 = sub_2620393BC();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = sub_26203935C();

      v14 = v19;
LABEL_18:
      if (v15 < v4)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      v8 = sub_261FC05F8(v4, v4 >> 32, v14, a2);

      *a1 = v4;
      a1[1] = v14 | 0x4000000000000000;
      goto LABEL_20;
    case 2uLL:
      v10 = *a1;

      sub_261F6BFFC(v4, v3);
      *&v22 = v4;
      *(&v22 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v8 = &v22;
      sub_26203944C();
      v11 = v22;
      key_pair = sub_261FC05F8(*(v22 + 16), *(v22 + 24), *(&v22 + 1), a2);
      *a1 = v11;
      a1[1] = *(&v11 + 1) | 0x8000000000000000;
      if (!v2)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    case 3uLL:
      *(&v22 + 7) = 0;
      *&v22 = 0;
      result = ccsha512_di();
      if (!result)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      result = ccrng();
      if (!result)
      {
        goto LABEL_26;
      }

      if (!a2)
      {
        goto LABEL_28;
      }

      key_pair = cced25519_make_key_pair();
LABEL_12:
      v8 = key_pair;
LABEL_20:
      v20 = *MEMORY[0x277D85DE8];
      return v8;
    default:
      sub_261F6BFFC(v4, v3);
      *&v22 = v4;
      WORD4(v22) = v3;
      BYTE10(v22) = BYTE2(v3);
      BYTE11(v22) = BYTE3(v3);
      BYTE12(v22) = BYTE4(v3);
      BYTE13(v22) = BYTE5(v3);
      BYTE14(v22) = BYTE6(v3);
      result = ccsha512_di();
      if (!result)
      {
        goto LABEL_25;
      }

      result = ccrng();
      if (!result)
      {
        goto LABEL_27;
      }

      if (!a2)
      {
        goto LABEL_29;
      }

      v8 = cced25519_make_key_pair();
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
      *a1 = v22;
      a1[1] = v9;
      goto LABEL_20;
  }
}

uint64_t sub_261FBFF10(uint64_t *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v1 = a1[1];
  switch(v1 >> 62)
  {
    case 1uLL:
      v9 = v1 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v2, v1);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v10 = v2 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v10 < v2)
      {
        goto LABEL_15;
      }

      if (sub_26203937C() && __OFSUB__(v2, sub_2620393AC()))
      {
        goto LABEL_16;
      }

      v11 = sub_2620393BC();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      v14 = sub_26203935C();

      v9 = v14;
LABEL_10:
      if (v10 < v2)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_261FC0698(v2, v2 >> 32);

      v7 = v9 | 0x4000000000000000;
LABEL_12:
      *a1 = v2;
      a1[1] = v7;
LABEL_13:
      v15 = *MEMORY[0x277D85DE8];
      return result;
    case 2uLL:
      v6 = *a1;

      sub_261F6BFFC(v2, v1);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      sub_26203944C();
      result = sub_261FC0698(*(v2 + 16), *(v2 + 24));
      v7 = v1 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      v8 = *MEMORY[0x277D029A0];
      result = CryptoHKDF();
      goto LABEL_13;
    default:
      sub_261F6BFFC(v2, v1);
      LOWORD(v16) = v1;
      BYTE2(v16) = BYTE2(v1);
      HIBYTE(v16) = BYTE3(v1);
      LOBYTE(v17) = BYTE4(v1);
      HIBYTE(v17) = BYTE5(v1);
      v4 = *MEMORY[0x277D029A0];
      result = CryptoHKDF();
      *a1 = v2;
      a1[1] = v16 | ((v17 | (BYTE6(v1) << 16)) << 32);
      goto LABEL_13;
  }
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x266723590]();

  return v2;
}

uint64_t OPACKDecodeNSData(void *a1)
{
  v1 = a1;
  v2 = OPACKDecodeData();

  return v2;
}

uint64_t sub_261FC02FC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for InProcessIRKGenerator(_BYTE *result, int a2, int a3)
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

uint64_t sub_261FC0404(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_261FC0444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261FC0510()
{
  result = qword_27FEF9B30;
  if (!qword_27FEF9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9B30);
  }

  return result;
}

uint64_t sub_261FC0564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_26203937C();
  if (result)
  {
    v8 = result;
    result = sub_2620393AC();
    v9 = a1 - result;
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_26203939C();
      return sub_261FBFB70(a4, v8 + v9);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261FC05F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26203937C();
  if (!result)
  {
    goto LABEL_8;
  }

  result = sub_2620393AC();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_26203939C();
  result = ccsha512_di();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = ccrng();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a4)
  {
    return cced25519_make_key_pair();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_261FC0698(uint64_t a1, uint64_t a2)
{
  result = sub_26203937C();
  if (result)
  {
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_26203939C();
      v5 = *MEMORY[0x277D029A0];
      return CryptoHKDF();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261FC0744(void *a1)
{
  v1 = [a1 deviceIRKData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26203954C();

  return v3;
}

void sub_261FC07A8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_261F6BFFC(a1, a2);
  }
}

id sub_261FC07E8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_261F6B73C(a1, a2);
  }
}

uint64_t sub_261FC080C()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_28108B5F0 = result;
  return result;
}

uint64_t static VirtualInterface.maxSupportedPendingPackets.getter()
{
  if (qword_28108B4C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_21_2(v0, v1, v2, v3, v4, v5, v6, v7, v15, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1], v24);
  v8 = sub_261F83CD4();
  v10 = v9;
  sub_261FC2F14(v23, &qword_27FEF9148, &qword_262040450);
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

  if (v8 <= 0x400)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1024;
  }

  if (HIDWORD(v8))
  {
    v13 = 32;
  }

  else
  {
    v13 = v12;
  }

  if (v10)
  {
    return 32;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_261FC095C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9148, &qword_262040450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static VirtualInterface.defaultMTU.getter()
{
  if (qword_28108B518 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_21_2(v0, v1, v2, v3, v4, v5, v6, v7, v13, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v22);
  v8 = sub_261F83CD4();
  v10 = v9;
  sub_261FC2F14(v21, &qword_27FEF9148, &qword_262040450);
  v11 = v8;
  if (v8 <= 0x500u)
  {
    v11 = 1280;
  }

  if (v10 & 1 | (v8 > 0x3E80))
  {
    return 16000;
  }

  else
  {
    return v11;
  }
}

uint64_t VirtualInterface.__allocating_init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  VirtualInterface.init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(a1, a2, a3, a4 & 0x1FFFF, a5 | ((HIDWORD(a5) & 1) << 32), a6, a7);
  return v14;
}

uint64_t VirtualInterface.init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v10 = v7;
  LODWORD(v167) = a4;
  v13 = *v7;
  v7[20] = 0;
  v7[11] = 0;
  v7[12] = 0;
  v14 = v13;
  if (qword_28108B4A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v15 = qword_28108B4A8;
  v16 = unk_28108B4B0;
  v17 = byte_28108B4B8;
  if (byte_28108B4B9)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_261F83BA8(v15, v16, v18 | v17);

  v20 = a1;
  if (v19)
  {
    sub_261FC1624();
    v21 = v10[20];
    v10[20] = v22;
  }

  v172 = v14;
  v23 = sub_261FC1F14();
  if (!v23)
  {

    sub_261F9BCE0();
    v53 = OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_16_4(v53, v54, v55, v56, v57, v58, v59, v60, v157, v158, v160, v162, v164, a5, v167, v169, v14, a1, a3, v182, v183, v184, v185);
    sub_261F9D610();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_12_2();
    sub_26203AD4C();
    swift_willThrow();

    goto LABEL_20;
  }

  v159 = v9;
  v170 = a2;
  v24 = v23;
  v25 = *(v23 + 16);
  result = NEVirtualInterfaceCopyName();
  if (result)
  {
    v27 = result;
    v28 = sub_26203A1BC();
    v30 = v29;

    v186 = 0;

    sub_26203A7CC();

    v184 = 0xD000000000000029;
    v185 = 0x800000026204F720;
    MEMORY[0x266722710](v28, v30);
    sub_26203A21C();

    v31 = os_transaction_create();

    if (!v31)
    {

      sub_261F9BCE0();
      v63 = OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_16_4(v63, v64, v65, v66, v67, v68, v69, v70, v157, v159, v160, v162, v164, a5, v167, v170, v172, a1, a3, v182, v183, v184, v185);
      sub_261F9D610();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_12_2();
      sub_26203AD4C();
      swift_willThrow();
      sub_261FC209C(&v186, v28, v30, v24);

      goto LABEL_40;
    }

    v163 = v30;
    v165 = v28;
    v161 = v31;
    if (!a7)
    {
      sub_26203A4AC();
      v33 = v24;
      v34 = v170;
      if (qword_28108B5E0 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      sub_26203969C();
      goto LABEL_29;
    }

    v32 = sub_26203A4AC();
    v33 = v24;
    v34 = v170;
    if (qword_28108B5E0 != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v35 = qword_28108B5F0;
    if (os_log_type_enabled(qword_28108B5F0, v32))
    {
      OUTLINED_FUNCTION_42_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_10_2();
      v36 = swift_slowAlloc();
      v184 = v36;
      *(a1 + 4) = OUTLINED_FUNCTION_17_3(4.8751e-34, v36, v37, v38, v39, v40, v41, v42, v43, v157, v159, v161, v163, v165);
      OUTLINED_FUNCTION_30_4();
      _os_log_impl(v44, v45, v46, v47, v48, v49);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    v50 = *(v33 + 16);
    v51 = sub_26203A18C();
    LODWORD(v50) = NEVirtualInterfaceSetDelegateInterface();

    if (v50)
    {
      v52 = sub_26203A4AC();
      if (os_log_type_enabled(v35, v52))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v71 = sub_26203A49C();
      if (os_log_type_enabled(v35, v71))
      {
LABEL_27:
        OUTLINED_FUNCTION_42_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_10_2();
        v72 = swift_slowAlloc();
        v184 = v72;
        v80 = OUTLINED_FUNCTION_17_3(4.8149e-34, v72, v73, v74, v75, v76, v77, v78, v79, v157, v159, v161, v163, v165);

        *(v51 + 4) = v80;
        OUTLINED_FUNCTION_30_4();
        _os_log_impl(v81, v82, v83, v84, v85, v86);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
LABEL_29:
        sub_261F79740(v34, &v184);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B40, &qword_262040458);
        v87 = sub_26203A20C();
        v89 = v88;
        sub_261F79740(a3, &v184);
        v90 = sub_26203A20C();
        v92 = v91;
        v93 = *(v33 + 16);
        v94 = sub_26203A18C();
        v95 = sub_26203A18C();
        LODWORD(v93) = NEVirtualInterfaceAddAddress();

        if (v93)
        {
          a2 = v170;

          v96 = *(v33 + 16);
          if (NEVirtualInterfaceSetRankNever())
          {
            v97 = *(v33 + 16);
            v98 = a3;
            if (NEVirtualInterfaceUpdateAdHocService())
            {
              if ((v167 & 0x10000) != 0)
              {
                static VirtualInterface.defaultMTU.getter();
              }

              v99 = *(v33 + 16);
              if (NEVirtualInterfaceSetMTU())
              {
                if ((a5 & 0x100000000) != 0 || (v100 = *(v33 + 16), NEVirtualInterfaceSetMaxPendingPackets()))
                {
                  v10[2] = v165;
                  v10[3] = v163;
                  sub_261F79740(v170, (v10 + 4));
                  v10[9] = v33;
                  v10[10] = a1;
                  *(v10 + 13) = 0u;
                  *(v10 + 15) = 0u;
                  *(v10 + 17) = 0u;
                  v10[19] = v161;

                  v101 = a1;
                  swift_unknownObjectRetain();
                  sub_261FC221C();
                  swift_unknownObjectRelease();
                  if (v159)
                  {
                    sub_261FC209C(&v186, v165, v163, v33);

                    __swift_destroy_boxed_opaque_existential_0Tm(a3);
                    __swift_destroy_boxed_opaque_existential_0Tm(v170);
                  }

                  else
                  {

                    __swift_destroy_boxed_opaque_existential_0Tm(a3);
                    __swift_destroy_boxed_opaque_existential_0Tm(v170);
                  }

                  return v10;
                }

                sub_261F9BCE0();
                v146 = OUTLINED_FUNCTION_1_10();
                OUTLINED_FUNCTION_16_4(v146, v147, v148, v149, v150, v151, v152, v153, v157, v159, v161, v163, v165, a5, v167, v170, v172, a1, a3, v182, v183, v184, v185);
                sub_261F9D610();
                OUTLINED_FUNCTION_6();
              }

              else
              {

                sub_261F9BCE0();
                v138 = OUTLINED_FUNCTION_1_10();
                OUTLINED_FUNCTION_16_4(v138, v139, v140, v141, v142, v143, v144, v145, v157, v159, v161, v163, v165, a5, v167, v170, v172, a1, a3, v182, v183, v184, v185);
                sub_261F9D610();
                OUTLINED_FUNCTION_6();
                OUTLINED_FUNCTION_15_3();
                OUTLINED_FUNCTION_5_4();
              }

              OUTLINED_FUNCTION_12_2();
              sub_26203AD4C();
              swift_willThrow();
              swift_unknownObjectRelease();
              v154 = OUTLINED_FUNCTION_13_2();
              sub_261FC209C(v154, v155, v156, v33);

              __swift_destroy_boxed_opaque_existential_0Tm(v181);
              v62 = a2;
LABEL_41:
              __swift_destroy_boxed_opaque_existential_0Tm(v62);
              v115 = v10[12];
              sub_261F665E4(v10[11]);

              swift_deallocPartialClassInstance();
              return v10;
            }

            sub_261F9BCE0();
            v127 = OUTLINED_FUNCTION_1_10();
            OUTLINED_FUNCTION_16_4(v127, v128, v129, v130, v131, v132, v133, v134, v157, v159, v161, v163, v165, a5, v167, v170, v172, a1, a3, v182, v183, v184, v185);
            sub_261F9D610();
            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_15_3();
            OUTLINED_FUNCTION_5_4();
            OUTLINED_FUNCTION_12_2();
            sub_26203AD4C();
            swift_willThrow();
            swift_unknownObjectRelease();
            v135 = OUTLINED_FUNCTION_13_2();
            sub_261FC209C(v135, v136, v137, v33);

            v61 = v98;
LABEL_21:
            __swift_destroy_boxed_opaque_existential_0Tm(v61);
            v62 = a2;
            goto LABEL_41;
          }

          sub_261F9BCE0();
          v116 = OUTLINED_FUNCTION_1_10();
          OUTLINED_FUNCTION_16_4(v116, v117, v118, v119, v120, v121, v122, v123, v157, v159, v161, v163, v165, a5, v167, v170, v172, a1, a3, v182, v183, v184, v185);
          sub_261F9D610();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_5_4();
          OUTLINED_FUNCTION_12_2();
          sub_26203AD4C();
          swift_willThrow();
          swift_unknownObjectRelease();
          v124 = OUTLINED_FUNCTION_13_2();
          sub_261FC209C(v124, v125, v126, v33);

LABEL_20:
          v61 = v179;
          goto LABEL_21;
        }

        v168 = sub_261F9BCE0();
        OUTLINED_FUNCTION_31_3();
        v102 = sub_26203AD3C();
        OUTLINED_FUNCTION_16_4(v102, v103, v104, v105, v106, v107, v108, v109, v157, v159, v161, v163, v165, a5, v168, v170, v172, a1, a3, v182, v183, v184, v185);
        sub_26203A7CC();
        MEMORY[0x266722710](0xD000000000000017, 0x800000026204F8D0);
        MEMORY[0x266722710](v87, v89);

        MEMORY[0x266722710](0xD000000000000010, 0x800000026204F8F0);
        MEMORY[0x266722710](v90, v92);

        v110 = OUTLINED_FUNCTION_22(0x6F742027u);
        MEMORY[0x266722710](v110, v111 & 0xFFFFFFFFFFFFLL | 0xEF2E000000000000);
        sub_261F9D610();
        OUTLINED_FUNCTION_20_3();
        swift_allocError();
        sub_26203AD4C();
        swift_willThrow();
        swift_unknownObjectRelease();
        v112 = OUTLINED_FUNCTION_13_2();
        sub_261FC209C(v112, v113, v114, v33);

LABEL_40:
        __swift_destroy_boxed_opaque_existential_0Tm(v180);
        v62 = v171;
        goto LABEL_41;
      }
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void sub_261FC1624()
{
  OUTLINED_FUNCTION_96();
  v93 = v1;
  v94 = v0;
  v2 = sub_26203A1FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v98 = v4;
  v99 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v97 = v8 - v7;
  v9 = sub_26203A4CC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v95 = v11;
  v96 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v100 = (v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA4B0, &unk_262045270);
  v17 = OUTLINED_FUNCTION_40(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v86 - v20;
  v22 = sub_26203942C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v86 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v92 = &v86 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (&v86 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = &v86 - v37;
  v39 = [objc_opt_self() defaultManager];
  v40 = [v39 URLsForDirectory:13 inDomains:1];

  v41 = sub_26203A3CC();
  sub_261FD45F4(v41);

  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_261FC2F14(v21, &unk_27FEFA4B0, &unk_262045270);
    sub_26203A48C();
    if (qword_28108B5E0 != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    sub_26203969C();
    goto LABEL_5;
  }

  v87 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v31;
  v90 = *(v25 + 32);
  v91 = v25;
  v90(v38, v21, v22);
  v105 = 0;
  v106 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B40, &qword_262040458);
  sub_26203A8CC();
  MEMORY[0x266722710](0x2E6C656E6E75742DLL, 0xEB00000000676F6CLL);
  v103 = 58;
  v104 = 0xE100000000000000;
  v101 = 45;
  v102 = 0xE100000000000000;
  sub_261FC2E54();
  v89 = v22;
  OUTLINED_FUNCTION_7_2();
  sub_26203A70C();

  v94 = v38;
  sub_26203940C();
  (*(v95 + 104))(v100, *MEMORY[0x277D85218], v96);
  v105 = sub_26203941C();
  v106 = v42;
  v43 = v97;
  sub_26203A1EC();
  v44 = sub_26203A71C();
  (*(v98 + 8))(v43, v99);

  if (v44)
  {

    sub_261F9B6D0(0, &qword_27FEFA4C0, 0x277D85C70);
    v45 = v92;
    v46 = v91 + 16;
    v47 = v89;
    v99 = *(v91 + 16);
    v99(v92, v36, v89);
    v48 = (*(v46 + 64) + 16) & ~*(v46 + 64);
    v49 = swift_allocObject();
    v90((v49 + v48), v45, v47);
    v50 = v93;
    v51 = sub_26203A4FC();

    v52 = sub_26203A48C();
    v53 = v47;
    if (v51)
    {
      if (qword_28108B5E0 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v54 = qword_28108B5F0;
      v55 = v88;
      v56 = OUTLINED_FUNCTION_26_4();
      v57(v56);
      if (os_log_type_enabled(v54, v52))
      {
        OUTLINED_FUNCTION_42_1();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v105 = v59;
        *v58 = 136315138;
        OUTLINED_FUNCTION_11();
        sub_261F7AA38(v60, v61);
        LODWORD(v99) = v52;
        v62 = sub_26203ABAC();
        v64 = v63;
        v100 = v36;
        v65 = *(v91 + 8);
        v65(v55, v53);
        v66 = sub_261F67FE4(v62, v64, &v105);

        *(v58 + 4) = v66;
        _os_log_impl(&dword_261F5B000, v54, v99, "Successfully created packet tracing logger at %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v65(v100, v53);
        v65(v94, v53);
LABEL_5:
        OUTLINED_FUNCTION_31_0();
        return;
      }
    }

    else
    {
      if (qword_28108B5E0 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      v67 = qword_28108B5F0;
      v68 = v87;
      v69 = OUTLINED_FUNCTION_26_4();
      v70(v69);
      if (os_log_type_enabled(v67, v52))
      {
        OUTLINED_FUNCTION_42_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_10_2();
        v100 = swift_slowAlloc();
        v105 = v100;
        *v46 = 136315138;
        OUTLINED_FUNCTION_11();
        sub_261F7AA38(v71, v72);
        v73 = sub_26203ABAC();
        v75 = v74;
        v76 = v47;
        v77 = *(v91 + 8);
        v77(v68, v76);
        v78 = sub_261F67FE4(v73, v75, &v105);

        *(v46 + 4) = v78;
        OUTLINED_FUNCTION_30_4();
        _os_log_impl(v79, v80, v81, v82, v83, v84);
        __swift_destroy_boxed_opaque_existential_0Tm(v100);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v77(v36, v76);
        v77(v94, v76);
        goto LABEL_5;
      }
    }

    v85 = OUTLINED_FUNCTION_29_0();
    v52(v85);
    (v52)(v36, v47);
    (v52)(v94, v47);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_261FC1F14()
{
  sub_26203A0FC();
  v0 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D839B0];
  LOBYTE(v6) = 1;
  sub_261F8D184(&v6, v5);
  swift_isUniquelyReferenced_nonNull_native();
  sub_261FA4260();
  v7 = v0;
  LOBYTE(v6) = 1;
  sub_261F8D184(&v6, v5);
  swift_isUniquelyReferenced_nonNull_native();
  sub_261FA4260();
  v1 = *MEMORY[0x277CBECE8];
  v2 = sub_26203A0BC();

  v3 = NEVirtualInterfaceCreateWithOptions();

  result = 0;
  if (v3)
  {
    type metadata accessor for _ManagedOpaqueCFTypeWrapper();
    swift_allocObject();
    return _ManagedOpaqueCFTypeWrapper.init(retainedValue:)(v3);
  }

  return result;
}

_BYTE *sub_261FC209C(_BYTE *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((*result & 1) == 0)
  {
    v16[9] = v4;
    v17 = v5;
    v9 = sub_26203A48C();
    if (qword_28108B5E0 != -1)
    {
      swift_once();
    }

    v10 = qword_28108B5F0;
    if (os_log_type_enabled(qword_28108B5F0, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16[0] = v12;
      *v11 = 136446210;
      if (a3)
      {
        v13 = a3;
      }

      else
      {
        a2 = 0x6E776F6E6B6E753CLL;
        v13 = 0xE90000000000003ELL;
      }

      v14 = sub_261F67FE4(a2, v13, v16);

      *(v11 + 4) = v14;
      _os_log_impl(&dword_261F5B000, v10, v9, "Cleaning up virtual interface %{public}s due to throwing init", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266724180](v12, -1, -1);
      MEMORY[0x266724180](v11, -1, -1);
    }

    v15 = *(a4 + 16);

    return NEVirtualInterfaceInvalidate();
  }

  return result;
}

void sub_261FC221C()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  NEVirtualInterfaceSetReadAutomatically();
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_261F6AED8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F6AE38;
  aBlock[3] = &block_descriptor_11;
  v5 = _Block_copy(aBlock);

  LODWORD(v3) = NEVirtualInterfaceSetReadMultipleIPPacketsHandler();
  _Block_release(v5);
  if (!v3)
  {
    sub_261F9BCE0();
    sub_26203AD3C();
    sub_261F9D610();
    swift_allocError();
    sub_26203AD4C();
    swift_willThrow();
  }
}

void VirtualInterface.deinit()
{
  OUTLINED_FUNCTION_96();
  v2 = v0;
  v3 = sub_26203A4BC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  v11 = v10 - v9;
  v12 = sub_26203A4AC();
  if (qword_28108B5E0 != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  if (os_log_type_enabled(qword_28108B5F0, v12))
  {
    OUTLINED_FUNCTION_42_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_10_2();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v1 = 136446210;
    *(v1 + 4) = sub_261F67FE4(*(v2 + 16), *(v2 + 24), &v27);
    OUTLINED_FUNCTION_30_4();
    _os_log_impl(v14, v15, v16, v17, v18, v19);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v20 = *(*(v2 + 72) + 16);
  NEVirtualInterfaceInvalidate();
  if (*(v2 + 104))
  {
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  if (*(v2 + 120))
  {
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  if (*(v2 + 136))
  {
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v21 = *(v2 + 160);
  if (v21)
  {
    v27 = MEMORY[0x277D84F90];
    sub_261F7AA38(&qword_27FEF9B48, MEMORY[0x277D85208]);
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B50, &unk_262040460);
    sub_261F7AA80(&qword_27FEF9B58, &qword_27FEF9B50, &unk_262040460);
    sub_26203A75C();
    sub_26203A50C();

    (*(v6 + 8))(v11, v3);
  }

  v23 = *(v2 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 32));
  v24 = *(v2 + 72);

  v25 = *(v2 + 96);
  sub_261F665E4(*(v2 + 88));
  v26 = *(v2 + 152);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_31_0();
}

uint64_t VirtualInterface.__deallocating_deinit()
{
  VirtualInterface.deinit();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_261FC2678(int a1, NSObject *a2)
{
  v4 = sub_26203942C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = sub_2620392DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  if (a1)
  {
    v48 = a2;
    v20 = sub_2620396AC();
    if ((v20 & 0x100000000) != 0)
    {
      v21 = 5;
    }

    else
    {
      v21 = v20;
    }

    LODWORD(v49) = v21;
    sub_261F9D4D8(MEMORY[0x277D84F90]);
    sub_261F7AA38(&qword_27FEF9920, MEMORY[0x277CC8658]);
    sub_2620393DC();
    v22 = sub_26203A48C();
    if (qword_28108B5E0 != -1)
    {
      swift_once();
    }

    v23 = qword_28108B5F0;
    (*(v5 + 16))(v11, v48, v4);
    (*(v13 + 16))(v17, v19, v12);
    v48 = v23;
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v24 = 136446722;
      sub_261F7AA38(&unk_27FEF9B70, MEMORY[0x277CC9260]);
      v46 = v22;
      v25 = sub_26203ABAC();
      v45 = a1;
      v27 = v26;
      (*(v5 + 8))(v11, v4);
      v28 = sub_261F67FE4(v25, v27, &v49);

      *(v24 + 4) = v28;
      *(v24 + 12) = 1024;
      *(v24 + 14) = v45;
      *(v24 + 18) = 2080;
      sub_261F7AA38(&unk_27FEF9B80, MEMORY[0x277CC8658]);
      v29 = sub_26203ACCC();
      v31 = v30;
      v32 = *(v13 + 8);
      v32(v17, v12);
      v33 = sub_261F67FE4(v29, v31, &v49);

      *(v24 + 20) = v33;
      _os_log_impl(&dword_261F5B000, v48, v46, "%{public}s: IO cleanup error: %d, %s", v24, 0x1Cu);
      v34 = v47;
      swift_arrayDestroy();
      MEMORY[0x266724180](v34, -1, -1);
      MEMORY[0x266724180](v24, -1, -1);
      return (v32)(v19, v12);
    }

    else
    {
      v44 = *(v13 + 8);
      v44(v17, v12);
      (*(v5 + 8))(v11, v4);
      return (v44)(v19, v12);
    }
  }

  else
  {
    v36 = sub_26203A46C();
    if (qword_28108B5E0 != -1)
    {
      swift_once();
    }

    v37 = qword_28108B5F0;
    (*(v5 + 16))(v9, a2, v4);
    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136446210;
      sub_261F7AA38(&unk_27FEF9B70, MEMORY[0x277CC9260]);
      v40 = sub_26203ABAC();
      v42 = v41;
      (*(v5 + 8))(v9, v4);
      v43 = sub_261F67FE4(v40, v42, &v49);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_261F5B000, v37, v36, "%{public}s: IO cleanup complete", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x266724180](v39, -1, -1);
      return MEMORY[0x266724180](v38, -1, -1);
    }

    else
    {
      return (*(v5 + 8))(v9, v4);
    }
  }
}

uint64_t sub_261FC2CEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = VirtualInterface.__allocating_init(queue:address:netmask:mtu:maxPendingPackets:physicalInterfaceName:)(a1, a2, a3, a4 & 0x1FFFF, a5 | ((HIDWORD(a5) & 1) << 32), a6, a7);
  if (!v8)
  {
    *a8 = result;
  }

  return result;
}

uint64_t sub_261FC2D28(uint64_t (*a1)(uint64_t *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = WORD2(a4);
  v7 = a4;
  result = a1(&v6, &v6 + BYTE6(a4));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_261FC2E24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61 == 3)
  {
    return (a2 & 0x1FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_261FC2E3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61 == 3)
  {
  }
}

unint64_t sub_261FC2E54()
{
  result = qword_28108B360;
  if (!qword_28108B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B360);
  }

  return result;
}

uint64_t sub_261FC2EA8(int a1)
{
  v3 = sub_26203942C();
  OUTLINED_FUNCTION_40(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_261FC2678(a1, v5);
}

uint64_t sub_261FC2F14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_28_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_26_4()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t LockedValueType.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  LockedValueType.init(value:)(a1);
  return v5;
}

uint64_t LockedValueType<A>.testAndSet()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v2 = *(v0 + 24);
  *(v0 + 24) = 1;
  os_unfair_lock_unlock(v1);
  return v2;
}

void LockedValueType.read()(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + 16));
  OUTLINED_FUNCTION_2_8();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v5);
  sub_261F7E934(v1);
}

char *LockedValueType.init(value:)(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_slowAlloc();
  *(v1 + 2) = v4;
  *v4 = 0;
  OUTLINED_FUNCTION_2_8();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v5 + 96)], a1);
  return v1;
}

char *LockedValueType.deinit()
{
  v1 = *v0;
  MEMORY[0x266724180](*(v0 + 2), -1, -1);
  OUTLINED_FUNCTION_2_8();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)]);
  return v0;
}

uint64_t LockedValueType.__deallocating_deinit()
{
  LockedValueType.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_261FC3288(void *a1)
{
  v3 = _s5StateVMa();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_8();
  v6 = a1[2];
  os_unfair_lock_lock(v6);
  v7 = *(*a1 + 96);
  OUTLINED_FUNCTION_4_5();
  sub_261FA0B50(a1 + v7, v1);
  *(v1 + *(v4 + 32)) = 1;
  v8 = *(v4 + 36);
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      v13(v14);

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  *(v1 + v8) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_5();
  sub_261FC3EF0(v1, a1 + v7);
  swift_endAccess();
  os_unfair_lock_unlock(v6);
}

uint64_t sub_261FC33C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = _s5StateVMa();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_8();
  v19 = a1[2];
  os_unfair_lock_lock(v19);
  v10 = *(*a1 + 96);
  OUTLINED_FUNCTION_4_5();
  sub_261FA0B50(a1 + v10, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v8 + 36);
  v13 = *(v3 + v12);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_11();
    sub_261FB9C14();
    v13 = v17;
  }

  v14 = *(v13 + 16);
  if (v14 >= *(v13 + 24) >> 1)
  {
    sub_261FB9C14();
    v13 = v18;
  }

  *(v13 + 16) = v14 + 1;
  v15 = v13 + 16 * v14;
  *(v15 + 32) = sub_261FC3F80;
  *(v15 + 40) = v11;
  *(v3 + v12) = v13;
  OUTLINED_FUNCTION_5_5();
  sub_261FC3EF0(v3, a1 + v10);
  swift_endAccess();
  os_unfair_lock_unlock(v19);
}

uint64_t sub_261FC354C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  os_unfair_lock_lock(v6);
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_261FA0B3C(v7);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_11();
    sub_261FBA1EC();
    v8 = v17;
  }

  v11 = *(v8 + 16);
  if (v11 >= *(v8 + 24) >> 1)
  {
    sub_261FBA1EC();
    v8 = v18;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 16 * v11;
  *(v12 + 32) = sub_261FC3F54;
  *(v12 + 40) = v10;
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_261FC3EDC(v13);

  os_unfair_lock_unlock(v6);
}

void sub_261FC3694(void *a1, void *a2)
{
  v5 = a1[2];
  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = a1[4];
  v7 = a1[5];
  v11 = a1[3];
  *&v12 = v6;
  *(&v12 + 1) = v7;
  sub_261FA0B3C(v11);

  sub_26200109C(&v11, a2);
  if (v2)
  {
    sub_261FC3EDC(v11);
  }

  else
  {
    v8 = a1[3];
    v9 = a1[4];
    v10 = a1[5];
    a1[3] = v11;
    *(a1 + 2) = v12;
    sub_261FC3EDC(v8);
  }

  os_unfair_lock_unlock(v5);
}

void sub_261FC3798(void *a1, void *a2, void *a3)
{
  v7 = a1[2];
  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = a1[4];
  v9 = a1[5];
  v13 = a1[3];
  *&v14 = v8;
  *(&v14 + 1) = v9;
  sub_261FA0B3C(v13);

  sub_262001B38(&v13, a2, a3);
  if (v3)
  {
    sub_261FC3EDC(v13);
  }

  else
  {
    v10 = a1[3];
    v11 = a1[4];
    v12 = a1[5];
    a1[3] = v13;
    *(a1 + 2) = v14;
    sub_261FC3EDC(v10);
  }

  os_unfair_lock_unlock(v7);
}

void sub_261FC38A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  os_unfair_lock_lock(v4);
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v5 + 16);
  if (v8)
  {
    sub_261FA0B3C(*(a1 + 24));

    v9 = (v5 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v15 = a2;

      v11(&v15);

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {
    sub_261FA0B3C(*(a1 + 24));
  }

  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  sub_261FC3EDC(v12);

  os_unfair_lock_unlock(v4);
}

void LockedValueType.write<A>(_:)(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a3;
  v6 = *v3;
  v20 = a2;
  v18 = *(a2 - 8);
  v7 = *(v18 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v8);
  v16 = &v18 - v15;
  os_unfair_lock_lock(v3[2]);
  v17 = *&(*v3)[24]._os_unfair_lock_opaque;
  OUTLINED_FUNCTION_4_5();
  (*(v13 + 16))(v16, v3 + v17, v12);
  a1(v16);
  if (v4)
  {
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    OUTLINED_FUNCTION_5_5();
    (*(v13 + 40))(v3 + v17, v16, v12);
    swift_endAccess();
    (*(v18 + 32))(v19, v10, v20);
  }

  os_unfair_lock_unlock(v3[2]);
}

void LockedValueType.put(newValue:)(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*(v1 + 16));
  OUTLINED_FUNCTION_2_8();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v5, a1);
  swift_endAccess();
  sub_261F7E934(v1);
}

uint64_t LockedValueType<A>.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  LockedValueType.read()(&v17[-v9]);
  v11 = sub_26203A45C();
  v13 = v12;
  v14 = *(a1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, v13, AssociatedTypeWitness);
  v11(v17, 0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_261FC3DF4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_261FC3EDC(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t sub_261FC3EF0(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FC3F54(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return swift_beginAccess();
}

uint64_t sub_261FC3FC4()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEF9C18 = result;
  return result;
}

uint64_t RemoteDevice.createTransport(withTargetQueue:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2620396BC();
  if (v4)
  {
    v5 = v4;
    sub_2620398FC();
    sub_2620398AC();
    v6 = swift_dynamicCastClassUnconditional();
    if (xpc_remote_connection_get_remote_service_version() < 2)
    {
      sub_26203A48C();
      if (qword_27FEF8618 != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      sub_26203969C();
      sub_261F9BCE0();
      OUTLINED_FUNCTION_1_12();
      sub_26203AD3C();
      sub_261F9D610();
      OUTLINED_FUNCTION_6();
      sub_26203AD4C();
      swift_willThrow();
    }

    else
    {
      v7 = type metadata accessor for RemoteXPCControlChannelTransport();
      v8 = swift_allocObject();

      v9 = sub_261FC44F0(v6, v2, v8);
      v10 = sub_26203A4AC();
      if (qword_27FEF8618 != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      v11 = qword_27FEF9C18;
      if (os_log_type_enabled(qword_27FEF9C18, v10))
      {
        v27 = v7;
        v12 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v26[0] = v23;
        *v12 = 136446466;
        swift_beginAccess();
        v13 = v9;
        v15 = *(v9 + 16);
        v14 = *(v9 + 24);

        v22 = v10;
        v16 = sub_261F67FE4(v15, v14, v26);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2082;
        v17 = _s7Mercury12RemoteDeviceC0b7PairingC0E18endpointIdentifierSSvg_0();
        v19 = sub_261F67FE4(v17, v18, v26);
        v9 = v13;

        *(v12 + 14) = v19;
        _os_log_impl(&dword_261F5B000, v11, v22, "Created control channel transport %{public}s from RSD device %{public}s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v23, -1, -1);
        v20 = v12;
        v7 = v27;
        MEMORY[0x266724180](v20, -1, -1);
      }

      a1[3] = v7;
      a1[4] = &protocol witness table for RemoteXPCControlChannelTransport;

      *a1 = v9;
    }
  }

  else
  {
    sub_26203A48C();
    if (qword_27FEF8618 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    sub_26203969C();
    sub_261F9BCE0();
    OUTLINED_FUNCTION_1_12();
    sub_26203AD3C();
    v26[0] = v24;
    v26[1] = v25;
    sub_261F9D610();
    OUTLINED_FUNCTION_6();
    sub_26203AD4C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_261FC44F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 56) = 33619968;
  v4 = MEMORY[0x277D28158];
  *(a3 + 32) = a1;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  v5 = qword_28108CE50;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v6 = sub_26203ABAC();
  MEMORY[0x266722710](v6);

  *(a3 + 16) = 0x707865746F6D6572;
  *(a3 + 24) = 0xEA00000000002D63;
  return a3;
}

uint64_t sub_261FC4634()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEF9C20 = result;
  return result;
}

uint64_t WiFiKeepAlive.__allocating_init(reason:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  WiFiKeepAlive.init(reason:)(a1, a2);
  return v4;
}

void *WiFiKeepAlive.init(reason:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v30[2] = *MEMORY[0x277D85DE8];
  v3[2] = 0;
  v3[3] = 0;
  v6 = (v3 + 2);
  v3[4] = a1;
  v3[5] = a2;

  if (_RPIsDarwinOS())
  {

    sub_261F9BCE0();
    sub_26203ACFC();
    sub_261F9D610();
    v7 = swift_allocError();
    sub_26203AD4C();
    swift_willThrow();
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D02B10]) init];
    [v8 activate];
    v9 = *v6;
    *v6 = v8;
    v10 = v8;

    v11 = sub_26203A4AC();
    if (qword_27FEF8620 != -1)
    {
      OUTLINED_FUNCTION_0_14();
    }

    v12 = qword_27FEF9C20;
    if (os_log_type_enabled(qword_27FEF9C20, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_261F67FE4(a1, a2, v30);
      _os_log_impl(&dword_261F5B000, v12, v11, "Starting background WiFi activity: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    sub_261F9B6D0(0, &qword_27FEF9C28, 0x277D02AD0);
    v15 = sub_261FC4AE8(1, a1, a2);
    v30[0] = 0;
    if ([v10 beginActivity:v15 error:v30])
    {
      v16 = v30[0];

      v17 = v3[3];
      v3[3] = v15;
      goto LABEL_18;
    }

    v18 = v30[0];
    v7 = sub_2620393FC();

    swift_willThrow();
  }

  v19 = sub_26203A48C();
  if (qword_27FEF8620 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  v20 = qword_27FEF9C20;
  if (os_log_type_enabled(qword_27FEF9C20, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    *v21 = 136315138;
    v23 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
    v24 = sub_26203A20C();
    v26 = sub_261F67FE4(v24, v25, v30);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_261F5B000, v20, v19, "Unable to start background WiFi activity: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  if (*v6)
  {
    v27 = *v6;
    [v27 invalidate];
  }

  else
  {
  }

  v17 = *v6;
  *v6 = 0;
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_261FC4AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_26203A18C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() activityWithType:a1 reason:v4];

  return v5;
}

void sub_261FC4B6C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = sub_26203A4AC();
    if (qword_27FEF8620 != -1)
    {
      OUTLINED_FUNCTION_0_14();
    }

    v4 = qword_27FEF9C20;
    if (os_log_type_enabled(qword_27FEF9C20, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;
      v7 = *(v0 + 32);
      v8 = *(v0 + 40);

      v9 = sub_261F67FE4(v7, v8, &v13);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_261F5B000, v4, v3, "Stopping background WiFi activity: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    [*(v0 + 16) endActivity_];
    v10 = *(v0 + 24);
    *(v0 + 24) = 0;

    v11 = *(v0 + 16);
    [v11 invalidate];

    v12 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t WiFiKeepAlive.deinit()
{
  sub_261FC4B6C();

  v1 = *(v0 + 40);

  return v0;
}

uint64_t WiFiKeepAlive.__deallocating_deinit()
{
  WiFiKeepAlive.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

Swift::Void __swiftcall CUPairingSession.configureFailing()()
{
  v8 = sub_261FC5BC8;
  v9 = 0;
  v4 = MEMORY[0x277D85DD0];
  v5 = 1107296256;
  v6 = sub_261FC55B4;
  v7 = &block_descriptor_4;
  v1 = _Block_copy(&v4);
  [v0 setFindPeerHandler_];
  _Block_release(v1);
  v8 = OUTLINED_FUNCTION_30_1;
  v9 = 0;
  v4 = MEMORY[0x277D85DD0];
  v5 = 1107296256;
  v6 = sub_261FC5744;
  v7 = &block_descriptor_3;
  v2 = _Block_copy(&v4);
  [v0 setSavePeerHandler_];
  _Block_release(v2);
  v8 = sub_261FC5BC8;
  v9 = 0;
  v4 = MEMORY[0x277D85DD0];
  v5 = 1107296256;
  v6 = sub_261FC5B5C;
  v7 = &block_descriptor_6;
  v3 = _Block_copy(&v4);
  [v0 setCopyIdentityHandler_];
  _Block_release(v3);
}

uint64_t CUPairingSession.configure(customDataStorageProvider:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_261F79740(a1, v23);
  v7 = swift_allocObject();
  sub_261FBD548(v23, v7 + 16);
  v21 = sub_261FC5BD0;
  v22 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261FC55B4;
  v20 = &block_descriptor_9;
  v8 = _Block_copy(&aBlock);

  [v3 setFindPeerHandler_];
  _Block_release(v8);
  sub_261F79740(a1, v23);
  v9 = swift_allocObject();
  sub_261FBD548(v23, v9 + 16);
  v21 = sub_261FC5BD8;
  v22 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261FC5744;
  v20 = &block_descriptor_15;
  v10 = _Block_copy(&aBlock);

  [v3 setSavePeerHandler_];
  _Block_release(v10);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v11);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a2;
  v13[4] = a3;
  v14 = *(v12 + 8);
  v15 = v3;

  v14(sub_261FC5BE0, v13, v11, v12);
}

uint64_t sub_261FC51A0()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEF9C30 = result;
  return result;
}

void PairingDataStorageProvider.updateLastSeenWireProtocolVersionIfNecessary(for:to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = CUPairedPeer.lastSeenWireProtocolVersion.getter();
  if (!v8 || (v9 = v8, type metadata accessor for ControlChannelConnectionWireProtocolVersion(), v10 = a2, v11 = sub_26203A69C(), v9, v10, (v11 & 1) == 0))
  {
    v12 = sub_26203A4AC();
    if (qword_27FEF8628 != -1)
    {
      swift_once();
    }

    v13 = qword_27FEF9C30;
    if (os_log_type_enabled(qword_27FEF9C30, v12))
    {
      log = v13;
      v29 = v12;
      v30 = a3;
      v31 = a4;
      v14 = a2;
      v15 = a1;
      v28 = v14;
      v16 = v15;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136446722;
      CUPairedPeer.udid.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
      v19 = sub_26203A20C();
      v21 = sub_261F67FE4(v19, v20, &v32);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      v22 = CUPairedPeer.lastSeenWireProtocolVersion.getter();
      if (v22)
      {
        v23 = v22;
        v24 = *&v22[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue];
      }

      else
      {
        v24 = 0;
        v23 = v16;
      }

      *(v17 + 14) = v24;
      *(v17 + 22) = 2048;
      v25 = *&v28[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue];

      *(v17 + 24) = v25;
      _os_log_impl(&dword_261F5B000, log, v29, "Updating last seen wire protocol version for peer with UDID %{public}s: %ld -> %ld", v17, 0x20u);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x266724180](v18, -1, -1);
      MEMORY[0x266724180](v17, -1, -1);
      a3 = v30;
      a4 = v31;
    }

    v26 = a2;
    CUPairedPeer.lastSeenWireProtocolVersion.setter(a2);
    (*(a4 + 24))(a1, a3, a4);
  }
}

uint64_t sub_261FC54A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = a4[4];
    __swift_project_boxed_opaque_existential_0Tm(a4, a4[3]);
    v6 = *(v5 + 16);
    v7 = a1;
    v8 = v6();

    return v8;
  }

  else
  {
    result = sub_26203A91C();
    __break(1u);
  }

  return result;
}

id sub_261FC55B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  v10 = v8(a2, a3, a4);

  return v10;
}

uint64_t sub_261FC563C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = a4[4];
    __swift_project_boxed_opaque_existential_0Tm(a4, a4[3]);
    v6 = *(v5 + 24);
    v7 = a1;
    v6();

    return 1;
  }

  else
  {
    result = sub_26203A91C();
    __break(1u);
  }

  return result;
}

uint64_t sub_261FC5744(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  LOBYTE(a4) = v8(a2, a3, a4);

  return a4 & 1;
}

uint64_t sub_261FC57BC(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v8 = sub_262039FAC();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_262039FEC();
  v25 = *(v12 - 8);
  v26 = v12;
  v13 = *(v25 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2 & 1;
  v33 = sub_261FC6080;
  v34 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_261FC5B5C;
  v32 = &block_descriptor_24;
  v17 = _Block_copy(&aBlock);
  sub_261F98F5C(a1);

  [a3 setCopyIdentityHandler_];
  _Block_release(v17);
  v18 = [a3 dispatchQueue];
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v23;
  *(v19 + 24) = v20;
  v33 = sub_261FBD060;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_261F78F64;
  v32 = &block_descriptor_30;
  v21 = _Block_copy(&aBlock);

  sub_262039FCC();
  v28 = MEMORY[0x277D84F90];
  sub_261F9B65C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v15, v11, v21);
  _Block_release(v21);

  (*(v27 + 8))(v11, v8);
  (*(v25 + 8))(v15, v26);
}

void *sub_261FC5B08(uint64_t a1, void *a2, void *a3, char a4)
{
  v4 = a3;
  if (a4)
  {
    v4 = 0;
    if (a2)
    {
      *a2 = sub_2620393EC();
    }
  }

  else
  {
    v5 = a3;
  }

  return v4;
}

id sub_261FC5B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

void *CUPairingIdentity.authTag(for:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (MEMORY[0x277D441B0])
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D441B0]) init];
    v6 = sub_261FC5F18(v3);
    if (v7 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      v10 = v6;
      v11 = v7;
      v8 = sub_26203952C();
      sub_261F6ADEC(v10, v11);
    }

    [v5 setDeviceIRKData_];

    v12 = sub_26203952C();
    v17[0] = 0;
    v13 = [v5 authTagForData:v12 type:a3 error:v17];

    v14 = v17[0];
    if (v13)
    {
      v9 = sub_26203954C();
    }

    else
    {
      v9 = v14;
      sub_2620393FC();

      swift_willThrow();
    }
  }

  else
  {
    v9 = sub_261F9BCE0();
    sub_26203ACFC();
    sub_261F9D610();
    swift_allocError();
    sub_26203AD4C();
    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_261FC5DEC(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_261FC5E34(_WORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_261FC5E7C(_DWORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_261FC5EC4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_261FC5EE8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_261FC5F18(void *a1)
{
  v1 = [a1 altIRK];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26203954C();

  return v3;
}

uint64_t static AuxiliaryMetadataItem.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v5 >> 61 != 1)
      {
        goto LABEL_25;
      }

      v6 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      return v6 & 1;
    case 2uLL:
      if (v5 >> 61 != 2 || *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    case 3uLL:
      if (v5 >> 61 != 3)
      {
        goto LABEL_25;
      }

      v12 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      v13 = v5 & 0x1FFFFFFFFFFFFFFFLL;
      if (*(v12 + 16) == *(v13 + 16) && *(v12 + 24) == *(v13 + 24))
      {
LABEL_27:
        v6 = 1;
        return v6 & 1;
      }

      else
      {

        return sub_26203AC0C();
      }

    case 4uLL:
      if (v5 >> 61 != 4)
      {
        goto LABEL_25;
      }

      v8 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      sub_261F6B73C(v9, v10);
      v11 = MEMORY[0x2667219E0](v8, v7, v9, v10);
      sub_261F6BFFC(v9, v10);

      return v11 & 1;
    case 5uLL:
      if (v5 >> 61 != 5)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_23_3(v5);

      v16 = sub_261FC64B4(v2, v3);
      goto LABEL_23;
    case 6uLL:
      if (v5 >> 61 != 6)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_23_3(v5);

      v16 = sub_261FC6574(v2, v3);
LABEL_23:
      v11 = v16;

      return v11 & 1;
    default:
      if (v5 >> 61)
      {
LABEL_25:
        v6 = 0;
      }

      else
      {
        v6 = *(v4 + 16) ^ *(v5 + 16) ^ 1;
      }

      return v6 & 1;
  }
}

void sub_261FC62C4()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v4 = sub_262039B3C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_54();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = *(v3 + 16);
  if (v16 == *(v1 + 16) && v16 && v3 != v1)
  {
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = v3 + v17;
    v19 = v1 + v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v22 = (v20 - 8);
    v28 = *(v20 + 56);
    v29 = v21;
    while (1)
    {
      v23 = v29;
      v29(v15, v18, v4);
      if (!v16)
      {
        break;
      }

      v24 = v20;
      v23(v12, v19, v4);
      sub_261FCB8F4(&qword_27FEF9D78, MEMORY[0x277CD8CF0]);
      v25 = sub_26203A17C();
      v26 = *v22;
      (*v22)(v12, v4);
      v26(v15, v4);
      if (v25)
      {
        v19 += v28;
        v18 += v28;
        v27 = v16-- == 1;
        v20 = v24;
        if (!v27)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_31_0();
  }
}

uint64_t sub_261FC64B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static AuxiliaryMetadataItem.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_261FC6574(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    if (!v14)
    {
      return 1;
    }

    v22 = v16;
    v17 = sub_261FA3868(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v21 = *(*(a2 + 56) + 8 * v17);

    v20 = static AuxiliaryMetadataItem.== infix(_:_:)(&v21, &v22);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261FC6700(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61656C6F6F62 && a2 == 0xE700000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7630441 && a2 == 0xE300000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74616F6C66 && a2 == 0xE500000000000000;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1635017060 && a2 == 0xE400000000000000;
          if (v9 || (sub_26203AC0C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7961727261 && a2 == 0xE500000000000000;
            if (v10 || (sub_26203AC0C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
            {

              return 6;
            }

            else
            {
              v12 = sub_26203AC0C();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_261FC6934(char a1)
{
  result = 0x6E61656C6F6F62;
  switch(a1)
  {
    case 1:
      result = 7630441;
      break;
    case 2:
      result = 0x74616F6C66;
      break;
    case 3:
      result = 0x676E69727473;
      break;
    case 4:
      result = 1635017060;
      break;
    case 5:
      result = 0x7961727261;
      break;
    case 6:
      result = 0x616E6F6974636964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FC69E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261FC6A5C(uint64_t a1)
{
  v2 = sub_261FC7790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6A98(uint64_t a1)
{
  v2 = sub_261FC7790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6AD4(uint64_t a1)
{
  v2 = sub_261FC7988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6B10(uint64_t a1)
{
  v2 = sub_261FC7988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FC6700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FC6B7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261FC692C();
  *a1 = result;
  return result;
}

uint64_t sub_261FC6BA4(uint64_t a1)
{
  v2 = sub_261FC7694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6BE0(uint64_t a1)
{
  v2 = sub_261FC7694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6C1C(uint64_t a1)
{
  v2 = sub_261FC77E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6C58(uint64_t a1)
{
  v2 = sub_261FC77E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6C94(uint64_t a1)
{
  v2 = sub_261FC76E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6CD0(uint64_t a1)
{
  v2 = sub_261FC76E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6D0C(uint64_t a1)
{
  v2 = sub_261FC78E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6D48(uint64_t a1)
{
  v2 = sub_261FC78E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6D84(uint64_t a1)
{
  v2 = sub_261FC7934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6DC0(uint64_t a1)
{
  v2 = sub_261FC7934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FC6DFC(uint64_t a1)
{
  v2 = sub_261FC788C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC6E38(uint64_t a1)
{
  v2 = sub_261FC788C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuxiliaryMetadataItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C38, &qword_2620406A0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v111 = v7;
  v112 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  v110 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C40, &qword_2620406A8);
  v13 = OUTLINED_FUNCTION_0(v12);
  v108 = v14;
  v109 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_44();
  v107 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C48, &qword_2620406B0);
  v20 = OUTLINED_FUNCTION_0(v19);
  v105 = v21;
  v106 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_44();
  v104 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C50, &qword_2620406B8);
  v27 = OUTLINED_FUNCTION_0(v26);
  v102 = v28;
  v103 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_44();
  v101 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C58, &qword_2620406C0);
  v34 = OUTLINED_FUNCTION_0(v33);
  v99 = v35;
  v100 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v38);
  v40 = &v96 - v39;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C60, &qword_2620406C8);
  OUTLINED_FUNCTION_0(v98);
  v97 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v44);
  v46 = &v96 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C68, &qword_2620406D0);
  OUTLINED_FUNCTION_0(v47);
  v96 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v51);
  v53 = &v96 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C70, &qword_2620406D8);
  v114 = OUTLINED_FUNCTION_0(v54);
  v115 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_16_0();
  v59 = *v3;
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FC7694();
  v113 = v2;
  sub_26203AE5C();
  switch(v59 >> 61)
  {
    case 1uLL:
      v83 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v116) = 1;
      sub_261FC7934();
      v62 = v114;
      OUTLINED_FUNCTION_15_4();
      sub_26203AA9C();
      v84 = v98;
      sub_26203AB5C();
      (*(v97 + 8))(v46, v84);
      goto LABEL_7;
    case 2uLL:
      v75 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v116) = 2;
      sub_261FC78E0();
      v62 = v114;
      OUTLINED_FUNCTION_15_4();
      sub_26203AA9C();
      v76 = v100;
      sub_26203AB1C();
      (*(v99 + 8))(v40, v76);
LABEL_7:
      v65 = OUTLINED_FUNCTION_13_3();
      goto LABEL_8;
    case 3uLL:
      v77 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v78 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v116) = 3;
      sub_261FC788C();

      OUTLINED_FUNCTION_9_3();
      v79 = v103;
      sub_26203AAFC();

      v80 = OUTLINED_FUNCTION_14_6();
      v81(v80, v79);
      v65 = OUTLINED_FUNCTION_21_3();
      v82 = v53;
      goto LABEL_9;
    case 4uLL:
      v67 = v59 & 0x1FFFFFFFFFFFFFFFLL;
      v68 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v69 = *(v67 + 24);
      LOBYTE(v116) = 4;
      sub_261F6B73C(v68, v69);
      sub_261FC77E4();
      v70 = v104;
      v72 = v113;
      v71 = v114;
      sub_26203AA9C();
      v116 = v68;
      v117 = v69;
      sub_261FC7838();
      v73 = v106;
      sub_26203AB3C();
      (*(v105 + 8))(v70, v73);
      (*(v115 + 8))(v72, v71);
      return sub_261F6BFFC(v68, v69);
    case 5uLL:
      v85 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v116) = 5;
      sub_261FC7790();

      OUTLINED_FUNCTION_9_3();
      v116 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C90, &qword_2620406E8);
      OUTLINED_FUNCTION_6_7();
      sub_261FCA7F8(v86, v87);
      v88 = v109;
      OUTLINED_FUNCTION_29_5();
      goto LABEL_12;
    case 6uLL:
      v89 = *((v59 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v116) = 6;
      sub_261FC76E8();

      OUTLINED_FUNCTION_9_3();
      v116 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
      OUTLINED_FUNCTION_6_7();
      sub_261FCA720(v90, v91);
      v88 = v112;
      OUTLINED_FUNCTION_29_5();
LABEL_12:
      v92 = OUTLINED_FUNCTION_14_6();
      v93(v92, v88);
      v94 = OUTLINED_FUNCTION_21_3();
      v95(v94, v53);

      break;
    default:
      v61 = *(v59 + 16);
      LOBYTE(v116) = 0;
      sub_261FC7988();
      v62 = v114;
      sub_26203AA9C();
      sub_26203AB0C();
      v63 = OUTLINED_FUNCTION_13_3();
      v64(v63, v47);
      v65 = OUTLINED_FUNCTION_21_3();
LABEL_8:
      v82 = v62;
LABEL_9:
      result = v66(v65, v82);
      break;
  }

  return result;
}

unint64_t sub_261FC7694()
{
  result = qword_28108D080;
  if (!qword_28108D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D080);
  }

  return result;
}

unint64_t sub_261FC76E8()
{
  result = qword_27FEF9C78;
  if (!qword_27FEF9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9C78);
  }

  return result;
}

unint64_t sub_261FC773C()
{
  result = qword_28108C4D8;
  if (!qword_28108C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C4D8);
  }

  return result;
}

unint64_t sub_261FC7790()
{
  result = qword_27FEF9C88;
  if (!qword_27FEF9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9C88);
  }

  return result;
}

unint64_t sub_261FC77E4()
{
  result = qword_27FEF9CA0;
  if (!qword_27FEF9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9CA0);
  }

  return result;
}

unint64_t sub_261FC7838()
{
  result = qword_28108CF58;
  if (!qword_28108CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CF58);
  }

  return result;
}

unint64_t sub_261FC788C()
{
  result = qword_27FEF9CA8;
  if (!qword_27FEF9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9CA8);
  }

  return result;
}

unint64_t sub_261FC78E0()
{
  result = qword_27FEF9CB0;
  if (!qword_27FEF9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9CB0);
  }

  return result;
}

unint64_t sub_261FC7934()
{
  result = qword_27FEF9CB8;
  if (!qword_27FEF9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9CB8);
  }

  return result;
}

unint64_t sub_261FC7988()
{
  result = qword_28108D018;
  if (!qword_28108D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D018);
  }

  return result;
}

uint64_t AuxiliaryMetadataItem.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v156 = a2;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CC0, &qword_2620406F0);
  OUTLINED_FUNCTION_0(v151);
  v153 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v159 = v8;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CC8, &qword_2620406F8);
  OUTLINED_FUNCTION_0(v150);
  v152 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_44();
  v158 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CD0, &qword_262040700);
  v148 = OUTLINED_FUNCTION_0(v14);
  v149 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_44();
  v155 = v19;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CD8, &qword_262040708);
  OUTLINED_FUNCTION_0(v145);
  v147 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_44();
  v154 = v24;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CE0, &qword_262040710);
  OUTLINED_FUNCTION_0(v146);
  v143 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_44();
  v157 = v29;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CE8, &qword_262040718);
  OUTLINED_FUNCTION_0(v144);
  v142 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  v35 = v135 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CF0, &qword_262040720);
  OUTLINED_FUNCTION_0(v36);
  v141 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v40);
  v42 = v135 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9CF8, &unk_262040728);
  OUTLINED_FUNCTION_0(v43);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_16_0();
  v49 = a1[3];
  v50 = a1[4];
  v160 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v49);
  sub_261FC7694();
  v51 = v161;
  sub_26203AE3C();
  if (v51)
  {
    goto LABEL_10;
  }

  v138 = v42;
  v137 = v36;
  v139 = v35;
  v161 = v45;
  v52 = sub_26203AA7C();
  result = sub_261F99084(v52, 0);
  if (v55 == v56 >> 1)
  {
LABEL_9:
    v67 = v161;
    v68 = sub_26203A81C();
    swift_allocError();
    v70 = v69;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0) + 48);
    *v70 = &type metadata for AuxiliaryMetadataItem;
    sub_26203A98C();
    sub_26203A80C();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x277D84160], v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v2, v43);
LABEL_10:
    v72 = v160;
    return __swift_destroy_boxed_opaque_existential_0Tm(v72);
  }

  v140 = v43;
  v136 = 0;
  if (v55 < (v56 >> 1))
  {
    v57 = *(v54 + v55);
    v58 = sub_261F99070(v55 + 1);
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    if (v60 == v62 >> 1)
    {
      v135[1] = v58;
      v63 = v136;
      v64 = v156;
      switch(v57)
      {
        case 1:
          v163 = 1;
          sub_261FC7934();
          OUTLINED_FUNCTION_4_6();
          OUTLINED_FUNCTION_63();
          v79 = swift_allocObject();
          OUTLINED_FUNCTION_20_4();
          v80 = sub_26203AA4C();
          v81 = (v142 + 8);
          v82 = (v161 + 8);
          v116 = v80;
          OUTLINED_FUNCTION_19_2();
          v117 = *v81;
          v118 = OUTLINED_FUNCTION_11_0();
          v119(v118);
          v120 = *v82;
          v121 = OUTLINED_FUNCTION_3_9();
          v122(v121);
          *(v79 + 16) = v116;
          v99 = v79 | 0x2000000000000000;
          goto LABEL_19;
        case 2:
          v164 = 2;
          sub_261FC78E0();
          OUTLINED_FUNCTION_4_6();
          OUTLINED_FUNCTION_63();
          v75 = swift_allocObject();
          OUTLINED_FUNCTION_20_4();
          sub_26203AA0C();
          v76 = (v143 + 8);
          v77 = (v161 + 8);
          v101 = v100;
          OUTLINED_FUNCTION_19_2();
          v102 = *v76;
          v103 = OUTLINED_FUNCTION_11_0();
          v104(v103);
          v105 = *v77;
          v106 = OUTLINED_FUNCTION_3_9();
          v107(v106);
          *(v75 + 16) = v101;
          v99 = v75 | 0x4000000000000000;
          goto LABEL_19;
        case 3:
          v165 = 3;
          sub_261FC788C();
          OUTLINED_FUNCTION_4_6();
          OUTLINED_FUNCTION_46();
          v78 = swift_allocObject();
          OUTLINED_FUNCTION_20_4();
          v108 = sub_26203A9EC();
          v110 = v109;
          OUTLINED_FUNCTION_19_2();
          v111 = *(v147 + 8);
          v112 = OUTLINED_FUNCTION_11_0();
          v113(v112);
          v114 = OUTLINED_FUNCTION_2_9();
          v115(v114);
          *(v78 + 16) = v108;
          *(v78 + 24) = v110;
          v99 = v78 | 0x6000000000000000;
          goto LABEL_19;
        case 4:
          v166 = 4;
          sub_261FC77E4();
          OUTLINED_FUNCTION_4_6();
          OUTLINED_FUNCTION_46();
          v73 = swift_allocObject();
          sub_261FCA870();
          v74 = v148;
          OUTLINED_FUNCTION_15_4();
          sub_26203AA2C();
          swift_unknownObjectRelease();
          v95 = OUTLINED_FUNCTION_13_3();
          v96(v95, v74);
          v97 = OUTLINED_FUNCTION_2_9();
          v98(v97);
          v99 = v73 | 0x8000000000000000;
          goto LABEL_19;
        case 5:
          v167 = 5;
          sub_261FC7790();
          OUTLINED_FUNCTION_4_6();
          OUTLINED_FUNCTION_63();
          v83 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C90, &qword_2620406E8);
          OUTLINED_FUNCTION_5_6();
          sub_261FCA7F8(v84, v85);
          v86 = v150;
          sub_26203AA2C();
          swift_unknownObjectRelease();
          v127 = OUTLINED_FUNCTION_14_6();
          v128(v127, v86);
          v129 = OUTLINED_FUNCTION_2_9();
          v130(v129);
          v99 = v83 | 0xA000000000000000;
          goto LABEL_19;
        case 6:
          v168 = 6;
          sub_261FC76E8();
          OUTLINED_FUNCTION_4_6();
          OUTLINED_FUNCTION_63();
          v91 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
          OUTLINED_FUNCTION_5_6();
          sub_261FCA720(v92, v93);
          v94 = v151;
          sub_26203AA2C();
          swift_unknownObjectRelease();
          v131 = OUTLINED_FUNCTION_13_3();
          v132(v131, v94);
          v133 = OUTLINED_FUNCTION_2_9();
          v134(v133);
          v99 = v91 | 0xC000000000000000;
LABEL_19:
          v72 = v160;
          goto LABEL_20;
        default:
          v162 = 0;
          sub_261FC7988();
          v65 = v138;
          v66 = v140;
          sub_26203A97C();
          if (v63)
          {
            (*(v161 + 8))(v2, v66);
            OUTLINED_FUNCTION_19_2();
            goto LABEL_10;
          }

          v99 = swift_allocObject();
          v87 = v137;
          v88 = sub_26203A9FC();
          v89 = (v141 + 8);
          v90 = (v161 + 8);
          v123 = v88;
          OUTLINED_FUNCTION_19_2();
          (*v89)(v65, v87);
          v124 = *v90;
          v125 = OUTLINED_FUNCTION_3_9();
          v126(v125);
          *(v99 + 16) = v123 & 1;
          v72 = v160;
          v64 = v156;
LABEL_20:
          *v64 = v99;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v72);
    }

    v43 = v140;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_261FC86D0()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_28108B638 = result;
  return result;
}

uint64_t AuxiliaryMetadataUpdate.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AuxiliaryMetadataUpdate.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuxiliaryMetadataUpdate.metadata.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_261FC8828(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_261FC88EC(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_261FC8928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FC8828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FC8950(uint64_t a1)
{
  v2 = sub_261FCA8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FC898C(uint64_t a1)
{
  v2 = sub_261FCA8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuxiliaryMetadataUpdate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D08, &qword_262040738);
  OUTLINED_FUNCTION_0(v4);
  v19 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = *v1;
  v12 = v1[1];
  v18 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCA8C4();
  sub_26203AE5C();
  v22 = 0;
  sub_26203AAFC();
  if (!v2)
  {
    v20 = v18;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
    OUTLINED_FUNCTION_6_7();
    sub_261FCA720(v14, v15);
    sub_26203AB3C();
  }

  return (*(v19 + 8))(v10, v4);
}

uint64_t AuxiliaryMetadataUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D10, &qword_262040740);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261FCA8C4();
  sub_26203AE3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = sub_26203A9EC();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
  OUTLINED_FUNCTION_5_6();
  sub_261FCA720(v13, v14);
  sub_26203AA2C();
  v15 = OUTLINED_FUNCTION_1_2();
  v16(v15);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v18;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*sub_261FC8E0C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_261FC8E60;
}

void sub_261FC8E60(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(*(a1 + 24) + 24);
    OS_dispatch_queue.assertOnQueueHierarchy()();
  }
}

void *sub_261FC8E98()
{
  sub_26203990C();
  sub_2620398CC();
  v0 = swift_dynamicCastClassUnconditional();
  type metadata accessor for AuxiliaryMetadataProvider();
  v1 = swift_allocObject();
  result = sub_261FC8FDC(v0, v1);
  qword_28108BA60 = result;
  return result;
}

uint64_t sub_261FC8F20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t static AuxiliaryMetadataProvider.shared.getter()
{
  if (qword_28108BA58 != -1)
  {
    swift_once();
  }
}

void *sub_261FC8FDC(uint64_t a1, void *a2)
{
  v24 = a1;
  v23 = sub_26203A56C();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26203A53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_262039FEC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_261F9B6D0(0, &qword_28108CFB0, 0x277D85C78);
  sub_262039FCC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261FCB8F4(&qword_28108CFB8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA0A0, &unk_262040360);
  sub_261FCB93C();
  sub_26203A75C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v23);
  a2[3] = sub_26203A58C();
  v11 = sub_26203983C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  a2[4] = sub_26203980C();
  v14 = sub_26203981C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  a2[5] = sub_26203980C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D80, &unk_262044800);
  a2[6] = sub_26203A0FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9C80, &qword_2620406E0);
  a2[7] = sub_26203A0FC();
  a2[2] = v24;

  sub_26203975C();
  v17 = a2[3];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = sub_26203A21C();
  aBlock[4] = sub_261FCB9A0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261FC8F20;
  aBlock[3] = &block_descriptor_98;
  v20 = _Block_copy(aBlock);
  v21 = v17;
  swift_retain_n();
  xpc_set_event_stream_handler((v19 + 32), v21, v20);
  _Block_release(v20);

  return a2;
}

uint64_t sub_261FC9400()
{
  v0 = sub_2620397BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();
    sub_2620397CC();
    sub_261FC9BDC();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_261FC9514()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_26203A07C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + 24);
  *v14 = v15;
  (*(v10 + 104))(v14, *MEMORY[0x277D851F0], v7);
  v16 = v15;
  v17 = sub_26203A0AC();
  (*(v10 + 8))(v14, v7);
  if (v17)
  {
    v18 = swift_allocObject();
    v18[2] = v0;
    v18[3] = v6;
    v18[4] = v4;
    v18[5] = v2;
    OUTLINED_FUNCTION_46();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_261FCA918;
    *(v19 + 24) = v18;
    v22[4] = sub_261FBD060;
    v22[5] = v19;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_261FC974C;
    v22[3] = &block_descriptor_5;
    v20 = _Block_copy(v22);

    dispatch_sync(v16, v20);
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      OUTLINED_FUNCTION_31_0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_261FC9774()
{
  OUTLINED_FUNCTION_96();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D70, &unk_262041410) - 8) + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_0();
  v11 = sub_2620397BC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v47 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_54();
  v45 = v16 - v17;
  v19 = MEMORY[0x28223BE20](v18);
  v44 = &v41 - v20;
  MEMORY[0x28223BE20](v19);
  v49 = &v41 - v21;
  v50 = v1;
  v41 = *(v1 + 3);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  LOBYTE(v1) = sub_26203A4AC();
  if (qword_28108B630 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_15();
  }

  if (os_log_type_enabled(qword_28108B638, v1))
  {
    OUTLINED_FUNCTION_27();
    v22 = OUTLINED_FUNCTION_22_4();
    v53[0] = v22;
    *v0 = 136446210;
    *(v0 + 4) = sub_261F67FE4(v8, v6, v53);
    OUTLINED_FUNCTION_28_3(&dword_261F5B000, v23, v24, "Client registered metadata for domain %{public}s");
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  v42 = v4;
  sub_261FCA138();
  v51 = (v47 + 32);
  v48 = (v47 + 8);
  v46 = v8;
  v43 = v6;
  while (1)
  {
    v25 = sub_261FC8E0C(v53);
    v1 = sub_261FF02CC(v52, v8, v6);
    v0 = *v26;
    if (!*v26)
    {
      break;
    }

    if (*(v0 + 16))
    {
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v27 = v0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_261FFBD24(v0);
        v0 = v36;
        *v27 = v36;
      }

      v30 = *(v0 + 16);
      if (!v30)
      {
        __break(1u);
        goto LABEL_17;
      }

      v31 = v30 - 1;
      v32 = *(v47 + 32);
      v4 = v45;
      v32(v45, v0 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * (v30 - 1), v11);
      *(v0 + 16) = v31;
      *v27 = v0;
      v33 = v44;
      v32(v44, v4, v11);
      v32(v2, v33, v11);
      v6 = v43;
      v8 = v46;
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    __swift_storeEnumTagSinglePayload(v2, v34, 1, v11);
    (v1)(v52, 0);
    v25(v53, 0);
    if (__swift_getEnumTagSinglePayload(v2, 1, v11) == 1)
    {
      goto LABEL_15;
    }

    v35 = v49;
    (*v51)(v49, v2, v11);
    sub_2620397AC();
    (*v48)(v35, v11);
  }

  (v1)(v52, 0);
  v25(v53, 0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
LABEL_15:
  sub_261FCB894(v2, &qword_27FEF9D70, &unk_262041410);
  v37 = v50;
  swift_beginAccess();
  v38 = v42;

  v39 = *(v37 + 7);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v52[0] = *(v37 + 7);
  sub_261FA466C(v38, v8, v6, v40);
  *(v37 + 7) = v52[0];
  swift_endAccess();
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_31_0();
}

void sub_261FC9BDC()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D70, &unk_262041410) - 8) + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = sub_2620397BC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 24);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  sub_26203979C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_261FCB894(v5, &qword_27FEF9D70, &unk_262041410);
    sub_26203A49C();
    if (qword_28108B630 != -1)
    {
      OUTLINED_FUNCTION_0_15();
    }

    sub_26203969C();
  }

  else
  {
    (*(v9 + 32))(v13, v5, v6);
    v15 = sub_2620397DC();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      swift_beginAccess();
      v19 = *(v0 + 56);

      v20 = sub_261FA5E10(v17, v18, v19);

      if (v20)
      {
        v21 = sub_26203A4AC();
        if (qword_28108B630 != -1)
        {
          OUTLINED_FUNCTION_0_15();
        }

        v22 = qword_28108B638;
        if (os_log_type_enabled(qword_28108B638, v21))
        {
          v23 = OUTLINED_FUNCTION_27();
          v24 = swift_slowAlloc();
          v38 = v17;
          v25 = v24;
          v41[0] = v24;
          *v23 = 136446210;
          *(v23 + 4) = sub_261F67FE4(v38, v18, v41);
          _os_log_impl(&dword_261F5B000, v22, v21, "Received event from publisher for currently registered domain %{public}s. Pushing metadata to service", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_1_0();
        }

        sub_261FCA138();

        sub_2620397AC();
      }

      else
      {
        LODWORD(v38) = sub_26203A4AC();
        if (qword_28108B630 != -1)
        {
          OUTLINED_FUNCTION_0_15();
        }

        v26 = qword_28108B638;
        if (os_log_type_enabled(qword_28108B638, v38))
        {
          v27 = OUTLINED_FUNCTION_27();
          v28 = swift_slowAlloc();
          v41[0] = v28;
          *v27 = 136446210;
          *(v27 + 4) = sub_261F67FE4(v17, v18, v41);
          _os_log_impl(&dword_261F5B000, v26, v38, "Received event from publisher for currently unregistered domain %{public}s. Storing event", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_1_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A78, &unk_2620402D0);
        v29 = *(v9 + 72);
        v30 = v17;
        v31 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_26203E9E0;
        (*(v9 + 16))(v32 + v31, v13, v6);
        swift_beginAccess();
        v33 = *(v1 + 48);

        sub_261FA5E10(v30, v18, v33);

        v40 = v32;
        sub_261FFA114();
        v34 = v40;
        swift_beginAccess();
        v35 = *(v1 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *(v1 + 48);
        sub_261FA4560(v34, v30, v18, isUniquelyReferenced_nonNull_native);
        *(v1 + 48) = v39;

        swift_endAccess();
        OS_dispatch_queue.assertOnQueueHierarchy()();
      }
    }

    else
    {
      sub_26203A49C();
      if (qword_28108B630 != -1)
      {
        OUTLINED_FUNCTION_0_15();
      }

      sub_26203969C();
    }

    (*(v9 + 8))(v13, v6);
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_261FCA138()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D60, &unk_262041400) - 8) + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  v10 = sub_262039A2C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v24[1] = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v15);
  v24[0] = v24 - v16;
  v17 = *(v0 + 24);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v18 = *(v1 + 16);
  v25 = v7;
  v26[0] = v7;
  v26[1] = v5;
  v26[2] = v3;
  sub_261FCA974();
  sub_261FCA9C8();
  sub_261F967DC();
  v19 = sub_261F96830();

  sub_26203977C();

  v20 = sub_26203A4AC();
  if (qword_28108B630 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  if (os_log_type_enabled(qword_28108B638, v20))
  {
    OUTLINED_FUNCTION_27();
    v21 = OUTLINED_FUNCTION_22_4();
    v26[0] = v21;
    *v19 = 136446210;
    *(v19 + 4) = sub_261F67FE4(v25, v5, v26);
    OUTLINED_FUNCTION_28_3(&dword_261F5B000, v22, v23, "Successfully pushed auxiliary metadata to service for domain %{public}s");
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  OUTLINED_FUNCTION_31_0();
}