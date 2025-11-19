uint64_t sub_1B1E53CEC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1B1F1B7C0();
  ToolKitIndexingReason.Trigger.hash(into:)();
  return sub_1B1F1B7F0();
}

uint64_t static ToolKitIndexingReason.Changeset.Provenance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LaunchServicesSnapshot(0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  OUTLINED_FUNCTION_8(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_26();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v36 - v24;
  v26 = *(v23 + 56);
  sub_1B1E5CF1C(a1, &v36 - v24);
  sub_1B1E5CF1C(a2, &v25[v26]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_15();
      sub_1B1E5CF1C(v25, v2);
      v30 = *v2;
      if (OUTLINED_FUNCTION_92() != 1)
      {

        goto LABEL_11;
      }

      v31 = *&v25[v26];
      v32 = OUTLINED_FUNCTION_43_0();
      v29 = sub_1B1E398D0(v32, v33);

      OUTLINED_FUNCTION_9_10();
      return v29 & 1;
    case 2u:
      if (OUTLINED_FUNCTION_92() == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 3u:
      if (OUTLINED_FUNCTION_92() == 3)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    default:
      OUTLINED_FUNCTION_2_15();
      v27 = OUTLINED_FUNCTION_59();
      sub_1B1E5CF1C(v27, v28);
      if (OUTLINED_FUNCTION_92())
      {
        OUTLINED_FUNCTION_6_10();
        sub_1B1E5C898();
LABEL_11:
        sub_1B1E5C830(v25);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_30_3();
      sub_1B1E5CA90(&v25[v26], v11);
      if ((sub_1B1F1A310() & 1) == 0 || (v35 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0), *&v18[*(v35 + 20)] != *(v11 + *(v35 + 20))) || (sub_1B1E38FD4(*&v18[*(v5 + 20)], *(v11 + *(v5 + 20))) & 1) == 0)
      {
        OUTLINED_FUNCTION_31_2();
        sub_1B1E5C898();
        sub_1B1E5C898();
        OUTLINED_FUNCTION_9_10();
LABEL_12:
        v29 = 0;
        return v29 & 1;
      }

      OUTLINED_FUNCTION_31_2();
      sub_1B1E5C898();
      sub_1B1E5C898();
LABEL_7:
      OUTLINED_FUNCTION_9_10();
      v29 = 1;
      return v29 & 1;
  }
}

uint64_t sub_1B1E54004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001B1F395C0 == a2;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001B1F395E0 == a2;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001B1F39600 == a2;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x5365646163736163 && a2 == 0xEB00000000636E79)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B1F1B510();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1B1E5416C(char a1)
{
  result = 0x5365646163736163;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1B1E5420C(uint64_t a1)
{
  v2 = sub_1B1E5C9E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E54248(uint64_t a1)
{
  v2 = sub_1B1E5C9E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E54284(uint64_t a1)
{
  v2 = sub_1B1E5C994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E542C0(uint64_t a1)
{
  v2 = sub_1B1E5C994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E542FC(uint64_t a1)
{
  v2 = sub_1B1E5C940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E54338(uint64_t a1)
{
  v2 = sub_1B1E5C940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E5437C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E54004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E543A4(uint64_t a1)
{
  v2 = sub_1B1E5C8EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E543E0(uint64_t a1)
{
  v2 = sub_1B1E5C8EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E5441C(uint64_t a1)
{
  v2 = sub_1B1E5CA3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E54458(uint64_t a1)
{
  v2 = sub_1B1E5CA3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingReason.Changeset.Provenance.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v71 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A8, &qword_1B1F313E0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v69 = v5;
  v70 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_80(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857B0, &qword_1B1F313E8);
  v11 = OUTLINED_FUNCTION_0(v10);
  v66 = v12;
  v67 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v64 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857B8, &qword_1B1F313F0);
  v65 = OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857C0, &qword_1B1F313F8);
  OUTLINED_FUNCTION_0(v63);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v62 = type metadata accessor for LaunchServicesSnapshot(0);
  v24 = OUTLINED_FUNCTION_10(v62);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_3();
  v29 = v28 - v27;
  v30 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v31 = OUTLINED_FUNCTION_10(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_3();
  v36 = (v35 - v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7857C8, &qword_1B1F31400);
  OUTLINED_FUNCTION_0(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_14_10();
  v43 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E5C8EC();
  OUTLINED_FUNCTION_68();
  sub_1B1F1B830();
  OUTLINED_FUNCTION_2_15();
  sub_1B1E5CF1C(v71, v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v56 = *v36;
      sub_1B1E5C9E8();
      OUTLINED_FUNCTION_24_6();
      sub_1B1F1B240();
      sub_1B1E3C410();
      sub_1B1F1B2B0();
      v57 = OUTLINED_FUNCTION_25_5();
      v58(v57, v65);
      v59 = *(v39 + 8);
      v60 = OUTLINED_FUNCTION_35_1();
      v61(v60);

      break;
    case 2u:
      sub_1B1E5C994();
      v50 = v64;
      OUTLINED_FUNCTION_24_6();
      sub_1B1F1B240();
      v52 = v66;
      v51 = v67;
      goto LABEL_5;
    case 3u:
      sub_1B1E5C940();
      v50 = v68;
      OUTLINED_FUNCTION_24_6();
      sub_1B1F1B240();
      v52 = v69;
      v51 = v70;
LABEL_5:
      (*(v52 + 8))(v50, v51);
      v53 = *(v39 + 8);
      v54 = OUTLINED_FUNCTION_35_1();
      v55(v54);
      break;
    default:
      sub_1B1E5CA90(v36, v29);
      sub_1B1E5CA3C();
      OUTLINED_FUNCTION_24_6();
      sub_1B1F1B240();
      OUTLINED_FUNCTION_28_4();
      sub_1B1DF6BE0(v44);
      sub_1B1F1B2B0();
      v45 = OUTLINED_FUNCTION_47();
      v46(v45, v63);
      OUTLINED_FUNCTION_6_10();
      sub_1B1E5C898();
      v47 = *(v39 + 8);
      v48 = OUTLINED_FUNCTION_35_1();
      v49(v48);
      break;
  }

  OUTLINED_FUNCTION_35();
}

uint64_t ToolKitIndexingReason.Changeset.Provenance.hash(into:)()
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_50();
  v5 = type metadata accessor for LaunchServicesSnapshot(v4);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  v9 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  v15 = (v14 - v13);
  OUTLINED_FUNCTION_2_15();
  sub_1B1E5CF1C(v3, v15);
  OUTLINED_FUNCTION_54();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v20 = *v15;
      MEMORY[0x1B273E060](1);
      sub_1B1E3BF6C(v0, v20);

      break;
    case 2u:
      v19 = 2;
      goto LABEL_5;
    case 3u:
      v19 = 3;
LABEL_5:
      result = MEMORY[0x1B273E060](v19);
      break;
    default:
      OUTLINED_FUNCTION_30_3();
      sub_1B1E5CA90(v15, v2);
      MEMORY[0x1B273E060](0);
      sub_1B1F1A350();
      OUTLINED_FUNCTION_0_18();
      sub_1B1DF6BE0(v16);
      sub_1B1F1A800();
      v17 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
      MEMORY[0x1B273E060](*(v2 + *(v17 + 20)));
      sub_1B1E3BDC0(v0, *(v2 + *(v5 + 20)));
      OUTLINED_FUNCTION_6_10();
      result = sub_1B1E5C898();
      break;
  }

  return result;
}

void ToolKitIndexingReason.Changeset.Provenance.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v120 = v0;
  v4 = v3;
  v116 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857F0, &qword_1B1F31408);
  v7 = OUTLINED_FUNCTION_0(v6);
  v114 = v8;
  v115 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_80(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857F8, &qword_1B1F31410);
  v14 = OUTLINED_FUNCTION_0(v13);
  v107 = v15;
  v108 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v112 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785800, &qword_1B1F31418);
  v21 = OUTLINED_FUNCTION_0(v20);
  v109 = v22;
  v110 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17();
  v113 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785808, &qword_1B1F31420);
  v28 = OUTLINED_FUNCTION_0(v27);
  v105 = v29;
  v106 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_17();
  v111 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785810, &qword_1B1F31428);
  OUTLINED_FUNCTION_0(v34);
  v118 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_4();
  v39 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v40 = OUTLINED_FUNCTION_10(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_53();
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v101 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v101 - v47;
  v50 = v4[3];
  v49 = v4[4];
  v119 = v4;
  v51 = OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_44(v51, v52);
  sub_1B1E5C8EC();
  v53 = v120;
  sub_1B1F1B810();
  if (!v53)
  {
    v103 = v1;
    v104 = v46;
    v120 = v48;
    v54 = v2;
    v55 = sub_1B1F1B210();
    v56 = sub_1B1E32BFC(v55, 0);
    if (v58 == v57 >> 1)
    {
      v120 = v56;
      v59 = v34;
      v60 = v118;
      v61 = v39;
      v62 = v54;
    }

    else
    {
      OUTLINED_FUNCTION_40();
      v101 = 0;
      v102 = v39;
      OUTLINED_FUNCTION_65();
      if (v65 == v66)
      {
        __break(1u);
        return;
      }

      v67 = *(v64 + v63);
      v68 = sub_1B1E32BF8(v63 + 1);
      v70 = v69;
      v72 = v71;
      swift_unknownObjectRelease();
      v62 = v2;
      v73 = v117;
      if (v70 == v72 >> 1)
      {
        v74 = v115;
        v75 = v114;
        switch(v67)
        {
          case 1:
            sub_1B1E5C9E8();
            OUTLINED_FUNCTION_24_6();
            OUTLINED_FUNCTION_93();
            sub_1B1E3C3BC();
            OUTLINED_FUNCTION_57();
            sub_1B1F1B200();
            OUTLINED_FUNCTION_94();
            v94 = OUTLINED_FUNCTION_79();
            v95(v94);
            v96 = OUTLINED_FUNCTION_7_9();
            v97(v96);
            v93 = v103;
            *v103 = v121;
            goto LABEL_17;
          case 2:
            sub_1B1E5C994();
            v84 = v112;
            OUTLINED_FUNCTION_24_6();
            OUTLINED_FUNCTION_93();
            OUTLINED_FUNCTION_94();
            (*(v107 + 8))(v84, v108);
            v85 = OUTLINED_FUNCTION_7_9();
            v86(v85);
            goto LABEL_15;
          case 3:
            sub_1B1E5C940();
            OUTLINED_FUNCTION_24_6();
            OUTLINED_FUNCTION_93();
            OUTLINED_FUNCTION_94();
            (*(v75 + 8))(v73, v74);
            v87 = OUTLINED_FUNCTION_7_9();
            v88(v87);
LABEL_15:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            sub_1B1E5CA3C();
            OUTLINED_FUNCTION_24_6();
            OUTLINED_FUNCTION_93();
            type metadata accessor for LaunchServicesSnapshot(0);
            OUTLINED_FUNCTION_28_4();
            sub_1B1DF6BE0(v76);
            v77 = v106;
            sub_1B1F1B200();
            OUTLINED_FUNCTION_94();
            v89 = OUTLINED_FUNCTION_19_6();
            v90(v89, v77);
            v91 = OUTLINED_FUNCTION_7_9();
            v92(v91);
            v93 = v104;
LABEL_17:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_32_3();
            sub_1B1E5CA90(v93, v120);
            break;
        }

        v98 = v119;
        OUTLINED_FUNCTION_32_3();
        v99 = OUTLINED_FUNCTION_54();
        sub_1B1E5CA90(v99, v100);
        __swift_destroy_boxed_opaque_existential_1(v98);
        goto LABEL_12;
      }

      v120 = v68;
      v59 = v34;
      v60 = v118;
      v61 = v102;
    }

    v78 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    v80 = v79;
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v80 = v61;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8();
    v82 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11_2(v78);
    (*(v83 + 104))(v80);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v60 + 8))(v62, v59);
  }

  __swift_destroy_boxed_opaque_existential_1(v119);
LABEL_12:
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_35();
}

uint64_t ToolKitIndexingReason.Changeset.debugDescription.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x6C6C75662ELL;
  }

  if (v1 == 1)
  {
    return 0x656E6F6E2ELL;
  }

  v3 = v0[1];
  sub_1B1F1AFA0();
  MEMORY[0x1B273D1A0](0xD000000000000017, 0x80000001B1F39370);
  v8 = *(v1 + 16);
  OUTLINED_FUNCTION_88();
  v4 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v4);

  MEMORY[0x1B273D1A0](0x6465766F6D657220, 0xEF203A746E756F43);
  v9 = *(v3 + 16);
  OUTLINED_FUNCTION_88();
  v5 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v5);

  MEMORY[0x1B273D1A0](0x6465746164707520, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_43_0();
  v6 = sub_1B1F1AC10();
  MEMORY[0x1B273D1A0](v6);

  MEMORY[0x1B273D1A0](0x65766F6D6572202CLL, 0xEB00000000203A64);
  OUTLINED_FUNCTION_59();
  v7 = sub_1B1F1AC10();
  MEMORY[0x1B273D1A0](v7);

  MEMORY[0x1B273D1A0](41, 0xE100000000000000);
  return 0;
}

uint64_t ToolKitIndexingReason.Changeset.isEmpty.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  if (v1 == 1)
  {
    return OUTLINED_FUNCTION_17_1();
  }

  return !*(v1 + 16) && *(v0[1] + 16) == 0;
}

uint64_t *static ToolKitIndexingReason.Changeset.+ infix(_:_:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result;
  v4 = result[1];
  v6 = result[2];
  if (!*result)
  {
    *a3 = 0;
    a3[1] = v4;
    a3[2] = v6;
    return result;
  }

  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  if (!*a2)
  {
    *a3 = 0;
    a3[1] = v7;
    a3[2] = v9;
    return result;
  }

  if (v8 != 1)
  {
    if (v5 != 1)
    {
      v11 = OUTLINED_FUNCTION_35_1();
      sub_1B1E50CE0(v11);
      v12 = OUTLINED_FUNCTION_58();
      sub_1B1E50CE0(v12);
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1F1A760();
      v13 = sub_1B1E55724(v8, v5);
      v14 = sub_1B1E55724(v7, v4);
      v15 = sub_1B1E55A28(v13, v14);
      v16 = sub_1B1E55828(v9, v6);
      v17 = OUTLINED_FUNCTION_35_1();
      sub_1B1E5CAE8(v17);
      v18 = OUTLINED_FUNCTION_58();
      result = sub_1B1E5CAE8(v18);
      *a3 = v13;
      a3[1] = v15;
      a3[2] = v16;
      return result;
    }

    goto LABEL_9;
  }

  if (v5 == 1)
  {
LABEL_9:
    *a3 = v8;
    a3[1] = v7;
    a3[2] = v9;
    v10 = OUTLINED_FUNCTION_58();
    goto LABEL_10;
  }

  *a3 = v5;
  a3[1] = v4;
  a3[2] = v6;
  v10 = OUTLINED_FUNCTION_35_1();
LABEL_10:

  return sub_1B1E50CE0(v10);
}

