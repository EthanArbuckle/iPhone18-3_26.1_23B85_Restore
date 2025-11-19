void sub_1BFA531B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAF858();
  [a3 setText_];
}

void sub_1BFA53210(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAF858();
  [a3 setSpeakableTextOverride_];
}

void sub_1BFA53274(uint64_t a1, void *a2)
{
  sub_1BFA3C744(0, &qword_1EBDFBBA0, 0x1E69C7708);
  v3 = sub_1BFAAF9D8();

  [a2 setViews_];
}

uint64_t sub_1BFA53304(unsigned __int8 a1, char a2)
{
  v2 = 0x3172656974;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x3272656974;
    }

    else
    {
      v4 = 0x6B6361626C6C6166;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x3172656974;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x3272656974;
    }

    else
    {
      v2 = 0x6B6361626C6C6166;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_4();
  }

  return v8 & 1;
}

uint64_t sub_1BFA533E8(unsigned __int8 a1, char a2)
{
  v2 = 0x7373696D736964;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x7373696D736964;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_69_1();
      v3 = 0xED00007061546E6FLL;
      break;
    case 2:
      v5 = 0x6F4D686374697773;
      v3 = 0xEA00000000006564;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x74696D627573;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6974736567677573;
      v6 = 0xED00007061546E6FLL;
      break;
    case 2:
      v2 = 0x6F4D686374697773;
      v6 = 0xEA00000000006564;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x74696D627573;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_4();
  }

  return v8 & 1;
}

uint64_t sub_1BFA53534(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6169646E496E6170;
  }

  else
  {
    v3 = 0x737567616DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6169646E496E6170;
  }

  else
  {
    v5 = 0x737567616DLL;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_4();
  }

  return v8 & 1;
}

uint64_t sub_1BFA535C4(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x65746E6573657270;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x646570706174;
    }

    else
    {
      v5 = 0x64657265646E6572;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x65746E6573657270;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x646570706174;
    }

    else
    {
      v3 = 0x64657265646E6572;
    }

    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_67_2();
  }

  return v8 & 1;
}

uint64_t sub_1BFA536B0(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065707954;
  v3 = 0x7974697669746361;
  v4 = a1;
  v5 = "catGlobalProperties";
  v6 = 0x7974697669746361;
  v7 = 0xEC00000065707954;
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_47_3();
      v9 = v10 - 32;
      goto LABEL_9;
    case 2:
      goto LABEL_10;
    case 3:
      v7 = 0x80000001BFAB85B0;
      v6 = 0xD000000000000013;
      goto LABEL_10;
    case 4:
      v6 = 0x45746E65696C6173;
      v7 = 0xEF7365697469746ELL;
      goto LABEL_10;
    case 5:
      v6 = 0x7453656369766564;
      v7 = 0xEB00000000657461;
      goto LABEL_10;
    case 6:
      v6 = OUTLINED_FUNCTION_47_3();
      v9 = v11 - 32;
      goto LABEL_9;
    case 7:
      v7 = 0xE500000000000000;
      v6 = 0x72656E776FLL;
      goto LABEL_10;
    default:
      v6 = OUTLINED_FUNCTION_47_3();
      v9 = v8 - 32;
LABEL_9:
      v7 = v9 | 0x8000000000000000;
LABEL_10:
      switch(a2)
      {
        case 1:
          OUTLINED_FUNCTION_86_1();
          v13 = v14 - 32;
          goto LABEL_18;
        case 2:
          goto LABEL_19;
        case 3:
          v2 = (v5 - 32) | 0x8000000000000000;
          v3 = 0xD000000000000013;
          goto LABEL_19;
        case 4:
          v3 = 0x45746E65696C6173;
          v2 = 0xEF7365697469746ELL;
          goto LABEL_19;
        case 5:
          v3 = 0x7453656369766564;
          v2 = 0xEB00000000657461;
          goto LABEL_19;
        case 6:
          OUTLINED_FUNCTION_86_1();
          v13 = v15 - 32;
          goto LABEL_18;
        case 7:
          v2 = 0xE500000000000000;
          v3 = 0x72656E776FLL;
          goto LABEL_19;
        default:
          OUTLINED_FUNCTION_86_1();
          v13 = v12 - 32;
LABEL_18:
          v2 = v13 | 0x8000000000000000;
LABEL_19:
          if (v6 == v3 && v7 == v2)
          {
            v17 = 1;
          }

          else
          {
            v17 = OUTLINED_FUNCTION_67_2();
          }

          return v17 & 1;
      }
  }
}

uint64_t sub_1BFA538B8(unsigned __int8 a1, char a2)
{
  v2 = 0x72656E776FLL;
  v3 = 0xE500000000000000;
  v4 = "templatingResult";
  v5 = "intentsToSuggest";
  v6 = a1;
  v7 = "intentProperties";
  v8 = 0x72656E776FLL;
  v9 = "dialogIdentifier";
  switch(v6)
  {
    case 1:
      v10 = "dialogIdentifier";
      goto LABEL_8;
    case 2:
      v10 = "intentProperties";
      goto LABEL_8;
    case 3:
      goto LABEL_9;
    case 4:
      v8 = 0x4974694B69726973;
      v3 = 0xED0000746E65746ELL;
      goto LABEL_9;
    case 5:
      v8 = 0x746E65746E496B73;
      v3 = 0xEE00746C75736552;
      goto LABEL_9;
    case 6:
      v10 = "tent";
      goto LABEL_8;
    default:
      v10 = "assistant_service";
LABEL_8:
      v3 = v10 | 0x8000000000000000;
      v8 = OUTLINED_FUNCTION_47_3();
LABEL_9:
      v11 = 0xE500000000000000;
      switch(a2)
      {
        case 1:
          v12 = v7 - 32;
          goto LABEL_16;
        case 2:
          v12 = v5 - 32;
          goto LABEL_16;
        case 3:
          goto LABEL_17;
        case 4:
          v2 = 0x4974694B69726973;
          v11 = 0xED0000746E65746ELL;
          goto LABEL_17;
        case 5:
          v2 = 0x746E65746E496B73;
          v11 = 0xEE00746C75736552;
          goto LABEL_17;
        case 6:
          v12 = v4 - 32;
          goto LABEL_16;
        default:
          v12 = v9 - 32;
LABEL_16:
          v11 = v12 | 0x8000000000000000;
          OUTLINED_FUNCTION_86_1();
LABEL_17:
          if (v8 == v2 && v3 == v11)
          {
            v14 = 1;
          }

          else
          {
            v14 = OUTLINED_FUNCTION_35_4();
          }

          return v14 & 1;
      }
  }
}

uint64_t sub_1BFA53A64(unsigned __int8 a1, char a2)
{
  v2 = 1701998445;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701998445;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v3 = 0x80000001BFAB8500;
      break;
    case 2:
      v5 = 0x726F4D6E7261656CLL;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = 0x6E69796173797274;
      v3 = 0xE900000000000067;
      break;
    case 4:
      v5 = 0x746E69726568746FLL;
      v3 = 0xEA00000000006F72;
      break;
    case 5:
      v5 = 0x706C654869726973;
      v6 = 0x726564616548;
      goto LABEL_8;
    case 6:
      v3 = 0x80000001BFAB8550;
      v5 = 0xD00000000000001FLL;
      break;
    case 7:
      v5 = 0x726F707075736E75;
      v6 = 0x707041646574;
LABEL_8:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 8:
      v3 = 0x80000001BFAB8580;
      v5 = 0xD000000000000019;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000013;
      v7 = 0x80000001BFAB8500;
      break;
    case 2:
      v2 = 0x726F4D6E7261656CLL;
      v7 = 0xE900000000000065;
      break;
    case 3:
      v2 = 0x6E69796173797274;
      v7 = 0xE900000000000067;
      break;
    case 4:
      v2 = 0x746E69726568746FLL;
      v7 = 0xEA00000000006F72;
      break;
    case 5:
      v2 = 0x706C654869726973;
      v8 = 0x726564616548;
      goto LABEL_18;
    case 6:
      v7 = 0x80000001BFAB8550;
      v2 = 0xD00000000000001FLL;
      break;
    case 7:
      v2 = 0x726F707075736E75;
      v8 = 0x707041646574;
LABEL_18:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 8:
      v7 = 0x80000001BFAB8580;
      v2 = 0xD000000000000019;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_35_4();
  }

  return v10 & 1;
}

uint64_t sub_1BFA53D78(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1BFA567B4(a4, a5);
  sub_1BFAAF998();
  sub_1BFAAF998();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_67_2();
  }

  return v8 & 1;
}

uint64_t SiriSuggestions.Suggestion.suggestionId.getter()
{
  v0 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_78_1(v0);
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriSuggestions.Suggestion.presentation.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = *(type metadata accessor for SiriSuggestions.Suggestion(v0) + 24);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_40_2(v2);
  return sub_1BFA58DF4();
}

uint64_t SiriSuggestions.Suggestion.owner.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  v2 = OUTLINED_FUNCTION_40_2(*(v1 + 32));

  return sub_1BF9F94C4(v2, v3);
}

uint64_t SiriSuggestions.Suggestion.sourceOwner.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  v2 = OUTLINED_FUNCTION_40_2(*(v1 + 36));

  return sub_1BF9F94C4(v2, v3);
}

uint64_t SiriSuggestions.Suggestion.invocationAction.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  OUTLINED_FUNCTION_40_2(*(v1 + 40));
  return sub_1BFA54188();
}

void SiriSuggestions.Suggestion.rankInfo.getter()
{
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for SiriSuggestions.Suggestion(v2);
  v4 = OUTLINED_FUNCTION_59_1((v1 + *(v3 + 44)));
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
}

uint64_t SiriSuggestions.Suggestion.loggingAction.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = *(type metadata accessor for SiriSuggestions.Suggestion(v0) + 48);
  v2 = sub_1BFAAF1E8();
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_38_2();

  return v6(v5);
}

uint64_t SiriSuggestions.Suggestion.channelAndScore.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  OUTLINED_FUNCTION_40_2(*(v1 + 52));
  return sub_1BFA54188();
}

uint64_t SiriSuggestions.Suggestion.objective.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = *(type metadata accessor for SiriSuggestions.Suggestion(v0) + 56);
  v2 = sub_1BFAAF318();
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_38_2();

  return v6(v5);
}

uint64_t SiriSuggestions.Suggestion.associatedTool.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  OUTLINED_FUNCTION_40_2(*(v1 + 60));
  return sub_1BFA54188();
}

uint64_t sub_1BFA54188()
{
  OUTLINED_FUNCTION_36_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_96();
  v7(v6);
  return v0;
}

uint64_t SiriSuggestions.Suggestion.suggestionType.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = *(type metadata accessor for SiriSuggestions.Suggestion(v0) + 64);
  v2 = sub_1BFAAEB28();
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_38_2();

  return v6(v5);
}

uint64_t SiriSuggestions.Suggestion.init(identifier:suggestionId:deliveryVehicle:owner:sourceOwner:presentation:invocationAction:rankInfo:loggingAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v135 = a8;
  v138 = a7;
  v139 = a6;
  v140 = a5;
  v125 = a3;
  v124 = a2;
  v123 = a9;
  v134 = a11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
  OUTLINED_FUNCTION_60_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16_4(&v116 - v18);
  v19 = sub_1BFAAF318();
  v20 = OUTLINED_FUNCTION_2_3(v19);
  v146 = v21;
  v147 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20, v24);
  OUTLINED_FUNCTION_2();
  v145 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
  OUTLINED_FUNCTION_60_0(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v30, v31);
  v144 = &v116 - v32;
  v142 = sub_1BFAAF1E8();
  v33 = OUTLINED_FUNCTION_2_3(v142);
  v137 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33, v37);
  OUTLINED_FUNCTION_2();
  v40 = OUTLINED_FUNCTION_16_4(v39 - v38);
  v41 = type metadata accessor for SiriSuggestions.SuggestionPresentation(v40);
  v42 = OUTLINED_FUNCTION_60_0(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42, v45);
  OUTLINED_FUNCTION_2();
  v136 = v47 - v46;
  v48 = sub_1BFAAEEF8();
  v49 = OUTLINED_FUNCTION_2_3(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49, v54);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v116 - v57;
  v59 = sub_1BFAAE3F8();
  v60 = OUTLINED_FUNCTION_2_3(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60, v65);
  OUTLINED_FUNCTION_2();
  v68 = v67 - v66;
  v122 = *a10;
  v69 = a10[1];
  v121 = *(a10 + 16);
  v120 = a10[3];
  v119 = *(a10 + 32);
  v128 = v62;
  v133 = *(v62 + 16);
  v132 = a1;
  v133(v67 - v66, a1, v59);
  v130 = v51;
  v118 = *(v51 + 16);
  v131 = a4;
  v118(v58, a4, v48);
  sub_1BF9F94C4(v140, &v150);
  sub_1BF9F94C4(v139, &v149);
  OUTLINED_FUNCTION_24_6();
  sub_1BFA58DF4();
  sub_1BFA54188();
  v117 = *(v137 + 16);
  (v117)(v143, v134, v142);
  v70 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  __swift_storeEnumTagSinglePayload(v144, 1, 1, v70);
  (*(v146 + 104))(v145, *MEMORY[0x1E69D32B0], v147);
  v71 = sub_1BFAAF758();
  __swift_storeEnumTagSinglePayload(v141, 1, 1, v71);
  v72 = v123;
  v127 = v68;
  v129 = v59;
  v133(v123, v68, v59);
  v73 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v74 = OUTLINED_FUNCTION_78_1(v73);
  v75 = v125;
  *v76 = v124;
  v76[1] = v75;
  v77 = (v72 + *(v74 + 28));
  v133 = v58;
  v126 = v48;
  v118(v77, v58, v48);
  sub_1BF9F94C4(&v150, v72 + v73[8]);
  v78 = v72 + v73[6];
  v79 = v72;
  sub_1BFA58DF4();
  v80 = v73[10];
  sub_1BFA54188();
  sub_1BF9F94C4(&v149, v72 + v73[9]);
  v81 = v72 + v73[11];
  *v81 = v122;
  *(v81 + 8) = v69;
  *(v81 + 16) = v121;
  *(v81 + 24) = v120;
  *(v81 + 32) = v119;
  v82 = v142;
  v117(v72 + v73[12], v143);
  v83 = v73[13];
  sub_1BFA54188();
  (*(v146 + 16))(v72 + v73[14], v145, v147);
  v84 = v73[15];
  sub_1BFA54188();

  OUTLINED_FUNCTION_47_3();
  v85 = sub_1BFAAF968();

  if (v85)
  {
    v86 = *MEMORY[0x1E69D3050];
    OUTLINED_FUNCTION_76_1();
    v87 = v116;
    v88 = v126;
    (*(v85 + 104))(v116);
    OUTLINED_FUNCTION_4_8();
    LODWORD(v125) = sub_1BFA53D78(v133, v87, v89, v90, MEMORY[0x1E69D3090]);
    v91 = OUTLINED_FUNCTION_34_4();
    v92(v91);
    sub_1BF9FAB40(v135, &qword_1EBDFB658, &unk_1BFAB3CB0);
    OUTLINED_FUNCTION_0_9();
    v135 = v93;
    sub_1BFA58E4C(v138, v94);
    __swift_destroy_boxed_opaque_existential_2Tm(v139);
    __swift_destroy_boxed_opaque_existential_2Tm(v140);
    v95 = *(v85 + 8);
    v96 = OUTLINED_FUNCTION_57_2(v151);
    v95(v96);
    v97 = *(v128 + 8);
    v98 = v129;
    v97(v132, v129);
    (v95)(v87, v88);
    (*(v146 + 8))(v145, v147);
    sub_1BF9FAB40(v144, &qword_1EBDFB9B0, &qword_1BFAB2628);
    v99 = OUTLINED_FUNCTION_42_1();
    v100(v99);
    sub_1BF9FAB40(v148, &qword_1EBDFB658, &unk_1BFAB3CB0);
    sub_1BFA58E4C(v136, v135);
    __swift_destroy_boxed_opaque_existential_2Tm(&v149);
    __swift_destroy_boxed_opaque_existential_2Tm(&v150);
    v101 = OUTLINED_FUNCTION_57_2(&v152);
    v95(v101);
    v97(v127, v98);
    if (v125)
    {
      v102 = MEMORY[0x1E69D2D90];
    }

    else
    {
      v102 = MEMORY[0x1E69D2D98];
    }
  }

  else
  {
    v103 = OUTLINED_FUNCTION_34_4();
    v104(v103);
    sub_1BF9FAB40(v135, &qword_1EBDFB658, &unk_1BFAB3CB0);
    OUTLINED_FUNCTION_24_6();
    sub_1BFA58E4C(v138, v105);
    __swift_destroy_boxed_opaque_existential_2Tm(v139);
    __swift_destroy_boxed_opaque_existential_2Tm(v140);
    OUTLINED_FUNCTION_76_1();
    v140 = *(v85 + 8);
    (v140)(v131, v126);
    v106 = *(v128 + 8);
    v107 = v129;
    v106(v132, v129);
    (*(v146 + 8))(v145, v147);
    sub_1BF9FAB40(v144, &qword_1EBDFB9B0, &qword_1BFAB2628);
    v108 = OUTLINED_FUNCTION_42_1();
    v109(v108);
    sub_1BF9FAB40(v148, &qword_1EBDFB658, &unk_1BFAB3CB0);
    sub_1BFA58E4C(v136, v82);
    __swift_destroy_boxed_opaque_existential_2Tm(&v149);
    __swift_destroy_boxed_opaque_existential_2Tm(&v150);
    v110 = OUTLINED_FUNCTION_57_2(&v152);
    (v140)(v110);
    v106(v127, v107);
    v102 = MEMORY[0x1E69D2D98];
  }

  sub_1BF9FAB40(v141, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
  v111 = v73[16];
  v112 = *v102;
  v113 = sub_1BFAAEB28();
  OUTLINED_FUNCTION_0(v113);
  return (*(v114 + 104))(v79 + v111, v112);
}

