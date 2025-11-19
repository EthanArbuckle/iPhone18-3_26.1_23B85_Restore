uint64_t PersonalTraitSelector.__allocating_init(configuration:totalNumberOfAssets:)(const void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalTraitSelector.init(configuration:totalNumberOfAssets:)(a1, a2);
  return v4;
}

PhotosIntelligence::PersonalTraitSelector::SelectionResult __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PersonalTraitSelector.selectTraits(from:)(Swift::OpaquePointer from)
{
  v4 = v3;
  v5 = v2;
  v7 = v1;
  v8 = type metadata accessor for PersonalTrait() - 8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v179 = (v11 - v10);
  v12 = *(from._rawValue + 2);
  v13 = &qword_1EC218000;
  if (v12)
  {
    v174 = v9;
    v14 = *(&v2[12].isa + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration);
    rawValue = from._rawValue;
    v187 = MEMORY[0x1E69E7CC0];
    v15 = sub_1C702B198(0, v14);
    sub_1C75504FC();
    v175 = v7;
    if (v15)
    {
      v16 = sub_1C7187A08(from._rawValue);
      v17 = v2;
      rawValue = v16;
      sub_1C75504FC();

      OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8();
      if (!*(v16 + 16))
      {
        v36 = swift_bridgeObjectRelease_n();
        v40 = v187;
        *v7 = MEMORY[0x1E69E7CC0];
        v7[1] = v40;
        goto LABEL_76;
      }

      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      v18 = sub_1C754FEEC();
      v19 = sub_1C75511BC();
      if (os_log_type_enabled(v18, v19))
      {
        v165 = from._rawValue;
        v166 = v18;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        OUTLINED_FUNCTION_46_15(v21, &v188);
        *v20 = 134218755;
        *(v20 + 4) = *(v16 + 16);

        v167 = v20;
        *(v20 + 12) = 2085;
        v22 = *(v16 + 16);
        v172 = v14;
        v170 = v16;
        if (v22)
        {
          v181 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          v23 = v181;
          OUTLINED_FUNCTION_11_33();
          v25 = v16 + v24;
          v176 = *(v26 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            OUTLINED_FUNCTION_39_18();
            v28.isa = v17->isa;
            isa = v17[1].isa;
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v17, v29);
            v30 = *(v181 + 16);
            v17 = (v30 + 1);
            if (v30 >= *(v181 + 24) >> 1)
            {
              OUTLINED_FUNCTION_12_36();
            }

            *(v181 + 16) = v17;
            v31 = (v181 + 16 * v30);
            v31[4].isa = v28.isa;
            v31[5].isa = isa;
            v25 += v176;
            --v22;
          }

          while (v22);
        }

        else
        {

          v23 = MEMORY[0x1E69E7CC0];
        }

        v41 = MEMORY[0x1CCA5D090](v23, MEMORY[0x1E69E6158]);
        v43 = v42;

        v44 = sub_1C6F765A4(v41, v43, v183);

        *(v167 + 14) = v44;
        *(v167 + 22) = 2048;

        *(v167 + 24) = v12;

        *(v167 + 32) = 2085;
        v182 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C();
        v45 = v182;
        OUTLINED_FUNCTION_191();
        v39 = v165 + v46;
        v47 = *(v174 + 72);
        do
        {
          OUTLINED_FUNCTION_1_65();
          sub_1C718AFC8(v39, v179);
          v49 = *v179;
          v48 = v179[1];
          sub_1C75504FC();
          OUTLINED_FUNCTION_0_84();
          sub_1C718B024(v179, v50);
          v180 = v45;
          v51 = *(v45 + 16);
          if (v51 >= *(v45 + 24) >> 1)
          {
            OUTLINED_FUNCTION_12_36();
          }

          *(v45 + 16) = v51 + 1;
          v52 = v45 + 16 * v51;
          *(v52 + 32) = v49;
          *(v52 + 40) = v48;
          v39 += v47;
          --v12;
        }

        while (v12);
        v53 = MEMORY[0x1CCA5D090](v45, MEMORY[0x1E69E6158]);
        v55 = v54;

        v56 = sub_1C6F765A4(v53, v55, v183);

        *(v167 + 34) = v56;
        OUTLINED_FUNCTION_25_18();
        v5 = *(v57 - 256);
        _os_log_impl(v58, v5, v59, v60, v167, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        OUTLINED_FUNCTION_31_19();
        OUTLINED_FUNCTION_47_15();
        v13 = &qword_1EC218000;
        v14 = v172;
        v38 = v170;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v38 = v16;
        v39 = v4;
        v5 = v17;
        v13 = &qword_1EC218000;
      }
    }

    else
    {
      v38 = from._rawValue;
      v39 = v4;
    }

    v61 = &unk_1C756A000;
    if (sub_1C702B198(1, v14))
    {
      v62 = v13;
      v63 = sub_1C75504FC();
      sub_1C71883A0(v63);
      if (v39)
      {
LABEL_51:
        swift_bridgeObjectRelease_n();

        goto LABEL_76;
      }

      v65 = v64;
      v66 = v5;

      OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8();
      sub_1C75504FC();
      v67 = sub_1C754FEEC();
      v68 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_55_13(v68))
      {
        v69 = OUTLINED_FUNCTION_29_19(&v190);
        v70 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_46_15(v70, &v189);
        *v69 = 134218499;
        *(v69 + 4) = v65[2];

        OUTLINED_FUNCTION_35_12();
        *(v69 + 22) = v71;
        v72 = v65[2].isa;
        v73 = MEMORY[0x1E69E7CC0];
        if (v72)
        {
          v170 = v38;
          OUTLINED_FUNCTION_30_21();
          sub_1C6F7ED9C();
          v73 = v180;
          OUTLINED_FUNCTION_191();
          v39 = v65 + v74;
          v75 = *(v174 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            OUTLINED_FUNCTION_39_18();
            v77 = v66->isa;
            v76 = v66[1].isa;
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v66, v78);
            OUTLINED_FUNCTION_52_14();
            if (v79)
            {
              OUTLINED_FUNCTION_12_36();
              v73 = v180;
            }

            *(v73 + 16) = v66;
            v80 = v73 + 16 * v65;
            *(v80 + 32) = v77;
            *(v80 + 40) = v76;
            v39 += v75;
            v72 = (v72 - 1);
          }

          while (v72);
          OUTLINED_FUNCTION_31_19();
          v61 = &unk_1C756A000;
        }

        v81 = MEMORY[0x1CCA5D090](v73, MEMORY[0x1E69E6158]);
        v83 = v82;

        v84 = sub_1C6F765A4(v81, v83, v183);

        *(v69 + 24) = v84;
        OUTLINED_FUNCTION_25_18();
        v86 = *(v85 - 256);
        _os_log_impl(v87, v86, v88, v89, v69, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v165);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        OUTLINED_FUNCTION_47_15();
        v13 = &qword_1EC218000;
        v14 = v172;
      }

      else
      {

        v13 = v62;
      }

      OUTLINED_FUNCTION_58_13();
      rawValue = v65;
    }

    else
    {
      v65 = v38;
    }

    if (sub_1C702B198(2, v14))
    {
      v90 = sub_1C75504FC();
      v91 = sub_1C7188EEC(v90);
      v93 = v92;
      v94 = v91;

      OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8();
      sub_1C75504FC();
      v95 = sub_1C754FEEC();
      v96 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_55_13(v96))
      {
        v166 = v95;
        v172 = v14;
        v97 = swift_slowAlloc();
        v98 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_46_15(v98, &v189);
        *v97 = 134218755;
        *(v97 + 4) = v93[2];

        *(v97 + 12) = 2048;
        *(v97 + 14) = v65[2];
        *(v97 + 22) = 2048;
        *(v97 + 24) = v94;
        *(v97 + 32) = 2085;
        v99 = v93[2].isa;
        v100 = MEMORY[0x1E69E7CC0];
        if (v99)
        {
          OUTLINED_FUNCTION_30_21();
          sub_1C6F7ED9C();
          v100 = v180;
          OUTLINED_FUNCTION_11_33();
          v170 = v93;
          v39 = v93 + v101;
          v103 = *(v102 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            OUTLINED_FUNCTION_39_18();
            v104 = *v13;
            v105 = v13[1];
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v13, v106);
            OUTLINED_FUNCTION_52_14();
            if (v79)
            {
              OUTLINED_FUNCTION_12_36();
              v100 = v180;
            }

            *(v100 + 16) = v13;
            v107 = v100 + 16 * v65;
            *(v107 + 32) = v104;
            *(v107 + 40) = v105;
            v39 += v103;
            v99 = (v99 - 1);
          }

          while (v99);
          OUTLINED_FUNCTION_31_19();
          v108 = v175;
          v93 = v170;
          v61 = &unk_1C756A000;
        }

        else
        {
          v108 = v175;
        }

        v109 = MEMORY[0x1CCA5D090](v100, MEMORY[0x1E69E6158]);
        v111 = v110;

        v112 = sub_1C6F765A4(v109, v111, v183);

        *(v97 + 34) = v112;
        OUTLINED_FUNCTION_25_18();
        v114 = *(v113 - 256);
        _os_log_impl(v115, v114, v116, v117, v97, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v165);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        v14 = v172;
      }

      else
      {

        v108 = v175;
      }

      OUTLINED_FUNCTION_58_13();
      rawValue = v93;
    }

    else
    {
      v93 = v65;
      v108 = v175;
    }

    if (sub_1C702B198(3, v14))
    {
      v118 = sub_1C75504FC();
      v119 = sub_1C71892B4(v118);
      if (v39)
      {
        goto LABEL_51;
      }

      v93 = v119;

      OUTLINED_FUNCTION_58_13();
      rawValue = v93;
      sub_1C75504FC();

      OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8();
      sub_1C75504FC();
      v120 = sub_1C754FEEC();
      v177 = sub_1C75511BC();
      if (os_log_type_enabled(v120, v177))
      {
        v121 = OUTLINED_FUNCTION_29_19(&v191);
        v122 = OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_46_15(v122, &v190);
        *v121 = v61[123];
        *(v121 + 4) = v93[2];

        OUTLINED_FUNCTION_35_12();
        v168 = v121;
        *(v121 + 22) = v123;
        v124 = v93[2].isa;
        if (v124)
        {
          v185 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          v125 = v185;
          OUTLINED_FUNCTION_11_33();
          v127 = v93 + v126;
          v129 = *(v128 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            sub_1C718AFC8(v127, v179);
            v130 = *v179;
            v131 = v179[1];
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v179, v132);
            v185 = v125;
            v134 = *(v125 + 16);
            v133 = *(v125 + 24);
            if (v134 >= v133 >> 1)
            {
              OUTLINED_FUNCTION_15(v133);
              sub_1C6F7ED9C();
              v125 = v185;
            }

            *(v125 + 16) = v134 + 1;
            v135 = v125 + 16 * v134;
            *(v135 + 32) = v130;
            *(v135 + 40) = v131;
            v127 += v129;
            v124 = (v124 - 1);
          }

          while (v124);

          OUTLINED_FUNCTION_31_19();
          v108 = v175;
        }

        else
        {

          v125 = MEMORY[0x1E69E7CC0];
        }

        v136 = MEMORY[0x1CCA5D090](v125, MEMORY[0x1E69E6158]);
        v138 = v137;

        v139 = sub_1C6F765A4(v136, v138, v183);

        *(v168 + 24) = v139;
        _os_log_impl(&dword_1C6F5C000, v170, v177, "Randomly sampled %ld/%ld traits weighted by score: %{sensitive}s", v168, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v166);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        OUTLINED_FUNCTION_47_15();
        v14 = v172;
        v61 = &unk_1C756A000;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    if (sub_1C702B198(5, v14))
    {
      v140 = sub_1C75504FC();
      sub_1C718A1B4();
      v141 = v140;

      OUTLINED_FUNCTION_58_13();
      rawValue = v141;

      v93 = v141;
    }

    v36 = sub_1C702B198(4, v14);
    if (v36)
    {
      v142 = sub_1C75504FC();
      v143 = sub_1C718A208(v142);

      OUTLINED_FUNCTION_34_15();
      sub_1C6FD28D8();
      sub_1C75504FC();
      v144 = sub_1C754FEEC();
      v145 = sub_1C75511BC();
      if (os_log_type_enabled(v144, v145))
      {
        v173 = v145;
        v146 = OUTLINED_FUNCTION_20_1();
        v185 = OUTLINED_FUNCTION_20_1();
        *v146 = v61[123];
        *(v146 + 4) = *(v143 + 16);

        *(v146 + 12) = 2085;
        v147 = v143;
        v148 = *(v143 + 16);
        v149 = MEMORY[0x1E69E7CC0];
        v178 = v147;
        if (v148)
        {
          v169 = v146;
          v171 = v144;
          v184 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          v149 = v184;
          OUTLINED_FUNCTION_11_33();
          v151 = v147 + v150;
          v147 = *(v152 + 72);
          do
          {
            OUTLINED_FUNCTION_1_65();
            sub_1C718AFC8(v151, v179);
            v153 = *v179;
            v154 = v179[1];
            sub_1C75504FC();
            OUTLINED_FUNCTION_0_84();
            sub_1C718B024(v179, v155);
            v184 = v149;
            v157 = *(v149 + 16);
            v156 = *(v149 + 24);
            if (v157 >= v156 >> 1)
            {
              OUTLINED_FUNCTION_15(v156);
              sub_1C6F7ED9C();
              v149 = v184;
            }

            *(v149 + 16) = v157 + 1;
            v158 = v149 + 16 * v157;
            *(v158 + 32) = v153;
            *(v158 + 40) = v154;
            v151 += v147;
            --v148;
          }

          while (v148);
          OUTLINED_FUNCTION_31_19();
          v144 = v171;
          v146 = v169;
        }

        v159 = MEMORY[0x1CCA5D090](v149, MEMORY[0x1E69E6158]);
        v161 = v160;

        v162 = sub_1C6F765A4(v159, v161, &v185);

        *(v146 + 14) = v162;
        *(v146 + 22) = 2048;
        *(v146 + 24) = v93[2];
        _os_log_impl(&dword_1C6F5C000, v144, v173, "Selected final top %ld traits %{sensitive}s from %ld candidates.", v146, 0x20u);
        OUTLINED_FUNCTION_47_15();
        __swift_destroy_boxed_opaque_existential_1(v147);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        v108 = v175;
        v143 = v178;
      }

      else
      {
      }
    }

    else
    {
      v143 = v93;
    }

    v163 = v187;
    *v108 = v143;
    v108[1] = v163;
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
    v33 = sub_1C754FEEC();
    v34 = sub_1C75511BC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1C6F5C000, v33, v34, "There's no traits to select from, returning an empty result of personal traits", v35, 2u);
      OUTLINED_FUNCTION_109();
    }

    *v7 = v32;
    v7[1] = v32;
  }

LABEL_76:
  result.rejectedTraits._rawValue = v37;
  result.selectedTraits._rawValue = v36;
  return result;
}

unint64_t PersonalTraitSelector.SelectionResult.description.getter()
{
  type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = type metadata accessor for PersonalTrait();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = *v0;
  v13 = v0[1];
  v14 = *(*v0 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v40 = v0[1];
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v15 = v46;
    OUTLINED_FUNCTION_191();
    v17 = v12 + v16;
    v42 = *(v8 + 72);
    do
    {
      sub_1C718AFC8(v17, v11);
      OUTLINED_FUNCTION_50_15();
      v18 = PersonalTrait.description.getter();
      MEMORY[0x1CCA5CD70](v18);

      OUTLINED_FUNCTION_0_84();
      sub_1C718B024(v11, v19);
      v21 = *(v46 + 16);
      v20 = *(v46 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_15(v20);
        sub_1C6F7ED9C();
      }

      *(v46 + 16) = v21 + 1;
      v22 = v46 + 16 * v21;
      *(v22 + 32) = v44;
      *(v22 + 40) = v45;
      v17 += v42;
      --v14;
    }

    while (v14);
    v13 = v40;
  }

  v23 = OUTLINED_FUNCTION_57_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23);
  sub_1C718DE9C(&qword_1EDD0CF58);
  v24 = OUTLINED_FUNCTION_40_18();
  v26 = v25;

  v27 = *(v13 + 16);
  if (v27)
  {
    v41 = v24;
    v43 = v26;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    OUTLINED_FUNCTION_191();
    v29 = v13 + v28;
    v30 = *(v2 + 72);
    do
    {
      sub_1C718AFC8(v29, v6);
      OUTLINED_FUNCTION_50_15();
      v31 = PersonalTrait.description.getter();
      MEMORY[0x1CCA5CD70](v31);

      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v32 = PersonalTraitSelector.RejectionReason.description.getter();
      MEMORY[0x1CCA5CD70](v32);

      sub_1C718B024(v6, type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait);
      v34 = *(v47 + 16);
      v33 = *(v47 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_15(v33);
        sub_1C6F7ED9C();
      }

      *(v47 + 16) = v34 + 1;
      v35 = v47 + 16 * v34;
      *(v35 + 32) = v15;
      *(v35 + 40) = v45;
      v29 += v30;
      --v27;
    }

    while (v27);
    v24 = v41;
    v26 = v43;
  }

  v36 = OUTLINED_FUNCTION_40_18();
  v38 = v37;

  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v24, v26);

  MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A1E10);
  MEMORY[0x1CCA5CD70](v36, v38);

  return 0xD000000000000011;
}

uint64_t sub_1C71836B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461676572676761 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C75A2070 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x80000001C75A2090 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C75A20B0 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746C69464E706F74 && a2 == 0xED0000676E697265;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1953656691 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C7551DBC();

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