uint64_t sub_1B1E55724(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_1B1F1A760();
    sub_1B1E640C4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E55828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v23 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - v14;
  v16 = 0;
  v24 = a2;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  for (i = (v17 + 63) >> 6; v19; result = sub_1B1E5C898())
  {
    v21 = v16;
LABEL_9:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    sub_1B1E5CF1C(*(a1 + 48) + *(v5 + 72) * (v22 | (v21 << 6)), v15);
    sub_1B1E5CA90(v15, v9);
    sub_1B1E64210(v12, v9);
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= i)
    {

      return v24;
    }

    v19 = *(a1 + 56 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E55A28(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1B1E5B570(a1);
    return a2;
  }

  else
  {

    return sub_1B1E5B69C(a1, a2);
  }
}

uint64_t ToolKitIndexingReason.Changeset.encoded()()
{
  v6 = *v0;
  v1 = *(v0 + 2);
  v2 = sub_1B1F1A050();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1B1F1A040();
  sub_1B1E5CB38();
  sub_1B1F1A030();

  return OUTLINED_FUNCTION_59();
}

double static ToolKitIndexingReason.Changeset.decode(from:)()
{
  OUTLINED_FUNCTION_87();
  v2 = sub_1B1F1A020();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1B1F1A010();
  sub_1B1E5CB8C();
  OUTLINED_FUNCTION_76();
  sub_1B1F1A000();

  if (!v1)
  {
    result = *&v6;
    *v0 = v6;
    *(v0 + 16) = v7;
  }

  return result;
}

uint64_t static ToolKitIndexingReason.Changeset.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (*a1)
  {
    if (v3 == 1)
    {
      if (v6 == 1)
      {
        goto LABEL_6;
      }
    }

    else if (v6 >= 2)
    {
      v14 = OUTLINED_FUNCTION_63();
      sub_1B1E50CE0(v14);
      v15 = OUTLINED_FUNCTION_61();
      sub_1B1E50CE0(v15);
      if (sub_1B1E55CA4(v3, v6))
      {
        v16 = OUTLINED_FUNCTION_6_8();
        if (sub_1B1E55CA4(v16, v17))
        {
          v18 = OUTLINED_FUNCTION_43_0();
          v8 = sub_1B1E55E4C(v18, v19);
          goto LABEL_10;
        }
      }

      goto LABEL_9;
    }

LABEL_8:
    v9 = OUTLINED_FUNCTION_63();
    sub_1B1E50CE0(v9);
    v10 = OUTLINED_FUNCTION_61();
    sub_1B1E50CE0(v10);
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 1;
LABEL_10:
  v11 = OUTLINED_FUNCTION_61();
  sub_1B1E5CAE8(v11);
  v12 = OUTLINED_FUNCTION_63();
  sub_1B1E5CAE8(v12);
  return v8 & 1;
}

uint64_t sub_1B1E55CA4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A900();
      v16 = sub_1B1F1B7F0();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_1B1F1B510();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
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

uint64_t sub_1B1E55E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchServicesSnapshot(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v57 = &v48 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v48 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v27 = &v48 - v26;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    v52 = a1;
    v53 = v4;
    v28 = 0;
    v29 = a1 + 56;
    v30 = 1 << *(a1 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a1 + 56);
    v33 = (v30 + 63) >> 6;
    v60 = a2 + 56;
    v50 = v27;
    v51 = v25;
    v49 = a1 + 56;
    v48 = v33;
    if (v32)
    {
LABEL_7:
      v34 = __clz(__rbit64(v32));
      v54 = (v32 - 1) & v32;
      goto LABEL_13;
    }

LABEL_8:
    v35 = v28;
    do
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        return result;
      }

      if (v28 >= v33)
      {
        return 1;
      }

      v36 = *(v29 + 8 * v28);
      ++v35;
    }

    while (!v36);
    v34 = __clz(__rbit64(v36));
    v54 = (v36 - 1) & v36;
LABEL_13:
    v55 = v28;
    v37 = *(a1 + 48);
    v59 = *(v25 + 72);
    v38 = v27;
    sub_1B1E5CF1C(v37 + v59 * (v34 | (v28 << 6)), v27);
    sub_1B1E5CA90(v38, v61);
    v39 = *(a2 + 40);
    sub_1B1F1B7C0();
    ToolKitIndexingReason.Changeset.Provenance.hash(into:)();
    v40 = sub_1B1F1B7F0();
    v41 = -1 << *(a2 + 32);
    v42 = v40 & ~v41;
    if ((*(v60 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      v58 = ~v41;
      while (1)
      {
        sub_1B1E5CF1C(*(a2 + 48) + v42 * v59, v21);
        v43 = *(v8 + 48);
        sub_1B1E5CF1C(v21, v11);
        sub_1B1E5CF1C(v61, &v11[v43]);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_1B1E5CF1C(v11, v16);
            v45 = *v16;
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              sub_1B1E5C898();

              goto LABEL_26;
            }

            v56 = sub_1B1E398D0(v45, *&v11[v43]);
            sub_1B1E5C898();

            if ((v56 & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          case 2u:
            sub_1B1E5C898();
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              goto LABEL_36;
            }

            goto LABEL_26;
          case 3u:
            sub_1B1E5C898();
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              goto LABEL_36;
            }

            goto LABEL_26;
          default:
            v44 = v57;
            sub_1B1E5CF1C(v11, v57);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_1B1E5C898();
              sub_1B1E5C898();
LABEL_26:
              sub_1B1E5C830(v11);
            }

            else
            {
              sub_1B1E5CA90(&v11[v43], v7);
              if ((sub_1B1F1A310() & 1) != 0 && (v46 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0), *(v44 + *(v46 + 20)) == *&v7[*(v46 + 20)]))
              {
                v47 = sub_1B1E38FD4(*(v44 + *(v53 + 20)), *&v7[*(v53 + 20)]);
                sub_1B1E5C898();
                if (v47)
                {
                  sub_1B1E5C898();
                  sub_1B1E5C898();
LABEL_36:
                  sub_1B1E5C898();
                  result = sub_1B1E5C898();
                  v25 = v51;
                  a1 = v52;
                  v27 = v50;
                  v32 = v54;
                  v28 = v55;
                  v29 = v49;
                  v33 = v48;
                  if (v54)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_8;
                }
              }

              else
              {
                sub_1B1E5C898();
              }

              sub_1B1E5C898();
              sub_1B1E5C898();
LABEL_33:
              sub_1B1E5C898();
            }

            v42 = (v42 + 1) & v58;
            if (((*(v60 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_39;
            }

            break;
        }
      }
    }

LABEL_39:
    sub_1B1E5C898();
  }

  return 0;
}

uint64_t sub_1B1E56574(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047270 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616974726170 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B1E56684(char a1)
{
  if (!a1)
  {
    return 1819047270;
  }

  if (a1 == 1)
  {
    return 0x6C616974726170;
  }

  return 1701736302;
}

uint64_t sub_1B1E566CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B1E567EC(char a1)
{
  if (!a1)
  {
    return 0x64657461647075;
  }

  if (a1 == 1)
  {
    return 0x6465766F6D6572;
  }

  return 0x6E616E65766F7270;
}

uint64_t sub_1B1E56850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E56574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E56878(uint64_t a1)
{
  v2 = sub_1B1E5CBE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E568B4(uint64_t a1)
{
  v2 = sub_1B1E5CBE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E568F0(uint64_t a1)
{
  v2 = sub_1B1E5CCDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E5692C(uint64_t a1)
{
  v2 = sub_1B1E5CCDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E56968(uint64_t a1)
{
  v2 = sub_1B1E5CC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E569A4(uint64_t a1)
{
  v2 = sub_1B1E5CC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E569E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E566CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E56A10(uint64_t a1)
{
  v2 = sub_1B1E5CC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E56A4C(uint64_t a1)
{
  v2 = sub_1B1E5CC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingReason.Changeset.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785818, &qword_1B1F31430);
  OUTLINED_FUNCTION_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785820, &qword_1B1F31438);
  v11 = OUTLINED_FUNCTION_0(v10);
  v39 = v12;
  v40 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v38 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785828, &qword_1B1F31440);
  OUTLINED_FUNCTION_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_10();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785830, &qword_1B1F31448);
  v41 = OUTLINED_FUNCTION_0(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_39_1();
  v27 = *v0;
  v36 = v0[2];
  v37 = v0[1];
  v28 = v5[4];
  OUTLINED_FUNCTION_44(v5, v5[3]);
  sub_1B1E5CBE0();
  sub_1B1F1B830();
  if (!v27)
  {
    sub_1B1E5CCDC();
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    (*(v19 + 8))(v3, v17);
    OUTLINED_FUNCTION_42();
    v32 = v2;
    v33 = v41;
    goto LABEL_5;
  }

  if (v27 == 1)
  {
    sub_1B1E5CC34();
    sub_1B1F1B240();
    v29 = OUTLINED_FUNCTION_37_1();
    v30(v29);
    OUTLINED_FUNCTION_42();
    v32 = v2;
    v33 = v41;
LABEL_5:
    v31(v32, v33);
    goto LABEL_10;
  }

  sub_1B1E5CC88();
  OUTLINED_FUNCTION_57();
  sub_1B1F1B240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785850, &qword_1B1F31450);
  sub_1B1E5CD30(&qword_1EB784910);
  sub_1B1F1B2B0();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    sub_1B1F1B2B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785860, &qword_1B1F31458);
    sub_1B1E5CD98(&unk_1EB785868);
    OUTLINED_FUNCTION_77();
    sub_1B1F1B2B0();
  }

  (*(v39 + 8))(v38, v40);
  OUTLINED_FUNCTION_42();
  v34 = OUTLINED_FUNCTION_56();
  v35(v34);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t ToolKitIndexingReason.Changeset.hash(into:)(void *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x1B273E060](v4);
  }

  if (v3 == 1)
  {
    v4 = 2;
    return MEMORY[0x1B273E060](v4);
  }

  v7 = v1[1];
  v6 = v1[2];
  MEMORY[0x1B273E060](1);
  sub_1B1E5C6BC(a1, v3);
  sub_1B1E5C6BC(a1, v7);
  v8 = OUTLINED_FUNCTION_43_0();

  return sub_1B1E5C0C8(v8, v9);
}

uint64_t ToolKitIndexingReason.Changeset.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_35_0();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B273E060](1);
      sub_1B1E5C6BC(__src, v2);
      sub_1B1E5C6BC(__src, v1);
      sub_1B1E5C0C8(__src, v3);
      return sub_1B1F1B7F0();
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1B273E060](v4);
  return sub_1B1F1B7F0();
}

void ToolKitIndexingReason.Changeset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_34();
  v14 = v13;
  v73 = v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785880, &qword_1B1F31460);
  OUTLINED_FUNCTION_0(v75);
  v72 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785888, &qword_1B1F31468);
  OUTLINED_FUNCTION_0(v74);
  v71 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_39_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785890, &qword_1B1F31470);
  OUTLINED_FUNCTION_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21_4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785898, &qword_1B1F31478);
  OUTLINED_FUNCTION_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_60();
  v34 = v14[4];
  v76 = v14;
  OUTLINED_FUNCTION_44(v14, v14[3]);
  sub_1B1E5CBE0();
  sub_1B1F1B810();
  if (!v10)
  {
    v77 = v30;
    v35 = v12;
    v36 = sub_1B1F1B210();
    sub_1B1E32BFC(v36, 0);
    if (v38 != v37 >> 1)
    {
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_65();
      if (v41 == v42)
      {
        __break(1u);
        return;
      }

      v43 = v28;
      v44 = *(v40 + v39);
      sub_1B1E32BF8(v39 + 1);
      v46 = v45;
      v48 = v47;
      swift_unknownObjectRelease();
      if (v46 == v48 >> 1)
      {
        if (v44)
        {
          if (v44 != 1)
          {
            sub_1B1E5CC34();
            OUTLINED_FUNCTION_57();
            sub_1B1F1B180();
            v62 = v73;
            swift_unknownObjectRelease();
            v63 = *(v72 + 8);
            v64 = OUTLINED_FUNCTION_35_1();
            v65(v64);
            v66 = OUTLINED_FUNCTION_19_6();
            v67(v66, v43);
            v69 = 0;
            v70 = 0;
            v68 = 1;
            v57 = v76;
            goto LABEL_16;
          }

          LOBYTE(a10) = 1;
          sub_1B1E5CC88();
          OUTLINED_FUNCTION_57();
          sub_1B1F1B180();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785850, &qword_1B1F31450);
          LOBYTE(v79) = 0;
          sub_1B1E5CD30(&qword_1EB783240);
          OUTLINED_FUNCTION_64();
          v68 = a10;
          LOBYTE(v78) = 1;
          OUTLINED_FUNCTION_64();
          v69 = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785860, &qword_1B1F31458);
          sub_1B1E5CD98(&unk_1EB783248);
          sub_1B1F1B200();
          swift_unknownObjectRelease();
          (*(v71 + 8))(v11, v74);
          (*(v77 + 8))(v35, v43);
          v70 = v78;
        }

        else
        {
          sub_1B1E5CCDC();
          OUTLINED_FUNCTION_57();
          sub_1B1F1B180();
          swift_unknownObjectRelease();
          v58 = OUTLINED_FUNCTION_37_1();
          v59(v58, v24);
          v60 = OUTLINED_FUNCTION_19_6();
          v61(v60, v43);
          v68 = 0;
          v69 = 0;
          v70 = 0;
        }

        v57 = v76;
        v62 = v73;
LABEL_16:
        *v62 = v68;
        v62[1] = v69;
        v62[2] = v70;
        goto LABEL_12;
      }

      v28 = v43;
    }

    v49 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v51 = &type metadata for ToolKitIndexingReason.Changeset;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8();
    v53 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11_2(v49);
    (*(v54 + 104))(v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_19_6();
    v56(v55, v28);
  }

  v57 = v76;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v57);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E57748()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  sub_1B1F1B7C0();
  ToolKitIndexingReason.Changeset.hash(into:)(v3);
  return sub_1B1F1B7F0();
}

__n128 ToolKitIndexingReason.init(id:trigger:changeset:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v16 = *a3;
  v9 = a3[1].n128_u64[0];
  v10 = sub_1B1F1A350();
  OUTLINED_FUNCTION_10(v10);
  (*(v11 + 32))(a4, a1);
  v12 = type metadata accessor for ToolKitIndexingReason(0);
  v13 = a4 + *(v12 + 20);
  *v13 = v6;
  *(v13 + 8) = v7;
  *(v13 + 16) = v8;
  v14 = (a4 + *(v12 + 24));
  result = v16;
  *v14 = v16;
  v14[1].n128_u64[0] = v9;
  return result;
}

uint64_t static ToolKitIndexingReason.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1B1F1A310() & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = type metadata accessor for ToolKitIndexingReason(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5 + 8);
  v7 = *(a1 + v5 + 16);
  v31 = *(a1 + v5);
  v32 = v6;
  LOBYTE(v33) = v7;
  v8 = a2 + v5;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v28 = *v8;
  v9 = v28;
  v29 = v10;
  LOBYTE(v30) = v11;
  v12 = OUTLINED_FUNCTION_88();
  sub_1B1E50C7C(v12, v13, v7);
  sub_1B1E50C7C(v28, v10, v11);
  v14 = static ToolKitIndexingReason.Trigger.== infix(_:_:)(&v31, &v28);
  sub_1B1E5120C(v9, v10, v11);
  v15 = OUTLINED_FUNCTION_88();
  sub_1B1E5120C(v15, v16, v7);
  if (v14)
  {
    v17 = *(v4 + 24);
    v18 = a1 + v17;
    v19 = *(a1 + v17);
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v22 = (a2 + v17);
    v24 = v22[1];
    v25 = v22[2];
    v28 = *v22;
    v23 = v28;
    v29 = v24;
    v30 = v25;
    sub_1B1E50CE0(v19);
    sub_1B1E50CE0(v23);
    v26 = static ToolKitIndexingReason.Changeset.== infix(_:_:)(&v31, &v28);
    sub_1B1E5CAE8(v23);
    sub_1B1E5CAE8(v19);
  }

  else
  {
LABEL_4:
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_1B1E579B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657365676E616863 && a2 == 0xE900000000000074)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B1E57AC0(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x72656767697274;
  }

  return 0x657365676E616863;
}

