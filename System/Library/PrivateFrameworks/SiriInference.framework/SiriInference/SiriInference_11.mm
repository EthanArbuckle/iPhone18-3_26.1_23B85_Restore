uint64_t sub_1DD45D20C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD640CD8() & 1;
  }
}

uint64_t sub_1DD45D264(char a1, char a2)
{
  switch(a1)
  {
    case 1:
    case 2:
      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }

      result = 1;
      break;
    case 3:
      goto LABEL_6;
    default:
      if (a2)
      {
        result = 0;
      }

      else
      {
LABEL_6:
        result = 2;
      }

      break;
  }

  return result;
}

uint64_t sub_1DD45D2A8(unsigned __int8 a1, char a2)
{
  if (a1 - 2 < 2)
  {
    return 4;
  }

  if (a1)
  {
    if (a2)
    {
      return 1;
    }
  }

  else if (a2)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_1DD45D2E4()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD45D330(char a1)
{
  result = 0x636572726F636E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x656E6F646E616261;
      break;
    case 4:
      result = OUTLINED_FUNCTION_37_10();
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1DD45D3E4()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD45D430(char a1)
{
  result = 0x6E656469666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 1701736302;
      break;
    case 3:
      result = OUTLINED_FUNCTION_37_10();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD45D4D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD45D2E4();
  *a2 = result;
  return result;
}

uint64_t sub_1DD45D508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD45D330(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD45D53C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3AEBC4();
}

uint64_t sub_1DD45D560@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD45D3E4();
  *a2 = result;
  return result;
}

uint64_t sub_1DD45D590@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD45D430(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD45D5C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD45D624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD45D67C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD45D710(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 42))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 41);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1DD45D75C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1DD45D7B8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD45D890(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD45D96C()
{
  result = qword_1ECCDCE28;
  if (!qword_1ECCDCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE28);
  }

  return result;
}

unint64_t sub_1DD45D9C4()
{
  result = qword_1ECCDCE30;
  if (!qword_1ECCDCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{
  v2 = *(v0 - 304);

  return sub_1DD45D624(v2, type metadata accessor for StitchableInteraction);
}

uint64_t (*OUTLINED_FUNCTION_22_9())(_BYTE *)
{
  v3 = *(v1 - 328);
  v4 = *(v1 - 424);

  return sub_1DD6083CC(v0, v3, (v1 - 256));
}

BOOL OUTLINED_FUNCTION_26_12@<W0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 424);

  return sub_1DD450388();
}

void OUTLINED_FUNCTION_27_11()
{
  *(v1 - 176) = v0;

  sub_1DD42A2D4();
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_35_9()
{
  v3 = *(v1 - 160);

  return sub_1DD408C00(0, 1, v0);
}

void *OUTLINED_FUNCTION_36_7()
{

  return memcpy((v0 - 176), (v0 - 256), 0x50uLL);
}

uint64_t sub_1DD45DBC4(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x636E656772656D65;
      break;
    case 2:
      result = 0x6C646E6148776172;
      break;
    case 3:
      result = 0x64726143656DLL;
      break;
    case 4:
      result = 0x6E6F436E776F6E6BLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DD45DC70()
{
  v1 = type metadata accessor for ContactResolver.SignalSet(0);
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v81 = v6 - v5;
  v7 = OUTLINED_FUNCTION_6_2();
  matched = type metadata accessor for PrivatizedContactMatchRuntimeData(v7);
  v8 = OUTLINED_FUNCTION_7(matched);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v79 = (v12 - v11);
  v13 = OUTLINED_FUNCTION_6_2();
  v78 = type metadata accessor for ContactMatchRuntimeData(v13);
  v14 = OUTLINED_FUNCTION_0(v78);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v21 = (v20 - v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA80, &qword_1DD649F78);
  v22 = sub_1DD63FC88();
  v23 = *(v0 + 296);
  v77 = *(v23 + 16);
  if (v77)
  {
    v24 = 0;
    v75 = v16;
    v76 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v74 = *(v0 + 296);
    while (2)
    {
      if (v24 >= *(v23 + 16))
      {
LABEL_22:
        __break(1u);
      }

      else
      {
        v84 = v24 + 1;
        v85 = v22;
        v25 = *(v16 + 72);
        OUTLINED_FUNCTION_17_17();
        sub_1DD463124();
        v82 = v21[1];
        v83 = *v21;
        sub_1DD40FF0C();
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v32 = v78[5];
        OUTLINED_FUNCTION_23_13();
        sub_1DD463124();
        sub_1DD55DD00(v81, v79 + matched[5]);
        v33 = v21 + v78[6];
        v34 = *(v33 + 1);
        v35 = *(v33 + 2);
        LOBYTE(v87[0]) = *v33;
        v87[1] = v34;
        v87[2] = v35;

        sub_1DD55EDF0(v87);
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v42 = *(v21 + v78[7]);
        sub_1DD55D704(*(v21 + v78[8]));
        v43 = *(v21 + v78[9]);
        *v79 = v27;
        v79[1] = v29;
        v79[2] = v31;
        v44 = v79 + matched[6];
        *v44 = v37 & 1;
        *(v44 + 1) = v39;
        *(v44 + 2) = v41;
        *(v79 + matched[7]) = v42;
        *(v79 + matched[8]) = v45;
        *(v79 + matched[9]) = v43;

        OUTLINED_FUNCTION_20_12();
        sub_1DD462FD0(v79, v46);
        v47 = sub_1DD522770(v42);
        v48 = v47;
        v49 = v47 + 64;
        v50 = 1 << *(v47 + 32);
        if (v50 < 64)
        {
          v51 = ~(-1 << v50);
        }

        else
        {
          v51 = -1;
        }

        v52 = v51 & *(v47 + 64);
        v53 = (v50 + 63) >> 6;

        v54 = 0;
        v86 = MEMORY[0x1E69E7CC0];
        while (v52)
        {
LABEL_13:
          v56 = __clz(__rbit64(v52));
          v52 &= v52 - 1;
          v57 = v56 | (v54 << 6);
          v58 = (*(v48 + 48) + 16 * v57);
          v59 = *v58;
          v60 = v58[1];
          v61 = *(*(v48 + 56) + 8 * v57);

          v62 = sub_1DD45E0CC(v59, v60, v61);
          v64 = v63;
          v66 = v65;

          if (v64)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v70 = *(v86 + 16);
              sub_1DD3BE37C();
              v86 = v71;
            }

            v67 = *(v86 + 16);
            v68 = v67 + 1;
            if (v67 >= *(v86 + 24) >> 1)
            {
              sub_1DD3BE37C();
              v68 = v67 + 1;
              v86 = v72;
            }

            *(v86 + 16) = v68;
            v69 = (v86 + 24 * v67);
            v69[4] = v62;
            v69[5] = v64;
            v69[6] = v66;
          }
        }

        while (1)
        {
          v55 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            __break(1u);
            goto LABEL_22;
          }

          if (v55 >= v53)
          {
            break;
          }

          v52 = *(v49 + 8 * v55);
          ++v54;
          if (v52)
          {
            v54 = v55;
            goto LABEL_13;
          }
        }

        sub_1DD3B80F8(v86);
        swift_isUniquelyReferenced_nonNull_native();
        v87[0] = v85;
        sub_1DD400048();
        v22 = v87[0];
        OUTLINED_FUNCTION_7_21();
        sub_1DD462FD0(v21, v73);
        v24 = v84;
        v23 = v74;
        v16 = v75;
        if (v84 != v77)
        {
          continue;
        }
      }

      break;
    }
  }
}

uint64_t sub_1DD45E0CC(uint64_t a1, unint64_t a2, double a3)
{
  v6 = trunc(a3);
  if (a3 > -9.22337204e18 && a3 < 9.22337204e18 && v6 == a3)
  {
    goto LABEL_15;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (qword_1EE165FB0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v9 = sub_1DD63F9F8();
  __swift_project_value_buffer(v9, qword_1EE16F068);

  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_1DD39565C(a1, a2, &v15);
    *(v12 + 12) = 2048;
    *(v12 + 14) = a3;
    *(v12 + 22) = 2048;
    *(v12 + 24) = a3;
    _os_log_impl(&dword_1DD38D000, v10, v11, "Rounded down value for signal %s %f -> %ld", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12B3DA0](v13, -1, -1);
    MEMORY[0x1E12B3DA0](v12, -1, -1);
  }

LABEL_15:

  return a1;
}

uint64_t sub_1DD45E2B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE88, &unk_1DD64C280);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_3();
  v76 = v5;
  v6 = OUTLINED_FUNCTION_6_2();
  v74 = type metadata accessor for ContactResolver.SignalSet(v6);
  v7 = OUTLINED_FUNCTION_7(v74);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73[1] = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = v73 - v12;
  OUTLINED_FUNCTION_6_2();
  v13 = type metadata accessor for Contact();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v73 - v26);
  v28 = type metadata accessor for ContactResolverRunTimeData(0);
  v29 = *(v28 + 40);
  v77 = v0;
  sub_1DD3C4EB4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = MEMORY[0x1E69E7CC0];
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v31 = *v27;
      break;
    case 3:
      break;
    default:
      sub_1DD463794();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD58, &unk_1DD649DD0);
      v32 = *(v16 + 72);
      v33 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1DD643F90;
      sub_1DD463794();
      break;
  }

  if (*(v31 + 16) != 1)
  {
    goto LABEL_11;
  }

  v34 = v77;
  v35 = sub_1DD45DBC4(*(v77 + *(v28 + 44)));
  v37 = v36;
  if (v35 == 0x64726143656DLL && v36 == 0xE600000000000000)
  {

LABEL_14:

    return 1;
  }

  v39 = v35;
  v40 = sub_1DD640CD8();

  if (v40)
  {
    goto LABEL_14;
  }

  if (v39 == 0x6C646E6148776172 && v37 == 0xE900000000000065)
  {
  }

  else
  {
    v43 = sub_1DD640CD8();

    if ((v43 & 1) == 0)
    {

      if (v39 != 0x6E6F436E776F6E6BLL || v37 != 0xEC00000074636174)
      {
        v45 = sub_1DD640CD8();

        result = 0;
        if (v45)
        {
          return result;
        }

        v46 = *(v34 + 296);
        v47 = v76;
        sub_1DD558EE8(v46, v76);
        matched = type metadata accessor for ContactMatchRuntimeData(0);
        if (__swift_getEnumTagSinglePayload(v47, 1, matched) == 1)
        {
          sub_1DD390754(v47, &qword_1ECCDCE88, &unk_1DD64C280);
          if (qword_1EE165FB0 != -1)
          {
            OUTLINED_FUNCTION_0_5();
          }

          v49 = sub_1DD63F9F8();
          __swift_project_value_buffer(v49, qword_1EE16F068);
          v50 = sub_1DD63F9D8();
          v51 = sub_1DD640378();
          if (!os_log_type_enabled(v50, v51))
          {
            goto LABEL_42;
          }

          v52 = swift_slowAlloc();
          *v52 = 0;
          v53 = "1-person recommendation but no matches!";
LABEL_41:
          _os_log_impl(&dword_1DD38D000, v50, v51, v53, v52, 2u);
          MEMORY[0x1E12B3DA0](v52, -1, -1);
LABEL_42:

          return 0;
        }

        v59 = *(matched + 20);
        OUTLINED_FUNCTION_23_13();
        sub_1DD463124();
        OUTLINED_FUNCTION_7_21();
        sub_1DD462FD0(v47, v60);
        OUTLINED_FUNCTION_21_11();
        v61 = v75;
        sub_1DD463794();
        if ((*(v61 + v74[35]) & 1) != 0 || *(v61 + v74[37]) == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v61, v62);
          return 6;
        }

        v63 = (v61 + v74[33]);
        if (v63[9] == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v61, v64);
          return 4;
        }

        if (v63[10] == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v61, v65);
          return 2;
        }

        if (v63[12] == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v61, v66);
          return 3;
        }

        if (v63[15] == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v61, v67);
          return 5;
        }

        v68 = v63[13];
        OUTLINED_FUNCTION_0_45();
        sub_1DD462FD0(v61, v69);
        if (v68)
        {
          return 7;
        }

        goto LABEL_58;
      }

LABEL_11:

      return 0;
    }
  }

  if (!*(v31 + 16))
  {
    __break(1u);
LABEL_58:
    v70 = *(v77 + 192);
    v71 = *(v77 + 208);
    if (v71 && v70 == 2)
    {
      return 9;
    }

    if (v70 != 1 || v71 == 0)
    {
      return 0;
    }

    return 12;
  }

  v54 = *(v16 + 80);
  sub_1DD463124();

  v55 = *&v20[*(v13 + 80)];

  OUTLINED_FUNCTION_22_10();
  sub_1DD462FD0(v20, v56);
  if (!*(v55 + 16))
  {

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v58 = sub_1DD63F9F8();
    __swift_project_value_buffer(v58, qword_1EE16F068);
    v50 = sub_1DD63F9D8();
    v51 = sub_1DD640378();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_42;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "rawHandle recommendation but no handle in the contact!";
    goto LABEL_41;
  }

  v57 = *(v55 + 48);

  if (v57 == 2)
  {
    return 9;
  }

  else
  {
    return 12;
  }
}

