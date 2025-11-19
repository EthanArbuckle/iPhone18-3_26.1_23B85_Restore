uint64_t sub_1DCC6C6E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v73 = a4;
  v74 = a5;
  v71 = a2;
  v72 = a3;
  v6 = sub_1DD0DBB1C();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v64 - v13;
  v69 = *(a1 + 16);
  if (!v69)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v47 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v47, qword_1EDE57E00);
    v48 = sub_1DD0DD8EC();
    v49 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DCAFC000, v48, v49, "Identifiers are empty. Cannot match anything. Returning nil", v50, 2u);
      MEMORY[0x1E12A8390](v50, -1, -1);
    }

    return 0;
  }

  v15 = 0;
  v17 = *(v12 + 16);
  v16 = v12 + 16;
  v18 = (*(v16 + 64) + 32) & ~*(v16 + 64);
  v19 = *(v16 + 56);
  v75 = v17;
  v76 = 0x80000001DD115D60;
  v66 = v18;
  v67 = (v16 + 16);
  v20 = (v16 - 8);
  v64 = a1;
  v21 = a1 + v18;
  v70 = MEMORY[0x1E69E7CC0];
  for (i = v21; ; v21 = i)
  {
    v22 = ~v15;
    v23 = v19;
    v24 = v21 + v19 * v15;
    v25 = v69 - v15;
    if (v69 == v15)
    {
      break;
    }

    while (1)
    {
      v26 = v6;
      v27 = v16;
      v75(v14, v24, v6);
      if (sub_1DD0DBADC() == 0xD000000000000013 && v76 == v28)
      {
      }

      else
      {
        v30 = sub_1DD0DF0AC();

        if ((v30 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v31 = sub_1DD0DBB0C();
      if (v32)
      {
        break;
      }

LABEL_24:
      v6 = v26;
      (*v20)(v14, v26);
      --v22;
      v24 += v23;
      --v25;
      v16 = v27;
      if (!v25)
      {
        goto LABEL_32;
      }
    }

    if (v31 == v73 && v32 == v74)
    {
    }

    else
    {
      v34 = sub_1DD0DF0AC();

      if ((v34 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if (sub_1DD0DBAFC() != v71 || v35 != v72)
    {
      v37 = sub_1DD0DF0AC();

      if (v37)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_27:
    v38 = *v67;
    (*v67)(v68, v14, v26);
    v39 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DCE06BA8(0, *(v39 + 16) + 1, 1);
      v39 = v77;
    }

    v42 = *(v39 + 16);
    v41 = *(v39 + 24);
    v43 = v39;
    if (v42 >= v41 >> 1)
    {
      sub_1DCE06BA8(v41 > 1, v42 + 1, 1);
      v43 = v77;
    }

    v15 = -v22;
    *(v43 + 16) = v42 + 1;
    v70 = v43;
    v19 = v23;
    v44 = v43 + v66 + v42 * v23;
    v6 = v26;
    v38(v44, v68, v26);
    v16 = v27;
  }

LABEL_32:
  v45 = *(v70 + 16);
  if (!v45)
  {

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v51 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v51, qword_1EDE57E00);
    v52 = v74;

    v53 = v72;

    v54 = v64;

    v55 = sub_1DD0DD8EC();
    v56 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = v6;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v77 = v59;
      *v58 = 136315906;
      *(v58 + 4) = sub_1DCB10E9C(0xD000000000000013, v76, &v77);
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_1DCB10E9C(v73, v52, &v77);
      *(v58 + 22) = 2080;
      *(v58 + 24) = sub_1DCB10E9C(v71, v53, &v77);
      *(v58 + 32) = 2080;
      v60 = MEMORY[0x1E12A6960](v54, v57);
      v62 = sub_1DCB10E9C(v60, v61, &v77);

      *(v58 + 34) = v62;
      _os_log_impl(&dword_1DCAFC000, v55, v56, "Matches are empty. Cannot match appBundleId: %s namespace: %s value: %s in identifiers: %s", v58, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v59, -1, -1);
      MEMORY[0x1E12A8390](v58, -1, -1);
    }

    return 0;
  }

  if (v45 != 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v63 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v63, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  return 1;
}

uint64_t sub_1DCC6CE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC6CE24, 0, 0);
}

uint64_t sub_1DCC6CE24()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1DD0DDE9C();
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v4;
  *(v3 + 24) = 0;
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DCC6CED0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DD0DB5BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DD0DB7DC();
  if (!sub_1DCB08B14(v19))
  {

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    (*(v5 + 16))(v9, a1, v4);
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v34[0] = v14;
      *v13 = 136315138;
      sub_1DCC6D478(&qword_1ECCA29C0, MEMORY[0x1E69D0A68]);
      v15 = sub_1DD0DD6EC();
      v17 = v16;
      (*(v5 + 8))(v9, v4);
      v18 = sub_1DCB10E9C(v15, v17, v34);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "No task in userDialogAct. Will not parse: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    return 0;
  }

  sub_1DCB35460(0, (v19 & 0xC000000000000001) == 0, v19);
  if ((v19 & 0xC000000000000001) == 0)
  {
    v20 = *(v19 + 32);
    sub_1DD0DCF8C();
  }

  MEMORY[0x1E12A72C0](0, v19);

  v21 = sub_1DCC69D70();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    goto LABEL_16;
  }

  if (v2[5])
  {
    v24 = v2[7];
    if (v24)
    {
      v23 = v2[6];
      v25 = v2[7];

LABEL_16:
      v26 = sub_1DD0DC70C();
      v27 = sub_1DCB90DA0(v23, v24, v26);

      if (!v27)
      {
LABEL_22:

        return 0;
      }

LABEL_17:
      if (sub_1DCB08B14(v27))
      {
        sub_1DCB35460(0, (v27 & 0xC000000000000001) == 0, v27);
        if ((v27 & 0xC000000000000001) == 0)
        {
          v28 = *(v27 + 32);
          sub_1DD0DCF8C();
        }

        v29 = MEMORY[0x1E12A72C0](0, v27);

        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  v31 = sub_1DD0DC70C();
  sub_1DCC622AC(v31);
  v29 = v32;
  v27 = v33;

  if (v29)
  {

    goto LABEL_17;
  }

LABEL_20:

  return v29;
}

uint64_t sub_1DCC6D300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for USOParse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC6D364(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCB193FC;

  return sub_1DCC6CE00(a1, v5, v4);
}

uint64_t sub_1DCC6D410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC6D478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCC6D4E4()
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (qword_1ECCA1250 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DAADC();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = sub_1DD0DAEFC();
  v13[0] = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:v13];

  if (!v5)
  {
    v8 = v13[0];
    v7 = sub_1DD0DAE0C();

    swift_willThrow();
LABEL_8:
    sub_1DCB21A14(v0, v2);
    goto LABEL_9;
  }

  v6 = v13[0];
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  if (!swift_dynamicCast())
  {
    sub_1DCC6D7A0();
    v7 = swift_allocError();
    *v9 = 0xD00000000000002ALL;
    v9[1] = 0x80000001DD115E40;
    goto LABEL_8;
  }

  sub_1DCB21A14(v0, v2);
  v7 = v12;
LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1DCC6D720()
{
  v0 = sub_1DD0DAAFC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DD0DAAEC();
  qword_1ECCA29C8 = result;
  return result;
}

unint64_t sub_1DCC6D7A0()
{
  result = qword_1ECCA29D0;
  if (!qword_1ECCA29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29D0);
  }

  return result;
}

void sub_1DCC6D7F4(char a1)
{
  switch(a1)
  {
    case 2:
    case 9:
    case 10:
      OUTLINED_FUNCTION_3_28();
      break;
    case 3:
    case 7:
      OUTLINED_FUNCTION_5_4();
      break;
    default:
      return;
  }
}

unint64_t sub_1DCC6D960(char a1)
{
  result = 0x546D7269666E6F43;
  switch(a1)
  {
    case 1:
      result = 0x4E746361746E6F43;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x64726143654D6F4ELL;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = OUTLINED_FUNCTION_5_4();
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCC6DA40(unsigned __int8 a1)
{
  switch(a1 >> 5)
  {
    case 1:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v17[0] = v12;
      v17[1] = v11;
      sub_1DCC6D7F4(a1 & 0x1F);
      goto LABEL_22;
    case 2:
      strcpy(v17, "CommonTCC#");
      BYTE3(v17[1]) = 0;
      HIDWORD(v17[1]) = -369098752;
      v6 = a1 & 0x1F;
      if ((a1 & 0x1F) != 0)
      {
        if (v6 == 1)
        {
          v7 = 0xD000000000000014;
        }

        else
        {
          v7 = 0xD000000000000011;
        }

        if (v6 == 1)
        {
          v8 = "ConfirmationCancelled";
        }

        else
        {
          v8 = "eciseLocationBySiriOneTime";
        }
      }

      else
      {
        v7 = 0xD000000000000015;
        v8 = "AccessLocationUsingSiri";
      }

      MEMORY[0x1E12A6780](v7, v8 | 0x8000000000000000);
      goto LABEL_23;
    case 3:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v17[0] = v10 | 2;
      v17[1] = v9;
      v3 = sub_1DCC6D960(a1 & 0x1F);
      goto LABEL_22;
    case 4:
      OUTLINED_FUNCTION_0_21();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v17[0] = v5 | 2;
      v17[1] = v4;
      if (a1)
      {
        v3 = 0x4974736575716552;
      }

      else
      {
        v3 = 0x496D7269666E6F43;
      }

      goto LABEL_22;
    case 5:
      switch(a1)
      {
        case 0xA1u:
          v16 = 5;
          goto LABEL_28;
        case 0xA2u:
        case 0xA3u:
          v16 = 11;
LABEL_28:
          result = v16 | 0xD000000000000010;
          break;
        case 0xA4u:
          OUTLINED_FUNCTION_6_21();
          result = v15 + 20;
          break;
        default:
          OUTLINED_FUNCTION_6_21();
          result = v13 | 6;
          break;
      }

      return result;
    default:
      strcpy(v17, "CommonErrors#");
      HIWORD(v17[1]) = -4864;
      if (a1)
      {
        OUTLINED_FUNCTION_5_23();
        v3 = OUTLINED_FUNCTION_4_20(v2);
      }

      else
      {
        v3 = 0xD000000000000010;
      }

LABEL_22:
      MEMORY[0x1E12A6780](v3);
LABEL_23:

      return v17[0];
  }
}

void CATPerson.init(person:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DCB35468(a1, &selRef_firstName);
  v20 = v5;
  v21 = v4;
  v19 = sub_1DCB35468(a1, &selRef_middleName);
  v7 = v6;
  v8 = sub_1DCB35468(a1, &selRef_lastName);
  v10 = v9;
  v11 = sub_1DCB35468(a1, &selRef_nickName);
  v13 = v12;
  v14 = [a1 fullName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1DD0DDFBC();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0;
  }

  *a2 = v8;
  a2[1] = v10;
  a2[2] = v19;
  a2[3] = v7;
  a2[4] = v21;
  a2[5] = v20;
  a2[6] = v11;
  a2[7] = v13;
  a2[8] = v16;
  a2[9] = v18;
}

void sub_1DCC6DDEC(void *a1@<X0>, void *a2@<X8>)
{
  v6 = [a1 phoneticGivenName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_3_29();

  v7 = [a1 givenName];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_2_34();

  a2[4] = v7;
  a2[5] = v2;
  v8 = [a1 phoneticMiddleName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_3_29();

  v9 = [a1 middleName];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_2_34();

  a2[2] = v9;
  a2[3] = v2;
  v10 = [a1 phoneticFamilyName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_3_29();

  v11 = [a1 familyName];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_2_34();

  *a2 = v11;
  a2[1] = v2;
  v12 = [a1 nickname];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_3_29();

  a2[6] = v2;
  a2[7] = v3;
  a2[8] = 0;
  a2[9] = 0;
}

uint64_t sub_1DCC6DF90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    a1 = a3;
  }

  return a1;
}

uint64_t sub_1DCC6DFD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6B63696ELL && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD0DF0AC();

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

uint64_t sub_1DCC6E1A4(char a1)
{
  result = 0x614E796C696D6166;
  switch(a1)
  {
    case 1:
      result = 0x614E656C6464696DLL;
      break;
    case 2:
      result = 0x6D614E6E65766967;
      break;
    case 3:
      result = 0x656D614E6B63696ELL;
      break;
    case 4:
      result = 0x656D614E6C6C7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCC6E24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCC6DFD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCC6E294@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC6E190();
  *a1 = result;
  return result;
}

uint64_t sub_1DCC6E2BC(uint64_t a1)
{
  v2 = sub_1DCC6E564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCC6E2F8(uint64_t a1)
{
  v2 = sub_1DCC6E564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CATPerson.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29D8, &qword_1DD0E7CB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v18[7] = v1[3];
  v18[8] = v11;
  v12 = v1[4];
  v18[5] = v1[5];
  v18[6] = v12;
  v13 = v1[6];
  v18[3] = v1[7];
  v18[4] = v13;
  v14 = v1[9];
  v18[1] = v1[8];
  v18[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCC6E564();
  sub_1DD0DF24C();
  v23 = 0;
  v16 = v18[9];
  sub_1DD0DEF8C();
  if (!v16)
  {
    v22 = 1;
    OUTLINED_FUNCTION_1_27();
    v21 = 2;
    OUTLINED_FUNCTION_1_27();
    v20 = 3;
    OUTLINED_FUNCTION_1_27();
    v19 = 4;
    OUTLINED_FUNCTION_1_27();
  }

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1DCC6E564()
{
  result = qword_1ECCA29E0;
  if (!qword_1ECCA29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CATPerson(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for CATPerson(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CATPerson.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CATPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCC6E7EC()
{
  result = qword_1ECCA29E8;
  if (!qword_1ECCA29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29E8);
  }

  return result;
}

unint64_t sub_1DCC6E844()
{
  result = qword_1ECCA29F0;
  if (!qword_1ECCA29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29F0);
  }

  return result;
}

unint64_t sub_1DCC6E89C()
{
  result = qword_1ECCA29F8;
  if (!qword_1ECCA29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA29F8);
  }

  return result;
}

void sub_1DCC6E8F0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E699A0B8]) init];
  v3 = [v0 catId];
  v4 = v3;
  if (!v3)
  {
    sub_1DD0DDFBC();
    v4 = sub_1DD0DDF8C();
  }

  OUTLINED_FUNCTION_3_30(v3, sel_setCatId_);

  v5 = [v1 meta];
  sub_1DD0DDE6C();

  v6 = sub_1DD0DDE4C();

  OUTLINED_FUNCTION_3_30(v7, sel_setMeta_);

  v8 = [v1 print];
  v9 = sub_1DD0DE2EC();

  v10 = *(v9 + 16);

  if (v10)
  {
    sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
    v11 = 4;
    v12 = 40;
    v87 = v1;
    v88 = v2;
    while (1)
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E699A0B0]) init];
      v14 = [v1 print];
      v15 = sub_1DD0DE2EC();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        break;
      }

      v18 = *(v15 + v12 - 8);
      v17 = *(v15 + v12);

      v19 = sub_1DD0DDF8C();

      OUTLINED_FUNCTION_3_30(v20, sel_setFullPrint_);

      v21 = [v1 speak];
      v22 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v23 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v23, sel_setFullSpeak_);

      v24 = [v1 captionPrint];
      v25 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v26 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v26, sel_setSupportingPrint_);

      v27 = [v1 captionSpeak];
      v28 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v29 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v29, sel_setSupportingSpeak_);

      v30 = [v1 unfilteredPrint];
      v31 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v32 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v32, sel_setUnfilteredFullPrint_);

      v33 = [v1 unfilteredSpeak];
      v34 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v35 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v35, sel_setUnfilteredFullSpeak_);

      v36 = [v1 unfilteredCaptionPrint];
      v37 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v38 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v38, sel_setUnfilteredSupportingPrint_);

      v39 = [v1 unfilteredCaptionSpeak];
      v40 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v41 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v41, sel_setUnfilteredSupportingSpeak_);

      v42 = [v1 redactedPrint];
      v43 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v44 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v44, sel_setRedactedFullPrint_);

      v45 = [v1 redactedSpeak];
      v46 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v47 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v47, sel_setRedactedFullSpeak_);

      v48 = [v1 redactedCaptionPrint];
      v49 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v50 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v50, sel_setRedactedSupportingPrint_);

      v51 = [v1 redactedCaptionSpeak];
      v52 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v53 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v53, sel_setRedactedSupportingSpeak_);

      v54 = [v1 redactedPrint];
      v55 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v56 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v56, sel_setUnfilteredRedactedFullPrint_);

      v57 = [v1 redactedSpeak];
      v58 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_0_24();

      OUTLINED_FUNCTION_6_22();
      v59 = OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_3_30(v59, sel_setUnfilteredRedactedFullSpeak_);

      v60 = [v1 spokenOnlyDefined];
      v61 = sub_1DD0DE2EC();

      OUTLINED_FUNCTION_2_35();
      if (v60)
      {
        OUTLINED_FUNCTION_8_27();
      }

      else
      {
        v62 = *(v61 + 8 * v11);
      }

      OUTLINED_FUNCTION_7_23();
      v63 = [v18 BOOLValue];

      [v13 setSpokenOnlyDefined_];
      if ([v13 spokenOnlyDefined])
      {
        v60 = [v1 spokenOnly];
        v64 = sub_1DD0DE2EC();

        OUTLINED_FUNCTION_2_35();
        if (v60)
        {
          OUTLINED_FUNCTION_8_27();
        }

        else
        {
          v65 = *(v64 + 8 * v11);
        }

        OUTLINED_FUNCTION_7_23();
        v66 = [v18 BOOLValue];
      }

      else
      {
        v66 = 0;
      }

      [v13 setSpokenOnly_];
      v67 = [v1 printOnly];
      v68 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_2_35();
      if (v60)
      {
        OUTLINED_FUNCTION_8_27();
      }

      else
      {
        v69 = *(v68 + 8 * v11);
      }

      OUTLINED_FUNCTION_7_23();
      v70 = sub_1DD0DE8CC();
      v71 = sub_1DD0DE8EC();

      [v13 setPrintOnly_];
      v72 = [v1 isApprovedForGrading];
      v73 = OUTLINED_FUNCTION_4_21();

      OUTLINED_FUNCTION_2_35();
      if (v70)
      {
        OUTLINED_FUNCTION_8_27();
      }

      else
      {
        v74 = *(v73 + 8 * v11);
      }

      OUTLINED_FUNCTION_7_23();
      v75 = [v18 BOOLValue];

      [v13 setIsApprovedForGrading_];
      v76 = [v1 dialogId];
      v77 = sub_1DD0DE2EC();

      OUTLINED_FUNCTION_1_28();
      if (v16)
      {
        goto LABEL_54;
      }

      v78 = v10;
      v79 = *(v77 + v12 - 8);
      v80 = *(v77 + v12);

      v81 = sub_1DD0DDF8C();

      OUTLINED_FUNCTION_3_30(v82, sel_setId_);

      v83 = v13;
      v84 = [v88 dialog];
      sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
      v85 = sub_1DD0DE2EC();

      MEMORY[0x1E12A6920]();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
      v86 = sub_1DD0DE2DC();

      [v88 setDialog_];

      ++v11;
      v12 += 16;
      v10 = v78 - 1;
      v1 = v87;
      if (v78 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
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
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }
}

uint64_t sub_1DCC6F2C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DD0DEB3C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    result = sub_1DD0DED0C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1E12A72C0](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        sub_1DCC6E8F0();

        sub_1DD0DECDC();
        v7 = *(v8 + 16);
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
      }

      while (v2 != v4);
      return v8;
    }
  }

  return result;
}

uint64_t sub_1DCC6FABC()
{
  type metadata accessor for CATTemplateExecutor();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 28) = 1;
  *(result + 32) = sub_1DCC6FBF0;
  *(result + 40) = 0;
  qword_1EDE57D40 = result;
  return result;
}

uint64_t sub_1DCC6FB0C()
{
  if (v0[2])
  {
    v1 = v0[2];
  }

  else
  {
    v2 = v0[4];
    v3 = v0[5];
    v1 = v2();
  }

  return v1;
}

uint64_t sub_1DCC6FB54()
{
  v1 = (v0 + 24);
  if (*(v0 + 28))
  {
    v1 = MEMORY[0x1E699A088];
  }

  return *v1;
}

id sub_1DCC6FB74()
{
  v1 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];

  return v3;
}

void sub_1DCC6FBF0()
{
  v0 = sub_1DD0DB0FC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDE46630;
  sub_1DCB4E718(v8);
  v6 = __swift_destroy_boxed_opaque_existential_1Tm(v8);
  RefreshableDeviceState.siriLocale.getter(v6);
  sub_1DCCE56A8(v5, v4);
}

uint64_t sub_1DCC6FD14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 28) = 1;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2;
}

uint64_t sub_1DCC6FD30(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 80) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC6FD4C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = *(v0 + 80);
  *(v0 + 48) = sub_1DCC6FB74();
  sub_1DCC677D8(v2);
  *(v0 + 56) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1DCC6FE0C;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = OUTLINED_FUNCTION_30_10();

  return sub_1DCC70910(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCC6FE0C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  v5[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCC6FF50, 0, 0);
  }

  else
  {
    v12 = v5[6];
    v11 = v5[7];

    OUTLINED_FUNCTION_69();

    return v13(v3);
  }
}