unint64_t sub_1C71838B4(char a1)
{
  result = 0x7461676572676761;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x746C69464E706F74;
      break;
    case 5:
      result = 1953656691;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7183988(uint64_t a1)
{
  v2 = sub_1C718B274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71839C4(uint64_t a1)
{
  v2 = sub_1C718B274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71836B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7183A30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C71838AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C7183A58(uint64_t a1)
{
  v2 = sub_1C718B07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183A94(uint64_t a1)
{
  v2 = sub_1C718B07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183AD0(uint64_t a1)
{
  v2 = sub_1C718B1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183B0C(uint64_t a1)
{
  v2 = sub_1C718B1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183B48(uint64_t a1)
{
  v2 = sub_1C718B178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183B84(uint64_t a1)
{
  v2 = sub_1C718B178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183BC0(uint64_t a1)
{
  v2 = sub_1C718B0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183BFC(uint64_t a1)
{
  v2 = sub_1C718B0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183C38(uint64_t a1)
{
  v2 = sub_1C718B220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183C74(uint64_t a1)
{
  v2 = sub_1C718B220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7183CB0(uint64_t a1)
{
  v2 = sub_1C718B124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7183CEC(uint64_t a1)
{
  v2 = sub_1C718B124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTraitSelector.Step.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218488);
  OUTLINED_FUNCTION_3_0();
  v49 = v6;
  v50 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v48 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218490);
  OUTLINED_FUNCTION_3_0();
  v46 = v10;
  v47 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36();
  v45 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218498);
  OUTLINED_FUNCTION_3_0();
  v43 = v14;
  v44 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_36();
  v42 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184A0);
  OUTLINED_FUNCTION_3_0();
  v40 = v18;
  v41 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_36();
  v39 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184A8);
  OUTLINED_FUNCTION_3_0();
  v37 = v22;
  v38 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_28_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184B0);
  OUTLINED_FUNCTION_3_0();
  v35 = v25;
  v36 = v24;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v35 - v27;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184B8);
  OUTLINED_FUNCTION_3_0();
  v30 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_158();
  v32 = *v0;
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C718B07C();
  sub_1C755200C();
  switch(v32)
  {
    case 1:
      sub_1C718B220();
      v32 = v51;
      OUTLINED_FUNCTION_20_29();
      sub_1C7551C6C();
      (*(v37 + 8))(v2, v38);
      goto LABEL_9;
    case 2:
      sub_1C718B1CC();
      v28 = v39;
      OUTLINED_FUNCTION_9_0();
      v34 = v40;
      v33 = v41;
      goto LABEL_8;
    case 3:
      sub_1C718B178();
      v28 = v42;
      OUTLINED_FUNCTION_9_0();
      v34 = v43;
      v33 = v44;
      goto LABEL_8;
    case 4:
      sub_1C718B124();
      v28 = v45;
      OUTLINED_FUNCTION_9_0();
      v34 = v46;
      v33 = v47;
      goto LABEL_8;
    case 5:
      sub_1C718B0D0();
      v28 = v48;
      OUTLINED_FUNCTION_9_0();
      v34 = v49;
      v33 = v50;
      goto LABEL_8;
    default:
      sub_1C718B274();
      OUTLINED_FUNCTION_9_0();
      v34 = v35;
      v33 = v36;
LABEL_8:
      (*(v34 + 8))(v28, v33);
LABEL_9:
      (*(v30 + 8))(v1, v32);
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t PersonalTraitSelector.Step.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_57_13();
  return sub_1C7551FAC();
}

void PersonalTraitSelector.Step.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v5 = v4;
  v67 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2184F8);
  OUTLINED_FUNCTION_3_0();
  v63 = v7;
  v64 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v65 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218500);
  OUTLINED_FUNCTION_3_0();
  v61 = v11;
  v62 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v70 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218508);
  OUTLINED_FUNCTION_3_0();
  v59 = v16;
  v60 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_36();
  v66 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218510);
  OUTLINED_FUNCTION_3_0();
  v57 = v20;
  v58 = v19;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_36();
  v69 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218518);
  OUTLINED_FUNCTION_3_0();
  v55 = v24;
  v56 = v23;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_390();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218520);
  OUTLINED_FUNCTION_3_0();
  v54 = v27;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_28_15();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218528);
  OUTLINED_FUNCTION_3_0();
  v68 = v30;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_70(v5, v5[3]);
  sub_1C718B07C();
  sub_1C7551FFC();
  if (v0)
  {
    goto LABEL_10;
  }

  v52 = v26;
  v53 = v5;
  v32 = v69;
  v33 = sub_1C7551C5C();
  sub_1C6FD80E0(v33, 0);
  v37 = v29;
  if (v35 == v36 >> 1)
  {
    v38 = v68;
LABEL_9:
    v44 = sub_1C75518EC();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v46 = &type metadata for PersonalTraitSelector.Step;
    sub_1C7551B5C();
    OUTLINED_FUNCTION_588();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v2, v37);
    v5 = v53;
LABEL_10:
    v47 = v5;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_125();
    return;
  }

  if (v35 < (v36 >> 1))
  {
    v39 = *(v34 + v35);
    sub_1C6FD80C8(v35 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    if (v41 == v43 >> 1)
    {
      switch(v39)
      {
        case 1:
          sub_1C718B220();
          v32 = v1;
          OUTLINED_FUNCTION_16_28();
          swift_unknownObjectRelease();
          v49 = v55;
          v48 = v56;
          goto LABEL_17;
        case 2:
          sub_1C718B1CC();
          OUTLINED_FUNCTION_16_28();
          swift_unknownObjectRelease();
          v49 = v57;
          v48 = v58;
          goto LABEL_17;
        case 3:
          sub_1C718B178();
          v32 = v66;
          OUTLINED_FUNCTION_16_28();
          swift_unknownObjectRelease();
          v49 = v59;
          v48 = v60;
          goto LABEL_17;
        case 4:
          sub_1C718B124();
          sub_1C7551B4C();
          swift_unknownObjectRelease();
          (*(v62 + 8))(v70, v61);
          break;
        case 5:
          sub_1C718B0D0();
          v32 = v65;
          OUTLINED_FUNCTION_16_28();
          swift_unknownObjectRelease();
          v48 = v63;
          v49 = v64;
LABEL_17:
          (*(v49 + 8))(v32, v48);
          break;
        default:
          sub_1C718B274();
          OUTLINED_FUNCTION_16_28();
          swift_unknownObjectRelease();
          (*(v54 + 8))(v3, v52);
          break;
      }

      v50 = OUTLINED_FUNCTION_57_3();
      v51(v50);
      *v67 = v39;
      v47 = v53;
      goto LABEL_11;
    }

    v38 = v68;
    v37 = v29;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C71849B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657463656C6573 && a2 == 0xEE00737469617254;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657463656A6572 && a2 == 0xEE00737469617254)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C7184A8C(char a1)
{
  if (a1)
  {
    return 0x64657463656A6572;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_1C7184AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71849B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7184AF8(uint64_t a1)
{
  v2 = sub_1C718D988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7184B34(uint64_t a1)
{
  v2 = sub_1C718D988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTraitSelector.SelectionResult.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218530);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v10 = *(v0 + 8);
  OUTLINED_FUNCTION_70(v2, v2[3]);
  v9 = sub_1C718D988();
  sub_1C75504FC();
  sub_1C755200C();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
  sub_1C718DAB4(&unk_1EDD06BC8);
  OUTLINED_FUNCTION_13_4();

  if (!v9)
  {
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218540);
    sub_1C718D9DC(&unk_1EC218548);
    OUTLINED_FUNCTION_13_4();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

void PersonalTraitSelector.SelectionResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218558);
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v21 - v19;
  OUTLINED_FUNCTION_70(v12, v12[3]);
  sub_1C718D988();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
    v22 = 0;
    sub_1C718DAB4(&qword_1EDD06BC0);
    OUTLINED_FUNCTION_10_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218540);
    v22 = 1;
    sub_1C718D9DC(&unk_1EC218560);
    OUTLINED_FUNCTION_10_34();
    (*(v17 + 8))(v20, v15);
    *v14 = a10;
    v14[1] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t PersonalTraitSelector.RejectedPersonalTrait.reason.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  OUTLINED_FUNCTION_7_40();
  return sub_1C718AFC8(v1 + v3, a1);
}

uint64_t sub_1C718502C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469617274 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C71850EC(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x7469617274;
  }
}

uint64_t sub_1C7185124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C718502C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C718514C(uint64_t a1)
{
  v2 = sub_1C718DB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7185188(uint64_t a1)
{
  v2 = sub_1C718DB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalTraitSelector.RejectedPersonalTrait.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218570);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C718DB58();
  sub_1C755200C();
  type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_3_57();
  sub_1C718DA70(v8);
  OUTLINED_FUNCTION_53_17();
  if (!v1)
  {
    type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
    type metadata accessor for PersonalTraitSelector.RejectionReason(0);
    OUTLINED_FUNCTION_17_36();
    sub_1C718DA70(v9);
    OUTLINED_FUNCTION_53_17();
  }

  return (*(v6 + 8))(v2, v4);
}

void PersonalTraitSelector.RejectedPersonalTrait.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v21 = v4;
  type metadata accessor for PersonalTraitSelector.RejectionReason(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v23 = v11 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218588);
  OUTLINED_FUNCTION_3_0();
  v22 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_28_15();
  v14 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C718DB58();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_3_57();
    sub_1C718DA70(v19);
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_6_48();
    sub_1C718DBAC(v23, v18);
    OUTLINED_FUNCTION_17_36();
    sub_1C718DA70(v20);
    OUTLINED_FUNCTION_54_16();
    (*(v22 + 8))(v1, v24);
    sub_1C718DBAC(v8, v18 + *(v14 + 20));
    sub_1C718AFC8(v18, v21);
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C718B024(v18, type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t PersonalTraitSelector.Error.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_57_13();
  return sub_1C7551FAC();
}

uint64_t PersonalTraitSelector.RejectionReason.description.getter()
{
  v1 = v0;
  type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  type metadata accessor for PersonalTraitSelector.RejectionReason(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = (v8 - v7);
  OUTLINED_FUNCTION_7_40();
  sub_1C718AFC8(v1, v9);
  OUTLINED_FUNCTION_57_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v31 = swift_allocObject();
      v32 = MEMORY[0x1E69E63B0];
      v33 = MEMORY[0x1E69E6438];
      *(v31 + 16) = xmmword_1C755BAB0;
      *(v31 + 56) = v32;
      *(v31 + 64) = v33;
      *(v31 + 32) = v30;
      return sub_1C75506BC();
    case 2u:
      v16 = *v9;
      v17 = v9[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C75604F0;
      v19 = MEMORY[0x1E69E63B0];
      v20 = MEMORY[0x1E69E6438];
      *(v18 + 56) = MEMORY[0x1E69E63B0];
      *(v18 + 64) = v20;
      *(v18 + 32) = v16;
      *(v18 + 96) = v19;
      *(v18 + 104) = v20;
      *(v18 + 72) = v17;
      return sub_1C75506BC();
    case 3u:
      v21 = *v9;
      v22 = v9[1];
      v23 = v9[2];
      v24 = v9[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C755F060;
      v26 = MEMORY[0x1E69E6530];
      v27 = MEMORY[0x1E69E65A8];
      *(v25 + 56) = MEMORY[0x1E69E6530];
      *(v25 + 64) = v27;
      *(v25 + 32) = v21;
      *(v25 + 96) = v26;
      *(v25 + 104) = v27;
      *(v25 + 72) = v22;
      v28 = MEMORY[0x1E69E63B0];
      v29 = MEMORY[0x1E69E6438];
      *(v25 + 136) = MEMORY[0x1E69E63B0];
      *(v25 + 144) = v29;
      *(v25 + 112) = v23;
      *(v25 + 176) = v28;
      *(v25 + 184) = v29;
      *(v25 + 152) = v24;
      return sub_1C75506BC();
    case 4u:
      v12 = v9[1];
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000030, 0x80000001C75A1E30);
      v13 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v13);

      result = MEMORY[0x1CCA5CD70](0x203A6B6E6152202CLL, 0xE800000000000000);
      if (__OFADD__(v12, 1))
      {
        __break(1u);
      }

      else
      {
        v15 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v15);

        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        return 0;
      }

      return result;
    default:
      OUTLINED_FUNCTION_6_48();
      sub_1C718DBAC(v9, v5);
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000003FLL, 0x80000001C75A1F70);
      sub_1C7550F5C();
      MEMORY[0x1CCA5CD70](0x756F7320646E6120, 0xEC00000020656372);
      sub_1C75519EC();
      v10 = 0;
      OUTLINED_FUNCTION_0_84();
      sub_1C718B024(v5, v11);
      return v10;
  }
}

uint64_t sub_1C7185B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74696D696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C7185C20(char a1)
{
  if (a1)
  {
    return 1802396018;
  }

  else
  {
    return 0x74696D696CLL;
  }
}

uint64_t sub_1C7185C4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C7185D18(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x6C6F687365726874;
  }
}

