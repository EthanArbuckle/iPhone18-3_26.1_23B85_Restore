void sub_197600EFC()
{
  OUTLINED_FUNCTION_20();
  v105 = v0;
  v106 = v3;
  v103 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  OUTLINED_FUNCTION_0(v5);
  v100 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_3();
  v97 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  v12 = OUTLINED_FUNCTION_0(v11);
  v98 = v13;
  v99 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_3();
  v101 = v17;
  OUTLINED_FUNCTION_117();
  v18 = sub_197615F50();
  v19 = OUTLINED_FUNCTION_0(v18);
  v95 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_0();
  v93 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  OUTLINED_FUNCTION_5_2(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30_0();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v30 = OUTLINED_FUNCTION_5_2(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_22();
  v94 = v33;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_115();
  v102 = v35;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_29_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355F0, &qword_197622448);
  sub_197615F30();
  v37 = OUTLINED_FUNCTION_34_6();
  v96 = v18;
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v18);
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_9_15();
  sub_19757EEC4();
  v41 = v40;
  sub_19755C7C8(v1, &qword_1EAF34AB8, &qword_197622080);
  if (v41)
  {
    CoreTipRecord.id.getter();
    v42 = OUTLINED_FUNCTION_124();
    v104 = &v89;
    MEMORY[0x1EEE9AC00](v42);
    OUTLINED_FUNCTION_51_0();
    v43 = type metadata accessor for CoreTipRecord();
    OUTLINED_FUNCTION_130(v43);
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v5);
    v47 = v105;
    sub_1975BEBD4();
    if (v47)
    {
      sub_19755C7C8(v2, &qword_1EAF346D8, &unk_197619120);
LABEL_9:

      goto LABEL_10;
    }

    v50 = v48;
    v105 = v1;
    sub_19755C7C8(v2, &qword_1EAF346D8, &unk_197619120);
    if (v50 < 2)
    {
      goto LABEL_9;
    }

    v51 = v102;
    v52 = v105;
    sub_1975E76FC();
    type metadata accessor for CoreTip();
    OUTLINED_FUNCTION_114();

    v92 = v41;
    v53 = static CoreTip.modelIdentifiers.getter();
    v54 = v96;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v96);
    v90 = v50;
    v91 = v5;
    if (EnumTagSinglePayload == 1)
    {
      sub_19755C7C8(v51, &qword_1EAF34AB8, &qword_197622080);
      v56 = sub_19755C610();
      if (v57)
      {
        v58 = v56;
        swift_isUniquelyReferenced_nonNull_native();
        v108 = v53;
        v59 = *(v53 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35580, &qword_197621F78);
        v52 = v105;
        sub_197616BF0();
        v53 = v108;
        v60 = *(*(v108 + 48) + 16 * v58 + 8);

        v61 = v94;
        (*(v95 + 32))(v94, *(v53 + 56) + *(v95 + 72) * v58, v54);
        OUTLINED_FUNCTION_29_5();
        sub_197616C10();
        v62 = 0;
        v63 = v97;
        v64 = v98;
      }

      else
      {
        v62 = 1;
        v63 = v97;
        v64 = v98;
        v61 = v94;
      }

      __swift_storeEnumTagSinglePayload(v61, v62, 1, v54);

      sub_19755C7C8(v61, &qword_1EAF34AB8, &qword_197622080);
    }

    else
    {
      v65 = v93;
      (*(v95 + 32))(v93, v51, v54);
      swift_isUniquelyReferenced_nonNull_native();
      v108 = v53;
      sub_19757B964(v65, v52, &qword_197622080);

      v53 = v108;
      v63 = v97;
      v64 = v98;
    }

    static CoreTip.modelIdentifiers.setter(v53);
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_21();
    sub_19755FF88(v66, 255, v67);
    v68 = v101;
    OUTLINED_FUNCTION_31_0();
    v69 = sub_197615640();
    v102 = &v89;
    MEMORY[0x1EEE9AC00](v69);
    OUTLINED_FUNCTION_2_0();
    *(v70 - 16) = v52;
    *(v70 - 8) = &qword_197622080;
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
    OUTLINED_FUNCTION_99();
    v71 = v63;
    v72 = OUTLINED_FUNCTION_120();
    v73 = OUTLINED_FUNCTION_97(v72, xmmword_197618C10) + v63;
    v74 = v99;
    v75(v73, v68, v99);
    OUTLINED_FUNCTION_18_9();
    sub_1975FCD58(v76, v77, v78, v79, v80, v81, v82, v71, v89, v90);

    v83 = OUTLINED_FUNCTION_139();
    v84(v83);
    (*(v64 + 8))(v101, v74);
    v85 = static CoreTip.tips.getter();
    v86 = sub_197580F6C(v52, &qword_197622080, v85);

    if (v86)
    {
      sub_1975DC1F8();
    }

    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v87 = type metadata accessor for logger();
    __swift_project_value_buffer(v87, qword_1ED816CA0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_111();
    v107 = v90 - 1;
    v88 = sub_197616E80();
    MEMORY[0x19A8E2A50](v88);

    MEMORY[0x19A8E2A50](0x3A64692870695420, 0xE900000000000020);
    MEMORY[0x19A8E2A50](v105, &qword_197622080);

    MEMORY[0x19A8E2A50](v71 + 9, 0x8000000197626480);
    sub_197558864();

    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39();
    }

    v49 = type metadata accessor for logger();
    __swift_project_value_buffer(v49, qword_1ED8172B0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_142();
    sub_197616BC0();
    sub_197558864();
  }

LABEL_10:
  OUTLINED_FUNCTION_19_0();
}

void sub_1976017B0()
{
  OUTLINED_FUNCTION_20();
  v113 = v0;
  v114 = v2;
  v111 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  OUTLINED_FUNCTION_0(v4);
  v109 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_3();
  v106 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  v11 = OUTLINED_FUNCTION_0(v10);
  v107 = v12;
  v108 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_3();
  v105 = v16;
  OUTLINED_FUNCTION_117();
  v17 = sub_197615F50();
  v18 = OUTLINED_FUNCTION_0(v17);
  v103 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  v101 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  OUTLINED_FUNCTION_5_2(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v98 - v28;
  v30 = OUTLINED_FUNCTION_81();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  v33 = OUTLINED_FUNCTION_5_2(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_10_22();
  v102 = v36;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_115();
  v110 = v38;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_29_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355D8, &qword_1976223B0);
  sub_197615F30();
  v40 = OUTLINED_FUNCTION_34_6();
  v104 = v17;
  v41 = v17;
  v42 = v114;
  __swift_storeEnumTagSinglePayload(v40, v43, v44, v41);
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_9_15();
  sub_19758DC14();
  v46 = v45;
  v47 = OUTLINED_FUNCTION_66();
  sub_19755C7C8(v47, v48, &qword_197622080);
  if (v46)
  {
    CoreParameterRecord.id.getter();
    v49 = OUTLINED_FUNCTION_124();
    v112 = v98;
    MEMORY[0x1EEE9AC00](v49);
    OUTLINED_FUNCTION_51_0();
    v50 = type metadata accessor for CoreParameterRecord();
    OUTLINED_FUNCTION_130(v50);
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v4);
    v54 = v113;
    sub_1975BED34();
    if (v54)
    {
      sub_19755C7C8(v29, &qword_1EAF34BA0, &qword_19761BAC0);
LABEL_9:

      goto LABEL_10;
    }

    v57 = v55;
    v113 = v1;
    sub_19755C7C8(v29, &qword_1EAF34BA0, &qword_19761BAC0);
    if (v57 < 2)
    {
      goto LABEL_9;
    }

    v100 = v57;
    v58 = v110;
    v59 = v113;
    v60 = OUTLINED_FUNCTION_81();
    sub_1975C8F20(v60, v61, v42, v62);
    type metadata accessor for CoreParameter();
    OUTLINED_FUNCTION_114();

    v98[1] = v46;
    v63 = static CoreParameter.modelIdentifiers.getter();
    v64 = v104;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v104);
    v99 = v4;
    if (EnumTagSinglePayload == 1)
    {
      sub_19755C7C8(v58, &qword_1EAF34AB8, &qword_197622080);
      OUTLINED_FUNCTION_81();
      sub_19755C610();
      v66 = v105;
      if (v67)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v116 = v63;
        v68 = *(v63 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35580, &qword_197621F78);
        sub_197616BF0();
        v63 = v116;
        OUTLINED_FUNCTION_123();
        v69 = v102;
        v70 = OUTLINED_FUNCTION_64(*(v63 + 56));
        v71(v70);
        OUTLINED_FUNCTION_21();
        sub_197616C10();
        v72 = 0;
        v73 = v106;
      }

      else
      {
        v72 = 1;
        v73 = v106;
        v69 = v102;
      }

      __swift_storeEnumTagSinglePayload(v69, v72, 1, v64);

      sub_19755C7C8(v69, &qword_1EAF34AB8, &qword_197622080);
      v75 = v113;
    }

    else
    {
      v74 = v101;
      (*(v103 + 32))(v101, v58, v64);
      swift_isUniquelyReferenced_nonNull_native();
      v116 = v63;
      sub_19757B964(v74, v59, &qword_197622080);

      v63 = v116;
      v73 = v106;
      v66 = v105;
      v75 = v59;
    }

    static CoreParameter.modelIdentifiers.setter(v63);
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_21();
    sub_19755FF88(v76, 255, v77);
    OUTLINED_FUNCTION_31_0();
    v78 = sub_197615640();
    MEMORY[0x1EEE9AC00](v78);
    OUTLINED_FUNCTION_2_0();
    *(v79 - 16) = v75;
    *(v79 - 8) = &qword_197622080;
    sub_197615AE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D30, &unk_1976223E0);
    OUTLINED_FUNCTION_99();
    v80 = v73;
    v81 = OUTLINED_FUNCTION_120();
    v82 = OUTLINED_FUNCTION_97(v81, xmmword_197618C10) + v73;
    v83 = v108;
    v84(v82, v66, v108);
    OUTLINED_FUNCTION_18_9();
    sub_1975FDCC4(v85, v86, v87, v88, v89, v90, v91, v80);

    v92 = OUTLINED_FUNCTION_95();
    v93(v92, v99);
    v94 = OUTLINED_FUNCTION_137();
    v95(v94, v83);
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v96 = type metadata accessor for logger();
    __swift_project_value_buffer(v96, qword_1ED816CA0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    MEMORY[0x19A8E2A50](0xD000000000000019, 0x8000000197626460);
    v115 = v100 - 1;
    v97 = sub_197616E80();
    MEMORY[0x19A8E2A50](v97);

    MEMORY[0x19A8E2A50](0x74656D6172615020, 0xEF203A6469287265);
    MEMORY[0x19A8E2A50](v113, &qword_197622080);

    MEMORY[0x19A8E2A50](0xD000000000000022, 0x8000000197626480);
    sub_197558864();

    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39();
    }

    v56 = type metadata accessor for logger();
    __swift_project_value_buffer(v56, qword_1ED8172B0);
    OUTLINED_FUNCTION_54();
    sub_197616A20();
    OUTLINED_FUNCTION_116();
    MEMORY[0x19A8E2A50](0xD000000000000043, 0x80000001976264B0);
    sub_197616BC0();
    sub_197558864();
  }

LABEL_10:
  OUTLINED_FUNCTION_19_0();
}

void sub_19760203C()
{
  OUTLINED_FUNCTION_20();
  v117 = v0;
  v118 = v2;
  v115 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  OUTLINED_FUNCTION_0(v4);
  v107 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_3();
  v111 = v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  OUTLINED_FUNCTION_0(v106);
  v112 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_3();
  v105 = v14;
  OUTLINED_FUNCTION_117();
  v15 = sub_197615F50();
  v16 = OUTLINED_FUNCTION_0(v15);
  v110 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v108 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v103 - v26;
  v28 = OUTLINED_FUNCTION_81();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  v31 = OUTLINED_FUNCTION_5_2(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_10_22();
  v109 = v34;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_115();
  v114 = v36;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_29_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355C8, &unk_197622380);
  sub_197615F30();
  v38 = OUTLINED_FUNCTION_34_6();
  v113 = v15;
  v39 = v15;
  v40 = v118;
  __swift_storeEnumTagSinglePayload(v38, v41, v42, v39);
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_9_15();
  sub_197594F68();
  v44 = v43;
  v45 = OUTLINED_FUNCTION_66();
  sub_19755C7C8(v45, v46, &qword_197622080);
  if (v44)
  {
    CoreEventRecord.id.getter();
    v47 = OUTLINED_FUNCTION_124();
    v116 = v103;
    MEMORY[0x1EEE9AC00](v47);
    OUTLINED_FUNCTION_51_0();
    v48 = type metadata accessor for CoreEventRecord();
    OUTLINED_FUNCTION_130(v48);
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v4);
    v52 = v117;
    sub_1975BEA74();
    if (v52)
    {
      sub_19755C7C8(v27, &qword_1EAF34AC0, &qword_19761B6F0);
LABEL_11:

      goto LABEL_12;
    }

    v55 = v53;
    v56 = v4;
    v57 = v40;
    v117 = v1;
    sub_19755C7C8(v27, &qword_1EAF34AC0, &qword_19761B6F0);
    if (v55 < 2)
    {
      goto LABEL_11;
    }

    v104 = v55;
    v58 = v114;
    v59 = v117;
    OUTLINED_FUNCTION_81();
    sub_1975C6974();
    type metadata accessor for CoreEvent();
    OUTLINED_FUNCTION_114();

    v103[1] = v44;
    v60 = static CoreEvent.modelIdentifiers.getter();
    if (__swift_getEnumTagSinglePayload(v58, 1, v113) == 1)
    {
      sub_19755C7C8(v58, &qword_1EAF34AB8, &qword_197622080);
      OUTLINED_FUNCTION_81();
      sub_19755C610();
      if (v61)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v120 = v60;
        v62 = *(v60 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35580, &qword_197621F78);
        sub_197616BF0();
        v60 = v120;
        OUTLINED_FUNCTION_123();
        v63 = v109;
        v64 = OUTLINED_FUNCTION_64(*(v60 + 56));
        v65 = v113;
        v66(v64);
        OUTLINED_FUNCTION_21();
        sub_197616C10();
        v67 = 0;
        v68 = v111;
      }

      else
      {
        v67 = 1;
        v68 = v111;
        v65 = v113;
        v63 = v109;
      }

      __swift_storeEnumTagSinglePayload(v63, v67, 1, v65);

      sub_19755C7C8(v63, &qword_1EAF34AB8, &qword_197622080);
      v59 = v117;
      v74 = v68;
    }

    else
    {
      v69 = *(v110 + 32);
      v70 = OUTLINED_FUNCTION_133();
      v71(v70);
      swift_isUniquelyReferenced_nonNull_native();
      v120 = v60;
      v72 = OUTLINED_FUNCTION_66();
      sub_19757B964(v72, v73, &qword_197622080);

      v60 = v120;
      v74 = v111;
    }

    static CoreEvent.modelIdentifiers.setter(v60);
    type metadata accessor for CoreDonationRecord();
    v75 = OUTLINED_FUNCTION_81();
    sub_1975C1120(v75, v76, v57);
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_21();
    sub_19755FF88(v77, 255, v78);
    v79 = v105;
    OUTLINED_FUNCTION_31_0();
    v80 = sub_197615640();
    MEMORY[0x1EEE9AC00](v80);
    OUTLINED_FUNCTION_2_0();
    *(v81 - 16) = v59;
    *(v81 - 8) = &qword_197622080;
    OUTLINED_FUNCTION_5_8();
    sub_197615AE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
    OUTLINED_FUNCTION_99();
    v82 = v74;
    v85 = v84 & ~v83;
    v86 = swift_allocObject();
    v87 = OUTLINED_FUNCTION_97(v86, xmmword_197618C10) + v85;
    v88 = v106;
    v89(v87, v79, v106);
    OUTLINED_FUNCTION_18_9();
    sub_1975FE368(v90, v91, v92, v93, v94, v95, v96, v82);

    v97 = OUTLINED_FUNCTION_95();
    v98(v97, v56);
    v99 = OUTLINED_FUNCTION_137();
    v100(v99, v88);
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v101 = type metadata accessor for logger();
    __swift_project_value_buffer(v101, qword_1ED816CA0);
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_197616A20();
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_111();
    v119 = v104 - 1;
    v102 = sub_197616E80();
    MEMORY[0x19A8E2A50](v102);

    MEMORY[0x19A8E2A50](0x6928746E65764520, 0xEB00000000203A64);
    MEMORY[0x19A8E2A50](v117, &qword_197622080);

    MEMORY[0x19A8E2A50](v88 + 9, 0x8000000197626480);
    sub_197558864();

    *v115 = 1;
  }

  else
  {
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39();
    }

    v54 = type metadata accessor for logger();
    __swift_project_value_buffer(v54, qword_1ED8172B0);
    OUTLINED_FUNCTION_62_0();
    sub_197616A20();
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_142();
    sub_197616BC0();
    OUTLINED_FUNCTION_126();
  }

