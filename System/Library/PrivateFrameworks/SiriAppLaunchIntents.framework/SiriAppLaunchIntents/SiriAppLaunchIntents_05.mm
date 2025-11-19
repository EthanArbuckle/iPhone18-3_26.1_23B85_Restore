uint64_t sub_26612B4D4()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_7(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_4(v4);

  return v7(v6);
}

uint64_t sub_26612B56C()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_7(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_4(v4);

  return v7(v6);
}

uint64_t sub_26612B604()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_7(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_3_11(v5);

  return v8(v7);
}

uint64_t sub_26612B698()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_7(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_3_11(v5);

  return v8(v7);
}

void OUTLINED_FUNCTION_5_11(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return swift_once();
}

void OUTLINED_FUNCTION_21_9()
{

  JUMPOUT(0x26677CC30);
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_4()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[11];

  return type metadata accessor for LaunchAppIntentResponse();
}

void OUTLINED_FUNCTION_41_2(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;

  sub_26612A450();
}

char *OUTLINED_FUNCTION_42_4()
{

  return LaunchAppIntentResponse.init(code:userActivity:)(5, 0);
}

uint64_t OUTLINED_FUNCTION_44_1()
{
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void *OUTLINED_FUNCTION_55_2()
{
  sub_2660B9EB8((v0 + 208), v0 + 160);

  return memcpy((v1 + 16), (v0 + 40), 0xA8uLL);
}

double OUTLINED_FUNCTION_56_1()
{
  result = 0.0;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v5 = *v3;
  v4 = v3[1];
}

void OUTLINED_FUNCTION_59_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_62_2()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_63_2()
{

  return [v1 (v0 + 1951)];
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_266103A98(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_26618CB70();
}

uint64_t sub_26612BB2C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_26618B500();
  v2[5] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v2[6] = v4;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_26618C6B0();
  v2[8] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v2[9] = v8;
  v10 = *(v9 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26612BC50, 0, 0);
}

uint64_t sub_26612BC50()
{
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v49 = __swift_project_value_buffer(v0[8], qword_2814B4A80);
  v50 = *(v2 + 16);
  v50(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppNeedsDisambiguationFlow.execute() called", v5, 2u);
    MEMORY[0x26677CC30](v5, -1, -1);
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];

  v51 = *(v8 + 8);
  v51(v6, v7);
  OUTLINED_FUNCTION_3_14();
  sub_26618B4F0();
  v13 = sub_26618B110();
  v14 = *(v10 + 8);
  v14(v9, v12);
  if (v13 & 1) != 0 || (OUTLINED_FUNCTION_3_14(), (sub_26618B190()) || (OUTLINED_FUNCTION_3_14(), (sub_26618B1A0()))
  {
    (v50)(v0[10], v49, v0[8]);
    v15 = sub_26618C690();
    v16 = sub_26618CAA0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2660B7000, v15, v16, "LaunchAppNeedsDisambiguationFlow.wrappedFlow.execute() called", v17, 2u);
      MEMORY[0x26677CC30](v17, -1, -1);
    }

    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    v21 = v0[4];

    v51(v18, v20);
    v22 = *(v21 + 16);
    v23 = *(MEMORY[0x277D5B870] + 4);
    v52 = (*MEMORY[0x277D5B870] + MEMORY[0x277D5B870]);
    v24 = swift_task_alloc();
    v0[13] = v24;
    *v24 = v0;
    v24[1] = sub_26611C858;
    v25 = v0[3];

    return v52(v25);
  }

  else
  {
    v27 = v0[11];
    v28 = v0[7];
    v29 = v0[8];
    v30 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v31 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v31);
    v33 = *(v32 + 72);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v14(v28, v30);
    v36 = sub_26618AC10();

    (v50)(v27, v49, v29);
    v37 = sub_26618C690();
    v38 = sub_26618CAA0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2660B7000, v37, v38, "Device is not authenticated - pushing an unlock flow", v39, 2u);
      MEMORY[0x26677CC30](v39, -1, -1);
    }

    v40 = v0[11];
    v41 = v0[8];
    v42 = v0[9];
    v43 = v0[3];

    v51(v40, v41);
    v0[2] = v36;
    sub_26618AE60();
    sub_26618B330();

    v45 = v0[11];
    v44 = v0[12];
    v46 = v0[10];
    v47 = v0[7];

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_26612C140()
{
  type metadata accessor for LaunchAppNeedsDisambiguationFlow();
  OUTLINED_FUNCTION_0_12();
  sub_26612C510(v0, v1, v2);
  return sub_26618AFB0();
}

uint64_t sub_26612C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for LaunchAppDisambiguationStrategy();
  sub_26612C510(&qword_28005C4E0, 255, type metadata accessor for LaunchAppDisambiguationStrategy);
  v9 = sub_26618AED0();
  v10 = v9(a1, a2);

  *&v25[0] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C648, &qword_266192480);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C650, &qword_266192488);
  v15 = sub_26612C558();
  v16 = MEMORY[0x26677A1C0](v25, v14, v15);
  sub_2660C5864(a4, v25);
  sub_2660C5864(a5, v24);
  __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
  v23[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v23[4] = &off_2877CD5D8;
  type metadata accessor for LaunchAppNeedsDisambiguationFlow();
  v17 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v23, &type metadata for AppLaunchFlowFactoryImpl);
  v17[11] = &type metadata for AppLaunchFlowFactoryImpl;
  v17[12] = &off_2877CD5D8;
  v17[2] = v16;
  sub_2660CD484(v25, (v17 + 3));

  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  *&v25[0] = v17;
  OUTLINED_FUNCTION_0_12();
  sub_26612C510(v18, v19, v20);
  v21 = sub_26618AFA0();

  return v21;
}

uint64_t sub_26612C408(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26611CD84;

  return sub_26612BB2C(a1);
}

uint64_t sub_26612C510(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_26612C558()
{
  result = qword_2814B4830;
  if (!qword_2814B4830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C650, &qword_266192488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4830);
  }

  return result;
}

uint64_t sub_26612C5D4()
{
  sub_26618B810();
  type metadata accessor for BaseDialogProvider();
  v0 = swift_allocObject();
  v1 = sub_26618C460();

  v9[3] = v1;
  v9[4] = &off_2877CC660;
  v9[0] = sub_26618C450();
  v2 = sub_26618B470();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_26618B460();
  sub_2660CFC00(v9, v8);
  v6 = sub_26612FA04(v10, v0, v8, v5);

  sub_2660CFC5C(v9);
  return v6;
}

uint64_t sub_26612C698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v182 = a1;
  v183 = a2;
  v2 = sub_26618B790();
  v3 = OUTLINED_FUNCTION_2_2(v2);
  v169 = v4;
  v170 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v168 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v167 = &v157[-v10];
  OUTLINED_FUNCTION_18_2();
  v11 = sub_26618B8E0();
  v12 = OUTLINED_FUNCTION_2_2(v11);
  v165 = v13;
  v166 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_6();
  v164 = v16;
  OUTLINED_FUNCTION_18_2();
  v171 = sub_26618B980();
  v17 = OUTLINED_FUNCTION_2_2(v171);
  v161 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_6();
  v160 = v21;
  OUTLINED_FUNCTION_18_2();
  v172 = sub_26618B840();
  v22 = OUTLINED_FUNCTION_2_2(v172);
  v174 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_6();
  v173 = v26;
  OUTLINED_FUNCTION_18_2();
  v163 = type metadata accessor for AppLaunchIntent();
  v27 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_4_6();
  v175 = v28;
  OUTLINED_FUNCTION_18_2();
  v29 = sub_26618C0E0();
  v30 = OUTLINED_FUNCTION_2_2(v29);
  v176 = v31;
  v177 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_6();
  v178 = v34;
  OUTLINED_FUNCTION_18_2();
  v35 = sub_26618B800();
  v36 = OUTLINED_FUNCTION_2_2(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v41);
  v43 = &v157[-v42];
  v44 = sub_26618C6B0();
  v45 = OUTLINED_FUNCTION_2_2(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_24_1();
  v52 = (v50 - v51);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v58);
  v60 = &v157[-v59];
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_37_0(v44, qword_2814B4A98);
  v61 = v47;
  v62 = *(v47 + 16);
  v162 = v63;
  v180 = v62;
  v181 = (v47 + 16);
  v62(v60);
  v64 = sub_26618C690();
  v65 = sub_26618CAA0();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = OUTLINED_FUNCTION_6_2();
    *v66 = 0;
    _os_log_impl(&dword_2660B7000, v64, v65, "LaunchAppNeedsValueStrategy.actionForInput() called", v66, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v67 = v44;
  v179 = *(v61 + 8);
  v179(v60, v44);
  v68 = v182;
  sub_26618B770();
  v69 = (*(v38 + 88))(v43, v35);
  if (v69 == *MEMORY[0x277D5C128])
  {
    (*(v38 + 96))(v43, v35);
    v71 = v176;
    v70 = v177;
    v72 = v178;
    (*(v176 + 32))(v178, v43, v177);
    v73 = v175;
    (*(v71 + 16))(v175, v72, v70);
    if (sub_2660C97B4())
    {
      sub_26618B290();
LABEL_43:
      sub_2660DD7D0(v73);
      return (*(v71 + 8))(v72, v70);
    }

    if (qword_2814B3D30 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_6_12();
    sub_26612F9BC(v90, 255, v91);
    sub_26618BDA0();
    if (v184 != 11)
    {
      if (sub_266146C4C(v184) == 1852141679 && v92 == 0xE400000000000000)
      {
      }

      else
      {
        v94 = OUTLINED_FUNCTION_6_9();

        if ((v94 & 1) == 0)
        {
          if (qword_2814B2C38 != -1)
          {
            OUTLINED_FUNCTION_2_5();
          }

          OUTLINED_FUNCTION_37_0(v44, qword_2814B4A80);
          OUTLINED_FUNCTION_16_7();
          v95();
          v96 = sub_26618C690();
          v97 = sub_26618CA90();
          if (OUTLINED_FUNCTION_16_4(v97))
          {
            *OUTLINED_FUNCTION_6_2() = 0;
            OUTLINED_FUNCTION_7_7(&dword_2660B7000, v98, v99, "Incorrect verb in intent for flow, ignoring input");
            v72 = v178;
            OUTLINED_FUNCTION_7_2();
          }

          OUTLINED_FUNCTION_21_7();
          v100();
          sub_26618B2B0();
          goto LABEL_43;
        }
      }
    }

    OUTLINED_FUNCTION_16_7();
    v120();
    v121 = sub_26618C690();
    v122 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_16_4(v122))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v123, v124, "LaunchAppNeedsValueStrategy.actionForInput() handling");
      v72 = v178;
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_21_7();
    v125();
    sub_26618B2A0();
    goto LABEL_43;
  }

  if (v69 == *MEMORY[0x277D5C160])
  {
    (*(v38 + 96))(v43, v35);
    v75 = v173;
    v74 = v174;
    v76 = v172;
    (*(v174 + 32))(v173, v43, v172);
    v77 = v164;
    sub_26618B820();
    v78 = sub_26618B8B0();
    (*(v165 + 8))(v77, v166);
    v79 = v167;
    sub_266139C58(v78, v167);

    v80 = v171;
    if (__swift_getEnumTagSinglePayload(v79, 1, v171) == 1)
    {
      sub_2660C8040(v79, &qword_28005BF28, &qword_26618F960);
      if (qword_2814B2C38 != -1)
      {
        OUTLINED_FUNCTION_2_5();
      }

      OUTLINED_FUNCTION_37_0(v67, qword_2814B4A80);
      OUTLINED_FUNCTION_16_7();
      v81();
      v82 = sub_26618C690();
      v83 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_3(v83))
      {
        v84 = OUTLINED_FUNCTION_6_2();
        *v84 = 0;
        OUTLINED_FUNCTION_17_3();
        _os_log_impl(v85, v86, v87, v88, v84, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      OUTLINED_FUNCTION_21_7();
      v89();
      sub_26618B2B0();
      return (*(v74 + 8))(v75, v76);
    }

    OUTLINED_FUNCTION_20_11();
    v118 = v160;
    (*(v77 + 32))(v160, v79, v80);
    if (sub_26618B940() & 1) != 0 || (sub_26618B930())
    {
      sub_26618B290();
LABEL_35:
      (*(v77 + 8))(v118, v80);
      return (*(v74 + 8))(v75, v76);
    }

    if (!sub_266144F30())
    {
      sub_26618B2B0();
      goto LABEL_35;
    }

    v126 = 1852141679;
    sub_26613BA0C();
    v128 = v127;
    if (sub_266145BC4(v127) == 1852141679 && v129 == 0xE400000000000000)
    {
      goto LABEL_65;
    }

    v131 = OUTLINED_FUNCTION_6_9();

    OUTLINED_FUNCTION_20_11();
    if (v131)
    {
      goto LABEL_67;
    }

    v126 = 0xE900000000000065;
    if (sub_266145BC4(v128) == 0x736972616D6D7573 && v132 == 0xE900000000000065)
    {
LABEL_65:
      OUTLINED_FUNCTION_20_11();
    }

    else
    {
      v134 = sub_26618D000();

      OUTLINED_FUNCTION_20_11();
      if (v134)
      {
        goto LABEL_67;
      }

      if (sub_266145BC4(v128) != 0x627265566F6ELL || v135 != 0xE600000000000000)
      {
        v137 = sub_26618D000();

        if ((v137 & 1) == 0)
        {
          v138 = v174;
          if (qword_2814B2C38 != -1)
          {
            OUTLINED_FUNCTION_2_5();
          }

          OUTLINED_FUNCTION_37_0(v67, qword_2814B4A80);
          OUTLINED_FUNCTION_16_7();
          v139();
          v140 = sub_26618C690();
          v141 = sub_26618CAB0();
          if (OUTLINED_FUNCTION_15_3(v141))
          {
            v126 = OUTLINED_FUNCTION_6_2();
            *v126 = 0;
            OUTLINED_FUNCTION_17_3();
            _os_log_impl(v142, v143, v144, v145, v126, 2u);
            OUTLINED_FUNCTION_20_11();
            OUTLINED_FUNCTION_7_2();
          }

          OUTLINED_FUNCTION_21_7();
          v146();
          goto LABEL_74;
        }

LABEL_67:
        __swift_project_boxed_opaque_existential_1((v158 + 152), *(v158 + 176));
        v147 = sub_2660FA19C();
        v138 = v174;
        if (qword_28005BC80 != -1)
        {
          swift_once();
        }

        v148 = sub_26612EAB0(v147, qword_28005D1A0);

        if (v148)
        {
          OUTLINED_FUNCTION_16_7();
          v149();
          v150 = sub_26618C690();
          v151 = sub_26618CAA0();
          if (OUTLINED_FUNCTION_15_3(v151))
          {
            v126 = OUTLINED_FUNCTION_6_2();
            *v126 = 0;
            OUTLINED_FUNCTION_17_3();
            _os_log_impl(v152, v153, v154, v155, v126, 2u);
            OUTLINED_FUNCTION_20_11();
            OUTLINED_FUNCTION_7_2();
          }

          OUTLINED_FUNCTION_21_7();
          v156();
          sub_26618B2A0();
          goto LABEL_75;
        }

LABEL_74:
        sub_26618B2B0();
LABEL_75:

        (*(v126 + 8))(v160, v80);
        return (*(v138 + 8))(v173, v76);
      }
    }

    goto LABEL_67;
  }

  v178 = v61 + 8;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_37_0(v44, qword_2814B4A80);
  OUTLINED_FUNCTION_16_7();
  v101();
  v102 = v168;
  v103 = v169;
  v104 = v170;
  (*(v169 + 16))(v168, v68, v170);
  v105 = sub_26618C690();
  v106 = sub_26618CAB0();
  if (OUTLINED_FUNCTION_16_4(v106))
  {
    v107 = OUTLINED_FUNCTION_49_0();
    v182 = v67;
    v108 = v107;
    v177 = v107;
    v181 = OUTLINED_FUNCTION_45_1();
    v185 = v181;
    *v108 = 136315138;
    v109 = v159;
    LODWORD(v180) = v52;
    sub_26618B770();
    v110 = sub_266145588(v109);
    v111 = v104;
    v113 = v112;
    (*(v103 + 8))(v102, v111);
    v114 = sub_266103A98(v110, v113, &v185);

    v115 = v177;
    *(v177 + 4) = v114;
    _os_log_impl(&dword_2660B7000, v105, v180, "Unable to handle parse: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v181);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v116 = v52;
    v117 = v182;
  }

  else
  {

    (*(v103 + 8))(v102, v104);
    v116 = v52;
    v117 = v67;
  }

  v179(v116, v117);
  sub_26618B2B0();
  return (*(v38 + 8))(v43, v35);
}

uint64_t sub_26612D594()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x2822009F8](sub_26612D640, 0, 0);
}

uint64_t sub_26612D640()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[5];
  v1 = v0[6];
  OUTLINED_FUNCTION_37_0(v0[4], qword_2814B4A98);
  (*(v2 + 16))(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppNeedsValueStrategy.makePromptForValue() called", v5, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  (*(v7 + 8))(v6, v8);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_2661059E8;
  v11 = v0[2];

  return sub_26617B9FC();
}

uint64_t sub_26612D7B4()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_26618B790();
  v1[7] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B8E0();
  v1[10] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_8_2();
  v13 = sub_26618B840();
  v1[13] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[14] = v14;
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_8_2();
  v17 = *(*(type metadata accessor for AppLaunchIntent() - 8) + 64);
  v1[16] = OUTLINED_FUNCTION_8_2();
  v18 = sub_26618C6B0();
  v1[17] = v18;
  OUTLINED_FUNCTION_0_4(v18);
  v1[18] = v19;
  v21 = *(v20 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v22 = sub_26618C0E0();
  v1[25] = v22;
  OUTLINED_FUNCTION_0_4(v22);
  v1[26] = v23;
  v25 = *(v24 + 64);
  v1[27] = OUTLINED_FUNCTION_8_2();
  v26 = sub_26618B800();
  v1[28] = v26;
  OUTLINED_FUNCTION_0_4(v26);
  v1[29] = v27;
  v29 = *(v28 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26612DA5C, 0, 0);
}

