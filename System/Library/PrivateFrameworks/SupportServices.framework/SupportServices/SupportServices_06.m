uint64_t sub_26BD66E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_129();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_167();
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD66F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v85 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = v83 - v11;
  v89 = sub_26BDA0810();
  v86 = *(v89 - 8);
  v12 = *(v86 + 64);
  v13 = MEMORY[0x28223BE20](v89);
  v84 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v83 - v18;
  v20 = type metadata accessor for PhoneNumber(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v87 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = *(a1 + 24);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = *(a1 + 24);

    sub_26BDA0AB0();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 40);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = *(a1 + 40);

    sub_26BDA0AB0();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 56);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = *(a1 + 56);

    sub_26BDA0AB0();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 72);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = *(a1 + 72);

    sub_26BDA0AB0();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 88);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = *(a1 + 88);

    sub_26BDA0AB0();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 104);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v40 = *(a1 + 104);

    sub_26BDA0AB0();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 120);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = *(a1 + 120);

    sub_26BDA0AB0();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 128) != 0.0)
  {
    result = sub_26BDA0AA0();
    if (v3)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 136) == 1)
  {
    result = sub_26BDA0A40();
    if (v3)
    {
      return result;
    }
  }

  swift_beginAccess();
  v45 = *(a1 + 152);
  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v47 = *(a1 + 152);

    sub_26BDA0AB0();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 160) != 0.0)
  {
    result = sub_26BDA0AA0();
    if (v3)
    {
      return result;
    }
  }

  swift_beginAccess();
  v48 = *(a1 + 176);
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    goto LABEL_50;
  }

  v50 = *(a1 + 176);

  sub_26BDA0AB0();
  if (v3)
  {
  }

