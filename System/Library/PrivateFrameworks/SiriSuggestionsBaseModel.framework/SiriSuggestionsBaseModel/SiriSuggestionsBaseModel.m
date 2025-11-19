uint64_t sub_2313BAED0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2313BAF48()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return OUTLINED_FUNCTION_30();
}

uint64_t sub_2313BAF7C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2313BB044()
{
  v1 = sub_2313DACBC();
  OUTLINED_FUNCTION_27_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2313BB0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2313DAC6C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2313BB170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2313DAC6C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2313BB234()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2313BBD50()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2313BBD84()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2313BBE2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2313BBE84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2313BBEC4(uint64_t *a1, void *a2)
{
  v4 = sub_2313DACFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC28, &qword_2313DB8E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v28 - v14);
  v16 = *a1;
  sub_2313DABEC();
  v17 = sub_2313CCF74();
  if (v17 == 163)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D60E90], v4);
    v18 = sub_2313DACEC();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    *v15 = v18;
    v15[1] = v20;
    v21 = *MEMORY[0x277D61238];
    v22 = sub_2313DAF5C();
    OUTLINED_FUNCTION_4(v22);
    (*(v23 + 104))(v15, v21, v22);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  }

  else
  {
    v24 = v17;
    v25 = a2[4];
    __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
    v26 = sub_2313DAD0C();
    sub_2313CD3F4(v26, v24, v15);

    v22 = sub_2313DAF5C();
  }

  __swift_storeEnumTagSinglePayload(v13, 1, 1, v22);
  return sub_2313DAF8C();
}

uint64_t sub_2313BC158()
{
  sub_2313DADBC();
  sub_2313DADAC();
  v0 = sub_2313DAD9C();

  byte_27DD4BF28 = v0 & 1;
  return result;
}

uint64_t static BaseSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_2313DB10C();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2313BC288, 0, 0);
}

uint64_t sub_2313BC288()
{
  if (qword_27DD4BBF0 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = qword_27DD4C208;
  v0[5] = sub_2313DAC0C();
  v0[6] = sub_2313BE9C0(&qword_27DD4BC08, 255, MEMORY[0x277D60A60]);
  v0[2] = v2;

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_2313BC40C;
  v5 = v0[23];

  return v7(v0 + 2);
}

uint64_t sub_2313BC40C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v5 = *v1;
  *(v2 + 248) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_2313BC514, 0, 0);
}

uint64_t sub_2313BC514()
{
  v64 = v1;
  v2 = *(v1 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC10, &qword_2313DB7E8);
  v3 = sub_2313DAF3C();
  if (v3)
  {
    sub_2313BCCB8(v3, v1 + 96);

    if (*(v1 + 120))
    {
      v4 = *(v1 + 200);
      sub_2313BAED0((v1 + 96), v1 + 56);
      v5 = (v4 + 8);
      v6 = 0x20u;
      v61 = (v4 + 8);
      while (1)
      {
        v7 = byte_284605508[v6];
        switch(byte_284605508[v6])
        {
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 7u:
          case 0xCu:
          case 0xEu:
          case 0xFu:
          case 0x10u:
          case 0x11u:
          case 0x12u:
          case 0x13u:
          case 0x14u:
          case 0x15u:
          case 0x17u:
          case 0x18u:
          case 0x19u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
          case 0x20u:
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
          case 0x27u:
          case 0x28u:
          case 0x29u:
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x2Du:
          case 0x2Eu:
          case 0x2Fu:
          case 0x32u:
          case 0x33u:
          case 0x35u:
          case 0x36u:
          case 0x37u:
          case 0x3Bu:
          case 0x3Cu:
          case 0x40u:
          case 0x44u:
          case 0x45u:
          case 0x46u:
          case 0x47u:
          case 0x48u:
          case 0x49u:
          case 0x4Au:
          case 0x4Bu:
          case 0x4Cu:
          case 0x4Du:
          case 0x4Eu:
          case 0x4Fu:
          case 0x50u:
          case 0x51u:
          case 0x52u:
          case 0x53u:
          case 0x54u:
          case 0x55u:
          case 0x57u:
          case 0x58u:
          case 0x59u:
          case 0x5Au:
          case 0x5Bu:
          case 0x5Cu:
          case 0x5Du:
          case 0x5Eu:
          case 0x5Fu:
          case 0x60u:
          case 0x61u:
          case 0x62u:
          case 0x63u:
          case 0x64u:
          case 0x65u:
          case 0x6Au:
          case 0x6Bu:
          case 0x6Cu:
          case 0x6Du:
          case 0x6Eu:
          case 0x6Fu:
          case 0x70u:
          case 0x72u:
          case 0x73u:
          case 0x74u:
          case 0x75u:
          case 0x76u:
          case 0x7Au:
          case 0x7Bu:
          case 0x7Cu:
          case 0x7Du:
          case 0x7Eu:
          case 0x7Fu:
          case 0x80u:
          case 0x81u:
          case 0x94u:
          case 0xA0u:
            if (qword_27DD4BA90 != -1)
            {
              swift_once();
            }

            if (byte_27DD4BF28)
            {
              goto LABEL_8;
            }

            v9 = *(v1 + 232);
            sub_2313DAFAC();
            v10 = sub_2313DB0FC();
            v11 = sub_2313DB2EC();
            v12 = OUTLINED_FUNCTION_2(v11);
            v13 = *(v1 + 232);
            v14 = *(v1 + 192);
            if (v12)
            {
              v15 = swift_slowAlloc();
              v16 = swift_slowAlloc();
              v62 = v16;
              *v15 = 136315138;
              v17 = sub_2313CDA6C(v7);
              v19 = sub_2313BE1B0(v17, v18, &v62);

              *(v15 + 4) = v19;
              _os_log_impl(&dword_2313B9000, v10, v0, "BaseSuggestionsOwnerDefinitionFactory:: AppIntent suggestion '%s' not added due to feature flag 'handCraftedAppIntentSuggestions' is off", v15, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v16);
              v5 = v61;
              OUTLINED_FUNCTION_1();
              OUTLINED_FUNCTION_1();
            }

            goto LABEL_34;
          default:
LABEL_8:
            v0 = *(v1 + 80);
            __swift_project_boxed_opaque_existential_1Tm((v1 + 56), v0);
            sub_2313CE638(v7);
            v8 = sub_2313DB05C();

            if (v8)
            {
              switch(v7)
              {
                case 0x4Du:
                case 0x4Fu:
                case 0x56u:
                case 0x64u:
                case 0x66u:
                case 0x67u:
                case 0x68u:
                case 0x69u:
                case 0x77u:
                case 0x78u:
                case 0x79u:
                case 0x80u:
                case 0x82u:
                case 0x83u:
                case 0x87u:
                case 0x88u:
                case 0x89u:
                case 0x8Au:
                case 0x8Bu:
                case 0x8Eu:
                case 0x8Fu:
                case 0x90u:
                case 0x91u:
                case 0x92u:
                case 0x93u:
                case 0x96u:
                case 0x97u:
                case 0x98u:
                case 0x99u:
                case 0x9Au:
                case 0x9Bu:
                case 0x9Du:
                case 0x9Eu:
                case 0x9Fu:
                case 0xA2u:
                  goto LABEL_17;
                case 0x4Eu:
                case 0x50u:
                case 0x51u:
                case 0x52u:
                case 0x53u:
                case 0x54u:
                case 0x55u:
                case 0x57u:
                case 0x58u:
                case 0x59u:
                case 0x5Au:
                case 0x5Bu:
                case 0x5Cu:
                case 0x5Du:
                case 0x5Eu:
                case 0x5Fu:
                case 0x60u:
                case 0x61u:
                case 0x62u:
                case 0x63u:
                case 0x65u:
                case 0x6Au:
                case 0x6Bu:
                case 0x6Cu:
                case 0x6Du:
                case 0x6Eu:
                case 0x6Fu:
                case 0x70u:
                case 0x71u:
                case 0x72u:
                case 0x73u:
                case 0x74u:
                case 0x75u:
                case 0x76u:
                case 0x7Au:
                case 0x7Bu:
                case 0x7Cu:
                case 0x7Du:
                case 0x7Eu:
                case 0x7Fu:
                case 0x81u:
                case 0x84u:
                case 0x85u:
                case 0x86u:
                case 0x8Cu:
                case 0x8Du:
                case 0x94u:
                case 0x95u:
                case 0x9Cu:
                case 0xA0u:
                case 0xA1u:
                  goto LABEL_32;
                default:
                  if (v7 <= 0x3F && ((1 << v7) & 0xC612000000000305) != 0 || v7 == 65 || v7 == 69)
                  {
LABEL_17:
                    sub_2313CDA6C(v7);
                    if (!(!v31 & v30))
                    {
                      v0 = 0x80000002313DDA00;
                      switch(v7)
                      {
                        case 'H':
                        case 'M':
                          goto LABEL_26;
                        case 'I':
                        case 'J':
                        case 'K':
                          goto LABEL_28;
                        case 'L':
                          goto LABEL_29;
                        case 'N':
                          goto LABEL_27;
                        default:
                          JUMPOUT(0);
                      }
                    }

                    if (v7 - 119 >= 2)
                    {
                      if (v7 == 63 || v7 == 128)
                      {
LABEL_26:
                        OUTLINED_FUNCTION_3();
                        v0 = 0x80000002313DDA30;
                      }

                      else if (v7 == 129)
                      {
LABEL_27:
                        OUTLINED_FUNCTION_3();
                        v0 = 0x80000002313DD9D0;
                      }

                      else
                      {
LABEL_28:
                        v62 = 0;
                        v63 = 0xE000000000000000;
                        sub_2313DB34C();

                        OUTLINED_FUNCTION_3();
                        v62 = v32;
                        v63 = 0x80000002313DD980;
                        v33 = sub_2313CDA6C(v7);
                        MEMORY[0x23192C330](v33);

                        LOBYTE(v0) = v63;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_3();
                      v0 = 0x80000002313DD9A0;
                    }

LABEL_29:
                    v34 = *(v1 + 248);
                    *(swift_task_alloc() + 16) = v7;
                    sub_2313DAF0C();

                    goto LABEL_35;
                  }

LABEL_32:
                  v35 = *(v1 + 216);
                  sub_2313DAFAC();
                  v10 = sub_2313DB0FC();
                  v36 = sub_2313DB2EC();
                  v37 = OUTLINED_FUNCTION_2(v36);
                  v13 = *(v1 + 216);
                  v14 = *(v1 + 192);
                  if (!v37)
                  {
                    goto LABEL_34;
                  }

                  v60 = *(v1 + 216);
                  v38 = swift_slowAlloc();
                  v39 = swift_slowAlloc();
                  v62 = v39;
                  *v38 = 136315138;
                  v40 = sub_2313CDA6C(v7);
                  v42 = sub_2313BE1B0(v40, v41, &v62);

                  *(v38 + 4) = v42;
                  v5 = v61;
                  _os_log_impl(&dword_2313B9000, v10, v0, "BaseSuggestionsOwnerDefinitionFactory:: '%s' not added due to 'addToSuggestionPool' is false", v38, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v39);
                  OUTLINED_FUNCTION_1();
                  break;
              }

              goto LABEL_14;
            }

            v20 = *(v1 + 224);
            sub_2313DAFAC();
            v10 = sub_2313DB0FC();
            v21 = sub_2313DB2EC();
            v22 = OUTLINED_FUNCTION_2(v21);
            v13 = *(v1 + 224);
            v14 = *(v1 + 192);
            if (v22)
            {
              v23 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *v23 = 136315394;
              v24 = sub_2313CDA6C(v7);
              v60 = v13;
              v26 = sub_2313BE1B0(v24, v25, &v62);

              *(v23 + 4) = v26;
              *(v23 + 12) = 2080;
              v27 = sub_2313CE638(v7);
              v29 = sub_2313BE1B0(v27, v28, &v62);

              *(v23 + 14) = v29;
              _os_log_impl(&dword_2313B9000, v10, v0, "BaseSuggestionsOwnerDefinitionFactory:: '%s' not added due to related app '%s' is not installed", v23, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_1();
              v5 = v61;
LABEL_14:
              OUTLINED_FUNCTION_1();

              (*v5)(v60, v14);
              goto LABEL_35;
            }

LABEL_34:

            (*v5)(v13, v14);
LABEL_35:
            if (++v6 == 195)
            {
              v43 = *(v1 + 248);
              sub_2313DAF2C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC20, &unk_2313DB7F8);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_2313DB7C0;
              sub_2313BAED0((v1 + 136), v44 + 32);

              __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
              goto LABEL_41;
            }

            break;
        }
      }
    }
  }

  else
  {
    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
  }

  v45 = *(v1 + 208);
  sub_2313BEA08(v1 + 96, &qword_27DD4BC18, &qword_2313DB7F0);
  sub_2313DAF9C();
  v46 = sub_2313DB0FC();
  v47 = sub_2313DB30C();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v1 + 248);
  v51 = *(v1 + 200);
  v50 = *(v1 + 208);
  v52 = *(v1 + 192);
  if (v48)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_2313B9000, v46, v47, "BaseSuggestionsOwnerDefinitionFactory: No appUtils instance in the lifecycle container.\nSo we cannot check if an app is installed before showing BaseSuggestions. Not building any BaseSuggestions", v53, 2u);
    OUTLINED_FUNCTION_1();
  }

  (*(v51 + 8))(v50, v52);

  v44 = MEMORY[0x277D84F90];
LABEL_41:
  v55 = *(v1 + 224);
  v54 = *(v1 + 232);
  v57 = *(v1 + 208);
  v56 = *(v1 + 216);

  v58 = *(v1 + 8);

  return v58(v44);
}

double sub_2313BCCB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2313BEB84(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2313BCD20@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    OUTLINED_FUNCTION_4(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v7);
}

uint64_t sub_2313BCDC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC30, &qword_2313DB8E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = (v94 - v6);
  v113 = sub_2313DAE4C();
  v7 = *(v113 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v113);
  v97 = (v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC38, &qword_2313DB8F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v115 = v94 - v12;
  v114 = type metadata accessor for BaseModelSignals.SignalWithFilter();
  v13 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v112 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 40);
  v117 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1Tm(a1, v117);
  sub_2313CE730(a2);
  v123 = v117;
  v124 = v15;
  __swift_allocate_boxed_opaque_existential_2Tm(&v122);
  sub_2313DAE9C();

  v16 = v123;
  v17 = __swift_project_boxed_opaque_existential_1Tm(&v122, v123);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313CF4B4(a2);
  sub_2313DAE8C();

  (*(v18 + 8))(v21, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  sub_2313CF704(a2, &v119);
  if (v120)
  {
    sub_2313BAED0(&v119, &v122);
    v22 = *(a1 + 24);
    v23 = *(a1 + 40);
    v24 = __swift_project_boxed_opaque_existential_1Tm(a1, v22);
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    v28 = v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2313DAE5C();
    (*(v25 + 8))(v28, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  }

  else
  {
    sub_2313BEA08(&v119, &qword_27DD4BC40, &qword_2313DB8F8);
  }

  v29 = sub_2313CFCBC(a2);
  v30 = *(v29 + 16);
  if (v30)
  {
    v95 = a2;
    v94[1] = v29;
    v31 = v29 + 32;
    v110 = (v7 + 104);
    v96 = (v7 + 8);
    v109 = *MEMORY[0x277D60B78];
    v108 = *MEMORY[0x277D60B98];
    v107 = *MEMORY[0x277D61060];
    v106 = xmmword_2313DB7C0;
    v105 = xmmword_2313DB7D0;
    v111 = a1;
    v32 = v115;
    v33 = v114;
    do
    {
      *&v117 = v30;
      sub_2313BEB84(v31, &v122);
      sub_2313BEB84(&v122, &v119);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC48, &qword_2313DB900);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
        v34 = v112;
        sub_2313BE850(v32, v112);
        v35 = *(a1 + 24);
        v101 = v35;
        v103 = *(a1 + 32);
        v102 = __swift_project_boxed_opaque_existential_1Tm(a1, v35);
        v116 = v94;
        v104 = *(v35 - 8);
        v36 = *(v104 + 64);
        MEMORY[0x28223BE20](v102);
        v100 = v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC50, &qword_2313DB908);
        v38 = sub_2313DAC6C();
        v39 = *(v38 - 8);
        v40 = *(v39 + 72);
        v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = v106;
        v43 = v34;
        (*(v39 + 16))(v42 + v41, v34, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
        v44 = sub_2313DAC4C();
        v45 = *(v44 - 8);
        v46 = *(v45 + 72);
        v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = v105;
        v49 = *(v45 + 104);
        v49(v48 + v47, v109, v44);
        v49(v48 + v47 + v46, v108, v44);
        v50 = v98;
        *v98 = v48;
        v51 = v113;
        (*v110)(v50, v107, v113);
        __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
        v52 = (v43 + *(v33 + 20));
        v53 = v52[1];
        v99 = *v52;
        *&v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC70, &qword_2313DB920);
        *(&v120 + 1) = sub_2313BE8B4();
        __swift_allocate_boxed_opaque_existential_2Tm(&v119);
        sub_2313DACBC();
        v54 = MEMORY[0x277D60CF0];
        sub_2313BE9C0(&qword_27DD4BC80, 255, MEMORY[0x277D60CF0]);
        sub_2313BE9C0(&qword_27DD4BC88, 255, v54);
        sub_2313BE9C0(&qword_27DD4BC90, 255, v54);
        sub_2313BE9C0(&qword_27DD4BC98, 255, v54);

        sub_2313DAC1C();
        v55 = v100;
        v56 = v101;
        sub_2313DAB0C();

        sub_2313BEA08(v50, &qword_27DD4BC30, &qword_2313DB8E8);
        (*(v104 + 8))(v55, v56);
        sub_2313BEA64(v112);
        __swift_destroy_boxed_opaque_existential_1Tm(&v119);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
        sub_2313BEA08(v32, &qword_27DD4BC38, &qword_2313DB8F0);
        v57 = *(a1 + 24);
        v103 = *(a1 + 32);
        v102 = __swift_project_boxed_opaque_existential_1Tm(a1, v57);
        v116 = v94;
        v104 = *(v57 - 8);
        v58 = *(v104 + 64);
        MEMORY[0x28223BE20](v102);
        v60 = v94 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC50, &qword_2313DB908);
        v61 = *(sub_2313DAC6C() - 8);
        v62 = *(v61 + 72);
        v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        *(swift_allocObject() + 16) = v106;
        v64 = v123;
        __swift_project_boxed_opaque_existential_1Tm(&v122, v123);
        (*(*(&v64 + 1) + 8))(v64, *(&v64 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
        v65 = sub_2313DAC4C();
        v66 = *(v65 - 8);
        v67 = *(v66 + 72);
        v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = v105;
        v70 = v69 + v68;
        v71 = *(v66 + 104);
        v71(v70, v109, v65);
        v71(v70 + v67, v108, v65);
        v72 = v97;
        *v97 = v69;
        v73 = v113;
        (*v110)(v72, v107, v113);
        sub_2313DAB1C();

        (*v96)(v72, v73);
        (*(v104 + 8))(v60, v57);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v122);
      v31 += 40;
      v30 = v117 - 1;
      a1 = v111;
      v32 = v115;
      v33 = v114;
    }

    while (v117 != 1);

    a2 = v95;
  }

  else
  {
  }

  v74 = *(a1 + 40);
  v117 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1Tm(a1, v117);
  v123 = v117;
  v124 = v74;
  __swift_allocate_boxed_opaque_existential_2Tm(&v122);
  sub_2313DAE6C();
  v75 = v124;
  v117 = v123;
  __swift_project_boxed_opaque_existential_1Tm(&v122, v123);
  sub_2313D18D4(a2);
  v120 = v117;
  v121 = v75;
  __swift_allocate_boxed_opaque_existential_2Tm(&v119);
  sub_2313DAEBC();

  v76 = v120;
  v77 = __swift_project_boxed_opaque_existential_1Tm(&v119, v120);
  v78 = *(v76 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  v81 = v94 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for BaseSuggestionsAssetProvider();
  v83 = swift_allocObject();
  v118[3] = v82;
  v118[4] = sub_2313BE9C0(&qword_27DD4BC60, v84, type metadata accessor for BaseSuggestionsAssetProvider);
  v118[0] = v83;
  sub_2313DAE7C();
  (*(v78 + 8))(v81, v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  sub_2313D1B9C(a2);
  sub_2313BDD88(v85, a1);

  sub_2313D382C(a2, &v119);
  if (!v120)
  {
    return sub_2313BEA08(&v119, &qword_27DD4BC68, &qword_2313DB918);
  }

  sub_2313BAED0(&v119, &v122);
  v86 = *(a1 + 24);
  v87 = *(a1 + 40);
  v88 = __swift_project_boxed_opaque_existential_1Tm(a1, v86);
  v89 = *(v86 - 8);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  v92 = v94 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313DAECC();
  (*(v89 + 8))(v92, v86);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v122);
}

uint64_t sub_2313BDD88(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  for (i = result + 48; v3; --v3)
  {
    sub_2313BEAC0(a2, v14);
    v5 = v15;
    v6 = __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(i - 16);
    v12 = *(i - 8);
    v13 = *(i + 40);
    sub_2313DAEDC();
    (*(v7 + 8))(v10, v5);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
    i += 64;
  }

  return result;
}