uint64_t sub_1B1E57B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E579B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E57B40(uint64_t a1)
{
  v2 = sub_1B1E5CE20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E57B7C(uint64_t a1)
{
  v2 = sub_1B1E5CE20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolKitIndexingReason.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7858A0, &qword_1B1F31480);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38_0();
  v12 = a1[4];
  OUTLINED_FUNCTION_44(a1, a1[3]);
  sub_1B1E5CE20();
  OUTLINED_FUNCTION_91();
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_18();
  sub_1B1DF6BE0(v13);
  OUTLINED_FUNCTION_34_1();
  if (!v2)
  {
    v14 = type metadata accessor for ToolKitIndexingReason(0);
    v15 = v4 + *(v14 + 20);
    v22 = *v15;
    v24 = *(v15 + 8);
    v26 = *(v15 + 16);
    OUTLINED_FUNCTION_84();
    sub_1B1E50C7C(v16, v17, v18);
    sub_1B1E5CE74();
    OUTLINED_FUNCTION_44_0();
    sub_1B1F1B2B0();
    sub_1B1E5120C(v22, v24, v26);
    v19 = (v4 + *(v14 + 24));
    v23 = *v19;
    v25 = v19[1];
    v27 = v19[2];
    OUTLINED_FUNCTION_82();
    sub_1B1E50CE0(v20);
    sub_1B1E5CB38();
    OUTLINED_FUNCTION_44_0();
    sub_1B1F1B2B0();
    sub_1B1E5CAE8(v23);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t ToolKitIndexingReason.hash(into:)()
{
  OUTLINED_FUNCTION_50();
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_18();
  sub_1B1DF6BE0(v2);
  OUTLINED_FUNCTION_59();
  sub_1B1F1A800();
  v3 = type metadata accessor for ToolKitIndexingReason(0);
  OUTLINED_FUNCTION_83((v1 + *(v3 + 20)));
  ToolKitIndexingReason.Trigger.hash(into:)();
  v4 = (v1 + *(v3 + 24));
  v5 = *v4;
  if (!*v4)
  {
    v6 = 0;
    return MEMORY[0x1B273E060](v6);
  }

  if (v5 == 1)
  {
    v6 = 2;
    return MEMORY[0x1B273E060](v6);
  }

  v9 = v4[1];
  v8 = v4[2];
  MEMORY[0x1B273E060](1);
  sub_1B1E5C6BC(v0, v5);
  sub_1B1E5C6BC(v0, v9);
  v10 = OUTLINED_FUNCTION_59();

  return sub_1B1E5C0C8(v10, v11);
}

uint64_t sub_1B1E57ED8(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_35_0();
  a1(v3);
  return sub_1B1F1B7F0();
}

void ToolKitIndexingReason.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v25 = v4;
  v5 = sub_1B1F1A350();
  v6 = OUTLINED_FUNCTION_0(v5);
  v26 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_80(v11 - v10);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858B0, &qword_1B1F31488);
  OUTLINED_FUNCTION_0(v28);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  v15 = type metadata accessor for ToolKitIndexingReason(0);
  v16 = OUTLINED_FUNCTION_10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  v19 = v3[4];
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E5CE20();
  sub_1B1F1B810();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v29) = 0;
    OUTLINED_FUNCTION_0_18();
    sub_1B1DF6BE0(v20);
    sub_1B1F1B200();
    (*(v26 + 32))(v1, v27, v5);
    OUTLINED_FUNCTION_84();
    sub_1B1E5CEC8();
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B200();
    v21 = v1 + *(v15 + 20);
    *v21 = v29;
    *(v21 + 16) = v30;
    OUTLINED_FUNCTION_82();
    sub_1B1E5CB8C();
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B200();
    v22 = OUTLINED_FUNCTION_41_0();
    v23(v22);
    v24 = v1 + *(v15 + 24);
    *v24 = v29;
    *(v24 + 16) = v30;
    OUTLINED_FUNCTION_27_3();
    sub_1B1E5CF1C(v1, v25);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_26_2();
    sub_1B1E5C898();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E582D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1B1F1B7C0();
  a4(v6);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E5833C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001B1F39620 == a2;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B1F39640 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

unint64_t sub_1B1E58410(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1B1E5844C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E5833C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E58474(uint64_t a1)
{
  v2 = sub_1B1E5CF74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E584B0(uint64_t a1)
{
  v2 = sub_1B1E5CF74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E584EC(uint64_t a1)
{
  v2 = sub_1B1E5D01C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E58528(uint64_t a1)
{
  v2 = sub_1B1E5D01C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E58564(uint64_t a1)
{
  v2 = sub_1B1E5CFC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E585A0(uint64_t a1)
{
  v2 = sub_1B1E5CFC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858B8, &qword_1B1F31490);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858C0, &qword_1B1F31498);
  v10 = OUTLINED_FUNCTION_0(v9);
  v27 = v11;
  v28 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21_4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858C8, &qword_1B1F314A0);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_60();
  v21 = *v0;
  v22 = v4[4];
  OUTLINED_FUNCTION_44(v4, v4[3]);
  sub_1B1E5CF74();
  sub_1B1F1B830();
  v23 = (v17 + 8);
  if (v21)
  {
    OUTLINED_FUNCTION_84();
    sub_1B1E5CFC8();
    OUTLINED_FUNCTION_76();
    sub_1B1F1B240();
    v24 = OUTLINED_FUNCTION_37_1();
  }

  else
  {
    sub_1B1E5D01C();
    OUTLINED_FUNCTION_76();
    sub_1B1F1B240();
    v25 = v28;
    v26 = *(v27 + 8);
    v24 = v2;
  }

  v26(v24, v25);
  (*v23)(v1, v15);
  OUTLINED_FUNCTION_35();
}

uint64_t ToolKitIndexingRequest.Response.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1B273E060](v1);
  return sub_1B1F1B7F0();
}

void ToolKitIndexingRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v48 = v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858E8, &qword_1B1F314A8);
  OUTLINED_FUNCTION_0(v50);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858F0, &qword_1B1F314B0);
  OUTLINED_FUNCTION_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858F8, &qword_1B1F314B8);
  OUTLINED_FUNCTION_0(v11);
  v49 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_10();
  v17 = v2[3];
  v16 = v2[4];
  v18 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_44(v18, v19);
  sub_1B1E5CF74();
  OUTLINED_FUNCTION_68();
  sub_1B1F1B810();
  if (!v0)
  {
    v51 = v2;
    v20 = sub_1B1F1B210();
    sub_1B1E32BFC(v20, 0);
    if (v22 != v21 >> 1)
    {
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_65();
      if (v25 == v26)
      {
        __break(1u);
        return;
      }

      v27 = *(v24 + v23);
      sub_1B1E32BF8(v23 + 1);
      v29 = v28;
      v31 = v30;
      swift_unknownObjectRelease();
      if (v29 == v31 >> 1)
      {
        if (v27)
        {
          OUTLINED_FUNCTION_84();
          sub_1B1E5CFC8();
          OUTLINED_FUNCTION_74();
          v32 = v48;
          v33 = v49;
          swift_unknownObjectRelease();
          v34 = OUTLINED_FUNCTION_25_5();
          v36 = v50;
        }

        else
        {
          sub_1B1E5D01C();
          OUTLINED_FUNCTION_74();
          v32 = v48;
          v33 = v49;
          swift_unknownObjectRelease();
          v34 = OUTLINED_FUNCTION_25_5();
          v36 = v7;
        }

        v35(v34, v36);
        v45 = *(v33 + 8);
        v46 = OUTLINED_FUNCTION_35_1();
        v47(v46);
        *v32 = v27;
        __swift_destroy_boxed_opaque_existential_1(v51);
        goto LABEL_10;
      }
    }

    v37 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v39 = &type metadata for ToolKitIndexingRequest.Response;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8();
    v41 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11_2(v37);
    (*(v42 + 104))(v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    v43 = OUTLINED_FUNCTION_36_1();
    v44(v43, v11);
    v2 = v51;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E58C94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E697972746572 && a2 == 0xED0000726F727245)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E58D38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73656D6974 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E58E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E58C94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E58E2C(uint64_t a1)
{
  v2 = sub_1B1E5D070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E58E68(uint64_t a1)
{
  v2 = sub_1B1E5D070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E58EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E58D38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E58ED4(uint64_t a1)
{
  v2 = sub_1B1E5D0C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E58F10(uint64_t a1)
{
  v2 = sub_1B1E5D0C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingRequest.TestingConfig.Failure.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785900, &qword_1B1F314C0);
  OUTLINED_FUNCTION_0(v20);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_39_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785908, &qword_1B1F314C8);
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_1();
  v19 = *v0;
  v15 = v3[4];
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E5D070();
  sub_1B1F1B830();
  sub_1B1E5D0C4();
  sub_1B1F1B240();
  sub_1B1F1B2A0();
  v16 = *(v5 + 8);
  v17 = OUTLINED_FUNCTION_56();
  v18(v17);
  (*(v11 + 8))(v1, v9);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_35();
}

void ToolKitIndexingRequest.TestingConfig.Failure.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v41 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785920, &qword_1B1F314D0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_60();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785928, &qword_1B1F314D8);
  OUTLINED_FUNCTION_0(v8);
  v40 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_39_1();
  v13 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E5D070();
  sub_1B1F1B810();
  if (v0)
  {
    goto LABEL_9;
  }

  v14 = sub_1B1F1B210();
  sub_1B1E322BC(v14, 0);
  v16 = v8;
  if (v17 == v15 >> 1)
  {
LABEL_8:
    v25 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v27 = &type metadata for ToolKitIndexingRequest.TestingConfig.Failure;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8();
    v29 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11_2(v25);
    (*(v30 + 104))(v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = OUTLINED_FUNCTION_47();
    v32(v31, v16);
LABEL_9:
    v39 = v2;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_65();
  if (v19 == v20)
  {
    __break(1u);
    return;
  }

  sub_1B1E32BF8(v18 + 1);
  v22 = v21;
  v24 = v23;
  swift_unknownObjectRelease();
  if (v22 != v24 >> 1)
  {
    v16 = v8;
    goto LABEL_8;
  }

  sub_1B1E5D0C4();
  OUTLINED_FUNCTION_57();
  sub_1B1F1B180();
  v33 = sub_1B1F1B1F0();
  swift_unknownObjectRelease();
  v34 = OUTLINED_FUNCTION_85();
  v35(v34);
  v36 = *(v40 + 8);
  v37 = OUTLINED_FUNCTION_56();
  v38(v37);
  *v41 = v33;
  v39 = v2;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v39);
  OUTLINED_FUNCTION_35();
}

void ToolKitIndexingRequest.TestingConfig.failure.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_73(a1);
}

void ToolKitIndexingRequest.TestingConfig.init(failure:)(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  OUTLINED_FUNCTION_73(a1);
}

uint64_t sub_1B1E594D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E59564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E594D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E59590(uint64_t a1)
{
  v2 = sub_1B1E5D118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E595CC(uint64_t a1)
{
  v2 = sub_1B1E5D118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingRequest.TestingConfig.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785930, &qword_1B1F314E0);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_10();
  v9 = *v0;
  v10 = *(v0 + 8);
  v11 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E5D118();
  OUTLINED_FUNCTION_68();
  sub_1B1F1B830();
  sub_1B1E5D16C();
  sub_1B1F1B260();
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_35_1();
  v14(v13);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_35();
}

void ToolKitIndexingRequest.TestingConfig.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785948, &qword_1B1F314E8);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_1();
  v11 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E5D118();
  sub_1B1F1B810();
  if (!v0)
  {
    sub_1B1E5D1C0();
    OUTLINED_FUNCTION_76();
    sub_1B1F1B1B0();
    v12 = *(v7 + 8);
    v13 = OUTLINED_FUNCTION_58();
    v14(v13);
    *v4 = v15;
    *(v4 + 8) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E598DC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 16);

  return v9(a3, v3 + v5, v7);
}

void ToolKitIndexingRequest.testingConfig.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig + 8);
  v3 = *(v1 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig + 9);
  *a1 = *(v1 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

id ToolKitIndexingRequest.__allocating_init(reason:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785958, &qword_1B1F314F0);
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = *(type metadata accessor for ToolKitIndexingReason(v2) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1B1F2A3B0;
  OUTLINED_FUNCTION_27_3();
  sub_1B1E5CF1C(a1, v6 + v5);
  v7 = ToolKitIndexingRequest.__allocating_init(reasons:)();
  OUTLINED_FUNCTION_26_2();
  sub_1B1E5C898();
  return v7;
}

id ToolKitIndexingRequest.__allocating_init(reasons:)()
{
  OUTLINED_FUNCTION_50();
  v1 = sub_1B1F1A2F0();
  v2 = OUTLINED_FUNCTION_8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_3();
  v7 = v6 - v5;
  v8 = sub_1B1F1A350();
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_3();
  v14 = v13 - v12;
  sub_1B1F1A340();
  sub_1B1F1A2E0();
  v17 = 0;
  v18 = 256;
  v15 = objc_allocWithZone(type metadata accessor for ToolKitIndexingRequest(0));
  return sub_1B1E59C44(v0, v14, v7, 0, &v17);
}

id ToolKitIndexingRequest.__allocating_init(reasons:testingConfig:)(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_50();
  v3 = sub_1B1F1A2F0();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_3();
  v9 = v8 - v7;
  v10 = sub_1B1F1A350();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  v14 = *a2;
  v15 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 9);
  sub_1B1F1A340();
  sub_1B1F1A2E0();
  v16 = objc_allocWithZone(type metadata accessor for ToolKitIndexingRequest(0));
  v17 = OUTLINED_FUNCTION_59();
  return sub_1B1E59C44(v17, v18, v9, 0, v19);
}

id sub_1B1E59C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v25 = a4;
  v26 = a3;
  v24 = a1;
  v8 = sub_1B1F1A2F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a5;
  v13 = *(a5 + 8);
  v14 = *(a5 + 9);
  v15 = OBJC_IVAR___WFToolKitIndexingRequest_id;
  v16 = sub_1B1F1A350();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v5[v15], a2, v16);
  sub_1B1F1A2E0();
  (*(v9 + 32))(&v5[OBJC_IVAR___WFToolKitIndexingRequest_timestamp], v12, v8);
  v18 = v25;
  *&v5[OBJC_IVAR___WFToolKitIndexingRequest_reasons] = v24;
  *&v5[OBJC_IVAR___WFToolKitIndexingRequest_retryCount] = v18;
  v19 = &v5[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig];
  *v19 = v23;
  v19[8] = v13;
  v19[9] = v14;
  v20 = type metadata accessor for ToolKitIndexingRequest(0);
  v27.receiver = v5;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, sel_init);
  (*(v9 + 8))(v26, v8);
  (*(v17 + 8))(a2, v16);
  return v21;
}

id sub_1B1E59E38()
{
  OUTLINED_FUNCTION_50();
  v2 = sub_1B1F1A2F0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_3();
  v10 = v9 - v8;
  v11 = sub_1B1F1A350();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v17 = v16 - v15;
  v18 = *(v1 + OBJC_IVAR___WFToolKitIndexingRequest_reasons);
  (*(v19 + 16))(v16 - v15, v1 + OBJC_IVAR___WFToolKitIndexingRequest_id);
  (*(v5 + 16))(v10, v1 + OBJC_IVAR___WFToolKitIndexingRequest_timestamp, v2);
  OUTLINED_FUNCTION_55((v1 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig));
  v20 = objc_allocWithZone(type metadata accessor for ToolKitIndexingRequest(0));
  v21 = sub_1B1F1A760();
  return sub_1B1E59C44(v21, v17, v10, v0, &v23);
}

uint64_t sub_1B1E5A03C(void *a1)
{
  if (qword_1EB7833B8 != -1)
  {
    swift_once();
  }

  type metadata accessor for ToolKitIndexingRequest(0);
  OUTLINED_FUNCTION_29_3();
  sub_1B1DF6BE0(v2);
  v3 = sub_1B1F1A030();
  v5 = v4;
  v6 = sub_1B1F1A250();
  v7 = sub_1B1F1A860();
  [a1 encodeObject:v6 forKey:v7];

  return sub_1B1E03C48(v3, v5);
}