uint64_t sub_1DCC6FF50()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_29();
  v4 = v0[9];

  return v3();
}

uint64_t sub_1DCC6FFB0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 176) = a5;
  *(v6 + 184) = v5;
  *(v6 + 160) = a3;
  *(v6 + 168) = a4;
  *(v6 + 232) = a2;
  *(v6 + 152) = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC6FFD0()
{
  if (*(v0 + 232) == 20)
  {
    v1 = OUTLINED_FUNCTION_2_36();
    sub_1DCD15EF0(v1, v2, 0x45636972656E6547, 0xEC000000726F7272);
    v3 = *(v0 + 232);
  }

  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v8 = *(v0 + 168);
  sub_1DCC6FB0C();

  sub_1DCC70860(v7);
}

uint64_t sub_1DCC70238()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 224) = v4;
  if (v4)
  {
    v5 = sub_1DCC707DC;
  }

  else
  {
    v5 = sub_1DCC7033C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC7033C()
{
  v50 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 144);

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  v6 = v4;
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  v9 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v10 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if (os_log_type_enabled(v7, v8))
  {
    v48 = v8;
    v11 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v11 = 136316418;
    v12 = [v6 print];
    sub_1DD0DE2EC();

    OUTLINED_FUNCTION_39_8();
    v13 = OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_25_9(v13, v14);
    OUTLINED_FUNCTION_31_8();

    *(v11 + 4) = v12;
    *(v11 + 12) = 2048;
    v15 = [v6 print];
    v16 = OUTLINED_FUNCTION_24_12();

    v17 = *(v16 + 16);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = [v6 speak];
    OUTLINED_FUNCTION_24_12();

    OUTLINED_FUNCTION_39_8();
    v19 = OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_25_9(v19, v20);
    OUTLINED_FUNCTION_31_8();

    *(v11 + 24) = v17;
    *(v11 + 32) = 2048;
    v21 = [v6 speak];
    v22 = OUTLINED_FUNCTION_24_12();

    v23 = *(v22 + 16);

    *(v11 + 34) = v23;
    v10 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;

    *(v11 + 42) = 2080;
    v24 = [v6 captionPrint];
    OUTLINED_FUNCTION_24_12();

    OUTLINED_FUNCTION_39_8();
    v25 = OUTLINED_FUNCTION_23_8();
    OUTLINED_FUNCTION_25_9(v25, v26);
    OUTLINED_FUNCTION_31_8();

    *(v11 + 44) = v17;
    *(v11 + 52) = 2080;
    v27 = [v6 captionSpeak];
    OUTLINED_FUNCTION_24_12();

    OUTLINED_FUNCTION_39_8();
    v29 = v28;
    v31 = v30;

    v32 = sub_1DCB10E9C(v29, v31, &v49);
    v9 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;

    *(v11 + 54) = v32;
    _os_log_impl(&dword_1DCAFC000, v7, v48, "CAT.execute returns: print=%s (size=%ld), speak=%s (size=%ld), captionPrint=%s) captionSpeak=%s", v11, 0x3Eu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v33 = *(v0 + 152);
  v34 = sub_1DCC677D8(*(v0 + 232));
  v36 = v35;
  v37 = [v6 v10[210]];
  v38 = sub_1DD0DE2EC();

  v39 = [v6 v9[209]];
  v40 = OUTLINED_FUNCTION_24_12();

  v41 = [v6 dialogId];
  v42 = sub_1DD0DE2EC();

  v43 = [v6 meta];
  v44 = sub_1DD0DDE6C();

  *v33 = v34;
  *(v33 + 8) = v36;
  *(v33 + 32) = v38;
  *(v33 + 40) = v40;
  *(v33 + 48) = xmmword_1DD0E1E40;
  *(v33 + 64) = v42;

  v45 = sub_1DCB73048(v34, v36, v42, v40, v38);

  *(v33 + 16) = v45;
  *(v33 + 24) = v44;
  OUTLINED_FUNCTION_29();

  return v46();
}

uint64_t sub_1DCC707DC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  swift_willThrow();

  OUTLINED_FUNCTION_29();
  v7 = v0[28];

  return v6();
}

uint64_t sub_1DCC70910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC70930()
{
  OUTLINED_FUNCTION_33_8();
  *(v1 + 64) = 0x45636972656E6547;
  v0[1] = v0[14];
  v0[9] = 0xEC000000726F7272;
  v3 = sub_1DCB1C4D8();
  if (OUTLINED_FUNCTION_37_12(v3, MEMORY[0x1E69E6158], v4, v3))
  {
    v5 = OUTLINED_FUNCTION_2_36();
    sub_1DCD15EF0(v5, v6, 0x45636972656E6547, 0xEC000000726F7272);
  }

  v8 = v2[27];
  v7 = v2[28];
  v9 = v2[25];
  sub_1DCC6FB0C();

  sub_1DCC70860(v10);
}

uint64_t sub_1DCC70D68()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 256) = v4;
  if (v4)
  {
    v5 = sub_1DCC70FD8;
  }

  else
  {
    v5 = sub_1DCC70E6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC70E6C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 144);

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "CATDialog.execute returns: %@", v8, 0xCu);
    sub_1DCB16D50(v9, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_69();

  return v11(v5);
}

uint64_t sub_1DCC70FD8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  swift_willThrow();

  OUTLINED_FUNCTION_29();
  v6 = v0[32];

  return v5();
}

uint64_t sub_1DCC71054(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v8 = a3;
    v9 = v7;
    v10 = a4;
  }

  else
  {
    v8 = a2;
    v9 = v7;
    v10 = a5;
  }

  return v10(v9, v8);
}

uint64_t sub_1DCC710FC(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 64) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC71114()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  *(v0 + 32) = sub_1DCC6FB74();
  sub_1DCC6DA40(v2);
  *(v0 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1DCC711D0;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = OUTLINED_FUNCTION_30_10();

  return sub_1DCC71374(v7, v8, v9, v10);
}

uint64_t sub_1DCC711D0()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  v5[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCC71314, 0, 0);
  }

  else
  {
    v12 = v5[4];
    v11 = v5[5];

    OUTLINED_FUNCTION_69();

    return v13(v3);
  }
}

uint64_t sub_1DCC71314()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_29();
  v4 = v0[7];

  return v3();
}

uint64_t sub_1DCC71374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCC71390()
{
  v40 = v2;
  OUTLINED_FUNCTION_33_8();
  *(v1 + 64) = 0x45636972656E6547;
  v0[1] = v0[14];
  v0[9] = 0xEC000000726F7272;
  v3 = sub_1DCB1C4D8();
  if (OUTLINED_FUNCTION_37_12(v3, MEMORY[0x1E69E6158], v4, v3))
  {
    v5 = OUTLINED_FUNCTION_2_36();
    sub_1DCD15EF0(v5, v6, 0x45636972656E6547, 0xEC000000726F7272);
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0_0();
  }

  v7 = v2[24];
  v8 = v2[22];
  v9 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v9, qword_1EDE57E00);

  v10 = v8;
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v2[23];
    v14 = v2[24];
    v15 = v2[22];
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_1DCB10E9C(v13, v14, &v39);
    *(v16 + 12) = 2080;
    sub_1DD0DE8AC();
  }

  v17 = v2[25];
  v18 = *(v17 + 64);
  v19 = *(v17 + 32);
  OUTLINED_FUNCTION_8_28();
  v21 = v20 >> 6;
  swift_bridgeObjectRetain_n();
  v22 = 0;
  while (1)
  {
    if (v10)
    {
      goto LABEL_12;
    }

    do
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v23 >= v21)
      {
        v31 = v2[25];

        if (qword_1EDE46628 != -1)
        {
          OUTLINED_FUNCTION_58_0();
        }

        v32 = v2[25];
        sub_1DCB4E718(v0);
        __swift_destroy_boxed_opaque_existential_1Tm(v0);
        sub_1DCC6F3D0();
      }

      v10 = *(v17 + 64 + 8 * v23);
      ++v22;
    }

    while (!v10);
    v22 = v23;
LABEL_12:
    v24 = __clz(__rbit64(v10)) | (v22 << 6);
    v25 = (*(v17 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    sub_1DCB0DF6C(*(v17 + 56) + 32 * v24, (v2 + 12));
    v2[10] = v27;
    v2[11] = v26;
    if (v27 == 0x656369766564 && v26 == 0xE600000000000000)
    {
      v33 = v2[25];

      sub_1DCB16D50(v0, &qword_1ECCA2760, &unk_1DD0E6A30);
LABEL_22:

      v34 = v2[25];
      v35 = v2[26];
      v37 = v2[23];
      v36 = v2[24];
      v38 = v2[22];
      objc_opt_self();
      OUTLINED_FUNCTION_31_8();
      v2[27] = sub_1DD0DDF8C();
      sub_1DCDAC09C(v34);
    }

    v10 &= v10 - 1;
    v29 = sub_1DD0DF0AC();

    sub_1DCB16D50(v0, &qword_1ECCA2760, &unk_1DD0E6A30);
    if (v29)
    {
      v30 = v2[25];
      goto LABEL_22;
    }
  }
}

uint64_t sub_1DCC718D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 240) = v4;
  if (v4)
  {
    v5 = sub_1DCC71A50;
  }

  else
  {
    v5 = sub_1DCC719D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC719D8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  v3 = *(v0 + 144);

  OUTLINED_FUNCTION_69();

  return v4(v3);
}

uint64_t sub_1DCC71A50()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  swift_willThrow();

  OUTLINED_FUNCTION_29();
  v6 = v0[30];

  return v5();
}

void sub_1DCC71ACC(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCCE5F64(v4, a2);
}

