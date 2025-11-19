uint64_t sub_26A0EAA2C(uint64_t a1, uint64_t a2)
{
  v158 = a2;
  v4 = type metadata accessor for CoreChartElement();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v136 = v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustomElement();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorElement();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v134 = v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680);
  v13 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v132 = v128 - v14;
  v130 = type metadata accessor for ImageElement();
  v15 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v129 = v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v131 = v128 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v128 - v20;
  MEMORY[0x28223BE20](v22);
  v138 = v128 - v23;
  v157 = type metadata accessor for VisualElement();
  v24 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v147 = v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC28, &qword_26A43A760);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v164 = v128 - v31;
  v32 = type metadata accessor for _ProtoVisualElement(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v156 = v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v140 = v128 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = v128 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v155 = v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v141 = v128 - v44;
  MEMORY[0x28223BE20](v45);
  v144 = v128 - v46;
  v160 = type metadata accessor for _ProtoOrnamentElement();
  v47 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v146 = v128 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v143 = v128 - v50;
  v51 = type metadata accessor for OrnamentElement();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v55 = v128 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v159 = v128 - v57;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC30, &qword_26A426698);
  v58 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v60 = v128 - v59;
  v61 = *(a1 + 16);
  if (v61)
  {
    v139 = v39;
    v137 = v21;
    v128[1] = v2;
    v167 = MEMORY[0x277D84F90];
    v163 = v61;
    sub_26A10D50C();
    v62 = v167;
    v63 = a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v150 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC10, &qword_26A426670) + 32);
    v142 = 0x800000026A4463C0;
    v149 = *(v52 + 72);
    v145 = xmmword_26A426390;
    v152 = v32;
    v153 = v29;
    v151 = v55;
    while (1)
    {
      v162 = v62;
      v64 = v159;
      v65 = *(v158 + v150);
      sub_26A10FE48();
      if (v65 == 1)
      {
        v148 = 1;
        v161 = v63;
        sub_26A10FE48();
        v66 = *(v160 + 28);
        v67 = v144;
        sub_26A10FD9C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v32);
        sub_26A0E48F0(v67, &qword_28036C848, &qword_26A426690);
        if (EnumTagSinglePayload != 1)
        {
          v69 = v141;
          sub_26A10FD9C();
          if (__swift_getEnumTagSinglePayload(v69, 1, v32) == 1)
          {
            v70 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
            v71 = v139;
            __swift_storeEnumTagSinglePayload(v139, 1, 1, v70);
            v72 = v71 + *(v32 + 20);
            _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
            if (__swift_getEnumTagSinglePayload(v69, 1, v32) != 1)
            {
              sub_26A0E48F0(v141, &qword_28036C848, &qword_26A426690);
            }
          }

          else
          {
            v71 = v139;
            sub_26A10FD48();
          }

          _ProtoVisualElement.redacted.getter();
          sub_26A10FDF0(v71, type metadata accessor for _ProtoVisualElement);
          v73 = v146;
          sub_26A0E48F0(&v146[v66], &qword_28036C848, &qword_26A426690);
          sub_26A10FD48();
          __swift_storeEnumTagSinglePayload(&v73[v66], 0, 1, v32);
        }

        sub_26A10FD48();
        sub_26A10FD48();
        v64 = v159;
        v63 = v161;
        LOBYTE(v65) = v148;
      }

      else
      {
        sub_26A10FE48();
      }

      sub_26A10FD48();
      v74 = v154;
      v60[*(v154 + 32)] = v65;
      sub_26A10FDF0(v64, type metadata accessor for OrnamentElement);
      v75 = MEMORY[0x277D84F90];
      v161 = *(v74 + 28);
      *&v60[v161] = MEMORY[0x277D84F90];
      v76 = *(v160 + 28);
      v77 = v155;
      sub_26A10FD9C();
      v78 = __swift_getEnumTagSinglePayload(v77, 1, v32);
      v79 = v156;
      if (v78 == 1)
      {
        v80 = type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
        __swift_storeEnumTagSinglePayload(v79, 1, 1, v80);
        v81 = v79 + *(v32 + 20);
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        if (__swift_getEnumTagSinglePayload(v77, 1, v32) != 1)
        {
          sub_26A0E48F0(v77, &qword_28036C848, &qword_26A426690);
        }
      }

      else
      {
        sub_26A10FD48();
      }

      v82 = v164;
      VisualElement.init(proto:)();
      v83 = v157;
      __swift_storeEnumTagSinglePayload(v82, 0, 1, v157);
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v29, 1, v83) == 1)
      {
        sub_26A0E48F0(v29, &qword_28036CC28, &qword_26A43A760);
        v84 = v75;
      }

      else
      {
        object = v142;
        sub_26A10FE48();
        countAndFlagsBits = 0xD000000000000015;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v92 = v134;
            sub_26A10FD48();
            v95 = ColorElement.description(redacted:)(v65);
            countAndFlagsBits = v95._countAndFlagsBits;
            object = v95._object;
            v94 = type metadata accessor for ColorElement;
            goto LABEL_26;
          case 2u:
            v92 = v135;
            sub_26A10FD48();
            v96 = CustomElement.description(redacted:)(v65);
            countAndFlagsBits = v96._countAndFlagsBits;
            object = v96._object;
            v94 = type metadata accessor for CustomElement;
            goto LABEL_26;
          case 3u:
            v92 = v136;
            sub_26A10FD48();
            v93 = CoreChartElement.description(redacted:)(v65);
            countAndFlagsBits = v93._countAndFlagsBits;
            object = v93._object;
            v94 = type metadata accessor for CoreChartElement;
LABEL_26:
            sub_26A10FDF0(v92, v94);
            break;
          case 4u:
            break;
          default:
            sub_26A10FD48();
            v87 = v137;
            sub_26A10FE48();
            if (v65)
            {
              v88 = v131;
              sub_26A10FE48();
              if (qword_28036C790 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v130, qword_2803A8980);
              v89 = v129;
              sub_26A10FE48();
              v90 = *v89;

              sub_26A10FDF0(v89, type metadata accessor for _ProtoImageElement);
              v91 = *v88;

              *v88 = v90;
              v87 = v137;
            }

            else
            {
              sub_26A10FE48();
            }

            v97 = v132;
            sub_26A10FD48();
            v98 = v133;
            *(v97 + *(v133 + 32)) = v65;
            sub_26A10FDF0(v87, type metadata accessor for ImageElement);
            *(v97 + *(v98 + 28)) = MEMORY[0x277D84F90];
            ImageElement.sourceTypes.getter();
            sub_26A3A1D60(v99, 0, 0, 0);

            KeyPath = swift_getKeyPath();
            sub_26A28FC84(KeyPath, 0x736D6F696469, 0xE600000000000000);

            sub_26A0F8D00();
            countAndFlagsBits = v101;
            object = v102;
            sub_26A0E48F0(v97, &qword_28036CC20, &unk_26A426680);
            sub_26A10FDF0(v138, type metadata accessor for ImageElement);
            break;
        }

        sub_26A10FDF0(v29, type metadata accessor for VisualElement);
        v103 = HIBYTE(object) & 0xF;
        if ((object & 0x2000000000000000) == 0)
        {
          v103 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v103)
        {
          sub_26A167CD4();
          v84 = v104;
          v105 = *(v104 + 16);
          if (v105 >= *(v104 + 24) >> 1)
          {
            sub_26A167CD4();
            v84 = v126;
          }

          *(v84 + 16) = v105 + 1;
          v106 = (v84 + 32 * v105);
          v106[4] = 0;
          v106[5] = 0;
          v106[6] = countAndFlagsBits;
          v106[7] = object;
          *&v60[v161] = v84;
        }

        else
        {

          v84 = MEMORY[0x277D84F90];
        }
      }

      sub_26A0E48F0(v164, &qword_28036CC28, &qword_26A43A760);
      v107 = *v60;
      v108 = *(*v60 + 16);
      if (v60[8] == 1)
      {
        if (!v108)
        {
          goto LABEL_42;
        }

        v109 = 1701079400;
      }

      else
      {
        if (!v108)
        {
LABEL_42:
          v113 = *v60;

          v112 = 0;
          v111 = 0xE000000000000000;
          goto LABEL_43;
        }

        v109 = 2003789939;
      }

      v165 = v109 | 0x3A6E6F2800000000;
      v166 = 0xE900000000000020;
      swift_bridgeObjectRetain_n();
      v110 = sub_26A12CBBC(v107);
      MEMORY[0x26D65BA70](v110);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);

      v112 = v165;
      v111 = v166;
LABEL_43:
      v114 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v114 = v112 & 0xFFFFFFFFFFFFLL;
      }

      if (v114)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = *(v84 + 16);
          sub_26A167CD4();
          v84 = v124;
        }

        v115 = *(v84 + 16);
        if (v115 >= *(v84 + 24) >> 1)
        {
          sub_26A167CD4();
          v84 = v125;
        }

        *(v84 + 16) = v115 + 1;
        v116 = v84 + 32 * v115;
        *(v116 + 32) = v145;
        *(v116 + 48) = v112;
        *(v116 + 56) = v111;

        *&v60[v161] = v84;
      }

      else
      {
      }

      sub_26A0FF660();
      v118 = v117;
      v120 = v119;
      sub_26A0E48F0(v60, &qword_28036CC30, &qword_26A426698);
      v62 = v162;
      v167 = v162;
      v121 = *(v162 + 16);
      if (v121 >= *(v162 + 24) >> 1)
      {
        sub_26A10D50C();
        v62 = v167;
      }

      *(v62 + 16) = v121 + 1;
      v122 = v62 + 16 * v121;
      *(v122 + 32) = v118;
      *(v122 + 40) = v120;
      v63 += v149;
      --v163;
      v32 = v152;
      v29 = v153;
      if (!v163)
      {
        return v62;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26A0EBB08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a2;
  v5 = type metadata accessor for Section();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  v13 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v15 = &v52 - v14;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v64 = MEMORY[0x277D84F90];
    sub_26A10D50C();
    v18 = v64;
    v19 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC10, &qword_26A426670) + 32);
    v53 = *(v6 + 72);
    v54 = v20;
    v52 = xmmword_26A426390;
    v55 = v12;
    v56 = v9;
    while (1)
    {
      v21 = *(v58 + v54);
      sub_26A10FE48();
      v60 = v18;
      if (v21 == 1)
      {
        sub_26A31C07C();
      }

      else
      {
        sub_26A10FE48();
      }

      sub_26A10FD48();
      v22 = v57;
      v15[*(v57 + 32)] = v21;
      sub_26A10FDF0(v12, type metadata accessor for Section);
      v23 = *(v22 + 28);
      *&v15[v23] = v17;
      v24 = *v15;
      sub_26A31BF28();
      v25 = v3;
      v27 = sub_26A0E9A30(v26, v15);
      v61 = v25;

      sub_26A3A25E0(v27, 0, 0, 0);

      v28 = *(v15 + 1);

      sub_26A3A231C(v29, 0x44664F6C6576656CLL, 0xED00006C69617465, 0);

      v30 = *(v15 + 2);
      v31 = *(v30 + 16);
      if (v15[24] == 1)
      {
        if (!v31)
        {
          goto LABEL_12;
        }

        v32 = 1701079400;
      }

      else
      {
        if (!v31)
        {
LABEL_12:
          v36 = *(v15 + 2);

          v35 = 0;
          v34 = 0xE000000000000000;
          goto LABEL_13;
        }

        v32 = 2003789939;
      }

      v62 = v32 | 0x3A6E6F2800000000;
      v63 = 0xE900000000000020;
      swift_bridgeObjectRetain_n();
      v33 = sub_26A12CBBC(v30);
      MEMORY[0x26D65BA70](v33);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);

      v35 = v62;
      v34 = v63;
