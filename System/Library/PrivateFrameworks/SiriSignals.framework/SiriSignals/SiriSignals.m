uint64_t OUTLINED_FUNCTION_29_2(__n128 *a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v13 - 64) = a3;
  a1[1] = a2;
  a1[2] = a3;
  a1[3].n128_u64[0] = v12;
  a1[3].n128_u8[8] = v11;

  return sub_23155A1A0(v13 - 64, &a11);
}

void OUTLINED_FUNCTION_29_3()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x231931280);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_once();
}

double OUTLINED_FUNCTION_4_0(double result)
{
  if (result <= v1)
  {
    return v1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_10()
{

  JUMPOUT(0x231931280);
}

void OUTLINED_FUNCTION_4_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_4_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_27()
{

  JUMPOUT(0x231931280);
}

uint64_t OUTLINED_FUNCTION_4_11(uint64_t result, float a2)
{
  *v2 = a2;
  *(v4 - 104) = 0;
  *(v4 - 96) = 0xE000000000000000;
  *(v4 - 88) = result;
  v5 = *(v3 + 20);
  return result;
}

void OUTLINED_FUNCTION_4_13()
{
  v2 = *(v0 + 16) + 1;

  sub_2314F1698();
}

uint64_t OUTLINED_FUNCTION_4_16()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return sub_2315860F4();
}

void OUTLINED_FUNCTION_4_23()
{

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return sub_231586C44();
}

uint64_t OUTLINED_FUNCTION_4_26(__n128 *a1, __n128 a2)
{
  a1[3] = a2;

  return sub_2314B5008(v2 - 136, v2 - 224);
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t result)
{
  v2 = result & ~(-1 << *(v1 + 32));
  v3 = *(v1 + 56 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t result)
{
  v2 = *(v1 + 56) + 16 * result;
  v3 = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_31@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_4_33()
{
  *(*(v0 + 56) + 8 * v1) = v4;
  v5 = *(v3 - 224);
  v6 = **(v3 - 232);
  return v2;
}

unint64_t OUTLINED_FUNCTION_17_5@<X0>(char a1@<W8>)
{
  *(v1 - 121) = a1;

  return DomainUseCase.rawValue.getter();
}

double OUTLINED_FUNCTION_17_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35)
{

  return sub_231566B94(v36 - 224, v35, &a35);
}

uint64_t OUTLINED_FUNCTION_17_9()
{
  result = v0 - 304;
  v2 = *(v0 - 520);
  v3 = *(v0 - 512);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void sub_231498864()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v180 = v2;
  v4 = v3;
  v178 = v5;
  v6 = sub_231586024();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_12();
  v156 = v12;
  OUTLINED_FUNCTION_29_0();
  v13 = sub_231586064();
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v155 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_12();
  v153 = v18;
  OUTLINED_FUNCTION_29_0();
  v154 = sub_231586094();
  v19 = OUTLINED_FUNCTION_4_1(v154);
  v152 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_12();
  v151 = v23;
  OUTLINED_FUNCTION_29_0();
  v24 = sub_231586034();
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v149 = v26;
  v150 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_12();
  v148 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  OUTLINED_FUNCTION_19(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v33);
  v147 = &v146 - v34;
  OUTLINED_FUNCTION_29_0();
  v35 = sub_231585884();
  v36 = OUTLINED_FUNCTION_4_1(v35);
  v162 = v37;
  v163 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_11_0();
  v161 = v40 - v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_35();
  v43 = *(v0 + 32);
  v44 = *(v0 + 40);
  v165 = v45;
  v43();
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  v160 = v46;
  sub_23149A740(v188);
  v47 = *(v1 + 16);
  v48 = *(v47 + 16);
  v176 = v4;
  v158 = v9;
  v159 = v6;
  v157 = v13;
  if (v48)
  {
    v49 = (v47 + 32);
    v50 = MEMORY[0x277D84F90];
    do
    {
      v51 = dynamic_cast_existential_1_conditional(*v49);
      if (v51)
      {
        v53 = v51;
        v54 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = *(v50 + 16);
          OUTLINED_FUNCTION_19_2();
          sub_231499F98();
          v50 = v59;
        }

        v56 = *(v50 + 16);
        v55 = *(v50 + 24);
        if (v56 >= v55 >> 1)
        {
          OUTLINED_FUNCTION_18(v55);
          sub_231499F98();
          v50 = v60;
        }

        *(v50 + 16) = v56 + 1;
        v57 = v50 + 16 * v56;
        *(v57 + 32) = v53;
        *(v57 + 40) = v54;
        v4 = v176;
      }

      v49 += 2;
      --v48;
    }

    while (v48);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  v61 = *(v50 + 16);
  v62 = MEMORY[0x277D84F90];
  if (v61)
  {
    v63 = (v50 + 32);
    v64 = v165;
    while (1)
    {
      v65 = *(*(v63 + 1) + 24);
      v182 = *v63;
      if (v65() == v178 && v66 == v4)
      {
        break;
      }

      v68 = sub_231586C44();

      if (v68)
      {
        goto LABEL_21;
      }

LABEL_26:
      ++v63;
      if (!--v61)
      {
        goto LABEL_29;
      }
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v184[0] = v62;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23152D854(0, *(v62 + 16) + 1, 1);
      v62 = v184[0];
    }

    v71 = *(v62 + 16);
    v70 = *(v62 + 24);
    if (v71 >= v70 >> 1)
    {
      v72 = OUTLINED_FUNCTION_18(v70);
      sub_23152D854(v72, v71 + 1, 1);
      v62 = v184[0];
    }

    *(v62 + 16) = v71 + 1;
    *(v62 + 16 * v71 + 32) = v182;
    goto LABEL_26;
  }

  v64 = v165;
LABEL_29:

  v168 = *(v62 + 16);
  if (v168)
  {
    v74 = 0;
    v167 = v62 + 32;
    *&v73 = 136315138;
    v164 = v73;
    *&v73 = 136315394;
    v173 = v73;
    v174 = v1;
    v166 = v62;
    while (v74 < *(v62 + 16))
    {
      v172 = v74;
      v75 = (v167 + 16 * v74);
      v77 = *v75;
      v76 = v75[1];
      v186 = &type metadata for SignalDefinitionParametersProvider;
      v187 = &protocol witness table for SignalDefinitionParametersProvider;
      v185[0] = swift_allocObject();
      memcpy((v185[0] + 16), v188, 0x50uLL);
      v78 = *(v76 + 8);
      v79 = *(v78 + 104);
      sub_2314E6CA4(v188, v184);
      v80 = v77;
      v81 = (v79)(v185, v77, v78);
      __swift_destroy_boxed_opaque_existential_1(v185);
      v82 = *(v81 + 16);
      v177 = v77;
      *&v182 = v78;
      if (v82)
      {
        v83 = 0;
        v179 = v82;
        v84 = v82 - 1;
        v85 = v81 + 32;
        v86 = 1;
        v175 = v81;
        v169 = v81 + 32;
        v170 = v84;
LABEL_34:
        v171 = v86;
        v64 = v85 + 40 * v83;
        v87 = v83;
        do
        {
          if (v87 >= *(v81 + 16))
          {
            __break(1u);
            goto LABEL_73;
          }

          sub_2314A5780(v64, v184);
          if (qword_280D70420 != -1)
          {
            OUTLINED_FUNCTION_3();
            swift_once();
          }

          v88 = sub_231585FF4();
          OUTLINED_FUNCTION_1_4(v88, qword_280D72248);
          sub_2314A5780(v184, v185);

          v181 = v80;
          v89 = sub_231585FE4();
          v79 = sub_2315865D4();

          if (os_log_type_enabled(v89, v79))
          {
            v90 = OUTLINED_FUNCTION_22_0();
            v183[0] = OUTLINED_FUNCTION_74();
            *v90 = v173;
            *(v90 + 4) = sub_2314A22E8();
            *(v90 + 12) = 2080;
            v91 = v187;
            __swift_project_boxed_opaque_existential_1(v185, v186);
            v92 = v91[2];
            v93 = OUTLINED_FUNCTION_54_0();
            v94 = v91;
            v4 = v176;
            v96 = v95(v93, v94);
            __swift_destroy_boxed_opaque_existential_1(v185);
            sub_2314A22E8();
            OUTLINED_FUNCTION_54_0();
            v77 = v177;

            *(v90 + 14) = v96;
            _os_log_impl(&dword_231496000, v89, v79, "SignalRepository: Received Biome notification for %s, accumulating into %s which registered for this event", v90, 0x16u);
            swift_arrayDestroy();
            v81 = v175;
            OUTLINED_FUNCTION_10();
            v1 = v174;
            OUTLINED_FUNCTION_10();
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v185);
          }

          sub_2314A5780(v184, v185);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE88, &qword_23158E088);
          v97 = swift_dynamicCast();
          v78 = v182;
          if ((v97 & 1) == 0)
          {
            memset(v183, 0, 40);
          }

          sub_23155DE48();
          v80 = v98;
          __swift_destroy_boxed_opaque_existential_1(v184);
          sub_2314A2910(v183, &qword_27DD5BE90, &qword_23158E090);
          if ((v80 & 1) == 0)
          {
            v86 = 0;
            v83 = v87 + 1;
            v85 = v169;
            if (v170 != v87)
            {
              goto LABEL_34;
            }

            v64 = v165;
            goto LABEL_49;
          }

          ++v87;
          v64 += 40;
        }

        while (v179 != v87);

        v64 = v165;
        if (v171)
        {
          goto LABEL_53;
        }

LABEL_49:
        v99 = sub_231585FE4();
        v100 = sub_2315865D4();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = OUTLINED_FUNCTION_22();
          v184[0] = OUTLINED_FUNCTION_47();
          *v101 = v164;
          (*(v78 + 120))(v77);
          sub_2314A22E8();
          OUTLINED_FUNCTION_86_0();

          *(v101 + 4) = v77;
          _os_log_impl(&dword_231496000, v99, v100, "SignalRepository: no accumulated value for %s (or at least one sub-signal), so it still will prewarm.", v101, 0xCu);
          OUTLINED_FUNCTION_29_3();
          OUTLINED_FUNCTION_26_4();
        }

        v62 = v166;
        v102 = v172;
      }

      else
      {

LABEL_53:
        if (qword_280D70420 != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v103 = sub_231585FF4();
        OUTLINED_FUNCTION_1_4(v103, qword_280D72248);
        v104 = sub_231585FE4();
        v105 = sub_2315865D4();
        if (os_log_type_enabled(v104, v105))
        {
          OUTLINED_FUNCTION_22();
          v106 = OUTLINED_FUNCTION_42_1();
          v184[0] = v106;
          *v79 = v164;
          (*(v182 + 120))(v77, v182);
          sub_2314A22E8();
          OUTLINED_FUNCTION_86_0();

          *(v79 + 4) = v77;
          v77 = v177;
          _os_log_impl(&dword_231496000, v104, v105, "SignalRepository: accumulated value for %s, so marking it prewarmed.", v79, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v106);
          v78 = v182;
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
        }

        v102 = v172;
        v107 = *(v1 + 112);
        sub_23155FCCC(v77, v78, v64, 0);
        v62 = v166;
      }

      v74 = v102 + 1;
      if (v74 == v168)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_78:
    swift_once();
    goto LABEL_61;
  }

LABEL_59:

  v109 = sub_23149B2D0(v108);
  v110 = v178;
  v111 = sub_2314A0560(v178, v4, v109);

  if (!v111)
  {
    (*(v162 + 8))(v64, v163);
    sub_2314A0D7C(v188);
LABEL_75:

    goto LABEL_76;
  }

  os_unfair_lock_lock((v1 + 120));
  sub_23155E880((v1 + 128), v110, v4, v161);
  os_unfair_lock_unlock((v1 + 120));
  if (qword_280D6D838 != -1)
  {
    goto LABEL_78;
  }

LABEL_61:
  v81 = qword_280D6D840;
  sub_231585864();
  if (fabs(v112) > v81)
  {
    os_unfair_lock_lock((v1 + 120));
    v113 = v163;
    v114 = v147;
    (*(v162 + 16))(v147, v64, v163);
    __swift_storeEnumTagSinglePayload(v114, 0, 1, v113);

    sub_2314A0780();
    os_unfair_lock_unlock((v1 + 120));
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v115 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v115, qword_280D72248);

    v80 = sub_231585FE4();
    sub_2315865D4();

    if (OUTLINED_FUNCTION_93_0())
    {
      v116 = OUTLINED_FUNCTION_22();
      v184[0] = OUTLINED_FUNCTION_47();
      *v116 = 136315138;
      v117 = v178;
      *(v116 + 4) = sub_2314A22E8();
      OUTLINED_FUNCTION_51_0();
      _os_log_impl(v118, v119, v120, v121, v116, 0xCu);
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
LABEL_73:

      v117 = v178;
    }

    sub_2314AA3E8();
    v131 = v148;
    v130 = v149;
    v132 = v150;
    (*(v149 + 104))(v148, *MEMORY[0x277D851A8], v150);
    *&v182 = sub_2315866B4();
    (*(v130 + 8))(v131, v132);
    v133 = v151;
    sub_2314AA42C(v81);
    v134 = swift_allocObject();
    v134[2] = v1;
    v134[3] = v117;
    v134[4] = v4;
    v184[4] = sub_231562DD0;
    v184[5] = v134;
    v184[0] = MEMORY[0x277D85DD0];
    v184[1] = 1107296256;
    v184[2] = sub_23149B484;
    v184[3] = &block_descriptor_50;
    v135 = _Block_copy(v184);

    v136 = v153;
    sub_231586054();
    v185[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_23_5();
    sub_2314AA79C(v137, v138);
    v139 = OUTLINED_FUNCTION_13_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
    OUTLINED_FUNCTION_22_9();
    sub_2314AA8B4(v141, &qword_27DD5B180, &unk_231589020);
    v142 = v156;
    v143 = v159;
    sub_2315867C4();
    v144 = v182;
    MEMORY[0x231930340](v133, v136, v142, v135);
    _Block_release(v135);

    sub_2314A0D7C(v188);
    (*(v158 + 8))(v142, v143);
    (*(v155 + 8))(v136, v157);
    (*(v152 + 8))(v133, v154);
    v145 = OUTLINED_FUNCTION_81();
    (v144)(v145);
    (v144)(v64, v135);
    goto LABEL_75;
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v122 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v122, qword_280D72248);

  v123 = sub_231585FE4();
  sub_2315865D4();

  if (OUTLINED_FUNCTION_93_0())
  {
    v81 = OUTLINED_FUNCTION_22_0();
    v184[0] = OUTLINED_FUNCTION_74();
    *v81 = 136315394;
    *(v81 + 4) = sub_2314A22E8();
    *(v81 + 12) = 2080;

    v124 = sub_2314A22E8();

    *(v81 + 14) = v124;
    OUTLINED_FUNCTION_51_0();
    _os_log_impl(v125, v126, v127, v128, v81, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_26_4();
  }

  sub_2314A0D7C(v188);
  v129 = OUTLINED_FUNCTION_81();
  (v123)(v129);
  (v123)(v64, v81);
LABEL_76:
  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_231499828()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE50, &qword_23158DF48);
  }

  else
  {
    return OUTLINED_FUNCTION_73_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_231499854()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE48, &qword_23158DE70);
  }

  else
  {
    return OUTLINED_FUNCTION_73_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_231499880()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE58, &unk_23158DF70);
  }

  else
  {
    return OUTLINED_FUNCTION_73_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_2314998AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  if (*(v0 + 56))
  {

    v4 = *(v0 + 72);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_231499910()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
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

void sub_231499994()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_7_12();
    v15[2] = v3;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v17 = OUTLINED_FUNCTION_34_0();
  if (v1)
  {
    if (v15 != v0 || &v18[16 * v3] <= v17)
    {
      memmove(v17, v18, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v3);
  }
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_10_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_3_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

__n128 OUTLINED_FUNCTION_3_16@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 152);
  v3 = *(v1 - 136);
  *(a1 + 64) = *(v1 - 120);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void OUTLINED_FUNCTION_3_18()
{

  sub_23152D5B8();
}

uint64_t OUTLINED_FUNCTION_3_19()
{
}

uint64_t OUTLINED_FUNCTION_3_21(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_23()
{

  return sub_231586C44();
}

void OUTLINED_FUNCTION_3_27()
{

  JUMPOUT(0x23192FF80);
}

void OUTLINED_FUNCTION_3_30()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

__n128 OUTLINED_FUNCTION_3_33()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

void OUTLINED_FUNCTION_3_34()
{
  *(v2 + 8 * (v3 >> 6) + 64) |= 1 << v3;
  v4 = (*(v2 + 48) + 16 * v3);
  *v4 = v1;
  v4[1] = v0;
  v5 = *(v2 + 56);
}

double OUTLINED_FUNCTION_14_0@<D0>(uint64_t a1@<X8>)
{
  v3 = a1 | (v1 << 6);
  v4 = (*(v2 + 48) + 16 * v3);
  v6 = *v4;
  v5 = v4[1];
  return *(*(v2 + 56) + 8 * v3);
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  v2 = *(v0 - 104);
}

unint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_23149C888(v0, v1);
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  sub_2314A4B70();
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_231585FB4();
}

void OUTLINED_FUNCTION_1_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return sub_231586174();
}

void OUTLINED_FUNCTION_1_15()
{
  v1 = 1 << *(v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t result)
{
  *(result + 16) = v1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 16) + 1;
  return result;
}

void OUTLINED_FUNCTION_1_21(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = v10;
  a1[1] = v11;
  a1[2] = a10;
  a1[3] = v12;
  a1[4] = a7;
  a1[5] = a9;
  a1[6] = a8;
}

uint64_t OUTLINED_FUNCTION_1_23@<X0>(uint64_t a1@<X8>)
{
  *(v3 + a1) = v1;
  v4 = (v3 + *(v2 + 28));
  *v4 = sub_2314E03E4;
  v4[1] = 0;
  return v3 + *(v2 + 20);
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return sub_23151EE1C(v0);
}

uint64_t OUTLINED_FUNCTION_1_32()
{

  return sub_231586C24();
}

uint64_t OUTLINED_FUNCTION_1_33()
{

  return sub_2315414E8(v0, v1, 0, 0);
}

__n128 OUTLINED_FUNCTION_1_36(uint64_t a1)
{
  *(v1 - 176) = a1;
  result = *(v1 - 136);
  v3 = *(v1 - 120);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{

  return sub_2314A5EEC(a9, a10);
}

uint64_t OUTLINED_FUNCTION_1_42(unint64_t *a1)
{

  return sub_231571B6C(a1);
}

uint64_t OUTLINED_FUNCTION_1_44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v2 - 360) = (a1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_45()
{

  return swift_once();
}

id OUTLINED_FUNCTION_1_46(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

double OUTLINED_FUNCTION_15_0@<D0>(uint64_t a1@<X8>)
{
  v3 = a1 | (v1 << 6);
  v4 = *(v2 + 56);
  v5 = (*(v2 + 48) + 16 * v3);
  v7 = *v5;
  v6 = v5[1];
  return *(v4 + 8 * v3);
}

uint64_t OUTLINED_FUNCTION_15_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(a1 + 56) + ((v3 << 10) | (16 * a2)));
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v2 + 40);

  return sub_231586D14();
}

uint64_t OUTLINED_FUNCTION_15_9()
{

  return sub_231586C44();
}

uint64_t OUTLINED_FUNCTION_15_11()
{

  return sub_231585F64();
}

uint64_t sub_23149A630(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_23149A6A0(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x231930B10]();
  a2(a4, a5, a1);

  objc_autoreleasePoolPop(v9);
}