uint64_t sub_1DCC71B20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1DCC71B48()
{
  sub_1DCC71B20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC71B7C()
{
  if (qword_1EDE49020 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  sub_1DD0DE77C();
  return v1;
}

uint64_t sub_1DCC71D68()
{
  if ((RefreshableDeviceState.isHomePod.getter() & 1) == 0 || MGGetSInt32Answer() == 7)
  {
    return 0;
  }

  if (qword_1EDE49020 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  sub_1DD0DE77C();
  return v1;
}

uint64_t sub_1DCC71E38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A10, &qword_1DD0E7EE0);
  v36 = a2;
  result = sub_1DD0DEE5C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_1DCC7243C(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_1DCB20B30(v23, v37);
    }

    else
    {
      sub_1DCB0DF6C(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    result = sub_1DD0DF20C();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_1DCB20B30(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_1DCC720EC(uint64_t a1)
{
  OUTLINED_FUNCTION_16_11(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A18, &qword_1DD0E7EE8);
  v7 = OUTLINED_FUNCTION_18_12();
  if (!*(v5 + 16))
  {
LABEL_28:

LABEL_29:
    *v1 = v7;
    return;
  }

  OUTLINED_FUNCTION_4_22();
  if (!v2)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v9;
      if (v4[v6])
      {
        OUTLINED_FUNCTION_27_9();
        goto LABEL_9;
      }
    }

    if ((v23 & 1) == 0)
    {

      v1 = v22;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_32_7();
    v1 = v22;
    if (v20 != v21)
    {
      *v4 = -1 << v19;
    }

    else
    {
      OUTLINED_FUNCTION_38_10(v19);
    }

    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29_8();
LABEL_9:
    OUTLINED_FUNCTION_14_20(v8);
    if ((v10 & 1) == 0)
    {

      sub_1DD0DCF8C();
    }

    v11 = *(v7 + 40);
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    v12 = sub_1DD0DF20C();
    OUTLINED_FUNCTION_10_19(v12);
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_36_12();
LABEL_20:
    OUTLINED_FUNCTION_3_31(v14);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35_10();
  while (++v15 != v17 || (v16 & 1) == 0)
  {
    v18 = v15 == v17;
    if (v15 == v17)
    {
      v15 = 0;
    }

    v16 |= v18;
    if (*(v3 + 8 * v15) != -1)
    {
      OUTLINED_FUNCTION_34_10();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1DCC72268(uint64_t a1)
{
  OUTLINED_FUNCTION_16_11(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2A20, &qword_1DD0E7EF0);
  v7 = OUTLINED_FUNCTION_18_12();
  if (!*(v5 + 16))
  {
LABEL_28:

LABEL_29:
    *v1 = v7;
    return;
  }

  OUTLINED_FUNCTION_4_22();
  if (!v2)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v9;
      if (v4[v6])
      {
        OUTLINED_FUNCTION_27_9();
        goto LABEL_9;
      }
    }

    if ((v23 & 1) == 0)
    {

      v1 = v22;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_32_7();
    v1 = v22;
    if (v20 != v21)
    {
      *v4 = -1 << v19;
    }

    else
    {
      OUTLINED_FUNCTION_38_10(v19);
    }

    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29_8();
LABEL_9:
    OUTLINED_FUNCTION_14_20(v8);
    if ((v10 & 1) == 0)
    {
    }

    v11 = *(v7 + 40);
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    v12 = sub_1DD0DF20C();
    OUTLINED_FUNCTION_10_19(v12);
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_36_12();
LABEL_20:
    OUTLINED_FUNCTION_3_31(v14);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35_10();
  while (++v15 != v17 || (v16 & 1) == 0)
  {
    v18 = v15 == v17;
    if (v15 == v17)
    {
      v15 = 0;
    }

    v16 |= v18;
    if (*(v3 + 8 * v15) != -1)
    {
      OUTLINED_FUNCTION_34_10();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1DCC723E4()
{
  result = qword_1EDE46360;
  if (!qword_1EDE46360)
  {
    sub_1DD0DCDBC();
  }

  return result;
}

uint64_t sub_1DCC7243C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DD0E3FF0;
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

uint64_t sub_1DCC724A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCB0DF6C(a4, a1);

  return a2;
}

void sub_1DCC724E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCC7252C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCC724A0((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1DCC72564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCC72798(a1, a2, a3, v3);

  sub_1DD0DCF8C();
}

uint64_t sub_1DCC72798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1DCC727D4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1DCB0DF6C(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_1DCB20B30(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_1DCB16D50(v19, &qword_1ECCA2760, &unk_1DD0E6A30);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CombineAll5.init(_:_:_:_:_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_112(a7);
  (*(v16 + 32))(a8);
  v17 = OUTLINED_FUNCTION_23_9();
  v18 = v17[12];
  OUTLINED_FUNCTION_7_24();
  (*(v19 + 32))(a8 + v20, a1, a9);
  v21 = v17[16];
  OUTLINED_FUNCTION_7_24();
  (*(v22 + 32))(a8 + v23, a2, a10);
  v24 = v17[20];
  OUTLINED_FUNCTION_7_24();
  (*(v25 + 32))(a8 + v26, a3, a11);
  v27 = v17[24];
  OUTLINED_FUNCTION_7_24();
  (*(v28 + 32))(a8 + v29, a4, a12);
  result = type metadata accessor for CombineAll5();
  v31 = (a8 + *(result + 108));
  *v31 = a5;
  v31[1] = a6;
  return result;
}

void static CombineAll5._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v150 = a7;
  v164 = a6;
  v165 = a2;
  v160 = a1;
  v161 = a12;
  v162 = a4;
  v170 = a2;
  v171 = a3;
  v166 = a3;
  v172 = a4;
  v173 = a5;
  v163 = a5;
  v174 = a6;
  v175 = a7;
  v176 = a8;
  v177[0] = a9;
  v145 = a8;
  v146[0] = a9;
  v177[1] = a10;
  v177[2] = a11;
  v146[1] = a10;
  v147 = a11;
  v177[3] = a12;
  v141 = type metadata accessor for CombineAll5();
  OUTLINED_FUNCTION_0_1();
  v139 = v12;
  v140 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v16);
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v148 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_2_37();
  v17 = sub_1DD0DDAEC();
  v18 = v162;
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_2_37();
  v19 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_2_37();
  v20 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_2_37();
  v21 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_14_21(v21, &v152);
  v131 = v17;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(WitnessTable, &v151);
  v130 = v19;
  v23 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v23, &v148);
  v129 = v20;
  v24 = swift_getWitnessTable();
  OUTLINED_FUNCTION_40_11(v24, &v147);
  v127 = swift_getWitnessTable();
  v170 = v17;
  v171 = v19;
  v172 = v20;
  v173 = v21;
  v174 = WitnessTable;
  v175 = v23;
  v176 = v24;
  v177[0] = v127;
  v25 = sub_1DD0DDA2C();
  v26 = v148;
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_22(v27, &v150);
  v128 = swift_getWitnessTable();
  v170 = v26;
  v171 = v25;
  v144 = v25;
  v172 = v27;
  v173 = v128;
  sub_1DD0DD9EC();
  OUTLINED_FUNCTION_39_9();
  v132 = v28;
  OUTLINED_FUNCTION_0_1();
  v134 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v34);
  v133 = type metadata accessor for _FlowPlanEvent();
  v35 = swift_getWitnessTable();
  OUTLINED_FUNCTION_27_10(v35, v158);
  sub_1DD0DDACC();
  OUTLINED_FUNCTION_39_9();
  v135 = v36;
  OUTLINED_FUNCTION_0_1();
  v138 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_34_0();
  v43 = OUTLINED_FUNCTION_12_19(v42);
  OUTLINED_FUNCTION_27_10(v43, &v161);
  v136 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  v137 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v49);
  OUTLINED_FUNCTION_0_1();
  v149 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53, v54);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_13_2(&v123 - v57);
  v58 = v165;
  v170 = v165;
  v171 = v166;
  v172 = v18;
  v60 = v163;
  v59 = v164;
  v173 = v163;
  v174 = v164;
  v61 = OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_0_1();
  v63 = v62;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v123 - v68;
  v152 = *(v63 + 16);
  v70 = v160;
  v152(&v123 - v68, v160, v61);
  v159 = v61[12];
  v71 = v61[16];
  v72 = v61[20];
  v73 = v61[24];
  OUTLINED_FUNCTION_1_29(&v173);
  v143 = v74(v69, v58);
  OUTLINED_FUNCTION_112(v59);
  v151 = *(v75 + 8);
  v158[2] = v75 + 8;
  v76 = &v69[v73];
  v77 = v59;
  v151(v76, v59);
  OUTLINED_FUNCTION_112(v60);
  v155 = *(v78 + 8);
  v156 = v78 + 8;
  v155(&v69[v72], v60);
  OUTLINED_FUNCTION_112(v162);
  v153 = *(v79 + 8);
  v154 = v79 + 8;
  (v153)(&v69[v71]);
  v80 = v166;
  OUTLINED_FUNCTION_112(v166);
  v157 = *(v81 + 8);
  v158[0] = v81 + 8;
  v157(v159 + v69, v80);
  OUTLINED_FUNCTION_112(v165);
  v159 = *(v82 + 8);
  v158[1] = v82 + 8;
  v159(v69);
  v83 = v152;
  v142 = v63 + 16;
  v152(v69, v70, v61);
  v84 = v61[12];
  v124 = v61[16];
  v123 = v61[20];
  v85 = v61[24];
  OUTLINED_FUNCTION_1_29(&v174);
  v125 = v86(&v69[v84], v80);
  v87 = v151;
  v151(&v69[v85], v77);
  v88 = OUTLINED_FUNCTION_8_29(&v144);
  v155(v88, v163);
  OUTLINED_FUNCTION_8_29(&v145);
  v89 = v162;
  OUTLINED_FUNCTION_42_1();
  v153();
  OUTLINED_FUNCTION_19_12(&v180);
  v90();
  OUTLINED_FUNCTION_4_23();
  v91();
  v170 = v125;
  v83(v69, v160, v61);
  v125 = v61[12];
  v92 = v61[16];
  v93 = v61[20];
  v94 = v61[24];
  OUTLINED_FUNCTION_1_29(&v175);
  v95 = v89;
  v124 = v96(&v69[v92], v89);
  v87(&v69[v94], v77);
  v97 = &v69[v93];
  v98 = v163;
  v99 = v155;
  v155(v97, v163);
  v100 = v153;
  (v153)(&v69[v92], v95);
  OUTLINED_FUNCTION_8_29(v146);
  OUTLINED_FUNCTION_19_12(&v180);
  v101();
  OUTLINED_FUNCTION_4_23();
  v102();
  v169 = v124;
  OUTLINED_FUNCTION_32_8();
  v103();
  v125 = v61[12];
  v123 = v61[16];
  v104 = v61[20];
  v105 = v61[24];
  OUTLINED_FUNCTION_1_29(v177);
  v106 = v98;
  v124 = v107(&v69[v104], v98);
  v108 = v164;
  OUTLINED_FUNCTION_36_13();
  v109();
  v99(&v69[v104], v106);
  v110 = OUTLINED_FUNCTION_8_29(&v144);
  (v100)(v110, v162);
  v111 = OUTLINED_FUNCTION_8_29(v146);
  v112 = v158[0];
  v113 = v157;
  v157(v111, v166);
  OUTLINED_FUNCTION_4_23();
  v114();
  v168 = v124;
  OUTLINED_FUNCTION_32_8();
  v115();
  v152 = v61[12];
  v142 = v61[16];
  v116 = v61[20];
  v117 = (*(v161 + 48))(&v69[v61[24]], v108);
  OUTLINED_FUNCTION_36_13();
  v118();
  OUTLINED_FUNCTION_29_9();
  v119();
  OUTLINED_FUNCTION_8_29(&v169);
  OUTLINED_FUNCTION_28_9(&v179);
  v120();
  v121 = OUTLINED_FUNCTION_8_29(&v178);
  v113(v121, v166);
  OUTLINED_FUNCTION_4_23();
  v122();
  v167 = v117;
  OUTLINED_FUNCTION_43_9(&v171);
  sub_1DD0DDA3C();
  v170 = v143;
  (*(v149 + 16))(v126, v112, v144);
  sub_1DD0DCF8C();
}

void sub_1DCC73A48(void (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v93 = a8;
  v110 = a7;
  v104 = a6;
  v103 = a5;
  v108 = a4;
  v99 = a3;
  v97 = a2;
  v105 = a1;
  v90 = a9;
  v92 = a14;
  v94 = a15;
  v96 = a16;
  v100 = a17;
  v95 = a10;
  v98 = a11;
  v102 = a18;
  v111 = a13;
  v101 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v18 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v19);
  v79 = &v74 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v80 = *(v21 - 8);
  v22 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v84 = &v74 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v82 = *(v25 - 8);
  v26 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v25, v27);
  v87 = &v74 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v86 = *(v29 - 8);
  v30 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v29, v31);
  v91 = &v74 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v89 = *(v33 - 8);
  v34 = *(v89 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v74 - v37;
  v75 = *(v111 - 8);
  v39 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v36, v40);
  v77 = &v74 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v114 = type metadata accessor for _FlowPlanEvent();
  *(&v114 + 1) = type metadata accessor for _FlowPlanEvent();
  *&v115 = type metadata accessor for _FlowPlanEvent();
  *(&v115 + 1) = type metadata accessor for _FlowPlanEvent();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v107 = *(TupleTypeMetadata - 1);
  v43 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v44);
  v46 = &v74 - v45;
  v88 = v29;
  v47 = type metadata accessor for _FlowPlanEvent();
  v48 = *(*(v47 - 8) + 16);
  v49 = v97;
  v97 = v47;
  v48(v46, v49);
  v50 = TupleTypeMetadata[12];
  v83 = v25;
  v51 = type metadata accessor for _FlowPlanEvent();
  v52 = *(*(v51 - 8) + 16);
  v85 = v50;
  v52(&v46[v50], v99, v51);
  v53 = TupleTypeMetadata[16];
  v81 = v21;
  v54 = type metadata accessor for _FlowPlanEvent();
  v55 = *(*(v54 - 8) + 16);
  v99 = v53;
  v55(&v46[v53], v108, v54);
  v108 = TupleTypeMetadata;
  v56 = TupleTypeMetadata[20];
  v57 = type metadata accessor for _FlowPlanEvent();
  v58 = *(*(v57 - 8) + 16);
  v78 = v56;
  v58(&v46[v56], v103, v57);
  *&v114 = v110;
  *(&v114 + 1) = v93;
  *&v115 = v95;
  *(&v115 + 1) = v98;
  v116 = v101;
  v117 = v111;
  v118 = v92;
  v119 = v94;
  v120 = v96;
  v121 = v100;
  v122 = v102;
  v59 = (v104 + *(type metadata accessor for CombineAll5() + 108));
  v60 = *v59;
  v61 = v59[1];
  v62 = v33;
  v63 = type metadata accessor for _FlowPlanEvent();
  v64 = v106;
  sub_1DCC74758(v63, v38);
  if (v64)
  {
    (*(v107 + 8))(v46, v108);
    v123 = v64;
    v68 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {

      v112[0] = v114;
      v112[1] = v115;
      v113 = v116;
      sub_1DCAFF9E8(v112, v90);
      type metadata accessor for _FlowPlanEvent();
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v104 = v61;
    v105 = v60;
    v106 = v57;
    v110 = v38;
    v65 = v88;
    v74 = v62;
    sub_1DCC74758(v97, v91);
    sub_1DCC74758(v51, v87);
    v66 = v89;
    sub_1DCC74758(v54, v84);
    v67 = v65;
    v69 = v79;
    sub_1DCC74758(v106, v79);
    v70 = v86;
    v71 = v110;
    v72 = v84;
    v105(v110, v91, v87, v84, v69);
    v73 = v83;
    (*(v76 + 8))(v69, AssociatedTypeWitness);
    (*(v80 + 8))(v72, v81);
    (*(v82 + 8))(v87, v73);
    (*(v70 + 8))(v91, v67);
    (*(v66 + 8))(v71, v74);
    (*(v107 + 8))(v46, v108);
    (*(v75 + 32))(v90, v77, v111);
    type metadata accessor for _FlowPlanEvent();
    swift_storeEnumTagMultiPayload();
  }
}

void sub_1DCC7465C(void (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = v6[3];
  v18 = v6[2];
  v7 = v6[5];
  v16 = v6[4];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v6[8];
  v11 = v6[9];
  v12 = v6[10];
  v13 = v6[11];
  v14 = v6[12];
  v15 = *(type metadata accessor for CombineAll5() - 8);
  sub_1DCC73A48(a1, a2, a3, a4, a5, (v6 + ((*(v15 + 80) + 104) & ~*(v15 + 80))), v18, v17, a6, v16, v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCC74758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, v3);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v8);
  }

  sub_1DCAFF9E8(v8, v13);
  sub_1DCC7A888();
  swift_allocError();
  sub_1DCB17CA0(v13, v11);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t sub_1DCC748AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[12], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[16], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[20]);
}

uint64_t sub_1DCC74A58()
{
  OUTLINED_FUNCTION_33_9();
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  return sub_1DCC748AC(v2, *(v0 + 104));
}

unint64_t sub_1DCC74AE8()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t CombineAll6.init(_:_:_:_:_:_:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_112(a9);
  (*(v17 + 32))(a8);
  v18 = OUTLINED_FUNCTION_22_13();
  v19 = v18[12];
  OUTLINED_FUNCTION_7_24();
  (*(v20 + 32))(a8 + v21, a1, a10);
  v22 = v18[16];
  OUTLINED_FUNCTION_7_24();
  (*(v23 + 32))(a8 + v24, a2, a11);
  v25 = v18[20];
  OUTLINED_FUNCTION_7_24();
  (*(v26 + 32))(a8 + v27, a3, a12);
  v28 = v18[24];
  OUTLINED_FUNCTION_7_24();
  (*(v29 + 32))(a8 + v30, a4, a13);
  v31 = v18[28];
  OUTLINED_FUNCTION_7_24();
  (*(v32 + 32))(a8 + v33, a5, a14);
  result = type metadata accessor for CombineAll6();
  v35 = (a8 + *(result + 124));
  *v35 = a6;
  v35[1] = a7;
  return result;
}

uint64_t static CombineAll6._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v231 = a8;
  v250 = a7;
  v252 = a6;
  v253[0] = a5;
  v248 = a1;
  v241[1] = a14;
  v241[0] = a13;
  v240 = a12;
  v256 = a2;
  v257 = a3;
  v247 = a2;
  v251 = a3;
  v258 = a4;
  v259 = a5;
  v249 = a4;
  v260 = a6;
  v261 = a7;
  v262 = a8;
  v263 = a9;
  v223 = a9;
  v264 = a10;
  v265[0] = a11;
  v226 = a10;
  v227 = a11;
  v265[1] = a12;
  v265[2] = a13;
  v266 = a14;
  v221 = type metadata accessor for CombineAll6();
  OUTLINED_FUNCTION_0_1();
  v219 = v14;
  v220 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v18);
  OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v202 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_2_37();
  v19 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_14_21(v19, &v227);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(WitnessTable, &v226);
  v199 = swift_getWitnessTable();
  v256 = v202;
  v257 = v19;
  v258 = WitnessTable;
  v259 = v199;
  v21 = sub_1DD0DD9EC();
  OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_2_37();
  v22 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_2_37();
  v23 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_2_37();
  v205 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_2_37();
  v24 = sub_1DD0DDAEC();
  OUTLINED_FUNCTION_30_3(v24, v235);
  v207 = v22;
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v25, &v234);
  v206 = v23;
  v26 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v26, &v233);
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30_3(v27, &v230);
  v203 = swift_getWitnessTable();
  v256 = v22;
  v257 = v23;
  v258 = v205;
  v259 = v24;
  v260 = v25;
  v261 = v26;
  v262 = v27;
  v263 = v203;
  v28 = sub_1DD0DDA2C();
  v29 = MEMORY[0x1E695BC68];
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_22(v30, &v232);
  v204 = swift_getWitnessTable();
  v256 = v21;
  v257 = v28;
  v222 = v21;
  v225 = v28;
  v258 = v30;
  v259 = v204;
  v209 = sub_1DD0DD9EC();
  OUTLINED_FUNCTION_0_1();
  v212 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v36);
  v37 = type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_40_11(v37, v241);
  v210 = swift_getWitnessTable();
  sub_1DD0DDACC();
  OUTLINED_FUNCTION_39_9();
  v213 = v38;
  OUTLINED_FUNCTION_0_1();
  v217 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_34_0();
  v45 = OUTLINED_FUNCTION_12_19(v44);
  OUTLINED_FUNCTION_27_10(v45, &v243);
  v215 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  v216 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v51);
  v230 = *(v28 - 8);
  v52 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v53, v54);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_13_2(v195 - v57);
  v58 = v247;
  v59 = v252;
  v256 = v247;
  v257 = v251;
  v60 = v250;
  v258 = v249;
  v259 = v253[0];
  v260 = v252;
  v261 = v250;
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_0_1();
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = v195 - v65;
  OUTLINED_FUNCTION_0_1();
  v229 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v72, v73);
  OUTLINED_FUNCTION_13_2(v195 - v74);
  v76 = *(v75 + 16);
  v232 = v75 + 16;
  v236 = v76;
  v77 = v248;
  (v76)(v66, v248, v29);
  v246 = v29[12];
  v78 = v29[16];
  v79 = v29[20];
  v80 = v29[24];
  v81 = v29[28];
  OUTLINED_FUNCTION_1_29(&v252);
  v196 = v82(v66, v58);
  OUTLINED_FUNCTION_112(v60);
  v239 = *(v83 + 8);
  v242[0] = v83 + 8;
  (v239)(&v66[v81], v60);
  OUTLINED_FUNCTION_112(v59);
  v238 = *(v84 + 8);
  v242[1] = v84 + 8;
  (v238)(&v66[v80], v59);
  OUTLINED_FUNCTION_112(v253[0]);
  v233 = *(v85 + 8);
  v237 = v85 + 8;
  v233(&v66[v79]);
  OUTLINED_FUNCTION_112(v249);
  v235[0] = *(v86 + 8);
  v245 = v86 + 8;
  (v235[0])(&v66[v78]);
  v87 = v251;
  OUTLINED_FUNCTION_112(v251);
  v244 = *(v88 + 8);
  v235[1] = v88 + 8;
  v244(v246 + v66, v87);
  OUTLINED_FUNCTION_112(v247);
  v246 = *(v89 + 8);
  v243 = v89 + 8;
  v246(v66);
  v256 = v196;
  v90 = v236;
  (v236)(v66, v77, v29);
  v91 = v29[12];
  v195[1] = v29[16];
  v92 = v29[20];
  v93 = v29[24];
  v94 = v29[28];
  OUTLINED_FUNCTION_1_29(&v254);
  v95 = v87;
  v196 = v96(&v66[v91], v87);
  OUTLINED_FUNCTION_28_9(&v266);
  v97();
  OUTLINED_FUNCTION_29_9();
  v238();
  v98 = v233;
  (v233)(&v66[v92], v253[0]);
  v99 = OUTLINED_FUNCTION_8_29(&v221);
  v100 = v249;
  (v235[0])(v99, v249);
  v244(&v66[v91], v95);
  OUTLINED_FUNCTION_41_9();
  v102 = *(v101 - 256);
  OUTLINED_FUNCTION_3_32();
  v103();
  v255 = v196;
  sub_1DD0DD9FC();
  v104 = OUTLINED_FUNCTION_5_26();
  v90(v104);
  v202 = v29[12];
  v105 = v29[16];
  v200 = v29[20];
  v106 = v29[24];
  v107 = v29[28];
  OUTLINED_FUNCTION_1_29(&v255);
  v108 = v100;
  v110 = v109(&v66[v105], v100);
  OUTLINED_FUNCTION_26_5(v110);
  OUTLINED_FUNCTION_28_9(&v266);
  v111();
  OUTLINED_FUNCTION_29_9();
  v238();
  v112 = OUTLINED_FUNCTION_8_29(&v226);
  v113 = v253[0];
  v98(v112, v253[0]);
  v114 = v235[0];
  (v235[0])(&v66[v105], v108);
  v115 = OUTLINED_FUNCTION_8_29(&v228);
  v244(v115, v251);
  OUTLINED_FUNCTION_41_9();
  v117 = *(v116 - 256);
  OUTLINED_FUNCTION_3_32();
  v118();
  v256 = v201;
  v119 = OUTLINED_FUNCTION_5_26();
  v236(v119);
  OUTLINED_FUNCTION_24_13();
  v120 = v29[20];
  v199 = v29[24];
  v121 = v29[28];
  OUTLINED_FUNCTION_1_29(v267);
  v122 = v113;
  v124 = v123(&v66[v120], v113);
  OUTLINED_FUNCTION_26_5(v124);
  v125 = v239;
  OUTLINED_FUNCTION_42_1();
  v125();
  OUTLINED_FUNCTION_8_29(&v225);
  v126 = v252;
  v127 = v238;
  OUTLINED_FUNCTION_29_9();
  v127();
  (v233)(&v66[v120], v122);
  v128 = OUTLINED_FUNCTION_8_29(&v226);
  v114(v128, v249);
  v129 = OUTLINED_FUNCTION_8_29(&v228);
  v244(v129, v251);
  OUTLINED_FUNCTION_41_9();
  v131 = *(v130 - 256);
  OUTLINED_FUNCTION_3_32();
  v132();
  v255 = v201;
  v133 = OUTLINED_FUNCTION_5_26();
  v236(v133);
  OUTLINED_FUNCTION_24_13();
  v134 = v29[20];
  v135 = v29[24];
  v136 = v29[28];
  OUTLINED_FUNCTION_1_29(&v268);
  v138 = v137(&v66[v135], v126);
  OUTLINED_FUNCTION_26_5(v138);
  v139 = v250;
  OUTLINED_FUNCTION_42_1();
  v125();
  OUTLINED_FUNCTION_29_9();
  v127();
  v140 = &v66[v134];
  v141 = v233;
  (v233)(v140, v253[0]);
  OUTLINED_FUNCTION_8_29(&v226);
  OUTLINED_FUNCTION_31_9();
  v142();
  OUTLINED_FUNCTION_8_29(&v228);
  OUTLINED_FUNCTION_19_12(&v264);
  v143();
  OUTLINED_FUNCTION_41_9();
  v145 = *(v144 - 256);
  OUTLINED_FUNCTION_3_32();
  v146();
  v254 = v201;
  v147 = OUTLINED_FUNCTION_5_26();
  v236(v147);
  v236 = v29[12];
  v232 = v29[16];
  v148 = v29[20];
  v149 = v29[24];
  v150 = v29[28];
  OUTLINED_FUNCTION_1_29(&v269);
  v151 = v139;
  v153 = v152(&v66[v150], v139);
  OUTLINED_FUNCTION_42_1();
  v239();
  (v238)(&v66[v149], v252);
  v154 = v253[0];
  v141(&v66[v148], v253[0]);
  OUTLINED_FUNCTION_8_29(&v260);
  OUTLINED_FUNCTION_31_9();
  v155();
  OUTLINED_FUNCTION_8_29(v265);
  OUTLINED_FUNCTION_19_12(&v264);
  v156();
  OUTLINED_FUNCTION_3_32();
  v157();
  v253[1] = v153;
  OUTLINED_FUNCTION_43_9(v253);
  sub_1DD0DDA3C();
  (*(v229 + 16))(v197, v234, v222);
  v158 = v151;
  v159 = v225;
  (*(v230 + 16))(v198, v158, v225);
  sub_1DD0DD9FC();
  OUTLINED_FUNCTION_43_9(&v248);
  v161 = v218;
  v162 = v221;
  (*(v160 + 16))(v218, v248, v221);
  v163 = v159;
  v164 = (*(v159 + 80) + 120) & ~*(v159 + 80);
  v165 = swift_allocObject();
  v166 = v251;
  v165[2] = v145;
  v165[3] = v166;
  v165[4] = v249;
  v165[5] = v154;
  v167 = v250;
  v165[6] = v252;
  v165[7] = v167;
  v168 = v231;
  v169 = v223;
  v165[8] = v231;
  v165[9] = v169;
  v170 = OUTLINED_FUNCTION_20_12(v165);
  *(v170 + 14) = v171;
  (*(v163 + 32))(&v170[v164], v161, v162);
  v172 = swift_allocObject();
  v173 = v251;
  v172[2] = v145;
  v172[3] = v173;
  v175 = v252;
  v174 = v253[0];
  v172[4] = v249;
  v172[5] = v174;
  v176 = v250;
  v172[6] = v175;
  v172[7] = v176;
  v172[8] = v168;
  v172[9] = v169;
  v177 = OUTLINED_FUNCTION_20_12(v172);
  v177[14] = v178;
  v177[15] = sub_1DCC76FD0;
  v177[16] = v165;
  v179 = v208;
  v180 = v209;
  v181 = v228;
  sub_1DD0DDC7C();

  OUTLINED_FUNCTION_17_0(v242);
  v182(v181, v180);
  v256 = 0;
  v257 = 0xE000000000000000;
  sub_1DD0DEC1C();

  OUTLINED_FUNCTION_74();
  v256 = v184;
  v257 = v183;
  v185 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v185);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v186 = v211;
  v187 = v213;
  sub_1DCF0E65C(v256, v257, v213, v214);

  OUTLINED_FUNCTION_17_0(&v246);
  v188(v179, v187);
  OUTLINED_FUNCTION_15_2();
  v189 = v215;
  swift_getWitnessTable();
  v190 = sub_1DD0DDBFC();
  OUTLINED_FUNCTION_17_0(&v245);
  v191(v186, v189);
  OUTLINED_FUNCTION_17_0(&v258);
  v192(v224, v225);
  OUTLINED_FUNCTION_17_0(&v257);
  v193(v234, v222);
  return v190;
}

void sub_1DCC76008(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(void, void, void, void, void, void), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v135 = a8;
  v123 = a7;
  v122 = a6;
  v129 = a5;
  v119 = a4;
  v116 = a3;
  v113 = a2;
  v127 = a1;
  v109 = a9;
  v134 = a16;
  v133 = a17;
  v110 = a10;
  v111 = a11;
  v112 = a18;
  v115 = a19;
  v114 = a12;
  v117 = a13;
  v118 = a20;
  v121 = a21;
  v137 = a15;
  v120 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v91 = *(AssociatedTypeWitness - 8);
  v21 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v22);
  v93 = &v90 - v23;
  v130 = swift_getAssociatedTypeWitness();
  v94 = *(v130 - 8);
  v24 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v130, v25);
  v96 = &v90 - v26;
  v131 = swift_getAssociatedTypeWitness();
  v95 = *(v131 - 8);
  v27 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v131, v28);
  v100 = &v90 - v29;
  v30 = swift_getAssociatedTypeWitness();
  v98 = *(v30 - 8);
  v31 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v30, v32);
  v103 = &v90 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v101 = *(v34 - 8);
  v35 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v34, v36);
  v108 = &v90 - v37;
  v38 = swift_getAssociatedTypeWitness();
  v107 = *(v38 - 8);
  v39 = *(v107 + 64);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v132 = &v90 - v42;
  v90 = *(v137 - 8);
  v43 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v41, v44);
  v92 = &v90 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v140 = type metadata accessor for _FlowPlanEvent();
  *(&v140 + 1) = type metadata accessor for _FlowPlanEvent();
  *&v141 = type metadata accessor for _FlowPlanEvent();
  *(&v141 + 1) = type metadata accessor for _FlowPlanEvent();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v128 = *(TupleTypeMetadata - 1);
  v47 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v48);
  v50 = &v90 - v49;
  v106 = v38;
  v51 = type metadata accessor for _FlowPlanEvent();
  v102 = v34;
  v52 = type metadata accessor for _FlowPlanEvent();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v126 = *(TupleTypeMetadata2 - 8);
  v54 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v55);
  v57 = &v90 - v56;
  (*(*(v51 - 8) + 16))(&v90 - v56, v127, v51);
  v127 = TupleTypeMetadata2;
  v58 = *(*(v52 - 8) + 16);
  v105 = *(TupleTypeMetadata2 + 48);
  v59 = v113;
  v113 = v52;
  v58(&v57[v105], v59, v52);
  v99 = v30;
  v60 = type metadata accessor for _FlowPlanEvent();
  v61 = *(*(v60 - 8) + 16);
  v62 = v116;
  v116 = v60;
  v61(v50, v62);
  v63 = TupleTypeMetadata[12];
  v64 = type metadata accessor for _FlowPlanEvent();
  v65 = *(*(v64 - 8) + 16);
  v97 = v63;
  v65(&v50[v63], v119, v64);
  v66 = TupleTypeMetadata[16];
  v67 = type metadata accessor for _FlowPlanEvent();
  v68 = *(*(v67 - 8) + 16);
  v104 = v66;
  v68(&v50[v66], v129, v67);
  v129 = TupleTypeMetadata;
  v69 = TupleTypeMetadata[20];
  v70 = type metadata accessor for _FlowPlanEvent();
  v71 = *(*(v70 - 8) + 16);
  v119 = v50;
  v72 = &v50[v69];
  v73 = v132;
  v71(v72, v122, v70);
  *&v140 = v135;
  *(&v140 + 1) = v110;
  *&v141 = v111;
  *(&v141 + 1) = v114;
  v142 = v117;
  v143 = v120;
  v144 = v137;
  v145 = v134;
  v146 = v133;
  v147 = v112;
  v148 = v115;
  v149 = v118;
  v150 = v121;
  v74 = (v123 + *(type metadata accessor for CombineAll6() + 124));
  v75 = *v74;
  v76 = v74[1];
  v77 = v124;
  sub_1DCC74758(v51, v73);
  v125 = v57;
  if (v77)
  {
    (*(v128 + 8))(v119, v129);
    (*(v126 + 8))(v125, v127);
    v151 = v77;
    v80 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {

      v138[0] = v140;
      v138[1] = v141;
      v139 = v142;
      sub_1DCAFF9E8(v138, v109);
      type metadata accessor for _FlowPlanEvent();
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v124 = v76;
    v133 = v75;
    v78 = v116;
    v134 = v70;
    v135 = v69;
    v79 = v108;
    sub_1DCC74758(v113, v108);
    v81 = v119;
    sub_1DCC74758(v78, v103);
    sub_1DCC74758(v64, v100);
    v82 = v102;
    sub_1DCC74758(v67, v96);
    v83 = v107;
    v84 = v98;
    v85 = v93;
    sub_1DCC74758(v134, v93);
    v86 = v101;
    v87 = v79;
    v88 = v96;
    v133(v132, v87, v103, v100, v96, v85);
    v89 = v106;
    (*(v91 + 8))(v85, AssociatedTypeWitness);
    (*(v94 + 8))(v88, v130);
    (*(v95 + 8))(v100, v131);
    (*(v84 + 8))(v103, v99);
    (*(v86 + 8))(v108, v82);
    (*(v83 + 8))(v132, v89);
    (*(v128 + 8))(v81, v129);
    (*(v126 + 8))(v125, v127);
    (*(v90 + 32))(v109, v92, v137);
    type metadata accessor for _FlowPlanEvent();
    swift_storeEnumTagMultiPayload();
  }
}