LABEL_12:
  OUTLINED_FUNCTION_19_0();
}

void sub_1976028DC()
{
  OUTLINED_FUNCTION_20();
  v117 = v0;
  v114 = v2;
  v4 = v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD0, &qword_19761B6F8);
  OUTLINED_FUNCTION_0(v115);
  v107 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_3();
  v104 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AD8, &unk_1976222C0);
  v11 = OUTLINED_FUNCTION_0(v10);
  v105 = v12;
  v106 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_3();
  v112 = v16;
  OUTLINED_FUNCTION_117();
  v17 = sub_197615F50();
  v18 = OUTLINED_FUNCTION_0(v17);
  v110 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  v108 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AC0, &qword_19761B6F0);
  OUTLINED_FUNCTION_5_2(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v100 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v31 = OUTLINED_FUNCTION_5_2(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_10_22();
  v109 = v34;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_115();
  v113 = v36;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_29_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355B0, &qword_1976222D0);
  sub_197615F30();
  v38 = OUTLINED_FUNCTION_34_6();
  v111 = v17;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v17);
  v116 = v4;
  OUTLINED_FUNCTION_9_15();
  v48 = sub_1975FEEE0(v41, v42, v43, v44, v45, v46, v47);
  sub_19755C7C8(v1, &qword_1EAF34AB8, &qword_197622080);
  if (v48)
  {
    if (CoreDonationRecord.event.getter())
    {
      v102 = v48;
      v49 = CoreEventRecord.id.getter();
      v51 = v50;

      v103 = &v100;
      MEMORY[0x1EEE9AC00](v52);
      *(&v100 - 2) = v49;
      *(&v100 - 1) = v51;
      v53 = type metadata accessor for CoreEventRecord();
      OUTLINED_FUNCTION_130(v53);
      OUTLINED_FUNCTION_5_8();
      sub_197615AE0();
      OUTLINED_FUNCTION_3_10();
      v54 = v115;
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v115);
      v58 = v117;
      sub_1975BEA74();
      if (v58)
      {
        sub_19755C7C8(v29, &qword_1EAF34AC0, &qword_19761B6F0);
      }

      else
      {
        v61 = v59;
        v101 = v51;
        sub_19755C7C8(v29, &qword_1EAF34AC0, &qword_19761B6F0);
        if (v61 < 2)
        {
        }

        else
        {
          v62 = v113;
          v63 = v49;
          v64 = v101;
          sub_1975C6974();
          v65 = type metadata accessor for CoreEvent();

          v66 = v65;
          static CoreEvent.modelIdentifiers.getter();
          v67 = OUTLINED_FUNCTION_114();
          v68 = v111;
          if (__swift_getEnumTagSinglePayload(v67, 1, v111) == 1)
          {
            sub_19755C7C8(v62, &qword_1EAF34AB8, &qword_197622080);
            OUTLINED_FUNCTION_66();
            sub_19755C610();
            if (v69)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v118 = v65;
              v70 = *(v65 + 24);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35580, &qword_197621F78);
              sub_197616BF0();
              v66 = v118;
              OUTLINED_FUNCTION_123();
              v71 = v109;
              v72 = OUTLINED_FUNCTION_64(*(v66 + 56));
              v73(v72);
              OUTLINED_FUNCTION_21();
              sub_197616C10();
              v74 = 0;
            }

            else
            {
              v74 = 1;
              v71 = v109;
            }

            __swift_storeEnumTagSinglePayload(v71, v74, 1, v68);
            v64 = v101;

            sub_19755C7C8(v71, &qword_1EAF34AB8, &qword_197622080);
          }

          else
          {
            v75 = v108;
            (*(v110 + 32))(v108, v62, v68);
            swift_isUniquelyReferenced_nonNull_native();
            v118 = v65;
            sub_19757B964(v75, v63, v64);

            v66 = v118;
          }

          static CoreEvent.modelIdentifiers.setter(v66);
          type metadata accessor for CoreDonationRecord();
          v76 = OUTLINED_FUNCTION_66();
          sub_1975C1120(v76, v77, v116);
          v78 = v112;
          swift_getKeyPath();
          OUTLINED_FUNCTION_7_21();
          sub_19755FF88(v79, 255, v80);
          OUTLINED_FUNCTION_31_0();
          v81 = sub_197615640();
          v117 = &v100;
          MEMORY[0x1EEE9AC00](v81);
          OUTLINED_FUNCTION_2_0();
          *(v82 - 16) = v63;
          *(v82 - 8) = v64;
          OUTLINED_FUNCTION_5_8();
          v83 = v104;
          sub_197615AE0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE0, &unk_197622300);
          v84 = v105;
          v85 = *(v105 + 72);
          v86 = *(v105 + 80);
          v87 = OUTLINED_FUNCTION_120();
          *(v87 + 16) = xmmword_197618C10;
          v88 = v87 + v65;
          v89 = v106;
          (*(v84 + 16))(v88, v78, v106);
          OUTLINED_FUNCTION_18_9();
          sub_1975FE368(v90, v91, v92, v93, v94, v95, v96, v83);

          v97 = OUTLINED_FUNCTION_95();
          v98(v97, v54);
          (*(v84 + 8))(v112, v89);
          if (qword_1ED816C98 != -1)
          {
            OUTLINED_FUNCTION_3_2();
            swift_once();
          }

          v99 = type metadata accessor for logger();
          __swift_project_value_buffer(v99, qword_1ED816CA0);
          OUTLINED_FUNCTION_62_0();
          sub_197616A20();
          OUTLINED_FUNCTION_136();
          MEMORY[0x19A8E2A50](0xD000000000000031, 0x8000000197626390);
          MEMORY[0x19A8E2A50](v63, v101);

          OUTLINED_FUNCTION_13_12();
          MEMORY[0x19A8E2A50](0xD000000000000015);
          OUTLINED_FUNCTION_126();

          *v114 = 1;
        }
      }

      goto LABEL_19;
    }
  }

  if (qword_1ED8172A8 != -1)
  {
    OUTLINED_FUNCTION_4_39();
  }

  v60 = type metadata accessor for logger();
  __swift_project_value_buffer(v60, qword_1ED8172B0);
  OUTLINED_FUNCTION_62_0();
  sub_197616A20();
  OUTLINED_FUNCTION_136();
  MEMORY[0x19A8E2A50](0xD00000000000004DLL, 0x8000000197626340);
  sub_197616BC0();
  OUTLINED_FUNCTION_126();

LABEL_19:
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1976031C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35598, &qword_197622088);
  sub_197615F40();
  sub_197615F50();
  v5 = OUTLINED_FUNCTION_38_3();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_9_15();
  sub_19757EEC4();
  v10 = v9;
  sub_19755C7C8(v0, &qword_1EAF34AB8, &qword_197622080);
  if (v10)
  {
    CoreTipRecord.id.getter();
    v12 = v11;
    v14 = v13;

    type metadata accessor for CoreTip();
    v15 = static CoreTip.tips.getter();
    v16 = sub_197580F6C(v12, v14, v15);

    if (!v16)
    {
      return result;
    }

    sub_1975DC1F8();
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v18 = type metadata accessor for logger();
    __swift_project_value_buffer(v18, qword_1ED816CA0);
    OUTLINED_FUNCTION_131();
    sub_197616A20();
    OUTLINED_FUNCTION_13_12();
    MEMORY[0x19A8E2A50](0xD000000000000037);
    MEMORY[0x19A8E2A50](*(v16 + 16), *(v16 + 24));
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_197558864();
  }

  else
  {
    if (qword_1ED8172A8 != -1)
    {
      OUTLINED_FUNCTION_4_39();
    }

    v19 = type metadata accessor for logger();
    __swift_project_value_buffer(v19, qword_1ED8172B0);
    OUTLINED_FUNCTION_131();
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000003DLL, 0x80000001976262C0);
    sub_197616BC0();
    sub_197558864();
  }
}

uint64_t sub_197603444()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_19760347C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A0, &qword_197622258);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34B28, &qword_19761B8C8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355B8, &qword_197622370);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v20 = *a1;
  sub_197559AAC(&qword_1ED8164B0, &qword_1EAF34B28, &qword_19761B8C8);
  sub_197615820();
  v26 = type metadata accessor for CoreDonationRecord();
  v27 = sub_19755FF88(&qword_1ED8171B0, 255, type metadata accessor for CoreDonationRecord);
  swift_getKeyPath();
  sub_197615700();

  (*(v11 + 8))(v14, v10);
  sub_197615F50();
  sub_197615810();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355C0, &qword_197622378);
  a3[4] = sub_197603950();
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_197559AAC(&qword_1ED815700, &qword_1EAF355B8, &qword_197622370);
  sub_197559AAC(&qword_1ED816D10, &qword_1EAF355A0, &qword_197622258);
  sub_19755FF88(&qword_1ED816C88, 255, MEMORY[0x1E697BC90]);
  v21 = v24;
  sub_1976156F0();
  (*(v25 + 8))(v9, v21);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_197603868(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + a3 - 16);
  v3 = *(a2 + a3 - 8);
  v5 = *a1;
  return sub_197615DB0();
}

unint64_t sub_197603898()
{
  result = qword_1ED816AF0;
  if (!qword_1ED816AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34750, &qword_1976193C8);
    sub_197559AAC(&qword_1ED816CE8, &qword_1EAF34710, &unk_197622260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816AF0);
  }

  return result;
}

unint64_t sub_197603950()
{
  result = qword_1ED815710;
  if (!qword_1ED815710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355C0, &qword_197622378);
    sub_1976039DC();
    sub_197595A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815710);
  }

  return result;
}

unint64_t sub_1976039DC()
{
  result = qword_1ED815708;
  if (!qword_1ED815708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355B8, &qword_197622370);
    sub_197559AAC(&qword_1ED8164B8, &qword_1EAF34B28, &qword_19761B8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED815708);
  }

  return result;
}

void sub_197603A8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_19759C190();
}

unint64_t sub_197603A94()
{
  result = qword_1ED816008;
  if (!qword_1ED816008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34C08, &qword_19761BD98);
    sub_197559AAC(&qword_1ED8164C8, &qword_1EAF34AF0, &unk_197622320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816008);
  }

  return result;
}

void sub_197603B44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_19759BF14();
}

unint64_t sub_197603B4C()
{
  result = qword_1ED8166B0;
  if (!qword_1ED8166B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355E0, &qword_197622430);
    sub_197559AAC(&qword_1ED8166F0, &qword_1EAF34D70, &unk_1976223F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8166B0);
  }

  return result;
}

void sub_197603BFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_19759BC98();
}

uint64_t sub_197603C04(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_19755CCE8;

  return sub_1975FFE08(a1, a2, v7, v6);
}

uint64_t sub_197603CB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_197603CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35608, &qword_1976224D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_63_0()
{
  v1 = *(v0 - 184);
  v2 = *(v0 - 216);
  v3 = *(v0 - 144);
}

uint64_t OUTLINED_FUNCTION_64@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v5 = a1 + *(v1 + 72) * v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return sub_197615D90();
}

uint64_t OUTLINED_FUNCTION_77(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 72) = a7;
  *(v7 - 136) = a2;
  *(v7 - 128) = a4;
  *(v7 - 104) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_85()
{

  return sub_197615F50();
}

uint64_t OUTLINED_FUNCTION_88()
{

  return sub_197615D90();
}

__n128 *OUTLINED_FUNCTION_97(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_111()
{

  JUMPOUT(0x19A8E2A50);
}

void OUTLINED_FUNCTION_116()
{
  v1 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 104);
  *(v0 - 96) = v1;
}

uint64_t OUTLINED_FUNCTION_119()
{
  v2 = *(v1 - 112);
  v3 = *(*(v1 - 120) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_120()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_121()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 144);

  return sub_197615C80();
}

uint64_t OUTLINED_FUNCTION_123()
{
  v3 = *(*(v1 + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_124()
{
}

void OUTLINED_FUNCTION_126()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);

  sub_197558864();
}

uint64_t OUTLINED_FUNCTION_127()
{
  v3 = *(v0 + 8 * v1 + 32);
}

void OUTLINED_FUNCTION_136()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_139()
{
  v2 = *(*(v1 - 168) + 8);
  result = v0;
  v4 = *(v1 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_140()
{
  v2 = v0[15];
  v3 = v0[6];
  v4 = v0[5];

  return __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v4);
}

uint64_t OUTLINED_FUNCTION_141@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_142()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t MiniTipsDatastore.performAndWait<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(v4 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
  }

  v8 = *(v4 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);

  if (pthread_main_np() == 1 && _CFRunLoopCurrentIsMain())
  {
    v9 = sub_197616590();
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](v9);
    v14[2] = a3;
    v14[3] = v4;
    v14[4] = a1;
    v14[5] = a2;
    v10 = sub_197616860();
    sub_1976045A8(sub_19760473C, v14, "TipKitCore/MiniTipsDatastore+DatastoreQueue.swift", 49, 2, 19, v10);
  }

  else
  {
    sub_197615CF0();
    v13 = *(v4 + 48);
    v12 = *(v4 + 56);

    sub_19755D67C();
    sub_197607984(a1);
  }
}

uint64_t static DatastoreActor.shared.getter()
{
  if (qword_1ED817448 != -1)
  {
    swift_once();
  }
}

uint64_t DatastoreActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1976043CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DatastoreActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_197604404@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_197616590();
  sub_197616580();
  sub_197616560();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1976044E0(a1, a2, a3);
}

uint64_t sub_1976044E0@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (!*(v3 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer))
  {
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  }

  v5 = *(v3 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);

  sub_197615D20();

  if (sub_197615C40())
  {
    sub_197615C50();
  }

  sub_197607984(a1);
}

uint64_t sub_1976045A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_197616580();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = swift_allocObject();
  v11[2] = a7;
  v11[3] = a1;
  v11[4] = a2;
  sub_1976063EC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v7)
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
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000003FLL, 0x8000000197624F40);
    v14 = sub_197617320();
    MEMORY[0x19A8E2A50](v14);

    MEMORY[0x19A8E2A50](46, 0xE100000000000000);
    result = sub_197616C20();
    __break(1u);
  }

  return result;
}

uint64_t sub_19760473C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return sub_197604404(*(v1 + 32), *(v1 + 16), a1);
}

uint64_t sub_19760475C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_11_21();
}

uint64_t sub_197604778()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[5];
  v1 = v0[6];
  OUTLINED_FUNCTION_0_45();
  sub_19756F538(v3, 255, v4);
  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_22_12(v5);
  OUTLINED_FUNCTION_20_12(dword_197622508);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[8] = v6;
  *v6 = v7;
  v6[1] = sub_197604868;
  v8 = v0[5];
  v9 = v0[2];
  OUTLINED_FUNCTION_16_16();

  return v10();
}

uint64_t sub_197604868()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_1976049A4(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a6;
  v9 = *(*(a6 - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v6[4] = v10;
  v11 = *a2;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v6[5] = v13;
  *v13 = v6;
  v13[1] = sub_197604ADC;

  return v15(v10, v11);
}

uint64_t sub_197604ADC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_19_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_197604BC0()
{
  OUTLINED_FUNCTION_1();
  sub_197604C28(v0[4], v0[2], v0[3]);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_197604C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_resume();
}

uint64_t sub_197604CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_197616560();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_197604D34, v6, v8);
}

