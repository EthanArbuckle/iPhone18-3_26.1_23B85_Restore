uint64_t sub_223184F44(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_223185234(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_223185070((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_223185070(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2232006B4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_2232006B4() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

char *sub_223185248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A58, &qword_223214500);
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

uint64_t sub_223185348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2231853C0()
{
  result = qword_27D059888;
  if (!qword_27D059888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059880, &unk_223214380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059888);
  }

  return result;
}

void sub_22318542C()
{
  sub_223185860(319, &qword_280FCE6A8, MEMORY[0x277CC88A8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2231855FC()
{
  sub_2230D525C(319, &qword_280FCA4D8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA440);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_223110900(319, &qword_280FCA458, &qword_27D059880, &unk_223214380);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_223185860(319, &qword_280FCE6A8, MEMORY[0x277CC88A8]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_223110900(319, &qword_280FCA520, &qword_27D0579F0, &qword_223205AD0);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_2230D525C(319, &qword_280FCA330);
        if (v10 > 0x3F)
        {
          return v7;
        }

        sub_223185860(319, &qword_280FCA7B8, type metadata accessor for RequestConjunctionInfo);
        if (v11 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2231858B4();
          v1 = v12;
          if (v13 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA320);
            v1 = v14;
            if (v15 <= 0x3F)
            {
              sub_223185860(319, &qword_280FCA388, type metadata accessor for SMTSuggestionRequestType);
              v1 = v16;
              if (v17 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_223185860(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2231858B4()
{
  if (!qword_280FCA3A0)
  {
    sub_2230FB7F4(255, &qword_280FCA3A8, off_2784D4AB8);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280FCA3A0);
    }
  }
}

uint64_t sub_223185930(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2231FFCC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_25_2()
{

  JUMPOUT(0x223DD5AA0);
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  v4 = *(v2 - 96);
  v5 = *(v2 - 88);
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_33_3()
{
  v4 = *(v2 - 96);
  v5 = *(v2 - 88);
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_35_4()
{
  v4 = *(v2 - 96);
  v5 = *(v2 - 88);
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
}

uint64_t sub_223185A20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F536F69647561 && a2 == 0xEB00000000656372;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002232248C0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7246736579457369 && a2 == 0xEA00000000006565;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x8000000223224740 == a2;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000223224760 == a2;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x8000000223224780 == a2;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4D6E496567726162 && a2 == 0xEC0000007365646FLL;
                if (v12 || (sub_2232006B4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ELL && 0x80000002232248A0 == a2;
                  if (v13 || (sub_2232006B4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000002232247A0 == a2;
                    if (v14 || (sub_2232006B4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x8000000223224880 == a2;
                      if (v15 || (sub_2232006B4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000002232247C0 == a2;
                        if (v16 || (sub_2232006B4() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x8000000223224860 == a2;
                          if (v17 || (sub_2232006B4() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000019 && 0x8000000223224840 == a2;
                            if (v18 || (sub_2232006B4() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x69626D416E497369 && a2 == 0xEB00000000746E65)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_2232006B4();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

unint64_t sub_223185EA8(char a1)
{
  result = 0x756F536F69647561;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x65736E6F70736572;
      break;
    case 3:
      result = 0x7246736579457369;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x4D6E496567726162;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0x69626D416E497369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_223186088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223185A20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231860B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223185EA0();
  *a1 = result;
  return result;
}

uint64_t sub_2231860D8(uint64_t a1)
{
  v2 = sub_2231883B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223186114(uint64_t a1)
{
  v2 = sub_2231883B8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RequestContextMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return RequestContextMessage.init(build:)(v2, v0);
}

void *RequestContextMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v90 = a2;
  v91 = a1;
  ObjectType = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v87 = &v73[-v4];
  v5 = sub_2231FFDA4();
  v6 = OUTLINED_FUNCTION_9(v5);
  v85 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v86 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for RequestContextMessage.Builder(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v15 = 15;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  v16 = v12[8];
  v88 = v5;
  __swift_storeEnumTagSinglePayload(&v15[v16], 1, 1, v5);
  v17 = &v15[v12[9]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v84 = v17;
  v18 = &v15[v12[10]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v15[v12[11]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v76 = v19;
  v20 = &v15[v12[12]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v77 = v20;
  v21 = v12[13];
  v15[v21] = 2;
  v22 = v12[14];
  v15[v22] = 2;
  v23 = v12[15];
  v15[v23] = 2;
  v83 = v12[16];
  v15[v83] = 2;
  v82 = v12[17];
  *&v15[v82] = 0;
  v24 = v12[18];
  v25 = sub_2231FFCC4();
  v81 = v24;
  __swift_storeEnumTagSinglePayload(&v15[v24], 1, 1, v25);
  v26 = v12[19];
  *&v15[v26] = 0;
  v79 = v12[20];
  *&v15[v79] = 0;
  v27 = &v15[v12[21]];
  *v27 = 0;
  v27[4] = 1;
  v78 = v12[22];
  v15[v78] = 2;
  v80 = v12[23];
  v15[v80] = 2;
  v28 = v12[24];
  v15[v28] = 2;
  v91(v15);
  v29 = *v15;
  if (v29 == 15)
  {
    goto LABEL_16;
  }

  v30 = *(v15 + 2);
  if (!v30)
  {
    goto LABEL_16;
  }

  v75 = v28;
  v91 = v30;
  v90 = *(v15 + 1);
  v31 = &v15[v16];
  v32 = v87;
  sub_2230D3008(v31, v87, &qword_27D0575C0, &qword_2232035E0);
  v33 = v88;
  if (__swift_getEnumTagSinglePayload(v32, 1, v88) == 1)
  {
    sub_2230D40E0(v32, &qword_27D0575C0, &qword_2232035E0);
LABEL_16:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v47 = sub_223200014();
    __swift_project_value_buffer(v47, qword_280FCE830);
    v48 = sub_223200004();
    v49 = sub_223200254();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v93 = v51;
      *v50 = 136446210;
      v52 = sub_2230F7898();
      v54 = sub_2231A5D38(v52, v53, &v93);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_2230CE000, v48, v49, "Could not build %{public}s: Builder has missing required fields", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x223DD6780](v51, -1, -1);
      MEMORY[0x223DD6780](v50, -1, -1);
    }

    sub_223186A24(v15);
    type metadata accessor for RequestContextMessage(0);
    v55 = *((*MEMORY[0x277D85000] & *v92) + 0x30);
    v56 = *((*MEMORY[0x277D85000] & *v92) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v74 = v29;
  v34 = v85;
  v35 = v32;
  v36 = v86;
  (*(v85 + 32))(v86, v35, v33);
  v37 = v84;
  v38 = *(v84 + 1);
  if (!v38)
  {
    (*(v34 + 8))(v36, v33);
    goto LABEL_16;
  }

  v39 = v15[v21];
  if (v39 == 2 || (v40 = v15[v22], v41 = v34, v40 == 2) || (v42 = v15[v23], v42 == 2) || (v43 = v15[v83], v43 == 2) || (v44 = *&v15[v82]) == 0 || (v45 = *&v15[v26]) == 0 || (v46 = v86, (v27[4] & 1) != 0))
  {
    (*(v34 + 8))(v86, v33);
    goto LABEL_16;
  }

  v59 = *v18;
  ObjectType = *(v18 + 1);
  v60 = ObjectType;
  v83 = v38;
  v61 = v92;
  v62 = (v92 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioSource);
  *v62 = v59;
  v62[1] = v60;
  v63 = *(v76 + 1);
  v64 = (v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioDestination);
  *v64 = *v76;
  v64[1] = v63;
  v65 = *v77;
  v87 = *(v77 + 1);
  v66 = v87;
  v67 = (v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_responseMode);
  *v67 = v65;
  v67[1] = v66;
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isEyesFree) = v39 & 1;
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isVoiceTriggerEnabled) = v40 & 1;
  v68 = *v37;
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTextToSpeechEnabled) = v42 & 1;
  v69 = *v27;
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTriggerlessFollowup) = v43 & 1;
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_bargeInModes) = v44;
  sub_2230D3008(&v15[v81], v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval, &qword_27D059858, &qword_223214370);
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_deviceRestrictions) = v45;
  v70 = *&v15[v79];
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceTriggerEventInfo) = v70;
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceAudioSessionId) = v69;
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isSystemApertureEnabled) = v15[v78];
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isLiveActivitiesSupported) = v15[v80];
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isInAmbient) = v15[v75];
  MEMORY[0x28223BE20](v70);
  v73[-48] = v74;
  v71 = v91;
  *&v73[-40] = v90;
  *&v73[-32] = v71;
  *&v73[-24] = v46;
  *&v73[-16] = v68;
  *&v73[-8] = v83;

  v57 = RequestMessageBase.init(build:)(sub_22311A588);
  v72 = v57;
  sub_223186A24(v15);
  if (v57)
  {
  }

  (*(v41 + 8))(v46, v88);
  return v57;
}

uint64_t sub_223186A24(uint64_t a1)
{
  v2 = type metadata accessor for RequestContextMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequestContextMessage.init(from:)(uint64_t *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370) - 8) + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  v6 = v68 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059920, &qword_223214540);
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  v14 = v68 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v70 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2231883B8();
  sub_223200794();
  v18 = &qword_280FCDFA0[12];
  if (v1)
  {
    v71 = v1;
    v20 = 0;
    v21 = 0;
    LODWORD(v6) = 0;
    OUTLINED_FUNCTION_5_20();
  }

  else
  {
    v20 = v9;
    LOBYTE(v72[0]) = 0;
    v19 = sub_223200494();
    v31 = v69;
    v32 = (v69 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioSource);
    *v32 = v19;
    v32[1] = v33;
    OUTLINED_FUNCTION_2_29(1);
    v34 = sub_223200494();
    v35 = (v31 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioDestination);
    *v35 = v34;
    v35[1] = v36;
    OUTLINED_FUNCTION_2_29(2);
    v37 = sub_223200494();
    v38 = (v31 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_responseMode);
    *v38 = v37;
    v38[1] = v39;
    OUTLINED_FUNCTION_2_29(3);
    v40 = sub_223200504();
    OUTLINED_FUNCTION_20_10(v40, OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isEyesFree);
    OUTLINED_FUNCTION_2_29(4);
    v41 = sub_223200504();
    OUTLINED_FUNCTION_20_10(v41, OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isVoiceTriggerEnabled);
    OUTLINED_FUNCTION_2_29(5);
    v42 = sub_223200504();
    OUTLINED_FUNCTION_20_10(v42, OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTextToSpeechEnabled);
    OUTLINED_FUNCTION_2_29(6);
    v43 = sub_223200504();
    OUTLINED_FUNCTION_20_10(v43, OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTriggerlessFollowup);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    v73 = 7;
    v68[1] = sub_223165264(&qword_27D058DB8);
    sub_223200554();
    *(v31 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_bargeInModes) = v72[0];
    sub_2231FFCC4();
    LOBYTE(v72[0]) = 8;
    sub_223185930(&qword_27D059928);
    sub_2232004C4();
    v71 = 0;
    sub_2230DA700(v6, v69 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval);
    v73 = 9;
    v21 = v7;
    v44 = v71;
    sub_223200554();
    v71 = v44;
    if (v44)
    {
      v45 = OUTLINED_FUNCTION_9_22();
      v46(v45);
      LODWORD(v7) = 0;
      v17 = 0;
      LOBYTE(v18) = 0;
      OUTLINED_FUNCTION_3_24();
      LODWORD(v14) = 1;
    }

    else
    {
      *(v69 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_deviceRestrictions) = v72[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0579F0, &qword_223205AD0);
      v73 = 10;
      sub_22310C4F4(&qword_27D0579F8);
      v47 = v71;
      sub_223200554();
      v71 = v47;
      if (v47)
      {
        v48 = OUTLINED_FUNCTION_9_22();
        v49(v48);
        v17 = 0;
        LOBYTE(v18) = 0;
        OUTLINED_FUNCTION_3_24();
        LODWORD(v14) = 1;
        LODWORD(v7) = 1;
      }

      else
      {
        *(v69 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceTriggerEventInfo) = v72[0];
        OUTLINED_FUNCTION_7_19(11);
        v50 = sub_2232004E4();
        v71 = 0;
        if ((v50 & 0x100000000) != 0)
        {
          v51 = 0;
        }

        else
        {
          v51 = v50;
        }

        *(v69 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceAudioSessionId) = v51;
        OUTLINED_FUNCTION_7_19(12);
        v52 = v71;
        v53 = sub_2232004A4();
        v71 = v52;
        if (v52)
        {
          goto LABEL_30;
        }

        *(v69 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isSystemApertureEnabled) = v53 & 1;
        OUTLINED_FUNCTION_7_19(13);
        v54 = v71;
        v55 = sub_2232004A4();
        v71 = v54;
        if (v54 || (*(v69 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isLiveActivitiesSupported) = v55 & 1, OUTLINED_FUNCTION_7_19(14), v56 = v71, v57 = sub_2232004A4(), (v71 = v56) != 0))
        {
LABEL_30:
          v58 = OUTLINED_FUNCTION_9_22();
          v59(v58);
          LOBYTE(v18) = 0;
          OUTLINED_FUNCTION_3_24();
          LODWORD(v14) = 1;
          LODWORD(v7) = 1;
          v17 = 1;
        }

        else
        {
          v60 = v57 & 1;
          v61 = v70;
          *(v69 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isInAmbient) = v60;
          sub_2230F7158(v61, v72);
          v62 = v71;
          v63 = RequestMessageBase.init(from:)(v72);
          v71 = v62;
          if (!v62)
          {
            v17 = v63;
            v66 = OUTLINED_FUNCTION_9_22();
            v67(v66);
            __swift_destroy_boxed_opaque_existential_1(v70);
            return v17;
          }

          v64 = OUTLINED_FUNCTION_9_22();
          v65(v64);
          OUTLINED_FUNCTION_3_24();
          LODWORD(v14) = 1;
          LODWORD(v7) = 1;
          v17 = 1;
          LOBYTE(v18) = 1;
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v70);
  if ((v18 & 1) == 0)
  {
    v22 = v69;
    if (v20)
    {
      v27 = *(v69 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioSource + 8);
    }

    if (v21)
    {
      v28 = *(v22 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_responseMode + 8);

      if (!v6)
      {
LABEL_9:
        if (!v14)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if (!v6)
    {
      goto LABEL_9;
    }

    v29 = *(v22 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_bargeInModes);

    if (!v14)
    {
LABEL_10:
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    sub_2230D40E0(v22 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval, &qword_27D059858, &qword_223214370);
    if (!v7)
    {
LABEL_11:
      if (!v17)
      {
LABEL_13:
        type metadata accessor for RequestContextMessage(0);
        v24 = *((*MEMORY[0x277D85000] & *v22) + 0x30);
        v25 = *((*MEMORY[0x277D85000] & *v22) + 0x34);
        swift_deallocPartialClassInstance();
        return v17;
      }

LABEL_12:
      v23 = *(v22 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceTriggerEventInfo);

      goto LABEL_13;
    }

LABEL_18:
    v30 = *(v22 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_deviceRestrictions);

    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return v17;
}

uint64_t sub_223187280(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059930, &qword_223214548);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231883B8();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioSource);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioSource + 8);
  LOBYTE(v27) = 0;
  OUTLINED_FUNCTION_10();
  sub_2232005C4();
  if (!v2)
  {
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioDestination);
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioDestination + 8);
    LOBYTE(v27) = 1;
    OUTLINED_FUNCTION_10();
    sub_2232005C4();
    v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_responseMode);
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_responseMode + 8);
    LOBYTE(v27) = 2;
    OUTLINED_FUNCTION_10();
    sub_2232005C4();
    v19 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isEyesFree);
    OUTLINED_FUNCTION_0_10(3);
    sub_223200604();
    v20 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isVoiceTriggerEnabled);
    OUTLINED_FUNCTION_0_10(4);
    sub_223200604();
    v21 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTextToSpeechEnabled);
    OUTLINED_FUNCTION_0_10(5);
    sub_223200604();
    v22 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTriggerlessFollowup);
    OUTLINED_FUNCTION_0_10(6);
    sub_223200604();
    v27 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_bargeInModes);
    v26 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    sub_223165264(&qword_280FCA460);
    OUTLINED_FUNCTION_1_22();
    v25 = OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval;
    LOBYTE(v27) = 8;
    sub_2231FFCC4();
    sub_223185930(&qword_280FCE6B0);
    OUTLINED_FUNCTION_10();
    sub_2232005E4();
    v27 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_deviceRestrictions);
    v26 = 9;
    OUTLINED_FUNCTION_1_22();
    v27 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceTriggerEventInfo);
    v26 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059890, &unk_223205AF0);
    sub_22310C44C();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    v23 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceAudioSessionId);
    OUTLINED_FUNCTION_0_10(11);
    sub_223200674();
    LOBYTE(v27) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isSystemApertureEnabled);
    v26 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059898, &qword_223214390);
    sub_22318840C();
    OUTLINED_FUNCTION_1_22();
    LOBYTE(v27) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isLiveActivitiesSupported);
    v26 = 13;
    OUTLINED_FUNCTION_1_22();
    LOBYTE(v27) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isInAmbient);
    v26 = 14;
    OUTLINED_FUNCTION_1_22();
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t RequestContextMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for RequestContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RequestContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.audioSource.getter()
{
  v0 = type metadata accessor for RequestContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextMessage.Builder.audioSource.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RequestContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.audioDestination.getter()
{
  v0 = type metadata accessor for RequestContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextMessage.Builder.audioDestination.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RequestContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.responseMode.getter()
{
  v0 = type metadata accessor for RequestContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextMessage.Builder.responseMode.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RequestContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isEyesFree.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isVoiceTriggerEnabled.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isTextToSpeechEnabled.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isTriggerlessFollowup.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.bargeInModes.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContextMessage.Builder(0) + 60));
}

uint64_t RequestContextMessage.Builder.bargeInModes.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_9() + 60);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.deviceRestrictions.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContextMessage.Builder(0) + 68));
}

uint64_t RequestContextMessage.Builder.deviceRestrictions.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_9() + 68);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.voiceTriggerEventInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContextMessage.Builder(0) + 72));
}