void sub_1DCC76FD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20 = v7[3];
  v21 = v7[2];
  v18 = v7[5];
  v19 = v7[4];
  v8 = v7[7];
  v17 = v7[6];
  v9 = v7[8];
  v10 = v7[9];
  v12 = v7[10];
  v11 = v7[11];
  v13 = v7[12];
  v14 = v7[13];
  v15 = v7[14];
  v16 = *(type metadata accessor for CombineAll6() - 8);
  sub_1DCC76008(a1, a2, a3, a4, a5, a6, v7 + ((*(v16 + 80) + 120) & ~*(v16 + 80)), v21, a7, v20, v19, v18, v17, v8, v9, v10, v12, v11, v13, v14, v15);
}

uint64_t sub_1DCC770E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  v3 = *(swift_getTupleTypeMetadata2() + 48);
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + v3, a1 + *(TupleTypeMetadata2 + 48), a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[12], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[16], a1 + *(TupleTypeMetadata2 + 48) + TupleTypeMetadata[20]);
}

uint64_t sub_1DCC772EC()
{
  OUTLINED_FUNCTION_33_9();
  v1 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v4 = *(v0 + 88);
  return sub_1DCC770E8(v2, *(v0 + 120));
}

uint64_t sub_1DCC77328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DCC77384(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCC773C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DCC7747C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCC774B8()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t sub_1DCC77514(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v13 = *(result - 8) + 64;
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v14 = *(result - 8) + 64;
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v15 = *(result - 8) + 64;
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v16 = *(result - 8) + 64;
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v17 = *(result - 8) + 64;
            swift_getTupleTypeLayout();
            swift_initStructMetadata();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1DCC776CC(void *a1, void *a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = a3[4];
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 80);
  v8 = *(v4 + 64) + v7;
  v9 = *(*(v5 - 8) + 80);
  v10 = v9;
  v11 = *(a3[5] - 8);
  v12 = *(v11 + 80);
  v13 = *(a3[6] - 8);
  v14 = *(v13 + 80);
  v15 = v14;
  if (((v7 | *(v4 + 80) | v9 | v12 | v14) & 0x1000F8) != 0 || ((((*(v11 + 64) + v14 + ((*(*(v5 - 8) + 64) + v12 + ((*(v6 + 64) + v9 + (v8 & ~v7)) & ~v9)) & ~v12)) & ~v14) + *(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    *a1 = *a2;
  }

  else
  {
    v38 = *(v11 + 64);
    v39 = a3[6];
    v17 = ~v7;
    v33 = *(v11 + 80);
    v34 = a3[5];
    v35 = ~v12;
    v31 = a3[4];
    v32 = *(*(v5 - 8) + 64);
    v19 = a3[3];
    v30 = *(v6 + 64);
    v20 = *(v5 - 8);
    v21 = *(v19 - 8);
    v36 = ((v38 + v14 + ((v32 + v12 + ((v30 + v9 + (v8 & v17)) & ~v9)) & v35)) & ~v14) + *(v13 + 64);
    (*(v4 + 16))(a1);
    v40 = a1;
    v22 = (a1 + v8) & v17;
    v23 = (a2 + v8) & v17;
    (*(v21 + 16))(v22, v23, v19);
    v24 = (v22 + v30 + v10) & ~v10;
    v25 = (v23 + v30 + v10) & ~v10;
    (*(v20 + 16))(v24, v25, v31);
    v26 = (v24 + v32 + v33) & v35;
    (*(v11 + 16))(v26, (v25 + v32 + v33) & v35, v34);
    (*(v13 + 16))((v26 + v38 + v15) & ~v15, (((v25 + v32 + v33) & v35) + v38 + v15) & ~v15, v39);
    v27 = ((a2 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
    v28 = v27[1];
    v29 = ((v40 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v27;
    v29[1] = v28;
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCC77A68(uint64_t a1, void *a2)
{
  v3 = *(a2[2] - 8) + 8;
  (*v3)();
  v5 = *(a2[3] - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  v8 = *(v3 + 56) + v7;
  (*(v5 + 8))((v8 + a1) & ~v7);
  v9 = *(v6 + 56);
  v10 = *(a2[4] - 8);
  v11 = v10 + 8;
  v12 = *(v10 + 80);
  v13 = v9 + v12;
  v14 = (v9 + v12 + ((v8 + a1) & ~v7)) & ~v12;
  (*(v10 + 8))(v14);
  v15 = *(v11 + 56);
  v16 = *(a2[5] - 8);
  v17 = v16 + 8;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v15 + v18 + v14) & ~v18;
  (*(v16 + 8))(v20);
  v21 = *(v17 + 56);
  v22 = *(a2[6] - 8);
  v23 = v22 + 8;
  v24 = *(v22 + 80);
  v25 = v21 + v24;
  (*(v22 + 8))((v21 + v24 + v20) & ~v24);
  v26 = *(((a1 + *(v23 + 56) + ((v25 + ((v19 + ((v13 + (v8 & ~v7)) & ~v12)) & ~v18)) & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1DCC77C38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 16;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v35 = *(v4 + 48) + v9;
  (*(v7 + 16))((v35 + a1) & ~v9, (v35 + a2) & ~v9);
  v10 = *(v8 + 48);
  v11 = *(a3[4] - 8);
  v12 = v11 + 16;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v10 + v13 + ((v35 + a1) & ~v9)) & ~v13;
  v16 = (v10 + v13 + ((v35 + a2) & ~v9)) & ~v13;
  (*(v11 + 16))(v15, v16);
  v17 = *(v12 + 48);
  v18 = *(a3[5] - 8);
  v19 = v18 + 16;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v17 + v20 + v15) & ~v20;
  v23 = (v17 + v20 + v16) & ~v20;
  (*(v18 + 16))(v22, v23);
  v24 = *(v19 + 48);
  v25 = *(a3[6] - 8);
  v26 = v25 + 16;
  v27 = *(v25 + 80);
  v28 = v24 + v27;
  (*(v25 + 16))((v24 + v27 + v22) & ~v27, (v24 + v27 + v23) & ~v27);
  v29 = *(v26 + 48) + ((v28 + ((v21 + ((v14 + (v35 & ~v9)) & ~v13)) & ~v20)) & ~v27) + 7;
  v30 = v29 + a1;
  v31 = ((v29 + a2) & 0xFFFFFFFFFFFFFFF8);
  v33 = *v31;
  v32 = v31[1];
  v34 = (v30 & 0xFFFFFFFFFFFFFFF8);
  *v34 = v33;
  v34[1] = v32;
  sub_1DD0DCF8C();
}

void sub_1DCC77E44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 24;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v34 = *(v4 + 40) + v9;
  (*(v7 + 24))((v34 + a1) & ~v9, (v34 + a2) & ~v9);
  v10 = *(v8 + 40);
  v11 = *(a3[4] - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v10 + v13 + ((v34 + a1) & ~v9)) & ~v13;
  v16 = (v10 + v13 + ((v34 + a2) & ~v9)) & ~v13;
  (*(v11 + 24))(v15, v16);
  v17 = *(v12 + 40);
  v18 = *(a3[5] - 8);
  v19 = v18 + 24;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v17 + v20 + v15) & ~v20;
  v23 = (v17 + v20 + v16) & ~v20;
  (*(v18 + 24))(v22, v23);
  v24 = *(v19 + 40);
  v25 = *(a3[6] - 8);
  v26 = v25 + 24;
  v27 = *(v25 + 80);
  v28 = v24 + v27;
  (*(v25 + 24))((v24 + v27 + v22) & ~v27, (v24 + v27 + v23) & ~v27);
  v29 = *(v26 + 40) + ((v28 + ((v21 + ((v14 + (v34 & ~v9)) & ~v13)) & ~v20)) & ~v27) + 7;
  v30 = ((v29 + a1) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + a2) & 0xFFFFFFFFFFFFFFF8);
  v32 = v31[1];
  v33 = v30[1];
  *v30 = *v31;
  v30[1] = v32;
  sub_1DD0DCF8C();
}

__n128 sub_1DCC7805C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 32;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v33 = *(v4 + 32) + v9;
  (*(v7 + 32))((v33 + a1) & ~v9, (v33 + a2) & ~v9);
  v10 = *(v8 + 32);
  v11 = *(a3[4] - 8);
  v12 = v11 + 32;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v10 + v13 + ((v33 + a1) & ~v9)) & ~v13;
  v16 = (v10 + v13 + ((v33 + a2) & ~v9)) & ~v13;
  (*(v11 + 32))(v15, v16);
  v17 = *(v12 + 32);
  v18 = *(a3[5] - 8);
  v19 = v18 + 32;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v17 + v20 + v15) & ~v20;
  v23 = (v17 + v20 + v16) & ~v20;
  (*(v18 + 32))(v22, v23);
  v24 = *(v19 + 32);
  v25 = *(a3[6] - 8);
  v26 = v25 + 32;
  v27 = *(v25 + 80);
  v28 = v24 + v27;
  (*(v25 + 32))((v24 + v27 + v22) & ~v27, (v24 + v27 + v23) & ~v27);
  v29 = *(v26 + 32) + ((v28 + ((v21 + ((v14 + (v33 & ~v9)) & ~v13)) & ~v20)) & ~v27) + 7;
  v30 = ((v29 + a1) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + a2) & 0xFFFFFFFFFFFFFFF8);
  result = *v31;
  *v30 = *v31;
  return result;
}

uint64_t sub_1DCC78260(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 40;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v33 = *(v4 + 24) + v9;
  (*(v7 + 40))((v33 + a1) & ~v9, (v33 + a2) & ~v9);
  v10 = *(v8 + 24);
  v11 = *(a3[4] - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = v10 + v13;
  v15 = (v10 + v13 + ((v33 + a1) & ~v9)) & ~v13;
  v16 = (v10 + v13 + ((v33 + a2) & ~v9)) & ~v13;
  (*(v11 + 40))(v15, v16);
  v17 = *(v12 + 24);
  v18 = *(a3[5] - 8);
  v19 = v18 + 40;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v17 + v20 + v15) & ~v20;
  v23 = (v17 + v20 + v16) & ~v20;
  (*(v18 + 40))(v22, v23);
  v24 = *(v19 + 24);
  v25 = *(a3[6] - 8);
  v26 = v25 + 40;
  v27 = *(v25 + 80);
  v28 = v24 + v27;
  (*(v25 + 40))((v24 + v27 + v22) & ~v27, (v24 + v27 + v23) & ~v27);
  v29 = *(v26 + 24) + ((v28 + ((v21 + ((v14 + (v33 & ~v9)) & ~v13)) & ~v20)) & ~v27) + 7;
  v30 = (v29 + a1) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 8);
  *v30 = *((v29 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCC78470(uint64_t result, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(*(v4 - 8) + 84);
  v39 = a3[3];
  v6 = *(v39 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(*(v4 - 8) + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v37 = a3[5];
  v38 = a3[4];
  v9 = *(v38 - 8);
  v10 = *(v9 + 84);
  v11 = *(v37 - 8);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v11 + 84);
  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = a3[6];
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  if (v17 > v14)
  {
    v14 = *(v16 + 84);
  }

  v18 = *(*(v4 - 8) + 64);
  v19 = *(v6 + 80);
  v20 = *(*(v39 - 8) + 64);
  v21 = *(v9 + 80);
  v22 = *(*(v38 - 8) + 64);
  v23 = *(v11 + 80);
  v24 = *(v11 + 64);
  v25 = *(v16 + 80);
  if (v14 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v24 + v25;
  v28 = ((v27 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25) + *(*(v15 - 8) + 64);
  if (v26 >= a2)
  {
LABEL_36:
    if (v14 < 0x7FFFFFFF)
    {
      v36 = *((result + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v36 >= 0xFFFFFFFF)
      {
        LODWORD(v36) = -1;
      }

      return (v36 + 1);
    }

    else
    {
      if (v5 == v14)
      {
        v15 = v4;
      }

      else
      {
        result = (v18 + v19 + result) & ~v19;
        if (v7 == v14)
        {
          v5 = v7;
          v15 = v39;
        }

        else
        {
          result = (result + v20 + v21) & ~v21;
          if (v10 == v14)
          {
            v5 = v10;
            v15 = v38;
          }

          else
          {
            result = (result + v22 + v23) & ~v23;
            if (v13 == v14)
            {
              v5 = v13;
              v15 = v37;
            }

            else
            {
              result = (v27 + result) & ~v25;
              v5 = v17;
            }
          }
        }
      }

      return __swift_getEnumTagSinglePayload(result, v5, v15);
    }
  }

  else
  {
    v29 = ((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    if ((v29 & 0xFFFFFFF8) != 0)
    {
      v30 = 2;
    }

    else
    {
      v30 = a2 - v26 + 1;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    switch(v32)
    {
      case 1:
        v33 = *(result + v29);
        if (!*(result + v29))
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      case 2:
        v33 = *(result + v29);
        if (!*(result + v29))
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      case 3:
        __break(1u);
        return result;
      case 4:
        v33 = *(result + v29);
        if (!v33)
        {
          goto LABEL_36;
        }

LABEL_33:
        v34 = v33 - 1;
        if ((v29 & 0xFFFFFFF8) != 0)
        {
          v34 = 0;
          v35 = *result;
        }

        else
        {
          v35 = 0;
        }

        result = v26 + (v35 | v34) + 1;
        break;
      default:
        goto LABEL_36;
    }
  }

  return result;
}

void sub_1DCC78828(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v46 = a4[3];
  v47 = a4[2];
  v6 = *(*(v47 - 8) + 84);
  v7 = *(v46 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(*(v47 - 8) + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v45 = a4[4];
  v10 = *(v45 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v14 = a4[5];
  v13 = a4[6];
  v44 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  v18 = *(v13 - 8);
  v19 = *(v18 + 84);
  if (v19 > v17)
  {
    v17 = *(v18 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v17;
  }

  v21 = *(v7 + 80);
  v22 = *(*(v47 - 8) + 64) + v21;
  v23 = *(*(v46 - 8) + 64);
  v24 = *(v10 + 80);
  v25 = *(*(v45 - 8) + 64);
  v26 = *(v15 + 80);
  v27 = *(v18 + 80);
  v28 = *(*(v14 - 8) + 64) + v27;
  v29 = ((v28 + ((v25 + v26 + ((v23 + v24 + (v22 & ~v21)) & ~v24)) & ~v26)) & ~v27) + *(*(v13 - 8) + 64);
  v30 = ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v33 = 0;
  }

  else
  {
    if (((v29 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v31 = a3 - v20 + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  if (a2 <= v20)
  {
    v37 = ~v27;
    v38 = a1;
    switch(v33)
    {
      case 1:
        a1[v30] = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        break;
      case 2:
        *&a1[v30] = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        break;
      case 3:
LABEL_75:
        __break(1u);
        break;
      case 4:
        *&a1[v30] = 0;
        goto LABEL_42;
      default:
LABEL_42:
        if (a2)
        {
LABEL_43:
          if (v17 < 0x7FFFFFFF)
          {
            v42 = (&a1[v29 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v42 = a2 & 0x7FFFFFFF;
              v42[1] = 0;
            }

            else
            {
              *v42 = (a2 - 1);
            }
          }

          else if (v17 >= a2)
          {
            if (v6 == v17)
            {
              v43 = a1;
              v13 = v47;
            }

            else
            {
              v43 = &a1[v22] & ~v21;
              if (v8 == v17)
              {
                v6 = v8;
                v13 = v46;
              }

              else
              {
                v43 = (v43 + v23 + v24) & ~v24;
                if (v11 == v17)
                {
                  v6 = v11;
                  v13 = v45;
                }

                else
                {
                  v43 = (v43 + v25 + v26) & ~v26;
                  if (v16 == v17)
                  {
                    v6 = v16;
                    v13 = v44;
                  }

                  else
                  {
                    v43 = (v28 + v43) & v37;
                    v6 = v19;
                  }
                }
              }
            }

            __swift_storeEnumTagSinglePayload(v43, a2, v6, v13);
          }

          else
          {
            if (v29 <= 3)
            {
              v39 = ~(-1 << (8 * v29));
            }

            else
            {
              v39 = -1;
            }

            if (v29)
            {
              v40 = v39 & (~v17 + a2);
              if (v29 <= 3)
              {
                v41 = v29;
              }

              else
              {
                v41 = 4;
              }

              bzero(v38, v29);
              switch(v41)
              {
                case 2:
                  *v38 = v40;
                  break;
                case 3:
                  *v38 = v40;
                  v38[2] = BYTE2(v40);
                  break;
                case 4:
                  *v38 = v40;
                  break;
                default:
                  *v38 = v40;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v29 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v34 = a2 - v20;
    }

    else
    {
      v34 = 1;
    }

    v35 = a1;
    if (((v29 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v36 = ~v20 + a2;
      bzero(a1, ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *v35 = v36;
    }

    switch(v33)
    {
      case 1:
        *(v35 + v30) = v34;
        break;
      case 2:
        *(v35 + v30) = v34;
        break;
      case 3:
        goto LABEL_75;
      case 4:
        *(v35 + v30) = v34;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCC78CD0(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v15 = *(result - 8) + 64;
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v16 = *(result - 8) + 64;
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v17 = *(result - 8) + 64;
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v18 = *(result - 8) + 64;
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v19 = *(result - 8) + 64;
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v20 = *(result - 8) + 64;
              swift_getTupleTypeLayout();
              swift_initStructMetadata();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1DCC78EC8(void *a1, void *a2, void *a3)
{
  v44 = a3[2];
  v4 = *(v44 - 8);
  v46 = a3[3];
  v43 = *(v46 - 8);
  v5 = *(v43 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = *(v43 + 64);
  v8 = a3[4];
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v48 = v10;
  v11 = *(a3[5] - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = a3[7];
  v15 = *(a3[6] - 8);
  v16 = *(v15 + 80);
  v17 = *(v14 - 8);
  v18 = *(v17 + 80);
  v47 = *(v15 + 64);
  if (((((v47 + v18 + ((v13 + v16 + ((*(v9 + 64) + v12 + ((v7 + v10 + (v6 & ~v5)) & ~v10)) & ~v12)) & ~v16)) & ~v18) + *(v17 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18 && ((v5 | *(v4 + 80) | v10 | v12 | v16 | v18) & 0x1000F8) == 0)
  {
    v35 = *(*(v8 - 8) + 64);
    v20 = ~v5;
    v42 = *(v14 - 8);
    v33 = *(v11 + 80);
    v34 = ~v12;
    v37 = *(v15 + 80);
    v39 = ~v16;
    v41 = ~v18;
    v38 = a3[6];
    v31 = v8;
    v40 = ((v47 + v18 + ((v13 + v16 + ((v35 + v12 + ((v7 + v10 + (v6 & v20)) & ~v10)) & v34)) & v39)) & v41) + *(v17 + 64);
    v32 = a3[5];
    v36 = v18;
    (*(v4 + 16))(a1, a2, v44);
    v45 = a1;
    v21 = (a1 + v6) & v20;
    v22 = (a2 + v6) & v20;
    (*(v43 + 16))(v21, v22, v46);
    v23 = (v21 + v7 + v48) & ~v48;
    v24 = (v22 + v7 + v48) & ~v48;
    (*(v9 + 16))(v23, v24, v31);
    v25 = (v23 + v35 + v33) & v34;
    (*(v11 + 16))(v25, (v24 + v35 + v33) & v34, v32);
    v26 = (v25 + v13 + v37) & v39;
    v27 = (((v24 + v35 + v33) & v34) + v13 + v37) & v39;
    (*(v15 + 16))(v26, v27, v38);
    (*(v42 + 16))((v26 + v47 + v36) & v41, (v27 + v47 + v36) & v41, v14);
    v28 = ((a2 + v40 + 7) & 0xFFFFFFFFFFFFFFF8);
    v29 = v28[1];
    v30 = ((v45 + v40 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v28;
    v30[1] = v29;
  }

  else
  {
    *a1 = *a2;
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCC79340(uint64_t a1, void *a2)
{
  v3 = *(a2[2] - 8) + 8;
  (*v3)();
  v5 = *(a2[3] - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  v33 = *(v3 + 56) + v7;
  (*(v5 + 8))((v33 + a1) & ~v7);
  v8 = *(v6 + 56);
  v9 = *(a2[4] - 8);
  v10 = v9 + 8;
  v11 = *(v9 + 80);
  v32 = v8 + v11;
  v12 = (v8 + v11 + ((v33 + a1) & ~v7)) & ~v11;
  (*(v9 + 8))(v12);
  v13 = *(v10 + 56);
  v14 = *(a2[5] - 8);
  v15 = v14 + 8;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v13 + v16 + v12) & ~v16;
  (*(v14 + 8))(v18);
  v19 = *(v15 + 56);
  v20 = *(a2[6] - 8);
  v21 = v20 + 8;
  v22 = *(v20 + 80);
  v23 = v19 + v22;
  v24 = (v19 + v22 + v18) & ~v22;
  (*(v20 + 8))(v24);
  v25 = *(v21 + 56);
  v26 = *(a2[7] - 8);
  v27 = v26 + 8;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  (*(v26 + 8))((v25 + v28 + v24) & ~v28);
  v30 = *(((a1 + *(v27 + 56) + ((v29 + ((v23 + ((v17 + ((v32 + (v33 & ~v7)) & ~v11)) & ~v16)) & ~v22)) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1DCC79568(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 16;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v44 = v9;
  v45 = *(v4 + 48) + v9;
  v10 = (v45 + a1) & ~v9;
  v11 = (v45 + a2) & ~v9;
  (*(v7 + 16))(v10, v11);
  v12 = *(v8 + 48);
  v13 = *(a3[4] - 8);
  v14 = v13 + 16;
  v15 = *(v13 + 80);
  v43 = v12 + v15;
  v16 = (v12 + v15 + v10) & ~v15;
  v17 = (v12 + v15 + v11) & ~v15;
  (*(v13 + 16))(v16, v17);
  v18 = *(v14 + 48);
  v19 = *(a3[5] - 8);
  v20 = v19 + 16;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v18 + v21 + v16) & ~v21;
  v24 = (v18 + v21 + v17) & ~v21;
  (*(v19 + 16))(v23, v24);
  v25 = *(v20 + 48);
  v26 = *(a3[6] - 8);
  v27 = v26 + 16;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v25 + v28 + v23) & ~v28;
  v31 = (v25 + v28 + v24) & ~v28;
  (*(v26 + 16))(v30, v31);
  v32 = *(v27 + 48);
  v33 = *(a3[7] - 8);
  v34 = v33 + 16;
  v35 = *(v33 + 80);
  v36 = v32 + v35;
  (*(v33 + 16))((v32 + v35 + v30) & ~v35, (v32 + v35 + v31) & ~v35);
  v37 = *(v34 + 48) + ((v36 + ((v29 + ((v22 + ((v43 + (v45 & ~v44)) & ~v15)) & ~v21)) & ~v28)) & ~v35) + 7;
  v38 = v37 + a1;
  v39 = ((v37 + a2) & 0xFFFFFFFFFFFFFFF8);
  v41 = *v39;
  v40 = v39[1];
  v42 = (v38 & 0xFFFFFFFFFFFFFFF8);
  *v42 = v41;
  v42[1] = v40;
  sub_1DD0DCF8C();
}

void sub_1DCC797D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 24;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v43 = v9;
  v44 = *(v4 + 40) + v9;
  v10 = (v44 + a1) & ~v9;
  v11 = (v44 + a2) & ~v9;
  (*(v7 + 24))(v10, v11);
  v12 = *(v8 + 40);
  v13 = *(a3[4] - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v42 = v12 + v15;
  v16 = (v12 + v15 + v10) & ~v15;
  v17 = (v12 + v15 + v11) & ~v15;
  (*(v13 + 24))(v16, v17);
  v18 = *(v14 + 40);
  v19 = *(a3[5] - 8);
  v20 = v19 + 24;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v18 + v21 + v16) & ~v21;
  v24 = (v18 + v21 + v17) & ~v21;
  (*(v19 + 24))(v23, v24);
  v25 = *(v20 + 40);
  v26 = *(a3[6] - 8);
  v27 = v26 + 24;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v25 + v28 + v23) & ~v28;
  v31 = (v25 + v28 + v24) & ~v28;
  (*(v26 + 24))(v30, v31);
  v32 = *(v27 + 40);
  v33 = *(a3[7] - 8);
  v34 = v33 + 24;
  v35 = *(v33 + 80);
  v36 = v32 + v35;
  (*(v33 + 24))((v32 + v35 + v30) & ~v35, (v32 + v35 + v31) & ~v35);
  v37 = *(v34 + 40) + ((v36 + ((v29 + ((v22 + ((v42 + (v44 & ~v43)) & ~v15)) & ~v21)) & ~v28)) & ~v35) + 7;
  v38 = ((v37 + a1) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + a2) & 0xFFFFFFFFFFFFFFF8);
  v40 = v39[1];
  v41 = v38[1];
  *v38 = *v39;
  v38[1] = v40;
  sub_1DD0DCF8C();
}

__n128 sub_1DCC79A4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 32;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v42 = v9;
  v43 = *(v4 + 32) + v9;
  v10 = (v43 + a1) & ~v9;
  v11 = (v43 + a2) & ~v9;
  (*(v7 + 32))(v10, v11);
  v12 = *(v8 + 32);
  v13 = *(a3[4] - 8);
  v14 = v13 + 32;
  v15 = *(v13 + 80);
  v41 = v12 + v15;
  v16 = (v12 + v15 + v10) & ~v15;
  v17 = (v12 + v15 + v11) & ~v15;
  (*(v13 + 32))(v16, v17);
  v18 = *(v14 + 32);
  v19 = *(a3[5] - 8);
  v20 = v19 + 32;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v18 + v21 + v16) & ~v21;
  v24 = (v18 + v21 + v17) & ~v21;
  (*(v19 + 32))(v23, v24);
  v25 = *(v20 + 32);
  v26 = *(a3[6] - 8);
  v27 = v26 + 32;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v25 + v28 + v23) & ~v28;
  v31 = (v25 + v28 + v24) & ~v28;
  (*(v26 + 32))(v30, v31);
  v32 = *(v27 + 32);
  v33 = *(a3[7] - 8);
  v34 = v33 + 32;
  v35 = *(v33 + 80);
  v36 = v32 + v35;
  (*(v33 + 32))((v32 + v35 + v30) & ~v35, (v32 + v35 + v31) & ~v35);
  v37 = *(v34 + 32) + ((v36 + ((v29 + ((v22 + ((v41 + (v43 & ~v42)) & ~v15)) & ~v21)) & ~v28)) & ~v35) + 7;
  v38 = ((v37 + a1) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v37 + a2) & 0xFFFFFFFFFFFFFFF8);
  result = *v39;
  *v38 = *v39;
  return result;
}

uint64_t sub_1DCC79CB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[2] - 8) + 40;
  (*v4)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v42 = v9;
  v43 = *(v4 + 24) + v9;
  v10 = (v43 + a1) & ~v9;
  v11 = (v43 + a2) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24);
  v13 = *(a3[4] - 8);
  v14 = v13 + 40;
  v15 = *(v13 + 80);
  v41 = v12 + v15;
  v16 = (v12 + v15 + v10) & ~v15;
  v17 = (v12 + v15 + v11) & ~v15;
  (*(v13 + 40))(v16, v17);
  v18 = *(v14 + 24);
  v19 = *(a3[5] - 8);
  v20 = v19 + 40;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v18 + v21 + v16) & ~v21;
  v24 = (v18 + v21 + v17) & ~v21;
  (*(v19 + 40))(v23, v24);
  v25 = *(v20 + 24);
  v26 = *(a3[6] - 8);
  v27 = v26 + 40;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v25 + v28 + v23) & ~v28;
  v31 = (v25 + v28 + v24) & ~v28;
  (*(v26 + 40))(v30, v31);
  v32 = *(v27 + 24);
  v33 = *(a3[7] - 8);
  v34 = v33 + 40;
  v35 = *(v33 + 80);
  v36 = v32 + v35;
  (*(v33 + 40))((v32 + v35 + v30) & ~v35, (v32 + v35 + v31) & ~v35);
  v37 = *(v34 + 24) + ((v36 + ((v29 + ((v22 + ((v41 + (v43 & ~v42)) & ~v15)) & ~v21)) & ~v28)) & ~v35) + 7;
  v38 = (v37 + a1) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v38 + 8);
  *v38 = *((v37 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCC79F20(uint64_t result, unsigned int a2, void *a3)
{
  v44 = a3[2];
  v4 = *(*(v44 - 8) + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(*(v44 - 8) + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 > v7)
  {
    v7 = *(v9 + 84);
  }

  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  if (v12 > v7)
  {
    v7 = *(v11 + 84);
  }

  v13 = *(a3[6] - 8);
  v14 = *(v13 + 84);
  if (v14 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a3[7] - 8);
  v17 = *(*(v44 - 8) + 64);
  if (*(v16 + 84) <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(v5 + 80);
  v20 = *(*(a3[3] - 8) + 64);
  v21 = *(v9 + 80);
  v22 = *(*(a3[4] - 8) + 64);
  v23 = *(v11 + 80);
  v24 = *(*(v8 - 8) + 64);
  v25 = *(v13 + 80);
  v26 = *(*(a3[6] - 8) + 64);
  v27 = *(v16 + 80);
  if (v18 <= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = v17 + v19;
  v30 = v24 + v25;
  v31 = (v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v17 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25;
  v32 = v26 + v27;
  v33 = ((v26 + v27 + v31) & ~v27) + *(*(a3[7] - 8) + 64);
  if (v28 >= a2)
  {
LABEL_38:
    if (v18 < 0x7FFFFFFF)
    {
      v43 = *((result + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v43 >= 0xFFFFFFFF)
      {
        LODWORD(v43) = -1;
      }

      return (v43 + 1);
    }

    else
    {
      if (v4 == v18)
      {
        v6 = *(*(v44 - 8) + 84);
        v42 = a3[2];
      }

      else
      {
        result = (v29 + result) & ~v19;
        if (v6 == v18)
        {
          v42 = a3[3];
        }

        else
        {
          result = (result + v20 + v21) & ~v21;
          if (v10 == v18)
          {
            v6 = v10;
            v42 = a3[4];
          }

          else
          {
            result = (result + v22 + v23) & ~v23;
            if (v12 == v18)
            {
              v6 = v12;
              v42 = a3[5];
            }

            else
            {
              result = (v30 + result) & ~v25;
              if (v14 == v18)
              {
                v6 = v14;
                v42 = a3[6];
              }

              else
              {
                result = (v32 + result) & ~v27;
                v6 = *(v16 + 84);
                v42 = a3[7];
              }
            }
          }
        }
      }

      return __swift_getEnumTagSinglePayload(result, v6, v42);
    }
  }

  else
  {
    v34 = ((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v35 = a2 - v28;
    v36 = v34 & 0xFFFFFFF8;
    if ((v34 & 0xFFFFFFF8) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = v35 + 1;
    }

    if (v37 >= 0x10000)
    {
      LODWORD(v38) = 4;
    }

    else
    {
      LODWORD(v38) = 2;
    }

    if (v37 < 0x100)
    {
      LODWORD(v38) = 1;
    }

    if (v37 >= 2)
    {
      v38 = v38;
    }

    else
    {
      v38 = 0;
    }

    switch(v38)
    {
      case 1:
        v39 = *(result + v34);
        if (!v39)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 2:
        v39 = *(result + v34);
        if (!v39)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      case 3:
        __break(1u);
        return result;
      case 4:
        v39 = *(result + v34);
        if (!v39)
        {
          goto LABEL_38;
        }

LABEL_35:
        v40 = v39 - 1;
        if (v36)
        {
          v40 = 0;
          v41 = *result;
        }

        else
        {
          v41 = 0;
        }

        result = v28 + (v41 | v40) + 1;
        break;
      default:
        goto LABEL_38;
    }
  }

  return result;
}

void sub_1DCC7A360(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v52 = a4[2];
  v5 = *(*(v52 - 8) + 84);
  v51 = a4[3];
  v6 = *(v51 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(*(v52 - 8) + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v50 = a4[4];
  v9 = *(v50 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v49 = a4[5];
  v12 = *(v49 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v47 = a4[7];
  v48 = a4[6];
  v15 = *(v48 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  v18 = *(a4[7] - 8);
  v19 = *(v18 + 84);
  v20 = *(v6 + 80);
  v21 = *(*(v51 - 8) + 64);
  v22 = *(*(v52 - 8) + 64) + v20;
  v23 = *(v9 + 80);
  v24 = *(*(v50 - 8) + 64);
  v25 = *(v12 + 80);
  if (v19 <= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = *(v18 + 84);
  }

  v27 = *(*(v49 - 8) + 64);
  v28 = *(v15 + 80);
  v29 = *(*(v48 - 8) + 64);
  v30 = *(v18 + 80);
  if (v26 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v26;
  }

  v32 = v27 + v28;
  v33 = v29 + v30;
  v34 = ((v29 + v30 + ((v27 + v28 + ((v24 + v25 + ((v21 + v23 + (v22 & ~v20)) & ~v23)) & ~v25)) & ~v28)) & ~v30) + *(v18 + 64);
  v35 = ((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v31 >= a3)
  {
    v38 = 0;
  }

  else
  {
    if (((v34 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v36 = a3 - v31 + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }
  }

  if (a2 <= v31)
  {
    switch(v38)
    {
      case 1:
        a1[v35] = 0;
        if (a2)
        {
          goto LABEL_47;
        }

        break;
      case 2:
        *&a1[v35] = 0;
        if (a2)
        {
          goto LABEL_47;
        }

        break;
      case 3:
LABEL_81:
        __break(1u);
        break;
      case 4:
        *&a1[v35] = 0;
        goto LABEL_46;
      default:
LABEL_46:
        if (a2)
        {
LABEL_47:
          if (v26 < 0x7FFFFFFF)
          {
            v44 = (&a1[v34 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v44 = a2 & 0x7FFFFFFF;
              v44[1] = 0;
            }

            else
            {
              *v44 = (a2 - 1);
            }
          }

          else if (v26 >= a2)
          {
            if (v5 == v26)
            {
              v45 = a1;
              v46 = v52;
            }

            else
            {
              v45 = &a1[v22] & ~v20;
              if (v7 == v26)
              {
                v5 = v7;
                v46 = v51;
              }

              else
              {
                v45 = (v45 + v21 + v23) & ~v23;
                if (v10 == v26)
                {
                  v5 = v10;
                  v46 = v50;
                }

                else
                {
                  v45 = (v45 + v24 + v25) & ~v25;
                  if (v13 == v26)
                  {
                    v5 = v13;
                    v46 = v49;
                  }

                  else
                  {
                    v45 = (v32 + v45) & ~v28;
                    if (v16 == v26)
                    {
                      v5 = v16;
                      v46 = v48;
                    }

                    else
                    {
                      v45 = (v33 + v45) & ~v30;
                      v5 = v19;
                      v46 = v47;
                    }
                  }
                }
              }
            }

            __swift_storeEnumTagSinglePayload(v45, a2, v5, v46);
          }

          else
          {
            if (v34 <= 3)
            {
              v41 = ~(-1 << (8 * v34));
            }

            else
            {
              v41 = -1;
            }

            if (v34)
            {
              v42 = v41 & (~v26 + a2);
              if (v34 <= 3)
              {
                v43 = v34;
              }

              else
              {
                v43 = 4;
              }

              bzero(a1, v34);
              switch(v43)
              {
                case 2:
                  *a1 = v42;
                  break;
                case 3:
                  *a1 = v42;
                  a1[2] = BYTE2(v42);
                  break;
                case 4:
                  *a1 = v42;
                  break;
                default:
                  *a1 = v42;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v34 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v39 = a2 - v31;
    }

    else
    {
      v39 = 1;
    }

    if (((v34 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v40 = ~v31 + a2;
      bzero(a1, ((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v40;
    }

    switch(v38)
    {
      case 1:
        a1[v35] = v39;
        break;
      case 2:
        *&a1[v35] = v39;
        break;
      case 3:
        goto LABEL_81;
      case 4:
        *&a1[v35] = v39;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1DCC7A888()
{
  result = qword_1ECCA2B30;
  if (!qword_1ECCA2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2B30);
  }

  return result;
}

void *CommandFailure.__allocating_init(errorCode:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  return result;
}

uint64_t CommandFailure.reason.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CommandFailure.errorDomain.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void *CommandFailure.underlyingError.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *CommandFailure.init(errorCode:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  return v3;
}

void *CommandFailure.__allocating_init(errorCode:reason:errorDomain:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_3();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *CommandFailure.init(errorCode:reason:errorDomain:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_1DCC7AA4C()
{
  v1 = 7104878;
  if (v0[4])
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  if (v0[6])
  {
    v4 = v0[5];
    v5 = v0[6];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  if (v0[7])
  {
    swift_getErrorValue();

    v1 = sub_1DD0DF18C();
    v7 = v6;
  }

  else
  {
    v8 = v0[6];

    v7 = 0xE300000000000000;
  }

  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD00000000000001ALL, 0x80000001DD116080);
  v11 = v0[2];
  v9 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v9);

  MEMORY[0x1E12A6780](0x6E6F73616572202CLL, 0xEB0000000022203ALL);
  MEMORY[0x1E12A6780](v2, v3);

  MEMORY[0x1E12A6780](0x44726F727265202CLL, 0xEF203A6E69616D6FLL);
  MEMORY[0x1E12A6780](v4, v5);

  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD1160A0);
  MEMORY[0x1E12A6780](v1, v7);

  MEMORY[0x1E12A6780](10530, 0xE200000000000000);
  return 0;
}

unint64_t sub_1DCC7AC74()
{
  if (v0[6])
  {
    v1 = v0[5];
    v2 = v0[6];
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 7104878;
  }

  sub_1DD0DEC1C();

  v5 = v0[2];
  v3 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v3);

  MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD116110);
  MEMORY[0x1E12A6780](v1, v2);

  MEMORY[0x1E12A6780](10530, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

uint64_t CommandFailure.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t CommandFailure.__deallocating_deinit()
{
  CommandFailure.deinit();
  OUTLINED_FUNCTION_0_3();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCC7AE08(uint64_t a1)
{
  result = sub_1DCC7AE30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCC7AE30()
{
  result = qword_1EDE49B80[0];
  if (!qword_1EDE49B80[0])
  {
    type metadata accessor for CommandFailure();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE49B80);
  }

  return result;
}

void *CommonConfirmationReturning.__allocating_init(yesGroup:noGroup:cancelGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *CommonConfirmationReturning.init(yesGroup:noGroup:cancelGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

void *CommonConfirmationReturning.__allocating_init(yesGroup:noGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CommonConfirmationReturning();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = 0;
  result[7] = 0;
  return result;
}

double sub_1DCC7B06C@<D0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  switch(*a1)
  {
    case 2:
      v3 = v2[2];
      if (!v3)
      {
        goto LABEL_9;
      }

      v4 = v2[3];
      goto LABEL_8;
    case 3:
      v3 = v2[4];
      if (!v3)
      {
        goto LABEL_9;
      }

      v4 = v2[5];
      goto LABEL_8;
    default:
      v3 = v2[6];
      if (v3)
      {
        v4 = v2[7];
LABEL_8:
        *a2 = v3;
        a2[1] = v4;
        swift_unknownObjectRetain();
      }

      else
      {
LABEL_9:
        result = 0.0;
        *a2 = xmmword_1DD0E2F10;
      }

      return result;
  }
}

void *CommonConfirmationReturning.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t CommonConfirmationReturning.__deallocating_deinit()
{
  CommonConfirmationReturning.deinit();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for CommonFlowFrameConstants(_BYTE *result, int a2, int a3)
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

void static CommonFlowGuard.ensuringDeviceIsAuthenticated.getter()
{
  v0 = 6;
  v2 = &type metadata for FeatureFlagDefinitions.Core;
  v3 = &off_1F585CB38;
  v1 = 0;
  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)(&v0);
}

uint64_t (*CommonFlowGuard.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_1DCB80BB8;
  a5[1] = result;
  return result;
}

void sub_1DCC7B348()
{
  type metadata accessor for PersonalDomainCheckFlow();
  swift_allocObject();
  sub_1DCC7EBFC();
}

void sub_1DCC7B3AC()
{
  type metadata accessor for HomePodSpeechProfileCheckFlow();
  swift_allocObject();
  sub_1DCD87AB0();
}

void sub_1DCC7B43C()
{
  v0 = type metadata accessor for DefaultActiveCallCheckStrategy();
  v13[3] = v0;
  v13[4] = &off_1F58529C0;
  v13[0] = swift_allocObject();
  sub_1DCB17D04(v13, v11);
  if (qword_1ECCA11C8 != -1)
  {
    swift_once();
  }

  sub_1DCB17D04(&qword_1ECCA1FE8, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  type metadata accessor for ActiveCallCheckFlow();
  v1 = swift_allocObject();
  v2 = v12;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  *(v1 + 48) = v0;
  *(v1 + 56) = &off_1F58529C0;
  *(v1 + 24) = v8;
  *(v1 + 16) = 0;
  sub_1DCAFF9E8(v10, v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2420, &qword_1DD0E8410);
  swift_allocObject();
  sub_1DCC4ABB8();
}

uint64_t sub_1DCC7B610(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a1(&v6);
  v4 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2420, &qword_1DD0E8410);
  OUTLINED_FUNCTION_1_1();
  swift_allocObject();
  return a3(v4);
}

uint64_t CommonFlowGuard.makeFlow()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t static CommonFlowGuard.disallowInSharingMode(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7DE64;
  *(result + 24) = v1;
  *v0 = sub_1DCC7DEAC;
  v0[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7DEDC;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F248;
  v0[1] = result;
  return result;
}

void static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)(uint64_t a1)
{
  sub_1DCC7DF20(a1, v3);
  type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  v1 = swift_allocObject();
  v2 = v3[1];
  v1[1] = v3[0];
  v1[2] = v2;
  v1[3] = v3[2];
  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringDeviceIsAuthenticated<A>(using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v12);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v7 + 32))(v14 + v13, v12, a1);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E304;
  *(result + 24) = v14;
  *a3 = sub_1DCC7F24C;
  a3[1] = result;
  return result;
}

void sub_1DCC7B9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  (*(v6 + 16))(v9, a1, a2);
  sub_1DD01DF10(v9, v10, a2, a3);
  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E340;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F24C;
  v0[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7F22C;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F24C;
  v0[1] = result;
  return result;
}

void sub_1DCC7BBC0(uint64_t a1)
{
  v2 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  sub_1DCB17D04(a1, v11);
  v3 = v12;
  v4 = v13;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  sub_1DD01DF10(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  sub_1DD0DCF8C();
}

void sub_1DCC7BDC0(uint64_t a1)
{
  type metadata accessor for GuardedAuthenticationFlow();
  sub_1DCB17D04(a1, v4);
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE46630;
  sub_1DCB4E718(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v3[3] = type metadata accessor for RefreshableDeviceState();
  v3[4] = &protocol witness table for RefreshableDeviceState;
  v3[0] = v2;
  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringPersonalRequestsAreEnabledWhenApplicable(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E348;
  *(result + 24) = v1;
  *v0 = sub_1DCC7E390;
  v0[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E3C0;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F250;
  v0[1] = result;
  return result;
}

uint64_t sub_1DCC7BFF0@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(_BYTE *)@<X3>, uint64_t *a4@<X8>)
{
  sub_1DCB17D04(a1, v8);
  a2(0);
  swift_allocObject();
  result = a3(v8);
  *a4 = result;
  return result;
}

uint64_t sub_1DCC7C0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = OUTLINED_FUNCTION_4();
  v9 = v8(v7);
  sub_1DCB17D04(a1, v22);
  v10 = v23;
  v11 = v24;
  __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  OUTLINED_FUNCTION_0_1();
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = OUTLINED_FUNCTION_9_19(v16, v21);
  v18(v17);
  v19 = a3(v4, v9, v10, v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v22);
  *v3 = v19;
  return result;
}

uint64_t static CommonFlowGuard.ensuringAppIsPermittedByScreentime(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E404;
  *(result + 24) = v1;
  *v0 = sub_1DCC7E40C;
  v0[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E43C;
  *(result + 24) = v1;
  *v0 = sub_1DCC7F254;
  v0[1] = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringUserIdentity(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCC7E444(v1, v2);
  OUTLINED_FUNCTION_12_20();
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x41uLL);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E4A0;
  *(result + 24) = v3;
  *v0 = sub_1DCC7E4A8;
  v0[1] = result;
  return result;
}

void sub_1DCC7C464(uint64_t a1)
{
  sub_1DCC7E444(a1, v4);
  v1 = type metadata accessor for UserIdentityCheckFlow(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DD06F01C();
}

uint64_t static CommonFlowGuard.ensuringAnyUserIdentity.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  OUTLINED_FUNCTION_12_20();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_7_25(v2, 257);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7F230;
  *(result + 24) = v2;
  *a1 = sub_1DCC7F258;
  a1[1] = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringKnownUserIdentity.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  OUTLINED_FUNCTION_12_20();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_7_25(v2, 256);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7F230;
  *(result + 24) = v2;
  *a1 = sub_1DCC7F258;
  a1[1] = result;
  return result;
}

void static CommonFlowGuard.ensuringUserHasSupportedCompanion(using:)(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  OUTLINED_FUNCTION_88_0();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DCC7E4D8;
  *(v4 + 24) = a1;
  *a2 = sub_1DCC7E4E0;
  a2[1] = v4;

  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringNoActiveCall(using:)()
{
  OUTLINED_FUNCTION_3_33();
  sub_1DCB17D04(v2, v3);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E510;
  *(result + 24) = v1;
  *v0 = sub_1DCC7E554;
  v0[1] = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringUnlockedApp(_:)()
{
  OUTLINED_FUNCTION_10_21();
  OUTLINED_FUNCTION_88_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0;
  OUTLINED_FUNCTION_88_0();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DCC7E584;
  *(v4 + 24) = v3;
  *v2 = sub_1DCC7E58C;
  v2[1] = v4;
}

uint64_t sub_1DCC7C790()
{
  OUTLINED_FUNCTION_10_21();
  type metadata accessor for ProtectedAppCheck(0);

  result = ProtectedAppCheck.__allocating_init(appID:strategy:)();
  *v0 = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringUnlockedApps(_:using:)()
{
  OUTLINED_FUNCTION_10_21();
  sub_1DCB17D04(v3, v7);
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  sub_1DCAFF9E8(v7, v4 + 32);
  OUTLINED_FUNCTION_88_0();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DCC7E5BC;
  *(v5 + 24) = v4;
  *v2 = sub_1DCC7F25C;
  v2[1] = v5;
}

uint64_t sub_1DCC7C898@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  type metadata accessor for ProtectedAppCheck(0);
  sub_1DCB17D04(a1, v5);

  result = ProtectedAppCheck.__allocating_init(appID:strategy:)();
  *a2 = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringUnlockedApps(_:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  sub_1DCB17D04(a2, v8);
  OUTLINED_FUNCTION_41_4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1DCAFF9E8(v8, v5 + 24);
  OUTLINED_FUNCTION_88_0();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DCC7E5C8;
  *(v6 + 24) = v5;
  *a3 = sub_1DCC7F25C;
  a3[1] = v6;
}

uint64_t sub_1DCC7C9BC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for ProtectedAppCheck(0);
  sub_1DCB17D04(a1, v5);

  result = ProtectedAppCheck.__allocating_init(appIDs:strategy:)();
  *a2 = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringCorrectICloudSharedId(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v6 = type metadata accessor for ACAccountICloudIdProvider();
  v19[3] = v6;
  v19[4] = &off_1F58601D8;
  v19[0] = swift_allocObject();
  type metadata accessor for ICloudIdValidator();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v19, v6);
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = OUTLINED_FUNCTION_9_19(v12, v18);
  v14(v13);
  v15 = *v3;
  v7[7] = v6;
  v7[8] = &off_1F58601D8;
  v7[4] = v15;
  OUTLINED_FUNCTION_88_0();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v7[2] = sub_1DCC7E5D4;
  v7[3] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E5DC;
  *(result + 24) = v7;
  *v2 = sub_1DCC7E5E4;
  v2[1] = result;
  return result;
}

void sub_1DCC7CB94()
{
  type metadata accessor for ICloudIdValidatorFlow();
  v0 = 0u;
  v1 = 0u;
  v2 = 0;
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)@<X0>(char a1@<W0>, uint64_t (**a2)()@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E614;
  *(result + 24) = v4;
  *a2 = sub_1DCC7E61C;
  a2[1] = result;
  return result;
}

uint64_t static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:strategy:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  sub_1DCB17D04(a2, v7);
  OUTLINED_FUNCTION_41_4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_1DCAFF9E8(v7, v5 + 24);
  OUTLINED_FUNCTION_88_0();
  result = swift_allocObject();
  *(result + 16) = sub_1DCC7E64C;
  *(result + 24) = v5;
  *a3 = sub_1DCC7F260;
  a3[1] = result;
  return result;
}

void sub_1DCC7CD64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriLocationAccessGuardFlow();
  sub_1DCB17D04(a2, v3);
  SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:strategy:)();
}

uint64_t GuardFlow.__allocating_init<A>(withDefaultPersonalDomainsStrategy:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DCC7CE38(a2, a3);
  v6 = GuardFlow.__allocating_init(withGuards:)(v5);
  OUTLINED_FUNCTION_112(a2);
  (*(v7 + 8))(a1, a2);
  return v6;
}

uint64_t sub_1DCC7CE38(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B38, &qword_1DD0E8260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E4000;
  v5 = a2[1];
  v6 = OUTLINED_FUNCTION_6_23();
  v8 = v7(v6);
  OUTLINED_FUNCTION_21_6(v8, v9, &qword_1ECCA23A0, &qword_1DD0E83F0, v10, v11, v12, v13, *v117, *&v117[8], *&v117[16], *&v117[24], *&v117[32], *&v117[40], *&v117[48], *&v117[56], *&v117[64], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v120[0]);
  if (*&__src[24])
  {
    v14 = sub_1DCAFF9E8(__src, __dst);
    v22 = OUTLINED_FUNCTION_19_13(v14, v15, v16, v17, v18, v19, v20, v21, *v117, *&v117[8], *&v117[16], *&v117[24], *&v117[32], *&v117[40], *&v117[48], *&v117[56], *&v117[64], __dst[0]);
    sub_1DCB17D04(v22, v23);
    OUTLINED_FUNCTION_1_1();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_16_12(v24, v25, v26, v27, v28, v29, v30, v31, *v117);
    OUTLINED_FUNCTION_88_0();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1DCC7F22C;
    *(v32 + 24) = v2;
    *(inited + 32) = sub_1DCC7F24C;
    *(inited + 40) = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    *(inited + 32) = 0;
    *(inited + 40) = 0;
  }

  sub_1DCB185D0(v120, &qword_1ECCA23A0, &qword_1DD0E83F0);
  v33 = a2[2];
  v34 = OUTLINED_FUNCTION_6_23();
  v36 = v35(v34);
  OUTLINED_FUNCTION_21_6(v36, v37, &qword_1ECCA2B60, &qword_1DD0E83F8, v38, v39, v40, v41, *v117, *&v117[8], *&v117[16], *&v117[24], *&v117[32], *&v117[40], *&v117[48], *&v117[56], *&v117[64], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v120[0]);
  if (*&__src[24])
  {
    v42 = sub_1DCAFF9E8(__src, __dst);
    v50 = OUTLINED_FUNCTION_19_13(v42, v43, v44, v45, v46, v47, v48, v49, *v117, *&v117[8], *&v117[16], *&v117[24], *&v117[32], *&v117[40], *&v117[48], *&v117[56], *&v117[64], __dst[0]);
    sub_1DCB17D04(v50, v51);
    OUTLINED_FUNCTION_1_1();
    v52 = swift_allocObject();
    OUTLINED_FUNCTION_16_12(v52, v53, v54, v55, v56, v57, v58, v59, *v117);
    OUTLINED_FUNCTION_88_0();
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1DCC7F244;
    *(v60 + 24) = v2;
    *(inited + 48) = sub_1DCC7F250;
    *(inited + 56) = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  sub_1DCB185D0(v120, &qword_1ECCA2B60, &qword_1DD0E83F8);
  v61 = a2[3];
  v62 = OUTLINED_FUNCTION_6_23();
  v64 = v63(v62);
  OUTLINED_FUNCTION_21_6(v64, v65, &qword_1ECCA2B68, &qword_1DD0E8400, v66, v67, v68, v69, *v117, *&v117[8], *&v117[16], *&v117[24], *&v117[32], *&v117[40], *&v117[48], *&v117[56], *&v117[64], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v120[0]);
  if (*&__src[24])
  {
    v70 = sub_1DCAFF9E8(__src, __dst);
    v78 = OUTLINED_FUNCTION_19_13(v70, v71, v72, v73, v74, v75, v76, v77, *v117, *&v117[8], *&v117[16], *&v117[24], *&v117[32], *&v117[40], *&v117[48], *&v117[56], *&v117[64], __dst[0]);
    sub_1DCB17D04(v78, v79);
    OUTLINED_FUNCTION_1_1();
    v80 = swift_allocObject();
    OUTLINED_FUNCTION_16_12(v80, v81, v82, v83, v84, v85, v86, v87, *v117);
    OUTLINED_FUNCTION_88_0();
    v88 = swift_allocObject();
    *(v88 + 16) = sub_1DCC7F240;
    *(v88 + 24) = v2;
    *(inited + 64) = sub_1DCC7F248;
    *(inited + 72) = v88;
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  else
  {
    *(inited + 64) = 0;
    *(inited + 72) = 0;
  }

  sub_1DCB185D0(v120, &qword_1ECCA2B68, &qword_1DD0E8400);
  v89 = a2[4];
  v90 = OUTLINED_FUNCTION_6_23();
  v92 = v91(v90);
  OUTLINED_FUNCTION_21_6(v92, v93, &qword_1ECCA2B70, &qword_1DD0E8408, v94, v95, v96, v97, *v117, *&v117[8], *&v117[16], *&v117[24], *&v117[32], *&v117[40], *&v117[48], *&v117[56], *&v117[64], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __src[0], *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v120[0]);
  if (*&__src[8] == 1)
  {
    *(inited + 80) = 0;
    *(inited + 88) = 0;
  }

  else
  {
    v98 = memcpy(__dst, __src, 0x41uLL);
    v106 = OUTLINED_FUNCTION_19_13(v98, v99, v100, v101, v102, v103, v104, v105, *v117, *&v117[8], *&v117[16], *&v117[24], *&v117[32], *&v117[40], *&v117[48], *&v117[56], *&v117[64], __dst[0]);
    sub_1DCC7E444(v106, v107);
    OUTLINED_FUNCTION_12_20();
    v108 = swift_allocObject();
    memcpy((v108 + 16), v117, 0x41uLL);
    OUTLINED_FUNCTION_88_0();
    v109 = swift_allocObject();
    *(v109 + 16) = sub_1DCC7F230;
    *(v109 + 24) = v108;
    *(inited + 80) = sub_1DCC7F258;
    *(inited + 88) = v109;
    sub_1DCB06F30(__dst);
  }

  result = sub_1DCB185D0(v120, &qword_1ECCA2B70, &qword_1DD0E8408);
  v111 = 0;
  v112 = MEMORY[0x1E69E7CC0];
  for (i = (inited + 32); ; i += 2)
  {
    if (v111 == 4)
    {
      swift_setDeallocating();
      sub_1DCC6576C();
      return v112;
    }

    if (v111 > 3)
    {
      break;
    }

    ++v111;
    v114 = i + 2;
    if (*i)
    {
      v116 = *(v114 - 1);
      sub_1DD0DCF8C();
    }
  }

  __break(1u);
  return result;
}

uint64_t static CommonGuardFlowUtils.makeGuardFlow(withDefaultPersonalDomainsStrategy:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B38, &qword_1DD0E8260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E4010;
  OUTLINED_FUNCTION_13_16();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_5_27();
  v5(v4);
  sub_1DCB17C3C(v52, &v50, &qword_1ECCA2B40, &qword_1DD0E8268);
  if (v51)
  {
    sub_1DCAFF9E8(&v50, v49);
    sub_1DCB17D04(v49, v48);
    OUTLINED_FUNCTION_1_1();
    v6 = swift_allocObject();
    OUTLINED_FUNCTION_14_22(v6, v7, v8, v9, v10, v11, v12, v13, v48[0]);
    OUTLINED_FUNCTION_88_0();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1DCC7F23C;
    *(v14 + 24) = v0;
    *(inited + 32) = sub_1DCC7F24C;
    *(inited + 40) = v14;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  else
  {
    *(inited + 32) = 0;
    *(inited + 40) = 0;
  }

  sub_1DCB185D0(v52, &qword_1ECCA2B40, &qword_1DD0E8268);
  OUTLINED_FUNCTION_13_16();
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_5_27();
  v18(v17);
  sub_1DCB17C3C(v52, &v50, &qword_1ECCA2B48, &qword_1DD0E8270);
  if (v51)
  {
    sub_1DCAFF9E8(&v50, v49);
    sub_1DCB17D04(v49, v48);
    OUTLINED_FUNCTION_1_1();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_14_22(v19, v20, v21, v22, v23, v24, v25, v26, v48[0]);
    OUTLINED_FUNCTION_88_0();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1DCC7F238;
    *(v27 + 24) = v0;
    *(inited + 48) = sub_1DCC7F250;
    *(inited + 56) = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  else
  {
    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  sub_1DCB185D0(v52, &qword_1ECCA2B48, &qword_1DD0E8270);
  OUTLINED_FUNCTION_13_16();
  v29 = *(v28 + 24);
  v30 = OUTLINED_FUNCTION_5_27();
  v31(v30);
  sub_1DCB17C3C(v52, &v50, &qword_1ECCA2B50, &qword_1DD0E8278);
  if (v51)
  {
    sub_1DCAFF9E8(&v50, v49);
    sub_1DCB17D04(v49, v48);
    OUTLINED_FUNCTION_1_1();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_14_22(v32, v33, v34, v35, v36, v37, v38, v39, v48[0]);
    OUTLINED_FUNCTION_88_0();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1DCC7F234;
    *(v40 + 24) = v0;
    *(inited + 64) = sub_1DCC7F248;
    *(inited + 72) = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  else
  {
    *(inited + 64) = 0;
    *(inited + 72) = 0;
  }

  result = sub_1DCB185D0(v52, &qword_1ECCA2B50, &qword_1DD0E8278);
  v42 = MEMORY[0x1E69E7CC0];
  v43 = -1;
  for (i = (inited + 32); ; i += 2)
  {
    if (v43 == 2)
    {
      swift_setDeallocating();
      sub_1DCC6576C();
      type metadata accessor for GuardFlow();
      return GuardFlow.__allocating_init(withGuards:)(v42);
    }

    if (++v43 > 2)
    {
      break;
    }

    v45 = i + 2;
    if (*i)
    {
      v47 = *(v45 - 1);
      sub_1DD0DCF8C();
    }
  }

  __break(1u);
  return result;
}

uint64_t static CommonGuardFlowUtils.makeGuardFlow(withDefaultPersonalDomainsStrategy:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  type metadata accessor for GuardFlow();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, v1);
  return GuardFlow.__allocating_init<A>(withDefaultPersonalDomainsStrategy:)(v9, v1, v2);
}

uint64_t PersonalDomainsCommonGuardStrategy.authenticationStrategy.getter()
{
  OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  result = swift_allocObject();
  *(result + 16) = 6;
  *(result + 24) = 0;
  *(result + 48) = &type metadata for FeatureFlagDefinitions.Core;
  *(result + 56) = &off_1F585CB38;
  v0[3] = v1;
  v0[4] = &protocol witness table for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy;
  *v0 = result;
  return result;
}

uint64_t PersonalDomainsCommonGuardStrategyAsync.authenticationStrategy.getter()
{
  OUTLINED_FUNCTION_4();
  type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  v1 = swift_allocObject();
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  *(v1 + 48) = &type metadata for FeatureFlagDefinitions.Core;
  *(v1 + 56) = &off_1F585CB38;
  v2 = sub_1DCC7E190(v1);
  result = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  v0[3] = result;
  v0[4] = &off_1F5876F20;
  *v0 = v2;
  return result;
}

uint64_t sub_1DCC7D89C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

double PersonalDomainsCommonGuardStrategyAsync.userIdentityStrategy.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1DD0E3FF0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

void sub_1DCC7D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  sub_1DCB17D04(a1, v24);
  v7 = v25;
  v8 = v26;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  sub_1DD01D850(v12, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  sub_1DCB17D04(a2, v24);
  sub_1DCB17D04(a3, v22);
  v14 = type metadata accessor for UnlockDeviceFlowAsync(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = v23;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v18);
  (*(v21 + 16))(v22 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD01F0F0();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26B0, &qword_1DD0FF8A0);
  swift_allocObject();
  sub_1DCC4AC30();
}

uint64_t sub_1DCC7DB50(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC7DB70, 0, 0);
}

uint64_t sub_1DCC7DB70()
{
  v1 = v0[9];
  if (*(v1 + 120))
  {
    v2 = v0[8];
    v3 = type metadata accessor for ExecuteResponse(0);
    v4 = *(v3 + 36);
    v5 = type metadata accessor for PluginAction();
    __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
    *v2 = 1;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 24) = 0;
    *(v2 + 48) = -4;
    v6 = (v2 + *(v3 + 40));
    *v6 = 0u;
    v6[1] = 0u;
  }

  else
  {
    v7 = *(v1 + 64);
    v8 = *(v1 + 72);
    __swift_project_boxed_opaque_existential_1((v1 + 40), v7);
    v9 = *(v1 + 104);
    v10 = *(v1 + 112);
    __swift_project_boxed_opaque_existential_1((v1 + 80), v9);
    (*(v10 + 8))(v9, v10);
    v11 = (*(v8 + 248))(v0 + 2, v7, v8);
    v12 = sub_1DCC4B20C((v0 + 2));
    v14 = v0[8];
    v13 = v0[9];
    if ((v11 & 1) == 0)
    {
      *(v1 + 120) = 1;
      v15 = *(v13 + 32);
      (*(v13 + 24))(v12);
      sub_1DD0DCF8C();
    }

    *(v13 + 16) = 0;
    static ExecuteResponse.complete()();
  }

  v16 = v0[1];

  return v16();
}

void *sub_1DCC7DD34()
{
  v1 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  return v0;
}

uint64_t sub_1DCC7DD64()
{
  sub_1DCC7DD34();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC7DDBC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v0;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DCBFA404;

  return sub_1DCC7DB50(v3);
}

uint64_t sub_1DCC7DF7C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1, a1);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v23 - v18;
  (*(v12 + 32))(&v23 - v18);
  type metadata accessor for GuardedAuthenticationFlow();
  v20 = swift_allocObject();
  (*(v12 + 16))(v16, v19, a6);
  v21 = sub_1DCC7E0F0(v16, a2, a3, a4, v20, a6, a7);
  (*(v12 + 8))(v19, a6);
  return v21;
}

uint64_t sub_1DCC7E0F0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a5 + 104) = a6;
  *(a5 + 112) = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a5 + 80));
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a6);
  *(a5 + 16) = 1;
  *(a5 + 120) = 0;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  sub_1DCAFF9E8(a2, a5 + 40);
  return a5;
}

void *sub_1DCC7E190(uint64_t *a1)
{
  v17 = *a1;
  v18 = &protocol witness table for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy;
  v16[0] = a1;
  sub_1DCB17D04(v16, v15);
  OUTLINED_FUNCTION_1_1();
  v2 = swift_allocObject();
  sub_1DCAFF9E8(v15, v2 + 16);
  sub_1DCB17D04(v16, &v14);
  OUTLINED_FUNCTION_1_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_2_38(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  return sub_1DD01C898(sub_1DCC7F18C, v2, sub_1DCD799A4, 0, &unk_1DD0E8460, v1, DynamicType);
}

uint64_t sub_1DCC7E584()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DCC7C790();
}

uint64_t sub_1DCC7E5BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1DCC7C898(v1 + 32, a1);
}

void assignWithCopy for CommonFlowGuard(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for CommonFlowGuard(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CommonFlowGuard(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CommonFlowGuard(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CommonGuardFlowUtils(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for GuardedAuthenticationFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCC7E980()
{
  result = qword_1ECCA2B58;
  if (!qword_1ECCA2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2B58);
  }

  return result;
}

uint64_t objectdestroy_69Tm()
{
  v1 = v0[3];

  if (v0[4])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  }

  OUTLINED_FUNCTION_12_20();

  return swift_deallocObject();
}

uint64_t sub_1DCC7EA28(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v28);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  sub_1DCB17D04(&v28, v26);
  sub_1DCB17D04(a2, v25);
  sub_1DCAFF9E8(&v28, v24);
  sub_1DCAFF9E8(a2, v23);
  v13 = swift_allocObject();
  sub_1DCAFF9E8(v24, v13 + 16);
  sub_1DCAFF9E8(v23, v13 + 56);
  sub_1DCAFF9E8(a3, v13 + 96);
  v14 = v27;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_1DCC7DF7C(v18, v25, sub_1DCC7F264, v13, a4, a5, a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v20;
}

void sub_1DCC7EBFC()
{
  v3 = &type metadata for DefaultPersonalDomainCheckFlowStrategy;
  v4 = &off_1F5867C90;
  swift_getKeyPath();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DD0DCACC();
}

uint64_t sub_1DCC7ED28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14[3] = type metadata accessor for LegacySiriKitOutputPublisher();
  v14[4] = &off_1F58668F0;
  v14[0] = a2;
  *(a3 + 16) = 0;
  sub_1DCB17D04(a1, &v11);
  v6 = type metadata accessor for ScreentimeCheckFlowStrategyAsyncAdapter();
  v7 = swift_allocObject();
  sub_1DCAFF9E8(&v11, v7 + 16);
  *(a3 + 48) = v6;
  *(a3 + 56) = &off_1F5872998;
  *(a3 + 24) = v7;
  sub_1DCB17D04(v14, &v11);
  v8 = type metadata accessor for OutputPublisherAsyncAdapter();
  v9 = swift_allocObject();
  sub_1DCAFF9E8(&v11, v9 + 16);
  v12 = v8;
  v13 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v11 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  sub_1DCAFF9E8(&v11, a3 + 64);
  return a3;
}

uint64_t sub_1DCC7EE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = &protocol witness table for RefreshableDeviceState;
  v37 = type metadata accessor for RefreshableDeviceState();
  *&v36 = a2;
  v34 = &type metadata for OutputPublishers;
  v35 = &off_1F5866A08;
  *&v33 = a3;
  v31 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  v32 = &off_1F5876F20;
  *&v30 = a1;
  sub_1DCB17D04(&v30, v28);
  sub_1DCB17D04(&v36, v26);
  sub_1DCAFF9E8(&v30, v25);
  sub_1DCAFF9E8(&v36, v24);
  v6 = swift_allocObject();
  sub_1DCAFF9E8(v25, v6 + 16);
  sub_1DCAFF9E8(v24, v6 + 56);
  sub_1DCAFF9E8(&v33, v6 + 96);
  v7 = v29;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  type metadata accessor for GuardedAuthenticationFlow();
  v14 = swift_allocObject();
  v15 = v27;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v16);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_1DCC7F0C0(v13, *v19, sub_1DCC7F0B0, v6, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v21;
}

uint64_t sub_1DCC7F0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 64) = type metadata accessor for RefreshableDeviceState();
  *(a5 + 72) = &protocol witness table for RefreshableDeviceState;
  *(a5 + 40) = a2;
  *(a5 + 104) = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  *(a5 + 112) = &off_1F5876F20;
  *(a5 + 80) = a1;
  *(a5 + 16) = 1;
  *(a5 + 120) = 0;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return a5;
}

uint64_t objectdestroy_213Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocObject();
}

uint64_t sub_1DCC7F194()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCBFA404;

  return sub_1DD01C904(v3, v0 + 16);
}

void sub_1DCC7F268(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C60, &qword_1DD0E8580);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v38 = v36 - v9;
  v44 = sub_1DD0DD92C();
  v37 = *(v44 - 8);
  v10 = *(v37 + 64);
  v12 = MEMORY[0x1EEE9AC00](v44, v11);
  v36[3] = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v40 = v36 - v15;
  v16 = sub_1DD0DD9DC();
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v41 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v45 = v36 - v22;
  v23 = sub_1DD0DD94C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = (v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C78, &unk_1DD0E8590);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v34 = sub_1DD0DD9BC();
  v39 = a3;
  v36[2] = v34;
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v34);
  v35 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  *v28 = a1;
  (*(v24 + 104))(v28, *MEMORY[0x1E69D2930], v23);
  sub_1DD0DCF8C();
}

void static Transformer<>.transformer(contactResolver:contactResolverConfig:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v3 = OUTLINED_FUNCTION_99(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  sub_1DCC85B44(a1, v20, &qword_1ECCA2B88, &qword_1DD0E8498);
  OUTLINED_FUNCTION_6_24();
  sub_1DCC85B44(v9, v10, v11, v12);
  v13 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = v20[1];
  *(v14 + 16) = v20[0];
  *(v14 + 32) = v15;
  *(v14 + 48) = v21;
  OUTLINED_FUNCTION_6_24();
  sub_1DCC85AA8(v16, v17, v18, v19);
  sub_1DD0DC7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B90, &qword_1DD0E84A0);
  OUTLINED_FUNCTION_4_24();
}

uint64_t sub_1DCC7FBCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = a3;
  v35 = a2;
  v36 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB8, &qword_1DD0E84C8);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v17 = *a1;
  sub_1DD0DBE9C();
  sub_1DCC85B44(v49, v47, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (v48)
  {
    v32 = v4;
    sub_1DCC85B44(v47, v46, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    sub_1DD0DBD9C();
    if (swift_dynamicCast())
    {
      v31 = v50;
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_1DCC85B44(&v43, &v40, &qword_1ECCA2B98, &qword_1DD0E84A8);
      sub_1DCC85B44(v34, v13, &qword_1ECCA2B80, &qword_1DD0E8490);
      sub_1DCC85B44(v35, &v37, &qword_1ECCA2B88, &qword_1DD0E8498);
      v18 = (*(v33 + 80) + 56) & ~*(v33 + 80);
      v19 = swift_allocObject();
      v20 = v41;
      *(v19 + 16) = v40;
      *(v19 + 32) = v20;
      *(v19 + 48) = v42;
      sub_1DCC85AA8(v13, v19 + v18, &qword_1ECCA2B80, &qword_1DD0E8490);
      v21 = v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v22 = v38;
      *v21 = v37;
      *(v21 + 16) = v22;
      *(v21 + 32) = v39;
      sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
      sub_1DD0DCBAC();
    }

    sub_1DD0DBD1C();
    if (swift_dynamicCast())
    {
      v30[1] = v50;
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_1DCC85B44(v35, &v40, &qword_1ECCA2B88, &qword_1DD0E8498);
      sub_1DCC85B44(v34, v13, &qword_1ECCA2B80, &qword_1DD0E8490);
      sub_1DCC85B44(&v43, &v37, &qword_1ECCA2B98, &qword_1DD0E84A8);
      v23 = (*(v33 + 80) + 56) & ~*(v33 + 80);
      v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v26 = v41;
      *(v25 + 16) = v40;
      *(v25 + 32) = v26;
      *(v25 + 48) = v42;
      sub_1DCC85AA8(v13, v25 + v23, &qword_1ECCA2B80, &qword_1DD0E8490);
      v27 = v25 + v24;
      v28 = v38;
      *v27 = v37;
      *(v27 + 16) = v28;
      *(v27 + 32) = v39;
      sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
      sub_1DD0DCBAC();
    }

    sub_1DCB185D0(v49, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  else
  {
    sub_1DCB185D0(v49, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  *v36 = 0;
  return sub_1DCB185D0(v47, &dword_1ECCA3CE0, &unk_1DD0E4F80);
}

void static Transformer<>.transformer(contactResolver:contactResolverConfig:referenceResolver:)()
{
  OUTLINED_FUNCTION_9_20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v3 = OUTLINED_FUNCTION_99(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  sub_1DCC85B44(v0, v13, &qword_1ECCA2B98, &qword_1DD0E84A8);
  OUTLINED_FUNCTION_6_24();
  sub_1DCC85B44(v7, v8, v9, v10);
  sub_1DCC85B44(v1, v12, &qword_1ECCA2B88, &qword_1DD0E8498);
  OUTLINED_FUNCTION_7_26();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_3_34(v11);
  OUTLINED_FUNCTION_5_28();
  sub_1DD0DBD9C();
  sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  OUTLINED_FUNCTION_4_24();
}

{
  OUTLINED_FUNCTION_9_20();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v3 = OUTLINED_FUNCTION_99(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  sub_1DCC85B44(v1, v13, &qword_1ECCA2B88, &qword_1DD0E8498);
  OUTLINED_FUNCTION_6_24();
  sub_1DCC85B44(v7, v8, v9, v10);
  sub_1DCC85B44(v0, v12, &qword_1ECCA2B98, &qword_1DD0E84A8);
  OUTLINED_FUNCTION_7_26();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_3_34(v11);
  OUTLINED_FUNCTION_5_28();
  sub_1DD0DBD1C();
  sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  OUTLINED_FUNCTION_4_24();
}

void sub_1DCC80608()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0 - 8, v3);
  v5 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  v9 = sub_1DD0DC8CC();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_1DCC85B44(v16, v14, &qword_1ECCA2B88, &qword_1DD0E8498);
  sub_1DCC85B44(v8, v5, &qword_1ECCA2B80, &qword_1DD0E8490);
  v10 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v12 = v14[1];
  *(v11 + 16) = v14[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v15;
  sub_1DCC85AA8(v5, v11 + v10, &qword_1ECCA2B80, &qword_1DD0E8490);
  sub_1DD0DC7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B90, &qword_1DD0E84A0);
  sub_1DD0DCBAC();
}

void sub_1DCC808AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a4;
  v79 = a3;
  v72 = a5;
  v64 = sub_1DD0DBD5C();
  v71 = *(v64 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v64, v8);
  v62[1] = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C48, &qword_1DD0E8568);
  v10 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63, v11);
  v68 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C50, &qword_1DD0E8570);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v62[2] = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v69 = v62 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v70 = v62 - v22;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C58, &qword_1DD0E8578);
  v66 = *(v67 - 8);
  v23 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67, v24);
  v65 = v62 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v62[3] = v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v31);
  v78 = v62 - v32;
  v73 = sub_1DD0DC82C();
  v75 = *(v73 - 8);
  v33 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73, v34);
  v74 = v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v40 = (v62 - v39);
  v41 = sub_1DD0DC8CC();
  v81 = *(v41 - 8);
  v42 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v41, v43);
  v80 = v62 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C60, &qword_1DD0E8580);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8, v47);
  v49 = v62 - v48;
  v50 = sub_1DD0DD9BC();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50, v52);
  v53 = *a1;
  sub_1DCC85B44(a2, &v82, &qword_1ECCA2B98, &qword_1DD0E84A8);
  v77 = v53;
  if (v83)
  {
    sub_1DCAFF9E8(&v82, &v84);
    v54 = sub_1DD0DBA1C();
    sub_1DCC7F268(v54, &v84, v49);
  }

  sub_1DCB185D0(&v82, &qword_1ECCA2B98, &qword_1DD0E84A8);
  sub_1DCC85B44(v79, v40, &qword_1ECCA2B80, &qword_1DD0E8490);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v41);
  v57 = v80;
  v56 = v81;
  if (EnumTagSinglePayload == 1)
  {
    v58 = &qword_1ECCA2B80;
    v59 = &qword_1DD0E8490;
    v60 = v40;
  }

  else
  {
    (*(v81 + 32))(v80, v40, v41);
    sub_1DCC85B44(v76, &v82, &qword_1ECCA2B88, &qword_1DD0E8498);
    if (v83)
    {
      sub_1DCAFF9E8(&v82, &v84);
      v62[0] = 0;
      sub_1DD0DCF8C();
    }

    (*(v56 + 8))(v57, v41);
    v58 = &qword_1ECCA2B88;
    v59 = &qword_1DD0E8498;
    v60 = &v82;
  }

  sub_1DCB185D0(v60, v58, v59);
  if (qword_1EDE463E8 != -1)
  {
    swift_once();
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF0, &qword_1DD0E8520);
  __swift_project_value_buffer(v61, qword_1EDE57CC0);
  sub_1DD0DCBBC();
}

void sub_1DCC819B8(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1 - 8, v4);
  v6 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v13 = sub_1DD0DC8CC();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1DCC85B44(v25, v23, &qword_1ECCA2B98, &qword_1DD0E84A8);
  sub_1DCC85B44(v9, v6, &qword_1ECCA2B80, &qword_1DD0E8490);
  sub_1DCC85B44(v27, v21, &qword_1ECCA2B88, &qword_1DD0E8498);
  v14 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = v23[1];
  *(v16 + 16) = v23[0];
  *(v16 + 32) = v17;
  *(v16 + 48) = v24;
  sub_1DCC85AA8(v6, v16 + v14, &qword_1ECCA2B80, &qword_1DD0E8490);
  v18 = v16 + v15;
  v19 = v21[1];
  *v18 = v21[0];
  *(v18 + 16) = v19;
  *(v18 + 32) = v22;
  sub_1DD0DBD9C();
  sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  sub_1DD0DCBAC();
}

void sub_1DCC81D04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB0, &qword_1DD0E84C0);
  __swift_allocate_value_buffer(v0, qword_1EDE464B8);
  __swift_project_value_buffer(v0, qword_1EDE464B8);
  sub_1DD0DBD1C();
  sub_1DD0DBD9C();
  sub_1DD0DCBAC();
}

uint64_t sub_1DCC81D94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DD0DC13C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1DD0DC12C();
  sub_1DD0DBA1C();
  sub_1DD0DBE0C();

  if (!MEMORY[0x1E12A4450](v7))
  {
    sub_1DD0DCF1C();
  }

  sub_1DD0DBD9C();
  sub_1DD0DBEBC();
  if (!v9)
  {
    sub_1DD0DCF1C();
  }

  *a2 = v9;
  return result;
}

void sub_1DCC82098(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = *a1;
  if (qword_1EDE464B0 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB0, &qword_1DD0E84C0);
  __swift_project_value_buffer(v9, qword_1EDE464B8);
  sub_1DD0DCBBC();
}

uint64_t objectdestroy_2Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64) + v3 + 7;
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_1DD0DC8CC();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v7))
  {
    OUTLINED_FUNCTION_112(v7);
    (*(v8 + 8))(v0 + v3, v7);
  }

  if (*(v0 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v6));
  }

  return swift_deallocObject();
}

uint64_t sub_1DCC8259C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  __swift_project_value_buffer(v7, a4);
  return a5();
}

void sub_1DCC825F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0 - 8, v3);
  v5 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - v7;
  v9 = sub_1DD0DC8CC();
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_1DCC85B44(v21, v17, &qword_1ECCA2B88, &qword_1DD0E8498);
  sub_1DCC85B44(v8, v5, &qword_1ECCA2B80, &qword_1DD0E8490);
  sub_1DCC85B44(v19, v15, &qword_1ECCA2B98, &qword_1DD0E84A8);
  v10 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v12 = v17[1];
  *(v11 + 16) = v17[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v18;
  sub_1DCC85AA8(v5, v11 + v10, &qword_1ECCA2B80, &qword_1DD0E8490);
  v13 = v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = v15[1];
  *v13 = v15[0];
  *(v13 + 16) = v14;
  *(v13 + 32) = v16;
  sub_1DD0DBD1C();
  sub_1DCB10E5C(0, &qword_1EDE460B0, 0x1E696E940);
  sub_1DD0DCBAC();
}

void sub_1DCC82900()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF8, &unk_1DD0E8528);
  __swift_allocate_value_buffer(v0, qword_1ECCD25C8);
  __swift_project_value_buffer(v0, qword_1ECCD25C8);
  sub_1DD0DC16C();
  sub_1DD0DBD1C();
  sub_1DD0DCBAC();
}

uint64_t sub_1DCC82990@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DD0DC06C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1DD0DC05C();
  sub_1DD0DC15C();
  if (v8)
  {
    sub_1DD0DC04C();
  }

  if (sub_1DD0DC14C())
  {
    sub_1DD0DCF8C();
  }

  if (!MEMORY[0x1E12A4450](v7))
  {
    sub_1DD0DCF1C();
  }

  sub_1DD0DBD1C();
  sub_1DD0DBEBC();
  if (!v10)
  {
    sub_1DD0DCF1C();
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1DCC82CBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001DD116270 == a2;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000013 && 0x80000001DD116290 == a2)
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC() & 1;
  }
}

void sub_1DCC82D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD0, &qword_1DD0E8500);
  __swift_allocate_value_buffer(v0, qword_1EDE57CF0);
  __swift_project_value_buffer(v0, qword_1EDE57CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C18, &qword_1DD0E8548);
  sub_1DCB10E5C(0, &qword_1EDE46200, 0x1E696E948);
  sub_1DD0DCBAC();
}

id sub_1DCC82E18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (!*a1)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E696E948]);
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_6:
    result = sub_1DCC9DA1C(v15, v16, v17);
    goto LABEL_7;
  }

  sub_1DD0DC1BC();
  if (!v3)
  {
    v18 = sub_1DD0DC1CC();
    v20 = v19;
    sub_1DD0DBA1C();
    v21 = sub_1DD0DC6EC();
    v23 = v22;

    v24 = sub_1DCC82CBC(v21, v23);

    v25 = objc_allocWithZone(MEMORY[0x1E696E948]);
    v15 = v18;
    v16 = v20;
    v17 = v24;
    goto LABEL_6;
  }

  v4 = sub_1DD0DC1CC();
  v6 = v5;
  sub_1DD0DBA1C();
  v7 = sub_1DD0DC6EC();
  v9 = v8;

  v10 = sub_1DCC82CBC(v7, v9);

  v11 = sub_1DD0DDF8C();

  v12 = objc_allocWithZone(MEMORY[0x1E696E948]);
  result = sub_1DCC85944(v4, v6, v10, v11);
LABEL_7:
  *a2 = result;
  return result;
}

void sub_1DCC82F84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD8, &qword_1DD0E8508);
  __swift_allocate_value_buffer(v0, qword_1EDE57C90);
  __swift_project_value_buffer(v0, qword_1EDE57C90);
  type metadata accessor for INPersonRelationship(0);
  sub_1DD0DC54C();
  sub_1DD0DCBAC();
}

uint64_t sub_1DCC83014@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DD0DC54C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_1DD0DC53C();
  sub_1DD0DDFBC();
  sub_1DD0DC52C();

  *a2 = v7;
  return result;
}

void sub_1DCC83084()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE0, &qword_1DD0E8510);
  __swift_allocate_value_buffer(v0, qword_1EDE57CA8);
  __swift_project_value_buffer(v0, qword_1EDE57CA8);
  sub_1DCB10E5C(0, &qword_1EDE46200, 0x1E696E948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C10, &qword_1DD0E8540);
  sub_1DD0DCBAC();
}

void sub_1DCC83130()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE8, &qword_1DD0E8518);
  __swift_allocate_value_buffer(v0, qword_1EDE57CD8);
  __swift_project_value_buffer(v0, qword_1EDE57CD8);
  sub_1DD0DAD7C();
  sub_1DD0DC37C();
  sub_1DD0DCBAC();
}

void sub_1DCC831C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF0, &qword_1DD0E8520);
  __swift_allocate_value_buffer(v0, qword_1EDE57CC0);
  __swift_project_value_buffer(v0, qword_1EDE57CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  sub_1DD0DCBAC();
}

uint64_t sub_1DCC83268@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA32B0, &qword_1DD0E8538);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v17 - v7;
  if (a1[1])
  {
    v9 = *a1;
    v10 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
    v11 = sub_1DD0DDF8C();
    v12 = [v10 personNameComponentsFromString_];

    if (v12)
    {
      sub_1DD0DAD5C();

      v13 = sub_1DD0DAD7C();
      v14 = 0;
    }

    else
    {
      v13 = sub_1DD0DAD7C();
      v14 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v14, 1, v13);
    return sub_1DCC85AA8(v8, a2, &qword_1ECCA32B0, &qword_1DD0E8538);
  }

  else
  {
    v15 = sub_1DD0DAD7C();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  }
}

void sub_1DCC833D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC0, qword_1DD0E84D0);
  __swift_allocate_value_buffer(v0, qword_1EDE57D08);
  __swift_project_value_buffer(v0, qword_1EDE57D08);
  sub_1DD0DBE3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  sub_1DD0DCBAC();
}

void sub_1DCC83470(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v62 = sub_1DD0DAC2C();
  v60 = *(v62 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62, v4);
  v59[1] = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C30, &qword_1DD0E8558);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v63 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v61 = v59 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C38, &qword_1DD0E8560);
  v64 = *(v66 - 8);
  v13 = *(v64 + 64);
  v15 = MEMORY[0x1EEE9AC00](v66, v14);
  v65 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v88 = v59 - v18;
  v19 = sub_1DD0DC8FC();
  v79 = *(v19 - 8);
  v80 = v19;
  v20 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v78 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DD0DC90C();
  v76 = *(v23 - 8);
  v77 = v23;
  v24 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v75 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1DD0DC92C();
  v83 = *(v85 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v85, v28);
  v87 = v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DD0DAFDC();
  v30 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67, v31);
  v74 = v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1DD0DB15C();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v73 = v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1DD0DC93C();
  v71 = *(v37 - 8);
  v72 = v37;
  v38 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v37, v39);
  v70 = v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1DD0DB18C();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8, v43);
  v69 = v59 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1DD0DB0FC();
  v46 = *(*(v45 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v50 = MEMORY[0x1EEE9AC00](v48, v49);
  v52 = MEMORY[0x1EEE9AC00](v50, v51);
  v68 = v59 - v53;
  MEMORY[0x1EEE9AC00](v52, v54);
  v55 = sub_1DD0DC89C();
  v81 = *(v55 - 8);
  v82 = v55;
  v56 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v55, v57);
  v58 = *a1;
  sub_1DD0DBE2C();

  v86 = sub_1DD0DBE1C();
  sub_1DD0DCF8C();
}

void sub_1DCC84118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC0, qword_1DD0E84D0);
  __swift_allocate_value_buffer(v0, qword_1EDE46440);
  __swift_project_value_buffer(v0, qword_1EDE46440);
  if (qword_1EDE46460 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDE57D08);
  sub_1DD0DCBBC();
}

uint64_t sub_1DCC8421C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA23C0, &qword_1DD0E4F68);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v57 = v53 - v5;
  v6 = sub_1DD0DAC2C();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v58 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = v53 - v13;
  v15 = sub_1DD0DAFDC();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v53[10] = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v53 - v21;
  v23 = sub_1DD0DB10C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1DD0DB15C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v28, *MEMORY[0x1E6969868], v23);
  sub_1DD0DB11C();
  (*(v24 + 8))(v28, v23);
  sub_1DCC85B44(v59, v14, &qword_1ECCA9BA0, &qword_1DD0E6280);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    v53[8] = v30;
    v53[9] = v29;
    v36 = v22;
    (*(v60 + 32))(v22, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C28, &qword_1DD0E8550);
    v37 = sub_1DD0DB14C();
    v59 = v15;
    v38 = v37;
    v39 = *(v37 - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1DD0E8470;
    v43 = v42 + v41;
    v44 = *(v39 + 104);
    v44(v43, *MEMORY[0x1E6969A68], v38);
    v44(v43 + v40, *MEMORY[0x1E6969A78], v38);
    v44(v43 + 2 * v40, *MEMORY[0x1E6969A48], v38);
    v44(v43 + 3 * v40, *MEMORY[0x1E6969AC0], v38);
    v44(v43 + 4 * v40, *MEMORY[0x1E6969A58], v38);
    v44(v43 + 5 * v40, *MEMORY[0x1E6969A88], v38);
    v44(v43 + 6 * v40, *MEMORY[0x1E6969A98], v38);
    sub_1DCC612CC(v42);
    v53[6] = v34;
    v53[7] = v36;
    sub_1DD0DB12C();

    v45 = sub_1DD0DC1AC();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    sub_1DD0DC19C();
    sub_1DD0DABCC();
    sub_1DD0DC18C();
    v48 = *(v45 + 48);
    v49 = *(v45 + 52);
    swift_allocObject();
    sub_1DD0DC19C();
    sub_1DD0DABDC();
    sub_1DD0DC18C();
    v50 = sub_1DD0DC3BC();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    sub_1DD0DC3AC();
    sub_1DD0DCF8C();
  }

  sub_1DCB185D0(v14, &qword_1ECCA9BA0, &qword_1DD0E6280);
  sub_1DCC859C8();
  swift_allocError();
  swift_willThrow();
  return (*(v30 + 8))(v34, v29);
}

uint64_t sub_1DCC84DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC8, &qword_1DD0E84F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E8480;
  if (qword_1EDE46400 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA0, &qword_1DD0E84B0);
  v2 = __swift_project_value_buffer(v1, qword_1EDE46408);
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_1DCC85674(&qword_1EDE46390, &qword_1ECCA2BA0, &qword_1DD0E84B0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 32));
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_1Tm, v2, v1);
  if (qword_1EDE46468 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BA8, &qword_1DD0E84B8);
  v5 = __swift_project_value_buffer(v4, qword_1EDE46470);
  *(v0 + 96) = v4;
  *(v0 + 104) = sub_1DCC85674(&qword_1EDE463A8, &qword_1ECCA2BA8, &qword_1DD0E84B8);
  v6 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 72));
  (*(*(v4 - 8) + 16))(v6, v5, v4);
  if (qword_1EDE464B0 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB0, &qword_1DD0E84C0);
  v8 = __swift_project_value_buffer(v7, qword_1EDE464B8);
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_1DCC85674(&qword_1EDE463B8, &qword_1ECCA2BB0, &qword_1DD0E84C0);
  v9 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 112));
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  if (qword_1EDE46488 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BB8, &qword_1DD0E84C8);
  v11 = __swift_project_value_buffer(v10, qword_1EDE46490);
  *(v0 + 176) = v10;
  *(v0 + 184) = sub_1DCC85674(&qword_1EDE463B0, &qword_1ECCA2BB8, &qword_1DD0E84C8);
  v12 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 152));
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  if (qword_1EDE46428 != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD0, &qword_1DD0E8500);
  v14 = __swift_project_value_buffer(v13, qword_1EDE57CF0);
  *(v0 + 216) = v13;
  *(v0 + 224) = sub_1DCC85674(&qword_1EDE46398, &qword_1ECCA2BD0, &qword_1DD0E8500);
  v15 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 192));
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  if (qword_1EDE463D0 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BD8, &qword_1DD0E8508);
  v17 = __swift_project_value_buffer(v16, qword_1EDE57C90);
  *(v0 + 256) = v16;
  *(v0 + 264) = sub_1DCC85674(&qword_1EDE46370, &qword_1ECCA2BD8, &qword_1DD0E8508);
  v18 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 232));
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  if (qword_1EDE463D8 != -1)
  {
    swift_once();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE0, &qword_1DD0E8510);
  v20 = __swift_project_value_buffer(v19, qword_1EDE57CA8);
  *(v0 + 296) = v19;
  *(v0 + 304) = sub_1DCC85674(&qword_1EDE46378, &qword_1ECCA2BE0, &qword_1DD0E8510);
  v21 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 272));
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  if (qword_1EDE463F0 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BE8, &qword_1DD0E8518);
  v23 = __swift_project_value_buffer(v22, qword_1EDE57CD8);
  *(v0 + 336) = v22;
  *(v0 + 344) = sub_1DCC85674(&qword_1EDE46388, &qword_1ECCA2BE8, &qword_1DD0E8518);
  v24 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 312));
  (*(*(v22 - 8) + 16))(v24, v23, v22);
  if (qword_1EDE463E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF0, &qword_1DD0E8520);
  v26 = __swift_project_value_buffer(v25, qword_1EDE57CC0);
  *(v0 + 376) = v25;
  *(v0 + 384) = sub_1DCC85674(&qword_1EDE46380, &qword_1ECCA2BF0, &qword_1DD0E8520);
  v27 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 352));
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  if (qword_1EDE46438 != -1)
  {
    swift_once();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BC0, qword_1DD0E84D0);
  v29 = __swift_project_value_buffer(v28, qword_1EDE46440);
  *(v0 + 416) = v28;
  *(v0 + 424) = sub_1DCC85674(&qword_1EDE463A0, &qword_1ECCA2BC0, qword_1DD0E84D0);
  v30 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 392));
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  if (qword_1ECCA1260 != -1)
  {
    swift_once();
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2BF8, &unk_1DD0E8528);
  v32 = __swift_project_value_buffer(v31, qword_1ECCD25C8);
  *(v0 + 456) = v31;
  *(v0 + 464) = sub_1DCC85674(&qword_1ECCA2C00, &qword_1ECCA2BF8, &unk_1DD0E8528);
  v33 = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 432));
  result = (*(*(v31 - 8) + 16))(v33, v32, v31);
  off_1EDE48098 = v0;
  return result;
}