LABEL_50:
  swift_beginAccess();
  v51 = *(a1 + 192);
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = *(a1 + 184) & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = *(a1 + 192);

    sub_26BDA0AB0();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 200) != 1 || (result = sub_26BDA0A40(), !v3))
  {
    swift_beginAccess();
    if (*(a1 + 201) != 1 || (result = sub_26BDA0A40(), !v3))
    {
      swift_beginAccess();
      sub_26BD31AF8();
      if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
      {
        sub_26BD04E80(v19, &qword_280449840, &qword_26BDA36D8);
        v54 = v90;
      }

      else
      {
        sub_26BD65C08();
        sub_26BD6C1DC(&qword_280449910, type metadata accessor for PhoneNumber);
        sub_26BDA0AD0();
        if (v3)
        {
          return sub_26BD65CB0();
        }

        v54 = v90;
        sub_26BD65CB0();
      }

      swift_beginAccess();
      v55 = v88;
      sub_26BD31AF8();
      v56 = v89;
      if (__swift_getEnumTagSinglePayload(v55, 1, v89) == 1)
      {
        sub_26BD04E80(v55, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        v57 = v55;
        v58 = v86;
        (*(v86 + 32))(v54, v57, v56);
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA0AD0();
        if (v3)
        {
          return (*(v58 + 8))(v54, v56);
        }

        (*(v58 + 8))(v54, v56);
      }

      v59 = a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash;
      swift_beginAccess();
      if (sub_26BD50FE4(*v59, *(v59 + 8)) || (v61 = *v59, v60 = *(v59 + 8), sub_26BCFEFC4(v61, v60), sub_26BDA0A60(), result = sub_26BCFF01C(v61, v60), !v3))
      {
        v62 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint);
        swift_beginAccess();
        v63 = *v62;
        v64 = v62[1];
        v65 = HIBYTE(v64) & 0xF;
        if ((v64 & 0x2000000000000000) == 0)
        {
          v65 = v63 & 0xFFFFFFFFFFFFLL;
        }

        if (!v65 || (, sub_26BDA0AB0(), result = , !v4))
        {
          v66 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended;
          swift_beginAccess();
          if (*(a1 + v66) != 1 || (result = sub_26BDA0A40(), !v4))
          {
            v67 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
            swift_beginAccess();
            v68 = *(a1 + v67);
            v83[1] = a3;
            if (v68 == 0.0 || (result = sub_26BDA0AA0(), !v4))
            {
              swift_beginAccess();
              v69 = v85;
              sub_26BD31AF8();
              v70 = v89;
              if (__swift_getEnumTagSinglePayload(v69, 1, v89) == 1)
              {
                sub_26BD04E80(v69, &qword_280448F88, &qword_26BDA5440);
              }

              else
              {
                v71 = v69;
                v72 = v86;
                v73 = v84;
                (*(v86 + 32))(v84, v71, v70);
                sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
                sub_26BDA0AD0();
                if (v4)
                {
                  return (*(v72 + 8))(v73, v70);
                }

                (*(v72 + 8))(v73, v70);
              }

              v74 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation;
              swift_beginAccess();
              if (*(a1 + v74) != 1 || (result = sub_26BDA0A40(), !v4))
              {
                v75 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber);
                swift_beginAccess();
                v76 = *v75;
                v77 = v75[1];
                v78 = HIBYTE(v77) & 0xF;
                if ((v77 & 0x2000000000000000) == 0)
                {
                  v78 = v76 & 0xFFFFFFFFFFFFLL;
                }

                if (!v78 || (, sub_26BDA0AB0(), result = , !v4))
                {
                  v79 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
                  result = swift_beginAccess();
                  v80 = *v79;
                  v81 = v79[1];
                  v82 = HIBYTE(v81) & 0xF;
                  if ((v81 & 0x2000000000000000) == 0)
                  {
                    v82 = v80 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v82)
                  {

                    sub_26BDA0AB0();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_26BD67C6C()
{
  OUTLINED_FUNCTION_246_0();
  v176 = sub_26BDA0810();
  v2 = OUTLINED_FUNCTION_18(v176);
  v172 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_44();
  v170 = v7 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v8 = OUTLINED_FUNCTION_34(v175);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_38();
  v169 = v11;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_252();
  v174 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v15 = OUTLINED_FUNCTION_110(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_38();
  v167 = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_193();
  v168 = v20;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_193();
  v171 = v22;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_252();
  v173 = v24;
  v25 = OUTLINED_FUNCTION_176();
  v26 = type metadata accessor for PhoneNumber(v25);
  v27 = OUTLINED_FUNCTION_34(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_44();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449920, &qword_26BDA9390);
  OUTLINED_FUNCTION_34(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_280();
  v177 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v36 = OUTLINED_FUNCTION_110(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20](v39);
  v41 = &v167 - v40;
  OUTLINED_FUNCTION_230();
  v43 = *(v1 + 16);
  v42 = *(v1 + 24);
  OUTLINED_FUNCTION_230();
  v44 = v43 == *(v0 + 16) && v42 == *(v0 + 24);
  if (!v44 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v45 = *(v1 + 32);
  v46 = *(v1 + 40);
  OUTLINED_FUNCTION_230();
  v47 = v45 == *(v0 + 32) && v46 == *(v0 + 40);
  if (!v47 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v48 = *(v1 + 48);
  v49 = *(v1 + 56);
  OUTLINED_FUNCTION_230();
  v50 = v48 == *(v0 + 48) && v49 == *(v0 + 56);
  if (!v50 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v51 = *(v1 + 64);
  v52 = *(v1 + 72);
  OUTLINED_FUNCTION_230();
  v53 = v51 == *(v0 + 64) && v52 == *(v0 + 72);
  if (!v53 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v54 = *(v1 + 80);
  v55 = *(v1 + 88);
  OUTLINED_FUNCTION_230();
  v56 = v54 == *(v0 + 80) && v55 == *(v0 + 88);
  if (!v56 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v57 = *(v1 + 96);
  v58 = *(v1 + 104);
  OUTLINED_FUNCTION_230();
  v59 = v57 == *(v0 + 96) && v58 == *(v0 + 104);
  if (!v59 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v60 = *(v1 + 112);
  v61 = *(v1 + 120);
  OUTLINED_FUNCTION_230();
  v62 = v60 == *(v0 + 112) && v61 == *(v0 + 120);
  if (!v62 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v63 = *(v1 + 128);
  OUTLINED_FUNCTION_230();
  if (v63 != *(v0 + 128))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v64 = *(v1 + 136);
  OUTLINED_FUNCTION_230();
  if (v64 != *(v0 + 136))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v65 = *(v1 + 144);
  v66 = *(v1 + 152);
  OUTLINED_FUNCTION_230();
  v67 = v65 == *(v0 + 144) && v66 == *(v0 + 152);
  if (!v67 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v68 = *(v1 + 160);
  OUTLINED_FUNCTION_230();
  if (v68 != *(v0 + 160))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v69 = *(v1 + 168);
  v70 = *(v1 + 176);
  OUTLINED_FUNCTION_230();
  v71 = v69 == *(v0 + 168) && v70 == *(v0 + 176);
  if (!v71 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v72 = *(v1 + 184);
  v73 = *(v1 + 192);
  OUTLINED_FUNCTION_230();
  v74 = v72 == *(v0 + 184) && v73 == *(v0 + 192);
  if (!v74 && (OUTLINED_FUNCTION_151_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v75 = *(v1 + 200);
  OUTLINED_FUNCTION_230();
  if (v75 != *(v0 + 200))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  v76 = *(v1 + 201);
  OUTLINED_FUNCTION_230();
  if (v76 != *(v0 + 201))
  {
    return 0;
  }

  OUTLINED_FUNCTION_230();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_230();
  v77 = *(v30 + 48);
  v78 = v177;
  sub_26BD31AF8();
  sub_26BD31AF8();
  v79 = OUTLINED_FUNCTION_216_0();
  OUTLINED_FUNCTION_112(v79, v80, v26);
  if (v44)
  {

    sub_26BD04E80(v41, &qword_280449840, &qword_26BDA36D8);
    OUTLINED_FUNCTION_238_0();
    OUTLINED_FUNCTION_112(v81, v82, v83);
    if (v44)
    {
      sub_26BD04E80(v78, &qword_280449840, &qword_26BDA36D8);
      goto LABEL_66;
    }

LABEL_64:
    v88 = &qword_280449920;
    v89 = &qword_26BDA9390;
    v90 = v78;
LABEL_75:
    sub_26BD04E80(v90, v88, v89);
    goto LABEL_76;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_238_0();
  OUTLINED_FUNCTION_112(v84, v85, v86);
  if (v87)
  {

    sub_26BD04E80(v41, &qword_280449840, &qword_26BDA36D8);
    sub_26BD65CB0();
    goto LABEL_64;
  }

  sub_26BD65C08();

  v91 = static PhoneNumber.== infix(_:_:)();
  OUTLINED_FUNCTION_222_0();
  sub_26BD65CB0();
  sub_26BD04E80(v41, &qword_280449840, &qword_26BDA36D8);
  sub_26BD65CB0();
  sub_26BD04E80(v78, &qword_280449840, &qword_26BDA36D8);
  if ((v91 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_66:
  OUTLINED_FUNCTION_230();
  v92 = v173;
  OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_230();
  v93 = v174;
  v94 = *(v175 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  v95 = v176;
  OUTLINED_FUNCTION_112(v93, 1, v176);
  if (v44)
  {
    sub_26BD04E80(v92, &qword_280448F88, &qword_26BDA5440);
    OUTLINED_FUNCTION_258_0();
    OUTLINED_FUNCTION_112(v96, v97, v98);
    if (v44)
    {
      sub_26BD04E80(v93, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_79;
    }

    goto LABEL_74;
  }

  v99 = v171;
  sub_26BD31AF8();
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_112(v100, v101, v102);
  if (v103)
  {
    sub_26BD04E80(v92, &qword_280448F88, &qword_26BDA5440);
    (*(v172 + 8))(v99, v95);
LABEL_74:
    v88 = &qword_2804490C8;
    v89 = &qword_26BDA7780;
    v90 = v93;
    goto LABEL_75;
  }

  v105 = v172;
  v106 = v170;
  (*(v172 + 32))(v170, v93 + v94, v95);
  OUTLINED_FUNCTION_5_2();
  sub_26BD6C1DC(v107, v108);
  OUTLINED_FUNCTION_242();
  v109 = v99;
  LODWORD(v177) = sub_26BDA0BB0();
  v110 = *(v105 + 8);
  v110(v106, v95);
  v111 = OUTLINED_FUNCTION_163_0();
  v113 = v112;
  sub_26BD04E80(v111, v114, v112);
  v110(v109, v95);
  sub_26BD04E80(v93, &qword_280448F88, v113);
  if ((v177 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_79:
  v115 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash);
  OUTLINED_FUNCTION_230();
  v117 = *v115;
  v116 = v115[1];
  v118 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__iTunesUserDsIDHash);
  OUTLINED_FUNCTION_230();
  v120 = *v118;
  v119 = v118[1];
  v121 = OUTLINED_FUNCTION_222();
  sub_26BCFEFC4(v121, v122);
  v123 = OUTLINED_FUNCTION_286_0();
  sub_26BCFEFC4(v123, v124);
  v125 = OUTLINED_FUNCTION_222();
  v126 = MEMORY[0x26D695520](v125);
  v127 = OUTLINED_FUNCTION_286_0();
  sub_26BCFF01C(v127, v128);
  v129 = OUTLINED_FUNCTION_222();
  sub_26BCFF01C(v129, v130);
  if ((v126 & 1) == 0)
  {
    goto LABEL_76;
  }

  v131 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint);
  OUTLINED_FUNCTION_230();
  v132 = *v131;
  v133 = v131[1];
  v134 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__entryPoint);
  OUTLINED_FUNCTION_230();
  if (v132 != *v134 || v133 != v134[1])
  {
    OUTLINED_FUNCTION_163_0();
    if ((sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  v136 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended;
  OUTLINED_FUNCTION_230();
  LODWORD(v136) = *(v1 + v136);
  v137 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isServiceRecommended;
  OUTLINED_FUNCTION_230();
  if (v136 != *(v0 + v137))
  {
    goto LABEL_76;
  }

  v138 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  OUTLINED_FUNCTION_230();
  v139 = *(v1 + v138);
  v140 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
  OUTLINED_FUNCTION_230();
  if (v139 != *(v0 + v140))
  {
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_277_0();
  OUTLINED_FUNCTION_230();
  v141 = *(v175 + 48);
  v142 = v169;
  OUTLINED_FUNCTION_277_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_112(v142, 1, v176);
  if (!v44)
  {
    v143 = v169;
    sub_26BD31AF8();
    OUTLINED_FUNCTION_112(v143 + v141, 1, v176);
    if (!v144)
    {
      v145 = v172;
      v147 = v169;
      v146 = v170;
      v148 = v176;
      (*(v172 + 32))(v170, v169 + v141, v176);
      OUTLINED_FUNCTION_5_2();
      sub_26BD6C1DC(v149, v150);
      v151 = v167;
      OUTLINED_FUNCTION_204();
      v152 = sub_26BDA0BB0();
      v153 = *(v145 + 8);
      v153(v146, v148);
      sub_26BD04E80(v168, &qword_280448F88, &qword_26BDA5440);
      v153(v151, v148);
      sub_26BD04E80(v147, &qword_280448F88, &qword_26BDA5440);
      if (v152)
      {
        goto LABEL_97;
      }

LABEL_76:

      return 0;
    }

    sub_26BD04E80(v168, &qword_280448F88, &qword_26BDA5440);
    (*(v172 + 8))(v167, v176);
    goto LABEL_95;
  }

  sub_26BD04E80(v168, &qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_112(v169 + v141, 1, v176);
  if (!v44)
  {
LABEL_95:
    v88 = &qword_2804490C8;
    v89 = &qword_26BDA7780;
    v90 = v169;
    goto LABEL_75;
  }

  sub_26BD04E80(v169, &qword_280448F88, &qword_26BDA5440);
LABEL_97:
  v154 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation;
  OUTLINED_FUNCTION_230();
  LODWORD(v154) = *(v1 + v154);
  v155 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__restartedAfterRecommendation;
  OUTLINED_FUNCTION_230();
  if (v154 != *(v0 + v155))
  {
    goto LABEL_76;
  }

  v156 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber);
  OUTLINED_FUNCTION_230();
  v157 = *v156;
  v158 = v156[1];
  v159 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__osBuildNumber);
  OUTLINED_FUNCTION_230();
  if (v157 != *v159 || v158 != v159[1])
  {
    OUTLINED_FUNCTION_163_0();
    if ((sub_26BDA0FB0() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  v161 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
  OUTLINED_FUNCTION_230();
  v162 = *v161;
  v163 = v161[1];
  v164 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__currentDeviceSerialNumber);
  OUTLINED_FUNCTION_230();
  if (v162 != *v164 || v163 != v164[1])
  {
    OUTLINED_FUNCTION_163_0();
    v166 = sub_26BDA0FB0();

    return (v166 & 1) != 0;
  }

  return 1;
}

uint64_t sub_26BD68ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEF0, type metadata accessor for TriageRequest.ClientContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD68B5C(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD68BCC()
{
  sub_26BD6C1DC(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext);

  return sub_26BDA0A00();
}

uint64_t sub_26BD68C64()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A6F8);
  __swift_project_value_buffer(v0, qword_28044A6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26BDA77B0;
  v4 = v37 + v3;
  v5 = v37 + v3 + v1[14];
  *(v37 + v3) = 1;
  *v5 = "ds_id";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "first_name";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  *(v9 + 24) = "customerFirstName";
  *(v9 + 32) = 17;
  *(v9 + 40) = 2;
  v10 = *MEMORY[0x277D21878];
  v8();
  v11 = v1[14];
  v12 = (v4 + 2 * v2);
  *v12 = 3;
  v13 = v12 + v11;
  *v13 = "last_name";
  *(v13 + 1) = 9;
  v13[16] = 2;
  *(v13 + 3) = "customerLastName";
  *(v13 + 4) = 16;
  v13[40] = 2;
  v8();
  v14 = v1[14];
  v15 = (v4 + 3 * v2);
  *v15 = 4;
  v16 = v15 + v14;
  *v16 = "email";
  *(v16 + 1) = 5;
  v16[16] = 2;
  *(v16 + 3) = "customerEmail";
  *(v16 + 4) = 13;
  v16[40] = 2;
  v8();
  v17 = v1[14];
  v18 = (v4 + 4 * v2);
  *v18 = 5;
  v19 = v18 + v17;
  *v19 = "country";
  *(v19 + 1) = 7;
  v19[16] = 2;
  *(v19 + 3) = "custCountry";
  *(v19 + 4) = 11;
  v19[40] = 2;
  v8();
  v20 = (v4 + 5 * v2);
  v21 = v20 + v1[14];
  *v20 = 6;
  *v21 = "alternate_last_name";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = (v4 + 6 * v2);
  v23 = v22 + v1[14];
  *v22 = 7;
  *v23 = "alternate_first_name";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v8();
  v24 = (v4 + 7 * v2);
  v25 = v24 + v1[14];
  *v24 = 8;
  *v25 = "home_dial";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v8();
  v26 = (v4 + 8 * v2);
  v27 = v26 + v1[14];
  *v26 = 9;
  *v27 = "home_phone";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  v28 = (v4 + 9 * v2);
  v29 = v28 + v1[14];
  *v28 = 10;
  *v29 = "office_dial";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v8();
  v30 = (v4 + 10 * v2);
  v31 = v30 + v1[14];
  *v30 = 11;
  *v31 = "office_phone";
  *(v31 + 1) = 12;
  v31[16] = 2;
  v8();
  v32 = (v4 + 11 * v2);
  v33 = v32 + v1[14];
  *v32 = 12;
  *v33 = "phone_type";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v8();
  v34 = (v4 + 12 * v2);
  v35 = v34 + v1[14];
  *v34 = 13;
  *v35 = "customer_phone";
  *(v35 + 1) = 14;
  v35[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.Customer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      default:
        continue;
    }
  }
}

uint64_t TriageRequest.Customer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_29();
      if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
      {
        v13 = v2[6];
        v14 = v2[7];
        OUTLINED_FUNCTION_29();
        if (!v15 || (result = OUTLINED_FUNCTION_103(), !v1))
        {
          v16 = v2[8];
          v17 = v2[9];
          OUTLINED_FUNCTION_29();
          if (!v18 || (result = OUTLINED_FUNCTION_103(), !v1))
          {
            v19 = v2[10];
            v20 = v2[11];
            OUTLINED_FUNCTION_29();
            if (!v21 || (result = OUTLINED_FUNCTION_103(), !v1))
            {
              v22 = v2[12];
              v23 = v2[13];
              OUTLINED_FUNCTION_29();
              if (!v24 || (result = OUTLINED_FUNCTION_103(), !v1))
              {
                v25 = v2[14];
                v26 = v2[15];
                OUTLINED_FUNCTION_29();
                if (!v27 || (result = OUTLINED_FUNCTION_103(), !v1))
                {
                  v28 = v2[16];
                  v29 = v2[17];
                  OUTLINED_FUNCTION_29();
                  if (!v30 || (result = OUTLINED_FUNCTION_103(), !v1))
                  {
                    v31 = v2[18];
                    v32 = v2[19];
                    OUTLINED_FUNCTION_29();
                    if (!v33 || (result = OUTLINED_FUNCTION_103(), !v1))
                    {
                      v34 = v2[20];
                      v35 = v2[21];
                      OUTLINED_FUNCTION_29();
                      if (!v36 || (result = OUTLINED_FUNCTION_103(), !v1))
                      {
                        v37 = v2[22];
                        v38 = v2[23];
                        OUTLINED_FUNCTION_29();
                        if (!v39 || (result = OUTLINED_FUNCTION_103(), !v1))
                        {
                          v40 = v2[24];
                          v41 = v2[25];
                          OUTLINED_FUNCTION_29();
                          if (!v42 || (result = OUTLINED_FUNCTION_103(), !v1))
                          {
                            v43 = *(type metadata accessor for TriageRequest.Customer(0) + 68);
                            return OUTLINED_FUNCTION_104();
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

  return result;
}

uint64_t static TriageRequest.Customer.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_249_0();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v13 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v13 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v14 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v14 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v15 = v3[10] == v2[10] && v3[11] == v2[11];
  if (!v15 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v16 = v3[12] == v2[12] && v3[13] == v2[13];
  if (!v16 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v17 = v3[14] == v2[14] && v3[15] == v2[15];
  if (!v17 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v18 = v3[16] == v2[16] && v3[17] == v2[17];
  if (!v18 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v19 = v3[18] == v2[18] && v3[19] == v2[19];
  if (!v19 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v20 = v3[20] == v2[20] && v3[21] == v2[21];
  if (!v20 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v21 = v3[22] == v2[22] && v3[23] == v2[23];
  if (!v21 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v22 = v3[24] == v2[24] && v3[25] == v2[25];
  if (!v22 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v23 = *(type metadata accessor for TriageRequest.Customer(0) + 68);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v24, v25);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t (*sub_26BD69668(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t sub_26BD696BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEE8, type metadata accessor for TriageRequest.Customer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD6973C(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044A668, type metadata accessor for TriageRequest.Customer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD697AC()
{
  sub_26BD6C1DC(&qword_28044A668, type metadata accessor for TriageRequest.Customer);

  return sub_26BDA0A00();
}

uint64_t sub_26BD69844()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A710);
  __swift_project_value_buffer(v0, qword_28044A710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "solutions_offered";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "solutions_not_offered";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "solutions_uuid";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.ReportingContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t TriageRequest.ReportingContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_29();
      if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
      {
        v13 = *(type metadata accessor for TriageRequest.ReportingContext(0) + 28);
        return OUTLINED_FUNCTION_104();
      }
    }
  }

  return result;
}

uint64_t static TriageRequest.ReportingContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_249_0();
  v10 = v4 && v8 == v9;
  if (!v10 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for TriageRequest.ReportingContext(0) + 28);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v12, v13);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD69CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEE0, type metadata accessor for TriageRequest.ReportingContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD69D58(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044A670, type metadata accessor for TriageRequest.ReportingContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD69DC8()
{
  sub_26BD6C1DC(&qword_28044A670, type metadata accessor for TriageRequest.ReportingContext);

  return sub_26BDA0A00();
}

uint64_t sub_26BD69E60()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A728);
  __swift_project_value_buffer(v0, qword_28044A728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_26BDA77C0;
  v4 = v108 + v3 + v1[14];
  *(v108 + v3) = 1;
  *v4 = "solution_type_string";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v108 + v3 + v2 + v1[14];
  *(v108 + v3 + v2) = 2;
  *v8 = "solution_sub_type_string";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v108 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "solution_sub_types_string";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v108 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "uuid";
  *(v12 + 1) = 4;
  v12[16] = 2;
  *(v12 + 3) = "uuId";
  *(v12 + 4) = 4;
  v12[40] = 2;
  v107 = *MEMORY[0x277D21878];
  v7();
  v13 = v1[14];
  v14 = (v108 + v3 + 4 * v2);
  *v14 = 5;
  v15 = v14 + v13;
  *v15 = "is_for_premium_advisor";
  *(v15 + 1) = 22;
  v15[16] = 2;
  *(v15 + 3) = "premiumAdvisorFlag";
  *(v15 + 4) = 18;
  v15[40] = 2;
  v7();
  v16 = (v108 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "apple_id";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v7();
  v18 = (v108 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "execute_diagnostics";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v7();
  v20 = (v108 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "user_entered_first_name";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v7();
  v22 = (v108 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "user_entered_last_name";
  *(v23 + 1) = 22;
  v23[16] = 2;
  v7();
  v24 = (v108 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "user_entered_email";
  *(v25 + 1) = 18;
  v25[16] = 2;
  v7();
  v26 = (v108 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "user_entered_phone_number";
  *(v27 + 1) = 25;
  v27[16] = 2;
  v7();
  v28 = (v108 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "user_entered_country_code";
  *(v29 + 1) = 25;
  v29[16] = 2;
  v7();
  v30 = (v108 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "user_entered_country_char_code";
  *(v31 + 1) = 30;
  v31[16] = 2;
  v7();
  v32 = (v108 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "user_entered_address";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v7();
  v34 = (v108 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "user_entered_secondary_details";
  *(v35 + 1) = 30;
  v35[16] = 2;
  v7();
  v36 = v1[14];
  v37 = (v108 + v3 + 15 * v2);
  *v37 = 30;
  v38 = v37 + v36;
  *v38 = "click_to_chat_estimated_wait_time_id";
  *(v38 + 1) = 36;
  v38[16] = 2;
  *(v38 + 3) = "c2chEwt";
  *(v38 + 4) = 7;
  v38[40] = 2;
  v7();
  v39 = v1[14];
  v40 = (v108 + v3 + 16 * v2);
  *v40 = 40;
  v41 = v40 + v39;
  *v41 = "chat_transaction_id";
  *(v41 + 1) = 19;
  v41[16] = 2;
  *(v41 + 3) = "transactionId";
  *(v41 + 4) = 13;
  v41[40] = 2;
  v7();
  v42 = (v108 + v3 + 17 * v2);
  v43 = v42 + v1[14];
  *v42 = 41;
  *v43 = "rtct_opted";
  *(v43 + 1) = 10;
  v43[16] = 2;
  v7();
  v44 = (v108 + v3 + 18 * v2);
  v45 = v44 + v1[14];
  *v44 = 50;
  *v45 = "reservation_slot";
  *(v45 + 1) = 16;
  v45[16] = 2;
  v7();
  v46 = v1[14];
  v47 = (v108 + v3 + 19 * v2);
  *v47 = 60;
  v48 = v47 + v46;
  *v48 = "click_to_call_estimated_wait_time_id";
  *(v48 + 1) = 36;
  v48[16] = 2;
  *(v48 + 3) = "c2cEwt";
  *(v48 + 4) = 6;
  v48[40] = 2;
  v7();
  v49 = (v108 + v3 + 20 * v2);
  v50 = v49 + v1[14];
  *v49 = 70;
  *v50 = "reservation_data";
  *(v50 + 1) = 16;
  v50[16] = 2;
  v7();
  v51 = v1[14];
  v52 = (v108 + v3 + 21 * v2);
  *v52 = 80;
  v53 = v52 + v51;
  *v53 = "authorized_service_provider_referred_store_id";
  *(v53 + 1) = 45;
  v53[16] = 2;
  *(v53 + 3) = "aspReferredStoreId";
  *(v53 + 4) = 18;
  v53[40] = 2;
  v7();
  v54 = v1[14];
  v55 = (v108 + v3 + 22 * v2);
  *v55 = 81;
  v56 = v55 + v54;
  *v56 = "authorized_service_provider_referred_store_url";
  *(v56 + 1) = 46;
  v56[16] = 2;
  *(v56 + 3) = "aspReferredUrl";
  *(v56 + 4) = 14;
  v56[40] = 2;
  v7();
  v57 = v1[14];
  v58 = (v108 + v3 + 23 * v2);
  *v58 = 82;
  v59 = v58 + v57;
  *v59 = "authorized_service_provider_referred_store_address";
  *(v59 + 1) = 50;
  v59[16] = 2;
  *(v59 + 3) = "aspReferredAddress";
  *(v59 + 4) = 18;
  v59[40] = 2;
  v7();
  v60 = v1[14];
  v61 = (v108 + v3 + 24 * v2);
  *v61 = 83;
  v62 = v61 + v60;
  *v62 = "authorized_service_provider_referred_store_name";
  *(v62 + 1) = 47;
  v62[16] = 2;
  *(v62 + 3) = "aspReferred";
  *(v62 + 4) = 11;
  v62[40] = 2;
  v7();
  v63 = v1[14];
  v64 = (v108 + v3 + 25 * v2);
  *v64 = 90;
  v65 = v64 + v63;
  *v65 = "authorized_service_provider_referred_phone_number";
  *(v65 + 1) = 49;
  v65[16] = 2;
  *(v65 + 3) = "aspReferredPhoneNumber";
  *(v65 + 4) = 22;
  v65[40] = 2;
  v7();
  v66 = (v108 + v3 + 26 * v2);
  v67 = v66 + v1[14];
  *v66 = 100;
  *v67 = "genesys_sonar_email_address";
  *(v67 + 1) = 27;
  v67[16] = 2;
  v7();
  v68 = v1[14];
  v69 = (v108 + v3 + 27 * v2);
  *v69 = 101;
  v70 = v69 + v68;
  *v70 = "email_attachment_token";
  *(v70 + 1) = 22;
  v70[16] = 2;
  *(v70 + 3) = "attachmentToken";
  *(v70 + 4) = 15;
  v70[40] = 2;
  v7();
  v71 = v1[14];
  v72 = (v108 + v3 + 28 * v2);
  *v72 = 102;
  v73 = v72 + v71;
  *v73 = "email_transaction_id";
  *(v73 + 1) = 20;
  v73[16] = 2;
  *(v73 + 3) = "emailTransaction";
  *(v73 + 4) = 16;
  v73[40] = 2;
  v7();
  v74 = v1[14];
  v75 = (v108 + v3 + 29 * v2);
  *v75 = 103;
  v76 = v75 + v74;
  *v76 = "email_additional_details";
  *(v76 + 1) = 24;
  v76[16] = 2;
  *(v76 + 3) = "additionalDetails";
  *(v76 + 4) = 17;
  v76[40] = 2;
  v7();
  v77 = v1[14];
  v78 = (v108 + v3 + 30 * v2);
  *v78 = 104;
  v79 = v78 + v77;
  *v79 = "email_estimated_wait_time";
  *(v79 + 1) = 25;
  v79[16] = 2;
  *(v79 + 3) = "emlSla";
  *(v79 + 4) = 6;
  v79[40] = 2;
  v7();
  v80 = v1[14];
  v81 = (v108 + v3 + 31 * v2);
  *v81 = 105;
  v82 = v81 + v80;
  *v82 = "email_file_attachment_ids";
  *(v82 + 1) = 25;
  v82[16] = 2;
  *(v82 + 3) = "attachmentFileIds";
  *(v82 + 4) = 17;
  v82[40] = 2;
  v7();
  v83 = (v108 + v3 + 32 * v2);
  v84 = v83 + v1[14];
  *v83 = 110;
  *v84 = "mobile_carrier_referred_name";
  *(v84 + 1) = 28;
  v84[16] = 2;
  v7();
  v85 = v1[14];
  v86 = (v108 + v3 + 33 * v2);
  *v86 = 111;
  v87 = v86 + v85;
  *v87 = "mobile_carrier_referred_url";
  *(v87 + 1) = 27;
  v87[16] = 2;
  *(v87 + 3) = "mobileCarrierReferredURL";
  *(v87 + 4) = 24;
  v87[40] = 2;
  v7();
  v88 = (v108 + v3 + 34 * v2);
  v89 = v88 + v1[14];
  *v88 = 120;
  *v89 = "resolved_article";
  *(v89 + 1) = 16;
  v89[16] = 2;
  v7();
  v90 = v1[14];
  v91 = (v108 + v3 + 35 * v2);
  *v91 = 121;
  v92 = v91 + v90;
  *v92 = "resolved_article_title";
  *(v92 + 1) = 22;
  v92[16] = 2;
  *(v92 + 3) = "resArticleTitle";
  *(v92 + 4) = 15;
  v92[40] = 2;
  v7();
  v93 = v1[14];
  v94 = (v108 + v3 + 36 * v2);
  *v94 = 122;
  v95 = v94 + v93;
  *v95 = "resolved_article_url";
  *(v95 + 1) = 20;
  v95[16] = 2;
  *(v95 + 3) = "resArticleTitleUrl";
  *(v95 + 4) = 18;
  v95[40] = 2;
  v7();
  v96 = (v108 + v3 + 37 * v2);
  v97 = v96 + v1[14];
  *v96 = 130;
  *v97 = "payment_flow_data";
  *(v97 + 1) = 17;
  v97[16] = 2;
  v7();
  v98 = (v108 + v3 + 38 * v2);
  v99 = v98 + v1[14];
  *v98 = 131;
  *v99 = "manage_coverage_data";
  *(v99 + 1) = 20;
  v99[16] = 2;
  v7();
  v100 = (v108 + v3 + 39 * v2);
  v101 = v100 + v1[14];
  *v100 = 140;
  *v101 = "application_data";
  *(v101 + 1) = 16;
  v101[16] = 2;
  v7();
  v102 = (v108 + v3 + 40 * v2);
  v103 = v102 + v1[14];
  *v102 = 150;
  *v103 = "is_customer_opted_for_sms";
  *(v103 + 1) = 25;
  v103[16] = 2;
  v7();
  v104 = (v108 + v3 + 41 * v2);
  v105 = v104 + v1[14];
  *v104 = 160;
  *v105 = "smb_repair_request_details";
  *(v105 + 1) = 26;
  v105[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD6AC30()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__executeDiagnostics;
  v3 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredAddress, 1, 1, v3);
  v10 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted) = 0;
  v13 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationData, 1, 1, v3);
  v15 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds) = v1;
  v25 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__paymentFlowData, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__manageCoverageData, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData) = xmmword_26BDA19C0;
  *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__smbRepairRequestDetails, 1, 1, v3);
  return v0;
}

uint64_t sub_26BD6AF10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v197 = &v193 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0;
  v193 = (v1 + 56);
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v194 = (v1 + 72);
  *(v1 + 80) = 0;
  v195 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__executeDiagnostics;
  v196 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__executeDiagnostics;
  v7 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  v198 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  v199 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  v200 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  v201 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v202 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredAddress;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredAddress, 1, 1, v7);
  v14 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  v203 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  v204 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  v205 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v206 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted) = 0;
  v17 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  v207 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  v208 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v209 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationData;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationData, 1, 1, v7);
  v19 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  v210 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  v211 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  v212 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  v213 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  v214 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  v215 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  v216 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  v217 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  v218 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  v219 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v220 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds) = MEMORY[0x277D84F90];
  v29 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  v221 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  v222 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  v223 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  v224 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v33 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  v225 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  *v33 = 0;
  v33[1] = 0xE000000000000000;
  v226 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__paymentFlowData;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__paymentFlowData, 1, 1, v7);
  v227 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__manageCoverageData;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__manageCoverageData, 1, 1, v7);
  v228 = (v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData);
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData) = xmmword_26BDA19C0;
  v229 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
  *(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms) = 0;
  v230 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__smbRepairRequestDetails;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__smbRepairRequestDetails, 1, 1, v7);
  swift_beginAccess();
  v35 = *(a1 + 16);
  v34 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v35;
  *(v1 + 24) = v34;
  swift_beginAccess();
  v36 = *(a1 + 32);
  v37 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v36;
  *(v1 + 40) = v37;

  swift_beginAccess();
  v38 = *(a1 + 48);
  swift_beginAccess();
  v39 = *(v1 + 48);
  *(v1 + 48) = v38;

  swift_beginAccess();
  v41 = *(a1 + 56);
  v40 = *(a1 + 64);
  v42 = v193;
  swift_beginAccess();
  v43 = *(v1 + 64);
  *v42 = v41;
  *(v1 + 64) = v40;

  swift_beginAccess();
  LOBYTE(v40) = *(a1 + 72);
  v44 = v194;
  swift_beginAccess();
  *v44 = v40;
  swift_beginAccess();
  v46 = *(a1 + 80);
  v45 = *(a1 + 88);
  v47 = v195;
  swift_beginAccess();
  v48 = *(v1 + 88);
  *v47 = v46;
  *(v1 + 88) = v45;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v49 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  swift_beginAccess();
  v52 = v8[1];
  *v8 = v51;
  v8[1] = v50;

  v53 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  swift_beginAccess();
  v55 = *v53;
  v54 = v53[1];
  swift_beginAccess();
  v56 = v9[1];
  *v9 = v55;
  v9[1] = v54;

  v57 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];
  v60 = v198;
  swift_beginAccess();
  v61 = v60[1];
  *v60 = v59;
  v60[1] = v58;

  v62 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  swift_beginAccess();
  v64 = *v62;
  v63 = v62[1];
  v65 = v199;
  swift_beginAccess();
  v66 = v65[1];
  *v65 = v64;
  v65[1] = v63;

  v67 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = v200;
  swift_beginAccess();
  v71 = v70[1];
  *v70 = v69;
  v70[1] = v68;

  v72 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  swift_beginAccess();
  v74 = *v72;
  v73 = v72[1];
  v75 = v201;
  swift_beginAccess();
  v76 = v75[1];
  *v75 = v74;
  v75[1] = v73;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v77 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];
  v80 = v203;
  swift_beginAccess();
  v81 = v80[1];
  *v80 = v79;
  v80[1] = v78;

  v82 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  swift_beginAccess();
  v84 = *v82;
  v83 = v82[1];
  v85 = v204;
  swift_beginAccess();
  v86 = v85[1];
  *v85 = v84;
  v85[1] = v83;

  v87 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  swift_beginAccess();
  v89 = *v87;
  v88 = v87[1];
  v90 = v205;
  swift_beginAccess();
  v91 = v90[1];
  *v90 = v89;
  v90[1] = v88;

  v92 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
  swift_beginAccess();
  LOBYTE(v92) = *(a1 + v92);
  v93 = v206;
  swift_beginAccess();
  *(v1 + v93) = v92;
  v94 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  swift_beginAccess();
  v96 = *v94;
  v95 = v94[1];
  v97 = v207;
  swift_beginAccess();
  v98 = v97[1];
  *v97 = v96;
  v97[1] = v95;

  v99 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  swift_beginAccess();
  v101 = *v99;
  v100 = v99[1];
  v102 = v208;
  swift_beginAccess();
  v103 = v102[1];
  *v102 = v101;
  v102[1] = v100;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v104 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  swift_beginAccess();
  v106 = *v104;
  v105 = v104[1];
  v107 = v210;
  swift_beginAccess();
  v108 = v107[1];
  *v107 = v106;
  v107[1] = v105;

  v109 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  swift_beginAccess();
  v111 = *v109;
  v110 = v109[1];
  v112 = v211;
  swift_beginAccess();
  v113 = v112[1];
  *v112 = v111;
  v112[1] = v110;

  v114 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  swift_beginAccess();
  v116 = *v114;
  v115 = v114[1];
  v117 = v212;
  swift_beginAccess();
  v118 = v117[1];
  *v117 = v116;
  v117[1] = v115;

  v119 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  swift_beginAccess();
  v121 = *v119;
  v120 = v119[1];
  v122 = v213;
  swift_beginAccess();
  v123 = v122[1];
  *v122 = v121;
  v122[1] = v120;

  v124 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  swift_beginAccess();
  v126 = *v124;
  v125 = v124[1];
  v127 = v214;
  swift_beginAccess();
  v128 = v127[1];
  *v127 = v126;
  v127[1] = v125;

  v129 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  swift_beginAccess();
  v131 = *v129;
  v130 = v129[1];
  v132 = v215;
  swift_beginAccess();
  v133 = v132[1];
  *v132 = v131;
  v132[1] = v130;

  v134 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  swift_beginAccess();
  v136 = *v134;
  v135 = v134[1];
  v137 = v216;
  swift_beginAccess();
  v138 = v137[1];
  *v137 = v136;
  v137[1] = v135;

  v139 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  swift_beginAccess();
  v141 = *v139;
  v140 = v139[1];
  v142 = v217;
  swift_beginAccess();
  v143 = v142[1];
  *v142 = v141;
  v142[1] = v140;

  v144 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  swift_beginAccess();
  v146 = *v144;
  v145 = v144[1];
  v147 = v218;
  swift_beginAccess();
  v148 = v147[1];
  *v147 = v146;
  v147[1] = v145;

  v149 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  swift_beginAccess();
  v151 = *v149;
  v150 = v149[1];
  v152 = v219;
  swift_beginAccess();
  v153 = v152[1];
  *v152 = v151;
  v152[1] = v150;

  v154 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
  swift_beginAccess();
  v155 = *(a1 + v154);
  v156 = v220;
  swift_beginAccess();
  v157 = *(v1 + v156);
  *(v1 + v156) = v155;

  v158 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  swift_beginAccess();
  v160 = *v158;
  v159 = v158[1];
  v161 = v221;
  swift_beginAccess();
  v162 = v161[1];
  *v161 = v160;
  v161[1] = v159;

  v163 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  swift_beginAccess();
  v165 = *v163;
  v164 = v163[1];
  v166 = v222;
  swift_beginAccess();
  v167 = v166[1];
  *v166 = v165;
  v166[1] = v164;

  v168 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  swift_beginAccess();
  v170 = *v168;
  v169 = v168[1];
  v171 = v223;
  swift_beginAccess();
  v172 = v171[1];
  *v171 = v170;
  v171[1] = v169;

  v173 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  swift_beginAccess();
  v175 = *v173;
  v174 = v173[1];
  v176 = v224;
  swift_beginAccess();
  v177 = v176[1];
  *v176 = v175;
  v176[1] = v174;

  v178 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  swift_beginAccess();
  v180 = *v178;
  v179 = v178[1];
  v181 = v225;
  swift_beginAccess();
  v182 = v181[1];
  *v181 = v180;
  v181[1] = v179;

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  v183 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData);
  swift_beginAccess();
  v185 = *v183;
  v184 = v183[1];
  v186 = v228;
  swift_beginAccess();
  v187 = v186;
  v188 = *v186;
  v189 = v187[1];
  *v187 = v185;
  v187[1] = v184;
  sub_26BCFEFC4(v185, v184);
  sub_26BCFF01C(v188, v189);
  v190 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
  swift_beginAccess();
  LOBYTE(v190) = *(a1 + v190);
  v191 = v229;
  swift_beginAccess();
  *(v1 + v191) = v190;
  swift_beginAccess();
  sub_26BD31AF8();

  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  return v1;
}

uint64_t sub_26BD6C1DC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_26BD6C224()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__executeDiagnostics, &qword_280448F88, &qword_26BDA5440);
  v6 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName + 8);

  v7 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName + 8);

  v8 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail + 8);

  v9 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber + 8);

  v10 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode + 8);

  v11 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredAddress, &qword_280448F88, &qword_26BDA5440);
  v12 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails + 8);

  v13 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID + 8);

  v14 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID + 8);

  v15 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot + 8);

  v16 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationData, &qword_280448F88, &qword_26BDA5440);
  v17 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID + 8);

  v18 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL + 8);

  v19 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress + 8);

  v20 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName + 8);

  v21 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber + 8);

  v22 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress + 8);

  v23 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken + 8);

  v24 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID + 8);

  v25 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails + 8);

  v26 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime + 8);

  v27 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds);

  v28 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName + 8);

  v29 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL + 8);

  v30 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle + 8);

  v31 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle + 8);

  v32 = *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__paymentFlowData, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__manageCoverageData, &qword_280448F88, &qword_26BDA5440);
  sub_26BCFF01C(*(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData), *(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData + 8));
  sub_26BD04E80(v0 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__smbRepairRequestDetails, &qword_280448F88, &qword_26BDA5440);
  return v0;
}

uint64_t sub_26BD6C558(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_26BD6C608()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v5 & 1) != 0)
    {
      return result;
    }

    if (!(!v3 & v2))
    {
      switch(result)
      {
        case 1:
        case 2:
        case 4:
        case 6:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 15:
        case 30:
        case 40:
          goto LABEL_22;
        case 3:
          goto LABEL_19;
        case 5:
        case 41:
          goto LABEL_21;
        case 7:
        case 14:
          goto LABEL_20;
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
          continue;
        default:
          goto LABEL_25;
      }
    }

    switch(result)
    {
      case 'P':
      case 'Q':
      case 'R':
      case 'S':
      case 'Z':
      case 'd':
      case 'e':
      case 'f':
      case 'g':
      case 'h':
      case 'n':
      case 'o':
        goto LABEL_22;
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'a':
      case 'b':
      case 'c':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
        continue;
      case 'i':
LABEL_19:
        swift_beginAccess();
        sub_26BDA0970();
        goto LABEL_23;
      default:
        if (!(!v3 & v2))
        {
          switch(result)
          {
            case 120:
            case 121:
            case 122:
              goto LABEL_22;
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
              continue;
            case 130:
            case 131:
              goto LABEL_20;
            default:
LABEL_25:
              JUMPOUT(0);
          }
        }

        switch(result)
        {
          case 50:
          case 60:
LABEL_22:
            swift_beginAccess();
            sub_26BDA0990();
            goto LABEL_23;
          case 70:
LABEL_20:
            swift_beginAccess();
            sub_26BDA0810();
            sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
            sub_26BDA09B0();
            goto LABEL_23;
          case 140:
            swift_beginAccess();
            sub_26BDA0940();
LABEL_23:
            v1 = 0;
            swift_endAccess();
            continue;
          case 150:
LABEL_21:
            swift_beginAccess();
            sub_26BDA0920();
            goto LABEL_23;
          case 160:
            swift_beginAccess();
            sub_26BDA0810();
            sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
            sub_26BDA09B0();
            swift_endAccess();
            break;
        }

        break;
    }
  }
}

uint64_t sub_26BD6CDF8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v168 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v166 = &v163 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v164 = &v163 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v170 = &v163 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v172 = &v163 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v163 - v16;
  v174 = sub_26BDA0810();
  v173 = *(v174 - 8);
  v18 = *(v173 + 64);
  v19 = MEMORY[0x28223BE20](v174);
  v167 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v165 = &v163 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v163 = &v163 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v169 = &v163 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v171 = &v163 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v163 - v29;
  swift_beginAccess();
  v31 = *(a1 + 24);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    v33 = *(a1 + 24);

    sub_26BDA0AB0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 40);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = *(a1 + 40);

    sub_26BDA0AB0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {
    v37 = *(a1 + 48);

    sub_26BDA0A90();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 64);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v40 = *(a1 + 64);

    sub_26BDA0AB0();
    if (!v1)
    {

      goto LABEL_19;
    }
  }

LABEL_19:
  swift_beginAccess();
  if (*(a1 + 72) != 1 || (result = sub_26BDA0A40(), !v1))
  {
    swift_beginAccess();
    v42 = *(a1 + 88);
    v43 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v43 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      v44 = *(a1 + 88);

      sub_26BDA0AB0();
      if (v1)
      {
      }
    }

    swift_beginAccess();
    sub_26BD31AF8();
    v45 = v174;
    if (__swift_getEnumTagSinglePayload(v17, 1, v174) == 1)
    {
      sub_26BD04E80(v17, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      (*(v173 + 32))(v30, v17, v45);
      sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      if (v1)
      {
        return (*(v173 + 8))(v30, v174);
      }

      v45 = v174;
      (*(v173 + 8))(v30, v174);
    }

    v46 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {

      sub_26BDA0AB0();
      if (v2)
      {
      }
    }

    v50 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
    swift_beginAccess();
    v51 = *v50;
    v52 = v50[1];
    v53 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v53 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {

      sub_26BDA0AB0();
      if (v2)
      {
      }
    }

    v54 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
    swift_beginAccess();
    v55 = *v54;
    v56 = v54[1];
    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {

      sub_26BDA0AB0();
      if (v2)
      {
      }
    }

    v58 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
    swift_beginAccess();
    v59 = *v58;
    v60 = v58[1];
    v61 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v61 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {

      sub_26BDA0AB0();
      if (v2)
      {
      }
    }

    v62 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
    swift_beginAccess();
    v63 = *v62;
    v64 = v62[1];
    v65 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v65 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {

      sub_26BDA0AB0();
      if (v2)
      {
      }
    }

    v66 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
    swift_beginAccess();
    v67 = *v66;
    v68 = v66[1];
    v69 = HIBYTE(v68) & 0xF;
    if ((v68 & 0x2000000000000000) == 0)
    {
      v69 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (v69)
    {

      sub_26BDA0AB0();
      if (v2)
      {
      }
    }

    swift_beginAccess();
    v70 = v172;
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v70, 1, v45) == 1)
    {
      sub_26BD04E80(v70, &qword_280448F88, &qword_26BDA5440);
    }

    else
    {
      v71 = v173;
      v72 = v171;
      (*(v173 + 32))();
      sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      if (v2)
      {
        return (*(v71 + 8))(v72, v45);
      }

      (*(v71 + 8))(v72, v45);
    }

    v73 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
    swift_beginAccess();
    v74 = *v73;
    v75 = v73[1];
    v76 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v76 = v74 & 0xFFFFFFFFFFFFLL;
    }

    if (v76)
    {

      sub_26BDA0AB0();
      if (v2)
      {
      }
    }

    v77 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
    swift_beginAccess();
    v78 = *v77;
    v79 = v77[1];
    v80 = HIBYTE(v79) & 0xF;
    if ((v79 & 0x2000000000000000) == 0)
    {
      v80 = v78 & 0xFFFFFFFFFFFFLL;
    }

    if (v80)
    {

      sub_26BDA0AB0();
      if (v2)
      {
      }
    }

    v81 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
    swift_beginAccess();
    v82 = *v81;
    v83 = v81[1];
    v84 = HIBYTE(v83) & 0xF;
    if ((v83 & 0x2000000000000000) == 0)
    {
      v84 = v82 & 0xFFFFFFFFFFFFLL;
    }

    if (v84)
    {

      sub_26BDA0AB0();
      if (v2)
      {
      }
    }

    v85 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
    swift_beginAccess();
    if (*(a1 + v85) != 1 || (result = sub_26BDA0A40(), !v2))
    {
      v86 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
      swift_beginAccess();
      v87 = *v86;
      v88 = v86[1];
      v89 = HIBYTE(v88) & 0xF;
      if ((v88 & 0x2000000000000000) == 0)
      {
        v89 = v87 & 0xFFFFFFFFFFFFLL;
      }

      if (v89)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v90 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
      swift_beginAccess();
      v91 = *v90;
      v92 = v90[1];
      v93 = HIBYTE(v92) & 0xF;
      if ((v92 & 0x2000000000000000) == 0)
      {
        v93 = v91 & 0xFFFFFFFFFFFFLL;
      }

      if (v93)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      swift_beginAccess();
      v94 = v170;
      sub_26BD31AF8();
      if (__swift_getEnumTagSinglePayload(v94, 1, v174) == 1)
      {
        sub_26BD04E80(v94, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        (*(v173 + 32))(v169, v94, v174);
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA0AD0();
        if (v2)
        {
          return (*(v173 + 8))(v169, v174);
        }

        (*(v173 + 8))(v169, v174);
      }

      v95 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
      swift_beginAccess();
      v96 = *v95;
      v97 = v95[1];
      v98 = HIBYTE(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v98 = v96 & 0xFFFFFFFFFFFFLL;
      }

      if (v98)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v99 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
      swift_beginAccess();
      v100 = *v99;
      v101 = v99[1];
      v102 = HIBYTE(v101) & 0xF;
      if ((v101 & 0x2000000000000000) == 0)
      {
        v102 = v100 & 0xFFFFFFFFFFFFLL;
      }

      if (v102)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v103 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
      swift_beginAccess();
      v104 = *v103;
      v105 = v103[1];
      v106 = HIBYTE(v105) & 0xF;
      if ((v105 & 0x2000000000000000) == 0)
      {
        v106 = v104 & 0xFFFFFFFFFFFFLL;
      }

      if (v106)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v107 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
      swift_beginAccess();
      v108 = *v107;
      v109 = v107[1];
      v110 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v110 = v108 & 0xFFFFFFFFFFFFLL;
      }

      if (v110)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v111 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
      swift_beginAccess();
      v112 = *v111;
      v113 = v111[1];
      v114 = HIBYTE(v113) & 0xF;
      if ((v113 & 0x2000000000000000) == 0)
      {
        v114 = v112 & 0xFFFFFFFFFFFFLL;
      }

      if (v114)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v115 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
      swift_beginAccess();
      v116 = *v115;
      v117 = v115[1];
      v118 = HIBYTE(v117) & 0xF;
      if ((v117 & 0x2000000000000000) == 0)
      {
        v118 = v116 & 0xFFFFFFFFFFFFLL;
      }

      if (v118)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v119 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
      swift_beginAccess();
      v120 = *v119;
      v121 = v119[1];
      v122 = HIBYTE(v121) & 0xF;
      if ((v121 & 0x2000000000000000) == 0)
      {
        v122 = v120 & 0xFFFFFFFFFFFFLL;
      }

      if (v122)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v123 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
      swift_beginAccess();
      v124 = *v123;
      v125 = v123[1];
      v126 = HIBYTE(v125) & 0xF;
      if ((v125 & 0x2000000000000000) == 0)
      {
        v126 = v124 & 0xFFFFFFFFFFFFLL;
      }

      if (v126)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v127 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
      swift_beginAccess();
      v128 = *v127;
      v129 = v127[1];
      v130 = HIBYTE(v129) & 0xF;
      if ((v129 & 0x2000000000000000) == 0)
      {
        v130 = v128 & 0xFFFFFFFFFFFFLL;
      }

      if (v130)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v131 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
      swift_beginAccess();
      v132 = *v131;
      v133 = v131[1];
      v134 = HIBYTE(v133) & 0xF;
      if ((v133 & 0x2000000000000000) == 0)
      {
        v134 = v132 & 0xFFFFFFFFFFFFLL;
      }

      if (v134)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v135 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
      swift_beginAccess();
      if (*(*(a1 + v135) + 16))
      {

        sub_26BDA0A90();
        if (v2)
        {
        }
      }

      v136 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
      swift_beginAccess();
      v137 = *v136;
      v138 = v136[1];
      v139 = HIBYTE(v138) & 0xF;
      if ((v138 & 0x2000000000000000) == 0)
      {
        v139 = v137 & 0xFFFFFFFFFFFFLL;
      }

      if (v139)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v140 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
      swift_beginAccess();
      v141 = *v140;
      v142 = v140[1];
      v143 = HIBYTE(v142) & 0xF;
      if ((v142 & 0x2000000000000000) == 0)
      {
        v143 = v141 & 0xFFFFFFFFFFFFLL;
      }

      if (v143)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v144 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
      swift_beginAccess();
      v145 = *v144;
      v146 = v144[1];
      v147 = HIBYTE(v146) & 0xF;
      if ((v146 & 0x2000000000000000) == 0)
      {
        v147 = v145 & 0xFFFFFFFFFFFFLL;
      }

      if (v147)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v148 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
      swift_beginAccess();
      v149 = *v148;
      v150 = v148[1];
      v151 = HIBYTE(v150) & 0xF;
      if ((v150 & 0x2000000000000000) == 0)
      {
        v151 = v149 & 0xFFFFFFFFFFFFLL;
      }

      if (v151)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      v152 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
      swift_beginAccess();
      v153 = *v152;
      v154 = v152[1];
      v155 = HIBYTE(v154) & 0xF;
      if ((v154 & 0x2000000000000000) == 0)
      {
        v155 = v153 & 0xFFFFFFFFFFFFLL;
      }

      if (v155)
      {

        sub_26BDA0AB0();
        if (v2)
        {
        }
      }

      swift_beginAccess();
      v156 = v164;
      sub_26BD31AF8();
      if (__swift_getEnumTagSinglePayload(v156, 1, v174) == 1)
      {
        sub_26BD04E80(v164, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        (*(v173 + 32))(v163, v164, v174);
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA0AD0();
        if (v2)
        {
          return (*(v173 + 8))(v163, v174);
        }

        (*(v173 + 8))(v163, v174);
      }

      swift_beginAccess();
      v157 = v166;
      sub_26BD31AF8();
      if (__swift_getEnumTagSinglePayload(v157, 1, v174) == 1)
      {
        sub_26BD04E80(v166, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        (*(v173 + 32))(v165, v166, v174);
        sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA0AD0();
        if (v2)
        {
          return (*(v173 + 8))(v165, v174);
        }

        (*(v173 + 8))(v165, v174);
      }

      v158 = a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData;
      swift_beginAccess();
      if (!sub_26BD50FE4(*v158, *(v158 + 8)))
      {
        v159 = *v158;
        v160 = *(v158 + 8);
        sub_26BCFEFC4(v159, v160);
        sub_26BDA0A60();
        if (v2)
        {
          return sub_26BCFF01C(v159, v160);
        }

        sub_26BCFF01C(v159, v160);
      }

      v161 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
      swift_beginAccess();
      if (*(a1 + v161) != 1 || (result = sub_26BDA0A40(), !v2))
      {
        swift_beginAccess();
        v162 = v168;
        sub_26BD31AF8();
        if (__swift_getEnumTagSinglePayload(v162, 1, v174) == 1)
        {
          return sub_26BD04E80(v168, &qword_280448F88, &qword_26BDA5440);
        }

        else
        {
          (*(v173 + 32))(v167, v168, v174);
          sub_26BD6C1DC(&qword_280449130, MEMORY[0x277D215C8]);
          sub_26BDA0AD0();
          return (*(v173 + 8))(v167, v174);
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BD6E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_142_0();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_173();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v13, v14);
  OUTLINED_FUNCTION_242();
  return sub_26BDA0BB0() & 1;
}

BOOL sub_26BD6E6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDA0810();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v273 = &v256 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v8 = *(*(v274 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v274);
  v260 = &v256 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v264 = &v256 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v266 = &v256 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v268 = &v256 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v272 = &v256 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v256 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v259 = &v256 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v258 = &v256 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v261 = &v256 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v262 = &v256 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v263 = &v256 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v265 = &v256 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v267 = &v256 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v269 = &v256 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v270 = &v256 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v271 = &v256 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v256 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v256 - v46;
  swift_beginAccess();
  v48 = *(a1 + 16);
  v49 = *(a1 + 24);
  swift_beginAccess();
  v50 = v48 == *(a2 + 16) && v49 == *(a2 + 24);
  if (!v50 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v51 = *(a1 + 32);
  v52 = *(a1 + 40);
  swift_beginAccess();
  v53 = v51 == *(a2 + 32) && v52 == *(a2 + 40);
  if (!v53 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v54 = *(a1 + 48);
  swift_beginAccess();
  if ((sub_26BCFF1F4(v54, *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v55 = *(a1 + 56);
  v56 = *(a1 + 64);
  swift_beginAccess();
  v57 = v55 == *(a2 + 56) && v56 == *(a2 + 64);
  if (!v57 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v58 = *(a1 + 72);
  swift_beginAccess();
  if (v58 != *(a2 + 72))
  {
    return 0;
  }

  swift_beginAccess();
  v59 = *(a1 + 80);
  v60 = *(a1 + 88);
  swift_beginAccess();
  v61 = v59 == *(a2 + 80) && v60 == *(a2 + 88);
  if (!v61 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v256 = v5;
  v257 = v4;
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v62 = *(v274 + 48);
  sub_26BD31AF8();
  v63 = v257;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v63) == 1)
  {

    sub_26BD04E80(v47, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v20[v62], 1, v63) != 1)
    {
      goto LABEL_28;
    }

    sub_26BD04E80(v20, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(&v20[v62], 1, v63) == 1)
    {

      sub_26BD04E80(v47, &qword_280448F88, &qword_26BDA5440);
      (*(v256 + 8))(v45, v63);
      goto LABEL_28;
    }

    v66 = v63;
    v67 = v256;
    v68 = v273;
    (*(v256 + 32))(v273, &v20[v62], v66);
    sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8]);

    LOBYTE(v66) = sub_26BDA0BB0();
    v69 = *(v67 + 8);
    v69(v68, v257);
    sub_26BD04E80(v47, &qword_280448F88, &qword_26BDA5440);
    v69(v45, v257);
    v63 = v257;
    sub_26BD04E80(v20, &qword_280448F88, &qword_26BDA5440);
    if ((v66 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v70 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  swift_beginAccess();
  v71 = *v70;
  v72 = v70[1];
  v73 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredFirstName);
  swift_beginAccess();
  v74 = v71 == *v73 && v72 == v73[1];
  if (!v74 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v75 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  swift_beginAccess();
  v76 = *v75;
  v77 = v75[1];
  v78 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredLastName);
  swift_beginAccess();
  v79 = v76 == *v78 && v77 == v78[1];
  if (!v79 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v80 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  swift_beginAccess();
  v81 = *v80;
  v82 = v80[1];
  v83 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredEmail);
  swift_beginAccess();
  v84 = v81 == *v83 && v82 == v83[1];
  if (!v84 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v85 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  swift_beginAccess();
  v86 = *v85;
  v87 = v85[1];
  v88 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredPhoneNumber);
  swift_beginAccess();
  v89 = v86 == *v88 && v87 == v88[1];
  if (!v89 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v90 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  swift_beginAccess();
  v91 = *v90;
  v92 = v90[1];
  v93 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCode);
  swift_beginAccess();
  v94 = v91 == *v93 && v92 == v93[1];
  if (!v94 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v95 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  v98 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredCountryCharCode);
  swift_beginAccess();
  v99 = v96 == *v98 && v97 == v98[1];
  if (!v99 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v100 = v271;
  sub_26BD31AF8();
  swift_beginAccess();
  v101 = *(v274 + 48);
  v20 = v272;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v63) == 1)
  {
    sub_26BD04E80(v100, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(&v20[v101], 1, v63) == 1)
    {
      sub_26BD04E80(v20, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_70;
    }

LABEL_28:
    v64 = v20;
LABEL_29:
    sub_26BD04E80(v64, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_30;
  }

  v102 = v270;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(&v20[v101], 1, v63) == 1)
  {
    sub_26BD04E80(v100, &qword_280448F88, &qword_26BDA5440);
    (*(v256 + 8))(v102, v63);
    goto LABEL_28;
  }

  v103 = v256;
  v104 = v273;
  (*(v256 + 32))(v273, &v20[v101], v63);
  sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8]);
  v105 = sub_26BDA0BB0();
  v106 = *(v103 + 8);
  v106(v104, v63);
  sub_26BD04E80(v100, &qword_280448F88, &qword_26BDA5440);
  v106(v270, v63);
  sub_26BD04E80(v20, &qword_280448F88, &qword_26BDA5440);
  if ((v105 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_70:
  v107 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  swift_beginAccess();
  v108 = *v107;
  v109 = v107[1];
  v110 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__userEnteredSecondaryDetails);
  swift_beginAccess();
  v111 = v108 == *v110 && v109 == v110[1];
  if (!v111 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v112 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  swift_beginAccess();
  v113 = *v112;
  v114 = v112[1];
  v115 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToChatEstimatedWaitTimeID);
  swift_beginAccess();
  v116 = v113 == *v115 && v114 == v115[1];
  if (!v116 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v117 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  swift_beginAccess();
  v118 = *v117;
  v119 = v117[1];
  v120 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__chatTransactionID);
  swift_beginAccess();
  v121 = v118 == *v120 && v119 == v120[1];
  if (!v121 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v122 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
  swift_beginAccess();
  LODWORD(v122) = *(a1 + v122);
  v123 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__rtctOpted;
  swift_beginAccess();
  if (v122 != *(a2 + v123))
  {
    goto LABEL_30;
  }

  v124 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  swift_beginAccess();
  v125 = *v124;
  v126 = v124[1];
  v127 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__reservationSlot);
  swift_beginAccess();
  v128 = v125 == *v127 && v126 == v127[1];
  if (!v128 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v129 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  swift_beginAccess();
  v130 = *v129;
  v131 = v129[1];
  v132 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__clickToCallEstimatedWaitTimeID);
  swift_beginAccess();
  v133 = v130 == *v132 && v131 == v132[1];
  v134 = v268;
  if (!v133 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v135 = *(v274 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v134, 1, v63) == 1)
  {
    sub_26BD04E80(v269, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v134 + v135, 1, v63) == 1)
    {
      sub_26BD04E80(v134, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v136 = v267;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v134 + v135, 1, v63) == 1)
  {
    sub_26BD04E80(v269, &qword_280448F88, &qword_26BDA5440);
    (*(v256 + 8))(v136, v63);
LABEL_101:
    v64 = v134;
    goto LABEL_29;
  }

  v137 = v256;
  v138 = v273;
  (*(v256 + 32))(v273, v134 + v135, v63);
  sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8]);
  LODWORD(v272) = sub_26BDA0BB0();
  v139 = *(v137 + 8);
  v139(v138, v63);
  sub_26BD04E80(v269, &qword_280448F88, &qword_26BDA5440);
  v139(v136, v63);
  sub_26BD04E80(v134, &qword_280448F88, &qword_26BDA5440);
  if ((v272 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_103:
  v140 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  swift_beginAccess();
  v141 = *v140;
  v142 = v140[1];
  v143 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreID);
  swift_beginAccess();
  v144 = v141 == *v143 && v142 == v143[1];
  if (!v144 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v145 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  swift_beginAccess();
  v146 = *v145;
  v147 = v145[1];
  v148 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreURL);
  swift_beginAccess();
  v149 = v146 == *v148 && v147 == v148[1];
  if (!v149 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v150 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  swift_beginAccess();
  v151 = *v150;
  v152 = v150[1];
  v153 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreAddress);
  swift_beginAccess();
  v154 = v151 == *v153 && v152 == v153[1];
  if (!v154 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v155 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  swift_beginAccess();
  v156 = *v155;
  v157 = v155[1];
  v158 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredStoreName);
  swift_beginAccess();
  v159 = v156 == *v158 && v157 == v158[1];
  if (!v159 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v160 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  swift_beginAccess();
  v161 = *v160;
  v162 = v160[1];
  v163 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__authorizedServiceProviderReferredPhoneNumber);
  swift_beginAccess();
  v164 = v161 == *v163 && v162 == v163[1];
  if (!v164 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v165 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  swift_beginAccess();
  v166 = *v165;
  v167 = v165[1];
  v168 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__genesysSonarEmailAddress);
  swift_beginAccess();
  v169 = v166 == *v168 && v167 == v168[1];
  if (!v169 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v170 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  swift_beginAccess();
  v171 = *v170;
  v172 = v170[1];
  v173 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAttachmentToken);
  swift_beginAccess();
  v174 = v171 == *v173 && v172 == v173[1];
  if (!v174 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v175 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  swift_beginAccess();
  v176 = *v175;
  v177 = v175[1];
  v178 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailTransactionID);
  swift_beginAccess();
  v179 = v176 == *v178 && v177 == v178[1];
  if (!v179 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v180 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  swift_beginAccess();
  v181 = *v180;
  v182 = v180[1];
  v183 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailAdditionalDetails);
  swift_beginAccess();
  v184 = v181 == *v183 && v182 == v183[1];
  if (!v184 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v185 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  swift_beginAccess();
  v186 = *v185;
  v187 = v185[1];
  v188 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailEstimatedWaitTime);
  swift_beginAccess();
  v189 = v186 == *v188 && v187 == v188[1];
  if (!v189 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v190 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
  swift_beginAccess();
  v191 = *(a1 + v190);
  v192 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__emailFileAttachmentIds;
  swift_beginAccess();
  if ((sub_26BCFF1F4(v191, *(a2 + v192)) & 1) == 0)
  {
    goto LABEL_30;
  }

  v193 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  swift_beginAccess();
  v194 = *v193;
  v195 = v193[1];
  v196 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredName);
  swift_beginAccess();
  v197 = v194 == *v196 && v195 == v196[1];
  if (!v197 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v198 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  swift_beginAccess();
  v199 = *v198;
  v200 = v198[1];
  v201 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__mobileCarrierReferredURL);
  swift_beginAccess();
  v202 = v199 == *v201 && v200 == v201[1];
  if (!v202 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v203 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  swift_beginAccess();
  v204 = *v203;
  v205 = v203[1];
  v206 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticle);
  swift_beginAccess();
  v207 = v204 == *v206 && v205 == v206[1];
  if (!v207 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v208 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  swift_beginAccess();
  v209 = *v208;
  v210 = v208[1];
  v211 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleTitle);
  swift_beginAccess();
  v212 = v209 == *v211 && v210 == v211[1];
  if (!v212 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v213 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  swift_beginAccess();
  v214 = *v213;
  v215 = v213[1];
  v216 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__resolvedArticleURL);
  swift_beginAccess();
  v217 = v214 == *v216 && v215 == v216[1];
  if (!v217 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v218 = *(v274 + 48);
  v219 = v266;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v219, 1, v257) == 1)
  {
    sub_26BD04E80(v265, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v266 + v218, 1, v257) == 1)
    {
      sub_26BD04E80(v266, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_186;
    }

    goto LABEL_184;
  }

  v220 = v266;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v220 + v218, 1, v257) == 1)
  {
    sub_26BD04E80(v265, &qword_280448F88, &qword_26BDA5440);
    (*(v256 + 8))(v263, v257);
LABEL_184:
    v64 = v266;
    goto LABEL_29;
  }

  v221 = v256;
  v222 = v257;
  v223 = v266;
  v224 = v273;
  (*(v256 + 32))(v273, v266 + v218, v257);
  sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8]);
  v225 = v263;
  LODWORD(v272) = sub_26BDA0BB0();
  v226 = *(v221 + 8);
  v226(v224, v222);
  sub_26BD04E80(v265, &qword_280448F88, &qword_26BDA5440);
  v226(v225, v222);
  sub_26BD04E80(v223, &qword_280448F88, &qword_26BDA5440);
  if ((v272 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_186:
  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v227 = *(v274 + 48);
  v228 = v264;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v228, 1, v257) != 1)
  {
    v229 = v264;
    sub_26BD31AF8();
    if (__swift_getEnumTagSinglePayload(v229 + v227, 1, v257) != 1)
    {
      v230 = v256;
      v231 = v257;
      v232 = v264;
      v233 = v273;
      (*(v256 + 32))(v273, v264 + v227, v257);
      sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8]);
      v234 = v261;
      LODWORD(v272) = sub_26BDA0BB0();
      v235 = *(v230 + 8);
      v235(v233, v231);
      sub_26BD04E80(v262, &qword_280448F88, &qword_26BDA5440);
      v235(v234, v231);
      sub_26BD04E80(v232, &qword_280448F88, &qword_26BDA5440);
      if (v272)
      {
        goto LABEL_193;
      }

LABEL_30:

      return 0;
    }

    sub_26BD04E80(v262, &qword_280448F88, &qword_26BDA5440);
    (*(v256 + 8))(v261, v257);
    goto LABEL_191;
  }

  sub_26BD04E80(v262, &qword_280448F88, &qword_26BDA5440);
  if (__swift_getEnumTagSinglePayload(v264 + v227, 1, v257) != 1)
  {
LABEL_191:
    v64 = v264;
    goto LABEL_29;
  }

  sub_26BD04E80(v264, &qword_280448F88, &qword_26BDA5440);
LABEL_193:
  v236 = (a1 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData);
  swift_beginAccess();
  v238 = *v236;
  v237 = v236[1];
  v239 = (a2 + OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__applicationData);
  swift_beginAccess();
  v241 = *v239;
  v240 = v239[1];
  sub_26BCFEFC4(v238, v237);
  sub_26BCFEFC4(v241, v240);
  v242 = MEMORY[0x26D695520](v238, v237, v241, v240);
  sub_26BCFF01C(v241, v240);
  sub_26BCFF01C(v238, v237);
  if ((v242 & 1) == 0)
  {
    goto LABEL_30;
  }

  v243 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
  swift_beginAccess();
  LODWORD(v243) = *(a1 + v243);
  v244 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest20ExecuteSupportOptionP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__isCustomerOptedForSms;
  swift_beginAccess();
  if (v243 != *(a2 + v244))
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  sub_26BD31AF8();
  swift_beginAccess();
  v245 = *(v274 + 48);
  v246 = v260;
  sub_26BD31AF8();
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v246, 1, v257) == 1)
  {

    sub_26BD04E80(v258, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v260 + v245, 1, v257) == 1)
    {
      sub_26BD04E80(v260, &qword_280448F88, &qword_26BDA5440);
      return 1;
    }

    goto LABEL_200;
  }

  v247 = v260;
  sub_26BD31AF8();
  if (__swift_getEnumTagSinglePayload(v247 + v245, 1, v257) == 1)
  {

    sub_26BD04E80(v258, &qword_280448F88, &qword_26BDA5440);
    (*(v256 + 8))(v259, v257);
LABEL_200:
    sub_26BD04E80(v260, &qword_2804490C8, &qword_26BDA7780);
    return 0;
  }

  v248 = v256;
  v249 = v260;
  v250 = v260 + v245;
  v251 = v273;
  v252 = v257;
  (*(v256 + 32))(v273, v250, v257);
  sub_26BD6C1DC(&qword_2804490D0, MEMORY[0x277D215C8]);
  v253 = v259;
  v254 = sub_26BDA0BB0();

  v255 = *(v248 + 8);
  v255(v251, v252);
  sub_26BD04E80(v258, &qword_280448F88, &qword_26BDA5440);
  v255(v253, v252);
  sub_26BD04E80(v249, &qword_280448F88, &qword_26BDA5440);
  return (v254 & 1) != 0;
}