uint64_t SiriSuggestions.Suggestion.init(identifier:suggestionId:deliveryVehicle:owner:sourceOwner:presentation:invocationAction:rankInfo:loggingAction:channelAndScore:objective:associatedTool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = sub_1BFAAEEF8();
  v22 = OUTLINED_FUNCTION_2_3(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22, v27);
  OUTLINED_FUNCTION_2();
  v71 = v29 - v28;
  v69 = *a10;
  v30 = a10[1];
  v68 = *(a10 + 16);
  v67 = a10[3];
  v66 = *(a10 + 32);
  v31 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_18(v31);
  v73 = v33;
  v74 = v32;
  v78 = a1;
  (*(v33 + 16))(a9, a1);
  v34 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v35 = (a9 + v34[5]);
  *v35 = a2;
  v35[1] = a3;
  v77 = v24;
  (*(v24 + 16))(a9 + v34[7], a4, v21);
  v76 = a5;
  sub_1BF9F94C4(a5, a9 + v34[8]);
  v36 = v34[6];
  OUTLINED_FUNCTION_8_4();
  v75 = a7;
  sub_1BFA58DF4();
  v37 = v34[10];
  v72 = a8;
  sub_1BFA54188();
  sub_1BF9F94C4(a6, a9 + v34[9]);
  v38 = a9 + v34[11];
  *v38 = v69;
  *(v38 + 8) = v30;
  *(v38 + 16) = v68;
  *(v38 + 24) = v67;
  *(v38 + 32) = v66;
  v39 = v34[12];
  v40 = sub_1BFAAF1E8();
  OUTLINED_FUNCTION_18(v40);
  v42 = v41;
  (*(v41 + 16))(a9 + v39, a11, v40);
  v43 = v34[13];
  sub_1BFA54188();
  v44 = v34[14];
  v45 = sub_1BFAAF318();
  OUTLINED_FUNCTION_18(v45);
  v47 = v46;
  (*(v46 + 16))(a9 + v44);
  v48 = v34[15];
  sub_1BFA54188();

  OUTLINED_FUNCTION_47_3();
  LOBYTE(v44) = sub_1BFAAF968();

  if (v44)
  {
    (*(v77 + 104))(v71, *MEMORY[0x1E69D3050], v21);
    OUTLINED_FUNCTION_4_8();
    v70 = sub_1BFA53D78(a4, v71, v49, v50, MEMORY[0x1E69D3090]);
    (*(v47 + 8))(a13, v45);
    sub_1BF9FAB40(a12, &qword_1EBDFB9B0, &qword_1BFAB2628);
    (*(v42 + 8))(a11, v40);
    sub_1BF9FAB40(v72, &qword_1EBDFB658, &unk_1BFAB3CB0);
    OUTLINED_FUNCTION_0_9();
    sub_1BFA58E4C(v75, v51);
    __swift_destroy_boxed_opaque_existential_2Tm(a6);
    __swift_destroy_boxed_opaque_existential_2Tm(v76);
    v52 = *(v77 + 8);
    v52(a4, v21);
    (*(v73 + 8))(v78, v74);
    v52(v71, v21);
    if (v70)
    {
      sub_1BF9FAB40(a14, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
      v53 = v34[16];
      v54 = *MEMORY[0x1E69D2D90];
      v55 = sub_1BFAAEB28();
      OUTLINED_FUNCTION_0(v55);
      return (*(v56 + 104))(a9 + v53, v54);
    }
  }

  else
  {
    (*(v47 + 8))(a13, v45);
    sub_1BF9FAB40(a12, &qword_1EBDFB9B0, &qword_1BFAB2628);
    (*(v42 + 8))(a11, v40);
    sub_1BF9FAB40(v72, &qword_1EBDFB658, &unk_1BFAB3CB0);
    OUTLINED_FUNCTION_0_9();
    sub_1BFA58E4C(v75, v58);
    __swift_destroy_boxed_opaque_existential_2Tm(a6);
    __swift_destroy_boxed_opaque_existential_2Tm(v76);
    (*(v77 + 8))(a4, v21);
    (*(v73 + 8))(v78, v74);
  }

  v59 = sub_1BFAAF758();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a14, 1, v59);
  sub_1BF9FAB40(a14, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
  v61 = v34[16];
  v62 = sub_1BFAAEB28();
  OUTLINED_FUNCTION_0(v62);
  if (EnumTagSinglePayload == 1)
  {
    v64 = MEMORY[0x1E69D2D98];
  }

  else
  {
    v64 = MEMORY[0x1E69D2DA0];
  }

  return (*(v63 + 104))(a9 + v61, *v64);
}

void SiriSuggestions.Suggestion.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v186 = v0;
  v2 = v1;
  v162 = v3;
  v163 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v4 = OUTLINED_FUNCTION_0(v163);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_2();
  v164 = v9 - v8;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
  v10 = OUTLINED_FUNCTION_0(v165);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16_4(v16);
  v175 = sub_1BFAAF318();
  v17 = OUTLINED_FUNCTION_2_3(v175);
  v171 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17, v21);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_10();
  v174 = v24;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
  v25 = OUTLINED_FUNCTION_0(v176);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16_4(v31);
  v179 = sub_1BFAAF1E8();
  v32 = OUTLINED_FUNCTION_2_3(v179);
  v177 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32, v36);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_10();
  v40 = OUTLINED_FUNCTION_16_4(v39);
  v184 = type metadata accessor for SiriSuggestions.SuggestionPresentation(v40);
  v41 = OUTLINED_FUNCTION_0(v184);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41, v44);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v45, v46);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16_4(v47);
  v181 = sub_1BFAAEEF8();
  v48 = OUTLINED_FUNCTION_2_3(v181);
  v180 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48, v52);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v53, v54);
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16_4(v57);
  v58 = sub_1BFAAE3F8();
  v59 = OUTLINED_FUNCTION_2_3(v58);
  v183 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59, v63);
  OUTLINED_FUNCTION_4_0();
  v66 = v64 - v65;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v151 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBB0, &unk_1BFAB3CC8);
  OUTLINED_FUNCTION_2_3(v71);
  v185 = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = v2[3];
  v77 = v2[4];
  v187 = v2;
  OUTLINED_FUNCTION_83_1(v2, v78);
  v79 = sub_1BFA56760();
  v80 = v186;
  sub_1BFAAFFF8();
  if (!v80)
  {
    v186 = v79;
    v160 = v66;
    v197 = 0;
    OUTLINED_FUNCTION_2_8();
    sub_1BFA567B4(v81, v82);
    sub_1BFAAFE08();
    v197 = 1;
    v157 = sub_1BFAAFDC8();
    v158 = v83;
    v159 = v70;
    v197 = 2;
    OUTLINED_FUNCTION_25_3();
    sub_1BFA567B4(v84, v85);
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_76_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    v196 = 3;
    sub_1BFAAEE58();
    v194 = 4;
    sub_1BFAAEE58();
    v194 = 5;
    OUTLINED_FUNCTION_23_4();
    sub_1BFA567B4(v86, v87);
    OUTLINED_FUNCTION_75_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBB8, &qword_1BFAB3CD8);
    LOBYTE(v190[0]) = 6;
    sub_1BFAAEE18();
    LOBYTE(v189[0]) = 7;
    sub_1BFA567FC();
    OUTLINED_FUNCTION_75_1();
    v186 = v58;
    v88 = v190[0];
    v89 = v190[1];
    v90 = v191;
    v91 = v192;
    v92 = v193;
    LOBYTE(v190[0]) = 8;
    OUTLINED_FUNCTION_27_5();
    sub_1BFA567B4(v93, v94);
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_75_1();
    LOBYTE(v190[0]) = 9;
    sub_1BFA58D14(&qword_1EDCC7058, &qword_1EDCC7060);
    OUTLINED_FUNCTION_81_0();
    v184 = v71;
    OUTLINED_FUNCTION_75_1();
    LOBYTE(v190[0]) = 10;
    OUTLINED_FUNCTION_26_2();
    sub_1BFA567B4(v95, v96);
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_54_2();
    LOBYTE(v190[0]) = 11;
    sub_1BFA56850(&qword_1EDCC6FE0, &qword_1EDCC6FE8);
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_54_2();
    v176 = 0;
    OUTLINED_FUNCTION_76_1();
    v152 = MEMORY[0x10];
    v97 = v160;
    MEMORY[0x10](v160, v159, v186);
    v98 = *(v180 + 16);
    v155 = v180 + 16;
    v165 = v98;
    v98(v167, v182, v181);
    sub_1BF9F94C4(&v197, v190);
    sub_1BF9F94C4(&v196, v189);
    OUTLINED_FUNCTION_8_4();
    v151 = v99;
    OUTLINED_FUNCTION_37_2();
    sub_1BFA58DF4();
    sub_1BFA54188();
    v100 = *(v177 + 16);
    v154 = v177 + 16;
    v156 = v100;
    v100(v166, v178, v179);
    OUTLINED_FUNCTION_61_1();
    sub_1BFA54188();
    v153 = *(v171 + 2);
    v153(v170, v174, v175);
    sub_1BFA54188();
    v101 = v164;
    v152(v164, v97, v186);
    v102 = v163;
    v103 = (v101 + v163[5]);
    v104 = v158;
    *v103 = v157;
    v103[1] = v104;
    (v165)(v101 + v102[7], v167, v181);
    sub_1BF9F94C4(v190, v101 + v102[8]);
    v105 = v101 + v102[6];
    sub_1BFA58DF4();
    v106 = v102[10];
    sub_1BFA54188();
    sub_1BF9F94C4(v189, v101 + v102[9]);
    v107 = v101 + v102[11];
    *v107 = v88;
    *(v107 + 8) = v89;
    *(v107 + 16) = v90;
    *(v107 + 24) = v91;
    *(v107 + 32) = v92;
    v156(v101 + v102[12], v166, v179);
    v108 = v101 + v102[13];
    sub_1BFA54188();
    v153(v101 + v102[14], v170, v175);
    v109 = v101 + v102[15];
    sub_1BFA54188();

    OUTLINED_FUNCTION_47_3();
    LOBYTE(v102) = sub_1BFAAF968();

    if (v102)
    {
      v110 = v180;
      v111 = v161;
      v112 = v181;
      (*(v180 + 104))(v161, *MEMORY[0x1E69D3050], v181);
      OUTLINED_FUNCTION_4_8();
      v113 = v167;
      LODWORD(v165) = sub_1BFA53D78(v167, v111, v114, v115, MEMORY[0x1E69D3090]);
      v116 = *(v110 + 8);
      v116(v111, v112);
      v158 = v116;
      v180 = *(v171 + 1);
      (v180)(v170, v175);
      sub_1BF9FAB40(v169, &qword_1EBDFB9B0, &qword_1BFAB2628);
      v117 = OUTLINED_FUNCTION_41_2(*(v177 + 8));
      v118(v117);
      sub_1BF9FAB40(v188, &qword_1EBDFB658, &unk_1BFAB3CB0);
      sub_1BFA58E4C(v168, type metadata accessor for SiriSuggestions.SuggestionPresentation);
      __swift_destroy_boxed_opaque_existential_2Tm(v189);
      __swift_destroy_boxed_opaque_existential_2Tm(v190);
      v116(v113, v112);
      v119 = *(v183 + 8);
      v120 = v186;
      v119(v160, v186);
      sub_1BF9FAB40(v173, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
      v121 = OUTLINED_FUNCTION_46_3(v195);
      (v180)(v121);
      v122 = OUTLINED_FUNCTION_61_1();
      sub_1BF9FAB40(v122, &qword_1EBDFB9B0, &qword_1BFAB2628);
      v123 = OUTLINED_FUNCTION_44_2();
      v124(v123);
      sub_1BF9FAB40(&v194, &qword_1EBDFB658, &unk_1BFAB3CB0);
      v125 = OUTLINED_FUNCTION_37_2();
      sub_1BFA58E4C(v125, type metadata accessor for SiriSuggestions.SuggestionPresentation);
      OUTLINED_FUNCTION_39_4();
      v158(v182, v112);
      v119(v159, v120);
      v126 = OUTLINED_FUNCTION_10_6();
      v127(v126);
      if (v165)
      {
        v128 = MEMORY[0x1E69D2D90];
LABEL_12:
        sub_1BF9FAB40(v172, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
        v146 = v163[16];
        v147 = *v128;
        v148 = sub_1BFAAEB28();
        OUTLINED_FUNCTION_0(v148);
        v150 = v164;
        (*(v149 + 104))(v164 + v146, v147);
        sub_1BFA1CA58(v150, v162);
        __swift_destroy_boxed_opaque_existential_2Tm(v187);
        goto LABEL_4;
      }
    }

    else
    {
      v129 = *(v171 + 1);
      v130 = OUTLINED_FUNCTION_46_3(&v191);
      v129(v130);
      sub_1BF9FAB40(v169, &qword_1EBDFB9B0, &qword_1BFAB2628);
      v131 = OUTLINED_FUNCTION_41_2(*(v177 + 8));
      v132(v131);
      sub_1BF9FAB40(v188, &qword_1EBDFB658, &unk_1BFAB3CB0);
      OUTLINED_FUNCTION_0_9();
      v171 = v133;
      sub_1BFA58E4C(v168, v134);
      __swift_destroy_boxed_opaque_existential_2Tm(v189);
      __swift_destroy_boxed_opaque_existential_2Tm(v190);
      v180 = *(v180 + 8);
      (v180)(v167, v181);
      v135 = *(v183 + 8);
      v136 = v186;
      v135(v160, v186);
      sub_1BF9FAB40(v173, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
      v137 = OUTLINED_FUNCTION_46_3(v195);
      v129(v137);
      v138 = OUTLINED_FUNCTION_61_1();
      sub_1BF9FAB40(v138, &qword_1EBDFB9B0, &qword_1BFAB2628);
      v139 = OUTLINED_FUNCTION_44_2();
      v140(v139);
      sub_1BF9FAB40(&v194, &qword_1EBDFB658, &unk_1BFAB3CB0);
      v141 = OUTLINED_FUNCTION_37_2();
      sub_1BFA58E4C(v141, v171);
      OUTLINED_FUNCTION_39_4();
      v142 = OUTLINED_FUNCTION_57_2(&v198);
      (v180)(v142);
      v135(v159, v136);
      v143 = OUTLINED_FUNCTION_10_6();
      v144(v143);
    }

    v145 = sub_1BFAAF758();
    if (__swift_getEnumTagSinglePayload(v172, 1, v145) == 1)
    {
      v128 = MEMORY[0x1E69D2D98];
    }

    else
    {
      v128 = MEMORY[0x1E69D2DA0];
    }

    goto LABEL_12;
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v187);
LABEL_4:
  OUTLINED_FUNCTION_56_2();
}

unint64_t sub_1BFA56760()
{
  result = qword_1EDCC7518;
  if (!qword_1EDCC7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7518);
  }

  return result;
}

uint64_t sub_1BFA567B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BFA567FC()
{
  result = qword_1EDCC7048;
  if (!qword_1EDCC7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7048);
  }

  return result;
}