uint64_t sub_1DD45E9E8(uint64_t a1, uint64_t a2)
{
  v142 = sub_1DD63D0F8();
  v4 = OUTLINED_FUNCTION_0(v142);
  v140 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v139 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_3();
  v141 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE60, &qword_1DD64C250);
  OUTLINED_FUNCTION_7(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_3();
  v143 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v127 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  OUTLINED_FUNCTION_3(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v127 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE68, &qword_1DD64C258);
  OUTLINED_FUNCTION_7(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v127 - v36;
  memcpy(v146, a1, sizeof(v146));
  memcpy(v145, a1, sizeof(v145));
  memcpy(v147, a2, sizeof(v147));
  memcpy(v144, a2, sizeof(v144));
  sub_1DD3C9478(v146, v149);
  sub_1DD3C9478(v147, v149);
  v38 = static ContactQuery.== infix(_:_:)(v145, v144);
  memcpy(v148, v144, sizeof(v148));
  sub_1DD3C9580(v148);
  memcpy(v149, v145, 0x108uLL);
  sub_1DD3C9580(v149);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

  v39 = *(a2 + 264);
  if ((sub_1DD3AE238(*(a1 + 264)) & 1) == 0)
  {
    return 0;
  }

  v40 = *(a1 + 272) == *(a2 + 272) && *(a1 + 280) == *(a2 + 280);
  if (!v40 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 288) != *(a2 + 288))
  {
    return 0;
  }

  if (*(a1 + 289) != *(a2 + 289))
  {
    return 0;
  }

  v41 = *(a1 + 296);
  v42 = *(a2 + 296);
  if ((sub_1DD3C38A8() & 1) == 0)
  {
    return 0;
  }

  v43 = type metadata accessor for ContactResolverRunTimeData(0);
  v44 = *(v43 + 40);
  if ((sub_1DD4621B0() & 1) == 0)
  {
    return 0;
  }

  v136 = v43;
  v45 = *(v43 + 44);
  v46 = *(a1 + v45);
  LODWORD(v137) = *(a2 + v45);
  v47 = sub_1DD45DBC4(v46);
  v138 = v48;
  if (v47 == sub_1DD45DBC4(v137) && v138 == v49)
  {
  }

  else
  {
    LODWORD(v137) = sub_1DD640CD8();

    if ((v137 & 1) == 0)
    {
      return 0;
    }
  }

  v51 = v136;
  if (*(a1 + v136[12]) != *(a2 + v136[12]) || (sub_1DD3AF7EC(*(a1 + v136[13]), *(a2 + v136[13])) & 1) == 0)
  {
    return 0;
  }

  v52 = v51[14];
  v53 = *(v32 + 48);
  sub_1DD3C4EB4();
  sub_1DD3C4EB4();
  OUTLINED_FUNCTION_105(v37);
  if (v40)
  {
    OUTLINED_FUNCTION_105(&v37[v53]);
    if (v40)
    {
      sub_1DD390754(v37, &qword_1ECCDC1C8, qword_1DD64ADD0);
      goto LABEL_32;
    }

LABEL_29:
    v55 = &qword_1ECCDCE68;
    v56 = &qword_1DD64C258;
    v57 = v37;
LABEL_30:
    sub_1DD390754(v57, v55, v56);
    return 0;
  }

  sub_1DD3C4EB4();
  OUTLINED_FUNCTION_105(&v37[v53]);
  if (v54)
  {
    sub_1DD390754(v31, &qword_1ECCDBEE0, &unk_1DD645510);
    goto LABEL_29;
  }

  sub_1DD462CA0(&v37[v53], v25);
  v58 = sub_1DD4621B0();
  sub_1DD390754(v25, &qword_1ECCDBEE0, &unk_1DD645510);
  sub_1DD390754(v31, &qword_1ECCDBEE0, &unk_1DD645510);
  sub_1DD390754(v37, &qword_1ECCDC1C8, qword_1DD64ADD0);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v59 = v136[15];
  v60 = *(a1 + v59);
  v61 = *(a1 + v59 + 8);
  v63 = *(a1 + v59 + 16);
  v62 = *(a1 + v59 + 24);
  v64 = *(a1 + v59 + 32);
  v138 = *(a1 + v59 + 40);
  v65 = (a2 + v59);
  v66 = *v65;
  v67 = v65[1];
  v68 = v65[2];
  v69 = v65[3];
  v70 = v65[4];
  v71 = v65[5];
  if (v61 == 1)
  {
    if (v67 == 1)
    {
      goto LABEL_38;
    }

LABEL_36:
    v134 = *v65;
    v135 = v71;
    v137 = v68;
    sub_1DD458B8C(v134, v67);
    v72 = OUTLINED_FUNCTION_44_8();
    sub_1DD458B8C(v72, v73);
    v74 = OUTLINED_FUNCTION_44_8();
    sub_1DD447638(v74, v75);
    sub_1DD447638(v134, v67);
    return 0;
  }

  if (v67 == 1)
  {
    goto LABEL_36;
  }

  v145[0] = *v65;
  v145[1] = v67;
  v145[2] = v68;
  v145[3] = v69;
  v145[4] = v70;
  v145[5] = v71;
  v144[0] = v60;
  v144[1] = v61;
  v144[2] = v63;
  v144[3] = v62;
  v144[4] = v64;
  v144[5] = v138;
  v128 = v60;
  v129 = v62;
  v134 = v66;
  v135 = v71;
  v130 = v64;
  v131 = v69;
  v132 = v63;
  v127 = v70;
  v137 = v68;
  v133 = sub_1DD600C28(v144, v145);
  sub_1DD458B8C(v134, v67);
  v76 = v128;
  sub_1DD458B8C(v128, v61);

  sub_1DD447638(v76, v61);
  if ((v133 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v77 = v136;
  v78 = v136[16];
  v79 = *(a1 + v78);
  v80 = *(a1 + v78 + 1);
  v81 = *(a1 + v78 + 2);
  v82 = *(a1 + v78 + 3);
  v83 = *(a1 + v78 + 4);
  v84 = (a2 + v78);
  v85 = *v84;
  v86 = v84[1];
  v87 = v84[2];
  v88 = v84[3];
  v89 = v84[4];
  v40 = v82 == 0;
  v90 = 0x1000000;
  if (v40)
  {
    v91 = 0;
  }

  else
  {
    v91 = 0x1000000;
  }

  v92 = v91 | (v83 << 32);
  v40 = v81 == 0;
  v93 = 0x10000;
  if (v40)
  {
    v94 = 0;
  }

  else
  {
    v94 = 0x10000;
  }

  v40 = v80 == 0;
  v95 = 256;
  if (v40)
  {
    v96 = 0;
  }

  else
  {
    v96 = 256;
  }

  v97 = v94 | v96 | v79;
  if (!v88)
  {
    v90 = 0;
  }

  v98 = v90 | (v89 << 32);
  if (!v87)
  {
    v93 = 0;
  }

  if (!v86)
  {
    v95 = 0;
  }

  if (!sub_1DD5563A8(v92 | v97, v98 | v93 | v95 | v85))
  {
    return 0;
  }

  v99 = v77[17];
  OUTLINED_FUNCTION_57_8();
  if (v100)
  {
    if (!v101)
    {
      return 0;
    }

    v104 = *v102 == *v103 && v100 == v101;
    if (!v104 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v101)
  {
    return 0;
  }

  v105 = v77[18];
  if ((sub_1DD63D0C8() & 1) == 0)
  {
    return 0;
  }

  v106 = v136[19];
  v107 = *(v15 + 48);
  v108 = v143;
  sub_1DD3C4EB4();
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v108, 1, v142) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v143 + v107, 1, v142) == 1)
    {
      sub_1DD390754(v143, &qword_1ECCDBAC8, &qword_1DD643E60);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v109 = v143;
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v109 + v107, 1, v142) == 1)
  {
    (*(v140 + 8))(v141, v142);
LABEL_69:
    v55 = &qword_1ECCDCE60;
    v56 = &qword_1DD64C250;
    v57 = v143;
    goto LABEL_30;
  }

  v111 = v139;
  v110 = v140;
  v112 = v143;
  v113 = v143 + v107;
  v114 = v142;
  (*(v140 + 32))(v139, v113, v142);
  OUTLINED_FUNCTION_6_23();
  sub_1DD462C58(v115, v116);
  v117 = v141;
  v118 = sub_1DD63FD98();
  v119 = *(v110 + 8);
  v119(v111, v114);
  v119(v117, v114);
  sub_1DD390754(v112, &qword_1ECCDBAC8, &qword_1DD643E60);
  if ((v118 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  if (*(a1 + v136[20]) != *(a2 + v136[20]))
  {
    return 0;
  }

  v121 = v136[21];
  OUTLINED_FUNCTION_57_8();
  if (v122)
  {
    if (!v123)
    {
      return 0;
    }

    v126 = *v124 == *v125 && v122 == v123;
    if (!v126 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v123)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1DD45F378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001DD66C980 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001DD66C9A0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001DD66C880 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000020 && 0x80000001DD66C9C0 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365686374616DLL && a2 == 0xE700000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E656D6D6F636572 && a2 == 0xEE006E6F69746164;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6974756C6F736572 && a2 == 0xEE00657079546E6FLL;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F72506563726F66 && a2 == 0xEB0000000074706DLL;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6F72506563726F66 && a2 == 0xEF6570795474706DLL;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000019 && 0x80000001DD66C9F0 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x726E456C61697274 && a2 == 0xEF746E656D6C6C6FLL;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x546E755273756C50 && a2 == 0xEF61746144656D69;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x64497972657571 && a2 == 0xE700000000000000;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6974756C6F736572 && a2 == 0xEC00000064496E6FLL;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000014 && 0x80000001DD66CA10 == a2;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0xD00000000000001BLL && 0x80000001DD66CA30 == a2)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1DD640CD8();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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

unint64_t sub_1DD45F900(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
      result = 0x7365686374616DLL;
      break;
    case 6:
      result = 0x6E656D6D6F636572;
      break;
    case 7:
    case 15:
      result = 0x6974756C6F736572;
      break;
    case 8:
    case 9:
      result = 0x6F72506563726F66;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0x726E456C61697274;
      break;
    case 12:
      result = 0x546E755273756C50;
      break;
    case 13:
      result = 0x4974736575716572;
      break;
    case 14:
      result = 0x64497972657571;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DD45FB28()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE58, &qword_1DD64C248);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DD462C04();
  sub_1DD640EF8();
  memcpy(v46, v2, 0x108uLL);
  memcpy(v45, v2, sizeof(v45));
  sub_1DD3C9478(v46, v44);
  sub_1DD4236C0();
  OUTLINED_FUNCTION_9_18();
  sub_1DD640C68();
  if (v1)
  {
    memcpy(v44, v45, sizeof(v44));
    sub_1DD3C9580(v44);
  }

  else
  {
    memcpy(v44, v45, sizeof(v44));
    sub_1DD3C9580(v44);
    LOBYTE(v41) = *(v2 + 264);
    sub_1DD45A79C();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C68();
    v14 = *(v2 + 272);
    v15 = *(v2 + 280);
    LOBYTE(v41) = 2;
    OUTLINED_FUNCTION_11_21();
    sub_1DD640C18();
    v16 = *(v2 + 288);
    LOBYTE(v41) = 3;
    OUTLINED_FUNCTION_9_18();
    sub_1DD640C28();
    v17 = *(v2 + 289);
    LOBYTE(v41) = 4;
    OUTLINED_FUNCTION_9_18();
    sub_1DD640C28();
    *&v41 = *(v2 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE50, &qword_1DD64C240);
    sub_1DD462DB8(&qword_1EE163928, &qword_1EE1640D0);
    OUTLINED_FUNCTION_11_21();
    sub_1DD640C68();
    v40 = type metadata accessor for ContactResolverRunTimeData(0);
    v18 = v40[10];
    LOBYTE(v41) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
    sub_1DD462E54(&unk_1EE1659C0);
    OUTLINED_FUNCTION_8_17();
    sub_1DD640C68();
    LOBYTE(v41) = *(v2 + v40[11]);
    sub_1DD45A844();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C68();
    v19 = *(v2 + v40[12]);
    LOBYTE(v41) = 8;
    OUTLINED_FUNCTION_9_18();
    sub_1DD640C28();
    LOBYTE(v41) = *(v2 + v40[13]);
    sub_1DD462F28();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C68();
    v20 = v40[14];
    LOBYTE(v41) = 10;
    OUTLINED_FUNCTION_8_17();
    sub_1DD640C08();
    v21 = (v2 + v40[15]);
    v22 = v21[1];
    v41 = *v21;
    v42 = v22;
    v43 = v21[2];
    sub_1DD45A748();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C08();
    v23 = (v2 + v40[16]);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    LOBYTE(v23) = v23[4];
    LOBYTE(v41) = v24;
    BYTE1(v41) = v25;
    BYTE2(v41) = v26;
    BYTE3(v41) = v27;
    BYTE4(v41) = v23;
    sub_1DD462F7C();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C68();
    v28 = (v2 + v40[17]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v41) = 13;
    OUTLINED_FUNCTION_11_21();
    sub_1DD640BC8();
    v31 = v40[18];
    LOBYTE(v41) = 14;
    sub_1DD63D0F8();
    OUTLINED_FUNCTION_6_23();
    sub_1DD462C58(v32, v33);
    OUTLINED_FUNCTION_8_17();
    sub_1DD640C68();
    v34 = v40[19];
    LOBYTE(v41) = 15;
    OUTLINED_FUNCTION_8_17();
    sub_1DD640C08();
    v35 = *(v2 + v40[20]);
    LOBYTE(v41) = 16;
    OUTLINED_FUNCTION_9_18();
    sub_1DD640C28();
    v36 = (v2 + v40[21]);
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v41) = 17;
    OUTLINED_FUNCTION_11_21();
    sub_1DD640BC8();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_86();
}

void sub_1DD460090()
{
  OUTLINED_FUNCTION_93();
  v86 = v0;
  v2 = v1;
  v72 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_3();
  v73 = v8;
  OUTLINED_FUNCTION_6_2();
  v9 = sub_1DD63D0F8();
  v10 = OUTLINED_FUNCTION_0(v9);
  v84 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v74 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  OUTLINED_FUNCTION_3(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_3();
  v79 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7_3();
  v80 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE48, &qword_1DD64C238);
  v27 = OUTLINED_FUNCTION_0(v26);
  v75 = v28;
  v76 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v70 - v32;
  v34 = type metadata accessor for ContactResolverRunTimeData(0);
  v35 = OUTLINED_FUNCTION_7(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2();
  v40 = v39 - v38;
  *v40 = 0;
  *(v40 + 8) = 0xE000000000000000;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0xE000000000000000;
  *(v40 + 40) = 0;
  *(v40 + 48) = 0xE000000000000000;
  *(v40 + 56) = 0;
  *(v40 + 64) = 0xE000000000000000;
  *(v40 + 72) = 0;
  *(v40 + 80) = 0xE000000000000000;
  *(v40 + 88) = 0;
  *(v40 + 96) = 0xE000000000000000;
  *(v40 + 104) = 0;
  *(v40 + 112) = 0xE000000000000000;
  *(v40 + 120) = 0;
  *(v40 + 128) = 0xE000000000000000;
  *(v40 + 136) = 0;
  *(v40 + 144) = 0xE000000000000000;
  *(v40 + 152) = 0;
  *(v40 + 160) = 0xE000000000000000;
  *(v40 + 216) = 0u;
  *(v40 + 200) = 0u;
  *(v40 + 184) = 0u;
  *(v40 + 168) = 0u;
  v41 = MEMORY[0x1E69E7CC0];
  *(v40 + 232) = 0;
  *(v40 + 240) = v41;
  *(v40 + 248) = 1;
  *(v40 + 256) = 0;
  v43 = *(v42 + 52);
  *(v40 + v43) = 5;
  v87 = *(v42 + 56);
  __swift_storeEnumTagSinglePayload(v40 + v87, 1, 1, v21);
  v81 = *(v34 + 72);
  sub_1DD63D0E8();
  v77 = v34;
  v82 = *(v34 + 76);
  v85 = v9;
  __swift_storeEnumTagSinglePayload(v40 + v82, 1, 1, v9);
  v44 = v2[3];
  v45 = v2[4];
  v83 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v44);
  sub_1DD462C04();
  v46 = v86;
  sub_1DD640ED8();
  if (v46)
  {
    OUTLINED_FUNCTION_4_25();
    __swift_destroy_boxed_opaque_existential_1(v83);
    memcpy(v96, v40, 0x108uLL);
    sub_1DD3C9580(v96);

    sub_1DD390754(v40 + v87, &qword_1ECCDC1C8, qword_1DD64ADD0);
    sub_1DD447638(v21, 1);

    (*(v84 + 8))(v40 + v81, v85);
    sub_1DD390754(v40 + v82, &qword_1ECCDBAC8, &qword_1DD643E60);
  }

  else
  {
    v78 = v43;
    v47 = v80;
    v86 = v21;
    v48 = v75;
    sub_1DD42366C();
    OUTLINED_FUNCTION_58_2();
    sub_1DD640B78();
    memcpy(v94, v96, sizeof(v94));
    memcpy(v95, v40, sizeof(v95));
    sub_1DD3C9580(v95);
    memcpy(v40, v94, 0x108uLL);
    sub_1DD45AA4C();
    OUTLINED_FUNCTION_30_10();
    sub_1DD640B78();
    *(v40 + 264) = v88;
    OUTLINED_FUNCTION_28_6(2);
    v71 = v33;
    *(v40 + 272) = sub_1DD640B28();
    *(v40 + 280) = v49;
    v70[2] = v49;
    OUTLINED_FUNCTION_28_6(3);
    OUTLINED_FUNCTION_14_20();
    *(v40 + 288) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_28_6(4);
    OUTLINED_FUNCTION_14_20();
    *(v40 + 289) = sub_1DD640B38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE50, &qword_1DD64C240);
    sub_1DD462DB8(&qword_1EE1602C8, &qword_1EE161758);
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    *(v40 + 296) = v88;
    LOBYTE(v88) = 6;
    sub_1DD462E54(qword_1EE162E48);
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    sub_1DD462CA0(v47, v40 + v77[10]);
    sub_1DD45ABD8();
    OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    *(v40 + v77[11]) = v88;
    OUTLINED_FUNCTION_28_6(8);
    OUTLINED_FUNCTION_14_20();
    *(v40 + v77[12]) = sub_1DD640B38() & 1;
    sub_1DD462D10();
    OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    *(v40 + v78) = v88;
    LOBYTE(v88) = 10;
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B18();
    sub_1DD3E6284();
    sub_1DD45A9F8();
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B18();
    v50 = (v40 + v77[15]);
    v51 = v89;
    v52 = v90;
    v53 = v91;
    v54 = v92;
    v55 = v93;
    v70[0] = v90;
    v70[1] = v88;
    *v50 = v88;
    v50[1] = v51;
    v50[2] = v52;
    v50[3] = v53;
    v79 = v54;
    v80 = v53;
    v50[4] = v54;
    v50[5] = v55;
    v78 = v55;
    sub_1DD462D64();
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    v56 = (v40 + v77[16]);
    v57 = BYTE1(v88);
    v58 = BYTE2(v88);
    v59 = BYTE3(v88);
    v60 = BYTE4(v88);
    *v56 = v88;
    v56[1] = v57;
    v56[2] = v58;
    v56[3] = v59;
    v56[4] = v60;
    LOBYTE(v88) = 13;
    OUTLINED_FUNCTION_14_20();
    v61 = sub_1DD640AD8();
    v86 = v62;
    v63 = (v40 + v77[17]);
    *v63 = v61;
    v63[1] = v62;
    LOBYTE(v88) = 14;
    OUTLINED_FUNCTION_6_23();
    sub_1DD462C58(v64, v65);
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    (*(v84 + 40))(v40 + v81, v74, v85);
    LOBYTE(v88) = 15;
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B18();
    sub_1DD3E6284();
    LOBYTE(v88) = 16;
    OUTLINED_FUNCTION_14_20();
    *(v40 + v77[20]) = sub_1DD640B38() & 1;
    LOBYTE(v88) = 17;
    OUTLINED_FUNCTION_14_20();
    v66 = sub_1DD640AD8();
    v68 = v67;
    v69 = (v40 + v77[21]);
    (*(v48 + 8))(v71, v76);
    *v69 = v66;
    v69[1] = v68;
    sub_1DD463124();
    __swift_destroy_boxed_opaque_existential_1(v83);
    sub_1DD462FD0(v40, type metadata accessor for ContactResolverRunTimeData);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD460B34()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD460B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD45F378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD460BB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD45F8F8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD460BD8(uint64_t a1)
{
  v2 = sub_1DD462C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD460C14(uint64_t a1)
{
  v2 = sub_1DD462C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD460C9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD460B34();
  *a2 = result;
  return result;
}

uint64_t sub_1DD460CCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD45DBC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD460DB4()
{
  OUTLINED_FUNCTION_18_7();
  static Contact.== infix(_:_:)();
  if (v3 & 1) != 0 && (matched = type metadata accessor for ContactMatchRuntimeData(0), v5 = OUTLINED_FUNCTION_50_9(matched), static ContactResolver.SignalSet.== infix(_:_:)(v5, v6)) && ((v9 = OUTLINED_FUNCTION_32_9(), v11) ? (v11 = v9 == v10) : (v11 = 0), v11 && (sub_1DD3C3E7C(*(v7 + 16), *(v8 + 16)) & 1) != 0 && (sub_1DD4747FC(*(v1 + *(v2 + 28)), *(v0 + *(v2 + 28))), (v12) && (OUTLINED_FUNCTION_56_5(), v11)))
  {
    OUTLINED_FUNCTION_42_6();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1DD460E48(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE80, &unk_1DD64C270);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28[-v11];
  v13 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DD463028();
  OUTLINED_FUNCTION_59_4();
  v29 = 0;
  type metadata accessor for Contact();
  OUTLINED_FUNCTION_19_14();
  sub_1DD462C58(v14, v15);
  OUTLINED_FUNCTION_56();
  sub_1DD640C68();
  if (!v2)
  {
    matched = type metadata accessor for ContactMatchRuntimeData(0);
    v17 = OUTLINED_FUNCTION_43_9(matched);
    type metadata accessor for ContactResolver.SignalSet(v17);
    OUTLINED_FUNCTION_18_16();
    sub_1DD462C58(v18, v19);
    OUTLINED_FUNCTION_56();
    sub_1DD640C68();
    v20 = OUTLINED_FUNCTION_48_9();
    v22 = *(v21 + 16);
    v29 = v23;
    v30 = v20;
    v31 = v22;
    v28[7] = 2;
    v24 = sub_1DD46317C();

    OUTLINED_FUNCTION_56();
    sub_1DD640C68();

    if (!v24)
    {
      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_10_4();
      sub_1DD640C68();
      v25 = *(v3 + *(v13 + 32));
      v29 = 4;
      OUTLINED_FUNCTION_56();
      sub_1DD640C38();
      v26 = *(v3 + *(v13 + 36));
      v29 = 5;
      OUTLINED_FUNCTION_10_4();
      sub_1DD640C28();
    }
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1DD4610C4()
{
  OUTLINED_FUNCTION_93();
  v45 = v0;
  v2 = v1;
  v42[0] = v3;
  v4 = type metadata accessor for ContactResolver.SignalSet(0);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = type metadata accessor for Contact();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE78, &qword_1DD64C268);
  v13 = OUTLINED_FUNCTION_0(v12);
  v42[1] = v14;
  v42[2] = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - v18;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v20 = OUTLINED_FUNCTION_7(matched);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v26 = v2[3];
  v27 = v2[4];
  v46 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v26);
  sub_1DD463028();
  v44 = v19;
  v28 = v45;
  sub_1DD640ED8();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    LOBYTE(v47) = 0;
    OUTLINED_FUNCTION_19_14();
    sub_1DD462C58(v29, v30);
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B78();
    sub_1DD463794();
    LOBYTE(v47) = 1;
    OUTLINED_FUNCTION_18_16();
    sub_1DD462C58(v31, v32);
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B78();
    v33 = matched;
    v34 = matched[5];
    OUTLINED_FUNCTION_21_11();
    sub_1DD463794();
    sub_1DD46307C();
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B78();
    v35 = OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_46_2(v36, v35);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B78();
    *(v25 + v33[7]) = v47;
    OUTLINED_FUNCTION_55_5(4);
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B48();
    *(v25 + v33[8]) = v37;
    OUTLINED_FUNCTION_55_5(5);
    OUTLINED_FUNCTION_36_8();
    v38 = sub_1DD640B38();
    v39 = OUTLINED_FUNCTION_39_6();
    v40(v39);
    *(v25 + v33[9]) = v38 & 1;
    OUTLINED_FUNCTION_17_17();
    sub_1DD463124();
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_7_21();
    sub_1DD462FD0(v25, v41);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD461554()
{
  OUTLINED_FUNCTION_18_7();
  v3 = *(v1 + 16);
  v4 = v0[2];
  v5 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v5 || (sub_1DD640CD8()) && (sub_1DD3C3778(v3, v4) & 1) != 0 && (matched = type metadata accessor for PrivatizedContactMatchRuntimeData(0), v7 = OUTLINED_FUNCTION_50_9(matched), sub_1DD55EFCC(v7, v8)) && ((v11 = OUTLINED_FUNCTION_32_9(), v5) ? (v13 = v11 == v12) : (v13 = 0), v13 && (sub_1DD3C37FC(*(v9 + 16), *(v10 + 16)) & 1) != 0 && (sub_1DD4747FC(*(v1 + *(v3 + 28)), *(v0 + *(v3 + 28))), (v14) && (OUTLINED_FUNCTION_56_5(), v5)))
  {
    OUTLINED_FUNCTION_42_6();
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1DD461610()
{
  OUTLINED_FUNCTION_18_7();
  v3 = v1 == 0x65756C6176 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_27() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x736C616E676973 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_27() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0xD000000000000011 && 0x80000001DD66CA50 == v0;
      if (v6 || (OUTLINED_FUNCTION_27() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0x7365727574616566 && v0 == 0xE800000000000000;
        if (v7 || (OUTLINED_FUNCTION_27() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v8 = v1 == 0x65726F6373 && v0 == 0xE500000000000000;
          if (v8 || (OUTLINED_FUNCTION_27() & 1) != 0)
          {

            return 4;
          }

          else if (v1 == OUTLINED_FUNCTION_45_7() && v0 == v9)
          {

            return 5;
          }

          else
          {
            v11 = OUTLINED_FUNCTION_27();

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

uint64_t sub_1DD461798(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCEC8, &qword_1DD64C550);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DD4636EC();
  OUTLINED_FUNCTION_59_4();
  v26 = *v3;
  v27 = *(v3 + 1);
  HIBYTE(v25) = 0;
  sub_1DD463840();
  OUTLINED_FUNCTION_10_4();
  sub_1DD640C68();
  if (!v2)
  {
    matched = type metadata accessor for PrivatizedContactMatchRuntimeData(0);
    v15 = OUTLINED_FUNCTION_43_9(matched);
    type metadata accessor for PrivatizedSignalSet(v15);
    OUTLINED_FUNCTION_16_17();
    sub_1DD462C58(v16, v17);
    OUTLINED_FUNCTION_56();
    sub_1DD640C68();
    v18 = OUTLINED_FUNCTION_48_9();
    v20 = *(v19 + 16);
    LOBYTE(v26) = v21;
    *&v27 = v18;
    *(&v27 + 1) = v20;
    HIBYTE(v25) = 2;
    sub_1DD463894();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C68();
    OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C68();
    v22 = *(v3 + *(v13 + 32));
    LOBYTE(v26) = 4;
    OUTLINED_FUNCTION_56();
    sub_1DD640C38();
    v23 = *(v3 + *(v13 + 36));
    LOBYTE(v26) = 5;
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C28();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_1DD4619E0()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = type metadata accessor for PrivatizedSignalSet(0);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCEA0, &qword_1DD64C548);
  OUTLINED_FUNCTION_0(v27);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  matched = type metadata accessor for PrivatizedContactMatchRuntimeData(0);
  v10 = OUTLINED_FUNCTION_7(matched);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = v2[4];
  v29 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DD4636EC();
  sub_1DD640ED8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1DD463740();
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B78();
    *v15 = v30;
    *(v15 + 8) = v31;
    LOBYTE(v30) = 1;
    OUTLINED_FUNCTION_16_17();
    sub_1DD462C58(v17, v18);
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B78();
    v19 = matched[5];
    sub_1DD463794();
    sub_1DD4637EC();
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B78();
    v20 = OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_46_2(v21, v20);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B78();
    *(v15 + matched[7]) = v30;
    OUTLINED_FUNCTION_55_5(4);
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B48();
    *(v15 + matched[8]) = v22;
    OUTLINED_FUNCTION_55_5(5);
    OUTLINED_FUNCTION_37_11();
    v23 = sub_1DD640B38();
    v24 = OUTLINED_FUNCTION_13_18();
    v25(v24);
    *(v15 + matched[9]) = v23 & 1;
    sub_1DD463124();
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_20_12();
    sub_1DD462FD0(v15, v26);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD461E0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD460E40();
  *a1 = result;
  return result;
}

uint64_t sub_1DD461E34(uint64_t a1)
{
  v2 = sub_1DD463028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD461E70(uint64_t a1)
{
  v2 = sub_1DD463028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD461EE0(uint64_t a1)
{
  v2 = sub_1DD4636EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD461F1C(uint64_t a1)
{
  v2 = sub_1DD4636EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

SiriInference::ForcePromptType_optional __swiftcall ForcePromptType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ForcePromptType.rawValue.getter()
{
  result = 0x6D6F646E6172;
  switch(*v0)
  {
    case 1:
      result = 0x53554C506D6F7266;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x6167654D6D6F7266;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD4620CC@<X0>(unint64_t *a1@<X8>)
{
  result = ForcePromptType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD4621B0()
{
  v0 = type metadata accessor for Contact();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE70, &qword_1DD64C260);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v30 - v17;
  v20 = *(v19 + 56);
  sub_1DD3C4EB4();
  sub_1DD3C4EB4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD3C4EB4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v31;
        sub_1DD463794();
        static Contact.== infix(_:_:)();
        v23 = v25;
        sub_1DD462FD0(v24, type metadata accessor for Contact);
        v26 = v11;
        goto LABEL_15;
      }

      v21 = v11;
      goto LABEL_12;
    case 2u:
      sub_1DD3C4EB4();
      v22 = *v8;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v23 = sub_1DD3C3CE8(v22, *&v18[v20]);

        goto LABEL_16;
      }

      goto LABEL_13;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_13;
      }

      sub_1DD390754(v18, &qword_1ECCDBEE0, &unk_1DD645510);
      v23 = 1;
      return v23 & 1;
    default:
      sub_1DD3C4EB4();
      if (swift_getEnumCaseMultiPayload())
      {
        v21 = v14;
LABEL_12:
        sub_1DD462FD0(v21, type metadata accessor for Contact);
LABEL_13:
        sub_1DD390754(v18, &qword_1ECCDCE70, &qword_1DD64C260);
        v23 = 0;
      }

      else
      {
        v27 = v30;
        sub_1DD463794();
        static Contact.== infix(_:_:)();
        v23 = v28;
        sub_1DD462FD0(v27, type metadata accessor for Contact);
        v26 = v14;
LABEL_15:
        sub_1DD462FD0(v26, type metadata accessor for Contact);
LABEL_16:
        sub_1DD390754(v18, &qword_1ECCDBEE0, &unk_1DD645510);
      }

      return v23 & 1;
  }
}

unint64_t sub_1DD4625DC()
{
  result = qword_1ECCDCE38;
  if (!qword_1ECCDCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactResolutionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD462764()
{
  sub_1DD4629B8(319, &qword_1EE163930, type metadata accessor for ContactMatchRuntimeData, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1DD4629B8(319, &unk_1EE166040, type metadata accessor for Contact, type metadata accessor for Recommendation);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1DD462A1C();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1DD3EBBE4(319, &qword_1EE165590);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1DD3EBBE4(319, &qword_1EE163958);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            v11 = sub_1DD63D0F8();
            if (v12 > 0x3F)
            {
              return v11;
            }

            sub_1DD4629B8(319, &qword_1EE165CC0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
            if (v13 > 0x3F)
            {
              return v11;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1DD4629B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DD462A1C()
{
  if (!qword_1EE166038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBEE0, &unk_1DD645510);
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE166038);
    }
  }
}

uint64_t sub_1DD462AA8()
{
  result = type metadata accessor for Contact();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContactResolver.SignalSet(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DD462B5C()
{
  result = qword_1ECCDCE40;
  if (!qword_1ECCDCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE40);
  }

  return result;
}

unint64_t sub_1DD462BB0()
{
  result = qword_1EE1651E0;
  if (!qword_1EE1651E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1651E0);
  }

  return result;
}

unint64_t sub_1DD462C04()
{
  result = qword_1EE163E18[0];
  if (!qword_1EE163E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE163E18);
  }

  return result;
}

uint64_t sub_1DD462C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD462CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD462D10()
{
  result = qword_1EE162960;
  if (!qword_1EE162960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162960);
  }

  return result;
}

unint64_t sub_1DD462D64()
{
  result = qword_1EE162958;
  if (!qword_1EE162958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162958);
  }

  return result;
}

uint64_t sub_1DD462DB8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCE50, &qword_1DD64C240);
    sub_1DD462C58(a2, type metadata accessor for ContactMatchRuntimeData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD462E54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBEE0, &unk_1DD645510);
    sub_1DD462C58(&qword_1EE163B38, type metadata accessor for Contact);
    sub_1DD462C58(&qword_1EE163B40, type metadata accessor for Contact);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD462F28()
{
  result = qword_1EE165670[0];
  if (!qword_1EE165670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE165670);
  }

  return result;
}

unint64_t sub_1DD462F7C()
{
  result = qword_1EE165648;
  if (!qword_1EE165648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165648);
  }

  return result;
}

uint64_t sub_1DD462FD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DD463028()
{
  result = qword_1EE1640E8[0];
  if (!qword_1EE1640E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1640E8);
  }

  return result;
}

unint64_t sub_1DD46307C()
{
  result = qword_1EE162BF0;
  if (!qword_1EE162BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162BF0);
  }

  return result;
}

unint64_t sub_1DD4630D0()
{
  result = qword_1EE161750;
  if (!qword_1EE161750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161750);
  }

  return result;
}

uint64_t sub_1DD463124()
{
  OUTLINED_FUNCTION_18_7();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v0;
}

unint64_t sub_1DD46317C()
{
  result = qword_1EE165820;
  if (!qword_1EE165820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165820);
  }

  return result;
}

unint64_t sub_1DD4631D0()
{
  result = qword_1EE164090;
  if (!qword_1EE164090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164090);
  }

  return result;
}

unint64_t sub_1DD463224()
{
  result = qword_1EE165668;
  if (!qword_1EE165668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165668);
  }

  return result;
}

uint64_t sub_1DD4632C0()
{
  result = type metadata accessor for PrivatizedSignalSet(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolverRunTimeData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactResolverRunTimeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4634E0()
{
  result = qword_1ECCDCE90;
  if (!qword_1ECCDCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE90);
  }

  return result;
}

unint64_t sub_1DD463538()
{
  result = qword_1ECCDCE98;
  if (!qword_1ECCDCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE98);
  }

  return result;
}

unint64_t sub_1DD463590()
{
  result = qword_1EE1640D8;
  if (!qword_1EE1640D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1640D8);
  }

  return result;
}

unint64_t sub_1DD4635E8()
{
  result = qword_1EE1640E0;
  if (!qword_1EE1640E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1640E0);
  }

  return result;
}

unint64_t sub_1DD463640()
{
  result = qword_1EE163E08;
  if (!qword_1EE163E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163E08);
  }

  return result;
}

unint64_t sub_1DD463698()
{
  result = qword_1EE163E10;
  if (!qword_1EE163E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163E10);
  }

  return result;
}

unint64_t sub_1DD4636EC()
{
  result = qword_1ECCDCEA8;
  if (!qword_1ECCDCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEA8);
  }

  return result;
}

