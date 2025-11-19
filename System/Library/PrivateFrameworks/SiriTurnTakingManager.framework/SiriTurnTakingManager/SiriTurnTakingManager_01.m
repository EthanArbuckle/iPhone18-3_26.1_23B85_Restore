void sub_269473558()
{
  OUTLINED_FUNCTION_28_0();
  v84 = v0;
  v85 = v1;
  v83 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  v12 = OUTLINED_FUNCTION_17_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_2();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  v21 = sub_26948434C();
  v22 = OUTLINED_FUNCTION_0_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_2();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v81 - v31;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v33);
  v35 = &v81 - v34;
  v86 = v10;
  v87 = v8;
  v37 = v36;
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v20);
  if (v49)
  {
    sub_2694645DC(v20, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v38 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v38, qword_2813286A0);
    v39 = v87;

    v40 = sub_2694847DC();
    sub_269484AEC();

    if (OUTLINED_FUNCTION_40())
    {
      v41 = OUTLINED_FUNCTION_31();
      v42 = OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_26_0(v42);
      *v41 = 136315138;
      *(v41 + 4) = sub_269463C18(v86, v39, &v88);
      OUTLINED_FUNCTION_18_0();
      _os_log_impl(v43, v44, v45, v46, v41, 0xCu);
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v81 = v24;
    v47 = v35;
    v48 = *(v24 + 32);
    v82 = v47;
    v48();
    sub_2694842FC();
    OUTLINED_FUNCTION_3_2(v17);
    if (v49)
    {
      sub_2694645DC(v17, &qword_280317F98, &qword_269485F18);
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v50 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v50, qword_2813286A0);

      v51 = sub_2694847DC();
      sub_269484AEC();

      if (OUTLINED_FUNCTION_58())
      {
        OUTLINED_FUNCTION_31();
        v52 = OUTLINED_FUNCTION_24_0();
        v88 = v52;
        *v4 = 136315138;
        *(v4 + 4) = sub_269463C18(v6, v4, &v88);
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_11_1();
      }

      (*(v81 + 8))(v82, v37);
    }

    else
    {
      (v48)(v32, v17, v37);
      v58 = [objc_allocWithZone(MEMORY[0x277D5B0B8]) init];
      v59 = v58;
      v60 = v81;
      if (v58)
      {
        [v58 setReason_];
        sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
        v61 = *(v60 + 16);
        v62 = OUTLINED_FUNCTION_50();
        v63(v62);
        v64 = v59;
        v65 = sub_269470FF4(v29);
        [v64 setTcuId_];
      }

      v66 = [objc_allocWithZone(MEMORY[0x277D5B0A8]) init];
      [v66 setFailed_];
      v67 = v82;
      sub_269470B24();
      if (v68)
      {
        v69 = v68;
        [v68 setTtmNeuralCombinerRequestContext_];
        __swift_project_boxed_opaque_existential_1((v84 + 16), *(v84 + 40));
        sub_269470690(v86, v87, v69);

        v70 = *(v60 + 8);
        v70(v32, v37);
        v70(v67, v37);
      }

      else
      {
        if (qword_281327EE0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v71 = sub_2694847EC();
        OUTLINED_FUNCTION_13_1(v71, qword_2813286A0);
        v72 = sub_2694847DC();
        v73 = sub_269484AEC();
        if (OUTLINED_FUNCTION_20_0(v73))
        {
          v74 = OUTLINED_FUNCTION_36();
          OUTLINED_FUNCTION_38(v74);
          OUTLINED_FUNCTION_5_2();
          _os_log_impl(v75, v76, v77, v78, v79, 2u);
          OUTLINED_FUNCTION_11_1();
        }

        v80 = *(v60 + 8);
        v80(v32, v37);
        v80(v82, v37);
      }
    }
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_269473B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_10_1();
  v30 = OUTLINED_FUNCTION_0_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23_0();
  v129 = v33;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  v36 = &v121 - v35;
  v37 = MEMORY[0x277D84F90];
  v146 = MEMORY[0x277D84F90];
  v39 = v24 + 64;
  v38 = *(v24 + 64);
  v40 = *(v24 + 32);
  OUTLINED_FUNCTION_8_2();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  v131 = v46 + 32;
  v128 = v46 + 16;
  v130 = v46 + 8;

  v47 = 0;
  v48 = 0x281327000uLL;
  *&v49 = 136315138;
  v135 = v49;
  v132 = v37;
  v123 = v24 + 64;
  v122 = v45;
  v127 = v24;
  v126 = v29;
  v125 = v36;
  v124 = v20;
  if (!v43)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v134 = v43;
    v51 = (v47 << 10) | (16 * __clz(__rbit64(v43)));
    v52 = (*(v24 + 48) + v51);
    v54 = *v52;
    v53 = v52[1];
    v55 = (*(v24 + 56) + v51);
    v56 = *v55;
    v57 = *(v55 + 1);

    sub_2694842FC();
    if (__swift_getEnumTagSinglePayload(v20, 1, v29) == 1)
    {

      sub_2694645DC(v20, &qword_280317F98, &qword_269485F18);
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v104 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v104, qword_2813286A0);

      v105 = sub_2694847DC();
      sub_269484AEC();

      if (OUTLINED_FUNCTION_58())
      {
        OUTLINED_FUNCTION_31();
        v141[0] = OUTLINED_FUNCTION_24_0();
        *v29 = v135;
        v106 = sub_269463C18(v54, v53, v141);

        *(v29 + 4) = v106;
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v107, v108, v109, v110, v111, 0xCu);
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {
      }

      goto LABEL_53;
    }

    OUTLINED_FUNCTION_56(&a11);
    v58(v36, v20, v29);
    v59 = [objc_allocWithZone(MEMORY[0x277D5B108]) init];
    if (!v59)
    {

      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v112 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v112, qword_2813286A0);
      v113 = sub_2694847DC();
      v114 = sub_269484AEC();
      if (OUTLINED_FUNCTION_49(v114))
      {
        v115 = OUTLINED_FUNCTION_36();
        *v115 = 0;
        OUTLINED_FUNCTION_18_0();
        _os_log_impl(v116, v117, v118, v119, v115, 2u);
        OUTLINED_FUNCTION_6_1();
      }

      OUTLINED_FUNCTION_56(&a10);
      v120(v36, v29);
      goto LABEL_53;
    }

    v60 = v59;
    v137 = v57;
    sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
    OUTLINED_FUNCTION_56(&v147);
    v61 = v129;
    v62(v129, v36, v29);
    v63 = sub_269470FF4(v61);
    [v60 setTcuId_];

    [v60 setRecommendation_];
    v64 = v60;
    MEMORY[0x26D63E600]();
    if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269484A5C();
    }

    v133 = v64;
    sub_269484A6C();
    v132 = v146;
    v145 = v37;
    v65 = v137;
    v136 = *(v137 + 16);
    if (v136)
    {
      v66 = 0;
      v67 = v137 + 32;
      v48 = 0x281327000uLL;
      v68 = &property descriptor for TTManagerRequest.trpCandidateId;
      while (v66 < *(v65 + 16))
      {
        sub_26946EC94(v67, v141);
        v69 = [objc_allocWithZone(MEMORY[0x277D5B0F8]) v68[54]];
        if (v69)
        {
          v70 = v69;
          v71 = v142;
          v72 = v143;
          __swift_project_boxed_opaque_existential_1(v141, v142);
          v73 = (*(v72 + 16))(v71, v72);
          v74 = 2;
          switch(v73)
          {
            case 1:
              v74 = 7;
              break;
            case 2:
              v74 = 6;
              break;
            case 3:
              v74 = 8;
              break;
            case 4:
              v74 = 5;
              break;
            case 5:
              v74 = 9;
              break;
            case 6:
              if (*(v48 + 3808) != -1)
              {
                OUTLINED_FUNCTION_0_0();
                swift_once();
              }

              v84 = sub_2694847EC();
              OUTLINED_FUNCTION_13_1(v84, qword_2813286A0);
              v85 = sub_2694847DC();
              v86 = sub_269484AEC();
              if (OUTLINED_FUNCTION_37(v86))
              {
                v87 = OUTLINED_FUNCTION_36();
                *v87 = 0;
                _os_log_impl(&dword_269461000, v85, v86, "overrideType is unknown", v87, 2u);
                OUTLINED_FUNCTION_6_1();
              }

              v74 = 0;
              break;
            default:
              break;
          }

          v88 = dword_269485E80[v144];
          [v70 setOverrideType_];
          [v70 setRecommendation_];
          v89 = v70;
          MEMORY[0x26D63E600]();
          if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_269484A5C();
          }

          sub_269484A6C();

          v37 = v145;
        }

        else
        {
          if (*(v48 + 3808) != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v75 = sub_2694847EC();
          OUTLINED_FUNCTION_13_1(v75, qword_2813286A0);
          sub_26946EC94(v141, v140);
          v76 = sub_2694847DC();
          v77 = sub_269484AEC();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = OUTLINED_FUNCTION_31();
            v79 = OUTLINED_FUNCTION_30();
            v139 = v79;
            *v78 = v135;
            sub_26946EC94(v140, &v138);
            v80 = sub_26948494C();
            v82 = v81;
            sub_26946F018(v140);
            v83 = sub_269463C18(v80, v82, &v139);

            *(v78 + 4) = v83;
            v48 = 0x281327000;
            _os_log_impl(&dword_269461000, v76, v77, "error initializing TTMSchemaTTMOverrideResult for %s", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v79);
            v68 = &property descriptor for TTManagerRequest.trpCandidateId;
            OUTLINED_FUNCTION_6_1();
            OUTLINED_FUNCTION_6_1();
          }

          else
          {

            sub_26946F018(v140);
          }
        }

        sub_26946F018(v141);
        v65 = v137;
        ++v66;
        v67 += 48;
        if (v136 == v66)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_55;
    }

    v48 = 0x281327000;
LABEL_36:
    v43 = (v134 - 1) & v134;

    v90 = v133;
    sub_2694761D8(v37, v133, &qword_281327DD0, 0x277D5B0F8, &selRef_setOverrideResults_);

    OUTLINED_FUNCTION_56(&a10);
    v36 = v125;
    v29 = v126;
    v91(v125, v126);
    v24 = v127;
    v20 = v124;
    v37 = MEMORY[0x277D84F90];
    v39 = v123;
    v45 = v122;
  }

  while (v43);
LABEL_2:
  while (1)
  {
    v50 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v50 >= v45)
    {

      if (*(v48 + 3808) != -1)
      {
        goto LABEL_56;
      }

      goto LABEL_39;
    }

    v43 = *(v39 + 8 * v50);
    ++v47;
    if (v43)
    {
      v47 = v50;
      goto LABEL_6;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
  OUTLINED_FUNCTION_0_0();
  swift_once();
LABEL_39:
  v92 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v92, qword_2813286A0);

  v93 = v132;

  v94 = sub_2694847DC();
  v95 = sub_269484ADC();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v141[0] = swift_slowAlloc();
    *v96 = 136315394;
    v97 = sub_269463554(0, &qword_281327DC0, 0x277D5B108);
    v98 = MEMORY[0x26D63E620](v93, v97);
    v100 = sub_269463C18(v98, v99, v141);

    *(v96 + 4) = v100;
    *(v96 + 12) = 2080;
    v101 = sub_26948489C();
    v103 = sub_269463C18(v101, v102, v141);

    *(v96 + 14) = v103;
    _os_log_impl(&dword_269461000, v94, v95, "Constructed SELF logging object %s for overridesResult %s", v96, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_6_1();
  }

LABEL_53:
  OUTLINED_FUNCTION_29_0();
}

id sub_26947491C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_35();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v15 = [objc_allocWithZone(MEMORY[0x277D5B100]) init];
  OUTLINED_FUNCTION_50();
  sub_2694842FC();
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_2694645DC(v0, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v16 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v16, qword_2813286A0);
    v17 = sub_2694847DC();
    v18 = sub_269484AEC();
    if (OUTLINED_FUNCTION_20_0(v18))
    {
      v19 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_38(v19);
      OUTLINED_FUNCTION_5_2();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_11_1();
    }
  }

  else
  {
    v25 = OUTLINED_FUNCTION_55(v8);
    v26(v25);
    if (v15)
    {
      sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
      v27 = OUTLINED_FUNCTION_52(v8);
      v28(v27);
      v29 = sub_269470FF4(v13);
      [v15 setTcuId_];
    }

    v30 = *(v8 + 8);
    v31 = OUTLINED_FUNCTION_14_0();
    v32(v31);
  }

  return v15;
}