uint64_t sub_2313BDED8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2313BDF74;

  return static BaseSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t sub_2313BDF74(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2313BE0B8()
{
  v1 = OUTLINED_FUNCTION_0();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_2313BE0E0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2313BE154(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2313BE1B0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2313BE1B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2313BE274(v11, 0, 0, 1, a1, a2);
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
    sub_2313BEB24(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2313BE274(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2313BE374(a5, a6);
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
    result = sub_2313DB36C();
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

uint64_t sub_2313BE374(uint64_t a1, unint64_t a2)
{
  v4 = sub_2313BE3C0(a1, a2);
  sub_2313BE4D8(&unk_2846055D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2313BE3C0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2313DB27C())
  {
    result = sub_2313BE5BC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2313DB33C();
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
          result = sub_2313DB36C();
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

uint64_t sub_2313BE4D8(uint64_t result)
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

    result = sub_2313BE62C(result, v8, 1, v3);
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

void *sub_2313BE5BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BCA0, &qword_2313DB928);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2313BE62C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BCA0, &qword_2313DB928);
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

_BYTE **sub_2313BE720(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2313BE850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2313BE8B4()
{
  result = qword_27DD4BC78;
  if (!qword_27DD4BC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4BC70, &qword_2313DB920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4BC78);
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

uint64_t *__swift_allocate_boxed_opaque_existential_2Tm(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2313BE9C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2313BEA08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2313BEA64(uint64_t a1)
{
  v2 = type metadata accessor for BaseModelSignals.SignalWithFilter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2313BEAC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2313BEB24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2313BEB84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_4(v3);
  (*v4)(a2);
  return a2;
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x23192C7B0);
}

BOOL OUTLINED_FUNCTION_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_2313BEC44(char a1)
{
  result = 0x73756F6976657270;
  switch(a1)
  {
    case 1:
    case 17:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      return result;
    case 4:
    case 18:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7469546C69616D65;
      break;
    case 6:
      result = 0x6E65536C69616D65;
      break;
    case 7:
      result = 0x74616E6974736564;
      break;
    case 8:
      result = 0x5372656874616577;
      break;
    case 9:
      result = 0x61737265766E6F63;
      break;
    case 10:
      result = 0x6D614E6563616C70;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6C746954776F6873;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x6D79536B636F7473;
      break;
    case 15:
      result = 0x656C746954626174;
      break;
    case 16:
      result = 0x6B72616D6B6F6F62;
      break;
    case 19:
      result = 0x614E7265646C6F66;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x4E676E6974746573;
      break;
    case 22:
      result = 0x41676E6974746573;
      break;
    case 23:
      result = 0x7079546569766F6DLL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_2313BEF14()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313DA99C();
  v0[3] = v1;
  OUTLINED_FUNCTION_0_0(v1);
  v0[4] = v2;
  v4 = *(v3 + 64);
  v0[5] = OUTLINED_FUNCTION_13();
  v5 = sub_2313DA9DC();
  v0[6] = v5;
  OUTLINED_FUNCTION_0_0(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = OUTLINED_FUNCTION_13();
  v9 = sub_2313DA9FC();
  v0[9] = v9;
  OUTLINED_FUNCTION_0_0(v9);
  v0[10] = v10;
  v12 = *(v11 + 64);
  v0[11] = OUTLINED_FUNCTION_13();
  v13 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2313BF04C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  sub_2313DA9CC();
  (*(v3 + 104))(v2, *MEMORY[0x277CC9988], v4);
  sub_2313DA98C();
  v8 = sub_2313DA9EC();
  (*(v7 + 8))(v5, v6);
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_5();
  result = v11(v10);
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = v0[10];
    v13 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
    OUTLINED_FUNCTION_6();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2313DB7C0;
    v0[2] = v8 - 1;
    v19 = sub_2313DB38C();
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v21 = *(v14 + 8);
    v22 = OUTLINED_FUNCTION_5();
    v23(v22);

    v24 = v0[1];

    return v24(v18);
  }

  return result;
}

uint64_t sub_2313BF204()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313BEF14();
}

uint64_t sub_2313BF290()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 64);
  v0[7] = OUTLINED_FUNCTION_13();
  v5 = sub_2313DB1EC();
  v0[8] = v5;
  OUTLINED_FUNCTION_0_0(v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v0[10] = OUTLINED_FUNCTION_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD38, &qword_2313DC008);
  OUTLINED_FUNCTION_7(v9);
  v11 = *(v10 + 64);
  v0[11] = OUTLINED_FUNCTION_19();
  v0[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD40, &qword_2313DC010);
  OUTLINED_FUNCTION_7(v12);
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_13();
  v15 = sub_2313DB08C();
  v0[14] = v15;
  OUTLINED_FUNCTION_0_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_19();
  v0[17] = swift_task_alloc();
  v19 = sub_2313DB0EC();
  v0[18] = v19;
  OUTLINED_FUNCTION_0_0(v19);
  v0[19] = v20;
  v22 = *(v21 + 64);
  v0[20] = OUTLINED_FUNCTION_19();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2313BF4B0()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[6];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  OUTLINED_FUNCTION_5();
  sub_2313DAD3C();
  v5 = sub_2313DB2CC();

  v7 = 0;
  v177 = *(v5 + 16);
  LODWORD(v170) = *MEMORY[0x277D1EB18];
  v168 = (v2 + 8);
  v169 = (v2 + 104);
  v180 = v1;
  v183 = (v1 + 8);
  v165 = (v1 + 32);
  v166 = MEMORY[0x277D84F90];
  v167 = v5;
  while (1)
  {
    if (v177 == v7)
    {

      v44 = 0;
      result = v166;
      v45 = *(v166 + 16);
      v46 = MEMORY[0x277D84F90];
      while (v45 != v44)
      {
        if (v44 >= *(result + 16))
        {
          goto LABEL_59;
        }

        v47 = v0[24];
        v48 = v0[18];
        v49 = (*(v180 + 80) + 32) & ~*(v180 + 80);
        v50 = *(v180 + 72);
        v51 = OUTLINED_FUNCTION_21();
        v52(v51);
        v53 = sub_2313BFE90();
        v60 = v0[24];
        if (v53)
        {
          v177 = *v165;
          (*v165)(v0[23], v0[24], v0[18]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14(*(v46 + 16));
          }

          v63 = *(v46 + 16);
          v62 = *(v46 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_2313C45B8(v62 > 1, v63 + 1, 1);
          }

          ++v44;
          v64 = v0[23];
          v65 = v0[18];
          *(v46 + 16) = v63 + 1;
          (v177)(v46 + v49 + v63 * v50, v64, v65);
          result = v166;
        }

        else
        {
          OUTLINED_FUNCTION_16(v53, v0[18], v54, v55, v56, v57, v58, v59, v164, v165, v166, v167, v168, v169, v170, v172, v174, v177, v180, v183);
          v61(v60);
          ++v44;
          result = v166;
        }
      }

      v66 = 0;
      v67 = *(v46 + 16);
      v171 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v67 == v66)
        {

          v96 = *(v171 + 16);
          if (!v96)
          {

            v103 = MEMORY[0x277D84F90];
LABEL_52:
            v143 = v0[8];
            sub_2313BCCF0(v103, v0[12]);

            if (OUTLINED_FUNCTION_26() == 1)
            {
              sub_2313BEA08(v0[12], &qword_27DD4BD38, &qword_2313DC008);
            }

            else
            {
              v144 = v0[8];
              v145 = v0[9];
              v146 = sub_2313DB1CC();
              v148 = v147;
              v149 = *(v145 + 8);
              v150 = OUTLINED_FUNCTION_11();
              v151(v150);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
              OUTLINED_FUNCTION_6();
              v152 = swift_allocObject();
              *(v152 + 16) = xmmword_2313DB7C0;
              *(v152 + 56) = MEMORY[0x277D837D0];
              *(v152 + 32) = v146;
              *(v152 + 40) = v148;
            }

            v154 = v0[25];
            v153 = v0[26];
            v156 = v0[23];
            v155 = v0[24];
            v158 = v0[21];
            v157 = v0[22];
            v159 = v0[20];
            v161 = v0[16];
            v160 = v0[17];
            v176 = v0[13];
            v179 = v0[12];
            v182 = v0[11];
            v184 = v0[10];
            v185 = v0[7];

            v162 = OUTLINED_FUNCTION_3_0();

            return v163(v162);
          }

          v97 = v0[9];
          OUTLINED_FUNCTION_4_0();
          v100 = v98 + v99;
          v173 = v102;
          v175 = (v102 + 32);
          v178 = *(v101 + 72);
          v103 = MEMORY[0x277D84F90];
          v181 = *(v101 + 16);
          while (2)
          {
            v104 = v0[7];
            v181(v0[21], v100, v0[18]);
            sub_2313DB0BC();
            v105 = sub_2313DB1AC();
            v106 = OUTLINED_FUNCTION_29();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v106, v107, v105);
            v116 = v0[21];
            v117 = v0[18];
            v118 = v0[7];
            v119 = v0[8];
            if (EnumTagSinglePayload == 1)
            {
              OUTLINED_FUNCTION_16(EnumTagSinglePayload, v109, v110, v111, v112, v113, v114, v115, v164, v165, v166, v167, v168, v169, v171, v173, v175, v178, v181, v183);
              v120(v116, v117);
              sub_2313BEA08(v118, &qword_27DD4BD30, &qword_2313DC000);
              v121 = OUTLINED_FUNCTION_29();
              __swift_storeEnumTagSinglePayload(v121, v122, 1, v119);
              goto LABEL_43;
            }

            v123 = v0[11];
            v124 = sub_2313DB18C();
            OUTLINED_FUNCTION_16(v124, v125, v126, v127, v128, v129, v130, v131, v164, v165, v166, v167, v168, v169, v171, v173, v175, v178, v181, v183);
            v132(v116, v117);
            OUTLINED_FUNCTION_4(v105);
            (*(v133 + 8))(v118, v105);
            v134 = OUTLINED_FUNCTION_29();
            if (__swift_getEnumTagSinglePayload(v134, v135, v119) == 1)
            {
LABEL_43:
              sub_2313BEA08(v0[11], &qword_27DD4BD38, &qword_2313DC008);
            }

            else
            {
              v136 = *v175;
              (*v175)(v0[10], v0[11], v0[8]);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v103 = sub_2313C4280(0, *(v103 + 16) + 1, 1, v103);
              }

              v138 = *(v103 + 16);
              v137 = *(v103 + 24);
              if (v138 >= v137 >> 1)
              {
                v103 = sub_2313C4280(v137 > 1, v138 + 1, 1, v103);
              }

              v139 = v0[10];
              v140 = v0[8];
              *(v103 + 16) = v138 + 1;
              OUTLINED_FUNCTION_4_0();
              v136(v103 + v141 + *(v142 + 72) * v138);
            }

            v100 += v178;
            if (!--v96)
            {

              goto LABEL_52;
            }

            continue;
          }
        }

        if (v66 >= *(v46 + 16))
        {
          goto LABEL_60;
        }

        v68 = v0[22];
        v69 = v0[18];
        v70 = v0[13];
        v71 = (*(v180 + 80) + 32) & ~*(v180 + 80);
        v72 = *(v180 + 72);
        v73 = OUTLINED_FUNCTION_21();
        v74(v73);
        sub_2313DB0DC();
        v75 = sub_2313DB0AC();
        v76 = __swift_getEnumTagSinglePayload(v70, 1, v75);
        v77 = v0[13];
        if (v76 == 1)
        {
          break;
        }

        v84 = sub_2313DB09C();
        OUTLINED_FUNCTION_4(v75);
        v86 = *(v85 + 8);
        v87 = OUTLINED_FUNCTION_11();
        v88(v87);
        if (v84)
        {
          v90 = *v165;
          (*v165)(v0[20], v0[22], v0[18]);
          v91 = v171;
          v177 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14(*(v171 + 16));
            v91 = v171;
          }

          v93 = *(v91 + 16);
          v92 = *(v91 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_2313C45B8(v92 > 1, v93 + 1, 1);
            v91 = v171;
          }

          ++v66;
          v94 = v0[20];
          v95 = v0[18];
          *(v91 + 16) = v93 + 1;
          v171 = v91;
          result = (v90)(v91 + v71 + v93 * v72, v94, v95);
        }

        else
        {
LABEL_32:
          OUTLINED_FUNCTION_16(v0[22], v0[18], v78, v79, v80, v81, v82, v83, v164, v165, v166, v167, v168, v169, v171, v172, v174, v177, v180, v183);
          result = v89();
          ++v66;
        }
      }

      sub_2313BEA08(v0[13], &qword_27DD4BD40, &qword_2313DC010);
      goto LABEL_32;
    }

    if (v7 >= *(v5 + 16))
    {
      break;
    }

    v8 = v0[26];
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[16];
    v12 = v0[14];
    OUTLINED_FUNCTION_4_0();
    v174 = v13;
    v15 = v7;
    v172 = *(v14 + 72);
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
    sub_2313DB0CC();
    (*v169)(v11, v170, v12);
    OUTLINED_FUNCTION_1_0();
    sub_2313C4638(&qword_27DD4BD48, 255, v18);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_15();
    v19 = v0[5];
    v21 = v0[16];
    v20 = v0[17];
    v22 = v0[14];
    if (v0[2] == v0[4] && v0[3] == v19)
    {
      v35 = *v168;
      v36 = OUTLINED_FUNCTION_17();
      v35(v36);
      v37 = OUTLINED_FUNCTION_18();
      v35(v37);

LABEL_11:
      v38 = *v165;
      (*v165)(v0[25], v0[26], v0[18]);
      v39 = v166;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_14(*(v166 + 16));
        v39 = v166;
      }

      v5 = v167;
      OUTLINED_FUNCTION_20();
      if (v41)
      {
        sub_2313C45B8(v40 > 1, v19, 1);
        v39 = v166;
      }

      v7 = v15 + 1;
      v42 = v0[25];
      v43 = v0[18];
      *(v39 + 16) = v19;
      v166 = v39;
      result = (v38)(v39 + v174 + v20 * v172, v42, v43);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_25();
      v25 = *v168;
      v26 = OUTLINED_FUNCTION_17();
      v25(v26);
      v27 = OUTLINED_FUNCTION_18();
      v25(v27);

      if (v24)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_16(v0[26], v0[18], v28, v29, v30, v31, v32, v33, v164, v165, v166, v167, v168, v169, v170, v172, v174, v177, v180, v183);
      result = v34();
      v7 = v15 + 1;
      v5 = v167;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_2313BFE90()
{
  v0 = sub_2313DB1BC();
  v41 = *(v0 - 8);
  v1 = *(v41 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD58, &unk_2313DC020);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v37 - v4;
  v5 = sub_2313DACFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD60, &qword_2313DC380);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v37 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  sub_2313DB0BC();
  v23 = sub_2313DB1AC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
  {
    sub_2313BEA08(v13, &qword_27DD4BD30, &qword_2313DC000);
    v24 = 1;
  }

  else
  {
    sub_2313DB17C();
    (*(*(v23 - 8) + 8))(v13, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v24, 1, v0);
  v25 = swift_allocObject();
  (*(v6 + 104))(v9, *MEMORY[0x277D60F30], v5);
  v26 = sub_2313DACEC();
  v28 = v27;
  (*(v6 + 8))(v9, v5);
  v25[2] = v26;
  v25[3] = v28;
  v25[4] = 0xD000000000000012;
  v25[5] = 0x80000002313DDE00;
  *v20 = v25;
  v29 = v41;
  (*(v41 + 104))(v20, *MEMORY[0x277D72D28], v0);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v0);
  v30 = *(v40 + 48);
  v31 = v42;
  sub_2313C49BC(v22, v42, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313C49BC(v20, v31 + v30, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v31, 1, v0) != 1)
  {
    v33 = v39;
    sub_2313C49BC(v31, v39, &qword_27DD4BD60, &qword_2313DC380);
    if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v0) != 1)
    {
      v34 = v38;
      (*(v29 + 32))(v38, v31 + v30, v0);
      sub_2313C4638(&qword_27DD4BD68, 255, MEMORY[0x277D72D58]);
      v32 = sub_2313DB20C();
      v35 = *(v29 + 8);
      v35(v34, v0);
      sub_2313BEA08(v20, &qword_27DD4BD60, &qword_2313DC380);
      sub_2313BEA08(v22, &qword_27DD4BD60, &qword_2313DC380);
      v35(v39, v0);
      sub_2313BEA08(v31, &qword_27DD4BD60, &qword_2313DC380);
      return v32 & 1;
    }

    sub_2313BEA08(v20, &qword_27DD4BD60, &qword_2313DC380);
    sub_2313BEA08(v22, &qword_27DD4BD60, &qword_2313DC380);
    (*(v29 + 8))(v33, v0);
    goto LABEL_9;
  }

  sub_2313BEA08(v20, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313BEA08(v22, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v0) != 1)
  {
LABEL_9:
    sub_2313BEA08(v31, &qword_27DD4BD58, &unk_2313DC020);
    v32 = 0;
    return v32 & 1;
  }

  sub_2313BEA08(v31, &qword_27DD4BD60, &qword_2313DC380);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_2313C04C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313BF290();
}

void *sub_2313C055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_2313C0570()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD38, &qword_2313DC008);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_13();
  v6 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2313C05F4()
{
  v1 = *(v0 + 32);
  v2 = sub_2313C0730(*(v0 + 16), *(*(v0 + 24) + 32), *(*(v0 + 24) + 40), *(*(v0 + 24) + 48), *(*(v0 + 24) + 56));
  sub_2313BCCF0(v2, v1);

  v3 = sub_2313DB1EC();
  if (OUTLINED_FUNCTION_26() == 1)
  {
    sub_2313BEA08(*(v0 + 32), &qword_27DD4BD38, &qword_2313DC008);
  }

  else
  {
    v4 = sub_2313DB1CC();
    v6 = v5;
    OUTLINED_FUNCTION_4(v3);
    v8 = *(v7 + 8);
    v9 = OUTLINED_FUNCTION_11();
    v10(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
    OUTLINED_FUNCTION_6();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2313DB7C0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 32) = v4;
    *(v11 + 40) = v6;
  }

  v12 = *(v0 + 32);

  v13 = OUTLINED_FUNCTION_3_0();

  return v14(v13);
}

uint64_t sub_2313C0730(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a5;
  v84 = a4;
  v94 = a3;
  v93 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD38, &qword_2313DC008);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v107 = &v83 - v11;
  v92 = sub_2313DB1EC();
  v87 = *(v92 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2313DB08C();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v101 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v100 = &v83 - v19;
  v20 = sub_2313DB0EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v83 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v91 = &v83 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v104 = &v83 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v86 = &v83 - v30;
  MEMORY[0x28223BE20](v29);
  v105 = &v83 - v31;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_2313DAD3C();
  v33 = sub_2313DB2CC();

  v34 = 0;
  v99 = *(v33 + 16);
  v109 = v21 + 16;
  v98 = *MEMORY[0x277D1EB18];
  v96 = (v15 + 8);
  v97 = (v15 + 104);
  v108 = (v21 + 8);
  v106 = v21;
  v88 = (v21 + 32);
  v102 = MEMORY[0x277D84F90];
  v103 = v20;
  v95 = v33;
LABEL_2:
  v35 = v107;
  while (1)
  {
    v36 = v100;
    v37 = v101;
    if (v99 == v34)
    {

      v55 = 0;
      v14 = 0;
      v56 = v102;
      v57 = *(v102 + 16);
      v101 = MEMORY[0x277D84F90];
      v58 = v89;
      v59 = v85;
      v60 = v84;
      while (v57 != v55)
      {
        if (v55 >= *(v56 + 16))
        {
          goto LABEL_44;
        }

        v61 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v62 = *(v106 + 72);
        v63 = v104;
        (*(v106 + 16))(v104, v56 + v61 + v62 * v55, v20);
        if (sub_2313C3D00(v63, v93, v94, v60, v59))
        {
          v64 = *v88;
          (*v88)(v83, v104, v20);
          v65 = v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v112 = v65;
          if (isUniquelyReferenced_nonNull_native)
          {
            v67 = v65;
          }

          else
          {
            sub_2313C45B8(0, *(v65 + 2) + 1, 1);
            v67 = v112;
          }

          v69 = *(v67 + 2);
          v68 = *(v67 + 3);
          if (v69 >= v68 >> 1)
          {
            sub_2313C45B8(v68 > 1, v69 + 1, 1);
            v67 = v112;
          }

          ++v55;
          *(v67 + 2) = v69 + 1;
          v101 = v67;
          v20 = v103;
          v64(&v67[v61 + v69 * v62], v83, v103);
          v58 = v89;
          v35 = v107;
          v59 = v85;
          v60 = v84;
          v56 = v102;
        }

        else
        {
          (*v108)(v104, v20);
          ++v55;
          v35 = v107;
          v56 = v102;
        }
      }

      v70 = *(v101 + 2);
      if (!v70)
      {

        return MEMORY[0x277D84F90];
      }

      v71 = &v101[(*(v106 + 80) + 32) & ~*(v106 + 80)];
      v72 = *(v106 + 72);
      v105 = (v87 + 32);
      v73 = MEMORY[0x277D84F90];
      v74 = *(v106 + 16);
      v75 = v91;
      while (1)
      {
        v76 = v103;
        v74(v75, v71, v103);
        sub_2313DB0BC();
        v77 = v58;
        v78 = sub_2313DB1AC();
        if (__swift_getEnumTagSinglePayload(v77, 1, v78) == 1)
        {
          (*v108)(v75, v76);
          sub_2313BEA08(v77, &qword_27DD4BD30, &qword_2313DC000);
          __swift_storeEnumTagSinglePayload(v35, 1, 1, v92);
          v58 = v77;
        }

        else
        {
          sub_2313DB18C();
          (*v108)(v75, v76);
          (*(*(v78 - 8) + 8))(v77, v78);
          v58 = v77;
          if (__swift_getEnumTagSinglePayload(v35, 1, v92) != 1)
          {
            v79 = *v105;
            (*v105)(v90, v35, v92);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_2313C4280(0, *(v73 + 16) + 1, 1, v73);
            }

            v81 = *(v73 + 16);
            v80 = *(v73 + 24);
            if (v81 >= v80 >> 1)
            {
              v73 = sub_2313C4280(v80 > 1, v81 + 1, 1, v73);
            }

            *(v73 + 16) = v81 + 1;
            v79(v73 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v81, v90, v92);
            v58 = v89;
            v35 = v107;
            goto LABEL_39;
          }
        }

        sub_2313BEA08(v35, &qword_27DD4BD38, &qword_2313DC008);
LABEL_39:
        v71 += v72;
        --v70;
        v75 = v91;
        if (!v70)
        {

          return v73;
        }
      }
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    v38 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v39 = v33 + v38;
    v40 = *(v106 + 72);
    (*(v106 + 16))(v105, v39 + v40 * v34, v20);
    sub_2313DB0CC();
    (*v97)(v37, v98, v14);
    sub_2313C4638(&qword_27DD4BD48, 255, MEMORY[0x277D1EB58]);
    sub_2313DB2AC();
    sub_2313DB2AC();
    if (v112 == v110 && v113 == v111)
    {
      v48 = *v96;
      (*v96)(v37, v14);
      v49 = v36;
      v47 = v14;
      v48(v49, v14);

LABEL_12:
      v50 = *v88;
      v20 = v103;
      (*v88)(v86, v105, v103);
      v51 = v102;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v51;
      if ((v52 & 1) == 0)
      {
        sub_2313C45B8(0, *(v51 + 16) + 1, 1);
        v51 = v114;
      }

      v14 = v47;
      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2313C45B8(v53 > 1, v54 + 1, 1);
        v51 = v114;
      }

      ++v34;
      *(v51 + 16) = v54 + 1;
      v102 = v51;
      v50((v51 + v38 + v54 * v40), v86, v20);
      v33 = v95;
      goto LABEL_2;
    }

    v42 = sub_2313DB39C();
    v43 = v37;
    v44 = v42;
    v45 = *v96;
    (*v96)(v43, v14);
    v46 = v36;
    v47 = v14;
    v45(v46, v14);

    if (v44)
    {
      goto LABEL_12;
    }

    v20 = v103;
    (*v108)(v105, v103);
    ++v34;
    v35 = v107;
    v33 = v95;
  }

  __break(1u);
LABEL_44:
  __break(1u);

  (*v108)(v104, v20);

  __break(1u);
  return result;
}

void *sub_2313C1240()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t sub_2313C1270()
{
  sub_2313C1240();
  OUTLINED_FUNCTION_6();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2313C12C4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2313C4C48;

  return sub_2313C0570();
}