id ToolKitIndexingRequest.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_1B1E5D234();
  v4 = sub_1B1F1AE70();
  if (v4)
  {
    v5 = v4;
    if (qword_1EB7833D0 != -1)
    {
      swift_once();
    }

    v6 = v5;
    sub_1B1F1A290();

    OUTLINED_FUNCTION_29_3();
    sub_1B1DF6BE0(v7);
    sub_1B1F1A000();

    v10 = OUTLINED_FUNCTION_86();
    sub_1B1E03C48(v10, v11);
    v12 = v25;
    v13 = OBJC_IVAR___WFToolKitIndexingRequest_id;
    v14 = sub_1B1F1A350();
    OUTLINED_FUNCTION_10(v14);
    (*(v15 + 16))(&v2[v13], &v25[v13]);
    v16 = OBJC_IVAR___WFToolKitIndexingRequest_timestamp;
    v17 = sub_1B1F1A2F0();
    OUTLINED_FUNCTION_10(v17);
    (*(v18 + 16))(&v2[v16], &v25[v16]);
    *&v2[OBJC_IVAR___WFToolKitIndexingRequest_reasons] = *&v25[OBJC_IVAR___WFToolKitIndexingRequest_reasons];
    *&v2[OBJC_IVAR___WFToolKitIndexingRequest_retryCount] = *&v12[OBJC_IVAR___WFToolKitIndexingRequest_retryCount];
    v19 = *&v12[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig];
    v20 = v12[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig + 8];
    LOBYTE(v6) = v12[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig + 9];
    sub_1B1F1A760();

    v21 = &v2[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig];
    *v21 = v19;
    v21[8] = v20;
    v21[9] = v6;
    v24.receiver = v2;
    v24.super_class = type metadata accessor for ToolKitIndexingRequest(0);
    v22 = objc_msgSendSuper2(&v24, sel_init);
  }

  else
  {

    type metadata accessor for ToolKitIndexingRequest(0);
    v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v22;
}

unint64_t sub_1B1E5A53C()
{
  OUTLINED_FUNCTION_62();
  sub_1B1F1AFA0();

  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_18();
  sub_1B1DF6BE0(v1);
  v2 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v2);

  MEMORY[0x1B273D1A0](0x6E6F73616572202CLL, 0xEB00000000203A73);
  v3 = *(v0 + OBJC_IVAR___WFToolKitIndexingRequest_reasons);
  v4 = type metadata accessor for ToolKitIndexingReason(0);
  v5 = MEMORY[0x1B273D250](v3, v4);
  MEMORY[0x1B273D1A0](v5);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

id ToolKitIndexingRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B1E5A6D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F73616572 && a2 == 0xE700000000000000;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x43676E6974736574 && a2 == 0xED00006769666E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B1F1B510();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1B1E5A890(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1B273E060](a1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E5A8D0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x736E6F73616572;
      break;
    case 3:
      result = 0x756F437972746572;
      break;
    case 4:
      result = 0x43676E6974736574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E5A97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E5A6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E5A9A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E5A888();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E5A9CC(uint64_t a1)
{
  v2 = sub_1B1E5D278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E5AA08(uint64_t a1)
{
  v2 = sub_1B1E5D278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ToolKitIndexingRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolKitIndexingRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1E5AB28(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785968, &qword_1B1F314F8);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_38_0();
  v12 = a1[4];
  OUTLINED_FUNCTION_44(a1, a1[3]);
  sub_1B1E5D278();
  OUTLINED_FUNCTION_91();
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_18();
  sub_1B1DF6BE0(v13);
  OUTLINED_FUNCTION_34_1();
  if (!v2)
  {
    sub_1B1F1A2F0();
    OUTLINED_FUNCTION_33_3();
    sub_1B1DF6BE0(v14);
    OUTLINED_FUNCTION_34_1();
    v17 = *(v4 + OBJC_IVAR___WFToolKitIndexingRequest_reasons);
    OUTLINED_FUNCTION_82();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785970, &qword_1B1F31500);
    sub_1B1E5D2CC(&unk_1EB783278);
    OUTLINED_FUNCTION_34_1();
    v15 = *(v4 + OBJC_IVAR___WFToolKitIndexingRequest_retryCount);
    OUTLINED_FUNCTION_44_0();
    sub_1B1F1B2A0();
    OUTLINED_FUNCTION_55((v4 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig));
    sub_1B1E5D354();
    OUTLINED_FUNCTION_44_0();
    sub_1B1F1B260();
  }

  return (*(v8 + 8))(v3, v6);
}

void ToolKitIndexingRequest.init(from:)()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_25_4();
  v2 = sub_1B1F1A2F0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v34 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_3();
  v9 = v8 - v7;
  v10 = sub_1B1F1A350();
  v11 = OUTLINED_FUNCTION_0(v10);
  v33 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_3();
  v35 = v16 - v15;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785980, &qword_1B1F31508);
  OUTLINED_FUNCTION_0(v36);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21_4();
  v20 = v0[3];
  v21 = v0[4];
  v22 = OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_44(v22, v23);
  sub_1B1E5D278();
  sub_1B1F1B810();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
    type metadata accessor for ToolKitIndexingRequest(0);
    v25 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x30);
    v26 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v38) = 0;
    OUTLINED_FUNCTION_0_18();
    sub_1B1DF6BE0(v24);
    sub_1B1F1B200();
    (*(v33 + 32))(v0 + OBJC_IVAR___WFToolKitIndexingRequest_id, v35);
    LOBYTE(v38) = 1;
    OUTLINED_FUNCTION_33_3();
    sub_1B1DF6BE0(v27);
    sub_1B1F1B200();
    (*(v34 + 32))(v0 + OBJC_IVAR___WFToolKitIndexingRequest_timestamp, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785970, &qword_1B1F31500);
    OUTLINED_FUNCTION_82();
    sub_1B1E5D2CC(&unk_1EB783270);
    sub_1B1F1B200();
    *(v0 + OBJC_IVAR___WFToolKitIndexingRequest_reasons) = v38;
    LOBYTE(v38) = 3;
    *(v0 + OBJC_IVAR___WFToolKitIndexingRequest_retryCount) = sub_1B1F1B1F0();
    sub_1B1E5D3A8();
    sub_1B1F1B1B0();
    v28 = v39;
    v29 = v40;
    v30 = v0 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig;
    *v30 = v38;
    v30[8] = v28;
    v30[9] = v29;
    v37.receiver = v0;
    v37.super_class = type metadata accessor for ToolKitIndexingRequest(0);
    objc_msgSendSuper2(&v37, sel_init);
    v31 = OUTLINED_FUNCTION_22_5();
    v32(v31);
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  OUTLINED_FUNCTION_35();
}

void sub_1B1E5B324(void *a1@<X8>)
{
  ToolKitIndexingRequest.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t ToolKitTestingRetryingError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785988, &qword_1B1F31510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000001B1F39400;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  return sub_1B1F1A730();
}

uint64_t ToolKitTestingRetryingError.hashValue.getter()
{
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x1B273E060](0);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E5B4F8(uint64_t a1)
{
  v2 = sub_1B1E5FC64();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1E5B534(uint64_t a1)
{
  v2 = sub_1B1E5FC64();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1E5B570(uint64_t result)
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
    result = sub_1B1F1A760();
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
        sub_1B1F1A760();
        sub_1B1E5BB74(v12, v13);

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

uint64_t sub_1B1E5B69C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v60 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v51 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = sub_1B1F1A760();
    v15 = 0;
    v53 = v12;
    v54 = v7;
    v55 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A900();
        v21 = sub_1B1F1B7F0();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_1B1F1B510() & 1) != 0)
          {
            v57 = v51;
            v58 = v16;
            v59 = v11;
            v3 = v54;
            v12 = v55;
            v56[0] = v55;
            v56[1] = v54;

            v26 = *(v5 + 32);
            v48 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v48;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v49 = &v47;
              MEMORY[0x1EEE9AC00](v25);
              v7 = &v47 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v52 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v53;
              while (1)
              {
                v50 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_1B1F1B7C0();
                sub_1B1F1A760();
                sub_1B1F1A900();
                v36 = sub_1B1F1B7F0();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v54;
                    v12 = v55;
                    v30 = v53;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_1B1F1B510();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v52[v7];
                v52[v7] = v41 & ~v8;
                v3 = v54;
                v12 = v55;
                v30 = v53;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v50 - 1;
                if (__OFSUB__(v50, 1))
                {
                  __break(1u);
                }

                if (v50 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  sub_1B1E6754C(v52, v48, v50, v5);
                  v5 = v42;
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v45 = swift_slowAlloc();
            v46 = sub_1B1E5BE88(v45, v48, (v5 + 56), v48, v5, v7, v56);

            MEMORY[0x1B273F720](v45, -1, -1);
            v51 = v57;
            v5 = v46;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v54;
        v14 = v55;
        v12 = v53;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1B1E2CC74();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1B1E5BB74(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v7 = sub_1B1F1B7F0();
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
    if (v11 || (sub_1B1F1B510() & 1) != 0)
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
    sub_1B1E6573C();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_1B1E5BF10(v9);
  *v2 = v19;
  return v16;
}

void sub_1B1E5BC9C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_1B1F1B7C0();
    sub_1B1F1A760();
    sub_1B1F1A900();
    v17 = sub_1B1F1B7F0();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_1B1F1B510();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = a1[v20];
    a1[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_1B1E6754C(a1, a2, v27, a3);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1B1E5BE88(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1B1E5BC9C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

unint64_t sub_1B1E5BF10(unint64_t result)
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

    v9 = sub_1B1F1AF20();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A900();
        v15 = sub_1B1F1B7F0();

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

uint64_t sub_1B1E5C0C8(const void *a1, uint64_t a2)
{
  v52 = type metadata accessor for LaunchServicesSnapshot(0);
  v4 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  v45 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v14 = sub_1B1F1B7F0();
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a2 + 56);
  v58 = (v16 + 63) >> 6;
  result = sub_1B1F1A760();
  v20 = 0;
  v21 = 0;
  v55 = v14;
  v56 = a2 + 56;
  v50 = a2;
  v49 = v6;
  v48 = v7;
  v47 = v11;
  v46 = v13;
  while (v18)
  {
LABEL_10:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1B1E5CF1C(*(a2 + 48) + *(v7 + 72) * (v23 | (v21 << 6)), v13);
    sub_1B1F1B7C0();
    sub_1B1E5CF1C(v13, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v59 = v20;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v28 = *v11;
        MEMORY[0x1B273E060](1);
        v29 = *(v28 + 64);
        v54 = v28 + 64;
        v30 = 1 << *(v28 + 32);
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v32 = v31 & v29;
        v53 = (v30 + 63) >> 6;
        v57 = v28;
        result = sub_1B1F1A760();
        v60 = 0;
        v33 = 0;
        if (v32)
        {
          goto LABEL_19;
        }

        break;
      case 2:
        v27 = 2;
        goto LABEL_14;
      case 3:
        v27 = 3;
LABEL_14:
        MEMORY[0x1B273E060](v27);
        goto LABEL_27;
      default:
        v25 = v51;
        sub_1B1E5CA90(v11, v51);
        MEMORY[0x1B273E060](0);
        sub_1B1F1A350();
        sub_1B1DF6BE0(&qword_1ED84EFE8);
        sub_1B1F1A800();
        v26 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
        MEMORY[0x1B273E060](*(v25 + *(v26 + 20)));
        sub_1B1E3BDC0(__src, *(v25 + *(v52 + 20)));
        sub_1B1E5C898();
        goto LABEL_27;
    }

    while (1)
    {
LABEL_20:
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_30;
      }

      if (v34 >= v53)
      {
        break;
      }

      v32 = *(v54 + 8 * v34);
      ++v33;
      if (v32)
      {
        while (1)
        {
          v35 = __clz(__rbit64(v32)) | (v34 << 6);
          v36 = (*(v57 + 48) + 16 * v35);
          v37 = *v36;
          v38 = v36[1];
          v39 = (*(v57 + 56) + 32 * v35);
          v40 = *v39;
          v41 = v39[1];
          v42 = v39[2];
          v43 = v39[3];
          sub_1B1F1A760();
          sub_1B1F1A760();
          sub_1B1E0E714(v42, v43);
          if (!v38)
          {
            goto LABEL_26;
          }

          v32 &= v32 - 1;
          memcpy(v61, __src, sizeof(v61));
          sub_1B1F1A900();

          sub_1B1F1A760();
          sub_1B1E0E714(v42, v43);
          sub_1B1F1A900();

          sub_1B1F1A2A0();

          sub_1B1E03C48(v42, v43);
          sub_1B1E03C48(v42, v43);
          result = sub_1B1F1B7F0();
          v60 ^= result;
          v33 = v34;
          if (!v32)
          {
            goto LABEL_20;
          }

LABEL_19:
          v34 = v33;
        }
      }
    }

LABEL_26:

    MEMORY[0x1B273E060](v60);

    a2 = v50;
    v7 = v48;
    v11 = v47;
    v13 = v46;
LABEL_27:
    v44 = sub_1B1F1B7F0();
    result = sub_1B1E5C898();
    v20 = v44 ^ v59;
    v15 = v56;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v58)
    {

      return MEMORY[0x1B273E060](v20);
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B1E5C6BC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B1F1B7F0();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  result = sub_1B1F1A760();
  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1B1F1B7C0();
    sub_1B1F1A760();
    sub_1B1F1A900();
    v15 = sub_1B1F1B7F0();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B273E060](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E5C830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1E5C898()
{
  v1 = OUTLINED_FUNCTION_50();
  v3 = v2(v1);
  OUTLINED_FUNCTION_10(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1B1E5C8EC()
{
  result = qword_1EB7834B0;
  if (!qword_1EB7834B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834B0);
  }

  return result;
}

unint64_t sub_1B1E5C940()
{
  result = qword_1EB7857D8;
  if (!qword_1EB7857D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7857D8);
  }

  return result;
}

unint64_t sub_1B1E5C994()
{
  result = qword_1EB7857E0;
  if (!qword_1EB7857E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7857E0);
  }

  return result;
}

unint64_t sub_1B1E5C9E8()
{
  result = qword_1EB7857E8;
  if (!qword_1EB7857E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7857E8);
  }

  return result;
}

unint64_t sub_1B1E5CA3C()
{
  result = qword_1EB783468;
  if (!qword_1EB783468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783468);
  }

  return result;
}

uint64_t sub_1B1E5CA90(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25_4();
  v5 = v4(v3);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_6_8();
  v9(v8);
  return a2;
}

unint64_t sub_1B1E5CAE8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1B1E5CB38()
{
  result = qword_1EB783858;
  if (!qword_1EB783858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783858);
  }

  return result;
}

unint64_t sub_1B1E5CB8C()
{
  result = qword_1EB783850;
  if (!qword_1EB783850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783850);
  }

  return result;
}

unint64_t sub_1B1E5CBE0()
{
  result = qword_1EB7838D8;
  if (!qword_1EB7838D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838D8);
  }

  return result;
}

unint64_t sub_1B1E5CC34()
{
  result = qword_1EB785840;
  if (!qword_1EB785840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785840);
  }

  return result;
}

unint64_t sub_1B1E5CC88()
{
  result = qword_1EB783438;
  if (!qword_1EB783438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783438);
  }

  return result;
}

unint64_t sub_1B1E5CCDC()
{
  result = qword_1EB783898;
  if (!qword_1EB783898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783898);
  }

  return result;
}

unint64_t sub_1B1E5CD30(uint64_t a1)
{
  result = OUTLINED_FUNCTION_78(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB785850, &qword_1B1F31450);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B1E5CD98(uint64_t a1)
{
  result = OUTLINED_FUNCTION_78(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785860, &qword_1B1F31458);
    sub_1B1DF6BE0(v4);
    result = OUTLINED_FUNCTION_90();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B1E5CE20()
{
  result = qword_1EB7839E8;
  if (!qword_1EB7839E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839E8);
  }

  return result;
}

unint64_t sub_1B1E5CE74()
{
  result = qword_1EB7834C8;
  if (!qword_1EB7834C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834C8);
  }

  return result;
}

unint64_t sub_1B1E5CEC8()
{
  result = qword_1EB7834C0;
  if (!qword_1EB7834C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834C0);
  }

  return result;
}

uint64_t sub_1B1E5CF1C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25_4();
  v5 = v4(v3);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_6_8();
  v9(v8);
  return a2;
}

unint64_t sub_1B1E5CF74()
{
  result = qword_1EB7858D0;
  if (!qword_1EB7858D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7858D0);
  }

  return result;
}

unint64_t sub_1B1E5CFC8()
{
  result = qword_1EB7858D8;
  if (!qword_1EB7858D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7858D8);
  }

  return result;
}

unint64_t sub_1B1E5D01C()
{
  result = qword_1EB7858E0;
  if (!qword_1EB7858E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7858E0);
  }

  return result;
}