void sub_269474B64()
{
  OUTLINED_FUNCTION_28_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  OUTLINED_FUNCTION_17_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_10_1();
  v7 = OUTLINED_FUNCTION_0_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_14_0();
  sub_2694842FC();
  OUTLINED_FUNCTION_3_2(v1);
  if (v12)
  {
    sub_2694645DC(v1, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v13 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v13, qword_2813286A0);

    v14 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_31();
      v15 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v15);
      OUTLINED_FUNCTION_27_0(4.8149e-34);
      v16 = OUTLINED_FUNCTION_14_0();
      *(v0 + 4) = sub_269463C18(v16, v17, v18);
      OUTLINED_FUNCTION_7_2(&dword_269461000, v19, v20, "error converting trpID %s to UUID");
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_1(v9);
    v22(v21);
    v23 = [objc_allocWithZone(MEMORY[0x277D5B0E8]) init];
    v24 = sub_26947491C();
    if (v24)
    {
      v25 = v24;
      if (v23)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FA0, &unk_269485F20);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_269485E70;
        *(v26 + 32) = v25;
        sub_2694761D8(v26, v23, &qword_280317FA8, 0x277D5B100, &selRef_setTcuFailures_);
      }

      else
      {
      }
    }

    v27 = [objc_allocWithZone(MEMORY[0x277D5B0D8]) init];
    [v27 setFailed_];
    sub_269470B24();
    if (v28)
    {
      v29 = v28;
      [v28 setTtmOverrideRequestContext_];
      OUTLINED_FUNCTION_48();
      v30 = OUTLINED_FUNCTION_14_0();
      sub_269470690(v30, v31, v29);
    }

    else
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v32 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v32, qword_2813286A0);
      v33 = sub_2694847DC();
      v34 = sub_269484AEC();
      if (OUTLINED_FUNCTION_20_0(v34))
      {
        v35 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_38(v35);
        OUTLINED_FUNCTION_5_2();
        _os_log_impl(v36, v37, v38, v39, v40, 2u);
        OUTLINED_FUNCTION_11_1();
      }

      else
      {
      }
    }

    v41 = *(v9 + 8);
    v42 = OUTLINED_FUNCTION_34();
    v43(v42);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_269474EC0()
{
  OUTLINED_FUNCTION_28_0();
  v116 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  v8 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_6_2();
  v115 = v9 - v10;
  OUTLINED_FUNCTION_13();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v107 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = sub_26948434C();
  v16 = OUTLINED_FUNCTION_0_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_2();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v107 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v107 - v28;
  sub_269476360(v3, v1);
  OUTLINED_FUNCTION_3_2(v1);
  if (v43)
  {
    sub_2694645DC(v1, &qword_280317F98, &qword_269485F18);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v30 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v30, qword_2813286A0);

    v31 = sub_2694847DC();
    sub_269484AEC();
    OUTLINED_FUNCTION_44();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_31();
      v32 = OUTLINED_FUNCTION_24_0();
      v119 = v32;
      *v1 = 136315138;
      v33 = OUTLINED_FUNCTION_39();
      *(v1 + 4) = sub_269463C18(v33, v34, v35);
      OUTLINED_FUNCTION_18_0();
      _os_log_impl(v36, v37, v38, v39, v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_11_1();
    }
  }

  else
  {
    v117 = v27;
    v118 = v18;
    v42 = *(v18 + 32);
    v40 = v18 + 32;
    v41 = v42;
    v42(v29, v1, v15);
    v113 = v7;
    OUTLINED_FUNCTION_39();
    sub_2694842FC();
    OUTLINED_FUNCTION_3_2(v14);
    if (v43)
    {
      sub_2694645DC(v14, &qword_280317F98, &qword_269485F18);
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v44 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v44, qword_2813286A0);

      v45 = sub_2694847DC();
      sub_269484AEC();

      if (OUTLINED_FUNCTION_59())
      {
        OUTLINED_FUNCTION_31();
        v46 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v46);
        OUTLINED_FUNCTION_27_0(4.8149e-34);
        *(v40 + 4) = sub_269463C18(v113, v5, v47);
        OUTLINED_FUNCTION_42();
        _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_12_1();
      }

      (*(v118 + 8))(v29, v15);
    }

    else
    {
      v41(v117, v14, v15);
      v53 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
      v54 = v29;
      if (v53)
      {
        v55 = v53;
        v56 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
        if (v56)
        {
          v57 = v56;
          v58 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
          if (v58)
          {
            v112 = v54;
            v59 = v58;
            sub_269463554(0, &qword_281327DF8, 0x277D5AC78);
            v111 = *(v118 + 16);
            v111(v23, v117, v15);
            v60 = sub_269470FF4(v23);
            [v59 setUuid_];

            [v59 setComponent_];
            v111(v23, v112, v15);
            v61 = sub_269470FF4(v23);
            [v57 setUuid_];

            [v57 setComponent_];
            v111 = v57;
            [v55 setSource_];
            v110 = v59;
            [v55 setTarget_];
            if (qword_281327EE0 != -1)
            {
              OUTLINED_FUNCTION_0_0();
              swift_once();
            }

            v62 = sub_2694847EC();
            OUTLINED_FUNCTION_13_1(v62, qword_2813286A0);
            v63 = v115;
            sub_269476360(v3, v115);
            v64 = v55;

            v65 = sub_2694847DC();
            v66 = sub_269484ADC();

            if (OUTLINED_FUNCTION_59())
            {
              v67 = OUTLINED_FUNCTION_30();
              v109 = swift_slowAlloc();
              v119 = v109;
              *v67 = 136315650;
              v68 = v64;
              v108 = v65;
              v69 = v68;
              v70 = [v68 description];
              v71 = sub_2694848FC();
              v107[3] = v66;
              v72 = v71;
              v74 = v73;

              v75 = sub_269463C18(v72, v74, &v119);

              *(v67 + 4) = v75;
              *(v67 + 12) = 2080;
              OUTLINED_FUNCTION_39();
              v76 = sub_26948497C();
              v78 = sub_269463C18(v76, v77, &v119);

              *(v67 + 14) = v78;
              *(v67 + 22) = 2080;
              v79 = sub_269484B5C();
              v81 = v80;
              sub_2694645DC(v63, &qword_280317F98, &qword_269485F18);
              v82 = sub_269463C18(v79, v81, &v119);

              *(v67 + 24) = v82;
              v83 = v108;
              OUTLINED_FUNCTION_54();
              _os_log_impl(v84, v85, v86, v87, v88, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_11_1();
              OUTLINED_FUNCTION_22_0();
            }

            else
            {

              sub_2694645DC(v63, &qword_280317F98, &qword_269485F18);
            }

            v102 = v118;
            __swift_project_boxed_opaque_existential_1((v116 + 16), *(v116 + 40));
            v103 = OUTLINED_FUNCTION_39();
            sub_269470690(v103, v104, v64);

            v105 = *(v102 + 8);
            v105(v117, v15);
            v106 = OUTLINED_FUNCTION_34();
            (v105)(v106);
            goto LABEL_32;
          }
        }

        else
        {
          v57 = v55;
        }
      }

      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v89 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v89, qword_2813286A0);

      v90 = sub_2694847DC();
      sub_269484AEC();

      if (OUTLINED_FUNCTION_59())
      {
        v91 = OUTLINED_FUNCTION_31();
        v92 = OUTLINED_FUNCTION_30();
        v119 = v92;
        *v91 = 136315138;
        OUTLINED_FUNCTION_39();
        v93 = sub_26948497C();
        v95 = sub_269463C18(v93, v94, &v119);

        *(v91 + 4) = v95;
        OUTLINED_FUNCTION_54();
        _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v92);
        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_22_0();
      }

      v101 = *(v118 + 8);
      v101(v117, v15);
      v101(v54, v15);
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_269475710(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unsigned __int8 *sub_269475770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_269484A0C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_269475CE8(result, v5);
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_269484C3C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_47:
            v16 = 0;
            v19 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v19 = 0;
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v22 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v21 = v17 + v18;
            v22 = v20 >= v21;
            v14 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v19 = 0;
        v16 = 0;
LABEL_129:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_129;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if ((v68 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v69 = v66 + v67;
          v22 = __CFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_128;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v22 = v51 >= v52;
          v44 = v51 - v52;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_129;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if ((v60 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v61 = v58 + v59;
        v22 = __CFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      v19 = v44;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_269475CE8(uint64_t a1, unint64_t a2)
{
  v2 = sub_269475D54(sub_269475D50, 0, a1, a2);
  v6 = sub_269475D88(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_269475D54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_269475D88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26948498C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_269484B7C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_269463BA8(v9, 0);
  v12 = sub_269475EE8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26948498C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_269484C3C();
LABEL_4:

  return sub_26948498C();
}

unint64_t sub_269475EE8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2694760F8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2694849EC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_269484C3C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2694760F8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2694849CC();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2694760F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2694849FC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D63E5B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_269476174(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2694848EC();

  [a3 setPrerelease_];
}

void sub_2694761D8(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_269463554(0, a3, a4);
  v7 = sub_269484A3C();

  [a2 *a5];
}

unint64_t sub_26947625C()
{
  result = qword_280317FB8;
  if (!qword_280317FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317FB8);
  }

  return result;
}

uint64_t sub_269476360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2694763D0()
{
  result = qword_280317FC0;
  if (!qword_280317FC0)
  {
    sub_26948434C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317FC0);
  }

  return result;
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x26D63EF60);
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_19_0()
{
  v1 = 1 << *(v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(v0 + 64);
}

BOOL OUTLINED_FUNCTION_20_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_26948434C();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_37(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_40()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_44()
{
}

void *OUTLINED_FUNCTION_48()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

BOOL OUTLINED_FUNCTION_49(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_57(void *a1)
{

  return [a1 init];
}

BOOL OUTLINED_FUNCTION_58()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_59()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_2694767A4()
{
  v0 = sub_26948480C();
  __swift_allocate_value_buffer(v0, qword_2813286B8);
  *__swift_project_value_buffer(v0, qword_2813286B8) = 500;
  v1 = *MEMORY[0x277D85178];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_269476834(uint64_t a1)
{
  v3 = *(a1 + 72);
  v2 = *(a1 + 80);
  v4 = sub_26948495C();
  v6 = v5;
  v7 = *(v1 + OBJC_IVAR____TtC21SiriTurnTakingManager16AllowListMatcher_allowedUtterances);

  v8 = sub_2694768B8(v4, v6, v7);

  if (v8)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

BOOL sub_2694768B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_269484DCC();
  sub_26948499C();
  v7 = sub_269484DEC();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_269484D5C();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

id sub_2694769A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllowListMatcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2694769FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_269485F50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_269476A60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FD8, &unk_269485FE0);
  result = sub_269484BEC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2694769FC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_269484DCC();
    sub_26948499C();
    result = sub_269484DEC();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void *sub_269476CBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FD8, &unk_269485FE0);
  v2 = *v0;
  v3 = sub_269484BDC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_269476E14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FD8, &unk_269485FE0);
  result = sub_269484BEC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_269484DCC();

        sub_26948499C();
        result = sub_269484DEC();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_269477068(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_269484DCC();
  a2(v5, a1);
  return sub_269484DEC();
}

uint64_t sub_2694770C4()
{
  sub_26948499C();
}

uint64_t sub_269477160()
{
  sub_26948499C();
}

uint64_t sub_269477260(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_24_1();
      break;
    default:
      break;
  }

  sub_26948499C();
}

uint64_t sub_269477334(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_269484DCC();
  a3(v6, a2);
  return sub_269484DEC();
}

uint64_t sub_269477380()
{
  sub_269484DCC();
  sub_26948499C();

  return sub_269484DEC();
}

uint64_t sub_269477430(uint64_t a1, char a2)
{
  sub_269484DCC();
  MEMORY[0x26D63E9B0](a2 & 1);
  return sub_269484DEC();
}

SiriTurnTakingManager::TTInvocationType_optional __swiftcall TTInvocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_269484C9C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TTInvocationType.rawValue.getter()
{
  result = 0x72506E6F74747562;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6972546563696F76;
      break;
    case 4:
      result = 0x65636E756F6E6E61;
      break;
    case 5:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_269477618@<X0>(unint64_t *a1@<X8>)
{
  result = TTInvocationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TTActiveRequestState.executionSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_executionSource;
  v4 = sub_26948479C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t TTActiveRequestState.__allocating_init(executionSource:isExecutionInProgress:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_executionSource;
  v9 = sub_26948479C();
  OUTLINED_FUNCTION_1_1(v9);
  (*(v10 + 32))(v7 + v8, a1);
  *(v7 + OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_isExecutionInProgress) = a2;
  return v7;
}

uint64_t TTActiveRequestState.init(executionSource:isExecutionInProgress:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_executionSource;
  v6 = sub_26948479C();
  OUTLINED_FUNCTION_1_1(v6);
  (*(v7 + 32))(v2 + v5, a1);
  *(v2 + OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_isExecutionInProgress) = a2;
  return v2;
}

unint64_t sub_2694777C4()
{
  v1 = sub_26948479C();
  v2 = OUTLINED_FUNCTION_0_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  sub_269484C1C();

  (*(v4 + 16))(v9, v0 + OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_executionSource, v1);
  v10 = sub_26948494C();
  MEMORY[0x26D63E580](v10);

  MEMORY[0x26D63E580](0xD000000000000010, 0x8000000269486ED0);
  if (*(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_isExecutionInProgress))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_isExecutionInProgress))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x26D63E580](v11, v12);

  MEMORY[0x26D63E580](34, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t TTActiveRequestState.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_executionSource;
  v2 = sub_26948479C();
  OUTLINED_FUNCTION_1_1(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t TTActiveRequestState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_executionSource;
  v2 = sub_26948479C();
  OUTLINED_FUNCTION_1_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t TTCandidate.tcuId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_16_1();
}

void *TTCandidate.intendedInfo.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t TTCandidate.tcuUtterance.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_16_1();
}

uint64_t TTCandidate.nlRoutingDecision.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTCandidate(0) + 56);

  return sub_269469B28(v3, a1);
}

uint64_t TTCandidate.activeRequestState.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTCandidate(0) + 60));
}

uint64_t TTCandidate.init(tcuId:invocationType:intendedInfo:userParses:activeTasks:executedTasks:tcuUtterance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v10;
  *(a9 + 24) = 0;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = 0;
  v11 = OUTLINED_FUNCTION_13_2(a7, MEMORY[0x277D84F90]);
  return OUTLINED_FUNCTION_7_3(v11);
}

uint64_t TTCandidate.init(tcuId:invocationType:intendedInfo:userParses:activeTasks:executedTasks:tcuUtterance:isResponseToSiriPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v11 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  *(a9 + 24) = 0;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  v12 = OUTLINED_FUNCTION_13_2(a7, MEMORY[0x277D84F90]);
  return OUTLINED_FUNCTION_7_3(v12);
}

uint64_t TTCandidate.init(tcuId:invocationType:intendedInfo:userParses:activeTasks:executedTasks:tcuUtterance:isResponseToSiriPrompt:systemDialogActs:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(OUTLINED_FUNCTION_6_3(a1, a2, a3, a4, a5, a6, a7, a8) + 56);
  v9 = sub_26948478C();
  return OUTLINED_FUNCTION_7_3(v9);
}

uint64_t TTCandidate.init(tcuId:invocationType:intendedInfo:userParses:activeTasks:executedTasks:tcuUtterance:isResponseToSiriPrompt:systemDialogActs:nlRoutingDecision:activeRequestState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = OUTLINED_FUNCTION_6_3(a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = *(v15 + 56);
  v17 = sub_26948478C();
  OUTLINED_FUNCTION_1_1(v17);
  (*(v18 + 32))(a9 + v16, a13, v17);
  result = __swift_storeEnumTagSinglePayload(a9 + v16, 0, 1, v17);
  *(a9 + *(v15 + 60)) = a14;
  return result;
}

uint64_t TTCandidate.description.getter()
{
  v1 = v0;
  v2 = sub_2694843DC();
  v76 = OUTLINED_FUNCTION_0_1(v2);
  v77 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_3();
  v75 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v68 - v10;
  v12 = sub_26948478C();
  v13 = OUTLINED_FUNCTION_0_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = *(v1 + 32);
  if (v21)
  {
    v22 = v21;
    v23 = [v22 description];
    v24 = sub_2694848FC();
    v26 = v25;
  }

  else
  {
    v26 = 0xE300000000000000;
    v24 = 7104878;
  }

  v27 = type metadata accessor for TTCandidate(0);
  sub_269469B28(v1 + *(v27 + 56), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_26946463C(v11, &qword_280317E40, &unk_269485610);
    v71 = 7104878;
    v72 = 0xE300000000000000;
  }

  else
  {
    v28 = *(v15 + 32);
    v29 = OUTLINED_FUNCTION_16_1();
    v30(v29);
    v71 = sub_26948477C();
    v72 = v31;
    (*(v15 + 8))(v20, v12);
  }

  v32 = v24;
  v33 = *(v27 + 60);
  v34 = 7104878;
  if (*(v1 + v33))
  {
    v35 = *(v1 + v33);

    v34 = sub_2694777C4();
    v37 = v36;
  }

  else
  {
    v37 = 0xE300000000000000;
  }

  v78 = 0;
  v79 = 0xE000000000000000;
  sub_269484C1C();
  v83 = v78;
  v84 = v79;
  MEMORY[0x26D63E580](0x3A6449756374, 0xE600000000000000);
  MEMORY[0x26D63E580](*v1, *(v1 + 8));
  OUTLINED_FUNCTION_14_1();
  LOBYTE(v78) = *(v1 + 16);
  sub_269484C4C();
  MEMORY[0x26D63E580](0x6F6353727361202CLL, 0xEB000000003A6572);
  v38 = *(v1 + 24);
  sub_269484A8C();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x26D63E580](v32, v26);

  MEMORY[0x26D63E580](0x5072657375202C22, 0xEF203A7365737261);
  v39 = *(v1 + 40);
  v40 = *(v39 + 16);
  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v68 = v37;
    v69 = v1;
    v70 = v34;
    v82 = MEMORY[0x277D84F90];
    sub_2694664C8(0, v40, 0);
    v42 = sub_2694844DC();
    v41 = v82;
    v43 = *(v77 + 16);
    v44 = v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v73 = *(v77 + 72);
    v74 = v42;
    v77 += 16;
    v45 = (v77 - 8);
    do
    {
      v47 = v75;
      v46 = v76;
      v43(v75, v44, v76);
      v80 = v46;
      v81 = sub_26947A6D4();
      v48 = __swift_allocate_boxed_opaque_existential_1(&v78);
      v43(v48, v47, v46);
      v49 = sub_2694844CC();
      v51 = v50;
      (*v45)(v47, v46);
      __swift_destroy_boxed_opaque_existential_0Tm(&v78);
      v82 = v41;
      v53 = *(v41 + 16);
      v52 = *(v41 + 24);
      if (v53 >= v52 >> 1)
      {
        v55 = OUTLINED_FUNCTION_4_1(v52);
        sub_2694664C8(v55, v53 + 1, 1);
        v41 = v82;
      }

      *(v41 + 16) = v53 + 1;
      v54 = v41 + 16 * v53;
      *(v54 + 32) = v49;
      *(v54 + 40) = v51;
      v44 += v73;
      --v40;
    }

    while (v40);
    v1 = v69;
    v34 = v70;
    v37 = v68;
  }

  v78 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  sub_26947A78C();
  v56 = sub_2694848BC();
  v58 = v57;

  MEMORY[0x26D63E580](v56, v58);

  MEMORY[0x26D63E580](0x657669746361202CLL, 0xEF203A736B736154);
  v59 = v1;
  v60 = *(v1 + 48);
  v61 = sub_26948438C();
  v62 = MEMORY[0x26D63E620](v60, v61);
  MEMORY[0x26D63E580](v62);

  OUTLINED_FUNCTION_14_1();
  v63 = MEMORY[0x26D63E620](*(v59 + 56), v61);
  MEMORY[0x26D63E580](v63);

  MEMORY[0x26D63E580](0x617265747475202CLL, 0xEE0022203A65636ELL);
  MEMORY[0x26D63E580](*(v59 + 72), *(v59 + 80));
  MEMORY[0x26D63E580](0xD00000000000001CLL, 0x8000000269486F50);
  if (*(v59 + 88))
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (*(v59 + 88))
  {
    v65 = 0xE400000000000000;
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  MEMORY[0x26D63E580](v64, v65);

  MEMORY[0x26D63E580](0xD000000000000015, 0x8000000269486F70);
  v66 = MEMORY[0x26D63E620](v60, v61);
  MEMORY[0x26D63E580](v66);

  MEMORY[0x26D63E580](0xD000000000000016, 0x8000000269486F90);
  MEMORY[0x26D63E580](v71, v72);

  MEMORY[0x26D63E580](0xD000000000000018, 0x8000000269486FB0);
  MEMORY[0x26D63E580](v34, v37);

  MEMORY[0x26D63E580](34, 0xE100000000000000);
  return v83;
}