uint64_t sub_2313C135C()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD38, &qword_2313DC008);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 64);
  v0[3] = OUTLINED_FUNCTION_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD78, &qword_2313DC048);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 64);
  v0[4] = OUTLINED_FUNCTION_13();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD80, &qword_2313DC050);
  v0[5] = v8;
  OUTLINED_FUNCTION_0_0(v8);
  v0[6] = v9;
  v11 = *(v10 + 64);
  v0[7] = OUTLINED_FUNCTION_13();
  v12 = sub_2313DACFC();
  v0[8] = v12;
  OUTLINED_FUNCTION_0_0(v12);
  v0[9] = v13;
  v15 = *(v14 + 64);
  v0[10] = OUTLINED_FUNCTION_13();
  v16 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2313C14B0()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  (*(v1 + 104))(v0[10], *MEMORY[0x277D60F38], v0[8]);
  v4 = sub_2313DACEC();
  v6 = v5;
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_11();
  v9(v8);
  v10 = sub_2313C0730(v3, v4, v6, 0x69746E45776F6853, 0xEA00000000007974);

  sub_2313BCCF0(v10, v2);

  v11 = sub_2313DB1EC();
  v12 = OUTLINED_FUNCTION_27();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v11);
  v15 = v0[5];
  v16 = v0[3];
  if (EnumTagSinglePayload == 1)
  {
    sub_2313BEA08(v0[3], &qword_27DD4BD38, &qword_2313DC008);
    v17 = OUTLINED_FUNCTION_27();
    __swift_storeEnumTagSinglePayload(v17, v18, 1, v15);
LABEL_4:
    sub_2313BEA08(v0[4], &qword_27DD4BD78, &qword_2313DC048);
    goto LABEL_6;
  }

  v19 = v0[4];
  sub_2313DB1DC();
  OUTLINED_FUNCTION_4(v11);
  (*(v20 + 8))(v16, v11);
  v21 = OUTLINED_FUNCTION_27();
  if (__swift_getEnumTagSinglePayload(v21, v22, v15) == 1)
  {
    goto LABEL_4;
  }

  v23 = v0[7];
  v24 = v0[5];
  v25 = *(v0[6] + 32);
  v25(v23, v0[4], v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
  OUTLINED_FUNCTION_6();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2313DB7C0;
  *(v26 + 56) = v24;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm((v26 + 32));
  v25(boxed_opaque_existential_2Tm, v23, v24);
LABEL_6:
  v28 = v0[10];
  v29 = v0[7];
  v31 = v0[3];
  v30 = v0[4];

  v32 = OUTLINED_FUNCTION_3_0();

  return v33(v32);
}

uint64_t sub_2313C1730()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C135C();
}

uint64_t sub_2313C17C4()
{
  OUTLINED_FUNCTION_8();
  v0[12] = v1;
  v2 = sub_2313DB1EC();
  v0[13] = v2;
  OUTLINED_FUNCTION_0_0(v2);
  v0[14] = v3;
  v5 = *(v4 + 64);
  v0[15] = OUTLINED_FUNCTION_13();
  v6 = sub_2313DACFC();
  v0[16] = v6;
  OUTLINED_FUNCTION_0_0(v6);
  v0[17] = v7;
  v9 = *(v8 + 64);
  v0[18] = OUTLINED_FUNCTION_13();
  v10 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2313C18B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (**a17)(uint64_t, uint64_t), uint64_t a18, void (*a19)(uint64_t, unint64_t, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_33();
  v26 = v24[17];
  v25 = v24[18];
  v27 = v24[16];
  v28 = v24[12];
  v29 = *MEMORY[0x277D60EC0];
  v91 = *(v26 + 104);
  v91(v25, v29, v27);
  v30 = sub_2313DACEC();
  v32 = v31;
  v33 = *(v26 + 8);
  v33(v25, v27);
  v34 = sub_2313C0730(v28, v30, v32, 0x6E457265646C6F46, 0xEC00000079746974);

  v91(v25, v29, v27);
  v35 = sub_2313DACEC();
  v37 = v36;
  v33(v25, v27);
  v38 = sub_2313C0730(v28, v35, v37, 0x7469746E45676154, 0xE900000000000079);

  v39 = *(v34 + 16);
  if (v39)
  {
    OUTLINED_FUNCTION_22();
    v40 = a21;
    v42 = *(v27 + 16);
    v41 = v27 + 16;
    a18 = v34;
    v43 = v34 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    a19 = *(v41 + 56);
    v91 = v42;
    v44 = (v41 - 8);
    do
    {
      v45 = v40;
      v46 = v24[15];
      v47 = v24[13];
      v91(v46, v43, v47);
      v48 = sub_2313DB1CC();
      v50 = v49;
      v51 = v46;
      v40 = v45;
      (*v44)(v51, v47);
      a21 = v45;
      v27 = *(v45 + 16);
      v52 = *(v45 + 24);
      if (v27 >= v52 >> 1)
      {
        v54 = OUTLINED_FUNCTION_10(v52);
        sub_2313C4598(v54, v27 + 1, 1);
        v40 = v45;
      }

      *(v40 + 16) = v27 + 1;
      v53 = v40 + 16 * v27;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v43 += a19;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v55 = *(v38 + 16);
  if (v55)
  {
    a15 = v40;
    OUTLINED_FUNCTION_22();
    v57 = *(v27 + 16);
    v56 = v27 + 16;
    v58 = a21;
    v59 = v38 + ((*(v56 + 64) + 32) & ~*(v56 + 64));
    a18 = *(v56 + 56);
    a19 = v57;
    v91 = v56;
    a17 = (v56 - 8);
    do
    {
      v60 = v24[15];
      v61 = v24[13];
      a19(v60, v59, v61);
      v24[2] = sub_2313DB1CC();
      v24[3] = v62;
      v24[4] = 35;
      v24[5] = 0xE100000000000000;
      v24[6] = 0;
      v24[7] = 0xE000000000000000;
      a11 = sub_2313C4968();
      a12 = a11;
      a10 = a11;
      a9 = MEMORY[0x277D837D0];
      v63 = sub_2313DB31C();
      v65 = v64;

      (*a17)(v60, v61);
      a21 = v58;
      v67 = *(v58 + 16);
      v66 = *(v58 + 24);
      if (v67 >= v66 >> 1)
      {
        v69 = OUTLINED_FUNCTION_10(v66);
        sub_2313C4598(v69, v67 + 1, 1);
      }

      *(v58 + 16) = v67 + 1;
      v68 = v58 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      v59 += a18;
      --v55;
    }

    while (v55);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v90 = *(v58 + 16);
  if (v90)
  {
    v71 = 0;
    a18 = *(v40 + 16);
    v72 = v58 + 32;
    v73 = (v40 + 40);
    a14 = v40 + 40;
    a15 = v58 + 32;
    while (2)
    {
      if (v71 >= *(v58 + 16))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v74 = v72 + 16 * v71;
      a19 = *v74;
      v91 = *(v74 + 8);
      a17 = (v71 + 1);

      for (i = 0; a18 != i; ++i)
      {
        if (i >= *(v40 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v77 = *(v73 - 1);
        v76 = *v73;
        v24[8] = v77;
        v24[9] = v76;
        v24[10] = a19;
        v24[11] = v91;
        sub_2313C4968();

        if (!sub_2313DB32C())
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
          OUTLINED_FUNCTION_6();
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_2313DB7C0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD90, &qword_2313DC060);
          OUTLINED_FUNCTION_6();
          v79 = swift_allocObject();
          *(v79 + 16) = xmmword_2313DB7D0;
          *(v79 + 32) = a19;
          *(v79 + 40) = v91;
          *(v79 + 48) = v77;
          *(v79 + 56) = v76;
          *(v78 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD98, &qword_2313DC068);
          *(v78 + 32) = v79;
          goto LABEL_26;
        }

        v73 += 2;
      }

      v71 = a17;
      v73 = (v40 + 40);
      v72 = v58 + 32;
      if (a17 != v90)
      {
        continue;
      }

      break;
    }
  }

LABEL_26:
  v80 = v24[18];
  v81 = v24[15];

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_34();

  return v84(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, v90, a17, a18, a19, v91, a21, a22, a23, a24);
}

uint64_t sub_2313C1E4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C17C4();
}

uint64_t sub_2313C1EE0()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = sub_2313DB1AC();
  v0[7] = v2;
  OUTLINED_FUNCTION_0_0(v2);
  v0[8] = v3;
  v5 = *(v4 + 64);
  v0[9] = OUTLINED_FUNCTION_19();
  v0[10] = swift_task_alloc();
  v6 = sub_2313DB08C();
  v0[11] = v6;
  OUTLINED_FUNCTION_0_0(v6);
  v0[12] = v7;
  v9 = *(v8 + 64);
  v0[13] = OUTLINED_FUNCTION_19();
  v0[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  OUTLINED_FUNCTION_7(v10);
  v12 = *(v11 + 64);
  v0[15] = OUTLINED_FUNCTION_13();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v13);
  v15 = *(v14 + 64);
  v0[16] = OUTLINED_FUNCTION_19();
  v0[17] = swift_task_alloc();
  v16 = sub_2313DB0EC();
  v0[18] = v16;
  OUTLINED_FUNCTION_0_0(v16);
  v0[19] = v17;
  v19 = *(v18 + 64);
  v0[20] = OUTLINED_FUNCTION_19();
  v0[21] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2313C2670(char a1)
{
  if (a1)
  {
    return 0x7465736E7553;
  }

  else
  {
    return 0x657369726E7553;
  }
}

uint64_t sub_2313C26A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C1EE0();
}

uint64_t sub_2313C2738()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313DA9DC();
  v0[2] = v1;
  OUTLINED_FUNCTION_0_0(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = OUTLINED_FUNCTION_13();
  v5 = sub_2313DA9FC();
  v0[5] = v5;
  OUTLINED_FUNCTION_0_0(v5);
  v0[6] = v6;
  v8 = *(v7 + 64);
  v0[7] = OUTLINED_FUNCTION_13();
  v9 = sub_2313DA99C();
  v0[8] = v9;
  OUTLINED_FUNCTION_0_0(v9);
  v0[9] = v10;
  v12 = *(v11 + 64);
  v0[10] = OUTLINED_FUNCTION_13();
  v13 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2313C2870()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v17 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  sub_2313DA98C();
  sub_2313DA9CC();
  (*(v7 + 104))(v6, *MEMORY[0x277CC9980], v8);
  OUTLINED_FUNCTION_5();
  v9 = sub_2313DA9EC();
  (*(v7 + 8))(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
  OUTLINED_FUNCTION_6();
  v10 = swift_allocObject();
  v11 = v10;
  v12 = 0x657369726E7553;
  if (v9 > 8)
  {
    v12 = 0x7465736E7553;
  }

  v13 = 0xE700000000000000;
  if (v9 > 8)
  {
    v13 = 0xE600000000000000;
  }

  v14 = MEMORY[0x277D837D0];
  *(v10 + 16) = xmmword_2313DB7C0;
  *(v10 + 56) = v14;
  *(v10 + 32) = v12;
  *(v10 + 40) = v13;
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v17);

  v15 = v0[1];

  return v15(v11);
}

uint64_t sub_2313C2A20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

double sub_2313C2A7C()
{
  *(v0 + 16) = 0x5372656874616577;
  *(v0 + 24) = 0xEF65676174536E75;
  *&result = 9;
  *(v0 + 32) = xmmword_2313DB940;
  return result;
}

uint64_t sub_2313C2AB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C2B40;

  return sub_2313C2738();
}

uint64_t sub_2313C2B40()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v5 = *v0;

  v2 = OUTLINED_FUNCTION_3_0();

  return v3(v2);
}

uint64_t sub_2313C2C30()
{
  OUTLINED_FUNCTION_8();
  v0[6] = v1;
  v2 = sub_2313DB15C();
  v0[7] = v2;
  OUTLINED_FUNCTION_0_0(v2);
  v0[8] = v3;
  v5 = *(v4 + 64);
  v0[9] = OUTLINED_FUNCTION_13();
  v6 = sub_2313DB14C();
  v0[10] = v6;
  OUTLINED_FUNCTION_0_0(v6);
  v0[11] = v7;
  v9 = *(v8 + 64);
  v0[12] = OUTLINED_FUNCTION_13();
  v10 = sub_2313DB08C();
  v0[13] = v10;
  OUTLINED_FUNCTION_0_0(v10);
  v0[14] = v11;
  v13 = *(v12 + 64);
  v0[15] = OUTLINED_FUNCTION_19();
  v0[16] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  OUTLINED_FUNCTION_7(v14);
  v16 = *(v15 + 64);
  v0[17] = OUTLINED_FUNCTION_13();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v17);
  v19 = *(v18 + 64);
  v0[18] = OUTLINED_FUNCTION_13();
  v20 = sub_2313DB1AC();
  v0[19] = v20;
  OUTLINED_FUNCTION_0_0(v20);
  v0[20] = v21;
  v23 = *(v22 + 64);
  v0[21] = OUTLINED_FUNCTION_19();
  v0[22] = swift_task_alloc();
  v24 = sub_2313DB0EC();
  v0[23] = v24;
  OUTLINED_FUNCTION_0_0(v24);
  v0[24] = v25;
  v27 = *(v26 + 64);
  v0[25] = OUTLINED_FUNCTION_19();
  v0[26] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_2313C34F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2313C3550()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C2C30();
}

uint64_t sub_2313C3624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313C4C48;

  return sub_2313C35E4();
}

void sub_2313C3BC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2313BEB24(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA8, &qword_2313DC098);
  if ((OUTLINED_FUNCTION_35() & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = v11[2];
  if (!v3)
  {
LABEL_9:

LABEL_10:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v4 = 0;
  v5 = (v11 + 4);
  while (v4 < v11[2])
  {
    sub_2313BEB24(v5, v12);
    sub_2313C4B98();
    if (OUTLINED_FUNCTION_35())
    {
      sub_2313C4BDC(v11);
      if (v6)
      {

        v7 = [v11 displayName];
        v8 = sub_2313DB21C();
        v10 = v9;

        *(a2 + 24) = MEMORY[0x277D837D0];
        *a2 = v8;
        *(a2 + 8) = v10;
        return;
      }
    }

    ++v4;
    v5 += 32;
    if (v3 == v4)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2313C3D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a2;
  v7 = sub_2313DB1BC();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD58, &unk_2313DC020);
  v10 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD60, &qword_2313DC380);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v38 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v37 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  sub_2313DB0BC();
  v26 = sub_2313DB1AC();
  if (__swift_getEnumTagSinglePayload(v16, 1, v26) == 1)
  {
    sub_2313BEA08(v16, &qword_27DD4BD30, &qword_2313DC000);
    v27 = 1;
  }

  else
  {
    sub_2313DB17C();
    (*(*(v26 - 8) + 8))(v16, v26);
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v27, 1, v7);
  v28 = swift_allocObject();
  v28[2] = v40;
  v28[3] = a3;
  v28[4] = a4;
  v28[5] = v41;
  *v23 = v28;
  (*(v42 + 104))(v23, *MEMORY[0x277D72D28], v7);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v7);
  v29 = *(v39 + 48);
  sub_2313C49BC(v25, v12, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313C49BC(v23, &v12[v29], &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v12, 1, v7) != 1)
  {
    v31 = v38;
    sub_2313C49BC(v12, v38, &qword_27DD4BD60, &qword_2313DC380);
    if (__swift_getEnumTagSinglePayload(&v12[v29], 1, v7) != 1)
    {
      v32 = v42;
      v33 = &v12[v29];
      v34 = v37;
      (*(v42 + 32))(v37, v33, v7);
      sub_2313C4638(&qword_27DD4BD68, 255, MEMORY[0x277D72D58]);

      v30 = sub_2313DB20C();
      v35 = *(v32 + 8);
      v35(v34, v7);
      sub_2313BEA08(v23, &qword_27DD4BD60, &qword_2313DC380);
      sub_2313BEA08(v25, &qword_27DD4BD60, &qword_2313DC380);
      v35(v31, v7);
      sub_2313BEA08(v12, &qword_27DD4BD60, &qword_2313DC380);
      return v30 & 1;
    }

    sub_2313BEA08(v23, &qword_27DD4BD60, &qword_2313DC380);
    sub_2313BEA08(v25, &qword_27DD4BD60, &qword_2313DC380);
    (*(v42 + 8))(v31, v7);
    goto LABEL_9;
  }

  sub_2313BEA08(v23, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313BEA08(v25, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(&v12[v29], 1, v7) != 1)
  {
LABEL_9:
    sub_2313BEA08(v12, &qword_27DD4BD58, &unk_2313DC020);
    v30 = 0;
    return v30 & 1;
  }

  sub_2313BEA08(v12, &qword_27DD4BD60, &qword_2313DC380);
  v30 = 1;
  return v30 & 1;
}

size_t sub_2313C4280(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_2313C4380(v8, v7);
  v10 = *(sub_2313DB1EC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_2313C447C(a4 + v11, v8, v9 + v11, MEMORY[0x277D73220]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_2313C4380(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD50, &qword_2313DC018);
  v4 = *(sub_2313DB1EC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2313C447C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), OUTLINED_FUNCTION_4(v8), a1 + *(v9 + 72) * a2 <= a3))
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_28();

    MEMORY[0x2821FE828](v11);
  }

  else if (a3 != a1)
  {
    v10 = OUTLINED_FUNCTION_28();

    MEMORY[0x2821FE820](v10);
  }
}

size_t sub_2313C4540(size_t a1, int64_t a2, char a3)
{
  result = sub_2313C47A8(a1, a2, a3, *v3, &qword_27DD4BDB8, &unk_2313DC0A0, MEMORY[0x277CC9788], MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

char *sub_2313C4598(char *a1, int64_t a2, char a3)
{
  result = sub_2313C46A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2313C45B8(size_t a1, int64_t a2, char a3)
{
  result = sub_2313C47A8(a1, a2, a3, *v3, &qword_27DD4BD70, &qword_2313DC030, MEMORY[0x277D1EE00], MEMORY[0x277D1EE00]);
  *v3 = result;
  return result;
}

uint64_t sub_2313C4638(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_2313C4680(char *a1, int64_t a2, char a3)
{
  result = sub_2313C4A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2313C46A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD90, &qword_2313DC060);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2313C47A8(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_0_0(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_2313C447C(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

unint64_t sub_2313C4968()
{
  result = qword_27DD4BD88;
  if (!qword_27DD4BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4BD88);
  }

  return result;
}

uint64_t sub_2313C49BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_30();
  v9(v8);
  return a2;
}

char *sub_2313C4A1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD28, &qword_2313DBFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2313C4B28(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2313DB21C();

  return v3;
}

unint64_t sub_2313C4B98()
{
  result = qword_27DD4BDB0;
  if (!qword_27DD4BDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD4BDB0);
  }

  return result;
}

uint64_t sub_2313C4BDC(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2313DB21C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_2313DB2AC();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_task_alloc();
}

size_t OUTLINED_FUNCTION_14@<X0>(uint64_t a1@<X8>)
{

  return sub_2313C45B8(0, a1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_2313DB2AC();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

char *OUTLINED_FUNCTION_22()
{
  v5 = *(v0 + 112);
  *(v3 - 80) = v2;

  return sub_2313C4598(0, v1, 0);
}

size_t OUTLINED_FUNCTION_24()
{
  v2 = *(v0 + 16) + 1;

  return sub_2313C45B8(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_2313DB39C();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_dynamicCast();
}

uint64_t sub_2313C4F18(char a1)
{
  result = 0x457070416B6F6F42;
  switch(a1)
  {
    case 1:
    case 8:
    case 21:
      return 0xD000000000000012;
    case 2:
      v4 = 0x6C6946434F44;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 3:
      return 0xD000000000000011;
    case 4:
      return 0xD000000000000011;
    case 5:
      return 0x6472616F424C5243;
    case 6:
      return 0xD000000000000011;
    case 7:
      v5 = 0x456563616C50;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 9:
      v4 = 0x67617373654DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 10:
      return 0xD000000000000016;
    case 11:
      return 0x69726953676E6F53;
    case 12:
      v4 = 0x6C6369747241;
      return v4 & 0xFFFFFFFFFFFFLL | 0x4565000000000000;
    case 13:
      v6 = 1702129486;
      goto LABEL_29;
    case 14:
      v3 = 0x7265646C6F46;
      goto LABEL_9;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x7469746E45676154;
    case 17:
      v5 = 0x457465737341;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 18:
      v5 = 0x456D75626C41;
      return v5 & 0xFFFFFFFFFFFFLL | 0x746E000000000000;
    case 19:
      v6 = 2003789907;
      goto LABEL_29;
    case 20:
      v6 = 1953720652;
LABEL_29:
      result = v6 | 0x69746E4500000000;
      break;
    case 22:
      result = 0x7469746E45626154;
      break;
    case 23:
      result = 0x6B72616D6B6F6F42;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      v3 = 0x6C6F626D7953;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000;
      break;
    case 26:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2313C51B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2313DAB9C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2313DAF7C();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2313C52D8, 0, 0);
}

uint64_t sub_2313C52D8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 16))(v1, v0[3], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D60928])
  {
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[2];
    (*(v0[7] + 96))(v7, v0[6]);
    (*(v5 + 32))(v4, v7, v6);
    v11 = sub_2313DAF6C();
    v12 = sub_2313D3D28(v9, v8, v11);
    v14 = v13;

    v10[3] = MEMORY[0x277D837D0];
    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (v14)
    {
      v16 = v14;
    }

    *v10 = v15;
    v10[1] = v16;
    (*(v5 + 8))(v4, v6);
    v17 = *MEMORY[0x277D60C38];
    v18 = sub_2313DAC5C();
    OUTLINED_FUNCTION_27_0(v18);
    (*(v19 + 104))(v10, v17);
  }

  else
  {
    v20 = v0[2];
    (*(v0[7] + 8))(v0[8], v0[6]);
    v21 = *MEMORY[0x277D60C40];
    v22 = sub_2313DAC5C();
    OUTLINED_FUNCTION_27_0(v22);
    (*(v23 + 104))(v20, v21);
  }

  v24 = v0[11];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

void sub_2313C552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_2313DACBC();
  v27 = OUTLINED_FUNCTION_3_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2313DAD7C();
  v34 = OUTLINED_FUNCTION_3_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_0();
  v41 = v40 - v39;
  sub_2313DAC8C();
  (*(v29 + 16))(v32, v23, v26);
  v42 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v43 = swift_allocObject();
  (*(v29 + 32))(v43 + v42, v32, v26);
  sub_2313DB02C();
  sub_2313DAFCC();
  (*(v29 + 8))(v23, v26);
  (*(v36 + 8))(v41, v33);
  v44 = (v25 + *(type metadata accessor for BaseModelSignals.SignalWithFilter() + 20));
  *v44 = sub_2313C7AC0;
  v44[1] = v43;
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C5710@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2313DAC6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2313C5778()
{
  sub_2313DB02C();
  result = sub_2313DAFDC();
  qword_27DD4BF30 = result;
  return result;
}

uint64_t sub_2313C57AC()
{
  sub_2313DB02C();
  result = sub_2313DB00C();
  qword_27DD4BF38 = result;
  return result;
}

void sub_2313C57F4()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4BF48);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EA0];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C5970()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4BF60);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EA0];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

unint64_t sub_2313C5B1C()
{
  result = qword_2814B1870;
  if (!qword_2814B1870)
  {
    sub_2313DAC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B1870);
  }

  return result;
}

