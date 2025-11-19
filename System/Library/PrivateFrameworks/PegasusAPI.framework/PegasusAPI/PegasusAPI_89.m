uint64_t sub_1B95A81F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD19C8, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95A8278(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBAB3E28, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95A82E8()
{
  sub_1B8CD38D8(&qword_1EBAB3E28, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95A8380()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1750);
  __swift_project_value_buffer(v0, qword_1EBAD1750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_2";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_4";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "text_5";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemTextCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B75E8();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B95B4670();
        break;
      case 4:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 5:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B2F0C();
        break;
      default:
        continue;
    }
  }
}

void Searchfoundation_RFSummaryItemTextCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v5 = OUTLINED_FUNCTION_183(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_62_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_89_13();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_241_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_725();
  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_177_0();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_95_8();
  v35 = type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(v18);
  sub_1B906D5EC(v0 + v35[6], v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v2);
  if (v19)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v20, v21);
    OUTLINED_FUNCTION_709_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_20;
    }
  }

  sub_1B906D5EC(v0 + v35[7], v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v3);
  if (v19)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v22, v23);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_84_12();
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_20;
    }
  }

  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_3_87(), sub_1B8CD38D8(v24, v25), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_84_12(), sub_1B964C730(), !v1))
  {
    OUTLINED_FUNCTION_235_4();
    sub_1B906D5EC(v0 + v26, v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_118(v34);
    if (v19)
    {
      sub_1B8D9207C(v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v27, v28);
      OUTLINED_FUNCTION_597_0();
      OUTLINED_FUNCTION_84_12();
      sub_1B964C740();
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_234_6();
    sub_1B906D5EC(v0 + v29, v33, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_118(v33);
    if (v19)
    {
      sub_1B8D9207C(v33, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_19:
      v32 = v0 + v35[5];
      OUTLINED_FUNCTION_12();
      sub_1B964C290();
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v30, v31);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_84_12();
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (!v1)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemTextCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44_0();
  v123 = v11;
  OUTLINED_FUNCTION_230();
  v13 = MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_41_25(v13, v14, v15, v16, v17, v18, v19, v20, v123);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1247();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v24 = OUTLINED_FUNCTION_183(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44_0();
  v127 = v27;
  OUTLINED_FUNCTION_230();
  v29 = MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_35_17(v29, v30, v31, v32, v33, v34, v35, v36, v124);
  v38 = MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_33_16(v38, v39, v40, v41, v42, v43, v44, v45, v125);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_219_0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v48 = OUTLINED_FUNCTION_59_1(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_77_10();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_682();
  v140 = v53;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_87_0();
  v137 = type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection(0);
  v55 = *(v137 + 24);
  v138 = v47;
  v56 = *(v47 + 48);
  OUTLINED_FUNCTION_217_3();
  sub_1B906D5EC(v57, v58, v59, &qword_1B96B9A80);
  OUTLINED_FUNCTION_230_4(v4 + v55, v2 + v56);
  OUTLINED_FUNCTION_48(v2);
  if (v95)
  {
    OUTLINED_FUNCTION_48(v2 + v56);
    if (v95)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_26:
    v96 = &qword_1EBAB8E00;
    v97 = &qword_1B964D600;
LABEL_30:
    v101 = v2;
LABEL_31:
    sub_1B8D9207C(v101, v96, v97);
    goto LABEL_32;
  }

  sub_1B906D5EC(v2, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v2 + v56);
  if (v95)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v98 = *v0;
  v99 = *v1;
  sub_1B8D5BA08();
  if ((v100 & 1) == 0 || *(v0 + 8) != *(v1 + 8))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v96 = &qword_1EBAB8DF8;
    v97 = &qword_1B96B9A80;
    goto LABEL_30;
  }

  v104 = *(v7 + 24);
  v105 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v106, v107);
  sub_1B964C850();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v105 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_6:
  v60 = v137;
  v61 = *(v137 + 28);
  v62 = *(v138 + 48);
  v63 = &qword_1B96B9A80;
  OUTLINED_FUNCTION_230_4(v6 + v61, v140);
  v64 = v4;
  OUTLINED_FUNCTION_230_4(v4 + v61, v140 + v62);
  OUTLINED_FUNCTION_48(v140);
  if (v95)
  {
    OUTLINED_FUNCTION_48(v140 + v62);
    if (v95)
    {
      sub_1B8D9207C(v140, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_37:
    v96 = &qword_1EBAB8E00;
    v97 = &qword_1B964D600;
    v101 = v140;
    goto LABEL_31;
  }

  sub_1B906D5EC(v140, v136, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v140 + v62);
  if (v102)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08();
  if ((v103 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v95))
  {
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_207_7();
    v96 = &qword_1EBAB8DF8;
    v97 = &qword_1B96B9A80;
    v101 = v140;
    goto LABEL_31;
  }

  v113 = *(v7 + 24);
  v114 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v115, v116);
  sub_1B964C850();
  OUTLINED_FUNCTION_9_45();
  v63 = v117;
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_690();
  sub_1B95B9E1C();
  sub_1B8D9207C(v140, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v114 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  sub_1B8D5B224(*v6, *v4, v65, v66, v67, v68, v69, v70, v126, v127, v129, v130, v132, v134, v135, v136, v137, v6, v138, v140);
  if ((v71 & 1) == 0)
  {
LABEL_32:
    v94 = 0;
    goto LABEL_33;
  }

  v72 = v60[8];
  v73 = *(v139 + 48);
  v74 = v7;
  OUTLINED_FUNCTION_233_2();
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v75, v76, v77, v78);
  sub_1B906D5EC(v64 + v72, v63 + v73, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v63);
  if (v95)
  {
    OUTLINED_FUNCTION_48(v63 + v73);
    if (!v95)
    {
      goto LABEL_54;
    }

    sub_1B8D9207C(v63, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B906D5EC(v63, v133, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_48(v63 + v73);
    if (v108)
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v109 & 1) == 0)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v95)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v110, v111);
    v112 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_128();
    sub_1B95B9E1C();
    sub_1B8D9207C(v63, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v112 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v79 = v60[9];
  v80 = *(v139 + 48);
  v63 = v131;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v81, v82, v83, v84);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v85, v86, v87, v88);
  v89 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v89, v90, v74);
  if (v95)
  {
    OUTLINED_FUNCTION_48(v131 + v80);
    if (v95)
    {
      sub_1B8D9207C(v131, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_22;
    }

LABEL_54:
    v96 = &qword_1EBAB8E00;
    v97 = &qword_1B964D600;
LABEL_58:
    v101 = v63;
    goto LABEL_31;
  }

  sub_1B906D5EC(v131, v128, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_48(v131 + v80);
  if (v118)
  {
LABEL_53:
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08();
  if ((v119 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v95))
  {
LABEL_57:
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_182();
    sub_1B95B9E1C();
    v96 = &qword_1EBAB8DF8;
    v97 = &qword_1B96B9A80;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v120, v121);
  v122 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_128();
  sub_1B95B9E1C();
  sub_1B8D9207C(v131, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v122 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_22:
  v91 = v60[5];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v92, v93);
  v94 = sub_1B964C850();
LABEL_33:
  OUTLINED_FUNCTION_264(v94);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95A9434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD19C0, type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95A94B4(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBAB41E0, type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95A9524()
{
  sub_1B8CD38D8(&qword_1EBAB41E0, type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95A95BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1768);
  __swift_project_value_buffer(v0, qword_1EBAD1768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B96511B0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "number";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "text_2";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_1";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_3";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "text_4";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "text_5";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "text_6";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "thumbnail";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v8();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemShortNumberCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B2F0C();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B95B4670();
        break;
      case 5:
        OUTLINED_FUNCTION_41_26();
        OUTLINED_FUNCTION_9();
        sub_1B95B5D98();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B95A9A78();
        break;
      case 7:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5E9C();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B95A9B2C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95A9A78()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0) + 40);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t sub_1B95A9B2C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0) + 48);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD38D8(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFSummaryItemShortNumberCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v94 = v1;
  v95 = v3;
  v4 = v0;
  v96 = v6;
  v97 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v92 = v11;
  v12 = OUTLINED_FUNCTION_201();
  v89 = type metadata accessor for Searchfoundation_RFVisualProperty(v12);
  v13 = OUTLINED_FUNCTION_59_1(v89);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v88[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v18 = OUTLINED_FUNCTION_183(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_47_16();
  v23 = MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33_16(v23, v24, v25, v26, v27, v28, v29, v30, v88[0]);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = v88 - v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_219_0();
  v35 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v36 = OUTLINED_FUNCTION_59_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v88[2] = v39;
  OUTLINED_FUNCTION_230();
  v41 = MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_41_25(v41, v42, v43, v44, v45, v46, v47, v48, v88[0]);
  v50 = MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_35_17(v50, v51, v52, v53, v54, v55, v56, v57, v88[0]);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v59);
  v60 = OUTLINED_FUNCTION_101_7();
  v98 = type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(v60);
  sub_1B906D5EC(v4 + v98[7], v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_37_0(v2);
  if (v61)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v64 = v94;
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v62, v63);
    OUTLINED_FUNCTION_129();
    v1 = v94;
    sub_1B964C740();
    v64 = v1;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_235_4();
  sub_1B906D5EC(v4 + v65, v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_37_0(v34);
  if (v61)
  {
    sub_1B8D9207C(v34, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v66, v67);
    OUTLINED_FUNCTION_257_0();
    v1 = v64;
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v64)
    {
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_234_6();
  v69 = v93;
  sub_1B906D5EC(v4 + v68, v93, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_37_0(v69);
  if (v61)
  {
    sub_1B8D9207C(v69, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v70, v71);
    OUTLINED_FUNCTION_257_0();
    OUTLINED_FUNCTION_72_10();
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_31;
    }
  }

  v73 = v91;
  v72 = v92;
  if (!*(*v4 + 16) || (OUTLINED_FUNCTION_3_87(), sub_1B8CD38D8(v74, v75), OUTLINED_FUNCTION_129(), OUTLINED_FUNCTION_72_10(), sub_1B964C730(), !v1))
  {
    if (!*(v4[1] + 16) || (OUTLINED_FUNCTION_3_87(), sub_1B8CD38D8(v76, v77), OUTLINED_FUNCTION_129(), OUTLINED_FUNCTION_72_10(), sub_1B964C730(), !v1))
    {
      v78 = v90;
      sub_1B906D5EC(v4 + v98[10], v90, &qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_37_0(v78);
      if (v61)
      {
        sub_1B8D9207C(v78, &qword_1EBAB8DF8, &qword_1B96B9A80);
      }

      else
      {
        OUTLINED_FUNCTION_0_112();
        sub_1B95B9E70();
        OUTLINED_FUNCTION_3_87();
        sub_1B8CD38D8(v79, v80);
        OUTLINED_FUNCTION_257_0();
        OUTLINED_FUNCTION_72_10();
        sub_1B964C740();
        OUTLINED_FUNCTION_1_97();
        sub_1B95B9E1C();
        if (v1)
        {
          goto LABEL_31;
        }

        v72 = v92;
      }

      sub_1B906D5EC(v4 + v98[11], v73, &qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_37_0(v73);
      if (v61)
      {
        sub_1B8D9207C(v73, &qword_1EBAB8DF8, &qword_1B96B9A80);
      }

      else
      {
        OUTLINED_FUNCTION_0_112();
        sub_1B95B9E70();
        OUTLINED_FUNCTION_3_87();
        sub_1B8CD38D8(v81, v82);
        OUTLINED_FUNCTION_72_10();
        sub_1B964C740();
        OUTLINED_FUNCTION_1_97();
        sub_1B95B9E1C();
        if (v1)
        {
          goto LABEL_31;
        }
      }

      sub_1B906D5EC(v4 + v98[12], v72, &qword_1EBACC708, &unk_1B96D92F0);
      v83 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_178(v83, v84, v89);
      if (v61)
      {
        sub_1B8D9207C(v72, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_30:
        v87 = v4 + v98[6];
        sub_1B964C290();
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_5_54();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_10_45();
      sub_1B8CD38D8(v85, v86);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_72_10();
      sub_1B964C740();
      OUTLINED_FUNCTION_8_49();
      sub_1B95B9E1C();
      if (!v1)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemShortNumberCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v188 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v7 = OUTLINED_FUNCTION_59_1(v188);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v178 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v180 = v15;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v185);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v191 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v21 = type metadata accessor for Searchfoundation_RFTextProperty(v20);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  v183 = v25;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_682();
  v197 = v27;
  OUTLINED_FUNCTION_230();
  v29 = MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_41_25(v29, v30, v31, v32, v33, v34, v35, v36, v174);
  v38 = MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_35_17(v38, v39, v40, v41, v42, v43, v44, v45, v175);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_219_0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v48 = OUTLINED_FUNCTION_183(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44_0();
  v194 = v51;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_674_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_47_16();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_87_0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v57 = OUTLINED_FUNCTION_59_1(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44_0();
  v200 = v60;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_682();
  v205 = v62;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_682();
  v213 = v65;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_447_0();
  v211 = v56;
  v212 = type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection(0);
  v67 = v212[7];
  v68 = *(v56 + 48);
  OUTLINED_FUNCTION_230_4(v6 + v67, v0);
  v69 = v4 + v67;
  v70 = v21;
  OUTLINED_FUNCTION_230_4(v69, v0 + v68);
  OUTLINED_FUNCTION_48(v0);
  if (v134)
  {
    OUTLINED_FUNCTION_117(v0 + v68);
    if (v134)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_37:
    v135 = &qword_1EBAB8E00;
    v136 = &qword_1B964D600;
LABEL_41:
    v140 = v0;
LABEL_42:
    sub_1B8D9207C(v140, v135, v136);
LABEL_43:
    v133 = 0;
    goto LABEL_44;
  }

  sub_1B906D5EC(v0, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_117(v0 + v68);
  if (v134)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v137 = *v2;
  v138 = *v1;
  sub_1B8D5BA08();
  if ((v139 & 1) == 0 || *(v2 + 8) != *(v1 + 8))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v135 = &qword_1EBAB8DF8;
    v136 = &qword_1B96B9A80;
    goto LABEL_41;
  }

  v145 = *(v21 + 24);
  v146 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v147, v148);
  sub_1B964C850();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v146 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_6:
  v71 = v212[8];
  v72 = *(v211 + 48);
  sub_1B906D5EC(v6 + v71, v213, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v4 + v71, v213 + v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_117(v213);
  if (v134)
  {
    OUTLINED_FUNCTION_117(v213 + v72);
    if (v134)
    {
      sub_1B8D9207C(v213, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_48:
    v135 = &qword_1EBAB8E00;
    v136 = &qword_1B964D600;
    v140 = v213;
    goto LABEL_42;
  }

  sub_1B906D5EC(v213, v210, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_117(v213 + v72);
  if (v141)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v142 = *v210;
  v143 = *v209;
  sub_1B8D5BA08();
  if ((v144 & 1) == 0 || *(v210 + 8) != *(v209 + 8))
  {
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_207_7();
    v135 = &qword_1EBAB8DF8;
    v136 = &qword_1B96B9A80;
    v140 = v213;
    goto LABEL_42;
  }

  v151 = *(v21 + 24);
  v152 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v153, v154);
  sub_1B964C850();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_236();
  sub_1B95B9E1C();
  sub_1B8D9207C(v213, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v152 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_11:
  v73 = v212[9];
  v74 = *(v211 + 48);
  OUTLINED_FUNCTION_233_2();
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v75, v76, v77, v78);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v79, v80, v81, v82);
  OUTLINED_FUNCTION_117(v72);
  if (v134)
  {
    OUTLINED_FUNCTION_117(v72 + v74);
    if (v134)
    {
      sub_1B8D9207C(v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_16;
    }

LABEL_57:
    v135 = &qword_1EBAB8E00;
    v136 = &qword_1B964D600;
LABEL_61:
    v140 = v72;
    goto LABEL_42;
  }

  sub_1B906D5EC(v72, v208, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_117(v72 + v74);
  if (v149)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_199_7();
  sub_1B8D5BA08();
  if ((v150 & 1) == 0 || (OUTLINED_FUNCTION_123_9(), !v134))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_214_5();
    v135 = &qword_1EBAB8DF8;
    v136 = &qword_1B96B9A80;
    goto LABEL_61;
  }

  v155 = *(v21 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v156, v157);
  LOBYTE(v155) = OUTLINED_FUNCTION_845_0();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_200();
  sub_1B95B9E1C();
  sub_1B8D9207C(v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v155 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_16:
  sub_1B8D5B224(*v6, *v4, v83, v84, v85, v86, v87, v88, v176, v178, v180, v183, v185, v188, v191, v194, v197, v200, v202, v205);
  if ((v95 & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_1B8D5B224(v6[1], v4[1], v89, v90, v91, v92, v93, v94, v177, v179, v181, v184, v186, v189, v192, v195, v198, v201, v203, v206);
  if ((v96 & 1) == 0)
  {
    goto LABEL_43;
  }

  v97 = v212[10];
  v98 = *(v211 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v99, v100, v101, v102);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v103, v104, v105, v106);
  OUTLINED_FUNCTION_117(v207);
  if (v134)
  {
    OUTLINED_FUNCTION_117(v207 + v98);
    if (!v134)
    {
      goto LABEL_75;
    }

    sub_1B8D9207C(v207, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B906D5EC(v207, v204, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_117(v207 + v98);
    if (v158)
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    v159 = *v204;
    v160 = *v199;
    sub_1B8D5BA08();
    if ((v161 & 1) == 0 || *(v204 + 8) != *(v199 + 8))
    {
      OUTLINED_FUNCTION_7_50();
      sub_1B95B9E1C();
      OUTLINED_FUNCTION_288();
      sub_1B95B9E1C();
      v135 = &qword_1EBAB8DF8;
      v136 = &qword_1B96B9A80;
      v140 = v207;
      goto LABEL_42;
    }

    v164 = *(v70 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v165, v166);
    LOBYTE(v164) = OUTLINED_FUNCTION_645_0();
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_207_7();
    sub_1B8D9207C(v207, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v164 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v107 = v70;
  v108 = v212[11];
  v109 = *(v211 + 48);
  OUTLINED_FUNCTION_242_3();
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v110, v111, v112, v113);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v114, v115, v116, v117);
  OUTLINED_FUNCTION_75(v207);
  if (v134)
  {
    OUTLINED_FUNCTION_117(v207 + v109);
    if (v134)
    {
      sub_1B8D9207C(v207, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_28;
    }

LABEL_75:
    v135 = &qword_1EBAB8E00;
    v136 = &qword_1B964D600;
LABEL_76:
    v140 = v207;
    goto LABEL_42;
  }

  sub_1B906D5EC(v207, v196, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_117(v207 + v109);
  if (v162)
  {
LABEL_74:
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08();
  if ((v163 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v134))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_224_4();
    v135 = &qword_1EBAB8DF8;
    v136 = &qword_1B96B9A80;
    goto LABEL_76;
  }

  v169 = *(v107 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v170, v171);
  LOBYTE(v169) = OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_207_7();
  sub_1B8D9207C(v207, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v169 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_28:
  v118 = v212[12];
  v119 = *(v187 + 48);
  v0 = v193;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v120, v121, v122, v123);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v124, v125, v126, v127);
  v128 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_44(v128, v129);
  if (v134)
  {
    OUTLINED_FUNCTION_48(v193 + v119);
    if (v134)
    {
      sub_1B8D9207C(v193, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_33;
    }

LABEL_85:
    v135 = &qword_1EBACCC18;
    v136 = &unk_1B96D8D70;
    goto LABEL_41;
  }

  sub_1B906D5EC(v193, v182, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v193 + v119);
  if (v167)
  {
    OUTLINED_FUNCTION_8_49();
    sub_1B95B9E1C();
    goto LABEL_85;
  }

  OUTLINED_FUNCTION_5_54();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_199_7();
  sub_1B8D5D124();
  if ((v168 & 1) == 0 || (OUTLINED_FUNCTION_123_9(), !v134))
  {
    OUTLINED_FUNCTION_14_32();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_214_5();
    v135 = &qword_1EBACC708;
    v136 = &unk_1B96D92F0;
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v172, v173);
  OUTLINED_FUNCTION_845_0();
  OUTLINED_FUNCTION_12_40();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_200();
  sub_1B95B9E1C();
  sub_1B8D9207C(v193, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v190 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_33:
  v130 = v212[6];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v131, v132);
  OUTLINED_FUNCTION_310();
  v133 = sub_1B964C850();
LABEL_44:
  OUTLINED_FUNCTION_264(v133);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95AB044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD19B8, type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95AB0C4(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE650, type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95AB134()
{
  sub_1B8CD38D8(&qword_1EBACE650, type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection);

  return sub_1B964C5D0();
}

void Searchfoundation_RFSummaryItemAlignedTextCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B95B4670();
        break;
      case 4:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B2F0C();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95AB34C();
        break;
      case 6:
        OUTLINED_FUNCTION_41_26();
        OUTLINED_FUNCTION_9();
        sub_1B95B5D98();
        break;
      case 7:
        OUTLINED_FUNCTION_16_36();
        sub_1B95AB400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95AB34C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0) + 40);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void sub_1B95AB400()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 44);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_10_45();
  sub_1B8CD38D8(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_RFSummaryItemAlignedTextCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v8 = OUTLINED_FUNCTION_201();
  v62 = type metadata accessor for Searchfoundation_RFVisualProperty(v8);
  v9 = OUTLINED_FUNCTION_59_1(v62);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_221_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_65_13();
  v18 = MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33_16(v18, v19, v20, v21, v22, v23, v24, v25, v61);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_219_0();
  v28 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v29 = OUTLINED_FUNCTION_59_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_74_15();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_129_9();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_725();
  v67 = type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(0);
  sub_1B906D5EC(v0 + v67[7], v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v3);
  if (v35)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v38 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v36, v37);
    OUTLINED_FUNCTION_272_2();
    sub_1B964C740();
    v38 = v1;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_235_4();
  sub_1B906D5EC(v0 + v39, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v2);
  if (v35)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v40, v41);
    OUTLINED_FUNCTION_106_9();
    OUTLINED_FUNCTION_63_10();
    sub_1B964C740();
    v38 = v1;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_3_87(), sub_1B8CD38D8(v42, v43), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_63_10(), sub_1B964C730(), (v38 = v1) == 0))
  {
    OUTLINED_FUNCTION_234_6();
    sub_1B906D5EC(v0 + v44, v66, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_32(v66);
    if (v35)
    {
      sub_1B8D9207C(v66, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      v2 = v64;
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v45, v46);
      OUTLINED_FUNCTION_709_0();
      OUTLINED_FUNCTION_63_10();
      sub_1B964C740();
      v38 = v1;
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_26;
      }
    }

    sub_1B906D5EC(v0 + v67[10], v65, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_32(v65);
    if (v35)
    {
      sub_1B8D9207C(v65, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      v2 = v63;
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v47, v48);
      OUTLINED_FUNCTION_709_0();
      OUTLINED_FUNCTION_63_10();
      sub_1B964C740();
      v38 = v1;
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_26;
      }
    }

    if (!*(v0[1] + 16) || (OUTLINED_FUNCTION_3_87(), sub_1B8CD38D8(v49, v50), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_63_10(), sub_1B964C730(), (v38 = v1) == 0))
    {
      v51 = v67[11];
      OUTLINED_FUNCTION_238_3();
      sub_1B906D5EC(v52, v53, v54, v55);
      v56 = OUTLINED_FUNCTION_493();
      OUTLINED_FUNCTION_178(v56, v57, v62);
      if (v35)
      {
        sub_1B8D9207C(v2, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_25:
        v60 = v0 + v67[6];
        sub_1B964C290();
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_5_54();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_10_45();
      sub_1B8CD38D8(v58, v59);
      OUTLINED_FUNCTION_709_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_8_49();
      sub_1B95B9E1C();
      if (!v38)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemAlignedTextCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v187 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v7 = OUTLINED_FUNCTION_59_1(v187);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v179 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v181 = v15;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v184);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v190 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v21 = type metadata accessor for Searchfoundation_RFTextProperty(v20);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  v193 = v25;
  OUTLINED_FUNCTION_230();
  v27 = MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_41_25(v27, v28, v29, v30, v31, v32, v33, v34, v174);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_211();
  v37 = OUTLINED_FUNCTION_542();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  v40 = OUTLINED_FUNCTION_183(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44_0();
  v195 = v43;
  OUTLINED_FUNCTION_230();
  v45 = MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_35_17(v45, v46, v47, v48, v49, v50, v51, v52, v175);
  v54 = MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_33_16(v54, v55, v56, v57, v58, v59, v60, v61, v176);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_725();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v64 = OUTLINED_FUNCTION_59_1(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_77_10();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_89_13();
  MEMORY[0x1EEE9AC00](v69);
  v70 = OUTLINED_FUNCTION_101_7();
  v208 = type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection(v70);
  v209 = v6;
  v71 = v208[7];
  v210 = v63;
  v72 = *(v63 + 48);
  OUTLINED_FUNCTION_251_4(v6 + v71, v0);
  OUTLINED_FUNCTION_251_4(v4 + v71, v0 + v72);
  OUTLINED_FUNCTION_75(v0);
  if (v138)
  {
    OUTLINED_FUNCTION_75(v0 + v72);
    if (v138)
    {
      v73 = v21;
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_32:
    v139 = &qword_1EBAB8E00;
    v140 = &qword_1B964D600;
LABEL_36:
    v144 = v0;
LABEL_45:
    sub_1B8D9207C(v144, v139, v140);
    goto LABEL_46;
  }

  sub_1B906D5EC(v0, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_75(v0 + v72);
  if (v138)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v141 = *v2;
  v142 = *v1;
  sub_1B8D5BA08();
  if ((v143 & 1) == 0 || *(v2 + 8) != *(v1 + 8))
  {
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v139 = &qword_1EBAB8DF8;
    v140 = &qword_1B96B9A80;
    goto LABEL_36;
  }

  v73 = v21;
  v150 = *(v21 + 24);
  v151 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v152, v153);
  sub_1B964C850();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v151 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_6:
  v74 = v208[8];
  v75 = *(v210 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v76, v77, v78, v79);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v80, v81, v82, v83);
  v84 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v84, v85, v73);
  if (v138)
  {
    OUTLINED_FUNCTION_57(v207 + v75);
    if (v138)
    {
      sub_1B8D9207C(v207, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_40:
    v139 = &qword_1EBAB8E00;
    v140 = &qword_1B964D600;
LABEL_44:
    v144 = v207;
    goto LABEL_45;
  }

  sub_1B906D5EC(v207, v206, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v207 + v75);
  if (v145)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v146 = *v206;
  v147 = *v205;
  sub_1B8D5BA08();
  if ((v148 & 1) == 0 || (v149 = *(v206 + 8), OUTLINED_FUNCTION_218_3(), !v138))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_224_4();
    v139 = &qword_1EBAB8DF8;
    v140 = &qword_1B96B9A80;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v155, v156);
  OUTLINED_FUNCTION_509();
  v157 = OUTLINED_FUNCTION_552();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_207_7();
  sub_1B8D9207C(v207, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v157 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_11:
  sub_1B8D5B224(*v6, *v4, v86, v87, v88, v89, v90, v91, v177, v179, v181, v184, v187, v190, v193, v195, v197, v199, v201, v203);
  if ((v92 & 1) == 0)
  {
LABEL_46:
    v137 = 0;
    goto LABEL_47;
  }

  v93 = v208[9];
  v94 = *(v210 + 48);
  v95 = v204;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v96, v97, v98, v99);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v100, v101, v102, v103);
  v104 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v104, v105, v73);
  if (v138)
  {
    OUTLINED_FUNCTION_57(v204 + v94);
    if (v138)
    {
      sub_1B8D9207C(v204, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_17;
    }

LABEL_53:
    v139 = &qword_1EBAB8E00;
    v140 = &qword_1B964D600;
LABEL_54:
    v144 = v95;
    goto LABEL_45;
  }

  sub_1B906D5EC(v204, v202, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v204 + v94);
  if (v154)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_0_112();
  OUTLINED_FUNCTION_238_3();
  sub_1B95B9E70();
  v158 = *v202;
  v159 = *v204;
  sub_1B8D5BA08();
  if ((v160 & 1) == 0 || (v161 = *(v202 + 8), OUTLINED_FUNCTION_218_3(), !v138))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_288();
    sub_1B95B9E1C();
    v139 = &qword_1EBAB8DF8;
    v140 = &qword_1B96B9A80;
    v144 = v204;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v164, v165);
  OUTLINED_FUNCTION_509();
  v166 = OUTLINED_FUNCTION_552();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_207_7();
  sub_1B8D9207C(v204, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v166 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_17:
  v106 = v208[10];
  v107 = *(v210 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v108, v109, v110, v111);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v112, v113, v114, v115);
  OUTLINED_FUNCTION_117(v200);
  if (v138)
  {
    OUTLINED_FUNCTION_117(v200 + v107);
    if (v138)
    {
      sub_1B8D9207C(v200, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_22;
    }

LABEL_63:
    v139 = &qword_1EBAB8E00;
    v140 = &qword_1B964D600;
LABEL_67:
    v144 = v200;
    goto LABEL_45;
  }

  sub_1B906D5EC(v200, v196, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_117(v200 + v107);
  if (v162)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08();
  if ((v163 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v138))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_224_4();
    v139 = &qword_1EBAB8DF8;
    v140 = &qword_1B96B9A80;
    goto LABEL_67;
  }

  v168 = *(v73 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v169, v170);
  LOBYTE(v168) = OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_207_7();
  sub_1B8D9207C(v200, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v168 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_22:
  sub_1B8D5B224(v209[1], v4[1], v116, v117, v118, v119, v120, v121, v178, v180, v182, v185, v188, v191, v194, v196, v198, v200, v202, v204);
  if ((v122 & 1) == 0)
  {
    goto LABEL_46;
  }

  v123 = v208[11];
  v124 = *(v186 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v125, v126, v127, v128);
  v95 = v192;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v129, v130, v131, v132);
  v133 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_44(v133, v134);
  if (v138)
  {
    OUTLINED_FUNCTION_48(v192 + v124);
    if (v138)
    {
      sub_1B8D9207C(v192, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_28;
    }

    goto LABEL_73;
  }

  sub_1B906D5EC(v192, v183, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v192 + v124);
  if (v167)
  {
    OUTLINED_FUNCTION_8_49();
    sub_1B95B9E1C();
LABEL_73:
    v139 = &qword_1EBACCC18;
    v140 = &unk_1B96D8D70;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_5_54();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5D124();
  if ((v171 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v138))
  {
    OUTLINED_FUNCTION_14_32();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_224_4();
    v139 = &qword_1EBACC708;
    v140 = &unk_1B96D92F0;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v172, v173);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_12_40();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_207_7();
  sub_1B8D9207C(v192, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v189 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  OUTLINED_FUNCTION_215_4();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v135, v136);
  v137 = sub_1B964C850();
LABEL_47:
  OUTLINED_FUNCTION_264(v137);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95AC5C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD19B0, type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95AC648(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE610, type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95AC6B8()
{
  sub_1B8CD38D8(&qword_1EBACE610, type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95AC75C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1B964C780();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_288();
  __swift_project_value_buffer(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B9650810;
  v10 = v34 + v9 + v7[14];
  *(v34 + v9) = 1;
  *v10 = "text_1";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v12 = sub_1B964C750();
  OUTLINED_FUNCTION_135_0(v12);
  v14 = *(v13 + 104);
  v14(v10, v11, v2);
  v15 = OUTLINED_FUNCTION_53_5(v34 + v9 + v8);
  *v16 = 2;
  v17 = OUTLINED_FUNCTION_34_16(v15, "text_2");
  (v14)(v17);
  v18 = OUTLINED_FUNCTION_53_5(v34 + v9 + 2 * v8);
  *v19 = 3;
  v20 = OUTLINED_FUNCTION_34_16(v18, "text_3");
  (v14)(v20);
  v21 = OUTLINED_FUNCTION_53_5(v34 + v9 + 3 * v8);
  *v22 = 4;
  v23 = OUTLINED_FUNCTION_34_16(v21, "text_4");
  (v14)(v23);
  v24 = OUTLINED_FUNCTION_53_5(v34 + v9 + 4 * v8);
  *v25 = 5;
  v26 = OUTLINED_FUNCTION_34_16(v24, "text_5");
  (v14)(v26);
  v27 = OUTLINED_FUNCTION_53_5(v34 + v9 + 5 * v8);
  *v28 = 6;
  v29 = OUTLINED_FUNCTION_34_16(v27, "text_6");
  (v14)(v29);
  v30 = OUTLINED_FUNCTION_53_5(v34 + v9 + 6 * v8);
  *v31 = 7;
  *v30 = "thumbnail";
  *(v30 + 8) = 9;
  *(v30 + 16) = 2;
  v32 = *MEMORY[0x1E69AADC8];
  (v14)();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemDetailedTextCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B756C();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B75E8();
        break;
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 4:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 5:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B2F0C();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B95ACB34();
        break;
      case 7:
        OUTLINED_FUNCTION_16_36();
        sub_1B95AB400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95ACB34()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(0) + 40);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFSummaryItemDetailedTextCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v81 = v9;
  v10 = OUTLINED_FUNCTION_201();
  v82 = type metadata accessor for Searchfoundation_RFVisualProperty(v10);
  v11 = OUTLINED_FUNCTION_59_1(v82);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  v78 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v16 = OUTLINED_FUNCTION_183(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_65_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_675_0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33_16(v21, v22, v23, v24, v25, v26, v27, v28, v78);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_241_5();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_129_9();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_101_7();
  v33 = type metadata accessor for Searchfoundation_RFTextProperty(v32);
  v34 = OUTLINED_FUNCTION_59_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  v38 = MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_41_25(v38, v39, v40, v41, v42, v43, v44, v45, v79);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_47_16();
  v48 = MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_35_17(v48, v49, v50, v51, v52, v53, v54, v55, v80);
  v57 = MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v57);
  v58 = OUTLINED_FUNCTION_95_8();
  v86 = type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(v58);
  sub_1B906D5EC(v1 + v86[5], v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_90(v0);
  if (v59)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v60 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v61, v62);
    OUTLINED_FUNCTION_709_0();
    sub_1B964C740();
    v60 = v2;
    if (v2)
    {
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
  }

  sub_1B906D5EC(v1 + v86[6], v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_90(v3);
  if (v59)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v63, v64);
    v2 = v60;
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v60)
    {
      goto LABEL_33;
    }
  }

  sub_1B906D5EC(v1 + v86[7], v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_90(v4);
  if (v59)
  {
    sub_1B8D9207C(v4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v65, v66);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_213_4();
    sub_1B964C740();
    v60 = v2;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v2)
    {
      goto LABEL_33;
    }
  }

  sub_1B906D5EC(v1 + v86[8], v85, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_90(v85);
  v67 = v84;
  if (v59)
  {
    sub_1B8D9207C(v85, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v68, v69);
    OUTLINED_FUNCTION_257_0();
    v2 = v60;
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v60)
    {
      goto LABEL_33;
    }

    v67 = v84;
  }

  sub_1B906D5EC(v1 + v86[9], v83, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_90(v83);
  if (v59)
  {
    sub_1B8D9207C(v83, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v70, v71);
    OUTLINED_FUNCTION_683_0();
    OUTLINED_FUNCTION_213_4();
    sub_1B964C740();
    v60 = v2;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v2)
    {
      goto LABEL_33;
    }
  }

  sub_1B906D5EC(v1 + v86[10], v67, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_90(v67);
  if (v59)
  {
    sub_1B8D9207C(v67, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    OUTLINED_FUNCTION_242_3();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v72, v73);
    OUTLINED_FUNCTION_106_9();
    OUTLINED_FUNCTION_213_4();
    sub_1B964C740();
    v60 = v2;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v2)
    {
      goto LABEL_33;
    }
  }

  sub_1B906D5EC(v1 + v86[11], v81, &qword_1EBACC708, &unk_1B96D92F0);
  v74 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v74, v75, v82);
  if (v59)
  {
    sub_1B8D9207C(v81, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_32:
    sub_1B964C290();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_5_54();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_10_45();
  sub_1B8CD38D8(v76, v77);
  OUTLINED_FUNCTION_106_9();
  sub_1B964C740();
  OUTLINED_FUNCTION_8_49();
  sub_1B95B9E1C();
  if (!v60)
  {
    goto LABEL_32;
  }

LABEL_33:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemDetailedTextCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v190 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v7 = OUTLINED_FUNCTION_59_1(v190);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v185 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v188 = v15;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v189);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v191 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v21 = type metadata accessor for Searchfoundation_RFTextProperty(v20);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  v29 = MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_35_17(v29, v30, v31, v32, v33, v34, v35, v36, v185);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_447_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v39 = OUTLINED_FUNCTION_183(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44_0();
  v192 = v42;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_682();
  v194 = v44;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_674_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_47_16();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_725();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v50 = OUTLINED_FUNCTION_59_1(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44_0();
  v193 = v53;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_682();
  v195 = v55;
  OUTLINED_FUNCTION_230();
  v57 = MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_41_25(v57, v58, v59, v60, v61, v62, v63, v64, v186);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_675_0();
  v67 = MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_33_16(v67, v68, v69, v70, v71, v72, v73, v74, v187);
  MEMORY[0x1EEE9AC00](v75);
  v76 = OUTLINED_FUNCTION_101_7();
  v202 = v49;
  v203 = type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection(v76);
  v77 = v203[5];
  v78 = *(v49 + 48);
  OUTLINED_FUNCTION_229_3(v6 + v77, v0);
  OUTLINED_FUNCTION_229_3(v4 + v77, v0 + v78);
  OUTLINED_FUNCTION_32(v0);
  if (v145)
  {
    OUTLINED_FUNCTION_32(v0 + v78);
    if (v145)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_40:
    v146 = &qword_1EBAB8E00;
    v147 = &qword_1B964D600;
LABEL_44:
    v151 = v0;
LABEL_79:
    sub_1B8D9207C(v151, v146, v147);
LABEL_80:
    v144 = 0;
    goto LABEL_81;
  }

  sub_1B906D5EC(v0, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v0 + v78);
  if (v145)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v148 = *v2;
  v149 = *v1;
  sub_1B8D5BA08();
  if ((v150 & 1) == 0 || *(v2 + 8) != *(v1 + 8))
  {
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v146 = &qword_1EBAB8DF8;
    v147 = &qword_1B96B9A80;
    goto LABEL_44;
  }

  v157 = *(v21 + 24);
  v158 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v159, v160);
  sub_1B964C850();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v158 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_6:
  v79 = v203[6];
  v80 = *(v202 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v81, v82, v83, v84);
  v85 = v201;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v86, v87, v88, v89);
  OUTLINED_FUNCTION_32(v201);
  if (v145)
  {
    OUTLINED_FUNCTION_32(v201 + v80);
    if (!v145)
    {
      goto LABEL_74;
    }

    sub_1B8D9207C(v201, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B906D5EC(v201, v200, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_32(v201 + v80);
    if (v152)
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v153 & 1) == 0)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v145)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_215_4();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v154, v155);
    v156 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_128();
    sub_1B95B9E1C();
    sub_1B8D9207C(v201, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v156 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v90 = v203[7];
  v91 = *(v202 + 48);
  v85 = v199;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v92, v93, v94, v95);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v96, v97, v98, v99);
  OUTLINED_FUNCTION_32(v199);
  if (v145)
  {
    OUTLINED_FUNCTION_32(v199 + v91);
    if (!v145)
    {
      goto LABEL_74;
    }

    sub_1B8D9207C(v199, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B906D5EC(v199, v198, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_32(v199 + v91);
    if (v161)
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v162 & 1) == 0)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v145)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_215_4();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v163, v164);
    v165 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_128();
    sub_1B95B9E1C();
    sub_1B8D9207C(v199, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v165 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v100 = v203[8];
  v101 = *(v202 + 48);
  v85 = v197;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v102, v103, v104, v105);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v106, v107, v108, v109);
  OUTLINED_FUNCTION_32(v197);
  if (v145)
  {
    OUTLINED_FUNCTION_32(v197 + v101);
    if (!v145)
    {
      goto LABEL_74;
    }

    sub_1B8D9207C(v197, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B906D5EC(v197, v196, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_32(v197 + v101);
    if (v166)
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v167 & 1) == 0)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v145)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_215_4();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v168, v169);
    v170 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_128();
    sub_1B95B9E1C();
    sub_1B8D9207C(v197, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v170 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v110 = v203[9];
  v111 = *(v202 + 48);
  v85 = v195;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v112, v113, v114, v115);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v116, v117, v118, v119);
  OUTLINED_FUNCTION_32(v195);
  if (v145)
  {
    OUTLINED_FUNCTION_32(v195 + v111);
    if (!v145)
    {
      goto LABEL_74;
    }

    sub_1B8D9207C(v195, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B906D5EC(v195, v194, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_32(v195 + v111);
    if (v171)
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v172 & 1) == 0)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_52_13();
    if (!v145)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_215_4();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v173, v174);
    v175 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_128();
    sub_1B95B9E1C();
    sub_1B8D9207C(v195, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v175 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v120 = v203[10];
  v121 = *(v202 + 48);
  v85 = v193;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v122, v123, v124, v125);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v126, v127, v128, v129);
  OUTLINED_FUNCTION_32(v193);
  if (v145)
  {
    OUTLINED_FUNCTION_32(v193 + v121);
    if (v145)
    {
      sub_1B8D9207C(v193, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_31;
    }

LABEL_74:
    v146 = &qword_1EBAB8E00;
    v147 = &qword_1B964D600;
LABEL_78:
    v151 = v85;
    goto LABEL_79;
  }

  sub_1B906D5EC(v193, v192, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v193 + v121);
  if (v176)
  {
LABEL_73:
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08();
  if ((v177 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v145))
  {
LABEL_77:
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_182();
    sub_1B95B9E1C();
    v146 = &qword_1EBAB8DF8;
    v147 = &qword_1B96B9A80;
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_215_4();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v180, v181);
  v182 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_128();
  sub_1B95B9E1C();
  sub_1B8D9207C(v193, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v182 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_31:
  v130 = v203[11];
  v131 = *(v189 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v132, v133, v134, v135);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v136, v137, v138, v139);
  v140 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_44(v140, v141);
  if (v145)
  {
    OUTLINED_FUNCTION_48(v191 + v131);
    if (v145)
    {
      sub_1B8D9207C(v191, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_36;
    }

LABEL_85:
    v146 = &qword_1EBACCC18;
    v147 = &unk_1B96D8D70;
LABEL_89:
    v151 = v191;
    goto LABEL_79;
  }

  sub_1B906D5EC(v191, v188, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v191 + v131);
  if (v178)
  {
    OUTLINED_FUNCTION_8_49();
    sub_1B95B9E1C();
    goto LABEL_85;
  }

  OUTLINED_FUNCTION_5_54();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5D124();
  if ((v179 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v145))
  {
    OUTLINED_FUNCTION_14_32();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_224_4();
    v146 = &qword_1EBACC708;
    v147 = &unk_1B96D92F0;
    goto LABEL_89;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v183, v184);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_12_40();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_207_7();
  sub_1B8D9207C(v191, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v190 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_36:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v142, v143);
  OUTLINED_FUNCTION_106_9();
  OUTLINED_FUNCTION_217_3();
  v144 = sub_1B964C850();
LABEL_81:
  OUTLINED_FUNCTION_264(v144);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95AE0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD19A8, type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95AE130(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE5F0, type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95AE1A0()
{
  sub_1B8CD38D8(&qword_1EBACE5F0, type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95AE238()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD17B0);
  __swift_project_value_buffer(v0, qword_1EBAD17B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B9656CE0;
  v4 = v27 + v3;
  v5 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v5 = "text_1";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "text_2";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "text_3";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "thumbnail_1";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "thumbnail_2";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "text_4";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "text_5";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "text_6";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "text_7";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "text_8";
  *(v25 + 1) = 6;
  v25[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B95AE5F4()
{
  OUTLINED_FUNCTION_99_14();
  result = sub_1B95AE6A4();
  qword_1EBAD17C8 = result;
  return result;
}

uint64_t sub_1B95AE6A4()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text1;
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text3, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail1;
  v4 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail2, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text4, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text5, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text6, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text7, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text8, 1, 1, v2);
  return v0;
}

uint64_t sub_1B95AE7FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - v8;
  v10 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text1;
  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text2, 1, 1, v11);
  v13 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text3;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text3, 1, 1, v11);
  v14 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail1;
  v36 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail1;
  v15 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v38 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail2;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail2, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text4;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text4, 1, 1, v11);
  v39 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text5;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text5, 1, 1, v11);
  v40 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text6;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text6, 1, 1, v11);
  v41 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text7;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text7, 1, 1, v11);
  v42 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text8;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text8, 1, 1, v11);
  v17 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text1;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v17, v9, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_beginAccess();
  sub_1B906CF4C(v9, v1 + v10, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text2;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v18, v9, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_beginAccess();
  sub_1B906CF4C(v9, v1 + v12, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text3;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v19, v9, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_beginAccess();
  sub_1B906CF4C(v9, v1 + v13, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail1;
  swift_beginAccess();
  v21 = v37;
  sub_1B906D5EC(a1 + v20, v37, &qword_1EBACC708, &unk_1B96D92F0);
  v22 = v36;
  swift_beginAccess();
  sub_1B906CF4C(v21, v1 + v22, &qword_1EBACC708, &unk_1B96D92F0);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail2;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v23, v21, &qword_1EBACC708, &unk_1B96D92F0);
  v24 = v38;
  swift_beginAccess();
  sub_1B906CF4C(v21, v1 + v24, &qword_1EBACC708, &unk_1B96D92F0);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text4;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v25, v9, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_beginAccess();
  sub_1B906CF4C(v9, v1 + v16, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text5;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v26, v9, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v27 = v39;
  swift_beginAccess();
  sub_1B906CF4C(v9, v1 + v27, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text6;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v28, v9, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v29 = v40;
  swift_beginAccess();
  sub_1B906CF4C(v9, v1 + v29, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text7;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v30, v9, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v31 = v41;
  swift_beginAccess();
  sub_1B906CF4C(v9, v1 + v31, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text8;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v32, v9, &qword_1EBAB8DF8, &qword_1B96B9A80);

  v33 = v42;
  swift_beginAccess();
  sub_1B906CF4C(v9, v1 + v33, &qword_1EBAB8DF8, &qword_1B96B9A80);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B95AEE60()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail1, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail2, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text4, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text5, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text6, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text7, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text8, &qword_1EBAB8DF8, &qword_1B96B9A80);
  return v0;
}

uint64_t sub_1B95AEFA0()
{
  v0 = sub_1B95AEE60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B95AF04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text1;
        goto LABEL_14;
      case 2:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text2;
        goto LABEL_14;
      case 3:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text3;
        goto LABEL_14;
      case 4:
        sub_1B95AF208();
        continue;
      case 5:
        sub_1B95AF2E4();
        continue;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text4;
        goto LABEL_14;
      case 7:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text5;
        goto LABEL_14;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text6;
        goto LABEL_14;
      case 9:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text7;
        goto LABEL_14;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text8;
LABEL_14:
        sub_1B95AF3C0(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95AF208()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD38D8(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95AF2E4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD38D8(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95AF3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v6, v7);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95AF4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v101 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v94 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v96 = v82 - v8;
  v9 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v90 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v85 = v82 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v87 = v82 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v89 = v82 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v91 = v82 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v97 = v82 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v82 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v82 - v31;
  v33 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v82[1] = v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v82[2] = v82 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v84 = v82 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v86 = v82 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v88 = v82 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v95 = v82 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v47);
  v48 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text1;
  swift_beginAccess();
  v100 = a1;
  sub_1B906D5EC(a1 + v48, v32, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    v92 = v9;
    sub_1B8D9207C(v32, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v49 = v99;
  }

  else
  {
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    v50 = v99;
    sub_1B964C740();
    v49 = v50;
    if (v50)
    {
      return sub_1B95B9E1C();
    }

    v92 = v9;
    sub_1B95B9E1C();
  }

  v51 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text2;
  v52 = v100;
  swift_beginAccess();
  sub_1B906D5EC(v52 + v51, v30, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v30, 1, v33) == 1)
  {
    sub_1B8D9207C(v30, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v53 = v33;
  }

  else
  {
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    if (v49)
    {
      return sub_1B95B9E1C();
    }

    v53 = v33;
    sub_1B95B9E1C();
  }

  v54 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text3;
  v55 = v100;
  swift_beginAccess();
  v56 = v55 + v54;
  v57 = v97;
  sub_1B906D5EC(v56, v97, &qword_1EBAB8DF8, &qword_1B96B9A80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v53);
  v59 = v92;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v57, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    if (v49)
    {
      return sub_1B95B9E1C();
    }

    sub_1B95B9E1C();
  }

  v60 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail1;
  swift_beginAccess();
  v61 = v55 + v60;
  v62 = v96;
  sub_1B906D5EC(v61, v96, &qword_1EBACC708, &unk_1B96D92F0);
  if (__swift_getEnumTagSinglePayload(v62, 1, v59) == 1)
  {
    sub_1B8D9207C(v62, &qword_1EBACC708, &unk_1B96D92F0);
    goto LABEL_19;
  }

  sub_1B95B9E70();
  sub_1B8CD38D8(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  sub_1B964C740();
  if (v49)
  {
    return sub_1B95B9E1C();
  }

  sub_1B95B9E1C();
LABEL_19:
  v64 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail2;
  swift_beginAccess();
  v65 = v55 + v64;
  v66 = v94;
  sub_1B906D5EC(v65, v94, &qword_1EBACC708, &unk_1B96D92F0);
  if (__swift_getEnumTagSinglePayload(v66, 1, v59) == 1)
  {
    sub_1B8D9207C(v66, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
    sub_1B964C740();
    result = sub_1B95B9E1C();
    if (v49)
    {
      return result;
    }
  }

  v67 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text4;
  swift_beginAccess();
  v68 = v55 + v67;
  v69 = v91;
  sub_1B906D5EC(v68, v91, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v69, 1, v53) == 1)
  {
    sub_1B8D9207C(v69, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B95B9E1C();
    if (v49)
    {
      return result;
    }
  }

  v70 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text5;
  swift_beginAccess();
  v71 = v55 + v70;
  v72 = v89;
  sub_1B906D5EC(v71, v89, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v72, 1, v53) == 1)
  {
    sub_1B8D9207C(v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B95B9E1C();
    if (v49)
    {
      return result;
    }
  }

  v73 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text6;
  swift_beginAccess();
  v74 = v55 + v73;
  v75 = v87;
  sub_1B906D5EC(v74, v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v75, 1, v53) == 1)
  {
    sub_1B8D9207C(v75, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B95B9E1C();
    if (v49)
    {
      return result;
    }
  }

  v76 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text7;
  swift_beginAccess();
  v77 = v55 + v76;
  v78 = v85;
  sub_1B906D5EC(v77, v85, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v78, 1, v53) == 1)
  {
    sub_1B8D9207C(v78, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_34:
    v79 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text8;
    swift_beginAccess();
    v80 = v55 + v79;
    v81 = v83;
    sub_1B906D5EC(v80, v83, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v81, 1, v53) == 1)
    {
      return sub_1B8D9207C(v81, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    return sub_1B95B9E1C();
  }

  sub_1B95B9E70();
  sub_1B8CD38D8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  sub_1B964C740();
  result = sub_1B95B9E1C();
  if (!v49)
  {
    goto LABEL_34;
  }

  return result;
}

BOOL sub_1B95B0450(uint64_t a1, uint64_t a2)
{
  v289 = a2;
  v278 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v3 = *(*(v278 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v278);
  v266 = &v248 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v270 = &v248 - v6;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  v7 = *(*(v277 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v277);
  v271 = &v248 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v275 = &v248 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v269 = &v248 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v272 = &v248 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v273 = &v248 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v276 = &v248 - v19;
  v290 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v20 = *(*(v290 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v290);
  v248 = &v248 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v251 = &v248 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v255 = &v248 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v257 = &v248 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v262 = &v248 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v274 = &v248 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v280 = &v248 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v284 = &v248 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v252 = &v248 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v258 = &v248 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v259 = &v248 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v263 = &v248 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v267 = &v248 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v281 = &v248 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v285 = &v248 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v248 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v249 = (&v248 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = MEMORY[0x1EEE9AC00](v56);
  v250 = &v248 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v253 = (&v248 - v61);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v254 = &v248 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v256 = &v248 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v261 = &v248 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v260 = &v248 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v264 = &v248 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v265 = &v248 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v268 = &v248 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v279 = &v248 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v282 = &v248 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v283 = &v248 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v287 = &v248 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v288 = &v248 - v85;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v248 - v86;
  v88 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text1;
  swift_beginAccess();
  v89 = a1;
  sub_1B906D5EC(a1 + v88, v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v90 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text1;
  v91 = v289;
  swift_beginAccess();
  v286 = v36;
  v92 = *(v36 + 48);
  sub_1B906D5EC(v87, v53, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v93 = v91 + v90;
  v94 = v290;
  sub_1B906D5EC(v93, &v53[v92], &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v53, 1, v94) == 1)
  {

    sub_1B8D9207C(v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(&v53[v92], 1, v94) == 1)
    {
      sub_1B8D9207C(v53, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_4;
    }

LABEL_34:
    v169 = &qword_1EBAB8E00;
    v170 = &qword_1B964D600;
    v171 = v53;
LABEL_39:
    sub_1B8D9207C(v171, v169, v170);
LABEL_40:

LABEL_41:

    return 0;
  }

  v168 = v288;
  sub_1B906D5EC(v53, v288, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(&v53[v92], 1, v94) == 1)
  {

    sub_1B8D9207C(v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    goto LABEL_34;
  }

  v172 = v284;
  sub_1B95B9E70();
  v173 = *v168;
  v174 = *v172;

  sub_1B8D5BA08();
  if ((v175 & 1) == 0 || *(v168 + 8) != v172[8])
  {
    sub_1B8D9207C(v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v171 = v53;
LABEL_38:
    v169 = &qword_1EBAB8DF8;
    v170 = &qword_1B96B9A80;
    goto LABEL_39;
  }

  v182 = *(v94 + 24);
  sub_1B964C2B0();
  sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v183 = sub_1B964C850();
  sub_1B8D9207C(v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v53, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v183 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_4:
  v95 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text2;
  swift_beginAccess();
  v96 = v287;
  sub_1B906D5EC(v89 + v95, v287, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v97 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text2;
  swift_beginAccess();
  v98 = v285;
  v99 = v286;
  v100 = *(v286 + 48);
  sub_1B906D5EC(v96, v285, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v91 + v97, v98 + v100, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v101 = v290;
  if (__swift_getEnumTagSinglePayload(v98, 1, v290) == 1)
  {
    sub_1B8D9207C(v96, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v98 + v100, 1, v101) == 1)
    {
      v102 = v89;
      v103 = v98;
      v104 = v101;
      sub_1B8D9207C(v103, &qword_1EBAB8DF8, &qword_1B96B9A80);
      v105 = v99;
      v106 = v289;
      goto LABEL_7;
    }

LABEL_45:
    sub_1B8D9207C(v98, &qword_1EBAB8E00, &qword_1B964D600);

    goto LABEL_41;
  }

  v176 = v283;
  sub_1B906D5EC(v98, v283, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v98 + v100, 1, v101) == 1)
  {
    sub_1B8D9207C(v287, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    goto LABEL_45;
  }

  v102 = v89;
  v177 = v280;
  sub_1B95B9E70();
  v178 = *v176;
  v179 = *v177;
  sub_1B8D5BA08();
  v180 = v287;
  if ((v181 & 1) == 0 || *(v176 + 8) != v177[8])
  {
    sub_1B8D9207C(v287, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    sub_1B8D9207C(v98, &qword_1EBAB8DF8, &qword_1B96B9A80);
    goto LABEL_40;
  }

  v191 = v98;
  v104 = v101;
  v192 = *(v101 + 24);
  sub_1B964C2B0();
  sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v193 = sub_1B964C850();
  sub_1B8D9207C(v180, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  v105 = v286;
  sub_1B8D9207C(v191, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v106 = v289;
  if ((v193 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_7:
  v107 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text3;
  swift_beginAccess();
  v108 = &qword_1B96B9A80;
  v288 = v102;
  v109 = v282;
  sub_1B906D5EC(v102 + v107, v282, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v110 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text3;
  swift_beginAccess();
  v111 = *(v105 + 48);
  v112 = v281;
  sub_1B906D5EC(v109, v281, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v106 + v110, v112 + v111, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v113 = v104;
  if (__swift_getEnumTagSinglePayload(v112, 1, v104) == 1)
  {
    sub_1B8D9207C(v109, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v112 + v111, 1, v104) == 1)
    {
      sub_1B8D9207C(v112, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_10;
    }

LABEL_53:
    v169 = &qword_1EBAB8E00;
    v170 = &qword_1B964D600;
LABEL_62:
    v171 = v112;
    goto LABEL_39;
  }

  v184 = v279;
  sub_1B906D5EC(v112, v279, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v112 + v111, 1, v113) == 1)
  {
    sub_1B8D9207C(v282, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    goto LABEL_53;
  }

  v185 = v274;
  sub_1B95B9E70();
  v186 = *v184;
  v187 = *v185;
  sub_1B8D5BA08();
  v188 = v282;
  if ((v189 & 1) == 0 || *(v184 + 8) != v185[8])
  {
    v190 = &qword_1EBAB8DF8;
    sub_1B8D9207C(v282, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v171 = v281;
LABEL_75:
    v169 = v190;
    v170 = v108;
    goto LABEL_39;
  }

  v199 = *(v113 + 24);
  sub_1B964C2B0();
  sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v200 = sub_1B964C850();
  sub_1B8D9207C(v188, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v281, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v200 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_10:
  v114 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail1;
  v115 = v288;
  swift_beginAccess();
  v108 = &unk_1B96D92F0;
  v116 = v115 + v114;
  v117 = v276;
  sub_1B906D5EC(v116, v276, &qword_1EBACC708, &unk_1B96D92F0);
  v118 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail1;
  swift_beginAccess();
  v119 = *(v277 + 48);
  v112 = v275;
  sub_1B906D5EC(v117, v275, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B906D5EC(v106 + v118, v112 + v119, &qword_1EBACC708, &unk_1B96D92F0);
  v120 = v278;
  if (__swift_getEnumTagSinglePayload(v112, 1, v278) == 1)
  {
    sub_1B8D9207C(v117, &qword_1EBACC708, &unk_1B96D92F0);
    if (__swift_getEnumTagSinglePayload(v112 + v119, 1, v120) == 1)
    {
      sub_1B8D9207C(v112, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_13;
    }

    goto LABEL_61;
  }

  v194 = v273;
  sub_1B906D5EC(v112, v273, &qword_1EBACC708, &unk_1B96D92F0);
  if (__swift_getEnumTagSinglePayload(v112 + v119, 1, v120) == 1)
  {
    sub_1B8D9207C(v117, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B95B9E1C();
LABEL_61:
    v169 = &qword_1EBACCC18;
    v170 = &unk_1B96D8D70;
    goto LABEL_62;
  }

  v195 = v270;
  sub_1B95B9E70();
  v196 = *v194;
  v197 = *v195;
  sub_1B8D5D124();
  if ((v198 & 1) == 0 || *(v194 + 8) != v195[8])
  {
    v190 = &qword_1EBACC708;
    sub_1B8D9207C(v276, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v171 = v112;
    goto LABEL_75;
  }

  v206 = *(v120 + 24);
  sub_1B964C2B0();
  sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v207 = sub_1B964C850();
  sub_1B8D9207C(v276, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v112, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v207 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_13:
  v121 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail2;
  v122 = v288;
  swift_beginAccess();
  v108 = &unk_1B96D92F0;
  v123 = v272;
  sub_1B906D5EC(v122 + v121, v272, &qword_1EBACC708, &unk_1B96D92F0);
  v124 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__thumbnail2;
  swift_beginAccess();
  v125 = *(v277 + 48);
  v126 = v271;
  sub_1B906D5EC(v123, v271, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B906D5EC(v106 + v124, v126 + v125, &qword_1EBACC708, &unk_1B96D92F0);
  v127 = v278;
  if (__swift_getEnumTagSinglePayload(v126, 1, v278) == 1)
  {
    sub_1B8D9207C(v123, &qword_1EBACC708, &unk_1B96D92F0);
    if (__swift_getEnumTagSinglePayload(v126 + v125, 1, v127) == 1)
    {
      sub_1B8D9207C(v126, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_16;
    }

LABEL_70:
    v169 = &qword_1EBACCC18;
    v170 = &unk_1B96D8D70;
LABEL_71:
    v171 = v126;
    goto LABEL_39;
  }

  v201 = v269;
  sub_1B906D5EC(v126, v269, &qword_1EBACC708, &unk_1B96D92F0);
  if (__swift_getEnumTagSinglePayload(v126 + v125, 1, v127) == 1)
  {
    sub_1B8D9207C(v272, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B95B9E1C();
    goto LABEL_70;
  }

  v202 = v266;
  sub_1B95B9E70();
  v203 = *v201;
  v204 = *v202;
  sub_1B8D5D124();
  if ((v205 & 1) == 0 || *(v201 + 8) != v202[8])
  {
    v190 = &qword_1EBACC708;
    sub_1B8D9207C(v272, &qword_1EBACC708, &unk_1B96D92F0);
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v171 = v126;
    goto LABEL_75;
  }

  v213 = *(v127 + 24);
  sub_1B964C2B0();
  sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v214 = sub_1B964C850();
  sub_1B8D9207C(v272, &qword_1EBACC708, &unk_1B96D92F0);
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v126, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v214 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_16:
  v128 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text4;
  v129 = v288;
  swift_beginAccess();
  v130 = v268;
  sub_1B906D5EC(v129 + v128, v268, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v131 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text4;
  swift_beginAccess();
  v132 = *(v105 + 48);
  v133 = v267;
  sub_1B906D5EC(v130, v267, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v106 + v131, v133 + v132, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v134 = v290;
  if (__swift_getEnumTagSinglePayload(v133, 1, v290) == 1)
  {
    sub_1B8D9207C(v130, &qword_1EBAB8DF8, &qword_1B96B9A80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v133 + v132, 1, v134);
    v136 = v288;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v133, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_19;
    }

LABEL_80:
    v169 = &qword_1EBAB8E00;
    v170 = &qword_1B964D600;
    v171 = v133;
    goto LABEL_39;
  }

  v208 = v265;
  sub_1B906D5EC(v133, v265, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v133 + v132, 1, v134) == 1)
  {
    sub_1B8D9207C(v130, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    goto LABEL_80;
  }

  v209 = v262;
  sub_1B95B9E70();
  v210 = *v208;
  v211 = *v209;
  sub_1B8D5BA08();
  if ((v212 & 1) == 0 || *(v208 + 8) != v209[8])
  {
    sub_1B8D9207C(v268, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v171 = v133;
    goto LABEL_38;
  }

  v220 = *(v134 + 24);
  sub_1B964C2B0();
  sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v221 = sub_1B964C850();
  sub_1B8D9207C(v268, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B95B9E1C();
  v136 = v288;
  sub_1B95B9E1C();
  sub_1B8D9207C(v133, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v221 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_19:
  v137 = v136;
  v138 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text5;
  swift_beginAccess();
  v108 = &qword_1B96B9A80;
  v139 = v264;
  sub_1B906D5EC(v137 + v138, v264, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v140 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text5;
  swift_beginAccess();
  v141 = *(v105 + 48);
  v126 = v263;
  sub_1B906D5EC(v139, v263, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v106 + v140, v126 + v141, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v142 = v290;
  if (__swift_getEnumTagSinglePayload(v126, 1, v290) == 1)
  {
    sub_1B8D9207C(v139, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v126 + v141, 1, v142) == 1)
    {
      v143 = v142;
      sub_1B8D9207C(v126, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_22;
    }

    goto LABEL_88;
  }

  v215 = v260;
  sub_1B906D5EC(v126, v260, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v126 + v141, 1, v142) == 1)
  {
    sub_1B8D9207C(v264, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
LABEL_88:
    v169 = &qword_1EBAB8E00;
    v170 = &qword_1B964D600;
    goto LABEL_71;
  }

  v216 = v257;
  sub_1B95B9E70();
  v217 = *v215;
  v218 = *v216;
  sub_1B8D5BA08();
  if ((v219 & 1) == 0 || *(v215 + 8) != v216[8])
  {
    v190 = &qword_1EBAB8DF8;
    sub_1B8D9207C(v264, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v171 = v263;
    goto LABEL_75;
  }

  v143 = v142;
  v227 = *(v142 + 24);
  sub_1B964C2B0();
  sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v228 = sub_1B964C850();
  sub_1B8D9207C(v264, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v263, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v228 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  v144 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text6;
  v145 = v288;
  swift_beginAccess();
  v146 = v145 + v144;
  v147 = v261;
  sub_1B906D5EC(v146, v261, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v148 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text6;
  swift_beginAccess();
  v149 = *(v105 + 48);
  v150 = v259;
  sub_1B906D5EC(v147, v259, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v106 + v148, v150 + v149, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v150, 1, v143) == 1)
  {
    sub_1B8D9207C(v261, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v151 = __swift_getEnumTagSinglePayload(v150 + v149, 1, v143);
    v152 = v288;
    if (v151 == 1)
    {
      sub_1B8D9207C(v150, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_25;
    }

    goto LABEL_96;
  }

  v152 = v288;
  v222 = v256;
  sub_1B906D5EC(v150, v256, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v150 + v149, 1, v143) == 1)
  {
    sub_1B8D9207C(v261, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
LABEL_96:
    v169 = &qword_1EBAB8E00;
    v170 = &qword_1B964D600;
    v171 = v150;
    goto LABEL_39;
  }

  v223 = v255;
  sub_1B95B9E70();
  v224 = *v222;
  v225 = *v223;
  sub_1B8D5BA08();
  if ((v226 & 1) == 0 || *(v256 + 8) != v255[8])
  {
    sub_1B8D9207C(v261, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v171 = v259;
    v169 = &qword_1EBAB8DF8;
    v170 = &qword_1B96B9A80;
    goto LABEL_39;
  }

  v234 = *(v143 + 24);
  sub_1B964C2B0();
  sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v235 = sub_1B964C850();
  sub_1B8D9207C(v261, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v259, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v235 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_25:
  v153 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text7;
  swift_beginAccess();
  v154 = v152;
  v155 = v254;
  sub_1B906D5EC(v152 + v153, v254, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v156 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text7;
  swift_beginAccess();
  v157 = *(v286 + 48);
  v158 = v155;
  v159 = v258;
  sub_1B906D5EC(v158, v258, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v160 = v106;
  sub_1B906D5EC(v106 + v156, v159 + v157, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v159, 1, v143) != 1)
  {
    v229 = v258;
    sub_1B906D5EC(v258, v253, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v229 + v157, 1, v143) != 1)
    {
      v230 = v251;
      sub_1B95B9E70();
      v231 = *v253;
      v232 = *v230;
      sub_1B8D5BA08();
      if ((v233 & 1) != 0 && *(v253 + 8) == v251[8])
      {
        v244 = *(v143 + 24);
        sub_1B964C2B0();
        sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
        v245 = sub_1B964C850();
        sub_1B8D9207C(v254, &qword_1EBAB8DF8, &qword_1B96B9A80);
        sub_1B95B9E1C();
        sub_1B95B9E1C();
        sub_1B8D9207C(v258, &qword_1EBAB8DF8, &qword_1B96B9A80);
        if (v245)
        {
          goto LABEL_28;
        }

        goto LABEL_40;
      }

      sub_1B8D9207C(v254, &qword_1EBAB8DF8, &qword_1B96B9A80);
      sub_1B95B9E1C();
      sub_1B95B9E1C();
      v171 = v258;
      v169 = &qword_1EBAB8DF8;
      v170 = &qword_1B96B9A80;
      goto LABEL_39;
    }

    sub_1B8D9207C(v254, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    goto LABEL_104;
  }

  sub_1B8D9207C(v254, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v258 + v157, 1, v143) != 1)
  {
LABEL_104:
    v169 = &qword_1EBAB8E00;
    v170 = &qword_1B964D600;
    v171 = v258;
    goto LABEL_39;
  }

  sub_1B8D9207C(v258, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_28:
  v161 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text8;
  swift_beginAccess();
  v162 = v250;
  sub_1B906D5EC(v154 + v161, v250, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v163 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_RFSummaryItemPairCardSectionP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__text8;
  swift_beginAccess();
  v164 = *(v286 + 48);
  v165 = v162;
  v166 = v252;
  sub_1B906D5EC(v165, v252, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v160 + v163, v166 + v164, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v166, 1, v143) == 1)
  {

    sub_1B8D9207C(v250, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if (__swift_getEnumTagSinglePayload(v252 + v164, 1, v143) == 1)
    {
      sub_1B8D9207C(v252, &qword_1EBAB8DF8, &qword_1B96B9A80);
      return 1;
    }

    goto LABEL_112;
  }

  v236 = v252;
  sub_1B906D5EC(v252, v249, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if (__swift_getEnumTagSinglePayload(v236 + v164, 1, v143) == 1)
  {

    sub_1B8D9207C(v250, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
LABEL_112:
    v237 = &qword_1EBAB8E00;
    v238 = &qword_1B964D600;
    v239 = v252;
LABEL_116:
    sub_1B8D9207C(v239, v237, v238);
    return 0;
  }

  v240 = v248;
  sub_1B95B9E70();
  v241 = *v249;
  v242 = *v240;
  sub_1B8D5BA08();
  if ((v243 & 1) == 0 || *(v249 + 8) != v248[8])
  {

    sub_1B8D9207C(v250, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v239 = v252;
    v237 = &qword_1EBAB8DF8;
    v238 = &qword_1B96B9A80;
    goto LABEL_116;
  }

  v246 = *(v143 + 24);
  sub_1B964C2B0();
  sub_1B8CD38D8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v247 = sub_1B964C850();

  sub_1B8D9207C(v250, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v252, &qword_1EBAB8DF8, &qword_1B96B9A80);
  return (v247 & 1) != 0;
}

uint64_t sub_1B95B298C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD19A0, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B2A0C(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE5E8, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B2A7C()
{
  sub_1B8CD38D8(&qword_1EBACE5E8, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B2B14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD17D0);
  __swift_project_value_buffer(v0, qword_1EBAD17D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_on";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_1";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_2";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_3";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "text_4";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "thumbnail";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v19 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemSwitchV2CardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B75E8();
        break;
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 4:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 5:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B2F0C();
        break;
      case 6:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5E20();
        break;
      default:
        continue;
    }
  }
}

void sub_1B95B2F0C()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 36);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_RFSummaryItemSwitchV2CardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v60 = v8;
  v9 = OUTLINED_FUNCTION_201();
  v61 = type metadata accessor for Searchfoundation_RFVisualProperty(v9);
  v10 = OUTLINED_FUNCTION_59_1(v61);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_65_13();
  v18 = MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33_16(v18, v19, v20, v21, v22, v23, v24, v25, v57);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_211();
  v63 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v28 = OUTLINED_FUNCTION_59_1(v63);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_74_15();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_675_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_177_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1247();
  if (*v0 != 1 || (sub_1B964C670(), !v1))
  {
    v62 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
    sub_1B906D5EC(&v0[v62[6]], v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v34 = OUTLINED_FUNCTION_602();
    OUTLINED_FUNCTION_178(v34, v35, v63);
    if (v36)
    {
      sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v37, v38);
      OUTLINED_FUNCTION_683_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_25;
      }
    }

    v39 = OUTLINED_FUNCTION_115(v62[7]);
    sub_1B906D5EC(v39, v40, v41, v42);
    v43 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v43, v44, v63);
    if (v36)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v45, v46);
      OUTLINED_FUNCTION_597_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_25;
      }
    }

    sub_1B906D5EC(&v0[v62[8]], v59, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_118(v59);
    if (v36)
    {
      sub_1B8D9207C(v59, &qword_1EBAB8DF8, &qword_1B96B9A80);
      v47 = v58;
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v48, v49);
      OUTLINED_FUNCTION_597_0();
      OUTLINED_FUNCTION_1065();
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_25;
      }

      v47 = v58;
    }

    sub_1B906D5EC(&v0[v62[9]], v47, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v50 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v50, v51, v63);
    if (v36)
    {
      sub_1B8D9207C(v47, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v52, v53);
      OUTLINED_FUNCTION_257_0();
      OUTLINED_FUNCTION_1065();
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (v1)
      {
        goto LABEL_25;
      }
    }

    sub_1B906D5EC(&v0[v62[10]], v60, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_90(v60);
    if (v36)
    {
      sub_1B8D9207C(v60, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_24:
      v56 = &v0[v62[5]];
      sub_1B964C290();
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_5_54();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_10_45();
    sub_1B8CD38D8(v54, v55);
    OUTLINED_FUNCTION_272_2();
    OUTLINED_FUNCTION_1065();
    OUTLINED_FUNCTION_8_49();
    sub_1B95B9E1C();
    if (!v1)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemSwitchV2CardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_280();
  v145 = type metadata accessor for Searchfoundation_RFVisualProperty(v7);
  v8 = OUTLINED_FUNCTION_59_1(v145);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v136 - v17;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v144);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_116();
  v22 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_74_15();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_89_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_682();
  v148 = v28;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_447_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v31 = OUTLINED_FUNCTION_183(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_62_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_682();
  v147 = v35;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_682();
  v149 = v37;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_211();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v40 = OUTLINED_FUNCTION_59_1(v39);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v44 = MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_91_6();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_725();
  if (*v1 != *v0)
  {
    goto LABEL_57;
  }

  v139 = v47;
  v140 = v48;
  v136 = v12;
  v137 = v18;
  v138 = v2;
  v49 = v46;
  v50 = type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection(0);
  v51 = *(v50 + 24);
  v143 = v49;
  v52 = *(v49 + 48);
  v141 = v50;
  v142 = v1;
  OUTLINED_FUNCTION_229_3(&v1[v51], v6);
  OUTLINED_FUNCTION_229_3(&v0[v51], v6 + v52);
  OUTLINED_FUNCTION_118(v6);
  if (v103)
  {
    OUTLINED_FUNCTION_118(v6 + v52);
    if (v103)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_7;
    }

LABEL_31:
    v104 = &qword_1EBAB8E00;
    v105 = &qword_1B964D600;
LABEL_35:
    v109 = v6;
LABEL_56:
    sub_1B8D9207C(v109, v104, v105);
LABEL_57:
    v102 = 0;
    goto LABEL_58;
  }

  sub_1B906D5EC(v6, v5, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v6 + v52);
  if (v103)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v106 = *v5;
  v107 = *v4;
  sub_1B8D5BA08();
  if ((v108 & 1) == 0 || *(v5 + 8) != *(v4 + 8))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_214_5();
    v104 = &qword_1EBAB8DF8;
    v105 = &qword_1B96B9A80;
    goto LABEL_35;
  }

  v116 = *(v22 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v117, v118);
  LOBYTE(v116) = OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_200();
  sub_1B95B9E1C();
  sub_1B8D9207C(v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v116 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_7:
  v53 = v141;
  v54 = v141[7];
  v55 = *(v143 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v56, v57, v58, v59);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v60, v61, v62, v63);
  OUTLINED_FUNCTION_118(v3);
  if (v103)
  {
    OUTLINED_FUNCTION_118(v3 + v55);
    if (v103)
    {
      sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_12;
    }

LABEL_39:
    v104 = &qword_1EBAB8E00;
    v105 = &qword_1B964D600;
LABEL_43:
    v109 = v3;
    goto LABEL_56;
  }

  v110 = v149;
  sub_1B906D5EC(v3, v149, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v3 + v55);
  if (v111)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_0_112();
  v112 = v148;
  sub_1B95B9E70();
  v113 = *v110;
  v114 = *v112;
  sub_1B8D5BA08();
  if ((v115 & 1) == 0 || *(v110 + 8) != *(v112 + 8))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_214_5();
    v104 = &qword_1EBAB8DF8;
    v105 = &qword_1B96B9A80;
    goto LABEL_43;
  }

  v121 = *(v22 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v122, v123);
  LOBYTE(v121) = OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_200();
  sub_1B95B9E1C();
  sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v121 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_12:
  v64 = v53[8];
  v65 = *(v143 + 48);
  v66 = v140;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v67, v68, v69, v70);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v71, v72, v73, v74);
  OUTLINED_FUNCTION_118(v66);
  if (v103)
  {
    OUTLINED_FUNCTION_118(v66 + v65);
    if (!v103)
    {
      goto LABEL_55;
    }

    sub_1B8D9207C(v66, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B906D5EC(v66, v147, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_178(v66 + v65, 1, v22);
    if (v119)
    {
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_102_12();
    sub_1B8D5BA08();
    if ((v120 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v103))
    {
      OUTLINED_FUNCTION_7_50();
      sub_1B95B9E1C();
      OUTLINED_FUNCTION_182();
      sub_1B95B9E1C();
      v104 = &qword_1EBAB8DF8;
      v105 = &qword_1B96B9A80;
      v109 = v140;
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v126, v127);
    v128 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_128();
    sub_1B95B9E1C();
    sub_1B8D9207C(v140, &qword_1EBAB8DF8, &qword_1B96B9A80);
    if ((v128 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v75 = v53[9];
  v76 = *(v143 + 48);
  OUTLINED_FUNCTION_242_3();
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v77, v78, v79, v80);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v81, v82, v83, v84);
  OUTLINED_FUNCTION_118(v66);
  if (v103)
  {
    OUTLINED_FUNCTION_118(v66 + v76);
    if (v103)
    {
      sub_1B8D9207C(v66, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_22;
    }

LABEL_55:
    v104 = &qword_1EBAB8E00;
    v105 = &qword_1B964D600;
    v109 = v66;
    goto LABEL_56;
  }

  sub_1B906D5EC(v66, v146, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_178(v66 + v76, 1, v22);
  if (v124)
  {
LABEL_54:
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08();
  if ((v125 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v103))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_182();
    sub_1B95B9E1C();
    v104 = &qword_1EBAB8DF8;
    v105 = &qword_1B96B9A80;
    v109 = v139;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v131, v132);
  v133 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_128();
  sub_1B95B9E1C();
  sub_1B8D9207C(v139, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v133 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_22:
  v85 = v53[10];
  v86 = *(v144 + 48);
  v87 = v138;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v88, v89, v90, v91);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v92, v93, v94, v95);
  v96 = OUTLINED_FUNCTION_207();
  v97 = v145;
  OUTLINED_FUNCTION_44(v96, v98);
  if (v103)
  {
    OUTLINED_FUNCTION_48(v87 + v86);
    if (v103)
    {
      sub_1B8D9207C(v87, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_27;
    }

LABEL_67:
    v104 = &qword_1EBACCC18;
    v105 = &unk_1B96D8D70;
LABEL_71:
    v109 = v87;
    goto LABEL_56;
  }

  sub_1B906D5EC(v87, v137, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v87 + v86);
  if (v129)
  {
    OUTLINED_FUNCTION_8_49();
    sub_1B95B9E1C();
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_5_54();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_102_12();
  sub_1B8D5D124();
  if ((v130 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v103))
  {
    OUTLINED_FUNCTION_14_32();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_182();
    sub_1B95B9E1C();
    v104 = &qword_1EBACC708;
    v105 = &unk_1B96D92F0;
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v134, v135);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_12_40();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_128();
  sub_1B95B9E1C();
  sub_1B8D9207C(v87, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v97 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  v99 = v53[5];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v100, v101);
  OUTLINED_FUNCTION_310();
  v102 = sub_1B964C850();
LABEL_58:
  OUTLINED_FUNCTION_264(v102);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B40D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1998, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B4158(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE5D0, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B41C8()
{
  sub_1B8CD38D8(&qword_1EBACE5D0, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B4260()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD17E8);
  __swift_project_value_buffer(v0, qword_1EBAD17E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_2";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text_3";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "text_4";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "thumbnail_1";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "thumbnail_2";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemImageRightCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B95B4670();
        break;
      case 3:
        OUTLINED_FUNCTION_41_26();
        OUTLINED_FUNCTION_9();
        sub_1B95B5D98();
        break;
      case 4:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95B46DC();
        break;
      case 6:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5E20();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95B4670()
{
  v0 = OUTLINED_FUNCTION_20_20();
  type metadata accessor for Searchfoundation_RFTextProperty(v0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v1, v2);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C570();
}

uint64_t sub_1B95B46DC()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(0) + 36);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  sub_1B8CD38D8(&qword_1ED9D2A40, type metadata accessor for Searchfoundation_RFVisualProperty);
  return sub_1B964C580();
}

void Searchfoundation_RFSummaryItemImageRightCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v3 = OUTLINED_FUNCTION_183(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_62_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_266_0();
  v41 = v7;
  v8 = OUTLINED_FUNCTION_201();
  v43 = type metadata accessor for Searchfoundation_RFVisualProperty(v8);
  v9 = OUTLINED_FUNCTION_59_1(v43);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_77_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_266_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v44 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_211_5();
  v19 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_95_8();
  v45 = type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(v24);
  sub_1B906D5EC(v0 + v45[7], v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_118(v0);
  if (v25)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v26, v27);
    OUTLINED_FUNCTION_709_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_22;
    }
  }

  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_3_87(), sub_1B8CD38D8(v28, v29), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_83_5(), sub_1B964C730(), !v1))
  {
    if (!*(v0[1] + 16) || (OUTLINED_FUNCTION_3_87(), sub_1B8CD38D8(v30, v31), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_83_5(), sub_1B964C730(), !v1))
    {
      sub_1B906D5EC(v0 + v45[8], v44, &qword_1EBAB8DF8, &qword_1B96B9A80);
      OUTLINED_FUNCTION_118(v44);
      if (v25)
      {
        sub_1B8D9207C(v44, &qword_1EBAB8DF8, &qword_1B96B9A80);
      }

      else
      {
        OUTLINED_FUNCTION_0_112();
        sub_1B95B9E70();
        OUTLINED_FUNCTION_3_87();
        sub_1B8CD38D8(v32, v33);
        OUTLINED_FUNCTION_272_2();
        OUTLINED_FUNCTION_83_5();
        sub_1B964C740();
        OUTLINED_FUNCTION_1_97();
        sub_1B95B9E1C();
        if (v1)
        {
          goto LABEL_22;
        }
      }

      sub_1B906D5EC(v0 + v45[9], v41, &qword_1EBACC708, &unk_1B96D92F0);
      v34 = OUTLINED_FUNCTION_208_3();
      OUTLINED_FUNCTION_178(v34, v35, v43);
      if (v25)
      {
        sub_1B8D9207C(v41, &qword_1EBACC708, &unk_1B96D92F0);
      }

      else
      {
        OUTLINED_FUNCTION_5_54();
        sub_1B95B9E70();
        OUTLINED_FUNCTION_10_45();
        sub_1B8CD38D8(v36, v37);
        OUTLINED_FUNCTION_83_5();
        sub_1B964C740();
        OUTLINED_FUNCTION_8_49();
        sub_1B95B9E1C();
        if (v1)
        {
          goto LABEL_22;
        }
      }

      sub_1B906D5EC(v0 + v45[10], v42, &qword_1EBACC708, &unk_1B96D92F0);
      OUTLINED_FUNCTION_32(v42);
      if (v25)
      {
        sub_1B8D9207C(v42, &qword_1EBACC708, &unk_1B96D92F0);
LABEL_21:
        v40 = v0 + v45[6];
        OUTLINED_FUNCTION_12();
        sub_1B964C290();
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_5_54();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_10_45();
      sub_1B8CD38D8(v38, v39);
      OUTLINED_FUNCTION_272_2();
      OUTLINED_FUNCTION_83_5();
      sub_1B964C740();
      OUTLINED_FUNCTION_8_49();
      sub_1B95B9E1C();
      if (!v1)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemImageRightCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v141 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v7 = OUTLINED_FUNCTION_59_1(v141);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_0();
  v119 = v10;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_266_0();
  v124 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v121 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_221_3(v19);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  v20 = OUTLINED_FUNCTION_59_1(v138);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v127 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_266_0();
  v135 = v25;
  v26 = OUTLINED_FUNCTION_201();
  v27 = type metadata accessor for Searchfoundation_RFTextProperty(v26);
  v28 = OUTLINED_FUNCTION_59_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_75_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1247();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v33 = OUTLINED_FUNCTION_183(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_65_13();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_447_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v38 = OUTLINED_FUNCTION_59_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44_0();
  v150 = v41;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_87_0();
  v151 = type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection(0);
  v43 = v151[7];
  v147 = v37;
  v44 = *(v37 + 48);
  OUTLINED_FUNCTION_217_3();
  sub_1B906D5EC(v45, v46, v47, &qword_1B96B9A80);
  sub_1B906D5EC(v4 + v43, v2 + v44, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v2);
  if (v90)
  {
    OUTLINED_FUNCTION_57(v2 + v44);
    if (v90)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_27:
    v91 = &qword_1EBAB8E00;
    v92 = &qword_1B964D600;
LABEL_31:
    v96 = v2;
LABEL_32:
    sub_1B8D9207C(v96, v91, v92);
LABEL_33:
    v89 = 0;
    goto LABEL_34;
  }

  sub_1B906D5EC(v2, v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v2 + v44);
  if (v90)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v93 = *v0;
  v94 = *v1;
  sub_1B8D5BA08();
  if ((v95 & 1) == 0 || *(v0 + 8) != *(v1 + 8))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_224_4();
    v91 = &qword_1EBAB8DF8;
    v92 = &qword_1B96B9A80;
    goto LABEL_31;
  }

  v97 = OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v98, v99);
  OUTLINED_FUNCTION_509();
  sub_1B964C850();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_186();
  sub_1B95B9E1C();
  sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v97 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_6:
  sub_1B8D5B224(*v6, *v4, v48, v49, v50, v51, v52, v53, v117, v119, v121, v124, v127, v130, v133, v135, v138, v141, v144, v147);
  if ((v60 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_1B8D5B224(v6[1], v4[1], v54, v55, v56, v57, v58, v59, v118, v120, v122, v125, v128, v131, v134, v136, v139, v142, v145, v148);
  if ((v61 & 1) == 0)
  {
    goto LABEL_33;
  }

  v62 = v151[8];
  v63 = *(v149 + 48);
  sub_1B906D5EC(v6 + v62, v150, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v4 + v62, v150 + v63, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v150);
  if (v90)
  {
    OUTLINED_FUNCTION_57(v150 + v63);
    if (v90)
    {
      sub_1B8D9207C(v150, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_13;
    }

LABEL_40:
    v91 = &qword_1EBAB8E00;
    v92 = &qword_1B964D600;
LABEL_44:
    v96 = v150;
    goto LABEL_32;
  }

  sub_1B906D5EC(v150, v146, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v150 + v63);
  if (v100)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_0_112();
  OUTLINED_FUNCTION_238_3();
  sub_1B95B9E70();
  v101 = *v146;
  sub_1B8D5BA08();
  if ((v102 & 1) == 0 || (v103 = *(v146 + 8), OUTLINED_FUNCTION_218_3(), !v90))
  {
    OUTLINED_FUNCTION_6_49();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v91 = &qword_1EBAB8DF8;
    v92 = &qword_1B96B9A80;
    goto LABEL_44;
  }

  v108 = OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v109, v110);
  OUTLINED_FUNCTION_552();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v150, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v108 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_13:
  v64 = v151[9];
  v65 = *(v140 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v66, v67, v68, v69);
  v70 = v137;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v71, v72, v73, v74);
  OUTLINED_FUNCTION_44(v137, 1);
  if (v90)
  {
    OUTLINED_FUNCTION_48(v137 + v65);
    if (!v90)
    {
      goto LABEL_56;
    }

    sub_1B8D9207C(v137, &qword_1EBACC708, &unk_1B96D92F0);
  }

  else
  {
    sub_1B906D5EC(v137, v132, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_48(v137 + v65);
    if (v104)
    {
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_5_54();
    sub_1B95B9E70();
    v105 = *v132;
    v106 = *v126;
    sub_1B8D5D124();
    if ((v107 & 1) == 0 || *(v132 + 8) != *(v126 + 8))
    {
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_2_82();
    sub_1B8CD38D8(v113, v114);
    sub_1B964C850();
    OUTLINED_FUNCTION_12_40();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    sub_1B8D9207C(v137, &qword_1EBACC708, &unk_1B96D92F0);
    if ((v143 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v75 = v151[10];
  v76 = *(v140 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v77, v78, v79, v80);
  v70 = v129;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v81, v82, v83, v84);
  v85 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_44(v85, v86);
  if (v90)
  {
    OUTLINED_FUNCTION_48(v129 + v76);
    if (v90)
    {
      sub_1B8D9207C(v129, &qword_1EBACC708, &unk_1B96D92F0);
      goto LABEL_23;
    }

LABEL_56:
    v91 = &qword_1EBACCC18;
    v92 = &unk_1B96D8D70;
LABEL_60:
    v96 = v70;
    goto LABEL_32;
  }

  sub_1B906D5EC(v129, v123, &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_48(v129 + v76);
  if (v111)
  {
LABEL_55:
    OUTLINED_FUNCTION_8_49();
    sub_1B95B9E1C();
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_5_54();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5D124();
  if ((v112 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v90))
  {
LABEL_59:
    OUTLINED_FUNCTION_14_32();
    sub_1B95B9E1C();
    sub_1B95B9E1C();
    v91 = &qword_1EBACC708;
    v92 = &unk_1B96D92F0;
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_1328();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v115, v116);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_12_40();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_207_7();
  sub_1B8D9207C(v129, &qword_1EBACC708, &unk_1B96D92F0);
  if ((v143 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_23:
  OUTLINED_FUNCTION_215_4();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v87, v88);
  OUTLINED_FUNCTION_310();
  v89 = sub_1B964C850();
LABEL_34:
  OUTLINED_FUNCTION_264(v89);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B5650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1990, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B56D0(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE5B0, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B5740()
{
  sub_1B8CD38D8(&qword_1EBACE5B0, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B57D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1800);
  __swift_project_value_buffer(v0, qword_1EBAD1800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "attribution";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "attribution_ignores_expansion";
  *(v13 + 1) = 29;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "expanding_component_content";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "thumbnail";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "attribution_caveat";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemExpandableCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5C68();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B95B5CE4();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95B5D98();
        break;
      case 6:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5E20();
        break;
      case 7:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B5E9C();
        break;
      default:
        continue;
    }
  }
}

void sub_1B95B5C68()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 32);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B95B5CE4()
{
  v0 = *(type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0) + 36);
  type metadata accessor for Searchfoundation_RFSummaryItemAttribution(0);
  sub_1B8CD38D8(&qword_1EBAD18B0, type metadata accessor for Searchfoundation_RFSummaryItemAttribution);
  return sub_1B964C580();
}

void sub_1B95B5D98()
{
  OUTLINED_FUNCTION_273_0();
  v0(0);
  v1 = OUTLINED_FUNCTION_128();
  sub_1B8CD38D8(v1, v2);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B95B5E20()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 40);
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_10_45();
  sub_1B8CD38D8(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B95B5E9C()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 44);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_RFSummaryItemExpandableCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v54 = v9;
  v10 = OUTLINED_FUNCTION_201();
  v55 = type metadata accessor for Searchfoundation_RFVisualProperty(v10);
  v11 = OUTLINED_FUNCTION_59_1(v55);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_221_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1850, &qword_1B96DE9F0);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v56 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v57 = type metadata accessor for Searchfoundation_RFSummaryItemAttribution(v20);
  v21 = OUTLINED_FUNCTION_59_1(v57);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v25 = OUTLINED_FUNCTION_183(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_75_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_219_0();
  v30 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v31 = OUTLINED_FUNCTION_59_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_129_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1247();
  v58 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0);
  sub_1B906D5EC(v4 + v58[7], v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_37_0(v3);
  if (v36)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    v39 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v37, v38);
    OUTLINED_FUNCTION_683_0();
    sub_1B964C740();
    v39 = v1;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_235_4();
  sub_1B906D5EC(v4 + v40, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_37_0(v2);
  if (v36)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    OUTLINED_FUNCTION_690();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v41, v42);
    OUTLINED_FUNCTION_106_9();
    OUTLINED_FUNCTION_163_9();
    v39 = v1;
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_234_6();
  sub_1B906D5EC(v4 + v43, v56, &qword_1EBAD1850, &qword_1B96DE9F0);
  OUTLINED_FUNCTION_118(v56);
  if (v36)
  {
    sub_1B8D9207C(v56, &qword_1EBAD1850, &qword_1B96DE9F0);
  }

  else
  {
    OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_233_2();
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1EBAD18B0, type metadata accessor for Searchfoundation_RFSummaryItemAttribution);
    OUTLINED_FUNCTION_106_9();
    OUTLINED_FUNCTION_163_9();
    v39 = v1;
    OUTLINED_FUNCTION_71_12();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_26;
    }
  }

  if (*v4 != 1 || (v1 = v39, sub_1B964C670(), !v39))
  {
    if (!*(*(v4 + 8) + 16) || (type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent(0), sub_1B8CD38D8(&qword_1EBAD18A8, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent), OUTLINED_FUNCTION_231(), v1 = v39, sub_1B964C730(), !v39))
    {
      sub_1B906D5EC(v4 + v58[10], v54, &qword_1EBACC708, &unk_1B96D92F0);
      v44 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_178(v44, v45, v55);
      if (v36)
      {
        sub_1B8D9207C(v54, &qword_1EBACC708, &unk_1B96D92F0);
      }

      else
      {
        OUTLINED_FUNCTION_5_54();
        sub_1B95B9E70();
        OUTLINED_FUNCTION_10_45();
        sub_1B8CD38D8(v46, v47);
        OUTLINED_FUNCTION_257_0();
        OUTLINED_FUNCTION_163_9();
        OUTLINED_FUNCTION_8_49();
        sub_1B95B9E1C();
        if (v1)
        {
          goto LABEL_26;
        }
      }

      sub_1B906D5EC(v4 + v58[11], v53, &qword_1EBAB8DF8, &qword_1B96B9A80);
      v48 = OUTLINED_FUNCTION_208_3();
      OUTLINED_FUNCTION_178(v48, v49, v30);
      if (v36)
      {
        sub_1B8D9207C(v53, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_25:
        v52 = v4 + v58[6];
        sub_1B964C290();
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      OUTLINED_FUNCTION_3_87();
      sub_1B8CD38D8(v50, v51);
      OUTLINED_FUNCTION_257_0();
      OUTLINED_FUNCTION_163_9();
      OUTLINED_FUNCTION_1_97();
      sub_1B95B9E1C();
      if (!v1)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemExpandableCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = v4;
  v7 = v6;
  v168 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v8 = OUTLINED_FUNCTION_59_1(v168);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v166 = v15;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCC18, &unk_1B96D8D70);
  OUTLINED_FUNCTION_59_1(v167);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v19 = OUTLINED_FUNCTION_201();
  v171 = type metadata accessor for Searchfoundation_RFSummaryItemAttribution(v19);
  v20 = OUTLINED_FUNCTION_59_1(v171);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1850, &qword_1B96DE9F0);
  OUTLINED_FUNCTION_183(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_221_3(v27);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD18B8, &qword_1B96DEA10);
  OUTLINED_FUNCTION_59_1(v170);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_185();
  v31 = OUTLINED_FUNCTION_201();
  v32 = type metadata accessor for Searchfoundation_RFTextProperty(v31);
  v33 = OUTLINED_FUNCTION_59_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44_0();
  v162 = v36;
  OUTLINED_FUNCTION_230();
  v38 = MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_41_25(v38, v39, v40, v41, v42, v43, v44, v45, v162);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_211();
  v47 = OUTLINED_FUNCTION_288();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
  v50 = OUTLINED_FUNCTION_183(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44_0();
  v164 = v53;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_1247();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v57 = OUTLINED_FUNCTION_135_0(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44_0();
  v165 = v60;
  OUTLINED_FUNCTION_230();
  v62 = MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_33_16(v62, v63, v64, v65, v66, v67, v68, v69, v163);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_87_0();
  v174 = v0;
  v175 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection(0);
  v71 = v175[7];
  v72 = *(v0 + 48);
  OUTLINED_FUNCTION_217_3();
  sub_1B906D5EC(v73, v74, v75, &qword_1B96B9A80);
  v76 = &v5[v71];
  v77 = v5;
  sub_1B906D5EC(v76, v3 + v72, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_57(v3);
  if (v101)
  {
    OUTLINED_FUNCTION_57(v3 + v72);
    if (v101)
    {
      sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B906D5EC(v3, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_57(v3 + v72);
    if (!v101)
    {
      OUTLINED_FUNCTION_0_112();
      sub_1B95B9E70();
      v104 = *v2;
      v105 = *v1;
      sub_1B8D5BA08();
      if ((v106 & 1) == 0 || *(v2 + 8) != *(v1 + 8))
      {
        OUTLINED_FUNCTION_7_50();
        sub_1B95B9E1C();
        sub_1B95B9E1C();
        v102 = &qword_1EBAB8DF8;
        v103 = &qword_1B96B9A80;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_91_7();
      OUTLINED_FUNCTION_2_82();
      sub_1B8CD38D8(v114, v115);
      v116 = sub_1B964C850();
      OUTLINED_FUNCTION_6_49();
      sub_1B95B9E1C();
      sub_1B95B9E1C();
      sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
      if ((v116 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_6:
      v78 = v175[8];
      v79 = *(v174 + 48);
      OUTLINED_FUNCTION_71_10();
      sub_1B906D5EC(v80, v81, v82, v83);
      OUTLINED_FUNCTION_71_10();
      sub_1B906D5EC(v84, v85, v86, v87);
      OUTLINED_FUNCTION_57(v173);
      if (v101)
      {
        OUTLINED_FUNCTION_57(v173 + v79);
        if (v101)
        {
          sub_1B8D9207C(v173, &qword_1EBAB8DF8, &qword_1B96B9A80);
          goto LABEL_11;
        }
      }

      else
      {
        sub_1B906D5EC(v173, v172, &qword_1EBAB8DF8, &qword_1B96B9A80);
        OUTLINED_FUNCTION_57(v173 + v79);
        if (!v108)
        {
          OUTLINED_FUNCTION_0_112();
          OUTLINED_FUNCTION_238_3();
          sub_1B95B9E70();
          v109 = *v172;
          v110 = *v78;
          sub_1B8D5BA08();
          if ((v111 & 1) == 0 || (v112 = *(v172 + 8), OUTLINED_FUNCTION_218_3(), !v101))
          {
            OUTLINED_FUNCTION_7_50();
            sub_1B95B9E1C();
            OUTLINED_FUNCTION_288();
            sub_1B95B9E1C();
            v102 = &qword_1EBAB8DF8;
            v103 = &qword_1B96B9A80;
            goto LABEL_31;
          }

          v79 = v172;
          OUTLINED_FUNCTION_91_7();
          OUTLINED_FUNCTION_2_82();
          sub_1B8CD38D8(v150, v151);
          v152 = OUTLINED_FUNCTION_552();
          OUTLINED_FUNCTION_6_49();
          sub_1B95B9E1C();
          OUTLINED_FUNCTION_200();
          sub_1B95B9E1C();
          sub_1B8D9207C(v173, &qword_1EBAB8DF8, &qword_1B96B9A80);
          if ((v152 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_11:
          v88 = v32;
          v89 = v175[9];
          v90 = *(v170 + 48);
          OUTLINED_FUNCTION_233_2();
          OUTLINED_FUNCTION_71_10();
          sub_1B906D5EC(v91, v92, v93, v94);
          OUTLINED_FUNCTION_71_10();
          sub_1B906D5EC(v95, v96, v97, v98);
          v99 = OUTLINED_FUNCTION_602();
          OUTLINED_FUNCTION_44(v99, v100);
          if (v101)
          {
            OUTLINED_FUNCTION_48(v79 + v90);
            if (v101)
            {
              sub_1B8D9207C(v79, &qword_1EBAD1850, &qword_1B96DE9F0);
              goto LABEL_42;
            }
          }

          else
          {
            sub_1B906D5EC(v79, v169, &qword_1EBAD1850, &qword_1B96DE9F0);
            OUTLINED_FUNCTION_48(v79 + v90);
            if (!v117)
            {
              OUTLINED_FUNCTION_17_30();
              sub_1B95B9E70();
              OUTLINED_FUNCTION_461();
              static Searchfoundation_RFSummaryItemAttribution.== infix(_:_:)();
              v119 = v118;
              sub_1B95B9E1C();
              OUTLINED_FUNCTION_128();
              sub_1B95B9E1C();
              sub_1B8D9207C(v79, &qword_1EBAD1850, &qword_1B96DE9F0);
              if ((v119 & 1) == 0)
              {
                goto LABEL_33;
              }

LABEL_42:
              if (*v7 != *v77)
              {
                goto LABEL_33;
              }

              v120 = *(v7 + 1);
              v121 = *(v77 + 1);
              sub_1B8D616CC();
              if ((v122 & 1) == 0)
              {
                goto LABEL_33;
              }

              v123 = v175[10];
              v124 = *(v167 + 48);
              OUTLINED_FUNCTION_242_3();
              OUTLINED_FUNCTION_71_10();
              sub_1B906D5EC(v125, v126, v127, v128);
              v129 = v79;
              OUTLINED_FUNCTION_71_10();
              sub_1B906D5EC(v130, v131, v132, v133);
              v134 = OUTLINED_FUNCTION_602();
              OUTLINED_FUNCTION_44(v134, v135);
              if (v101)
              {
                OUTLINED_FUNCTION_48(v79 + v124);
                if (v101)
                {
                  sub_1B8D9207C(v79, &qword_1EBACC708, &unk_1B96D92F0);
                  goto LABEL_49;
                }
              }

              else
              {
                sub_1B906D5EC(v79, v166, &qword_1EBACC708, &unk_1B96D92F0);
                OUTLINED_FUNCTION_48(v79 + v124);
                if (!v153)
                {
                  OUTLINED_FUNCTION_5_54();
                  sub_1B95B9E70();
                  OUTLINED_FUNCTION_199_7();
                  sub_1B8D5D124();
                  if ((v154 & 1) == 0 || (OUTLINED_FUNCTION_123_9(), !v101))
                  {
                    OUTLINED_FUNCTION_14_32();
                    sub_1B95B9E1C();
                    OUTLINED_FUNCTION_214_5();
                    v102 = &qword_1EBACC708;
                    v103 = &unk_1B96D92F0;
                    goto LABEL_71;
                  }

                  OUTLINED_FUNCTION_1328();
                  OUTLINED_FUNCTION_2_82();
                  sub_1B8CD38D8(v157, v158);
                  OUTLINED_FUNCTION_845_0();
                  OUTLINED_FUNCTION_12_40();
                  sub_1B95B9E1C();
                  OUTLINED_FUNCTION_200();
                  sub_1B95B9E1C();
                  sub_1B8D9207C(v79, &qword_1EBACC708, &unk_1B96D92F0);
                  if ((v168 & 1) == 0)
                  {
                    goto LABEL_33;
                  }

LABEL_49:
                  v136 = v175[11];
                  v137 = *(v174 + 48);
                  OUTLINED_FUNCTION_71_10();
                  sub_1B906D5EC(v138, v139, v140, v141);
                  v129 = v165;
                  OUTLINED_FUNCTION_71_10();
                  sub_1B906D5EC(v142, v143, v144, v145);
                  v146 = OUTLINED_FUNCTION_602();
                  OUTLINED_FUNCTION_178(v146, v147, v88);
                  if (v101)
                  {
                    OUTLINED_FUNCTION_48(v165 + v137);
                    if (v101)
                    {
                      sub_1B8D9207C(v165, &qword_1EBAB8DF8, &qword_1B96B9A80);
                      goto LABEL_54;
                    }
                  }

                  else
                  {
                    sub_1B906D5EC(v165, v164, &qword_1EBAB8DF8, &qword_1B96B9A80);
                    OUTLINED_FUNCTION_48(v165 + v137);
                    if (!v155)
                    {
                      OUTLINED_FUNCTION_0_112();
                      sub_1B95B9E70();
                      OUTLINED_FUNCTION_199_7();
                      sub_1B8D5BA08();
                      if ((v156 & 1) == 0 || (OUTLINED_FUNCTION_123_9(), !v101))
                      {
                        OUTLINED_FUNCTION_7_50();
                        sub_1B95B9E1C();
                        OUTLINED_FUNCTION_214_5();
                        v102 = &qword_1EBAB8DF8;
                        v103 = &qword_1B96B9A80;
                        goto LABEL_71;
                      }

                      OUTLINED_FUNCTION_252_2();
                      OUTLINED_FUNCTION_2_82();
                      sub_1B8CD38D8(v159, v160);
                      v161 = OUTLINED_FUNCTION_845_0();
                      OUTLINED_FUNCTION_6_49();
                      sub_1B95B9E1C();
                      OUTLINED_FUNCTION_200();
                      sub_1B95B9E1C();
                      sub_1B8D9207C(v165, &qword_1EBAB8DF8, &qword_1B96B9A80);
                      if ((v161 & 1) == 0)
                      {
                        goto LABEL_33;
                      }

LABEL_54:
                      OUTLINED_FUNCTION_215_4();
                      OUTLINED_FUNCTION_2_82();
                      sub_1B8CD38D8(v148, v149);
                      OUTLINED_FUNCTION_509();
                      v113 = sub_1B964C850();
                      goto LABEL_34;
                    }

                    OUTLINED_FUNCTION_1_97();
                    sub_1B95B9E1C();
                  }

                  v102 = &qword_1EBAB8E00;
                  v103 = &qword_1B964D600;
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_8_49();
                sub_1B95B9E1C();
              }

              v102 = &qword_1EBACCC18;
              v103 = &unk_1B96D8D70;
LABEL_71:
              v107 = v129;
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_71_12();
            sub_1B95B9E1C();
          }

          v102 = &qword_1EBAD18B8;
          v103 = &qword_1B96DEA10;
          v107 = v79;
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_1_97();
        sub_1B95B9E1C();
      }

      v102 = &qword_1EBAB8E00;
      v103 = &qword_1B964D600;
LABEL_31:
      v107 = v173;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
  }

  v102 = &qword_1EBAB8E00;
  v103 = &qword_1B964D600;
LABEL_23:
  v107 = v3;
LABEL_32:
  sub_1B8D9207C(v107, v102, v103);
LABEL_33:
  v113 = 0;
LABEL_34:
  OUTLINED_FUNCTION_264(v113);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B7104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1988, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B7184(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBACE560, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B71F4()
{
  sub_1B8CD38D8(&qword_1EBACE560, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B728C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1818);
  __swift_project_value_buffer(v0, qword_1EBAD1818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_compact";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "text_minimal";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFSummaryItemAttribution.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B7664();
        break;
      case 2:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B75E8();
        break;
      case 1:
        OUTLINED_FUNCTION_16_36();
        sub_1B95B756C();
        break;
    }
  }
}

void sub_1B95B756C()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 20);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B95B75E8()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 24);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void sub_1B95B7664()
{
  OUTLINED_FUNCTION_822();
  v0 = OUTLINED_FUNCTION_20_20();
  v2 = *(v1(v0) + 28);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v3, v4);
  OUTLINED_FUNCTION_4_21();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_RFSummaryItemAttribution.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v5 = OUTLINED_FUNCTION_183(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44_0();
  v25 = v8;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_219_0();
  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_129_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_725();
  v17 = type metadata accessor for Searchfoundation_RFSummaryItemAttribution(0);
  sub_1B906D5EC(v0 + v17[5], v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v3);
  if (v18)
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v19, v20);
    OUTLINED_FUNCTION_272_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  sub_1B906D5EC(v0 + v17[6], v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v2);
  if (v18)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    OUTLINED_FUNCTION_690();
    sub_1B95B9E70();
    OUTLINED_FUNCTION_3_87();
    sub_1B8CD38D8(v21, v22);
    OUTLINED_FUNCTION_106_9();
    OUTLINED_FUNCTION_246_5();
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  sub_1B906D5EC(v0 + v17[7], v25, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_32(v25);
  if (v18)
  {
    sub_1B8D9207C(v25, &qword_1EBAB8DF8, &qword_1B96B9A80);
LABEL_13:
    sub_1B964C290();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_3_87();
  sub_1B8CD38D8(v23, v24);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_246_5();
  OUTLINED_FUNCTION_1_97();
  sub_1B95B9E1C();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFSummaryItemAttribution.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_75_11();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35_17(v12, v13, v14, v15, v16, v17, v18, v19, v82);
  MEMORY[0x1EEE9AC00](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  v22 = OUTLINED_FUNCTION_183(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_77_10();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_451_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_447_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  v28 = OUTLINED_FUNCTION_135_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_59_15();
  v32 = MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33_16(v32, v33, v34, v35, v36, v37, v38, v39, v83);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_211();
  v90 = type metadata accessor for Searchfoundation_RFSummaryItemAttribution(0);
  v41 = v90[5];
  v89 = v0;
  v42 = *(v0 + 48);
  sub_1B906D5EC(v6 + v41, v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B906D5EC(v4 + v41, v2 + v42, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_99_0(v2);
  if (v61)
  {
    OUTLINED_FUNCTION_99_0(v2 + v42);
    if (v61)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_20:
    v62 = &qword_1EBAB8E00;
    v63 = &qword_1B964D600;
LABEL_24:
    v65 = v2;
LABEL_43:
    sub_1B8D9207C(v65, v62, v63);
LABEL_44:
    v60 = 0;
    goto LABEL_45;
  }

  sub_1B906D5EC(v2, v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_99_0(v2 + v42);
  if (v61)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_107_7();
  sub_1B8D5BA08();
  if ((v64 & 1) == 0 || (OUTLINED_FUNCTION_58_15(), !v61))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_224_4();
    v62 = &qword_1EBAB8DF8;
    v63 = &qword_1B96B9A80;
    goto LABEL_24;
  }

  v71 = OUTLINED_FUNCTION_252_2();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v72, v73);
  OUTLINED_FUNCTION_645_0();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v71 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_6:
  v43 = v90[6];
  v44 = *(v89 + 48);
  OUTLINED_FUNCTION_217_3();
  sub_1B906D5EC(v45, v46, v47, &qword_1B96B9A80);
  OUTLINED_FUNCTION_229_3(v4 + v43, v88 + v44);
  OUTLINED_FUNCTION_99_0(v88);
  if (v61)
  {
    OUTLINED_FUNCTION_99_0(v88 + v44);
    if (v61)
    {
      sub_1B8D9207C(v88, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_11;
    }

LABEL_28:
    v62 = &qword_1EBAB8E00;
    v63 = &qword_1B964D600;
LABEL_32:
    v65 = v88;
    goto LABEL_43;
  }

  sub_1B906D5EC(v88, v87, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_99_0(v88 + v44);
  if (v66)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  v67 = *v87;
  v68 = *v85;
  sub_1B8D5BA08();
  if ((v69 & 1) == 0 || (v70 = *(v87 + 8), OUTLINED_FUNCTION_218_3(), !v61))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_294();
    sub_1B95B9E1C();
    v62 = &qword_1EBAB8DF8;
    v63 = &qword_1B96B9A80;
    goto LABEL_32;
  }

  v76 = OUTLINED_FUNCTION_252_2();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v77, v78);
  OUTLINED_FUNCTION_552();
  OUTLINED_FUNCTION_9_45();
  sub_1B95B9E1C();
  sub_1B95B9E1C();
  sub_1B8D9207C(v88, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v76 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_11:
  v48 = v90[7];
  v49 = *(v89 + 48);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v50, v51, v52, v53);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v54, v55, v56, v57);
  OUTLINED_FUNCTION_99_0(v86);
  if (v61)
  {
    OUTLINED_FUNCTION_99_0(v86 + v49);
    if (v61)
    {
      sub_1B8D9207C(v86, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_16;
    }

LABEL_38:
    v62 = &qword_1EBAB8E00;
    v63 = &qword_1B964D600;
LABEL_42:
    v65 = v86;
    goto LABEL_43;
  }

  sub_1B906D5EC(v86, v84, &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_99_0(v86 + v49);
  if (v74)
  {
    OUTLINED_FUNCTION_1_97();
    sub_1B95B9E1C();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_0_112();
  sub_1B95B9E70();
  OUTLINED_FUNCTION_102_12();
  sub_1B8D5BA08();
  if ((v75 & 1) == 0 || (OUTLINED_FUNCTION_52_13(), !v61))
  {
    OUTLINED_FUNCTION_7_50();
    sub_1B95B9E1C();
    OUTLINED_FUNCTION_182();
    sub_1B95B9E1C();
    v62 = &qword_1EBAB8DF8;
    v63 = &qword_1B96B9A80;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_252_2();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v79, v80);
  v81 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_6_49();
  sub_1B95B9E1C();
  OUTLINED_FUNCTION_128();
  sub_1B95B9E1C();
  sub_1B8D9207C(v86, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v81 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_16:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v58, v59);
  OUTLINED_FUNCTION_597_0();
  v60 = sub_1B964C850();
LABEL_45:
  OUTLINED_FUNCTION_264(v60);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B8140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1980, type metadata accessor for Searchfoundation_RFSummaryItemAttribution);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B81C0(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBAD18B0, type metadata accessor for Searchfoundation_RFSummaryItemAttribution);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B8230()
{
  sub_1B8CD38D8(&qword_1EBAD18B0, type metadata accessor for Searchfoundation_RFSummaryItemAttribution);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B82C8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1830);
  __swift_project_value_buffer(v0, qword_1EBAD1830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "simple_item_rich_card_section";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "command_reference";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95B84B4()
{
  v0 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  v5 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference;
  v7 = type metadata accessor for Searchfoundation_CommandReference(0);
  result = __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  qword_1EBAD1848 = v3;
  return result;
}

uint64_t sub_1B95B8538(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1858, &unk_1B96DE9F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  v12 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference;
  v14 = type metadata accessor for Searchfoundation_CommandReference(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v15, v10, &qword_1EBAD1858, &unk_1B96DE9F8);
  swift_beginAccess();
  sub_1B906CF4C(v10, v1 + v11, &qword_1EBAD1858, &unk_1B96DE9F8);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v16, v6, &qword_1EBAB8D80, &unk_1B964D580);

  swift_beginAccess();
  sub_1B906CF4C(v6, v1 + v13, &qword_1EBAB8D80, &unk_1B964D580);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B95B873C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value, &qword_1EBAD1858, &unk_1B96DE9F8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference, &qword_1EBAB8D80, &unk_1B964D580);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B95B8828()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v20 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  v15 = *(v0 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = v5(0);
    OUTLINED_FUNCTION_57_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_40_0();
    v17 = v20(v19);
    *(v6 + v14) = v17;
  }

  v2(v17, v12, v10, v8);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B95B88DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1B95B8E88();
    }

    else if (result == 1)
    {
      sub_1B95B8968(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B95B8968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v5 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1858, &unk_1B96DE9F8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC430, &unk_1B96DFD00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  __swift_storeEnumTagSinglePayload(&v33 - v22, 1, 1, v5);
  v24 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  swift_beginAccess();
  v37 = a1;
  v34 = v24;
  sub_1B906D5EC(a1 + v24, v14, &qword_1EBAD1858, &unk_1B96DE9F8);
  v35 = v15;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v14, &qword_1EBAD1858, &unk_1B96DE9F8);
  }

  else
  {
    sub_1B95B9E70();
    sub_1B95B9E70();
    sub_1B8D9207C(v23, &qword_1EBACC430, &unk_1B96DFD00);
    sub_1B95B9E70();
    sub_1B95B9E70();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v5);
  }

  sub_1B8CD38D8(&qword_1ED9C9CA0, type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection);
  v26 = v40;
  sub_1B964C580();
  if (v26)
  {
    v27 = v23;
    return sub_1B8D9207C(v27, &qword_1EBACC430, &unk_1B96DFD00);
  }

  v28 = v39;
  sub_1B906D5EC(v23, v39, &qword_1EBACC430, &unk_1B96DFD00);
  if (__swift_getEnumTagSinglePayload(v28, 1, v5) == 1)
  {
    sub_1B8D9207C(v23, &qword_1EBACC430, &unk_1B96DFD00);
    v27 = v28;
    return sub_1B8D9207C(v27, &qword_1EBACC430, &unk_1B96DFD00);
  }

  sub_1B95B9E70();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v23, &qword_1EBACC430, &unk_1B96DFD00);
  v30 = v36;
  sub_1B95B9E70();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v35);
  v31 = v37;
  v32 = v34;
  swift_beginAccess();
  sub_1B906CF4C(v30, v31 + v32, &qword_1EBAD1858, &unk_1B96DE9F8);
  return swift_endAccess();
}

uint64_t sub_1B95B8E88()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CommandReference(0);
  sub_1B8CD38D8(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95B8F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B95B900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v23 = type metadata accessor for Searchfoundation_CommandReference(0);
  v10 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1858, &unk_1B96DE9F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v18, v15, &qword_1EBAD1858, &unk_1B96DE9F8);
  v19 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAD1858, &unk_1B96DE9F8);
  }

  else
  {
    sub_1B95B9E70();
    sub_1B8CD38D8(&qword_1ED9C9CA0, type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection);
    sub_1B964C740();
    result = sub_1B95B9E1C();
    if (v4)
    {
      return result;
    }
  }

  v21 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__commandReference;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v21, v9, &qword_1EBAB8D80, &unk_1B964D580);
  if (__swift_getEnumTagSinglePayload(v9, 1, v23) == 1)
  {
    return sub_1B8D9207C(v9, &qword_1EBAB8D80, &unk_1B964D580);
  }

  sub_1B95B9E70();
  sub_1B8CD38D8(&qword_1EBACDFE8, type metadata accessor for Searchfoundation_CommandReference);
  sub_1B964C740();
  return sub_1B95B9E1C();
}

uint64_t sub_1B95B93E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_177_1();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_82();
  sub_1B8CD38D8(v13, v14);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B95B94BC()
{
  OUTLINED_FUNCTION_284();
  v81 = v2;
  v4 = v3;
  v78 = type metadata accessor for Searchfoundation_CommandReference(0);
  v5 = OUTLINED_FUNCTION_59_1(v78);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v74 = v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D88, &qword_1B96CA730);
  OUTLINED_FUNCTION_59_1(v77);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v80 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v75 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_266_0();
  v79 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v21 = type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value(v20);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21();
  v76 = v25;
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD19D0, &qword_1B96DFCF8) - 8);
  v27 = *(*v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v73 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1858, &unk_1B96DE9F8);
  v32 = OUTLINED_FUNCTION_183(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_211_5();
  v36 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  OUTLINED_FUNCTION_521();
  v37 = v4 + v36;
  v38 = v81;
  sub_1B906D5EC(v37, v0, &qword_1EBAD1858, &unk_1B96DE9F8);
  v39 = OBJC_IVAR____TtCV10PegasusAPI47Searchfoundation_RFSummaryItemExpandableContentP33_B8878121477FEF1E0BCBBD6E26E37CEF13_StorageClass__value;
  OUTLINED_FUNCTION_521();
  v40 = v26[14];
  v41 = OUTLINED_FUNCTION_542();
  sub_1B906D5EC(v41, v42, &qword_1EBAD1858, &unk_1B96DE9F8);
  sub_1B906D5EC(v38 + v39, &v30[v40], &qword_1EBAD1858, &unk_1B96DE9F8);
  OUTLINED_FUNCTION_178(v30, 1, v21);
  if (!v43)
  {
    sub_1B906D5EC(v30, v1, &qword_1EBAD1858, &unk_1B96DE9F8);
    OUTLINED_FUNCTION_178(&v30[v40], 1, v21);
    if (!v43)
    {
      sub_1B95B9E70();

      OUTLINED_FUNCTION_246();
      v44 = static Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value.== infix(_:_:)();
      sub_1B95B9E1C();
      sub_1B8D9207C(v0, &qword_1EBAD1858, &unk_1B96DE9F8);
      OUTLINED_FUNCTION_690();
      sub_1B95B9E1C();
      sub_1B8D9207C(v30, &qword_1EBAD1858, &unk_1B96DE9F8);
      if (v44)
      {
        goto LABEL_12;
      }

LABEL_10:

      goto LABEL_22;
    }

    sub_1B8D9207C(v0, &qword_1EBAD1858, &unk_1B96DE9F8);
    sub_1B95B9E1C();
LABEL_9:
    sub_1B8D9207C(v30, &qword_1EBAD19D0, &qword_1B96DFCF8);
    goto LABEL_10;
  }

  sub_1B8D9207C(v0, &qword_1EBAD1858, &unk_1B96DE9F8);
  OUTLINED_FUNCTION_178(&v30[v40], 1, v21);
  if (!v43)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v30, &qword_1EBAD1858, &unk_1B96DE9F8);
LABEL_12:
  OUTLINED_FUNCTION_521();
  v45 = v79;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v46, v47, v48, v49);
  OUTLINED_FUNCTION_521();
  v50 = *(v77 + 48);
  v51 = v80;
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v52, v53, v54, v55);
  OUTLINED_FUNCTION_71_10();
  sub_1B906D5EC(v56, v57, v58, v59);
  v60 = OUTLINED_FUNCTION_602();
  v61 = v78;
  OUTLINED_FUNCTION_44(v60, v62);
  if (!v43)
  {
    v63 = v75;
    sub_1B906D5EC(v51, v75, &qword_1EBAB8D80, &unk_1B964D580);
    OUTLINED_FUNCTION_48(v51 + v50);
    if (!v64)
    {
      OUTLINED_FUNCTION_42_18();
      v68 = v74;
      sub_1B95B9E70();
      v69 = *v63 == *v68 && v63[1] == v68[1];
      if (v69 || (sub_1B964C9F0() & 1) != 0)
      {
        v70 = *(v61 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_82();
        sub_1B8CD38D8(v71, v72);
        OUTLINED_FUNCTION_310();
        sub_1B964C850();

        sub_1B95B9E1C();
        sub_1B8D9207C(v45, &qword_1EBAB8D80, &unk_1B964D580);
        sub_1B95B9E1C();
        sub_1B8D9207C(v51, &qword_1EBAB8D80, &unk_1B964D580);
        goto LABEL_22;
      }

      sub_1B95B9E1C();
      sub_1B8D9207C(v45, &qword_1EBAB8D80, &unk_1B964D580);
      sub_1B95B9E1C();
      v67 = OUTLINED_FUNCTION_200();
      v66 = &unk_1B964D580;
      goto LABEL_21;
    }

    sub_1B8D9207C(v45, &qword_1EBAB8D80, &unk_1B964D580);
    sub_1B95B9E1C();
LABEL_20:
    v65 = &qword_1EBAB8D88;
    v66 = &qword_1B96CA730;
    v67 = v51;
LABEL_21:
    sub_1B8D9207C(v67, v65, v66);
    goto LABEL_22;
  }

  sub_1B8D9207C(v45, &qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_48(v51 + v50);
  if (!v43)
  {
    goto LABEL_20;
  }

  sub_1B8D9207C(v51, &qword_1EBAB8D80, &unk_1B964D580);
LABEL_22:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95B9BDC()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD38D8(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95B9CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD38D8(&qword_1EBAD1978, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95B9D2C(uint64_t a1)
{
  v2 = sub_1B8CD38D8(&qword_1EBAD18A8, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95B9D9C()
{
  sub_1B8CD38D8(&qword_1EBAD18A8, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent);

  return sub_1B964C5D0();
}

uint64_t sub_1B95B9E1C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B95B9E70()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B95B9EC4()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

void sub_1B95BAC20()
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B95BAD74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B95BAE00()
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B95BAF28()
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B95BB0A0()
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B95BB210()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B95BB380()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B95BB4B8()
{
  sub_1B95BAD74(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B95BB624()
{
  sub_1B95BAD74(319, &qword_1ED9CF5A0, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1B964C2B0();
    if (v3 <= 0x3F)
    {
      sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_1B95BAD74(319, qword_1ED9D1538, type metadata accessor for Searchfoundation_RFSummaryItemAttribution, MEMORY[0x1E69E6720]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1B95BB804()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B95BB900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B95BB98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1B8D49D94);
}

uint64_t sub_1B95BB9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1B8D49E84);
}

uint64_t sub_1B95BBA4C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_1B95BBAFC()
{
  sub_1B95BAD74(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1B95BAD74(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B95BBC3C()
{
  sub_1B95BAD74(319, &qword_1ED9D04D0, type metadata accessor for Searchfoundation_RFSummaryItemExpandableContent.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B95BAD74(319, qword_1ED9ED650, type metadata accessor for Searchfoundation_CommandReference, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_23_26(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 32), 1, 1, v3);
  return v1 + *(v2 + 36);
}

uint64_t OUTLINED_FUNCTION_34_17(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_39_17@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1B906D5EC(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_99_14()
{
  v0 = type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_106_10@<X0>(uint64_t a1@<X8>)
{

  return sub_1B906D5EC(v1 + a1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_141_13(uint64_t a1)
{

  return sub_1B906D5EC(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_163_9()
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_164_4(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_165_8@<X0>(uint64_t a1@<X8>)
{

  return sub_1B906D5EC(v1 + a1, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_194_5@<X0>(uint64_t a1@<X8>)
{

  return sub_1B906D5EC(v1 + a1, v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_207_7()
{

  return sub_1B95B9E1C();
}

uint64_t OUTLINED_FUNCTION_214_5()
{

  return sub_1B95B9E1C();
}

uint64_t OUTLINED_FUNCTION_215_4()
{
  v2 = *(v0 + 24);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_223_1(uint64_t a1, uint64_t a2)
{

  return sub_1B906D5EC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_224_4()
{

  return sub_1B95B9E1C();
}

uint64_t OUTLINED_FUNCTION_229_3(uint64_t a1, uint64_t a2)
{

  return sub_1B906D5EC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_230_4(uint64_t a1, uint64_t a2)
{

  return sub_1B906D5EC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_232_3()
{
  v2 = *(v0 + 28);

  return type metadata accessor for Searchfoundation_RFTextProperty(0);
}

uint64_t OUTLINED_FUNCTION_246_5()
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_251_4(uint64_t a1, uint64_t a2)
{

  return sub_1B906D5EC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_252_2()
{
  v2 = *(v0 + 24);

  return sub_1B964C2B0();
}

uint64_t Searchfoundation_RFTableHeaderCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v3 = a1 + *(type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFTableRowCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  v3 = a1 + *(type metadata accessor for Searchfoundation_RFTableRowCardSection(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B95BC588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95C434C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_RFTableHeaderInFlowLayout.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B95BC678@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFTableHeaderInFlowLayout.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95BC6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95C43F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_RFColumnHorizontalAlignment.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B95BC7B8@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFColumnHorizontalAlignment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95BC808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95C43A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_RFTableRowVerticalAlignment.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B95BC8F8@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFTableRowVerticalAlignment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_RFTableHeaderCardSection.cells.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Searchfoundation_RFTableHeaderCardSection.compactCells.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void Searchfoundation_RFTableHeaderCardSection.shouldRepeatHeaderInFlowLayout.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_RFTableHeaderCardSection.shouldRepeatHeaderInFlowLayout.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

void Searchfoundation_RFTableHeaderCardSection.verticalAlignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_RFTableHeaderCardSection.verticalAlignment.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Searchfoundation_RFTableHeaderCardSection.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_RFTableHeaderCardSection(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_RFTableHeaderCardSection.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableHeaderCardSection(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_RFTableHeaderCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableHeaderCardSection(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableRowCardSection.cells.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void Searchfoundation_RFTableRowCardSection.verticalAlignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_RFTableRowCardSection.verticalAlignment.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Searchfoundation_RFTableRowCardSection.compactCells.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Searchfoundation_RFTableRowCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableRowCardSection(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableColumnDefinition.spacer.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  OUTLINED_FUNCTION_15_15(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DA8, &qword_1B96DFD10);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B95BD070();
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_9_46();
  OUTLINED_FUNCTION_288();
  return sub_1B95BD324();
}

void (*Searchfoundation_RFTableColumnDefinition.spacer.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition(0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  v3[2] = __swift_coroFrameAllocStub(v9);
  v3[3] = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_461();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  v3[4] = v10;
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_9_46();
      sub_1B95BD324();
      return sub_1B95BD02C;
    }

    sub_1B95BD070();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  return sub_1B95BD02C;
}

uint64_t sub_1B95BD070()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFTableColumnDefinition.content.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  v8 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  OUTLINED_FUNCTION_15_15(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_8_50();
      OUTLINED_FUNCTION_288();
      return sub_1B95BD324();
    }

    sub_1B95BD070();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  return OUTLINED_FUNCTION_69_10();
}

uint64_t sub_1B95BD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B95BD5E4();
  return a7(v7);
}

uint64_t sub_1B95BD258()
{
  sub_1B8D9207C(v0, &qword_1EBAB8DA8, &qword_1B96DFD10);
  OUTLINED_FUNCTION_128();
  sub_1B95BD324();
  type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_72_11();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return OUTLINED_FUNCTION_69_10();
}

uint64_t sub_1B95BD324()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

void (*Searchfoundation_RFTableColumnDefinition.content.modify())()
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DA8, &qword_1B96DFD10);
LABEL_7:
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 1;
    *(v12 + 20) = 0;
    *(v12 + 28) = 0;
    v17 = v12 + *(v10 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    return sub_1B95BD4D0;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B95BD070();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8_50();
  OUTLINED_FUNCTION_128();
  sub_1B95BD324();
  return sub_1B95BD4D0;
}

void sub_1B95BD514()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_54_13(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B95BD5E4();
    sub_1B8D9207C(v3, &qword_1EBAB8DA8, &qword_1B96DFD10);
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_52_15();
    OUTLINED_FUNCTION_132_9();
    sub_1B95BD070();
  }

  else
  {
    sub_1B8D9207C(v3, &qword_1EBAB8DA8, &qword_1B96DFD10);
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_52_15();
    OUTLINED_FUNCTION_132_9();
  }

  free(v2);
  free(v1);
  free(v0);
  OUTLINED_FUNCTION_283();

  free(v6);
}

uint64_t sub_1B95BD5E4()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t Searchfoundation_RFTableColumnDefinition.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_RFTableColumnDefinition(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_RFTableColumnDefinition.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableColumnDefinition(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_RFTableColumnDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableColumnDefinition(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFTableColumnDefinition.OneOf_Definition.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
  v24 = OUTLINED_FUNCTION_183(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition(0);
  v30 = OUTLINED_FUNCTION_183(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_31_8();
  v33 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  v34 = OUTLINED_FUNCTION_59_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_55_15();
  MEMORY[0x1EEE9AC00](v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA0, &unk_1B964D5A0);
  OUTLINED_FUNCTION_183(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_176();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &a9 - v43;
  v45 = *(v42 + 56);
  sub_1B95BD5E4();
  sub_1B95BD5E4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_28_27();
    sub_1B95BD5E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_8_50();
      sub_1B95BD324();
      static Searchfoundation_RFTableContentColumnDefinition.== infix(_:_:)(v20, v28);
      sub_1B95BD070();
LABEL_7:
      sub_1B95BD070();
      OUTLINED_FUNCTION_7_51();
      sub_1B95BD070();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_27();
    sub_1B95BD5E4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_9_46();
      sub_1B95BD324();
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_113();
      sub_1B8CD3920(v46, v47);
      OUTLINED_FUNCTION_461();
      sub_1B964C850();
      sub_1B95BD070();
      OUTLINED_FUNCTION_128();
      goto LABEL_7;
    }
  }

  sub_1B95BD070();
  sub_1B8D9207C(v44, &qword_1EBAB8DA0, &unk_1B964D5A0);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFTableSpacerColumnDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_280();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_113();
  sub_1B8CD3920(v0, v1);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t static Searchfoundation_RFTableContentColumnDefinition.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_468();
    v5 = *(v4 + 8);
    v7 = *(v6 + 8);
    if (*(v6 + 16) == 1)
    {
      switch(v7)
      {
        case 1:
          if (v5 != 1)
          {
            return 0;
          }

          goto LABEL_7;
        case 2:
          if (v5 != 2)
          {
            return 0;
          }

          goto LABEL_7;
        case 3:
          if (v5 != 3)
          {
            return 0;
          }

          goto LABEL_7;
        default:
          if (!v5)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (v5 == v7)
    {
LABEL_7:
      if (*(v3 + 20) == *(v2 + 20) && *(v3 + 24) == *(v2 + 24) && *(v3 + 28) == *(v2 + 28) && *(v3 + 29) == *(v2 + 29))
      {
        v8 = *(type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0) + 40);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_113();
        sub_1B8CD3920(v9, v10);
        return OUTLINED_FUNCTION_634() & 1;
      }
    }
  }

  return 0;
}

uint64_t Searchfoundation_RFTableColumnDefinition.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(v1);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  v3 = v0 + *(type metadata accessor for Searchfoundation_RFTableColumnDefinition(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFTableSpacerColumnDefinition.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_RFTableSpacerColumnDefinition.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_RFTableContentColumnDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableCell.text.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  v8 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_15_15(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8D90, &qword_1B964D590);
LABEL_6:
    *v0 = MEMORY[0x1E69E7CC0];
    *(v0 + 8) = 0;
    v11 = v0 + *(type metadata accessor for Searchfoundation_RFTextProperty(0) + 24);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1B95BD070();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_46();
  OUTLINED_FUNCTION_288();
  return sub_1B95BD324();
}

uint64_t sub_1B95BE0E4()
{
  sub_1B8D9207C(v0, &qword_1EBAB8D90, &qword_1B964D590);
  OUTLINED_FUNCTION_128();
  sub_1B95BD324();
  type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_72_11();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void (*Searchfoundation_RFTableCell.text.modify())()
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_11_46();
      OUTLINED_FUNCTION_128();
      sub_1B95BD324();
      return sub_1B95BE2A4;
    }

    sub_1B95BD070();
  }

  OUTLINED_FUNCTION_77_11(MEMORY[0x1E69E7CC0]);
  return sub_1B95BE2A4;
}

void sub_1B95BE2E8()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_54_13(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B95BD5E4();
    sub_1B8D9207C(v3, &qword_1EBAB8D90, &qword_1B964D590);
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_52_15();
    OUTLINED_FUNCTION_132_9();
    sub_1B95BD070();
  }

  else
  {
    sub_1B8D9207C(v3, &qword_1EBAB8D90, &qword_1B964D590);
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_52_15();
    OUTLINED_FUNCTION_132_9();
  }

  free(v2);
  free(v1);
  free(v0);
  OUTLINED_FUNCTION_283();

  free(v6);
}

uint64_t Searchfoundation_RFTableCell.visual.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_27_9();
  v8 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_15_15(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8D90, &qword_1B964D590);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_10_46();
      OUTLINED_FUNCTION_288();
      return sub_1B95BD324();
    }

    sub_1B95BD070();
  }

  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = 0;
  v12 = v0 + *(type metadata accessor for Searchfoundation_RFVisualProperty(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Searchfoundation_RFTableCell.visual.modify())()
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Searchfoundation_RFVisualProperty(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  v14 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  OUTLINED_FUNCTION_8_22(v14);
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8D90, &qword_1B964D590);
LABEL_7:
    OUTLINED_FUNCTION_77_11(MEMORY[0x1E69E7CC0]);
    return sub_1B95BE614;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B95BD070();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_128();
  sub_1B95BD324();
  return sub_1B95BE614;
}

uint64_t Searchfoundation_RFTableCell.columnSpan.setter(int a1)
{
  result = OUTLINED_FUNCTION_66_9();
  *(v1 + v4) = a1;
  return result;
}

uint64_t Searchfoundation_RFTableCell.columnSpan.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableCell(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableCell.horizontalAlignment.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  result = type metadata accessor for Searchfoundation_RFTableCell(v2);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t Searchfoundation_RFTableCell.horizontalAlignment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for Searchfoundation_RFTableCell(0);
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t Searchfoundation_RFTableCell.horizontalAlignment.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableCell(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFTableCell.applySmallCaps.setter(char a1)
{
  result = type metadata accessor for Searchfoundation_RFTableCell(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Searchfoundation_RFTableCell.applySmallCaps.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableCell(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B95BE868()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B95BE8F0()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_RFTableCell.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFTableCell(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFTableCell.OneOf_Content.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v38 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v2 = OUTLINED_FUNCTION_59_1(v38);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v37 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v5 = OUTLINED_FUNCTION_59_1(v37);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(0);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_55_15();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1AC8, &qword_1B96DFD18);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  v24 = *(v21 + 56);
  sub_1B95BD5E4();
  sub_1B95BD5E4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_27_20();
    sub_1B95BD5E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_10_46();
      sub_1B95BD324();
      v25 = *v1;
      v26 = *v0;
      sub_1B8D5D124();
      if ((v27 & 1) != 0 && *(v1 + 8) == *(v0 + 8))
      {
        v28 = *(v38 + 24);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_113();
        sub_1B8CD3920(v29, v30);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_29_36();
      sub_1B95BD070();
LABEL_14:
      sub_1B95BD070();
      OUTLINED_FUNCTION_3_88();
      sub_1B95BD070();
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_20();
    sub_1B95BD5E4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_11_46();
      sub_1B95BD324();
      v31 = *v16;
      v32 = *v9;
      sub_1B8D5BA08();
      if ((v33 & 1) != 0 && v16[8] == v9[8])
      {
        v34 = *(v37 + 24);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_113();
        sub_1B8CD3920(v35, v36);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_31_29();
      sub_1B95BD070();
      goto LABEL_14;
    }
  }

  sub_1B95BD070();
  sub_1B8D9207C(v23, &qword_1EBAD1AC8, &qword_1B96DFD18);
LABEL_15:
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFTableCell.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Searchfoundation_RFTableCell.OneOf_Content(v1);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  v3 = OUTLINED_FUNCTION_66_9();
  *(v0 + v4) = 0;
  v5 = v0 + v3[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + v3[7]) = 0;
  v6 = v0 + v3[8];
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B95BEDC0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD19F0);
  __swift_project_value_buffer(v0, qword_1EBAD19F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_TABLE_HEADER_FLOW_LAYOUT_DEFAULT";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_TABLE_HEADER_FLOW_LAYOUT_ONLY_FIRST";
  *(v10 + 1) = 38;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_TABLE_HEADER_FLOW_LAYOUT_REPEATED";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95BEFEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A08);
  __swift_project_value_buffer(v0, qword_1EBAD1A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_COLUMN_ALIGNMENT_UNSPECIFIED";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_COLUMN_ALIGNMENT_LEADING";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_COLUMN_ALIGNMENT_CENTER";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_COLUMN_ALIGNMENT_TRAILING";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95BF254()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A20);
  __swift_project_value_buffer(v0, qword_1EBAD1A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_ROW_ALIGNMENT_UNSPECIFIED";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_ROW_ALIGNMENT_TOP";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_ROW_ALIGNMENT_CENTER";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_ROW_ALIGNMENT_BOTTOM";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RF_ROW_ALIGNMENT_FIRST_TEXT_BASELINE";
  *(v16 + 1) = 36;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RF_ROW_ALIGNMENT_LAST_TEXT_BASELINE";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RF_ROW_ALIGNMENT_FIRST_TEXT_LINE_CENTER";
  *(v20 + 1) = 39;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95BF58C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A38);
  __swift_project_value_buffer(v0, qword_1EBAD1A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "columns";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cells";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "compact_cells";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "should_repeat_header_in_flow_layout";
  *(v15 + 1) = 35;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "vertical_alignment";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableHeaderCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95C0388(v3, v4, v5, v6, v7);
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B95BF940();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B95BF9E0();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B95BFA80();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B95BFAE8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95BF940()
{
  type metadata accessor for Searchfoundation_RFTableCell(0);
  sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell);
  return sub_1B964C570();
}

uint64_t sub_1B95BF9E0()
{
  type metadata accessor for Searchfoundation_RFTableCell(0);
  sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell);
  return sub_1B964C570();
}

uint64_t Searchfoundation_RFTableHeaderCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_RFTableColumnDefinition(0), sub_1B8CD3920(&qword_1EBAD1AD0, type metadata accessor for Searchfoundation_RFTableColumnDefinition), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_65_14(), OUTLINED_FUNCTION_2_83(), sub_1B8CD3920(v4, v5), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_65_14(), OUTLINED_FUNCTION_2_83(), sub_1B8CD3920(v6, v7), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        if (!*(v2 + 24) || (v8 = *(v2 + 32), OUTLINED_FUNCTION_94_4(), sub_1B95C434C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          if (!*(v2 + 40) || (v9 = *(v2 + 48), OUTLINED_FUNCTION_94_4(), sub_1B95C43A0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
          {
            v10 = *(type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_RFTableHeaderCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D6AC34();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 8);
  v8 = *(v0 + 8);
  sub_1B8D6B3B4();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 16);
  v11 = *(v0 + 16);
  sub_1B8D6B3B4();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(v0 + 32);
  if (!sub_1B8D92198(*(v1 + 24), *(v1 + 32), *(v0 + 24)))
  {
    return 0;
  }

  v14 = *(v0 + 48);
  if (!sub_1B8D92198(*(v1 + 40), *(v1 + 48), *(v0 + 40)))
  {
    return 0;
  }

  v15 = *(type metadata accessor for Searchfoundation_RFTableHeaderCardSection(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_113();
  sub_1B8CD3920(v16, v17);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B95BFE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C38, type metadata accessor for Searchfoundation_RFTableHeaderCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95BFF18(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBACE5C8, type metadata accessor for Searchfoundation_RFTableHeaderCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95BFF88()
{
  sub_1B8CD3920(&qword_1EBACE5C8, type metadata accessor for Searchfoundation_RFTableHeaderCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C0020()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A50);
  __swift_project_value_buffer(v0, qword_1EBAD1A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cells";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vertical_alignment";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "scale_to_fit";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "compact_cells";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableRowCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B95C0388(v3, v4, v5, v6, v7);
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B95C0420();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B95C0488();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B95C0388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  v5 = OUTLINED_FUNCTION_128();
  sub_1B8CD3920(v5, v6);
  return sub_1B964C570();
}

uint64_t sub_1B95C0488()
{
  type metadata accessor for Searchfoundation_RFTableCell(0);
  sub_1B8CD3920(&qword_1EBAD1AD8, type metadata accessor for Searchfoundation_RFTableCell);
  return sub_1B964C570();
}

uint64_t Searchfoundation_RFTableRowCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_65_14(), OUTLINED_FUNCTION_2_83(), sub_1B8CD3920(v3, v4), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2 + 8) || (v6 = *(v2 + 16), OUTLINED_FUNCTION_94_4(), sub_1B95C43A0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      if (*(v2 + 17) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
      {
        if (!*(*(v2 + 24) + 16) || (OUTLINED_FUNCTION_65_14(), OUTLINED_FUNCTION_2_83(), sub_1B8CD3920(v7, v8), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
        {
          v9 = *(type metadata accessor for Searchfoundation_RFTableRowCardSection(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_RFTableRowCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D6B3B4();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v0 + 16);
  if (!sub_1B8D92198(*(v1 + 8), *(v1 + 16), *(v0 + 8)))
  {
    return 0;
  }

  if (*(v1 + 17) != *(v0 + 17))
  {
    return 0;
  }

  v8 = *(v1 + 24);
  v9 = *(v0 + 24);
  sub_1B8D6B3B4();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Searchfoundation_RFTableRowCardSection(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_113();
  sub_1B8CD3920(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B95C07DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3920(&qword_1EBAD1C30, type metadata accessor for Searchfoundation_RFTableRowCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95C085C(uint64_t a1)
{
  v2 = sub_1B8CD3920(&qword_1EBACE5C0, type metadata accessor for Searchfoundation_RFTableRowCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95C08CC()
{
  sub_1B8CD3920(&qword_1EBACE5C0, type metadata accessor for Searchfoundation_RFTableRowCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95C0964()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1A68);
  __swift_project_value_buffer(v0, qword_1EBAD1A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "spacer";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFTableColumnDefinition.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B95C10B4(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B95C0BBC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B95C0BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1C40, &qword_1B96E0C98);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    sub_1B95BD324();
    sub_1B95BD324();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B95BD070();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAD1C40, &qword_1B96E0C98);
      sub_1B95BD324();
      sub_1B95BD324();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD3920(&qword_1EBAD1BD8, type metadata accessor for Searchfoundation_RFTableSpacerColumnDefinition);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAD1C40, &qword_1B96E0C98);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAD1C40, &qword_1B96E0C98);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAD1C40, &qword_1B96E0C98);
  }

  sub_1B95BD324();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAD1C40, &qword_1B96E0C98);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8DA8, &qword_1B96DFD10);
  sub_1B95BD324();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B95C10B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_RFTableContentColumnDefinition(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1C48, &unk_1B96E0CA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8DA8, &qword_1B96DFD10);
  }

  else
  {
    sub_1B95BD324();
    sub_1B95BD324();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAD1C48, &unk_1B96E0CA0);
      sub_1B95BD324();
      sub_1B95BD324();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B95BD070();
    }
  }

  sub_1B8CD3920(&qword_1EBAD1BF0, type metadata accessor for Searchfoundation_RFTableContentColumnDefinition);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAD1C48, &unk_1B96E0CA0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAD1C48, &unk_1B96E0CA0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAD1C48, &unk_1B96E0CA0);
  }

  sub_1B95BD324();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAD1C48, &unk_1B96E0CA0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB8DA8, &qword_1B96DFD10);
  sub_1B95BD324();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Searchfoundation_RFTableColumnDefinition.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DA8, &qword_1B96DFD10);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFTableColumnDefinition.OneOf_Definition(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B95C1904(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_24_3();
    sub_1B95C16F0(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_7_51();
  result = sub_1B95BD070();
  if (!v1)
  {
LABEL_6:
    v18 = v0 + *(type metadata accessor for Searchfoundation_RFTableColumnDefinition(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}