uint64_t RequestContextMessage.Builder.voiceTriggerEventInfo.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_9() + 72);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.voiceAudioSessionId.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  v3 = v1 + *(result + 76);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t RequestContextMessage.Builder.isSystemApertureEnabled.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 80)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isLiveActivitiesSupported.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isInAmbient.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 88)) = v0;
  return result;
}

uint64_t sub_22318821C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioSource + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioDestination + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_responseMode + 8);

  v4 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_bargeInModes);

  sub_2230D40E0(v0 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval, &qword_27D059858, &qword_223214370);
  v5 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_deviceRestrictions);

  v6 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceTriggerEventInfo);
}

id RequestContextMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestContextMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231883B8()
{
  result = qword_280FCDEA0;
  if (!qword_280FCDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDEA0);
  }

  return result;
}

unint64_t sub_22318840C()
{
  result = qword_280FCA438;
  if (!qword_280FCA438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059898, &qword_223214390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA438);
  }

  return result;
}

void sub_223188490()
{
  sub_2231887E8(319, &qword_280FCE6A8, MEMORY[0x277CC88A8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2231885E0()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2231887E8(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA440);
      v1 = v7;
      if (v8 <= 0x3F)
      {
        sub_223110900(319, &qword_280FCA458, &qword_27D059880, &unk_223214380);
        if (v10 > 0x3F)
        {
          return v9;
        }

        sub_2231887E8(319, &qword_280FCE6A8, MEMORY[0x277CC88A8]);
        if (v11 <= 0x3F)
        {
          sub_223110900(319, &qword_280FCA520, &qword_27D0579F0, &qword_223205AD0);
          if (v12 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA330);
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }

        return v5;
      }
    }
  }

  return v1;
}

void sub_2231887E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RequestContextMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22318891C()
{
  result = qword_27D059938;
  if (!qword_27D059938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059938);
  }

  return result;
}

unint64_t sub_223188974()
{
  result = qword_280FCDE90;
  if (!qword_280FCDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDE90);
  }

  return result;
}

unint64_t sub_2231889CC()
{
  result = qword_280FCDE98;
  if (!qword_280FCDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDE98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return type metadata accessor for RequestContextMessage.Builder(0);
}

void *RequestMessageBase.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059948, &qword_2232147A0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DCF70();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for RequestMessageBase(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = SessionMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_223188C88(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_223188D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223188C88(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223188D34(uint64_t a1)
{
  v2 = sub_2230DCF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223188D70(uint64_t a1)
{
  v2 = sub_2230DCF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RequestMessageBase.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RequestMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RequestMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RequestMessageBase.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for RequestMessageBase.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

id RequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for RequestMessageBase.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231891A0()
{
  result = qword_27D059950;
  if (!qword_27D059950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059950);
  }

  return result;
}

unint64_t sub_2231891F8()
{
  result = qword_280FCB618;
  if (!qword_280FCB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB618);
  }

  return result;
}

unint64_t sub_223189250()
{
  result = qword_280FCB620;
  if (!qword_280FCB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB620);
  }

  return result;
}

void *RequestSummary.conjunctionInfo.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t RequestSummary.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 56);
  v4 = v0[15];
  sub_223200374();
  MEMORY[0x223DD5AA0](0x747365757165723CLL, 0xEC000000203A6449);
  MEMORY[0x223DD5AA0](v1, v2);
  MEMORY[0x223DD5AA0](0x726573753C202C3ELL, 0xEF203A7475706E49);
  v7 = *(v0 + 1);
  v9 = *(v0 + 2);
  OUTLINED_FUNCTION_31_3();
  MEMORY[0x223DD5AA0](0xD000000000000014, 0x8000000223224CD0);
  v8 = *(v0 + 3);
  v10 = *(v0 + 4);
  v11 = *(v0 + 5);
  v12 = *(v0 + 6);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_45_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598A0, &qword_223214398);
  v5 = sub_223200104();
  MEMORY[0x223DD5AA0](v5);

  MEMORY[0x223DD5AA0](10558, 0xE200000000000000);
  return 0;
}

uint64_t _s16SiriMessageTypes14RequestSummaryV15routingDecisionAA09NLRoutinggB0C07RoutingG0OSgvg_0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 128), 0x41uLL);
  memcpy(a1, (v1 + 128), 0x41uLL);
  return sub_2230E3D68(__dst, &v4, &qword_27D057DC8, &qword_22320E730);
}

BOOL static RequestSummary.UserInput.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  if (!v2)
  {
    if (!v6)
    {
      sub_22318DFEC(*a1, 0);
      v36 = v5;
      v37 = 0;
      goto LABEL_19;
    }

LABEL_15:
    v21 = OUTLINED_FUNCTION_7_20();
    sub_2230E3DD8(v21, v22);
    v23 = OUTLINED_FUNCTION_2_30();
    sub_2230E3DD8(v23, v24);
    v25 = OUTLINED_FUNCTION_2_30();
    sub_22318DFEC(v25, v26);
    v27 = OUTLINED_FUNCTION_7_20();
    sub_22318DFEC(v27, v28);
    return 0;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  if (*a1 != v5 || v2 != v6)
  {
    v10 = *a1;
    OUTLINED_FUNCTION_17_8();
    if ((sub_2232006B4() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v4 != v8 || v3 != v7)
  {
    v12 = sub_2232006B4();
    v13 = OUTLINED_FUNCTION_7_20();
    sub_2230E3DD8(v13, v14);
    v15 = OUTLINED_FUNCTION_2_30();
    sub_2230E3DD8(v15, v16);
    v17 = OUTLINED_FUNCTION_2_30();
    sub_22318DFEC(v17, v18);
    v19 = OUTLINED_FUNCTION_7_20();
    sub_22318DFEC(v19, v20);
    return (v12 & 1) != 0;
  }

  v30 = OUTLINED_FUNCTION_2_1();
  sub_2230E3DD8(v30, v31);
  v32 = OUTLINED_FUNCTION_2_30();
  sub_2230E3DD8(v32, v33);
  v34 = OUTLINED_FUNCTION_2_30();
  sub_22318DFEC(v34, v35);
  v36 = OUTLINED_FUNCTION_2_1();
LABEL_19:
  sub_22318DFEC(v36, v37);
  return 1;
}

uint64_t static RequestSummary.UserQuery.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2232006B4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_2_1();

      return sub_2232006B4();
    }
  }

  return result;
}