uint64_t sub_1DCC855E4()
{
  if (qword_1EDE48090 != -1)
  {
    result = swift_once();
  }

  if (*(off_1EDE48098 + 2))
  {
    sub_1DCB17CA0(off_1EDE48098 + 32, v1);
    sub_1DD0DCDFC();
  }

  return result;
}

uint64_t sub_1DCC85674(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
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

uint64_t sub_1DCC8572C()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCC85774()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

id sub_1DCC857B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v17 = sub_1DD0DAD7C();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v17) != 1)
  {
    v18 = sub_1DD0DAD3C();
    (*(*(v17 - 8) + 8))(a2, v17);
  }

  if (a4)
  {
    v19 = sub_1DD0DDF8C();
  }

  else
  {
    v19 = 0;
  }

  if (a7)
  {
    v20 = sub_1DD0DDF8C();
  }

  else
  {
    v20 = 0;
  }

  if (a9)
  {
    v21 = sub_1DD0DDF8C();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v11 initWithPersonHandle:a1 nameComponents:v18 displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21 relationship:a10];

  return v22;
}

id sub_1DCC85944(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1DD0DDF8C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

unint64_t sub_1DCC859C8()
{
  result = qword_1ECCA2C20;
  if (!qword_1ECCA2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2C20);
  }

  return result;
}

