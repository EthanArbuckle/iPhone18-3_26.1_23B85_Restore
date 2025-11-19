uint64_t sub_267E8D13C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_267E8D1A0(uint64_t a1, uint64_t a2)
{
  result = sub_267E8D674(&qword_28022CD38, a2, type metadata accessor for AppDependentSignalInstrumentation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267E8D1F8(uint64_t a1, uint64_t a2)
{
  result = sub_267E8D674(&qword_28022CD40, a2, type metadata accessor for AppIndependentSignalInstrumentation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267E8D250()
{
  sub_267EF9D38();
  OUTLINED_FUNCTION_43();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267E8D298(char a1)
{
  result = 27954;
  switch(a1)
  {
    case 1:
      result = 7155761;
      break;
    case 2:
      result = 26673;
      break;
    case 3:
      result = 26678;
      break;
    case 4:
      result = 25649;
      break;
    case 5:
      result = 25655;
      break;
    case 6:
      result = 6567986;
      break;
    case 7:
      result = 6712937;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267E8D33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267E8D250();
  *a2 = result;
  return result;
}

uint64_t sub_267E8D36C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267E8D298(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267E8D3A8()
{
  sub_267EF5018();
  sub_267EF4D28();
  MEMORY[0x26D608E60](46, 0xE100000000000000);
  v0 = sub_267EF9218();

  return v0 & 1;
}

uint64_t sub_267E8D448(char *a1)
{
  v1 = *a1;
  sub_267EF5018();
  MEMORY[0x26D608E60](46, 0xE100000000000000);
  sub_267EF9C58();
  v2 = sub_267EF9228();

  return v2 & 1;
}

uint64_t sub_267E8D510(char *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_267E8D448(a1) & 1;
}

uint64_t sub_267E8D534()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_267E8D3A8() & 1;
}

uint64_t sub_267E8D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v7 = a3;
  return v4(v8, &v7);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E8D5DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_267E8D614(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_22(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_267E8D674(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimeBucket(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267E8D79C()
{
  result = qword_28022CD80;
  if (!qword_28022CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022CD88, qword_267F0DAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CD80);
  }

  return result;
}

unint64_t sub_267E8D804()
{
  result = qword_28022CD90;
  if (!qword_28022CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CD90);
  }

  return result;
}

unint64_t sub_267E8D860(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    if (sub_267EF9A68())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:

  return v1;
}

char *sub_267E8D8BC(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v209 = &v200[-v4];
  v241 = sub_267EF6868();
  v210 = *(v241 - 8);
  v5 = *(v210 + 64);
  v6 = MEMORY[0x28223BE20](v241);
  v240 = &v200[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v237 = &v200[-v8];
  v221 = sub_267EF6A88();
  v220 = *(v221 - 8);
  v9 = *(v220 + 64);
  MEMORY[0x28223BE20](v221);
  v219 = &v200[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v217 = sub_267EF6B88();
  v216 = *(v217 - 8);
  v11 = *(v216 + 64);
  MEMORY[0x28223BE20](v217);
  v218 = &v200[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_267EF6B38();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v215 = &v200[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v239 = sub_267EF2E38();
  v206 = *(v239 - 8);
  v16 = *(v206 + 64);
  v17 = MEMORY[0x28223BE20](v239);
  v236 = &v200[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v224 = &v200[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v223 = &v200[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v231 = &v200[-v24];
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v25 = *(*(v208 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v208);
  v214 = &v200[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v207 = &v200[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v213 = &v200[-v31];
  MEMORY[0x28223BE20](v30);
  v230 = &v200[-v32];
  v212 = sub_267EF6B18();
  v211 = *(v212 - 8);
  v33 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v35 = &v200[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = type metadata accessor for SmsContactIntentNode();
  v36 = *(v242 - 1);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v242);
  v233 = &v200[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v41 = &v200[-v40];
  v42 = sub_267EF6718();
  v43 = *(v42 - 8);
  v44 = v43[8];
  v45 = MEMORY[0x28223BE20](v42);
  v229 = &v200[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v45);
  v48 = &v200[-v47];
  v49 = sub_267EF89E8();
  v227 = *(v49 - 8);
  v228 = v49;
  v50 = *(v227 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v200[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280228820 != -1)
  {
LABEL_101:
    swift_once();
  }

  v222 = v35;
  v53 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  v225 = v53;
  v226 = v52;
  sub_267EF89A8();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v54 = sub_267EF8A08();
  v55 = __swift_project_value_buffer(v54, qword_280240FB0);
  v56 = v43[2];
  v235 = a1;
  v56(v48, a1, v42);
  v234 = v55;
  v57 = sub_267EF89F8();
  v58 = v48;
  v59 = sub_267EF95D8();
  if (os_log_type_enabled(v57, v59))
  {
    v60 = swift_slowAlloc();
    v202 = v42;
    v61 = v60;
    v203 = v60;
    v204 = swift_slowAlloc();
    v243[0] = v204;
    *v61 = 136315138;
    sub_267E8F9D0(&qword_2802293D8, MEMORY[0x277D5F458]);
    v42 = v202;
    v62 = sub_267EF9E58();
    v201 = v59;
    v63 = v62;
    v205 = v56;
    v65 = v64;
    v66 = v43[1];
    ++v43;
    v66(v58, v42);
    v67 = sub_267BA33E8(v63, v65, v243);
    v56 = v205;

    v68 = v203;
    *(v203 + 4) = v67;
    _os_log_impl(&dword_267B93000, v57, v201, "#SendMessageNLIntentTransformer transforming from: %s", v68, 0xCu);
    v69 = v204;
    __swift_destroy_boxed_opaque_existential_0(v204);
    MEMORY[0x26D60A7B0](v69, -1, -1);
    MEMORY[0x26D60A7B0](v68, -1, -1);
  }

  else
  {

    v70 = v43[1];
    ++v43;
    v70(v58, v42);
  }

  v71 = v229;
  v56(v229, v235, v42);
  v72 = type metadata accessor for SmsNLv3Intent();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = sub_267EC41AC(v71);
  if (v75)
  {
    v52 = v75;
    v229 = v75;
    sub_267EC4E04();
    v48 = v76;
    a1 = 0;
    v35 = *(v76 + 16);
    v235 = MEMORY[0x277D84F90];
    while (v35 != a1)
    {
      if (a1 >= *(v48 + 2))
      {
        __break(1u);
        goto LABEL_101;
      }

      v43 = ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v77 = *(v36 + 72);
      sub_267DA6FC0(v43 + v48 + v77 * a1, v41);
      if (qword_280228860 != -1)
      {
        swift_once();
      }

      sub_267E8F9D0(&qword_2802297A0, type metadata accessor for SmsContactIntentNode);
      sub_267EF5B28();
      v52 = 0xE200000000000000;
      switch(v244)
      {
        case 1:
          v52 = 0xE400000000000000;
          goto LABEL_20;
        case 2:
          v52 = 0xE700000000000000;
          goto LABEL_20;
        case 3:

          goto LABEL_21;
        case 4:
          v52 = 0xE600000000000000;
          goto LABEL_20;
        case 5:
          v52 = 0xE300000000000000;
          goto LABEL_20;
        case 6:
          v52 = 0xE400000000000000;
          goto LABEL_20;
        case 7:
          goto LABEL_22;
        default:
LABEL_20:
          v42 = sub_267EF9EA8();

          if (v42)
          {
LABEL_21:
            sub_267DA7088(v41);
            ++a1;
          }

          else
          {
LABEL_22:
            sub_267DA7024(v41, v233);
            v52 = v235;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v243[0] = v52;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v79 = *(v52 + 2);
              sub_267C7235C();
              v52 = v243[0];
            }

            v42 = *(v52 + 2);
            v80 = v42 + 1;
            if (v42 >= *(v52 + 3) >> 1)
            {
              v235 = (v42 + 1);
              sub_267C7235C();
              v80 = v235;
              v52 = v243[0];
            }

            ++a1;
            *(v52 + 2) = v80;
            v235 = v52;
            sub_267DA7024(v233, v43 + v52 + v42 * v77);
          }

          break;
      }
    }

    if (*(v235 + 2))
    {
      v81 = v238;
      v82 = sub_267DA509C((v238 + 7), v235);

      __swift_project_boxed_opaque_existential_0(v81 + 2, v81[5]);
      sub_267EC4468();
      v84 = v83;
      v86 = v85;
      v203 = sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
      v87 = sub_267EF2D28();
      v88 = v230;
      v205 = v87;
      __swift_storeEnumTagSinglePayload(v230, 1, 1, v87);
      v89 = sub_267EF6C28();
      __swift_storeEnumTagSinglePayload(v231, 1, 1, v89);
      v90 = sub_267EF6FF8();
      v91 = sub_267EF6FC8();
      v92 = v88;
      v93 = v213;
      sub_267BC9B04(v92, v213, &qword_280229430, &qword_267EFD2C0);

      v94 = sub_267EF89F8();
      v95 = sub_267EF95D8();

      v96 = os_log_type_enabled(v94, v95);
      v242 = v91;
      v233 = v82;
      v235 = v90;
      v204 = v84;
      if (v96)
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v99 = v84;
        v100 = v98;
        v244 = v98;
        *v97 = 136315394;
        v243[0] = v99;
        v243[1] = v86;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
        v101 = sub_267EF9098();
        v103 = sub_267BA33E8(v101, v102, &v244);

        *(v97 + 4) = v103;
        *(v97 + 12) = 2080;
        sub_267BC9B04(v93, v207, &qword_280229430, &qword_267EFD2C0);
        v104 = sub_267EF9098();
        v105 = v93;
        v107 = v106;
        v91 = v242;
        v81 = v238;
        sub_267B9FED8(v105, &qword_280229430, &qword_267EFD2C0);
        v108 = sub_267BA33E8(v104, v107, &v244);

        *(v97 + 14) = v108;
        _os_log_impl(&dword_267B93000, v94, v95, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D60A7B0](v100, -1, -1);
        MEMORY[0x26D60A7B0](v97, -1, -1);
      }

      else
      {

        sub_267B9FED8(v93, &qword_280229430, &qword_267EFD2C0);
      }

      v115 = v217;
      v116 = v214;
      if (v91 && (sub_267EF6F98(), sub_267EF37B8(), v118 = v117, , v118))
      {
        v217 = v118;
      }

      else
      {

        v217 = 0xE000000000000000;
      }

      v243[0] = v203;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
      v214 = sub_267EF9098();
      v213 = v119;
      v120 = v81[16];
      __swift_project_boxed_opaque_existential_0(v81 + 12, v81[15]);
      sub_267EF3B68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_267EFC020;
      v122 = 0x8000000267F10280;
      v123 = 0xD000000000000013;
      if (v86)
      {
        v123 = v204;
        v122 = v86;
      }

      *(v121 + 32) = v123;
      *(v121 + 40) = v122;
      sub_267BC9B04(v231, v223, &qword_280229428, &unk_267F00E50);
      sub_267BC9B04(v230, v116, &qword_280229430, &qword_267EFD2C0);
      v124 = v205;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116, 1, v205);

      if (EnumTagSinglePayload == 1)
      {
        sub_267B9FED8(v116, &qword_280229430, &qword_267EFD2C0);
      }

      else
      {
        sub_267EF2CE8();
        (*(*(v124 - 8) + 8))(v116, v124);
      }

      v126 = v221;
      sub_267EF6B28();
      (*(v216 + 104))(v218, *MEMORY[0x277D56148], v115);
      (*(v220 + 104))(v219, *MEMORY[0x277D560D0], v126);
      v127 = v222;
      sub_267EF6AF8();

      sub_267B9FED8(v231, &qword_280229428, &unk_267F00E50);
      sub_267B9FED8(v230, &qword_280229430, &qword_267EFD2C0);
      if (sub_267EF6FC8())
      {
        sub_267EF6FA8();

        sub_267EF8678();
      }

      v114 = v238;
      v128 = v233;
      sub_267EF6B08();
      if (*(v128 + 16))
      {
        __swift_project_boxed_opaque_existential_0(v114 + 2, v114[5]);
        v129 = v232;
        v130 = sub_267EF6878();
        if (v129)
        {
          (*(v211 + 8))(v127, v212);

          sub_267EF9688();
          v112 = v226;
          sub_267EF89B8();
          (*(v227 + 8))(v112, v228);
          return v112;
        }

        v134 = v130;
        v232 = 0;

        v135 = MEMORY[0x277D84F90];
        v243[0] = MEMORY[0x277D84F90];
        v136 = *(v134 + 16);
        v224 = v134;
        if (v136)
        {
          v235 = *(v210 + 16);
          v137 = v134 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
          v233 = *(v210 + 72);
          v242 = (v210 + 16);
          v230 = (v210 + 8);
          v231 = (v206 + 8);
          v138 = v236;
          do
          {
            v139 = v237;
            v140 = v241;
            (v235)(v237, v137, v241);
            v141 = sub_267EF6858();
            v142 = v238[16];
            __swift_project_boxed_opaque_existential_0(v238 + 12, v238[15]);
            sub_267EF3B68();
            sub_267DEA1E8();

            (*v231)(v138, v239);
            sub_267EF6828();
            sub_267DEB128();
            v143 = (*v230)(v139, v140);
            MEMORY[0x26D608F90](v143);
            if (*((v243[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v243[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();
            v137 += v233;
            --v136;
          }

          while (v136);
          v135 = v243[0];
          v114 = v238;
          v127 = v222;
        }

        (*(v211 + 8))(v127, v212);
        v113 = sub_267ECEE14(v135);
      }

      else
      {

        v131 = sub_267EF89F8();
        v132 = sub_267EF95D8();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&dword_267B93000, v131, v132, "#SendMessageNLIntentTransformer Contact nodes do not have a fresh value, skipping contact resolution", v133, 2u);
          MEMORY[0x26D60A7B0](v133, -1, -1);
        }

        (*(v211 + 8))(v127, v212);
        v113 = MEMORY[0x277D84F90];
        v224 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v113 = MEMORY[0x277D84F90];
      v224 = MEMORY[0x277D84F90];
      v114 = v238;
    }

    v144 = sub_267BAF0DC(v113);
    v236 = v113;
    if (v144)
    {
    }

    else
    {
      v113 = 0;
    }

    v145 = sub_267EC5F1C();
    v147 = sub_267EC4D94();
    if (v146)
    {
      v148 = v146;
      v149 = v114;
      v150 = v114[15];
      v151 = v114[16];
      __swift_project_boxed_opaque_existential_0(v149 + 12, v150);
      v152 = v209;
      sub_267EF3B68();
      __swift_storeEnumTagSinglePayload(v152, 0, 1, v239);
      v147 = sub_267D5EBA4(v152, v147, v148);
      v154 = v153;

      sub_267B9FED8(v152, &unk_28022AF10, &unk_267F001E0);
    }

    else
    {
      v154 = 0;
    }

    if (sub_267EC3A9C())
    {
      v155 = sub_267EC5F4C();
    }

    else
    {
      v155 = 0;
    }

    v156 = sub_267EC4CFC();
    v158 = v157;
    v159 = sub_267EC5FD8();
    v160 = objc_allocWithZone(MEMORY[0x277CD4078]);
    v161 = sub_267E8F82C(v113, v145, v147, v154, v155, v156, v158, 0, 0, 0, v159);
    v162 = v161;
    v163 = v224;
    v164 = *(v224 + 2);
    v237 = v161;
    if (v164)
    {
      v243[0] = MEMORY[0x277D84F90];
      v165 = v161;
      sub_267C72264(0, v164, 0);
      v166 = v243[0];
      v242 = *(v210 + 16);
      v167 = &v163[(*(v210 + 80) + 32) & ~*(v210 + 80)];
      v239 = *(v210 + 72);
      v168 = (v210 + 8);
      do
      {
        v169 = v240;
        v170 = v241;
        (v242)(v240, v167, v241);
        v171 = sub_267EF6828();
        (*v168)(v169, v170);
        v243[0] = v166;
        v173 = *(v166 + 16);
        v172 = *(v166 + 24);
        if (v173 >= v172 >> 1)
        {
          sub_267C72264((v172 > 1), v173 + 1, 1);
          v166 = v243[0];
        }

        *(v166 + 16) = v173 + 1;
        *(v166 + 4 * v173 + 32) = v171;
        v167 += v239;
        --v164;
      }

      while (v164);

      v162 = v237;
    }

    else
    {
      v174 = v161;
    }

    sub_267C7A414();
    v175 = v238;
    v176 = v238[21];
    __swift_project_boxed_opaque_existential_0(v238 + 17, v238[20]);
    sub_267EF4278();
    __swift_project_boxed_opaque_existential_0(v243, v243[3]);
    sub_267EF42B8();
    v177 = v236;
    if (v178)
    {
      v179 = sub_267EF8FF8();
    }

    else
    {
      v179 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v243);
    [v162 _setOriginatingDeviceIdsIdentifier_];

    v180 = [v162 _metadata];
    if (v180)
    {
      v181 = v175[22];
      if (v181)
      {
        sub_267EF6F98();
        sub_267EF37B8();
        v183 = v182;

        if (v183)
        {
          v181 = sub_267EF8FF8();
        }

        else
        {
          v181 = 0;
        }
      }

      [v180 setIntentId_];
    }

    v184 = sub_267BAF0DC(v177);
    if (v184)
    {
      v185 = v184;
      v243[0] = MEMORY[0x277D84F90];
      result = sub_267C72264(0, v184 & ~(v184 >> 63), 0);
      if (v185 < 0)
      {
        __break(1u);
        return result;
      }

      v187 = 0;
      v188 = v243[0];
      do
      {
        if ((v177 & 0xC000000000000001) != 0)
        {
          v189 = MEMORY[0x26D609870](v187, v177);
        }

        else
        {
          v189 = *(v177 + 8 * v187 + 32);
        }

        v190 = v189;
        v191 = sub_267DEB048();

        v243[0] = v188;
        v193 = *(v188 + 16);
        v192 = *(v188 + 24);
        if (v193 >= v192 >> 1)
        {
          sub_267C72264((v192 > 1), v193 + 1, 1);
          v188 = v243[0];
        }

        ++v187;
        *(v188 + 16) = v193 + 1;
        *(v188 + 4 * v193 + 32) = v191;
      }

      while (v185 != v187);

      v162 = v237;
    }

    else
    {
    }

    sub_267D2952C();
    v112 = v162;
    v194 = sub_267EF89F8();
    v195 = sub_267EF95D8();

    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      *v196 = 138412290;
      *(v196 + 4) = v112;
      *v197 = v112;
      v198 = v112;
      _os_log_impl(&dword_267B93000, v194, v195, "#SendMessageNLIntentTransformer transformed to: %@", v196, 0xCu);
      sub_267B9FED8(v197, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v197, -1, -1);
      MEMORY[0x26D60A7B0](v196, -1, -1);
    }
  }

  else
  {
    v109 = sub_267EF89F8();
    v110 = sub_267EF95D8();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_267B93000, v109, v110, "#SendMessageNLIntentTransformer NL intent not in sms domain, returning an empty SiriKit intent", v111, 2u);
      MEMORY[0x26D60A7B0](v111, -1, -1);
    }

    v112 = [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  }

  sub_267EF9688();
  v199 = v226;
  sub_267EF89B8();
  (*(v227 + 8))(v199, v228);
  return v112;
}

uint64_t *sub_267E8F45C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[22];

  return v0;
}

uint64_t sub_267E8F49C()
{
  sub_267E8F45C();

  return swift_deallocClassInstance();
}

uint64_t sub_267E8F4F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char **a5@<X8>)
{
  v33 = a5;
  v34 = a1;
  sub_267B9B050(a2, v41);
  sub_267B9B050(a3, v40);
  v7 = a4[3];
  v8 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v7);
  (*(v8 + 8))(v39, v7, v8);
  v9 = a4[3];
  v10 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, v9);
  (*(v10 + 16))(v38, v9, v10);
  sub_267EF6FF8();
  v11 = sub_267EF6FC8();
  v12 = v42;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_267EF68A8();
  v36 = v17;
  v37 = &off_2878D54D8;
  __swift_allocate_boxed_opaque_existential_0(v35);
  OUTLINED_FUNCTION_5_0(v17);
  v19 = *(v18 + 32);
  v19();
  type metadata accessor for SendMessageNLIntentTransformer();
  inited = swift_initStackObject();
  v21 = v36;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  inited[5] = v17;
  inited[6] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(inited + 2);
  (v19)(boxed_opaque_existential_0, v25, v17);
  sub_267B9A5E8(v40, (inited + 7));
  sub_267B9A5E8(v39, (inited + 12));
  sub_267B9A5E8(v38, (inited + 17));
  inited[22] = v11;
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v28 = v43;
  v29 = sub_267E8D8BC(v34);
  if (v28)
  {
    swift_setDeallocating();
    sub_267E8F45C();
    return swift_deallocClassInstance();
  }

  else
  {
    v31 = v29;
    swift_setDeallocating();
    sub_267E8F45C();
    result = swift_deallocClassInstance();
    *v33 = v31;
  }

  return result;
}

id sub_267E8F82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a1)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v16 = sub_267EF92D8();

    if (a4)
    {
LABEL_3:
      v17 = sub_267EF8FF8();

      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  if (a7)
  {
    v18 = sub_267EF8FF8();
  }

  else
  {
    v18 = 0;
  }

  if (a9)
  {
    v19 = sub_267EF8FF8();
  }

  else
  {
    v19 = 0;
  }

  if (a11)
  {
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v20 = sub_267EF92D8();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v11 initWithRecipients:v16 outgoingMessageType:a2 content:v17 speakableGroupName:a5 conversationIdentifier:v18 serviceName:v19 sender:a10 attachments:v20];

  return v21;
}

uint64_t sub_267E8F9D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267E8FA18()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_19_44();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20]();
  v10 = OUTLINED_FUNCTION_4_67();
  sub_267BC9B04(v10, v11, &unk_28022AE50, &unk_267EFD130);
  v12 = sub_267EF93F8();
  OUTLINED_FUNCTION_27_35(v12);
  if (&unk_267EFD130 == 1)
  {
    sub_267B9FED8(v0, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    OUTLINED_FUNCTION_5_0(&unk_28022AE50);
    (*(v13 + 8))(v0, &unk_28022AE50);
  }

  v15 = *(v4 + 16);
  v14 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = v15;
    sub_267EF93A8();
    OUTLINED_FUNCTION_23_30();
    if (v1)
    {
LABEL_6:
      sub_267EF90C8();
      OUTLINED_FUNCTION_62_0();
      v17 = swift_allocObject();
      *(v17 + 16) = v6;
      *(v17 + 24) = v4;

      if (v14 | v16)
      {
        OUTLINED_FUNCTION_20_32();
      }

      else
      {
        v18 = 0;
      }

      OUTLINED_FUNCTION_17_32(v18);
      swift_task_create();

      sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    v14 = 0;
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_62_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = v4;
  if (v14 | v16)
  {
    OUTLINED_FUNCTION_18_38();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_47();
}

void sub_267E8FC80()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_19_44();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_4_67();
  sub_267BC9B04(v11, v12, &unk_28022AE50, &unk_267EFD130);
  v13 = sub_267EF93F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9FED8(v0, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    OUTLINED_FUNCTION_5_0(v13);
    (*(v15 + 8))(v0, v13);
  }

  v17 = *(v4 + 16);
  v16 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = v17;
    sub_267EF93A8();
    OUTLINED_FUNCTION_23_30();
    if (v1)
    {
LABEL_6:
      sub_267EF90C8();
      OUTLINED_FUNCTION_62_0();
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A120, &qword_267F004B0);
      v20 = v16 | v18;
      if (v16 | v18)
      {
        OUTLINED_FUNCTION_20_32();
      }

      OUTLINED_FUNCTION_17_32(v20);
      swift_task_create();

      sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);

      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_62_0();
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A120, &qword_267F004B0);
  if (v16 | v18)
  {
    OUTLINED_FUNCTION_18_38();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_47();
}

void sub_267E8FF18()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_19_44();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_4_67();
  sub_267BC9B04(v11, v12, &unk_28022AE50, &unk_267EFD130);
  v13 = sub_267EF93F8();
  OUTLINED_FUNCTION_27_35(v13);
  if (&unk_267EFD130 == 1)
  {
    sub_267B9FED8(v0, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    OUTLINED_FUNCTION_5_0(&unk_28022AE50);
    (*(v14 + 8))(v0, &unk_28022AE50);
  }

  v16 = *(v4 + 16);
  v15 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = v16;
    sub_267EF93A8();
    OUTLINED_FUNCTION_23_30();
    if (v1)
    {
LABEL_6:
      sub_267EF90C8();
      OUTLINED_FUNCTION_62_0();
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      *(v18 + 24) = v4;
      sub_267EF7D48();

      if (v15 | v17)
      {
        OUTLINED_FUNCTION_20_32();
      }

      else
      {
        v19 = 0;
      }

      OUTLINED_FUNCTION_17_32(v19);
      swift_task_create();

      sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0;
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_267B9FED8(v2, &unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_62_0();
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v4;
  sub_267EF7D48();
  if (v15 | v17)
  {
    OUTLINED_FUNCTION_18_38();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_47();
}

void sub_267E90198()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  OUTLINED_FUNCTION_23();
  v20 = v19;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v23);
  v32 = OUTLINED_FUNCTION_9_54(v24, v25, v26, v27, v28, v29, v30, v31, v39);
  v33(v32, v2, v6);
  sub_267B9B050(v12, v40);
  v34 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v6;
  *(v35 + 24) = v4;
  (*(v20 + 32))(v35 + v34, v1, v6);
  sub_267B9A5E8(v40, v35 + ((v22 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
  OUTLINED_FUNCTION_62_0();
  v36 = swift_allocObject();
  *(v36 + 16) = v10;
  *(v36 + 24) = v8;
  v37 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = sub_267E92348;
  v38[5] = v36;
  v38[6] = &unk_267F0DD50;
  v38[7] = v35;

  sub_267E8FA18();

  OUTLINED_FUNCTION_47();
}

void sub_267E903B0()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v39 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  OUTLINED_FUNCTION_23();
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v31 = OUTLINED_FUNCTION_9_54(v23, v24, v25, v26, v27, v28, v29, v30, v38);
  v32(v31, v2, v6);
  v33 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v6;
  *(v34 + 24) = v4;
  (*(v19 + 32))(v34 + v33, v1, v6);
  *(v34 + ((v21 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v35 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v35);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v39;
  v36[5] = v8;
  v36[6] = &unk_267F0DD10;
  v36[7] = v34;
  v37 = v11;

  sub_267E8FA18();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E905A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_267E90698;

  return v10(v6 + 2);
}

uint64_t sub_267E90698()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_267E9080C;
  }

  else
  {
    v7 = sub_267E9079C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E9079C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 24) = 0;
  v1(v0 + 16);
  v3 = *(v0 + 24);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E9080C()
{
  OUTLINED_FUNCTION_62();
  v9 = v0;
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v7 = v1;
  v8 = 1;
  v4 = v1;
  v3(&v7);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E9089C()
{
  OUTLINED_FUNCTION_12();
  v0[14] = v1;
  v0[15] = v2;
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_267E9098C;

  return v7(v0 + 2);
}

uint64_t sub_267E9098C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_267E90B0C;
  }

  else
  {
    v7 = sub_267E90A90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E90A90()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 56) = 0;
  v1(v0 + 16);
  sub_267B9FED8(v0 + 16, &unk_28022A480, &unk_267F029F0);
  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E90B0C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 64) = v1;
  *(v0 + 104) = 1;
  v4 = v1;
  v3(v0 + 64);

  sub_267B9FED8(v0 + 64, &unk_28022A480, &unk_267F029F0);
  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E90BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *(a5 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 24) = v11;
  *v11 = v5;
  v11[1] = sub_267E90CE4;

  return v13(a3, a4, a5);
}

uint64_t sub_267E90CE4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x2822009F8](sub_267E90E20, 0, 0);
  }
}

uint64_t sub_267E90E20()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_17();
  return v1();
}

uint64_t sub_267E90E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 24);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_267BAEBEC;

  return v14(a1, a3, a4, a5);
}

uint64_t sub_267E90F8C(__int128 *a1, uint64_t a2, __int128 *a3)
{
  sub_267B9A5E8(a1, v3 + 72);
  *(v3 + 112) = a2;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  sub_267B9A5E8(a3, v3 + 16);
  return v3;
}

uint64_t sub_267E90FDC()
{
  sub_267BBD080(0, *(*(v0 + 112) + 16), *(v0 + 112));
  sub_267E9103C();

  return swift_unknownObjectRelease();
}

void sub_267E9103C()
{
  OUTLINED_FUNCTION_48_0();
  v36 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_267EF4028();
  OUTLINED_FUNCTION_23();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 >> 1 == v8)
  {
    sub_267EF4018();
    v4(v20);
    (*(v15 + 8))(v20, v13);
LABEL_7:
    OUTLINED_FUNCTION_47();
    return;
  }

  v35 = v4;
  sub_267C8F6D8(v10, v8, v6, &v37);
  if (v38)
  {
    sub_267B9A5E8(&v37, v39);
    v21 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else if ((v6 >> 1) >= v21)
    {
      v22 = sub_267E92580(v21, v6 >> 1, v12, v10, v8, v6);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      sub_267B9A5E8(v39, v40);
      v29 = v41;
      v30 = v42;
      __swift_project_boxed_opaque_existential_0(v40, v41);
      sub_267B9B050(v40, v39);
      v31 = swift_allocObject();
      v32 = v36;
      v31[2] = v36;
      sub_267B9A5E8(v39, (v31 + 3));
      v31[8] = v22;
      v31[9] = v24;
      v31[10] = v26;
      v31[11] = v28;
      v31[12] = v35;
      v31[13] = v2;
      v33 = *(v30 + 8);

      swift_unknownObjectRetain();
      v33(v32 + 72, sub_267E925FC, v31, v29, v30);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v40);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_267E91280(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *), uint64_t a10)
{
  v75 = a7;
  v76 = a8;
  v78 = a9;
  v79 = a10;
  v77 = sub_267EF4028();
  v16 = *(v77 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v77);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 + 56);
  v21 = *(a3 + 64);
  *(a3 + 56) = a1;
  *(a3 + 64) = a2 & 1;
  v22 = a1;

  if (a2)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);
    sub_267B9B050(a4, v82);
    v24 = a1;
    v25 = sub_267EF89F8();
    v26 = sub_267EF95E8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v81 = v28;
      *v27 = 136315394;
      __swift_project_boxed_opaque_existential_0(v82, v83);
      swift_getDynamicType();
      v29 = sub_267EFA0E8();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_0(v82);
      v32 = sub_267BA33E8(v29, v31, &v81);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v80 = a1;
      v33 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v34 = sub_267EF9098();
      v36 = sub_267BA33E8(v34, v35, &v81);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_267B93000, v25, v26, "#RequestSupportCheckFlow strategy failed to determine request support %s: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v28, -1, -1);
      MEMORY[0x26D60A7B0](v27, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v82);
    }

    sub_267EF4018();
    v78(v19);
    return (*(v16 + 8))(v19, v77);
  }

  else if (a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v37 = sub_267EF8A08();
    __swift_project_value_buffer(v37, qword_280240FB0);
    sub_267B9B050(a4, v82);
    v38 = sub_267EF89F8();
    v39 = sub_267EF95C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v81 = v41;
      *v40 = 136446210;
      __swift_project_boxed_opaque_existential_0(v82, v83);
      swift_getDynamicType();
      v42 = sub_267EFA0E8();
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_0(v82);
      v45 = sub_267BA33E8(v42, v44, &v81);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_267B93000, v38, v39, "#RequestSupportCheckFlow request is not supported by %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x26D60A7B0](v41, -1, -1);
      MEMORY[0x26D60A7B0](v40, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v82);
    }

    sub_267B9B050(a4, v82);
    v56 = a1;
    v57 = sub_267EF89F8();
    v58 = sub_267EF95D8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v81 = v60;
      *v59 = 136315394;
      __swift_project_boxed_opaque_existential_0(v82, v83);
      swift_getDynamicType();
      v61 = sub_267EFA0E8();
      v63 = v62;
      __swift_destroy_boxed_opaque_existential_0(v82);
      v64 = sub_267BA33E8(v61, v63, &v81);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      v80 = a1;
      v65 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v66 = sub_267EF9098();
      v68 = sub_267BA33E8(v66, v67, &v81);

      *(v59 + 14) = v68;
      _os_log_impl(&dword_267B93000, v57, v58, "#RequestSupportCheckFlow request is not supported by %s: %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v60, -1, -1);
      MEMORY[0x26D60A7B0](v59, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v82);
    }

    v69 = a4[3];
    v70 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v69);
    v71 = swift_allocObject();
    v72 = v78;
    v73 = v79;
    v71[2] = a3;
    v71[3] = v72;
    v71[4] = v73;
    v74 = *(v70 + 16);

    v74(a1, sub_267E92638, v71, v69, v70);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v47 = sub_267EF8A08();
    __swift_project_value_buffer(v47, qword_280240FB0);
    sub_267B9B050(a4, v82);
    v48 = sub_267EF89F8();
    v49 = sub_267EF95C8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v81 = v51;
      *v50 = 136446210;
      __swift_project_boxed_opaque_existential_0(v82, v83);
      swift_getDynamicType();
      v52 = sub_267EFA0E8();
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_0(v82);
      v55 = sub_267BA33E8(v52, v54, &v81);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_267B93000, v48, v49, "#RequestSupportCheckFlow request is supported by %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x26D60A7B0](v51, -1, -1);
      MEMORY[0x26D60A7B0](v50, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v82);
    }

    return sub_267E9103C(a5, a6, v75, v76, v78, v79);
  }
}

void sub_267E91A60()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_267EF4028();
  OUTLINED_FUNCTION_23();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267BC9B04(v7, v37, &unk_28022A480, &unk_267F029F0);
  if (v38)
  {
    v16 = *&v37[0];
    v17 = *(v1 + 56);
    v18 = *(v1 + 64);
    *(v1 + 56) = *&v37[0];
    *(v1 + 64) = 1;
    v19 = v16;

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v20 = sub_267EF8A08();
    __swift_project_value_buffer(v20, qword_280240FB0);
    v21 = v16;
    v22 = sub_267EF89F8();
    v23 = sub_267EF95E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v5;
      v36[0] = v33;
      *v24 = 136315138;
      v35[0] = v16;
      v25 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v26 = sub_267EF9098();
      v28 = sub_267BA33E8(v26, v27, v36);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_267B93000, v22, v23, "#RequestSupportCheckFlow failed to make output: %s", v24, 0xCu);
      v29 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33);
      v5 = v34;
      MEMORY[0x26D60A7B0](v29, -1, -1);
      MEMORY[0x26D60A7B0](v24, -1, -1);
    }

    sub_267EF4018();
    v5(v15);

    (*(v10 + 8))(v15, v8);
  }

  else
  {
    sub_267B9A5E8(v37, v36);
    v30 = *(v1 + 40);
    v31 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), v30);
    (*(v31 + 32))(v35, v30, v31);
    __swift_project_boxed_opaque_existential_0(v35, v35[3]);
    v32 = swift_allocObject();
    v32[2] = v5;
    v32[3] = v3;
    v32[4] = v1;

    sub_267EF4168();

    __swift_destroy_boxed_opaque_existential_0(v36);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E91DC4(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = sub_267EF4028();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = *(a5 + 56);
    v15 = *(a5 + 64);
    *(a5 + 56) = a1;
    *(a5 + 64) = 1;
    v16 = a1;

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);
    v18 = a1;
    v19 = sub_267EF89F8();
    v20 = sub_267EF95E8();
    sub_267C16E28(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = a3;
      v32 = a1;
      v23 = v22;
      v33 = v22;
      *v21 = 136315138;
      v24 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v25 = sub_267EF9098();
      v27 = sub_267BA33E8(v25, v26, &v33);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_267B93000, v19, v20, "#RequestSupportCheckFlow publishUnsupportedOutput. Error publishing output for unsupported strategy: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v28 = v23;
      a3 = v31;
      MEMORY[0x26D60A7B0](v28, -1, -1);
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }
  }

  sub_267EF4018();
  a3(v13);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_267E92038()
{
  v1 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  v2 = *(v0 + 112);
}