uint64_t sub_1C7185D50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365726854666463 && a2 == 0xEC000000646C6F68)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7185DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63696C7075646564 && a2 == 0xEC00000064657461;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x80000001C75A20D0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C75A20F0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001C75A2110 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C75A2130 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C7185F94(char a1)
{
  result = 0x63696C7075646564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7186058(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7254726574746562 && a2 == 0xEB00000000746961)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C71860F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616C75706F70 && a2 == 0xEE00657A69536E6FLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6953656C706D6173 && a2 == 0xEA0000000000657ALL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

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

uint64_t sub_1C7186264(char a1)
{
  result = 0x6974616C75706F70;
  switch(a1)
  {
    case 1:
      result = 0x6953656C706D6173;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x6C696261626F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7186310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7185B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7186338(uint64_t a1)
{
  v2 = sub_1C718DC5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7186374(uint64_t a1)
{
  v2 = sub_1C718DC5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C71863B0()
{
  sub_1C7551F3C();
  OUTLINED_FUNCTION_57_13();
  return sub_1C7551FAC();
}

uint64_t sub_1C71863F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7185C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C718641C(uint64_t a1)
{
  v2 = sub_1C718DD04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7186458(uint64_t a1)
{
  v2 = sub_1C718DD04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7186498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7185D50(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C71864C4(uint64_t a1)
{
  v2 = sub_1C718DD58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7186500(uint64_t a1)
{
  v2 = sub_1C718DD58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7186544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7185DEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C718656C(uint64_t a1)
{
  v2 = sub_1C718DC08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71865A8(uint64_t a1)
{
  v2 = sub_1C718DC08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C71865E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7186058(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C7186614(uint64_t a1)
{
  v2 = sub_1C718DDAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7186650(uint64_t a1)
{
  v2 = sub_1C718DDAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7186694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71860F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71866BC(uint64_t a1)
{
  v2 = sub_1C718DCB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71866F8(uint64_t a1)
{
  v2 = sub_1C718DCB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalTraitSelector.RejectionReason.encode(to:)(void *a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218598);
  OUTLINED_FUNCTION_3_0();
  v57 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v56 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185A0);
  OUTLINED_FUNCTION_3_0();
  v60 = v8;
  v61 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v58 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185A8);
  OUTLINED_FUNCTION_3_0();
  v54 = v12;
  v55 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v53 = v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185B0);
  OUTLINED_FUNCTION_3_0();
  v50 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_158();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185B8);
  OUTLINED_FUNCTION_3_0();
  v49 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v48 - v19;
  v48[1] = type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v24 = v23 - v22;
  v25 = type metadata accessor for PersonalTraitSelector.RejectionReason(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_0();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185C0);
  OUTLINED_FUNCTION_3_0();
  v65 = v30;
  v66 = v31;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_390();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C718DC08();
  v64 = v1;
  sub_1C755200C();
  OUTLINED_FUNCTION_7_40();
  sub_1C718AFC8(v62, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v68 = 1;
      sub_1C718DD58();
      v34 = v64;
      v33 = v65;
      OUTLINED_FUNCTION_20_29();
      sub_1C7551C6C();
      v47 = v52;
      sub_1C7551CEC();
      (*(v50 + 8))(v2, v47);
      goto LABEL_14;
    case 2u:
      v71 = 2;
      sub_1C718DD04();
      v42 = v53;
      v34 = v64;
      v33 = v65;
      OUTLINED_FUNCTION_20_29();
      sub_1C7551C6C();
      v70 = 0;
      v43 = v55;
      v44 = v63;
      sub_1C7551CEC();
      if (!v44)
      {
        v69 = 1;
        sub_1C7551CEC();
      }

      (*(v54 + 8))(v42, v43);
      goto LABEL_14;
    case 3u:
      v76 = 3;
      sub_1C718DCB0();
      v38 = v58;
      OUTLINED_FUNCTION_41_16();
      v75 = 0;
      v39 = v61;
      OUTLINED_FUNCTION_48_14();
      v45 = v63;
      sub_1C7551D0C();
      if (!v45)
      {
        v74 = 1;
        OUTLINED_FUNCTION_48_14();
        sub_1C7551D0C();
        v73 = 2;
        sub_1C7551CEC();
        v72 = 3;
        sub_1C7551CEC();
      }

      v41 = v60;
      goto LABEL_12;
    case 4u:
      v79 = 4;
      sub_1C718DC5C();
      v38 = v56;
      OUTLINED_FUNCTION_41_16();
      v78 = 0;
      v39 = v59;
      OUTLINED_FUNCTION_48_14();
      v40 = v63;
      sub_1C7551D0C();
      if (!v40)
      {
        v77 = 1;
        OUTLINED_FUNCTION_48_14();
        sub_1C7551D0C();
      }

      v41 = v57;
LABEL_12:
      (*(v41 + 8))(v38, v39);
      result = (*(v66 + 8))(v25, v29);
      break;
    default:
      sub_1C718DBAC(v29, v24);
      v67 = 0;
      sub_1C718DDAC();
      v34 = v64;
      v33 = v65;
      OUTLINED_FUNCTION_20_29();
      sub_1C7551C6C();
      OUTLINED_FUNCTION_3_57();
      sub_1C718DA70(v35);
      v36 = v51;
      sub_1C7551D2C();
      (*(v49 + 8))(v20, v36);
      OUTLINED_FUNCTION_0_84();
      sub_1C718B024(v24, v37);
LABEL_14:
      result = (*(v66 + 8))(v34, v33);
      break;
  }

  return result;
}

uint64_t PersonalTraitSelector.RejectionReason.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2185F8);
  OUTLINED_FUNCTION_3_0();
  v118 = v4;
  v119 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_36();
  v124 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218600);
  OUTLINED_FUNCTION_3_0();
  v120 = v7;
  v121 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_36();
  v123 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218608);
  OUTLINED_FUNCTION_3_0();
  v116 = v12;
  v117 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_36();
  v130 = v14;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218610);
  OUTLINED_FUNCTION_3_0();
  v114 = v15;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_36();
  v122 = v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218618);
  OUTLINED_FUNCTION_3_0();
  v112 = v18;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_36();
  v125 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218620);
  OUTLINED_FUNCTION_3_0();
  v128 = v22;
  v129 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v106 - v24;
  v127 = type metadata accessor for PersonalTraitSelector.RejectionReason(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  v111 = (v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v30 = (v106 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v106 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v106 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v106 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v106 - v41;
  v43 = a1[3];
  v131 = a1;
  OUTLINED_FUNCTION_70(a1, v43);
  sub_1C718DC08();
  v44 = v132;
  sub_1C7551FFC();
  if (v44)
  {
    goto LABEL_8;
  }

  v109 = v36;
  v108 = v33;
  v110 = v39;
  v107 = v30;
  v45 = v129;
  v132 = v42;
  v46 = sub_1C7551C5C();
  result = sub_1C6FD80E0(v46, 0);
  if (v49 == v50 >> 1)
  {
LABEL_7:
    v60 = v127;
    v61 = sub_1C75518EC();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v63 = v60;
    sub_1C7551B5C();
    OUTLINED_FUNCTION_588();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    v64 = OUTLINED_FUNCTION_8_35();
    v65(v64);
LABEL_8:
    v66 = v131;
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v106[1] = 0;
  if (v49 < (v50 >> 1))
  {
    v51 = *(v48 + v49);
    sub_1C6FD80C8(v49 + 1);
    v53 = v52;
    v55 = v54;
    swift_unknownObjectRelease();
    v56 = v132;
    if (v53 == v55 >> 1)
    {
      v57 = v126;
      switch(v51)
      {
        case 1:
          v134 = 1;
          sub_1C718DD58();
          OUTLINED_FUNCTION_15_36();
          sub_1C7551BDC();
          v82 = v81;
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_32_15();
          v84(v83);
          v85 = OUTLINED_FUNCTION_8_35();
          v86(v85);
          v87 = v109;
          *v109 = v82;
          swift_storeEnumTagMultiPayload();
          v80 = v87;
          v79 = v131;
          goto LABEL_14;
        case 2:
          v137 = 2;
          sub_1C718DD04();
          OUTLINED_FUNCTION_15_36();
          v136 = 0;
          OUTLINED_FUNCTION_33_18();
          sub_1C7551BDC();
          v68 = v128;
          v70 = v69;
          v135 = 1;
          OUTLINED_FUNCTION_33_18();
          sub_1C7551BDC();
          v95 = v94;
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_14_34();
          v97(v96);
          (*(v68 + 8))(v25, v45);
          v98 = v108;
          *v108 = v70;
          v98[1] = v95;
          swift_storeEnumTagMultiPayload();
          v80 = v98;
          goto LABEL_15;
        case 3:
          v142 = 3;
          sub_1C718DCB0();
          OUTLINED_FUNCTION_15_36();
          v141 = 0;
          v71 = sub_1C7551BFC();
          v140 = 1;
          v72 = sub_1C7551BFC();
          v139 = 2;
          OUTLINED_FUNCTION_33_18();
          sub_1C7551BDC();
          v74 = v73;
          v138 = 3;
          OUTLINED_FUNCTION_33_18();
          sub_1C7551BDC();
          v100 = v99;
          swift_unknownObjectRelease();
          v101 = OUTLINED_FUNCTION_14_34();
          v102(v101);
          v103 = OUTLINED_FUNCTION_8_35();
          v104(v103);
          v105 = v107;
          *v107 = v71;
          v105[1] = v72;
          v105[2] = v74;
          v105[3] = v100;
          swift_storeEnumTagMultiPayload();
          v80 = v105;
          v79 = v131;
          v56 = v132;
          break;
        case 4:
          v145 = 4;
          sub_1C718DC5C();
          OUTLINED_FUNCTION_15_36();
          v144 = 0;
          v67 = sub_1C7551BFC();
          v143 = 1;
          OUTLINED_FUNCTION_33_18();
          v130 = sub_1C7551BFC();
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_14_34();
          v89(v88);
          v90 = OUTLINED_FUNCTION_8_35();
          v91(v90);
          v92 = v111;
          v93 = v130;
          *v111 = v67;
          v92[1] = v93;
          swift_storeEnumTagMultiPayload();
          v80 = v92;
LABEL_15:
          v79 = v131;
          break;
        default:
          v133 = 0;
          sub_1C718DDAC();
          OUTLINED_FUNCTION_15_36();
          type metadata accessor for PersonalTrait();
          OUTLINED_FUNCTION_3_57();
          sub_1C718DA70(v58);
          v59 = v110;
          sub_1C7551C1C();
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_14_34();
          v76(v75);
          v77 = OUTLINED_FUNCTION_8_35();
          v78(v77);
          swift_storeEnumTagMultiPayload();
          v79 = v131;
          v80 = v59;
LABEL_14:
          v57 = v126;
          break;
      }

      sub_1C718DBAC(v80, v56);
      sub_1C718DBAC(v56, v57);
      v66 = v79;
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t PersonalTraitSelector.init(configuration:totalNumberOfAssets:)(const void *a1, uint64_t a2)
{
  sub_1C754FEFC();
  memcpy((v2 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration), a1, 0xD8uLL);
  *(v2 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_totalNumberOfAssets) = a2;
  return v2;
}

uint64_t sub_1C7187A08(uint64_t a1)
{
  v2 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PersonalTrait();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v71 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v71 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - v18;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v81 = v17;
  v78 = MEMORY[0x1E69E7CC0];
  v21 = sub_1C75504DC();
  v22 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v83 = *(v5 + 72);
  v79 = v4;
  while (1)
  {
    sub_1C718AFC8(v22, v19);
    v23 = sub_1C75506FC();
    v25 = v23;
    v26 = v24;
    if (v21[2])
    {
      v27 = sub_1C6F78124(v23, v24);
      if (v28)
      {
        v29 = v75;
        sub_1C718AFC8(v21[7] + v27 * v83, v75);
        v30 = v29;
        v31 = v81;
        sub_1C718DBAC(v30, v81);
        v32 = *(v4 + 36);
        v33 = *(v31 + v32);
        v34 = *&v19[v32];
        if (v33 != v34)
        {
          if (v34 >= v33)
          {
            v46 = v19;
          }

          else
          {
            v46 = v31;
          }

          if (v34 >= v33)
          {
            v47 = v31;
          }

          else
          {
            v47 = v19;
          }

LABEL_42:
          v52 = v77;
          sub_1C718AFC8(v46, v77);
          sub_1C718AFC8(v47, v80);
          if (sub_1C754DFAC())
          {
            sub_1C718AFC8(v52, v74);
            swift_isUniquelyReferenced_nonNull_native();
            v84 = v21;
            v53 = sub_1C6F78124(v25, v26);
            if (__OFADD__(v21[2], (v54 & 1) == 0))
            {
              goto LABEL_63;
            }

            v55 = v53;
            v56 = v54;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2187E0);
            if (sub_1C7551A2C())
            {
              v57 = sub_1C6F78124(v25, v26);
              v4 = v79;
              if ((v56 & 1) != (v58 & 1))
              {
                goto LABEL_65;
              }

              v55 = v57;
            }

            else
            {
              v4 = v79;
            }

            v21 = v84;
            if ((v56 & 1) == 0)
            {
              v84[(v55 >> 6) + 8] |= 1 << v55;
              v59 = (v21[6] + 16 * v55);
              *v59 = v25;
              v59[1] = v26;
              sub_1C718DBAC(v74, v21[7] + v55 * v83);
              v60 = v21[2];
              v44 = __OFADD__(v60, 1);
              v61 = v60 + 1;
              if (v44)
              {
                goto LABEL_64;
              }

              v21[2] = v61;
              goto LABEL_53;
            }

            sub_1C718F5D4(v74, v84[7] + v55 * v83);
          }

LABEL_53:
          v62 = v76;
          sub_1C718AFC8(v80, v76);
          v63 = v77;
          sub_1C718AFC8(v77, v62 + *(v73 + 20));
          type metadata accessor for PersonalTraitSelector.RejectionReason(0);
          swift_storeEnumTagMultiPayload();
          v64 = v78;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB2B90(0, *(v64 + 16) + 1, 1, v64);
            v64 = v68;
          }

          v66 = *(v64 + 16);
          v65 = *(v64 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1C6FB2B90(v65 > 1, v66 + 1, 1, v64);
            v64 = v69;
          }

          sub_1C718B024(v80, type metadata accessor for PersonalTrait);
          sub_1C718B024(v63, type metadata accessor for PersonalTrait);
          sub_1C718B024(v81, type metadata accessor for PersonalTrait);
          *(v64 + 16) = v66 + 1;
          v67 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          v78 = v64;
          sub_1C718DBAC(v76, v64 + v67 + *(v72 + 72) * v66);
          goto LABEL_58;
        }

        v35 = *(v4 + 28);
        if (*(v31 + v35) && *(v31 + v35) != 1)
        {
        }

        else
        {
          v48 = sub_1C7551DBC();

          if ((v48 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        if (v19[*(v4 + 28)] && v19[*(v4 + 28)] != 1)
        {
        }

        else
        {
          v49 = sub_1C7551DBC();

          v46 = v81;
          v47 = v19;
          if ((v49 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

LABEL_31:
        if (v19[*(v4 + 28)] && v19[*(v4 + 28)] != 1)
        {
        }

        else
        {
          v50 = sub_1C7551DBC();

          v46 = v81;
          v47 = v19;
          if ((v50 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        if (*(v81 + v35) && *(v81 + v35) != 1)
        {
        }

        else
        {
          v51 = sub_1C7551DBC();

          v46 = v19;
          v47 = v81;
          if ((v51 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v46 = v81;
        v47 = v19;
        goto LABEL_42;
      }
    }

    sub_1C718AFC8(v19, v82);
    swift_isUniquelyReferenced_nonNull_native();
    v84 = v21;
    v36 = sub_1C6F78124(v25, v26);
    if (__OFADD__(v21[2], (v37 & 1) == 0))
    {
      break;
    }

    v38 = v36;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2187E0);
    if (sub_1C7551A2C())
    {
      v40 = sub_1C6F78124(v25, v26);
      v4 = v79;
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_65;
      }

      v38 = v40;
      if (v39)
      {
LABEL_16:

        v21 = v84;
        sub_1C718F5D4(v82, v84[7] + v38 * v83);
        goto LABEL_58;
      }
    }

    else
    {
      v4 = v79;
      if (v39)
      {
        goto LABEL_16;
      }
    }

    v21 = v84;
    v84[(v38 >> 6) + 8] |= 1 << v38;
    v42 = (v21[6] + 16 * v38);
    *v42 = v25;
    v42[1] = v26;
    sub_1C718DBAC(v82, v21[7] + v38 * v83);
    v43 = v21[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_62;
    }

    v21[2] = v45;
LABEL_58:
    sub_1C718B024(v19, type metadata accessor for PersonalTrait);
    v22 += v83;
    if (!--v20)
    {
      return sub_1C71CD990(v21);
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C71883A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v102 = &v100 - v3;
  v4 = type metadata accessor for PersonalTrait();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v100 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v100 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - v19;
  v21 = 0;
  v110 = *(a1 + 16);
  v111 = v110;
  v22 = &v100 - v19 + 16;
  v108 = MEMORY[0x1E69E7CC0];
  v109 = v23;
  v105 = a1;
  while (v111 != v21)
  {
    v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v25 = *(v5 + 72);
    sub_1C718AFC8(a1 + v24 + v25 * v21, v20);
    if (v22[*(v4 + 32)])
    {
      v26 = v22[*(v4 + 32)] == 3;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      sub_1C718DBAC(v20, v107);
      v27 = v108;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v27;
      v112 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716E058();
        a1 = v105;
        v29 = v112;
      }

      v30 = *(v29 + 16);
      v31 = v30 + 1;
      if (v30 >= *(v29 + 24) >> 1)
      {
        v108 = v30 + 1;
        sub_1C716E058();
        v31 = v108;
        a1 = v105;
        v29 = v112;
      }

      ++v21;
      *(v29 + 16) = v31;
      v108 = v29;
      sub_1C718DBAC(v107, v29 + v24 + v30 * v25);
      v4 = v109;
    }

    else
    {
      sub_1C718B024(v20, type metadata accessor for PersonalTrait);
      ++v21;
    }
  }

  v32 = 0;
  v107 = MEMORY[0x1E69E7CC0];
  while (v111 != v32)
  {
    v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v34 = *(v5 + 72);
    sub_1C718AFC8(a1 + v33 + v34 * v32, v15);
    v35 = v15[*(v4 + 32) + 16];
    v36 = v35 > 4;
    v37 = (1 << v35) & 0x16;
    if (v36 || v37 == 0)
    {
      sub_1C718B024(v15, type metadata accessor for PersonalTrait);
      ++v32;
    }

    else
    {
      sub_1C718DBAC(v15, v106);
      v39 = v107;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v39;
      v112 = v39;
      if ((v40 & 1) == 0)
      {
        sub_1C716E058();
        a1 = v105;
        v41 = v112;
      }

      v42 = *(v41 + 16);
      if (v42 >= *(v41 + 24) >> 1)
      {
        sub_1C716E058();
        a1 = v105;
        v41 = v112;
      }

      ++v32;
      *(v41 + 16) = v42 + 1;
      v107 = v41;
      sub_1C718DBAC(v106, v41 + v33 + v42 * v34);
      v4 = v109;
    }
  }

  v43 = v104;
  v44 = v101;
  if (v110)
  {
    v45 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v46 = v105 + v45;
    v47 = *(v5 + 72);
    while (1)
    {
      sub_1C718AFC8(v46, v44);
      if (*(v44 + *(v4 + 28)))
      {
        if (*(v44 + *(v4 + 28)) != 1)
        {
          break;
        }
      }

      v48 = sub_1C7551DBC();

      if (v48)
      {
        goto LABEL_34;
      }

      sub_1C718B024(v44, type metadata accessor for PersonalTrait);
      v46 += v47;
      if (!--v110)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v52 = v102;
    sub_1C718DBAC(v44, v102);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v4);
    sub_1C6FD7FC8(v52, &qword_1EC217A18);
    v53 = 0;
    v54 = v108;
    v55 = *(v108 + 16);
    v110 = v45;
    v56 = v108 + v45;
    v57 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v58 = v56;
    v59 = v56 + v47 * v53;
    while (v55 != v53)
    {
      if (v53 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      sub_1C718AFC8(v59, v43);
      if (*(v43 + *(v109 + 28)) && *(v43 + *(v109 + 28)) != 1)
      {

LABEL_43:
        sub_1C718DBAC(v43, v103);
        v61 = v57;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v112 = v57;
        if ((v62 & 1) == 0)
        {
          sub_1C716E058();
          v61 = v112;
        }

        v63 = *(v61 + 16);
        if (v63 >= *(v61 + 24) >> 1)
        {
          sub_1C716E058();
          v61 = v112;
        }

        ++v53;
        *(v61 + 16) = v63 + 1;
        v57 = v61;
        sub_1C718DBAC(v103, v61 + v110 + v63 * v47);
        v43 = v104;
        v54 = v108;
        v56 = v58;
        goto LABEL_35;
      }

      v60 = sub_1C7551DBC();

      if (v60)
      {
        goto LABEL_43;
      }

      sub_1C718B024(v43, type metadata accessor for PersonalTrait);
      v59 += v47;
      ++v53;
      v54 = v108;
    }

    v64 = *(v54 + 16);

    v65 = v57;
    v66 = v64 - *(v57 + 16);
    v67 = sub_1C754FEEC();
    v68 = sub_1C75511BC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      v50 = v66;
      *(v69 + 4) = v66;
      _os_log_impl(&dword_1C6F5C000, v67, v68, "Filtering out %ld sceneLabel traits as Library Understanding is activated", v69, 0xCu);
      MEMORY[0x1CCA5F8E0](v69, -1, -1);
    }

    else
    {
      v50 = v66;
    }

    v51 = v65;
  }

  else
  {
LABEL_32:
    v49 = v102;
    __swift_storeEnumTagSinglePayload(v102, 1, 1, v4);
    sub_1C6FD7FC8(v49, &qword_1EC217A18);
    v50 = 0;
    v51 = v108;
  }

  v70 = sub_1C718A6A4(v51);
  v72 = v71;

  sub_1C718A6A4(v107);

  v112 = v70;
  sub_1C6FD2904();
  v73 = v112;
  v112 = v72;
  sub_1C6FD28D8();
  v74 = v112;
  v75 = *(v73 + 16);
  v76 = *(v112 + 16);
  v77 = __OFADD__(v75, v76);
  v78 = v75 + v76;
  if (v77)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v77 = __OFADD__(v78, v50);
  v79 = v78 + v50;
  if (v77)
  {
LABEL_62:
    __break(1u);
    return;
  }

  if (v79 != v111)
  {
    v80 = v50;
    sub_1C75504FC();
    sub_1C75504FC();
    v81 = v105;
    sub_1C75504FC();
    v82 = sub_1C754FEEC();
    v83 = sub_1C755119C();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v112 = v111;
      *v84 = 136643587;
      v110 = v80;
      v85 = v109;
      v86 = MEMORY[0x1CCA5D090](v73, v109);
      v88 = v87;

      v89 = sub_1C6F765A4(v86, v88, &v112);

      *(v84 + 4) = v89;
      *(v84 + 12) = 2085;
      v90 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
      v91 = MEMORY[0x1CCA5D090](v74, v90);
      v93 = v92;

      v94 = sub_1C6F765A4(v91, v93, &v112);

      *(v84 + 14) = v94;
      *(v84 + 22) = 2085;
      v95 = MEMORY[0x1CCA5D090](v81, v85);
      v97 = sub_1C6F765A4(v95, v96, &v112);

      *(v84 + 24) = v97;
      *(v84 + 32) = 2048;
      *(v84 + 34) = v110;
      _os_log_impl(&dword_1C6F5C000, v82, v83, "Significant traits: %{sensitive}s, Rejected traits: %{sensitive}s while Personal Traits were: %{sensitive}s, with %ld asset level traits removed as Library Understanding is activated.", v84, 0x2Au);
      v98 = v111;
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v98, -1, -1);
      MEMORY[0x1CCA5F8E0](v84, -1, -1);
    }

    else
    {
    }

    sub_1C718F638();
    swift_allocError();
    *v99 = 0;
    swift_willThrow();
  }
}

double sub_1C7188EEC(uint64_t a1)
{
  v3 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for PersonalTrait();
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 64) * *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_totalNumberOfAssets);
  v13 = *(a1 + 16);
  if (v13)
  {
    v31 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v31;
    v15 = *(v9 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C718AFC8(v14, v11);
      v18 = *&v11[*(v34 + 36)];
      if (v12 <= v18)
      {
        sub_1C718AFC8(v11, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1D20(0, *(v16 + 16) + 1, 1, v16);
          v16 = v28;
        }

        v25 = *(v16 + 16);
        v24 = *(v16 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1C6FB1D20(v24 > 1, v25 + 1, 1, v16);
          v16 = v29;
        }

        sub_1C718B024(v11, type metadata accessor for PersonalTrait);
        *(v16 + 16) = v25 + 1;
        v22 = v16 + v31 + v25 * v15;
        v23 = v7;
      }

      else
      {
        sub_1C718AFC8(v11, v5);
        v19 = &v5[*(v33 + 20)];
        *v19 = v12;
        v19[1] = v18;
        type metadata accessor for PersonalTraitSelector.RejectionReason(0);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB2B90(0, *(v17 + 16) + 1, 1, v17);
          v17 = v26;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1C6FB2B90(v20 > 1, v21 + 1, 1, v17);
          v17 = v27;
        }

        sub_1C718B024(v11, type metadata accessor for PersonalTrait);
        *(v17 + 16) = v21 + 1;
        v22 = v17 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v21;
        v23 = v5;
      }

      sub_1C718DBAC(v23, v22);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  return v12;
}

uint64_t sub_1C71892B4(uint64_t a1)
{
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
  v126 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v136 = (&v119 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v119 - v8;
  v9 = type metadata accessor for PersonalTrait();
  v139 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - v13;
  v130 = sub_1C754DFFC();
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v119 - v17;
  MEMORY[0x1EEE9AC00](v19);
  *&v131 = &v119 - v20;
  v21 = 0;
  v22 = v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration;
  v23 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 72);
  v24 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 48);
  v25 = *(a1 + 16);
  if (v25 >= v24)
  {
    v26 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 48);
  }

  else
  {
    v26 = *(a1 + 16);
  }

  v134 = v26;
  v27 = *(v22 + 88);
  v140 = v1;
  v141 = v25;
  if ((v27 & 1) == 0)
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v25 = v141;
    v21 = v28;
  }

  if (v24 >= v25)
  {

    sub_1C75504FC();
    return a1;
  }

  v124 = v11;
  v127 = v2;
  v29 = OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_logger;
  v30 = v21;
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();
  v133 = v30;

  v33 = os_log_type_enabled(v31, v32);
  v132 = a1;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 134218498;
    *(v34 + 4) = v23;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v134;
    *(v34 + 22) = 2112;
    v36 = v133;
    *(v34 + 24) = v133;
    *v35 = v21;
    v37 = v36;
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Sampling personal traits with random weighted sampling: temperature=%f, sampleSize=%ld, seed=%@", v34, 0x20u);
    sub_1C6FD7FC8(v35, &qword_1EC215190);
    MEMORY[0x1CCA5F8E0](v35, -1, -1);
    MEMORY[0x1CCA5F8E0](v34, -1, -1);
  }

  v125 = v29;
  if (v21)
  {
    v38 = v133;
    v39 = [v133 unsignedLongLongValue];
    v40 = v38;
    v41 = sub_1C754FEEC();
    a1 = sub_1C75511BC();

    if (os_log_type_enabled(v41, a1))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v40;
      *v43 = v21;
      v44 = v40;
      _os_log_impl(&dword_1C6F5C000, v41, a1, "Using %@ as randomizer seed for the random weighted sampling", v42, 0xCu);
      sub_1C6FD7FC8(v43, &qword_1EC215190);
      MEMORY[0x1CCA5F8E0](v43, -1, -1);
      MEMORY[0x1CCA5F8E0](v42, -1, -1);
    }

    v144 = &type metadata for Random.Arc4Random;
    v145 = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v39, v143);
  }

  else
  {
    v45 = v131;
    sub_1C754DFEC();
    v46 = v128;
    v47 = v130;
    v123 = *(v128 + 2);
    v123(v18, v45, v130);
    v48 = sub_1C754FEEC();
    v49 = sub_1C75511BC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v121 = v50;
      v122 = swift_slowAlloc();
      v146 = v122;
      *v50 = 136315138;
      sub_1C718DA70(&qword_1EDD0CB90);
      v120 = v48;
      v51 = sub_1C7551D8C();
      v53 = v52;
      v128 = *(v46 + 1);
      (v128)(v18, v47);
      v54 = sub_1C6F765A4(v51, v53, &v146);
      v45 = v131;

      v55 = v121;
      *(v121 + 1) = v54;
      v56 = v120;
      v57 = v55;
      _os_log_impl(&dword_1C6F5C000, v120, v49, "No seed provided (or invalid) in configuration, using %s as randomizer UUID seed for the random weighted sampling", v55, 0xCu);
      v58 = v122;
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x1CCA5F8E0](v58, -1, -1);
      MEMORY[0x1CCA5F8E0](v57, -1, -1);

      a1 = v128;
    }

    else
    {

      a1 = *(v46 + 1);
      (a1)(v18, v47);
    }

    v59 = v129;
    v123(v129, v45, v47);
    v144 = &type metadata for Random.Arc4Random;
    v145 = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v59, v143);
    (a1)(v45, v47);
  }

  v60 = MEMORY[0x1E69E7CC0];
  v61 = v132;
  v62 = v141;
  if (v141)
  {
    v146 = MEMORY[0x1E69E7CC0];
    sub_1C716DA70();
    v63 = v146;
    v64 = v61 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    a1 = *(v139 + 72);
    do
    {
      sub_1C718AFC8(v64, v14);
      v65 = *&v14[*(v9 + 36)];
      sub_1C718B024(v14, type metadata accessor for PersonalTrait);
      v146 = v63;
      v66 = *(v63 + 16);
      if (v66 >= *(v63 + 24) >> 1)
      {
        sub_1C716DA70();
        v63 = v146;
      }

      *(v63 + 16) = v66 + 1;
      *(v63 + 8 * v66 + 32) = v65;
      v64 += a1;
      --v62;
    }

    while (v62);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  v67 = v127;
  v68 = static StoryGenerationUtilities.normalizedSoftmaxWithTemperature(_:temperature:)(v63, v23);
  v69 = v67;
  v70 = v134;
  if (v67)
  {
    goto LABEL_26;
  }

  v71 = v68;

  if (*(v71 + 16) != v141)
  {

    sub_1C718F638();
    swift_allocError();
    *v92 = 1;
    swift_willThrow();
    goto LABEL_36;
  }

  sub_1C75504FC();
  sub_1C75504FC();
  a1 = sub_1C754FEEC();
  v72 = sub_1C75511BC();

  if (os_log_type_enabled(a1, v72))
  {
    v73 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v146 = v125;
    *v73 = 136642819;
    sub_1C75504FC();
    v74 = sub_1C75504FC();
    v142 = sub_1C74BAE00(v74, v71);
    sub_1C718AE4C(&v142);
    v128 = v73;
    LODWORD(v129) = v72;

    v75 = v142;
    v76 = *(v142 + 16);
    if (v76)
    {
      v123 = a1;
      v130 = v71;
      v127 = 0;
      v142 = v60;
      sub_1C6F7ED9C();
      v77 = v142;
      v78 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v122 = v75;
      v79 = v75 + v78;
      v140 = *(v126 + 72);
      v131 = xmmword_1C75604F0;
      v80 = v135;
      do
      {
        sub_1C718F68C(v79, v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
        v81 = swift_allocObject();
        *(v81 + 16) = v131;
        v82 = v136;
        sub_1C718F68C(v80, v136);
        v84 = *v82;
        v83 = v82[1];
        sub_1C75504FC();
        sub_1C718B024(v82, type metadata accessor for PersonalTrait);
        *(v81 + 56) = MEMORY[0x1E69E6158];
        *(v81 + 64) = sub_1C6F6D524();
        *(v81 + 32) = v84;
        *(v81 + 40) = v83;
        v85 = v137;
        sub_1C718F68C(v80, v137);
        v86 = *(v85 + *(v138 + 48));
        *(v81 + 96) = MEMORY[0x1E69E63B0];
        *(v81 + 104) = MEMORY[0x1E69E6438];
        *(v81 + 72) = v86;
        sub_1C718B024(v85, type metadata accessor for PersonalTrait);
        v87 = sub_1C75506BC();
        v89 = v88;
        sub_1C6FD7FC8(v80, &qword_1EC218328);
        v142 = v77;
        v90 = *(v77 + 16);
        if (v90 >= *(v77 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v77 = v142;
        }

        *(v77 + 16) = v90 + 1;
        v91 = v77 + 16 * v90;
        *(v91 + 32) = v87;
        *(v91 + 40) = v89;
        v79 += v140;
        --v76;
      }

      while (v76);

      v69 = v127;
      v70 = v134;
      v71 = v130;
      a1 = v123;
    }

    else
    {

      v77 = MEMORY[0x1E69E7CC0];
    }

    v142 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C718DE9C(&qword_1EDD0CF58);
    v94 = sub_1C75505FC();
    v96 = v95;

    v97 = sub_1C6F765A4(v94, v96, &v146);

    v98 = v128;
    *(v128 + 1) = v97;
    _os_log_impl(&dword_1C6F5C000, a1, v129, "Logits and probabilities of traits (before sampling): %{sensitive}s", v98, 0xCu);
    v99 = v125;
    __swift_destroy_boxed_opaque_existential_1(v125);
    MEMORY[0x1CCA5F8E0](v99, -1, -1);
    MEMORY[0x1CCA5F8E0](v98, -1, -1);
  }

  v100 = sub_1C71CD888(0, v141);
  v101 = v144;
  v102 = v145;
  v103 = __swift_mutable_project_boxed_opaque_existential_0(v143, v144);
  v104 = static StoryGenerationUtilities.weightedSamplingWithoutReplacement<A, B>(items:probabilities:sampleSize:using:)(v100, v71, v70, v103, MEMORY[0x1E69E6530], v101, v102);
  if (v69)
  {

LABEL_26:

LABEL_36:

    __swift_destroy_boxed_opaque_existential_1(v143);
    return a1;
  }

  v105 = v104;
  v127 = 0;
  v106 = *(v104 + 16);
  a1 = MEMORY[0x1E69E7CC0];
  if (!v106)
  {
LABEL_49:
    v115 = sub_1C706E520(v100);
    v116 = sub_1C706E520(v105);
    v117 = sub_1C723883C(v116, v115);

    sub_1C75504FC();
    v118 = v132;
    sub_1C75504FC();
    sub_1C7181ED8(v117, v118, v71, v70, v23);

    __swift_destroy_boxed_opaque_existential_1(v143);
    return a1;
  }

  v140 = v100;
  v130 = v71;
  v146 = MEMORY[0x1E69E7CC0];
  sub_1C716E058();
  a1 = v146;
  v138 = v105;
  v107 = (v105 + 32);
  v108 = (*(v139 + 80) + 32) & ~*(v139 + 80);
  v109 = v132 + v108;
  v110 = v124;
  while (1)
  {
    v112 = *v107++;
    v111 = v112;
    if (v112 >= v141)
    {
      break;
    }

    v113 = *(v139 + 72);
    sub_1C718AFC8(v109 + v113 * v111, v110);
    v146 = a1;
    v114 = *(a1 + 16);
    if (v114 >= *(a1 + 24) >> 1)
    {
      sub_1C716E058();
      v110 = v124;
      a1 = v146;
    }

    *(a1 + 16) = v114 + 1;
    sub_1C718DBAC(v110, a1 + v108 + v114 * v113);
    if (!--v106)
    {
      v70 = v134;
      v71 = v130;
      v100 = v140;
      v105 = v138;
      goto LABEL_49;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C718A208(uint64_t a1)
{
  v3 = type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2187F8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v43 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v43 - v13);
  v15 = *(a1 + 16);
  if (v15 >= *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 48))
  {
    v16 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 48);
  }

  else
  {
    v16 = *(a1 + 16);
  }

  sub_1C75504FC();
  v50 = v16;
  v19 = sub_1C7033F30(v16, a1);
  v21 = v20;
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  i = v18;
  v45 = v17;
  v24 = sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v46 = v24;
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v25 + 16);

  if (__OFSUB__(v21 >> 1, i))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v26 != (v21 >> 1) - i)
  {
LABEL_35:
    swift_unknownObjectRelease();
    v18 = i;
    v17 = v45;
LABEL_5:
    sub_1C739C5E4(v19, v17, v18, v21);
    v23 = v22;
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v23)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_13:
  v44 = v23;
  v43 = sub_1C74B8148(v50, v15, a1);
  v45 = v27;
  a1 = v28;
  v19 = 0;
  v30 = v29 >> 1;
  v15 = MEMORY[0x1E69E7CC0];
  v46 = v28;
  for (i = v8; ; v8 = i)
  {
    if (a1 == v30)
    {
      v31 = 1;
      a1 = v30;
    }

    else
    {
      if (a1 < v46 || a1 >= v30)
      {
        goto LABEL_32;
      }

      v33 = v45 + *(*(type metadata accessor for PersonalTrait() - 8) + 72) * a1;
      v34 = *(v6 + 48);
      *v8 = v19;
      sub_1C718AFC8(v33, v8 + v34);
      if (__OFADD__(v19++, 1))
      {
        goto LABEL_33;
      }

      ++a1;
      sub_1C718F6FC(v8, v11, &qword_1EC2187F8);
      v31 = 0;
    }

    __swift_storeEnumTagSinglePayload(v11, v31, 1, v6);
    sub_1C718F6FC(v11, v14, &qword_1EC218800);
    if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
    {
      break;
    }

    v21 = *v14;
    sub_1C718DBAC(v14 + *(v6 + 48), v5);
    v36 = v50 + v21;
    if (__OFADD__(v50, v21))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v37 = &v5[*(v49 + 20)];
    *v37 = v50;
    *(v37 + 1) = v36;
    type metadata accessor for PersonalTraitSelector.RejectionReason(0);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB2B90(0, *(v15 + 16) + 1, 1, v15);
      v15 = v40;
    }

    v39 = *(v15 + 16);
    v38 = *(v15 + 24);
    v21 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      sub_1C6FB2B90(v38 > 1, v39 + 1, 1, v15);
      v15 = v41;
    }

    *(v15 + 16) = v21;
    sub_1C718DBAC(v5, v15 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39);
  }

  swift_unknownObjectRelease();
  return v44;
}

uint64_t sub_1C718A6A4(uint64_t a1)
{
  type metadata accessor for PersonalTraitSelector.RejectedPersonalTrait(0);
  OUTLINED_FUNCTION_3_0();
  v75 = v4;
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v85 = v6 - v5;
  v7 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = (v12 - v11);
  v14 = type metadata accessor for PersonalTrait();
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v24 = *(a1 + 16);
  if (v24 < 2)
  {
    sub_1C75504FC();
  }

  else
  {
    v25 = *(v20 + 24);
    v79 = v20;
    v82 = *(v20 + 36);
    v83 = v25;
    v26 = *(v21 + 80);
    v73 = v1;
    v74 = (v26 + 32) & ~v26;
    v86 = (v9 + 16);
    v27 = MEMORY[0x1E69E7CC8];
    v89 = *(v21 + 72);
    v80 = (v9 + 8);
    v81 = &v72 - v22;
    v77 = a1 + v74;
    v78 = v24;
    v28 = a1 + v74;
    v29 = v24;
    do
    {
      v87 = v29;
      v88 = v28;
      OUTLINED_FUNCTION_1_65();
      sub_1C718AFC8(v30, v23);
      v31 = *v86;
      (*v86)(v13, &v23[v83], v7);
      v32 = *&v23[v82];
      swift_isUniquelyReferenced_nonNull_native();
      v90 = v27;
      sub_1C6FC2D10();
      if (__OFADD__(v27[2], (v34 & 1) == 0))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_1C7551E4C();
        __break(1u);
        return result;
      }

      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2187F0);
      if (sub_1C7551A2C())
      {
        sub_1C6FC2D10();
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_33;
        }

        v35 = v37;
      }

      v27 = v90;
      if (v36)
      {
        *(v90[7] + 8 * v35) = v32;
        (*v80)(v13, v7);
        OUTLINED_FUNCTION_0_84();
        v23 = v81;
        sub_1C718B024(v81, v39);
      }

      else
      {
        v90[(v35 >> 6) + 8] |= 1 << v35;
        v31(v27[6] + *(v9 + 72) * v35, v13, v7);
        *(v27[7] + 8 * v35) = v32;
        (*(v9 + 8))(v13, v7);
        OUTLINED_FUNCTION_0_84();
        v23 = v81;
        sub_1C718B024(v81, v40);
        v41 = v27[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_32;
        }

        v27[2] = v43;
      }

      v28 = v88 + v89;
      v29 = v87 - 1;
    }

    while (v87 != 1);
    v44 = *(v73 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration + 56);
    v45 = sub_1C742537C(v27, 0, 1uLL);

    v46 = 0;
    a1 = MEMORY[0x1E69E7CC0];
    v87 = MEMORY[0x1E69E7CC0];
    do
    {
      v88 = a1;
      ++v46;
      OUTLINED_FUNCTION_1_65();
      sub_1C718AFC8(v47, v18);
      v48 = 0;
      v49 = *(v45 + 16);
      while (v49 != v48)
      {
        v50 = v48 + 1;
        sub_1C718DA70(&unk_1EDD0CBA0);
        v51 = sub_1C755063C();
        v48 = v50;
        if (v51)
        {
          OUTLINED_FUNCTION_1_65();
          sub_1C718AFC8(v18, v84);
          a1 = v88;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1D20(0, *(a1 + 16) + 1, 1, a1);
            a1 = v68;
          }

          v53 = *(a1 + 16);
          v52 = *(a1 + 24);
          if (v53 >= v52 >> 1)
          {
            v69 = OUTLINED_FUNCTION_15(v52);
            sub_1C6FB1D20(v69, v53 + 1, 1, a1);
            a1 = v70;
          }

          *(a1 + 16) = v53 + 1;
          OUTLINED_FUNCTION_6_48();
          v55 = v84;
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_1_65();
      v56 = v85;
      sub_1C718AFC8(v18, v85);
      *(v56 + *(v76 + 20)) = v44;
      type metadata accessor for PersonalTraitSelector.RejectionReason(0);
      swift_storeEnumTagMultiPayload();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v57 = v87;
        a1 = v88;
      }

      else
      {
        sub_1C6FB2B90(0, *(v87 + 16) + 1, 1, v87);
        v57 = v64;
        a1 = v88;
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        v65 = OUTLINED_FUNCTION_15(v58);
        sub_1C6FB2B90(v65, v59 + 1, 1, v66);
        v57 = v67;
      }

      *(v57 + 16) = v59 + 1;
      OUTLINED_FUNCTION_191();
      v87 = v60;
      v54 = v60 + v61 + *(v62 + 72) * v59;
      v55 = v85;
LABEL_26:
      sub_1C718DBAC(v55, v54);
      OUTLINED_FUNCTION_0_84();
      sub_1C718B024(v18, v63);
    }

    while (v46 != v78);
  }

  return a1;
}

uint64_t PersonalTraitSelector.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  memcpy(v4, (v0 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration), 0xD8uLL);
  sub_1C7059364(v4);
  return v0;
}

uint64_t PersonalTraitSelector.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  memcpy(v4, (v0 + OBJC_IVAR____TtC18PhotosIntelligence21PersonalTraitSelector_configuration), 0xD8uLL);
  sub_1C7059364(v4);
  return swift_deallocClassInstance();
}

void sub_1C718AE4C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C84();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C718B2C8(v6);
  *a1 = v3;
}

void sub_1C718AF00(uint64_t *a1)
{
  v2 = *(type metadata accessor for PersonalTrait() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C9C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C718B410(v6);
  *a1 = v3;
}

uint64_t sub_1C718AFC8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C718B024(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C718B07C()
{
  result = qword_1EC2184C0;
  if (!qword_1EC2184C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2184C0);
  }

  return result;
}

unint64_t sub_1C718B0D0()
{
  result = qword_1EC2184C8;
  if (!qword_1EC2184C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2184C8);
  }

  return result;
}

unint64_t sub_1C718B124()
{
  result = qword_1EC2184D0;
  if (!qword_1EC2184D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2184D0);
  }

  return result;
}

unint64_t sub_1C718B178()
{
  result = qword_1EC2184D8;
  if (!qword_1EC2184D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2184D8);
  }

  return result;
}