void sub_2313C5B88()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4BF90);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EB0];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C5CF8()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4BFA8);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EB0];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C5EC8()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4BFE8);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60F28];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6238()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4C040);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60F30];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C660C()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4C0D0);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EC0];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6B74()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4C130);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60F48];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6CEC()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4C148);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60F48];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6E70()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4C168);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EE0];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C6FE8()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4C180);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EE0];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C7168()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4C198);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EE0];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_11_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C7300()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4C1B8);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EE8];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

void sub_2313C7474()
{
  OUTLINED_FUNCTION_20_0();
  v0 = sub_2313DACFC();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_1();
  v4 = sub_2313DAD7C();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_7_0();
  __swift_allocate_value_buffer(v8, qword_27DD4C1D0);
  OUTLINED_FUNCTION_10_0();
  v9 = *MEMORY[0x277D60EE8];
  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_2313DACEC();
  v12 = OUTLINED_FUNCTION_4_1();
  v13(v12);
  OUTLINED_FUNCTION_14_0();
  sub_2313DAD6C();
  sub_2313DB02C();
  OUTLINED_FUNCTION_15_0();
  v14 = OUTLINED_FUNCTION_13_0();
  v15(v14);
  OUTLINED_FUNCTION_17_0();
  *v16 = sub_2313C5968;
  v16[1] = 0;
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C7618(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v7 = sub_2313DACFC();
  v8 = OUTLINED_FUNCTION_2_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_0();
  sub_2313DB02C();
  v13 = sub_2313DAC3C();
  v16[3] = v13;
  v16[4] = sub_2313C5B1C();
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v16);
  (*(*(v13 - 8) + 104))(boxed_opaque_existential_2Tm, *MEMORY[0x277D60B50], v13);
  (*(v10 + 104))(v4, *a2, v3);
  sub_2313DACEC();
  (*(v10 + 8))(v4, v3);
  result = sub_2313DAFEC();
  *a3 = result;
  return result;
}

unint64_t sub_2313C7924(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    default:
      return result;
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

uint64_t type metadata accessor for BaseModelSignals.SignalWithFilter()
{
  result = qword_27DD4BDC0;
  if (!qword_27DD4BDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2313C7AC0(uint64_t a1)
{
  v3 = sub_2313DACBC();
  OUTLINED_FUNCTION_7(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return MEMORY[0x2821C6BF0](a1, v5);
}

unint64_t sub_2313C7B64()
{
  result = sub_2313DAC6C();
  if (v1 <= 0x3F)
  {
    result = sub_2313C7BE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2313C7BE8()
{
  result = qword_27DD4BDD0;
  if (!qword_27DD4BDD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DD4BDD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return type metadata accessor for BaseModelSignals.SignalWithFilter();
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_2313DAFCC();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return sub_2313DACFC();
}

void OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_2313C552C(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2313C7EA0()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313DA99C();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_13();
  v7 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2313C7F44()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_34_0();
  sub_2313C7FC0();
  v0 = OUTLINED_FUNCTION_5_1();
  v1(v0);

  v2 = OUTLINED_FUNCTION_14_1();

  return v3(v2);
}

void sub_2313C7FC0()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v50 = sub_2313DB1AC();
  v3 = OUTLINED_FUNCTION_3_1(v50);
  v47 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_2();
  v44 = v7;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_1();
  v46 = v9;
  OUTLINED_FUNCTION_11_1();
  v10 = sub_2313DA9DC();
  v11 = OUTLINED_FUNCTION_3_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_0();
  v18 = v17 - v16;
  v49 = sub_2313DA9FC();
  v19 = OUTLINED_FUNCTION_3_1(v49);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_0();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  v28 = OUTLINED_FUNCTION_7(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_2();
  v48 = v31;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_1();
  sub_2313C83BC(v2, v0);
  sub_2313DA9CC();
  v33 = *(v13 + 104);
  v33(v18, *MEMORY[0x277CC9980], v10);
  v45 = sub_2313DA9EC();
  v34 = *(v13 + 8);
  v35 = OUTLINED_FUNCTION_30_0();
  v34(v35);
  v36 = *(v21 + 8);
  v36(v26, v49);
  sub_2313DA9CC();
  v33(v18, *MEMORY[0x277CC99B8], v10);
  v37 = sub_2313DA9EC();
  v38 = OUTLINED_FUNCTION_30_0();
  v34(v38);
  v39 = v48;
  v36(v26, v49);
  sub_2313CC354(v0, v48, &qword_27DD4BD30, &qword_2313DC000);
  v40 = OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19_1(v40, v41, v50);
  if (v42)
  {
    sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
  }

  else
  {
    (*(v47 + 32))(v46, v48, v50);
    if ((v45 - 5) <= 4 && (v37 - 7) >= 0xFFFFFFFFFFFFFFFBLL)
    {
      sub_2313DB16C();
      sub_2313DB19C();
      v43 = *(v47 + 8);
      v43(v44, v50);
      v43(v46, v50);
      sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
      goto LABEL_8;
    }

    (*(v47 + 8))(v46, v50);
    v39 = v0;
  }

  sub_2313CC3B4(v39, &qword_27DD4BD30, &qword_2313DC000);
LABEL_8:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C83BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_2313DB08C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v47 = &v46 - v13;
  v14 = sub_2313DB0EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v51 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1;
  v24 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v23, v21);
  sub_2313DAD3C();
  v25 = sub_2313DB2CC();

  v27 = 0;
  v62 = *(v25 + 16);
  v57 = v15 + 16;
  v56 = *MEMORY[0x277D1EAB0];
  v54 = (v4 + 8);
  v55 = (v4 + 104);
  v53 = (v15 + 8);
  v59 = v15;
  v50 = (v15 + 32);
  v52 = MEMORY[0x277D84F90];
  v58 = v25;
  while (v62 != v27)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
      return result;
    }

    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v28 = *(v59 + 72);
    v63 = v27;
    v60 = v28;
    (*(v59 + 16))(v20, v25 + v61 + v28 * v27, v14);
    sub_2313DB0CC();
    (*v55)(v8, v56, v3);
    sub_2313CCD50(&qword_27DD4BD48, MEMORY[0x277D1EB58]);
    sub_2313DB2AC();
    sub_2313DB2AC();
    if (v66 == v64 && v67 == v65)
    {
      v34 = *v54;
      (*v54)(v8, v3);
      v34(v24, v3);

LABEL_11:
      v35 = *v50;
      (*v50)(v51, v20, v14);
      v36 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v36;
      v68 = v36;
      v49 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2313C45B8(0, *(v36 + 16) + 1, 1);
        v38 = v68;
      }

      v39 = v63;
      v41 = v60;
      v40 = v61;
      v43 = *(v38 + 16);
      v42 = *(v38 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_2313C45B8(v42 > 1, v43 + 1, 1);
        v39 = v63;
        v38 = v68;
      }

      v27 = v39 + 1;
      *(v38 + 16) = v43 + 1;
      v52 = v38;
      result = (v49)(v38 + v40 + v43 * v41, v51, v14);
      v25 = v58;
    }

    else
    {
      v30 = sub_2313DB39C();
      v31 = v14;
      v32 = v8;
      v33 = *v54;
      (*v54)(v32, v3);
      v33(v24, v3);
      v8 = v32;
      v14 = v31;

      if (v30)
      {
        goto LABEL_11;
      }

      result = (*v53)(v20, v31);
      v27 = v63 + 1;
      v25 = v58;
    }
  }

  v44 = v47;
  sub_2313BCD08(v52, v47);

  if (__swift_getEnumTagSinglePayload(v44, 1, v14) == 1)
  {
    sub_2313CC3B4(v44, &qword_27DD4BDA0, &qword_2313DC078);
    v45 = sub_2313DB1AC();
    return __swift_storeEnumTagSinglePayload(v48, 1, 1, v45);
  }

  else
  {
    sub_2313DB0BC();
    return (*v53)(v44, v14);
  }
}

uint64_t sub_2313C8974()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2313CCD9C;

  return sub_2313C7EA0();
}

uint64_t sub_2313C8A0C()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313DA99C();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_13();
  v7 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2313C8AB0()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_34_0();
  sub_2313C8B2C();
  v0 = OUTLINED_FUNCTION_5_1();
  v1(v0);

  v2 = OUTLINED_FUNCTION_14_1();

  return v3(v2);
}

void sub_2313C8B2C()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v53 = sub_2313DB1AC();
  v3 = OUTLINED_FUNCTION_3_1(v53);
  v51 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_1();
  v50 = v8;
  OUTLINED_FUNCTION_11_1();
  v9 = sub_2313DA9DC();
  v10 = OUTLINED_FUNCTION_3_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_0();
  v17 = v16 - v15;
  v18 = sub_2313DA9FC();
  v19 = OUTLINED_FUNCTION_3_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_0();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  v28 = OUTLINED_FUNCTION_7(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_2();
  v52 = v31;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_1();
  sub_2313C83BC(v2, v0);
  sub_2313DA9CC();
  v33 = *(v12 + 104);
  v33(v17, *MEMORY[0x277CC9980], v9);
  v49 = sub_2313DA9EC();
  v34 = *(v12 + 8);
  v35 = OUTLINED_FUNCTION_18();
  v34(v35);
  v36 = *(v21 + 8);
  v36(v26, v18);
  sub_2313DA9CC();
  v33(v17, *MEMORY[0x277CC99B8], v9);
  v37 = sub_2313DA9EC();
  v38 = OUTLINED_FUNCTION_18();
  v34(v38);
  v36(v26, v18);
  v39 = v52;
  sub_2313CC354(v0, v52, &qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_13_1(v52);
  if (v40)
  {
    sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
    v0 = v52;
LABEL_14:
    sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
    goto LABEL_15;
  }

  (*(v51 + 32))(v50, v52, v53);
  if ((v37 - 7) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v41 = *(v51 + 8);
    v42 = OUTLINED_FUNCTION_32_0();
    v43(v42);
    goto LABEL_14;
  }

  if ((v49 - 5) > 6)
  {
    if ((v49 - 15) < 4)
    {
      sub_2313DB16C();
      OUTLINED_FUNCTION_31_0();
      sub_2313DB19C();
      v46 = OUTLINED_FUNCTION_33_0();
      v52(v46);
      v47 = OUTLINED_FUNCTION_32_0();
      v52(v47);
      sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
      goto LABEL_15;
    }

    v39 = *(v51 + 8);
    goto LABEL_13;
  }

  sub_2313DB16C();
  OUTLINED_FUNCTION_31_0();
  sub_2313DB19C();
  v44 = OUTLINED_FUNCTION_33_0();
  v52(v44);
  if ((v26 & 1) == 0)
  {
LABEL_13:
    v48 = OUTLINED_FUNCTION_32_0();
    v39(v48);
    goto LABEL_14;
  }

  v45 = OUTLINED_FUNCTION_32_0();
  v52(v45);
  sub_2313CC3B4(v0, &qword_27DD4BD30, &qword_2313DC000);
LABEL_15:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C8FAC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2313CCD9C;

  return sub_2313C8A0C();
}

uint64_t sub_2313C9044()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313DA99C();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_13();
  v7 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2313C90E8()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_34_0();
  sub_2313C9164();
  v0 = OUTLINED_FUNCTION_5_1();
  v1(v0);

  v2 = OUTLINED_FUNCTION_14_1();

  return v3(v2);
}

void sub_2313C9164()
{
  OUTLINED_FUNCTION_20_0();
  v42 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v7 = sub_2313DB1AC();
  v8 = OUTLINED_FUNCTION_3_1(v7);
  v41 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  v40 = v12;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = sub_2313DA9DC();
  v17 = OUTLINED_FUNCTION_3_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_0();
  v24 = v23 - v22;
  v25 = sub_2313DA9FC();
  v26 = OUTLINED_FUNCTION_3_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_0();
  v33 = v32 - v31;
  sub_2313DA9CC();
  (*(v19 + 104))(v24, *MEMORY[0x277CC9980], v16);
  v34 = sub_2313DA9EC();
  (*(v19 + 8))(v24, v16);
  (*(v28 + 8))(v33, v25);
  if ((v34 - 12) <= 7)
  {
    sub_2313C83BC(v42, v6);
    OUTLINED_FUNCTION_19_1(v6, 1, v7);
    if (v35)
    {
      sub_2313CC3B4(v6, &qword_27DD4BD30, &qword_2313DC000);
    }

    else
    {
      v36 = v41;
      (*(v41 + 32))(v15, v6, v7);
      v37 = v40;
      sub_2313DB16C();
      sub_2313DB19C();
      v38 = *(v36 + 8);
      v38(v37, v7);
      v38(v15, v7);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2313C949C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2313CCD9C;

  return sub_2313C9044();
}

uint64_t sub_2313C9534(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_10_1();
}

uint64_t sub_2313C9548()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_2313C95AC();
  v5 = v0[1];
  v7 = v6 & 1;

  return v5(v7);
}

void sub_2313C95AC()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v83 = v3;
  v82 = v4;
  v85 = sub_2313DB12C();
  v5 = OUTLINED_FUNCTION_3_1(v85);
  v84 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  OUTLINED_FUNCTION_7(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_12_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_2(v20);
  v91 = sub_2313DB1AC();
  v21 = OUTLINED_FUNCTION_3_1(v91);
  v88 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_4_2(v26);
  v97 = sub_2313DB08C();
  v27 = OUTLINED_FUNCTION_3_1(v97);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_2();
  v101 = v32;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_1();
  v100 = v34;
  OUTLINED_FUNCTION_11_1();
  v35 = sub_2313DB0EC();
  v36 = OUTLINED_FUNCTION_3_1(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_35_0();
  v104 = v42;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18_1();
  v105 = v45;
  v46 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_2313DAD3C();
  v47 = sub_2313DB2CC();

  v48 = 0;
  v99 = *(v47 + 16);
  v96 = *MEMORY[0x277D1EB18];
  v94 = (v29 + 8);
  v95 = (v29 + 104);
  v103 = (v38 + 8);
  v102 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v99 == v48)
    {

      v61 = 0;
      v0 = 0;
      v62 = v102;
      v63 = *(v102 + 16);
      v64 = MEMORY[0x277D84F90];
      while (v63 != v61)
      {
        if (v61 >= *(v62 + 16))
        {
          goto LABEL_42;
        }

        (*(v38 + 16))(v104, v62 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v61, v35);
        if (sub_2313C9FC4())
        {
          OUTLINED_FUNCTION_29_0();
          v66 = *v65;
          (*v65)(v92, v104, v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2313C45B8(0, *(v64 + 16) + 1, 1);
          }

          v68 = *(v64 + 16);
          v67 = *(v64 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_2313C45B8(v67 > 1, v68 + 1, 1);
          }

          ++v61;
          *(v64 + 16) = v68 + 1;
          OUTLINED_FUNCTION_29_0();
          v66();
          v62 = v102;
        }

        else
        {
          (*v103)(v104, v35);
          ++v61;
          v62 = v102;
        }
      }

      sub_2313BCD08(v64, v89);

      OUTLINED_FUNCTION_19_1(v89, 1, v35);
      if (v52)
      {
        sub_2313CC3B4(v89, &qword_27DD4BDA0, &qword_2313DC078);
        v71 = v90;
        v69 = OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v69, v70, 1, v91);
      }

      else
      {
        v71 = v90;
        sub_2313DB0BC();
        (*v103)(v89, v35);
        v72 = OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_19_1(v72, v73, v91);
        if (!v74)
        {
          (*(v88 + 32))(v87, v90, v91);
          (*(v88 + 16))(v86, v87, v91);
          v75 = (*(v88 + 88))(v86, v91);
          if (v75 == *MEMORY[0x277D729F8])
          {
            (*(v88 + 96))(v86, v91);
            v76 = *v86;
            v77 = swift_projectBox();
            (*(v84 + 16))(v81, v77, v85);

            if (sub_2313DB11C() != v82 || v78 != v83)
            {
              sub_2313DB39C();
            }

            (*(v84 + 8))(v81, v85);
            (*(v88 + 8))(v87, v91);
          }

          else
          {
            v80 = *(v88 + 8);
            v80(v87, v91);
            v80(v86, v91);
          }

          goto LABEL_32;
        }
      }

      sub_2313CC3B4(v71, &qword_27DD4BD30, &qword_2313DC000);
LABEL_32:
      OUTLINED_FUNCTION_21_0();
      return;
    }

    if (v48 >= *(v47 + 16))
    {
      break;
    }

    v0 = v47;
    v98 = *(v38 + 72);
    v49 = v47 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v98 * v48;
    v50 = v35;
    (*(v38 + 16))(v105, v49, v35);
    sub_2313DB0CC();
    (*v95)(v101, v96, v97);
    OUTLINED_FUNCTION_8_1();
    sub_2313CCD50(&qword_27DD4BD48, v51);
    OUTLINED_FUNCTION_31_0();
    sub_2313DB2AC();
    OUTLINED_FUNCTION_31_0();
    sub_2313DB2AC();
    v52 = v108 == v106 && v109 == v107;
    if (v52)
    {
      v55 = *v94;
      (*v94)(v101, v97);
      v55(v100, v97);

LABEL_11:
      OUTLINED_FUNCTION_29_0();
      v57 = *v56;
      v35 = v50;
      (*v56)(v93, v105, v50);
      v58 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2313C45B8(0, *(v102 + 16) + 1, 1);
        v58 = v102;
      }

      v47 = v0;
      v0 = v98;
      v60 = *(v58 + 16);
      v59 = *(v58 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_2313C45B8(v59 > 1, v60 + 1, 1);
        v58 = v102;
      }

      ++v48;
      *(v58 + 16) = v60 + 1;
      v102 = v58;
      OUTLINED_FUNCTION_29_0();
      v57();
    }

    else
    {
      v53 = sub_2313DB39C();
      v54 = *v94;
      (*v94)(v101, v97);
      v54(v100, v97);

      if (v53)
      {
        goto LABEL_11;
      }

      v35 = v50;
      (*v103)(v105, v50);
      ++v48;
      v47 = v0;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);

  (*v103)(v104, v35);

  __break(1u);
}

uint64_t sub_2313C9FC4()
{
  v0 = sub_2313DB1BC();
  v41 = *(v0 - 8);
  v1 = *(v41 + 64);
  MEMORY[0x28223BE20](v0);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD58, &unk_2313DC020);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v37 - v4;
  v5 = sub_2313DACFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD60, &qword_2313DC380);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v39 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v37 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  sub_2313DB0BC();
  v23 = sub_2313DB1AC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
  {
    sub_2313CC3B4(v13, &qword_27DD4BD30, &qword_2313DC000);
    v24 = 1;
  }

  else
  {
    sub_2313DB17C();
    (*(*(v23 - 8) + 8))(v13, v23);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v24, 1, v0);
  v25 = swift_allocObject();
  (*(v6 + 104))(v9, *MEMORY[0x277D60F08], v5);
  v26 = sub_2313DACEC();
  v28 = v27;
  (*(v6 + 8))(v9, v5);
  v25[2] = v26;
  v25[3] = v28;
  v25[4] = 0xD000000000000017;
  v25[5] = 0x80000002313DDF40;
  *v20 = v25;
  v29 = v41;
  (*(v41 + 104))(v20, *MEMORY[0x277D72D28], v0);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v0);
  v30 = *(v40 + 48);
  v31 = v42;
  sub_2313CC354(v22, v42, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313CC354(v20, v31 + v30, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v31, 1, v0) != 1)
  {
    v33 = v39;
    sub_2313CC354(v31, v39, &qword_27DD4BD60, &qword_2313DC380);
    if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v0) != 1)
    {
      v34 = v38;
      (*(v29 + 32))(v38, v31 + v30, v0);
      sub_2313CCD50(&qword_27DD4BD68, MEMORY[0x277D72D58]);
      v32 = sub_2313DB20C();
      v35 = *(v29 + 8);
      v35(v34, v0);
      sub_2313CC3B4(v20, &qword_27DD4BD60, &qword_2313DC380);
      sub_2313CC3B4(v22, &qword_27DD4BD60, &qword_2313DC380);
      v35(v39, v0);
      sub_2313CC3B4(v31, &qword_27DD4BD60, &qword_2313DC380);
      return v32 & 1;
    }

    sub_2313CC3B4(v20, &qword_27DD4BD60, &qword_2313DC380);
    sub_2313CC3B4(v22, &qword_27DD4BD60, &qword_2313DC380);
    (*(v29 + 8))(v33, v0);
    goto LABEL_9;
  }

  sub_2313CC3B4(v20, &qword_27DD4BD60, &qword_2313DC380);
  sub_2313CC3B4(v22, &qword_27DD4BD60, &qword_2313DC380);
  if (__swift_getEnumTagSinglePayload(v31 + v30, 1, v0) != 1)
  {
LABEL_9:
    sub_2313CC3B4(v31, &qword_27DD4BD58, &unk_2313DC020);
    v32 = 0;
    return v32 & 1;
  }

  sub_2313CC3B4(v31, &qword_27DD4BD60, &qword_2313DC380);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_2313CA5F8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2313CCD9C;

  return sub_2313C9534(v6, a2);
}

uint64_t sub_2313CA690(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v31 = v1;
    v32 = MEMORY[0x277D84F90];
    sub_2313C4598(0, v4, 0);
    v5 = 32;
    v6 = v32;
    v7 = "GEOPOICategoryStore";
    v8 = "GEOPOICategoryPark";
    v9 = 0xD000000000000013;
    v10 = "GEOPOICategoryFitnessCenter";
    v11 = 0xD000000000000012;
    v12 = "GEOPOICategoryAirport";
    v13 = "GEOPOICategoryNightlife";
    v14 = 0xD000000000000015;
    v15 = "AudiobookAppEntity";
    do
    {
      v16 = "GEOPOICategoryFoodMarket";
      v17 = 0xD000000000000018;
      switch(*(a1 + v5))
      {
        case 1:
          v16 = v7;
          break;
        case 2:
          v17 = v9;
          v16 = v8;
          break;
        case 3:
          v17 = v11;
          v16 = v10;
          break;
        case 4:
          v17 = 0xD00000000000001BLL;
          v16 = v12;
          break;
        case 5:
          v17 = v14;
          v16 = v13;
          break;
        case 6:
          v17 = 0xD000000000000017;
          v16 = v15;
          break;
        default:
          break;
      }

      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        v24 = v13;
        v25 = v12;
        v22 = v15;
        v23 = v14;
        v29 = v8;
        v30 = v7;
        v27 = v10;
        v28 = v9;
        v26 = v11;
        sub_2313C4598((v18 > 1), v19 + 1, 1);
        v15 = v22;
        v14 = v23;
        v13 = v24;
        v12 = v25;
        v11 = v26;
        v10 = v27;
        v9 = v28;
        v8 = v29;
        v7 = v30;
      }

      *(v32 + 16) = v19 + 1;
      v20 = v32 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16 | 0x8000000000000000;
      ++v5;
      --v4;
    }

    while (v4);

    v2 = v31;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v6;
  return v2;
}

uint64_t sub_2313CA898(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_10_1();
}

uint64_t sub_2313CA8B0()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0[17];
  v2 = v1[3];
  v0[20] = v2;
  v0[21] = v1[4];
  v0[22] = __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v3 = sub_2313DAD1C();
  v5 = v4;
  v0[23] = v3;
  ObjectType = swift_getObjectType();
  v7 = *(MEMORY[0x277D61330] + 4);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_2313CA998;

  return MEMORY[0x2821C7770](v0 + 2, ObjectType, v5);
}

