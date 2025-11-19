uint64_t sub_1C8EFF278(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001C90CCBB0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_1C8EFF314(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319A88, &qword_1C90A5AD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8EFF594();
  sub_1C9064DEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1C8EFF5E8();
    sub_1C9064A6C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_1C8EFF494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8EFF278(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8EFF4C0(uint64_t a1)
{
  v2 = sub_1C8EFF594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8EFF4FC(uint64_t a1)
{
  v2 = sub_1C8EFF594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C8EFF538@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C8EFF314(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C8EFF568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8EFF210();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_1C8EFF594()
{
  result = qword_1EDA62F58;
  if (!qword_1EDA62F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F58);
  }

  return result;
}

unint64_t sub_1C8EFF5E8()
{
  result = qword_1EDA62F78;
  if (!qword_1EDA62F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F78);
  }

  return result;
}

unint64_t sub_1C8EFF63C()
{
  result = qword_1EC319A90;
  if (!qword_1EC319A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedLinkActionIdentifier.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8EFF740()
{
  result = qword_1EC319A98;
  if (!qword_1EC319A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319A98);
  }

  return result;
}

unint64_t sub_1C8EFF798()
{
  result = qword_1EDA62F48;
  if (!qword_1EDA62F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F48);
  }

  return result;
}

unint64_t sub_1C8EFF7F0()
{
  result = qword_1EDA62F50;
  if (!qword_1EDA62F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62F50);
  }

  return result;
}

void AnyPredicate.protobuf(useCase:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v70 = a1;
  v74[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ComparisonPredicate(0);
  v3 = OUTLINED_FUNCTION_13_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = type metadata accessor for AnyPredicate(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v15 = (v14 - v13);
  v71 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = OUTLINED_FUNCTION_13_1(v71);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v70 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v70 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v70 - v29);
  v31 = OUTLINED_FUNCTION_152();
  sub_1C8F00AB4(v31, v15, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v56 = *v15;
      v57 = v15[1];
      OUTLINED_FUNCTION_8_38();
      sub_1C8F00BB0(v58, v59);
      v60 = v73;
      v61 = sub_1C90641FC();
      if (!v60)
      {
        v67 = v61;
        if (v56)
        {
          v68 = 2;
        }

        else
        {
          v68 = 1;
        }

        v69 = &v24[*(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24)];
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();

        *v24 = v68;
        *(v24 + 1) = v67;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_3_47();
        v38 = v24;
        goto LABEL_23;
      }

      goto LABEL_15;
    case 2:
      v50 = *v15;
      v49 = v15[1];
      v51 = v30 + *(type metadata accessor for ToolKitProtoStringSearchPredicate(0) + 20);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v30 = v50;
      v30[1] = v49;
      OUTLINED_FUNCTION_13_24();
      goto LABEL_13;
    case 3:
      v53 = v15[1];
      v52 = v15[2];
      if (v52[2])
      {
        v55 = v52[4];
        v54 = v52[5];
      }

      else
      {
        v55 = 0;
        v54 = 0xE000000000000000;
      }

      v66 = *(type metadata accessor for ToolKitProtoIdSearchPredicate(0) + 24);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();

      *v30 = v55;
      v30[1] = v54;
      v30[2] = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    case 4:
      v39 = *v15;
      v40 = MEMORY[0x1CCA82A80](EnumCaseMultiPayload, v34, v35);
      v41 = objc_opt_self();
      v74[0] = 0;
      v42 = [v41 archivedDataWithRootObject:v39 requiringSecureCoding:1 error:{v74, v70, v71, v72}];
      v43 = v74[0];
      if (v42)
      {
        v44 = sub_1C9061F3C();
        v46 = v45;

        objc_autoreleasePoolPop(v40);
        v47 = v21 + *(type metadata accessor for ToolKitProtoSearchableItemPredicate(0) + 20);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();

        *v21 = v44;
        v21[1] = v46;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_3_47();
        sub_1C8F00A58(v21, v30, v48);
LABEL_14:
        v62 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
        MEMORY[0x1EEE9AC00](v62);
        *(&v70 - 2) = v30;
        sub_1C8F00BB0(&qword_1EC319AA0, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
        sub_1C9063ACC();
        OUTLINED_FUNCTION_1_61();
        sub_1C8F00B10(v30, v63);
      }

      else
      {
        v65 = v43;
        sub_1C9061D7C();

        swift_willThrow();
        objc_autoreleasePoolPop(v40);
      }

LABEL_15:
      v64 = *MEMORY[0x1E69E9840];
      return;
    case 5:
    case 6:
    case 7:
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      OUTLINED_FUNCTION_13_24();
      goto LABEL_13;
    case 8:
      v74[0] = *v15;
      ValueSearchPredicate.protobuf(useCase:)(v30);

      OUTLINED_FUNCTION_13_24();
LABEL_13:
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    default:
      sub_1C8F00A58(v15, v8, type metadata accessor for ComparisonPredicate);
      v36 = v73;
      ComparisonPredicate.protobuf(useCase:)();
      sub_1C8F00B10(v8, type metadata accessor for ComparisonPredicate);
      if (v36)
      {
        goto LABEL_15;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_47();
      v38 = v27;
LABEL_23:
      sub_1C8F00A58(v38, v30, v37);
      goto LABEL_14;
  }
}

uint64_t AnyPredicate.init(protobuf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v185 = a2;
  v3 = type metadata accessor for ToolKitProtoValueSearchPredicate(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v176 = v7 - v8;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  v178 = v10;
  v11 = OUTLINED_FUNCTION_111();
  v12 = type metadata accessor for ToolKitProtoStringSearchPredicate(v11);
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v175 = (v17 - v16);
  v18 = OUTLINED_FUNCTION_111();
  v19 = type metadata accessor for ToolKitProtoSearchableItemPredicate(v18);
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  v179 = (v23 - v24);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_147();
  v177 = v26;
  v27 = OUTLINED_FUNCTION_111();
  v28 = type metadata accessor for ToolKitProtoIdSearchPredicate(v27);
  v29 = OUTLINED_FUNCTION_9(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25();
  v183 = v32 - v33;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_147();
  v182 = v35;
  v36 = OUTLINED_FUNCTION_111();
  v37 = type metadata accessor for ToolKitProtoCompoundPredicate(v36);
  v38 = OUTLINED_FUNCTION_9(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  v180 = v41 - v42;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_147();
  v181 = v44;
  v45 = OUTLINED_FUNCTION_111();
  v184 = type metadata accessor for AnyPredicate(v45);
  v46 = OUTLINED_FUNCTION_13_1(v184);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25();
  v173 = (v49 - v50);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v51);
  v174 = (&v170 - v52);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v53);
  v55 = (&v170 - v54);
  MEMORY[0x1EEE9AC00](v56);
  v172 = &v170 - v57;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v170 - v59;
  v61 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v62 = OUTLINED_FUNCTION_9(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_25();
  v67 = (v65 - v66);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v170 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  v72 = OUTLINED_FUNCTION_9(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v170 - v75;
  v77 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v78 = OUTLINED_FUNCTION_13_1(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_25();
  v83 = v81 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v170 - v85;
  sub_1C8F00980(a1, v76);
  if (__swift_getEnumTagSinglePayload(v76, 1, v77) != 1)
  {
    v171 = a1;
    OUTLINED_FUNCTION_3_47();
    sub_1C8F00A58(v76, v86, v94);
    sub_1C8F00AB4(v86, v83, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v118 = OUTLINED_FUNCTION_152();
        v119 = v181;
        sub_1C8F00A58(v118, v181, v120);
        v121 = v180;
        sub_1C8F00AB4(v119, v180, type metadata accessor for ToolKitProtoCompoundPredicate);
        if (*v121)
        {
          v161 = v186;
          v187 = *v121 != 1;
          v162 = *(v121 + 8);
          type metadata accessor for ComparisonPredicate(0);
          OUTLINED_FUNCTION_8_38();
          sub_1C8F00BB0(v163, v164);

          v165 = sub_1C90641EC();
          if (!v161)
          {
            v167 = v165;
            OUTLINED_FUNCTION_0_66();
            sub_1C8F00B10(v171, v168);
            sub_1C8F00B10(v121, type metadata accessor for ToolKitProtoCompoundPredicate);
            sub_1C8F00B10(v119, type metadata accessor for ToolKitProtoCompoundPredicate);
            OUTLINED_FUNCTION_1_61();
            sub_1C8F00B10(v86, v169);
            v151 = v172;
            *v172 = v187;
            *(v151 + 1) = v167;
LABEL_27:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_2_58();
            v101 = v151;
            return sub_1C8F00A58(v101, v185, v100);
          }
        }

        else
        {
          v157 = OUTLINED_FUNCTION_94();
          v159 = __swift_instantiateConcreteTypeFromMangledNameV2(v157, v158);
          sub_1C8D4F674(&qword_1EC314518, &dword_1EC314510, &qword_1C9074268);
          OUTLINED_FUNCTION_89();
          *v160 = &type metadata for CompoundPredicate.Operator;
          (*(*(v159 - 8) + 104))(v160, *MEMORY[0x1E69E08A8], v159);
          swift_willThrow();
        }

        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v171, v166);
        sub_1C8F00B10(v121, type metadata accessor for ToolKitProtoCompoundPredicate);
        v142 = v119;
        v143 = type metadata accessor for ToolKitProtoCompoundPredicate;
        goto LABEL_25;
      case 2u:
        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v171, v102);
        OUTLINED_FUNCTION_1_61();
        sub_1C8F00B10(v86, v103);
        v104 = OUTLINED_FUNCTION_152();
        v105 = v175;
        sub_1C8F00A58(v104, v175, v106);
        v108 = *v105;
        v107 = v105[1];

        sub_1C8F00B10(v105, type metadata accessor for ToolKitProtoStringSearchPredicate);
        v109 = v185;
        *v185 = v108;
        v109[1] = v107;
        return swift_storeEnumTagMultiPayload();
      case 3u:
        v110 = OUTLINED_FUNCTION_152();
        v111 = v182;
        sub_1C8F00A58(v110, v182, v112);
        v113 = v111;
        v114 = v183;
        sub_1C8F00AB4(v113, v183, type metadata accessor for ToolKitProtoIdSearchPredicate);
        v115 = *(v114 + 16);
        if (v115[2])
        {
          v117 = v115[4];
          v116 = v115[5];
        }

        else
        {
          v117 = 0;
          v116 = 0xE000000000000000;
        }

        v144 = v171;

        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v144, v145);
        sub_1C8F00B10(v182, type metadata accessor for ToolKitProtoIdSearchPredicate);
        OUTLINED_FUNCTION_1_61();
        sub_1C8F00B10(v86, v146);
        sub_1C8F00B10(v183, type metadata accessor for ToolKitProtoIdSearchPredicate);
        *v55 = v117;
        v55[1] = v116;
        v55[2] = v115;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_58();
        return sub_1C8F00A58(v55, v185, v147);
      case 4u:
      case 5u:
      case 7u:
        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v171, v122);
        OUTLINED_FUNCTION_4_41();
        sub_1C8F00B10(v86, v123);
        sub_1C8F00B10(v83, v67);
        return swift_storeEnumTagMultiPayload();
      case 6u:
        v124 = OUTLINED_FUNCTION_152();
        v125 = v177;
        sub_1C8F00A58(v124, v177, v126);
        v127 = v179;
        v128 = sub_1C8F00AB4(v125, v179, type metadata accessor for ToolKitProtoSearchableItemPredicate);
        v129 = *v127;
        v130 = v127[1];
        v131 = MEMORY[0x1CCA82A80](v128);
        v132 = v186;
        v133 = sub_1C8D00800(v129, v130);
        if (v132)
        {
          objc_autoreleasePoolPop(v131);
          OUTLINED_FUNCTION_0_66();
          sub_1C8F00B10(v171, v134);
          sub_1C8F00B10(v125, type metadata accessor for ToolKitProtoSearchableItemPredicate);
          OUTLINED_FUNCTION_1_61();
          sub_1C8F00B10(v86, v135);
          v92 = v127;
          v91 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
          return sub_1C8F00B10(v92, v91);
        }

        v148 = v133;
        objc_autoreleasePoolPop(v131);
        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v171, v149);
        sub_1C8F00B10(v125, type metadata accessor for ToolKitProtoSearchableItemPredicate);
        OUTLINED_FUNCTION_1_61();
        sub_1C8F00B10(v86, v150);
        sub_1C8F00B10(v127, type metadata accessor for ToolKitProtoSearchableItemPredicate);
        v151 = v174;
        *v174 = v148;
        goto LABEL_27;
      case 8u:
        v136 = OUTLINED_FUNCTION_152();
        v137 = v178;
        sub_1C8F00A58(v136, v178, v138);
        v139 = v176;
        sub_1C8F00AB4(v137, v176, type metadata accessor for ToolKitProtoValueSearchPredicate);
        v140 = v186;
        ValueSearchPredicate.init(protobuf:)(v139, &v188);
        if (!v140)
        {
          OUTLINED_FUNCTION_0_66();
          sub_1C8F00B10(v171, v152);
          v153 = OUTLINED_FUNCTION_7_39();
          sub_1C8F00B10(v153, v154);
          OUTLINED_FUNCTION_1_61();
          sub_1C8F00B10(v86, v155);
          v156 = v173;
          *v173 = v188;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_2_58();
          v101 = v156;
          return sub_1C8F00A58(v101, v185, v100);
        }

        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v171, v141);
        v142 = OUTLINED_FUNCTION_7_39();
LABEL_25:
        sub_1C8F00B10(v142, v143);
        OUTLINED_FUNCTION_1_61();
        v92 = v86;
        return sub_1C8F00B10(v92, v91);
      default:
        v95 = OUTLINED_FUNCTION_152();
        sub_1C8F00A58(v95, v70, v96);
        sub_1C8F00AB4(v70, v67, type metadata accessor for ToolKitProtoComparisonPredicate);
        v97 = v186;
        ComparisonPredicate.init(protobuf:)();
        OUTLINED_FUNCTION_0_66();
        sub_1C8F00B10(v171, v98);
        sub_1C8F00B10(v70, type metadata accessor for ToolKitProtoComparisonPredicate);
        OUTLINED_FUNCTION_1_61();
        result = sub_1C8F00B10(v86, v99);
        if (v97)
        {
          return result;
        }

        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_58();
        v101 = v60;
        return sub_1C8F00A58(v101, v185, v100);
    }
  }

  sub_1C8F009F0(v76);
  v87 = OUTLINED_FUNCTION_94();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(v87, v88);
  sub_1C8D4F674(&qword_1EC319AB0, &qword_1EC319AA8, &qword_1C90A5BF0);
  OUTLINED_FUNCTION_89();
  *v90 = v77;
  (*(*(v89 - 8) + 104))(v90, *MEMORY[0x1E69E08B0], v89);
  swift_willThrow();
  OUTLINED_FUNCTION_0_66();
  v92 = a1;
  return sub_1C8F00B10(v92, v91);
}

uint64_t sub_1C8F008F0(uint64_t a1, uint64_t a2)
{
  sub_1C8F009F0(a1);
  sub_1C8F00AB4(a2, a1, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v4 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_1C8F00980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8F009F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314788, &qword_1C9074E48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8F00A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t sub_1C8F00AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t sub_1C8F00B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8F00BB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ContainerDefinition.Device.protobuf(useCase:)()
{
  v0 = OUTLINED_FUNCTION_49_14();
  type metadata accessor for ToolKitProtoContainerDefinition.Device(v0);
  OUTLINED_FUNCTION_20_24();
  sub_1C8F073B0(v1, v2);

  OUTLINED_FUNCTION_30_22();
  sub_1C9063ACC();
}

void ParameterDefinition.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v11 = v10;
  v43 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
  OUTLINED_FUNCTION_9(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_50_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_290();
  v25 = v11[1];
  v42 = *v11;
  v27 = v11[2];
  v26 = v11[3];
  v29 = v11[7];
  v28 = v11[8];
  v30._rawValue = v11[6];

  ParameterDefinition.ParameterFlags.init(protobuf:)(v30);
  if (v31)
  {
    OUTLINED_FUNCTION_6_37();
  }

  else
  {
    v40 = v27;
    v41 = v25;
    v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
    v33 = v32[10];
    sub_1C8D63FCC();
    sub_1C8D1FD40();
    OUTLINED_FUNCTION_43_17();
    sub_1C906351C();
    v34 = v11[4];
    sub_1C8F069D0();

    v35 = sub_1C90641EC();
    v36 = v32[11];
    sub_1C8D63FCC();
    sub_1C8F06A24();
    OUTLINED_FUNCTION_43_17();
    sub_1C906350C();
    v37 = v11[5];
    sub_1C8F06A78();

    v39 = sub_1C90641EC();
    v38 = v32[12];
    sub_1C8D63FCC();
    sub_1C8F06ACC();
    OUTLINED_FUNCTION_43_17();
    sub_1C906350C();
    OUTLINED_FUNCTION_6_37();
    *(v43 + 72) = v44;
    *v43 = v42;
    *(v43 + 8) = v41;
    *(v43 + 16) = v40;
    *(v43 + 24) = v26;
    *(v43 + 32) = v29;
    *(v43 + 40) = v28;
    *(v43 + 48) = a10;
    *(v43 + 56) = v49;
    *(v43 + 64) = v35;
    *(v43 + 88) = v45;
    *(v43 + 104) = v46;
    *(v43 + 112) = v47;
    *(v43 + 120) = v48;
    *(v43 + 128) = v39;
  }

  OUTLINED_FUNCTION_198();
}

void ParameterDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v106 = v1;
  v91 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v90 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_97();
  v104 = v12;
  OUTLINED_FUNCTION_111();
  v96 = sub_1C906348C();
  v13 = OUTLINED_FUNCTION_11(v96);
  v95 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v83 - v24;
  v26 = v0[1];
  v103 = *v0;
  v27 = v0[3];
  v102 = v0[2];
  v28 = v0[5];
  v101 = v0[4];
  v29 = v0[7];
  v97 = v0[6];
  v30 = v0[9];
  v105 = v0[8];
  v94 = v30;
  v31 = v0[11];
  v100 = v0[10];
  v93 = v31;
  v32 = v0[13];
  v92 = v0[12];
  v99 = v32;
  v33 = v0[15];
  v98 = v0[14];
  v34 = v0[16];
  v107 = v29;

  v35 = v106;
  TypeInstance.protobuf(useCase:)();
  if (v35)
  {
  }

  else
  {
    v85 = v29;
    v86 = v34;
    v87 = v33;
    v106 = v28;
    v89 = v27;
    v88 = v26;

    v36 = type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
    sub_1C8F06B20();
    v40 = v105;
    v83 = sub_1C90641FC();
    v84 = 0;
    v41 = v95;
    v42 = v96;
    (*(v95 + 104))(v19, *MEMORY[0x1E69E0750], v96);
    v43 = sub_1C906347C();
    (*(v41 + 8))(v19, v42);
    if (v43)
    {
      v105 = v36;
      v124 = MEMORY[0x1E69E7CC0];
      v44 = v91;
      v45 = v104;
      v46 = v97;
    }

    else
    {
      v96 = v25;
      v107 = v103;
      v108 = v88;
      v109 = v102;
      v110 = v89;
      v111 = v101;
      v112 = v106;
      v46 = v97;
      v113 = v97;
      v114 = v85;
      v115 = v40;
      v116 = v94;
      v117 = v100;
      v118 = v93;
      v119 = v92;
      v120 = v99;
      v121 = v98;
      v122 = v87;
      v123 = v86;
      v57 = v84;
      ParameterDefinition.fetchSampleInvocations(cacheResults:)();
      if (v57)
      {
        sub_1C8D16D78(v96, &qword_1EC312A58, &unk_1C9074CC0);

        goto LABEL_14;
      }

      v105 = v36;
      sub_1C8D72F00();
      v82 = sub_1C90641FC();
      v44 = v91;
      v45 = v104;
      v84 = 0;
      v124 = v82;
    }

    v107 = v46;
    v97 = ParameterDefinition.ParameterFlags.protobuf(useCase:)();
    v47 = v90;
    v48 = v99;
    v49 = v98;
    if (v98)
    {
      v50 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
      v51 = *(v50 + 24);

      v52 = v87;

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v45 = v48;
      v45[1] = v49;
      v45[2] = v52;
      OUTLINED_FUNCTION_150();
      v56 = v50;
    }

    else
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
      OUTLINED_FUNCTION_115();
    }

    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    v58 = v89;
    v59 = v100;
    if (v100)
    {
      v60 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);
      v61 = *(v60 + 24);

      v62 = v92;

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v47 = v94;
      v47[1] = v59;
      v47[2] = v93;
      v47[3] = v62;
      v63 = v47;
      v64 = 0;
    }

    else
    {
      v60 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);
      v63 = v47;
      v64 = 1;
    }

    __swift_storeEnumTagSinglePayload(v63, v64, 1, v60);
    v65 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
    v66 = v65[10];
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v105);
    v70 = v65[11];
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    v75 = v65[12];
    type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(0);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v60);
    v79 = v44 + v65[13];
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    v80 = v88;
    *v44 = v103;
    v44[1] = v80;
    v44[2] = v102;
    v44[3] = v58;
    v81 = v106;
    v44[7] = v101;
    v44[8] = v81;
    sub_1C8D7300C();
    v44[4] = v83;
    v44[5] = v124;
    v44[6] = v97;
    sub_1C8D7300C();
    sub_1C8D7300C();
  }

LABEL_14:
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

ToolKit::ToolFlag __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolFlag.init(protobuf:)(Swift::OpaquePointer protobuf)
{
  OUTLINED_FUNCTION_29_20(protobuf._rawValue);
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_44_20();
    sub_1C8D0973C();
    v3 = v8;
    do
    {
      OUTLINED_FUNCTION_41_17();
      if (v5)
      {
        OUTLINED_FUNCTION_46_13(v4);
        sub_1C8D0973C();
        v3 = v8;
      }

      OUTLINED_FUNCTION_47_15();
    }

    while (!v6);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_18_26();
    }

    while (!v6);
  }

  *v1 = 0;
  return result;
}

uint64_t ToolFlag.protobuf(useCase:)()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(&unk_1F489B778 + v1 + 32);
    if ((v4 & ~v2) == 0)
    {
      v5 = 0;
      switch(v4)
      {
        case 0:
          goto LABEL_16;
        case 1:
          v5 = 1;
          goto LABEL_16;
        case 2:
          v5 = 2;
          goto LABEL_16;
        case 3:
        case 5:
        case 6:
        case 7:
          break;
        case 4:
          v5 = 3;
          goto LABEL_16;
        case 8:
          v5 = 4;
          goto LABEL_16;
        default:
          switch(v4)
          {
            case 16:
              v5 = 5;
              break;
            case 32:
              v5 = 6;
              break;
            case 64:
              v5 = 7;
              break;
            case 128:
              v5 = 8;
              break;
            default:
              goto LABEL_21;
          }

LABEL_16:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = OUTLINED_FUNCTION_16_26();
            sub_1C8D01A04(v7, v8, v9, v10);
            v3 = v11;
          }

          v6 = *(v3 + 16);
          if (v6 >= *(v3 + 24) >> 1)
          {
            OUTLINED_FUNCTION_27_17();
            sub_1C8D01A04(v12, v13, v14, v15);
            v3 = v16;
          }

          *(v3 + 16) = v6 + 1;
          *(v3 + v6 + 32) = v5;
          break;
      }
    }