uint64_t sub_267E92074()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  v2 = *(v0 + 112);

  return v0;
}

uint64_t sub_267E920B0()
{
  sub_267E92074();

  return swift_deallocClassInstance();
}

id sub_267E9213C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t sub_267E92154()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_24_39();
  OUTLINED_FUNCTION_23();
  v5 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12_2(v6);
  *v7 = v8;
  v7[1] = sub_267BBD07C;
  v9 = OUTLINED_FUNCTION_6_53();

  return sub_267E90E50(v9, v10, v5, v1, v2);
}

uint64_t sub_267E92250()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_24_39();
  OUTLINED_FUNCTION_23();
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_2(v5);
  *v6 = v7;
  v6[1] = sub_267BBD07C;
  v8 = OUTLINED_FUNCTION_6_53();

  return sub_267E90BB0(v8, v9, v10, v0, v1);
}

uint64_t sub_267E92348(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t objectdestroy_9Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267E923C4()
{
  OUTLINED_FUNCTION_24_39();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_2(v5);
  *v6 = v7;
  v6[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_6_53();
  OUTLINED_FUNCTION_13_48();

  return sub_267E905A4(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_267E92478(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BC4C88;

  return v7(a1);
}

uint64_t sub_267E92580(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_267E92638()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_267E91A60();
}

uint64_t sub_267E92664()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_12_47();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_75(v1);

  return v4(v3);
}

uint64_t sub_267E926F4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_267E927E8;

  return v6(v2 + 16);
}

uint64_t sub_267E927E8()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_267E9290C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_12_47();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_75(v1);

  return v4(v3);
}

id sub_267E9299C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_267E929F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_267E92A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200950]();
}

uint64_t sub_267E92A84(uint64_t a1, uint64_t a2)
{
  sub_267E98190(a2, *(*(a1 + 64) + 40));

  return MEMORY[0x282200950](a1);
}

uint64_t sub_267E92B30()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_267E92BE0;
  v2 = v0[3];
  v3 = v0[2];

  return sub_267E92E80();
}

uint64_t sub_267E92BE0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = *(v8 + 8);

    return v14(v3);
  }
}