uint64_t sub_197604D34()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_197606418;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_197604DD8()
{
  OUTLINED_FUNCTION_8_0();
  if (qword_1ED815ED8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for logger();
  __swift_project_value_buffer(v2, qword_1ED815EE0);
  sub_197616A20();
  MEMORY[0x19A8E2A50](0xD00000000000001FLL, 0x80000001976266B0);
  swift_getErrorValue();
  v3 = v0[2];
  v4 = v0[3];
  sub_197616EB0();
  sub_197558864();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_197604EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_11_21();
}

uint64_t sub_197604F18()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[5];
  v1 = v0[6];
  OUTLINED_FUNCTION_0_45();
  sub_19756F538(v3, 255, v4);
  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_22_12(v5);
  OUTLINED_FUNCTION_20_12(dword_197622528);
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[8] = v6;
  *v6 = v7;
  v6[1] = sub_197605008;
  v8 = v0[5];
  v9 = v0[2];
  OUTLINED_FUNCTION_16_16();

  return v10();
}

uint64_t sub_197605008()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_19760512C, v9, 0);
  }

  else
  {
    v10 = v3[7];

    OUTLINED_FUNCTION_3();

    return v11();
  }
}

uint64_t sub_19760512C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_197605188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C70, &qword_19761BEF8);
  OUTLINED_FUNCTION_0(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a1;
  v20[4] = a3;
  v20[5] = a4;
  v24 = v23;
  v25 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  sub_197616600();
  return (*(v14 + 8))(v19, v12);
}

uint64_t sub_19760533C(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a3;
  v6[4] = a6;
  v9 = *(*(a6 - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v6[5] = v10;
  v11 = *a2;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_197605474;

  return v15(v10, v11);
}

uint64_t sub_197605474()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = sub_19760560C;
  }

  else
  {
    v9 = sub_197605574;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_197605574()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  sub_1976056AC(v2, v3, v1);
  v4 = v0[5];

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_19760560C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[7];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  sub_197605724((v0 + 2), v1, v2, v3);
  v4 = v0[5];

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_1976056AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_197605724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1976057B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_197616560();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_19760584C, v6, v8);
}

uint64_t sub_19760584C()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1975C41B0;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_197605910()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_20_12(&dword_19761BED8);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1976059C0;

  return v5();
}

uint64_t sub_1976059C0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v9 + 32) = v0;

  if (v0)
  {
    v10 = sub_197605AD4;
  }

  else
  {
    v10 = sub_1975A9254;
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, 0);
}

uint64_t sub_197605AD4()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 32);
  return v2();
}

uint64_t sub_197605B18()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 16);
  if (sub_197615C20())
  {
    v2 = *(v0 + 16);
    sub_197615C70();
  }

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t MiniTipsDatastore.DatastoreQueue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_continuations;
  (*(v4 + 16))(&v15 - v8, v1 + OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_continuations, v2);
  sub_197616610();
  v11 = *(v4 + 8);
  v11(v9, v2);
  v11((v1 + v10), v2);
  v12 = OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_stream;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35610, &qword_197622548);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t MiniTipsDatastore.DatastoreQueue.__deallocating_deinit()
{
  MiniTipsDatastore.DatastoreQueue.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of MiniTipsDatastore.DatastoreQueue.addTask(_:)()
{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 136))();
}

uint64_t dispatch thunk of MiniTipsDatastore.DatastoreQueue.addTask<A>(_:)()
{
  OUTLINED_FUNCTION_17_15();
  v1 = *(v0 + 128);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_12(v4);

  return v7(v6);
}

{
  OUTLINED_FUNCTION_17_15();
  v1 = *(v0 + 144);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_12(v4);

  return v7(v6);
}

uint64_t dispatch thunk of MiniTipsDatastore.DatastoreQueue.barrier()()
{
  OUTLINED_FUNCTION_25();
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_23_10(v4);

  return v6();
}

uint64_t dispatch thunk of MiniTipsDatastore.DatastoreQueue.saveChanges()()
{
  OUTLINED_FUNCTION_25();
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_23_10(v4);

  return v6();
}

uint64_t sub_197606218()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_21_13();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_27(v3);

  return sub_1976058F0(v5, v6, v1);
}

uint64_t sub_1976062AC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_13();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_5_27(v6);
  OUTLINED_FUNCTION_24_11();

  return sub_19760533C(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_19760634C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_13();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_5_27(v6);
  OUTLINED_FUNCTION_24_11();

  return sub_1976049A4(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1976063EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

void static MiniTipsDatastore.resetModelManagers()()
{
  type metadata accessor for CoreTip();
  sub_1975E1368();
  type metadata accessor for CoreRule();
  sub_19757536C();

  sub_19757AAD8(MEMORY[0x1E69E7CD0]);
  type metadata accessor for CoreParameter();
  sub_1975C7940();
  type metadata accessor for CoreEvent();
  sub_1975C4848();
}

uint64_t static MiniTipsDatastore.datastore(appleBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_197615880();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = sub_197615970();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  if (qword_1ED817448 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED817450;
  v3[20] = qword_1ED817450;

  return MEMORY[0x1EEE6DFA0](sub_197606604, v10, 0);
}

uint64_t sub_197606604()
{
  if (qword_1ED8174E0 != -1)
  {
    swift_once();
  }

  if (byte_1ED8174EA != 1)
  {
    sub_19759228C();
    swift_allocError();
    *v4 = 0xD000000000000043;
    v4[1] = 0x80000001976266E0;
    swift_willThrow();
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 120);

    v29 = *(v0 + 8);
    OUTLINED_FUNCTION_4_41();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = static MiniTipsDatastore.activeStores.getter();
  sub_1975A75D0(v1, v2, v3);

  if (*(v0 + 64))
  {
    sub_19755C404(v0 + 56, &qword_1EAF35558, &qword_197621E38);
  }

  else
  {
    sub_197606DF4(v0 + 56, v0 + 72);
    sub_19755C404(v0 + 56, &qword_1EAF35558, &qword_197621E38);
    Strong = swift_weakLoadStrong();
    sub_19755C404(v0 + 72, &qword_1EAF346B0, &qword_1976190C8);
    if (Strong)
    {
      goto LABEL_34;
    }
  }

  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v6 = qword_1ED817570;
    v7 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3();
    }

    if (qword_1ED81D218)
    {
      v6 = qword_1ED81D210;
      v7 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v8 = sub_1975A5740();
      if (v9)
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      if (v9)
      {
        v7 = v9;
      }

      else
      {
        v7 = 0xE000000000000000;
      }
    }
  }

  if (v6 == *(v0 + 80) && v7 == *(v0 + 88))
  {
  }

  else
  {
    v11 = sub_197616EF0();

    if ((v11 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (qword_1ED817358 != -1)
  {
    OUTLINED_FUNCTION_2_39();
  }

  if (MiniTipsDatastore.hasConfigured.getter())
  {

LABEL_34:
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 120);

    v15 = *(v0 + 8);
    OUTLINED_FUNCTION_4_41();

    __asm { BRAA            X2, X16 }
  }

LABEL_37:
  if (qword_1ED8172A8 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 144);
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  v21 = *(v0 + 80);
  v22 = type metadata accessor for logger();
  __swift_project_value_buffer(v22, qword_1ED8172B0);
  sub_197616A20();
  MEMORY[0x19A8E2A50](0x1000000000000038, 0x8000000197626730);
  MEMORY[0x19A8E2A50](v21, v19);
  sub_197558864();

  v23 = *(v20 + 48);
  v24 = *(v20 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  *(v0 + 168) = MiniTipsDatastore.init(id:bundleID:)(v21, v19, v21, v19);
  v25 = [objc_opt_self() defaultManager];
  URL.init(groupIdentifier:fileManager:)(0xD000000000000018, 0x8000000197623C40, v25);
  v33 = *(v0 + 144);
  v32 = *(v0 + 152);
  v34 = *(v0 + 128);
  v35 = *(v0 + 136);
  v37 = *(v0 + 112);
  v36 = *(v0 + 120);
  v38 = *(v0 + 104);
  v39 = *(v0 + 88);
  *(v0 + 40) = *(v0 + 80);
  *(v0 + 48) = v39;
  (*(v37 + 104))(v36, *MEMORY[0x1E6968F58], v38);
  sub_1975607A8();
  sub_197615960();
  (*(v37 + 8))(v36, v38);
  v40 = *(v35 + 8);
  *(v0 + 176) = v40;
  *(v0 + 184) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v33, v34);
  v41 = swift_task_alloc();
  *(v0 + 192) = v41;
  *v41 = v0;
  v41[1] = sub_197606BC0;
  v42 = *(v0 + 152);
  OUTLINED_FUNCTION_4_41();

  return MiniTipsDatastore.configure(url:monitorChanges:cloudKitContainer:)();
}

uint64_t sub_197606BC0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  v2[25] = v0;

  v5 = v2[23];
  v6 = v2[22];
  if (v0)
  {
    v7 = v2[20];
    v6(v2[19], v2[16]);

    return MEMORY[0x1EEE6DFA0](sub_197606D6C, v7, 0);
  }

  else
  {
    v6(v2[19], v2[16]);
    v8 = v2[21];
    v10 = v2[18];
    v9 = v2[19];
    v11 = v2[15];

    v12 = *(v4 + 8);

    return v12(v8);
  }
}

uint64_t sub_197606D6C()
{
  v1 = v0[21];

  v2 = v0[25];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_197606DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346B0, &qword_1976190C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_197606E64(uint64_t *a1)
{
  v1 = *a1;

  static MiniTipsDatastore.activeStores.setter(v2);
}

void (*static MiniTipsDatastore.activeStores.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = static MiniTipsDatastore.activeStores.getter();
  return sub_197606ECC;
}

void sub_197606ECC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;

    static MiniTipsDatastore.activeStores.setter(v4);
  }

  else
  {
    static MiniTipsDatastore.activeStores.setter(*a1);
  }
}

uint64_t _ss6MirrorV10TipKitCoreE5value7subject4pathypSgx_SSdtlFZ_0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2[2];
  if (v8 != 1)
  {
    if (!v8)
    {
      *(a4 + 24) = a3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
      v10 = *(*(a3 - 8) + 16);

      return v10(boxed_opaque_existential_0, a1, a3);
    }

    v14 = a2[4];
    v15 = a2[5];

    static Mirror.value<A>(subject:path:)(a1, v14, v15, a3, &v29);

    if (!v30)
    {
      result = sub_19755C404(&v29, &qword_1EAF34340, &unk_19761C8E0);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    sub_19756A94C(&v29, v31);
    v16 = v32;
    v17 = __swift_project_boxed_opaque_existential_1Tm(v31, v32);

    v18 = sub_1976124C4(1, a2);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if (v23)
    {
      sub_197617090();
      swift_unknownObjectRetain_n();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
        swift_unknownObjectRelease();
        v27 = MEMORY[0x1E69E7CC0];
      }

      v28 = *(v27 + 16);

      if (__OFSUB__(v24 >> 1, v22))
      {
        __break(1u);
      }

      else if (v28 == (v24 >> 1) - v22)
      {
        v26 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v26)
        {
LABEL_20:
          _ss6MirrorV10TipKitCoreE5value7subject4pathypSgx_SSdtlFZ_0(v17, v26, v16);

          return __swift_destroy_boxed_opaque_existential_0Tm(v31);
        }

        v26 = MEMORY[0x1E69E7CC0];
LABEL_19:
        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    sub_197607524(v18, v20, v22, v24);
    v26 = v25;
    goto LABEL_19;
  }

  v13 = a2[4];
  v12 = a2[5];

  static Mirror.value<A>(subject:path:)(a1, v13, v12, a3, a4);
}

double static Mirror.value<A>(subject:path:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = sub_197617220();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v22 + 1) = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  sub_197617200();
  sub_197617210();
  (*(v11 + 8))(v14, v10);
  sub_197616BB0();
  while (1)
  {
    sub_197616D00();
    if (!*(&v23 + 1))
    {

      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      goto LABEL_13;
    }

    v18 = v21;
    v19 = v22;
    v20 = v23;
    if (*(&v21 + 1))
    {
      v16 = v18 == a2 && *(&v21 + 1) == a3;
      if (v16 || (sub_197616EF0() & 1) != 0)
      {
        break;
      }
    }

    sub_19755C404(&v18, &qword_1EAF35658, &qword_197622760);
  }

  v25 = v19;
  v26 = v20;
  v24 = v18;
  if (*(&v20 + 1))
  {

    sub_19756A94C(&v25, a5);
    return result;
  }

LABEL_13:
  sub_19755C404(&v24, &qword_1EAF35650, &qword_197622758);
  result = 0.0;
  *a5 = 0u;
  a5[1] = 0u;
  return result;
}

uint64_t static Mirror.typeName<A>(subject:path:)(uint64_t a1, void *a2, uint64_t a3)
{
  _ss6MirrorV10TipKitCoreE5value7subject4pathypSgx_SSdtlFZ_0(a1, a2, a3, &v10);
  if (v11)
  {
    sub_19756A94C(&v10, v12);
    v3 = v13;
    v4 = __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v5 = *(*(v3 - 8) + 64);
    MEMORY[0x1EEE9AC00](v4);
    (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = sub_197616220();
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    sub_19755C404(&v10, &qword_1EAF34340, &unk_19761C8E0);
    return 0;
  }

  return v8;
}

void sub_197607524(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A38, &qword_19761B660);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1976075F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670);
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1976076A8(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35608, &qword_1976224D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A58, &qword_19761B680);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v31 = &v29 - v15;
  v16 = 0;
  v17 = *(a3 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v17 == v16)
    {
      return v33;
    }

    v18 = *(sub_197615D10() - 8);
    a1(a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1976079FC(v9);
      ++v16;
    }

    else
    {
      v30 = v14;
      v19 = v31;
      sub_1975EBE20(v9, v31);
      sub_1975EBE20(v19, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1975BBF88(0, *(v33 + 16) + 1, 1, v33);
        v33 = v25;
      }

      v21 = *(v33 + 16);
      v20 = *(v33 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v29 = v21 + 1;
        sub_1975BBF88(v20 > 1, v21 + 1, 1, v33);
        v22 = v29;
        v33 = v26;
      }

      ++v16;
      v23 = v33;
      *(v33 + 16) = v22;
      v24 = v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v21;
      v14 = v30;
      sub_1975EBE20(v30, v24);
    }
  }

  v27 = v33;

  return v27;
}

uint64_t sub_1976079F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1976079FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35608, &qword_1976224D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_197607A64()
{
  result = qword_1ED816C30;
  if (!qword_1ED816C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF356E8, &qword_197622858);
    sub_197588D18();
    sub_197588F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816C30);
  }

  return result;
}

uint64_t Mutex<A>.value.setter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(v2);
  v5 = *(a2 + 28);
  v6 = *(a2 + 16);
  sub_197607C0C(v2 + v5, a1, v6);
  os_unfair_lock_unlock(v2);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void Mutex<A>.value.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(v2);
  (*(*(*(a1 + 16) - 8) + 16))(a2, v2 + *(a1 + 28));

  os_unfair_lock_unlock(v2);
}

uint64_t sub_197607C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  return (*(v6 + 16))(a1, a2, a3);
}

void (*Mutex<A>.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  Mutex<A>.value.getter(a2, v9);
  return sub_197607DA0;
}