LABEL_13:
      v37 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v37 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v59 = v16;
        v38 = *&v15[v23];
        v39 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = *(v38 + 16);
          sub_26A166DA4();
          v38 = v49;
        }

        v40 = *(v38 + 16);
        if (v40 >= *(v38 + 24) >> 1)
        {
          sub_26A166DA4();
          v38 = v50;
        }

        *(v38 + 16) = v40 + 1;
        v41 = v38 + 32 * v40;
        *(v41 + 32) = v52;
        *(v41 + 48) = v35;
        *(v41 + 56) = v34;

        *&v15[v39] = v38;
        v16 = v59;
      }

      else
      {
      }

      sub_26A0F9448();
      v43 = v42;
      v45 = v44;
      sub_26A0E48F0(v15, &qword_28036CC48, &unk_26A43D740);
      v18 = v60;
      v64 = v60;
      v46 = *(v60 + 16);
      v17 = MEMORY[0x277D84F90];
      if (v46 >= *(v60 + 24) >> 1)
      {
        sub_26A10D50C();
        v18 = v64;
      }

      *(v18 + 16) = v46 + 1;
      v47 = v18 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v45;
      v19 += v53;
      --v16;
      v3 = v61;
      v12 = v55;
      if (!v16)
      {
        return v18;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26A0EBFD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  sub_26A10D50C();
  v5 = v18;
  v7 = *(type metadata accessor for TableRow() - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    v10 = sub_26A10BA20(v8, a2);
    if (v3)
    {
      break;
    }

    v12 = v10;
    v13 = v11;
    v3 = 0;
    v14 = *(v18 + 16);
    if (v14 >= *(v18 + 24) >> 1)
    {
      sub_26A10D50C();
    }

    *(v18 + 16) = v14 + 1;
    v15 = v18 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A0EC124(uint64_t a1, uint64_t a2)
{
  v204 = a2;
  v4 = type metadata accessor for StandardPlayerButton();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v182 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _ProtoCustomCanvas();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v186 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  v10 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v203 = &v172 - v11;
  v12 = type metadata accessor for CustomCanvas();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v180 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v185 = &v172 - v16;
  MEMORY[0x28223BE20](v17);
  v189 = &v172 - v18;
  v19 = type metadata accessor for PlayerButton();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v179 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for Player.Control(0);
  v22 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v24 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v210 = &v172 - v26;
  v27 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v175 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for _ProtoPlayerButton(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v174 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v183 = &v172 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v184 = &v172 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v201 = &v172 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v192 = &v172 - v42;
  v209 = type metadata accessor for _ProtoPlayer(0);
  v43 = *(*(v209 - 8) + 64);
  MEMORY[0x28223BE20](v209);
  v45 = &v172 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v188 = &v172 - v47;
  v48 = type metadata accessor for Player(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v200 = &v172 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v172 - v53;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  v55 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v57 = &v172 - v56;
  v58 = *(a1 + 16);
  if (!v58)
  {
    return MEMORY[0x277D84F90];
  }

  v173 = v2;
  v215 = MEMORY[0x277D84F90];
  v208 = v58;
  sub_26A10D50C();
  v211 = v215;
  v59 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB38, &qword_26A426488) + 32);
  v178 = 0x800000026A446720;
  v177 = 0x800000026A446740;
  v195 = *(v49 + 72);
  v191 = xmmword_26A4263C0;
  v190 = xmmword_26A4263B0;
  v176 = xmmword_26A4263A0;
  v193 = v24;
  v197 = v45;
  v198 = v33;
  v205 = v54;
  v207 = v57;
  while (2)
  {
    v60 = *(v204 + v196);
    v206 = v59;
    sub_26A10FE48();
    if (v60 != 1)
    {
      v63 = v24;
      sub_26A10FE48();
      goto LABEL_14;
    }

    sub_26A10FE48();
    v61 = 1;
    if (!__swift_getEnumTagSinglePayload(v45, 1, v33))
    {
      sub_26A10FE48();
      sub_26A10FE48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26A10FE48();
          sub_26A10FDF0(v183, type metadata accessor for _ProtoPlayer.OneOf_Control);
LABEL_12:
          sub_26A10FDF0(v184, type metadata accessor for _ProtoPlayer.OneOf_Control);
          v61 = 0;
          goto LABEL_13;
        }

        v65 = v175;
        sub_26A10FD48();
        sub_26A2917A8(v192);
        sub_26A10FDF0(v65, type metadata accessor for _ProtoStandardPlayerButton);
      }

      else
      {
        v64 = v174;
        sub_26A10FD48();
        _ProtoPlayerButton.redactedProto.getter(v192);
        sub_26A10FDF0(v64, type metadata accessor for _ProtoPlayerButton);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

LABEL_13:
    v63 = v24;
    __swift_storeEnumTagSinglePayload(v192, v61, 1, v33);
    sub_26A10CF40();
    sub_26A10FD48();
    sub_26A10FD48();
    v54 = v205;
LABEL_14:
    v66 = v207;
    sub_26A10FD48();
    v67 = v199;
    v66[*(v199 + 32)] = v60;
    sub_26A10FDF0(v54, type metadata accessor for Player);
    v68 = MEMORY[0x277D84F90];
    v69 = *(v67 + 28);
    *&v66[v69] = MEMORY[0x277D84F90];
    sub_26A10FD9C();
    Player.Control.init(proto:)();
    v24 = v63;
    sub_26A10FE48();
    v70 = swift_getEnumCaseMultiPayload();
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
    v73 = v207;
    switch(v70)
    {
      case 1:
        v77 = v189;
        sub_26A10FD48();
        v78 = v185;
        sub_26A10FE48();
        v79 = v77[64];
        v187 = v69;
        if (v79)
        {
          sub_26A10FE48();
        }

        else
        {
          v83 = *(v78 + 64);
          v84 = v186;
          sub_26A10FE48();
          if ((v83 & 1) == 0)
          {
            v85 = *(v84 + 1);

            strcpy(v84, "SystemPlugin");
            v84[13] = 0;
            *(v84 + 7) = -5120;
            v86 = *(v84 + 3);

            *(v84 + 2) = 0x6C6F686563616C50;
            *(v84 + 3) = 0xEB00000000726564;
            v88 = *(v185 + 6);
            v87 = *(v185 + 7);

            sub_26A28E6C8();
            v90 = v89;
            v92 = v91;
            sub_26A0E4784(*(v186 + 4), *(v186 + 5));
            *(v186 + 4) = v90;
            *(v186 + 5) = v92;
          }

          sub_26A10FD48();
          v78 = v185;
        }

        v93 = v203;
        sub_26A10FD48();
        v94 = v181;
        v93[*(v181 + 32)] = v79 ^ 1;
        sub_26A10FDF0(v78, type metadata accessor for CustomCanvas);
        v95 = *(v94 + 28);
        *&v93[v95] = v68;
        KeyPath = swift_getKeyPath();
        sub_26A0F7514(KeyPath, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v97, v172, v173);

        v98 = swift_getKeyPath();
        sub_26A0F7514(v98, 0x644977656976, 0xE600000000000000, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v99, v172, v173);

        v100 = *(v93 + 4);
        v101 = *(v93 + 5);
        v213 = 0;
        v214 = 0xE000000000000000;
        sub_26A0E45C0(v100, v101);
        sub_26A0E45C0(v100, v101);
        sub_26A424EF4();

        v213 = 0x202A2F2861746144;
        v214 = 0xE800000000000000;
        v212 = MEMORY[0x26D65B520](v100, v101);
        v102 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v102);

        MEMORY[0x26D65BA70](0x2A20736574796220, 0xEA0000000000292FLL);
        v104 = v213;
        v103 = v214;
        v194 = v95;
        v105 = *&v93[v95];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = *(v105 + 16);
          sub_26A16822C();
          v105 = v163;
        }

        v106 = *(v105 + 16);
        if (v106 >= *(v105 + 24) >> 1)
        {
          sub_26A16822C();
          v105 = v164;
        }

        sub_26A0E4784(v100, v101);
        *(v105 + 16) = v106 + 1;
        v107 = v105 + 32 * v106;
        *(v107 + 32) = v176;
        *(v107 + 48) = v104;
        *(v107 + 56) = v103;
        sub_26A0E4784(v100, v101);
        v108 = v203;
        v109 = v194;
        *&v203[v194] = v105;
        v110 = swift_getKeyPath();
        sub_26A0F7514(v110, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v111, v172, v173);

        if (v108[65])
        {
          v112 = 1702195828;
        }

        else
        {
          v112 = 0x65736C6166;
        }

        if (v108[65])
        {
          v113 = 0xE400000000000000;
        }

        else
        {
          v113 = 0xE500000000000000;
        }

        v114 = *&v108[v109];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v165 = *(v114 + 16);
          sub_26A16822C();
          v114 = v166;
        }

        v24 = v193;
        v68 = MEMORY[0x277D84F90];
        v69 = v187;
        v115 = *(v114 + 16);
        if (v115 >= *(v114 + 24) >> 1)
        {
          sub_26A16822C();
          v114 = v167;
        }

        *(v114 + 16) = v115 + 1;
        v116 = (v114 + 32 * v115);
        v116[4] = 0xD000000000000011;
        v116[5] = v178;
        v116[6] = v112;
        v116[7] = v113;
        v117 = v203;
        *&v203[v194] = v114;
        if (v117[66])
        {
          v118 = 1702195828;
        }

        else
        {
          v118 = 0x65736C6166;
        }

        if (v117[66])
        {
          v119 = 0xE400000000000000;
        }

        else
        {
          v119 = 0xE500000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = *(v114 + 16);
          sub_26A16822C();
          v114 = v169;
        }

        v120 = *(v114 + 16);
        if (v120 >= *(v114 + 24) >> 1)
        {
          sub_26A16822C();
          v114 = v170;
        }

        *(v114 + 16) = v120 + 1;
        v121 = (v114 + 32 * v120);
        v122 = v177;
        v121[4] = 0xD000000000000017;
        v121[5] = v122;
        v121[6] = v118;
        v121[7] = v119;
        v123 = v203;
        *&v203[v194] = v114;
        sub_26A1018D0();
        countAndFlagsBits = v124;
        object = v125;
        sub_26A0E48F0(v123, &qword_28036CD58, &unk_26A437B60);
        v81 = type metadata accessor for CustomCanvas;
        v82 = v189;
        goto LABEL_48;
      case 2:
        v74 = v182;
        sub_26A10FD48();
        v80 = StandardPlayerButton.description(redacted:)(v60);
        countAndFlagsBits = v80._countAndFlagsBits;
        object = v80._object;
        v76 = type metadata accessor for StandardPlayerButton;
        goto LABEL_19;
      case 3:
        goto LABEL_49;
      default:
        v74 = v179;
        sub_26A10FD48();
        v75 = PlayerButton.description(redacted:)(v60);
        countAndFlagsBits = v75._countAndFlagsBits;
        object = v75._object;
        v76 = type metadata accessor for PlayerButton;
LABEL_19:
        v81 = v76;
        v82 = v74;
LABEL_48:
        sub_26A10FDF0(v82, v81);
LABEL_49:
        sub_26A10FDF0(v210, type metadata accessor for Player.Control);
        v126 = HIBYTE(object) & 0xF;
        if ((object & 0x2000000000000000) == 0)
        {
          v126 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v126)
        {

          sub_26A166E7C();
          v128 = v127;
          v129 = *(v127 + 16);
          if (v129 >= *(v127 + 24) >> 1)
          {
            sub_26A166E7C();
            v128 = v155;
          }

          *(v128 + 16) = v129 + 1;
          v130 = (v128 + 32 * v129);
          v130[4] = 0;
          v130[5] = 0;
          v130[6] = countAndFlagsBits;
          v130[7] = object;
          *(v73 + v69) = v128;
        }

        else
        {

          v128 = v68;
        }

        v131 = *(v73 + *(v209 + 20));
        if (v131[2])
        {
          v132 = *(v73 + *(v209 + 20));
        }

        else
        {
          v131 = &unk_287B01568;
        }

        v133 = sub_26A12CBBC(v131);
        v135 = v134;
        v136 = HIBYTE(v134) & 0xF;
        if ((v134 & 0x2000000000000000) == 0)
        {
          v136 = v133 & 0xFFFFFFFFFFFFLL;
        }

        if (v136)
        {
          v137 = v133;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = *(v128 + 16);
            sub_26A166E7C();
            v128 = v157;
          }

          v138 = *(v128 + 16);
          if (v138 >= *(v128 + 24) >> 1)
          {
            sub_26A166E7C();
            v128 = v158;
          }

          *(v128 + 16) = v138 + 1;
          v139 = v128 + 32 * v138;
          *(v139 + 32) = v190;
          *(v139 + 48) = v137;
          *(v139 + 56) = v135;
          *(v73 + v69) = v128;
        }

        else
        {
        }

        v140 = (v73 + *(v209 + 24));
        v141 = *v140;
        v142 = v140[1];
        v143 = HIBYTE(v142) & 0xF;
        if ((v142 & 0x2000000000000000) == 0)
        {
          v143 = v141 & 0xFFFFFFFFFFFFLL;
        }

        v45 = v197;
        if (v143)
        {
          v213 = 34;
          v214 = 0xE100000000000000;

          MEMORY[0x26D65BA70](v141, v142);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v144 = v213;
          v145 = v214;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v159 = *(v128 + 16);
            sub_26A166E7C();
            v128 = v160;
          }

          v146 = *(v128 + 16);
          if (v146 >= *(v128 + 24) >> 1)
          {
            sub_26A166E7C();
            v128 = v161;
          }

          *(v128 + 16) = v146 + 1;
          v147 = v128 + 32 * v146;
          *(v147 + 32) = v191;
          *(v147 + 48) = v144;
          *(v147 + 56) = v145;

          *(v73 + v69) = v128;
          v24 = v193;
        }

        sub_26A0F99B8();
        v149 = v148;
        v151 = v150;
        sub_26A0E48F0(v73, &qword_28036CB60, &qword_26A426578);
        v152 = v211;
        v215 = v211;
        v153 = *(v211 + 16);
        if (v153 >= *(v211 + 24) >> 1)
        {
          sub_26A10D50C();
          v152 = v215;
        }

        *(v152 + 16) = v153 + 1;
        v211 = v152;
        v154 = v152 + 16 * v153;
        *(v154 + 32) = v149;
        *(v154 + 40) = v151;
        v54 = v205;
        v59 = v206 + v195;
        --v208;
        v33 = v198;
        if (v208)
        {
          continue;
        }

        result = v211;
        break;
    }

    return result;
  }
}

uint64_t sub_26A0ED544(uint64_t a1, uint64_t a2)
{
  v204 = a2;
  v4 = type metadata accessor for StandardPlayerButton();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v182 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _ProtoCustomCanvas();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v186 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  v10 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v203 = &v172 - v11;
  v12 = type metadata accessor for CustomCanvas();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v180 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v185 = &v172 - v16;
  MEMORY[0x28223BE20](v17);
  v189 = &v172 - v18;
  v19 = type metadata accessor for PlayerButton();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v179 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for Player.Control(0);
  v22 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v24 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v210 = &v172 - v26;
  v27 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v175 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for _ProtoPlayerButton(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v174 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v183 = &v172 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v184 = &v172 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v201 = &v172 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v192 = &v172 - v42;
  v209 = type metadata accessor for _ProtoPlayer(0);
  v43 = *(*(v209 - 8) + 64);
  MEMORY[0x28223BE20](v209);
  v45 = &v172 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v188 = &v172 - v47;
  v48 = type metadata accessor for Player(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v200 = &v172 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v172 - v53;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  v55 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v57 = &v172 - v56;
  v58 = *(a1 + 16);
  if (!v58)
  {
    return MEMORY[0x277D84F90];
  }

  v173 = v2;
  v215 = MEMORY[0x277D84F90];
  v208 = v58;
  sub_26A10D50C();
  v211 = v215;
  v59 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD68, &unk_26A4268C0) + 32);
  v178 = 0x800000026A446720;
  v177 = 0x800000026A446740;
  v195 = *(v49 + 72);
  v191 = xmmword_26A4263C0;
  v190 = xmmword_26A4263B0;
  v176 = xmmword_26A4263A0;
  v193 = v24;
  v197 = v45;
  v198 = v33;
  v205 = v54;
  v207 = v57;
  while (2)
  {
    v60 = *(v204 + v196);
    v206 = v59;
    sub_26A10FE48();
    if (v60 != 1)
    {
      v63 = v24;
      sub_26A10FE48();
      goto LABEL_14;
    }

    sub_26A10FE48();
    v61 = 1;
    if (!__swift_getEnumTagSinglePayload(v45, 1, v33))
    {
      sub_26A10FE48();
      sub_26A10FE48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26A10FE48();
          sub_26A10FDF0(v183, type metadata accessor for _ProtoPlayer.OneOf_Control);
LABEL_12:
          sub_26A10FDF0(v184, type metadata accessor for _ProtoPlayer.OneOf_Control);
          v61 = 0;
          goto LABEL_13;
        }

        v65 = v175;
        sub_26A10FD48();
        sub_26A2917A8(v192);
        sub_26A10FDF0(v65, type metadata accessor for _ProtoStandardPlayerButton);
      }

      else
      {
        v64 = v174;
        sub_26A10FD48();
        _ProtoPlayerButton.redactedProto.getter(v192);
        sub_26A10FDF0(v64, type metadata accessor for _ProtoPlayerButton);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

LABEL_13:
    v63 = v24;
    __swift_storeEnumTagSinglePayload(v192, v61, 1, v33);
    sub_26A10CF40();
    sub_26A10FD48();
    sub_26A10FD48();
    v54 = v205;
LABEL_14:
    v66 = v207;
    sub_26A10FD48();
    v67 = v199;
    v66[*(v199 + 32)] = v60;
    sub_26A10FDF0(v54, type metadata accessor for Player);
    v68 = MEMORY[0x277D84F90];
    v69 = *(v67 + 28);
    *&v66[v69] = MEMORY[0x277D84F90];
    sub_26A10FD9C();
    Player.Control.init(proto:)();
    v24 = v63;
    sub_26A10FE48();
    v70 = swift_getEnumCaseMultiPayload();
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
    v73 = v207;
    switch(v70)
    {
      case 1:
        v77 = v189;
        sub_26A10FD48();
        v78 = v185;
        sub_26A10FE48();
        v79 = v77[64];
        v187 = v69;
        if (v79)
        {
          sub_26A10FE48();
        }

        else
        {
          v83 = *(v78 + 64);
          v84 = v186;
          sub_26A10FE48();
          if ((v83 & 1) == 0)
          {
            v85 = *(v84 + 1);

            strcpy(v84, "SystemPlugin");
            v84[13] = 0;
            *(v84 + 7) = -5120;
            v86 = *(v84 + 3);

            *(v84 + 2) = 0x6C6F686563616C50;
            *(v84 + 3) = 0xEB00000000726564;
            v88 = *(v185 + 6);
            v87 = *(v185 + 7);

            sub_26A28E6C8();
            v90 = v89;
            v92 = v91;
            sub_26A0E4784(*(v186 + 4), *(v186 + 5));
            *(v186 + 4) = v90;
            *(v186 + 5) = v92;
          }

          sub_26A10FD48();
          v78 = v185;
        }

        v93 = v203;
        sub_26A10FD48();
        v94 = v181;
        v93[*(v181 + 32)] = v79 ^ 1;
        sub_26A10FDF0(v78, type metadata accessor for CustomCanvas);
        v95 = *(v94 + 28);
        *&v93[v95] = v68;
        KeyPath = swift_getKeyPath();
        sub_26A0F7514(KeyPath, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v97, v172, v173);

        v98 = swift_getKeyPath();
        sub_26A0F7514(v98, 0x644977656976, 0xE600000000000000, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v99, v172, v173);

        v100 = *(v93 + 4);
        v101 = *(v93 + 5);
        v213 = 0;
        v214 = 0xE000000000000000;
        sub_26A0E45C0(v100, v101);
        sub_26A0E45C0(v100, v101);
        sub_26A424EF4();

        v213 = 0x202A2F2861746144;
        v214 = 0xE800000000000000;
        v212 = MEMORY[0x26D65B520](v100, v101);
        v102 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v102);

        MEMORY[0x26D65BA70](0x2A20736574796220, 0xEA0000000000292FLL);
        v104 = v213;
        v103 = v214;
        v194 = v95;
        v105 = *&v93[v95];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = *(v105 + 16);
          sub_26A16822C();
          v105 = v163;
        }

        v106 = *(v105 + 16);
        if (v106 >= *(v105 + 24) >> 1)
        {
          sub_26A16822C();
          v105 = v164;
        }

        sub_26A0E4784(v100, v101);
        *(v105 + 16) = v106 + 1;
        v107 = v105 + 32 * v106;
        *(v107 + 32) = v176;
        *(v107 + 48) = v104;
        *(v107 + 56) = v103;
        sub_26A0E4784(v100, v101);
        v108 = v203;
        v109 = v194;
        *&v203[v194] = v105;
        v110 = swift_getKeyPath();
        sub_26A0F7514(v110, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v111, v172, v173);

        if (v108[65])
        {
          v112 = 1702195828;
        }

        else
        {
          v112 = 0x65736C6166;
        }

        if (v108[65])
        {
          v113 = 0xE400000000000000;
        }

        else
        {
          v113 = 0xE500000000000000;
        }

        v114 = *&v108[v109];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v165 = *(v114 + 16);
          sub_26A16822C();
          v114 = v166;
        }

        v24 = v193;
        v68 = MEMORY[0x277D84F90];
        v69 = v187;
        v115 = *(v114 + 16);
        if (v115 >= *(v114 + 24) >> 1)
        {
          sub_26A16822C();
          v114 = v167;
        }

        *(v114 + 16) = v115 + 1;
        v116 = (v114 + 32 * v115);
        v116[4] = 0xD000000000000011;
        v116[5] = v178;
        v116[6] = v112;
        v116[7] = v113;
        v117 = v203;
        *&v203[v194] = v114;
        if (v117[66])
        {
          v118 = 1702195828;
        }

        else
        {
          v118 = 0x65736C6166;
        }

        if (v117[66])
        {
          v119 = 0xE400000000000000;
        }

        else
        {
          v119 = 0xE500000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = *(v114 + 16);
          sub_26A16822C();
          v114 = v169;
        }

        v120 = *(v114 + 16);
        if (v120 >= *(v114 + 24) >> 1)
        {
          sub_26A16822C();
          v114 = v170;
        }

        *(v114 + 16) = v120 + 1;
        v121 = (v114 + 32 * v120);
        v122 = v177;
        v121[4] = 0xD000000000000017;
        v121[5] = v122;
        v121[6] = v118;
        v121[7] = v119;
        v123 = v203;
        *&v203[v194] = v114;
        sub_26A1018D0();
        countAndFlagsBits = v124;
        object = v125;
        sub_26A0E48F0(v123, &qword_28036CD58, &unk_26A437B60);
        v81 = type metadata accessor for CustomCanvas;
        v82 = v189;
        goto LABEL_48;
      case 2:
        v74 = v182;
        sub_26A10FD48();
        v80 = StandardPlayerButton.description(redacted:)(v60);
        countAndFlagsBits = v80._countAndFlagsBits;
        object = v80._object;
        v76 = type metadata accessor for StandardPlayerButton;
        goto LABEL_19;
      case 3:
        goto LABEL_49;
      default:
        v74 = v179;
        sub_26A10FD48();
        v75 = PlayerButton.description(redacted:)(v60);
        countAndFlagsBits = v75._countAndFlagsBits;
        object = v75._object;
        v76 = type metadata accessor for PlayerButton;