uint64_t sub_2313CA998()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v7 = *v0;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2313CAAA4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_2313DAD1C();
  v6 = v5;
  v0[25] = v4;
  v0[26] = v5;
  v0[27] = swift_getObjectType();
  v7 = v0[5];
  v8 = v0[6];
  v9 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v7);
  v0[10] = v7;
  v0[11] = *(v8 + 8);
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v0 + 7);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_2Tm, v9, v7);
  v11 = *(*(v6 + 8) + 8);
  v13 = sub_2313DB2DC();

  return MEMORY[0x2822009F8](sub_2313CABA8, v13, v12);
}

uint64_t sub_2313CABA8()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  sub_2313DB04C();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v4 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2313CAC3C()
{
  OUTLINED_FUNCTION_8();
  if (v0[15])
  {
    sub_2313DB02C();
    v1 = swift_dynamicCast();
    v2 = v0[16];
    if (v1)
    {
      v3 = v0[16];
    }
  }

  else
  {
    sub_2313CC3B4((v0 + 12), &qword_27DD4BDD8, &qword_2313DC390);
  }

  v4 = v0[18];
  v5 = v0[19];
  sub_2313CAD10();
  v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v8 = v0[1];

  return v8(v7 & 1);
}

void sub_2313CAD10()
{
  OUTLINED_FUNCTION_20_0();
  v211 = v2;
  v4 = v3;
  v5 = sub_2313DB15C();
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_4_2(v12 - v11);
  v194 = sub_2313DB14C();
  v13 = OUTLINED_FUNCTION_3_1(v194);
  v193 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_4_2(v18 - v17);
  v219 = sub_2313DB08C();
  v19 = OUTLINED_FUNCTION_3_1(v219);
  v210 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_2();
  v218 = v23;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_1();
  v214 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDA0, &qword_2313DC078);
  OUTLINED_FUNCTION_7(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_12_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD30, &qword_2313DC000);
  OUTLINED_FUNCTION_7(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_4_2(v35);
  v204 = sub_2313DB1AC();
  v36 = OUTLINED_FUNCTION_3_1(v204);
  v200 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_4_2(v41);
  v42 = sub_2313DB0EC();
  v43 = OUTLINED_FUNCTION_3_1(v42);
  v220 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_18_1();
  v221 = v48;
  OUTLINED_FUNCTION_11_1();
  v49 = sub_2313DAC3C();
  v50 = OUTLINED_FUNCTION_3_1(v49);
  v217 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v55 - v54);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDE0, &qword_2313DC398);
  v56 = OUTLINED_FUNCTION_27_0(v216);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_2();
  v215 = v59;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_23_1();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDE8, &qword_2313DC3A0);
  v62 = OUTLINED_FUNCTION_7(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_35_0();
  v213 = v66;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_35_0();
  v69 = v68;
  OUTLINED_FUNCTION_6_1();
  v71 = MEMORY[0x28223BE20](v70);
  v73 = &v190 - v72;
  MEMORY[0x28223BE20](v71);
  v75 = &v190 - v74;
  v191 = v0;
  v197 = v5;
  v196 = v8;
  v205 = v42;
  if (v4)
  {
    sub_2313DAFFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDF8, &qword_2313DC3A8);
    v76 = swift_dynamicCast() ^ 1;
    v77 = v75;
  }

  else
  {
    v77 = &v190 - v74;
    v76 = 1;
  }

  __swift_storeEnumTagSinglePayload(v77, v76, 1, v49);
  v78 = *MEMORY[0x277D60B30];
  v212 = *(v217 + 104);
  v212(v73, v78, v49);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v49);
  v79 = v216;
  v80 = *(v216 + 48);
  OUTLINED_FUNCTION_37();
  sub_2313CC354(v81, v82, v83, v84);
  OUTLINED_FUNCTION_37();
  v85 = v49;
  sub_2313CC354(v86, v87, v88, v89);
  OUTLINED_FUNCTION_13_1(v1);
  if (v91)
  {
    sub_2313CC3B4(v73, &qword_27DD4BDE8, &qword_2313DC3A0);
    OUTLINED_FUNCTION_19_1(v1 + v80, 1, v49);
    if (v91)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v90 = v69;
  sub_2313CC354(v1, v69, &qword_27DD4BDE8, &qword_2313DC3A0);
  OUTLINED_FUNCTION_19_1(v1 + v80, 1, v49);
  if (v91)
  {
    sub_2313CC3B4(v73, &qword_27DD4BDE8, &qword_2313DC3A0);
    (*(v217 + 8))(v69, v49);
LABEL_12:
    sub_2313CC3B4(v1, &qword_27DD4BDE0, &qword_2313DC398);
LABEL_13:
    v92 = v213;
    v212(v213, *MEMORY[0x277D60B40], v85);
    __swift_storeEnumTagSinglePayload(v92, 0, 1, v85);
    v93 = *(v79 + 48);
    v94 = v215;
    OUTLINED_FUNCTION_37();
    sub_2313CC354(v95, v96, v97, v98);
    OUTLINED_FUNCTION_37();
    sub_2313CC354(v99, v100, v101, v102);
    OUTLINED_FUNCTION_13_1(v94);
    if (!v91)
    {
      sub_2313CC354(v94, v208, &qword_27DD4BDE8, &qword_2313DC3A0);
      OUTLINED_FUNCTION_13_1(v94 + v93);
      if (!v103)
      {
        v114 = v217;
        v115 = v209;
        (*(v217 + 32))(v209, v94 + v93, v49);
        OUTLINED_FUNCTION_9_1();
        sub_2313CCD50(v116, v117);
        v118 = sub_2313DB20C();
        v119 = *(v114 + 8);
        (v119)(v115, v49);
        sub_2313CC3B4(v92, &qword_27DD4BDE8, &qword_2313DC3A0);
        v120 = OUTLINED_FUNCTION_30_0();
        v119(v120);
        sub_2313CC3B4(v94, &qword_27DD4BDE8, &qword_2313DC3A0);
        if (v118)
        {
          goto LABEL_27;
        }

LABEL_49:
        sub_2313CC3B4(v75, &qword_27DD4BDE8, &qword_2313DC3A0);
        OUTLINED_FUNCTION_21_0();
        return;
      }

      sub_2313CC3B4(v92, &qword_27DD4BDE8, &qword_2313DC3A0);
      v104 = *(v217 + 8);
      v105 = OUTLINED_FUNCTION_30_0();
      v106(v105);
LABEL_22:
      sub_2313CC3B4(v94, &qword_27DD4BDE0, &qword_2313DC398);
      goto LABEL_49;
    }

    sub_2313CC3B4(v92, &qword_27DD4BDE8, &qword_2313DC3A0);
    OUTLINED_FUNCTION_13_1(v94 + v93);
    if (!v91)
    {
      goto LABEL_22;
    }

    v1 = v94;
LABEL_18:
    sub_2313CC3B4(v1, &qword_27DD4BDE8, &qword_2313DC3A0);
    goto LABEL_27;
  }

  v107 = v217;
  v108 = v209;
  (*(v217 + 32))(v209, v1 + v80, v49);
  OUTLINED_FUNCTION_9_1();
  sub_2313CCD50(v109, v110);
  v206 = v90;
  v111 = sub_2313DB20C();
  v112 = *(v107 + 8);
  v113 = v108;
  v79 = v216;
  v112(v113, v49);
  sub_2313CC3B4(v73, &qword_27DD4BDE8, &qword_2313DC3A0);
  v112(v206, v49);
  v85 = v49;
  sub_2313CC3B4(v1, &qword_27DD4BDE8, &qword_2313DC3A0);
  if ((v111 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_27:
  v201 = v75;
  v121 = v211[4];
  __swift_project_boxed_opaque_existential_1Tm(v211, v211[3]);
  sub_2313DAD3C();
  v122 = sub_2313DB2CC();

  v123 = 0;
  v217 = *(v122 + 16);
  v213 = v220 + 16;
  LODWORD(v212) = *MEMORY[0x277D1EA90];
  v124 = v210++;
  v211 = v124 + 13;
  v209 = (v220 + 8);
  v206 = (v220 + 32);
  v208 = MEMORY[0x277D84F90];
  v125 = v218;
  v126 = v205;
LABEL_28:
  v127 = v219;
  while (1)
  {
    if (v217 == v123)
    {

      v146 = v202;
      sub_2313BCD08(v208, v202);

      OUTLINED_FUNCTION_19_1(v146, 1, v126);
      if (v91)
      {
        sub_2313CC3B4(v146, &qword_27DD4BDA0, &qword_2313DC078);
        v149 = v203;
        v147 = OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v147, v148, 1, v204);
        v75 = v201;
      }

      else
      {
        v149 = v203;
        sub_2313DB0BC();
        (*v209)(v146, v126);
        v150 = OUTLINED_FUNCTION_29();
        v151 = v204;
        OUTLINED_FUNCTION_19_1(v150, v152, v204);
        v75 = v201;
        if (!v153)
        {
          v154 = v200;
          v155 = v199;
          (*(v200 + 32))(v199, v149, v151);
          v156 = v198;
          (*(v154 + 16))(v198, v155, v151);
          v157 = (*(v154 + 88))(v156, v151);
          if (v157 == *MEMORY[0x277D72A58])
          {
            (*(v154 + 96))(v156, v151);
            v158 = *v156;
            v159 = swift_projectBox();
            v160 = v196;
            v161 = v195;
            (*(v196 + 16))(v195, v159, v197);
            v162 = v160[11];
            v163 = OUTLINED_FUNCTION_39();
            if (v164(v163) == *MEMORY[0x277D729D0])
            {
              v165 = v160[12];
              v166 = OUTLINED_FUNCTION_39();
              v167(v166);
              v168 = v193;
              v169 = v192;
              v170 = v194;
              (*(v193 + 32))(v192, v161, v194);

              v171 = sub_2313DB13C();
              v172 = sub_2313CC4D8(v171);
              if (v173)
              {
                v174 = *(v191 + 16);
                v225 = v172;
                v226 = v173;
                MEMORY[0x28223BE20](v172);
                *(&v190 - 2) = &v225;
                sub_2313CC130(sub_2313CC574, (&v190 - 4), v175);
                (*(v168 + 8))(v169, v170);
                v176 = *(v154 + 8);
                v177 = OUTLINED_FUNCTION_21_1();
                v178(v177);
              }

              else
              {
                (*(v168 + 8))(v169, v170);
                v187 = *(v154 + 8);
                v188 = OUTLINED_FUNCTION_21_1();
                v189(v188);
              }

              v75 = v201;
            }

            else
            {
              v181 = *(v154 + 8);
              v182 = OUTLINED_FUNCTION_21_1();
              v183(v182);
              v184 = v160[1];
              v185 = OUTLINED_FUNCTION_39();
              v186(v185);
            }
          }

          else
          {
            v179 = *(v154 + 8);
            v180 = OUTLINED_FUNCTION_21_1();
            v179(v180);
            (v179)(v156, v151);
          }

          goto LABEL_49;
        }
      }

      sub_2313CC3B4(v149, &qword_27DD4BD30, &qword_2313DC000);
      goto LABEL_49;
    }

    if (v123 >= *(v122 + 16))
    {
      break;
    }

    v128 = v122;
    v216 = (*(v220 + 80) + 32) & ~*(v220 + 80);
    v215 = *(v220 + 72);
    v129 = v122 + v216 + v215 * v123;
    v130 = v126;
    (*(v220 + 16))(v221, v129, v126);
    sub_2313DB0CC();
    (*v211)(v125, v212, v127);
    OUTLINED_FUNCTION_8_1();
    sub_2313CCD50(&qword_27DD4BD48, v131);
    OUTLINED_FUNCTION_18();
    sub_2313DB2AC();
    OUTLINED_FUNCTION_18();
    sub_2313DB2AC();
    if (v225 == v222 && v226 == v223)
    {
      v138 = *v210;
      (*v210)(v125, v127);
      v139 = OUTLINED_FUNCTION_21_1();
      (v138)(v139);

LABEL_38:
      v140 = *v206;
      v126 = v130;
      (*v206)(v207, v221, v130);
      v141 = v208;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v224 = v141;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2313C45B8(0, *(v141 + 16) + 1, 1);
        v141 = v224;
      }

      v125 = v218;
      v122 = v128;
      v143 = v216;
      v145 = *(v141 + 16);
      v144 = *(v141 + 24);
      if (v145 >= v144 >> 1)
      {
        sub_2313C45B8(v144 > 1, v145 + 1, 1);
        v141 = v224;
      }

      ++v123;
      *(v141 + 16) = v145 + 1;
      v208 = v141;
      v140(v141 + v143 + v145 * v215, v207, v126);
      goto LABEL_28;
    }

    v133 = sub_2313DB39C();
    v134 = v125;
    v135 = v133;
    v136 = *v210;
    (*v210)(v134, v127);
    v137 = OUTLINED_FUNCTION_21_1();
    (v136)(v137);

    if (v135)
    {
      goto LABEL_38;
    }

    v126 = v130;
    (*v209)(v221, v130);
    ++v123;
    v125 = v218;
    v127 = v219;
    v122 = v128;
  }

  __break(1u);
}

uint64_t sub_2313CBD54()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2313CBDB0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2313CBE58;

  return sub_2313CA898(a1, a2);
}

uint64_t sub_2313CBE58()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_2313CBF50()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  v2 = sub_2313DAACC();
  v1[3] = v2;
  OUTLINED_FUNCTION_0_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_13();
  v6 = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2313CBFF4()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2313DAABC();
  v5 = OUTLINED_FUNCTION_34_0();
  sub_2313CC594(v5);
  v6 = OUTLINED_FUNCTION_5_1();
  v7(v6);

  v8 = OUTLINED_FUNCTION_14_1();

  return v9(v8);
}

uint64_t sub_2313CC0A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2313CCD9C;

  return sub_2313CBF50();
}

BOOL sub_2313CC130(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_2313CC1E0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = a4(0);
    OUTLINED_FUNCTION_0_0(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_2313CC2D4(uint64_t (*a1)(void))
{
  v2 = *(*(a1(0) - 8) + 80);
  v3 = *(v1 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v1, 32, 7);
}

uint64_t sub_2313CC354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_27_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2313CC3B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_27_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2313CC40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2313DB39C() & 1;
  }
}

uint64_t sub_2313CC450(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = OUTLINED_FUNCTION_39();
  sub_2313CCD50(v3, v4);
  return sub_2313DB20C() & 1;
}

uint64_t sub_2313CC4D8(void *a1)
{
  v2 = [a1 category];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2313DB21C();

  return v3;
}

uint64_t sub_2313CC594(uint64_t a1)
{
  v50 = a1;
  v1 = sub_2313DB10C();
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = &v45 - v5;
  v6 = sub_2313DAADC();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2313DAAFC();
  v10 = *(v9 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2313DAAAC();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2313DAACC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v50, v19);
  sub_2313DAAEC();
  (*(v20 + 8))(v23, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE00, &qword_2313DC3B8);
  v24 = *(v10 + 72);
  v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2313DB7D0;
  v27 = v26 + v25;
  v28 = *(v11 + 104);
  v28(v27, *MEMORY[0x277D55780], v9);
  v28(v27 + v24, *MEMORY[0x277D55778], v9);
  sub_2313DAA9C();
  v56 = v14;
  LOBYTE(v19) = sub_2313CC1E0(sub_2313CCC88, v55, v26, MEMORY[0x277D55788]);
  swift_setDeallocating();
  sub_2313CC2D4(MEMORY[0x277D55788]);
  (*(v11 + 8))(v14, v9);
  if ((v19 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE08, &unk_2313DC3C0);
    v29 = v48;
    v30 = *(v48 + 72);
    v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2313DC140;
    v33 = v32 + v31;
    v34 = *(v29 + 104);
    v34(v33, *MEMORY[0x277D556F8], v6);
    v34(v33 + v30, *MEMORY[0x277D55708], v6);
    v34(v33 + 2 * v30, *MEMORY[0x277D556F0], v6);
    v34(v33 + 3 * v30, *MEMORY[0x277D55700], v6);
    v35 = v47;
    v36 = sub_2313DAA8C();
    MEMORY[0x28223BE20](v36);
    *(&v45 - 2) = v35;
    v37 = sub_2313CC1E0(sub_2313CCCEC, (&v45 - 4), v32, MEMORY[0x277D55710]);
    swift_setDeallocating();
    sub_2313CC2D4(MEMORY[0x277D55710]);
    (*(v29 + 8))(v35, v6);
    if (!v37)
    {
      v38 = v46;
      sub_2313DAF9C();
      v39 = sub_2313DB0FC();
      v43 = sub_2313DB2EC();
      if (!os_log_type_enabled(v39, v43))
      {
        v42 = 1;
        goto LABEL_9;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2313B9000, v39, v43, "MusicSubscriptionFilter:: user has music subscription - returns true", v41, 2u);
      v42 = 1;
      goto LABEL_8;
    }
  }

  v38 = v49;
  sub_2313DAF9C();
  v39 = sub_2313DB0FC();
  v40 = sub_2313DB2EC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2313B9000, v39, v40, "MusicSubscriptionFilter:: no valid music subscription - returns false", v41, 2u);
    v42 = 0;
LABEL_8:
    MEMORY[0x23192C7B0](v41, -1, -1);
    goto LABEL_9;
  }

  v42 = 0;
LABEL_9:

  (*(v53 + 8))(v38, v54);
  (*(v51 + 8))(v18, v52);
  return v42;
}

uint64_t sub_2313CCD50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_20_1()
{
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];

  return sub_2313DA98C();
}

uint64_t sub_2313CCF74()
{
  v0 = sub_2313DB3AC();

  v1 = 0;
  result = 70;
  switch(v0)
  {
    case 0:
      goto LABEL_125;
    case 1:
      v1 = 1;
      goto LABEL_125;
    case 2:
      v1 = 2;
      goto LABEL_125;
    case 3:
      v1 = 3;
      goto LABEL_125;
    case 4:
      v1 = 4;
      goto LABEL_125;
    case 5:
      v1 = 5;
      goto LABEL_125;
    case 6:
      v1 = 6;
      goto LABEL_125;
    case 7:
      v1 = 7;
      goto LABEL_125;
    case 8:
      v1 = 8;
      goto LABEL_125;
    case 9:
      v1 = 9;
      goto LABEL_125;
    case 10:
      v1 = 10;
      goto LABEL_125;
    case 11:
      v1 = 11;
      goto LABEL_125;
    case 12:
      v1 = 12;
      goto LABEL_125;
    case 13:
      v1 = 13;
      goto LABEL_125;
    case 14:
      v1 = 14;
      goto LABEL_125;
    case 15:
      v1 = 15;
      goto LABEL_125;
    case 16:
      v1 = 16;
      goto LABEL_125;
    case 17:
      v1 = 17;
      goto LABEL_125;
    case 18:
      v1 = 18;
      goto LABEL_125;
    case 19:
      v1 = 19;
      goto LABEL_125;
    case 20:
      v1 = 20;
      goto LABEL_125;
    case 21:
      v1 = 21;
      goto LABEL_125;
    case 22:
      v1 = 22;
      goto LABEL_125;
    case 23:
      v1 = 23;
      goto LABEL_125;
    case 24:
      v1 = 24;
      goto LABEL_125;
    case 25:
      v1 = 25;
      goto LABEL_125;
    case 26:
      v1 = 26;
      goto LABEL_125;
    case 27:
      v1 = 27;
      goto LABEL_125;
    case 28:
      v1 = 28;
      goto LABEL_125;
    case 29:
      v1 = 29;
      goto LABEL_125;
    case 30:
      v1 = 30;
      goto LABEL_125;
    case 31:
      v1 = 31;
      goto LABEL_125;
    case 32:
      v1 = 32;
      goto LABEL_125;
    case 33:
      v1 = 33;
      goto LABEL_125;
    case 34:
      v1 = 34;
      goto LABEL_125;
    case 35:
      v1 = 35;
      goto LABEL_125;
    case 36:
      v1 = 36;
      goto LABEL_125;
    case 37:
      v1 = 37;
      goto LABEL_125;
    case 38:
      v1 = 38;
      goto LABEL_125;
    case 39:
      v1 = 39;
      goto LABEL_125;
    case 40:
      v1 = 40;
      goto LABEL_125;
    case 41:
      v1 = 41;
      goto LABEL_125;
    case 42:
      v1 = 42;
      goto LABEL_125;
    case 43:
      v1 = 43;
      goto LABEL_125;
    case 44:
      v1 = 44;
      goto LABEL_125;
    case 45:
      v1 = 45;
      goto LABEL_125;
    case 46:
      v1 = 46;
      goto LABEL_125;
    case 47:
      v1 = 47;
      goto LABEL_125;
    case 48:
      v1 = 48;
      goto LABEL_125;
    case 49:
      v1 = 49;
      goto LABEL_125;
    case 50:
      v1 = 50;
      goto LABEL_125;
    case 51:
      v1 = 51;
      goto LABEL_125;
    case 52:
      v1 = 52;
      goto LABEL_125;
    case 53:
      v1 = 53;
      goto LABEL_125;
    case 54:
      v1 = 54;
      goto LABEL_125;
    case 55:
      v1 = 55;
      goto LABEL_125;
    case 56:
      v1 = 56;
      goto LABEL_125;
    case 57:
      v1 = 57;
      goto LABEL_125;
    case 58:
      v1 = 58;
      goto LABEL_125;
    case 59:
      v1 = 59;
      goto LABEL_125;
    case 60:
      v1 = 60;
      goto LABEL_125;
    case 61:
      v1 = 61;
      goto LABEL_125;
    case 62:
      v1 = 62;
      goto LABEL_125;
    case 63:
      v1 = 63;
      goto LABEL_125;
    case 64:
      v1 = 64;
      goto LABEL_125;
    case 65:
      v1 = 65;
      goto LABEL_125;
    case 66:
      v1 = 66;
      goto LABEL_125;
    case 67:
      v1 = 67;
      goto LABEL_125;
    case 68:
      v1 = 68;
      goto LABEL_125;
    case 69:
      v1 = 69;
LABEL_125:
      result = v1;
      break;
    case 70:
      return result;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v0 - 128) >= 0x23)
      {
        result = 4294967203;
      }

      else
      {
        result = v0;
      }

      break;
  }

  return result;
}