uint64_t TTManagerRequest.trpCandidateId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId + 8);

  return OUTLINED_FUNCTION_16_1();
}

uint64_t TTManagerRequest.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId + 8);

  return OUTLINED_FUNCTION_16_1();
}

id TTManagerRequest.init(ttCandidates:trpCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26948434C();
  v9 = OUTLINED_FUNCTION_0_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  *&v4[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_ttCandidates] = a1;
  v14 = &v4[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId];
  *v14 = a2;
  *(v14 + 1) = a3;
  sub_26948433C();
  v15 = sub_26948430C();
  v17 = v16;
  v18 = *(v11 + 8);
  v19 = OUTLINED_FUNCTION_21_0();
  v20(v19);
  v21 = &v4[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId];
  *v21 = v15;
  v21[1] = v17;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for TTManagerRequest();
  return objc_msgSendSuper2(&v23, sel_init);
}

id TTManagerRequest.__allocating_init(ttCandidates:trpCandidateId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = OUTLINED_FUNCTION_21_0();
  return TTManagerRequest.init(ttCandidates:trpCandidateId:requestId:)(v10, v11, a3, a4, a5);
}

id TTManagerRequest.init(ttCandidates:trpCandidateId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_ttCandidates] = a1;
  v6 = &v5[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId];
  *v6 = a2;
  *(v6 + 1) = a3;
  v7 = &v5[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId];
  *v7 = a4;
  *(v7 + 1) = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for TTManagerRequest();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_2694786B0()
{
  v1 = v0;
  v2 = type metadata accessor for TTCandidate(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = *(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_ttCandidates);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2694664C8(0, v9, 0);
    v10 = v23;
    v11 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_269469A68(v11, v7);
      v22[0] = 123;
      v22[1] = 0xE100000000000000;
      v13 = TTCandidate.description.getter();
      MEMORY[0x26D63E580](v13);

      MEMORY[0x26D63E580](125, 0xE100000000000000);
      sub_269469ACC(v7);
      v23 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = OUTLINED_FUNCTION_4_1(v14);
        sub_2694664C8(v17, v15 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = 123;
      *(v16 + 40) = 0xE100000000000000;
      v11 += v12;
      --v9;
    }

    while (v9);
    v1 = v0;
  }

  sub_269484C1C();

  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  sub_26947A78C();
  v18 = sub_2694848BC();
  v20 = v19;

  MEMORY[0x26D63E580](v18, v20);

  MEMORY[0x26D63E580](93, 0xE100000000000000);
  sub_269484C1C();

  strcpy(v22, "{requestId: ");
  BYTE5(v22[1]) = 0;
  HIWORD(v22[1]) = -5120;
  MEMORY[0x26D63E580](*(v1 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId), *(v1 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId + 8));
  MEMORY[0x26D63E580](0xD000000000000012, 0x8000000269486FD0);
  MEMORY[0x26D63E580](*(v1 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId), *(v1 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId + 8));
  MEMORY[0x26D63E580](8236, 0xE200000000000000);
  MEMORY[0x26D63E580](0x6469646E61435454, 0xEF5B203A73657461);

  MEMORY[0x26D63E580](125, 0xE100000000000000);
  return v22[0];
}

id TTManagerRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t TTResult.tcuId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_16_1();
}

uint64_t TTResult.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  v5 = *(v0 + 24);
  v6 = *(v0 + 7);
  v7 = *(v0 + 32);
  v8 = *(v0 + 33);
  v9 = *(v0 + 34);
  v10 = *(v0 + 9);
  v11 = *(v0 + 40);
  sub_269484C1C();
  MEMORY[0x26D63E580](0x3A6449756374, 0xE600000000000000);
  MEMORY[0x26D63E580](v1, v2);
  MEMORY[0x26D63E580](0xD000000000000015, 0x8000000269487020);
  sub_269484C4C();
  MEMORY[0x26D63E580](0x726F6353636E202CLL, 0xEA00000000003A65);
  if (v5)
  {
    OUTLINED_FUNCTION_4_3();
  }

  else
  {
    sub_269484A9C();
  }

  OUTLINED_FUNCTION_19_1();

  MEMORY[0x26D63E580](0x65726854636E202CLL, 0xEE003A646C6F6873);
  if (v7)
  {
    OUTLINED_FUNCTION_4_3();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    sub_269484A9C();
  }

  OUTLINED_FUNCTION_19_1();

  MEMORY[0x26D63E580](0xD000000000000012, 0x8000000269487040);
  if (v11)
  {
    OUTLINED_FUNCTION_4_3();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    sub_269484A9C();
  }

  OUTLINED_FUNCTION_19_1();

  MEMORY[0x26D63E580](0x65646F4D636E202CLL, 0xE90000000000003ALL);
  if (v8 == 2)
  {
    OUTLINED_FUNCTION_4_3();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    sub_269484C4C();
  }

  OUTLINED_FUNCTION_19_1();

  MEMORY[0x26D63E580](0xD000000000000017, 0x8000000269487060);
  if (v9 == 3)
  {
    OUTLINED_FUNCTION_4_3();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    sub_269484C4C();
  }

  OUTLINED_FUNCTION_19_1();

  return 0;
}

id TTManagerResponse.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC21SiriTurnTakingManager17TTManagerResponse_ttResults] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TTManagerResponse.init(_:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC21SiriTurnTakingManager17TTManagerResponse_ttResults] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTManagerResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_269479110(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2694848EC();

  return v5;
}

uint64_t sub_269479180()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriTurnTakingManager17TTManagerResponse_ttResults);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    sub_2694664C8(0, v2, 0);
    v3 = v25;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v6 = v4[1];
      *&v24[9] = *(v4 + 25);
      v23 = v5;
      *v24 = v6;
      v21 = 123;
      v22 = 0xE100000000000000;
      v19 = *v4;
      v20[0] = v4[1];
      *(v20 + 9) = *(v4 + 25);
      sub_2694762B0(&v23, &v18);
      v7 = TTResult.description.getter();
      MEMORY[0x26D63E580](v7);

      MEMORY[0x26D63E580](125, 0xE100000000000000);
      sub_26947630C(&v23);
      v8 = v21;
      v9 = v22;
      v25 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = OUTLINED_FUNCTION_4_1(v10);
        sub_2694664C8(v13, v11 + 1, 1);
        v3 = v25;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  *&v23 = 0;
  *(&v23 + 1) = 0xE000000000000000;
  sub_269484C1C();

  strcpy(&v23, "{TTResults: [");
  HIWORD(v23) = -4864;
  *&v19 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  sub_26947A78C();
  v14 = sub_2694848BC();
  v16 = v15;

  MEMORY[0x26D63E580](v14, v16);

  MEMORY[0x26D63E580](32093, 0xE200000000000000);
  return v23;
}

SiriTurnTakingManager::TTMitigationDecision_optional __swiftcall TTMitigationDecision.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_269484C9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TTMitigationDecision.rawValue.getter()
{
  v1 = 0x657461676974696DLL;
  if (*v0 != 1)
  {
    v1 = 0x74694D656279616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_2694794D8@<X0>(uint64_t *a1@<X8>)
{
  result = TTMitigationDecision.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_269479528@<X0>(uint64_t *a1@<X8>)
{
  result = NCMode.rawValue.getter();
  *a1 = result;
  return result;
}

id sub_269479550(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317F98, &qword_269485F18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v55 - v6;
  v8 = OUTLINED_FUNCTION_20_1();
  v9 = *&a1[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId];
  v10 = *&a1[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_requestId + 8];
  v11 = *v8;
  sub_269470744();
  v12 = OUTLINED_FUNCTION_20_1();
  v14 = *&a1[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId];
  v13 = *&a1[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_trpCandidateId + 8];
  v15 = *v12;
  OUTLINED_FUNCTION_17_1();
  sub_269471090();
  v16 = *OUTLINED_FUNCTION_20_1();
  sub_269474EC0();
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v17 = sub_2694847EC();
  v18 = __swift_project_value_buffer(v17, qword_2813286A0);
  v19 = a1;
  v58 = v18;
  v20 = sub_2694847DC();
  v21 = sub_269484ADC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v57 = v14;
    v23 = v22;
    v55 = swift_slowAlloc();
    v59 = v55;
    *v23 = 136315138;
    v24 = [v19 description];
    v25 = v7;
    v26 = v2;
    v27 = sub_2694848FC();
    v56 = v19;
    v29 = v28;

    v30 = v27;
    v2 = v26;
    v7 = v25;
    v31 = sub_269463C18(v30, v29, &v59);
    v19 = v56;

    *(v23 + 4) = v31;
    _os_log_impl(&dword_269461000, v20, v21, "received ttRequest - %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_overrideSystem), *(v2 + OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_overrideSystem + 24));
  v32 = *&v19[OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_ttCandidates];
  v33 = OUTLINED_FUNCTION_23_1();
  v37 = sub_26946D830(v33, v34, v35, v36);
  v38 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_nc), *(v2 + OBJC_IVAR____TtC21SiriTurnTakingManager8TTClient_nc + 24));
  v39 = OUTLINED_FUNCTION_23_1();
  v43 = sub_269467244(v39, v40, v41, v42);
  type metadata accessor for MHLogger();
  swift_initStackObject();
  if (sub_26946B0BC())
  {
    sub_26946B4EC(v43, v19);
  }

  v44 = sub_2694799E4(v19, v37, v43);

  v45 = *OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_17_1();
  sub_269471554();
  v46 = v19;
  v47 = v44;
  v48 = sub_2694847DC();
  v49 = sub_269484ACC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412546;
    *(v50 + 4) = v47;
    *(v50 + 12) = 2112;
    *(v50 + 14) = v46;
    *v51 = v47;
    v51[1] = v46;
    v52 = v46;
    v53 = v47;
    _os_log_impl(&dword_269461000, v48, v49, "TTManagerResponse - %@) for TTManagerRequest: %@)", v50, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E50, &qword_269485F30);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  sub_26946463C(v7, &qword_280317F98, &qword_269485F18);
  return v47;
}

unint64_t sub_2694799E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_26947B3D4(a2, sub_26947C23C, sub_26947C23C);
  v8 = sub_26947A424(v7);
  v9 = sub_2694664E8(v8);
  v10 = sub_26947B3D4(a2, sub_26947C050, sub_26947C050);
  v11 = sub_26947A424(v10);
  v106 = sub_2694664E8(v11);
  v12 = sub_26947B3D4(a2, sub_26947BE58, sub_26947BE58);
  v13 = sub_26947A424(v12);
  v14 = sub_2694664E8(v13);
  v15 = *(v9 + 56);
  v16 = *(v9 + 32);
  OUTLINED_FUNCTION_15_2();
  v20 = v19 & v18;
  v103 = a3;
  v117 = a1;
  if (v20)
  {
    v21 = 0;
    v22 = __clz(__rbit64(v20));
    v23 = (v20 - 1) & v20;
    v24 = (v17 + 63) >> 6;
    goto LABEL_7;
  }

  v25 = 0;
  v24 = (v17 + 63) >> 6;
  do
  {
    v21 = v20 + 1;
    if (v20 + 1 >= v24)
    {

      v82 = sub_26947B548(v14, a3);
      v83 = *(v82 + 56);
      v84 = *(v82 + 32);
      OUTLINED_FUNCTION_15_2();
      v88 = v87 & v86;
      if (v88)
      {
        v89 = 0;
        v90 = __clz(__rbit64(v88));
        v91 = (v88 - 1) & v88;
        v92 = (v85 + 63) >> 6;
      }

      else
      {
        v93 = 0;
        v92 = (v85 + 63) >> 6;
        do
        {
          v89 = v88 + 1;
          if (v88 + 1 >= v92)
          {

            v105 = 0;
            v3 = 0;
            goto LABEL_23;
          }

          v94 = *(v82 + 8 * v88 + 64);
          v93 += 64;
          ++v88;
        }

        while (!v94);
        v91 = (v94 - 1) & v94;
        v90 = __clz(__rbit64(v94)) + v93;
      }

      OUTLINED_FUNCTION_18_1(v90);

      while (v91)
      {
        v95 = v89;
LABEL_93:
        if (!*(v103 + 16))
        {
          goto LABEL_109;
        }

        v96 = (*(v82 + 48) + ((v95 << 10) | (16 * __clz(__rbit64(v91)))));
        v98 = *v96;
        v97 = v96[1];

        result = sub_269480E90(v105, v3);
        if ((v99 & 1) == 0)
        {
          goto LABEL_110;
        }

        if (!*(v103 + 16))
        {
          goto LABEL_111;
        }

        v100 = *(*(v103 + 56) + 40 * result);
        result = sub_269480E90(v98, v97);
        if ((v101 & 1) == 0)
        {
          goto LABEL_112;
        }

        v91 &= v91 - 1;
        if (v100 < *(*(v103 + 56) + 40 * result))
        {

          v3 = v97;
          v105 = v98;
        }

        else
        {
        }

        v89 = v95;
      }

      while (1)
      {
        v95 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        if (v95 >= v92)
        {
          break;
        }

        v91 = *(v82 + 56 + 8 * v95);
        ++v89;
        if (v91)
        {
          goto LABEL_93;
        }
      }

LABEL_22:
      a3 = v103;
LABEL_23:
      v35 = *(v117 + OBJC_IVAR____TtC21SiriTurnTakingManager16TTManagerRequest_ttCandidates);
      v36 = *(v35 + 16);
      if (!v36)
      {

        v40 = MEMORY[0x277D84F90];
LABEL_80:
        v80 = type metadata accessor for TTManagerResponse();
        v81 = objc_allocWithZone(v80);
        *&v81[OBJC_IVAR____TtC21SiriTurnTakingManager17TTManagerResponse_ttResults] = v40;
        v122.receiver = v81;
        v122.super_class = v80;
        return objc_msgSendSuper2(&v122, sel_init);
      }

      v37 = *(type metadata accessor for TTCandidate(0) - 8);
      v38 = v36 - 1;
      v39 = (((*(v37 + 80) + 32) & ~*(v37 + 80)) + v35 + 8);
      v104 = *(v37 + 72);
      v40 = MEMORY[0x277D84F90];
      v102 = v3;
      while (1)
      {
        v41 = *(v39 - 1);
        v42 = *v39;
        if (!*(a3 + 16))
        {
          v113 = 0;
          v116 = 0;
          v111 = 0;
          v46 = 3;
          goto LABEL_34;
        }

        v43 = OUTLINED_FUNCTION_12_2();
        if (v44)
        {
          OUTLINED_FUNCTION_9_2(v43);
          v46 = *(v45 + 4);
        }

        else
        {
          v46 = 3;
        }

        if (!*(a3 + 16))
        {
          break;
        }

        v47 = OUTLINED_FUNCTION_12_2();
        if (v48)
        {
          v113 = *(*(a3 + 56) + 40 * v47);
        }

        else
        {
          v113 = 0;
        }

        v110 = v48 ^ 1;
        if (!*(a3 + 16))
        {
          v116 = 0;
          v118 = 1;
          v111 = 0;
          v112 = 2;
          goto LABEL_50;
        }

        v50 = OUTLINED_FUNCTION_12_2();
        if (v51)
        {
          OUTLINED_FUNCTION_9_2(v50);
          v116 = *(v52 + 24);
          v53 = *(v52 + 28);
        }

        else
        {
          v116 = 0;
          v53 = 1;
        }

        v118 = v53;
        if (*(a3 + 16))
        {
          v54 = OUTLINED_FUNCTION_12_2();
          if (v55)
          {
            OUTLINED_FUNCTION_9_2(v54);
            v57 = *(v56 + 37);
          }

          else
          {
            v57 = 2;
          }

          v112 = v57;
          if (*(a3 + 16) && (v58 = OUTLINED_FUNCTION_12_2(), (v59 & 1) != 0))
          {
            OUTLINED_FUNCTION_9_2(v58);
            v111 = *(v60 + 32);
            v49 = *(v60 + 36);
          }

          else
          {
            v111 = 0;
LABEL_50:
            v49 = 1;
          }

LABEL_51:
          v109 = v49;
          goto LABEL_52;
        }

        v109 = 1;
        v111 = 0;
        v112 = 2;
LABEL_52:
        v115 = v41;
        if (v3 && (v105 == v41 ? (v61 = v3 == v42) : (v61 = 0), (v61 || (sub_269484D5C() & 1) != 0) && !sub_2694768B8(v41, v42, v106)))
        {
          v62 = 0;
        }

        else if (sub_2694768B8(v41, v42, v106))
        {
          v62 = 1;
        }

        else
        {
          v62 = 1;
          switch(v46)
          {
            case 2:
              v62 = 2;
              swift_bridgeObjectRelease_n();
              break;
            case 3:
              break;
            default:
              v63 = sub_269484D5C();

              v61 = (v63 & 1) == 0;
              v3 = v102;
              if (v61)
              {
                v62 = 1;
              }

              else
              {
                v62 = 2;
              }

              break;
          }
        }

        v108 = v62;
        v64 = v40;
        v65 = qword_281327EE0;

        if (v65 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v114 = v46;
        v66 = sub_2694847EC();
        __swift_project_value_buffer(v66, qword_2813286A0);
        v67 = sub_2694847DC();
        v68 = sub_269484ADC();
        v107 = v39;
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v121 = v70;
          *v69 = 136315138;
          v71 = v118;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318000, &qword_269485FF0);
          v72 = sub_26948494C();
          v74 = sub_269463C18(v72, v73, &v121);
          a3 = v103;

          *(v69 + 4) = v74;
          _os_log_impl(&dword_269461000, v67, v68, "ncThreshold:%s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v70);
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
          v3 = v102;
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
        }

        else
        {

          v71 = v118;
        }

        v127 = v110 & 1;
        v124 = v71;
        v123 = v109;
        LOWORD(v121) = v128;
        BYTE2(v121) = v129;
        v119 = v125;
        v120 = v126;
        v40 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_26946C804(0, *(v64 + 2) + 1, 1, v64);
        }

        v76 = *(v40 + 2);
        v75 = *(v40 + 3);
        if (v76 >= v75 >> 1)
        {
          v79 = OUTLINED_FUNCTION_4_1(v75);
          v40 = sub_26946C804(v79, v76 + 1, 1, v40);
        }

        *(v40 + 2) = v76 + 1;
        v77 = &v40[48 * v76];
        *(v77 + 4) = v115;
        *(v77 + 5) = v42;
        v77[48] = v108;
        v78 = BYTE2(v121);
        *(v77 + 49) = v121;
        v77[51] = v78;
        *(v77 + 13) = v113;
        v77[56] = v110 & 1;
        v77[59] = v120;
        *(v77 + 57) = v119;
        *(v77 + 15) = v116;
        v77[64] = v118;
        v77[65] = v112;
        v77[66] = v114;
        *(v77 + 17) = v111;
        v77[72] = v109;
        if (!v38)
        {

          goto LABEL_80;
        }

        --v38;
        v39 = (v107 + v104);
      }

      v113 = 0;
      v116 = 0;
      v111 = 0;
LABEL_34:
      v110 = 1;
      v112 = 2;
      v49 = 1;
      v118 = 1;
      goto LABEL_51;
    }

    v26 = *(v9 + 8 * v20 + 64);
    v25 += 64;
    ++v20;
  }

  while (!v26);
  v23 = (v26 - 1) & v26;
  v22 = __clz(__rbit64(v26)) + v25;
LABEL_7:
  OUTLINED_FUNCTION_18_1(v22);

LABEL_8:
  v28 = v21;
  if (!v23)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v21 = v28;
LABEL_13:
    if (!*(v103 + 16))
    {
      break;
    }

    v29 = (*(v9 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v23)))));
    v30 = v3;
    v31 = *v29;
    v3 = v29[1];

    result = sub_269480E90(v105, v30);
    if ((v32 & 1) == 0)
    {
      goto LABEL_106;
    }

    if (!*(v103 + 16))
    {
      goto LABEL_107;
    }

    v33 = *(*(v103 + 56) + 40 * result);
    result = sub_269480E90(v31, v3);
    if ((v34 & 1) == 0)
    {
      goto LABEL_108;
    }

    v23 &= v23 - 1;
    if (v33 < *(*(v103 + 56) + 40 * result))
    {

      v105 = v31;
      goto LABEL_8;
    }

    v28 = v21;
    v3 = v30;
    if (!v23)
    {
LABEL_10:
      while (1)
      {
        v21 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v21 >= v24)
        {

          goto LABEL_22;
        }

        v23 = *(v9 + 56 + 8 * v21);
        ++v28;
        if (v23)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_104;
    }
  }