unint64_t sub_1B1E5D070()
{
  result = qword_1EB785910;
  if (!qword_1EB785910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785910);
  }

  return result;
}

unint64_t sub_1B1E5D0C4()
{
  result = qword_1EB785918;
  if (!qword_1EB785918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785918);
  }

  return result;
}

unint64_t sub_1B1E5D118()
{
  result = qword_1EB785938;
  if (!qword_1EB785938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785938);
  }

  return result;
}

unint64_t sub_1B1E5D16C()
{
  result = qword_1EB785940;
  if (!qword_1EB785940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785940);
  }

  return result;
}

unint64_t sub_1B1E5D1C0()
{
  result = qword_1EB785950;
  if (!qword_1EB785950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785950);
  }

  return result;
}

unint64_t sub_1B1E5D234()
{
  result = qword_1EB783200;
  if (!qword_1EB783200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB783200);
  }

  return result;
}

unint64_t sub_1B1E5D278()
{
  result = qword_1EB7837C0;
  if (!qword_1EB7837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7837C0);
  }

  return result;
}

unint64_t sub_1B1E5D2CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_78(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB785970, &qword_1B1F31500);
    sub_1B1DF6BE0(v4);
    result = OUTLINED_FUNCTION_90();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B1E5D354()
{
  result = qword_1EB7833A8;
  if (!qword_1EB7833A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833A8);
  }

  return result;
}

unint64_t sub_1B1E5D3A8()
{
  result = qword_1EB7833A0;
  if (!qword_1EB7833A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833A0);
  }

  return result;
}

unint64_t sub_1B1E5D400()
{
  result = qword_1EB785990;
  if (!qword_1EB785990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785990);
  }

  return result;
}

unint64_t sub_1B1E5D4A0()
{
  result = qword_1EB7859A0;
  if (!qword_1EB7859A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859A0);
  }

  return result;
}

unint64_t sub_1B1E5D540()
{
  result = qword_1EB7859B0;
  if (!qword_1EB7859B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859B0);
  }

  return result;
}

unint64_t sub_1B1E5D598()
{
  result = qword_1EB7859B8;
  if (!qword_1EB7859B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859B8);
  }

  return result;
}

unint64_t sub_1B1E5D5F0()
{
  result = qword_1EB7859C0;
  if (!qword_1EB7859C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859C0);
  }

  return result;
}

uint64_t sub_1B1E5D66C()
{
  result = sub_1B1F1A350();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E5D6F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1E5D730(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1E5D784(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E5D7D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B1E5D838()
{
  result = type metadata accessor for LaunchServicesSnapshot(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E5D8A8()
{
  result = sub_1B1F1A350();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B1F1A2F0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitIndexingRequest.TestingConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitIndexingRequest.TestingConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitIndexingRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E5DCBC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_72(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B1E5DDE4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_72(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingReason.Changeset.Provenance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ToolKitIndexingReason.Trigger.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingReason.Trigger.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B1E5E1FC(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_43(a1);
}

_BYTE *sub_1B1E5E248(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E5E2F8()
{
  result = qword_1EB7859D0;
  if (!qword_1EB7859D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859D0);
  }

  return result;
}

unint64_t sub_1B1E5E350()
{
  result = qword_1EB7859D8;
  if (!qword_1EB7859D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859D8);
  }

  return result;
}

unint64_t sub_1B1E5E3A8()
{
  result = qword_1EB7859E0;
  if (!qword_1EB7859E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859E0);
  }

  return result;
}

unint64_t sub_1B1E5E400()
{
  result = qword_1EB7859E8;
  if (!qword_1EB7859E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859E8);
  }

  return result;
}

unint64_t sub_1B1E5E458()
{
  result = qword_1EB7859F0;
  if (!qword_1EB7859F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859F0);
  }

  return result;
}

unint64_t sub_1B1E5E4B0()
{
  result = qword_1EB7859F8;
  if (!qword_1EB7859F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859F8);
  }

  return result;
}

unint64_t sub_1B1E5E508()
{
  result = qword_1EB785A00;
  if (!qword_1EB785A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A00);
  }

  return result;
}

unint64_t sub_1B1E5E560()
{
  result = qword_1EB785A08;
  if (!qword_1EB785A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A08);
  }

  return result;
}

unint64_t sub_1B1E5E5B8()
{
  result = qword_1EB785A10;
  if (!qword_1EB785A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A10);
  }

  return result;
}

unint64_t sub_1B1E5E610()
{
  result = qword_1EB785A18;
  if (!qword_1EB785A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A18);
  }

  return result;
}

unint64_t sub_1B1E5E668()
{
  result = qword_1EB785A20;
  if (!qword_1EB785A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A20);
  }

  return result;
}

unint64_t sub_1B1E5E6C0()
{
  result = qword_1EB785A28;
  if (!qword_1EB785A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A28);
  }

  return result;
}

unint64_t sub_1B1E5E718()
{
  result = qword_1EB785A30;
  if (!qword_1EB785A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A30);
  }

  return result;
}

unint64_t sub_1B1E5E770()
{
  result = qword_1EB785A38;
  if (!qword_1EB785A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A38);
  }

  return result;
}

unint64_t sub_1B1E5E7C8()
{
  result = qword_1EB7837B0;
  if (!qword_1EB7837B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7837B0);
  }

  return result;
}

unint64_t sub_1B1E5E820()
{
  result = qword_1EB7837B8;
  if (!qword_1EB7837B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7837B8);
  }

  return result;
}

unint64_t sub_1B1E5E878()
{
  result = qword_1EB785A40;
  if (!qword_1EB785A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A40);
  }

  return result;
}

unint64_t sub_1B1E5E8D0()
{
  result = qword_1EB785A48;
  if (!qword_1EB785A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A48);
  }

  return result;
}

unint64_t sub_1B1E5E928()
{
  result = qword_1EB785A50;
  if (!qword_1EB785A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A50);
  }

  return result;
}

unint64_t sub_1B1E5E980()
{
  result = qword_1EB785A58;
  if (!qword_1EB785A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A58);
  }

  return result;
}

unint64_t sub_1B1E5E9D8()
{
  result = qword_1EB785A60;
  if (!qword_1EB785A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A60);
  }

  return result;
}

unint64_t sub_1B1E5EA30()
{
  result = qword_1EB785A68;
  if (!qword_1EB785A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A68);
  }

  return result;
}

unint64_t sub_1B1E5EA88()
{
  result = qword_1EB785A70;
  if (!qword_1EB785A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A70);
  }

  return result;
}

unint64_t sub_1B1E5EAE0()
{
  result = qword_1EB785A78;
  if (!qword_1EB785A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A78);
  }

  return result;
}

unint64_t sub_1B1E5EB38()
{
  result = qword_1EB785A80;
  if (!qword_1EB785A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A80);
  }

  return result;
}

unint64_t sub_1B1E5EB90()
{
  result = qword_1EB785A88;
  if (!qword_1EB785A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A88);
  }

  return result;
}

unint64_t sub_1B1E5EBE8()
{
  result = qword_1EB785A90;
  if (!qword_1EB785A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A90);
  }

  return result;
}

unint64_t sub_1B1E5EC40()
{
  result = qword_1EB785A98;
  if (!qword_1EB785A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A98);
  }

  return result;
}

unint64_t sub_1B1E5EC98()
{
  result = qword_1EB7839D0;
  if (!qword_1EB7839D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839D0);
  }

  return result;
}

unint64_t sub_1B1E5ECF0()
{
  result = qword_1EB7839D8;
  if (!qword_1EB7839D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839D8);
  }

  return result;
}

unint64_t sub_1B1E5ED48()
{
  result = qword_1EB783880;
  if (!qword_1EB783880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783880);
  }

  return result;
}

unint64_t sub_1B1E5EDA0()
{
  result = qword_1EB783888;
  if (!qword_1EB783888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783888);
  }

  return result;
}

unint64_t sub_1B1E5EDF8()
{
  result = qword_1EB783860;
  if (!qword_1EB783860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783860);
  }

  return result;
}

unint64_t sub_1B1E5EE50()
{
  result = qword_1EB783868;
  if (!qword_1EB783868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783868);
  }

  return result;
}

unint64_t sub_1B1E5EEA8()
{
  result = qword_1EB783870;
  if (!qword_1EB783870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783870);
  }

  return result;
}

unint64_t sub_1B1E5EF00()
{
  result = qword_1EB783878;
  if (!qword_1EB783878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783878);
  }

  return result;
}

unint64_t sub_1B1E5EF58()
{
  result = qword_1EB7838C0;
  if (!qword_1EB7838C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838C0);
  }

  return result;
}

unint64_t sub_1B1E5EFB0()
{
  result = qword_1EB7838C8;
  if (!qword_1EB7838C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838C8);
  }

  return result;
}

unint64_t sub_1B1E5F008()
{
  result = qword_1EB783450;
  if (!qword_1EB783450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783450);
  }

  return result;
}

unint64_t sub_1B1E5F060()
{
  result = qword_1EB783458;
  if (!qword_1EB783458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783458);
  }

  return result;
}

unint64_t sub_1B1E5F0B8()
{
  result = qword_1EB783480;
  if (!qword_1EB783480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783480);
  }

  return result;
}

unint64_t sub_1B1E5F110()
{
  result = qword_1EB783488;
  if (!qword_1EB783488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783488);
  }

  return result;
}

unint64_t sub_1B1E5F168()
{
  result = qword_1EB783470;
  if (!qword_1EB783470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783470);
  }

  return result;
}

unint64_t sub_1B1E5F1C0()
{
  result = qword_1EB783478;
  if (!qword_1EB783478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783478);
  }

  return result;
}

unint64_t sub_1B1E5F218()
{
  result = qword_1EB783490;
  if (!qword_1EB783490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783490);
  }

  return result;
}

unint64_t sub_1B1E5F270()
{
  result = qword_1EB783498;
  if (!qword_1EB783498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783498);
  }

  return result;
}

unint64_t sub_1B1E5F2C8()
{
  result = qword_1EB7834A0;
  if (!qword_1EB7834A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834A0);
  }

  return result;
}

unint64_t sub_1B1E5F320()
{
  result = qword_1EB7834A8;
  if (!qword_1EB7834A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834A8);
  }

  return result;
}

unint64_t sub_1B1E5F378()
{
  result = qword_1EB7839A0;
  if (!qword_1EB7839A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839A0);
  }

  return result;
}

unint64_t sub_1B1E5F3D0()
{
  result = qword_1EB7839A8;
  if (!qword_1EB7839A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839A8);
  }

  return result;
}

unint64_t sub_1B1E5F428()
{
  result = qword_1EB783980;
  if (!qword_1EB783980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783980);
  }

  return result;
}

unint64_t sub_1B1E5F480()
{
  result = qword_1EB783988;
  if (!qword_1EB783988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783988);
  }

  return result;
}

unint64_t sub_1B1E5F4D8()
{
  result = qword_1EB783940;
  if (!qword_1EB783940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783940);
  }

  return result;
}

unint64_t sub_1B1E5F530()
{
  result = qword_1EB783948;
  if (!qword_1EB783948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783948);
  }

  return result;
}

unint64_t sub_1B1E5F588()
{
  result = qword_1EB783920;
  if (!qword_1EB783920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783920);
  }

  return result;
}

unint64_t sub_1B1E5F5E0()
{
  result = qword_1EB783928;
  if (!qword_1EB783928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783928);
  }

  return result;
}

unint64_t sub_1B1E5F638()
{
  result = qword_1EB7838F0;
  if (!qword_1EB7838F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838F0);
  }

  return result;
}

unint64_t sub_1B1E5F690()
{
  result = qword_1EB7838F8;
  if (!qword_1EB7838F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838F8);
  }

  return result;
}

unint64_t sub_1B1E5F6E8()
{
  result = qword_1EB783900;
  if (!qword_1EB783900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783900);
  }

  return result;
}

unint64_t sub_1B1E5F740()
{
  result = qword_1EB783908;
  if (!qword_1EB783908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783908);
  }

  return result;
}

unint64_t sub_1B1E5F798()
{
  result = qword_1EB7838E0;
  if (!qword_1EB7838E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838E0);
  }

  return result;
}

unint64_t sub_1B1E5F7F0()
{
  result = qword_1EB7838E8;
  if (!qword_1EB7838E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838E8);
  }

  return result;
}

unint64_t sub_1B1E5F848()
{
  result = qword_1EB783930;
  if (!qword_1EB783930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783930);
  }

  return result;
}

unint64_t sub_1B1E5F8A0()
{
  result = qword_1EB783938;
  if (!qword_1EB783938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783938);
  }

  return result;
}

unint64_t sub_1B1E5F8F8()
{
  result = qword_1EB783910;
  if (!qword_1EB783910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783910);
  }

  return result;
}

unint64_t sub_1B1E5F950()
{
  result = qword_1EB783918;
  if (!qword_1EB783918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783918);
  }

  return result;
}

unint64_t sub_1B1E5F9A8()
{
  result = qword_1EB783970;
  if (!qword_1EB783970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783970);
  }

  return result;
}

unint64_t sub_1B1E5FA00()
{
  result = qword_1EB783978;
  if (!qword_1EB783978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783978);
  }

  return result;
}

unint64_t sub_1B1E5FA58()
{
  result = qword_1EB783950;
  if (!qword_1EB783950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783950);
  }

  return result;
}

unint64_t sub_1B1E5FAB0()
{
  result = qword_1EB783958;
  if (!qword_1EB783958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783958);
  }

  return result;
}

unint64_t sub_1B1E5FB08()
{
  result = qword_1EB783990;
  if (!qword_1EB783990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783990);
  }

  return result;
}

unint64_t sub_1B1E5FB60()
{
  result = qword_1EB783998;
  if (!qword_1EB783998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783998);
  }

  return result;
}

unint64_t sub_1B1E5FBB8()
{
  result = qword_1EB7839B0;
  if (!qword_1EB7839B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839B0);
  }

  return result;
}

unint64_t sub_1B1E5FC10()
{
  result = qword_1EB7839B8;
  if (!qword_1EB7839B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839B8);
  }

  return result;
}

unint64_t sub_1B1E5FC64()
{
  result = qword_1EB785AA0;
  if (!qword_1EB785AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785AA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_9()
{
  v2 = *(v0 - 416);

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_1B1E5C898();
}

uint64_t OUTLINED_FUNCTION_11_6()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);

  return sub_1B1F1B240();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return sub_1B1F1B2B0();
}

void OUTLINED_FUNCTION_55(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  *(v1 - 80) = v2;
  *(v1 - 72) = v3;
  *(v1 - 71) = v4;
}

uint64_t OUTLINED_FUNCTION_64()
{

  return sub_1B1F1B200();
}

uint64_t OUTLINED_FUNCTION_74()
{
  v2 = *(v0 - 152);

  return sub_1B1F1B180();
}

__n128 OUTLINED_FUNCTION_83@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v2 = a1[1].n128_u8[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_89()
{

  return sub_1B1F1B0A0();
}

uint64_t OUTLINED_FUNCTION_92()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_93()
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_94()
{

  return swift_unknownObjectRelease();
}

void sub_1B1E6007C(uint64_t a1)
{
  v2 = 0;
  v15[2] = MEMORY[0x1B273D4D0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_0_13();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v2;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];
      sub_1B1F1A760();
      sub_1B1E640C4(v15, v13, v14);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

BOOL sub_1B1E60184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_3();
  v6 = v5;
  v8 = *(v7 + 40);
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v9 = sub_1B1F1B7F0();
  v10 = ~(-1 << *(v3 + 32));
  do
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v3 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (*(v3 + 48) + 16 * v11);
    if (*v14 == v6 && v14[1] == v4)
    {
      break;
    }

    v16 = sub_1B1F1B510();
    v9 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

uint64_t sub_1B1E6026C()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_31_3(&unk_1B1F33AE8);
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_18_0(v3);

  return v7(v5, v1);
}

uint64_t sub_1B1E60304()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1B1E603E8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_1B1E60484;

  return static LinkSnapshot.complete()();
}