unint64_t sub_1DD463740()
{
  result = qword_1ECCDCEB0;
  if (!qword_1ECCDCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEB0);
  }

  return result;
}

uint64_t sub_1DD463794()
{
  OUTLINED_FUNCTION_18_7();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v0;
}

unint64_t sub_1DD4637EC()
{
  result = qword_1ECCDCEC0;
  if (!qword_1ECCDCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEC0);
  }

  return result;
}

unint64_t sub_1DD463840()
{
  result = qword_1ECCDCED0;
  if (!qword_1ECCDCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCED0);
  }

  return result;
}

unint64_t sub_1DD463894()
{
  result = qword_1ECCDCEE0;
  if (!qword_1ECCDCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEE0);
  }

  return result;
}

uint64_t _s7MeasureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DD463970(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD463A50()
{
  result = qword_1ECCDCEE8;
  if (!qword_1ECCDCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEE8);
  }

  return result;
}

unint64_t sub_1DD463AA8()
{
  result = qword_1ECCDCEF0;
  if (!qword_1ECCDCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEF0);
  }

  return result;
}

unint64_t sub_1DD463B00()
{
  result = qword_1ECCDCEF8;
  if (!qword_1ECCDCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEF8);
  }

  return result;
}

double OUTLINED_FUNCTION_32_9()
{
  v3 = *(v2 + 24);
  v4 = *(v1 + v3);
  result = *(v1 + v3 + 8);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = *(v6 + 1);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_7()
{
  v2 = *(v1 + 8);
  result = *(v0 + 24);
  v4 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_6()
{
  v2 = *(v0 + 8);
  result = *(v1 - 128);
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_9(uint64_t a1)
{
  v2 = *(a1 + 20);
  *(v1 - 88) = 1;
  return 0;
}

unint64_t OUTLINED_FUNCTION_46_2@<X0>(char a1@<W8>, double a2@<D0>)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = v2;
  *(v4 - 65) = 3;

  return sub_1DD4630D0();
}

unint64_t OUTLINED_FUNCTION_47_7()
{
  *(v2 - 88) = *(v0 + *(v1 + 28));
  *(v2 - 89) = 3;

  return sub_1DD4631D0();
}

double OUTLINED_FUNCTION_54_6()
{
  v2 = *(v1 - 104);
  result = *(v1 - 96);
  v4 = *(v1 - 88);
  v5 = *(v0 + 24);
  return result;
}

double OUTLINED_FUNCTION_56_5()
{
  v3 = *(v2 + 32);
  result = *(v1 + v3);
  v5 = *(v0 + v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_4()
{

  return sub_1DD640EF8();
}

uint64_t sub_1DD463DAC(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ContactMatchRuntimeData(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC6C4(v7);
    v7 = v8;
  }

  v9 = *(v7 + 16);
  v11[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11[1] = v9;
  result = sub_1DD465B44(v11, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1DD463E6C(char a1)
{
  v5 = sub_1DD640F28();
  MEMORY[0x1E12B2260](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000024;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (a1)
  {
    v3 = "missingDataFromTaskId";
  }

  else
  {
    v3 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
  }

  MEMORY[0x1E12B2260](v2, v3 | 0x8000000000000000);

  return v5;
}

uint64_t sub_1DD463F00()
{
  v1 = sub_1DD640F28();
  MEMORY[0x1E12B2260](46, 0xE100000000000000);
  MEMORY[0x1E12B2260](0xD000000000000018, 0x80000001DD668AF0);
  return v1;
}

uint64_t sub_1DD463F6C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _OWORD *a7@<X8>)
{
  v188 = a5;
  v189 = a6;
  v194 = a4;
  v187 = a3;
  v192 = a2;
  v190 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v197 = &v186[-v11];
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v12 = *(matched - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v202 = &v186[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_0();
  v193 = v16;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_0();
  v203 = v18;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_0();
  v204 = v20;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_0();
  v195 = v22;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v186[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v207 = &v186[-v27];
  v191 = a1;
  v28 = *(a1 + 37);
  v29 = v28[2];
  v30 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69964B0];
  v32 = &qword_1DD643000;
  v206 = v12;
  v210 = v28;
  v198 = v25;
  v201 = v29;
  if (!v29)
  {
    v32 = 0;
    goto LABEL_32;
  }

  v33 = type metadata accessor for Contact();
  OUTLINED_FUNCTION_11_22(v33);
  v199 = v28 + v34;
  *&v200 = v35;
  OUTLINED_FUNCTION_6_24(*v31);
  v196 = xmmword_1DD643F90;
  v214 = xmmword_1DD642F70;
  do
  {
    if (v36 >= v28[2])
    {
      goto LABEL_145;
    }

    v209 = v30;
    v37 = OUTLINED_FUNCTION_19_15();
    v38 = v207;
    sub_1DD3CD140(v37, v207);
    v39 = *v38;
    v40 = v38[1];
    v41 = *(v38 + v200);
    v42 = *(v41 + 16);
    if (v42)
    {
      v221 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_21_12();
      v43 = 0;
      v44 = (v41 + 32);
      v32 = v221;
      v215 = v42 - 1;
      v216 = v39;
      *&v213 = v41;
      while (1)
      {
        v45 = *(v41 + 16);
        if (v43 >= v45)
        {
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        memcpy(v220, v44, 0x4AuLL);
        v217 = v220[7];
        v218 = v220[8];
        OUTLINED_FUNCTION_3_26();

        sub_1DD3C6A40(v220, v219);
        v7 = sub_1DD3B7F10();

        v38 = &v217;
        if (OUTLINED_FUNCTION_13_19())
        {
          break;
        }

        v38 = sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

        v49 = sub_1DD40B8E0();
        sub_1DD415480(v49);
        if (v50)
        {
          OUTLINED_FUNCTION_20_13();
          goto LABEL_11;
        }

        sub_1DD3C6A9C(v220);

        v7 = 0xE000000000000000;
LABEL_12:
        v221 = v32;
        v52 = *(v32 + 16);
        v51 = *(v32 + 24);
        if (v52 >= v51 >> 1)
        {
          OUTLINED_FUNCTION_7_22(v51);
          sub_1DD42B7A0();
          v32 = v221;
        }

        *(v32 + 16) = v52 + 1;
        OUTLINED_FUNCTION_17_18();
        OUTLINED_FUNCTION_5_29(v53);
        if (v54)
        {

          v28 = v210;
          v25 = v198;
          goto LABEL_19;
        }

        v44 += 80;
        v43 = (v43 + 1);
        v41 = v213;
      }

      sub_1DD63FDA8();
      v46 = OUTLINED_FUNCTION_4_26();
      v48 = v47(v46);

      sub_1DD63FDD8();
      OUTLINED_FUNCTION_20_13();

LABEL_11:
      sub_1DD3C6A9C(v220);

      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE60, &qword_1DD644198);
    v32 = swift_allocObject();
    *(v32 + 16) = v196;
    *(v32 + 32) = v39;
    *(v32 + 40) = v40;
    OUTLINED_FUNCTION_1_35(v32);

LABEL_19:
    OUTLINED_FUNCTION_0_46();
    sub_1DD467AE8(v207, v55);
    v56 = *(v32 + 16);
    v30 = v209;
    v57 = v209[2];
    if (__OFADD__(v57, v56))
    {
      goto LABEL_146;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v57 + v56 > (v30[3] >> 1))
    {
      OUTLINED_FUNCTION_10_22();
      sub_1DD3BF370();
      v30 = v58;
    }

    v12 = v206;
    if (*(v32 + 16))
    {
      v59 = v30[2];
      v60 = v30[3];
      OUTLINED_FUNCTION_9_19();
      if (v62 != v63)
      {
        goto LABEL_154;
      }

      OUTLINED_FUNCTION_8_18(&v30[10 * v61]);
      swift_arrayInitWithCopy();

      v64 = v205;
      if (v56)
      {
        v65 = v30[2];
        v63 = __OFADD__(v65, v56);
        v66 = v65 + v56;
        if (v63)
        {
          goto LABEL_157;
        }

        v30[2] = v66;
      }
    }

    else
    {

      v64 = v205;
      if (v56)
      {
        goto LABEL_147;
      }
    }

    v36 = v64 + 1;
  }

  while (v36 != v201);
  v32 = v28[2];
LABEL_32:
  v67 = 0;
  v68 = MEMORY[0x1E69E7CC0];
  while (v32 != v67)
  {
    if (v67 >= v28[2])
    {
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
      swift_once();
LABEL_119:
      v143 = sub_1DD63F9F8();
      v144 = __swift_project_value_buffer(v143, qword_1EE16F068);

      v216 = v144;
      v145 = sub_1DD63F9D8();
      v146 = sub_1DD640368();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v220[0] = v148;
        *v147 = 136315906;
        v149 = MEMORY[0x1E12B2430](v30, &type metadata for StitchablePerson);
        sub_1DD39565C(v149, v150, v220);
        OUTLINED_FUNCTION_22_11();
        *(v147 + 4) = v30;
        *(v147 + 12) = 2080;
        v151 = MEMORY[0x1E12B2430](v28, &type metadata for StitchablePerson);
        sub_1DD39565C(v151, v152, v220);
        OUTLINED_FUNCTION_22_11();
        *(v147 + 14) = v30;
        *(v147 + 22) = 2080;
        v153 = MEMORY[0x1E12B2430](v210, &type metadata for StitchablePerson);
        sub_1DD39565C(v153, v154, v220);
        OUTLINED_FUNCTION_22_11();
        *(v147 + 24) = v30;
        *(v147 + 32) = 2080;
        v155 = MEMORY[0x1E12B2430](v32, &type metadata for StitchablePerson);
        v157 = sub_1DD39565C(v155, v156, v220);

        *(v147 + 34) = v157;
        _os_log_impl(&dword_1DD38D000, v145, v146, "allPersons=%s\nnlxPersons=%s\nstdPersons=%s\ncorrectPersons=%s", v147, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v148, -1, -1);
        MEMORY[0x1E12B3DA0](v147, -1, -1);
      }

      if ((v194 & 1) != 0 && !*(v32 + 16))
      {

        v169 = sub_1DD63F9D8();
        v170 = sub_1DD640378();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          *v171 = 0;
          _os_log_impl(&dword_1DD38D000, v169, v170, "task is successful but has no StitchablePersons.", v171, 2u);
          MEMORY[0x1E12B3DA0](v171, -1, -1);
        }

        sub_1DD465568(0xD00000000000008CLL, 0x80000001DD66CA70, 0xD00000000000006FLL, 0x80000001DD66CB00, 92);
        sub_1DD458B24(v192);
        result = OUTLINED_FUNCTION_2_25();
        v173 = v190;
        *v190 = xmmword_1DD64C660;
        v173[1] = 0u;
        v173[2] = 0u;
        v173[3] = 0u;
        v173[4] = 0u;
        *(v173 + 10) = 0;
        return result;
      }

      v158 = v191;
      memcpy(v220, v191, 0x108uLL);
      memcpy(v219, v191, sizeof(v219));
      sub_1DD3C9478(v220, &v217);
      v7 = sub_1DD422F70(v219);
      v159 = v158[248];
      v160 = type metadata accessor for ContactResolverRunTimeData(0);
      v161 = &v158[*(v160 + 40)];
      v162 = sub_1DD43D87C();
      LOBYTE(v40) = v162;
      v163 = v158[*(v160 + 48)];
      v38 = v209;
      v43 = v207;
      LODWORD(v215) = v159;
      LODWORD(v214) = v163;
      if ((v194 & 1) == 0)
      {
        v166 = v162;
        v167 = v7;
        LODWORD(v213) = 0;
        LODWORD(v216) = 0;
        v212 = 0;
        v211 = 0;
        LODWORD(matched) = 0;
        v113 = -1;
        v168 = -1;
        goto LABEL_140;
      }

      v164 = sub_1DD465730(v32);
      v165 = sub_1DD465730(v32);
      LODWORD(v216) = v165;
      LODWORD(v45) = sub_1DD465730(v32);
      LODWORD(v213) = v164;
      v212 = v45;
      if (v165)
      {
        v211 = v45 ^ 1;
        if ((v45 ^ 1))
        {
          goto LABEL_138;
        }

        goto LABEL_132;
      }

LABEL_130:
      if ((v45 & 1) == 0)
      {
        goto LABEL_137;
      }

      v211 = 0;
LABEL_132:
      LODWORD(matched) = v216 ^ 1;
      goto LABEL_139;
    }

    v7 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v69 = v28 + v7;
    v70 = *(v12 + 72);
    sub_1DD3CD140(&v69[v70 * v67], v25);
    OUTLINED_FUNCTION_16_18();
    if (v54)
    {
      sub_1DD3CD200(v25, v195);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v220[0] = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_14_21();
        v68 = v220[0];
      }

      v73 = *(v68 + 16);
      if (v73 >= *(v68 + 24) >> 1)
      {
        OUTLINED_FUNCTION_15_18();
        v68 = v220[0];
      }

      ++v67;
      *(v68 + 16) = v73 + 1;
      sub_1DD3CD200(v195, v68 + v7 + v73 * v70);
      v12 = v206;
      v28 = v210;
      v25 = v198;
    }

    else
    {
      OUTLINED_FUNCTION_0_46();
      sub_1DD467AE8(v25, v71);
      ++v67;
      v28 = v210;
    }
  }

  v220[0] = v68;

  sub_1DD463DAC(v220, sub_1DD466978, sub_1DD465E9C);
  v195 = 0;

  v74 = v220[0];
  v75 = *(v220[0] + 16);
  v209 = v30;
  v76 = v206;
  v201 = v75;
  if (!v75)
  {

    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_73;
  }

  v77 = type metadata accessor for Contact();
  OUTLINED_FUNCTION_11_22(v77);
  v199 = (v74 + v78);
  *&v200 = v79;
  OUTLINED_FUNCTION_6_24(*MEMORY[0x1E69964B0]);
  v196 = xmmword_1DD643F90;
  v214 = xmmword_1DD642F70;
  v28 = MEMORY[0x1E69E7CC0];
  v198 = v74;
  while (2)
  {
    if (v80 >= *(v74 + 16))
    {
      goto LABEL_148;
    }

    v81 = OUTLINED_FUNCTION_19_15();
    v82 = v204;
    sub_1DD3CD140(v81, v204);
    v83 = *v82;
    v84 = v82[1];
    v40 = *(v82 + v200);
    v85 = *(v40 + 16);
    if (v85)
    {
      v207 = v28;
      v221 = MEMORY[0x1E69E7CC0];

      v38 = &v221;
      sub_1DD42B7A0();
      v43 = 0;
      v86 = (v40 + 32);
      v32 = v221;
      v215 = v85 - 1;
      v216 = v83;
      *&v213 = v40;
      while (1)
      {
        v45 = *(v40 + 16);
        if (v43 >= v45)
        {
          goto LABEL_129;
        }

        memcpy(v220, v86, 0x4AuLL);
        v217 = v220[7];
        v218 = v220[8];
        OUTLINED_FUNCTION_3_26();

        sub_1DD3C6A40(v220, v219);
        v7 = sub_1DD3B7F10();

        v38 = &v217;
        if (OUTLINED_FUNCTION_13_19())
        {
          break;
        }

        v38 = sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

        v90 = sub_1DD40B8E0();
        sub_1DD415480(v90);
        if (v91)
        {
          OUTLINED_FUNCTION_20_13();
          goto LABEL_52;
        }

        sub_1DD3C6A9C(v220);

        v7 = 0xE000000000000000;
LABEL_53:
        v221 = v32;
        v93 = *(v32 + 16);
        v92 = *(v32 + 24);
        if (v93 >= v92 >> 1)
        {
          OUTLINED_FUNCTION_7_22(v92);
          sub_1DD42B7A0();
          v32 = v221;
        }

        *(v32 + 16) = v93 + 1;
        OUTLINED_FUNCTION_17_18();
        OUTLINED_FUNCTION_5_29(v94);
        if (v54)
        {

          v28 = v207;
          goto LABEL_60;
        }

        v86 += 80;
        v43 = (v43 + 1);
        v40 = v213;
      }

      sub_1DD63FDA8();
      v87 = OUTLINED_FUNCTION_4_26();
      v89 = v88(v87);

      sub_1DD63FDD8();
      OUTLINED_FUNCTION_20_13();

LABEL_52:
      sub_1DD3C6A9C(v220);

      goto LABEL_53;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE60, &qword_1DD644198);
    v32 = swift_allocObject();
    *(v32 + 16) = v196;
    *(v32 + 32) = v83;
    *(v32 + 40) = v84;
    OUTLINED_FUNCTION_1_35(v32);

LABEL_60:
    OUTLINED_FUNCTION_0_46();
    sub_1DD467AE8(v204, v95);
    v96 = *(v32 + 16);
    v97 = v28[2];
    v30 = v209;
    if (__OFADD__(v97, v96))
    {
      goto LABEL_149;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v97 + v96 > (v28[3] >> 1))
    {
      OUTLINED_FUNCTION_10_22();
      sub_1DD3BF370();
      v28 = v98;
    }

    v76 = v206;
    if (*(v32 + 16))
    {
      v99 = v28[2];
      v100 = v28[3];
      OUTLINED_FUNCTION_9_19();
      if (v62 != v63)
      {
        goto LABEL_155;
      }

      OUTLINED_FUNCTION_8_18(&v28[10 * v101]);
      swift_arrayInitWithCopy();

      v102 = v205;
      if (v96)
      {
        v103 = v28[2];
        v63 = __OFADD__(v103, v96);
        v104 = v103 + v96;
        if (v63)
        {
          goto LABEL_158;
        }

        v28[2] = v104;
      }
    }

    else
    {

      v102 = v205;
      if (v96)
      {
        goto LABEL_150;
      }
    }

    v80 = v102 + 1;
    v74 = v198;
    if (v80 != v201)
    {
      continue;
    }

    break;
  }

LABEL_73:
  v32 = 0;
  v105 = v210[2];
  v106 = MEMORY[0x1E69E7CC0];
  v207 = v28;
  while (v105 != v32)
  {
    if (v32 >= v210[2])
    {
      goto LABEL_144;
    }

    v107 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v108 = *(v76 + 72);
    v109 = v203;
    sub_1DD3CD140(v210 + v107 + v108 * v32, v203);
    OUTLINED_FUNCTION_16_18();
    if (v54)
    {
      sub_1DD3CD200(v109, v193);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v220[0] = v106;
      if ((v111 & 1) == 0)
      {
        OUTLINED_FUNCTION_14_21();
        v106 = v220[0];
      }

      v112 = *(v106 + 16);
      if (v112 >= *(v106 + 24) >> 1)
      {
        OUTLINED_FUNCTION_15_18();
        v106 = v220[0];
      }

      ++v32;
      *(v106 + 16) = v112 + 1;
      sub_1DD3CD200(v193, v106 + v107 + v112 * v108);
      v76 = v206;
      v28 = v207;
    }

    else
    {
      OUTLINED_FUNCTION_0_46();
      sub_1DD467AE8(v109, v110);
      ++v32;
      v28 = v207;
    }
  }

  v220[0] = v106;

  v113 = v195;
  sub_1DD463DAC(v220, sub_1DD4660C8, sub_1DD465C84);
  if (v113)
  {
    goto LABEL_163;
  }

  v114 = v220[0];
  v205 = *(v220[0] + 16);
  if (!v205)
  {

    v210 = MEMORY[0x1E69E7CC0];
    v141 = v197;
LABEL_115:
    sub_1DD4572EC(v192, v141);
    v142 = type metadata accessor for StitchableInteraction();
    if (__swift_getEnumTagSinglePayload(v141, 1, v142) == 1)
    {
      sub_1DD458B24(v141);
      v32 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v32 = *(v141 + *(v142 + 36));

      sub_1DD467AE8(v141, type metadata accessor for StitchableInteraction);
    }

    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_160;
    }

    goto LABEL_119;
  }

  v7 = 0;
  v115 = *(type metadata accessor for Contact() + 80);
  v203 = v114 + ((*(v206 + 80) + 32) & ~*(v206 + 80));
  v204 = v115;
  OUTLINED_FUNCTION_6_24(*MEMORY[0x1E69964B0]);
  v200 = xmmword_1DD643F90;
  v213 = xmmword_1DD642F70;
  v210 = MEMORY[0x1E69E7CC0];
  v201 = v114;
  while (1)
  {
    if (v7 >= *(v114 + 16))
    {
      goto LABEL_151;
    }

    v38 = v202;
    sub_1DD3CD140(v203 + *(v206 + 72) * v7, v202);
    v116 = *v38;
    v40 = v38[1];
    v117 = *(v204 + v38);
    v118 = *(v117 + 16);
    if (v118)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE60, &qword_1DD644198);
    v32 = swift_allocObject();
    *(v32 + 16) = v200;
    *(v32 + 32) = v116;
    *(v32 + 40) = v40;
    OUTLINED_FUNCTION_1_35(v32);

LABEL_102:
    OUTLINED_FUNCTION_0_46();
    sub_1DD467AE8(v202, v132);
    v133 = *(v32 + 16);
    v30 = v209;
    v134 = v210[2];
    if (__OFADD__(v134, v133))
    {
      goto LABEL_152;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v134 + v133 > (v210[3] >> 1))
    {
      OUTLINED_FUNCTION_10_22();
      sub_1DD3BF370();
      v210 = v135;
    }

    if (*(v32 + 16))
    {
      v136 = v210[2];
      v137 = v210[3];
      OUTLINED_FUNCTION_9_19();
      if (v62 != v63)
      {
        goto LABEL_156;
      }

      OUTLINED_FUNCTION_8_18(&v210[10 * v138]);
      swift_arrayInitWithCopy();

      if (v133)
      {
        v139 = v210[2];
        v63 = __OFADD__(v139, v133);
        v140 = v139 + v133;
        if (v63)
        {
          goto LABEL_159;
        }

        v210[2] = v140;
      }
    }

    else
    {

      if (v133)
      {
        goto LABEL_153;
      }
    }

    ++v7;
    v141 = v197;
    if (v7 == v205)
    {

      goto LABEL_115;
    }
  }

  matched = v7;
  v221 = MEMORY[0x1E69E7CC0];
  v216 = v117;

  OUTLINED_FUNCTION_21_12();
  v119 = v216;
  v43 = 0;
  v120 = (v216 + 32);
  v32 = v221;
  *&v214 = v118 - 1;
  v215 = v116;
  while (2)
  {
    if (v43 < *(v119 + 16))
    {
      memcpy(v220, v120, 0x4AuLL);
      v217 = v220[7];
      v218 = v220[8];
      OUTLINED_FUNCTION_3_26();

      sub_1DD3C6A40(v220, v219);
      sub_1DD3B7F10();

      v38 = &v217;
      if (OUTLINED_FUNCTION_13_19())
      {
        sub_1DD63FDA8();
        v121 = OUTLINED_FUNCTION_4_26();
        v123 = v122(v121);

        v7 = sub_1DD63FDD8();
        v125 = v124;

        goto LABEL_94;
      }

      v38 = sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

      v126 = sub_1DD40B8E0();
      v127 = sub_1DD415480(v126);
      if (v128)
      {
        v7 = v127;
        v125 = v128;
LABEL_94:
        sub_1DD3C6A9C(v220);
      }

      else
      {
        sub_1DD3C6A9C(v220);

        v7 = 0;
        v125 = 0xE000000000000000;
      }

      v221 = v32;
      v130 = *(v32 + 16);
      v129 = *(v32 + 24);
      if (v130 >= v129 >> 1)
      {
        OUTLINED_FUNCTION_7_22(v129);
        sub_1DD42B7A0();
        v32 = v221;
      }

      *(v32 + 16) = v130 + 1;
      v131 = v32 + 80 * v130;
      *(v131 + 32) = v215;
      *(v131 + 40) = v40;
      *(v131 + 48) = v7;
      *(v131 + 56) = v125;
      *(v131 + 64) = v213;
      *(v131 + 80) = 0u;
      *(v131 + 96) = 0u;
      if (v214 == v43)
      {

        v28 = v207;
        v7 = matched;
        v114 = v201;
        goto LABEL_102;
      }

      v120 += 80;
      v43 = (v43 + 1);
      v119 = v216;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_137:
  v211 = 0;
LABEL_138:
  LODWORD(matched) = 0;
LABEL_139:
  v166 = v40;
  v167 = v7;
  sub_1DD46582C(v32, v43);
  v113 = v174;
  sub_1DD46582C(v32, v210);
  v168 = v175;
LABEL_140:

  v176 = v38[2];

  v177 = v210;
  v178 = sub_1DD46596C(v43);
  sub_1DD458B24(v192);
  OUTLINED_FUNCTION_2_25();
  v179 = v43[2];

  v180 = *(v177 + 16);

  if (__OFSUB__(v179, v178))
  {
    __break(1u);
  }

  else if (!__OFSUB__(v180, v178))
  {
    v181 = v188;
    v182 = v187 & 1;
    v183 = v190;
    *v190 = v167;
    v184 = v194 & 1;
    *(v183 + 8) = v215;
    v185 = v189 & 1;
    *(v183 + 9) = v166;
    *(v183 + 10) = v184;
    *(v183 + 11) = v181 & 1;
    *(v183 + 12) = v185;
    *(v183 + 13) = v182;
    *(v183 + 14) = v214;
    *(v183 + 15) = v213;
    *(v183 + 16) = v216;
    *(v183 + 17) = v212;
    *(v183 + 18) = v211;
    *(v183 + 19) = matched;
    *(v183 + 3) = v176;
    *(v183 + 4) = v178;
    *(v183 + 5) = v179;
    *(v183 + 6) = v180;
    *(v183 + 7) = v179 - v178;
    *(v183 + 8) = v180 - v178;
    *(v183 + 9) = v113;
    *(v183 + 10) = v168;
    return result;
  }

  __break(1u);
LABEL_163:

  __break(1u);
  return result;
}

uint64_t sub_1DD46539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_1DD63FDA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = 0x6449726F727265;
  *(inited + 40) = 0xE700000000000000;
  sub_1DD463E6C(a6 & 1);
  sub_1DD63FDA8();
  OUTLINED_FUNCTION_22_11();
  *(inited + 48) = v6;
  *(inited + 56) = 1701603686;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_1DD63FDA8();
  *(inited + 80) = 0x6E6F6974636E7566;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_1DD63FDA8();
  *(inited + 104) = 1701734764;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
  sub_1DD63FC88();
  v11 = sub_1DD63FC48();

  AnalyticsSendEvent();

  return a6 & 1;
}

void sub_1DD465568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1DD63FDA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = 0x6449726F727265;
  *(inited + 40) = 0xE700000000000000;
  sub_1DD463F00();
  v8 = sub_1DD63FDA8();

  *(inited + 48) = v8;
  *(inited + 56) = 1701603686;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_1DD63FDA8();
  *(inited + 80) = 0x6E6F6974636E7566;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_1DD63FDA8();
  *(inited + 104) = 1701734764;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
  sub_1DD63FC88();
  v9 = sub_1DD63FC48();

  AnalyticsSendEvent();
}

BOOL sub_1DD465730(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 32); v1; i += 80)
  {
    memcpy(__dst, i, sizeof(__dst));
    v3 = memcpy(v7, i, sizeof(v7));
    MEMORY[0x1EEE9AC00](v3);
    sub_1DD3E6404(__dst, v6);
    v4 = sub_1DD450524();
    sub_1DD3E6460(__dst);
    if (v4)
    {
      break;
    }

    --v1;
  }

  return v1 != 0;
}

void sub_1DD46582C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 80 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      sub_1DD4B81E8(v6);

      return;
    }

    if (v3 >= v4)
    {
      break;
    }

    memcpy(v16, v7, sizeof(v16));
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    v9 = sub_1DD528184(v16, a2);
    ++v3;
    v7 += 80;
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = v6[2];
        sub_1DD3BE460();
        v6 = v14;
      }

      v12 = v6[2];
      if (v12 >= v6[3] >> 1)
      {
        sub_1DD3BE460();
        v6 = v15;
      }

      v6[2] = v12 + 1;
      v6[v12 + 4] = v11;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1DD46596C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = (a1 + 32);
  if (!v2)
  {
    return v1;
  }

  while (1)
  {
    memcpy(__dst, v3, sizeof(__dst));
    v4 = memcpy(v9, v3, sizeof(v9));
    MEMORY[0x1EEE9AC00](v4);
    sub_1DD3E6404(__dst, v8);
    v5 = sub_1DD450524();
    result = sub_1DD3E6460(__dst);
    v7 = __OFADD__(v1, v5);
    v1 += v5;
    if (v7)
    {
      break;
    }

    v3 += 80;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1DD465A70()
{
  v0 = sub_1DD640AA8();

  return v0 != 0;
}

BOOL sub_1DD465AE0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD465A70();
  *a2 = result;
  return result;
}

unint64_t sub_1DD465B14@<X0>(void *a1@<X8>)
{
  result = sub_1DD465AB8();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD465B44(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1DD640CA8();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ContactMatchRuntimeData(0);
        v10 = sub_1DD640158();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for ContactMatchRuntimeData(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1DD465C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v34 = v21;
      v35 = a3;
      v32 = v24;
      v33 = v23;
      do
      {
        sub_1DD3CD140(v24, v18);
        sub_1DD3CD140(v21, v14);
        v25 = *(matched + 32);
        v26 = *&v18[v25];
        v27 = *&v14[v25];
        sub_1DD467AE8(v14, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD467AE8(v18, type metadata accessor for ContactMatchRuntimeData);
        if (v27 >= v26)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        sub_1DD3CD200(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD3CD200(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD465E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v38 = v18 + 344;
    v36 = v19;
    v37 = v14 + 344;
    v21 = v19 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v34 = v21;
      v35 = a3;
      v32 = v24;
      v33 = v23;
      do
      {
        sub_1DD3CD140(v24, v18);
        sub_1DD3CD140(v21, v14);
        v25 = *(matched + 20);
        v26 = *&v38[v25];
        v27 = *&v37[v25];
        sub_1DD467AE8(v14, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD467AE8(v18, type metadata accessor for ContactMatchRuntimeData);
        if (v27 >= v26)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        sub_1DD3CD200(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD3CD200(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD4660C8(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v108 = a1;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v116 = *(matched - 8);
  v8 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v112 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v105 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v105 - v16;
  v118 = a3;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_104:
    a3 = *v108;
    if (!*v108)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v100 = (v20 + 16);
      v99 = *(v20 + 16);
      for (i = v20; v99 >= 2; v20 = i)
      {
        if (!*v118)
        {
          goto LABEL_142;
        }

        v101 = (v20 + 16 * v99);
        v20 = *v101;
        v102 = &v100[2 * v99];
        v103 = *(v102 + 1);
        sub_1DD46722C(*v118 + *(v116 + 72) * *v101, *v118 + *(v116 + 72) * *v102, *v118 + *(v116 + 72) * v103, a3);
        if (v5)
        {
          break;
        }

        if (v103 < v20)
        {
          goto LABEL_130;
        }

        if (v99 - 2 >= *v100)
        {
          goto LABEL_131;
        }

        *v101 = v20;
        v101[1] = v103;
        v104 = *v100 - v99;
        if (*v100 < v99)
        {
          goto LABEL_132;
        }

        v99 = *v100 - 1;
        sub_1DD4EC4E4(v102 + 16, v104, v102);
        *v100 = v99;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v20 = sub_1DD4EC2B8(v20);
    goto LABEL_106;
  }

  v107 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = matched;
  v113 = &v105 - v16;
  while (1)
  {
    v22 = v19 + 1;
    v109 = v19;
    if (v19 + 1 >= v18)
    {
      v36 = v19;
    }

    else
    {
      a3 = *v118;
      v23 = *(v116 + 72);
      i = v18;
      v120 = v19 + 1;
      v24 = a3 + v23 * v22;
      sub_1DD3CD140(v24, v17);
      v25 = v109;
      sub_1DD3CD140(a3 + v23 * v109, v14);
      v26 = *(v21 + 32);
      v27 = *&v17[v26];
      v28 = *&v14[v26];
      sub_1DD467AE8(v14, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v17, type metadata accessor for ContactMatchRuntimeData);
      v29 = i;
      v30 = v25 + 2;
      v117 = v23;
      v31 = a3 + v23 * (v25 + 2);
      while (1)
      {
        v32 = v30;
        if (++v120 >= v29)
        {
          break;
        }

        a3 = v28 < v27;
        sub_1DD3CD140(v31, v17);
        sub_1DD3CD140(v24, v14);
        v33 = *(matched + 32);
        v34 = *&v17[v33];
        v35 = *&v14[v33];
        sub_1DD467AE8(v14, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD467AE8(v17, type metadata accessor for ContactMatchRuntimeData);
        v29 = i;
        v31 += v117;
        v24 += v117;
        v30 = v32 + 1;
        if (v28 < v27 == v35 >= v34)
        {
          goto LABEL_10;
        }
      }

      v120 = v29;
LABEL_10:
      if (v28 >= v27)
      {
        v21 = matched;
      }

      else
      {
        v22 = v120;
        v36 = v109;
        if (v120 < v109)
        {
          goto LABEL_136;
        }

        if (v109 >= v120)
        {
          v21 = matched;
          goto LABEL_33;
        }

        i = v20;
        v106 = v5;
        v37 = v29 >= v32 ? v32 : v29;
        v38 = v109;
        v39 = v117 * (v37 - 1);
        v40 = v117 * v37;
        v41 = v109 * v117;
        v21 = matched;
        do
        {
          if (v38 != --v22)
          {
            a3 = *v118;
            if (!*v118)
            {
              goto LABEL_143;
            }

            sub_1DD3CD200(a3 + v41, v112);
            v42 = v41 < v39 || a3 + v41 >= a3 + v40;
            if (v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v41 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD3CD200(v112, a3 + v39);
            v21 = matched;
          }

          ++v38;
          v39 -= v117;
          v40 -= v117;
          v41 += v117;
        }

        while (v38 < v22);
        v5 = v106;
        v20 = i;
      }

      v22 = v120;
      v36 = v109;
    }

LABEL_33:
    v43 = v118[1];
    if (v22 < v43)
    {
      if (__OFSUB__(v22, v36))
      {
        goto LABEL_135;
      }

      if (v22 - v36 < v107)
      {
        break;
      }
    }

LABEL_51:
    if (v22 < v36)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = *(v20 + 16);
      sub_1DD3BEB7C();
      v20 = v97;
    }

    a3 = *(v20 + 16);
    v56 = a3 + 1;
    if (a3 >= *(v20 + 24) >> 1)
    {
      sub_1DD3BEB7C();
      v20 = v98;
    }

    *(v20 + 16) = v56;
    v57 = v20 + 32;
    v58 = (v20 + 32 + 16 * a3);
    v59 = v120;
    *v58 = v109;
    v58[1] = v59;
    v117 = *v108;
    if (!v117)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      i = v20;
      while (1)
      {
        v60 = v56 - 1;
        v61 = (v57 + 16 * (v56 - 1));
        v62 = (v20 + 16 * v56);
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v63 = *(v20 + 32);
          v64 = *(v20 + 40);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_72:
          if (v66)
          {
            goto LABEL_121;
          }

          v78 = *v62;
          v77 = v62[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_124;
          }

          v82 = v61[1];
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_129;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v56 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v56 < 2)
        {
          goto LABEL_123;
        }

        v85 = *v62;
        v84 = v62[1];
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_87:
        if (v81)
        {
          goto LABEL_126;
        }

        v87 = *v61;
        v86 = v61[1];
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_128;
        }

        if (v88 < v80)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v60 - 1 >= v56)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v118)
        {
          goto LABEL_141;
        }

        v92 = (v57 + 16 * (v60 - 1));
        v93 = *v92;
        a3 = v60;
        v94 = v57 + 16 * v60;
        v20 = *(v94 + 8);
        sub_1DD46722C(*v118 + *(v116 + 72) * *v92, *v118 + *(v116 + 72) * *v94, *v118 + *(v116 + 72) * v20, v117);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v20 < v93)
        {
          goto LABEL_116;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_117;
        }

        *v92 = v93;
        v92[1] = v20;
        if (a3 >= v5)
        {
          goto LABEL_118;
        }

        v56 = v5 - 1;
        sub_1DD4EC4E4((v94 + 16), v5 - 1 - a3, v94);
        v20 = i;
        *(i + 16) = v5 - 1;
        v95 = v5 > 2;
        v5 = 0;
        v21 = matched;
        v17 = v113;
        if (!v95)
        {
          goto LABEL_101;
        }
      }

      v67 = v57 + 16 * v56;
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_119;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_120;
      }

      v74 = v62[1];
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_122;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_125;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = v61[1];
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_133;
        }

        if (v65 < v91)
        {
          v60 = v56 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v18 = v118[1];
    v19 = v120;
    if (v120 >= v18)
    {
      goto LABEL_104;
    }
  }

  v44 = v36 + v107;
  if (__OFADD__(v36, v107))
  {
    goto LABEL_137;
  }

  if (v44 >= v43)
  {
    v44 = v118[1];
  }

  if (v44 < v36)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v22 == v44)
  {
    goto LABEL_51;
  }

  i = v20;
  v106 = v5;
  a3 = *v118;
  v45 = *(v116 + 72);
  v46 = *v118 + v45 * (v22 - 1);
  v47 = -v45;
  v48 = v36 - v22;
  v110 = v45;
  v111 = v44;
  v49 = a3 + v22 * v45;
LABEL_42:
  v120 = v22;
  v114 = v49;
  v115 = v48;
  v117 = v46;
  v50 = v46;
  while (1)
  {
    sub_1DD3CD140(v49, v17);
    sub_1DD3CD140(v50, v14);
    v51 = *(v21 + 32);
    v52 = *&v17[v51];
    v53 = *&v14[v51];
    sub_1DD467AE8(v14, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD467AE8(v17, type metadata accessor for ContactMatchRuntimeData);
    if (v53 >= v52)
    {
      v21 = matched;
LABEL_49:
      v22 = v120 + 1;
      v46 = v117 + v110;
      v48 = v115 - 1;
      v49 = v114 + v110;
      if (v120 + 1 == v111)
      {
        v22 = v111;
        v5 = v106;
        v20 = i;
        v36 = v109;
        goto LABEL_51;
      }

      goto LABEL_42;
    }

    if (!a3)
    {
      break;
    }

    v54 = v121;
    sub_1DD3CD200(v49, v121);
    v21 = matched;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD3CD200(v54, v50);
    v50 += v47;
    v49 += v47;
    v42 = __CFADD__(v48++, 1);
    if (v42)
    {
      goto LABEL_49;
    }
  }

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
}

void sub_1DD466978(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = a1;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v124 = *(matched - 8);
  v8 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v120 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v113 - v11;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v16 = *(a3 + 8);
  v121 = a3;
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v4 = *v116;
    if (!*v116)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v105 = v18 + 16;
      v106 = *(v18 + 2);
      while (v106 >= 2)
      {
        v107 = *a3;
        if (!*a3)
        {
          goto LABEL_140;
        }

        v108 = v18;
        v18 += 16 * v106;
        v109 = *v18;
        a3 = &v105[2 * v106];
        v110 = *(a3 + 8);
        v111 = v126;
        sub_1DD467680(v107 + *(v124 + 72) * *v18, v107 + *(v124 + 72) * *a3, v107 + *(v124 + 72) * v110, v4);
        v126 = v111;
        if (v111)
        {
          break;
        }

        if (v110 < v109)
        {
          goto LABEL_128;
        }

        if (v106 - 2 >= *v105)
        {
          goto LABEL_129;
        }

        *v18 = v109;
        *(v18 + 1) = v110;
        v112 = *v105 - v106;
        if (*v105 < v106)
        {
          goto LABEL_130;
        }

        v106 = *v105 - 1;
        sub_1DD4EC4E4((a3 + 16), v112, a3);
        *v105 = v106;
        a3 = v121;
        v18 = v108;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v18 = sub_1DD4EC2B8(v18);
    goto LABEL_104;
  }

  v115 = a4;
  v17 = 0;
  v131 = &v113 - v14;
  v129 = v15 + 344;
  v130 = &v113 - v14 + 344;
  v18 = MEMORY[0x1E69E7CC0];
  v132 = matched;
  v128 = v15;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v117 = v17;
    if (v17 + 1 < v16)
    {
      v21 = *a3;
      v4 = *(v124 + 72);
      v22 = v17 + 1;
      v23 = *a3 + v4 * v20;
      a3 = v131;
      v123 = v16;
      sub_1DD3CD140(v23, v131);
      v24 = v128;
      sub_1DD3CD140(v21 + v4 * v19, v128);
      v25 = *(matched + 20);
      v26 = *&v130[v25];
      v27 = *(v129 + v25);
      sub_1DD467AE8(v24, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(a3, type metadata accessor for ContactMatchRuntimeData);
      v28 = v123;
      v29 = v19 + 2;
      v125 = v4;
      v30 = v21 + v4 * (v19 + 2);
      while (1)
      {
        v31 = v29;
        if (v22 + 1 >= v28)
        {
          break;
        }

        ++v22;
        a3 = v27 < v26;
        v4 = v131;
        sub_1DD3CD140(v30, v131);
        sub_1DD3CD140(v23, v24);
        v32 = *(v132 + 20);
        v33 = *&v130[v32];
        v34 = *(v129 + v32);
        sub_1DD467AE8(v24, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD467AE8(v4, type metadata accessor for ContactMatchRuntimeData);
        v28 = v123;
        v30 += v125;
        v23 += v125;
        v29 = v31 + 1;
        if (v27 < v26 == v34 >= v33)
        {
          goto LABEL_9;
        }
      }

      v22 = v28;
LABEL_9:
      if (v27 >= v26)
      {
        matched = v132;
        v20 = v22;
        a3 = v121;
      }

      else
      {
        v19 = v117;
        if (v22 < v117)
        {
          goto LABEL_134;
        }

        v20 = v22;
        a3 = v121;
        if (v117 >= v22)
        {
          matched = v132;
          goto LABEL_32;
        }

        v114 = v18;
        if (v28 >= v31)
        {
          v35 = v31;
        }

        else
        {
          v35 = v28;
        }

        v36 = v125 * (v35 - 1);
        v37 = v125 * v35;
        v38 = v117 * v125;
        matched = v132;
        do
        {
          if (v19 != --v20)
          {
            v39 = *v121;
            if (!*v121)
            {
              goto LABEL_141;
            }

            sub_1DD3CD200(v39 + v38, v120);
            v40 = v38 < v36 || v39 + v38 >= (v39 + v37);
            if (v40)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD3CD200(v120, v39 + v36);
            matched = v132;
          }

          ++v19;
          v36 -= v125;
          v37 -= v125;
          v38 += v125;
        }

        while (v19 < v20);
        a3 = v121;
        v18 = v114;
        v20 = v22;
      }

      v19 = v117;
    }

LABEL_32:
    v41 = *(a3 + 8);
    if (v20 < v41)
    {
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_133;
      }

      if (v20 - v19 < v115)
      {
        break;
      }
    }

LABEL_50:
    if (v20 < v19)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = *(v18 + 2);
      sub_1DD3BEB7C();
      v18 = v103;
    }

    v58 = *(v18 + 2);
    v57 = *(v18 + 3);
    v59 = v58 + 1;
    v125 = v20;
    if (v58 >= v57 >> 1)
    {
      sub_1DD3BEB7C();
      v18 = v104;
    }

    *(v18 + 2) = v59;
    v60 = v18 + 32;
    v61 = &v18[16 * v58 + 32];
    v62 = v125;
    *v61 = v117;
    *(v61 + 1) = v62;
    v123 = *v116;
    if (!v123)
    {
      goto LABEL_142;
    }

    if (v58)
    {
      while (1)
      {
        v63 = v59 - 1;
        v64 = &v60[16 * v59 - 16];
        v65 = &v18[16 * v59];
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v66 = *(v18 + 4);
          v67 = *(v18 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_70:
          if (v69)
          {
            goto LABEL_119;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_122;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_127;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v59 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v59 < 2)
        {
          goto LABEL_121;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_85:
        if (v84)
        {
          goto LABEL_124;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_126;
        }

        if (v91 < v83)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v63 - 1 >= v59)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_139;
        }

        v4 = a3;
        v96 = &v60[16 * v63 - 16];
        v97 = *v96;
        v98 = &v60[16 * v63];
        a3 = *(v98 + 1);
        v99 = v126;
        sub_1DD467680(v95 + *(v124 + 72) * *v96, v95 + *(v124 + 72) * *v98, v95 + *(v124 + 72) * a3, v123);
        v126 = v99;
        if (v99)
        {
          goto LABEL_112;
        }

        if (a3 < v97)
        {
          goto LABEL_114;
        }

        v100 = v18;
        v18 = *(v18 + 2);
        if (v63 > v18)
        {
          goto LABEL_115;
        }

        *v96 = v97;
        v96[1] = a3;
        if (v63 >= v18)
        {
          goto LABEL_116;
        }

        v59 = (v18 - 1);
        sub_1DD4EC4E4(v98 + 16, &v18[-v63 - 1], &v60[16 * v63]);
        *(v100 + 2) = v18 - 1;
        v101 = v18 > 2;
        v18 = v100;
        matched = v132;
        a3 = v4;
        if (!v101)
        {
          goto LABEL_99;
        }
      }

      v70 = &v60[16 * v59];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_117;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_118;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_120;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_123;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_131;
        }

        if (v68 < v94)
        {
          v63 = v59 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v16 = *(a3 + 8);
    v17 = v125;
    if (v125 >= v16)
    {
      goto LABEL_102;
    }
  }

  v42 = v19 + v115;
  if (__OFADD__(v19, v115))
  {
    goto LABEL_135;
  }

  if (v42 >= v41)
  {
    v42 = *(a3 + 8);
  }

  if (v42 < v19)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v20 == v42)
  {
    goto LABEL_50;
  }

  v114 = v18;
  v43 = *a3;
  v44 = *(v124 + 72);
  v45 = *a3 + v44 * (v20 - 1);
  v4 = -v44;
  v46 = v19 - v20;
  v118 = v44;
  v119 = v42;
  v47 = v43 + v20 * v44;
LABEL_41:
  v125 = v20;
  v48 = v47;
  v122 = v46;
  v123 = v45;
  v49 = v46;
  v50 = v45;
  while (1)
  {
    v51 = v131;
    sub_1DD3CD140(v48, v131);
    v52 = v128;
    sub_1DD3CD140(v50, v128);
    v53 = *(matched + 20);
    v54 = *&v130[v53];
    v55 = *(v129 + v53);
    sub_1DD467AE8(v52, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD467AE8(v51, type metadata accessor for ContactMatchRuntimeData);
    if (v55 >= v54)
    {
      matched = v132;
LABEL_48:
      v20 = v125 + 1;
      v45 = v123 + v118;
      v46 = v122 - 1;
      v47 += v118;
      if (v125 + 1 == v119)
      {
        v20 = v119;
        a3 = v121;
        v18 = v114;
        v19 = v117;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v43)
    {
      break;
    }

    v56 = v127;
    sub_1DD3CD200(v48, v127);
    matched = v132;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD3CD200(v56, v50);
    v50 += v4;
    v48 += v4;
    v40 = __CFADD__(v49++, 1);
    if (v40)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_1DD46722C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v17 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v56 = a1;
  v55 = a4;
  v20 = v18 / v16;
  v47[1] = v4;
  if ((a2 - a1) / v16 >= v18 / v16)
  {
    v50 = v11;
    sub_1DD3C1C14(a2, v18 / v16, a4);
    v28 = a4 + v20 * v16;
    v29 = -v16;
    v30 = v28;
    v31 = a3;
    v51 = -v16;
    v49 = a1;
LABEL_37:
    v52 = a2 + v29;
    v32 = v31;
    v47[0] = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v56 = a2;
        v54 = v30;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v30;
      v33 = a2;
      v34 = a4;
      v31 = v32 + v51;
      v35 = v28 + v51;
      v36 = v28;
      sub_1DD3CD140(v28 + v51, v14);
      v37 = v14;
      v38 = v50;
      sub_1DD3CD140(v52, v50);
      v39 = *(matched + 32);
      v40 = *(v37 + v39);
      v41 = *(v38 + v39);
      v42 = v38;
      v14 = v37;
      sub_1DD467AE8(v42, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v37, type metadata accessor for ContactMatchRuntimeData);
      if (v41 < v40)
      {
        v44 = v32 < v33 || v31 >= v33;
        a4 = v34;
        if (v44)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v48;
          a1 = v49;
          v29 = v51;
          v28 = v36;
        }

        else
        {
          a1 = v49;
          v30 = v48;
          v17 = v32 == v33;
          v29 = v51;
          v45 = v52;
          a2 = v52;
          v28 = v36;
          if (!v17)
          {
            v46 = v48;
            swift_arrayInitWithTakeBackToFront();
            v28 = v36;
            a2 = v45;
            v30 = v46;
          }
        }

        goto LABEL_37;
      }

      v43 = v32 < v36 || v31 >= v36;
      a4 = v34;
      if (v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v31;
        v28 = v35;
        v30 = v35;
        a2 = v33;
        a1 = v49;
      }

      else
      {
        v30 = v35;
        v17 = v36 == v32;
        v32 = v31;
        v28 = v35;
        a2 = v33;
        a1 = v49;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v31;
          v28 = v35;
          v30 = v35;
        }
      }
    }

    v56 = a2;
    v54 = v47[0];
  }

  else
  {
    sub_1DD3C1C14(a1, (a2 - a1) / v16, a4);
    v21 = a4 + (a2 - a1) / v16 * v16;
    v54 = v21;
    while (a4 < v21 && a2 < a3)
    {
      sub_1DD3CD140(a2, v14);
      sub_1DD3CD140(a4, v11);
      v23 = *(matched + 32);
      v24 = *&v14[v23];
      v25 = *&v11[v23];
      sub_1DD467AE8(v11, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v14, type metadata accessor for ContactMatchRuntimeData);
      if (v25 >= v24)
      {
        if (a1 < a4 || a1 >= a4 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v55 = a4 + v16;
        a4 += v16;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      a1 += v16;
      v56 = a1;
    }
  }

LABEL_59:
  sub_1DD4EC2D0(&v56, &v55, &v54);
}

void sub_1DD467680(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  v55 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v48 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_62;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v20 = v16 / v15;
  v59 = a1;
  v58 = a4;
  v21 = v18 / v15;
  v48[1] = v4;
  if (v16 / v15 >= v18 / v15)
  {
    sub_1DD3C1C14(a2, v18 / v15, a4);
    v30 = a4 + v21 * v15;
    v52 = v55 + 344;
    v53 = v13 + 344;
    v31 = -v15;
    v32 = v30;
    v50 = a1;
    v51 = -v15;
LABEL_37:
    v33 = a2 + v31;
    v34 = a3;
    v48[0] = v32;
    v54 = (a2 + v31);
    while (1)
    {
      if (v30 <= a4)
      {
        v59 = a2;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v49 = v32;
      a3 = v34 + v31;
      v35 = v30 + v31;
      v36 = v30;
      v37 = v34;
      sub_1DD3CD140(v30 + v31, v13);
      v38 = v13;
      v39 = v55;
      sub_1DD3CD140(v33, v55);
      v40 = *(matched + 20);
      v41 = *&v53[v40];
      v42 = *(v52 + v40);
      v43 = v39;
      v13 = v38;
      sub_1DD467AE8(v43, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v38, type metadata accessor for ContactMatchRuntimeData);
      if (v42 < v41)
      {
        if (v37 < a2 || a3 >= a2)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v49;
          a1 = v50;
          v31 = v51;
          v30 = v36;
        }

        else
        {
          v32 = v49;
          v17 = v37 == a2;
          v46 = v54;
          a2 = v54;
          a1 = v50;
          v31 = v51;
          v30 = v36;
          if (!v17)
          {
            v47 = v49;
            swift_arrayInitWithTakeBackToFront();
            v30 = v36;
            a2 = v46;
            v32 = v47;
          }
        }

        goto LABEL_37;
      }

      if (v37 < v36 || a3 >= v36)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = a3;
        v30 = v35;
        v32 = v35;
        a1 = v50;
        v31 = v51;
        v33 = v54;
      }

      else
      {
        v32 = v35;
        v17 = v36 == v37;
        v34 = a3;
        v30 = v35;
        a1 = v50;
        v31 = v51;
        v33 = v54;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = a3;
          v30 = v35;
          v32 = v35;
        }
      }
    }

    v59 = a2;
    v32 = v48[0];
LABEL_59:
    v57 = v32;
  }

  else
  {
    sub_1DD3C1C14(a1, v16 / v15, a4);
    v22 = a4 + v20 * v15;
    v57 = v22;
    v53 = (v55 + 344);
    v54 = v13 + 344;
    while (a4 < v22 && a2 < a3)
    {
      sub_1DD3CD140(a2, v13);
      v24 = v55;
      sub_1DD3CD140(a4, v55);
      v25 = *(matched + 20);
      v26 = *&v54[v25];
      v27 = *&v53[v25];
      sub_1DD467AE8(v24, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v13, type metadata accessor for ContactMatchRuntimeData);
      if (v27 >= v26)
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v15;
        a4 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v59 = a1;
    }
  }

  sub_1DD4EC2D0(&v59, &v58, &v57);
}

uint64_t sub_1DD467AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD467B48(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1DD586734(v4, __dst) & 1;
}

_BYTE *storeEnumTagSinglePayload for ContactResolverSearchMetricsError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD467C74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 88))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 10);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1DD467CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DD467D28(uint64_t a1)
{
  result = sub_1DD467D50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD467D50()
{
  result = qword_1ECCDCF00;
  if (!qword_1ECCDCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF00);
  }

  return result;
}

unint64_t sub_1DD467DA8()
{
  result = qword_1ECCDCF08;
  if (!qword_1ECCDCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_22(uint64_t result)
{
  v2 = *(result + 80);
  v3 = *(v1 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return sub_1DD6406D8();
}

void OUTLINED_FUNCTION_14_21()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD42B564();
}

uint64_t OUTLINED_FUNCTION_19_15()
{
  v3 = *(v2 + 72);
  *(v1 + 160) = v0;
  return *(v1 + 104) + v3 * v0;
}

uint64_t OUTLINED_FUNCTION_22_11()
{
}

void sub_1DD467EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF10, &qword_1DD64C7E0);
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v170 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v173 = (&v156 - v8);
  v9 = OUTLINED_FUNCTION_6_2();
  v10 = type metadata accessor for StitchedContactResolverRecommendation(v9);
  v11 = OUTLINED_FUNCTION_0(v10);
  v157 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v187 = v15;
  v16 = OUTLINED_FUNCTION_6_2();
  v17 = type metadata accessor for StitchedContactResolverRequest(v16);
  v18 = OUTLINED_FUNCTION_0(v17);
  v164 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v163 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_3(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v26);
  v180 = &v156 - v27;
  v28 = OUTLINED_FUNCTION_6_2();
  v184 = type metadata accessor for ContactResolverRunTimeData(v28);
  v29 = OUTLINED_FUNCTION_7(v184);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD80, &qword_1DD64B998);
  OUTLINED_FUNCTION_3(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v156 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD78, &qword_1DD64B990);
  OUTLINED_FUNCTION_3(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v156 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v156 - v50;
  v172 = sub_1DD63D0F8();
  v52 = OUTLINED_FUNCTION_0(v172);
  v156 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_1();
  v182 = v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v156 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v183 = &v156 - v61;
  *&v186 = a1;
  v165 = *(a1 + 32);
  sub_1DD558CD0(v165, v39);
  if (__swift_getEnumTagSinglePayload(v39, 1, v17) == 1)
  {
    v62 = &qword_1ECCDCD80;
    v63 = &qword_1DD64B998;
    v64 = v39;
LABEL_5:
    sub_1DD390754(v64, v62, v63);
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v172);
    goto LABEL_6;
  }

  v181 = v59;
  v65 = *&v39[*(v17 + 24)];

  OUTLINED_FUNCTION_0_47();
  sub_1DD4694E4(v39, v66);
  sub_1DD558DAC(v65, v45);

  if (__swift_getEnumTagSinglePayload(v45, 1, v10) == 1)
  {
    v62 = &qword_1ECCDCD78;
    v63 = &qword_1DD64B990;
    v64 = v45;
    goto LABEL_5;
  }

  sub_1DD469484(v45, v33, type metadata accessor for ContactResolverRunTimeData);
  OUTLINED_FUNCTION_2_26();
  sub_1DD4694E4(v45, v71);
  sub_1DD3DD9B4(&v33[v184[19]], v51, &qword_1ECCDBAC8, &qword_1DD643E60);
  sub_1DD4694E4(v33, type metadata accessor for ContactResolverRunTimeData);
  v72 = v172;
  if (__swift_getEnumTagSinglePayload(v51, 1, v172) == 1)
  {
LABEL_6:
    sub_1DD390754(v51, &qword_1ECCDBAC8, &qword_1DD643E60);
    if (qword_1EE160508 == -1)
    {
LABEL_7:
      v67 = sub_1DD63F9F8();
      __swift_project_value_buffer(v67, qword_1EE16EED0);
      v68 = sub_1DD63F9D8();
      v69 = sub_1DD640368();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1DD38D000, v68, v69, "skipping logging metrics since resolutionId is missing", v70, 2u);
        MEMORY[0x1E12B3DA0](v70, -1, -1);
      }

      return;
    }

LABEL_83:
    OUTLINED_FUNCTION_3_5();
    goto LABEL_7;
  }

  v179 = v17;
  v73 = v183;
  (*(v156 + 32))(v183, v51, v72);
  v74 = v181;
  sub_1DD63D0E8();
  v75 = type metadata accessor for StitchedContactData(0);
  v76 = v186;
  v77 = v180;
  sub_1DD3DD9B4(v186 + v75[7], v180, &qword_1ECCDC1B0, &unk_1DD6454F0);
  v78 = type metadata accessor for StitchableInteraction();
  if (__swift_getEnumTagSinglePayload(v77, 1, v78) == 1)
  {
    sub_1DD390754(v77, &qword_1ECCDC1B0, &unk_1DD6454F0);
    v79 = 0.0;
  }

  else
  {
    v80 = *(v77 + *(v78 + 28));
    OUTLINED_FUNCTION_1_36();
    sub_1DD4694E4(v77, v81);
    v79 = v80 * 1000.0;
  }

  v83 = *(v76 + 16);
  v82 = *(v76 + 24);
  v84 = v83 == 0xD000000000000013 && 0x80000001DD66CB70 == v82;
  v169 = v10;
  if (v84 || (sub_1DD640CD8() & 1) != 0)
  {
    v85 = 1;
    v86 = 2;
LABEL_20:
    v87 = v75[12];
    v88 = *(v76 + v75[13]);
    v89 = *(v76 + v75[10]);
    v90 = *(v76 + v87);
    v188[0] = v86;
    LOBYTE(v188[1]) = v85;
    sub_1DD5A0898();

    v188[0] = v86;
    LOBYTE(v188[1]) = v85;
    sub_1DD5A0898();
    v93 = v92;
    v74 = v181;
    goto LABEL_21;
  }

  v150 = v83 == 0xD000000000000011 && 0x80000001DD66A780 == v82;
  if (v150 || (sub_1DD640CD8() & 1) != 0)
  {
    sub_1DD55D704(v79);
    if ((*&v151 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v151 > -9.22337204e18)
    {
      if (v151 < 9.22337204e18)
      {
        v85 = 0;
        v86 = v151;
        goto LABEL_20;
      }

LABEL_86:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_86;
  }

  v93 = 0;
  v152 = v75[12];
  v153 = *(v76 + v75[13]);
  v154 = *(v76 + v75[10]);
  v155 = *(v76 + v152);
LABEL_21:
  v94 = v182;
  sub_1DD5A5AB4();

  v95 = v165;
  v160 = *(v165 + 16);
  if (v160)
  {
    v96 = 0;
    v159 = v165 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
    v158 = *(v179 + 24);
    v167 = (v156 + 8);
    v168 = (v156 + 16);
    v166 = xmmword_1DD643F90;
    v97 = v172;
    v98 = v187;
    while (v96 < *(v95 + 16))
    {
      v99 = v163;
      v100 = *(v164 + 72);
      OUTLINED_FUNCTION_8_19();
      sub_1DD469484(v101, v99, v102);
      v103 = *(v99 + v158);

      OUTLINED_FUNCTION_0_47();
      sub_1DD4694E4(v99, v104);
      v105 = *(v103 + 16);
      if (v105)
      {
        v161 = v103;
        v162 = v96;
        v106 = v103 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
        v171 = *(v157 + 72);
        v107 = v173;
        do
        {
          v179 = v106;
          v180 = v105;
          OUTLINED_FUNCTION_7_23();
          sub_1DD469484(v108, v98, v109);
          v110 = v184;
          (*v168)(v94, &v187[v184[18]], v97);
          memcpy(v188, v187, 0xB0uLL);
          v111 = *(v187 + 22);
          v112 = *(v187 + 25);
          v113 = *(v187 + 28);
          v114 = *(v187 + 29);
          v194 = *(v187 + 15);
          v195 = *(v187 + 32);
          v188[22] = v111;
          v178 = *(v187 + 184);
          v189 = v178;
          v190 = v112;
          v186 = *(v187 + 13);
          v191 = v186;
          v192 = v113;
          v193 = v114;
          v115 = sub_1DD41E198();
          v116 = v115 & 1;
          v117 = BYTE7(v178) & 0xF;
          if ((v178 & 0x2000000000000000) == 0)
          {
            v117 = v111 & 0xFFFFFFFFFFFFLL;
          }

          if (v117)
          {
            v118 = v116 | 2;
          }

          else
          {
            v118 = v115 & 1;
          }

          if (v178)
          {
            v116 = v118;
          }

          v119 = BYTE7(v186) & 0xF;
          if ((v186 & 0x2000000000000000) == 0)
          {
            v119 = v112 & 0xFFFFFFFFFFFFLL;
          }

          if (v119)
          {
            v120 = v116 | 4;
          }

          else
          {
            v120 = v116;
          }

          v121 = HIBYTE(v114) & 0xF;
          if ((v114 & 0x2000000000000000) == 0)
          {
            v121 = v113 & 0xFFFFFFFFFFFFLL;
          }

          if (v121)
          {
            v120 |= 8u;
          }

          if (v186)
          {
            v122 = v120;
          }

          else
          {
            v122 = v116;
          }

          v123 = v187[248];
          v124 = *(v187 + 37);
          v125 = v187[v110[20]];
          v126 = sub_1DD5A0774(v122);
          v127 = dword_1DD64C7EC[v123];
          sub_1DD5A3128();
          v128 = v187;
          sub_1DD5A646C();

          v129 = &v128[v110[10]];
          v130 = v185;
          sub_1DD5AD434(v107);
          if (v130)
          {

            v185 = 0;
            v131 = 1;
          }

          else
          {
            v185 = 0;
            v131 = 0;
          }

          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
          __swift_storeEnumTagSinglePayload(v107, v131, 1, v132);
          v133 = v128[v184[13]];
          v134 = *(v128 + 35);
          v177 = *(v128 + 34);
          v175 = v133;
          v176 = v134;
          v135 = v170;
          v136 = &v128[*(v169 + 20)];
          v137 = *v136;
          v138 = *(v136 + 1);
          *&v186 = *(v136 + 2);
          v139 = v136[24];
          v174 = v137;
          if (v139 != 255)
          {
            if (v139)
            {
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
              v140 = swift_allocObject();
              *(v140 + 16) = v166;
              *(v140 + 32) = v174;
              *(v140 + 40) = v138;
              sub_1DD3E7AA0(v174, v138, v186, 0);
            }
          }

          *&v178 = v138;
          sub_1DD3DD9B4(v107, v135, &qword_1ECCDCF10, &qword_1DD64C7E0);
          v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v135, 1, v141);
          if (EnumTagSinglePayload == 1)
          {
            sub_1DD390754(v135, &qword_1ECCDCF10, &qword_1DD64C7E0);
          }

          else
          {
            sub_1DD5AE450();
            sub_1DD390754(v135, &qword_1ECCDBE08, &qword_1DD644158);
          }

          v143 = dword_1DD64C800[v175];
          LOBYTE(v188[0]) = EnumTagSinglePayload == 1;
          v74 = v181;
          v94 = v182;
          sub_1DD5A5DDC();

          if (v139 == 255)
          {
            v144 = 1;
            v145 = v173;
            v98 = v187;
            v73 = v183;
          }

          else
          {
            v145 = v173;
            if (v139)
            {
              v98 = v187;
              if (v186)
              {
                sub_1DD52823C();
              }

              v73 = v183;

              v144 = 1;
            }

            else
            {
              v146 = v186;
              sub_1DD3E7AA0(v174, v178, v186, 0);
              v147 = v146;
              v98 = v187;
              v144 = 0;
              v73 = v183;
              switch(v147)
              {
                case 1:
                  v144 = 0;
                  break;
                case 2:
                  v144 = 0;
                  break;
                case 3:
                  v144 = 0;
                  break;
                default:
                  break;
              }
            }
          }

          LOBYTE(v188[0]) = v144;
          sub_1DD5A6114();

          sub_1DD390754(v145, &qword_1ECCDCF10, &qword_1DD64C7E0);
          v97 = v172;
          (*v167)(v94, v172);
          OUTLINED_FUNCTION_2_26();
          sub_1DD4694E4(v98, v148);
          v106 = v179 + v171;
          v105 = v180 - 1;
          v107 = v145;
        }

        while (v180 != 1);

        v95 = v165;
        v96 = v162;
      }

      else
      {

        v95 = v165;
      }

      if (++v96 == v160)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  v97 = v172;
LABEL_71:
  v149 = *(v156 + 8);
  v149(v74, v97);
  v149(v73, v97);
}

uint64_t sub_1DD468D30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v93 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v92 = (&v85 - v8);
  v9 = OUTLINED_FUNCTION_6_2();
  v10 = type metadata accessor for PrivatizedContactResolverConfig(v9);
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v91 = v14;
  OUTLINED_FUNCTION_6_2();
  v15 = sub_1DD63D0F8();
  v16 = OUTLINED_FUNCTION_0(v15);
  v88 = v17;
  v89 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v90 = v20;
  v21 = OUTLINED_FUNCTION_6_2();
  v22 = type metadata accessor for StitchedContactResolverRecommendation(v21);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  v27 = OUTLINED_FUNCTION_6_2();
  v28 = type metadata accessor for StitchedContactResolverRequest(v27);
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v35 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DD4589E4();
  v95[3] = &type metadata for ContactFeatures;
  v95[4] = sub_1DD3E6184();
  LOBYTE(v95[0]) = 1;
  v37 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(v95);
  v38 = 0;
  v94 = a1;
  v39 = *(a1 + 32);
  v40 = *(v39 + 16);
  while (1)
  {
    if (v40 == v38)
    {
      return 0;
    }

    if (v38 >= *(v39 + 16))
    {
      break;
    }

    v41 = v39 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v42 = *(v31 + 72);
    OUTLINED_FUNCTION_8_19();
    sub_1DD469484(v43, v35, v44);
    if (*(*&v35[*(v28 + 24)] + 16))
    {
      v47 = *(v23 + 80);
      OUTLINED_FUNCTION_7_23();
      v39 = v26;
      sub_1DD469484(v48 + v49, v26, v50);
      v51 = type metadata accessor for ContactResolverRunTimeData(0);
      if (sub_1DD458AD4(*(v26 + *(v51 + 48)), v37 & 1, v36))
      {
        if (qword_1ECCDB118 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_39;
      }

      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5();
      }

      v57 = sub_1DD63F9F8();
      __swift_project_value_buffer(v57, qword_1EE16EED0);
      v58 = sub_1DD63F9D8();
      v59 = sub_1DD640368();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        v61 = "skipping logging training sample for non-force prompt";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    ++v38;
    OUTLINED_FUNCTION_0_47();
    sub_1DD4694E4(v35, v45);
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_9:
  v53 = v93;
  v52 = v94;
  v54 = v92;
  if (byte_1ECD0DE38 != 1)
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_3_5();
    }

    v62 = sub_1DD63F9F8();
    __swift_project_value_buffer(v62, qword_1EE16EED0);
    v58 = sub_1DD63F9D8();
    v59 = sub_1DD640368();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "skipping logging training sample because D&U not allowed";
LABEL_20:
      _os_log_impl(&dword_1DD38D000, v58, v59, v61, v60, 2u);
      MEMORY[0x1E12B3DA0](v60, -1, -1);
    }

LABEL_21:

    v46 = 0;
LABEL_36:
    OUTLINED_FUNCTION_2_26();
    sub_1DD4694E4(v39, v83);
    OUTLINED_FUNCTION_0_47();
    sub_1DD4694E4(v35, v84);
    return v46;
  }

  sub_1DD63D0E8();
  sub_1DD469484(v35, v91, type metadata accessor for PrivatizedContactResolverConfig);
  v55 = type metadata accessor for StitchedContactData(0);
  v87 = v55[7];
  sub_1DD3DD9B4(v52 + v87, v54, &qword_1ECCDC1B0, &unk_1DD6454F0);
  v56 = type metadata accessor for StitchableInteraction();
  if (__swift_getEnumTagSinglePayload(v54, 1, v56) == 1)
  {
    sub_1DD390754(v54, &qword_1ECCDC1B0, &unk_1DD6454F0);
  }

  else
  {
    v63 = *(v54 + *(v56 + 36));

    OUTLINED_FUNCTION_1_36();
    sub_1DD4694E4(v54, v64);
    v65 = *(v63 + 16);
    if (v65)
    {
      v86 = v56;
      v92 = v55;
      v95[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v66 = v95[0];
      v85 = v63;
      v67 = (v63 + 40);
      do
      {
        v68 = *(v67 - 1);
        v69 = *v67;
        v95[0] = v66;
        v71 = *(v66 + 16);
        v70 = *(v66 + 24);

        if (v71 >= v70 >> 1)
        {
          sub_1DD42A2D4();
          v66 = v95[0];
        }

        *(v66 + 16) = v71 + 1;
        v72 = v66 + 16 * v71;
        *(v72 + 32) = v68;
        *(v72 + 40) = v69;
        v67 += 10;
        --v65;
      }

      while (v65);

      v53 = v93;
      v52 = v94;
      v55 = v92;
      v56 = v86;
    }

    else
    {
    }
  }

  v73 = *(v52 + v55[12]);
  v74 = *(v52 + v55[10]);
  sub_1DD3DD9B4(v52 + v87, v53, &qword_1ECCDC1B0, &unk_1DD6454F0);
  if (__swift_getEnumTagSinglePayload(v53, 1, v56) == 1)
  {
    result = sub_1DD390754(v53, &qword_1ECCDC1B0, &unk_1DD6454F0);
    v76 = 0.0;
  }

  else
  {
    v76 = *(v53 + *(v56 + 28));
    OUTLINED_FUNCTION_1_36();
    result = sub_1DD4694E4(v53, v77);
  }

  if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v76 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v76 < 9.22337204e18)
  {
    sub_1DD55D7D8(v76);
    v78 = (v52 + v55[8]);
    v79 = *(v78 + 2) | (*(v78 + 6) << 16);
    v80 = *v78;
    v82 = v90;
    v81 = v91;
    sub_1DD5ADCC0();

    sub_1DD4694E4(v81, type metadata accessor for PrivatizedContactResolverConfig);
    (*(v88 + 8))(v82, v89);
    v46 = 1;
    goto LABEL_36;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1DD469484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD4694E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD46953C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v70[1] = a4;
  v71 = a3;
  v82 = type metadata accessor for StitchedContactResolverRecommendation(0);
  v5 = OUTLINED_FUNCTION_0(v82);
  v75 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StitchedContactResolverRequest(0);
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v79 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 32);
  v20 = MEMORY[0x1E69E7CC0];
  v78 = *(v19 + 16);
  v72 = a1;
  if (v78)
  {
    v21 = 0;
    a1 = 0;
    v22 = 0;
    v77 = *(v17 + 24);
    v76 = v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v23 = v10 + 24;
    v24 = MEMORY[0x1E69E7CC0];
    v20 = v19;
    v73 = v19;
    v74 = v14;
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        goto LABEL_66;
      }

      v25 = *(v14 + 72);
      v81 = v22;
      v26 = v79;
      sub_1DD469DEC(v76 + v25 * v22, v79, type metadata accessor for StitchedContactResolverRequest);
      v27 = *(v26 + v77);

      sub_1DD469E54(v26, type metadata accessor for StitchedContactResolverRequest);
      v28 = v27;
      v29 = *(v27 + 16);
      if (v29)
      {
        break;
      }

LABEL_34:
      v22 = v81 + 1;
      if (v81 + 1 == v78)
      {
        v10 = v21;
        a1 = v72;
        v20 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }
    }

    v30 = *(v75 + 80);
    v80 = v28;
    v31 = v28 + ((v30 + 32) & ~v30);
    v20 = *(v75 + 72);
    while (1)
    {
      sub_1DD469DEC(v31, v10, type metadata accessor for StitchedContactResolverRecommendation);
      if (*(v10 + *(type metadata accessor for ContactResolverRunTimeData(0) + 48)))
      {
        v21 = (v21 & 0xFFFFFFFFFFFFFF00) + 1;
      }

      v32 = *(v23 + *(v82 + 20));
      if (*(v23 + *(v82 + 20)))
      {
        if (v32 == 1)
        {
          v33 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_65;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_1_37();
            v24 = v35;
          }

          OUTLINED_FUNCTION_4_27();
          if (v34)
          {
            OUTLINED_FUNCTION_3_27();
            v24 = v36;
          }

          *(v24 + 16) = a1;
          *(v24 + v26 + 32) = 0;
          OUTLINED_FUNCTION_0_48();
          v21 = v21 & 0xFFFFFFFFFF00FFFFLL | 0x10000;
        }

        else
        {
          if (v32 != 2)
          {
            OUTLINED_FUNCTION_0_48();
            goto LABEL_31;
          }

          v33 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            OUTLINED_FUNCTION_1_37();
            v24 = v66;
LABEL_39:
            v41 = *(v24 + 16);
            if (v41 >= *(v24 + 24) >> 1)
            {
              sub_1DD3BF4FC();
              v24 = v67;
            }

            *(v24 + 16) = v41 + 1;
            *(v24 + v41 + 32) = 3;
            goto LABEL_42;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_1_37();
            v24 = v39;
          }

          OUTLINED_FUNCTION_4_27();
          if (v34)
          {
            OUTLINED_FUNCTION_3_27();
            v24 = v40;
          }

          *(v24 + 16) = a1;
          *(v24 + v26 + 32) = 1;
          OUTLINED_FUNCTION_0_48();
          v21 = v21 & 0xFFFFFFFF00FFFFFFLL | 0x1000000;
        }
      }

      else
      {
        v33 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_64;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_37();
          v24 = v37;
        }

        OUTLINED_FUNCTION_4_27();
        if (v34)
        {
          OUTLINED_FUNCTION_3_27();
          v24 = v38;
        }

        *(v24 + 16) = a1;
        *(v24 + v26 + 32) = 2;
        OUTLINED_FUNCTION_0_48();
        v21 = v21 & 0xFFFFFFFFFFFF00FFLL | 0x100;
      }

      a1 = v33;