void sub_197607DA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    Mutex<A>.value.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    Mutex<A>.value.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_197607E60(void *a1, char a2)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13[0] = 0;
  v5 = [v4 archivedDataWithRootObject:sub_197616EE0() requiringSecureCoding:a2 & 1 error:v13];
  swift_unknownObjectRelease();
  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1976159A0();
  }

  else
  {
    v8 = v6;
    v9 = sub_197615830();

    swift_willThrow();
    if (qword_1EAF34288 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for logger();
    __swift_project_value_buffer(v10, qword_1EAF35488);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_197616A20();
    MEMORY[0x19A8E2A50](0xD00000000000002ALL, 0x8000000197626800);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_197616EB0();
    MEMORY[0x19A8E2A50](2112041, 0xE300000000000000);
    swift_getErrorValue();
    sub_197616EB0();
    sub_197558864();

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_197608064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  sub_1976080E8(a1, a2, a3, a4);
}

void sub_1976080E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v9 = sub_1976158C0();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v17;
  v11 = swift_allocObject();
  v11[2] = sub_197608368;
  v11[3] = v10;
  v16[4] = sub_19758BE90;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_19758BD70;
  v16[3] = &block_descriptor_0;
  v12 = _Block_copy(v16);

  v16[0] = 0;
  [v5 coordinateWritingItemAtURL:v9 options:a2 error:v16 byAccessor:v12];
  _Block_release(v12);

  v13 = v16[0];
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  if (!v13)
  {
    if (!v17[0])
    {

      goto LABEL_6;
    }

    v14 = v17[0];
  }

  swift_willThrow();

LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_197608368(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1976082F8(a1, *(v1 + 16));
}

uint64_t NSObject.typeName.getter()
{
  swift_getObjectType();

  return sub_197617320();
}

Swift::String __swiftcall NSObject.typeName(qualified:)(Swift::Bool qualified)
{
  swift_getObjectType();

  v1 = sub_197617320();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Notification.BOOL(_:)(uint64_t a1)
{
  v2 = sub_197615580();
  if (!v2)
  {
    return 2;
  }

  sub_197586610(a1, v2, &v6);

  if (!v7)
  {
    sub_19755643C(&v6);
    return 2;
  }

  sub_19756A94C(&v6, v8);
  sub_1975586C0(v8, &v6);
  if (!OUTLINED_FUNCTION_0_48())
  {
    sub_19756A94C(v8, &v6);
    if (OUTLINED_FUNCTION_0_48())
    {
      return v5 == 1;
    }

    return 2;
  }

  v3 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v3;
}

uint64_t sub_1976084B4()
{
  result = sub_197611DF4(&unk_1F0BB09D0);
  qword_1EAF3E330 = result;
  *algn_1EAF3E338 = v1;
  return result;
}

uint64_t sub_1976084E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t OptionSet<>.components.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v18[-v10];
  sub_1976163E0();
  v12 = FixedWidthInteger.bitComponents.getter(AssociatedTypeWitness, a3);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  v23 = v12;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v13 = sub_197616530();
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1975F7818(sub_1976087B0, v18, v13, a1, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

  return v16;
}

uint64_t sub_1976086A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v9 + 16))(&v11 - v8, a1);
  return sub_197617310();
}

uint64_t sub_1976087EC(uint64_t a1)
{
  v2 = sub_197615F50();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  if (*(a1 + 16))
  {
    (*(v5 + 16))(v10, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v2);
    (*(v5 + 32))(v16, v10, v2);
  }

  OUTLINED_FUNCTION_29_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  swift_dynamicCast();
  OUTLINED_FUNCTION_29_11();
  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

void static PersistentModel.compactMap<A>(in:batchSize:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:resetsContext:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_20();
  a19 = v32;
  a20 = v40;
  v41 = v30;
  v42 = v36;
  v44 = a29;
  v43 = a30;
  v46 = a27;
  v45 = a28;
  v48 = a25;
  v47 = a26;
  v49 = a23;
  v50 = a21;
  if (v51)
  {
    static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v33, v35, v36 & 1, v37, v38 & 1, v39 & 1, a21, a22, a23, a25, a28, a30, v57, SHIDWORD(v57), v58, v59, v60, SHIDWORD(v60), v61, v62, v63, v64, a27, a29);
    if (!v31)
    {
      a10 = v52;
      MEMORY[0x1EEE9AC00](v52);
      v56[2] = v45;
      v56[3] = v66;
      v56[4] = v43;
      v56[5] = v47;
      v56[6] = v65;
      OUTLINED_FUNCTION_32_7();
      sub_197616530();
      OUTLINED_FUNCTION_0_2();
      swift_getWitnessTable();
      sub_197616370();
    }
  }

  else
  {
    LODWORD(v57) = a24;
    HIDWORD(v57) = v38;
    v61 = v33;
    v62 = v35;
    v64 = v37;
    v65 = v31;
    HIDWORD(v59) = v39;
    v63 = v41;
    v58 = a22;
    v60 = v34;
    v66 = &v57;
    a10 = sub_1976164B0();
    MEMORY[0x1EEE9AC00](a10);
    LOBYTE(v54) = v57 & 1;
    v53 = v65;
    static PersistentModel.forEach(in:batchSize:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:resetsContext:_:_:)(v61, v60, 0, v62, v42 & 1, v64, BYTE4(v57) & 1, BYTE4(v59) & 1, v50, v58, v49, v54, v48, sub_19760D1C0, v56, v45, v43, v55, v56[0], v56[1], v45, v44, v43, v47, v46, &a10, v57, v58, v59);
    if (v53)
    {
    }
  }

  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_20();
  v70 = v24;
  v71 = v22;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v67 = v31;
  v68 = v32;
  v34 = v33;
  v35 = a21;
  v73 = v36;
  v74 = a22;
  v37 = OUTLINED_FUNCTION_11_22();
  v72 = sub_197616860();
  v38 = OUTLINED_FUNCTION_0(v72);
  v69 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_16();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v64 - v43;
  if ((v34 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v28)
  {
    goto LABEL_6;
  }

  v75 = v73;
  sub_197615630();
  OUTLINED_FUNCTION_16_2();
  sub_197616530();
  HIDWORD(v66) = v30;
  v65 = a21;
  OUTLINED_FUNCTION_2_40();
  swift_getWitnessTable();
  v35 = v65;
  LOBYTE(v30) = BYTE4(v66);
  if (sub_197616770())
  {
    OUTLINED_FUNCTION_18(v37);
    (*(v45 + 16))(v23, v26, v37);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v37);
    sub_197615CB0();
    (*(v69 + 8))(v23, v72);
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_18(v37);
    (*(v49 + 16))(v44, v26, v37);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v37);
    v53 = v74;
    v54 = default argument 4 of static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v35, v74);
    v55 = default argument 5 of static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v35, v53);
    v56 = v71;
    static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v70, v67, v34 & 1, v68, v30 & 1, v28 & 1, v54, v55, v73, v44, v35, v53, v64[0], v64[1], v65, v66, v67, SHIDWORD(v67), v68, v69, v70, v71, v72, v73);
    if (v56)
    {
      v58 = OUTLINED_FUNCTION_54_0();
      v59(v58);
    }

    else
    {
      v60 = v57;
      v61 = OUTLINED_FUNCTION_54_0();
      v62(v61);

      v75 = v60;
      MEMORY[0x1EEE9AC00](v63);
      OUTLINED_FUNCTION_42_4();
      sub_197616530();
      OUTLINED_FUNCTION_0_2();
      swift_getWitnessTable();
      sub_1976163C0();
    }
  }

  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20();
  a21 = v25;
  a22 = v26;
  v63 = v27;
  v61 = v28;
  v64 = a23;
  v65 = v29;
  v60 = a24;
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_16_2();
  v30 = sub_197616860();
  OUTLINED_FUNCTION_0(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_49_0();
  v62 = sub_197615DA0();
  v36 = OUTLINED_FUNCTION_13(v62);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_21_14();
  v41 = MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15_16();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_17();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_17();
  v45 = MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_45_1(v45, v46, v47, v48, v49, v50, v51, v52, v59);
  (*(v32 + 16))(v24, v60, v30);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  swift_getKeyPath();
  OUTLINED_FUNCTION_47_1(&a14);
  KeyPathAccessible.with<A>(_:_:)(v53);

  swift_getKeyPath();
  OUTLINED_FUNCTION_47_1(&a18);
  KeyPathAccessible.with<A>(_:_:)(v54);

  KeyPath = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(KeyPath);

  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(v61);
  OUTLINED_FUNCTION_56_1(v56, &a11);

  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(v63);
  KeyPathAccessible.with<A>(_:_:)(v57);

  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(v64);
  OUTLINED_FUNCTION_56_1(v58, &a19);

  sub_1975F75B8(v65, v62);
  OUTLINED_FUNCTION_19_0();
}

uint64_t static PersistentModel.getOrCreate(in:includePendingChanges:relationshipPaths:sortBy:_:_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HIDWORD(v26) = a2;
  v14 = sub_197615630();
  OUTLINED_FUNCTION_42_4();
  sub_197616E90();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  v18 = *(v17 + 72);
  v19 = *(v15 + 80);
  OUTLINED_FUNCTION_13_21();
  v20 = sub_197616480();
  (*(v16 + 16))(v21, a4, v14);
  v22 = sub_1975A1CC4(v20);
  static PersistentModel.getOrCreate(in:includePendingChanges:relationshipPaths:sortBy:_:_:)(a1, HIDWORD(v26), a3, v22, a5, sub_19760D210, v29, a8, a9, v26, a3, a5, v29[0], v29[1], a8, a9, a6, a7, v29[6], v29[7], v29[8]);
  v24 = v23;

  return v24;
}

uint64_t static PersistentModel.get(id:in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = __PAIR64__(a5, a4);
  v14 = sub_197615AD0();
  v54 = sub_197616860();
  OUTLINED_FUNCTION_0(v54);
  v52 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_5_2(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_5();
  v23 = sub_197615F50();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_49_0();
  sub_19755F9FC(a1, v10, &qword_1EAF34AB8, &qword_197622080);
  if (__swift_getEnumTagSinglePayload(v10, 1, v23) == 1)
  {
    sub_19756E748(v10);
    return 0;
  }

  (*(v26 + 32))(v9, v10, v23);
  v29 = sub_197615C00();
  if (!v29)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_197615AE0();
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v14);
    OUTLINED_FUNCTION_43();
    v36 = default argument 5 of static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)();
    static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(a2, a3, v49 & 1, BYTE4(v49) & 1, a6, a7, v36, v11, a8, a9, v45, v46, a8, a9, v9, v47, SHIDWORD(v47), v48, v49, a3, a6, v52);
    v30 = v40;
    v41 = OUTLINED_FUNCTION_55_0();
    v42(v41);

    if (v30)
    {
      v43 = OUTLINED_FUNCTION_36_5();
      v44(v43);
      return v30;
    }

    v37 = OUTLINED_FUNCTION_36_5();
    v38(v37);
    return 0;
  }

  v30 = v29;
  v31 = OUTLINED_FUNCTION_36_5();
  v32(v31);
  return v30;
}

void static PersistentModel.count(in:includePendingChanges:_:)()
{
  OUTLINED_FUNCTION_20();
  v16 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_16_2();
  v4 = sub_197616860();
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30_0();
  v10 = sub_197615DA0();
  v11 = OUTLINED_FUNCTION_13(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v14);
  (*(v6 + 16))(v0, v3, v4);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  KeyPath = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(KeyPath);

  sub_1975F7560(v16, v10);
  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.batchDelete<A>(in:deleteOffset:sortBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_20();
  a19 = v28;
  a20 = v29;
  v118 = v24;
  v119 = v30;
  v122 = v31;
  v123 = v23;
  v121 = v32;
  v34 = v33;
  v36 = v35;
  LODWORD(v120) = v37;
  v39 = v38;
  v117 = v40;
  v41 = a21;
  v108 = sub_1976157A0();
  v42 = OUTLINED_FUNCTION_0(v108);
  v106 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6_0();
  v105 = v47 - v46;
  a10 = v36;
  v113 = sub_197615AD0();
  OUTLINED_FUNCTION_0(v113);
  v110 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v109 = &v103 - v52;
  v116 = sub_197615630();
  OUTLINED_FUNCTION_0(v116);
  v54 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_10();
  v58 = sub_197616860();
  OUTLINED_FUNCTION_0(v58);
  v112 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_14();
  v114 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_49_0();

  v107 = v41;
  sub_197615640();
  v111 = v36;
  v115 = v34;
  v67 = v34;
  v68 = v121;
  v69 = default argument 2 of static PersistentModel.value<A>(in:for:includePendingChanges:fetchOffset:sortBy:_:)(v36, v67, v121);
  v70 = v118;
  static PersistentModel.value<A>(in:for:includePendingChanges:fetchOffset:sortBy:_:)(v122, v39, v69 & 1, v117, 0, v26, v119, v68);
  if (v70)
  {
    (*(v54 + 8))(v26, v116);
  }

  else
  {
    v117 = v39;
    v118 = 0;
    v71 = v25;
    v72 = v114;
    v74 = v112;
    v73 = v113;
    (*(v54 + 8))(v26, v116);
    if (__swift_getEnumTagSinglePayload(v27, 1, v115) == 1)
    {
      (*(v74 + 8))(v27, v58);
    }

    else
    {
      v112 = a23;
      v116 = a22;
      v75 = v71;
      (*(v72 + 32))(v71, v27, v115);
      v76 = sub_197616860();
      OUTLINED_FUNCTION_32_7();
      sub_197616E90();
      OUTLINED_FUNCTION_14();
      v78 = v77;
      v80 = *(v79 + 72);
      v81 = *(v77 + 80);
      swift_allocObject();
      v104 = sub_197616480();
      (*(v78 + 16))(v82, v119, v76);
      v83 = sub_197615AF0();
      v85 = v105;
      v84 = v106;
      v86 = MEMORY[0x1E6968C38];
      if ((v83 & 1) == 0)
      {
        v86 = MEMORY[0x1E6968C30];
      }

      v87 = v108;
      (*(v106 + 104))(v105, *v86, v108);
      v120 = v75;
      v88 = v73;
      static Predicate.comparison<A>(_:value:comparison:)(v117, v75, v85, 1, &a10);
      (*(v84 + 8))(v85, v87);
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v73);
      v92 = sub_1975A1CC4(v104);
      v93 = v109;
      static Predicate.conjunction(_:)(v92, 1, &a10, v109);

      v94 = v111;
      v95 = v121;
      default argument 3 of static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(v111, v121);
      v96 = default argument 4 of static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(v94, v95);
      OUTLINED_FUNCTION_51_1();
      static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(v97, v98, v99, v100, v101, v102, v96, v93, v94, v95, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);

      (*(v110 + 8))(v93, v88);
      (*(v114 + 8))(v120, v115);
    }
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  HIDWORD(v26) = a4;
  v14 = sub_197615630();
  OUTLINED_FUNCTION_33_7();
  sub_197616E90();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  v18 = *(v17 + 72);
  v19 = *(v15 + 80);
  OUTLINED_FUNCTION_13_21();
  v20 = sub_197616480();
  (*(v16 + 16))(v21, a7, v14);
  v22 = sub_1975A1CC4(v20);
  static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(a1, a2, a3 & 1, HIDWORD(v26), a5, a6, v22, a8, a9, a10, v26, a5, a6, a8, v30, v31, SHIDWORD(v31), v32, v33, v34, v35, v36);
  v24 = v23;

  return v24;
}

void static PersistentModel.identifier(in:includePendingChanges:sortBy:_:)()
{
  OUTLINED_FUNCTION_20();
  v35 = v1;
  v34 = v2;
  v3 = OUTLINED_FUNCTION_11_22();
  v4 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v33 = sub_197615DA0();
  v8 = OUTLINED_FUNCTION_13(v33);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17_16();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18(v3);
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_43();
  v17(v16);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v3);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  KeyPath = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(KeyPath);

  v22 = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(v22);

  v23 = swift_getKeyPath();
  v24 = sub_197615630();
  OUTLINED_FUNCTION_33_7();
  sub_197616E90();
  OUTLINED_FUNCTION_14();
  v26 = v25;
  v28 = *(v27 + 72);
  v29 = *(v25 + 80);
  OUTLINED_FUNCTION_13_21();
  v30 = sub_197616480();
  (*(v26 + 16))(v31, v34, v24);
  sub_1975A1CC4(v30);
  KeyPathAccessible.with<A>(_:_:)(v23);

  v32 = sub_1975F758C(v35, v33);
  if (!v0)
  {
    sub_1976087EC(v32);
  }

  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.get(id:in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_20();
  v43 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  OUTLINED_FUNCTION_13(v42);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_5();
  if (!static PersistentModel.get(id:in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:)(v36, v34, v32, v30 & 1, v28, v26, v24, v43, a21))
  {
    sub_197616A20();

    sub_19755F9FC(v36, v21, &qword_1EAF34AB8, &qword_197622080);
    v40 = sub_197616200();
    MEMORY[0x19A8E2A50](v40);

    sub_19759228C();
    swift_allocError();
    *v41 = 0xD000000000000026;
    v41[1] = 0x8000000197625400;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t PersistentModel.set<A>(_:_:)(void *a1)
{
  v2 = *(*a1 + *MEMORY[0x1E69E6F98] + 8);
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(&v9 - v6);
  v10 = v1;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t PersistentModel.update<A>(keyPath:value:)(void *a1)
{
  v2 = *(*a1 + *MEMORY[0x1E69E6F98] + 8);
  OUTLINED_FUNCTION_14();
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = *v8;
  if (sub_197615DD0())
  {

    v10 = *(v4 + 16);
    v11 = OUTLINED_FUNCTION_43();
    v12(v11);
    swift_unknownObjectRetain();
    swift_setAtReferenceWritableKeyPath();
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v13 = 0xD000000000000036;
    v13[1] = 0x8000000197625740;
    swift_willThrow();
  }

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PersistentModel.delete()()
{
  if (sub_197615DD0())
  {
    if ((sub_197615E90() & 1) == 0)
    {
      sub_197615CC0();
    }
  }

  else
  {
    sub_19759228C();
    swift_allocError();
    *v0 = 0xD00000000000002DLL;
    v0[1] = 0x80000001976263F0;
    swift_willThrow();
  }
}

uint64_t static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  HIDWORD(v27) = a6;
  HIDWORD(v25) = a5;
  v14 = sub_197615630();
  OUTLINED_FUNCTION_33_7();
  sub_197616E90();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  v18 = *(v17 + 72);
  v19 = *(v15 + 80);
  OUTLINED_FUNCTION_13_21();
  v20 = sub_197616480();
  (*(v16 + 16))(v21, a7, v14);
  v22 = sub_1975A1CC4(v20);
  static PersistentModel.delete(in:fetchLimit:fetchOffset:includePendingChanges:sortBy:_:)(a1, a2, a3 & 1, a4, BYTE4(v25) & 1, HIDWORD(v27), v22, a8, a9, a10, v24, v25, a4, v27, a8, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t static PersistentModel.create(in:_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  sub_197615CD0();
  return v2;
}

uint64_t sub_19760A92C()
{
  sub_197615630();

  return sub_1976164B0();
}

uint64_t sub_19760A964@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  sub_197615DA0();
  result = sub_197615D70();
  *a3 = result & 1;
  return result;
}

uint64_t sub_19760A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_38_4(a1, a2, a3, a4);
  v5 = *v4;
  sub_197615DA0();
  return sub_197615D80();
}

uint64_t static PersistentModel.value<A>(in:for:includePendingChanges:fetchOffset:sortBy:_:)(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  swift_allocObject();
  v14 = sub_197616480();
  *v15 = a2;
  v16 = *(v13 + *MEMORY[0x1E69E77B0]);
  OUTLINED_FUNCTION_33_7();
  sub_197616AB0();
  v17 = sub_1975A1CC4(v14);

  v18 = default argument 3 of static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v16, a8);
  v19 = static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(a1, a4, a5 & 1, a3, v18, v17, a6, a7, v16, a8);

  if (!v27)
  {
    if (v19)
    {
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      v21 = OUTLINED_FUNCTION_52_1();
      v23 = 0;
    }

    else
    {
      v21 = OUTLINED_FUNCTION_52_1();
      v23 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v21, v23, 1, v22);
  }

  return result;
}

void static PersistentModel.all(in:includePendingChanges:relationshipPaths:propertiesToFetch:)()
{
  OUTLINED_FUNCTION_20();
  v19 = v0;
  v1 = OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_32_7();
  v2 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_10();
  v6 = sub_197615DA0();
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_49();
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21_14();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35_6();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v1);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  KeyPath = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(KeyPath);

  v17 = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(v17);

  v18 = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(v18);

  sub_1975F75B8(v19, v6);
  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.all<A>(in:includePendingChanges:propertyToFetch:)()
{
  OUTLINED_FUNCTION_20();
  v33 = v1;
  v34 = v0;
  v3 = v2;
  v5 = v4;
  v31 = v6;
  v7 = *v4;
  v42 = *(*v4 + *MEMORY[0x1E69E77B0]);
  v8 = OUTLINED_FUNCTION_11_22();
  v9 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_10();
  v32 = sub_197615DA0();
  v13 = OUTLINED_FUNCTION_13(v32);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_16();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_35_6();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v8);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  v38 = v42;
  v21 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  v39 = v21;
  v40 = v3;
  KeyPath = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(KeyPath);

  v35 = v42;
  v36 = v21;
  v37 = v3;
  v23 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  swift_allocObject();
  v24 = sub_197616480();
  *v25 = v5;
  OUTLINED_FUNCTION_32_7();
  sub_197616AB0();
  v41 = sub_1975A1CC4(v24);

  KeyPathAccessible.with<A>(_:_:)(v23);

  v26 = sub_1975F75B8(v33, v32);
  if (!v34)
  {
    v41 = v26;
    MEMORY[0x1EEE9AC00](v26);
    v30[2] = v3;
    v30[3] = v5;
    OUTLINED_FUNCTION_32_7();
    v27 = sub_197616530();
    OUTLINED_FUNCTION_2_40();
    WitnessTable = swift_getWitnessTable();
    sub_1975F7818(sub_19760D244, v30, v27, v21, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v29);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_19760B0B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 8);
  sub_197615DA0();
  result = sub_197615D70();
  *a3 = result & 1;
  return result;
}

uint64_t sub_19760B0F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  sub_197615DA0();
  return sub_197615D80();
}

uint64_t sub_19760B13C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 24);
  v6 = *(v4 - 8);
  sub_197615DA0();
  result = sub_197615D50();
  *a3 = result;
  return result;
}