LABEL_105:
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
  return result;
}

void *sub_26947A424(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26947A550(*(a1 + 16), 0);
  v4 = sub_26947C688(&v6, v3 + 4, v2, a1);
  sub_26947C7E4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

id sub_26947A4CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26947A504(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_26947A550(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318048, &unk_269486440);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_26947A5F4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_269463C18(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **sub_26947A650(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26947A660(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_26947A6D4()
{
  result = qword_281328690;
  if (!qword_281328690)
  {
    sub_2694843DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281328690);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_26947A78C()
{
  result = qword_281327E00;
  if (!qword_281327E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280317FE0, &qword_269486550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281327E00);
  }

  return result;
}

unint64_t sub_26947A83C()
{
  result = qword_280318028;
  if (!qword_280318028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280318028);
  }

  return result;
}

unint64_t sub_26947A894()
{
  result = qword_280318030;
  if (!qword_280318030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280318030);
  }

  return result;
}

unint64_t sub_26947A8EC()
{
  result = qword_280318038;
  if (!qword_280318038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280318038);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTInvocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TTInvocationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26947AACC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26947AB04()
{
  result = sub_26948479C();
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

void sub_26947AC14()
{
  sub_26947AE94(319, &qword_281327DE8, sub_26947AE50, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26947AE94(319, &qword_281327E10, MEMORY[0x277D5DB08], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26947AE94(319, &qword_281327E18, MEMORY[0x277D5DA58], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_26947AE94(319, &qword_281327E08, MEMORY[0x277D5DC70], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_26947AE94(319, &qword_281328688, MEMORY[0x277D5CBA8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26947AE94(319, qword_281327FB8, type metadata accessor for TTActiveRequestState, MEMORY[0x277D83D88]);
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

unint64_t sub_26947AE50()
{
  result = qword_281327DF0;
  if (!qword_281327DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281327DF0);
  }

  return result;
}

void sub_26947AE94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26947AF38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_26947AF78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTMitigationDecision(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TTMitigationDecision(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NCMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26947B2AC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26947B2CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26947B2CC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317EC8, &qword_2694857B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_26946C94C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26947B3D4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v5 = sub_26947BBB8(v13, v7, v5, a3);
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  sub_2694769FC(0, v7, v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  v8 = OUTLINED_FUNCTION_21_0();
  v9 = a2(v8);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v5 = v9;
  }

LABEL_5:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_26947B548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v38 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_26;
  }

  while (2)
  {
    v37 = a2;
    v34 = v3;
    v32[1] = v32;
    MEMORY[0x28223BE20](v10);
    v33 = v8;
    v35 = (v32 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_2694769FC(0, v8, v35);
    v36 = 0;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v9 = v13 & *(v5 + 56);
    v14 = (v12 + 63) >> 6;
    while (v9)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v3 = v15 | (v11 << 6);
      a2 = v37;
LABEL_12:
      v18 = v5;
      v19 = (*(v5 + 48) + 16 * v3);
      v20 = v19[1];
      if (*(a2 + 16))
      {
        v21 = *v19;
        v22 = v19[1];

        v23 = sub_269480E90(v21, v20);
        if ((v24 & 1) == 0)
        {
          goto LABEL_18;
        }

        switch(*(*(v37 + 56) + 40 * v23 + 4))
        {
          case 1:
          case 2:
            v25 = sub_269484D5C();

            v5 = v18;
            if ((v25 & 1) == 0)
            {
              continue;
            }

            break;
          case 3:
            goto LABEL_18;
          default:

            swift_bridgeObjectRelease_n();
            v5 = v18;
            break;
        }

        *(v35 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_23:
          v28 = sub_26947BC3C(v35, v33, v36, v5);
          swift_bridgeObjectRelease_n();
          goto LABEL_24;
        }
      }

      else
      {
        v26 = v19[1];

LABEL_18:

        v5 = v18;
      }
    }

    v16 = v11;
    a2 = v37;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v14)
      {
        goto LABEL_23;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v9 = (v17 - 1) & v17;
        v3 = __clz(__rbit64(v17)) | (v11 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();

  v28 = sub_26947BB18(v31, v8, v5, a2);

  MEMORY[0x26D63EF60](v31, -1, -1);
  swift_bridgeObjectRelease_n();
LABEL_24:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t sub_26947B8D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = v15[1];
    if (*(a4 + 16))
    {
      v17 = *v15;
      v18 = v15[1];

      v19 = sub_269480E90(v17, v16);
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }

      switch(*(*(a4 + 56) + 40 * v19 + 4))
      {
        case 1:
        case 2:
          v21 = sub_269484D5C();

          if ((v21 & 1) == 0)
          {
            continue;
          }

          break;
        case 3:
          goto LABEL_17;
        default:

          result = swift_bridgeObjectRelease_n();
          break;
      }

      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_22:

        v24 = sub_26947BC3C(v26, a2, v27, a3);

        return v24;
      }
    }

    else
    {
      v22 = v15[1];

LABEL_17:
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_26947BB18(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_26947B8D4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_26947BBB8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v5 = OUTLINED_FUNCTION_21_0();
    v6 = a4(v5);

    return v6;
  }

  return result;
}

uint64_t sub_26947BC3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FD8, &unk_269485FE0);
  result = sub_269484BFC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_269484DCC();

    sub_26948499C();
    result = sub_269484DEC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26947BE58(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    switch(*(*(a3 + 56) + 16 * v13))
    {
      case 2:

        break;
      default:
        v14 = sub_269484D5C();

        if ((v14 & 1) == 0)
        {
          continue;
        }

        break;
    }

    *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      return sub_26947C434(v17, a2, v18, a3);
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_26947C434(v17, a2, v18, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26947C050(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    switch(*(*(a3 + 56) + 16 * v13))
    {
      case 1:
      case 2:
      case 3:
        v14 = sub_269484D5C();

        if ((v14 & 1) == 0)
        {
          continue;
        }

        break;
      default:

        break;
    }

    *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      return sub_26947C434(v17, a2, v18, a3);
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_26947C434(v17, a2, v18, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26947C23C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    switch(*(*(a3 + 56) + 16 * v13))
    {
      case 1:

        break;
      default:
        v14 = sub_269484D5C();

        if ((v14 & 1) == 0)
        {
          continue;
        }

        break;
    }

    *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      return sub_26947C434(v17, a2, v18, a3);
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_26947C434(v17, a2, v18, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26947C434(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318040, &qword_269486438);
  result = sub_269484C8C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v36 = *v21;
    v22 = *(v21 + 1);
    v23 = *(v9 + 40);
    sub_269484DCC();

    sub_26948499C();
    result = sub_269484DEC();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = *(v9 + 56) + 16 * v27;
    *v33 = v36;
    *(v33 + 8) = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26947C688(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void OUTLINED_FUNCTION_14_1()
{

  JUMPOUT(0x26D63E580);
}

uint64_t OUTLINED_FUNCTION_18_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + 48) + 16 * a1);
  v4 = v3[1];
  v6 = *v3;
}

void OUTLINED_FUNCTION_19_1()
{

  JUMPOUT(0x26D63E580);
}

void *OUTLINED_FUNCTION_20_1()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t sub_26947C8C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317E40, &unk_269485610);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_3_3();
  v85 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v84 - v7;
  MEMORY[0x28223BE20](v6);
  v88 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318050, &qword_2694864B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_3_3();
  v86 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v87 = &v84 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v84 - v16;
  v18 = type metadata accessor for TTCandidate(0);
  v19 = OUTLINED_FUNCTION_1_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v24 = sub_2694847EC();
  v25 = __swift_project_value_buffer(v24, qword_2813286A0);
  v26 = sub_2694847DC();
  v27 = sub_269484ADC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_269461000, v26, v27, "Running ConcurrentActiveRequestMatcher override", v28, 2u);
    MEMORY[0x26D63EF60](v28, -1, -1);
  }

  v89 = a1;
  sub_269469A68(a1, v23);
  v84 = v25;
  v29 = sub_2694847DC();
  v30 = sub_269484ADC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v91 = v32;
    *v31 = 136315138;
    v33 = v18;
    v90 = *&v23[*(v18 + 60)];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318058, &qword_2694864C0);
    v34 = sub_26948494C();
    v35 = v8;
    v36 = v17;
    v38 = v37;
    sub_269469ACC(v23);
    v39 = sub_269463C18(v34, v38, &v91);
    v17 = v36;
    v8 = v35;

    *(v31 + 4) = v39;
    _os_log_impl(&dword_269461000, v29, v30, "Active Request State = %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x26D63EF60](v32, -1, -1);
    OUTLINED_FUNCTION_2_6();
  }

  else
  {

    sub_269469ACC(v23);
    v33 = v18;
  }

  v40 = v89;
  v41 = *(v89 + *(v33 + 60));
  switch(*(v89 + 16))
  {
    case 1:

      if (v41)
      {
        goto LABEL_13;
      }

      return 2;
    default:
      v42 = sub_269484D5C();

      result = 2;
      if ((v42 & 1) == 0 || !v41)
      {
        return result;
      }

LABEL_13:
      if (*(v41 + OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_isExecutionInProgress) != 1)
      {
        return 2;
      }

      v44 = OBJC_IVAR____TtC21SiriTurnTakingManager20TTActiveRequestState_executionSource;
      v45 = sub_26948479C();
      v46 = *(v45 - 8);
      (*(v46 + 16))(v17, v41 + v44, v45);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v45);
      sub_26947D31C(v40 + *(v33 + 56), v88, &qword_280317E40, &unk_269485610);
      v47 = v87;
      sub_26947D31C(v17, v87, &qword_280318050, &qword_2694864B8);
      if (__swift_getEnumTagSinglePayload(v47, 1, v45) == 1)
      {
        sub_26946463C(v88, &qword_280317E40, &unk_269485610);
        sub_26946463C(v17, &qword_280318050, &qword_2694864B8);
LABEL_16:
        v48 = &qword_280318050;
        v49 = &qword_2694864B8;
        v50 = v47;
        goto LABEL_25;
      }

      v51 = v86;
      sub_26947D31C(v47, v86, &qword_280318050, &qword_2694864B8);
      v52 = *(v46 + 88);
      v53 = OUTLINED_FUNCTION_4_4();
      v55 = v54(v53);
      if (v55 == *MEMORY[0x277D5D000])
      {
        v56 = *(v46 + 8);
        v57 = OUTLINED_FUNCTION_4_4();
        v58(v57);
      }

      else if (v55 == *MEMORY[0x277D5D008])
      {
        v59 = *(v46 + 96);
        v60 = OUTLINED_FUNCTION_4_4();
        v61(v60);
        v62 = sub_2694847AC();
        OUTLINED_FUNCTION_1_1(v62);
        (*(v63 + 8))(v51);
      }

      else if (v55 != *MEMORY[0x277D5D018])
      {
        sub_26946463C(v88, &qword_280317E40, &unk_269485610);
        sub_26946463C(v17, &qword_280318050, &qword_2694864B8);
        v79 = *(v46 + 8);
        v80 = OUTLINED_FUNCTION_4_4();
        v81(v80);
        goto LABEL_16;
      }

      sub_26946463C(v47, &qword_280318050, &qword_2694864B8);
      sub_26947D31C(v88, v8, &qword_280317E40, &unk_269485610);
      v64 = sub_26948478C();
      if (__swift_getEnumTagSinglePayload(v8, 1, v64) != 1)
      {
        v65 = v85;
        sub_26947D31C(v8, v85, &qword_280317E40, &unk_269485610);
        v66 = (*(*(v64 - 8) + 88))(v65, v64);
        if (v66 == *MEMORY[0x277D5CB90])
        {
          v67 = OUTLINED_FUNCTION_1_2();
          v68(v67);
LABEL_30:
          sub_26946463C(v8, &qword_280317E40, &unk_269485610);
          v69 = sub_2694847DC();
          v70 = sub_269484ADC();
          if (os_log_type_enabled(v69, v70))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_27(&dword_269461000, v71, v72, "Candidate request routed to siriX while active request is processing; Use model decision for mitigation");
            OUTLINED_FUNCTION_2_6();
          }

          sub_26946463C(v88, &qword_280317E40, &unk_269485610);
          sub_26946463C(v17, &qword_280318050, &qword_2694864B8);
          return 3;
        }

        if (v66 == *MEMORY[0x277D5CB88])
        {
          v73 = OUTLINED_FUNCTION_1_2();
          v74(v73);
        }

        else
        {
          if (v66 == *MEMORY[0x277D5CB80])
          {
            goto LABEL_30;
          }

          if (v66 != *MEMORY[0x277D5CBA0])
          {
            sub_26946463C(v88, &qword_280317E40, &unk_269485610);
            sub_26946463C(v17, &qword_280318050, &qword_2694864B8);
            v82 = OUTLINED_FUNCTION_1_2();
            v83(v82);
            goto LABEL_24;
          }
        }

        sub_26946463C(v8, &qword_280317E40, &unk_269485610);
        v75 = sub_2694847DC();
        v76 = sub_269484ADC();
        if (os_log_type_enabled(v75, v76))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_27(&dword_269461000, v77, v78, "Candidate request arrived while active request is processing; recommending .mitigate");
          OUTLINED_FUNCTION_2_6();
        }

        sub_26946463C(v88, &qword_280317E40, &unk_269485610);
        sub_26946463C(v17, &qword_280318050, &qword_2694864B8);
        return 0;
      }

      sub_26946463C(v88, &qword_280317E40, &unk_269485610);
      sub_26946463C(v17, &qword_280318050, &qword_2694864B8);
LABEL_24:
      v48 = &qword_280317E40;
      v49 = &unk_269485610;
      v50 = v8;
LABEL_25:
      sub_26946463C(v50, v48, v49);
      return 2;
  }
}

id sub_26947D2C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcurrentActiveRequestMatcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26947D31C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26947D37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_269480E90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_26947D3D4(uint64_t a1)
{
  v193 = sub_2694843DC();
  v3 = OUTLINED_FUNCTION_0_1(v193);
  v190 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v192 = v8 - v7;
  v197 = sub_26948438C();
  v9 = OUTLINED_FUNCTION_0_1(v197);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_2();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v196 = v18;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v19);
  v186 = &v181 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318060, &qword_269486538);
  v22 = OUTLINED_FUNCTION_17_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_2();
  v188 = v25 - v26;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  v194 = v28;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v187 = v30;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v31);
  v33 = &v181 - v32;
  v34 = sub_26948448C();
  v35 = OUTLINED_FUNCTION_0_1(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  v42 = v41 - v40;
  v200 = a1;
  v43 = *(a1 + 16);
  v44 = 1;
  v185 = v16;
  v199 = v1;
  v189 = v11;
  v198 = v33;
  switch(v43)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_31_0();
      goto LABEL_3;
    case 4:
      break;
    default:
LABEL_3:
      v44 = sub_269484D5C();
      break;
  }

  LODWORD(v195) = v44;

  v45 = 0;
  isa = v200[8].isa;
  v201 = *(isa + 2);
  do
  {
    v47 = v45;
    if (v201 == v45)
    {
      break;
    }

    if (v45 >= *(isa + 2))
    {
      __break(1u);
LABEL_72:
      OUTLINED_FUNCTION_32_0();

LABEL_73:
      __swift_destroy_boxed_opaque_existential_0Tm(v205);
      (*(v189 + 8))(v196, v197);
      v71 = v198;
      goto LABEL_16;
    }

    (*(v37 + 16))(v42, isa + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45++, v34);
    v48 = sub_26948447C();
    (*(v37 + 8))(v42, v34);
  }

  while ((v48 & 1) == 0);
  v191 = v47;
  v49 = v198;
  v50 = v199;
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v51 = sub_2694847EC();
  v52 = __swift_project_value_buffer(v51, qword_2813286A0);
  v53 = sub_2694847DC();
  sub_269484ADC();
  v54 = OUTLINED_FUNCTION_5_3();
  if (os_log_type_enabled(v54, v55))
  {
    OUTLINED_FUNCTION_7();
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_38(v56);
    OUTLINED_FUNCTION_11_3();
    _os_log_impl(v57, v58, v59, v60, v61, 2u);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  sub_26947FBB8(v200[6].isa, v200[7].isa, v49);
  if (sub_269480178(v49))
  {
    v62 = sub_2694847DC();
    sub_269484ADC();
    v63 = OUTLINED_FUNCTION_5_3();
    if (os_log_type_enabled(v63, v64))
    {
      OUTLINED_FUNCTION_7();
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_38(v65);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }

    v71 = v49;
LABEL_16:
    sub_2694645DC(v71, &qword_280318060, &qword_269486538);
    return 1;
  }

  if ((v195 & 1) == 0)
  {
    v79 = sub_2694847DC();
    sub_269484ADC();
    v80 = OUTLINED_FUNCTION_5_3();
    if (os_log_type_enabled(v80, v81))
    {
      OUTLINED_FUNCTION_7();
      v82 = swift_slowAlloc();
      OUTLINED_FUNCTION_38(v82);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v83, v84, v85, v86, v87, 2u);
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();

      sub_2694645DC(v49, &qword_280318060, &qword_269486538);
      return 2;
    }

LABEL_30:
    v116 = v49;
    goto LABEL_31;
  }

  v73 = v200[5].isa;
  if (!v73[2].isa)
  {
    v88 = sub_2694847DC();
    sub_269484AEC();
    v89 = OUTLINED_FUNCTION_5();
    if (os_log_type_enabled(v89, v90))
    {
      v72 = 2;
      OUTLINED_FUNCTION_7();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_12(v91);
      OUTLINED_FUNCTION_42();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      v97 = OUTLINED_FUNCTION_1();
      MEMORY[0x26D63EF60](v97);

      sub_2694645DC(v49, &qword_280318060, &qword_269486538);
      return v72;
    }

    goto LABEL_30;
  }

  v74 = v187;
  sub_269481F10(v49, v187, &qword_280318060, &qword_269486538);
  v75 = v197;
  v76 = &unk_281328000;
  v77 = &loc_269485000;
  if (__swift_getEnumTagSinglePayload(v74, 1, v197) == 1)
  {
    sub_2694645DC(v74, &qword_280318060, &qword_269486538);
    v78 = v188;
  }

  else
  {
    v98 = v74;
    v99 = v189;
    v100 = v186;
    v195 = *(v189 + 32);
    v195(v186, v98, v75);
    v101 = sub_26947E4F8();
    if (v203)
    {
      sub_2694657CC(&v202, v205);
      sub_26946F0D0(v205, &v202);
      v102 = sub_2694847DC();
      v103 = sub_269484ADC();
      if (os_log_type_enabled(v102, v103))
      {
        OUTLINED_FUNCTION_26();
        v104 = swift_slowAlloc();
        v200 = v73;
        v105 = v104;
        OUTLINED_FUNCTION_9();
        v187 = swift_slowAlloc();
        v206 = v187;
        *v105 = 136315138;
        v106 = v49;
        v107 = v203;
        v108 = v204;
        __swift_project_boxed_opaque_existential_1(&v202, v203);
        v109 = *(v108 + 8);
        v110 = v108;
        v49 = v106;
        v111 = v109(v107, v110);
        v113 = v112;
        __swift_destroy_boxed_opaque_existential_0Tm(&v202);
        v114 = sub_269463C18(v111, v113, &v206);

        *(v105 + 4) = v114;
        _os_log_impl(&dword_269461000, v102, v103, "identified announce type as %s - updating the cache so followup can also use this as announce task if needed", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v187);
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();
        v73 = v200;
        OUTLINED_FUNCTION_4();
        MEMORY[0x26D63EF60]();

        v115 = v205;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v205);
        v115 = &v202;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v115);
      v78 = v188;
      v117 = v194;
      v75 = v197;
      v195(v194, v186, v197);
      __swift_storeEnumTagSinglePayload(v117, 0, 1, v75);
      v118 = OBJC_IVAR____TtC21SiriTurnTakingManager15AnnounceMatcher_announceTaskCache;
      v50 = v199;
      swift_beginAccess();
      v119 = v117;
      v76 = &unk_281328000;
      sub_269481FD0(v119, v50 + v118);
      swift_endAccess();
    }

    else
    {
      (*(v99 + 8))(v100, v75, v101);
      sub_2694645DC(&v202, &qword_280318068, &unk_269486540);
      v78 = v188;
    }

    v77 = &loc_269485000;
  }

  v120 = v76[223];
  swift_beginAccess();
  sub_269481F10(v50 + v120, v78, &qword_280318060, &qword_269486538);
  if (__swift_getEnumTagSinglePayload(v78, 1, v75) == 1)
  {
    sub_2694645DC(v78, &qword_280318060, &qword_269486538);
    v121 = sub_2694847DC();
    sub_269484AEC();
    v122 = OUTLINED_FUNCTION_5_3();
    if (os_log_type_enabled(v122, v123))
    {
      OUTLINED_FUNCTION_7();
      v124 = swift_slowAlloc();
      OUTLINED_FUNCTION_38(v124);
      OUTLINED_FUNCTION_11_3();
      _os_log_impl(v125, v126, v127, v128, v129, 2u);
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }

    v130 = v49;
    goto LABEL_66;
  }

  v131 = v189;
  v132 = v196;
  (*(v189 + 32))(v196, v78, v75);
  sub_26947E4F8();
  if (!v203)
  {
    sub_2694645DC(&v202, &qword_280318068, &unk_269486540);
    v158 = *(v131 + 16);
    v159 = v185;
    v158(v185, v132, v75);
    v160 = sub_2694847DC();
    sub_269484AEC();
    v161 = OUTLINED_FUNCTION_5_3();
    if (os_log_type_enabled(v161, v162))
    {
      OUTLINED_FUNCTION_26();
      v163 = swift_slowAlloc();
      v200 = v160;
      v164 = v163;
      OUTLINED_FUNCTION_9();
      v201 = swift_slowAlloc();
      *&v202 = v201;
      *v164 = v77[163];
      sub_2694844DC();
      v165 = v52;
      v205[3] = v75;
      v205[4] = sub_269481F78();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v205);
      v158(boxed_opaque_existential_1, v159, v75);
      v167 = sub_2694844CC();
      v169 = v168;
      v170 = *(v131 + 8);
      v170(v159, v75);
      __swift_destroy_boxed_opaque_existential_0Tm(v205);
      v171 = sub_269463C18(v167, v169, &v202);

      v172 = v164;
      *(v164 + 4) = v171;
      v173 = v200;
      _os_log_impl(&dword_269461000, v200, v165, "Unable to identify announce type of task: %s.", v172, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v201);
      v174 = OUTLINED_FUNCTION_1();
      MEMORY[0x26D63EF60](v174);
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();

      v170(v132, v75);
    }

    else
    {

      v177 = *(v131 + 8);
      v177(v159, v75);
      v177(v132, v75);
    }

    goto LABEL_65;
  }

  sub_2694657CC(&v202, v205);
  v134 = v73[2].isa;
  if (!v134)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v205);
    v175 = OUTLINED_FUNCTION_7_4();
    v176(v175);
LABEL_65:
    v130 = v198;
LABEL_66:
    sub_2694645DC(v130, &qword_280318060, &qword_269486538);
    return 0;
  }

  v207 = 0;
  v135 = 0;
  v136 = v190;
  v195 = (v73 + ((*(v136 + 80) + 32) & ~*(v136 + 80)));
  v188 = v190 + 16;
  v187 = (v189 + 16);
  v186 = (v190 + 8);
  v184 = 0x8000000269486860;
  v182 = (v134 - 1);
  *&v133 = v77[163];
  v183 = v133;
  v200 = v73;
  v185 = v134;