LABEL_21:
    v1 += 8;
  }

  while (v1 != 64);
  return v3;
}

uint64_t sub_1C8F01B44@<X0>(uint64_t *a1@<X8>)
{
  result = ToolFlag.protobuf(useCase:)();
  *a1 = result;
  return result;
}

ToolKit::ToolVisibilityFlag __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolVisibilityFlag.init(protobuf:)(Swift::OpaquePointer protobuf)
{
  OUTLINED_FUNCTION_29_20(protobuf._rawValue);
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_44_20();
    sub_1C8D0976C();
    v3 = v8;
    do
    {
      OUTLINED_FUNCTION_41_17();
      if (v5)
      {
        OUTLINED_FUNCTION_46_13(v4);
        sub_1C8D0976C();
        v3 = v8;
      }

      OUTLINED_FUNCTION_47_15();
    }

    while (!v6);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  if (*(v3 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_18_26();
    }

    while (!v6);
  }

  *v1 = 0;
  return result;
}

uint64_t ToolVisibilityFlag.protobuf(useCase:)()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1C8D01A2C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v3;
  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_27_17();
    sub_1C8D01A2C(v8, v9, v10, v11);
    v2 = v12;
  }

  *(v2 + 16) = v4 + 1;
  *(v2 + v4 + 32) = 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_16_26();
      sub_1C8D01A2C(v13, v14, v15, v16);
      v2 = v17;
    }

    v5 = *(v2 + 16);
    if (v5 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_27_17();
      sub_1C8D01A2C(v18, v19, v20, v21);
      v2 = v22;
    }

    *(v2 + 16) = v5 + 1;
    *(v2 + v5 + 32) = 2;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_16_26();
      sub_1C8D01A2C(v23, v24, v25, v26);
      v2 = v27;
    }

    v6 = *(v2 + 16);
    if (v6 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_27_17();
      sub_1C8D01A2C(v28, v29, v30, v31);
      v2 = v32;
    }

    *(v2 + 16) = v6 + 1;
    *(v2 + v6 + 32) = 3;
  }

  return v2;
}

uint64_t sub_1C8F01DC8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolVisibilityFlag.protobuf(useCase:)();
  *a1 = result;
  return result;
}

void ToolDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v116 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97();
  v118 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v119 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25();
  v117 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v98 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  v23 = OUTLINED_FUNCTION_9(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v98 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  v36 = *v2;
  v37 = v2[1];
  v38 = v2[3];
  v114 = v2[2];
  v115 = v36;
  v113 = *(v2 + 32);
  v135 = v2;
  v39 = v2[5];
  sub_1C8F06C40();

  v40 = sub_1C90641EC();
  if (v0)
  {
    OUTLINED_FUNCTION_1_62();
    sub_1C8F07110();
  }

  else
  {
    v41 = v40;
    v109 = v28;
    v110 = v31;
    v111 = v38;
    v112 = v37;
    v42 = v2[13];

    v43 = sub_1C90641EC();
    v108 = v41;
    v44 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
    v45 = v44[19];
    sub_1C8D63FCC();
    sub_1C8D1FD40();
    sub_1C906351C();
    v107 = v134;
    v46 = (v2 + v44[20]);
    v48 = *v46;
    v47 = v46[1];
    v49 = v44[25];
    sub_1C8D63FCC();
    sub_1C8F06C94();

    OUTLINED_FUNCTION_55_11();
    sub_1C906351C();
    v106 = v48;
    v110 = v47;
    memcpy(v132, v133, 0x61uLL);
    v50 = v44[26];
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_55_11();
    sub_1C906350C();
    memcpy(v130, v131, 0x61uLL);
    v51 = v135[16];

    v52 = sub_1C90641EC();
    v104 = v43;
    v105 = v52;
    v53 = *(v135 + v44[22]);
    v54 = *(v135 + v44[27]);
    v100 = *(v135 + v44[28]);
    v101 = v53;
    v55 = v44[30];
    v102 = *(v135 + v44[29]);
    v103 = v54;
    v56 = v135 + v55;
    v57 = *(v135 + v55);
    v58 = *(v56 + 8);
    v129[0] = v53;
    v129[1] = v54;
    v129[2] = v100;
    v129[3] = v102;
    *&v129[4] = v57;
    *(&v129[4] + 1) = v58;
    type metadata accessor for ToolIcon(0);
    v59 = v44[24];
    v109 = 0;
    sub_1C8D63FCC();
    *&v103 = *(&v102 + 1);
    sub_1C8F073B0(&qword_1EC319AF0, type metadata accessor for ToolIcon);

    v60 = v109;
    sub_1C906350C();
    if (v60)
    {
      OUTLINED_FUNCTION_1_62();
      sub_1C8F07110();
      sub_1C8E87298(v129);
      sub_1C8D16D78(v130, &qword_1EC312EF8, &unk_1C90839D0);
      sub_1C8CC15FC(v132);

      OUTLINED_FUNCTION_35_19();
    }

    else
    {
      v61 = v135[6];
      sub_1C8F06CE8();

      v119 = sub_1C90641EC();
      v62 = v135[7];
      v63 = v44[23];
      sub_1C8D63FCC();
      sub_1C8F06D3C();

      sub_1C906350C();
      v65 = v125;
      v64 = v126;
      v67 = v127;
      v66 = v128;
      v68 = v135[8];
      sub_1C8D1FC54();

      v118 = sub_1C90641EC();
      v69 = v64;
      *&v102 = v67;
      *&v103 = v66;
      v70 = v135[9];

      ToolFlag.init(protobuf:)(v71);
      *&v101 = v124;
      v72 = v135[12];
      sub_1C8F06D90();

      v73 = sub_1C90641EC();
      if (v74)
      {

        OUTLINED_FUNCTION_35_19();

        sub_1C8CC15FC(v132);
        sub_1C8D16D78(v130, &qword_1EC312EF8, &unk_1C90839D0);
        sub_1C8E87298(v129);

        OUTLINED_FUNCTION_63_13();

        OUTLINED_FUNCTION_1_62();
        sub_1C8F07110();
        sub_1C8D16D78(v120, &qword_1EC3144B8, &qword_1C90839E0);
      }

      else
      {
        v75 = v73;
        v99 = *(v135 + 80);
        v76 = v135[14];

        ToolVisibilityFlag.init(protobuf:)(v77);
        v98 = v123;
        v78 = v135[15];
        v79 = v135[11];
        sub_1C8F06A78();
        *&v100 = v78;

        v80 = sub_1C90641EC();
        v109 = v81;
        if (v81)
        {

          OUTLINED_FUNCTION_35_19();

          sub_1C8CC15FC(v132);
          sub_1C8D16D78(v130, &qword_1EC312EF8, &unk_1C90839D0);
          sub_1C8E87298(v129);

          OUTLINED_FUNCTION_63_13();

          OUTLINED_FUNCTION_1_62();
          sub_1C8F07110();
          sub_1C8D16D78(v120, &qword_1EC3144B8, &qword_1C90839E0);
        }

        else
        {
          v82 = v80;
          v83 = 0x402010003uLL >> (8 * v113);
          sub_1C8D63FCC();
          v84 = v116;
          v85 = v112;
          *v116 = v115;
          v84[1] = v85;
          v86 = v111;
          v84[2] = v114;
          v84[3] = v86;
          *(v84 + 32) = v83;
          v87 = v104;
          v84[5] = v108;
          v84[6] = v87;
          v88 = v106;
          v84[7] = v107;
          v84[8] = v88;
          v84[9] = v110;
          memcpy(v84 + 24, v132, 0x61uLL);
          memcpy(v84 + 37, v130, 0x61uLL);
          v84[50] = v105;
          memcpy(v84 + 51, v129, 0x50uLL);
          v89 = type metadata accessor for ToolDefinition(0);
          v90 = v89[16];
          v91 = v117;
          sub_1C8D63FCC();
          *(v84 + v89[17]) = v119;
          *(v84 + v89[18]) = v62;
          v92 = (v84 + v89[19]);
          *v92 = v65;
          v92[1] = v69;
          v93 = v103;
          v92[2] = v102;
          v92[3] = v93;
          *(v84 + v89[20]) = v118;
          *(v84 + v89[21]) = v101;
          *(v84 + v89[23]) = v75;
          *(v84 + v89[22]) = v99;
          v94 = (v84 + v89[24]);
          *v94 = 0;
          v94[1] = 0;
          *(v84 + v89[25]) = v98;
          *(v84 + v89[26]) = v100;
          *(v84 + v89[27]) = v82;
          memcpy(v121, v132, sizeof(v121));
          sub_1C8CC1340(v132, v122);
          sub_1C8CC139C();
          OUTLINED_FUNCTION_1_62();
          sub_1C8F07110();
          sub_1C8D16D78(v91, &qword_1EC3144B8, &qword_1C90839E0);
          OUTLINED_FUNCTION_56_10();
          sub_1C8D16D78(v95, v96, v97);
          memcpy(v84 + 10, v122, 0x70uLL);
        }
      }
    }
  }

  OUTLINED_FUNCTION_198();
}

void ToolDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v225 = v1;
  v226 = v2;
  v3 = v0;
  v216 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25();
  v218 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v217 = v185 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  v219 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_97();
  v223 = v22;
  OUTLINED_FUNCTION_111();
  v23 = sub_1C906348C();
  v24 = OUTLINED_FUNCTION_11(v23);
  v221 = v25;
  v222 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v220 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
  OUTLINED_FUNCTION_9(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  v224 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C0, &qword_1C9074E98);
  OUTLINED_FUNCTION_9(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v185 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_9(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v185 - v45;
  v47 = *v0;
  v48 = v0[1];
  v49 = v0[3];
  v214 = v0[2];
  v215 = v47;
  v50 = *(v0 + 32);
  v51 = v0[5];
  v52 = sub_1C8F06DE4();

  v53 = v225;
  v54 = sub_1C90641FC();
  if (v53)
  {
  }

  else
  {
    v209 = v50;
    v210 = v52;
    v212 = v54;
    v213 = v48;
    v225 = v49;
    v211 = v40;
    v234 = v3[7];

    TypeInstance.protobuf(useCase:)();
    v55 = v3;

    type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_150();
    v206 = v56;
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v56);
    v60 = v3[9];
    v207 = v3[8];
    memcpy(v233, v3 + 10, sizeof(v233));
    v208 = v60;
    if (v233[1])
    {
      v227[0] = v233[0];
      v227[1] = v233[1];
      memcpy(&v227[2], v3 + 12, 0x60uLL);

      sub_1C8D63FCC();
      v61 = v211;
      AppDefinition.protobuf(useCase:)(v211);
      memcpy(v228, v227, sizeof(v228));
      sub_1C8E8732C(v228);
      type metadata accessor for ToolKitProtoAppDefinition(0);
      v62 = v61;
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    }

    else
    {
      type metadata accessor for ToolKitProtoAppDefinition(0);
      v62 = v211;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
    }

    v71 = v3[51];
    v72 = v3[52];
    v73 = type metadata accessor for ToolDefinition(0);
    v74 = *(v3 + v73[17]);
    sub_1C8F06E38();

    v75 = sub_1C90641FC();
    v199 = v71;
    v76 = v46;
    v204 = v72;
    v205 = 0;
    v77 = *(v3 + v73[18]);
    v78 = (v3 + v73[19]);
    v79 = v78[1];
    v80 = v73;
    v202 = v75;
    v203 = v77;
    if (v79)
    {
      v81 = v78[2];
      v82 = v78[3];
      v200 = *v78;
      v201 = v81;
      v83 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
      v84 = *(v83 + 24);
      v85 = v73;
      v86 = v83;

      v87 = v224;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v88 = v201;
      *v87 = v200;
      v87[1] = v79;
      v87[2] = v88;
      v87[3] = v82;
      v89 = v76;
      v62 = v211;
      OUTLINED_FUNCTION_150();
      v90 = v86;
      v80 = v85;
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v90);
    }

    else
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);

      v89 = v76;
    }

    v98 = *(v55 + v80[20]);
    sub_1C8D531CC();
    v99 = v205;
    v100 = sub_1C90641FC();
    if (v99)
    {

      sub_1C8D16D78(v62, &qword_1EC3147C0, &qword_1C9074E98);
      sub_1C8D16D78(v89, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C8D16D78(v224, &qword_1EC3147C8, &qword_1C9074EA0);
    }

    else
    {
      v200 = v89;
      v201 = v100;
      v228[0] = *(v55 + v80[21]);
      v101 = ToolFlag.protobuf(useCase:)();
      v198 = v80;
      v102 = v55;
      v197 = *(v55 + v80[22]);
      v104 = v220;
      v103 = v221;
      v105 = v222;
      (*(v221 + 104))(v220, *MEMORY[0x1E69E0750], v222);
      v106 = sub_1C906347C();
      (*(v103 + 8))(v104, v105);
      if (v106)
      {
        v222 = MEMORY[0x1E69E7CC0];
        v107 = v223;
        v108 = v102;
      }

      else
      {
        v107 = v223;
        if (qword_1EDA631E8 != -1)
        {
          swift_once();
        }

        v108 = v102;
        ToolDefinition.fetchSampleInvocations(assistantSchemaProvider:cacheResults:)();
        sub_1C8D72F00();
        v222 = sub_1C90641FC();
      }

      v109 = v198;
      v110 = *(v108 + *(v198 + 92));
      sub_1C8F06E8C();
      v221 = sub_1C90641FC();
      v111 = *(v109 + 64);
      v112 = v219;
      sub_1C8D63FCC();
      v113 = type metadata accessor for ToolIcon(0);
      if (__swift_getEnumTagSinglePayload(v112, 1, v113) == 1)
      {
        sub_1C8D16D78(v112, &qword_1EC3144B8, &qword_1C90839E0);
        v114 = 1;
      }

      else
      {
        ToolIcon.protobuf(useCase:)(v107);
        sub_1C8F07110();
        v114 = 0;
      }

      v115 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
      __swift_storeEnumTagSinglePayload(v107, v114, 1, v115);
      v116 = v108[6];
      v117 = sub_1C90641FC();
      v195 = v115;
      v210 = v117;
      v219 = v101;
      v205 = 0;
      memcpy(v227, v108 + 24, 0x61uLL);
      memcpy(v232, v108 + 24, 0x61uLL);
      sub_1C8CC1340(v227, v230);
      ContainerDefinition.protobuf(useCase:)(v217);
      memcpy(v228, v232, 0x61uLL);
      sub_1C8CC15FC(v228);
      v118 = type metadata accessor for ToolKitProtoContainerDefinition(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v118);
      v122 = v108[38];
      if (v122)
      {
        v229[0] = v108[37];
        v229[1] = v122;
        memcpy(&v229[2], v108 + 39, 0x51uLL);
        v230[0] = v229[0];
        v230[1] = v122;
        memcpy(v231, v108 + 39, sizeof(v231));
        sub_1C8CC1340(v230, v232);
        v123 = v218;
        ContainerDefinition.protobuf(useCase:)(v218);
        memcpy(v232, v229, 0x61uLL);
        sub_1C8CC15FC(v232);
        v124 = v123;
        v125 = 0;
      }

      else
      {
        v124 = v218;
        v125 = 1;
      }

      __swift_storeEnumTagSinglePayload(v124, v125, 1, v118);
      v126 = v198;
      v232[0] = *(v108 + *(v198 + 100));
      v196 = ToolVisibilityFlag.protobuf(useCase:)();
      v127 = v108[53];
      v128 = v108;
      v129 = v108[54];
      v130 = v128[56];
      v193 = v128[55];
      v194 = v127;
      v131 = v128[57];
      v132 = v128[58];
      v133 = v128[60];
      v191 = v128[59];
      v192 = v131;
      v134 = *(v128 + *(v126 + 104));
      v135 = v128[50];
      sub_1C8F06EE0();
      v220 = v129;

      v136 = v205;
      v137 = sub_1C90641FC();
      v205 = v136;
      if (v136)
      {

        sub_1C8D16D78(v218, &qword_1EC314718, &qword_1C9074DA8);
        sub_1C8D16D78(v217, &qword_1EC314718, &qword_1C9074DA8);
        sub_1C8D16D78(v223, &qword_1EC3147D0, &qword_1C9074EA8);
        sub_1C8D16D78(v211, &qword_1EC3147C0, &qword_1C9074E98);
        sub_1C8D16D78(v200, &qword_1EC312A58, &unk_1C9074CC0);
        sub_1C8D16D78(v224, &qword_1EC3147C8, &qword_1C9074EA0);
      }

      else
      {
        v198 = 0x400030201uLL >> (8 * v209);
        v226 = v137;
        v138 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
        v209 = v130;
        v139 = v138;
        v185[1] = *(v138 + 76);
        v140 = v216;
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v141, v142, v143, v206);
        v144 = v139[20];
        v185[0] = v139[21];
        v145 = (v140 + v144);
        type metadata accessor for ToolKitProtoAppDefinition(0);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v146, v147, v148, v149);
        v150 = v139[22];
        v151 = v139[23];
        v206 = v132;
        v152 = (v140 + v150);
        type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
        v185[2] = v139[24];
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v157, v158, v159, v195);
        v195 = v139[25];
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v160, v161, v162, v118);
        v190 = v139[26];
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v163, v164, v165, v118);
        v166 = v139[28];
        v188 = (v140 + v139[27]);
        v189 = (v140 + v166);
        v167 = v139[30];
        v186 = (v140 + v139[29]);
        v187 = (v140 + v167);
        v168 = v140 + v139[31];
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        v169 = v213;
        v170 = v214;
        *v140 = v215;
        *(v140 + 8) = v169;
        v171 = v225;
        *(v140 + 16) = v170;
        *(v140 + 24) = v171;
        *(v140 + 32) = v198;
        *(v140 + 40) = v212;
        sub_1C8D7300C();
        v172 = v208;
        *v145 = v207;
        v145[1] = v172;
        sub_1C8D7300C();
        v173 = v204;
        *v152 = v199;
        v152[1] = v173;
        v174 = v203;
        *(v140 + 48) = v202;
        *(v140 + 56) = v174;
        sub_1C8D7300C();
        v175 = v219;
        *(v140 + 64) = v201;
        *(v140 + 72) = v175;
        *(v140 + 80) = v197;
        v176 = v221;
        *(v140 + 88) = v222;
        *(v140 + 96) = v176;
        sub_1C8D7300C();
        *(v140 + 104) = v210;
        sub_1C8D7300C();
        sub_1C8D7300C();
        *(v140 + 112) = v196;
        v178 = v188;
        v177 = v189;
        v179 = v220;
        *v188 = v194;
        v178[1] = v179;
        v180 = v209;
        *v177 = v193;
        v177[1] = v180;
        v182 = v186;
        v181 = v187;
        v183 = v206;
        *v186 = v192;
        v182[1] = v183;
        *v181 = v191;
        v181[1] = v133;
        v184 = v226;
        *(v140 + 120) = v134;
        *(v140 + 128) = v184;
      }
    }
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t AppDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314800, &unk_1C9074EE8);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v42 = v1[2];
  v43 = v7;
  v37 = v9;
  v38 = v8;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[7];
  v40 = v1[6];
  v41 = v10;
  v13 = v1[9];
  v39 = v1[8];
  v36[0] = v13;
  v14 = v1[10];
  v15 = v1[11];
  v44 = *(v1 + 96);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = v1[13];
  v18 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v36[1] = v36;
  v45 = v16;
  v46 = v15;
  OUTLINED_FUNCTION_19_24();
  sub_1C8F073B0(v19, v20);

  v21 = v11;

  v22 = v36[0];

  OUTLINED_FUNCTION_30_22();
  sub_1C9063ACC();

  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
  v26 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v27 = *(v26 + 44);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v18);
  v31 = a1 + *(v26 + 48);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v32 = v38;
  *a1 = v43;
  *(a1 + 8) = v32;
  v33 = v37;
  *(a1 + 16) = v42;
  *(a1 + 24) = v33;
  v34 = v40;
  *(a1 + 32) = v41;
  *(a1 + 40) = v21;
  *(a1 + 48) = v34;
  *(a1 + 56) = v12;
  *(a1 + 64) = v39;
  *(a1 + 72) = v22;
  result = sub_1C8D7300C();
  *(a1 + 80) = v44;
  *(a1 + 88) = v17;
  return result;
}

uint64_t ToolDeprecationDefinition.protobuf(useCase:)()
{
  v5 = OUTLINED_FUNCTION_61_13();
  v6 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(v5) + 24);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
  v0[3] = v1;
  return result;
}

uint64_t ToolIcon.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v39[1] = a1;
  v3 = sub_1C9061EBC();
  v4 = OUTLINED_FUNCTION_11(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  v9 = type metadata accessor for ToolIcon(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v15 = (v14 - v13);
  v16 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v17 = OUTLINED_FUNCTION_13_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  sub_1C8F06FB8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *v15;
  v22 = v15[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *(v15 + 8);
      if (v23 < 0)
      {
        v42 = *(v15 + 8);
        v24 = ToolSymbolIconColor.rawValue.getter();
        v26 = v35;
        v27 = 0;
        v29 = 0;
      }

      else
      {
        v41 = *(v15 + 8);
        v24 = ToolSymbolIconColor.rawValue.getter();
        v26 = v25;
        v40 = BYTE1(v23);
        v27 = ToolSymbolIconColor.rawValue.getter();
        v29 = v28;
      }

      v36 = v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0) + 32);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v2 = v21;
      *(v2 + 8) = v22;
      *(v2 + 16) = (v23 & 0x8000) != 0;
      *(v2 + 24) = v24;
      *(v2 + 32) = v26;
      *(v2 + 40) = v27;
      *(v2 + 48) = v29;
    }

    else
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190);
      (*(v6 + 32))(v1, v15 + *(v30 + 48), v3);
      v31 = sub_1C9061E5C();
      v33 = v32;
      v34 = v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset(0) + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      (*(v6 + 8))(v1, v3);
      *v2 = v21;
      *(v2 + 8) = v22;
      *(v2 + 16) = v31;
      *(v2 + 24) = v33;
    }
  }

  else
  {
    *v2 = v21;
    *(v2 + 8) = v22;
  }

  swift_storeEnumTagMultiPayload();
  v37 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  MEMORY[0x1EEE9AC00](v37);
  v39[-2] = v2;
  sub_1C8F073B0(&qword_1EDA61010, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_1C9063ACC();
  OUTLINED_FUNCTION_5_43();
  return sub_1C8F07110();
}