LABEL_31:
      v31 += v20;
      if (!--v29)
      {

        v20 = v73;
        v14 = v74;
        goto LABEL_34;
      }
    }
  }

  v10 = 0;
  v24 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v21 = type metadata accessor for StitchedContactData(0);
  LODWORD(v23) = *(a1 + *(v21 + 48));
  if (v23)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_39;
  }

LABEL_42:
  if (*(a1 + *(v21 + 44)) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_37();
      v24 = v68;
    }

    v43 = *(v24 + 16);
    v42 = *(v24 + 24);
    v44 = v43 + 1;
    v81 = v21;
    v82 = v10;
    LODWORD(v80) = v23;
    if (v43 >= v42 >> 1)
    {
      sub_1DD3BF4FC();
      v24 = v69;
    }

    *(v24 + 16) = v44;
    *(v24 + v43 + 32) = 4;
  }

  else
  {
    v44 = *(v24 + 16);
    if (!v44)
    {
      OUTLINED_FUNCTION_2_27();
      sub_1DD469E54(a1, v65);

      return 0;
    }

    LODWORD(v80) = v23;
    v81 = v21;
    v82 = v10;
  }

  v83 = v20;
  sub_1DD42A2D4();
  v45 = v83;
  v46 = 32;
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_7_24();
  v47 = OUTLINED_FUNCTION_5_30();
  do
  {
    v55 = v51;
    v56 = v52;
    switch(*(v24 + v46))
    {
      case 1:
        v56 = 0xD000000000000014;
        v55 = v49;
        break;
      case 2:
        break;
      case 3:
        v55 = 0xE90000000000006ELL;
        v56 = v53;
        break;
      case 4:
        v56 = v47;
        v55 = v54;
        break;
      default:
        v56 = v48 + 1;
        v55 = v50;
        break;
    }

    v83 = v45;
    v57 = *(v45 + 16);
    if (v57 >= *(v45 + 24) >> 1)
    {
      v59 = v49;
      v79 = v50;
      sub_1DD42A2D4();
      OUTLINED_FUNCTION_5_30();
      OUTLINED_FUNCTION_7_24();
      OUTLINED_FUNCTION_8_20();
      v51 = 0xEC0000006E6F6974;
      v50 = v79;
      v49 = v59;
      v48 = 0xD000000000000014;
      v45 = v83;
    }

    *(v45 + 16) = v57 + 1;
    v58 = v45 + 16 * v57;
    *(v58 + 32) = v56;
    *(v58 + 40) = v55;
    ++v46;
    --v44;
  }

  while (v44);
  v83 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v60 = sub_1DD63FD58();

  *(v72 + *(v81 + 40));
  v61 = *(v72 + *(v81 + 52));
  OUTLINED_FUNCTION_2_27();
  sub_1DD469E54(v62, v63);

  if (v71)
  {
  }

  return v60;
}