uint64_t sub_1BFA56850(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
    sub_1BFA567B4(a2, MEMORY[0x1E69DAA28]);
    result = OUTLINED_FUNCTION_87_0();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SiriSuggestions.Suggestion.== infix(_:_:)()
{
  OUTLINED_FUNCTION_36_6();
  if ((sub_1BFAAE3C8() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v3 = *(v2 + 20);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = (v0 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (!v7 && (sub_1BFAAFF08() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 24);
  v9 = (v1 + v8);
  v10 = (v0 + v8);
  v11 = v9[2] == v10[2] && v9[3] == v10[3];
  if (!v11 && (sub_1BFAAFF08() & 1) == 0)
  {
    return 0;
  }

  if (*v9 == *v10 && v9[1] == v10[1])
  {
    return 1;
  }

  return sub_1BFAAFF08();
}

uint64_t static SiriSuggestions.SuggestionPresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_36_6();
  v3 = *(v2 + 16) == v0[2] && v1[3] == v0[3];
  if (v3 || (v4 = sub_1BFAAFF08(), result = 0, (v4 & 1) != 0))
  {
    if (*v1 == *v0 && v1[1] == v0[1])
    {
      return 1;
    }

    else
    {

      return sub_1BFAAFF08();
    }
  }

  return result;
}

uint64_t SiriSuggestions.Suggestion.hash(into:)()
{
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_8();
  sub_1BFA567B4(v1, v2);
  OUTLINED_FUNCTION_38_2();
  sub_1BFAAF818();
  v3 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_78_1(v3);
  v5 = *v4;
  v6 = v4[1];
  sub_1BFAAF908();
  v7 = v0 + *(v3 + 24);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  return sub_1BFAAF908();
}

uint64_t SiriSuggestions.Suggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBC8, &unk_1BFAB3CE0);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_107();
  v10 = a1[4];
  OUTLINED_FUNCTION_83_1(a1, a1[3]);
  sub_1BFA56760();
  sub_1BFAB0008();
  LOBYTE(v50) = 0;
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_8();
  sub_1BFA567B4(v11, v12);
  OUTLINED_FUNCTION_12_8();
  sub_1BFAAFEB8();
  if (!v2)
  {
    v13 = type metadata accessor for SiriSuggestions.Suggestion(0);
    v14 = (v3 + v13[5]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v50) = 1;
    OUTLINED_FUNCTION_21_4();
    sub_1BFAAFE78();
    v17 = v13[7];
    OUTLINED_FUNCTION_79_1(2);
    sub_1BFAAEEF8();
    OUTLINED_FUNCTION_25_3();
    sub_1BFA567B4(v18, v19);
    OUTLINED_FUNCTION_12_8();
    sub_1BFAAFEB8();
    LOBYTE(v47[0]) = 3;
    v46 = v13;
    OUTLINED_FUNCTION_77_1((v3 + v13[8]));
    OUTLINED_FUNCTION_49_2();
    (*(v23 + 16))();
    OUTLINED_FUNCTION_31_2();
    sub_1BFAAEE68();
    __swift_destroy_boxed_opaque_existential_2Tm(&v50);
    LOBYTE(v47[0]) = 4;
    OUTLINED_FUNCTION_77_1((v3 + v13[9]));
    OUTLINED_FUNCTION_49_2();
    (*(v24 + 16))();
    OUTLINED_FUNCTION_31_2();
    sub_1BFAAEE68();
    __swift_destroy_boxed_opaque_existential_2Tm(&v50);
    v25 = v13[6];
    v26 = OUTLINED_FUNCTION_79_1(5);
    type metadata accessor for SiriSuggestions.SuggestionPresentation(v26);
    OUTLINED_FUNCTION_23_4();
    sub_1BFA567B4(v27, v28);
    OUTLINED_FUNCTION_7_6();
    v53 = 6;
    v29 = v46[10];
    sub_1BFA54188();
    v30 = v48;
    if (v48)
    {
      v31 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      *(&v51 + 1) = v30;
      v52 = *(v31 + 16);
      __swift_allocate_boxed_opaque_existential_1Tm(&v50);
      OUTLINED_FUNCTION_49_2();
      (*(v32 + 16))();
      __swift_destroy_boxed_opaque_existential_2Tm(v47);
    }

    else
    {
      sub_1BF9FAB40(v47, &qword_1EBDFB658, &unk_1BFAB3CB0);
      v50 = 0u;
      v51 = 0u;
      v52 = 0;
    }

    OUTLINED_FUNCTION_31_2();
    sub_1BFAAEE28();
    sub_1BF9FAB40(&v50, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    v33 = OUTLINED_FUNCTION_59_1((v3 + v46[11]));
    *&v50 = v34;
    *(&v50 + 1) = v33;
    LOBYTE(v51) = v35;
    *(&v51 + 1) = v36;
    LOBYTE(v52) = v37;
    LOBYTE(v47[0]) = 7;
    sub_1BFA58CC0();
    OUTLINED_FUNCTION_21_4();
    sub_1BFAAFEB8();
    v38 = v46[12];
    OUTLINED_FUNCTION_79_1(8);
    sub_1BFAAF1E8();
    OUTLINED_FUNCTION_27_5();
    sub_1BFA567B4(v39, v40);
    OUTLINED_FUNCTION_7_6();
    v41 = v46[13];
    LOBYTE(v50) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
    sub_1BFA58D14(&qword_1EDCC6538, &qword_1EDCC6540);
    OUTLINED_FUNCTION_7_6();
    v42 = v46[14];
    OUTLINED_FUNCTION_79_1(10);
    sub_1BFAAF318();
    OUTLINED_FUNCTION_26_2();
    sub_1BFA567B4(v43, v44);
    OUTLINED_FUNCTION_7_6();
    v45 = v46[15];
    LOBYTE(v50) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
    sub_1BFA56850(&qword_1EDCC6478, &qword_1EDCC6480);
    OUTLINED_FUNCTION_7_6();
  }

  v20 = OUTLINED_FUNCTION_19_2();
  return v21(v20);
}

uint64_t sub_1BFA570EC()
{
  OUTLINED_FUNCTION_36_6();
  v3 = v1 == 0x696669746E656469 && v2 == 0xEA00000000007265;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == OUTLINED_FUNCTION_69_1() && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == OUTLINED_FUNCTION_65_1() && v0 == v7;
      if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v1 == 0x72656E776FLL && v0 == 0xE500000000000000;
        if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = v1 == OUTLINED_FUNCTION_12_5() && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = v1 == OUTLINED_FUNCTION_73_1() && v0 == v12;
            if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v14 = v1 == 0xD000000000000010 && 0x80000001BFAB9520 == v0;
              if (v14 || (OUTLINED_FUNCTION_47_3(), (OUTLINED_FUNCTION_7() & 1) != 0))
              {

                return 6;
              }

              else
              {
                v15 = v1 == 0x6F666E496B6E6172 && v0 == 0xE800000000000000;
                if (v15 || (OUTLINED_FUNCTION_7() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v17 = v1 == OUTLINED_FUNCTION_64_1() && v0 == v16;
                  if (v17 || (OUTLINED_FUNCTION_7() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v19 = v1 == OUTLINED_FUNCTION_63_2() && v0 == v18;
                    if (v19 || (OUTLINED_FUNCTION_7() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v20 = v1 == 0x76697463656A626FLL && v0 == 0xE900000000000065;
                      if (v20 || (OUTLINED_FUNCTION_7() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (v1 == OUTLINED_FUNCTION_62_0() && v0 == v21)
                      {

                        return 11;
                      }

                      else
                      {
                        v23 = OUTLINED_FUNCTION_7();

                        if (v23)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_1BFA57390(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_69_1();
      break;
    case 2:
      result = OUTLINED_FUNCTION_65_1();
      break;
    case 3:
      result = 0x72656E776FLL;
      break;
    case 4:
      result = OUTLINED_FUNCTION_12_5();
      break;
    case 5:
      result = OUTLINED_FUNCTION_73_1();
      break;
    case 6:
      result = OUTLINED_FUNCTION_47_3();
      break;
    case 7:
      result = 0x6F666E496B6E6172;
      break;
    case 8:
      result = OUTLINED_FUNCTION_64_1();
      break;
    case 9:
      result = OUTLINED_FUNCTION_63_2();
      break;
    case 10:
      result = 0x76697463656A626FLL;
      break;
    case 11:
      result = OUTLINED_FUNCTION_62_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA574FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA570EC();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA57530(uint64_t a1)
{
  v2 = sub_1BFA56760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA5756C(uint64_t a1)
{
  v2 = sub_1BFA56760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.Suggestion.hashValue.getter()
{
  OUTLINED_FUNCTION_89_1();
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_8();
  sub_1BFA567B4(v1, v2);
  sub_1BFAAF818();
  v3 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_78_1(v3);
  v5 = *v4;
  v6 = v4[1];
  sub_1BFAAF908();
  v7 = v0 + *(v3 + 24);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA57650(uint64_t a1, uint64_t a2)
{
  sub_1BFAAFF98();
  sub_1BFAAE3F8();
  sub_1BFA567B4(&qword_1EBDFBBC0, MEMORY[0x1E69695A8]);
  sub_1BFAAF818();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1BFAAF908();
  v7 = v2 + *(a2 + 24);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA57758()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v2 = v1(v0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_96();

  return v6(v5);
}

uint64_t SiriSuggestions.SuggestionChannelAndScore.init(channel:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1BFAAF2E8();
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(a2, a1);
  result = OUTLINED_FUNCTION_90_1();
  *(a2 + v9) = a3;
  return result;
}

BOOL static SiriSuggestions.SuggestionChannelAndScore.== infix(_:_:)()
{
  OUTLINED_FUNCTION_36_6();
  if ((sub_1BFAAF2D8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_90_1();
  return *(v1 + v2) == *(v0 + v2);
}

uint64_t sub_1BFA57884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BFAAFF08();

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

uint64_t sub_1BFA57948(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_1BFA57984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA57884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA579AC(uint64_t a1)
{
  v2 = sub_1BFA58DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA579E8(uint64_t a1)
{
  v2 = sub_1BFA58DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SuggestionChannelAndScore.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBD0, &qword_1BFAB3CF0);
  OUTLINED_FUNCTION_2_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_107();
  v13 = a1[4];
  OUTLINED_FUNCTION_83_1(a1, a1[3]);
  sub_1BFA58DA0();
  sub_1BFAB0008();
  sub_1BFAAF2E8();
  OUTLINED_FUNCTION_9_5();
  sub_1BFA567B4(v14, v15);
  OUTLINED_FUNCTION_12_8();
  sub_1BFAAFEB8();
  if (!v2)
  {
    v16 = *(v4 + *(type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0) + 20));
    sub_1BFAAFE98();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t SiriSuggestions.SuggestionChannelAndScore.hash(into:)()
{
  sub_1BFAAF2E8();
  OUTLINED_FUNCTION_9_5();
  sub_1BFA567B4(v1, v2);
  OUTLINED_FUNCTION_38_2();
  sub_1BFAAF818();
  OUTLINED_FUNCTION_90_1();
  v4 = *(v0 + v3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1BFB61210](*&v4);
}

uint64_t SiriSuggestions.SuggestionChannelAndScore.hashValue.getter()
{
  OUTLINED_FUNCTION_89_1();
  SiriSuggestions.SuggestionChannelAndScore.hash(into:)();
  return sub_1BFAAFFE8();
}

void SiriSuggestions.SuggestionChannelAndScore.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v2 = v1;
  v3 = sub_1BFAAF2E8();
  v4 = OUTLINED_FUNCTION_2_3(v3);
  v31 = v5;
  v32 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBE0, &qword_1BFAB3CF8);
  OUTLINED_FUNCTION_2_3(v33);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v24 = v2[4];
  OUTLINED_FUNCTION_83_1(v2, v2[3]);
  sub_1BFA58DA0();
  sub_1BFAAFFF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_9_5();
    sub_1BFA567B4(v25, v26);
    sub_1BFAAFE08();
    (*(v31 + 32))(v23, v11, v32);
    OUTLINED_FUNCTION_50_3();
    sub_1BFAAFDE8();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_48_3();
    v30(v29);
    *(v23 + *(v16 + 20)) = v28;
    sub_1BFA58DF4();
    __swift_destroy_boxed_opaque_existential_2Tm(v2);
    sub_1BFA58E4C(v23, type metadata accessor for SiriSuggestions.SuggestionChannelAndScore);
  }

  OUTLINED_FUNCTION_56_2();
}

uint64_t sub_1BFA57F38()
{
  sub_1BFAAFF98();
  SiriSuggestions.SuggestionChannelAndScore.hash(into:)();
  return sub_1BFAAFFE8();
}

uint64_t SiriSuggestions.SuggestionPresentation.spokenText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriSuggestions.SuggestionPresentation.displayText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriSuggestions.SuggestionPresentation.description.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_96();
}

uint64_t sub_1BFA58058@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 16);

  return v10(a3, v3 + v6, v8);
}

uint64_t SiriSuggestions.SuggestionPresentation.locale.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriSuggestions.SuggestionPresentation(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriSuggestions.SuggestionPresentation.policyResult.getter()
{
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = (v1 + *(type metadata accessor for SiriSuggestions.SuggestionPresentation(v2) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;

  return sub_1BFA3C558(v4, v5, v6);
}

__n128 SiriSuggestions.SuggestionPresentation.init(spokenText:displayText:description:assets:policyResult:locale:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = *(a8 + 32);
  v15 = *(a8 + 40);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v16 = type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
  v17 = v16[7];
  v18 = sub_1BFAAF218();
  OUTLINED_FUNCTION_0(v18);
  v23 = *(a8 + 16);
  v24 = *a8;
  (*(v19 + 32))(&a9[v17], a7);
  v20 = &a9[v16[9]];
  result = v24;
  *v20 = v24;
  *(v20 + 1) = v23;
  *(v20 + 4) = v14;
  *(v20 + 5) = v15;
  v22 = &a9[v16[8]];
  *v22 = a10;
  *(v22 + 1) = a11;
  return result;
}

uint64_t SiriSuggestions.SuggestionPresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = sub_1BFAAF218();
  v4 = OUTLINED_FUNCTION_2_3(v3);
  v60 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBE8, &qword_1BFAB3D00);
  OUTLINED_FUNCTION_2_3(v12);
  v59 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v62 = a1;
  OUTLINED_FUNCTION_83_1(a1, v20);
  sub_1BFA58EA4();
  v22 = v61;
  sub_1BFAAFFF8();
  if (!v22)
  {
    v61 = v11;
    v23 = v59;
    v24 = v60;
    LOBYTE(v63) = 0;
    v25 = sub_1BFAAFDC8();
    v27 = v26;
    v56 = OUTLINED_FUNCTION_88_0(1);
    v57 = v28;
    v69 = 2;
    OUTLINED_FUNCTION_53_3();
    v53 = v63;
    v54 = v25;
    v55 = v64;
    LOBYTE(v63) = 3;
    OUTLINED_FUNCTION_28_2();
    sub_1BFA567B4(v30, v31);
    sub_1BFAAFE08();
    v69 = 4;
    OUTLINED_FUNCTION_53_3();
    v48 = v63;
    v49 = v64;
    v50 = v65;
    v51 = v66;
    v32 = v68;
    v52 = v67;
    v33 = OUTLINED_FUNCTION_88_0(5);
    v34 = v24;
    v35 = *(v23 + 8);
    v36 = v33;
    v59 = v37;
    v35(v19, v12);
    v38 = v32;
    v39 = type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
    v40 = v58;
    (*(v34 + 32))(v58 + v39[7], v61, v3);
    *v40 = v54;
    v40[1] = v27;
    v41 = v57;
    v40[2] = v56;
    v40[3] = v41;
    v42 = v55;
    v40[4] = v53;
    v40[5] = v42;
    v43 = (v40 + v39[9]);
    v44 = v49;
    *v43 = v48;
    v43[1] = v44;
    v45 = v51;
    v43[2] = v50;
    v43[3] = v45;
    v43[4] = v52;
    v43[5] = v38;
    v46 = (v40 + v39[8]);
    v47 = v59;
    *v46 = v36;
    v46[1] = v47;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v62);
}

uint64_t SiriSuggestions.SuggestionPresentation.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1BFAAF908();
}

uint64_t SiriSuggestions.SuggestionPresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBF0, &qword_1BFAB3D08);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_107();
  v10 = a1[4];
  OUTLINED_FUNCTION_83_1(a1, a1[3]);
  sub_1BFA58EA4();
  sub_1BFAB0008();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v41) = 0;
  OUTLINED_FUNCTION_21_4();
  sub_1BFAAFE78();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v41) = 1;
    OUTLINED_FUNCTION_21_4();
    sub_1BFAAFE78();
    v46 = 2;
    v18 = v3[5];
    if (v18)
    {
      v19 = v3[4];
      v20 = MEMORY[0x1E69E6160];
      v21 = MEMORY[0x1E69E6158];
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v20 = 0;
      v43 = 0;
    }

    v41 = v19;
    v42 = v18;
    v44 = v21;
    v45 = v20;

    OUTLINED_FUNCTION_66_2();
    sub_1BF9FAB40(&v41, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    v22 = type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
    v23 = v22[7];
    LOBYTE(v41) = 3;
    sub_1BFAAF218();
    OUTLINED_FUNCTION_28_2();
    sub_1BFA567B4(v24, v25);
    OUTLINED_FUNCTION_12_8();
    sub_1BFAAFEB8();
    v46 = 4;
    v26 = (v3 + v22[9]);
    v28 = *v26;
    v27 = v26[1];
    v29 = v26[2];
    if (v29)
    {
      v39 = v26[1];
      v40 = *v26;
      v37 = v26[3];
      v38 = v26[4];
      v36 = v26[5];
      v30 = sub_1BFA3D770();
      v31 = swift_allocObject();
      v27 = v39;
      v28 = v40;
      *(v31 + 16) = v40 & 1;
      *(v31 + 24) = v39;
      *(v31 + 32) = v29;
      *(v31 + 40) = v37;
      *(v31 + 48) = v38 & 1;
      *(v31 + 56) = v36;
      v32 = &type metadata for PolicyResult;
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v30 = 0;
      v42 = 0;
      v43 = 0;
    }

    v41 = v31;
    v44 = v32;
    v45 = v30;
    sub_1BFA3C558(v28, v27, v29);
    OUTLINED_FUNCTION_66_2();
    sub_1BF9FAB40(&v41, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    v33 = (v3 + v22[8]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v41) = 5;
    OUTLINED_FUNCTION_21_4();
    sub_1BFAAFE78();
  }

  v15 = OUTLINED_FUNCTION_19_2();
  return v16(v15);
}

uint64_t sub_1BFA589B0()
{
  OUTLINED_FUNCTION_36_6();
  v3 = v1 == 0x65546E656B6F7073 && v2 == 0xEA00000000007478;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == OUTLINED_FUNCTION_72_1() && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == OUTLINED_FUNCTION_71_0() && v0 == v7;
      if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v1 == 0x737465737361 && v0 == 0xE600000000000000;
        if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = v1 == OUTLINED_FUNCTION_70_0() && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else if (v1 == 0x656C61636F6CLL && v0 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v13 = OUTLINED_FUNCTION_7();

            if (v13)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BFA58B18(char a1)
{
  result = 0x65546E656B6F7073;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_72_1();
      break;
    case 2:
      result = OUTLINED_FUNCTION_71_0();
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = OUTLINED_FUNCTION_70_0();
      break;
    case 5:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA58BD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA589B0();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA58C04(uint64_t a1)
{
  v2 = sub_1BFA58EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA58C40(uint64_t a1)
{
  v2 = sub_1BFA58EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SuggestionPresentation.hashValue.getter()
{
  OUTLINED_FUNCTION_89_1();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

unint64_t sub_1BFA58CC0()
{
  result = qword_1EDCC6528;
  if (!qword_1EDCC6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6528);
  }

  return result;
}

uint64_t sub_1BFA58D14(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
    sub_1BFA567B4(a2, type metadata accessor for SiriSuggestions.SuggestionChannelAndScore);
    result = OUTLINED_FUNCTION_87_0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BFA58DA0()
{
  result = qword_1EDCC7078;
  if (!qword_1EDCC7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7078);
  }

  return result;
}

uint64_t sub_1BFA58DF4()
{
  OUTLINED_FUNCTION_36_6();
  v2 = v1(0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_96();
  v6(v5);
  return v0;
}

uint64_t sub_1BFA58E4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1BFA58EA4()
{
  result = qword_1EDCC7500;
  if (!qword_1EDCC7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7500);
  }

  return result;
}

uint64_t sub_1BFA58EF8()
{
  sub_1BFAAFF98();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t SiriSuggestions.RankInfo.windowTs.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t SiriSuggestions.RankInfo.init(rank:score:tier:windowTs:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *a2;
  *a5 = result;
  *(a5 + 8) = a6;
  *(a5 + 16) = v6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4 & 1;
  return result;
}

uint64_t *SiriSuggestions.RankInfo.init(from:tier:rank:)@<X0>(uint64_t *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = *(result + 16);
  v8 = result[3];
  v9 = *(result + 32);
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  if (*a2 != 3)
  {
    v7 = *a2;
  }

  *a5 = v5;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 24) = v8;
  *(a5 + 32) = v9;
  return result;
}

uint64_t static SiriSuggestions.RankInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if ((sub_1BFA53304(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BFA590AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802396018 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1919248756 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7354776F646E6977 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BFAAFF08();

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

uint64_t sub_1BFA59200(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_89_1();
  MEMORY[0x1BFB611E0](a1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA59240(char a1)
{
  result = 1802396018;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
      result = 1919248756;
      break;
    case 3:
      result = 0x7354776F646E6977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA592B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA590AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA592DC(uint64_t a1)
{
  v2 = sub_1BFA59514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA59318(uint64_t a1)
{
  v2 = sub_1BFA59514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriSuggestions.RankInfo.encode(to:)()
{
  OUTLINED_FUNCTION_55_2();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBF8, &qword_1BFAB3D10);
  OUTLINED_FUNCTION_2_3(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v17 - v11;
  v13 = *v0;
  v14 = v0[1];
  v19 = *(v0 + 16);
  v18 = v0[3];
  v17[1] = *(v0 + 32);
  v15 = v3[4];
  OUTLINED_FUNCTION_83_1(v3, v3[3]);
  sub_1BFA59514();
  sub_1BFAB0008();
  v23 = 0;
  OUTLINED_FUNCTION_3();
  sub_1BFAAFEA8();
  if (!v1)
  {
    v16 = v19;
    OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE98();
    v22 = v16;
    v21 = 2;
    sub_1BFA59568();
    OUTLINED_FUNCTION_3();
    sub_1BFAAFEB8();
    v20 = 3;
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE58();
  }

  (*(v6 + 8))(v12, v4);
  OUTLINED_FUNCTION_56_2();
}

unint64_t sub_1BFA59514()
{
  result = qword_1EDCC74E0;
  if (!qword_1EDCC74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74E0);
  }

  return result;
}

unint64_t sub_1BFA59568()
{
  result = qword_1EDCC6530;
  if (!qword_1EDCC6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6530);
  }

  return result;
}

void SiriSuggestions.RankInfo.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBC00, &unk_1BFAB3D18);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21 - v12;
  v14 = v2[4];
  OUTLINED_FUNCTION_83_1(v2, v2[3]);
  sub_1BFA59514();
  sub_1BFAAFFF8();
  if (!v0)
  {
    v25 = 0;
    OUTLINED_FUNCTION_52_3();
    v15 = sub_1BFAAFDF8();
    OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_52_3();
    sub_1BFAAFDE8();
    v17 = v16;
    v23 = 2;
    sub_1BFA597A4();
    sub_1BFAAFE08();
    HIDWORD(v21) = v24;
    v22 = 3;
    OUTLINED_FUNCTION_52_3();
    v18 = sub_1BFAAFDA8();
    v20 = v19;
    (*(v7 + 8))(v13, v5);
    *v4 = v15;
    *(v4 + 8) = v17;
    *(v4 + 16) = BYTE4(v21);
    *(v4 + 24) = v18;
    *(v4 + 32) = v20 & 1;
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v2);
  OUTLINED_FUNCTION_56_2();
}

unint64_t sub_1BFA597A4()
{
  result = qword_1EDCC7050;
  if (!qword_1EDCC7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7050);
  }

  return result;
}

uint64_t SiriSuggestions.Tier.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1BFAAFD58();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t SiriSuggestions.Tier.rawValue.getter()
{
  v1 = 0x3272656974;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x3172656974;
  }
}

uint64_t sub_1BFA59918@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return SiriSuggestions.Tier.init(rawValue:)(a1);
}

uint64_t sub_1BFA59924@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestions.Tier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall SiriSuggestions.Suggestion.getAppBundleId()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450);
  v2 = OUTLINED_FUNCTION_60_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_4_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - v11;
  v13 = sub_1BFAAF138();
  v14 = OUTLINED_FUNCTION_2_3(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14, v19);
  OUTLINED_FUNCTION_4_0();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v36 - v25;
  v27 = v0 + *(type metadata accessor for SiriSuggestions.Suggestion(0) + 24);
  v28 = *(type metadata accessor for SiriSuggestions.SuggestionPresentation(0) + 28);
  sub_1BFAAF1F8();
  OUTLINED_FUNCTION_91_0(v8);
  if (v29)
  {
    sub_1BFAAF208();
    OUTLINED_FUNCTION_91_0(v8);
    if (!v29)
    {
      sub_1BF9FAB40(v8, &qword_1EBDFB6D8, &qword_1BFAB1450);
    }
  }

  else
  {
    (*(v16 + 32))(v12, v8, v13);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  }

  OUTLINED_FUNCTION_91_0(v12);
  if (v29)
  {
    sub_1BF9FAB40(v12, &qword_1EBDFB6D8, &qword_1BFAB1450);
LABEL_11:
    v33 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_12;
  }

  (*(v16 + 32))(v26, v12, v13);
  (*(v16 + 16))(v22, v26, v13);
  v30 = (*(v16 + 88))(v22, v13);
  v31 = *MEMORY[0x1E69D31A0];
  v32 = *(v16 + 8);
  v32(v26, v13);
  if (v30 != v31)
  {
    v32(v22, v13);
    goto LABEL_11;
  }

  (*(v16 + 96))(v22, v13);
  v33 = *v22;
  v34 = v22[1];
LABEL_12:
  result._object = v34;
  result._countAndFlagsBits = v33;
  return result;
}

unint64_t sub_1BFA59DA0()
{
  result = qword_1EBDFBC20;
  if (!qword_1EBDFBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC20);
  }

  return result;
}

unint64_t sub_1BFA59DF8()
{
  result = qword_1EBDFBC28;
  if (!qword_1EBDFBC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBC30, &qword_1BFAB40E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC28);
  }

  return result;
}

void sub_1BFA59E84()
{
  sub_1BFAAE3F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SiriSuggestions.SuggestionPresentation(319);
    if (v1 <= 0x3F)
    {
      sub_1BFAAEEF8();
      if (v2 <= 0x3F)
      {
        sub_1BFA16528();
        if (v3 <= 0x3F)
        {
          sub_1BFA5A010();
          if (v4 <= 0x3F)
          {
            sub_1BFAAF1E8();
            if (v5 <= 0x3F)
            {
              sub_1BFA5A074(319, qword_1EDCC8568, type metadata accessor for SiriSuggestions.SuggestionChannelAndScore);
              if (v6 <= 0x3F)
              {
                sub_1BFAAF318();
                if (v7 <= 0x3F)
                {
                  sub_1BFA5A074(319, &qword_1EDCC84F0, MEMORY[0x1E69DAA28]);
                  if (v8 <= 0x3F)
                  {
                    sub_1BFAAEB28();
                    if (v9 <= 0x3F)
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

void sub_1BFA5A010()
{
  if (!qword_1EDCC8500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBBB8, &qword_1BFAB3CD8);
    v0 = sub_1BFAAFBA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC8500);
    }
  }
}

void sub_1BFA5A074(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BFAAFBA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BFA5A0F0()
{
  result = sub_1BFAAF2E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BFA5A18C()
{
  sub_1BFA5A254(319, &qword_1EDCC84E8);
  if (v0 <= 0x3F)
  {
    sub_1BFAAF218();
    if (v1 <= 0x3F)
    {
      sub_1BFA5A254(319, &qword_1EDCC8B68);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BFA5A254(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BFAAFBA8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BFA5A2B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t sub_1BFA5A2F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

_BYTE *_s4TierOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s8RankInfoV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s22SuggestionPresentationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s22SuggestionPresentationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s25SuggestionChannelAndScoreV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s10SuggestionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s10SuggestionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BFA5A8A8()
{
  result = qword_1EBDFBC38;
  if (!qword_1EBDFBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC38);
  }

  return result;
}

unint64_t sub_1BFA5A900()
{
  result = qword_1EBDFBC40;
  if (!qword_1EBDFBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC40);
  }

  return result;
}

unint64_t sub_1BFA5A958()
{
  result = qword_1EBDFBC48;
  if (!qword_1EBDFBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC48);
  }

  return result;
}

unint64_t sub_1BFA5A9B0()
{
  result = qword_1EBDFBC50[0];
  if (!qword_1EBDFBC50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDFBC50);
  }

  return result;
}

unint64_t sub_1BFA5AA08()
{
  result = qword_1EDCC74D0;
  if (!qword_1EDCC74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74D0);
  }

  return result;
}

unint64_t sub_1BFA5AA60()
{
  result = qword_1EDCC74D8;
  if (!qword_1EDCC74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74D8);
  }

  return result;
}

unint64_t sub_1BFA5AAB8()
{
  result = qword_1EDCC74F0;
  if (!qword_1EDCC74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74F0);
  }

  return result;
}

unint64_t sub_1BFA5AB10()
{
  result = qword_1EDCC74F8;
  if (!qword_1EDCC74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74F8);
  }

  return result;
}

unint64_t sub_1BFA5AB68()
{
  result = qword_1EDCC7068;
  if (!qword_1EDCC7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7068);
  }

  return result;
}

unint64_t sub_1BFA5ABC0()
{
  result = qword_1EDCC7070;
  if (!qword_1EDCC7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7070);
  }

  return result;
}

unint64_t sub_1BFA5AC18()
{
  result = qword_1EDCC7508;
  if (!qword_1EDCC7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7508);
  }

  return result;
}

unint64_t sub_1BFA5AC70()
{
  result = qword_1EDCC7510;
  if (!qword_1EDCC7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7510);
  }

  return result;
}

unint64_t sub_1BFA5ACC4()
{
  result = qword_1EDCC74E8;
  if (!qword_1EDCC74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_1BFAAFEB8();
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  v2 = *(*(v1 - 352) + 8);
  result = v0;
  v4 = *(v1 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_2()
{
  result = *(v0 - 416);
  v2 = *(v0 - 408);
  v3 = *(v0 - 432);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_1()
{
  v2 = *(v0 - 584);
}

uint64_t OUTLINED_FUNCTION_46_3@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 448);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_3()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_1BFAAEE18();
}

uint64_t OUTLINED_FUNCTION_54_2()
{
  v3 = *(v0 - 256);
  v4 = *(v1 - 360);

  return sub_1BFAAFE08();
}

double OUTLINED_FUNCTION_59_1@<D0>(double *a1@<X8>)
{
  v1 = *a1;
  result = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 3);
  v5 = *(a1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_2()
{

  return sub_1BFAAEE28();
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_1BFAAFF08();
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return sub_1BFAAFE08();
}

uint64_t *OUTLINED_FUNCTION_77_1(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v3 + 32);
  *(v1 - 104) = v2;
  *(v1 - 96) = v4;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 - 128));
}

uint64_t BaseSink.__allocating_init(callback:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BaseSink.__allocating_init()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = *(v0 + 80);

  return BaseSink.__allocating_init(callback:)(&unk_1BFAB4698, v1);
}

uint64_t BaseSink.init(callback:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BFA5B118()
{
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BFA5B1B0;

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1BFA5B1B0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t BaseSink.dispatch(event:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA5B2C0, 0, 0);
}

uint64_t sub_1BFA5B2C0()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[3];
  v2 = *(v1 + 24);
  v7 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1BFA5B3B0;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_1BFA5B3B0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t BaseSink.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t BaseSink.__deallocating_deinit()
{
  BaseSink.deinit();

  return swift_deallocClassInstance();
}

void *sub_1BFA5B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6)
{
  v11 = *(a6 + 16);
  v18 = *a6;
  v19 = v11;
  v20 = *(a6 + 24);
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    v12 = sub_1BFAAE758();
  }

  else
  {
    v12 = 0;
  }

  if (sub_1BFAAE778())
  {
    v13 = sub_1BFAAE768();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1BFA794C4(v12, v13);

  v15 = v21;
  result = sub_1BFA5B6A8(a1, a2, a3, a4, a5 & 1, &v18, v14 & 1);
  if (v15)
  {
    return v17;
  }

  return result;
}

void *sub_1BFA5B6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7)
{
  v8 = a7;
  v13 = *(a6 + 16);
  v28 = *a6;
  v29 = v13;
  v30 = *(a6 + 24);
  sub_1BFA5B93C(&v28, a7, &v31);
  v15 = v31;
  v14 = v32;
  if ((sub_1BFA5BFD8(a5, v32 != 0) & 1) == 0)
  {

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v17 = sub_1BFAAF688();
    __swift_project_value_buffer(v17, qword_1EDCC7478);
    v18 = sub_1BFAAF668();
    v19 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_9();
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Requirements are not satisfied for returning a SiriHint view. Returning nil SiriHint Ace view";
    goto LABEL_9;
  }

  if ((v8 & 1) == 0)
  {
    *&v28 = v15;
    *(&v28 + 1) = v14;
    v22 = v33;
    v23 = sub_1BFA5C480(a1, a2, a3, a4, &v28);
    if (v22)
    {

      return v7;
    }

    v7 = v23;
    goto LABEL_18;
  }

  v16 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  if ((sub_1BFAAF048() & 1) == 0)
  {

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v24 = sub_1BFAAF688();
    __swift_project_value_buffer(v24, qword_1EDCC7478);
    v18 = sub_1BFAAF668();
    v19 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_9();
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Environment indicates SiriHint VOX should be presented, but VOX hints is not enabled. Returning nil ACE view";
LABEL_9:
    _os_log_impl(&dword_1BF9F6000, v18, v19, v21, v20, 2u);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
LABEL_10:

    return 0;
  }

  v7 = sub_1BFA5C340();
LABEL_18:
  v25 = v7;
  if (v14)
  {
  }

  return v7;
}

void sub_1BFA5B93C(__int128 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BFAAE7F8();
  v9 = OUTLINED_FUNCTION_2_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v9, v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v77 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v77 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v77 - v27;
  v29 = *(a1 + 16);
  v83 = *a1;
  v84 = v29;
  v85 = *(a1 + 24);
  if ((sub_1BFA79C98(&v83) & 1) == 0)
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v50 = sub_1BFAAF688();
    v51 = __swift_project_value_buffer(v50, qword_1EDCC7478);
    v52 = sub_1BFAAF668();
    v53 = sub_1BFAAFB78();
    if (!OUTLINED_FUNCTION_43_0(v53))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_2_9();
    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "CrossDomainHint not applicable for current Siri execution context. Returning nil ACE view";
    goto LABEL_15;
  }

  sub_1BFAAE7A8();
  if (!sub_1BFAAE778())
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v56 = sub_1BFAAF688();
    v51 = __swift_project_value_buffer(v56, qword_1EDCC7478);
    v52 = sub_1BFAAF668();
    v57 = sub_1BFAAFB78();
    if (!OUTLINED_FUNCTION_43_0(v57))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_2_9();
    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "InputOrigin unavailable. Returning nil crossDomainHintType";
LABEL_15:
    _os_log_impl(&dword_1BF9F6000, v52, v51, v55, v54, 2u);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
LABEL_16:

    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v79 = a2;
  v82 = a3;
  sub_1BFAAE758();

  sub_1BFAAF4D8();

  (*(v11 + 32))(v28, v25, v8);
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v30 = sub_1BFAAF688();
  v31 = __swift_project_value_buffer(v30, qword_1EDCC7478);
  v32 = *(v11 + 16);
  v81 = v28;
  v32(v21, v28, v8);
  swift_retain_n();
  v80 = v31;
  v33 = v11;
  v34 = sub_1BFAAF668();
  v35 = sub_1BFAAFB78();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = v8;
    v38 = v33;
    v78 = v33;
    v39 = v36;
    v77 = swift_slowAlloc();
    *&v83 = v77;
    *v39 = 136315650;
    v40 = sub_1BFAAE7E8();
    v42 = v41;
    v43 = v38;
    v8 = v37;
    v44 = *(v43 + 8);
    v45 = OUTLINED_FUNCTION_5_5();
    v44(v45);
    v46 = sub_1BF9F88A8(v40, v42, &v83);

    *(v39 + 4) = v46;
    *(v39 + 12) = 1024;
    *(v39 + 14) = v79 & 1;
    *(v39 + 18) = 1024;
    v47 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    LOBYTE(v46) = sub_1BFAAF048();

    *(v39 + 20) = v46 & 1;

    _os_log_impl(&dword_1BF9F6000, v34, v35, "Getting crossDomainHint.\nInput origin: %s\nShould present dialog: %{BOOL}d\nVOX hints enabled: %{BOOL}d", v39, 0x18u);
    __swift_destroy_boxed_opaque_existential_2Tm(v77);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();

    v48 = v44;
    v49 = v82;
    v33 = v78;
  }

  else
  {

    v48 = *(v33 + 8);
    v58 = OUTLINED_FUNCTION_5_5();
    v48(v58);
    v49 = v82;
  }

  v59 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v60 = sub_1BFAAF088();
  v61 = v81;
  if ((v60 & 1) == 0)
  {
    v66 = sub_1BFAAF668();
    v70 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_43_0(v70))
    {
      OUTLINED_FUNCTION_2_9();
      *swift_slowAlloc() = 0;
      v73 = "crossDomainHint feature flag not enabled. Returning nil crossDomainHintType";
LABEL_30:
      OUTLINED_FUNCTION_8_5(&dword_1BF9F6000, v71, v72, v73);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

LABEL_31:

    v75 = OUTLINED_FUNCTION_5_5();
    v48(v75);
    *v49 = 0;
    v49[1] = 0;
    return;
  }

  v63 = v4[23];
  v62 = v4[24];
  swift_getObjectType();
  if ((sub_1BFAAF0B8() & 1) == 0)
  {
    v66 = sub_1BFAAF668();
    v74 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_43_0(v74))
    {
      OUTLINED_FUNCTION_2_9();
      *swift_slowAlloc() = 0;
      v73 = "UserDefaults 'announcementsEnabled' is set to false. Returning nil crossDomainHint";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  (*(v33 + 104))(v17, *MEMORY[0x1E69D34E8], v8);
  v64 = sub_1BFA53CE8(v61, v17);
  (v48)(v17, v8);
  if (v64 & 1) == 0 || (v79 & 1) != 0 || (v65 = *__swift_project_boxed_opaque_existential_1(v4 + 8, v4[11]), (sub_1BF9F8E78(0x6B6361426F67, 0xE600000000000000)))
  {
    v66 = sub_1BFAAF668();
    v67 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_43_0(v67))
    {
      OUTLINED_FUNCTION_2_9();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_5(&dword_1BF9F6000, v68, v69, "No crossDomainHint applicable");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    goto LABEL_31;
  }

  sub_1BF9F94C4((v4 + 18), &v83);
  sub_1BFA7D65C(&v83, v49);
  v76 = OUTLINED_FUNCTION_5_5();
  v48(v76);
}

uint64_t sub_1BFA5BFD8(char a1, char a2)
{
  if (a2)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC7478);
    v4 = sub_1BFAAF668();
    v5 = sub_1BFAAFB68();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BF9F6000, v4, v5, "Crossdomain hint applicable. Should return SiriHint AceView", v6, 2u);
      MEMORY[0x1BFB618C0](v6, -1, -1);
    }

    return 1;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v10 = sub_1BFAAF688();
    __swift_project_value_buffer(v10, qword_1EDCC7478);
    v11 = sub_1BFAAF668();
    v12 = sub_1BFAAFB68();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_21;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Excluding hints snippet rendering as there is no claim present on this request";
    goto LABEL_20;
  }

  sub_1BFAAE7A8();
  if (!sub_1BFAAE778())
  {
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v15 = sub_1BFAAF688();
    __swift_project_value_buffer(v15, qword_1EDCC7478);
    v11 = sub_1BFAAF668();
    v12 = sub_1BFAAFB78();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_21;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "No currentDevice set on the currentTask, so not able to check continuers feature flag. Disabling continuers";
LABEL_20:
    _os_log_impl(&dword_1BF9F6000, v11, v12, v14, v13, 2u);
    MEMORY[0x1BFB618C0](v13, -1, -1);
LABEL_21:

    return 0;
  }

  sub_1BFAAE768();

  v8 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);

  v9 = sub_1BFAAF058();

  if (v9)
  {

    return 1;
  }

  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v16 = sub_1BFAAF688();
  __swift_project_value_buffer(v16, qword_1EDCC7478);
  v17 = sub_1BFAAF668();
  v18 = sub_1BFAAFB78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BF9F6000, v17, v18, "Continuers feature flag not enabled. Returning nil ACE view", v19, 2u);
    MEMORY[0x1BFB618C0](v19, -1, -1);
  }

  return 0;
}

id sub_1BFA5C340()
{
  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v0 = sub_1BFAAF688();
  __swift_project_value_buffer(v0, qword_1EDCC7478);
  v1 = sub_1BFAAF668();
  v2 = sub_1BFAAFB78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF9F6000, v1, v2, "Returning empty SAAceView with Hint UI Item Type, no snippet data", v3, 2u);
    MEMORY[0x1BFB618C0](v3, -1, -1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69C7708]) init];
  v5 = *MEMORY[0x1E69C7C50];
  v6 = sub_1BFAAF868();
  sub_1BFA53268(v6, v7, v4);
  sub_1BFA5CDA0();
  v8 = sub_1BFAAFB98();
  [v4 setListenAfterSpeaking_];

  return v4;
}

id sub_1BFA5C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v57 = a2;
  v6 = v5;
  v59 = a4;
  v56 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v54 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v50 - v16;
  v55 = sub_1BFAAE3F8();
  v62 = *(v55 - 8);
  v18 = *(v62 + 64);
  v20 = MEMORY[0x1EEE9AC00](v55, v19);
  v21 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v53 = &v50 - v23;
  v24 = a5[1];
  v58 = *a5;
  if (qword_1EDCC7470 != -1)
  {
    swift_once();
  }

  v25 = sub_1BFAAF688();
  __swift_project_value_buffer(v25, qword_1EDCC7478);
  v26 = sub_1BFAAF668();
  v27 = sub_1BFAAFB78();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v52 = v18;
    v29 = v24;
    v30 = v21;
    v31 = v17;
    v32 = a3;
    v33 = v6;
    v34 = v28;
    *v28 = 0;
    _os_log_impl(&dword_1BF9F6000, v26, v27, "Returning RF 2.0 output for SiriHints", v28, 2u);
    v35 = v34;
    v6 = v33;
    a3 = v32;
    v17 = v31;
    v21 = v30;
    v24 = v29;
    MEMORY[0x1BFB618C0](v35, -1, -1);
  }

  v36 = v6[7];
  v61[0] = a3;
  v61[1] = v59;
  v61[2] = v36;
  v61[3] = v58;
  v61[4] = v24;
  sub_1BFA5CDE4(v61);
  if (v24)
  {
    v37 = *__swift_project_boxed_opaque_existential_1(v6 + 8, v6[11]);
    swift_bridgeObjectRetain_n();

    sub_1BFA450DC();
    sub_1BFAAE388();
    v38 = v55;
    if (__swift_getEnumTagSinglePayload(v17, 1, v55) == 1)
    {

      sub_1BFA5CDF4(v17);
    }

    else
    {
      v51 = v6;
      v39 = v62;
      v52 = *(v62 + 32);
      v40 = v53;
      v52(v53, v17, v38);
      v41 = sub_1BFAAFA98();
      __swift_storeEnumTagSinglePayload(v54, 1, 1, v41);
      (*(v39 + 16))(v21, v40, v38);
      v42 = (*(v39 + 80) + 56) & ~*(v39 + 80);
      v43 = swift_allocObject();
      *(v43 + 2) = 0;
      *(v43 + 3) = 0;
      v44 = v58;
      *(v43 + 4) = v51;
      *(v43 + 5) = v44;
      *(v43 + 6) = v24;
      v52(&v43[v42], v21, v38);

      sub_1BFA0C8A4();

      (*(v62 + 8))(v53, v38);
    }
  }

  else
  {

    v38 = v55;
  }

  memcpy(v60, v61, sizeof(v60));
  sub_1BFAAE3E8();
  v45 = sub_1BFAAE398();
  v47 = v46;
  (*(v62 + 8))(v21, v38);
  v48 = sub_1BFA7CD74(v56, v57, v45, v47);

  return v48;
}

uint64_t sub_1BFA5C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v8 = sub_1BFAAE3F8();
  v7[4] = v8;
  v9 = *(v8 - 8);
  v7[5] = v9;
  v10 = *(v9 + 64) + 15;
  v7[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5CA00, 0, 0);
}

uint64_t sub_1BFA5CA00()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_1BFAAE3E8();
  v3 = v2[16];
  v4 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v3);
  v5 = *(v4 + 24);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1BFA5CB48;
  v8 = v0[6];

  return v10(v8, 0x6B6361426F67, 0xE600000000000000, v3, v4);
}