uint64_t sub_223189840(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7364980 && a2 == 0xE300000000000000;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223189904(char a1)
{
  if (a1)
  {
    return 0x7972657571;
  }

  else
  {
    return 7364980;
  }
}

uint64_t sub_223189938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223189840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223189960(uint64_t a1)
{
  v2 = sub_22318E030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318999C(uint64_t a1)
{
  v2 = sub_22318E030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231899D8(uint64_t a1)
{
  v2 = sub_22318E084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223189A14(uint64_t a1)
{
  v2 = sub_22318E084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223189A50(uint64_t a1)
{
  v2 = sub_22318E12C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223189A8C(uint64_t a1)
{
  v2 = sub_22318E12C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.UserInput.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059970, &qword_223214940);
  v29 = OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_11();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059978, &qword_223214948);
  v10 = OUTLINED_FUNCTION_9(v9);
  v24 = v11;
  v25 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_16();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059980, &qword_223214950);
  OUTLINED_FUNCTION_9(v30);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v20 = v0[1];
  v27 = v0[2];
  v28 = *v0;
  v26 = v0[3];
  v21 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_22318E030();
  sub_2232007A4();
  if (v20)
  {
    sub_22318E084();
    sub_2232005B4();
    sub_22318E0D8();
    sub_223200654();
    v22 = OUTLINED_FUNCTION_29_6();
    v23(v22, v29);
  }

  else
  {
    sub_22318E12C();
    sub_2232005B4();
    (*(v24 + 8))(v2, v25);
  }

  (*(v16 + 8))(v1, v30);
  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.UserInput.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v59 = v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599A8, &qword_223214958);
  OUTLINED_FUNCTION_9(v61);
  v58 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599B0, &qword_223214960);
  OUTLINED_FUNCTION_9(v9);
  v57 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599B8, &unk_223214968);
  OUTLINED_FUNCTION_9(v16);
  v60 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_34();
  v21 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_22318E030();
  OUTLINED_FUNCTION_33_4();
  sub_223200794();
  if (v0)
  {
    goto LABEL_8;
  }

  v55 = v9;
  v56 = v15;
  v66 = v3;
  v22 = sub_223200594();
  sub_2230E0B80(v22, 0);
  if (v24 == v23 >> 1)
  {
LABEL_7:
    v34 = sub_2232003A4();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v36 = &type metadata for RequestSummary.UserInput;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v38 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v34);
    (*(v39 + 104))(v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = OUTLINED_FUNCTION_22_7();
    v41(v40);
    v3 = v66;
LABEL_8:
    v42 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  OUTLINED_FUNCTION_32();
  if (v28 < (v27 >> 1))
  {
    HIDWORD(v54) = *(v26 + v25);
    sub_2230E0B40(v25 + 1);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    if (v30 == v32 >> 1)
    {
      if ((v54 & 0x100000000) != 0)
      {
        LOBYTE(v62) = 1;
        sub_22318E084();
        sub_223200474();
        v33 = v59;
        sub_22318E180();
        sub_223200554();
        v43 = v60;
        swift_unknownObjectRelease();
        v48 = OUTLINED_FUNCTION_56_1();
        v49(v48);
        (*(v43 + 8))(v1, v16);
        v50 = v62;
        v51 = v63;
        v52 = v64;
        v53 = v65;
      }

      else
      {
        LOBYTE(v62) = 0;
        sub_22318E12C();
        OUTLINED_FUNCTION_13_7();
        sub_223200474();
        v33 = v59;
        swift_unknownObjectRelease();
        v44 = OUTLINED_FUNCTION_42_2();
        v45(v44, v55);
        v46 = OUTLINED_FUNCTION_22_7();
        v47(v46);
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
      }

      *v33 = v50;
      v33[1] = v51;
      v33[2] = v52;
      v33[3] = v53;
      v42 = v66;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t RequestSummary.UserQuery.executedQuery.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestSummary.UserQuery.executedQuery.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double RequestSummary.UserQuery.init(build:)@<D0>(void (*a1)(__int128 *)@<X0>, void *a2@<X8>)
{
  v18 = 0u;
  v19 = 0u;
  a1(&v18);
  v4 = *(&v18 + 1);
  v5 = *(&v19 + 1);
  if (*(&v18 + 1))
  {
    if (*(&v19 + 1))
    {
      v6 = v19;
      *a2 = v18;
      a2[1] = v4;
      a2[2] = v6;
      a2[3] = v5;
      return result;
    }
  }

  else
  {
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v7 = sub_223200014();
  __swift_project_value_buffer(v7, qword_280FCE830);
  v8 = sub_223200004();
  v9 = sub_223200254();
  if (OUTLINED_FUNCTION_46_2(v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599C8, &qword_223214978);
    v12 = sub_223200104();
    v14 = sub_2231A5D38(v12, v13, &v17);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_62_1(&dword_2230CE000, v15, v16, "Could not build %{public}s: Builder has missing required fields");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_49_2();
    MEMORY[0x223DD6780](v10, -1, -1);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t RequestSummary.UserQuery.Builder.originalUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestSummary.UserQuery.Builder.executedQuery.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestSummary.UserQuery.Builder.executedQuery.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_22318A5B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000223224D30 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747563657865 && a2 == 0xED00007972657551)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22318A690(char a1)
{
  if (a1)
  {
    return 0x6465747563657865;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_22318A6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318A5B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318A708(uint64_t a1)
{
  v2 = sub_22318E1D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318A744(uint64_t a1)
{
  v2 = sub_22318E1D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.UserQuery.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599D0, &qword_223214980);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  v8 = *v0;
  v9 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v10 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_22318E1D4();
  OUTLINED_FUNCTION_33_4();
  sub_2232007A4();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v1)
  {
    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
  }

  v11 = OUTLINED_FUNCTION_42_2();
  v12(v11, v4);
  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.UserQuery.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599E0, &qword_223214988);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v12 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_22318E1D4();
  sub_223200794();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v13 = sub_2232004F4();
    v15 = v14;
    v16 = sub_2232004F4();
    v18 = v17;
    v19 = v16;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
    v5[2] = v19;
    v5[3] = v18;

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t static RequestSummary.SystemResponse.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v36 = a1[5];
      v37 = a2[5];
      v18 = a1[4];
      v19 = a2[6];
      v20 = a2[7];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_2232006B4();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v36;
      v15 = v37;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      OUTLINED_FUNCTION_55_0();
      v27 = v26;
      v29 = v28;
      v30 = sub_2232006B4();
      v12 = v29;
      v7 = v27;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v32 = v7;
      v33 = sub_2232006B4();
      v7 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      v34 = v7 == v14 && v9 == v16;
      if (v34 || (sub_2232006B4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22318ACB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6972506C6C7566 && a2 == 0xE900000000000074;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616570536C6C7566 && a2 == 0xE90000000000006BLL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000223221F90 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000223221FB0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

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

unint64_t sub_22318AE20(char a1)
{
  result = 0x6E6972506C6C7566;
  switch(a1)
  {
    case 1:
      result = 0x616570536C6C7566;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22318AEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318ACB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318AEE0(uint64_t a1)
{
  v2 = sub_22318E228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318AF1C(uint64_t a1)
{
  v2 = sub_22318E228();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.SystemResponse.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599E8, &qword_223214990);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  v11 = *v0;
  v12 = v0[1];
  v18 = v0[3];
  v19 = v0[2];
  v16 = v0[5];
  v17 = v0[4];
  v14 = v0[7];
  v15 = v0[6];
  v13 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_22318E228();
  OUTLINED_FUNCTION_33_4();
  sub_2232007A4();
  sub_2232005C4();
  if (!v1)
  {
    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.SystemResponse.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599F8, &qword_223214998);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_16();
  v12 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_22318E228();
  sub_223200794();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_20_11();
    v13 = sub_223200494();
    v27 = v14;
    OUTLINED_FUNCTION_20_11();
    v15 = sub_223200494();
    v26 = v16;
    v24 = v15;
    LOBYTE(v32[0]) = 2;
    v23 = sub_223200494();
    v25 = v17;
    OUTLINED_FUNCTION_20_11();
    v18 = sub_223200494();
    v20 = v19;
    (*(v8 + 8))(v1, v6);
    *&v28 = v13;
    *(&v28 + 1) = v27;
    *&v29 = v24;
    *(&v29 + 1) = v26;
    *&v30 = v23;
    *(&v30 + 1) = v25;
    *&v31 = v18;
    *(&v31 + 1) = v20;
    v21 = v29;
    *v5 = v28;
    v5[1] = v21;
    v22 = v31;
    v5[2] = v30;
    v5[3] = v22;
    sub_2230E582C(&v28, v32);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v32[0] = v13;
    v32[1] = v27;
    v32[2] = v24;
    v32[3] = v26;
    v32[4] = v23;
    v32[5] = v25;
    v32[6] = v18;
    v32[7] = v20;
    sub_22318E27C(v32);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22318B3C8()
{
  sub_2231900DC();
  result = sub_2231FFF04();
  if (v3)
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  word_27D059958 = v1 | v2;
  return result;
}

uint64_t sub_22318B450(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  return sub_2231FFEF4();
}

uint64_t static RequestSummary.ExecutionSource.intelligenceFlow.getter@<X0>(_WORD *a1@<X8>)
{
  if (qword_27D057580 != -1)
  {
    result = swift_once();
  }

  *a1 = word_27D059958;
  return result;
}

uint64_t RequestSummary.ExecutionSource.IntelligenceFlow.init(_:)@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_2231FFEC4();

  KeyPath = swift_getKeyPath();
  sub_2231FFEE4();

  v3 = v9;
  if (v9 == 2)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();
    if (OUTLINED_FUNCTION_46_2(v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2230CE000, v5, KeyPath, "Missing required field: actionCanceled", v7, 2u);
      OUTLINED_FUNCTION_49_2();
    }

    v3 = 0;
  }

  else
  {
  }

  *a1 = v10;
  a1[1] = v3 & 1;
  return result;
}

uint64_t static RequestSummary.ExecutionSource.IntelligenceFlow.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return OUTLINED_FUNCTION_47_0();
    }
  }

  else if (v2 != v3)
  {
    return OUTLINED_FUNCTION_47_0();
  }

  return a1[1] ^ a2[1] ^ 1u;
}

uint64_t sub_22318B68C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6F5449416E6567 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22318B764(char a1)
{
  if (a1)
  {
    return 0x61436E6F69746361;
  }

  else
  {
    return 0x6F6F5449416E6567;
  }
}

uint64_t sub_22318B7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318B68C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318B7DC(uint64_t a1)
{
  v2 = sub_22318E2AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318B818(uint64_t a1)
{
  v2 = sub_22318E2AC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.ExecutionSource.IntelligenceFlow.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A00, &qword_2232149E0);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34();
  v11 = *v0;
  v13 = v0[1];
  v12 = v4[4];
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_22318E2AC();
  OUTLINED_FUNCTION_33_4();
  sub_2232007A4();
  sub_22318E300();
  OUTLINED_FUNCTION_8_2();
  sub_2232005E4();
  if (!v1)
  {
    OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_8_2();
    sub_223200604();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.ExecutionSource.IntelligenceFlow.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_8_1();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A18, &qword_2232149E8);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v22 = v15[4];
  OUTLINED_FUNCTION_29(v15, v15[3]);
  sub_22318E2AC();
  sub_223200794();
  if (!v13)
  {
    sub_22318E354();
    OUTLINED_FUNCTION_22();
    sub_2232004C4();
    OUTLINED_FUNCTION_29_4();
    v23 = sub_223200504();
    v24 = OUTLINED_FUNCTION_21_5();
    v25(v24, v18);
    *v17 = a13;
    v17[1] = v23 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_9_0();
}

uint64_t static RequestSummary.ExecutionSource.== infix(_:_:)(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 14))
  {
    if (v3 < 0x4000)
    {
      if (*a1 == 4)
      {
        if (*a2 != 4)
        {
          return OUTLINED_FUNCTION_47_0();
        }

        return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
      }

      if (*a1 == v3)
      {
        return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
      }
    }

    return OUTLINED_FUNCTION_47_0();
  }

  if (v2 >> 14 == 1)
  {
    if ((v3 & 0xC000) == 0x4000)
    {
      return (v3 ^ v2) == 0;
    }

    return OUTLINED_FUNCTION_47_0();
  }

  switch(*a1)
  {
    case 0x8001:
      v5 = 32769;
      goto LABEL_17;
    case 0x8002:
      v5 = 32770;
      goto LABEL_17;
    case 0x8003:
      v5 = 32771;
LABEL_17:
      if (v3 == v5)
      {
        goto LABEL_18;
      }

      return OUTLINED_FUNCTION_47_0();
    default:
      if (v3 != 0x8000)
      {
        return OUTLINED_FUNCTION_47_0();
      }

LABEL_18:
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_22318BC38(uint64_t a1, uint64_t a2)
{
  if (a1 == 1819242356 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22318BCC0(uint64_t a1)
{
  v2 = sub_2230DFC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BCFC(uint64_t a1)
{
  v2 = sub_2230DFC28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318BC38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22318BD68(uint64_t a1)
{
  v2 = sub_22318E3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BDA4(uint64_t a1)
{
  v2 = sub_22318E3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BDE0(uint64_t a1)
{
  v2 = sub_22318E4F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BE1C(uint64_t a1)
{
  v2 = sub_22318E4F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BE58(uint64_t a1)
{
  v2 = sub_22318E4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BE94(uint64_t a1)
{
  v2 = sub_22318E4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BED0(uint64_t a1)
{
  v2 = sub_22318E450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BF0C(uint64_t a1)
{
  v2 = sub_22318E450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BF48(uint64_t a1)
{
  v2 = sub_2230DFCF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BF84(uint64_t a1)
{
  v2 = sub_2230DFCF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318BFC0(uint64_t a1)
{
  v2 = sub_22318E3A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318BFFC(uint64_t a1)
{
  v2 = sub_22318E3A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C038(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000223224560 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000026 && 0x8000000223224580 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000023 && 0x80000002232245D0 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

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

unint64_t sub_22318C198(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_22318C23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318C038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318C264(uint64_t a1)
{
  v2 = sub_22318E5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C2A0(uint64_t a1)
{
  v2 = sub_22318E5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C2DC(uint64_t a1)
{
  v2 = sub_22318E69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C318(uint64_t a1)
{
  v2 = sub_22318E69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C354(uint64_t a1)
{
  v2 = sub_22318E6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C390(uint64_t a1)
{
  v2 = sub_22318E6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C3CC(uint64_t a1)
{
  v2 = sub_22318E744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C408(uint64_t a1)
{
  v2 = sub_22318E744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22318C444(uint64_t a1)
{
  v2 = sub_22318E648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318C480(uint64_t a1)
{
  v2 = sub_22318E648();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.PrescribedGenAITool.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AD0, &qword_223214A60);
  OUTLINED_FUNCTION_9(v4);
  v43 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v42 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AD8, &qword_223214A68);
  OUTLINED_FUNCTION_9(v10);
  v41 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_3();
  v40 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AE0, &qword_223214A70);
  OUTLINED_FUNCTION_9(v16);
  v39 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_3();
  v38 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AE8, &qword_223214A78);
  OUTLINED_FUNCTION_9(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_11();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059AF0, &qword_223214A80);
  OUTLINED_FUNCTION_9(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_40_2();
  v32 = *v0;
  v33 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_22318E5F4();
  sub_2232007A4();
  switch(v32)
  {
    case 1:
      OUTLINED_FUNCTION_29_4();
      sub_22318E6F0();
      v36 = v38;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v37 = v39;
      goto LABEL_6;
    case 2:
      sub_22318E69C();
      v36 = v40;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v37 = v41;
      goto LABEL_6;
    case 3:
      sub_22318E648();
      v36 = v42;
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v37 = v43;
LABEL_6:
      v35 = *(v37 + 8);
      v34 = v36;
      break;
    default:
      sub_22318E744();
      OUTLINED_FUNCTION_22();
      sub_2232005B4();
      v34 = OUTLINED_FUNCTION_29_6();
      break;
  }

  v35(v34);
  (*(v28 + 8))(v1, v26);
  OUTLINED_FUNCTION_9_0();
}

uint64_t RequestSummary.PrescribedGenAITool.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void RequestSummary.PrescribedGenAITool.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v51 = v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B20, &qword_223214A88);
  OUTLINED_FUNCTION_9(v54);
  v50 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v53 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B28, &qword_223214A90);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B30, &qword_223214A98);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B38, &qword_223214AA0);
  OUTLINED_FUNCTION_9(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_11();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B40, &qword_223214AA8);
  OUTLINED_FUNCTION_9(v22);
  v52 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_34();
  v27 = v3[4];
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_22318E5F4();
  OUTLINED_FUNCTION_33_4();
  sub_223200794();
  if (v0)
  {
    goto LABEL_8;
  }

  v55 = v3;
  v28 = v1;
  v29 = sub_223200594();
  sub_2230E0B80(v29, 0);
  if (v31 == v30 >> 1)
  {
LABEL_7:
    v44 = sub_2232003A4();
    swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0) + 48);
    *v46 = &type metadata for RequestSummary.PrescribedGenAITool;
    sub_223200484();
    OUTLINED_FUNCTION_48();
    v48 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_5_0(v44);
    (*(v49 + 104))(v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v28, v22);
    v3 = v55;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_9:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  OUTLINED_FUNCTION_32();
  if (v35 < (v34 >> 1))
  {
    v36 = *(v33 + v32);
    sub_2230E0B40(v32 + 1);
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    if (v38 == v40 >> 1)
    {
      switch(v36)
      {
        case 1:
          OUTLINED_FUNCTION_29_4();
          sub_22318E6F0();
          OUTLINED_FUNCTION_13_7();
          sub_223200474();
          swift_unknownObjectRelease();
          goto LABEL_13;
        case 2:
          sub_22318E69C();
          OUTLINED_FUNCTION_13_7();
          sub_223200474();
          swift_unknownObjectRelease();
LABEL_13:
          v41 = OUTLINED_FUNCTION_42_2();
          goto LABEL_14;
        case 3:
          sub_22318E648();
          sub_223200474();
          swift_unknownObjectRelease();
          (*(v50 + 8))(v53, v54);
          goto LABEL_15;
        default:
          sub_22318E744();
          OUTLINED_FUNCTION_13_7();
          sub_223200474();
          swift_unknownObjectRelease();
          v41 = OUTLINED_FUNCTION_42_2();
          v43 = v18;
LABEL_14:
          v42(v41, v43);
LABEL_15:
          (*(v52 + 8))(v28, v22);
          *v51 = v36;
          __swift_destroy_boxed_opaque_existential_1(v55);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

BOOL static RequestSummary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v79 = a1[3];
  v80 = a1[2];
  v5 = a1[5];
  v78 = a1[4];
  v6 = *(a1 + 4);
  v100 = *(a1 + 3);
  v101 = v6;
  v7 = *(a1 + 6);
  v102 = *(a1 + 5);
  v103 = v7;
  v77 = *(a1 + 56);
  v75 = a1[15];
  memcpy(__dst, a1 + 16, sizeof(__dst));
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = *(a2 + 4);
  v105 = *(a2 + 3);
  v106 = v14;
  v15 = *(a2 + 6);
  v107 = *(a2 + 5);
  v108 = v15;
  v76 = *(a2 + 56);
  v74 = a2[15];
  memcpy(v109, a2 + 16, 0x41uLL);
  if (v3 != v8 || v4 != v9)
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_17_8();
    if ((sub_2232006B4() & 1) == 0)
    {
      return 0;
    }
  }

  *__src = v80;
  *&__src[8] = v79;
  *&__src[16] = v78;
  *&__src[24] = v5;
  *&v84[0] = v10;
  *(&v84[0] + 1) = v11;
  *&v84[1] = v12;
  *(&v84[1] + 1) = v13;
  v17 = OUTLINED_FUNCTION_61_1();
  sub_2230E3DD8(v17, v18);
  v19 = OUTLINED_FUNCTION_60();
  sub_2230E3DD8(v19, v20);
  v21 = static RequestSummary.UserInput.== infix(_:_:)(__src, v84);
  v22 = OUTLINED_FUNCTION_60();
  sub_22318DFEC(v22, v23);
  v24 = OUTLINED_FUNCTION_61_1();
  sub_22318DFEC(v24, v25);
  if (!v21)
  {
    return 0;
  }

  *__src = v100;
  *&__src[16] = v101;
  *&__src[32] = v102;
  *&__src[48] = v103;
  v84[0] = v105;
  v84[1] = v106;
  v84[2] = v107;
  v84[3] = v108;
  v26 = static RequestSummary.SystemResponse.== infix(_:_:)(__src, v84);
  v98[0] = v84[0];
  v98[1] = v84[1];
  v98[2] = v84[2];
  v98[3] = v84[3];
  sub_2230E582C(&v100, v83);
  sub_2230E582C(&v105, v83);
  sub_22318E27C(v98);
  v99[0] = *__src;
  v99[1] = *&__src[16];
  v99[2] = *&__src[32];
  v99[3] = *&__src[48];
  sub_22318E27C(v99);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  *__src = v77;
  LOWORD(v84[0]) = v76;
  if ((static RequestSummary.ExecutionSource.== infix(_:_:)(__src, v84) & 1) == 0)
  {
    return 0;
  }

  if (v75)
  {
    if (!v74)
    {
      return 0;
    }

    type metadata accessor for RequestConjunctionInfo();
    v27 = v74;
    v28 = v75;
    v29 = sub_2232002B4();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v74)
  {
    return 0;
  }

  v95 = *__dst;
  v96 = *&__dst[16];
  v93 = *&__dst[48];
  *&v92[7] = v109[0];
  v30 = *&__dst[40];
  v97 = *&__dst[32];
  v94 = __dst[64];
  *&v92[23] = v109[1];
  v31 = *(&v109[2] + 1);
  *&v92[39] = *&v109[2];
  v91 = v109[4];
  v90 = v109[3];
  if ((*&__dst[40] & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    if ((*(&v109[2] + 1) & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      OUTLINED_FUNCTION_25_3(__dst);
      OUTLINED_FUNCTION_17_8();
      sub_2230E3D68(v32, v33, v34, v35);
      OUTLINED_FUNCTION_17_8();
      sub_2230E3D68(v36, v37, v38, v39);
      sub_2230E3C4C(__src, &qword_27D057DC8, &qword_22320E730);
      return 1;
    }

    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v52, v53, v54, v55);
    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v56, v57, v58, v59);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_25_3(__dst);
  memcpy(v84, __src, 0x41uLL);
  if ((v31 & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    memcpy(v83, __src, 0x41uLL);
    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v40, v41, v42, v43);
    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v44, v45, v46, v47);
    OUTLINED_FUNCTION_17_8();
    sub_2230E3D68(v48, v49, v50, v51);
    sub_2230E6410(v83);
LABEL_20:
    *__src = v95;
    *&__src[16] = v96;
    *&__src[32] = v97;
    *&__src[40] = v30;
    *&__src[48] = v93;
    __src[64] = v94;
    *&__src[65] = *v92;
    *v86 = *&v92[16];
    *&v86[15] = *&v92[31];
    v87 = v31;
    v89 = v91;
    v88 = v90;
    sub_2230E3C4C(__src, &qword_27D059B48, &qword_223214AB0);
    return 0;
  }

  v83[0] = v109[0];
  v83[1] = v109[1];
  v83[3] = v109[3];
  LOBYTE(v83[4]) = v109[4];
  *&v83[2] = *&v109[2];
  *(&v83[2] + 1) = v31;
  OUTLINED_FUNCTION_17_8();
  sub_2230E3D68(v61, v62, v63, v64);
  OUTLINED_FUNCTION_17_8();
  sub_2230E3D68(v65, v66, v67, v68);
  OUTLINED_FUNCTION_17_8();
  sub_2230E3D68(v69, v70, v71, v72);
  v73 = static NLRoutingDecisionMessage.RoutingDecision.== infix(_:_:)(v84, v83);
  memcpy(v81, v83, 0x41uLL);
  sub_2230E6410(v81);
  memcpy(v82, v84, 0x41uLL);
  sub_2230E6410(v82);
  v83[0] = v95;
  v83[1] = v96;
  *&v83[2] = v97;
  *(&v83[2] + 1) = v30;
  v83[3] = v93;
  LOBYTE(v83[4]) = v94;
  sub_2230E3C4C(v83, &qword_27D057DC8, &qword_22320E730);
  return (v73 & 1) != 0;
}

uint64_t sub_22318D3A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x75706E4972657375 && a2 == 0xE900000000000074;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65526D6574737973 && a2 == 0xEE0065736E6F7073;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F69747563657865 && a2 == 0xEF656372756F536ELL;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74636E756A6E6F63 && a2 == 0xEF6F666E496E6F69;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x44676E6974756F72 && a2 == 0xEF6E6F6973696365)
          {

            return 5;
          }

          else
          {
            v11 = sub_2232006B4();

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

uint64_t sub_22318D5B4(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 0x75706E4972657375;
      break;
    case 2:
      result = 0x65526D6574737973;
      break;
    case 3:
      result = 0x6F69747563657865;
      break;
    case 4:
      result = 0x74636E756A6E6F63;
      break;
    case 5:
      result = 0x44676E6974756F72;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22318D6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318D3A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318D6CC(uint64_t a1)
{
  v2 = sub_22318E798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318D708(uint64_t a1)
{
  v2 = sub_22318E798();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B50, &qword_223214AB8);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[3];
  v29 = v0[2];
  v30 = v12;
  v15 = v0[5];
  v27 = v0[4];
  v28 = v14;
  v26 = v15;
  v16 = *(v0 + 4);
  v39 = *(v0 + 3);
  v40 = v16;
  v17 = *(v0 + 6);
  v41 = *(v0 + 5);
  v42 = v17;
  v25 = *(v0 + 56);
  v24 = v0[15];
  memcpy(v43, v0 + 16, 0x41uLL);
  v18 = v3[3];
  v19 = v3[4];
  v20 = v3;
  v21 = v4;
  OUTLINED_FUNCTION_29(v20, v18);
  sub_22318E798();
  sub_2232007A4();
  LOBYTE(v32[0]) = 0;
  sub_2232005F4();
  if (v1)
  {
    (*(v6 + 8))(v11, v4);
  }

  else
  {
    v22 = v25;
    v23 = v24;
    v32[0] = v29;
    v32[1] = v28;
    v32[2] = v27;
    v32[3] = v26;
    v31[0] = 1;
    sub_2230E3DD8(v29, v28);
    sub_22318E7EC();
    OUTLINED_FUNCTION_37_4();
    sub_223200654();
    sub_22318DFEC(v32[0], v32[1]);
    v35 = v39;
    v36 = v40;
    v37 = v41;
    v38 = v42;
    v34 = 2;
    sub_2230E582C(&v39, v32);
    sub_22318E840();
    sub_223200654();
    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    sub_22318E27C(v33);
    LOWORD(v32[0]) = v22;
    v31[0] = 3;
    sub_2230E2D70();
    OUTLINED_FUNCTION_37_4();
    sub_223200654();
    v32[0] = v23;
    v31[0] = 4;
    type metadata accessor for RequestConjunctionInfo();
    sub_22318E93C(&qword_27D059B70);
    OUTLINED_FUNCTION_37_4();
    sub_2232005E4();
    memcpy(v32, v43, 0x41uLL);
    v31[71] = 5;
    sub_2230E3D68(v43, v31, &qword_27D057DC8, &qword_22320E730);
    sub_2230E6F8C();
    sub_2232005E4();
    memcpy(v31, v32, 0x41uLL);
    sub_2230E3C4C(v31, &qword_27D057DC8, &qword_22320E730);
    (*(v6 + 8))(v11, v21);
  }

  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059B78, &qword_223214AC0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_16();
  v9 = v2[4];
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_22318E798();
  sub_223200794();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v22) = 0;
    OUTLINED_FUNCTION_20_11();
    v10 = sub_2232004F4();
    v20 = v11;
    sub_22318E894();
    OUTLINED_FUNCTION_6_20();
    sub_223200554();
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v22;
    v37[71] = 2;
    sub_22318E8E8();
    OUTLINED_FUNCTION_6_20();
    sub_223200554();
    v45 = v38;
    v46 = v39;
    v47 = v40;
    v48 = v41;
    sub_223105D70();
    OUTLINED_FUNCTION_6_20();
    sub_223200554();
    v12 = v22;
    type metadata accessor for RequestConjunctionInfo();
    v21[0] = 4;
    sub_22318E93C(&qword_27D059B90);
    OUTLINED_FUNCTION_20_11();
    sub_2232004C4();
    v13 = v22;
    v36[79] = 5;
    sub_22311D8D0();
    OUTLINED_FUNCTION_6_20();
    sub_2232004C4();
    v14 = OUTLINED_FUNCTION_12_12();
    v15(v14);
    memcpy(v42, v37, sizeof(v42));
    *v21 = v10;
    *&v21[8] = v20;
    *&v21[16] = v19;
    *&v21[24] = v16;
    *&v21[32] = v17;
    *&v21[40] = v18;
    *&v21[48] = v45;
    *&v21[64] = v46;
    *&v21[80] = v47;
    *&v21[96] = v48;
    *&v21[112] = v12;
    *&v21[114] = v43;
    *&v21[118] = v44;
    *&v21[120] = v13;
    memcpy(&v21[128], v37, 0x41uLL);
    memcpy(v4, v21, 0xC1uLL);
    sub_22318E980(v21, &v22);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v22 = v10;
    v23 = v20;
    v24 = v19;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v45;
    v29 = v46;
    v30 = v47;
    v31 = v48;
    v32 = v12;
    v33 = v43;
    v34 = v44;
    v35 = v13;
    memcpy(v36, v42, 0x41uLL);
    sub_22318E9B8(&v22);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22318DFEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_22318E030()
{
  result = qword_27D059988;
  if (!qword_27D059988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059988);
  }

  return result;
}

unint64_t sub_22318E084()
{
  result = qword_27D059990;
  if (!qword_27D059990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059990);
  }

  return result;
}

unint64_t sub_22318E0D8()
{
  result = qword_27D059998;
  if (!qword_27D059998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059998);
  }

  return result;
}

unint64_t sub_22318E12C()
{
  result = qword_27D0599A0;
  if (!qword_27D0599A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0599A0);
  }

  return result;
}

unint64_t sub_22318E180()
{
  result = qword_27D0599C0;
  if (!qword_27D0599C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0599C0);
  }

  return result;
}

unint64_t sub_22318E1D4()
{
  result = qword_27D0599D8;
  if (!qword_27D0599D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0599D8);
  }

  return result;
}

unint64_t sub_22318E228()
{
  result = qword_27D0599F0;
  if (!qword_27D0599F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0599F0);
  }

  return result;
}

unint64_t sub_22318E2AC()
{
  result = qword_27D059A08;
  if (!qword_27D059A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A08);
  }

  return result;
}

unint64_t sub_22318E300()
{
  result = qword_27D059A10;
  if (!qword_27D059A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A10);
  }

  return result;
}

unint64_t sub_22318E354()
{
  result = qword_27D059A20;
  if (!qword_27D059A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A20);
  }

  return result;
}

unint64_t sub_22318E3A8()
{
  result = qword_27D059A60;
  if (!qword_27D059A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A60);
  }

  return result;
}

unint64_t sub_22318E3FC()
{
  result = qword_27D059A68;
  if (!qword_27D059A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A68);
  }

  return result;
}

unint64_t sub_22318E450()
{
  result = qword_27D059A70;
  if (!qword_27D059A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A70);
  }

  return result;
}

unint64_t sub_22318E4A4()
{
  result = qword_27D059A78;
  if (!qword_27D059A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A78);
  }

  return result;
}

unint64_t sub_22318E4F8()
{
  result = qword_27D059A80;
  if (!qword_27D059A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A80);
  }

  return result;
}

unint64_t sub_22318E54C()
{
  result = qword_27D059A88;
  if (!qword_27D059A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059A88);
  }

  return result;
}

unint64_t sub_22318E5A0()
{
  result = qword_27D059AC8;
  if (!qword_27D059AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059AC8);
  }

  return result;
}

unint64_t sub_22318E5F4()
{
  result = qword_27D059AF8;
  if (!qword_27D059AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059AF8);
  }

  return result;
}

unint64_t sub_22318E648()
{
  result = qword_27D059B00;
  if (!qword_27D059B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B00);
  }

  return result;
}

unint64_t sub_22318E69C()
{
  result = qword_27D059B08;
  if (!qword_27D059B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B08);
  }

  return result;
}

unint64_t sub_22318E6F0()
{
  result = qword_27D059B10;
  if (!qword_27D059B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B10);
  }

  return result;
}

unint64_t sub_22318E744()
{
  result = qword_27D059B18;
  if (!qword_27D059B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B18);
  }

  return result;
}

unint64_t sub_22318E798()
{
  result = qword_27D059B58;
  if (!qword_27D059B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B58);
  }

  return result;
}

unint64_t sub_22318E7EC()
{
  result = qword_27D059B60;
  if (!qword_27D059B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B60);
  }

  return result;
}

unint64_t sub_22318E840()
{
  result = qword_27D059B68;
  if (!qword_27D059B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B68);
  }

  return result;
}

unint64_t sub_22318E894()
{
  result = qword_27D059B80;
  if (!qword_27D059B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B80);
  }

  return result;
}

unint64_t sub_22318E8E8()
{
  result = qword_27D059B88;
  if (!qword_27D059B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B88);
  }

  return result;
}

uint64_t sub_22318E93C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RequestConjunctionInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22318E9EC()
{
  result = qword_27D059B98;
  if (!qword_27D059B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059B98);
  }

  return result;
}

uint64_t sub_22318EA40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 193))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_22318EA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestSummary.ExecutionSource.IntelligenceFlow(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestSummary.ExecutionSource.IntelligenceFlow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22318EDB0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22318EE8C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22318EF68(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_47_0();
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

  return OUTLINED_FUNCTION_44(a1);
}

_BYTE *sub_22318EFB0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22318F060()
{
  result = qword_27D059BA0;
  if (!qword_27D059BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BA0);
  }

  return result;
}