uint64_t sub_267E92D04()
{
  OUTLINED_FUNCTION_62();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 40);
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_48();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#AFLocationService AFLocationServiceError %@", v8, 0xCu);
    sub_267B9FED8(v9, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_267E92E80()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v5 = v4;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_267E92FB0;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CDE0, &unk_267F0DF48);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_267E930E0;
  v1[13] = &block_descriptor_19;
  v1[14] = v6;
  [v0 currentLocationWithAccuracy:v1 + 10 timeout:v5 completion:v3];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_267E92FB0()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v4 = v2;
  v5 = *v0;
  *v4 = *v0;
  if (*(v3 + 48))
  {
    v6 = *(v3 + 48);
    swift_willThrow();
    OUTLINED_FUNCTION_36_4();

    return v7();
  }

  else
  {
    v9 = *(v2 + 144);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t *sub_267E930E0(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_267E929F8(v6, a3);
  }

  if (a2)
  {
    return sub_267E92ADC(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_267E9314C()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E93204()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  v6 = OUTLINED_FUNCTION_40_24();
  v7(v6);
  v8 = sub_267EF89F8();
  LOBYTE(v4) = sub_267EF95D8();
  v9 = os_log_type_enabled(v8, v4);
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_48();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_267EF4638();
    v16 = OUTLINED_FUNCTION_158();
    v17(v16);
    *(v13 + 4) = v15;
    *v14 = v15;
    OUTLINED_FUNCTION_53_19(&dword_267B93000, v18, v19, "#EditMessageHandleIntentFlowStrategy received success response: %@");
    sub_267B9FED8(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v20 = OUTLINED_FUNCTION_158();
    v21(v20);
  }

  __swift_project_boxed_opaque_existential_0((v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags), *(v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags + 24));
  if ((sub_267CC8B28() & 1) == 0)
  {
    goto LABEL_11;
  }

  v22 = v0[9];
  v23 = v22[6];
  __swift_project_boxed_opaque_existential_0(v22 + 2, v22[5]);
  v24 = OUTLINED_FUNCTION_13_49();
  v25(v24);
  v26 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_66();
  v27 = sub_267BF30D0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v27)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[13] = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_60_0(v28);
    OUTLINED_FUNCTION_122();

    return sub_267E9368C();
  }

  else
  {
LABEL_11:
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[14] = v32;
    *v32 = v33;
    OUTLINED_FUNCTION_60_0(v32);
    OUTLINED_FUNCTION_122();

    return sub_267E94374();
  }
}

uint64_t sub_267E93484()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v1 + 96);

  OUTLINED_FUNCTION_36_4();

  return v6();
}

uint64_t sub_267E93588()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = *(v1 + 96);

  OUTLINED_FUNCTION_36_4();

  return v6();
}

uint64_t sub_267E9368C()
{
  OUTLINED_FUNCTION_12();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = sub_267EF48A8();
  v1[24] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[25] = v5;
  v7 = *(v6 + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  v1[27] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[28] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267E93A04()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = v2[34];
  v6 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v7 = v6;
  *(v9 + 280) = v8;
  *(v9 + 288) = v0;

  v10 = v2[33];
  v11 = v2[32];
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E93B5C()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 240);
  v2 = *(v0 + 176);
  v3 = sub_267EF97C8();
  *(v0 + 296) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v4 = sub_267EF4668();
  v5 = sub_267E97F78(v4);
  if (v6)
  {
    v7 = MEMORY[0x277D837D0];
  }

  else
  {
    v5 = 0;
    v7 = 0;
    *(v0 + 152) = 0;
  }

  v8 = *(v0 + 184);
  OUTLINED_FUNCTION_49_24(v5, v6, v7);
  sub_267ECE290();
  sub_267B9FED8(v0 + 136, &qword_28022AEF0, &qword_267EFCDE0);
  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v9);
  (*(v10 + 8))(v9, v10);
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider), *(v8 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v11 = [v3 speakableGroupName];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 spokenPhrase];
    v14 = sub_267EF9028();
    v16 = v15;
  }

  else
  {
    v17 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v18 = sub_267EF3C48();
    v19 = sub_267BCEA0C(v3);
    if (v18)
    {
      v20 = sub_267DA2578(v19);
    }

    else
    {
      v22 = *(v0 + 248);
      sub_267DA2180();
    }

    v14 = v20;
    v16 = v21;
  }

  v23 = *(v0 + 280);
  v24 = *(v0 + 208);
  v25 = *(v0 + 184);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_267E95B64();
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  v26 = swift_allocObject();
  *(v0 + 304) = v26;
  v26[2] = v3;
  v26[3] = v25;
  v26[4] = v14;
  v26[5] = v16;
  v27 = v23;
  v28 = v3;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 312) = v29;
  *v29 = v30;
  v29[1] = sub_267E93E38;
  v31 = *(v0 + 208);
  v32 = *(v0 + 184);
  v33 = *(v0 + 168);

  return (sub_267ECCEF4)(v33, v23, v31, v0 + 96, &unk_267F0DF60, v26);
}

uint64_t sub_267E93E38()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = v5[39];
  v7 = v5[38];
  v8 = v5[35];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v3 + 320) = v0;

  sub_267B9FED8(v3 + 96, &qword_280229330, &qword_267F092F0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E93F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = v10[29];
  v12 = sub_267EF89F8();
  v13 = sub_267EF95D8();
  if (os_log_type_enabled(v12, v13))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v19 = v10[37];
  v20 = v10[35];
  v22 = v10[27];
  v21 = v10[28];
  v24 = v10[25];
  v23 = v10[26];
  v25 = v10[24];

  (*(v24 + 8))(v23, v25);
  sub_267B9FED8(v21, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_122();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_267E940A0()
{
  OUTLINED_FUNCTION_56();
  sub_267B9FED8(v0[28], &unk_28022AE30, &qword_267EFC0B0);
  v1 = v0[36];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E94130()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_26_0();
  v8(v7);
  sub_267B9FED8(v2, &unk_28022AE30, &qword_267EFC0B0);
  v9 = *(v0 + 320);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267E941F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_267E94220, 0, 0);
}

uint64_t sub_267E94220()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_267EF8178();
  v5[3] = v6;
  v5[4] = sub_267E98148(qword_280229338, MEMORY[0x277D5D3A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  v8 = v3 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext;
  v9 = *(v8 + *(type metadata accessor for TimedSentMessageContext(0) + 32));
  v10 = v4;
  v11 = v9;

  sub_267EF8468();
  v12 = *MEMORY[0x277D5D360];
  OUTLINED_FUNCTION_5_0(v6);
  (*(v13 + 104))(boxed_opaque_existential_0);
  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267E94374()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_267EF48A8();
  v1[25] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[26] = v5;
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  v1[28] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF79B8();
  v1[29] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[30] = v12;
  v14 = *(v13 + 64);
  v1[31] = OUTLINED_FUNCTION_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229228, &qword_267EFDD20);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  v1[32] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267E944B8()
{
  v1 = v0[23];
  v2 = v0[24] + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext;
  v3 = type metadata accessor for TimedSentMessageContext(0);
  v4 = *(v2 + v3[7]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v0[33] = v5;
  v43 = v5;
  v6 = sub_267EF4668();
  v7 = sub_267E97F78(v6);
  if (v8)
  {
    v9 = MEMORY[0x277D837D0];
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v0[19] = 0;
  }

  v10 = v0[32];
  v11 = v0[24];
  v41 = v0[23];
  v42 = v0[31];
  OUTLINED_FUNCTION_49_24(v7, v8, v9);
  sub_267ECE290();
  sub_267B9FED8((v0 + 17), &qword_28022AEF0, &qword_267EFCDE0);
  v12 = *(v11 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextProvider);
  v13 = *(v2 + v3[6]);
  v14 = *(v2 + v3[8]);
  v15 = *(v2 + v3[9]);

  v16 = v4;
  v17 = v14;

  sub_267EF2CB8();
  *(v10 + v3[5]) = 0x403E000000000000;
  *(v10 + v3[6]) = v13;
  *(v10 + v3[7]) = v16;
  *(v10 + v3[8]) = v17;
  *(v10 + v3[9]) = v15;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v3);
  sub_267C4CF24(v10);
  v21 = v11[5];
  v22 = v11[6];
  __swift_project_boxed_opaque_existential_0(v11 + 2, v21);
  (*(v22 + 8))(v21, v22);
  sub_267ED9AEC(v16, v15, (v0 + 2), v23, v24, v25, v26, v27, v41, v42, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v0[34] = v28;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267BA9F38(0, &qword_280229320, 0x277CD3D58);
  v29 = sub_267EF4668();
  v30 = sub_267EF4638();
  v31 = sub_267E9299C(v29, v30);
  v0[35] = v31;
  [v31 setIntentHandlingStatus_];
  v0[21] = v31;
  sub_267EF8348();
  v32 = v0[31];
  v33 = v0[28];
  v34 = type metadata accessor for EditMessageCATPatternsExecutor(0);
  v44 = *(v0 + 23);
  sub_267EF7B68();
  v35 = OUTLINED_FUNCTION_56_10();
  v0[10] = v34;
  v0[11] = &off_2878CF5F0;
  v0[7] = v35;
  v36 = __swift_project_boxed_opaque_existential_0(v0 + 7, v34);
  v37 = swift_task_alloc();
  v0[36] = v37;
  *(v37 + 16) = v44;
  *(v37 + 32) = v32;
  v38 = *v36;
  v39 = swift_task_alloc();
  v0[37] = v39;
  *v39 = v0;
  v39[1] = sub_267E94854;

  return sub_267C5AD60();
}

uint64_t sub_267E94854()
{
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = v2[37];
  v6 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v7 = v6;
  *(v9 + 304) = v8;
  *(v9 + 312) = v0;

  v10 = v2[36];
  v11 = v2[34];

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E94998()
{
  OUTLINED_FUNCTION_29();
  v37 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[38];
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  LOBYTE(v1) = sub_267EF95D8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[38];
    v6 = OUTLINED_FUNCTION_48();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136315138;
    v8 = [v5 patternId];
    v9 = sub_267EF9028();
    v11 = v10;

    v12 = sub_267BA33E8(v9, v11, &v36);

    *(v6 + 4) = v12;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v18 = v0[33];
  v19 = v0[27];
  v21 = v0[23];
  v20 = v0[24];
  v22 = sub_267EF4198();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v0[40] = sub_267EF4188();
  sub_267E95B64();
  v25 = sub_267EF4648();
  v0[41] = v25;
  v26 = v20[5];
  v27 = v20[6];
  __swift_project_boxed_opaque_existential_0(v20 + 2, v26);
  (*(v27 + 8))(v26, v27);
  v28 = v0[16];
  __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
  v29 = sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[42] = v30;
  *v30 = v31;
  v30[1] = sub_267E94CC4;
  v32 = v0[38];
  v33 = v0[27];
  v34 = v0[22];

  return sub_267BCF3A4(v34, v32, v33, v25, v29 & 1);
}

uint64_t sub_267E94C18()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  v7 = *(v0 + 312);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267E94CC4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 344) = v0;

  v9 = OUTLINED_FUNCTION_47_19();
  v10(v9);

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 96));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E94E0C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 304);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);

  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_26_0();
  v10(v9);

  OUTLINED_FUNCTION_1();

  return v11();
}

uint64_t sub_267E94EC4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 280);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_66();
  v7(v6);
  v8 = *(v0 + 344);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267E94F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[40] = a3;
  v4[41] = a4;
  v4[38] = a1;
  v4[39] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v6 = *(*(sub_267EF81B8() - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v7 = sub_267EF81D8();
  v4[44] = v7;
  v8 = *(v7 - 8);
  v4[45] = v8;
  v9 = *(v8 + 64) + 15;
  v4[46] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E95108, 0, 0);
}

uint64_t sub_267E95108()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  sub_267EF7958();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v4 = sub_267EF4648();
  v5 = sub_267E80518(v4);
  v6 = *v3;

  *v3 = v5;
  v7 = v2 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext;
  v8 = type metadata accessor for TimedSentMessageContext(0);
  v9 = *&v7[*(v8 + 28)];
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v11 = OUTLINED_FUNCTION_13_49();
  v12(v11);
  v70 = v8;
  v71 = v7;
  v13 = *&v7[*(v8 + 36)];
  v68 = v2;
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider), *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v14 = [v9 speakableGroupName];
  v69 = v9;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 spokenPhrase];
    sub_267EF9028();
  }

  else
  {
    v17 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v18 = sub_267EF3C48();
    v19 = sub_267BCEA0C(v9);
    if (v18)
    {
      sub_267DA2578(v19);
    }

    else
    {
      sub_267DA2180();
    }
  }

  v20 = v0[50];
  v21 = v0[51];
  v23 = v0[38];
  v22 = v0[39];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267EF90F8();

  v24 = sub_267EF79B8();
  v0[52] = v24;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  v28 = type metadata accessor for EditMessageMessageEditedParameters(0);
  v0[53] = v28;
  sub_267BD3DDC(v21, v23 + v28[8]);
  v29 = sub_267EF4668();
  sub_267EF4648();
  v30 = sub_267EF7C18();
  v32 = v31;

  if (v32)
  {
    v33 = v30;
  }

  else
  {
    v33 = 0;
  }

  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  v35 = sub_267DA133C(v29, v33, v34);

  v0[37] = v35;
  sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
  sub_267EF8348();
  v36 = v0[50];
  v66 = v0[44];
  v67 = v0[49];
  v64 = v0[43];
  v65 = v0[46];
  v37 = v0[41];
  v39 = v0[38];
  v38 = v0[39];

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v24);
  sub_267BD3DDC(v36, v39 + v28[11]);
  v43 = v28[10];
  sub_267B9FED8(v39 + v43, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_5_0(v24);
  (*(v44 + 16))(v39 + v43, v37, v24);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v24);
  v48 = sub_267EF4668();
  sub_267E97F78(v48);
  v49 = *&v71[*(v70 + 32)];
  sub_267EF4648();
  sub_267EF7C18();

  sub_267EF9778();

  sub_267EF81C8();
  sub_267EF8348();
  v0[54] = 0;
  v51 = v0[49];
  v52 = v0[38];
  (*(v0[45] + 8))(v0[46], v0[44]);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v24);
  sub_267BD3DDC(v51, v52 + v28[13]);
  v56 = [v69 attachments];
  if (v56)
  {
    v57 = v56;
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v0[55] = sub_267EF92F8();

    v58 = v68[6];
    __swift_project_boxed_opaque_existential_0(v68 + 2, v68[5]);
    v59 = *(v58 + 8);
    v60 = OUTLINED_FUNCTION_26_0();
    v61(v60);
    v0[56] = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
    v62 = swift_task_alloc();
    v0[57] = v62;
    *v62 = v0;
    v62[1] = sub_267E95734;

    return sub_267E92AFC();
  }

  else
  {
    OUTLINED_FUNCTION_51_19();

    OUTLINED_FUNCTION_1();

    return v63();
  }
}