uint64_t sub_26612DA5C()
{
  v173 = v0;
  v1 = v0 + 31;
  v2 = v0[31];
  v4 = v0 + 29;
  v3 = v0[29];
  v5 = v0[28];
  v7 = v0[4];
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v167 = sub_26618B6B0();
  sub_26618B770();
  v8 = (*(v3 + 88))(v2, v5);
  if (v8 == *MEMORY[0x277D5C128])
  {
    v9 = v0[31];
    v10 = v0[26];
    v11 = v0[27];
    v12 = v0[25];
    (*(v0[29] + 96))(v9, v0[28]);
    (*(v10 + 32))(v11, v9, v12);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v13 = v0[24];
    v14 = v0[18];
    OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A98);
    v160 = v15;
    v157 = *(v14 + 16);
    v157(v13);
    v16 = sub_26618C690();
    v17 = sub_26618CAA0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_6_2();
      *v18 = 0;
      _os_log_impl(&dword_2660B7000, v16, v17, "LaunchApp.FlowStrategy.makeIntentFromParse() Creating intent from NLv3IntentOnly parse", v18, 2u);
      OUTLINED_FUNCTION_9_9();
    }

    v19 = v0[26];
    v20 = v0[27];
    v22 = v0[24];
    v21 = v0[25];
    v153 = v0[23];
    v24 = v0[17];
    v23 = v0[18];
    v25 = v0[16];
    v26 = v0[6];

    v27 = v22;
    v28 = *(v23 + 8);
    v28(v27, v24);
    (*(v19 + 16))(v25, v20, v21);
    v29 = __swift_project_boxed_opaque_existential_1((v26 + 152), *(v26 + 176));
    sub_26612F47C(v25, v29, v167);
    (v157)(v153, v160, v24);
    v30 = v167;
    v31 = sub_26618C690();
    LOBYTE(v19) = sub_26618CAD0();

    if (os_log_type_enabled(v31, v19))
    {
      v32 = OUTLINED_FUNCTION_49_0();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v30;
      *v33 = v30;
      v34 = v30;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v35, v36, v37, v38, v32, 0xCu);
      sub_2660C8040(v33, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_7_3();
    }

    v39 = v0[23];
    v40 = v0[17];
    v41 = v0[18];

    v28(v39, v40);
    v42 = [v30 requestedApplication];
    v43 = v42;
    if (v42)
    {
      v42 = type metadata accessor for Application();
    }

    else
    {
      v170 = 0;
      v171 = 0;
    }

    v98 = v0[26];
    v97 = v0[27];
    v99 = v0[25];
    v100 = v0[16];
    v101 = v0[3];
    v169 = v43;
    v172 = v42;
    type metadata accessor for LaunchAppIntent();
    sub_26618B4A0();
    sub_2660DD7D0(v100);
    (*(v98 + 8))(v97, v99);
    goto LABEL_34;
  }

  if (v8 != *MEMORY[0x277D5C160])
  {
    v163 = v0 + 28;
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v81 = v0[18];
    v80 = v0[19];
    v83 = v0[8];
    v82 = v0[9];
    v84 = v0[7];
    v85 = v0[4];
    OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A80);
    (*(v81 + 16))(v80);
    (*(v83 + 16))(v82, v85, v84);
    v86 = sub_26618C690();
    v87 = sub_26618CAB0();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = v0[30];
      v155 = v0[17];
      v158 = v0[19];
      v90 = v0[8];
      v89 = v0[9];
      v148 = v0[7];
      v151 = v0[18];
      v91 = OUTLINED_FUNCTION_49_0();
      v92 = OUTLINED_FUNCTION_45_1();
      v169 = v92;
      *v91 = 136315138;
      sub_26618B770();
      v93 = sub_266145588(v88);
      v95 = v94;
      (*(v90 + 8))(v89, v148);
      v4 = v0 + 29;
      v96 = sub_266103A98(v93, v95, &v169);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_2660B7000, v86, v87, "Unable to process parse: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_7_2();

      (*(v151 + 8))(v158, v155);
    }

    else
    {
      v103 = v0[18];
      v102 = v0[19];
      v104 = v0[17];
      v106 = v0[8];
      v105 = v0[9];
      v107 = v0[7];

      (*(v106 + 8))(v105, v107);
      (*(v103 + 8))(v102, v104);
    }

    goto LABEL_28;
  }

  v44 = v0[15];
  v45 = v0[31];
  v46 = v0[14];
  v47 = v0[13];
  (*(v0[29] + 96))(v45, v0[28]);
  (*(v46 + 32))(v44, v45, v47);
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v163 = v0 + 13;
  v48 = v0[22];
  v49 = v0[18];
  OUTLINED_FUNCTION_37_0(v0[17], qword_2814B4A98);
  v150 = v50;
  v154 = *(v49 + 16);
  v154(v48);
  v51 = sub_26618C690();
  v52 = sub_26618CAA0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_6_2();
    *v53 = 0;
    _os_log_impl(&dword_2660B7000, v51, v52, "LaunchApp.FlowStrategy.makeIntentFromParse() Creating intent from USO parse", v53, 2u);
    OUTLINED_FUNCTION_9_9();
  }

  v54 = v0[22];
  v56 = v0[17];
  v55 = v0[18];
  v57 = v0[15];
  v59 = v0[11];
  v58 = v0[12];
  v60 = v0[10];

  v61 = *(v55 + 8);
  v61(v54, v56);
  sub_26618B820();
  v62 = sub_266144AE8();
  (*(v59 + 8))(v58, v60);
  v63 = v0[17];
  if (!v62)
  {
    (v154)(v0[20], v150, v0[17]);
    v108 = sub_26618C690();
    v109 = sub_26618CAB0();
    v4 = v0 + 14;
    if (OUTLINED_FUNCTION_15_3(v109))
    {
      v110 = OUTLINED_FUNCTION_6_2();
      *v110 = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v111, v112, v113, v114, v110, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    v115 = v0[20];
    v117 = v0[17];
    v116 = v0[18];

    v61(v115, v117);
    v1 = v0 + 15;
LABEL_28:
    sub_2660D3004();
    swift_allocError();
    *v118 = 0;
    v119 = *v1;
    v120 = *v163;
    v121 = *v4;
    v122 = v0[30];
    v123 = v0[31];
    v124 = v0[27];
    v126 = v0[23];
    v125 = v0[24];
    v145 = v0[22];
    v146 = v0[21];
    v147 = v0[20];
    v149 = v0[19];
    v152 = v0[16];
    v156 = v0[15];
    v159 = v0[12];
    v165 = v0[9];
    swift_willThrow();

    (*(v121 + 8))(v119, v120);

    OUTLINED_FUNCTION_5_3();
    goto LABEL_35;
  }

  v164 = v61;
  v64 = v0[21];
  v65 = __swift_project_boxed_opaque_existential_1((v0[6] + 152), *(v0[6] + 176));
  v66 = v167;
  sub_26612EBE8(v62, v65, v167);
  (v154)(v64, v150, v63);

  v67 = sub_26618C690();
  v68 = sub_26618CAD0();

  v69 = os_log_type_enabled(v67, v68);
  v70 = v0[21];
  v72 = v0[17];
  v71 = v0[18];
  if (v69)
  {
    v161 = v0[17];
    v73 = OUTLINED_FUNCTION_49_0();
    v74 = OUTLINED_FUNCTION_45_1();
    v169 = v74;
    *v73 = 136315138;
    v0[2] = v62;
    sub_26618C0D0();

    v75 = sub_26618C8D0();
    v77 = sub_266103A98(v75, v76, &v169);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_2660B7000, v67, v68, "LaunchApp.FlowStrategy.makeIntentFromParseNLv4Uso() Finished creating intent from parse: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    OUTLINED_FUNCTION_7_2();
    v66 = v167;
    OUTLINED_FUNCTION_7_2();

    v78 = v70;
    v79 = v161;
  }

  else
  {

    v78 = v70;
    v79 = v72;
  }

  v164(v78, v79);
  v128 = [v66 requestedApplication];
  v129 = v128;
  if (v128)
  {
    v128 = type metadata accessor for Application();
  }

  else
  {
    v170 = 0;
    v171 = 0;
  }

  v130 = v0[14];
  v131 = v0[15];
  v132 = v0[13];
  v101 = v0[3];
  v169 = v129;
  v172 = v128;
  type metadata accessor for LaunchAppIntent();
  sub_26618B4A0();

  (*(v130 + 8))(v131, v132);
LABEL_34:
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C380, &unk_266190DA0);
  __swift_storeEnumTagSinglePayload(v101, 0, 1, v133);
  v135 = v0[30];
  v134 = v0[31];
  v136 = v0[27];
  v138 = v0[23];
  v137 = v0[24];
  v140 = v0[21];
  v139 = v0[22];
  v142 = v0[19];
  v141 = v0[20];
  v143 = v0[16];
  v162 = v0[15];
  v166 = v0[12];
  v168 = v0[9];

  OUTLINED_FUNCTION_5_3();
LABEL_35:

  return v127();
}

uint64_t sub_26612E5D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266107F90;

  return sub_26612D7B4();
}

uint64_t sub_26612E684()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266106AC4;

  return sub_26612D594();
}

uint64_t sub_26612E720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B370] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_266107F90;

  return MEMORY[0x2821B9BF8](a1, a2, v10, a4);
}

uint64_t sub_26612E7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B378] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppNeedsValueStrategy();
  *v9 = v4;
  v9[1] = sub_266107F90;

  return MEMORY[0x2821B9C00](a1, a2, v10, a4);
}

uint64_t sub_26612E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for LaunchAppNeedsValueStrategy();
  *v13 = v6;
  v13[1] = sub_266107F90;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_26612E984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for LaunchAppNeedsValueStrategy();
  *v15 = v7;
  v15[1] = sub_266107F90;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_26612EAB0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a2 + 40);
  sub_26618D090();

  sub_26618C910();
  v12 = sub_26618D0C0();
  v13 = ~(-1 << *(a2 + 32));
  do
  {
    v14 = v12 & v13;
    if (((*(v6 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v15 = (*(a2 + 48) + 16 * v14);
    if (*v15 == v10 && v15[1] == v9)
    {
      break;
    }

    v17 = sub_26618D000();
    v12 = v14 + 1;
  }

  while ((v17 & 1) == 0);

  return 0;
}

uint64_t sub_26612EBE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26618C6B0();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_1();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_5();
  v101 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v99 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v99 - v20;
  v109[3] = &type metadata for ReferenceResolver;
  v109[4] = &off_2877CC6F0;
  v109[0] = swift_allocObject();
  sub_2660CFC00(a2, v109[0] + 16);
  v104 = a3;
  v22 = [a3 requestedApplication];
  if (!v22)
  {
    type metadata accessor for Application();
    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = OUTLINED_FUNCTION_10_8();
    [v104 setRequestedApplication_];
  }

  sub_266139FE4(v24, v25, v26, v27, v28, v29, v30, v31, v99, v100, v101, v102, v103, v104, v105, v106, v107[0], v107[1], v107[2], v107[3]);
  v102 = v8;
  if ((v32 & 1) == 0 && !sub_266139E9C())
  {
    v100 = v5;
    v56 = [v104 requestedApplication];
    if (v56)
    {
      v57 = v56;
      v58 = sub_26613B704();
      sub_26614484C(v58, v59, 0, 0, 0, 0);
    }

    __swift_project_boxed_opaque_existential_1(v109, &type metadata for ReferenceResolver);
    v60 = sub_2660FA19C();
    v61 = 0;
    v62 = MEMORY[0x277D84F90];
    v108[0] = MEMORY[0x277D84F90];
    v63 = *(v60 + 16);
    v103 = 0x8000000266199930;
    v64 = (v60 + 40);
    v5 = &off_279BC8000;
    while (1)
    {
      if (v63 == v61)
      {

        sub_266106F40(v62, v104);
        v5 = v100;
        goto LABEL_42;
      }

      if (v61 >= *(v60 + 16))
      {
        __break(1u);
        goto LABEL_59;
      }

      v66 = *(v64 - 1);
      v65 = *v64;

      v67 = [v104 isRemoteExecution];
      sub_26611C10C();
      v68 = sub_26618CB70();
      v69 = v68;
      if (v67)
      {
        v70 = sub_26618CBA0();

        if (v70)
        {
          v71 = v66 == 0x6C7070612E6D6F63 && v65 == 0xEC00000076742E65;
          if (v71 || (sub_26618D000() & 1) != 0)
          {
            v66 = 0xD000000000000015;
            v72 = v103;
            goto LABEL_38;
          }
        }
      }

      else
      {
      }

      v72 = v65;
LABEL_38:
      type metadata accessor for Application();
      v73 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      OUTLINED_FUNCTION_10_8();
      sub_26614484C(0, 0xE000000000000000, v66, v72, 0, 0);

      MEMORY[0x26677BD40](v74);
      if (*((v108[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
      v62 = v108[0];
      v64 += 2;
      ++v61;
    }
  }

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
  v33 = *(v8 + 16);
  v103 = v34;
  v100 = v33;
  v33(v21);
  v35 = sub_26618C690();
  v36 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_3(v36))
  {
    v37 = v8;
    v38 = OUTLINED_FUNCTION_6_2();
    *v38 = 0;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v39, v40, v41, v42, v38, 2u);
    v8 = v37;
    OUTLINED_FUNCTION_7_2();
  }

  v43 = *(v8 + 8);
  v43(v21, v5);
  v44 = MEMORY[0x277D84F90];
  sub_266106F40(MEMORY[0x277D84F90], v104);
  sub_26618BDF0();
  if (v108[3])
  {
    sub_2660D74A8(v108, v107);
    sub_26618BDD0();
    if (OUTLINED_FUNCTION_8_12() || (sub_26618BF80(), (OUTLINED_FUNCTION_8_12() & 1) != 0))
    {

      sub_26618BED0();

      if (v105)
      {
        sub_26618BB90();

        v45 = OUTLINED_FUNCTION_31_8();
        sub_266106F40(v45, v104);
      }
    }

    else
    {
      sub_26618BE50();
      if (OUTLINED_FUNCTION_8_12())
      {

        v92 = sub_26618BF10();
        v93 = *(v92 + 48);
        v94 = *(v92 + 52);
        swift_allocObject();
        sub_26618BF00();
        if (MEMORY[0x26677B1D0]())
        {
          v95 = OUTLINED_FUNCTION_31_8();
          sub_266106F40(v95, v104);
        }

        else
        {
          (v100)(v13, v103, v5);
          v96 = sub_26618C690();
          v97 = sub_26618CAB0();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = OUTLINED_FUNCTION_6_2();
            *v98 = 0;
            _os_log_impl(&dword_2660B7000, v96, v97, "Error building entity for reference resolution", v98, 2u);
            OUTLINED_FUNCTION_7_2();
          }

          else
          {
          }

          v43(v13, v5);
        }

        v44 = MEMORY[0x277D84F90];
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v107);
  }

  sub_2660C8040(v108, &qword_28005C0A8, qword_26618FAE0);
  v46 = sub_2661040AC(v104);
  if (v46)
  {
    v47 = v46;
  }

  else
  {
    v47 = v44;
  }

  v48 = sub_2661046B8(v47);

  if (!v48)
  {
    (v100)(v19, v103, v5);
    v49 = sub_26618C690();
    v50 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_3(v50))
    {
      v51 = OUTLINED_FUNCTION_6_2();
      *v51 = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v52, v53, v54, v55, v51, 2u);
      OUTLINED_FUNCTION_9_9();
    }

    v43(v19, v5);
  }

LABEL_42:
  if (qword_2814B2C40 != -1)
  {
LABEL_59:
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
  v76 = v101;
  v75 = v102;
  (*(v102 + 16))(v101);
  v77 = v104;
  v78 = sub_26618C690();
  v79 = v5;
  v80 = sub_26618CAA0();

  if (os_log_type_enabled(v78, v80))
  {
    v81 = OUTLINED_FUNCTION_49_0();
    v82 = OUTLINED_FUNCTION_45_1();
    v108[0] = v82;
    *v81 = 136315138;
    v83 = sub_2661040AC(v77);
    if (v83)
    {
      sub_266100294(v83);
      v85 = v84;
      v87 = v86;
    }

    else
    {
      v87 = 0xE200000000000000;
      v85 = 23899;
    }

    v88 = sub_266103A98(v85, v87, v108);

    *(v81 + 4) = v88;
    OUTLINED_FUNCTION_28_8(&dword_2660B7000, v89, v90, "LaunchAppConverter suggestedApplications: %s");
    __swift_destroy_boxed_opaque_existential_1(v82);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_3();
  }

  (*(v75 + 8))(v76, v79);
  return __swift_destroy_boxed_opaque_existential_1(v109);
}

uint64_t sub_26612F47C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_26618C6B0();
  v6 = OUTLINED_FUNCTION_2_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v47[-1] - v15;
  v48 = &type metadata for ReferenceResolver;
  v49 = &off_2877CC6F0;
  v47[0] = swift_allocObject();
  sub_2660CFC00(a2, v47[0] + 16);
  v17 = [a3 requestedApplication];
  if (!v17)
  {
    type metadata accessor for Application();
    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = OUTLINED_FUNCTION_10_8();
    [a3 setRequestedApplication_];
  }

  v19 = [a3 requestedApplication];
  if (v19)
  {
    v20 = v19;
    sub_266144578();
  }

  if (sub_26614E894())
  {
    if (qword_2814B3DE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for AppLaunchIntent();
    OUTLINED_FUNCTION_6_12();
    sub_26612F9BC(v21, 255, v22);
    sub_26618BDA0();
    switch(v46)
    {
      case 1:

        goto LABEL_11;
      case 4:
        goto LABEL_13;
      default:
        v23 = sub_26618D000();

        if (v23)
        {
LABEL_11:
          v24 = sub_26618BF10();
          v25 = *(v24 + 48);
          v26 = *(v24 + 52);
          swift_allocObject();
          sub_26618BF00();
          if (MEMORY[0x26677B1D0]())
          {
            __swift_project_boxed_opaque_existential_1(v47, v48);
            v27 = sub_266162360();
            sub_266106F40(v27, a3);
          }

          else
          {
            if (qword_2814B2C40 != -1)
            {
              OUTLINED_FUNCTION_0_3();
            }

            OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
            (*(v8 + 16))(v16);
            v29 = sub_26618C690();
            v30 = sub_26618CAB0();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = OUTLINED_FUNCTION_6_2();
              *v31 = 0;
              _os_log_impl(&dword_2660B7000, v29, v30, "Error building entity for reference resolution", v31, 2u);
              OUTLINED_FUNCTION_7_2();
            }

            else
            {
            }

            (*(v8 + 8))(v16, v5);
          }
        }

        else
        {
LABEL_13:
          __swift_project_boxed_opaque_existential_1(v47, v48);
          v28 = sub_266162714();
          sub_266106F40(v28, a3);
        }

        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_3();
        }

        OUTLINED_FUNCTION_37_0(v5, qword_2814B4A98);
        (*(v8 + 16))(v13);
        v32 = a3;
        v33 = sub_26618C690();
        v34 = sub_26618CAA0();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_49_0();
          v36 = OUTLINED_FUNCTION_45_1();
          v46 = v36;
          *v35 = 136315138;
          v37 = sub_2661040AC(v32);
          if (v37)
          {
            sub_266100294(v37);
            v39 = v38;
            v41 = v40;
          }

          else
          {
            v41 = 0xE200000000000000;
            v39 = 23899;
          }

          v42 = sub_266103A98(v39, v41, &v46);

          *(v35 + 4) = v42;
          OUTLINED_FUNCTION_28_8(&dword_2660B7000, v43, v44, "LaunchAppConverter suggestedApplications: %s");
          __swift_destroy_boxed_opaque_existential_1(v36);
          OUTLINED_FUNCTION_9_9();
          OUTLINED_FUNCTION_7_3();
        }

        (*(v8 + 8))(v13, v5);
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_26612F9BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_26612FA04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BaseDialogProvider();
  v36[3] = v8;
  v36[4] = &off_2877CAA90;
  v36[0] = a2;
  v34 = &type metadata for ReferenceResolver;
  v35 = &off_2877CC6F0;
  v9 = swift_allocObject();
  v33[0] = v9;
  v10 = *(a3 + 16);
  *(v9 + 16) = *a3;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a3 + 32);
  v32[3] = sub_26618B470();
  v32[4] = MEMORY[0x277D5BD58];
  v32[0] = a4;
  type metadata accessor for LaunchAppNeedsValueStrategy();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v36, v8);
  v13 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = v34;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  v19 = *(v17[-1].Description + 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = *v15;

  v31[3] = &type metadata for ReferenceResolver;
  v31[4] = &off_2877CC6F0;
  v24 = swift_allocObject();
  v31[0] = v24;
  v25 = *(v21 + 1);
  *(v24 + 16) = *v21;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v21 + 4);
  sub_2660C5864(a1, v11 + 16);
  sub_2660C5864(v31, v11 + 152);
  sub_2660C5864(v32, v11 + 192);
  sub_2660C5864(v11 + 16, v11 + 56);
  sub_2660C5864(v11 + 192, v11 + 96);
  v26 = sub_26618C8A0();
  LODWORD(v17) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  *(v11 + 144) = v17 == 1;
  sub_2660C5864(v11 + 56, v30);
  type metadata accessor for LocUtil();
  v27 = swift_allocObject();
  sub_2660CD484(v30, v27 + 16);
  *(v11 + 136) = v27;
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v11;
}

id OUTLINED_FUNCTION_10_8()
{

  return sub_2661038FC(0, 0);
}

void OUTLINED_FUNCTION_28_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_31_8()
{
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return sub_266162360();
}

uint64_t sub_26612FDB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5BC40];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C660, &unk_2661926B0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26612FE34(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26618B030();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_26618C6B0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26612FF50, 0, 0);
}

uint64_t sub_26612FF50()
{
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A80);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "LaunchAppServerFallbackFlow.execute() called", v7, 2u);
    MEMORY[0x26677CC30](v7, -1, -1);
  }

  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];

  (*(v9 + 8))(v8, v10);
  (*(v13 + 104))(v11, *MEMORY[0x277D5B8A0], v12);
  sub_26618B370();
  (*(v13 + 8))(v11, v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_266130114()
{
  type metadata accessor for LaunchAppServerFallbackFlow();
  sub_266130418();
  return sub_26618AFB0();
}

uint64_t sub_266130194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266130244;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266130244(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_266130364(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26611BBA8;

  return sub_26612FE34(a1);
}

unint64_t sub_266130418()
{
  result = qword_28005C658;
  if (!qword_28005C658)
  {
    type metadata accessor for LaunchAppServerFallbackFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C658);
  }

  return result;
}

uint64_t sub_26613046C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_26618B500();
  v2[5] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v2[6] = v4;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_26618C6B0();
  v2[8] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v2[9] = v8;
  v10 = *(v9 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266130590, 0, 0);
}