uint64_t sub_1DD469C60(char a1)
{
  result = 0x616D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6F69747563657865;
      break;
    case 4:
      result = OUTLINED_FUNCTION_5_30();
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1DD469D20()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD469D6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3AF4FC();
}

uint64_t sub_1DD469D90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD469D20();
  *a2 = result;
  return result;
}

uint64_t sub_1DD469DC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD469C60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD469DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD469E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ContactResolverTaskMetrics.Event(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD469FA4()
{
  result = qword_1ECCDCF18;
  if (!qword_1ECCDCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF18);
  }

  return result;
}

void OUTLINED_FUNCTION_3_27()
{

  sub_1DD3BF4FC();
}

uint64_t sub_1DD46A01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v32 = 1;
  v31 = 1;
  v30 = 1;
  v29 = 1;
  v33 = a3 & 1;
  v11 = a1 + *(type metadata accessor for StitchedContactResolverRecommendation(0) + 20);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (!*(v11 + 24))
  {
    sub_1DD46A2FC(a1);
    v17 = 0;
    OUTLINED_FUNCTION_2_28();
    v16 = 0;
LABEL_12:
    OUTLINED_FUNCTION_0_49();
    v23 = 2;
    v19 = 5;
    v24 = 3;
    goto LABEL_21;
  }

  v15 = *v11;
  v14 = *(v11 + 8);
  if (v13 == 1)
  {
    v6 = *(v15 + 16);
    v31 = 0;
    if (v12)
    {
      v5 = sub_1DD52823C();
      v26 = v25;
      sub_1DD46A2FC(a1);
      if (v26)
      {
        v17 = 0;
        v5 = 0;
        v16 = 0;
        LOBYTE(v12) = 4;
        OUTLINED_FUNCTION_0_49();
        v19 = 3;
        v24 = 2;
      }

      else
      {
        v17 = 0;
        v16 = 0;
        v32 = 0;
        LOBYTE(v12) = 4;
        OUTLINED_FUNCTION_0_49();
      }
    }

    else
    {
      sub_1DD46A2FC(a1);
      v17 = 0;
      v5 = 0;
      v16 = 0;
      OUTLINED_FUNCTION_0_49();
      LOBYTE(v12) = 4;
    }

    v27 = 2;
    goto LABEL_21;
  }

  if (v13 != 2)
  {
    sub_1DD46A2FC(a1);
    v17 = 0;
    OUTLINED_FUNCTION_2_28();
    v16 = 0;
    LOBYTE(v12) = 4;
    goto LABEL_12;
  }

  v16 = *(v15 + 16);
  v29 = 0;
  if (v12)
  {
    v17 = sub_1DD52823C();
    v5 = v18;
    sub_1DD46A2FC(a1);
    if (v5)
    {
      v17 = 0;
      OUTLINED_FUNCTION_2_28();
      LOBYTE(v12) = 4;
      v19 = 5;
      v20 = 2;
      v21 = 3;
      v22 = 1;
      v23 = 2;
      v24 = 3;
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      v30 = 0;
      LOBYTE(v12) = 4;
      OUTLINED_FUNCTION_3_28();
      if (v17 < 1)
      {
        v22 = 1;
      }
    }
  }

  else
  {
    sub_1DD46A2FC(a1);
    v17 = 0;
    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_3_28();
    v20 = 1;
    v21 = 4;
    LOBYTE(v12) = 4;
  }

  v27 = 3;