LABEL_44:
  v137 = v135;
  while (2)
  {
    if (v137 >= v73[2].isa)
    {
      __break(1u);
LABEL_75:
      JUMPOUT(0);
    }

    v138 = v52;
    v139 = v192;
    v140 = v193;
    (*(v136 + 16))(v192, v195 + *(v136 + 72) * v137, v193);
    v141 = v194;
    (*v187)(v194, v196, v75);
    v142 = __swift_storeEnumTagSinglePayload(v141, 0, 1, v75);
    v143 = sub_26947EF40(v142, v139, v205);
    v144 = v139;
    v52 = v138;
    (*(v136 + 8))(v144, v140);
    sub_2694645DC(v141, &qword_280318060, &qword_269486538);
    v145 = sub_2694847DC();
    sub_269484ADC();
    v146 = OUTLINED_FUNCTION_5();
    if (os_log_type_enabled(v146, v147))
    {
      OUTLINED_FUNCTION_26();
      v148 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v149 = swift_slowAlloc();
      *&v202 = v149;
      *v148 = v183;
      v208 = v143;
      v150 = sub_26948494C();
      v152 = sub_269463C18(v150, v151, &v202);

      *(v148 + 4) = v152;
      _os_log_impl(&dword_269461000, v145, v140, "With announce followup evaluation result from Announce rule is %s", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v149);
      v136 = v190;
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }

    v153 = v137 + 1;
    v73 = v200;
    switch(v143)
    {
      case 1:
        goto LABEL_72;
      case 2:
        OUTLINED_FUNCTION_29_1();
        goto LABEL_51;
      case 3:
        OUTLINED_FUNCTION_27_1();
        goto LABEL_51;
      default:
LABEL_51:
        OUTLINED_FUNCTION_14_2();
        v154 = sub_269484D5C();

        if (v154)
        {
          goto LABEL_73;
        }

        break;
    }

    switch(v143)
    {
      case 0:
        goto LABEL_55;
      case 1:
        OUTLINED_FUNCTION_29_1();
        goto LABEL_55;
      case 2:

        goto LABEL_59;
      case 3:
        OUTLINED_FUNCTION_27_1();
LABEL_55:
        v155 = sub_269484D5C();

        if ((v155 & 1) == 0)
        {
          v137 = (v137 + 1);
          v75 = v197;
          if (v185 == v153)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v205);
            v179 = OUTLINED_FUNCTION_7_4();
            v180(v179);
            sub_2694645DC(v198, &qword_280318060, &qword_269486538);
            if (v207)
            {
              return 2;
            }

            return 0;
          }

          continue;
        }

LABEL_59:
        v135 = (v137 + 1);
        v207 = 1;
        v75 = v197;
        if (v182 != v137)
        {
          goto LABEL_44;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v205);
        v156 = OUTLINED_FUNCTION_7_4();
        v157(v156);
        v116 = v198;
LABEL_31:
        sub_2694645DC(v116, &qword_280318060, &qword_269486538);
        return 2;
      default:
        goto LABEL_75;
    }
  }
}