uint64_t sub_266130590()
{
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v1 = v0[12];
  v2 = v0[9];
  v49 = __swift_project_value_buffer(v0[8], qword_2814B4A80);
  v50 = *(v2 + 16);
  v50(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    *v5 = 0;
    _os_log_impl(&dword_2660B7000, v3, v4, "LaunchAppUnsupportedValueFlow.execute() called", v5, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];

  v51 = *(v8 + 8);
  v51(v6, v7);
  OUTLINED_FUNCTION_3_14();
  sub_26618B4F0();
  v13 = sub_26618B110();
  v14 = *(v10 + 8);
  v14(v9, v12);
  if (v13 & 1) != 0 || (OUTLINED_FUNCTION_3_14(), (sub_26618B190()) || (OUTLINED_FUNCTION_3_14(), (sub_26618B1A0()))
  {
    (v50)(v0[10], v49, v0[8]);
    v15 = sub_26618C690();
    v16 = sub_26618CAA0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_6_2();
      *v17 = 0;
      _os_log_impl(&dword_2660B7000, v15, v16, "LaunchAppHandleIntentFlow.wrappedFlow.execute() called", v17, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[8];
    v21 = v0[4];

    v51(v18, v20);
    v22 = *(v21 + 16);
    v23 = *(MEMORY[0x277D5B870] + 4);
    v52 = (*MEMORY[0x277D5B870] + MEMORY[0x277D5B870]);
    v24 = swift_task_alloc();
    v0[13] = v24;
    *v24 = v0;
    v24[1] = sub_26611C858;
    v25 = v0[3];

    return v52(v25);
  }

  else
  {
    v27 = v0[11];
    v28 = v0[7];
    v29 = v0[8];
    v30 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v31 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v31);
    v33 = *(v32 + 72);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v14(v28, v30);
    v36 = sub_26618AC10();

    (v50)(v27, v49, v29);
    v37 = sub_26618C690();
    v38 = sub_26618CAA0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_6_2();
      *v39 = 0;
      _os_log_impl(&dword_2660B7000, v37, v38, "Device is not authenticated - pushing an unlock flow", v39, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v40 = v0[11];
    v41 = v0[8];
    v42 = v0[9];
    v43 = v0[3];

    v51(v40, v41);
    v0[2] = v36;
    sub_26618AE60();
    sub_26618B330();

    v45 = v0[11];
    v44 = v0[12];
    v46 = v0[10];
    v47 = v0[7];

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_266130A40()
{
  type metadata accessor for LaunchAppUnsupportedValueFlow();
  OUTLINED_FUNCTION_0_13();
  sub_266131060(v0, v1, v2);
  return sub_26618AFB0();
}

uint64_t sub_266130ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = sub_26618C6B0();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v13 = sub_26618B6B0();
  v14 = [v13 isNLv4Parse];

  sub_26611C10C();
  v15 = sub_26618CB70();
  v16 = v15;
  if (!v14)
  {

LABEL_10:
    *&v46[0] = a3;
    type metadata accessor for LaunchAppUnsupportedValueStrategy();
    sub_266131060(qword_2814B3380, 255, type metadata accessor for LaunchAppUnsupportedValueStrategy);
    OUTLINED_FUNCTION_4_15();
    v29 = sub_26618AEF0();
    v30 = v29(a1, a2);

    *&v46[0] = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C668, &unk_2661927C0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C650, &qword_266192488);
    sub_26612C558();
    v34 = OUTLINED_FUNCTION_4_15();
    v35 = MEMORY[0x26677A110](v34);
    sub_2660C5864(a4, v46);
    sub_2660C5864(v43, v45);
    __swift_mutable_project_boxed_opaque_existential_1(v45, v45[3]);
    v44[3] = &type metadata for AppLaunchFlowFactoryImpl;
    v44[4] = &off_2877CD5D8;
    type metadata accessor for LaunchAppUnsupportedValueFlow();
    v36 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v44, &type metadata for AppLaunchFlowFactoryImpl);
    v36[11] = &type metadata for AppLaunchFlowFactoryImpl;
    v36[12] = &off_2877CD5D8;
    v36[2] = v35;
    sub_2660CD484(v46, (v36 + 3));

    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    *&v46[0] = v36;
    OUTLINED_FUNCTION_0_13();
    sub_266131060(v37, v38, v39);
    v28 = sub_26618AFA0();

    return v28;
  }

  v17 = sub_26618CBA0();

  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = sub_26618B6C0();
  v19 = [v18 unsupportedReason];

  if (v19 != 5)
  {
    goto LABEL_10;
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v20 = __swift_project_value_buffer(v9, qword_2814B4A80);
  v21 = v42;
  (*(v42 + 16))(v12, v20, v9);
  v22 = sub_26618C690();
  v23 = sub_26618CAA0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_6_2();
    *v24 = 0;
    _os_log_impl(&dword_2660B7000, v22, v23, "RCHChildFlowProducers.unsupportedValueFlowCompletion continues in server fallback flow", v24, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  (*(v21 + 8))(v12, v9);
  type metadata accessor for LaunchAppServerFallbackFlow();
  *&v46[0] = swift_allocObject();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C650, &qword_266192488);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_266131060(&qword_28005C658, 255, type metadata accessor for LaunchAppServerFallbackFlow);
  OUTLINED_FUNCTION_4_15();
  return sub_26618AE90();
}

uint64_t sub_266130F7C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26611CD84;

  return sub_26613046C(a1);
}

uint64_t sub_266131060(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2661310D0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  v7 = OUTLINED_FUNCTION_0_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v25 = MEMORY[0x277D84F90];
  sub_26612A5D0();
  v16 = v25;
  v17 = sub_26618AA00();
  OUTLINED_FUNCTION_0_4(v17);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v23 = *(v20 + 72);
  while (1)
  {
    a1(v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = *(v25 + 16);
    if (v21 >= *(v25 + 24) >> 1)
    {
      sub_26612A5D0();
    }

    *(v25 + 16) = v21 + 1;
    sub_2661365D4(v14, v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21);
    v19 += v23;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2661312A0(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_26618CE00();
    v9 = sub_26618C7A0();
    OUTLINED_FUNCTION_0_4(v9);
    v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    while (1)
    {
      a1(&v15, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_26618CDE0();
      v14 = *(v16 + 16);
      sub_26618CE10();
      sub_26618CE20();
      sub_26618CDF0();
      v11 += v13;
      if (!--v6)
      {
        return v16;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_2661313DC(uint64_t a1)
{
  sub_26618B810();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_26618B810();
  type metadata accessor for LocUtil();
  v3 = swift_allocObject();
  sub_2660B9EB8(&v36, v3 + 16);
  v4 = sub_26618B470();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_26618B460();
  v8 = type metadata accessor for MarketplaceInfoProvider();
  swift_allocObject();
  v9 = sub_26615E04C();
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v10 = static InstalledAppProvider.shared;
  v37 = v1;
  v38 = &off_2877CAA90;
  *&v36 = v2;
  v34 = v4;
  v35 = MEMORY[0x277D5BD58];
  *&v33 = v7;
  v32[3] = &type metadata for AppLaunchFeatureFlagsImpl;
  v32[4] = &off_2877CD168;
  v31[4] = &off_2877CC370;
  v31[3] = v8;
  v31[0] = v9;
  v30 = &protocol witness table for InstalledAppProvider;
  v29 = type metadata accessor for InstalledAppProvider();
  *&v28 = v10;
  type metadata accessor for LaunchAppUnsupportedValueStrategy();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v1);
  v13 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v32, &type metadata for AppLaunchFeatureFlagsImpl);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v31, v8);
  v19 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v22 = (v21 - v20);
  (*(v23 + 16))(v21 - v20);
  v24 = *v16;
  v25 = *v22;
  v11[10] = v1;
  v11[11] = &off_2877CAA90;
  v11[7] = v24;
  v11[22] = &type metadata for AppLaunchFeatureFlagsImpl;
  v11[23] = &off_2877CD168;
  v11[27] = v8;
  v11[28] = &off_2877CC370;
  v11[24] = v25;
  sub_2660B9EB8(v39, (v11 + 2));
  v11[12] = v3;
  sub_2660B9EB8(&v33, (v11 + 13));
  v11[18] = a1;
  sub_2660B9EB8(&v28, (v11 + 29));

  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(&v36);
  return v11;
}

uint64_t sub_266131764()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618C6B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_8_2();
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26613180C()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = v0[6];
  v1 = v0[7];
  __swift_project_value_buffer(v0[5], qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_2();
    *v7 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "LaunchApp.UnsupportedValueStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  v11 = v0[3];

  v12 = *(v9 + 8);
  v13 = OUTLINED_FUNCTION_12_1();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v15 = sub_26618B6B0();
  v0[8] = v15;
  v16 = sub_26618B6C0();
  v17 = [v16 unsupportedReason];

  LaunchAppApplicationUnsupportedReason.init(rawValue:)(v17);
  if (v18)
  {
    sub_2660D3004();
    OUTLINED_FUNCTION_31_5();
    *v19 = 0;
    swift_willThrow();

    v20 = v0[7];

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_41_3();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[9] = v30;
    *v30 = v31;
    v30[1] = sub_266131A20;
    v32 = v0[4];
    v33 = v0[2];
    OUTLINED_FUNCTION_41_3();

    return sub_266131C7C();
  }
}

uint64_t sub_266131A20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266131B1C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_5_3();

  return v2();
}

uint64_t sub_266131B80()
{
  OUTLINED_FUNCTION_18();

  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_266131BE4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_266131C0C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  sub_26618B6B0();
  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_266131C7C()
{
  OUTLINED_FUNCTION_1_0();
  if (v1 == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    v2[1] = sub_266131DA4;

    return sub_2661327D4();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 16) = v4;
    *v4 = v0;
    v4[1] = sub_2660D2E00;

    return sub_266131E84();
  }
}

uint64_t sub_266131DA4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_266131E84()
{
  OUTLINED_FUNCTION_18();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B6A0();
  v1[12] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[13] = v8;
  v10 = *(v9 + 64);
  v1[14] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618C340();
  OUTLINED_FUNCTION_3_0(v11);
  v13 = *(v12 + 64);
  v1[15] = OUTLINED_FUNCTION_8_2();
  v14 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266131F6C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[9];
  if (v1 == 4)
  {
    v5 = v0[15];
    type metadata accessor for LaunchAppCATPatternsExecutor(0);
    sub_26618C330();
    v0[19] = sub_26618C2D0();
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_38_1(v6);

    return sub_2660BE600(0);
  }

  else if (v1 == 3)
  {
    v2 = v0[15];
    type metadata accessor for LaunchAppCATPatternsExecutor(0);
    sub_26618C330();
    v0[16] = sub_26618C2D0();
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_38_1(v3);

    return sub_2660BF3BC(0);
  }

  else
  {
    sub_2660D3004();
    OUTLINED_FUNCTION_31_5();
    *v7 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_40_4();

    OUTLINED_FUNCTION_5_3();

    return v8();
  }
}

uint64_t sub_266132140()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v7 = *(v6 + 136);
  v8 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;
  v3[18] = v0;

  if (!v0)
  {
    v10 = v3[16];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266132248()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[3];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v0[22] = v1;
  v1;
  sub_26618B1B0();
  OUTLINED_FUNCTION_10_9();
  v5 = v4[16];
  v6 = v4[17];
  OUTLINED_FUNCTION_28_2(v4 + 13);
  v7 = *(MEMORY[0x277D5BE50] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[23] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_7_13(v8);
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2661322F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 160);
  v8 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;
  v3[21] = v0;

  if (!v0)
  {
    v10 = v3[19];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2661323F8()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[6];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v0[22] = v1;
  v1;
  sub_26618B1B0();
  OUTLINED_FUNCTION_10_9();
  v5 = v4[16];
  v6 = v4[17];
  OUTLINED_FUNCTION_28_2(v4 + 13);
  v7 = *(MEMORY[0x277D5BE50] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[23] = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_7_13(v8);
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2821BB480](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2661324A0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *(v4 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v9 + 192) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2661325B4()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_12_1();
  v8(v7);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_41_3();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_266132650()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_40_4();

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2661326C8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 152);

  v2 = *(v0 + 168);
  OUTLINED_FUNCTION_40_4();

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_266132740()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_11_0();
  v6(v5);
  v7 = *(v0 + 192);
  OUTLINED_FUNCTION_40_4();

  OUTLINED_FUNCTION_5_3();

  return v8();
}

uint64_t sub_2661327D4()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618C6B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_8_2();
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26613287C()
{
  OUTLINED_FUNCTION_19();
  v1 = [*(v0 + 24) requestedApplication];
  if (v1 && (*(v0 + 64) = sub_26610410C(v1), (*(v0 + 72) = v2) != 0))
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_266132A54;
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);

    return sub_266135728(v4);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    __swift_project_value_buffer(*(v0 + 40), qword_2814B4A98);
    v9 = OUTLINED_FUNCTION_8_3();
    v10(v9);
    v11 = sub_26618C690();
    v12 = sub_26618CAB0();
    if (os_log_type_enabled(v11, v12))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v13, v14, "Unable to get app name, cannot construct UnsupportedValueStrategy response");
      OUTLINED_FUNCTION_28_3();
    }

    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 40);

    v18 = *(v16 + 8);
    v19 = OUTLINED_FUNCTION_12_1();
    v20(v19);
    sub_2660D3004();
    OUTLINED_FUNCTION_31_5();
    *v21 = 6;
    swift_willThrow();
    v22 = *(v0 + 56);

    OUTLINED_FUNCTION_5_3();

    return v23();
  }
}

uint64_t sub_266132A54()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  v5[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v5[9];
    if (v3)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v5[12] = v15;
      *v15 = v16;
      v15[1] = sub_266132C40;
      v17 = v5[8];
      v18 = v5[3];
      v19 = v5[4];
      v20 = v5[2];

      return sub_266132EF4();
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v5[13] = v21;
      *v21 = v22;
      v21[1] = sub_266132D68;
      v23 = v5[8];
      v24 = v5[4];
      v25 = v5[2];

      return sub_2661343F0();
    }
  }
}

uint64_t sub_266132C40()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = *(v1 + 56);

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_266132D68()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = *(v1 + 56);

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_266132E90()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[7];

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_266132EF4()
{
  OUTLINED_FUNCTION_18();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[22] = v5;
  v6 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v6);
  v8 = *(v7 + 64);
  v1[27] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B6A0();
  v1[28] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[29] = v10;
  v12 = *(v11 + 64);
  v1[30] = OUTLINED_FUNCTION_8_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C1E8, &qword_266192910);
  v1[31] = v13;
  OUTLINED_FUNCTION_3_0(v13);
  v15 = *(v14 + 64);
  v1[32] = OUTLINED_FUNCTION_25_0();
  v1[33] = swift_task_alloc();
  v16 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  v1[34] = v16;
  OUTLINED_FUNCTION_3_0(v16);
  v18 = *(v17 + 64);
  v1[35] = OUTLINED_FUNCTION_8_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C670, &qword_266192918);
  OUTLINED_FUNCTION_3_0(v19);
  v21 = *(v20 + 64);
  v1[36] = OUTLINED_FUNCTION_8_2();
  v22 = sub_26618AA00();
  v1[37] = v22;
  OUTLINED_FUNCTION_0_4(v22);
  v1[38] = v23;
  v25 = *(v24 + 64);
  v1[39] = OUTLINED_FUNCTION_25_0();
  v1[40] = swift_task_alloc();
  v26 = sub_26618C6B0();
  v1[41] = v26;
  OUTLINED_FUNCTION_0_4(v26);
  v1[42] = v27;
  v29 = *(v28 + 64);
  v1[43] = OUTLINED_FUNCTION_25_0();
  v1[44] = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

void sub_2661330FC()
{
  v59 = v0;
  if (qword_2814B2C38 != -1)
  {
LABEL_27:
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[42];
  v3 = __swift_project_value_buffer(v0[41], qword_2814B4A80);
  v54 = *(v2 + 16);
  v55 = v3;
  v54(v1);
  v4 = sub_26618C690();
  v5 = sub_26618CA90();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_2();
    *v6 = 0;
    _os_log_impl(&dword_2660B7000, v4, v5, "LaunchAppUnsupportedValueStrategy: building view with app results", v6, 2u);
    MEMORY[0x26677CC30](v6, -1, -1);
  }

  v7 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[25];

  v53 = *(v8 + 8);
  v53(v7, v9);
  v11 = sub_266135BF0(v10);
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *(v11 + 16);
    v56 = v0[38];
    v15 = (v56 + 32);
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v0[45] = v16;
      if (v14 == v13)
      {
        break;
      }

      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v17 = v0[36];
      *v58 = *(v12 + 16 * v13 + 32);
      sub_2660C924C(v58[0], v58[1]);
      sub_266133FA4(v58, v17);
      v19 = v0[36];
      v18 = v0[37];
      sub_2660C55C0(v58[0], v58[1]);
      if (__swift_getEnumTagSinglePayload(v19, 1, v18) == 1)
      {
        sub_2660BF79C(v0[36], &qword_28005C670, &qword_266192918);
      }

      else
      {
        v21 = v0[39];
        v20 = v0[40];
        v22 = v0[37];
        v23 = *v15;
        (*v15)(v20, v0[36], v22);
        v23(v21, v20, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = *(v16 + 16);
          OUTLINED_FUNCTION_32_2();
          sub_266129CE4(v28, v29, v30, v31);
          v16 = v32;
        }

        v24 = *(v16 + 16);
        if (v24 >= *(v16 + 24) >> 1)
        {
          OUTLINED_FUNCTION_32_2();
          sub_266129CE4(v33, v34, v35, v36);
          v16 = v37;
        }

        v25 = v0[39];
        v26 = v0[37];
        *(v16 + 16) = v24 + 1;
        v23(v16 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v24, v25, v26);
      }

      ++v13;
    }

    if (*(v16 + 16))
    {
      v38 = *__swift_project_boxed_opaque_existential_1((v0[26] + 192), *(v0[26] + 216));
      v39 = swift_task_alloc();
      v0[46] = v39;
      *v39 = v0;
      v39[1] = sub_2661335D0;
      OUTLINED_FUNCTION_20_2();

      __asm { BR              X3 }
    }
  }

  (v54)(v0[43], v55, v0[41]);
  v42 = sub_26618C690();
  v43 = sub_26618CAC0();
  if (os_log_type_enabled(v42, v43))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v44, v45, "LaunchAppUnsupportedValueStrategy: attempted to create ResultBasedView, but found no app results");
    OUTLINED_FUNCTION_28_3();
  }

  v47 = v0[42];
  v46 = v0[43];
  v48 = v0[41];

  v49 = OUTLINED_FUNCTION_12_1();
  (v53)(v49);
  sub_2660D3004();
  OUTLINED_FUNCTION_31_5();
  *v50 = 8;
  swift_willThrow();
  OUTLINED_FUNCTION_25_8();
  v57 = v0[27];

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_20_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2661335D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 368);
  *v2 = *v0;
  *(v1 + 376) = v5;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2661336BC()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 360);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = sub_26617CDCC(*(v0 + 376));
  *(v0 + 384) = v6;
  v7 = *(v1 + 16);
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = v8 & 1;
  *(v0 + 56) = v7;

  v9 = swift_task_alloc();
  *(v0 + 392) = v9;
  *v9 = v0;
  v9[1] = sub_266133798;

  return sub_2660C19FC();
}

uint64_t sub_266133798()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[18] = v1;
  v3[19] = v5;
  v3[20] = v0;
  v7 = *(v6 + 392);
  v8 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v9 = v8;
  v3[50] = v0;

  if (!v0)
  {
    v10 = v3[48];
    v11 = v3[24];
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2661338AC()
{
  v53 = v0 + 8;
  v1 = v0[47];
  if (v1[2])
  {
    v2 = v1[7];
    v49 = v1[6];
    v50 = v1[4];
    v52 = v1[5];
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v3 = v0[50];
  v4 = v0[45];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v51 = v0[31];
  v9 = v0[26];
  v10 = v0[24];

  sub_2660C5864(v9 + 232, v53);
  v11 = swift_task_alloc();
  *(v11 + 16) = v53;
  v12 = sub_2661310D0(sub_2660E1F5C, v11, v4);

  v13 = *(v6 + 20);
  v14 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v14);
  sub_2660BF73C(v7, v8, &qword_28005C1E8, &qword_266192910);

  sub_26618AB90();
  sub_2660BF79C(v7, &qword_28005C1E8, &qword_266192910);
  v0[21] = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C200, &qword_266194C10);
  sub_26618AB90();
  v15 = *(v12 + 16);

  if (v15 <= 1)
  {
    v22 = v0[24];
    sub_2660E1F7C(v50, v52);
  }

  else
  {
    if (v52)
    {
      v17 = v0[32];
      v16 = v0[33];
      v18 = v0[23];
      v19 = v0[24];
      sub_26616DE6C();
      v20 = OUTLINED_FUNCTION_12_1();
      sub_2660BF73C(v20, v21, &qword_28005C1E8, &qword_266192910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
      sub_26618ABC0();
      sub_2660BF79C(v16, &qword_28005C1E8, &qword_266192910);
      goto LABEL_10;
    }

    v23 = v0[24];
  }

LABEL_10:
  v24 = v0[19];
  v25 = v0[45];
  v26 = v0[35];
  v27 = v0[30];
  v29 = v0[26];
  v28 = v0[27];
  v0[51] = v24;
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v25;
  sub_26618B620();

  v30 = v29[16];
  v31 = v29[17];
  OUTLINED_FUNCTION_28_2(v29 + 13);
  v0[16] = type metadata accessor for AppLaunchDataModels(0);
  OUTLINED_FUNCTION_12_10();
  v0[17] = sub_266136654(v32, v33);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 13);
  sub_26613651C(v26, boxed_opaque_existential_0, type metadata accessor for AppLaunchDataModels.AppResultWrapperModel);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v35 = swift_allocObject();
  v0[52] = v35;
  *(v35 + 16) = xmmword_26618F7E0;
  *(v35 + 32) = v24;
  v36 = *(MEMORY[0x277D5BE38] + 4);
  v37 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[53] = v38;
  *v38 = v39;
  v38[1] = sub_266133C90;
  v40 = v0[30];
  v41 = v0[22];
  OUTLINED_FUNCTION_34_5();

  return MEMORY[0x2821BB468](v42, v43, v44, v45, v46, v47);
}

uint64_t sub_266133C90()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *(v4 + 416);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 104));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266133D90()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v12 = *(v0 + 264);
  v13 = *(v0 + 256);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  v14 = *(v0 + 216);

  (*(v7 + 8))(v8, v9);
  sub_26613657C(v6, type metadata accessor for AppLaunchDataModels.AppResultWrapperModel);

  OUTLINED_FUNCTION_5_3();

  return v10();
}