LABEL_21:
  result = v31;
  *a5 = v27;
  *(a5 + 8) = a2;
  *(a5 + 16) = v33;
  *(a5 + 17) = a4 & 1;
  *(a5 + 18) = v24;
  *(a5 + 19) = v19;
  *(a5 + 20) = v23;
  *(a5 + 24) = v5;
  *(a5 + 32) = v32;
  *(a5 + 40) = v6;
  *(a5 + 48) = v31;
  *(a5 + 49) = v20;
  *(a5 + 50) = v21;
  *(a5 + 51) = v22;
  *(a5 + 56) = v17;
  *(a5 + 64) = v30;
  *(a5 + 72) = v16;
  *(a5 + 80) = v29;
  *(a5 + 81) = v12;
  return result;
}

uint64_t sub_1DD46A2FC(uint64_t a1)
{
  v2 = type metadata accessor for StitchedContactResolverRecommendation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD46A360(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 82))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1DD46A3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1DD46A414(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD46A4EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DD46A5C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD46A69C()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DD46A6E8(char a1)
{
  result = 0x656C65736F747561;
  switch(a1)
  {
    case 1:
      result = 0x616D7269666E6F63;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD46A78C()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD46A7D8(char a1)
{
  result = 0x64657463656C6573;
  if (a1 == 1)
  {
    return 0x656E6F646E616261;
  }

  return result;
}

uint64_t sub_1DD46A834()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD46A880(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      result = 0x327478656ELL;
      break;
    case 2:
      result = 0x337265766FLL;
      break;
    case 3:
      result = 0x64657463656C6573;
      break;
    case 4:
      result = 0x656E6F646E616261;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD46A93C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD46A69C();
  *a2 = result;
  return result;
}

unint64_t sub_1DD46A96C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD46A6E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD46A9A4()
{
  result = qword_1ECCDCF20;
  if (!qword_1ECCDCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF20);
  }

  return result;
}

uint64_t sub_1DD46A9F8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3AF07C();
}

uint64_t sub_1DD46AA1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD46A78C();
  *a2 = result;
  return result;
}