uint64_t sub_26BD706C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AED8, type metadata accessor for TriageRequest.ExecuteSupportOption);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD70748(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AC30, type metadata accessor for TriageRequest.ExecuteSupportOption);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD707B8()
{
  sub_26BD6C1DC(&qword_28044AC30, type metadata accessor for TriageRequest.ExecuteSupportOption);

  return sub_26BDA0A00();
}

uint64_t sub_26BD70850()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A748);
  __swift_project_value_buffer(v0, qword_28044A748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26BDA77D0;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "super_group_id";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "prod_family_class_id";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "prod_group_family_id";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "serial_number_key";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "serial_number";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "carrier_name";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "coverage_type";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_owned_device";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "smb_enrollment_type";
  *(v23 + 1) = 19;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "product_name";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "operating_system_version";
  *(v27 + 1) = 24;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "eligible_product_id";
  *(v29 + 1) = 19;
  v29[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.Product.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        goto LABEL_8;
      case 7:
        OUTLINED_FUNCTION_129();
        sub_26BDA0950();
        goto LABEL_8;
      case 8:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        goto LABEL_8;
      case 9:
        v4 = *(type metadata accessor for TriageRequest.Product(0) + 64);
        sub_26BDA0810();
        OUTLINED_FUNCTION_5_2();
        sub_26BD6C1DC(&qword_280449130, v5);
        sub_26BDA09B0();
LABEL_8:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

void TriageRequest.Product.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_197_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_128_0();
  v8 = sub_26BDA0810();
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v16 = v15 - v14;
  v17 = *v2;
  v18 = v2[1];
  OUTLINED_FUNCTION_29();
  if (!v19 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
  {
    v20 = v2[2];
    v21 = v2[3];
    OUTLINED_FUNCTION_29();
    if (!v22 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
    {
      v23 = v2[4];
      v24 = v2[5];
      OUTLINED_FUNCTION_29();
      if (!v25 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
      {
        v26 = v2[6];
        v27 = v2[7];
        OUTLINED_FUNCTION_29();
        if (!v28 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
        {
          v29 = v2[8];
          v30 = v2[9];
          OUTLINED_FUNCTION_29();
          if (!v31 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
          {
            v32 = v2[10];
            v33 = v2[11];
            OUTLINED_FUNCTION_29();
            if (!v34 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), (v0 = v1) == 0))
            {
              if (!*(v2 + 24) || (v1 = v0, OUTLINED_FUNCTION_235_0(), sub_26BDA0A70(), !v0))
              {
                if (*(v2 + 100) != 1 || (v1 = v0, OUTLINED_FUNCTION_235_0(), sub_26BDA0A40(), !v0))
                {
                  v51 = type metadata accessor for TriageRequest.Product(0);
                  v35 = *(v51 + 64);
                  sub_26BD31AF8();
                  OUTLINED_FUNCTION_238_0();
                  if (__swift_getEnumTagSinglePayload(v36, v37, v38) == 1)
                  {
                    sub_26BD04E80(v3, &qword_280448F88, &qword_26BDA5440);
                  }

                  else
                  {
                    (*(v11 + 32))(v16, v3, v8);
                    OUTLINED_FUNCTION_5_2();
                    sub_26BD6C1DC(v39, v40);
                    v1 = v0;
                    sub_26BDA0AD0();
                    if (v0)
                    {
                      (*(v11 + 8))(v16, v8);
                      goto LABEL_29;
                    }

                    (*(v11 + 8))(v16, v8);
                  }

                  v41 = v2[13];
                  v42 = v2[14];
                  OUTLINED_FUNCTION_29();
                  if (!v43 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), !v1))
                  {
                    v44 = v2[15];
                    v45 = v2[16];
                    OUTLINED_FUNCTION_29();
                    if (!v46 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), !v1))
                    {
                      v47 = v2[17];
                      v48 = v2[18];
                      OUTLINED_FUNCTION_29();
                      if (!v49 || (OUTLINED_FUNCTION_195_0(), sub_26BDA0AB0(), !v1))
                      {
                        v50 = *(v51 + 60);
                        OUTLINED_FUNCTION_276_0();
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

LABEL_29:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static TriageRequest.Product.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_90();
  v3 = sub_26BDA0810();
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  OUTLINED_FUNCTION_34(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_150();
  v22 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v22 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v23 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v23 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v24 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v24 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v25 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
  if (!v25 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v26 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v26 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_42;
  }

  v27 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
  if (!v27 && (sub_26BDA0FB0() & 1) == 0 || *(v1 + 96) != *(v0 + 96) || *(v1 + 100) != *(v0 + 100))
  {
    goto LABEL_42;
  }

  v44 = type metadata accessor for TriageRequest.Product(0);
  v28 = *(v44 + 64);
  v29 = *(v18 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v2);
  if (!v22)
  {
    OUTLINED_FUNCTION_256();
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v2 + v29);
    if (!v30)
    {
      (*(v6 + 32))(v11, v2 + v29, v3);
      OUTLINED_FUNCTION_5_2();
      sub_26BD6C1DC(v32, v33);
      v34 = sub_26BDA0BB0();
      v35 = *(v6 + 8);
      v36 = OUTLINED_FUNCTION_170();
      v35(v36);
      (v35)(v17, v3);
      sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
      if ((v34 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    (*(v6 + 8))(v17, v3);
LABEL_41:
    sub_26BD04E80(v2, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_28(v2 + v29);
  if (!v22)
  {
    goto LABEL_41;
  }

  sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
LABEL_45:
  v37 = *(v1 + 104) == *(v0 + 104) && *(v1 + 112) == *(v0 + 112);
  if (v37 || (sub_26BDA0FB0() & 1) != 0)
  {
    v38 = *(v1 + 120) == *(v0 + 120) && *(v1 + 128) == *(v0 + 128);
    if (v38 || (sub_26BDA0FB0() & 1) != 0)
    {
      v39 = *(v1 + 136) == *(v0 + 136) && *(v1 + 144) == *(v0 + 144);
      if (v39 || (sub_26BDA0FB0() & 1) != 0)
      {
        v40 = *(v44 + 60);
        sub_26BDA0850();
        OUTLINED_FUNCTION_0_8();
        sub_26BD6C1DC(v41, v42);
        v31 = sub_26BDA0BB0();
        goto LABEL_43;
      }
    }
  }

LABEL_42:
  v31 = 0;
LABEL_43:
  OUTLINED_FUNCTION_258(v31);
  OUTLINED_FUNCTION_188();
}

uint64_t (*sub_26BD7165C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_26BD716B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AED0, type metadata accessor for TriageRequest.Product);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD71730(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AC48, type metadata accessor for TriageRequest.Product);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD717A0()
{
  sub_26BD6C1DC(&qword_28044AC48, type metadata accessor for TriageRequest.Product);

  return sub_26BDA0A00();
}

uint64_t sub_26BD71838()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A760);
  __swift_project_value_buffer(v0, qword_28044A760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "symptom_category_id";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symptom_category_description";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "symptom_id";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "symptom_description";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "user_utterance";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.SymptomInformation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      default:
        continue;
    }
  }
}

uint64_t TriageRequest.SymptomInformation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_29();
      if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
      {
        v13 = v2[6];
        v14 = v2[7];
        OUTLINED_FUNCTION_29();
        if (!v15 || (result = OUTLINED_FUNCTION_103(), !v1))
        {
          v16 = v2[8];
          v17 = v2[9];
          OUTLINED_FUNCTION_29();
          if (!v18 || (result = OUTLINED_FUNCTION_103(), !v1))
          {
            v19 = *(type metadata accessor for TriageRequest.SymptomInformation(0) + 36);
            return OUTLINED_FUNCTION_104();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static TriageRequest.SymptomInformation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_249_0();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v13 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v13 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v14 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v14 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for TriageRequest.SymptomInformation(0) + 36);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v16, v17);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD71DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEC8, type metadata accessor for TriageRequest.SymptomInformation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD71E78(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AC60, type metadata accessor for TriageRequest.SymptomInformation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD71EE8()
{
  sub_26BD6C1DC(&qword_28044AC60, type metadata accessor for TriageRequest.SymptomInformation);

  return sub_26BDA0A00();
}

uint64_t sub_26BD71F80()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A778);
  __swift_project_value_buffer(v0, qword_28044A778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA77E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "did_get_user_consent";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "settings_groups";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "suggested_user_actions";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "executed_user_actions";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggested_articles";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "opened_articles";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "suggested_bcs_articles";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "opened_bcs_articles";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "user_selections";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void TriageRequest.HMTContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_246();
  v1 = v0;
  while (1)
  {
    OUTLINED_FUNCTION_204();
    v2 = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        OUTLINED_FUNCTION_236_0();
        sub_26BDA0920();
        goto LABEL_12;
      case 2:
        type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
        OUTLINED_FUNCTION_168_1();
        sub_26BD6C1DC(&qword_28044AB60, v7);
        goto LABEL_11;
      case 3:
      case 4:
        type metadata accessor for TriageRequest.HMTContext.UserAction(0);
        OUTLINED_FUNCTION_33_1();
        sub_26BD6C1DC(&qword_28044AB58, v5);
        goto LABEL_11;
      case 5:
      case 6:
        type metadata accessor for TriageRequest.HMTContext.Article(0);
        OUTLINED_FUNCTION_34_2();
        sub_26BD6C1DC(&qword_28044AB50, v4);
        goto LABEL_11;
      case 7:
      case 8:
        type metadata accessor for TriageRequest.HMTContext.BCSArticle(0);
        OUTLINED_FUNCTION_32_4();
        sub_26BD6C1DC(&qword_28044AB48, v6);
        goto LABEL_11;
      case 9:
        type metadata accessor for TriageRequest.HMTContext.UserSelection(0);
        OUTLINED_FUNCTION_167_1();
        sub_26BD6C1DC(&qword_28044AB40, v8);
LABEL_11:
        sub_26BDA09A0();
LABEL_12:
        v1 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_247();
}

uint64_t TriageRequest.HMTContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  if (*v1 != 1 || (v2 = v0, result = sub_26BDA0A40(), !v0))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0), OUTLINED_FUNCTION_168_1(), sub_26BD6C1DC(v5, v6), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for TriageRequest.HMTContext.UserAction(0), OUTLINED_FUNCTION_33_1(), sub_26BD6C1DC(v7, v8), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
      {
        if (!*(v3[3] + 16) || (type metadata accessor for TriageRequest.HMTContext.UserAction(0), OUTLINED_FUNCTION_33_1(), sub_26BD6C1DC(v9, v10), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
        {
          if (!*(v3[4] + 16) || (type metadata accessor for TriageRequest.HMTContext.Article(0), OUTLINED_FUNCTION_34_2(), sub_26BD6C1DC(v11, v12), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
          {
            if (!*(v3[5] + 16) || (type metadata accessor for TriageRequest.HMTContext.Article(0), OUTLINED_FUNCTION_34_2(), sub_26BD6C1DC(v13, v14), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
            {
              if (!*(v3[6] + 16) || (type metadata accessor for TriageRequest.HMTContext.BCSArticle(0), OUTLINED_FUNCTION_32_4(), sub_26BD6C1DC(v15, v16), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
              {
                if (!*(v3[7] + 16) || (type metadata accessor for TriageRequest.HMTContext.BCSArticle(0), OUTLINED_FUNCTION_32_4(), sub_26BD6C1DC(v17, v18), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
                {
                  if (!*(v3[8] + 16) || (type metadata accessor for TriageRequest.HMTContext.UserSelection(0), OUTLINED_FUNCTION_167_1(), sub_26BD6C1DC(v19, v20), OUTLINED_FUNCTION_242(), OUTLINED_FUNCTION_47_2(), result = sub_26BDA0AC0(), !v2))
                  {
                    v21 = *(type metadata accessor for TriageRequest.HMTContext(0) + 52);
                    return OUTLINED_FUNCTION_104();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static TriageRequest.HMTContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_184();
  v5 = *(v4 + 8);
  v7 = *(v6 + 8);
  sub_26BCFF3AC();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v3[2];
  v10 = v2[2];
  sub_26BCFFF00();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v3[3];
  v13 = v2[3];
  sub_26BCFFF00();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v3[4];
  v16 = v2[4];
  sub_26BD00398();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = v3[5];
  v19 = v2[5];
  sub_26BD00398();
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = v3[6];
  v22 = v2[6];
  sub_26BD003D8();
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v24 = v3[7];
  v25 = v2[7];
  sub_26BD003D8();
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v27 = v3[8];
  v28 = v2[8];
  sub_26BD00418();
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = *(type metadata accessor for TriageRequest.HMTContext(0) + 52);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v31, v32);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD72AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEC0, type metadata accessor for TriageRequest.HMTContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD72B44(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044A660, type metadata accessor for TriageRequest.HMTContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD72BB4()
{
  sub_26BD6C1DC(&qword_28044A660, type metadata accessor for TriageRequest.HMTContext);

  return sub_26BDA0A00();
}

uint64_t sub_26BD72C84()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A7A0);
  __swift_project_value_buffer(v0, qword_28044A7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "group_key";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pre";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "post";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.HMTContext.SettingsGroup.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v4 = *(type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0) + 28);
        goto LABEL_10;
      case 2:
        v3 = *(type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0) + 24);
LABEL_10:
        type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
        OUTLINED_FUNCTION_61_0();
        sub_26BD6C1DC(&qword_28044AB70, v5);
        OUTLINED_FUNCTION_35_0();
        sub_26BDA09B0();
LABEL_11:
        v0 = 0;
        break;
      case 1:
        OUTLINED_FUNCTION_236_0();
        sub_26BDA0990();
        goto LABEL_11;
    }
  }
}

void TriageRequest.HMTContext.SettingsGroup.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_197_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
  v5 = OUTLINED_FUNCTION_110(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_57();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  v14 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0);
  v15 = OUTLINED_FUNCTION_34(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_38();
  v36[1] = v18;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v19);
  v20 = *v1;
  v21 = v1[1];
  OUTLINED_FUNCTION_29();
  if (!v22 || (sub_26BDA0AB0(), !v0))
  {
    v37 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
    v23 = v37[6];
    sub_26BD31AF8();
    OUTLINED_FUNCTION_238_0();
    if (__swift_getEnumTagSinglePayload(v24, v25, v26) == 1)
    {
      sub_26BD04E80(v13, &qword_2804495B8, &qword_26BDA7810);
    }

    else
    {
      v36[0] = v3;
      sub_26BD65C08();
      OUTLINED_FUNCTION_61_0();
      sub_26BD6C1DC(v27, v28);
      sub_26BDA0AD0();
      OUTLINED_FUNCTION_167();
      sub_26BD65CB0();
      if (v0)
      {
        goto LABEL_10;
      }
    }

    v29 = v37[7];
    sub_26BD31AF8();
    OUTLINED_FUNCTION_238_0();
    if (__swift_getEnumTagSinglePayload(v30, v31, v32) == 1)
    {
      sub_26BD04E80(v10, &qword_2804495B8, &qword_26BDA7810);
LABEL_9:
      v35 = v37[5];
      OUTLINED_FUNCTION_276_0();
      goto LABEL_10;
    }

    sub_26BD65C08();
    OUTLINED_FUNCTION_61_0();
    sub_26BD6C1DC(v33, v34);
    sub_26BDA0AD0();
    OUTLINED_FUNCTION_290_0();
    sub_26BD65CB0();
    if (!v0)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static TriageRequest.HMTContext.SettingsGroup.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_142_0();
  v3 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v2);
  v4 = OUTLINED_FUNCTION_34(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
  v11 = OUTLINED_FUNCTION_110(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_57();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C0, &unk_26BDA3500);
  v19 = OUTLINED_FUNCTION_34(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_57();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v49 - v26;
  v28 = *v1;
  v29 = v1[1];
  v30 = *v0;
  v31 = v0[1];
  v51 = v0;
  v32 = v28 == v30 && v29 == v31;
  if (!v32 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_26;
  }

  v49[0] = v16;
  v49[1] = v9;
  v50 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup(0);
  v33 = *(v50 + 24);
  v34 = *(v18 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_30_1(v27);
  if (v32)
  {
    OUTLINED_FUNCTION_30_1(&v27[v34]);
    if (v32)
    {
      sub_26BD04E80(v27, &qword_2804495B8, &qword_26BDA7810);
      goto LABEL_16;
    }

LABEL_14:
    v36 = v27;
LABEL_25:
    sub_26BD04E80(v36, &qword_2804495C0, &unk_26BDA3500);
    goto LABEL_26;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_30_1(&v27[v34]);
  if (v35)
  {
    OUTLINED_FUNCTION_187_0();
    sub_26BD65CB0();
    goto LABEL_14;
  }

  sub_26BD65C08();
  static TriageRequest.HMTContext.SettingsEvent.== infix(_:_:)();
  v38 = v37;
  sub_26BD65CB0();
  sub_26BD65CB0();
  sub_26BD04E80(v27, &qword_2804495B8, &qword_26BDA7810);
  if ((v38 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v39 = v50;
  v40 = *(v50 + 28);
  v41 = *(v18 + 48);
  sub_26BD31AF8();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_30_1(v24);
  if (v32)
  {
    OUTLINED_FUNCTION_30_1(v24 + v41);
    if (v32)
    {
      sub_26BD04E80(v24, &qword_2804495B8, &qword_26BDA7810);
LABEL_29:
      v46 = *(v39 + 20);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_8();
      sub_26BD6C1DC(v47, v48);
      v43 = sub_26BDA0BB0();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_26BD31AF8();
  OUTLINED_FUNCTION_30_1(v24 + v41);
  if (v42)
  {
    OUTLINED_FUNCTION_187_0();
    sub_26BD65CB0();
LABEL_24:
    v36 = v24;
    goto LABEL_25;
  }

  sub_26BD65C08();
  static TriageRequest.HMTContext.SettingsEvent.== infix(_:_:)();
  v45 = v44;
  sub_26BD65CB0();
  OUTLINED_FUNCTION_154_0();
  sub_26BD65CB0();
  sub_26BD04E80(v24, &qword_2804495B8, &qword_26BDA7810);
  if (v45)
  {
    goto LABEL_29;
  }

LABEL_26:
  v43 = 0;
LABEL_27:
  OUTLINED_FUNCTION_258(v43);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD73758(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEB8, type metadata accessor for TriageRequest.HMTContext.SettingsGroup);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD737D8(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB60, type metadata accessor for TriageRequest.HMTContext.SettingsGroup);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD73848()
{
  sub_26BD6C1DC(&qword_28044AB60, type metadata accessor for TriageRequest.HMTContext.SettingsGroup);

  return sub_26BDA0A00();
}

uint64_t sub_26BD73918()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A7C8);
  __swift_project_value_buffer(v0, qword_28044A7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "captured_timestamp";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "settings";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return sub_26BDA0AF0();
}

void TriageRequest.HMTContext.SettingsEvent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    v1 = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      type metadata accessor for TriageRequest.HMTContext.Setting(0);
      OUTLINED_FUNCTION_163_1();
      sub_26BD6C1DC(&qword_28044AB80, v5);
      OUTLINED_FUNCTION_35_0();
      sub_26BDA09A0();
LABEL_8:
      v0 = 0;
    }

    else if (v1 == 1)
    {
      v3 = *(type metadata accessor for TriageRequest.HMTContext.SettingsEvent(0) + 24);
      sub_26BDA07E0();
      OUTLINED_FUNCTION_4_2();
      sub_26BD6C1DC(&qword_280449B70, v4);
      OUTLINED_FUNCTION_35_0();
      sub_26BDA09B0();
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_247();
}

void TriageRequest.HMTContext.SettingsEvent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_197_0();
  v3 = OUTLINED_FUNCTION_173();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_299_0();
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  v13 = OUTLINED_FUNCTION_128_0();
  v29 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v13);
  v14 = *(v29 + 24);
  OUTLINED_FUNCTION_214_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_258_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17) == 1)
  {
    sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_262_0();
    v19(v18);
    OUTLINED_FUNCTION_4_2();
    sub_26BD6C1DC(v20, v21);
    OUTLINED_FUNCTION_207_0();
    sub_26BDA0AD0();
    if (v0)
    {
      v22 = OUTLINED_FUNCTION_200_0();
      v23(v22);
      goto LABEL_9;
    }

    v24 = OUTLINED_FUNCTION_200_0();
    v25(v24);
  }

  if (!*(*v2 + 16) || (type metadata accessor for TriageRequest.HMTContext.Setting(0), OUTLINED_FUNCTION_163_1(), sub_26BD6C1DC(v26, v27), OUTLINED_FUNCTION_242(), sub_26BDA0AC0(), !v0))
  {
    v28 = v2 + *(v29 + 20);
    OUTLINED_FUNCTION_117_0();
    sub_26BDA0830();
  }

LABEL_9:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static TriageRequest.HMTContext.SettingsEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  OUTLINED_FUNCTION_134();
  v5 = sub_26BDA07E0();
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_129_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_245_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_85_1();
  v40 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent(v20);
  v21 = *(v40 + 24);
  v22 = *(v2 + 56);
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v1);
  if (v23)
  {
    OUTLINED_FUNCTION_28(v1 + v22);
    if (v23)
    {
      sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
      goto LABEL_11;
    }

LABEL_9:
    sub_26BD04E80(v1, &qword_280449528, &unk_26BDA34F0);
LABEL_13:
    v39 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_131();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v1 + v22);
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_199_0();
    v25(v24);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_289_0();
  v26(v11);
  OUTLINED_FUNCTION_4_2();
  sub_26BD6C1DC(v27, v28);
  v29 = sub_26BDA0BB0();
  v30 = v0[1];
  v31 = OUTLINED_FUNCTION_170();
  v30(v31);
  v32 = OUTLINED_FUNCTION_222_0();
  v30(v32);
  sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v33 = *v0;
  v34 = *v4;
  sub_26BD00960();
  if ((v35 & 1) == 0)
  {
    goto LABEL_13;
  }

  v36 = *(v40 + 20);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v37, v38);
  v39 = OUTLINED_FUNCTION_170_0();
LABEL_14:
  OUTLINED_FUNCTION_258(v39);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD74194(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEB0, type metadata accessor for TriageRequest.HMTContext.SettingsEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD74214(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB70, type metadata accessor for TriageRequest.HMTContext.SettingsEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD74284()
{
  sub_26BD6C1DC(&qword_28044AB70, type metadata accessor for TriageRequest.HMTContext.SettingsEvent);

  return sub_26BDA0A00();
}

uint64_t sub_26BD74348()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A7F0);
  __swift_project_value_buffer(v0, qword_28044A7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.HMTContext.Setting.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t TriageRequest.HMTContext.Setting.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v10 = *(type metadata accessor for TriageRequest.HMTContext.Setting(0) + 24);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t static TriageRequest.HMTContext.Setting.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for TriageRequest.HMTContext.Setting(0) + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_8();
  sub_26BD6C1DC(v9, v10);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD7473C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEA8, type metadata accessor for TriageRequest.HMTContext.Setting);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD747BC(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB80, type metadata accessor for TriageRequest.HMTContext.Setting);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD7482C()
{
  sub_26BD6C1DC(&qword_28044AB80, type metadata accessor for TriageRequest.HMTContext.Setting);

  return sub_26BDA0A00();
}

uint64_t sub_26BD748F8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A818);
  __swift_project_value_buffer(v0, qword_28044A818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "captured_timestamp";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "id";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "action_title";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t TriageRequest.HMTContext.UserAction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_236_0();
      sub_26BDA0990();
LABEL_9:
      v0 = 0;
    }

    else if (result == 1)
    {
      v3 = *(type metadata accessor for TriageRequest.HMTContext.UserAction(0) + 28);
      sub_26BDA07E0();
      OUTLINED_FUNCTION_4_2();
      sub_26BD6C1DC(&qword_280449B70, v4);
      OUTLINED_FUNCTION_35_0();
      sub_26BDA09B0();
      goto LABEL_9;
    }
  }
}

void TriageRequest.HMTContext.UserAction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_197_0();
  v4 = OUTLINED_FUNCTION_173();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_299_0();
  v11 = OUTLINED_FUNCTION_18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_44();
  v14 = OUTLINED_FUNCTION_128_0();
  v34 = type metadata accessor for TriageRequest.HMTContext.UserAction(v14);
  v15 = *(v34 + 28);
  OUTLINED_FUNCTION_214_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_258_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) == 1)
  {
    sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_262_0();
    v20(v19);
    OUTLINED_FUNCTION_4_2();
    sub_26BD6C1DC(v21, v22);
    OUTLINED_FUNCTION_207_0();
    v2 = v0;
    sub_26BDA0AD0();
    if (v0)
    {
      v23 = OUTLINED_FUNCTION_200_0();
      v24(v23);
      goto LABEL_11;
    }

    v25 = OUTLINED_FUNCTION_200_0();
    v26(v25);
  }

  v27 = *v3;
  v28 = v3[1];
  OUTLINED_FUNCTION_29();
  if (!v29 || (OUTLINED_FUNCTION_297_0(), !v2))
  {
    v30 = v3[2];
    v31 = v3[3];
    OUTLINED_FUNCTION_29();
    if (!v32 || (OUTLINED_FUNCTION_297_0(), !v2))
    {
      v33 = v3 + *(v34 + 24);
      sub_26BDA0830();
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static TriageRequest.HMTContext.UserAction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_246_0();
  v4 = sub_26BDA07E0();
  v5 = OUTLINED_FUNCTION_18(v4);
  v41 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_44();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_129_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_245_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_85_1();
  v40 = type metadata accessor for TriageRequest.HMTContext.UserAction(v20);
  v21 = *(v40 + 28);
  v22 = *(v3 + 56);
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v2);
  if (!v23)
  {
    OUTLINED_FUNCTION_131();
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v2 + v22);
    if (!v23)
    {
      (*(v41 + 32))(v11, v2 + v22, v4);
      OUTLINED_FUNCTION_4_2();
      sub_26BD6C1DC(v27, v28);
      OUTLINED_FUNCTION_154_0();
      v29 = sub_26BDA0BB0();
      v0 = v41 + 8;
      v30 = *(v41 + 8);
      v31 = OUTLINED_FUNCTION_222();
      v30(v31);
      v32 = OUTLINED_FUNCTION_222_0();
      v30(v32);
      sub_26BD04E80(v2, &qword_280449520, &unk_26BDA44F0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    v24 = OUTLINED_FUNCTION_199_0();
    v25(v24);
LABEL_9:
    sub_26BD04E80(v2, &qword_280449528, &unk_26BDA34F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28(v2 + v22);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_26BD04E80(v2, &qword_280449520, &unk_26BDA44F0);
LABEL_12:
  OUTLINED_FUNCTION_288_0();
  if (v23)
  {
    v35 = v33 == v34;
  }

  else
  {
    v35 = 0;
  }

  if (v35 || (sub_26BDA0FB0() & 1) != 0)
  {
    v36 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
    if (v36 || (sub_26BDA0FB0() & 1) != 0)
    {
      v37 = *(v40 + 24);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_8();
      sub_26BD6C1DC(v38, v39);
      v26 = OUTLINED_FUNCTION_170_0();
      goto LABEL_23;
    }
  }

LABEL_10:
  v26 = 0;
LABEL_23:
  OUTLINED_FUNCTION_258(v26);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD75184(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AEA0, type metadata accessor for TriageRequest.HMTContext.UserAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD75204(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB58, type metadata accessor for TriageRequest.HMTContext.UserAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD75274()
{
  sub_26BD6C1DC(&qword_28044AB58, type metadata accessor for TriageRequest.HMTContext.UserAction);

  return sub_26BDA0A00();
}

uint64_t sub_26BD75440(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AE98, type metadata accessor for TriageRequest.HMTContext.Article);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD754C0(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB50, type metadata accessor for TriageRequest.HMTContext.Article);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD75530()
{
  sub_26BD6C1DC(&qword_28044AB50, type metadata accessor for TriageRequest.HMTContext.Article);

  return sub_26BDA0A00();
}

uint64_t sub_26BD75608(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_259();
  __swift_project_value_buffer(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26BDA19D0;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v11 = "captured_timestamp";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
  v13 = sub_26BDA0AE0();
  OUTLINED_FUNCTION_34(v13);
  v15 = *(v14 + 104);
  (v15)(v11, v12, v13);
  v16 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v16 = "id";
  *(v16 + 8) = 2;
  *(v16 + 16) = 2;
  v17 = *MEMORY[0x277D21870];
  v15();
  v18 = (v10 + 2 * v7);
  v19 = v18 + v6[14];
  *v18 = 3;
  *v19 = "title";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v15();
  v20 = (v10 + 3 * v7);
  v21 = v20 + v6[14];
  *v20 = 4;
  *v21 = "url";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v15();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD7593C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AE90, type metadata accessor for TriageRequest.HMTContext.BCSArticle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD759BC(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB48, type metadata accessor for TriageRequest.HMTContext.BCSArticle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD75A2C()
{
  sub_26BD6C1DC(&qword_28044AB48, type metadata accessor for TriageRequest.HMTContext.BCSArticle);

  return sub_26BDA0A00();
}

uint64_t sub_26BD75ADC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D695B80](a2, a3);
  *a4 = 0xD000000000000018;
  *a5 = 0x800000026BDAE090;
  return result;
}

uint64_t sub_26BD75B68(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return OUTLINED_FUNCTION_259();
}

uint64_t sub_26BD75BB8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A890);
  __swift_project_value_buffer(v0, qword_28044A890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "captured_timestamp";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "id";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "question";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "answer";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void sub_26BD75E44()
{
  OUTLINED_FUNCTION_246();
  v2 = v1;
  v3 = v0;
  while (1)
  {
    OUTLINED_FUNCTION_286_0();
    v4 = sub_26BDA0900();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        v6 = *(v2(0) + 32);
        sub_26BDA07E0();
        OUTLINED_FUNCTION_4_2();
        sub_26BD6C1DC(&qword_280449B70, v7);
        OUTLINED_FUNCTION_195_0();
        sub_26BDA09B0();
        goto LABEL_7;
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_293_0();
        sub_26BDA0990();
LABEL_7:
        v3 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_247();
}

void sub_26BD75F84()
{
  OUTLINED_FUNCTION_246();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_154_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_110(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v12 = sub_26BDA07E0();
  v13 = OUTLINED_FUNCTION_18(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_44();
  v18 = OUTLINED_FUNCTION_128_0();
  v35 = v5(v18);
  v19 = *(v35 + 32);
  OUTLINED_FUNCTION_235_0();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_258_0();
  if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
  {
    sub_26BD04E80(v2, &qword_280449520, &unk_26BDA44F0);
  }

  else
  {
    (*(v15 + 32))(v3, v2, v12);
    OUTLINED_FUNCTION_4_2();
    sub_26BD6C1DC(v23, v24);
    OUTLINED_FUNCTION_207_0();
    sub_26BDA0AD0();
    if (v1)
    {
      (*(v15 + 8))(v3, v12);
      goto LABEL_13;
    }

    (*(v15 + 8))(v3, v12);
  }

  v25 = *v0;
  v26 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v27 || (OUTLINED_FUNCTION_103(), !v1))
  {
    v28 = v0[2];
    v29 = v0[3];
    OUTLINED_FUNCTION_29();
    if (!v30 || (OUTLINED_FUNCTION_103(), !v1))
    {
      v31 = v0[4];
      v32 = v0[5];
      OUTLINED_FUNCTION_29();
      if (!v33 || (OUTLINED_FUNCTION_103(), !v1))
      {
        v34 = v0 + *(v35 + 28);
        OUTLINED_FUNCTION_129();
        sub_26BDA0830();
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void sub_26BD761F0()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_134();
  v7 = sub_26BDA07E0();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_129_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_245_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_85_1();
  v43 = v4(v22);
  v23 = *(v43 + 32);
  v24 = *(v2 + 56);
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_202();
  sub_26BD31AF8();
  OUTLINED_FUNCTION_28(v1);
  if (!v25)
  {
    OUTLINED_FUNCTION_131();
    sub_26BD31AF8();
    OUTLINED_FUNCTION_28(v1 + v24);
    if (!v25)
    {
      OUTLINED_FUNCTION_289_0();
      v29(v13);
      OUTLINED_FUNCTION_4_2();
      sub_26BD6C1DC(v30, v31);
      OUTLINED_FUNCTION_154_0();
      v32 = sub_26BDA0BB0();
      v23 = *(v0 + 8);
      v33 = OUTLINED_FUNCTION_222();
      (v23)(v33);
      v34 = OUTLINED_FUNCTION_222_0();
      (v23)(v34);
      sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v26 = OUTLINED_FUNCTION_199_0();
    v27(v26);
LABEL_9:
    sub_26BD04E80(v1, &qword_280449528, &unk_26BDA34F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28(v1 + v24);
  if (!v25)
  {
    goto LABEL_9;
  }

  sub_26BD04E80(v1, &qword_280449520, &unk_26BDA44F0);
LABEL_13:
  OUTLINED_FUNCTION_288_0();
  if (v25)
  {
    v37 = v35 == v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37 || (sub_26BDA0FB0() & 1) != 0)
  {
    v38 = *(v23 + 16) == v6[2] && *(v23 + 24) == v6[3];
    if (v38 || (sub_26BDA0FB0() & 1) != 0)
    {
      v39 = *(v23 + 32) == v6[4] && *(v23 + 40) == v6[5];
      if (v39 || (sub_26BDA0FB0() & 1) != 0)
      {
        v40 = *(v43 + 28);
        sub_26BDA0850();
        OUTLINED_FUNCTION_0_8();
        sub_26BD6C1DC(v41, v42);
        v28 = OUTLINED_FUNCTION_170_0();
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  v28 = 0;
LABEL_11:
  OUTLINED_FUNCTION_258(v28);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD7653C()
{
  OUTLINED_FUNCTION_177();
  v1 = v0;
  sub_26BDA1050();
  v1(0);
  v2 = OUTLINED_FUNCTION_130();
  sub_26BD6C1DC(v2, v3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD765F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD6C1DC(&qword_28044AE88, type metadata accessor for TriageRequest.HMTContext.UserSelection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD76678(uint64_t a1)
{
  v2 = sub_26BD6C1DC(&qword_28044AB40, type metadata accessor for TriageRequest.HMTContext.UserSelection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD766E8()
{
  sub_26BD6C1DC(&qword_28044AB40, type metadata accessor for TriageRequest.HMTContext.UserSelection);

  return sub_26BDA0A00();
}

uint64_t sub_26BD77B68()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.triggerDetails.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD77C60()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.internalCaseActionTypeString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77C8C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.caseID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77CB8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.articleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77CE4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.comptiaCode.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77D10()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.diagnosticsCaptureID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77D3C()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.CaseMetaData.isDiagnosticsCompletedSuccessfully.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD77D88()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.deepDiveCaller.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77DB4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.overrideLanguage.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77DE0()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.recommendedSolutionSearchIntentID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77E0C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.kbMiniID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77E38()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.callToActionURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD77EB8()
{
  OUTLINED_FUNCTION_65_0();
  HasAml = TriageRequest.CaseMetaData.solutionIntentHasAmlArticles.getter();
  return OUTLINED_FUNCTION_39_3(HasAml);
}

uint64_t sub_26BD77F04()
{
  OUTLINED_FUNCTION_65_0();
  HasConfigured = TriageRequest.CaseMetaData.solutionIntentHasConfiguredSolution.getter();
  return OUTLINED_FUNCTION_39_3(HasConfigured);
}

uint64_t sub_26BD77F50()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.excludedArticleIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD77F7C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.recommendedSolutionSearchIntentSolutions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD78020()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.CaseMetaData.triageConfigurationID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD780B4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.deviceName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD780E0()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.deviceOs.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD7810C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.ipAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78138()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.dsID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78164()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.email.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78190()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.timeZone.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD781BC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.fullTimeZone.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78238()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ClientContext.locationServicesEnabled.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD78284()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.deviceLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78300()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.serialNumberInputMethod.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD7832C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.appLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78358()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ClientContext.isPasscodeSet.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD783A4()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ClientContext.isCurrentDevice.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD784BC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.iTunesUserDsIDHash.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD784E8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.entryPoint.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78514()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ClientContext.isServiceRecommended.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD78604()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ClientContext.restartedAfterRecommendation.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD78650()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.osBuildNumber.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD7867C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ClientContext.currentDeviceSerialNumber.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD786A8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.solutionTypeString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD786D4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.solutionSubTypeString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78700()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.solutionSubTypesString.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD7872C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.uuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78758()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ExecuteSupportOption.isForPremiumAdvisor.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD787A4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.appleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78824()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredFirstName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78850()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredLastName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD7887C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredEmail.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD788A8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredPhoneNumber.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD788D4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredCountryCode.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78900()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredCountryCharCode.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78980()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.userEnteredSecondaryDetails.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD789AC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.clickToChatEstimatedWaitTimeID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD789D8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.chatTransactionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78A04()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ExecuteSupportOption.rtctOpted.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD78A50()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.reservationSlot.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78A7C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.clickToCallEstimatedWaitTimeID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78AFC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78B28()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78B54()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78B80()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredStoreName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78BAC()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.authorizedServiceProviderReferredPhoneNumber.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78BD8()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.genesysSonarEmailAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78C04()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailAttachmentToken.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78C30()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailTransactionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78C5C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailAdditionalDetails.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78C88()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailEstimatedWaitTime.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78CB4()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.emailFileAttachmentIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD78CE0()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.mobileCarrierReferredName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78D0C()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.mobileCarrierReferredURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78D38()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.resolvedArticle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78D64()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.resolvedArticleTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78D90()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.resolvedArticleURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78E64()
{
  OUTLINED_FUNCTION_65_0();
  result = TriageRequest.ExecuteSupportOption.applicationData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD78E90()
{
  OUTLINED_FUNCTION_65_0();
  v0 = TriageRequest.ExecuteSupportOption.isCustomerOptedForSms.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD7920C()
{
  v2 = OUTLINED_FUNCTION_144_0();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_26BD7925C()
{
  OUTLINED_FUNCTION_144_0();
  v1 = OUTLINED_FUNCTION_242();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_26BD792F4()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 24));
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_253_0();
  v4 = OUTLINED_FUNCTION_174(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD79368()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_107(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_26BD79414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_26BDA0850();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_247_0();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD794AC()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 68));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD79520()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 68));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD79580()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD79634()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD796A8()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t __swift_store_extra_inhabitant_index_314Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_144_0();
  result = OUTLINED_FUNCTION_175(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_242();

    return __swift_storeEnumTagSinglePayload(v11, v4, v4, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_26BD797F0()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  v4 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
    v6 = *(v1 + 64);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD798B0()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
      v5 = *(v0 + 64);
    }

    v6 = OUTLINED_FUNCTION_107(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_26BD7995C()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD79E8C(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD79A64()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD79AD8()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD79B38()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD79BD4()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 52));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD79C48()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    v2 = OUTLINED_FUNCTION_107(*(v0 + 52));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_26BD79CA8()
{
  sub_26BD79E8C(319, &qword_28044AD90, type metadata accessor for TriageRequest.HMTContext.SettingsGroup, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26BD79E8C(319, &qword_28044AD98, type metadata accessor for TriageRequest.HMTContext.UserAction, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26BD79E8C(319, &qword_28044ADA0, type metadata accessor for TriageRequest.HMTContext.Article, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_26BD79E8C(319, &qword_28044ADA8, type metadata accessor for TriageRequest.HMTContext.BCSArticle, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_26BD79E8C(319, &qword_28044ADB0, type metadata accessor for TriageRequest.HMTContext.UserSelection, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_26BDA0850();
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

void sub_26BD79E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26BD79F04()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  v4 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
    OUTLINED_FUNCTION_253_0();
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD79FC0()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495B8, &qword_26BDA7810);
      OUTLINED_FUNCTION_259_0();
    }

    v6 = OUTLINED_FUNCTION_107(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_26BD7A068()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD79E8C(319, &qword_28044ADC8, type metadata accessor for TriageRequest.HMTContext.SettingsEvent, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD7A140()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*v1);
  }

  v5 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
    OUTLINED_FUNCTION_253_0();
  }

  v8 = OUTLINED_FUNCTION_174(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26BD7A200()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
      OUTLINED_FUNCTION_259_0();
    }

    v8 = OUTLINED_FUNCTION_107(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_26BD7A2AC()
{
  sub_26BD79E8C(319, &qword_28044ADE0, type metadata accessor for TriageRequest.HMTContext.Setting, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      sub_26BD79E8C(319, &qword_280449C00, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26BD7A3BC()
{
  OUTLINED_FUNCTION_102();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_253_0();
  v3 = OUTLINED_FUNCTION_174(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD7A42C()
{
  OUTLINED_FUNCTION_52();
  if (v0)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    OUTLINED_FUNCTION_312();
    OUTLINED_FUNCTION_259_0();
    v2 = OUTLINED_FUNCTION_107(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_26BD7A494()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_247_0();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD7A51C()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  v4 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_253_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
    v6 = *(v1 + 28);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD7A5D8()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
      v5 = *(v0 + 28);
    }

    v6 = OUTLINED_FUNCTION_107(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_26BD7A680()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD79E8C(319, &qword_280449C00, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_430Tm()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  v4 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
    v6 = *(v1 + 32);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_431Tm()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_175(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_107(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_26BD7A920()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD79E8C(319, &qword_280449C00, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_247_0();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD7A9EC()
{
  sub_26BD79E8C(319, &qword_28044AE48, type metadata accessor for TriageRequest.Product, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26BD79E8C(319, &qword_28044AE50, type metadata accessor for TriageRequest.SymptomInformation, MEMORY[0x277D83D88]);
    if (v4 <= 0x3F)
    {
      v12 = *(v3 - 8) + 64;
      sub_26BD79E8C(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        sub_26BD79E8C(319, &qword_28044AE58, type metadata accessor for TriageRequest.ExecuteSupportOption, MEMORY[0x277D83D88]);
        if (v9 <= 0x3F)
        {
          v13 = *(v8 - 8) + 64;
          sub_26BD79E8C(319, &qword_28044AE60, type metadata accessor for TriageRequest.CaseMetaData.SupportOptionReference, MEMORY[0x277D83D88]);
          if (v11 <= 0x3F)
          {
            v14 = *(v10 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_26BD7ACB4()
{
  sub_26BD79E8C(319, &qword_280449810, type metadata accessor for PhoneNumber, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26BD79E8C(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26BD7AE4C()
{
  sub_26BD79E8C(319, &unk_2804493A0, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for TriageRequest.ClientContext(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for TriageRequest.CaseMetaData(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_3()
{
  result = type metadata accessor for TriageRequest.CaseMetaData(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_45_1()
{
  result = type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_1()
{
  result = type metadata accessor for TriageRequest.ClientContext(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  v0 = type metadata accessor for TriageRequest.ClientContext._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 80) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_1()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1)
{
  result = type metadata accessor for TriageRequest.CaseMetaData(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{
  result = type metadata accessor for TriageRequest.ClientContext(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_78_0@<X0>(int a1@<W8>)
{
  *(v1 + 48) = a1;

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_88_1(uint64_t a1)
{
  result = type metadata accessor for TriageRequest.ExecuteSupportOption(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_91_1()
{
  v0 = type metadata accessor for TriageRequest.ExecuteSupportOption._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_92_2()
{
  v0 = type metadata accessor for TriageRequest.CaseMetaData._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_107_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_118_0()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_127_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_138_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_144_1(uint64_t result)
{
  v3 = *(result + 20);
  *(v2 + 64) = v3;
  v4 = *(v1 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_149_1()
{
  v1 = *(v0 + *(type metadata accessor for TriageRequest.ClientContext(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_151_1()
{

  return sub_26BDA0FB0();
}

uint64_t OUTLINED_FUNCTION_156_1()
{
  v4 = v2[1];
  *v2 = v1;
  v2[1] = v0;
}

uint64_t OUTLINED_FUNCTION_201_0()
{
  v2 = *(*(v0 + 64) + *(v0 + 72));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_203_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_209_0(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = a1;
}

uint64_t OUTLINED_FUNCTION_212_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for TriageRequest.ClientContext(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_213_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for TriageRequest.ExecuteSupportOption(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return sub_26BDA0850();
}

uint64_t OUTLINED_FUNCTION_221_0(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_227_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 80) = 0;
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  *(v1 + 100) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = a1;
  *(v1 + 120) = 0;
  *(v1 + 128) = a1;
  *(v1 + 136) = 0;
  *(v1 + 144) = a1;
  v4 = v1 + *(v2 + 60);

  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_231_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(*(v1 + 80) + *(v1 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_232_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_248_0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  return 0;
}

uint64_t OUTLINED_FUNCTION_249_0()
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_251_0()
{
  v2 = *(*(v0 + 64) + *(v0 + 72));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_276_0()
{

  return sub_26BDA0830();
}

uint64_t OUTLINED_FUNCTION_277_0()
{

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_278_0()
{

  return sub_26BD65C08();
}

uint64_t OUTLINED_FUNCTION_279_0@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_26BD31AF8();
}

uint64_t OUTLINED_FUNCTION_285_0(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_287()
{
  result = *(v0 + 112);
  v2 = *(v0 + 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_288_0()
{
  v2 = *(v0 - 104);
  v1 = *(v0 - 96);
  result = *v2;
  v4 = v2[1];
  v5 = *v1;
  v6 = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_297_0()
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_298_0()
{

  return sub_26BD2E160();
}

uint64_t OUTLINED_FUNCTION_299_0()
{

  return sub_26BDA07E0();
}

uint64_t OUTLINED_FUNCTION_302_0()
{
  v1 = *(v0 + *(type metadata accessor for TriageRequest.ClientContext(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t CaseDetails.caseID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CaseDetails.bizChatURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CaseDetails.phoneNumber.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CaseDetails.init(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for ExecuteResponse(0) + 20));
  swift_beginAccess();
  v5 = v4[3];
  *a2 = v4[2];
  a2[1] = v5;
  swift_beginAccess();
  v6 = v4[63];
  a2[2] = v4[62];
  a2[3] = v6;
  swift_beginAccess();
  v7 = v4[70];
  v8 = v4[71];

  result = sub_26BD7C040(a1);
  a2[4] = v7;
  a2[5] = v8;
  return result;
}

uint64_t sub_26BD7C040(uint64_t a1)
{
  v2 = type metadata accessor for ExecuteResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26BD7C0B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26BD7C0F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SupportServices::ContactSolutionSubtype_optional __swiftcall ContactSolutionSubtype.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BDA0F30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactSolutionSubtype.rawValue.getter()
{
  v1 = 0x454E4F4850;
  if (*v0 != 1)
  {
    v1 = 0x5448435A42;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4475971;
  }
}

unint64_t sub_26BD7C204()
{
  result = qword_28044AF30;
  if (!qword_28044AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AF30);
  }

  return result;
}

uint64_t sub_26BD7C27C@<X0>(uint64_t *a1@<X8>)
{
  result = ContactSolutionSubtype.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactSolutionSubtype(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ContactSolutionSubtype(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26BD7C404);
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

uint64_t ContactType.id.getter()
{
  if (*v0)
  {
    return 1952540771;
  }

  else
  {
    return 1819042147;
  }
}

uint64_t ContactType.hashValue.getter()
{
  v1 = *v0;
  sub_26BDA1050();
  MEMORY[0x26D695FC0](v1);
  return sub_26BDA1070();
}

uint64_t sub_26BD7C508()
{
  v1 = *v0;
  sub_26BDA1050();
  MEMORY[0x26D695FC0](v1);
  return sub_26BDA1070();
}

unint64_t sub_26BD7C550()
{
  result = qword_28044AF38;
  if (!qword_28044AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AF38);
  }

  return result;
}

uint64_t sub_26BD7C5B0@<X0>(uint64_t *a1@<X8>)
{
  result = ContactType.id.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactType(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26BD7C730);
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

uint64_t HMTSolution.Step.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_147();
}

uint64_t HMTSolution.Step.alternativeSymptomInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_26BD7C7D4(v2, v3);
}

uint64_t sub_26BD7C7D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void __swiftcall HMTSolution.Step.init(id:articles:shouldShowContactOptions:alternativeSymptomInfo:)(SupportServices::HMTSolution::Step *__return_ptr retstr, Swift::String id, Swift::OpaquePointer articles, Swift::Bool shouldShowContactOptions, SupportServices::SupportSymptomInfo_optional *alternativeSymptomInfo)
{
  batteryServiceLevel = alternativeSymptomInfo->value.batteryServiceLevel;
  retstr->id = id;
  retstr->articles = articles;
  retstr->shouldShowContactOptions = shouldShowContactOptions;
  symptomId = alternativeSymptomInfo->value.symptomId;
  *(&retstr->alternativeSymptomInfo.value.categoryId + 7) = alternativeSymptomInfo->value.categoryId;
  *(&retstr->alternativeSymptomInfo.value.symptomId + 7) = symptomId;
  *(&retstr->alternativeSymptomInfo.value.productId + 7) = alternativeSymptomInfo->value.productId;
  *(&retstr->alternativeSymptomInfo.value.batteryServiceLevel + 7) = batteryServiceLevel;
}

uint64_t HMTSolution.Article.ArticleType.hashValue.getter()
{
  v1 = *v0;
  sub_26BDA1050();
  MEMORY[0x26D695FC0](v1);
  return sub_26BDA1070();
}

uint64_t HMTSolution.Article.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_147();
}

uint64_t HMTSolution.Article.localeIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_147();
}

uint64_t HMTSolution.Article.title.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_147();
}

uint64_t HMTSolution.Article.summary.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_147();
}

uint64_t type metadata accessor for HMTSolution.Article()
{
  result = qword_28044AF50;
  if (!qword_28044AF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HMTSolution.Article.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HMTSolution.Article();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t HMTSolution.Article.init(id:localeIdentifier:rank:title:summary:url:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char *a12)
{
  v13 = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a10;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  v14 = type metadata accessor for HMTSolution.Article();
  v15 = *(v14 + 36);
  result = sub_26BD31AA0();
  *(a9 + *(v14 + 40)) = v13;
  return result;
}

uint64_t sub_26BD7CAD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v4;
  v5 = *(a1 + 24);
  a2[2] = *(a1 + 16);
  a2[3] = v5;
  a2[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  a2[5] = *(a1 + 40);
  a2[6] = v6;
  v7 = *(a1 + 64);
  a2[7] = *(a1 + 56);
  a2[8] = v7;
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = type metadata accessor for HMTSolution.Article();
  v11 = *(v10 + 36);

  sub_26BDA04E0();
  v12 = *(a1 + 72);
  LODWORD(v5) = *(a1 + 80);
  OUTLINED_FUNCTION_8_5();
  result = sub_26BD8055C(a1, v13);
  if (v5)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  *(a2 + *(v10 + 40)) = v15;
  return result;
}

uint64_t sub_26BD7CBAC@<X0>(uint64_t *a1@<X8>)
{
  result = HMTSolution.Article.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_26BD7CBE8()
{
  result = qword_28044AF48;
  if (!qword_28044AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AF48);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26BD7CC48(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26BD7CC88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SupportServices0A11SymptomInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BD7CCF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26BD7CD34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BD7CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26BD7CE54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_26BD7CEE0()
{
  sub_26BD7CF88();
  if (v0 <= 0x3F)
  {
    sub_26BD7CFD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD7CF88()
{
  if (!qword_28044AF60)
  {
    v0 = sub_26BDA0DA0();
    if (!v1)
    {
      atomic_store(v0, &qword_28044AF60);
    }
  }
}

void sub_26BD7CFD8()
{
  if (!qword_28044AF68)
  {
    sub_26BDA0510();
    v0 = sub_26BDA0DA0();
    if (!v1)
    {
      atomic_store(v0, &qword_28044AF68);
    }
  }
}

uint64_t getEnumTagSinglePayload for HMTSolution.Article.ArticleType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for HMTSolution.Article.ArticleType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26BD7D184);
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

uint64_t sub_26BD7D1BC@<X0>(uint64_t *a1@<X0>, size_t *a2@<X8>)
{
  v212 = a2;
  v3 = type metadata accessor for HMTBCSSolution(0);
  v214 = *(v3 - 8);
  v4 = *(v214 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_145(v6 - v5);
  v7 = type metadata accessor for HMTSolution.Article();
  v8 = OUTLINED_FUNCTION_22_1(v7, &v251);
  v231 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_2(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B0, &qword_26BDA6188);
  v17 = OUTLINED_FUNCTION_110(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_252();
  v22 = OUTLINED_FUNCTION_145(v21);
  v23 = type metadata accessor for HMTArticle(v22);
  v215 = *(v23 - 8);
  v24 = *(v215 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_252();
  v27 = OUTLINED_FUNCTION_145(v26);
  v235 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(v27);
  v28 = OUTLINED_FUNCTION_34(v235);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_14_2(v32 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  v34 = OUTLINED_FUNCTION_110(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_2(&v211 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C0, &qword_26BDA6198);
  v39 = OUTLINED_FUNCTION_110(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_252();
  v44 = OUTLINED_FUNCTION_145(v43);
  v45 = type metadata accessor for HMTSolutionResponse.Step(v44);
  v46 = OUTLINED_FUNCTION_22_1(v45, &v252);
  v220 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_57();
  v52 = v50 - v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_2(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D0, &qword_26BDA61A8);
  v56 = OUTLINED_FUNCTION_110(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_57();
  v61 = (v59 - v60);
  MEMORY[0x28223BE20](v62);
  v64 = (&v211 - v63);
  v65 = sub_26BDA0B70();
  v228 = a1;
  v66 = *a1 + 64;
  v67 = OUTLINED_FUNCTION_3_4(*a1);
  v70 = v69 & v68;
  v239 = (v71 + 63) >> 6;
  v221 = v67;

  v72 = 0;
  v237 = 0;
  v232 = v64;
  v227 = v66;
  v219 = v52;
  v226 = v61;
  while (1)
  {
    v238 = v65;
    if (v70)
    {
LABEL_7:
      v70 &= v70 - 1;
      OUTLINED_FUNCTION_18_3();
      v76 = *v74;
      v75 = v74[1];
      OUTLINED_FUNCTION_17_4(v77);
      sub_26BD80504();
      v78 = &unk_26BDA61B0;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
      v80 = *(v79 + 48);
      *v61 = v76;
      v61[1] = v75;
      OUTLINED_FUNCTION_10_0();
      sub_26BD7EEE0();
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v79);

      v52 = v219;
    }

    else
    {
      while (1)
      {
        v73 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v73 >= v239)
        {
          break;
        }

        v70 = *(v66 + 8 * v73);
        ++v72;
        if (v70)
        {
          v72 = v73;
          goto LABEL_7;
        }
      }

      v78 = &unk_26BDA61B0;
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
      OUTLINED_FUNCTION_26_1(v109);
      v70 = 0;
    }

    sub_26BD31AA0();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1D8, &unk_26BDA61B0);
    if (__swift_getEnumTagSinglePayload(v64, 1, v81) == 1)
    {
      break;
    }

    v83 = *v64;
    v82 = v64[1];
    v84 = *(v81 + 48);
    OUTLINED_FUNCTION_10_0();
    v85 = sub_26BD7EEE0();
    v86 = v52;
    v87 = *(v52 + 16);
    MEMORY[0x28223BE20](v85);
    v88 = v228;
    *(&v211 - 2) = v228;
    v89 = v237;
    v91 = sub_26BD7E3EC(sub_26BD7EEA8, (&v211 - 4), v90);
    v92 = *(v86 + 24);
    MEMORY[0x28223BE20](v91);
    *(&v211 - 2) = v88;
    v94 = sub_26BD7E3EC(sub_26BD7EEC4, (&v211 - 4), v93);
    v240[0] = v91;
    sub_26BD93E7C(v94);

    sub_26BD7ED9C(v240);
    v73 = &v253;
    v237 = v89;
    if (v89)
    {
      goto LABEL_65;
    }

    v95 = v240[0];
    v96 = v86 + *(v233 + 36);
    v97 = v234;
    sub_26BD31AF8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v235);
    sub_26BD04E80(v97, &qword_280449CA0, &qword_26BDA4B78);
    if (EnumTagSinglePayload == 1)
    {
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v104 = 0uLL;
    }

    else
    {
      v105 = v213;
      sub_26BD17EC4();
      sub_26BD7E8EC(v105, v240);
      v99 = v240[0];
      v100 = v240[1];
      v101 = v240[2];
      v102 = v240[3];
      v104 = v241;
      v103 = v242;
    }

    v106 = v238;
    v61 = v226;
    v52 = v86;
    v107 = *(v86 + 8);
    v108 = *(v86 + 32);
    v243[0] = *v86;
    v243[1] = v107;
    v243[2] = v95;
    v244 = v108;
    v245 = v99;
    v246 = v100;
    v247 = v101;
    v248 = v102;
    v249 = v104;
    v250 = v103;

    swift_isUniquelyReferenced_nonNull_native();
    v240[0] = v106;
    sub_26BD9EBDC(v243, v83, v82);

    v65 = v240[0];
    sub_26BD8055C(v86, type metadata accessor for HMTSolutionResponse.Step);
    v64 = v232;
    v66 = v227;
  }

  v239 = sub_26BDA0B70();
  v110 = v228[1];
  v112 = *(v110 + 64);
  v111 = v110 + 64;
  v113 = OUTLINED_FUNCTION_3_4(v228[1]);
  v116 = v115 & v114;
  v118 = (v117 + 63) >> 6;
  v221 = v113;

  v119 = 0;
  v120 = v225;
  v226 = v118;
  v227 = v111;
  if (!v116)
  {
    goto LABEL_17;
  }

LABEL_21:
  while (1)
  {
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_18_3();
    v123 = *v121;
    v122 = v121[1];
    OUTLINED_FUNCTION_17_4(v124);
    sub_26BD80504();
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
    v126 = *(v125 + 48);
    *v120 = v123;
    v120[1] = v122;
    OUTLINED_FUNCTION_9_3();
    sub_26BD7EEE0();
    __swift_storeEnumTagSinglePayload(v120, 0, 1, v125);

LABEL_22:
    v127 = v224;
    sub_26BD31AA0();
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
    OUTLINED_FUNCTION_28_3(v127, 1);
    if (v129)
    {
      break;
    }

    v130 = v127[1];
    v235 = *v127;
    v234 = v130;
    v131 = *(v128 + 48);
    OUTLINED_FUNCTION_9_3();
    v132 = v222;
    sub_26BD7EEE0();
    v133 = *(v132 + 8);
    v134 = v223;
    *v223 = *v132;
    v134[1] = v133;
    v135 = *(v132 + 24);
    v134[2] = *(v132 + 16);
    v134[3] = v135;
    v134[4] = *(v132 + 32);
    v136 = *(v132 + 48);
    v134[5] = *(v132 + 40);
    v134[6] = v136;
    v137 = *(v132 + 64);
    v134[7] = *(v132 + 56);
    v134[8] = v137;
    v138 = *(v132 + 96);
    v233 = *(v132 + 88);
    OUTLINED_FUNCTION_23_2(v138);
    v139 = v78[9];

    v140 = v234;
    sub_26BDA04E0();
    v141 = *(v132 + 72);
    LODWORD(v135) = *(v132 + 80);
    OUTLINED_FUNCTION_8_5();
    sub_26BD8055C(v132, v142);
    if (v135)
    {
      v143 = v141;
    }

    else
    {
      v143 = 0;
    }

    v144 = v78[10];
    v78 = v235;
    *(v134 + v144) = v143;
    OUTLINED_FUNCTION_0_9();
    sub_26BD7EEE0();
    swift_isUniquelyReferenced_nonNull_native();
    v240[0] = v127;
    v145 = sub_26BD31908(v78, v140);
    OUTLINED_FUNCTION_24_1(v145, v146);
    if (v149)
    {
      goto LABEL_61;
    }

    v150 = v147;
    v151 = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF70, &qword_26BDA9730);
    if (OUTLINED_FUNCTION_27_1())
    {
      v152 = sub_26BD31908(v78, v140);
      v111 = v227;
      if ((v151 & 1) != (v153 & 1))
      {
        goto LABEL_66;
      }

      v150 = v152;
    }

    else
    {
      v111 = v227;
    }

    v118 = v226;
    if (v151)
    {

      v239 = v240[0];
      v154 = *(v240[0] + 56);
      OUTLINED_FUNCTION_13_3();
      sub_26BD7EE44(v236, v155 + v156 * v150);
    }

    else
    {
      v157 = v240[0];
      *(v240[0] + 8 * (v150 >> 6) + 64) |= 1 << v150;
      v158 = (v157[6] + 16 * v150);
      *v158 = v78;
      v158[1] = v140;
      v159 = v157[7];
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_0_9();
      sub_26BD7EEE0();
      v239 = v157;
      v160 = v157[2];
      v149 = __OFADD__(v160, 1);
      v73 = v160 + 1;
      if (v149)
      {
        goto LABEL_63;
      }

      *(v239 + 16) = v73;
    }

    v120 = v225;
    if (!v116)
    {
LABEL_17:
      while (1)
      {
        v73 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
          goto LABEL_59;
        }

        if (v73 >= v118)
        {
          v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1C8, &qword_26BDA61A0);
          __swift_storeEnumTagSinglePayload(v120, 1, 1, v161);
          v116 = 0;
          goto LABEL_22;
        }

        v116 = *(v111 + 8 * v73);
        ++v119;
        if (v116)
        {
          v119 = v73;
          goto LABEL_21;
        }
      }
    }
  }

  v162 = v228[2];
  v164 = *(v162 + 64);
  v163 = v162 + 64;
  v165 = OUTLINED_FUNCTION_3_4(v228[2]);
  v168 = v167 & v166;
  v170 = (v169 + 63) >> 6;
  v227 = v165;

  v171 = 0;
  v172 = v218;
  v233 = v163;
  v232 = v170;
  if (!v168)
  {
    goto LABEL_40;
  }

  do
  {
LABEL_44:
    OUTLINED_FUNCTION_20_6();
    OUTLINED_FUNCTION_18_3();
    v174 = *v173;
    v175 = v173[1];
    OUTLINED_FUNCTION_17_4(v176);
    sub_26BD80504();
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
    v178 = *(v177 + 48);
    *v172 = v174;
    v172[1] = v175;
    OUTLINED_FUNCTION_7_3();
    sub_26BD7EEE0();
    __swift_storeEnumTagSinglePayload(v172, 0, 1, v177);

LABEL_45:
    v179 = v217;
    sub_26BD31AA0();
    v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
    OUTLINED_FUNCTION_28_3(v179, 1);
    if (v129)
    {

      v208 = v212;
      v209 = v239;
      *v212 = v238;
      v208[1] = v209;
      return sub_26BD8055C(v228, type metadata accessor for HMTSolutionResponse);
    }

    v181 = v179[1];
    v236 = *v179;
    v235 = v181;
    v182 = *(v180 + 48);
    OUTLINED_FUNCTION_7_3();
    v183 = v229;
    sub_26BD7EEE0();
    v184 = v183[1];
    v185 = v216;
    *v216 = *v183;
    v185[1] = v184;
    v185[2] = 0;
    v185[3] = 0;
    v185[4] = v183[2];
    v186 = v183[6];
    v185[5] = v183[5];
    v185[6] = v186;
    v187 = v183[8];
    v185[7] = v183[7];
    v185[8] = v187;
    v188 = v183[10];
    OUTLINED_FUNCTION_23_2(v183[9]);

    sub_26BDA04E0();
    sub_26BD8055C(v183, type metadata accessor for HMTBCSSolution);
    v189 = v235;
    *(v185 + 43648) = 3;
    OUTLINED_FUNCTION_0_9();
    sub_26BD7EEE0();
    swift_isUniquelyReferenced_nonNull_native();
    v240[0] = v179;
    v190 = v236;
    v191 = sub_26BD31908(v236, v189);
    OUTLINED_FUNCTION_24_1(v191, v192);
    if (v149)
    {
      goto LABEL_62;
    }

    v195 = v193;
    v196 = v194;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF70, &qword_26BDA9730);
    if (OUTLINED_FUNCTION_27_1())
    {
      v197 = sub_26BD31908(v190, v189);
      v199 = v233;
      v170 = v232;
      if ((v196 & 1) != (v198 & 1))
      {
        goto LABEL_66;
      }

      v195 = v197;
      if (v196)
      {
LABEL_53:

        v239 = v240[0];
        v204 = *(v240[0] + 56);
        OUTLINED_FUNCTION_13_3();
        sub_26BD7EE44(v230, v205 + v206 * v195);
        goto LABEL_54;
      }
    }

    else
    {
      v199 = v233;
      v170 = v232;
      if (v196)
      {
        goto LABEL_53;
      }
    }

    v200 = v240[0];
    *(v240[0] + 8 * (v195 >> 6) + 64) |= 1 << v195;
    v201 = (v200[6] + 16 * v195);
    *v201 = v190;
    v201[1] = v189;
    v202 = v200[7];
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_0_9();
    sub_26BD7EEE0();
    v239 = v200;
    v203 = v200[2];
    v149 = __OFADD__(v203, 1);
    v73 = v203 + 1;
    if (v149)
    {
      goto LABEL_64;
    }

    *(v239 + 16) = v73;
LABEL_54:
    v172 = v218;
    v163 = v199;
  }

  while (v168);
LABEL_40:
  while (1)
  {
    v73 = v171 + 1;
    if (__OFADD__(v171, 1))
    {
      break;
    }

    if (v73 >= v170)
    {
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A1B8, &qword_26BDA6190);
      OUTLINED_FUNCTION_26_1(v207);
      v168 = 0;
      goto LABEL_45;
    }

    v168 = *(v163 + 8 * v73);
    ++v171;
    if (v168)
    {
      v171 = v73;
      goto LABEL_44;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:

  __break(1u);
LABEL_66:
  result = sub_26BDA0FE0();
  __break(1u);
  return result;
}