uint64_t sub_1DCC85AA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_112(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1DCC85AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCC85B44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_112(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1DCC85B98(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, unint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B80, &qword_1DD0E8490);
  OUTLINED_FUNCTION_99(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  return a2(a1, v2 + 16, v2 + v10, v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
}

_BYTE *storeEnumTagSinglePayload for TransformError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCC85D00()
{
  result = qword_1ECCA2C88;
  if (!qword_1ECCA2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2C88);
  }

  return result;
}

unint64_t CompanionCompatibilityCheckFlowStrategy.requirement.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1DCC8808C(v2);
}

uint64_t static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *(v5 + 32) = a2;
  *(v5 + 33) = 0;
  v6 = OUTLINED_FUNCTION_68();
  sub_1DCC8808C(v6);
  return v5;
}

uint64_t static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:shouldOutputErrorDialog:)(unint64_t *a1, char a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = a2;
  *(v7 + 33) = a3;
  sub_1DCC8808C(v5);
  return v7;
}

uint64_t CompanionCompatibilityCheckFlowStrategy.deinit()
{
  v1 = *(v0 + 24);
  sub_1DCC880C4(*(v0 + 16));
  return v0;
}

uint64_t CompanionCompatibilityCheckFlowStrategy.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_1DCC880C4(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC85FC8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1 & 1;
  return result;
}