LABEL_19:
        v81 = v76;
        v82 = v74;
LABEL_48:
        sub_26A10FDF0(v82, v81);
LABEL_49:
        sub_26A10FDF0(v210, type metadata accessor for Player.Control);
        v126 = HIBYTE(object) & 0xF;
        if ((object & 0x2000000000000000) == 0)
        {
          v126 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v126)
        {

          sub_26A166E7C();
          v128 = v127;
          v129 = *(v127 + 16);
          if (v129 >= *(v127 + 24) >> 1)
          {
            sub_26A166E7C();
            v128 = v155;
          }

          *(v128 + 16) = v129 + 1;
          v130 = (v128 + 32 * v129);
          v130[4] = 0;
          v130[5] = 0;
          v130[6] = countAndFlagsBits;
          v130[7] = object;
          *(v73 + v69) = v128;
        }

        else
        {

          v128 = v68;
        }

        v131 = *(v73 + *(v209 + 20));
        if (v131[2])
        {
          v132 = *(v73 + *(v209 + 20));
        }

        else
        {
          v131 = &unk_287B015C8;
        }

        v133 = sub_26A12CBBC(v131);
        v135 = v134;
        v136 = HIBYTE(v134) & 0xF;
        if ((v134 & 0x2000000000000000) == 0)
        {
          v136 = v133 & 0xFFFFFFFFFFFFLL;
        }

        if (v136)
        {
          v137 = v133;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = *(v128 + 16);
            sub_26A166E7C();
            v128 = v157;
          }

          v138 = *(v128 + 16);
          if (v138 >= *(v128 + 24) >> 1)
          {
            sub_26A166E7C();
            v128 = v158;
          }

          *(v128 + 16) = v138 + 1;
          v139 = v128 + 32 * v138;
          *(v139 + 32) = v190;
          *(v139 + 48) = v137;
          *(v139 + 56) = v135;
          *(v73 + v69) = v128;
        }

        else
        {
        }

        v140 = (v73 + *(v209 + 24));
        v141 = *v140;
        v142 = v140[1];
        v143 = HIBYTE(v142) & 0xF;
        if ((v142 & 0x2000000000000000) == 0)
        {
          v143 = v141 & 0xFFFFFFFFFFFFLL;
        }

        v45 = v197;
        if (v143)
        {
          v213 = 34;
          v214 = 0xE100000000000000;

          MEMORY[0x26D65BA70](v141, v142);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v144 = v213;
          v145 = v214;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v159 = *(v128 + 16);
            sub_26A166E7C();
            v128 = v160;
          }

          v146 = *(v128 + 16);
          if (v146 >= *(v128 + 24) >> 1)
          {
            sub_26A166E7C();
            v128 = v161;
          }

          *(v128 + 16) = v146 + 1;
          v147 = v128 + 32 * v146;
          *(v147 + 32) = v191;
          *(v147 + 48) = v144;
          *(v147 + 56) = v145;

          *(v73 + v69) = v128;
          v24 = v193;
        }

        sub_26A0F99B8();
        v149 = v148;
        v151 = v150;
        sub_26A0E48F0(v73, &qword_28036CB60, &qword_26A426578);
        v152 = v211;
        v215 = v211;
        v153 = *(v211 + 16);
        if (v153 >= *(v211 + 24) >> 1)
        {
          sub_26A10D50C();
          v152 = v215;
        }

        *(v152 + 16) = v153 + 1;
        v211 = v152;
        v154 = v152 + 16 * v153;
        *(v154 + 32) = v149;
        *(v154 + 40) = v151;
        v54 = v205;
        v59 = v206 + v195;
        --v208;
        v33 = v198;
        if (v208)
        {
          continue;
        }

        result = v211;
        break;
    }

    return result;
  }
}

uint64_t sub_26A0EE964(uint64_t a1, uint64_t a2)
{
  v204 = a2;
  v4 = type metadata accessor for StandardPlayerButton();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v182 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _ProtoCustomCanvas();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v186 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  v10 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v203 = &v172 - v11;
  v12 = type metadata accessor for CustomCanvas();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v180 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v185 = &v172 - v16;
  MEMORY[0x28223BE20](v17);
  v189 = &v172 - v18;
  v19 = type metadata accessor for PlayerButton();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v179 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for Player.Control(0);
  v22 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v24 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v210 = &v172 - v26;
  v27 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v175 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for _ProtoPlayerButton(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v174 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v183 = &v172 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v184 = &v172 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v201 = &v172 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v192 = &v172 - v42;
  v209 = type metadata accessor for _ProtoPlayer(0);
  v43 = *(*(v209 - 8) + 64);
  MEMORY[0x28223BE20](v209);
  v45 = &v172 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v188 = &v172 - v47;
  v48 = type metadata accessor for Player(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v200 = &v172 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v172 - v53;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  v55 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v57 = &v172 - v56;
  v58 = *(a1 + 16);
  if (!v58)
  {
    return MEMORY[0x277D84F90];
  }

  v173 = v2;
  v215 = MEMORY[0x277D84F90];
  v208 = v58;
  sub_26A10D50C();
  v211 = v215;
  v59 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE70, &qword_26A43A8F0) + 32);
  v178 = 0x800000026A446720;
  v177 = 0x800000026A446740;
  v195 = *(v49 + 72);
  v191 = xmmword_26A4263C0;
  v190 = xmmword_26A4263B0;
  v176 = xmmword_26A4263A0;
  v193 = v24;
  v197 = v45;
  v198 = v33;
  v205 = v54;
  v207 = v57;
  while (2)
  {
    v60 = *(v204 + v196);
    v206 = v59;
    sub_26A10FE48();
    if (v60 != 1)
    {
      v63 = v24;
      sub_26A10FE48();
      goto LABEL_14;
    }

    sub_26A10FE48();
    v61 = 1;
    if (!__swift_getEnumTagSinglePayload(v45, 1, v33))
    {
      sub_26A10FE48();
      sub_26A10FE48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26A10FE48();
          sub_26A10FDF0(v183, type metadata accessor for _ProtoPlayer.OneOf_Control);
LABEL_12:
          sub_26A10FDF0(v184, type metadata accessor for _ProtoPlayer.OneOf_Control);
          v61 = 0;
          goto LABEL_13;
        }

        v65 = v175;
        sub_26A10FD48();
        sub_26A2917A8(v192);
        sub_26A10FDF0(v65, type metadata accessor for _ProtoStandardPlayerButton);
      }

      else
      {
        v64 = v174;
        sub_26A10FD48();
        _ProtoPlayerButton.redactedProto.getter(v192);
        sub_26A10FDF0(v64, type metadata accessor for _ProtoPlayerButton);
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

LABEL_13:
    v63 = v24;
    __swift_storeEnumTagSinglePayload(v192, v61, 1, v33);
    sub_26A10CF40();
    sub_26A10FD48();
    sub_26A10FD48();
    v54 = v205;
LABEL_14:
    v66 = v207;
    sub_26A10FD48();
    v67 = v199;
    v66[*(v199 + 32)] = v60;
    sub_26A10FDF0(v54, type metadata accessor for Player);
    v68 = MEMORY[0x277D84F90];
    v69 = *(v67 + 28);
    *&v66[v69] = MEMORY[0x277D84F90];
    sub_26A10FD9C();
    Player.Control.init(proto:)();
    v24 = v63;
    sub_26A10FE48();
    v70 = swift_getEnumCaseMultiPayload();
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
    v73 = v207;
    switch(v70)
    {
      case 1:
        v77 = v189;
        sub_26A10FD48();
        v78 = v185;
        sub_26A10FE48();
        v79 = v77[64];
        v187 = v69;
        if (v79)
        {
          sub_26A10FE48();
        }

        else
        {
          v83 = *(v78 + 64);
          v84 = v186;
          sub_26A10FE48();
          if ((v83 & 1) == 0)
          {
            v85 = *(v84 + 1);

            strcpy(v84, "SystemPlugin");
            v84[13] = 0;
            *(v84 + 7) = -5120;
            v86 = *(v84 + 3);

            *(v84 + 2) = 0x6C6F686563616C50;
            *(v84 + 3) = 0xEB00000000726564;
            v88 = *(v185 + 6);
            v87 = *(v185 + 7);

            sub_26A28E6C8();
            v90 = v89;
            v92 = v91;
            sub_26A0E4784(*(v186 + 4), *(v186 + 5));
            *(v186 + 4) = v90;
            *(v186 + 5) = v92;
          }

          sub_26A10FD48();
          v78 = v185;
        }

        v93 = v203;
        sub_26A10FD48();
        v94 = v181;
        v93[*(v181 + 32)] = v79 ^ 1;
        sub_26A10FDF0(v78, type metadata accessor for CustomCanvas);
        v95 = *(v94 + 28);
        *&v93[v95] = v68;
        KeyPath = swift_getKeyPath();
        sub_26A0F7514(KeyPath, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v97, v172, v173);

        v98 = swift_getKeyPath();
        sub_26A0F7514(v98, 0x644977656976, 0xE600000000000000, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v99, v172, v173);

        v100 = *(v93 + 4);
        v101 = *(v93 + 5);
        v213 = 0;
        v214 = 0xE000000000000000;
        sub_26A0E45C0(v100, v101);
        sub_26A0E45C0(v100, v101);
        sub_26A424EF4();

        v213 = 0x202A2F2861746144;
        v214 = 0xE800000000000000;
        v212 = MEMORY[0x26D65B520](v100, v101);
        v102 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v102);

        MEMORY[0x26D65BA70](0x2A20736574796220, 0xEA0000000000292FLL);
        v104 = v213;
        v103 = v214;
        v194 = v95;
        v105 = *&v93[v95];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v162 = *(v105 + 16);
          sub_26A16822C();
          v105 = v163;
        }

        v106 = *(v105 + 16);
        if (v106 >= *(v105 + 24) >> 1)
        {
          sub_26A16822C();
          v105 = v164;
        }

        sub_26A0E4784(v100, v101);
        *(v105 + 16) = v106 + 1;
        v107 = v105 + 32 * v106;
        *(v107 + 32) = v176;
        *(v107 + 48) = v104;
        *(v107 + 56) = v103;
        sub_26A0E4784(v100, v101);
        v108 = v203;
        v109 = v194;
        *&v203[v194] = v105;
        v110 = swift_getKeyPath();
        sub_26A0F7514(v110, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, &qword_28036CD58, &unk_26A437B60, sub_26A16822C, v111, v172, v173);

        if (v108[65])
        {
          v112 = 1702195828;
        }

        else
        {
          v112 = 0x65736C6166;
        }

        if (v108[65])
        {
          v113 = 0xE400000000000000;
        }

        else
        {
          v113 = 0xE500000000000000;
        }

        v114 = *&v108[v109];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v165 = *(v114 + 16);
          sub_26A16822C();
          v114 = v166;
        }

        v24 = v193;
        v68 = MEMORY[0x277D84F90];
        v69 = v187;
        v115 = *(v114 + 16);
        if (v115 >= *(v114 + 24) >> 1)
        {
          sub_26A16822C();
          v114 = v167;
        }

        *(v114 + 16) = v115 + 1;
        v116 = (v114 + 32 * v115);
        v116[4] = 0xD000000000000011;
        v116[5] = v178;
        v116[6] = v112;
        v116[7] = v113;
        v117 = v203;
        *&v203[v194] = v114;
        if (v117[66])
        {
          v118 = 1702195828;
        }

        else
        {
          v118 = 0x65736C6166;
        }

        if (v117[66])
        {
          v119 = 0xE400000000000000;
        }

        else
        {
          v119 = 0xE500000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = *(v114 + 16);
          sub_26A16822C();
          v114 = v169;
        }

        v120 = *(v114 + 16);
        if (v120 >= *(v114 + 24) >> 1)
        {
          sub_26A16822C();
          v114 = v170;
        }

        *(v114 + 16) = v120 + 1;
        v121 = (v114 + 32 * v120);
        v122 = v177;
        v121[4] = 0xD000000000000017;
        v121[5] = v122;
        v121[6] = v118;
        v121[7] = v119;
        v123 = v203;
        *&v203[v194] = v114;
        sub_26A1018D0();
        countAndFlagsBits = v124;
        object = v125;
        sub_26A0E48F0(v123, &qword_28036CD58, &unk_26A437B60);
        v81 = type metadata accessor for CustomCanvas;
        v82 = v189;
        goto LABEL_48;
      case 2:
        v74 = v182;
        sub_26A10FD48();
        v80 = StandardPlayerButton.description(redacted:)(v60);
        countAndFlagsBits = v80._countAndFlagsBits;
        object = v80._object;
        v76 = type metadata accessor for StandardPlayerButton;
        goto LABEL_19;
      case 3:
        goto LABEL_49;
      default:
        v74 = v179;
        sub_26A10FD48();
        v75 = PlayerButton.description(redacted:)(v60);
        countAndFlagsBits = v75._countAndFlagsBits;
        object = v75._object;
        v76 = type metadata accessor for PlayerButton;