uint64_t sub_1B1E60484()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    v9 = sub_1B1E605E4;
  }

  else
  {
    v9 = sub_1B1E60580;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B1E60580()
{
  OUTLINED_FUNCTION_1();
  sub_1B1E60CB0(*(v0 + 32), *(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_1B1E605FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for LaunchServicesSnapshot(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E60690, 0, 0);
}

uint64_t sub_1B1E60690()
{
  OUTLINED_FUNCTION_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785430, &qword_1B1F30910);
  v2 = *(MEMORY[0x1E69E88A0] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B1E6076C;
  v5 = v0[4];
  v4 = v0[5];

  return MEMORY[0x1EEE6DD58](v4, v1, v5, 0, 0, &unk_1B1F30920, 0, v1);
}

uint64_t sub_1B1E6076C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (v0)
  {
    v9 = sub_1B1E608D0;
  }

  else
  {
    v9 = sub_1B1E60868;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B1E60868()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[5];
  sub_1B1E60E40(v0[3], v0[2]);
  OUTLINED_FUNCTION_10_7();

  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_1B1E608D0()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t ToolKitSeedSnapshot.diff()()
{
  OUTLINED_FUNCTION_26_3();
  v3[4] = v4;
  v3[5] = v1;
  v3[2] = v5;
  v3[3] = v6;
  OUTLINED_FUNCTION_5_0();
  v3[6] = v7;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[7] = v10;
  v11 = *(v0 + 96);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v3[8] = v13;
  *v13 = v3;
  v13[1] = sub_1B1E60AA8;

  return v15(v10, v2, v0);
}

uint64_t sub_1B1E60AA8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    v9 = sub_1B1E60C44;
  }

  else
  {
    v9 = sub_1B1E60BA4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B1E60BA4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  (*(v0[4] + 112))(v0[5], v3);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_1B1E60C44()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1B1E60CB0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = a2;
  v23 = a1;
  sub_1B1F1A760();
  sub_1B1E6007C(a2);
  v7 = v6;
  v8 = sub_1B1F1A760();
  sub_1B1E6007C(v8);
  v10 = v9;
  sub_1B1F1A760();
  v11 = sub_1B1E55A28(v10, v7);
  sub_1B1F1A760();
  v12 = sub_1B1E55A28(v7, v10);
  v13 = sub_1B1E67730(v10, v7);

  v21[2] = &v22;
  v21[3] = &v23;
  v14 = sub_1B1E67128(sub_1B1E67D1C, v21, v13);
  v15 = v22;
  sub_1B1F1A760();
  v16 = sub_1B1F1A760();
  v17 = sub_1B1E66374(v16, v11, sub_1B1E66538, sub_1B1E66538);

  sub_1B1F1A760();
  v18 = sub_1B1E66374(v15, v14, sub_1B1E66538, sub_1B1E66538);

  sub_1B1F1A760();
  v19 = sub_1B1E66374(a1, v12, sub_1B1E66538, sub_1B1E66538);

  *a3 = v15;
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v19;
  return result;
}

int *sub_1B1E60E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v6 = type metadata accessor for LaunchServicesSnapshot(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = *(v3 + *(v7 + 28));
  v16 = sub_1B1F1A760();
  sub_1B1E6007C(v16);
  v18 = v17;
  v38 = *(a1 + *(v7 + 28));
  v19 = a1;
  v36 = a1;
  v20 = sub_1B1F1A760();
  sub_1B1E6007C(v20);
  v22 = v21;
  sub_1B1F1A760();
  v23 = sub_1B1E55A28(v22, v18);
  sub_1B1F1A760();
  v35 = sub_1B1E55A28(v18, v22);
  v24 = sub_1B1E67730(v22, v18);

  v41[2] = v3;
  v41[3] = v19;
  v25 = sub_1B1E67128(sub_1B1E67CFC, v41, v24);
  sub_1B1E67DD4(v3, a2, type metadata accessor for LaunchServicesSnapshot);
  sub_1B1F1A760();
  v26 = sub_1B1E66374(v15, v23, sub_1B1E66820, sub_1B1E66820);

  sub_1B1E67DD4(v3, v14, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  *&v14[*(v7 + 28)] = v26;

  sub_1B1E67E34(v14, type metadata accessor for LaunchServicesSnapshot);
  sub_1B1F1A760();
  v27 = sub_1B1E66374(v15, v25, sub_1B1E66820, sub_1B1E66820);

  v28 = v3;
  v29 = v39;
  sub_1B1E67DD4(v28, v39, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  *(v29 + *(v7 + 28)) = v27;

  sub_1B1E67E34(v29, type metadata accessor for LaunchServicesSnapshot);
  v30 = v35;
  sub_1B1F1A760();
  v31 = sub_1B1E66374(v38, v30, sub_1B1E66820, sub_1B1E66820);

  v32 = v40;
  sub_1B1E67DD4(v36, v40, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  *(v32 + *(v7 + 28)) = v31;

  sub_1B1E67E34(v32, type metadata accessor for LaunchServicesSnapshot);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AC8, &qword_1B1F33AB0);
  v34 = v37;
  *(v37 + result[9]) = v26;
  *(v34 + result[10]) = v27;
  *(v34 + result[11]) = v31;
  return result;
}

int *ToolKitSeedSnapshot.subtracting(other:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  OUTLINED_FUNCTION_5_0();
  v43 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_16();
  v45 = v11;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v37 - v13;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v37 - v15;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21_5();
  v49 = v17;
  v19 = *(v18 + 72);
  v50 = v18 + 72;
  v48 = v19;
  v19(v20, v18);
  OUTLINED_FUNCTION_18_6();
  v38 = a3;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_11();
  v21 = sub_1B1F1A760();

  v55 = v21;
  OUTLINED_FUNCTION_15_11();
  sub_1B1F1A750();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_3();
  v40 = a1;
  v48(a2, a3);
  OUTLINED_FUNCTION_15_11();
  v22 = sub_1B1F1A760();

  v55 = v22;
  OUTLINED_FUNCTION_23_3();
  sub_1B1F1A760();
  OUTLINED_FUNCTION_29_4();
  v23 = sub_1B1F1AC20();
  sub_1B1F1A760();
  v41 = sub_1B1F1AC20();
  v24 = OUTLINED_FUNCTION_29_4();
  MEMORY[0x1B273D4C0](v24);

  v25 = v38;
  v51 = a2;
  v52 = v38;
  v26 = v47;
  v53 = v47;
  v54 = a1;
  v37 = sub_1B1F1AC50();
  v27 = v43;
  (*(v43 + 16))(v49, v26, a2);
  v28 = *(v25 + 144);
  v29 = v42;
  v28(v23, a2, v25);

  v30 = v48;
  v39 = (v48)(a2, v25);
  v43 = *(v27 + 8);
  (v43)(v29, a2);
  v31 = v44;
  v28(v37, a2, v25);

  v32 = v30;
  v47 = (v30)(a2, v25);
  v33 = v43;
  (v43)(v31, a2);
  v34 = v45;
  v28(v41, a2, v25);

  v35 = v32(a2, v25);
  v33(v34, a2);
  return sub_1B1E6292C(v49, v39, v47, v35, a2, v46);
}

uint64_t sub_1B1E6159C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  sub_1B1F1A760();
  sub_1B1F1A760();
  v10 = 0;
  v37 = v9;
  v38 = v5;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = (*(a1 + 56) + 32 * v12);
      v16 = v15[1];
      v40 = *v15;
      v41 = *v13;
      v18 = v15[2];
      v17 = v15[3];
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v18, v17);
      if (!v14)
      {
        break;
      }

      if (a2[2])
      {
        sub_1B1DEBED8();
        if (v19)
        {
          goto LABEL_25;
        }
      }

      sub_1B1F1A760();
      v39 = v17;
      sub_1B1E0E714(v18, v17);
      swift_isUniquelyReferenced_nonNull_native();
      v20 = sub_1B1DEBED8();
      if (__OFADD__(a2[2], (v21 & 1) == 0))
      {
        goto LABEL_23;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7841E0, &qword_1B1F2B178);
      if (sub_1B1F1B0C0())
      {
        v24 = sub_1B1DEBED8();
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_26;
        }

        v22 = v24;
      }

      if (v23)
      {

        v26 = (a2[7] + 32 * v22);
        v27 = v26[1];
        v28 = v26[2];
        v29 = v26[3];
        *v26 = v40;
        v26[1] = v16;
        v26[2] = v18;
        v26[3] = v39;

        sub_1B1E03C48(v28, v29);

        sub_1B1E03C48(v18, v39);
      }

      else
      {
        a2[(v22 >> 6) + 8] |= 1 << v22;
        v30 = (a2[6] + 16 * v22);
        *v30 = v41;
        v30[1] = v14;
        v31 = (a2[7] + 32 * v22);
        *v31 = v40;
        v31[1] = v16;
        v31[2] = v18;
        v31[3] = v39;

        sub_1B1E03C48(v18, v39);
        v32 = a2[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_24;
        }

        a2[2] = v34;
      }

      v8 &= v8 - 1;
      v9 = v37;
      v5 = v38;
      if (!v8)
      {
        goto LABEL_4;
      }
    }

LABEL_21:

    *a3 = a2;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_21;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_1B1F1B100();
    __break(1u);
LABEL_26:
    result = sub_1B1F1B720();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E618AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if ((sub_1B1F1A310() & 1) == 0 || (v6 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0), *(a1 + *(v6 + 20)) != *(v3 + *(v6 + 20))))
  {
    sub_1B1E5036C();
    swift_allocError();
    return swift_willThrow();
  }

  v44 = a2;
  v42 = type metadata accessor for LaunchServicesSnapshot(0);
  v43 = v3;
  v7 = *(v42 + 20);
  v8 = *(v3 + v7);
  v9 = *(a1 + v7);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  sub_1B1F1A760();
  v47 = v9;
  sub_1B1F1A760();
  v15 = 0;
  v45 = v14;
  for (i = v9 + 64; v13; v10 = i)
  {
LABEL_10:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = (*(v47 + 48) + 16 * v17);
    v19 = v18[1];
    v49 = *v18;
    v20 = (*(v47 + 56) + 24 * v17);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    sub_1B1F1A760();
    sub_1B1F1A760();
    v24 = v23;
    if (!v19)
    {
LABEL_24:

      result = sub_1B1E67DD4(v43, v44, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
      *(v44 + *(v42 + 20)) = v8;
      return result;
    }

    v25 = v24;
    if (v8[2])
    {
      sub_1B1DEBED8();
      if (v26)
      {
        goto LABEL_28;
      }
    }

    sub_1B1F1A760();
    v48 = v25;
    swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_1B1DEBED8();
    if (__OFADD__(v8[2], (v28 & 1) == 0))
    {
      goto LABEL_26;
    }

    v29 = v27;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7854D0, &qword_1B1F310F8);
    if (sub_1B1F1B0C0())
    {
      v31 = sub_1B1DEBED8();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_29;
      }

      v29 = v31;
      if (v30)
      {
LABEL_20:

        v38 = (v8[7] + 24 * v29);
        v39 = v38[1];
        v40 = v38[2];
        *v38 = v21;
        v38[1] = v22;
        v38[2] = v48;

        goto LABEL_21;
      }
    }

    else if (v30)
    {
      goto LABEL_20;
    }

    v8[(v29 >> 6) + 8] |= 1 << v29;
    v33 = (v8[6] + 16 * v29);
    *v33 = v49;
    v33[1] = v19;
    v34 = (v8[7] + 24 * v29);
    *v34 = v21;
    v34[1] = v22;
    v34[2] = v48;

    v35 = v8[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_27;
    }

    v8[2] = v37;
LABEL_21:
    v13 &= v13 - 1;
    v14 = v45;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_24;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1B1F1B100();
  __break(1u);
LABEL_29:
  result = sub_1B1F1B720();
  __break(1u);
  return result;
}

uint64_t ToolKitSeedSnapshot.adding(other:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v63 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_16();
  v69 = v11;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_5();
  v68 = v13;
  OUTLINED_FUNCTION_5_0();
  v59 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_16();
  v58 = v18;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21_5();
  v57 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v65 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_16();
  v72 = v26;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21_5();
  v73 = v28;
  if ((*(a3 + 128))(v3, a2, a3))
  {
    v67 = AssociatedTypeWitness;
    v29 = *(a3 + 72);
    v74 = v29(a2, a3);
    v55 = a2;
    v30 = v29(a2, a3);
    v31 = 0;
    v32 = *(v30 + 64);
    v56 = v30;
    v33 = *(v30 + 32);
    OUTLINED_FUNCTION_0_13();
    v37 = v36 & v35;
    v39 = (v38 + 63) >> 6;
    v61 = (v63 + 8);
    v40 = v58;
    v41 = v73;
    v64 = v34;
    v66 = (v65 + 32);
    v62 = v39;
    v60 = TupleTypeMetadata2;
    while (v37)
    {
      v42 = v31;
      v43 = v67;
LABEL_10:
      v44 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v45 = v44 | (v42 << 6);
      v46 = (*(v56 + 48) + 16 * v45);
      v47 = *v46;
      v48 = v46[1];
      (*(v59 + 16))(v57, *(v56 + 56) + *(v59 + 72) * v45, v43);
      v49 = *(TupleTypeMetadata2 + 48);
      *v72 = v47;
      *(v72 + 1) = v48;
      (*(v59 + 32))(&v72[v49], v57, v43);
      __swift_storeEnumTagSinglePayload(v72, 0, 1, TupleTypeMetadata2);
      sub_1B1F1A760();
      v40 = v58;
      v41 = v73;
LABEL_11:
      (*v66)(v41, v72, v71);
      if (__swift_getEnumTagSinglePayload(v41, 1, TupleTypeMetadata2) == 1)
      {

        (*(a3 + 152))(v74, v55);
      }

      v51 = *v41;
      v50 = *(v41 + 1);
      (*(v59 + 32))(v40, &v41[*(TupleTypeMetadata2 + 48)], v43);
      sub_1B1F1A760();
      v52 = v40;
      sub_1B1F1A7D0();

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v43);
      (*v61)(v68, v70);
      if (EnumTagSinglePayload != 1)
      {
        goto LABEL_18;
      }

      (*(v59 + 16))(v69, v52, v43);
      __swift_storeEnumTagSinglePayload(v69, 0, 1, v43);
      sub_1B1F1A7C0();
      sub_1B1F1A7E0();
      (*(v59 + 8))(v52, v43);
      v40 = v52;
      TupleTypeMetadata2 = v60;
      v41 = v73;
      v39 = v62;
      v34 = v64;
    }

    v43 = v67;
    while (1)
    {
      v42 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v42 >= v39)
      {
        __swift_storeEnumTagSinglePayload(v72, 1, 1, TupleTypeMetadata2);
        v37 = 0;
        goto LABEL_11;
      }

      v37 = *(v34 + 8 * v42);
      ++v31;
      if (v37)
      {
        v31 = v42;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    result = sub_1B1F1B100();
    __break(1u);
  }

  else
  {
    sub_1B1E5036C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

double sub_1B1E6228C@<D0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B1DEBED8(), (v5 & 1) != 0))
  {
    v6 = (*(a1 + 56) + 32 * v4);
    v7 = v6[1];
    v8 = v6[2];
    v9 = v6[3];
    *a2 = *v6;
    a2[1] = v7;
    a2[2] = v8;
    a2[3] = v9;
    sub_1B1F1A760();

    sub_1B1E0E714(v8, v9);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

unint64_t sub_1B1E62314@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for LaunchServicesSnapshot(0);
  v4 = *(v1 + *(result + 20));
  if (*(v4 + 16) && (result = sub_1B1DEBED8(), (v5 & 1) != 0))
  {
    v6 = (*(v4 + 56) + 24 * result);
    v7 = v6[1];
    v8 = v6[2];
    *a1 = *v6;
    a1[1] = v7;
    a1[2] = v8;
    sub_1B1F1A760();

    return v8;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t ToolKitSeedSnapshot.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 72))(a3, a4);
  OUTLINED_FUNCTION_18_6();
  swift_getAssociatedTypeWitness();
  sub_1B1F1A760();
  sub_1B1F1A7D0();
}