unint64_t sub_1C718B1CC()
{
  result = qword_1EC2184E0;
  if (!qword_1EC2184E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2184E0);
  }

  return result;
}

unint64_t sub_1C718B220()
{
  result = qword_1EC2184E8;
  if (!qword_1EC2184E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2184E8);
  }

  return result;
}

unint64_t sub_1C718B274()
{
  result = qword_1EC2184F0;
  if (!qword_1EC2184F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2184F0);
  }

  return result;
}

void sub_1C718B2C8(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C718BA9C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C718B540(0, v2, 1, a1);
  }
}

void sub_1C718B410(int64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PersonalTrait();
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PersonalTrait() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C718C398(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C718B790(0, v2, 1, a1);
  }
}

void sub_1C718B540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v30 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v35 = -v17;
    v36 = v16;
    v19 = a1 - a3;
    v29 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v33 = v18;
      v34 = a3;
      v31 = v20;
      v32 = v19;
      v21 = v19;
      v22 = v38;
      do
      {
        sub_1C718F68C(v20, v15);
        sub_1C718F68C(v18, v11);
        v23 = *(v22 + 48);
        v24 = *&v15[v23];
        v25 = *&v11[v23];
        sub_1C6FD7FC8(v11, &qword_1EC218328);
        sub_1C6FD7FC8(v15, &qword_1EC218328);
        if (v25 >= v24)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        v26 = v37;
        sub_1C718F6FC(v20, v37, &qword_1EC218328);
        v22 = v38;
        swift_arrayInitWithTakeFrontToBack();
        sub_1C718F6FC(v26, v18, &qword_1EC218328);
        v18 += v35;
        v20 += v35;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v34 + 1;
      v18 = v33 + v29;
      v19 = v32 - 1;
      v20 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C718B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PersonalTrait();
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v36 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v36 - v15);
  v38 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v18 = *(v14 + 72);
  v19 = *a4 + v18 * (a3 - 1);
  v45 = -v18;
  v46 = v17;
  v20 = a1 - a3;
  v37 = v18;
  v21 = v17 + v18 * a3;
  v43 = (&v36 - v15);
  v44 = v8;
  while (2)
  {
    v41 = v19;
    v42 = a3;
    v39 = v21;
    v40 = v20;
    while (1)
    {
      sub_1C718AFC8(v21, v16);
      sub_1C718AFC8(v19, v12);
      v22 = *(v8 + 36);
      v23 = *(v16 + v22);
      v24 = *(v12 + v22);
      if (v23 != v24)
      {
        v33 = v24 < v23;
        goto LABEL_14;
      }

      v25 = *v16;
      v26 = v16[1];
      v27 = MEMORY[0x1CCA5CE50](*v16, v26);
      v28 = v12;
      v29 = *v12;
      v30 = v12[1];
      v31 = MEMORY[0x1CCA5CE50](v29, v30);
      if (v27 != v31)
      {
        v33 = v27 < v31;
        goto LABEL_13;
      }

      if (v25 == v29 && v26 == v30)
      {
        break;
      }

      v33 = sub_1C7551DBC();
LABEL_13:
      v16 = v43;
      v8 = v44;
      v12 = v28;
LABEL_14:
      sub_1C718B024(v12, type metadata accessor for PersonalTrait);
      sub_1C718B024(v16, type metadata accessor for PersonalTrait);
      if (v33)
      {
        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = v47;
        sub_1C718DBAC(v21, v47);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C718DBAC(v34, v19);
        v19 += v45;
        v21 += v45;
        if (!__CFADD__(v20++, 1))
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    v12 = v28;
    sub_1C718B024(v28, type metadata accessor for PersonalTrait);
    v16 = v43;
    sub_1C718B024(v43, type metadata accessor for PersonalTrait);
    v8 = v44;
LABEL_20:
    a3 = v42 + 1;
    v19 = v41 + v37;
    v20 = v40 - 1;
    v21 = v39 + v37;
    if (v42 + 1 != v38)
    {
      continue;
    }

    break;
  }
}

void sub_1C718BA9C(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
  v131 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v135 = &v119 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v137 = &v119 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v136 = &v119 - v16;
  v132 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v138 = *v123;
    if (!v138)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v111 = v19 + 16;
      v112 = *(v19 + 2);
      while (v112 >= 2)
      {
        if (!*v132)
        {
          goto LABEL_137;
        }

        v113 = v19;
        v114 = &v19[16 * v112];
        v115 = *v114;
        v116 = &v111[2 * v112];
        v117 = *(v116 + 1);
        sub_1C718CF24(*v132 + *(v131 + 72) * *v114, *v132 + *(v131 + 72) * *v116, *v132 + *(v131 + 72) * v117, v138);
        if (v5)
        {
          break;
        }

        if (v117 < v115)
        {
          goto LABEL_125;
        }

        if (v112 - 2 >= *v111)
        {
          goto LABEL_126;
        }

        *v114 = v115;
        *(v114 + 1) = v117;
        v118 = *v111 - v112;
        if (*v111 < v112)
        {
          goto LABEL_127;
        }

        v112 = *v111 - 1;
        sub_1C7423CF4(v116 + 16, v118, v116);
        *v111 = v112;
        v19 = v113;
      }

LABEL_109:

      return;
    }

LABEL_134:
    v19 = sub_1C7420830();
    goto LABEL_101;
  }

  v138 = v15;
  v121 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    if (v18 + 1 < v17)
    {
      v22 = v18;
      v23 = *v132;
      v24 = *(v131 + 72);
      v133 = v18 + 1;
      v25 = v23 + v24 * v21;
      v26 = v136;
      v130 = v17;
      sub_1C718F68C(v25, v136);
      v27 = v137;
      sub_1C718F68C(v23 + v24 * v22, v137);
      v28 = *(v138 + 48);
      v29 = *(v26 + v28);
      v30 = *(v27 + v28);
      sub_1C6FD7FC8(v27, &qword_1EC218328);
      sub_1C6FD7FC8(v26, &qword_1EC218328);
      v31 = v130;
      v122 = v22;
      v32 = v22 + 2;
      v134 = v24;
      v33 = v23 + v24 * (v22 + 2);
      while (1)
      {
        v34 = v32;
        if (++v133 >= v31)
        {
          break;
        }

        v35 = v136;
        sub_1C718F68C(v33, v136);
        v36 = v137;
        sub_1C718F68C(v25, v137);
        v37 = *(v138 + 48);
        v38 = *(v35 + v37);
        v39 = *(v36 + v37);
        sub_1C6FD7FC8(v36, &qword_1EC218328);
        sub_1C6FD7FC8(v35, &qword_1EC218328);
        v31 = v130;
        v33 += v134;
        v25 += v134;
        v32 = v34 + 1;
        if (v30 < v29 == v39 >= v38)
        {
          goto LABEL_9;
        }
      }

      v133 = v31;
LABEL_9:
      if (v30 < v29)
      {
        v21 = v133;
        if (v133 < v122)
        {
          goto LABEL_131;
        }

        if (v122 >= v133)
        {
          v20 = v122;
          goto LABEL_31;
        }

        v120 = v19;
        if (v31 >= v34)
        {
          v40 = v34;
        }

        else
        {
          v40 = v31;
        }

        v41 = v134 * (v40 - 1);
        v42 = v134 * v40;
        v43 = v133;
        v44 = v122 * v134;
        v45 = v122;
        do
        {
          if (v45 != --v43)
          {
            v126 = v5;
            v46 = *v132;
            if (!*v132)
            {
              goto LABEL_138;
            }

            sub_1C718F6FC(v46 + v44, v127, &qword_1EC218328);
            v47 = v44 < v41 || v46 + v44 >= v46 + v42;
            if (v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C718F6FC(v127, v46 + v41, &qword_1EC218328);
            v5 = v126;
          }

          ++v45;
          v41 -= v134;
          v42 -= v134;
          v44 += v134;
        }

        while (v45 < v43);
        v19 = v120;
      }

      v21 = v133;
      v20 = v122;
    }

LABEL_31:
    v48 = v132[1];
    if (v21 < v48)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_130;
      }

      if (v21 - v20 < v121)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_129;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB17EC();
      v19 = v109;
    }

    v65 = *(v19 + 2);
    v66 = v65 + 1;
    if (v65 >= *(v19 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v19 = v110;
    }

    *(v19 + 2) = v66;
    v67 = v19 + 32;
    v68 = &v19[16 * v65 + 32];
    v69 = v133;
    *v68 = v20;
    *(v68 + 1) = v69;
    v134 = *v123;
    if (!v134)
    {
      goto LABEL_139;
    }

    if (v65)
    {
      while (1)
      {
        v70 = v66 - 1;
        v71 = &v67[16 * v66 - 16];
        v72 = &v19[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v73 = *(v19 + 4);
          v74 = *(v19 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_67:
          if (v76)
          {
            goto LABEL_116;
          }

          v88 = *v72;
          v87 = *(v72 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_119;
          }

          v92 = *(v71 + 1);
          v93 = v92 - *v71;
          if (__OFSUB__(v92, *v71))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v90, v93))
          {
            goto LABEL_124;
          }

          if (v90 + v93 >= v75)
          {
            if (v75 < v93)
            {
              v70 = v66 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v66 < 2)
        {
          goto LABEL_118;
        }

        v95 = *v72;
        v94 = *(v72 + 1);
        v83 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        v91 = v83;
LABEL_82:
        if (v91)
        {
          goto LABEL_121;
        }

        v97 = *v71;
        v96 = *(v71 + 1);
        v83 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v83)
        {
          goto LABEL_123;
        }

        if (v98 < v90)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v70 - 1 >= v66)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v132)
        {
          goto LABEL_136;
        }

        v102 = &v67[16 * v70 - 16];
        v103 = *v102;
        v104 = v70;
        v105 = &v67[16 * v70];
        v106 = *(v105 + 1);
        sub_1C718CF24(*v132 + *(v131 + 72) * *v102, *v132 + *(v131 + 72) * *v105, *v132 + *(v131 + 72) * v106, v134);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v106 < v103)
        {
          goto LABEL_111;
        }

        v5 = v19;
        v107 = *(v19 + 2);
        if (v104 > v107)
        {
          goto LABEL_112;
        }

        *v102 = v103;
        *(v102 + 1) = v106;
        if (v104 >= v107)
        {
          goto LABEL_113;
        }

        v66 = v107 - 1;
        sub_1C7423CF4(v105 + 16, v107 - 1 - v104, v105);
        *(v5 + 2) = v107 - 1;
        v108 = v107 > 2;
        v19 = v5;
        v5 = 0;
        if (!v108)
        {
          goto LABEL_96;
        }
      }

      v77 = &v67[16 * v66];
      v78 = *(v77 - 8);
      v79 = *(v77 - 7);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_114;
      }

      v82 = *(v77 - 6);
      v81 = *(v77 - 5);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_115;
      }

      v84 = *(v72 + 1);
      v85 = v84 - *v72;
      if (__OFSUB__(v84, *v72))
      {
        goto LABEL_117;
      }

      v83 = __OFADD__(v75, v85);
      v86 = v75 + v85;
      if (v83)
      {
        goto LABEL_120;
      }

      if (v86 >= v80)
      {
        v100 = *v71;
        v99 = *(v71 + 1);
        v83 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v83)
        {
          goto LABEL_128;
        }

        if (v75 < v101)
        {
          v70 = v66 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v18 = v133;
    v17 = v132[1];
    if (v133 >= v17)
    {
      goto LABEL_99;
    }
  }

  v49 = v20 + v121;
  if (__OFADD__(v20, v121))
  {
    goto LABEL_132;
  }

  if (v49 >= v48)
  {
    v49 = v132[1];
  }

  if (v49 < v20)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v21 == v49)
  {
    goto LABEL_47;
  }

  v120 = v19;
  v125 = v49;
  v126 = v5;
  v50 = *v132;
  v51 = *(v131 + 72);
  v52 = *v132 + v51 * (v21 - 1);
  v53 = -v51;
  v122 = v20;
  v54 = v20 - v21;
  v134 = v50;
  v124 = v51;
  v55 = v50 + v21 * v51;