unint64_t sub_22318F0B8()
{
  result = qword_27D059BA8;
  if (!qword_27D059BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BA8);
  }

  return result;
}

unint64_t sub_22318F110()
{
  result = qword_27D059BB0;
  if (!qword_27D059BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BB0);
  }

  return result;
}

unint64_t sub_22318F168()
{
  result = qword_27D059BB8;
  if (!qword_27D059BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BB8);
  }

  return result;
}

unint64_t sub_22318F1C0()
{
  result = qword_27D059BC0;
  if (!qword_27D059BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BC0);
  }

  return result;
}

unint64_t sub_22318F218()
{
  result = qword_27D059BC8;
  if (!qword_27D059BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BC8);
  }

  return result;
}

unint64_t sub_22318F270()
{
  result = qword_27D059BD0;
  if (!qword_27D059BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BD0);
  }

  return result;
}

unint64_t sub_22318F2C8()
{
  result = qword_27D059BD8;
  if (!qword_27D059BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BD8);
  }

  return result;
}

unint64_t sub_22318F320()
{
  result = qword_27D059BE0;
  if (!qword_27D059BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BE0);
  }

  return result;
}

unint64_t sub_22318F378()
{
  result = qword_27D059BE8;
  if (!qword_27D059BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BE8);
  }

  return result;
}