LABEL_19:
        v81 = v76;
        v82 = v74;
LABEL_48:
        sub_26A10FDF0(v82, v81);
LABEL_49:
        sub_26A10FDF0(v210, type metadata accessor for Player.Control);
        v126 = HIBYTE(object) & 0xF;
        if ((object & 0x2000000000000000) == 0)
        {
          v126 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v126)
        {

          sub_26A166E7C();
          v128 = v127;
          v129 = *(v127 + 16);
          if (v129 >= *(v127 + 24) >> 1)
          {
            sub_26A166E7C();
            v128 = v155;
          }

          *(v128 + 16) = v129 + 1;
          v130 = (v128 + 32 * v129);
          v130[4] = 0;
          v130[5] = 0;
          v130[6] = countAndFlagsBits;
          v130[7] = object;
          *(v73 + v69) = v128;
        }

        else
        {

          v128 = v68;
        }

        v131 = *(v73 + *(v209 + 20));
        if (v131[2])
        {
          v132 = *(v73 + *(v209 + 20));
        }

        else
        {
          v131 = &unk_287B01598;
        }

        v133 = sub_26A12CBBC(v131);
        v135 = v134;
        v136 = HIBYTE(v134) & 0xF;
        if ((v134 & 0x2000000000000000) == 0)
        {
          v136 = v133 & 0xFFFFFFFFFFFFLL;
        }

        if (v136)
        {
          v137 = v133;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = *(v128 + 16);
            sub_26A166E7C();
            v128 = v157;
          }

          v138 = *(v128 + 16);
          if (v138 >= *(v128 + 24) >> 1)
          {
            sub_26A166E7C();
            v128 = v158;
          }

          *(v128 + 16) = v138 + 1;
          v139 = v128 + 32 * v138;
          *(v139 + 32) = v190;
          *(v139 + 48) = v137;
          *(v139 + 56) = v135;
          *(v73 + v69) = v128;
        }

        else
        {
        }

        v140 = (v73 + *(v209 + 24));
        v141 = *v140;
        v142 = v140[1];
        v143 = HIBYTE(v142) & 0xF;
        if ((v142 & 0x2000000000000000) == 0)
        {
          v143 = v141 & 0xFFFFFFFFFFFFLL;
        }

        v45 = v197;
        if (v143)
        {
          v213 = 34;
          v214 = 0xE100000000000000;

          MEMORY[0x26D65BA70](v141, v142);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v144 = v213;
          v145 = v214;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v159 = *(v128 + 16);
            sub_26A166E7C();
            v128 = v160;
          }

          v146 = *(v128 + 16);
          if (v146 >= *(v128 + 24) >> 1)
          {
            sub_26A166E7C();
            v128 = v161;
          }

          *(v128 + 16) = v146 + 1;
          v147 = v128 + 32 * v146;
          *(v147 + 32) = v191;
          *(v147 + 48) = v144;
          *(v147 + 56) = v145;

          *(v73 + v69) = v128;
          v24 = v193;
        }

        sub_26A0F99B8();
        v149 = v148;
        v151 = v150;
        sub_26A0E48F0(v73, &qword_28036CB60, &qword_26A426578);
        v152 = v211;
        v215 = v211;
        v153 = *(v211 + 16);
        if (v153 >= *(v211 + 24) >> 1)
        {
          sub_26A10D50C();
          v152 = v215;
        }

        *(v152 + 16) = v153 + 1;
        v211 = v152;
        v154 = v152 + 16 * v153;
        *(v154 + 32) = v149;
        *(v154 + 40) = v151;
        v54 = v205;
        v59 = v206 + v195;
        --v208;
        v33 = v198;
        if (v208)
        {
          continue;
        }

        result = v211;
        break;
    }

    return result;
  }
}

uint64_t sub_26A0EFD84(uint64_t a1)
{
  v3 = type metadata accessor for _ProtoActionProperty();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v103 = (v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v102 = (v97 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = v97 - v12;
  MEMORY[0x28223BE20](v13);
  v100 = v97 - v14;
  MEMORY[0x28223BE20](v15);
  v111 = v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v118 = v97 - v22;
  MEMORY[0x28223BE20](v23);
  v110 = v97 - v24;
  MEMORY[0x28223BE20](v25);
  v117 = v97 - v26;
  v27 = type metadata accessor for VisualProperty();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v31 = v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = v97 - v33;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730);
  v35 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v37 = v97 - v36;
  v38 = *(a1 + 16);
  if (v38)
  {
    v97[1] = v1;
    v120 = MEMORY[0x277D84F90];
    v115 = v38;
    sub_26A10D50C();
    v39 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    result = v120;
    v105 = *(v28 + 72);
    v104 = xmmword_26A4263D0;
    v99 = xmmword_26A4263F0;
    v98 = xmmword_26A4263E0;
    v119 = v3;
    v107 = v31;
    v108 = v20;
    v106 = v34;
    while (1)
    {
      v114 = result;
      sub_26A10FE48();
      v41 = *(v39 + 9) ^ 1;
      if (v41)
      {
        _ProtoVisualProperty.redactedProto.getter();
      }

      else
      {
        sub_26A10FE48();
      }

      sub_26A10FD48();
      v42 = v109;
      v37[*(v109 + 32)] = v41 & 1;
      sub_26A10FDF0(v34, type metadata accessor for VisualProperty);
      v43 = *(v42 + 28);
      *&v37[v43] = MEMORY[0x277D84F90];
      KeyPath = swift_getKeyPath();
      sub_26A0F73D8(KeyPath, 0, 0, sub_26A0F11EC, &qword_28036CCA0, &unk_26A426730, sub_26A16807C);

      if (v37[9])
      {
        v45 = 1702195828;
      }

      else
      {
        v45 = 0x65736C6166;
      }

      if (v37[9])
      {
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      v47 = *&v37[v43];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = *(v47 + 16);
        sub_26A16807C();
        v47 = v89;
      }

      v49 = *(v47 + 16);
      if (v49 >= *(v47 + 24) >> 1)
      {
        sub_26A16807C();
        v47 = v90;
      }

      *(v47 + 16) = v49 + 1;
      v50 = v47 + 32 * v49;
      *(v50 + 32) = v104;
      *(v50 + 48) = v45;
      *(v50 + 56) = v46;
      v116 = v43;
      *&v37[v43] = v47;
      v51 = type metadata accessor for _ProtoVisualProperty();
      v52 = *(v51 + 32);
      v53 = v111;
      sub_26A10FD9C();
      v54 = 1;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v119);
      sub_26A0E48F0(v53, &off_28036C7C0, &off_26A427400);
      if (EnumTagSinglePayload != 1)
      {
        v56 = v100;
        sub_26A10FD9C();
        v57 = v119;
        if (__swift_getEnumTagSinglePayload(v56, 1, v119) == 1)
        {
          v58 = v102;
          *v102 = MEMORY[0x277D84F90];
          v58[1] = 0;
          v58[2] = 0xE000000000000000;
          v59 = v58 + *(v57 + 24);
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          if (__swift_getEnumTagSinglePayload(v56, 1, v57) != 1)
          {
            sub_26A0E48F0(v56, &off_28036C7C0, &off_26A427400);
          }
        }

        else
        {
          sub_26A10FD48();
        }

        sub_26A10FD48();
        v54 = 0;
      }

      v60 = type metadata accessor for ActionProperty();
      __swift_storeEnumTagSinglePayload(v117, v54, 1, v60);
      v61 = v110;
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v61, 1, v60) == 1)
      {
        sub_26A0E48F0(v61, &qword_28036CB18, &unk_26A427670);
      }

      else
      {
        v62 = ActionProperty.description(redacted:)(v113 & 1);
        sub_26A10FDF0(v61, type metadata accessor for ActionProperty);
        v63 = (v62._object >> 56) & 0xF;
        if ((v62._object & 0x2000000000000000) == 0)
        {
          v63 = v62._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v63)
        {
          v64 = *&v37[v116];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = *(v64 + 16);
            sub_26A16807C();
            v64 = v92;
          }

          v65 = *(v64 + 16);
          if (v65 >= *(v64 + 24) >> 1)
          {
            sub_26A16807C();
            v64 = v93;
          }

          *(v64 + 16) = v65 + 1;
          v66 = v64 + 32 * v65;
          *(v66 + 32) = v98;
          *(v66 + 48) = v62;
          *&v37[v116] = v64;
        }

        else
        {
        }
      }

      sub_26A0E48F0(v117, &qword_28036CB18, &unk_26A427670);
      v67 = *(v51 + 36);
      v68 = v112;
      sub_26A10FD9C();
      v69 = 1;
      v70 = __swift_getEnumTagSinglePayload(v68, 1, v119);
      sub_26A0E48F0(v68, &off_28036C7C0, &off_26A427400);
      v71 = v108;
      if (v70 != 1)
      {
        v72 = v101;
        sub_26A10FD9C();
        v73 = v119;
        if (__swift_getEnumTagSinglePayload(v72, 1, v119) == 1)
        {
          v74 = v103;
          *v103 = MEMORY[0x277D84F90];
          v74[1] = 0;
          v74[2] = 0xE000000000000000;
          v75 = v74 + *(v73 + 24);
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          if (__swift_getEnumTagSinglePayload(v72, 1, v73) != 1)
          {
            sub_26A0E48F0(v72, &off_28036C7C0, &off_26A427400);
          }
        }

        else
        {
          sub_26A10FD48();
        }

        sub_26A10FD48();
        v69 = 0;
      }

      __swift_storeEnumTagSinglePayload(v118, v69, 1, v60);
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v71, 1, v60) == 1)
      {
        sub_26A0E48F0(v71, &qword_28036CB18, &unk_26A427670);
      }

      else
      {
        v76 = ActionProperty.description(redacted:)(v113 & 1);
        sub_26A10FDF0(v71, type metadata accessor for ActionProperty);
        v77 = (v76._object >> 56) & 0xF;
        if ((v76._object & 0x2000000000000000) == 0)
        {
          v77 = v76._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v77)
        {
          v78 = *&v37[v116];
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v34 = v106;
          if ((v79 & 1) == 0)
          {
            v94 = *(v78 + 16);
            sub_26A16807C();
            v78 = v95;
          }

          v80 = *(v78 + 16);
          if (v80 >= *(v78 + 24) >> 1)
          {
            sub_26A16807C();
            v78 = v96;
          }

          *(v78 + 16) = v80 + 1;
          v81 = v78 + 32 * v80;
          *(v81 + 32) = v99;
          *(v81 + 48) = v76;
          *&v37[v116] = v78;
          goto LABEL_51;
        }
      }

      v34 = v106;
LABEL_51:
      sub_26A0E48F0(v118, &qword_28036CB18, &unk_26A427670);
      sub_26A100DE8();
      v83 = v82;
      v85 = v84;
      sub_26A0E48F0(v37, &qword_28036CCA0, &unk_26A426730);
      result = v114;
      v120 = v114;
      v86 = *(v114 + 16);
      if (v86 >= *(v114 + 24) >> 1)
      {
        sub_26A10D50C();
        result = v120;
      }

      *(result + 16) = v86 + 1;
      v87 = result + 16 * v86;
      *(v87 + 32) = v83;
      *(v87 + 40) = v85;
      v39 += v105;
      if (!--v115)
      {
        return result;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26A0F08E0(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v71 - v6;
  v8 = type metadata accessor for _ProtoCommand(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD90, &qword_26A4268F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = v71 - v16;
  v17 = type metadata accessor for ActionElement(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v71 - v23;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD98, &qword_26A4268F8);
  v25 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v27 = v71 - v26;
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v71[1] = v2;
  v86 = MEMORY[0x277D84F90];
  v29 = v18;
  v83 = v28;
  sub_26A10D50C();
  v30 = v86;
  v31 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD88, &unk_26A4268E0) + 32);
  v74 = *(v29 + 72);
  v75 = v32;
  v72 = xmmword_26A4263B0;
  v73 = v7;
  v77 = v21;
  v78 = v11;
  v76 = v24;
  do
  {
    v33 = *(v81 + v75);
    sub_26A10FE48();
    v82 = v30;
    if (v33 == 1)
    {
      _s10SnippetKit13ActionElementV13redactedProtoAA01_fcD0Vvg_0();
    }

    else
    {
      sub_26A10FE48();
    }

    sub_26A10FD48();
    v34 = v79;
    v27[*(v79 + 32)] = v33;
    sub_26A10FDF0(v24, type metadata accessor for ActionElement);
    v85 = *(v34 + 28);
    *&v27[v85] = MEMORY[0x277D84F90];
    v35 = *(type metadata accessor for _ProtoActionElement(0) + 28);
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      v36 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v36);
      v11[v8[5]] = 0;
      v11[v8[6]] = 0;
      v37 = &v11[v8[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
      {
        sub_26A0E48F0(v7, &qword_28036C868, &qword_26A42D090);
      }
    }

    else
    {
      sub_26A10FD48();
    }

    v38 = v84;
    sub_26A3212CC();
    v39 = type metadata accessor for Command(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
    v40 = v80;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v40, 1, v39) == 1)
    {
      sub_26A0E48F0(v40, &qword_28036CD90, &qword_26A4268F0);
    }

    else
    {
      v41 = Command.description.getter();
      v43 = v42;
      sub_26A10FDF0(v40, type metadata accessor for Command);
      v44 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v44 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v44)
      {
        sub_26A167FEC();
        v46 = v45;
        v47 = *(v45 + 16);
        if (v47 >= *(v45 + 24) >> 1)
        {
          sub_26A167FEC();
          v46 = v69;
        }

        *(v46 + 16) = v47 + 1;
        v48 = (v46 + 32 * v47);
        v48[4] = 0;
        v48[5] = 0;
        v48[6] = v41;
        v48[7] = v43;
        *&v27[v85] = v46;
      }

      else
      {
      }
    }

    sub_26A0E48F0(v84, &qword_28036CD90, &qword_26A4268F0);
    swift_getKeyPath();
    sub_26A0F7260();

    v49 = *(v27 + 1);
    if (v49[2])
    {
      v50 = *(v27 + 1);
    }

    else
    {
      v49 = &unk_287B01470;
    }

    v51 = v8;
    v52 = sub_26A12CBBC(v49);
    v54 = v53;
    v55 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v55 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      v56 = v52;
      v57 = *&v27[v85];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = *(v57 + 16);
        sub_26A167FEC();
        v57 = v67;
      }

      v58 = *(v57 + 16);
      if (v58 >= *(v57 + 24) >> 1)
      {
        sub_26A167FEC();
        v57 = v68;
      }

      *(v57 + 16) = v58 + 1;
      v59 = v57 + 32 * v58;
      *(v59 + 32) = v72;
      *(v59 + 48) = v56;
      *(v59 + 56) = v54;
      *&v27[v85] = v57;
      v7 = v73;
    }

    else
    {
    }

    sub_26A100A40();
    v61 = v60;
    v63 = v62;
    sub_26A0E48F0(v27, &qword_28036CD98, &qword_26A4268F8);
    v30 = v82;
    v86 = v82;
    v64 = *(v82 + 16);
    if (v64 >= *(v82 + 24) >> 1)
    {
      sub_26A10D50C();
      v30 = v86;
    }

    *(v30 + 16) = v64 + 1;
    v65 = v30 + 16 * v64;
    *(v65 + 32) = v61;
    *(v65 + 40) = v63;
    v31 += v74;
    --v83;
    v8 = v51;
    v11 = v78;
    v24 = v76;
  }

  while (v83);
  return v30;
}