LABEL_40:
  v133 = v21;
  v128 = v55;
  v129 = v54;
  v56 = v55;
  v130 = v52;
  v57 = v138;
  while (1)
  {
    v58 = v136;
    sub_1C718F68C(v56, v136);
    v59 = v137;
    sub_1C718F68C(v52, v137);
    v60 = *(v57 + 48);
    v61 = *(v58 + v60);
    v62 = *(v59 + v60);
    sub_1C6FD7FC8(v59, &qword_1EC218328);
    sub_1C6FD7FC8(v58, &qword_1EC218328);
    if (v62 >= v61)
    {
LABEL_45:
      v21 = v133 + 1;
      v52 = v130 + v124;
      v54 = v129 - 1;
      v55 = v128 + v124;
      if (v133 + 1 == v125)
      {
        v21 = v125;
        v5 = v126;
        v19 = v120;
        v20 = v122;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v134)
    {
      break;
    }

    v63 = v135;
    sub_1C718F6FC(v56, v135, &qword_1EC218328);
    v57 = v138;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C718F6FC(v63, v52, &qword_1EC218328);
    v52 += v53;
    v56 += v53;
    v47 = __CFADD__(v54++, 1);
    if (v47)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

void sub_1C718C398(int64_t *a1, uint64_t a2, int64_t *a3, uint64_t a4)
{
  v158 = a1;
  v6 = type metadata accessor for PersonalTrait();
  v165 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v161 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v152 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v152 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v152 - v14);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v152 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v157 = (&v152 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v156 = (&v152 - v24);
  v167 = a3;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_129:
    v29 = *v158;
    if (!*v158)
    {
      goto LABEL_170;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_131:
      v143 = v27 + 16;
      v144 = *(v27 + 2);
      while (v144 >= 2)
      {
        if (!*v167)
        {
          goto LABEL_167;
        }

        v145 = v27;
        v146 = &v27[16 * v144];
        v147 = *v146;
        v148 = &v143[2 * v144];
        v149 = *(v148 + 1);
        v150 = v170;
        sub_1C718D38C(*v167 + *(v165 + 72) * *v146, *v167 + *(v165 + 72) * *v148, *v167 + *(v165 + 72) * v149, v29);
        v170 = v150;
        if (v150)
        {
          break;
        }

        if (v149 < v147)
        {
          goto LABEL_155;
        }

        if (v144 - 2 >= *v143)
        {
          goto LABEL_156;
        }

        *v146 = v147;
        *(v146 + 1) = v149;
        v151 = *v143 - v144;
        if (*v143 < v144)
        {
          goto LABEL_157;
        }

        v144 = *v143 - 1;
        sub_1C7423CF4(v148 + 16, v151, v148);
        *v143 = v144;
        v27 = v145;
      }

LABEL_139:

      return;
    }

LABEL_164:
    v27 = sub_1C7420830();
    goto LABEL_131;
  }

  v153 = a4;
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v172 = v12;
  v173 = v6;
  v171 = v15;
  v154 = v23;
  v162 = v19;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    if (v26 + 1 < v25)
    {
      v163 = v25;
      v159 = v26;
      v30 = *v167;
      v31 = *(v165 + 72);
      v32 = v156;
      sub_1C718AFC8(*v167 + v31 * v29, v156);
      v166 = v31;
      v33 = v30 + v31 * v159;
      v34 = v30;
      v35 = v157;
      sub_1C718AFC8(v33, v157);
      v36 = *(v6 + 36);
      v37 = *(v32 + v36);
      v38 = *(v35 + v36);
      if (v37 == v38)
      {
        v169 = v29;
        v39 = *v32;
        v40 = v32[1];
        v41 = MEMORY[0x1CCA5CE50](*v32, v40);
        v42 = *v35;
        v43 = v35[1];
        v44 = MEMORY[0x1CCA5CE50](v42, v43);
        if (v41 == v44)
        {
          if (v39 == v42 && v40 == v43)
          {
            LODWORD(v164) = 0;
          }

          else
          {
            LODWORD(v164) = sub_1C7551DBC();
          }
        }

        else
        {
          LODWORD(v164) = v41 < v44;
        }

        v19 = v162;
        v32 = v156;
        v35 = v157;
        v29 = v169;
      }

      else
      {
        LODWORD(v164) = v38 < v37;
      }

      v155 = v27;
      sub_1C718B024(v35, type metadata accessor for PersonalTrait);
      sub_1C718B024(v32, type metadata accessor for PersonalTrait);
      v46 = v159 + 2;
      v47 = v166 * (v159 + 2);
      v48 = v34 + v47;
      v49 = v166 * v29;
      v50 = v34 + v166 * v29;
      v51 = v154;
      do
      {
        v52 = v46;
        v53 = v29;
        v54 = v49;
        v55 = v47;
        v169 = v46;
        if (v46 >= v163)
        {
          break;
        }

        v174 = v29;
        v168 = v47;
        sub_1C718AFC8(v48, v19);
        sub_1C718AFC8(v50, v51);
        v56 = *(v6 + 36);
        v57 = *(v19 + v56);
        v58 = *(v51 + v56);
        if (v57 == v58)
        {
          v59 = v19;
          v60 = *v19;
          v61 = v59[1];
          v62 = MEMORY[0x1CCA5CE50](v60, v61);
          v63 = *v51;
          v64 = v51[1];
          v65 = MEMORY[0x1CCA5CE50](*v51, v64);
          if (v62 == v65)
          {
            v66 = v60 == v63 && v61 == v64;
            v67 = v66 ? 0 : sub_1C7551DBC();
          }

          else
          {
            v67 = v62 < v65;
          }

          v12 = v172;
          v6 = v173;
          v19 = v162;
        }

        else
        {
          v67 = v58 < v57;
        }

        sub_1C718B024(v51, type metadata accessor for PersonalTrait);
        sub_1C718B024(v19, type metadata accessor for PersonalTrait);
        v68 = v164 ^ v67;
        v55 = v168;
        v52 = v169;
        v46 = v169 + 1;
        v48 += v166;
        v50 += v166;
        v53 = v174;
        v29 = v174 + 1;
        v49 = v54 + v166;
        v47 = v168 + v166;
      }

      while ((v68 & 1) == 0);
      v15 = v171;
      if (v164)
      {
        v28 = v159;
        if (v52 < v159)
        {
          goto LABEL_161;
        }

        if (v159 >= v52)
        {
          v29 = v52;
          v27 = v155;
          goto LABEL_49;
        }

        v69 = v159;
        v70 = v159 * v166;
        do
        {
          if (v69 != v53)
          {
            v174 = v53;
            v71 = *v167;
            if (!*v167)
            {
              goto LABEL_168;
            }

            v72 = v55;
            sub_1C718DBAC(v71 + v70, v161);
            v73 = v70 < v54 || v71 + v70 >= (v71 + v72);
            if (v73)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C718DBAC(v161, v71 + v54);
            v55 = v72;
            v53 = v174;
          }

          ++v69;
          v54 -= v166;
          v55 -= v166;
          v70 += v166;
          v74 = v69 < v53--;
        }

        while (v74);
        v29 = v169;
      }

      else
      {
        v29 = v52;
      }

      v27 = v155;
      v28 = v159;
    }

LABEL_49:
    v75 = v167[1];
    if (v29 < v75)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_160;
      }

      if (v29 - v28 < v153)
      {
        break;
      }
    }

LABEL_77:
    if (v29 < v28)
    {
      goto LABEL_159;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v27 = v141;
    }

    v97 = *(v27 + 2);
    v98 = v97 + 1;
    v99 = v28;
    if (v97 >= *(v27 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v27 = v142;
    }

    *(v27 + 2) = v98;
    v100 = v27 + 32;
    v101 = &v27[16 * v97 + 32];
    *v101 = v99;
    *(v101 + 1) = v29;
    v169 = v29;
    v29 = *v158;
    if (!*v158)
    {
      goto LABEL_169;
    }

    if (v97)
    {
      while (1)
      {
        v102 = v98 - 1;
        v103 = &v100[16 * v98 - 16];
        v104 = &v27[16 * v98];
        if (v98 >= 4)
        {
          break;
        }

        if (v98 == 3)
        {
          v105 = *(v27 + 4);
          v106 = *(v27 + 5);
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_97:
          if (v108)
          {
            goto LABEL_146;
          }

          v120 = *v104;
          v119 = *(v104 + 1);
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_149;
          }

          v124 = *(v103 + 1);
          v125 = v124 - *v103;
          if (__OFSUB__(v124, *v103))
          {
            goto LABEL_152;
          }

          if (__OFADD__(v122, v125))
          {
            goto LABEL_154;
          }

          if (v122 + v125 >= v107)
          {
            if (v107 < v125)
            {
              v102 = v98 - 2;
            }

            goto LABEL_119;
          }

          goto LABEL_112;
        }

        if (v98 < 2)
        {
          goto LABEL_148;
        }

        v127 = *v104;
        v126 = *(v104 + 1);
        v115 = __OFSUB__(v126, v127);
        v122 = v126 - v127;
        v123 = v115;
LABEL_112:
        if (v123)
        {
          goto LABEL_151;
        }

        v129 = *v103;
        v128 = *(v103 + 1);
        v115 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v115)
        {
          goto LABEL_153;
        }

        if (v130 < v122)
        {
          goto LABEL_126;
        }

LABEL_119:
        if (v102 - 1 >= v98)
        {
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        if (!*v167)
        {
          goto LABEL_166;
        }

        v134 = v27;
        v135 = &v100[16 * v102 - 16];
        v136 = *v135;
        v137 = &v100[16 * v102];
        v138 = *(v137 + 1);
        v139 = v170;
        sub_1C718D38C(*v167 + *(v165 + 72) * *v135, *v167 + *(v165 + 72) * *v137, *v167 + *(v165 + 72) * v138, v29);
        v170 = v139;
        if (v139)
        {
          goto LABEL_139;
        }

        if (v138 < v136)
        {
          goto LABEL_141;
        }

        v140 = *(v134 + 2);
        if (v102 > v140)
        {
          goto LABEL_142;
        }

        *v135 = v136;
        *(v135 + 1) = v138;
        if (v102 >= v140)
        {
          goto LABEL_143;
        }

        v98 = v140 - 1;
        sub_1C7423CF4(v137 + 16, v140 - 1 - v102, &v100[16 * v102]);
        v27 = v134;
        *(v134 + 2) = v140 - 1;
        v74 = v140 > 2;
        v12 = v172;
        v6 = v173;
        v15 = v171;
        if (!v74)
        {
          goto LABEL_126;
        }
      }

      v109 = &v100[16 * v98];
      v110 = *(v109 - 8);
      v111 = *(v109 - 7);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_144;
      }

      v114 = *(v109 - 6);
      v113 = *(v109 - 5);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_145;
      }

      v116 = *(v104 + 1);
      v117 = v116 - *v104;
      if (__OFSUB__(v116, *v104))
      {
        goto LABEL_147;
      }

      v115 = __OFADD__(v107, v117);
      v118 = v107 + v117;
      if (v115)
      {
        goto LABEL_150;
      }

      if (v118 >= v112)
      {
        v132 = *v103;
        v131 = *(v103 + 1);
        v115 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v115)
        {
          goto LABEL_158;
        }

        if (v107 < v133)
        {
          v102 = v98 - 2;
        }

        goto LABEL_119;
      }

      goto LABEL_97;
    }

LABEL_126:
    v25 = v167[1];
    v26 = v169;
    v19 = v162;
    if (v169 >= v25)
    {
      goto LABEL_129;
    }
  }

  v76 = v28 + v153;
  if (__OFADD__(v28, v153))
  {
    goto LABEL_162;
  }

  if (v76 >= v75)
  {
    v76 = v167[1];
  }

  if (v76 < v28)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v29 == v76)
  {
    goto LABEL_77;
  }

  v155 = v27;
  v77 = *v167;
  v78 = *(v165 + 72);
  v79 = *v167 + v78 * (v29 - 1);
  v80 = -v78;
  v159 = v28;
  v160 = v78;
  v81 = v28 - v29;
  v174 = v77;
  v82 = v77 + v29 * v78;
  v163 = v76;