uint64_t sub_19760B17C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  sub_197615DA0();

  return sub_197615D60();
}

uint64_t sub_19760B1D0(uint64_t *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_19760B274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_39_2(a1, a2, a3);
  result = v3(v5);
  *v4 = result;
  *(v4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_19760B2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_38_4(a1, a2, a3, a4);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = sub_197615DA0();
  return a5(v7, v8, v9);
}

uint64_t sub_19760B330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_39_2(a1, a2, a3);
  result = v3(v5);
  *v4 = result;
  return result;
}

uint64_t sub_19760B37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_38_4(a1, a2, a3, a4);
  v7 = *v6;
  v8 = sub_197615DA0();

  return a5(v9, v8);
}

void sub_19760B3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (**a23)(uint64_t, uint64_t, uint64_t), uint64_t a24, unsigned __int8 a25, uint64_t a26, void (*a27)(uint64_t), uint64_t a28, uint64_t *a29)
{
  OUTLINED_FUNCTION_20();
  a20 = v32;
  a21 = v33;
  v182 = v34;
  v183 = v29;
  LODWORD(v184) = v35;
  LODWORD(v186) = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v198 = a29;
  v192 = v45;
  v193 = a28;
  v46 = a26;
  v47 = a27;
  v190 = a23;
  v191 = a24;
  v185 = a22;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB8, &qword_197622080);
  v49 = OUTLINED_FUNCTION_5_2(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  v187 = v52 - v53;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v54);
  v177 = &v172[-v55];
  v56 = sub_197615F50();
  v57 = OUTLINED_FUNCTION_0(v56);
  v188 = v58;
  v189 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5();
  v195 = v61 - v62;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_115();
  v194 = v64;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_115();
  v181 = v66;
  OUTLINED_FUNCTION_8_18();
  MEMORY[0x1EEE9AC00](v67);
  v180 = &v172[-v68];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  OUTLINED_FUNCTION_5_2(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_5();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  v74 = OUTLINED_FUNCTION_0(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_16();
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v172[-v80];
  if ((v42 & 1) == 0)
  {
    v194 = v40;
    v195 = v46;
    v119 = v183;
    if (v38)
    {
      if (v186)
      {
        v120 = 0;
      }

      else
      {
        v120 = v192;
      }

      v121 = 0x7FFFFFFFFFFFFFFFLL;
      v122 = v190;
      v123 = v185;
      v124 = v184;
      v125 = v195;
    }

    else
    {
      v126 = v192;
      v125 = v195;
      if ((v186 & 1) == 0)
      {
        v173 = a25;
        v175 = v47;
        if (v194 >= v182)
        {
          v127 = v182;
        }

        else
        {
          v127 = v194;
        }

        v178 = v79;
        v179 = v78;
        sub_19755F9FC(v195, v30, &qword_1EAF346D8, &unk_197619120);
        v128 = type metadata accessor for CoreTipRecord();
        v176 = v44;
        v129 = v128;
        OUTLINED_FUNCTION_12_17();
        v132 = sub_19760D2F4(v130, v131);
        v133 = sub_197615D90();
        MEMORY[0x1EEE9AC00](v133);
        OUTLINED_FUNCTION_1_1();
        *(v134 - 16) = v129;
        *(v134 - 8) = v132;
        swift_getKeyPath();
        v196 = v127;
        v197 = 0;
        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v135);
        OUTLINED_FUNCTION_1_1();
        *(v136 - 16) = v129;
        *(v136 - 8) = v132;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        v196 = v126;
        v197 = 0;
        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v137);
        OUTLINED_FUNCTION_1_1();
        *(v138 - 16) = v129;
        *(v138 - 8) = v132;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        LOBYTE(v196) = v184 & 1;
        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v139);
        OUTLINED_FUNCTION_1_1();
        *(v140 - 16) = v129;
        *(v140 - 8) = v132;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        v196 = v185;

        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v141);
        OUTLINED_FUNCTION_1_1();
        *(v142 - 16) = v129;
        *(v142 - 8) = v132;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        v196 = v190;

        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        OUTLINED_FUNCTION_89();
        MEMORY[0x1EEE9AC00](v143);
        OUTLINED_FUNCTION_1_1();
        *(v144 - 16) = v129;
        *(v144 - 8) = v132;
        swift_getKeyPath();
        OUTLINED_FUNCTION_43_4();
        v196 = v191;

        OUTLINED_FUNCTION_43();
        swift_setAtWritableKeyPath();

        v145 = sub_197615C80();
        (*(v178 + 8))(v31, v179);
        if (v119)
        {
          goto LABEL_47;
        }

        v187 = sub_197568EEC(v145);
        if (!v187)
        {
          goto LABEL_46;
        }

        v146 = v145;
        v147 = 0;
        v183 = v146 & 0xC000000000000001;
        v186 = v146;
        v148 = (v188 + 32);
        v178 = v188 + 16;
        v179 = v146 & 0xFFFFFFFFFFFFFF8;
        v174 = v188 + 8;
        v149 = v175;
        v150 = v189;
        v151 = v177;
        while (v187 != v147)
        {
          if (v183)
          {
            v152 = MEMORY[0x19A8E31E0](v147, v186);
          }

          else
          {
            if (v147 >= *(v179 + 16))
            {
              goto LABEL_61;
            }

            v152 = *(v186 + 8 * v147 + 32);
          }

          if (__OFADD__(v147, 1))
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            return;
          }

          v149(v152);
          if (__swift_getEnumTagSinglePayload(v151, 1, v150) == 1)
          {
            sub_19756E748(v151);
          }

          else
          {
            v153 = *v148;
            v154 = v180;
            (*v148)(v180, v151, v150);
            (*v178)(v181, v154, v150);
            v155 = *v198;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v198 = v155;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v161 = *(v155 + 16);
              OUTLINED_FUNCTION_29_11();
              sub_1975BBAC8();
              v155 = v162;
              OUTLINED_FUNCTION_50_0(v162);
            }

            v157 = *(v155 + 16);
            if (v157 >= *(v155 + 24) >> 1)
            {
              OUTLINED_FUNCTION_29_11();
              sub_1975BBAC8();
              OUTLINED_FUNCTION_50_0(v163);
            }

            v158 = v189;
            (*(v188 + 8))(v180, v189);
            *(*v198 + 16) = v157 + 1;
            OUTLINED_FUNCTION_41_3();
            v150 = v158;
            v153(v159 + v160 * v157, v181, v158);
            v149 = v175;
            v151 = v177;
          }

          ++v147;
        }

        if (v173)
        {
          sub_197615C90();
        }

        v164 = v182;
        v165 = v193;
        v166 = v192 + v182;
        if (__OFADD__(v192, v182))
        {
          goto LABEL_62;
        }

        v167 = sub_197567E4C(v186);

        if (v167 == v164 && v166 < v194)
        {
          if (!__OFSUB__(v194, v166))
          {
            OUTLINED_FUNCTION_47_1(&a16);
            sub_19760B3CC(v176, v169, 0, v170, 0, v166, 0, v184 & 1, v185, v190, v191, v171, v195, v149, v165, v198);
            goto LABEL_47;
          }

          goto LABEL_63;
        }

        goto LABEL_47;
      }

      v120 = 0;
      v122 = v190;
      v123 = v185;
      v124 = v184;
      v121 = v194;
    }

    sub_19760B3CC(v44, v182, 0, v121, 0, v120, 0, v124 & 1, v123, v122, v191, a25 & 1, v125, v47, v193, v198);
    goto LABEL_47;
  }

  v178 = v79;
  v179 = v78;
  sub_19755F9FC(v46, v30, &qword_1EAF346D8, &unk_197619120);
  v82 = type metadata accessor for CoreTipRecord();
  OUTLINED_FUNCTION_12_17();
  v85 = sub_19760D2F4(v83, v84);
  sub_197615D90();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_1_1();
  *(v87 - 16) = v82;
  *(v87 - 8) = v85;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v196 = v40;
  v197 = v38 & 1;
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_1_1();
  *(v89 - 16) = v82;
  *(v89 - 8) = v85;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v196 = v192;
  v197 = v186 & 1;
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_1_1();
  *(v91 - 16) = v82;
  *(v91 - 8) = v85;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  LOBYTE(v196) = v184 & 1;
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_1_1();
  *(v93 - 16) = v82;
  *(v93 - 8) = v85;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v196 = v185;

  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_1_1();
  *(v95 - 16) = v82;
  *(v95 - 8) = v85;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v196 = v190;

  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_21_0();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_1_1();
  *(v97 - 16) = v82;
  *(v97 - 8) = v85;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_9();
  v196 = v191;

  OUTLINED_FUNCTION_22_13();

  v98 = v183;
  v99 = sub_197615C80();
  (*(v178 + 8))(v81, v179);
  if (!v98)
  {
    v100 = sub_197568EEC(v99);
    v101 = 0;
    v191 = v99 & 0xFFFFFFFFFFFFFF8;
    v192 = v99 & 0xC000000000000001;
    v102 = v189;
    v190 = (v188 + 32);
    v183 = v188 + 8;
    v184 = (v188 + 16);
    v103 = v187;
    v104 = v99;
    v185 = v100;
    v186 = v99;
    while (v100 != v101)
    {
      if (v192)
      {
        v115 = OUTLINED_FUNCTION_43();
        v105 = MEMORY[0x19A8E31E0](v115);
      }

      else
      {
        if (v101 >= *(v191 + 16))
        {
          goto LABEL_59;
        }

        v105 = *(v104 + 8 * v101 + 32);
      }

      if (__OFADD__(v101, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v47(v105);
      if (__swift_getEnumTagSinglePayload(v103, 1, v102) == 1)
      {
        sub_19756E748(v103);
      }

      else
      {
        v106 = v47;
        v107 = *v190;
        v108 = v194;
        (*v190)(v194, v103, v102);
        (*v184)(v195, v108, v102);
        v109 = *v198;
        v110 = swift_isUniquelyReferenced_nonNull_native();
        *v198 = v109;
        if ((v110 & 1) == 0)
        {
          v116 = *(v109 + 16);
          OUTLINED_FUNCTION_29_11();
          sub_1975BBAC8();
          v109 = v117;
          OUTLINED_FUNCTION_50_0(v117);
        }

        v111 = *(v109 + 16);
        if (v111 >= *(v109 + 24) >> 1)
        {
          OUTLINED_FUNCTION_29_11();
          sub_1975BBAC8();
          OUTLINED_FUNCTION_50_0(v118);
        }

        v112 = v189;
        (*(v188 + 8))(v194, v189);
        *(*v198 + 16) = v111 + 1;
        v102 = v112;
        OUTLINED_FUNCTION_41_3();
        v107(v113 + v114 * v111, v195, v112);
        v47 = v106;
        v104 = v186;
        v103 = v187;
        v100 = v185;
      }

      ++v101;
    }

LABEL_46:
  }

LABEL_47:
  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.forEach(in:batchSize:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:resetsContext:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_20();
  v38 = v35;
  v39 = v33;
  if (v40)
  {
    static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v31, v33, v34 & 1, v35, v36 & 1, v37 & 1, a21, a22, a23, a25, a28, a29, v56, SHIDWORD(v56), v57, v58, v59, SHIDWORD(v59), v60, v61, v62, v63, v64, v65);
    if (!v30)
    {
      MEMORY[0x1EEE9AC00](v41);
      v52 = a28;
      v53 = a29;
      v54 = a26;
      v55 = a27;
      sub_197616530();
      OUTLINED_FUNCTION_0_2();
      swift_getWitnessTable();
      sub_1976163C0();
    }

    goto LABEL_11;
  }

  if (v34)
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v36 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v36)
  {
LABEL_8:
    v38 = 0;
LABEL_9:
    v53 = a28;
    v54 = a29;
    v51[1] = a26;
    v52 = a27;
    v51[0] = a25;
    v42 = v39;
    v43 = v38;
LABEL_10:
    static PersistentModel.forEach(in:batchSize:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:resetsContext:_:_:)(v31, v32, 0, v42, 0, v43);
LABEL_11:
    OUTLINED_FUNCTION_19_0();
    return;
  }

  v67 = a24;
  v68 = a27;
  v65 = v29;
  v66 = v32;
  if (v33 < v32)
  {
    v32 = v33;
  }

  v44 = v31;
  HIDWORD(v62) = v37;
  static PersistentModel.fetch(in:fetchLimit:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(v31, v32, 0, v35, 0, v37 & 1, a21, a22, a23, a25, a28, a29, v56, SHIDWORD(v56), v57, v58, v59, SHIDWORD(v59), v60, v61, v62, a21, a22, v65);
  if (v30)
  {
    goto LABEL_11;
  }

  v58 = v44;
  v60 = a26;
  v61 = v45;
  v46 = sub_197616530();
  OUTLINED_FUNCTION_2_40();
  swift_getWitnessTable();
  v59 = v46;
  v47 = sub_197616770();
  if (v47)
  {

    goto LABEL_11;
  }

  v57 = &v56;
  MEMORY[0x1EEE9AC00](v47);
  v56 = v51;
  v52 = a28;
  v53 = a29;
  v54 = v60;
  v55 = v68;
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  sub_1976163C0();
  if (v67)
  {
    sub_197615C90();
  }

  v48 = v66;
  v59 = v38 + v66;
  if (__OFADD__(v38, v66))
  {
    __break(1u);
  }

  else
  {
    v49 = sub_1976164E0();

    if (v49 != v48 || v59 >= v39)
    {
      goto LABEL_11;
    }

    if (!__OFSUB__(v39, v59))
    {
      if (v39 - v59 >= v48)
      {
        v32 = v48;
      }

      else
      {
        v32 = v39 - v59;
      }

      v31 = v58;
      v43 = v59;
      v42 = v39;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_19760C454(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

uint64_t sub_19760C480(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = a4;
  v9 = sub_197616860();
  v24[0] = *(v9 - 8);
  v10 = *(v24[0] + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - v12;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - v19;
  v21 = v24[3];
  result = a2(a1);
  if (!v21)
  {
    v23 = v24[0];
    if (__swift_getEnumTagSinglePayload(v13, 1, a6) == 1)
    {
      return (*(v23 + 8))(v13, v9);
    }

    else
    {
      (*(v14 + 32))(v20, v13, a6);
      (*(v14 + 16))(v18, v20, a6);
      sub_197616530();
      sub_1976164F0();
      return (*(v14 + 8))(v20, a6);
    }
  }

  return result;
}

uint64_t sub_19760C6A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a4;
  v29 = a2;
  v27 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF355A0, &qword_197622258);
  v32 = *(v30 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v27 - v8;
  v10 = sub_197615800();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  sub_197615F50();
  swift_getWitnessTable();
  v15 = sub_1976157F0();
  v31 = *(v15 - 8);
  v16 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - v17;
  v19 = *v27;
  sub_197615820();
  v33 = a3;
  v34 = v28;
  swift_getKeyPath();
  sub_19760D858();

  (*(v11 + 8))(v14, v10);
  sub_197615810();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_19760D290();
  v22 = sub_19760D2F4(&qword_1ED816C88, MEMORY[0x1E697BC90]);
  v23 = v30;
  v38 = v15;
  v39 = v30;
  v40 = WitnessTable;
  v41 = v21;
  v42 = v22;
  a5[3] = sub_1976157B0();
  v37 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = sub_197595A48();
  v35 = v24;
  v36 = v25;
  a5[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(a5);
  sub_1976156F0();
  (*(v32 + 8))(v9, v23);
  return (*(v31 + 8))(v18, v15);
}

void static PersistentModel.get(in:fetchOffset:includePendingChanges:relationshipPaths:propertiesToFetch:sortBy:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_20();
  a20 = v24;
  a21 = v25;
  v59 = v26;
  v61 = v27;
  v28 = a22;
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_16_2();
  v29 = sub_197616860();
  OUTLINED_FUNCTION_0(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_42_4();
  v60 = sub_197615DA0();
  v35 = OUTLINED_FUNCTION_13(v60);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_0_49();
  v39 = MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_53_1();
  v41 = MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_17();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_17();
  v44 = MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_45_1(v44, v45, v46, v47, v48, v49, v50, v51, v58);
  (*(v31 + 16))(v23, v59, v29);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  KeyPath = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(KeyPath);

  swift_getKeyPath();
  OUTLINED_FUNCTION_47_1(&a17);
  KeyPathAccessible.with<A>(_:_:)(v53);

  v54 = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(v54);

  v55 = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(v55);

  v56 = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(v56);

  v57 = swift_getKeyPath();
  KeyPathAccessible.with<A>(_:_:)(v57);

  sub_1975F75B8(v61, v60);
  if (!v22)
  {
    Array.first<A>(of:)(v28, &v62);
  }

  OUTLINED_FUNCTION_19_0();
}

void static PersistentModel.getOrCreate(in:includePendingChanges:relationshipPaths:sortBy:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_20();
  v65 = v23;
  v25 = v24;
  v58 = v27;
  v59 = v26;
  v60 = v28;
  v62 = v29;
  v63 = v30;
  v61 = v31;
  v32 = OUTLINED_FUNCTION_11_22();
  v33 = sub_197616860();
  OUTLINED_FUNCTION_5_2(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_4();
  v66 = sub_197615DA0();
  v37 = OUTLINED_FUNCTION_0(v66);
  v64 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_0_49();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15_16();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_17_16();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v58 - v45;
  OUTLINED_FUNCTION_18(v32);
  (*(v47 + 16))(v22, v60, v32);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v32);
  sub_19760A92C();
  OUTLINED_FUNCTION_27_9();
  sub_197615D90();
  v73 = v25;
  v74 = a21;
  KeyPath = swift_getKeyPath();
  v76 = 1;
  v77 = 0;
  KeyPathAccessible.with<A>(_:_:)(KeyPath);

  v71 = v25;
  v72 = a21;
  v52 = swift_getKeyPath();
  LOBYTE(v76) = v61;
  KeyPathAccessible.with<A>(_:_:)(v52);

  v69 = v25;
  v70 = a21;
  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(v63);
  KeyPathAccessible.with<A>(_:_:)(v53);

  v67 = v25;
  v68 = a21;
  swift_getKeyPath();
  OUTLINED_FUNCTION_40_2(v65);
  KeyPathAccessible.with<A>(_:_:)(v54);

  v55 = sub_197615C80();
  if (v21)
  {
    (*(v64 + 8))(v46, v66);
  }

  else
  {
    v56 = v64;
    v76 = v55;
    OUTLINED_FUNCTION_42_4();
    sub_197616530();
    OUTLINED_FUNCTION_2_40();
    swift_getWitnessTable();
    sub_197616760();

    if (!v75)
    {
      v59(v57);
      sub_197615CD0();
    }

    (*(v56 + 8))(v46, v66);
  }

  OUTLINED_FUNCTION_19_0();
}

void sub_19760D1E4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  PersistentModel.delete()();
}

uint64_t sub_19760D210()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_19760D244(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  return sub_19760B1D0(a1);
}

uint64_t sub_19760D264(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1);
}

unint64_t sub_19760D290()
{
  result = qword_1ED816D10;
  if (!qword_1ED816D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF355A0, &qword_197622258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816D10);
  }

  return result;
}

uint64_t sub_19760D2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Platform.System.name.getter()
{
  result = 5459817;
  switch(*v0)
  {
    case 1:
      result = 0x534F63616DLL;
      break;
    case 2:
      result = 1397716596;
      break;
    case 3:
      result = 0x534F6E6F69736976;
      break;
    case 4:
      result = 0x534F6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static Platform.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED817298 != -1)
  {
    result = swift_once();
  }

  v2 = byte_1ED8172A2;
  v3 = byte_1ED8172A3;
  v4 = byte_1ED8172A4;
  v5 = byte_1ED8172A5;
  *a1 = unk_1ED8172A0;
  *(a1 + 2) = v2;
  *(a1 + 3) = v3;
  *(a1 + 4) = v4;
  *(a1 + 5) = v5;
  return result;
}

uint64_t sub_19760D4E8()
{
  v1 = *v0;
  sub_197617190();
  MEMORY[0x19A8E3940](v1);
  return sub_1976171F0();
}

unint64_t sub_19760D534()
{
  result = qword_1EAF356F0;
  if (!qword_1EAF356F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF356F0);
  }

  return result;
}

unint64_t sub_19760D58C()
{
  result = qword_1EAF356F8;
  if (!qword_1EAF356F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF356F8);
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Platform(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 6))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 2);
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

uint64_t storeEnumTagSinglePayload for Platform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Platform.Device(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Platform.System(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static Predicate.conjunction(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  if (a3 == 1)
  {
    v8 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_0_50();
    while (a3 != v10)
    {
      OUTLINED_FUNCTION_1_49(v9, v10);
    }

    swift_getTupleTypeMetadata();
  }

  sub_197615AD0();
  v11 = *(v6 + 8);
  return sub_1976163A0();
}

uint64_t static Predicate.comparison<A>(_:value:comparison:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 == 1)
  {
    v5 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    OUTLINED_FUNCTION_0_50();
    while (v7 != v8)
    {
      OUTLINED_FUNCTION_1_49(v6, v8);
    }

    swift_getTupleTypeMetadata();
  }

  return sub_197615AE0();
}

uint64_t static Predicate.conjunction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v24 = a3;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    OUTLINED_FUNCTION_0_50();
    while (a2 != v9)
    {
      OUTLINED_FUNCTION_1_49(v8, v9);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v29[7] = TupleTypeMetadata;
  v10 = sub_197615AD0();
  v11 = sub_197616860();
  v26 = &v23;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - v15;
  v25 = &v23;
  v23 = *(v10 - 8);
  v17 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v23 - v18;
  v29[6] = a1;
  sub_197616530();
  swift_getWitnessTable();
  v20 = Sequence.removeNil<A>()();
  v29[5] = v20;
  sub_197616530();
  swift_getWitnessTable();
  sub_197616760();
  if (__swift_getEnumTagSinglePayload(v16, 1, v10) == 1)
  {
    (*(v12 + 8))(v16, v11);

    return sub_197615AB0();
  }

  else
  {
    v22 = v23;
    (*(v23 + 32))(v19, v16, v10);
    v28 = v20;
    v29[3] = sub_197616940();
    v29[4] = swift_getWitnessTable();
    v29[0] = swift_allocObject();
    sub_197616780();
    static Predicate.conjunction(_:_:)(v19, v29, a2, v24);
    (*(v22 + 8))(v19, v10);
    return __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }
}

uint64_t sub_19760DDB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v47 = a3;
  v48 = a6;
  v41 = a2;
  v39 = a1;
  v45 = a7;
  v43 = a8;
  v44 = a9;
  v11 = sub_1976157C0();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  if (a4 == 1)
  {
    v16 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v13);
    v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a4 != i; ++i)
    {
      *&v18[8 * i] = *((a5 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    swift_getTupleTypeMetadata();
  }

  v20 = sub_197615800();
  v42 = &v38;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v38 - v23;
  swift_getWitnessTable();
  v25 = sub_1976157F0();
  v40 = &v38;
  v38 = *(v25 - 8);
  v26 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  v29 = *v39;
  sub_197615820();
  sub_197615700();
  (*(v21 + 8))(v24, v20);
  sub_197615810();
  WitnessTable = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v54 = v25;
  v55 = v11;
  v56 = WitnessTable;
  v57 = v31;
  v58 = v48;
  v32 = sub_1976156D0();
  v33 = v15;
  v34 = v45;
  v45[3] = v32;
  v53 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v51 = v43;
  v52 = v44;
  v36 = swift_getWitnessTable();
  v49 = v35;
  v50 = v36;
  v34[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(v34);
  sub_197615760();
  (*(v46 + 8))(v33, v11);
  return (*(v38 + 8))(v28, v25);
}

uint64_t sub_19760E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v13 = a4;
  v14 = a1;
  v15 = a2;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    for (i = 0; v5 != i; ++i)
    {
      *&v8[8 * i] = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v16 = TupleTypeMetadata;
  return sub_197615AE0();
}

uint64_t sub_19760E324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[9];
  return sub_19760DDB8(a1, v2[8], v2[10], v2[2], v2[3], v2[5], a2, v2[6], v2[7]);
}

uint64_t sub_19760E35C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v52 = a3;
  v48 = a2;
  v54 = a6;
  if (a4 == 1)
  {
    v7 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; v9 != i; ++i)
    {
      *&v12[8 * i] = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v14 = sub_197615800();
  v46 = *(v14 - 8);
  v15 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v71[1] = TupleTypeMetadata;
  v18 = sub_197615AD0();
  v19 = sub_1976157C0();
  v53 = &v42;
  v56 = *(v19 - 8);
  v20 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  v71[0] = v14;
  WitnessTable = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v65 = 1;
  v66 = v19;
  v67 = v71;
  v68 = WitnessTable;
  v44 = WitnessTable;
  v69 = &v70;
  v70 = v43;
  v24 = sub_1976156B0();
  v51 = &v42;
  v50 = *(v24 - 8);
  v25 = *(v50 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v55 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = &v42;
  MEMORY[0x1EEE9AC00](v26);
  v47 = &v42 - v28;
  v29 = *a1;
  v45 = v18;
  sub_197615810();
  sub_197615820();
  v64 = v17;
  sub_197615750();
  v30 = *(v56 + 8);
  v56 += 8;
  v30(v22, v19);
  v31 = *(v46 + 8);
  v31(v17, v14);
  sub_197615810();
  sub_197615820();
  v63 = v17;
  sub_197615750();
  v30(v22, v19);
  v31(v17, v14);
  v32 = swift_getWitnessTable();
  v65 = v24;
  v66 = v24;
  v67 = v32;
  v68 = v32;
  v33 = sub_1976156E0();
  v34 = v54;
  v54[3] = v33;
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v61 = v35;
  v62 = v36;
  v37 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v59 = v37;
  v60 = &v65;
  v57 = swift_getWitnessTable();
  v58 = v57;
  v34[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(v34);
  v38 = v47;
  v39 = v55;
  sub_197615780();
  v40 = *(v50 + 8);
  v40(v39, v24);
  return (v40)(v38, v24);
}

uint64_t sub_19760E968(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_197616930();
    swift_retain_n();
    sub_197616200();

    sub_197615850();
  }

  return 1;
}

uint64_t sub_19760EA00()
{
  swift_getKeyPath();

  sub_197615850();

  swift_getKeyPath();

  sub_197615850();

  swift_getKeyPath();

  sub_197615850();
}

uint64_t sub_19760EAF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = sub_197615870();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_197615840();
  sub_19758493C(a2, v12);
  v13 = *(v6 + 8);
  v13(v10, v5);
  a3(a2, a2);
  return (v13)(v12, v5);
}

uint64_t sub_19760EC30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_197616BE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_197615870();
  (*(*(v9 - 8) + 16))(a1, v2, v9);
  v12 = a1;
  sub_197584B7C();
  sub_197616EA0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_19760ED74(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6B90]);
  swift_getMetatypeMetadata();

  sub_197616220();

  sub_197615850();

  return 1;
}

uint64_t static PredicateCoder.encode<A>(_:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static PredicateCoder.encode<A>(_:)(a1, a3);
  if (v3)
  {
    if (qword_1ED815ED8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for logger();
    __swift_project_value_buffer(v7, qword_1ED815EE0);
    sub_197616A20();
    MEMORY[0x19A8E2A50](0x7461636964657250, 0xEF287265646F4365);
    sub_197615AD0();
    swift_getWitnessTable();
    sub_197616EC0();
    MEMORY[0x19A8E2A50](0xD000000000000023, 0x80000001976268B0);
    swift_getErrorValue();
    sub_197616EB0();
    sub_197558864();

    return static PredicateCoder.encode<A>(_:)(a2, a3);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredicateCoder(_BYTE *result, int a2, int a3)
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

uint64_t RawRepresentable.init(raw:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  sub_197616860();
  OUTLINED_FUNCTION_14();
  v35 = v8;
  v36 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v35 - v11;
  v37 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_197616860();
  OUTLINED_FUNCTION_14();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  OUTLINED_FUNCTION_14();
  v23 = v22;
  v25 = *(v24 + 64);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v35 - v30;
  v38 = a1;
  sub_1975674F0(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v21, 0, 1, AssociatedTypeWitness);
    (*(v23 + 32))(v31, v21, AssociatedTypeWitness);
    (*(v23 + 16))(v29, v31, AssociatedTypeWitness);
    sub_1976163F0();
    sub_19755643C(v38);
    (*(v23 + 8))(v31, AssociatedTypeWitness);
    if (!__swift_getEnumTagSinglePayload(v12, 1, a2))
    {
      v33 = v39;
      (*(*(a2 - 8) + 32))(v39, v12, a2);
      v32 = 0;
      return __swift_storeEnumTagSinglePayload(v33, v32, 1, a2);
    }

    (*(v35 + 8))(v12, v36);
    v32 = 1;
  }

  else
  {
    v32 = 1;
    __swift_storeEnumTagSinglePayload(v21, 1, 1, AssociatedTypeWitness);
    sub_19755643C(v38);
    (*(v16 + 8))(v21, v14);
  }

  v33 = v39;
  return __swift_storeEnumTagSinglePayload(v33, v32, 1, a2);
}

uint64_t static RegexComponent<>.uuidString.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED816B78 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  v3 = __swift_project_value_buffer(v2, qword_1ED816B80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_19760F4CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_19760F5B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_19760F5F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_20_13(a1, a2, a3, a4, a5);
  v7 = sub_197616860();
  v5[9] = v7;
  OUTLINED_FUNCTION_20_0(v7);
  v5[10] = v8;
  v10 = *(v9 + 64);
  v5[11] = OUTLINED_FUNCTION_12_18();
  v11 = *(a4 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_7_22();
  v5[15] = v13;
  OUTLINED_FUNCTION_0(v13);
  v5[16] = v14;
  v16 = *(v15 + 64);
  v5[17] = OUTLINED_FUNCTION_12_18();
  v17 = *(*(sub_197616860() - 8) + 64);
  v5[18] = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_14();
  v5[19] = v18;
  v20 = *(v19 + 64);
  v5[20] = OUTLINED_FUNCTION_12_18();
  v21 = OUTLINED_FUNCTION_7_22();
  v5[21] = v21;
  OUTLINED_FUNCTION_20_0(v21);
  v5[22] = v22;
  v24 = *(v23 + 64);
  v5[23] = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

uint64_t sub_19760F878()
{
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = sub_1976164B0();
  v10 = OUTLINED_FUNCTION_10_23(v9);
  v11(v10);
  OUTLINED_FUNCTION_24_12();
  v12 = v0[23];
  v13 = v1[19];
  v14 = v1[16];
  v15 = v1[13];
  OUTLINED_FUNCTION_17_17();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_24();
  OUTLINED_FUNCTION_6_21();
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_8_27();
    v18(v17);
    v19 = v0[2];

    OUTLINED_FUNCTION_22_14();
    v25 = v19;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_21_15();
    v21(v20);
    OUTLINED_FUNCTION_0_51();
    v22 = *(v12 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[24] = v23;
    *v23 = v24;
    v25 = OUTLINED_FUNCTION_4_42(v23);
  }

  return v26(v25);
}

uint64_t sub_19760FA30()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v2 + 200) = v0;

  if (v0)
  {
    v8 = *(v2 + 16);
  }

  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_19760FB40()
{
  v1 = v0[11];
  v2 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[9];
    v8 = v0[10];
    (*(v5 + 8))(v0[17], v0[15]);
    (*(v8 + 8))(v1, v7);
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v11 + 32))(v9, v1, v2);
    (*(v11 + 16))(v10, v9, v2);
    sub_197616530();
    sub_1976164F0();
    (*(v11 + 8))(v9, v2);
    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  OUTLINED_FUNCTION_17_17();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_24();
  OUTLINED_FUNCTION_6_21();
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_8_27();
    v18(v17);
    v19 = v0[2];

    OUTLINED_FUNCTION_22_14();
    v25 = v19;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_21_15();
    v21(v20);
    OUTLINED_FUNCTION_0_51();
    v22 = *(v12 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[24] = v23;
    *v23 = v24;
    v25 = OUTLINED_FUNCTION_4_42();
  }

  return v26(v25);
}

uint64_t sub_19760FDC0()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[25];

  return v9();
}

uint64_t Sequence.mapSet<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a1;
  v15[7] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C80, &qword_19761BF20);
  v12 = sub_197585E28(sub_1976119FC, v15, a3, a4, v11, a5, MEMORY[0x1E69E7288], &v16);
  if (!v6)
  {
    v16 = v12;
    sub_197616530();
    OUTLINED_FUNCTION_0_2();
    swift_getWitnessTable();
    Sequence.asSet<>()();
    v7 = v13;
  }

  return v7;
}