uint64_t ContainerDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  v11 = MEMORY[0x1EEE9AC00](v6);
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v37 = v1[3];
  v38 = v7;
  v10 = v1[4];
  v11.n128_u64[0] = v1[5];
  v39 = v11;
  v12 = v1[6];
  v13 = *(v1 + 56);
  v15 = v1[9];
  v14 = v1[10];
  v16 = v1[11];
  v40 = *(v1 + 96);
  v35 = 0x302010004uLL >> (8 * v13);
  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v11.n128_u64[0] = v1[8];
  v36 = v11;
  v18 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v34 = &v34;
  v41 = v17;
  v42 = v16;
  OUTLINED_FUNCTION_20_24();
  sub_1C8F073B0(v19, v20);

  OUTLINED_FUNCTION_30_22();
  sub_1C9063ACC();

  OUTLINED_FUNCTION_150();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v18);
  v24 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v25 = *(v24 + 44);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v18);
  v29 = a1 + *(v24 + 48);
  _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  v30 = v37;
  *a1 = v38;
  *(a1 + 8) = v8;
  *(a1 + 16) = v30;
  *(a1 + 24) = v10;
  *(a1 + 32) = v35;
  *&v31 = v39.n128_u64[0];
  *(&v31 + 1) = v12;
  *&v32 = v36.n128_u64[0];
  *(&v32 + 1) = v15;
  *(a1 + 48) = v31;
  *(a1 + 64) = v32;
  result = sub_1C8D7300C();
  *(a1 + 33) = v40;
  *(a1 + 40) = v9;
  return result;
}

uint64_t ToolDefinition.protobuf.getter()
{
  v1 = sub_1C906348C();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  (*(v4 + 104))(v0, *MEMORY[0x1E69E0760], v1);
  ToolDefinition.protobuf(useCase:)();
  return (*(v4 + 8))(v0, v1);
}

uint64_t ToolCategory.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_20();
  v3 = *v1;
  v2 = v1[1];

  result = OUTLINED_FUNCTION_64_9();
  *v0 = v3;
  v0[1] = v2;
  return result;
}

uint64_t ToolCategory.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0) + 20);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t ToolDeprecationDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_20();
  v2 = v1[1];
  *v0 = *v1;
  v0[1] = v2;
  v4 = v1[2];
  v3 = v1[3];

  result = OUTLINED_FUNCTION_64_9();
  v0[2] = v4;
  v0[3] = v3;
  return result;
}

void ToolIcon.init(protobuf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int16 a12)
{
  OUTLINED_FUNCTION_196();
  v117 = v14;
  v118 = v12;
  v16 = v15;
  v115 = sub_1C9061D9C();
  v17 = OUTLINED_FUNCTION_11(v115);
  v113 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v114 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_9(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v27 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolExternalAsset(0);
  v28 = OUTLINED_FUNCTION_9(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v33 = (v32 - v31);
  v34 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v35 = OUTLINED_FUNCTION_9(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  v116 = (v39 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147F0, &qword_1C9074ED8);
  OUTLINED_FUNCTION_9(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_35();
  v45 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(v44);
  v46 = OUTLINED_FUNCTION_13_1(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25();
  v51 = (v49 - v50);
  MEMORY[0x1EEE9AC00](v52);
  v54 = v112 - v53;
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v45) != 1)
  {
    v112[1] = v16;
    sub_1C8F07010();
    sub_1C8F06FB8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v64 = v116;
        sub_1C8F07010();
        v66 = *(v64 + 3);
        v65 = *(v64 + 4);

        v67._countAndFlagsBits = v66;
        v67._object = v65;
        ToolSymbolIconColor.init(rawValue:)(v67);
        if (HIBYTE(a12) == 18)
        {
          v68 = OUTLINED_FUNCTION_288();
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(v68, v69);
          sub_1C8D4F674(&qword_1EC3142C8, &qword_1EC3142C0, &qword_1C90730C0);
          v71 = OUTLINED_FUNCTION_6_3();
          OUTLINED_FUNCTION_54_11(v71, v72);
          *v73 = v66;
          v73[1] = v65;
          v74 = *MEMORY[0x1E69E08A8];
          OUTLINED_FUNCTION_10_0(v70);
          (*(v75 + 104))();
          swift_willThrow();

          OUTLINED_FUNCTION_3_48();
LABEL_8:
          sub_1C8F07110();
          OUTLINED_FUNCTION_9_31();
          OUTLINED_FUNCTION_5_43();
          goto LABEL_3;
        }

        if (v64[16])
        {
          OUTLINED_FUNCTION_3_48();
          sub_1C8F07110();
          OUTLINED_FUNCTION_5_43();
          sub_1C8F07110();
          v88 = HIBYTE(a12) | 0x8000;
        }

        else
        {
          v89 = *(v64 + 6);
          if (!v89)
          {
            v101 = OUTLINED_FUNCTION_94();
            v103 = __swift_instantiateConcreteTypeFromMangledNameV2(v101, v102);
            sub_1C8D4F674(&qword_1EC3142C8, &qword_1EC3142C0, &qword_1C90730C0);
            v104 = OUTLINED_FUNCTION_6_3();
            OUTLINED_FUNCTION_54_11(v104, v105);
            *v106 = MEMORY[0x1E69E6158];
            v107 = *MEMORY[0x1E69E08B0];
            OUTLINED_FUNCTION_10_0(v103);
            (*(v108 + 104))();
            swift_willThrow();
            OUTLINED_FUNCTION_3_48();
            sub_1C8F07110();
            OUTLINED_FUNCTION_9_31();
            OUTLINED_FUNCTION_5_43();
            goto LABEL_3;
          }

          v90 = *(v64 + 5);
          v91 = *(v64 + 6);
          swift_bridgeObjectRetain_n();
          v92._countAndFlagsBits = v90;
          v92._object = v89;
          ToolSymbolIconColor.init(rawValue:)(v92);
          if (a12 == 18)
          {
            v93 = OUTLINED_FUNCTION_288();
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(v93, v94);
            sub_1C8D4F674(&qword_1EC3142C8, &qword_1EC3142C0, &qword_1C90730C0);
            v96 = OUTLINED_FUNCTION_6_3();
            OUTLINED_FUNCTION_54_11(v96, v97);
            *v98 = v90;
            v98[1] = v89;
            v99 = *MEMORY[0x1E69E08A8];
            OUTLINED_FUNCTION_10_0(v95);
            (*(v100 + 104))();
            swift_willThrow();
            OUTLINED_FUNCTION_3_48();
            goto LABEL_8;
          }

          OUTLINED_FUNCTION_3_48();
          sub_1C8F07110();
          OUTLINED_FUNCTION_5_43();
          sub_1C8F07110();
          v88 = _byteswap_ushort(a12);
        }

        v110 = *v64;
        v109 = *(v64 + 1);

        OUTLINED_FUNCTION_9_31();
        v111 = v117;
        *v117 = v110;
        v111[1] = v109;
        *(v111 + 8) = v88;
      }

      else
      {
        sub_1C8F07010();
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190);
        v116 = v54;
        v79 = *(v78 + 48);
        v80 = v33[1];
        v81 = v117;
        *v117 = *v33;
        v81[1] = v80;
        v82 = v33[2];
        v83 = v33[3];
        sub_1C9061EBC();
        OUTLINED_FUNCTION_115();
        __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
        (*(v113 + 104))(v114, *MEMORY[0x1E6968F70], v115);

        OUTLINED_FUNCTION_288();
        sub_1C9061E8C();
        OUTLINED_FUNCTION_3_48();
        sub_1C8F07110();
        sub_1C8F07110();
        OUTLINED_FUNCTION_5_43();
        sub_1C8F07110();
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_48();
      sub_1C8F07110();
      OUTLINED_FUNCTION_5_43();
      sub_1C8F07110();
      v76 = v51[1];
      v77 = v117;
      *v117 = *v51;
      v77[1] = v76;
    }

    type metadata accessor for ToolIcon(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_12;
  }

  sub_1C8D16D78(v13, &qword_1EC3147F0, &qword_1C9074ED8);
  v55 = OUTLINED_FUNCTION_94();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(v55, v56);
  sub_1C8D4F674(&qword_1EC319B18, &qword_1EC319B10, &qword_1C90A5C58);
  v58 = OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_54_11(v58, v59);
  *v60 = v45;
  v61 = *MEMORY[0x1E69E08B0];
  OUTLINED_FUNCTION_10_0(v57);
  (*(v62 + 104))();
  swift_willThrow();
  OUTLINED_FUNCTION_3_48();
LABEL_3:
  sub_1C8F07110();
LABEL_12:
  OUTLINED_FUNCTION_198();
}

ToolKit::ParameterDefinition::ParameterFlags __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ParameterDefinition.ParameterFlags.init(protobuf:)(Swift::OpaquePointer protobuf)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_29_20(v4);
  if (v3)
  {
    v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_44_20();
    sub_1C8D09854();
    v5 = v11;
    v6 = *(v11 + 16);
    v7 = 32;
    do
    {
      v8 = *(v2 + v7);
      if (v6 >= *(v11 + 24) >> 1)
      {
        sub_1C8D09854();
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v8;
      ++v7;
      ++v6;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  if (*(v5 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_18_26();
    }

    while (!v9);
  }

  *v1 = 0;
  OUTLINED_FUNCTION_198();
  return result;
}

uint64_t ParameterDefinition.ParameterFlags.protobuf(useCase:)()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = off_1EDA60998;
  v3 = *(off_1EDA60998 + 2);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = MEMORY[0x1E69E7CC0];
  v5 = 32;
  do
  {
    v6 = *&v2[v5];
    if ((v6 & ~v1) == 0 && v6 <= 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C8D015B0(0, *(v4 + 16) + 1, 1, v4);
        v4 = v10;
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C8D015B0(v8 > 1, v9 + 1, 1, v4);
        v4 = v11;
      }

      *(v4 + 16) = v9 + 1;
      *(v4 + v9 + 32) = v6;
    }

    v5 += 8;
    --v3;
  }

  while (v3);

  return v4;
}

uint64_t ParameterDefinition.ToolMetadata.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.ToolMetadata(0) + 24);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  return result;
}

uint64_t ParameterDefinition.BooleanMetadata.protobuf(useCase:)()
{
  v5 = OUTLINED_FUNCTION_61_13();
  v6 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.BooleanMetadata(v5) + 24);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
  v0[3] = v1;
  return result;
}

uint64_t ParameterDefinition.ToolMetadata.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_20();
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];

  result = OUTLINED_FUNCTION_64_9();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v4;
  return result;
}

uint64_t ParameterDefinition.BooleanMetadata.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_20();
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];

  result = OUTLINED_FUNCTION_64_9();
  *v0 = v3;
  v0[1] = v2;
  v0[2] = v5;
  v0[3] = v4;
  return result;
}

uint64_t sub_1C8F05158@<X0>(uint64_t *a1@<X8>)
{
  result = ParameterDefinition.ParameterFlags.protobuf(useCase:)();
  *a1 = result;
  return result;
}

void ParameterRelationshipDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v29 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312938, &unk_1C9074EC0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v11 = OUTLINED_FUNCTION_13_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v14);
  v15 = v2[1];
  v26 = *v2;
  v16 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {

    sub_1C8D16D78(v9, &qword_1EC312938, &unk_1C9074EC0);
    v17 = OUTLINED_FUNCTION_288();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    sub_1C8D4F674(&qword_1EC319B28, &qword_1EC319B20, &qword_1C90A5C60);
    OUTLINED_FUNCTION_6_3();
    *v20 = v10;
    v21 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v19);
    (*(v22 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_25_20();
  }

  else
  {
    sub_1C8F07010();
    sub_1C8F06FB8();

    ParameterRelationshipDefinition.Relation.init(protobuf:)();
    OUTLINED_FUNCTION_25_20();
    OUTLINED_FUNCTION_0_67();
    sub_1C8F07110();
    if (!v0)
    {
      v23 = v27;
      v24 = v28;
      *v29 = v26;
      *(v29 + 8) = v15;
      *(v29 + 16) = v23;
      *(v29 + 24) = v24;
      goto LABEL_5;
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_198();
}

void ParameterRelationshipDefinition.Relation.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v77 = v3;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v5 = OUTLINED_FUNCTION_9(DoesNotContain);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v76 = (v9 - v8);
  v10 = OUTLINED_FUNCTION_111();
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(v10);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v75 = (v16 - v15);
  v17 = OUTLINED_FUNCTION_111();
  v18 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(v17);
  v19 = OUTLINED_FUNCTION_9(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v74 = (v23 - v22);
  v24 = OUTLINED_FUNCTION_111();
  v25 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(v24);
  v26 = OUTLINED_FUNCTION_9(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v73 = (v30 - v29);
  v31 = OUTLINED_FUNCTION_111();
  v32 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(v31);
  v33 = OUTLINED_FUNCTION_9(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  v36 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v37 = OUTLINED_FUNCTION_9(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  v42 = (v41 - v40);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312928, &qword_1C9068D08);
  OUTLINED_FUNCTION_9(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  v47 = OUTLINED_FUNCTION_35();
  v48 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(v47);
  v49 = OUTLINED_FUNCTION_13_1(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v2, 1, v48) == 1)
  {
    sub_1C8D16D78(v2, &qword_1EC312928, &qword_1C9068D08);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319B30, &qword_1C90A5C68);
    OUTLINED_FUNCTION_56_10();
    sub_1C8D4F674(v54, v55, v56);
    OUTLINED_FUNCTION_213();
    *v57 = v48;
    v58 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v53);
    (*(v59 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_0_67();
LABEL_18:
    sub_1C8F07110();
  }

  else
  {
    OUTLINED_FUNCTION_4_42();
    sub_1C8F07010();
    sub_1C8F06FB8();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_45_0();
        sub_1C8F07010();
        v68 = *v0;
        sub_1C8DDC4F8();
        sub_1C8D4F068();
        OUTLINED_FUNCTION_204_0();
        v61 = sub_1C906436C();
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        if (!v1)
        {
          v62 = 32;
          goto LABEL_20;
        }

        break;
      case 2u:
        OUTLINED_FUNCTION_45_0();
        sub_1C8F07010();
        v65 = *v73;
        sub_1C8DDC4F8();
        sub_1C8D4F068();
        OUTLINED_FUNCTION_204_0();
        OUTLINED_FUNCTION_30_22();
        v61 = sub_1C906436C();
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        if (v1)
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v71 = *(v73 + 8);
        OUTLINED_FUNCTION_273();
        sub_1C8F07110();
        v62 = v71 | 0x40;
        goto LABEL_20;
      case 3u:
        OUTLINED_FUNCTION_45_0();
        sub_1C8F07010();
        v66 = *v74;
        sub_1C8DDC4F8();
        sub_1C8D4F068();
        OUTLINED_FUNCTION_204_0();
        OUTLINED_FUNCTION_30_22();
        v67 = sub_1C906436C();
        if (v1)
        {
          goto LABEL_16;
        }

        v61 = v67;
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v72 = *(v74 + 8);
        OUTLINED_FUNCTION_273();
        sub_1C8F07110();
        v62 = v72 | 0x60;
        goto LABEL_20;
      case 4u:
        OUTLINED_FUNCTION_45_0();
        sub_1C8F07010();
        v63 = *v75;
        sub_1C8DDC4F8();
        sub_1C8D4F068();
        OUTLINED_FUNCTION_204_0();
        OUTLINED_FUNCTION_30_22();
        v64 = sub_1C906436C();
        if (v1)
        {
          goto LABEL_16;
        }

        v61 = v64;
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_273();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v62 = 0x80;
        goto LABEL_20;
      case 5u:
        OUTLINED_FUNCTION_45_0();
        sub_1C8F07010();
        v69 = *v76;
        sub_1C8DDC4F8();
        sub_1C8D4F068();
        OUTLINED_FUNCTION_204_0();
        OUTLINED_FUNCTION_30_22();
        v70 = sub_1C906436C();
        if (v1)
        {
LABEL_16:
          OUTLINED_FUNCTION_0_67();
          sub_1C8F07110();
LABEL_17:
          sub_1C8F07110();
          OUTLINED_FUNCTION_2_59();
          goto LABEL_18;
        }

        v61 = v70;
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_273();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v62 = -96;
LABEL_20:
        *v77 = v61;
        *(v77 + 8) = v62;
        break;
      case 6u:
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v61 = 0;
        v62 = -64;
        goto LABEL_20;
      case 7u:
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        v62 = -64;
        v61 = 1;
        goto LABEL_20;
      default:
        OUTLINED_FUNCTION_45_0();
        sub_1C8F07010();
        v60 = *v42;
        sub_1C8DDC4F8();
        sub_1C8D4F068();
        OUTLINED_FUNCTION_204_0();
        OUTLINED_FUNCTION_30_22();
        v61 = sub_1C906436C();
        OUTLINED_FUNCTION_0_67();
        sub_1C8F07110();
        sub_1C8F07110();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
        if (v1)
        {
          break;
        }

        v62 = 0;
        goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_198();
}

void ParameterRelationshipDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312938, &unk_1C9074EC0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_50_1();
  v9 = *v0;
  v8 = v0[1];
  v10 = v0[2];
  v11 = *(v0 + 24);

  sub_1C8D07154(v10, v11);
  ParameterRelationshipDefinition.Relation.protobuf(useCase:)();
  sub_1C8D07168(v10, v11);
  if (v1)
  {
  }

  else
  {
    v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
    OUTLINED_FUNCTION_150();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    v16 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
    v17 = *(v16 + 20);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v12);
    v21 = v3 + *(v16 + 24);
    _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
    *v3 = v9;
    v3[1] = v8;
    sub_1C8D7300C();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

void ParameterRelationshipDefinition.Relation.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v49[1] = v2;
  v3 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v49 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v49 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v49 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v49[0] = v49 - v26;
  v27 = *v0;
  v28 = *(v0 + 8);
  switch(v28 >> 5)
  {
    case 1u:
      v41 = sub_1C8DDC4F8();
      sub_1C8D4F110();
      OUTLINED_FUNCTION_17_27();
      if (!v1)
      {
        v42 = OUTLINED_FUNCTION_258();
        v43 = v21 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(v42) + 20);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v21 = v41;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 2u:
      v35 = sub_1C8DDC4F8();
      sub_1C8D4F110();
      OUTLINED_FUNCTION_17_27();
      if (!v1)
      {
        v36 = OUTLINED_FUNCTION_258();
        v37 = &v18[*(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(v36) + 24)];
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v18 = v35;
        v18[8] = v28 & 1;
        OUTLINED_FUNCTION_288();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 3u:
      v38 = sub_1C8DDC4F8();
      sub_1C8D4F110();
      OUTLINED_FUNCTION_17_27();
      if (!v1)
      {
        v39 = OUTLINED_FUNCTION_258();
        v40 = &v15[*(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(v39) + 24)];
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v15 = v38;
        v15[8] = v28 & 1;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 4u:
      v32 = sub_1C8DDC4F8();
      sub_1C8D4F110();
      OUTLINED_FUNCTION_17_27();
      if (!v1)
      {
        v33 = OUTLINED_FUNCTION_258();
        v34 = v12 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(v33) + 20);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v12 = v32;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 5u:
      v44 = sub_1C8DDC4F8();
      sub_1C8D4F110();
      OUTLINED_FUNCTION_17_27();
      if (!v1)
      {
        v45 = OUTLINED_FUNCTION_258();
        v46 = v9 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(v45) + 20);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v9 = v44;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
        goto LABEL_14;
      }

      break;
    case 6u:
      v47 = v49[0];
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    default:
      sub_1C8DDC4F8();
      sub_1C8D4F110();
      v29 = sub_1C906437C();
      if (!v1)
      {
        v30 = v29;
        v31 = v24 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0) + 20);
        _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
        *v24 = v30;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_42();
LABEL_14:
        v47 = v49[0];
        sub_1C8F07010();
LABEL_16:
        v48 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
        MEMORY[0x1EEE9AC00](v48);
        v49[-2] = v47;
        sub_1C8F073B0(&qword_1EDA63B68, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        sub_1C9063ACC();
        OUTLINED_FUNCTION_2_59();
        sub_1C8F07110();
      }

      break;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8F06198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  sub_1C8D16D78(a1, a3, a4);
  sub_1C8F06FB8();
  a6(0);
  OUTLINED_FUNCTION_150();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void AppDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314800, &unk_1C9074EE8);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_290();
  v9 = v2[1];
  v10 = v2[3];
  v20 = v2[2];
  v21 = *v2;
  v11 = v2[5];
  v12 = v2[7];
  v18 = v2[6];
  v19 = v2[4];
  v13 = v2[9];
  v17 = v2[8];
  v14 = *(type metadata accessor for ToolKitProtoAppDefinition(0) + 44);
  sub_1C8D63FCC();
  sub_1C8F070BC();

  sub_1C906351C();
  if (v0)
  {
    OUTLINED_FUNCTION_24_24();
  }

  else
  {
    v16 = *(v2 + 80);
    v15 = v2[11];

    OUTLINED_FUNCTION_24_24();
    *v4 = v21;
    *(v4 + 8) = v9;
    *(v4 + 16) = v20;
    *(v4 + 24) = v10;
    *(v4 + 32) = v19;
    *(v4 + 40) = v11;
    *(v4 + 48) = v18;
    *(v4 + 56) = v12;
    *(v4 + 64) = v17;
    *(v4 + 72) = v13;
    *(v4 + 80) = v22;
    *(v4 + 88) = v23;
    *(v4 + 96) = v16;
    *(v4 + 104) = v15;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t AppDefinition.Device.protobuf(useCase:)()
{
  v0 = OUTLINED_FUNCTION_49_14();
  type metadata accessor for ToolKitProtoAppDefinition.Device(v0);
  OUTLINED_FUNCTION_19_24();
  sub_1C8F073B0(v1, v2);

  OUTLINED_FUNCTION_30_22();
  sub_1C9063ACC();
}

uint64_t AppDefinition.Device.init(protobuf:)(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319B48, &qword_1C90A5C70);
    OUTLINED_FUNCTION_56_10();
    sub_1C8D4F674(v5, v6, v7);
    OUTLINED_FUNCTION_213();
    *v8 = &type metadata for ToolKitProtoAppDefinition.ToolKitProtoDeviceKind;
    v9 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v4);
    (*(v10 + 104))();
    swift_willThrow();
    return OUTLINED_FUNCTION_23_24();
  }

  else
  {
    OUTLINED_FUNCTION_62_11();
    result = OUTLINED_FUNCTION_23_24();
    if (v3)
    {
      v12 = v2;
    }

    else
    {
      v12 = 0;
    }

    *v1 = v12;
    v1[1] = v3;
  }

  return result;
}

void ContainerDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[1];
  v10 = v2[3];
  v19 = v2[2];
  v20 = *v2;
  v11 = v2[7];
  v12 = v2[9];
  v17 = v2[6];
  v18 = v2[8];
  v13 = *(type metadata accessor for ToolKitProtoContainerDefinition(0) + 44);
  sub_1C8D63FCC();
  sub_1C8D7441C();

  sub_1C906351C();
  if (v0)
  {
    OUTLINED_FUNCTION_22_28();
  }

  else
  {
    v16 = *(v2 + 33);
    v14 = 0x4030201uLL >> (8 * *(v2 + 32));
    v15 = v2[5];

    OUTLINED_FUNCTION_22_28();
    *v4 = v20;
    *(v4 + 8) = v9;
    *(v4 + 16) = v15;
    *(v4 + 24) = v19;
    *(v4 + 32) = v10;
    *(v4 + 40) = v17;
    *(v4 + 48) = v11;
    *(v4 + 56) = v14;
    *(v4 + 64) = v18;
    *(v4 + 72) = v12;
    *(v4 + 80) = v21;
    *(v4 + 88) = v22;
    *(v4 + 96) = v16;
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t ContainerDefinition.Device.init(protobuf:)(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319B58, &qword_1C90A5C78);
    OUTLINED_FUNCTION_56_10();
    sub_1C8D4F674(v5, v6, v7);
    OUTLINED_FUNCTION_213();
    *v8 = &type metadata for ToolKitProtoContainerDefinition.ToolKitProtoDeviceKind;
    v9 = *MEMORY[0x1E69E08B0];
    OUTLINED_FUNCTION_10_0(v4);
    (*(v10 + 104))();
    swift_willThrow();
    return OUTLINED_FUNCTION_26_17();
  }

  else
  {
    OUTLINED_FUNCTION_62_11();
    result = OUTLINED_FUNCTION_26_17();
    if (v3)
    {
      v12 = v2;
    }

    else
    {
      v12 = 0;
    }

    *v1 = v12;
    v1[1] = v3;
  }

  return result;
}

uint64_t sub_1C8F06950(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = *a1;
  v9 = a1[1];

  result = a4(v8, v9);
  *a1 = a2;
  a1[1] = a3;
  return result;
}

unint64_t sub_1C8F069D0()
{
  result = qword_1EC319AC0;
  if (!qword_1EC319AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AC0);
  }

  return result;
}

unint64_t sub_1C8F06A24()
{
  result = qword_1EC319AC8;
  if (!qword_1EC319AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AC8);
  }

  return result;
}