uint64_t sub_1BFA5CB48()
{
  OUTLINED_FUNCTION_40();
  v1 = *(*v0 + 56);
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BFA5CC38, 0, 0);
}

uint64_t sub_1BFA5CC38()
{
  v1 = v0[2];
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v2);
  v4 = *(v3 + 40);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1BFA2B2D0;
  v7 = v0[6];
  v8 = v0[3];

  return v10(v8, v7, v2, v3);
}

void *sub_1BFA5CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6)
{
  v8 = *v6;
  result = sub_1BFA5B580(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
    return v10;
  }

  return result;
}

unint64_t sub_1BFA5CDA0()
{
  result = qword_1EBDFBB98;
  if (!qword_1EBDFBB98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDFBB98);
  }

  return result;
}

uint64_t sub_1BFA5CDF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BFA5CE5C(uint64_t a1)
{
  v4 = *(sub_1BFAAE3F8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BFA2B6C0;

  return sub_1BFA5C940(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t ContinuationsManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCD8, &qword_1BFAB4770);
  *(v0 + 112) = sub_1BFAAF7D8();
  return v0;
}

uint64_t ContinuationsManager.init()()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCD8, &qword_1BFAB4770);
  *(v0 + 112) = sub_1BFAAF7D8();
  return v0;
}

uint64_t sub_1BFA5D030(uint64_t a1)
{
  v2 = v1;
  if (qword_1EDCC8BC0 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_5();
  }

  v4 = sub_1BFAAF688();
  __swift_project_value_buffer(v4, qword_1EDCC8B70);

  v5 = sub_1BFAAF668();
  v6 = sub_1BFAAFB68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(*(v2 + 112) + 16);

    _os_log_impl(&dword_1BF9F6000, v5, v6, "[warning] Force resuming %ld pending requests to Suggestions service.", v7, 0xCu);
    MEMORY[0x1BFB618C0](v7, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v8 = *(v2 + 112);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = *(v2 + 112);

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_13:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = *(v8 + 56) + ((v15 << 10) | (16 * v16));
      v19 = *v17;
      v18 = *(v17 + 8);
      v21[0] = a1;

      v19(v21);

      if (!v11)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_13;
    }
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE0, &unk_1BFAB4778);
  sub_1BFAAF7E8();
  return swift_endAccess();
}

uint64_t sub_1BFA5D280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);
  v7 = sub_1BFA01764(a1, a2);
  v9 = v8;
  if (v8)
  {
    v10 = v7;
    v11 = *(v3 + 112);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + 112);
    v12 = v16[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB888, &unk_1BFAB1940);
    sub_1BFAAFCD8();
    v13 = *(v16[6] + 16 * v10 + 8);

    v14 = *(v16[7] + 16 * v10 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCD8, &qword_1BFAB4770);
    sub_1BFAAFCF8();
    *(v3 + 112) = v16;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return v9 & 1;
}

void ContinuationsManager.ManagedContinuation.resume(returning:)()
{
  OUTLINED_FUNCTION_102();
  v2 = v1;
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_22();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_22();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_20_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v15 = OUTLINED_FUNCTION_36_7();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v15);
  v16 = OUTLINED_FUNCTION_18_7();
  v17(v16);
  v18 = OUTLINED_FUNCTION_17_4();
  v19(v18);
  OUTLINED_FUNCTION_11_8();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v3;
  *(v20 + 40) = *(v2 + 24);
  v21 = OUTLINED_FUNCTION_32_4(v20);
  v22(v21);
  v23 = OUTLINED_FUNCTION_30_4();
  v24(v23);
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA5D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(a6 - 8);
  v8[7] = v9;
  v10 = *(v9 + 64) + 15;
  v8[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5D63C, 0, 0);
}

uint64_t sub_1BFA5D63C()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for ContinuationsManager.ManagedContinuation();
  OUTLINED_FUNCTION_6_9(v5);

  return MEMORY[0x1EEE6DFA0](sub_1BFA5D6AC, v6, 0);
}

uint64_t sub_1BFA5D6AC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 72);
  *(v0 + 96) = sub_1BFA5D280(*(v0 + 80), *(v0 + 88)) & 1;
  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA5D714()
{
  if (*(v0 + 96) == 1)
  {
    v1 = OUTLINED_FUNCTION_12_9();
    v2(v1);
    OUTLINED_FUNCTION_14_4();
    sub_1BFAAFA78();
    sub_1BFAAFA68();
  }

  v3 = *(v0 + 64);

  OUTLINED_FUNCTION_85();

  return v4();
}

void ContinuationsManager.ManagedContinuation.resume(throwing:)()
{
  OUTLINED_FUNCTION_102();
  v2 = v1;
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_22();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_22();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_20_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v15 = OUTLINED_FUNCTION_36_7();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v15);
  v16 = OUTLINED_FUNCTION_18_7();
  v17(v16);
  v18 = OUTLINED_FUNCTION_17_4();
  v19(v18);
  OUTLINED_FUNCTION_11_8();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = *(v2 + 16);
  v20[5] = v3;
  v20[6] = *(v2 + 32);
  v21 = OUTLINED_FUNCTION_32_4(v20);
  v22(v21);
  v23 = OUTLINED_FUNCTION_30_4();
  v24(v23);
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA5D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(a7 - 8);
  v8[7] = v9;
  v10 = *(v9 + 64) + 15;
  v8[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5DA50, 0, 0);
}

uint64_t sub_1BFA5DA50()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for ContinuationsManager.ManagedContinuation();
  OUTLINED_FUNCTION_6_9(v5);

  return MEMORY[0x1EEE6DFA0](sub_1BFA5DAC0, v6, 0);
}

uint64_t sub_1BFA5DAC0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 72);
  *(v0 + 96) = sub_1BFA5D280(*(v0 + 80), *(v0 + 88)) & 1;
  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA5DB28()
{
  if (*(v0 + 96) == 1)
  {
    v1 = OUTLINED_FUNCTION_12_9();
    v2(v1);
    OUTLINED_FUNCTION_14_4();
    sub_1BFAAFA78();
    sub_1BFAAFA58();
  }

  v3 = *(v0 + 64);

  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t sub_1BFA5DBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1BFAAFA78();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ContinuationsManager.ManagedContinuation();
  *(a5 + *(result + 44)) = a2;
  v12 = (a5 + *(result + 48));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t sub_1BFA5DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA5DCAC()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 72) = v5;
  *v5 = v6;
  v5[1] = sub_1BFA5DDA8;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v8, 0, 0, 0xD00000000000002FLL, 0x80000001BFAB95B0, sub_1BFA5F46C, v2, v7);
}

uint64_t sub_1BFA5DDA8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t sub_1BFA5DEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v35 = a5;
  v32 = a3;
  v33 = a2;
  v8 = *(a6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BFAAFA78();
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v30 - v19;
  v21 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v11 + 16))(v15, a1, v10);
  (*(v8 + 16))(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v32, a6);
  v22 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v8 + 80) + v23 + 8) & ~*(v8 + 80);
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = a6;
  (*(v11 + 32))(&v26[v22], v15, v30);
  *&v26[v23] = v33;
  (*(v8 + 32))(&v26[v24], v31, a6);
  v27 = &v26[v25];
  v28 = v35;
  *v27 = v34;
  *(v27 + 1) = v28;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA5E180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v20;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = *(v20 - 8);
  v8[8] = v9;
  v8[9] = *(v9 + 64);
  v8[10] = swift_task_alloc();
  v10 = sub_1BFAAFA78();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v8[13] = *(v11 + 64);
  v8[14] = swift_task_alloc();
  v12 = type metadata accessor for ContinuationsManager.ManagedContinuation();
  v8[15] = v12;
  v13 = *(v12 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();
  v15 = sub_1BFAAE3F8();
  v8[18] = v15;
  v16 = *(v15 - 8);
  v8[19] = v16;
  v17 = *(v16 + 64) + 15;
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5E398, 0, 0);
}

uint64_t sub_1BFA5E398()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[11];
  v38 = v0[10];
  v7 = v0[8];
  v39 = v0[13];
  v40 = v0[9];
  v34 = v0[18];
  v35 = v0[7];
  v8 = v0[3];
  v36 = v0[15];
  v37 = v0[4];
  v9 = v0[2];
  v32 = v9;
  sub_1BFAAE3E8();
  v10 = sub_1BFAAE398();
  v30 = v11;
  v31 = v10;
  (*(v2 + 8))(v1, v34);
  v12 = *(v5 + 16);
  v12(v4, v9, v6);
  v13 = v35;
  v14 = sub_1BFA5DBCC(v4, v8, v31, v30, v3);
  OUTLINED_FUNCTION_33_3(v14, v15, v16, v17, v18, v19, v20, v21, v30, v31, v32, v34, v35, v36);
  v0[21] = v22;
  v0[22] = *(v23 + 8);
  v24 = v6;
  v12(v4, v33, v6);
  v25 = v13;
  (*(v7 + 16))(v38, v37, v13);
  v26 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v27 = (v39 + *(v7 + 80) + v26) & ~*(v7 + 80);
  v28 = swift_allocObject();
  v0[23] = v28;
  *(v28 + 16) = v25;
  (*(v5 + 32))(v28 + v26, v4, v24);
  (*(v7 + 32))(v28 + v27, v38, v25);

  return MEMORY[0x1EEE6DFA0](sub_1BFA5E5A8, v8, 0);
}

uint64_t sub_1BFA5E5A8()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[3];
  sub_1BFA0143C(v0[21], v0[22], sub_1BFA5FBEC, v0[23]);

  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA5E62C()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 80);
  v7 = *(v0 + 48);
  (*(v0 + 40))(v2);
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_85();

  return v8();
}

uint64_t sub_1BFA5E6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v8);
  sub_1BFAAFA78();
  return sub_1BFAAFA68();
}

uint64_t sub_1BFA5E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA5E7EC()
{
  OUTLINED_FUNCTION_40();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 64) = v4;
  *v4 = v5;
  v4[1] = sub_1BFA5E8D4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000029, 0x80000001BFAB95E0, sub_1BFA5F47C, v1, v6);
}

uint64_t sub_1BFA5E8D4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BFA5E9FC, 0, 0);
  }

  else
  {
    v7 = *(v3 + 56);

    OUTLINED_FUNCTION_85();

    return v8();
  }
}

uint64_t sub_1BFA5E9FC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_85();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1BFA5EA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  v8 = sub_1BFAAFA78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v9 + 16))(v13, a1, v8);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a5;
  (*(v9 + 32))(&v22[v20], v13, v8);
  *&v22[v21] = a2;
  v23 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
  v24 = v27;
  *v23 = v26;
  *(v23 + 1) = v24;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA5EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  v9 = sub_1BFAAFA78();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v8[10] = *(v10 + 64);
  v8[11] = swift_task_alloc();
  v11 = type metadata accessor for ContinuationsManager.ManagedContinuation();
  v8[12] = v11;
  v12 = *(v11 - 8);
  v8[13] = v12;
  v13 = *(v12 + 64) + 15;
  v8[14] = swift_task_alloc();
  v14 = sub_1BFAAE3F8();
  v8[15] = v14;
  v15 = *(v14 - 8);
  v8[16] = v15;
  v16 = *(v15 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA5EE48, 0, 0);
}

uint64_t sub_1BFA5EE48()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[9];
  v32 = v0[12];
  v33 = v0[10];
  v6 = v0[8];
  v31 = v0[7];
  v29 = v0[15];
  v30 = v0[6];
  v8 = v0[2];
  v7 = v0[3];
  v27 = v8;
  sub_1BFAAE3E8();
  v9 = sub_1BFAAE398();
  v26 = v10;
  (*(v2 + 8))(v1, v29);
  v11 = *(v5 + 16);
  v11(v4, v8, v6);
  v12 = v30;
  v13 = sub_1BFA5DBCC(v4, v7, v9, v26, v3);
  OUTLINED_FUNCTION_33_3(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v29, v30, v31, v32);
  v0[18] = v21;
  v0[19] = *(v22 + 8);
  v11(v4, v28, v6);
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v0[20] = v24;
  *(v24 + 16) = v12;
  (*(v5 + 32))(v24 + v23, v4, v6);

  return MEMORY[0x1EEE6DFA0](sub_1BFA5EFE4, v7, 0);
}

uint64_t sub_1BFA5EFE4()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[3];
  sub_1BFA0143C(v0[18], v0[19], sub_1BFA5F9AC, v0[20]);

  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA5F068()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 40);
  (*(v0 + 32))(v2);
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_85();

  return v7();
}

uint64_t sub_1BFA5F118(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  sub_1BFAAFA78();
  return sub_1BFAAFA58();
}