void sub_266133EB4()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[24];

  v8 = v0[50];
  OUTLINED_FUNCTION_25_8();
  v5 = v0[27];

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_49_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266133FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26618C6B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26618C3C0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = *a1;
  v12 = a1[1];
  v14 = sub_26618AA00();
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_2660C924C(v13, v12);
  sub_26618C3B0();
  sub_266136654(&qword_28005C500, MEMORY[0x277D390F0]);
  sub_26618C3D0();
  if (v2)
  {
    if (qword_2814B2C38 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v5, qword_2814B4A80);
    (*(v6 + 16))(v9, v15, v5);
    v16 = v2;
    v17 = sub_26618C690();
    v18 = v9;
    v19 = sub_26618CAB0();

    if (os_log_type_enabled(v17, v19))
    {
      v20 = swift_slowAlloc();
      v33 = v6;
      v21 = v20;
      v22 = swift_slowAlloc();
      v32 = v18;
      v23 = v22;
      *&v34[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v24 = sub_26618D040();
      v26 = sub_266103A98(v24, v25, v34);
      v31 = v5;
      v27 = a2;
      v28 = v26;

      *(v21 + 4) = v28;
      a2 = v27;
      _os_log_impl(&dword_2660B7000, v17, v19, "LaunchAppUnsupportedValueStrategy: unable to deserialize pegasus app result: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x26677CC30](v23, -1, -1);
      MEMORY[0x26677CC30](v21, -1, -1);

      (*(v33 + 8))(v32, v31);
    }

    else
    {

      (*(v6 + 8))(v18, v5);
    }

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v29, 1, v14);
}

uint64_t sub_266134318()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  sub_26618B650();
  sub_26618B680();
  sub_266148EFC();
  v4 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_26618B660();
  return sub_26618B640();
}

uint64_t sub_2661343F0()
{
  OUTLINED_FUNCTION_18();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = *(v6 + 64);
  v1[18] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618AB50();
  v1[19] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[20] = v9;
  v11 = *(v10 + 64);
  v1[21] = OUTLINED_FUNCTION_25_0();
  v1[22] = swift_task_alloc();
  v12 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v12);
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_8_2();
  v15 = sub_26618B6A0();
  v1[24] = v15;
  OUTLINED_FUNCTION_0_4(v15);
  v1[25] = v16;
  v18 = *(v17 + 64);
  v1[26] = OUTLINED_FUNCTION_8_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  OUTLINED_FUNCTION_3_0(v19);
  v21 = *(v20 + 64);
  v1[27] = OUTLINED_FUNCTION_25_0();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_266134574()
{
  v1 = *(v0 + 136);
  __swift_storeEnumTagSinglePayload(*(v0 + 232), 1, 1, *(v0 + 152));
  v2 = *(v1 + 144);
  if (v2)
  {
    v3 = *(v0 + 128);
    v4 = v2;
    v5 = sub_26618C4C0();
    v7 = v6;

    v8 = 0;
    v9 = 0;
LABEL_8:
    *(v0 + 296) = v7;
    *(v0 + 304) = 0;
    *(v0 + 280) = v8;
    *(v0 + 288) = v9;
    v31 = *(v0 + 128);
    v32 = *(v0 + 136);
    *(v0 + 16) = *(v0 + 120);
    *(v0 + 24) = v31;
    *(v0 + 32) = v5;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 40) = v7;
    *(v0 + 64) = 1;
    v33 = swift_task_alloc();
    *(v0 + 312) = v33;
    *v33 = v0;
    OUTLINED_FUNCTION_9_12(v33);

    return sub_2660C1068();
  }

  v10 = *(v0 + 136);
  v11 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v10[5]);
  v12 = OUTLINED_FUNCTION_11_0();
  if ((sub_2660C8128(v12, v13) & 1) == 0)
  {
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v20 = *(v0 + 152);
    v21 = *(v0 + 128);
    v22 = *(v0 + 120);
    v23 = *(*(v0 + 136) + 96);

    v8 = sub_26617CA00(0xD000000000000010, 0x80000002661993E0);
    v9 = v24;
    v25 = static AppSearchCommands.searchAppStoreAceCommand(appName:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26618E190;
    v27 = sub_26618AB80();
    v28 = MEMORY[0x277D63778];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v26 + 32));
    *boxed_opaque_existential_0 = v25;
    *(boxed_opaque_existential_0 + 8) = 0;
    v30 = *MEMORY[0x277D63720];
    (*(*(v27 - 8) + 104))();
    sub_26618AB60();
    sub_2660BF79C(v18, &qword_28005C4D0, &qword_266191AA8);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
    sub_266135C48(v19, v18);
    v5 = 0;
    v7 = 0;
    goto LABEL_8;
  }

  v14 = *(v0 + 136);
  v15 = *__swift_project_boxed_opaque_existential_1((v14 + 192), *(v14 + 216));
  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_266134878;

  return (sub_2661361E0)(v15, v14 + 232);
}

uint64_t sub_266134878()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 240);
  *v2 = *v0;
  v1[31] = v5;
  v1[32] = v6;
  v1[33] = v7;
  v1[34] = v8;

  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266134968()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 272);
    if (v1 == 0x8000000266199A10 && *(v0 + 248) == 0xD000000000000012)
    {
      v46 = 0;
      v47 = 0;
    }

    else
    {
      if (OUTLINED_FUNCTION_26_5())
      {
        v4 = 0;
        v5 = 0;
      }

      else
      {

        v4 = *(v0 + 264);
        v5 = *(v0 + 272);
      }

      v9 = *(v0 + 248);
      if ((OUTLINED_FUNCTION_26_5() & 1) == 0)
      {
        v29 = v2;
        v30 = *(v0 + 128);
        v31 = *(*(v0 + 136) + 96);

        v7 = sub_26617CA00(0xD000000000000015, 0x8000000266199A30);
        if (v32)
        {
          v33 = *(v0 + 264);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4B0, &qword_266196770);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_26618E190;
          *(v34 + 56) = MEMORY[0x277D837D0];
          *(v34 + 64) = sub_2661120AC();
          *(v34 + 32) = v33;
          *(v34 + 40) = v29;

          v7 = sub_26618C8C0();
          v8 = v35;
        }

        else
        {
          v8 = 0;
        }

        v37 = *(v0 + 224);
        v36 = *(v0 + 232);
        v38 = *(v0 + 152);
        static AppSearchCommands.searchMarketplaceActionProperty(appName:marketplace:)(*(v0 + 120), *(v0 + 128), *(v0 + 248), v1);

        sub_2660BF79C(v36, &qword_28005C4D0, &qword_266191AA8);
        __swift_storeEnumTagSinglePayload(v37, 0, 1, v38);
        sub_266135C48(v37, v36);
        goto LABEL_18;
      }

      v46 = v4;
      v47 = v5;
      v10 = *(v0 + 272);
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
    }

    v13 = *(v0 + 264);
    v43 = *(v0 + 224);
    v44 = *(v0 + 232);
    v45 = *(v0 + 152);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);

    v17 = OUTLINED_FUNCTION_31_9();
    sub_2661364D0(v17, v18);

    v19 = OUTLINED_FUNCTION_31_9();
    sub_2660E1F7C(v19, v20);
    v21 = *(v14 + 96);
    v7 = sub_26617CA00(0xD000000000000010, 0x80000002661993E0);
    v8 = v22;
    v23 = static AppSearchCommands.searchAppStoreAceCommand(appName:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26618E190;
    v25 = sub_26618AB80();
    v26 = MEMORY[0x277D63778];
    *(v24 + 56) = v25;
    *(v24 + 64) = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 32));
    *boxed_opaque_existential_0 = v23;
    *(boxed_opaque_existential_0 + 8) = 0;
    v28 = *MEMORY[0x277D63720];
    (*(*(v25 - 8) + 104))();
    sub_26618AB60();
    sub_2660BF79C(v44, &qword_28005C4D0, &qword_266191AA8);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v45);
    sub_266135C48(v43, v44);
    v4 = v46;
    v5 = v47;
  }

  else
  {
    v6 = *(v0 + 128);

    v7 = 0;
    v8 = 0;
    v4 = 0;
    v5 = 0;
  }

LABEL_18:
  *(v0 + 296) = 0;
  *(v0 + 304) = v5;
  *(v0 + 280) = v7;
  *(v0 + 288) = v8;
  v39 = *(v0 + 128);
  v40 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 24) = v39;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  *(v0 + 64) = v1 != 0;
  v41 = swift_task_alloc();
  *(v0 + 312) = v41;
  *v41 = v0;
  OUTLINED_FUNCTION_9_12(v41);

  return sub_2660C1068();
}

uint64_t sub_266134D4C()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  v5 = v2[39];
  v6 = v2[16];
  v7 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v3[40] = v9;
  v3[41] = v0;

  v10 = v2[38];
  v11 = v2[37];
  if (v0)
  {
    v12 = v3[36];
  }

  else
  {
    v13 = v2[37];
  }

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_41_3();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266134EC4()
{
  v1 = v0[36];
  v2 = v0[26];
  v3 = v0[23];
  sub_26618B1B0();
  sub_26618B620();
  if (!v1)
  {
LABEL_4:
    v8 = v0[40];
    v9 = v0[17];
    v10 = v9[16];
    v11 = v9[17];
    OUTLINED_FUNCTION_28_2(v9 + 13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v12 = swift_allocObject();
    v0[44] = v12;
    *(v12 + 16) = xmmword_26618F7E0;
    *(v12 + 32) = v8;
    v13 = *(MEMORY[0x277D5BE58] + 4);
    v14 = v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[45] = v15;
    *v15 = v16;
    v15[1] = sub_266135428;
    v17 = v0[26];
    v18 = v0[14];
    OUTLINED_FUNCTION_49_1();

    return MEMORY[0x2821BB488](v19, v20, v21, v22, v23);
  }

  v4 = v0[36];
  v5 = v0[27];
  v6 = v0[19];
  sub_2660BF73C(v0[29], v5, &qword_28005C4D0, &qword_266191AA8);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = v0[27];

    sub_2660BF79C(v7, &qword_28005C4D0, &qword_266191AA8);
    goto LABEL_4;
  }

  v25 = v0[40];
  v26 = v0[35];
  v28 = v0[21];
  v27 = v0[22];
  v29 = v0[19];
  v30 = v0[20];
  v32 = v0[17];
  v31 = v0[18];
  (*(v30 + 32))(v27, v0[27], v29);
  (*(v30 + 16))(v28, v27, v29);
  AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
  v33 = v32[16];
  v34 = v32[17];
  OUTLINED_FUNCTION_28_2(v32 + 13);
  v0[12] = type metadata accessor for AppLaunchDataModels(0);
  OUTLINED_FUNCTION_12_10();
  v0[13] = sub_266136654(v35, v36);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 9);
  sub_26613651C(v31, boxed_opaque_existential_0, type metadata accessor for AppLaunchDataModels.ButtonFallbackModel);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v38 = swift_allocObject();
  v0[42] = v38;
  *(v38 + 16) = xmmword_26618F7E0;
  *(v38 + 32) = v25;
  v39 = *(MEMORY[0x277D5BE48] + 4);
  v40 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[43] = v41;
  *v41 = v42;
  v41[1] = sub_26613520C;
  v43 = v0[26];
  v44 = v0[14];
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x2821BB478](v45, v46, v47, v48, v49, v50);
}

uint64_t sub_26613520C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *(v4 + 336);
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26613530C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);

  sub_26613657C(v4, type metadata accessor for AppLaunchDataModels.ButtonFallbackModel);
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_11_0();
  v7(v6);
  v8 = OUTLINED_FUNCTION_18_9();
  v9(v8);
  sub_2660BF79C(v1, &qword_28005C4D0, &qword_266191AA8);

  OUTLINED_FUNCTION_5_3();

  return v10();
}

uint64_t sub_266135428()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 360);
  v3 = *(v1 + 352);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266135528()
{
  v2 = OUTLINED_FUNCTION_18_9();
  v3(v2);
  sub_2660BF79C(v0, &qword_28005C4D0, &qword_266191AA8);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_266135608()
{
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[18];
  sub_2660BF79C(v0[29], &qword_28005C4D0, &qword_266191AA8);

  OUTLINED_FUNCTION_5_3();
  v9 = v0[41];

  return v8();
}

uint64_t sub_266135728(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266135750()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_266135BF0(*(v0 + 16));
  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v5 = OUTLINED_FUNCTION_11_0();
    if (sub_2660C8128(v5, v6) & 1) != 0 || (v7 = v3[5], v8 = v3[6], OUTLINED_FUNCTION_28_2(v3 + 2), OUTLINED_FUNCTION_12_1(), (sub_26618B130()))
    {
      v9 = v3[5];
      v10 = v3[6];
      OUTLINED_FUNCTION_28_2(v3 + 2);
      OUTLINED_FUNCTION_12_1();
      if ((sub_26618B190() & 1) == 0)
      {
        if (*(*(v0 + 24) + 144))
        {
          sub_26618C4C0();
          if (v11)
          {
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_54();

  return v12();
}

uint64_t sub_266135850()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2660D3208(v0 + 56);
  v1 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  return v0;
}

uint64_t sub_2661358A8()
{
  sub_266135850();

  return MEMORY[0x2821FE8D8](v0, 272, 7);
}

uint64_t sub_266135900()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660D3260;

  return sub_266131764();
}

uint64_t sub_2661359AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266135A40;

  return sub_266131BE4(a1);
}

uint64_t sub_266135A40()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  OUTLINED_FUNCTION_54();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_266135B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for LaunchAppUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = sub_2660D2E00;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_266135BF0(void *a1)
{
  v1 = [a1 pegasusAppResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t sub_266135C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C4D0, &qword_266191AA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266135CB8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v0[7] = v3;
  v0[8] = v4;
  v5 = sub_26618AA00();
  v0[9] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v0[10] = v6;
  v8 = *(v7 + 64);
  v0[11] = OUTLINED_FUNCTION_8_2();
  v9 = type metadata accessor for MarketplaceInfoProvider();
  v0[12] = v9;
  v0[5] = v9;
  v0[6] = &off_2877CC370;
  v0[2] = v2;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266135D8C()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v25 = MEMORY[0x277D84F90];
    sub_26612A450();
    v4 = v25;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v23 = *(v3 + 56);
    v24 = v5;
    v7 = (v3 - 8);
    do
    {
      v24(v0[11], v6, v0[9]);
      v8 = sub_26618A9C0();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v12 = v0[11];
        v13 = sub_26618A9C0();
        v15 = v14;
      }

      else
      {
        v13 = 0xD000000000000012;
        v15 = 0x8000000266199A10;
      }

      (*v7)(v0[11], v0[9]);
      v16 = *(v25 + 16);
      if (v16 >= *(v25 + 24) >> 1)
      {
        sub_26612A450();
      }

      *(v25 + 16) = v16 + 1;
      v17 = v25 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v6 += v23;
      --v2;
    }

    while (v2);
    v18 = v0 + 5;
  }

  else
  {
    v18 = v0 + 12;
    v4 = MEMORY[0x277D84F90];
  }

  v19 = *v18;
  v0[13] = sub_26613C2C0(v4);
  v20 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v19);
  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_38_1(v21);

  return sub_26615E600();
}

uint64_t sub_266135FA8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266136094()
{
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_19();
  v1 = v0[15];
  if (!*(v1 + 16))
  {
    v2 = v0[15];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = v0[15];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_32_2();
      sub_266129600();
      v1 = v19;
    }

    v4 = *(v1 + 16);
    if (v4 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_32_2();
      sub_266129600();
      v1 = v20;
    }

    *(v1 + 16) = v4 + 1;
    v5 = v1 + 16 * v4;
    *(v5 + 32) = 0xD000000000000012;
    *(v5 + 40) = 0x8000000266199A10;
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[7];
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  sub_266150124(sub_266136638, v9, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_41_3();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2661361E0(uint64_t a1, uint64_t a2)
{
  v2[12] = a2;
  v4 = type metadata accessor for MarketplaceInfoProvider();
  v2[13] = v4;
  v2[5] = v4;
  v2[6] = &off_2877CC370;
  v2[2] = a1;

  return MEMORY[0x2822009F8](sub_266136270, 0, 0);
}

uint64_t sub_266136270()
{
  OUTLINED_FUNCTION_18();
  v1 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[13]);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_38_1(v2);

  return sub_26615E600();
}

uint64_t sub_266136304()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;

  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2661363F0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[15];
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
  }

  else
  {
    v4 = v0[15];
  }

  sub_2660C5864(v0[12], (v0 + 7));
  sub_26617CF7C(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];
  v6 = OUTLINED_FUNCTION_11_0();

  return v7(v6);
}

uint64_t sub_2661364D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26613651C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_16(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26613657C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2661365D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppResultModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266136654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1)
{
  *(a1 + 8) = sub_2661324A0;
  v2 = *(v1 + 112);
  return *(v1 + 64);
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_26618B620();
}

uint64_t OUTLINED_FUNCTION_18_9()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[24];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v0[18];
  v9 = *(v0[25] + 8);
  return v0[26];
}

uint64_t OUTLINED_FUNCTION_25_8()
{
  v2 = v0[43];
  result = v0[44];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[30];
  return result;
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_26618D000();
}

uint64_t OUTLINED_FUNCTION_40_4()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];
}

uint64_t sub_266136804()
{
  sub_26618D0D0();
  sub_26618C4A0();
  sub_26618C910();

  sub_26618D0B0();
  return sub_26618CFD0();
}

id sub_2661368B0(void *a1)
{
  v1 = a1;
  DeviceUnit.description.getter();

  v2 = sub_26618C8A0();

  return v2;
}

uint64_t DeviceUnit.description.getter()
{
  sub_26618CD80();
  MEMORY[0x26677BCF0](0xD000000000000013, 0x8000000266199A90);
  v0 = sub_26618C4C0();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26677BCF0](v0, v2);

  MEMORY[0x26677BCF0](0x747369737361202CLL, 0xEF203A6449746E61);
  v3 = sub_26618C4A0();
  MEMORY[0x26677BCF0](v3);

  MEMORY[0x26677BCF0](0x6D69786F7270202CLL, 0xED0000203A797469);
  sub_26618C4E0();
  v4 = sub_26618C5C0();
  MEMORY[0x26677BCF0](v4);

  MEMORY[0x26677BCF0](32032, 0xE200000000000000);
  return 0;
}

unint64_t sub_266136A60()
{
  result = qword_28005C678;
  if (!qword_28005C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C678);
  }

  return result;
}

BOOL sub_266136AB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static Proximity.< infix(_:_:)();
}

BOOL sub_266136AC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266136ACC();
}

BOOL sub_266136B08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266136B14();
}

BOOL sub_266136B4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_266136B58();
}

uint64_t sub_266136B94(uint64_t *a1)
{
  v2 = sub_26618C6B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = MEMORY[0x28223BE20](v2);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v59 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_2814B4A98);
  v15 = *(v3 + 2);
  v64 = v14;
  v65 = v15;
  (v15)(v13);
  sub_2660DD6B8(a1, v66);
  v16 = sub_26618C690();
  v17 = sub_26618CAA0();
  sub_2660DD77C(a1);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v63 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v59 = v2;
    v60 = v3;
    v21 = v20;
    v66[0] = v20;
    *v19 = 136315138;
    v22 = sub_266137204();
    v24 = a1;
    v25 = sub_266103A98(v22, v23, v66);

    *(v19 + 4) = v25;
    a1 = v24;
    _os_log_impl(&dword_2660B7000, v16, v17, "#hal Invoking device resolution service with filter: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v2 = v59;
    v3 = v60;
    OUTLINED_FUNCTION_7_2();
    v11 = v63;
    OUTLINED_FUNCTION_7_2();
  }

  v26 = *(v3 + 1);
  v26(v13, v2);

  sub_2660DCE7C(v27);

  v66[0] = sub_266142B58(v28);
  sub_2661382C8(v66);

  v29 = v66[0];
  if (!sub_2661046B8(v66[0]))
  {

    return 1;
  }

  v65(v11, v64, v2);
  sub_2660DD6B8(a1, v66);

  v30 = sub_26618C690();
  v31 = sub_26618CAA0();
  sub_2660DD77C(a1);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v66[0] = v59;
    *v32 = 134218498;
    *(v32 + 4) = sub_2661046B8(v29);

    *(v32 + 12) = 2080;
    v63 = v11;
    v33 = a1[10];
    v34 = sub_26618C5B0();
    v35 = MEMORY[0x26677BD80](v33, v34);
    v37 = sub_266103A98(v35, v36, v66);
    v60 = v26;
    v38 = v2;
    v39 = v37;

    *(v32 + 14) = v39;
    *(v32 + 22) = 2080;
    sub_26610027C(v29);
    v42 = sub_266103A98(v40, v41, v66);

    *(v32 + 24) = v42;
    v2 = v38;
    v26 = v60;
    _os_log_impl(&dword_2660B7000, v30, v31, "#hal %ld device(s) with supported actions %s: %s", v32, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v43 = v63;
  }

  else
  {

    v43 = v11;
  }

  v26(v43, v2);
  if (a1[4])
  {
    v44 = v26;
    goto LABEL_16;
  }

  if (a1[6])
  {
    v44 = v26;
    goto LABEL_16;
  }

  if (*(a1[7] + 16))
  {
    v44 = v26;
LABEL_16:
    KeyPath = swift_getKeyPath();
    v46 = sub_266137590(KeyPath, a1, v29);
    v48 = ~v47;

    if (v48)
    {

      return v46;
    }

    else
    {
      v49 = v62;
      v65(v62, v64, v2);
      v50 = sub_26618C690();
      v51 = sub_26618CAA0();
      if (os_log_type_enabled(v50, v51))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_2_16(&dword_2660B7000, v52, v53, "Returning all devices since the provided filter criteria did not match any devices");
        OUTLINED_FUNCTION_7_2();
      }

      v44(v49, v2);
    }

    return v29;
  }

  v65(v61, v64, v2);
  v55 = sub_26618C690();
  v56 = sub_26618CAA0();
  if (os_log_type_enabled(v55, v56))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_2_16(&dword_2660B7000, v57, v58, "Filter has no useful information. Returning all devices");
    OUTLINED_FUNCTION_7_2();
  }

  v26(v61, v2);
  return v29;
}