unint64_t sub_1C8F06A78()
{
  result = qword_1EC319AD0;
  if (!qword_1EC319AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AD0);
  }

  return result;
}

unint64_t sub_1C8F06ACC()
{
  result = qword_1EC319AD8;
  if (!qword_1EC319AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AD8);
  }

  return result;
}

unint64_t sub_1C8F06B20()
{
  result = qword_1EDA694E0;
  if (!qword_1EDA694E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694E0);
  }

  return result;
}

unint64_t sub_1C8F06C40()
{
  result = qword_1EC319AE0;
  if (!qword_1EC319AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AE0);
  }

  return result;
}

unint64_t sub_1C8F06C94()
{
  result = qword_1EC319AE8;
  if (!qword_1EC319AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AE8);
  }

  return result;
}

unint64_t sub_1C8F06CE8()
{
  result = qword_1EC319AF8;
  if (!qword_1EC319AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319AF8);
  }

  return result;
}

unint64_t sub_1C8F06D3C()
{
  result = qword_1EC319B00;
  if (!qword_1EC319B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B00);
  }

  return result;
}

unint64_t sub_1C8F06D90()
{
  result = qword_1EC319B08;
  if (!qword_1EC319B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B08);
  }

  return result;
}

unint64_t sub_1C8F06DE4()
{
  result = qword_1EDA60988;
  if (!qword_1EDA60988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60988);
  }

  return result;
}

unint64_t sub_1C8F06E38()
{
  result = qword_1EDA62438;
  if (!qword_1EDA62438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62438);
  }

  return result;
}

unint64_t sub_1C8F06E8C()
{
  result = qword_1EDA69318;
  if (!qword_1EDA69318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69318);
  }

  return result;
}

unint64_t sub_1C8F06EE0()
{
  result = qword_1EDA609A0;
  if (!qword_1EDA609A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA609A0);
  }

  return result;
}

uint64_t sub_1C8F06FB8()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

uint64_t sub_1C8F07010()
{
  OUTLINED_FUNCTION_223();
  v2 = v1(0);
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return v0;
}

unint64_t sub_1C8F070BC()
{
  result = qword_1EC319B40;
  if (!qword_1EC319B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B40);
  }

  return result;
}

uint64_t sub_1C8F07110()
{
  v1 = OUTLINED_FUNCTION_258();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1C8F07168()
{
  result = qword_1EC319B68;
  if (!qword_1EC319B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B68);
  }

  return result;
}

unint64_t sub_1C8F071C0()
{
  result = qword_1EC319B70;
  if (!qword_1EC319B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B70);
  }

  return result;
}

unint64_t sub_1C8F07218()
{
  result = qword_1EC319B78;
  if (!qword_1EC319B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B78);
  }

  return result;
}

unint64_t sub_1C8F07270()
{
  result = qword_1EC319B80;
  if (!qword_1EC319B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B80);
  }

  return result;
}

unint64_t sub_1C8F07314()
{
  result = qword_1EC319B90;
  if (!qword_1EC319B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B90);
  }

  return result;
}

uint64_t sub_1C8F073B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8F07400()
{
  result = qword_1EC319B98;
  if (!qword_1EC319B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319B98);
  }

  return result;
}

unint64_t sub_1C8F07458()
{
  result = qword_1EC319BA0;
  if (!qword_1EC319BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BA0);
  }

  return result;
}

unint64_t sub_1C8F074B0()
{
  result = qword_1EC319BA8;
  if (!qword_1EC319BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BA8);
  }

  return result;
}

unint64_t sub_1C8F0750C()
{
  result = qword_1EC319BB0;
  if (!qword_1EC319BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BB0);
  }

  return result;
}

unint64_t sub_1C8F07564()
{
  result = qword_1EC319BB8;
  if (!qword_1EC319BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BB8);
  }

  return result;
}

unint64_t sub_1C8F075BC()
{
  result = qword_1EC319BC0;
  if (!qword_1EC319BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BC0);
  }

  return result;
}

unint64_t sub_1C8F07614()
{
  result = qword_1EC319BC8;
  if (!qword_1EC319BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BC8);
  }

  return result;
}

unint64_t sub_1C8F07670()
{
  result = qword_1EC319BD0;
  if (!qword_1EC319BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BD0);
  }

  return result;
}

unint64_t sub_1C8F076C8()
{
  result = qword_1EC319BD8;
  if (!qword_1EC319BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BD8);
  }

  return result;
}

unint64_t sub_1C8F07720()
{
  result = qword_1EC319BE0;
  if (!qword_1EC319BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_24()
{

  return sub_1C8F07110();
}

uint64_t OUTLINED_FUNCTION_61_13()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  return 0;
}

uint64_t sub_1C8F07894(uint64_t a1)
{
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 8))(a1, valid);
  return a1;
}

unint64_t sub_1C8F078F4()
{
  result = qword_1EDA60C00;
  if (!qword_1EDA60C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C00);
  }

  return result;
}

void *AssistantTypeSchemaDefinition.init(protobuf:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &__src[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &__src[-v10 - 8];
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &__src[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &__src[-v17 - 8];
  v19 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v20 = OUTLINED_FUNCTION_13_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &__src[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C8F07CB0(a1, v24, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C8F07C50(v24, v11, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_1C8F07CB0(v11, v8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    AssistantEnumerationSchemaDefinition.init(protobuf:)(v8, __src);
    if (v2)
    {
      OUTLINED_FUNCTION_0_68();
      v25 = OUTLINED_FUNCTION_1_63();
      return sub_1C8F07D10(v25, v26);
    }

    OUTLINED_FUNCTION_0_68();
    v28 = OUTLINED_FUNCTION_1_63();
    sub_1C8F07D10(v28, v29);
    memcpy(__dst, __src, sizeof(__dst));
    v30 = 1;
    v35 = 1;
  }

  else
  {
    sub_1C8F07C50(v24, v18, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_1C8F07CB0(v18, v15, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    AssistantEntitySchemaDefinition.init(protobuf:)(v15, __src);
    if (v2)
    {
      OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_2_60();
      v25 = v18;
      return sub_1C8F07D10(v25, v26);
    }

    OUTLINED_FUNCTION_0_68();
    OUTLINED_FUNCTION_2_60();
    sub_1C8F07D10(v18, v31);
    memcpy(__dst, __src, sizeof(__dst));
    v30 = 0;
    v35 = 0;
  }

  result = memcpy(a2, __dst, 0x68uLL);
  a2[104] = v30;
  return result;
}

uint64_t sub_1C8F07C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8F07CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8F07D10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t AssistantTypeSchemaDefinition.protobuf(useCase:)()
{
  if (v0[104])
  {
    memcpy(__dst, v0, sizeof(__dst));
    v2 = OUTLINED_FUNCTION_4_43();
    result = AssistantEnumerationSchemaDefinition.protobuf(useCase:)(v2, v3);
    if (v1)
    {
      return result;
    }
  }

  else
  {
    memcpy(__dst, v0, sizeof(__dst));
    v5 = OUTLINED_FUNCTION_4_43();
    result = AssistantEntitySchemaDefinition.protobuf(useCase:)(v5, v6);
    if (v1)
    {
      return result;
    }
  }

  type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1C8F07E10()
{
  result = qword_1EC319BE8;
  if (!qword_1EC319BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319BE8);
  }

  return result;
}

void sub_1C8F07E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v43;
    v6 = sub_1C8E544E8(v2);
    v7 = 0;
    v8 = v2 + 64;
    v27 = v4;
    v28 = v1;
    v26 = v2 + 72;
    v29 = v2 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_23;
      }

      v31 = v7;
      v32 = v4;
      v30 = v5;
      v10 = *(v2 + 48) + 56 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 48);
      v14 = v2;
      v15 = (*(v2 + 56) + 112 * v6);
      v33 = *(v10 + 32);
      v34 = *(v10 + 16);
      memcpy(__dst, v15, 0x69uLL);
      memcpy(__src, v15, sizeof(__src));
      v38[0] = v12;
      v38[1] = v11;
      v39 = v34;
      v40 = v33;
      v41 = v13;
      memcpy(v42, __src, sizeof(v42));

      sub_1C8ED3E6C(__dst, v35);

      sub_1C8D16D78(v38, &qword_1EC319C20, &unk_1C90A65F0);
      v43 = v3;
      v16 = *(v3 + 16);
      if (v16 >= *(v3 + 24) >> 1)
      {
        sub_1C8CA6480();
        v3 = v43;
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      v18 = 1 << *(v14 + 32);
      if (v6 >= v18)
      {
        goto LABEL_24;
      }

      v2 = v14;
      v8 = v29;
      v19 = *(v29 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v2 + 36) != v32)
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1C8CAF698(v6, v32, v30 & 1);
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_1C8CAF698(v6, v32, v30 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v31 + 1;
      v6 = v18;
      v4 = v27;
      if (v31 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1C8F0815C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v43;
    v6 = sub_1C8E544E8(v2);
    v7 = 0;
    v8 = v2 + 64;
    v27 = v4;
    v28 = v1;
    v26 = v2 + 72;
    v29 = v2 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_23;
      }

      v31 = v7;
      v32 = v4;
      v30 = v5;
      v10 = *(v2 + 48) + 56 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 48);
      v14 = v2;
      v15 = (*(v2 + 56) + 112 * v6);
      v33 = *(v10 + 32);
      v34 = *(v10 + 16);
      memcpy(__dst, v15, sizeof(__dst));
      memcpy(__src, v15, sizeof(__src));
      v38[0] = v12;
      v38[1] = v11;
      v39 = v34;
      v40 = v33;
      v41 = v13;
      memcpy(v42, __src, sizeof(v42));

      sub_1C8CBFC60(__dst, v35);

      sub_1C8D16D78(v38, &qword_1EC319C10, &qword_1C90A65E0);
      v43 = v3;
      v16 = *(v3 + 16);
      if (v16 >= *(v3 + 24) >> 1)
      {
        sub_1C8CA6480();
        v3 = v43;
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      v18 = 1 << *(v14 + 32);
      if (v6 >= v18)
      {
        goto LABEL_24;
      }

      v2 = v14;
      v8 = v29;
      v19 = *(v29 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v2 + 36) != v32)
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1C8CAF698(v6, v32, v30 & 1);
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_1C8CAF698(v6, v32, v30 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v31 + 1;
      v6 = v18;
      v4 = v27;
      if (v31 + 1 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t static AssistantSchemaProvider.shared.getter()
{
  if (qword_1EDA631E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C8F08480()
{
  v0 = sub_1C9063D3C();
  __swift_allocate_value_buffer(v0, qword_1EC319BF0);
  __swift_project_value_buffer(v0, qword_1EC319BF0);
  return sub_1C9063D2C();
}

uint64_t sub_1C8F0852C()
{
  result = sub_1C8F0854C();
  qword_1EDA631F0 = result;
  return result;
}

uint64_t sub_1C8F0854C()
{
  v0 = type metadata accessor for ToolDatabaseLocaleOptions();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssistantSchemaProvider();
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  v4[*(v1 + 28)] = 0;
  v5 = static AssistantSchemaProvider.load(with:)(v4);
  sub_1C8CC0B58(v4);
  return v5;
}

uint64_t static AssistantSchemaProvider.load(with:)(uint64_t a1)
{
  v4 = type metadata accessor for ToolDatabaseLocaleOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_7_40();
  result = sub_1C906311C();
  if (!v1)
  {
    v7 = result;
    type metadata accessor for AssistantSchemaProvider();
    sub_1C8F0885C(a1, v2);
    return sub_1C8CBF50C(v7, v2);
  }

  return result;
}

uint64_t sub_1C8F0885C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDatabaseLocaleOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AssistantSchemaProvider.__allocating_init(tools:types:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AssistantSchemaProvider.init(tools:types:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1C8F0890C()
{
  sub_1C8F07E94(*(v0 + 24));

  return sub_1C8D2BCE0(v1);
}

uint64_t sub_1C8F0894C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_35(a1, a2, a3);
  if (!v5)
  {
    v9 = *(v4 + 24);

    if (!v3)
    {
      return v9;
    }

    goto LABEL_3;
  }

  v7 = *(v6 + 8);
  v8 = *(v4 + 24);
  sub_1C8E05190(v5);
  v9 = sub_1C8F08F00(v8, v5, v7, sub_1C8F092E0);
  if (v3)
  {
LABEL_3:

    v10 = OUTLINED_FUNCTION_14_32();

    return v10;
  }

  return v9;
}

uint64_t sub_1C8F08A20()
{
  sub_1C8F0815C(*(v0 + 16));

  return sub_1C8D2BCE0(v1);
}

uint64_t sub_1C8F08A60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_35(a1, a2, a3);
  if (!v5)
  {
    v9 = *(v4 + 16);

    if (!v3)
    {
      return v9;
    }

    goto LABEL_3;
  }

  v7 = *(v6 + 8);
  v8 = *(v4 + 16);
  sub_1C8E05190(v5);
  v9 = sub_1C8F08F00(v8, v5, v7, sub_1C8F096BC);
  if (v3)
  {
LABEL_3:

    v10 = OUTLINED_FUNCTION_14_32();

    return v10;
  }

  return v9;
}

uint64_t AssistantSchemaProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t AssistantSchemaProvider.__deallocating_deinit()
{
  AssistantSchemaProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1C8F08B90(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  sub_1C9064D7C();
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v9);
  MEMORY[0x1CCA82830](v10);
  MEMORY[0x1CCA82830](v11);
  sub_1C9063FBC();
  sub_1C9064DBC();
  v14 = -1 << *(a3 + 32);
  v15 = sub_1C90646FC();
  *(a3 + 64 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
  v16 = *(a3 + 48) + 56 * v15;
  v17 = *(a1 + 1);
  *v16 = *a1;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a1 + 2);
  *(v16 + 48) = a1[6];
  result = memcpy((*(a3 + 56) + 112 * v15), a2, 0x69uLL);
  ++*(a3 + 16);
  return result;
}

void *sub_1C8F08CC4(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  sub_1C9064D7C();
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  sub_1C9063FBC();
  MEMORY[0x1CCA82830](v9);
  MEMORY[0x1CCA82830](v10);
  MEMORY[0x1CCA82830](v11);
  sub_1C9063FBC();
  sub_1C9064DBC();
  v14 = -1 << *(a3 + 32);
  v15 = sub_1C90646FC();
  *(a3 + 64 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
  v16 = *(a3 + 48) + 56 * v15;
  v17 = *(a1 + 1);
  *v16 = *a1;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a1 + 2);
  *(v16 + 48) = a1[6];
  result = memcpy((*(a3 + 56) + 112 * v15), a2, 0x70uLL);
  ++*(a3 + 16);
  return result;
}

void sub_1C8F08DF8(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    if (v5)
    {
      bzero(v4, 8 * v3);
    }

    OUTLINED_FUNCTION_11_31();
    swift_retain_n();
    v6 = OUTLINED_FUNCTION_3_49();
    v2(v6);
    OUTLINED_FUNCTION_11_31();
  }
}

void sub_1C8F08E7C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    if (v5)
    {
      bzero(v4, 8 * v3);
    }

    OUTLINED_FUNCTION_11_31();
    swift_bridgeObjectRetain_n();
    v6 = OUTLINED_FUNCTION_3_49();
    sub_1C8F09558(v6, v7, v8, v9, v10, v2);
    OUTLINED_FUNCTION_11_31();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1C8F08F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32) & 0x3F;
  OUTLINED_FUNCTION_12_30();
  v7 = swift_retain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();

      OUTLINED_FUNCTION_9_32();
      sub_1C8F08DF8(v12, v13);
      a2 = v14;
      MEMORY[0x1CCA833A0](v11, -1, -1);
      OUTLINED_FUNCTION_4_44();

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_39(v15);

  OUTLINED_FUNCTION_9_32();
  v8 = a4();
  if (v6)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v8;
  }

  OUTLINED_FUNCTION_4_44();

LABEL_6:

  v9 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1C8F090A0(uint64_t a1)
{
  v2 = v1;
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32) & 0x3F;
  OUTLINED_FUNCTION_12_30();
  v4 = swift_bridgeObjectRetain_n();
  if (v3 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v15 = OUTLINED_FUNCTION_1_64();
      sub_1C8F08E7C(v15, v16);
      v2 = v17;
      MEMORY[0x1CCA833A0](v14, -1, -1);
      OUTLINED_FUNCTION_4_44();
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_39(v18);

  v5 = OUTLINED_FUNCTION_1_64();
  v11 = sub_1C8F09558(v5, v6, v7, v8, v9, v10);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v11;
  }

  OUTLINED_FUNCTION_4_44();
  swift_bridgeObjectRelease_n();
LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C8F092E0(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(__int128 *))
{
  v26 = result;
  v27 = 0;
  v4 = 0;
  v7 = a3[8];
  v5 = a3 + 8;
  v6 = v7;
  v8 = 1 << *(v5 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v28 = (v8 + 63) >> 6;
  v29 = v5;
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v43 = (v10 - 1) & v10;
LABEL_11:
    v14 = v11 | (v4 << 6);
    v15 = a3[6] + 56 * v14;
    v16 = *(v15 + 32);
    v17 = *(v15 + 48);
    v42 = *(v15 + 8);
    v30 = v14;
    v18 = a3[7] + 112 * v14;
    v47 = *v18;
    v44 = *(v18 + 8);
    v41 = *(v18 + 16);
    v37 = *(v18 + 32);
    v38 = *(v18 + 24);
    v40 = *(v18 + 40);
    v36 = *(v18 + 48);
    v19 = *(v18 + 64);
    v39 = *(v18 + 56);
    v20 = *(v18 + 72);
    v21 = *(v18 + 80);
    v34 = *(v18 + 96);
    v35 = *(v18 + 88);
    v33 = *(v18 + 104);
    v45 = *(v15 + 16);
    v46 = v16;

    sub_1C8F09C64();
    v22 = a4(&v45);
    sub_1C8F09CDC();

    v10 = v43;
    if (v22)
    {
      *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_15:
        v24 = sub_1C8F09908(v26, a2, v27, a3);

        return v24;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v28)
    {
      goto LABEL_15;
    }

    v13 = v29[v4];
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v43 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F09558(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = result;
  v9 = 0;
  v10 = 0;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = (*(a3 + 48) + 56 * v19);
    result = *v20;
    if (*v20 != a4 || v20[1] != a5)
    {
      result = sub_1C9064C2C();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v26 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
LABEL_19:
      v23 = a6(v26, a2, v9, a3);

      return v23;
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_19;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F096BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v25 = result;
  v26 = 0;
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
    v36 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48) + 56 * v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 32);
    v17 = *(v14 + 48);
    v27 = v13;
    v18 = (*(a3 + 56) + 112 * v13);
    v19 = v18[6];
    v33 = v18[1];
    v32 = v18[8];
    v20 = v18[11];
    v30 = v18[10];
    v21 = v18[13];
    v31 = v18[12];
    v34 = *(v14 + 16);
    v35 = v16;

    LOBYTE(v19) = a4(&v34);

    v8 = v36;
    if (v19)
    {
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_15:
        v23 = sub_1C8F09A88(v25, a2, v26, a3);

        return v23;
      }
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
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F09908(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C18, &qword_1C90A65E8);
  result = sub_1C906495C();
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
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(v4 + 56);
    v17 = *(v4 + 48) + 56 * v15;
    v19 = *(v17 + 16);
    v18 = *(v17 + 32);
    v20 = *v17;
    v24 = *(v17 + 48);
    v23[1] = v19;
    v23[2] = v18;
    v23[0] = v20;
    memcpy(__dst, (v16 + 112 * v15), 0x69uLL);
    sub_1C8F09C08(v23, v22);
    sub_1C8ED3E6C(__dst, v22);
    result = sub_1C8F08B90(v23, __dst, v9);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C8F09A88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319C08, &qword_1C90C6600);
  result = sub_1C906495C();
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
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(v4 + 56);
    v17 = *(v4 + 48) + 56 * v15;
    v19 = *(v17 + 16);
    v18 = *(v17 + 32);
    v20 = *v17;
    v24 = *(v17 + 48);
    v23[1] = v19;
    v23[2] = v18;
    v23[0] = v20;
    memcpy(__dst, (v16 + 112 * v15), sizeof(__dst));
    sub_1C8F09C08(v23, v22);
    sub_1C8CBFC60(__dst, v22);
    result = sub_1C8F08CC4(v23, __dst, v9);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C8F09C64()
{
}

uint64_t sub_1C8F09CDC()
{
}

unint64_t sub_1C8F09DA8()
{
  result = qword_1EC319C38;
  if (!qword_1EC319C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C38);
  }

  return result;
}

uint64_t sub_1C8F09E0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C8F09E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8F09EA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x644965707974 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8F09FB0(char a1)
{
  if (!a1)
  {
    return 0x64496C6F6F74;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x644965707974;
}

uint64_t sub_1C8F09FF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CC8, &qword_1C90A6B38);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F0BFFC();
  sub_1C9064E1C();
  v14 = *v3;
  v20[15] = 0;
  sub_1C9064B9C();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    v20[14] = 1;
    sub_1C9064B2C();
    v17 = v3[3];
    v18 = v3[4];
    v20[13] = 2;
    sub_1C9064B2C();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1C8F0A174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CB8, &qword_1C90A6B30);
  OUTLINED_FUNCTION_11(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F0BFFC();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  OUTLINED_FUNCTION_3_3();
  v14 = sub_1C9064A7C();
  v27 = 1;
  OUTLINED_FUNCTION_3_3();
  v15 = sub_1C9064A0C();
  v17 = v16;
  v25 = v15;
  v26 = 2;
  OUTLINED_FUNCTION_3_3();
  v18 = sub_1C9064A0C();
  v19 = v12;
  v21 = v20;
  (*(v7 + 8))(v19, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v25;
  *a2 = v14;
  a2[1] = v23;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v21;
  return result;
}

uint64_t sub_1C8F0A36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F09EA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F0A394(uint64_t a1)
{
  v2 = sub_1C8F0BFFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F0A3D0(uint64_t a1)
{
  v2 = sub_1C8F0BFFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C8F0A40C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C8F0A174(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1C8F0A46C@<D0>(uint64_t a1@<X8>)
{
  sub_1C8F0A4B0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C8F0A4B0@<X0>(void *a1@<X8>)
{
  if (qword_1EC3115D0 != -1)
  {
    OUTLINED_FUNCTION_15_26();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, &unk_1EC390DB8);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v4 = v3;

  if (qword_1EC3115D8 != -1)
  {
    OUTLINED_FUNCTION_13_26();
  }

  OUTLINED_FUNCTION_10(v2, &unk_1EC390DD0);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v6 = v5;
  v8 = v7;

  if (qword_1EC3115E0 != -1)
  {
    OUTLINED_FUNCTION_11_32();
  }

  OUTLINED_FUNCTION_10(v2, &unk_1EC390DE8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  v10 = v9;
  v12 = v11;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  return result;
}

uint64_t sub_1C8F0A628()
{
  sub_1C8F0BE50();

  return sub_1C9062B4C();
}

uint64_t sub_1C8F0A720()
{
  if (qword_1EC3115D0 != -1)
  {
    OUTLINED_FUNCTION_15_26();
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, &unk_1EC390DB8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  v3 = *v0;
  sub_1C9062BFC();
  if (qword_1EC3115D8 != -1)
  {
    OUTLINED_FUNCTION_13_26();
  }

  OUTLINED_FUNCTION_10(v1, &unk_1EC390DD0);
  sub_1C9062E5C();
  v4 = v0[1];
  v6 = v0[2];

  sub_1C9062BFC();
  if (qword_1EC3115E0 != -1)
  {
    OUTLINED_FUNCTION_11_32();
  }

  OUTLINED_FUNCTION_10(v1, &unk_1EC390DE8);
  sub_1C9062E5C();
  v5 = v0[3];
  v7 = v0[4];

  return sub_1C9062BFC();
}

uint64_t sub_1C8F0A8A4()
{
  v0 = qword_1EC319C40;

  return v0;
}

uint64_t sub_1C8F0A954()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CF0, &qword_1C90A6B78);
  __swift_allocate_value_buffer(v4, qword_1EDA6E690);
  __swift_project_value_buffer(v4, qword_1EDA6E690);
  v5 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  sub_1C8F0BCF0();
  sub_1C8D24D68();
  sub_1C906254C();
  return sub_1C8DD1ED0(v3);
}

uint64_t sub_1C8F0AA64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7955819 && a2 == 0xE300000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

            if (v11)
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

uint64_t sub_1C8F0AC58(char a1)
{
  result = 0x74736E4965707974;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x6564724F74726F73;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0x7367616C66;
      break;
    case 5:
      result = 0x64496C6F6F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8F0AD14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CD8, &qword_1C90A6B58);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[3];
  v24 = v1[2];
  v25 = v11;
  v14 = v1[5];
  v22 = v1[4];
  v23 = v13;
  v20[1] = v1[6];
  v21 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1C8F0C86C();

  sub_1C9064E1C();
  v27 = v12;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8F0C934(&qword_1EC3131E8);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  if (v16)
  {
  }

  else
  {
    v17 = v22;
    v18 = v21;

    LOBYTE(v27) = 1;
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    LOBYTE(v27) = 2;
    OUTLINED_FUNCTION_205();
    sub_1C9064B6C();
    v27 = v17;
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
    sub_1C8F0C8C0(&qword_1EC313338);
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    v27 = v18;
    v26 = 4;
    sub_1C8D26A34();
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    LOBYTE(v27) = 5;
    OUTLINED_FUNCTION_205();
    sub_1C9064B9C();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t sub_1C8F0AFC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CD0, &unk_1C90A6B40);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8F0C86C();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8F0C934(&qword_1EC3131C8);
  OUTLINED_FUNCTION_20_25();
  OUTLINED_FUNCTION_3_50(1);
  v10 = sub_1C9064A0C();
  v12 = v11;
  v18 = v10;
  OUTLINED_FUNCTION_3_50(2);
  v17 = sub_1C9064A4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
  sub_1C8F0C8C0(&qword_1EC313328);
  OUTLINED_FUNCTION_20_25();
  sub_1C8D26910();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_3_50(5);
  v13 = sub_1C9064A7C();
  v14 = OUTLINED_FUNCTION_92();
  v15(v14);
  *a2 = v19;
  a2[1] = v18;
  a2[2] = v12;
  a2[3] = v17;
  a2[4] = v19;
  a2[5] = v19;
  a2[6] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8F0B310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8F0AA64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8F0B338(uint64_t a1)
{
  v2 = sub_1C8F0C86C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8F0B374(uint64_t a1)
{
  v2 = sub_1C8F0C86C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8F0B3E4@<X0>(void *a1@<X8>)
{
  if (qword_1EDA626C0 != -1)
  {
    OUTLINED_FUNCTION_14_33();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, &unk_1EDA6E750);
  sub_1C9062E5C();
  sub_1C8D277DC();

  *a1 = v16;
  if (qword_1EDA626A8 != -1)
  {
    OUTLINED_FUNCTION_12_31();
  }

  OUTLINED_FUNCTION_10(v2, &unk_1EDA6E720);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B294();
  v4 = v3;
  v6 = v5;

  a1[1] = v4;
  a1[2] = v6;
  if (qword_1EDA62690 != -1)
  {
    OUTLINED_FUNCTION_10_36();
  }

  OUTLINED_FUNCTION_10(v2, &unk_1EDA6E6D8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  v8 = v7;

  a1[3] = v8;
  if (qword_1EDA626B8 != -1)
  {
    OUTLINED_FUNCTION_9_33();
  }

  OUTLINED_FUNCTION_10(v2, &unk_1EDA6E738);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8D279DC();
  v10 = v9;

  a1[4] = v10;
  if (qword_1EDA626A0 != -1)
  {
    OUTLINED_FUNCTION_8_40();
  }

  OUTLINED_FUNCTION_10(v2, &unk_1EDA6E708);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_48_0();
  sub_1C8E2B088();
  v12 = v11;

  a1[5] = v12;
  if (qword_1EDA62698 != -1)
  {
    OUTLINED_FUNCTION_7_41();
  }

  OUTLINED_FUNCTION_10(v2, &unk_1EDA6E6F0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v14 = v13;

  a1[6] = v14;
  return result;
}

uint64_t sub_1C8F0B658()
{
  sub_1C8F0BB98();

  return sub_1C9062B4C();
}

uint64_t sub_1C8F0B750()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  v8 = v0[3];
  v9 = v0[5];
  v10 = v0[6];
  v5 = qword_1EDA626C0;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_14_33();
  }

  v6 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v6, &unk_1EDA6E750);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C8D28184(&qword_1EDA69128, &qword_1EC3131C0, &unk_1C906B4E0);
  sub_1C9062BFC();
  if (qword_1EDA626A8 != -1)
  {
    OUTLINED_FUNCTION_12_31();
  }

  OUTLINED_FUNCTION_10(v6, &unk_1EDA6E720);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_6_38();
  if (qword_1EDA62690 != -1)
  {
    OUTLINED_FUNCTION_10_36();
  }

  OUTLINED_FUNCTION_10(v6, &unk_1EDA6E6D8);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_6_38();
  if (qword_1EDA626B8 != -1)
  {
    OUTLINED_FUNCTION_9_33();
  }

  OUTLINED_FUNCTION_10(v6, &unk_1EDA6E738);
  sub_1C9062E5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313320, &qword_1C90A6B50);
  sub_1C8D28184(&qword_1EDA69138, &qword_1EC313320, &qword_1C90A6B50);
  sub_1C9062BFC();
  if (qword_1EDA626A0 != -1)
  {
    OUTLINED_FUNCTION_8_40();
  }

  OUTLINED_FUNCTION_10(v6, &unk_1EDA6E708);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_6_38();
  if (qword_1EDA62698 != -1)
  {
    OUTLINED_FUNCTION_7_41();
  }

  OUTLINED_FUNCTION_10(v6, &unk_1EDA6E6F0);
  sub_1C9062E5C();
  OUTLINED_FUNCTION_59_1();
  return OUTLINED_FUNCTION_6_38();
}

uint64_t sub_1C8F0BA5C()
{
  v0 = aParameters_7[0];

  return v0;
}

unint64_t sub_1C8F0BA98()
{
  result = qword_1EC319C60;
  if (!qword_1EC319C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C60);
  }

  return result;
}

unint64_t sub_1C8F0BB44()
{
  result = qword_1EC319C68;
  if (!qword_1EC319C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C68);
  }

  return result;
}

unint64_t sub_1C8F0BB98()
{
  result = qword_1EC319C70;
  if (!qword_1EC319C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C70);
  }

  return result;
}

unint64_t sub_1C8F0BBEC()
{
  result = qword_1EDA62678;
  if (!qword_1EDA62678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62678);
  }

  return result;
}

unint64_t sub_1C8F0BC40()
{
  result = qword_1EC319C78;
  if (!qword_1EC319C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C78);
  }

  return result;
}

unint64_t sub_1C8F0BC98()
{
  result = qword_1EC319C80;
  if (!qword_1EC319C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C80);
  }

  return result;
}

unint64_t sub_1C8F0BCF0()
{
  result = qword_1EDA624C0;
  if (!qword_1EDA624C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624C0);
  }

  return result;
}

uint64_t sub_1C8F0BD98(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8F0BDFC()
{
  result = qword_1EC319C88;
  if (!qword_1EC319C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C88);
  }

  return result;
}

unint64_t sub_1C8F0BE50()
{
  result = qword_1EC319C90;
  if (!qword_1EC319C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C90);
  }

  return result;
}

unint64_t sub_1C8F0BEA4()
{
  result = qword_1EC319C98;
  if (!qword_1EC319C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319C98);
  }

  return result;
}

unint64_t sub_1C8F0BEF8()
{
  result = qword_1EC319CA0;
  if (!qword_1EC319CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319CA0);
  }

  return result;
}