void sub_1DCC8600C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC860C0()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_1DCC8614C;

  return sub_1DCC869AC();
}

uint64_t sub_1DCC8614C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  v3 = *(v1 + 80);
  v9 = *v0;
  *(v2 + 88) = v4;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC8623C()
{
  v1 = *(v0 + 88);
  v2 = *(*(v0 + 72) + 24);
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  sub_1DCC8808C(v24);
  v3 = CompanionDeviceInfoRequirement.supports(companion:)(v1);
  sub_1DCC880C4(v24);
  if (v3)
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);

    swift_beginAccess();
    *(v4 + 16) = 0;
LABEL_3:
    static ExecuteResponse.complete()();
LABEL_6:
    OUTLINED_FUNCTION_29();

    return v12();
  }

  v6 = *(v0 + 72);
  swift_beginAccess();
  *(v6 + 16) = 1;
  if (*(v2 + 32) == 1)
  {
    v7 = *(v0 + 64);

    v8 = type metadata accessor for ExecuteResponse(0);
    v9 = *(v8 + 36);
    v10 = type metadata accessor for PluginAction();
    __swift_storeEnumTagSinglePayload(v7 + v9, 1, 1, v10);
    *v7 = 3;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 24) = 0;
    *(v7 + 48) = 0x80;
    v11 = (v7 + *(v8 + 40));
    *v11 = 0u;
    v11[1] = 0u;
    goto LABEL_6;
  }

  if (*(v2 + 33) != 1)
  {
    v23 = *(v0 + 64);

    goto LABEL_3;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v14 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v16))
  {
    v17 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v17);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v18, v19, "[CompanionCompatibilityCheckFlow] returns false and we will output error diaglog");
    OUTLINED_FUNCTION_80();
  }

  v20 = swift_task_alloc();
  *(v0 + 96) = v20;
  *v20 = v0;
  v20[1] = sub_1DCC864AC;
  v21 = *(v0 + 88);
  v22 = *(v0 + 72);

  return sub_1DCC86D68(v21);
}