BOOL sub_26947E448(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

double sub_26947E4F8()
{
  v0 = sub_26948438C();
  v1 = OUTLINED_FUNCTION_0_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2694843AC();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  sub_26948437C();
  v14 = sub_2694844FC();
  (*(v8 + 8))(v13, v5);
  v15 = MEMORY[0x26D63E100](v14);
  if (sub_269484008(v15))
  {
    sub_26948402C(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D63E800](0, v15);
    }

    else
    {
      v16 = *(v15 + 32);
    }

    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v17 = sub_2694847EC();
    __swift_project_value_buffer(v17, qword_2813286A0);

    v18 = sub_2694847DC();
    v19 = sub_269484ADC();

    v20 = os_log_type_enabled(v18, v19);
    v21 = &loc_269485000;
    v22 = MEMORY[0x277D84F70];
    if (v20)
    {
      v23 = swift_slowAlloc();
      *&v52 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = sub_26948471C();
      v26 = OUTLINED_FUNCTION_26_1(v24, v25);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_26948470C();
      v29 = OUTLINED_FUNCTION_26_1(v27, v28);

      *(v23 + 14) = v29;
      v21 = &loc_269485000;
      v22 = MEMORY[0x277D84F70];
      _os_log_impl(&dword_269461000, v18, v19, "Found UsoTask %s::%s.", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }

    sub_26948453C();

    if (*(&v53 + 1))
    {
      sub_269480FBC(&v52, v51);
      sub_269464C8C(v51, v50);
      sub_26948457C();
      OUTLINED_FUNCTION_2_7();
      if (OUTLINED_FUNCTION_21_1() || (sub_2694845EC(), OUTLINED_FUNCTION_2_7(), OUTLINED_FUNCTION_21_1()) || (sub_2694846EC(), OUTLINED_FUNCTION_2_7(), OUTLINED_FUNCTION_21_1()) || (sub_26948455C(), OUTLINED_FUNCTION_2_7(), OUTLINED_FUNCTION_21_1()))
      {

        sub_26948047C(&v52);
        OUTLINED_FUNCTION_18_2(&type metadata for AnnounceTypeOverrideMessages);
      }

      else
      {
        sub_2694846AC();
        OUTLINED_FUNCTION_2_7();
        if (OUTLINED_FUNCTION_21_1())
        {

          sub_2694804FC(&v52);
          OUTLINED_FUNCTION_18_2(&type metadata for AnnounceTypeOverridePhoneCall);
        }

        else
        {
          sub_26948463C();
          OUTLINED_FUNCTION_2_7();
          if (OUTLINED_FUNCTION_21_1())
          {

            sub_269480594(&v52);
            OUTLINED_FUNCTION_18_2(&type metadata for AnnounceTypeOverrideGenericNotification);
          }

          else
          {
            sub_2694846DC();
            OUTLINED_FUNCTION_2_7();
            if (OUTLINED_FUNCTION_21_1() || (sub_2694845DC(), OUTLINED_FUNCTION_2_7(), OUTLINED_FUNCTION_21_1()) || (sub_2694845FC(), OUTLINED_FUNCTION_2_7(), OUTLINED_FUNCTION_21_1()))
            {

              sub_269480620(&v52);
              OUTLINED_FUNCTION_18_2(&type metadata for AnnounceTypeOverrideReminder);
            }

            else
            {
              sub_2694846BC();
              OUTLINED_FUNCTION_2_7();
              if (OUTLINED_FUNCTION_21_1())
              {

                sub_2694806A0(&v52);
                OUTLINED_FUNCTION_18_2(&type metadata for AnnounceTypeOverrideVoicemail);
              }

              else
              {
                sub_26948461C();
                OUTLINED_FUNCTION_2_7();
                if (OUTLINED_FUNCTION_21_1())
                {

                  sub_269480720(&v52);
                  OUTLINED_FUNCTION_18_2(&type metadata for AnnounceTypeOverrideIntercom);
                }

                else
                {
                  sub_26948464C();
                  OUTLINED_FUNCTION_2_7();
                  v21 = v22;
                  if (OUTLINED_FUNCTION_21_1() || (sub_26948466C(), OUTLINED_FUNCTION_2_7(), OUTLINED_FUNCTION_38_0()) || (sub_26948462C(), OUTLINED_FUNCTION_2_7(), OUTLINED_FUNCTION_38_0()) || (sub_26948465C(), OUTLINED_FUNCTION_2_7(), OUTLINED_FUNCTION_38_0()))
                  {

                    sub_2694807AC(&v52);
                    OUTLINED_FUNCTION_18_2(&type metadata for AnnounceTypeOverrideMitigationForIntercomRequest);
                  }

                  else
                  {
                    sub_2694845BC();
                    OUTLINED_FUNCTION_2_7();
                    if (!OUTLINED_FUNCTION_38_0())
                    {
                      __swift_destroy_boxed_opaque_existential_0Tm(v51);

                      OUTLINED_FUNCTION_28_1();
                      goto LABEL_15;
                    }

                    sub_26948082C(&v52);
                    OUTLINED_FUNCTION_18_2(&type metadata for AnnounceTypeOverrideWorkoutReminder);
                  }
                }
              }
            }
          }
        }
      }

      v30 = swift_allocObject();
      *v21 = v30;

      v31 = v53;
      *(v30 + 16) = v52;
      *(v30 + 32) = v31;
      *(v30 + 48) = v54;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      return result;
    }

    sub_2694645DC(&v52, &qword_280317F80, qword_2694867F0);

    v41 = sub_2694847DC();
    v42 = sub_269484AEC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *&v52 = swift_slowAlloc();
      *v43 = 136315394;
      v44 = sub_26948471C();
      v46 = OUTLINED_FUNCTION_26_1(v44, v45);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      v47 = sub_26948470C();
      v49 = OUTLINED_FUNCTION_26_1(v47, v48);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_269461000, v41, v42, "Unable to run codegen converter on UsoTask %s::%s.", v43, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }

    else
    {
    }

    goto LABEL_24;
  }

  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v33 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v33, qword_2813286A0);

  v34 = sub_2694847DC();
  v35 = sub_269484AEC();

  if (os_log_type_enabled(v34, v35))
  {
    OUTLINED_FUNCTION_26();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_9();
    v37 = swift_slowAlloc();
    *&v52 = v37;
    *v36 = 136315138;
    v38 = sub_2694846FC();
    v40 = OUTLINED_FUNCTION_26_1(v38, v39);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_269461000, v34, v35, "Unable to convert UsoGraphSiriNL to UsoTask for graph %s.", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();

LABEL_24:

    return OUTLINED_FUNCTION_28_1();
  }

  return OUTLINED_FUNCTION_28_1();
}

uint64_t sub_26947EF40(uint64_t a1, uint64_t a2, void *a3)
{
  v87 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318070, &qword_269486558);
  v6 = OUTLINED_FUNCTION_17_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v86 - v9;
  v11 = sub_26948444C();
  v12 = OUTLINED_FUNCTION_0_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v21 = *(v20 + 48);
  v22 = OUTLINED_FUNCTION_36_0();
  v24 = v23(v22, v20);
  if (v24)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_2694843BC();
  sub_2694829A0(v26, v10);

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    (*(v14 + 32))(v19, v10, v11);
    if (sub_26948443C() & 1) != 0 || (sub_26948441C() & 1) != 0 && (v47 = a3[3], v48 = a3[4], __swift_project_boxed_opaque_existential_1(a3, v47), ((*(v48 + 16))(v47, v48)))
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v33 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v33, qword_2813286A0);
      v34 = sub_2694847DC();
      sub_269484ADC();
      v35 = OUTLINED_FUNCTION_5();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_15;
      }
    }

    else if (sub_26948440C() & 1) != 0 && (sub_26947F6D8(a3))
    {
      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v49 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v49, qword_2813286A0);
      v34 = sub_2694847DC();
      sub_269484ADC();
      v50 = OUTLINED_FUNCTION_5();
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if ((sub_2694843FC() & 1) == 0 || (sub_26947F81C(a3) & 1) == 0)
      {
        v55 = sub_26947F960();
        if (v55)
        {
          v56 = v55;
          v57 = a3[4];
          __swift_project_boxed_opaque_existential_1(a3, a3[3]);
          v58 = *(v57 + 40);
          v59 = OUTLINED_FUNCTION_36_0();
          if (v60(v59, v57))
          {
            sub_26947FB38(v89);
            v61 = sub_26948103C(v89);
            sub_269481E40(v89);
            switch(v61)
            {
              case 1:
                OUTLINED_FUNCTION_32_0();

                break;
              default:
                OUTLINED_FUNCTION_14_2();
                v78 = sub_269484D5C();

                if ((v78 & 1) == 0)
                {
                  goto LABEL_49;
                }

                break;
            }

            v79 = OUTLINED_FUNCTION_13_3();
            v80(v79);

            return 1;
          }

LABEL_49:
          v81 = a3[3];
          v82 = a3[4];
          v83 = __swift_project_boxed_opaque_existential_1(a3, v81);
          v25 = sub_2694816C8(v83, v56, v87, v81, v82);
        }

        else
        {
          if (qword_281327EE0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
            swift_once();
          }

          v62 = sub_2694847EC();
          OUTLINED_FUNCTION_13_1(v62, qword_2813286A0);
          sub_26946F0D0(a3, v89);
          v63 = sub_2694847DC();
          v64 = sub_269484ADC();
          if (!os_log_type_enabled(v63, v64))
          {

            v76 = OUTLINED_FUNCTION_13_3();
            v77(v76);
            __swift_destroy_boxed_opaque_existential_0Tm(v89);
            return v25;
          }

          v65 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v88 = v87;
          *v65 = 136315394;
          v67 = v90;
          v66 = v91;
          __swift_project_boxed_opaque_existential_1(v89, v90);
          v68 = *(v66 + 8);
          HIDWORD(v86) = v64;
          v69 = v68(v67, v66);
          v71 = v70;
          __swift_destroy_boxed_opaque_existential_0Tm(v89);
          v72 = sub_269463C18(v69, v71, &v88);

          *(v65 + 4) = v72;
          *(v65 + 12) = 2080;
          if (v24)
          {
            v73 = 0x65764F746F6E6F64;
          }

          else
          {
            v73 = 0x657461676974696DLL;
          }

          if (v24)
          {
            v74 = 0xED00006564697272;
          }

          else
          {
            v74 = 0xE800000000000000;
          }

          v75 = sub_269463C18(v73, v74, &v88);

          *(v65 + 14) = v75;
          _os_log_impl(&dword_269461000, v63, BYTE4(v86), "This might be a info domains request for which we donot support DONOT mitigate overrides - announceType - %s, returning %s", v65, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
          OUTLINED_FUNCTION_4();
          MEMORY[0x26D63EF60]();
        }

        v84 = OUTLINED_FUNCTION_13_3();
        v85(v84);
        return v25;
      }

      if (qword_281327EE0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v52 = sub_2694847EC();
      OUTLINED_FUNCTION_13_1(v52, qword_2813286A0);
      v34 = sub_2694847DC();
      sub_269484ADC();
      v53 = OUTLINED_FUNCTION_5();
      if (!os_log_type_enabled(v53, v54))
      {
LABEL_15:

        v44 = OUTLINED_FUNCTION_13_3();
        v45(v44);
        return 1;
      }
    }

    OUTLINED_FUNCTION_7();
    v37 = swift_slowAlloc();
    OUTLINED_FUNCTION_12(v37);
    OUTLINED_FUNCTION_42();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    v43 = OUTLINED_FUNCTION_1();
    MEMORY[0x26D63EF60](v43);
    goto LABEL_15;
  }

  sub_2694645DC(v10, &qword_280318070, &qword_269486558);
  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v27 = sub_2694847EC();
  OUTLINED_FUNCTION_13_1(v27, qword_2813286A0);
  v28 = sub_2694847DC();
  sub_269484AEC();
  v29 = OUTLINED_FUNCTION_5_3();
  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_7();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_27(&dword_269461000, v31, v32, "Unable to retrieve UserDialogAct from parse.");
    OUTLINED_FUNCTION_4();
    MEMORY[0x26D63EF60]();
  }

  return 0;
}

uint64_t sub_26947F6D8(void *a1)
{
  if (OUTLINED_FUNCTION_30_0(a1) == &type metadata for AnnounceTypeOverrideMessages)
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v8 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v8, qword_2813286A0);
    v9 = sub_2694847DC();
    sub_269484ADC();
    v10 = OUTLINED_FUNCTION_5();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      v12[1] = v1 & 1;
      OUTLINED_FUNCTION_42();
      _os_log_impl(v13, v14, v15, v16, v17, 8u);
      v18 = OUTLINED_FUNCTION_1();
      MEMORY[0x26D63EF60](v18);
    }

    v19 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v20 = *(v19 + 24);
    v21 = OUTLINED_FUNCTION_36_0();
    return v22(v21, v19) & v1 & 1;
  }

  else
  {
    v3 = v2[3];
    v4 = v2[4];
    v5 = OUTLINED_FUNCTION_17_2();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    return (*(v4 + 24))(v3, v4) & 1;
  }
}

uint64_t sub_26947F81C(void *a1)
{
  if (OUTLINED_FUNCTION_30_0(a1) == &type metadata for AnnounceTypeOverrideMessages)
  {
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v8 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v8, qword_2813286A0);
    v9 = sub_2694847DC();
    sub_269484ADC();
    v10 = OUTLINED_FUNCTION_5();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      v12[1] = v1 & 1;
      OUTLINED_FUNCTION_42();
      _os_log_impl(v13, v14, v15, v16, v17, 8u);
      v18 = OUTLINED_FUNCTION_1();
      MEMORY[0x26D63EF60](v18);
    }

    v19 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v20 = *(v19 + 32);
    v21 = OUTLINED_FUNCTION_36_0();
    return v22(v21, v19) & v1 & 1;
  }

  else
  {
    v3 = v2[3];
    v4 = v2[4];
    v5 = OUTLINED_FUNCTION_17_2();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    return (*(v4 + 32))(v3, v4) & 1;
  }
}