unint64_t sub_22318F3D0()
{
  result = qword_27D059BF0;
  if (!qword_27D059BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BF0);
  }

  return result;
}

unint64_t sub_22318F428()
{
  result = qword_27D059BF8;
  if (!qword_27D059BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059BF8);
  }

  return result;
}

unint64_t sub_22318F480()
{
  result = qword_27D059C00;
  if (!qword_27D059C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C00);
  }

  return result;
}

unint64_t sub_22318F4D8()
{
  result = qword_27D059C08;
  if (!qword_27D059C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C08);
  }

  return result;
}

unint64_t sub_22318F530()
{
  result = qword_27D059C10;
  if (!qword_27D059C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C10);
  }

  return result;
}

unint64_t sub_22318F588()
{
  result = qword_27D059C18;
  if (!qword_27D059C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C18);
  }

  return result;
}

unint64_t sub_22318F5E0()
{
  result = qword_27D059C20;
  if (!qword_27D059C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C20);
  }

  return result;
}

unint64_t sub_22318F638()
{
  result = qword_27D059C28;
  if (!qword_27D059C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C28);
  }

  return result;
}

unint64_t sub_22318F690()
{
  result = qword_27D059C30;
  if (!qword_27D059C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C30);
  }

  return result;
}

unint64_t sub_22318F6E8()
{
  result = qword_27D059C38;
  if (!qword_27D059C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C38);
  }

  return result;
}

unint64_t sub_22318F740()
{
  result = qword_27D059C40;
  if (!qword_27D059C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C40);
  }

  return result;
}

unint64_t sub_22318F798()
{
  result = qword_27D059C48;
  if (!qword_27D059C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C48);
  }

  return result;
}

unint64_t sub_22318F7F0()
{
  result = qword_280FCE810;
  if (!qword_280FCE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE810);
  }

  return result;
}

unint64_t sub_22318F848()
{
  result = qword_280FCE818;
  if (!qword_280FCE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE818);
  }

  return result;
}

unint64_t sub_22318F8A0()
{
  result = qword_280FCE7A0;
  if (!qword_280FCE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7A0);
  }

  return result;
}

unint64_t sub_22318F8F8()
{
  result = qword_280FCE7A8;
  if (!qword_280FCE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7A8);
  }

  return result;
}

unint64_t sub_22318F950()
{
  result = qword_280FCE7D0;
  if (!qword_280FCE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7D0);
  }

  return result;
}

unint64_t sub_22318F9A8()
{
  result = qword_280FCE7D8;
  if (!qword_280FCE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7D8);
  }

  return result;
}

unint64_t sub_22318FA00()
{
  result = qword_280FCE7B0;
  if (!qword_280FCE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7B0);
  }

  return result;
}

unint64_t sub_22318FA58()
{
  result = qword_280FCE7B8;
  if (!qword_280FCE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7B8);
  }

  return result;
}

unint64_t sub_22318FAB0()
{
  result = qword_280FCE7E0;
  if (!qword_280FCE7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7E0);
  }

  return result;
}

unint64_t sub_22318FB08()
{
  result = qword_280FCE7E8;
  if (!qword_280FCE7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7E8);
  }

  return result;
}

unint64_t sub_22318FB60()
{
  result = qword_280FCE7C0;
  if (!qword_280FCE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7C0);
  }

  return result;
}

unint64_t sub_22318FBB8()
{
  result = qword_280FCE7C8;
  if (!qword_280FCE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7C8);
  }

  return result;
}

unint64_t sub_22318FC10()
{
  result = qword_280FCE7F0;
  if (!qword_280FCE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7F0);
  }

  return result;
}

unint64_t sub_22318FC68()
{
  result = qword_280FCE7F8;
  if (!qword_280FCE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE7F8);
  }

  return result;
}

unint64_t sub_22318FCC0()
{
  result = qword_27D059C50;
  if (!qword_27D059C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C50);
  }

  return result;
}

unint64_t sub_22318FD18()
{
  result = qword_27D059C58;
  if (!qword_27D059C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C58);
  }

  return result;
}

unint64_t sub_22318FD70()
{
  result = qword_27D059C60;
  if (!qword_27D059C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C60);
  }

  return result;
}

unint64_t sub_22318FDC8()
{
  result = qword_27D059C68;
  if (!qword_27D059C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C68);
  }

  return result;
}

unint64_t sub_22318FE20()
{
  result = qword_27D059C70;
  if (!qword_27D059C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C70);
  }

  return result;
}

unint64_t sub_22318FE78()
{
  result = qword_27D059C78;
  if (!qword_27D059C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C78);
  }

  return result;
}

unint64_t sub_22318FED0()
{
  result = qword_27D059C80;
  if (!qword_27D059C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C80);
  }

  return result;
}

unint64_t sub_22318FF28()
{
  result = qword_27D059C88;
  if (!qword_27D059C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C88);
  }

  return result;
}

unint64_t sub_22318FF80()
{
  result = qword_27D059C90;
  if (!qword_27D059C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C90);
  }

  return result;
}

unint64_t sub_22318FFD8()
{
  result = qword_27D059C98;
  if (!qword_27D059C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059C98);
  }

  return result;
}

unint64_t sub_223190030()
{
  result = qword_27D059CA0;
  if (!qword_27D059CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CA0);
  }

  return result;
}

unint64_t sub_223190088()
{
  result = qword_27D059CA8;
  if (!qword_27D059CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CA8);
  }

  return result;
}

unint64_t sub_2231900DC()
{
  result = qword_27D059CB0;
  if (!qword_27D059CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CB0);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_25_3@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = STACK[0x368];
  result = a1[3];
  v6 = a1[4].n128_u8[0];
  return result;
}

BOOL OUTLINED_FUNCTION_46_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x223DD6780);
}

uint64_t OUTLINED_FUNCTION_57_1()
{
  *(v0 - 66) = 1;
  v2 = *(v0 - 104);
  return *(v0 - 96);
}

void OUTLINED_FUNCTION_62_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

SiriMessageTypes::RequestType_optional __swiftcall RequestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2231902DC()
{
  result = qword_27D059CB8;
  if (!qword_27D059CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CB8);
  }

  return result;
}

void *ResultCandidateRequestMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v73 = v1;
  ObjectType = swift_getObjectType();
  v3 = sub_2231FFC84();
  v4 = OUTLINED_FUNCTION_9(v3);
  v69 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v66 - v13;
  v15 = sub_2231FFDA4();
  v16 = OUTLINED_FUNCTION_9(v15);
  v71 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v70 = v21 - v20;
  v22 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  v23 = (v22 - 8);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v27 = (v26 - v25);
  *v27 = 15;
  *(v27 + 1) = 0;
  *(v27 + 2) = 0;
  v28 = v23[8];
  __swift_storeEnumTagSinglePayload(v26 - v25 + v28, 1, 1, v15);
  v29 = &v27[v23[9]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v27[v23[10]];
  *v30 = 0;
  v30[1] = 0;
  a1(v27);
  v31 = *v27;
  if (v31 == 15)
  {
    goto LABEL_14;
  }

  v32 = *(v27 + 2);
  if (!v32)
  {
    goto LABEL_14;
  }

  v68 = *(v27 + 1);
  sub_2230D1480(&v27[v28], v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_2230D69D4(v14);
LABEL_14:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v49 = sub_223200014();
    __swift_project_value_buffer(v49, qword_280FCE830);
    v50 = sub_223200004();
    v51 = sub_223200254();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v74[0] = v53;
      *v52 = 136446210;
      v54 = sub_2230F7898();
      v56 = sub_2231A5D38(v54, v55, v74);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_2230CE000, v50, v51, "Could not build %{public}s: Builder has missing required fields", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x223DD6780](v53, -1, -1);
      MEMORY[0x223DD6780](v52, -1, -1);
    }

    sub_223191210(v27);
LABEL_19:
    type metadata accessor for ResultCandidateRequestMessageBase(0);
    v57 = *((*MEMORY[0x277D85000] & *v73) + 0x30);
    v58 = *((*MEMORY[0x277D85000] & *v73) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v67 = v32;
  v34 = v70;
  v33 = v71;
  (*(v71 + 32))(v70, v14, v15);
  v35 = *(v29 + 1);
  if (!v35 || (v36 = v30[1]) == 0)
  {
    (*(v33 + 8))(v34, v15);
    goto LABEL_14;
  }

  v37 = *v29;
  v74[0] = *v30;
  v74[1] = v36;
  sub_2231FFC74();
  sub_2230D1D30();
  v38 = sub_2232002E4();
  v40 = v39;
  v41 = (*(v69 + 8))(v10, v3);
  v42 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v42 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v60 = sub_223200014();
    __swift_project_value_buffer(v60, qword_280FCE830);
    v61 = sub_223200004();
    v62 = sub_223200254();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v71;
    if (v63)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_2230CE000, v61, v62, "resultCandidateId is empty, can't create message", v65, 2u);
      MEMORY[0x223DD6780](v65, -1, -1);
    }

    sub_223191210(v27);
    (*(v64 + 8))(v70, v15);
    goto LABEL_19;
  }

  v43 = (v73 + OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId);
  *v43 = v38;
  v43[1] = v40;
  MEMORY[0x28223BE20](v41);
  *(&v66 - 48) = v31;
  v44 = v67;
  *(&v66 - 5) = v68;
  *(&v66 - 4) = v44;
  v45 = v70;
  *(&v66 - 3) = v70;
  *(&v66 - 2) = v46;
  *(&v66 - 1) = v35;
  v47 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v48 = v47;
  sub_223191210(v27);
  if (v47)
  {
  }

  (*(v71 + 8))(v45, v15);
  return v47;
}