uint64_t sub_267E95734()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 456);
  *v2 = *v0;
  *(v1 + 464) = v5;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E95824()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 464);
  v2 = *(v0 + 440);
  sub_267EF8458();

  if (*(v0 + 240))
  {
    v3 = *(v0 + 464);
    v4 = *(v0 + 336);
    sub_267BE58F4((v0 + 216), v0 + 176);
    sub_267B9AFEC(v0 + 176, v0 + 256);
    sub_267EF8328();

    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  }

  else
  {
    v5 = *(v0 + 336);

    sub_267B9FED8(v0 + 216, &qword_28022BB10, &qword_267EFDCF0);
    v6 = sub_267EF8338();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  }

  v7 = *(v0 + 336);
  v8 = sub_267EF8338();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  v10 = *(v0 + 448);
  if (EnumTagSinglePayload == 1)
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    sub_267B9FED8(v7, &unk_28022BB00, &unk_267EFCF90);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
LABEL_9:
    sub_267B9FED8(v0 + 96, &qword_28022BB10, &qword_267EFDCF0);
    goto LABEL_10;
  }

  sub_267EF8318();

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  OUTLINED_FUNCTION_5_0(v8);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_66();
  v14(v13);
  if (!*(v0 + 120))
  {
    goto LABEL_9;
  }

  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  v17 = *(v0 + 416);
  v18 = *(v0 + 376);
  v19 = *(v0 + 384);
  v20 = *(v0 + 304);
  sub_267BE58F4((v0 + 96), v0 + 56);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  swift_getDynamicType();
  v21 = *(*(v0 + 88) + 8);
  sub_267EF83B8();
  sub_267EF90F8();

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
  sub_267BD3DDC(v19, v20 + *(v16 + 28));
  v25 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  v26 = *(*(v25 + 8) + 8);
  sub_267EF8348();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    OUTLINED_FUNCTION_50_17();

    OUTLINED_FUNCTION_17();
    goto LABEL_11;
  }

  v29 = *(v0 + 416);
  v30 = *(v0 + 424);
  v31 = *(v0 + 376);
  v32 = *(v0 + 304);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_267BD3DDC(v31, v32 + *(v30 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
LABEL_10:
  OUTLINED_FUNCTION_51_19();

  OUTLINED_FUNCTION_1();
LABEL_11:

  return v27();
}

uint64_t sub_267E95B64()
{
  v1 = sub_267EF3CF8();
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_267EF3CE8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  (*(v6 + 8))(v8, v5, v6);
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_267E95C8C()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[25] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF4228();
  v1[27] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[28] = v11;
  v13 = *(v12 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v1[36] = v14;
  OUTLINED_FUNCTION_30_0(v14);
  v1[37] = v15;
  v17 = *(v16 + 64);
  v1[38] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267E95E2C()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[23];
  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  v6 = OUTLINED_FUNCTION_40_24();
  v7(v6);
  v8 = sub_267EF89F8();
  LOBYTE(v4) = sub_267EF95E8();
  v9 = os_log_type_enabled(v8, v4);
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[36];
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_48();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = sub_267EF4638();
    v16 = OUTLINED_FUNCTION_158();
    v17(v16);
    *(v13 + 4) = v15;
    *v14 = v15;
    OUTLINED_FUNCTION_53_19(&dword_267B93000, v18, v19, "#EditMessageHandleIntentFlowStrategy received failure response: %@");
    sub_267B9FED8(v14, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v20 = OUTLINED_FUNCTION_158();
    v21(v20);
  }

  v22 = v0[36];
  v23 = v0[23];
  v24 = sub_267EF4638();
  v25 = [v24 code];

  if (v25 == 9)
  {
    v26 = v0[26];
    type metadata accessor for EditMessageCATs();
    OUTLINED_FUNCTION_133();
    v0[39] = OUTLINED_FUNCTION_56_10();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[40] = v27;
    *v27 = v28;
    v27[1] = sub_267E963F4;
    v29 = v0[34];
    OUTLINED_FUNCTION_122();

    return sub_267D250F8();
  }

  else if (*MEMORY[0x277CD4438] == v25)
  {
    v32 = v0[26];
    v33 = v0[24];
    type metadata accessor for EditMessageCATs();
    OUTLINED_FUNCTION_133();
    v0[42] = OUTLINED_FUNCTION_56_10();
    v34 = [*(v33 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) recipients];
    if (v34)
    {
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v35 = sub_267EF92F8();

      sub_267BAF0DC(v35);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[43] = v36;
    *v36 = v37;
    v36[1] = sub_267E96654;
    v38 = v0[33];
    OUTLINED_FUNCTION_122();

    return sub_267D249F0(v39, v40);
  }

  else if (*MEMORY[0x277CD4448] == v25)
  {
    v42 = v0[26];
    type metadata accessor for EditMessageCATs();
    OUTLINED_FUNCTION_133();
    v0[45] = OUTLINED_FUNCTION_56_10();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[46] = v43;
    *v43 = v44;
    v43[1] = sub_267E968D0;
    v45 = v0[32];
    OUTLINED_FUNCTION_122();

    return sub_267D25048();
  }

  else if (*MEMORY[0x277CD4440] == v25)
  {
    v47 = v0[26];
    type metadata accessor for EditMessageCATs();
    OUTLINED_FUNCTION_133();
    v0[48] = OUTLINED_FUNCTION_56_10();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[49] = v48;
    *v48 = v49;
    v48[1] = sub_267E96B34;
    v50 = v0[31];
    OUTLINED_FUNCTION_122();

    return sub_267D24F98();
  }

  else if (v25 == 10)
  {
    v52 = v0[36];
    v53 = v0[26];
    v54 = v0[23];
    type metadata accessor for EditMessageCATs();
    sub_267EF7B68();
    v0[51] = sub_267EF78E8();
    type metadata accessor for MessagesApp(0);
    sub_267EF4648();
    v0[52] = sub_267EC814C();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[53] = v55;
    *v55 = v56;
    v55[1] = sub_267E96D98;
    v57 = v0[30];
    OUTLINED_FUNCTION_122();

    return sub_267D24C5C(v58, v59);
  }

  else
  {
    v61 = v0[24];
    v62 = v61[6];
    __swift_project_boxed_opaque_existential_0(v61 + 2, v61[5]);
    v63 = OUTLINED_FUNCTION_13_49();
    v64(v63);
    v65 = *(MEMORY[0x277D5BCD8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[55] = v66;
    *v66 = v67;
    v66[1] = sub_267E97004;
    v68 = v0[29];
    OUTLINED_FUNCTION_122();

    return MEMORY[0x2821BAEE0](v69, v70);
  }
}

uint64_t sub_267E963F4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 328) = v0;

  if (!v0)
  {
    v9 = *(v3 + 312);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E964F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v23 = v21[34];
  v22 = v21[35];
  OUTLINED_FUNCTION_37_16();
  v24();
  v25 = OUTLINED_FUNCTION_0_76();
  v26(v25);
  OUTLINED_FUNCTION_1_84();
  v27 = OUTLINED_FUNCTION_10_0();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_4_68();
  OUTLINED_FUNCTION_42_23(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82();
  sub_267B9FED8(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_11_50();
  v33(v32);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E96654()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *(v4 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 352) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E9676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v22 = v21[35];
  v23 = v21[33];
  OUTLINED_FUNCTION_37_16();
  v24();
  v25 = OUTLINED_FUNCTION_0_76();
  v26(v25);
  OUTLINED_FUNCTION_1_84();
  v27 = OUTLINED_FUNCTION_10_0();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_4_68();
  OUTLINED_FUNCTION_42_23(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82();
  sub_267B9FED8(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_11_50();
  v33(v32);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E968D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 376) = v0;

  if (!v0)
  {
    v9 = *(v3 + 360);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E969D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v22 = v21[35];
  v23 = v21[32];
  OUTLINED_FUNCTION_37_16();
  v24();
  v25 = OUTLINED_FUNCTION_0_76();
  v26(v25);
  OUTLINED_FUNCTION_1_84();
  v27 = OUTLINED_FUNCTION_10_0();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_4_68();
  OUTLINED_FUNCTION_42_23(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82();
  sub_267B9FED8(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_11_50();
  v33(v32);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E96B34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 400) = v0;

  if (!v0)
  {
    v9 = *(v3 + 384);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E96C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v22 = v21[35];
  v23 = v21[31];
  OUTLINED_FUNCTION_37_16();
  v24();
  v25 = OUTLINED_FUNCTION_0_76();
  v26(v25);
  OUTLINED_FUNCTION_1_84();
  v27 = OUTLINED_FUNCTION_10_0();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_4_68();
  OUTLINED_FUNCTION_42_23(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82();
  sub_267B9FED8(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_11_50();
  v33(v32);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E96D98()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[54] = v0;

  if (!v0)
  {
    v10 = v3[51];
    v9 = v3[52];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E96EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v22 = v21[35];
  v23 = v21[30];
  OUTLINED_FUNCTION_37_16();
  v24();
  v25 = OUTLINED_FUNCTION_0_76();
  v26(v25);
  OUTLINED_FUNCTION_1_84();
  v27 = OUTLINED_FUNCTION_10_0();
  v28(v27);
  v29 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v29);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v30 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v30);
  OUTLINED_FUNCTION_4_68();
  OUTLINED_FUNCTION_42_23(v31, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82();
  sub_267B9FED8(v29, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v32 = OUTLINED_FUNCTION_11_50();
  v33(v32);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v29, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E97004()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 448) = v0;

  sub_267B9FED8(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E97114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  (*(v21[28] + 32))(v21[35], v21[29], v21[27]);
  v22 = OUTLINED_FUNCTION_0_76();
  v23(v22);
  OUTLINED_FUNCTION_1_84();
  v24 = OUTLINED_FUNCTION_10_0();
  v25(v24);
  v26 = v21[15];
  __swift_project_boxed_opaque_existential_0(v21 + 12, v26);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v27 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v27);
  OUTLINED_FUNCTION_4_68();
  OUTLINED_FUNCTION_42_23(v28, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_3_82();
  sub_267B9FED8(v26, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v20, &unk_28022AE40, &unk_267EFCB60);
  v29 = OUTLINED_FUNCTION_11_50();
  v30(v29);
  OUTLINED_FUNCTION_34_30();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_46_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v26, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267E9727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 448);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267E97328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 312);

  v14 = *(v12 + 328);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_267E973DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 352);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267E97488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 360);

  v14 = *(v12 + 376);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_267E9753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 384);

  v14 = *(v12 + 400);
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_267E975F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v14 = v12[51];
  v13 = v12[52];

  v15 = v12[54];
  OUTLINED_FUNCTION_6_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_267E976AC()
{
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_editMessageState);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextProvider);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_commonTemplateProvider));
  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags));
}

uint64_t sub_267E97730()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_editMessageState);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextProvider);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_commonTemplateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35EditMessageHandleIntentFlowStrategy_featureFlags));
  return v0;
}

uint64_t sub_267E977C0()
{
  sub_267E97730();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditMessageHandleIntentFlowStrategy()
{
  result = qword_28022CDC8;
  if (!qword_28022CDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E9786C()
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267E97928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C68](a1, a2, v10, a4);
}

uint64_t sub_267E979F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C70](a1, a2, v10, a4);
}

uint64_t sub_267E97AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C48](a1, a2, v10, a4);
}

uint64_t sub_267E97B80()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267E9314C();
}

uint64_t sub_267E97C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C60](a1, a2, v10, a4);
}

uint64_t sub_267E97CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B3B8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C58](a1, a2, v10, a4);
}

uint64_t sub_267E97DBC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267E95C8C();
}

uint64_t sub_267E97E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5C0D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v10, a4);
}

uint64_t sub_267E97F78(void *a1)
{
  v2 = [a1 editedContent];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267E97FE8()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_267BAEBEC;
  v6 = OUTLINED_FUNCTION_26_0();

  return sub_267E94F78(v6, v7, v3, v4);
}

uint64_t sub_267E98090()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_267BAEBEC;

  return sub_267E941F8(v3, v4, v5, v7, v6);
}

uint64_t sub_267E98148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267E98190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E10, &unk_267F0DF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E98208(char a1)
{
  v2 = sub_267EF8E58();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_267EF8EA8();
  v10 = OUTLINED_FUNCTION_58(v21);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228810 != -1)
  {
    swift_once();
  }

  v20[1] = qword_28022CDF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  aBlock[4] = sub_267E98C34;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267C16DE4;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);
  sub_267EF8E78();
  v22 = MEMORY[0x277D84F90];
  sub_267C16E34(&qword_280229180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229188, qword_267F0DFB0);
  sub_267C16E7C(&qword_280229190, &qword_280229188, qword_267F0DFB0);
  sub_267EF99C8();
  MEMORY[0x26D609320](0, v16, v9, v18);
  _Block_release(v18);
  (*(v5 + 8))(v9, v2);
  (*(v12 + 8))(v16, v21);
}

uint64_t sub_267E984D8()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_267E98D60(v0);
  if (v2)
  {
    qword_28022CDE8 = result;
    unk_28022CDF0 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267E98524()
{
  v10 = sub_267EF9648();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_267EF9638();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_267EF8EA8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_267C10AB0();
  sub_267EF8E98();
  v11 = MEMORY[0x277D84F90];
  sub_267C16E34(&qword_280229040, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229048, &unk_267EFC400);
  sub_267C16E7C(&qword_280229050, &qword_280229048, &unk_267EFC400);
  sub_267EF99C8();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_267EF9668();
  qword_28022CDF8 = result;
  return result;
}

uint64_t sub_267E98774()
{
  v0 = sub_267EF8FF8();
  result = MGGetStringAnswer();
  if (result)
  {
    v2 = result;
    v3 = sub_267EF9028();
    v5 = v4;

    MEMORY[0x26D608E60](v3, v5);

    return 760434537;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_267E98814(char a1)
{
  v2 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v3 = [v2 Signals];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  v5 = "message-announced";
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0xD000000000000031;
    }

    else
    {
      v6 = 0xD000000000000025;
    }

    if (a1 == 1)
    {
      v7 = "essages.autosend-hint";
    }

    else
    {
      v7 = "on8@NSError16";
    }
  }

  else
  {
    v6 = 0xD000000000000028;
    v7 = "message-announced";
  }

  if (qword_280228808 != -1)
  {
    swift_once();
  }

  v8 = qword_28022CDE8;
  v9 = unk_28022CDF0;

  v10 = sub_267E98774();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CF1168]);
  v28 = sub_267E98C3C(v6, v7 | 0x8000000000000000, v8, v9, v10, v12, 0, 0xF000000000000000);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v14 = sub_267EF8A08();
  __swift_project_value_buffer(v14, qword_280240FB0);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v19 = 0xD000000000000031;
      }

      else
      {
        v19 = 0xD000000000000025;
      }

      if (a1 == 1)
      {
        v20 = "essages.autosend-hint";
      }

      else
      {
        v20 = "on8@NSError16";
      }
    }

    else
    {
      v19 = 0xD000000000000028;
      v20 = "message-announced";
    }

    v21 = sub_267BA33E8(v19, v20 | 0x8000000000000000, &v29);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_267B93000, v15, v16, "#TipKitEventDonator Donating event '%s' to BiomeStreams", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D60A7B0](v18, -1, -1);
    MEMORY[0x26D60A7B0](v17, -1, -1);
  }

  else
  {
  }

  [v4 sendEvent_];
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v26 = 0xD000000000000031;
      }

      else
      {
        v26 = 0xD000000000000025;
      }

      if (a1 == 1)
      {
        v5 = "essages.autosend-hint";
      }

      else
      {
        v5 = "on8@NSError16";
      }
    }

    else
    {
      v26 = 0xD000000000000028;
    }

    v27 = sub_267BA33E8(v26, v5 | 0x8000000000000000, &v29);

    *(v24 + 4) = v27;
    _os_log_impl(&dword_267B93000, v22, v23, "#TipKitEventDonator Donated event '%s'", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D60A7B0](v25, -1, -1);
    MEMORY[0x26D60A7B0](v24, -1, -1);
  }
}

id sub_267E98C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    v13 = sub_267EF8FF8();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_267EF8FF8();

  if (a6)
  {
LABEL_4:
    v15 = sub_267EF8FF8();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_267EF2BB8();
    sub_267BBE0C8(a7, a8);
  }

  v17 = [v8 initWithContentIdentifier:v13 context:v14 osBuild:v15 userInfo:v16];

  return v17;
}

uint64_t sub_267E98D60(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267E98DD0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_19_45(v2, v3, v4, v5, v6);
  v7 = sub_267EF4028();
  v1[4] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[5] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_69(v11);
  v12 = *(v0 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[7] = v13;
  *v13 = v14;
  v13[1] = sub_267E98ED4;
  OUTLINED_FUNCTION_18_39();

  return v15();
}

uint64_t sub_267E98ED4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E98FB8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_19_45(v2, v3, v4, v5, v6);
  v7 = sub_267EF6AC8();
  v1[4] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[5] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_69(v11);
  v12 = *(v0 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[7] = v13;
  *v13 = v14;
  v13[1] = sub_267E990BC;
  OUTLINED_FUNCTION_18_39();

  return v15();
}

uint64_t sub_267E990BC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E991A0()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E99230()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_69(v1, v2, v3, v4, v5, v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v9;
  *v9 = v10;
  v9[1] = sub_267E992E4;
  OUTLINED_FUNCTION_18_39();

  return v11();
}

uint64_t sub_267E992E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E993C8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);
  (*(v0 + 24))(v0 + 16);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E99430()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5_69(v1, v2, v3, v4, v5, v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v9;
  *v9 = v10;
  v9[1] = sub_267E994E4;
  OUTLINED_FUNCTION_18_39();

  return v11();
}

uint64_t sub_267E994E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E995C8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);
  (*(v0 + 24))(v0 + 16);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E99630()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v1[25] = v3;
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[26] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF83E8();
  v1[27] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[28] = v7;
  v9 = *(v8 + 64);
  v1[29] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF8178();
  v1[30] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[31] = v11;
  v13 = *(v12 + 64);
  v1[32] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64);
  v1[33] = OUTLINED_FUNCTION_2();
  v17 = sub_267EF2BA8();
  v1[34] = v17;
  OUTLINED_FUNCTION_30_0(v17);
  v1[35] = v18;
  v20 = *(v19 + 64);
  v1[36] = OUTLINED_FUNCTION_2();
  v21 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  v1[37] = OUTLINED_FUNCTION_2();
  v24 = sub_267EF48A8();
  v1[38] = v24;
  OUTLINED_FUNCTION_30_0(v24);
  v1[39] = v25;
  v27 = *(v26 + 64);
  v1[40] = OUTLINED_FUNCTION_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v28);
  v30 = *(v29 + 64);
  v1[41] = OUTLINED_FUNCTION_2();
  v31 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_267E99860()
{
  v11 = v0;
  v1 = v0[41];
  v2 = v0[24];
  v3 = v2[7];
  sub_267EF7AE8();
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v4);
  (*(v5 + 8))(v10, v4, v5);
  v6 = sub_267EF7118();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = sub_267DE77AC(v10, v1);
  v0[42] = v7;
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_267E9998C;

  return sub_267E00814(v7);
}

uint64_t sub_267E9998C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = v2[43];
  v9 = *v1;
  v3[44] = v5;
  v3[45] = v0;

  if (v0)
  {
    v6 = sub_267E9A554;
  }

  else
  {
    v7 = v3[42];

    v6 = sub_267E99AA0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267E99AA0()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#NoMeCardUnsupportedValueFlow publishing no meCard response", v4, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v5 = v0[44];
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[24];

  sub_267EF3C88();
  *(swift_task_alloc() + 16) = v5;
  sub_267EF47A8();

  v9 = v8[5];
  v10 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v9);
  (*(v10 + 8))(v9, v10);
  v11 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  v12 = sub_267DBF878();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v12)
  {
    v13 = v0[33];
    v14 = v0[34];
    sub_267EF2B88();
    result = __swift_getEnumTagSinglePayload(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v16 = v0[35];
      v17 = v0[36];
      v18 = v0[34];
      v19 = v0[31];
      v20 = v0[29];
      v48 = v0[30];
      v50 = v0[44];
      v22 = v0[27];
      v21 = v0[28];
      v23 = v0[26];
      v46 = v0[25];
      v47 = v0[32];
      v24 = v0[24];
      (*(v16 + 32))(v17, v0[33], v18);
      (*(v16 + 16))(v20, v17, v18);
      (*(v21 + 104))(v20, *MEMORY[0x277D5D6E0], v22);
      v25 = *(v24 + 64);
      sub_267C7FE68();
      sub_267EFA028();
      sub_267DF9A30(v23);
      sub_267EF83F8();
      (*(v19 + 104))(v47, *MEMORY[0x277D5D358], v48);
      v26 = sub_267EF4198();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v0[46] = sub_267EF4188();
      v0[20] = v48;
      v0[21] = sub_267DF9A98();
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      (*(v19 + 16))(boxed_opaque_existential_0, v47, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v30 = swift_allocObject();
      v0[47] = v30;
      *(v30 + 16) = xmmword_267EFCA40;
      *(v30 + 32) = v50;
      v31 = *(MEMORY[0x277D5BD40] + 4);
      v49 = (*MEMORY[0x277D5BD40] + MEMORY[0x277D5BD40]);
      v32 = v50;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[48] = v33;
      *v33 = v34;
      v33[1] = sub_267E99F98;
      v35 = v0[40];

      return v49(v0 + 2, v0 + 17, v30, v35);
    }
  }

  else
  {
    v36 = v0[44];
    v37 = sub_267EF4198();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v0[49] = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v40 = swift_allocObject();
    v0[50] = v40;
    *(v40 + 16) = xmmword_267EFCA40;
    *(v40 + 32) = v36;
    v41 = *(MEMORY[0x277D5BD50] + 4);
    v51 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
    v42 = v36;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[51] = v43;
    *v43 = v44;
    v43[1] = sub_267E9A1A4;
    v45 = v0[40];

    return v51(v0 + 2, v40, v45);
  }

  return result;
}

uint64_t sub_267E99F98()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = v1[48];
  v4 = v1[47];
  v5 = v1[46];
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0(v2 + 17);
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E9A0C4()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v4 = OUTLINED_FUNCTION_21_11();
  v5(v4);
  v6 = v0[24];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
  v8 = OUTLINED_FUNCTION_12_48();
  v9(v8);
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
  v11 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[52] = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_7_52(v12);

  return MEMORY[0x2821BB5D0](v14, v15, v16);
}

uint64_t sub_267E9A1A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1[51];
  v3 = v1[50];
  v4 = v1[49];
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E9A2C0()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[24];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = OUTLINED_FUNCTION_12_48();
  v4(v3);
  v5 = v0[16];
  __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
  v6 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[52] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_7_52(v7);

  return MEMORY[0x2821BB5D0](v9, v10, v11);
}

uint64_t sub_267E9A370()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 416);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 424) = v0;

  if (v0)
  {
    v7 = sub_267E9A740;
  }

  else
  {
    v7 = sub_267E9A474;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E9A474()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = OUTLINED_FUNCTION_21_11();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_8_56();

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267E9A554()
{
  v18 = v0;
  v1 = v0[42];

  v2 = v0[45];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = v2;
  v5 = sub_267EF89F8();
  v6 = sub_267EF95E8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[22] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v10 = sub_267EF9098();
    v12 = sub_267BA33E8(v10, v11, &v17);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v13, v14, "#NoMeCardUnsupportedValueFlow failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_8_56();

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267E9A740()
{
  v22 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = OUTLINED_FUNCTION_21_11();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v6 = *(v0 + 424);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = v6;
  v9 = sub_267EF89F8();
  v10 = sub_267EF95E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    *(v0 + 176) = v6;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v14 = sub_267EF9098();
    v16 = sub_267BA33E8(v14, v15, &v21);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v17, v18, "#NoMeCardUnsupportedValueFlow failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_8_56();

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267E9A954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = sub_267E9AA58();
  v12 = v11;
  v13 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = v10;
  v14[7] = v12;

  sub_267E8FA18();
}

uint64_t sub_267E9AA98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267E99630();
}

uint64_t sub_267E9AB70()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267E99630();
}