uint64_t sub_26947F960()
{
  v0 = sub_2694844EC();
  if (sub_269484008(v0))
  {
    sub_26948402C(0, (v0 & 0xC000000000000001) == 0, v0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D63E800](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

void sub_26947FB38(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  sub_2694848AC();
  *a1 = 0x6C61626F6C47;
  a1[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_25_1(2.3694e-38);
  a1[3] = &unk_2879FCC18;
  a1[4] = v2;
}

uint64_t sub_26947FBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318060, &qword_269486538);
  v6 = OUTLINED_FUNCTION_17_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_2();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v60[-v13];
  v15 = sub_26948438C();
  v16 = OUTLINED_FUNCTION_0_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_2();
  v23 = (v21 - v22);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v60[-v26];
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v64 = v28;
  OUTLINED_FUNCTION_13();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v60[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v60[-v33];
  sub_269482988(a1, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    v37 = *(v18 + 32);
    v37(v34, v14, v15);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v38 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v38, qword_2813286A0);
    v39 = *(v18 + 16);
    v39(v32, v34, v15);
    v40 = sub_2694847DC();
    v41 = sub_269484ADC();
    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_26();
      v42 = swift_slowAlloc();
      v63 = v18 + 32;
      v43 = v42;
      OUTLINED_FUNCTION_9();
      v62 = swift_slowAlloc();
      v66 = v62;
      *v43 = 136315138;
      v61 = v41;
      v39(v64, v32, v15);
      v44 = sub_26948494C();
      v46 = v45;
      (*(v18 + 8))(v32, v15);
      v47 = sub_269463C18(v44, v46, &v66);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_269461000, v40, v61, "Found announceTask in SessionState's activeTasks: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }

    else
    {

      (*(v18 + 8))(v32, v15);
    }

    v36 = v65;
    v37(v65, v34, v15);
    goto LABEL_16;
  }

  sub_2694645DC(v14, &qword_280318060, &qword_269486538);
  sub_269482988(a2, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    v48 = *(v18 + 32);
    v48(v27, v11, v15);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v49 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v49, qword_2813286A0);
    v50 = *(v18 + 16);
    v50(v23, v27, v15);
    v51 = sub_2694847DC();
    v52 = sub_269484ADC();
    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_26();
      v53 = swift_slowAlloc();
      v63 = v18 + 32;
      v54 = v53;
      OUTLINED_FUNCTION_9();
      v62 = swift_slowAlloc();
      v66 = v62;
      *v54 = 136315138;
      v61 = v52;
      v50(v64, v23, v15);
      v55 = sub_26948494C();
      v57 = v56;
      (*(v18 + 8))(v23, v15);
      v58 = sub_269463C18(v55, v57, &v66);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_269461000, v51, v61, "Found announceTask in SessionState's executedTasks: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }

    else
    {

      (*(v18 + 8))(v23, v15);
    }

    v36 = v65;
    v48(v65, v27, v15);
LABEL_16:
    v35 = 0;
    return __swift_storeEnumTagSinglePayload(v36, v35, 1, v15);
  }

  sub_2694645DC(v11, &qword_280318060, &qword_269486538);
  v35 = 1;
  v36 = v65;
  return __swift_storeEnumTagSinglePayload(v36, v35, 1, v15);
}

BOOL sub_269480178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318060, &qword_269486538);
  v3 = OUTLINED_FUNCTION_17_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - v6;
  v8 = sub_26948438C();
  v9 = OUTLINED_FUNCTION_0_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  sub_269481F10(a1, v7, &qword_280318060, &qword_269486538);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2694645DC(v7, &qword_280318060, &qword_269486538);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v17 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v17, qword_2813286A0);
    v18 = sub_2694847DC();
    sub_269484ADC();
    v19 = OUTLINED_FUNCTION_5_3();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_7();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27(&dword_269461000, v21, v22, "Parse does not contain an announce intercom task.");
      OUTLINED_FUNCTION_4();
      MEMORY[0x26D63EF60]();
    }
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    sub_26947E4F8();
    if (v43)
    {
      v23 = *(v11 + 8);
      v24 = OUTLINED_FUNCTION_17_2();
      v25(v24);
      sub_2694657CC(&v42, v44);
      __swift_project_boxed_opaque_existential_1(v44, v44[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      return DynamicType == &type metadata for AnnounceTypeOverrideMitigationForIntercomRequest;
    }

    sub_2694645DC(&v42, &qword_280318068, &unk_269486540);
    if (qword_281327EE0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v28 = sub_2694847EC();
    OUTLINED_FUNCTION_13_1(v28, qword_2813286A0);
    v29 = sub_2694847DC();
    sub_269484ADC();
    v30 = OUTLINED_FUNCTION_5();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_7();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_12(v32);
      OUTLINED_FUNCTION_42();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      v38 = OUTLINED_FUNCTION_1();
      MEMORY[0x26D63EF60](v38);
    }

    v39 = *(v11 + 8);
    v40 = OUTLINED_FUNCTION_17_2();
    v41(v40);
  }

  return 0;
}

void sub_26948047C(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_23_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  sub_2694848AC();
  OUTLINED_FUNCTION_22_1(16);
  *(a1 + 16) = 0;
  *(a1 + 17) = 16843009;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v2;
}

double sub_2694804FC@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  v2 = sub_2694848AC();
  strcpy(a1, "AnnounceCalls");
  *(a1 + 14) = -4864;
  *&result = 257;
  *(a1 + 16) = 257;
  *(a1 + 20) = 1;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_269480594@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  v2 = MEMORY[0x277D84F90];
  result = sub_2694848AC();
  *a1 = 0xD00000000000001BLL;
  *(a1 + 8) = 0x80000002694872D0;
  *(a1 + 16) = 16843009;
  *(a1 + 20) = 1;
  *(a1 + 24) = v2;
  *(a1 + 32) = result;
  return result;
}

void sub_269480620(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_23_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  sub_2694848AC();
  OUTLINED_FUNCTION_22_1(16);
  OUTLINED_FUNCTION_25_1(2.3694e-38);
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v2;
}

void sub_2694806A0(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_23_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  sub_2694848AC();
  OUTLINED_FUNCTION_22_1(17);
  OUTLINED_FUNCTION_25_1(2.3694e-38);
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v2;
}

void sub_269480720(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  v2 = MEMORY[0x277D84F90];
  sub_2694848AC();
  *a1 = 0xD000000000000010;
  a1[1] = 0x8000000269487330;
  OUTLINED_FUNCTION_25_1(2.3694e-38);
  a1[3] = v2;
  a1[4] = v3;
}

void sub_2694807AC(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_23_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  sub_2694848AC();
  OUTLINED_FUNCTION_22_1(26);
  OUTLINED_FUNCTION_25_1(2.3694e-38);
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v2;
}

void sub_26948082C(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_23_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
  sub_2694848AC();
  OUTLINED_FUNCTION_22_1(23);
  *(a1 + 16) = 0;
  *(a1 + 17) = 16843009;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = v2;
}

void sub_2694808B4()
{
  sub_269480944();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_269480944()
{
  if (!qword_281328698)
  {
    sub_26948438C();
    v0 = sub_269484B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281328698);
    }
  }
}

uint64_t sub_269480A74(char a1)
{
  result = 0x656C62616E65;
  switch(a1)
  {
    case 1:
      return 0x656C6261736964;
    case 2:
      return 0x6B6361626C6C6163;
    case 3:
      return 1819042147;
    case 4:
      return 0x726577736E61;
    case 5:
      return 0x7075676E6168;
    case 6:
      return 1684956531;
    case 7:
      return 0x796C706572;
    case 8:
      return 2036427888;
    case 9:
      v3 = 0x736575716572;
      goto LABEL_17;
    case 10:
      return 0xD000000000000013;
    case 11:
      return 0x657A6F6F6E73;
    case 12:
      return 0x736972616D6D7573;
    case 13:
      v4 = 1633972341;
      goto LABEL_21;
    case 14:
      return 1886352499;
    case 15:
      return 1684104562;
    case 16:
      return 0x746165706572;
    case 17:
      return 1852141679;
    case 18:
      v4 = 1634038371;
LABEL_21:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 19:
      result = 0x6573756170;
      break;
    case 20:
      result = 0x7463616572;
      break;
    case 21:
      v3 = 0x636165726E75;
LABEL_17:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 22:
      result = 0x6552657461647075;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_269480C5C(char a1)
{
  result = 0x4D5F6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x455F6E6F6D6D6F63;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x415F6E6F6D6D6F63;
      break;
    case 5:
    case 7:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x525F6E6F6D6D6F63;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x535F6E6F6D6D6F63;
      break;
    case 10:
      result = 0x6E456F4E5F6F7375;
      break;
    case 11:
      result = 0x575F6E6F6D6D6F63;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_269480DE8(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_269480E60@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_269480E90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_269484DCC();
  sub_26948499C();
  v6 = sub_269484DEC();

  return sub_269480F08(a1, a2, v6);
}

unint64_t sub_269480F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_269484D5C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_269480FBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_269480FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_269484D5C() & 1;
  }
}

uint64_t sub_26948103C(uint64_t a1)
{
  v49[3] = &type metadata for AnnounceTypeGlobalOverride;
  v49[4] = &off_2879FE1E8;
  v2 = swift_allocObject();
  v49[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  sub_269481EB8(a1, v48);
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v4 = sub_2694847EC();
  __swift_project_value_buffer(v4, qword_2813286A0);
  sub_26946F0D0(v49, v48);
  sub_26946F0D0(v49, v46);
  sub_26946F0D0(v49, v45);

  v5 = sub_2694847DC();
  v6 = sub_269484ADC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44[0] = v43;
    *v7 = 136316162;
    v8 = sub_26948471C();
    v10 = sub_269463C18(v8, v9, v44);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_26948470C();
    v13 = sub_269463C18(v11, v12, v44);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    v14 = __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v15 = *v14;
    v16 = v14[1];

    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    v17 = sub_269463C18(v15, v16, v44);

    *(v7 + 24) = v17;
    *(v7 + 32) = 2080;
    v18 = __swift_project_boxed_opaque_existential_1(v46, v47)[3];

    v20 = MEMORY[0x26D63E620](v19, MEMORY[0x277D837D0]);
    v22 = v21;

    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    v23 = sub_269463C18(v20, v22, v44);

    *(v7 + 34) = v23;
    *(v7 + 42) = 2080;
    v24 = __swift_project_boxed_opaque_existential_1(v45, v45[3])[4];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
    v25 = sub_26948489C();
    v27 = v26;

    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    v28 = sub_269463C18(v25, v27, v44);

    *(v7 + 44) = v28;
    _os_log_impl(&dword_269461000, v5, v6, "Validating task: %s::%s\nwith AnnounceType: %s\nwith allowed verb set: %s\nand allowed entityToVerb map: %s", v7, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x26D63EF60](v43, -1, -1);
    MEMORY[0x26D63EF60](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
  }

  v29 = *(a1 + 24);
  v48[0] = sub_26948470C();
  v48[1] = v30;
  MEMORY[0x28223BE20](v48[0]);
  v42 = v48;
  v31 = sub_26947E448(sub_269481EF0, v41, v29);

  if (v31)
  {
    v32 = 1;
    goto LABEL_30;
  }

  if (*(a1 + 19))
  {
    v32 = 2;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a1 + 32);
  v34 = sub_26948471C();
  v36 = sub_26947D37C(v34, v35, v33);

  if (v36)
  {
    sub_26948453C();
    sub_269481F10(v48, v46, &qword_280317F80, qword_2694867F0);
    if (v47)
    {
      sub_2694845AC();
      if (swift_dynamicCast())
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_2694645DC(v46, &qword_280317F80, qword_2694867F0);
    }

    sub_269481F10(v48, v46, &qword_280317F80, qword_2694867F0);
    if (!v47)
    {
      sub_2694645DC(v46, &qword_280317F80, qword_2694867F0);
LABEL_24:
      v46[0] = sub_26948470C();
      v46[1] = v38;
      MEMORY[0x28223BE20](v46[0]);
      v42 = v46;
      v39 = sub_26947E448(sub_26948218C, v41, v36);

      sub_2694645DC(v48, &qword_280317F80, qword_2694867F0);

      if (v39)
      {
        v32 = 1;
      }

      else
      {
        v32 = v32;
      }

      goto LABEL_30;
    }

    sub_2694845CC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_18:

    sub_26948453C();
    if (v47)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318078, &unk_269486560);
      if (swift_dynamicCast())
      {

        sub_26948468C();

        if (!v46[0])
        {

          goto LABEL_29;
        }

        v37 = sub_26948451C();

        if (v37)
        {

          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_2694645DC(v46, &qword_280317F80, qword_2694867F0);
    }

LABEL_29:
    sub_2694645DC(v48, &qword_280317F80, qword_2694867F0);
    v32 = 2;
  }

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  return v32;
}

uint64_t sub_2694816C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55[3] = a4;
  v55[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v10 = sub_2694847EC();
  __swift_project_value_buffer(v10, qword_2813286A0);
  sub_26946F0D0(v55, v54);
  sub_26946F0D0(v55, v52);
  sub_26946F0D0(v55, v51);

  v11 = sub_2694847DC();
  v12 = sub_269484ADC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50[0] = v48;
    *v13 = 136316162;
    v14 = sub_26948471C();
    v16 = sub_269463C18(v14, v15, v50);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = sub_26948470C();
    v19 = sub_269463C18(v17, v18, v50);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v20 = (*(a5 + 8))(a4, a5);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v23 = sub_269463C18(v20, v22, v50);

    *(v13 + 24) = v23;
    *(v13 + 32) = 2080;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v47 = v12;
    v24 = *(a5 + 56);
    v24(a4, a5);
    v49 = a2;
    v25 = MEMORY[0x26D63E620]();
    v27 = v26;

    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    v28 = sub_269463C18(v25, v27, v50);

    *(v13 + 34) = v28;
    *(v13 + 42) = 2080;
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    (*(a5 + 64))(a4, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317FE0, &qword_269486550);
    v29 = sub_26948489C();
    v31 = v30;

    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    v32 = sub_269463C18(v29, v31, v50);

    *(v13 + 44) = v32;
    _os_log_impl(&dword_269461000, v11, v47, "Validating task: %s::%s\nwith AnnounceType: %s\nwith allowed verb set: %s\nand allowed entityToVerb map: %s", v13, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x26D63EF60](v48, -1, -1);
    MEMORY[0x26D63EF60](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v24 = *(a5 + 56);
  }

  v33 = (v24)(a4, a5);
  v54[0] = sub_26948470C();
  v54[1] = v34;
  MEMORY[0x28223BE20](v54[0]);
  v46 = v54;
  v35 = sub_26947E448(sub_26948218C, v45, v33);

  if (v35)
  {
    v36 = 1;
    goto LABEL_30;
  }

  if ((*(a5 + 48))(a4, a5))
  {
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  v37 = (*(a5 + 64))(a4, a5);
  v38 = sub_26948471C();
  v40 = sub_26947D37C(v38, v39, v37);

  if (v40)
  {
    sub_26948453C();
    sub_269481F10(v54, v52, &qword_280317F80, qword_2694867F0);
    if (v53)
    {
      sub_2694845AC();
      if (swift_dynamicCast())
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_2694645DC(v52, &qword_280317F80, qword_2694867F0);
    }

    sub_269481F10(v54, v52, &qword_280317F80, qword_2694867F0);
    if (!v53)
    {
      sub_2694645DC(v52, &qword_280317F80, qword_2694867F0);
LABEL_24:
      v52[0] = sub_26948470C();
      v52[1] = v42;
      MEMORY[0x28223BE20](v52[0]);
      v46 = v52;
      v43 = sub_26947E448(sub_26948218C, v45, v40);

      sub_2694645DC(v54, &qword_280317F80, qword_2694867F0);

      if (v43)
      {
        v36 = 1;
      }

      else
      {
        v36 = v36;
      }

      goto LABEL_30;
    }

    sub_2694845CC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_18:

    sub_26948453C();
    if (v53)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318078, &unk_269486560);
      if (swift_dynamicCast())
      {

        sub_26948468C();

        if (!v52[0])
        {

          goto LABEL_29;
        }

        v41 = sub_26948451C();

        if (v41)
        {

          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_2694645DC(v52, &qword_280317F80, qword_2694867F0);
    }

LABEL_29:
    sub_2694645DC(v54, &qword_280317F80, qword_2694867F0);
    v36 = 2;
  }

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  return v36;
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_269481F10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_269481F78()
{
  result = qword_280318080;
  if (!qword_280318080)
  {
    sub_26948438C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280318080);
  }

  return result;
}

uint64_t sub_269481FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318060, &qword_269486538);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2694820D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_269482114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_18_2(uint64_t a1@<X8>)
{
  v3 = *(v2 - 208);
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1, unint64_t a2)
{

  return sub_269463C18(a1, a2, (v2 - 120));
}

double OUTLINED_FUNCTION_28_1()
{
  v1 = *(v0 - 208);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return swift_dynamicCast();
}

uint64_t sub_2694822FC()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = sub_26948475C();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    sub_26948474C();
    sub_26948473C();
  }

  return result;
}

void sub_2694823F0(char a1)
{
  if (qword_281327EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_2694847EC();
  __swift_project_value_buffer(v2, qword_2813286A0);
  oslog = sub_2694847DC();
  v3 = sub_269484ADC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_269461000, oslog, v3, "AutoBugCapture#generateSnapshot ABC result: %{BOOL}d", v4, 8u);
    MEMORY[0x26D63EF60](v4, -1, -1);
  }
}

uint64_t sub_2694824F4(unsigned __int8 a1, char a2)
{
  v2 = 0x64657463656C6573;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x657461676974696DLL;
    }

    else
    {
      v4 = 0x74694D656279616DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xEE00646574616769;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x64657463656C6573;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x657461676974696DLL;
    }

    else
    {
      v2 = 0x74694D656279616DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xEE00646574616769;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_269482604(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000737365;
  v3 = 0x72506E6F74747562;
  v4 = a1;
  v5 = 0x72506E6F74747562;
  v6 = 0xEB00000000737365;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v6 = 0x8000000269486940;
      break;
    case 2:
      v6 = 0x8000000269486960;
      v5 = 0xD000000000000013;
      break;
    case 3:
      v5 = 0x6972546563696F76;
      v6 = 0xEC00000072656767;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x65636E756F6E6E61;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000010;
      v2 = 0x8000000269486940;
      break;
    case 2:
      v2 = 0x8000000269486960;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v3 = 0x6972546563696F76;
      v2 = 0xEC00000072656767;
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x65636E756F6E6E61;
      break;
    case 5:
      v2 = 0xE500000000000000;
      v3 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_269484D5C();
  }

  return v8 & 1;
}