uint64_t Sequence.removeNil<A>()()
{
  swift_getKeyPath();
  v0 = sub_197616370();

  return v0;
}

uint64_t sub_197610058(uint64_t a1, __int128 *a2)
{
  v3 = type metadata accessor for CoreTip.ConstellationAction();
  v4 = OUTLINED_FUNCTION_0(v3);
  v23 = v5;
  v24 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v10 = (v9 - v8);
  v36 = MEMORY[0x1E69E7CC0];
  sub_1975D1FE4(0, 0, 0);
  v11 = 0;
  v12 = v36;
  v25 = *(a1 + 16);
  v13 = (a1 + 32);
  while (v25 != v11)
  {
    memcpy(v32, v13, sizeof(v32));
    memcpy(v34, v13, sizeof(v34));
    v33 = v11;
    v35 = *a2;
    v30 = v35;
    sub_1975B13E4(v32, v31);
    sub_197611B68(&v35, v31);
    v29 = v13;
    MEMORY[0x19A8E2A50](45, 0xE100000000000000);
    v31[0] = v11;
    v14 = sub_197616E80();
    MEMORY[0x19A8E2A50](v14);

    v15 = v30;
    v17 = v34[0];
    v16 = v34[1];
    v27 = v34[2];
    v28 = *(&v30 + 1);
    v18 = v34[3];
    memcpy(v31, v34, sizeof(v31));
    v19 = *(v24 + 32);

    sub_1975D99A0(&v34[4], &v30);
    sub_1975B8790(v31, v10 + v19);
    sub_197611BC4(&v33);
    *v10 = v15;
    v10[1] = v28;
    v10[2] = v17;
    v10[3] = v16;
    v10[4] = v27;
    v10[5] = v18;
    memcpy(v10 + 6, &v34[4], 0x70uLL);
    v36 = v12;
    v21 = *(v12 + 16);
    v20 = *(v12 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1975D1FE4(v20 > 1, v21 + 1, 1);
      v12 = v36;
    }

    *(v12 + 16) = v21 + 1;
    sub_197611C2C(v10, v12 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21);
    v13 = v29 + 144;
    ++v11;
  }

  sub_1975AB278(a2);
  return v12;
}