unint64_t sub_1C8F0BF50()
{
  result = qword_1EC319CA8;
  if (!qword_1EC319CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319CA8);
  }

  return result;
}

unint64_t sub_1C8F0BFA8()
{
  result = qword_1EC319CB0;
  if (!qword_1EC319CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319CB0);
  }

  return result;
}

unint64_t sub_1C8F0BFFC()
{
  result = qword_1EC319CC0;
  if (!qword_1EC319CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319CC0);
  }

  return result;
}

uint64_t sub_1C8F0C14C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  a4();
  return sub_1C9062E8C();
}

uint64_t sub_1C8F0C1D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CE0, &qword_1C90A6B68);
  __swift_allocate_value_buffer(v6, qword_1EDA6E780);
  v7 = OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_10(v7, v8);
  type metadata accessor for ToolRecord();
  v9 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  sub_1C8D24B4C();
  sub_1C8EB79AC();
  sub_1C906254C();
  return sub_1C8DD1ED0(v5);
}

uint64_t sub_1C8F0C2DC()
{
  v0 = sub_1C9062E6C();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA62480 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1EDA6E630);
  (*(v3 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v0);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  result = (*(v3 + 32))(v9 + v8, v6, v0);
  qword_1EDA6E7B0 = sub_1C8F0C9A8;
  *algn_1EDA6E7B8 = v9;
  return result;
}

uint64_t sub_1C8F0C434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CF0, &qword_1C90A6B78);
  OUTLINED_FUNCTION_11(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CF8, &unk_1C90A6B80);
  OUTLINED_FUNCTION_11(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D00, &unk_1C90A7A50);
  __swift_allocate_value_buffer(v22, qword_1EDA6E768);
  __swift_project_value_buffer(v22, qword_1EDA6E768);
  v23 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v23);
  sub_1C8D24B4C();
  sub_1C8F0BCF0();
  sub_1C906251C();
  sub_1C8DD1ED0(v13);
  if (qword_1EDA624C8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v0, qword_1EDA6E690);
  (*(v2 + 16))(v7, v24, v0);
  sub_1C8D28184(&qword_1EDA62C98, &qword_1EC319CF8, &unk_1C90A6B80);
  sub_1C8D28184(&qword_1EDA62C48, &qword_1EC319CF0, &qword_1C90A6B78);
  sub_1C906252C();
  (*(v2 + 8))(v7, v0);
  return (*(v16 + 8))(v21, v14);
}

uint64_t sub_1C8F0C76C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319CE8, &qword_1C90A6B70);
  __swift_allocate_value_buffer(v6, qword_1EDA6E798);
  v7 = OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_10(v7, v8);
  v9 = sub_1C90623FC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  sub_1C8D24B4C();
  sub_1C8D24988();
  sub_1C906251C();
  return sub_1C8DD1ED0(v5);
}

unint64_t sub_1C8F0C86C()
{
  result = qword_1EDA62710[0];
  if (!qword_1EDA62710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA62710);
  }

  return result;
}

uint64_t sub_1C8F0C8C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC313320, &qword_1C90A6B50);
    sub_1C8D26868();
    sub_1C8D268BC();
    OUTLINED_FUNCTION_209();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8F0C934(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131C0, &unk_1C906B4E0);
    sub_1C8CAC450();
    sub_1C8CA6D90();
    OUTLINED_FUNCTION_209();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C8F0C9A8()
{
  v0 = sub_1C9062E6C();
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 80);

  sub_1C8D2760C();
}

_BYTE *storeEnumTagSinglePayload for ToolParameterRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolParameterTypeRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8F0CBE8()
{
  result = qword_1EC319D08;
  if (!qword_1EC319D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D08);
  }

  return result;
}

unint64_t sub_1C8F0CC40()
{
  result = qword_1EC319D10;
  if (!qword_1EC319D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D10);
  }

  return result;
}

unint64_t sub_1C8F0CC98()
{
  result = qword_1EDA62700;
  if (!qword_1EDA62700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62700);
  }

  return result;
}

unint64_t sub_1C8F0CCF0()
{
  result = qword_1EDA62708;
  if (!qword_1EDA62708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62708);
  }

  return result;
}

unint64_t sub_1C8F0CD48()
{
  result = qword_1EC319D18;
  if (!qword_1EC319D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D18);
  }

  return result;
}

unint64_t sub_1C8F0CDA0()
{
  result = qword_1EC319D20;
  if (!qword_1EC319D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D20);
  }

  return result;
}

uint64_t SampleInvocationDefinition.init(protobuf:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  a2[2] = v4;

  result = sub_1C8F0CE74(a1);
  a2[3] = v6;
  return result;
}

uint64_t sub_1C8F0CE74(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SampleInvocationDefinition.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(0) + 28);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  a1[2] = v4;
  a1[3] = v6;
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t StringSearchPredicate.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1C8F0D0AC(a1, type metadata accessor for ToolKitProtoStringSearchPredicate);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t StringSearchPredicate.protobuf(useCase:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(type metadata accessor for ToolKitProtoStringSearchPredicate(0) + 20);

  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C8F0D0AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C8F0D110()
{
  result = qword_1EC319D28;
  if (!qword_1EC319D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC319D28);
  }

  return result;
}

unint64_t sub_1C8F0D168()
{
  result = qword_1EDA60870;
  if (!qword_1EDA60870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60870);
  }

  return result;
}

uint64_t ToolDisplayMetadata.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolDisplayMetadata.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_94();
}

uint64_t ToolDisplayMetadata.sourceContainer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), 0x61uLL);
  memcpy(a1, (v1 + 80), 0x61uLL);
  return sub_1C8CC1340(__dst, &v4);
}

uint64_t ToolDisplayMetadata.attributionContainer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 184), 0x61uLL);
  memcpy(a1, (v1 + 184), 0x61uLL);
  return sub_1C8D52860(__dst, &v4, &qword_1EC312EF8, &unk_1C90839D0);
}

uint64_t ToolDisplayMetadata.descriptionSummary.getter()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return OUTLINED_FUNCTION_94();
}