uint64_t sub_1DCC864AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC86590()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 64);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t CompanionDeviceInfoRequirement.supports(companion:)(void *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    if (!a1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v10 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v10, qword_1EDE57E00);
      v11 = sub_1DD0DD8EC();
      v12 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_26;
      }

      v13 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v13);
      v14 = "[CompanionCompatibilityCheckFlow] Strategy requires any known companion, but none was found: FAIL";
      goto LABEL_24;
    }

    return 1;
  }

  if (v3 != 1)
  {
    v15 = *(v1 + 8);
    if ((v3(a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v17 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v17, qword_1EDE57E00);
      sub_1DCC8808C(v3);
      v18 = a1;
      v11 = sub_1DD0DD8EC();
      v19 = sub_1DD0DE6DC();

      if (!os_log_type_enabled(v11, v19))
      {

        sub_1DCC880C4(v3);
        return 0;
      }

      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v20 = 136315394;
      OUTLINED_FUNCTION_88_0();
      v21 = swift_allocObject();
      *(v21 + 16) = v3;
      *(v21 + 24) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C90, &qword_1DD0E8678);
      v22 = sub_1DD0DE02C();
      v24 = sub_1DCB10E9C(v22, v23, &v31);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2C98, &qword_1DD0E8680);
      v26 = sub_1DD0DE02C();
      v28 = sub_1DCB10E9C(v26, v27, &v31);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_1DCAFC000, v11, v19, "[CompanionCompatibilityCheckFlow] Predicate %s does not pass for companion %s: FAIL", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      goto LABEL_25;
    }

    return 1;
  }

  if (a1)
  {
    v4 = qword_1EDE4F900;
    v5 = a1;
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v8))
    {
      v9 = OUTLINED_FUNCTION_50_0();
      *v9 = 0;
      _os_log_impl(&dword_1DCAFC000, v7, v8, "[CompanionCompatibilityCheckFlow] Strategy requires companion with peer-to-peer handoff, and we found a companion. Assume companion always supports peerToPeerHandoff", v9, 2u);
      OUTLINED_FUNCTION_80();
    }

    return 1;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v29 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();
  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_26;
  }

  v30 = OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_46(v30);
  v14 = "[CompanionCompatibilityCheckFlow] Strategy requires companion with peer-to-peer handoff, but none was found: FAIL";
LABEL_24:
  _os_log_impl(&dword_1DCAFC000, v11, v12, v14, 0, 2u);
LABEL_25:
  OUTLINED_FUNCTION_80();
LABEL_26:

  return 0;
}

uint64_t sub_1DCC869AC()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v0;
  v2 = type metadata accessor for IdentifiedUser();
  v1[3] = v2;
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCC86A48()
{
  v4 = v0;
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  sub_1DCC8600C();
}

uint64_t sub_1DCC86D68(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCC86D90()
{
  v5 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA2CA8, &qword_1DD0FBA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = 0x656369766564;
  *(inited + 40) = 0xE600000000000000;
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  OUTLINED_FUNCTION_68();
  sub_1DCCDE224();
}

uint64_t sub_1DCC87048()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCC87144()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  *(v1 + 312) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64) + 15;
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64) + 15;
  *(v1 + 272) = swift_task_alloc();
  v10 = type metadata accessor for AceOutput();
  *(v1 + 280) = v10;
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 288) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCC87240()
{
  OUTLINED_FUNCTION_42();
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 248) + 72), *(*(v0 + 248) + 96));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 296) = v2;
  *v2 = v3;
  v2[1] = sub_1DCC87300;
  v4 = *(v0 + 240);
  v5 = *(v0 + 312);

  return sub_1DCF66E08(v0 + 16, v5, v4, 0);
}

uint64_t sub_1DCC87300()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 296);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1DCC87774;
  }

  else
  {
    v6 = sub_1DCC87408;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1DCC87408()
{
  v9 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v5 = v4[7];
  v6 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v5);
  (*(v6 + 96))(v5, v6);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  *(v0 + 192) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 160) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCC87658()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 304);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {

    v7 = sub_1DCC87A94;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 200));
    v7 = sub_1DCC87A10;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCC87774()
{
  v16 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = sub_1DD0DD8FC();
  v4 = __swift_project_value_buffer(v3, qword_1EDE57E00);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v4, v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  v6 = OUTLINED_FUNCTION_68();
  sub_1DCBCF6C8(v6, v7);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1DCB16DB0(*(v0 + 256), &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v8 = *(v0 + 256);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v10))
    {
      v11 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v11 = 136315650;
      v12 = sub_1DD0DEC3C();
      v14 = sub_1DCB10E9C(v12, v13, &v15);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 157;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_1DCB10E9C(0xD000000000000034, 0x80000001DD1164B0, &v15);
      _os_log_impl(&dword_1DCAFC000, v9, v10, "FatalError at %s:%lu - %s", v11, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v5 + 8))(*(v0 + 256), v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000034, 0x80000001DD1164B0);
}

uint64_t sub_1DCC87A10()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_25();
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[32];

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCC87A94()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_25();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[32];

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t *CompanionCompatibilityCheckFlow.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v2 = v0[19];

  return v0;
}

uint64_t CompanionCompatibilityCheckFlow.__deallocating_deinit()
{
  CompanionCompatibilityCheckFlow.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCC87B94(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCC87C30()
{
  OUTLINED_FUNCTION_42();
  v2 = *v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCC860C0();
}

uint64_t sub_1DCC87CC4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCC85F94();
  *a1 = result;
  return result;
}

uint64_t sub_1DCC87D10(void *a1)
{
  if (CompanionDeviceInfoRequirement.supports(companion:)(a1))
  {
    v2 = CompanionDeviceInfoRequirement.supports(companion:)(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_1DCC87D94@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v8 = *v3;
  v9 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *a3 = a2;
  a3[1] = v6;
  sub_1DCC8808C(v8);

  return sub_1DCC8808C(v9);
}

uint64_t sub_1DCC87E18(void *a1)
{
  if (CompanionDeviceInfoRequirement.supports(companion:)(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = CompanionDeviceInfoRequirement.supports(companion:)(a1);
  }

  return v2 & 1;
}

unint64_t static CompanionDeviceInfoRequirement.not(_:)@<X0>(uint64_t *a1@<X0>, BOOL (**a2)(void *a1)@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  OUTLINED_FUNCTION_88_0();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a2 = sub_1DCC88180;
  a2[1] = v5;
  v6 = OUTLINED_FUNCTION_68();

  return sub_1DCC8808C(v6);
}

void sub_1DCC87F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = &type metadata for OutputPublishers;
  v14 = &off_1F5866A08;
  v12 = a2;
  v10 = type metadata accessor for RefreshableDeviceState();
  v11 = &protocol witness table for RefreshableDeviceState;
  v9 = a3;
  *(a4 + 16) = 0;
  swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2B78, &unk_1DD0E8450);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1DD0DCACC();
}

unint64_t sub_1DCC8808C(unint64_t result)
{
  if (result >= 2)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

unint64_t sub_1DCC880C4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}