uint64_t sub_266137204()
{
  v1 = sub_2661372EC(v0);
  v2 = sub_2661373B4(v0);
  v4 = v3;
  sub_26618CD80();

  MEMORY[0x26677BCF0](v2, v4);

  MEMORY[0x26677BCF0](0x696C696261706163, 0xEE00203A73656974);
  v5 = *(v0 + 80);
  v6 = sub_26618C5B0();
  v7 = MEMORY[0x26677BD80](v5, v6);
  MEMORY[0x26677BCF0](v7);

  return v1;
}

uint64_t sub_2661372EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  sub_26618CD80();

  strcpy(v5, "deviceName: ");
  HIWORD(v5[1]) = -4864;
  MEMORY[0x26677BCF0](v2, v1);
  MEMORY[0x26677BCF0](2108450, 0xE300000000000000);
  return v5[0];
}

uint64_t sub_2661373B4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  MEMORY[0x26677BCF0]();
  MEMORY[0x26677BCF0](2108450, 0xE300000000000000);
  return 0x22203A6D6F6F72;
}

uint64_t sub_266137440()
{
  v0 = sub_26618CEC0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26613748C(char a1)
{
  if (!a1)
  {
    return 0x656369766544;
  }

  if (a1 == 1)
  {
    return 1836019538;
  }

  return 0x797469746E45;
}

uint64_t sub_266137534@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266137440();
  *a2 = result;
  return result;
}

uint64_t sub_266137564@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26613748C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266137590(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1;
  v87[0] = a1;
  *&v76 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C610, &qword_266192330);
  v6 = sub_26618C890();

  if ((v6 & 1) == 0)
  {
    return sub_266137AFC(v5, a2, a3);
  }

  v69 = *(a2 + 3);
  v71 = *(a2 + 5);
  v65 = a2[1];
  v67 = *a2;
  v7 = *(a2 + 16);
  v9 = a2[9];
  v8 = a2[10];
  v10 = *(a2 + 1);
  v83 = *a2;
  v84 = v10;
  v11 = *(a2 + 3);
  v85 = *(a2 + 2);
  v86 = v11;
  v12 = a2[7];
  v73 = a2[8];
  v74 = v8;
  v13 = *(v12 + 16);
  sub_2660DD6B8(a2, v87);
  v63 = v12;
  v14 = (v12 + 40);
  v15 = MEMORY[0x277D84F90];
  v75 = a3;
  for (i = v5; v13; v5 = i)
  {
    v17 = *(v14 - 1);
    v18 = *v14;

    LOBYTE(v76) = v7;
    v87[0] = v67;
    v87[1] = v65;
    v88 = v7;
    v90 = v71;
    v89 = v69;
    v91 = v63;
    v92 = v17;
    v73 = v17;
    v93 = v18;
    v94 = v74;
    v19 = sub_266137AFC(v5, v87, a3);
    v21 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = *(v15 + 16);
      sub_2661298C0();
      v15 = v25;
    }

    v22 = *(v15 + 16);
    if (v22 >= *(v15 + 24) >> 1)
    {
      sub_2661298C0();
      v15 = v26;
    }

    *(v15 + 16) = v22 + 1;
    v23 = v15 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v21;
    v14 += 2;
    --v13;
    v9 = v18;
    a3 = v75;
  }

  v28 = *(v15 + 16);
  if (!v28)
  {

    v30 = MEMORY[0x277D84F90];
LABEL_48:
    sub_26613C380(v30);
    v27 = sub_2660DCDDC(v59);

    if (sub_2661046B8(v27))
    {
      v76 = v83;
      v77 = v84;
      v78 = v85;
      v79 = v86;
      v80 = v73;
      v81 = v9;
      v82 = v74;
      sub_2660DD77C(&v76);
    }

    else
    {

      v76 = v83;
      v77 = v84;
      v78 = v85;
      v79 = v86;
      v80 = v73;
      v81 = v9;
      v82 = v74;
      sub_2660DD77C(&v76);

      return a3;
    }

    return v27;
  }

  v60 = v9;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v31 = v15 + 32;
  v64 = *(v15 + 16);
  while (1)
  {
    v32 = v31 + 16 * v29;
    v33 = *(v32 + 8);
    if (v33 == 255 || (v33 & 1) != 0)
    {
      goto LABEL_43;
    }

    v34 = *v32;
    v35 = *v32 & 0xFFFFFFFFFFFFFF8;
    v36 = v34 >> 62;
    v37 = v34 >> 62 ? sub_26618CCD0() : *(v35 + 16);
    v38 = v30 >> 62;
    result = v30 >> 62 ? sub_26618CCD0() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v70 = v37;
    v40 = __OFADD__(result, v37);
    v41 = result + v37;
    if (v40)
    {
      break;
    }

    sub_266138EF8(v34, 0);
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v72 = v34;
    if (result)
    {
      if (v38)
      {
        goto LABEL_26;
      }

      v42 = v30 & 0xFFFFFFFFFFFFFF8;
      if (v41 <= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v38)
      {
LABEL_26:
        sub_26618CCD0();
        goto LABEL_27;
      }

      v42 = v30 & 0xFFFFFFFFFFFFFF8;
    }

    v43 = *(v42 + 16);
LABEL_27:
    result = sub_26618CDA0();
    v30 = result;
    v42 = result & 0xFFFFFFFFFFFFFF8;
LABEL_28:
    v66 = v42;
    v68 = v29;
    v44 = *(v42 + 16);
    v45 = (*(v42 + 24) >> 1) - v44;
    v46 = v42 + 8 * v44;
    if (v36)
    {
      v47 = v72;
      v50 = sub_26618CCD0();
      if (v50)
      {
        v51 = v50;
        result = sub_26618CCD0();
        if (v45 < result)
        {
          goto LABEL_55;
        }

        if (v51 < 1)
        {
          goto LABEL_57;
        }

        v61 = result;
        v62 = v30;
        v52 = v46 + 32;
        sub_266138F1C();
        for (j = 0; j != v51; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C688, &qword_266192AB8);
          v54 = sub_2660DD51C(&v76, j, v72);
          v56 = *v55;
          (v54)(&v76, 0);
          *(v52 + 8 * j) = v56;
        }

        a3 = v75;
        v30 = v62;
        v48 = v61;
        v49 = v72;
        goto LABEL_38;
      }
    }

    else
    {
      v47 = v72;
      v48 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        if (v45 < v48)
        {
          goto LABEL_56;
        }

        sub_26618C4F0();
        swift_arrayInitWithCopy();
        v49 = v72;
LABEL_38:
        result = sub_266138F04(v49, v33);
        v29 = v68;
        v31 = v15 + 32;
        v28 = v64;
        if (v48 < v70)
        {
          goto LABEL_53;
        }

        if (v48 > 0)
        {
          v57 = *(v66 + 16);
          v40 = __OFADD__(v57, v48);
          v58 = v57 + v48;
          if (v40)
          {
            goto LABEL_54;
          }

          *(v66 + 16) = v58;
        }

        goto LABEL_43;
      }
    }

    result = sub_266138F04(v47, v33);
    v29 = v68;
    v31 = v15 + 32;
    v28 = v64;
    if (v70 > 0)
    {
      goto LABEL_53;
    }

LABEL_43:
    if (++v29 == v28)
    {

      v9 = v60;
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_266137AFC(uint64_t a1, const void *a2, uint64_t a3)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_2660DD6B8(a2, v22);
  swift_getAtKeyPath();
  memcpy(v22, __dst, sizeof(v22));
  sub_2660DD77C(v22);
  if (!__src[1])
  {
    return 0;
  }

  if (qword_28005BC70 != -1)
  {
    swift_once();
  }

  v6 = qword_28005C680;
  v7 = sub_266158284(a1, qword_28005C680);
  if (!v7)
  {

    return 0;
  }

  v8 = sub_266137D30(__src[0], __src[1], a3, v7);

  if (sub_2661046B8(v8))
  {
    return v8;
  }

  if (!sub_266158284(a1, v6))
  {
    return 0;
  }

  v11 = v10;

  memcpy(__src, a2, sizeof(__src));
  sub_2660DD6B8(a2, v17);
  swift_getAtKeyPath();
  memcpy(__dst, __src, sizeof(__dst));
  sub_2660DD77C(__dst);
  v12 = v19;
  if (!v19)
  {
    return 0;
  }

  v13 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C698, &qword_266192AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E190;
  if (v11)
  {
    if (v11 == 1)
    {
      v15 = 0xE400000000000000;
      v16 = 1836019538;
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x797469746E45;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
    v16 = 0x656369766544;
  }

  *(inited + 32) = v16;
  *(inited + 40) = v15;
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  return sub_26618C850();
}

unint64_t sub_266137D30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26618CCD0())
  {
    if (!i)
    {
      return MEMORY[0x277D84F90];
    }

    v7 = sub_2661046B8(a3);
    v8 = 0;
    v27 = v4;
    v28 = v4 & 0xC000000000000001;
    v25 = (v4 + 32);
    v26 = i;
    v9 = a3 & 0xC000000000000001;
LABEL_5:
    sub_2661046C8(v8);
    if (v28)
    {
      MEMORY[0x26677C150](v8, v4);
    }

    else
    {
      v10 = *&v25[8 * v8];
    }

    v11 = __OFADD__(v8, 1);
    v12 = v8 + 1;
    if (!v11)
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v29 = v12;
  v13 = 0;
  v32 = MEMORY[0x277D84F90];
  while (v7 != v13)
  {
    if (v9)
    {
      v14 = MEMORY[0x26677C150](v13, a3);
    }

    else
    {
      if (v13 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v14 = *(a3 + 8 * v13 + 32);
    }

    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v4 = v14;
    swift_getAtKeyPath();

    if (v31 && (sub_2660CCD6C(), v15 = sub_26618CC20(), , !v15))
    {
      sub_26618CDE0();
      v16 = v32[2];
      sub_26618CE10();
      sub_26618CE20();
      sub_26618CDF0();
    }

    else
    {
    }

    ++v13;
  }

  v4 = v32;
  if (sub_2661046B8(v32))
  {
  }

  else
  {

    v17 = 0;
    v30 = MEMORY[0x277D84F90];
    while (v7 != v17)
    {
      if (v9)
      {
        v18 = MEMORY[0x26677C150](v17, a3);
      }

      else
      {
        if (v17 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v18 = *(a3 + 8 * v17 + 32);
      }

      if (__OFADD__(v17, 1))
      {
        goto LABEL_42;
      }

      v4 = v18;
      swift_getAtKeyPath();

      if (!v31)
      {
        goto LABEL_31;
      }

      sub_26618C8E0();
      v20 = v19;

      v31 = v20;
      sub_26618C8E0();
      sub_2660CCD6C();
      v21 = sub_26618CC60();

      if (v21)
      {
        sub_26618CDE0();
        v22 = v30[2];
        sub_26618CE10();
        sub_26618CE20();
        sub_26618CDF0();
      }

      else
      {
LABEL_31:
      }

      ++v17;
    }

    v4 = v30;
    v23 = sub_2661046B8(v30);

    if (!v23)
    {

      v4 = v27;
      v8 = v29;
      if (v29 != v26)
      {
        goto LABEL_5;
      }

      return MEMORY[0x277D84F90];
    }
  }

  return v4;
}

uint64_t sub_2661380BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6A0, qword_266192AC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E250;
  *(inited + 32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26618F7E0;
  *(v1 + 32) = swift_getKeyPath();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26618F7E0;
  *(v2 + 32) = swift_getKeyPath();
  *(inited + 64) = v2;
  *(inited + 72) = 0;
  *(inited + 80) = swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266192A40;
  *(v3 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(inited + 88) = v3;
  *(inited + 96) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C610, &qword_266192330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6A8, qword_266192B50);
  result = sub_26618C850();
  qword_28005C680 = result;
  return result;
}

uint64_t sub_26613826C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_26618C4F0();
      result = sub_26618C9E0();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_2661382C8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_266138F80(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_266138344(v6);
  return sub_26618CDF0();
}

void sub_266138344(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_26618CFC0();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_26613826C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_266138510(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_266138424(0, v3, 1, a1);
  }
}

void sub_266138424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v18 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        sub_26618C4E0();
        v13 = sub_26618C5D0();
        sub_26618C4E0();
        v14 = sub_26618C5D0();

        if (v13 >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v15;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v18 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_266138510(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v95 = (v8 + 16);
      v96 = *(v8 + 16);
      while (v96 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v97 = v8;
        v98 = (v8 + 16 * v96);
        v99 = *v98;
        v100 = &v95[2 * v96];
        v8 = v100[1];
        sub_266138B88((*a3 + 8 * *v98), (*a3 + 8 * *v100), (*a3 + 8 * v8), v114);
        if (v5)
        {
          break;
        }

        if (v8 < v99)
        {
          goto LABEL_118;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_119;
        }

        *v98 = v99;
        v98[1] = v8;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_120;
        }

        v96 = *v95 - 1;
        memmove(v100, v100 + 2, 16 * v101);
        *v95 = v96;
        v8 = v97;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_266138DB8(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if ((v7 + 1) < v6)
    {
      v103 = v5;
      v105 = v8;
      v11 = (*a3 + 8 * v7);
      v12 = v7;
      v13 = 8 * v7;
      v15 = *v11;
      v14 = v11 + 2;
      v114 = v6;
      v5 = *(*a3 + 8 * v10);
      v16 = v10;
      v17 = v15;
      sub_26618C4E0();
      v111 = sub_26618C5D0();
      sub_26618C4E0();
      v110 = sub_26618C5D0();

      v18 = v114;
      v10 = v16;
      v107 = v12;
      v19 = v12 + 2;
      while (1)
      {
        v20 = v19;
        v21 = v10 + 1;
        if (v21 >= v18)
        {
          break;
        }

        v22 = *(v14 - 1);
        v23 = v21;
        v24 = *v14;
        v5 = v22;
        sub_26618C4E0();
        v25 = sub_26618C5D0();
        sub_26618C4E0();
        v26 = sub_26618C5D0();

        v10 = v23;
        v18 = v114;
        ++v14;
        v19 = (v20 + 1);
        if (v111 < v110 == v25 >= v26)
        {
          goto LABEL_9;
        }
      }

      v10 = v18;
LABEL_9:
      if (v111 >= v110)
      {
        v5 = v103;
        v8 = v105;
      }

      else
      {
        v8 = v105;
        v27 = v107;
        if (v10 < v107)
        {
          goto LABEL_124;
        }

        if (v107 >= v10)
        {
          v5 = v103;
          v9 = v107;
          goto LABEL_24;
        }

        if (v18 >= v20)
        {
          v28 = v20;
        }

        else
        {
          v28 = v18;
        }

        v29 = 8 * v28 - 8;
        v30 = v10;
        v5 = v103;
        do
        {
          if (v27 != --v30)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            v32 = *(v31 + v13);
            *(v31 + v13) = *(v31 + v29);
            *(v31 + v29) = v32;
          }

          ++v27;
          v29 -= 8;
          v13 += 8;
        }

        while (v27 < v30);
      }

      v9 = v107;
    }

LABEL_24:
    v33 = a3[1];
    if (v10 < v33)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (&v10[-v9] < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = *(v8 + 16);
      sub_2661299B0();
      v8 = v93;
    }

    v48 = *(v8 + 16);
    v49 = v48 + 1;
    if (v48 >= *(v8 + 24) >> 1)
    {
      sub_2661299B0();
      v8 = v94;
    }

    *(v8 + 16) = v49;
    v50 = v8 + 32;
    v51 = (v8 + 32 + 16 * v48);
    *v51 = v9;
    v51[1] = v10;
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v114 = v10;
    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        v53 = (v50 + 16 * (v49 - 1));
        v54 = (v8 + 16 * v49);
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v8 + 32);
          v56 = *(v8 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_60:
          if (v58)
          {
            goto LABEL_109;
          }

          v70 = *v54;
          v69 = v54[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_112;
          }

          v74 = v53[1];
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_117;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v49 < 2)
        {
          goto LABEL_111;
        }

        v77 = *v54;
        v76 = v54[1];
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_75:
        if (v73)
        {
          goto LABEL_114;
        }

        v79 = *v53;
        v78 = v53[1];
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_116;
        }

        if (v80 < v72)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v52 - 1 >= v49)
        {
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
LABEL_110:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v84 = v8;
        v85 = (v50 + 16 * (v52 - 1));
        v86 = *v85;
        v87 = v50;
        v88 = v52;
        v8 = v50 + 16 * v52;
        v89 = *(v8 + 8);
        sub_266138B88((*a3 + 8 * *v85), (*a3 + 8 * *v8), (*a3 + 8 * v89), v113);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v89 < v86)
        {
          goto LABEL_104;
        }

        v5 = *(v84 + 16);
        if (v88 > v5)
        {
          goto LABEL_105;
        }

        *v85 = v86;
        v85[1] = v89;
        if (v88 >= v5)
        {
          goto LABEL_106;
        }

        v90 = v88;
        v49 = (v5 - 1);
        memmove(v8, (v8 + 16), 16 * &v5[-v90 - 1]);
        v8 = v84;
        *(v84 + 16) = v5 - 1;
        v91 = v5 > 2;
        v5 = 0;
        v50 = v87;
        if (!v91)
        {
          goto LABEL_89;
        }
      }

      v59 = v50 + 16 * v49;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_107;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_108;
      }

      v66 = v54[1];
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_110;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_113;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = v53[1];
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_121;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v6 = a3[1];
    v7 = v114;
    if (v114 >= v6)
    {
      goto LABEL_92;
    }
  }

  v34 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_125;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v34)
  {
    goto LABEL_40;
  }

  v104 = v5;
  v106 = v8;
  v35 = *a3;
  v36 = *a3 + 8 * v10 - 8;
  v108 = v9;
  v37 = v9 - v10;
  v112 = v34;
LABEL_33:
  v114 = v10;
  v38 = *(v35 + 8 * v10);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    sub_26618C4E0();
    v44 = sub_26618C5D0();
    sub_26618C4E0();
    v45 = sub_26618C5D0();

    if (v44 >= v45)
    {
LABEL_38:
      v10 = v114 + 1;
      v36 += 8;
      --v37;
      if (v114 + 1 == v112)
      {
        v10 = v112;
        v5 = v104;
        v8 = v106;
        v9 = v108;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v35)
    {
      break;
    }

    v46 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v46;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_266138B88(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_266129E10(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      sub_26618C4E0();
      v16 = sub_26618C5D0();
      sub_26618C4E0();
      v17 = sub_26618C5D0();

      if (v16 >= v17)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_266129E10(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v35 = v7;
  v36 = v4;
LABEL_15:
  v21 = v6 - 1;
  v22 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v24 = v22;
    v25 = v21;
    v26 = *v21;
    v27 = *(v10 - 1);
    v28 = v26;
    sub_26618C4E0();
    v29 = sub_26618C5D0();
    sub_26618C4E0();
    v30 = sub_26618C5D0();

    v5 = v24;
    v31 = v24 + 1;
    if (v29 < v30)
    {
      v20 = v31 == v6;
      v6 = v25;
      v7 = v35;
      v4 = v36;
      if (!v20)
      {
        *v5 = *v25;
        v6 = v25;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      *v24 = *(v10 - 1);
    }

    v22 = v24 - 1;
    --v10;
    v7 = v35;
    v4 = v36;
    v21 = v25;
  }

LABEL_28:
  v32 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, 8 * v32);
  }

  return 1;
}

char *sub_266138DCC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_266138DF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C618, &qword_266192338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_266138EF8(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_2660DAEF4(result);
  }

  else
  {
  }
}

unint64_t sub_266138F04(unint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_2660DD82C(result, a2 & 1);
  }

  return result;
}

unint64_t sub_266138F1C()
{
  result = qword_28005C690;
  if (!qword_28005C690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C688, &qword_266192AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C690);
  }

  return result;
}