uint64_t type metadata accessor for ToolDisplayMetadata()
{
  result = qword_1EDA627C8;
  if (!qword_1EDA627C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static ToolDisplayMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolIcon(0);
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317F90, &qword_1C90A6ED0);
  v16 = OUTLINED_FUNCTION_13_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v21 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v21 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v22 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v22 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C8E5ACB0(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v23 = *(a2 + 40);
  if ((sub_1C8D07714(*(a1 + 40)) & 1) == 0)
  {
    return 0;
  }

  sub_1C8CEB10C(*(a1 + 48), *(a2 + 48));
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C8CEB710(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  memcpy(v58, (a1 + 80), 0x61uLL);
  memcpy(v52, (a1 + 80), 0x61uLL);
  memcpy(v59, (a2 + 80), 0x61uLL);
  memcpy(v57, (a2 + 80), 0x61uLL);
  sub_1C8CC1340(v58, v56);
  sub_1C8CC1340(v59, v56);
  v25 = static ContainerDefinition.== infix(_:_:)(v52);
  memcpy(v60, v57, 0x61uLL);
  sub_1C8CC15FC(v60);
  memcpy(__dst, v52, 0x61uLL);
  sub_1C8CC15FC(__dst);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  memcpy(v56, (a1 + 184), 0x61uLL);
  memcpy(v57, (a2 + 184), 0x61uLL);
  v26 = v56[0];
  v27 = v56[1];
  memcpy(v55, (a1 + 200), sizeof(v55));
  v46 = v57[0];
  v47 = v57[1];
  OUTLINED_FUNCTION_15_27(v54);
  v28 = v27;
  if (v27)
  {
    v29 = v26;
    v52[0] = v26;
    v52[1] = v28;
    v45 = v28;
    OUTLINED_FUNCTION_14_34();
    memcpy(v51, v52, 0x61uLL);
    v30 = v47;
    if (v47)
    {
      OUTLINED_FUNCTION_15_27(&v50[2]);
      v50[0] = v46;
      v50[1] = v30;
      v47 = v29;
      sub_1C8D52860(v56, v49, &qword_1EC312EF8, &unk_1C90839D0);
      sub_1C8D52860(v57, v49, &qword_1EC312EF8, &unk_1C90839D0);
      sub_1C8D52860(v52, v49, &qword_1EC312EF8, &unk_1C90839D0);
      LODWORD(v46) = static ContainerDefinition.== infix(_:_:)(v51);
      memcpy(v48, v50, 0x61uLL);
      sub_1C8CC15FC(v48);
      memcpy(v49, v51, 0x61uLL);
      sub_1C8CC15FC(v49);
      v50[0] = v47;
      v50[1] = v45;
      memcpy(&v50[2], v55, 0x51uLL);
      sub_1C8D16D78(v50, &qword_1EC312EF8, &unk_1C90839D0);
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    v31 = v45;
    memcpy(v50, v52, 0x61uLL);
    OUTLINED_FUNCTION_12_32(v56);
    OUTLINED_FUNCTION_12_32(v57);
    OUTLINED_FUNCTION_12_32(v52);
    sub_1C8CC15FC(v50);
LABEL_25:
    v52[0] = v29;
    v52[1] = v31;
    memcpy(&v52[2], v55, 0x51uLL);
    v52[13] = v46;
    v52[14] = v30;
    memcpy(v53, v54, sizeof(v53));
    v32 = &qword_1EC313988;
    v33 = &qword_1C906F410;
    v34 = v52;
    goto LABEL_26;
  }

  v29 = v26;
  v30 = v47;
  if (v47)
  {
    v31 = 0;
    sub_1C8D52860(v56, v52, &qword_1EC312EF8, &unk_1C90839D0);
    sub_1C8D52860(v57, v52, &qword_1EC312EF8, &unk_1C90839D0);
    goto LABEL_25;
  }

  v52[0] = v29;
  v52[1] = 0;
  OUTLINED_FUNCTION_14_34();
  sub_1C8D52860(v56, v51, &qword_1EC312EF8, &unk_1C90839D0);
  sub_1C8D52860(v57, v51, &qword_1EC312EF8, &unk_1C90839D0);
  sub_1C8D16D78(v52, &qword_1EC312EF8, &unk_1C90839D0);
LABEL_28:
  if ((sub_1C8CF15C4(*(a1 + 288), *(a2 + 288)) & 1) == 0)
  {
    return 0;
  }

  v35 = *(a1 + 304);
  v36 = *(a2 + 304);
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    v37 = *(a1 + 296) == *(a2 + 296) && v35 == v36;
    if (!v37 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = *(type metadata accessor for ToolDisplayMetadata() + 64);
  v40 = *(v15 + 48);
  sub_1C8D52860(a1 + v39, v20, &qword_1EC3144B8, &qword_1C90839E0);
  sub_1C8D52860(a2 + v39, &v20[v40], &qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_14_2(v20);
  if (v21)
  {
    OUTLINED_FUNCTION_14_2(&v20[v40]);
    if (v21)
    {
      sub_1C8D16D78(v20, &qword_1EC3144B8, &qword_1C90839E0);
      return 1;
    }
  }

  else
  {
    sub_1C8D52860(v20, v14, &qword_1EC3144B8, &qword_1C90839E0);
    OUTLINED_FUNCTION_14_2(&v20[v40]);
    if (!v41)
    {
      OUTLINED_FUNCTION_3_51();
      sub_1C8F11F5C(&v20[v40], v10, v42);
      static ToolIcon.== infix(_:_:)();
      v44 = v43;
      sub_1C8F11F04(v10, type metadata accessor for ToolIcon);
      sub_1C8F11F04(v14, type metadata accessor for ToolIcon);
      sub_1C8D16D78(v20, &qword_1EC3144B8, &qword_1C90839E0);
      return (v44 & 1) != 0;
    }

    OUTLINED_FUNCTION_4_46();
  }

  v32 = &qword_1EC317F90;
  v33 = &qword_1C90A6ED0;
  v34 = v20;
LABEL_26:
  sub_1C8D16D78(v34, v32, v33);
  return 0;
}

uint64_t ToolDisplayMetadata.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for ToolIcon(0);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v27 - v12;
  v14 = *v1;
  v15 = v1[1];
  sub_1C9063FBC();
  v16 = v1[2];
  v17 = v1[3];
  sub_1C9063FBC();
  sub_1C8D305AC(a1, *(v1 + 32));
  v18 = v1[5];
  sub_1C8D0771C(a1);
  sub_1C8CC1590(a1, v1[6]);
  sub_1C8D02E34(a1, v1[7]);
  MEMORY[0x1CCA82810](v1[8]);
  MEMORY[0x1CCA82810](v1[9]);
  memcpy(v30, v1 + 10, 0x61uLL);
  ContainerDefinition.hash(into:)(a1);
  v19 = v1[23];
  v20 = v1[24];
  OUTLINED_FUNCTION_15_27(__src);
  if (v20)
  {
    OUTLINED_FUNCTION_15_27(&v27[2]);
    v27[0] = v19;
    v27[1] = v20;
    sub_1C9064D9C();
    v28[0] = v19;
    v28[1] = v20;
    memcpy(v29, __src, sizeof(v29));
    sub_1C8CC1340(v28, v30);
    ContainerDefinition.hash(into:)(a1);
    memcpy(v30, v27, 0x61uLL);
    sub_1C8CC15FC(v30);
  }

  else
  {
    sub_1C9064D9C();
  }

  v21 = v1[36];
  sub_1C8D048FC();
  if (v1[38])
  {
    v22 = v1[37];
    sub_1C9064D9C();
    sub_1C9063FBC();
  }

  else
  {
    sub_1C9064D9C();
  }

  v23 = type metadata accessor for ToolDisplayMetadata();
  sub_1C8D52860(v1 + *(v23 + 64), v13, &qword_1EC3144B8, &qword_1C90839E0);
  OUTLINED_FUNCTION_14_2(v13);
  if (v24)
  {
    return sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_3_51();
  sub_1C8F11F5C(v13, v9, v25);
  sub_1C9064D9C();
  ToolIcon.hash(into:)();
  return OUTLINED_FUNCTION_4_46();
}

uint64_t ToolDisplayMetadata.hashValue.getter()
{
  sub_1C9064D7C();
  ToolDisplayMetadata.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8F0DD48()
{
  sub_1C9064D7C();
  ToolDisplayMetadata.hash(into:)(v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8F0DD84@<X0>(uint64_t *a1@<X8>)
{
  result = ToolDisplayMetadata.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C8F0DDB0()
{
  v0 = sub_1C9063CBC();
  __swift_allocate_value_buffer(v0, qword_1EDA60DD8);
  __swift_project_value_buffer(v0, qword_1EDA60DD8);
  return sub_1C9063CAC();
}

uint64_t ToolDatabase.idsForContainersProvidingLocalTools.getter()
{
  v1 = sub_1C9063C8C();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = sub_1C9063CBC();
  v9 = OUTLINED_FUNCTION_11(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  if (qword_1EDA60DD0 != -1)
  {
    OUTLINED_FUNCTION_5_45();
  }

  __swift_project_value_buffer(v8, qword_1EDA60DD8);
  v12 = OUTLINED_FUNCTION_10_37();
  v13(v12);
  sub_1C9063C7C();
  *swift_slowAlloc() = 0;
  v14 = sub_1C9063C9C();
  v15 = sub_1C906453C();
  v16 = sub_1C9063C6C();
  OUTLINED_FUNCTION_9_34(&dword_1C8C9B000, v17, v15, v16, "idsForContainersProvidingLocalTools", "");
  v18 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315498, &qword_1C907D0D0);
  sub_1C906272C();
  if (v27)
  {
  }

  else
  {
    v23 = sub_1C906452C();
    v18 = v7;
    v24 = sub_1C9063C6C();
    OUTLINED_FUNCTION_9_34(&dword_1C8C9B000, v25, v23, v24, "idsForContainersProvidingLocalTools", "");

    OUTLINED_FUNCTION_13_27();
  }

  v19 = OUTLINED_FUNCTION_7_42();
  v20(v19);
  v21 = OUTLINED_FUNCTION_6_39();
  v22(v21);
  return v18;
}

uint64_t sub_1C8F0E0A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a1;
  v74 = a2;
  v79 = sub_1C9063D3C();
  v78 = *(v79 - 8);
  v2 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1C906298C();
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v92 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C9062B9C();
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  v83 = *(v84 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v74 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v101 = *(v81 - 8);
  v11 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v74 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v74 - v23;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319348, &qword_1C909EDA8);
  v95 = *(v98 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v74 - v25;
  v26 = sub_1C906247C();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_1C906246C();
  type metadata accessor for ToolRecord();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v30 = swift_allocObject();
  v94 = xmmword_1C906A950;
  *(v30 + 16) = xmmword_1C906A950;
  if (qword_1EDA69668 != -1)
  {
    swift_once();
  }

  v31 = sub_1C9062E6C();
  v32 = __swift_project_value_buffer(v31, qword_1EDA6EB50);
  v80 = v32;
  v104 = v31;
  v105 = MEMORY[0x1E69A0050];
  v33 = __swift_allocate_boxed_opaque_existential_1(&v102);
  v34 = *(*(v31 - 8) + 16);
  v34(v33, v32, v31);
  v35 = sub_1C90627EC();
  v36 = MEMORY[0x1E699FE50];
  *(v30 + 56) = v35;
  *(v30 + 64) = v36;
  __swift_allocate_boxed_opaque_existential_1((v30 + 32));
  sub_1C906248C();
  __swift_destroy_boxed_opaque_existential_1(&v102);
  sub_1C8F11E58(&qword_1EDA6B220, type metadata accessor for ToolRecord);
  sub_1C906250C();

  v37 = swift_allocObject();
  *(v37 + 16) = v94;
  v104 = v31;
  v105 = MEMORY[0x1E69A0050];
  v38 = __swift_allocate_boxed_opaque_existential_1(&v102);
  v34(v38, v80, v31);
  *(v37 + 56) = v35;
  *(v37 + 64) = MEMORY[0x1E699FE50];
  __swift_allocate_boxed_opaque_existential_1((v37 + 32));
  sub_1C906248C();
  __swift_destroy_boxed_opaque_existential_1(&v102);
  sub_1C8D28184(&qword_1EDA62C28, &qword_1EC318D30, &unk_1C90A7A70);
  v39 = v81;
  sub_1C9062AFC();

  v40 = v101 + 8;
  v41 = *(v101 + 8);
  v41(v13, v39);
  if (qword_1EDA68E70 != -1)
  {
    swift_once();
  }

  v42 = v84;
  __swift_project_value_buffer(v84, qword_1EDA6E9C8);
  sub_1C8D28184(&qword_1EDA69390, &qword_1EC313278, &qword_1C90C63C0);
  v43 = v82;
  *&v94 = v29;
  sub_1C906249C();
  sub_1C8D28184(&qword_1EDA69360, &qword_1EC318D30, &unk_1C90A7A70);
  v44 = v85;
  v45 = v100;
  sub_1C906293C();
  (*(v83 + 8))(v43, v42);
  v99 = v41;
  v41(v45, v39);
  v102 = 0;
  v103 = 0xE000000000000000;
  sub_1C906478C();

  v102 = 0xD00000000000001DLL;
  v103 = 0x80000001C90CCC70;
  v106 = 1;
  v101 = v40;
  v46 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v46);

  MEMORY[0x1CCA81A90](0x31203D2029, 0xE500000000000000);
  v47 = v89;
  sub_1C9062B8C();
  v100 = sub_1C8D28184(&qword_1EDA69368, &qword_1EC318D30, &unk_1C90A7A70);
  v48 = v86;
  sub_1C906290C();

  v49 = v91;
  v50 = *(v90 + 8);
  v50(v47, v91);
  v99(v44, v39);
  v102 = 0;
  v103 = 0xE000000000000000;
  sub_1C906478C();

  v102 = 0xD000000000000028;
  v103 = 0x80000001C90CCCC0;
  v106 = 1;
  v51 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v51);

  sub_1C9062B8C();
  v52 = v87;
  sub_1C906290C();

  v50(v47, v49);
  v53 = v99;
  v99(v48, v39);
  v54 = v88;
  sub_1C9062C4C();
  v53(v52, v39);
  v55 = v97;
  sub_1C9062C1C();
  v53(v54, v39);
  v57 = v92;
  v56 = v93;
  v58 = v98;
  sub_1C9062C0C();
  if (v56)
  {
    (*(v95 + 8))(v55, v58);
  }

  else
  {
    sub_1C906297C();
    (*(v75 + 8))(v57, v76);
    v59 = sub_1C9062FFC();
    v61 = v60;

    v62 = *MEMORY[0x1E69E10F0];
    v63 = v77;
    sub_1C906371C();

    v64 = sub_1C9063D1C();
    v65 = sub_1C906443C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v102 = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_1C8CACE04(0xD000000000000023, 0x80000001C90CCC20, &v102);
      *(v66 + 12) = 2080;
      v68 = sub_1C8CACE04(v59, v61, &v102);

      *(v66 + 14) = v68;
      _os_log_impl(&dword_1C8C9B000, v64, v65, "%s making SQL request: %s", v66, 0x16u);
      swift_arrayDestroy();
      v69 = v67;
      v55 = v97;
      MEMORY[0x1CCA833A0](v69, -1, -1);
      v70 = v66;
      v58 = v98;
      MEMORY[0x1CCA833A0](v70, -1, -1);
    }

    else
    {
    }

    (*(v78 + 8))(v63, v79);
    sub_1C8D28184(&qword_1EDA6CB90, &qword_1EC319348, &qword_1C909EDA8);
    v71 = sub_1C906259C();
    v72 = sub_1C8D2BCE0(v71);

    result = (*(v95 + 8))(v55, v58);
    *v74 = v72;
  }

  return result;
}

uint64_t ToolDatabase.visibleLocalToolMetadata.getter()
{
  v1 = v0;
  v2 = sub_1C9063C8C();
  v3 = OUTLINED_FUNCTION_11(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = sub_1C9063CBC();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  if (qword_1EDA60DD0 != -1)
  {
    OUTLINED_FUNCTION_5_45();
  }

  __swift_project_value_buffer(v9, qword_1EDA60DD8);
  v13 = OUTLINED_FUNCTION_10_37();
  v14(v13);
  sub_1C9063C7C();
  *swift_slowAlloc() = 0;
  v15 = sub_1C9063C9C();
  v16 = sub_1C906453C();
  v17 = v8;
  v18 = sub_1C9063C6C();
  OUTLINED_FUNCTION_9_34(&dword_1C8C9B000, v19, v16, v18, "VisibleLocalToolMetadata", "");
  sub_1C8F0EFEC(v1);
  if (v28)
  {
  }

  else
  {
    v24 = sub_1C906452C();
    v17 = v8;
    v25 = sub_1C9063C6C();
    OUTLINED_FUNCTION_9_34(&dword_1C8C9B000, v26, v24, v25, "VisibleLocalToolMetadata", "");

    OUTLINED_FUNCTION_13_27();
  }

  v20 = OUTLINED_FUNCTION_7_42();
  v21(v20);
  v22 = OUTLINED_FUNCTION_6_39();
  v23(v22);
  return v17;
}

uint64_t sub_1C8F0EFEC(uint64_t a1)
{
  v2 = sub_1C90620BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  sub_1C8F39BAC();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = *(a1 + 16);
  v14 = a1;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D38, &qword_1C90A6FD8);
  sub_1C906272C();
  return (v10)(v9, v2);
}

uint64_t sub_1C8F0F164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v125 = a1;
  v123 = a3;
  v124 = a2;
  v116 = a4;
  v4 = type metadata accessor for FetchedToolDisplayMetadata();
  v111 = *(v4 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v110 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolDisplayMetadata();
  v130 = *(v7 - 8);
  v8 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v112 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D40, &unk_1C90A6FE0);
  v121 = *(v10 - 8);
  v122 = v10;
  v11 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v102 - v12;
  v109 = sub_1C9063D3C();
  v108 = *(v109 - 8);
  v13 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v102 - v18;
  v127 = sub_1C9062B9C();
  isa = v127[-1].isa;
  v19 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v127);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v128 = *(v22 - 8);
  v23 = *(v128 + 8);
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v102 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v102 - v29;
  v31 = type metadata accessor for ToolRecord();
  v118 = sub_1C8F11E58(&qword_1EDA6B220, type metadata accessor for ToolRecord);
  v119 = v31;
  sub_1C90624BC();
  v131 = 0;
  v132 = 0xE000000000000000;
  sub_1C906478C();

  v131 = 0xD00000000000001DLL;
  v132 = 0x80000001C90CCC70;
  v113 = 0x80000001C90CCC70;
  v133 = 5;
  v32 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v32);
  v33 = v22;

  MEMORY[0x1CCA81A90](0x203D3D2029, 0xE500000000000000);
  v133 = 5;
  v34 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v34);

  sub_1C9062B8C();
  v35 = sub_1C8D28184(&qword_1EDA69368, &qword_1EC318D30, &unk_1C90A7A70);
  sub_1C906290C();

  v36 = *(isa + 1);
  v115 = v21;
  isa += 8;
  v36(v21, v127);
  v37 = v128 + 8;
  v38 = *(v128 + 1);
  v38(v27, v33);
  if (!VCIsInternalBuild())
  {
    goto LABEL_19;
  }

  v103 = v36;
  v104 = v35;
  v117 = v38;
  v39 = *MEMORY[0x1E69E0FB8];
  v40 = sub_1C9063EEC();
  v42 = v41;
  v43 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v44 = sub_1C8F11B10(v40, v42);
  v102 = v44;
  if (!v44)
  {
    goto LABEL_18;
  }

  v45 = v44;
  v46 = sub_1C9063EBC();
  v47 = [v45 stringForKey_];

  if (!v47)
  {
    goto LABEL_18;
  }

  v48 = v45;
  v49 = sub_1C9063EEC();
  v51 = v50;

  v52 = v51;
  if (v49 != 0x6968747972657645 || v51 != 0xEA0000000000676ELL)
  {
    v54 = v49;
    if ((sub_1C9064C2C() & 1) == 0)
    {
      if (v49 != 0x6C616E7265746E49 || v52 != 0xE800000000000000)
      {
        v62 = v48;
        if ((sub_1C9064C2C() & 1) == 0)
        {
          v85 = v54 == 0x63696C627550 && v52 == 0xE600000000000000;
          v38 = v117;
          if (v85 || (sub_1C9064C2C() & 1) != 0)
          {
            v128 = v62;
            v86 = *MEMORY[0x1E69E10B0];
            v87 = v106;
            sub_1C906371C();
            v88 = sub_1C9063D1C();
            v89 = sub_1C906446C();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              *v90 = 0;
              _os_log_impl(&dword_1C8C9B000, v88, v89, "[Internal-only] Restricting to public tools, as defined by the current value for the WFShortcutsDrawerVisibilityLevelKey", v90, 2u);
              MEMORY[0x1CCA833A0](v90, -1, -1);
            }

            else
            {
            }

            (*(v108 + 8))(v87, v109);
          }

          else
          {
            v91 = *MEMORY[0x1E69E10B0];
            sub_1C906371C();

            v92 = v52;
            v93 = sub_1C9063D1C();
            v94 = sub_1C906446C();
            isa = v92;

            v127 = v93;
            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v128 = v62;
              v96 = v54;
              v97 = v95;
              v98 = v37;
              v99 = swift_slowAlloc();
              v131 = v99;
              *v97 = 136315138;
              *(v97 + 4) = sub_1C8CACE04(v96, isa, &v131);
              v100 = v127;
              _os_log_impl(&dword_1C8C9B000, v127, v94, "[Internal-only] Unexpected value %s found for WFShortcutsDrawerVisibilityLevelKey.", v97, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v99);
              v101 = v99;
              v37 = v98;
              MEMORY[0x1CCA833A0](v101, -1, -1);
              MEMORY[0x1CCA833A0](v97, -1, -1);
            }

            else
            {
            }

            (*(v108 + 8))(v105, v109);
          }

          goto LABEL_19;
        }
      }

LABEL_18:
      v63 = v114;
      sub_1C90624BC();
      v131 = 0;
      v132 = 0xE000000000000000;
      sub_1C906478C();

      v131 = 0xD00000000000001DLL;
      v132 = v113;
      v133 = 1;
      v64 = sub_1C9064BDC();
      MEMORY[0x1CCA81A90](v64);

      MEMORY[0x1CCA81A90](0x203D3D2029, 0xE500000000000000);
      v133 = 1;
      v65 = sub_1C9064BDC();
      MEMORY[0x1CCA81A90](v65);

      v66 = v115;
      sub_1C9062B8C();
      sub_1C906290C();

      v103(v66, v127);
      v67 = v63;
      v38 = v117;
      v117(v67, v33);
      v38(v30, v33);
      (*(v128 + 4))(v30, v27, v33);
      goto LABEL_19;
    }
  }

  isa = v52;
  v55 = v27;
  v56 = *MEMORY[0x1E69E10B0];
  v57 = v107;
  sub_1C906371C();
  v58 = sub_1C9063D1C();
  v59 = sub_1C906446C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1C8C9B000, v58, v59, "[Internal-only] Showing all tools, as defined by the current value for the WFShortcutsDrawerVisibilityLevelKey", v60, 2u);
    MEMORY[0x1CCA833A0](v60, -1, -1);
  }

  (*(v108 + 8))(v57, v109);
  sub_1C90624BC();

  v38 = v117;
  v117(v30, v33);
  (*(v128 + 4))(v30, v55, v33);
LABEL_19:
  v68 = sub_1C906206C();
  v69 = v120;
  sub_1C8F0FFD0(v68, v70, v120);

  sub_1C8D28184(&qword_1EDA62C38, &qword_1EC319D40, &unk_1C90A6FE0);
  sub_1C8F11E58(&qword_1EDA62930, type metadata accessor for FetchedToolDisplayMetadata);
  v71 = v126;
  v72 = v122;
  v73 = sub_1C906255C();
  (*(v121 + 8))(v69, v72);
  if (v71)
  {
    return (v38)(v30, v33);
  }

  isa = v37;
  v75 = *(v73 + 16);
  if (v75)
  {
    v126 = 0;
    v127 = v30;
    v117 = v38;
    v128 = v33;
    v131 = MEMORY[0x1E69E7CC0];
    sub_1C8D0A004(0, v75, 0);
    v76 = v131;
    v77 = *(v111 + 80);
    v125 = v73;
    v78 = v73 + ((v77 + 32) & ~v77);
    v79 = *(v111 + 72);
    v80 = v112;
    v81 = v110;
    do
    {
      sub_1C8F11EA0(v78, v81);
      sub_1C8D7EA04(v80);
      sub_1C8F11F04(v81, type metadata accessor for FetchedToolDisplayMetadata);
      v131 = v76;
      v83 = *(v76 + 16);
      v82 = *(v76 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_1C8D0A004(v82 > 1, v83 + 1, 1);
        v76 = v131;
      }

      *(v76 + 16) = v83 + 1;
      sub_1C8F11F5C(v80, v76 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v83, type metadata accessor for ToolDisplayMetadata);
      v78 += v79;
      --v75;
    }

    while (v75);
    v117(v127, v128);

    v84 = v116;
  }

  else
  {

    result = (v38)(v30, v33);
    v76 = MEMORY[0x1E69E7CC0];
    v84 = v116;
  }

  *v84 = v76;
  return result;
}