id sub_23149A740@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v11 = *(v1 + 88);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v11;

  sub_23149A8A0(v5, v6);

  return v11;
}

void OUTLINED_FUNCTION_36_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_36_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u64[0] = v3;
  a1[3].n128_u64[1] = v2;

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_36_2()
{
}

double SignalDefinitionParametersProvider.Builder.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 65) = 0u;
  return result;
}

uint64_t sub_23149A8A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_231585D34();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_2314A01D4(v1, v0, 5u);
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return sub_2314D70F4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_8_10(void *result)
{
  result[2] = v1;
  result[3] = v4;
  result[4] = v5;
  result[5] = v3;
  result[6] = v6;
  result[7] = v2;
  return result;
}

void OUTLINED_FUNCTION_8_11(uint64_t a1, uint64_t a2)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_8_12(uint64_t result, float a2)
{
  *v2 = a2;
  *(v3 - 104) = 0;
  *(v3 - 96) = 0xE000000000000000;
  *(v3 - 88) = result;
  return result;
}

void OUTLINED_FUNCTION_6_2(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_8_14()
{

  JUMPOUT(0x231930660);
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return sub_231585D34();
}

void OUTLINED_FUNCTION_8_17()
{

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_8_18()
{
  v2 = *(v0 - 248);
  v3 = *v2;
  *(v0 - 288) = *v2;
  v4 = *(v2 + 8);
  *(v0 - 316) = v4;

  return sub_2314A5168(v3, v4);
}

uint64_t OUTLINED_FUNCTION_8_19()
{

  return sub_231586A64();
}

void OUTLINED_FUNCTION_8_20()
{

  sub_2314A7FE0();
}

uint64_t OUTLINED_FUNCTION_8_23(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 216);

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

unint64_t OUTLINED_FUNCTION_8_26(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_23149C888(a2, a3);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t result)
{
  v1 = *(result + 64);
  v2 = 1 << *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_21_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id OUTLINED_FUNCTION_21_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

BOOL OUTLINED_FUNCTION_21_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_2315860F4();
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return sub_231586A64();
}

void OUTLINED_FUNCTION_16_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return sub_231586C44();
}

uint64_t OUTLINED_FUNCTION_33_0()
{

  return sub_231586A64();
}

void OUTLINED_FUNCTION_33_1()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x231931280);
}