_BYTE *sub_266138FBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2661390B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_2661390F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_266139158(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_266139198(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_2661391FC()
{
  result = qword_28005C6B0;
  if (!qword_28005C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C6B0);
  }

  return result;
}

void OUTLINED_FUNCTION_2_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *sub_266139270()
{
  result = sub_266139290();
  off_28005C6B8 = result;
  return result;
}

uint64_t sub_266139290()
{
  v0 = sub_26618C850();
  swift_isUniquelyReferenced_nonNull_native();
  sub_2661396A8(0xD00000000000001BLL, 0x8000000266199AE0, 0xD000000000000017, 0x8000000266199AC0);
  swift_isUniquelyReferenced_nonNull_native();
  sub_2661396A8(0x6C7070612E6D6F63, 0xEF636973754D2E65, 0xD000000000000019, 0x8000000266199B00);
  swift_isUniquelyReferenced_nonNull_native();
  sub_2661396A8(0xD000000000000015, 0x80000002661979A0, 0xD000000000000017, 0x8000000266199B20);
  return v0;
}

uint64_t sub_2661393C4()
{
  result = sub_2661393E4();
  qword_28005D1A0 = result;
  return result;
}

uint64_t sub_2661393E4()
{
  v2 = MEMORY[0x277D84FA0];
  sub_266140DC4(&v1, 0xD000000000000019, 0x8000000266199B40);

  sub_266140DC4(&v1, 0xD000000000000019, 0x8000000266198E10);

  return v2;
}

void *sub_266139470()
{
  result = sub_26618C850();
  off_28005C6C0 = result;
  return result;
}

void *sub_2661394AC()
{
  result = sub_26618C850();
  off_28005C6C8 = result;
  return result;
}

uint64_t sub_2661394E8(uint64_t a1, uint64_t a2)
{
  if (qword_28005BC78 != -1)
  {
    swift_once();
  }

  v4 = off_28005C6B8;
  if (*(off_28005C6B8 + 2))
  {
    v5 = sub_266129F20(a1, a2);
    if (v6)
    {
      v7 = (v4[7] + 16 * v5);
      a1 = *v7;
      v8 = v7[1];
    }
  }

  return a1;
}

uint64_t sub_266139580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_266129F20(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6D8, &qword_266192D88);
  result = sub_26618CE40();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v4;
  result = sub_266129F20(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_26618D030();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    *(v16[7] + 8 * v11) = a1;
  }

  else
  {
    sub_2661397FC(v11, a2, a3, a1, v16);
  }

  return result;
}

uint64_t sub_2661396A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_266129F20(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6D0, &qword_266192D80);
  if ((sub_26618CE40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_266129F20(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_26618D030();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_266139844(v13, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_2661397FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_266139844(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_2661398AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26618B800();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = sub_26618C6B0();
  v14 = OUTLINED_FUNCTION_2_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618C850();
  sub_26618B7C0();
  (*(v6 + 104))(a1, *MEMORY[0x277D5C150], v3);
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_2814B4A80);
  (*(v16 + 16))(v20, v21, v13);
  v40 = v13;
  v22 = v16;
  v23 = *(v6 + 16);
  v23(v12, a1, v3);
  v39 = v20;
  v24 = sub_26618C690();
  v25 = sub_26618CAD0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v37 = v1;
    v27 = v26;
    v35 = swift_slowAlloc();
    v41 = v35;
    *v27 = 136315138;
    v36 = v22;
    v28 = v38;
    v23(v38, v12, v3);
    v29 = sub_266145588(v28);
    v31 = v30;
    (*(v6 + 8))(v12, v3);
    v32 = sub_266103A98(v29, v31, &v41);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_2660B7000, v24, v25, "Transformer.reformToAcousticId reformed parse to Acoustic ID DirectInvocation: %s", v27, 0xCu);
    v33 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x26677CC30](v33, -1, -1);
    MEMORY[0x26677CC30](v27, -1, -1);

    return (*(v36 + 8))(v39, v40);
  }

  else
  {

    (*(v6 + 8))(v12, v3);
    return (*(v22 + 8))(v39, v40);
  }
}

uint64_t sub_266139CB8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

char *sub_266139D64(uint64_t a1)
{
  result = sub_2660DD5FC(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_2660DD63C(&v5, result, v3, 0, a1);
  }
}

void *sub_266139E0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2661409CC(*(a1 + 16), 0);
  v4 = sub_2661423D8(&v6, v3 + 4, v2, a1);
  sub_2660BA124();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