uint64_t ContinuationsManager.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ContinuationsManager.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BFA5F224()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = type metadata accessor for ContinuationsManager.ManagedContinuation();
  OUTLINED_FUNCTION_15(v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(*(v3 - 8) + 80);
  OUTLINED_FUNCTION_31_3();
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  OUTLINED_FUNCTION_5_6(v11);
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA5D580(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1BFA5F348()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = type metadata accessor for ContinuationsManager.ManagedContinuation();
  OUTLINED_FUNCTION_15(v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(*(v2 - 8) + 80);
  OUTLINED_FUNCTION_31_3();
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  OUTLINED_FUNCTION_5_6(v11);
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA5D994(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t dispatch thunk of ContinuationsManager.withManagedContinuation<A>(defaultResult:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 152);
  v17 = (v12 + *v12);
  v13 = v12[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v6 + 16) = v14;
  *v14 = v15;
  v14[1] = sub_1BF9FDF08;

  return v17(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ContinuationsManager.withManagedThrowingContinuation<A>(request:)()
{
  v2 = *(*v0 + 160);
  v7 = (v2 + *v2);
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1BF9FDE28;
  OUTLINED_FUNCTION_14_4();

  return v7();
}

uint64_t sub_1BFA5F78C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = sub_1BFAAFA78();
  if (v5 <= 0x3F)
  {
    type metadata accessor for ContinuationsManager();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BFA5F83C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1BFA5F868()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  OUTLINED_FUNCTION_10_7();
  v3 = sub_1BFAAFA78();
  OUTLINED_FUNCTION_15(v3);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v6);
  v9 = v0[2];
  v10 = v0[3];
  v11 = *(v0 + v7);
  v12 = *(v0 + v7 + 8);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA5EC78(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BFA5F9AC(void *a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
  v4 = *(*(sub_1BFAAFA78() - 8) + 80);

  return sub_1BFA5F118(a1);
}

uint64_t sub_1BFA5FA50()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[4];
  OUTLINED_FUNCTION_10_7();
  v3 = sub_1BFAAFA78();
  OUTLINED_FUNCTION_15(v3);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = v0[2];
  v9 = v0[3];
  v10 = (v0 + ((*(*(v2 - 8) + 64) + ((v6 + *(*(v2 - 8) + 80) + 8) & ~*(*(v2 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA5E180(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1BFA5FBEC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1BFAAFA78();
  OUTLINED_FUNCTION_15(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = v1 + ((v9 + *(v8 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_1BFA5E6F0(a1, v1 + v9, v10, v3);
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t result)
{
  v2[9] = *(v1 + *(result + 44));
  v3 = (v1 + *(result + 48));
  v2[10] = *v3;
  v2[11] = v3[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_4()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 88);
  return result;
}

void OUTLINED_FUNCTION_21_5()
{

  sub_1BFA0C8A4();
}

_BYTE *storeEnumTagSinglePayload for SalientEntityExtractors(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BFA5FE7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB988, &qword_1BFAB4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFAB1F20;
  v12 = a1(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(inited + 32) = a2();
  sub_1BFAAF6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9A0, &qword_1BFAB2620);
  sub_1BFAAE808();
  v15 = type metadata accessor for UsoSalientEntityExtractor();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  result = sub_1BFA60810(inited, v10);
  if (result)
  {
    v19 = &off_1F3F0A010;
  }

  else
  {
    v15 = 0;
    v19 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = result;
  a3[3] = v15;
  a3[4] = v19;
  return result;
}

uint64_t sub_1BFA5FFE4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = sub_1BFAAF688();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v28, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BFAAEFB8();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v27, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BFAAF738();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BFA48E98())
  {
    sub_1BFAAF6B8();
    sub_1BFAAF708();
    (*(v12 + 8))(v16, v11);
    sub_1BFA494C8();
    v30[3] = sub_1BFAAF308();
    v17 = MEMORY[0x1E69D3288];
    v30[4] = sub_1BFA60F8C(&qword_1EBDFBB50, MEMORY[0x1E69D3288]);
    v30[5] = sub_1BFA60F8C(&qword_1EBDFBB58, v17);
    __swift_allocate_boxed_opaque_existential_1Tm(v30);
    sub_1BFAAF2F8();
    (*(v6 + 104))(v10, *MEMORY[0x1E69D3100], v27);
    sub_1BFAAF6A8();
    v18 = v29;
    sub_1BFAAED98();
    v19 = 0;
  }

  else
  {
    v20 = v29;
    sub_1BFAAF228();
    v21 = sub_1BFAAF668();
    v22 = sub_1BFAAFB78();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1BF9F6000, v21, v22, "Candidate from RR is not visible so is not an open app candidate", v23, 2u);
      MEMORY[0x1BFB618C0](v23, -1, -1);
    }

    (*(v1 + 8))(v5, v28);
    v19 = 1;
    v18 = v20;
  }

  v24 = sub_1BFAAEDA8();
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v24);
}

uint64_t sub_1BFA60378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = sub_1BFAAEFB8();
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43, v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BFAAF688();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BFAAF738();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCF0, &unk_1BFAB4938);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v38 - v20;
  v22 = sub_1BFAAEC18();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_1BFAAF6B8();
  sub_1BFA8F5FC(v21);
  (*(v12 + 8))(v16, v11);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    v28 = v45;
    sub_1BFA60F24(v21);
    sub_1BFAAF228();
    v29 = sub_1BFAAF668();
    v30 = sub_1BFAAFB78();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1BF9F6000, v29, v30, "no home entity for active home extractor could be computed from the RR candidate", v31, 2u);
      MEMORY[0x1BFB618C0](v31, -1, -1);
    }

    (*(v39 + 8))(v10, v40);
    v32 = 1;
    v33 = v28;
  }

  else
  {
    (*(v23 + 32))(v27, v21, v22);
    v46[3] = v22;
    v34 = MEMORY[0x1E69D2ED8];
    v46[4] = sub_1BFA60F8C(&qword_1EBDFBCF8, MEMORY[0x1E69D2ED8]);
    v46[5] = sub_1BFA60F8C(&qword_1EBDFBD00, v34);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v46);
    (*(v23 + 16))(boxed_opaque_existential_1Tm, v27, v22);
    (*(v41 + 104))(v42, *MEMORY[0x1E69D30F0], v43);
    sub_1BFAAF6A8();
    v33 = v45;
    sub_1BFAAED98();
    (*(v23 + 8))(v27, v22);
    v32 = 0;
  }

  v36 = sub_1BFAAEDA8();
  return __swift_storeEnumTagSinglePayload(v33, v32, 1, v36);
}

uint64_t sub_1BFA60810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = *v2;
  v5 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  result = (sub_1BFA77108)();
  v7 = result;
  v8 = 0;
  while (v7 != v8)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB60E90](v8, a1);
      v9 = result;
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v11 = sub_1BFA60A48(v9);

    ++v8;
    if (v11)
    {
      MEMORY[0x1BFB60C00](result);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BFAAFA08();
      }

      result = sub_1BFAAFA38();
      v5 = v22;
      v8 = v10;
    }
  }

  *(v3 + 2) = v5;
  if (sub_1BFA77108(v5))
  {
    v12 = OBJC_IVAR____TtC18SiriSuggestionsAPI25UsoSalientEntityExtractor_transformer;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
    OUTLINED_FUNCTION_0(v13);
    (*(v14 + 32))(&v3[v12], a2);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
    OUTLINED_FUNCTION_0(v15);
    (*(v16 + 8))(a2);
    v17 = *(v3 + 2);

    v18 = *(*v3 + 48);
    v19 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_1BFA60A48(uint64_t a1)
{
  v2 = sub_1BFAAF688();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x1BFB5F7E0](a1))
  {
    v8 = sub_1BFAAF6E8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    return sub_1BFAAF6D8();
  }

  else
  {
    sub_1BFAAF228();
    v12 = sub_1BFAAF668();
    v13 = sub_1BFAAFB88();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BF9F6000, v12, v13, "Unable to create USO entity for querying SRR", v14, 2u);
      MEMORY[0x1BFB618C0](v14, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }
}

uint64_t sub_1BFA60BC4(void *a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = v3[2];
  result = sub_1BFA77108(v5);
  v7 = result;
  v8 = 0;
  v11 = OBJC_IVAR____TtC18SiriSuggestionsAPI25UsoSalientEntityExtractor_transformer;
  while (1)
  {
    if (v7 == v8)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB60E90](v8, v5);
      v9 = result;
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v10 = sub_1BFA88244(a1, v9, v3 + v11, v4, &off_1F3F0A010);

    if (v2 || *(v10 + 2))
    {
      return v10;
    }

    ++v8;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1BFA60D14()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC18SiriSuggestionsAPI25UsoSalientEntityExtractor_transformer;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UsoSalientEntityExtractor()
{
  result = qword_1EDCC67D0;
  if (!qword_1EDCC67D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BFA60E10()
{
  sub_1BFA60EB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BFA60EB0()
{
  if (!qword_1EDCC6F78)
  {
    sub_1BFAAF6C8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB9A0, &qword_1BFAB2620);
    v0 = sub_1BFAAE828();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC6F78);
    }
  }
}

uint64_t sub_1BFA60F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCF0, &unk_1BFAB4938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BFA60F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BFA61024@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    OUTLINED_FUNCTION_54(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v7);
}

uint64_t sub_1BFA610CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v6 = v5;
  if (v4)
  {
    sub_1BFA75648(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

SiriSuggestionsAPI::TypingSessionEndReason_optional __swiftcall TypingSessionEndReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BFAAFD58();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TypingSessionEndReason.rawValue.getter()
{
  result = 0x7373696D736964;
  switch(*v0)
  {
    case 1:
      result = 0x6974736567677573;
      break;
    case 2:
      result = 0x6F4D686374697773;
      break;
    case 3:
      result = 0x74696D627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA6129C@<X0>(uint64_t *a1@<X8>)
{
  result = TypingSessionEndReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1BFA612C4()
{
  *&xmmword_1EBDFBD08 = MEMORY[0x1E69E7CC0];
  *(&xmmword_1EBDFBD08 + 1) = nullsub_1;
  *&xmmword_1EBDFBD18 = 0;
  *(&xmmword_1EBDFBD18 + 1) = nullsub_1;
  qword_1EBDFBD28 = 0;
}

uint64_t sub_1BFA61304()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v36 = &v33 - v3;
  v4 = sub_1BFAAE3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v33 - v16;
  v18 = type metadata accessor for SiriSuggestions.SuggestionList();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AssistantEngineSuggestions(0);
  __swift_allocate_value_buffer(v23, qword_1EDCC6B10);
  v34 = __swift_project_value_buffer(v23, qword_1EDCC6B10);
  v24 = sub_1BFAAF288();
  v40[3] = sub_1BFAAECE8();
  v40[4] = sub_1BF9FD8E4(&qword_1EDCC74A8, MEMORY[0x1E69D2F48]);
  v40[0] = v24;
  sub_1BFAAE3E8();
  sub_1BF9F93E8(v40, v39);
  v25 = *(v5 + 16);
  v25(v14, v17, v4);
  sub_1BF9F93E8(v39, v38);
  v35 = v10;
  v25(v10, v14, v4);
  v26 = sub_1BFAAED08();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v26);
  v37 = MEMORY[0x1E69E7CC0];
  sub_1BFA1B5D0(&v37);
  v27 = *(v5 + 8);
  v27(v17, v4);
  __swift_destroy_boxed_opaque_existential_2Tm(v40);
  v27(v14, v4);
  __swift_destroy_boxed_opaque_existential_2Tm(v39);
  *v22 = v37;
  sub_1BF9FA474(v38, (v22 + 8));
  (*(v5 + 32))(&v22[v18[6]], v35, v4);
  *&v22[v18[7]] = 0xBFF0000000000000;
  sub_1BFA17BBC(v36, &v22[v18[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
  v28 = v34;
  result = sub_1BFA75428(v22, v34);
  v30 = (v28 + v23[5]);
  *v30 = nullsub_1;
  v30[1] = 0;
  v31 = (v28 + v23[6]);
  *v31 = nullsub_1;
  v31[1] = 0;
  v32 = (v28 + v23[7]);
  *v32 = nullsub_1;
  v32[1] = 0;
  return result;
}

uint64_t SiriSuggestionsFacade.__allocating_init()()
{
  static SiriSuggestionsFacade.getDefaultAPIClientProvider()(v7);
  sub_1BFAAF0E8();
  v0 = sub_1BFAAF0D8();
  return OUTLINED_FUNCTION_169(v0, MEMORY[0x1E69D3170], v2, v3, v4, v5, v6, v7[0]);
}

uint64_t static SiriSuggestionsFacade.getDefaultAPIClientProvider()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v3 = OUTLINED_FUNCTION_60_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v31 - v7;
  if (static SiriSuggestions.Constants.isSiriRuntimeEnabled()())
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v9 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v9, qword_1EDCC77C8);
    v10 = sub_1BFAAF668();
    v11 = sub_1BFAAFB78();
    v12 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_2_9();
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BF9F6000, v10, v11, "Detected SiriRuntime. Using runtime provider for facade", v14, 2u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    sub_1BFAAEFD8();
    OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_86_2();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = type metadata accessor for SiriRuntimeSuggestionsAPIClientProvider(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    result = sub_1BFA17BBC(v8, v22 + OBJC_IVAR____TtC18SiriSuggestionsAPI39SiriRuntimeSuggestionsAPIClientProvider_assistantTurnState, &qword_1EBDFB640, &qword_1BFAB11D0);
    v24 = &protocol witness table for SiriRuntimeSuggestionsAPIClientProvider;
  }

  else
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v25 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v25, qword_1EDCC77C8);
    v26 = sub_1BFAAF668();
    v27 = sub_1BFAAFB78();
    v28 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_2_9();
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BF9F6000, v26, v27, "Using SiriSuggestionsXPCOnlyAPIClientProvider", v30, 2u);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v19 = type metadata accessor for SiriSuggestionsXPCOnlyAPIClientProvider();
    result = swift_allocObject();
    v22 = result;
    v24 = &off_1F3F0B578;
  }

  a1[3] = v19;
  a1[4] = v24;
  *a1 = v22;
  return result;
}

uint64_t SiriSuggestionsFacade.__allocating_init(flagProvider:)(uint64_t *a1)
{
  static SiriSuggestionsFacade.getDefaultAPIClientProvider()(v5);
  sub_1BF9F93E8(a1, v4);
  v2 = SiriSuggestionsFacade.__allocating_init(clientProvider:flagProvider:)(v5, v4);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v2;
}

uint64_t SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:dialogPhase:suggestionCallback:)()
{
  OUTLINED_FUNCTION_80();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_1BFA61AE8;
  OUTLINED_FUNCTION_12_3();

  return SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:dialogPhase:suggestionCallback:)(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BFA61AE8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA61BE0()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[4];
  if (v1)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = v2;
    v5 = OUTLINED_FUNCTION_148();
    sub_1BFA75028(v5, v6, v1);
    if (v2)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_163();
      if (!swift_dynamicCastObjCClass())
      {
      }
    }
  }

  OUTLINED_FUNCTION_24_0();

  return v7();
}

uint64_t SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:dialogPhase:suggestionCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 152) = v16;
  *(v9 + 160) = v8;
  *(v9 + 136) = v15;
  *(v9 + 120) = v14;
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 88) = a5;
  *(v9 + 96) = a6;
  *(v9 + 72) = a3;
  *(v9 + 80) = a4;
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  v10 = OUTLINED_FUNCTION_12();
  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA61CCC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;

  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 168) = v2;
  *v2 = v3;
  v2[1] = sub_1BFA61D9C;
  v4 = *(v0 + 160);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);
  v16 = *(v0 + 144);
  v17 = *(v0 + 152);
  v15 = *(v0 + 120);

  return SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:executionContextData:suggestionCallback:)();
}

uint64_t sub_1BFA61D9C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 168);
  v6 = *v2;
  *v4 = *v2;
  *(v3 + 176) = v0;

  OUTLINED_FUNCTION_219();
  v8 = *(v7 + 24);
  v9 = *(v1 + 48);

  if (v0)
  {
    OUTLINED_FUNCTION_49();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v6 + 8);

    return v13();
  }
}

uint64_t sub_1BFA61EF8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 176);
  return v2();
}

uint64_t sub_1BFA61F1C()
{
  OUTLINED_FUNCTION_40();
  v2 = v0[27];
  v1 = v0[28];

  OUTLINED_FUNCTION_85();
  v4 = v0[38];

  return v3();
}

uint64_t sub_1BFA61F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 400) = v21;
  *(v8 + 408) = v22;
  *(v8 + 384) = v20;
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  *(v8 + 352) = a5;
  *(v8 + 360) = a6;
  *(v8 + 344) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0) - 8) + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v10 = type metadata accessor for SiriSuggestions.SuggestionList();
  *(v8 + 424) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v12 = sub_1BFAAE3F8();
  *(v8 + 456) = v12;
  v13 = *(v12 - 8);
  *(v8 + 464) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  v15 = sub_1BFAAF648();
  *(v8 + 520) = v15;
  v16 = *(v15 - 8);
  *(v8 + 528) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA62174, 0, 0);
}

uint64_t sub_1BFA62174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v18 = *(v14 + 536);
  v19 = *(v14 + 344);
  v20 = sub_1BFAAF258();
  sub_1BFAAF238();

  v21 = sub_1BFAAF258();
  sub_1BFAAF268();

  sub_1BFA17B2C(v19, v14 + 184, &qword_1EBDFB558, &qword_1BFAB0980);
  if (*(v14 + 208))
  {
    v22 = *(v14 + 352);
    sub_1BF9FA474((v14 + 184), v14 + 144);
    if (v22)
    {
      v23 = *(v14 + 352);
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v24 = *(v14 + 512);
      v26 = *(v14 + 456);
      v25 = *(v14 + 464);
      v27 = *(v14 + 360);
      v28 = sub_1BFAAF688();
      v29 = __swift_project_value_buffer(v28, qword_1EDCC77C8);
      (*(v25 + 16))(v24, v27, v26);
      v30 = sub_1BFAAF668();
      v31 = sub_1BFAAFB68();
      v32 = OUTLINED_FUNCTION_136_0(v31);
      v33 = *(v14 + 512);
      v35 = *(v14 + 456);
      v34 = *(v14 + 464);
      if (v32)
      {
        OUTLINED_FUNCTION_51_0();
        a10 = v23;
        a11 = OUTLINED_FUNCTION_81_1();
        *v29 = 136315138;
        OUTLINED_FUNCTION_4_9();
        sub_1BF9FD8E4(v36, v37);
        sub_1BFAAFEE8();
        OUTLINED_FUNCTION_206();
        v38 = *(v34 + 8);
        v39 = OUTLINED_FUNCTION_213();
        v41 = v40(v39);
        v43 = OUTLINED_FUNCTION_157(v41, v42);

        *(v29 + 4) = v43;
        OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v44, v45, "Submitting required intent properties for requestId: %s");
        OUTLINED_FUNCTION_179();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      else
      {

        v48 = *(v34 + 8);
        v49 = OUTLINED_FUNCTION_213();
        v50(v49);
      }

      v52 = *(v14 + 360);
      v51 = *(v14 + 368);
      v53 = v51[6];
      __swift_project_boxed_opaque_existential_1(v51 + 2, v51[5]);
      sub_1BFAAE398();
      OUTLINED_FUNCTION_221();
      *(v14 + 544) = v54;
      v55 = swift_task_alloc();
      *(v14 + 552) = v55;
      v56 = *(*(v53 + 16) + 8);
      *v55 = v14;
      v55[1] = sub_1BFA628D8;
      v57 = *(v14 + 376);
      v58 = *(v14 + 384);
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_61();

      return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:owner:intentProps:verb:)(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
    }

    __swift_destroy_boxed_opaque_existential_2Tm((v14 + 144));
  }

  else
  {
    sub_1BF9FDD5C(v14 + 184, &qword_1EBDFB558, &qword_1BFAB0980);
  }

  v46 = *(v14 + 392);
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_113_0(v46);
    if (v19)
    {
      *(v14 + 576) = 0;
      *(v14 + 568) = v19;
      v72 = *(v14 + 360);
      OUTLINED_FUNCTION_52_4(v47, 0);
      OUTLINED_FUNCTION_63_3();
      v73 = sub_1BFAAE398();
      OUTLINED_FUNCTION_168(v73, v74);
      v75 = swift_task_alloc();
      *(v14 + 592) = v75;
      v76 = *(*(v17 + 16) + 8);
      *v75 = v14;
      OUTLINED_FUNCTION_19_4(v75);
      OUTLINED_FUNCTION_61();

      return SiriSuggestionsBaseAPIClient.submitExecutionParam(for:propertyKey:propertyValue:)();
    }

    OUTLINED_FUNCTION_176();
    while (v71 != v70)
    {
      v69 = OUTLINED_FUNCTION_203(v69);
    }
  }

  v78 = *(v14 + 368);
  v79 = v78[16];
  v80 = v78[17];
  OUTLINED_FUNCTION_16_1(v78 + 13);
  OUTLINED_FUNCTION_46();
  if (sub_1BFAAF078())
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v81 = OUTLINED_FUNCTION_155();
    __swift_project_value_buffer(v81, qword_1EDCC77C8);
    v82 = OUTLINED_FUNCTION_34_5();
    v83(v82);
    v84 = sub_1BFAAF668();
    v85 = sub_1BFAAFB68();
    v86 = OUTLINED_FUNCTION_82_1(v85);
    v87 = *(v14 + 504);
    v88 = *(v14 + 456);
    v89 = *(v14 + 464);
    if (v86)
    {
      OUTLINED_FUNCTION_51_0();
      a11 = OUTLINED_FUNCTION_32();
      *v15 = 136315138;
      OUTLINED_FUNCTION_4_9();
      sub_1BF9FD8E4(v90, v91);
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_69_0();
      v92 = OUTLINED_FUNCTION_51_2();
      (v16)(v92);
      v93 = OUTLINED_FUNCTION_34_2();
      sub_1BF9F88A8(v93, v94, v95);
      OUTLINED_FUNCTION_131_0();

      *(v15 + 4) = v87;
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(a11);
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      v125 = OUTLINED_FUNCTION_51_2();
      (v16)(v125);
    }

    *(v14 + 624) = v16;
    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_165();
    *(v14 + 632) = v126;
    v127 = *(*(*(v16 + 16) + 8) + 48);
    OUTLINED_FUNCTION_15_0();
    v156 = v128 + *v128;
    v130 = *(v129 + 4);
    v131 = swift_task_alloc();
    *(v14 + 640) = v131;
    *v131 = v14;
    OUTLINED_FUNCTION_20_6(v131);
    OUTLINED_FUNCTION_61();

    return v136(v132, v133, v134, v135, v136, v137, v138, v139, a9, v156, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v101 = OUTLINED_FUNCTION_154();
    v102 = __swift_project_value_buffer(v101, qword_1EDCC77C8);
    *(v14 + 664) = v102;
    v104 = *(v16 + 16);
    v103 = v16 + 16;
    v105 = OUTLINED_FUNCTION_45_2();
    v106(v105);
    v107 = sub_1BFAAF668();
    v108 = sub_1BFAAFB68();
    v109 = OUTLINED_FUNCTION_82_1(v108);
    v111 = *(v14 + 464);
    v110 = *(v14 + 472);
    v112 = *(v14 + 456);
    if (v109)
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_202();
      *v102 = 136315138;
      OUTLINED_FUNCTION_4_9();
      sub_1BF9FD8E4(v113, v114);
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_69_0();
      v115 = OUTLINED_FUNCTION_40_0();
      v116(v115);
      v117 = OUTLINED_FUNCTION_34_2();
      sub_1BF9F88A8(v117, v118, v119);
      OUTLINED_FUNCTION_131_0();

      *(v102 + 4) = v110;
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v120, v121, v122, v123, v124, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      v140 = OUTLINED_FUNCTION_40_0();
      v141(v140);
    }

    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_165();
    *(v14 + 672) = v142;
    OUTLINED_FUNCTION_28_4(*(*(v103 + 24) + 16));
    v157 = v143 + *v143;
    v145 = *(v144 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v14 + 680) = v146;
    *v146 = v147;
    OUTLINED_FUNCTION_18_8(v146);
    OUTLINED_FUNCTION_61();

    return v153(v148, v149, v150, v151, v152, v153, v154, v155, a9, v157, a11, a12, a13, a14);
  }
}