uint64_t sub_1C8F0FFD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v225 = a2;
  v196 = a3;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313230, &unk_1C90A6FF0);
  v194 = *(v195 - 8);
  v4 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v192 = v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v193 = v172 - v7;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313240, &unk_1C90A7A20);
  v190 = *(v191 - 8);
  v8 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v187 = v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v188 = v172 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v189 = v172 - v13;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313250, &unk_1C90A7000);
  v184 = *(v185 - 8);
  v14 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v182 = v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v183 = v172 - v17;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313268, &unk_1C909F240);
  v217 = *(v213 - 8);
  v18 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v209 = v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v212 = v172 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3133C8, &unk_1C909F250);
  v23 = *(v22 - 8);
  v220 = v22;
  v221 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v218 = v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v219 = v172 - v27;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313278, &qword_1C90C63C0);
  v216 = *(v180 - 8);
  v28 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v205 = v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v206 = v172 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v207 = v172 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313270, &unk_1C90A7010);
  v202 = *(v34 - 8);
  v35 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v172 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v201 = v172 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v223 = v172 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC318D30, &unk_1C90A7A70);
  v43 = *(v42 - 8);
  v226 = v42;
  v227 = v43;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v224 = v172 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v203 = v172 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v204 = v172 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v208 = v172 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v214 = v172 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v215 = v172 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v186 = v172 - v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3192F0, &qword_1C909ED80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1C909C460;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  v59 = sub_1C9062E6C();
  v60 = __swift_project_value_buffer(v59, qword_1EDA6E8A8);
  v61 = MEMORY[0x1E69A0038];
  *(v58 + 56) = v59;
  *(v58 + 64) = v61;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v58 + 32));
  v63 = *(v59 - 8);
  v64 = *(v63 + 16);
  v65 = v63 + 16;
  v64(boxed_opaque_existential_1, v60, v59);
  if (qword_1EDA68E08 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v59, qword_1EDA6E8D8);
  *(v58 + 96) = v59;
  *(v58 + 104) = v61;
  v67 = __swift_allocate_boxed_opaque_existential_1((v58 + 72));
  v64(v67, v66, v59);
  if (qword_1EDA68DF8 != -1)
  {
    swift_once();
  }

  v68 = __swift_project_value_buffer(v59, qword_1EDA6E8C0);
  *(v58 + 136) = v59;
  *(v58 + 144) = v61;
  v69 = __swift_allocate_boxed_opaque_existential_1((v58 + 112));
  v64(v69, v68, v59);
  if (qword_1EDA68E30 != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v59, qword_1EDA6E938);
  *(v58 + 176) = v59;
  *(v58 + 184) = v61;
  v71 = __swift_allocate_boxed_opaque_existential_1((v58 + 152));
  v64(v71, v70, v59);
  if (qword_1EDA68DE0 != -1)
  {
    swift_once();
  }

  v72 = __swift_project_value_buffer(v59, qword_1EDA6E890);
  *(v58 + 216) = v59;
  *(v58 + 224) = v61;
  v73 = __swift_allocate_boxed_opaque_existential_1((v58 + 192));
  v64(v73, v72, v59);
  if (qword_1EDA68E40 != -1)
  {
    swift_once();
  }

  v74 = __swift_project_value_buffer(v59, qword_1EDA6E968);
  *(v58 + 256) = v59;
  *(v58 + 264) = v61;
  v75 = __swift_allocate_boxed_opaque_existential_1((v58 + 232));
  v64(v75, v74, v59);
  if (qword_1EDA68E38 != -1)
  {
    swift_once();
  }

  v76 = __swift_project_value_buffer(v59, qword_1EDA6E950);
  *(v58 + 296) = v59;
  *(v58 + 304) = v61;
  v77 = __swift_allocate_boxed_opaque_existential_1((v58 + 272));
  v64(v77, v76, v59);
  if (qword_1EDA6B248 != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v59, qword_1EDA6EBE0);
  *(v58 + 336) = v59;
  *(v58 + 344) = v61;
  v79 = __swift_allocate_boxed_opaque_existential_1((v58 + 312));
  v64(v79, v78, v59);
  if (qword_1EDA6B230 != -1)
  {
    swift_once();
  }

  v80 = __swift_project_value_buffer(v59, qword_1EDA6EBB0);
  *(v58 + 376) = v59;
  *(v58 + 384) = v61;
  v81 = __swift_allocate_boxed_opaque_existential_1((v58 + 352));
  v64(v81, v80, v59);
  sub_1C8D28184(&qword_1EDA62C28, &qword_1EC318D30, &unk_1C90A7A70);
  sub_1C9062AEC();

  if (qword_1EDA68EA8 != -1)
  {
    swift_once();
  }

  v210 = v65;
  v211 = v64;
  v82 = v37;
  v222 = a1;
  qword_1EDA6E5F0(a1, v225, 0x79616C70736964, 0xE700000000000000);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D48, &qword_1C90A7020);
  v83 = swift_allocObject();
  v178 = xmmword_1C906A950;
  *(v83 + 16) = xmmword_1C906A950;
  if (qword_1EDA691E8 != -1)
  {
    swift_once();
  }

  v84 = __swift_project_value_buffer(v59, qword_1EDA6EA48);
  v85 = MEMORY[0x1E69A0048];
  *(v83 + 56) = v59;
  *(v83 + 64) = v85;
  v86 = __swift_allocate_boxed_opaque_existential_1((v83 + 32));
  v211(v86, v84, v59);
  sub_1C8D28184(&qword_1EDA69408, &qword_1EC313270, &unk_1C90A7010);
  v87 = v201;
  sub_1C906280C();

  v88 = v82;
  v89 = *(v202 + 8);
  v89(v88, v34);
  sub_1C8D28184(&qword_1EDA69410, &qword_1EC313270, &unk_1C90A7010);
  v90 = v223;
  sub_1C9062A1C();
  v89(v87, v34);
  v91 = sub_1C8D28184(&qword_1EDA69360, &qword_1EC318D30, &unk_1C90A7A70);
  sub_1C8D28184(&qword_1EDA69418, &qword_1EC313270, &unk_1C90A7010);
  v92 = v226;
  v93 = v224;
  sub_1C906296C();
  v89(v90, v34);
  v94 = *(v227 + 8);
  v227 += 8;
  v94(v93, v92);
  if (qword_1EDA68E70 != -1)
  {
    swift_once();
  }

  v223 = v91;
  v224 = v94;
  v95 = v180;
  v202 = __swift_project_value_buffer(v180, qword_1EDA6E9C8);
  v96 = v225;
  v97 = v222;
  if (qword_1EDA69688 != -1)
  {
    swift_once();
  }

  v181 = v59;
  v98 = v218;
  v200 = unk_1EDA6EBA0;
  v201 = qword_1EDA6EB98;
  qword_1EDA6EB98(v97, v96);
  v99 = sub_1C8D28184(&qword_1EDA6B4E0, &qword_1EC3133C8, &unk_1C909F250);
  v100 = v219;
  v101 = v220;
  v199 = v99;
  sub_1C9062A1C();
  v103 = v221 + 8;
  v102 = *(v221 + 8);
  v102(v98, v101);
  v104 = sub_1C8D28184(&qword_1EDA69378, &qword_1EC313278, &qword_1C90C63C0);
  v105 = sub_1C8D28184(&qword_1EDA6B4E8, &qword_1EC3133C8, &unk_1C909F250);
  v106 = v205;
  v197 = v104;
  v198 = v105;
  sub_1C906295C();
  v221 = v103;
  v202 = v102;
  v102(v100, v101);
  v107 = v95;
  if (qword_1EDA69630 != -1)
  {
    swift_once();
  }

  v108 = v209;
  v174 = *algn_1EDA6EAE8;
  v176 = qword_1EDA6EAE0;
  qword_1EDA6EAE0(v97, v225);
  v109 = sub_1C8D28184(&qword_1EDA6B4D0, &qword_1EC313268, &unk_1C909F240);
  v110 = v212;
  v111 = v213;
  sub_1C9062B1C();
  v112 = v217 + 8;
  v113 = *(v217 + 8);
  v113(v108, v111);
  v114 = v206;
  v175 = v109;
  sub_1C906294C();
  v217 = v112;
  v173 = v113;
  v113(v110, v111);
  v116 = v216 + 8;
  v115 = *(v216 + 8);
  v115(v106, v107);
  v117 = v225;
  v118 = sub_1C8D28184(&qword_1EDA69388, &qword_1EC313278, &qword_1C90C63C0);
  v119 = v207;
  v172[2] = v118;
  sub_1C9062A1C();
  v115(v114, v107);
  v120 = sub_1C8D28184(&qword_1EDA69390, &qword_1EC313278, &qword_1C90C63C0);
  v121 = v226;
  v172[1] = v120;
  v122 = v203;
  sub_1C906295C();
  v177 = v115;
  v216 = v116;
  v115(v119, v107);
  (v224)(v122, v121);
  if (qword_1EDA68E98 != -1)
  {
    swift_once();
  }

  v203 = __swift_project_value_buffer(v107, qword_1EDA6EA10);
  v123 = v218;
  v124 = v222;
  (v201)(v222, v117);
  v125 = v219;
  v126 = v107;
  v127 = v220;
  sub_1C9062A1C();
  v128 = v202;
  (v202)(v123, v127);
  v129 = v205;
  sub_1C906295C();
  v128(v125, v127);
  v130 = v209;
  v176(v124, v117);
  v131 = v212;
  v132 = v213;
  sub_1C9062B1C();
  v133 = v173;
  v173(v130, v132);
  v134 = v206;
  sub_1C906294C();
  v133(v131, v132);
  v135 = v177;
  v177(v129, v126);
  v136 = v207;
  sub_1C9062A1C();
  v135(v134, v126);
  v137 = v226;
  v138 = v204;
  sub_1C906296C();
  v135(v136, v126);
  (v224)(v138, v137);
  v139 = v225;
  if (qword_1EDA68EB8 != -1)
  {
    swift_once();
  }

  v140 = v182;
  v141 = v222;
  qword_1EDA6EA38(v222, v139);
  sub_1C8D28184(&qword_1EDA693B8, &qword_1EC313250, &unk_1C90A7000);
  v142 = v183;
  v143 = v185;
  sub_1C9062B1C();
  v144 = *(v184 + 8);
  v144(v140, v143);
  v145 = v208;
  sub_1C906294C();
  v144(v142, v143);
  (v224)(v145, v137);
  v146 = v141;
  v147 = v191;
  v148 = v190;
  v149 = v188;
  v150 = v181;
  if (qword_1EDA68EA0 != -1)
  {
    swift_once();
  }

  v151 = v187;
  qword_1EDA6EA28(v146, v139);
  sub_1C8D28184(&qword_1EDA693F0, &qword_1EC313240, &unk_1C90A7A20);
  sub_1C9062B1C();
  v152 = *(v148 + 8);
  v152(v151, v147);
  v153 = swift_allocObject();
  *(v153 + 16) = v178;
  if (qword_1EDA66938 != -1)
  {
    swift_once();
  }

  v154 = __swift_project_value_buffer(v150, qword_1EDA6E860);
  *(v153 + 56) = v150;
  *(v153 + 64) = MEMORY[0x1E69A0048];
  v155 = __swift_allocate_boxed_opaque_existential_1((v153 + 32));
  v211(v155, v154, v150);
  sub_1C8D28184(&qword_1EDA693E8, &qword_1EC313240, &unk_1C90A7A20);
  v156 = v189;
  sub_1C906280C();

  v152(v149, v147);
  v157 = v226;
  v158 = v214;
  sub_1C906294C();
  v152(v156, v147);
  (v224)(v158, v157);
  if (qword_1EDA68E48 != -1)
  {
    swift_once();
  }

  v159 = v195;
  __swift_project_value_buffer(v195, qword_1EDA6E980);
  v160 = v218;
  (v201)(v222, v139);
  v162 = v219;
  v161 = v220;
  sub_1C9062A1C();
  v163 = v202;
  (v202)(v160, v161);
  sub_1C8D28184(&qword_1EDA69350, &qword_1EC313230, &unk_1C90A6FF0);
  v164 = v192;
  sub_1C906296C();
  v163(v162, v161);
  sub_1C8D28184(&qword_1EDA69358, &qword_1EC313230, &unk_1C90A6FF0);
  v165 = v193;
  sub_1C9062B1C();
  v166 = *(v194 + 8);
  v166(v164, v159);
  v167 = v186;
  v168 = v226;
  v169 = v215;
  sub_1C906294C();
  v166(v165, v159);
  v170 = v224;
  (v224)(v169, v168);
  type metadata accessor for FetchedToolDisplayMetadata();
  sub_1C9062C1C();
  return v170(v167, v168);
}

id sub_1C8F11B10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C9063EBC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