BOOL sub_266139E9C()
{
  sub_26618BDF0();
  v0 = sub_266142534(v10, v8, &qword_28005C0A8, qword_26618FAE0);
  if (!v9)
  {
    sub_2660BF79C(v10, &qword_28005C0A8, qword_26618FAE0);
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_61_1(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3);
  sub_26618BE80();
  if (!OUTLINED_FUNCTION_6_13())
  {
    sub_26618BE50();
    if (!OUTLINED_FUNCTION_4_16())
    {
      sub_2660BF79C(v10, &qword_28005C0A8, qword_26618FAE0);
      __swift_destroy_boxed_opaque_existential_1(v7);
      goto LABEL_9;
    }
  }

  sub_26618BED0();

  sub_2660BF79C(v10, &qword_28005C0A8, qword_26618FAE0);
  v4 = v6 == 0;
  if (v6)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
LABEL_10:
  sub_2660BF79C(v8, &qword_28005C0A8, qword_26618FAE0);
  return v4;
}

void sub_266139FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_0();
  a19 = v25;
  a20 = v26;
  v27 = sub_26618BFE0();
  v278 = OUTLINED_FUNCTION_2_2(v27);
  v279 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v278);
  OUTLINED_FUNCTION_1_4();
  v275 = v32 - v31;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C718, &qword_266192DC8);
  v33 = OUTLINED_FUNCTION_16(v277);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17_5();
  v274 = v40;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17_5();
  v276 = v42;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v43);
  v45 = v260 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C720, &qword_266192DD0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_17_5();
  v273 = v60;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_76_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_75_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_77_0();
  v66 = MEMORY[0x28223BE20](v65);
  v68 = v260 - v67;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_32_3();
  v70 = MEMORY[0x28223BE20](v69);
  v72 = v260 - v71;
  MEMORY[0x28223BE20](v70);
  v74 = v260 - v73;
  sub_26618BDF0();
  sub_266142534(v283, v282, &qword_28005C0A8, qword_26618FAE0);
  if (v282[3])
  {
    sub_266142534(v282, v281, &qword_28005C0A8, qword_26618FAE0);
    sub_26618BE00();
    if (OUTLINED_FUNCTION_46_3())
    {
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();
      if (v280)
      {
        sub_26613C958();
        OUTLINED_FUNCTION_82_0();
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      v79 = v278;
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();

      if (v280)
      {
        sub_26618BD30();
        OUTLINED_FUNCTION_63_3();
        sub_26618BFD0();
      }

      else
      {
        OUTLINED_FUNCTION_26_6();
        __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
      }

      v83 = *MEMORY[0x277D5EE50];
      OUTLINED_FUNCTION_36_1();
      v84(v72);
      __swift_storeEnumTagSinglePayload(v72, 0, 1, v79);
      v85 = *(v277 + 48);
      sub_266142534(v74, v45, &qword_28005C720, &qword_266192DD0);
      sub_266142534(v72, &v45[v85], &qword_28005C720, &qword_266192DD0);
      OUTLINED_FUNCTION_22_6(v45, 1, v79);
      if (!v93)
      {
        sub_266142534(v45, v23, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_22_6(&v45[v85], 1, v79);
        if (!v93)
        {
          v278 = v20;
          v104 = v279;
          v105 = v275;
          (*(v279 + 32))(v275, &v45[v85], v79);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v106, v107);
          LOBYTE(v108) = v79;
          sub_26618C890();
          OUTLINED_FUNCTION_30_3();

          v109 = *(v104 + 8);
          v109(v105, v79);
          OUTLINED_FUNCTION_64_2(v72);
          OUTLINED_FUNCTION_64_2(v74);
          sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
          v109(v23, v79);
          v20 = v278;
          v110 = v45;
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_23_6();
        sub_2660BF79C(v94, v95, v96);
        OUTLINED_FUNCTION_23_6();
        sub_2660BF79C(v97, v98, v99);
        sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_51_2();
        v100(v23, v79);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_23_6();
      sub_2660BF79C(v86, v87, v88);
      OUTLINED_FUNCTION_23_6();
      sub_2660BF79C(v89, v90, v91);
      sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
      OUTLINED_FUNCTION_22_6(&v45[v85], 1, v79);
      if (!v93)
      {
LABEL_26:
        v101 = v45;
LABEL_27:
        sub_2660BF79C(v101, &qword_28005C718, &qword_266192DC8);
        goto LABEL_48;
      }

      v92 = v45;
LABEL_22:
      sub_2660BF79C(v92, &qword_28005C720, &qword_266192DD0);
LABEL_33:
      v111 = *(v20 + 16);

LABEL_61:
      __swift_destroy_boxed_opaque_existential_1(v281);
      goto LABEL_62;
    }

    sub_26618BDE0();
    if (OUTLINED_FUNCTION_10_10())
    {

      sub_26618BED0();
      if (v280)
      {
        sub_26613C958();
        v76 = v75;
      }

      else
      {
        v76 = MEMORY[0x277D84F90];
      }

      v112 = v278;
      v113 = v276;
      sub_26618BED0();

      if (v280 && (v114 = sub_26618BD30(), , v114))
      {
        sub_26618BFD0();
      }

      else
      {
        OUTLINED_FUNCTION_26_6();
        __swift_storeEnumTagSinglePayload(v115, v116, v117, v112);
      }

      v118 = *MEMORY[0x277D5EE50];
      OUTLINED_FUNCTION_36_1();
      v119(v20);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v112);
      v120 = *(v277 + 48);
      sub_266142534(v68, v113, &qword_28005C720, &qword_266192DD0);
      sub_266142534(v20, v113 + v120, &qword_28005C720, &qword_266192DD0);
      OUTLINED_FUNCTION_22_6(v113, 1, v112);
      if (v93)
      {

        v121 = OUTLINED_FUNCTION_19_7();
        sub_2660BF79C(v121, v122, &qword_266192DD0);
        OUTLINED_FUNCTION_52_1();
        sub_2660BF79C(v123, v124, v125);
        sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_22_6(v113 + v120, 1, v112);
        if (v93)
        {
          sub_2660BF79C(v113, &qword_28005C720, &qword_266192DD0);
          goto LABEL_60;
        }
      }

      else
      {
        sub_266142534(v113, v22, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_22_6(v113 + v120, 1, v112);
        if (!v126)
        {
          v278 = v76;
          v139 = v113;
          v140 = v279;
          v141 = v275;
          (*(v279 + 32))(v275, v139 + v120, v112);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v142, v143);
          v144 = sub_26618C890();

          v145 = *(v140 + 8);
          v145(v141, v112);
          sub_2660BF79C(v20, &qword_28005C720, &qword_266192DD0);
          sub_2660BF79C(v68, &qword_28005C720, &qword_266192DD0);
          sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
          v145(v22, v112);
          v146 = v139;
          v76 = v278;
          sub_2660BF79C(v146, &qword_28005C720, &qword_266192DD0);
          if ((v144 & 1) == 0)
          {
            goto LABEL_48;
          }

LABEL_60:
          v147 = *(v76 + 16);

          goto LABEL_61;
        }

        v127 = OUTLINED_FUNCTION_19_7();
        sub_2660BF79C(v127, v128, &qword_266192DD0);
        sub_2660BF79C(v68, &qword_28005C720, &qword_266192DD0);
        sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_51_2();
        v129(v22, v112);
      }

      sub_2660BF79C(v113, &qword_28005C718, &qword_266192DC8);
      goto LABEL_48;
    }

    sub_26618BE80();
    if (OUTLINED_FUNCTION_10_10())
    {

      sub_26618BED0();

      if (v280 && (v77 = sub_26618BD30(), , v77))
      {
        sub_26618BFD0();

        v78 = v278;
      }

      else
      {
        v130 = OUTLINED_FUNCTION_19_8();
        v78 = v278;
        __swift_storeEnumTagSinglePayload(v130, v131, v132, v278);
      }

      v133 = v274;
      v134 = *MEMORY[0x277D5EE50];
      OUTLINED_FUNCTION_36_1();
      v135(v21);
      OUTLINED_FUNCTION_14_12(v21);
      v137 = *(v136 + 48);
      OUTLINED_FUNCTION_81_0(v24, v133);
      OUTLINED_FUNCTION_81_0(v21, v133 + v137);
      OUTLINED_FUNCTION_2_17(v133);
      if (!v93)
      {
        sub_266142534(v133, v273, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_2_17(v133 + v137);
        if (!v148)
        {
          v154 = v279;
          v155 = v275;
          (*(v279 + 32))(v275, v133 + v137, v78);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v156, v157);
          sub_26618C890();

          v158 = *(v154 + 8);
          v158(v155, v78);
          OUTLINED_FUNCTION_52_1();
          sub_2660BF79C(v159, v160, v161);
          OUTLINED_FUNCTION_52_1();
          sub_2660BF79C(v162, v163, v164);
          sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
          v158(v273, v78);
          OUTLINED_FUNCTION_52_1();
LABEL_72:
          sub_2660BF79C(v165, v166, v167);
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_49_2(v21);
        OUTLINED_FUNCTION_43_2();
        sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_51_2();
        v149 = OUTLINED_FUNCTION_42_6();
        v150(v149);
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_49_2(v21);
      OUTLINED_FUNCTION_43_2();
      sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
      OUTLINED_FUNCTION_2_17(v133 + v137);
      if (!v93)
      {
LABEL_66:
        v151 = v133;
LABEL_67:
        sub_2660BF79C(v151, &qword_28005C718, &qword_266192DC8);
        goto LABEL_61;
      }

      v138 = v133;
LABEL_55:
      sub_2660BF79C(v138, &qword_28005C720, &qword_266192DD0);
      goto LABEL_61;
    }

    sub_26618BDD0();
    v102 = OUTLINED_FUNCTION_10_10();
    v103 = v278;
    if (v102)
    {
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();
      if (v280)
      {
        sub_26613C958();
        OUTLINED_FUNCTION_82_0();
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      v74 = v271;
      v24 = v270;
      v168 = v272;
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();

      if (v280)
      {
        sub_26618BD30();
        OUTLINED_FUNCTION_63_3();
        sub_26618BFD0();
      }

      else
      {
        v169 = OUTLINED_FUNCTION_19_8();
        __swift_storeEnumTagSinglePayload(v169, v170, v171, v103);
      }

      v172 = *MEMORY[0x277D5EE50];
      v173 = OUTLINED_FUNCTION_25_9();
      v174(v173);
      OUTLINED_FUNCTION_14_12(v168);
      v176 = *(v175 + 48);
      v108 = &qword_28005C720;
      OUTLINED_FUNCTION_39_2();
      OUTLINED_FUNCTION_38_3();
      OUTLINED_FUNCTION_2_17(v74);
      if (!v93)
      {
        sub_266142534(v74, v266, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_2_17(&v74[v176]);
        if (!v93)
        {
          v177 = OUTLINED_FUNCTION_11_7();
          v178(v177);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v179, v180);
          OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_30_3();

          v181 = *(v168 + 8);
          v182 = OUTLINED_FUNCTION_42_6();
          v181(v182);
          v183 = &a18;
LABEL_108:
          v228 = *(v183 - 32);
LABEL_109:
          OUTLINED_FUNCTION_64_2(v228);
          OUTLINED_FUNCTION_64_2(v24);
          sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
          v229 = OUTLINED_FUNCTION_54_3();
          v181(v229);
          v110 = v74;
LABEL_32:
          OUTLINED_FUNCTION_64_2(v110);
          if (v108)
          {
            goto LABEL_33;
          }

LABEL_48:

          goto LABEL_61;
        }

        goto LABEL_99;
      }

      goto LABEL_94;
    }

    sub_26618BF80();
    if (OUTLINED_FUNCTION_10_10())
    {
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();
      if (v280)
      {
        sub_26613C958();
        OUTLINED_FUNCTION_82_0();
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      v74 = v268;
      v24 = v267;
      v190 = v269;
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();

      if (v280)
      {
        sub_26618BD30();
        OUTLINED_FUNCTION_63_3();
        sub_26618BFD0();
      }

      else
      {
        v191 = OUTLINED_FUNCTION_19_8();
        __swift_storeEnumTagSinglePayload(v191, v192, v193, v103);
      }

      v194 = *MEMORY[0x277D5EE50];
      v195 = OUTLINED_FUNCTION_25_9();
      v196(v195);
      OUTLINED_FUNCTION_14_12(v190);
      v176 = *(v197 + 48);
      v108 = &qword_28005C720;
      OUTLINED_FUNCTION_39_2();
      OUTLINED_FUNCTION_38_3();
      OUTLINED_FUNCTION_2_17(v74);
      if (!v93)
      {
        sub_266142534(v74, v262, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_2_17(&v74[v176]);
        if (!v204)
        {
          v223 = OUTLINED_FUNCTION_11_7();
          v224(v223);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v225, v226);
          OUTLINED_FUNCTION_27_3();
          OUTLINED_FUNCTION_30_3();

          v181 = *(v190 + 8);
          v227 = OUTLINED_FUNCTION_42_6();
          v181(v227);
          v183 = &a15;
          goto LABEL_108;
        }

        goto LABEL_99;
      }

      goto LABEL_94;
    }

    sub_26618BE50();
    if (OUTLINED_FUNCTION_10_10())
    {
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();

      if (v280 && (v152 = sub_26618BD30(), , v152))
      {
        v153 = v261;
        sub_26618BFD0();
      }

      else
      {
        v153 = v261;
        v213 = OUTLINED_FUNCTION_19_8();
        __swift_storeEnumTagSinglePayload(v213, v214, v215, v103);
      }

      v216 = v264;
      v217 = v263;
      v218 = v265;
      v219 = *MEMORY[0x277D5EE50];
      OUTLINED_FUNCTION_36_1();
      v220(v218);
      OUTLINED_FUNCTION_14_12(v218);
      v222 = *(v221 + 48);
      OUTLINED_FUNCTION_81_0(v153, v216);
      OUTLINED_FUNCTION_81_0(v218, v216 + v222);
      OUTLINED_FUNCTION_2_17(v216);
      if (v93)
      {

        OUTLINED_FUNCTION_49_2(v218);
        OUTLINED_FUNCTION_43_2();
        sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_2_17(v216 + v222);
        if (v93)
        {
          v138 = v216;
          goto LABEL_55;
        }
      }

      else
      {
        sub_266142534(v216, v217, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_2_17(v216 + v222);
        if (!v230)
        {
          v233 = v279;
          v234 = v275;
          (*(v279 + 32))(v275, v216 + v222, v103);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v235, v236);
          sub_26618C890();

          v237 = *(v233 + 8);
          v237(v234, v103);
          OUTLINED_FUNCTION_23_6();
          sub_2660BF79C(v238, v239, v240);
          OUTLINED_FUNCTION_23_6();
          sub_2660BF79C(v241, v242, v243);
          sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
          v244 = OUTLINED_FUNCTION_54_3();
          (v237)(v244);
          OUTLINED_FUNCTION_23_6();
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_49_2(v218);
        OUTLINED_FUNCTION_43_2();
        sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_51_2();
        v231 = OUTLINED_FUNCTION_54_3();
        v232(v231);
      }

      v151 = v216;
      goto LABEL_67;
    }

    sub_26618BFA0();
    if (!OUTLINED_FUNCTION_10_10())
    {
      sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
      __swift_destroy_boxed_opaque_existential_1(v281);
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_62_3();
    v184 = sub_26618C060();
    if (v184)
    {
      v185 = v184;
      sub_2661046B8(v184);
      OUTLINED_FUNCTION_41_4();
      if (v186)
      {
        v187 = OUTLINED_FUNCTION_67_0();
        sub_2661046C8(v187);
        if ((v185 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26677C150](0, v185);
        }

        else
        {
          v188 = *(v185 + 32);
        }

        sub_26618BCF0();

        v20 = v280;
        if (v280)
        {
          v189 = sub_26618BD20();

          if (v189)
          {
            sub_26613C958();
            OUTLINED_FUNCTION_82_0();
            goto LABEL_117;
          }
        }
      }

      else
      {
      }

      v20 = MEMORY[0x277D84F90];
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_41_4();
    }

LABEL_117:
    v245 = sub_26618C060();

    if (v245)
    {
      if (sub_2661046B8(v245))
      {
        v246 = OUTLINED_FUNCTION_67_0();
        sub_2661046C8(v246);
        if ((v245 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26677C150](0, v245);
        }

        else
        {
          v247 = *(v245 + 32);
        }

        sub_26618BCF0();

        if (v280)
        {
          sub_26618BD30();
          OUTLINED_FUNCTION_63_3();
          sub_26618BFD0();

          goto LABEL_125;
        }
      }

      else
      {
      }
    }

    v248 = OUTLINED_FUNCTION_19_8();
    __swift_storeEnumTagSinglePayload(v248, v249, v250, v103);
LABEL_125:
    v251 = *MEMORY[0x277D5EE50];
    v252 = OUTLINED_FUNCTION_25_9();
    v253(v252);
    OUTLINED_FUNCTION_14_12(v23);
    v176 = *(v254 + 48);
    v108 = &qword_28005C720;
    OUTLINED_FUNCTION_39_2();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_2_17(v74);
    if (!v93)
    {
      sub_266142534(v74, v260[0], &qword_28005C720, &qword_266192DD0);
      OUTLINED_FUNCTION_2_17(&v74[v176]);
      if (!v93)
      {
        v277 = v20;
        v255 = OUTLINED_FUNCTION_11_7();
        v256(v255);
        OUTLINED_FUNCTION_0_14();
        sub_266142A78(v257, v258);
        OUTLINED_FUNCTION_27_3();
        OUTLINED_FUNCTION_30_3();

        v181 = *(v23 + 8);
        v259 = OUTLINED_FUNCTION_42_6();
        v181(v259);
        v228 = v23;
        v20 = v277;
        goto LABEL_109;
      }

LABEL_99:

      OUTLINED_FUNCTION_23_6();
      sub_2660BF79C(v205, v206, v207);
      OUTLINED_FUNCTION_23_6();
      sub_2660BF79C(v208, v209, v210);
      sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
      OUTLINED_FUNCTION_51_2();
      v211 = OUTLINED_FUNCTION_54_3();
      v212(v211);
      goto LABEL_100;
    }

LABEL_94:

    OUTLINED_FUNCTION_23_6();
    sub_2660BF79C(v198, v199, v200);
    OUTLINED_FUNCTION_23_6();
    sub_2660BF79C(v201, v202, v203);
    sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
    OUTLINED_FUNCTION_2_17(&v74[v176]);
    if (v93)
    {
      v92 = v74;
      goto LABEL_22;
    }

LABEL_100:
    v101 = v74;
    goto LABEL_27;
  }

  sub_2660BF79C(v283, &qword_28005C0A8, qword_26618FAE0);
LABEL_62:
  sub_2660BF79C(v282, &qword_28005C0A8, qword_26618FAE0);
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26613B704()
{
  v0 = OUTLINED_FUNCTION_80_0();
  v6 = OUTLINED_FUNCTION_65_3(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5, v15, v17);
  if (v20)
  {
    OUTLINED_FUNCTION_61_1(v6, v7, &qword_28005C0A8, qword_26618FAE0, v8, v9);
    sub_26618BE40();
    if (OUTLINED_FUNCTION_6_13())
    {
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BAF0();
      goto LABEL_10;
    }

    sub_26618BDD0();
    if (OUTLINED_FUNCTION_4_16() || (sub_26618BF80(), OUTLINED_FUNCTION_4_16()) || (sub_26618BE00(), OUTLINED_FUNCTION_4_16()) || (sub_26618BDE0(), OUTLINED_FUNCTION_4_16()))
    {
LABEL_9:
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();
LABEL_10:

      if (v16)
      {
LABEL_11:
        sub_26618BD70();
        OUTLINED_FUNCTION_72_1();

        sub_2660BF79C(v21, &qword_28005C0A8, qword_26618FAE0);
LABEL_24:
        __swift_destroy_boxed_opaque_existential_1(v18);
        goto LABEL_25;
      }

LABEL_23:
      sub_2660BF79C(v21, &qword_28005C0A8, qword_26618FAE0);

      goto LABEL_24;
    }

    sub_26618BFA0();
    if (OUTLINED_FUNCTION_4_16())
    {
      OUTLINED_FUNCTION_48_3();
      v10 = sub_26618C060();

      if (!v10)
      {
        goto LABEL_23;
      }

      if (!sub_2661046B8(v10))
      {

        sub_2660BF79C(v21, &qword_28005C0A8, qword_26618FAE0);
        goto LABEL_24;
      }

      v11 = OUTLINED_FUNCTION_67_0();
      sub_2661046C8(v11);
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26677C150](0, v10);
      }

      else
      {
        v12 = *(v10 + 32);
      }

      sub_26618BCF0();

      if (!v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_26618BE90();
      if (OUTLINED_FUNCTION_4_16())
      {
        goto LABEL_9;
      }

      sub_26618C080();
      if (!OUTLINED_FUNCTION_4_16())
      {
        sub_2660BF79C(v21, &qword_28005C0A8, qword_26618FAE0);
        __swift_destroy_boxed_opaque_existential_1(v18);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();

      if (!v16)
      {
        goto LABEL_23;
      }
    }

    v13 = sub_26618BD20();

    if (v13)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  sub_2660BF79C(v21, &qword_28005C0A8, qword_26618FAE0);
LABEL_25:
  sub_2660BF79C(v19, &qword_28005C0A8, qword_26618FAE0);
  return OUTLINED_FUNCTION_19_7();
}

void sub_26613BA0C()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v0;
  v3 = sub_26618C6B0();
  v4 = OUTLINED_FUNCTION_2_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v11 = (v10 - v9);
  v76 = sub_26618BC20();
  v12 = OUTLINED_FUNCTION_2_2(v76);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v19 = v18 - v17;
  v20 = sub_26618BBC0();
  v21 = OUTLINED_FUNCTION_2_2(v20);
  v77 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24_1();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v71 - v29;
  sub_26618BDF0();
  sub_266142534(v81, v80, &qword_28005C0A8, qword_26618FAE0);
  if (!v80[3])
  {
    goto LABEL_23;
  }

  sub_266142534(v80, v79, &qword_28005C0A8, qword_26618FAE0);
  sub_26618BFA0();
  if (!OUTLINED_FUNCTION_79_0())
  {
    __swift_destroy_boxed_opaque_existential_1(v79);
LABEL_23:
    sub_26618C0B0();
    OUTLINED_FUNCTION_72_1();
    sub_2660BF79C(v80, &qword_28005C0A8, qword_26618FAE0);
LABEL_24:
    OUTLINED_FUNCTION_19_7();
    if (sub_266145B78() != 10)
    {
      goto LABEL_32;
    }

LABEL_28:
    if (qword_2814B2C38 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

  v72 = v27;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_34_6();
  sub_26618C070();

  if (!v78 || (OUTLINED_FUNCTION_18_10(), v31 = sub_26618BD40(), , !v31))
  {

LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(v79);
    sub_2660BF79C(v80, &qword_28005C0A8, qword_26618FAE0);
    goto LABEL_28;
  }

  v71[3] = v11;
  v71[4] = v6;
  v71[5] = v3;
  v11 = *(v31 + 16);
  v71[2] = v2;
  v71[0] = v30;
  v71[1] = v1;
  v71[6] = v31;
  if (!v11)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_34:

    v61 = 0;
    v3 = *(v6 + 16);
    v11 = (v77 + 8);
    v62 = v72;
    while (1)
    {
      if (v3 == v61)
      {

        OUTLINED_FUNCTION_33_2();
        goto LABEL_27;
      }

      if (v61 >= *(v6 + 16))
      {
        goto LABEL_50;
      }

      v63 = *(v77 + 80);
      OUTLINED_FUNCTION_29_2();
      (*(v65 + 16))(v62, v6 + v64 + *(v65 + 72) * v61, v20);
      if (sub_26618BBB0() == 0x636E75614C707061 && v66 == 0xED00006272655668)
      {
        break;
      }

      v68 = sub_26618D000();

      if (v68)
      {
        goto LABEL_45;
      }

      v62 = v72;
      (*v11)(v72, v20);
      ++v61;
    }

LABEL_45:

    v69 = v77 + 32;
    v70 = v71[0];
    (*(v77 + 32))(v71[0], v72, v20);
    sub_26618BBA0();
    OUTLINED_FUNCTION_72_1();

    (*(v69 - 24))(v70, v20);
    __swift_destroy_boxed_opaque_existential_1(v79);
    sub_2660BF79C(v80, &qword_28005C0A8, qword_26618FAE0);
    OUTLINED_FUNCTION_33_2();
    if (!v70)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v33 = *(v14 + 16);
  v32 = v14 + 16;
  v34 = *(v32 + 64);
  OUTLINED_FUNCTION_29_2();
  v36 = v31 + v35;
  v73 = *(v32 + 56);
  v74 = v37;
  v75 = v32;
  v3 = (v32 - 8);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v38 = v20;
    v39 = v76;
    v74(v19, v36, v76);
    v40 = sub_26618BBF0();
    (*v3)(v19, v39);
    v41 = *(v40 + 16);
    v42 = *(v6 + 16);
    v43 = v42 + v41;
    if (__OFADD__(v42, v41))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v43 > *(v6 + 24) >> 1)
    {
      if (v42 <= v43)
      {
        v45 = v42 + v41;
      }

      else
      {
        v45 = v42;
      }

      sub_2661296CC(isUniquelyReferenced_nonNull_native, v45, 1, v6);
      v6 = v46;
    }

    v20 = v38;
    if (*(v40 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v41)
      {
        goto LABEL_49;
      }

      v47 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v48 = *(v77 + 72);
      swift_arrayInitWithCopy();

      if (v41)
      {
        v49 = *(v6 + 16);
        v50 = __OFADD__(v49, v41);
        v51 = v49 + v41;
        if (v50)
        {
          goto LABEL_51;
        }

        *(v6 + 16) = v51;
      }
    }

    else
    {

      if (v41)
      {
        goto LABEL_48;
      }
    }

    v36 += v73;
    if (!--v11)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  OUTLINED_FUNCTION_2_5();
LABEL_29:
  v52 = __swift_project_value_buffer(v3, qword_2814B4A80);
  (*(v6 + 16))(v11, v52, v3);

  v53 = sub_26618C690();
  v54 = sub_26618CAB0();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v80[0] = v56;
    *v55 = 136315138;
    v57 = sub_26618C0B0();
    v59 = v11;
    v60 = sub_266103A98(v57, v58, v80);

    *(v55 + 4) = v60;
    _os_log_impl(&dword_2660B7000, v53, v54, "Unknown Uso verb: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v6 + 8))(v59, v3);
  }

  else
  {

    (*(v6 + 8))(v11, v3);
  }

LABEL_32:
  sub_2660BF79C(v81, &qword_28005C0A8, qword_26618FAE0);
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26613C14C()
{
  v0 = OUTLINED_FUNCTION_80_0();
  v6 = OUTLINED_FUNCTION_65_3(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5, v11, v13);
  if (v16)
  {
    OUTLINED_FUNCTION_61_1(v6, v7, &qword_28005C0A8, qword_26618FAE0, v8, v9);
    sub_26618C080();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();

      if (v12)
      {
        sub_26618BE70();
        OUTLINED_FUNCTION_72_1();

        sub_2660BF79C(v17, &qword_28005C0A8, qword_26618FAE0);
      }

      else
      {
        sub_2660BF79C(v17, &qword_28005C0A8, qword_26618FAE0);
      }

      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      sub_2660BF79C(v17, &qword_28005C0A8, qword_26618FAE0);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  else
  {
    sub_2660BF79C(v17, &qword_28005C0A8, qword_26618FAE0);
  }

  sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);
  return OUTLINED_FUNCTION_19_7();
}

uint64_t sub_26613C2C0(uint64_t a1)
{
  result = MEMORY[0x26677BE10](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_266140DC4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_26613C380(uint64_t a1)
{
  v2 = sub_2661046B8(a1);
  v3 = sub_26618C4F0();
  OUTLINED_FUNCTION_24_5();
  v6 = sub_266142A78(v4, v5);
  v10[1] = MEMORY[0x26677BE10](v2, v3, v6);
  v7 = sub_2661046B8(a1);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26677C150](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_266140F10(v10, v9);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_26613C48C()
{
  OUTLINED_FUNCTION_6_0();
  v0 = sub_26618BC90();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_24_1();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_5();
  v52 = v10;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v11);
  v13 = v46 - v12;
  sub_26618BDF0();
  sub_266142534(v58, v57, &qword_28005C0A8, qword_26618FAE0);
  if (!v57[3])
  {
    goto LABEL_22;
  }

  sub_266142534(v57, v56, &qword_28005C0A8, qword_26618FAE0);
  sub_26618C080();
  if (!OUTLINED_FUNCTION_79_0())
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
LABEL_22:
    sub_2660BF79C(v58, &qword_28005C0A8, qword_26618FAE0);
    goto LABEL_24;
  }

  v14 = v55;

  sub_26618BED0();

  if (v54)
  {
    OUTLINED_FUNCTION_18_10();
    v15 = sub_26618BD50();

    if (v15)
    {
      v49 = v8;
      v46[1] = v14;
      v16 = 0;
      v50 = *(v15 + 16);
      v53 = v3 + 16;
      v48 = (v3 + 32);
      v51 = MEMORY[0x277D84F90];
      while (1)
      {
        while (1)
        {
          if (v50 == v16)
          {

            v29 = 0;
            v30 = v51;
            v31 = *(v51 + 16);
            v32 = MEMORY[0x277D84F90];
            while (v31 != v29)
            {
              if (v29 >= *(v30 + 16))
              {
                goto LABEL_35;
              }

              v33 = *(v3 + 80);
              OUTLINED_FUNCTION_29_2();
              v36 = v52;
              (*(v3 + 16))(v52, v35 + v34 + *(v3 + 72) * v29, v0);
              v37 = sub_26618BC70();
              v39 = v38;
              (*(v3 + 8))(v36, v0);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v43 = *(v32 + 16);
                OUTLINED_FUNCTION_17_9();
                sub_266129600();
                v32 = v44;
              }

              v41 = *(v32 + 16);
              v40 = *(v32 + 24);
              v30 = v51;
              if (v41 >= v40 >> 1)
              {
                OUTLINED_FUNCTION_38_2(v40);
                sub_266129600();
                v30 = v51;
                v32 = v45;
              }

              *(v32 + 16) = v41 + 1;
              v42 = v32 + 16 * v41;
              *(v42 + 32) = v37;
              *(v42 + 40) = v39;
              ++v29;
            }

            sub_2660BF79C(v58, &qword_28005C0A8, qword_26618FAE0);
            __swift_destroy_boxed_opaque_existential_1(v56);
            goto LABEL_24;
          }

          if (v16 >= *(v15 + 16))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            return;
          }

          v17 = *(v3 + 80);
          OUTLINED_FUNCTION_70_1();
          v18 = *(v3 + 72);
          (*(v3 + 16))(v13, v15 + v14 + v18 * v16, v0);
          v19 = sub_26618BC80();
          if (v20)
          {
            break;
          }

LABEL_14:
          (*(v3 + 8))(v13, v0);
          ++v16;
        }

        if (v19 == 0x7463416B63697571 && v20 == 0xEF656D614E6E6F69)
        {
        }

        else
        {
          v22 = sub_26618D000();

          if ((v22 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v47 = *v48;
        v47(v49, v13, v0);
        v23 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_71_1();
          OUTLINED_FUNCTION_21_10();
          sub_26612A3F8();
          v23 = v54;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          OUTLINED_FUNCTION_38_2(v25);
          v51 = v28;
          sub_26612A3F8();
          v27 = v51;
          v23 = v54;
        }

        ++v16;
        *(v23 + 16) = v27;
        v51 = v23;
        v47(v23 + v14 + v26 * v18, v49, v0);
      }
    }
  }

  sub_2660BF79C(v58, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v56);
LABEL_24:
  sub_2660BF79C(v57, &qword_28005C0A8, qword_26618FAE0);
  OUTLINED_FUNCTION_7_1();
}

void sub_26613C958()
{
  OUTLINED_FUNCTION_6_0();
  v6 = sub_26618C6B0();
  v7 = OUTLINED_FUNCTION_2_2(v6);
  v164 = v8;
  v165 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v163 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6E0, &qword_266192E10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v166 = &v157 - v15;
  v174 = sub_26618BC90();
  v16 = OUTLINED_FUNCTION_2_2(v174);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_1();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_75_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_76_1();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v157 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_32_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v157 - v33;
  sub_26613ED1C();
  if (*(v35 + 16))
  {
    goto LABEL_73;
  }

  v169 = v30;
  v170 = v4;
  v159 = v5;
  v171 = v2;
  v161 = v35;
  v168 = v3;
  v158 = v23;
  OUTLINED_FUNCTION_18_10();
  v160 = v1;
  v36 = sub_26618BD50();
  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  if (v36)
  {
    v39 = v36;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v40 = *(v39 + 16);
  v172 = v39;
  v173 = v40;
  v167 = (v18 + 32);
  v175 = v18 + 8;
  v176 = v18 + 16;
  v41 = v174;
  while (v173 != v37)
  {
    if (v37 >= *(v39 + 16))
    {
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
      OUTLINED_FUNCTION_2_5();
      goto LABEL_101;
    }

    v42 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v43 = *(v18 + 72);
    v44 = *(v18 + 16);
    OUTLINED_FUNCTION_58_3();
    v45();
    sub_26618BC80();
    if (v46)
    {
      OUTLINED_FUNCTION_45_3();
      v48 = v48 && v47 == 0xE700000000000000;
      if (v48)
      {
      }

      else
      {
        v2 = OUTLINED_FUNCTION_40_5();

        if ((v2 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v50 = v170;
      v162 = *v167;
      v162(v170, v34, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = *(v38 + 16);
        OUTLINED_FUNCTION_21_10();
        sub_26612A3F8();
        v50 = v170;
        v38 = v177;
      }

      v2 = *(v38 + 16);
      v53 = *(v38 + 24);
      v54 = v2 + 1;
      if (v2 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_12_11(v53);
        v56 = v55;
        sub_26612A3F8();
        v54 = v56;
        v50 = v170;
        v38 = v177;
      }

      ++v37;
      *(v38 + 16) = v54;
      v162(v38 + v42 + v2 * v43, v50, v41);
      v39 = v172;
    }

    else
    {
LABEL_14:
      OUTLINED_FUNCTION_73_1();
      v49(v34, v41);
      ++v37;
      v39 = v172;
    }
  }

  v57 = 0;
  v58 = *(v38 + 16);
  v59 = MEMORY[0x277D84F90];
  while (v58 != v57)
  {
    if (v57 >= *(v38 + 16))
    {
      goto LABEL_105;
    }

    v60 = *(v18 + 80);
    OUTLINED_FUNCTION_29_2();
    v61 = *(v18 + 72);
    v62 = *(v18 + 16);
    OUTLINED_FUNCTION_58_3();
    v63();
    v64 = sub_26618BC70();
    v66 = v65;
    (*(v18 + 8))(v0, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = *(v59 + 16);
      OUTLINED_FUNCTION_17_9();
      sub_266129600();
      v59 = v71;
    }

    v68 = *(v59 + 16);
    v67 = *(v59 + 24);
    v2 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      OUTLINED_FUNCTION_38_2(v67);
      sub_266129600();
      v59 = v72;
    }

    *(v59 + 16) = v2;
    v69 = v59 + 16 * v68;
    *(v69 + 32) = v64;
    *(v69 + 40) = v66;
    ++v57;
    v41 = v174;
  }

  if (*(v59 + 16))
  {

    v73 = v59;
LABEL_72:
    v121 = sub_26613C2C0(v73);
    sub_266139E0C(v121);
    goto LABEL_73;
  }

  v74 = 0;
  v75 = MEMORY[0x277D84F90];
LABEL_32:
  v76 = v172;
  v170 = v75;
  while (2)
  {
    if (v173 != v74)
    {
      if (v74 >= *(v76 + 16))
      {
        goto LABEL_106;
      }

      v77 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v0 = *(v18 + 72);
      v78 = *(v18 + 16);
      v79 = v169;
      OUTLINED_FUNCTION_58_3();
      v80();
      sub_26618BC80();
      if (!v81)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_44_2();
      if (v48 && v82 == 0xE700000000000000)
      {

        v79 = v169;
      }

      else
      {
        v2 = OUTLINED_FUNCTION_40_5();

        v79 = v169;
        if ((v2 & 1) == 0)
        {
LABEL_44:
          OUTLINED_FUNCTION_73_1();
          v86(v79, v41);
          ++v74;
          v75 = v170;
          continue;
        }
      }

      v84 = sub_26618BC70();
      v2 = v85;
      OUTLINED_FUNCTION_30_6(v84, v85);
      OUTLINED_FUNCTION_47_5();
      sub_26618CC60();
      OUTLINED_FUNCTION_30_3();

      if (v79)
      {
        v2 = *v167;
        (*v167)(v159, v79, v41);
        v75 = v170;
        v87 = swift_isUniquelyReferenced_nonNull_native();
        v178 = v75;
        if ((v87 & 1) == 0)
        {
          OUTLINED_FUNCTION_71_1();
          OUTLINED_FUNCTION_21_10();
          sub_26612A3F8();
          v75 = v178;
        }

        v89 = *(v75 + 2);
        v88 = *(v75 + 3);
        if (v89 >= v88 >> 1)
        {
          OUTLINED_FUNCTION_38_2(v88);
          sub_26612A3F8();
          v75 = v178;
        }

        ++v74;
        *(v75 + 2) = v89 + 1;
        (v2)(&v75[v77 + v89 * v0], v159, v41);
        goto LABEL_32;
      }

      goto LABEL_44;
    }

    break;
  }

  v0 = 0;
  v90 = *(v75 + 2);
  v91 = MEMORY[0x277D84F90];
  v92 = MEMORY[0x277D84F90];
  while (v90 != v0)
  {
    if (v0 >= *(v75 + 2))
    {
      goto LABEL_107;
    }

    v93 = *(v18 + 80);
    OUTLINED_FUNCTION_29_2();
    v94 = *(v18 + 72);
    v95 = *(v18 + 16);
    v97 = v96;
    OUTLINED_FUNCTION_58_3();
    v98();
    v99 = sub_26618BC70();
    v101 = v100;
    (*(v18 + 8))(v97, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v105 = v92[2];
      OUTLINED_FUNCTION_17_9();
      sub_266129600();
      v92 = v106;
    }

    v103 = v92[2];
    v102 = v92[3];
    v2 = v103 + 1;
    if (v103 >= v102 >> 1)
    {
      OUTLINED_FUNCTION_38_2(v102);
      sub_266129600();
      v92 = v107;
    }

    v92[2] = v2;
    v104 = &v92[2 * v103];
    v104[4] = v99;
    v104[5] = v101;
    ++v0;
    v41 = v174;
    v75 = v170;
  }

  v108 = v92[2];
  if (v108)
  {
    v177 = v91;
    sub_26612A450();
    v109 = v177;
    v90 = v92 + 5;
    do
    {
      v110 = *(v90 - 1);
      v111 = *v90;
      v112 = qword_28005BC78;

      if (v112 != -1)
      {
        OUTLINED_FUNCTION_7_14();
        swift_once();
      }

      v113 = off_28005C6B8;
      if (*(off_28005C6B8 + 2))
      {
        v114 = sub_266129F20(v110, v111);
        if (v115)
        {
          v116 = (v113[7] + 16 * v114);
          v110 = *v116;
          v117 = v116[1];

          v111 = v117;
        }
      }

      OUTLINED_FUNCTION_66_2();
      if (v119)
      {
        OUTLINED_FUNCTION_12_11(v118);
        sub_26612A450();
        v109 = v177;
      }

      *(v109 + 16) = v91;
      v120 = v109 + 16 * v41;
      *(v120 + 32) = v110;
      *(v120 + 40) = v111;
      v90 += 2;
      --v108;
      v41 = v174;
    }

    while (v108);
  }

  else
  {

    v109 = MEMORY[0x277D84F90];
  }

  if (*(v109 + 16))
  {
    v73 = v109;
    goto LABEL_72;
  }

  v0 = sub_26618BB80();
  v122 = 0;
  v123 = *(v0 + 16);
  v2 = 0x8000000266199BA0;
  v174 = MEMORY[0x277D84F90];
  while (v123 != v122)
  {
    if (v122 >= *(v0 + 16))
    {
      goto LABEL_108;
    }

    v124 = *(v18 + 80);
    OUTLINED_FUNCTION_70_1();
    v125 = *(v18 + 72);
    v126 = *(v18 + 16);
    OUTLINED_FUNCTION_58_3();
    v127();
    sub_26618BC80();
    if (!v128)
    {
LABEL_90:
      OUTLINED_FUNCTION_73_1();
      v135(v168, v41);
      ++v122;
      continue;
    }

    OUTLINED_FUNCTION_45_3();
    if (v48 && v129 == 0xE700000000000000)
    {
    }

    else
    {
      v131 = OUTLINED_FUNCTION_40_5();

      if ((v131 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    if (sub_26618BC30() == 0xD000000000000016 && 0x8000000266199BA0 == v132)
    {
    }

    else
    {
      v134 = sub_26618D000();

      if ((v134 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    v136 = v158;
    v173 = *v167;
    (v173)(v158, v168, v41);
    v137 = v174;
    v138 = swift_isUniquelyReferenced_nonNull_native();
    v139 = v137;
    v177 = v137;
    if ((v138 & 1) == 0)
    {
      v140 = *(v137 + 16);
      OUTLINED_FUNCTION_21_10();
      sub_26612A3F8();
      v136 = v158;
      v139 = v177;
    }

    v142 = *(v139 + 16);
    v141 = *(v139 + 24);
    v143 = v142 + 1;
    if (v142 >= v141 >> 1)
    {
      OUTLINED_FUNCTION_12_11(v141);
      v174 = v144;
      sub_26612A3F8();
      v143 = v174;
      v136 = v158;
      v139 = v177;
    }

    ++v122;
    *(v139 + 16) = v143;
    v174 = v139;
    (v173)(v90 + v139 + v142 * v125, v136, v41);
  }

  v145 = v166;
  sub_266139CB8(v174, MEMORY[0x277D5E4F0], v166);

  OUTLINED_FUNCTION_22_6(v145, 1, v41);
  if (v48)
  {
    sub_2660BF79C(v145, &qword_28005C6E0, &qword_266192E10);
    goto LABEL_73;
  }

  v2 = sub_26618BC70();
  v0 = v146;
  OUTLINED_FUNCTION_73_1();
  v147(v145, v41);
  if (qword_2814B2C38 != -1)
  {
    goto LABEL_109;
  }

LABEL_101:
  v148 = v165;
  v149 = __swift_project_value_buffer(v165, qword_2814B4A80);
  v151 = v163;
  v150 = v164;
  (*(v164 + 16))(v163, v149, v148);

  v152 = sub_26618C690();
  v153 = sub_26618CA90();

  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v177 = v155;
    *v154 = 136315138;
    *(v154 + 4) = sub_266103A98(v2, v0, &v177);
    _os_log_impl(&dword_2660B7000, v152, v153, "AppLaunch+UsoTask.appIdentifiers returning the top pegasus result: %s", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v155);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  (*(v150 + 8))(v151, v148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_26618E190;
  *(v156 + 32) = v2;
  *(v156 + 40) = v0;
LABEL_73:
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26613D5E4()
{
  v0 = OUTLINED_FUNCTION_80_0();
  v6 = OUTLINED_FUNCTION_65_3(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5, v13, v15);
  if (!v18)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_61_1(v6, v7, &qword_28005C0A8, qword_26618FAE0, v8, v9);
  sub_26618BE40();
  if (!OUTLINED_FUNCTION_6_13())
  {
    sub_26618BDD0();
    if (OUTLINED_FUNCTION_4_16() || (sub_26618BF80(), OUTLINED_FUNCTION_4_16()) || (sub_26618BE00(), OUTLINED_FUNCTION_4_16()) || (sub_26618BDE0(), OUTLINED_FUNCTION_4_16()) || (sub_26618BF90(), OUTLINED_FUNCTION_4_16()) || (sub_26618BEA0(), OUTLINED_FUNCTION_4_16()))
    {
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_16:
    sub_2660BF79C(v19, &qword_28005C0A8, qword_26618FAE0);
    v11 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_37_3();
  sub_26618BAF0();
LABEL_11:

  if (v14)
  {
    sub_26613D780();
    v11 = v10;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  sub_2660BF79C(v19, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_17:
  sub_2660BF79C(v17, &qword_28005C0A8, qword_26618FAE0);
  return v11;
}

void sub_26613D780()
{
  OUTLINED_FUNCTION_6_0();
  v223 = sub_26618BC90();
  v2 = OUTLINED_FUNCTION_2_2(v223);
  v215 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v7);
  v203 = &v196 - v8;
  v229 = sub_26618BBC0();
  v9 = OUTLINED_FUNCTION_2_2(v229);
  v224 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_5();
  v214 = v14;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v15);
  v228 = (&v196 - v16);
  v17 = sub_26618BBE0();
  v18 = OUTLINED_FUNCTION_2_2(v17);
  v225 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v206 = v23 - v22;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6F0, &qword_266192DA8);
  v24 = OUTLINED_FUNCTION_16(v221);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v196 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6F8, &qword_266192DB0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_32_3();
  MEMORY[0x28223BE20](v32);
  v34 = &v196 - v33;
  v35 = sub_26618BC20();
  v36 = OUTLINED_FUNCTION_2_2(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v42);
  v227 = &v196 - v43;
  OUTLINED_FUNCTION_18_10();
  v198 = v0;
  v44 = sub_26618BD40();
  v45 = 0;
  v202 = MEMORY[0x277D84F90];
  if (!v44)
  {
    v44 = MEMORY[0x277D84F90];
  }

  v222 = *(v44 + 16);
  v226 = v38 + 16;
  v219 = *MEMORY[0x277D5E488];
  v218 = (v225 + 13);
  v205 = (v225 + 4);
  v209 = (v225 + 1);
  v225 = (v38 + 8);
  v200 = (v38 + 32);
  v212 = v34;
  v210 = v38;
  v220 = v44;
  v204 = v35;
  while (v222 != v45)
  {
    if (v45 >= *(v44 + 16))
    {
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
LABEL_133:
      __break(1u);
      return;
    }

    v46 = *(v38 + 80);
    OUTLINED_FUNCTION_29_2();
    v217 = v47;
    v216 = *(v38 + 72);
    (*(v38 + 16))(v227, v48 + v47 + v216 * v45, v35);
    sub_26618BC00();
    (*v218)(v1, v219, v17);
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v17);
    v49 = *(v221 + 48);
    sub_266142534(v34, v28, &qword_28005C6F8, &qword_266192DB0);
    sub_266142534(v1, &v28[v49], &qword_28005C6F8, &qword_266192DB0);
    OUTLINED_FUNCTION_2_17(v28);
    if (v50)
    {
      OUTLINED_FUNCTION_50_3(v1);
      OUTLINED_FUNCTION_50_3(v34);
      OUTLINED_FUNCTION_2_17(&v28[v49]);
      if (!v50)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_50_3(v28);
      goto LABEL_17;
    }

    sub_266142534(v28, v211, &qword_28005C6F8, &qword_266192DB0);
    OUTLINED_FUNCTION_2_17(&v28[v49]);
    if (v50)
    {
      OUTLINED_FUNCTION_50_3(v1);
      v34 = v212;
      OUTLINED_FUNCTION_50_3(v212);
      v51 = *v209;
      v52 = OUTLINED_FUNCTION_42_6();
      v53(v52);
      v38 = v210;
LABEL_14:
      sub_2660BF79C(v28, &qword_28005C6F0, &qword_266192DA8);
      goto LABEL_16;
    }

    v54 = v206;
    (*v205)(v206, &v28[v49], v17);
    sub_266142A78(&qword_28005C700, MEMORY[0x277D5E490]);
    LODWORD(v208) = sub_26618C890();
    v55 = *v209;
    (*v209)(v54, v17);
    OUTLINED_FUNCTION_50_3(v1);
    v56 = v212;
    OUTLINED_FUNCTION_50_3(v212);
    v57 = OUTLINED_FUNCTION_42_6();
    v55(v57);
    v35 = v204;
    v34 = v56;
    OUTLINED_FUNCTION_50_3(v28);
    v38 = v210;
    if (v208)
    {
LABEL_17:
      v58 = *v200;
      (*v200)(v201, v227, v35);
      v59 = v202;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v230 = v59;
      v208 = v58;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_71_1();
        OUTLINED_FUNCTION_21_10();
        sub_26612A4C8();
        v59 = v230;
      }

      v62 = *(v59 + 16);
      v61 = *(v59 + 24);
      v63 = v62 + 1;
      v34 = v212;
      if (v62 >= v61 >> 1)
      {
        OUTLINED_FUNCTION_12_11(v61);
        v65 = v64;
        v67 = v66;
        sub_26612A4C8();
        v63 = v65;
        v62 = v67;
        v34 = v212;
        v59 = v230;
      }

      ++v45;
      *(v59 + 16) = v63;
      v202 = v59;
      v208(v59 + v217 + v62 * v216, v201, v35);
      v44 = v220;
    }

    else
    {
LABEL_16:
      (*v225)(v227, v35);
      ++v45;
      v44 = v220;
    }
  }

  v68 = v38;

  v69 = *(v202 + 16);
  if (v69)
  {
    v70 = *(v68 + 80);
    OUTLINED_FUNCTION_29_2();
    v73 = v71 + v72;
    v74 = *(v68 + 72);
    v75 = *(v68 + 16);
    v76 = MEMORY[0x277D84F90];
    do
    {
      v77 = v213;
      v75(v213, v73, v35);
      v78 = sub_26618BBF0();
      (*v225)(v77, v35);
      v79 = *(v78 + 16);
      v80 = *(v76 + 16);
      v81 = v80 + v79;
      if (__OFADD__(v80, v79))
      {
        goto LABEL_128;
      }

      v82 = swift_isUniquelyReferenced_nonNull_native();
      if (!v82 || v81 > *(v76 + 24) >> 1)
      {
        if (v80 <= v81)
        {
          v83 = v80 + v79;
        }

        else
        {
          v83 = v80;
        }

        sub_2661296CC(v82, v83, 1, v76);
        v76 = v84;
      }

      if (*(v78 + 16))
      {
        if ((*(v76 + 24) >> 1) - *(v76 + 16) < v79)
        {
          goto LABEL_130;
        }

        v85 = (*(v224 + 80) + 32) & ~*(v224 + 80);
        v86 = *(v224 + 72);
        swift_arrayInitWithCopy();

        if (v79)
        {
          v87 = *(v76 + 16);
          v88 = __OFADD__(v87, v79);
          v89 = v87 + v79;
          if (v88)
          {
            goto LABEL_133;
          }

          *(v76 + 16) = v89;
        }
      }

      else
      {

        if (v79)
        {
          goto LABEL_129;
        }
      }

      v73 += v74;
      v69 = (v69 - 1);
    }

    while (v69);
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
  }

  v90 = 0;
  v91 = *(v76 + 16);
  v227 = (v224 + 16);
  v225 = (v224 + 32);
  v92 = (v224 + 8);
  v93 = 0xE700000000000000;
  v226 = MEMORY[0x277D84F90];
  while (v91 != v90)
  {
    if (v90 >= *(v76 + 16))
    {
      goto LABEL_127;
    }

    v94 = *(v224 + 80);
    OUTLINED_FUNCTION_70_1();
    v96 = *(v95 + 72);
    (*(v95 + 16))(v228, v76 + v96 * v90, v229);
    if (sub_26618BBB0() == 0x656D614E707061 && v97 == 0xE700000000000000)
    {
    }

    else
    {
      v99 = sub_26618D000();

      if ((v99 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v100 = sub_26618BBA0();
    if (!v101 || (OUTLINED_FUNCTION_30_6(v100, v101), OUTLINED_FUNCTION_47_5(), v102 = sub_26618CC60(), , (v102 & 1) == 0))
    {
LABEL_52:
      (*v92)(v228, v229);
      ++v90;
      continue;
    }

    v103 = *v225;
    (*v225)(v199, v228, v229);
    v104 = v226;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v231 = v104;
    v222 = v103;
    if ((v105 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_1();
      OUTLINED_FUNCTION_21_10();
      sub_26612A470();
      v104 = v231;
    }

    v107 = *(v104 + 16);
    v106 = *(v104 + 24);
    v108 = v107 + 1;
    if (v107 >= v106 >> 1)
    {
      OUTLINED_FUNCTION_38_2(v106);
      v226 = v109;
      sub_26612A470();
      v108 = v226;
      v104 = v231;
    }

    ++v90;
    *(v104 + 16) = v108;
    v226 = v104;
    v222(v104 + v107 * v96, v199, v229);
  }

  v110 = *(v226 + 16);
  if (v110)
  {
    v111 = *(v224 + 80);
    OUTLINED_FUNCTION_29_2();
    v114 = v112 + v113;
    v69 = *(v115 + 72);
    v93 = *(v115 + 16);
    v116 = MEMORY[0x277D84F90];
    do
    {
      v117 = v214;
      v118 = OUTLINED_FUNCTION_54_3();
      v119 = v229;
      (v93)(v118);
      v120 = sub_26618BBA0();
      v122 = v121;
      (*v92)(v117, v119);
      if (v122)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = v116[2];
          OUTLINED_FUNCTION_17_9();
          sub_266129600();
          v116 = v127;
        }

        v124 = v116[2];
        v123 = v116[3];
        if (v124 >= v123 >> 1)
        {
          OUTLINED_FUNCTION_38_2(v123);
          sub_266129600();
          v116 = v128;
        }

        v116[2] = v124 + 1;
        v125 = &v116[2 * v124];
        v125[4] = v120;
        v125[5] = v122;
      }

      v114 += v69;
      --v110;
    }

    while (v110);
  }

  else
  {

    v116 = MEMORY[0x277D84F90];
  }

  v129 = v116[2];
  if (v129)
  {
    v230 = MEMORY[0x277D84F90];
    sub_26612A450();
    v130 = v230;
    v69 = v116 + 5;
    do
    {
      v131 = *(v69 - 1);
      v132 = *v69;
      v133 = qword_28005BC78;

      if (v133 != -1)
      {
        OUTLINED_FUNCTION_7_14();
        swift_once();
      }

      v134 = off_28005C6B8;
      if (*(off_28005C6B8 + 2))
      {
        v135 = sub_266129F20(v131, v132);
        if (v136)
        {
          v137 = (v134[7] + 16 * v135);
          v131 = *v137;
          v138 = v137[1];

          v132 = v138;
        }
      }

      OUTLINED_FUNCTION_66_2();
      if (v140)
      {
        OUTLINED_FUNCTION_12_11(v139);
        sub_26612A450();
        v130 = v230;
      }

      *(v130 + 16) = v92;
      v141 = v130 + 16 * v93;
      *(v141 + 32) = v131;
      *(v141 + 40) = v132;
      v69 += 2;
      --v129;
    }

    while (v129);
  }

  else
  {

    v130 = MEMORY[0x277D84F90];
  }

  if (*(v130 + 16))
  {
    goto LABEL_125;
  }

  OUTLINED_FUNCTION_18_10();
  v142 = sub_26618BD50();
  v143 = 0;
  v144 = MEMORY[0x277D84F90];
  if (v142)
  {
    v145 = v142;
  }

  else
  {
    v145 = MEMORY[0x277D84F90];
  }

  v146 = *(v145 + 16);
  v228 = (v215 + 32);
  v229 = v215 + 16;
  v147 = (v215 + 8);
  v148 = v203;
LABEL_86:
  v149 = v144;
  while (2)
  {
    if (v146 != v143)
    {
      if (v143 >= *(v145 + 16))
      {
        goto LABEL_131;
      }

      v150 = *(v215 + 80);
      OUTLINED_FUNCTION_70_1();
      v152 = *(v151 + 72);
      (*(v151 + 16))(v148, v69 + v145 + v152 * v143, v223);
      v153 = v148;
      sub_26618BC80();
      if (!v154)
      {
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_44_2();
      if (v50)
      {
        v156 = v155 == 0xE700000000000000;
      }

      else
      {
        v156 = 0;
      }

      if (v156)
      {

        v153 = v203;
      }

      else
      {
        v157 = OUTLINED_FUNCTION_40_5();

        v153 = v203;
        if ((v157 & 1) == 0)
        {
LABEL_98:
          (*v147)(v153, v223);
          ++v143;
          v148 = v153;
          v144 = v149;
          continue;
        }
      }

      v158 = sub_26618BC70();
      OUTLINED_FUNCTION_30_6(v158, v159);
      OUTLINED_FUNCTION_47_5();
      v160 = sub_26618CC60();

      if (v160)
      {
        v227 = *v228;
        (v227)(v197, v153, v223);
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v231 = v149;
        if (v161)
        {
          v148 = v153;
          v144 = v149;
        }

        else
        {
          v162 = *(v149 + 16);
          OUTLINED_FUNCTION_21_10();
          sub_26612A3F8();
          v148 = v203;
          v144 = v231;
        }

        v164 = *(v144 + 16);
        v163 = *(v144 + 24);
        if (v164 >= v163 >> 1)
        {
          OUTLINED_FUNCTION_38_2(v163);
          sub_26612A3F8();
          v148 = v203;
          v144 = v231;
        }

        ++v143;
        *(v144 + 16) = v164 + 1;
        (v227)(v69 + v144 + v164 * v152, v197, v223);
        goto LABEL_86;
      }

      goto LABEL_98;
    }

    break;
  }

  v165 = 0;
  v166 = *(v144 + 16);
  v167 = MEMORY[0x277D84F90];
  while (v166 != v165)
  {
    if (v165 >= *(v144 + 16))
    {
      goto LABEL_132;
    }

    v168 = v215;
    v169 = *(v215 + 80);
    OUTLINED_FUNCTION_29_2();
    v171 = v207;
    v172 = v223;
    (*(v168 + 16))(v207, v144 + v170 + *(v168 + 72) * v165, v223);
    v173 = sub_26618BC70();
    v175 = v174;
    (*(v168 + 8))(v171, v172);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v179 = v167[2];
      OUTLINED_FUNCTION_17_9();
      sub_266129600();
      v167 = v180;
    }

    v177 = v167[2];
    v176 = v167[3];
    if (v177 >= v176 >> 1)
    {
      OUTLINED_FUNCTION_38_2(v176);
      sub_266129600();
      v167 = v181;
    }

    v167[2] = v177 + 1;
    v178 = &v167[2 * v177];
    v178[4] = v173;
    v178[5] = v175;
    ++v165;
    v144 = v149;
  }

  v182 = v167[2];
  if (v182)
  {
    v230 = MEMORY[0x277D84F90];
    sub_26612A450();
    v130 = v230;
    v183 = v167 + 5;
    do
    {
      v184 = *(v183 - 1);
      v185 = *v183;
      v186 = qword_28005BC78;

      if (v186 != -1)
      {
        OUTLINED_FUNCTION_7_14();
        swift_once();
      }

      v187 = off_28005C6B8;
      if (*(off_28005C6B8 + 2))
      {
        v188 = sub_266129F20(v184, v185);
        if (v189)
        {
          v190 = (v187[7] + 16 * v188);
          v184 = *v190;
          v191 = v190[1];

          v185 = v191;
        }
      }

      v230 = v130;
      v193 = *(v130 + 16);
      v192 = *(v130 + 24);
      if (v193 >= v192 >> 1)
      {
        OUTLINED_FUNCTION_12_11(v192);
        sub_26612A450();
        v130 = v230;
      }

      *(v130 + 16) = v193 + 1;
      v194 = v130 + 16 * v193;
      *(v194 + 32) = v184;
      *(v194 + 40) = v185;
      v183 += 2;
      --v182;
    }

    while (v182);
  }

  else
  {

    v130 = MEMORY[0x277D84F90];
  }

LABEL_125:
  v195 = sub_26613C2C0(v130);
  sub_266139E0C(v195);
  OUTLINED_FUNCTION_7_1();
}