uint64_t sub_1BFA628D8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 552);
  *v4 = *v2;
  *(v3 + 560) = v0;

  OUTLINED_FUNCTION_219();
  v7 = *(v6 + 544);

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BFA629F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_2Tm(v15 + 18);
  v19 = v15[49];
  if (!v19)
  {
LABEL_10:
    v31 = v15[46];
    v32 = v31[16];
    v33 = v31[17];
    OUTLINED_FUNCTION_16_1(v31 + 13);
    OUTLINED_FUNCTION_46();
    if (sub_1BFAAF078())
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v34 = OUTLINED_FUNCTION_155();
      __swift_project_value_buffer(v34, qword_1EDCC77C8);
      v35 = OUTLINED_FUNCTION_34_5();
      v36(v35);
      v37 = sub_1BFAAF668();
      v38 = sub_1BFAAFB68();
      v39 = OUTLINED_FUNCTION_82_1(v38);
      v40 = v15[63];
      v41 = v15[57];
      v42 = v15[58];
      if (v39)
      {
        OUTLINED_FUNCTION_51_0();
        a11 = OUTLINED_FUNCTION_32();
        *v16 = 136315138;
        OUTLINED_FUNCTION_4_9();
        sub_1BF9FD8E4(v43, v44);
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_69_0();
        v45 = OUTLINED_FUNCTION_51_2();
        (v17)(v45);
        v46 = OUTLINED_FUNCTION_34_2();
        sub_1BF9F88A8(v46, v47, v48);
        OUTLINED_FUNCTION_131_0();

        *(v16 + 4) = v40;
        OUTLINED_FUNCTION_27_6();
        _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(a11);
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      else
      {

        v78 = OUTLINED_FUNCTION_51_2();
        (v17)(v78);
      }

      v15[78] = v17;
      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_165();
      v15[79] = v79;
      v80 = *(*(*(v17 + 16) + 8) + 48);
      OUTLINED_FUNCTION_15_0();
      v109 = v81 + *v81;
      v83 = *(v82 + 4);
      v84 = swift_task_alloc();
      v15[80] = v84;
      *v84 = v15;
      OUTLINED_FUNCTION_20_6(v84);
      OUTLINED_FUNCTION_61();

      return v89(v85, v86, v87, v88, v89, v90, v91, v92, a9, v109, a11, a12, a13, a14);
    }

    else
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
        swift_once();
      }

      v54 = OUTLINED_FUNCTION_154();
      v55 = __swift_project_value_buffer(v54, qword_1EDCC77C8);
      v15[83] = v55;
      v57 = *(v17 + 16);
      v56 = v17 + 16;
      v58 = OUTLINED_FUNCTION_45_2();
      v59(v58);
      v60 = sub_1BFAAF668();
      v61 = sub_1BFAAFB68();
      v62 = OUTLINED_FUNCTION_82_1(v61);
      v64 = v15[58];
      v63 = v15[59];
      v65 = v15[57];
      if (v62)
      {
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_202();
        *v55 = 136315138;
        OUTLINED_FUNCTION_4_9();
        sub_1BF9FD8E4(v66, v67);
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_69_0();
        v68 = OUTLINED_FUNCTION_40_0();
        v69(v68);
        v70 = OUTLINED_FUNCTION_34_2();
        sub_1BF9F88A8(v70, v71, v72);
        OUTLINED_FUNCTION_131_0();

        *(v55 + 4) = v63;
        OUTLINED_FUNCTION_27_6();
        _os_log_impl(v73, v74, v75, v76, v77, 0xCu);
        OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
      }

      else
      {

        v93 = OUTLINED_FUNCTION_40_0();
        v94(v93);
      }

      OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_165();
      v15[84] = v95;
      OUTLINED_FUNCTION_28_4(*(*(v56 + 24) + 16));
      v110 = v96 + *v96;
      v98 = *(v97 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_33();
      v15[85] = v99;
      *v99 = v100;
      OUTLINED_FUNCTION_18_8(v99);
      OUTLINED_FUNCTION_61();

      return v106(v101, v102, v103, v104, v105, v106, v107, v108, a9, v110, a11, a12, a13, a14);
    }
  }

  v20 = OUTLINED_FUNCTION_113_0(v19);
  if (!v14)
  {
    OUTLINED_FUNCTION_176();
    while (v23 != v22)
    {
      v21 = OUTLINED_FUNCTION_203(v21);
    }

    goto LABEL_10;
  }

  v15[72] = 0;
  v15[71] = v14;
  v24 = v15[45];
  OUTLINED_FUNCTION_52_4(v20, 0);
  OUTLINED_FUNCTION_63_3();
  v25 = sub_1BFAAE398();
  OUTLINED_FUNCTION_168(v25, v26);
  v27 = swift_task_alloc();
  v15[74] = v27;
  v28 = *(*(v18 + 16) + 8);
  *v27 = v15;
  OUTLINED_FUNCTION_19_4(v27);
  OUTLINED_FUNCTION_61();

  return SiriSuggestionsBaseAPIClient.submitExecutionParam(for:propertyKey:propertyValue:)();
}

uint64_t sub_1BFA62EB8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 592);
  *v4 = *v2;
  *(v3 + 600) = v0;

  OUTLINED_FUNCTION_219();
  v7 = *(v6 + 584);

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BFA62FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  sub_1BF9FDD5C(v14 + 80, &qword_1EBDFB8A8, &qword_1BFAB5050);
  v18 = *(v14 + 576);
  v19 = (*(v14 + 568) - 1) & *(v14 + 568);
  if (v19)
  {
    v20 = *(v14 + 392);
LABEL_7:
    *(v14 + 576) = v18;
    *(v14 + 568) = v19;
    v22 = *(v14 + 360);
    v23 = *(v14 + 368);
    OUTLINED_FUNCTION_52_4(v20, v18);
    OUTLINED_FUNCTION_63_3();
    v24 = sub_1BFAAE398();
    OUTLINED_FUNCTION_168(v24, v25);
    v26 = swift_task_alloc();
    *(v14 + 592) = v26;
    v27 = *(*(v17 + 16) + 8);
    *v26 = v14;
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_61();

    return SiriSuggestionsBaseAPIClient.submitExecutionParam(for:propertyKey:propertyValue:)();
  }

  else
  {
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v20 = *(v14 + 392);
      if (v21 >= (((1 << *(v14 + 696)) + 63) >> 6))
      {
        break;
      }

      v19 = *(v20 + 8 * v21 + 64);
      ++v18;
      if (v19)
      {
        v18 = v21;
        goto LABEL_7;
      }
    }

    v30 = *(v14 + 368);
    v31 = v30[16];
    v32 = v30[17];
    OUTLINED_FUNCTION_16_1(v30 + 13);
    OUTLINED_FUNCTION_46();
    if (sub_1BFAAF078())
    {
      if (qword_1EDCC77C0 == -1)
      {
LABEL_12:
        v33 = OUTLINED_FUNCTION_155();
        __swift_project_value_buffer(v33, qword_1EDCC77C8);
        v34 = OUTLINED_FUNCTION_34_5();
        v35(v34);
        v36 = sub_1BFAAF668();
        v37 = sub_1BFAAFB68();
        v38 = OUTLINED_FUNCTION_82_1(v37);
        v39 = *(v14 + 504);
        v40 = *(v14 + 456);
        v41 = *(v14 + 464);
        if (v38)
        {
          OUTLINED_FUNCTION_51_0();
          a11 = OUTLINED_FUNCTION_32();
          *v15 = 136315138;
          OUTLINED_FUNCTION_4_9();
          sub_1BF9FD8E4(v42, v43);
          OUTLINED_FUNCTION_186();
          OUTLINED_FUNCTION_69_0();
          v44 = OUTLINED_FUNCTION_51_2();
          (v16)(v44);
          v45 = OUTLINED_FUNCTION_34_2();
          sub_1BF9F88A8(v45, v46, v47);
          OUTLINED_FUNCTION_131_0();

          *(v15 + 4) = v39;
          OUTLINED_FUNCTION_27_6();
          _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_2Tm(a11);
          OUTLINED_FUNCTION_1_2();
          MEMORY[0x1BFB618C0]();
          OUTLINED_FUNCTION_1_2();
          MEMORY[0x1BFB618C0]();
        }

        else
        {

          v77 = OUTLINED_FUNCTION_51_2();
          (v16)(v77);
        }

        *(v14 + 624) = v16;
        OUTLINED_FUNCTION_39_5();
        OUTLINED_FUNCTION_165();
        *(v14 + 632) = v78;
        v79 = *(*(*(v16 + 16) + 8) + 48);
        OUTLINED_FUNCTION_15_0();
        v108 = v80 + *v80;
        v82 = *(v81 + 4);
        v83 = swift_task_alloc();
        *(v14 + 640) = v83;
        *v83 = v14;
        OUTLINED_FUNCTION_20_6(v83);
        OUTLINED_FUNCTION_61();

        return v88(v84, v85, v86, v87, v88, v89, v90, v91, a9, v108, a11, a12, a13, a14);
      }

LABEL_27:
      OUTLINED_FUNCTION_0_3();
      swift_once();
      goto LABEL_12;
    }

    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v53 = OUTLINED_FUNCTION_154();
    v54 = __swift_project_value_buffer(v53, qword_1EDCC77C8);
    *(v14 + 664) = v54;
    v56 = *(v16 + 16);
    v55 = v16 + 16;
    v57 = OUTLINED_FUNCTION_45_2();
    v58(v57);
    v59 = sub_1BFAAF668();
    v60 = sub_1BFAAFB68();
    v61 = OUTLINED_FUNCTION_82_1(v60);
    v63 = *(v14 + 464);
    v62 = *(v14 + 472);
    v64 = *(v14 + 456);
    if (v61)
    {
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_202();
      *v54 = 136315138;
      OUTLINED_FUNCTION_4_9();
      sub_1BF9FD8E4(v65, v66);
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_69_0();
      v67 = OUTLINED_FUNCTION_40_0();
      v68(v67);
      v69 = OUTLINED_FUNCTION_34_2();
      sub_1BF9F88A8(v69, v70, v71);
      OUTLINED_FUNCTION_131_0();

      *(v54 + 4) = v62;
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      v92 = OUTLINED_FUNCTION_40_0();
      v93(v92);
    }

    OUTLINED_FUNCTION_39_5();
    OUTLINED_FUNCTION_165();
    *(v14 + 672) = v94;
    OUTLINED_FUNCTION_28_4(*(*(v55 + 24) + 16));
    v109 = v95 + *v95;
    v97 = *(v96 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_33();
    *(v14 + 680) = v98;
    *v98 = v99;
    OUTLINED_FUNCTION_18_8(v98);
    OUTLINED_FUNCTION_61();

    return v105(v100, v101, v102, v103, v104, v105, v106, v107, a9, v109, a11, a12, a13, a14);
  }
}

uint64_t sub_1BFA634D4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 640);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 648) = v0;

  if (!v0)
  {
    v9 = *(v3 + 632);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA635D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, size_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_61_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_80();
  a22 = v24;
  v65 = *(v24 + 648);
  v27 = *(v24 + 616);
  v28 = *(v24 + 608);
  v30 = *(v24 + 488);
  v29 = *(v24 + 496);
  v31 = *(v24 + 480);
  v32 = *(v24 + 456);
  v33 = *(v24 + 416);
  v34 = sub_1BFAAF288();
  *(v24 + 248) = sub_1BFAAECE8();
  OUTLINED_FUNCTION_25_5();
  v37 = sub_1BF9FD8E4(v35, v36);
  *(v24 + 224) = v34;
  *(v24 + 256) = v37;
  sub_1BFAAE3E8();
  sub_1BF9F93E8(v24 + 224, v24 + 264);
  v28(v30, v29, v32);
  sub_1BF9F93E8(v24 + 264, v24 + 304);
  v28(v31, v30, v32);
  sub_1BFAAED08();
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  a12 = MEMORY[0x1E69E7CC0];
  sub_1BFA1B5D0(&a12);
  if (v65)
  {

    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v44 = *(v24 + 624);
    v45 = *(v24 + 488);
    v46 = *(v24 + 480);
    v47 = *(v24 + 456);
    v48 = *(v24 + 464);
    v49 = *(v24 + 448);
    v50 = *(v24 + 424);
    v64 = v46;
    v66 = *(v24 + 416);
    v51 = *(v24 + 400);
    (v44)(*(v24 + 496), v47);
    __swift_destroy_boxed_opaque_existential_2Tm((v24 + 224));
    v52 = OUTLINED_FUNCTION_164();
    v44(v52);
    __swift_destroy_boxed_opaque_existential_2Tm((v24 + 264));
    *v49 = a12;
    sub_1BF9FA474((v24 + 304), (v49 + 8));
    (*(v48 + 32))(&v49[v50[6]], v64, v47);
    *&v49[v50[7]] = 0xBFF0000000000000;
    sub_1BFA17BBC(v66, &v49[v50[8]], &qword_1EBDFB670, &qword_1BFAB1CD0);
    v67 = v51 + *v51;
    v53 = v51[1];
    v54 = swift_task_alloc();
    *(v24 + 656) = v54;
    *v54 = v24;
    v54[1] = sub_1BFA6387C;
    v55 = *(v24 + 408);
    OUTLINED_FUNCTION_53(*(v24 + 448));
    OUTLINED_FUNCTION_12_3();

    return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, v64, v67, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1BFA6387C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 656);
  v3 = *(v1 + 448);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_1_7();
  sub_1BFA755F8();
  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA63980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v17 = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_190();

  v18 = *(v16 + 8);
  v19 = OUTLINED_FUNCTION_146();
  v20(v19);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_12_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA63A5C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 680);
  v3 = *(v1 + 672);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA63B5C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v1 = v0[83];
  v3 = v0[54];
  v2 = v0[55];
  OUTLINED_FUNCTION_6_10();
  sub_1BFA75648(v4, v5);
  v6 = sub_1BFAAF668();
  v7 = sub_1BFAAFB68();
  v8 = OUTLINED_FUNCTION_82_1(v7);
  v9 = v0[54];
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_51_0();
    *v10 = 134217984;
    v11 = *(SiriSuggestions.SuggestionList.suggestions.getter() + 16);

    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    *(v10 + 4) = v11;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
    v17 = v0[54];
    sub_1BFA755F8();
  }

  v18 = v0[50];

  v31 = v18 + *v18;
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[86] = v20;
  *v20 = v0;
  v20[1] = sub_1BFA63CF4;
  v21 = v0[51];
  OUTLINED_FUNCTION_53(v0[55]);
  OUTLINED_FUNCTION_112();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t sub_1BFA63CF4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 688);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA63DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_80();
  v18 = *(v17 + 440);
  OUTLINED_FUNCTION_1_7();
  sub_1BFA755F8();
  v19 = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_190();

  v20 = *(v16 + 8);
  v21 = OUTLINED_FUNCTION_146();
  v22(v21);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_12_3();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1BFA63EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  __swift_destroy_boxed_opaque_existential_2Tm((v18 + 144));
  v20 = *(v18 + 560);
  v21 = OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_118_0();

  v22 = *(v19 + 8);
  v23 = OUTLINED_FUNCTION_71();
  v24(v23);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1BFA63FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  v20 = *(v18 + 392);

  sub_1BF9FDD5C(v18 + 80, &qword_1EBDFB8A8, &qword_1BFAB5050);
  v21 = *(v18 + 600);
  v22 = OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_118_0();

  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_71();
  v25(v24);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1BFA640B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  v20 = *(v18 + 632);

  v21 = *(v18 + 648);
  v22 = OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_118_0();

  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_71();
  v25(v24);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t SiriSuggestionsFacade.flushLocalStoreProperties(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA641B4()
{
  OUTLINED_FUNCTION_72();
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v3 = *(v1 + 24);
  v4 = sub_1BFAAF688();
  __swift_project_value_buffer(v4, qword_1EDCC77C8);
  OUTLINED_FUNCTION_125_0();

  v5 = sub_1BFAAF668();
  sub_1BFAAFB68();
  OUTLINED_FUNCTION_53_0();
  if (os_log_type_enabled(v5, v0))
  {
    v6 = *(v1 + 16);
    v3 = *(v1 + 24);
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_81_1();
    *v2 = 136315138;
    v7 = OUTLINED_FUNCTION_148();
    *(v2 + 4) = sub_1BF9F88A8(v7, v8, v9);
    OUTLINED_FUNCTION_92_1();
    _os_log_impl(v10, v11, v12, v13, v2, 0xCu);
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  OUTLINED_FUNCTION_16_5(*(v1 + 32));
  v14 = *(OUTLINED_FUNCTION_39(*(v3 + 16)) + 48);
  OUTLINED_FUNCTION_30();
  v24 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_156(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_22_4(v19);

  return v22(v21);
}

uint64_t SiriSuggestionsFacade.flush(for:)()
{
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);
  v3 = OUTLINED_FUNCTION_60_1();

  return SiriSuggestionsFacade.flushLocalStoreProperties(for:)(v3, v4);
}

uint64_t SiriSuggestionsFacade.doContinuousConversationsHint(requestId:applicationSessionId:dialogPhase:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = 0;
  v7 = 0;
  v8 = 0;

  SiriSuggestionsFacade.doContinuousConversationsHint(requestId:applicationSessionId:executionContextData:)(v5, a3);
}

void SiriSuggestionsFacade.doContinuousConversationsHint(requestId:applicationSessionId:executionContextData:)(uint64_t *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v7 = *a1;
  v43 = a1[1];
  v42 = *(a1 + 16);
  v40 = a1[4];
  v41 = a1[3];
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v8 = sub_1BFAAF688();
  __swift_project_value_buffer(v8, qword_1EDCC77C8);
  v9 = sub_1BFAAF668();
  sub_1BFAAFB68();
  v10 = OUTLINED_FUNCTION_72_2();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_2_9();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_180(v12);
    OUTLINED_FUNCTION_212();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    v4 = v3;
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  v18 = *__swift_project_boxed_opaque_existential_1((v5 + 144), *(v5 + 168));
  OUTLINED_FUNCTION_111_0();
  v23 = sub_1BFA2BDBC(v19, v20, v21, v22);
  if (!v4)
  {
    v25 = v23;
    v26 = v24;
    if (v24)
    {
      if (v23)
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = v25;
        }
      }

      else
      {
        v27 = 0;
      }

      *a2 = v27;
      a2[1] = v25;
      a2[2] = v26;
    }

    else
    {
      v29 = sub_1BFAAF668();
      sub_1BFAAFB78();
      v30 = OUTLINED_FUNCTION_72_2();
      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_2_9();
        v32 = swift_slowAlloc();
        OUTLINED_FUNCTION_180(v32);
        OUTLINED_FUNCTION_212();
        _os_log_impl(v33, v34, v35, v36, v37, 2u);
        OUTLINED_FUNCTION_1_2();
        MEMORY[0x1BFB618C0]();
        v38 = OUTLINED_FUNCTION_67();
        sub_1BF9FFC50(v38, v39, 0);
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }
  }
}

uint64_t sub_1BFA6470C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v1 + 16));
  v2 = *(OUTLINED_FUNCTION_39(*(v0 + 16)) + 64);
  OUTLINED_FUNCTION_30();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_45(v6);
  v7 = OUTLINED_FUNCTION_46();

  return v9(v7);
}

uint64_t SiriSuggestionsFacade.doInApp(for:with:)()
{
  OUTLINED_FUNCTION_40();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_1BFAAE3F8();
  v1[11] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[12] = v6;
  v1[13] = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_100();
  v8 = sub_1BFAAED58();
  v1[15] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[16] = v9;
  v1[17] = *(v10 + 64);
  v1[18] = OUTLINED_FUNCTION_109();
  v1[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB90, &qword_1BFAB3AB0);
  v1[20] = v11;
  OUTLINED_FUNCTION_15(v11);
  v1[21] = v12;
  v14 = *(v13 + 64);
  v1[22] = OUTLINED_FUNCTION_100();
  v15 = sub_1BFAAF648();
  v1[23] = v15;
  OUTLINED_FUNCTION_15(v15);
  v1[24] = v16;
  v18 = *(v17 + 64);
  v1[25] = OUTLINED_FUNCTION_100();
  v19 = sub_1BFAAEF58();
  v1[26] = v19;
  OUTLINED_FUNCTION_15(v19);
  v1[27] = v20;
  v22 = *(v21 + 64);
  v1[28] = OUTLINED_FUNCTION_100();
  v23 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1BFA64A14()
{
  v1 = v0[10];
  v2 = v1[16];
  v3 = v1[17];
  OUTLINED_FUNCTION_16_1(v1 + 13);
  OUTLINED_FUNCTION_46();
  if (sub_1BFAAF038())
  {
    goto LABEL_5;
  }

  v4 = v0[28];
  v5 = v0[8];
  sub_1BFAAED28();
  if (qword_1EDCC74B0 != -1)
  {
    OUTLINED_FUNCTION_38_3();
  }

  v7 = v0[27];
  v6 = v0[28];
  __swift_project_value_buffer(v0[26], qword_1EDCC74B8);
  OUTLINED_FUNCTION_163();
  v8 = sub_1BFAAEF48();
  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_93();
  v11(v10);
  if (v8)
  {
LABEL_5:
    v57 = v0[25];
    v58 = v0[24];
    v12 = v0[22];
    v59 = v0[23];
    v13 = v0[21];
    v49 = v0[20];
    v62 = v0[19];
    v56 = v0[18];
    v64 = v0[17];
    v52 = v0[16];
    v60 = v0[15];
    v61 = v0[14];
    v53 = v0[12];
    v54 = v0[13];
    v14 = v0[10];
    v63 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    v51 = v0[7];
    v17 = sub_1BFAAF258();
    sub_1BFAAF238();

    v18 = sub_1BFAAF258();
    sub_1BFAAF268();

    v19 = *(*(*(v14 + 56) + 56) + 16);
    v0[5] = type metadata accessor for DispatchSELFLogger();
    v0[6] = &protocol witness table for DispatchSELFLogger;
    v0[2] = v19;
    v20 = swift_task_alloc();
    v48 = v16;
    v20[2] = v16;
    v20[3] = v14;
    v20[4] = v0 + 2;
    v20[5] = v15;
    type metadata accessor for SiriSuggestions.SuggestionList();
    (*(v13 + 104))(v12, *MEMORY[0x1E69E8790], v49);

    OUTLINED_FUNCTION_41_0();
    sub_1BFAAFB38();

    v50 = *(v52 + 16);
    v50(v62, v16, v60);
    (*(v53 + 16))(v61, v15, v63);
    v21 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v22 = (v64 + *(v53 + 80) + v21) & ~*(v53 + 80);
    v23 = (v54 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v55 = *(v52 + 32);
    (v55)(v24 + v21, v62, v60);
    (*(v53 + 32))(v24 + v22, v61, v63);
    *(v24 + v23) = v14;
    v50(v56, v48, v60);
    v25 = swift_allocObject();
    *(v25 + 16) = v14;
    OUTLINED_FUNCTION_147();
    v55();
    v26 = type metadata accessor for InAppSuggestions(0);
    v27 = (v51 + *(v26 + 20));
    *v27 = sub_1BFA75220;
    v27[1] = v24;
    v28 = (v51 + *(v26 + 24));
    *v28 = &unk_1BFAB49B0;
    v28[1] = v25;
    swift_retain_n();
    __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
    v29 = sub_1BFAAF258();
    sub_1BFAAF248();

    (*(v58 + 8))(v57, v59);
  }

  else
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v30 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v30, qword_1EDCC8B70);
    v31 = sub_1BFAAF668();
    sub_1BFAAFB68();
    v32 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_2_9();
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_29(v34);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v35, v36, "[warning] In-App suggestions NOT enabled. Set 'inAppSuggestions' feature flag.");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    if (qword_1EBDFB4F8 != -1)
    {
      swift_once();
    }

    v37 = v0[7];
    v38 = type metadata accessor for InAppSuggestions(0);
    __swift_project_value_buffer(v38, qword_1EBDFBD30);
    OUTLINED_FUNCTION_26_4();
    sub_1BFA75648(v39, v37);
  }

  v40 = v0[28];
  v41 = v0[25];
  v42 = v0[22];
  v44 = v0[18];
  v43 = v0[19];
  v45 = v0[14];

  OUTLINED_FUNCTION_85();

  return v46();
}