uint64_t sub_26A0F1080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v26 = MEMORY[0x277D84F90];
    sub_26A10D50C();
    v7 = v26;
    v12 = *(a3(0) - 8);
    v13 = *(v12 + 80);
    OUTLINED_FUNCTION_166_0();
    v15 = a1 + v14;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 32);
    v16 = *(v12 + 72);
    do
    {
      v17 = a6(*(a2 + v23));
      v19 = v18;
      v20 = *(v26 + 16);
      if (v20 >= *(v26 + 24) >> 1)
      {
        sub_26A10D50C();
      }

      *(v26 + 16) = v20 + 1;
      v21 = v26 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v19;
      v15 += v16;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_26A0F11EC(uint64_t a1, uint64_t a2)
{
  v270 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA8, &unk_26A443C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v218 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB0, &qword_26A426740);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v249 = v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v218 - v15;
  v17 = type metadata accessor for _ProtoCoreChart();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v248 = (v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = (v218 - v21);
  v251 = type metadata accessor for _ProtoCoreChartElement();
  v23 = *(*(v251 - 8) + 64);
  MEMORY[0x28223BE20](v251);
  v247 = v218 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB8, &qword_26A426748);
  v25 = *(*(v246 - 8) + 64);
  MEMORY[0x28223BE20](v246);
  v264 = v218 - v26;
  v27 = type metadata accessor for CoreChartElement();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v245 = v218 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v250 = v218 - v31;
  MEMORY[0x28223BE20](v32);
  v258 = v218 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC0, &qword_26A426750);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v244 = v218 - v36;
  v243 = type metadata accessor for _ProtoCustomCanvas();
  v37 = *(*(v243 - 8) + 64);
  MEMORY[0x28223BE20](v243);
  v242 = v218 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC8, &qword_26A426758);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v241 = v218 - v41;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD0, &unk_26A426760);
  v42 = *(*(v240 - 8) + 64);
  MEMORY[0x28223BE20](v240);
  v252 = v218 - v43;
  v44 = type metadata accessor for CustomElement();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v239 = v218 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v238 = v218 - v48;
  MEMORY[0x28223BE20](v49);
  v262 = v218 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v237 = v218 - v53;
  v236 = type metadata accessor for _ProtoColor(0);
  v54 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236);
  v235 = v218 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v234 = v218 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v261 = v218 - v60;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCE0, &qword_26A426770);
  v61 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v233);
  v263 = v218 - v62;
  v63 = type metadata accessor for ColorElement();
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63 - 8);
  v232 = v218 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v231 = v218 - v67;
  MEMORY[0x28223BE20](v68);
  v260 = v218 - v69;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680);
  v70 = *(*(v230 - 8) + 64);
  MEMORY[0x28223BE20](v230);
  v229 = v218 - v71;
  v223 = type metadata accessor for ImageElement();
  v72 = *(*(v223 - 8) + 64);
  MEMORY[0x28223BE20](v223);
  v222 = v218 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v228 = v218 - v75;
  MEMORY[0x28223BE20](v76);
  v227 = v218 - v77;
  MEMORY[0x28223BE20](v78);
  v259 = v218 - v79;
  v269 = type metadata accessor for VisualElement();
  v80 = *(v269 - 8);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v269);
  v265 = v218 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(a1 + 16);
  if (!v83)
  {
    return MEMORY[0x277D84F90];
  }

  v220 = v22;
  v224 = v17;
  v221 = v16;
  v225 = v10;
  v226 = v7;
  v218[1] = v2;
  v275 = MEMORY[0x277D84F90];
  sub_26A10D50C();
  v84 = v275;
  v85 = a1 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
  v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730) + 32);
  v267 = 0x800000026A4463C0;
  v268 = v86;
  v219 = 0x800000026A4464E0;
  v266 = *(v80 + 72);
  v257 = xmmword_26A4263B0;
  v253 = xmmword_26A426400;
  v87 = v263;
  do
  {
    v271 = v84;
    v88 = v267;
    v89 = *(v270 + v268);
    sub_26A10FE48();
    v90 = 0xD000000000000015;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26A10FD48();
        v104 = v231;
        sub_26A10FE48();
        sub_26A10FE48();
        sub_26A10FD48();
        v105 = v233;
        *(v87 + *(v233 + 32)) = v89;
        sub_26A10FDF0(v104, type metadata accessor for ColorElement);
        v255 = *(v105 + 28);
        *(v87 + v255) = MEMORY[0x277D84F90];
        v106 = v87 + *(type metadata accessor for _ProtoColorElement() + 24);
        v107 = v237;
        sub_26A10FD9C();
        v108 = v236;
        if (__swift_getEnumTagSinglePayload(v107, 1, v236) == 1)
        {
          v109 = type metadata accessor for _ProtoColor.OneOf_Value(0);
          v110 = v235;
          __swift_storeEnumTagSinglePayload(v235, 1, 1, v109);
          v111 = v110 + *(v108 + 20);
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, 1, v108);
          v113 = v234;
          if (EnumTagSinglePayload != 1)
          {
            sub_26A0E48F0(v107, &qword_28036CCD8, &unk_26A432950);
          }
        }

        else
        {
          sub_26A10FD48();
          v113 = v234;
        }

        v117 = v261;
        sub_26A10FD48();
        v118 = type metadata accessor for Color();
        __swift_storeEnumTagSinglePayload(v117, 0, 1, v118);
        sub_26A10FD9C();
        if (__swift_getEnumTagSinglePayload(v113, 1, v118) == 1)
        {
          sub_26A0E48F0(v113, &qword_28036CBA0, &qword_26A4265B0);
          v119 = MEMORY[0x277D84F90];
        }

        else
        {
          v120 = Color.description(redacted:)(v89);
          sub_26A10FDF0(v113, type metadata accessor for Color);
          v121 = (v120._object >> 56) & 0xF;
          if ((v120._object & 0x2000000000000000) == 0)
          {
            v121 = v120._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          if (v121)
          {
            sub_26A168274();
            v119 = v122;
            v123 = *(v122 + 16);
            if (v123 >= *(v122 + 24) >> 1)
            {
              sub_26A168274();
              v119 = v216;
            }

            *(v119 + 16) = v123 + 1;
            v124 = (v119 + 32 * v123);
            v124[2]._countAndFlagsBits = 0;
            v124[2]._object = 0;
            v124[3] = v120;
            *(v87 + v255) = v119;
          }

          else
          {

            v119 = MEMORY[0x277D84F90];
          }
        }

        sub_26A0E48F0(v261, &qword_28036CBA0, &qword_26A4265B0);
        v171 = *v87;
        if (*(*v87 + 16))
        {
          v172 = *v87;
        }

        else
        {
          v171 = &unk_287B013B0;
        }

        v173 = sub_26A12CBBC(v171);
        v175 = v174;
        v176 = HIBYTE(v174) & 0xF;
        if ((v174 & 0x2000000000000000) == 0)
        {
          v176 = v173 & 0xFFFFFFFFFFFFLL;
        }

        if (v176)
        {
          v177 = v173;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v207 = *(v119 + 16);
            sub_26A168274();
            v119 = v208;
          }

          v178 = *(v119 + 16);
          if (v178 >= *(v119 + 24) >> 1)
          {
            sub_26A168274();
            v119 = v209;
          }

          *(v119 + 16) = v178 + 1;
          v179 = v119 + 32 * v178;
          *(v179 + 32) = v257;
          *(v179 + 48) = v177;
          *(v179 + 56) = v175;
          *(v87 + v255) = v119;
        }

        else
        {
        }

        sub_26A101AA8();
        v90 = v180;
        v88 = v181;
        sub_26A0E48F0(v87, &qword_28036CCE0, &qword_26A426770);
        v144 = type metadata accessor for ColorElement;
        v143 = v260;
        goto LABEL_71;
      case 2u:
        sub_26A10FD48();
        v114 = v238;
        sub_26A10FE48();
        if (v89)
        {
          _s10SnippetKit13CustomElementV13redactedProtoAA01_fcD0Vvg_0(v239);
        }

        else
        {
          sub_26A10FE48();
        }

        v125 = v244;
        v126 = v243;
        v127 = v242;
        v128 = v252;
        sub_26A10FD48();
        v129 = v240;
        *(v128 + *(v240 + 32)) = v89;
        sub_26A10FDF0(v114, type metadata accessor for CustomElement);
        v130 = *(v129 + 28);
        *(v128 + v130) = MEMORY[0x277D84F90];
        v131 = *(type metadata accessor for _ProtoCustomElement() + 24);
        sub_26A10FD9C();
        if (__swift_getEnumTagSinglePayload(v125, 1, v126) == 1)
        {
          *v127 = 0;
          *(v127 + 1) = 0xE000000000000000;
          *(v127 + 2) = 0;
          *(v127 + 3) = 0xE000000000000000;
          *(v127 + 2) = v253;
          *(v127 + 6) = 0;
          *(v127 + 7) = 0xE000000000000000;
          *(v127 + 32) = 0;
          v127[66] = 0;
          v132 = &v127[*(v126 + 44)];
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          if (__swift_getEnumTagSinglePayload(v125, 1, v126) != 1)
          {
            sub_26A0E48F0(v125, &qword_28036CCC0, &qword_26A426750);
          }
        }

        else
        {
          sub_26A10FD48();
        }

        v133 = v241;
        sub_26A10FD48();
        v134 = type metadata accessor for CustomCanvas();
        __swift_storeEnumTagSinglePayload(v133, 0, 1, v134);
        sub_26A108B38(v133, 0, 0);
        sub_26A0E48F0(v133, &qword_28036CCC8, &qword_26A426758);
        v135 = *v128;
        if (*(*v128 + 16))
        {
          v136 = *v128;
        }

        else
        {
          v135 = &unk_287B01410;
        }

        v145 = sub_26A12CBBC(v135);
        v147 = v146;
        v148 = HIBYTE(v146) & 0xF;
        if ((v146 & 0x2000000000000000) == 0)
        {
          v148 = v145 & 0xFFFFFFFFFFFFLL;
        }

        if (v148)
        {
          v149 = v145;
          v255 = v130;
          v150 = *(v128 + v130);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v210 = *(v150 + 16);
            sub_26A167F14();
            v150 = v211;
          }

          v151 = *(v150 + 16);
          if (v151 >= *(v150 + 24) >> 1)
          {
            sub_26A167F14();
            v150 = v212;
          }

          *(v150 + 16) = v151 + 1;
          v152 = v150 + 32 * v151;
          *(v152 + 32) = v257;
          *(v152 + 48) = v149;
          *(v152 + 56) = v147;
          v128 = v252;
          *&v252[v255] = v150;
        }

        else
        {
        }

        sub_26A1004D8();
        v90 = v153;
        v88 = v154;
        sub_26A0E48F0(v128, &qword_28036CCD0, &unk_26A426760);
        v155 = type metadata accessor for CustomElement;
        v156 = v262;
        goto LABEL_95;
      case 3u:
        v255 = v85;
        sub_26A10FD48();
        v96 = v250;
        sub_26A10FE48();
        v256 = v83;
        if (v89)
        {
          sub_26A10FE48();
          v97 = *(v251 + 24);
          v98 = v221;
          sub_26A10FD9C();
          v99 = v224;
          v100 = __swift_getEnumTagSinglePayload(v98, 1, v224);
          v101 = v249;
          if (v100 == 1)
          {
            v102 = v220;
            *v220 = v253;
            v103 = v102 + *(v99 + 20);
            _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
            if (__swift_getEnumTagSinglePayload(v98, 1, v99) != 1)
            {
              sub_26A0E48F0(v98, &qword_28036CCB0, &qword_26A426740);
            }
          }

          else
          {
            v102 = v220;
            sub_26A10FD48();
          }

          sub_26A0E4784(*v102, *(v102 + 1));
          *v102 = v253;
          v157 = v247;
          sub_26A0E48F0(&v247[v97], &qword_28036CCB0, &qword_26A426740);
          sub_26A10FD48();
          __swift_storeEnumTagSinglePayload(&v157[v97], 0, 1, v99);
          sub_26A10FD48();
          v115 = v264;
          v96 = v250;
          v116 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_26A10FE48();
          v101 = v249;
          v99 = v224;
          v115 = v264;
          v116 = MEMORY[0x277D84F90];
        }

        sub_26A10FD48();
        v158 = v246;
        v115[*(v246 + 32)] = v89;
        sub_26A10FDF0(v96, type metadata accessor for CoreChartElement);
        v254 = *(v158 + 28);
        *&v115[v254] = v116;
        v159 = *(v251 + 24);
        sub_26A10FD9C();
        if (__swift_getEnumTagSinglePayload(v101, 1, v99) == 1)
        {
          v160 = v248;
          *v248 = v253;
          v161 = v160 + *(v99 + 20);
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          v162 = __swift_getEnumTagSinglePayload(v101, 1, v99);
          v163 = v226;
          v164 = v225;
          v85 = v255;
          if (v162 != 1)
          {
            sub_26A0E48F0(v101, &qword_28036CCB0, &qword_26A426740);
          }
        }

        else
        {
          sub_26A10FD48();
          v163 = v226;
          v164 = v225;
          v85 = v255;
        }

        sub_26A10FD48();
        v165 = type metadata accessor for CoreChart();
        __swift_storeEnumTagSinglePayload(v164, 0, 1, v165);
        sub_26A10FD9C();
        if (__swift_getEnumTagSinglePayload(v163, 1, v165) != 1)
        {
          v273 = 0;
          v274 = 0xE000000000000000;
          sub_26A424EF4();

          v273 = 0xD000000000000018;
          v274 = v219;
          v168 = *v163;
          v169 = v163[1];
          v83 = v256;
          v170 = 0;
          switch(v169 >> 62)
          {
            case 1uLL:
              LODWORD(v170) = HIDWORD(v168) - v168;
              if (!__OFSUB__(HIDWORD(v168), v168))
              {
                v170 = v170;
                goto LABEL_75;
              }

              __break(1u);
              goto LABEL_103;
            case 2uLL:
              v184 = v168 + 16;
              v183 = *(v168 + 16);
              v182 = *(v184 + 8);
              v185 = __OFSUB__(v182, v183);
              v170 = v182 - v183;
              if (!v185)
              {
                goto LABEL_75;
              }

LABEL_103:
              __break(1u);
              return result;
            case 3uLL:
              goto LABEL_75;
            default:
              v170 = BYTE6(v169);
LABEL_75:
              v272 = v170;
              v186 = sub_26A4251B4();
              MEMORY[0x26D65BA70](v186);

              MEMORY[0x26D65BA70](0x2A20736574796220, 0xEB0000000029292FLL);
              v187 = v273;
              v188 = v274;
              sub_26A10FDF0(v163, type metadata accessor for CoreChart);
              v189 = HIBYTE(v188) & 0xF;
              if ((v188 & 0x2000000000000000) == 0)
              {
                v189 = v187 & 0xFFFFFFFFFFFFLL;
              }

              if (v189)
              {
                sub_26A167E3C();
                v116 = v190;
                v191 = *(v190 + 16);
                if (v191 >= *(v190 + 24) >> 1)
                {
                  sub_26A167E3C();
                  v116 = v217;
                }

                *(v116 + 16) = v191 + 1;
                v192 = (v116 + 32 * v191);
                v192[4] = 0;
                v192[5] = 0;
                v192[6] = v187;
                v192[7] = v188;
                v166 = v264;
                *&v264[v254] = v116;
              }

              else
              {

                v166 = v264;
              }

              goto LABEL_82;
          }
        }

        sub_26A0E48F0(v163, &qword_28036CCA8, &unk_26A443C90);
        v166 = v264;
        v83 = v256;