void sub_2313CD3F4(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v6 = sub_2313DACFC();
  v7 = OUTLINED_FUNCTION_3_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_0();
  v14 = v13 - v12;
  if ((a2 - 119) <= 1u)
  {
    sub_2313D3CC4(0x4E676E6974746573, 0xEB00000000656D61, a1, &v59);
    if (v60)
    {
      if (swift_dynamicCast())
      {
        v16 = v57;
        v15 = v58;
        v17 = v58 == 0xE800000000000000;
        if (v57 == 0x656E616C70726961 && v58 == 0xE800000000000000)
        {
          goto LABEL_16;
        }

LABEL_15:
        if (OUTLINED_FUNCTION_14_2())
        {
LABEL_16:

          OUTLINED_FUNCTION_26_2();
          v29 = 0xD000000000000024;
          goto LABEL_20;
        }

        if (v16 == 0x7265776F50776F6CLL && v17 || (OUTLINED_FUNCTION_14_2() & 1) != 0)
        {
          goto LABEL_19;
        }

        v38 = v16 == 0x746F6F7465756C62 && v15 == 0xE900000000000068;
        if (v38 || (OUTLINED_FUNCTION_14_2() & 1) != 0)
        {

          OUTLINED_FUNCTION_26_2();
          v29 = 0xD000000000000020;
          goto LABEL_20;
        }

        v39 = v16 == 0x72616C756C6C6563 && v15 == 0xEC00000061746144;
        if (v39 || (OUTLINED_FUNCTION_14_2() & 1) != 0)
        {

          OUTLINED_FUNCTION_26_2();
          v29 = 0xD00000000000001FLL;
          goto LABEL_20;
        }

        v40 = v16 == 0x6E61726165707061 && v15 == 0xEA00000000006563;
        if (v40 || (OUTLINED_FUNCTION_14_2() & 1) != 0 || (v16 == 0x696853746867696ELL ? (v41 = v15 == 0xEA00000000007466) : (v41 = 0), v41 || (OUTLINED_FUNCTION_14_2() & 1) != 0 || (v16 == 0x656E746867697262 ? (v42 = v15 == 0xEA00000000007373) : (v42 = 0), v42 || (OUTLINED_FUNCTION_14_2() & 1) != 0)))
        {
LABEL_19:

          OUTLINED_FUNCTION_26_2();
          v29 = 0xD00000000000001ELL;
          goto LABEL_20;
        }

        v43 = v16 == 6581860 && v15 == 0xE300000000000000;
        if (!v43 && (OUTLINED_FUNCTION_14_2() & 1) == 0)
        {
          v44 = v16 == 0xD000000000000014 && 0x80000002313DE300 == v15;
          if (v44 || (OUTLINED_FUNCTION_14_2() & 1) != 0)
          {
            goto LABEL_16;
          }

          v45 = v16 == 0x746F7073746F68 && v15 == 0xE700000000000000;
          if (v45 || (OUTLINED_FUNCTION_14_2() & 1) != 0)
          {

            OUTLINED_FUNCTION_26_2();
            v29 = 0xD000000000000027;
            goto LABEL_20;
          }

          v46 = v16 == 0x656D756C6F76 && v15 == 0xE600000000000000;
          if (!v46 && (OUTLINED_FUNCTION_14_2() & 1) == 0)
          {
            v47 = v16 == 1768319351 && v15 == 0xE400000000000000;
            if (!v47 && (OUTLINED_FUNCTION_14_2() & 1) == 0)
            {
              v48 = v16 == 0x67696C6873616C66 && v15 == 0xEA00000000007468;
              if (v48 || (OUTLINED_FUNCTION_14_2() & 1) != 0)
              {

                v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE20, &qword_2313DC408) + 48);
                OUTLINED_FUNCTION_26_2();
                *a3 = 0xD000000000000012;
                a3[1] = v50;
                v51 = sub_2313DAF4C();
                __swift_storeEnumTagSinglePayload(a3 + v49, 1, 1, v51);
                v30 = MEMORY[0x277D61230];
              }

              else
              {
                if (v16 == 0x63696F5669726973 && v15 == 0xE900000000000065)
                {
                }

                else
                {
                  v53 = OUTLINED_FUNCTION_14_2();

                  if ((v53 & 1) == 0)
                  {
                    v37 = sub_2313DAF5C();
                    v34 = a3;
                    v35 = 1;
                    v36 = 1;
                    goto LABEL_22;
                  }
                }

                (*(v9 + 104))(v14, *MEMORY[0x277D60E90], v6);
                v54 = sub_2313DACEC();
                v56 = v55;
                (*(v9 + 8))(v14, v6);
                *a3 = v54;
                a3[1] = v56;
                v30 = MEMORY[0x277D61238];
              }

LABEL_21:
              v31 = *v30;
              v32 = sub_2313DAF5C();
              OUTLINED_FUNCTION_27_0(v32);
              (*(v33 + 104))(a3, v31, v32);
              v34 = OUTLINED_FUNCTION_71();
LABEL_22:
              __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
              OUTLINED_FUNCTION_21_0();
              return;
            }

            OUTLINED_FUNCTION_26_2();
            v29 = 0xD00000000000001BLL;
LABEL_20:
            *a3 = v29;
            a3[1] = v28;
            v30 = MEMORY[0x277D61220];
            goto LABEL_21;
          }
        }

        OUTLINED_FUNCTION_26_2();
        v29 = 0xD00000000000001CLL;
        goto LABEL_20;
      }
    }

    else
    {
      sub_2313CC3B4(&v59, &qword_27DD4BDD8, &qword_2313DC390);
    }

    v17 = 0;
    v16 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_15;
  }

  *a3 = sub_2313CE638(a2);
  a3[1] = v19;
  v20 = *MEMORY[0x277D61238];
  v21 = sub_2313DAF5C();
  OUTLINED_FUNCTION_27_0(v21);
  (*(v22 + 104))(a3, v20, v21);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_21_0();

  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t sub_2313CDA6C(char a1)
{
  result = 0x704F5F736B6F6F42;
  switch(a1)
  {
    case 1:
      result = 0x6C505F736B6F6F42;
      break;
    case 2:
    case 29:
    case 40:
    case 48:
    case 50:
    case 57:
    case 69:
    case 73:
    case 76:
    case 97:
    case 118:
    case -99:
      OUTLINED_FUNCTION_70();
      result = v16 - 3;
      break;
    case 3:
    case 14:
    case 30:
    case 64:
    case 65:
    case 78:
    case 80:
    case 83:
    case 109:
      OUTLINED_FUNCTION_70();
      result = v15 + 2;
      break;
    case 4:
    case 20:
    case 45:
    case 54:
    case 62:
    case 88:
    case 101:
    case -123:
    case -118:
    case -115:
    case -109:
    case -101:
    case -98:
      OUTLINED_FUNCTION_70();
      result = v18 - 2;
      break;
    case 5:
    case 6:
    case 17:
    case 27:
    case 43:
    case 44:
    case 49:
    case 60:
    case 71:
    case 81:
    case 96:
    case 110:
    case -125:
    case -120:
    case -116:
    case -113:
    case -110:
    case -103:
      OUTLINED_FUNCTION_70();
      result = v8 + 1;
      break;
    case 7:
    case 23:
    case 42:
    case -105:
      OUTLINED_FUNCTION_70();
      result = v4 + 10;
      break;
    case 8:
    case 10:
    case 19:
    case 21:
    case 31:
    case 114:
    case 125:
    case -119:
      OUTLINED_FUNCTION_70();
      result = v13 + 3;
      break;
    case 9:
    case 11:
    case 13:
    case 16:
    case 61:
    case 108:
    case 115:
    case -127:
    case -126:
    case -124:
    case -122:
    case -112:
    case -108:
    case -102:
      OUTLINED_FUNCTION_70();
      result = v14 | 4;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 15:
    case 18:
    case 63:
    case 77:
    case 85:
    case 103:
    case 120:
    case -111:
    case -97:
      OUTLINED_FUNCTION_70();
      result = v17 + 6;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x72475F73656C6946;
      break;
    case 25:
    case 26:
      result = 0x65535F73656C6946;
      break;
    case 28:
      result = 0x69485F73656C6946;
      break;
    case 32:
    case 107:
    case 116:
    case 119:
    case -114:
      OUTLINED_FUNCTION_70();
      result = v9 + 5;
      break;
    case 33:
      result = 0xD000000000000013;
      break;
    case 34:
    case 35:
    case 37:
      result = 0x5F7373656E746946;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 38:
    case 51:
    case 94:
    case 100:
    case 126:
    case -128:
      OUTLINED_FUNCTION_70();
      result = v11 | 8;
      break;
    case 39:
      result = 0x4C5F68746C616548;
      break;
    case 41:
      result = 0x545F68746C616548;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000013;
      break;
    case 52:
      result = 0x6165525F6C69614DLL;
      break;
    case 53:
      result = 0x616C465F6C69614DLL;
      break;
    case 55:
      result = 0x7465475F6C69614DLL;
      break;
    case 56:
      result = 0xD000000000000013;
      break;
    case 58:
      result = 0x726E555F6C69614DLL;
      break;
    case 59:
      result = 0xD000000000000013;
      break;
    case 66:
      result = 0xD000000000000013;
      break;
    case 67:
      result = 0xD000000000000013;
      break;
    case 68:
    case 70:
    case 82:
    case 87:
    case 92:
    case 93:
    case 95:
    case 102:
    case 123:
    case 127:
      OUTLINED_FUNCTION_70();
      result = v7 - 1;
      break;
    case 72:
    case 112:
    case 117:
    case -117:
      OUTLINED_FUNCTION_70();
      result = v12 + 7;
      break;
    case 74:
      v3 = 0x545F7377654ELL;
      goto LABEL_24;
    case 75:
      result = 0x6565465F7377654ELL;
      break;
    case 79:
      result = 0x6165525F7377654ELL;
      break;
    case 84:
    case 104:
    case -104:
      OUTLINED_FUNCTION_70();
      result = v10 + 11;
      break;
    case 86:
      result = 0xD000000000000013;
      break;
    case 89:
    case 91:
      result = 0x435F736F746F6850;
      break;
    case 90:
      result = 0xD000000000000013;
      break;
    case 98:
      result = 0xD000000000000013;
      break;
    case 99:
    case -107:
      OUTLINED_FUNCTION_70();
      result = v6 + 9;
      break;
    case 105:
      result = 0xD000000000000013;
      break;
    case 106:
      result = 0x4E5F697261666153;
      break;
    case 111:
      result = 0xD000000000000013;
      break;
    case 113:
      result = 0xD000000000000013;
      break;
    case 121:
    case 124:
      result = 0x4D5F736B636F7453;
      break;
    case 122:
      result = 0x465F736B636F7453;
      break;
    case -121:
      result = 0xD000000000000013;
      break;
    case -106:
      OUTLINED_FUNCTION_70();
      result = v5 + 14;
      break;
    case -100:
      result = 0xD000000000000013;
      break;
    case -96:
      result = 0x74726F70535F5654;
      break;
    case -95:
      v3 = 0x6168535F5654;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
      break;
    case -94:
      result = 0x47776F68535F5654;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2313CE638(unsigned __int8 a1)
{
  v2 = sub_2313DACFC();
  v3 = OUTLINED_FUNCTION_3_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_0();
  v10 = v9 - v8;
  (*(v5 + 104))(v9 - v8, **(&unk_278908E80 + (a1 ^ 0x80u)), v2);
  v11 = sub_2313DACEC();
  (*(v5 + 8))(v10, v2);
  return v11;
}

void sub_2313CE730(char *a1)
{
  v2 = sub_2313DA9BC();
  v3 = OUTLINED_FUNCTION_3_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v130 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v122 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v122 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v122 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v122 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v122 - v26;
  MEMORY[0x28223BE20](v25);
  v34 = &v122 - v33;
  switch(a1)
  {
    case 119:
    case 120:
    case -126:
    case -113:
    case -110:
    case -109:
    case -106:
    case -105:
    case -101:
    case -98:
    case -97:
      goto LABEL_18;
    case 121:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      v35 = *(v5 + 72);
      v36 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      *(swift_allocObject() + 16) = xmmword_2313DC3E0;
      sub_2313DA9AC();
      OUTLINED_FUNCTION_63();
      sub_2313DA9AC();
      OUTLINED_FUNCTION_38();
LABEL_22:
      sub_2313DA9AC();
      goto LABEL_81;
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -112:
    case -111:
    case -108:
    case -107:
    case -104:
    case -103:
    case -102:
    case -100:
    case -96:
    case -95:
      goto LABEL_14;
    case -114:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      v73 = *(v5 + 72);
      v74 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_2313DC3D0;
      v122 = v75;
      v76 = (v75 + v74);
      sub_2313DA9AC();
      sub_2313DA9AC();
      sub_2313DA9AC();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_83();
      sub_2313DA9AC();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_82();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_63();
      sub_2313DA9AC();
      OUTLINED_FUNCTION_83();
      sub_2313DA9AC();
      sub_2313DA9AC();
      v126 = v76;
      sub_2313DA9AC();
      v77 = sub_2313DAEEC();
      v78 = 0;
      v128 = *(v77 + 16);
      v129 = v77;
      v124 = v74;
      v125 = v77 + v74;
      OUTLINED_FUNCTION_79();
      v79 = MEMORY[0x277D84F90];
LABEL_47:
      while (2)
      {
        if (v78 == v128)
        {
          goto LABEL_80;
        }

        if (v78 < *(v129 + 16))
        {
          (*(v5 + 16))(v12, v125 + v78 * v73, v2);
          ++v78;
          OUTLINED_FUNCTION_4_3();
          sub_2313D64E0(&qword_27DD4BEF8, v80);
          v81 = 14;
          v82 = v126;
          while (--v81)
          {
            v83 = v82 + v73;
            OUTLINED_FUNCTION_64();
            v84 = sub_2313DB20C();
            v82 = v83;
            if (v84)
            {
              (*v123)(v12, v2);
              goto LABEL_47;
            }
          }

          v85 = *v127;
          (*v127)(v130, v12, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v131 = v79;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_68();
            v79 = v131;
          }

          v88 = *(v79 + 16);
          v87 = *(v79 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_2313C4540(v87 > 1, v88 + 1, 1);
            v79 = v131;
          }

          *(v79 + 16) = v88 + 1;
          v85(v79 + v124 + v88 * v73, v130, v2);
          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_83;
    case -99:
      v127 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      v41 = *(v5 + 72);
      OUTLINED_FUNCTION_39_0();
      *(swift_allocObject() + 16) = xmmword_2313DB7C0;
      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_69();
      v42 = sub_2313DAEEC();
      v43 = 0;
      v44 = (v5 + 8);
      v45 = a1;
      v46 = &a1[OUTLINED_FUNCTION_65(v42)];
      v47 = MEMORY[0x277D84F90];
      v125 = v46;
      while (2)
      {
        v48 = v41;
        v49 = &v46[v41 * v43];
LABEL_25:
        if (v129 == v43)
        {
          goto LABEL_80;
        }

        if (v43 < *(v130 + 2))
        {
          (*v34)(v20, v49, v2);
          OUTLINED_FUNCTION_4_3();
          sub_2313D64E0(&qword_27DD4BEF8, v50);
          OUTLINED_FUNCTION_64();
          if ((sub_2313DB20C() & 1) == 0)
          {
            v51 = *v126;
            (*v126)(v127, v20, v2);
            v52 = swift_isUniquelyReferenced_nonNull_native();
            v131 = v47;
            if ((v52 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_1();
              v51 = v47;
              v47 = v131;
            }

            v54 = *(v47 + 16);
            v53 = *(v47 + 24);
            v55 = v54 + 1;
            if (v54 >= v53 >> 1)
            {
              OUTLINED_FUNCTION_16_1(v53);
              OUTLINED_FUNCTION_60();
            }

            ++v43;
            *(v47 + 16) = v55;
            v56 = &v45[v47 + v54 * v48];
            v41 = v48;
            v51(v56, v127, v2);
            v46 = v125;
            continue;
          }

          (*v44)(v20, v2);
          v49 += v48;
          ++v43;
          goto LABEL_25;
        }

        break;
      }

LABEL_83:
      __break(1u);
      goto LABEL_84;
    case -94:
      v127 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      v57 = *(v5 + 72);
      OUTLINED_FUNCTION_39_0();
      *(swift_allocObject() + 16) = xmmword_2313DB7C0;
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_69();
      v58 = sub_2313DAEEC();
      v59 = 0;
      v60 = (v5 + 8);
      v61 = a1;
      v62 = &a1[OUTLINED_FUNCTION_65(v58)];
      v63 = MEMORY[0x277D84F90];
      v125 = v62;
      while (2)
      {
        v64 = v57;
        v65 = &v62[v57 * v59];
LABEL_36:
        if (v129 == v59)
        {
          goto LABEL_80;
        }

        if (v59 < *(v130 + 2))
        {
          (*v34)(v16, v65, v2);
          OUTLINED_FUNCTION_4_3();
          sub_2313D64E0(&qword_27DD4BEF8, v66);
          OUTLINED_FUNCTION_64();
          if ((sub_2313DB20C() & 1) == 0)
          {
            v67 = *v126;
            (*v126)(v127, v16, v2);
            v68 = swift_isUniquelyReferenced_nonNull_native();
            v131 = v63;
            if ((v68 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_1();
              v67 = v63;
              v63 = v131;
            }

            v70 = *(v63 + 16);
            v69 = *(v63 + 24);
            v71 = v70 + 1;
            if (v70 >= v69 >> 1)
            {
              OUTLINED_FUNCTION_16_1(v69);
              OUTLINED_FUNCTION_60();
            }

            ++v59;
            *(v63 + 16) = v71;
            v72 = &v61[v63 + v70 * v64];
            v57 = v64;
            v67(v72, v127, v2);
            v62 = v125;
            continue;
          }

          (*v60)(v16, v2);
          v65 += v64;
          ++v59;
          goto LABEL_36;
        }

        break;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    default:
      if (!(!v29 & v28))
      {
        switch(a1)
        {
          case '0':
          case '1':
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
            v39 = *(v5 + 72);
            v40 = (*(v5 + 80) + 32) & ~*(v5 + 80);
            *(swift_allocObject() + 16) = xmmword_2313DB7C0;
            goto LABEL_22;
          case '2':
          case '3':
          case '5':
          case '6':
          case '7':
          case '8':
            goto LABEL_14;
          case '4':
          case '9':
          case ':':
            goto LABEL_18;
          default:
            goto LABEL_87;
        }
      }

      if (a1 - 8 < 2)
      {
        goto LABEL_18;
      }

      if (a1 == 66)
      {
        goto LABEL_14;
      }

      if (a1 != 67)
      {
        if (a1 != 86 && a1 != 102)
        {
          if (a1 == 105)
          {
            v128 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
            v89 = *(v5 + 72);
            OUTLINED_FUNCTION_39_0();
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_2313DC140;
            v122 = v90;
            v91 = &a1[v90];
            sub_2313DA9AC();
            sub_2313DA9AC();
            OUTLINED_FUNCTION_82();
            v126 = v91;
            sub_2313DA9AC();
            v92 = sub_2313DAEEC();
            v93 = 0;
            v94 = *(v92 + 16);
            v129 = v92;
            v130 = v94;
            v124 = a1;
            v125 = &a1[v92];
            OUTLINED_FUNCTION_79();
            v95 = MEMORY[0x277D84F90];
LABEL_58:
            while (v93 != v130)
            {
              if (v93 >= *(v129 + 16))
              {
LABEL_85:
                __break(1u);
LABEL_86:
                __break(1u);
LABEL_87:
                JUMPOUT(0);
              }

              (*(v5 + 16))(v24, v125 + v93++ * v89, v2);
              OUTLINED_FUNCTION_4_3();
              sub_2313D64E0(&qword_27DD4BEF8, v96);
              v97 = 5;
              v98 = v126;
              while (--v97)
              {
                v99 = v98 + v89;
                OUTLINED_FUNCTION_64();
                v100 = sub_2313DB20C();
                v98 = v99;
                if (v100)
                {
                  (*v123)(v24, v2);
                  goto LABEL_58;
                }
              }

              v101 = *v127;
              (*v127)(v128, v24, v2);
              v102 = swift_isUniquelyReferenced_nonNull_native();
              v131 = v95;
              if ((v102 & 1) == 0)
              {
                OUTLINED_FUNCTION_68();
                v95 = v131;
              }

              v104 = *(v95 + 16);
              v103 = *(v95 + 24);
              if (v104 >= v103 >> 1)
              {
                sub_2313C4540(v103 > 1, v104 + 1, 1);
                v95 = v131;
              }

              *(v95 + 16) = v104 + 1;
              v101(v95 + v124 + v104 * v89, v128, v2);
            }

            goto LABEL_80;
          }

          if (a1 != 104)
          {
LABEL_14:
            OUTLINED_FUNCTION_21_0();

            sub_2313DAEFC();
            return;
          }
        }

LABEL_18:
        OUTLINED_FUNCTION_21_0();

        sub_2313DAEEC();
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDB8, &unk_2313DC0A0);
      v105 = *(v5 + 72);
      OUTLINED_FUNCTION_39_0();
      *(swift_allocObject() + 16) = xmmword_2313DB7C0;
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_69();
      v106 = sub_2313DAEEC();
      v107 = 0;
      v108 = *(v106 + 16);
      v129 = v106;
      v130 = v108;
      v109 = (v5 + 16);
      v126 = (v5 + 32);
      v127 = a1;
      v110 = (v5 + 8);
      v111 = &a1[v106];
      v112 = MEMORY[0x277D84F90];
      v125 = v111;
LABEL_70:
      v113 = v105;
      v114 = &v111[v105 * v107];
      while (v130 != v107)
      {
        if (v107 >= *(v129 + 16))
        {
          goto LABEL_86;
        }

        (*v109)(v34, v114, v2);
        OUTLINED_FUNCTION_4_3();
        sub_2313D64E0(&qword_27DD4BEF8, v115);
        OUTLINED_FUNCTION_64();
        if ((sub_2313DB20C() & 1) == 0)
        {
          v116 = *v126;
          (*v126)(v27, v34, v2);
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v131 = v112;
          if ((v117 & 1) == 0)
          {
            OUTLINED_FUNCTION_22_1();
            v116 = v112;
            v112 = v131;
          }

          v119 = *(v112 + 16);
          v118 = *(v112 + 24);
          v120 = v119 + 1;
          if (v119 >= v118 >> 1)
          {
            OUTLINED_FUNCTION_16_1(v118);
            OUTLINED_FUNCTION_60();
          }

          ++v107;
          *(v112 + 16) = v120;
          v121 = &v127[v112 + v119 * v113];
          v105 = v113;
          v116(v121, v27, v2);
          v111 = v125;
          goto LABEL_70;
        }

        (*v110)(v34, v2);
        v114 += v113;
        ++v107;
      }

LABEL_80:
      swift_setDeallocating();
      sub_2313CC2BC();

LABEL_81:
      OUTLINED_FUNCTION_21_0();
      return;
  }
}

__n128 *sub_2313CF4B4(unsigned __int8 a1)
{
  if (a1 - 131 <= 0x1F && (((1 << (a1 + 125)) & 0x61F1) != 0 || ((1 << (a1 + 125)) & 0x18000) != 0 || ((1 << (a1 + 125)) & 0x80001000) != 0) || (v3 = a1 - 65, a1 - 65 <= 0x3F) && (((1 << v3) & 0x8000010000001091) != 0 || ((1 << v3) & 0x40000000200000) != 0) || a1 <= 0x3Fu && ((1 << a1) & 0x8003000000400005) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
    OUTLINED_FUNCTION_66();
    v4 = sub_2313DABAC();
    OUTLINED_FUNCTION_3_1(v4);
    v13 = *(v12 + 72);
    OUTLINED_FUNCTION_34_1();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_78(v7, xmmword_2313DB7D0);
    v14 = *MEMORY[0x277D609A8];
    v15 = OUTLINED_FUNCTION_33_1();
    v2(v15);
    v11 = *MEMORY[0x277D60998];
    v10 = v1 + v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
    OUTLINED_FUNCTION_66();
    v4 = sub_2313DABAC();
    OUTLINED_FUNCTION_3_1(v4);
    v6 = *(v5 + 72);
    OUTLINED_FUNCTION_34_1();
    v7 = OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_78(v7, xmmword_2313DC3E0);
    v8 = *MEMORY[0x277D609A8];
    v9 = OUTLINED_FUNCTION_33_1();
    v2(v9);
    (v2)(v1 + v6, *MEMORY[0x277D60998], v4);
    v10 = v1 + 2 * v6;
    v11 = *MEMORY[0x277D60988];
  }

  (v2)(v10, v11, v4);
  return v7;
}

void sub_2313CF704(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2313DAB4C();
  OUTLINED_FUNCTION_3_1(v4);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_0();
  switch(a1)
  {
    case 102:
    case 105:
    case -119:
      sub_2313D643C(0, &qword_27DD4BED8, 0x277CD4058);
      sub_2313DAB3C();
      v20 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v20, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case 103:
    case 104:
LABEL_27:
      sub_2313D643C(0, &qword_27DD4BEC8, 0x277CD3A18);
      sub_2313DAB3C();
      v19 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v19, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -124:
    case -123:
    case -122:
    case -118:
    case -116:
    case -115:
    case -112:
    case -111:
    case -108:
    case -107:
    case -100:
      goto LABEL_24;
    case 119:
    case 120:
    case -126:
    case -125:
    case -120:
    case -114:
    case -110:
    case -109:
    case -101:
    case -99:
    case -98:
      goto LABEL_18;
    case -121:
    case -105:
      sub_2313DB07C();
      sub_2313DAB3C();
      v18 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v18, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case -117:
      sub_2313D643C(0, &qword_27DD4BED0, 0x277CD3EC0);
      sub_2313DAB3C();
      v17 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v17, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case -113:
      goto LABEL_11;
    case -106:
    case -104:
    case -103:
    case -102:
      v11 = MEMORY[0x277D60888];
      *(a2 + 24) = v4;
      *(a2 + 32) = v11;
      v30 = v10;
      goto LABEL_19;
    default:
      if (!(!v9 & v8))
      {
        switch(a1)
        {
          case '9':
          case ':':
          case 'A':
          case 'C':
            goto LABEL_18;
          case ';':
          case '<':
          case '=':
          case '>':
          case '?':
          case '@':
            goto LABEL_24;
          case 'B':
            goto LABEL_27;
          default:
            JUMPOUT(0);
        }
      }

      if (!a1)
      {
        goto LABEL_18;
      }

      v30 = v10;
      if (a1 == 8)
      {
        v21 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v21;
        __swift_allocate_boxed_opaque_existential_2Tm(a2);
        OUTLINED_FUNCTION_26_2();
        v24 = 0xD000000000000028;
LABEL_29:
        *v22 = v24;
        v22[1] = v23;
        v15 = *MEMORY[0x277D60868];
        v16 = *(v30 + 104);
        goto LABEL_21;
      }

      if (a1 == 87)
      {
        v25 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v25;
        boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(a2);
        v31 = sub_2313CE638(0x57u);
        v32 = v27;

        MEMORY[0x23192C330](0xD000000000000012, 0x80000002313DE4C0);

        *boxed_opaque_existential_2Tm = v31;
        boxed_opaque_existential_2Tm[1] = v32;
        v28 = MEMORY[0x277D60878];
        goto LABEL_20;
      }

      if (a1 != 13)
      {
        if (a1 != 49 && a1 != 52 && a1 != 86)
        {
          if (a1 != 9)
          {
LABEL_24:
            *(a2 + 32) = 0;
            *a2 = 0u;
            *(a2 + 16) = 0u;
            return;
          }

          v12 = MEMORY[0x277D60888];
          *(a2 + 24) = v4;
          *(a2 + 32) = v12;
          __swift_allocate_boxed_opaque_existential_2Tm(a2);
          OUTLINED_FUNCTION_26_2();
          v24 = 0xD000000000000029;
          goto LABEL_29;
        }

LABEL_18:
        v30 = v10;
        v13 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v13;
LABEL_19:
        boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(a2);
        *boxed_opaque_existential_2Tm = sub_2313CDA6C(a1);
        boxed_opaque_existential_2Tm[1] = v14;
        v28 = MEMORY[0x277D60880];
LABEL_20:
        v15 = *v28;
        v16 = *(v30 + 104);
        v22 = boxed_opaque_existential_2Tm;
LABEL_21:

        v16(v22, v15, v4);
        return;
      }

LABEL_11:
      sub_2313D643C(0, &qword_27DD4BEC0, 0x277CD4078);
      sub_2313DAB3C();
      v29 = sub_2313DAB6C();
      OUTLINED_FUNCTION_58(v29, MEMORY[0x277D608B0]);
LABEL_30:
      sub_2313DAB5C();
      return;
  }
}

uint64_t sub_2313CFCBC(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
    case 17:
    case 25:
    case 30:
    case 46:
    case 57:
    case 124:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -114:
    case -113:
    case -112:
    case -111:
    case -108:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2313DB7D0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v2 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v2);
      v3 = qword_27DD4BAA0;

      if (v3 != -1)
      {
        OUTLINED_FUNCTION_2_2();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      goto LABEL_193;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAB8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4BF60;
      goto LABEL_213;
    case 3:
    case 4:
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAB0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4BF48;
      goto LABEL_213;
    case 6:
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAA8 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4BF40;
      goto LABEL_192;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BAC0 != -1)
      {
        OUTLINED_FUNCTION_10_2();
      }

      goto LABEL_158;
    case 10:
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAC0 != -1)
      {
        OUTLINED_FUNCTION_10_2();
      }

      v7 = qword_27DD4BF78;
      goto LABEL_192;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAC8 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4BF80;
      goto LABEL_192;
    case 13:
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_2814B1860 != -1)
      {
        swift_once();
      }

      v7 = qword_2814B1CA0;
      goto LABEL_192;
    case 15:
    case 16:
    case 19:
    case 20:
    case 21:
    case 23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAF8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4BFD0;
      goto LABEL_213;
    case 18:
    case 22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB00 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4BFE8;
      goto LABEL_213;
    case 24:
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAD0 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4BF88;
      goto LABEL_192;
    case 27:
    case 29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAD8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4BF90;
      goto LABEL_213;
    case 28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAE0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4BFA8;
      goto LABEL_213;
    case 31:
    case 33:
    case 35:
    case 36:
    case 37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_2814B1868 != -1)
      {
        OUTLINED_FUNCTION_46();
      }

      v7 = qword_2814B1CA8;
      goto LABEL_192;
    case 32:
    case 34:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_2814B1868 != -1)
      {
        OUTLINED_FUNCTION_46();
      }

      goto LABEL_158;
    case 38:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAE8 != -1)
      {
        OUTLINED_FUNCTION_47();
      }

      v7 = qword_27DD4BFC0;
      goto LABEL_192;
    case 39:
    case 41:
    case 48:
    case 49:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BAE8 != -1)
      {
        OUTLINED_FUNCTION_47();
      }

      goto LABEL_158;
    case 47:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BAF0 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4BFC8;
      goto LABEL_192;
    case 50:
    case 51:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB08 != -1)
      {
        OUTLINED_FUNCTION_42();
      }

      v7 = qword_27DD4C000;
      goto LABEL_192;
    case 52:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v8 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v8);
      v29 = qword_27DD4BAA0;

      if (v29 != -1)
      {
        OUTLINED_FUNCTION_2_2();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v30 = qword_27DD4BB08;

      if (v30 != -1)
      {
        OUTLINED_FUNCTION_42();
      }

      v11 = qword_27DD4C000;
      goto LABEL_162;
    case 53:
    case 54:
    case 55:
    case 56:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB10 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4C008;
      goto LABEL_213;
    case 59:
    case 61:
    case 63:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB20 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4C028;
      goto LABEL_213;
    case 60:
    case 62:
    case 65:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v8 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v8);
      v9 = qword_27DD4BAA0;

      if (v9 != -1)
      {
        OUTLINED_FUNCTION_2_2();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v10 = qword_27DD4BB18;

      if (v10 != -1)
      {
        OUTLINED_FUNCTION_45();
      }

      v11 = qword_27DD4C020;
      goto LABEL_162;
    case 64:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB18 != -1)
      {
        OUTLINED_FUNCTION_45();
      }

      v7 = qword_27DD4C020;
      goto LABEL_192;
    case 66:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB28 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4C040;
      goto LABEL_213;
    case 67:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BB30 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v21 = __swift_project_value_buffer(v20, &unk_27DD4C058);
      *(v1 + 56) = v20;
      *(v1 + 64) = &off_284605830;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm((v1 + 32));
      sub_2313D62F8(v21, boxed_opaque_existential_2Tm);
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v23 = qword_27DD4BF30;
      v8 = sub_2313DB02C();
      *(v1 + 96) = v8;
      *(v1 + 104) = &off_2846057D8;
      *(v1 + 72) = v23;
      v24 = qword_27DD4BAA0;

      if (v24 != -1)
      {
        goto LABEL_149;
      }

      goto LABEL_161;
    case 68:
    case 71:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v8 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v8);
      v16 = qword_27DD4BAA0;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_2_2();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v17 = qword_27DD4BB38;

      if (v17 != -1)
      {
        OUTLINED_FUNCTION_43();
      }

      v11 = qword_27DD4C070;
      goto LABEL_162;
    case 69:
    case 70:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB38 != -1)
      {
        OUTLINED_FUNCTION_43();
      }

      v7 = qword_27DD4C070;
      goto LABEL_192;
    case 72:
    case 73:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB40 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4C078;
      goto LABEL_213;
    case 74:
    case 79:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v8 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v8);
      v14 = qword_27DD4BAA0;

      if (v14 != -1)
      {
        OUTLINED_FUNCTION_2_2();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v15 = qword_27DD4BB48;

      if (v15 != -1)
      {
        OUTLINED_FUNCTION_44();
      }

      v11 = qword_27DD4C090;
      goto LABEL_162;
    case 75:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB48 != -1)
      {
        OUTLINED_FUNCTION_44();
      }

      v7 = qword_27DD4C090;
      goto LABEL_192;
    case 76:
    case 77:
    case 78:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB50 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4C098;
      goto LABEL_213;
    case 80:
    case 82:
    case 85:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB60 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4C0B8;
      goto LABEL_213;
    case 81:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB68 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4C0D0;
      goto LABEL_213;
    case 83:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB70 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4C0E8;
      goto LABEL_213;
    case 84:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB58 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4C0B0;
      goto LABEL_192;
    case 87:
    case 88:
    case 89:
    case 91:
    case 92:
    case 93:
    case 95:
    case 96:
    case 97:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB80 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4C108;
      goto LABEL_213;
    case 90:
    case 94:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v8 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v8);
      v12 = qword_27DD4BAA0;

      if (v12 != -1)
      {
        OUTLINED_FUNCTION_2_2();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v13 = qword_27DD4BB78;

      if (v13 != -1)
      {
        swift_once();
      }

      v11 = qword_27DD4C100;
      goto LABEL_162;
    case 98:
    case 101:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB88 != -1)
      {
        OUTLINED_FUNCTION_41();
      }

      v7 = qword_27DD4C120;
      goto LABEL_192;
    case 99:
    case 100:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BB88 != -1)
      {
        OUTLINED_FUNCTION_41();
      }

