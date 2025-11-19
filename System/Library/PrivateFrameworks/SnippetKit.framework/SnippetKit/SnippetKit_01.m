void sub_26A0D9080()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_119();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_147();
  v12 = *(v5 + 16);
  if (v12 == *(v3 + 16) && v12 && v5 != v3)
  {
    OUTLINED_FUNCTION_20(v11);
    v14 = v5 + v13;
    v15 = v3 + v13;
    v17 = *(v16 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_103();
      sub_26A0E499C();
      sub_26A0E499C();
      v18 = *(v6 + 20);
      if (*(v1 + v18) != *(v0 + v18))
      {
        v19 = *(v1 + v18);

        sub_26A1FAF74();
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          break;
        }
      }

      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v22);
      OUTLINED_FUNCTION_125();
      if ((sub_26A424B64() & 1) == 0)
      {
        break;
      }

      sub_26A0E49F0();
      OUTLINED_FUNCTION_157();
      sub_26A0E49F0();
      v15 += v17;
      v14 += v17;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    sub_26A0E49F0();
    OUTLINED_FUNCTION_44();
    sub_26A0E49F0();
  }

LABEL_11:
  OUTLINED_FUNCTION_75();
}

void sub_26A0D92E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for _ProtoResponse.Component(0);
  v28 = OUTLINED_FUNCTION_12(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C878, &unk_26A4405C0);
  OUTLINED_FUNCTION_12(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_42();
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C880, &unk_26A425E30);
  v38 = OUTLINED_FUNCTION_41(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_48();
  v85 = v42;
  v43 = OUTLINED_FUNCTION_45();
  v86 = type metadata accessor for _ProtoIntentsUI_Standard.Slot(v43);
  v44 = OUTLINED_FUNCTION_10(v86);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_21();
  v87 = v47 - v48;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_83();
  v51 = *(v26 + 16);
  if (v51 == *(v24 + 16) && v51 && v26 != v24)
  {
    v82 = v31;
    v52 = 0;
    OUTLINED_FUNCTION_20(v50);
    v83 = v27;
    v84 = *(v53 + 72);
    v54 = v36;
    v55 = v85;
    v81 = v20;
    while (1)
    {
      sub_26A0E499C();
      if (v52 == v51)
      {
        break;
      }

      sub_26A0E499C();
      v56 = *(v86 + 20);
      v57 = *(v20 + v56);
      v58 = *(v87 + v56);
      if (v57 != v58)
      {
        OUTLINED_FUNCTION_142();
        v59 = *(v57 + 16);
        OUTLINED_FUNCTION_142();
        v60 = *(v58 + 16);
        v61 = *(v59 + 16);
        if (v61 != *(v60 + 16))
        {
          goto LABEL_34;
        }

        if (v61)
        {
          v62 = v59 == v60;
        }

        else
        {
          v62 = 1;
        }

        if (!v62)
        {
          v63 = (v59 + 40);
          v64 = (v60 + 40);
          while (v61)
          {
            v65 = *(v63 - 1) == *(v64 - 1) && *v63 == *v64;
            if (!v65 && (sub_26A425354() & 1) == 0)
            {
              goto LABEL_34;
            }

            v63 += 2;
            v64 += 2;
            if (!--v61)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
          break;
        }

LABEL_20:
        v66 = OBJC_IVAR____TtCVV10SnippetKit24_ProtoIntentsUI_Standard4SlotP33_7D14C79C842FCD24B5883C58ADC455B313_StorageClass__fallback;
        OUTLINED_FUNCTION_142();
        sub_26A0E4894(v57 + v66, v55, &qword_28036C880, &unk_26A425E30);
        v67 = OBJC_IVAR____TtCVV10SnippetKit24_ProtoIntentsUI_Standard4SlotP33_7D14C79C842FCD24B5883C58ADC455B313_StorageClass__fallback;
        OUTLINED_FUNCTION_142();
        v68 = *(v82 + 48);
        v69 = OUTLINED_FUNCTION_133();
        OUTLINED_FUNCTION_144(v69, v70);
        OUTLINED_FUNCTION_144(v58 + v67, v54 + v68);
        v71 = OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_37(v71, v72, v83);
        if (v62)
        {

          v73 = OUTLINED_FUNCTION_98();
          sub_26A0E48F0(v73, v74, &unk_26A425E30);
          OUTLINED_FUNCTION_28(v54 + v68);
          if (!v62)
          {
            goto LABEL_32;
          }

          sub_26A0E48F0(v54, &qword_28036C880, &unk_26A425E30);
        }

        else
        {
          OUTLINED_FUNCTION_59(&a18);
          OUTLINED_FUNCTION_144(v75, v76);
          OUTLINED_FUNCTION_28(v54 + v68);
          if (v77)
          {

            sub_26A0E48F0(v85, &qword_28036C880, &unk_26A425E30);
            sub_26A0E49F0();
LABEL_32:
            sub_26A0E48F0(v54, &qword_28036C878, &unk_26A4405C0);
LABEL_33:

LABEL_34:
            sub_26A0E49F0();
            OUTLINED_FUNCTION_109();
            sub_26A0E49F0();
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_89(&a17);
          sub_26A0E4948();

          OUTLINED_FUNCTION_98();
          static _ProtoResponse.Component.== infix(_:_:)();
          v79 = v78;
          sub_26A0E49F0();
          sub_26A0E48F0(v85, &qword_28036C880, &unk_26A425E30);
          v55 = v85;
          sub_26A0E49F0();
          sub_26A0E48F0(v54, &qword_28036C880, &unk_26A425E30);
          if ((v79 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v20 = v81;
      }

      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v80);
      if ((sub_26A424B64() & 1) == 0)
      {
        goto LABEL_34;
      }

      ++v52;
      sub_26A0E49F0();
      OUTLINED_FUNCTION_168();
      sub_26A0E49F0();
      if (v52 == v51)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_35:
    OUTLINED_FUNCTION_75();
  }
}

void sub_26A0D98B4()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_147();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_122();
  v11 = *(v5 + 16);
  if (v11 == *(v3 + 16) && v11 && v5 != v3)
  {
    OUTLINED_FUNCTION_20(v10);
    v13 = v5 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_69();
      sub_26A0E499C();
      OUTLINED_FUNCTION_106();
      sub_26A0E499C();
      v17 = OUTLINED_FUNCTION_103();
      v18 = v1(v17);
      OUTLINED_FUNCTION_44();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_135();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v14 += v16;
      v13 += v16;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A0D9A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for _ProtoCommand.OneOf_Value(0);
  v30 = OUTLINED_FUNCTION_12(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  v34 = OUTLINED_FUNCTION_41(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v41);
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C860, &unk_26A425E10);
  v42 = OUTLINED_FUNCTION_12(v306);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_120();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_48();
  v47 = OUTLINED_FUNCTION_35(v46);
  v309 = type metadata accessor for _ProtoCommand(v47);
  v48 = OUTLINED_FUNCTION_12(v309);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  v54 = OUTLINED_FUNCTION_41(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v58);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C870, &unk_26A425E20);
  v59 = OUTLINED_FUNCTION_12(v307);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_48();
  v64 = OUTLINED_FUNCTION_35(v63);
  v65 = type metadata accessor for _ProtoActionElement(v64);
  v66 = OUTLINED_FUNCTION_24(v65);
  v312 = v67;
  v313 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_8();
  v314 = v70;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  v317 = v72;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_47();
  v320 = v74;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_48();
  v322 = v76;
  OUTLINED_FUNCTION_45();
  v325 = type metadata accessor for _ProtoActionProperty();
  v77 = OUTLINED_FUNCTION_12(v325);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_8();
  v311 = v80;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_48();
  v319 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v84 = OUTLINED_FUNCTION_41(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v88);
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v89 = OUTLINED_FUNCTION_12(v323);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_8();
  v315 = v92;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_48();
  v321 = v94;
  v95 = OUTLINED_FUNCTION_45();
  v96 = type metadata accessor for _ProtoTextElement(v95);
  v97 = OUTLINED_FUNCTION_79_0(v96);
  v331 = v98;
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v101);
  v102 = OUTLINED_FUNCTION_84();
  v327 = type metadata accessor for _ProtoTextProperty(v102);
  v103 = OUTLINED_FUNCTION_24(v327);
  v324 = v104;
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_8();
  v328 = v107;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_47();
  v329 = v109;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_48();
  v316 = v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v112);
  v114 = *(v113 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_42();
  v318 = v116;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  OUTLINED_FUNCTION_12(v326);
  v118 = *(v117 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v119);
  v120 = OUTLINED_FUNCTION_36();
  v121 = type metadata accessor for _ProtoKeyValue_Standard.Pair(v120);
  v122 = OUTLINED_FUNCTION_10(v121);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_21();
  v330 = (v125 - v126);
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_147();
  v128 = *(v28 + 16);
  OUTLINED_FUNCTION_154();
  if (!v142 || !v131 || v28 == v26)
  {
    goto LABEL_210;
  }

  v288 = v39;
  v300 = v129;
  v289 = v29;
  OUTLINED_FUNCTION_20(v130);
  v132 = 0;
  v298 = v20;
  v296 = v21;
  v299 = v134;
  v295 = *(v133 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_62();
    sub_26A0E499C();
    if (v132 == v299)
    {
      __break(1u);
      goto LABEL_212;
    }

    v297 = v132;
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_51(&v325);
    v135 = v330;
    sub_26A0E499C();
    v136 = *(v300 + 24);
    v137 = *(v326 + 48);
    OUTLINED_FUNCTION_188(v20 + v136, v21);
    OUTLINED_FUNCTION_188(v135 + v136, v21 + v137);
    v138 = OUTLINED_FUNCTION_72();
    v139 = v327;
    OUTLINED_FUNCTION_19(v138, v140);
    if (v142)
    {
      OUTLINED_FUNCTION_9(v21 + v137);
      if (!v142)
      {
        goto LABEL_182;
      }

      sub_26A0E48F0(v21, &qword_28036C7B8, &unk_26A425BF0);
    }

    else
    {
      v141 = v318;
      OUTLINED_FUNCTION_188(v21, v318);
      OUTLINED_FUNCTION_9(v21 + v137);
      if (v142)
      {
        sub_26A0E49F0();
LABEL_182:
        sub_26A0E48F0(v21, &qword_28036C7D0, &qword_26A426DE0);
        goto LABEL_209;
      }

      v143 = v316;
      sub_26A0E4948();
      static _ProtoTextProperty.== infix(_:_:)(v141, v143);
      OUTLINED_FUNCTION_64();
      sub_26A0E49F0();
      v21 = v296;
      sub_26A0E49F0();
      sub_26A0E48F0(v296, &qword_28036C7B8, &unk_26A425BF0);
      if ((v139 & 1) == 0)
      {
        goto LABEL_209;
      }
    }

    v144 = *v20;
    v145 = *v330;
    v146 = *(*v20 + 16);
    if (v146 != *(*v330 + 16))
    {
      goto LABEL_209;
    }

    if (v146 && v144 != v145)
    {
      break;
    }

LABEL_177:
    v275 = *(v300 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v276);
    v277 = OUTLINED_FUNCTION_117();
    v20 = v298;
    sub_26A0E49F0();
    OUTLINED_FUNCTION_125();
    sub_26A0E49F0();
    if (v277)
    {
      v132 = v297 + 1;
      if (v297 + 1 != v299)
      {
        continue;
      }
    }

    goto LABEL_210;
  }

  OUTLINED_FUNCTION_22(v324);
  v293 = v22;
  v292 = v144;
  v291 = v145;
  v290 = v148;
  while (1)
  {
    if (v147 >= *(v144 + 16))
    {
      goto LABEL_216;
    }

    OUTLINED_FUNCTION_101();
    v150 = v149;
    v151 = v329;
    sub_26A0E499C();
    v294 = v150;
    if (v150 >= *(v145 + 16))
    {
LABEL_217:
      __break(1u);
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_51(&v321);
    v152 = v328;
    sub_26A0E499C();
    v153 = *v151;
    v154 = *v152;
    OUTLINED_FUNCTION_121();
    if (!v142)
    {
      goto LABEL_208;
    }

    if (v152 && v153 != v154)
    {
      OUTLINED_FUNCTION_22(v331);
      if (*(v153 + 16))
      {
        v155 = *(v331 + 72);
        OUTLINED_FUNCTION_7();
        sub_26A0E499C();
        if (*(v154 + 16))
        {
          sub_26A0E499C();
          v156 = OUTLINED_FUNCTION_152();
          static _ProtoTextElement.== infix(_:_:)(v156, v157);
          OUTLINED_FUNCTION_5();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_145();
          goto LABEL_208;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_193:
      sub_26A0E49F0();
LABEL_194:
      sub_26A0E48F0(v144, &qword_28036C860, &unk_26A425E10);
      OUTLINED_FUNCTION_81();
LABEL_195:
      sub_26A0E49F0();
      OUTLINED_FUNCTION_135();
      v280 = &qword_28036C868;
      v281 = &qword_26A42D090;
LABEL_196:
      sub_26A0E48F0(v154, v280, v281);
      goto LABEL_197;
    }

    if (*(v329 + 8) != *(v328 + 8))
    {
      goto LABEL_208;
    }

    v158 = v327[8];
    v159 = OUTLINED_FUNCTION_173();
    v160 = v321;
    v161 = &off_26A427400;
    sub_26A0E4894(v159, v321, &off_28036C7C0, &off_26A427400);
    sub_26A0E4894(v328 + v158, v152 + v160, &off_28036C7C0, &off_26A427400);
    v162 = v325;
    OUTLINED_FUNCTION_37(v160, 1, v325);
    if (!v142)
    {
      break;
    }

    OUTLINED_FUNCTION_23(v152 + v160);
    if (!v142)
    {
      goto LABEL_184;
    }

    v163 = OUTLINED_FUNCTION_167();
    sub_26A0E48F0(v163, v164, &off_26A427400);
LABEL_101:
    v217 = v327[9];
    v214 = OUTLINED_FUNCTION_173();
    v215 = v315;
    sub_26A0E4894(v214, v315, &off_28036C7C0, &off_26A427400);
    sub_26A0E4894(v328 + v217, v152 + v215, &off_28036C7C0, &off_26A427400);
    v216 = OUTLINED_FUNCTION_107();
    LOBYTE(v217) = v325;
    OUTLINED_FUNCTION_19(v216, v218);
    if (v142)
    {
      OUTLINED_FUNCTION_9(v152 + v215);
      if (!v142)
      {
        goto LABEL_186;
      }

      v219 = OUTLINED_FUNCTION_105();
      sub_26A0E48F0(v219, v220, &off_26A427400);
      goto LABEL_174;
    }

    OUTLINED_FUNCTION_148(&a16);
    sub_26A0E4894(v221, v222, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_9(v152 + v215);
    if (v223)
    {
      sub_26A0E49F0();
LABEL_186:
      v278 = &qword_28036C7C8;
      v279 = &qword_26A425C00;
LABEL_206:
      v285 = v215;
      goto LABEL_207;
    }

    v224 = v311;
    sub_26A0E4948();
    v225 = *v224;
    v226 = *(*v161 + 2);
    v227 = v317;
    if (v226 != *(*v224 + 16))
    {
      goto LABEL_205;
    }

    if (v226 && *v161 != v225)
    {
      v217 = 0;
      OUTLINED_FUNCTION_22(v312);
      v286 = v225;
      do
      {
        if (v217 >= *(v228 + 16))
        {
          goto LABEL_220;
        }

        v229 = *(v312 + 72) * v217;
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_51(&v310);
        sub_26A0E499C();
        v230 = v217 >= *(v225 + 16);
        v231 = v309;
        v232 = v303;
        if (v230)
        {
          goto LABEL_221;
        }

        OUTLINED_FUNCTION_51(&v309);
        v233 = v314;
        sub_26A0E499C();
        v234 = *(v313 + 28);
        OUTLINED_FUNCTION_86(&a15);
        OUTLINED_FUNCTION_128(&a13);
        sub_26A0E4894(v235, v236, &qword_28036C868, &qword_26A42D090);
        v237 = v233 + v234;
        v217 = v227;
        OUTLINED_FUNCTION_186(v237, v227 + v229);
        OUTLINED_FUNCTION_23(v227);
        if (v142)
        {
          OUTLINED_FUNCTION_23(v227 + v229);
          if (!v142)
          {
            goto LABEL_190;
          }

          sub_26A0E48F0(v227, &qword_28036C868, &qword_26A42D090);
        }

        else
        {
          OUTLINED_FUNCTION_186(v227, v303);
          OUTLINED_FUNCTION_23(v227 + v229);
          if (v238)
          {
            sub_26A0E49F0();
LABEL_190:
            v282 = &qword_28036C870;
            v283 = &unk_26A425E20;
            v284 = v227;
LABEL_203:
            sub_26A0E48F0(v284, v282, v283);
            goto LABEL_204;
          }

          OUTLINED_FUNCTION_164(&v332);
          sub_26A0E4948();
          OUTLINED_FUNCTION_86(&a14);
          OUTLINED_FUNCTION_129(&v319);
          sub_26A0E4894(v239, v240, &qword_28036C858, &dword_26A42D080);
          OUTLINED_FUNCTION_186(v227, v231 + v229);
          v241 = OUTLINED_FUNCTION_116();
          v217 = v289;
          OUTLINED_FUNCTION_19(v241, v242);
          if (v142)
          {
            OUTLINED_FUNCTION_9(v231 + v229);
            if (!v142)
            {
              goto LABEL_201;
            }

            v243 = OUTLINED_FUNCTION_115();
            sub_26A0E48F0(v243, v244, &dword_26A42D080);
            OUTLINED_FUNCTION_153();
          }

          else
          {
            v232 = v288;
            OUTLINED_FUNCTION_186(v231, v288);
            OUTLINED_FUNCTION_9(v231 + v229);
            if (v245)
            {
              sub_26A0E49F0();
LABEL_201:
              sub_26A0E48F0(v231, &qword_28036C860, &unk_26A425E10);
LABEL_202:
              sub_26A0E49F0();
              sub_26A0E49F0();
              v282 = &qword_28036C868;
              v283 = &qword_26A42D090;
              v284 = v305;
              goto LABEL_203;
            }

            sub_26A0E4948();
            OUTLINED_FUNCTION_106();
            static _ProtoCommand.OneOf_Value.== infix(_:_:)();
            OUTLINED_FUNCTION_13();
            sub_26A0E49F0();
            OUTLINED_FUNCTION_105();
            sub_26A0E49F0();
            v246 = OUTLINED_FUNCTION_132();
            sub_26A0E48F0(v246, v247, &dword_26A42D080);
            OUTLINED_FUNCTION_153();
            if ((v289 & 1) == 0)
            {
              goto LABEL_202;
            }
          }

          v248 = v232[5];
          v249 = *(v303 + v248);
          OUTLINED_FUNCTION_160(v248);
          if (!v142)
          {
            goto LABEL_202;
          }

          v250 = v232[6];
          v251 = *(v303 + v250);
          OUTLINED_FUNCTION_160(v250);
          if (!v142)
          {
            goto LABEL_202;
          }

          v229 = v232[7];
          sub_26A424794();
          OUTLINED_FUNCTION_0();
          sub_26A0E4A44(qword_2815792E0, v252);
          OUTLINED_FUNCTION_117();
          OUTLINED_FUNCTION_6();
          sub_26A0E49F0();
          sub_26A0E49F0();
          sub_26A0E48F0(v305, &qword_28036C868, &qword_26A42D090);
          if ((v289 & 1) == 0)
          {
            goto LABEL_204;
          }
        }

        v253 = *v317;
        v254 = *v314;
        OUTLINED_FUNCTION_121();
        if (!v142)
        {
          goto LABEL_204;
        }

        if (v229 && v253 != v254)
        {
          OUTLINED_FUNCTION_22(v331);
          if (!*(v253 + 16))
          {
            goto LABEL_214;
          }

          v255 = *(v331 + 72);
          OUTLINED_FUNCTION_7();
          sub_26A0E499C();
          if (*(v254 + 16))
          {
            sub_26A0E499C();
            v256 = OUTLINED_FUNCTION_152();
            static _ProtoTextElement.== infix(_:_:)(v256, v257);
            OUTLINED_FUNCTION_5();
            sub_26A0E49F0();
            OUTLINED_FUNCTION_145();
LABEL_204:
            sub_26A0E49F0();
            sub_26A0E49F0();
            v215 = v315;
            goto LABEL_205;
          }

LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        v258 = v317[1];
        v259 = v314[1];
        OUTLINED_FUNCTION_80();
        if (!v142)
        {
          goto LABEL_204;
        }

        if (v260 && v261 != v262)
        {
          v263 = (v261 + 32);
          v264 = (v262 + 40);
          do
          {
            v266 = *v263;
            v263 += 2;
            v265 = v266;
            v267 = *(v264 - 1);
            if (*v264 == 1)
            {
              switch(v267)
              {
                case 1:
                  if (v265 != 1)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_148;
                case 2:
                  if (v265 != 2)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_148;
                case 3:
                  if (v265 != 3)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_148;
                case 4:
                  if (v265 != 4)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_148;
                case 5:
                  if (v265 != 5)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_148;
                case 6:
                  if (v265 != 6)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_148;
                case 7:
                  if (v265 != 7)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_148;
                case 8:
                  if (v265 != 8)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_148;
                default:
                  if (v265)
                  {
                    goto LABEL_204;
                  }

                  goto LABEL_148;
              }
            }

            if (v265 != v267)
            {
              goto LABEL_204;
            }

LABEL_148:
            v264 += 16;
          }

          while (--v260);
        }

        OUTLINED_FUNCTION_99(v313);
        OUTLINED_FUNCTION_0();
        sub_26A0E4A44(qword_2815792E0, v268);
        v269 = v317;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_3();
        v227 = v269;
        sub_26A0E49F0();
        OUTLINED_FUNCTION_88();
        sub_26A0E49F0();
        v161 = v308;
        v215 = v315;
        v225 = v286;
        if ((v217 & 1) == 0)
        {
          goto LABEL_205;
        }

        OUTLINED_FUNCTION_163(&v311);
      }

      while (v217 != v270);
    }

    v271 = v161[1] == v311[1] && v161[2] == v311[2];
    if (!v271 && (sub_26A425354() & 1) == 0)
    {
LABEL_205:
      sub_26A0E49F0();
      OUTLINED_FUNCTION_135();
      v278 = &off_28036C7C0;
      v279 = &off_26A427400;
      goto LABEL_206;
    }

    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v272);
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_4();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_88();
    sub_26A0E49F0();
    sub_26A0E48F0(v215, &off_28036C7C0, &off_26A427400);
    if ((v217 & 1) == 0)
    {
      goto LABEL_208;
    }

LABEL_174:
    if (*(v329 + 9) != *(v328 + 9))
    {
      goto LABEL_208;
    }

    v273 = v327[7];
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v274);
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_64();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_88();
    sub_26A0E49F0();
    v22 = v293;
    v21 = v296;
    v144 = v292;
    v145 = v291;
    if ((v217 & 1) == 0)
    {
      goto LABEL_209;
    }

    v147 = v294 + 1;
    if (v294 + 1 == v290)
    {
      goto LABEL_177;
    }
  }

  v165 = v310;
  sub_26A0E4894(v160, v310, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_23(v152 + v160);
  if (v166)
  {
    sub_26A0E49F0();
LABEL_184:
    v278 = &qword_28036C7C8;
    v279 = &qword_26A425C00;
    goto LABEL_199;
  }

  v167 = v319;
  sub_26A0E4948();
  v168 = *(*v165 + 16);
  v169 = v322;
  if (v168 != *(*v167 + 16))
  {
    goto LABEL_198;
  }

  if (!v168 || *v165 == *v167)
  {
LABEL_95:
    v212 = v165[1] == *(v319 + 8) && v165[2] == *(v319 + 16);
    if (!v212 && (sub_26A425354() & 1) == 0)
    {
      goto LABEL_198;
    }

    v152 = *(v162 + 24);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v213);
    v161 = &off_28036C7C0;
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_4();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_105();
    sub_26A0E49F0();
    sub_26A0E48F0(v160, &off_28036C7C0, &off_26A427400);
    if ((v158 & 1) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_101;
  }

  v158 = 0;
  OUTLINED_FUNCTION_22(v312);
  v287 = v171;
  while (1)
  {
    if (v158 >= *(v170 + 16))
    {
      goto LABEL_218;
    }

    v172 = *(v312 + 72) * v158;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_51(&v309);
    sub_26A0E499C();
    v144 = v306;
    v173 = v309;
    v154 = v304;
    if (v158 >= *(v287 + 16))
    {
      goto LABEL_219;
    }

    OUTLINED_FUNCTION_51(&v308);
    v174 = v320;
    sub_26A0E499C();
    v175 = *(v313 + 28);
    OUTLINED_FUNCTION_86(&a15);
    sub_26A0E4894(v169 + v175, v304, &qword_28036C868, &qword_26A42D090);
    v176 = v174 + v175;
    v158 = &qword_26A42D090;
    sub_26A0E4894(v176, v304 + v172, &qword_28036C868, &qword_26A42D090);
    OUTLINED_FUNCTION_37(v304, 1, v173);
    if (v142)
    {
      OUTLINED_FUNCTION_37(v304 + v172, 1, v173);
      if (!v142)
      {
        goto LABEL_188;
      }

      v177 = OUTLINED_FUNCTION_171();
      sub_26A0E48F0(v177, v178, &qword_26A42D090);
    }

    else
    {
      OUTLINED_FUNCTION_148(&a11);
      sub_26A0E4894(v179, v180, &qword_28036C868, &qword_26A42D090);
      OUTLINED_FUNCTION_37(v304 + v172, 1, v173);
      if (v181)
      {
        sub_26A0E49F0();
LABEL_188:
        v280 = &qword_28036C870;
        v281 = &unk_26A425E20;
        goto LABEL_196;
      }

      OUTLINED_FUNCTION_164(&a10);
      sub_26A0E4948();
      v182 = *(v306 + 48);
      OUTLINED_FUNCTION_129(&v331);
      sub_26A0E4894(v183, v184, &qword_28036C858, &dword_26A42D080);
      sub_26A0E4894(&qword_26A42D090, v306 + v182, &qword_28036C858, &dword_26A42D080);
      v185 = OUTLINED_FUNCTION_116();
      v158 = v289;
      OUTLINED_FUNCTION_19(v185, v186);
      if (v142)
      {
        OUTLINED_FUNCTION_9(v306 + v182);
        if (!v142)
        {
          goto LABEL_194;
        }

        v187 = OUTLINED_FUNCTION_180();
        sub_26A0E48F0(v187, v188, &dword_26A42D080);
        OUTLINED_FUNCTION_81();
      }

      else
      {
        sub_26A0E4894(v306, v301, &qword_28036C858, &dword_26A42D080);
        OUTLINED_FUNCTION_9(v306 + v182);
        if (v189)
        {
          goto LABEL_193;
        }

        sub_26A0E4948();
        OUTLINED_FUNCTION_167();
        static _ProtoCommand.OneOf_Value.== infix(_:_:)();
        OUTLINED_FUNCTION_13();
        sub_26A0E49F0();
        OUTLINED_FUNCTION_166();
        sub_26A0E49F0();
        sub_26A0E48F0(v302, &qword_28036C858, &dword_26A42D080);
        OUTLINED_FUNCTION_81();
        if ((v289 & 1) == 0)
        {
          goto LABEL_195;
        }
      }

      v190 = v173[5];
      v191 = *(&dword_26A42D080 + v190);
      OUTLINED_FUNCTION_160(v190);
      if (!v142)
      {
        goto LABEL_195;
      }

      v192 = v173[6];
      v193 = *(&dword_26A42D080 + v192);
      OUTLINED_FUNCTION_160(v192);
      if (!v142)
      {
        goto LABEL_195;
      }

      v172 = v173[7];
      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v194);
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_6();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_88();
      sub_26A0E49F0();
      sub_26A0E48F0(v304, &qword_28036C868, &qword_26A42D090);
      if ((v289 & 1) == 0)
      {
        goto LABEL_197;
      }
    }

    v195 = *v322;
    v196 = *v320;
    OUTLINED_FUNCTION_121();
    if (!v142)
    {
      goto LABEL_197;
    }

    if (v172 && v195 != v196)
    {
      OUTLINED_FUNCTION_22(v331);
      if (*(v195 + 16))
      {
        v197 = *(v331 + 72);
        OUTLINED_FUNCTION_7();
        sub_26A0E499C();
        if (*(v196 + 16))
        {
          sub_26A0E499C();
          v198 = OUTLINED_FUNCTION_152();
          static _ProtoTextElement.== infix(_:_:)(v198, v199);
          OUTLINED_FUNCTION_5();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_145();
          goto LABEL_197;
        }

LABEL_213:
        __break(1u);
        __break(1u);
LABEL_214:
        __break(1u);
        goto LABEL_215;
      }

LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v200 = v322[1];
    v201 = v320[1];
    OUTLINED_FUNCTION_80();
    if (!v142)
    {
      goto LABEL_197;
    }

    if (v202 && v203 != v204)
    {
      break;
    }

LABEL_93:
    OUTLINED_FUNCTION_99(v313);
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v210);
    v169 = v322;
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_3();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_88();
    sub_26A0E49F0();
    v165 = v310;
    v160 = v321;
    v162 = v325;
    if ((v158 & 1) == 0)
    {
      goto LABEL_198;
    }

    OUTLINED_FUNCTION_163(&v311);
    if (v158 == v211)
    {
      goto LABEL_95;
    }
  }

  v205 = (v203 + 32);
  v206 = (v204 + 40);
  while (1)
  {
    v208 = *v205;
    v205 += 2;
    v207 = v208;
    v209 = *(v206 - 1);
    if (*v206 == 1)
    {
      switch(v209)
      {
        case 1:
          if (v207 != 1)
          {
            goto LABEL_197;
          }

          goto LABEL_75;
        case 2:
          if (v207 != 2)
          {
            goto LABEL_197;
          }

          goto LABEL_75;
        case 3:
          if (v207 != 3)
          {
            goto LABEL_197;
          }

          goto LABEL_75;
        case 4:
          if (v207 != 4)
          {
            goto LABEL_197;
          }

          goto LABEL_75;
        case 5:
          if (v207 != 5)
          {
            goto LABEL_197;
          }

          goto LABEL_75;
        case 6:
          if (v207 != 6)
          {
            goto LABEL_197;
          }

          goto LABEL_75;
        case 7:
          if (v207 != 7)
          {
            goto LABEL_197;
          }

          goto LABEL_75;
        case 8:
          if (v207 != 8)
          {
            goto LABEL_197;
          }

          goto LABEL_75;
        default:
          if (v207)
          {
            goto LABEL_197;
          }

          goto LABEL_75;
      }
    }

    if (v207 != v209)
    {
      break;
    }

LABEL_75:
    v206 += 16;
    if (!--v202)
    {
      goto LABEL_93;
    }
  }

LABEL_197:
  sub_26A0E49F0();
  sub_26A0E49F0();
  v160 = v321;
LABEL_198:
  sub_26A0E49F0();
  OUTLINED_FUNCTION_66();
  sub_26A0E49F0();
  v278 = &off_28036C7C0;
  v279 = &off_26A427400;
LABEL_199:
  v285 = v160;
LABEL_207:
  sub_26A0E48F0(v285, v278, v279);
LABEL_208:
  sub_26A0E49F0();
  sub_26A0E49F0();
LABEL_209:
  sub_26A0E49F0();
  OUTLINED_FUNCTION_44();
  sub_26A0E49F0();
LABEL_210:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A0DB6A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return 0;
            }

            goto LABEL_10;
          case 2:
            if (v5 != 2)
            {
              return 0;
            }

            goto LABEL_10;
          case 3:
            if (v5 != 3)
            {
              return 0;
            }

            goto LABEL_10;
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_10;
          case 5:
            if (v5 != 5)
            {
              return 0;
            }

            goto LABEL_10;
          case 6:
            if (v5 != 6)
            {
              return 0;
            }

            goto LABEL_10;
          case 7:
            if (v5 != 7)
            {
              return 0;
            }

            goto LABEL_10;
          case 8:
            if (v5 != 8)
            {
              return 0;
            }

            goto LABEL_10;
          default:
            if (v5)
            {
              return 0;
            }

            goto LABEL_10;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_10:
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_26A0DB78C()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for _ProtoTextElement(0);
  v5 = OUTLINED_FUNCTION_79_0(v4);
  v45 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_178();
  v11 = type metadata accessor for _ProtoMultilineTextProperty.Line(v10);
  v12 = OUTLINED_FUNCTION_10(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - v20;
  v22 = *(v3 + 16);
  if (v22 == *(v1 + 16) && v22 && v3 != v1)
  {
    v23 = 0;
    OUTLINED_FUNCTION_20(v19);
    v40 = v17;
    v41 = v1 + v24;
    v42 = *(v25 + 72);
    v43 = v3 + v24;
    v38 = v11;
    v39 = v21;
    v37 = v22;
    while (1)
    {
      OUTLINED_FUNCTION_61();
      sub_26A0E499C();
      if (v23 == v22)
      {
        break;
      }

      v44 = v23;
      OUTLINED_FUNCTION_61();
      sub_26A0E499C();
      v26 = *v21;
      v27 = *v17;
      v28 = *(*v21 + 16);
      if (v28 != *(v27 + 16))
      {
LABEL_18:
        sub_26A0E49F0();
        sub_26A0E49F0();
        goto LABEL_19;
      }

      if (v28 && v26 != v27)
      {
        v29 = 0;
        OUTLINED_FUNCTION_22(v45);
        while (v29 < *(v26 + 16))
        {
          v30 = *(v45 + 72) * v29;
          OUTLINED_FUNCTION_7();
          sub_26A0E499C();
          if (v29 >= *(v27 + 16))
          {
            goto LABEL_21;
          }

          sub_26A0E499C();
          v31 = OUTLINED_FUNCTION_125();
          static _ProtoTextElement.== infix(_:_:)(v31, v32);
          OUTLINED_FUNCTION_5();
          sub_26A0E49F0();
          sub_26A0E49F0();
          if ((v30 & 1) == 0)
          {
            goto LABEL_18;
          }

          if (v28 == ++v29)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        break;
      }

LABEL_14:
      v33 = *(v38 + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v34);
      v21 = v39;
      v17 = v40;
      v35 = sub_26A424B64();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_161();
      sub_26A0E49F0();
      if (v35)
      {
        v23 = v44 + 1;
        v22 = v37;
        if (v44 + 1 != v37)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_75();
  }
}

void sub_26A0DBACC()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_53();
  v4 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(v3);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C908, &qword_26A4347E0);
  OUTLINED_FUNCTION_12(v67);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42();
  v64 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v70 = type metadata accessor for _ProtoImageElement.Source(0);
  v25 = OUTLINED_FUNCTION_10(v70);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_21();
  v71 = v28 - v29;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_83();
  v32 = *(v1 + 16);
  if (v32 != *(v0 + 16) || !v32 || v1 == v0)
  {
    goto LABEL_21;
  }

  v59 = v10;
  v60 = v21;
  v62 = v2;
  v63 = v4;
  OUTLINED_FUNCTION_20(v31);
  v34 = v1 + v33;
  v35 = v0 + v33;
  v37 = *(v36 + 72);
  v65 = v24;
  v66 = v37;
  v38 = v64;
  while (1)
  {
    OUTLINED_FUNCTION_180();
    sub_26A0E499C();
    v39 = v71;
    sub_26A0E499C();
    v40 = *(v70 + 20);
    v41 = *(v2 + v40);
    v42 = *(v39 + v40);
    if (v41 == v42)
    {
      goto LABEL_14;
    }

    v68 = v34;
    v43 = v38;
    v44 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
    OUTLINED_FUNCTION_142();
    sub_26A0E4894(v41 + v44, v24, &qword_28036C910, &unk_26A425EC0);
    v45 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
    OUTLINED_FUNCTION_142();
    v46 = *(v67 + 48);
    v47 = OUTLINED_FUNCTION_168();
    sub_26A0E4894(v47, v48, &qword_28036C910, &unk_26A425EC0);
    sub_26A0E4894(v42 + v45, v43 + v46, &qword_28036C910, &unk_26A425EC0);
    v49 = OUTLINED_FUNCTION_155();
    OUTLINED_FUNCTION_37(v49, v50, v63);
    v69 = v41;
    if (v55)
    {

      v51 = OUTLINED_FUNCTION_166();
      sub_26A0E48F0(v51, v52, &unk_26A425EC0);
      OUTLINED_FUNCTION_28(v43 + v46);
      v2 = v62;
      v38 = v43;
      if (!v55)
      {
        goto LABEL_18;
      }

      v53 = OUTLINED_FUNCTION_133();
      sub_26A0E48F0(v53, v54, &unk_26A425EC0);
      goto LABEL_13;
    }

    sub_26A0E4894(v43, v60, &qword_28036C910, &unk_26A425EC0);
    OUTLINED_FUNCTION_28(v43 + v46);
    if (v55)
    {
      break;
    }

    sub_26A0E4948();

    OUTLINED_FUNCTION_105();
    static _ProtoImageElement.Source.OneOf_Value.== infix(_:_:)();
    v61 = v56;
    v57 = v64;
    sub_26A0E49F0();
    sub_26A0E48F0(v65, &qword_28036C910, &unk_26A425EC0);
    OUTLINED_FUNCTION_66();
    v38 = v57;
    sub_26A0E49F0();
    sub_26A0E48F0(v57, &qword_28036C910, &unk_26A425EC0);
    v2 = v62;
    if ((v61 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:

    v24 = v65;
    v34 = v68;
LABEL_14:
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v58);
    if ((sub_26A424B64() & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_26A0E49F0();
    OUTLINED_FUNCTION_109();
    sub_26A0E49F0();
    v35 += v66;
    v34 += v66;
    if (!--v32)
    {
      goto LABEL_21;
    }
  }

  sub_26A0E48F0(v65, &qword_28036C910, &unk_26A425EC0);
  sub_26A0E49F0();
  v38 = v43;
LABEL_18:
  sub_26A0E48F0(v38, &qword_28036C908, &qword_26A4347E0);
LABEL_19:

LABEL_20:
  sub_26A0E49F0();
  OUTLINED_FUNCTION_109();
  sub_26A0E49F0();
LABEL_21:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A0DBFF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26A425354() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_26A0DC07C()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = v4;
  v107 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for MapItems.MapAnnotationItem(0);
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_147();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_122();
  v12 = *(v5 + 16);
  if (v12 == *(v3 + 16) && v12 && v5 != v3)
  {
    OUTLINED_FUNCTION_20(v11);
    v14 = v5 + v13;
    v15 = v3 + v13;
    v96 = *(v16 + 72);
    v97 = v17;
    do
    {
      OUTLINED_FUNCTION_115();
      sub_26A0E499C();
      v98 = v15;
      v99 = v14;
      sub_26A0E499C();
      if (*v1 != *v0 || v1[1] != v0[1] || ((v18 = *(v97 + 24), v19 = v1 + v18, v20 = v0 + v18, *(v1 + v18) == *(v0 + v18)) ? (v21 = *(v1 + v18 + 8) == *(v0 + v18 + 8)) : (v21 = 0), !v21 && (sub_26A425354() & 1) == 0 || (*(v19 + 2) == *(v20 + 2) ? (v22 = *(v19 + 3) == *(v20 + 3)) : (v22 = 0), !v22 && (sub_26A425354() & 1) == 0)))
      {
LABEL_96:
        sub_26A0E49F0();
        OUTLINED_FUNCTION_135();
        break;
      }

      v23 = *(v19 + 4);
      v24 = *(v19 + 5);
      v25 = v24 >> 62;
      v27 = *(v20 + 4);
      v26 = *(v20 + 5);
      v28 = v26 >> 62;
      if (v22)
      {
        if (v23)
        {
          v29 = 0;
        }

        else
        {
          v29 = v24 == 0xC000000000000000;
        }

        v31 = 0;
        v30 = v29 && v26 >> 62 == 3;
        if (v30 && !v27 && v26 == 0xC000000000000000)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v31 = 0;
        switch(v25)
        {
          case 0uLL:
            v31 = BYTE6(v24);
            break;
          case 1uLL:
            if (__OFSUB__(HIDWORD(v23), v23))
            {
              goto LABEL_100;
            }

            v31 = HIDWORD(v23) - v23;
            break;
          case 2uLL:
            v33 = *(v23 + 16);
            v32 = *(v23 + 24);
            v34 = __OFSUB__(v32, v33);
            v31 = v32 - v33;
            if (!v34)
            {
              break;
            }

            goto LABEL_101;
          case 3uLL:
            break;
          default:
            goto LABEL_112;
        }
      }

      switch(v28)
      {
        case 1uLL:
          LODWORD(v35) = HIDWORD(v27) - v27;
          if (__OFSUB__(HIDWORD(v27), v27))
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
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
          }

          v35 = v35;
LABEL_44:
          if (v31 != v35)
          {
            goto LABEL_96;
          }

          if (v31 >= 1)
          {
            switch(v25)
            {
              case 1:
                if (v23 >> 32 < v23)
                {
                  goto LABEL_102;
                }

                v93 = v23;
                v63 = OUTLINED_FUNCTION_50();
                sub_26A0E45C0(v63, v64);
                v65 = OUTLINED_FUNCTION_50();
                sub_26A0E45C0(v65, v66);
                v67 = OUTLINED_FUNCTION_50();
                sub_26A0E45C0(v67, v68);
                v69 = sub_26A424474();
                if (v69)
                {
                  v70 = v69;
                  v71 = sub_26A424494();
                  if (__OFSUB__(v93, v71))
                  {
                    goto LABEL_105;
                  }

                  v91 = (v93 - v71 + v70);
                }

                else
                {
                  v91 = 0;
                }

LABEL_71:
                sub_26A424484();
                sub_26A0E4618(v91, v27, v26, v106);
                v72 = OUTLINED_FUNCTION_50();
                sub_26A0E4784(v72, v73);
                v74 = OUTLINED_FUNCTION_50();
                sub_26A0E4784(v74, v75);
                v76 = OUTLINED_FUNCTION_50();
                sub_26A0E4784(v76, v77);
                if ((v106[0] & 1) == 0)
                {
                  goto LABEL_96;
                }

                goto LABEL_84;
              case 2:
                v92 = *(v23 + 24);
                v94 = *(v23 + 16);
                v45 = OUTLINED_FUNCTION_50();
                sub_26A0E45C0(v45, v46);
                v47 = OUTLINED_FUNCTION_50();
                sub_26A0E45C0(v47, v48);
                v49 = OUTLINED_FUNCTION_50();
                sub_26A0E45C0(v49, v50);
                v51 = sub_26A424474();
                if (v51)
                {
                  v52 = v51;
                  v53 = sub_26A424494();
                  v54 = v94;
                  if (__OFSUB__(v94, v53))
                  {
                    goto LABEL_104;
                  }

                  v91 = (v94 - v53 + v52);
                }

                else
                {
                  v91 = 0;
                  v54 = v94;
                }

                if (!__OFSUB__(v92, v54))
                {
                  goto LABEL_71;
                }

                goto LABEL_103;
              case 3:
                memset(v106, 0, 14);
                v55 = OUTLINED_FUNCTION_50();
                sub_26A0E45C0(v55, v56);
                v57 = OUTLINED_FUNCTION_50();
                sub_26A0E45C0(v57, v58);
                sub_26A0E4618(v106, v27, v26, &v100);
                v59 = OUTLINED_FUNCTION_50();
                sub_26A0E4784(v59, v60);
                v61 = OUTLINED_FUNCTION_50();
                sub_26A0E4784(v61, v62);
                if ((v100 & 1) == 0)
                {
                  goto LABEL_96;
                }

                goto LABEL_84;
              default:
                v106[0] = *(v19 + 4);
                LOBYTE(v106[1]) = BYTE2(v23);
                HIBYTE(v106[1]) = BYTE3(v23);
                LOBYTE(v106[2]) = BYTE4(v23);
                HIBYTE(v106[2]) = BYTE5(v23);
                LOBYTE(v106[3]) = BYTE6(v23);
                HIBYTE(v106[3]) = HIBYTE(v23);
                v106[4] = v24;
                LOBYTE(v106[5]) = BYTE2(v24);
                HIBYTE(v106[5]) = BYTE3(v24);
                LOBYTE(v106[6]) = BYTE4(v24);
                HIBYTE(v106[6]) = BYTE5(v24);
                if (v28)
                {
                  if (v28 == 1)
                  {
                    v38 = v27 >> 32;
                    if (v27 >> 32 < v27)
                    {
                      goto LABEL_106;
                    }

                    v39 = OUTLINED_FUNCTION_50();
                    sub_26A0E45C0(v39, v40);
                    v41 = sub_26A424474();
                    if (v41)
                    {
                      v42 = sub_26A424494();
                      if (__OFSUB__(v27, v42))
                      {
                        goto LABEL_109;
                      }

                      v41 += v27 - v42;
                    }

                    v43 = sub_26A424484();
                    if (!v41)
                    {
                      goto LABEL_111;
                    }

                    if (v43 >= v38 - v27)
                    {
                      v44 = v38 - v27;
                    }

                    else
                    {
                      v44 = v43;
                    }
                  }

                  else
                  {
                    v78 = *(v27 + 16);
                    v95 = *(v27 + 24);
                    v79 = OUTLINED_FUNCTION_50();
                    sub_26A0E45C0(v79, v80);
                    v41 = sub_26A424474();
                    if (v41)
                    {
                      v81 = sub_26A424494();
                      if (__OFSUB__(v78, v81))
                      {
                        goto LABEL_108;
                      }

                      v41 += v78 - v81;
                    }

                    v34 = __OFSUB__(v95, v78);
                    v82 = v95 - v78;
                    if (v34)
                    {
                      goto LABEL_107;
                    }

                    v83 = sub_26A424484();
                    if (!v41)
                    {
                      __break(1u);
LABEL_111:
                      __break(1u);
LABEL_112:
                      JUMPOUT(0);
                    }

                    if (v83 >= v82)
                    {
                      v44 = v82;
                    }

                    else
                    {
                      v44 = v83;
                    }
                  }

                  v84 = memcmp(v106, v41, v44);
                  v85 = OUTLINED_FUNCTION_50();
                  sub_26A0E4784(v85, v86);
                  if (v84)
                  {
                    goto LABEL_96;
                  }
                }

                else
                {
                  v100 = v27;
                  v101 = v26;
                  v102 = BYTE2(v26);
                  v103 = BYTE3(v26);
                  v104 = BYTE4(v26);
                  v105 = BYTE5(v26);
                  if (memcmp(v106, &v100, BYTE6(v26)))
                  {
                    goto LABEL_96;
                  }
                }

                break;
            }
          }

          break;
        case 2uLL:
          v37 = *(v27 + 16);
          v36 = *(v27 + 24);
          v34 = __OFSUB__(v36, v37);
          v35 = v36 - v37;
          if (!v34)
          {
            goto LABEL_44;
          }

          goto LABEL_99;
        case 3uLL:
          if (v31)
          {
            goto LABEL_96;
          }

          break;
        default:
          v35 = BYTE6(v26);
          goto LABEL_44;
      }

LABEL_84:
      v87 = *(v19 + 6) == *(v20 + 6) && *(v19 + 7) == *(v20 + 7);
      if (!v87 && (sub_26A425354() & 1) == 0)
      {
        goto LABEL_96;
      }

      if (v19[64] != v20[64])
      {
        goto LABEL_96;
      }

      if (v19[65] != v20[65])
      {
        goto LABEL_96;
      }

      if (v19[66] != v20[66])
      {
        goto LABEL_96;
      }

      v88 = *(type metadata accessor for _ProtoCustomCanvas() + 44);
      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v89);
      if ((sub_26A424B64() & 1) == 0)
      {
        goto LABEL_96;
      }

      sub_26A0E49F0();
      sub_26A0E49F0();
      v15 = v98 + v96;
      v14 = v99 + v96;
      --v12;
    }

    while (v12);
  }

  v90 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_75();
}

void sub_26A0DC878()
{
  OUTLINED_FUNCTION_76();
  v5 = v4;
  v55 = v6;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_53();
  v10 = type metadata accessor for _ProtoColor.OneOf_Value(v9);
  v11 = OUTLINED_FUNCTION_12(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C918, &unk_26A42C5A0);
  OUTLINED_FUNCTION_41(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_38(v21);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C920, &unk_26A425ED0);
  OUTLINED_FUNCTION_12(v54);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_56();
  v53 = v8(0);
  v25 = OUTLINED_FUNCTION_10(v53);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_118();
  MEMORY[0x28223BE20](v28);
  v31 = (v47 - v30);
  v32 = *(v1 + 16);
  if (v32 == *(v0 + 16) && v32 && v1 != v0)
  {
    v47[1] = v16;
    OUTLINED_FUNCTION_20(v29);
    v34 = v1 + v33;
    v35 = v0 + v33;
    v48 = *(v36 + 72);
    v49 = v10;
    v50 = v5;
    v51 = v3;
    while (1)
    {
      sub_26A0E499C();
      sub_26A0E499C();
      if (*v31 != *v3 || v31[1] != v3[1])
      {
        break;
      }

      v37 = *(v53 + 24);
      v38 = v3 + v37;
      v39 = *(v54 + 48);
      v57 = v31 + v37;
      sub_26A0E4894(v31 + v37, v2, &qword_28036C918, &unk_26A42C5A0);
      v56 = v38;
      sub_26A0E4894(v38, v2 + v39, &qword_28036C918, &unk_26A42C5A0);
      OUTLINED_FUNCTION_28(v2);
      if (v42)
      {
        OUTLINED_FUNCTION_28(v2 + v39);
        v3 = v51;
        if (!v42)
        {
          goto LABEL_19;
        }

        v40 = OUTLINED_FUNCTION_127();
        sub_26A0E48F0(v40, v41, &unk_26A42C5A0);
      }

      else
      {
        sub_26A0E4894(v2, v52, &qword_28036C918, &unk_26A42C5A0);
        OUTLINED_FUNCTION_28(v2 + v39);
        if (v42)
        {
          sub_26A0E49F0();
LABEL_19:
          sub_26A0E48F0(v2, &qword_28036C920, &unk_26A425ED0);
          break;
        }

        sub_26A0E4948();
        v43 = static _ProtoColor.OneOf_Value.== infix(_:_:)();
        sub_26A0E49F0();
        sub_26A0E49F0();
        sub_26A0E48F0(v2, &qword_28036C918, &unk_26A42C5A0);
        v3 = v51;
        if (!v43)
        {
          break;
        }
      }

      v44 = *(type metadata accessor for _ProtoColor(0) + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_1();
      sub_26A0E4A44(qword_2815792E0, v45);
      v46 = sub_26A424B64();
      sub_26A0E49F0();
      sub_26A0E49F0();
      if (v46)
      {
        v35 += v48;
        v34 += v48;
        if (--v32)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    sub_26A0E49F0();
    sub_26A0E49F0();
  }

LABEL_21:
  OUTLINED_FUNCTION_75();
}

void sub_26A0DCCA8()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_43();
  v46 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(v4);
  v5 = OUTLINED_FUNCTION_12(v46);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_94(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F0, &unk_26A425EA0);
  OUTLINED_FUNCTION_12(v45);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_55();
  v44 = type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  v16 = OUTLINED_FUNCTION_10(v44);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_118();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_114();
  if (v37 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_20(v20);
    OUTLINED_FUNCTION_146(v21);
    while (1)
    {
      sub_26A0E499C();
      sub_26A0E499C();
      v22 = *(v45 + 48);
      v23 = OUTLINED_FUNCTION_105();
      sub_26A0E4894(v23, v24, &qword_28036C8E8, &qword_26A437B80);
      OUTLINED_FUNCTION_87();
      sub_26A0E4894(v25, v26, v27, v28);
      v29 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v29, v30, v46);
      if (v37)
      {
        OUTLINED_FUNCTION_37(v1 + v22, 1, v46);
        if (!v37)
        {
          sub_26A0E49F0();
          OUTLINED_FUNCTION_66();
LABEL_19:
          sub_26A0E49F0();
          sub_26A0E48F0(v1, &qword_28036C8F0, &unk_26A425EA0);
          break;
        }

        v31 = OUTLINED_FUNCTION_115();
        sub_26A0E48F0(v31, v32, &qword_26A437B80);
      }

      else
      {
        OUTLINED_FUNCTION_82();
        sub_26A0E4894(v33, v34, v35, v36);
        OUTLINED_FUNCTION_37(v1 + v22, 1, v46);
        if (v37)
        {
          sub_26A0E49F0();
          OUTLINED_FUNCTION_127();
          sub_26A0E49F0();
          goto LABEL_19;
        }

        sub_26A0E4948();
        v38 = OUTLINED_FUNCTION_151();
        v40 = static _ProtoButton_Container.ButtonItem.OneOf_Value.== infix(_:_:)(v38, v39);
        sub_26A0E49F0();
        OUTLINED_FUNCTION_132();
        sub_26A0E49F0();
        sub_26A0E48F0(v1, &qword_28036C8E8, &qword_26A437B80);
        if ((v40 & 1) == 0)
        {
          sub_26A0E49F0();
          OUTLINED_FUNCTION_66();
          sub_26A0E49F0();
          break;
        }
      }

      v41 = *(v44 + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v42);
      v43 = OUTLINED_FUNCTION_184();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_126();
      sub_26A0E49F0();
      if (v43)
      {
        OUTLINED_FUNCTION_112();
        if (!v37)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_75();
}

void sub_26A0DD0B8()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_43();
  v124 = type metadata accessor for _ProtoSeparators();
  v7 = OUTLINED_FUNCTION_12(v124);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_159(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v130 = v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C820, &unk_26A425DD0);
  OUTLINED_FUNCTION_12(v123);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_36();
  v131 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(v19);
  v20 = OUTLINED_FUNCTION_12(v131);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42();
  v125 = v27;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C830, &unk_26A425DE0);
  OUTLINED_FUNCTION_12(v126);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_113();
  v129 = type metadata accessor for _ProtoResponse.Component(0);
  v31 = OUTLINED_FUNCTION_24(v129);
  v127 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_120();
  MEMORY[0x28223BE20](v35);
  v36 = OUTLINED_FUNCTION_84();
  v37 = type metadata accessor for _ProtoResponse.Section(v36);
  v38 = OUTLINED_FUNCTION_10(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_119();
  MEMORY[0x28223BE20](v41);
  v42 = *(v3 + 16);
  OUTLINED_FUNCTION_154();
  if (v64 && v45 && v3 != v1)
  {
    v110 = v43;
    OUTLINED_FUNCTION_20(v44);
    OUTLINED_FUNCTION_131(v46);
    v115 = v2;
    v119 = v0;
    v120 = v47;
    v112 = v48;
    OUTLINED_FUNCTION_172(v49);
    while (1)
    {
      v116 = v51;
      v52 = v50;
      sub_26A0E499C();
      if (v116 == v112)
      {
        break;
      }

      sub_26A0E499C();
      v53 = *v52;
      v54 = *v2;
      v121 = *(v53 + 16);
      if (v121 != *(*v2 + 16))
      {
        goto LABEL_96;
      }

      if (v121 && v53 != v54)
      {
        v55 = 0;
        OUTLINED_FUNCTION_22(v127);
        v117 = v54 + v57;
        v118 = v56 + v57;
        v113 = v54;
        v114 = v56;
        do
        {
          if (v55 >= *(v56 + 16))
          {
            goto LABEL_99;
          }

          v58 = *(v127 + 72) * v55;
          OUTLINED_FUNCTION_68();
          sub_26A0E499C();
          if (v55 >= *(v54 + 16))
          {
            goto LABEL_100;
          }

          sub_26A0E499C();
          v59 = *(v126 + 48);
          v60 = OUTLINED_FUNCTION_102();
          sub_26A0E4894(v60, v61, &qword_28036C828, &unk_26A4276D0);
          sub_26A0E4894(v5, v0 + v59, &qword_28036C828, &unk_26A4276D0);
          OUTLINED_FUNCTION_37(v0, 1, v131);
          v122 = v55;
          if (v64)
          {
            OUTLINED_FUNCTION_37(v0 + v59, 1, v131);
            if (!v64)
            {
              goto LABEL_90;
            }

            v62 = OUTLINED_FUNCTION_97();
            sub_26A0E48F0(v62, v63, &unk_26A4276D0);
          }

          else
          {
            sub_26A0E4894(v0, v125, &qword_28036C828, &unk_26A4276D0);
            OUTLINED_FUNCTION_37(v0 + v59, 1, v131);
            if (v64)
            {
              sub_26A0E49F0();
LABEL_90:
              v105 = &qword_28036C830;
              v106 = &unk_26A425DE0;
              v107 = v0;
              goto LABEL_94;
            }

            sub_26A0E4948();
            v65 = OUTLINED_FUNCTION_66();
            static _ProtoResponse.Component.OneOf_Value.== infix(_:_:)(v65, v66, v67, v68, v69, v70, v71, v72, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119);
            OUTLINED_FUNCTION_29();
            v0 = v119;
            sub_26A0E49F0();
            OUTLINED_FUNCTION_106();
            sub_26A0E49F0();
            sub_26A0E48F0(v119, &qword_28036C828, &unk_26A4276D0);
            if ((v59 & 1) == 0)
            {
              goto LABEL_95;
            }
          }

          v73 = *(v129 + 24);
          v74 = *(v123 + 48);
          OUTLINED_FUNCTION_136(v6 + v73, v4);
          OUTLINED_FUNCTION_136(v5 + v73, v4 + v74);
          v75 = OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_25(v75, v76);
          if (v64)
          {
            OUTLINED_FUNCTION_15(v4 + v74);
            if (!v64)
            {
              goto LABEL_92;
            }

            sub_26A0E48F0(v4, &qword_28036C818, &unk_26A42D9A0);
          }

          else
          {
            OUTLINED_FUNCTION_136(v4, v130);
            OUTLINED_FUNCTION_15(v4 + v74);
            if (v77)
            {
              sub_26A0E49F0();
LABEL_92:
              v105 = &qword_28036C820;
              v106 = &unk_26A425DD0;
LABEL_93:
              v107 = v4;
LABEL_94:
              sub_26A0E48F0(v107, v105, v106);
LABEL_95:
              sub_26A0E49F0();
              OUTLINED_FUNCTION_102();
              sub_26A0E49F0();
              goto LABEL_96;
            }

            LOBYTE(v74) = v128;
            sub_26A0E4948();
            v78 = *v130;
            v79 = *v128;
            if (*(v128 + 8) == 1)
            {
              switch(v79)
              {
                case 1:
                  if (v78 != 1)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_31;
                case 2:
                  if (v78 != 2)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_31;
                case 3:
                  if (v78 != 3)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_31;
                case 4:
                  if (v78 != 4)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_31;
                case 5:
                  if (v78 != 5)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_31;
                case 6:
                  if (v78 != 6)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_31;
                default:
                  if (v78)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_31;
              }
            }

            if (v78 != v79)
            {
LABEL_88:
              sub_26A0E49F0();
              sub_26A0E49F0();
              v105 = &qword_28036C818;
              v106 = &unk_26A42D9A0;
              goto LABEL_93;
            }

LABEL_31:
            v80 = v130[2];
            v81 = *(v128 + 16);
            if (*(v128 + 24) == 1)
            {
              switch(v81)
              {
                case 1:
                  if (v80 != 1)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_36;
                case 2:
                  if (v80 != 2)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_36;
                case 3:
                  if (v80 != 3)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_36;
                case 4:
                  if (v80 != 4)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_36;
                case 5:
                  if (v80 != 5)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_36;
                case 6:
                  if (v80 != 6)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_36;
                default:
                  if (v80)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_36;
              }
            }

            if (v80 != v81)
            {
              goto LABEL_88;
            }

LABEL_36:
            v82 = *(v124 + 24);
            sub_26A424794();
            OUTLINED_FUNCTION_0();
            sub_26A0E4A44(qword_2815792E0, v83);
            sub_26A424B64();
            OUTLINED_FUNCTION_26();
            v0 = v119;
            v2 = v115;
            sub_26A0E49F0();
            sub_26A0E49F0();
            v84 = OUTLINED_FUNCTION_104();
            sub_26A0E48F0(v84, v85, &unk_26A42D9A0);
            if ((v128 & 1) == 0)
            {
              goto LABEL_95;
            }
          }

          v86 = *(v129 + 20);
          sub_26A424794();
          OUTLINED_FUNCTION_0();
          sub_26A0E4A44(qword_2815792E0, v87);
          OUTLINED_FUNCTION_182();
          OUTLINED_FUNCTION_27();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_134();
          v54 = v113;
          v56 = v114;
          if ((v74 & 1) == 0)
          {
            goto LABEL_96;
          }

          ++v55;
        }

        while (v121 != v122 + 1);
      }

      v88 = *(v120 + 8);
      v89 = *(v2 + 8);
      OUTLINED_FUNCTION_80();
      if (!v64)
      {
LABEL_96:
        sub_26A0E49F0();
        sub_26A0E49F0();
        goto LABEL_97;
      }

      if (v90)
      {
        v93 = v91 == v92;
      }

      else
      {
        v93 = 1;
      }

      if (!v93)
      {
        while (v90)
        {
          OUTLINED_FUNCTION_190();
          if (v99)
          {
            v100 = v98;
          }

          else
          {
            v100 = v96;
          }

          if (v97 == 1)
          {
            if (v95)
            {
              if (v100 != 1)
              {
                goto LABEL_96;
              }
            }

            else if (v100)
            {
              goto LABEL_96;
            }
          }

          else if (v100 != v95)
          {
            goto LABEL_96;
          }

          v90 = v94 - 1;
          if (!v90)
          {
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        break;
      }

LABEL_82:
      if ((sub_26A0DB6A0(*(v120 + 16), *(v2 + 16)) & 1) == 0 || *(v120 + 24) != *(v2 + 24))
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_162();
      v102 = *(v101 + 32);
      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v103);
      v2 = v115;
      v104 = sub_26A424B64();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_106();
      sub_26A0E49F0();
      if (v104)
      {
        v51 = v116 + 1;
        v0 = v119;
        v50 = v120;
        if (v116 + 1 != v112)
        {
          continue;
        }
      }

      goto LABEL_97;
    }

    __break(1u);
  }

  else
  {
LABEL_97:
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_75();
  }
}

void sub_26A0DDB54()
{
  OUTLINED_FUNCTION_76();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_43();
  v69 = type metadata accessor for _ProtoVisualElement.OneOf_Element(v8);
  v9 = OUTLINED_FUNCTION_12(v69);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  OUTLINED_FUNCTION_41(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_56();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C840, &unk_26A425DF0);
  OUTLINED_FUNCTION_12(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_42();
  v72 = v20;
  v21 = OUTLINED_FUNCTION_45();
  v71 = type metadata accessor for _ProtoVisualElement(v21);
  v22 = OUTLINED_FUNCTION_12(v71);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_94(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  OUTLINED_FUNCTION_41(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_159(v30);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C850, &unk_26A425E00);
  OUTLINED_FUNCTION_12(v75);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_177();
  v70 = v7(v34);
  v35 = OUTLINED_FUNCTION_10(v70);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_21();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_122();
  v43 = *(v1 + 16);
  if (v43 != *(v0 + 16) || !v43 || v1 == v0)
  {
    goto LABEL_32;
  }

  v65 = v4;
  v64 = v3;
  OUTLINED_FUNCTION_20(v42);
  v45 = v1 + v44;
  v77 = v0 + v44;
  v66 = *(v46 + 72);
  v47 = v70;
  v48 = v71;
  v67 = v2;
  v68 = v40;
  while (1)
  {
    v76 = v45;
    sub_26A0E499C();
    sub_26A0E499C();
    v49 = *(v47 + 28);
    v50 = *(v75 + 48);
    sub_26A0E4894(v2 + v49, v5, &qword_28036C848, &qword_26A426690);
    OUTLINED_FUNCTION_138(v40 + v49, v5 + v50);
    v51 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v51, v52, v48);
    if (!v53)
    {
      break;
    }

    OUTLINED_FUNCTION_37(v5 + v50, 1, v48);
    if (!v53)
    {
      goto LABEL_26;
    }

    sub_26A0E48F0(v5, &qword_28036C848, &qword_26A426690);
    v2 = v67;
    v40 = v68;
LABEL_19:
    if ((sub_26A0DB6A0(*v2, *v40) & 1) == 0 || *(v2 + 8) != *(v40 + 8))
    {
      goto LABEL_31;
    }

    v61 = *(v47 + 24);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v62);
    v63 = sub_26A424B64();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_135();
    if (v63)
    {
      v77 += v66;
      v45 = v76 + v66;
      if (--v43)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_138(v5, v74);
  OUTLINED_FUNCTION_37(v5 + v50, 1, v48);
  if (v53)
  {
    sub_26A0E49F0();
LABEL_26:
    sub_26A0E48F0(v5, &qword_28036C850, &unk_26A425E00);
    goto LABEL_31;
  }

  sub_26A0E4948();
  OUTLINED_FUNCTION_111();
  sub_26A0E4894(v74, v72, &qword_28036C838, &qword_26A439300);
  sub_26A0E4894(v73, v72 + v50, &qword_28036C838, &qword_26A439300);
  OUTLINED_FUNCTION_9(v72);
  if (v53)
  {
    OUTLINED_FUNCTION_9(v72 + v50);
    v2 = v67;
    v40 = v68;
    if (!v53)
    {
      goto LABEL_28;
    }

    v54 = OUTLINED_FUNCTION_100();
    sub_26A0E48F0(v54, v55, &qword_26A439300);
LABEL_18:
    v59 = *(v71 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v60);
    LOBYTE(v59) = sub_26A424B64();
    v48 = v71;
    sub_26A0E49F0();
    OUTLINED_FUNCTION_168();
    sub_26A0E49F0();
    sub_26A0E48F0(v5, &qword_28036C848, &qword_26A426690);
    v47 = v70;
    if ((v59 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  sub_26A0E4894(v72, v65, &qword_28036C838, &qword_26A439300);
  OUTLINED_FUNCTION_9(v72 + v50);
  v2 = v67;
  v40 = v68;
  if (v56)
  {
    sub_26A0E49F0();
    OUTLINED_FUNCTION_31();
LABEL_28:
    sub_26A0E49F0();
    sub_26A0E48F0(v72, &qword_28036C840, &unk_26A425DF0);
    goto LABEL_30;
  }

  sub_26A0E4948();
  static _ProtoVisualElement.OneOf_Element.== infix(_:_:)(v65, v64);
  OUTLINED_FUNCTION_30();
  sub_26A0E49F0();
  OUTLINED_FUNCTION_66();
  sub_26A0E49F0();
  v57 = OUTLINED_FUNCTION_100();
  sub_26A0E48F0(v57, v58, &qword_26A439300);
  if (v69)
  {
    goto LABEL_18;
  }

  sub_26A0E49F0();
LABEL_30:
  sub_26A0E49F0();
  sub_26A0E48F0(v5, &qword_28036C848, &qword_26A426690);
LABEL_31:
  sub_26A0E49F0();
  OUTLINED_FUNCTION_135();
LABEL_32:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_75();
}

void sub_26A0DE218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v27;
  a20 = v28;
  OUTLINED_FUNCTION_43();
  v139 = type metadata accessor for _ProtoSeparators();
  v29 = OUTLINED_FUNCTION_12(v139);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_94(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
  OUTLINED_FUNCTION_41(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_42();
  v147 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C820, &unk_26A425DD0);
  OUTLINED_FUNCTION_12(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v41);
  v42 = OUTLINED_FUNCTION_36();
  v141 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(v42);
  v43 = OUTLINED_FUNCTION_12(v141);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_11();
  v136 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_55();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C830, &unk_26A425DE0);
  OUTLINED_FUNCTION_12(v140);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_56();
  v145 = type metadata accessor for _ProtoResponse.Component(0);
  v54 = OUTLINED_FUNCTION_24(v145);
  v142 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_120();
  MEMORY[0x28223BE20](v58);
  v59 = OUTLINED_FUNCTION_84();
  v60 = type metadata accessor for _ProtoResponse.Group(v59);
  v61 = OUTLINED_FUNCTION_10(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_21();
  v144 = (v64 - v65);
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v66);
  v146 = (v124 - v67);
  v68 = *(v22 + 16);
  OUTLINED_FUNCTION_154();
  if (v78 && v71 && v22 != v20)
  {
    v125 = v69;
    v133 = v38;
    OUTLINED_FUNCTION_20(v70);
    OUTLINED_FUNCTION_131(v72);
    v128 = v21;
    v130 = v73;
    OUTLINED_FUNCTION_172(v74);
    while (1)
    {
      v76 = v75;
      sub_26A0E499C();
      v129 = v76;
      if (v76 == v130)
      {
        break;
      }

      OUTLINED_FUNCTION_51(&a18);
      v77 = v144;
      sub_26A0E499C();
      v78 = *v146 == *v77 && v146[1] == v77[1];
      v79 = &qword_28036C828;
      if (!v78 && (sub_26A425354() & 1) == 0 || (v80 = v146[2], v81 = v144[2], v82 = *(v81 + 16), v137 = *(v80 + 16), v137 != v82))
      {
LABEL_81:
        sub_26A0E49F0();
        sub_26A0E49F0();
        goto LABEL_82;
      }

      if (v137 && v80 != v81)
      {
        v83 = 0;
        OUTLINED_FUNCTION_22(v142);
        v134 = v81 + v84;
        v135 = v80 + v84;
        v131 = v81;
        v132 = v80;
        v127 = v26;
        while (v83 < *(v80 + 16))
        {
          v85 = *(v142 + 72) * v83;
          OUTLINED_FUNCTION_68();
          sub_26A0E499C();
          if (v83 >= *(v81 + 16))
          {
            goto LABEL_84;
          }

          sub_26A0E499C();
          v86 = *(v140 + 48);
          OUTLINED_FUNCTION_140(v26, v24);
          OUTLINED_FUNCTION_140(v25, v24 + v86);
          v87 = OUTLINED_FUNCTION_107();
          OUTLINED_FUNCTION_25(v87, v88);
          v138 = v83;
          if (v78)
          {
            OUTLINED_FUNCTION_15(v24 + v86);
            if (!v78)
            {
              goto LABEL_75;
            }

            v89 = OUTLINED_FUNCTION_66();
            sub_26A0E48F0(v89, v90, &unk_26A4276D0);
          }

          else
          {
            v91 = v25;
            v92 = v79;
            v93 = v128;
            sub_26A0E4894(v24, v128, v92, &unk_26A4276D0);
            OUTLINED_FUNCTION_15(v24 + v86);
            if (v94)
            {
              sub_26A0E49F0();
LABEL_75:
              v121 = &qword_28036C830;
              v122 = &unk_26A425DE0;
              v123 = v24;
              goto LABEL_79;
            }

            v95 = v136;
            sub_26A0E4948();
            static _ProtoResponse.Component.OneOf_Value.== infix(_:_:)(v93, v95, v96, v97, v98, v99, v100, v101, v124[0], v124[1], v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
            OUTLINED_FUNCTION_29();
            sub_26A0E49F0();
            OUTLINED_FUNCTION_97();
            sub_26A0E49F0();
            sub_26A0E48F0(v24, v92, &unk_26A4276D0);
            v79 = v92;
            v25 = v91;
            v26 = v127;
            if ((v86 & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          v102 = *(v145 + 24);
          v103 = *(v133 + 48);
          sub_26A0E4894(v26 + v102, v23, &qword_28036C818, &unk_26A42D9A0);
          sub_26A0E4894(v25 + v102, v23 + v103, &qword_28036C818, &unk_26A42D9A0);
          v104 = OUTLINED_FUNCTION_72();
          v105 = v139;
          OUTLINED_FUNCTION_25(v104, v106);
          if (v78)
          {
            OUTLINED_FUNCTION_15(v23 + v103);
            if (!v78)
            {
              goto LABEL_77;
            }

            sub_26A0E48F0(v23, &qword_28036C818, &unk_26A42D9A0);
            v80 = v132;
          }

          else
          {
            sub_26A0E4894(v23, v147, &qword_28036C818, &unk_26A42D9A0);
            OUTLINED_FUNCTION_15(v23 + v103);
            if (v107)
            {
              sub_26A0E49F0();
LABEL_77:
              v121 = &qword_28036C820;
              v122 = &unk_26A425DD0;
LABEL_78:
              v123 = v23;
LABEL_79:
              sub_26A0E48F0(v123, v121, v122);
LABEL_80:
              sub_26A0E49F0();
              OUTLINED_FUNCTION_102();
              sub_26A0E49F0();
              goto LABEL_81;
            }

            v103 = v143;
            sub_26A0E4948();
            v108 = *v147;
            v109 = *v103;
            if (*(v103 + 8) == 1)
            {
              switch(v109)
              {
                case 1:
                  if (v108 != 1)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_36;
                case 2:
                  if (v108 != 2)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_36;
                case 3:
                  if (v108 != 3)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_36;
                case 4:
                  if (v108 != 4)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_36;
                case 5:
                  if (v108 != 5)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_36;
                case 6:
                  if (v108 != 6)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_36;
                default:
                  if (v108)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_36;
              }
            }

            if (v108 != v109)
            {
LABEL_73:
              sub_26A0E49F0();
              OUTLINED_FUNCTION_151();
              sub_26A0E49F0();
              v121 = &qword_28036C818;
              v122 = &unk_26A42D9A0;
              goto LABEL_78;
            }

LABEL_36:
            v110 = v147[2];
            v111 = *(v143 + 16);
            if (*(v143 + 24) == 1)
            {
              switch(v111)
              {
                case 1:
                  if (v110 != 1)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_41;
                case 2:
                  if (v110 != 2)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_41;
                case 3:
                  if (v110 != 3)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_41;
                case 4:
                  if (v110 != 4)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_41;
                case 5:
                  if (v110 != 5)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_41;
                case 6:
                  if (v110 != 6)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_41;
                default:
                  if (v110)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_41;
              }
            }

            if (v110 != v111)
            {
              goto LABEL_73;
            }

LABEL_41:
            v112 = *(v105 + 24);
            sub_26A424794();
            OUTLINED_FUNCTION_0();
            sub_26A0E4A44(qword_2815792E0, v113);
            sub_26A424B64();
            OUTLINED_FUNCTION_26();
            v79 = &qword_28036C828;
            sub_26A0E49F0();
            sub_26A0E49F0();
            v114 = OUTLINED_FUNCTION_104();
            sub_26A0E48F0(v114, v115, &unk_26A42D9A0);
            v80 = v132;
            if ((v103 & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          v116 = *(v145 + 20);
          sub_26A424794();
          OUTLINED_FUNCTION_0();
          sub_26A0E4A44(qword_2815792E0, v117);
          OUTLINED_FUNCTION_182();
          OUTLINED_FUNCTION_27();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_134();
          v81 = v131;
          if ((v103 & 1) == 0)
          {
            goto LABEL_81;
          }

          v83 = v138 + 1;
          if (v137 == v138 + 1)
          {
            goto LABEL_69;
          }
        }

        __break(1u);
LABEL_84:
        __break(1u);
        break;
      }

LABEL_69:
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_99(v118);
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v119);
      v120 = OUTLINED_FUNCTION_141();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_100();
      sub_26A0E49F0();
      if (v120)
      {
        v75 = v129 + 1;
        if (v129 + 1 != v130)
        {
          continue;
        }
      }

      goto LABEL_82;
    }

    __break(1u);
  }

  else
  {
LABEL_82:
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_75();
  }
}

uint64_t sub_26A0DEBA4(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2)
    {
      v3 = a1 == a2;
      if (a1 != a2)
      {
        v4 = (a1 + 40);
        v5 = (a2 + 40);
        do
        {
          v7 = *(v4 - 1);
          v6 = *v4;
          v8 = *v4 >> 62;
          v10 = *(v5 - 1);
          v9 = *v5;
          v11 = *v5 >> 62;
          if (v3)
          {
            v12 = *v4 >> 62;
            if (v7)
            {
              v14 = *v4 >> 62;
              v13 = 0;
            }

            else
            {
              v14 = *v4 >> 62;
              v13 = v6 == 0xC000000000000000;
            }

            v15 = *v4 >> 62;
            v24 = 0;
            if (v13)
            {
              v17 = *v4 >> 62;
              v16 = *v5 >> 62 == 3;
            }

            else
            {
              v17 = *v4 >> 62;
              v16 = 0;
            }

            v18 = *v4 >> 62;
            if (v16)
            {
              v19 = *v4 >> 62;
              if (!v10)
              {
                v20 = *v4 >> 62;
                if (v9 == 0xC000000000000000)
                {
                  v21 = *v4 >> 62;
                  goto LABEL_88;
                }

                v22 = *v4 >> 62;
              }
            }

            else
            {
              v114 = *v4 >> 62;
            }
          }

          else
          {
            v23 = *v4 >> 62;
            v24 = 0;
            v25 = *v4 >> 62;
            switch(v8)
            {
              case 0uLL:
                v24 = BYTE6(v6);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v7), v7))
                {
                  goto LABEL_94;
                }

                v24 = HIDWORD(v7) - v7;
                break;
              case 2uLL:
                v27 = *(v7 + 16);
                v26 = *(v7 + 24);
                v28 = __OFSUB__(v26, v27);
                v24 = v26 - v27;
                if (!v28)
                {
                  break;
                }

                goto LABEL_95;
              case 3uLL:
                break;
              default:
                goto LABEL_112;
            }
          }

          v29 = *v5 >> 62;
          v30 = *v4 >> 62;
          switch(v11)
          {
            case 1uLL:
              LODWORD(v31) = HIDWORD(v10) - v10;
              if (__OFSUB__(HIDWORD(v10), v10))
              {
                __break(1u);
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
LABEL_99:
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
LABEL_103:
                __break(1u);
LABEL_104:
                __break(1u);
LABEL_105:
                __break(1u);
LABEL_106:
                __break(1u);
LABEL_107:
                __break(1u);
              }

              v31 = v31;
LABEL_33:
              v35 = *v4 >> 62;
              if (v24 != v31)
              {
                v36 = *v4 >> 62;
                goto LABEL_90;
              }

              v37 = *v4 >> 62;
              if (v24 >= 1)
              {
                v39 = *v4 >> 62;
                v40 = v10 >> 32;
                switch(v8)
                {
                  case 1:
                    if (v7 >> 32 < v7)
                    {
                      goto LABEL_96;
                    }

                    v66 = OUTLINED_FUNCTION_44();
                    sub_26A0E45C0(v66, v67);
                    v68 = OUTLINED_FUNCTION_44();
                    sub_26A0E45C0(v68, v69);
                    v70 = OUTLINED_FUNCTION_44();
                    sub_26A0E45C0(v70, v71);
                    v72 = OUTLINED_FUNCTION_44();
                    sub_26A0E45C0(v72, v73);
                    v74 = OUTLINED_FUNCTION_69();
                    sub_26A0E45C0(v74, v75);
                    v58 = sub_26A424474();
                    if (!v58)
                    {
                      goto LABEL_62;
                    }

                    v76 = sub_26A424494();
                    if (__OFSUB__(v7, v76))
                    {
                      goto LABEL_99;
                    }

                    v58 += v7 - v76;
LABEL_62:
                    sub_26A424484();
                    sub_26A0E4618(v58, v10, v9, __s1);
                    v77 = OUTLINED_FUNCTION_44();
                    sub_26A0E4784(v77, v78);
                    v79 = OUTLINED_FUNCTION_44();
                    sub_26A0E4784(v79, v80);
                    v81 = OUTLINED_FUNCTION_69();
                    sub_26A0E4784(v81, v82);
                    v83 = __s1[0];
                    v84 = OUTLINED_FUNCTION_44();
                    sub_26A0E4784(v84, v85);
                    v86 = OUTLINED_FUNCTION_44();
                    sub_26A0E4784(v86, v87);
                    if ((v83 & 1) == 0)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_88;
                  case 2:
                    v47 = *(v7 + 16);
                    v117 = *(v7 + 24);
                    v48 = OUTLINED_FUNCTION_44();
                    sub_26A0E45C0(v48, v49);
                    v50 = OUTLINED_FUNCTION_44();
                    sub_26A0E45C0(v50, v51);
                    v52 = OUTLINED_FUNCTION_44();
                    sub_26A0E45C0(v52, v53);
                    v54 = OUTLINED_FUNCTION_44();
                    sub_26A0E45C0(v54, v55);
                    v56 = OUTLINED_FUNCTION_69();
                    sub_26A0E45C0(v56, v57);
                    v58 = sub_26A424474();
                    if (!v58)
                    {
                      goto LABEL_47;
                    }

                    v59 = sub_26A424494();
                    if (__OFSUB__(v47, v59))
                    {
                      goto LABEL_98;
                    }

                    v58 += v47 - v59;
LABEL_47:
                    if (!__OFSUB__(v117, v47))
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_97;
                  case 3:
                    memset(__s1, 0, 14);
                    if (v11 == 2)
                    {
                      v88 = *(v10 + 16);
                      v120 = *(v10 + 24);
                      v89 = OUTLINED_FUNCTION_44();
                      sub_26A0E45C0(v89, v90);
                      v91 = OUTLINED_FUNCTION_69();
                      sub_26A0E45C0(v91, v92);
                      v93 = sub_26A424474();
                      if (v93)
                      {
                        v94 = sub_26A424494();
                        if (__OFSUB__(v88, v94))
                        {
                          goto LABEL_104;
                        }

                        v93 += v88 - v94;
                      }

                      v28 = __OFSUB__(v120, v88);
                      v95 = &v120[-v88];
                      if (v28)
                      {
                        goto LABEL_103;
                      }

                      v96 = sub_26A424484();
                      if (!v93)
                      {
                        goto LABEL_111;
                      }

                      goto LABEL_75;
                    }

                    if (v11 != 1)
                    {
LABEL_60:
                      __s2 = v10;
                      v123 = v9;
                      v124 = BYTE2(v9);
                      v125 = BYTE3(v9);
                      v126 = BYTE4(v9);
                      v127 = BYTE5(v9);
                      if (memcmp(__s1, &__s2, BYTE6(v9)))
                      {
                        goto LABEL_90;
                      }

                      goto LABEL_88;
                    }

                    if (v40 < v10)
                    {
                      goto LABEL_100;
                    }

                    v60 = OUTLINED_FUNCTION_44();
                    sub_26A0E45C0(v60, v61);
                    v62 = OUTLINED_FUNCTION_69();
                    sub_26A0E45C0(v62, v63);
                    v64 = sub_26A424474();
                    if (v64)
                    {
                      v118 = v64;
                      v65 = sub_26A424494();
                      if (__OFSUB__(v10, v65))
                      {
                        goto LABEL_107;
                      }

                      v119 = &v118[v10 - v65];
                    }

                    else
                    {
                      v119 = 0;
                    }

                    v105 = sub_26A424484();
                    v104 = v119;
                    if (!v119)
                    {
                      goto LABEL_109;
                    }

                    goto LABEL_84;
                  default:
                    LOWORD(__s1[0]) = *(v4 - 1);
                    BYTE2(__s1[0]) = BYTE2(v7);
                    BYTE3(__s1[0]) = BYTE3(v7);
                    BYTE4(__s1[0]) = BYTE4(v7);
                    BYTE5(__s1[0]) = BYTE5(v7);
                    BYTE6(__s1[0]) = BYTE6(v7);
                    HIBYTE(__s1[0]) = HIBYTE(v7);
                    LOWORD(__s1[1]) = v6;
                    BYTE2(__s1[1]) = BYTE2(v6);
                    BYTE3(__s1[1]) = BYTE3(v6);
                    BYTE4(__s1[1]) = BYTE4(v6);
                    BYTE5(__s1[1]) = BYTE5(v6);
                    if (!v11)
                    {
                      goto LABEL_60;
                    }

                    if (v11 == 1)
                    {
                      if (v40 < v10)
                      {
                        goto LABEL_101;
                      }

                      v41 = OUTLINED_FUNCTION_44();
                      sub_26A0E45C0(v41, v42);
                      v43 = OUTLINED_FUNCTION_69();
                      sub_26A0E45C0(v43, v44);
                      v45 = sub_26A424474();
                      if (v45)
                      {
                        v115 = v45;
                        v46 = sub_26A424494();
                        if (__OFSUB__(v10, v46))
                        {
                          goto LABEL_106;
                        }

                        v116 = &v115[v10 - v46];
                      }

                      else
                      {
                        v116 = 0;
                      }

                      v105 = sub_26A424484();
                      v104 = v116;
                      if (!v116)
                      {
                        goto LABEL_110;
                      }

LABEL_84:
                      if (v105 >= v40 - v10)
                      {
                        v103 = v40 - v10;
                      }

                      else
                      {
                        v103 = v105;
                      }
                    }

                    else
                    {
                      v97 = *(v10 + 16);
                      v121 = *(v10 + 24);
                      v98 = OUTLINED_FUNCTION_44();
                      sub_26A0E45C0(v98, v99);
                      v100 = OUTLINED_FUNCTION_69();
                      sub_26A0E45C0(v100, v101);
                      v93 = sub_26A424474();
                      if (v93)
                      {
                        v102 = sub_26A424494();
                        if (__OFSUB__(v97, v102))
                        {
                          goto LABEL_105;
                        }

                        v93 += v97 - v102;
                      }

                      v28 = __OFSUB__(v121, v97);
                      v95 = &v121[-v97];
                      if (v28)
                      {
                        goto LABEL_102;
                      }

                      v96 = sub_26A424484();
                      if (!v93)
                      {
                        __break(1u);
LABEL_109:
                        __break(1u);
LABEL_110:
                        __break(1u);
LABEL_111:
                        __break(1u);
                        v112 = OUTLINED_FUNCTION_44();
                        sub_26A0E4784(v112, v113);

                        __break(1u);
LABEL_112:
                        JUMPOUT(0);
                      }

LABEL_75:
                      if (v96 >= v95)
                      {
                        v103 = v95;
                      }

                      else
                      {
                        v103 = v96;
                      }

                      v104 = v93;
                    }

                    v106 = memcmp(__s1, v104, v103);
                    v107 = OUTLINED_FUNCTION_69();
                    sub_26A0E4784(v107, v108);
                    v109 = OUTLINED_FUNCTION_44();
                    sub_26A0E4784(v109, v110);
                    if (v106)
                    {
                      goto LABEL_90;
                    }

                    break;
                }
              }

              else
              {
                v38 = *v4 >> 62;
              }

              break;
            case 2uLL:
              v34 = *(v10 + 16);
              v33 = *(v10 + 24);
              v28 = __OFSUB__(v33, v34);
              v31 = v33 - v34;
              if (!v28)
              {
                goto LABEL_33;
              }

              goto LABEL_93;
            case 3uLL:
              if (v24)
              {
                goto LABEL_90;
              }

              break;
            default:
              v32 = *v4 >> 62;
              v31 = BYTE6(v9);
              goto LABEL_33;
          }

LABEL_88:
          v4 += 2;
          v5 += 2;
          v3 = --v2 == 0;
        }

        while (v2);
      }
    }

    result = 1;
  }

  else
  {
LABEL_90:
    result = 0;
  }

  *MEMORY[0x277D85DE8];
  return result;
}

void sub_26A0DF1D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    do
    {
      OUTLINED_FUNCTION_190();
      if (v8)
      {
        v9 = v7;
      }

      else
      {
        v9 = v5;
      }

      if (v6 == 1)
      {
        if (v4)
        {
          if (v9 != 1)
          {
            return;
          }
        }

        else if (v9)
        {
          return;
        }
      }

      else if (v9 != v4)
      {
        return;
      }
    }

    while (v3 != 1);
  }
}

void sub_26A0DF264()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_43();
  v44 = type metadata accessor for _ProtoVisualElement.OneOf_Element(v4);
  v5 = OUTLINED_FUNCTION_12(v44);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_94(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C840, &unk_26A425DF0);
  OUTLINED_FUNCTION_12(v43);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_55();
  v42 = type metadata accessor for _ProtoVisualElement(0);
  v16 = OUTLINED_FUNCTION_10(v42);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_118();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_114();
  if (v37 && v3 && v2 != v0)
  {
    OUTLINED_FUNCTION_20(v20);
    OUTLINED_FUNCTION_146(v21);
    while (1)
    {
      sub_26A0E499C();
      sub_26A0E499C();
      v22 = *(v43 + 48);
      v23 = OUTLINED_FUNCTION_105();
      sub_26A0E4894(v23, v24, &qword_28036C838, &qword_26A439300);
      OUTLINED_FUNCTION_87();
      sub_26A0E4894(v25, v26, v27, v28);
      v29 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v29, v30, v44);
      if (v37)
      {
        OUTLINED_FUNCTION_37(v1 + v22, 1, v44);
        if (!v37)
        {
          sub_26A0E49F0();
          OUTLINED_FUNCTION_66();
LABEL_19:
          sub_26A0E49F0();
          sub_26A0E48F0(v1, &qword_28036C840, &unk_26A425DF0);
          break;
        }

        v31 = OUTLINED_FUNCTION_115();
        sub_26A0E48F0(v31, v32, &qword_26A439300);
      }

      else
      {
        OUTLINED_FUNCTION_82();
        sub_26A0E4894(v33, v34, v35, v36);
        OUTLINED_FUNCTION_37(v1 + v22, 1, v44);
        if (v37)
        {
          sub_26A0E49F0();
          OUTLINED_FUNCTION_127();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_31();
          goto LABEL_19;
        }

        sub_26A0E4948();
        v38 = OUTLINED_FUNCTION_151();
        static _ProtoVisualElement.OneOf_Element.== infix(_:_:)(v38, v39);
        OUTLINED_FUNCTION_30();
        sub_26A0E49F0();
        OUTLINED_FUNCTION_132();
        sub_26A0E49F0();
        sub_26A0E48F0(v1, &qword_28036C838, &qword_26A439300);
        if ((v22 & 1) == 0)
        {
          sub_26A0E49F0();
          OUTLINED_FUNCTION_66();
          sub_26A0E49F0();
          break;
        }
      }

      v40 = *(v42 + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v41);
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_63();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_126();
      sub_26A0E49F0();
      if (v22)
      {
        OUTLINED_FUNCTION_112();
        if (!v37)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_75();
}

void sub_26A0DF698()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_53();
  v5 = type metadata accessor for _ProtoTable.SpacerColumnCell(v4);
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  v13 = OUTLINED_FUNCTION_12(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  OUTLINED_FUNCTION_41(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_42();
  v100 = v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C8, &qword_26A440DC0);
  OUTLINED_FUNCTION_12(v101);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42();
  v109 = v27;
  v28 = OUTLINED_FUNCTION_45();
  v104 = type metadata accessor for _ProtoTable.ContentColumnCell(v28);
  v29 = OUTLINED_FUNCTION_12(v104);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_11();
  v103 = v32;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D0, &qword_26A425E80);
  OUTLINED_FUNCTION_12(v107);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_42();
  v108 = v36;
  v37 = OUTLINED_FUNCTION_45();
  v38 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(v37);
  v39 = OUTLINED_FUNCTION_12(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8();
  v102 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47();
  v110 = v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_159(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  OUTLINED_FUNCTION_41(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_42();
  v112 = v51;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E0, &unk_26A425E90);
  OUTLINED_FUNCTION_12(v113);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v54);
  v55 = OUTLINED_FUNCTION_46();
  v111 = type metadata accessor for _ProtoTable.Column(v55);
  v56 = OUTLINED_FUNCTION_10(v111);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_119();
  MEMORY[0x28223BE20](v59);
  v114 = &v95 - v61;
  v62 = *(v1 + 16);
  if (v62 != *(v0 + 16) || !v62 || v1 == v0)
  {
    goto LABEL_49;
  }

  v95 = v18;
  v97 = v12;
  v98 = v11;
  OUTLINED_FUNCTION_20(v60);
  v64 = v1 + v63;
  v65 = v0 + v63;
  v105 = *(v66 + 72);
  v106 = v38;
  v67 = v108;
  v99 = v3;
  while (1)
  {
    sub_26A0E499C();
    OUTLINED_FUNCTION_133();
    sub_26A0E499C();
    v68 = *(v113 + 48);
    v69 = OUTLINED_FUNCTION_106();
    sub_26A0E4894(v69, v70, &qword_28036C8D8, &qword_26A425E88);
    OUTLINED_FUNCTION_188(v2, v3 + v68);
    OUTLINED_FUNCTION_28(v3);
    if (!v71)
    {
      break;
    }

    OUTLINED_FUNCTION_28(v3 + v68);
    if (!v71)
    {
      goto LABEL_41;
    }

LABEL_30:
    sub_26A0E48F0(v3, &qword_28036C8D8, &qword_26A425E88);
    v92 = *(v111 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v93);
    v94 = sub_26A424B64();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_124();
    sub_26A0E49F0();
    if (v94)
    {
      v65 += v105;
      v64 += v105;
      if (--v62)
      {
        continue;
      }
    }

    goto LABEL_49;
  }

  sub_26A0E4894(v3, v112, &qword_28036C8D8, &qword_26A425E88);
  OUTLINED_FUNCTION_28(v3 + v68);
  if (v71)
  {
    sub_26A0E49F0();
LABEL_41:
    sub_26A0E48F0(v3, &qword_28036C8E0, &unk_26A425E90);
    goto LABEL_48;
  }

  sub_26A0E4948();
  v72 = *(v107 + 48);
  sub_26A0E499C();
  sub_26A0E499C();
  OUTLINED_FUNCTION_104();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A0E499C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_42;
    }

    sub_26A0E4948();
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v73);
    v74 = sub_26A424B64();
    v67 = v108;
    sub_26A0E49F0();
    sub_26A0E49F0();
    v3 = v99;
    if ((v74 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_29:
    sub_26A0E49F0();
    sub_26A0E49F0();
    sub_26A0E49F0();
    goto LABEL_30;
  }

  v75 = v110;
  sub_26A0E499C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_42:
    sub_26A0E49F0();
    v3 = v99;
    sub_26A0E48F0(v67, &qword_28036C8D0, &qword_26A425E80);
    goto LABEL_47;
  }

  v76 = v103;
  sub_26A0E4948();
  v77 = *(v101 + 48);
  v78 = v109;
  sub_26A0E4894(v75, v109, &qword_28036C8C0, &qword_26A425E70);
  OUTLINED_FUNCTION_138(v76, v78 + v77);
  v79 = OUTLINED_FUNCTION_71();
  v80 = v97;
  OUTLINED_FUNCTION_37(v79, v81, v97);
  v3 = v99;
  if (v71)
  {
    OUTLINED_FUNCTION_37(v109 + v77, 1, v80);
    if (!v71)
    {
      goto LABEL_44;
    }

    sub_26A0E48F0(v109, &qword_28036C8C0, &qword_26A425E70);
    v67 = v108;
    goto LABEL_22;
  }

  v82 = v109;
  sub_26A0E4894(v109, v100, &qword_28036C8C0, &qword_26A425E70);
  OUTLINED_FUNCTION_37(v82 + v77, 1, v80);
  if (!v83)
  {
    v84 = v109;
    sub_26A0E4948();
    OUTLINED_FUNCTION_126();
    static _ProtoTable.ContentColumnCell.OneOf_Size.== infix(_:_:)();
    v96 = v85;
    sub_26A0E49F0();
    OUTLINED_FUNCTION_156();
    sub_26A0E49F0();
    sub_26A0E48F0(v84, &qword_28036C8C0, &qword_26A425E70);
    v67 = v108;
    v75 = v110;
    v76 = v103;
    if ((v96 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_22:
    v86 = *(v104 + 20);
    v87 = *(v75 + v86);
    v88 = (v76 + v86);
    v89 = *v88;
    if (*(v88 + 8) == 1)
    {
      switch(v89)
      {
        case 1:
          if (v87 != 1)
          {
            goto LABEL_45;
          }

          goto LABEL_27;
        case 2:
          if (v87 != 2)
          {
            goto LABEL_45;
          }

          goto LABEL_27;
        case 3:
          if (v87 != 3)
          {
            goto LABEL_45;
          }

          goto LABEL_27;
        default:
          if (v87)
          {
            goto LABEL_45;
          }

          goto LABEL_27;
      }
    }

    if (v87 != v89)
    {
      goto LABEL_45;
    }

LABEL_27:
    v90 = *(v104 + 24);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v91);
    if ((sub_26A424B64() & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_26A0E49F0();
    sub_26A0E49F0();
    goto LABEL_29;
  }

  sub_26A0E49F0();
LABEL_44:
  sub_26A0E48F0(v109, &qword_28036C8C8, &qword_26A440DC0);
LABEL_45:
  sub_26A0E49F0();
  sub_26A0E49F0();
LABEL_46:
  sub_26A0E49F0();
LABEL_47:
  sub_26A0E49F0();
  sub_26A0E49F0();
  sub_26A0E48F0(v3, &qword_28036C8D8, &qword_26A425E88);
LABEL_48:
  sub_26A0E49F0();
  OUTLINED_FUNCTION_135();
LABEL_49:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_75();
}

void sub_26A0E0144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v26;
  a20 = v27;
  v28 = OUTLINED_FUNCTION_43();
  v29 = type metadata accessor for _ProtoTextElement(v28);
  v30 = OUTLINED_FUNCTION_79_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_48();
  v37 = OUTLINED_FUNCTION_35(v36);
  v38 = type metadata accessor for _ProtoCommand.OneOf_Value(v37);
  v39 = OUTLINED_FUNCTION_12(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  OUTLINED_FUNCTION_41(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_181();
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C860, &unk_26A425E10);
  OUTLINED_FUNCTION_12(v467);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v49);
  v50 = OUTLINED_FUNCTION_177();
  v502 = type metadata accessor for _ProtoOptionalInt(v50);
  v51 = OUTLINED_FUNCTION_12(v502);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  OUTLINED_FUNCTION_41(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v59);
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8A0, &unk_26A425E50);
  OUTLINED_FUNCTION_12(v501);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_42();
  v509 = v63;
  v64 = OUTLINED_FUNCTION_45();
  v65 = type metadata accessor for _ProtoVisualElement.OneOf_Element(v64);
  v66 = OUTLINED_FUNCTION_12(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C838, &qword_26A439300);
  OUTLINED_FUNCTION_41(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v73);
  v75 = &v441 - v74;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C840, &unk_26A425DF0);
  OUTLINED_FUNCTION_12(v493);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_42();
  v80 = OUTLINED_FUNCTION_35(v79);
  v491 = type metadata accessor for _ProtoVisualElement(v80);
  v81 = OUTLINED_FUNCTION_24(v491);
  v466 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_8();
  v510 = v85;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_48();
  v511 = v87;
  OUTLINED_FUNCTION_45();
  v482 = type metadata accessor for _ProtoVisualProperty();
  v88 = OUTLINED_FUNCTION_12(v482);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_11();
  v504 = v91;
  v92 = OUTLINED_FUNCTION_45();
  v492 = type metadata accessor for _ProtoCommand(v92);
  v93 = OUTLINED_FUNCTION_12(v492);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  v99 = OUTLINED_FUNCTION_41(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v104);
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C870, &unk_26A425E20);
  v105 = OUTLINED_FUNCTION_12(v488);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_48();
  v111 = OUTLINED_FUNCTION_35(v110);
  v505 = type metadata accessor for _ProtoActionElement(v111);
  v112 = OUTLINED_FUNCTION_24(v505);
  v512 = v113;
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v123);
  v513 = type metadata accessor for _ProtoActionProperty();
  v124 = OUTLINED_FUNCTION_12(v513);
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v131);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v133 = OUTLINED_FUNCTION_41(v132);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v140);
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v141 = OUTLINED_FUNCTION_12(v506);
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_8();
  v499 = v144;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_48();
  v150 = OUTLINED_FUNCTION_35(v149);
  v484 = type metadata accessor for _ProtoMultilineTextProperty(v150);
  v151 = OUTLINED_FUNCTION_12(v484);
  v153 = *(v152 + 64);
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_11();
  v155 = OUTLINED_FUNCTION_35(v154);
  v156 = type metadata accessor for _ProtoTable.EmptyCell(v155);
  v157 = OUTLINED_FUNCTION_41(v156);
  v159 = *(v158 + 64);
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v160);
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8A8, &unk_26A440DB0);
  OUTLINED_FUNCTION_12(v489);
  v162 = *(v161 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_42();
  v503 = v164;
  v165 = OUTLINED_FUNCTION_45();
  v516 = type metadata accessor for _ProtoTable.Content.OneOf_Value(v165);
  v166 = OUTLINED_FUNCTION_12(v516);
  v168 = *(v167 + 64);
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_8();
  v500 = v169;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_48();
  v507 = v173;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_41(v174);
  v176 = *(v175 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_56();
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B8, &qword_26A440DD0);
  OUTLINED_FUNCTION_12(v508);
  v179 = *(v178 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_38(v181);
  v517 = type metadata accessor for _ProtoTable.Content(0);
  v182 = OUTLINED_FUNCTION_24(v517);
  v514 = v183;
  v185 = *(v184 + 64);
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_48();
  v518 = v187;
  v188 = OUTLINED_FUNCTION_45();
  v189 = type metadata accessor for _ProtoTable.Row(v188);
  v190 = OUTLINED_FUNCTION_10(v189);
  v192 = *(v191 + 64);
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_21();
  v519 = (v193 - v194);
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v195);
  v198 = *(v22 + 16);
  if (v198 != *(v20 + 16) || !v198 || v22 == v20)
  {
    goto LABEL_288;
  }

  v460 = v196;
  v461 = v32;
  OUTLINED_FUNCTION_20(v197);
  v457 = v20 + v201;
  v203 = *(v202 + 72);
  v455 = v75;
  v204 = &off_26A427400;
  v450 = v65;
  v447 = v38;
  v446 = v23;
  v205 = v509;
  v464 = v21;
  v454 = v24;
  v445 = v25;
  v490 = v199;
  v462 = v206;
  v449 = v22 + v201;
  v448 = v203;
  while (1)
  {
    v207 = v200;
    v208 = v199;
    sub_26A0E499C();
    v456 = v207;
    if (v207 == v462)
    {
      goto LABEL_293;
    }

    OUTLINED_FUNCTION_51(&v477);
    v209 = v519;
    sub_26A0E499C();
    v210 = *v208;
    v211 = *v209;
    v212 = *(*v208 + 16);
    v213 = v518;
    if (v212 != *(*v209 + 16))
    {
      goto LABEL_287;
    }

    if (v212 && v210 != v211)
    {
      break;
    }

LABEL_162:
    v362 = *(v460 + 32);
    OUTLINED_FUNCTION_111();
    v360 = v499;
    OUTLINED_FUNCTION_143(v490 + v362, v499);
    v361 = v519 + v362;
    LOBYTE(v362) = v360;
    OUTLINED_FUNCTION_143(v361, v209 + v360);
    v363 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_25(v363, v364);
    if (v226)
    {
      OUTLINED_FUNCTION_15(v209 + v360);
      if (!v226)
      {
        goto LABEL_255;
      }

      sub_26A0E48F0(v360, &off_28036C7C0, v204);
    }

    else
    {
      OUTLINED_FUNCTION_129(&v517);
      OUTLINED_FUNCTION_143(v365, v366);
      OUTLINED_FUNCTION_15(v209 + v360);
      if (v367)
      {
        sub_26A0E49F0();
LABEL_255:
        v433 = &qword_28036C7C8;
        v434 = &qword_26A425C00;
        v435 = v360;
        goto LABEL_286;
      }

      OUTLINED_FUNCTION_59(&a16);
      sub_26A0E4948();
      v368 = *v209;
      v369 = *(*v360 + 16);
      if (v369 != *(*v209 + 16))
      {
        goto LABEL_285;
      }

      if (v369 && *v360 != v368)
      {
        v362 = 0;
        OUTLINED_FUNCTION_22(v512);
        v458 = v370 + v371;
        v453 = v368 + v371;
        v452 = v370;
        v451 = v368;
        v444 = v372;
        do
        {
          if (v362 >= *(v370 + 16))
          {
            goto LABEL_298;
          }

          OUTLINED_FUNCTION_101();
          v374 = v373 * v362;
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_51(&v478);
          v375 = v498;
          sub_26A0E499C();
          v376 = *(v368 + 16);
          v459 = v362;
          v377 = v445;
          v378 = v477;
          v379 = v476[3];
          if (v362 >= v376)
          {
            goto LABEL_299;
          }

          OUTLINED_FUNCTION_51(v476);
          OUTLINED_FUNCTION_129(&a17);
          sub_26A0E499C();
          OUTLINED_FUNCTION_54();
          sub_26A0E4894(v375 + v362, v379, &qword_28036C868, &qword_26A42D090);
          OUTLINED_FUNCTION_123(v360 + v362, v379 + v374);
          v380 = OUTLINED_FUNCTION_107();
          v362 = v492;
          OUTLINED_FUNCTION_19(v380, v381);
          if (v226)
          {
            OUTLINED_FUNCTION_9(v379 + v374);
            if (!v226)
            {
              goto LABEL_260;
            }

            v382 = v473;
            v383 = v474;
            sub_26A0E48F0(v379, &qword_28036C868, &qword_26A42D090);
          }

          else
          {
            v384 = OUTLINED_FUNCTION_161();
            OUTLINED_FUNCTION_123(v384, v385);
            OUTLINED_FUNCTION_9(v379 + v374);
            if (v386)
            {
              sub_26A0E49F0();
LABEL_260:
              v436 = &qword_28036C870;
              v437 = &unk_26A425E20;
LABEL_283:
              sub_26A0E48F0(v379, v436, v437);
LABEL_284:
              sub_26A0E49F0();
              sub_26A0E49F0();
              goto LABEL_285;
            }

            OUTLINED_FUNCTION_164(&v502);
            sub_26A0E4948();
            OUTLINED_FUNCTION_86(&v485);
            v387 = OUTLINED_FUNCTION_152();
            sub_26A0E4894(v387, v388, &qword_28036C858, &dword_26A42D080);
            v389 = v362;
            v362 = &dword_26A42D080;
            sub_26A0E4894(v389, v377 + v374, &qword_28036C858, &dword_26A42D080);
            OUTLINED_FUNCTION_15(v377);
            if (v226)
            {
              OUTLINED_FUNCTION_15(v377 + v374);
              if (!v226)
              {
                goto LABEL_281;
              }

              sub_26A0E48F0(v377, &qword_28036C858, &dword_26A42D080);
              OUTLINED_FUNCTION_158();
            }

            else
            {
              v391 = OUTLINED_FUNCTION_69();
              sub_26A0E4894(v391, v392, &qword_28036C858, &dword_26A42D080);
              OUTLINED_FUNCTION_15(v377 + v374);
              if (v393)
              {
                sub_26A0E49F0();
LABEL_281:
                sub_26A0E48F0(v377, &qword_28036C860, &unk_26A425E10);
LABEL_282:
                sub_26A0E49F0();
                OUTLINED_FUNCTION_102();
                sub_26A0E49F0();
                v436 = &qword_28036C868;
                v437 = &qword_26A42D090;
                goto LABEL_283;
              }

              sub_26A0E4948();
              static _ProtoCommand.OneOf_Value.== infix(_:_:)();
              OUTLINED_FUNCTION_13();
              sub_26A0E49F0();
              OUTLINED_FUNCTION_103();
              sub_26A0E49F0();
              sub_26A0E48F0(v377, &qword_28036C858, &dword_26A42D080);
              OUTLINED_FUNCTION_158();
              if ((&dword_26A42D080 & 1) == 0)
              {
                goto LABEL_282;
              }
            }

            if (*(v378 + v390[5]) != *(&qword_28036C858 + v390[5]) || *(v378 + v390[6]) != *(&qword_28036C858 + v390[6]))
            {
              goto LABEL_282;
            }

            v382 = v473;
            v383 = v474;
            v394 = v390[7];
            sub_26A424794();
            OUTLINED_FUNCTION_0();
            sub_26A0E4A44(qword_2815792E0, v395);
            OUTLINED_FUNCTION_170();
            OUTLINED_FUNCTION_141();
            OUTLINED_FUNCTION_6();
            sub_26A0E49F0();
            OUTLINED_FUNCTION_134();
            v396 = OUTLINED_FUNCTION_126();
            sub_26A0E48F0(v396, v397, &qword_26A42D090);
            if ((&dword_26A42D080 & 1) == 0)
            {
              goto LABEL_284;
            }
          }

          v398 = *v498;
          OUTLINED_FUNCTION_162();
          v400 = *v399;
          v401 = *(v398 + 16);
          if (v401 != *(*v399 + 16))
          {
            goto LABEL_284;
          }

          if (v401 && v398 != v400)
          {
            v402 = 0;
            OUTLINED_FUNCTION_22(v461);
            v463 = v398 + v403;
            while (v402 < *(v398 + 16))
            {
              v362 = *(v461 + 72) * v402;
              OUTLINED_FUNCTION_7();
              sub_26A0E499C();
              if (v402 >= *(v400 + 16))
              {
                goto LABEL_290;
              }

              sub_26A0E499C();
              static _ProtoTextElement.== infix(_:_:)(v382, v383);
              OUTLINED_FUNCTION_5();
              sub_26A0E49F0();
              OUTLINED_FUNCTION_97();
              sub_26A0E49F0();
              if ((v362 & 1) == 0)
              {
                goto LABEL_284;
              }

              if (v401 == ++v402)
              {
                goto LABEL_198;
              }
            }

            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
            goto LABEL_292;
          }

LABEL_198:
          v404 = v498[1];
          OUTLINED_FUNCTION_162();
          v406 = *(v405 + 8);
          OUTLINED_FUNCTION_80();
          if (!v226)
          {
            goto LABEL_284;
          }

          if (v407 && v408 != v409)
          {
            v410 = (v408 + 32);
            v411 = (v409 + 40);
            do
            {
              v413 = *v410;
              v410 += 2;
              v412 = v413;
              v414 = *(v411 - 1);
              if (*v411 == 1)
              {
                switch(v414)
                {
                  case 1:
                    if (v412 != 1)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_208;
                  case 2:
                    if (v412 != 2)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_208;
                  case 3:
                    if (v412 != 3)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_208;
                  case 4:
                    if (v412 != 4)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_208;
                  case 5:
                    if (v412 != 5)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_208;
                  case 6:
                    if (v412 != 6)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_208;
                  case 7:
                    if (v412 != 7)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_208;
                  case 8:
                    if (v412 != 8)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_208;
                  default:
                    if (v412)
                    {
                      goto LABEL_284;
                    }

                    goto LABEL_208;
                }
              }

              if (v412 != v414)
              {
                goto LABEL_284;
              }

LABEL_208:
              v411 += 16;
            }

            while (--v407);
          }

          OUTLINED_FUNCTION_99(v505);
          OUTLINED_FUNCTION_0();
          sub_26A0E4A44(qword_2815792E0, v415);
          OUTLINED_FUNCTION_141();
          OUTLINED_FUNCTION_3();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_103();
          sub_26A0E49F0();
          v205 = v509;
          OUTLINED_FUNCTION_93();
          v360 = v487;
          v204 = &off_26A427400;
          v368 = v451;
          if ((v362 & 1) == 0)
          {
            goto LABEL_285;
          }

          OUTLINED_FUNCTION_163(&v479);
        }

        while (v362 != v416);
      }

      v417 = v360[1];
      v418 = v360[2];
      OUTLINED_FUNCTION_52(&a16);
      v421 = v226 && v419 == v420;
      if (!v421 && (sub_26A425354() & 1) == 0)
      {
LABEL_285:
        sub_26A0E49F0();
        sub_26A0E49F0();
        v433 = &off_28036C7C0;
        v434 = &off_26A427400;
        v435 = v499;
LABEL_286:
        sub_26A0E48F0(v435, v433, v434);
LABEL_287:
        sub_26A0E49F0();
        sub_26A0E49F0();
LABEL_288:
        OUTLINED_FUNCTION_57();
        OUTLINED_FUNCTION_75();
        return;
      }

      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v422);
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_4();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_134();
      sub_26A0E48F0(v499, &off_28036C7C0, v204);
      if ((v362 & 1) == 0)
      {
        goto LABEL_287;
      }
    }

    v423 = v490[1];
    v424 = v519[1];
    sub_26A0DDB54();
    if ((v425 & 1) == 0)
    {
      goto LABEL_287;
    }

    v426 = v490[2] == v519[2] && v490[3] == v519[3];
    if (!v426 && (sub_26A425354() & 1) == 0)
    {
      goto LABEL_287;
    }

    OUTLINED_FUNCTION_139(&v480);
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v427);
    v428 = sub_26A424B64();
    sub_26A0E49F0();
    sub_26A0E49F0();
    if (v428)
    {
      v200 = v456 + 1;
      v199 = v490;
      v21 = v464;
      if (v456 + 1 != v462)
      {
        continue;
      }
    }

    goto LABEL_288;
  }

  v214 = 0;
  OUTLINED_FUNCTION_22(v514);
  v459 = v210 + v215;
  v458 = v211 + v215;
  v453 = v210;
  v452 = v211;
  v451 = v216;
  while (1)
  {
    if (v214 >= *(v210 + 16))
    {
      goto LABEL_291;
    }

    v217 = *(v514 + 72) * v214;
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_51(&v479);
    sub_26A0E499C();
    if (v214 >= *(v211 + 16))
    {
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
      goto LABEL_296;
    }

    v463 = v214;
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_51(&v478);
    sub_26A0E499C();
    v218 = *(v508 + 48);
    v219 = v515;
    v220 = &unk_26A425E60;
    sub_26A0E4894(v213, v515, &qword_28036C8B0, &unk_26A425E60);
    sub_26A0E4894(v21, v219 + v218, &qword_28036C8B0, &unk_26A425E60);
    v221 = OUTLINED_FUNCTION_155();
    v222 = v516;
    OUTLINED_FUNCTION_25(v221, v223);
    if (!v226)
    {
      break;
    }

    OUTLINED_FUNCTION_15(v219 + v218);
    if (!v226)
    {
      goto LABEL_245;
    }

LABEL_152:
    sub_26A0E48F0(v219, &qword_28036C8B0, &unk_26A425E60);
    v213 = v518;
    v348 = *(v517 + 24);
    v349 = *(v501 + 48);
    sub_26A0E4894(v518 + v348, v205, &qword_28036C898, &qword_26A425E48);
    sub_26A0E4894(v21 + v348, v349 + v205, &qword_28036C898, &qword_26A425E48);
    v350 = OUTLINED_FUNCTION_72();
    v214 = v502;
    OUTLINED_FUNCTION_19(v350, v351);
    if (v226)
    {
      OUTLINED_FUNCTION_9(v349 + v205);
      if (!v226)
      {
        goto LABEL_248;
      }

      v352 = OUTLINED_FUNCTION_103();
      sub_26A0E48F0(v352, v353, &qword_26A425E48);
    }

    else
    {
      v21 = v204;
      v354 = v485;
      sub_26A0E4894(v205, v485, &qword_28036C898, &qword_26A425E48);
      OUTLINED_FUNCTION_9(v349 + v205);
      if (v355)
      {
        sub_26A0E49F0();
        OUTLINED_FUNCTION_91();
LABEL_248:
        sub_26A0E48F0(v205, &qword_28036C8A0, &unk_26A425E50);
        goto LABEL_279;
      }

      OUTLINED_FUNCTION_59(&v514);
      sub_26A0E4948();
      if (*v354 != *v349)
      {
        sub_26A0E49F0();
        sub_26A0E49F0();
        sub_26A0E48F0(v205, &qword_28036C898, &qword_26A425E48);
        OUTLINED_FUNCTION_91();
        goto LABEL_279;
      }

      v356 = *(v214 + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v357);
      v214 = sub_26A424B64();
      v205 = v509;
      sub_26A0E49F0();
      sub_26A0E49F0();
      sub_26A0E48F0(v205, &qword_28036C898, &qword_26A425E48);
      v204 = v21;
      OUTLINED_FUNCTION_91();
      if ((v214 & 1) == 0)
      {
        goto LABEL_279;
      }
    }

    v209 = *(v517 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v358);
    OUTLINED_FUNCTION_170();
    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_65();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_134();
    v210 = v453;
    v211 = v452;
    if ((v214 & 1) == 0)
    {
      goto LABEL_287;
    }

    OUTLINED_FUNCTION_163(&v482);
    if (v214 == v359)
    {
      goto LABEL_162;
    }
  }

  v224 = OUTLINED_FUNCTION_156();
  sub_26A0E4894(v224, v225, &qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_15(v219 + v218);
  if (v226)
  {
    sub_26A0E49F0();
LABEL_245:
    v429 = &qword_28036C8B8;
    v430 = &qword_26A440DD0;
    v431 = v219;
    goto LABEL_278;
  }

  v227 = v507;
  sub_26A0E4948();
  v228 = v222;
  v229 = *(v489 + 48);
  v230 = v503;
  sub_26A0E499C();
  sub_26A0E499C();
  OUTLINED_FUNCTION_98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_89(&v497);
    sub_26A0E499C();
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_256;
    }

    sub_26A0E4948();
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v238);
    v239 = sub_26A424B64();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_134();
    OUTLINED_FUNCTION_33();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_93();
    if ((v239 & 1) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_151;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_89(&v516);
    sub_26A0E499C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_256;
    }

    OUTLINED_FUNCTION_59(&a15);
    sub_26A0E4948();
    v232 = *v228;
    v233 = *v230;
    sub_26A0DB78C();
    OUTLINED_FUNCTION_93();
    if ((v234 & 1) == 0 || *(v228 + 8) != *(v230 + 8))
    {
      goto LABEL_276;
    }

    v235 = *(v484 + 32);
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_89(&v507);
    OUTLINED_FUNCTION_123(v236, v237);
    OUTLINED_FUNCTION_123(v230 + v235, v228 + v230);
    OUTLINED_FUNCTION_19(v228, 1);
    if (v226)
    {
      OUTLINED_FUNCTION_9(v228 + v230);
      if (!v226)
      {
        goto LABEL_273;
      }

      sub_26A0E48F0(v228, &off_28036C7C0, &off_26A427400);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      v275 = v479;
      OUTLINED_FUNCTION_123(v228, v479);
      OUTLINED_FUNCTION_9(v228 + v230);
      v277 = v228;
      v228 = v481;
      if (v276)
      {
        sub_26A0E49F0();
        v228 = v277;
        goto LABEL_273;
      }

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_59(&v505);
      sub_26A0E4948();
      OUTLINED_FUNCTION_73(*v275);
      v278 = v472[0];
      if (!v226)
      {
        goto LABEL_264;
      }

      if (v442)
      {
        OUTLINED_FUNCTION_96();
        if (v279 != v443)
        {
          OUTLINED_FUNCTION_22(v512);
          OUTLINED_FUNCTION_74(v280);
          do
          {
            OUTLINED_FUNCTION_77(v472);
            if (v281)
            {
              goto LABEL_300;
            }

            v21 = v205;
            OUTLINED_FUNCTION_101();
            v230 = 0;
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_51(v470);
            sub_26A0E499C();
            OUTLINED_FUNCTION_77(&v471);
            if (v281)
            {
              goto LABEL_301;
            }

            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_51(&v469);
            OUTLINED_FUNCTION_89(&v512);
            sub_26A0E499C();
            OUTLINED_FUNCTION_54();
            sub_26A0E4894(v228 + v277, v278, &qword_28036C868, &qword_26A42D090);
            OUTLINED_FUNCTION_138(v228 + v277, v278);
            v277 = v492;
            OUTLINED_FUNCTION_19(v278, 1);
            if (v226)
            {
              OUTLINED_FUNCTION_9(v278);
              v228 = v481;
              v204 = &off_26A427400;
              v21 = v464;
              if (!v226)
              {
                goto LABEL_262;
              }

              sub_26A0E48F0(v278, &qword_28036C868, &qword_26A42D090);
              v282 = v483;
            }

            else
            {
              v283 = OUTLINED_FUNCTION_167();
              sub_26A0E4894(v283, v284, &qword_28036C868, &qword_26A42D090);
              OUTLINED_FUNCTION_9(v278);
              v204 = &off_26A427400;
              if (v285)
              {
                sub_26A0E49F0();
                OUTLINED_FUNCTION_91();
LABEL_262:
                sub_26A0E48F0(v278, &qword_28036C870, &unk_26A425E20);
LABEL_263:
                sub_26A0E49F0();
                OUTLINED_FUNCTION_187();
                goto LABEL_264;
              }

              OUTLINED_FUNCTION_59(&v492);
              sub_26A0E4948();
              OUTLINED_FUNCTION_44();
              static _ProtoCommand.== infix(_:_:)();
              OUTLINED_FUNCTION_6();
              sub_26A0E49F0();
              v278 = v472[0];
              sub_26A0E49F0();
              sub_26A0E48F0(v278, &qword_28036C868, &qword_26A42D090);
              v282 = v483;
              v228 = v481;
              OUTLINED_FUNCTION_91();
              if ((v277 & 1) == 0)
              {
                goto LABEL_263;
              }
            }

            v286 = *v228;
            v287 = *v282;
            OUTLINED_FUNCTION_67();
            sub_26A0D98B4();
            if ((v288 & 1) == 0 || (sub_26A0DB6A0(*(v228 + 8), v282[1]) & 1) == 0)
            {
              goto LABEL_263;
            }

            OUTLINED_FUNCTION_99(v505);
            OUTLINED_FUNCTION_0();
            sub_26A0E4A44(qword_2815792E0, v289);
            OUTLINED_FUNCTION_170();
            OUTLINED_FUNCTION_117();
            OUTLINED_FUNCTION_3();
            sub_26A0E49F0();
            OUTLINED_FUNCTION_134();
            if ((v277 & 1) == 0)
            {
              goto LABEL_264;
            }

            OUTLINED_FUNCTION_149();
          }

          while (!v226);
        }
      }

      OUTLINED_FUNCTION_150(&v506);
      OUTLINED_FUNCTION_52(&v505);
      if (v226)
      {
        v292 = v290 == v291;
      }

      else
      {
        v292 = 0;
      }

      if (!v292 && (sub_26A425354() & 1) == 0)
      {
LABEL_264:
        sub_26A0E49F0();
        OUTLINED_FUNCTION_189(&v506);
        v438 = &off_28036C7C0;
        v439 = &off_26A427400;
        v440 = v480;
        goto LABEL_274;
      }

      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v293);
      v220 = v478;
      sub_26A424B64();
      OUTLINED_FUNCTION_4();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_167();
      sub_26A0E49F0();
      sub_26A0E48F0(v480, &off_28036C7C0, v204);
      OUTLINED_FUNCTION_34();
      if ((v277 & 1) == 0)
      {
        goto LABEL_276;
      }
    }

    v294 = *(v484 + 36);
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_89(&v500);
    OUTLINED_FUNCTION_123(v295, v296);
    OUTLINED_FUNCTION_123(v230 + v294, v228 + v230);
    v297 = v513;
    OUTLINED_FUNCTION_19(v228, 1);
    if (v226)
    {
      OUTLINED_FUNCTION_9(v228 + v230);
      if (!v226)
      {
        goto LABEL_273;
      }

      v204 = &off_26A427400;
      sub_26A0E48F0(v228, &off_28036C7C0, &off_26A427400);
      OUTLINED_FUNCTION_34();
LABEL_97:
      if (*(v228 + 9) != *(v230 + 9))
      {
        goto LABEL_276;
      }

      OUTLINED_FUNCTION_139(&v513);
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v308);
      OUTLINED_FUNCTION_170();
      if ((sub_26A424B64() & 1) == 0)
      {
        goto LABEL_276;
      }

      sub_26A0E49F0();
      OUTLINED_FUNCTION_187();
LABEL_150:
      sub_26A0E49F0();
LABEL_151:
      sub_26A0E49F0();
      OUTLINED_FUNCTION_127();
      sub_26A0E49F0();
      v219 = v515;
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_128(&v496);
    OUTLINED_FUNCTION_123(v298, v299);
    OUTLINED_FUNCTION_9(v228 + v230);
    if (!v300)
    {
      OUTLINED_FUNCTION_59(&v494);
      sub_26A0E4948();
      OUTLINED_FUNCTION_130();
      if (!v226)
      {
        goto LABEL_246;
      }

      if (v227 && v205 != v220)
      {
        v301 = 0;
        OUTLINED_FUNCTION_22(v512);
        OUTLINED_FUNCTION_165(v302);
        while (v301 < *(v205 + 16))
        {
          OUTLINED_FUNCTION_101();
          v297 = v303 * v301;
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_96();
          OUTLINED_FUNCTION_59(&a14);
          sub_26A0E499C();
          if (v301 >= v220[2])
          {
            goto LABEL_295;
          }

          OUTLINED_FUNCTION_89(&a13);
          sub_26A0E499C();
          OUTLINED_FUNCTION_98();
          static _ProtoActionElement.== infix(_:_:)();
          OUTLINED_FUNCTION_3();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_97();
          sub_26A0E49F0();
          if ((v297 & 1) == 0)
          {
            goto LABEL_246;
          }

          if (v227 == ++v301)
          {
            goto LABEL_91;
          }
        }

        goto LABEL_294;
      }

LABEL_91:
      OUTLINED_FUNCTION_150(&v496);
      OUTLINED_FUNCTION_52(&v494);
      if (v226)
      {
        v306 = v304 == v305;
      }

      else
      {
        v306 = 0;
      }

      if (!v306 && (sub_26A425354() & 1) == 0)
      {
LABEL_246:
        sub_26A0E49F0();
        OUTLINED_FUNCTION_189(&v496);
        sub_26A0E48F0(v476[0], &off_28036C7C0, &off_26A427400);
        OUTLINED_FUNCTION_93();
LABEL_275:
        OUTLINED_FUNCTION_34();
LABEL_276:
        sub_26A0E49F0();
        OUTLINED_FUNCTION_187();
        OUTLINED_FUNCTION_33();
        sub_26A0E49F0();
        goto LABEL_277;
      }

      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v307);
      OUTLINED_FUNCTION_137(&v494);
      OUTLINED_FUNCTION_4();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_100();
      sub_26A0E49F0();
      v204 = &off_26A427400;
      sub_26A0E48F0(v476[0], &off_28036C7C0, &off_26A427400);
      v205 = v509;
      OUTLINED_FUNCTION_93();
      OUTLINED_FUNCTION_34();
      if ((v297 & 1) == 0)
      {
        goto LABEL_276;
      }

      goto LABEL_97;
    }

    sub_26A0E49F0();
LABEL_273:
    v438 = &qword_28036C7C8;
    v439 = &qword_26A425C00;
    v440 = v228;
LABEL_274:
    sub_26A0E48F0(v440, v438, v439);
    goto LABEL_275;
  }

  v240 = v500;
  sub_26A0E499C();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_256:
    sub_26A0E49F0();
    OUTLINED_FUNCTION_93();
    sub_26A0E48F0(v230, &qword_28036C8A8, &unk_26A440DB0);
    goto LABEL_277;
  }

  v241 = v504;
  sub_26A0E4948();
  v242 = *v240;
  v243 = *v241;
  v244 = *(*v240 + 16);
  v245 = v455;
  if (v244 != *(*v241 + 16))
  {
    goto LABEL_271;
  }

  if (v244 && v242 != v243)
  {
    v246 = (*(v466 + 80) + 32) & ~*(v466 + 80);
    v229 = v242 + v246;
    v247 = v243 + v246;
    v444 = *(v466 + 72);
    do
    {
      v248 = v245;
      v249 = v511;
      sub_26A0E499C();
      v250 = v510;
      sub_26A0E499C();
      OUTLINED_FUNCTION_86(&a11);
      OUTLINED_FUNCTION_164(&a12);
      sub_26A0E4894(v251, v252, &qword_28036C838, &qword_26A439300);
      OUTLINED_FUNCTION_144(v250, v249 + v230);
      v253 = OUTLINED_FUNCTION_155();
      v254 = v450;
      OUTLINED_FUNCTION_37(v253, v255, v450);
      if (v226)
      {
        v256 = OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_37(v256, v257, v254);
        if (!v226)
        {
          sub_26A0E49F0();
LABEL_252:
          sub_26A0E49F0();
          sub_26A0E48F0(v494, &qword_28036C840, &unk_26A425DF0);
          OUTLINED_FUNCTION_91();
          goto LABEL_271;
        }

        sub_26A0E48F0(v249, &qword_28036C838, &qword_26A439300);
        v245 = v248;
      }

      else
      {
        v258 = OUTLINED_FUNCTION_156();
        OUTLINED_FUNCTION_144(v258, v259);
        v260 = OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_37(v260, v261, v254);
        if (v262)
        {
          sub_26A0E49F0();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_31();
          goto LABEL_252;
        }

        OUTLINED_FUNCTION_129(&v511);
        sub_26A0E4948();
        static _ProtoVisualElement.OneOf_Element.== infix(_:_:)(v455, qword_2815792E0);
        OUTLINED_FUNCTION_30();
        v245 = v455;
        sub_26A0E49F0();
        OUTLINED_FUNCTION_171();
        sub_26A0E49F0();
        v263 = OUTLINED_FUNCTION_98();
        sub_26A0E48F0(v263, v264, &qword_26A439300);
        if ((v249 & 1) == 0)
        {
          sub_26A0E49F0();
          sub_26A0E49F0();
          OUTLINED_FUNCTION_91();
          goto LABEL_271;
        }
      }

      v230 = *(v491 + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_0();
      sub_26A0E4A44(qword_2815792E0, v265);
      v21 = v511;
      sub_26A424B64();
      OUTLINED_FUNCTION_63();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_180();
      sub_26A0E49F0();
      v241 = v504;
      OUTLINED_FUNCTION_91();
      if ((v249 & 1) == 0)
      {
        goto LABEL_271;
      }

      OUTLINED_FUNCTION_96();
      v247 += v266;
      v229 += v266;
      --v244;
    }

    while (v244);
  }

  if (*(v500 + 8) != v241[8])
  {
    goto LABEL_271;
  }

  v267 = *(v482 + 32);
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_148(v495);
  sub_26A0E4894(v268, v269, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_136(&v241[v267], v244 + v230);
  v270 = OUTLINED_FUNCTION_72();
  v271 = v513;
  OUTLINED_FUNCTION_19(v270, v272);
  if (v226)
  {
    OUTLINED_FUNCTION_9(v244 + v230);
    if (!v226)
    {
      goto LABEL_258;
    }

    v273 = OUTLINED_FUNCTION_104();
    sub_26A0E48F0(v273, v274, &off_26A427400);
  }

  else
  {
    OUTLINED_FUNCTION_128(&v491);
    OUTLINED_FUNCTION_136(v309, v310);
    OUTLINED_FUNCTION_9(v244 + v230);
    if (v311)
    {
LABEL_257:
      sub_26A0E49F0();
LABEL_258:
      sub_26A0E48F0(v244, &qword_28036C7C8, &qword_26A425C00);
      goto LABEL_271;
    }

    OUTLINED_FUNCTION_59(&v490);
    sub_26A0E4948();
    OUTLINED_FUNCTION_73(*v229);
    v312 = v465;
    v244 = v475;
    if (!v226)
    {
      goto LABEL_269;
    }

    if (v442)
    {
      OUTLINED_FUNCTION_96();
      if (v313 != v443)
      {
        OUTLINED_FUNCTION_22(v512);
        OUTLINED_FUNCTION_74(v314);
        do
        {
          OUTLINED_FUNCTION_77(v472);
          if (v281)
          {
            goto LABEL_302;
          }

          OUTLINED_FUNCTION_101();
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_51(v470);
          OUTLINED_FUNCTION_128(&v501);
          sub_26A0E499C();
          OUTLINED_FUNCTION_77(&v471);
          if (v281)
          {
            goto LABEL_303;
          }

          OUTLINED_FUNCTION_51(&v469);
          sub_26A0E499C();
          OUTLINED_FUNCTION_54();
          v315 = v468;
          sub_26A0E4894(v229 + v271, v468, &qword_28036C868, &qword_26A42D090);
          OUTLINED_FUNCTION_185(v244 + v271, v315);
          v271 = v492;
          OUTLINED_FUNCTION_19(v315, 1);
          if (v226)
          {
            OUTLINED_FUNCTION_9(v315);
            v316 = v315;
            if (!v226)
            {
              goto LABEL_267;
            }

            sub_26A0E48F0(v315, &qword_28036C868, &qword_26A42D090);
            v244 = v475;
          }

          else
          {
            OUTLINED_FUNCTION_185(v315, v312);
            OUTLINED_FUNCTION_9(v315);
            if (v317)
            {
              sub_26A0E49F0();
              v316 = v315;
LABEL_267:
              sub_26A0E48F0(v316, &qword_28036C870, &unk_26A425E20);
LABEL_268:
              sub_26A0E49F0();
              OUTLINED_FUNCTION_157();
              sub_26A0E49F0();
              goto LABEL_269;
            }

            OUTLINED_FUNCTION_59(&v492);
            sub_26A0E4948();
            OUTLINED_FUNCTION_66();
            static _ProtoCommand.== infix(_:_:)();
            OUTLINED_FUNCTION_6();
            sub_26A0E49F0();
            OUTLINED_FUNCTION_106();
            v229 = v476[1];
            sub_26A0E49F0();
            v318 = OUTLINED_FUNCTION_50();
            sub_26A0E48F0(v318, v319, &qword_26A42D090);
            v244 = v475;
            if ((v271 & 1) == 0)
            {
              goto LABEL_268;
            }
          }

          v320 = *v229;
          v321 = *v244;
          OUTLINED_FUNCTION_67();
          sub_26A0D98B4();
          if ((v322 & 1) == 0 || (sub_26A0DB6A0(*(v229 + 8), *(v244 + 8)) & 1) == 0)
          {
            goto LABEL_268;
          }

          OUTLINED_FUNCTION_99(v505);
          OUTLINED_FUNCTION_0();
          sub_26A0E4A44(qword_2815792E0, v323);
          sub_26A424B64();
          OUTLINED_FUNCTION_3();
          v230 = v229;
          v229 = v324;
          sub_26A0E49F0();
          OUTLINED_FUNCTION_97();
          sub_26A0E49F0();
          if ((v271 & 1) == 0)
          {
            goto LABEL_269;
          }

          OUTLINED_FUNCTION_149();
        }

        while (!v226);
      }
    }

    OUTLINED_FUNCTION_150(&v491);
    OUTLINED_FUNCTION_52(&v490);
    if (v226)
    {
      v327 = v325 == v326;
    }

    else
    {
      v327 = 0;
    }

    if (!v327 && (sub_26A425354() & 1) == 0)
    {
LABEL_269:
      sub_26A0E49F0();
      OUTLINED_FUNCTION_189(&v491);
      v432 = v495;
LABEL_270:
      sub_26A0E48F0(*(v432 - 32), &off_28036C7C0, &off_26A427400);
LABEL_271:
      sub_26A0E49F0();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_33();
      sub_26A0E49F0();
      OUTLINED_FUNCTION_93();
LABEL_277:
      sub_26A0E49F0();
      OUTLINED_FUNCTION_127();
      sub_26A0E49F0();
      v429 = &qword_28036C8B0;
      v430 = &unk_26A425E60;
      v431 = v515;
LABEL_278:
      sub_26A0E48F0(v431, v429, v430);
LABEL_279:
      sub_26A0E49F0();
      OUTLINED_FUNCTION_187();
      goto LABEL_287;
    }

    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v328);
    OUTLINED_FUNCTION_137(&v490);
    OUTLINED_FUNCTION_4();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_100();
    sub_26A0E49F0();
    sub_26A0E48F0(v472[2], &off_28036C7C0, &off_26A427400);
    v241 = v504;
    if ((v271 & 1) == 0)
    {
      goto LABEL_271;
    }
  }

  v329 = *(v482 + 36);
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_148(&v489);
  sub_26A0E4894(v330, v331, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_136(&v241[v329], v244 + v230);
  v332 = OUTLINED_FUNCTION_72();
  v333 = v513;
  OUTLINED_FUNCTION_19(v332, v334);
  if (v226)
  {
    OUTLINED_FUNCTION_9(v244 + v230);
    if (!v226)
    {
      goto LABEL_258;
    }

    v335 = OUTLINED_FUNCTION_104();
    sub_26A0E48F0(v335, v336, &off_26A427400);
LABEL_147:
    if (*(v500 + 9) != v241[9])
    {
      goto LABEL_271;
    }

    OUTLINED_FUNCTION_139(&v510);
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v347);
    if ((sub_26A424B64() & 1) == 0)
    {
      goto LABEL_271;
    }

    sub_26A0E49F0();
    sub_26A0E49F0();
    v205 = v509;
    OUTLINED_FUNCTION_93();
    v204 = &off_26A427400;
    goto LABEL_150;
  }

  OUTLINED_FUNCTION_128(&v487);
  OUTLINED_FUNCTION_136(v337, v338);
  OUTLINED_FUNCTION_9(v244 + v230);
  if (v339)
  {
    goto LABEL_257;
  }

  OUTLINED_FUNCTION_59(&v486);
  sub_26A0E4948();
  OUTLINED_FUNCTION_130();
  if (!v226)
  {
    goto LABEL_250;
  }

  if (!&off_26A427400 || v244 == &off_28036C7C0)
  {
LABEL_141:
    OUTLINED_FUNCTION_150(&v487);
    OUTLINED_FUNCTION_52(&v486);
    if (v226)
    {
      v345 = v343 == v344;
    }

    else
    {
      v345 = 0;
    }

    if (!v345 && (sub_26A425354() & 1) == 0)
    {
LABEL_250:
      sub_26A0E49F0();
      OUTLINED_FUNCTION_189(&v487);
      v432 = &v489;
      goto LABEL_270;
    }

    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v346);
    OUTLINED_FUNCTION_137(&v486);
    OUTLINED_FUNCTION_4();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_100();
    sub_26A0E49F0();
    sub_26A0E48F0(v469, &off_28036C7C0, &off_26A427400);
    v241 = v504;
    if ((v333 & 1) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_147;
  }

  v340 = 0;
  OUTLINED_FUNCTION_22(v512);
  OUTLINED_FUNCTION_165(v341);
  while (v340 < *(v244 + 16))
  {
    OUTLINED_FUNCTION_101();
    v333 = v342 * v340;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_59(&a14);
    sub_26A0E499C();
    if (v340 >= qword_28036C7D0)
    {
      goto LABEL_297;
    }

    OUTLINED_FUNCTION_89(&a13);
    sub_26A0E499C();
    OUTLINED_FUNCTION_98();
    static _ProtoActionElement.== infix(_:_:)();
    OUTLINED_FUNCTION_3();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_97();
    sub_26A0E49F0();
    if ((v333 & 1) == 0)
    {
      goto LABEL_250;
    }

    if (&off_26A427400 == ++v340)
    {
      goto LABEL_141;
    }
  }

LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
}

void sub_26A0E3268()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v6 = v5;
  v52 = type metadata accessor for _ProtoTable.Content(0);
  v7 = OUTLINED_FUNCTION_12(v52);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C888, &qword_26A440D90);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_55();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C890, &qword_26A425E40);
  OUTLINED_FUNCTION_12(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_36();
  v54 = type metadata accessor for _ProtoTable.HeaderCell(v18);
  v19 = OUTLINED_FUNCTION_10(v54);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_83();
  v27 = *(v6 + 16);
  if (v27 != *(v4 + 16) || !v27 || v6 == v4)
  {
    goto LABEL_31;
  }

  v49 = v2;
  v50 = v0;
  OUTLINED_FUNCTION_20(v26);
  v29 = v6 + v28;
  OUTLINED_FUNCTION_146(v30);
  v51 = v31;
  v32 = v52;
  while (1)
  {
    OUTLINED_FUNCTION_180();
    sub_26A0E499C();
    v53 = v29;
    OUTLINED_FUNCTION_124();
    sub_26A0E499C();
    v33 = *(v54 + 28);
    v34 = *(v14 + 48);
    sub_26A0E4894(v2 + v33, v1, &qword_28036C888, &qword_26A440D90);
    sub_26A0E4894(v24 + v33, v1 + v34, &qword_28036C888, &qword_26A440D90);
    v35 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v35, v36, v32);
    if (!v43)
    {
      break;
    }

    v37 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_37(v37, v38, v32);
    if (!v43)
    {
      goto LABEL_29;
    }

    v39 = OUTLINED_FUNCTION_88();
    sub_26A0E48F0(v39, v40, &qword_26A440D90);
LABEL_12:
    if (*v2 != *v24)
    {
      goto LABEL_30;
    }

    v44 = *(v2 + 8);
    v45 = *(v24 + 8);
    if (*(v24 + 16) == 1)
    {
      switch(v45)
      {
        case 1:
          if (v44 != 1)
          {
            goto LABEL_30;
          }

          goto LABEL_18;
        case 2:
          if (v44 != 2)
          {
            goto LABEL_30;
          }

          goto LABEL_18;
        case 3:
          if (v44 != 3)
          {
            goto LABEL_30;
          }

          goto LABEL_18;
        default:
          if (v44)
          {
            goto LABEL_30;
          }

          goto LABEL_18;
      }
    }

    if (v44 != v45)
    {
      goto LABEL_30;
    }

LABEL_18:
    v46 = *(v54 + 24);
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v47);
    v48 = OUTLINED_FUNCTION_183();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_166();
    sub_26A0E49F0();
    if (v48)
    {
      v6 += v51;
      v29 = v53 + v51;
      if (--v27)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  sub_26A0E4894(v1, v50, &qword_28036C888, &qword_26A440D90);
  v41 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_37(v41, v42, v32);
  if (!v43)
  {
    sub_26A0E4948();
    OUTLINED_FUNCTION_102();
    static _ProtoTable.Content.== infix(_:_:)();
    OUTLINED_FUNCTION_65();
    v32 = v52;
    sub_26A0E49F0();
    OUTLINED_FUNCTION_145();
    sub_26A0E48F0(v1, &qword_28036C888, &qword_26A440D90);
    v2 = v49;
    if ((v34 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  sub_26A0E49F0();
LABEL_29:
  sub_26A0E48F0(v1, &qword_28036C890, &qword_26A425E40);
LABEL_30:
  sub_26A0E49F0();
  OUTLINED_FUNCTION_109();
  sub_26A0E49F0();
LABEL_31:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_75();
}

void sub_26A0E36D8()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for _ProtoTextElement(0);
  v8 = OUTLINED_FUNCTION_79_0(v7);
  v107 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_178();
  v14 = type metadata accessor for _ProtoCommand.OneOf_Value(v13);
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C858, &dword_26A42D080);
  OUTLINED_FUNCTION_41(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_181();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C860, &unk_26A425E10);
  OUTLINED_FUNCTION_12(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_56();
  v102 = type metadata accessor for _ProtoCommand(0);
  v26 = OUTLINED_FUNCTION_12(v102);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C868, &qword_26A42D090);
  OUTLINED_FUNCTION_41(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_42();
  v100 = v36;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C870, &unk_26A425E20);
  OUTLINED_FUNCTION_12(v101);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_38(v40);
  v104 = type metadata accessor for _ProtoActionElement(0);
  v41 = OUTLINED_FUNCTION_10(v104);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_21();
  v106 = (v44 - v45);
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v46);
  v105 = (&v89 - v47);
  v48 = *(v6 + 16);
  OUTLINED_FUNCTION_154();
  if (!v63 || !v50 || v6 == v4)
  {
LABEL_41:
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_75();
    return;
  }

  v90 = v1;
  v91 = v31;
  v89 = v0;
  v51 = 0;
  OUTLINED_FUNCTION_20(v49);
  v96 = v2;
  v97 = v4 + v52;
  v54 = *(v53 + 72);
  v92 = v14;
  v93 = v54;
  v94 = v6 + v52;
  v95 = v22;
  v55 = v105;
  v99 = v56;
  while (1)
  {
    OUTLINED_FUNCTION_2();
    sub_26A0E499C();
    if (v51 == v99)
    {
      goto LABEL_44;
    }

    v98 = v51;
    OUTLINED_FUNCTION_2();
    v57 = v106;
    sub_26A0E499C();
    v58 = v103;
    v59 = *(v104 + 28);
    v60 = *(v101 + 48);
    sub_26A0E4894(v55 + v59, v103, &qword_28036C868, &qword_26A42D090);
    OUTLINED_FUNCTION_138(v57 + v59, v58 + v60);
    v61 = v102;
    OUTLINED_FUNCTION_19(v58, 1);
    if (v63)
    {
      OUTLINED_FUNCTION_9(v58 + v60);
      if (!v63)
      {
        goto LABEL_35;
      }

      sub_26A0E48F0(v58, &qword_28036C868, &qword_26A42D090);
      goto LABEL_23;
    }

    v62 = v100;
    OUTLINED_FUNCTION_138(v58, v100);
    OUTLINED_FUNCTION_9(v58 + v60);
    if (v63)
    {
      sub_26A0E49F0();
LABEL_35:
      v86 = &qword_28036C870;
      v87 = &unk_26A425E20;
      v88 = v58;
      goto LABEL_39;
    }

    v64 = v91;
    sub_26A0E4948();
    v65 = *(v22 + 48);
    v66 = OUTLINED_FUNCTION_124();
    sub_26A0E4894(v66, v67, &qword_28036C858, &dword_26A42D080);
    OUTLINED_FUNCTION_185(v64, v2 + v65);
    v68 = OUTLINED_FUNCTION_107();
    v69 = v92;
    OUTLINED_FUNCTION_37(v68, v70, v92);
    if (!v63)
    {
      OUTLINED_FUNCTION_185(v2, v90);
      OUTLINED_FUNCTION_37(v2 + v65, 1, v69);
      if (!v74)
      {
        sub_26A0E4948();
        static _ProtoCommand.OneOf_Value.== infix(_:_:)();
        v73 = v61;
        OUTLINED_FUNCTION_13();
        sub_26A0E49F0();
        sub_26A0E49F0();
        v75 = OUTLINED_FUNCTION_161();
        sub_26A0E48F0(v75, v76, &dword_26A42D080);
        v62 = v100;
        if ((v61 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_20;
      }

      sub_26A0E49F0();
LABEL_37:
      sub_26A0E48F0(v2, &qword_28036C860, &unk_26A425E10);
LABEL_38:
      sub_26A0E49F0();
      sub_26A0E49F0();
      v86 = &qword_28036C868;
      v87 = &qword_26A42D090;
      v88 = v103;
LABEL_39:
      sub_26A0E48F0(v88, v86, v87);
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_37(v2 + v65, 1, v69);
    if (!v63)
    {
      goto LABEL_37;
    }

    v71 = OUTLINED_FUNCTION_161();
    sub_26A0E48F0(v71, v72, &dword_26A42D080);
    v73 = v61;
LABEL_20:
    if (*(v62 + v73[5]) != *(v64 + v73[5]) || *(v62 + v73[6]) != *(v64 + v73[6]))
    {
      goto LABEL_38;
    }

    v77 = v73[7];
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v78);
    sub_26A424B64();
    OUTLINED_FUNCTION_6();
    sub_26A0E49F0();
    sub_26A0E49F0();
    sub_26A0E48F0(v103, &qword_28036C868, &qword_26A42D090);
    if ((v61 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_23:
    v79 = *v105;
    v80 = *v106;
    v81 = *(*v105 + 16);
    if (v81 != *(*v106 + 16))
    {
      goto LABEL_40;
    }

    if (v81 && v79 != v80)
    {
      break;
    }

    if ((sub_26A0DB6A0(v105[1], v106[1]) & 1) == 0)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_99(v104);
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v85);
    v55 = v105;
    sub_26A424B64();
    OUTLINED_FUNCTION_3();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_171();
    sub_26A0E49F0();
    if (v61)
    {
      v51 = v98 + 1;
      v22 = v95;
      v2 = v96;
      if (v98 + 1 != v99)
      {
        continue;
      }
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_22(v107);
  if (*(v79 + 16))
  {
    v82 = *(v107 + 72);
    OUTLINED_FUNCTION_7();
    sub_26A0E499C();
    if (*(v80 + 16))
    {
      sub_26A0E499C();
      v83 = OUTLINED_FUNCTION_125();
      static _ProtoTextElement.== infix(_:_:)(v83, v84);
      OUTLINED_FUNCTION_5();
      sub_26A0E49F0();
      sub_26A0E49F0();
LABEL_40:
      sub_26A0E49F0();
      sub_26A0E49F0();
      goto LABEL_41;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_26A0E3F04()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v6 = v5;
  v57 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  v7 = OUTLINED_FUNCTION_12(v57);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_55();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C900, &unk_26A425EB0);
  OUTLINED_FUNCTION_12(v59);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_36();
  v58 = type metadata accessor for _ProtoPlayer(v17);
  v18 = OUTLINED_FUNCTION_10(v58);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_83();
  v26 = *(v6 + 16);
  if (v26 != *(v4 + 16) || !v26 || v6 == v4)
  {
    goto LABEL_25;
  }

  v53 = v2;
  v54 = v0;
  OUTLINED_FUNCTION_20(v25);
  v28 = v6 + v27;
  OUTLINED_FUNCTION_146(v29);
  v56 = v30;
  v31 = v57;
  while (1)
  {
    OUTLINED_FUNCTION_171();
    sub_26A0E499C();
    OUTLINED_FUNCTION_124();
    sub_26A0E499C();
    v32 = *(v59 + 48);
    sub_26A0E4894(v2, v1, &qword_28036C8F8, &unk_26A426440);
    sub_26A0E4894(v23, v1 + v32, &qword_28036C8F8, &unk_26A426440);
    v33 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v33, v34, v31);
    if (!v42)
    {
      break;
    }

    v35 = OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_37(v35, v36, v31);
    if (!v42)
    {
      goto LABEL_23;
    }

    v37 = OUTLINED_FUNCTION_88();
    sub_26A0E48F0(v37, v38, &unk_26A426440);
    v39 = v58;
LABEL_12:
    if ((sub_26A0DB6A0(*(v2 + v39[5]), *(v23 + v39[5])) & 1) == 0)
    {
      goto LABEL_24;
    }

    v45 = v39[6];
    v46 = *(v2 + v45);
    v47 = *(v2 + v45 + 8);
    v48 = (v23 + v45);
    v49 = v46 == *v48 && v47 == v48[1];
    if (!v49 && (sub_26A425354() & 1) == 0)
    {
      goto LABEL_24;
    }

    v50 = v39[7];
    sub_26A424794();
    OUTLINED_FUNCTION_0();
    sub_26A0E4A44(qword_2815792E0, v51);
    v52 = OUTLINED_FUNCTION_183();
    sub_26A0E49F0();
    OUTLINED_FUNCTION_166();
    sub_26A0E49F0();
    if (v52)
    {
      v6 += v56;
      v28 += v56;
      if (--v26)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  sub_26A0E4894(v1, v54, &qword_28036C8F8, &unk_26A426440);
  v40 = OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_37(v40, v41, v31);
  if (!v42)
  {
    sub_26A0E4948();
    v43 = OUTLINED_FUNCTION_102();
    v55 = static _ProtoPlayer.OneOf_Control.== infix(_:_:)(v43, v44);
    v31 = v57;
    sub_26A0E49F0();
    OUTLINED_FUNCTION_145();
    sub_26A0E48F0(v1, &qword_28036C8F8, &unk_26A426440);
    v2 = v53;
    v39 = v58;
    if ((v55 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  sub_26A0E49F0();
LABEL_23:
  sub_26A0E48F0(v1, &qword_28036C900, &unk_26A425EB0);
LABEL_24:
  sub_26A0E49F0();
  OUTLINED_FUNCTION_109();
  sub_26A0E49F0();
LABEL_25:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_75();
}

void sub_26A0E4488()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    sub_26A0E456C(319, &qword_28036C808, type metadata accessor for _ProtoTextProperty);
    if (v1 <= 0x3F)
    {
      sub_26A0E456C(319, qword_281579718, type metadata accessor for _ProtoActionProperty);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A0E456C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26A0E45C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_26A0E4618(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_26A0E47DC(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x277D85DE8];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_26A0E4784(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26A0E47DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_26A424474();
  v8 = result;
  if (result)
  {
    result = sub_26A424494();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_26A424484();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_26A0E4894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_175();
  v9(v8);
  return a2;
}

uint64_t sub_26A0E48F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26A0E4948()
{
  v1 = OUTLINED_FUNCTION_53();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t sub_26A0E499C()
{
  v1 = OUTLINED_FUNCTION_53();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t sub_26A0E49F0()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26A0E4A44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void OUTLINED_FUNCTION_52(uint64_t a1@<X8>)
{
  v1 = *(a1 - 256);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_70()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_73(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(v2 - 832) = a1;
  v4 = *(a1 + 16);
  *(v2 - 840) = v3;
  v5 = *(v3 + 16);
  *(v2 - 848) = v4;
}

uint64_t OUTLINED_FUNCTION_78()
{
  v2 = *(*(v0 - 144) + 24);

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_99@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 24);

  return sub_26A424794();
}

uint64_t **OUTLINED_FUNCTION_108(uint64_t **result)
{
  v1 = *(*result + 10);
  v2 = (*result)[3];
  v3 = (*result)[4];
  v4 = (*result)[1];
  v5 = (*result)[2];
  v6 = **result;
  return result;
}

uint64_t OUTLINED_FUNCTION_117()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2)
{

  return sub_26A0E4894(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_134()
{

  return sub_26A0E49F0();
}

uint64_t OUTLINED_FUNCTION_135()
{

  return sub_26A0E49F0();
}

uint64_t OUTLINED_FUNCTION_136(uint64_t a1, uint64_t a2)
{

  return sub_26A0E4894(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_137@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_138(uint64_t a1, uint64_t a2)
{

  return sub_26A0E4894(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_139@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 28);

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_140(uint64_t a1, uint64_t a2)
{

  return sub_26A0E4894(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_141()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_142()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1, uint64_t a2)
{

  return sub_26A0E4894(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, uint64_t a2)
{

  return sub_26A0E4894(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_145()
{

  return sub_26A0E49F0();
}

uint64_t OUTLINED_FUNCTION_150@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 - 256);
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_182()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_183()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_184()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_185(uint64_t a1, uint64_t a2)
{

  return sub_26A0E4894(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_186(uint64_t a1, uint64_t a2)
{

  return sub_26A0E4894(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_187()
{

  return sub_26A0E49F0();
}

uint64_t OUTLINED_FUNCTION_188(uint64_t a1, uint64_t a2)
{

  return sub_26A0E4894(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_189@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A0E49F0();
}

void OUTLINED_FUNCTION_190()
{
  v2 = *v0;
  v3 = *(v0 - 1);
  v4 = *(v1 - 1);
  v5 = *v1;
}

uint64_t ContactPickerButton(label:directInvocationId:userResponseKey:additionalPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a4;
  v61 = a6;
  v55 = a7;
  v66 = *MEMORY[0x277D85DE8];
  v11 = sub_26A424404();
  v12 = OUTLINED_FUNCTION_24(v11);
  v57 = v13;
  v58 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v18 = v17 - v16;
  v19 = type metadata accessor for ContactPickerButtonModel();
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v56 = &v55 - v26;
  sub_26A0E5D68(a1, v63);
  v27 = v64;
  v28 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  (*(v28 + 8))(v27, v28);
  v29 = &v25[v19[5]];
  *v29 = a2;
  *(v29 + 1) = a3;
  v30 = &v25[v19[6]];
  *v30 = v60;
  *(v30 + 1) = a5;
  v31 = objc_opt_self();

  v32 = sub_26A424B04();
  v62 = 0;
  v33 = [v31 dataWithPropertyList:v32 format:200 options:0 error:{&v62, v55}];

  v34 = v62;
  if (v33)
  {
    v35 = sub_26A4246D4();
    v37 = v36;

    v38 = &v25[v19[7]];
    *v38 = v35;
    v38[1] = v37;
    OUTLINED_FUNCTION_2_0();
    v39 = v56;
    sub_26A0E7024(v25, v56, v40);
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_0_0();
    sub_26A0E5E5C(v25, v41);
    sub_26A424444();
    sub_26A0E6E84();
    sub_26A1F5544(v18);
    (*(v57 + 8))(v18, v58);
    OUTLINED_FUNCTION_3_0();
    sub_26A0E7504(v42, v43);
    v44 = v59;
    v45 = sub_26A424424();
    if (v44)
    {
      sub_26A0E5E5C(v39, type metadata accessor for ContactPickerButtonModel);
    }

    else
    {
      v50 = v45;
      v51 = v46;
      OUTLINED_FUNCTION_0_0();
      sub_26A0E5E5C(v39, v52);

      v53 = type metadata accessor for _ProtoCustomCanvas();
      MEMORY[0x28223BE20](v53);
      strcpy(&v55 - 80, "SystemPlugin");
      *(&v55 - 67) = 0;
      *(&v55 - 33) = -5120;
      *(&v55 - 8) = 0xD000000000000013;
      *(&v55 - 7) = 0x800000026A446360;
      *(&v55 - 6) = v50;
      *(&v55 - 5) = v51;
      *(&v55 - 4) = 0;
      *(&v55 - 3) = 0xE000000000000000;
      *(&v55 - 8) = 0;
      *(&v55 - 14) = 0;
      sub_26A0E7504(&qword_28036C950, type metadata accessor for _ProtoCustomCanvas);
      sub_26A4249C4();
      result = sub_26A0E4784(v50, v51);
    }
  }

  else
  {
    v48 = v34;
    sub_26A4245B4();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_1_0();
    sub_26A0E5E5C(v25, v49);
  }

  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for ContactPickerButtonModel()
{
  result = qword_28036C9A0;
  if (!qword_28036C9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A0E5D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26A0E5E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t ContactPickerButtonModel.init(label:directInvocationId:userResponseKey:additionalPayload:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for ContactPickerButtonModel();
  v11 = OUTLINED_FUNCTION_12(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v16 = v15 - v14;
  v17 = a1[3];
  v18 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 8))(v17, v18);
  v19 = (v16 + v10[5]);
  *v19 = a2;
  v19[1] = a3;
  v20 = (v16 + v10[6]);
  *v20 = a4;
  v20[1] = a5;
  v21 = objc_opt_self();
  v22 = sub_26A424B04();

  v38[0] = 0;
  v23 = [v21 dataWithPropertyList:v22 format:200 options:0 error:v38];

  v24 = v38[0];
  if (v23)
  {
    v25 = sub_26A4246D4();
    v27 = v26;

    v28 = (v16 + v10[7]);
    *v28 = v25;
    v28[1] = v27;
    OUTLINED_FUNCTION_2_0();
    sub_26A0E7024(v16, a6, v29);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_0_0();
    result = sub_26A0E5E5C(v16, v30);
  }

  else
  {
    v32 = v24;
    sub_26A4245B4();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_1_0();
    sub_26A0E5E5C(v16, v33);
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ContactPickerButtonModel.serializedData.getter()
{
  v0 = sub_26A424404();
  v1 = OUTLINED_FUNCTION_24(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v8);
  (*(v3 + 8))(v8, v0);
  type metadata accessor for ContactPickerButtonModel();
  OUTLINED_FUNCTION_3_0();
  sub_26A0E7504(v9, v10);
  v11 = sub_26A424424();

  return v11;
}

uint64_t ContactPickerButtonModel.directInvocationId.getter()
{
  v1 = (v0 + *(type metadata accessor for ContactPickerButtonModel() + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t ContactPickerButtonModel.userResponseKey.getter()
{
  v1 = (v0 + *(type metadata accessor for ContactPickerButtonModel() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t ContactPickerButtonModel.serializedAdditionalPayload.getter()
{
  v1 = (v0 + *(type metadata accessor for ContactPickerButtonModel() + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_175();
  sub_26A0E45C0(v4, v5);
  return OUTLINED_FUNCTION_175();
}

uint64_t ContactPickerButtonModel.additionalPayload.getter()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = (v0 + *(type metadata accessor for ContactPickerButtonModel() + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = sub_26A4246B4();
  v13[0] = 0;
  v6 = [v1 propertyListWithData:v5 options:0 format:0 error:v13];

  if (!v6)
  {
    v9 = v13[0];
    v10 = sub_26A4245B4();

    swift_willThrow();
    goto LABEL_5;
  }

  v7 = v13[0];
  sub_26A424E64();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C958, &qword_26A425F00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    result = sub_26A424B24();
    goto LABEL_6;
  }

  result = v12;
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26A0E649C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000026A446380 == a2;
    if (v6 || (sub_26A425354() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7073655272657375 && a2 == 0xEF79654B65736E6FLL;
      if (v7 || (sub_26A425354() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001BLL && 0x800000026A4463A0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_26A425354();

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

uint64_t sub_26A0E660C(unsigned __int8 a1)
{
  sub_26A425504();
  MEMORY[0x26D65C340](a1);
  return sub_26A425554();
}

unint64_t sub_26A0E6660(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x7073655272657375;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A0E6704()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

uint64_t sub_26A0E6750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A0E649C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A0E6798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A0E6604();
  *a1 = result;
  return result;
}

uint64_t sub_26A0E67C0(uint64_t a1)
{
  v2 = sub_26A0E7080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A0E67FC(uint64_t a1)
{
  v2 = sub_26A0E7080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactPickerButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C960, &qword_26A425F08);
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A0E7080();
  sub_26A425594();
  LOBYTE(v27) = 0;
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_8_0();
  sub_26A0E7504(v14, v15);
  sub_26A425154();
  if (!v2)
  {
    v16 = type metadata accessor for ContactPickerButtonModel();
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    OUTLINED_FUNCTION_10_0(1);
    v20 = (v3 + v16[6]);
    v21 = *v20;
    v22 = v20[1];
    OUTLINED_FUNCTION_10_0(2);
    v23 = (v3 + v16[7]);
    v24 = v23[1];
    v27 = *v23;
    v28 = v24;
    v26[15] = 3;
    sub_26A0E45C0(v27, v24);
    sub_26A0E70D4();
    sub_26A425154();
    sub_26A0E4784(v27, v28);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t ContactPickerButtonModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v36 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C980, &qword_26A425F10);
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = type metadata accessor for ContactPickerButtonModel();
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v20 = v19 - v18;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A0E7080();
  sub_26A425574();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37) = 0;
  OUTLINED_FUNCTION_8_0();
  sub_26A0E7504(v22, v23);
  sub_26A425054();
  sub_26A0E7128(v36, v20);
  OUTLINED_FUNCTION_11_0(1);
  v24 = sub_26A425034();
  v25 = (v20 + v14[5]);
  *v25 = v24;
  v25[1] = v26;
  OUTLINED_FUNCTION_11_0(2);
  v27 = sub_26A425034();
  v28 = (v20 + v14[6]);
  *v28 = v27;
  v28[1] = v29;
  sub_26A0E718C();
  sub_26A425054();
  v30 = OUTLINED_FUNCTION_6_0();
  v31(v30);
  *(v20 + v14[7]) = v37;
  OUTLINED_FUNCTION_2_0();
  sub_26A0E7024(v20, a2, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_0_0();
  return sub_26A0E5E5C(v20, v33);
}

uint64_t ContactPickerButtonModel.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_26A4243D4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_26A4243C4();
  type metadata accessor for ContactPickerButtonModel();
  OUTLINED_FUNCTION_3_0();
  sub_26A0E7504(v7, v8);
  sub_26A4243B4();
  sub_26A0E4784(a1, a2);
}

uint64_t sub_26A0E6E84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C9C8, &qword_26A4260C0);
  v0 = *(sub_26A424404() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_26A425EF0;
  sub_26A4243F4();
  sub_26A4243E4();
  sub_26A0E7504(&qword_28036C9D0, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C9D8, &qword_26A4260C8);
  sub_26A0E754C();
  return sub_26A424E74();
}

uint64_t sub_26A0E7024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_175();
  v8(v7);
  return a2;
}

unint64_t sub_26A0E7080()
{
  result = qword_28036C968;
  if (!qword_28036C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036C968);
  }

  return result;
}

unint64_t sub_26A0E70D4()
{
  result = qword_28036C978;
  if (!qword_28036C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036C978);
  }

  return result;
}

uint64_t sub_26A0E7128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextProperty(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A0E718C()
{
  result = qword_28036C990;
  if (!qword_28036C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036C990);
  }

  return result;
}

uint64_t sub_26A0E7208()
{
  result = type metadata accessor for TextProperty(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactPickerButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactPickerButtonModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A0E7400()
{
  result = qword_28036C9B0;
  if (!qword_28036C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036C9B0);
  }

  return result;
}

unint64_t sub_26A0E7458()
{
  result = qword_28036C9B8;
  if (!qword_28036C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036C9B8);
  }

  return result;
}

unint64_t sub_26A0E74B0()
{
  result = qword_28036C9C0;
  if (!qword_28036C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036C9C0);
  }

  return result;
}

uint64_t sub_26A0E7504(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A0E754C()
{
  result = qword_28036C9E0;
  if (!qword_28036C9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036C9D8, &qword_26A4260C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036C9E0);
  }

  return result;
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

uint64_t OUTLINED_FUNCTION_10_0@<X0>(char a1@<W8>)
{
  *(v1 - 80) = a1;

  return sub_26A425114();
}

uint64_t CodableINInteraction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C9E8, &qword_26A4260E0);
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A0E7AD0();
  sub_26A425574();
  if (!v2)
  {
    sub_26A0E718C();
    sub_26A425054();
    sub_26A0E884C(0, &qword_28036CA00, 0x277CCAAC8);
    sub_26A0E884C(0, &qword_28036C9F8, 0x277CD3D58);
    v24 = sub_26A424E24();
    v22 = v24;
    if (v24)
    {
      v27 = OUTLINED_FUNCTION_1_1();
      v28(v27);
      sub_26A0E4784(v29, v30);
      goto LABEL_8;
    }

    sub_26A0E888C();
    v3 = swift_allocError();
    swift_willThrow();
    sub_26A0E4784(v29, v30);
    v25 = OUTLINED_FUNCTION_1_1();
    v26(v25);
  }

  if (qword_28036C5A0 != -1)
  {
    swift_once();
  }

  v11 = sub_26A424AE4();
  __swift_project_value_buffer(v11, qword_2803A8950);
  v12 = v3;
  v13 = sub_26A424AD4();
  v14 = sub_26A424E04();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v16 = a2;
    v17 = v29;
    *v15 = 136315138;
    swift_getErrorValue();
    v18 = sub_26A4254B4();
    v20 = sub_26A0E8788(v18, v19, &v29);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_26A0B8000, v13, v14, "Failed to decode INInteraction; creating an empty INInteraction instead. Error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v21 = v17;
    a2 = v16;
    MEMORY[0x26D65C950](v21, -1, -1);
    MEMORY[0x26D65C950](v15, -1, -1);
  }

  sub_26A0E884C(0, &qword_28036C9F8, 0x277CD3D58);
  v22 = sub_26A0E7B24([objc_allocWithZone(MEMORY[0x277CD3D30]) init], 0);

LABEL_8:
  *a2 = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26A0E7AD0()
{
  result = qword_28036C9F0;
  if (!qword_28036C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036C9F0);
  }

  return result;
}

id sub_26A0E7B24(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t CodableINInteraction.encode(to:)(void *a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CA10, &qword_26A4260E8);
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v24[-1] - v10;
  v12 = *v1;
  v13 = objc_opt_self();
  v24[0] = 0;
  v14 = [v13 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v24];
  v15 = v24[0];
  if (v14)
  {
    v16 = sub_26A4246D4();
    v23 = v2;
    v18 = v17;

    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26A0E7AD0();
    sub_26A425594();
    v24[0] = v16;
    v24[1] = v18;
    sub_26A0E70D4();
    sub_26A425154();
    (*(v7 + 8))(v11, v4);
    result = sub_26A0E4784(v16, v18);
  }

  else
  {
    v21 = v15;
    sub_26A4245B4();

    result = swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_26A0E7D74()
{
  v0 = sub_26A424FE4();

  return v0 != 0;
}

uint64_t sub_26A0E7DC4()
{
  sub_26A425504();
  sub_26A424C04();
  return sub_26A425554();
}

uint64_t sub_26A0E8070(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x26D65C340](a1);
  return sub_26A425554();
}

uint64_t sub_26A0E80D0(char a1)
{
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x26D65C340](a1 & 1);
  return sub_26A425554();
}

uint64_t sub_26A0E8130(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_4_0();
  a3(v4);
  OUTLINED_FUNCTION_3_1();
  return sub_26A425554();
}

uint64_t sub_26A0E81F8(uint64_t a1, char a2)
{
  sub_26A425504();
  MEMORY[0x26D65C340](a2 & 1);
  return sub_26A425554();
}

uint64_t sub_26A0E823C(uint64_t a1, unsigned __int8 a2)
{
  sub_26A425504();
  MEMORY[0x26D65C340](a2);
  return sub_26A425554();
}

uint64_t sub_26A0E8460()
{
  sub_26A425504();
  sub_26A424C04();
  return sub_26A425554();
}

uint64_t sub_26A0E8508(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_26A425504();
  a4(v5);
  OUTLINED_FUNCTION_3_1();
  return sub_26A425554();
}

BOOL sub_26A0E855C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26A0E7D74();
  *a2 = result;
  return result;
}

BOOL sub_26A0E85B4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_26A0E7D74();
  *a1 = result;
  return result;
}

uint64_t sub_26A0E85EC(uint64_t a1)
{
  v2 = sub_26A0E7AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A0E8628(uint64_t a1)
{
  v2 = sub_26A0E7AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableINInteraction.Error.hashValue.getter()
{
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x26D65C340](0);
  return sub_26A425554();
}

uint64_t sub_26A0E8708()
{
  sub_26A425504();
  MEMORY[0x26D65C340](0);
  return sub_26A425554();
}

uint64_t sub_26A0E8788(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26A0E92D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26A0E93D4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_26A0E884C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26A0E888C()
{
  result = qword_28036CA08;
  if (!qword_28036CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA08);
  }

  return result;
}

unint64_t sub_26A0E88E4()
{
  result = qword_28036CA18;
  if (!qword_28036CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA18);
  }

  return result;
}

uint64_t sub_26A0E8944(uint64_t *a1, int a2)
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

uint64_t sub_26A0E8984(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for UpdateResponseCommandFailure(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *sub_26A0E8A3C(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A0E8AEC()
{
  result = qword_28036CA20;
  if (!qword_28036CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA20);
  }

  return result;
}

unint64_t sub_26A0E8B44()
{
  result = qword_28036CA28;
  if (!qword_28036CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA28);
  }

  return result;
}

unint64_t sub_26A0E8B9C()
{
  result = qword_28036CA30;
  if (!qword_28036CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA30);
  }

  return result;
}

unint64_t sub_26A0E8BF0()
{
  result = qword_28157B550;
  if (!qword_28157B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157B550);
  }

  return result;
}

unint64_t sub_26A0E8C44()
{
  result = qword_28036CA38;
  if (!qword_28036CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA38);
  }

  return result;
}

unint64_t sub_26A0E8C98()
{
  result = qword_28036CA40;
  if (!qword_28036CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA40);
  }

  return result;
}

unint64_t sub_26A0E8CEC()
{
  result = qword_28036CA48;
  if (!qword_28036CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA48);
  }

  return result;
}

unint64_t sub_26A0E8D40()
{
  result = qword_28036CA50;
  if (!qword_28036CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA50);
  }

  return result;
}

unint64_t sub_26A0E8D94()
{
  result = qword_28036CA58;
  if (!qword_28036CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA58);
  }

  return result;
}

unint64_t sub_26A0E8DE8()
{
  result = qword_28036CA60;
  if (!qword_28036CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA60);
  }

  return result;
}

unint64_t sub_26A0E8E3C()
{
  result = qword_28036CA68;
  if (!qword_28036CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA68);
  }

  return result;
}

unint64_t sub_26A0E8E90()
{
  result = qword_28036CA70;
  if (!qword_28036CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA70);
  }

  return result;
}

unint64_t sub_26A0E8EE4()
{
  result = qword_28036CA78;
  if (!qword_28036CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA78);
  }

  return result;
}

unint64_t sub_26A0E8F38()
{
  result = qword_28036CA80;
  if (!qword_28036CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA80);
  }

  return result;
}

unint64_t sub_26A0E8F8C()
{
  result = qword_28036CA88;
  if (!qword_28036CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA88);
  }

  return result;
}

unint64_t sub_26A0E8FE0()
{
  result = qword_28036CA90;
  if (!qword_28036CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA90);
  }

  return result;
}

unint64_t sub_26A0E9034()
{
  result = qword_28036CA98;
  if (!qword_28036CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CA98);
  }

  return result;
}

unint64_t sub_26A0E9088()
{
  result = qword_28036CAA0;
  if (!qword_28036CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CAA0);
  }

  return result;
}

unint64_t sub_26A0E90DC()
{
  result = qword_28036CAA8;
  if (!qword_28036CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CAA8);
  }

  return result;
}

unint64_t sub_26A0E9130()
{
  result = qword_28036CAB0;
  if (!qword_28036CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CAB0);
  }

  return result;
}

unint64_t sub_26A0E9184()
{
  result = qword_28036CAB8;
  if (!qword_28036CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CAB8);
  }

  return result;
}

unint64_t sub_26A0E91D8()
{
  result = qword_28036CAC0;
  if (!qword_28036CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CAC0);
  }

  return result;
}

unint64_t sub_26A0E922C()
{
  result = qword_28036CAC8;
  if (!qword_28036CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CAC8);
  }

  return result;
}

unint64_t sub_26A0E9280()
{
  result = qword_28036CAD0;
  if (!qword_28036CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036CAD0);
  }

  return result;
}

unint64_t sub_26A0E92D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26A0E9430(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_26A424F44();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26A0E93D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26A0E9430(uint64_t a1, unint64_t a2)
{
  v4 = sub_26A0E947C(a1, a2);
  sub_26A0E9594(&unk_287B01388);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26A0E947C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26A424C54())
  {
    result = sub_26A0E9678(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26A424EE4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26A424F44();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26A0E9594(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_26A0E96E8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26A0E9678(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAD8, &unk_26A426380);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26A0E96E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAD8, &unk_26A426380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return sub_26A424B44();
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return sub_26A425504();
}

void SummaryItemPlayer.allPlayers.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for Player(0);
  OUTLINED_FUNCTION_79_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_18();
  v6 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_Player(0) + 20));
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v17 = MEMORY[0x277D84F90];

    sub_26A10CD88();
    v9 = type metadata accessor for _ProtoPlayer(0);
    OUTLINED_FUNCTION_79_0(v9);
    v11 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    do
    {
      sub_26A10FE48();
      v14 = *(v17 + 16);
      if (v14 >= *(v17 + 24) >> 1)
      {
        OUTLINED_FUNCTION_67_0();
        sub_26A10CD88();
      }

      *(v17 + 16) = v14 + 1;
      v15 = *(v3 + 80);
      OUTLINED_FUNCTION_166_0();
      v16 = *(v3 + 72);
      sub_26A10FD48();
      v11 += v13;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A0E9A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_26A10D50C();
    v3 = v12;
    v5 = (a1 + 32);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740) + 32);
    do
    {
      v7 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      v8 = Component.description(redacted:)(*(a2 + v6));
      v9 = *(v12 + 16);
      if (v9 >= *(v12 + 24) >> 1)
      {
        sub_26A10D50C();
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 16 * v9 + 32) = v8;
      v5 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t *sub_26A0E9B50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v201 = a4;
  v197 = a2;
  v8 = type metadata accessor for CoreChartElement();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35(v13 - v12);
  v14 = type metadata accessor for CustomElement();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35(v19 - v18);
  v20 = type metadata accessor for ColorElement();
  v21 = OUTLINED_FUNCTION_41(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_49(v25 - v24);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680);
  OUTLINED_FUNCTION_12(v178);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_35(v29);
  v177 = type metadata accessor for ImageElement();
  v30 = OUTLINED_FUNCTION_12(v177);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  v36 = v176 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v38);
  v196 = type metadata accessor for VisualElement();
  v39 = OUTLINED_FUNCTION_12(v196);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v186 = v43 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC28, &qword_26A43A760);
  v45 = OUTLINED_FUNCTION_41(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_17();
  v50 = v48 - v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_48();
  v203 = v52;
  v53 = type metadata accessor for _ProtoVisualElement(0);
  v54 = OUTLINED_FUNCTION_12(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_8();
  v195 = v57;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  v62 = OUTLINED_FUNCTION_41(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_8();
  v194 = v65;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v68);
  v199 = type metadata accessor for _ProtoBackgroundElement();
  v69 = OUTLINED_FUNCTION_12(v199);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_8();
  v185 = v72;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v74);
  v75 = type metadata accessor for BackgroundElement();
  v76 = OUTLINED_FUNCTION_79_0(v75);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_17();
  v83 = v81 - v82;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_48();
  v198 = v85;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC38, &qword_26A4266C8);
  OUTLINED_FUNCTION_12(v193);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_141_0();
  v89 = *(a1 + 16);
  if (v89)
  {
    v179 = v36;
    v176[1] = v4;
    v207 = MEMORY[0x277D84F90];
    v202 = v89;
    sub_26A10D50C();
    v90 = v207;
    v91 = *(v78 + 80);
    OUTLINED_FUNCTION_166_0();
    v93 = a1 + v92;
    v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, v201) + 32);
    v183 = 0x800000026A4463C0;
    v188 = *(v78 + 72);
    v184 = xmmword_26A426390;
    v191 = v53;
    v192 = v50;
    v190 = v83;
    while (1)
    {
      v201 = v90;
      v94 = v198;
      v95 = *(v197 + v189);
      sub_26A10FE48();
      if (v95 == 1)
      {
        v187 = 1;
        v200 = v93;
        sub_26A10FE48();
        v96 = *(v199 + 28);
        OUTLINED_FUNCTION_59(&v210);
        sub_26A10FD9C();
        v97 = OUTLINED_FUNCTION_74_0();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, v98, v99);
        sub_26A0E48F0(v94, &qword_28036C848, &qword_26A426690);
        if (EnumTagSinglePayload != 1)
        {
          OUTLINED_FUNCTION_59(&v209);
          sub_26A10FD9C();
          v101 = OUTLINED_FUNCTION_74_0();
          if (__swift_getEnumTagSinglePayload(v101, v102, v103) == 1)
          {
            type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
            v104 = v181;
            OUTLINED_FUNCTION_92();
            __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
            v109 = v104 + *(v53 + 20);
            _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
            v110 = OUTLINED_FUNCTION_74_0();
            if (__swift_getEnumTagSinglePayload(v110, v111, v112) != 1)
            {
              sub_26A0E48F0(v182, &qword_28036C848, &qword_26A426690);
            }
          }

          else
          {
            OUTLINED_FUNCTION_164(&v208);
            sub_26A10FD48();
          }

          _ProtoVisualElement.redacted.getter();
          v113 = OUTLINED_FUNCTION_71_0();
          sub_26A10FDF0(v113, v114);
          sub_26A0E48F0(v185 + v96, &qword_28036C848, &qword_26A426690);
          sub_26A10FD48();
          OUTLINED_FUNCTION_126_0();
          __swift_storeEnumTagSinglePayload(v115, v116, v117, v53);
        }

        sub_26A10FD48();
        sub_26A10FD48();
        v94 = v198;
        v93 = v200;
        LOBYTE(v95) = v187;
      }

      else
      {
        sub_26A10FE48();
      }

      OUTLINED_FUNCTION_146_0();
      sub_26A10FD48();
      v118 = v193;
      v5[*(v193 + 32)] = v95;
      sub_26A10FDF0(v94, type metadata accessor for BackgroundElement);
      v119 = MEMORY[0x277D84F90];
      v200 = *(v118 + 28);
      *&v5[v200] = MEMORY[0x277D84F90];
      v120 = *(v199 + 28);
      v121 = v194;
      sub_26A10FD9C();
      v122 = OUTLINED_FUNCTION_74_0();
      v125 = __swift_getEnumTagSinglePayload(v122, v123, v124);
      v126 = v195;
      if (v125 == 1)
      {
        type metadata accessor for _ProtoVisualElement.OneOf_Element(0);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
        v131 = v126 + *(v53 + 20);
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v132 = OUTLINED_FUNCTION_74_0();
        if (__swift_getEnumTagSinglePayload(v132, v133, v134) != 1)
        {
          sub_26A0E48F0(v121, &qword_28036C848, &qword_26A426690);
        }
      }

      else
      {
        OUTLINED_FUNCTION_175();
        sub_26A10FD48();
      }

      VisualElement.init(proto:)();
      OUTLINED_FUNCTION_126_0();
      v135 = v196;
      __swift_storeEnumTagSinglePayload(v136, v137, v138, v196);
      sub_26A10FD9C();
      if (__swift_getEnumTagSinglePayload(v50, 1, v135) == 1)
      {
        sub_26A0E48F0(v50, &qword_28036CC28, &qword_26A43A760);
        v139 = v119;
      }

      else
      {
        v140 = v135;
        v141 = v183;
        v142 = v186;
        sub_26A10FE48();
        OUTLINED_FUNCTION_246();
        KeyPath = 0xD000000000000015;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            OUTLINED_FUNCTION_59(&v204);
            sub_26A10FD48();
            ColorElement.description(redacted:)(v95);
            OUTLINED_FUNCTION_234();
            v145 = type metadata accessor for ColorElement;
            goto LABEL_26;
          case 2u:
            OUTLINED_FUNCTION_59(&v205);
            sub_26A10FD48();
            CustomElement.description(redacted:)(v95);
            OUTLINED_FUNCTION_234();
            v145 = type metadata accessor for CustomElement;
            goto LABEL_26;
          case 3u:
            OUTLINED_FUNCTION_59(v206);
            sub_26A10FD48();
            CoreChartElement.description(redacted:)(v95);
            OUTLINED_FUNCTION_234();
            v145 = type metadata accessor for CoreChartElement;
LABEL_26:
            sub_26A10FDF0(v140, v145);
            break;
          case 4u:
            break;
          default:
            OUTLINED_FUNCTION_59(&v207);
            sub_26A10FD48();
            OUTLINED_FUNCTION_120_0();
            v144 = v179;
            sub_26A10FE48();
            if (v95)
            {
              OUTLINED_FUNCTION_128(&v201);
              sub_26A10FE48();
              if (qword_28036C790 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v177, qword_2803A8980);
              OUTLINED_FUNCTION_120_0();
              OUTLINED_FUNCTION_59(&v199);
              sub_26A10FE48();
              v142 = *v140;

              sub_26A10FDF0(v140, type metadata accessor for _ProtoImageElement);

              MEMORY[0xD000000000000015] = v142;
              v144 = v179;
            }

            else
            {
              OUTLINED_FUNCTION_128(&v201);
              sub_26A10FE48();
            }

            OUTLINED_FUNCTION_164(&v202);
            sub_26A10FD48();
            v146 = v178;
            *(v142 + *(v178 + 32)) = v95;
            sub_26A10FDF0(v144, type metadata accessor for ImageElement);
            *(v142 + *(v146 + 28)) = MEMORY[0x277D84F90];
            ImageElement.sourceTypes.getter();
            OUTLINED_FUNCTION_86_0();
            sub_26A3A1D60(v147, v148, v149, v150);

            KeyPath = swift_getKeyPath();
            sub_26A28FC84(KeyPath, 0x736D6F696469, 0xE600000000000000);

            sub_26A0F8D00();
            OUTLINED_FUNCTION_234();
            sub_26A0E48F0(v142, &qword_28036CC20, &unk_26A426680);
            sub_26A10FDF0(v180, type metadata accessor for ImageElement);
            break;
        }

        sub_26A10FDF0(v50, type metadata accessor for VisualElement);
        v151 = HIBYTE(v141) & 0xF;
        if ((v141 & 0x2000000000000000) == 0)
        {
          v151 = KeyPath & 0xFFFFFFFFFFFFLL;
        }

        if (v151)
        {
          sub_26A166FE4();
          v139 = v152;
          v153 = *(v152 + 16);
          if (v153 >= *(v152 + 24) >> 1)
          {
            OUTLINED_FUNCTION_67_0();
            sub_26A166FE4();
            v139 = v174;
          }

          *(v139 + 16) = v153 + 1;
          v154 = (v139 + 32 * v153);
          v154[4] = 0;
          v154[5] = 0;
          v154[6] = KeyPath;
          v154[7] = v141;
          *&v5[v200] = v139;
        }

        else
        {

          v139 = MEMORY[0x277D84F90];
        }
      }

      sub_26A0E48F0(v203, &qword_28036CC28, &qword_26A43A760);
      v155 = *v5;
      v156 = *(*v5 + 16);
      if (v5[8] == 1)
      {
        if (!v156)
        {
          goto LABEL_42;
        }

        v157 = 1701079400;
      }

      else
      {
        if (!v156)
        {
LABEL_42:
          v161 = *v5;

          v160 = 0;
          v159 = 0xE000000000000000;
          goto LABEL_43;
        }

        v157 = 2003789939;
      }

      v204 = v157 | 0x3A6E6F2800000000;
      v205 = 0xE900000000000020;
      swift_bridgeObjectRetain_n();
      v158 = sub_26A12CBBC(v155);
      MEMORY[0x26D65BA70](v158);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);

      v160 = v204;
      v159 = v205;
LABEL_43:
      v162 = HIBYTE(v159) & 0xF;
      if ((v159 & 0x2000000000000000) == 0)
      {
        v162 = v160 & 0xFFFFFFFFFFFFLL;
      }

      if (v162)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = *(v139 + 16);
          sub_26A166FE4();
          v139 = v172;
        }

        v163 = *(v139 + 16);
        if (v163 >= *(v139 + 24) >> 1)
        {
          OUTLINED_FUNCTION_67_0();
          sub_26A166FE4();
          v139 = v173;
        }

        *(v139 + 16) = v163 + 1;
        v164 = v139 + 32 * v163;
        *(v164 + 32) = v184;
        *(v164 + 48) = v160;
        *(v164 + 56) = v159;

        *&v5[v200] = v139;
      }

      else
      {
      }

      sub_26A0FA2C4();
      v166 = v165;
      v168 = v167;
      sub_26A0E48F0(v5, &qword_28036CC38, &qword_26A4266C8);
      v90 = v201;
      v207 = v201;
      v169 = v201[2];
      if (v169 >= v201[3] >> 1)
      {
        OUTLINED_FUNCTION_67_0();
        sub_26A10D50C();
        v90 = v207;
      }

      v90[2] = v169 + 1;
      v170 = &v90[2 * v169];
      v170[4] = v166;
      v170[5] = v168;
      v93 += v188;
      --v202;
      v53 = v191;
      v50 = v192;
      if (!v202)
      {
        return v90;
      }
    }
  }

  return MEMORY[0x277D84F90];
}