uint64_t sub_2694827C8()
{
  OUTLINED_FUNCTION_16_2();
  v2 = 0xE800000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = 0x74694D746F6E6F64;
      v6 = 1952540521;
      goto LABEL_4;
    case 2:
      v5 = 0x65764F746F6E6F64;
      v6 = 1684632178;
LABEL_4:
      v2 = v6 | 0xED00006500000000;
      break;
    case 3:
      v5 = 0xD000000000000017;
      v2 = 0x8000000269486860;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_19_2();
      v8 = 1952540521;
      goto LABEL_9;
    case 2:
      v1 = 0x65764F746F6E6F64;
      v8 = 1684632178;
LABEL_9:
      v7 = v8 | 0xED00006500000000;
      break;
    case 3:
      v1 = 0xD000000000000017;
      v7 = 0x8000000269486860;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_3();
  }

  return v10 & 1;
}

uint64_t sub_269482910(char a1, char a2)
{
  v3 = sub_26946D5A4(a1);
  v5 = v4;
  if (v3 == sub_26946D5A4(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_3();
  }

  return v8 & 1;
}

uint64_t sub_2694829B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_269482A6C()
{
  v174 = sub_2694847CC();
  v0 = OUTLINED_FUNCTION_0_1(v174);
  v157 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v173 = v5 - v4;
  v6 = sub_2694844BC();
  v7 = OUTLINED_FUNCTION_0_1(v6);
  v176 = v8;
  v177 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v175 = v12 - v11;
  v13 = sub_2694843AC();
  v14 = OUTLINED_FUNCTION_0_1(v13);
  v160 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = sub_26948446C();
  v22 = OUTLINED_FUNCTION_0_1(v21);
  v159 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  v169 = sub_26948459C();
  v29 = OUTLINED_FUNCTION_0_1(v169);
  v171 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  v164 = v34 - v33;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318088, &qword_2694867D8);
  v35 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v37);
  v170 = &v156 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318090, &unk_2694867E0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_5();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_5();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v156 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v156 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v156 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318070, &qword_269486558);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v58 = &v156 - v57;
  v59 = sub_26948444C();
  v60 = OUTLINED_FUNCTION_0_1(v59);
  v179 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3();
  v178 = v65 - v64;
  if (sub_2694843CC())
  {
    v66 = sub_2694843BC();
    sub_2694829B8(v66, MEMORY[0x277D5DB80], v58);

    if (__swift_getEnumTagSinglePayload(v58, 1, v59) == 1)
    {
      v67 = &qword_280318070;
      v68 = &qword_269486558;
      v69 = v58;
LABEL_4:
      sub_2694645DC(v69, v67, v68);
      return 2;
    }

    v75 = *(v179 + 32);
    v156 = v59;
    v75(v178, v58);
    if (sub_26948441C() & 1) != 0 || (sub_26948443C() & 1) != 0 || (sub_26948440C())
    {
      v76 = OUTLINED_FUNCTION_0_3();
      v77(v76);
      return 1;
    }

    v79 = sub_2694844EC();
    if (sub_269484008(v79))
    {
      if ((v79 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D63E800](0, v79);
      }

      else
      {
        if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          OUTLINED_FUNCTION_0();
LABEL_102:
          v151 = sub_2694847EC();
          __swift_project_value_buffer(v151, qword_2813286A0);
          v152 = sub_2694847DC();
          v153 = sub_269484ADC();
          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            v155 = swift_slowAlloc();
            v180[0] = v155;
            *v154 = 136315394;
            *(v154 + 4) = sub_269463C18(v52, v28, v180);
            *(v154 + 12) = 2080;
            *(v154 + 14) = sub_269463C18(0x69726953796568, 0xE700000000000000, v180);
            _os_log_impl(&dword_269461000, v152, v153, "found identifier with namespace as %s with value %s overriding with donotMitigate", v154, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D63EF60](v155, -1, -1);
            MEMORY[0x26D63EF60](v154, -1, -1);
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v183);
          (*(v179 + 8))(v178, v156);
          goto LABEL_26;
        }

        v80 = *(v79 + 32);
      }
    }

    sub_26948453C();

    v81 = v156;
    if (!v182)
    {
      v85 = OUTLINED_FUNCTION_2_8();
      v86(v85, v81);
      v67 = &qword_280317F80;
      v68 = qword_2694867F0;
      v69 = &v181;
      goto LABEL_4;
    }

    sub_269480FBC(&v181, &v183);
    sub_269464C8C(&v183, &v181);
    sub_26948467C();
    if (OUTLINED_FUNCTION_8_3())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v183);
      v82 = OUTLINED_FUNCTION_2_8();
      v84 = v81;
LABEL_24:
      v83(v82, v84);
LABEL_25:

LABEL_26:
      __swift_destroy_boxed_opaque_existential_0Tm(&v181);
      return 1;
    }

    sub_26948469C();
    if (OUTLINED_FUNCTION_10_3())
    {

      sub_269464C8C(&v183, v180);
      if (OUTLINED_FUNCTION_14_3())
      {

        sub_26948450C();

        if (v180[0])
        {
          sub_26948458C();

          v87 = v169;
        }

        else
        {
          v87 = v169;
          __swift_storeEnumTagSinglePayload(v54, 1, 1, v169);
        }

        v104 = *MEMORY[0x277D5EB48];
        v177 = *(v171 + 104);
        v177(v52, v104, v87);
        OUTLINED_FUNCTION_7_5(v52);
        v106 = *(v105 + 48);
        v107 = v170;
        sub_269484050(v54, v170);
        sub_269484050(v52, v107 + v106);
        OUTLINED_FUNCTION_3_4(v107);
        if (v97)
        {
          v108 = &qword_280318090;
          v109 = &unk_2694867E0;
          OUTLINED_FUNCTION_13_4(v52);
          OUTLINED_FUNCTION_11_4();
          OUTLINED_FUNCTION_3_4(&qword_280318090 + v106);
          if (v97)
          {
            goto LABEL_75;
          }
        }

        else
        {
          sub_269484050(v107, v49);
          OUTLINED_FUNCTION_3_4(v107 + v106);
          if (!v110)
          {
            v114 = v171;
            v115 = v107 + v106;
            v116 = v164;
            (*(v171 + 32))(v164, v115, v87);
            sub_2694840C0();
            LODWORD(v176) = sub_2694848CC();
            v117 = *(v114 + 8);
            v117(v116, v169);
            v109 = &qword_280318090;
            OUTLINED_FUNCTION_12_3(v52);
            OUTLINED_FUNCTION_12_3(v54);
            v117(v49, v169);
            v87 = v169;
            OUTLINED_FUNCTION_12_3(v170);
            if (v176)
            {
              goto LABEL_76;
            }

            goto LABEL_65;
          }

          v109 = &unk_2694867E0;
          OUTLINED_FUNCTION_13_4(v52);
          OUTLINED_FUNCTION_11_4();
          (*(v171 + 8))(v49, v87);
        }

        sub_2694645DC(&qword_280318090, &qword_280318088, &qword_2694867D8);
LABEL_65:
        sub_26948450C();
        v111 = v166;
        v112 = v165;
        v113 = v167;
        if (v180[0])
        {
          sub_26948458C();
        }

        else
        {
          __swift_storeEnumTagSinglePayload(v167, 1, 1, v87);
        }

        v118 = v168;
        v177(v168, *MEMORY[0x277D5EB40], v87);
        OUTLINED_FUNCTION_7_5(v118);
        v120 = *(v119 + 48);
        sub_269484050(v113, v111);
        sub_269484050(v118, v111 + v120);
        OUTLINED_FUNCTION_3_4(v111);
        if (!v97)
        {
          sub_269484050(v111, v112);
          OUTLINED_FUNCTION_3_4(v111 + v120);
          if (!v123)
          {
            v126 = v112;
            v127 = v171;
            v128 = *(v171 + 32);
            v129 = OUTLINED_FUNCTION_17_3();
            v130(v129);
            sub_2694840C0();
            v131 = sub_2694848CC();
            v132 = *(v127 + 8);
            v132(v109, v87);
            OUTLINED_FUNCTION_12_3(v168);
            OUTLINED_FUNCTION_12_3(v167);
            v132(v126, v87);
            OUTLINED_FUNCTION_12_3(v111);
            if ((v131 & 1) == 0)
            {
              goto LABEL_81;
            }

LABEL_76:

            __swift_destroy_boxed_opaque_existential_0Tm(&v183);
            v121 = OUTLINED_FUNCTION_2_8();
            v122(v121, v156);
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_13_4(v168);
          OUTLINED_FUNCTION_13_4(v113);
          (*(v171 + 8))(v112, v87);
LABEL_80:
          sub_2694645DC(v111, &qword_280318088, &qword_2694867D8);
LABEL_81:
          sub_26948450C();
          v124 = v161;
          v125 = v162;
          if (v180[0])
          {
            sub_26948458C();
          }

          else
          {
            __swift_storeEnumTagSinglePayload(v162, 1, 1, v87);
          }

          v177(v124, *MEMORY[0x277D5EB50], v87);
          OUTLINED_FUNCTION_7_5(v124);
          v134 = *(v133 + 48);
          v135 = v163;
          sub_269484050(v125, v163);
          sub_269484050(v124, v135 + v134);
          OUTLINED_FUNCTION_3_4(v135);
          if (v97)
          {

            OUTLINED_FUNCTION_20_2(v124);
            OUTLINED_FUNCTION_20_2(v125);
            __swift_destroy_boxed_opaque_existential_0Tm(&v183);
            v136 = OUTLINED_FUNCTION_0_3();
            v137(v136);
            OUTLINED_FUNCTION_3_4(v135 + v134);
            if (v97)
            {
              sub_2694645DC(v135, &qword_280318090, &unk_2694867E0);
              goto LABEL_26;
            }
          }

          else
          {
            v138 = v158;
            sub_269484050(v135, v158);
            OUTLINED_FUNCTION_3_4(v135 + v134);
            if (!v139)
            {
              v142 = v171;
              v143 = *(v171 + 32);
              v144 = OUTLINED_FUNCTION_17_3();
              v145(v144);
              sub_2694840C0();
              LODWORD(v178) = sub_2694848CC();

              v146 = *(v142 + 8);
              v146(v134, v87);
              sub_2694645DC(v124, &qword_280318090, &unk_2694867E0);
              sub_2694645DC(v125, &qword_280318090, &unk_2694867E0);
              __swift_destroy_boxed_opaque_existential_0Tm(&v183);
              v147 = OUTLINED_FUNCTION_0_3();
              v148(v147);
              v146(v138, v87);
              sub_2694645DC(v135, &qword_280318090, &unk_2694867E0);
              if (v178)
              {
                goto LABEL_26;
              }

              goto LABEL_99;
            }

            OUTLINED_FUNCTION_20_2(v124);
            OUTLINED_FUNCTION_20_2(v125);
            __swift_destroy_boxed_opaque_existential_0Tm(&v183);
            v140 = OUTLINED_FUNCTION_0_3();
            v141(v140);
            (*(v171 + 8))(v138, v87);
          }

          sub_2694645DC(v135, &qword_280318088, &qword_2694867D8);
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_13_4(v118);
        OUTLINED_FUNCTION_13_4(v113);
        OUTLINED_FUNCTION_3_4(v111 + v120);
        if (!v97)
        {
          goto LABEL_80;
        }

        v108 = v111;
LABEL_75:
        sub_2694645DC(v108, &qword_280318090, &unk_2694867E0);
        goto LABEL_76;
      }

LABEL_98:
      __swift_destroy_boxed_opaque_existential_0Tm(&v183);
      v149 = OUTLINED_FUNCTION_0_3();
      v150(v149);
      goto LABEL_99;
    }

    sub_26948454C();
    if (OUTLINED_FUNCTION_8_3())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v183);
      v82 = OUTLINED_FUNCTION_0_3();
      goto LABEL_24;
    }

    sub_2694845CC();
    if (!OUTLINED_FUNCTION_10_3())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v183);
      v102 = OUTLINED_FUNCTION_0_3();
      v103(v102);
      sub_26948456C();
      if (OUTLINED_FUNCTION_8_3())
      {
        goto LABEL_25;
      }

LABEL_99:
      __swift_destroy_boxed_opaque_existential_0Tm(&v181);
      return 2;
    }

    sub_269464C8C(&v183, v180);
    if (!OUTLINED_FUNCTION_14_3())
    {
      goto LABEL_98;
    }

    sub_26948442C();
    sub_26948445C();
    (*(v159 + 8))(v28, v21);
    v88 = sub_26948439C();
    (*(v160 + 8))(v20, v13);
    v172 = *(v88 + 16);
    if (!v172)
    {
LABEL_97:

      goto LABEL_98;
    }

    v89 = 0;
    v90 = v175;
    v91 = v88 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
    v28 = v176 + 16;
    v52 = v157 + 8;
    v92 = (v176 + 8);
    while (1)
    {
      if (v89 >= *(v88 + 16))
      {
        goto LABEL_107;
      }

      (*(v176 + 16))(v90, v91 + *(v176 + 72) * v89, v177);
      v93 = v173;
      sub_2694844AC();
      v94 = sub_2694847BC();
      v96 = v95;
      (*v52)(v93, v174);
      v97 = v94 == 0x747465536C6F6F62 && v96 == 0xEF656D614E676E69;
      if (v97)
      {
      }

      else
      {
        v98 = sub_269484D5C();

        if ((v98 & 1) == 0)
        {
          v90 = v175;
          (*v92)(v175, v177);
          goto LABEL_51;
        }
      }

      v90 = v175;
      if (sub_26948449C() == 0x69726953796568 && v99 == 0xE700000000000000)
      {

        (*v92)(v90, v177);
LABEL_101:
        v52 = 0x747465536C6F6F62;
        v28 = 0xEF656D614E676E69;

        if (qword_281327EE0 != -1)
        {
          goto LABEL_108;
        }

        goto LABEL_102;
      }

      v101 = sub_269484D5C();

      (*v92)(v90, v177);
      if (v101)
      {
        goto LABEL_101;
      }

LABEL_51:
      if (v172 == ++v89)
      {
        goto LABEL_97;
      }
    }
  }

  if (qword_281327EE0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v70 = sub_2694847EC();
  __swift_project_value_buffer(v70, qword_2813286A0);
  v71 = sub_2694847DC();
  v72 = sub_269484ADC();
  if (!os_log_type_enabled(v71, v72))
  {

    return 2;
  }

  v73 = 2;
  v74 = swift_slowAlloc();
  *v74 = 0;
  _os_log_impl(&dword_269461000, v71, v72, "this parse couldn't be interpreted as a universal command", v74, 2u);
  MEMORY[0x26D63EF60](v74, -1, -1);

  return v73;
}

void sub_269483D68(uint64_t a1)
{
  v18 = sub_2694843DC();
  v2 = OUTLINED_FUNCTION_0_1(v18);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = *(a1 + 40);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v17 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v12 < *(v10 + 16))
    {
      (*(v4 + 16))(v9, v17 + *(v4 + 72) * v12, v18);
      v13 = sub_269482A6C();
      (*(v4 + 8))(v9, v18);
      if (v13 != 2)
      {

        return;
      }

      OUTLINED_FUNCTION_19_2();
      v14 = sub_269484D5C();

      if (v14)
      {
        return;
      }

      OUTLINED_FUNCTION_16_2();
      v15 = sub_269484D5C();

      if (v15)
      {
        if (v11 - 1 == v12++)
        {
          return;
        }
      }

      else if (v11 == ++v12)
      {
        return;
      }
    }

    __break(1u);
  }
}

id sub_269483FBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UniversalCommandMatcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269484008(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_26948402C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_269484050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280318090, &unk_2694867E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2694840C0()
{
  result = qword_280318098;
  if (!qword_280318098)
  {
    sub_26948459C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280318098);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_4()
{
  v5 = v0;
  v6 = *(v3 - 288);

  return sub_2694645DC(v2, v5, v1);
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1)
{

  return sub_2694645DC(a1, v1, v2);
}

uint64_t sub_2694841DC(uint64_t a1)
{
  if (*(a1 + 88))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_2694841F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LASOverrideMatcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}