LABEL_82:
        sub_26A0E48F0(v164, &qword_28036CCA8, &unk_26A443C90);
        v193 = *v166;
        if (*(*v166 + 16))
        {
          v194 = *v166;
        }

        else
        {
          v193 = &unk_287B01440;
        }

        v195 = sub_26A12CBBC(v193);
        v197 = v196;
        v198 = HIBYTE(v196) & 0xF;
        if ((v196 & 0x2000000000000000) == 0)
        {
          v198 = v195 & 0xFFFFFFFFFFFFLL;
        }

        if (v198)
        {
          v199 = v195;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v213 = *(v116 + 16);
            sub_26A167E3C();
            v116 = v214;
          }

          v200 = *(v116 + 16);
          if (v200 >= *(v116 + 24) >> 1)
          {
            sub_26A167E3C();
            v116 = v215;
          }

          *(v116 + 16) = v200 + 1;
          v201 = v116 + 32 * v200;
          *(v201 + 32) = v257;
          *(v201 + 48) = v199;
          *(v201 + 56) = v197;
          v202 = v264;
          *&v264[v254] = v116;
        }

        else
        {

          v202 = v264;
        }

        sub_26A0FFF70();
        v90 = v203;
        v88 = v204;
        sub_26A0E48F0(v202, &qword_28036CCB8, &qword_26A426748);
        v155 = type metadata accessor for CoreChartElement;
        v156 = v258;
LABEL_95:
        sub_26A10FDF0(v156, v155);
        v87 = v263;
        break;
      case 4u:
        break;
      default:
        sub_26A10FD48();
        v91 = v227;
        sub_26A10FE48();
        if (v89)
        {
          v92 = v228;
          sub_26A10FE48();
          if (qword_28036C790 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v223, qword_2803A8980);
          v93 = v222;
          sub_26A10FE48();
          v94 = *v93;

          sub_26A10FDF0(v93, type metadata accessor for _ProtoImageElement);
          v95 = *v92;

          *v92 = v94;
        }

        else
        {
          sub_26A10FE48();
        }

        v137 = v229;
        sub_26A10FD48();
        v138 = v230;
        *(v137 + *(v230 + 32)) = v89;
        sub_26A10FDF0(v91, type metadata accessor for ImageElement);
        *(v137 + *(v138 + 28)) = MEMORY[0x277D84F90];
        ImageElement.sourceTypes.getter();
        sub_26A3A1D60(v139, 0, 0, 0);

        KeyPath = swift_getKeyPath();
        sub_26A28FC84(KeyPath, 0x736D6F696469, 0xE600000000000000);

        sub_26A0F8D00();
        v90 = v141;
        v88 = v142;
        sub_26A0E48F0(v137, &qword_28036CC20, &unk_26A426680);
        v143 = v259;
        v144 = type metadata accessor for ImageElement;
LABEL_71:
        sub_26A10FDF0(v143, v144);
        break;
    }

    v84 = v271;
    v275 = v271;
    v205 = *(v271 + 16);
    if (v205 >= *(v271 + 24) >> 1)
    {
      sub_26A10D50C();
      v84 = v275;
    }

    *(v84 + 16) = v205 + 1;
    v206 = v84 + 16 * v205;
    *(v206 + 32) = v90;
    *(v206 + 40) = v88;
    v85 += v266;
    --v83;
  }

  while (v83);
  return v84;
}

uint64_t SummaryItemPlayer.text1.getter()
{
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_56();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  v15 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_Player(0) + 20));
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  v16 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v16, v17, v8);
  if (v18)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    v19 = v14 + v8[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v20 = v8[8];
    v21 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    v25 = v8[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
    v29 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v29, v30, v8);
    if (!v18)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A10FD48();
  }

  return sub_26A10FD48();
}

void sub_26A0F2F18()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoMultilineTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v10 = OUTLINED_FUNCTION_104();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_93_0();
  v17 = type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_241(v17);
  v18 = *v3;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_0();
  v19 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v19, v20, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v21)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v22 = *(v6 + 32);
      v23 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
      v27 = *(v6 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v23);
      OUTLINED_FUNCTION_38_0();
      if (!v21)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_183_0();
      sub_26A10FD48();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A10FD48();
    v3 = 0;
  }

  type metadata accessor for MultilineTextProperty(0);
  v31 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v31, v3, 1, v32);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPlayer.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_104();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_93_0();
  v16 = type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_241(v16);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v17, v18, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v20 = *(v5 + 32);
      v21 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      v25 = *(v5 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_183_0();
      sub_26A10FD48();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A10FD48();
    v2 = 0;
  }

  type metadata accessor for TextProperty(0);
  v29 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v29, v2, 1, v30);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPlayer.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v8 = OUTLINED_FUNCTION_104();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_93_0();
  v15 = type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_241(v15);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_0();
  v16 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v16, v17, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v18)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v19 = *(v4 + 32);
      v20 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      v24 = *(v4 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
      OUTLINED_FUNCTION_38_0();
      if (!v18)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_183_0();
      sub_26A10FD48();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A10FD48();
    v2 = 0;
  }

  type metadata accessor for VisualProperty();
  v28 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v28, v2, 1, v29);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPlayer.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_104();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_93_0();
  v16 = type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_241(v16);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v17, v18, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      v20 = v3 + *(v5 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_183_0();
      sub_26A10FD48();
    }

    sub_26A10FD48();
    v2 = 0;
  }

  v21 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v22, v2, 1, v21);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPlayer.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Player(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return OUTLINED_FUNCTION_246();
}

uint64_t SummaryItemPlayer.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Player(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_PlayerP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return OUTLINED_FUNCTION_246();
}