uint64_t sub_197610368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v25 = a7;
  v26 = a8;
  v13 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  sub_197616860();
  v24 = a6;
  v28 = a6;
  swift_getWitnessTable();
  result = sub_197616100();
  if (!v8)
  {
    swift_getAssociatedTypeWitness();
    sub_197616530();
    v18 = sub_1975F457C();

    v27 = v18;
    MEMORY[0x1EEE9AC00](v19);
    *(&v23 - 4) = a3;
    *(&v23 - 3) = a4;
    v20 = v24;
    *(&v23 - 2) = a5;
    *(&v23 - 1) = v20;
    v21 = sub_197616530();
    OUTLINED_FUNCTION_0_2();
    WitnessTable = swift_getWitnessTable();
    v26(&v29, v25, &v23 - 6, v21, WitnessTable);

    return v29;
  }

  return result;
}

void Sequence.asSet<>()()
{
  OUTLINED_FUNCTION_15_12();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_0(v1);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(v5 + 16);
  v11(&v13[-v12], v0, v2);
  swift_getAssociatedTypeWitness();
  sub_1976166F0();
  if (!swift_dynamicCast())
  {
    v11(v10, v0, v2);
    sub_197616700();
  }

  OUTLINED_FUNCTION_14_9();
}

uint64_t Sequence.asArray<>()(uint64_t a1)
{
  v2 = v1;
  v4 = OUTLINED_FUNCTION_0(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = *(v6 + 16);
  v12(v15 - v13, v2, a1);
  swift_getAssociatedTypeWitness();
  sub_197616530();
  if (swift_dynamicCast())
  {
    return v15[1];
  }

  v12(v11, v2, a1);
  return sub_197616540();
}

uint64_t Sequence.asDictionary<A, B>()(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0(a1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  (*(v8 + 16))(v7 - v6, v1, a1);
  return sub_1976160C0();
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_20_13(a1, a2, a3, a4, a5);
  v7 = *(*(v6 - 8) + 64);
  v5[9] = OUTLINED_FUNCTION_12_18();
  v8 = OUTLINED_FUNCTION_7_22();
  v5[10] = v8;
  OUTLINED_FUNCTION_0(v8);
  v5[11] = v9;
  v11 = *(v10 + 64);
  v5[12] = OUTLINED_FUNCTION_12_18();
  v12 = *(*(sub_197616860() - 8) + 64);
  v5[13] = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_14();
  v5[14] = v13;
  v15 = *(v14 + 64);
  v5[15] = OUTLINED_FUNCTION_12_18();
  v16 = OUTLINED_FUNCTION_7_22();
  v5[16] = v16;
  OUTLINED_FUNCTION_20_0(v16);
  v5[17] = v17;
  v19 = *(v18 + 64);
  v5[18] = OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_197610B34()
{
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = sub_1976164B0();
  v10 = OUTLINED_FUNCTION_10_23(v9);
  v11(v10);
  OUTLINED_FUNCTION_24_12();
  v12 = v0[18];
  v13 = v1[14];
  v14 = v1[11];
  v15 = v1[8];
  OUTLINED_FUNCTION_17_17();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_24();
  OUTLINED_FUNCTION_6_21();
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_11_23();
    v18(v17);
    v19 = v0[2];

    OUTLINED_FUNCTION_22_14();
    v27 = v19;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_19_13();
    v22(v21);
    OUTLINED_FUNCTION_0_51();
    v29 = v23;
    v24 = *(v12 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[19] = v25;
    *v25 = v26;
    v27 = OUTLINED_FUNCTION_5_28(v25);
    v20 = v29;
  }

  return v20(v27);
}

uint64_t sub_197610CD8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v2 + 160) = v0;

  if (v0)
  {
    v8 = *(v2 + 16);
  }

  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197610DE8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_197616530();
  sub_1976164F0();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  OUTLINED_FUNCTION_17_17();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_24();
  OUTLINED_FUNCTION_6_21();
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_11_23();
    v12(v11);
    v13 = v0[2];

    OUTLINED_FUNCTION_22_14();
    v21 = v13;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_19_13();
    v16(v15);
    OUTLINED_FUNCTION_0_51();
    v23 = v17;
    v18 = *(v6 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[19] = v19;
    *v19 = v20;
    v21 = OUTLINED_FUNCTION_5_28();
    v14 = v23;
  }

  return v14(v21);
}

uint64_t sub_197610F98()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t sub_197611074(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a2();
  if (!v4 && (result & 1) != 0)
  {
    return a4(a1);
  }

  return result;
}

uint64_t sub_19761114C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *), void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a1;
  v14[6] = sub_197585E28(a5, v14, a2, *(v10 + *MEMORY[0x1E69E77B0] + 8), MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a8);
  v11 = sub_197616530();
  OUTLINED_FUNCTION_0_2();
  WitnessTable = swift_getWitnessTable();
  a6(v11, WitnessTable, a4);
}

uint64_t sub_197611270(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, char *), void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a1;
  v13[7] = a2;
  v13[8] = sub_197585E28(a7, v13, a3, a4, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], a8);
  v10 = sub_197616530();
  OUTLINED_FUNCTION_0_2();
  WitnessTable = swift_getWitnessTable();
  a8(v10, WitnessTable, a6);
}

void Sequence.sum<>()()
{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v14 - v12;
  sub_197616C40();
  v14[2] = v5;
  v14[3] = v3;
  v14[4] = v1;
  sub_1976163A0();
  (*(v9 + 8))(v13, AssociatedTypeWitness);
  OUTLINED_FUNCTION_14_9();
}

void Sequence.sum<A>(_:)()
{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(*v6 + *MEMORY[0x1E69E77B0] + 8);
  OUTLINED_FUNCTION_14();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v16 - v14;
  sub_197616C40();
  v16[2] = v5;
  v16[3] = v3;
  v16[4] = v1;
  v16[5] = v7;
  sub_1976163A0();
  (*(v10 + 8))(v15, v8);
  OUTLINED_FUNCTION_14_9();
}

{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  sub_197616C40();
  sub_1976163A0();
  (*(v3 + 8))(v9, v1);
  OUTLINED_FUNCTION_14_9();
}

uint64_t sub_19761162C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  swift_getAtKeyPath();
  sub_197616C30();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_19761187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v11);
  sub_197616C30();
  return (*(v7 + 8))(v10, a6);
}

BOOL sub_197611980(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getAssociatedTypeWitness();
  v4 = sub_1976164E0();
  return v4 < sub_1976164E0();
}

uint64_t sub_1976119FC(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

BOOL sub_197611A60(uint64_t *a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_197611980(a1, a2);
}

uint64_t sub_197611A84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  return sub_197611074(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_197611AA8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_197611B04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_19761145C();
}

uint64_t sub_197611B24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_19761162C(a1, a2, *(v2 + 40));
}

uint64_t sub_197611B44(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_19761187C(a1, a2, v2[6], v2[7], v2[2], v2[3]);
}

uint64_t sub_197611BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35788, &qword_197622DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_197611C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTip.ConstellationAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_197611CE8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_197616290();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_197616340();
      OUTLINED_FUNCTION_0_52();
      return OUTLINED_FUNCTION_1_52();
    }
  }

  __break(1u);
  return result;
}

int64_t sub_197611D9C(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_2_41(result, a2);
    if (v3 >= result)
    {
      sub_197612390(result, v3, v2);
      OUTLINED_FUNCTION_0_52();
      return OUTLINED_FUNCTION_1_52();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197611DF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1975D2064();
    v3 = 32;
    do
    {
      v4 = *(a1 + v3);
      v5 = sub_197616250();
      v7 = v6;
      v8 = *(v11 + 16);
      if (v8 >= *(v11 + 24) >> 1)
      {
        sub_1975D2064();
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      ++v3;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35790, &qword_197622DC8);
  sub_197559AAC(&qword_1EAF35798, &qword_1EAF35790, &qword_197622DC8);
  return sub_197616320();
}

void sub_197611F94(uint64_t a1, uint64_t a2)
{
  sub_1975607A8();
  v3 = sub_1976168A0();
  v4 = 0;
  v17 = *(v3 + 16);
  v5 = (v3 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v17 == v4)
    {

      sub_197612158(1, v6);
      return;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v7 = *(v5 - 1);
    v8 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A38, &qword_19761B660);
    inited = swift_initStackObject();
    *(inited + 32) = v7;
    *(inited + 16) = xmmword_197618C00;
    *(inited + 40) = v8;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    v10 = *(v6 + 16);
    if (__OFADD__(v10, 2))
    {
      goto LABEL_13;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v11 = *(v6 + 24) >> 1, v11 < v10 + 2))
    {
      sub_1975BB398();
      v6 = v12;
      v11 = *(v12 + 24) >> 1;
    }

    if (v11 - *(v6 + 16) < 2)
    {
      goto LABEL_14;
    }

    swift_arrayInitWithCopy();

    v13 = *(v6 + 16);
    v14 = __OFADD__(v13, 2);
    v15 = v13 + 2;
    if (v14)
    {
      goto LABEL_15;
    }

    *(v6 + 16) = v15;
    v5 += 2;
    ++v4;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_197612158(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (a1)
  {
    v27 = 0;
    v4 = 0;
    v29 = *(a2 + 16);
    v5 = a2 + 40;
    v6 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    for (i = a2 + 40; ; v5 = i)
    {
      for (j = (v5 + 16 * v4); ; j += 2)
      {
        if (v29 == v4)
        {

          return;
        }

        if (v4 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(j - 1);
        v8 = *j;
        v10 = *(v6 + 16);
        if (v10 >= a1)
        {
          break;
        }

        v11 = *j;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_197553D0C();
        }

        v12 = *(v6 + 16);
        if (v12 >= *(v6 + 24) >> 1)
        {
          sub_197553D0C();
        }

        *(v6 + 16) = v12 + 1;
        v13 = v6 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v8;
        ++v4;
      }

      if (v27 >= v10)
      {
        goto LABEL_29;
      }

      v14 = v6 + 16 * v27;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);

      v17 = v28;
      v25 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v28 + 16);
        sub_197553D0C();
        v17 = v28;
      }

      v19 = *(v17 + 16);
      if (v19 >= *(v17 + 24) >> 1)
      {
        sub_197553D0C();
        v17 = v28;
      }

      *(v17 + 16) = v19 + 1;
      v28 = v17;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v25;
      *(v20 + 40) = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1976124B0(v6);
        v6 = v21;
      }

      if (v27 >= *(v6 + 16))
      {
        break;
      }

      v22 = v6 + 16 * v27;
      v23 = *(v22 + 40);
      ++v4;
      *(v22 + 32) = v9;
      *(v22 + 40) = v8;

      if ((v27 + 1) < a1)
      {
        v24 = v27 + 1;
      }

      else
      {
        v24 = 0;
      }

      v27 = v24;
    }

    goto LABEL_30;
  }
}