uint64_t sub_1BFA64F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v42 = a3;
  v37 = a2;
  v38 = a1;
  v44 = sub_1BFAAE3F8();
  v5 = *(v44 - 8);
  v41 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v44, v6);
  v43 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  v34 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v32 - v12;
  v35 = &v32 - v12;
  v14 = sub_1BFAAED58();
  v33 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v32 - v22;
  v36 = &v32 - v22;
  v24 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  (*(v15 + 16))(v18, v37, v14);
  (*(v9 + 16))(v13, v38, v8);
  sub_1BF9F93E8(v39, v45);
  (*(v5 + 16))(v43, v40, v44);
  v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v26 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v9 + 80) + v26 + 8) & ~*(v9 + 80);
  v28 = (v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v5 + 80) + v28 + 40) & ~*(v5 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (*(v15 + 32))(v30 + v25, v18, v33);
  *(v30 + v26) = v42;
  (*(v9 + 32))(v30 + v27, v35, v34);
  sub_1BF9FA474(v45, v30 + v28);
  (*(v5 + 32))(v30 + v29, v43, v44);

  sub_1BFA0B100();
}

uint64_t sub_1BFA652FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50) - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v10 = type metadata accessor for PresentationContext();
  v8[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA8, &unk_1BFAB5030);
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();
  v15 = type metadata accessor for SiriSuggestions.SuggestionList();
  v8[15] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD90, &qword_1BFAB4FF0) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD98, &qword_1BFAB4FF8);
  v8[20] = v18;
  v19 = *(v18 - 8);
  v8[21] = v19;
  v20 = *(v19 + 64) + 15;
  v8[22] = swift_task_alloc();
  v21 = sub_1BFAAEF58();
  v8[23] = v21;
  v22 = *(v21 - 8);
  v8[24] = v22;
  v23 = *(v22 + 64) + 15;
  v8[25] = swift_task_alloc();
  v24 = sub_1BFAAEEA8();
  v8[26] = v24;
  v25 = *(v24 - 8);
  v8[27] = v25;
  v26 = *(v25 + 64) + 15;
  v8[28] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  v8[29] = v27;
  v28 = *(v27 - 8);
  v8[30] = v28;
  v29 = *(v28 + 64) + 15;
  v8[31] = swift_task_alloc();
  v30 = sub_1BFAAED58();
  v8[32] = v30;
  v31 = *(v30 - 8);
  v8[33] = v31;
  v32 = *(v31 + 64) + 15;
  v8[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA6569C, 0, 0);
}

uint64_t sub_1BFA6569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v16 = *(v14 + 264);
  v15 = *(v14 + 272);
  v17 = *(v14 + 256);
  v18 = *(v14 + 32);
  v19 = sub_1BFAAF688();
  *(v14 + 280) = v19;
  v20 = __swift_project_value_buffer(v19, qword_1EDCC8B70);
  *(v14 + 288) = v20;
  v21 = *(v16 + 16);
  v22 = OUTLINED_FUNCTION_45_2();
  v23(v22);
  v24 = sub_1BFAAF668();
  v25 = sub_1BFAAFB78();
  v26 = OUTLINED_FUNCTION_82_1(v25);
  v28 = *(v14 + 264);
  v27 = *(v14 + 272);
  v29 = *(v14 + 256);
  if (v26)
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_202();
    *v20 = 136315138;
    sub_1BF9FD8E4(&qword_1EDCC7030, MEMORY[0x1E69D2F60]);
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_69_0();
    v30 = OUTLINED_FUNCTION_40_0();
    v31(v30);
    v32 = OUTLINED_FUNCTION_34_2();
    sub_1BF9F88A8(v32, v33, v34);
    OUTLINED_FUNCTION_131_0();

    *(v20 + 4) = v27;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    v40 = OUTLINED_FUNCTION_40_0();
    v41(v40);
  }

  OUTLINED_FUNCTION_16_5(*(v14 + 40));
  v42 = OUTLINED_FUNCTION_39(*(v18 + 24));
  OUTLINED_FUNCTION_28_4(v42);
  v58 = v43 + *v43;
  v45 = *(v44 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v14 + 296) = v46;
  *v46 = v47;
  v46[1] = sub_1BFA658E8;
  v48 = *(v14 + 248);
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_61();

  return v53(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, a11, a12, a13, a14);
}

uint64_t sub_1BFA658E8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA659CC()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[25];
  v2 = v0[4];
  v3 = *(v0[27] + 104);
  v3(v0[28], *MEMORY[0x1E69D2FC8], v0[26]);
  sub_1BFAAED28();
  if (qword_1EDCC74B0 != -1)
  {
    OUTLINED_FUNCTION_38_3();
  }

  v5 = v0[24];
  v4 = v0[25];
  __swift_project_value_buffer(v0[23], qword_1EDCC74B8);
  OUTLINED_FUNCTION_163();
  v6 = sub_1BFAAEF48();
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  if (v6)
  {
    v10 = v0[36];
    v11 = sub_1BFAAF668();
    v12 = sub_1BFAAFB68();
    if (OUTLINED_FUNCTION_189(v12))
    {
      OUTLINED_FUNCTION_2_9();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_180(v13);
      OUTLINED_FUNCTION_153(&dword_1BF9F6000, v14, v15, "Detected a siriUI app request. Assuming this is actually a assistantTurn invocation");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v17 = v0[27];
    v16 = v0[28];
    v18 = v0[26];

    v19 = *(v17 + 8);
    v20 = OUTLINED_FUNCTION_93();
    v21(v20);
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9D8, &qword_1BFAB2658) + 48);
    v23 = *MEMORY[0x1E69D3148];
    v24 = sub_1BFAAF008();
    OUTLINED_FUNCTION_14(v24);
    (*(v25 + 104))(v16, v23);
    v26 = *MEMORY[0x1E69D3118];
    v27 = sub_1BFAAEFD8();
    OUTLINED_FUNCTION_14(v27);
    (*(v28 + 104))(v16, v26);
    v29 = *MEMORY[0x1E69D3140];
    v30 = sub_1BFAAEFF8();
    OUTLINED_FUNCTION_14(v30);
    (*(v31 + 104))(v16 + v22, v29);
    v3(v16, *MEMORY[0x1E69D2FB0], v18);
  }

  v32 = v0[31];
  v33 = v0[29];
  v34 = v0[22];
  sub_1BFAAFAF8();
  v35 = *(MEMORY[0x1E69E87A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[38] = v36;
  *v36 = v37;
  v38 = OUTLINED_FUNCTION_67_3(v36);

  return MEMORY[0x1EEE6DB90](v38);
}

uint64_t sub_1BFA65C38()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 304);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA65D34()
{
  v1 = v0;
  v2 = v0[19];
  v3 = v0[15];
  v4 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_9_2(v4, v5, v6);
  if (v7)
  {
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[28];
    v69 = v0[29];
    v70 = v0[34];
    v12 = v0[26];
    v11 = v0[27];
    v71 = v0[25];
    v72 = v0[18];
    v73 = v0[17];
    v74 = v0[16];
    v75 = v0[14];
    v13 = v0[11];
    v77 = v0[9];
    v14 = v0[6];
    (*(v0[21] + 8))(v0[22], v0[20]);
    v0[3] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
    sub_1BFAAFAD8();
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v8, v69);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[17];
    v18 = v1[18];
    v20 = v1[13];
    v19 = v1[14];
    v21 = v1[12];
    v22 = v1[6];
    OUTLINED_FUNCTION_10_8();
    sub_1BFA75428(v2, v18);
    OUTLINED_FUNCTION_6_10();
    sub_1BFA75648(v18, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
    sub_1BFAAFAC8();
    v23 = *(v20 + 8);
    v24 = OUTLINED_FUNCTION_67();
    v25(v24);
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v26 = v1[18];
    v27 = v1[16];
    __swift_project_value_buffer(v1[35], qword_1EDCC77C8);
    OUTLINED_FUNCTION_6_10();
    sub_1BFA75648(v26, v27);
    v28 = sub_1BFAAF668();
    v29 = sub_1BFAAFB68();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v1[16];
    if (v30)
    {
      v32 = v1[15];
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_32();
      *v19 = 136315138;
      v33 = *(v32 + 24);
      sub_1BFAAE3F8();
      OUTLINED_FUNCTION_4_9();
      sub_1BF9FD8E4(v34, v35);
      sub_1BFAAFEE8();
      OUTLINED_FUNCTION_1_7();
      sub_1BFA755F8();
      v36 = OUTLINED_FUNCTION_213();
      v39 = sub_1BF9F88A8(v36, v37, v38);

      *(v19 + 4) = v39;
      _os_log_impl(&dword_1BF9F6000, v28, v29, "Dispatching generation event: %s", v19, 0xCu);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    else
    {

      OUTLINED_FUNCTION_1_7();
      sub_1BFA755F8();
    }

    v40 = v1[27];
    v41 = v1[28];
    v42 = v1[26];
    v44 = v1[10];
    v43 = v1[11];
    v46 = v1[8];
    v45 = v1[9];
    v47 = v1[7];
    v48 = v47[4];
    __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    (*(v40 + 16))(&v43[v44[5]], v41, v42);
    v49 = sub_1BFAAE3F8();
    OUTLINED_FUNCTION_0(v49);
    v51 = *(v50 + 16);
    v52 = OUTLINED_FUNCTION_71();
    v53(v52);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v49);
    v57 = v44[6];
    OUTLINED_FUNCTION_86_2();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v49);
    *v43 = 0;
    sub_1BFA77044(v45, &v43[v57]);
    v61 = &v43[v44[7]];
    *v61 = 0;
    v61[1] = 0;
    v43[v44[8]] = 0;
    v62 = *(v48 + 8);
    OUTLINED_FUNCTION_44();
    v76 = (v63 + *v63);
    v65 = *(v64 + 4);
    v66 = swift_task_alloc();
    v1[39] = v66;
    *v66 = v1;
    v66[1] = sub_1BFA66258;
    v67 = v1[11];
    v68 = OUTLINED_FUNCTION_53(v1[18]);

    return v76(v68);
  }
}

uint64_t sub_1BFA66258()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *(v1 + 312);
  *v4 = *v2;
  *(v3 + 320) = v0;

  OUTLINED_FUNCTION_219();
  v7 = *(v6 + 88);
  sub_1BFA755F8();
  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BFA66384()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_1_7();
  sub_1BFA755F8();
  v2 = *(MEMORY[0x1E69E87A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 304) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_67_3();

  return MEMORY[0x1EEE6DB90](v5);
}

uint64_t sub_1BFA66400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v16 = v14[30];
  v15 = v14[31];
  v18 = v14[28];
  v17 = v14[29];
  v19 = v14[26];
  v20 = v14[27];
  (*(v14[21] + 8))(v14[22], v14[20]);
  v21 = *(v20 + 8);
  v22 = OUTLINED_FUNCTION_120_0();
  v23(v22);
  v24 = *(v16 + 8);
  v25 = OUTLINED_FUNCTION_93();
  v26(v25);
  v27 = v14[2];
  OUTLINED_FUNCTION_106_0();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA66508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_66();
  v16 = v14[30];
  v15 = v14[31];
  v18 = v14[28];
  v17 = v14[29];
  v19 = v14[26];
  v20 = v14[27];
  v22 = v14[21];
  v21 = v14[22];
  v23 = v14[20];
  v24 = v14[18];
  OUTLINED_FUNCTION_1_7();
  sub_1BFA755F8();
  v25 = *(v22 + 8);
  v26 = OUTLINED_FUNCTION_146();
  v27(v26);
  v28 = *(v20 + 8);
  v29 = OUTLINED_FUNCTION_120_0();
  v30(v29);
  v31 = *(v16 + 8);
  v32 = OUTLINED_FUNCTION_93();
  v33(v32);
  v34 = v14[40];
  OUTLINED_FUNCTION_106_0();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA66620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = a5;
  v99 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v102 = &v83 - v11;
  v12 = sub_1BFAAE3F8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v101 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v100 = &v83 - v20;
  v95 = v21;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v83 - v23;
  v25 = sub_1BFAAED58();
  v103 = *(v25 - 8);
  v104 = v25;
  v26 = *(v103 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v93 = v29;
  v94 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v83 - v31;
  v33 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v90 = *(v33 - 8);
  v34 = *(v90 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v91 = v37;
  v92 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = &v83 - v39;
  if (qword_1EDCC77C0 != -1)
  {
    swift_once();
  }

  v41 = sub_1BFAAF688();
  __swift_project_value_buffer(v41, qword_1EDCC77C8);
  v96 = a1;
  sub_1BFA75648(a1, v40);
  v42 = *(v103 + 16);
  v97 = a3;
  v88 = v42;
  v89 = v103 + 16;
  v42(v32, a3, v104);
  v43 = v13[2];
  v43(v24, v99, v12);
  v99 = a2;
  v87 = v43;
  v43(v100, a2, v12);
  v44 = sub_1BFAAF668();
  v45 = sub_1BFAAFB68();
  v46 = os_log_type_enabled(v44, v45);
  v86 = v13;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = v13;
    v84 = v45;
    v49 = v47;
    v85 = swift_slowAlloc();
    v105[0] = v85;
    *v49 = 136315906;
    v50 = &v40[*(v33 + 20)];
    v83 = v44;
    v51 = *v50;
    v52 = v50[1];

    sub_1BFA755F8();
    v53 = sub_1BF9F88A8(v51, v52, v105);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    sub_1BF9FD8E4(&qword_1EDCC7030, MEMORY[0x1E69D2F60]);
    v54 = v104;
    v55 = sub_1BFAAFEE8();
    v57 = v56;
    (*(v103 + 8))(v32, v54);
    v58 = sub_1BF9F88A8(v55, v57, v105);

    *(v49 + 14) = v58;
    *(v49 + 22) = 2080;
    sub_1BF9FD8E4(&qword_1EDCC7430, MEMORY[0x1E69695A8]);
    v59 = sub_1BFAAFEE8();
    v61 = v60;
    v62 = v48[1];
    v62(v24, v12);
    v63 = sub_1BF9F88A8(v59, v61, v105);
    v64 = v12;

    *(v49 + 24) = v63;
    *(v49 + 32) = 2080;
    v65 = v100;
    v66 = sub_1BFAAFEE8();
    v68 = v67;
    v62(v65, v64);
    v69 = sub_1BF9F88A8(v66, v68, v105);

    *(v49 + 34) = v69;
    v70 = v83;
    _os_log_impl(&dword_1BF9F6000, v83, v84, "Got displayed callback for suggestion: %s in app %s with requestId - %s and generationId - %s", v49, 0x2Au);
    v71 = v85;
    swift_arrayDestroy();
    MEMORY[0x1BFB618C0](v71, -1, -1);
    MEMORY[0x1BFB618C0](v49, -1, -1);

    v72 = v103;
  }

  else
  {

    v73 = v13[1];
    v73(v100, v12);
    v73(v24, v12);
    v72 = v103;
    v54 = v104;
    (*(v103 + 8))(v32, v104);
    sub_1BFA755F8();
    v64 = v12;
  }

  v74 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v102, 1, 1, v74);
  v75 = v92;
  sub_1BFA75648(v96, v92);
  v76 = v94;
  v88(v94, v97, v54);
  v87(v101, v99, v64);
  v77 = (*(v90 + 80) + 40) & ~*(v90 + 80);
  v78 = (v91 + *(v72 + 80) + v77) & ~*(v72 + 80);
  v79 = v86;
  v80 = (v93 + *(v86 + 80) + v78) & ~*(v86 + 80);
  v81 = swift_allocObject();
  *(v81 + 2) = 0;
  *(v81 + 3) = 0;
  *(v81 + 4) = v98;
  sub_1BFA75428(v75, &v81[v77]);
  (*(v72 + 32))(&v81[v78], v76, v104);
  (v79[4])(&v81[v80], v101, v64);

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA66E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1BFAAEEF8();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA66EF0, 0, 0);
}

uint64_t sub_1BFA66EF0()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v0[3] + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB970, &unk_1BFAB5010);
  v6 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_15(v6);
  v8 = *(v7 + 72);
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_124_0();
  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = xmmword_1BFAB08E0;
  OUTLINED_FUNCTION_3_8();
  sub_1BFA75648(v4, v12 + v1);
  OUTLINED_FUNCTION_120_0();
  sub_1BFA67348(v13, v14);
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_1BFA6703C;
  v16 = v0[9];
  v17 = v0[6];
  OUTLINED_FUNCTION_138();

  return InAppSuggestionsDispatcherFactory.logShownSuggestions(for:deliveryVehicle:generationId:)();
}

uint64_t sub_1BFA6703C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_42();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  *v14 = v13;
  v16 = v15[11];
  v17 = v15[10];
  v18 = v15[9];
  v19 = v15[8];
  v20 = v15[7];
  v21 = *v11;
  OUTLINED_FUNCTION_8();
  *v22 = v21;
  *(v13 + 96) = v10;

  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_146();
  v25(v24);

  if (v10)
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }

  else
  {
    v30 = *(v13 + 72);

    v31 = *(v21 + 8);
    OUTLINED_FUNCTION_138();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }
}

uint64_t sub_1BFA671D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_141();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_58();
  a16 = v18;
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v22 = v18[12];
  v23 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v23, qword_1EDCC77C8);
  v24 = v22;
  v25 = sub_1BFAAF668();
  sub_1BFAAFB88();

  v26 = OUTLINED_FUNCTION_194();
  v27 = v18[12];
  if (v26)
  {
    OUTLINED_FUNCTION_51_0();
    a9 = OUTLINED_FUNCTION_32();
    *v19 = 136315138;
    v18[2] = v27;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v29 = sub_1BFAAF8B8();
    v31 = sub_1BF9F88A8(v29, v30, &a9);

    *(v19 + 4) = v31;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  v37 = v18[9];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_138();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t sub_1BFA67348@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BFAAEF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BFAAED28();
  if (qword_1EDCC74B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EDCC74B8);
  v10 = sub_1BFAAEF48();
  (*(v5 + 8))(v9, v4);
  if (v10 & 1) != 0 && (v11 = *(type metadata accessor for SiriSuggestions.Suggestion(0) + 28), (sub_1BFAAEED8()))
  {
    v12 = sub_1BFAAEEF8();
    return (*(*(v12 - 8) + 16))(a2, a1 + v11, v12);
  }

  else
  {
    sub_1BFAAED28();
    v14 = *MEMORY[0x1E69D3078];
    v15 = sub_1BFAAEEF8();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }
}

uint64_t sub_1BFA67528(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1BFAAEF58();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA675E8, 0, 0);
}

uint64_t sub_1BFA675E8()
{
  OUTLINED_FUNCTION_58();
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v4);
  sub_1BFAAED28();
  v6 = *(*(v5 + 24) + 8);
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_30();
  v14 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1BFA67728;
  v12 = OUTLINED_FUNCTION_53(v0[6]);

  return v14(v12, v4, v6);
}

uint64_t sub_1BFA67728()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_42();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = v1[4];
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_93();
  v10(v9);

  OUTLINED_FUNCTION_85();

  return v11();
}