void _ProtoSummaryItem_Player.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for _ProtoActionProperty();
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v36);
  v291 = type metadata accessor for _ProtoVisualProperty();
  v37 = OUTLINED_FUNCTION_12(v291);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v43 = OUTLINED_FUNCTION_41(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_48();
  v49 = OUTLINED_FUNCTION_35(v48);
  v288 = type metadata accessor for _ProtoMultilineTextProperty(v49);
  v50 = OUTLINED_FUNCTION_12(v288);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v58 = OUTLINED_FUNCTION_41(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_48();
  v66 = OUTLINED_FUNCTION_35(v65);
  v289 = type metadata accessor for _ProtoTextProperty(v66);
  v67 = OUTLINED_FUNCTION_12(v289);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v75 = OUTLINED_FUNCTION_41(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_48();
  v83 = OUTLINED_FUNCTION_35(v82);
  v84 = type metadata accessor for _ProtoStandardPlayerButton(v83);
  v85 = OUTLINED_FUNCTION_41(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_18();
  v90 = OUTLINED_FUNCTION_35(v89 - v88);
  v91 = type metadata accessor for _ProtoPlayerButton(v90);
  v92 = OUTLINED_FUNCTION_41(v91);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_18();
  v97 = OUTLINED_FUNCTION_35(v96 - v95);
  v98 = type metadata accessor for _ProtoPlayer.OneOf_Control(v97);
  v99 = OUTLINED_FUNCTION_12(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_41(v104);
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_42();
  v109 = OUTLINED_FUNCTION_35(v108);
  v110 = type metadata accessor for _ProtoPlayer(v109);
  v111 = OUTLINED_FUNCTION_79_0(v110);
  v113 = v112;
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_17();
  v118 = v116 - v117;
  MEMORY[0x28223BE20](v119);
  v121 = &v280 - v120;
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v123);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_246();
  sub_26A10FE48();
  v124 = *(type metadata accessor for _ProtoSummaryItem_Player(0) + 20);
  v293 = v23;
  v125 = *(v23 + v124);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v126 = *(v125 + 16);
  v127 = *(v126 + 16);
  v128 = MEMORY[0x277D84F90];
  v296 = v124;
  if (v127)
  {
    v281 = v24;
    v309 = MEMORY[0x277D84F90];

    sub_26A10CEE8();
    v128 = v309;
    v129 = *(v113 + 80);
    OUTLINED_FUNCTION_166_0();
    v280 = v126;
    v298[1] = v130;
    v131 = v126 + v130;
    v132 = *(v113 + 72);
    while (1)
    {
      sub_26A10FE48();
      sub_26A10FE48();
      v133 = 1;
      if (!__swift_getEnumTagSinglePayload(v118, 1, v98))
      {
        break;
      }

LABEL_11:
      __swift_storeEnumTagSinglePayload(v300, v133, 1, v98);
      sub_26A10CF40();
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_164(&a11);
      sub_26A10FD48();
      sub_26A10FDF0(v121, type metadata accessor for _ProtoPlayer);
      v309 = v128;
      v139 = *(v128 + 16);
      if (v139 >= *(v128 + 24) >> 1)
      {
        sub_26A10CEE8();
        v128 = v309;
      }

      *(v128 + 16) = v139 + 1;
      OUTLINED_FUNCTION_123_0();
      sub_26A10FD48();
      v131 += v132;
      if (!--v127)
      {

        v24 = v281;
        v124 = v296;
        goto LABEL_15;
      }
    }

    sub_26A10FE48();
    sub_26A10FE48();
    OUTLINED_FUNCTION_104();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A10FE48();
        sub_26A10FDF0(v297, type metadata accessor for _ProtoPlayer.OneOf_Control);
LABEL_10:
        sub_26A10FDF0(v298[0], type metadata accessor for _ProtoPlayer.OneOf_Control);
        v133 = 0;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_164(&v311);
      sub_26A10FD48();
      sub_26A2917A8(v300);
      v137 = OUTLINED_FUNCTION_71_0();
      sub_26A10FDF0(v137, v138);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_164(&v310);
      sub_26A10FD48();
      _ProtoPlayerButton.redactedProto.getter(v300);
      v135 = OUTLINED_FUNCTION_71_0();
      sub_26A10FDF0(v135, v136);
      OUTLINED_FUNCTION_104();
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

LABEL_15:
  v140 = v293;
  v141 = *(v293 + v124);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v143 = *(v140 + v124);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v144 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
    OUTLINED_FUNCTION_188_0(v144);
    OUTLINED_FUNCTION_136_0();
    v143 = v145;
    *(v140 + v124) = v145;
  }

  swift_beginAccess();
  v146 = *(v143 + 16);
  *(v143 + 16) = v128;

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v147 = v284;
  OUTLINED_FUNCTION_209();
  v148 = v289;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v147, 1, v289);
  OUTLINED_FUNCTION_162_0(v147);
  if (EnumTagSinglePayload == 1)
  {
    v150 = v288;
  }

  else
  {
    OUTLINED_FUNCTION_59(&v294);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(&qword_28036C7B8, 1, v148);
    v150 = v288;
    if (v151)
    {
      OUTLINED_FUNCTION_135_0(MEMORY[0x277D84F90]);
      v152 = v143 + v148[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v153 = OUTLINED_FUNCTION_44_0(v148[8]);
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v24);
      v156 = OUTLINED_FUNCTION_44_0(v148[9]);
      __swift_storeEnumTagSinglePayload(v156, v157, v158, v24);
      OUTLINED_FUNCTION_37(&qword_28036C7B8, 1, v148);
      v159 = v296;
      if (!v151)
      {
        sub_26A0E48F0(&qword_28036C7B8, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164(&v295);
      sub_26A10FD48();
      v159 = v296;
    }

    _ProtoTextProperty.redactedProto.getter();
    v160 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v160, v161);
    v162 = *(v140 + v159);
    v163 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *(v140 + v159);
    if ((v163 & 1) == 0)
    {
      v164 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v164);
      OUTLINED_FUNCTION_136_0();
      OUTLINED_FUNCTION_244(v165);
    }

    OUTLINED_FUNCTION_129(v308);
    sub_26A10FD48();
    v166 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v166, v167, v168, v148);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v169 = v285;
  OUTLINED_FUNCTION_209();
  v170 = __swift_getEnumTagSinglePayload(v169, 1, v150);
  OUTLINED_FUNCTION_162_0(v169);
  if (v170 == 1)
  {
    v171 = v24;
  }

  else
  {
    OUTLINED_FUNCTION_129(&v297);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(&unk_26A4273F0);
    v172 = v296;
    if (v151)
    {
      OUTLINED_FUNCTION_135_0(MEMORY[0x277D84F90]);
      v173 = v143 + v150[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v174 = OUTLINED_FUNCTION_44_0(v150[8]);
      v171 = v24;
      __swift_storeEnumTagSinglePayload(v174, v175, v176, v24);
      v177 = OUTLINED_FUNCTION_44_0(v150[9]);
      __swift_storeEnumTagSinglePayload(v177, v178, v179, v24);
      OUTLINED_FUNCTION_48_0(&unk_26A4273F0);
      v180 = &unk_28036E000;
      if (!v151)
      {
        sub_26A0E48F0(&unk_26A4273F0, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164(v298);
      sub_26A10FD48();
      v171 = v24;
      v180 = &unk_28036E000;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    v181 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v181, v182);
    v183 = *(v140 + v172);
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *(v140 + v172);
    if ((v184 & 1) == 0)
    {
      v185 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v185);
      OUTLINED_FUNCTION_136_0();
      OUTLINED_FUNCTION_244(v186);
    }

    OUTLINED_FUNCTION_129(v307);
    sub_26A10FD48();
    v187 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v187, v188, v189, v150);
    v190 = v180[282];
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v191 = v286;
  OUTLINED_FUNCTION_209();
  v192 = OUTLINED_FUNCTION_107();
  v194 = __swift_getEnumTagSinglePayload(v192, v193, v150);
  OUTLINED_FUNCTION_162_0(v191);
  if (v194 == 1)
  {
    v195 = v171;
  }

  else
  {
    OUTLINED_FUNCTION_128(&v299);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v194);
    v196 = v296;
    if (v151)
    {
      OUTLINED_FUNCTION_135_0(MEMORY[0x277D84F90]);
      v197 = v143 + v150[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v198 = OUTLINED_FUNCTION_44_0(v150[8]);
      v195 = v171;
      __swift_storeEnumTagSinglePayload(v198, v199, v200, v171);
      v201 = OUTLINED_FUNCTION_44_0(v150[9]);
      __swift_storeEnumTagSinglePayload(v201, v202, v203, v171);
      OUTLINED_FUNCTION_48_0(v194);
      v204 = &unk_28036E000;
      if (!v151)
      {
        sub_26A0E48F0(v194, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164(&v300);
      sub_26A10FD48();
      v195 = v171;
      v204 = &unk_28036E000;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    v205 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v205, v206);
    v207 = *(v140 + v196);
    v208 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *(v140 + v196);
    if ((v208 & 1) == 0)
    {
      v209 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v209);
      OUTLINED_FUNCTION_136_0();
      OUTLINED_FUNCTION_244(v210);
    }

    OUTLINED_FUNCTION_128(v307);
    sub_26A10FD48();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v211, v212, v213, v150);
    v214 = v204[283];
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v215 = v287;
  OUTLINED_FUNCTION_209();
  v216 = __swift_getEnumTagSinglePayload(v215, 1, v148);
  OUTLINED_FUNCTION_162_0(v215);
  if (v216 != 1)
  {
    OUTLINED_FUNCTION_128(&v301);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v216, 1, v148);
    v217 = v296;
    if (v151)
    {
      OUTLINED_FUNCTION_135_0(MEMORY[0x277D84F90]);
      v218 = v143 + v148[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v219 = OUTLINED_FUNCTION_44_0(v148[8]);
      __swift_storeEnumTagSinglePayload(v219, v220, v221, v195);
      v222 = OUTLINED_FUNCTION_44_0(v148[9]);
      __swift_storeEnumTagSinglePayload(v222, v223, v224, v195);
      OUTLINED_FUNCTION_37(v216, 1, v148);
      if (!v151)
      {
        sub_26A0E48F0(v216, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164(&v302);
      sub_26A10FD48();
    }

    _ProtoTextProperty.redactedProto.getter();
    v225 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v225, v226);
    v227 = *(v140 + v217);
    v228 = swift_isUniquelyReferenced_nonNull_native();
    v229 = *(v140 + v217);
    if ((v228 & 1) == 0)
    {
      v230 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v230);
      OUTLINED_FUNCTION_136_0();
      OUTLINED_FUNCTION_244(v231);
    }

    OUTLINED_FUNCTION_129(v308);
    sub_26A10FD48();
    v232 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v232, v233, v234, v148);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v235 = v290;
  OUTLINED_FUNCTION_209();
  v236 = v291;
  v237 = __swift_getEnumTagSinglePayload(v235, 1, v291);
  OUTLINED_FUNCTION_98_0();
  if (v237 != 1)
  {
    OUTLINED_FUNCTION_129(&v303);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(&unk_26A426430);
    v238 = v296;
    if (v151)
    {
      v239 = v282;
      *v282 = MEMORY[0x277D84F90];
      *(v239 + 4) = 0;
      v240 = v239 + v236[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v241 = OUTLINED_FUNCTION_44_0(v236[8]);
      __swift_storeEnumTagSinglePayload(v241, v242, v243, v195);
      v244 = OUTLINED_FUNCTION_44_0(v236[9]);
      __swift_storeEnumTagSinglePayload(v244, v245, v246, v195);
      OUTLINED_FUNCTION_48_0(&unk_26A426430);
      if (!v151)
      {
        sub_26A0E48F0(&unk_26A426430, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164(&v304);
      sub_26A10FD48();
    }

    _ProtoVisualProperty.redactedProto.getter();
    v247 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v247, v248);
    v249 = *(v140 + v238);
    v250 = swift_isUniquelyReferenced_nonNull_native();
    v251 = *(v140 + v238);
    if ((v250 & 1) == 0)
    {
      v252 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v252);
      OUTLINED_FUNCTION_136_0();
      *(v140 + v238) = v253;
    }

    sub_26A10FD48();
    v254 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v254, v255, v256, v236);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_122_0();
  v260 = __swift_getEnumTagSinglePayload(v257, v258, v259);
  OUTLINED_FUNCTION_98_0();
  if (v260 != 1)
  {
    OUTLINED_FUNCTION_59(&v305);
    sub_26A10FD9C();
    v261 = OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_37(v261, v262, v263);
    v264 = v296;
    if (v151)
    {
      v265 = v283;
      *v283 = MEMORY[0x277D84F90];
      v265[1] = 0;
      v265[2] = 0xE000000000000000;
      v266 = v265 + *(v195 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v267 = OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_37(v267, v268, v269);
      if (!v151)
      {
        sub_26A0E48F0(&off_28036C7C0, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_164(&v306);
      sub_26A10FD48();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v292);
    v270 = OUTLINED_FUNCTION_71_0();
    sub_26A10FDF0(v270, v271);
    v272 = *(v140 + v264);
    v273 = swift_isUniquelyReferenced_nonNull_native();
    v274 = *(v140 + v264);
    if ((v273 & 1) == 0)
    {
      v275 = type metadata accessor for _ProtoSummaryItem_Player._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v275);
      sub_26A1B7690();
      *(v140 + v264) = v276;
    }

    sub_26A10FD48();
    v277 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v277, v278, v279, v195);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPlayer.init(players:text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_14_0();
  sub_26A10D0BC(v10, v11);
  sub_26A4249C4();

  sub_26A0E48F0(a7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a6, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a5, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_26A0F4DBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v124 = a7;
  v125 = a8;
  v121 = a6;
  v119 = a5;
  v116 = a4;
  v112 = a3;
  v15 = type metadata accessor for ActionProperty();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v109 = v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v127 = v99 - v20;
  v126 = type metadata accessor for _ProtoActionProperty();
  v21 = *(*(v126 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v126);
  v105 = v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v106 = v99 - v24;
  v25 = type metadata accessor for VisualProperty();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v108 = v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v123 = v99 - v30;
  v122 = type metadata accessor for _ProtoVisualProperty();
  v31 = *(*(v122 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v122);
  v103 = v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v104 = v99 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v120 = v99 - v37;
  v38 = type metadata accessor for MultilineTextProperty(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v115 = v99 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Player(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = type metadata accessor for _ProtoPlayer(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v114 = v99 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v110 = v99 - v50;
  v111 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v51 = *(*(v111 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v111);
  v101 = v99 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v107 = v99 - v55;
  MEMORY[0x28223BE20](v54);
  v100 = v99 - v56;
  v118 = type metadata accessor for _ProtoTextProperty(0);
  v57 = *(*(v118 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v118);
  v102 = v99 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v117 = v99 - v60;
  v61 = type metadata accessor for TextProperty(0);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v113 = v99 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a2 + 16);
  if (v64)
  {
    v99[0] = a1;
    v99[1] = v12;
    v131 = MEMORY[0x277D84F90];
    sub_26A10CEE8();
    v65 = v131;
    v66 = a2 + 32;
    do
    {
      sub_26A0E5D68(v66, v128);
      v68 = v129;
      v67 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      (*(v67 + 8))(v68, v67);
      sub_26A10FD48();
      __swift_destroy_boxed_opaque_existential_1(v128);
      v131 = v65;
      v69 = *(v65 + 16);
      if (v69 >= *(v65 + 24) >> 1)
      {
        sub_26A10CEE8();
        v65 = v131;
      }

      *(v65 + 16) = v69 + 1;
      v70 = v65 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v71 = *(v44 + 72);
      sub_26A10FD48();
      v66 += 40;
      --v64;
    }

    while (v64);
  }

  _ProtoSummaryItem_Player.player.setter();
  v72 = v112[3];
  v73 = v112[4];
  __swift_project_boxed_opaque_existential_1(v112, v72);
  (*(v73 + 8))(v72, v73);
  sub_26A10FD48();
  _ProtoSummaryItem_Player.text1.setter();
  sub_26A10FD9C();
  v74 = v129;
  v75 = v111;
  if (v129)
  {
    v76 = v130;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    (*(v76 + 8))(v74, v76);
    v77 = v110;
    sub_26A10FD48();
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v75);
    __swift_destroy_boxed_opaque_existential_1(v128);
    if (__swift_getEnumTagSinglePayload(v77, 1, v75) != 1)
    {
      v78 = v100;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.text2.setter();
      sub_26A10FDF0(v78, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v128, &qword_28036CB10, &unk_26A426460);
    v77 = v110;
    __swift_storeEnumTagSinglePayload(v110, 1, 1, v75);
  }

  sub_26A0E48F0(v77, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v79 = v129;
  if (v129)
  {
    v80 = v130;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    (*(v80 + 8))(v79, v80);
    v81 = v114;
    sub_26A10FD48();
    __swift_storeEnumTagSinglePayload(v81, 0, 1, v75);
    __swift_destroy_boxed_opaque_existential_1(v128);
    if (__swift_getEnumTagSinglePayload(v81, 1, v75) != 1)
    {
      v82 = v101;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.text3.setter();
      sub_26A10FDF0(v82, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v128, &qword_28036CB10, &unk_26A426460);
    v81 = v114;
    __swift_storeEnumTagSinglePayload(v114, 1, 1, v75);
  }

  sub_26A0E48F0(v81, &qword_28036CAE0, &unk_26A4273F0);
LABEL_16:
  sub_26A10FD9C();
  v83 = v129;
  if (v129)
  {
    v84 = v130;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    (*(v84 + 8))(v83, v84);
    v85 = v120;
    sub_26A10FD48();
    v86 = v118;
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v118);
    __swift_destroy_boxed_opaque_existential_1(v128);
    if (__swift_getEnumTagSinglePayload(v85, 1, v86) != 1)
    {
      v87 = v102;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.text4.setter();
      sub_26A10FDF0(v87, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v128, &qword_28036CB08, &unk_26A428720);
    v85 = v120;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v118);
  }

  sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v88 = v129;
  if (v129)
  {
    v89 = v130;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    (*(v89 + 8))(v88, v89);
    v90 = v123;
    sub_26A10FD48();
    v91 = v122;
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v122);
    __swift_destroy_boxed_opaque_existential_1(v128);
    if (__swift_getEnumTagSinglePayload(v90, 1, v91) != 1)
    {
      v92 = v104;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.thumbnail.setter();
      sub_26A10FDF0(v92, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v128, &qword_28036CB00, &unk_26A426450);
    v90 = v123;
    __swift_storeEnumTagSinglePayload(v123, 1, 1, v122);
  }

  sub_26A0E48F0(v90, &qword_28036CAE8, &unk_26A426430);
LABEL_26:
  sub_26A10FD9C();
  v93 = v129;
  if (v129)
  {
    v94 = v130;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    (*(v94 + 8))(v93, v94);
    v95 = v127;
    sub_26A10FD48();
    v96 = v126;
    __swift_storeEnumTagSinglePayload(v95, 0, 1, v126);
    __swift_destroy_boxed_opaque_existential_1(v128);
    if (__swift_getEnumTagSinglePayload(v95, 1, v96) != 1)
    {
      v97 = v106;
      sub_26A10FD48();
      sub_26A10FE48();
      _ProtoSummaryItem_Player.action.setter();
      sub_26A10FDF0(v97, type metadata accessor for _ProtoActionProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(v128, &qword_28036CAF8, &unk_26A426D30);
    v95 = v127;
    __swift_storeEnumTagSinglePayload(v127, 1, 1, v126);
  }

  sub_26A0E48F0(v95, &off_28036C7C0, &off_26A427400);
LABEL_31:

  result = _ProtoSummaryItem_Player.componentName.setter();
  if (a12)
  {

    return _ProtoSummaryItem_Player.linkIdentifier.setter();
  }

  return result;
}

void SummaryItemPlayer.init(player:text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)()
{
  OUTLINED_FUNCTION_76();
  v8 = v2;
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_255();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_14_0();
  sub_26A10D0BC(v3, v4);
  OUTLINED_FUNCTION_208();

  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v0, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v8, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(v9, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_187_0(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_26A0E48F0(v12, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_167_0();
  sub_26A0E48F0(v5, v6, v7);
  sub_26A0E48F0(v13, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_187_0(&v14);
  OUTLINED_FUNCTION_187_0(&v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_75();
}

void sub_26A0F5F70()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_158_0();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_14_0();
  sub_26A10D0BC(v3, v4);
  sub_26A4249C4();

  sub_26A0E48F0(v2, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v1, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v0, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_167_0();
  sub_26A0E48F0(v5, v6, v7);
  OUTLINED_FUNCTION_236();
  sub_26A0E48F0(v8, v9, v10);
  OUTLINED_FUNCTION_164_0(&v15);
  OUTLINED_FUNCTION_164_0(&v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPlayer.init(players:text1:text2:text3:text4:thumbnail:action:)()
{
  OUTLINED_FUNCTION_133_0();
  v15 = v3;
  v16 = v5;
  v17 = v4;
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_158_0();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_14_0();
  sub_26A10D0BC(v6, v7);
  sub_26A4249C4();

  sub_26A0E48F0(v2, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v1, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v0, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v15);
  OUTLINED_FUNCTION_164_0(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_26A0E48F0(v18, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_167_0();
  sub_26A0E48F0(v8, v9, v10);
  OUTLINED_FUNCTION_236();
  sub_26A0E48F0(v11, v12, v13);
  OUTLINED_FUNCTION_164_0(v19);
  OUTLINED_FUNCTION_164_0(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void SummaryItemPlayer.init(player:text1:text2:text3:text4:thumbnail:action:linkIdentifier:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_133_0();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_158_0();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Player(0);
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_14_0();
  sub_26A10D0BC(v3, v4);
  OUTLINED_FUNCTION_208();

  sub_26A0E48F0(v2, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v1, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v0, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_164_0(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_167_0();
  sub_26A0E48F0(v5, v6, v7);
  OUTLINED_FUNCTION_236();
  sub_26A0E48F0(v8, v9, v10);
  OUTLINED_FUNCTION_164_0(&v15);
  OUTLINED_FUNCTION_164_0(&v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_75();
}

void sub_26A0F6DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_248();
  v12 = OUTLINED_FUNCTION_102_0();
  if (*(a12 + 16))
  {
    OUTLINED_FUNCTION_139_0(v12, v13, type metadata accessor for KeyValueStandard.Pair, v14, v15, KeyValueStandard.Pair.description(redacted:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A10D548();
    OUTLINED_FUNCTION_65_0();
    sub_26A424B54();
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_214();
    v16 = OUTLINED_FUNCTION_212();
    OUTLINED_FUNCTION_215(v16);
    sub_26A10C83C(sub_26A167074);
    v17 = OUTLINED_FUNCTION_49_0();
    sub_26A10CC70(v17, sub_26A167074);

    OUTLINED_FUNCTION_75_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_247();
}

void sub_26A0F6ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_248();
  v12 = OUTLINED_FUNCTION_102_0();
  if (*(a12 + 16))
  {
    OUTLINED_FUNCTION_139_0(v12, v13, type metadata accessor for HorizontalListStandard.Item, v14, v15, HorizontalListStandard.Item.description(redacted:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A10D548();
    OUTLINED_FUNCTION_65_0();
    sub_26A424B54();
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_214();
    v16 = OUTLINED_FUNCTION_212();
    OUTLINED_FUNCTION_215(v16);
    sub_26A10C83C(sub_26A1670BC);
    v17 = OUTLINED_FUNCTION_49_0();
    sub_26A10CC70(v17, sub_26A1670BC);

    OUTLINED_FUNCTION_75_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_247();
}

void sub_26A0F6FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_248();
  v12 = OUTLINED_FUNCTION_102_0();
  if (*(a12 + 16))
  {
    OUTLINED_FUNCTION_139_0(v12, v13, type metadata accessor for IntentsUIStandard.Slot, v14, v15, IntentsUIStandard.Slot.description(redacted:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A10D548();
    OUTLINED_FUNCTION_65_0();
    sub_26A424B54();
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_159_0();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_213();

    OUTLINED_FUNCTION_214();
    v16 = OUTLINED_FUNCTION_212();
    OUTLINED_FUNCTION_215(v16);
    sub_26A10C83C(sub_26A167104);
    v17 = OUTLINED_FUNCTION_49_0();
    sub_26A10CC70(v17, sub_26A167104);

    OUTLINED_FUNCTION_75_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_247();
}

void sub_26A0F7514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_148_0();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_238();
  if (v15)
  {

    OUTLINED_FUNCTION_210(a9, a10);
    v16 = OUTLINED_FUNCTION_170_0();
    v17 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v16, v14) + 28));
    sub_26A10C83C(v12);
    v18 = OUTLINED_FUNCTION_49_0();
    sub_26A10CC70(v18, v12);
    OUTLINED_FUNCTION_165_0();
    *v17 = v17;
  }

  else
  {
  }

  OUTLINED_FUNCTION_147_0();
}

void sub_26A0F75D8()
{
  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_33_0();
  swift_getAtKeyPath();
  sub_26A424DA4();
  v4 = v3;
  OUTLINED_FUNCTION_84_0();
  if (v6)
  {
    v7 = v5;

    v8 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_210(v8, v9);
    OUTLINED_FUNCTION_207();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB8, &qword_26A426940);
    OUTLINED_FUNCTION_103_0(v10);
    sub_26A10C83C(v11);
    v12 = OUTLINED_FUNCTION_10_1();
    sub_26A10CC70(v12, v4);
    OUTLINED_FUNCTION_4_1();
    *(v13 + 48) = v7;
    *(v13 + 56) = v1;
    *(v0 + v2) = v14;
  }

  else
  {
  }

  OUTLINED_FUNCTION_147_0();
}

void sub_26A0F8060()
{
  OUTLINED_FUNCTION_148_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_33_0();
  swift_getAtKeyPath();
  sub_26A424DB4();
  OUTLINED_FUNCTION_84_0();
  if (v9)
  {
    v10 = v8;

    v11 = OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_210(v11, v12);
    OUTLINED_FUNCTION_170_0();

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v5) + 28);
    sub_26A10C83C(v3);
    v14 = *(*(v0 + v13) + 16);
    v15 = OUTLINED_FUNCTION_69();
    sub_26A10CC70(v15, v16);
    OUTLINED_FUNCTION_178_0();
    *(v17 + 48) = v10;
    *(v17 + 56) = v1;
    *(v0 + v13) = v18;
  }

  else
  {
  }

  OUTLINED_FUNCTION_147_0();
}

void sub_26A0F81C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_257();
  if ((a10 & 1) == 0)
  {
    sub_26A424DA4();
    v14 = v13;
    OUTLINED_FUNCTION_84_0();
    if (v16)
    {
      v17 = v15;

      v18 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_210(v18, v19);
      OUTLINED_FUNCTION_207();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB8, &qword_26A426940);
      OUTLINED_FUNCTION_103_0(v20);
      sub_26A10C83C(v21);
      v22 = OUTLINED_FUNCTION_10_1();
      sub_26A10CC70(v22, v14);
      OUTLINED_FUNCTION_4_1();
      *(v23 + 48) = v17;
      *(v23 + 56) = v11;
      *(v10 + v12) = v24;
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_147_0();
}

void sub_26A0F82C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_148_0();
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_257();
  if (a10)
  {
    OUTLINED_FUNCTION_238();
    if (v15)
    {

      OUTLINED_FUNCTION_210(a9, a10);
      v16 = OUTLINED_FUNCTION_170_0();
      v17 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v16, v14) + 28));
      sub_26A10C83C(v12);
      v18 = OUTLINED_FUNCTION_49_0();
      sub_26A10CC70(v18, v12);
      OUTLINED_FUNCTION_165_0();
      *v17 = v17;
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_147_0();
}

void sub_26A0F8814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_257();
  if (a10 >> 60 != 15)
  {
    sub_26A424664();
    OUTLINED_FUNCTION_84_0();
    if (v13)
    {
      v14 = v12;

      v15 = OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_210(v15, v16);
      OUTLINED_FUNCTION_207();
      v17 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA8, &qword_26A4265B8) + 28));
      sub_26A10C83C(sub_26A1685D4);
      v18 = OUTLINED_FUNCTION_10_1();
      sub_26A10CC70(v18, sub_26A1685D4);
      OUTLINED_FUNCTION_4_1();
      *(v19 + 48) = v14;
      *(v19 + 56) = v11;
      *v17 = v20;
    }

    else
    {
    }
  }

  sub_26A10E794(a9, a10);
  OUTLINED_FUNCTION_147_0();
}

void sub_26A0F8988()
{
  OUTLINED_FUNCTION_76();
  v47 = v2;
  v48 = v3;
  v45 = v4;
  v46 = v5;
  v49 = v6;
  v50 = v7;
  v8 = type metadata accessor for ImageElement.AspectRatio();
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB0, &qword_26A4265C0);
  OUTLINED_FUNCTION_12(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_93_0();
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_180_0();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_37(v27, v28, v29);
  if (v30)
  {
    OUTLINED_FUNCTION_187_0(v1);
    OUTLINED_FUNCTION_187_0(v25);
  }

  else
  {
    sub_26A10FE48();
    OUTLINED_FUNCTION_236();
    sub_26A10FE48();
    *(v0 + *(v15 + 32)) = 0;
    sub_26A10FDF0(v14, type metadata accessor for ImageElement.AspectRatio);
    *(v0 + *(v15 + 28)) = MEMORY[0x277D84F90];
    swift_getKeyPath();
    sub_26A0F8060();

    swift_getKeyPath();
    sub_26A0F8060();

    sub_26A1023EC();
    v32 = v31;
    v34 = v33;
    sub_26A0E48F0(v0, &qword_28036CBB0, &qword_26A4265C0);
    sub_26A10FDF0(v25, type metadata accessor for ImageElement.AspectRatio);
    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {

      v36 = sub_26A103DA8(v32, v34, v45);
      v38 = v37;

      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v46, v47) + 28);
      sub_26A10C83C(v48);
      v40 = *(*(v0 + v39) + 16);
      v41 = OUTLINED_FUNCTION_183_0();
      sub_26A10CC70(v41, v42);
      sub_26A0E48F0(v1, &qword_28036CBB8, &qword_26A4265C8);
      v43 = *(v0 + v39);
      *(v43 + 16) = v40 + 1;
      v44 = (v43 + 32 * v40);
      v44[4] = v49;
      v44[5] = v50;
      v44[6] = v36;
      v44[7] = v38;
      *(v0 + v39) = v43;
    }

    else
    {
      sub_26A0E48F0(v1, &qword_28036CBB8, &qword_26A4265C8);
    }
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A0F8D00()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166C60();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166C60();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F8ED8()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF20, &qword_26A426AA8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166CA8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166CA8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F90B0()
{
  OUTLINED_FUNCTION_62_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28036CCE8, &qword_26A426778);
  OUTLINED_FUNCTION_24_0(v4);
  if (v1)
  {
    OUTLINED_FUNCTION_176_0();
    v5 = MEMORY[0x277D84F90];
    while (v1 != v3)
    {
      OUTLINED_FUNCTION_88_0();
      if (v7)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0(v6);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166CF0();
          v5 = v8;
        }

        OUTLINED_FUNCTION_36_0();
        if (v7)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166CF0();
          v5 = v9;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v5 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v2)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v7)
      {
        OUTLINED_FUNCTION_58_0();
      }

      OUTLINED_FUNCTION_2_1();
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F927C()
{
  OUTLINED_FUNCTION_62_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC10, &qword_26A426670);
  OUTLINED_FUNCTION_24_0(v4);
  if (v1)
  {
    OUTLINED_FUNCTION_176_0();
    v5 = MEMORY[0x277D84F90];
    while (v1 != v3)
    {
      OUTLINED_FUNCTION_88_0();
      if (v7)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0(v6);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166D38();
          v5 = v8;
        }

        OUTLINED_FUNCTION_36_0();
        if (v7)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166D38();
          v5 = v9;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v5 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v2)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v7)
      {
        OUTLINED_FUNCTION_58_0();
      }

      OUTLINED_FUNCTION_2_1();
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9448()
{
  OUTLINED_FUNCTION_62_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
  OUTLINED_FUNCTION_24_0(v4);
  if (v1)
  {
    OUTLINED_FUNCTION_47_0();
    v5 = MEMORY[0x277D84F90];
    while (v1 != v3)
    {
      OUTLINED_FUNCTION_88_0();
      if (v7)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0(v6);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166D80();
          v5 = v8;
        }

        OUTLINED_FUNCTION_36_0();
        if (v7)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166D80();
          v5 = v9;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v5 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v2)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v7)
      {
        OUTLINED_FUNCTION_58_0();
      }

      OUTLINED_FUNCTION_2_1();
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_232();
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9610()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE58, &unk_26A4269E0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166DC8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166DC8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F97E4()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB8, &qword_26A426940);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166E10();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166E10();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F99B8()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB60, &qword_26A426578);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166E58();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166E58();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9B8C()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEF0, &qword_26A438130);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_231();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166EA0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166EA0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9D58()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF50, &qword_26A426B00);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166EE8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166EE8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0F9F28()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D030, &qword_26A427410);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166F30();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166F30();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA0F8()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE90, &qword_26A426A18);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_231();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166F78();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166F78();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA2C4()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC38, &qword_26A4266C8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A166FC0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A166FC0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA494()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_230();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D010, &qword_26A426C38);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167008();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167008();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA664()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEC8, &qword_26A426A50);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167050();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167050();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FA834()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_230();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEF8, &qword_26A426A80);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167098();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167098();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FAA04()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFA0, &qword_26A426BC8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1670E0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1670E0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FABD4()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE78, &qword_26A426A00);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167128();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167128();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FADA4()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_229();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDB0, &qword_26A43F5D0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167170();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167170();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FAF74()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_229();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE68, &unk_26A4269F0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1671B8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1671B8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB144()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167200();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167200();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB324()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_228();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD68, &unk_26A4268C0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167248();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167248();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB4F4()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDD8, &unk_26A426960);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_227();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167290();
        }

        OUTLINED_FUNCTION_36_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167290();
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB6CC()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE80, &qword_26A426A08);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1672D8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1672D8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FB8A0()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF88, &qword_26A42DA20);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167320();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167320();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FBA74()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD8, &unk_26A426C00);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167368();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167368();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FBC48()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_225();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF80, &unk_26A426B30);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1673B0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1673B0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FBE18()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_230();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF78, &qword_26A4354C0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1673F8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1673F8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FBFE8()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFE8, &qword_26A426C10);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167440();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167440();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC1B8()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDA8, &unk_26A426930);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167488();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167488();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC388()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB0, &qword_26A426BD8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_42_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1674D0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1674D0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC55C()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE38, &qword_26A4269C0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167518();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167518();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC72C()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD20, &qword_26A426800);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167560();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167560();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FC8FC()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD0, &qword_26A426BF8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1675A8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1675A8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FCAD0()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D038, &qword_26A426C60);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1675F0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1675F0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FCCA4()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD28, &qword_26A426808);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167638();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167638();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FCE74()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_225();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE40, &qword_26A4269C8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167680();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167680();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD044()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D000, &qword_26A427A40);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1676C8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1676C8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD214()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEE8, &unk_26A426A70);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167710();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167710();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD3E8()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE70, &qword_26A43A8F0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167758();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167758();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD5B8()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE8, &qword_26A426970);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1677A0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1677A0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD788()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEE0, &qword_26A439240);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1677E8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1677E8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FD958()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_229();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDA0, &qword_26A426928);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167830();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167830();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FDB28()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_228();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF40, &qword_26A42E9B0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167878();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167878();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FDCF8()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD30, &unk_26A426810);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1678C0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1678C0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FDEC8()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D008, &qword_26A426C30);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167908();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167908();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE09C()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_129_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE60, &qword_26A43B7D0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167950();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167950();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE26C()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD40, &qword_26A426820);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167998();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167998();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE440()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_225();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF38, &unk_26A426AC0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1679E0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1679E0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE610()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_230();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD48, &qword_26A426828);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167A28();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167A28();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE7E0()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_228();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE88, &qword_26A426A10);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167A70();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167A70();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FE9B0()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_229();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D018, &qword_26A426C40);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167AB8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167AB8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FEB80()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_228();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD50, &unk_26A426830);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167B00();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167B00();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FED50()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFE0, &qword_26A428730);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167B48();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167B48();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FEF20()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF60, &qword_26A426B10);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167B90();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167B90();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF0F0()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_243();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD60, &qword_26A4268B8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167BD8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167BD8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF2C0()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_243();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D028, &unk_26A426C50);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167C20();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167C20();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF490()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_243();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF70, &unk_26A426B20);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167C68();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167C68();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF660()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_243();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC30, &qword_26A426698);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167CB0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167CB0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FF830()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF58, &qword_26A426B08);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167CF8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167CF8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FFA00()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF30, &qword_26A426AB8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167D40();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167D40();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FFBD0()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC88, &qword_26A442940);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167D88();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167D88();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FFDA0()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD88, &unk_26A4268E0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167DD0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167DD0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A0FFF70()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_151_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCB8, &qword_26A426748);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167E18();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167E18();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100140()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD08, &qword_26A426798);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167E60();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167E60();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A10030C()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD18, &qword_26A4267F8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167EA8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167EA8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1004D8()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD0, &unk_26A426760);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167EF0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167EF0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1006A8()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D020, &qword_26A426C48);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167F38();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167F38();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_185_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100874()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D040, &qword_26A426C68);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167F80();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167F80();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_185_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100A40()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD98, &qword_26A4268F8);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_34_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A167FC8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A167FC8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100C10()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD10, &qword_26A4395F0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168010();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168010();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100DE8()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_186_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168058();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168058();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A100FB8()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_175_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC98, &unk_26A4439A0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1680A0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1680A0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101188()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_225();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF10, &qword_26A437E70);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_13_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1680E8();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1680E8();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101358()
{
  OUTLINED_FUNCTION_62_0();
  if (*(*(v0 + 64) + 16))
  {
    OUTLINED_FUNCTION_171_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v2)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0(v1);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168130();
        }

        OUTLINED_FUNCTION_36_0();
        if (v2)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168130();
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101520()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE18, &qword_26A4269A0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168178();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168178();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1016F8()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CED8, &unk_26A426A60);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1681C0();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1681C0();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1018D0()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168208();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168208();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101AA8()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCE0, &qword_26A426770);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168250();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168250();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101C80()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF08, &unk_26A426A90);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_25_0();
    while (1)
    {
      OUTLINED_FUNCTION_72_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_9_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168298();
        }

        OUTLINED_FUNCTION_26_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168298();
        }

        OUTLINED_FUNCTION_8_1();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A101E58()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1682E0();
        }

        OUTLINED_FUNCTION_36_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1682E0();
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A102034()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDC0, &qword_26A426948);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168328();
        }

        OUTLINED_FUNCTION_36_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168328();
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A102210()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFF8, &unk_26A426C20);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168370();
        }

        OUTLINED_FUNCTION_36_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168370();
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1023EC()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB0, &qword_26A4265C0);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A1683B8();
        }

        OUTLINED_FUNCTION_36_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A1683B8();
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1025C8()
{
  OUTLINED_FUNCTION_62_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBE0, &qword_26A426640);
  OUTLINED_FUNCTION_24_0(v2);
  if (v1)
  {
    OUTLINED_FUNCTION_94_0();
    while (1)
    {
      OUTLINED_FUNCTION_88_0();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_16_0(v3);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168400();
        }

        OUTLINED_FUNCTION_36_0();
        if (v4)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168400();
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_182_0();
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_26A1027A4()
{
  OUTLINED_FUNCTION_62_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFC0, &qword_26A426BE8);
  OUTLINED_FUNCTION_24_0(v4);
  if (v1)
  {
    OUTLINED_FUNCTION_47_0();
    v5 = MEMORY[0x277D84F90];
    while (v1 != v3)
    {
      OUTLINED_FUNCTION_88_0();
      if (v7)
      {
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_0(v6);
      if (v0)
      {
        OUTLINED_FUNCTION_59_0();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_2();
          sub_26A168448();
          v5 = v8;
        }

        OUTLINED_FUNCTION_36_0();
        if (v7)
        {
          OUTLINED_FUNCTION_22_0();
          sub_26A168448();
          v5 = v9;
        }

        OUTLINED_FUNCTION_17_0();
      }
    }

    if (!*(v5 + 16))
    {
LABEL_23:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_54_0();

      OUTLINED_FUNCTION_55_0();
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_23_0();
    while (1)
    {
      OUTLINED_FUNCTION_70_0();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_69_0();
      if (v2)
      {
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_6_1();
      if (v7)
      {
        OUTLINED_FUNCTION_58_0();
      }

      OUTLINED_FUNCTION_2_1();
      if (v10)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_232();
LABEL_24:
    OUTLINED_FUNCTION_61_0();
  }
}