LABEL_58:
  v168 = v79;
  v169 = v29;
  v164 = v82;
  v83 = v82;
  v166 = v81;
  while (1)
  {
    sub_1C718AFC8(v83, v15);
    sub_1C718AFC8(v79, v12);
    v84 = *(v6 + 36);
    v85 = *(v15 + v84);
    v86 = *(v12 + v84);
    if (v85 == v86)
    {
      v87 = v15;
      v88 = *v15;
      v89 = v87[1];
      v90 = MEMORY[0x1CCA5CE50](v88, v89);
      v91 = *v12;
      v92 = v12[1];
      v93 = MEMORY[0x1CCA5CE50](v91, v92);
      if (v90 == v93)
      {
        if (v88 == v91 && v89 == v92)
        {
          v12 = v172;
          sub_1C718B024(v172, type metadata accessor for PersonalTrait);
          v15 = v171;
          sub_1C718B024(v171, type metadata accessor for PersonalTrait);
          v6 = v173;
LABEL_75:
          v29 = v169 + 1;
          v79 = v168 + v160;
          v81 = v166 - 1;
          v82 = v164 + v160;
          if (v169 + 1 == v163)
          {
            v29 = v163;
            v27 = v155;
            v28 = v159;
            goto LABEL_77;
          }

          goto LABEL_58;
        }

        v95 = sub_1C7551DBC();
      }

      else
      {
        v95 = v90 < v93;
      }

      v12 = v172;
      v6 = v173;
      v15 = v171;
    }

    else
    {
      v95 = v86 < v85;
    }

    sub_1C718B024(v12, type metadata accessor for PersonalTrait);
    sub_1C718B024(v15, type metadata accessor for PersonalTrait);
    if ((v95 & 1) == 0)
    {
      goto LABEL_75;
    }

    if (!v174)
    {
      break;
    }

    v96 = v175;
    sub_1C718DBAC(v83, v175);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C718DBAC(v96, v79);
    v79 += v80;
    v83 += v80;
    v73 = __CFADD__(v81++, 1);
    if (v73)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
}

void sub_1C718CF24(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v18 = v14 / v13;
  v59 = a1;
  v58 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    v28 = &v48 - v10;
    sub_1C741E698(a2, v16 / v13, a4);
    v29 = a4 + v19 * v13;
    v30 = -v13;
    v31 = v29;
    v54 = v30;
    v51 = a1;
    v52 = a4;
    v50 = v11;
LABEL_37:
    v32 = a2 + v30;
    v33 = a3;
    v34 = v31;
    v53 = a2 + v30;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = a2;
        v57 = v34;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v34;
      v35 = v33 + v54;
      v36 = v29 + v54;
      v37 = v28;
      v38 = v28;
      v39 = v29;
      v40 = v33;
      sub_1C718F68C(v29 + v54, v38);
      v41 = v55;
      sub_1C718F68C(v32, v55);
      v42 = *(v56 + 48);
      v43 = *(v37 + v42);
      v44 = *(v41 + v42);
      sub_1C6FD7FC8(v41, &qword_1EC218328);
      sub_1C6FD7FC8(v37, &qword_1EC218328);
      if (v44 < v43)
      {
        v48 = v39;
        v46 = v40 < a2 || v35 >= a2;
        a3 = v35;
        if (v46)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v49;
          v28 = v50;
          v30 = v54;
          a1 = v51;
          a4 = v52;
          v29 = v48;
        }

        else
        {
          v31 = v49;
          v15 = v40 == a2;
          v47 = v53;
          v30 = v54;
          a2 = v53;
          v28 = v50;
          a1 = v51;
          a4 = v52;
          v29 = v48;
          if (!v15)
          {
            v31 = v49;
            swift_arrayInitWithTakeBackToFront();
            v29 = v48;
            a2 = v47;
          }
        }

        goto LABEL_37;
      }

      if (v40 < v39 || v35 >= v39)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v35;
        v29 = v36;
        v34 = v36;
        v28 = v50;
        a1 = v51;
        a4 = v52;
        v32 = v53;
      }

      else
      {
        v34 = v36;
        v15 = v39 == v40;
        v33 = v35;
        v29 = v36;
        v28 = v50;
        a1 = v51;
        a4 = v52;
        v32 = v53;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v35;
          v29 = v36;
          v34 = v36;
        }
      }
    }

    v59 = a2;
    v57 = v31;
  }

  else
  {
    sub_1C741E698(a1, v14 / v13, a4);
    v20 = a4 + v18 * v13;
    v57 = v20;
    while (a4 < v20 && a2 < a3)
    {
      sub_1C718F68C(a2, v11);
      v22 = v55;
      sub_1C718F68C(a4, v55);
      v23 = *(v56 + 48);
      v24 = *&v11[v23];
      v25 = *(v22 + v23);
      sub_1C6FD7FC8(v22, &qword_1EC218328);
      sub_1C6FD7FC8(v11, &qword_1EC218328);
      if (v25 >= v24)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v13;
        a4 += v13;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v13;
      }

      a1 += v13;
      v59 = a1;
    }
  }

LABEL_59:
  sub_1C74208A0(&v59, &v58, &v57);
}

void sub_1C718D38C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v74 = a3;
  v7 = type metadata accessor for PersonalTrait();
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v66 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v66 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_83;
  }

  v21 = v74 - a2;
  if (v74 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_84;
  }

  v75 = v14;
  v23 = v19 / v18;
  v78 = a1;
  v77 = a4;
  v24 = v21 / v18;
  v71 = v7;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C741E398(a1, v19 / v18, a4);
    v72 = v18;
    v73 = a4 + v23 * v18;
    v76 = v73;
    v25 = a4;
    while (1)
    {
      if (v25 >= v73 || a2 >= v74)
      {
        goto LABEL_81;
      }

      sub_1C718AFC8(a2, v16);
      sub_1C718AFC8(v25, v12);
      v27 = *(v7 + 36);
      v28 = *(v16 + v27);
      v29 = *(v12 + v27);
      if (v28 == v29)
      {
        v75 = a1;
        v30 = a2;
        v31 = v25;
        v32 = *v16;
        v33 = v16[1];
        v34 = MEMORY[0x1CCA5CE50](*v16, v33);
        v35 = *v12;
        v36 = v12[1];
        v37 = MEMORY[0x1CCA5CE50](*v12, v36);
        if (v34 == v37)
        {
          if (v32 == v35 && v33 == v36)
          {
            sub_1C718B024(v12, type metadata accessor for PersonalTrait);
            sub_1C718B024(v16, type metadata accessor for PersonalTrait);
            v7 = v71;
            v18 = v72;
            v25 = v31;
            a2 = v30;
            a1 = v75;
            goto LABEL_37;
          }

          v39 = sub_1C7551DBC();
        }

        else
        {
          v39 = v34 < v37;
        }

        v7 = v71;
        v18 = v72;
        v25 = v31;
        a2 = v30;
        a1 = v75;
      }

      else
      {
        v39 = v29 < v28;
      }

      sub_1C718B024(v12, type metadata accessor for PersonalTrait);
      sub_1C718B024(v16, type metadata accessor for PersonalTrait);
      if (v39)
      {
        if (a1 < a2 || a1 >= a2 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
        goto LABEL_46;
      }

LABEL_37:
      if (a1 < v25 || a1 >= v25 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v25)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v77 = v25 + v18;
      v25 += v18;
LABEL_46:
      a1 += v18;
      v78 = a1;
    }
  }

  sub_1C741E398(a2, v21 / v18, a4);
  v42 = v18;
  v43 = a4 + v24 * v18;
  v44 = -v42;
  v45 = v43;
  v47 = v74;
  v46 = v75;
  v67 = a4;
  v72 = -v42;
LABEL_48:
  v69 = a2 + v44;
  v70 = a2;
  v48 = v47;
  v49 = v45;
  v74 = v45;
  while (1)
  {
    if (v43 <= a4)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_81;
    }

    if (v70 <= a1)
    {
      break;
    }

    v68 = v49;
    v50 = v43 + v44;
    sub_1C718AFC8(v43 + v44, v46);
    v51 = v73;
    sub_1C718AFC8(v69, v73);
    v52 = *(v7 + 36);
    v53 = *(v46 + v52);
    v54 = *(v51 + v52);
    if (v53 == v54)
    {
      v56 = *v46;
      v55 = v46[1];
      v57 = MEMORY[0x1CCA5CE50](*v46, v55);
      v58 = *v51;
      v59 = v51[1];
      v60 = MEMORY[0x1CCA5CE50](v58, v59);
      if (v57 == v60)
      {
        if (v56 == v58 && v55 == v59)
        {
          v62 = 0;
        }

        else
        {
          v62 = sub_1C7551DBC();
        }
      }

      else
      {
        v62 = v57 < v60;
      }

      v7 = v71;
      a4 = v67;
    }

    else
    {
      v62 = v54 < v53;
    }

    v47 = v48 + v72;
    sub_1C718B024(v73, type metadata accessor for PersonalTrait);
    sub_1C718B024(v75, type metadata accessor for PersonalTrait);
    if (v62)
    {
      if (v48 < v70 || v47 >= v70)
      {
        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v68;
        v46 = v75;
        v44 = v72;
      }

      else
      {
        v45 = v68;
        v65 = v69;
        v20 = v48 == v70;
        a2 = v69;
        v46 = v75;
        v44 = v72;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v65;
          v45 = v68;
        }
      }

      goto LABEL_48;
    }

    if (v48 < v43 || v47 >= v43)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v47;
      v43 = v50;
      v49 = v50;
      v45 = v74;
      v46 = v75;
      v44 = v72;
    }

    else
    {
      v49 = v50;
      v20 = v43 == v48;
      v48 = v47;
      v43 = v50;
      v45 = v74;
      v46 = v75;
      v44 = v72;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v45 = v74;
        v48 = v47;
        v43 = v50;
        v49 = v50;
      }
    }
  }

  v78 = v70;
  v76 = v45;
LABEL_81:
  sub_1C74208B4(&v78, &v77, &v76);
}

unint64_t sub_1C718D988()
{
  result = qword_1EC218538;
  if (!qword_1EC218538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218538);
  }

  return result;
}

unint64_t sub_1C718D9DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218540);
    sub_1C718DA70(v4);
    OUTLINED_FUNCTION_57_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C718DA70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C718DAB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2165B8);
    OUTLINED_FUNCTION_3_57();
    sub_1C718DA70(v4);
    OUTLINED_FUNCTION_57_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C718DB58()
{
  result = qword_1EC218578;
  if (!qword_1EC218578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218578);
  }

  return result;
}

uint64_t sub_1C718DBAC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1C718DC08()
{
  result = qword_1EC2185C8;
  if (!qword_1EC2185C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2185C8);
  }

  return result;
}

unint64_t sub_1C718DC5C()
{
  result = qword_1EC2185D0;
  if (!qword_1EC2185D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2185D0);
  }

  return result;
}

unint64_t sub_1C718DCB0()
{
  result = qword_1EC2185D8;
  if (!qword_1EC2185D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2185D8);
  }

  return result;
}

unint64_t sub_1C718DD04()
{
  result = qword_1EC2185E0;
  if (!qword_1EC2185E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2185E0);
  }

  return result;
}

unint64_t sub_1C718DD58()
{
  result = qword_1EC2185E8;
  if (!qword_1EC2185E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2185E8);
  }

  return result;
}

unint64_t sub_1C718DDAC()
{
  result = qword_1EC2185F0;
  if (!qword_1EC2185F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2185F0);
  }

  return result;
}

unint64_t sub_1C718DE04()
{
  result = qword_1EC218630;
  if (!qword_1EC218630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218630);
  }

  return result;
}

unint64_t sub_1C718DE9C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C718DEE4()
{
  result = qword_1EC218648;
  if (!qword_1EC218648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218648);
  }

  return result;
}

uint64_t sub_1C718DF60()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C718E07C()
{
  result = type metadata accessor for PersonalTrait();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PersonalTraitSelector.RejectionReason(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C718E118()
{
  sub_1C718E1F8();
  if (v0 <= 0x3F)
  {
    sub_1C718E240();
    if (v1 <= 0x3F)
    {
      sub_1C718E368(319, &qword_1EC218690);
      if (v2 <= 0x3F)
      {
        sub_1C718E268(319);
        if (v3 <= 0x3F)
        {
          sub_1C718E368(319, &qword_1EC2186A0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C718E1F8()
{
  if (!qword_1EC218680)
  {
    v0 = type metadata accessor for PersonalTrait();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC218680);
    }
  }
}

uint64_t sub_1C718E240()
{
  result = qword_1EC218688;
  if (!qword_1EC218688)
  {
    result = MEMORY[0x1E69E63B0];
    atomic_store(MEMORY[0x1E69E63B0], &qword_1EC218688);
  }

  return result;
}

uint64_t sub_1C718E268(uint64_t a1)
{
  v1 = qword_1EC218698;
  if (!qword_1EC218698)
  {
    MEMORY[0x1EEE9AC00](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v1 = TupleTypeMetadata;
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC218698);
    }
  }

  return v1;
}

void sub_1C718E368(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PersonalTraitSelector.RejectionReason.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C718E4A4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalTraitSelector.RejectionReason.NotSelectedInRandomSamplingCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C718E65C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_478(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C718E734(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_478(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C718E870()
{
  result = qword_1EC2186A8;
  if (!qword_1EC2186A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186A8);
  }

  return result;
}

unint64_t sub_1C718E8C8()
{
  result = qword_1EC2186B0;
  if (!qword_1EC2186B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186B0);
  }

  return result;
}

unint64_t sub_1C718E920()
{
  result = qword_1EC2186B8;
  if (!qword_1EC2186B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186B8);
  }

  return result;
}

unint64_t sub_1C718E978()
{
  result = qword_1EC2186C0;
  if (!qword_1EC2186C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186C0);
  }

  return result;
}

unint64_t sub_1C718E9D0()
{
  result = qword_1EC2186C8;
  if (!qword_1EC2186C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186C8);
  }

  return result;
}

unint64_t sub_1C718EA28()
{
  result = qword_1EC2186D0;
  if (!qword_1EC2186D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186D0);
  }

  return result;
}

unint64_t sub_1C718EA80()
{
  result = qword_1EC2186D8;
  if (!qword_1EC2186D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186D8);
  }

  return result;
}

unint64_t sub_1C718EAD8()
{
  result = qword_1EC2186E0;
  if (!qword_1EC2186E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186E0);
  }

  return result;
}

unint64_t sub_1C718EB30()
{
  result = qword_1EC2186E8;
  if (!qword_1EC2186E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186E8);
  }

  return result;
}

unint64_t sub_1C718EB88()
{
  result = qword_1EC2186F0;
  if (!qword_1EC2186F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186F0);
  }

  return result;
}

unint64_t sub_1C718EBE0()
{
  result = qword_1EC2186F8;
  if (!qword_1EC2186F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2186F8);
  }

  return result;
}

unint64_t sub_1C718EC38()
{
  result = qword_1EC218700;
  if (!qword_1EC218700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218700);
  }

  return result;
}

unint64_t sub_1C718EC90()
{
  result = qword_1EC218708;
  if (!qword_1EC218708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218708);
  }

  return result;
}

unint64_t sub_1C718ECE8()
{
  result = qword_1EC218710;
  if (!qword_1EC218710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218710);
  }

  return result;
}

unint64_t sub_1C718ED40()
{
  result = qword_1EC218718;
  if (!qword_1EC218718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218718);
  }

  return result;
}

unint64_t sub_1C718ED98()
{
  result = qword_1EC218720;
  if (!qword_1EC218720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218720);
  }

  return result;
}

unint64_t sub_1C718EDF0()
{
  result = qword_1EC218728;
  if (!qword_1EC218728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218728);
  }

  return result;
}

unint64_t sub_1C718EE48()
{
  result = qword_1EC218730;
  if (!qword_1EC218730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218730);
  }

  return result;
}

unint64_t sub_1C718EEA0()
{
  result = qword_1EC218738;
  if (!qword_1EC218738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218738);
  }

  return result;
}

unint64_t sub_1C718EEF8()
{
  result = qword_1EC218740;
  if (!qword_1EC218740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218740);
  }

  return result;
}

unint64_t sub_1C718EF50()
{
  result = qword_1EC218748;
  if (!qword_1EC218748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218748);
  }

  return result;
}

unint64_t sub_1C718EFA8()
{
  result = qword_1EC218750;
  if (!qword_1EC218750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218750);
  }

  return result;
}

unint64_t sub_1C718F000()
{
  result = qword_1EC218758;
  if (!qword_1EC218758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218758);
  }

  return result;
}

unint64_t sub_1C718F058()
{
  result = qword_1EC218760;
  if (!qword_1EC218760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218760);
  }

  return result;
}

unint64_t sub_1C718F0B0()
{
  result = qword_1EC218768;
  if (!qword_1EC218768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218768);
  }

  return result;
}

unint64_t sub_1C718F108()
{
  result = qword_1EC218770;
  if (!qword_1EC218770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218770);
  }

  return result;
}

unint64_t sub_1C718F160()
{
  result = qword_1EC218778;
  if (!qword_1EC218778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218778);
  }

  return result;
}

unint64_t sub_1C718F1B8()
{
  result = qword_1EC218780;
  if (!qword_1EC218780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218780);
  }

  return result;
}

unint64_t sub_1C718F210()
{
  result = qword_1EC218788;
  if (!qword_1EC218788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218788);
  }

  return result;
}

unint64_t sub_1C718F268()
{
  result = qword_1EC218790;
  if (!qword_1EC218790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218790);
  }

  return result;
}

unint64_t sub_1C718F2C0()
{
  result = qword_1EC218798;
  if (!qword_1EC218798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218798);
  }

  return result;
}

unint64_t sub_1C718F318()
{
  result = qword_1EC2187A0;
  if (!qword_1EC2187A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2187A0);
  }

  return result;
}

unint64_t sub_1C718F370()
{
  result = qword_1EC2187A8;
  if (!qword_1EC2187A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2187A8);
  }

  return result;
}

unint64_t sub_1C718F3C8()
{
  result = qword_1EC2187B0;
  if (!qword_1EC2187B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2187B0);
  }

  return result;
}

unint64_t sub_1C718F420()
{
  result = qword_1EC2187B8;
  if (!qword_1EC2187B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2187B8);
  }

  return result;
}

unint64_t sub_1C718F478()
{
  result = qword_1EC2187C0;
  if (!qword_1EC2187C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2187C0);
  }

  return result;
}

unint64_t sub_1C718F4D0()
{
  result = qword_1EC2187C8;
  if (!qword_1EC2187C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2187C8);
  }

  return result;
}

unint64_t sub_1C718F528()
{
  result = qword_1EC2187D0;
  if (!qword_1EC2187D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2187D0);
  }

  return result;
}

unint64_t sub_1C718F580()
{
  result = qword_1EC2187D8;
  if (!qword_1EC2187D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2187D8);
  }

  return result;
}

uint64_t sub_1C718F5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTrait();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C718F638()
{
  result = qword_1EC2187E8;
  if (!qword_1EC2187E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2187E8);
  }

  return result;
}

uint64_t sub_1C718F68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C718F6FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_40_18()
{

  return sub_1C75505FC();
}

uint64_t OUTLINED_FUNCTION_53_17()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_54_16()
{

  return sub_1C7551C1C();
}