void *ResultCandidateRequestMessageBase.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059CC0, &qword_223216658);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231912E4();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ResultCandidateRequestMessageBase(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId);
    *v14 = v10;
    v14[1] = v15;
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_223190B78(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059CC8, &qword_223216660);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231912E4();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId + 8);
  sub_2232005F4();
  if (!v2)
  {
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_223190CC8(uint64_t a1)
{
  v2 = sub_2231912E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223190D04(uint64_t a1)
{
  v2 = sub_2231912E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *ResultCandidateRequestMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ResultCandidateRequestMessageBase.init(build:)(v1);
}

uint64_t sub_223190E58()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ResultCandidateRequestMessageBase(0);
  v2 = objc_msgSendSuper2(&v7, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  v8 = v3;
  v9 = v5;
  MEMORY[0x223DD5AA0](0x3A644963723C202CLL, 0xE900000000000020);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes33ResultCandidateRequestMessageBase_resultCandidateId + 8]);
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

uint64_t ResultCandidateRequestMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResultCandidateRequestMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ResultCandidateRequestMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResultCandidateRequestMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ResultCandidateRequestMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_8_17() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ResultCandidateRequestMessageBase.Builder.requestId.getter()
{
  v0 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResultCandidateRequestMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ResultCandidateRequestMessageBase.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResultCandidateRequestMessageBase.Builder.resultCandidateId.getter()
{
  v0 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResultCandidateRequestMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ResultCandidateRequestMessageBase.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_223191210(uint64_t a1)
{
  v2 = type metadata accessor for ResultCandidateRequestMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ResultCandidateRequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResultCandidateRequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231912E4()
{
  result = qword_280FCC850;
  if (!qword_280FCC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC850);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResultCandidateRequestMessageBase.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223191488()
{
  result = qword_27D059CD0;
  if (!qword_27D059CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CD0);
  }

  return result;
}

unint64_t sub_2231914E0()
{
  result = qword_280FCC840;
  if (!qword_280FCC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC840);
  }

  return result;
}

unint64_t sub_223191538()
{
  result = qword_280FCC848;
  if (!qword_280FCC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCC848);
  }

  return result;
}

void *sub_223191678(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = ResultSelectedMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id sub_2231916F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *ResultSelectedMessageBase.init(build:)(void (*a1)(unsigned __int8 *))
{
  v61 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v55 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v57 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  v59 = v7;
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v14[11];
  v17[v21] = 2;
  v22 = &v17[v14[12]];
  *v22 = 0;
  v22[8] = 1;
  a1(v17);
  v23 = *v17;
  if (v23 == 15)
  {
    goto LABEL_10;
  }

  v24 = *(v17 + 2);
  if (!v24)
  {
    goto LABEL_10;
  }

  v25 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  v26 = v59;
  if (__swift_getEnumTagSinglePayload(v6, 1, v59) == 1)
  {
    sub_2230D69D4(v6);
LABEL_10:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v31 = sub_223200014();
    __swift_project_value_buffer(v31, qword_280FCE830);
    v32 = sub_223200004();
    v33 = sub_223200254();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v62 = v35;
      *v34 = 136446210;
      v36 = sub_2230F7898();
      v38 = sub_2231A5D38(v36, v37, &v62);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2230CE000, v32, v33, "Could not build %{public}s: Builder has missing required fields", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x223DD6780](v35, -1, -1);
      MEMORY[0x223DD6780](v34, -1, -1);
    }

    sub_223191C7C(v17);
    type metadata accessor for ResultSelectedMessageBase(0);
    v39 = *((*MEMORY[0x277D85000] & *v61) + 0x30);
    v40 = *((*MEMORY[0x277D85000] & *v61) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v55 = v25;
  v56 = v24;
  v27 = v57;
  v28 = v58;
  v29 = (*(v57 + 32))(v58, v6, v26);
  if (!*(v19 + 1))
  {
    (*(v27 + 8))(v28, v26);
    goto LABEL_10;
  }

  if (!*(v20 + 1) || (v30 = v17[v21], v30 == 2))
  {
    (*(v27 + 8))(v58, v26);
    goto LABEL_10;
  }

  v43 = *v19;
  v44 = *v20;
  v45 = v61;
  *(v61 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_isMitigated) = v30 & 1;
  v46 = v22[8];
  v47 = v45 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_endpointMode;
  *v47 = *v22;
  v47[8] = v46;
  MEMORY[0x28223BE20](v29);
  *(&v55 - 64) = v23;
  v48 = v56;
  *(&v55 - 7) = v55;
  *(&v55 - 6) = v48;
  v49 = v58;
  *(&v55 - 5) = v58;
  *(&v55 - 4) = v50;
  *(&v55 - 3) = v51;
  *(&v55 - 2) = v52;
  *(&v55 - 1) = v53;
  v41 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v54 = v41;
  sub_223191C7C(v17);
  if (v41)
  {
  }

  (*(v57 + 8))(v49, v59);
  return v41;
}

uint64_t sub_223191C7C(uint64_t a1)
{
  v2 = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ResultSelectedMessageBase.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059CE8, &qword_223216868);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231927C8();
  sub_223200794();
  if (v2)
  {
    v12 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ResultSelectedMessageBase(0);
    v13 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v14 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_isMitigated) = sub_223200504() & 1;
    LOBYTE(v20[0]) = 1;
    OUTLINED_FUNCTION_0();
    v10 = sub_2232004B4();
    v16 = v1 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_endpointMode;
    if (v11)
    {
      v17 = 0;
    }

    else
    {
      v17 = v10;
    }

    *v16 = v17;
    v16[8] = v11 & 1;
    sub_2230F7158(a1, v20);
    v12 = ResultCandidateRequestMessageBase.init(from:)(v20);
    v18 = OUTLINED_FUNCTION_2();
    v19(v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

uint64_t sub_223191F2C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059CF0, &qword_223216870);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231927C8();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_isMitigated);
  v18 = 0;
  sub_223200604();
  if (!v2)
  {
    if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_endpointMode + 8) & 1) == 0)
    {
      v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_endpointMode);
      v17 = 1;
      sub_223200634();
    }

    sub_223190B78(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_2231920EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61676974694D7369 && a2 == 0xEB00000000646574;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEC00000065646F4DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231921BC(char a1)
{
  if (a1)
  {
    return 0x746E696F70646E65;
  }

  else
  {
    return 0x61676974694D7369;
  }
}

uint64_t sub_22319220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231920EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223192234(uint64_t a1)
{
  v2 = sub_2231927C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223192270(uint64_t a1)
{
  v2 = sub_2231927C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResultSelectedMessageBase.endpointMode.getter()
{
  result = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_endpointMode);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25ResultSelectedMessageBase_endpointMode + 8);
  return result;
}

void *ResultSelectedMessageBase.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ResultSelectedMessageBase.init(build:)(v1);
}

uint64_t ResultSelectedMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ResultSelectedMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ResultSelectedMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ResultSelectedMessageBase.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_25() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ResultSelectedMessageBase.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ResultSelectedMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResultSelectedMessageBase.Builder.resultCandidateId.getter()
{
  v1 = (v0 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ResultSelectedMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResultSelectedMessageBase.Builder.isMitigated.setter(char a1)
{
  result = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ResultSelectedMessageBase.Builder.endpointMode.getter()
{
  v1 = (v0 + *(type metadata accessor for ResultSelectedMessageBase.Builder(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ResultSelectedMessageBase.Builder.endpointMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

id ResultSelectedMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResultSelectedMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231927C8()
{
  result = qword_280FCDD90;
  if (!qword_280FCDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDD90);
  }

  return result;
}

uint64_t sub_2231928C4()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_22314ED48(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA440);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_22314ED48(319, &qword_280FCA3D8, type metadata accessor for AFEndpointMode);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for ResultSelectedMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223192B00()
{
  result = qword_27D059CF8;
  if (!qword_27D059CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059CF8);
  }

  return result;
}

unint64_t sub_223192B58()
{
  result = qword_280FCDD80;
  if (!qword_280FCDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDD80);
  }

  return result;
}

unint64_t sub_223192BB0()
{
  result = qword_280FCDD88;
  if (!qword_280FCDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDD88);
  }

  return result;
}

uint64_t sub_223192C14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554786966657270 && a2 == 0xEA00000000007478;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5478696674736F70 && a2 == 0xEB00000000747865;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64657463656C6573 && a2 == 0xEC00000074786554)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_223192D34(char a1)
{
  if (!a1)
  {
    return 0x6554786966657270;
  }

  if (a1 == 1)
  {
    return 0x5478696674736F70;
  }

  return 0x64657463656C6573;
}

uint64_t sub_223192DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223192C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223192DD0(uint64_t a1)
{
  v2 = sub_223193F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223192E0C(uint64_t a1)
{
  v2 = sub_223193F58();

  return MEMORY[0x2821FE720](a1, v2);
}

void *ResumeDictationRequestMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return ResumeDictationRequestMessage.init(build:)(v1);
}

void *ResumeDictationRequestMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v60 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v54 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v58 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v17[v14[11]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v17[v14[12]];
  *v22 = 0;
  *(v22 + 1) = 0;
  a1(v17);
  v23 = *v17;
  if (v23 == 15)
  {
    goto LABEL_13;
  }

  v24 = *(v17 + 2);
  if (!v24)
  {
    goto LABEL_13;
  }

  v56 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v43 = sub_223200014();
    __swift_project_value_buffer(v43, qword_280FCE830);
    v44 = sub_223200004();
    v45 = sub_223200254();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61 = v47;
      *v46 = 136446210;
      v48 = sub_2230F7898();
      v50 = sub_2231A5D38(v48, v49, &v61);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2230CE000, v44, v45, "Could not build %{public}s: Builder has missing required fields", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x223DD6780](v47, -1, -1);
      MEMORY[0x223DD6780](v46, -1, -1);
    }

    sub_223193404(v17);
    type metadata accessor for ResumeDictationRequestMessage(0);
    v51 = *((*MEMORY[0x277D85000] & *v60) + 0x30);
    v52 = *((*MEMORY[0x277D85000] & *v60) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v55 = v24;
  v26 = v57;
  v25 = v58;
  (*(v58 + 32))(v57, v6, v7);
  if (!*(v19 + 1) || (v27 = *(v20 + 1)) == 0 || (v28 = *(v21 + 1)) == 0 || (v29 = *(v22 + 1)) == 0)
  {
    (*(v25 + 8))(v26, v7);
    goto LABEL_13;
  }

  ObjectType = &v54;
  v30 = *v19;
  v31 = *v21;
  v32 = *v22;
  v33 = v26;
  v34 = v60;
  v35 = (v60 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_prefixText);
  *v35 = *v20;
  v35[1] = v27;
  v36 = (v34 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_postfixText);
  *v36 = v31;
  v36[1] = v28;
  v37 = (v34 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_selectedText);
  *v37 = v32;
  v37[1] = v29;
  MEMORY[0x28223BE20](v27);
  *(&v54 - 48) = v23;
  v38 = v55;
  *(&v54 - 5) = v56;
  *(&v54 - 4) = v38;
  *(&v54 - 3) = v33;
  *(&v54 - 2) = v39;
  *(&v54 - 1) = v40;

  v41 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v42 = v41;
  sub_223193404(v17);
  if (v41)
  {
  }

  (*(v58 + 8))(v33, v7);
  return v41;
}

uint64_t sub_223193404(uint64_t a1)
{
  v2 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ResumeDictationRequestMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D00, &qword_223216A38);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223193F58();
  sub_223200794();
  if (v2)
  {
    v22 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ResumeDictationRequestMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_2();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_prefixText);
    *v14 = v10;
    v14[1] = v15;
    v16 = OUTLINED_FUNCTION_5_2();
    v17 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_postfixText);
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v25[0]) = 2;
    v19 = OUTLINED_FUNCTION_5_2();
    v20 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_selectedText);
    *v20 = v19;
    v20[1] = v21;
    sub_2230F7158(a1, v25);
    v22 = RequestMessageBase.init(from:)(v25);
    v23 = OUTLINED_FUNCTION_2();
    v24(v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v22;
}

uint64_t sub_223193778(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D10, &qword_223216A40);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223193F58();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_prefixText);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_prefixText + 8);
  v23 = 0;
  OUTLINED_FUNCTION_8_18();
  if (!v2)
  {
    v15 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_postfixText);
    v16 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_postfixText + 8);
    v22 = 1;
    OUTLINED_FUNCTION_8_18();
    v17 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_selectedText);
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_selectedText + 8);
    v21 = 2;
    OUTLINED_FUNCTION_8_18();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t ResumeDictationRequestMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResumeDictationRequestMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ResumeDictationRequestMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ResumeDictationRequestMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t ResumeDictationRequestMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_21() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t ResumeDictationRequestMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResumeDictationRequestMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResumeDictationRequestMessage.Builder.prefixText.getter()
{
  v0 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResumeDictationRequestMessage.Builder.prefixText.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResumeDictationRequestMessage.Builder.postfixText.getter()
{
  v0 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResumeDictationRequestMessage.Builder.postfixText.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResumeDictationRequestMessage.Builder.selectedText.getter()
{
  v0 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 40));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t ResumeDictationRequestMessage.Builder.selectedText.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for ResumeDictationRequestMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_223193D40()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ResumeDictationRequestMessage(0);
  v1 = objc_msgSendSuper2(&v4, sel_description);
  v2 = sub_2232000C4();

  return v2;
}