unint64_t OUTLINED_FUNCTION_33_2(uint64_t a1, char a2)
{
  v4 = *v2;

  return sub_231574C34(a2);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_19_5()
{
  *(v1 - 112) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_19_6()
{
}

uint64_t sub_23149B09C()
{
  v0 = qword_27DD5BA30;

  return v0;
}

uint64_t sub_23149B120()
{
  v0 = qword_27DD5BAB0;

  return v0;
}

uint64_t sub_23149B158()
{
  v0 = qword_27DD5BAC0;

  return v0;
}

uint64_t sub_23149B190()
{
  v0 = qword_27DD5BB50;

  return v0;
}

uint64_t sub_23149B1C8()
{
  v0 = qword_27DD5BB70;

  return v0;
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_allocObject();
}

void sub_23149B228(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_3_26(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23149D4F8(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_26();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_38@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_23149B484(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t *OUTLINED_FUNCTION_91()
{
  *(v2 - 136) = v1;
  *(v2 - 128) = *(v0 + 8);

  return __swift_allocate_boxed_opaque_existential_1((v2 - 160));
}

uint64_t sub_23149B4E8(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v38 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v35 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x28223BE20](v9);
    v30 = v7;
    v32 = (v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_23149BEE0(0, v7, v32);
    v33 = 0;
    v34 = v4;
    v7 = 0;
    v10 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v4 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v3 = v14 | (v7 << 6);
      v17 = *(v34 + 48) + 24 * v3;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = __swift_project_boxed_opaque_existential_1((v35 + 72), *(v35 + 96));
      v36[0] = v18;
      v36[1] = v19;
      v37 = v20;
      v22 = *v21;
      sub_23149D47C(v18, v19, v20);
      v8 = sub_23149BF44(v36);
      sub_2314A01D4(v18, v19, v20);
      if (v8)
      {
        *(v32 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_23149E818(v32, v30, v33, v34);

          goto LABEL_17;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_16;
      }

      v16 = *(v10 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v35;

  v24 = sub_231561D60(v27, v7, v4, v28);

  MEMORY[0x231931280](v27, -1, -1);

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_23149B7B4()
{
  OUTLINED_FUNCTION_93();
  v59 = sub_231585FD4();
  v1 = OUTLINED_FUNCTION_4_1(v59);
  v58 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_46_1(v5);

  v65 = v0;
  isUniquelyReferenced_nonNull_native = 0;
  v8 = sub_23149B4E8(v6, v0);
  if (!*(v8 + 16))
  {
    OUTLINED_FUNCTION_3_6();

    return;
  }

  sub_231585D64();
  sub_231585D44();
  sub_231585D54();

  if (qword_280D70420 != -1)
  {
    goto LABEL_59;
  }

LABEL_3:
  v9 = sub_231585FF4();
  __swift_project_value_buffer(v9, qword_280D72248);

  v10 = sub_231585FE4();
  sub_2315865D4();

  if (OUTLINED_FUNCTION_93_0())
  {
    v11 = OUTLINED_FUNCTION_22();
    v12 = OUTLINED_FUNCTION_47();
    v67 = v12;
    *v11 = 136315138;
    sub_2314A5880();
    sub_231586524();
    v13 = sub_2314A22E8();

    *(v11 + 4) = v13;
    OUTLINED_FUNCTION_51_0();
    _os_log_impl(v14, v15, v16, v17, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_10();
  }

  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  qword_280D72240;
  sub_231585FC4();
  if (*(v8 + 16))
  {
    v18 = *(v65 + 16);
    sub_23149EAAC();
    v20 = v19;
  }

  else
  {

    v20 = *(v65 + 16);
  }

  type metadata accessor for SignalGraph();
  swift_initStackObject();
  sub_2314A6B14(v20);
  if (isUniquelyReferenced_nonNull_native)
  {

    v22 = sub_231585FE4();
    v23 = sub_2315865D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_5_3();
      *v24 = 0;
      _os_log_impl(&dword_231496000, v22, v23, "SignalRepository: Couldn't initialize a graph, bailing early", v24, 2u);
      OUTLINED_FUNCTION_26_4();
    }

    (*(v58 + 8))(v61, v59);
    goto LABEL_52;
  }

  isUniquelyReferenced_nonNull_native = sub_2314A75E8();
  sub_2315866D4();
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_64_0();
  v26 = *(v25 - 256);
  sub_231585FA4();
  v63 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v63)
  {
LABEL_51:

    sub_2315866C4();
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_64_0();
    v57 = *(v56 - 256);
    sub_231585FA4();

    (*(v58 + 8))(v57, v59);
LABEL_52:
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v27 = 0;
  v62 = isUniquelyReferenced_nonNull_native + 32;
  v60 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v27 >= *(isUniquelyReferenced_nonNull_native + 16))
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      OUTLINED_FUNCTION_3();
      swift_once();
      goto LABEL_3;
    }

    v28 = *(v62 + 8 * v27);
    if ((v28 & 0xC000000000000001) != 0)
    {

      v29 = sub_231586864();
      if (v29)
      {
        break;
      }

      goto LABEL_49;
    }

    v29 = *(v28 + 16);

    if (v29)
    {
      break;
    }

LABEL_49:

    v8 = MEMORY[0x277D84F90];
LABEL_50:
    ++v27;
    sub_2314A8208();

    if (v27 == v63)
    {
      goto LABEL_51;
    }
  }

  v71 = MEMORY[0x277D84F90];
  sub_2314A5918(0, v29 & ~(v29 >> 63), 0);
  v8 = v71;
  v68 = sub_2314AB834(v28);
  v69 = v30;
  v70 = v31 & 1;
  if (v29 < 0)
  {
    goto LABEL_58;
  }

  v64 = v27;
  v32 = 0;
  while (2)
  {
    if (__OFADD__(v32++, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v34 = v68;
    isUniquelyReferenced_nonNull_native = v69;
    v35 = v70;
    v66 = *(sub_2314AB894(v68, v69, v70, v28) + 16);

    v71 = v8;
    v37 = *(v8 + 16);
    v36 = *(v8 + 24);
    if (v37 >= v36 >> 1)
    {
      v55 = OUTLINED_FUNCTION_18(v36);
      sub_2314A5918(v55, v37 + 1, 1);
      v8 = v71;
    }

    *(v8 + 16) = v37 + 1;
    *(v8 + 16 * v37 + 32) = v66;
    if ((v28 & 0xC000000000000001) == 0)
    {
      if (v35)
      {
        goto LABEL_61;
      }

      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      v38 = 1 << *(v28 + 32);
      if (v34 >= v38)
      {
        goto LABEL_54;
      }

      v39 = v34 >> 6;
      v40 = *(v28 + 56 + 8 * (v34 >> 6));
      if (((v40 >> v34) & 1) == 0)
      {
        goto LABEL_55;
      }

      if (*(v28 + 36) != isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_56;
      }

      v41 = v40 & (-2 << (v34 & 0x3F));
      if (v41)
      {
        v38 = __clz(__rbit64(v41)) | v34 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v39 << 6;
        v44 = v39 + 1;
        v45 = (v28 + 64 + 8 * v39);
        while (v44 < (v38 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            OUTLINED_FUNCTION_76_0();
            sub_2314ABA68(v48, v49, v50);
            v38 = __clz(__rbit64(v46)) + v43;
            goto LABEL_45;
          }
        }

        OUTLINED_FUNCTION_76_0();
        sub_2314ABA68(v51, v52, v53);
      }

LABEL_45:
      v54 = *(v28 + 36);
      v68 = v38;
      v69 = v54;
      v70 = 0;
      goto LABEL_46;
    }

    if (v35)
    {
      if (sub_231586834())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      }

      else
      {
        isUniquelyReferenced_nonNull_native = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE30, &unk_23158DE50);
      v42 = sub_231586544();
      sub_2315868B4();
      v42(&v67, 0);
LABEL_46:
      if (v32 == v29)
      {

        sub_2314ABA68(v68, v69, v70);
        isUniquelyReferenced_nonNull_native = v60;
        v27 = v64;
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_23149BEE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231589000;
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

uint64_t sub_23149BF44(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v68 - v6;
  v7 = sub_231585884();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(a1 + 16);
  v16(v13);
  v70 = sub_23149C774();
  v19 = *(v10 + 8);
  v20 = OUTLINED_FUNCTION_4_2();
  v21(v20);
  v22 = swift_allocObject();
  v23 = sub_23149C4FC();
  *(v22 + 16) = v23;
  v71 = v14;
  v72 = v15;
  v73 = v18;
  sub_23149D47C(v14, v15, v18);
  sub_231586204();
  v24 = sub_23149CA24(0x74756F656D6974, 0xE700000000000000, v23);
  if ((v25 & 1) == 0)
  {
    v26 = v24;
    if (qword_280D6E140 != -1)
    {
      OUTLINED_FUNCTION_1_45();
    }

    v27 = sub_2314A5810(0x74756F656D6974, 0xE700000000000000, qword_280D6E148);
    if (v28)
    {
      v29 = v27;

      if (__OFADD__(v26, v29))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v70 < v26 + v29)
      {

        if (qword_280D70420 == -1)
        {
LABEL_8:
          v30 = sub_231585FF4();
          __swift_project_value_buffer(v30, qword_280D72248);
          v31 = sub_231585FE4();
          v32 = sub_2315865D4();
          if (!os_log_type_enabled(v31, v32))
          {
LABEL_21:

LABEL_28:

            return 0;
          }

          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_4_32();
          _os_log_impl(v33, v34, v35, v36, v37, 2u);
LABEL_20:
          OUTLINED_FUNCTION_10();
          goto LABEL_21;
        }

LABEL_32:
        OUTLINED_FUNCTION_6_0();
        goto LABEL_8;
      }
    }
  }

  if (qword_280D6E140 != -1)
  {
    OUTLINED_FUNCTION_1_45();
  }

  v38 = OUTLINED_FUNCTION_4_2();
  v41 = sub_2314A5810(v38, v39, v40);
  if (!v42)
  {

    return 1;
  }

  v43 = v41;
  v44 = *(v22 + 16);
  v45 = OUTLINED_FUNCTION_4_2();
  v48 = sub_23149CA24(v45, v46, v47);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
    if (!__OFADD__(v48, v43))
    {
      if (v70 < v48 + v43)
      {
        if (qword_280D70420 != -1)
        {
          OUTLINED_FUNCTION_6_0();
        }

        v51 = sub_231585FF4();
        __swift_project_value_buffer(v51, qword_280D72248);

        v31 = sub_231585FE4();
        v52 = sub_2315865D4();

        if (!os_log_type_enabled(v31, v52))
        {

          goto LABEL_28;
        }

        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v71 = v54;
        *v53 = 136315138;
        OUTLINED_FUNCTION_4_2();
        v55 = sub_2314A22E8();

        *(v53 + 4) = v55;
        OUTLINED_FUNCTION_4_32();
        _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        OUTLINED_FUNCTION_10();
        goto LABEL_20;
      }

      goto LABEL_22;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_22:
  v61 = *(v22 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v22 + 16);
  sub_23157562C();
  *(v22 + 16) = v71;

  if ((sub_231580090() & 1) == 0)
  {
    v64 = sub_2315864A4();
    v63 = 1;
    v65 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v64);
    v66 = swift_allocObject();
    v66[2] = 0;
    v66[3] = 0;
    v66[4] = v2;
    v66[5] = v22;

    sub_23157FCA4(0, 0, v65, &unk_23158F5C8, v66);

    return v63;
  }

  v62 = *(v22 + 16);

  sub_2315800EC();

  return 1;
}

uint64_t sub_23149C47C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23149C4B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23149C4FC()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_23149C7D4(0xD000000000000024, 0x80000002315922C0);
  if (!v2)
  {
    v23 = 0u;
    v24 = 0u;
LABEL_9:
    sub_2314CC1C4(&v23, &qword_27DD5B218, &unk_23158A010);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = sub_231586174();
  v7 = [v3 objectForKey_];

  if (v7)
  {
    sub_2315867A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (!*(&v22 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2E8, &unk_23158B460);
  if (swift_dynamicCast())
  {
    v8 = v21;
    goto LABEL_11;
  }

LABEL_10:
  v8 = sub_2315860F4();
LABEL_11:
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v9 = sub_231585FF4();
  __swift_project_value_buffer(v9, qword_280D72248);

  v10 = sub_231585FE4();
  v11 = sub_2315865D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v23 = v13;
    *v12 = 136315138;
    sub_2315860E4();
    v14 = sub_2314A22E8();

    *(v12 + 4) = v14;
    OUTLINED_FUNCTION_4_32();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  return v8;
}

uint64_t sub_23149C774()
{
  result = sub_231585784();
  v2 = round(v1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_23149C7D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_231586174();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_23149C888(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_1();
  sub_231586274();
  v4 = sub_231586D44();

  return sub_23149C958(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_46()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_46_2(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 104);

  return MEMORY[0x2821FDAA0](a1, a2, v4, a1);
}

unint64_t sub_23149C958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_231586C44() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23149CA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_23149C888(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_25_2(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23149CA8C(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v2 = MEMORY[0x277D84FA0];
    goto LABEL_100;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B118, &qword_231588050);
  v2 = OUTLINED_FUNCTION_9_2();
  v123 = *(v1 + 16);
  if (v123)
  {
    v3 = 0;
    v121 = v1;
    v122 = v1 + 32;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_102;
      }

      v4 = (v122 + 24 * v3);
      v6 = *v4;
      v5 = v4[1];
      v7 = *(v4 + 16);
      ++v3;
      v8 = *(v2 + 40);
      sub_231586D14();
      switch(v7)
      {
        case 1:
          v9 = 1;
          goto LABEL_11;
        case 2:
          v9 = 2;
          goto LABEL_11;
        case 3:
          v9 = 3;
          goto LABEL_11;
        case 4:
          v9 = 4;
          goto LABEL_11;
        case 5:
          if (v6 | v5)
          {
            if (v6 ^ 1 | v5)
            {
              v101 = 7;
            }

            else
            {
              v101 = 6;
            }
          }

          else
          {
            v101 = 5;
          }

          MEMORY[0x231930A00](v101);
          goto LABEL_12;
        default:
          v9 = 0;
LABEL_11:
          MEMORY[0x231930A00](v9);

          sub_231586274();
LABEL_12:
          v10 = sub_231586D44() & ~(-1 << *(v2 + 32));
          OUTLINED_FUNCTION_10_3();
          if ((v13 & v12) == 0)
          {
            goto LABEL_76;
          }

          v127 = v3;
          v15 = ~v14;
          v16 = v6 != 2;
          v17 = v6 != 1;
          if (v5)
          {
            v16 = 1;
            v17 = 1;
          }

          if (v7 != 5)
          {
            v16 = 1;
          }

          v126 = v16;
          v18 = v7 != 5 || v17;
          v125 = v18;
          if (v5 | v6)
          {
            v19 = 0;
          }

          else
          {
            v19 = v7 == 5;
          }

          v124 = v19;
          break;
      }

      while (2)
      {
        v20 = *(v2 + 48) + 24 * v10;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);
        switch(v23)
        {
          case 1u:
            if (v7 != 1)
            {
              v79 = OUTLINED_FUNCTION_1_1();
              v27 = OUTLINED_FUNCTION_0_3(v79, v80, v81);
              v29 = 1;
              goto LABEL_73;
            }

            if (v22 == v6 && v21 == v5)
            {
              v107 = *(v20 + 8);

              v108 = OUTLINED_FUNCTION_3_5();
              sub_2314A01D4(v108, v109, 1u);
LABEL_87:
              v119 = OUTLINED_FUNCTION_3_5();
              v106 = 1;
              goto LABEL_96;
            }

            v61 = OUTLINED_FUNCTION_2_3();
            v62 = OUTLINED_FUNCTION_3_5();
            v64 = OUTLINED_FUNCTION_0_3(v62, v63, 1u);
            v66 = OUTLINED_FUNCTION_0_3(v64, v65, 1u);
            sub_2314A01D4(v66, v67, 1u);
            v68 = OUTLINED_FUNCTION_3_5();
            sub_2314A01D4(v68, v69, 1u);
            if (v61)
            {
              goto LABEL_87;
            }

            goto LABEL_74;
          case 2u:
            if (v7 != 2)
            {
              v73 = OUTLINED_FUNCTION_1_1();
              v27 = OUTLINED_FUNCTION_0_3(v73, v74, v75);
              v29 = 2;
              goto LABEL_73;
            }

            if (v22 == v6 && v21 == v5)
            {
              v102 = *(v20 + 8);

              v103 = OUTLINED_FUNCTION_3_5();
              sub_2314A01D4(v103, v104, 2u);
LABEL_85:
              v119 = OUTLINED_FUNCTION_3_5();
              v106 = 2;
              goto LABEL_96;
            }

            v41 = OUTLINED_FUNCTION_2_3();
            v42 = OUTLINED_FUNCTION_3_5();
            v44 = OUTLINED_FUNCTION_0_3(v42, v43, 2u);
            v46 = OUTLINED_FUNCTION_0_3(v44, v45, 2u);
            sub_2314A01D4(v46, v47, 2u);
            v48 = OUTLINED_FUNCTION_3_5();
            sub_2314A01D4(v48, v49, 2u);
            if (v41)
            {
              goto LABEL_85;
            }

            goto LABEL_74;
          case 3u:
            if (v7 != 3)
            {
              v76 = OUTLINED_FUNCTION_1_1();
              v27 = OUTLINED_FUNCTION_0_3(v76, v77, v78);
              v29 = 3;
              goto LABEL_73;
            }

            if (v22 == v6 && v21 == v5)
            {
              v110 = *(v20 + 8);

              v111 = OUTLINED_FUNCTION_3_5();
              sub_2314A01D4(v111, v112, 3u);
LABEL_89:
              v119 = OUTLINED_FUNCTION_3_5();
              v106 = 3;
              goto LABEL_96;
            }

            v51 = OUTLINED_FUNCTION_2_3();
            v52 = OUTLINED_FUNCTION_3_5();
            v54 = OUTLINED_FUNCTION_0_3(v52, v53, 3u);
            v56 = OUTLINED_FUNCTION_0_3(v54, v55, 3u);
            sub_2314A01D4(v56, v57, 3u);
            v58 = OUTLINED_FUNCTION_3_5();
            sub_2314A01D4(v58, v59, 3u);
            if (v51)
            {
              goto LABEL_89;
            }

            goto LABEL_74;
          case 4u:
            if (v7 != 4)
            {
              v70 = OUTLINED_FUNCTION_1_1();
              v27 = OUTLINED_FUNCTION_0_3(v70, v71, v72);
              v29 = 4;
              goto LABEL_73;
            }

            if (v22 == v6 && v21 == v5)
            {
              v113 = *(v20 + 8);

              v114 = OUTLINED_FUNCTION_3_5();
              sub_2314A01D4(v114, v115, 4u);
LABEL_91:
              v119 = OUTLINED_FUNCTION_3_5();
              v106 = 4;
              goto LABEL_96;
            }

            v31 = OUTLINED_FUNCTION_2_3();
            v32 = OUTLINED_FUNCTION_3_5();
            v34 = OUTLINED_FUNCTION_0_3(v32, v33, 4u);
            v36 = OUTLINED_FUNCTION_0_3(v34, v35, 4u);
            sub_2314A01D4(v36, v37, 4u);
            v38 = OUTLINED_FUNCTION_3_5();
            sub_2314A01D4(v38, v39, 4u);
            if (v31)
            {
              goto LABEL_91;
            }

            goto LABEL_74;
          case 5u:
            if (v22 | v21)
            {
              if (v22 ^ 1 | v21)
              {
                if (!v126)
                {
                  OUTLINED_FUNCTION_8_3();
                  v119 = 2;
                  goto LABEL_95;
                }
              }

              else if ((v125 & 1) == 0)
              {
                OUTLINED_FUNCTION_8_3();
                v119 = 1;
LABEL_95:
                v105 = 0;
                v106 = 5;
                goto LABEL_96;
              }
            }

            else if (v124)
            {
              OUTLINED_FUNCTION_8_3();
              v119 = 0;
              goto LABEL_95;
            }

            v27 = OUTLINED_FUNCTION_1_1();
            goto LABEL_73;
          default:
            if (v7)
            {
              v24 = OUTLINED_FUNCTION_1_1();
              v27 = OUTLINED_FUNCTION_0_3(v24, v25, v26);
              v29 = 0;
LABEL_73:
              v92 = OUTLINED_FUNCTION_0_3(v27, v28, v29);
              sub_2314A01D4(v92, v93, v23);
              v94 = OUTLINED_FUNCTION_1_1();
              sub_2314A01D4(v94, v95, v96);
LABEL_74:
              v10 = (v10 + 1) & v15;
              OUTLINED_FUNCTION_10_3();
              if ((v12 & v13) == 0)
              {
                v1 = v121;
                v3 = v127;
LABEL_76:
                *(v2 + 56 + 8 * v11) = v12 | v13;
                v97 = *(v2 + 48) + 24 * v10;
                *v97 = v6;
                *(v97 + 8) = v5;
                *(v97 + 16) = v7;
                v98 = *(v2 + 16);
                v99 = __OFADD__(v98, 1);
                v100 = v98 + 1;
                if (!v99)
                {
                  *(v2 + 16) = v100;
                  goto LABEL_97;
                }

LABEL_102:
                __break(1u);
                JUMPOUT(0x23149CFFCLL);
              }

              continue;
            }

            if (v22 != v6 || v21 != v5)
            {
              v83 = OUTLINED_FUNCTION_2_3();
              v84 = OUTLINED_FUNCTION_3_5();
              v86 = OUTLINED_FUNCTION_0_3(v84, v85, 0);
              v88 = OUTLINED_FUNCTION_0_3(v86, v87, 0);
              sub_2314A01D4(v88, v89, 0);
              v90 = OUTLINED_FUNCTION_3_5();
              sub_2314A01D4(v90, v91, 0);
              if (v83)
              {
                goto LABEL_93;
              }

              goto LABEL_74;
            }

            v116 = *(v20 + 8);

            v117 = OUTLINED_FUNCTION_3_5();
            sub_2314A01D4(v117, v118, 0);
LABEL_93:
            v119 = OUTLINED_FUNCTION_3_5();
            v106 = 0;
LABEL_96:
            sub_2314A01D4(v119, v105, v106);
            v1 = v121;
            v3 = v127;
LABEL_97:
            if (v3 == v123)
            {
              goto LABEL_100;
            }

            break;
        }

        break;
      }
    }
  }

LABEL_100:

  return v2;
}

uint64_t OUTLINED_FUNCTION_9_1()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return sub_231586924();
}

uint64_t OUTLINED_FUNCTION_9_9@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8 * v2) = v1;
  v4 = **(v3 - 288);
  return *(v3 - 224);
}

uint64_t OUTLINED_FUNCTION_9_10()
{
  v1 = **(v0 - 240);
  result = *(v0 - 200);
  v3 = *(v0 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  *(v16 - 104) = a1;
  *v15 = a15;

  return sub_2314A22E8();
}

void OUTLINED_FUNCTION_9_14()
{

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_2315860F4();
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return sub_231586154();
}

uint64_t OUTLINED_FUNCTION_9_21()
{
  *(*(v1 + 56) + 8 * v2) = v0;
  v5 = **(v4 - 168);
  return v3;
}

uint64_t OUTLINED_FUNCTION_10_2()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_5()
{
  v2 = *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_231586AE4();
}

uint64_t OUTLINED_FUNCTION_10_10()
{

  return sub_231585D34();
}

uint64_t OUTLINED_FUNCTION_10_11@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 312);
  v4 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return sub_2314A4B70();
}

uint64_t OUTLINED_FUNCTION_10_20()
{
  v3 = *(v0 + 56);
  v4 = (*(v0 + 48) + 16 * (__clz(__rbit64(v1)) | (v2 << 6)));
  v6 = *v4;
  return v4[1];
}

uint64_t OUTLINED_FUNCTION_10_22()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return sub_231585FA4();
}

uint64_t get_enum_tag_for_layout_string_11SiriSignals27SignalCachingStrategyOptionO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_23149D47C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_35_2()
{

  sub_23152D598();
}

uint64_t sub_23149D510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_23149D588()
{
  OUTLINED_FUNCTION_13_4();
  if (v5)
  {
    OUTLINED_FUNCTION_3_13();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
    v9 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_12();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_17_4();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_7_8()
{
  result = *(v0 - 224);
  v2 = *(v0 - 208);
  v3 = *(v0 - 192);
  return result;
}

void OUTLINED_FUNCTION_7_9()
{

  sub_2314B87DC(v1, v0, 1, 1, 0);
}

void OUTLINED_FUNCTION_7_10()
{

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t result, float a2)
{
  *v2 = a2;
  *(v3 - 112) = 0;
  *(v3 - 104) = 0xE000000000000000;
  *(v3 - 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_15()
{
  result = *(v0 - 464);
  v2 = *(v0 - 448);
  v3 = *(v0 - 344);
  v4 = *(v0 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
}

void OUTLINED_FUNCTION_7_21()
{

  JUMPOUT(0x23192FF80);
}

BOOL OUTLINED_FUNCTION_7_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(a13 + 16) = v25;
  *(a13 + 8 * v24 + 32) = v26;

  return sub_2314A819C(a24);
}

uint64_t OUTLINED_FUNCTION_7_29()
{
  v1 = *(*(v0 - 312) + 8);
  result = *(v0 - 240);
  v3 = *(v0 - 304);
  return result;
}

void OUTLINED_FUNCTION_60()
{

  sub_23155A76C();
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_231586C44();
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_231585FB4();
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_2_14()
{
  *(*(v0 + 56) + 8 * v2) = v1;
  v4 = *(v3 - 224);
  v5 = **(v3 - 232);
  return *(v3 - 168);
}

uint64_t OUTLINED_FUNCTION_2_15()
{
  *(*(v1 + 56) + 8 * v0) = v2;
  v4 = **(v3 - 256);
  result = *(v3 - 192);
  v6 = *(v3 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_16()
{
  *(*(v1 + 56) + 8 * v0) = v2;
  v4 = *(v3 - 216);
  v5 = **(v3 - 208);
  return *(v3 - 168);
}

uint64_t OUTLINED_FUNCTION_2_17()
{
  result = *(v0 - 192);
  v2 = *(v0 - 176);
  return result;
}

void OUTLINED_FUNCTION_2_19()
{

  sub_23152D5B8();
}

void OUTLINED_FUNCTION_2_20()
{

  JUMPOUT(0x231930660);
}

char *OUTLINED_FUNCTION_2_21()
{
  v4 = *v2;
  v5 = v2[1];
  *v1 = v4;
  v1[1] = v5;
  v6 = *(v3 + 16);
  return v1 + *(v0 + 20);
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return sub_23151EE1C(v0);
}

__n128 OUTLINED_FUNCTION_2_23()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  result = *(v0 + 48);
  v4 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return sub_231586C24();
}

void OUTLINED_FUNCTION_2_28()
{

  JUMPOUT(0x23192FF80);
}

unint64_t OUTLINED_FUNCTION_2_30()
{

  return sub_23149C888(v1, v0);
}

__n128 OUTLINED_FUNCTION_2_33(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return a1[2];
}

uint64_t OUTLINED_FUNCTION_2_40(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(*(v14 + 56) + 8 * v13) = a13;
}

__n128 OUTLINED_FUNCTION_0_12()
{
  v4 = v1 + 40 * v2;
  result = *(v3 - 152);
  v6 = *(v3 - 136);
  *(v4 + 64) = *(v3 - 120);
  *(v4 + 32) = result;
  *(v4 + 48) = v6;
  v7 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_23@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 56) = a2;
  *(a1 + 64) = v2;
  *(a1 + 32) = v3;
  return 1480077349;
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_40()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_43()
{
  v3 = *(v2 - 112);
  *(v3 + 8 * (v1 >> 6) + 64) |= 1 << v1;
  v4 = (*(v3 + 48) + 16 * v1);
  result = *(v2 - 200);
  v6 = *(v2 - 184);
  v7 = *(v2 - 176);
  *v4 = *(v2 - 192);
  v4[1] = v7;
  *(*(v3 + 56) + 8 * v1) = v0;
  v8 = **(v2 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_44()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_47()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_48()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_49()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return sub_231586C44();
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_56()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_57()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_58()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_59()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_60()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_61()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_62()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_63()
{

  return sub_231586D14();
}

uint64_t OUTLINED_FUNCTION_0_64()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_65()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_66()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_67()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_69()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_73()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_75()
{

  return sub_2315414E8(v0, v1, 0, 0);
}

uint64_t OUTLINED_FUNCTION_0_79()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_81(uint64_t result)
{
  v2 = result & ~(-1 << *(v1 + 32));
  v3 = *(v1 + 56 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_83(unint64_t *a1)
{

  return sub_231571B6C(a1);
}

uint64_t OUTLINED_FUNCTION_0_85()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_86()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_88()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_89()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_90()
{

  return swift_once();
}

uint64_t sub_23149E818(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x277D84FA0];
LABEL_6:

    return v8;
  }

  if (*(a4 + 16) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B118, &qword_231588050);
    v7 = sub_231586924();
    v8 = v7;
    if (a2 < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = *a1;
    }

    v11 = 0;
    v12 = v7 + 56;
    v13 = 24;
    v39 = v4;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v18 = *(v4 + 48) + (v14 | (v11 << 6)) * v13;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v8 + 40);
      sub_231586D14();
      switch(v21)
      {
        case 1:
          v23 = 1;
          goto LABEL_23;
        case 2:
          v23 = 2;
          goto LABEL_23;
        case 3:
          v23 = 3;
          goto LABEL_23;
        case 4:
          v23 = 4;
          goto LABEL_23;
        case 5:
          if (v19 | v20)
          {
            if (v19 ^ 1 | v20)
            {
              v38 = 7;
            }

            else
            {
              v38 = 6;
            }
          }

          else
          {
            v38 = 5;
          }

          MEMORY[0x231930A00](v38);
          goto LABEL_24;
        default:
          v23 = 0;
LABEL_23:
          MEMORY[0x231930A00](v23);

          sub_231586274();
LABEL_24:
          v24 = sub_231586D44();
          OUTLINED_FUNCTION_1_28(v24);
          if (((v27 << v26) & ~*(v12 + 8 * v25)) != 0)
          {
            OUTLINED_FUNCTION_3_15();
          }

          else
          {
            OUTLINED_FUNCTION_2_18();
            do
            {
              if (++v28 == v30 && (v29 & 1) != 0)
              {
                goto LABEL_42;
              }

              v31 = v28 == v30;
              if (v28 == v30)
              {
                v28 = 0;
              }

              v29 |= v31;
            }

            while (*(v12 + 8 * v28) == -1);
            OUTLINED_FUNCTION_11();
          }

          OUTLINED_FUNCTION_12_0();
          *(v12 + v32) |= v33;
          v35 = *(v8 + 48) + 24 * v34;
          *v35 = v19;
          *(v35 + 8) = v20;
          *(v35 + 16) = v36;
          OUTLINED_FUNCTION_3_24();
          if (v37)
          {
            goto LABEL_43;
          }

          v4 = v39;
          break;
      }
    }

    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        JUMPOUT(0x23149EA94);
      }

      if (v11 >= a2)
      {
        goto LABEL_6;
      }

      ++v15;
      if (a1[v11])
      {
        OUTLINED_FUNCTION_9_0();
        v9 = v17 & v16;
        goto LABEL_17;
      }
    }
  }

  return v4;
}

void sub_23149EAAC()
{
  OUTLINED_FUNCTION_93();
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_17:
    v25 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v2 = (v0 + 32);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *(*(v2 + 1) + 72);
    v26 = *v2;
    v5 = *(v4() + 32);
    v6 = v5 & 0x3F;
    v7 = ((1 << v5) + 63) >> 6;

    if (v6 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();

    OUTLINED_FUNCTION_58_0();
    v15 = sub_231561CD0(v20, v21, v22, v23);
    v14 = v7;

    if (v7)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_10();
LABEL_6:
    v16 = v15[2];

    if (v16)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2314A5918(0, *(v3 + 16) + 1, 1);
        v3 = v27;
      }

      v19 = *(v3 + 16);
      v18 = *(v3 + 24);
      if (v19 >= v18 >> 1)
      {
        v24 = OUTLINED_FUNCTION_18(v18);
        sub_2314A5918(v24, v19 + 1, 1);
        v3 = v27;
      }

      *(v3 + 16) = v19 + 1;
      *(v3 + 16 * v19 + 32) = v26;
    }

    ++v2;
    if (!--v1)
    {
      goto LABEL_17;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe);
  sub_23149BEE0(0, v7, &v26 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_58_0();
  v13 = sub_23149ED34(v9, v10, v11, v12);
  v14 = v7;
  if (!v7)
  {
    v15 = v13;

    goto LABEL_6;
  }

  swift_willThrow();

  __break(1u);
LABEL_19:

  OUTLINED_FUNCTION_10();
  __break(1u);
}

uint64_t sub_23149ED34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_105;
  }

  v143 = 0;
  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;
  v146 = a3 + 56;
  v134 = v11;
  v136 = a4 + 56;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v13 = (v10 - 1) & v10;
LABEL_13:
    v16 = *(v4 + 48) + 24 * (v12 | (v6 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v5 + 40);
    sub_231586D14();
    v150 = v19;
    v139 = v13;
    v141 = v6;
    switch(v19)
    {
      case 1:
        v21 = 1;
        goto LABEL_19;
      case 2:
        v21 = 2;
        goto LABEL_19;
      case 3:
        v21 = 3;
        goto LABEL_19;
      case 4:
        v21 = 4;
        goto LABEL_19;
      case 5:
        if (v18 | v17)
        {
          if (v18 ^ 1 | v17)
          {
            v59 = 7;
          }

          else
          {
            v59 = 6;
          }
        }

        else
        {
          v59 = 5;
        }

        MEMORY[0x231930A00](v59);
        goto LABEL_20;
      default:
        v21 = 0;
LABEL_19:
        MEMORY[0x231930A00](v21);

        sub_231586274();
LABEL_20:
        v22 = sub_231586D44();
        v23 = -1 << *(v5 + 32);
        v24 = v22 & ~v23;
        v25 = v24 >> 6;
        v26 = 1 << v24;
        if (((1 << v24) & *(v146 + 8 * (v24 >> 6))) == 0)
        {
          goto LABEL_83;
        }

        v144 = ~v23;
        v27 = v18 != 2;
        v28 = v18 != 1;
        if (v17)
        {
          v27 = 1;
          v28 = 1;
        }

        if (v19 != 5)
        {
          v27 = 1;
        }

        v132 = v27;
        v29 = v19 != 5 || v28;
        v131 = v29;
        if (v17 | v18)
        {
          v30 = 0;
        }

        else
        {
          v30 = v19 == 5;
        }

        v130 = v30;
        break;
    }

LABEL_32:
    v31 = *(v5 + 48) + 24 * v24;
    v33 = *v31;
    v32 = *(v31 + 8);
    v34 = *(v31 + 16);
    switch(v34)
    {
      case 1u:
        v35 = v150;
        if (v150 != 1)
        {
          sub_23149D47C(v18, v17, v150);
          v36 = v33;
          v37 = v32;
          v38 = 1;
          goto LABEL_81;
        }

        if (v33 == v18 && v32 == v17)
        {
          v63 = *(v31 + 8);

          sub_2314A01D4(v18, v17, 1u);
LABEL_93:
          v67 = v18;
          v61 = v17;
          v62 = 1;
          goto LABEL_102;
        }

        v52 = *v31;
        v53 = *(v31 + 8);
        v54 = sub_231586C44();
        sub_23149D47C(v18, v17, 1u);
        sub_23149D47C(v33, v32, 1u);
        sub_2314A01D4(v33, v32, 1u);
        sub_2314A01D4(v18, v17, 1u);
        if (v54)
        {
          goto LABEL_93;
        }

        goto LABEL_82;
      case 2u:
        v35 = v150;
        if (v150 != 2)
        {
          sub_23149D47C(v18, v17, v150);
          v36 = v33;
          v37 = v32;
          v38 = 2;
          goto LABEL_81;
        }

        if (v33 == v18 && v32 == v17)
        {
          v60 = *(v31 + 8);

          sub_2314A01D4(v18, v17, 2u);
LABEL_91:
          v67 = v18;
          v61 = v17;
          v62 = 2;
          goto LABEL_102;
        }

        v44 = *v31;
        v45 = *(v31 + 8);
        v46 = sub_231586C44();
        sub_23149D47C(v18, v17, 2u);
        sub_23149D47C(v33, v32, 2u);
        sub_2314A01D4(v33, v32, 2u);
        sub_2314A01D4(v18, v17, 2u);
        if (v46)
        {
          goto LABEL_91;
        }

        goto LABEL_82;
      case 3u:
        v35 = v150;
        if (v150 != 3)
        {
          sub_23149D47C(v18, v17, v150);
          v36 = v33;
          v37 = v32;
          v38 = 3;
          goto LABEL_81;
        }

        if (v33 == v18 && v32 == v17)
        {
          v64 = *(v31 + 8);

          sub_2314A01D4(v18, v17, 3u);
LABEL_95:
          v67 = v18;
          v61 = v17;
          v62 = 3;
          goto LABEL_102;
        }

        v48 = *v31;
        v49 = *(v31 + 8);
        v50 = sub_231586C44();
        sub_23149D47C(v18, v17, 3u);
        sub_23149D47C(v33, v32, 3u);
        sub_2314A01D4(v33, v32, 3u);
        sub_2314A01D4(v18, v17, 3u);
        if (v50)
        {
          goto LABEL_95;
        }

        goto LABEL_82;
      case 4u:
        v35 = v150;
        if (v150 != 4)
        {
          sub_23149D47C(v18, v17, v150);
          v36 = v33;
          v37 = v32;
          v38 = 4;
          goto LABEL_81;
        }

        if (v33 == v18 && v32 == v17)
        {
          v65 = *(v31 + 8);

          sub_2314A01D4(v18, v17, 4u);
LABEL_97:
          v67 = v18;
          v61 = v17;
          v62 = 4;
          goto LABEL_102;
        }

        v40 = *v31;
        v41 = *(v31 + 8);
        v42 = sub_231586C44();
        sub_23149D47C(v18, v17, 4u);
        sub_23149D47C(v33, v32, 4u);
        sub_2314A01D4(v33, v32, 4u);
        sub_2314A01D4(v18, v17, 4u);
        if (v42)
        {
          goto LABEL_97;
        }

        goto LABEL_82;
      case 5u:
        if (v33 | v32)
        {
          if (v33 ^ 1 | v32)
          {
            if (!v132)
            {
              sub_2314A01D4(v33, v32, 5u);
              v67 = 2;
              goto LABEL_101;
            }
          }

          else if ((v131 & 1) == 0)
          {
            sub_2314A01D4(v33, v32, 5u);
            v67 = 1;
LABEL_101:
            v61 = 0;
            v62 = 5;
            goto LABEL_102;
          }
        }

        else if (v130)
        {
          sub_2314A01D4(v33, v32, 5u);
          v67 = 0;
          goto LABEL_101;
        }

        v36 = v18;
        v37 = v17;
        v35 = v150;
        v38 = v150;
        goto LABEL_81;
      default:
        v35 = v150;
        if (v150)
        {
          sub_23149D47C(v18, v17, v150);
          v36 = v33;
          v37 = v32;
          v38 = 0;
LABEL_81:
          sub_23149D47C(v36, v37, v38);
          sub_2314A01D4(v33, v32, v34);
          sub_2314A01D4(v18, v17, v35);
LABEL_82:
          v24 = (v24 + 1) & v144;
          v25 = v24 >> 6;
          v26 = 1 << v24;
          v5 = a3;
          if ((*(v146 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
          {
LABEL_83:
            sub_2314A01D4(v18, v17, v150);
            v4 = a4;
            v11 = v134;
            v7 = v136;
            v10 = v139;
            v6 = v141;
            continue;
          }

          goto LABEL_32;
        }

        if (v33 != v18 || v32 != v17)
        {
          v56 = *v31;
          v57 = *(v31 + 8);
          v58 = sub_231586C44();
          sub_23149D47C(v18, v17, 0);
          sub_23149D47C(v33, v32, 0);
          sub_2314A01D4(v33, v32, 0);
          sub_2314A01D4(v18, v17, 0);
          if (v58)
          {
            goto LABEL_99;
          }

          goto LABEL_82;
        }

        v66 = *(v31 + 8);

        sub_2314A01D4(v18, v17, 0);
LABEL_99:
        v67 = v18;
        v61 = v17;
        v62 = 0;
LABEL_102:
        sub_2314A01D4(v67, v61, v62);
        v4 = a4;
        v5 = a3;
        v10 = v139;
        a1[v25] |= v26;
        v6 = v141;
        v68 = __OFADD__(v143++, 1);
        v11 = v134;
        v7 = v136;
        if (v68)
        {
          __break(1u);
LABEL_105:
          v143 = 0;
          v69 = 0;
          v135 = v5 + 56;
          v70 = 1 << *(v5 + 32);
          if (v70 < 64)
          {
            v71 = ~(-1 << v70);
          }

          else
          {
            v71 = -1;
          }

          v72 = v71 & *(v5 + 56);
          v133 = (v70 + 63) >> 6;
          v151 = v4 + 56;
LABEL_109:
          if (!v72)
          {
            v75 = v69;
            while (1)
            {
              v69 = v75 + 1;
              if (__OFADD__(v75, 1))
              {
                break;
              }

              if (v69 >= v133)
              {
                goto LABEL_208;
              }

              v76 = *(v135 + 8 * v69);
              ++v75;
              if (v76)
              {
                v73 = __clz(__rbit64(v76));
                v74 = (v76 - 1) & v76;
                goto LABEL_116;
              }
            }

            __break(1u);
LABEL_210:
            __break(1u);
            JUMPOUT(0x23149FBF0);
          }

          v73 = __clz(__rbit64(v72));
          v74 = (v72 - 1) & v72;
LABEL_116:
          v77 = v73 | (v69 << 6);
          v78 = *(v5 + 48) + 24 * v77;
          v80 = *v78;
          v79 = *(v78 + 8);
          v81 = *(v78 + 16);
          v82 = *(v4 + 40);
          sub_231586D14();
          v145 = v77;
          v147 = v74;
          switch(v81)
          {
            case 1:
              v83 = 1;
              goto LABEL_122;
            case 2:
              v83 = 2;
              goto LABEL_122;
            case 3:
              v83 = 3;
              goto LABEL_122;
            case 4:
              v83 = 4;
              goto LABEL_122;
            case 5:
              if (v80 | v79)
              {
                if (v80 ^ 1 | v79)
                {
                  v119 = 7;
                }

                else
                {
                  v119 = 6;
                }
              }

              else
              {
                v119 = 5;
              }

              MEMORY[0x231930A00](v119);
              goto LABEL_123;
            default:
              v83 = 0;
LABEL_122:
              MEMORY[0x231930A00](v83);

              sub_231586274();
LABEL_123:
              v84 = sub_231586D44();
              v85 = -1 << *(v4 + 32);
              v86 = v84 & ~v85;
              if (((*(v151 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
              {
                goto LABEL_186;
              }

              v87 = ~v85;
              v88 = v80 != 2;
              v89 = v80 != 1;
              if (v79)
              {
                v88 = 1;
                v89 = 1;
              }

              if (v81 != 5)
              {
                v88 = 1;
              }

              v142 = v88;
              v90 = v81 != 5 || v89;
              v140 = v90;
              if (v79 | v80)
              {
                v91 = 0;
              }

              else
              {
                v91 = v81 == 5;
              }

              v137 = v91;
              break;
          }

          while (1)
          {
            v92 = *(v4 + 48) + 24 * v86;
            v94 = *v92;
            v93 = *(v92 + 8);
            v95 = *(v92 + 16);
            switch(v95)
            {
              case 1u:
                if (v81 != 1)
                {
                  sub_23149D47C(v80, v79, v81);
                  v96 = v94;
                  v97 = v93;
                  v98 = 1;
                  goto LABEL_184;
                }

                if (v94 == v80 && v93 == v79)
                {
                  v123 = *(v92 + 8);

                  sub_2314A01D4(v80, v79, 1u);
LABEL_196:
                  v127 = v80;
                  v121 = v79;
                  v122 = 1;
                  goto LABEL_205;
                }

                v112 = *v92;
                v113 = *(v92 + 8);
                v114 = sub_231586C44();
                sub_23149D47C(v80, v79, 1u);
                sub_23149D47C(v94, v93, 1u);
                sub_2314A01D4(v94, v93, 1u);
                sub_2314A01D4(v80, v79, 1u);
                if (v114)
                {
                  goto LABEL_196;
                }

                goto LABEL_185;
              case 2u:
                if (v81 != 2)
                {
                  sub_23149D47C(v80, v79, v81);
                  v96 = v94;
                  v97 = v93;
                  v98 = 2;
                  goto LABEL_184;
                }

                if (v94 == v80 && v93 == v79)
                {
                  v120 = *(v92 + 8);

                  sub_2314A01D4(v80, v79, 2u);
LABEL_194:
                  v127 = v80;
                  v121 = v79;
                  v122 = 2;
                  goto LABEL_205;
                }

                v104 = *v92;
                v105 = *(v92 + 8);
                v106 = sub_231586C44();
                sub_23149D47C(v80, v79, 2u);
                sub_23149D47C(v94, v93, 2u);
                sub_2314A01D4(v94, v93, 2u);
                sub_2314A01D4(v80, v79, 2u);
                if (v106)
                {
                  goto LABEL_194;
                }

                goto LABEL_185;
              case 3u:
                if (v81 != 3)
                {
                  sub_23149D47C(v80, v79, v81);
                  v96 = v94;
                  v97 = v93;
                  v98 = 3;
                  goto LABEL_184;
                }

                if (v94 == v80 && v93 == v79)
                {
                  v124 = *(v92 + 8);

                  sub_2314A01D4(v80, v79, 3u);
LABEL_198:
                  v127 = v80;
                  v121 = v79;
                  v122 = 3;
                  goto LABEL_205;
                }

                v108 = *v92;
                v109 = *(v92 + 8);
                v110 = sub_231586C44();
                sub_23149D47C(v80, v79, 3u);
                sub_23149D47C(v94, v93, 3u);
                sub_2314A01D4(v94, v93, 3u);
                sub_2314A01D4(v80, v79, 3u);
                if (v110)
                {
                  goto LABEL_198;
                }

                goto LABEL_185;
              case 4u:
                if (v81 != 4)
                {
                  sub_23149D47C(v80, v79, v81);
                  v96 = v94;
                  v97 = v93;
                  v98 = 4;
                  goto LABEL_184;
                }

                if (v94 == v80 && v93 == v79)
                {
                  v125 = *(v92 + 8);

                  sub_2314A01D4(v80, v79, 4u);
LABEL_200:
                  v127 = v80;
                  v121 = v79;
                  v122 = 4;
                  goto LABEL_205;
                }

                v100 = *v92;
                v101 = *(v92 + 8);
                v102 = sub_231586C44();
                sub_23149D47C(v80, v79, 4u);
                sub_23149D47C(v94, v93, 4u);
                sub_2314A01D4(v94, v93, 4u);
                sub_2314A01D4(v80, v79, 4u);
                if (v102)
                {
                  goto LABEL_200;
                }

                goto LABEL_185;
              case 5u:
                if (v94 | v93)
                {
                  if (v94 ^ 1 | v93)
                  {
                    if (!v142)
                    {
                      sub_2314A01D4(v94, v93, 5u);
                      v127 = 2;
                      goto LABEL_204;
                    }
                  }

                  else if ((v140 & 1) == 0)
                  {
                    sub_2314A01D4(v94, v93, 5u);
                    v127 = 1;
LABEL_204:
                    v121 = 0;
                    v122 = 5;
                    goto LABEL_205;
                  }
                }

                else if (v137)
                {
                  sub_2314A01D4(v94, v93, 5u);
                  v127 = 0;
                  goto LABEL_204;
                }

                v96 = v80;
                v97 = v79;
                v98 = v81;
                goto LABEL_184;
              default:
                if (v81)
                {
                  sub_23149D47C(v80, v79, v81);
                  v96 = v94;
                  v97 = v93;
                  v98 = 0;
LABEL_184:
                  sub_23149D47C(v96, v97, v98);
                  sub_2314A01D4(v94, v93, v95);
                  sub_2314A01D4(v80, v79, v81);
                }

                else
                {
                  if (v94 == v80 && v93 == v79)
                  {
                    v126 = *(v92 + 8);

                    sub_2314A01D4(v80, v79, 0);
LABEL_202:
                    v127 = v80;
                    v121 = v79;
                    v122 = 0;
LABEL_205:
                    sub_2314A01D4(v127, v121, v122);
                    v72 = v147;
                    v4 = a4;
                    *(a1 + ((v145 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v145;
                    v68 = __OFADD__(v143++, 1);
                    v5 = a3;
                    if (v68)
                    {
                      __break(1u);
                      goto LABEL_208;
                    }

                    goto LABEL_109;
                  }

                  v116 = *v92;
                  v117 = *(v92 + 8);
                  v118 = sub_231586C44();
                  sub_23149D47C(v80, v79, 0);
                  sub_23149D47C(v94, v93, 0);
                  sub_2314A01D4(v94, v93, 0);
                  sub_2314A01D4(v80, v79, 0);
                  if (v118)
                  {
                    goto LABEL_202;
                  }
                }

LABEL_185:
                v86 = (v86 + 1) & v87;
                v4 = a4;
                if (((*(v151 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
                {
LABEL_186:
                  sub_2314A01D4(v80, v79, v81);
                  v5 = a3;
                  v72 = v147;
                  goto LABEL_109;
                }

                break;
            }
          }
        }

        break;
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_210;
    }

    if (v6 >= v11)
    {
      break;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v12 = __clz(__rbit64(v15));
      v13 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

LABEL_208:

  return sub_23149E818(a1, a2, v143, v5);
}

void OUTLINED_FUNCTION_51(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16)
{
  *(v16 + 16) = v17;

  return sub_23149FD3C(&a16, v16 + 40 * v18 + 32);
}

uint64_t sub_23149FD3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23149FD54(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 6;
  }

  v3 = sub_23149FE5C(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 6;
  }
}

uint64_t sub_23149FDA0()
{
  if (qword_280D6E348 != -1)
  {
    swift_once();
  }

  v0 = sub_231586174();
  v1 = MGGetSInt32Answer();

  swift_beginAccess();
  v2 = sub_23149FD54(v1, qword_280D6E350);
  swift_endAccess();
  return v2;
}

unint64_t sub_23149FE5C(unsigned int a1)
{
  v3 = MEMORY[0x2319309E0](*(v1 + 40), a1, 4);

  return sub_23149FEA4(a1, v3);
}

unint64_t sub_23149FEA4(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_23149FF38()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v2 = 0;
  MEMORY[0x231930210](*(v0 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = *(v1 + 16);
  for (i = (v1 + 40); ; i += 2)
  {
    if (v3 == v2)
    {

      OUTLINED_FUNCTION_117();
      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    ++v2;
    v6 = *(i - 1);
    v5 = *i;

    sub_2314A00A4();
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_231585884();
}

_OWORD *OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, __int128 a24)
{

  return sub_2314D6070(&a24, &a21);
}

void sub_2314A00A4()
{
  OUTLINED_FUNCTION_17_10();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 40);
  sub_231586D14();
  sub_231586274();
  sub_231586D44();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_17_7();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v14 = (*(v7 + 48) + 16 * v13);
    v15 = *v14 == v4 && v14[1] == v2;
    if (v15 || (sub_231586C44() & 1) != 0)
    {

      v16 = (*(v7 + 48) + 16 * v13);
      v17 = v16[1];
      *v6 = *v16;
      v6[1] = v17;

      goto LABEL_11;
    }

    v10 = v13 + 1;
  }

  v18 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v0;

  sub_2314A03E0(v4, v2, v13, isUniquelyReferenced_nonNull_native);
  *v0 = v20;
  *v6 = v4;
  v6[1] = v2;
LABEL_11:
  OUTLINED_FUNCTION_16_9();
}

uint64_t sub_2314A01D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_2314A0374()
{
  result = sub_2314A1DFC(10, 0);
  qword_280D6D840 = result;
  qword_280D6D848 = v1;
  qword_280D6D850 = v2;
  return result;
}

void sub_2314A03E0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_231542AE0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2315432D0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_231586D14();
      sub_231586274();
      v17 = sub_231586D44();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_231586C44() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_231542F1C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_231586C74();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

BOOL sub_2314A0560(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a3[5];
  sub_231586D14();
  sub_231586274();
  sub_231586D44();
  OUTLINED_FUNCTION_28_4();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = sub_231586C44();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

uint64_t OUTLINED_FUNCTION_27_1()
{
  v2 = (*(v0 + 48) + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t result)
{
  *(v1 - 104) = 0;
  *(v1 - 96) = 0xE000000000000000;
  *(v1 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(*(a20 + 48) + 16 * v20 + 8);
}

uint64_t sub_2314A0710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314A0780()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  OUTLINED_FUNCTION_19(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_5_1();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_35_1();
  v4 = sub_231585884();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_34_3();
  if (__swift_getEnumTagSinglePayload(v8, v9, v4) == 1)
  {
    v10 = OUTLINED_FUNCTION_13_7();
    sub_2314A2910(v10, v11, &qword_231587FD0);
    v12 = OUTLINED_FUNCTION_32_2();
    sub_231561A5C(v12, v13, v14, v15, v16, v17);

    v18 = OUTLINED_FUNCTION_30_2();
    return sub_2314A2910(v18, v19, v20);
  }

  else
  {
    v22 = OUTLINED_FUNCTION_84();
    v23(v22);
    v24 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = OUTLINED_FUNCTION_13_10();
    sub_2314AA354(v25, v26, v27, v28);

    *v0 = v29;
  }

  return result;
}

void OUTLINED_FUNCTION_55(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_30(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = a13;
  result = a14;
  *(v14 + 40) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  *(v1 - 104) = v0;
  *(v1 - 96) = 3;
  return v1 - 104;
}

uint64_t OUTLINED_FUNCTION_74()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_5_4(double a1)
{
  result = a1 + v1;
  if (result < 0.0)
  {
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_5_8()
{

  JUMPOUT(0x231931280);
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16)
{
  *(v16 + 16) = v18;

  return sub_23149FD3C(&a16, v16 + 40 * v17 + 32);
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return sub_231586A64();
}

uint64_t OUTLINED_FUNCTION_5_13@<X0>(uint64_t a1@<X8>)
{

  return sub_23149BEE0(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_5_18()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_5_19()
{

  return sub_231528564(v1, v2, v0, v3);
}

void OUTLINED_FUNCTION_5_22()
{

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_5_23()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

__n128 OUTLINED_FUNCTION_5_26()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_29()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_5_30(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t SignalDefinitionParametersProvider.Builder.__deallocating_deinit()
{
  SignalDefinitionParametersProvider.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t SignalDefinitionParametersProvider.Builder.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_2314A0D38(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t sub_2314A0D38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SiriSignals11EntityValueVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2314A0DE8(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v163 = a8;
  v159 = a7;
  v148 = a6;
  v165 = a5;
  v160 = a4;
  v161 = a1;
  v157 = sub_231585884();
  v12 = OUTLINED_FUNCTION_4_1(v157);
  v155 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v153 = v17 - v16;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C090, &qword_23158ED18);
  v18 = OUTLINED_FUNCTION_4_1(v156);
  v154 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v152 = &v140 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v24 = OUTLINED_FUNCTION_19(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v162 = (&v140 - v27);
  v151 = sub_231585AE4();
  v28 = OUTLINED_FUNCTION_4_1(v151);
  v147 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5();
  v146 = v33 - v32;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v34 = OUTLINED_FUNCTION_8(v142);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11_0();
  v141 = v37 - v38;
  v40 = MEMORY[0x28223BE20](v39);
  v143 = &v140 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v140 - v42;
  v44 = sub_231585D74();
  v45 = OUTLINED_FUNCTION_4_1(v44);
  v145 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_5();
  v144 = v50 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7D0, &unk_23158AFA8);
  v52 = OUTLINED_FUNCTION_4_1(v51);
  v164 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  v57 = (&v140 - v56);
  v58 = sub_231585D14();
  v59 = OUTLINED_FUNCTION_4_1(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_11_18();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_35();
  v167 = v65;
  sub_231585D04();
  v66 = *(a2 + 2);
  v67 = MEMORY[0x277D5FF28];
  v166 = a3;
  if (v66)
  {
    *v57 = a2;
    v68 = v164;
    (*(v164 + 104))(v57, *v67, v51);

    v158 = v43;
    v69 = v9;
    v70 = v44;
    v71 = a2;
    v72 = v167;
    sub_231585C94();
    a3 = v166;
    (*(v68 + 8))(v57, v51);
    OUTLINED_FUNCTION_8_24();
    v73(v72, v58);
    v74 = OUTLINED_FUNCTION_10_19();
    a2 = v71;
    v44 = v70;
    v9 = v69;
    v43 = v158;
    v75(v74, v9, v58);
  }

  v149 = v57;
  v150 = v51;
  v158 = a2;
  sub_231570540(a3, v43, &qword_27DD5B4C8, &unk_23158A6B0);
  if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
  {
    sub_2314A2910(v43, &qword_27DD5B4C8, &unk_23158A6B0);
    v76 = v161;
    v77 = v58;
  }

  else
  {
    v78 = v145;
    v79 = v144;
    (*(v145 + 32))(v144, v43, v44);
    v80 = v167;
    sub_231585CD4();
    (*(v78 + 8))(v79, v44);
    OUTLINED_FUNCTION_8_24();
    v77 = v58;
    v81(v80, v58);
    v82 = OUTLINED_FUNCTION_10_19();
    v83(v82, v9, v58);
    v76 = v161;
  }

  v84 = v162;
  v85 = v151;
  if (v160 != 2)
  {
    v86 = v167;
    sub_231585C54();
    v84 = v162;
    OUTLINED_FUNCTION_8_24();
    v87(v86, v77);
    v88 = *(v61 + 32);
    OUTLINED_FUNCTION_15_13();
    v89();
  }

  v90 = a9;
  sub_231570540(v165, v84, &qword_27DD5B4D0, &qword_23158A5D0);
  if (__swift_getEnumTagSinglePayload(v84, 1, v85) == 1)
  {
    sub_2314A2910(v84, &qword_27DD5B4D0, &qword_23158A5D0);
  }

  else
  {
    v91 = v167;
    LODWORD(v162) = a9;
    v92 = v76;
    v93 = v147;
    v94 = v146;
    (*(v147 + 32))(v146, v84, v85);
    sub_231585C64();
    (*(v93 + 8))(v94, v85);
    v76 = v92;
    v90 = v162;
    OUTLINED_FUNCTION_8_24();
    v95(v91, v77);
    v96 = *(v61 + 32);
    OUTLINED_FUNCTION_15_13();
    v97();
  }

  v98 = v150;
  v99 = v164;
  v100 = v149;
  if (v90)
  {
    *v149 = v163;
    (*(v99 + 104))(v100, *MEMORY[0x277D5FF28], v98);

    v101 = v167;
    sub_231585CC4();
    (*(v99 + 8))(v100, v98);
    OUTLINED_FUNCTION_8_24();
    v102(v101, v77);
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_15_13();
    v103();
  }

  v104 = v153;
  sub_231585844();
  sub_231585A64();
  v105 = v152;
  sub_2315857B4();
  (*(v155 + 8))(v104, v157);
  v106 = v154;
  v107 = v156;
  (*(v154 + 104))(v105, *MEMORY[0x277D5FF10], v156);
  v108 = v167;
  sub_231585CE4();
  (*(v106 + 8))(v105, v107);
  OUTLINED_FUNCTION_8_24();
  v164 = v109;
  v162 = v110;
  v110(v108, v77);
  v111 = *(v61 + 32);
  OUTLINED_FUNCTION_15_13();
  v112();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7D8, &qword_23158AFB8);
  v113 = sub_231585C14();
  OUTLINED_FUNCTION_4_1(v113);
  v115 = v114;
  v117 = *(v116 + 72);
  v118 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_231588340;
  (*(v115 + 104))(v119 + v118, *MEMORY[0x277D5FF90], v113);
  v120 = sub_231585C34();

  sub_231585BA4();
  v157 = sub_2315860E4();
  v121 = v158;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v122 = sub_231585FF4();
  __swift_project_value_buffer(v122, qword_280D72248);
  v123 = v143;
  sub_231570540(v166, v143, &qword_27DD5B4C8, &unk_23158A6B0);

  v124 = sub_231585FE4();
  v125 = sub_2315865D4();

  LODWORD(v156) = v125;
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v155 = v77;
    v127 = v126;
    v169 = swift_slowAlloc();
    *v127 = 136316162;
    v128 = sub_2314A22E8();

    *(v127 + 4) = v128;
    *(v127 + 12) = 2080;
    MEMORY[0x231930080](v121, MEMORY[0x277D837D0]);

    v129 = sub_2314A22E8();

    *(v127 + 14) = v129;
    *(v127 + 22) = 2080;
    sub_231570540(v123, v141, &qword_27DD5B4C8, &unk_23158A6B0);
    sub_231586204();
    sub_2314A2910(v123, &qword_27DD5B4C8, &unk_23158A6B0);
    v130 = sub_2314A22E8();

    *(v127 + 24) = v130;
    *(v127 + 32) = 2080;
    v168 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C098, &unk_23158ED20);
    sub_231586204();
    v131 = sub_2314A22E8();

    *(v127 + 34) = v131;
    *(v127 + 42) = 2080;
    v132 = sub_2314A22E8();

    *(v127 + 44) = v132;
    _os_log_impl(&dword_231496000, v124, v156, "Querying(%s [%s/%s/%s] = %s", v127, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    sub_2314A2910(v165, &qword_27DD5B4D0, &qword_23158A5D0);
    sub_2314A2910(v166, &qword_27DD5B4C8, &unk_23158A6B0);
    v133 = sub_231585D34();
    OUTLINED_FUNCTION_8(v133);
    (*(v134 + 8))(v161);
    v135 = v167;
    v136 = v155;
  }

  else
  {

    sub_2314A2910(v165, &qword_27DD5B4D0, &qword_23158A5D0);
    OUTLINED_FUNCTION_12_15(v166);
    v137 = sub_231585D34();
    OUTLINED_FUNCTION_8(v137);
    (*(v138 + 8))(v76);
    OUTLINED_FUNCTION_12_15(v123);
    v135 = v167;
    v136 = v77;
  }

  v162(v135, v136);
  return v120;
}

uint64_t sub_2314A1D9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_8(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2314A1DFC(uint64_t a1, char a2)
{
  v2 = qword_23158A0C8[a2];
  v3 = a1 * v2;
  if ((a1 * v2) >> 64 != (a1 * v2) >> 63)
  {
    __break(1u);
    JUMPOUT(0x2314A2014);
  }

  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      v5 = sub_231586C44();

      if (v5)
      {
        goto LABEL_5;
      }

      sub_231586C24();
      MEMORY[0x23192FF80](0x282063657320, 0xE600000000000000);
      v8 = sub_231586C24();
      MEMORY[0x23192FF80](v8);

      MEMORY[0x23192FF80](32, 0xE100000000000000);
      v9 = 0xE500000000000000;
      v10 = 0x7372756F68;
      if (a2 != 2)
      {
        v10 = 1937334628;
        v9 = 0xE400000000000000;
      }

      if (a2 == 1)
      {
        v11 = 0x736574756E696DLL;
      }

      else
      {
        v11 = v10;
      }

      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = v9;
      }

      MEMORY[0x23192FF80](v11, v12);

      v6 = 41;
      v7 = 0xE100000000000000;
      break;
    default:

LABEL_5:
      sub_231586C24();
      v6 = 1667592992;
      v7 = 0xE400000000000000;
      break;
  }

  MEMORY[0x23192FF80](v6, v7);
  return v3;
}

uint64_t sub_2314A2024(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2314A207C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_3()
{
}

BOOL OUTLINED_FUNCTION_11_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_11_6(uint64_t a1@<X8>, double a2@<D0>)
{
  v6 = (a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v2;
  *(*(v4 + 56) + 8 * v5) = a2;
  v7 = *(v4 + 16);
}

id OUTLINED_FUNCTION_11_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_9()
{
  *(v1 - 120) = v0;
  *(v1 - 112) = 1;
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  v4 = *(v2 - 120);

  return sub_2314A22E8();
}

uint64_t OUTLINED_FUNCTION_11_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_15()
{

  return sub_231586274();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2314A22E8()
{
  OUTLINED_FUNCTION_16_11();

  v3 = sub_2314A23F0(v8, 0, 0, 1, v2, v1);
  v4 = v8[0];
  if (v3)
  {
    v5 = v3;

    ObjectType = swift_getObjectType();
    v8[0] = v5;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v8[0] = v2;
    v8[1] = v1;
  }

  v6 = *v0;
  if (*v0)
  {
    sub_2314A24F0(v8, *v0);
    *v0 = v6 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v4;
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

unint64_t sub_2314A23F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2314A2664(a5, a6);
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
    result = sub_2315869B4();
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

uint64_t sub_2314A24F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2314A254C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2315862B4())
  {
    result = sub_2314A26B0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_231586934();
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
          result = sub_2315869B4();
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

uint64_t sub_2314A2664(uint64_t a1, unint64_t a2)
{
  v4 = sub_2314A254C(a1, a2);
  sub_2314A2720(&unk_28460FCA8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_2314A26B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B3A0, &unk_231589B88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_2314A2720(uint64_t result)
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

    result = sub_2314A74F4(result, v8, 1, v3);
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

uint64_t OUTLINED_FUNCTION_18_1(float a1)
{
  *v1 = a1;

  return sub_2314A22E8();
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  v5 = *(v1 + 48) + v2 * v0;

  return sub_2314D6014(v5, v3 - 224);
}

uint64_t OUTLINED_FUNCTION_18_7()
{

  return swift_arrayDestroy();
}

unint64_t OUTLINED_FUNCTION_18_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_23149C888(a2, a3);
}

uint64_t sub_2314A2910(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2314A2968()
{
  v0 = sub_231585C04();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231585BD4();
  v5 = type metadata accessor for SQLBackedCacheProvider();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + OBJC_IVAR____TtC11SiriSignals22SQLBackedCacheProvider_store, v4, v0);
  v12[3] = v5;
  v12[4] = &off_28461CF58;
  v12[0] = v8;
  type metadata accessor for SignalCache();
  v9 = swift_allocObject();
  sub_2314A2BD8(v12, sub_23149A718, 0);
  return v9;
}

uint64_t type metadata accessor for SQLBackedCacheProvider()
{
  result = qword_280D6FFA0;
  if (!qword_280D6FFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2314A2B24()
{
  result = sub_231585C04();
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

void *sub_2314A2BD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2314A2C74(a1, (v3 + 2));
  v7 = *__swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v10 = type metadata accessor for SQLBackedCacheProvider();
  v11 = &off_28461CF68;
  *&v9 = v7;

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_23149FD3C(&v9, (v3 + 7));
  v3[12] = a2;
  v3[13] = a3;
  return v3;
}

uint64_t sub_2314A2C74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2314A2CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TriggerLockout();
  v23[3] = v10;
  v23[4] = &off_28461DCC8;
  v23[0] = a5;
  v11 = type metadata accessor for SignalRepository(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v10);
  v16 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_2314A2F90(a1, a2, a3, a4, *v18, v14);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v20;
}

uint64_t sub_2314A2E60()
{
  if (qword_280D6E250 != -1)
  {
    swift_once();
  }

  v0 = qword_280D721C0;
  type metadata accessor for SignalCache();

  v1 = sub_23153449C();
  type metadata accessor for TriggerLockout();
  v2 = swift_allocObject();
  v2[2] = sub_23149A718;
  v2[3] = 0;
  v2[4] = 0x4C72656767697274;
  v2[5] = 0xEF7374756F6B636FLL;

  return sub_2314A2CFC(v0, v1, sub_23149A718, 0, v2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2314A2F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_231585884();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = type metadata accessor for TriggerLockout();
  v35[4] = &off_28461DCC8;
  v35[0] = a5;
  *(a6 + 48) = sub_2314A1DFC(30, 0);
  *(a6 + 56) = v17;
  *(a6 + 64) = v18;
  type metadata accessor for SignalRepository.PrewarmStatus();
  v19 = swift_allocObject();
  sub_2314A3324();
  *(a6 + 112) = v19;
  v20 = sub_2315860F4();
  *(a6 + 120) = 0;
  *(a6 + 128) = v20;
  type metadata accessor for SignalRepository.LastRecognizedUser();
  *(a6 + 136) = swift_allocObject();
  v21 = (a6 + OBJC_IVAR____TtC11SiriSignals16SignalRepository_lastAppInstallEventAt);
  sub_231585794();
  *v21 = 0;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE48, &qword_23158DE70) + 28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF18, &qword_23158E170);
  bzero(&v21[v22], *(*(v23 - 8) + 64));
  (*(v13 + 32))(&v21[v22], v16, v12);
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  sub_2314A5780(v35, a6 + 72);
  v24 = qword_280D70420;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_231585FF4();
  __swift_project_value_buffer(v25, qword_280D72248);

  v26 = sub_231585FE4();
  v27 = sub_2315865D4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v28 = 134218242;
    *(v28 + 4) = *(*(a6 + 16) + 16);

    *(v28 + 12) = 2080;
    v30 = *(a6 + 56);
    v31 = *(a6 + 64);

    v32 = sub_2314A22E8();

    *(v28 + 14) = v32;
    _os_log_impl(&dword_231496000, v26, v27, "SignalRepository: Started with %ld signals, %s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x231931280](v29, -1, -1);
    MEMORY[0x231931280](v28, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return a6;
}

uint64_t sub_2314A3324()
{
  v1 = v0;
  type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  v2 = sub_2315860F4();
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  if (qword_280D701B8 != -1)
  {
    swift_once();
  }

  v3 = qword_280D72230;
  v4 = unk_280D72238;
  __swift_project_boxed_opaque_existential_1(qword_280D72218, qword_280D72230);
  v5 = (*(v4 + 24))(v3, v4);
  *(v0 + 32) = v5;
  *(v0 + 40) = v6 & 1;
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v8 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v8, qword_280D72248);
    v9 = sub_231585FE4();
    v10 = sub_2315865D4();
    if (OUTLINED_FUNCTION_11_5(v10))
    {
      v11 = OUTLINED_FUNCTION_22();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      OUTLINED_FUNCTION_51_0();
      _os_log_impl(v12, v13, v14, v15, v11, 0xCu);
      OUTLINED_FUNCTION_5_8();
    }
  }

  return v1;
}

uint64_t sub_2314A3490()
{
  result = sub_231585884();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2314A3520(uint64_t a1@<X8>)
{
  v2 = sub_2314A37AC();
  if (v2 == 2)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v5 = sub_231585FF4();
    __swift_project_value_buffer(v5, qword_280D72248);
    v6 = sub_231585FE4();
    v7 = sub_2315865D4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_231496000, v6, v7, "OverridesProviding: No overrides", v8, 2u);
      MEMORY[0x231931280](v8, -1, -1);
    }

    v9 = 0;
    *(a1 + 24) = &type metadata for CannedOverrides;
    *(a1 + 32) = &off_28461A788;
    *a1 = 0;
    v10 = 1;
  }

  else
  {
    v11 = v2;
    v9 = v3;
    v10 = v4;
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v12 = sub_231585FF4();
    __swift_project_value_buffer(v12, qword_280D72248);
    v13 = sub_231585FE4();
    v14 = sub_2315865D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v15 = 136315138;
      sub_23152B9FC(v11 & 0x101, v9, v10 & 1);
      v16 = sub_2314A22E8();

      *(v15 + 4) = v16;
      _os_log_impl(&dword_231496000, v13, v14, "OverridesProviding: defined %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x231931280](v17, -1, -1);
      MEMORY[0x231931280](v15, -1, -1);
    }

    *(a1 + 24) = &type metadata for UserOverrides;
    *(a1 + 32) = &off_28461A768;
    *a1 = v11 & 1;
    *(a1 + 1) = HIBYTE(v11) & 1;
  }

  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
}

uint64_t sub_2314A37AC()
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v0 = sub_231585FF4();
  __swift_project_value_buffer(v0, qword_280D72248);
  v1 = sub_231585FE4();
  v2 = sub_2315865D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *&v24 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v1, v2, "OverridesProviding: reading suite [%s]", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x231931280](v4, -1, -1);
    MEMORY[0x231931280](v3, -1, -1);
  }

  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_23149C7D4(0xD000000000000024, 0x80000002315922C0);
  if (v6)
  {
    v7 = v6;
    v8 = sub_231586174();
    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_2315867A4();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        v15 = v21;
        goto LABEL_17;
      }
    }

    else
    {
      sub_23152BBA4(&v24);
    }

    v15 = 0;
LABEL_17:
    v16 = sub_231586174();
    v17 = [v7 objectForKey_];

    if (v17)
    {
      sub_2315867A4();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v21)
        {
          v18 = 256;
        }

        else
        {
          v18 = 0;
        }

LABEL_27:
        v19 = sub_231586174();
        v20 = [v7 objectForKey_];

        if (v20)
        {
          sub_2315867A4();

          swift_unknownObjectRelease();
        }

        else
        {

          v22 = 0u;
          v23 = 0u;
        }

        v24 = v22;
        v25 = v23;
        if (*(&v23 + 1))
        {
          swift_dynamicCast();
        }

        else
        {
          sub_23152BBA4(&v24);
        }

        return v18 | v15;
      }
    }

    else
    {
      sub_23152BBA4(&v24);
    }

    v18 = 0;
    goto LABEL_27;
  }

  v10 = sub_231585FE4();
  v11 = sub_2315865D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v24 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v10, v11, "OverridesProviding: Could not read suite [%s]", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x231931280](v13, -1, -1);
    MEMORY[0x231931280](v12, -1, -1);
  }

  return 2;
}

uint64_t sub_2314A3C30()
{
  v0 = sub_231585FF4();
  __swift_allocate_value_buffer(v0, qword_280D72248);
  __swift_project_value_buffer(v0, qword_280D72248);
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v1 = qword_280D72240;
  return sub_231586004();
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

uint64_t sub_2314A3D20()
{
  sub_2314A207C(0, &qword_280D70410, 0x277D86200);
  result = sub_231586754();
  qword_280D72240 = result;
  return result;
}

uint64_t DomainRecencySignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v68 = a2;
  v69 = a1;
  v3 = type metadata accessor for DomainRecencySignal();
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v67 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v10 = OUTLINED_FUNCTION_19(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v16 = OUTLINED_FUNCTION_19(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  v23 = sub_231585D34();
  v24 = OUTLINED_FUNCTION_4_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v24);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v62 - v32;
  v34 = *(v26 + 16);
  v34(&v62 - v32, v2, v23);
  v62 = v3;
  v35 = *(v2 + *(v3 + 20));
  v36 = sub_231585AE4();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v36);
  v66 = v2;
  v37 = DomainRecencySignal.id.getter();
  v63 = v38;
  v64 = v37;
  v34(v31, v33, v23);
  LOBYTE(v71) = v35;
  v39 = DomainUseCase.intentTypes.getter();
  if (v35 <= 0xD)
  {
    if (((1 << v35) & 0xA95) != 0)
    {
      v40 = MEMORY[0x277D5FFC0];
LABEL_6:
      v41 = *v40;
      v42 = sub_231585D74();
      OUTLINED_FUNCTION_8(v42);
      (*(v43 + 104))(v14, v41, v42);
      v44 = v14;
      v45 = 0;
      v46 = v42;
      goto LABEL_7;
    }

    if (((1 << v35) & 0x3060) != 0)
    {
      v40 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  v46 = sub_231585D74();
  v44 = v14;
  v45 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v44, v45, 1, v46);
  if (v35 - 1 > 0xA)
  {
    v47 = 2;
  }

  else
  {
    v47 = byte_23158A7CA[(v35 - 1)];
  }

  v48 = v65;
  sub_2314A68F8(v22, v65);
  v49 = sub_2314A0DE8(v31, v39, v14, v47, v48, v64, v63, MEMORY[0x277D84F90], 0);
  sub_2314A2910(v22, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v26 + 8))(v33, v23);
  sub_2314A4360(v49);
  v51 = v50;

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v52 = sub_231585FF4();
  __swift_project_value_buffer(v52, qword_280D72248);
  v53 = v67;
  sub_2314A4BC8(v66, v67);

  v54 = sub_231585FE4();
  v55 = sub_2315865D4();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v73 = v57;
    *v56 = 136315394;
    v70 = *(v53 + *(v62 + 20));
    v71 = DomainUseCase.rawValue.getter();
    v72 = v58;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_280D6D6B0 != -1)
    {
      OUTLINED_FUNCTION_0_28();
    }

    MEMORY[0x23192FF80](qword_280D6D6B8, unk_280D6D6C0);
    sub_2314A4E20(v53);
    v59 = sub_2314A22E8();

    *(v56 + 4) = v59;
    *(v56 + 12) = 2080;
    sub_2315860E4();
    v60 = sub_2314A22E8();

    *(v56 + 14) = v60;
    _os_log_impl(&dword_231496000, v54, v55, "%s value: %s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v57, -1, -1);
    MEMORY[0x231931280](v56, -1, -1);
  }

  else
  {

    sub_2314A4E20(v53);
  }

  v71 = v51;
  LOBYTE(v72) = 1;
  v69(&v71);
  return sub_2314A5EEC(v71, v72);
}

void sub_2314A4360(uint64_t a1)
{
  v73 = sub_231585884();
  v3 = OUTLINED_FUNCTION_4_1(v73);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_231585BA4();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_35();
  v68 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  v21 = OUTLINED_FUNCTION_19(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_11_18();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_35();
  v74 = v25;
  if (a1)
  {

    v26 = sub_2315860F4();
    v27 = 0;
    v69 = a1;
    v29 = *(a1 + 64);
    v28 = a1 + 64;
    v30 = *(v28 - 32);
    OUTLINED_FUNCTION_3_0();
    v33 = v32 & v31;
    v35 = (v34 + 63) >> 6;
    v67 = v36;
    v77 = (v36 + 32);
    v72 = (v5 + 8);
    v75 = v1;
    v76 = v10;
    v70 = v35;
    v71 = v28;
    v66 = v17;
    if ((v32 & v31) == 0)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v37 = v27;
LABEL_8:
      v38 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v39 = v38 | (v37 << 6);
      v40 = (*(v69 + 48) + 16 * v39);
      v42 = *v40;
      v41 = v40[1];
      (*(v67 + 16))(v68, *(v69 + 56) + *(v67 + 72) * v39, v11);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
      v44 = *(v43 + 48);
      *v75 = v42;
      *(v75 + 1) = v41;
      v1 = v75;
      (*(v67 + 32))(&v75[v44], v68, v11);
      __swift_storeEnumTagSinglePayload(v75, 0, 1, v43);

      v17 = v66;
      v10 = v76;
LABEL_9:
      sub_2314A4B78(v1, v74, &qword_27DD5B6B8, &unk_23158AC00);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
      OUTLINED_FUNCTION_18_10(v74, 1);
      if (v46)
      {

        OUTLINED_FUNCTION_16_3();
        return;
      }

      v47 = v74[1];
      v78 = *v74;
      (*v77)(v17, v74 + *(v45 + 48), v11);
      sub_231585B74();
      sub_231585784();
      v49 = round(v48);
      if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v49 <= -9.22337204e18)
      {
        goto LABEL_30;
      }

      if (v49 >= 9.22337204e18)
      {
        goto LABEL_31;
      }

      (*v72)(v10, v73);
      swift_isUniquelyReferenced_nonNull_native();
      v50 = sub_23149C888(v78, v47);
      if (__OFADD__(*(v26 + 16), (v51 & 1) == 0))
      {
        goto LABEL_32;
      }

      v52 = v50;
      v53 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v54 = sub_23149C888(v78, v47);
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_34;
        }

        v52 = v54;
      }

      if (v53)
      {

        v56 = OUTLINED_FUNCTION_9_21();
        v57(v56);
      }

      else
      {
        *(v26 + 8 * (v52 >> 6) + 64) |= 1 << v52;
        v58 = (*(v26 + 48) + 16 * v52);
        *v58 = v78;
        v58[1] = v47;
        v59 = OUTLINED_FUNCTION_9_21();
        v60(v59);
        v61 = *(v26 + 16);
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_33;
        }

        *(v26 + 16) = v63;
      }

      v1 = v75;
      v10 = v76;
      v35 = v70;
      v28 = v71;
      if (!v33)
      {
LABEL_4:
        while (1)
        {
          v37 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v37 >= v35)
          {
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
            __swift_storeEnumTagSinglePayload(v1, 1, 1, v64);
            v33 = 0;
            goto LABEL_9;
          }

          v33 = *(v28 + 8 * v37);
          ++v27;
          if (v33)
          {
            v27 = v37;
            goto LABEL_8;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_231586C84();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_3();

    sub_2315860F4();
  }
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_2314A22E8();
}

void OUTLINED_FUNCTION_6_12()
{

  sub_2314F1698();
}

void OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2)
{
  *(v2 - 120) = a1;
  *(v2 - 112) = a2;

  JUMPOUT(0x23192FF80);
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_19()
{
  *(v3 - 168) = v0;
  v5 = *(v3 - 288);
  v6 = *(v3 - 316);

  return sub_231575C74(v5, v6, v2, v1);
}

__n128 OUTLINED_FUNCTION_6_22()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

uint64_t OUTLINED_FUNCTION_6_23()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_25()
{
  *(*(v2 + 56) + 8 * v0) = v1;
  v4 = *(v3 - 136);
  v5 = **(v3 - 144);
  return *(v3 - 104);
}

uint64_t OUTLINED_FUNCTION_6_26()
{

  return sub_2314A4B70();
}

uint64_t OUTLINED_FUNCTION_6_27()
{
  v2 = *(*(v1 - 288) + 8);
  result = v0;
  v4 = *(v1 - 280);
  return result;
}

uint64_t sub_2314A4B78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_17_14(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2314A4BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainRecencySignal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DomainRecencySignal()
{
  result = qword_280D6D6A0;
  if (!qword_280D6D6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t DomainUseCase.rawValue.getter()
{
  result = 0xD000000000000015;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
    case 0xA:
      result = 0xD000000000000029;
      break;
    case 5:
    case 7:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000022;
      break;
    case 8:
    case 9:
      result = 0xD000000000000020;
      break;
    case 0xB:
      result = 0xD00000000000002BLL;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0xD000000000000023;
      break;
    case 0xE:
      result = 0xD000000000000010;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2314A4E20(uint64_t a1)
{
  v2 = type metadata accessor for DomainRecencySignal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2314A4EA8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_20_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = v0();
  *(inited + 40) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v2;
  OUTLINED_FUNCTION_148();
  sub_2315860F4();
  OUTLINED_FUNCTION_102();
  v1();

  OUTLINED_FUNCTION_115();
}

void sub_2314A4F50(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_2314A4EA8();
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t *a1, uint64_t *a2)
{

  return sub_2314CD8CC(a1, a2);
}

void OUTLINED_FUNCTION_20_4()
{

  _Block_release(v0);
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t result)
{
  *(v2 + 4) = result;
  *(v2 + 12) = 2080;
  v3 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_2315860F4();
}

void OUTLINED_FUNCTION_20_9(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (__clz(__rbit64(v2)) | (a1 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return sub_231586A64();
}

unint64_t DomainRecencySignal.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for DomainRecencySignal() + 20));
  v3 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6D6B0 != -1)
  {
    OUTLINED_FUNCTION_0_28();
  }

  MEMORY[0x23192FF80](qword_280D6D6B8, unk_280D6D6C0);
  return v3;
}

void OUTLINED_FUNCTION_155()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
}

uint64_t sub_2314A5168(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 | 2) == 3)
  {
  }

  return result;
}

uint64_t sub_2314A51B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v58 = a5;
  v56 = a4;
  v55 = a3;
  v62 = a2;
  v57 = sub_231585884();
  v54 = *(v57 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v57);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F98];
  v59 = (v8 + 16);
  v10 = *(a1 + 16);
  v11 = &unk_280D70000;
  if (v10)
  {
    v12 = a1 + 32;
    *&v9 = 136315138;
    v60 = v9;
    do
    {
      sub_2314A5780(v12, v67);
      if (v11[132] != -1)
      {
        swift_once();
      }

      v13 = sub_231585FF4();
      __swift_project_value_buffer(v13, qword_280D72248);
      sub_2314A5780(v67, &v64);
      v14 = sub_231585FE4();
      v15 = sub_2315865D4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v63 = v61;
        *v16 = v60;
        v17 = v10;
        v18 = v8;
        v19 = v11;
        v20 = v65;
        v21 = v66;
        __swift_project_boxed_opaque_existential_1(&v64, v65);
        v22 = *(v21 + 24);
        v23 = v21;
        v11 = v19;
        v8 = v18;
        v10 = v17;
        v22(v20, v23);
        __swift_destroy_boxed_opaque_existential_1(&v64);
        v24 = sub_2314A22E8();

        *(v16 + 4) = v24;
        _os_log_impl(&dword_231496000, v14, v15, "SignalRepository: processing %s", v16, 0xCu);
        v25 = v61;
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x231931280](v25, -1, -1);
        MEMORY[0x231931280](v16, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v64);
      }

      sub_2314A5F14(v67);
      v26 = v68;
      v27 = v69;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      sub_2314A5780(v67, &v64);
      v28 = swift_allocObject();
      sub_23149FD3C(&v64, v28 + 16);
      *(v28 + 56) = v8;
      v29 = *(v27 + 8);
      v30 = *(v29 + 40);

      v30(MEMORY[0x277D84F90], sub_2314A5AE8, v28, v26, v29);

      __swift_destroy_boxed_opaque_existential_1(v67);
      v12 += 40;
      --v10;
    }

    while (v10);
  }

  v31 = v59;
  swift_beginAccess();
  v32 = *(*v31 + 16);
  if (v11[132] != -1)
  {
    swift_once();
  }

  v33 = sub_231585FF4();
  __swift_project_value_buffer(v33, qword_280D72248);
  v34 = sub_231585FE4();
  v35 = sub_2315865D4();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v55;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v64 = v39;
    *v38 = 136315394;
    sub_231586D94();
    v40 = sub_2314A22E8();

    *(v38 + 4) = v40;
    *(v38 + 12) = 2048;
    *(v38 + 14) = v32;
    _os_log_impl(&dword_231496000, v34, v35, "SignalRepository: processed %s and caching %ld signal values.", v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x231931280](v39, -1, -1);
    MEMORY[0x231931280](v38, -1, -1);
  }

  v43 = v57;
  v42 = v58;
  v44 = v56;
  v45 = v54;
  v46 = v53;
  if (*(v62 + 24))
  {
    v47 = *v59;

    sub_231535C88(v48);
  }

  v49 = *(v62 + 112);
  v50 = *(v62 + 40);
  (*(v62 + 32))(v41);
  sub_23155FCCC(v37, v44, v46, 0);
  (*(v45 + 8))(v46, v43);
  dispatch_group_leave(v42);
}

uint64_t sub_2314A5708()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314A5740()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314A5780(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_11_2(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_2314A5810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_23149C888(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 24 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];

  return v7;
}

unint64_t sub_2314A5880()
{
  result = qword_280D6C9C0;
  if (!qword_280D6C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6C9C0);
  }

  return result;
}

uint64_t sub_2314A58D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

void sub_2314A5938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_85();
  if ((v13 & 1) == 0)
  {
    v14 = v12;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_13();
  if (v15 == v16)
  {
LABEL_7:
    OUTLINED_FUNCTION_57_0(v14);
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      v19 = OUTLINED_FUNCTION_20();
      v20 = _swift_stdlib_malloc_size(v19);
      v19[2] = v9;
      v19[3] = 2 * ((v20 - 32) / 16);
      if (v8)
      {
LABEL_9:
        v21 = OUTLINED_FUNCTION_59_0();
        a7(v21);
        *(v7 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      if (v8)
      {
        goto LABEL_9;
      }
    }

    memcpy(v19 + 4, (v7 + 32), 16 * v9);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v15)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2314A5A30(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a2(0);
  OUTLINED_FUNCTION_19(v5);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a3(a1, v7, v8, v9);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2314A5AF4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v49 = v8;
  v50 = v4;
  for (i = a3; v7; v4 = v50)
  {
LABEL_8:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v7)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v53 = *v12;
    v14 = *(a1 + 56) + v11;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    v19 = *(v18 + 40);

    v55 = v15;
    v56 = v16;
    sub_2314A5168(v15, v16);
    v20 = v19(v17, v18);
    if (*(v20 + 16))
    {
      v21 = sub_23149C888(v53, v13);
      v23 = v22;

      v24 = i;
      if (v23)
      {
        v25 = (*(v20 + 56) + 16 * v21);
        v26 = *v25;
        v27 = v25[1];

        goto LABEL_13;
      }
    }

    else
    {

      v24 = i;
    }

    v28 = a2[3];
    v29 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v28);
    v26 = (*(v29 + 24))(v28, v29);
    v27 = v30;
LABEL_13:

    swift_beginAccess();
    v31 = *(v24 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v24 + 16);
    *(v24 + 16) = 0x8000000000000000;
    v33 = sub_23149C888(v26, v27);
    if (__OFADD__(v32[2], (v34 & 1) == 0))
    {
      goto LABEL_25;
    }

    v35 = v33;
    v36 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
    if (sub_231586A64())
    {
      v37 = sub_23149C888(v26, v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v35 = v37;
    }

    if (v36)
    {

      v39 = v32;
      v40 = v32[7] + 16 * v35;
      v41 = *v40;
      *v40 = v55;
      v42 = *(v40 + 8);
      *(v40 + 8) = v56;
      sub_2314A5EEC(v41, v42);
    }

    else
    {
      v39 = v32;
      v32[(v35 >> 6) + 8] |= 1 << v35;
      v43 = (v32[6] + 16 * v35);
      *v43 = v26;
      v43[1] = v27;
      v44 = v32[7] + 16 * v35;
      *v44 = v55;
      *(v44 + 8) = v56;
      v45 = v32[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_26;
      }

      v32[2] = v47;
    }

    v7 &= v7 - 1;
    *(v24 + 16) = v39;
    swift_endAccess();
    v8 = v49;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314A5E34(uint64_t (*a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = a1();
  *(inited + 40) = v3;
  *(inited + 48) = a1();
  *(inited + 56) = v4;
  return OUTLINED_FUNCTION_111();
}

uint64_t OUTLINED_FUNCTION_111()
{

  return sub_2315860F4();
}

uint64_t sub_2314A5EEC(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 | 2) == 3)
  {
  }

  return result;
}

void sub_2314A5F14(uint64_t a1)
{
  sub_2314A5780(a1, &v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B620, &unk_23158AAE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    sub_2314A2910(&v49, &qword_27DD5BD88, &unk_23158D220);
    return;
  }

  sub_23149FD3C(&v49, v56);
  if (!*(v1 + 24))
  {
    goto LABEL_38;
  }

  sub_2314A5780(v56, &v52);
  __swift_project_boxed_opaque_existential_1(&v52, v54);
  OUTLINED_FUNCTION_83_0();
  DynamicType = swift_getDynamicType();
  v3 = v55;

  __swift_destroy_boxed_opaque_existential_1(&v52);
  v4 = (*(v3 + 16))(DynamicType, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v47 = *v6;
      if (static SignalProviding.cacheable()(*v6, v6[1]))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v49 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2314A5918(0, *(v7 + 16) + 1, 1);
          v7 = v49;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          v11 = OUTLINED_FUNCTION_18(v9);
          sub_2314A5918(v11, v10 + 1, 1);
          v7 = v49;
        }

        *(v7 + 16) = v10 + 1;
        *(v7 + 16 * v10 + 32) = v47;
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v12 = *(v7 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_30:

    v25 = *(v48 + 16);
    if (v25)
    {
      OUTLINED_FUNCTION_76_0();
      v27 = v26;
      sub_23152D874();
      v28 = v13;
      v29 = v27 + 32;
      do
      {
        sub_2314A5780(v29, &v52);
        v30 = v55;
        __swift_project_boxed_opaque_existential_1(&v52, v54);
        v31 = *(v30 + 16);
        v32 = OUTLINED_FUNCTION_54_0();
        *&v49 = v33(v32, v30);
        *(&v49 + 1) = v34;
        sub_2315344E8(&v52, &v50);
        __swift_destroy_boxed_opaque_existential_1(&v52);
        v35 = v49;
        v36 = v50;
        v37 = BYTE8(v50);
        v39 = *(v13 + 16);
        v38 = *(v13 + 24);
        if (v39 >= v38 >> 1)
        {
          OUTLINED_FUNCTION_18(v38);
          sub_23152D874();
        }

        *(v13 + 16) = v39 + 1;
        v40 = v13 + 32 * v39;
        *(v40 + 32) = v35;
        *(v40 + 48) = v36;
        *(v40 + 56) = v37;
        v29 += 40;
        --v25;
      }

      while (v25);
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    v41 = sub_231507810(v28);
    v43 = v57;
    v42 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v54 = v43;
    v55 = *(v42 + 8);
    __swift_allocate_boxed_opaque_existential_1(&v52);
    OUTLINED_FUNCTION_11_2(v43);
    (*(v44 + 16))();
    sub_2315344E8(&v52, &v49);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v52 = v49;
    v53 = BYTE8(v49);
    v45 = v57;
    v46 = v58;
    __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    (*(v46 + 24))(&v52, v41, v45, v46);

    sub_2314D70F4(v52, v53);
LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(v56);
    return;
  }

  v14 = v7 + 40;
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = *(v14 - 8);
    v16 = (*(*v14 + 88))();
    v17 = *(v16 + 16);
    v18 = *(v48 + 16);
    if (__OFADD__(v18, v17))
    {
      break;
    }

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = v48;
    if (!v19 || v18 + v17 > *(v48 + 24) >> 1)
    {
      sub_2314F0CB4();
      v20 = v21;
    }

    v48 = v20;
    if (*(v16 + 16))
    {
      if ((*(v20 + 24) >> 1) - *(v20 + 16) < v17)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v48 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_42;
        }

        *(v48 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_40;
      }
    }

    v14 += 16;
    if (!--v12)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_2314A6404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainRecencySignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainRecencySignal.value(completion:)(sub_2314A4E7C, v9);
}

uint64_t sub_2314A6578()
{
  OUTLINED_FUNCTION_58();
  v2 = v1(0);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_3_10();
  v6(v5);
  return v0;
}

uint64_t sub_2314A65D0()
{
  OUTLINED_FUNCTION_58();
  v2 = v1(0);
  OUTLINED_FUNCTION_8(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_3_10();
  v6(v5);
  return v0;
}

uint64_t DomainUseCase.intentTypes.getter()
{
  switch(*v0)
  {
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
      v1 = OUTLINED_FUNCTION_0_44();
      *(v1 + 16) = xmmword_231588340;
      sub_2314A207C(0, &unk_280D6C628, 0x277CD4078);
      v10 = [swift_getObjCClassFromMetadata() description];
      goto LABEL_4;
    case 0xE:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
      v1 = OUTLINED_FUNCTION_0_44();
      *(v1 + 16) = xmmword_231588340;
      sub_2314A207C(0, &qword_280D6C658, 0x277CD3B30);
      v10 = [swift_getObjCClassFromMetadata() description];
      goto LABEL_4;
    case 0xF:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
      v1 = OUTLINED_FUNCTION_0_44();
      *(v1 + 16) = xmmword_231588340;
      sub_2314A207C(0, &qword_280D6C670, 0x277CD3A18);
      v10 = [swift_getObjCClassFromMetadata() description];
      goto LABEL_4;
    case 0x10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
      v1 = OUTLINED_FUNCTION_0_44();
      *(v1 + 16) = xmmword_231588340;
      sub_2314A207C(0, &qword_280D6C620, 0x277CD41D8);
      v10 = [swift_getObjCClassFromMetadata() description];
LABEL_4:
      v11 = v10;
      v12 = sub_2315861A4();
      v14 = v13;

      *(v1 + 32) = v12;
      *(v1 + 40) = v14;
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_231588FE0;
      sub_2314A207C(0, &qword_280D6EA08, 0x277CD41A8);
      v2 = [swift_getObjCClassFromMetadata() description];
      v3 = sub_2315861A4();
      v5 = v4;

      *(v1 + 32) = v3;
      *(v1 + 40) = v5;
      sub_2314A207C(0, &qword_280D6EA00, 0x277CD41A0);
      v6 = [swift_getObjCClassFromMetadata() description];
      v7 = sub_2315861A4();
      v9 = v8;

      *(v1 + 48) = v7;
      *(v1 + 56) = v9;
      break;
  }

  return v1;
}

uint64_t sub_2314A68F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_2()
{
}

BOOL OUTLINED_FUNCTION_12_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_12_5(uint64_t a1@<X8>, double a2@<D0>)
{
  v6 = (a1 + 16 * v3);
  *v6 = v5;
  v6[1] = v2;
  *(*(v4 + 56) + 8 * v3) = a2;
  v7 = *(v4 + 16);
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1)
{
  *(a1 + 16) = 0;

  return sub_231585884();
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_231586374();
}

size_t OUTLINED_FUNCTION_12_13(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1)
{

  return sub_2314A2910(a1, v1, v2);
}

uint64_t sub_2314A6B14(uint64_t a1)
{
  if (sub_2314A7080(MEMORY[0x277D84F90]))
  {
    v2 = sub_2314B8A90(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v55 + 16) = v2;
  v57 = *(a1 + 16);
  if (v57)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    v54 = xmmword_231588FF0;
    v5 = MEMORY[0x277D84F90];
    v56 = a1;
    while (v3 < *(a1 + 16))
    {
      v6 = v5;
      v59 = *(a1 + 16 * v3 + 32);
      v7 = *(a1 + 16 * v3 + 32);
      v8 = dynamic_cast_existential_1_conditional(v7);
      if (v8)
      {
        v10 = v8;
        v11 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
        v12 = sub_231586204();
        v14 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = *(v4 + 16);
          sub_23149D588();
          v4 = v42;
        }

        v16 = *(v4 + 16);
        v15 = *(v4 + 24);
        if (v16 >= v15 >> 1)
        {
          OUTLINED_FUNCTION_12_11(v15);
          sub_23149D588();
          v4 = v43;
        }

        *(v4 + 16) = v16 + 1;
        v17 = v4 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        v18 = *(v11 + 8);
        _s4NodeCMa();
        OUTLINED_FUNCTION_11_14();
        v19 = sub_2314AAA54(v10, v18);
        swift_beginAccess();
        sub_2314AAB1C(&v60, v19, v20, v21, v22, v23, v24, v25, v54);
        swift_endAccess();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
        inited = swift_initStackObject();
        *(inited + 16) = v54;
        OUTLINED_FUNCTION_11_14();
        *(inited + 32) = sub_2314AAA54(v10, v18);
        v27 = sub_2314B8A90(inited);
        sub_2315419E0(v10, v11, v27);
        if (v58)
        {

          return v55;
        }

        v5 = v6;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
        v28 = sub_231586204();
        v30 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v5 + 16);
          sub_23149D588();
          v5 = v45;
        }

        v32 = *(v5 + 16);
        v31 = *(v5 + 24);
        if (v32 >= v31 >> 1)
        {
          OUTLINED_FUNCTION_12_11(v31);
          sub_23149D588();
          v5 = v46;
        }

        *(v5 + 16) = v32 + 1;
        v33 = v5 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        _s4NodeCMa();
        OUTLINED_FUNCTION_11_14();
        v34 = sub_2314AAA54(v7, *(&v59 + 1));
        swift_beginAccess();
        sub_2314AAB1C(&v60, v34, v35, v36, v37, v38, v39, v40, v54);
        swift_endAccess();
      }

      a1 = v56;
      if (v57 == ++v3)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
LABEL_22:
    if (qword_280D70420 == -1)
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_3();
  swift_once();
LABEL_23:
  v47 = sub_231585FF4();
  __swift_project_value_buffer(v47, qword_280D72248);

  v48 = sub_231585FE4();
  v49 = sub_2315865D4();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    swift_slowAlloc();
    *v50 = 136315394;
    v60 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    OUTLINED_FUNCTION_9_17();

    v51 = sub_2314A22E8();

    *(v50 + 4) = v51;
    *(v50 + 12) = 2080;
    v60 = v5;
    OUTLINED_FUNCTION_9_17();

    v52 = sub_2314A22E8();

    *(v50 + 14) = v52;
    _os_log_impl(&dword_231496000, v48, v49, "SignalGraph: inserted into nodes dependent [%s], independent [%s]", v50, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  else
  {
  }

  return v55;
}

uint64_t sub_2314A7088(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    result = sub_231586864();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(v3 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_231586824();
    OUTLINED_FUNCTION_16_6();
    _s4NodeCMa();
    sub_23152B510();
    result = sub_231586554();
    a1 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = *(a1 + 32);
    OUTLINED_FUNCTION_17_7();
    v6 = a1 + 56;
    v7 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(v11 << v13);
    }

    else
    {
      v14 = v11;
    }

    v9 = v14 & *(a1 + 56);

    v8 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v15 = v8;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_18:
    OUTLINED_FUNCTION_9_0();
    v19 = v18 & v17;
    v21 = *(*(a1 + 48) + ((v16 << 9) | (8 * v20)));

    if (!v21)
    {
      return sub_2314A4B70();
    }

    while (1)
    {
      sub_2314AB3FC(v21);

      v8 = v16;
      v9 = v19;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_231586894())
      {
        _s4NodeCMa();
        swift_dynamicCast();
        v21 = v22;
        v16 = v8;
        v19 = v9;
        if (v22)
        {
          continue;
        }
      }

      return sub_2314A4B70();
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      return sub_2314A4B70();
    }

    ++v15;
    if (*(v6 + 8 * v16))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_2314A7280()
{
  OUTLINED_FUNCTION_28_0();
  if (v6)
  {
    OUTLINED_FUNCTION_3_13();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_12_1();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_38_0(v4, v5, v6, v7, v8, v9);
    v15 = OUTLINED_FUNCTION_20();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_15_3();
    v15[2] = v13;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[v13 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_33();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_33();
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_48_1()
{
  v2 = *(v0 + 40);

  return sub_231586D14();
}

void OUTLINED_FUNCTION_53()
{

  JUMPOUT(0x231931280);
}

__n128 OUTLINED_FUNCTION_28_1()
{
  v3 = *v0;
  v4 = v0[1];
  result = v0[2];
  v2 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return swift_once();
}

uint64_t sub_2314A7458()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2314A7490()
{
  result = qword_280D6FBF8;
  if (!qword_280D6FBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B0E8, &unk_231589320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FBF8);
  }

  return result;
}

char *sub_2314A74F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B3A0, &unk_231589B88);
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

uint64_t sub_2314A75E8()
{
  swift_beginAccess();
  v90 = *(v0 + 16);
  swift_bridgeObjectRetain_n();
  v2 = sub_2314A79FC(v90);
  sub_2314A7088(v2);
  sub_2314A7FE0();
  if (*(v3 + 16) >= *(v3 + 24) >> 1)
  {
    goto LABEL_40;
  }

  v11 = OUTLINED_FUNCTION_7_23(v3, v4, v5, v6, v7, v8, v9, v10, v75, v76, v77, v78, v3, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

  v77 = sub_2314A7080(MEMORY[0x277D84F90]);
  while (1)
  {
    if (v77)
    {
      v12 = sub_2314B8A90(MEMORY[0x277D84F90]);
    }

    else
    {
      v12 = MEMORY[0x277D84FA0];
    }

    v85 = v12;
    v76 = v1;
    if ((v1 & 0xC000000000000001) != 0)
    {

      sub_231586824();
      _s4NodeCMa();
      sub_23152B510();
      sub_231586554();
      v1 = v91;
      v13 = v92;
      v15 = v93;
      v14 = v94;
      v16 = v95;
    }

    else
    {
      v13 = v1 + 56;
      v17 = *(v1 + 56);
      v15 = ~(-1 << *(v1 + 32));
      OUTLINED_FUNCTION_6_20();
      v16 = v18 & v19;

      v14 = 0;
    }

    v78 = v15;
    v20 = (v15 + 64) >> 6;
    if (v1 < 0)
    {
LABEL_19:
      v28 = sub_231586894();
      if (!v28)
      {
        goto LABEL_27;
      }

      v80 = v28;
      _s4NodeCMa();
      swift_dynamicCast();
      v27 = v81;
      v22 = v14;
      v25 = v16;
      if (!v81)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    while (1)
    {
      v21 = v14;
      v22 = v14;
      if (!v16)
      {
        while (1)
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            goto LABEL_27;
          }

          ++v21;
          if (*(v13 + 8 * v22))
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_40:
        OUTLINED_FUNCTION_8_20();
        v11 = OUTLINED_FUNCTION_7_23(v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v67, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
        goto LABEL_3;
      }

LABEL_17:
      OUTLINED_FUNCTION_9_0();
      v25 = v24 & v23;
      v27 = *(*(v1 + 48) + ((v22 << 9) | (8 * v26)));

      if (!v27)
      {
        break;
      }

LABEL_21:
      v29 = *(v79 + 16);
      v30 = (v79 + 32);
      for (i = MEMORY[0x277D84FA0]; v29; --v29)
      {
        v32 = *v30++;

        sub_23155CADC(v33, i);
        i = v34;
      }

      swift_beginAccess();
      v35 = *(v27 + 32);

      v36 = sub_231546330(i, v35);

      if (v36)
      {
        sub_2314AAB1C(&v81, v27, v37, v38, v39, v40, v41, v42, v75);
      }

      v14 = v22;
      v16 = v25;
      if (v1 < 0)
      {
        goto LABEL_19;
      }
    }

LABEL_27:
    sub_2314A4B70();
    if (sub_2314A819C(v85))
    {
      break;
    }

    sub_2314A7088(v43);

    if (*(v79 + 16) >= *(v79 + 24) >> 1)
    {
      OUTLINED_FUNCTION_8_20();
      v52 = OUTLINED_FUNCTION_7_23(v53, v54, v55, v56, v57, v58, v59, v60, v75, v76, v77, v78, v53, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    }

    else
    {
      v52 = OUTLINED_FUNCTION_7_23(v44, v45, v46, v47, v48, v49, v50, v51, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    }

    if (v52)
    {
LABEL_4:

      return v79;
    }
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v61 = sub_231585FF4();
  __swift_project_value_buffer(v61, qword_280D72248);
  v62 = sub_231585FE4();
  v63 = sub_2315865D4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_231496000, v62, v63, "nextDependencySet is empty, returning early with orderedDependencies", v64, 2u);
    v65 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x231931280](v65);
  }

  return v79;
}

uint64_t sub_2314A79FC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2314A7BD8(a1);
  }

  v1 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  sub_231586824();
  while (1)
  {
    while (1)
    {
      if (!sub_231586894())
      {

        return v1;
      }

      _s4NodeCMa();
      swift_dynamicCast();
      if (sub_2314AB380())
      {
        break;
      }
    }

    v2 = *(v1 + 16);
    if (*(v1 + 24) <= v2)
    {
      sub_2314AB120(v2 + 1);
    }

    v1 = v15;
    v3 = *(v15 + 40);
    sub_231586D14();
    sub_2314AAAAC();
    result = sub_231586D44();
    v5 = v15 + 56;
    v6 = -1 << *(v15 + 32);
    v7 = result & ~v6;
    v8 = v7 >> 6;
    if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
    {
      break;
    }

    v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_17:
    *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v15 + 48) + 8 * v9) = v14;
    ++*(v15 + 16);
  }

  v10 = 0;
  v11 = (63 - v6) >> 6;
  while (++v8 != v11 || (v10 & 1) == 0)
  {
    v12 = v8 == v11;
    if (v8 == v11)
    {
      v8 = 0;
    }

    v10 |= v12;
    v13 = *(v5 + 8 * v8);
    if (v13 != -1)
    {
      v9 = __clz(__rbit64(~v13)) + (v8 << 6);
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2314A7BD8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v26 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = 8 * v5;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v2;
    v22[1] = v22;
    MEMORY[0x28223BE20](a1);
    v7 = (v22 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    v23 = v5;
    sub_23149BEE0(0, v5, v7);
    v25 = 0;
    v2 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v5 = v12 | (v2 << 6);
      v6 = *(*(v3 + 48) + 8 * v5);

      v15 = sub_2314AB380();

      if (v15)
      {
        *(v7 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v5;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
LABEL_16:
          sub_2314A7E2C(v7, v23, v25, v3);
          v18 = v17;
          goto LABEL_17;
        }
      }
    }

    v13 = v2;
    while (1)
    {
      v2 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v2 >= v11)
      {
        goto LABEL_16;
      }

      v14 = *(v3 + 56 + 8 * v2);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  v18 = sub_2315422E0(v21, v5, v3);

  MEMORY[0x231931280](v21, -1, -1);
LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_2314A7E2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
      v7 = sub_231586924();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v16 = *(*(a4 + 48) + 8 * (v12 | (v10 << 6)));
        v17 = *(v8 + 40);
        sub_231586D14();

        sub_2314AAAAC();
        v18 = sub_231586D44();
        OUTLINED_FUNCTION_1_28(v18);
        if (((v21 << v20) & ~*(v11 + 8 * v19)) == 0)
        {
          OUTLINED_FUNCTION_2_18();
          while (++v22 != v24 || (v23 & 1) == 0)
          {
            v25 = v22 == v24;
            if (v22 == v24)
            {
              v22 = 0;
            }

            v23 |= v25;
            if (*(v11 + 8 * v22) != -1)
            {
              OUTLINED_FUNCTION_11();
              goto LABEL_25;
            }
          }

          goto LABEL_28;
        }

        OUTLINED_FUNCTION_3_15();
LABEL_25:
        OUTLINED_FUNCTION_12_0();
        *(v11 + v26) |= v27;
        *(*(v8 + 48) + 8 * v28) = v16;
        OUTLINED_FUNCTION_3_24();
        if (v29)
        {
          goto LABEL_29;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_9_0();
          v9 = v15 & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void OUTLINED_FUNCTION_22_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_6()
{
  v4 = *(v0 + 56) + 32 * v1;

  return sub_2314A24F0(v4, v2 - 184);
}

void OUTLINED_FUNCTION_22_10()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
}

BOOL OUTLINED_FUNCTION_23()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_23_4@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  return sub_2314A5168(a1, a2);
}

BOOL sub_2314A819C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_231586864();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t OUTLINED_FUNCTION_59()
{

  return sub_2314A22E8();
}

void sub_2314A8208()
{
  OUTLINED_FUNCTION_17_3();
  v1 = sub_231586094();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v174 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_12();
  v173 = v6;
  OUTLINED_FUNCTION_29_0();
  v186 = sub_231586024();
  v7 = OUTLINED_FUNCTION_4_1(v186);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_12();
  v185 = v12;
  OUTLINED_FUNCTION_29_0();
  v184 = sub_231586064();
  v13 = OUTLINED_FUNCTION_4_1(v184);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_12();
  v183 = v18;
  OUTLINED_FUNCTION_29_0();
  v19 = sub_231585884();
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v202 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_46_1(&v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_46_1(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_46_1(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_35();
  v208 = v29;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v172 - v32;
  v34 = v0[4];
  v199 = v0[5];
  v200 = v34;
  v34(v31);
  v203 = v0;
  v35 = v0[14];
  v192 = v33;
  v189 = v35;
  sub_2314A97B4();
  v37 = v36;
  if (*(v36 + 16))
  {
    v211 = *(v36 + 16);
    v172 = v1;
    v195 = sub_23149FDA0();
    v191 = dispatch_group_create();
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v38 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v38, qword_280D72248);

    v209 = v35;
    v39 = sub_231585FE4();
    sub_2315865D4();

    v40 = OUTLINED_FUNCTION_93_0();
    v198 = v19;
    v204 = v37;
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_22();
      v42 = OUTLINED_FUNCTION_47();
      v213 = v42;
      *v41 = 136315138;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
      MEMORY[0x231930080](v204, v43);
      v44 = sub_2314A22E8();

      *(v41 + 4) = v44;
      OUTLINED_FUNCTION_51_0();
      _os_log_impl(v45, v46, v47, v48, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v37 = v204;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    if (qword_280D6DCD8 != -1)
    {
      OUTLINED_FUNCTION_28_2();
    }

    v49 = qword_280D6DCC0;
    v188 = qword_280D6DCE0;
    if (v49 != -1)
    {
      swift_once();
    }

    v207 = (v202 + 16);
    v194 = v23 + 7;
    v193 = v202 + 32;
    v197 = (v202 + 8);
    v177 = 0x8000000231592460;
    v181 = v215;
    v180 = (v9 + 8);
    v179 = (v15 + 8);
    v187 = qword_280D72188;
    v50 = 32;
    *&v51 = 134218242;
    v176 = v51;
    *&v51 = 136315650;
    v178 = v51;
    *&v51 = 136315138;
    v182 = v51;
    *&v51 = 136315394;
    v190 = v51;
    do
    {
      v210 = v50;
      v212 = *(v37 + v50);
      v52 = v212;
      v53 = dynamic_cast_existential_1_conditional(v212);
      if (v53)
      {
        v55 = v53;
        v56 = v54;
        v206 = v52;
        v57 = dispatch_group_create();
        dispatch_group_enter(v57);
        v58 = v208;
        OUTLINED_FUNCTION_87_0();
        v59();
        v60 = v202;
        v205 = *(v202 + 16);
        v61 = v201;
        v62 = v198;
        v205(v201, v58, v198);
        v63 = (*(v60 + 80) + 40) & ~*(v60 + 80);
        v64 = (v194 + v63) & 0xFFFFFFFFFFFFFFF8;
        v65 = swift_allocObject();
        *(v65 + 2) = v55;
        *(v65 + 3) = v56;
        *(v65 + 4) = v203;
        (*(v60 + 32))(&v65[v63], v61, v62);
        *&v65[v64] = v57;
        v66 = *(v56 + 8);

        v67 = v57;
        v68 = v208;
        v66(sub_231563414, v65, v55, v56);

        sub_231586624();
        v205(v196, v68, v62);
        v69 = sub_231585FE4();
        v70 = sub_2315865D4();
        if (os_log_type_enabled(v69, v70))
        {
          OUTLINED_FUNCTION_22_0();
          v71 = OUTLINED_FUNCTION_42_1();
          v213 = v71;
          *v68 = v190;
          sub_231586D94();
          sub_2314A22E8();
          OUTLINED_FUNCTION_86_0();

          *(v68 + 4) = v62;
          *(v68 + 12) = 2048;
          sub_2315857A4();
          v73 = v72;
          v74 = OUTLINED_FUNCTION_70_0();
          (v56)(v74);
          *(v68 + 14) = v73;
          _os_log_impl(&dword_231496000, v69, v70, "SignalRepository: willPrewarm completed for prewarmableSignalType: %s in %f seconds", v68, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v71);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();

          v75 = v208;
        }

        else
        {

          v76 = OUTLINED_FUNCTION_70_0();
          (v56)(v76);
          v75 = v68;
        }

        (v56)(v75, v62);
      }

      v77 = *(&v212 + 1);
      v78 = OUTLINED_FUNCTION_24_3();
      if (static SignalProviding.cacheable()(v78, v79))
      {
        LOBYTE(v213) = v195;
        v80 = v77[10];
        v81 = OUTLINED_FUNCTION_14_10();
        v82 = v80(v81);
        v83 = sub_23152C49C(v82);

        if (v83)
        {
          v84 = v77[16];
          v85 = OUTLINED_FUNCTION_14_10();
          v87 = v86(v85);
          v88 = 0x6C6169726573;
          if (v87)
          {
            v88 = 0x6C656C6C61726170;
          }

          v206 = v88;
          v89 = v188;
          if (v87)
          {
            v89 = v187;
          }

          v90 = v89;
          v91 = OUTLINED_FUNCTION_24_3();
          sub_23155FCCC(v91, v92, v192, 1);
          v93 = v77[14];
          v94 = OUTLINED_FUNCTION_14_10();
          v93(v94);
          v216 = v213;
          SignalParameterization.bySharedUserId.getter();

          v95 = OUTLINED_FUNCTION_14_10();
          v93(v95);
          v216 = v213;
          SignalParameterization.bySharedUserId.getter();
          v97 = v96;

          v98 = MEMORY[0x277D84F90];
          if (v97)
          {

            v99 = sub_231585FE4();
            v100 = sub_2315865D4();
            if (os_log_type_enabled(v99, v100))
            {
              OUTLINED_FUNCTION_22_0();
              v101 = OUTLINED_FUNCTION_42_1();
              v213 = v101;
              *v98 = v176;
              *(v98 + 4) = *(MEMORY[0x277D84F90] + 16);

              *(v98 + 12) = 2080;
              v102 = v77[15];
              v103 = OUTLINED_FUNCTION_14_10();
              v104(v103);
              v105 = sub_2314A22E8();

              *(v98 + 14) = v105;
              _os_log_impl(&dword_231496000, v99, v100, "SignalRepository: adding %ld userSpecific signals for %s", v98, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v101);
              OUTLINED_FUNCTION_31_3();
              v98 = MEMORY[0x277D84F90];
              OUTLINED_FUNCTION_10();
            }

            else
            {
            }
          }

          v118 = v77[11];
          v119 = OUTLINED_FUNCTION_14_10();
          v213 = v120(v119);
          sub_23152C7FC(v98);
          v121 = v213;
          swift_bridgeObjectRetain_n();
          v122 = v90;

          v123 = sub_231585FE4();
          v124 = sub_2315865D4();

          if (os_log_type_enabled(v123, v124))
          {
            v125 = OUTLINED_FUNCTION_47();
            v213 = OUTLINED_FUNCTION_74();
            *v125 = v178;
            OUTLINED_FUNCTION_80_0();
            sub_231586D94();
            v126 = sub_2314A22E8();

            *(v125 + 4) = v126;
            *(v125 + 12) = 2080;

            v127 = sub_2314A22E8();

            *(v125 + 14) = v127;
            *(v125 + 22) = 2048;
            v128 = *(v121 + 16);

            *(v125 + 24) = v128;

            _os_log_impl(&dword_231496000, v123, v124, "SignalRepository: Queuing %s %s with number of cacheProviders = %ld", v125, 0x20u);
            swift_arrayDestroy();
            v98 = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v37 = v204;
          v129 = v191;
          dispatch_group_enter(v191);
          v130 = swift_allocObject();
          v131 = v203;
          *(v130 + 16) = v121;
          *(v130 + 24) = v131;
          *(v130 + 32) = v212;
          *(v130 + 48) = v129;
          v215[2] = sub_231563404;
          v215[3] = v130;
          v213 = MEMORY[0x277D85DD0];
          v214 = 1107296256;
          v215[0] = sub_23149B484;
          v215[1] = &block_descriptor_57_0;
          v132 = _Block_copy(&v213);

          v133 = v129;
          v134 = v183;
          sub_231586054();
          v216 = v98;
          OUTLINED_FUNCTION_23_5();
          sub_2314AA79C(&qword_280D6FEC0, v135);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
          OUTLINED_FUNCTION_22_9();
          sub_2314AA8B4(&qword_280D6FEB0, &qword_27DD5B180, &unk_231589020);
          v136 = v185;
          v137 = v186;
          sub_2315867C4();
          MEMORY[0x231930370](0, v134, v136, v132);
          _Block_release(v132);

          (*v180)(v136, v137);
          (*v179)(v134, v184);
        }

        else
        {
          v112 = sub_231585FE4();
          v113 = sub_2315865D4();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = OUTLINED_FUNCTION_47();
            *&v212 = swift_slowAlloc();
            v216 = v212;
            *v114 = v178;
            OUTLINED_FUNCTION_80_0();
            sub_231586D94();
            v115 = sub_2314A22E8();

            *(v114 + 4) = v115;
            *(v114 + 12) = 2080;
            v213 = 0;
            v214 = 0xE000000000000000;
            sub_231586954();

            v213 = 0xD000000000000022;
            v214 = v177;
            v116 = 0xE600000000000000;
            v117 = 0x656E6F685069;
            switch(v195)
            {
              case 1:
                v116 = 0xE400000000000000;
                v117 = 1684099177;
                break;
              case 2:
                v116 = 0xE700000000000000;
                v117 = 0x646F50656D6F68;
                break;
              case 3:
                v116 = 0xE700000000000000;
                v117 = 0x5654656C707061;
                break;
              case 4:
                v116 = 0xE300000000000000;
                v117 = 6513005;
                break;
              case 5:
                v116 = 0xE500000000000000;
                v117 = 0x6863746177;
                break;
              case 6:
                v116 = 0xE700000000000000;
                v117 = 0x6E776F6E6B6E75;
                break;
              default:
                break;
            }

            MEMORY[0x23192FF80](v117, v116);

            MEMORY[0x23192FF80](93, 0xE100000000000000);
            v138 = sub_2314A22E8();

            *(v114 + 14) = v138;
            *(v114 + 22) = 2080;
            v139 = OUTLINED_FUNCTION_14_10();
            v80(v139);
            MEMORY[0x231930080]();

            v140 = sub_2314A22E8();

            *(v114 + 24) = v140;
            _os_log_impl(&dword_231496000, v112, v113, "SignalRepository: %s restricted for %s by %s", v114, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_31_3();
            OUTLINED_FUNCTION_10();
          }

          v37 = v204;
        }
      }

      else
      {
        v106 = sub_231585FE4();
        v107 = sub_2315865D4();
        v108 = OUTLINED_FUNCTION_11_5(v107);
        v37 = v204;
        if (v108)
        {
          v109 = OUTLINED_FUNCTION_22();
          v110 = OUTLINED_FUNCTION_47();
          OUTLINED_FUNCTION_82_0(v110);
          OUTLINED_FUNCTION_80_0();
          sub_231586D94();
          v111 = sub_2314A22E8();

          *(v109 + 4) = v111;
          _os_log_impl(&dword_231496000, v106, v107, "SignalRepository: non-cacheable %s", v109, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v110);
          OUTLINED_FUNCTION_5_8();
          OUTLINED_FUNCTION_31_3();
        }
      }

      v50 = &v210[2];
      --v211;
    }

    while (v211);
    v141 = v203;
    v142 = v203[7];
    v143 = v203[8];
    v144 = v173;
    sub_2314AA42C(v203[6]);
    v145 = sub_231586614();
    (*(v174 + 8))(v144, v172);
    v146 = v175;
    if (v145)
    {
      v147 = *__swift_project_boxed_opaque_existential_1(v141 + 9, v141[12]);
      sub_2315803A8();

      v148 = sub_231585FE4();
      v149 = sub_2315865E4();

      if (os_log_type_enabled(v148, v149))
      {
        v150 = OUTLINED_FUNCTION_22();
        v151 = OUTLINED_FUNCTION_47();
        OUTLINED_FUNCTION_82_0(v151);

        v152 = sub_2314A22E8();

        *(v150 + 4) = v152;
        _os_log_impl(&dword_231496000, v148, v149, "SignalRepository: hit Timeout %s", v150, 0xCu);
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_10();
      }
    }

    sub_23155FE18();
    v154 = v153;

    v155 = v198;
    (*v207)(v146, v192, v198);

    v156 = sub_231585FE4();
    v157 = sub_2315865D4();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      LODWORD(v211) = v157;
      v159 = v158;
      *&v212 = OUTLINED_FUNCTION_74();
      v213 = v212;
      *v159 = 136315906;

      v160 = sub_2314A22E8();

      *(v159 + 4) = v160;
      *(v159 + 12) = 2048;
      v161 = v201;
      v210 = v156;
      OUTLINED_FUNCTION_87_0();
      v162();
      sub_2315857A4();
      v164 = v163;
      v165 = *v197;
      v209 = v154;
      v165(v161, v155);
      v165(v146, v155);
      *(v159 + 14) = v164;
      *(v159 + 22) = 1024;
      *(v159 + 24) = v145 & 1;
      *(v159 + 28) = 2080;

      v166 = sub_2314A22E8();

      *(v159 + 30) = v166;
      v167 = v210;
      _os_log_impl(&dword_231496000, v210, v211, "SignalRepository: finished prewarming [%s] in %f seconds [timeout=%{BOOL}d], still prewarming [%s]", v159, 0x26u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_31_3();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      v165 = *v197;
      (*v197)(v146, v155);
    }

    sub_231531CFC();

    v165(v192, v155);
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v168 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v168, qword_280D72248);
    v169 = sub_231585FE4();
    v170 = sub_2315865D4();
    if (OUTLINED_FUNCTION_11_5(v170))
    {
      v171 = OUTLINED_FUNCTION_5_3();
      *v171 = 0;
      _os_log_impl(&dword_231496000, v169, v170, "SignalRepository: no signals to prewarm", v171, 2u);
      OUTLINED_FUNCTION_31_3();
    }

    (*(v202 + 8))(v192, v19);
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2314A96A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314A96E8()
{
  v1 = sub_231585884();
  OUTLINED_FUNCTION_4_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

void sub_2314A97B4()
{
  OUTLINED_FUNCTION_17_3();
  v125 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE60, &qword_23158E058);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v113 - v8;
  v10 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v120 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_0();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v113 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v113 - v22;
  os_unfair_lock_lock((v0 + 16));
  v24 = *(v0 + 24);

  v122 = v0;
  os_unfair_lock_unlock((v0 + 16));
  v26 = *(v3 + 16);
  if (v26)
  {
    v126 = v24;
    v118 = v21;
    v119 = v17;
    v27 = (v3 + 32);
    v28 = MEMORY[0x277D84F90];
    *&v25 = 136315394;
    v113 = v25;
    v123 = MEMORY[0x277D84F90];
    v124 = v9;
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      v127 = *v27;
      v129 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
      v30 = sub_231586204();
      if (*(v126 + 16))
      {
        v32 = sub_23149C888(v30, v31);
        v34 = v33;

        if (v34)
        {
          sub_2314ABA74(*(v126 + 56) + *(v120 + 72) * v32, v9);
          __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
          sub_2314ABAD8(v9, v23, type metadata accessor for SignalRepository.PrewarmStatus.Record);
          goto LABEL_11;
        }
      }

      else
      {
      }

      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
      if (qword_280D6E038 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v10, qword_280D72190);
      sub_2314ABA74(v35, v23);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        sub_2314A2910(v9, &qword_27DD5BE60, &qword_23158E058);
      }

LABEL_11:
      v36 = *(&v127 + 1);
      if (v23[*(v10 + 24)] == 1)
      {
        if (qword_280D6E040 != -1)
        {
          swift_once();
        }

        v37 = *(v10 + 20);
        v38 = qword_280D721A8;
        sub_231585864();
        if (fabs(v39) <= v38)
        {
          v52 = *(v36 + 15);
          v53 = OUTLINED_FUNCTION_27_3();
          v55 = v54(v53);
          v36 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = *(v123 + 16);
            OUTLINED_FUNCTION_19_2();
            sub_23149D588();
            v123 = v91;
          }

          v58 = *(v123 + 16);
          v57 = *(v123 + 24);
          if (v58 >= v57 >> 1)
          {
            OUTLINED_FUNCTION_18(v57);
            OUTLINED_FUNCTION_83_0();
            sub_23149D588();
            v123 = v92;
          }

          sub_2314ABD30(v23);
          v59 = v123;
          *(v123 + 16) = v58 + 1;
          v60 = v59 + 16 * v58;
          *(v60 + 32) = v55;
          v61 = v60 + 32;
          goto LABEL_43;
        }

        if (qword_280D70420 != -1)
        {
          OUTLINED_FUNCTION_3();
          swift_once();
        }

        v40 = sub_231585FF4();
        OUTLINED_FUNCTION_1_4(v40, qword_280D72248);
        v41 = v118;
        sub_2314ABA74(v23, v118);
        v42 = v119;
        sub_2314ABA74(v23, v119);
        v43 = sub_231585FE4();
        v121 = sub_2315865E4();
        if (OUTLINED_FUNCTION_11_5(v121))
        {
          v44 = OUTLINED_FUNCTION_22_0();
          v116 = v29;
          v45 = v44;
          v115 = OUTLINED_FUNCTION_74();
          *&v129 = v115;
          *v45 = v113;
          v114 = v43;
          v117 = v28;
          v46 = *v41;
          v47 = v41[1];

          sub_2314ABD30(v41);
          v48 = sub_2314A22E8();

          *(v45 + 4) = v48;
          *(v45 + 12) = 2080;
          v49 = *(v10 + 20);
          sub_231585884();
          sub_2314AA79C(&qword_280D6FBD0, MEMORY[0x277CC9578]);
          sub_231586C24();
          sub_2314ABD30(v42);
          v50 = sub_2314A22E8();
          v28 = v117;

          *(v45 + 14) = v50;
          v51 = v114;
          _os_log_impl(&dword_231496000, v114, v121, "SignalRepository: signal %s has been active too long (since %s), so allowing re-trigger", v45, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_10();
          v29 = v116;
          OUTLINED_FUNCTION_10();
        }

        else
        {

          sub_2314ABD30(v42);
          sub_2314ABD30(v41);
        }
      }

      if (*(v122 + 40))
      {
        v62 = *(v36 + 17);
        v63 = OUTLINED_FUNCTION_27_3();
        v65 = v64(v63);
      }

      else
      {
        v65 = *(v122 + 32);
      }

      v66 = *(v10 + 20);
      sub_2315857A4();
      if (v67 >= v65)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = *(v28 + 16);
          OUTLINED_FUNCTION_19_2();
          sub_2314F18AC();
          v28 = v85;
        }

        v82 = *(v28 + 16);
        v81 = *(v28 + 24);
        if (v82 >= v81 >> 1)
        {
          OUTLINED_FUNCTION_18(v81);
          sub_2314F18AC();
          v28 = v86;
        }

        sub_2314ABD30(v23);
        *(v28 + 16) = v82 + 1;
        v83 = v28 + 16 * v82;
        *(v83 + 32) = v127;
        v61 = v83 + 32;
      }

      else
      {
        v68 = *(v36 + 15);
        v69 = OUTLINED_FUNCTION_27_3();
        *&v129 = v70(v69);
        *(&v129 + 1) = v71;
        MEMORY[0x23192FF80](47, 0xE100000000000000);
        OUTLINED_FUNCTION_88();
        if (!(v74 ^ v75 | v73))
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          OUTLINED_FUNCTION_3();
          swift_once();
LABEL_48:
          v93 = sub_231585FF4();
          OUTLINED_FUNCTION_1_4(v93, qword_280D72248);

          v94 = sub_231585FE4();
          v95 = sub_2315865D4();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = OUTLINED_FUNCTION_22();
            v97 = v29;
            v98 = OUTLINED_FUNCTION_47();
            v128 = v10;
            *&v129 = v98;
            *v96 = *(v36 + 220);
            v99 = OUTLINED_FUNCTION_13_7();
            __swift_instantiateConcreteTypeFromMangledNameV2(v99, v100);
            OUTLINED_FUNCTION_2_34();
            sub_2314AA8B4(v101, &qword_27DD5B0E8, &unk_231589320);
            OUTLINED_FUNCTION_52_0();
            sub_231586154();

            OUTLINED_FUNCTION_13_7();
            v102 = sub_2314A22E8();
            v36 = &OBJC_IVAR____TtC11SiriSignals20AppLaunchCountSignal_bucket;

            *(v96 + 4) = v102;
            _os_log_impl(&dword_231496000, v94, v95, "SignalRepository: excluded signals currently being computed: [%s]", v96, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v98);
            v29 = v97;
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_26_4();
          }

          else
          {
          }

          goto LABEL_53;
        }

        if (v72 <= -9.22337204e18)
        {
          goto LABEL_62;
        }

        if (v72 >= 9.22337204e18)
        {
          goto LABEL_63;
        }

        v128 = v72;
        v76 = sub_231586C24();
        MEMORY[0x23192FF80](v76);

        v36 = *(&v129 + 1);
        v77 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = *(v29 + 16);
          OUTLINED_FUNCTION_19_2();
          sub_23149D588();
          v29 = v88;
        }

        v79 = *(v29 + 16);
        v78 = *(v29 + 24);
        if (v79 >= v78 >> 1)
        {
          OUTLINED_FUNCTION_18(v78);
          sub_23149D588();
          v29 = v89;
        }

        sub_2314ABD30(v23);
        *(v29 + 16) = v79 + 1;
        v80 = v29 + 16 * v79;
        *(v80 + 32) = v77;
        v61 = v80 + 32;
      }

LABEL_43:
      *(v61 + 8) = v36;
      ++v27;
      --v26;
      v9 = v124;
      if (!v26)
      {

        v10 = v123;
        goto LABEL_46;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
LABEL_46:
  v36 = &OBJC_IVAR____TtC11SiriSignals20AppLaunchCountSignal_bucket;
  if (*(v10 + 16))
  {
    if (qword_280D70420 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_48;
  }

LABEL_53:
  if (*(v29 + 16))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v103 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v103, qword_280D72248);

    v104 = v29;
    v105 = sub_231585FE4();
    v106 = sub_2315865D4();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = OUTLINED_FUNCTION_22();
      v108 = OUTLINED_FUNCTION_47();
      v128 = v104;
      *&v129 = v108;
      *v107 = *(v36 + 220);
      v109 = OUTLINED_FUNCTION_13_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(v109, v110);
      OUTLINED_FUNCTION_2_34();
      sub_2314AA8B4(v111, &qword_27DD5B0E8, &unk_231589320);
      OUTLINED_FUNCTION_52_0();
      sub_231586154();

      OUTLINED_FUNCTION_13_7();
      v112 = sub_2314A22E8();

      *(v107 + 4) = v112;
      _os_log_impl(&dword_231496000, v105, v106, "SignalRepository: excluded signals by debounce interval: [%s]", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_26_4();
    }

    else
    {
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_3();
}