uint64_t sub_1B1E62490@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1B1F1A760();
  result = sub_1B1E66374(a2, a1, sub_1B1E66538, sub_1B1E66538);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E624F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LaunchServicesSnapshot(0);
  v6 = *(v2 + *(v5 + 20));
  sub_1B1F1A760();
  v7 = sub_1B1E66374(v6, a1, sub_1B1E66820, sub_1B1E66820);
  result = sub_1B1E67DD4(v2, a2, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  *(a2 + *(v5 + 20)) = v7;
  return result;
}

uint64_t ToolKitSeedSnapshot.filtering(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 72))(a2, a3);
  OUTLINED_FUNCTION_18_6();
  swift_getAssociatedTypeWitness();
  sub_1B1F1A780();
  (*(a3 + 152))();
}

uint64_t sub_1B1E62688()
{
  v0 = OUTLINED_FUNCTION_31_3(&unk_1B1F33AC8);
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_0(v1);

  return v5(v3);
}

uint64_t sub_1B1E6273C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B1E67EEC;

  return ToolKitSeedSnapshot.diff()();
}

uint64_t ToolKitSeedSnapshotDelta.isEmptySet.getter(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 36));
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (MEMORY[0x1B273D030](v3, MEMORY[0x1E69E6158], AssociatedTypeWitness, MEMORY[0x1E69E6168]) & 1) != 0 && (MEMORY[0x1B273D030](*(v1 + *(a1 + 40)), MEMORY[0x1E69E6158], AssociatedTypeWitness, MEMORY[0x1E69E6168]))
  {
    v7 = *(v1 + *(a1 + 44));

    JUMPOUT(0x1B273D030);
  }

  return 0;
}

int *sub_1B1E6292C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for ToolKitSeedSnapshotDelta();
  *(a6 + result[9]) = a2;
  *(a6 + result[10]) = a3;
  *(a6 + result[11]) = a4;
  return result;
}

uint64_t sub_1B1E629CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v16[-v11];
  v14 = *a1;
  v13 = a1[1];
  *v12 = v14;
  v12[1] = v13;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v16[*(v10 + 48) - v11], a2, AssociatedTypeWitness);
  sub_1B1F1A760();
  LOBYTE(a3) = sub_1B1E60184(v14, v13, a3);
  (*(v8 + 8))(v12, TupleTypeMetadata2);
  return a3 & 1;
}

uint64_t ToolKitSeedSnapshotError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785988, &qword_1B1F31510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000001B1F39400;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  return sub_1B1F1A730();
}

uint64_t ToolKitSeedSnapshotError.hashValue.getter()
{
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](0);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E62CA0(uint64_t a1)
{
  v2 = sub_1B1E6400C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1E62CDC(uint64_t a1)
{
  v2 = sub_1B1E6400C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1E62D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16) && (v6 = sub_1B1DEBED8(), (v7 & 1) != 0))
  {
    v8 = (*(a3 + 56) + 32 * v6);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];
    v12 = v8[3];
    sub_1B1F1A760();
    sub_1B1E0E714(v11, v12);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  if (*(a4 + 16) && (v13 = sub_1B1DEBED8(), (v14 & 1) != 0))
  {
    v15 = (*(a4 + 56) + 32 * v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    sub_1B1F1A760();
    sub_1B1E0E714(v18, v19);
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    if (!v10)
    {
LABEL_8:
      if (!v17)
      {
        sub_1B1E67D3C(v9, 0, v11, v12);
        v20 = 0;
        return v20 & 1;
      }

LABEL_19:
      sub_1B1E67D3C(v9, v10, v11, v12);
      sub_1B1E67D3C(v16, v17, v18, v19);
      v20 = 1;
      return v20 & 1;
    }
  }

  if (!v17)
  {
    sub_1B1E67D88(v9, v10, v11, v12);

    sub_1B1E03C48(v11, v12);
    goto LABEL_19;
  }

  v21 = v9 == v16 && v10 == v17;
  if (v21 || (sub_1B1F1B510() & 1) != 0)
  {
    sub_1B1E67D88(v9, v10, v11, v12);
    v22 = MEMORY[0x1B273CB00](v11, v12, v18, v19);
    sub_1B1E67D3C(v16, v17, v18, v19);
    v20 = v22 ^ 1;
  }

  else
  {
    sub_1B1E67D88(v9, v10, v11, v12);
    sub_1B1E67D3C(v16, v17, v18, v19);
    v20 = 1;
  }

  sub_1B1E03C48(v11, v12);
  sub_1B1E67D3C(v9, v10, v11, v12);
  return v20 & 1;
}