BOOL OUTLINED_FUNCTION_55_13(int a1)
{
  *(v2 - 288) = a1;

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C718F924(uint64_t a1)
{
  sub_1C70E25E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75604F0;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v3 = sub_1C6F6D524();
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x80000001C759E260;
  v4 = MEMORY[0x1E69E6870];
  *(v2 + 96) = MEMORY[0x1E69E6810];
  *(v2 + 104) = v4;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
  return sub_1C755112C();
}

uint64_t KMeans.distanceBlock.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C718FADC(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_1C718FBD4(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t KMeans.__allocating_init(numberOfClusters:distanceBlock:earlyStoppingDistance:random:randomSampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, float a6)
{
  result = swift_allocObject();
  v13 = *a5;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a6;
  *(result + 48) = a4;
  *(result + 56) = v13;
  return result;
}

uint64_t KMeans.init(numberOfClusters:distanceBlock:earlyStoppingDistance:random:randomSampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, float a6)
{
  v7 = *a5;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = v7;
  return v6;
}

uint64_t sub_1C718FD04(vDSP_Length a1)
{
  v2 = v1;
  __B[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(v1 + 16);
  if (v5 >= v4)
  {
    v53 = a1;
    v54 = sub_1C71CD888(0, v4);
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(v2 + 64) = v54;

    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(v2 + 72) = v53;

    return sub_1C75504FC();
  }

  LOBYTE(__B[0]) = *(v1 + 56);
  v63 = v5;
  v6 = Random.sample(k:from:using:)(v5, a1, __B);
  if (!v4)
  {
    goto LABEL_73;
  }

  v7 = v6;
  v56 = a1;
  v8 = *(a1 + 32);
  v64 = a1 + 32;
  v9 = 1;
  v62 = v1;
  v60 = v4;
  v57 = v8;
  do
  {
    v58 = v9;
    sub_1C725CE9C(*(v8 + 16), 0.0);
    v11 = sub_1C725CF64(v10, v63);
    sub_1C725CE9C(v63, 0.0);
    v13 = v12;
    v14 = 0;
    v61 = (v7 + 32);
    v65 = v7;
    while (1)
    {
      v67 = v13;
      if (v14 == v4)
      {
        break;
      }

      v66 = v14;
      v15 = *(v64 + 8 * v14);
      v16 = *(v7 + 16);
      if (v16)
      {
        v17 = *(v62 + 24);
        __B[0] = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C716DD68(0, v16, 0);
        v18 = __B[0];
        v19 = v61;
        do
        {
          v20 = *v19;
          v68 = v15;
          v69[0] = v20;
          sub_1C75504FC();
          v21 = v17(v69, &v68);

          __B[0] = v18;
          v23 = *(v18 + 16);
          v22 = *(v18 + 24);
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            sub_1C716DD68(v22 > 1, v23 + 1, 1);
            v18 = __B[0];
          }

          *(v18 + 16) = v24;
          *(v18 + 4 * v23 + 32) = v21;
          ++v19;
          --v16;
        }

        while (v16);
        v4 = v60;
      }

      else
      {
        sub_1C75504FC();
        v18 = MEMORY[0x1E69E7CC0];
        v24 = *(MEMORY[0x1E69E7CC0] + 16);
      }

      if (v24 != 1)
      {
        if (v24)
        {
          v25 = 0;
          v26 = 0;
          while (v25 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v26 >= v24)
            {
              goto LABEL_66;
            }

            if (*(v18 + 4 * v25 + 36) < *(v18 + 32 + 4 * v26))
            {
              v26 = v25 + 1;
            }

            if (v24 - 1 == ++v25)
            {

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_22;
              }

              goto LABEL_36;
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        sub_1C719079C();
        swift_allocError();
        *v55 = 1;
        swift_willThrow();
      }

      v26 = 0;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = v65;
      }

      else
      {
LABEL_36:
        sub_1C70E3DC4();
        v11 = v34;
LABEL_22:
        v7 = v65;
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }
      }

      if (v26 >= *(v11 + 16))
      {
        goto LABEL_68;
      }

      v27 = v11 + 32;
      v28 = *(v11 + 32 + 8 * v26);
      v29 = *(v28 + 16);
      if (v29 != *(v15 + 16))
      {
        goto LABEL_69;
      }

      v30 = v11;
      if (v29)
      {
        v31 = sub_1C7550BBC();
        *(v31 + 16) = v29;
        bzero((v31 + 32), 4 * v29);
        v32 = *(v28 + 16);
      }

      else
      {
        v32 = 0;
        v31 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1CCA5FAA0](v28 + 32, 1, v15 + 32, 1, v31 + 32, 1, v32);

      *(v27 + 8 * v26) = v31;
      v13 = v67;
      if (v26 >= *(v67 + 16))
      {
        goto LABEL_70;
      }

      v33 = *(v67 + 4 * v26 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C70E3D94();
        v13 = v35;
      }

      v11 = v30;
      if (v26 >= *(v13 + 16))
      {
        goto LABEL_71;
      }

      v14 = v66 + 1;
      *(v13 + 4 * v26 + 32) = v33 + 1.0;
    }

    if ((v63 & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    if (v63)
    {
      if (v63 > *(v13 + 16))
      {
        goto LABEL_75;
      }

      v36 = 0;
      do
      {
        v37 = *(v67 + 4 * v36 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E3DC4();
          v11 = v45;
        }

        if (v36 >= *(v11 + 16))
        {
          goto LABEL_72;
        }

        v38 = v11;
        v39 = v11 + 8 * v36;
        v40 = *(v39 + 32);
        LODWORD(__B[0]) = v37;
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = sub_1C7550BBC();
          *(v42 + 16) = v41;
          bzero((v42 + 32), 4 * v41);
          v43 = *(v40 + 16);
        }

        else
        {
          v43 = 0;
          v42 = MEMORY[0x1E69E7CC0];
        }

        ++v36;
        vDSP_vsdiv((v40 + 32), 1, __B, (v42 + 32), 1, v43);

        *(v39 + 32) = v42;
        v44 = v63;
        v11 = v38;
      }

      while (v63 != v36);
      if (v63 > *(v7 + 16))
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (v63 > *(v38 + 16))
      {
        goto LABEL_77;
      }

      v46 = *(v62 + 24);
      v47 = 0.0;
      v48 = 32;
      do
      {
        __B[0] = *(v7 + v48);
        v69[0] = *(v38 + v48);
        sub_1C75504FC();
        sub_1C75504FC();
        v49 = v46(__B, v69);

        v47 = v47 + v49;
        v48 += 8;
        --v44;
      }

      while (v44);

      v7 = v38;
    }

    else
    {

      v47 = 0.0;
      v7 = v11;
    }

    v8 = v57;
    v50 = *(v62 + 40) >= v47 || v58 >= 0x270F;
    v9 = v58 + 1;
  }

  while (!v50);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v62 + 72) = v7;

  result = sub_1C7190394(v56);
  if (!v59)
  {
    v52 = result;
    OUTLINED_FUNCTION_56();
    swift_beginAccess();
    *(v62 + 64) = v52;
  }

  return result;
}

uint64_t sub_1C7190394(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[9];
  if (!v4)
  {
    sub_1C719079C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    return v1;
  }

  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1C75504FC();
  sub_1C716D854();
  v7 = 0;
  v1 = v34;
  v29 = v5;
  v27 = (v4 + 32);
  v28 = v4;
  v8 = v2[3];
  while (1)
  {
    v30 = v7;
    v9 = *(a1 + 32 + 8 * v7);
    v10 = *(v4 + 16);
    if (v10)
    {
      v33 = v6;
      sub_1C75504FC();
      sub_1C716DD68(0, v10, 0);
      v6 = v33;
      v11 = v27;
      do
      {
        v12 = *v11;
        v31 = v9;
        v32 = v12;
        sub_1C75504FC();
        v13 = v8(&v32, &v31);

        v33 = v6;
        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          result = sub_1C716DD68(v15 > 1, v16 + 1, 1);
          v6 = v33;
        }

        *(v6 + 16) = v17;
        *(v6 + 4 * v16 + 32) = v13;
        ++v11;
        --v10;
      }

      while (v10);
      v4 = v28;
    }

    else
    {
      result = sub_1C75504FC();
      v17 = *(v6 + 16);
    }

    if (v17 != 1)
    {
      break;
    }

    v18 = 0;
LABEL_21:

    v34 = v1;
    v24 = v1[2];
    if (v24 >= v1[3] >> 1)
    {
      sub_1C716D854();
      v1 = v34;
    }

    v7 = v30 + 1;
    v1[2] = v24 + 1;
    v1[v24 + 4] = v18;
    v6 = MEMORY[0x1E69E7CC0];
    if (v30 + 1 == v29)
    {

      return v1;
    }
  }

  if (!v17)
  {

    sub_1C719079C();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    return v1;
  }

  v18 = 0;
  v19 = 0;
  v20 = (v6 + 36);
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v22 = 1;
  while (v21)
  {
    if (v19 >= v17)
    {
      goto LABEL_30;
    }

    v23 = *v20++;
    if (v23 < *(v6 + 32 + 4 * v19))
    {
      v18 = v22;
      v19 = v22;
    }

    ++v22;
    --v21;
    if (v17 == v22)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t KMeans.deinit()
{

  return v0;
}

uint64_t KMeans.__deallocating_deinit()
{
  KMeans.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C719079C()
{
  result = qword_1EC218808;
  if (!qword_1EC218808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218808);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KMeans.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7190A68()
{
  result = qword_1EC218810;
  if (!qword_1EC218810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218810);
  }

  return result;
}

uint64_t sub_1C7190ABC()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EC218818 = result;
  return result;
}

id static GenerativeMediaCuration.fetchFeaturedGenerativeAssets(with:limit:sort:)(void *a1, uint64_t a2, int a3)
{
  HIDWORD(v35) = a3;
  if (qword_1EC213E50 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC218818;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v6 = v5;
  v36 = PerformanceMeasure.init(name:log:)();
  v7 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAB0;
  *(v8 + 32) = sub_1C755068C();
  *(v8 + 40) = v9;
  sub_1C6FCA0EC(v8, v7);
  [v7 setFetchLimit_];
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C75732A0;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v11 = swift_allocObject();
  v34 = xmmword_1C75604F0;
  *(v11 + 16) = xmmword_1C75604F0;
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1C6F6D524();
  *(v11 + 64) = v13;
  v14 = MEMORY[0x1E69E7290];
  *(v11 + 32) = 1684957547;
  *(v11 + 40) = 0xE400000000000000;
  v15 = MEMORY[0x1E69E72E8];
  *(v11 + 96) = v14;
  *(v11 + 104) = v15;
  *(v11 + 72) = 0;
  *(v10 + 32) = sub_1C755112C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C755BAB0;
  *(v16 + 56) = v12;
  *(v16 + 64) = v13;
  *(v16 + 32) = 0xD000000000000028;
  *(v16 + 40) = 0x80000001C759AE50;
  *(v10 + 40) = sub_1C755112C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C755BAB0;
  *(v17 + 56) = v12;
  *(v17 + 64) = v13;
  strcpy((v17 + 32), "detectedFaces");
  *(v17 + 46) = -4864;
  *(v10 + 48) = sub_1C755112C();
  *(v10 + 56) = [objc_opt_self() predicateForSourcingAssetsFromHighlightExtendedCuration];
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C75604F0;
  *(v18 + 56) = v12;
  *(v18 + 64) = v13;
  strcpy((v18 + 32), "curationScore");
  *(v18 + 46) = -4864;
  v19 = *MEMORY[0x1E69BECC0];
  v20 = MEMORY[0x1E69E6438];
  *(v18 + 96) = MEMORY[0x1E69E63B0];
  *(v18 + 104) = v20;
  *(v18 + 72) = v19;
  *(v10 + 64) = sub_1C755112C();
  v21 = sub_1C6F6E5C4();
  [v7 setInternalPredicate_];

  if ((v35 & 0x100000000) != 0)
  {
    v22 = [objc_opt_self() internalSortDescriptorsWithCreationDateAscending_];
    if (v22)
    {
      sub_1C6F65BE8(0, &qword_1EDD108F0);
      v23 = sub_1C7550B5C();

      sub_1C71BABA4(v23, v31, v24, v25, v26, v27, v28, v29, v30, 2, 4, v35, v36, 1, 2, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);

      v22 = sub_1C7550B3C();
    }

    [v7 setInternalSortDescriptors_];
  }

  v32 = [objc_opt_self() fetchAssetsWithOptions_];

  sub_1C6F85170();

  return v32;
}

_BYTE *storeEnumTagSinglePayload for GenerativeMediaCuration(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C71910A4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      *a1 = v2;
      goto LABEL_7;
    case 2uLL:
      *a1 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
LABEL_7:

      break;
    case 3uLL:
    case 4uLL:
      result = sub_1C71910A4();
      break;
    default:
      sub_1C7195E04();
      OUTLINED_FUNCTION_166_0();
      *v3 = v2;
      *(v3 + 8) = 1;
      swift_willThrow();

      break;
  }

  return result;
}

uint64_t StoryState.TokenState.description.getter()
{
  v3 = *v0;
  switch(*v0 >> 61)
  {
    case 1uLL:
      v31 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = 0x287972657571;
      v40 = 0xE600000000000000;
      v7 = MEMORY[0x1E69E7CC0];
      if (*(v31 + 16))
      {
        v33 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_105();
        sub_1C6F7ED9C();
        v7 = v33;
        do
        {
          OUTLINED_FUNCTION_36_16();
          if (v1 >= v2 >> 1)
          {
            OUTLINED_FUNCTION_116_0();
            sub_1C6F7ED9C();
            v7 = v33;
          }

          OUTLINED_FUNCTION_31_20();
        }

        while (!v8);
      }

      goto LABEL_39;
    case 2uLL:
      OUTLINED_FUNCTION_21_27(v3, v33, v34, v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_45_15();
      v41 = v18;
      v42 = 0xE900000000000028;
      v20 = ExtendedTokenCollection.allTokens.getter(v19);
      if (!*(v20 + 16))
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_11_34();
      v13 = v38;
      do
      {
        sub_1C6FB5E28(v20 + 32, &v33);
        __swift_project_boxed_opaque_existential_1(&v33, v36);
        v21 = OUTLINED_FUNCTION_7_41();
        v22(v21);
        __swift_destroy_boxed_opaque_existential_1(&v33);
        OUTLINED_FUNCTION_15_37();
        if (v17)
        {
          OUTLINED_FUNCTION_14_35(v23);
          sub_1C6F7ED9C();
          v13 = v38;
        }

        OUTLINED_FUNCTION_10_40();
      }

      while (!v8);
      goto LABEL_30;
    case 3uLL:
      v24 = OUTLINED_FUNCTION_21_27(v3, v33, v34, v35, v36, v37, v38, v39);
      v41 = 0x286C616E6966;
      v42 = 0xE600000000000000;
      v25 = ExtendedTokenCollection.allTokens.getter(v24);
      if (!*(v25 + 16))
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_11_34();
      v13 = v38;
      do
      {
        sub_1C6FB5E28(v25 + 32, &v33);
        __swift_project_boxed_opaque_existential_1(&v33, v36);
        v26 = OUTLINED_FUNCTION_7_41();
        v27(v26);
        __swift_destroy_boxed_opaque_existential_1(&v33);
        OUTLINED_FUNCTION_15_37();
        if (v17)
        {
          OUTLINED_FUNCTION_14_35(v28);
          sub_1C6F7ED9C();
          v13 = v38;
        }

        OUTLINED_FUNCTION_10_40();
      }

      while (!v8);
      goto LABEL_30;
    case 4uLL:
      OUTLINED_FUNCTION_21_27(v3, v33, v34, v35, v36, v37, v38, v39);
      OUTLINED_FUNCTION_22_32();
      v41 = v9;
      v42 = v10;
      v12 = ExtendedTokenCollection.allTokens.getter(v11);
      if (*(v12 + 16))
      {
        OUTLINED_FUNCTION_11_34();
        v13 = v38;
        do
        {
          sub_1C6FB5E28(v12 + 32, &v33);
          __swift_project_boxed_opaque_existential_1(&v33, v36);
          v14 = OUTLINED_FUNCTION_7_41();
          v15(v14);
          __swift_destroy_boxed_opaque_existential_1(&v33);
          OUTLINED_FUNCTION_15_37();
          if (v17)
          {
            OUTLINED_FUNCTION_14_35(v16);
            sub_1C6F7ED9C();
            v13 = v38;
          }

          OUTLINED_FUNCTION_10_40();
        }

        while (!v8);
LABEL_30:
      }

      else
      {
LABEL_31:

        v13 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1CCA5D090](v13, MEMORY[0x1E69E6158]);

      v29 = OUTLINED_FUNCTION_57_0();
      MEMORY[0x1CCA5CD70](v29);

      OUTLINED_FUNCTION_40_19();
      return v41;
    default:
      v4 = *(v3 + 16);
      if (!v4)
      {
        return 0x6E6F4E2872657375;
      }

      OUTLINED_FUNCTION_43_17();
      v39 = v5;
      v40 = v6;
      v7 = MEMORY[0x1E69E7CC0];
      if (*(v4 + 16))
      {
        v33 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_105();
        sub_1C6F7ED9C();
        v7 = v33;
        do
        {
          OUTLINED_FUNCTION_36_16();
          if (v1 >= v2 >> 1)
          {
            OUTLINED_FUNCTION_116_0();
            sub_1C6F7ED9C();
            v7 = v33;
          }

          OUTLINED_FUNCTION_31_20();
        }

        while (!v8);
      }

LABEL_39:
      MEMORY[0x1CCA5D090](v7, MEMORY[0x1E69E6158]);

      v32 = OUTLINED_FUNCTION_57_0();
      MEMORY[0x1CCA5CD70](v32);

      OUTLINED_FUNCTION_40_19();
      return v39;
  }
}

__n128 StoryState.RetrievedAssetInfo.init(retrievedAssets:extendedRetrievedAssets:consolidatedPersonAssetUUIDs:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 32) = *a2;
  *(a4 + 48) = v6;
  *(a4 + 64) = a3;
  return result;
}

uint64_t static StoryState.RetrievedAssetInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[8];
  v6 = a2[1];
  v8 = a2[4];
  v7 = a2[5];
  v9 = a2[8];
  sub_1C7036A90(*a1, *a2);
  if (v10 & 1) != 0 && (sub_1C7043F5C(v2, v6))
  {
    sub_1C7036A90(v4, v8);
    if (v11 & 1) != 0 && (sub_1C7043F5C(v3, v7))
    {
      if (v5)
      {
        if (v9)
        {
          sub_1C75504FC();
          sub_1C7036A90(v5, v9);
          v13 = v12;

          if (v13)
          {
            return 1;
          }
        }
      }

      else if (!v9)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C719164C@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  switch(v2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      result = sub_1C719164C();
      break;
    case 3uLL:
      sub_1C7195E04();
      OUTLINED_FUNCTION_166_0();
      *v4 = v2;
      *(v4 + 8) = 2;
      result = swift_willThrow();
      break;
    default:
      *a1 = v2;

      break;
  }

  return result;
}

uint64_t StoryState.AssetState.description.getter()
{
  result = 1701736302;
  switch(*v0 >> 62)
  {
    case 1:
      result = 0x6465646E65747865;
      break;
    case 2:
      result = 0x6C657479726F7473;
      break;
    case 3:
      return result;
    default:
      result = 0x6576656972746572;
      break;
  }

  return result;
}

uint64_t StoryState.AssetState.description(assetPertinenceFilter:storyAssetManager:eventRecorder:)()
{
  v2 = *v0;
  result = 1701736302;
  switch(*v0 >> 62)
  {
    case 1uLL:
      sub_1C755180C();

      OUTLINED_FUNCTION_45_15();
      v19 = v5;
      OUTLINED_FUNCTION_41_17();
      OUTLINED_FUNCTION_3_58();
      result = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)();
      if (!v1)
      {

        v8 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v8);

        v9 = 0x2973746573736120;
        v10 = 0xE800000000000000;
        goto LABEL_13;
      }

      break;
    case 2uLL:
      OUTLINED_FUNCTION_13_38();
      sub_1C755180C();

      OUTLINED_FUNCTION_17_37();
      v18 = v6;
      v7 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v7);

      OUTLINED_FUNCTION_10_2();
      MEMORY[0x1CCA5CD70](0xD000000000000019);
      result = v18;
      break;
    case 3uLL:
      return result;
    default:
      v16 = *(v2 + 72);
      v15 = *(v2 + 80);
      OUTLINED_FUNCTION_13_38();
      sub_1C755180C();
      v19 = v17;
      MEMORY[0x1CCA5CD70](0x6576656972746572, 0xEA00000000002864);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();

      OUTLINED_FUNCTION_41_17();
      OUTLINED_FUNCTION_3_58();
      StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)();

      if (v1 || (, v4 = sub_1C7551D8C(), MEMORY[0x1CCA5CD70](v4), , MEMORY[0x1CCA5CD70](0x2C73746573736120, 0xE900000000000020), sub_1C75504FC(), sub_1C75504FC(), sub_1C75504FC(), , OUTLINED_FUNCTION_41_17(), OUTLINED_FUNCTION_3_58(), StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(), , , , , v16))
      {
      }

      else
      {

        v11 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v11);

        MEMORY[0x1CCA5CD70](0xD00000000000001BLL, 0x80000001C75A2240);
        if (v15)
        {
          sub_1C7025C9C();
          v12 = sub_1C75515BC();
          v14 = v13;
        }

        else
        {
          v14 = 0xE300000000000000;
          v12 = 7104878;
        }

        MEMORY[0x1CCA5CD70](v12, v14);

        v9 = 0xD00000000000001DLL;
        v10 = 0x80000001C75A2260;
LABEL_13:
        MEMORY[0x1CCA5CD70](v9, v10);
        result = v19;
      }

      break;
  }

  return result;
}