LABEL_158:
      v8 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v8);
      v25 = qword_27DD4BA98;

      if (v25 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF30);
      v26 = qword_27DD4BAA0;

      if (v26 != -1)
      {
LABEL_149:
        OUTLINED_FUNCTION_2_2();
      }

LABEL_161:
      v11 = qword_27DD4BF38;
      goto LABEL_162;
    case 102:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2313DC3F0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v31 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v31);
      v32 = qword_27DD4BAA0;

      if (v32 != -1)
      {
        OUTLINED_FUNCTION_2_2();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v33 = qword_27DD4BAC0;

      if (v33 != -1)
      {
        OUTLINED_FUNCTION_10_2();
      }

      v34 = qword_27DD4BF78;
      *(v1 + 136) = v31;
      *(v1 + 144) = &off_2846057D8;
      *(v1 + 112) = v34;
      v35 = qword_27DD4BB98;

      if (v35 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v37 = __swift_project_value_buffer(v36, qword_27DD4C130);
      *(v1 + 176) = v36;
      *(v1 + 184) = &off_284605830;
      v38 = __swift_allocate_boxed_opaque_existential_2Tm((v1 + 152));
      sub_2313D62F8(v37, v38);
      if (qword_27DD4BBA0 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v36, qword_27DD4C148);
      *(v1 + 216) = v36;
      *(v1 + 224) = &off_284605830;
      v40 = (v1 + 192);
      goto LABEL_214;
    case 103:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v8 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v8);
      v18 = qword_27DD4BAA0;

      if (v18 != -1)
      {
        OUTLINED_FUNCTION_2_2();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v19 = qword_27DD4BB90;

      if (v19 != -1)
      {
        OUTLINED_FUNCTION_40();
      }

      v11 = qword_27DD4C128;
      goto LABEL_162;
    case 104:
    case 105:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BB90 != -1)
      {
        OUTLINED_FUNCTION_40();
      }

      v7 = qword_27DD4C128;
      goto LABEL_192;
    case 106:
    case 108:
    case 110:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBA8 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4C160;
      goto LABEL_192;
    case 107:
    case 109:
    case 113:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBB0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4C168;
      goto LABEL_213;
    case 111:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBB8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4C180;
      goto LABEL_213;
    case 112:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBC0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4C198;
      goto LABEL_213;
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_2814B1858 != -1)
      {
        swift_once();
      }

      v7 = qword_2814B1C98;
      goto LABEL_192;
    case 121:
    case 123:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBC8 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4C1B0;
      goto LABEL_192;
    case 122:
    case 125:
    case 126:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBD8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4C1D0;
      goto LABEL_213;
    case 127:
    case -128:
    case -127:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBD0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4C1B8;
LABEL_213:
      v39 = __swift_project_value_buffer(v4, v6);
      *(v1 + 56) = v5;
      *(v1 + 64) = &off_284605830;
      v40 = (v1 + 32);
      goto LABEL_214;
    case -107:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2313DB7D0;
      if (qword_27DD4BBE0 != -1)
      {
        OUTLINED_FUNCTION_11_2();
      }

      v41 = qword_27DD4C1E8;
      *(v1 + 56) = sub_2313DB02C();
      *(v1 + 64) = &off_2846057D8;
      *(v1 + 32) = v41;
      v42 = qword_27DD4BBE8;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v39 = __swift_project_value_buffer(v43, &unk_27DD4C1F0);
      *(v1 + 96) = v43;
      *(v1 + 104) = &off_284605830;
      v40 = (v1 + 72);
LABEL_214:
      v44 = __swift_allocate_boxed_opaque_existential_2Tm(v40);
      sub_2313D62F8(v39, v44);
      return v1;
    case -106:
    case -105:
    case -104:
    case -103:
    case -102:
    case -101:
    case -100:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_27DD4BBE0 != -1)
      {
        OUTLINED_FUNCTION_11_2();
      }

      v7 = qword_27DD4C1E8;
      goto LABEL_192;
    case -99:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_56();
      *(v1 + 16) = xmmword_2313DC3E0;
      if (qword_27DD4BA98 != -1)
      {
        OUTLINED_FUNCTION_1_3();
      }

      v8 = sub_2313DB02C();
      OUTLINED_FUNCTION_29_1(v8);
      v27 = qword_27DD4BAA0;

      if (v27 != -1)
      {
        OUTLINED_FUNCTION_2_2();
      }

      OUTLINED_FUNCTION_28_1(qword_27DD4BF38);
      v28 = qword_27DD4BBE0;

      if (v28 != -1)
      {
        OUTLINED_FUNCTION_11_2();
      }

      v11 = qword_27DD4C1E8;
LABEL_162:
      *(v1 + 136) = v8;
      *(v1 + 144) = &off_2846057D8;
      *(v1 + 112) = v11;
      goto LABEL_193;
    case -96:
    case -95:
    case -94:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEB8, &qword_2313DC458);
      v1 = OUTLINED_FUNCTION_50();
      *(v1 + 16) = xmmword_2313DB7C0;
      if (qword_2814B1850 != -1)
      {
        swift_once();
      }

      v7 = qword_2814B1C90;
LABEL_192:
      *(v1 + 56) = sub_2313DB02C();
      *(v1 + 64) = &off_2846057D8;
      *(v1 + 32) = v7;