uint64_t sub_1B1E62F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LaunchServicesSnapshot(0);
  v7 = *(a3 + *(v6 + 20));
  if (*(v7 + 16) && (v8 = sub_1B1DEBED8(), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 24 * v8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    sub_1B1F1A760();
    v14 = v13;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v15 = *(a4 + *(v6 + 20));
  if (*(v15 + 16) && (v16 = sub_1B1DEBED8(), (v17 & 1) != 0))
  {
    v18 = (*(v15 + 56) + 24 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    sub_1B1F1A760();
    v22 = v21;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (!v12)
    {
LABEL_8:
      if (!v20)
      {
        sub_1B1E50534(v11, 0, v13);
        v23 = 0;
        return v23 & 1;
      }

LABEL_19:
      sub_1B1E50534(v11, v12, v13);
      sub_1B1E50534(v19, v20, v21);
      v23 = 1;
      return v23 & 1;
    }
  }

  if (!v20)
  {
    sub_1B1E50578(v11, v12, v13);

    goto LABEL_19;
  }

  v24 = v11 == v19 && v12 == v20;
  if (v24 || (sub_1B1F1B510() & 1) != 0)
  {
    sub_1B1E50578(v11, v12, v13);
    v25 = sub_1B1F1A290();
    v27 = v26;
    v35 = v11;
    v28 = sub_1B1F1A290();
    v30 = v29;
    v34 = MEMORY[0x1B273CB00](v25, v27, v28, v29);
    sub_1B1E03C48(v28, v30);
    sub_1B1E03C48(v25, v27);
    v31 = v19;
    v32 = v35;
    sub_1B1E50534(v31, v20, v21);
    v23 = v34 ^ 1;
  }

  else
  {
    sub_1B1E50578(v11, v12, v13);
    sub_1B1E50534(v19, v20, v21);
    v32 = v11;
    v23 = 1;
  }

  sub_1B1E50534(v32, v12, v13);
  return v23 & 1;
}

uint64_t sub_1B1E631C4(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v59 = a3;
  v54 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v46 - v9;
  v10 = sub_1B1F1AEB0();
  v53 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v11 = *(v50 + 64);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v46 - v13;
  v52 = *(v10 - 8);
  v15 = *(v52 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - v21;
  v23 = *a1;
  v24 = a1[1];
  v57 = a5;
  v25 = *(a5 + 136);
  v25(v23, v24, a4, a5);
  v54 = a4;
  v26 = a4;
  v27 = v53;
  v25(v23, v24, v26, v57);
  v28 = v52;
  v29 = AssociatedTypeWitness;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = *(v52 + 16);
  v31(v14, v22, v27);
  v31(&v14[v30], v20, v27);
  v59 = v14;
  if (__swift_getEnumTagSinglePayload(v14, 1, v29) != 1)
  {
    v47 = v20;
    v48 = v22;
    v34 = v59;
    v31(v56, v59, v27);
    if (__swift_getEnumTagSinglePayload(&v34[v30], 1, v29) != 1)
    {
      v36 = v51;
      v37 = v59;
      v38 = &v59[v30];
      v39 = v49;
      (*(v51 + 32))(v49, v38, v29);
      v40 = *(swift_getAssociatedConformanceWitness() + 8);
      v41 = v56;
      v42 = sub_1B1F1A830();
      v43 = *(v36 + 8);
      v43(v39, v29);
      v44 = *(v28 + 8);
      v44(v47, v27);
      v44(v48, v27);
      v43(v41, v29);
      v44(v37, v27);
      v33 = v42 ^ 1;
      return v33 & 1;
    }

    v35 = *(v28 + 8);
    v35(v47, v27);
    v35(v48, v27);
    (*(v51 + 8))(v56, v29);
    goto LABEL_6;
  }

  v32 = *(v28 + 8);
  v32(v20, v27);
  v32(v22, v27);
  if (__swift_getEnumTagSinglePayload(&v59[v30], 1, v29) != 1)
  {
LABEL_6:
    (*(v50 + 8))(v59, TupleTypeMetadata2);
    v33 = 1;
    return v33 & 1;
  }

  v32(v59, v27);
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1B1E636C8(uint64_t *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1B1E629CC(a1, a2, v2[4]) & 1;
}

unint64_t sub_1B1E636F0()
{
  result = qword_1EB785AB0;
  if (!qword_1EB785AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785AB0);
  }

  return result;
}

uint64_t dispatch thunk of static ToolKitSeedSnapshot.partial(_:failIfContainerNotFound:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 88);
  OUTLINED_FUNCTION_14_11();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_5_2(v14);
  *v15 = v16;
  v15[1] = sub_1B1E67EEC;

  return v18(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of static ToolKitSeedSnapshot.complete()()
{
  OUTLINED_FUNCTION_26_3();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_14_11();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_13_5(v6);

  return v9(v8);
}

uint64_t dispatch thunk of ToolKitSeedSnapshot.diff()()
{
  OUTLINED_FUNCTION_26_3();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_14_11();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_13_5(v6);

  return v9(v8);
}

uint64_t sub_1B1E63B4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    v3 = sub_1B1F1A7C0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B1E63C18(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B1E63D64(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
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
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolKitSeedSnapshotError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E6400C()
{
  result = qword_1EB785AB8;
  if (!qword_1EB785AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785AB8);
  }

  return result;
}

uint64_t sub_1B1E64060(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B1F338E0;
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

BOOL sub_1B1E640C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v9 = sub_1B1F1B7F0();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1B1F1B510() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;
      sub_1B1F1A760();
      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  sub_1B1F1A760();
  sub_1B1E65028(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_1B1E64210(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v56 = type metadata accessor for LaunchServicesSnapshot(0);
  v4 = OUTLINED_FUNCTION_10(v56);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  v9 = OUTLINED_FUNCTION_10(v64);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - v12;
  type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  OUTLINED_FUNCTION_5_0();
  v63 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_16();
  v60 = v18;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v19);
  v61 = (&v56 - v20);
  OUTLINED_FUNCTION_11_7();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21_5();
  v57 = v25;
  v58 = v2;
  v26 = *v2;
  v27 = *(*v2 + 40);
  sub_1B1F1B7C0();
  v67 = a2;
  ToolKitIndexingReason.Changeset.Provenance.hash(into:)();
  v28 = sub_1B1F1B7F0();
  v65 = v26;
  v66 = v26 + 56;
  v29 = ~(-1 << *(v26 + 32));
  v62 = v8;
  while (2)
  {
    v30 = v28 & v29;
    v31 = (1 << (v28 & v29)) & *(v66 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v31)
    {
      v45 = v58;
      v46 = *v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_19();
      v48 = v67;
      v49 = v57;
      sub_1B1E67DD4(v67, v57, v50);
      v68 = *v45;
      sub_1B1E65190(v49, v30, isUniquelyReferenced_nonNull_native);
      *v45 = v68;
      sub_1B1E67E8C(v48, v59, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      return v31 == 0;
    }

    v32 = *(v63 + 72) * v30;
    sub_1B1E67DD4(*(v65 + 48) + v32, v24, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    v33 = *(v64 + 48);
    sub_1B1E67DD4(v24, v13, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    sub_1B1E67DD4(v67, &v13[v33], type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_0_19();
        v36 = v60;
        sub_1B1E67DD4(v13, v60, v37);
        v38 = *v36;
        if (OUTLINED_FUNCTION_32_4() != 1)
        {

          goto LABEL_14;
        }

        v39 = sub_1B1E398D0(v38, *&v13[v33]);

        if (v39)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_1_19();
        sub_1B1E67E34(v13, v40);
        goto LABEL_15;
      case 2u:
        if (OUTLINED_FUNCTION_32_4() == 2)
        {
          goto LABEL_23;
        }

        goto LABEL_14;
      case 3u:
        if (OUTLINED_FUNCTION_32_4() == 3)
        {
          goto LABEL_23;
        }

        goto LABEL_14;
      default:
        OUTLINED_FUNCTION_0_19();
        v34 = v61;
        sub_1B1E67DD4(v13, v61, v35);
        if (OUTLINED_FUNCTION_32_4())
        {
          OUTLINED_FUNCTION_10_7();
LABEL_14:
          sub_1B1E5C830(v13);
LABEL_15:
          v8 = v62;
LABEL_16:
          OUTLINED_FUNCTION_1_19();
          sub_1B1E67E34(v24, v41);
          v28 = v30 + 1;
          continue;
        }

        sub_1B1E67E8C(&v13[v33], v8, type metadata accessor for LaunchServicesSnapshot);
        if ((sub_1B1F1A310() & 1) == 0 || (v42 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0), *(v34 + *(v42 + 20)) != *&v8[*(v42 + 20)]) || (sub_1B1E38FD4(*(v34 + *(v56 + 20)), *&v8[*(v56 + 20)]) & 1) == 0)
        {
          OUTLINED_FUNCTION_9_11();
          sub_1B1E67E34(v8, v43);
          sub_1B1E67E34(v34, v34);
          OUTLINED_FUNCTION_1_19();
          sub_1B1E67E34(v13, v44);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_9_11();
        sub_1B1E67E34(v8, v51);
        sub_1B1E67E34(v34, v34);
LABEL_23:
        sub_1B1E67E34(v13, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        sub_1B1E67E34(v24, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        sub_1B1E67E34(v67, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        v52 = *(v65 + 48);
        OUTLINED_FUNCTION_0_19();
        sub_1B1E67DD4(v53 + v32, v59, v54);
        return v31 == 0;
    }
  }
}

uint64_t sub_1B1E646E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD0, &unk_1B1F33AB8);
  result = sub_1B1F1AF60();
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
      sub_1B1E64060(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_1B1F1B7C0();
    sub_1B1F1A900();
    result = sub_1B1F1B7F0();
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

uint64_t sub_1B1E64944(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LaunchServicesSnapshot(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v68 = *(v8 - 8);
  v9 = *(v68 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v70 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v58 - v12;
  v13 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v14 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785AE0, &qword_1B1F33AF8);
  result = sub_1B1F1AF60();
  v16 = result;
  if (*(v13 + 16))
  {
    v58 = v1;
    v17 = 0;
    v18 = (v13 + 56);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v66 = v22;
    v64 = v4;
    v63 = v7;
    v62 = v13;
    v61 = v8;
    v60 = result;
    v59 = (v13 + 56);
    v67 = result + 56;
    if (v21)
    {
      while (1)
      {
        v23 = __clz(__rbit64(v21));
        v72 = (v21 - 1) & v21;
LABEL_14:
        v26 = *(v13 + 48);
        v71 = *(v68 + 72);
        v27 = v74;
        sub_1B1E67E8C(v26 + v71 * (v23 | (v17 << 6)), v74, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        v28 = *(v16 + 40);
        sub_1B1F1B7C0();
        sub_1B1E67DD4(v27, v70, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v31 = *v70;
            MEMORY[0x1B273E060](1);
            v32 = *(v31 + 64);
            v65 = v31 + 64;
            v33 = 1 << *(v31 + 32);
            if (v33 < 64)
            {
              v34 = ~(-1 << v33);
            }

            else
            {
              v34 = -1;
            }

            v35 = v34 & v32;
            v36 = (v33 + 63) >> 6;
            v69 = v31;
            result = sub_1B1F1A760();
            v73 = 0;
            v37 = 0;
            if (v35)
            {
              goto LABEL_23;
            }

            break;
          case 2u:
            v30 = 2;
            goto LABEL_18;
          case 3u:
            v30 = 3;
LABEL_18:
            MEMORY[0x1B273E060](v30);
            goto LABEL_31;
          default:
            sub_1B1E67E8C(v70, v7, type metadata accessor for LaunchServicesSnapshot);
            MEMORY[0x1B273E060](0);
            sub_1B1F1A350();
            sub_1B1DF7854();
            v22 = v66;
            sub_1B1F1A800();
            v29 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
            MEMORY[0x1B273E060](*&v7[*(v29 + 20)]);
            sub_1B1E3BDC0(__src, *&v7[*(v4 + 20)]);
            sub_1B1E67E34(v7, type metadata accessor for LaunchServicesSnapshot);
            goto LABEL_31;
        }

        while (1)
        {
LABEL_24:
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_48;
          }

          if (v38 >= v36)
          {
            break;
          }

          v35 = *(v65 + 8 * v38);
          ++v37;
          if (v35)
          {
            while (1)
            {
              v39 = __clz(__rbit64(v35)) | (v38 << 6);
              v40 = (*(v69 + 48) + 16 * v39);
              v42 = *v40;
              v41 = v40[1];
              v43 = (*(v69 + 56) + 32 * v39);
              v45 = *v43;
              v44 = v43[1];
              v46 = v43[2];
              v47 = v43[3];
              sub_1B1F1A760();
              sub_1B1F1A760();
              sub_1B1E0E714(v46, v47);
              if (!v41)
              {
                goto LABEL_30;
              }

              v35 &= v35 - 1;
              memcpy(__dst, __src, sizeof(__dst));
              sub_1B1F1A900();

              sub_1B1F1A760();
              sub_1B1E0E714(v46, v47);
              sub_1B1F1A900();

              sub_1B1F1A2A0();

              sub_1B1E03C48(v46, v47);
              sub_1B1E03C48(v46, v47);
              result = sub_1B1F1B7F0();
              v73 ^= result;
              v37 = v38;
              if (!v35)
              {
                goto LABEL_24;
              }

LABEL_23:
              v38 = v37;
            }
          }
        }

LABEL_30:

        MEMORY[0x1B273E060](v73);

        v4 = v64;
        v7 = v63;
        v13 = v62;
        v16 = v60;
        v18 = v59;
        v22 = v66;
LABEL_31:
        v48 = v67;
        result = sub_1B1F1B7F0();
        v49 = -1 << *(v16 + 32);
        v50 = result & ~v49;
        v51 = v50 >> 6;
        if (((-1 << v50) & ~*(v48 + 8 * (v50 >> 6))) == 0)
        {
          break;
        }

        v52 = __clz(__rbit64((-1 << v50) & ~*(v48 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_40:
        *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        result = sub_1B1E67E8C(v74, *(v16 + 48) + v52 * v71, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        ++*(v16 + 16);
        v21 = v72;
        if (!v72)
        {
          goto LABEL_9;
        }
      }

      v53 = 0;
      v54 = (63 - v49) >> 6;
      while (++v51 != v54 || (v53 & 1) == 0)
      {
        v55 = v51 == v54;
        if (v51 == v54)
        {
          v51 = 0;
        }

        v53 |= v55;
        v56 = *(v48 + 8 * v51);
        if (v56 != -1)
        {
          v52 = __clz(__rbit64(~v56)) + (v51 << 6);
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_9:
      v24 = v17;
      while (1)
      {
        v17 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v17 >= v22)
        {
          v57 = 1 << *(v13 + 32);
          if (v57 >= 64)
          {
            sub_1B1E64060(0, (v57 + 63) >> 6, v18);
          }

          else
          {
            *v18 = -1 << v57;
          }

          v2 = v58;
          *(v13 + 16) = 0;
          goto LABEL_46;
        }

        v25 = v18[v17];
        ++v24;
        if (v25)
        {
          v23 = __clz(__rbit64(v25));
          v72 = (v25 - 1) & v25;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_46:

    *v2 = v16;
  }

  return result;
}

uint64_t sub_1B1E65028(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B1E646E8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B1E65A94(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1B1F1B7C0();
      sub_1B1F1A900();
      result = sub_1B1F1B7F0();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1B1F1B510() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B1E6573C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B1F1B710();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1B1E65190(uint64_t a1, unint64_t a2, char a3)
{
  v8 = type metadata accessor for LaunchServicesSnapshot(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  v11 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v42 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  if (v23 <= v22 || (a3 & 1) == 0)
  {
    v41 = v19;
    if (a3)
    {
      v38 = v8;
      sub_1B1E64944(v22 + 1);
    }

    else
    {
      if (v23 > v22)
      {
        sub_1B1E6588C();
        goto LABEL_29;
      }

      v38 = v8;
      sub_1B1E65CC8(v22 + 1);
    }

    v39 = v3;
    v24 = *v3;
    v25 = *(*v3 + 40);
    sub_1B1F1B7C0();
    ToolKitIndexingReason.Changeset.Provenance.hash(into:)();
    v26 = sub_1B1F1B7F0();
    v43 = v24;
    v44 = v24 + 56;
    v27 = ~(-1 << *(v24 + 32));
    v4 = v40;
    while (1)
    {
      a2 = v26 & v27;
      if (((*(v44 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
      {
        break;
      }

      sub_1B1E67DD4(*(v24 + 48) + *(v46 + 72) * a2, v21, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      v28 = *(v45 + 48);
      sub_1B1E67DD4(v21, v13, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      sub_1B1E67DD4(a1, &v13[v28], type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v30 = v42;
          sub_1B1E67DD4(v13, v42, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
          v31 = *v30;
          if (swift_getEnumCaseMultiPayload() != 1)
          {

            goto LABEL_21;
          }

          v32 = sub_1B1E398D0(v31, *&v13[v28]);

          v4 = v40;

          v24 = v43;
          if (v32)
          {
            goto LABEL_33;
          }

          sub_1B1E67E34(v13, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
          goto LABEL_23;
        case 2u:
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            goto LABEL_33;
          }

          goto LABEL_22;
        case 3u:
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            goto LABEL_33;
          }

          goto LABEL_22;
        default:
          v29 = v41;
          sub_1B1E67DD4(v13, v41, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1B1E67E34(v29, type metadata accessor for LaunchServicesSnapshot);
LABEL_21:
            v24 = v43;
LABEL_22:
            sub_1B1E5C830(v13);
          }

          else
          {
            sub_1B1E67E8C(&v13[v28], v4, type metadata accessor for LaunchServicesSnapshot);
            if (sub_1B1F1A310())
            {
              v33 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
              if (*(v29 + *(v33 + 20)) == *(v4 + *(v33 + 20)) && (sub_1B1E38FD4(*(v29 + *(v38 + 20)), *(v4 + *(v38 + 20))) & 1) != 0)
              {
                goto LABEL_32;
              }
            }

            sub_1B1E67E34(v4, type metadata accessor for LaunchServicesSnapshot);
            sub_1B1E67E34(v29, type metadata accessor for LaunchServicesSnapshot);
            sub_1B1E67E34(v13, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
            v24 = v43;
          }

LABEL_23:
          sub_1B1E67E34(v21, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
          v26 = a2 + 1;
          break;
      }
    }

    v3 = v39;
  }

LABEL_29:
  v29 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B1E67E8C(a1, *(v29 + 48) + *(v46 + 72) * a2, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
  v35 = *(v29 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_32:
    sub_1B1E67E34(v4, type metadata accessor for LaunchServicesSnapshot);
    sub_1B1E67E34(v29, type metadata accessor for LaunchServicesSnapshot);
LABEL_33:
    sub_1B1E67E34(v13, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    sub_1B1E67E34(v21, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    result = sub_1B1F1B710();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v37;
  }

  return result;
}

void *sub_1B1E6573C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD0, &unk_1B1F33AB8);
  v2 = *v0;
  v3 = sub_1B1F1AF50();
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
        v18 = v14 | (v8 << 6);
        v19 = (*(v2 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = (*(v4 + 48) + 16 * v18);
        *v21 = *v19;
        v21[1] = v20;
        result = sub_1B1F1A760();
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

      ++v15;
      if (*(v2 + 56 + 8 * v8))
      {
        OUTLINED_FUNCTION_19_7();
        v12 = v17 & v16;
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

void *sub_1B1E6588C()
{
  v1 = v0;
  v2 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785AE0, &qword_1B1F33AF8);
  v7 = *v0;
  v8 = sub_1B1F1AF50();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1B1E67DD4(*(v7 + 48) + v22, v6, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        result = sub_1B1E67E8C(v6, *(v9 + 48) + v22, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_1B1E65A94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD0, &unk_1B1F33AB8);
  result = sub_1B1F1AF60();
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
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A900();
        result = sub_1B1F1B7F0();
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

uint64_t sub_1B1E65CC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LaunchServicesSnapshot(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v59 - v14;
  v15 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v16 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785AE0, &qword_1B1F33AF8);
  result = sub_1B1F1AF60();
  v18 = result;
  if (*(v15 + 16))
  {
    v59 = v1;
    v19 = 0;
    v20 = *(v15 + 56);
    v68 = v15 + 56;
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v67 = (v21 + 63) >> 6;
    v24 = v15;
    v25 = result;
    v69 = result;
    v65 = v4;
    v64 = v7;
    v63 = v8;
    v62 = v9;
    v61 = v13;
    v60 = v24;
    v70 = result + 56;
    if (v23)
    {
      while (1)
      {
        v26 = __clz(__rbit64(v23));
        v73 = (v23 - 1) & v23;
LABEL_14:
        v29 = *(v24 + 48);
        v72 = *(v9 + 72);
        v30 = v75;
        sub_1B1E67DD4(v29 + v72 * (v26 | (v19 << 6)), v75, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        v31 = *(v25 + 40);
        sub_1B1F1B7C0();
        sub_1B1E67DD4(v30, v13, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v34 = *v13;
            MEMORY[0x1B273E060](1);
            v35 = *(v34 + 64);
            v66 = v34 + 64;
            v36 = 1 << *(v34 + 32);
            if (v36 < 64)
            {
              v37 = ~(-1 << v36);
            }

            else
            {
              v37 = -1;
            }

            v38 = v37 & v35;
            v39 = (v36 + 63) >> 6;
            v71 = v34;
            result = sub_1B1F1A760();
            v74 = 0;
            v40 = 0;
            if (v38)
            {
              goto LABEL_23;
            }

            break;
          case 2u:
            v33 = 2;
            goto LABEL_18;
          case 3u:
            v33 = 3;
LABEL_18:
            MEMORY[0x1B273E060](v33);
            goto LABEL_31;
          default:
            sub_1B1E67E8C(v13, v7, type metadata accessor for LaunchServicesSnapshot);
            MEMORY[0x1B273E060](0);
            sub_1B1F1A350();
            sub_1B1DF7854();
            v25 = v69;
            sub_1B1F1A800();
            v32 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
            MEMORY[0x1B273E060](*&v7[*(v32 + 20)]);
            sub_1B1E3BDC0(__src, *&v7[*(v4 + 20)]);
            sub_1B1E67E34(v7, type metadata accessor for LaunchServicesSnapshot);
            goto LABEL_31;
        }

        while (1)
        {
LABEL_24:
          v41 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_46;
          }

          if (v41 >= v39)
          {
            break;
          }

          v38 = *(v66 + 8 * v41);
          ++v40;
          if (v38)
          {
            while (1)
            {
              v42 = __clz(__rbit64(v38)) | (v41 << 6);
              v43 = (*(v71 + 48) + 16 * v42);
              v44 = *v43;
              v45 = v43[1];
              v46 = (*(v71 + 56) + 32 * v42);
              v47 = *v46;
              v48 = v46[1];
              v49 = v46[2];
              v50 = v46[3];
              sub_1B1F1A760();
              sub_1B1F1A760();
              sub_1B1E0E714(v49, v50);
              if (!v45)
              {
                goto LABEL_30;
              }

              v38 &= v38 - 1;
              memcpy(__dst, __src, sizeof(__dst));
              sub_1B1F1A900();

              sub_1B1F1A760();
              sub_1B1E0E714(v49, v50);
              sub_1B1F1A900();

              sub_1B1F1A2A0();

              sub_1B1E03C48(v49, v50);
              sub_1B1E03C48(v49, v50);
              result = sub_1B1F1B7F0();
              v74 ^= result;
              v40 = v41;
              if (!v38)
              {
                goto LABEL_24;
              }

LABEL_23:
              v41 = v40;
            }
          }
        }

LABEL_30:

        MEMORY[0x1B273E060](v74);

        v4 = v65;
        v7 = v64;
        v9 = v62;
        v13 = v61;
        v24 = v60;
        v25 = v69;
LABEL_31:
        result = sub_1B1F1B7F0();
        v51 = -1 << *(v25 + 32);
        v52 = result & ~v51;
        v53 = v52 >> 6;
        if (((-1 << v52) & ~*(v70 + 8 * (v52 >> 6))) == 0)
        {
          break;
        }

        v54 = __clz(__rbit64((-1 << v52) & ~*(v70 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_40:
        *(v70 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        result = sub_1B1E67E8C(v75, *(v25 + 48) + v54 * v72, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        ++*(v25 + 16);
        v23 = v73;
        if (!v73)
        {
          goto LABEL_9;
        }
      }

      v55 = 0;
      v56 = (63 - v51) >> 6;
      while (++v53 != v56 || (v55 & 1) == 0)
      {
        v57 = v53 == v56;
        if (v53 == v56)
        {
          v53 = 0;
        }

        v55 |= v57;
        v58 = *(v70 + 8 * v53);
        if (v58 != -1)
        {
          v54 = __clz(__rbit64(~v58)) + (v53 << 6);
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_9:
      v27 = v19;
      while (1)
      {
        v19 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v19 >= v67)
        {

          v2 = v59;
          goto LABEL_44;
        }

        v28 = *(v68 + 8 * v19);
        ++v27;
        if (v28)
        {
          v26 = __clz(__rbit64(v28));
          v73 = (v28 - 1) & v28;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v25 = v18;
LABEL_44:
    *v2 = v25;
  }

  return result;
}

uint64_t sub_1B1E66374(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a1[32];
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = swift_bridgeObjectRetain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      sub_1B1F1A760();
      OUTLINED_FUNCTION_24_7();
      v7 = sub_1B1E66AAC(v16, v17, v18, v19, a4);
      MEMORY[0x1B273F720](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v11);
  sub_1B1E64060(0, v10, v20 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B1F1A760();
  OUTLINED_FUNCTION_24_7();
  v12 = a3();
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v7 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1B1E66538(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = result;
  v40 = 0;
  v5 = 0;
  v8 = a3[8];
  v6 = a3 + 8;
  v7 = v8;
  v9 = 1 << *(v6 - 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v43 = a4 + 56;
  v38 = v12;
  v39 = v6;
LABEL_5:
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v42 = (v11 - 1) & v11;
LABEL_12:
    v16 = v13 | (v5 << 6);
    v17 = (a3[6] + 16 * v16);
    v18 = v17[1];
    v19 = (a3[7] + 32 * v16);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    if (*(a4 + 16))
    {
      v37 = v16;
      v23 = *v17;
      v24 = *(a4 + 40);
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v21, v22);
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v21, v22);
      sub_1B1F1A900();
      v25 = sub_1B1F1B7F0();
      v26 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v27 = v25 & v26;
        if (((*(v43 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
        {
          break;
        }

        v28 = (*(a4 + 48) + 16 * v27);
        if (*v28 != v23 || v28[1] != v18)
        {
          v30 = sub_1B1F1B510();
          v25 = v27 + 1;
          if ((v30 & 1) == 0)
          {
            continue;
          }
        }

        sub_1B1E03C48(v21, v22);

        sub_1B1E03C48(v21, v22);

        *(v36 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        v6 = v39;
        v31 = __OFADD__(v40++, 1);
        v12 = v38;
        v11 = v42;
        if (v31)
        {
          goto LABEL_27;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v32 = v17[1];
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v21, v22);
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v21, v22);
    }

    sub_1B1E03C48(v21, v22);

    sub_1B1E03C48(v21, v22);

    v12 = v38;
    v6 = v39;
    v11 = v42;
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v12)
    {
      sub_1B1E66C74(v36, a2, v40, a3);
      v34 = v33;

      return v34;
    }

    v15 = v6[v5];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}