uint64_t sub_1DD46AA4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD46A7D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD46AA84()
{
  result = qword_1ECCDCF28;
  if (!qword_1ECCDCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF28);
  }

  return result;
}

uint64_t sub_1DD46AAFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD46A834();
  *a2 = result;
  return result;
}

uint64_t sub_1DD46AB2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD46A880(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD46AB64()
{
  result = qword_1ECCDCF30;
  if (!qword_1ECCDCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF30);
  }

  return result;
}

uint64_t ContactSearcher.init(config:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactSearcher();
  v3 = a1 + v2[5];
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v4 = a1 + v2[6];
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(a1 + v2[7]) = 0;
  v5 = OUTLINED_FUNCTION_15_0();
  return sub_1DD46CD6C(v5, v6);
}

uint64_t type metadata accessor for ContactSearcher()
{
  result = qword_1ECCDCF58;
  if (!qword_1ECCDCF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactSearcher.search(query:)(const void *a1)
{
  v2[441] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  v2[442] = OUTLINED_FUNCTION_10_23();
  v7 = sub_1DD63D168();
  v2[443] = v7;
  v8 = *(v7 - 8);
  v2[444] = v8;
  v9 = *(v8 + 64) + 15;
  v2[445] = swift_task_alloc();
  v2[446] = swift_task_alloc();
  v10 = type metadata accessor for ContactResolverConfig(0);
  v2[447] = v10;
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  v2[448] = OUTLINED_FUNCTION_10_23();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v2[449] = v13;
  v14 = *(v13 - 8);
  v2[450] = v14;
  v15 = *(v14 + 64);
  v2[451] = OUTLINED_FUNCTION_10_23();
  v16 = type metadata accessor for Contact();
  OUTLINED_FUNCTION_3(v16);
  v18 = *(v17 + 64);
  v2[452] = OUTLINED_FUNCTION_10_23();
  v19 = type metadata accessor for ContactQuickResolver.ResolutionState(0);
  v2[453] = v19;
  OUTLINED_FUNCTION_3(v19);
  v21 = *(v20 + 64) + 15;
  v2[454] = swift_task_alloc();
  v2[455] = swift_task_alloc();
  v22 = type metadata accessor for ContactQuickResolver(0);
  v2[456] = v22;
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  v2[457] = OUTLINED_FUNCTION_10_23();
  v25 = type metadata accessor for NLv4SpeechAlternativeFetcher();
  v2[458] = v25;
  OUTLINED_FUNCTION_3(v25);
  v27 = *(v26 + 64);
  v2[459] = OUTLINED_FUNCTION_10_23();
  memcpy(v2 + 2, a1, 0x110uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DD46AECC, 0, 0);
}

uint64_t sub_1DD46AECC()
{
  v171 = v0;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16F068);
  sub_1DD46CD04(v0 + 16, v0 + 288);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  sub_1DD46CD3C(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v142[0] = v5;
    *v4 = 136315138;
    memcpy(__dst, (v0 + 16), 0x110uLL);
    sub_1DD46CD04(v0 + 16, v0 + 832);
    v6 = ContactSearcher.Query.description.getter();
    v8 = v7;
    memcpy((v0 + 560), __dst, 0x110uLL);
    sub_1DD46CD3C(v0 + 560);
    v9 = sub_1DD39565C(v6, v8, v142);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1DD38D000, v2, v3, "[ContactSearcher] running query %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
    MEMORY[0x1E12B3DA0](v4, -1, -1);
  }

  v10 = *(v0 + 280);
  if (v10)
  {
    sub_1DD3C9478(v0 + 16, v0 + 2688);
    v11 = v10;
    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640368();
    if (os_log_type_enabled(v12, v13))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v14, v15, "[ContactSearcher] fetching speech alternatives");
      OUTLINED_FUNCTION_4_6();
    }

    v16 = *(v0 + 3672);
    v17 = *(v0 + 3664);
    v18 = *(v0 + 3576);
    v19 = *(v0 + 3552);
    v20 = *(v0 + 3544);
    v21 = *(v0 + 3528);

    (*(v19 + 16))(v16, v21 + *(v18 + 32), v20);
    *(v16 + *(v17 + 20)) = v10;
    memcpy(__dst, (v0 + 16), 0x108uLL);
    sub_1DD53AD24(__dst, v142);
    memcpy((v0 + 2952), __dst, 0x108uLL);
    sub_1DD3C9580(v0 + 2952);
    sub_1DD46CE1C(v16, type metadata accessor for NLv4SpeechAlternativeFetcher);
    v23 = v142[0];
    v22 = v142[1];
    v24 = v143;
    v25 = v145;
    v114 = v147;
    v115 = v144;
    v116 = v149;
    v117 = v146;
    v118 = v151;
    v119 = v148;
    v120 = v153;
    v121 = v150;
    v122 = v155;
    v123 = v152;
    v124 = v157;
    v125 = v154;
    v126 = v159;
    v127 = v156;
    v128 = v161;
    v129 = v158;
    v130 = v162;
    v131 = v163;
    v135 = v164;
    v136 = v165;
    v134 = v166;
    v132 = v160;
    v133 = v167;
    v137 = v168;
    v139 = v169;
  }

  else
  {
    v139 = *(v0 + 272);
    v137 = *(v0 + 264);
    v135 = *(v0 + 216);
    v136 = *(v0 + 232);
    v133 = *(v0 + 256);
    v134 = *(v0 + 248);
    v130 = *(v0 + 184);
    v131 = *(v0 + 200);
    v132 = *(v0 + 168);
    v128 = *(v0 + 176);
    v129 = *(v0 + 152);
    v126 = *(v0 + 160);
    v127 = *(v0 + 136);
    v124 = *(v0 + 144);
    v125 = *(v0 + 120);
    v122 = *(v0 + 128);
    v123 = *(v0 + 104);
    v120 = *(v0 + 112);
    v121 = *(v0 + 88);
    v118 = *(v0 + 96);
    v119 = *(v0 + 72);
    v116 = *(v0 + 80);
    v117 = *(v0 + 56);
    v25 = *(v0 + 48);
    v114 = *(v0 + 64);
    v115 = *(v0 + 40);
    v24 = *(v0 + 32);
    v23 = *(v0 + 16);
    v22 = *(v0 + 24);
    sub_1DD3C9478(v0 + 16, v0 + 1104);
  }

  v26 = sub_1DD63F9D8();
  v27 = sub_1DD640368();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_9();
    *v28 = 0;
    _os_log_impl(&dword_1DD38D000, v26, v27, "[ContactSearcher] calling quick resolver", v28, 2u);
    OUTLINED_FUNCTION_4_6();
  }

  v29 = *(v0 + 3656);
  v30 = *(v0 + 3648);
  v31 = *(v0 + 3640);
  v32 = *(v0 + 3528);

  *(v0 + 1368) = v23;
  *(v0 + 1376) = v22;
  *(v0 + 1384) = v24;
  *(v0 + 1392) = v115;
  *(v0 + 1400) = v25;
  *(v0 + 1408) = v117;
  *(v0 + 1416) = v114;
  *(v0 + 1424) = v119;
  *(v0 + 1432) = v116;
  *(v0 + 1440) = v121;
  *(v0 + 1448) = v118;
  *(v0 + 1456) = v123;
  *(v0 + 1464) = v120;
  *(v0 + 1472) = v125;
  *(v0 + 1480) = v122;
  *(v0 + 1488) = v127;
  *(v0 + 1496) = v124;
  *(v0 + 1504) = v129;
  *(v0 + 1512) = v126;
  *(v0 + 1520) = v132;
  *(v0 + 1528) = v128;
  *(v0 + 1552) = v131;
  *(v0 + 1536) = v130;
  *(v0 + 1584) = v136;
  *(v0 + 1568) = v135;
  *(v0 + 1600) = v134;
  *(v0 + 1608) = v133;
  *(v0 + 1616) = v137;
  *(v0 + 1624) = v139;
  sub_1DD46BE64(v29);
  v33 = sub_1DD46C058();
  v34 = *(v30 + 24);
  OUTLINED_FUNCTION_2_29();
  sub_1DD46CDC4(v32, v29 + v35);
  v29[5] = v33;
  memcpy(__dst, (v0 + 1368), 0x108uLL);
  sub_1DD3C9478(v0 + 1368, v0 + 1632);
  sub_1DD4250A0(__dst, v31);
  v36 = *(v0 + 3640);
  v37 = *(v0 + 3632);
  v38 = *(v0 + 3624);
  memcpy((v0 + 2160), __dst, 0x108uLL);
  sub_1DD3C9580(v0 + 2160);
  sub_1DD46CDC4(v36, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = *(v0 + 3632);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1DD46CE1C(v40, type metadata accessor for ContactQuickResolver.ResolutionState);
    v41 = sub_1DD63F9D8();
    v42 = sub_1DD640368();
    if (os_log_type_enabled(v41, v42))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v43, v44, "[ContactSearcher] calling UCG");
      OUTLINED_FUNCTION_4_6();
    }

    v45 = (v0 + 3336);
    v140 = (v0 + 3376);
    v46 = *(v0 + 3584);
    v47 = *(v0 + 3576);
    v48 = *(v0 + 3568);
    v49 = *(v0 + 3560);
    v50 = *(v0 + 3552);
    v51 = *(v0 + 3544);
    v52 = *(v0 + 3528);

    sub_1DD46C300((v0 + 3216));
    OUTLINED_FUNCTION_2_29();
    sub_1DD46CDC4(v52, v46);
    v53 = *(v50 + 16);
    v53(v48, v52 + *(v47 + 32), v51);
    v54 = type metadata accessor for UCGStringTokenizer(0);
    *(v0 + 3280) = v54;
    *(v0 + 3288) = &off_1F58C4140;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3256));
    v53(v49, v48, v51);
    if (sub_1DD4F9BB8())
    {
      v56 = 1;
    }

    else
    {
      v74 = *(v0 + 3568);
      *(v0 + 3496) = sub_1DD63D118();
      *(v0 + 3504) = v75;
      *(v0 + 3512) = 24938;
      *(v0 + 3520) = 0xE200000000000000;
      sub_1DD3B52B8();
      sub_1DD3B530C();
      v56 = sub_1DD63FD48();
    }

    v76 = *(v0 + 3568);
    v77 = *(v0 + 3552);
    v78 = *(v0 + 3544);
    v79 = *(v0 + 3528);
    sub_1DD5E8D74(*(v0 + 3560), v56 & 1, boxed_opaque_existential_1);
    (*(v77 + 8))(v76, v78);
    sub_1DD46BE64((v0 + 3296));
    v80 = sub_1DD46C058();
    *(v0 + 3344) = 0;
    *(v0 + 3352) = 0;
    *v45 = 0;
    *(v0 + 3360) = xmmword_1DD644510;
    *v140 = 0u;
    *(v0 + 3392) = 0u;
    *(v0 + 3408) = 0;
    v81 = sub_1DD46C4B8();
    if (v81)
    {
      v82 = type metadata accessor for RelationshipLocalizer();
      v83 = &off_1F58C4130;
    }

    else
    {
      v82 = 0;
      v83 = 0;
      *(v0 + 3424) = 0u;
    }

    v84 = *(v0 + 3584);
    v85 = *(v0 + 3536);
    v138 = *(v0 + 3528);
    *(v0 + 3416) = v81;
    *(v0 + 3440) = v82;
    *(v0 + 3448) = v83;
    v86 = type metadata accessor for AsrPhoneticSequenceFetcher();
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v86);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 3256, *(v0 + 3280));
    v87 = OUTLINED_FUNCTION_14();
    v88 = type metadata accessor for UnifiedContactGenerator(v87);
    v89 = *(v88 + 48);
    v90 = *(v88 + 52);
    v91 = swift_allocObject();
    *(v0 + 3480) = v54;
    *(v0 + 3488) = &off_1F58C4140;
    v92 = __swift_allocate_boxed_opaque_existential_1((v0 + 3456));
    sub_1DD46CDC4(v79, v92);
    v93 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator;
    *(v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator) = 0;
    *(v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping) = 0;
    sub_1DD3C2388(v0 + 3216, v91 + 16);
    sub_1DD3EB3D0(v0 + 3296, v91 + 56, &qword_1ECCDCF48, &unk_1DD664BF0);
    *(v91 + 104) = v80;
    OUTLINED_FUNCTION_2_29();
    sub_1DD46CDC4(v84, v91 + v94);
    *(v91 + 96) = MEMORY[0x1E69E7CC0];
    *(v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusTrialFactors) = 0;
    sub_1DD390754(v0 + 3296, &qword_1ECCDCF48, &unk_1DD664BF0);
    OUTLINED_FUNCTION_5_31();
    sub_1DD46CE1C(v84, v95);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3216));
    v96 = v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors;
    *v96 = 0;
    *(v96 + 8) = 1701736302;
    *(v96 + 16) = 0xE400000000000000;
    *(v96 + 24) = 0;
    *(v96 + 32) = 0;
    *(v96 + 40) = xmmword_1DD64CBD0;
    *(v96 + 56) = 0;
    v97 = v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler;
    v98 = *(v0 + 3352);
    *v97 = *v45;
    *(v97 + 16) = v98;
    *(v97 + 32) = *(v0 + 3368);
    sub_1DD3C2388(v0 + 3456, v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
    v99 = v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_triggerLogger;
    v100 = *(v0 + 3392);
    *v99 = *v140;
    *(v99 + 16) = v100;
    *(v99 + 32) = *(v0 + 3408);
    sub_1DD3EB3D0(v0 + 3416, v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer, &qword_1ECCDCF50, &qword_1DD664BD0);
    *(v91 + v93) = 0;
    sub_1DD390754(v0 + 3416, &qword_1ECCDCF50, &qword_1DD664BD0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3456));
    *(v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3VectorDbApi) = 0;
    *(v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3EmbedderApi) = 0;
    *(v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_ucgTrialFactors) = 0;
    sub_1DD3EB4B8(v85, v91 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, &qword_1ECCDCF38, &unk_1DD664750);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3256));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1DD643F90;
    memcpy((v101 + 32), (v0 + 1368), 0x108uLL);
    sub_1DD3C9478(v0 + 1368, v0 + 2424);
    sub_1DD60FB88();
    v103 = v102;
    swift_setDeallocating();
    result = sub_1DD46CBB4();
    if (!*(v103 + 16))
    {
      __break(1u);
      return result;
    }

    v141 = *(v103 + 32);
    swift_bridgeObjectRetain_n();

    v104 = sub_1DD63F9D8();
    v105 = sub_1DD640368();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 134217984;
      *(v106 + 4) = *(v141 + 16);

      _os_log_impl(&dword_1DD38D000, v104, v105, "[ContactSearcher] UCG found %ld candidates", v106, 0xCu);
      OUTLINED_FUNCTION_4_6();
      swift_setDeallocating();
      v107 = *sub_1DD621028();
      v108 = *(v107 + 48);
      v109 = *(v107 + 52);
      swift_deallocClassInstance();
    }

    else
    {
      swift_setDeallocating();
      v110 = *sub_1DD621028();
      v111 = *(v110 + 48);
      v112 = *(v110 + 52);
      swift_deallocClassInstance();
    }

    v60 = *(v0 + 3656);
    v113 = *(v0 + 3640);

    sub_1DD3C9580(v0 + 1368);
    OUTLINED_FUNCTION_1_38();
    v70 = v113;
  }

  else
  {
    sub_1DD46CD6C(v40, *(v0 + 3616));
    v57 = sub_1DD63F9D8();
    v58 = sub_1DD640368();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_9();
      *v59 = 0;
      _os_log_impl(&dword_1DD38D000, v57, v58, "[ContactSearcher] resolved quickly", v59, 2u);
      MEMORY[0x1E12B3DA0](v59, -1, -1);
    }

    v60 = *(v0 + 3656);
    v61 = *(v0 + 3640);
    v62 = *(v0 + 3616);
    v63 = *(v0 + 3608);
    v64 = *(v0 + 3600);
    v65 = *(v0 + 3592);

    sub_1DD46CDC4(v62, v63);
    sub_1DD43038C(v63 + *(v65 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
    v66 = *(v64 + 72);
    v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1DD643F90;
    v141 = v68;
    sub_1DD3EB4B8(v63, v68 + v67, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD3C9580(v0 + 1368);
    sub_1DD46CE1C(v62, type metadata accessor for Contact);
    OUTLINED_FUNCTION_1_38();
    v70 = v61;
  }

  sub_1DD46CE1C(v70, v69);
  OUTLINED_FUNCTION_0_50();
  sub_1DD46CE1C(v60, v71);
  OUTLINED_FUNCTION_6_25();

  v72 = *(v0 + 8);

  return v72(v141);
}

void sub_1DD46BE64(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(type metadata accessor for ContactSearcher() + 20);
  sub_1DD3EB3D0(v1 + v4, &v13, &qword_1ECCDCF48, &unk_1DD664BF0);
  if (v14)
  {
    sub_1DD3AA4A8(&v13, &v15);
    sub_1DD3AA4A8(&v15, a1);
  }

  else
  {
    sub_1DD390754(&v13, &qword_1ECCDCF48, &unk_1DD664BF0);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD63F9F8();
    __swift_project_value_buffer(v5, qword_1EE16F068);
    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640368();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DD38D000, v6, v7, "[ContactSearcher] initializing CNContactStore", v8, 2u);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
    }

    v9 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
    [v9 setUseOutOfProcessMapperExclusively_];
    v10 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
    v11 = sub_1DD39638C(0, &qword_1EE1638B8, 0x1E695CE18);
    v16 = v11;
    v17 = &off_1F58B1EB8;
    *&v15 = v10;
    v12 = v10;
    sub_1DD46D108(&v15, v2 + v4);
    a1[3] = v11;
    a1[4] = &off_1F58B1EB8;

    *a1 = v12;
  }
}