void sub_1C8F11BE4()
{
  sub_1C8F11DEC(319, &qword_1EDA6E370, &type metadata for ToolCategory, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8F11DEC(319, &qword_1EDA6E550, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8F11DEC(319, &qword_1EDA6E368, &type metadata for RuntimeRequirement, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C8F11DEC(319, &qword_1EDA6E398, &type metadata for ContainerDefinition, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C8F11DEC(319, &qword_1EDA6E360, &type metadata for ContainerDefinition, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1C8F11DEC(319, &qword_1EDA6E558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1C8CC30E0();
              if (v6 <= 0x3F)
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

void sub_1C8F11DEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C8F11E58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8F11EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchedToolDisplayMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8F11F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8F11F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_13_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_94();
  v8(v7);
  return a2;
}

uint64_t ToolDatabase.checkpointWAL(maxRetries:waitInterval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1C906245C();
  v4[7] = v5;
  OUTLINED_FUNCTION_46(v5);
  v4[8] = v6;
  v8 = *(v7 + 64);
  v4[9] = OUTLINED_FUNCTION_38_1();
  v4[10] = swift_task_alloc();
  v9 = sub_1C90626DC();
  v4[11] = v9;
  OUTLINED_FUNCTION_46(v9);
  v4[12] = v10;
  v12 = *(v11 + 64);
  v4[13] = OUTLINED_FUNCTION_38_1();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v13 = sub_1C906204C();
  v4[16] = v13;
  OUTLINED_FUNCTION_46(v13);
  v4[17] = v14;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v17 = sub_1C906489C();
  v4[19] = v17;
  OUTLINED_FUNCTION_46(v17);
  v4[20] = v18;
  v20 = *(v19 + 64) + 15;
  v4[21] = swift_task_alloc();
  v21 = sub_1C9063D3C();
  v4[22] = v21;
  OUTLINED_FUNCTION_46(v21);
  v4[23] = v22;
  v24 = *(v23 + 64);
  v4[24] = OUTLINED_FUNCTION_38_1();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v25 = sub_1C9063DEC();
  v4[28] = v25;
  OUTLINED_FUNCTION_46(v25);
  v4[29] = v26;
  v28 = *(v27 + 64) + 15;
  v4[30] = swift_task_alloc();
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1C8F12244()
{
  v51 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = *(v0[6] + 24);
  v0[31] = v4;
  *v1 = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v5 = v4;
  LOBYTE(v4) = sub_1C9063DFC();
  result = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v7 = v0[27];
    v0[32] = *MEMORY[0x1E69E10F0];
    sub_1C906371C();
    v8 = sub_1C9063D1C();
    v9 = sub_1C906446C();
    if (OUTLINED_FUNCTION_15_2(v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C8C9B000, v8, v3, "Starting WAL checkpoint", v10, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
    }

    v11 = v0[27];
    v12 = v0[22];
    v13 = v0[23];

    v0[33] = *(v13 + 8);
    v14 = OUTLINED_FUNCTION_145();
    v16 = v15(v14);
    v16.n128_u64[0] = 134218242;
    v50 = v16;
    v0[34] = 0;
    if (v0[3])
    {
      v17 = v0[32];
      v18 = v0[25];
      v20 = v0[17];
      v19 = v0[18];
      v21 = v0[16];
      _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
      v22 = sub_1C906200C();
      v24 = v23;
      (*(v20 + 8))(v19, v21);
      sub_1C906371C();
      v25 = sub_1C9063D1C();
      v26 = sub_1C906446C();
      if (OUTLINED_FUNCTION_15_2(v26))
      {
        v27 = v0[34];
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_27_18(v28, v29, v30, v31, v32, v33, v34, v35, v50.n128_i64[0], v50.n128_i64[1], v36);
        _os_log_impl(&dword_1C8C9B000, v25, v37, "Attempt %ld: trying to checkpoint", v28, 0xCu);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
      }

      v38 = v0[33];
      v39 = v0[25];
      v40 = v0[22];
      v41 = v0[23];

      v42 = OUTLINED_FUNCTION_145();
      v38(v42);
      if (qword_1EDA63970 != -1)
      {
        OUTLINED_FUNCTION_1_66();
        swift_once();
      }

      v43 = v0[31];
      v44 = v0[6];
      v45 = swift_task_alloc();
      *(v45 + 16) = v22;
      *(v45 + 24) = v24;
      v46 = OUTLINED_FUNCTION_9_35();
      sub_1C8D927FC(v46, v45);

      v47 = swift_task_alloc();
      v47[2] = v44;
      v47[3] = v22;
      v47[4] = v24;
      OUTLINED_FUNCTION_8_41();
      sub_1C90644BC();
    }

    OUTLINED_FUNCTION_5_46();
    OUTLINED_FUNCTION_32_18();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_19_26();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F12BF8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C8F12D5C(__n128 a1)
{
  v134 = v1;
  v2 = *(v1 + 288);
  a1.n128_u64[0] = 134218242;
  v127 = a1;
  while (1)
  {
    v3 = *(v1 + 256);
    v4 = *(v1 + 200);
    v6 = *(v1 + 136);
    v5 = *(v1 + 144);
    v7 = *(v1 + 128);
    _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
    v8 = sub_1C906200C();
    v10 = v9;
    (*(v6 + 8))(v5, v7);
    sub_1C906371C();
    v11 = sub_1C9063D1C();
    v12 = sub_1C906446C();
    if (OUTLINED_FUNCTION_15_2(v12))
    {
      v13 = *(v1 + 272);
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_27_18(v14, v15, v16, v17, v18, v19, v20, v21, v127.n128_i64[0], v127.n128_i64[1], v22);
      _os_log_impl(&dword_1C8C9B000, v11, v23, "Attempt %ld: trying to checkpoint", v14, 0xCu);
      v24 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v24);
    }

    v25 = *(v1 + 264);
    v26 = *(v1 + 200);
    v27 = *(v1 + 176);
    v28 = *(v1 + 184);

    v25(v26, v27);
    if (qword_1EDA63970 != -1)
    {
      OUTLINED_FUNCTION_1_66();
      swift_once();
    }

    v29 = *(v1 + 248);
    v30 = *(v1 + 48);
    v31 = off_1EDA63980;
    v32 = swift_task_alloc();
    *(v32 + 16) = v8;
    *(v32 + 24) = v10;
    v33 = OUTLINED_FUNCTION_9_35();
    sub_1C8D927FC(v33, v32);

    v34 = swift_task_alloc();
    v34[2] = v30;
    v34[3] = v8;
    v131 = v8;
    v34[4] = v10;
    OUTLINED_FUNCTION_8_41();
    sub_1C90644BC();
    if (!v2)
    {

LABEL_20:
      OUTLINED_FUNCTION_5_46();
      OUTLINED_FUNCTION_32_18();

      OUTLINED_FUNCTION_6_0();
      goto LABEL_27;
    }

    v35 = v2;
    v36 = *(v1 + 120);
    v37 = *(v1 + 88);

    *(v1 + 16) = v35;
    v38 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316420, &qword_1C90729E0);
    if (!OUTLINED_FUNCTION_21_22())
    {
      goto LABEL_25;
    }

    v130 = v10;
    v39 = OUTLINED_FUNCTION_18_28();
    v40(v39);
    sub_1C906266C();
    sub_1C906242C();
    OUTLINED_FUNCTION_11_33();
    sub_1C8F14FB8(&qword_1EC319D50, v41);
    OUTLINED_FUNCTION_17_29();
    OUTLINED_FUNCTION_16_27();
    v42 = v31[1];
    v43 = OUTLINED_FUNCTION_114_0();
    v42(v43);
    v44 = OUTLINED_FUNCTION_300();
    v42(v44);
    if (*(v1 + 296) != *(v1 + 300))
    {
      OUTLINED_FUNCTION_31_20();
      sub_1C906269C();
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_16_27();
      v45 = OUTLINED_FUNCTION_114_0();
      v42(v45);
      v46 = OUTLINED_FUNCTION_300();
      v42(v46);
      if (*(v1 + 304) != *(v1 + 308))
      {
        (*(*(v1 + 96) + 8))(*(v1 + 112), *(v1 + 88));
LABEL_25:

        v117 = swift_task_alloc();
        v117[2] = v131;
        v117[3] = v10;
        v117[4] = v35;
        v118 = OUTLINED_FUNCTION_7_43();
        sub_1C8D927FC(v118, v119);

        swift_willThrow();
LABEL_26:
        OUTLINED_FUNCTION_5_46();
        OUTLINED_FUNCTION_23_25();

        OUTLINED_FUNCTION_6_0();
LABEL_27:
        OUTLINED_FUNCTION_19_26();

        __asm { BRAA            X1, X16 }
      }
    }

    v47 = *(v1 + 256);
    v48 = *(v1 + 192);
    v50 = *(v1 + 104);
    v49 = *(v1 + 112);
    v52 = *(v1 + 88);
    v51 = *(v1 + 96);

    sub_1C906371C();
    v53 = *(v51 + 16);
    v54 = v52;
    v55 = (v51 + 16);
    v53(v50, v49, v54);
    v56 = sub_1C9063D1C();
    v57 = sub_1C906444C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v1 + 272);
      v59 = *(v1 + 96);
      v60 = *(v1 + 104);
      v128 = v55;
      v61 = *(v1 + 88);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = v127.n128_u32[0];
      *(v62 + 4) = v58;
      *(v62 + 12) = 2112;
      OUTLINED_FUNCTION_0_70();
      sub_1C8F14FB8(&qword_1EC312ED8, v64);
      OUTLINED_FUNCTION_6_3();
      v53(v65, v60, v61);
      v66 = _swift_stdlib_bridgeErrorToNSError();
      v67 = *(v59 + 8);
      v68 = OUTLINED_FUNCTION_114_0();
      v55 = v128;
      v129 = v69;
      (v69)(v68);
      *(v62 + 14) = v66;
      *v63 = v66;
      _os_log_impl(&dword_1C8C9B000, v56, v57, "Attempt %ld: checkpointing database failed with %@", v62, 0x16u);
      sub_1C8D14208(v63, &qword_1EC312EC8, &qword_1C9071EA0);
      v70 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v70);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
    }

    else
    {
      v71 = *(v1 + 96);
      v72 = *(v1 + 104);
      v73 = *(v1 + 88);

      v129 = *(v71 + 8);
      v129(v72, v73);
    }

    v74 = *(v1 + 272);
    v75 = *(v1 + 112);
    v76 = *(v1 + 88);
    (*(v1 + 264))(*(v1 + 192), *(v1 + 176));
    OUTLINED_FUNCTION_0_70();
    sub_1C8F14FB8(&qword_1EC312ED8, v77);
    v78 = OUTLINED_FUNCTION_6_3();
    v53(v79, v75, v76);
    v80 = swift_task_alloc();
    v80[2] = v131;
    v80[3] = v130;
    v80[4] = v78;
    v81 = OUTLINED_FUNCTION_10_38();
    sub_1C8D927FC(v81, v80);

    v83 = __OFADD__(v74, 1);
    v84 = v74 + 1;
    if (v83)
    {
      break;
    }

    v85 = *(v1 + 112);
    v86 = *(v1 + 88);
    v87 = *(v1 + 96) + 8;
    if ((v84 & 0x8000000000000000) == 0 && v84 == *(v1 + 24))
    {
      OUTLINED_FUNCTION_145();
      OUTLINED_FUNCTION_6_3();
      v53(v88, v85, v86);
      swift_willThrow();
      v129(v85, v86);

      goto LABEL_26;
    }

    v129(*(v1 + 112), *(v1 + 88));

    *(v1 + 272) = v84;
    if (v84 >= *(v1 + 24))
    {
      goto LABEL_20;
    }

    v2 = 0;
    if (v84)
    {
      v89 = *(v1 + 256);
      v90 = *(v1 + 208);
      sub_1C906371C();
      v91 = sub_1C9063D1C();
      v92 = sub_1C906446C();
      v93 = os_log_type_enabled(v91, v92);
      v94 = *(v1 + 264);
      v95 = *(v1 + 208);
      v96 = *(v1 + 176);
      v97 = *(v1 + 184);
      if (v93)
      {
        v132 = *(v1 + 264);
        v98 = *(v1 + 32);
        v99 = *(v1 + 40);
        v100 = OUTLINED_FUNCTION_29_21();
        v101 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_25(v101, v102, v103, v104, v105, v106, v107, v108, v109);
        *(v100 + 4) = v84;
        *(v100 + 12) = 2080;
        v110 = sub_1C9064E3C();
        v112 = sub_1C8CACE04(v110, v111, &v133);

        *(v100 + 14) = v112;
        OUTLINED_FUNCTION_33_16(&dword_1C8C9B000, v113, v114, "Attempt %ld: sleeping for %s and trying again");
        __swift_destroy_boxed_opaque_existential_1(v55);
        OUTLINED_FUNCTION_13_2();
        MEMORY[0x1CCA833A0]();
        v115 = OUTLINED_FUNCTION_8();
        MEMORY[0x1CCA833A0](v115);

        v116 = OUTLINED_FUNCTION_145();
        v132(v116);
      }

      else
      {

        v122 = OUTLINED_FUNCTION_145();
        v94(v122);
      }

      v123 = *(v1 + 168);
      sub_1C9064CEC();
      v124 = OUTLINED_FUNCTION_30_23(&dword_1C90A7038);
      *(v1 + 280) = v124;
      *v124 = v1;
      OUTLINED_FUNCTION_4_47();
      OUTLINED_FUNCTION_19_26();

      __asm { BR              X5 }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F13600()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[21];
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v13 = v0[10];
  v14 = v0[9];
  v15 = v0[36];

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t sub_1C8F13700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C9063D3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C8F13B84();
  if (!v3)
  {
    v12 = sub_1C8F13CC0();
    if (v12 == 2)
    {
      if (qword_1EDA63970 != -1)
      {
        v12 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v12);
      v15 = &v38 - 8;
      *(&v38 - 6) = a2;
      *(&v38 - 5) = a3;
      *(&v38 - 32) = 2;
      *(&v38 - 7) = 0;
      *(&v38 - 24) = 1;
      *(&v38 - 5) = 0;
      *(&v38 - 16) = 1;
      v16 = sub_1C8F14FB4;
      return sub_1C8D927FC(v16, v15);
    }

    v17 = v12;
    v18 = v13;
    v45 = v14;
    v19 = *MEMORY[0x1E69E10F0];
    sub_1C906371C();
    v20 = sub_1C9063D1C();
    v44 = sub_1C906446C();
    if (os_log_type_enabled(v20, v44))
    {
      v40 = v20;
      v42 = a2;
      v43 = a3;
      v21 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46 = v39;
      *v21 = 136315906;
      v41 = v17;
      if (v17)
      {
        v22 = 28494;
      }

      else
      {
        v22 = 7562585;
      }

      v23 = 0xE300000000000000;
      if (v17)
      {
        v24 = 0xE200000000000000;
      }

      else
      {
        v24 = 0xE300000000000000;
      }

      v25 = sub_1C8CACE04(v22, v24, &v46);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v18;
      *(v21 + 22) = 2048;
      v26 = v45;
      *(v21 + 24) = v45;
      *(v21 + 32) = 2080;
      if (v18 < 1)
      {
        v29 = 4271950;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D58, &qword_1C90A7040);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1C906A950;
        v28 = MEMORY[0x1E69E6438];
        *(v27 + 56) = MEMORY[0x1E69E63B0];
        *(v27 + 64) = v28;
        *(v27 + 32) = v26 / v18 * 100.0;
        v29 = sub_1C9063F1C();
        v23 = v30;
      }

      v31 = sub_1C8CACE04(v29, v23, &v46);

      *(v21 + 34) = v31;
      v32 = v40;
      _os_log_impl(&dword_1C8C9B000, v40, v44, "WAL checkpoint completed:\n- Busy: %s\n- Total frames: %ld\n- Checkpointed frames: %ld\n- Efficiency: %s", v21, 0x2Au);
      v33 = v39;
      swift_arrayDestroy();
      MEMORY[0x1CCA833A0](v33, -1, -1);
      MEMORY[0x1CCA833A0](v21, -1, -1);

      result = (*(v7 + 8))(v10, v6);
      a2 = v42;
      a3 = v43;
    }

    else
    {

      result = (*(v7 + 8))(v10, v6);
    }

    v34 = v45;
    if (qword_1EDA63970 != -1)
    {
      result = swift_once();
      v34 = v45;
    }

    if (v18 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (v18 >= 0xFFFFFFFF80000000 && v34 >= 0xFFFFFFFF80000000)
    {
      if (v34 <= 0x7FFFFFFF)
      {
        MEMORY[0x1EEE9AC00](result);
        v15 = &v38 - 8;
        *(&v38 - 6) = a2;
        *(&v38 - 5) = a3;
        *(&v38 - 32) = v36;
        *(&v38 - 7) = v18;
        *(&v38 - 24) = 0;
        *(&v38 - 5) = v37;
        *(&v38 - 16) = 0;
        v16 = sub_1C8F150A4;
        return sub_1C8D927FC(v16, v15);
      }

LABEL_31:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1C8F13B84()
{
  v1 = sub_1C9063DEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1C9063DFC();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = *(v0 + 16);
    return sub_1C90626EC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8F13CC0()
{
  v1 = sub_1C9063DEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 24);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1C9063DFC();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D60, &qword_1C90A7048);
    sub_1C90626EC();
    return v11[1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C8F13E14()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F10, qword_1C9071EA8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = pnCkpt - v2;
  v4 = sub_1C906245C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *pnCkpt = 0;
  v6 = sub_1C9062F4C();
  result = sqlite3_wal_checkpoint_v2(v6, 0, 3, &pnCkpt[1], pnCkpt);
  if (result)
  {
    sub_1C906244C();
LABEL_6:
    v8 = sub_1C9062B9C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
    sub_1C90626DC();
    sub_1C8F14FB8(&qword_1EC312ED8, MEMORY[0x1E699FE10]);
    swift_allocError();
    sub_1C906265C();
    result = swift_willThrow();
    goto LABEL_7;
  }

  if (pnCkpt[1] >= 1 && !pnCkpt[0])
  {
    sub_1C906242C();
    goto LABEL_6;
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C8F13FF0@<X0>(void *a1@<X8>)
{
  v34 = a1;
  v31 = sub_1C9063D3C();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C9062B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9062DFC();
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_1C9062B8C();
  v11 = sub_1C9062DEC();
  if (v1)
  {
    (*(v7 + 8))(v10, v6);
    sub_1C8D14208(v32, &qword_1EC319D68, &unk_1C90C6370);
    v12 = *MEMORY[0x1E69E10F0];
    sub_1C906371C();
    v13 = v1;
    v14 = sub_1C9063D1C();
    v15 = sub_1C906444C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1C8C9B000, v14, v15, "Could not fetch WAL checkpoint info: %@", v16, 0xCu);
      sub_1C8D14208(v17, &qword_1EC312EC8, &qword_1C9071EA0);
      MEMORY[0x1CCA833A0](v17, -1, -1);
      MEMORY[0x1CCA833A0](v16, -1, -1);
    }

    else
    {
    }

    result = (*(v2 + 8))(v5, v31);
    v29 = v34;
    v34[2] = 0;
  }

  else
  {
    v20 = v11;
    (*(v7 + 8))(v10, v6);
    result = sub_1C8D14208(v32, &qword_1EC319D68, &unk_1C90C6370);
    if (v20)
    {
      sub_1C8E2B088();
      v23 = v22;
      sub_1C8E2B088();
      v25 = v24;
      sub_1C8E2B088();
      v27 = v26;

      v28 = v34;
      *v34 = v23 != 0;
      v28[1] = v25;
      v28[2] = v27;
      return result;
    }

    v29 = v34;
    v34[2] = 0;
  }

  *v29 = 2;
  v29[1] = 0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolDatabase.vacuum()()
{
  v1 = sub_1C906204C();
  v2 = OUTLINED_FUNCTION_11(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1C9063D3C();
  v9 = OUTLINED_FUNCTION_11(v53);
  v49 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v52 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v48 - v15;
  v17 = sub_1C9063DEC();
  v18 = OUTLINED_FUNCTION_11(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v25 = (v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v0;
  v26 = *(v0 + 24);
  *v25 = v26;
  (*(v20 + 104))(v25, *MEMORY[0x1E69E8018], v17, v23);
  v27 = v26;
  v28 = sub_1C9063DFC();
  (*(v20 + 8))(v25, v17);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    OUTLINED_FUNCTION_1_66();
    v34 = swift_once();
    goto LABEL_5;
  }

  v48[1] = v27;
  v29 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();
  v30 = sub_1C9063D1C();
  v31 = sub_1C906446C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1C8C9B000, v30, v31, "Maintaining database load factor", v32, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
  }

  v49 = *(v49 + 8);
  (v49)(v16, v53);
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  v28 = sub_1C906200C();
  v25 = v33;
  v34 = (*(v4 + 8))(v8, v1);
  if (qword_1EDA63970 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_28_21();
  sub_1C8D927FC(sub_1C8F14F90, v35);
  v36 = v51;
  v37 = sub_1C90644BC();
  if (v36)
  {
    sub_1C906371C();
    v38 = v36;
    v39 = sub_1C9063D1C();
    v40 = sub_1C906444C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v36;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_1C8C9B000, v39, v40, "Failed to maintain database load factor: %@", v41, 0xCu);
      sub_1C8D14208(v42, &qword_1EC312EC8, &qword_1C9071EA0);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      v45 = OUTLINED_FUNCTION_8();
      MEMORY[0x1CCA833A0](v45);
    }

    v46 = (v49)(v52, v53);
    MEMORY[0x1EEE9AC00](v46);
    v48[-4] = v28;
    v48[-3] = v25;
    v48[-2] = v36;
    sub_1C8D927FC(sub_1C8D93E84, &v48[-6]);

    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v37);
    OUTLINED_FUNCTION_28_21();
    sub_1C8D927FC(sub_1C8D93D90, v47);
  }
}

uint64_t sub_1C8F14958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F10, qword_1C9071EA8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1C906245C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C9062F4C();
  result = _sqlite3_maintain_load_factor();
  if (result)
  {
    sub_1C906244C();
    v7 = sub_1C9062B9C();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
    sub_1C90626DC();
    sub_1C8F14FB8(&qword_1EC312ED8, MEMORY[0x1E699FE10]);
    swift_allocError();
    sub_1C906265C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C8F14AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C906488C();
  *(v6 + 64) = v12;
  OUTLINED_FUNCTION_46(v12);
  *(v6 + 72) = v13;
  v15 = *(v14 + 64);
  *(v6 + 80) = OUTLINED_FUNCTION_38_1();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;
  OUTLINED_FUNCTION_21_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C8F14BC0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1C906489C();
  v7 = sub_1C8F14FB8(&qword_1EC319D70, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_145();
  sub_1C9064CCC();
  sub_1C8F14FB8(&qword_1EC319D78, MEMORY[0x1E69E87E8]);
  sub_1C90648AC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1C8F14D4C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1C8F14D4C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 64);
  v15 = *v1;
  *(*v1 + 120) = v0;

  v5(v6, v7);
  if (v0)
  {
    OUTLINED_FUNCTION_21_1();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v12 = *(v2 + 80);
    v11 = *(v2 + 88);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

uint64_t sub_1C8F14F00()
{
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1C8F14F68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D938B8();
}

uint64_t sub_1C8F14F90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C8D93C20();
}

uint64_t sub_1C8F14FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7WALInfoVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
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

uint64_t _s7WALInfoVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t OUTLINED_FUNCTION_23_25()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[9];
}

uint64_t OUTLINED_FUNCTION_29_21()
{

  return swift_slowAlloc();
}

void SystemToolProtocol.init(protobuf:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v315 = a2;
  v3 = type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v314 = v7;
  v8 = OUTLINED_FUNCTION_111();
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(v8);
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v311 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v309 = &v305 - v18;
  v19 = OUTLINED_FUNCTION_111();
  v20 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(v19);
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_0();
  v310 = v24;
  v25 = OUTLINED_FUNCTION_111();
  v26 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(v25);
  v27 = OUTLINED_FUNCTION_9(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v312 = &v305 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v313 = &v305 - v32;
  v33 = OUTLINED_FUNCTION_111();
  v34 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(v33);
  v35 = OUTLINED_FUNCTION_9(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7_0();
  v308 = v38;
  v39 = OUTLINED_FUNCTION_111();
  v40 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(v39);
  v41 = OUTLINED_FUNCTION_9(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_7_0();
  v307 = v44;
  v45 = OUTLINED_FUNCTION_111();
  v46 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(v45);
  v47 = OUTLINED_FUNCTION_9(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_7_0();
  v306 = v50;
  v51 = OUTLINED_FUNCTION_111();
  v52 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(v51);
  v53 = OUTLINED_FUNCTION_9(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_7_0();
  v305 = v56;
  v57 = OUTLINED_FUNCTION_111();
  v58 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(v57);
  v59 = OUTLINED_FUNCTION_9(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = (&v305 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v65 = OUTLINED_FUNCTION_9(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v69 = &v305 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312948, &qword_1C9068D28);
  OUTLINED_FUNCTION_9(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v305 - v74;
  v76 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v77 = OUTLINED_FUNCTION_13_1(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v305 - v81;
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v75, 1, v76) == 1)
  {
    sub_1C8F16378(v75);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319D80, &qword_1C90A7070);
    sub_1C8D4F674(&qword_1EC319D88, &qword_1EC319D80, &qword_1C90A7070);
    OUTLINED_FUNCTION_213();
    *v84 = v76;
    (*(*(v83 - 8) + 104))(v84, *MEMORY[0x1E69E08B0], v83);
    swift_willThrow();
    OUTLINED_FUNCTION_1_67();
    v86 = a1;
LABEL_3:
    sub_1C8F16490(v86, v85);
  }

  else
  {
    sub_1C8F16438();
    sub_1C8F163E0();
    v87 = a1;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v194);
        v195 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v195, v196);
        OUTLINED_FUNCTION_45_0();
        sub_1C8F16438();
        v94 = *v63;

        sub_1C8F16490(v63, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
        v93 = 0;
        v95 = v94 & 0xFFFFFFFFFFFFFF00;
        v97 = 5;
        goto LABEL_52;
      case 2u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v172);
        v173 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v173, v174);
        OUTLINED_FUNCTION_45_0();
        v76 = v305;
        sub_1C8F16438();
        v94 = *v76;

        sub_1C8F16490(v76, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
        v93 = 0;
        v95 = v94 & 0xFFFFFFFFFFFFFF00;
        v97 = 6;
        goto LABEL_52;
      case 3u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v181);
        v182 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v182, v183);
        OUTLINED_FUNCTION_45_0();
        v184 = v306;
        sub_1C8F16438();
        v94 = *v184;
        v76 = v184[1];

        sub_1C8F16490(v184, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
        OUTLINED_FUNCTION_12_33();
        v97 = 7;
        goto LABEL_52;
      case 4u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v152);
        v153 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v153, v154);
        OUTLINED_FUNCTION_45_0();
        v155 = v307;
        sub_1C8F16438();
        v94 = *v155;
        v76 = v155[1];
        v82 = v155[2];
        v156 = v155[3];

        sub_1C8F16490(v155, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
        OUTLINED_FUNCTION_12_33();
        *&v96 = v156;
        v97 = 8;
        goto LABEL_52;
      case 5u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v224);
        v225 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v225, v226);
        OUTLINED_FUNCTION_45_0();
        v227 = v308;
        sub_1C8F16438();
        v94 = *v227;
        v76 = v227[1];

        sub_1C8F16490(v227, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
        OUTLINED_FUNCTION_12_33();
        v97 = 2;
        goto LABEL_52;
      case 6u:
        OUTLINED_FUNCTION_45_0();
        v231 = v313;
        sub_1C8F16438();
        v232 = v312;
        sub_1C8F163E0();
        if (*(v232 + 5))
        {
          v233 = OUTLINED_FUNCTION_94();
          v235 = __swift_instantiateConcreteTypeFromMangledNameV2(v233, v234);
          sub_1C8D4F674(&qword_1EC319D98, &qword_1EC319D90, &qword_1C90A7078);
          swift_allocError();
          *v236 = &type metadata for ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind;
          (*(*(v235 - 8) + 104))(v236, *MEMORY[0x1E69E08B0], v235);
          swift_willThrow();
          OUTLINED_FUNCTION_1_67();
          sub_1C8F16490(v87, v237);
          OUTLINED_FUNCTION_8_42();
          sub_1C8F16490(v232, v238);
          sub_1C8F16490(v231, &qword_1EC319D90);
          v86 = OUTLINED_FUNCTION_0_71();
          goto LABEL_3;
        }

        v300 = *v232;
        v94 = v300 | (*(v232 + 4) << 32);
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(v87, v301);
        OUTLINED_FUNCTION_8_42();
        sub_1C8F16490(v232, v302);
        sub_1C8F16490(v231, v76);
        v303 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v303, v304);
        if ((v94 & 0x100000000) != 0)
        {
          v190 = v315;
          v93 = 0;
          if (v300)
          {
            v95 = 0;
            LOBYTE(v94) = 1;
            v97 = 9;
            LOBYTE(v76) = 1;
          }

          else
          {
            LOBYTE(v94) = 0;
            v95 = 0;
            LOBYTE(v76) = 1;
            v97 = 9;
          }
        }

        else
        {
          LOBYTE(v76) = 0;
          v93 = 0;
          v91 = v300 & 0xFFFFFF00;
          v95 = v91;
          v97 = 9;
LABEL_52:
          v190 = v315;
        }

LABEL_53:
        *v190 = v95 | v94;
        *(v190 + 8) = v93 | v76;
        *(v190 + 16) = v82;
        *(v190 + 24) = v96;
        *(v190 + 40) = v91;
        *(v190 + 48) = v92;
        *(v190 + 56) = v97;
        break;
      case 7u:
        OUTLINED_FUNCTION_45_0();
        v185 = v310;
        sub_1C8F16438();
        sub_1C8D63FCC();
        sub_1C8D60A64();
        v186 = v316;
        sub_1C906351C();
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v187);
        sub_1C8F16490(v185, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
        v188 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v188, v189);
        if (v186)
        {
          return;
        }

        LOBYTE(v94) = v317;
        LOBYTE(v76) = v318;
        v82 = v319;
        OUTLINED_FUNCTION_12_33();
        v190 = v315;
        goto LABEL_53;
      case 8u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v239);
        v240 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v240, v241);
        OUTLINED_FUNCTION_45_0();
        v242 = v311;
        sub_1C8F16438();
        v94 = *v242;
        v76 = v242[1];

        sub_1C8F16490(v242, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
        OUTLINED_FUNCTION_12_33();
        v97 = 1;
        goto LABEL_52;
      case 9u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v169);
        v170 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v170, v171);
        OUTLINED_FUNCTION_45_0();
        v76 = v314;
        sub_1C8F16438();
        v94 = *v76;

        sub_1C8F16490(v76, type metadata accessor for ToolKitProtoSystemToolProtocol.SynthesizedToolProtocol);
        v93 = 0;
        v95 = v94 & 0xFFFFFFFFFFFFFF00;
        v97 = 3;
        goto LABEL_52;
      case 0xAu:
      case 0x3Au:
      case 0x3Bu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v88);
        v89 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v89, v90);
        v82 = 0;
        v91 = 0;
        v92 = 0;
        LOBYTE(v76) = 0;
        v93 = 0;
        LOBYTE(v94) = 0;
        v95 = 0;
        v96 = 0uLL;
        v97 = 10;
        goto LABEL_52;
      case 0xBu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v221);
        v222 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v222, v223);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 3;
        goto LABEL_52;
      case 0xCu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v134);
        v135 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v135, v136);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 4;
        goto LABEL_52;
      case 0xDu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v175);
        v176 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v176, v177);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 5;
        goto LABEL_52;
      case 0xEu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v128);
        v129 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v129, v130);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 6;
        goto LABEL_52;
      case 0xFu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v200);
        v201 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v201, v202);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 7;
        goto LABEL_52;
      case 0x10u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v228);
        v229 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v229, v230);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 8;
        goto LABEL_52;
      case 0x11u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v258);
        v259 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v259, v260);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 11;
        goto LABEL_52;
      case 0x12u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v206);
        v207 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v207, v208);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 12;
        goto LABEL_52;
      case 0x13u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v218);
        v219 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v219, v220);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 13;
        goto LABEL_52;
      case 0x14u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v252);
        v253 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v253, v254);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 14;
        goto LABEL_52;
      case 0x15u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v270);
        v271 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v271, v272);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 15;
        goto LABEL_52;
      case 0x16u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v166);
        v167 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v167, v168);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 16;
        goto LABEL_52;
      case 0x17u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v163);
        v164 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v164, v165);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 17;
        goto LABEL_52;
      case 0x18u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v282);
        v283 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v283, v284);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 18;
        goto LABEL_52;
      case 0x19u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v122);
        v123 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v123, v124);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 19;
        goto LABEL_52;
      case 0x1Au:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v273);
        v274 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v274, v275);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 20;
        goto LABEL_52;
      case 0x1Bu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v276);
        v277 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v277, v278);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 21;
        goto LABEL_52;
      case 0x1Cu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v243);
        v244 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v244, v245);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 22;
        goto LABEL_52;
      case 0x1Du:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v197);
        v198 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v198, v199);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 23;
        goto LABEL_52;
      case 0x1Eu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v246);
        v247 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v247, v248);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 24;
        goto LABEL_52;
      case 0x1Fu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v137);
        v138 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v138, v139);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 25;
        goto LABEL_52;
      case 0x20u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v125);
        v126 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v126, v127);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 26;
        goto LABEL_52;
      case 0x21u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v116);
        v117 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v117, v118);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 27;
        goto LABEL_52;
      case 0x22u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v119);
        v120 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v120, v121);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 28;
        goto LABEL_52;
      case 0x23u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v104);
        v105 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v105, v106);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 29;
        goto LABEL_52;
      case 0x24u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v279);
        v280 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v280, v281);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 30;
        goto LABEL_52;
      case 0x25u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v255);
        v256 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v256, v257);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 31;
        goto LABEL_52;
      case 0x26u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v149);
        v150 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v150, v151);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 32;
        goto LABEL_52;
      case 0x27u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v203);
        v204 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v204, v205);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 33;
        goto LABEL_52;
      case 0x28u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v264);
        v265 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v265, v266);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 34;
        goto LABEL_52;
      case 0x29u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v101);
        v102 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v102, v103);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 35;
        goto LABEL_52;
      case 0x2Au:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v131);
        v132 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v132, v133);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 36;
        goto LABEL_52;
      case 0x2Bu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v249);
        v250 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v250, v251);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 37;
        goto LABEL_52;
      case 0x2Cu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v294);
        v295 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v295, v296);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 38;
        goto LABEL_52;
      case 0x2Du:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v110);
        v111 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v111, v112);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 39;
        goto LABEL_52;
      case 0x2Eu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v140);
        v141 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v141, v142);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 41;
        goto LABEL_52;
      case 0x2Fu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v146);
        v147 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v147, v148);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 42;
        goto LABEL_52;
      case 0x30u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v98);
        v99 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v99, v100);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 43;
        goto LABEL_52;
      case 0x31u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v297);
        v298 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v298, v299);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 44;
        goto LABEL_52;
      case 0x32u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v291);
        v292 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v292, v293);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 45;
        goto LABEL_52;
      case 0x33u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v107);
        v108 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v108, v109);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 46;
        goto LABEL_52;
      case 0x34u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v285);
        v286 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v286, v287);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 47;
        goto LABEL_52;
      case 0x35u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v288);
        v289 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v289, v290);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 48;
        goto LABEL_52;
      case 0x36u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v113);
        v114 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v114, v115);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 49;
        goto LABEL_52;
      case 0x37u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v261);
        v262 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v262, v263);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 50;
        goto LABEL_52;
      case 0x38u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v143);
        v144 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v144, v145);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 52;
        goto LABEL_52;
      case 0x39u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v267);
        v268 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v268, v269);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 53;
        goto LABEL_52;
      case 0x3Cu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v157);
        v158 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v158, v159);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 1;
        goto LABEL_52;
      case 0x3Du:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v209);
        v210 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v210, v211);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 2;
        goto LABEL_52;
      case 0x3Eu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v215);
        v216 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v216, v217);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 9;
        goto LABEL_52;
      case 0x3Fu:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v178);
        v179 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v179, v180);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 40;
        goto LABEL_52;
      case 0x40u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v160);
        v161 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v161, v162);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 10;
        goto LABEL_52;
      case 0x41u:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v212);
        v213 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v213, v214);
        *&v96 = OUTLINED_FUNCTION_2_62();
        LOBYTE(v94) = 51;
        goto LABEL_52;
      default:
        OUTLINED_FUNCTION_1_67();
        sub_1C8F16490(a1, v191);
        v192 = OUTLINED_FUNCTION_0_71();
        sub_1C8F16490(v192, v193);
        OUTLINED_FUNCTION_45_0();
        sub_1C8F16438();
        LOBYTE(v94) = *v69;
        sub_1C8F16490(v69, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
        v93 = 0;
        v95 = 0;
        v97 = 4;
        goto LABEL_52;
    }
  }
}