uint64_t SiriSuggestionsFacade.fetchTopPreGeneratedSiriHint(requestUUID:forDeliveryVehicle:timeoutSeconds:)()
{
  OUTLINED_FUNCTION_40();
  v1[18] = v0;
  v1[17] = v2;
  v1[15] = v3;
  v1[16] = v4;
  v1[14] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_60_0(v6);
  v8 = *(v7 + 64);
  v1[19] = OUTLINED_FUNCTION_100();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD50, &qword_1BFAB49C8);
  OUTLINED_FUNCTION_60_0(v9);
  v11 = *(v10 + 64);
  v1[20] = OUTLINED_FUNCTION_100();
  v12 = type metadata accessor for InAppSuggestion(0);
  v1[21] = v12;
  OUTLINED_FUNCTION_60_0(v12);
  v14 = *(v13 + 64);
  v1[22] = OUTLINED_FUNCTION_100();
  v15 = sub_1BFAAEF58();
  v1[23] = v15;
  OUTLINED_FUNCTION_15(v15);
  v1[24] = v16;
  v18 = *(v17 + 64);
  v1[25] = OUTLINED_FUNCTION_100();
  v19 = sub_1BFAAED58();
  v1[26] = v19;
  OUTLINED_FUNCTION_15(v19);
  v1[27] = v20;
  v22 = *(v21 + 64);
  v1[28] = OUTLINED_FUNCTION_100();
  v23 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1BFA679E0()
{
  OUTLINED_FUNCTION_58();
  if (qword_1EDCC74B0 != -1)
  {
    OUTLINED_FUNCTION_38_3();
  }

  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = __swift_project_value_buffer(v4, qword_1EDCC74B8);
  (*(v3 + 16))(v2, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD58, &unk_1BFAB49D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFAB08E0;
  *(inited + 32) = 0x4974736575716572;
  *(inited + 40) = 0xE900000000000064;
  v10 = sub_1BFAAE3F8();
  *(inited + 72) = v10;
  v11 = MEMORY[0x1E69695A8];
  *(inited + 80) = sub_1BF9FD8E4(&qword_1EDCC84D8, MEMORY[0x1E69695A8]);
  *(inited + 88) = sub_1BF9FD8E4(&qword_1EDCC7438, v11);
  __swift_allocate_boxed_opaque_existential_1Tm_0((inited + 48));
  OUTLINED_FUNCTION_54(v10);
  (*(v12 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  sub_1BFAAF7D8();
  sub_1BFAAED18();
  v13 = sub_1BFAAEEF8();
  OUTLINED_FUNCTION_0(v13);
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_93();
  v17(v16);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[29] = v21;
  *v21 = v22;
  v21[1] = sub_1BFA67C68;
  v23 = v0[28];
  v25 = v0[19];
  v24 = v0[20];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[15];

  return SiriSuggestionsFacade.getTopInAppSuggestion(inAppDetails:timeoutSeconds:requestUUID:expectedDeliveryVehicle:)();
}

uint64_t sub_1BFA67C68()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 232);
  v3 = *(v1 + 152);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  sub_1BF9FDD5C(v3, &qword_1EBDFBD48, &qword_1BFAB49C0);
  v6 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA67D78()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v1 = v0[20];
  v2 = v0[21];
  (*(v0[27] + 8))(v0[28], v0[26]);
  OUTLINED_FUNCTION_24_2(v1);
  if (v3)
  {
    sub_1BF9FDD5C(v0[20], &qword_1EBDFBD50, &qword_1BFAB49C8);
    v10 = type metadata accessor for PreGeneratedSiriHint(0);
    v11 = 1;
  }

  else
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[14];
    sub_1BFA75428(v0[20], v4);
    OUTLINED_FUNCTION_8_6();
    v7 = OUTLINED_FUNCTION_93();
    sub_1BFA75428(v7, v8);
    v9 = *(v5 + 20);
    v10 = type metadata accessor for PreGeneratedSiriHint(0);
    v11 = 0;
    *(v6 + *(v10 + 20)) = *(v4 + v9);
  }

  v12 = v0[28];
  v13 = v0[25];
  v14 = v0[22];
  v16 = v0[19];
  v15 = v0[20];
  __swift_storeEnumTagSinglePayload(v0[14], v11, 1, v10);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_112();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t SiriSuggestionsFacade.getTopInAppSuggestion(inAppDetails:timeoutSeconds:requestUUID:expectedDeliveryVehicle:)()
{
  OUTLINED_FUNCTION_40();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_1BFAAE3F8();
  v1[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[9] = v8;
  v1[10] = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_109();
  v1[12] = swift_task_alloc();
  v10 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v1[13] = v10;
  OUTLINED_FUNCTION_15(v10);
  v1[14] = v11;
  v1[15] = *(v12 + 64);
  v1[16] = OUTLINED_FUNCTION_109();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v13 = sub_1BFAAED58();
  v1[19] = v13;
  OUTLINED_FUNCTION_15(v13);
  v1[20] = v14;
  v1[21] = *(v15 + 64);
  v1[22] = OUTLINED_FUNCTION_100();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_15(v16);
  v1[23] = v17;
  v1[24] = *(v18 + 64);
  v1[25] = OUTLINED_FUNCTION_100();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8);
  v1[26] = v19;
  OUTLINED_FUNCTION_60_0(v19);
  v21 = *(v20 + 64);
  v1[27] = OUTLINED_FUNCTION_100();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_60_0(v22);
  v24 = *(v23 + 64);
  v1[28] = OUTLINED_FUNCTION_109();
  v1[29] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD68, &qword_1BFAB49F8);
  OUTLINED_FUNCTION_60_0(v25);
  v27 = *(v26 + 64);
  v1[30] = OUTLINED_FUNCTION_109();
  v1[31] = swift_task_alloc();
  v28 = type metadata accessor for InAppSuggestions(0);
  v1[32] = v28;
  OUTLINED_FUNCTION_15(v28);
  v1[33] = v29;
  v1[34] = *(v30 + 64);
  v1[35] = OUTLINED_FUNCTION_109();
  v1[36] = swift_task_alloc();
  v31 = sub_1BFAAEF58();
  v1[37] = v31;
  OUTLINED_FUNCTION_15(v31);
  v1[38] = v32;
  v34 = *(v33 + 64);
  v1[39] = OUTLINED_FUNCTION_100();
  v35 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1BFA681E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  v20 = v18[38];
  v19 = v18[39];
  v21 = v18[37];
  v22 = v18[3];
  sub_1BFAAED28();
  v23 = sub_1BFAAEF28();
  v25 = v24;
  v26 = *(v20 + 8);
  v27 = OUTLINED_FUNCTION_120_0();
  v28(v27);
  if (v23 == 0xD000000000000015 && 0x80000001BFAB96D0 == v25)
  {
  }

  else
  {
    OUTLINED_FUNCTION_96();
    v30 = sub_1BFAAFF08();

    if ((v30 & 1) == 0)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_33();
      v18[40] = v31;
      *v31 = v32;
      v31[1] = sub_1BFA68484;
      v33 = v18[36];
      v34 = v18[7];
      v35 = v18[5];
      v36 = v18[3];
      OUTLINED_FUNCTION_47_0();

      return SiriSuggestionsFacade.doInApp(for:with:)();
    }
  }

  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v39 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v39, qword_1EDCC8B70);
  v40 = sub_1BFAAF668();
  sub_1BFAAFB78();
  v41 = OUTLINED_FUNCTION_72_2();
  if (os_log_type_enabled(v41, v42))
  {
    OUTLINED_FUNCTION_2_9();
    v43 = swift_slowAlloc();
    OUTLINED_FUNCTION_29(v43);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v44, v45, "Returning nil suggestion for Clock.app tip due to SwiftUI regression");
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  type metadata accessor for InAppSuggestion(0);
  v46 = v18[39];
  v48 = v18[35];
  v47 = v18[36];
  v50 = v18[30];
  v49 = v18[31];
  v51 = v18[28];
  v52 = v18[29];
  v53 = v18[27];
  v54 = v18[25];
  v68 = v18[22];
  v69 = v18[18];
  v70 = v18[17];
  v71 = v18[16];
  v72 = v18[12];
  v73 = v18[11];
  v55 = v18[2];
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_47_0();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, v68, v69, v70, v71, v72, v73, a16, a17, a18);
}

uint64_t sub_1BFA68484()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 320);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA68568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_162();
  v19 = *(v18 + 280);
  v20 = *(v18 + 248);
  v21 = *(v18 + 232);
  v22 = *(v18 + 200);
  v61 = *(v18 + 192);
  v59 = *(v18 + 264);
  v60 = *(v18 + 184);
  v58 = *(v18 + 176);
  v23 = *(v18 + 160);
  v62 = *(v18 + 272);
  v63 = *(v18 + 168);
  v24 = *(v18 + 152);
  v25 = *(v18 + 104);
  v26 = *(v18 + 64);
  v27 = *(v18 + 48);
  v28 = *(v18 + 24);
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v26);
  OUTLINED_FUNCTION_26_4();
  v36 = OUTLINED_FUNCTION_178();
  sub_1BFA75648(v36, v37);
  sub_1BFA17B2C(v27, v22, &qword_1EBDFBD48, &qword_1BFAB49C0);
  (*(v23 + 16))(v58, v28, v24);
  v38 = *(v59 + 80);
  *(v18 + 360) = v38;
  v39 = (((v38 + 16) & ~v38) + v62 + *(v60 + 80)) & ~*(v60 + 80);
  v40 = (v61 + *(v23 + 80) + v39) & ~*(v23 + 80);
  v41 = swift_allocObject();
  *(v18 + 328) = v41;
  OUTLINED_FUNCTION_91_1();
  sub_1BFA75428(v19, v42);
  sub_1BFA17BBC(v22, v41 + v39, &qword_1EBDFBD48, &qword_1BFAB49C0);
  (*(v23 + 32))(v41 + v40, v58, v24);
  v43 = *(MEMORY[0x1E69D3548] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v18 + 336) = v44;
  *v44 = v45;
  v44[1] = sub_1BFA6876C;
  v47 = *(v18 + 208);
  v46 = *(v18 + 216);
  v48 = *(v18 + 32);
  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x1EEE40F70](v49, v50, v51, v52, v53, v54, v55, v56, v58, v59, v60, v19, v61, v62, v63, a16, a17, a18);
}

uint64_t sub_1BFA6876C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (!v0)
  {
    v9 = *(v3 + 328);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA6886C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[31];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  OUTLINED_FUNCTION_111_0();
  sub_1BF9FDD5C(v5, v6, v7);
  sub_1BF9FDD5C(v1, &qword_1EBDFBD68, &qword_1BFAB49F8);
  v8 = *(v4 + 48);
  v9 = OUTLINED_FUNCTION_119_0();
  sub_1BFA17BBC(v9, v10, &qword_1EBDFBD68, &qword_1BFAB49F8);
  sub_1BFA17BBC(v3 + v8, v2, &qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_53_4();
  v16 = v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_88_1(v14);

  return v16();
}

uint64_t sub_1BFA68990()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 352);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA68A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_226();
  a33 = v36;
  a34 = v37;
  OUTLINED_FUNCTION_177();
  a32 = v34;
  v38 = *(v34 + 240);
  v39 = *(v34 + 104);
  sub_1BFA17B2C(*(v34 + 248), v38, &qword_1EBDFBD68, &qword_1BFAB49F8);
  OUTLINED_FUNCTION_9_2(v38, 1, v39);
  if (v62)
  {
    v40 = *(v34 + 288);
    v42 = *(v34 + 240);
    v41 = *(v34 + 248);
    sub_1BF9FDD5C(*(v34 + 232), &qword_1EBDFB570, &qword_1BFAB1F50);
    OUTLINED_FUNCTION_111_0();
    sub_1BF9FDD5C(v43, v44, v45);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_111_0();
LABEL_7:
    sub_1BF9FDD5C(v46, v47, v48);
    v71 = type metadata accessor for InAppSuggestion(0);
    v72 = 1;
    goto LABEL_14;
  }

  v50 = *(v34 + 232);
  v49 = *(v34 + 240);
  v51 = *(v34 + 224);
  v52 = *(v34 + 144);
  v53 = *(v34 + 64);
  OUTLINED_FUNCTION_8_6();
  sub_1BFA75428(v54, v55);
  v56 = OUTLINED_FUNCTION_93();
  sub_1BFA17B2C(v56, v57, v58, v59);
  v60 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_9_2(v60, v61, v53);
  if (v62)
  {
    v63 = *(v34 + 288);
    v64 = *(v34 + 248);
    v66 = *(v34 + 224);
    v65 = *(v34 + 232);
    v67 = *(v34 + 144);
    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
    OUTLINED_FUNCTION_110_0();
    sub_1BF9FDD5C(v68, v69, v70);
    sub_1BF9FDD5C(v64, &qword_1EBDFBD68, &qword_1BFAB49F8);
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_110_0();
    goto LABEL_7;
  }

  v131 = (*(v34 + 72) + 32);
  v129 = *v131;
  (*v131)(*(v34 + 96), *(v34 + 224), *(v34 + 64));
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v73 = *(v34 + 136);
  v74 = *(v34 + 144);
  v75 = sub_1BFAAF688();
  __swift_project_value_buffer(v75, qword_1EDCC8B70);
  OUTLINED_FUNCTION_3_8();
  v76 = OUTLINED_FUNCTION_93();
  sub_1BFA75648(v76, v77);
  v78 = sub_1BFAAF668();
  v79 = sub_1BFAAFB78();
  v80 = OUTLINED_FUNCTION_136_0(v79);
  v81 = *(v34 + 248);
  v82 = *(v34 + 232);
  v83 = *(v34 + 136);
  if (v80)
  {
    v84 = *(v34 + 104);
    OUTLINED_FUNCTION_51_0();
    v85 = OUTLINED_FUNCTION_81_1();
    a23 = v85;
    *v35 = 136315138;
    v86 = v83 + *(v84 + 24);
    v87 = *(v86 + 16);
    v88 = *(v86 + 24);

    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
    sub_1BF9F88A8(v87, v88, &a23);
    OUTLINED_FUNCTION_234();
    *(v35 + 4) = v83;
    OUTLINED_FUNCTION_74_1(&dword_1BF9F6000, v89, v90, "[getTopInAppSuggestion] returning top suggestion with content: %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v85);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {

    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
  }

  sub_1BF9FDD5C(v82, &qword_1EBDFB570, &qword_1BFAB1F50);
  sub_1BF9FDD5C(v81, &qword_1EBDFBD68, &qword_1BFAB49F8);
  v92 = *(v34 + 280);
  v91 = *(v34 + 288);
  v93 = *(v34 + 144);
  v94 = *(v34 + 128);
  v122 = *(v34 + 120);
  a12 = *(v34 + 112);
  a13 = v94;
  v95 = *(v34 + 88);
  a10 = *(v34 + 96);
  a11 = *(v34 + 72);
  v96 = *(v34 + 64);
  a14 = v96;
  a15 = v95;
  v124 = *(v34 + 80);
  v126 = *(v34 + 16);
  v97 = ((*(v34 + 360) + 16) & ~*(v34 + 360)) + *(v34 + 272);
  OUTLINED_FUNCTION_3_8();
  sub_1BFA75648(v93, v98);
  OUTLINED_FUNCTION_26_4();
  sub_1BFA75648(v91, v92);
  sub_1BFA75428(v93, v94);
  v129(v95, a10, v96);
  v99 = (v97 + *(a12 + 80)) & ~*(a12 + 80);
  v100 = (v122 + *(a11 + 80) + v99) & ~*(a11 + 80);
  v101 = swift_allocObject();
  OUTLINED_FUNCTION_91_1();
  sub_1BFA75428(v92, v102);
  sub_1BFA75428(a13, v101 + v99);
  v129(v101 + v100, a15, v96);
  v71 = type metadata accessor for InAppSuggestion(0);
  v103 = (v126 + *(v71 + 20));
  *v103 = sub_1BFA7569C;
  v103[1] = v101;
  sub_1BFA755F8();
  v72 = 0;
LABEL_14:
  v104 = *(v34 + 312);
  v106 = *(v34 + 280);
  v105 = *(v34 + 288);
  v108 = *(v34 + 240);
  v107 = *(v34 + 248);
  v109 = *(v34 + 224);
  v110 = *(v34 + 232);
  v111 = *(v34 + 216);
  v121 = *(v34 + 200);
  v123 = *(v34 + 176);
  v125 = *(v34 + 144);
  v127 = *(v34 + 136);
  v128 = *(v34 + 128);
  v130 = *(v34 + 96);
  v132 = *(v34 + 88);
  __swift_storeEnumTagSinglePayload(*(v34 + 16), v72, 1, v71);

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_172();

  return v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12, a13, a14, a15, v121, v123, v125, v127, v128, v130, v132, a23, a24, a25, a26);
}

uint64_t sub_1BFA68F90()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v1 = v0[41];

  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v2 = v0[43];
  v3 = sub_1BFAAF688();
  OUTLINED_FUNCTION_126_0(v3, qword_1EDCC8B70);
  v4 = v2;
  v5 = sub_1BFAAF668();
  sub_1BFAAFB78();

  v6 = OUTLINED_FUNCTION_194();
  v7 = v0[43];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_51_0();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_39_3();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1BF9FDD5C(v9, &qword_1EBDFBA28, &qword_1BFAB28C0);
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
    OUTLINED_FUNCTION_1_2();
    MEMORY[0x1BFB618C0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_4();
  v18 = *(v17 + 4);
  v19 = swift_task_alloc();
  v0[44] = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_88_1(v19);
  OUTLINED_FUNCTION_112();

  return v20(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_1BFA6913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_1BFAAEEF8();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD68, &qword_1BFAB49F8) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v10 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v4[13] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v12 = sub_1BFAAE3F8();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  v15 = type metadata accessor for SiriSuggestions.SuggestionList();
  v4[19] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD90, &qword_1BFAB4FF0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD98, &qword_1BFAB4FF8);
  v4[22] = v18;
  v19 = *(v18 - 8);
  v4[23] = v19;
  v20 = *(v19 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA693E4, 0, 0);
}

uint64_t sub_1BFA693E4()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[24];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  sub_1BFAAFAF8();
  v3 = *(MEMORY[0x1E69E87A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[25] = v4;
  *v4 = v5;
  v4[1] = sub_1BFA694A4;
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DB90]();
}

uint64_t sub_1BFA694A4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA695A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_225();
  v33 = v32[19];
  OUTLINED_FUNCTION_24_2(v32[21]);
  if (v54)
  {
    v34 = v32[13];
    v35 = v32[3];
    (*(v32[23] + 8))(v32[24], v32[22]);
LABEL_4:
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8);
    OUTLINED_FUNCTION_199(v36);
    OUTLINED_FUNCTION_86_2();
    v40 = v34;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    v76 = 1;
    goto LABEL_14;
  }

  v41 = v32[20];
  v43 = v32[17];
  v42 = v32[18];
  v44 = v32[16];
  v46 = v32[12];
  v45 = v32[13];
  OUTLINED_FUNCTION_10_8();
  v47 = OUTLINED_FUNCTION_46();
  sub_1BFA75428(v47, v48);
  v49 = *(v33 + 24);
  v50 = *(v43 + 16);
  v51 = OUTLINED_FUNCTION_211();
  v52(v51);
  v53 = SiriSuggestions.SuggestionList.suggestions.getter();
  sub_1BFA610CC(v53, v46);

  OUTLINED_FUNCTION_9_2(v46, 1, v45);
  if (v54)
  {
    sub_1BF9FDD5C(v32[12], &qword_1EBDFBD68, &qword_1BFAB49F8);
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v55 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v55, qword_1EDCC8B70);
    v56 = sub_1BFAAF668();
    sub_1BFAAFB78();
    v57 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_2_9();
      v59 = swift_slowAlloc();
      OUTLINED_FUNCTION_29(v59);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v60, v61, "Returned suggestions list is empty");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v63 = v32[23];
    v62 = v32[24];
    v64 = v32[22];
    v65 = v32[20];
    v67 = v32[17];
    v66 = v32[18];
    v68 = v32[16];
    v187 = v32[13];
    v69 = v32[3];

    v70 = *(v67 + 8);
    v71 = OUTLINED_FUNCTION_146();
    v72(v71);
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    v73 = *(v63 + 8);
    v74 = OUTLINED_FUNCTION_46();
    v75(v74);
    a20 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8) + 48);
    goto LABEL_12;
  }

  v95 = v32[15];
  v96 = v32[12];
  v97 = v32[7];
  v98 = v32[8];
  v99 = v32[5];
  OUTLINED_FUNCTION_8_6();
  sub_1BFA75428(v100, v101);
  v102 = OUTLINED_FUNCTION_60_1();
  sub_1BFA17B2C(v102, v103, v104, v105);
  v106 = OUTLINED_FUNCTION_83_2();
  v107 = v32[11];
  v108 = v32[8];
  v109 = v32[9];
  v110 = v32[7];
  if (v106 == 1)
  {
    v111 = v32[6];
    v112 = v32[11];
    sub_1BFAAED28();
    (*(v109 + 104))(v107, *MEMORY[0x1E69D3078], v108);
    OUTLINED_FUNCTION_9_2(v110, 1, v108);
    if (!v54)
    {
      sub_1BF9FDD5C(v32[7], &qword_1EBDFBD48, &qword_1BFAB49C0);
    }
  }

  else
  {
    v113 = *(v109 + 32);
    v114 = OUTLINED_FUNCTION_148();
    v115(v114);
  }

  v116 = v32[15];
  v117 = v32[13];
  v118 = v32[11];
  v119 = *(v117 + 28);
  if ((sub_1BFA53D30() & 1) == 0)
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v136 = v32[14];
    v137 = v32[15];
    v139 = v32[10];
    v138 = v32[11];
    v140 = v32[8];
    v141 = v32[9];
    v142 = sub_1BFAAF688();
    __swift_project_value_buffer(v142, qword_1EDCC8B70);
    OUTLINED_FUNCTION_3_8();
    v143 = OUTLINED_FUNCTION_93();
    sub_1BFA75648(v143, v144);
    v145 = *(v141 + 16);
    v146 = OUTLINED_FUNCTION_148();
    v147(v146);
    v148 = sub_1BFAAF668();
    v149 = sub_1BFAAFB88();
    v150 = OUTLINED_FUNCTION_72_2();
    v152 = os_log_type_enabled(v150, v151);
    v153 = v32[23];
    v189 = v32[22];
    a20 = v32[24];
    v154 = v32[17];
    a17 = v32[18];
    a18 = v32[20];
    a15 = v32[15];
    a16 = v32[16];
    v155 = v32[14];
    v156 = v32[10];
    a14 = v32[11];
    v157 = v32[8];
    v158 = v32[9];
    if (v152)
    {
      HIDWORD(a11) = v149;
      v159 = OUTLINED_FUNCTION_185();
      a12 = OUTLINED_FUNCTION_193();
      a21 = a12;
      *v159 = 136315394;
      log = v148;
      v160 = *(v117 + 28);
      sub_1BF9FD8E4(&qword_1EBDFBA38, MEMORY[0x1E69D3090]);
      OUTLINED_FUNCTION_220();
      sub_1BFAAFEE8();
      a13 = v153;
      OUTLINED_FUNCTION_2_10();
      sub_1BFA755F8();
      v161 = OUTLINED_FUNCTION_41_0();
      v164 = sub_1BF9F88A8(v161, v162, v163);

      *(v159 + 4) = v164;
      *(v159 + 12) = 2080;
      OUTLINED_FUNCTION_220();
      sub_1BFAAFEE8();
      OUTLINED_FUNCTION_221();
      v165 = *(v158 + 8);
      v166 = OUTLINED_FUNCTION_158();
      v165(v166);
      v167 = OUTLINED_FUNCTION_41_0();
      v170 = sub_1BF9F88A8(v167, v168, v169);

      *(v159 + 14) = v170;
      _os_log_impl(&dword_1BF9F6000, log, BYTE4(a11), "Top suggestion's delivery vehicle is: %s and did not match expected deliveryVehicle: %s", v159, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();

      (v165)(a14, v157);
    }

    else
    {

      v184 = *(v158 + 8);
      v185 = OUTLINED_FUNCTION_158();
      v184(v185);
      sub_1BFA755F8();
      (v184)(a14, v157);
    }

    sub_1BFA755F8();
    (*(v154 + 8))(a17, a16);
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    (*(v153 + 8))(a20, v189);
    v34 = v32[13];
    v186 = v32[3];
    goto LABEL_4;
  }

  if (sub_1BFAAFAA8())
  {
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v120 = sub_1BFAAF688();
    OUTLINED_FUNCTION_126_0(v120, qword_1EDCC8B70);
    v121 = sub_1BFAAF668();
    sub_1BFAAFB78();
    v122 = OUTLINED_FUNCTION_72_2();
    if (os_log_type_enabled(v122, v123))
    {
      OUTLINED_FUNCTION_2_9();
      v124 = swift_slowAlloc();
      OUTLINED_FUNCTION_29(v124);
      OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v125, v126, "Fetch inAppSuggestion task is canceled");
      OUTLINED_FUNCTION_1_2();
      MEMORY[0x1BFB618C0]();
    }

    v127 = v32[23];
    a17 = v32[20];
    a18 = v32[22];
    v128 = v32[17];
    a16 = v32[18];
    v130 = v32[15];
    v129 = v32[16];
    v187 = v32[13];
    a20 = v32[24];
    v131 = v32[11];
    v132 = v32[8];
    v133 = v32[9];
    v134 = v32[3];

    (*(v133 + 8))(v131, v132);
    OUTLINED_FUNCTION_2_10();
    sub_1BFA755F8();
    (*(v128 + 8))(a16, v129);
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    (*(v127 + 8))(a20, a18);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8);
    OUTLINED_FUNCTION_199(v135);
LABEL_12:
    OUTLINED_FUNCTION_86_2();
    v40 = v187;
    goto LABEL_13;
  }

  v171 = v32[23];
  v172 = v32[24];
  v173 = v32[22];
  v174 = v32[20];
  v175 = v32[17];
  v190 = v32[18];
  v177 = v32[15];
  v176 = v32[16];
  v178 = v32[13];
  v179 = v32[3];
  (*(v32[9] + 8))(v32[11], v32[8]);
  OUTLINED_FUNCTION_1_7();
  sub_1BFA755F8();
  (*(v171 + 8))(v172, v173);
  v180 = v179 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD60, &unk_1BFAB49E8) + 48);
  OUTLINED_FUNCTION_8_6();
  sub_1BFA75428(v177, v179);
  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v178);
  a20 = v180;
  (*(v175 + 32))(v180, v190, v176);
  v76 = 0;
LABEL_14:
  v77 = v32[24];
  v79 = v32[20];
  v78 = v32[21];
  v80 = v32[18];
  v81 = v32[15];
  v82 = v32[14];
  v83 = v32[11];
  v84 = v32[12];
  v85 = v32[10];
  v188 = v32[7];
  __swift_storeEnumTagSinglePayload(a20, v76, 1, v32[16]);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_170();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, log, a11, a12, a13, a14, a15, a16, a17, a18, v188, a20, a21, a22, a23, a24);
}