uint64_t sub_267E9AC28()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267E9AA98();
}

uint64_t sub_267E9AD00()
{
  v0 = sub_267EF9EE8();

  if (v0 >= 0x4A)
  {
    return 74;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267E9AD54()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 123) = v20;
  *(v1 + 64) = v19;
  *(v1 + 72) = v0;
  *(v1 + 122) = v18;
  *(v1 + 121) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 120) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_50();
  *(v1 + 88) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267E9AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v12 = swift_allocObject();
  *(v10 + 96) = v12;
  *(v12 + 16) = xmmword_267F0E130;
  *(v12 + 32) = 0x70756F7267;
  *(v12 + 40) = 0xE500000000000000;
  if (v11)
  {
    type metadata accessor for MessagesGroup(0);
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v13 = *(v10 + 24);
  *(v12 + 48) = v11;
  OUTLINED_FUNCTION_22_3();
  *(v12 + 72) = v14;
  *(v12 + 80) = v15;
  *(v12 + 88) = 0xE900000000000074;
  v16 = 0;
  if (v13)
  {
    v16 = sub_267EF77C8();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  v17 = *(v10 + 88);
  v18 = *(v10 + 32);
  *(v12 + 96) = v13;
  *(v12 + 120) = v16;
  *(v12 + 128) = 0x65736143657375;
  *(v12 + 136) = 0xE700000000000000;
  sub_267BB16A4(v18, v17, &unk_28022AE30, &qword_267EFC0B0);
  v19 = sub_267EF79B8();
  v20 = OUTLINED_FUNCTION_15_1(v19);
  v21 = *(v10 + 88);
  v22 = *(v10 + 16);
  v23 = *(v10 + 24);
  if (v20 == 1)
  {
    v24 = *(v10 + 24);

    sub_267B9FF34(v21, &unk_28022AE30, &qword_267EFC0B0);
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
  }

  else
  {
    *(v12 + 168) = v13;
    __swift_allocate_boxed_opaque_existential_0((v12 + 144));
    OUTLINED_FUNCTION_18_0();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_26_3();
    v27();
  }

  v28 = *(v10 + 40);
  *(v12 + 176) = 7368801;
  *(v12 + 184) = 0xE300000000000000;
  v29 = 0;
  if (v28)
  {
    v29 = sub_267EF7958();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  v30 = *(v10 + 80);
  v31 = *(v10 + 48);
  v32 = *(v10 + 120);
  *(v12 + 192) = v28;
  *(v12 + 216) = v29;
  *(v12 + 224) = 0xD000000000000016;
  *(v12 + 232) = 0x8000000267F150E0;
  v33 = MEMORY[0x277D839B0];
  *(v12 + 240) = v32;
  *(v12 + 264) = v33;
  *(v12 + 272) = 0xD000000000000011;
  *(v12 + 280) = 0x8000000267F150A0;
  sub_267BB16A4(v31, v30, &unk_28022AE30, &qword_267EFC0B0);
  v34 = OUTLINED_FUNCTION_23_11();
  v35 = *(v10 + 80);
  v36 = *(v10 + 40);
  if (v34 == 1)
  {
    v37 = *(v10 + 40);

    sub_267B9FF34(v35, &unk_28022AE30, &qword_267EFC0B0);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v13;
    __swift_allocate_boxed_opaque_existential_0((v12 + 288));
    OUTLINED_FUNCTION_18_0();
    v39 = *(v38 + 32);
    OUTLINED_FUNCTION_26_3();
    v40();
  }

  v41 = *(v10 + 122);
  v42 = *(v10 + 121);
  strcpy((v12 + 320), "showSeasDialog");
  *(v12 + 335) = -18;
  *(v12 + 336) = v42;
  OUTLINED_FUNCTION_202();
  *(v12 + 360) = v33;
  *(v12 + 368) = 0xD00000000000001ALL;
  *(v12 + 376) = v43;
  if (v44)
  {
    v45 = 0;
    v46 = 0;
    *(v12 + 392) = 0;
    *(v12 + 400) = 0;
  }

  else
  {
    v45 = *(v10 + 56);
    v46 = MEMORY[0x277D839F8];
  }

  v47 = *(v10 + 123);
  *(v12 + 384) = v45;
  *(v12 + 408) = v46;
  *(v12 + 416) = 0x6F43796669646F6DLL;
  *(v12 + 424) = 0xEB00000000746E75;
  if (v47)
  {
    v48 = 0;
    v49 = 0;
    *(v12 + 440) = 0;
    *(v12 + 448) = 0;
  }

  else
  {
    v48 = *(v10 + 64);
    v49 = MEMORY[0x277D839F8];
  }

  *(v12 + 432) = v48;
  *(v12 + 456) = v49;
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 104) = v50;
  *v50 = v51;
  v50[1] = sub_267E9B1F8;
  v52 = *(v10 + 72);
  OUTLINED_FUNCTION_68();

  return v56(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10);
}

uint64_t sub_267E9B1F8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[11];
    v12 = v3[12];
    v14 = v3[10];

    v15 = OUTLINED_FUNCTION_5_3();

    return v16(v15);
  }
}

uint64_t sub_267E9B334()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  OUTLINED_FUNCTION_17();
  v5 = v0[14];

  return v4();
}

uint64_t sub_267E9B3A4()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E9B428()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v0[5] = v3;
  *(v3 + 16) = xmmword_267EFC020;
  OUTLINED_FUNCTION_45_26();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_48_11(v4, v7, &unk_28022AE30, &qword_267EFC0B0);
  v8 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v8) == 1)
  {
    sub_267B9FF34(v0[4], &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_26_3();
    v11();
  }

  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_37_24(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_31_29(v13);
  v15 = OUTLINED_FUNCTION_41_20(27);

  return v16(v15);
}

uint64_t sub_267E9B57C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_5_3();

    return v15(v14);
  }
}

uint64_t sub_267E9B6AC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9B6C4()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = 0x8000000267F14EA0;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55C70];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_2_68(v3);
  *(v0 + 24) = v2;
  *(v2 + 16) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v5;
  *v5 = v6;
  v5[1] = sub_267D409A4;
  v7 = *(v0 + 16);

  return v9(0xD000000000000019, 0x8000000267F10300, v2);
}

uint64_t sub_267E9B7D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9B7EC()
{
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v4 = OUTLINED_FUNCTION_46_22(v3);
  OUTLINED_FUNCTION_16(v4, xmmword_267EFC020);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v1[6] = v2;
  v1[9] = v5;
  v8 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_33_23(v6);

  return (v8)(0xD000000000000016, 0x8000000267F10F70, v1);
}

uint64_t sub_267E9B900()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_208();

    return v14(v13);
  }
}

uint64_t sub_267E9BA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  OUTLINED_FUNCTION_12();
  *(v10 + 123) = a9;
  *(v10 + 122) = v11;
  *(v10 + 121) = v12;
  *(v10 + 120) = v13;
  *(v10 + 48) = v14;
  *(v10 + 56) = v9;
  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  *(v10 + 16) = v17;
  *(v10 + 24) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v19);
  v21 = *(v20 + 64);
  *(v10 + 64) = OUTLINED_FUNCTION_50();
  *(v10 + 72) = swift_task_alloc();
  *(v10 + 80) = swift_task_alloc();
  *(v10 + 88) = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_323(v22, v23, v24);
}

uint64_t sub_267E9BAE8()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v0 + 96) = v3;
  v4 = OUTLINED_FUNCTION_34_31(v3, xmmword_267EFFD10);
  OUTLINED_FUNCTION_48_11(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v6) == 1)
  {
    sub_267B9FF34(*(v0 + 88), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_18_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 24);
  OUTLINED_FUNCTION_14_45();
  *(v3 + 80) = v12;
  *(v3 + 88) = v13;
  sub_267BB16A4(v14, v10, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 80), &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    OUTLINED_FUNCTION_18_0();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_26_3();
    v17();
  }

  v18 = *(v0 + 72);
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_20();
  *(v3 + 128) = v21;
  *(v3 + 136) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 144) = v19;
  *(v3 + 168) = v23;
  strcpy((v3 + 176), "attachmentType");
  *(v3 + 191) = -18;
  sub_267BB16A4(v20, v18, &unk_28022AE30, &qword_267EFC0B0);
  v24 = OUTLINED_FUNCTION_23_11();
  v25 = *(v0 + 72);
  v26 = *(v0 + 32);
  if (v24 == 1)
  {
    v27 = *(v0 + 32);

    sub_267B9FF34(v25, &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
  }

  else
  {
    *(v3 + 216) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 192));
    OUTLINED_FUNCTION_18_0();
    v29 = *(v28 + 32);
    OUTLINED_FUNCTION_26_3();
    v30();
  }

  v31 = *(v0 + 64);
  v32 = *(v0 + 48);
  OUTLINED_FUNCTION_45_26();
  *(v3 + 224) = v33;
  *(v3 + 232) = v34;
  sub_267BB16A4(v35, v31, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 64), &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
  }

  else
  {
    *(v3 + 264) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 240));
    OUTLINED_FUNCTION_18_0();
    v37 = *(v36 + 32);
    OUTLINED_FUNCTION_26_3();
    v38();
  }

  v39 = *(v0 + 124);
  v40 = *(v0 + 123);
  v41 = *(v0 + 122);
  v42 = *(v0 + 121);
  v43 = *(v0 + 120);
  *(v3 + 272) = 0x7765697665527369;
  *(v3 + 280) = 0xE800000000000000;
  *(v3 + 288) = v43;
  OUTLINED_FUNCTION_52_17();
  *(v3 + 312) = v44;
  *(v3 + 320) = v45;
  OUTLINED_FUNCTION_51_20();
  *(v3 + 328) = v46;
  *(v3 + 336) = v47;
  *(v3 + 360) = v48;
  *(v3 + 368) = 0xD000000000000018;
  *(v3 + 376) = 0x8000000267F14FD0;
  *(v3 + 384) = v49;
  *(v3 + 408) = v48;
  *(v3 + 416) = 0xD00000000000001BLL;
  *(v3 + 424) = 0x8000000267F14FB0;
  *(v3 + 432) = v50;
  OUTLINED_FUNCTION_202();
  *(v3 + 456) = v51;
  *(v3 + 464) = 0xD000000000000021;
  *(v3 + 472) = v52;
  *(v3 + 504) = v51;
  v53 = *(MEMORY[0x277D55C70] + 4);
  v60 = *MEMORY[0x277D55C70] + MEMORY[0x277D55C70];
  *(v3 + 480) = v54;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 104) = v55;
  *v55 = v56;
  v55[1] = sub_267E9BF08;
  v57 = *(v0 + 56);
  OUTLINED_FUNCTION_30_36();

  return v58();
}

uint64_t sub_267E9BF08()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[11];
    v12 = v3[12];
    v15 = v3[9];
    v14 = v3[10];
    v16 = v3[8];

    v17 = OUTLINED_FUNCTION_5_3();

    return v18(v17);
  }
}

uint64_t sub_267E9C064()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  OUTLINED_FUNCTION_17();
  v7 = v0[14];

  return v6();
}

uint64_t sub_267E9C0F0()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 77) = v3;
  *(v1 + 76) = v4;
  *(v1 + 75) = v5;
  *(v1 + 74) = v6;
  *(v1 + 73) = v7;
  *(v1 + 72) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267E9C190()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_267F02660;
  OUTLINED_FUNCTION_14_45();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_48_11(v4, v7, &unk_28022AE30, &qword_267EFC0B0);
  v8 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v8) == 1)
  {
    sub_267B9FF34(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_26_3();
    v11();
  }

  v12 = *(v0 + 77);
  v13 = *(v0 + 76);
  v14 = *(v0 + 75);
  v15 = *(v0 + 74);
  v16 = *(v0 + 73);
  v17 = *(v0 + 72);
  v18 = *(v0 + 24);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_20();
  *(v3 + 80) = v19;
  *(v3 + 88) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v18;
  *(v3 + 120) = v21;
  *(v3 + 128) = 0xD000000000000016;
  *(v3 + 136) = 0x8000000267F15050;
  v22 = MEMORY[0x277D839B0];
  *(v3 + 144) = v17;
  *(v3 + 168) = v22;
  strcpy((v3 + 176), "shouldAutoSend");
  *(v3 + 191) = -18;
  *(v3 + 192) = v16;
  OUTLINED_FUNCTION_202();
  *(v3 + 216) = v23;
  *(v3 + 224) = 0xD00000000000001BLL;
  *(v3 + 232) = v24;
  *(v3 + 240) = v15;
  OUTLINED_FUNCTION_202();
  *(v3 + 264) = v25;
  *(v3 + 272) = 0xD000000000000021;
  *(v3 + 280) = v26;
  *(v3 + 288) = v14;
  *(v3 + 312) = v25;
  *(v3 + 320) = 0x646E657070417369;
  *(v3 + 328) = 0xE800000000000000;
  *(v3 + 336) = v13;
  *(v3 + 360) = v25;
  *(v3 + 368) = 0x7765697665527369;
  *(v3 + 376) = 0xE800000000000000;
  *(v3 + 408) = v25;
  v30 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);
  *(v3 + 384) = v12;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_58_17(v27);

  return (v30)(0xD00000000000001FLL, 0x8000000267F10350, v3);
}

uint64_t sub_267E9C43C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = OUTLINED_FUNCTION_5_3();

    return v15(v14);
  }
}

uint64_t sub_267E9C56C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 90) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_50();
  *(v1 + 56) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E9C60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 56);
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v13 = swift_allocObject();
  *(v10 + 64) = v13;
  v14 = OUTLINED_FUNCTION_43_24(v13, xmmword_267F00200);
  v14[2].n128_u64[0] = v15;
  v14[2].n128_u64[1] = 0xEB00000000657079;
  OUTLINED_FUNCTION_48_11(v14, v16, &unk_28022AE30, &qword_267EFC0B0);
  v17 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v17) == 1)
  {
    sub_267B9FF34(*(v10 + 56), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_18_0();
    v19 = *(v18 + 32);
    OUTLINED_FUNCTION_26_3();
    v20();
  }

  v21 = *(v10 + 24);
  OUTLINED_FUNCTION_22_3();
  *(v13 + 80) = v22;
  *(v13 + 88) = 0xE900000000000074;
  v23 = 0;
  if (v21)
  {
    v23 = sub_267EF77C8();
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  v24 = *(v10 + 48);
  v25 = *(v10 + 32);
  v26 = *(v10 + 90);
  v27 = *(v10 + 89);
  v28 = *(v10 + 88);
  *(v13 + 96) = v21;
  *(v13 + 120) = v23;
  *(v13 + 128) = 0xD000000000000011;
  v29 = MEMORY[0x277D839B0];
  *(v13 + 136) = 0x8000000267F1CC30;
  *(v13 + 144) = v28;
  *(v13 + 168) = v29;
  strcpy((v13 + 176), "shouldBeSilent");
  *(v13 + 191) = -18;
  *(v13 + 192) = v27;
  *(v13 + 216) = v29;
  *(v13 + 224) = 0x70756F72477369;
  *(v13 + 232) = 0xE700000000000000;
  *(v13 + 240) = v26;
  *(v13 + 264) = v29;
  *(v13 + 272) = 0x546567617373656DLL;
  *(v13 + 280) = 0xEB00000000657079;
  sub_267BB16A4(v25, v24, &unk_28022AE30, &qword_267EFC0B0);
  v30 = OUTLINED_FUNCTION_23_11();
  v31 = *(v10 + 48);
  v32 = *(v10 + 24);
  if (v30 == 1)
  {
    v33 = *(v10 + 24);

    sub_267B9FF34(v31, &unk_28022AE30, &qword_267EFC0B0);
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
  }

  else
  {
    *(v13 + 312) = v12;
    __swift_allocate_boxed_opaque_existential_0((v13 + 288));
    OUTLINED_FUNCTION_18_0();
    v35 = *(v34 + 32);
    OUTLINED_FUNCTION_26_3();
    v36();
  }

  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 72) = v37;
  *v37 = v38;
  v37[1] = sub_267E9C8E4;
  v39 = *(v10 + 40);
  OUTLINED_FUNCTION_68();

  return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_267E9C8E4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    v15 = OUTLINED_FUNCTION_5_3();

    return v16(v15);
  }
}

uint64_t sub_267E9CA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_12();
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  *(v15 + 105) = a14;
  *(v15 + 104) = a13;
  *(v15 + 103) = a12;
  *(v15 + 102) = a11;
  *(v15 + 101) = a10;
  *(v15 + 100) = a9;
  *(v15 + 99) = v17;
  *(v15 + 98) = v18;
  *(v15 + 97) = v19;
  *(v15 + 96) = v20;
  *(v15 + 24) = v21;
  *(v15 + 32) = v22;
  *(v15 + 16) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v24);
  v26 = *(v25 + 64);
  *(v15 + 56) = OUTLINED_FUNCTION_50();
  *(v15 + 64) = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_323(v27, v28, v29);
}

uint64_t sub_267E9CAEC()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  v4 = OUTLINED_FUNCTION_34_31(v3, xmmword_267F016D0);
  OUTLINED_FUNCTION_48_11(v4, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v6) == 1)
  {
    sub_267B9FF34(*(v0 + 64), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_18_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_26_3();
    v9();
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 24);
  OUTLINED_FUNCTION_14_45();
  *(v3 + 80) = v12;
  *(v3 + 88) = v13;
  sub_267BB16A4(v14, v10, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 56), &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    OUTLINED_FUNCTION_18_0();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_26_3();
    v17();
  }

  v19 = *(v0 + 32);
  v18 = *(v0 + 40);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_20();
  *(v3 + 128) = v20;
  *(v3 + 136) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 144) = v19;
  *(v3 + 168) = v22;
  *(v3 + 176) = 7368801;
  *(v3 + 184) = 0xE300000000000000;
  v23 = 0;
  if (v18)
  {
    v23 = sub_267EF7958();
  }

  else
  {
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  v24 = *(v0 + 105);
  v25 = *(v0 + 104);
  v26 = *(v0 + 103);
  v27 = *(v0 + 102);
  v28 = *(v0 + 101);
  v29 = *(v0 + 100);
  v30 = *(v0 + 99);
  v31 = *(v0 + 98);
  v32 = *(v0 + 97);
  v33 = *(v0 + 96);
  *(v3 + 192) = v18;
  *(v3 + 216) = v23;
  *(v3 + 224) = 0xD000000000000016;
  *(v3 + 232) = 0x8000000267F15050;
  v34 = MEMORY[0x277D839B0];
  *(v3 + 240) = v33;
  *(v3 + 264) = v34;
  *(v3 + 272) = 0x646E65536F747561;
  *(v3 + 280) = 0xEF64656C62616E45;
  *(v3 + 288) = v32;
  *(v3 + 312) = v34;
  *(v3 + 320) = 0xD000000000000018;
  *(v3 + 328) = 0x8000000267F14FD0;
  *(v3 + 336) = v31;
  *(v3 + 360) = v34;
  *(v3 + 368) = 0xD00000000000001BLL;
  *(v3 + 376) = 0x8000000267F14FB0;
  *(v3 + 384) = v30;
  *(v3 + 408) = v34;
  *(v3 + 416) = 0xD000000000000021;
  *(v3 + 424) = 0x8000000267F15020;
  *(v3 + 432) = v29;
  *(v3 + 456) = v34;
  *(v3 + 464) = 0x7765697665527369;
  *(v3 + 472) = 0xE800000000000000;
  *(v3 + 480) = v28;
  OUTLINED_FUNCTION_52_17();
  *(v3 + 504) = v35;
  *(v3 + 512) = v36;
  OUTLINED_FUNCTION_51_20();
  *(v3 + 520) = v37;
  *(v3 + 552) = v38;
  *(v3 + 528) = v39;
  strcpy((v3 + 560), "showSeasDialog");
  *(v3 + 575) = -18;
  *(v3 + 600) = v38;
  *(v3 + 576) = v40;
  *(v3 + 608) = 0xD000000000000020;
  *(v3 + 616) = 0x8000000267F14FF0;
  *(v3 + 648) = v38;
  *(v3 + 624) = v41;
  *(v3 + 656) = 0xD000000000000011;
  *(v3 + 664) = 0x8000000267F13240;
  *(v3 + 696) = v38;
  v42 = *(MEMORY[0x277D55C70] + 4);
  v49 = *MEMORY[0x277D55C70] + MEMORY[0x277D55C70];
  *(v3 + 672) = v43;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 80) = v44;
  *v44 = v45;
  v44[1] = sub_267E9CEEC;
  v46 = *(v0 + 48);
  OUTLINED_FUNCTION_30_36();

  return v47();
}