id sub_223193DC4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2232000A4();

  return v5;
}

uint64_t sub_223193E64()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_prefixText + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_postfixText + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes29ResumeDictationRequestMessage_selectedText + 8);
}

id ResumeDictationRequestMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResumeDictationRequestMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223193F58()
{
  result = qword_27D059D08;
  if (!qword_27D059D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D08);
  }

  return result;
}

uint64_t sub_223194050()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for ResumeDictationRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223194210()
{
  result = qword_27D059D28;
  if (!qword_27D059D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D28);
  }

  return result;
}

unint64_t sub_223194268()
{
  result = qword_27D059D30;
  if (!qword_27D059D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D30);
  }

  return result;
}

unint64_t sub_2231942C0()
{
  result = qword_27D059D38;
  if (!qword_27D059D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D38);
  }

  return result;
}

id RewrittenUtteranceCandidateMessage.originalUserInput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput + 8);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_223194344(v2, v3, v4);
}

id sub_223194344(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t RewrittenUtteranceCandidateMessage.siriXRedirectContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext;
  v3 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_22311ACA4(v3, v4, v5);
}

uint64_t RewrittenUtteranceCandidateMessage.RewriteReason.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_223200464();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2231943F4@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return RewrittenUtteranceCandidateMessage.RewriteReason.init(rawValue:)(a1);
}

void *RewrittenUtteranceCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RewrittenUtteranceCandidateMessage.init(build:)(v1);
}

void *RewrittenUtteranceCandidateMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 15;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = v5[8];
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  OUTLINED_FUNCTION_10_15(v5[9]);
  OUTLINED_FUNCTION_10_15(v5[10]);
  OUTLINED_FUNCTION_10_15(v5[11]);
  OUTLINED_FUNCTION_10_15(v5[12]);
  OUTLINED_FUNCTION_10_15(v5[13]);
  v11 = &v8[v5[14]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = -1;
  v8[v5[15]] = 1;
  v8[v5[16]] = 1;
  v12 = &v8[v5[17]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -1;
  v13 = v5[18];
  v8[v13] = 1;
  a1(v8);
  v14 = v12[16];
  if (v14 == 255 || (v8[v13] & 1) != 0)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v15 = sub_223200014();
    __swift_project_value_buffer(v15, qword_280FCE830);
    v16 = sub_223200004();
    v17 = sub_223200254();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136446210;
      v20 = sub_2230F7898();
      v22 = sub_2231A5D38(v20, v21, &v36);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2230CE000, v16, v17, "Could not build %{public}s: Builder has missing required fields", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223DD6780](v19, -1, -1);
      MEMORY[0x223DD6780](v18, -1, -1);
    }

    sub_2231947E0(v8);
    type metadata accessor for RewrittenUtteranceCandidateMessage(0);
    v23 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v24 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v26 = *v12;
    v27 = *(v12 + 1);
    v28 = v2 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput;
    *v28 = *v12;
    *(v28 + 1) = v27;
    v28[16] = v14 & 1;
    v29 = *v11;
    v30 = *(v11 + 1);
    v31 = v2 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext;
    *v31 = *v11;
    *(v31 + 1) = v30;
    v32 = v11[16];
    v31[16] = v32;
    sub_223194344(v26, v27, v14 & 1);
    sub_223195A48(v26, v27, v14);
    sub_22311ACA4(v29, v30, v32);
    v25 = sub_2231DE764(v2, v8);
    v33 = v25;
    sub_223195A60(v26, v27, v14);
    if (v25)
    {
    }

    sub_2231947E0(v8);
  }

  return v25;
}

uint64_t sub_2231947E0(uint64_t a1)
{
  v2 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22319485C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a1 + 16);

  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  v9 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  v10 = v9[6];
  v11 = type metadata accessor for TextBasedTRPCandidateMessage.Builder(0);
  sub_2230DAEC8(a2 + v10, a1 + v11[6]);
  OUTLINED_FUNCTION_8_19(v9[7]);
  OUTLINED_FUNCTION_2_31(v11[7]);

  *v3 = v2;
  v3[1] = v10;
  OUTLINED_FUNCTION_8_19(v9[8]);
  OUTLINED_FUNCTION_2_31(v11[8]);

  *v3 = v2;
  v3[1] = v10;
  OUTLINED_FUNCTION_8_19(v9[10]);
  OUTLINED_FUNCTION_2_31(v11[10]);

  *v3 = v2;
  v3[1] = v10;
  OUTLINED_FUNCTION_8_19(v9[11]);
  OUTLINED_FUNCTION_2_31(v11[11]);

  *v3 = v2;
  v3[1] = v10;
  OUTLINED_FUNCTION_8_19(v9[9]);
  OUTLINED_FUNCTION_2_31(v11[9]);

  *v3 = v2;
  v3[1] = v10;
  *(a1 + v11[12]) = *(a2 + v9[13]);
  *(a1 + v11[13]) = *(a2 + v9[14]);
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.sessionId.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_13_11() + 24);

  return sub_2230D1480(v2, v0);
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_22() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.trpCandidateId.getter()
{
  v0 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.trpCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.tcuId.getter()
{
  v0 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 36));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.tcuId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_13_11() + 40));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v4 + 40));
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.utterance.getter()
{
  v0 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 44));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.siriXRedirectContext.getter()
{
  v0 = OUTLINED_FUNCTION_13_11();
  v1 = OUTLINED_FUNCTION_9_23(*(v0 + 48));

  return sub_22311ACA4(v1, v2, v3);
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.siriXRedirectContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0) + 48);
  result = sub_22311BC80(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.correctionOutcome.getter()
{
  result = OUTLINED_FUNCTION_13_11();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.correctionOutcome.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.correction.getter()
{
  result = OUTLINED_FUNCTION_13_11();
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.correction.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

id RewrittenUtteranceCandidateMessage.Builder.originalUserInput.getter()
{
  v0 = OUTLINED_FUNCTION_13_11();
  v1 = OUTLINED_FUNCTION_9_23(*(v0 + 60));

  return sub_223195A48(v1, v2, v3);
}

void RewrittenUtteranceCandidateMessage.Builder.originalUserInput.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0) + 60);
  sub_223195A60(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.rewriteReason.getter()
{
  result = OUTLINED_FUNCTION_13_11();
  *v0 = *(v1 + *(result + 64));
  return result;
}

uint64_t RewrittenUtteranceCandidateMessage.Builder.rewriteReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RewrittenUtteranceCandidateMessage.Builder(0);
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t sub_2231951A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000223224FF0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5265746972776572 && a2 == 0xED00006E6F736165;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x8000000223220F90 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_2231952CC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x5265746972776572;
  }

  return 0xD000000000000014;
}

uint64_t sub_223195344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231951A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22319536C(uint64_t a1)
{
  v2 = sub_223195A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231953A8(uint64_t a1)
{
  v2 = sub_223195A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RewrittenUtteranceCandidateMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D40, &qword_223216BE8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223195A88();
  sub_223200794();
  if (v2)
  {
    v10 = 0;
  }

  else
  {
    v25 = 0;
    sub_223195ADC();
    OUTLINED_FUNCTION_4_29();
    sub_223200554();
    OUTLINED_FUNCTION_16_10(v24);
    LOBYTE(v23[0]) = 1;
    sub_2232004F4();
    v17 = sub_223200464();

    if (!v17)
    {
      v25 = 2;
      sub_22311BCAC();
      OUTLINED_FUNCTION_4_29();
      sub_2232004C4();
      OUTLINED_FUNCTION_16_10(v24);
      sub_2230F7158(a1, v23);
      v10 = TextBasedTRPCandidateMessage.init(from:)(v23);
      v21 = OUTLINED_FUNCTION_2();
      v22(v21);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v10;
    }

    sub_2230F9E38();
    swift_allocError();
    *v18 = 0xD00000000000001CLL;
    *(v18 + 8) = 0x8000000223224F50;
    *(v18 + 16) = 0;
    swift_willThrow();
    v19 = OUTLINED_FUNCTION_2();
    v20(v19);
    v10 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_3_26((v3 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput));
    sub_223195A78(v11, v12, v13);
  }

  type metadata accessor for RewrittenUtteranceCandidateMessage(0);
  v14 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v15 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t sub_223195744(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D50, &qword_223216BF0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223195A88();
  sub_2232007A4();
  v19 = OUTLINED_FUNCTION_3_26((v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput));
  v20 = v13;
  v21 = v14;
  v22 = 0;
  sub_223194344(v19, v13, v14);
  sub_223195B30();
  OUTLINED_FUNCTION_12_13();
  sub_223200654();
  sub_223195A78(v19, v20, v21);
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_2232005F4();
    v19 = OUTLINED_FUNCTION_3_26((v1 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext));
    v20 = v15;
    v21 = v16;
    v22 = 2;
    sub_22311ACA4(v19, v15, v16);
    sub_22311BD00();
    OUTLINED_FUNCTION_12_13();
    sub_2232005E4();
    sub_22311BC80(v19, v20, v21);
    sub_2231DF660(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_223195974()
{
  v1 = OUTLINED_FUNCTION_3_26((v0 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_originalUserInput));
  sub_223195A78(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_3_26((v0 + OBJC_IVAR____TtC16SiriMessageTypes34RewrittenUtteranceCandidateMessage_siriXRedirectContext));

  return sub_22311BC80(v4, v5, v6);
}

id RewrittenUtteranceCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RewrittenUtteranceCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_223195A48(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_223194344(result, a2, a3 & 1);
  }

  return result;
}

void sub_223195A60(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_223195A78(a1, a2, a3 & 1);
  }
}

void sub_223195A78(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_223195A88()
{
  result = qword_280FCBFA0;
  if (!qword_280FCBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBFA0);
  }

  return result;
}

unint64_t sub_223195ADC()
{
  result = qword_27D059D48;
  if (!qword_27D059D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D48);
  }

  return result;
}

unint64_t sub_223195B30()
{
  result = qword_280FCB250;
  if (!qword_280FCB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB250);
  }

  return result;
}

unint64_t sub_223195B88()
{
  result = qword_27D059D58;
  if (!qword_27D059D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RewrittenUtteranceCandidateMessage.RewriteReason(_BYTE *result, int a2, int a3)
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

uint64_t sub_223195D40()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2230D525C(319, &qword_280FCA740);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCB350);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_2230D525C(319, &qword_280FCD5C0);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCD538);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              sub_2230D525C(319, &qword_280FCB248);
              v1 = v14;
              if (v15 <= 0x3F)
              {
                sub_2230D525C(319, &qword_280FCBF88);
                v1 = v16;
                if (v17 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for RewrittenUtteranceCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223195FFC()
{
  result = qword_27D059D60;
  if (!qword_27D059D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D60);
  }

  return result;
}

unint64_t sub_223196054()
{
  result = qword_280FCBF90;
  if (!qword_280FCBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBF90);
  }

  return result;
}

unint64_t sub_2231960AC()
{
  result = qword_280FCBF98;
  if (!qword_280FCBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCBF98);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_16_10@<Q0>(unsigned __int8 a1@<W8>)
{
  v4 = (v2 + v1);
  result = *(v3 - 128);
  *v4 = result;
  v4[1].n128_u8[0] = a1;
  return result;
}

void *RootRequestCompletedMessage.init(from:)(uint64_t *a1)
{
  sub_2230F7158(a1, v4);
  v2 = RequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t RootRequestCompletedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RootRequestCompletedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootRequestCompletedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootRequestCompletedMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for RootRequestCompletedMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

id RootRequestCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootRequestCompletedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *RootRequestSummaryMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RootRequestSummaryMessage.init(build:)(v1);
}

void *RootRequestSummaryMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for RootRequestSummaryMessage.Builder(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 0;
  v8[8] = 15;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  v9 = *(v5 + 36);
  v10 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v11 = &v8[*(v5 + 40)];
  *v11 = 0;
  *(v11 + 1) = 0;
  a1(v8);
  v12 = *v8;
  if (*v8)
  {
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes25RootRequestSummaryMessage_turnSummaries) = v12;
    MEMORY[0x28223BE20](v12);
    *(&v25 - 2) = v8;

    v13 = RequestMessageBase.init(build:)(sub_223197D3C);
    sub_22319679C(v8);
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v14 = sub_223200014();
    __swift_project_value_buffer(v14, qword_280FCE830);
    v15 = sub_223200004();
    v16 = sub_223200254();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136446210;
      v19 = sub_2230F7898();
      v21 = sub_2231A5D38(v19, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2230CE000, v15, v16, "Could not build %{public}s: Builder has missing required fields", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_22319679C(v8);
    type metadata accessor for RootRequestSummaryMessage(0);
    v22 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v23 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

uint64_t sub_22319679C(uint64_t a1)
{
  v2 = type metadata accessor for RootRequestSummaryMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223196818(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a1 + 16);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v7 = type metadata accessor for RootRequestSummaryMessage.Builder(0);
  v8 = *(v7 + 28);
  v9 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v8, a1 + *(v9 + 24));
  v10 = (a2 + *(v7 + 32));
  v12 = *v10;
  v11 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = v13[1];

  *v13 = v12;
  v13[1] = v11;
  return result;
}

uint64_t sub_223196930()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for RootRequestSummaryMessage(0);
  v1 = objc_msgSendSuper2(&v7, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  v8 = v2;
  v9 = v4;
  MEMORY[0x223DD5AA0](0xD000000000000012, 0x8000000223225090);
  v5 = MEMORY[0x223DD5B40](*&v0[OBJC_IVAR____TtC16SiriMessageTypes25RootRequestSummaryMessage_turnSummaries], &type metadata for TurnSummary);
  MEMORY[0x223DD5AA0](v5);

  MEMORY[0x223DD5AA0](4073769, 0xE300000000000000);
  return v8;
}

uint64_t RootRequestSummaryMessage.Builder.turnSummaries.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t RootRequestSummaryMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootRequestSummaryMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t RootRequestSummaryMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootRequestSummaryMessage.Builder(0) + 28);

  return sub_2230D1480(v3, a1);
}

uint64_t RootRequestSummaryMessage.Builder.sessionId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RootRequestSummaryMessage.Builder(0) + 28);

  return sub_2230D4E04(a1, v3);
}