uint64_t sub_1DD46C058()
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F068);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "[ContactSearcher] finding MeCard", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  sub_1DD46BE64(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  v6 = (*(v5 + 16))(qword_1EE16F080, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1DD46C300@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(type metadata accessor for ContactSearcher() + 24);
  sub_1DD3EB3D0(v1 + v4, &v11, &qword_1ECCDCFB8, &unk_1DD64CD60);
  if (v12)
  {
    return sub_1DD3AA4A8(&v11, a1);
  }

  sub_1DD390754(&v11, &qword_1ECCDCFB8, &unk_1DD64CD60);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16F068);
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DD38D000, v7, v8, "[ContactSearcher] initializing SEMSpanMatcher", v9, 2u);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
  }

  v10 = [objc_opt_self() indexMatcher];
  a1[3] = sub_1DD39638C(0, &qword_1ECCDCFC0, 0x1E69CE410);
  a1[4] = &off_1F58C0818;
  *a1 = v10;
  sub_1DD390754(v2 + v4, &qword_1ECCDCFB8, &unk_1DD64CD60);
  return sub_1DD3C2388(a1, v2 + v4);
}

uint64_t sub_1DD46C4B8()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v34 - v6);
  v8 = sub_1DD63CE68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *(type metadata accessor for ContactSearcher() + 28);
  v17 = *(v3 + v16);
  if (!v17)
  {
    v35 = v16;
    v36 = v9;
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    __swift_project_value_buffer(v18, qword_1EE16F068);
    v19 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v34 = v1;
      v21 = v3;
      v22 = v20;
      *v20 = 0;
      _os_log_impl(&dword_1DD38D000, v19, v17, "[ContactSearcher] initializing RelationshipDB", v20, 2u);
      v23 = v22;
      v3 = v21;
      v2 = v34;
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    if (qword_1EE1659B8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v4, qword_1EE16F038);
    sub_1DD3EB3D0(v24, v7, &qword_1ECCDCCA0, &qword_1DD64AED0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = v36;
    if (EnumCaseMultiPayload == 1)
    {
      v37 = *v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      swift_willThrowTypedImpl();
      return v17;
    }

    (*(v36 + 32))(v15, v7, v8);
    (*(v26 + 16))(v12, v15, v8);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1DD608CA4(v12);
    if (v2)
    {
      (*(v26 + 8))(v15, v8);
      return v17;
    }

    (*(v26 + 8))(v15, v8);
    sub_1DD58244C(&v38);

    v31 = v38;
    if (!v38)
    {
      return 0;
    }

    type metadata accessor for RelationshipLocalizer();
    v17 = swift_allocObject();
    v32 = *(v27 + 48);
    v33 = *(v27 + 52);
    swift_allocObject();
    *(v17 + 16) = sub_1DD627AE8(v31);
    *(v3 + v35) = v17;
  }

  return v17;
}

uint64_t ContactSearcher.Query.contactQuery.getter()
{
  memcpy(__dst, v0, 0x108uLL);
  v1 = OUTLINED_FUNCTION_15_0();
  memcpy(v1, v2, 0x108uLL);
  return sub_1DD3C9478(__dst, v4);
}

void *ContactSearcher.Query.speechPackage.getter()
{
  v1 = *(v0 + 264);
  v2 = v1;
  return v1;
}

void *ContactSearcher.Query.init(contactQuery:speechPackage:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = memcpy(a3, __src, 0x108uLL);
  a3[33] = a2;
  return result;
}

uint64_t ContactSearcher.Query.description.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = v0[33];
  v10 = 0;
  v11 = 0xE000000000000000;
  v2 = v1;
  sub_1DD6408D8();

  v10 = 0xD000000000000013;
  v11 = 0x80000001DD66CB90;
  v3 = ContactQuery.description.getter();
  MEMORY[0x1E12B2260](v3);

  __dst[0] = v10;
  __dst[1] = v11;
  if (v1)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1DD6408D8();

    v10 = 0xD000000000000010;
    v11 = 0x80000001DD66CBB0;
    v4 = [v2 description];
    v5 = sub_1DD63FDD8();
    v7 = v6;

    MEMORY[0x1E12B2260](v5, v7);

    MEMORY[0x1E12B2260](v10, v11);
  }

  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return __dst[0];
}

uint64_t sub_1DD46CABC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD46CAFC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD46CBB4()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}