uint64_t sub_267E9CEEC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v14 = v3[7];

    v15 = OUTLINED_FUNCTION_5_3();

    return v16(v15);
  }
}

uint64_t sub_267E9D028()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  OUTLINED_FUNCTION_17();
  v5 = v0[11];

  return v4();
}

uint64_t sub_267E9D098()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267E9EDF0;
  OUTLINED_FUNCTION_35_29();
  v3 = OUTLINED_FUNCTION_53_20(27);

  return v4(v3);
}

uint64_t sub_267E9D140(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D15C()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v1 + 40) = v3;
  OUTLINED_FUNCTION_16(v3, xmmword_267EFCE30);
  if (v2)
  {
    v4 = type metadata accessor for MessagesApp(0);
    v5 = v2;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_40_25();
  }

  OUTLINED_FUNCTION_8_57(v4, v5);
  if (v0)
  {
    sub_267EF7AE8();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v6 = *(v1 + 64);
  v3[6].n128_u64[0] = v0;
  OUTLINED_FUNCTION_202();
  v3[8].n128_u64[1] = v7;
  v3[10].n128_u64[1] = MEMORY[0x277D839B0];
  v3[9].n128_u8[0] = v8;
  v9 = *MEMORY[0x277D55C70];
  v10 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_48_27(v11);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 48) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_58_17(v12);
  OUTLINED_FUNCTION_30_36();

  return v14();
}

uint64_t sub_267E9D2B4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_208();

    return v14(v13);
  }
}

uint64_t sub_267E9D3DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D3F8()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v1 + 40) = v3;
  OUTLINED_FUNCTION_16(v3, xmmword_267EFCE30);
  if (v2)
  {
    v4 = type metadata accessor for MessagesApp(0);
    v5 = v2;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_40_25();
  }

  OUTLINED_FUNCTION_8_57(v4, v5);
  if (v0)
  {
    sub_267EF7AE8();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v6 = *(v1 + 64);
  v3[6].n128_u64[0] = v0;
  OUTLINED_FUNCTION_202();
  v3[8].n128_u64[1] = v7;
  v3[10].n128_u64[1] = MEMORY[0x277D839B0];
  v3[9].n128_u8[0] = v8;
  v9 = *MEMORY[0x277D55C70];
  v10 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_48_27(v11);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 48) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_58_17(v12);
  OUTLINED_FUNCTION_30_36();

  return v14();
}

uint64_t sub_267E9D550(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = *(v9 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v12 = swift_allocObject();
  *(OUTLINED_FUNCTION_46_22(v12) + 16) = xmmword_267EFCC90;
  OUTLINED_FUNCTION_12_49();
  *(v13 + 32) = v14;
  *(v13 + 40) = 0xEB00000000657461;
  if (v11)
  {
    sub_267EF7AE8();
  }

  else
  {
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  v15 = *(v9 + 56);
  *(v10 + 48) = v11;
  OUTLINED_FUNCTION_202();
  *(v10 + 88) = v16;
  *(v10 + 120) = MEMORY[0x277D839B0];
  *(v10 + 96) = v17;
  v18 = *MEMORY[0x277D55C70];
  v19 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_21_35();
  v33 = v20;
  *(v10 + 72) = v21;
  *(v10 + 80) = 0xD000000000000012;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v9 + 40) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_33_23(v22);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_68();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_267E9D6B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v12 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v13 = swift_allocObject();
  *(v11 + 40) = v13;
  OUTLINED_FUNCTION_16(v13, xmmword_267EFCC90);
  if (v12)
  {
    v14 = type metadata accessor for MessagesApp(0);
    v15 = v12;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_40_25();
  }

  v16 = OUTLINED_FUNCTION_8_57(v14, v15);
  if (v10)
  {
    v16 = sub_267EF7AE8();
  }

  else
  {
    v13[6].n128_u64[1] = 0;
    v13[7].n128_u64[0] = 0;
  }

  v13[6].n128_u64[0] = v10;
  v13[7].n128_u64[1] = v16;
  v17 = *(MEMORY[0x277D55C70] + 4);
  v18 = *MEMORY[0x277D55C70];
  OUTLINED_FUNCTION_62_14();

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_37_24(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_58_17(v20);
  OUTLINED_FUNCTION_68();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_267E9D7FC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_208();

    return v14(v13);
  }
}

uint64_t sub_267E9D924(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D93C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 0xD000000000000019;
  *(v2 + 40) = 0x8000000267F14F90;
  *(v2 + 72) = MEMORY[0x277D839B0];
  *(v2 + 48) = v1;
  v4 = *MEMORY[0x277D55C70];
  v3 = *(MEMORY[0x277D55C70] + 4);
  OUTLINED_FUNCTION_21_35();
  v8 = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_108_0(v6);

  return v8(0xD000000000000014);
}

uint64_t sub_267E9DA50(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9DA68()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1();
  strcpy((v2 + 32), "shouldBeSilent");
  *(v2 + 47) = -18;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55C70];
  *(v2 + 48) = v1;
  v5 = *v3;
  v4 = v3[1];
  OUTLINED_FUNCTION_21_35();
  v10 = v6;
  *(v0 + 24) = v2;
  *(v2 + 16) = v7;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_108_0(v8);

  return v10(0xD000000000000020);
}

uint64_t sub_267E9DB80()
{
  OUTLINED_FUNCTION_12();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_50();
  v1[8] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E9DC18()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[8];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v0[9] = v3;
  *(v3 + 16) = xmmword_267F01440;
  *(v3 + 32) = 0x746E65746E6F63;
  *(v3 + 40) = 0xE700000000000000;
  OUTLINED_FUNCTION_48_11(v3, v4, &unk_28022AE30, &qword_267EFC0B0);
  v5 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v5) == 1)
  {
    sub_267B9FF34(v0[8], &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_18_0();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_26_3();
    v8();
  }

  v9 = v0[7];
  v10 = v0[3];
  v11 = v0[4];
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_20();
  *(v3 + 80) = v12;
  *(v3 + 88) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v10;
  *(v3 + 120) = v14;
  *(v3 + 128) = 0x6D614E70756F7267;
  *(v3 + 136) = 0xE900000000000065;
  sub_267BB16A4(v11, v9, &unk_28022AE30, &qword_267EFC0B0);
  v15 = OUTLINED_FUNCTION_23_11();
  v16 = v0[7];
  v17 = v0[3];
  if (v15 == 1)
  {
    v18 = v0[3];

    sub_267B9FF34(v16, &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    OUTLINED_FUNCTION_18_0();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_26_3();
    v21();
  }

  v22 = v0[5];
  OUTLINED_FUNCTION_12_49();
  *(v3 + 176) = v23;
  *(v3 + 184) = 0xEB00000000657461;
  v24 = 0;
  if (v22)
  {
    v24 = sub_267EF7AE8();
  }

  else
  {
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  *(v3 + 192) = v22;
  *(v3 + 216) = v24;
  v28 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);

  v25 = swift_task_alloc();
  v0[10] = v25;
  *v25 = v0;
  v25[1] = sub_267E9DEC4;
  v26 = v0[6];

  return (v28)(0xD00000000000002ALL, 0x8000000267F11400, v3);
}

uint64_t sub_267E9DEC4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v14 = v3[7];

    v15 = OUTLINED_FUNCTION_5_3();

    return v16(v15);
  }
}

uint64_t sub_267E9E000(char a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 59) = a5;
  *(v6 + 58) = a4;
  *(v6 + 16) = a3;
  *(v6 + 24) = v5;
  *(v6 + 57) = a2;
  *(v6 + 56) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9E024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v12 = *(v10 + 16);
  v13 = *(v10 + 57);
  v14 = *(v10 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_46_22(v15);
  v17 = OUTLINED_FUNCTION_25_41(v16, xmmword_267EFCDC0);
  OUTLINED_FUNCTION_23_31(v17);
  if (v12)
  {
    sub_267EF7958();
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  v18 = *(v10 + 59);
  v19 = *(v10 + 58);
  v11[18] = v12;
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_57_18(v20);
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_36_26(v21);
  OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_62_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_33_23(v22);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_68();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_267E9E148()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_208();

    return v14(v13);
  }
}

uint64_t sub_267E9E270(char a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 57) = a3;
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9E290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v12 = *(v10 + 16);
  v13 = *(v10 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_46_22(v14);
  *(v15 + 16) = xmmword_267F01440;
  *(v15 + 32) = 0x656E696C66666FLL;
  *(v15 + 40) = 0xE700000000000000;
  v16 = MEMORY[0x277D839B0];
  *(v15 + 48) = v13;
  *(v15 + 72) = v16;
  *(v15 + 80) = 7368801;
  *(v15 + 88) = 0xE300000000000000;
  if (v12)
  {
    sub_267EF7958();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  v17 = *(v10 + 58);
  v18 = *(v10 + 57);
  *(v11 + 96) = v12;
  OUTLINED_FUNCTION_22_35();
  *(v11 + 120) = v19;
  *(v11 + 128) = v20;
  *(v11 + 136) = 0xE800000000000000;
  *(v11 + 144) = v21;
  OUTLINED_FUNCTION_202();
  *(v11 + 168) = v16;
  *(v11 + 176) = 0xD000000000000013;
  *(v11 + 184) = v22;
  *(v11 + 216) = v16;
  *(v11 + 192) = v23;
  OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_62_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_33_23(v24);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_68();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_267E9E400()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267C97964;
  OUTLINED_FUNCTION_35_29();
  v3 = OUTLINED_FUNCTION_53_20(39);

  return v4(v3);
}

uint64_t sub_267E9E4A8(char a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 59) = a5;
  *(v6 + 58) = a4;
  *(v6 + 16) = a3;
  *(v6 + 24) = v5;
  *(v6 + 57) = a2;
  *(v6 + 56) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v12 = *(v10 + 16);
  v13 = *(v10 + 57);
  v14 = *(v10 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_46_22(v15);
  v17 = OUTLINED_FUNCTION_25_41(v16, xmmword_267EFCDC0);
  OUTLINED_FUNCTION_23_31(v17);
  if (v12)
  {
    sub_267EF7958();
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  v18 = *(v10 + 59);
  v19 = *(v10 + 58);
  v11[18] = v12;
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_57_18(v20);
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_36_26(v21);
  OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_62_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_33_23(v22);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_68();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_267E9E5F0()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E9E674()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1();
  v0[5] = v3;
  *(v3 + 16) = xmmword_267EFC020;
  *(v3 + 32) = 0x79726F6765746163;
  *(v3 + 40) = 0xE800000000000000;
  OUTLINED_FUNCTION_48_11(v3, v4, &unk_28022AE30, &qword_267EFC0B0);
  v5 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v5) == 1)
  {
    sub_267B9FF34(v0[4], &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_26_3();
    v8();
  }

  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_37_24(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_31_29(v10);
  v12 = OUTLINED_FUNCTION_41_20(38);

  return v13(v12);
}

uint64_t sub_267E9E7D8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267E9EDF0;
  OUTLINED_FUNCTION_35_29();
  v3 = OUTLINED_FUNCTION_53_20(41);

  return v4(v3);
}

uint64_t sub_267E9E880()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E9E908()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  v4 = OUTLINED_FUNCTION_43_24(v3, xmmword_267EFCC90);
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = 0xEB00000000657079;
  OUTLINED_FUNCTION_48_11(v4, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v7) == 1)
  {
    sub_267B9FF34(*(v0 + 32), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_26_3();
    v10();
  }

  v11 = *(v0 + 64);
  strcpy(&v3[5], "shouldBeSilent");
  v3[5].n128_u8[15] = -18;
  v3[7].n128_u64[1] = MEMORY[0x277D839B0];
  v3[6].n128_u8[0] = v11;
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_37_24(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_31_29(v13);
  v15 = OUTLINED_FUNCTION_41_20(26);

  return v16(v15);
}

uint64_t sub_267E9EAA4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_5_3();

    return v15(v14);
  }
}

uint64_t sub_267E9EBD4()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_17();
  v4 = v0[7];

  return v3();
}

uint64_t sub_267E9EC38()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267E9EDF0;
  OUTLINED_FUNCTION_35_29();
  v3 = OUTLINED_FUNCTION_53_20(32);

  return v4(v3);
}

uint64_t sub_267E9ECE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF7B88();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_267EF79D8();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_267E9EDF4@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v4 = sub_267EF8228();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v72 = (v10 - v11);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v73 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v74 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  v21 = sub_267EF8218();
  v23 = v22;
  v24 = *MEMORY[0x277D5D490];
  v25 = *(v7 + 104);
  v26 = OUTLINED_FUNCTION_14_46();
  v75 = v27;
  v27(v26);
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  v28 = OUTLINED_FUNCTION_25_42();
  v29(v28);
  if (v1 == v21 && v20 == v23)
  {

LABEL_8:

    v31 = MEMORY[0x277D5D3C8];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  v43 = *MEMORY[0x277D5D498];
  OUTLINED_FUNCTION_13_50();
  v44();
  v45 = v3;
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  v46 = v3;
  v47 = v20;
  (v20)(v46, v4);
  if (v1 == v21 && v45 == v23)
  {

LABEL_18:

    v31 = MEMORY[0x277D5D3D0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_18;
  }

  v49 = *MEMORY[0x277D5D4A0];
  OUTLINED_FUNCTION_13_50();
  v50();
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  (v20)(v2, v4);
  if (v1 == v21 && v2 == v23)
  {

LABEL_26:

    v31 = MEMORY[0x277D5D3A8];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_26;
  }

  v52 = *MEMORY[0x277D5D470];
  v53 = v74;
  v54 = OUTLINED_FUNCTION_14_46();
  v55(v54);
  sub_267EF8218();
  v56 = OUTLINED_FUNCTION_2_69();
  (v47)(v56);
  if (v1 == v21 && v53 == v23)
  {

LABEL_34:

    v31 = MEMORY[0x277D5D3C0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_34;
  }

  v58 = *MEMORY[0x277D5D4A8];
  v59 = v73;
  v60 = OUTLINED_FUNCTION_9_55();
  v61(v60);
  sub_267EF8218();
  v62 = OUTLINED_FUNCTION_2_69();
  (v47)(v62);
  if (v1 == v21 && v59 == v23)
  {

LABEL_42:

    v31 = MEMORY[0x277D5D3B0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_42;
  }

  v64 = *MEMORY[0x277D5D4B0];
  v65 = v72;
  v66 = OUTLINED_FUNCTION_9_55();
  v67(v66);
  sub_267EF8218();
  v68 = OUTLINED_FUNCTION_2_69();
  (v47)(v68);
  if (v1 == v21 && v65 == v23)
  {
  }

  else
  {
    v70 = OUTLINED_FUNCTION_1_85();

    if ((v70 & 1) == 0)
    {
      sub_267EF8198();
      OUTLINED_FUNCTION_78();
      return __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    }
  }

  v31 = MEMORY[0x277D5D3B8];
LABEL_9:
  v32 = *v31;
  v33 = sub_267EF8198();
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 104);
  v36 = OUTLINED_FUNCTION_31_30();
  v37(v36);
  OUTLINED_FUNCTION_21_36();
  return __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
}

uint64_t sub_267E9F260@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v4 = sub_267EF8228();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v72 = (v10 - v11);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v73 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v74 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  v21 = sub_267EF8218();
  v23 = v22;
  v24 = *MEMORY[0x277D5D460];
  v25 = *(v7 + 104);
  v26 = OUTLINED_FUNCTION_14_46();
  v75 = v27;
  v27(v26);
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  v28 = OUTLINED_FUNCTION_25_42();
  v29(v28);
  if (v1 == v21 && v20 == v23)
  {

LABEL_8:

    v31 = MEMORY[0x277D5D3C8];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  v43 = *MEMORY[0x277D5D468];
  OUTLINED_FUNCTION_13_50();
  v44();
  v45 = v3;
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  v46 = v3;
  v47 = v20;
  (v20)(v46, v4);
  if (v1 == v21 && v45 == v23)
  {

LABEL_18:

    v31 = MEMORY[0x277D5D3D0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_18;
  }

  v49 = *MEMORY[0x277D5D478];
  OUTLINED_FUNCTION_13_50();
  v50();
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  (v20)(v2, v4);
  if (v1 == v21 && v2 == v23)
  {

LABEL_26:

    v31 = MEMORY[0x277D5D3A8];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_26;
  }

  v52 = *MEMORY[0x277D5D518];
  v53 = v74;
  v54 = OUTLINED_FUNCTION_14_46();
  v55(v54);
  sub_267EF8218();
  v56 = OUTLINED_FUNCTION_2_69();
  (v47)(v56);
  if (v1 == v21 && v53 == v23)
  {

LABEL_34:

    v31 = MEMORY[0x277D5D3C0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_34;
  }

  v58 = *MEMORY[0x277D5D480];
  v59 = v73;
  v60 = OUTLINED_FUNCTION_9_55();
  v61(v60);
  sub_267EF8218();
  v62 = OUTLINED_FUNCTION_2_69();
  (v47)(v62);
  if (v1 == v21 && v59 == v23)
  {

LABEL_42:

    v31 = MEMORY[0x277D5D3B0];
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_42;
  }

  v64 = *MEMORY[0x277D5D488];
  v65 = v72;
  v66 = OUTLINED_FUNCTION_9_55();
  v67(v66);
  sub_267EF8218();
  v68 = OUTLINED_FUNCTION_2_69();
  (v47)(v68);
  if (v1 == v21 && v65 == v23)
  {
  }

  else
  {
    v70 = OUTLINED_FUNCTION_1_85();

    if ((v70 & 1) == 0)
    {
      sub_267EF8198();
      OUTLINED_FUNCTION_78();
      return __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    }
  }

  v31 = MEMORY[0x277D5D3B8];
LABEL_9:
  v32 = *v31;
  v33 = sub_267EF8198();
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 104);
  v36 = OUTLINED_FUNCTION_31_30();
  v37(v36);
  OUTLINED_FUNCTION_21_36();
  return __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
}

uint64_t sub_267E9F6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v92 = sub_267EF8428();
  v3 = OUTLINED_FUNCTION_58(v92);
  v99 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v90 = (v7 - v8);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  v91 = &v89 - v10;
  v11 = sub_267EF4BE8();
  v12 = OUTLINED_FUNCTION_58(v11);
  v94 = v13;
  v95 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v100 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_267EF4C08();
  v18 = OUTLINED_FUNCTION_58(v17);
  v96 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_60();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v101 = &v89 - v26;
  v27 = sub_267EF4BA8();
  v28 = OUTLINED_FUNCTION_58(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v35 = sub_267EF8A08();
  v36 = __swift_project_value_buffer(v35, qword_280240FB0);
  (*(v30 + 16))(v34, a1, v27);
  v93 = v36;
  v37 = sub_267EF89F8();
  v38 = sub_267EF95C8();
  v39 = os_log_type_enabled(v37, v38);
  v97 = v17;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v102 = v41;
    *v40 = 136315138;
    sub_267C31120();
    v42 = sub_267EF9E58();
    v89 = v24;
    v44 = v43;
    (*(v30 + 8))(v34, v27);
    v45 = sub_267BA33E8(v42, v44, &v102);
    v24 = v89;

    *(v40 + 4) = v45;
    _os_log_impl(&dword_267B93000, v37, v38, "#PromptForTapbackFlowStrategy received input: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    v17 = v97;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v30 + 8))(v34, v27);
  }

  v46 = v101;
  sub_267EF4B88();
  v47 = v96;
  v48 = (*(v96 + 88))(v46, v17);
  if (v48 == *MEMORY[0x277D5C150])
  {
    (*(v47 + 16))(v24, v46, v17);
    (*(v47 + 96))(v24, v17);
    (*(v94 + 32))(v100, v24, v95);
    v49 = v99;
    v50 = *(v99 + 104);
    v51 = v91;
    v52 = v92;
    v50(v91, *MEMORY[0x277D5D6F8], v92);
    v53 = sub_267EF8418();
    v55 = v54;
    v56 = *(v49 + 8);
    v99 = v49 + 8;
    v56(v51, v52);
    if (v53 != sub_267EF4BC8() || v55 != v57)
    {
      v59 = OUTLINED_FUNCTION_10_47();

      if (v59)
      {
LABEL_23:
        v73 = sub_267EF89F8();
        v74 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v74))
        {
          v75 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v75);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v76, v77, "#PromptForTapbackFlowStrategy received directInvocation via button press, handling");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E58();
        (*(v94 + 8))(v100, v95);
        v17 = v97;
        v46 = v101;
        return (*(v47 + 8))(v46, v17);
      }

      v60 = v90;
      v61 = v92;
      v50(v90, *MEMORY[0x277D5D708], v92);
      v62 = sub_267EF8418();
      v64 = v63;
      v56(v60, v61);
      if (v62 != sub_267EF4BC8() || v64 != v65)
      {
        v67 = OUTLINED_FUNCTION_10_47();

        if ((v67 & 1) == 0)
        {
          (*(v94 + 8))(v100, v95);
          v17 = v97;
          v46 = v101;
LABEL_30:
          v83 = sub_267EF89F8();
          v84 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v84))
          {
            v85 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v85);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v86, v87, "#PromptForTapbackFlowStrategy received unhandled input, ignoring");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E68();
          return (*(v47 + 8))(v46, v17);
        }

        goto LABEL_23;
      }
    }

    goto LABEL_23;
  }

  if (v48 == *MEMORY[0x277D5C160])
  {
    v68 = sub_267EF89F8();
    v69 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v69))
    {
      v70 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v70);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v71, v72, "#PromptForTapbackFlowStrategy received uso parse");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E58();
  }

  else
  {
    if (v48 != *MEMORY[0x277D5C168])
    {
      goto LABEL_30;
    }

    v78 = sub_267EF89F8();
    v79 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v79))
    {
      v80 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v80);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v81, v82, "#PromptForTapbackFlowStrategy received empty input");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E48();
  }

  return (*(v47 + 8))(v46, v17);
}