uint64_t StoryState.TraitState.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    v36 = *(v1 + 16);
    OUTLINED_FUNCTION_13_38();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v51 = 0xD000000000000012;
    v52 = v37;
    v38 = MEMORY[0x1E69E7CC0];
    if (*(v36 + 16))
    {
      v50 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_105();
      sub_1C6F7ED9C();
      v38 = v50;
      v39 = v36 + 32;
      do
      {
        sub_1C6FB5E28(v39, &v47);
        __swift_project_boxed_opaque_existential_1(&v47, v48);
        v40 = OUTLINED_FUNCTION_35_13();
        v41(v40);
        __swift_destroy_boxed_opaque_existential_1(&v47);
        OUTLINED_FUNCTION_46_16();
        if (v13)
        {
          OUTLINED_FUNCTION_15(v42);
          sub_1C6F7ED9C();
          v38 = v50;
        }

        OUTLINED_FUNCTION_34_16();
      }

      while (!v14);
    }

    MEMORY[0x1CCA5D090](v38, MEMORY[0x1E69E6158]);

    OUTLINED_FUNCTION_38_16();

    OUTLINED_FUNCTION_40_19();
    return v51;
  }

  if (v2 != 1)
  {
    return OUTLINED_FUNCTION_32_16();
  }

  v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  OUTLINED_FUNCTION_13_38();
  sub_1C755180C();

  OUTLINED_FUNCTION_22_32();
  v51 = v6;
  v52 = v7;
  v8 = MEMORY[0x1E69E7CC0];
  if (*(v4 + 16))
  {
    v50 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_105();
    sub_1C6F7ED9C();
    v8 = v50;
    v9 = v4 + 32;
    do
    {
      sub_1C6FB5E28(v9, &v47);
      __swift_project_boxed_opaque_existential_1(&v47, v48);
      v10 = OUTLINED_FUNCTION_35_13();
      v11(v10);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      OUTLINED_FUNCTION_46_16();
      if (v13)
      {
        OUTLINED_FUNCTION_15(v12);
        sub_1C6F7ED9C();
        v8 = v50;
      }

      OUTLINED_FUNCTION_34_16();
    }

    while (!v14);
  }

  MEMORY[0x1CCA5D090](v8, MEMORY[0x1E69E6158]);

  OUTLINED_FUNCTION_38_16();

  MEMORY[0x1CCA5CD70](0xD00000000000001ELL, 0x80000001C75A2280);
  v15 = *(v5 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    MEMORY[0x1CCA5D090](v19, v43);

    OUTLINED_FUNCTION_38_16();

    return v51;
  }

  v50 = MEMORY[0x1E69E7CC0];
  result = sub_1C716D5B0(0, v15, 0);
  v18 = 0;
  v19 = v50;
  v45 = v5;
  v46 = v5 + 32;
  v44 = v15;
  while (v18 < *(v5 + 16))
  {
    v20 = *(v46 + 8 * v18);
    v21 = *(v20 + 16);
    if (v21)
    {
      sub_1C75504FC();
      sub_1C6F7ED9C();
      v22 = v16;
      v23 = v20 + 32;
      do
      {
        sub_1C6FB5E28(v23, &v47);
        v24 = v48;
        v25 = v49;
        __swift_project_boxed_opaque_existential_1(&v47, v48);
        v26 = (*(v25 + 32))(v24, v25);
        v28 = v27;
        __swift_destroy_boxed_opaque_existential_1(&v47);
        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_14_35(v29);
          sub_1C6F7ED9C();
        }

        *(v22 + 16) = v30 + 1;
        v31 = v22 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v23 += 40;
        --v21;
      }

      while (v21);

      v15 = v44;
      v5 = v45;
      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v22 = v16;
    }

    v50 = v19;
    v32 = *(v19 + 16);
    if (v32 >= *(v19 + 24) >> 1)
    {
      OUTLINED_FUNCTION_116_0();
      result = sub_1C716D5B0(v33, v34, v35);
      v19 = v50;
    }

    ++v18;
    *(v19 + 16) = v32 + 1;
    *(v19 + 8 * v32 + 32) = v22;
    if (v18 == v15)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7191FEC@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  switch(*v1 >> 62)
  {
    case 1uLL:
      *a1 = v2;
      goto LABEL_7;
    case 2uLL:
      *a1 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
LABEL_7:

      break;
    case 3uLL:
      result = sub_1C7191FEC();
      break;
    default:
      sub_1C7195E04();
      OUTLINED_FUNCTION_166_0();
      *v3 = v2;
      *(v3 + 8) = 0;
      swift_willThrow();

      break;
  }

  return result;
}

uint64_t StoryState.PromptState.description.getter()
{
  v1 = *v0;
  switch(*v0 >> 62)
  {
    case 1uLL:
      v16 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      v19 = *(v16 + 40);
      v20 = *(v16 + 41);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0x756769626D616E75, 0xEC0000002873756FLL);
      v21 = [v17 description];
      sub_1C755068C();

      OUTLINED_FUNCTION_37_20();

      MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A22E0);
      v25 = v18;
      LOBYTE(v26) = v19;
      BYTE1(v26) = v20;
      sub_1C75519EC();
      goto LABEL_9;
    case 2uLL:
      v8 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);
      sub_1C755180C();

      __dst[0] = 0x657A6974696E6173;
      __dst[1] = 0xEA00000000002864;
      v11 = OUTLINED_FUNCTION_57_0();
      MEMORY[0x1CCA5CD70](v11);
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_48_0();
      MEMORY[0x1CCA5CD70](v9, v10);
      goto LABEL_9;
    case 3uLL:
      memcpy(__dst, ((v1 & 0x3FFFFFFFFFFFFFFFLL) + 16), 0x41uLL);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1C755180C();

      OUTLINED_FUNCTION_17_37();
      v25 = v12;
      v26 = v13;
      v14 = LLMStoryRequest.description.getter();
      MEMORY[0x1CCA5CD70](v14);

      OUTLINED_FUNCTION_40_19();
      return v25;
    default:
      v2 = *(v1 + 24);
      OUTLINED_FUNCTION_43_17();
      __dst[0] = v3;
      __dst[1] = v4;
      v6 = [v5 description];
      sub_1C755068C();

      OUTLINED_FUNCTION_37_20();

      MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
      if (v2)
      {
        v7 = v2;
      }

      else
      {
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        v7 = sub_1C7073450();
      }

      v22 = v2;
      v23 = [v7 description];
      sub_1C755068C();

      OUTLINED_FUNCTION_37_20();

LABEL_9:
      OUTLINED_FUNCTION_40_19();
      return __dst[0];
  }
}

uint64_t StoryState.AttributesState.description.getter()
{
  if (!*v0)
  {
    return OUTLINED_FUNCTION_32_16();
  }

  v1 = OUTLINED_FUNCTION_1_66();
  MEMORY[0x1CCA5CD70](v1);
  sub_1C75519EC();
  return 0;
}

uint64_t sub_1C7192450@<X0>(void *a1@<X8>)
{
  result = sub_1C719248C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C719248C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 112);
}

uint64_t sub_1C71924D4(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 112) = v2;
}

uint64_t sub_1C719251C@<X0>(void *a1@<X8>)
{
  result = sub_1C7192598(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C7192558(uint64_t *a1)
{
  v2 = *a1;

  return sub_1C71925E0(&v2);
}

uint64_t sub_1C7192598@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 120);
}

uint64_t sub_1C71925E0(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 120) = v2;
}

uint64_t sub_1C7192628@<X0>(void *a1@<X8>)
{
  result = sub_1C7192664(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C7192664@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 128);
}

uint64_t sub_1C71926AC(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 128) = v2;
}

uint64_t sub_1C71926F4@<X0>(void *a1@<X8>)
{
  result = sub_1C7192778(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C7192730(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

uint64_t sub_1C7192778@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 136);
}

uint64_t sub_1C71927C0(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 136) = v2;
}

uint64_t sub_1C7192808@<X0>(void *a1@<X8>)
{
  result = sub_1C7192880(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C7192844(uint64_t *a1)
{
  v2 = *a1;

  return sub_1C71928C4(&v2);
}

uint64_t sub_1C7192880@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *a1 = *(v1 + 144);
}

uint64_t sub_1C71928C4(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 144) = v2;
}

uint64_t sub_1C7192908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C719297C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C719297C@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  result = swift_beginAccess();
  *a1 = *(v1 + 152);
  return result;
}

uint64_t sub_1C7192A38()
{
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  return sub_1C75504FC();
}

uint64_t sub_1C7192A6C(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t StoryState.PromptOrigin.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v52 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2183C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for StoryState.PromptOrigin(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C7195258(v0, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218820);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 2, v22);
  if (!EnumTagSinglePayload)
  {
    v25 = *v21;
    sub_1C71952BC(&v21[*(v22 + 48)], v18);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD00000000000001ELL, 0x80000001C75A2300);
    sub_1C73E6820(v25);
    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A2320);
    sub_1C70555F8(v18, v15, &qword_1EC2183C0);
    Context = type metadata accessor for PromptSuggestion.FetchContext(0);
    OUTLINED_FUNCTION_23_23(v15);
    if (v27)
    {
      sub_1C6FD7FC8(v15, &qword_1EC2183C0);
      v28 = 0;
    }

    else
    {
      v28 = v15[Context[6]];
      OUTLINED_FUNCTION_0_86();
      sub_1C7195390(v15, v29);
    }

    LOBYTE(v53) = v28;
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](0xD00000000000001BLL, 0x80000001C75A2340);
    sub_1C70555F8(v18, v12, &qword_1EC2183C0);
    OUTLINED_FUNCTION_23_23(v12);
    if (v27)
    {
      sub_1C6FD7FC8(v12, &qword_1EC2183C0);
      v30 = 0;
    }

    else
    {
      v30 = *&v12[Context[5]];
      OUTLINED_FUNCTION_0_86();
      sub_1C7195390(v12, v31);
    }

    v53 = v30;
    v32 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v32);

    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD00000000000001FLL);
    sub_1C70555F8(v18, v9, &qword_1EC2183C0);
    OUTLINED_FUNCTION_23_23(v9);
    if (v27)
    {
      v33 = &qword_1EC2183C0;
      v34 = v9;
    }

    else
    {
      sub_1C70555F8(v9, v3, &unk_1EC219230);
      OUTLINED_FUNCTION_0_86();
      sub_1C7195390(v9, v35);
      v36 = sub_1C754DF6C();
      v37 = __swift_getEnumTagSinglePayload(v3, 1, v36);
      if (v37 != 1)
      {
        v39 = sub_1C754DE5C();
        v38 = v40;
        (*(*(v36 - 8) + 8))(v3, v36);
LABEL_18:
        MEMORY[0x1CCA5CD70](v39, v38);

        OUTLINED_FUNCTION_10_2();
        MEMORY[0x1CCA5CD70](0xD00000000000001FLL);
        v41 = OUTLINED_FUNCTION_57_0();
        sub_1C70555F8(v41, v42, v43);
        OUTLINED_FUNCTION_23_23(v6);
        if (v27)
        {
          sub_1C6FD7FC8(v6, &qword_1EC2183C0);
        }

        else
        {
          v44 = &v6[Context[7]];
          v45 = *v44;
          v46 = v44[8];
          OUTLINED_FUNCTION_0_86();
          sub_1C7195390(v6, v47);
          if ((v46 & 1) == 0)
          {
            v53 = v45;
            sub_1C7025C9C();
            v49 = sub_1C75515BC();
            v48 = v50;
            goto LABEL_24;
          }
        }

        v48 = 0xE100000000000000;
        v49 = 45;
LABEL_24:
        MEMORY[0x1CCA5CD70](v49, v48);

        v24 = v54;
        sub_1C6FD7FC8(v18, &qword_1EC2183C0);
        return v24;
      }

      v33 = &unk_1EC219230;
      v34 = v3;
    }

    sub_1C6FD7FC8(v34, v33);
    v38 = 0xE100000000000000;
    v39 = 45;
    goto LABEL_18;
  }

  if (EnumTagSinglePayload == 1)
  {
    return 1919251317;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C71930BC()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000023, 0x80000001C75A23C0);
  if (*(v0 + 168))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  v2 = 0xE400000000000000;
  if (*(v0 + 168))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v1, v3);

  MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A23F0);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();

  v4 = StoryState.PromptState.description.getter();
  MEMORY[0x1CCA5CD70](v4);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();

  v5 = StoryState.TokenState.description.getter();
  MEMORY[0x1CCA5CD70](v5);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v6 = *(v0 + 128);

  sub_1C73E6C1C(v6);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();

  v7 = StoryState.TraitState.description.getter();
  MEMORY[0x1CCA5CD70](v7);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A2470);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  if (*(v0 + 144))
  {

    v8 = OUTLINED_FUNCTION_1_66();
    MEMORY[0x1CCA5CD70](v8);
    sub_1C75519EC();
    v9 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_32_16();
  }

  MEMORY[0x1CCA5CD70](v9, v2);

  MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75A2490);
  v10 = StoryState.PromptOrigin.description.getter();
  MEMORY[0x1CCA5CD70](v10);

  MEMORY[0x1CCA5CD70](10506, 0xE200000000000000);
  return 0;
}

uint64_t StoryState.__allocating_init(prompt:previousPrompt:previousQueryTokens:printStateChanges:promptOrigin:userSuggestionByRange:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_41_17();
  StoryState.init(prompt:previousPrompt:previousQueryTokens:printStateChanges:promptOrigin:userSuggestionByRange:)(v10, v11, v12, a4, a5, a6);
  return v9;
}

uint64_t StoryState.init(prompt:previousPrompt:previousQueryTokens:printStateChanges:promptOrigin:userSuggestionByRange:)(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_27_1();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v6 + 120) = v13;
  *(v6 + 128) = xmmword_1C75732D0;
  *(v6 + 144) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v6 + 112) = v14;
  OUTLINED_FUNCTION_27_1();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v6 + 120) = v15;
  v16 = a1;
  v17 = a2;

  *(v6 + 152) = 0;

  *(v6 + 160) = &unk_1F46A82E8;
  *(v6 + 168) = a4;
  sub_1C719532C(a5, v6 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_promptOrigin);
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_userSuggestionByRange) = a6;
  return v6;
}

uint64_t StoryState.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StoryState.init(from:)(a1);
  return v2;
}

uint64_t StoryState.init(from:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_27_1();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 120) = v3;
  *(v1 + 128) = xmmword_1C75732D0;
  *(v1 + 144) = 0;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(v1 + 112) = *(a1 + 112);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v4 = *(a1 + 120);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 120) = v4;

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v5 = *(a1 + 128);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 128) = v5;

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v6 = *(a1 + 136);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 136) = v6;

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v7 = *(a1 + 144);
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 144) = v7;

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(v1 + 152) = *(a1 + 152);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 168) = *(a1 + 168);
  sub_1C7195258(a1 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_promptOrigin, v1 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_promptOrigin);
  v8 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_userSuggestionByRange);
  sub_1C75504FC();
  sub_1C75504FC();

  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_userSuggestionByRange) = v8;
  return v1;
}

uint64_t sub_1C71937C4()
{
  OUTLINED_FUNCTION_28_16();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
    v3 = OUTLINED_FUNCTION_39_19();
    OUTLINED_FUNCTION_42_19(v3, xmmword_1C755BAB0);
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&__src[0] = 0xD000000000000019;
    *(&__src[0] + 1) = v4;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();

    v5 = StoryState.TokenState.description.getter();
    MEMORY[0x1CCA5CD70](v5);

    OUTLINED_FUNCTION_104();
    *&__dst[0] = v1;
    v6 = StoryState.TokenState.description.getter();
    MEMORY[0x1CCA5CD70](v6);

    OUTLINED_FUNCTION_5_45(0xD000000000000019);
  }

  OUTLINED_FUNCTION_56();
  result = swift_beginAccess();
  v8 = *(v0 + 120);
  switch(v1 >> 61)
  {
    case 1uLL:
      switch(v8 >> 61)
      {
        case 1uLL:

          sub_1C7003F10();
          v17 = v16;

          if ((v17 & 1) == 0)
          {
            goto LABEL_24;
          }

          break;
        case 2uLL:
        case 4uLL:
          goto LABEL_16;
        case 3uLL:
          goto LABEL_18;
        default:
          goto LABEL_17;
      }

    case 2uLL:
      OUTLINED_FUNCTION_20_30();
      switch(v8 >> 61)
      {
        case 1uLL:
          goto LABEL_17;
        case 2uLL:
          goto LABEL_13;
        case 3uLL:
          goto LABEL_18;
        case 4uLL:
          goto LABEL_16;
        default:
          goto LABEL_33;
      }

    case 3uLL:
      OUTLINED_FUNCTION_20_30();
      switch(v8 >> 61)
      {
        case 2uLL:
          goto LABEL_17;
        case 3uLL:
          goto LABEL_13;
        case 4uLL:
          goto LABEL_16;
        default:
          goto LABEL_33;
      }

    case 4uLL:
      OUTLINED_FUNCTION_20_30();
      switch(v8 >> 61)
      {
        case 3uLL:
LABEL_17:

          v14 = 0;
          v15 = 0;
          goto LABEL_25;
        case 4uLL:
LABEL_13:
          memcpy(__dst, ((v8 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
          v29 = __dst[2];
          v30 = __dst[3];
          v27 = __dst[0];
          v28 = __dst[1];
          v25 = __src[3];
          v26 = __src[4];
          v22 = __src[1];
          v23 = __src[2];
          v24 = __dst[4];
          v21 = __src[0];
          sub_1C7027A20(__src, v32);
          sub_1C7027A20(__dst, v32);
          __dst[0] = v21;
          __dst[1] = v22;
          __dst[2] = v23;
          __dst[3] = v25;
          __dst[4] = v26;
          __src[0] = v27;
          __src[1] = v28;
          __src[2] = v29;
          __src[3] = v30;
          __src[4] = v24;
          memcpy(v32, __dst, sizeof(v32));
          memcpy(v31, __src, sizeof(v31));

          v12 = static ExtendedTokenCollection.== infix(_:_:)(v32, v31);
          sub_1C7027A58(__src);
          sub_1C7027A58(__dst);
          if (v12)
          {
          }

          goto LABEL_24;
        default:
LABEL_33:
          OUTLINED_FUNCTION_16_18();
          result = OUTLINED_FUNCTION_6_49();
          __break(1u);
          break;
      }

      return result;
    default:
      switch(v8 >> 61)
      {
        case 1uLL:
          goto LABEL_23;
        case 2uLL:
        case 4uLL:
LABEL_16:
          v13 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
          goto LABEL_19;
        case 3uLL:
LABEL_18:
          v13 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
LABEL_19:

          v14 = 1;
          v15 = 1;
          goto LABEL_26;
        default:
          v9 = *(v8 + 16);
          if (!*(v1 + 16))
          {
            if (!v9)
            {
              return result;
            }

            goto LABEL_23;
          }

          if (!v9)
          {
LABEL_23:

            goto LABEL_24;
          }

          sub_1C75504FC();
          sub_1C75504FC();

          sub_1C7003F10();
          v11 = v10;

          if (v11)
          {
          }

LABEL_24:
          v14 = 0;
          v15 = 1;
LABEL_25:
          v13 = v1;
LABEL_26:
          v18 = *(v0 + 120);
          *(v0 + 120) = v13;

          if (v15)
          {
            *&__src[0] = v18;
            OUTLINED_FUNCTION_3_58();
            sub_1C7193C40(v19);
          }

          else if (v14)
          {
            *&__src[0] = v1;
            OUTLINED_FUNCTION_3_58();
            sub_1C71937C4(v20);
          }
      }
  }
}