LABEL_193:

      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_2313D18D4(unsigned __int8 a1)
{
  if (a1 - 130 > 0x20)
  {
LABEL_4:
    if (a1 - 58 <= 0x3E && ((1 << (a1 - 58)) & 0x6000000010000001) != 0)
    {
      goto LABEL_6;
    }

    if (a1 - 8 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
      OUTLINED_FUNCTION_66();
      v10 = sub_2313DAC4C();
      OUTLINED_FUNCTION_3_1(v10);
      v19 = *(v18 + 72);
      OUTLINED_FUNCTION_34_1();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_78(v9, xmmword_2313DB7D0);
      v20 = *MEMORY[0x277D60B78];
      v21 = OUTLINED_FUNCTION_33_1();
      v2(v21);
      v16 = *MEMORY[0x277D60B98];
      v15 = v1 + v19;
      goto LABEL_9;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
    OUTLINED_FUNCTION_66();
    v10 = sub_2313DAC4C();
    OUTLINED_FUNCTION_3_1(v10);
    v12 = *(v11 + 72);
    OUTLINED_FUNCTION_34_1();
    v9 = OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_78(v9, xmmword_2313DC3E0);
    v13 = *MEMORY[0x277D60B80];
    v14 = OUTLINED_FUNCTION_33_1();
    v2(v14);
    (v2)(v1 + v12, *MEMORY[0x277D60B78], v10);
    v15 = v1 + 2 * v12;
    v16 = *MEMORY[0x277D60B98];
LABEL_9:
    (v2)(v15, v16, v10);
    return v9;
  }

  if (((1 << (a1 + 126)) & 0x30030001) == 0)
  {
    if (((1 << (a1 + 126)) & 0x100003000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
  OUTLINED_FUNCTION_66();
  v3 = sub_2313DAC4C();
  OUTLINED_FUNCTION_3_1(v3);
  v5 = v4;
  v7 = *(v6 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2313DB7C0;
  (*(v5 + 104))(v9 + v8, *MEMORY[0x277D60B80], v3);
  return v9;
}

void sub_2313D1B9C(char a1)
{
  v3 = sub_2313DACFC();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE60, &qword_2313DC418);
  v13 = OUTLINED_FUNCTION_3_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v302 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v302 - v21;
  switch(a1)
  {
    case 107:
    case 109:
    case 113:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v84 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v84, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v85 = OUTLINED_FUNCTION_3_3();
      v86(v85);
      OUTLINED_FUNCTION_54();
      v87 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v87);
      OUTLINED_FUNCTION_76();
      v88 = OUTLINED_FUNCTION_53();
      v89 = *MEMORY[0x277D60EE0];
      v90 = OUTLINED_FUNCTION_7_1();
      v91(v90);
      sub_2313DACEC();
      v92 = OUTLINED_FUNCTION_35_1();
      (*(v6 + 8))(v92, v3);
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2();
      OUTLINED_FUNCTION_80();
      v94 = v93;
      sub_2313C055C(v95, v96, v97, v98, v99, v100);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v103 = sub_2313D64E0(v101, v102);
      v84[2].n128_u64[0] = 0x656C746954626174;
      v84[2].n128_u64[1] = 0xE800000000000000;
      v84[3].n128_u64[0] = v94;
      v84[5].n128_u64[0] = v103;
      v84[5].n128_u64[1] = v88;
      OUTLINED_FUNCTION_23_2();
      v45 = v11;
      goto LABEL_39;
    case 108:
    case 110:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 121:
    case 123:
    case 124:
    case -126:
    case -121:
    case -119:
    case -118:
    case -117:
    case -114:
    case -113:
    case -111:
    case -110:
    case -109:
    case -108:
    case -107:
    case -106:
    case -105:
    case -104:
    case -103:
    case -102:
    case -101:
    case -100:
    case -97:
    case -96:
    case -95:
      goto LABEL_41;
    case 111:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v48 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v48, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v178 = OUTLINED_FUNCTION_3_3();
      v179(v178);
      OUTLINED_FUNCTION_54();
      v180 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v180);
      OUTLINED_FUNCTION_76();
      v52 = OUTLINED_FUNCTION_53();
      v181 = *MEMORY[0x277D60EE0];
      v182 = OUTLINED_FUNCTION_7_1();
      v183(v182);
      sub_2313DACEC();
      OUTLINED_FUNCTION_35_1();
      v56 = v12;
      OUTLINED_FUNCTION_61();
      v184();
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2();
      OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_57(0x6B72616D6B6F6F62, 0xED0000656C746954, v185, v186, v187, v188);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v64 = sub_2313D64E0(v189, v190);
      v48[2].n128_u16[7] = -4864;
      v48[3].n128_u64[0] = v11;
      strcpy(&v48[2], "bookmarkTitle");
LABEL_25:
      v48[5].n128_u64[0] = v64;
      v48[5].n128_u64[1] = v52;
      OUTLINED_FUNCTION_23_2();
      v45 = v11;
      v46 = v56;
      goto LABEL_40;
    case 112:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v202 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v202, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v203 = OUTLINED_FUNCTION_3_3();
      v204(v203);
      OUTLINED_FUNCTION_54();
      v205 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v205);
      OUTLINED_FUNCTION_19_2();
      v312 = v22;
      v207 = v206 + 3;
      OUTLINED_FUNCTION_30_0();
      v310 = OUTLINED_FUNCTION_53();
      v208 = *MEMORY[0x277D60EE0];
      v209 = OUTLINED_FUNCTION_7_1();
      v210(v209);
      v211 = sub_2313DACEC();
      v212 = OUTLINED_FUNCTION_32_1();
      v213(v212);
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2();
      v214 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_57(v214, v215, v216, v217, v218, v219);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v222 = sub_2313D64E0(v220, v221);
      v202[2].n128_u64[1] = 0x80000002313DDE60;
      v202[3].n128_u64[0] = v211;
      v202[2].n128_u64[0] = v207;
      v223 = v310;
      v202[5].n128_u64[0] = v222;
      v202[5].n128_u64[1] = v223;
      OUTLINED_FUNCTION_23_2();
      v45 = v312;
      v46 = v12;
      goto LABEL_40;
    case 119:
    case 120:
      sub_2313DAE3C();
      OUTLINED_FUNCTION_17_1();
      v111 = swift_allocObject();
      *(v111 + 16) = 0x4E676E6974746573;
      *(v111 + 24) = 0xEB00000000656D61;
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
      v321 = v309;
      v308 = sub_2313D6048();
      v322 = v308;
      __swift_allocate_boxed_opaque_existential_2Tm(&v320);
      v306 = sub_2313DAB9C();
      v112 = sub_2313DAC5C();
      v311 = v12;
      v305 = v112;
      sub_2313DAB8C();
      v307 = *(v15 + 16);
      v307(v20, v22, v12);
      sub_2313D60AC(&v320, v314);
      v113 = sub_2313DAD5C();
      v114 = OUTLINED_FUNCTION_52(v113);
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_27_1();
      v115 = type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_17_1();
      v116 = swift_allocObject();
      *(v116 + 16) = 0x4E676E6974746573;
      *(v116 + 24) = 0xEB00000000656D61;
      v317 = v115;
      OUTLINED_FUNCTION_6_2();
      v310 = sub_2313D64E0(v117, v118);
      v318 = v310;
      v314[2] = v116;
      v119 = *(v15 + 8);
      v120 = v311;
      v119(v22, v311);
      v314[0] = 0x4E676E6974746573;
      v314[1] = 0xEB00000000656D61;
      v319 = v114;
      __swift_destroy_boxed_opaque_existential_1Tm(&v320);
      OUTLINED_FUNCTION_17_1();
      v121 = swift_allocObject();
      strcpy((v121 + 16), "settingAction");
      *(v121 + 30) = -4864;
      v321 = v309;
      v322 = v308;
      __swift_allocate_boxed_opaque_existential_2Tm(&v320);
      sub_2313DAB8C();
      sub_2313DAE2C();
      v307(v20, v22, v120);
      sub_2313D60AC(&v320, v313);
      v122 = *(v113 + 48);
      v123 = *(v113 + 52);
      swift_allocObject();
      v124 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_17_1();
      v125 = swift_allocObject();
      strcpy((v125 + 16), "settingAction");
      *(v125 + 30) = -4864;
      v119(v22, v120);
      __swift_destroy_boxed_opaque_existential_1Tm(&v320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_2313DB7D0;
      sub_2313D6290(v314, v126 + 32);
      strcpy((v126 + 96), "settingAction");
      *(v126 + 110) = -4864;
      *(v126 + 112) = v125;
      *(v126 + 120) = v320;
      v127 = v310;
      *(v126 + 136) = v115;
      *(v126 + 144) = v127;
      *(v126 + 152) = v124;
      sub_2313D62C8(v314);
      goto LABEL_41;
    case 122:
    case 125:
    case 126:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v65 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v65, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v66 = OUTLINED_FUNCTION_3_3();
      v67(v66);
      OUTLINED_FUNCTION_54();
      v68 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v68);
      OUTLINED_FUNCTION_73();
      v312 = v22;
      v69 = OUTLINED_FUNCTION_53();
      v70 = *MEMORY[0x277D60EE8];
      v71 = OUTLINED_FUNCTION_7_1();
      v72(v71);
      v73 = sub_2313DACEC();
      v74 = OUTLINED_FUNCTION_32_1();
      v75(v74);
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2();
      v76 = OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_57(v76, 0xEB000000006C6F62, v77, v78, v79, v80);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v83 = sub_2313D64E0(v81, v82);
      v65[2].n128_u64[0] = 0x69546C6F626D7973;
      v65[2].n128_u64[1] = 0xEB00000000656C74;
      v65[3].n128_u64[0] = v73;
      v65[5].n128_u64[0] = v83;
      v65[5].n128_u64[1] = v69;
      OUTLINED_FUNCTION_23_2();
      v45 = v312;
      v46 = v12;
      goto LABEL_40;
    case 127:
    case -127:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v128 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v128, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v312 = v22;
      v129 = OUTLINED_FUNCTION_8_2();
      v130(v129);
      OUTLINED_FUNCTION_54();
      v131 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v131);
      v311 = v12;
      v132 = OUTLINED_FUNCTION_53();
      v133 = *MEMORY[0x277D60EE8];
      v134 = OUTLINED_FUNCTION_7_1();
      v135(v134);
      v136 = sub_2313DACEC();
      v138 = v137;
      v139 = OUTLINED_FUNCTION_32_1();
      v140(v139);
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_2();
      OUTLINED_FUNCTION_18_2();
      v141 = v136;
      v143 = v142;
      sub_2313C055C(0xD000000000000012, 0x80000002313DDE80, v141, v138, v144, v145);
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_0_2();
      v148 = sub_2313D64E0(v146, v147);
      strcpy(&v128[2], "articleTitle");
      v128[2].n128_u8[13] = 0;
      v128[2].n128_u16[7] = -5120;
      v128[3].n128_u64[0] = v143;
      v128[5].n128_u64[0] = v148;
      v128[5].n128_u64[1] = v132;
      __swift_destroy_boxed_opaque_existential_1Tm(v314);
      (*(v15 + 8))(v312, v311);
      goto LABEL_41;
    case -128:
LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v33 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v33, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v34 = OUTLINED_FUNCTION_3_3();
      v35(v34);
      OUTLINED_FUNCTION_54();
      v36 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v36);
      OUTLINED_FUNCTION_19_2();
      v312 = v22;
      v38 = v37 | 6;
      OUTLINED_FUNCTION_30_0();
      v39 = OUTLINED_FUNCTION_53();
      v40 = *MEMORY[0x277D60F30];
      v41 = OUTLINED_FUNCTION_7_1();
      v42(v41);
      sub_2313DACEC();
      OUTLINED_FUNCTION_61();
      v43();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_30_0();
      sub_2313DACDC();

      v33[2].n128_u64[0] = v38;
      v33[2].n128_u64[1] = 0x80000002313DDF20;
      v33[5].n128_u64[1] = v39;
      OUTLINED_FUNCTION_23_2();
      v45 = v312;
      v46 = v12;
      goto LABEL_40;
    case -125:
    case -124:
    case -123:
    case -122:
    case -120:
    case -116:
    case -115:
    case -112:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v23 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v23, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v24 = OUTLINED_FUNCTION_3_3();
      v25(v24);
      OUTLINED_FUNCTION_54();
      v26 = sub_2313DAD5C();
      v27 = OUTLINED_FUNCTION_52(v26);
      v28 = 0x6D614E6563616C70;
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_27_1();
      type metadata accessor for PlaceNameResolver();
      OUTLINED_FUNCTION_17_1();
      v29 = swift_allocObject();
      OUTLINED_FUNCTION_62(v29);
      v30 = &unk_27DD4BE80;
      v31 = type metadata accessor for PlaceNameResolver;
LABEL_3:
      v32 = sub_2313D64E0(v30, v31);
      v23[2].n128_u64[1] = 0xE900000000000065;
      v23[3].n128_u64[0] = v6;
LABEL_36:
      v23[2].n128_u64[0] = v28;
LABEL_37:
      v23[5].n128_u64[0] = v32;
      v23[5].n128_u64[1] = v27;
      goto LABEL_38;
    case -99:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v169 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v169, xmmword_2313DB7C0);
      sub_2313DAE2C();
      sub_2313DAE1C();
      v170 = OUTLINED_FUNCTION_3_3();
      v171(v170);
      OUTLINED_FUNCTION_54();
      v172 = sub_2313DAD5C();
      OUTLINED_FUNCTION_52(v172);
      v173 = OUTLINED_FUNCTION_12_1();
      v174 = type metadata accessor for SunStageResolver();
      swift_allocObject();
      sub_2313C2A7C();
      v176 = v175;
      v169[4].n128_u64[1] = v174;
      v177 = sub_2313D64E0(&qword_27DD4BE88, type metadata accessor for SunStageResolver);
      v169[2].n128_u64[1] = 0xEF65676174536E75;
      v169[3].n128_u64[0] = v176;
      v169[2].n128_u64[0] = 0x5372656874616577;
      v169[5].n128_u64[0] = v177;
      v169[5].n128_u64[1] = v173;
LABEL_38:
      OUTLINED_FUNCTION_23_2();
      v45 = v22;
LABEL_39:
      v46 = v12;
LABEL_40:
      v44(v45, v46);
      goto LABEL_41;
    case -98:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v224 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v224, xmmword_2313DB7C0);
      sub_2313DAE3C();
      OUTLINED_FUNCTION_17_1();
      swift_allocObject();
      OUTLINED_FUNCTION_19_2();
      v226 = v225 - 1;
      *(v227 + 16) = v225 - 1;
      *(v227 + 24) = 0x80000002313DDE20;
      v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
      v316 = sub_2313D6048();
      __swift_allocate_boxed_opaque_existential_2Tm(v314);
      sub_2313DAB9C();
      sub_2313DAC5C();
      sub_2313DAB8C();
      v228 = OUTLINED_FUNCTION_8_2();
      v229(v228, v22, v12);
      OUTLINED_FUNCTION_54();
      v230 = sub_2313DAD5C();
      v231 = OUTLINED_FUNCTION_52(v230);
      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_27_1();
      v232 = type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_17_1();
      v233 = swift_allocObject();
      *(v233 + 16) = v226;
      *(v233 + 24) = 0x80000002313DDE20;
      v224[4].n128_u64[1] = v232;
      OUTLINED_FUNCTION_6_2();
      v236 = sub_2313D64E0(v234, v235);
      v224[2].n128_u64[1] = 0x80000002313DDE20;
      v224[3].n128_u64[0] = v233;
      v224[2].n128_u64[0] = v226;
      v224[5].n128_u64[0] = v236;
      v224[5].n128_u64[1] = v231;
      (*(v15 + 8))(v22, v12);
      goto LABEL_29;
    case -94:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
      v191 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_15_1(v191, xmmword_2313DB7C0);
      sub_2313DAE2C();
      OUTLINED_FUNCTION_17_1();
      v192 = swift_allocObject();
      *(v192 + 16) = 0x7079546569766F6DLL;
      *(v192 + 24) = 0xE900000000000065;
      v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
      v316 = sub_2313D6048();
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v314);
      sub_2313DAB9C();
      sub_2313DAC5C();
      sub_2313DAB8C();
      v194 = OUTLINED_FUNCTION_3_3();
      v195(v194);
      OUTLINED_FUNCTION_54();
      v196 = sub_2313DAD5C();
      v197 = OUTLINED_FUNCTION_52(v196);
      OUTLINED_FUNCTION_36_0();
      sub_2313DAD4C();
      OUTLINED_FUNCTION_27_1();
      type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_17_1();
      v198 = swift_allocObject();
      OUTLINED_FUNCTION_62(v198);
      OUTLINED_FUNCTION_6_2();
      v201 = sub_2313D64E0(v199, v200);
      v191[2].n128_u64[1] = 0xE900000000000065;
      v191[3].n128_u64[0] = boxed_opaque_existential_2Tm;
      v191[2].n128_u64[0] = 0x7079546569766F6DLL;
      v191[5].n128_u64[0] = v201;
      v191[5].n128_u64[1] = v197;
      (*(v15 + 8))(v22, v12);
LABEL_29:
      __swift_destroy_boxed_opaque_existential_1Tm(v314);
LABEL_41:
      OUTLINED_FUNCTION_21_0();
      return;
    default:
      switch(a1)
      {
        case '5':
        case '7':
        case '8':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v23 = OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_15_1(v23, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v104 = OUTLINED_FUNCTION_3_3();
          v105(v104);
          OUTLINED_FUNCTION_54();
          v106 = sub_2313DAD5C();
          v27 = OUTLINED_FUNCTION_52(v106);
          v28 = 0x6E65536C69616D65;
          v107 = 0xEB00000000726564;
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_27_1();
          type metadata accessor for DoNotResolveResolver();
          OUTLINED_FUNCTION_17_1();
          v108 = swift_allocObject();
          OUTLINED_FUNCTION_48(v108);
          OUTLINED_FUNCTION_6_2();
          goto LABEL_35;
        case '6':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v245 = OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_15_1(v245, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v246 = OUTLINED_FUNCTION_3_3();
          v247(v246);
          OUTLINED_FUNCTION_54();
          v248 = sub_2313DAD5C();
          OUTLINED_FUNCTION_52(v248);
          v311 = v12;
          OUTLINED_FUNCTION_76();
          v249 = OUTLINED_FUNCTION_53();
          v250 = *MEMORY[0x277D60E78];
          v251 = OUTLINED_FUNCTION_7_1();
          v252(v251);
          sub_2313DACEC();
          v253 = OUTLINED_FUNCTION_32_1();
          v254(v253);
          type metadata accessor for AppEntityResolver();
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_80();
          v256 = v255;
          sub_2313C055C(v257, v258, v259, v260, 0xD000000000000011, v261);
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_0_2();
          v264 = sub_2313D64E0(v262, v263);
          v245[2].n128_u64[0] = 0x7469546C69616D65;
          v245[2].n128_u64[1] = 0xEA0000000000656CLL;
          v245[3].n128_u64[0] = v256;
          v245[5].n128_u64[0] = v264;
          v245[5].n128_u64[1] = v249;
          OUTLINED_FUNCTION_23_2();
          v45 = v22;
          goto LABEL_33;
        case '9':
        case ':':
        case ';':
        case '<':
        case '=':
        case '>':
        case '@':
        case 'C':
        case 'D':
        case 'F':
        case 'G':
        case 'I':
        case 'J':
        case 'K':
        case 'O':
          goto LABEL_41;
        case '?':
        case 'H':
        case 'M':
        case 'P':
          goto LABEL_5;
        case 'A':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v23 = OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_15_1(v23, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v241 = OUTLINED_FUNCTION_3_3();
          v242(v241);
          OUTLINED_FUNCTION_54();
          v243 = sub_2313DAD5C();
          v27 = OUTLINED_FUNCTION_52(v243);
          v28 = 0x74616E6974736564;
          v107 = 0xEB000000006E6F69;
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_27_1();
          type metadata accessor for DestinationResolver();
          OUTLINED_FUNCTION_17_1();
          v244 = swift_allocObject();
          OUTLINED_FUNCTION_48(v244);
          v109 = &unk_27DD4BEB0;
          v110 = type metadata accessor for DestinationResolver;
          goto LABEL_35;
        case 'B':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v23 = OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_15_1(v23, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v265 = OUTLINED_FUNCTION_3_3();
          v266(v265);
          OUTLINED_FUNCTION_54();
          v267 = sub_2313DAD5C();
          v27 = OUTLINED_FUNCTION_52(v267);
          v28 = 0x61737265766E6F63;
          v107 = 0xEC0000006E6F6974;
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_27_1();
          type metadata accessor for MessagesConversationEntityResolver();
          OUTLINED_FUNCTION_17_1();
          v268 = swift_allocObject();
          OUTLINED_FUNCTION_48(v268);
          v109 = &unk_27DD4BEA8;
          v110 = type metadata accessor for MessagesConversationEntityResolver;
          goto LABEL_35;
        case 'E':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v23 = OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_15_1(v23, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v237 = OUTLINED_FUNCTION_3_3();
          v238(v237);
          OUTLINED_FUNCTION_54();
          v239 = sub_2313DAD5C();
          v27 = OUTLINED_FUNCTION_52(v239);
          v28 = 0x73756F6976657270;
          v107 = 0xEC00000072616559;
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_27_1();
          type metadata accessor for PreviousYearResolver();
          OUTLINED_FUNCTION_17_1();
          v240 = swift_allocObject();
          OUTLINED_FUNCTION_48(v240);
          v109 = &unk_27DD4BEA0;
          v110 = type metadata accessor for PreviousYearResolver;
LABEL_35:
          v32 = sub_2313D64E0(v109, v110);
          v23[2].n128_u64[1] = v107;
          v23[3].n128_u64[0] = v1;
          goto LABEL_36;
        case 'L':
        case 'N':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v149 = OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_15_1(v149, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v311 = v12;
          v150 = OUTLINED_FUNCTION_8_2();
          v151(v150, v22);
          OUTLINED_FUNCTION_54();
          v152 = sub_2313DAD5C();
          OUTLINED_FUNCTION_52(v152);
          OUTLINED_FUNCTION_19_2();
          OUTLINED_FUNCTION_76();
          v153 = OUTLINED_FUNCTION_53();
          v154 = *MEMORY[0x277D60E88];
          v155 = OUTLINED_FUNCTION_7_1();
          v156(v155);
          sub_2313DACEC();
          v157 = OUTLINED_FUNCTION_35_1();
          (*(v6 + 8))(v157, v3);
          type metadata accessor for AppEntityResolver();
          OUTLINED_FUNCTION_21_2();
          OUTLINED_FUNCTION_18_2();
          OUTLINED_FUNCTION_80();
          v159 = v158;
          sub_2313C055C(v160, v161, v162, v163, v164, v165);
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_0_2();
          v168 = sub_2313D64E0(v166, v167);
          strcpy(&v149[2], "articleTitle");
          v149[2].n128_u8[13] = 0;
          v149[2].n128_u16[7] = -5120;
          v149[3].n128_u64[0] = v159;
          v149[5].n128_u64[0] = v168;
          v149[5].n128_u64[1] = v153;
          OUTLINED_FUNCTION_23_2();
          v45 = v11;
LABEL_33:
          v46 = v311;
          goto LABEL_40;
        case 'Q':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
          v23 = OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_15_1(v23, xmmword_2313DB7C0);
          sub_2313DAE2C();
          sub_2313DAE1C();
          v269 = OUTLINED_FUNCTION_3_3();
          v270(v269);
          OUTLINED_FUNCTION_54();
          v271 = sub_2313DAD5C();
          v27 = OUTLINED_FUNCTION_52(v271);
          OUTLINED_FUNCTION_53();
          OUTLINED_FUNCTION_27_1();
          v272 = type metadata accessor for NotesTagAndFolderResolver();
          OUTLINED_FUNCTION_17_1();
          v273 = swift_allocObject();
          *(v273 + 16) = 0xD000000000000011;
          *(v273 + 24) = 0x80000002313DDEC0;
          v23[4].n128_u64[1] = v272;
          v32 = sub_2313D64E0(&qword_27DD4BE98, type metadata accessor for NotesTagAndFolderResolver);
          v23[2].n128_u64[1] = 0x80000002313DDEC0;
          v23[3].n128_u64[0] = v273;
          v23[2].n128_u64[0] = 0xD000000000000011;
          goto LABEL_37;
        default:
          switch(a1)
          {
            case 10:
              goto LABEL_5;
            case 98:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
              v23 = OUTLINED_FUNCTION_55();
              OUTLINED_FUNCTION_15_1(v23, xmmword_2313DB7C0);
              sub_2313DAE2C();
              sub_2313DAE1C();
              v274 = OUTLINED_FUNCTION_3_3();
              v275(v274);
              OUTLINED_FUNCTION_54();
              v276 = sub_2313DAD5C();
              v27 = OUTLINED_FUNCTION_52(v276);
              v28 = 0x6C746954776F6873;
              OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_53();
              OUTLINED_FUNCTION_27_1();
              type metadata accessor for PodcastsShowResolver();
              OUTLINED_FUNCTION_17_1();
              v277 = swift_allocObject();
              OUTLINED_FUNCTION_62(v277);
              v30 = &unk_27DD4BE90;
              v31 = type metadata accessor for PodcastsShowResolver;
              goto LABEL_3;
            case 23:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
              v278 = swift_allocObject();
              OUTLINED_FUNCTION_15_1(v278, xmmword_2313DB7D0);
              sub_2313DAE2C();
              sub_2313DAE1C();
              OUTLINED_FUNCTION_26_2();
              v303 = v279;
              v280 = *(v15 + 16);
              v308 = v15 + 16;
              v309 = v280;
              v280(v20, v22, v12);
              OUTLINED_FUNCTION_54();
              v281 = sub_2313DAD5C();
              OUTLINED_FUNCTION_52(v281);
              OUTLINED_FUNCTION_19_2();
              v310 = v15;
              v311 = v12;
              v283 = v282 | 6;
              v284 = v303;
              v304 = OUTLINED_FUNCTION_53();
              v285 = *MEMORY[0x277D60F30];
              v286 = *(v6 + 104);
              v306 = v6 + 104;
              v307 = v286;
              v286(v11, v285, v3);
              sub_2313DACEC();
              v312 = v22;
              v305 = *(v6 + 8);
              v305(v11, v3);
              OUTLINED_FUNCTION_13_2();
              OUTLINED_FUNCTION_80();
              sub_2313DACDC();

              v278[2].n128_u64[0] = v283;
              v278[2].n128_u64[1] = v284;
              v278[5].n128_u64[1] = v304;
              __swift_destroy_boxed_opaque_existential_1Tm(v314);
              v287 = v311;
              v288 = *(v310 + 8);
              v310 += 8;
              v289 = v312;
              v288(v312, v311);
              sub_2313DAE2C();
              sub_2313DAE1C();
              v309(v20, v289, v287);
              OUTLINED_FUNCTION_54();
              v290 = *(v281 + 48);
              v291 = *(v281 + 52);
              swift_allocObject();
              v292 = OUTLINED_FUNCTION_53();
              v307(v11, *MEMORY[0x277D60F28], v3);
              v293 = sub_2313DACEC();
              v295 = v294;
              v305(v11, v3);
              type metadata accessor for AppEntityResolver();
              OUTLINED_FUNCTION_21_2();
              OUTLINED_FUNCTION_74();
              v298 = sub_2313C055C(0xD000000000000011, 0x80000002313DDE40, v293, v295, v296, v297);
              v278[8].n128_u64[1] = v3;
              OUTLINED_FUNCTION_0_2();
              v301 = sub_2313D64E0(v299, v300);
              v278[6].n128_u64[1] = 0x80000002313DDE40;
              v278[7].n128_u64[0] = v298;
              v278[6].n128_u64[0] = 0xD000000000000011;
              v278[9].n128_u64[0] = v301;
              v278[9].n128_u64[1] = v292;
              __swift_destroy_boxed_opaque_existential_1Tm(v314);
              v288(v289, v311);
              goto LABEL_41;
            case 27:
            case 29:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE68, &qword_2313DC420);
              v48 = OUTLINED_FUNCTION_55();
              OUTLINED_FUNCTION_15_1(v48, xmmword_2313DB7C0);
              sub_2313DAE2C();
              sub_2313DAE1C();
              v49 = OUTLINED_FUNCTION_3_3();
              v50(v49);
              OUTLINED_FUNCTION_54();
              v51 = sub_2313DAD5C();
              OUTLINED_FUNCTION_52(v51);
              v52 = OUTLINED_FUNCTION_53();
              v53 = *MEMORY[0x277D60EB0];
              v54 = OUTLINED_FUNCTION_7_1();
              v55(v54);
              sub_2313DACEC();
              OUTLINED_FUNCTION_35_1();
              v56 = v12;
              OUTLINED_FUNCTION_61();
              v57();
              type metadata accessor for AppEntityResolver();
              OUTLINED_FUNCTION_21_2();
              OUTLINED_FUNCTION_18_2();
              OUTLINED_FUNCTION_57(0x614E7265646C6F66, 0xEA0000000000656DLL, v58, v59, v60, v61);
              OUTLINED_FUNCTION_49();
              OUTLINED_FUNCTION_0_2();
              v64 = sub_2313D64E0(v62, v63);
              v48[2].n128_u64[1] = 0xEA0000000000656DLL;
              v48[3].n128_u64[0] = v11;
              v48[2].n128_u64[0] = 0x614E7265646C6F66;
              goto LABEL_25;
          }

          if (a1 != 13)
          {
            goto LABEL_41;
          }

          goto LABEL_5;
      }
  }
}