uint64_t sub_267E9FDD4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229970, &unk_267F0E300);
  v3[21] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v3[22] = OUTLINED_FUNCTION_50();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229928, &qword_267EFEB80);
  OUTLINED_FUNCTION_18(v7);
  v9 = *(v8 + 64);
  v3[25] = OUTLINED_FUNCTION_50();
  v3[26] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFD0, &qword_267F0D0B0);
  OUTLINED_FUNCTION_18(v10);
  v12 = *(v11 + 64) + 15;
  v3[27] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v3[28] = v13;
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  v3[29] = OUTLINED_FUNCTION_50();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v16 = sub_267EF8198();
  v3[33] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v3[34] = v17;
  v19 = *(v18 + 64) + 15;
  v3[35] = swift_task_alloc();
  v20 = sub_267EF8428();
  v3[36] = v20;
  OUTLINED_FUNCTION_30_0(v20);
  v3[37] = v21;
  v23 = *(v22 + 64);
  v3[38] = OUTLINED_FUNCTION_50();
  v3[39] = swift_task_alloc();
  v24 = sub_267EF4BE8();
  v3[40] = v24;
  OUTLINED_FUNCTION_30_0(v24);
  v3[41] = v25;
  v27 = *(v26 + 64) + 15;
  v3[42] = swift_task_alloc();
  v28 = sub_267EF4C08();
  v3[43] = v28;
  OUTLINED_FUNCTION_30_0(v28);
  v3[44] = v29;
  v31 = *(v30 + 64);
  v3[45] = OUTLINED_FUNCTION_50();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EA009C, 0, 0);
}

uint64_t sub_267EA009C()
{
  v163 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 152);
  v6 = *(*(v0 + 160) + 24);
  sub_267EF4B88();
  v7 = sub_267EBF874();
  v8 = *(v4 + 8);
  v8(v1, v3);
  *(v6 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap) = v7;
  sub_267EF4B88();
  v9 = (*(v4 + 88))(v2, v3);
  v10 = *(v0 + 360);
  if (v9 != *MEMORY[0x277D5C150])
  {
    v8(*(v0 + 360), *(v0 + 344));
    goto LABEL_9;
  }

  v158 = v8;
  v11 = *(v0 + 328);
  v12 = *(v0 + 336);
  v14 = *(v0 + 312);
  v13 = *(v0 + 320);
  v15 = *(v0 + 288);
  v16 = *(v0 + 296);
  (*(*(v0 + 352) + 96))(v10, *(v0 + 344));
  (*(v11 + 32))(v12, v10, v13);
  v160 = *(v16 + 104);
  v160(v14, *MEMORY[0x277D5D6F8], v15);
  v17 = sub_267EF8418();
  v19 = v18;
  v20 = v15;
  v21 = *(v16 + 8);
  v21(v14, v20);
  if (v17 == sub_267EF4BC8() && v19 == v22)
  {
  }

  else
  {
    v24 = OUTLINED_FUNCTION_10_47();

    if ((v24 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v55 = *(v0 + 336);
  v56 = sub_267EF4BD8();
  if (!v56)
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_29;
  }

  sub_267BB40A0(0x72506E6F74747562, 0xED00006465737365, v56);

  if (!*(v0 + 120))
  {
LABEL_29:
    v75 = &qword_28022AEF0;
    v76 = &qword_267EFCDE0;
    v77 = v0 + 96;
LABEL_30:
    sub_267B9F98C(v77, v75, v76);
    goto LABEL_31;
  }

  if (swift_dynamicCast())
  {
    v57 = *(v0 + 216);
    v58 = *(v0 + 128);
    v59 = *(v0 + 136);
    sub_267EF8208();
    v60 = sub_267EF8228();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v60);
    v63 = *(v0 + 256);
    v62 = *(v0 + 264);
    v64 = *(v0 + 216);
    if (EnumTagSinglePayload == 1)
    {
      sub_267B9F98C(*(v0 + 216), &qword_28022BFD0, &qword_267F0D0B0);
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v62);
    }

    else
    {
      sub_267E9F260(*(v0 + 256));
      (*(*(v60 - 8) + 8))(v64, v60);
      if (__swift_getEnumTagSinglePayload(v63, 1, v62) != 1)
      {
        v141 = *(*(v0 + 272) + 32);
        v141(*(v0 + 280), *(v0 + 256), *(v0 + 264));
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v142 = sub_267EF8A08();
        __swift_project_value_buffer(v142, qword_280240FB0);
        v143 = sub_267EF89F8();
        v144 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v144))
        {
          v145 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v145);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v146, v147, "#PromptForTapbackFlowStrategy received tapback selection");
          OUTLINED_FUNCTION_26();
        }

        v149 = *(v0 + 328);
        v148 = *(v0 + 336);
        v150 = *(v0 + 320);
        v151 = *(v0 + 280);
        v152 = *(v0 + 264);
        v153 = *(v0 + 144);

        (*(v149 + 8))(v148, v150);
        v141(v153, v151, v152);
        __swift_storeEnumTagSinglePayload(v153, 0, 1, v152);
        type metadata accessor for TapbackAction(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_21_36();
        goto LABEL_40;
      }
    }

    v77 = *(v0 + 256);
    v75 = &qword_280229920;
    v76 = &unk_267F0ABD0;
    goto LABEL_30;
  }

LABEL_31:
  v78 = *(v0 + 336);
  v79 = *(v0 + 304);
  v80 = *(v0 + 288);
  v160(v79, *MEMORY[0x277D5D708], v80);
  v81 = sub_267EF8418();
  v83 = v82;
  v21(v79, v80);
  v84 = sub_267EF4BC8();
  v87 = *(v0 + 328);
  v86 = *(v0 + 336);
  v88 = *(v0 + 320);
  if (v81 == v84 && v83 == v85)
  {

    v94 = *(v87 + 8);
    v95 = OUTLINED_FUNCTION_108();
    v96(v95);
LABEL_38:
    v97 = *(v0 + 144);
    type metadata accessor for TapbackAction(0);
LABEL_39:
    OUTLINED_FUNCTION_78();
LABEL_40:
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
    goto LABEL_55;
  }

  v90 = sub_267EF9EA8();

  v91 = *(v87 + 8);
  v92 = OUTLINED_FUNCTION_108();
  v93(v92);
  v8 = v158;
  if (v90)
  {
    goto LABEL_38;
  }

LABEL_9:
  v25 = *(v0 + 368);
  v26 = *(v0 + 344);
  v27 = *(v0 + 152);
  sub_267EF4B88();
  v28 = sub_267E57DFC(v25, (v0 + 56));
  (v8)(v25, v26, v28);
  if (!*(v0 + 80))
  {
    sub_267B9F98C(v0 + 56, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v68 = sub_267EF8A08();
    __swift_project_value_buffer(v68, qword_280240FB0);
    v69 = sub_267EF89F8();
    v70 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v70))
    {
      v71 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v71);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v72, v73, "#PromptForTapbackFlowStrategy received unsupported parse");
      OUTLINED_FUNCTION_26();
    }

    v74 = *(v0 + 144);

    type metadata accessor for TapbackAction(0);
    goto LABEL_39;
  }

  v29 = *(v0 + 208);
  sub_267BE58F4((v0 + 56), v0 + 16);
  v30 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_267E58838(v30, v29);
  v31 = type metadata accessor for TapbackAction(0);
  if (__swift_getEnumTagSinglePayload(v29, 1, v31) != 1)
  {
    sub_267B9A598(*(v0 + 208), *(v0 + 200), &qword_280229928, &qword_267EFEB80);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_267BBE134(*(v0 + 200), *(v0 + 248), &qword_280229920, &unk_267F0ABD0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v103 = *(v0 + 240);
      v102 = *(v0 + 248);
      v104 = sub_267EF8A08();
      __swift_project_value_buffer(v104, qword_280240FB0);
      v105 = OUTLINED_FUNCTION_108();
      sub_267B9A598(v105, v106, v107, v108);
      v109 = sub_267EF89F8();
      v110 = sub_267EF95D8();
      v111 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 240);
      if (v111)
      {
        v114 = *(v0 + 224);
        v113 = *(v0 + 232);
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v162 = v116;
        *v115 = 136315138;
        sub_267B9A598(v112, v113, &qword_280229920, &unk_267F0ABD0);
        v117 = sub_267EF9098();
        v119 = v118;
        sub_267B9F98C(v112, &qword_280229920, &unk_267F0ABD0);
        v120 = sub_267BA33E8(v117, v119, &v162);

        *(v115 + 4) = v120;
        _os_log_impl(&dword_267B93000, v109, v110, "#PromptForTapbackFlowStrategy received reaction with type %s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v116);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {

        sub_267B9F98C(v112, &qword_280229920, &unk_267F0ABD0);
      }

      v121 = *(v0 + 208);
      v128 = *(v0 + 144);
      sub_267BBE134(*(v0 + 248), v128, &qword_280229920, &unk_267F0ABD0);
      swift_storeEnumTagMultiPayload();
      v122 = v128;
      goto LABEL_53;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_267BBE134(*(v0 + 200), *(v0 + 192), &qword_280229970, &unk_267F0E300);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v34 = *(v0 + 184);
      v33 = *(v0 + 192);
      v35 = sub_267EF8A08();
      __swift_project_value_buffer(v35, qword_280240FB0);
      v36 = OUTLINED_FUNCTION_108();
      sub_267B9A598(v36, v37, v38, v39);
      v40 = sub_267EF89F8();
      v41 = sub_267EF95D8();
      v42 = os_log_type_enabled(v40, v41);
      v44 = *(v0 + 184);
      v43 = *(v0 + 192);
      if (v42)
      {
        v46 = *(v0 + 168);
        v45 = *(v0 + 176);
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v162 = v48;
        *v47 = 136315138;
        sub_267B9A598(v44, v45, &qword_280229970, &unk_267F0E300);
        v49 = sub_267EF9098();
        v51 = v50;
        sub_267B9F98C(v44, &qword_280229970, &unk_267F0E300);
        v52 = sub_267BA33E8(v49, v51, &v162);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_267B93000, v40, v41, "#PromptForTapbackFlowStrategy received unsupported reaction category %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();

        v53 = v43;
        v54 = &qword_280229970;
      }

      else
      {

        sub_267B9F98C(v44, &qword_280229970, &unk_267F0E300);
        v53 = OUTLINED_FUNCTION_108();
      }

      sub_267B9F98C(v53, v54, &unk_267F0E300);
      v121 = *(v0 + 208);
      v125 = *(v0 + 144);
      v124 = *(v0 + 152);
      v126 = sub_267EF4BA8();
      OUTLINED_FUNCTION_22(v126);
      (*(v127 + 16))(v125, v124, v126);
      __swift_storeEnumTagSinglePayload(v125, 0, 1, v126);
      swift_storeEnumTagMultiPayload();
      v122 = v125;
LABEL_53:
      v123 = 0;
      goto LABEL_54;
    }

    sub_267EA13BC(*(v0 + 200));
  }

  v121 = *(v0 + 208);
  v122 = *(v0 + 144);
  v123 = 1;
LABEL_54:
  __swift_storeEnumTagSinglePayload(v122, v123, 1, v31);
  sub_267B9F98C(v121, &qword_280229928, &qword_267EFEB80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_55:
  v130 = *(v0 + 360);
  v129 = *(v0 + 368);
  v131 = *(v0 + 336);
  v133 = *(v0 + 304);
  v132 = *(v0 + 312);
  v134 = *(v0 + 280);
  v136 = *(v0 + 248);
  v135 = *(v0 + 256);
  v137 = *(v0 + 232);
  v138 = *(v0 + 240);
  v154 = *(v0 + 216);
  v155 = *(v0 + 208);
  v156 = *(v0 + 200);
  v157 = *(v0 + 192);
  v159 = *(v0 + 184);
  v161 = *(v0 + 176);

  OUTLINED_FUNCTION_17();

  return v139();
}

uint64_t sub_267EA0C5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_267EA0C7C, 0, 0);
}

uint64_t sub_267EA0C7C()
{
  v1 = *(v0[3] + 24);
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_hasPrompted;
  if (*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_hasPrompted))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v3 = sub_267EF8A08();
    __swift_project_value_buffer(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v6);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v7, v8, "#PromptForTapbackFlowStrategy suppressing reprompt");
      OUTLINED_FUNCTION_26();
    }

    v9 = v0[2];

    sub_267EF3D38();
    sub_267EF3D28();
    OUTLINED_FUNCTION_17();

    return v10();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = sub_267EF8A08();
    __swift_project_value_buffer(v12, qword_280240FB0);
    v13 = sub_267EF89F8();
    v14 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v14))
    {
      v15 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v15);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v16, v17, "#PromptForTapbackFlowStrategy returning tapback prompt response output");
      OUTLINED_FUNCTION_26();
    }

    v18 = v0[3];

    *(v1 + v2) = 1;
    v19 = *(v18 + 16);
    v20 = swift_task_alloc();
    v0[4] = v20;
    *v20 = v0;
    v20[1] = sub_267EA0E70;
    v21 = v0[2];

    return sub_267E43D18();
  }
}

uint64_t sub_267EA0E70()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267EA0F9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267CDE0E8;

  return sub_267E9FDD4(a1, a2);
}

uint64_t sub_267EA1044(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CDE0E8;

  return sub_267EA0C5C(a1);
}

uint64_t sub_267EA10DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B460] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267CDE0E8;

  return MEMORY[0x2821B9D48](a1, a2, a3);
}

uint64_t sub_267EA1190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B468] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267CDE0E8;

  return MEMORY[0x2821B9D50](a1, a2, a3);
}

uint64_t sub_267EA1244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B450] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267CDDF34;

  return MEMORY[0x2821B9D38](a1, a2, a3);
}

uint64_t sub_267EA12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B458] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDE0E8;

  return MEMORY[0x2821B9D40](a1, a2, a3, a4);
}