unint64_t sub_197612390(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A48, &qword_19761B670) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_197612444(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t static Task.sleep<>(for:)()
{
  OUTLINED_FUNCTION_1();
  v0[2] = v1;
  v2 = sub_197616B80();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197612584, 0, 0);
}

uint64_t sub_197612584()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);
  v2 = Double.seconds.getter(*(v0 + 16));
  sub_1975877EC(v2);
  sub_197617290();
  v3 = sub_1976172B0();
  v5 = v4;
  sub_197617130();
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1976126AC;
  v7 = *(v0 + 40);

  return sub_197612968(v3, v5, 0, 0, 1);
}

uint64_t sub_1976126AC()
{
  OUTLINED_FUNCTION_8_0();
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v2;
  *(v2 + 56) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197612844, 0, 0);
  }

  else
  {
    v8 = *(v2 + 40);

    OUTLINED_FUNCTION_3();

    return v9();
  }
}

uint64_t sub_197612844()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_3();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t Task.finish()()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(MEMORY[0x1E69E86B0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 16) = v12;
  *v12 = v0;
  v12[1] = sub_1975831B8;

  return MEMORY[0x1EEE6DA20](v10, v8, v6, v4, v2);
}

uint64_t sub_197612968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_197616B60();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_197612A68, 0, 0);
}

uint64_t sub_197612A68()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_197616B80();
  v7 = sub_1975B9FFC(&qword_1ED815FC8, MEMORY[0x1E69E8820]);
  sub_197617100();
  sub_1975B9FFC(&qword_1ED815FD0, MEMORY[0x1E69E87E8]);
  sub_197616B90();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_197612BF8;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_197612BF8()
{
  OUTLINED_FUNCTION_8_0();
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 64);
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v2;
  v2[15] = v0;

  v5(v6, v7);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197612DA4, 0, 0);
  }

  else
  {
    v10 = v2[10];
    v9 = v2[11];

    OUTLINED_FUNCTION_3();

    return v11();
  }
}

uint64_t sub_197612DA4()
{
  OUTLINED_FUNCTION_1();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_3();
  v4 = v0[15];

  return v3();
}

double static Double.years<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_53(a1, a2);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_0_53(v5, v16);
  v7(v6);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v11 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v12 = sub_1976168E0();
    v13 = OUTLINED_FUNCTION_2_42();
    v14(v13);
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    sub_1975F8894();
    sub_1975F88E8();
    OUTLINED_FUNCTION_4_43();
    v8 = OUTLINED_FUNCTION_2_42();
    v9(v8);
    v10 = v17;
  }

  return OUTLINED_FUNCTION_6_22(v10, 31536000.0);
}

double static Double.seconds<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_53(a1, a2);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_0_53(v5, v15);
  v7(v6);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v11 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v12 = sub_1976168E0();
    v13 = OUTLINED_FUNCTION_2_42();
    v14(v13);
    if (v11)
    {
      return v12;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    sub_1975F8894();
    sub_1975F88E8();
    OUTLINED_FUNCTION_4_43();
    v8 = OUTLINED_FUNCTION_2_42();
    v9(v8);
    return v16;
  }
}

double Double.milliseconds.getter(int8x16_t a1, int8x16_t a2)
{
  *a2.i64 = *a1.i64 - trunc(*a1.i64);
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  return *vbslq_s8(vnegq_f64(v2), a2, a1).i64 * 1000.0;
}

double static Double.minutes<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_53(a1, a2);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_0_53(v5, v16);
  v7(v6);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v11 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v12 = sub_1976168E0();
    v13 = OUTLINED_FUNCTION_2_42();
    v14(v13);
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    sub_1975F8894();
    sub_1975F88E8();
    OUTLINED_FUNCTION_4_43();
    v8 = OUTLINED_FUNCTION_2_42();
    v9(v8);
    v10 = v17;
  }

  return OUTLINED_FUNCTION_6_22(v10, 60.0);
}

double static Double.hours<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_53(a1, a2);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_0_53(v5, v16);
  v7(v6);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v11 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v12 = sub_1976168E0();
    v13 = OUTLINED_FUNCTION_2_42();
    v14(v13);
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    sub_1975F8894();
    sub_1975F88E8();
    OUTLINED_FUNCTION_4_43();
    v8 = OUTLINED_FUNCTION_2_42();
    v9(v8);
    v10 = v17;
  }

  return OUTLINED_FUNCTION_6_22(v10, 3600.0);
}

double static Double.days<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_53(a1, a2);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_0_53(v5, v16);
  v7(v6);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v11 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v12 = sub_1976168E0();
    v13 = OUTLINED_FUNCTION_2_42();
    v14(v13);
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    sub_1975F8894();
    sub_1975F88E8();
    OUTLINED_FUNCTION_4_43();
    v8 = OUTLINED_FUNCTION_2_42();
    v9(v8);
    v10 = v17;
  }

  return OUTLINED_FUNCTION_6_22(v10, 86400.0);
}

double static Double.weeks<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_53(a1, a2);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_0_53(v5, v16);
  v7(v6);
  OUTLINED_FUNCTION_3_38();
  if (sub_1976168F0() < 65)
  {
    OUTLINED_FUNCTION_18_0();
    v11 = sub_197616900();
    OUTLINED_FUNCTION_3_38();
    v12 = sub_1976168E0();
    v13 = OUTLINED_FUNCTION_2_42();
    v14(v13);
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    sub_1975F8894();
    sub_1975F88E8();
    OUTLINED_FUNCTION_4_43();
    v8 = OUTLINED_FUNCTION_2_42();
    v9(v8);
    v10 = v17;
  }

  return OUTLINED_FUNCTION_6_22(v10, 604800.0);
}

TipKitCore::TipDisplayType_optional __swiftcall TipDisplayType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1976134D4()
{
  result = qword_1EAF357A0;
  if (!qword_1EAF357A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF357A0);
  }

  return result;
}

uint64_t sub_197613530@<X0>(uint64_t *a1@<X8>)
{
  result = TipDisplayType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TipDisplayType(_BYTE *result, unsigned int a2, unsigned int a3)
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

TipKitCore::TipUsageState_optional __swiftcall TipUsageState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_197613654()
{
  result = qword_1EAF357A8;
  if (!qword_1EAF357A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF357A8);
  }

  return result;
}

uint64_t sub_1976136B0@<X0>(uint64_t *a1@<X8>)
{
  result = TipUsageState.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TipUsageState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t TipsError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_197613810(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_197613860(uint64_t a1, uint64_t a2)
{
  sub_19758BB78();
  v5 = OUTLINED_FUNCTION_0_54();
  v8 = sub_19757F524(v5, v6, v7);

  if (!v8)
  {
    v10 = *(v2 + 24);

    v11 = OUTLINED_FUNCTION_0_54();
    v14 = sub_197613B2C(v11, v12, v13);

    sub_197613CF4(v14);
    [*(v2 + 16) synchronize];
    if (qword_1ED816C98 != -1)
    {
      OUTLINED_FUNCTION_3_2();
      swift_once();
    }

    v15 = type metadata accessor for logger();
    __swift_project_value_buffer(v15, qword_1ED816CA0);
    sub_197616A20();

    MEMORY[0x19A8E2A50](a1, a2);
    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    sub_197558864();
  }

  return result;
}

id sub_1976139C4()
{
  sub_19758BB78();
  v1 = OUTLINED_FUNCTION_0_54();
  v4 = sub_19757F524(v1, v2, v3);

  if (v4)
  {
    v6 = *(v0 + 24);

    v7 = OUTLINED_FUNCTION_0_54();
    v10 = sub_197613BB0(v7, v8, v9);

    sub_197613CF4(v10);
    v11 = *(v0 + 16);

    return [v11 synchronize];
  }

  return result;
}

void *sub_197613A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1975BC0A4(*(a1 + 16), 0);
  sub_1975EA294();
  v4 = v3;

  sub_1975A4D3C();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_197613B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (sub_19757F524(a1, a2, a3))
  {
  }

  else
  {
    v8 = v3;

    sub_197575220(&v7, a1, a2);

    return v8;
  }

  return v3;
}

uint64_t sub_197613BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_19757F524(a1, a2, a3))
  {

    sub_19761479C(a1, a2);
  }

  else
  {
  }

  return a3;
}

void sub_197613C28()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_19758BB78();
    sub_197613A70(v2);

    v3 = sub_197616450();

    v4 = sub_1976161B0();
    [v1 setObject:v3 forKey:v4];
  }
}

void sub_197613CF4(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  sub_197613C28();
}

uint64_t TipsdUbiquitousStore.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t TipsdUbiquitousStore.__deallocating_deinit()
{
  TipsdUbiquitousStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t static TipsdUbiquitousStore.deleteInvalidTips()()
{
  v1 = v0;
  v63 = *MEMORY[0x1E69E9840];
  if (qword_1ED816B18 != -1)
  {
LABEL_35:
    swift_once();
  }

  if (!qword_1ED81D1C0)
  {
    sub_19759228C();
    swift_allocError();
    *v22 = 0xD000000000000030;
    v22[1] = 0x80000001976269F0;
    result = swift_willThrow();
    goto LABEL_15;
  }

  v56 = v1;

  v2 = sub_19758BB78();
  v4 = v2 + 56;
  v3 = *(v2 + 56);
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_1_40();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v58 = v11;

  v12 = 0;
  do
  {
    if (!v8)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          goto LABEL_15;
        }

        v8 = *(v4 + 8 * v13);
        ++v12;
        if (v8)
        {
          v12 = v13;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_9:
    v14 = (*(v58 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
    v15 = v14[1];
    v61 = *v14;
    v62 = v15;
    v16 = qword_1ED816B78;
    v59 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v8 &= v8 - 1;
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
    v17 = __swift_project_value_buffer(v1, qword_1ED816B80);
    v18 = sub_19756E0EC();
    v19 = sub_19756DDE4();
    v20 = sub_197616160();
  }

  while ((v20 & 1) == 0);
  v54 = v19;
  v55 = v18;
  v59 = v17;

  if (qword_1ED816C98 != -1)
  {
    OUTLINED_FUNCTION_3_2();
    swift_once();
  }

  v24 = type metadata accessor for logger();
  __swift_project_value_buffer(v24, qword_1ED816CA0);
  sub_197558864();
  v25 = *(v57 + 24);
  v60 = v25;
  v26 = *(v25 + 32);
  v27 = v26 & 0x3F;
  v28 = ((1 << v26) + 63) >> 6;
  isStackAllocationSafe = swift_bridgeObjectRetain_n();
  if (v27 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    v51[1] = v51;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v52 = v28;
    v53 = (v51 - ((8 * v28 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_197614384(0, v28, v53);
    v58 = 0;
    v1 = 0;
    v30 = *(v25 + 56);
    v31 = *(v25 + 32);
    OUTLINED_FUNCTION_1_40();
    v34 = v33 & v32;
    v36 = (v35 + 63) >> 6;
    while (v34)
    {
      v37 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_27:
      v40 = v37 | (v1 << 6);
      v41 = (*(v25 + 48) + 16 * v40);
      v42 = v41[1];
      v61 = *v41;
      v62 = v42;

      v43 = sub_197616160();

      if (v43)
      {
        *(v53 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        if (__OFADD__(v58++, 1))
        {
          __break(1u);
LABEL_31:
          v45 = sub_197614DAC(v53, v52, v58, v25);
          goto LABEL_32;
        }
      }
    }

    v38 = v1;
    while (1)
    {
      v1 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v1 >= v36)
      {
        goto LABEL_31;
      }

      v39 = *(v25 + 56 + 8 * v1);
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v34 = (v39 - 1) & v39;
        goto LABEL_27;
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v48 = swift_slowAlloc();
  v49 = v56;
  v50 = sub_197614D1C(v48, v28, v25, sub_1976142B8);
  v56 = v49;
  if (v49)
  {
    MEMORY[0x19A8E4300](v48, -1, -1);

    __break(1u);
  }

  else
  {
    v45 = v50;
    MEMORY[0x19A8E4300](v48, -1, -1);
LABEL_32:
    sub_197614A7C(v45);

    v46 = v57;
    sub_197613CF4(v60);
    v47 = *(v46 + 16);
    [v47 synchronize];

LABEL_15:
    v23 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1976142B8(uint64_t *a1)
{
  v1 = a1[1];
  v4 = *a1;
  if (qword_1ED816B78 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  __swift_project_value_buffer(v2, qword_1ED816B80);
  sub_19756E0EC();
  sub_19756DDE4();
  return sub_197616160() & 1;
}

uint64_t sub_197614384(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_197619440;
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

uint64_t sub_1976143E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF357B0, &qword_1976230E8);
  result = sub_1976169F0();
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
      sub_197614384(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_197617190();
    sub_197616260();
    result = sub_1976171F0();
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

void *sub_197614644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF357B0, &qword_1976230E8);
  v2 = *v0;
  v3 = sub_1976169E0();
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

uint64_t sub_19761479C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_197617190();
  sub_197616260();
  v7 = sub_1976171F0();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_197616EF0() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_197614644();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_1976148C4(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_1976148C4(unint64_t result)
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

    v9 = sub_197616970();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_197617190();

        sub_197616260();
        v15 = sub_1976171F0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_197614A7C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_19761479C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_197614BA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
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
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_197614DAC(v21, a2, v22, v19);
      }
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
      goto LABEL_16;
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

void *sub_197614D1C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = sub_197614BA8(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_197614DAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF357B0, &qword_1976230E8);
  result = sub_197616A00();
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
    sub_197617190();

    sub_197616260();
    result = sub_1976171F0();
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

uint64_t sub_197615074(uint64_t (*a1)(uint64_t))
{
  v3 = [objc_opt_self() defaultManager];
  LOBYTE(a1) = a1(v1);

  return a1 & 1;
}

uint64_t sub_1976150DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1976155C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  result = sub_1976155D0();
  if (result)
  {
    v13 = result;
    v22 = v11;
    v14 = 0;
    v15 = *(result + 16);
    v23 = v5 + 16;
    v24 = v15;
    while (1)
    {
      if (v24 == v14)
      {

        return 0;
      }

      if (v14 >= *(v13 + 16))
      {
        break;
      }

      (*(v5 + 16))(v9, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v4);
      if (sub_1976155A0() == a1 && v16 == a2)
      {

LABEL_14:

        v20 = v22;
        (*(v5 + 32))(v22, v9, v4);
        v19 = sub_1976155B0();
        (*(v5 + 8))(v20, v4);
        return v19;
      }

      v18 = sub_197616EF0();

      if (v18)
      {
        goto LABEL_14;
      }

      result = (*(v5 + 8))(v9, v4);
      ++v14;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t WeakReference.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_197615354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for WeakReference();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t WeakReference.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  if (a1)
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v4 = type metadata accessor for WeakReference();
    result = (*(*(v4 - 8) + 32))(a2, v7, v4);
  }

  else
  {
    v6 = type metadata accessor for WeakReference();
    result = (*(*(v6 - 8) + 8))(v7, v6);
    *a2 = 0;
  }

  *(a2 + 8) = a1 == 0;
  return result;
}