uint64_t RootRequestSummaryMessage.Builder.requestId.getter()
{
  v1 = (v0 + *(type metadata accessor for RootRequestSummaryMessage.Builder(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootRequestSummaryMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootRequestSummaryMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t sub_223196CC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D6D75536E727574 && a2 == 0xED00007365697261)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_223196D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223196CC4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223196D98(uint64_t a1)
{
  v2 = sub_223197D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223196DD4(uint64_t a1)
{
  v2 = sub_223197D44();

  return MEMORY[0x2821FE720](a1, v2);
}

void RootRequestSummaryMessage.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D68, &qword_223216F08);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223197D44();
  sub_223200794();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    type metadata accessor for RootRequestSummaryMessage(0);
    v9 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
    v10 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D78, &qword_223216F10);
    sub_223197DEC(&qword_27D059D80, sub_223197D98);
    sub_223200554();
    *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25RootRequestSummaryMessage_turnSummaries) = v13[0];
    sub_2230F7158(v3, v13);
    RequestMessageBase.init(from:)(v13);
    v11 = OUTLINED_FUNCTION_2();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_223197098()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D90, &qword_223216F18);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_223197D44();
  sub_2232007A4();
  v12 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes25RootRequestSummaryMessage_turnSummaries);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059D78, &qword_223216F10);
  sub_223197DEC(&qword_27D059D98, sub_223197E64);
  sub_223200654();
  if (!v1)
  {
    sub_2230D77A8(v4);
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_9_0();
}

id RootRequestSummaryMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootRequestSummaryMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TurnSummary.executedQuery.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

void TurnSummary.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  a1(&v14);
  v3 = v15;
  v4 = v16;
  if (v15)
  {
    if (v16)
    {
      *a2 = v14;
      a2[1] = v3;
      a2[2] = v4;
      return;
    }
  }

  else
  {
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v5 = sub_223200014();
  __swift_project_value_buffer(v5, qword_280FCE830);
  v6 = sub_223200004();
  v7 = sub_223200254();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446210;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059DA8, &qword_223216F20);
    v10 = sub_223200104();
    v12 = sub_2231A5D38(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2230CE000, v6, v7, "Could not build %{public}s: Builder has missing required fields", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_14();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t TurnSummary.Builder.executedQuery.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t TurnSummary.Builder.executedQuery.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TurnSummary.Builder.addViewsList.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void TurnSummary.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059DB0, &qword_223216F28);
  OUTLINED_FUNCTION_9(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v19 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_223197EB8();
  sub_223200794();
  if (!v10)
  {
    LOBYTE(v37[0]) = 0;
    v20 = sub_2232004F4();
    v22 = v21;
    LOBYTE(a10) = 1;
    sub_2230FB7A0();
    sub_223200554();
    v33 = v20;
    v34 = v14;
    v24 = v37[0];
    v23 = v37[1];
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598C8, &qword_223214510);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_223214360;
    *(v25 + 32) = sub_2230FB7F4(0, &qword_27D0598D0, 0x277CBEA60);
    *(v25 + 40) = sub_2230FB7F4(0, &qword_27D059088, 0x277D479E8);
    v36 = v23;
    sub_223200274();
    v35 = v24;

    if (v37[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059DC0, &qword_223216F30);
      v26 = v33;
      v27 = v34;
      if (swift_dynamicCast())
      {
        v28 = a10;
        sub_2230D94DC(v35, v36);
LABEL_11:
        v31 = OUTLINED_FUNCTION_1_24();
        v32(v31);
        *v27 = v26;
        v27[1] = v22;
        v27[2] = v28;

        __swift_destroy_boxed_opaque_existential_1(v12);

        goto LABEL_4;
      }

      v29 = v35;
      v30 = v23;
    }

    else
    {
      sub_22318118C(v37);
      v27 = v34;
      v29 = v24;
      v30 = v23;
      v26 = v33;
    }

    sub_2230D94DC(v29, v30);
    v28 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
LABEL_4:
  OUTLINED_FUNCTION_9_0();
}

void TurnSummary.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v26 = v1;
  v3 = v2;
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059DC8, &qword_223216F38);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v13 = *v0;
  v12 = v0[1];
  v25 = v0[2];
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_223197EB8();
  sub_2232007A4();
  LOBYTE(v28[0]) = 0;
  v15 = v26;
  sub_2232005F4();
  if (!v15)
  {
    v16 = objc_opt_self();
    sub_2230FB7F4(0, &qword_27D059088, 0x277D479E8);
    v17 = sub_2232001C4();
    v28[0] = 0;
    v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v28];

    v19 = v28[0];
    if (v18)
    {
      v20 = sub_2231FFD24();
      v22 = v21;

      v28[0] = v20;
      v28[1] = v22;
      v27 = 1;
      sub_2230D7754();
      sub_223200654();
      (*(v6 + 8))(v11, v4);
      sub_2230D94DC(v20, v22);
      goto LABEL_5;
    }

    v24 = v19;
    sub_2231FFD04();

    swift_willThrow();
  }

  (*(v6 + 8))(v11, v4);
LABEL_5:
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223197AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465747563657865 && a2 == 0xED00007972657551;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7377656956646461 && a2 == 0xEC0000007473694CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223197BA4(char a1)
{
  if (a1)
  {
    return 0x7377656956646461;
  }

  else
  {
    return 0x6465747563657865;
  }
}

uint64_t sub_223197BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223197AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223197C20(uint64_t a1)
{
  v2 = sub_223197EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223197C5C(uint64_t a1)
{
  v2 = sub_223197EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static TurnSummary.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2232006B4() & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_2_1();

  return sub_22315F180(v5, v6);
}

unint64_t sub_223197D44()
{
  result = qword_27D059D70;
  if (!qword_27D059D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D70);
  }

  return result;
}

unint64_t sub_223197D98()
{
  result = qword_27D059D88;
  if (!qword_27D059D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059D88);
  }

  return result;
}

uint64_t sub_223197DEC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059D78, &qword_223216F10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223197E64()
{
  result = qword_27D059DA0;
  if (!qword_27D059DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059DA0);
  }

  return result;
}

unint64_t sub_223197EB8()
{
  result = qword_27D059DB8;
  if (!qword_27D059DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059DB8);
  }

  return result;
}

uint64_t sub_223197FB0()
{
  sub_2231980A0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCB0A8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230D525C(319, &qword_280FCA4D8);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_2230F6D30();
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_2231980A0()
{
  if (!qword_27D059DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059D78, &qword_223216F10);
    v0 = sub_2232002D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D059DF0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TurnSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RootRequestSummaryMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231982B0()
{
  result = qword_27D059DF8;
  if (!qword_27D059DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059DF8);
  }

  return result;
}

unint64_t sub_223198308()
{
  result = qword_27D059E00;
  if (!qword_27D059E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E00);
  }

  return result;
}

unint64_t sub_223198360()
{
  result = qword_27D059E08;
  if (!qword_27D059E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E08);
  }

  return result;
}

unint64_t sub_2231983B8()
{
  result = qword_27D059E10;
  if (!qword_27D059E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E10);
  }

  return result;
}

unint64_t sub_223198410()
{
  result = qword_27D059E18;
  if (!qword_27D059E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E18);
  }

  return result;
}

unint64_t sub_223198468()
{
  result = qword_27D059E20;
  if (!qword_27D059E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E20);
  }

  return result;
}

uint64_t sub_22319850C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x495052547473616CLL && a2 == 0xE900000000000064;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000223222870 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231985E4(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x495052547473616CLL;
  }
}

uint64_t sub_22319862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22319850C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223198654(uint64_t a1)
{
  v2 = sub_223199650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223198690(uint64_t a1)
{
  v2 = sub_223199650();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RootStoppedListeningForSpeechContinuationMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return RootStoppedListeningForSpeechContinuationMessage.init(build:)(v1);
}

void *RootStoppedListeningForSpeechContinuationMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v53 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_2231FFDA4();
  v8 = OUTLINED_FUNCTION_9(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 15;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v18 = v14[8];
  __swift_storeEnumTagSinglePayload(&v17[v18], 1, 1, v7);
  v19 = &v17[v14[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[v14[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v14[11];
  v17[v21] = 3;
  a1(v17);
  v22 = *v17;
  if (v22 == 15)
  {
    goto LABEL_13;
  }

  v23 = *(v17 + 2);
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = *(v17 + 1);
  sub_2230D1480(&v17[v18], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_13:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v38 = sub_223200014();
    __swift_project_value_buffer(v38, qword_280FCE830);
    v39 = sub_223200004();
    v40 = sub_223200254();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      *v41 = 136446210;
      v43 = sub_2230F7898();
      v45 = sub_2231A5D38(v43, v44, &v54);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_2230CE000, v39, v40, "Could not build %{public}s: Builder has missing required fields", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x223DD6780](v42, -1, -1);
      MEMORY[0x223DD6780](v41, -1, -1);
    }

    sub_223198BB8(v17);
    type metadata accessor for RootStoppedListeningForSpeechContinuationMessage(0);
    v46 = *((*MEMORY[0x277D85000] & *v53) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v53) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v49 = v24;
  v26 = v50;
  v25 = v51;
  (*(v51 + 32))(v50, v6, v7);
  if (!*(v19 + 1) || (v27 = *(v20 + 1)) == 0)
  {
    (*(v25 + 8))(v26, v7);
    goto LABEL_13;
  }

  v28 = *v19;
  v29 = *v20;
  v30 = v26;
  v31 = v53;
  v32 = (v53 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId);
  *v32 = v29;
  v32[1] = v27;
  v33 = v17[v21];
  if (v33 == 3)
  {
    LOBYTE(v33) = 1;
  }

  *(v31 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_mitigationDecision) = v33;
  MEMORY[0x28223BE20](v27);
  *(&v49 - 48) = v22;
  *(&v49 - 5) = v49;
  *(&v49 - 4) = v23;
  *(&v49 - 3) = v30;
  *(&v49 - 2) = v34;
  *(&v49 - 1) = v35;

  v36 = RequestMessageBase.init(build:)(sub_2230DDE2C);
  v37 = v36;
  sub_223198BB8(v17);
  if (v36)
  {
  }

  (*(v51 + 8))(v30, v7);
  return v36;
}

uint64_t sub_223198BB8(uint64_t a1)
{
  v2 = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *RootStoppedListeningForSpeechContinuationMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E28, &qword_2232172A8);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223199650();
  sub_223200794();
  if (v2)
  {
    v16 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for RootStoppedListeningForSpeechContinuationMessage(0);
    v11 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v12 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    v10 = sub_2232004F4();
    v14 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId);
    *v14 = v10;
    v14[1] = v15;
    v20 = 1;
    sub_2231996A4();
    sub_223200554();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_mitigationDecision) = v19[0];
    sub_2230F7158(a1, v19);
    v16 = RequestMessageBase.init(from:)(v19);
    v17 = OUTLINED_FUNCTION_2();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v16;
}

uint64_t sub_223198F08(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059E38, &qword_2232172B0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223199650();
  sub_2232007A4();
  v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId);
  v14 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId + 8);
  v19 = 0;
  sub_2232005F4();
  if (!v2)
  {
    v18 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_mitigationDecision);
    v17 = 1;
    sub_2231996F8();
    sub_223200654();
    sub_2230D77A8(a1);
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_223199110()
{
  v1 = v0;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_223200374();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage(0);
  v2 = objc_msgSendSuper2(&v8, sel_description);
  v3 = sub_2232000C4();
  v5 = v4;

  MEMORY[0x223DD5AA0](v3, v5);

  MEMORY[0x223DD5AA0](0x547473616C3C202CLL, 0xEE00203A64495052);
  MEMORY[0x223DD5AA0](*&v1[OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId], *&v1[OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_lastTRPId + 8]);
  MEMORY[0x223DD5AA0](0xD000000000000018, 0x80000002232227F0);
  v7 = v1[OBJC_IVAR____TtC16SiriMessageTypes48RootStoppedListeningForSpeechContinuationMessage_mitigationDecision];
  sub_2232003C4();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v9;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_30() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.requestId.getter()
{
  v0 = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 28));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0) + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.getter()
{
  v0 = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  OUTLINED_FUNCTION_3_0(*(v0 + 32));
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0) + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.mitigationDecision.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t RootStoppedListeningForSpeechContinuationMessage.Builder.mitigationDecision.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage.Builder(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

id RootStoppedListeningForSpeechContinuationMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootStoppedListeningForSpeechContinuationMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223199650()
{
  result = qword_280FCB700;
  if (!qword_280FCB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB700);
  }

  return result;
}

unint64_t sub_2231996A4()
{
  result = qword_27D059E30;
  if (!qword_27D059E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059E30);
  }

  return result;
}

unint64_t sub_2231996F8()
{
  result = qword_280FCA7A0;
  if (!qword_280FCA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA7A0);
  }

  return result;
}

uint64_t sub_2231997F4()
{
  sub_2230D525C(319, &qword_280FCB0A8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2230F6D30();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA790);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}