uint64_t sub_267EA13BC(uint64_t a1)
{
  v2 = type metadata accessor for TapbackAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_267EA1418(void (*a1)(void), void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = OUTLINED_FUNCTION_6_55(v11, v36);
  v13 = OUTLINED_FUNCTION_4_6(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_70();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_3_83();
  if (v21)
  {
    v22 = v21;
    v37 = a1;
    sub_267EF2C98();

    v23 = OUTLINED_FUNCTION_5_70();
    a1(v23);
    v24 = [a2 (v3 + 1583)];
    if (v24)
    {
      v25 = v24;
      sub_267EF2C98();

      (a1)(v4, v5, v2);
      sub_267EF2C88();
      v27 = v26;
      sub_267EF2C88();
      v28 = OUTLINED_FUNCTION_8_58();
      v4(v28);
      v29 = OUTLINED_FUNCTION_100_1();
      v4(v29);
      return v6 < v27;
    }

    v31 = *(v15 + 8);
    v32 = OUTLINED_FUNCTION_100_1();
    v33(v32);
  }

  v34 = [a1 (v3 + 1583)];
  if (v34)
  {
    v35 = v34;
    sub_267EF2C98();

    OUTLINED_FUNCTION_1_86(v38, 0);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_86(v38, 1);
    if (qword_280228820 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    sub_267EF95D8();
    sub_267EF8998();
    return 1;
  }
}

uint64_t sub_267EA16C8(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v4 = v3;
  v5 = v2 == 0x7473726966 && v3 == 0xE500000000000000;
  if (v5 || (v6 = v2, (OUTLINED_FUNCTION_9_56() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v8 = v6 == 0x646E6F636573 && v4 == 0xE600000000000000;
    if (v8 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = v6 == 0x6472696874 && v4 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = v6 == 0x687472756F66 && v4 == 0xE600000000000000;
        if (v10 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = v6 == 0x6874666966 && v4 == 0xE500000000000000;
          if (v11 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = v6 == 0x6874786973 && v4 == 0xE500000000000000;
            if (v12 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = v6 == 0x68746E65766573 && v4 == 0xE700000000000000;
              if (v13 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = v6 == 0x687468676965 && v4 == 0xE600000000000000;
                if (v14 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = v6 == 0x68746E696ELL && v4 == 0xE500000000000000;
                  if (v15 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v16 = v6 == 0x68746E6574 && v4 == 0xE500000000000000;
                    if (v16 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v17 = v6 == 0x68746E6576656C65 && v4 == 0xE800000000000000;
                      if (v17 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v18 = v6 == 0x6874666C657774 && v4 == 0xE700000000000000;
                        if (v18 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_30_37(0x72696874u);
                          v19 = v5 && v4 == 0xEA00000000006874;
                          if (v19 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_30_37(0x72756F66u);
                            v20 = v5 && v4 == 0xEA00000000006874;
                            if (v20 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v21 = v6 == 0x746E656574666966 && v4 == 0xE900000000000068;
                              if (v21 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v22 = v6 == 0x746E656574786973 && v4 == 0xE900000000000068;
                                if (v22 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v23 = v6 == 0x6565746E65766573 && v4 == 0xEB0000000068746ELL;
                                  if (v23 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_30_37(0x68676965u);
                                    v24 = v5 && v4 == 0xEA00000000006874;
                                    if (v24 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_30_37(0x656E696Eu);
                                      v25 = v5 && v4 == 0xEA00000000006874;
                                      if (v25 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v26 = v6 == 0x746569746E657774 && v4 == 0xE900000000000068;
                                        if (v26 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v27 = v6 == 0x662079746E657774 && v4 == 0xEC00000074737269;
                                          if (v27 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v28 = v6 == 0x732079746E657774 && v4 == 0xED0000646E6F6365;
                                            if (v28 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v29 = v6 == 0x742079746E657774 && v4 == 0xEC00000064726968;
                                              if (v29 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v30 = v6 == 0x662079746E657774 && v4 == 0xED0000687472756FLL;
                                                if (v30 || (OUTLINED_FUNCTION_9_56() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (v6 == 0x662079746E657774 && v4 == 0xEC00000068746669)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v32 = OUTLINED_FUNCTION_9_56();

                                                  if (v32)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 0;
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

uint64_t sub_267EA1D30(uint64_t a1)
{
  if (qword_2802287B8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_0(qword_280240E58, qword_280240E70);
  v2 = sub_267DE2E8C();
  v4 = v3;
  if (qword_2802287C0 != -1)
  {
    swift_once();
  }

  sub_267B9AFEC(&qword_280240E80, v9);
  v5 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  sub_267EDECC0(a1);
  v6 = (*(v5 + 8))();

  __swift_destroy_boxed_opaque_existential_0(v9);

  v9[0] = sub_267D32728(v7);
  sub_267EA9800(v9, v2, v4, v6);

  return v9[0];
}

BOOL sub_267EA1EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_267EF7C18();
  if (v9)
  {
    if (a4)
    {
      if (v8 == a3 && v9 == a4)
      {

        return 1;
      }

      v11 = sub_267EF9EA8();

      if (v11)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  else if (!a4)
  {
    return 1;
  }

  v12 = sub_267EF7C18();
  if (v13)
  {
    if (a4)
    {
      if (v12 == a3 && v13 == a4)
      {

        return 0;
      }

      v15 = sub_267EF9EA8();

      if (v15)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  else if (!a4)
  {
    return 0;
  }

  v17 = sub_267EF7C18();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = COERCE_DOUBLE(sub_267C8EEE0(v17, v19, a5));
  v22 = v21;

  if (v22)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v20;
  }

  v24 = sub_267EF7C18();
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = sub_267C8EEE0(v24, v26, a5);
  v29 = v28;

  v30 = *&v27;
  if (v29)
  {
    v30 = 0.0;
  }

  return v30 < v23;
}

uint64_t sub_267EA2064()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v3 = sub_267EF7D48();
  v1[30] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[31] = v4;
  v6 = *(v5 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v7 = sub_267EF4C08();
  v1[35] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[36] = v8;
  v10 = *(v9 + 64);
  v1[37] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267EA2174()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[28];
  sub_267EF4B88();
  sub_267E57DFC(v1, v0 + 2);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_26_0();
  v7(v6);
  sub_267EABAEC((v0 + 2), (v0 + 7));
  v8 = v0[10];
  if (v8)
  {
    v9 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    v10 = *(v9 + 360);
    v11 = OUTLINED_FUNCTION_38_0();
    v13 = v12(v11);
    v8 = v14;
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  else
  {
    sub_267B9FF34((v0 + 7), &unk_28022BBF0, &unk_267F01C60);
    v13 = 0;
  }

  v15 = (v0[29] + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appName);
  v16 = v15[1];
  *v15 = v13;
  v15[1] = v8;

  sub_267EABAEC((v0 + 2), (v0 + 12));
  if (v0[15])
  {
    v17 = v0[16];
    __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
    v18 = *(v17 + 368);
    v19 = OUTLINED_FUNCTION_38_0();
    v21 = v20(v19);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  }

  else
  {
    sub_267B9FF34((v0 + 12), &unk_28022BBF0, &unk_267F01C60);
    v21 = 0;
    v23 = 0;
  }

  v0[38] = v23;
  if (v15[1] && !v23)
  {
    v30 = *v15;
    v31 = qword_280228818;
    v32 = v15[1];

    if (v31 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v33 = sub_267EF8A08();
    __swift_project_value_buffer(v33, qword_280240FB0);
    OUTLINED_FUNCTION_43();

    v34 = sub_267EF89F8();
    v35 = sub_267EF95D8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_48();
      v47 = OUTLINED_FUNCTION_52();
      *v36 = 136315138;
      v37 = OUTLINED_FUNCTION_3();
      v40 = sub_267BA33E8(v37, v38, v39);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_267B93000, v34, v35, "#SendMessageAppResolutionOnDeviceFlowStrategy.resolveApp app bundle ID for requested app '%s' is not available", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    sub_267EF4458();
    sub_267EF4408();
    v41 = v0[37];
    v43 = v0[33];
    v42 = v0[34];
    v44 = v0[32];
    sub_267B9FF34((v0 + 2), &unk_28022BBF0, &unk_267F01C60);

    v45 = OUTLINED_FUNCTION_37();

    return v46(v45);
  }

  else
  {
    v24 = v0[29];
    v25 = swift_task_alloc();
    v0[39] = v25;
    v25[2] = v24;
    v25[3] = v21;
    v25[4] = v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[40] = v26;
    *v26 = v27;
    v26[1] = sub_267EA252C;
    v28 = v0[34];

    return sub_267C9C318(v28, sub_267EABB5C, v25);
  }
}

uint64_t sub_267EA252C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[41] = v0;

  if (!v0)
  {
    v9 = v3[38];
    v10 = v3[39];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267EA2634()
{
  v57 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  v8 = *(v3 + 16);
  v6 = v3 + 16;
  v7 = v8;
  v8(v2, v1, v4);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[33];
  v14 = v0[30];
  v13 = v0[31];
  if (v11)
  {
    v54 = OUTLINED_FUNCTION_48();
    v55 = OUTLINED_FUNCTION_52();
    v56 = v55;
    *v54 = 136315138;
    sub_267EABB68(&qword_2802294E8, MEMORY[0x277D55430]);
    v15 = sub_267EF9E58();
    v17 = v16;
    v53 = v10;
    v18 = *(v13 + 8);
    v19 = OUTLINED_FUNCTION_401();
    v18(v19);
    v20 = sub_267BA33E8(v15, v17, &v56);

    *(v54 + 4) = v20;
    _os_log_impl(&dword_267B93000, v9, v53, "#SendMessageAppResolutionOnDeviceFlowStrategy app resolution result: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v18 = *(v13 + 8);
    v21 = OUTLINED_FUNCTION_401();
    v18(v21);
  }

  v23 = v0[31];
  v22 = v0[32];
  v24 = v0[30];
  v7(v22, v0[34], v24);
  v25 = (*(v23 + 88))(v22, v24);
  v26 = v0[32];
  v27 = v0[30];
  if (v25 == *MEMORY[0x277D55428])
  {
    (*(v0[31] + 96))(v0[32], v27);
    v28 = *v26;
    sub_267EABAEC((v0 + 2), (v0 + 17));
    if (v0[20])
    {
      v29 = v0[21];
      __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
      v30 = *(v29 + 272);
      v31 = OUTLINED_FUNCTION_54_1();
      v33 = v32(v31, v29);
      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
      if (v33)
      {
        v34 = v0[29];

        *(*(v34 + 56) + 96) = 1;
        goto LABEL_18;
      }
    }

    else
    {
      sub_267B9FF34((v0 + 17), &unk_28022BBF0, &unk_267F01C60);
    }

    v35 = *(v0[29] + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_previouslyResolvedApp);
    if (!v35)
    {
      goto LABEL_14;
    }

    v0[26] = v35;
    v0[27] = v28;
    sub_267EF7C38();
    sub_267EABB68(&qword_28022CF90, MEMORY[0x277D55380]);

    v36 = sub_267EF8FE8();
    v37 = v0[26];

    if ((v36 & 1) == 0)
    {
      v38 = sub_267EF89F8();
      v39 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v39))
      {
        v40 = OUTLINED_FUNCTION_32();
        *v40 = 0;
        _os_log_impl(&dword_267B93000, v38, v6, "#SendMessageAppResolutionOnDeviceFlowStrategy app is changed by SeAS", v40, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v41 = v0[29];

      *(*(v41 + 56) + 97) = 1;
    }

    else
    {
LABEL_14:
    }
  }

  else
  {
    (v18)(v0[32], v27);
  }

LABEL_18:
  v42 = v0[34];
  v43 = v0[30];
  v44 = v0[31];
  v45 = sub_267EA2DEC();
  v46 = OUTLINED_FUNCTION_66();
  v18(v46);
  v47 = v0[37];
  v49 = v0[33];
  v48 = v0[34];
  v50 = v0[32];
  sub_267B9FF34((v0 + 2), &unk_28022BBF0, &unk_267F01C60);

  v51 = v0[1];

  return v51(v45);
}

uint64_t sub_267EA2AC0()
{
  v25 = v0;
  v1 = v0[38];
  v2 = v0[39];

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = v0[41];
  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = OUTLINED_FUNCTION_54_1();
  v6 = sub_267EF89F8();
  v7 = sub_267EF95E8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[41];
    OUTLINED_FUNCTION_48();
    v24 = OUTLINED_FUNCTION_55_0();
    *v3 = 136315138;
    swift_getErrorValue();
    v10 = v0[22];
    v9 = v0[23];
    v11 = v0[24];
    v12 = sub_267EF9F68();
    v14 = sub_267BA33E8(v12, v13, &v24);

    *(v3 + 1) = v14;
    OUTLINED_FUNCTION_52_18(&dword_267B93000, v15, v7, "#SendMessageAppResolutionOnDeviceFlowStrategy failed to resolve app due to error: %s");
    OUTLINED_FUNCTION_50_18();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v16 = v0[41];
  sub_267EF4458();
  sub_267EF4408();

  v17 = v0[37];
  v19 = v0[33];
  v18 = v0[34];
  v20 = v0[32];
  sub_267B9FF34((v0 + 2), &unk_28022BBF0, &unk_267F01C60);

  v21 = OUTLINED_FUNCTION_37();

  return v22(v21);
}

uint64_t sub_267EA2C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appResolutionService);
  v8 = *(a3 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_intent);
  v10[3] = sub_267EF7D28();
  v10[4] = MEMORY[0x277D553E0];
  __swift_allocate_boxed_opaque_existential_0(v10);

  sub_267EA2D3C(a4, a5);
  sub_267EF7D58();
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_267EA2D3C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D47448]) init];
  if (a2)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D47968]) init];
    sub_267EAB120(a1, a2, v5);
    [v4 setRequestedApp_];
  }

  return MEMORY[0x2821B69A0](v4);
}

uint64_t sub_267EA2DEC()
{
  v2 = sub_267EF7D48();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_58_18();
  (*(v5 + 16))(v1, v0, v2);
  v8 = *(v5 + 88);
  v9 = OUTLINED_FUNCTION_3();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x277D55418])
  {
    v12 = *(v5 + 96);
    v13 = OUTLINED_FUNCTION_3();
    v14(v13);
    v15 = *v1;
    sub_267EF4458();
    OUTLINED_FUNCTION_43();
    sub_267EF4448();
  }

  else
  {
    if (v11 == *MEMORY[0x277D55420])
    {
      v16 = *(v5 + 96);
      v17 = OUTLINED_FUNCTION_3();
      v18(v17);
      v19 = *v1;
      sub_267EF4458();
      OUTLINED_FUNCTION_43();
      sub_267EF4418();
      OUTLINED_FUNCTION_43();

      return v0;
    }

    if (v11 != *MEMORY[0x277D55428])
    {
      sub_267EF4458();
      v0 = sub_267EF4408();
      v24 = *(v5 + 8);
      v25 = OUTLINED_FUNCTION_3();
      v26(v25);
      return v0;
    }

    v20 = *(v5 + 96);
    v21 = OUTLINED_FUNCTION_3();
    v22(v21);
    v23 = *v1;
    sub_267EF4458();
    OUTLINED_FUNCTION_43();
    sub_267EF4438();
  }

  OUTLINED_FUNCTION_43();

  return v0;
}

void sub_267EA2FA8()
{
  OUTLINED_FUNCTION_48_0();
  v110 = v0;
  v3 = v2;
  v114 = sub_267EF4C08();
  v4 = OUTLINED_FUNCTION_58(v114);
  v112 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v115 = v9 - v8;
  OUTLINED_FUNCTION_26_2();
  v10 = sub_267EF3868();
  v11 = OUTLINED_FUNCTION_58(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6();
  v109 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v106 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_45_0();
  v116 = v21;
  OUTLINED_FUNCTION_26_2();
  v22 = sub_267EF4BA8();
  v23 = OUTLINED_FUNCTION_58(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_58_18();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v28 = sub_267EF8A08();
  v29 = __swift_project_value_buffer(v28, qword_280240FB0);
  v30 = *(v25 + 16);
  v113 = v3;
  v30(v1, v3, v22);
  v111 = v29;
  v31 = sub_267EF89F8();
  v32 = sub_267EF95C8();
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_48();
    v107 = v20;
    v33 = OUTLINED_FUNCTION_55_0();
    v108 = v13;
    v34 = v33;
    v117[0] = v33;
    *v20 = 136315138;
    OUTLINED_FUNCTION_23_32();
    sub_267EABB68(v35, v36);
    v37 = sub_267EF9E58();
    v38 = v10;
    v40 = v39;
    (*(v25 + 8))(v1, v22);
    v41 = sub_267BA33E8(v37, v40, v117);
    v10 = v38;

    *(v20 + 4) = v41;
    OUTLINED_FUNCTION_52_18(&dword_267B93000, v42, v32, "#SendMessageAppResolutionOnDeviceFlowStrategy.parseConfirmationResponse: %s");
    __swift_destroy_boxed_opaque_existential_0(v34);
    v13 = v108;
    OUTLINED_FUNCTION_32_0();
    v20 = v107;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v25 + 8))(v1, v22);
  }

  v43 = v115;
  sub_267EF4B88();
  v44 = v116;
  sub_267EBF390(v116);
  v45 = *(v112 + 8);
  v46 = v114;
  v45(v43, v114);
  (*(v13 + 16))(v20, v44, v10);
  v47 = (*(v13 + 88))(v20, v10);
  v48 = *MEMORY[0x277D5B960];
  if (v47 == v48 || v47 == *MEMORY[0x277D5B970])
  {
    goto LABEL_11;
  }

  if (v47 == *MEMORY[0x277D5B978])
  {
    OUTLINED_FUNCTION_44_24(*(v110 + 56));
    sub_267EF46F8();
    sub_267EF46E8();
LABEL_18:
    (*(v13 + 8))(v116, v10);
    goto LABEL_33;
  }

  v43 = v115;
  if (v47 == *MEMORY[0x277D5B968])
  {
LABEL_11:
    sub_267EF4B88();
    v50 = sub_267E57DFC(v43, v117);
    (v45)(v43, v46, v50);
    v51 = v118;
    if (v118)
    {
      v52 = v119;
      __swift_project_boxed_opaque_existential_0(v117, v118);
      v53 = (*(v52 + 368))(v51, v52);
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_0(v117);
      if (v55)
      {

        v56 = sub_267EF89F8();
        v57 = sub_267EF95D8();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = OUTLINED_FUNCTION_48();
          v59 = OUTLINED_FUNCTION_52();
          v117[0] = v59;
          *v58 = 136315138;
          *(v58 + 4) = sub_267BA33E8(v53, v55, v117);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v59);
          OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_44_24(*(v110 + 56));
        sub_267EF46F8();
        sub_267EF7C38();
        sub_267EF7C08();
        sub_267EF46D8();
        OUTLINED_FUNCTION_91_3();

        goto LABEL_18;
      }
    }

    else
    {
      sub_267B9FF34(v117, &unk_28022BBF0, &unk_267F01C60);
    }

    v74 = *(v13 + 104);
    v75 = v109;
    v74();
    v76 = sub_267C29010(v116, v75);
    v77 = *(v13 + 8);
    v77(v75, v10);
    if (v76)
    {
      v78 = sub_267EF89F8();
      v79 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v79))
      {
LABEL_26:
        v80 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v80);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v81, v82, v83, v84, v85, 2u);
        OUTLINED_FUNCTION_26();
      }
    }

    else
    {
      (v74)(v75, v48, v10);
      v86 = sub_267C29010(v116, v75);
      v77(v75, v10);
      if (v86)
      {
        v87 = sub_267EF89F8();
        v88 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v88))
        {
          v89 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v89);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v90, v91, v92, v93, v94, 2u);
          OUTLINED_FUNCTION_26();
        }

        sub_267EF46F8();
        sub_267EF46C8();
        goto LABEL_32;
      }

      v95 = OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_eligibleApps;
      v96 = sub_267BAF0DC(*(v110 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_eligibleApps));
      v78 = sub_267EF89F8();
      v97 = sub_267EF95D8();
      v98 = OUTLINED_FUNCTION_36(v97);
      if (v96 >= 2)
      {
        if (v98)
        {
          v99 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v99);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v100, v101, v102, v103, v104, 2u);
          OUTLINED_FUNCTION_26();
        }

        sub_267EF46F8();
        v105 = *(v110 + v95);

        sub_267EF46A8();
        OUTLINED_FUNCTION_91_3();

        goto LABEL_32;
      }

      if (v98)
      {
        goto LABEL_26;
      }
    }

    sub_267EF46F8();
    sub_267EF46B8();
LABEL_32:
    v77(v116, v10);
    goto LABEL_33;
  }

  v65 = sub_267EF89F8();
  v66 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v66))
  {
    v67 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v67);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v68, v69, v70, v71, v72, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_267EF46F8();
  sub_267EF46C8();
  v73 = *(v13 + 8);
  v73(v116, v10);
  v73(v20, v10);
LABEL_33:
  OUTLINED_FUNCTION_47();
}